; ModuleID = 'samples/900.bc'
source_filename = "../ngx_stream_lua-0.0.7/src/ngx_stream_lua_directive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngx_module_s = type { i64, i64, ptr, i64, i64, i64, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ngx_str_t = type { i64, ptr }
%struct.ngx_stream_lua_main_conf_s = type { ptr, ptr, %struct.ngx_str_t, %struct.ngx_str_t, ptr, ptr, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, i64, ptr, %struct.ngx_str_t, ptr, %struct.ngx_str_t, ptr, i64, ptr, i64, i64, i64, i8 }
%struct.ngx_conf_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr }
%struct.ngx_array_t = type { ptr, i64, i64, i64, ptr }
%struct.ngx_stream_lua_shdict_ctx_t = type { ptr, ptr, %struct.ngx_str_t, ptr, ptr }
%struct.ngx_cycle_s = type { ptr, ptr, ptr, %struct.ngx_log_s, i64, ptr, ptr, i64, ptr, i64, i64, %struct.ngx_queue_s, i64, %struct.ngx_array_t, %struct.ngx_array_t, %struct.ngx_array_t, %struct.ngx_rbtree_s, %struct.ngx_rbtree_node_s, %struct.ngx_list_t, %struct.ngx_list_t, i64, i64, ptr, ptr, ptr, ptr, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, ptr, ptr, i32 }
%struct.ngx_log_s = type { i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ngx_queue_s = type { ptr, ptr }
%struct.ngx_rbtree_s = type { ptr, ptr, ptr }
%struct.ngx_rbtree_node_s = type { i64, ptr, ptr, ptr, i8, i8 }
%struct.ngx_list_t = type { ptr, %struct.ngx_list_part_s, i64, i64, ptr }
%struct.ngx_list_part_s = type { ptr, i64, ptr }
%struct.ngx_shm_zone_s = type { ptr, %struct.ngx_shm_t, ptr, ptr, ptr, i64 }
%struct.ngx_shm_t = type { ptr, i64, %struct.ngx_str_t, ptr, i64 }
%struct.ngx_command_s = type { %struct.ngx_str_t, i64, ptr, i64, i64, ptr }
%struct.ngx_stream_compile_complex_value_t = type { ptr, ptr, ptr, i8 }
%struct.ngx_stream_lua_srv_conf_s = type { ptr, i64, %struct.ngx_str_t, i64, %struct.ngx_str_t, %struct.ngx_str_t, %struct.anon, i64, ptr, ptr, ptr, ptr, %struct.ngx_stream_complex_value_t, ptr, ptr, %struct.ngx_stream_complex_value_t, ptr, ptr, %struct.ngx_stream_complex_value_t, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.anon.2 }
%struct.anon = type { ptr, %struct.ngx_str_t, ptr }
%struct.ngx_stream_complex_value_t = type { %struct.ngx_str_t, ptr, ptr, ptr }
%struct.anon.2 = type { %struct.ngx_str_t, ptr, ptr }
%struct.ngx_stream_conf_ctx_t = type { ptr, ptr }
%struct.ngx_stream_lua_block_parser_ctx_s = type { i64, i32 }
%struct.ngx_conf_file_t = type { %struct.ngx_file_s, ptr, ptr, i64 }
%struct.ngx_file_s = type { i32, %struct.ngx_str_t, %struct.stat, i64, i64, ptr, i8 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.ngx_stream_core_srv_conf_t = type { ptr, ptr, ptr, i64, i64, i64, i64, ptr, i64, ptr, i64, i64 }
%struct.ngx_buf_s = type { ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, i16, i32 }
%struct.ngx_stream_variable_s = type { %struct.ngx_str_t, ptr, ptr, i64, i64, i64 }

@.str = private unnamed_addr constant [34 x i8] c"invalid lua shared dict name \22%V\22\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [34 x i8] c"invalid lua shared dict size \22%V\22\00", align 1, !dbg !7
@ngx_stream_lua_module = external global %struct.ngx_module_s, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"lua_shared_dict \22%V\22 is already defined as \22%V\22\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [57 x i8] c"stream lua_code_cache is off; this will hurt performance\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [44 x i8] c"invalid server config: no runnable Lua code\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [15 x i8] c"preread_by_lua\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [6 x i8] c"nhli_\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [6 x i8] c"nhlf_\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [46 x i8] c"invalid location config: no runnable Lua code\00", align 1, !dbg !41
@.str.10 = private unnamed_addr constant [15 x i8] c"content_by_lua\00", align 1, !dbg !46
@ngx_stream_core_module = external global %struct.ngx_module_s, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"log_by_lua\00", align 1, !dbg !48
@.str.12 = private unnamed_addr constant [48 x i8] c"block directives are not supported in -g option\00", align 1, !dbg !53
@.str.13 = private unnamed_addr constant [47 x i8] c"unexpected \22}\22: level %d, starting at line %ui\00", align 1, !dbg !55
@.str.14 = private unnamed_addr constant [40 x i8] c"unknown return value from the lexer: %i\00", align 1, !dbg !60
@.str.15 = private unnamed_addr constant [36 x i8] c"invalid capture error log size \22%V\22\00", align 1, !dbg !65
@.str.16 = private unnamed_addr constant [56 x i8] c"invalid capture error log size \22%V\22, minimum size is %d\00", align 1, !dbg !70
@.str.17 = private unnamed_addr constant [42 x i8] c"capture error log handler has been hooked\00", align 1, !dbg !75
@.str.18 = private unnamed_addr constant [27 x i8] c"invalid variable name \22%V\22\00", align 1, !dbg !80
@.str.19 = private unnamed_addr constant [15 x i8] c"=%*s(%*s:%d)%Z\00", align 1, !dbg !85
@.str.20 = private unnamed_addr constant [76 x i8] c"unexpected end of file, expecting terminating characters for lua code block\00", align 1, !dbg !87
@.str.21 = private unnamed_addr constant [65 x i8] c"too long lua code block, probably missing terminating characters\00", align 1, !dbg !92
@.str.22 = private unnamed_addr constant [45 x i8] c"pread() returned only %z bytes instead of %z\00", align 1, !dbg !97
@.str.23 = private unnamed_addr constant [54 x i8] c"Lua code block missing the closing long bracket \22%*s\22\00", align 1, !dbg !102

; Function Attrs: nounwind uwtable
define dso_local ptr @ngx_stream_lua_shared_dict(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !1187 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %lmcf = alloca ptr, align 8
  %value = alloca ptr, align 8
  %name = alloca %struct.ngx_str_t, align 8
  %zone = alloca ptr, align 8
  %zp = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !1189, metadata !DIExpression()), !dbg !1283
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !1190, metadata !DIExpression()), !dbg !1284
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !1191, metadata !DIExpression()), !dbg !1285
  call void @llvm.lifetime.start.p0(i64 8, ptr %lmcf) #8, !dbg !1286
  tail call void @llvm.dbg.declare(metadata ptr %lmcf, metadata !1192, metadata !DIExpression()), !dbg !1287
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !1288, !tbaa !1279
  store ptr %0, ptr %lmcf, align 8, !dbg !1287, !tbaa !1279
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #8, !dbg !1289
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !1193, metadata !DIExpression()), !dbg !1290
  call void @llvm.lifetime.start.p0(i64 16, ptr %name) #8, !dbg !1289
  tail call void @llvm.dbg.declare(metadata ptr %name, metadata !1194, metadata !DIExpression()), !dbg !1291
  call void @llvm.lifetime.start.p0(i64 8, ptr %zone) #8, !dbg !1292
  tail call void @llvm.dbg.declare(metadata ptr %zone, metadata !1195, metadata !DIExpression()), !dbg !1293
  call void @llvm.lifetime.start.p0(i64 8, ptr %zp) #8, !dbg !1294
  tail call void @llvm.dbg.declare(metadata ptr %zp, metadata !1196, metadata !DIExpression()), !dbg !1295
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #8, !dbg !1296
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1198, metadata !DIExpression()), !dbg !1297
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #8, !dbg !1298
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !1278, metadata !DIExpression()), !dbg !1299
  %1 = load ptr, ptr %lmcf, align 8, !dbg !1300, !tbaa !1279
  %shdict_zones = getelementptr inbounds %struct.ngx_stream_lua_main_conf_s, ptr %1, i32 0, i32 13, !dbg !1302
  %2 = load ptr, ptr %shdict_zones, align 8, !dbg !1302, !tbaa !1303
  %cmp = icmp eq ptr %2, null, !dbg !1308
  br i1 %cmp, label %if.then, label %if.end11, !dbg !1309

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %cf.addr, align 8, !dbg !1310, !tbaa !1279
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %3, i32 0, i32 3, !dbg !1312
  %4 = load ptr, ptr %pool, align 8, !dbg !1312, !tbaa !1313
  %call = call ptr @ngx_palloc(ptr noundef %4, i64 noundef 40), !dbg !1315
  %5 = load ptr, ptr %lmcf, align 8, !dbg !1316, !tbaa !1279
  %shdict_zones1 = getelementptr inbounds %struct.ngx_stream_lua_main_conf_s, ptr %5, i32 0, i32 13, !dbg !1317
  store ptr %call, ptr %shdict_zones1, align 8, !dbg !1318, !tbaa !1303
  %6 = load ptr, ptr %lmcf, align 8, !dbg !1319, !tbaa !1279
  %shdict_zones2 = getelementptr inbounds %struct.ngx_stream_lua_main_conf_s, ptr %6, i32 0, i32 13, !dbg !1321
  %7 = load ptr, ptr %shdict_zones2, align 8, !dbg !1321, !tbaa !1303
  %cmp3 = icmp eq ptr %7, null, !dbg !1322
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !1323

if.then4:                                         ; preds = %if.then
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !1324
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1324

if.end:                                           ; preds = %if.then
  %8 = load ptr, ptr %lmcf, align 8, !dbg !1326, !tbaa !1279
  %shdict_zones5 = getelementptr inbounds %struct.ngx_stream_lua_main_conf_s, ptr %8, i32 0, i32 13, !dbg !1328
  %9 = load ptr, ptr %shdict_zones5, align 8, !dbg !1328, !tbaa !1303
  %10 = load ptr, ptr %cf.addr, align 8, !dbg !1329, !tbaa !1279
  %pool6 = getelementptr inbounds %struct.ngx_conf_s, ptr %10, i32 0, i32 3, !dbg !1330
  %11 = load ptr, ptr %pool6, align 8, !dbg !1330, !tbaa !1313
  %call7 = call i64 @ngx_array_init(ptr noundef %9, ptr noundef %11, i64 noundef 2, i64 noundef 8), !dbg !1331
  %cmp8 = icmp ne i64 %call7, 0, !dbg !1332
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1333

if.then9:                                         ; preds = %if.end
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !1334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1334

if.end10:                                         ; preds = %if.end
  br label %if.end11, !dbg !1336

if.end11:                                         ; preds = %if.end10, %entry
  %12 = load ptr, ptr %cf.addr, align 8, !dbg !1337, !tbaa !1279
  %args = getelementptr inbounds %struct.ngx_conf_s, ptr %12, i32 0, i32 1, !dbg !1338
  %13 = load ptr, ptr %args, align 8, !dbg !1338, !tbaa !1339
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %13, i32 0, i32 0, !dbg !1340
  %14 = load ptr, ptr %elts, align 8, !dbg !1340, !tbaa !1341
  store ptr %14, ptr %value, align 8, !dbg !1343, !tbaa !1279
  store ptr null, ptr %ctx, align 8, !dbg !1344, !tbaa !1279
  %15 = load ptr, ptr %value, align 8, !dbg !1345, !tbaa !1279
  %arrayidx = getelementptr inbounds %struct.ngx_str_t, ptr %15, i64 1, !dbg !1345
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx, i32 0, i32 0, !dbg !1347
  %16 = load i64, ptr %len, align 8, !dbg !1347, !tbaa !1348
  %cmp12 = icmp eq i64 %16, 0, !dbg !1349
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !1350

if.then13:                                        ; preds = %if.end11
  %17 = load ptr, ptr %cf.addr, align 8, !dbg !1351, !tbaa !1279
  %18 = load ptr, ptr %value, align 8, !dbg !1353, !tbaa !1279
  %arrayidx14 = getelementptr inbounds %struct.ngx_str_t, ptr %18, i64 1, !dbg !1353
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %17, i32 noundef 0, ptr noundef @.str, ptr noundef %arrayidx14), !dbg !1354
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !1355
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1355

if.end15:                                         ; preds = %if.end11
  %19 = load ptr, ptr %value, align 8, !dbg !1356, !tbaa !1279
  %arrayidx16 = getelementptr inbounds %struct.ngx_str_t, ptr %19, i64 1, !dbg !1356
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %name, ptr align 8 %arrayidx16, i64 16, i1 false), !dbg !1356, !tbaa.struct !1357
  %20 = load ptr, ptr %value, align 8, !dbg !1359, !tbaa !1279
  %arrayidx17 = getelementptr inbounds %struct.ngx_str_t, ptr %20, i64 2, !dbg !1359
  %call18 = call i64 @ngx_parse_size(ptr noundef %arrayidx17), !dbg !1360
  store i64 %call18, ptr %size, align 8, !dbg !1361, !tbaa !1358
  %21 = load i64, ptr %size, align 8, !dbg !1362, !tbaa !1358
  %cmp19 = icmp sle i64 %21, 8191, !dbg !1364
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1365

if.then20:                                        ; preds = %if.end15
  %22 = load ptr, ptr %cf.addr, align 8, !dbg !1366, !tbaa !1279
  %23 = load ptr, ptr %value, align 8, !dbg !1368, !tbaa !1279
  %arrayidx21 = getelementptr inbounds %struct.ngx_str_t, ptr %23, i64 2, !dbg !1368
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %22, i32 noundef 0, ptr noundef @.str.1, ptr noundef %arrayidx21), !dbg !1369
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !1370
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1370

if.end22:                                         ; preds = %if.end15
  %24 = load ptr, ptr %cf.addr, align 8, !dbg !1371, !tbaa !1279
  %pool23 = getelementptr inbounds %struct.ngx_conf_s, ptr %24, i32 0, i32 3, !dbg !1372
  %25 = load ptr, ptr %pool23, align 8, !dbg !1372, !tbaa !1313
  %call24 = call ptr @ngx_pcalloc(ptr noundef %25, i64 noundef 48), !dbg !1373
  store ptr %call24, ptr %ctx, align 8, !dbg !1374, !tbaa !1279
  %26 = load ptr, ptr %ctx, align 8, !dbg !1375, !tbaa !1279
  %cmp25 = icmp eq ptr %26, null, !dbg !1377
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1378

if.then26:                                        ; preds = %if.end22
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !1379
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1379

if.end27:                                         ; preds = %if.end22
  %27 = load ptr, ptr %ctx, align 8, !dbg !1381, !tbaa !1279
  %name28 = getelementptr inbounds %struct.ngx_stream_lua_shdict_ctx_t, ptr %27, i32 0, i32 2, !dbg !1382
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %name28, ptr align 8 %name, i64 16, i1 false), !dbg !1383, !tbaa.struct !1357
  %28 = load ptr, ptr %lmcf, align 8, !dbg !1384, !tbaa !1279
  %29 = load ptr, ptr %ctx, align 8, !dbg !1385, !tbaa !1279
  %main_conf = getelementptr inbounds %struct.ngx_stream_lua_shdict_ctx_t, ptr %29, i32 0, i32 3, !dbg !1386
  store ptr %28, ptr %main_conf, align 8, !dbg !1387, !tbaa !1388
  %30 = load ptr, ptr %cf.addr, align 8, !dbg !1390, !tbaa !1279
  %cycle = getelementptr inbounds %struct.ngx_conf_s, ptr %30, i32 0, i32 2, !dbg !1391
  %31 = load ptr, ptr %cycle, align 8, !dbg !1391, !tbaa !1392
  %new_log = getelementptr inbounds %struct.ngx_cycle_s, ptr %31, i32 0, i32 3, !dbg !1393
  %32 = load ptr, ptr %ctx, align 8, !dbg !1394, !tbaa !1279
  %log = getelementptr inbounds %struct.ngx_stream_lua_shdict_ctx_t, ptr %32, i32 0, i32 4, !dbg !1395
  store ptr %new_log, ptr %log, align 8, !dbg !1396, !tbaa !1397
  %33 = load ptr, ptr %cf.addr, align 8, !dbg !1398, !tbaa !1279
  %34 = load i64, ptr %size, align 8, !dbg !1399, !tbaa !1358
  %call29 = call ptr @ngx_stream_lua_shared_memory_add(ptr noundef %33, ptr noundef %name, i64 noundef %34, ptr noundef @ngx_stream_lua_module), !dbg !1400
  store ptr %call29, ptr %zone, align 8, !dbg !1401, !tbaa !1279
  %35 = load ptr, ptr %zone, align 8, !dbg !1402, !tbaa !1279
  %cmp30 = icmp eq ptr %35, null, !dbg !1404
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1405

if.then31:                                        ; preds = %if.end27
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !1406
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1406

if.end32:                                         ; preds = %if.end27
  %36 = load ptr, ptr %zone, align 8, !dbg !1408, !tbaa !1279
  %data = getelementptr inbounds %struct.ngx_shm_zone_s, ptr %36, i32 0, i32 0, !dbg !1410
  %37 = load ptr, ptr %data, align 8, !dbg !1410, !tbaa !1411
  %tobool = icmp ne ptr %37, null, !dbg !1408
  br i1 %tobool, label %if.then33, label %if.end36, !dbg !1414

if.then33:                                        ; preds = %if.end32
  %38 = load ptr, ptr %zone, align 8, !dbg !1415, !tbaa !1279
  %data34 = getelementptr inbounds %struct.ngx_shm_zone_s, ptr %38, i32 0, i32 0, !dbg !1417
  %39 = load ptr, ptr %data34, align 8, !dbg !1417, !tbaa !1411
  store ptr %39, ptr %ctx, align 8, !dbg !1418, !tbaa !1279
  %40 = load ptr, ptr %cf.addr, align 8, !dbg !1419, !tbaa !1279
  %41 = load ptr, ptr %ctx, align 8, !dbg !1420, !tbaa !1279
  %name35 = getelementptr inbounds %struct.ngx_stream_lua_shdict_ctx_t, ptr %41, i32 0, i32 2, !dbg !1421
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %40, i32 noundef 0, ptr noundef @.str.2, ptr noundef %name, ptr noundef %name35), !dbg !1422
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !1423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1423

if.end36:                                         ; preds = %if.end32
  %42 = load ptr, ptr %zone, align 8, !dbg !1424, !tbaa !1279
  %init = getelementptr inbounds %struct.ngx_shm_zone_s, ptr %42, i32 0, i32 2, !dbg !1425
  store ptr @ngx_stream_lua_shdict_init_zone, ptr %init, align 8, !dbg !1426, !tbaa !1427
  %43 = load ptr, ptr %ctx, align 8, !dbg !1428, !tbaa !1279
  %44 = load ptr, ptr %zone, align 8, !dbg !1429, !tbaa !1279
  %data37 = getelementptr inbounds %struct.ngx_shm_zone_s, ptr %44, i32 0, i32 0, !dbg !1430
  store ptr %43, ptr %data37, align 8, !dbg !1431, !tbaa !1411
  %45 = load ptr, ptr %lmcf, align 8, !dbg !1432, !tbaa !1279
  %shdict_zones38 = getelementptr inbounds %struct.ngx_stream_lua_main_conf_s, ptr %45, i32 0, i32 13, !dbg !1433
  %46 = load ptr, ptr %shdict_zones38, align 8, !dbg !1433, !tbaa !1303
  %call39 = call ptr @ngx_array_push(ptr noundef %46), !dbg !1434
  store ptr %call39, ptr %zp, align 8, !dbg !1435, !tbaa !1279
  %47 = load ptr, ptr %zp, align 8, !dbg !1436, !tbaa !1279
  %cmp40 = icmp eq ptr %47, null, !dbg !1438
  br i1 %cmp40, label %if.then41, label %if.end42, !dbg !1439

if.then41:                                        ; preds = %if.end36
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !1440
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1440

if.end42:                                         ; preds = %if.end36
  %48 = load ptr, ptr %zone, align 8, !dbg !1442, !tbaa !1279
  %49 = load ptr, ptr %zp, align 8, !dbg !1443, !tbaa !1279
  store ptr %48, ptr %49, align 8, !dbg !1444, !tbaa !1279
  %50 = load ptr, ptr %lmcf, align 8, !dbg !1445, !tbaa !1279
  %requires_shm = getelementptr inbounds %struct.ngx_stream_lua_main_conf_s, ptr %50, i32 0, i32 26, !dbg !1446
  %bf.load = load i8, ptr %requires_shm, align 8, !dbg !1447
  %bf.clear = and i8 %bf.load, -5, !dbg !1447
  %bf.set = or i8 %bf.clear, 4, !dbg !1447
  store i8 %bf.set, ptr %requires_shm, align 8, !dbg !1447
  store ptr null, ptr %retval, align 8, !dbg !1448
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1448

cleanup:                                          ; preds = %if.end42, %if.then41, %if.then33, %if.then31, %if.then26, %if.then20, %if.then13, %if.then9, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #8, !dbg !1449
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #8, !dbg !1449
  call void @llvm.lifetime.end.p0(i64 8, ptr %zp) #8, !dbg !1449
  call void @llvm.lifetime.end.p0(i64 8, ptr %zone) #8, !dbg !1449
  call void @llvm.lifetime.end.p0(i64 16, ptr %name) #8, !dbg !1449
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #8, !dbg !1449
  call void @llvm.lifetime.end.p0(i64 8, ptr %lmcf) #8, !dbg !1449
  %51 = load ptr, ptr %retval, align 8, !dbg !1449
  ret ptr %51, !dbg !1449
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !1450 ptr @ngx_palloc(ptr noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @ngx_array_init(ptr noundef %array, ptr noundef %pool, i64 noundef %n, i64 noundef %size) #3 !dbg !1453 {
entry:
  %retval = alloca i64, align 8
  %array.addr = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store ptr %array, ptr %array.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !1457, metadata !DIExpression()), !dbg !1461
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !1458, metadata !DIExpression()), !dbg !1462
  store i64 %n, ptr %n.addr, align 8, !tbaa !1358
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1459, metadata !DIExpression()), !dbg !1463
  store i64 %size, ptr %size.addr, align 8, !tbaa !1358
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1460, metadata !DIExpression()), !dbg !1464
  %0 = load ptr, ptr %array.addr, align 8, !dbg !1465, !tbaa !1279
  %nelts = getelementptr inbounds %struct.ngx_array_t, ptr %0, i32 0, i32 1, !dbg !1466
  store i64 0, ptr %nelts, align 8, !dbg !1467, !tbaa !1468
  %1 = load i64, ptr %size.addr, align 8, !dbg !1469, !tbaa !1358
  %2 = load ptr, ptr %array.addr, align 8, !dbg !1470, !tbaa !1279
  %size1 = getelementptr inbounds %struct.ngx_array_t, ptr %2, i32 0, i32 2, !dbg !1471
  store i64 %1, ptr %size1, align 8, !dbg !1472, !tbaa !1473
  %3 = load i64, ptr %n.addr, align 8, !dbg !1474, !tbaa !1358
  %4 = load ptr, ptr %array.addr, align 8, !dbg !1475, !tbaa !1279
  %nalloc = getelementptr inbounds %struct.ngx_array_t, ptr %4, i32 0, i32 3, !dbg !1476
  store i64 %3, ptr %nalloc, align 8, !dbg !1477, !tbaa !1478
  %5 = load ptr, ptr %pool.addr, align 8, !dbg !1479, !tbaa !1279
  %6 = load ptr, ptr %array.addr, align 8, !dbg !1480, !tbaa !1279
  %pool2 = getelementptr inbounds %struct.ngx_array_t, ptr %6, i32 0, i32 4, !dbg !1481
  store ptr %5, ptr %pool2, align 8, !dbg !1482, !tbaa !1483
  %7 = load ptr, ptr %pool.addr, align 8, !dbg !1484, !tbaa !1279
  %8 = load i64, ptr %n.addr, align 8, !dbg !1485, !tbaa !1358
  %9 = load i64, ptr %size.addr, align 8, !dbg !1486, !tbaa !1358
  %mul = mul i64 %8, %9, !dbg !1487
  %call = call ptr @ngx_palloc(ptr noundef %7, i64 noundef %mul), !dbg !1488
  %10 = load ptr, ptr %array.addr, align 8, !dbg !1489, !tbaa !1279
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %10, i32 0, i32 0, !dbg !1490
  store ptr %call, ptr %elts, align 8, !dbg !1491, !tbaa !1341
  %11 = load ptr, ptr %array.addr, align 8, !dbg !1492, !tbaa !1279
  %elts3 = getelementptr inbounds %struct.ngx_array_t, ptr %11, i32 0, i32 0, !dbg !1494
  %12 = load ptr, ptr %elts3, align 8, !dbg !1494, !tbaa !1341
  %cmp = icmp eq ptr %12, null, !dbg !1495
  br i1 %cmp, label %if.then, label %if.end, !dbg !1496

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !1497
  br label %return, !dbg !1497

if.end:                                           ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !1499
  br label %return, !dbg !1499

return:                                           ; preds = %if.end, %if.then
  %13 = load i64, ptr %retval, align 8, !dbg !1500
  ret i64 %13, !dbg !1500
}

declare !dbg !1501 void @ngx_conf_log_error(i64 noundef, ptr noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare !dbg !1506 i64 @ngx_parse_size(ptr noundef) #2

declare !dbg !1510 ptr @ngx_pcalloc(ptr noundef, i64 noundef) #2

declare !dbg !1511 ptr @ngx_stream_lua_shared_memory_add(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare i64 @ngx_stream_lua_shdict_init_zone(ptr noundef, ptr noundef) #2

declare !dbg !1515 ptr @ngx_array_push(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @ngx_stream_lua_code_cache(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !1518 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %fp = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !1520, metadata !DIExpression()), !dbg !1526
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !1521, metadata !DIExpression()), !dbg !1527
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !1522, metadata !DIExpression()), !dbg !1528
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !1529
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !1523, metadata !DIExpression()), !dbg !1530
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !1531, !tbaa !1279
  store ptr %0, ptr %p, align 8, !dbg !1530, !tbaa !1279
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp) #8, !dbg !1532
  tail call void @llvm.dbg.declare(metadata ptr %fp, metadata !1524, metadata !DIExpression()), !dbg !1533
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8, !dbg !1534
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1525, metadata !DIExpression()), !dbg !1535
  %1 = load ptr, ptr %cf.addr, align 8, !dbg !1536, !tbaa !1279
  %2 = load ptr, ptr %cmd.addr, align 8, !dbg !1537, !tbaa !1279
  %3 = load ptr, ptr %conf.addr, align 8, !dbg !1538, !tbaa !1279
  %call = call ptr @ngx_conf_set_flag_slot(ptr noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1539
  store ptr %call, ptr %ret, align 8, !dbg !1540, !tbaa !1279
  %4 = load ptr, ptr %ret, align 8, !dbg !1541, !tbaa !1279
  %cmp = icmp ne ptr %4, null, !dbg !1543
  br i1 %cmp, label %if.then, label %if.end, !dbg !1544

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ret, align 8, !dbg !1545, !tbaa !1279
  store ptr %5, ptr %retval, align 8, !dbg !1547
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1547

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %p, align 8, !dbg !1548, !tbaa !1279
  %7 = load ptr, ptr %cmd.addr, align 8, !dbg !1549, !tbaa !1279
  %offset = getelementptr inbounds %struct.ngx_command_s, ptr %7, i32 0, i32 4, !dbg !1550
  %8 = load i64, ptr %offset, align 8, !dbg !1550, !tbaa !1551
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %8, !dbg !1553
  store ptr %add.ptr, ptr %fp, align 8, !dbg !1554, !tbaa !1279
  %9 = load ptr, ptr %fp, align 8, !dbg !1555, !tbaa !1279
  %10 = load i64, ptr %9, align 8, !dbg !1557, !tbaa !1358
  %tobool = icmp ne i64 %10, 0, !dbg !1557
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !1558

if.then1:                                         ; preds = %if.end
  %11 = load ptr, ptr %cf.addr, align 8, !dbg !1559, !tbaa !1279
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 2, ptr noundef %11, i32 noundef 0, ptr noundef @.str.3), !dbg !1561
  br label %if.end2, !dbg !1562

if.end2:                                          ; preds = %if.then1, %if.end
  store ptr null, ptr %retval, align 8, !dbg !1563
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1563

cleanup:                                          ; preds = %if.end2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8, !dbg !1564
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp) #8, !dbg !1564
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !1564
  %12 = load ptr, ptr %retval, align 8, !dbg !1564
  ret ptr %12, !dbg !1564
}

declare !dbg !1565 ptr @ngx_conf_set_flag_slot(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ngx_stream_lua_package_cpath(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !1566 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %lmcf = alloca ptr, align 8
  %value = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !1568, metadata !DIExpression()), !dbg !1573
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !1569, metadata !DIExpression()), !dbg !1574
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !1570, metadata !DIExpression()), !dbg !1575
  call void @llvm.lifetime.start.p0(i64 8, ptr %lmcf) #8, !dbg !1576
  tail call void @llvm.dbg.declare(metadata ptr %lmcf, metadata !1571, metadata !DIExpression()), !dbg !1577
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !1578, !tbaa !1279
  store ptr %0, ptr %lmcf, align 8, !dbg !1577, !tbaa !1279
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #8, !dbg !1579
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !1572, metadata !DIExpression()), !dbg !1580
  %1 = load ptr, ptr %lmcf, align 8, !dbg !1581, !tbaa !1279
  %lua_cpath = getelementptr inbounds %struct.ngx_stream_lua_main_conf_s, ptr %1, i32 0, i32 3, !dbg !1583
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %lua_cpath, i32 0, i32 0, !dbg !1584
  %2 = load i64, ptr %len, align 8, !dbg !1584, !tbaa !1585
  %cmp = icmp ne i64 %2, 0, !dbg !1586
  br i1 %cmp, label %if.then, label %if.end, !dbg !1587

if.then:                                          ; preds = %entry
  store ptr @.str.4, ptr %retval, align 8, !dbg !1588
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1588

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %cf.addr, align 8, !dbg !1590, !tbaa !1279
  %args = getelementptr inbounds %struct.ngx_conf_s, ptr %3, i32 0, i32 1, !dbg !1591
  %4 = load ptr, ptr %args, align 8, !dbg !1591, !tbaa !1339
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %4, i32 0, i32 0, !dbg !1592
  %5 = load ptr, ptr %elts, align 8, !dbg !1592, !tbaa !1341
  store ptr %5, ptr %value, align 8, !dbg !1593, !tbaa !1279
  %6 = load ptr, ptr %value, align 8, !dbg !1594, !tbaa !1279
  %arrayidx = getelementptr inbounds %struct.ngx_str_t, ptr %6, i64 1, !dbg !1594
  %len1 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx, i32 0, i32 0, !dbg !1595
  %7 = load i64, ptr %len1, align 8, !dbg !1595, !tbaa !1348
  %8 = load ptr, ptr %lmcf, align 8, !dbg !1596, !tbaa !1279
  %lua_cpath2 = getelementptr inbounds %struct.ngx_stream_lua_main_conf_s, ptr %8, i32 0, i32 3, !dbg !1597
  %len3 = getelementptr inbounds %struct.ngx_str_t, ptr %lua_cpath2, i32 0, i32 0, !dbg !1598
  store i64 %7, ptr %len3, align 8, !dbg !1599, !tbaa !1585
  %9 = load ptr, ptr %value, align 8, !dbg !1600, !tbaa !1279
  %arrayidx4 = getelementptr inbounds %struct.ngx_str_t, ptr %9, i64 1, !dbg !1600
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx4, i32 0, i32 1, !dbg !1601
  %10 = load ptr, ptr %data, align 8, !dbg !1601, !tbaa !1602
  %11 = load ptr, ptr %lmcf, align 8, !dbg !1603, !tbaa !1279
  %lua_cpath5 = getelementptr inbounds %struct.ngx_stream_lua_main_conf_s, ptr %11, i32 0, i32 3, !dbg !1604
  %data6 = getelementptr inbounds %struct.ngx_str_t, ptr %lua_cpath5, i32 0, i32 1, !dbg !1605
  store ptr %10, ptr %data6, align 8, !dbg !1606, !tbaa !1607
  store ptr null, ptr %retval, align 8, !dbg !1608
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1608

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #8, !dbg !1609
  call void @llvm.lifetime.end.p0(i64 8, ptr %lmcf) #8, !dbg !1609
  %12 = load ptr, ptr %retval, align 8, !dbg !1609
  ret ptr %12, !dbg !1609
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ngx_stream_lua_package_path(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !1610 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %lmcf = alloca ptr, align 8
  %value = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !1612, metadata !DIExpression()), !dbg !1617
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !1613, metadata !DIExpression()), !dbg !1618
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !1614, metadata !DIExpression()), !dbg !1619
  call void @llvm.lifetime.start.p0(i64 8, ptr %lmcf) #8, !dbg !1620
  tail call void @llvm.dbg.declare(metadata ptr %lmcf, metadata !1615, metadata !DIExpression()), !dbg !1621
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !1622, !tbaa !1279
  store ptr %0, ptr %lmcf, align 8, !dbg !1621, !tbaa !1279
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #8, !dbg !1623
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !1616, metadata !DIExpression()), !dbg !1624
  %1 = load ptr, ptr %lmcf, align 8, !dbg !1625, !tbaa !1279
  %lua_path = getelementptr inbounds %struct.ngx_stream_lua_main_conf_s, ptr %1, i32 0, i32 2, !dbg !1627
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %lua_path, i32 0, i32 0, !dbg !1628
  %2 = load i64, ptr %len, align 8, !dbg !1628, !tbaa !1629
  %cmp = icmp ne i64 %2, 0, !dbg !1630
  br i1 %cmp, label %if.then, label %if.end, !dbg !1631

if.then:                                          ; preds = %entry
  store ptr @.str.4, ptr %retval, align 8, !dbg !1632
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1632

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %cf.addr, align 8, !dbg !1634, !tbaa !1279
  %args = getelementptr inbounds %struct.ngx_conf_s, ptr %3, i32 0, i32 1, !dbg !1635
  %4 = load ptr, ptr %args, align 8, !dbg !1635, !tbaa !1339
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %4, i32 0, i32 0, !dbg !1636
  %5 = load ptr, ptr %elts, align 8, !dbg !1636, !tbaa !1341
  store ptr %5, ptr %value, align 8, !dbg !1637, !tbaa !1279
  %6 = load ptr, ptr %value, align 8, !dbg !1638, !tbaa !1279
  %arrayidx = getelementptr inbounds %struct.ngx_str_t, ptr %6, i64 1, !dbg !1638
  %len1 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx, i32 0, i32 0, !dbg !1639
  %7 = load i64, ptr %len1, align 8, !dbg !1639, !tbaa !1348
  %8 = load ptr, ptr %lmcf, align 8, !dbg !1640, !tbaa !1279
  %lua_path2 = getelementptr inbounds %struct.ngx_stream_lua_main_conf_s, ptr %8, i32 0, i32 2, !dbg !1641
  %len3 = getelementptr inbounds %struct.ngx_str_t, ptr %lua_path2, i32 0, i32 0, !dbg !1642
  store i64 %7, ptr %len3, align 8, !dbg !1643, !tbaa !1629
  %9 = load ptr, ptr %value, align 8, !dbg !1644, !tbaa !1279
  %arrayidx4 = getelementptr inbounds %struct.ngx_str_t, ptr %9, i64 1, !dbg !1644
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx4, i32 0, i32 1, !dbg !1645
  %10 = load ptr, ptr %data, align 8, !dbg !1645, !tbaa !1602
  %11 = load ptr, ptr %lmcf, align 8, !dbg !1646, !tbaa !1279
  %lua_path5 = getelementptr inbounds %struct.ngx_stream_lua_main_conf_s, ptr %11, i32 0, i32 2, !dbg !1647
  %data6 = getelementptr inbounds %struct.ngx_str_t, ptr %lua_path5, i32 0, i32 1, !dbg !1648
  store ptr %10, ptr %data6, align 8, !dbg !1649, !tbaa !1650
  store ptr null, ptr %retval, align 8, !dbg !1651
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1651

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #8, !dbg !1652
  call void @llvm.lifetime.end.p0(i64 8, ptr %lmcf) #8, !dbg !1652
  %12 = load ptr, ptr %retval, align 8, !dbg !1652
  ret ptr %12, !dbg !1652
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ngx_stream_lua_preread_by_lua_block(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !1653 {
entry:
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %rv = alloca ptr, align 8
  %save = alloca %struct.ngx_conf_s, align 8
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !1655, metadata !DIExpression()), !dbg !1660
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !1656, metadata !DIExpression()), !dbg !1661
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !1657, metadata !DIExpression()), !dbg !1662
  call void @llvm.lifetime.start.p0(i64 8, ptr %rv) #8, !dbg !1663
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !1658, metadata !DIExpression()), !dbg !1664
  call void @llvm.lifetime.start.p0(i64 96, ptr %save) #8, !dbg !1665
  tail call void @llvm.dbg.declare(metadata ptr %save, metadata !1659, metadata !DIExpression()), !dbg !1666
  %0 = load ptr, ptr %cf.addr, align 8, !dbg !1667, !tbaa !1279
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %save, ptr align 8 %0, i64 96, i1 false), !dbg !1668, !tbaa.struct !1669
  %1 = load ptr, ptr %cf.addr, align 8, !dbg !1670, !tbaa !1279
  %handler = getelementptr inbounds %struct.ngx_conf_s, ptr %1, i32 0, i32 10, !dbg !1671
  store ptr @ngx_stream_lua_preread_by_lua, ptr %handler, align 8, !dbg !1672, !tbaa !1673
  %2 = load ptr, ptr %conf.addr, align 8, !dbg !1674, !tbaa !1279
  %3 = load ptr, ptr %cf.addr, align 8, !dbg !1675, !tbaa !1279
  %handler_conf = getelementptr inbounds %struct.ngx_conf_s, ptr %3, i32 0, i32 11, !dbg !1676
  store ptr %2, ptr %handler_conf, align 8, !dbg !1677, !tbaa !1678
  %4 = load ptr, ptr %cf.addr, align 8, !dbg !1679, !tbaa !1279
  %5 = load ptr, ptr %cmd.addr, align 8, !dbg !1680, !tbaa !1279
  %call = call ptr @ngx_stream_lua_conf_lua_block_parse(ptr noundef %4, ptr noundef %5), !dbg !1681
  store ptr %call, ptr %rv, align 8, !dbg !1682, !tbaa !1279
  %6 = load ptr, ptr %cf.addr, align 8, !dbg !1683, !tbaa !1279
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %save, i64 96, i1 false), !dbg !1684, !tbaa.struct !1669
  %7 = load ptr, ptr %rv, align 8, !dbg !1685, !tbaa !1279
  call void @llvm.lifetime.end.p0(i64 96, ptr %save) #8, !dbg !1686
  call void @llvm.lifetime.end.p0(i64 8, ptr %rv) #8, !dbg !1686
  ret ptr %7, !dbg !1687
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ngx_stream_lua_preread_by_lua(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !1688 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %chunkname_len = alloca i64, align 8
  %p = alloca ptr, align 8
  %chunkname = alloca ptr, align 8
  %value = alloca ptr, align 8
  %lmcf = alloca ptr, align 8
  %lscf = alloca ptr, align 8
  %ccv = alloca %struct.ngx_stream_compile_complex_value_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !1690, metadata !DIExpression()), !dbg !1774
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !1691, metadata !DIExpression()), !dbg !1775
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !1692, metadata !DIExpression()), !dbg !1776
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunkname_len) #8, !dbg !1777
  tail call void @llvm.dbg.declare(metadata ptr %chunkname_len, metadata !1693, metadata !DIExpression()), !dbg !1778
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !1779
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !1694, metadata !DIExpression()), !dbg !1780
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunkname) #8, !dbg !1779
  tail call void @llvm.dbg.declare(metadata ptr %chunkname, metadata !1695, metadata !DIExpression()), !dbg !1781
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #8, !dbg !1782
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !1696, metadata !DIExpression()), !dbg !1783
  call void @llvm.lifetime.start.p0(i64 8, ptr %lmcf) #8, !dbg !1784
  tail call void @llvm.dbg.declare(metadata ptr %lmcf, metadata !1697, metadata !DIExpression()), !dbg !1785
  call void @llvm.lifetime.start.p0(i64 8, ptr %lscf) #8, !dbg !1786
  tail call void @llvm.dbg.declare(metadata ptr %lscf, metadata !1698, metadata !DIExpression()), !dbg !1787
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !1788, !tbaa !1279
  store ptr %0, ptr %lscf, align 8, !dbg !1787, !tbaa !1279
  call void @llvm.lifetime.start.p0(i64 32, ptr %ccv) #8, !dbg !1789
  tail call void @llvm.dbg.declare(metadata ptr %ccv, metadata !1763, metadata !DIExpression()), !dbg !1790
  %1 = load ptr, ptr %cmd.addr, align 8, !dbg !1791, !tbaa !1279
  %post = getelementptr inbounds %struct.ngx_command_s, ptr %1, i32 0, i32 5, !dbg !1793
  %2 = load ptr, ptr %post, align 8, !dbg !1793, !tbaa !1794
  %cmp = icmp eq ptr %2, null, !dbg !1795
  br i1 %cmp, label %if.then, label %if.end, !dbg !1796

if.then:                                          ; preds = %entry
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !1797
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1797

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %lscf, align 8, !dbg !1799, !tbaa !1279
  %preread_handler = getelementptr inbounds %struct.ngx_stream_lua_srv_conf_s, ptr %3, i32 0, i32 8, !dbg !1801
  %4 = load ptr, ptr %preread_handler, align 8, !dbg !1801, !tbaa !1802
  %tobool = icmp ne ptr %4, null, !dbg !1799
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !1807

if.then1:                                         ; preds = %if.end
  store ptr @.str.4, ptr %retval, align 8, !dbg !1808
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1808

if.end2:                                          ; preds = %if.end
  %5 = load ptr, ptr %cf.addr, align 8, !dbg !1810, !tbaa !1279
  %args = getelementptr inbounds %struct.ngx_conf_s, ptr %5, i32 0, i32 1, !dbg !1811
  %6 = load ptr, ptr %args, align 8, !dbg !1811, !tbaa !1339
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %6, i32 0, i32 0, !dbg !1812
  %7 = load ptr, ptr %elts, align 8, !dbg !1812, !tbaa !1341
  store ptr %7, ptr %value, align 8, !dbg !1813, !tbaa !1279
  %8 = load ptr, ptr %value, align 8, !dbg !1814, !tbaa !1279
  %arrayidx = getelementptr inbounds %struct.ngx_str_t, ptr %8, i64 1, !dbg !1814
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx, i32 0, i32 0, !dbg !1816
  %9 = load i64, ptr %len, align 8, !dbg !1816, !tbaa !1348
  %cmp3 = icmp eq i64 %9, 0, !dbg !1817
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1818

if.then4:                                         ; preds = %if.end2
  %10 = load ptr, ptr %cf.addr, align 8, !dbg !1819, !tbaa !1279
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 4, ptr noundef %10, i32 noundef 0, ptr noundef @.str.5), !dbg !1821
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !1822
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1822

if.end5:                                          ; preds = %if.end2
  %11 = load ptr, ptr %cmd.addr, align 8, !dbg !1823, !tbaa !1279
  %post6 = getelementptr inbounds %struct.ngx_command_s, ptr %11, i32 0, i32 5, !dbg !1825
  %12 = load ptr, ptr %post6, align 8, !dbg !1825, !tbaa !1794
  %cmp7 = icmp eq ptr %12, @ngx_stream_lua_preread_handler_inline, !dbg !1826
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !1827

if.then8:                                         ; preds = %if.end5
  %13 = load ptr, ptr %cf.addr, align 8, !dbg !1828, !tbaa !1279
  %call = call ptr @ngx_stream_lua_gen_chunk_name(ptr noundef %13, ptr noundef @.str.6, i64 noundef 14, ptr noundef %chunkname_len), !dbg !1830
  store ptr %call, ptr %chunkname, align 8, !dbg !1831, !tbaa !1279
  %14 = load ptr, ptr %chunkname, align 8, !dbg !1832, !tbaa !1279
  %cmp9 = icmp eq ptr %14, null, !dbg !1834
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1835

if.then10:                                        ; preds = %if.then8
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !1836
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1836

if.end11:                                         ; preds = %if.then8
  %15 = load ptr, ptr %chunkname, align 8, !dbg !1838, !tbaa !1279
  %16 = load ptr, ptr %lscf, align 8, !dbg !1839, !tbaa !1279
  %preread_chunkname = getelementptr inbounds %struct.ngx_stream_lua_srv_conf_s, ptr %16, i32 0, i32 11, !dbg !1840
  store ptr %15, ptr %preread_chunkname, align 8, !dbg !1841, !tbaa !1842
  %17 = load ptr, ptr %lscf, align 8, !dbg !1843, !tbaa !1279
  %preread_src = getelementptr inbounds %struct.ngx_stream_lua_srv_conf_s, ptr %17, i32 0, i32 12, !dbg !1844
  %value12 = getelementptr inbounds %struct.ngx_stream_complex_value_t, ptr %preread_src, i32 0, i32 0, !dbg !1845
  %18 = load ptr, ptr %value, align 8, !dbg !1846, !tbaa !1279
  %arrayidx13 = getelementptr inbounds %struct.ngx_str_t, ptr %18, i64 1, !dbg !1846
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %value12, ptr align 8 %arrayidx13, i64 16, i1 false), !dbg !1846, !tbaa.struct !1357
  %19 = load ptr, ptr %cf.addr, align 8, !dbg !1847, !tbaa !1279
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %19, i32 0, i32 3, !dbg !1848
  %20 = load ptr, ptr %pool, align 8, !dbg !1848, !tbaa !1313
  %21 = load i64, ptr %chunkname_len, align 8, !dbg !1849, !tbaa !1358
  %add = add i64 %21, 37, !dbg !1850
  %add14 = add i64 %add, 1, !dbg !1851
  %call15 = call ptr @ngx_palloc(ptr noundef %20, i64 noundef %add14), !dbg !1852
  store ptr %call15, ptr %p, align 8, !dbg !1853, !tbaa !1279
  %22 = load ptr, ptr %p, align 8, !dbg !1854, !tbaa !1279
  %cmp16 = icmp eq ptr %22, null, !dbg !1856
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !1857

if.then17:                                        ; preds = %if.end11
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !1858
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1858

if.end18:                                         ; preds = %if.end11
  %23 = load ptr, ptr %p, align 8, !dbg !1860, !tbaa !1279
  %24 = load ptr, ptr %lscf, align 8, !dbg !1861, !tbaa !1279
  %preread_src_key = getelementptr inbounds %struct.ngx_stream_lua_srv_conf_s, ptr %24, i32 0, i32 13, !dbg !1862
  store ptr %23, ptr %preread_src_key, align 8, !dbg !1863, !tbaa !1864
  %25 = load ptr, ptr %p, align 8, !dbg !1865, !tbaa !1279
  %26 = load ptr, ptr %chunkname, align 8, !dbg !1865, !tbaa !1279
  %27 = load i64, ptr %chunkname_len, align 8, !dbg !1865, !tbaa !1358
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %26, i64 %27, i1 false), !dbg !1865
  %28 = load i64, ptr %chunkname_len, align 8, !dbg !1865, !tbaa !1358
  %add.ptr = getelementptr inbounds i8, ptr %25, i64 %28, !dbg !1865
  store ptr %add.ptr, ptr %p, align 8, !dbg !1866, !tbaa !1279
  %29 = load ptr, ptr %p, align 8, !dbg !1867, !tbaa !1279
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %29, ptr align 1 @.str.7, i64 5, i1 false), !dbg !1867
  %add.ptr19 = getelementptr inbounds i8, ptr %29, i64 5, !dbg !1867
  store ptr %add.ptr19, ptr %p, align 8, !dbg !1868, !tbaa !1279
  %30 = load ptr, ptr %p, align 8, !dbg !1869, !tbaa !1279
  %31 = load ptr, ptr %value, align 8, !dbg !1870, !tbaa !1279
  %arrayidx20 = getelementptr inbounds %struct.ngx_str_t, ptr %31, i64 1, !dbg !1870
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx20, i32 0, i32 1, !dbg !1871
  %32 = load ptr, ptr %data, align 8, !dbg !1871, !tbaa !1602
  %33 = load ptr, ptr %value, align 8, !dbg !1872, !tbaa !1279
  %arrayidx21 = getelementptr inbounds %struct.ngx_str_t, ptr %33, i64 1, !dbg !1872
  %len22 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx21, i32 0, i32 0, !dbg !1873
  %34 = load i64, ptr %len22, align 8, !dbg !1873, !tbaa !1348
  %conv = trunc i64 %34 to i32, !dbg !1872
  %call23 = call ptr @ngx_stream_lua_digest_hex(ptr noundef %30, ptr noundef %32, i32 noundef %conv), !dbg !1874
  store ptr %call23, ptr %p, align 8, !dbg !1875, !tbaa !1279
  %35 = load ptr, ptr %p, align 8, !dbg !1876, !tbaa !1279
  store i8 0, ptr %35, align 1, !dbg !1877, !tbaa !1878
  br label %if.end52, !dbg !1879

if.else:                                          ; preds = %if.end5
  call void @llvm.memset.p0.i64(ptr align 8 %ccv, i8 0, i64 32, i1 false), !dbg !1880
  %36 = load ptr, ptr %cf.addr, align 8, !dbg !1882, !tbaa !1279
  %cf24 = getelementptr inbounds %struct.ngx_stream_compile_complex_value_t, ptr %ccv, i32 0, i32 0, !dbg !1883
  store ptr %36, ptr %cf24, align 8, !dbg !1884, !tbaa !1885
  %37 = load ptr, ptr %value, align 8, !dbg !1887, !tbaa !1279
  %arrayidx25 = getelementptr inbounds %struct.ngx_str_t, ptr %37, i64 1, !dbg !1887
  %value26 = getelementptr inbounds %struct.ngx_stream_compile_complex_value_t, ptr %ccv, i32 0, i32 1, !dbg !1888
  store ptr %arrayidx25, ptr %value26, align 8, !dbg !1889, !tbaa !1890
  %38 = load ptr, ptr %lscf, align 8, !dbg !1891, !tbaa !1279
  %preread_src27 = getelementptr inbounds %struct.ngx_stream_lua_srv_conf_s, ptr %38, i32 0, i32 12, !dbg !1892
  %complex_value = getelementptr inbounds %struct.ngx_stream_compile_complex_value_t, ptr %ccv, i32 0, i32 2, !dbg !1893
  store ptr %preread_src27, ptr %complex_value, align 8, !dbg !1894, !tbaa !1895
  %call28 = call i64 @ngx_stream_compile_complex_value(ptr noundef %ccv), !dbg !1896
  %cmp29 = icmp ne i64 %call28, 0, !dbg !1898
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !1899

if.then31:                                        ; preds = %if.else
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !1900
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1900

if.end32:                                         ; preds = %if.else
  %39 = load ptr, ptr %lscf, align 8, !dbg !1902, !tbaa !1279
  %preread_src33 = getelementptr inbounds %struct.ngx_stream_lua_srv_conf_s, ptr %39, i32 0, i32 12, !dbg !1904
  %lengths = getelementptr inbounds %struct.ngx_stream_complex_value_t, ptr %preread_src33, i32 0, i32 2, !dbg !1905
  %40 = load ptr, ptr %lengths, align 8, !dbg !1905, !tbaa !1906
  %cmp34 = icmp eq ptr %40, null, !dbg !1907
  br i1 %cmp34, label %if.then36, label %if.end51, !dbg !1908

if.then36:                                        ; preds = %if.end32
  %41 = load ptr, ptr %cf.addr, align 8, !dbg !1909, !tbaa !1279
  %pool37 = getelementptr inbounds %struct.ngx_conf_s, ptr %41, i32 0, i32 3, !dbg !1911
  %42 = load ptr, ptr %pool37, align 8, !dbg !1911, !tbaa !1313
  %call38 = call ptr @ngx_palloc(ptr noundef %42, i64 noundef 38), !dbg !1912
  store ptr %call38, ptr %p, align 8, !dbg !1913, !tbaa !1279
  %43 = load ptr, ptr %p, align 8, !dbg !1914, !tbaa !1279
  %cmp39 = icmp eq ptr %43, null, !dbg !1916
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !1917

if.then41:                                        ; preds = %if.then36
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !1918
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1918

if.end42:                                         ; preds = %if.then36
  %44 = load ptr, ptr %p, align 8, !dbg !1920, !tbaa !1279
  %45 = load ptr, ptr %lscf, align 8, !dbg !1921, !tbaa !1279
  %preread_src_key43 = getelementptr inbounds %struct.ngx_stream_lua_srv_conf_s, ptr %45, i32 0, i32 13, !dbg !1922
  store ptr %44, ptr %preread_src_key43, align 8, !dbg !1923, !tbaa !1864
  %46 = load ptr, ptr %p, align 8, !dbg !1924, !tbaa !1279
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %46, ptr align 1 @.str.8, i64 5, i1 false), !dbg !1924
  %add.ptr44 = getelementptr inbounds i8, ptr %46, i64 5, !dbg !1924
  store ptr %add.ptr44, ptr %p, align 8, !dbg !1925, !tbaa !1279
  %47 = load ptr, ptr %p, align 8, !dbg !1926, !tbaa !1279
  %48 = load ptr, ptr %value, align 8, !dbg !1927, !tbaa !1279
  %arrayidx45 = getelementptr inbounds %struct.ngx_str_t, ptr %48, i64 1, !dbg !1927
  %data46 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx45, i32 0, i32 1, !dbg !1928
  %49 = load ptr, ptr %data46, align 8, !dbg !1928, !tbaa !1602
  %50 = load ptr, ptr %value, align 8, !dbg !1929, !tbaa !1279
  %arrayidx47 = getelementptr inbounds %struct.ngx_str_t, ptr %50, i64 1, !dbg !1929
  %len48 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx47, i32 0, i32 0, !dbg !1930
  %51 = load i64, ptr %len48, align 8, !dbg !1930, !tbaa !1348
  %conv49 = trunc i64 %51 to i32, !dbg !1929
  %call50 = call ptr @ngx_stream_lua_digest_hex(ptr noundef %47, ptr noundef %49, i32 noundef %conv49), !dbg !1931
  store ptr %call50, ptr %p, align 8, !dbg !1932, !tbaa !1279
  %52 = load ptr, ptr %p, align 8, !dbg !1933, !tbaa !1279
  store i8 0, ptr %52, align 1, !dbg !1934, !tbaa !1878
  br label %if.end51, !dbg !1935

if.end51:                                         ; preds = %if.end42, %if.end32
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end18
  %53 = load ptr, ptr %cmd.addr, align 8, !dbg !1936, !tbaa !1279
  %post53 = getelementptr inbounds %struct.ngx_command_s, ptr %53, i32 0, i32 5, !dbg !1937
  %54 = load ptr, ptr %post53, align 8, !dbg !1937, !tbaa !1794
  %55 = load ptr, ptr %lscf, align 8, !dbg !1938, !tbaa !1279
  %preread_handler54 = getelementptr inbounds %struct.ngx_stream_lua_srv_conf_s, ptr %55, i32 0, i32 8, !dbg !1939
  store ptr %54, ptr %preread_handler54, align 8, !dbg !1940, !tbaa !1802
  %56 = load ptr, ptr %cf.addr, align 8, !dbg !1941, !tbaa !1279
  %ctx = getelementptr inbounds %struct.ngx_conf_s, ptr %56, i32 0, i32 7, !dbg !1941
  %57 = load ptr, ptr %ctx, align 8, !dbg !1941, !tbaa !1942
  %main_conf = getelementptr inbounds %struct.ngx_stream_conf_ctx_t, ptr %57, i32 0, i32 0, !dbg !1941
  %58 = load ptr, ptr %main_conf, align 8, !dbg !1941, !tbaa !1943
  %59 = load i64, ptr @ngx_stream_lua_module, align 8, !dbg !1941, !tbaa !1945
  %arrayidx55 = getelementptr inbounds ptr, ptr %58, i64 %59, !dbg !1941
  %60 = load ptr, ptr %arrayidx55, align 8, !dbg !1941, !tbaa !1279
  store ptr %60, ptr %lmcf, align 8, !dbg !1947, !tbaa !1279
  %61 = load ptr, ptr %lmcf, align 8, !dbg !1948, !tbaa !1279
  %requires_preread = getelementptr inbounds %struct.ngx_stream_lua_main_conf_s, ptr %61, i32 0, i32 26, !dbg !1949
  %bf.load = load i8, ptr %requires_preread, align 8, !dbg !1950
  %bf.clear = and i8 %bf.load, -2, !dbg !1950
  %bf.set = or i8 %bf.clear, 1, !dbg !1950
  store i8 %bf.set, ptr %requires_preread, align 8, !dbg !1950
  store ptr null, ptr %retval, align 8, !dbg !1951
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1951

cleanup:                                          ; preds = %if.end52, %if.then41, %if.then31, %if.then17, %if.then10, %if.then4, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %ccv) #8, !dbg !1952
  call void @llvm.lifetime.end.p0(i64 8, ptr %lscf) #8, !dbg !1952
  call void @llvm.lifetime.end.p0(i64 8, ptr %lmcf) #8, !dbg !1952
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #8, !dbg !1952
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunkname) #8, !dbg !1952
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !1952
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunkname_len) #8, !dbg !1952
  %62 = load ptr, ptr %retval, align 8, !dbg !1952
  ret ptr %62, !dbg !1952
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ngx_stream_lua_conf_lua_block_parse(ptr noundef %cf, ptr noundef %cmd) #0 !dbg !110 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %ctx = alloca %struct.ngx_stream_lua_block_parser_ctx_s, align 8
  %level = alloca i32, align 4
  %rv = alloca ptr, align 8
  %p = alloca ptr, align 8
  %len = alloca i64, align 8
  %src = alloca ptr, align 8
  %dst = alloca ptr, align 8
  %rc = alloca i64, align 8
  %i = alloca i64, align 8
  %start_line = alloca i64, align 8
  %saved = alloca ptr, align 8
  %type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !701, metadata !DIExpression()), !dbg !1953
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !702, metadata !DIExpression()), !dbg !1954
  call void @llvm.lifetime.start.p0(i64 16, ptr %ctx) #8, !dbg !1955
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !703, metadata !DIExpression()), !dbg !1956
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #8, !dbg !1957
  tail call void @llvm.dbg.declare(metadata ptr %level, metadata !709, metadata !DIExpression()), !dbg !1958
  store i32 1, ptr %level, align 4, !dbg !1958, !tbaa !1959
  call void @llvm.lifetime.start.p0(i64 8, ptr %rv) #8, !dbg !1960
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !710, metadata !DIExpression()), !dbg !1961
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !1962
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !711, metadata !DIExpression()), !dbg !1963
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #8, !dbg !1964
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !712, metadata !DIExpression()), !dbg !1965
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #8, !dbg !1966
  tail call void @llvm.dbg.declare(metadata ptr %src, metadata !713, metadata !DIExpression()), !dbg !1967
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst) #8, !dbg !1966
  tail call void @llvm.dbg.declare(metadata ptr %dst, metadata !715, metadata !DIExpression()), !dbg !1968
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc) #8, !dbg !1969
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !716, metadata !DIExpression()), !dbg !1970
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8, !dbg !1971
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !717, metadata !DIExpression()), !dbg !1972
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_line) #8, !dbg !1971
  tail call void @llvm.dbg.declare(metadata ptr %start_line, metadata !718, metadata !DIExpression()), !dbg !1973
  call void @llvm.lifetime.start.p0(i64 8, ptr %saved) #8, !dbg !1974
  tail call void @llvm.dbg.declare(metadata ptr %saved, metadata !719, metadata !DIExpression()), !dbg !1975
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #8, !dbg !1976
  tail call void @llvm.dbg.declare(metadata ptr %type, metadata !720, metadata !DIExpression()), !dbg !1977
  %0 = load ptr, ptr %cf.addr, align 8, !dbg !1978, !tbaa !1279
  %conf_file = getelementptr inbounds %struct.ngx_conf_s, ptr %0, i32 0, i32 5, !dbg !1980
  %1 = load ptr, ptr %conf_file, align 8, !dbg !1980, !tbaa !1981
  %file = getelementptr inbounds %struct.ngx_conf_file_t, ptr %1, i32 0, i32 0, !dbg !1982
  %fd = getelementptr inbounds %struct.ngx_file_s, ptr %file, i32 0, i32 0, !dbg !1983
  %2 = load i32, ptr %fd, align 8, !dbg !1983, !tbaa !1984
  %cmp = icmp ne i32 %2, -1, !dbg !1989
  br i1 %cmp, label %if.then, label %if.else, !dbg !1990

if.then:                                          ; preds = %entry
  store i32 0, ptr %type, align 4, !dbg !1991, !tbaa !1878
  br label %if.end, !dbg !1993

if.else:                                          ; preds = %entry
  store i32 1, ptr %type, align 4, !dbg !1994, !tbaa !1878
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load ptr, ptr %cf.addr, align 8, !dbg !1996, !tbaa !1279
  %args = getelementptr inbounds %struct.ngx_conf_s, ptr %3, i32 0, i32 1, !dbg !1997
  %4 = load ptr, ptr %args, align 8, !dbg !1997, !tbaa !1339
  store ptr %4, ptr %saved, align 8, !dbg !1998, !tbaa !1279
  %5 = load ptr, ptr %cf.addr, align 8, !dbg !1999, !tbaa !1279
  %temp_pool = getelementptr inbounds %struct.ngx_conf_s, ptr %5, i32 0, i32 4, !dbg !2000
  %6 = load ptr, ptr %temp_pool, align 8, !dbg !2000, !tbaa !2001
  %call = call ptr @ngx_array_create(ptr noundef %6, i64 noundef 4, i64 noundef 16), !dbg !2002
  %7 = load ptr, ptr %cf.addr, align 8, !dbg !2003, !tbaa !1279
  %args1 = getelementptr inbounds %struct.ngx_conf_s, ptr %7, i32 0, i32 1, !dbg !2004
  store ptr %call, ptr %args1, align 8, !dbg !2005, !tbaa !1339
  %8 = load ptr, ptr %cf.addr, align 8, !dbg !2006, !tbaa !1279
  %args2 = getelementptr inbounds %struct.ngx_conf_s, ptr %8, i32 0, i32 1, !dbg !2008
  %9 = load ptr, ptr %args2, align 8, !dbg !2008, !tbaa !1339
  %cmp3 = icmp eq ptr %9, null, !dbg !2009
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2010

if.then4:                                         ; preds = %if.end
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2011
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2011

if.end5:                                          ; preds = %if.end
  %token_len = getelementptr inbounds %struct.ngx_stream_lua_block_parser_ctx_s, ptr %ctx, i32 0, i32 1, !dbg !2013
  store i32 0, ptr %token_len, align 8, !dbg !2014, !tbaa !2015
  %10 = load ptr, ptr %cf.addr, align 8, !dbg !2017, !tbaa !1279
  %conf_file6 = getelementptr inbounds %struct.ngx_conf_s, ptr %10, i32 0, i32 5, !dbg !2018
  %11 = load ptr, ptr %conf_file6, align 8, !dbg !2018, !tbaa !1981
  %line = getelementptr inbounds %struct.ngx_conf_file_t, ptr %11, i32 0, i32 3, !dbg !2019
  %12 = load i64, ptr %line, align 8, !dbg !2019, !tbaa !2020
  store i64 %12, ptr %start_line, align 8, !dbg !2021, !tbaa !1358
  %13 = load i64, ptr %start_line, align 8, !dbg !2022, !tbaa !1358
  %start_line7 = getelementptr inbounds %struct.ngx_stream_lua_block_parser_ctx_s, ptr %ctx, i32 0, i32 0, !dbg !2023
  store i64 %13, ptr %start_line7, align 8, !dbg !2024, !tbaa !2025
  br label %for.cond, !dbg !2026

for.cond:                                         ; preds = %sw.epilog, %if.end5
  %14 = load ptr, ptr %cf.addr, align 8, !dbg !2027, !tbaa !1279
  %call8 = call i64 @ngx_stream_lua_conf_read_lua_token(ptr noundef %14, ptr noundef %ctx), !dbg !2031
  store i64 %call8, ptr %rc, align 8, !dbg !2032, !tbaa !1358
  %15 = load i64, ptr %rc, align 8, !dbg !2033, !tbaa !1358
  switch i64 %15, label %sw.default [
    i64 -1, label %sw.bb
    i64 0, label %sw.bb9
    i64 1, label %sw.bb16
    i64 2, label %sw.bb64
    i64 3, label %sw.bb64
    i64 4, label %sw.bb64
    i64 5, label %sw.bb64
    i64 6, label %sw.bb64
    i64 7, label %sw.bb64
  ], !dbg !2034

sw.bb:                                            ; preds = %for.cond
  br label %done, !dbg !2035

sw.bb9:                                           ; preds = %for.cond
  %16 = load ptr, ptr %cf.addr, align 8, !dbg !2037, !tbaa !1279
  %conf_file10 = getelementptr inbounds %struct.ngx_conf_s, ptr %16, i32 0, i32 5, !dbg !2038
  %17 = load ptr, ptr %conf_file10, align 8, !dbg !2038, !tbaa !1981
  %line11 = getelementptr inbounds %struct.ngx_conf_file_t, ptr %17, i32 0, i32 3, !dbg !2039
  %18 = load i64, ptr %line11, align 8, !dbg !2039, !tbaa !2020
  %start_line12 = getelementptr inbounds %struct.ngx_stream_lua_block_parser_ctx_s, ptr %ctx, i32 0, i32 0, !dbg !2040
  store i64 %18, ptr %start_line12, align 8, !dbg !2041, !tbaa !2025
  %19 = load i32, ptr %type, align 4, !dbg !2042, !tbaa !1878
  %cmp13 = icmp eq i32 %19, 1, !dbg !2044
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !2045

if.then14:                                        ; preds = %sw.bb9
  %20 = load ptr, ptr %cf.addr, align 8, !dbg !2046, !tbaa !1279
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %20, i32 noundef 0, ptr noundef @.str.12), !dbg !2048
  br label %failed, !dbg !2049

if.end15:                                         ; preds = %sw.bb9
  %21 = load i32, ptr %level, align 4, !dbg !2050, !tbaa !1959
  %inc = add nsw i32 %21, 1, !dbg !2050
  store i32 %inc, ptr %level, align 4, !dbg !2050, !tbaa !1959
  br label %sw.epilog, !dbg !2051

sw.bb16:                                          ; preds = %for.cond
  %22 = load i32, ptr %level, align 4, !dbg !2052, !tbaa !1959
  %dec = add nsw i32 %22, -1, !dbg !2052
  store i32 %dec, ptr %level, align 4, !dbg !2052, !tbaa !1959
  %23 = load i32, ptr %type, align 4, !dbg !2053, !tbaa !1878
  %cmp17 = icmp ne i32 %23, 0, !dbg !2055
  br i1 %cmp17, label %if.then19, label %lor.lhs.false, !dbg !2056

lor.lhs.false:                                    ; preds = %sw.bb16
  %24 = load i32, ptr %level, align 4, !dbg !2057, !tbaa !1959
  %cmp18 = icmp slt i32 %24, 0, !dbg !2058
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2059

if.then19:                                        ; preds = %lor.lhs.false, %sw.bb16
  %25 = load ptr, ptr %cf.addr, align 8, !dbg !2060, !tbaa !1279
  %26 = load i32, ptr %level, align 4, !dbg !2062, !tbaa !1959
  %27 = load i64, ptr %start_line, align 8, !dbg !2063, !tbaa !1358
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %25, i32 noundef 0, ptr noundef @.str.13, i32 noundef %26, i64 noundef %27), !dbg !2064
  br label %failed, !dbg !2065

if.end20:                                         ; preds = %lor.lhs.false
  %28 = load i32, ptr %level, align 4, !dbg !2066, !tbaa !1959
  %cmp21 = icmp eq i32 %28, 0, !dbg !2068
  br i1 %cmp21, label %if.then22, label %if.end63, !dbg !2069

if.then22:                                        ; preds = %if.end20
  %29 = load ptr, ptr %cf.addr, align 8, !dbg !2070, !tbaa !1279
  %args23 = getelementptr inbounds %struct.ngx_conf_s, ptr %29, i32 0, i32 1, !dbg !2072
  %30 = load ptr, ptr %args23, align 8, !dbg !2072, !tbaa !1339
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %30, i32 0, i32 0, !dbg !2073
  %31 = load ptr, ptr %elts, align 8, !dbg !2073, !tbaa !1341
  store ptr %31, ptr %src, align 8, !dbg !2074, !tbaa !1279
  store i64 0, ptr %len, align 8, !dbg !2075, !tbaa !1358
  store i64 0, ptr %i, align 8, !dbg !2077, !tbaa !1358
  br label %for.cond24, !dbg !2078

for.cond24:                                       ; preds = %for.inc, %if.then22
  %32 = load i64, ptr %i, align 8, !dbg !2079, !tbaa !1358
  %33 = load ptr, ptr %cf.addr, align 8, !dbg !2081, !tbaa !1279
  %args25 = getelementptr inbounds %struct.ngx_conf_s, ptr %33, i32 0, i32 1, !dbg !2082
  %34 = load ptr, ptr %args25, align 8, !dbg !2082, !tbaa !1339
  %nelts = getelementptr inbounds %struct.ngx_array_t, ptr %34, i32 0, i32 1, !dbg !2083
  %35 = load i64, ptr %nelts, align 8, !dbg !2083, !tbaa !1468
  %cmp26 = icmp ult i64 %32, %35, !dbg !2084
  br i1 %cmp26, label %for.body, label %for.end, !dbg !2085

for.body:                                         ; preds = %for.cond24
  %36 = load ptr, ptr %src, align 8, !dbg !2086, !tbaa !1279
  %37 = load i64, ptr %i, align 8, !dbg !2088, !tbaa !1358
  %arrayidx = getelementptr inbounds %struct.ngx_str_t, ptr %36, i64 %37, !dbg !2086
  %len27 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx, i32 0, i32 0, !dbg !2089
  %38 = load i64, ptr %len27, align 8, !dbg !2089, !tbaa !1348
  %39 = load i64, ptr %len, align 8, !dbg !2090, !tbaa !1358
  %add = add i64 %39, %38, !dbg !2090
  store i64 %add, ptr %len, align 8, !dbg !2090, !tbaa !1358
  br label %for.inc, !dbg !2091

for.inc:                                          ; preds = %for.body
  %40 = load i64, ptr %i, align 8, !dbg !2092, !tbaa !1358
  %inc28 = add i64 %40, 1, !dbg !2092
  store i64 %inc28, ptr %i, align 8, !dbg !2092, !tbaa !1358
  br label %for.cond24, !dbg !2093, !llvm.loop !2094

for.end:                                          ; preds = %for.cond24
  %41 = load ptr, ptr %saved, align 8, !dbg !2097, !tbaa !1279
  %call29 = call ptr @ngx_array_push(ptr noundef %41), !dbg !2098
  store ptr %call29, ptr %dst, align 8, !dbg !2099, !tbaa !1279
  %42 = load ptr, ptr %dst, align 8, !dbg !2100, !tbaa !1279
  %cmp30 = icmp eq ptr %42, null, !dbg !2102
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2103

if.then31:                                        ; preds = %for.end
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2104
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2104

if.end32:                                         ; preds = %for.end
  %43 = load i64, ptr %len, align 8, !dbg !2106, !tbaa !1358
  %44 = load ptr, ptr %dst, align 8, !dbg !2107, !tbaa !1279
  %len33 = getelementptr inbounds %struct.ngx_str_t, ptr %44, i32 0, i32 0, !dbg !2108
  store i64 %43, ptr %len33, align 8, !dbg !2109, !tbaa !1348
  %45 = load ptr, ptr %dst, align 8, !dbg !2110, !tbaa !1279
  %len34 = getelementptr inbounds %struct.ngx_str_t, ptr %45, i32 0, i32 0, !dbg !2111
  %46 = load i64, ptr %len34, align 8, !dbg !2112, !tbaa !1348
  %dec35 = add i64 %46, -1, !dbg !2112
  store i64 %dec35, ptr %len34, align 8, !dbg !2112, !tbaa !1348
  %47 = load ptr, ptr %cf.addr, align 8, !dbg !2113, !tbaa !1279
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %47, i32 0, i32 3, !dbg !2114
  %48 = load ptr, ptr %pool, align 8, !dbg !2114, !tbaa !1313
  %49 = load i64, ptr %len, align 8, !dbg !2115, !tbaa !1358
  %call36 = call ptr @ngx_palloc(ptr noundef %48, i64 noundef %49), !dbg !2116
  store ptr %call36, ptr %p, align 8, !dbg !2117, !tbaa !1279
  %50 = load ptr, ptr %p, align 8, !dbg !2118, !tbaa !1279
  %cmp37 = icmp eq ptr %50, null, !dbg !2120
  br i1 %cmp37, label %if.then38, label %if.end39, !dbg !2121

if.then38:                                        ; preds = %if.end32
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2122
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2122

if.end39:                                         ; preds = %if.end32
  %51 = load ptr, ptr %p, align 8, !dbg !2124, !tbaa !1279
  %52 = load ptr, ptr %dst, align 8, !dbg !2125, !tbaa !1279
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %52, i32 0, i32 1, !dbg !2126
  store ptr %51, ptr %data, align 8, !dbg !2127, !tbaa !1602
  store i64 0, ptr %i, align 8, !dbg !2128, !tbaa !1358
  br label %for.cond40, !dbg !2130

for.cond40:                                       ; preds = %for.inc51, %if.end39
  %53 = load i64, ptr %i, align 8, !dbg !2131, !tbaa !1358
  %54 = load ptr, ptr %cf.addr, align 8, !dbg !2133, !tbaa !1279
  %args41 = getelementptr inbounds %struct.ngx_conf_s, ptr %54, i32 0, i32 1, !dbg !2134
  %55 = load ptr, ptr %args41, align 8, !dbg !2134, !tbaa !1339
  %nelts42 = getelementptr inbounds %struct.ngx_array_t, ptr %55, i32 0, i32 1, !dbg !2135
  %56 = load i64, ptr %nelts42, align 8, !dbg !2135, !tbaa !1468
  %cmp43 = icmp ult i64 %53, %56, !dbg !2136
  br i1 %cmp43, label %for.body44, label %for.end53, !dbg !2137

for.body44:                                       ; preds = %for.cond40
  %57 = load ptr, ptr %p, align 8, !dbg !2138, !tbaa !1279
  %58 = load ptr, ptr %src, align 8, !dbg !2138, !tbaa !1279
  %59 = load i64, ptr %i, align 8, !dbg !2138, !tbaa !1358
  %arrayidx45 = getelementptr inbounds %struct.ngx_str_t, ptr %58, i64 %59, !dbg !2138
  %data46 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx45, i32 0, i32 1, !dbg !2138
  %60 = load ptr, ptr %data46, align 8, !dbg !2138, !tbaa !1602
  %61 = load ptr, ptr %src, align 8, !dbg !2138, !tbaa !1279
  %62 = load i64, ptr %i, align 8, !dbg !2138, !tbaa !1358
  %arrayidx47 = getelementptr inbounds %struct.ngx_str_t, ptr %61, i64 %62, !dbg !2138
  %len48 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx47, i32 0, i32 0, !dbg !2138
  %63 = load i64, ptr %len48, align 8, !dbg !2138, !tbaa !1348
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %57, ptr align 1 %60, i64 %63, i1 false), !dbg !2138
  %64 = load ptr, ptr %src, align 8, !dbg !2138, !tbaa !1279
  %65 = load i64, ptr %i, align 8, !dbg !2138, !tbaa !1358
  %arrayidx49 = getelementptr inbounds %struct.ngx_str_t, ptr %64, i64 %65, !dbg !2138
  %len50 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx49, i32 0, i32 0, !dbg !2138
  %66 = load i64, ptr %len50, align 8, !dbg !2138, !tbaa !1348
  %add.ptr = getelementptr inbounds i8, ptr %57, i64 %66, !dbg !2138
  store ptr %add.ptr, ptr %p, align 8, !dbg !2140, !tbaa !1279
  br label %for.inc51, !dbg !2141

for.inc51:                                        ; preds = %for.body44
  %67 = load i64, ptr %i, align 8, !dbg !2142, !tbaa !1358
  %inc52 = add i64 %67, 1, !dbg !2142
  store i64 %inc52, ptr %i, align 8, !dbg !2142, !tbaa !1358
  br label %for.cond40, !dbg !2143, !llvm.loop !2144

for.end53:                                        ; preds = %for.cond40
  %68 = load ptr, ptr %p, align 8, !dbg !2146, !tbaa !1279
  %arrayidx54 = getelementptr inbounds i8, ptr %68, i64 -1, !dbg !2146
  store i8 0, ptr %arrayidx54, align 1, !dbg !2147, !tbaa !1878
  %69 = load ptr, ptr %saved, align 8, !dbg !2148, !tbaa !1279
  %70 = load ptr, ptr %cf.addr, align 8, !dbg !2149, !tbaa !1279
  %args55 = getelementptr inbounds %struct.ngx_conf_s, ptr %70, i32 0, i32 1, !dbg !2150
  store ptr %69, ptr %args55, align 8, !dbg !2151, !tbaa !1339
  %71 = load ptr, ptr %cf.addr, align 8, !dbg !2152, !tbaa !1279
  %handler = getelementptr inbounds %struct.ngx_conf_s, ptr %71, i32 0, i32 10, !dbg !2153
  %72 = load ptr, ptr %handler, align 8, !dbg !2153, !tbaa !1673
  %73 = load ptr, ptr %cf.addr, align 8, !dbg !2154, !tbaa !1279
  %74 = load ptr, ptr %cmd.addr, align 8, !dbg !2155, !tbaa !1279
  %75 = load ptr, ptr %cf.addr, align 8, !dbg !2156, !tbaa !1279
  %handler_conf = getelementptr inbounds %struct.ngx_conf_s, ptr %75, i32 0, i32 11, !dbg !2157
  %76 = load ptr, ptr %handler_conf, align 8, !dbg !2157, !tbaa !1678
  %call56 = call ptr %72(ptr noundef %73, ptr noundef %74, ptr noundef %76), !dbg !2158
  store ptr %call56, ptr %rv, align 8, !dbg !2159, !tbaa !1279
  %77 = load ptr, ptr %rv, align 8, !dbg !2160, !tbaa !1279
  %cmp57 = icmp eq ptr %77, null, !dbg !2162
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2163

if.then58:                                        ; preds = %for.end53
  br label %done, !dbg !2164

if.end59:                                         ; preds = %for.end53
  %78 = load ptr, ptr %rv, align 8, !dbg !2166, !tbaa !1279
  %cmp60 = icmp eq ptr %78, inttoptr (i64 -1 to ptr), !dbg !2168
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2169

if.then61:                                        ; preds = %if.end59
  br label %failed, !dbg !2170

if.end62:                                         ; preds = %if.end59
  %79 = load ptr, ptr %cf.addr, align 8, !dbg !2172, !tbaa !1279
  %80 = load ptr, ptr %rv, align 8, !dbg !2173, !tbaa !1279
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %79, i32 noundef 0, ptr noundef %80), !dbg !2174
  br label %failed, !dbg !2175

if.end63:                                         ; preds = %if.end20
  br label %sw.epilog, !dbg !2176

sw.bb64:                                          ; preds = %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond
  br label %sw.epilog, !dbg !2177

sw.default:                                       ; preds = %for.cond
  %81 = load ptr, ptr %cf.addr, align 8, !dbg !2178, !tbaa !1279
  %82 = load i64, ptr %rc, align 8, !dbg !2179, !tbaa !1358
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %81, i32 noundef 0, ptr noundef @.str.14, i64 noundef %82), !dbg !2180
  br label %failed, !dbg !2181

sw.epilog:                                        ; preds = %sw.bb64, %if.end63, %if.end15
  br label %for.cond, !dbg !2182, !llvm.loop !2183

failed:                                           ; preds = %sw.default, %if.end62, %if.then61, %if.then19, %if.then14
  tail call void @llvm.dbg.label(metadata !721), !dbg !2186
  store i64 -1, ptr %rc, align 8, !dbg !2187, !tbaa !1358
  br label %done, !dbg !2188

done:                                             ; preds = %failed, %if.then58, %sw.bb
  tail call void @llvm.dbg.label(metadata !722), !dbg !2189
  %83 = load i64, ptr %rc, align 8, !dbg !2190, !tbaa !1358
  %cmp65 = icmp eq i64 %83, -1, !dbg !2192
  br i1 %cmp65, label %if.then66, label %if.end67, !dbg !2193

if.then66:                                        ; preds = %done
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2194
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2194

if.end67:                                         ; preds = %done
  store ptr null, ptr %retval, align 8, !dbg !2196
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2196

cleanup:                                          ; preds = %if.end67, %if.then66, %if.then38, %if.then31, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #8, !dbg !2197
  call void @llvm.lifetime.end.p0(i64 8, ptr %saved) #8, !dbg !2197
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_line) #8, !dbg !2197
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8, !dbg !2197
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc) #8, !dbg !2197
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst) #8, !dbg !2197
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #8, !dbg !2197
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #8, !dbg !2197
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !2197
  call void @llvm.lifetime.end.p0(i64 8, ptr %rv) #8, !dbg !2197
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #8, !dbg !2197
  call void @llvm.lifetime.end.p0(i64 16, ptr %ctx) #8, !dbg !2197
  %84 = load ptr, ptr %retval, align 8, !dbg !2197
  ret ptr %84, !dbg !2197
}

declare i64 @ngx_stream_lua_preread_handler_inline(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @ngx_stream_lua_gen_chunk_name(ptr noundef %cf, ptr noundef %tag, i64 noundef %tag_len, ptr noundef %chunkname_len) #0 !dbg !2198 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %tag.addr = alloca ptr, align 8
  %tag_len.addr = alloca i64, align 8
  %chunkname_len.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %out = alloca ptr, align 8
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2203, metadata !DIExpression()), !dbg !2211
  store ptr %tag, ptr %tag.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !2204, metadata !DIExpression()), !dbg !2212
  store i64 %tag_len, ptr %tag_len.addr, align 8, !tbaa !1358
  tail call void @llvm.dbg.declare(metadata ptr %tag_len.addr, metadata !2205, metadata !DIExpression()), !dbg !2213
  store ptr %chunkname_len, ptr %chunkname_len.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %chunkname_len.addr, metadata !2206, metadata !DIExpression()), !dbg !2214
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !2215
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !2207, metadata !DIExpression()), !dbg !2216
  call void @llvm.lifetime.start.p0(i64 8, ptr %out) #8, !dbg !2215
  tail call void @llvm.dbg.declare(metadata ptr %out, metadata !2208, metadata !DIExpression()), !dbg !2217
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #8, !dbg !2218
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !2209, metadata !DIExpression()), !dbg !2219
  %0 = load i64, ptr %tag_len.addr, align 8, !dbg !2220, !tbaa !1358
  %add = add i64 4, %0, !dbg !2221
  %1 = load ptr, ptr %cf.addr, align 8, !dbg !2222, !tbaa !1279
  %conf_file = getelementptr inbounds %struct.ngx_conf_s, ptr %1, i32 0, i32 5, !dbg !2223
  %2 = load ptr, ptr %conf_file, align 8, !dbg !2223, !tbaa !1981
  %file = getelementptr inbounds %struct.ngx_conf_file_t, ptr %2, i32 0, i32 0, !dbg !2224
  %name = getelementptr inbounds %struct.ngx_file_s, ptr %file, i32 0, i32 1, !dbg !2225
  %len1 = getelementptr inbounds %struct.ngx_str_t, ptr %name, i32 0, i32 0, !dbg !2226
  %3 = load i64, ptr %len1, align 8, !dbg !2226, !tbaa !2227
  %add2 = add i64 %add, %3, !dbg !2228
  %add3 = add i64 %add2, 20, !dbg !2229
  %add4 = add i64 %add3, 1, !dbg !2230
  store i64 %add4, ptr %len, align 8, !dbg !2231, !tbaa !1358
  %4 = load ptr, ptr %cf.addr, align 8, !dbg !2232, !tbaa !1279
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %4, i32 0, i32 3, !dbg !2233
  %5 = load ptr, ptr %pool, align 8, !dbg !2233, !tbaa !1313
  %6 = load i64, ptr %len, align 8, !dbg !2234, !tbaa !1358
  %call = call ptr @ngx_palloc(ptr noundef %5, i64 noundef %6), !dbg !2235
  store ptr %call, ptr %out, align 8, !dbg !2236, !tbaa !1279
  %7 = load ptr, ptr %out, align 8, !dbg !2237, !tbaa !1279
  %cmp = icmp eq ptr %7, null, !dbg !2239
  br i1 %cmp, label %if.then, label %if.end, !dbg !2240

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2241
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2241

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %cf.addr, align 8, !dbg !2243, !tbaa !1279
  %conf_file5 = getelementptr inbounds %struct.ngx_conf_s, ptr %8, i32 0, i32 5, !dbg !2245
  %9 = load ptr, ptr %conf_file5, align 8, !dbg !2245, !tbaa !1981
  %file6 = getelementptr inbounds %struct.ngx_conf_file_t, ptr %9, i32 0, i32 0, !dbg !2246
  %name7 = getelementptr inbounds %struct.ngx_file_s, ptr %file6, i32 0, i32 1, !dbg !2247
  %len8 = getelementptr inbounds %struct.ngx_str_t, ptr %name7, i32 0, i32 0, !dbg !2248
  %10 = load i64, ptr %len8, align 8, !dbg !2248, !tbaa !2227
  %tobool = icmp ne i64 %10, 0, !dbg !2243
  br i1 %tobool, label %if.then9, label %if.else, !dbg !2249

if.then9:                                         ; preds = %if.end
  %11 = load ptr, ptr %cf.addr, align 8, !dbg !2250, !tbaa !1279
  %conf_file10 = getelementptr inbounds %struct.ngx_conf_s, ptr %11, i32 0, i32 5, !dbg !2252
  %12 = load ptr, ptr %conf_file10, align 8, !dbg !2252, !tbaa !1981
  %file11 = getelementptr inbounds %struct.ngx_conf_file_t, ptr %12, i32 0, i32 0, !dbg !2253
  %name12 = getelementptr inbounds %struct.ngx_file_s, ptr %file11, i32 0, i32 1, !dbg !2254
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %name12, i32 0, i32 1, !dbg !2255
  %13 = load ptr, ptr %data, align 8, !dbg !2255, !tbaa !2256
  %14 = load ptr, ptr %cf.addr, align 8, !dbg !2257, !tbaa !1279
  %conf_file13 = getelementptr inbounds %struct.ngx_conf_s, ptr %14, i32 0, i32 5, !dbg !2258
  %15 = load ptr, ptr %conf_file13, align 8, !dbg !2258, !tbaa !1981
  %file14 = getelementptr inbounds %struct.ngx_conf_file_t, ptr %15, i32 0, i32 0, !dbg !2259
  %name15 = getelementptr inbounds %struct.ngx_file_s, ptr %file14, i32 0, i32 1, !dbg !2260
  %len16 = getelementptr inbounds %struct.ngx_str_t, ptr %name15, i32 0, i32 0, !dbg !2261
  %16 = load i64, ptr %len16, align 8, !dbg !2261, !tbaa !2227
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %16, !dbg !2262
  store ptr %add.ptr, ptr %p, align 8, !dbg !2263, !tbaa !1279
  br label %while.cond, !dbg !2264

while.cond:                                       ; preds = %if.end29, %if.then9
  %17 = load ptr, ptr %p, align 8, !dbg !2265, !tbaa !1279
  %incdec.ptr = getelementptr inbounds i8, ptr %17, i32 -1, !dbg !2265
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !2265, !tbaa !1279
  %18 = load ptr, ptr %cf.addr, align 8, !dbg !2266, !tbaa !1279
  %conf_file17 = getelementptr inbounds %struct.ngx_conf_s, ptr %18, i32 0, i32 5, !dbg !2267
  %19 = load ptr, ptr %conf_file17, align 8, !dbg !2267, !tbaa !1981
  %file18 = getelementptr inbounds %struct.ngx_conf_file_t, ptr %19, i32 0, i32 0, !dbg !2268
  %name19 = getelementptr inbounds %struct.ngx_file_s, ptr %file18, i32 0, i32 1, !dbg !2269
  %data20 = getelementptr inbounds %struct.ngx_str_t, ptr %name19, i32 0, i32 1, !dbg !2270
  %20 = load ptr, ptr %data20, align 8, !dbg !2270, !tbaa !2256
  %cmp21 = icmp uge ptr %incdec.ptr, %20, !dbg !2271
  br i1 %cmp21, label %while.body, label %while.end, !dbg !2264

while.body:                                       ; preds = %while.cond
  %21 = load ptr, ptr %p, align 8, !dbg !2272, !tbaa !1279
  %22 = load i8, ptr %21, align 1, !dbg !2275, !tbaa !1878
  %conv = zext i8 %22 to i32, !dbg !2275
  %cmp22 = icmp eq i32 %conv, 47, !dbg !2276
  br i1 %cmp22, label %if.then27, label %lor.lhs.false, !dbg !2277

lor.lhs.false:                                    ; preds = %while.body
  %23 = load ptr, ptr %p, align 8, !dbg !2278, !tbaa !1279
  %24 = load i8, ptr %23, align 1, !dbg !2279, !tbaa !1878
  %conv24 = zext i8 %24 to i32, !dbg !2279
  %cmp25 = icmp eq i32 %conv24, 92, !dbg !2280
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !2281

if.then27:                                        ; preds = %lor.lhs.false, %while.body
  %25 = load ptr, ptr %p, align 8, !dbg !2282, !tbaa !1279
  %incdec.ptr28 = getelementptr inbounds i8, ptr %25, i32 1, !dbg !2282
  store ptr %incdec.ptr28, ptr %p, align 8, !dbg !2282, !tbaa !1279
  br label %found, !dbg !2284

if.end29:                                         ; preds = %lor.lhs.false
  br label %while.cond, !dbg !2264, !llvm.loop !2285

while.end:                                        ; preds = %while.cond
  %26 = load ptr, ptr %p, align 8, !dbg !2287, !tbaa !1279
  %incdec.ptr30 = getelementptr inbounds i8, ptr %26, i32 1, !dbg !2287
  store ptr %incdec.ptr30, ptr %p, align 8, !dbg !2287, !tbaa !1279
  br label %if.end35, !dbg !2288

if.else:                                          ; preds = %if.end
  %27 = load ptr, ptr %cf.addr, align 8, !dbg !2289, !tbaa !1279
  %conf_file31 = getelementptr inbounds %struct.ngx_conf_s, ptr %27, i32 0, i32 5, !dbg !2291
  %28 = load ptr, ptr %conf_file31, align 8, !dbg !2291, !tbaa !1981
  %file32 = getelementptr inbounds %struct.ngx_conf_file_t, ptr %28, i32 0, i32 0, !dbg !2292
  %name33 = getelementptr inbounds %struct.ngx_file_s, ptr %file32, i32 0, i32 1, !dbg !2293
  %data34 = getelementptr inbounds %struct.ngx_str_t, ptr %name33, i32 0, i32 1, !dbg !2294
  %29 = load ptr, ptr %data34, align 8, !dbg !2294, !tbaa !2256
  store ptr %29, ptr %p, align 8, !dbg !2295, !tbaa !1279
  br label %if.end35

if.end35:                                         ; preds = %if.else, %while.end
  br label %found, !dbg !2248

found:                                            ; preds = %if.end35, %if.then27
  tail call void @llvm.dbg.label(metadata !2210), !dbg !2296
  %30 = load ptr, ptr %out, align 8, !dbg !2297, !tbaa !1279
  %31 = load i64, ptr %len, align 8, !dbg !2298, !tbaa !1358
  %32 = load i64, ptr %tag_len.addr, align 8, !dbg !2299, !tbaa !1358
  %33 = load ptr, ptr %tag.addr, align 8, !dbg !2300, !tbaa !1279
  %34 = load ptr, ptr %cf.addr, align 8, !dbg !2301, !tbaa !1279
  %conf_file36 = getelementptr inbounds %struct.ngx_conf_s, ptr %34, i32 0, i32 5, !dbg !2302
  %35 = load ptr, ptr %conf_file36, align 8, !dbg !2302, !tbaa !1981
  %file37 = getelementptr inbounds %struct.ngx_conf_file_t, ptr %35, i32 0, i32 0, !dbg !2303
  %name38 = getelementptr inbounds %struct.ngx_file_s, ptr %file37, i32 0, i32 1, !dbg !2304
  %data39 = getelementptr inbounds %struct.ngx_str_t, ptr %name38, i32 0, i32 1, !dbg !2305
  %36 = load ptr, ptr %data39, align 8, !dbg !2305, !tbaa !2256
  %37 = load ptr, ptr %cf.addr, align 8, !dbg !2306, !tbaa !1279
  %conf_file40 = getelementptr inbounds %struct.ngx_conf_s, ptr %37, i32 0, i32 5, !dbg !2307
  %38 = load ptr, ptr %conf_file40, align 8, !dbg !2307, !tbaa !1981
  %file41 = getelementptr inbounds %struct.ngx_conf_file_t, ptr %38, i32 0, i32 0, !dbg !2308
  %name42 = getelementptr inbounds %struct.ngx_file_s, ptr %file41, i32 0, i32 1, !dbg !2309
  %len43 = getelementptr inbounds %struct.ngx_str_t, ptr %name42, i32 0, i32 0, !dbg !2310
  %39 = load i64, ptr %len43, align 8, !dbg !2310, !tbaa !2227
  %add.ptr44 = getelementptr inbounds i8, ptr %36, i64 %39, !dbg !2311
  %40 = load ptr, ptr %p, align 8, !dbg !2312, !tbaa !1279
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr44 to i64, !dbg !2313
  %sub.ptr.rhs.cast = ptrtoint ptr %40 to i64, !dbg !2313
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2313
  %41 = load ptr, ptr %p, align 8, !dbg !2314, !tbaa !1279
  %42 = load ptr, ptr %cf.addr, align 8, !dbg !2315, !tbaa !1279
  %conf_file45 = getelementptr inbounds %struct.ngx_conf_s, ptr %42, i32 0, i32 5, !dbg !2316
  %43 = load ptr, ptr %conf_file45, align 8, !dbg !2316, !tbaa !1981
  %line = getelementptr inbounds %struct.ngx_conf_file_t, ptr %43, i32 0, i32 3, !dbg !2317
  %44 = load i64, ptr %line, align 8, !dbg !2317, !tbaa !2020
  %call46 = call ptr (ptr, i64, ptr, ...) @ngx_snprintf(ptr noundef %30, i64 noundef %31, ptr noundef @.str.19, i64 noundef %32, ptr noundef %33, i64 noundef %sub.ptr.sub, ptr noundef %41, i64 noundef %44), !dbg !2318
  %45 = load i64, ptr %len, align 8, !dbg !2319, !tbaa !1358
  %46 = load ptr, ptr %chunkname_len.addr, align 8, !dbg !2320, !tbaa !1279
  store i64 %45, ptr %46, align 8, !dbg !2321, !tbaa !1358
  %47 = load ptr, ptr %out, align 8, !dbg !2322, !tbaa !1279
  store ptr %47, ptr %retval, align 8, !dbg !2323
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2323

cleanup:                                          ; preds = %found, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #8, !dbg !2324
  call void @llvm.lifetime.end.p0(i64 8, ptr %out) #8, !dbg !2324
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !2324
  %48 = load ptr, ptr %retval, align 8, !dbg !2324
  ret ptr %48, !dbg !2324
}

declare !dbg !2325 ptr @ngx_stream_lua_digest_hex(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare !dbg !2331 i64 @ngx_stream_compile_complex_value(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ngx_stream_lua_content_by_lua_block(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !2335 {
entry:
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %rv = alloca ptr, align 8
  %save = alloca %struct.ngx_conf_s, align 8
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2337, metadata !DIExpression()), !dbg !2342
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !2338, metadata !DIExpression()), !dbg !2343
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !2339, metadata !DIExpression()), !dbg !2344
  call void @llvm.lifetime.start.p0(i64 8, ptr %rv) #8, !dbg !2345
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !2340, metadata !DIExpression()), !dbg !2346
  call void @llvm.lifetime.start.p0(i64 96, ptr %save) #8, !dbg !2347
  tail call void @llvm.dbg.declare(metadata ptr %save, metadata !2341, metadata !DIExpression()), !dbg !2348
  %0 = load ptr, ptr %cf.addr, align 8, !dbg !2349, !tbaa !1279
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %save, ptr align 8 %0, i64 96, i1 false), !dbg !2350, !tbaa.struct !1669
  %1 = load ptr, ptr %cf.addr, align 8, !dbg !2351, !tbaa !1279
  %handler = getelementptr inbounds %struct.ngx_conf_s, ptr %1, i32 0, i32 10, !dbg !2352
  store ptr @ngx_stream_lua_content_by_lua, ptr %handler, align 8, !dbg !2353, !tbaa !1673
  %2 = load ptr, ptr %conf.addr, align 8, !dbg !2354, !tbaa !1279
  %3 = load ptr, ptr %cf.addr, align 8, !dbg !2355, !tbaa !1279
  %handler_conf = getelementptr inbounds %struct.ngx_conf_s, ptr %3, i32 0, i32 11, !dbg !2356
  store ptr %2, ptr %handler_conf, align 8, !dbg !2357, !tbaa !1678
  %4 = load ptr, ptr %cf.addr, align 8, !dbg !2358, !tbaa !1279
  %5 = load ptr, ptr %cmd.addr, align 8, !dbg !2359, !tbaa !1279
  %call = call ptr @ngx_stream_lua_conf_lua_block_parse(ptr noundef %4, ptr noundef %5), !dbg !2360
  store ptr %call, ptr %rv, align 8, !dbg !2361, !tbaa !1279
  %6 = load ptr, ptr %cf.addr, align 8, !dbg !2362, !tbaa !1279
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %save, i64 96, i1 false), !dbg !2363, !tbaa.struct !1669
  %7 = load ptr, ptr %rv, align 8, !dbg !2364, !tbaa !1279
  call void @llvm.lifetime.end.p0(i64 96, ptr %save) #8, !dbg !2365
  call void @llvm.lifetime.end.p0(i64 8, ptr %rv) #8, !dbg !2365
  ret ptr %7, !dbg !2366
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ngx_stream_lua_content_by_lua(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !2367 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %chunkname_len = alloca i64, align 8
  %p = alloca ptr, align 8
  %chunkname = alloca ptr, align 8
  %value = alloca ptr, align 8
  %cxcf = alloca ptr, align 8
  %ccv = alloca %struct.ngx_stream_compile_complex_value_t, align 8
  %llcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2369, metadata !DIExpression()), !dbg !2401
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !2370, metadata !DIExpression()), !dbg !2402
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !2371, metadata !DIExpression()), !dbg !2403
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunkname_len) #8, !dbg !2404
  tail call void @llvm.dbg.declare(metadata ptr %chunkname_len, metadata !2372, metadata !DIExpression()), !dbg !2405
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !2406
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !2373, metadata !DIExpression()), !dbg !2407
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunkname) #8, !dbg !2408
  tail call void @llvm.dbg.declare(metadata ptr %chunkname, metadata !2374, metadata !DIExpression()), !dbg !2409
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #8, !dbg !2410
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !2375, metadata !DIExpression()), !dbg !2411
  call void @llvm.lifetime.start.p0(i64 8, ptr %cxcf) #8, !dbg !2412
  tail call void @llvm.dbg.declare(metadata ptr %cxcf, metadata !2376, metadata !DIExpression()), !dbg !2413
  call void @llvm.lifetime.start.p0(i64 32, ptr %ccv) #8, !dbg !2414
  tail call void @llvm.dbg.declare(metadata ptr %ccv, metadata !2397, metadata !DIExpression()), !dbg !2415
  call void @llvm.lifetime.start.p0(i64 8, ptr %llcf) #8, !dbg !2416
  tail call void @llvm.dbg.declare(metadata ptr %llcf, metadata !2398, metadata !DIExpression()), !dbg !2417
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !2418, !tbaa !1279
  store ptr %0, ptr %llcf, align 8, !dbg !2417, !tbaa !1279
  %1 = load ptr, ptr %cmd.addr, align 8, !dbg !2419, !tbaa !1279
  %post = getelementptr inbounds %struct.ngx_command_s, ptr %1, i32 0, i32 5, !dbg !2421
  %2 = load ptr, ptr %post, align 8, !dbg !2421, !tbaa !1794
  %cmp = icmp eq ptr %2, null, !dbg !2422
  br i1 %cmp, label %if.then, label %if.end, !dbg !2423

if.then:                                          ; preds = %entry
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2424
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2424

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %llcf, align 8, !dbg !2426, !tbaa !1279
  %content_handler = getelementptr inbounds %struct.ngx_stream_lua_srv_conf_s, ptr %3, i32 0, i32 9, !dbg !2428
  %4 = load ptr, ptr %content_handler, align 8, !dbg !2428, !tbaa !2429
  %tobool = icmp ne ptr %4, null, !dbg !2426
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !2430

if.then1:                                         ; preds = %if.end
  store ptr @.str.4, ptr %retval, align 8, !dbg !2431
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2431

if.end2:                                          ; preds = %if.end
  %5 = load ptr, ptr %cf.addr, align 8, !dbg !2433, !tbaa !1279
  %args = getelementptr inbounds %struct.ngx_conf_s, ptr %5, i32 0, i32 1, !dbg !2434
  %6 = load ptr, ptr %args, align 8, !dbg !2434, !tbaa !1339
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %6, i32 0, i32 0, !dbg !2435
  %7 = load ptr, ptr %elts, align 8, !dbg !2435, !tbaa !1341
  store ptr %7, ptr %value, align 8, !dbg !2436, !tbaa !1279
  %8 = load ptr, ptr %value, align 8, !dbg !2437, !tbaa !1279
  %arrayidx = getelementptr inbounds %struct.ngx_str_t, ptr %8, i64 1, !dbg !2437
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx, i32 0, i32 0, !dbg !2439
  %9 = load i64, ptr %len, align 8, !dbg !2439, !tbaa !1348
  %cmp3 = icmp eq i64 %9, 0, !dbg !2440
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2441

if.then4:                                         ; preds = %if.end2
  %10 = load ptr, ptr %cf.addr, align 8, !dbg !2442, !tbaa !1279
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 4, ptr noundef %10, i32 noundef 0, ptr noundef @.str.9), !dbg !2444
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2445
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2445

if.end5:                                          ; preds = %if.end2
  %11 = load ptr, ptr %cmd.addr, align 8, !dbg !2446, !tbaa !1279
  %post6 = getelementptr inbounds %struct.ngx_command_s, ptr %11, i32 0, i32 5, !dbg !2448
  %12 = load ptr, ptr %post6, align 8, !dbg !2448, !tbaa !1794
  %cmp7 = icmp eq ptr %12, @ngx_stream_lua_content_handler_inline, !dbg !2449
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !2450

if.then8:                                         ; preds = %if.end5
  %13 = load ptr, ptr %cf.addr, align 8, !dbg !2451, !tbaa !1279
  %call = call ptr @ngx_stream_lua_gen_chunk_name(ptr noundef %13, ptr noundef @.str.10, i64 noundef 14, ptr noundef %chunkname_len), !dbg !2453
  store ptr %call, ptr %chunkname, align 8, !dbg !2454, !tbaa !1279
  %14 = load ptr, ptr %chunkname, align 8, !dbg !2455, !tbaa !1279
  %cmp9 = icmp eq ptr %14, null, !dbg !2457
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2458

if.then10:                                        ; preds = %if.then8
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2459
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2459

if.end11:                                         ; preds = %if.then8
  %15 = load ptr, ptr %chunkname, align 8, !dbg !2461, !tbaa !1279
  %16 = load ptr, ptr %llcf, align 8, !dbg !2462, !tbaa !1279
  %content_chunkname = getelementptr inbounds %struct.ngx_stream_lua_srv_conf_s, ptr %16, i32 0, i32 14, !dbg !2463
  store ptr %15, ptr %content_chunkname, align 8, !dbg !2464, !tbaa !2465
  %17 = load ptr, ptr %llcf, align 8, !dbg !2466, !tbaa !1279
  %content_src = getelementptr inbounds %struct.ngx_stream_lua_srv_conf_s, ptr %17, i32 0, i32 15, !dbg !2467
  %value12 = getelementptr inbounds %struct.ngx_stream_complex_value_t, ptr %content_src, i32 0, i32 0, !dbg !2468
  %18 = load ptr, ptr %value, align 8, !dbg !2469, !tbaa !1279
  %arrayidx13 = getelementptr inbounds %struct.ngx_str_t, ptr %18, i64 1, !dbg !2469
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %value12, ptr align 8 %arrayidx13, i64 16, i1 false), !dbg !2469, !tbaa.struct !1357
  %19 = load ptr, ptr %cf.addr, align 8, !dbg !2470, !tbaa !1279
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %19, i32 0, i32 3, !dbg !2471
  %20 = load ptr, ptr %pool, align 8, !dbg !2471, !tbaa !1313
  %21 = load i64, ptr %chunkname_len, align 8, !dbg !2472, !tbaa !1358
  %add = add i64 %21, 37, !dbg !2473
  %add14 = add i64 %add, 1, !dbg !2474
  %call15 = call ptr @ngx_palloc(ptr noundef %20, i64 noundef %add14), !dbg !2475
  store ptr %call15, ptr %p, align 8, !dbg !2476, !tbaa !1279
  %22 = load ptr, ptr %p, align 8, !dbg !2477, !tbaa !1279
  %cmp16 = icmp eq ptr %22, null, !dbg !2479
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !2480

if.then17:                                        ; preds = %if.end11
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2481
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2481

if.end18:                                         ; preds = %if.end11
  %23 = load ptr, ptr %p, align 8, !dbg !2483, !tbaa !1279
  %24 = load ptr, ptr %llcf, align 8, !dbg !2484, !tbaa !1279
  %content_src_key = getelementptr inbounds %struct.ngx_stream_lua_srv_conf_s, ptr %24, i32 0, i32 16, !dbg !2485
  store ptr %23, ptr %content_src_key, align 8, !dbg !2486, !tbaa !2487
  %25 = load ptr, ptr %p, align 8, !dbg !2488, !tbaa !1279
  %26 = load ptr, ptr %chunkname, align 8, !dbg !2488, !tbaa !1279
  %27 = load i64, ptr %chunkname_len, align 8, !dbg !2488, !tbaa !1358
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %26, i64 %27, i1 false), !dbg !2488
  %28 = load i64, ptr %chunkname_len, align 8, !dbg !2488, !tbaa !1358
  %add.ptr = getelementptr inbounds i8, ptr %25, i64 %28, !dbg !2488
  store ptr %add.ptr, ptr %p, align 8, !dbg !2489, !tbaa !1279
  %29 = load ptr, ptr %p, align 8, !dbg !2490, !tbaa !1279
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %29, ptr align 1 @.str.7, i64 5, i1 false), !dbg !2490
  %add.ptr19 = getelementptr inbounds i8, ptr %29, i64 5, !dbg !2490
  store ptr %add.ptr19, ptr %p, align 8, !dbg !2491, !tbaa !1279
  %30 = load ptr, ptr %p, align 8, !dbg !2492, !tbaa !1279
  %31 = load ptr, ptr %value, align 8, !dbg !2493, !tbaa !1279
  %arrayidx20 = getelementptr inbounds %struct.ngx_str_t, ptr %31, i64 1, !dbg !2493
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx20, i32 0, i32 1, !dbg !2494
  %32 = load ptr, ptr %data, align 8, !dbg !2494, !tbaa !1602
  %33 = load ptr, ptr %value, align 8, !dbg !2495, !tbaa !1279
  %arrayidx21 = getelementptr inbounds %struct.ngx_str_t, ptr %33, i64 1, !dbg !2495
  %len22 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx21, i32 0, i32 0, !dbg !2496
  %34 = load i64, ptr %len22, align 8, !dbg !2496, !tbaa !1348
  %conv = trunc i64 %34 to i32, !dbg !2495
  %call23 = call ptr @ngx_stream_lua_digest_hex(ptr noundef %30, ptr noundef %32, i32 noundef %conv), !dbg !2497
  store ptr %call23, ptr %p, align 8, !dbg !2498, !tbaa !1279
  %35 = load ptr, ptr %p, align 8, !dbg !2499, !tbaa !1279
  store i8 0, ptr %35, align 1, !dbg !2500, !tbaa !1878
  br label %if.end52, !dbg !2501

if.else:                                          ; preds = %if.end5
  call void @llvm.memset.p0.i64(ptr align 8 %ccv, i8 0, i64 32, i1 false), !dbg !2502
  %36 = load ptr, ptr %cf.addr, align 8, !dbg !2504, !tbaa !1279
  %cf24 = getelementptr inbounds %struct.ngx_stream_compile_complex_value_t, ptr %ccv, i32 0, i32 0, !dbg !2505
  store ptr %36, ptr %cf24, align 8, !dbg !2506, !tbaa !1885
  %37 = load ptr, ptr %value, align 8, !dbg !2507, !tbaa !1279
  %arrayidx25 = getelementptr inbounds %struct.ngx_str_t, ptr %37, i64 1, !dbg !2507
  %value26 = getelementptr inbounds %struct.ngx_stream_compile_complex_value_t, ptr %ccv, i32 0, i32 1, !dbg !2508
  store ptr %arrayidx25, ptr %value26, align 8, !dbg !2509, !tbaa !1890
  %38 = load ptr, ptr %llcf, align 8, !dbg !2510, !tbaa !1279
  %content_src27 = getelementptr inbounds %struct.ngx_stream_lua_srv_conf_s, ptr %38, i32 0, i32 15, !dbg !2511
  %complex_value = getelementptr inbounds %struct.ngx_stream_compile_complex_value_t, ptr %ccv, i32 0, i32 2, !dbg !2512
  store ptr %content_src27, ptr %complex_value, align 8, !dbg !2513, !tbaa !1895
  %call28 = call i64 @ngx_stream_compile_complex_value(ptr noundef %ccv), !dbg !2514
  %cmp29 = icmp ne i64 %call28, 0, !dbg !2516
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !2517

if.then31:                                        ; preds = %if.else
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2518
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2518

if.end32:                                         ; preds = %if.else
  %39 = load ptr, ptr %llcf, align 8, !dbg !2520, !tbaa !1279
  %content_src33 = getelementptr inbounds %struct.ngx_stream_lua_srv_conf_s, ptr %39, i32 0, i32 15, !dbg !2522
  %lengths = getelementptr inbounds %struct.ngx_stream_complex_value_t, ptr %content_src33, i32 0, i32 2, !dbg !2523
  %40 = load ptr, ptr %lengths, align 8, !dbg !2523, !tbaa !2524
  %cmp34 = icmp eq ptr %40, null, !dbg !2525
  br i1 %cmp34, label %if.then36, label %if.end51, !dbg !2526

if.then36:                                        ; preds = %if.end32
  %41 = load ptr, ptr %cf.addr, align 8, !dbg !2527, !tbaa !1279
  %pool37 = getelementptr inbounds %struct.ngx_conf_s, ptr %41, i32 0, i32 3, !dbg !2529
  %42 = load ptr, ptr %pool37, align 8, !dbg !2529, !tbaa !1313
  %call38 = call ptr @ngx_palloc(ptr noundef %42, i64 noundef 38), !dbg !2530
  store ptr %call38, ptr %p, align 8, !dbg !2531, !tbaa !1279
  %43 = load ptr, ptr %p, align 8, !dbg !2532, !tbaa !1279
  %cmp39 = icmp eq ptr %43, null, !dbg !2534
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !2535

if.then41:                                        ; preds = %if.then36
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2536
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2536

if.end42:                                         ; preds = %if.then36
  %44 = load ptr, ptr %p, align 8, !dbg !2538, !tbaa !1279
  %45 = load ptr, ptr %llcf, align 8, !dbg !2539, !tbaa !1279
  %content_src_key43 = getelementptr inbounds %struct.ngx_stream_lua_srv_conf_s, ptr %45, i32 0, i32 16, !dbg !2540
  store ptr %44, ptr %content_src_key43, align 8, !dbg !2541, !tbaa !2487
  %46 = load ptr, ptr %p, align 8, !dbg !2542, !tbaa !1279
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %46, ptr align 1 @.str.8, i64 5, i1 false), !dbg !2542
  %add.ptr44 = getelementptr inbounds i8, ptr %46, i64 5, !dbg !2542
  store ptr %add.ptr44, ptr %p, align 8, !dbg !2543, !tbaa !1279
  %47 = load ptr, ptr %p, align 8, !dbg !2544, !tbaa !1279
  %48 = load ptr, ptr %value, align 8, !dbg !2545, !tbaa !1279
  %arrayidx45 = getelementptr inbounds %struct.ngx_str_t, ptr %48, i64 1, !dbg !2545
  %data46 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx45, i32 0, i32 1, !dbg !2546
  %49 = load ptr, ptr %data46, align 8, !dbg !2546, !tbaa !1602
  %50 = load ptr, ptr %value, align 8, !dbg !2547, !tbaa !1279
  %arrayidx47 = getelementptr inbounds %struct.ngx_str_t, ptr %50, i64 1, !dbg !2547
  %len48 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx47, i32 0, i32 0, !dbg !2548
  %51 = load i64, ptr %len48, align 8, !dbg !2548, !tbaa !1348
  %conv49 = trunc i64 %51 to i32, !dbg !2547
  %call50 = call ptr @ngx_stream_lua_digest_hex(ptr noundef %47, ptr noundef %49, i32 noundef %conv49), !dbg !2549
  store ptr %call50, ptr %p, align 8, !dbg !2550, !tbaa !1279
  %52 = load ptr, ptr %p, align 8, !dbg !2551, !tbaa !1279
  store i8 0, ptr %52, align 1, !dbg !2552, !tbaa !1878
  br label %if.end51, !dbg !2553

if.end51:                                         ; preds = %if.end42, %if.end32
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end18
  %53 = load ptr, ptr %cmd.addr, align 8, !dbg !2554, !tbaa !1279
  %post53 = getelementptr inbounds %struct.ngx_command_s, ptr %53, i32 0, i32 5, !dbg !2555
  %54 = load ptr, ptr %post53, align 8, !dbg !2555, !tbaa !1794
  %55 = load ptr, ptr %llcf, align 8, !dbg !2556, !tbaa !1279
  %content_handler54 = getelementptr inbounds %struct.ngx_stream_lua_srv_conf_s, ptr %55, i32 0, i32 9, !dbg !2557
  store ptr %54, ptr %content_handler54, align 8, !dbg !2558, !tbaa !2429
  %56 = load ptr, ptr %cf.addr, align 8, !dbg !2559, !tbaa !1279
  %ctx = getelementptr inbounds %struct.ngx_conf_s, ptr %56, i32 0, i32 7, !dbg !2559
  %57 = load ptr, ptr %ctx, align 8, !dbg !2559, !tbaa !1942
  %srv_conf = getelementptr inbounds %struct.ngx_stream_conf_ctx_t, ptr %57, i32 0, i32 1, !dbg !2559
  %58 = load ptr, ptr %srv_conf, align 8, !dbg !2559, !tbaa !2560
  %59 = load i64, ptr @ngx_stream_core_module, align 8, !dbg !2559, !tbaa !1945
  %arrayidx55 = getelementptr inbounds ptr, ptr %58, i64 %59, !dbg !2559
  %60 = load ptr, ptr %arrayidx55, align 8, !dbg !2559, !tbaa !1279
  store ptr %60, ptr %cxcf, align 8, !dbg !2561, !tbaa !1279
  %61 = load ptr, ptr %cxcf, align 8, !dbg !2562, !tbaa !1279
  %cmp56 = icmp eq ptr %61, null, !dbg !2564
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !2565

if.then58:                                        ; preds = %if.end52
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2566
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2566

if.end59:                                         ; preds = %if.end52
  %62 = load ptr, ptr %cxcf, align 8, !dbg !2568, !tbaa !1279
  %handler = getelementptr inbounds %struct.ngx_stream_core_srv_conf_t, ptr %62, i32 0, i32 0, !dbg !2569
  store ptr @ngx_stream_lua_content_handler, ptr %handler, align 8, !dbg !2570, !tbaa !2571
  store ptr null, ptr %retval, align 8, !dbg !2573
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2573

cleanup:                                          ; preds = %if.end59, %if.then58, %if.then41, %if.then31, %if.then17, %if.then10, %if.then4, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %llcf) #8, !dbg !2574
  call void @llvm.lifetime.end.p0(i64 32, ptr %ccv) #8, !dbg !2574
  call void @llvm.lifetime.end.p0(i64 8, ptr %cxcf) #8, !dbg !2574
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #8, !dbg !2574
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunkname) #8, !dbg !2574
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !2574
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunkname_len) #8, !dbg !2574
  %63 = load ptr, ptr %retval, align 8, !dbg !2574
  ret ptr %63, !dbg !2574
}

declare i64 @ngx_stream_lua_content_handler_inline(ptr noundef) #2

declare void @ngx_stream_lua_content_handler(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ngx_stream_lua_log_by_lua_block(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !2575 {
entry:
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %rv = alloca ptr, align 8
  %save = alloca %struct.ngx_conf_s, align 8
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2577, metadata !DIExpression()), !dbg !2582
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !2578, metadata !DIExpression()), !dbg !2583
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !2579, metadata !DIExpression()), !dbg !2584
  call void @llvm.lifetime.start.p0(i64 8, ptr %rv) #8, !dbg !2585
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !2580, metadata !DIExpression()), !dbg !2586
  call void @llvm.lifetime.start.p0(i64 96, ptr %save) #8, !dbg !2587
  tail call void @llvm.dbg.declare(metadata ptr %save, metadata !2581, metadata !DIExpression()), !dbg !2588
  %0 = load ptr, ptr %cf.addr, align 8, !dbg !2589, !tbaa !1279
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %save, ptr align 8 %0, i64 96, i1 false), !dbg !2590, !tbaa.struct !1669
  %1 = load ptr, ptr %cf.addr, align 8, !dbg !2591, !tbaa !1279
  %handler = getelementptr inbounds %struct.ngx_conf_s, ptr %1, i32 0, i32 10, !dbg !2592
  store ptr @ngx_stream_lua_log_by_lua, ptr %handler, align 8, !dbg !2593, !tbaa !1673
  %2 = load ptr, ptr %conf.addr, align 8, !dbg !2594, !tbaa !1279
  %3 = load ptr, ptr %cf.addr, align 8, !dbg !2595, !tbaa !1279
  %handler_conf = getelementptr inbounds %struct.ngx_conf_s, ptr %3, i32 0, i32 11, !dbg !2596
  store ptr %2, ptr %handler_conf, align 8, !dbg !2597, !tbaa !1678
  %4 = load ptr, ptr %cf.addr, align 8, !dbg !2598, !tbaa !1279
  %5 = load ptr, ptr %cmd.addr, align 8, !dbg !2599, !tbaa !1279
  %call = call ptr @ngx_stream_lua_conf_lua_block_parse(ptr noundef %4, ptr noundef %5), !dbg !2600
  store ptr %call, ptr %rv, align 8, !dbg !2601, !tbaa !1279
  %6 = load ptr, ptr %cf.addr, align 8, !dbg !2602, !tbaa !1279
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %save, i64 96, i1 false), !dbg !2603, !tbaa.struct !1669
  %7 = load ptr, ptr %rv, align 8, !dbg !2604, !tbaa !1279
  call void @llvm.lifetime.end.p0(i64 96, ptr %save) #8, !dbg !2605
  call void @llvm.lifetime.end.p0(i64 8, ptr %rv) #8, !dbg !2605
  ret ptr %7, !dbg !2606
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ngx_stream_lua_log_by_lua(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !2607 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %chunkname_len = alloca i64, align 8
  %p = alloca ptr, align 8
  %chunkname = alloca ptr, align 8
  %value = alloca ptr, align 8
  %lmcf = alloca ptr, align 8
  %llcf = alloca ptr, align 8
  %ccv = alloca %struct.ngx_stream_compile_complex_value_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2609, metadata !DIExpression()), !dbg !2619
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !2610, metadata !DIExpression()), !dbg !2620
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !2611, metadata !DIExpression()), !dbg !2621
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunkname_len) #8, !dbg !2622
  tail call void @llvm.dbg.declare(metadata ptr %chunkname_len, metadata !2612, metadata !DIExpression()), !dbg !2623
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !2624
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !2613, metadata !DIExpression()), !dbg !2625
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunkname) #8, !dbg !2624
  tail call void @llvm.dbg.declare(metadata ptr %chunkname, metadata !2614, metadata !DIExpression()), !dbg !2626
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #8, !dbg !2627
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !2615, metadata !DIExpression()), !dbg !2628
  call void @llvm.lifetime.start.p0(i64 8, ptr %lmcf) #8, !dbg !2629
  tail call void @llvm.dbg.declare(metadata ptr %lmcf, metadata !2616, metadata !DIExpression()), !dbg !2630
  call void @llvm.lifetime.start.p0(i64 8, ptr %llcf) #8, !dbg !2631
  tail call void @llvm.dbg.declare(metadata ptr %llcf, metadata !2617, metadata !DIExpression()), !dbg !2632
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !2633, !tbaa !1279
  store ptr %0, ptr %llcf, align 8, !dbg !2632, !tbaa !1279
  call void @llvm.lifetime.start.p0(i64 32, ptr %ccv) #8, !dbg !2634
  tail call void @llvm.dbg.declare(metadata ptr %ccv, metadata !2618, metadata !DIExpression()), !dbg !2635
  %1 = load ptr, ptr %cmd.addr, align 8, !dbg !2636, !tbaa !1279
  %post = getelementptr inbounds %struct.ngx_command_s, ptr %1, i32 0, i32 5, !dbg !2638
  %2 = load ptr, ptr %post, align 8, !dbg !2638, !tbaa !1794
  %cmp = icmp eq ptr %2, null, !dbg !2639
  br i1 %cmp, label %if.then, label %if.end, !dbg !2640

if.then:                                          ; preds = %entry
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2641
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2641

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %llcf, align 8, !dbg !2643, !tbaa !1279
  %log_handler = getelementptr inbounds %struct.ngx_stream_lua_srv_conf_s, ptr %3, i32 0, i32 10, !dbg !2645
  %4 = load ptr, ptr %log_handler, align 8, !dbg !2645, !tbaa !2646
  %tobool = icmp ne ptr %4, null, !dbg !2643
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !2647

if.then1:                                         ; preds = %if.end
  store ptr @.str.4, ptr %retval, align 8, !dbg !2648
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2648

if.end2:                                          ; preds = %if.end
  %5 = load ptr, ptr %cf.addr, align 8, !dbg !2650, !tbaa !1279
  %args = getelementptr inbounds %struct.ngx_conf_s, ptr %5, i32 0, i32 1, !dbg !2651
  %6 = load ptr, ptr %args, align 8, !dbg !2651, !tbaa !1339
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %6, i32 0, i32 0, !dbg !2652
  %7 = load ptr, ptr %elts, align 8, !dbg !2652, !tbaa !1341
  store ptr %7, ptr %value, align 8, !dbg !2653, !tbaa !1279
  %8 = load ptr, ptr %value, align 8, !dbg !2654, !tbaa !1279
  %arrayidx = getelementptr inbounds %struct.ngx_str_t, ptr %8, i64 1, !dbg !2654
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx, i32 0, i32 0, !dbg !2656
  %9 = load i64, ptr %len, align 8, !dbg !2656, !tbaa !1348
  %cmp3 = icmp eq i64 %9, 0, !dbg !2657
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2658

if.then4:                                         ; preds = %if.end2
  %10 = load ptr, ptr %cf.addr, align 8, !dbg !2659, !tbaa !1279
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 4, ptr noundef %10, i32 noundef 0, ptr noundef @.str.9), !dbg !2661
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2662
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2662

if.end5:                                          ; preds = %if.end2
  %11 = load ptr, ptr %cmd.addr, align 8, !dbg !2663, !tbaa !1279
  %post6 = getelementptr inbounds %struct.ngx_command_s, ptr %11, i32 0, i32 5, !dbg !2665
  %12 = load ptr, ptr %post6, align 8, !dbg !2665, !tbaa !1794
  %cmp7 = icmp eq ptr %12, @ngx_stream_lua_log_handler_inline, !dbg !2666
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !2667

if.then8:                                         ; preds = %if.end5
  %13 = load ptr, ptr %cf.addr, align 8, !dbg !2668, !tbaa !1279
  %call = call ptr @ngx_stream_lua_gen_chunk_name(ptr noundef %13, ptr noundef @.str.11, i64 noundef 10, ptr noundef %chunkname_len), !dbg !2670
  store ptr %call, ptr %chunkname, align 8, !dbg !2671, !tbaa !1279
  %14 = load ptr, ptr %chunkname, align 8, !dbg !2672, !tbaa !1279
  %cmp9 = icmp eq ptr %14, null, !dbg !2674
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2675

if.then10:                                        ; preds = %if.then8
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2676
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2676

if.end11:                                         ; preds = %if.then8
  %15 = load ptr, ptr %chunkname, align 8, !dbg !2678, !tbaa !1279
  %16 = load ptr, ptr %llcf, align 8, !dbg !2679, !tbaa !1279
  %log_chunkname = getelementptr inbounds %struct.ngx_stream_lua_srv_conf_s, ptr %16, i32 0, i32 17, !dbg !2680
  store ptr %15, ptr %log_chunkname, align 8, !dbg !2681, !tbaa !2682
  %17 = load ptr, ptr %llcf, align 8, !dbg !2683, !tbaa !1279
  %log_src = getelementptr inbounds %struct.ngx_stream_lua_srv_conf_s, ptr %17, i32 0, i32 18, !dbg !2684
  %value12 = getelementptr inbounds %struct.ngx_stream_complex_value_t, ptr %log_src, i32 0, i32 0, !dbg !2685
  %18 = load ptr, ptr %value, align 8, !dbg !2686, !tbaa !1279
  %arrayidx13 = getelementptr inbounds %struct.ngx_str_t, ptr %18, i64 1, !dbg !2686
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %value12, ptr align 8 %arrayidx13, i64 16, i1 false), !dbg !2686, !tbaa.struct !1357
  %19 = load ptr, ptr %cf.addr, align 8, !dbg !2687, !tbaa !1279
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %19, i32 0, i32 3, !dbg !2688
  %20 = load ptr, ptr %pool, align 8, !dbg !2688, !tbaa !1313
  %21 = load i64, ptr %chunkname_len, align 8, !dbg !2689, !tbaa !1358
  %add = add i64 %21, 37, !dbg !2690
  %add14 = add i64 %add, 1, !dbg !2691
  %call15 = call ptr @ngx_palloc(ptr noundef %20, i64 noundef %add14), !dbg !2692
  store ptr %call15, ptr %p, align 8, !dbg !2693, !tbaa !1279
  %22 = load ptr, ptr %p, align 8, !dbg !2694, !tbaa !1279
  %cmp16 = icmp eq ptr %22, null, !dbg !2696
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !2697

if.then17:                                        ; preds = %if.end11
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2698
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2698

if.end18:                                         ; preds = %if.end11
  %23 = load ptr, ptr %p, align 8, !dbg !2700, !tbaa !1279
  %24 = load ptr, ptr %llcf, align 8, !dbg !2701, !tbaa !1279
  %log_src_key = getelementptr inbounds %struct.ngx_stream_lua_srv_conf_s, ptr %24, i32 0, i32 19, !dbg !2702
  store ptr %23, ptr %log_src_key, align 8, !dbg !2703, !tbaa !2704
  %25 = load ptr, ptr %p, align 8, !dbg !2705, !tbaa !1279
  %26 = load ptr, ptr %chunkname, align 8, !dbg !2705, !tbaa !1279
  %27 = load i64, ptr %chunkname_len, align 8, !dbg !2705, !tbaa !1358
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %26, i64 %27, i1 false), !dbg !2705
  %28 = load i64, ptr %chunkname_len, align 8, !dbg !2705, !tbaa !1358
  %add.ptr = getelementptr inbounds i8, ptr %25, i64 %28, !dbg !2705
  store ptr %add.ptr, ptr %p, align 8, !dbg !2706, !tbaa !1279
  %29 = load ptr, ptr %p, align 8, !dbg !2707, !tbaa !1279
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %29, ptr align 1 @.str.7, i64 5, i1 false), !dbg !2707
  %add.ptr19 = getelementptr inbounds i8, ptr %29, i64 5, !dbg !2707
  store ptr %add.ptr19, ptr %p, align 8, !dbg !2708, !tbaa !1279
  %30 = load ptr, ptr %p, align 8, !dbg !2709, !tbaa !1279
  %31 = load ptr, ptr %value, align 8, !dbg !2710, !tbaa !1279
  %arrayidx20 = getelementptr inbounds %struct.ngx_str_t, ptr %31, i64 1, !dbg !2710
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx20, i32 0, i32 1, !dbg !2711
  %32 = load ptr, ptr %data, align 8, !dbg !2711, !tbaa !1602
  %33 = load ptr, ptr %value, align 8, !dbg !2712, !tbaa !1279
  %arrayidx21 = getelementptr inbounds %struct.ngx_str_t, ptr %33, i64 1, !dbg !2712
  %len22 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx21, i32 0, i32 0, !dbg !2713
  %34 = load i64, ptr %len22, align 8, !dbg !2713, !tbaa !1348
  %conv = trunc i64 %34 to i32, !dbg !2712
  %call23 = call ptr @ngx_stream_lua_digest_hex(ptr noundef %30, ptr noundef %32, i32 noundef %conv), !dbg !2714
  store ptr %call23, ptr %p, align 8, !dbg !2715, !tbaa !1279
  %35 = load ptr, ptr %p, align 8, !dbg !2716, !tbaa !1279
  store i8 0, ptr %35, align 1, !dbg !2717, !tbaa !1878
  br label %if.end52, !dbg !2718

if.else:                                          ; preds = %if.end5
  call void @llvm.memset.p0.i64(ptr align 8 %ccv, i8 0, i64 32, i1 false), !dbg !2719
  %36 = load ptr, ptr %cf.addr, align 8, !dbg !2721, !tbaa !1279
  %cf24 = getelementptr inbounds %struct.ngx_stream_compile_complex_value_t, ptr %ccv, i32 0, i32 0, !dbg !2722
  store ptr %36, ptr %cf24, align 8, !dbg !2723, !tbaa !1885
  %37 = load ptr, ptr %value, align 8, !dbg !2724, !tbaa !1279
  %arrayidx25 = getelementptr inbounds %struct.ngx_str_t, ptr %37, i64 1, !dbg !2724
  %value26 = getelementptr inbounds %struct.ngx_stream_compile_complex_value_t, ptr %ccv, i32 0, i32 1, !dbg !2725
  store ptr %arrayidx25, ptr %value26, align 8, !dbg !2726, !tbaa !1890
  %38 = load ptr, ptr %llcf, align 8, !dbg !2727, !tbaa !1279
  %log_src27 = getelementptr inbounds %struct.ngx_stream_lua_srv_conf_s, ptr %38, i32 0, i32 18, !dbg !2728
  %complex_value = getelementptr inbounds %struct.ngx_stream_compile_complex_value_t, ptr %ccv, i32 0, i32 2, !dbg !2729
  store ptr %log_src27, ptr %complex_value, align 8, !dbg !2730, !tbaa !1895
  %call28 = call i64 @ngx_stream_compile_complex_value(ptr noundef %ccv), !dbg !2731
  %cmp29 = icmp ne i64 %call28, 0, !dbg !2733
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !2734

if.then31:                                        ; preds = %if.else
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2735
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2735

if.end32:                                         ; preds = %if.else
  %39 = load ptr, ptr %llcf, align 8, !dbg !2737, !tbaa !1279
  %log_src33 = getelementptr inbounds %struct.ngx_stream_lua_srv_conf_s, ptr %39, i32 0, i32 18, !dbg !2739
  %lengths = getelementptr inbounds %struct.ngx_stream_complex_value_t, ptr %log_src33, i32 0, i32 2, !dbg !2740
  %40 = load ptr, ptr %lengths, align 8, !dbg !2740, !tbaa !2741
  %cmp34 = icmp eq ptr %40, null, !dbg !2742
  br i1 %cmp34, label %if.then36, label %if.end51, !dbg !2743

if.then36:                                        ; preds = %if.end32
  %41 = load ptr, ptr %cf.addr, align 8, !dbg !2744, !tbaa !1279
  %pool37 = getelementptr inbounds %struct.ngx_conf_s, ptr %41, i32 0, i32 3, !dbg !2746
  %42 = load ptr, ptr %pool37, align 8, !dbg !2746, !tbaa !1313
  %call38 = call ptr @ngx_palloc(ptr noundef %42, i64 noundef 38), !dbg !2747
  store ptr %call38, ptr %p, align 8, !dbg !2748, !tbaa !1279
  %43 = load ptr, ptr %p, align 8, !dbg !2749, !tbaa !1279
  %cmp39 = icmp eq ptr %43, null, !dbg !2751
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !2752

if.then41:                                        ; preds = %if.then36
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2753
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2753

if.end42:                                         ; preds = %if.then36
  %44 = load ptr, ptr %p, align 8, !dbg !2755, !tbaa !1279
  %45 = load ptr, ptr %llcf, align 8, !dbg !2756, !tbaa !1279
  %log_src_key43 = getelementptr inbounds %struct.ngx_stream_lua_srv_conf_s, ptr %45, i32 0, i32 19, !dbg !2757
  store ptr %44, ptr %log_src_key43, align 8, !dbg !2758, !tbaa !2704
  %46 = load ptr, ptr %p, align 8, !dbg !2759, !tbaa !1279
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %46, ptr align 1 @.str.8, i64 5, i1 false), !dbg !2759
  %add.ptr44 = getelementptr inbounds i8, ptr %46, i64 5, !dbg !2759
  store ptr %add.ptr44, ptr %p, align 8, !dbg !2760, !tbaa !1279
  %47 = load ptr, ptr %p, align 8, !dbg !2761, !tbaa !1279
  %48 = load ptr, ptr %value, align 8, !dbg !2762, !tbaa !1279
  %arrayidx45 = getelementptr inbounds %struct.ngx_str_t, ptr %48, i64 1, !dbg !2762
  %data46 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx45, i32 0, i32 1, !dbg !2763
  %49 = load ptr, ptr %data46, align 8, !dbg !2763, !tbaa !1602
  %50 = load ptr, ptr %value, align 8, !dbg !2764, !tbaa !1279
  %arrayidx47 = getelementptr inbounds %struct.ngx_str_t, ptr %50, i64 1, !dbg !2764
  %len48 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx47, i32 0, i32 0, !dbg !2765
  %51 = load i64, ptr %len48, align 8, !dbg !2765, !tbaa !1348
  %conv49 = trunc i64 %51 to i32, !dbg !2764
  %call50 = call ptr @ngx_stream_lua_digest_hex(ptr noundef %47, ptr noundef %49, i32 noundef %conv49), !dbg !2766
  store ptr %call50, ptr %p, align 8, !dbg !2767, !tbaa !1279
  %52 = load ptr, ptr %p, align 8, !dbg !2768, !tbaa !1279
  store i8 0, ptr %52, align 1, !dbg !2769, !tbaa !1878
  br label %if.end51, !dbg !2770

if.end51:                                         ; preds = %if.end42, %if.end32
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end18
  %53 = load ptr, ptr %cmd.addr, align 8, !dbg !2771, !tbaa !1279
  %post53 = getelementptr inbounds %struct.ngx_command_s, ptr %53, i32 0, i32 5, !dbg !2772
  %54 = load ptr, ptr %post53, align 8, !dbg !2772, !tbaa !1794
  %55 = load ptr, ptr %llcf, align 8, !dbg !2773, !tbaa !1279
  %log_handler54 = getelementptr inbounds %struct.ngx_stream_lua_srv_conf_s, ptr %55, i32 0, i32 10, !dbg !2774
  store ptr %54, ptr %log_handler54, align 8, !dbg !2775, !tbaa !2646
  %56 = load ptr, ptr %cf.addr, align 8, !dbg !2776, !tbaa !1279
  %ctx = getelementptr inbounds %struct.ngx_conf_s, ptr %56, i32 0, i32 7, !dbg !2776
  %57 = load ptr, ptr %ctx, align 8, !dbg !2776, !tbaa !1942
  %main_conf = getelementptr inbounds %struct.ngx_stream_conf_ctx_t, ptr %57, i32 0, i32 0, !dbg !2776
  %58 = load ptr, ptr %main_conf, align 8, !dbg !2776, !tbaa !1943
  %59 = load i64, ptr @ngx_stream_lua_module, align 8, !dbg !2776, !tbaa !1945
  %arrayidx55 = getelementptr inbounds ptr, ptr %58, i64 %59, !dbg !2776
  %60 = load ptr, ptr %arrayidx55, align 8, !dbg !2776, !tbaa !1279
  store ptr %60, ptr %lmcf, align 8, !dbg !2777, !tbaa !1279
  %61 = load ptr, ptr %lmcf, align 8, !dbg !2778, !tbaa !1279
  %requires_log = getelementptr inbounds %struct.ngx_stream_lua_main_conf_s, ptr %61, i32 0, i32 26, !dbg !2779
  %bf.load = load i8, ptr %requires_log, align 8, !dbg !2780
  %bf.clear = and i8 %bf.load, -3, !dbg !2780
  %bf.set = or i8 %bf.clear, 2, !dbg !2780
  store i8 %bf.set, ptr %requires_log, align 8, !dbg !2780
  store ptr null, ptr %retval, align 8, !dbg !2781
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2781

cleanup:                                          ; preds = %if.end52, %if.then41, %if.then31, %if.then17, %if.then10, %if.then4, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %ccv) #8, !dbg !2782
  call void @llvm.lifetime.end.p0(i64 8, ptr %llcf) #8, !dbg !2782
  call void @llvm.lifetime.end.p0(i64 8, ptr %lmcf) #8, !dbg !2782
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #8, !dbg !2782
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunkname) #8, !dbg !2782
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !2782
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunkname_len) #8, !dbg !2782
  %62 = load ptr, ptr %retval, align 8, !dbg !2782
  ret ptr %62, !dbg !2782
}

declare i64 @ngx_stream_lua_log_handler_inline(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ngx_stream_lua_init_by_lua_block(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !2783 {
entry:
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %rv = alloca ptr, align 8
  %save = alloca %struct.ngx_conf_s, align 8
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2785, metadata !DIExpression()), !dbg !2790
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !2786, metadata !DIExpression()), !dbg !2791
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !2787, metadata !DIExpression()), !dbg !2792
  call void @llvm.lifetime.start.p0(i64 8, ptr %rv) #8, !dbg !2793
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !2788, metadata !DIExpression()), !dbg !2794
  call void @llvm.lifetime.start.p0(i64 96, ptr %save) #8, !dbg !2795
  tail call void @llvm.dbg.declare(metadata ptr %save, metadata !2789, metadata !DIExpression()), !dbg !2796
  %0 = load ptr, ptr %cf.addr, align 8, !dbg !2797, !tbaa !1279
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %save, ptr align 8 %0, i64 96, i1 false), !dbg !2798, !tbaa.struct !1669
  %1 = load ptr, ptr %cf.addr, align 8, !dbg !2799, !tbaa !1279
  %handler = getelementptr inbounds %struct.ngx_conf_s, ptr %1, i32 0, i32 10, !dbg !2800
  store ptr @ngx_stream_lua_init_by_lua, ptr %handler, align 8, !dbg !2801, !tbaa !1673
  %2 = load ptr, ptr %conf.addr, align 8, !dbg !2802, !tbaa !1279
  %3 = load ptr, ptr %cf.addr, align 8, !dbg !2803, !tbaa !1279
  %handler_conf = getelementptr inbounds %struct.ngx_conf_s, ptr %3, i32 0, i32 11, !dbg !2804
  store ptr %2, ptr %handler_conf, align 8, !dbg !2805, !tbaa !1678
  %4 = load ptr, ptr %cf.addr, align 8, !dbg !2806, !tbaa !1279
  %5 = load ptr, ptr %cmd.addr, align 8, !dbg !2807, !tbaa !1279
  %call = call ptr @ngx_stream_lua_conf_lua_block_parse(ptr noundef %4, ptr noundef %5), !dbg !2808
  store ptr %call, ptr %rv, align 8, !dbg !2809, !tbaa !1279
  %6 = load ptr, ptr %cf.addr, align 8, !dbg !2810, !tbaa !1279
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %save, i64 96, i1 false), !dbg !2811, !tbaa.struct !1669
  %7 = load ptr, ptr %rv, align 8, !dbg !2812, !tbaa !1279
  call void @llvm.lifetime.end.p0(i64 96, ptr %save) #8, !dbg !2813
  call void @llvm.lifetime.end.p0(i64 8, ptr %rv) #8, !dbg !2813
  ret ptr %7, !dbg !2814
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ngx_stream_lua_init_by_lua(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !2815 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %name = alloca ptr, align 8
  %value = alloca ptr, align 8
  %lmcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2817, metadata !DIExpression()), !dbg !2823
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !2818, metadata !DIExpression()), !dbg !2824
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !2819, metadata !DIExpression()), !dbg !2825
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #8, !dbg !2826
  tail call void @llvm.dbg.declare(metadata ptr %name, metadata !2820, metadata !DIExpression()), !dbg !2827
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #8, !dbg !2828
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !2821, metadata !DIExpression()), !dbg !2829
  call void @llvm.lifetime.start.p0(i64 8, ptr %lmcf) #8, !dbg !2830
  tail call void @llvm.dbg.declare(metadata ptr %lmcf, metadata !2822, metadata !DIExpression()), !dbg !2831
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !2832, !tbaa !1279
  store ptr %0, ptr %lmcf, align 8, !dbg !2831, !tbaa !1279
  %1 = load ptr, ptr %cmd.addr, align 8, !dbg !2833, !tbaa !1279
  %post = getelementptr inbounds %struct.ngx_command_s, ptr %1, i32 0, i32 5, !dbg !2835
  %2 = load ptr, ptr %post, align 8, !dbg !2835, !tbaa !1794
  %cmp = icmp eq ptr %2, null, !dbg !2836
  br i1 %cmp, label %if.then, label %if.end, !dbg !2837

if.then:                                          ; preds = %entry
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2838
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2838

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %lmcf, align 8, !dbg !2840, !tbaa !1279
  %init_handler = getelementptr inbounds %struct.ngx_stream_lua_main_conf_s, ptr %3, i32 0, i32 16, !dbg !2842
  %4 = load ptr, ptr %init_handler, align 8, !dbg !2842, !tbaa !2843
  %tobool = icmp ne ptr %4, null, !dbg !2840
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !2844

if.then1:                                         ; preds = %if.end
  store ptr @.str.4, ptr %retval, align 8, !dbg !2845
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2845

if.end2:                                          ; preds = %if.end
  %5 = load ptr, ptr %cf.addr, align 8, !dbg !2847, !tbaa !1279
  %args = getelementptr inbounds %struct.ngx_conf_s, ptr %5, i32 0, i32 1, !dbg !2848
  %6 = load ptr, ptr %args, align 8, !dbg !2848, !tbaa !1339
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %6, i32 0, i32 0, !dbg !2849
  %7 = load ptr, ptr %elts, align 8, !dbg !2849, !tbaa !1341
  store ptr %7, ptr %value, align 8, !dbg !2850, !tbaa !1279
  %8 = load ptr, ptr %value, align 8, !dbg !2851, !tbaa !1279
  %arrayidx = getelementptr inbounds %struct.ngx_str_t, ptr %8, i64 1, !dbg !2851
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx, i32 0, i32 0, !dbg !2853
  %9 = load i64, ptr %len, align 8, !dbg !2853, !tbaa !1348
  %cmp3 = icmp eq i64 %9, 0, !dbg !2854
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2855

if.then4:                                         ; preds = %if.end2
  %10 = load ptr, ptr %cf.addr, align 8, !dbg !2856, !tbaa !1279
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 4, ptr noundef %10, i32 noundef 0, ptr noundef @.str.9), !dbg !2858
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2859
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2859

if.end5:                                          ; preds = %if.end2
  %11 = load ptr, ptr %cmd.addr, align 8, !dbg !2860, !tbaa !1279
  %post6 = getelementptr inbounds %struct.ngx_command_s, ptr %11, i32 0, i32 5, !dbg !2861
  %12 = load ptr, ptr %post6, align 8, !dbg !2861, !tbaa !1794
  %13 = load ptr, ptr %lmcf, align 8, !dbg !2862, !tbaa !1279
  %init_handler7 = getelementptr inbounds %struct.ngx_stream_lua_main_conf_s, ptr %13, i32 0, i32 16, !dbg !2863
  store ptr %12, ptr %init_handler7, align 8, !dbg !2864, !tbaa !2843
  %14 = load ptr, ptr %cmd.addr, align 8, !dbg !2865, !tbaa !1279
  %post8 = getelementptr inbounds %struct.ngx_command_s, ptr %14, i32 0, i32 5, !dbg !2867
  %15 = load ptr, ptr %post8, align 8, !dbg !2867, !tbaa !1794
  %cmp9 = icmp eq ptr %15, @ngx_stream_lua_init_by_file, !dbg !2868
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !2869

if.then10:                                        ; preds = %if.end5
  %16 = load ptr, ptr %cf.addr, align 8, !dbg !2870, !tbaa !1279
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %16, i32 0, i32 3, !dbg !2872
  %17 = load ptr, ptr %pool, align 8, !dbg !2872, !tbaa !1313
  %18 = load ptr, ptr %value, align 8, !dbg !2873, !tbaa !1279
  %arrayidx11 = getelementptr inbounds %struct.ngx_str_t, ptr %18, i64 1, !dbg !2873
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx11, i32 0, i32 1, !dbg !2874
  %19 = load ptr, ptr %data, align 8, !dbg !2874, !tbaa !1602
  %20 = load ptr, ptr %value, align 8, !dbg !2875, !tbaa !1279
  %arrayidx12 = getelementptr inbounds %struct.ngx_str_t, ptr %20, i64 1, !dbg !2875
  %len13 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx12, i32 0, i32 0, !dbg !2876
  %21 = load i64, ptr %len13, align 8, !dbg !2876, !tbaa !1348
  %call = call ptr @ngx_stream_lua_rebase_path(ptr noundef %17, ptr noundef %19, i64 noundef %21), !dbg !2877
  store ptr %call, ptr %name, align 8, !dbg !2878, !tbaa !1279
  %22 = load ptr, ptr %name, align 8, !dbg !2879, !tbaa !1279
  %cmp14 = icmp eq ptr %22, null, !dbg !2881
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !2882

if.then15:                                        ; preds = %if.then10
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2883
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2883

if.end16:                                         ; preds = %if.then10
  %23 = load ptr, ptr %name, align 8, !dbg !2885, !tbaa !1279
  %24 = load ptr, ptr %lmcf, align 8, !dbg !2886, !tbaa !1279
  %init_src = getelementptr inbounds %struct.ngx_stream_lua_main_conf_s, ptr %24, i32 0, i32 17, !dbg !2887
  %data17 = getelementptr inbounds %struct.ngx_str_t, ptr %init_src, i32 0, i32 1, !dbg !2888
  store ptr %23, ptr %data17, align 8, !dbg !2889, !tbaa !2890
  %25 = load ptr, ptr %name, align 8, !dbg !2891, !tbaa !1279
  %call18 = call i64 @strlen(ptr noundef %25) #9, !dbg !2891
  %26 = load ptr, ptr %lmcf, align 8, !dbg !2892, !tbaa !1279
  %init_src19 = getelementptr inbounds %struct.ngx_stream_lua_main_conf_s, ptr %26, i32 0, i32 17, !dbg !2893
  %len20 = getelementptr inbounds %struct.ngx_str_t, ptr %init_src19, i32 0, i32 0, !dbg !2894
  store i64 %call18, ptr %len20, align 8, !dbg !2895, !tbaa !2896
  br label %if.end23, !dbg !2897

if.else:                                          ; preds = %if.end5
  %27 = load ptr, ptr %lmcf, align 8, !dbg !2898, !tbaa !1279
  %init_src21 = getelementptr inbounds %struct.ngx_stream_lua_main_conf_s, ptr %27, i32 0, i32 17, !dbg !2900
  %28 = load ptr, ptr %value, align 8, !dbg !2901, !tbaa !1279
  %arrayidx22 = getelementptr inbounds %struct.ngx_str_t, ptr %28, i64 1, !dbg !2901
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %init_src21, ptr align 8 %arrayidx22, i64 16, i1 false), !dbg !2901, !tbaa.struct !1357
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.end16
  store ptr null, ptr %retval, align 8, !dbg !2902
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2902

cleanup:                                          ; preds = %if.end23, %if.then15, %if.then4, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %lmcf) #8, !dbg !2903
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #8, !dbg !2903
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #8, !dbg !2903
  %29 = load ptr, ptr %retval, align 8, !dbg !2903
  ret ptr %29, !dbg !2903
}

declare i64 @ngx_stream_lua_init_by_file(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !2904 ptr @ngx_stream_lua_rebase_path(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2907 i64 @strlen(ptr noundef) #6

; Function Attrs: nounwind uwtable
define dso_local ptr @ngx_stream_lua_init_worker_by_lua_block(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !2911 {
entry:
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %rv = alloca ptr, align 8
  %save = alloca %struct.ngx_conf_s, align 8
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2913, metadata !DIExpression()), !dbg !2918
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !2914, metadata !DIExpression()), !dbg !2919
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !2915, metadata !DIExpression()), !dbg !2920
  call void @llvm.lifetime.start.p0(i64 8, ptr %rv) #8, !dbg !2921
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !2916, metadata !DIExpression()), !dbg !2922
  call void @llvm.lifetime.start.p0(i64 96, ptr %save) #8, !dbg !2923
  tail call void @llvm.dbg.declare(metadata ptr %save, metadata !2917, metadata !DIExpression()), !dbg !2924
  %0 = load ptr, ptr %cf.addr, align 8, !dbg !2925, !tbaa !1279
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %save, ptr align 8 %0, i64 96, i1 false), !dbg !2926, !tbaa.struct !1669
  %1 = load ptr, ptr %cf.addr, align 8, !dbg !2927, !tbaa !1279
  %handler = getelementptr inbounds %struct.ngx_conf_s, ptr %1, i32 0, i32 10, !dbg !2928
  store ptr @ngx_stream_lua_init_worker_by_lua, ptr %handler, align 8, !dbg !2929, !tbaa !1673
  %2 = load ptr, ptr %conf.addr, align 8, !dbg !2930, !tbaa !1279
  %3 = load ptr, ptr %cf.addr, align 8, !dbg !2931, !tbaa !1279
  %handler_conf = getelementptr inbounds %struct.ngx_conf_s, ptr %3, i32 0, i32 11, !dbg !2932
  store ptr %2, ptr %handler_conf, align 8, !dbg !2933, !tbaa !1678
  %4 = load ptr, ptr %cf.addr, align 8, !dbg !2934, !tbaa !1279
  %5 = load ptr, ptr %cmd.addr, align 8, !dbg !2935, !tbaa !1279
  %call = call ptr @ngx_stream_lua_conf_lua_block_parse(ptr noundef %4, ptr noundef %5), !dbg !2936
  store ptr %call, ptr %rv, align 8, !dbg !2937, !tbaa !1279
  %6 = load ptr, ptr %cf.addr, align 8, !dbg !2938, !tbaa !1279
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %save, i64 96, i1 false), !dbg !2939, !tbaa.struct !1669
  %7 = load ptr, ptr %rv, align 8, !dbg !2940, !tbaa !1279
  call void @llvm.lifetime.end.p0(i64 96, ptr %save) #8, !dbg !2941
  call void @llvm.lifetime.end.p0(i64 8, ptr %rv) #8, !dbg !2941
  ret ptr %7, !dbg !2942
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ngx_stream_lua_init_worker_by_lua(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !2943 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %name = alloca ptr, align 8
  %value = alloca ptr, align 8
  %lmcf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !2945, metadata !DIExpression()), !dbg !2951
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !2946, metadata !DIExpression()), !dbg !2952
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !2947, metadata !DIExpression()), !dbg !2953
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #8, !dbg !2954
  tail call void @llvm.dbg.declare(metadata ptr %name, metadata !2948, metadata !DIExpression()), !dbg !2955
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #8, !dbg !2956
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !2949, metadata !DIExpression()), !dbg !2957
  call void @llvm.lifetime.start.p0(i64 8, ptr %lmcf) #8, !dbg !2958
  tail call void @llvm.dbg.declare(metadata ptr %lmcf, metadata !2950, metadata !DIExpression()), !dbg !2959
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !2960, !tbaa !1279
  store ptr %0, ptr %lmcf, align 8, !dbg !2959, !tbaa !1279
  %1 = load ptr, ptr %cmd.addr, align 8, !dbg !2961, !tbaa !1279
  %post = getelementptr inbounds %struct.ngx_command_s, ptr %1, i32 0, i32 5, !dbg !2963
  %2 = load ptr, ptr %post, align 8, !dbg !2963, !tbaa !1794
  %cmp = icmp eq ptr %2, null, !dbg !2964
  br i1 %cmp, label %if.then, label %if.end, !dbg !2965

if.then:                                          ; preds = %entry
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !2966
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2966

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %lmcf, align 8, !dbg !2968, !tbaa !1279
  %init_worker_handler = getelementptr inbounds %struct.ngx_stream_lua_main_conf_s, ptr %3, i32 0, i32 18, !dbg !2970
  %4 = load ptr, ptr %init_worker_handler, align 8, !dbg !2970, !tbaa !2971
  %tobool = icmp ne ptr %4, null, !dbg !2968
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !2972

if.then1:                                         ; preds = %if.end
  store ptr @.str.4, ptr %retval, align 8, !dbg !2973
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2973

if.end2:                                          ; preds = %if.end
  %5 = load ptr, ptr %cf.addr, align 8, !dbg !2975, !tbaa !1279
  %args = getelementptr inbounds %struct.ngx_conf_s, ptr %5, i32 0, i32 1, !dbg !2976
  %6 = load ptr, ptr %args, align 8, !dbg !2976, !tbaa !1339
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %6, i32 0, i32 0, !dbg !2977
  %7 = load ptr, ptr %elts, align 8, !dbg !2977, !tbaa !1341
  store ptr %7, ptr %value, align 8, !dbg !2978, !tbaa !1279
  %8 = load ptr, ptr %cmd.addr, align 8, !dbg !2979, !tbaa !1279
  %post3 = getelementptr inbounds %struct.ngx_command_s, ptr %8, i32 0, i32 5, !dbg !2980
  %9 = load ptr, ptr %post3, align 8, !dbg !2980, !tbaa !1794
  %10 = load ptr, ptr %lmcf, align 8, !dbg !2981, !tbaa !1279
  %init_worker_handler4 = getelementptr inbounds %struct.ngx_stream_lua_main_conf_s, ptr %10, i32 0, i32 18, !dbg !2982
  store ptr %9, ptr %init_worker_handler4, align 8, !dbg !2983, !tbaa !2971
  %11 = load ptr, ptr %cmd.addr, align 8, !dbg !2984, !tbaa !1279
  %post5 = getelementptr inbounds %struct.ngx_command_s, ptr %11, i32 0, i32 5, !dbg !2986
  %12 = load ptr, ptr %post5, align 8, !dbg !2986, !tbaa !1794
  %cmp6 = icmp eq ptr %12, @ngx_stream_lua_init_worker_by_file, !dbg !2987
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !2988

if.then7:                                         ; preds = %if.end2
  %13 = load ptr, ptr %cf.addr, align 8, !dbg !2989, !tbaa !1279
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %13, i32 0, i32 3, !dbg !2991
  %14 = load ptr, ptr %pool, align 8, !dbg !2991, !tbaa !1313
  %15 = load ptr, ptr %value, align 8, !dbg !2992, !tbaa !1279
  %arrayidx = getelementptr inbounds %struct.ngx_str_t, ptr %15, i64 1, !dbg !2992
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx, i32 0, i32 1, !dbg !2993
  %16 = load ptr, ptr %data, align 8, !dbg !2993, !tbaa !1602
  %17 = load ptr, ptr %value, align 8, !dbg !2994, !tbaa !1279
  %arrayidx8 = getelementptr inbounds %struct.ngx_str_t, ptr %17, i64 1, !dbg !2994
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx8, i32 0, i32 0, !dbg !2995
  %18 = load i64, ptr %len, align 8, !dbg !2995, !tbaa !1348
  %call = call ptr @ngx_stream_lua_rebase_path(ptr noundef %14, ptr noundef %16, i64 noundef %18), !dbg !2996
  store ptr %call, ptr %name, align 8, !dbg !2997, !tbaa !1279
  %19 = load ptr, ptr %name, align 8, !dbg !2998, !tbaa !1279
  %cmp9 = icmp eq ptr %19, null, !dbg !3000
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3001

if.then10:                                        ; preds = %if.then7
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !3002
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3002

if.end11:                                         ; preds = %if.then7
  %20 = load ptr, ptr %name, align 8, !dbg !3004, !tbaa !1279
  %21 = load ptr, ptr %lmcf, align 8, !dbg !3005, !tbaa !1279
  %init_worker_src = getelementptr inbounds %struct.ngx_stream_lua_main_conf_s, ptr %21, i32 0, i32 19, !dbg !3006
  %data12 = getelementptr inbounds %struct.ngx_str_t, ptr %init_worker_src, i32 0, i32 1, !dbg !3007
  store ptr %20, ptr %data12, align 8, !dbg !3008, !tbaa !3009
  %22 = load ptr, ptr %name, align 8, !dbg !3010, !tbaa !1279
  %call13 = call i64 @strlen(ptr noundef %22) #9, !dbg !3010
  %23 = load ptr, ptr %lmcf, align 8, !dbg !3011, !tbaa !1279
  %init_worker_src14 = getelementptr inbounds %struct.ngx_stream_lua_main_conf_s, ptr %23, i32 0, i32 19, !dbg !3012
  %len15 = getelementptr inbounds %struct.ngx_str_t, ptr %init_worker_src14, i32 0, i32 0, !dbg !3013
  store i64 %call13, ptr %len15, align 8, !dbg !3014, !tbaa !3015
  br label %if.end18, !dbg !3016

if.else:                                          ; preds = %if.end2
  %24 = load ptr, ptr %lmcf, align 8, !dbg !3017, !tbaa !1279
  %init_worker_src16 = getelementptr inbounds %struct.ngx_stream_lua_main_conf_s, ptr %24, i32 0, i32 19, !dbg !3019
  %25 = load ptr, ptr %value, align 8, !dbg !3020, !tbaa !1279
  %arrayidx17 = getelementptr inbounds %struct.ngx_str_t, ptr %25, i64 1, !dbg !3020
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %init_worker_src16, ptr align 8 %arrayidx17, i64 16, i1 false), !dbg !3020, !tbaa.struct !1357
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end11
  store ptr null, ptr %retval, align 8, !dbg !3021
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3021

cleanup:                                          ; preds = %if.end18, %if.then10, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %lmcf) #8, !dbg !3022
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #8, !dbg !3022
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #8, !dbg !3022
  %26 = load ptr, ptr %retval, align 8, !dbg !3022
  ret ptr %26, !dbg !3022
}

declare i64 @ngx_stream_lua_init_worker_by_file(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !3023 ptr @ngx_array_create(ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @ngx_stream_lua_conf_read_lua_token(ptr noundef %cf, ptr noundef %ctx) #0 !dbg !3026 {
entry:
  %retval = alloca i64, align 8
  %cf.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %ovec = alloca [2 x i32], align 4
  %start = alloca ptr, align 8
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %ch = alloca i8, align 1
  %file_size = alloca i64, align 8
  %len = alloca i64, align 8
  %buf_size = alloca i64, align 8
  %n = alloca i64, align 8
  %size = alloca i64, align 8
  %start_line = alloca i64, align 8
  %word = alloca ptr, align 8
  %b = alloca ptr, align 8
  %dump = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !3031, metadata !DIExpression()), !dbg !3052
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !3032, metadata !DIExpression()), !dbg !3053
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !3054
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3033, metadata !DIExpression()), !dbg !3055
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #8, !dbg !3054
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !3034, metadata !DIExpression()), !dbg !3056
  call void @llvm.lifetime.start.p0(i64 8, ptr %ovec) #8, !dbg !3057
  tail call void @llvm.dbg.declare(metadata ptr %ovec, metadata !3035, metadata !DIExpression()), !dbg !3058
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #8, !dbg !3059
  tail call void @llvm.dbg.declare(metadata ptr %start, metadata !3039, metadata !DIExpression()), !dbg !3060
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !3059
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !3040, metadata !DIExpression()), !dbg !3061
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #8, !dbg !3059
  tail call void @llvm.dbg.declare(metadata ptr %q, metadata !3041, metadata !DIExpression()), !dbg !3062
  call void @llvm.lifetime.start.p0(i64 1, ptr %ch) #8, !dbg !3059
  tail call void @llvm.dbg.declare(metadata ptr %ch, metadata !3042, metadata !DIExpression()), !dbg !3063
  call void @llvm.lifetime.start.p0(i64 8, ptr %file_size) #8, !dbg !3064
  tail call void @llvm.dbg.declare(metadata ptr %file_size, metadata !3043, metadata !DIExpression()), !dbg !3065
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #8, !dbg !3066
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !3044, metadata !DIExpression()), !dbg !3067
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf_size) #8, !dbg !3066
  tail call void @llvm.dbg.declare(metadata ptr %buf_size, metadata !3045, metadata !DIExpression()), !dbg !3068
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8, !dbg !3069
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !3046, metadata !DIExpression()), !dbg !3070
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #8, !dbg !3069
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !3047, metadata !DIExpression()), !dbg !3071
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_line) #8, !dbg !3072
  tail call void @llvm.dbg.declare(metadata ptr %start_line, metadata !3048, metadata !DIExpression()), !dbg !3073
  call void @llvm.lifetime.start.p0(i64 8, ptr %word) #8, !dbg !3074
  tail call void @llvm.dbg.declare(metadata ptr %word, metadata !3049, metadata !DIExpression()), !dbg !3075
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #8, !dbg !3076
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !3050, metadata !DIExpression()), !dbg !3077
  call void @llvm.lifetime.start.p0(i64 8, ptr %dump) #8, !dbg !3078
  tail call void @llvm.dbg.declare(metadata ptr %dump, metadata !3051, metadata !DIExpression()), !dbg !3079
  %0 = load ptr, ptr %cf.addr, align 8, !dbg !3080, !tbaa !1279
  %conf_file = getelementptr inbounds %struct.ngx_conf_s, ptr %0, i32 0, i32 5, !dbg !3081
  %1 = load ptr, ptr %conf_file, align 8, !dbg !3081, !tbaa !1981
  %buffer = getelementptr inbounds %struct.ngx_conf_file_t, ptr %1, i32 0, i32 1, !dbg !3082
  %2 = load ptr, ptr %buffer, align 8, !dbg !3082, !tbaa !3083
  store ptr %2, ptr %b, align 8, !dbg !3084, !tbaa !1279
  %3 = load ptr, ptr %cf.addr, align 8, !dbg !3085, !tbaa !1279
  %conf_file1 = getelementptr inbounds %struct.ngx_conf_s, ptr %3, i32 0, i32 5, !dbg !3086
  %4 = load ptr, ptr %conf_file1, align 8, !dbg !3086, !tbaa !1981
  %dump2 = getelementptr inbounds %struct.ngx_conf_file_t, ptr %4, i32 0, i32 2, !dbg !3087
  %5 = load ptr, ptr %dump2, align 8, !dbg !3087, !tbaa !3088
  store ptr %5, ptr %dump, align 8, !dbg !3089, !tbaa !1279
  %6 = load ptr, ptr %b, align 8, !dbg !3090, !tbaa !1279
  %pos = getelementptr inbounds %struct.ngx_buf_s, ptr %6, i32 0, i32 0, !dbg !3091
  %7 = load ptr, ptr %pos, align 8, !dbg !3091, !tbaa !3092
  store ptr %7, ptr %start, align 8, !dbg !3094, !tbaa !1279
  %8 = load ptr, ptr %cf.addr, align 8, !dbg !3095, !tbaa !1279
  %conf_file3 = getelementptr inbounds %struct.ngx_conf_s, ptr %8, i32 0, i32 5, !dbg !3096
  %9 = load ptr, ptr %conf_file3, align 8, !dbg !3096, !tbaa !1981
  %line = getelementptr inbounds %struct.ngx_conf_file_t, ptr %9, i32 0, i32 3, !dbg !3097
  %10 = load i64, ptr %line, align 8, !dbg !3097, !tbaa !2020
  store i64 %10, ptr %start_line, align 8, !dbg !3098, !tbaa !1358
  %11 = load ptr, ptr %b, align 8, !dbg !3099, !tbaa !1279
  %end = getelementptr inbounds %struct.ngx_buf_s, ptr %11, i32 0, i32 5, !dbg !3100
  %12 = load ptr, ptr %end, align 8, !dbg !3100, !tbaa !3101
  %13 = load ptr, ptr %b, align 8, !dbg !3102, !tbaa !1279
  %start4 = getelementptr inbounds %struct.ngx_buf_s, ptr %13, i32 0, i32 4, !dbg !3103
  %14 = load ptr, ptr %start4, align 8, !dbg !3103, !tbaa !3104
  %sub.ptr.lhs.cast = ptrtoint ptr %12 to i64, !dbg !3105
  %sub.ptr.rhs.cast = ptrtoint ptr %14 to i64, !dbg !3105
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3105
  store i64 %sub.ptr.sub, ptr %buf_size, align 8, !dbg !3106, !tbaa !1358
  %15 = load ptr, ptr %cf.addr, align 8, !dbg !3107, !tbaa !1279
  %conf_file5 = getelementptr inbounds %struct.ngx_conf_s, ptr %15, i32 0, i32 5, !dbg !3107
  %16 = load ptr, ptr %conf_file5, align 8, !dbg !3107, !tbaa !1981
  %file = getelementptr inbounds %struct.ngx_conf_file_t, ptr %16, i32 0, i32 0, !dbg !3107
  %info = getelementptr inbounds %struct.ngx_file_s, ptr %file, i32 0, i32 2, !dbg !3107
  %st_size = getelementptr inbounds %struct.stat, ptr %info, i32 0, i32 8, !dbg !3107
  %17 = load i64, ptr %st_size, align 8, !dbg !3107, !tbaa !3108
  store i64 %17, ptr %file_size, align 8, !dbg !3109, !tbaa !1358
  br label %for.cond, !dbg !3110

for.cond:                                         ; preds = %if.end157, %entry
  %18 = load ptr, ptr %b, align 8, !dbg !3111, !tbaa !1279
  %pos6 = getelementptr inbounds %struct.ngx_buf_s, ptr %18, i32 0, i32 0, !dbg !3116
  %19 = load ptr, ptr %pos6, align 8, !dbg !3116, !tbaa !3092
  %20 = load ptr, ptr %b, align 8, !dbg !3117, !tbaa !1279
  %last = getelementptr inbounds %struct.ngx_buf_s, ptr %20, i32 0, i32 1, !dbg !3118
  %21 = load ptr, ptr %last, align 8, !dbg !3118, !tbaa !3119
  %cmp = icmp uge ptr %19, %21, !dbg !3120
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3121

lor.lhs.false:                                    ; preds = %for.cond
  %22 = load ptr, ptr %b, align 8, !dbg !3122, !tbaa !1279
  %last7 = getelementptr inbounds %struct.ngx_buf_s, ptr %22, i32 0, i32 1, !dbg !3123
  %23 = load ptr, ptr %last7, align 8, !dbg !3123, !tbaa !3119
  %24 = load ptr, ptr %b, align 8, !dbg !3124, !tbaa !1279
  %pos8 = getelementptr inbounds %struct.ngx_buf_s, ptr %24, i32 0, i32 0, !dbg !3125
  %25 = load ptr, ptr %pos8, align 8, !dbg !3125, !tbaa !3092
  %sub.ptr.lhs.cast9 = ptrtoint ptr %23 to i64, !dbg !3126
  %sub.ptr.rhs.cast10 = ptrtoint ptr %25 to i64, !dbg !3126
  %sub.ptr.sub11 = sub i64 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast10, !dbg !3126
  %26 = load ptr, ptr %b, align 8, !dbg !3127, !tbaa !1279
  %end12 = getelementptr inbounds %struct.ngx_buf_s, ptr %26, i32 0, i32 5, !dbg !3128
  %27 = load ptr, ptr %end12, align 8, !dbg !3128, !tbaa !3101
  %28 = load ptr, ptr %b, align 8, !dbg !3129, !tbaa !1279
  %start13 = getelementptr inbounds %struct.ngx_buf_s, ptr %28, i32 0, i32 4, !dbg !3130
  %29 = load ptr, ptr %start13, align 8, !dbg !3130, !tbaa !3104
  %sub.ptr.lhs.cast14 = ptrtoint ptr %27 to i64, !dbg !3131
  %sub.ptr.rhs.cast15 = ptrtoint ptr %29 to i64, !dbg !3131
  %sub.ptr.sub16 = sub i64 %sub.ptr.lhs.cast14, %sub.ptr.rhs.cast15, !dbg !3131
  %div = sdiv i64 %sub.ptr.sub16, 3, !dbg !3132
  %cmp17 = icmp slt i64 %sub.ptr.sub11, %div, !dbg !3133
  br i1 %cmp17, label %land.lhs.true, label %if.end91, !dbg !3134

land.lhs.true:                                    ; preds = %lor.lhs.false
  %30 = load ptr, ptr %cf.addr, align 8, !dbg !3135, !tbaa !1279
  %conf_file18 = getelementptr inbounds %struct.ngx_conf_s, ptr %30, i32 0, i32 5, !dbg !3136
  %31 = load ptr, ptr %conf_file18, align 8, !dbg !3136, !tbaa !1981
  %file19 = getelementptr inbounds %struct.ngx_conf_file_t, ptr %31, i32 0, i32 0, !dbg !3137
  %offset = getelementptr inbounds %struct.ngx_file_s, ptr %file19, i32 0, i32 3, !dbg !3138
  %32 = load i64, ptr %offset, align 8, !dbg !3138, !tbaa !3139
  %33 = load i64, ptr %file_size, align 8, !dbg !3140, !tbaa !1358
  %cmp20 = icmp slt i64 %32, %33, !dbg !3141
  br i1 %cmp20, label %if.then, label %if.end91, !dbg !3142

if.then:                                          ; preds = %land.lhs.true, %for.cond
  %34 = load ptr, ptr %cf.addr, align 8, !dbg !3143, !tbaa !1279
  %conf_file21 = getelementptr inbounds %struct.ngx_conf_s, ptr %34, i32 0, i32 5, !dbg !3146
  %35 = load ptr, ptr %conf_file21, align 8, !dbg !3146, !tbaa !1981
  %file22 = getelementptr inbounds %struct.ngx_conf_file_t, ptr %35, i32 0, i32 0, !dbg !3147
  %offset23 = getelementptr inbounds %struct.ngx_file_s, ptr %file22, i32 0, i32 3, !dbg !3148
  %36 = load i64, ptr %offset23, align 8, !dbg !3148, !tbaa !3139
  %37 = load i64, ptr %file_size, align 8, !dbg !3149, !tbaa !1358
  %cmp24 = icmp sge i64 %36, %37, !dbg !3150
  br i1 %cmp24, label %if.then25, label %if.end, !dbg !3151

if.then25:                                        ; preds = %if.then
  %38 = load ptr, ptr %ctx.addr, align 8, !dbg !3152, !tbaa !1279
  %start_line26 = getelementptr inbounds %struct.ngx_stream_lua_block_parser_ctx_s, ptr %38, i32 0, i32 0, !dbg !3154
  %39 = load i64, ptr %start_line26, align 8, !dbg !3154, !tbaa !2025
  %40 = load ptr, ptr %cf.addr, align 8, !dbg !3155, !tbaa !1279
  %conf_file27 = getelementptr inbounds %struct.ngx_conf_s, ptr %40, i32 0, i32 5, !dbg !3156
  %41 = load ptr, ptr %conf_file27, align 8, !dbg !3156, !tbaa !1981
  %line28 = getelementptr inbounds %struct.ngx_conf_file_t, ptr %41, i32 0, i32 3, !dbg !3157
  store i64 %39, ptr %line28, align 8, !dbg !3158, !tbaa !2020
  %42 = load ptr, ptr %cf.addr, align 8, !dbg !3159, !tbaa !1279
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %42, i32 noundef 0, ptr noundef @.str.20), !dbg !3160
  store i64 -1, ptr %retval, align 8, !dbg !3161
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3161

if.end:                                           ; preds = %if.then
  %43 = load ptr, ptr %b, align 8, !dbg !3162, !tbaa !1279
  %last29 = getelementptr inbounds %struct.ngx_buf_s, ptr %43, i32 0, i32 1, !dbg !3163
  %44 = load ptr, ptr %last29, align 8, !dbg !3163, !tbaa !3119
  %45 = load ptr, ptr %start, align 8, !dbg !3164, !tbaa !1279
  %sub.ptr.lhs.cast30 = ptrtoint ptr %44 to i64, !dbg !3165
  %sub.ptr.rhs.cast31 = ptrtoint ptr %45 to i64, !dbg !3165
  %sub.ptr.sub32 = sub i64 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31, !dbg !3165
  store i64 %sub.ptr.sub32, ptr %len, align 8, !dbg !3166, !tbaa !1358
  %46 = load i64, ptr %len, align 8, !dbg !3167, !tbaa !1358
  %47 = load i64, ptr %buf_size, align 8, !dbg !3169, !tbaa !1358
  %cmp33 = icmp eq i64 %46, %47, !dbg !3170
  br i1 %cmp33, label %if.then34, label %if.end37, !dbg !3171

if.then34:                                        ; preds = %if.end
  %48 = load i64, ptr %start_line, align 8, !dbg !3172, !tbaa !1358
  %49 = load ptr, ptr %cf.addr, align 8, !dbg !3174, !tbaa !1279
  %conf_file35 = getelementptr inbounds %struct.ngx_conf_s, ptr %49, i32 0, i32 5, !dbg !3175
  %50 = load ptr, ptr %conf_file35, align 8, !dbg !3175, !tbaa !1981
  %line36 = getelementptr inbounds %struct.ngx_conf_file_t, ptr %50, i32 0, i32 3, !dbg !3176
  store i64 %48, ptr %line36, align 8, !dbg !3177, !tbaa !2020
  %51 = load ptr, ptr %cf.addr, align 8, !dbg !3178, !tbaa !1279
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %51, i32 noundef 0, ptr noundef @.str.21), !dbg !3179
  store i64 -1, ptr %retval, align 8, !dbg !3180
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3180

if.end37:                                         ; preds = %if.end
  %52 = load i64, ptr %len, align 8, !dbg !3181, !tbaa !1358
  %tobool = icmp ne i64 %52, 0, !dbg !3181
  br i1 %tobool, label %if.then38, label %if.end40, !dbg !3183

if.then38:                                        ; preds = %if.end37
  %53 = load ptr, ptr %b, align 8, !dbg !3184, !tbaa !1279
  %start39 = getelementptr inbounds %struct.ngx_buf_s, ptr %53, i32 0, i32 4, !dbg !3184
  %54 = load ptr, ptr %start39, align 8, !dbg !3184, !tbaa !3104
  %55 = load ptr, ptr %start, align 8, !dbg !3184, !tbaa !1279
  %56 = load i64, ptr %len, align 8, !dbg !3184, !tbaa !1358
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %54, ptr align 1 %55, i64 %56, i1 false), !dbg !3184
  br label %if.end40, !dbg !3186

if.end40:                                         ; preds = %if.then38, %if.end37
  %57 = load i64, ptr %file_size, align 8, !dbg !3187, !tbaa !1358
  %58 = load ptr, ptr %cf.addr, align 8, !dbg !3188, !tbaa !1279
  %conf_file41 = getelementptr inbounds %struct.ngx_conf_s, ptr %58, i32 0, i32 5, !dbg !3189
  %59 = load ptr, ptr %conf_file41, align 8, !dbg !3189, !tbaa !1981
  %file42 = getelementptr inbounds %struct.ngx_conf_file_t, ptr %59, i32 0, i32 0, !dbg !3190
  %offset43 = getelementptr inbounds %struct.ngx_file_s, ptr %file42, i32 0, i32 3, !dbg !3191
  %60 = load i64, ptr %offset43, align 8, !dbg !3191, !tbaa !3139
  %sub = sub nsw i64 %57, %60, !dbg !3192
  store i64 %sub, ptr %size, align 8, !dbg !3193, !tbaa !1358
  %61 = load i64, ptr %size, align 8, !dbg !3194, !tbaa !1358
  %62 = load ptr, ptr %b, align 8, !dbg !3196, !tbaa !1279
  %end44 = getelementptr inbounds %struct.ngx_buf_s, ptr %62, i32 0, i32 5, !dbg !3197
  %63 = load ptr, ptr %end44, align 8, !dbg !3197, !tbaa !3101
  %64 = load ptr, ptr %b, align 8, !dbg !3198, !tbaa !1279
  %start45 = getelementptr inbounds %struct.ngx_buf_s, ptr %64, i32 0, i32 4, !dbg !3199
  %65 = load ptr, ptr %start45, align 8, !dbg !3199, !tbaa !3104
  %66 = load i64, ptr %len, align 8, !dbg !3200, !tbaa !1358
  %add.ptr = getelementptr inbounds i8, ptr %65, i64 %66, !dbg !3201
  %sub.ptr.lhs.cast46 = ptrtoint ptr %63 to i64, !dbg !3202
  %sub.ptr.rhs.cast47 = ptrtoint ptr %add.ptr to i64, !dbg !3202
  %sub.ptr.sub48 = sub i64 %sub.ptr.lhs.cast46, %sub.ptr.rhs.cast47, !dbg !3202
  %cmp49 = icmp sgt i64 %61, %sub.ptr.sub48, !dbg !3203
  br i1 %cmp49, label %if.then50, label %if.end57, !dbg !3204

if.then50:                                        ; preds = %if.end40
  %67 = load ptr, ptr %b, align 8, !dbg !3205, !tbaa !1279
  %end51 = getelementptr inbounds %struct.ngx_buf_s, ptr %67, i32 0, i32 5, !dbg !3207
  %68 = load ptr, ptr %end51, align 8, !dbg !3207, !tbaa !3101
  %69 = load ptr, ptr %b, align 8, !dbg !3208, !tbaa !1279
  %start52 = getelementptr inbounds %struct.ngx_buf_s, ptr %69, i32 0, i32 4, !dbg !3209
  %70 = load ptr, ptr %start52, align 8, !dbg !3209, !tbaa !3104
  %71 = load i64, ptr %len, align 8, !dbg !3210, !tbaa !1358
  %add.ptr53 = getelementptr inbounds i8, ptr %70, i64 %71, !dbg !3211
  %sub.ptr.lhs.cast54 = ptrtoint ptr %68 to i64, !dbg !3212
  %sub.ptr.rhs.cast55 = ptrtoint ptr %add.ptr53 to i64, !dbg !3212
  %sub.ptr.sub56 = sub i64 %sub.ptr.lhs.cast54, %sub.ptr.rhs.cast55, !dbg !3212
  store i64 %sub.ptr.sub56, ptr %size, align 8, !dbg !3213, !tbaa !1358
  br label %if.end57, !dbg !3214

if.end57:                                         ; preds = %if.then50, %if.end40
  %72 = load ptr, ptr %cf.addr, align 8, !dbg !3215, !tbaa !1279
  %conf_file58 = getelementptr inbounds %struct.ngx_conf_s, ptr %72, i32 0, i32 5, !dbg !3216
  %73 = load ptr, ptr %conf_file58, align 8, !dbg !3216, !tbaa !1981
  %file59 = getelementptr inbounds %struct.ngx_conf_file_t, ptr %73, i32 0, i32 0, !dbg !3217
  %74 = load ptr, ptr %b, align 8, !dbg !3218, !tbaa !1279
  %start60 = getelementptr inbounds %struct.ngx_buf_s, ptr %74, i32 0, i32 4, !dbg !3219
  %75 = load ptr, ptr %start60, align 8, !dbg !3219, !tbaa !3104
  %76 = load i64, ptr %len, align 8, !dbg !3220, !tbaa !1358
  %add.ptr61 = getelementptr inbounds i8, ptr %75, i64 %76, !dbg !3221
  %77 = load i64, ptr %size, align 8, !dbg !3222, !tbaa !1358
  %78 = load ptr, ptr %cf.addr, align 8, !dbg !3223, !tbaa !1279
  %conf_file62 = getelementptr inbounds %struct.ngx_conf_s, ptr %78, i32 0, i32 5, !dbg !3224
  %79 = load ptr, ptr %conf_file62, align 8, !dbg !3224, !tbaa !1981
  %file63 = getelementptr inbounds %struct.ngx_conf_file_t, ptr %79, i32 0, i32 0, !dbg !3225
  %offset64 = getelementptr inbounds %struct.ngx_file_s, ptr %file63, i32 0, i32 3, !dbg !3226
  %80 = load i64, ptr %offset64, align 8, !dbg !3226, !tbaa !3139
  %call = call i64 @ngx_read_file(ptr noundef %file59, ptr noundef %add.ptr61, i64 noundef %77, i64 noundef %80), !dbg !3227
  store i64 %call, ptr %n, align 8, !dbg !3228, !tbaa !1358
  %81 = load i64, ptr %n, align 8, !dbg !3229, !tbaa !1358
  %cmp65 = icmp eq i64 %81, -1, !dbg !3231
  br i1 %cmp65, label %if.then66, label %if.end67, !dbg !3232

if.then66:                                        ; preds = %if.end57
  store i64 -1, ptr %retval, align 8, !dbg !3233
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3233

if.end67:                                         ; preds = %if.end57
  %82 = load i64, ptr %n, align 8, !dbg !3235, !tbaa !1358
  %83 = load i64, ptr %size, align 8, !dbg !3237, !tbaa !1358
  %cmp68 = icmp ne i64 %82, %83, !dbg !3238
  br i1 %cmp68, label %if.then69, label %if.end70, !dbg !3239

if.then69:                                        ; preds = %if.end67
  %84 = load ptr, ptr %cf.addr, align 8, !dbg !3240, !tbaa !1279
  %85 = load i64, ptr %n, align 8, !dbg !3242, !tbaa !1358
  %86 = load i64, ptr %size, align 8, !dbg !3243, !tbaa !1358
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %84, i32 noundef 0, ptr noundef @.str.22, i64 noundef %85, i64 noundef %86), !dbg !3244
  store i64 -1, ptr %retval, align 8, !dbg !3245
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3245

if.end70:                                         ; preds = %if.end67
  %87 = load ptr, ptr %b, align 8, !dbg !3246, !tbaa !1279
  %start71 = getelementptr inbounds %struct.ngx_buf_s, ptr %87, i32 0, i32 4, !dbg !3247
  %88 = load ptr, ptr %start71, align 8, !dbg !3247, !tbaa !3104
  %89 = load ptr, ptr %b, align 8, !dbg !3248, !tbaa !1279
  %pos72 = getelementptr inbounds %struct.ngx_buf_s, ptr %89, i32 0, i32 0, !dbg !3249
  %90 = load ptr, ptr %pos72, align 8, !dbg !3249, !tbaa !3092
  %91 = load ptr, ptr %start, align 8, !dbg !3250, !tbaa !1279
  %sub.ptr.lhs.cast73 = ptrtoint ptr %90 to i64, !dbg !3251
  %sub.ptr.rhs.cast74 = ptrtoint ptr %91 to i64, !dbg !3251
  %sub.ptr.sub75 = sub i64 %sub.ptr.lhs.cast73, %sub.ptr.rhs.cast74, !dbg !3251
  %add.ptr76 = getelementptr inbounds i8, ptr %88, i64 %sub.ptr.sub75, !dbg !3252
  %92 = load ptr, ptr %b, align 8, !dbg !3253, !tbaa !1279
  %pos77 = getelementptr inbounds %struct.ngx_buf_s, ptr %92, i32 0, i32 0, !dbg !3254
  store ptr %add.ptr76, ptr %pos77, align 8, !dbg !3255, !tbaa !3092
  %93 = load ptr, ptr %b, align 8, !dbg !3256, !tbaa !1279
  %start78 = getelementptr inbounds %struct.ngx_buf_s, ptr %93, i32 0, i32 4, !dbg !3257
  %94 = load ptr, ptr %start78, align 8, !dbg !3257, !tbaa !3104
  %95 = load i64, ptr %len, align 8, !dbg !3258, !tbaa !1358
  %add.ptr79 = getelementptr inbounds i8, ptr %94, i64 %95, !dbg !3259
  %96 = load i64, ptr %n, align 8, !dbg !3260, !tbaa !1358
  %add.ptr80 = getelementptr inbounds i8, ptr %add.ptr79, i64 %96, !dbg !3261
  %97 = load ptr, ptr %b, align 8, !dbg !3262, !tbaa !1279
  %last81 = getelementptr inbounds %struct.ngx_buf_s, ptr %97, i32 0, i32 1, !dbg !3263
  store ptr %add.ptr80, ptr %last81, align 8, !dbg !3264, !tbaa !3119
  %98 = load ptr, ptr %b, align 8, !dbg !3265, !tbaa !1279
  %start82 = getelementptr inbounds %struct.ngx_buf_s, ptr %98, i32 0, i32 4, !dbg !3266
  %99 = load ptr, ptr %start82, align 8, !dbg !3266, !tbaa !3104
  store ptr %99, ptr %start, align 8, !dbg !3267, !tbaa !1279
  %100 = load ptr, ptr %dump, align 8, !dbg !3268, !tbaa !1279
  %tobool83 = icmp ne ptr %100, null, !dbg !3268
  br i1 %tobool83, label %if.then84, label %if.end90, !dbg !3270

if.then84:                                        ; preds = %if.end70
  %101 = load ptr, ptr %dump, align 8, !dbg !3271, !tbaa !1279
  %last85 = getelementptr inbounds %struct.ngx_buf_s, ptr %101, i32 0, i32 1, !dbg !3271
  %102 = load ptr, ptr %last85, align 8, !dbg !3271, !tbaa !3119
  %103 = load ptr, ptr %b, align 8, !dbg !3271, !tbaa !1279
  %start86 = getelementptr inbounds %struct.ngx_buf_s, ptr %103, i32 0, i32 4, !dbg !3271
  %104 = load ptr, ptr %start86, align 8, !dbg !3271, !tbaa !3104
  %105 = load i64, ptr %len, align 8, !dbg !3271, !tbaa !1358
  %add.ptr87 = getelementptr inbounds i8, ptr %104, i64 %105, !dbg !3271
  %106 = load i64, ptr %size, align 8, !dbg !3271, !tbaa !1358
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %102, ptr align 1 %add.ptr87, i64 %106, i1 false), !dbg !3271
  %107 = load i64, ptr %size, align 8, !dbg !3271, !tbaa !1358
  %add.ptr88 = getelementptr inbounds i8, ptr %102, i64 %107, !dbg !3271
  %108 = load ptr, ptr %dump, align 8, !dbg !3273, !tbaa !1279
  %last89 = getelementptr inbounds %struct.ngx_buf_s, ptr %108, i32 0, i32 1, !dbg !3274
  store ptr %add.ptr88, ptr %last89, align 8, !dbg !3275, !tbaa !3119
  br label %if.end90, !dbg !3276

if.end90:                                         ; preds = %if.then84, %if.end70
  br label %if.end91, !dbg !3277

if.end91:                                         ; preds = %if.end90, %land.lhs.true, %lor.lhs.false
  %109 = load ptr, ptr %b, align 8, !dbg !3278, !tbaa !1279
  %pos92 = getelementptr inbounds %struct.ngx_buf_s, ptr %109, i32 0, i32 0, !dbg !3279
  %110 = load ptr, ptr %pos92, align 8, !dbg !3279, !tbaa !3092
  %111 = load ptr, ptr %b, align 8, !dbg !3280, !tbaa !1279
  %last93 = getelementptr inbounds %struct.ngx_buf_s, ptr %111, i32 0, i32 1, !dbg !3281
  %112 = load ptr, ptr %last93, align 8, !dbg !3281, !tbaa !3119
  %113 = load ptr, ptr %b, align 8, !dbg !3282, !tbaa !1279
  %pos94 = getelementptr inbounds %struct.ngx_buf_s, ptr %113, i32 0, i32 0, !dbg !3283
  %114 = load ptr, ptr %pos94, align 8, !dbg !3283, !tbaa !3092
  %sub.ptr.lhs.cast95 = ptrtoint ptr %112 to i64, !dbg !3284
  %sub.ptr.rhs.cast96 = ptrtoint ptr %114 to i64, !dbg !3284
  %sub.ptr.sub97 = sub i64 %sub.ptr.lhs.cast95, %sub.ptr.rhs.cast96, !dbg !3284
  %arraydecay = getelementptr inbounds [2 x i32], ptr %ovec, i64 0, i64 0, !dbg !3285
  %call98 = call i32 @ngx_stream_lua_lex(ptr noundef %110, i64 noundef %sub.ptr.sub97, ptr noundef %arraydecay), !dbg !3286
  store i32 %call98, ptr %rc, align 4, !dbg !3287, !tbaa !1959
  %115 = load i32, ptr %rc, align 4, !dbg !3288, !tbaa !1959
  %cmp99 = icmp slt i32 %115, 0, !dbg !3290
  br i1 %cmp99, label %if.then100, label %if.end165, !dbg !3291

if.then100:                                       ; preds = %if.end91
  %116 = load ptr, ptr %cf.addr, align 8, !dbg !3292, !tbaa !1279
  %conf_file101 = getelementptr inbounds %struct.ngx_conf_s, ptr %116, i32 0, i32 5, !dbg !3295
  %117 = load ptr, ptr %conf_file101, align 8, !dbg !3295, !tbaa !1981
  %file102 = getelementptr inbounds %struct.ngx_conf_file_t, ptr %117, i32 0, i32 0, !dbg !3296
  %offset103 = getelementptr inbounds %struct.ngx_file_s, ptr %file102, i32 0, i32 3, !dbg !3297
  %118 = load i64, ptr %offset103, align 8, !dbg !3297, !tbaa !3139
  %119 = load i64, ptr %file_size, align 8, !dbg !3298, !tbaa !1358
  %cmp104 = icmp sge i64 %118, %119, !dbg !3299
  br i1 %cmp104, label %if.then105, label %if.end109, !dbg !3300

if.then105:                                       ; preds = %if.then100
  %120 = load ptr, ptr %ctx.addr, align 8, !dbg !3301, !tbaa !1279
  %start_line106 = getelementptr inbounds %struct.ngx_stream_lua_block_parser_ctx_s, ptr %120, i32 0, i32 0, !dbg !3303
  %121 = load i64, ptr %start_line106, align 8, !dbg !3303, !tbaa !2025
  %122 = load ptr, ptr %cf.addr, align 8, !dbg !3304, !tbaa !1279
  %conf_file107 = getelementptr inbounds %struct.ngx_conf_s, ptr %122, i32 0, i32 5, !dbg !3305
  %123 = load ptr, ptr %conf_file107, align 8, !dbg !3305, !tbaa !1981
  %line108 = getelementptr inbounds %struct.ngx_conf_file_t, ptr %123, i32 0, i32 3, !dbg !3306
  store i64 %121, ptr %line108, align 8, !dbg !3307, !tbaa !2020
  %124 = load ptr, ptr %cf.addr, align 8, !dbg !3308, !tbaa !1279
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %124, i32 noundef 0, ptr noundef @.str.20), !dbg !3309
  store i64 -1, ptr %retval, align 8, !dbg !3310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3310

if.end109:                                        ; preds = %if.then100
  %125 = load ptr, ptr %b, align 8, !dbg !3311, !tbaa !1279
  %last110 = getelementptr inbounds %struct.ngx_buf_s, ptr %125, i32 0, i32 1, !dbg !3312
  %126 = load ptr, ptr %last110, align 8, !dbg !3312, !tbaa !3119
  %127 = load ptr, ptr %b, align 8, !dbg !3313, !tbaa !1279
  %pos111 = getelementptr inbounds %struct.ngx_buf_s, ptr %127, i32 0, i32 0, !dbg !3314
  %128 = load ptr, ptr %pos111, align 8, !dbg !3314, !tbaa !3092
  %sub.ptr.lhs.cast112 = ptrtoint ptr %126 to i64, !dbg !3315
  %sub.ptr.rhs.cast113 = ptrtoint ptr %128 to i64, !dbg !3315
  %sub.ptr.sub114 = sub i64 %sub.ptr.lhs.cast112, %sub.ptr.rhs.cast113, !dbg !3315
  store i64 %sub.ptr.sub114, ptr %len, align 8, !dbg !3316, !tbaa !1358
  %129 = load i64, ptr %len, align 8, !dbg !3317, !tbaa !1358
  %130 = load i64, ptr %buf_size, align 8, !dbg !3319, !tbaa !1358
  %cmp115 = icmp eq i64 %129, %130, !dbg !3320
  br i1 %cmp115, label %if.then116, label %if.end119, !dbg !3321

if.then116:                                       ; preds = %if.end109
  %131 = load i64, ptr %start_line, align 8, !dbg !3322, !tbaa !1358
  %132 = load ptr, ptr %cf.addr, align 8, !dbg !3324, !tbaa !1279
  %conf_file117 = getelementptr inbounds %struct.ngx_conf_s, ptr %132, i32 0, i32 5, !dbg !3325
  %133 = load ptr, ptr %conf_file117, align 8, !dbg !3325, !tbaa !1981
  %line118 = getelementptr inbounds %struct.ngx_conf_file_t, ptr %133, i32 0, i32 3, !dbg !3326
  store i64 %131, ptr %line118, align 8, !dbg !3327, !tbaa !2020
  %134 = load ptr, ptr %cf.addr, align 8, !dbg !3328, !tbaa !1279
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %134, i32 noundef 0, ptr noundef @.str.21), !dbg !3329
  store i64 -1, ptr %retval, align 8, !dbg !3330
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3330

if.end119:                                        ; preds = %if.end109
  %135 = load i64, ptr %len, align 8, !dbg !3331, !tbaa !1358
  %tobool120 = icmp ne i64 %135, 0, !dbg !3331
  br i1 %tobool120, label %if.then121, label %if.end124, !dbg !3333

if.then121:                                       ; preds = %if.end119
  %136 = load ptr, ptr %b, align 8, !dbg !3334, !tbaa !1279
  %start122 = getelementptr inbounds %struct.ngx_buf_s, ptr %136, i32 0, i32 4, !dbg !3334
  %137 = load ptr, ptr %start122, align 8, !dbg !3334, !tbaa !3104
  %138 = load ptr, ptr %b, align 8, !dbg !3334, !tbaa !1279
  %pos123 = getelementptr inbounds %struct.ngx_buf_s, ptr %138, i32 0, i32 0, !dbg !3334
  %139 = load ptr, ptr %pos123, align 8, !dbg !3334, !tbaa !3092
  %140 = load i64, ptr %len, align 8, !dbg !3334, !tbaa !1358
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %137, ptr align 1 %139, i64 %140, i1 false), !dbg !3334
  br label %if.end124, !dbg !3336

if.end124:                                        ; preds = %if.then121, %if.end119
  %141 = load i64, ptr %file_size, align 8, !dbg !3337, !tbaa !1358
  %142 = load ptr, ptr %cf.addr, align 8, !dbg !3338, !tbaa !1279
  %conf_file125 = getelementptr inbounds %struct.ngx_conf_s, ptr %142, i32 0, i32 5, !dbg !3339
  %143 = load ptr, ptr %conf_file125, align 8, !dbg !3339, !tbaa !1981
  %file126 = getelementptr inbounds %struct.ngx_conf_file_t, ptr %143, i32 0, i32 0, !dbg !3340
  %offset127 = getelementptr inbounds %struct.ngx_file_s, ptr %file126, i32 0, i32 3, !dbg !3341
  %144 = load i64, ptr %offset127, align 8, !dbg !3341, !tbaa !3139
  %sub128 = sub nsw i64 %141, %144, !dbg !3342
  store i64 %sub128, ptr %size, align 8, !dbg !3343, !tbaa !1358
  %145 = load i64, ptr %size, align 8, !dbg !3344, !tbaa !1358
  %146 = load ptr, ptr %b, align 8, !dbg !3346, !tbaa !1279
  %end129 = getelementptr inbounds %struct.ngx_buf_s, ptr %146, i32 0, i32 5, !dbg !3347
  %147 = load ptr, ptr %end129, align 8, !dbg !3347, !tbaa !3101
  %148 = load ptr, ptr %b, align 8, !dbg !3348, !tbaa !1279
  %start130 = getelementptr inbounds %struct.ngx_buf_s, ptr %148, i32 0, i32 4, !dbg !3349
  %149 = load ptr, ptr %start130, align 8, !dbg !3349, !tbaa !3104
  %150 = load i64, ptr %len, align 8, !dbg !3350, !tbaa !1358
  %add.ptr131 = getelementptr inbounds i8, ptr %149, i64 %150, !dbg !3351
  %sub.ptr.lhs.cast132 = ptrtoint ptr %147 to i64, !dbg !3352
  %sub.ptr.rhs.cast133 = ptrtoint ptr %add.ptr131 to i64, !dbg !3352
  %sub.ptr.sub134 = sub i64 %sub.ptr.lhs.cast132, %sub.ptr.rhs.cast133, !dbg !3352
  %cmp135 = icmp sgt i64 %145, %sub.ptr.sub134, !dbg !3353
  br i1 %cmp135, label %if.then136, label %if.end143, !dbg !3354

if.then136:                                       ; preds = %if.end124
  %151 = load ptr, ptr %b, align 8, !dbg !3355, !tbaa !1279
  %end137 = getelementptr inbounds %struct.ngx_buf_s, ptr %151, i32 0, i32 5, !dbg !3357
  %152 = load ptr, ptr %end137, align 8, !dbg !3357, !tbaa !3101
  %153 = load ptr, ptr %b, align 8, !dbg !3358, !tbaa !1279
  %start138 = getelementptr inbounds %struct.ngx_buf_s, ptr %153, i32 0, i32 4, !dbg !3359
  %154 = load ptr, ptr %start138, align 8, !dbg !3359, !tbaa !3104
  %155 = load i64, ptr %len, align 8, !dbg !3360, !tbaa !1358
  %add.ptr139 = getelementptr inbounds i8, ptr %154, i64 %155, !dbg !3361
  %sub.ptr.lhs.cast140 = ptrtoint ptr %152 to i64, !dbg !3362
  %sub.ptr.rhs.cast141 = ptrtoint ptr %add.ptr139 to i64, !dbg !3362
  %sub.ptr.sub142 = sub i64 %sub.ptr.lhs.cast140, %sub.ptr.rhs.cast141, !dbg !3362
  store i64 %sub.ptr.sub142, ptr %size, align 8, !dbg !3363, !tbaa !1358
  br label %if.end143, !dbg !3364

if.end143:                                        ; preds = %if.then136, %if.end124
  %156 = load ptr, ptr %cf.addr, align 8, !dbg !3365, !tbaa !1279
  %conf_file144 = getelementptr inbounds %struct.ngx_conf_s, ptr %156, i32 0, i32 5, !dbg !3366
  %157 = load ptr, ptr %conf_file144, align 8, !dbg !3366, !tbaa !1981
  %file145 = getelementptr inbounds %struct.ngx_conf_file_t, ptr %157, i32 0, i32 0, !dbg !3367
  %158 = load ptr, ptr %b, align 8, !dbg !3368, !tbaa !1279
  %start146 = getelementptr inbounds %struct.ngx_buf_s, ptr %158, i32 0, i32 4, !dbg !3369
  %159 = load ptr, ptr %start146, align 8, !dbg !3369, !tbaa !3104
  %160 = load i64, ptr %len, align 8, !dbg !3370, !tbaa !1358
  %add.ptr147 = getelementptr inbounds i8, ptr %159, i64 %160, !dbg !3371
  %161 = load i64, ptr %size, align 8, !dbg !3372, !tbaa !1358
  %162 = load ptr, ptr %cf.addr, align 8, !dbg !3373, !tbaa !1279
  %conf_file148 = getelementptr inbounds %struct.ngx_conf_s, ptr %162, i32 0, i32 5, !dbg !3374
  %163 = load ptr, ptr %conf_file148, align 8, !dbg !3374, !tbaa !1981
  %file149 = getelementptr inbounds %struct.ngx_conf_file_t, ptr %163, i32 0, i32 0, !dbg !3375
  %offset150 = getelementptr inbounds %struct.ngx_file_s, ptr %file149, i32 0, i32 3, !dbg !3376
  %164 = load i64, ptr %offset150, align 8, !dbg !3376, !tbaa !3139
  %call151 = call i64 @ngx_read_file(ptr noundef %file145, ptr noundef %add.ptr147, i64 noundef %161, i64 noundef %164), !dbg !3377
  store i64 %call151, ptr %n, align 8, !dbg !3378, !tbaa !1358
  %165 = load i64, ptr %n, align 8, !dbg !3379, !tbaa !1358
  %cmp152 = icmp eq i64 %165, -1, !dbg !3381
  br i1 %cmp152, label %if.then153, label %if.end154, !dbg !3382

if.then153:                                       ; preds = %if.end143
  store i64 -1, ptr %retval, align 8, !dbg !3383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3383

if.end154:                                        ; preds = %if.end143
  %166 = load i64, ptr %n, align 8, !dbg !3385, !tbaa !1358
  %167 = load i64, ptr %size, align 8, !dbg !3387, !tbaa !1358
  %cmp155 = icmp ne i64 %166, %167, !dbg !3388
  br i1 %cmp155, label %if.then156, label %if.end157, !dbg !3389

if.then156:                                       ; preds = %if.end154
  %168 = load ptr, ptr %cf.addr, align 8, !dbg !3390, !tbaa !1279
  %169 = load i64, ptr %n, align 8, !dbg !3392, !tbaa !1358
  %170 = load i64, ptr %size, align 8, !dbg !3393, !tbaa !1358
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %168, i32 noundef 0, ptr noundef @.str.22, i64 noundef %169, i64 noundef %170), !dbg !3394
  store i64 -1, ptr %retval, align 8, !dbg !3395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3395

if.end157:                                        ; preds = %if.end154
  %171 = load ptr, ptr %b, align 8, !dbg !3396, !tbaa !1279
  %start158 = getelementptr inbounds %struct.ngx_buf_s, ptr %171, i32 0, i32 4, !dbg !3397
  %172 = load ptr, ptr %start158, align 8, !dbg !3397, !tbaa !3104
  %173 = load i64, ptr %len, align 8, !dbg !3398, !tbaa !1358
  %add.ptr159 = getelementptr inbounds i8, ptr %172, i64 %173, !dbg !3399
  %174 = load ptr, ptr %b, align 8, !dbg !3400, !tbaa !1279
  %pos160 = getelementptr inbounds %struct.ngx_buf_s, ptr %174, i32 0, i32 0, !dbg !3401
  store ptr %add.ptr159, ptr %pos160, align 8, !dbg !3402, !tbaa !3092
  %175 = load ptr, ptr %b, align 8, !dbg !3403, !tbaa !1279
  %pos161 = getelementptr inbounds %struct.ngx_buf_s, ptr %175, i32 0, i32 0, !dbg !3404
  %176 = load ptr, ptr %pos161, align 8, !dbg !3404, !tbaa !3092
  %177 = load i64, ptr %n, align 8, !dbg !3405, !tbaa !1358
  %add.ptr162 = getelementptr inbounds i8, ptr %176, i64 %177, !dbg !3406
  %178 = load ptr, ptr %b, align 8, !dbg !3407, !tbaa !1279
  %last163 = getelementptr inbounds %struct.ngx_buf_s, ptr %178, i32 0, i32 1, !dbg !3408
  store ptr %add.ptr162, ptr %last163, align 8, !dbg !3409, !tbaa !3119
  %179 = load ptr, ptr %b, align 8, !dbg !3410, !tbaa !1279
  %start164 = getelementptr inbounds %struct.ngx_buf_s, ptr %179, i32 0, i32 4, !dbg !3411
  %180 = load ptr, ptr %start164, align 8, !dbg !3411, !tbaa !3104
  store ptr %180, ptr %start, align 8, !dbg !3412, !tbaa !1279
  br label %for.cond, !dbg !3413, !llvm.loop !3414

if.end165:                                        ; preds = %if.end91
  %181 = load i32, ptr %rc, align 4, !dbg !3417, !tbaa !1959
  %cmp166 = icmp eq i32 %181, 2, !dbg !3419
  br i1 %cmp166, label %if.then169, label %lor.lhs.false167, !dbg !3420

lor.lhs.false167:                                 ; preds = %if.end165
  %182 = load i32, ptr %rc, align 4, !dbg !3421, !tbaa !1959
  %cmp168 = icmp eq i32 %182, 3, !dbg !3422
  br i1 %cmp168, label %if.then169, label %if.end246, !dbg !3423

if.then169:                                       ; preds = %lor.lhs.false167, %if.end165
  store i32 0, ptr %i, align 4, !dbg !3424, !tbaa !1959
  br label %for.cond170, !dbg !3427

for.cond170:                                      ; preds = %for.inc, %if.then169
  %183 = load i32, ptr %i, align 4, !dbg !3428, !tbaa !1959
  %arrayidx = getelementptr inbounds [2 x i32], ptr %ovec, i64 0, i64 0, !dbg !3430
  %184 = load i32, ptr %arrayidx, align 4, !dbg !3430, !tbaa !1959
  %cmp171 = icmp slt i32 %183, %184, !dbg !3431
  br i1 %cmp171, label %for.body, label %for.end, !dbg !3432

for.body:                                         ; preds = %for.cond170
  %185 = load ptr, ptr %b, align 8, !dbg !3433, !tbaa !1279
  %pos172 = getelementptr inbounds %struct.ngx_buf_s, ptr %185, i32 0, i32 0, !dbg !3435
  %186 = load ptr, ptr %pos172, align 8, !dbg !3435, !tbaa !3092
  %187 = load i32, ptr %i, align 4, !dbg !3436, !tbaa !1959
  %idxprom = sext i32 %187 to i64, !dbg !3433
  %arrayidx173 = getelementptr inbounds i8, ptr %186, i64 %idxprom, !dbg !3433
  %188 = load i8, ptr %arrayidx173, align 1, !dbg !3433, !tbaa !1878
  store i8 %188, ptr %ch, align 1, !dbg !3437, !tbaa !1878
  %189 = load i8, ptr %ch, align 1, !dbg !3438, !tbaa !1878
  %conv = zext i8 %189 to i32, !dbg !3438
  %cmp174 = icmp eq i32 %conv, 10, !dbg !3440
  br i1 %cmp174, label %if.then176, label %if.end179, !dbg !3441

if.then176:                                       ; preds = %for.body
  %190 = load ptr, ptr %cf.addr, align 8, !dbg !3442, !tbaa !1279
  %conf_file177 = getelementptr inbounds %struct.ngx_conf_s, ptr %190, i32 0, i32 5, !dbg !3444
  %191 = load ptr, ptr %conf_file177, align 8, !dbg !3444, !tbaa !1981
  %line178 = getelementptr inbounds %struct.ngx_conf_file_t, ptr %191, i32 0, i32 3, !dbg !3445
  %192 = load i64, ptr %line178, align 8, !dbg !3446, !tbaa !2020
  %inc = add i64 %192, 1, !dbg !3446
  store i64 %inc, ptr %line178, align 8, !dbg !3446, !tbaa !2020
  br label %if.end179, !dbg !3447

if.end179:                                        ; preds = %if.then176, %for.body
  br label %for.inc, !dbg !3448

for.inc:                                          ; preds = %if.end179
  %193 = load i32, ptr %i, align 4, !dbg !3449, !tbaa !1959
  %inc180 = add nsw i32 %193, 1, !dbg !3449
  store i32 %inc180, ptr %i, align 4, !dbg !3449, !tbaa !1959
  br label %for.cond170, !dbg !3450, !llvm.loop !3451

for.end:                                          ; preds = %for.cond170
  %arrayidx181 = getelementptr inbounds [2 x i32], ptr %ovec, i64 0, i64 0, !dbg !3453
  %194 = load i32, ptr %arrayidx181, align 4, !dbg !3453, !tbaa !1959
  %195 = load ptr, ptr %b, align 8, !dbg !3454, !tbaa !1279
  %pos182 = getelementptr inbounds %struct.ngx_buf_s, ptr %195, i32 0, i32 0, !dbg !3455
  %196 = load ptr, ptr %pos182, align 8, !dbg !3456, !tbaa !3092
  %idx.ext = sext i32 %194 to i64, !dbg !3456
  %add.ptr183 = getelementptr inbounds i8, ptr %196, i64 %idx.ext, !dbg !3456
  store ptr %add.ptr183, ptr %pos182, align 8, !dbg !3456, !tbaa !3092
  %arrayidx184 = getelementptr inbounds [2 x i32], ptr %ovec, i64 0, i64 0, !dbg !3457
  %197 = load i32, ptr %arrayidx184, align 4, !dbg !3457, !tbaa !1959
  %arrayidx185 = getelementptr inbounds [2 x i32], ptr %ovec, i64 0, i64 1, !dbg !3458
  %198 = load i32, ptr %arrayidx185, align 4, !dbg !3459, !tbaa !1959
  %sub186 = sub nsw i32 %198, %197, !dbg !3459
  store i32 %sub186, ptr %arrayidx185, align 4, !dbg !3459, !tbaa !1959
  %arrayidx187 = getelementptr inbounds [2 x i32], ptr %ovec, i64 0, i64 0, !dbg !3460
  store i32 0, ptr %arrayidx187, align 4, !dbg !3461, !tbaa !1959
  %199 = load i32, ptr %rc, align 4, !dbg !3462, !tbaa !1959
  %cmp188 = icmp eq i32 %199, 3, !dbg !3464
  br i1 %cmp188, label %if.then190, label %if.else, !dbg !3465

if.then190:                                       ; preds = %for.end
  %200 = load ptr, ptr %b, align 8, !dbg !3466, !tbaa !1279
  %pos191 = getelementptr inbounds %struct.ngx_buf_s, ptr %200, i32 0, i32 0, !dbg !3468
  %201 = load ptr, ptr %pos191, align 8, !dbg !3468, !tbaa !3092
  %arrayidx192 = getelementptr inbounds i8, ptr %201, i64 2, !dbg !3466
  store ptr %arrayidx192, ptr %p, align 8, !dbg !3469, !tbaa !1279
  store i32 3, ptr %rc, align 4, !dbg !3470, !tbaa !1959
  br label %if.end194, !dbg !3471

if.else:                                          ; preds = %for.end
  %202 = load ptr, ptr %b, align 8, !dbg !3472, !tbaa !1279
  %pos193 = getelementptr inbounds %struct.ngx_buf_s, ptr %202, i32 0, i32 0, !dbg !3474
  %203 = load ptr, ptr %pos193, align 8, !dbg !3474, !tbaa !3092
  store ptr %203, ptr %p, align 8, !dbg !3475, !tbaa !1279
  store i32 2, ptr %rc, align 4, !dbg !3476, !tbaa !1959
  br label %if.end194

if.end194:                                        ; preds = %if.else, %if.then190
  %204 = load ptr, ptr %p, align 8, !dbg !3477, !tbaa !1279
  %arrayidx195 = getelementptr inbounds i8, ptr %204, i64 0, !dbg !3477
  store i8 93, ptr %arrayidx195, align 1, !dbg !3478, !tbaa !1878
  %205 = load ptr, ptr %b, align 8, !dbg !3479, !tbaa !1279
  %pos196 = getelementptr inbounds %struct.ngx_buf_s, ptr %205, i32 0, i32 0, !dbg !3480
  %206 = load ptr, ptr %pos196, align 8, !dbg !3480, !tbaa !3092
  %arrayidx197 = getelementptr inbounds [2 x i32], ptr %ovec, i64 0, i64 1, !dbg !3481
  %207 = load i32, ptr %arrayidx197, align 4, !dbg !3481, !tbaa !1959
  %sub198 = sub nsw i32 %207, 1, !dbg !3482
  %idxprom199 = sext i32 %sub198 to i64, !dbg !3479
  %arrayidx200 = getelementptr inbounds i8, ptr %206, i64 %idxprom199, !dbg !3479
  store i8 93, ptr %arrayidx200, align 1, !dbg !3483, !tbaa !1878
  %208 = load ptr, ptr %b, align 8, !dbg !3484, !tbaa !1279
  %pos201 = getelementptr inbounds %struct.ngx_buf_s, ptr %208, i32 0, i32 0, !dbg !3485
  %209 = load ptr, ptr %pos201, align 8, !dbg !3485, !tbaa !3092
  %arrayidx202 = getelementptr inbounds [2 x i32], ptr %ovec, i64 0, i64 1, !dbg !3486
  %210 = load i32, ptr %arrayidx202, align 4, !dbg !3486, !tbaa !1959
  %idx.ext203 = sext i32 %210 to i64, !dbg !3487
  %add.ptr204 = getelementptr inbounds i8, ptr %209, i64 %idx.ext203, !dbg !3487
  %211 = load ptr, ptr %b, align 8, !dbg !3488, !tbaa !1279
  %last205 = getelementptr inbounds %struct.ngx_buf_s, ptr %211, i32 0, i32 1, !dbg !3489
  %212 = load ptr, ptr %last205, align 8, !dbg !3489, !tbaa !3119
  %213 = load ptr, ptr %p, align 8, !dbg !3490, !tbaa !1279
  %214 = load ptr, ptr %b, align 8, !dbg !3491, !tbaa !1279
  %pos206 = getelementptr inbounds %struct.ngx_buf_s, ptr %214, i32 0, i32 0, !dbg !3492
  %215 = load ptr, ptr %pos206, align 8, !dbg !3492, !tbaa !3092
  %arrayidx207 = getelementptr inbounds [2 x i32], ptr %ovec, i64 0, i64 1, !dbg !3493
  %216 = load i32, ptr %arrayidx207, align 4, !dbg !3493, !tbaa !1959
  %idx.ext208 = sext i32 %216 to i64, !dbg !3494
  %add.ptr209 = getelementptr inbounds i8, ptr %215, i64 %idx.ext208, !dbg !3494
  %217 = load ptr, ptr %p, align 8, !dbg !3495, !tbaa !1279
  %sub.ptr.lhs.cast210 = ptrtoint ptr %add.ptr209 to i64, !dbg !3496
  %sub.ptr.rhs.cast211 = ptrtoint ptr %217 to i64, !dbg !3496
  %sub.ptr.sub212 = sub i64 %sub.ptr.lhs.cast210, %sub.ptr.rhs.cast211, !dbg !3496
  %sub213 = sub nsw i64 %sub.ptr.sub212, 1, !dbg !3497
  %call214 = call ptr @ngx_stream_lua_strlstrn(ptr noundef %add.ptr204, ptr noundef %212, ptr noundef %213, i64 noundef %sub213), !dbg !3498
  store ptr %call214, ptr %q, align 8, !dbg !3499, !tbaa !1279
  %218 = load ptr, ptr %q, align 8, !dbg !3500, !tbaa !1279
  %cmp215 = icmp eq ptr %218, null, !dbg !3502
  br i1 %cmp215, label %if.then217, label %if.end225, !dbg !3503

if.then217:                                       ; preds = %if.end194
  %219 = load ptr, ptr %cf.addr, align 8, !dbg !3504, !tbaa !1279
  %220 = load ptr, ptr %b, align 8, !dbg !3506, !tbaa !1279
  %pos218 = getelementptr inbounds %struct.ngx_buf_s, ptr %220, i32 0, i32 0, !dbg !3507
  %221 = load ptr, ptr %pos218, align 8, !dbg !3507, !tbaa !3092
  %arrayidx219 = getelementptr inbounds [2 x i32], ptr %ovec, i64 0, i64 1, !dbg !3508
  %222 = load i32, ptr %arrayidx219, align 4, !dbg !3508, !tbaa !1959
  %idx.ext220 = sext i32 %222 to i64, !dbg !3509
  %add.ptr221 = getelementptr inbounds i8, ptr %221, i64 %idx.ext220, !dbg !3509
  %223 = load ptr, ptr %p, align 8, !dbg !3510, !tbaa !1279
  %sub.ptr.lhs.cast222 = ptrtoint ptr %add.ptr221 to i64, !dbg !3511
  %sub.ptr.rhs.cast223 = ptrtoint ptr %223 to i64, !dbg !3511
  %sub.ptr.sub224 = sub i64 %sub.ptr.lhs.cast222, %sub.ptr.rhs.cast223, !dbg !3511
  %224 = load ptr, ptr %p, align 8, !dbg !3512, !tbaa !1279
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %219, i32 noundef 0, ptr noundef @.str.23, i64 noundef %sub.ptr.sub224, ptr noundef %224), !dbg !3513
  store i64 -1, ptr %retval, align 8, !dbg !3514
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3514

if.end225:                                        ; preds = %if.end194
  %225 = load ptr, ptr %p, align 8, !dbg !3515, !tbaa !1279
  %arrayidx226 = getelementptr inbounds i8, ptr %225, i64 0, !dbg !3515
  store i8 91, ptr %arrayidx226, align 1, !dbg !3516, !tbaa !1878
  %226 = load ptr, ptr %b, align 8, !dbg !3517, !tbaa !1279
  %pos227 = getelementptr inbounds %struct.ngx_buf_s, ptr %226, i32 0, i32 0, !dbg !3518
  %227 = load ptr, ptr %pos227, align 8, !dbg !3518, !tbaa !3092
  %arrayidx228 = getelementptr inbounds [2 x i32], ptr %ovec, i64 0, i64 1, !dbg !3519
  %228 = load i32, ptr %arrayidx228, align 4, !dbg !3519, !tbaa !1959
  %sub229 = sub nsw i32 %228, 1, !dbg !3520
  %idxprom230 = sext i32 %sub229 to i64, !dbg !3517
  %arrayidx231 = getelementptr inbounds i8, ptr %227, i64 %idxprom230, !dbg !3517
  store i8 91, ptr %arrayidx231, align 1, !dbg !3521, !tbaa !1878
  %229 = load ptr, ptr %q, align 8, !dbg !3522, !tbaa !1279
  %230 = load ptr, ptr %b, align 8, !dbg !3523, !tbaa !1279
  %pos232 = getelementptr inbounds %struct.ngx_buf_s, ptr %230, i32 0, i32 0, !dbg !3524
  %231 = load ptr, ptr %pos232, align 8, !dbg !3524, !tbaa !3092
  %sub.ptr.lhs.cast233 = ptrtoint ptr %229 to i64, !dbg !3525
  %sub.ptr.rhs.cast234 = ptrtoint ptr %231 to i64, !dbg !3525
  %sub.ptr.sub235 = sub i64 %sub.ptr.lhs.cast233, %sub.ptr.rhs.cast234, !dbg !3525
  %232 = load ptr, ptr %b, align 8, !dbg !3526, !tbaa !1279
  %pos236 = getelementptr inbounds %struct.ngx_buf_s, ptr %232, i32 0, i32 0, !dbg !3527
  %233 = load ptr, ptr %pos236, align 8, !dbg !3527, !tbaa !3092
  %add.ptr237 = getelementptr inbounds i8, ptr %233, i64 %sub.ptr.sub235, !dbg !3528
  %arrayidx238 = getelementptr inbounds [2 x i32], ptr %ovec, i64 0, i64 1, !dbg !3529
  %234 = load i32, ptr %arrayidx238, align 4, !dbg !3529, !tbaa !1959
  %idx.ext239 = sext i32 %234 to i64, !dbg !3530
  %add.ptr240 = getelementptr inbounds i8, ptr %add.ptr237, i64 %idx.ext239, !dbg !3530
  %235 = load ptr, ptr %p, align 8, !dbg !3531, !tbaa !1279
  %sub.ptr.lhs.cast241 = ptrtoint ptr %add.ptr240 to i64, !dbg !3532
  %sub.ptr.rhs.cast242 = ptrtoint ptr %235 to i64, !dbg !3532
  %sub.ptr.sub243 = sub i64 %sub.ptr.lhs.cast241, %sub.ptr.rhs.cast242, !dbg !3532
  %conv244 = trunc i64 %sub.ptr.sub243 to i32, !dbg !3522
  %arrayidx245 = getelementptr inbounds [2 x i32], ptr %ovec, i64 0, i64 1, !dbg !3533
  store i32 %conv244, ptr %arrayidx245, align 4, !dbg !3534, !tbaa !1959
  br label %if.end246, !dbg !3535

if.end246:                                        ; preds = %if.end225, %lor.lhs.false167
  store i32 0, ptr %i, align 4, !dbg !3536, !tbaa !1959
  br label %for.cond247, !dbg !3538

for.cond247:                                      ; preds = %for.inc263, %if.end246
  %236 = load i32, ptr %i, align 4, !dbg !3539, !tbaa !1959
  %arrayidx248 = getelementptr inbounds [2 x i32], ptr %ovec, i64 0, i64 1, !dbg !3541
  %237 = load i32, ptr %arrayidx248, align 4, !dbg !3541, !tbaa !1959
  %cmp249 = icmp slt i32 %236, %237, !dbg !3542
  br i1 %cmp249, label %for.body251, label %for.end265, !dbg !3543

for.body251:                                      ; preds = %for.cond247
  %238 = load ptr, ptr %b, align 8, !dbg !3544, !tbaa !1279
  %pos252 = getelementptr inbounds %struct.ngx_buf_s, ptr %238, i32 0, i32 0, !dbg !3546
  %239 = load ptr, ptr %pos252, align 8, !dbg !3546, !tbaa !3092
  %240 = load i32, ptr %i, align 4, !dbg !3547, !tbaa !1959
  %idxprom253 = sext i32 %240 to i64, !dbg !3544
  %arrayidx254 = getelementptr inbounds i8, ptr %239, i64 %idxprom253, !dbg !3544
  %241 = load i8, ptr %arrayidx254, align 1, !dbg !3544, !tbaa !1878
  store i8 %241, ptr %ch, align 1, !dbg !3548, !tbaa !1878
  %242 = load i8, ptr %ch, align 1, !dbg !3549, !tbaa !1878
  %conv255 = zext i8 %242 to i32, !dbg !3549
  %cmp256 = icmp eq i32 %conv255, 10, !dbg !3551
  br i1 %cmp256, label %if.then258, label %if.end262, !dbg !3552

if.then258:                                       ; preds = %for.body251
  %243 = load ptr, ptr %cf.addr, align 8, !dbg !3553, !tbaa !1279
  %conf_file259 = getelementptr inbounds %struct.ngx_conf_s, ptr %243, i32 0, i32 5, !dbg !3555
  %244 = load ptr, ptr %conf_file259, align 8, !dbg !3555, !tbaa !1981
  %line260 = getelementptr inbounds %struct.ngx_conf_file_t, ptr %244, i32 0, i32 3, !dbg !3556
  %245 = load i64, ptr %line260, align 8, !dbg !3557, !tbaa !2020
  %inc261 = add i64 %245, 1, !dbg !3557
  store i64 %inc261, ptr %line260, align 8, !dbg !3557, !tbaa !2020
  br label %if.end262, !dbg !3558

if.end262:                                        ; preds = %if.then258, %for.body251
  br label %for.inc263, !dbg !3559

for.inc263:                                       ; preds = %if.end262
  %246 = load i32, ptr %i, align 4, !dbg !3560, !tbaa !1959
  %inc264 = add nsw i32 %246, 1, !dbg !3560
  store i32 %inc264, ptr %i, align 4, !dbg !3560, !tbaa !1959
  br label %for.cond247, !dbg !3561, !llvm.loop !3562

for.end265:                                       ; preds = %for.cond247
  %arrayidx266 = getelementptr inbounds [2 x i32], ptr %ovec, i64 0, i64 1, !dbg !3564
  %247 = load i32, ptr %arrayidx266, align 4, !dbg !3564, !tbaa !1959
  %248 = load ptr, ptr %b, align 8, !dbg !3565, !tbaa !1279
  %pos267 = getelementptr inbounds %struct.ngx_buf_s, ptr %248, i32 0, i32 0, !dbg !3566
  %249 = load ptr, ptr %pos267, align 8, !dbg !3567, !tbaa !3092
  %idx.ext268 = sext i32 %247 to i64, !dbg !3567
  %add.ptr269 = getelementptr inbounds i8, ptr %249, i64 %idx.ext268, !dbg !3567
  store ptr %add.ptr269, ptr %pos267, align 8, !dbg !3567, !tbaa !3092
  %arrayidx270 = getelementptr inbounds [2 x i32], ptr %ovec, i64 0, i64 1, !dbg !3568
  %250 = load i32, ptr %arrayidx270, align 4, !dbg !3568, !tbaa !1959
  %arrayidx271 = getelementptr inbounds [2 x i32], ptr %ovec, i64 0, i64 0, !dbg !3569
  %251 = load i32, ptr %arrayidx271, align 4, !dbg !3569, !tbaa !1959
  %sub272 = sub nsw i32 %250, %251, !dbg !3570
  %252 = load ptr, ptr %ctx.addr, align 8, !dbg !3571, !tbaa !1279
  %token_len = getelementptr inbounds %struct.ngx_stream_lua_block_parser_ctx_s, ptr %252, i32 0, i32 1, !dbg !3572
  store i32 %sub272, ptr %token_len, align 8, !dbg !3573, !tbaa !2015
  br label %for.end273, !dbg !3574

for.end273:                                       ; preds = %for.end265
  %253 = load ptr, ptr %cf.addr, align 8, !dbg !3575, !tbaa !1279
  %args = getelementptr inbounds %struct.ngx_conf_s, ptr %253, i32 0, i32 1, !dbg !3576
  %254 = load ptr, ptr %args, align 8, !dbg !3576, !tbaa !1339
  %call274 = call ptr @ngx_array_push(ptr noundef %254), !dbg !3577
  store ptr %call274, ptr %word, align 8, !dbg !3578, !tbaa !1279
  %255 = load ptr, ptr %word, align 8, !dbg !3579, !tbaa !1279
  %cmp275 = icmp eq ptr %255, null, !dbg !3581
  br i1 %cmp275, label %if.then277, label %if.end278, !dbg !3582

if.then277:                                       ; preds = %for.end273
  store i64 -1, ptr %retval, align 8, !dbg !3583
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3583

if.end278:                                        ; preds = %for.end273
  %256 = load ptr, ptr %cf.addr, align 8, !dbg !3585, !tbaa !1279
  %temp_pool = getelementptr inbounds %struct.ngx_conf_s, ptr %256, i32 0, i32 4, !dbg !3586
  %257 = load ptr, ptr %temp_pool, align 8, !dbg !3586, !tbaa !2001
  %258 = load ptr, ptr %b, align 8, !dbg !3587, !tbaa !1279
  %pos279 = getelementptr inbounds %struct.ngx_buf_s, ptr %258, i32 0, i32 0, !dbg !3588
  %259 = load ptr, ptr %pos279, align 8, !dbg !3588, !tbaa !3092
  %260 = load ptr, ptr %start, align 8, !dbg !3589, !tbaa !1279
  %sub.ptr.lhs.cast280 = ptrtoint ptr %259 to i64, !dbg !3590
  %sub.ptr.rhs.cast281 = ptrtoint ptr %260 to i64, !dbg !3590
  %sub.ptr.sub282 = sub i64 %sub.ptr.lhs.cast280, %sub.ptr.rhs.cast281, !dbg !3590
  %call283 = call ptr @ngx_pnalloc(ptr noundef %257, i64 noundef %sub.ptr.sub282), !dbg !3591
  %261 = load ptr, ptr %word, align 8, !dbg !3592, !tbaa !1279
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %261, i32 0, i32 1, !dbg !3593
  store ptr %call283, ptr %data, align 8, !dbg !3594, !tbaa !1602
  %262 = load ptr, ptr %word, align 8, !dbg !3595, !tbaa !1279
  %data284 = getelementptr inbounds %struct.ngx_str_t, ptr %262, i32 0, i32 1, !dbg !3597
  %263 = load ptr, ptr %data284, align 8, !dbg !3597, !tbaa !1602
  %cmp285 = icmp eq ptr %263, null, !dbg !3598
  br i1 %cmp285, label %if.then287, label %if.end288, !dbg !3599

if.then287:                                       ; preds = %if.end278
  store i64 -1, ptr %retval, align 8, !dbg !3600
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3600

if.end288:                                        ; preds = %if.end278
  %264 = load ptr, ptr %b, align 8, !dbg !3602, !tbaa !1279
  %pos289 = getelementptr inbounds %struct.ngx_buf_s, ptr %264, i32 0, i32 0, !dbg !3603
  %265 = load ptr, ptr %pos289, align 8, !dbg !3603, !tbaa !3092
  %266 = load ptr, ptr %start, align 8, !dbg !3604, !tbaa !1279
  %sub.ptr.lhs.cast290 = ptrtoint ptr %265 to i64, !dbg !3605
  %sub.ptr.rhs.cast291 = ptrtoint ptr %266 to i64, !dbg !3605
  %sub.ptr.sub292 = sub i64 %sub.ptr.lhs.cast290, %sub.ptr.rhs.cast291, !dbg !3605
  store i64 %sub.ptr.sub292, ptr %len, align 8, !dbg !3606, !tbaa !1358
  %267 = load ptr, ptr %word, align 8, !dbg !3607, !tbaa !1279
  %data293 = getelementptr inbounds %struct.ngx_str_t, ptr %267, i32 0, i32 1, !dbg !3607
  %268 = load ptr, ptr %data293, align 8, !dbg !3607, !tbaa !1602
  %269 = load ptr, ptr %start, align 8, !dbg !3607, !tbaa !1279
  %270 = load i64, ptr %len, align 8, !dbg !3607, !tbaa !1358
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %268, ptr align 1 %269, i64 %270, i1 false), !dbg !3607
  %271 = load i64, ptr %len, align 8, !dbg !3608, !tbaa !1358
  %272 = load ptr, ptr %word, align 8, !dbg !3609, !tbaa !1279
  %len294 = getelementptr inbounds %struct.ngx_str_t, ptr %272, i32 0, i32 0, !dbg !3610
  store i64 %271, ptr %len294, align 8, !dbg !3611, !tbaa !1348
  %273 = load i32, ptr %rc, align 4, !dbg !3612, !tbaa !1959
  %conv295 = sext i32 %273 to i64, !dbg !3612
  store i64 %conv295, ptr %retval, align 8, !dbg !3613
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3613

cleanup:                                          ; preds = %if.end288, %if.then287, %if.then277, %if.then217, %if.then156, %if.then153, %if.then116, %if.then105, %if.then69, %if.then66, %if.then34, %if.then25
  call void @llvm.lifetime.end.p0(i64 8, ptr %dump) #8, !dbg !3614
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #8, !dbg !3614
  call void @llvm.lifetime.end.p0(i64 8, ptr %word) #8, !dbg !3614
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_line) #8, !dbg !3614
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #8, !dbg !3614
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8, !dbg !3614
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf_size) #8, !dbg !3614
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #8, !dbg !3614
  call void @llvm.lifetime.end.p0(i64 8, ptr %file_size) #8, !dbg !3614
  call void @llvm.lifetime.end.p0(i64 1, ptr %ch) #8, !dbg !3614
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #8, !dbg !3614
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !3614
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #8, !dbg !3614
  call void @llvm.lifetime.end.p0(i64 8, ptr %ovec) #8, !dbg !3614
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #8, !dbg !3614
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !3614
  %274 = load i64, ptr %retval, align 8, !dbg !3614
  ret i64 %274, !dbg !3614
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ngx_stream_lua_capture_error_log(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !3615 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  %size = alloca i64, align 8
  %data = alloca ptr, align 8
  %cycle = alloca ptr, align 8
  %lmcf = alloca ptr, align 8
  %ringbuf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !3617, metadata !DIExpression()), !dbg !3626
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !3618, metadata !DIExpression()), !dbg !3627
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !3619, metadata !DIExpression()), !dbg !3628
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #8, !dbg !3629
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !3620, metadata !DIExpression()), !dbg !3630
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #8, !dbg !3631
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !3621, metadata !DIExpression()), !dbg !3632
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #8, !dbg !3633
  tail call void @llvm.dbg.declare(metadata ptr %data, metadata !3622, metadata !DIExpression()), !dbg !3634
  call void @llvm.lifetime.start.p0(i64 8, ptr %cycle) #8, !dbg !3635
  tail call void @llvm.dbg.declare(metadata ptr %cycle, metadata !3623, metadata !DIExpression()), !dbg !3636
  call void @llvm.lifetime.start.p0(i64 8, ptr %lmcf) #8, !dbg !3637
  tail call void @llvm.dbg.declare(metadata ptr %lmcf, metadata !3624, metadata !DIExpression()), !dbg !3638
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !3639, !tbaa !1279
  store ptr %0, ptr %lmcf, align 8, !dbg !3638, !tbaa !1279
  call void @llvm.lifetime.start.p0(i64 8, ptr %ringbuf) #8, !dbg !3640
  tail call void @llvm.dbg.declare(metadata ptr %ringbuf, metadata !3625, metadata !DIExpression()), !dbg !3641
  %1 = load ptr, ptr %cf.addr, align 8, !dbg !3642, !tbaa !1279
  %args = getelementptr inbounds %struct.ngx_conf_s, ptr %1, i32 0, i32 1, !dbg !3643
  %2 = load ptr, ptr %args, align 8, !dbg !3643, !tbaa !1339
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %2, i32 0, i32 0, !dbg !3644
  %3 = load ptr, ptr %elts, align 8, !dbg !3644, !tbaa !1341
  store ptr %3, ptr %value, align 8, !dbg !3645, !tbaa !1279
  %4 = load ptr, ptr %cf.addr, align 8, !dbg !3646, !tbaa !1279
  %cycle1 = getelementptr inbounds %struct.ngx_conf_s, ptr %4, i32 0, i32 2, !dbg !3647
  %5 = load ptr, ptr %cycle1, align 8, !dbg !3647, !tbaa !1392
  store ptr %5, ptr %cycle, align 8, !dbg !3648, !tbaa !1279
  %6 = load ptr, ptr %lmcf, align 8, !dbg !3649, !tbaa !1279
  %requires_capture_log = getelementptr inbounds %struct.ngx_stream_lua_main_conf_s, ptr %6, i32 0, i32 26, !dbg !3651
  %bf.load = load i8, ptr %requires_capture_log, align 8, !dbg !3651
  %bf.lshr = lshr i8 %bf.load, 3, !dbg !3651
  %bf.clear = and i8 %bf.lshr, 1, !dbg !3651
  %bf.cast = zext i8 %bf.clear to i32, !dbg !3651
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !3649
  br i1 %tobool, label %if.then, label %if.end, !dbg !3652

if.then:                                          ; preds = %entry
  store ptr @.str.4, ptr %retval, align 8, !dbg !3653
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3653

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %value, align 8, !dbg !3655, !tbaa !1279
  %arrayidx = getelementptr inbounds %struct.ngx_str_t, ptr %7, i64 1, !dbg !3655
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx, i32 0, i32 0, !dbg !3657
  %8 = load i64, ptr %len, align 8, !dbg !3657, !tbaa !1348
  %cmp = icmp eq i64 %8, 0, !dbg !3658
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !3659

if.then2:                                         ; preds = %if.end
  %9 = load ptr, ptr %cf.addr, align 8, !dbg !3660, !tbaa !1279
  %10 = load ptr, ptr %value, align 8, !dbg !3662, !tbaa !1279
  %arrayidx3 = getelementptr inbounds %struct.ngx_str_t, ptr %10, i64 1, !dbg !3662
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %9, i32 noundef 0, ptr noundef @.str.15, ptr noundef %arrayidx3), !dbg !3663
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !3664
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3664

if.end4:                                          ; preds = %if.end
  %11 = load ptr, ptr %value, align 8, !dbg !3665, !tbaa !1279
  %arrayidx5 = getelementptr inbounds %struct.ngx_str_t, ptr %11, i64 1, !dbg !3665
  %call = call i64 @ngx_parse_size(ptr noundef %arrayidx5), !dbg !3666
  store i64 %call, ptr %size, align 8, !dbg !3667, !tbaa !1358
  %12 = load i64, ptr %size, align 8, !dbg !3668, !tbaa !1358
  %cmp6 = icmp slt i64 %12, 4096, !dbg !3670
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !3671

if.then7:                                         ; preds = %if.end4
  %13 = load ptr, ptr %cf.addr, align 8, !dbg !3672, !tbaa !1279
  %14 = load ptr, ptr %value, align 8, !dbg !3674, !tbaa !1279
  %arrayidx8 = getelementptr inbounds %struct.ngx_str_t, ptr %14, i64 1, !dbg !3674
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %13, i32 noundef 0, ptr noundef @.str.16, ptr noundef %arrayidx8, i32 noundef 4096), !dbg !3675
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !3676
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3676

if.end9:                                          ; preds = %if.end4
  %15 = load ptr, ptr %cycle, align 8, !dbg !3677, !tbaa !1279
  %intercept_error_log_handler = getelementptr inbounds %struct.ngx_cycle_s, ptr %15, i32 0, i32 32, !dbg !3679
  %16 = load ptr, ptr %intercept_error_log_handler, align 8, !dbg !3679, !tbaa !3680
  %tobool10 = icmp ne ptr %16, null, !dbg !3677
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !3688

if.then11:                                        ; preds = %if.end9
  store ptr @.str.17, ptr %retval, align 8, !dbg !3689
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3689

if.end12:                                         ; preds = %if.end9
  %17 = load ptr, ptr %cf.addr, align 8, !dbg !3691, !tbaa !1279
  %pool = getelementptr inbounds %struct.ngx_conf_s, ptr %17, i32 0, i32 3, !dbg !3692
  %18 = load ptr, ptr %pool, align 8, !dbg !3692, !tbaa !1313
  %call13 = call ptr @ngx_palloc(ptr noundef %18, i64 noundef 56), !dbg !3693
  store ptr %call13, ptr %ringbuf, align 8, !dbg !3694, !tbaa !1279
  %19 = load ptr, ptr %ringbuf, align 8, !dbg !3695, !tbaa !1279
  %cmp14 = icmp eq ptr %19, null, !dbg !3697
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !3698

if.then15:                                        ; preds = %if.end12
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !3699
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3699

if.end16:                                         ; preds = %if.end12
  %20 = load ptr, ptr %cf.addr, align 8, !dbg !3701, !tbaa !1279
  %pool17 = getelementptr inbounds %struct.ngx_conf_s, ptr %20, i32 0, i32 3, !dbg !3702
  %21 = load ptr, ptr %pool17, align 8, !dbg !3702, !tbaa !1313
  %22 = load i64, ptr %size, align 8, !dbg !3703, !tbaa !1358
  %call18 = call ptr @ngx_palloc(ptr noundef %21, i64 noundef %22), !dbg !3704
  store ptr %call18, ptr %data, align 8, !dbg !3705, !tbaa !1279
  %23 = load ptr, ptr %data, align 8, !dbg !3706, !tbaa !1279
  %cmp19 = icmp eq ptr %23, null, !dbg !3708
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !3709

if.then20:                                        ; preds = %if.end16
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !3710
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3710

if.end21:                                         ; preds = %if.end16
  %24 = load ptr, ptr %ringbuf, align 8, !dbg !3712, !tbaa !1279
  %25 = load ptr, ptr %data, align 8, !dbg !3713, !tbaa !1279
  %26 = load i64, ptr %size, align 8, !dbg !3714, !tbaa !1358
  call void @ngx_stream_lua_log_ringbuf_init(ptr noundef %24, ptr noundef %25, i64 noundef %26), !dbg !3715
  %27 = load ptr, ptr %lmcf, align 8, !dbg !3716, !tbaa !1279
  %requires_capture_log22 = getelementptr inbounds %struct.ngx_stream_lua_main_conf_s, ptr %27, i32 0, i32 26, !dbg !3717
  %bf.load23 = load i8, ptr %requires_capture_log22, align 8, !dbg !3718
  %bf.clear24 = and i8 %bf.load23, -9, !dbg !3718
  %bf.set = or i8 %bf.clear24, 8, !dbg !3718
  store i8 %bf.set, ptr %requires_capture_log22, align 8, !dbg !3718
  %28 = load ptr, ptr %cycle, align 8, !dbg !3719, !tbaa !1279
  %intercept_error_log_handler25 = getelementptr inbounds %struct.ngx_cycle_s, ptr %28, i32 0, i32 32, !dbg !3720
  store ptr @ngx_stream_lua_capture_log_handler, ptr %intercept_error_log_handler25, align 8, !dbg !3721, !tbaa !3680
  %29 = load ptr, ptr %ringbuf, align 8, !dbg !3722, !tbaa !1279
  %30 = load ptr, ptr %cycle, align 8, !dbg !3723, !tbaa !1279
  %intercept_error_log_data = getelementptr inbounds %struct.ngx_cycle_s, ptr %30, i32 0, i32 33, !dbg !3724
  store ptr %29, ptr %intercept_error_log_data, align 8, !dbg !3725, !tbaa !3726
  store ptr null, ptr %retval, align 8, !dbg !3727
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3727

cleanup:                                          ; preds = %if.end21, %if.then20, %if.then15, %if.then11, %if.then7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ringbuf) #8, !dbg !3728
  call void @llvm.lifetime.end.p0(i64 8, ptr %lmcf) #8, !dbg !3728
  call void @llvm.lifetime.end.p0(i64 8, ptr %cycle) #8, !dbg !3728
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #8, !dbg !3728
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #8, !dbg !3728
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #8, !dbg !3728
  %31 = load ptr, ptr %retval, align 8, !dbg !3728
  ret ptr %31, !dbg !3728
}

declare !dbg !3729 void @ngx_stream_lua_log_ringbuf_init(ptr noundef, ptr noundef, i64 noundef) #2

declare i64 @ngx_stream_lua_capture_log_handler(ptr noundef, i64 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ngx_stream_lua_add_variable(ptr noundef %cf, ptr noundef %cmd, ptr noundef %conf) #0 !dbg !3732 {
entry:
  %retval = alloca ptr, align 8
  %cf.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %conf.addr = alloca ptr, align 8
  %var = alloca ptr, align 8
  %value = alloca ptr, align 8
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cf, ptr %cf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cf.addr, metadata !3734, metadata !DIExpression()), !dbg !3758
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !3735, metadata !DIExpression()), !dbg !3759
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !3736, metadata !DIExpression()), !dbg !3760
  call void @llvm.lifetime.start.p0(i64 8, ptr %var) #8, !dbg !3761
  tail call void @llvm.dbg.declare(metadata ptr %var, metadata !3737, metadata !DIExpression()), !dbg !3762
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #8, !dbg !3763
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !3756, metadata !DIExpression()), !dbg !3764
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8, !dbg !3765
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !3757, metadata !DIExpression()), !dbg !3766
  %0 = load ptr, ptr %cf.addr, align 8, !dbg !3767, !tbaa !1279
  %args = getelementptr inbounds %struct.ngx_conf_s, ptr %0, i32 0, i32 1, !dbg !3768
  %1 = load ptr, ptr %args, align 8, !dbg !3768, !tbaa !1339
  %elts = getelementptr inbounds %struct.ngx_array_t, ptr %1, i32 0, i32 0, !dbg !3769
  %2 = load ptr, ptr %elts, align 8, !dbg !3769, !tbaa !1341
  store ptr %2, ptr %value, align 8, !dbg !3770, !tbaa !1279
  %3 = load ptr, ptr %value, align 8, !dbg !3771, !tbaa !1279
  %arrayidx = getelementptr inbounds %struct.ngx_str_t, ptr %3, i64 1, !dbg !3771
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx, i32 0, i32 1, !dbg !3773
  %4 = load ptr, ptr %data, align 8, !dbg !3773, !tbaa !1602
  %arrayidx1 = getelementptr inbounds i8, ptr %4, i64 0, !dbg !3771
  %5 = load i8, ptr %arrayidx1, align 1, !dbg !3771, !tbaa !1878
  %conv = zext i8 %5 to i32, !dbg !3771
  %cmp = icmp ne i32 %conv, 36, !dbg !3774
  br i1 %cmp, label %if.then, label %if.end, !dbg !3775

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %cf.addr, align 8, !dbg !3776, !tbaa !1279
  %7 = load ptr, ptr %value, align 8, !dbg !3778, !tbaa !1279
  %arrayidx3 = getelementptr inbounds %struct.ngx_str_t, ptr %7, i64 1, !dbg !3778
  call void (i64, ptr, i32, ptr, ...) @ngx_conf_log_error(i64 noundef 1, ptr noundef %6, i32 noundef 0, ptr noundef @.str.18, ptr noundef %arrayidx3), !dbg !3779
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !3780
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3780

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %value, align 8, !dbg !3781, !tbaa !1279
  %arrayidx4 = getelementptr inbounds %struct.ngx_str_t, ptr %8, i64 1, !dbg !3781
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx4, i32 0, i32 0, !dbg !3782
  %9 = load i64, ptr %len, align 8, !dbg !3783, !tbaa !1348
  %dec = add i64 %9, -1, !dbg !3783
  store i64 %dec, ptr %len, align 8, !dbg !3783, !tbaa !1348
  %10 = load ptr, ptr %value, align 8, !dbg !3784, !tbaa !1279
  %arrayidx5 = getelementptr inbounds %struct.ngx_str_t, ptr %10, i64 1, !dbg !3784
  %data6 = getelementptr inbounds %struct.ngx_str_t, ptr %arrayidx5, i32 0, i32 1, !dbg !3785
  %11 = load ptr, ptr %data6, align 8, !dbg !3786, !tbaa !1602
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i32 1, !dbg !3786
  store ptr %incdec.ptr, ptr %data6, align 8, !dbg !3786, !tbaa !1602
  %12 = load ptr, ptr %cf.addr, align 8, !dbg !3787, !tbaa !1279
  %13 = load ptr, ptr %value, align 8, !dbg !3788, !tbaa !1279
  %add.ptr = getelementptr inbounds %struct.ngx_str_t, ptr %13, i64 1, !dbg !3789
  %call = call ptr @ngx_stream_add_variable(ptr noundef %12, ptr noundef %add.ptr, i64 noundef 17), !dbg !3790
  store ptr %call, ptr %var, align 8, !dbg !3791, !tbaa !1279
  %14 = load ptr, ptr %var, align 8, !dbg !3792, !tbaa !1279
  %cmp7 = icmp eq ptr %14, null, !dbg !3794
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !3795

if.then9:                                         ; preds = %if.end
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !3796
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3796

if.end10:                                         ; preds = %if.end
  %15 = load ptr, ptr %var, align 8, !dbg !3798, !tbaa !1279
  %get_handler = getelementptr inbounds %struct.ngx_stream_variable_s, ptr %15, i32 0, i32 2, !dbg !3800
  %16 = load ptr, ptr %get_handler, align 8, !dbg !3800, !tbaa !3801
  %cmp11 = icmp eq ptr %16, null, !dbg !3803
  br i1 %cmp11, label %if.then13, label %if.end15, !dbg !3804

if.then13:                                        ; preds = %if.end10
  %17 = load ptr, ptr %var, align 8, !dbg !3805, !tbaa !1279
  %get_handler14 = getelementptr inbounds %struct.ngx_stream_variable_s, ptr %17, i32 0, i32 2, !dbg !3807
  store ptr @ngx_stream_lua_undefined_var, ptr %get_handler14, align 8, !dbg !3808, !tbaa !3801
  br label %if.end15, !dbg !3809

if.end15:                                         ; preds = %if.then13, %if.end10
  %18 = load ptr, ptr %cf.addr, align 8, !dbg !3810, !tbaa !1279
  %19 = load ptr, ptr %value, align 8, !dbg !3811, !tbaa !1279
  %add.ptr16 = getelementptr inbounds %struct.ngx_str_t, ptr %19, i64 1, !dbg !3812
  %call17 = call i64 @ngx_stream_get_variable_index(ptr noundef %18, ptr noundef %add.ptr16), !dbg !3813
  store i64 %call17, ptr %ret, align 8, !dbg !3814, !tbaa !1358
  %20 = load i64, ptr %ret, align 8, !dbg !3815, !tbaa !1358
  %cmp18 = icmp eq i64 %20, -1, !dbg !3817
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !3818

if.then20:                                        ; preds = %if.end15
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !3819
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3819

if.end21:                                         ; preds = %if.end15
  store ptr null, ptr %retval, align 8, !dbg !3821
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3821

cleanup:                                          ; preds = %if.end21, %if.then20, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8, !dbg !3822
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #8, !dbg !3822
  call void @llvm.lifetime.end.p0(i64 8, ptr %var) #8, !dbg !3822
  %21 = load ptr, ptr %retval, align 8, !dbg !3822
  ret ptr %21, !dbg !3822
}

declare !dbg !3823 ptr @ngx_stream_add_variable(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @ngx_stream_lua_undefined_var(ptr noundef %s, ptr noundef %v, i64 noundef %data) #0 !dbg !3826 {
entry:
  %s.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %data.addr = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3828, metadata !DIExpression()), !dbg !3831
  store ptr %v, ptr %v.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3829, metadata !DIExpression()), !dbg !3832
  store i64 %data, ptr %data.addr, align 8, !tbaa !1358
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !3830, metadata !DIExpression()), !dbg !3833
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3834, !tbaa !1279
  %bf.load = load i32, ptr %0, align 8, !dbg !3835
  %bf.clear = and i32 %bf.load, -1073741825, !dbg !3835
  %bf.set = or i32 %bf.clear, 1073741824, !dbg !3835
  store i32 %bf.set, ptr %0, align 8, !dbg !3835
  ret i64 0, !dbg !3836
}

declare !dbg !3837 i64 @ngx_stream_get_variable_index(ptr noundef, ptr noundef) #2

declare !dbg !3840 ptr @ngx_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

declare !dbg !3843 i64 @ngx_read_file(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

declare !dbg !3846 i32 @ngx_stream_lua_lex(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @ngx_stream_lua_strlstrn(ptr noundef %s1, ptr noundef %last, ptr noundef %s2, i64 noundef %n) #0 !dbg !3853 {
entry:
  %retval = alloca ptr, align 8
  %s1.addr = alloca ptr, align 8
  %last.addr = alloca ptr, align 8
  %s2.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %c1 = alloca i64, align 8
  %c2 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s1, ptr %s1.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %s1.addr, metadata !3857, metadata !DIExpression()), !dbg !3863
  store ptr %last, ptr %last.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !3858, metadata !DIExpression()), !dbg !3864
  store ptr %s2, ptr %s2.addr, align 8, !tbaa !1279
  tail call void @llvm.dbg.declare(metadata ptr %s2.addr, metadata !3859, metadata !DIExpression()), !dbg !3865
  store i64 %n, ptr %n.addr, align 8, !tbaa !1358
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3860, metadata !DIExpression()), !dbg !3866
  call void @llvm.lifetime.start.p0(i64 8, ptr %c1) #8, !dbg !3867
  tail call void @llvm.dbg.declare(metadata ptr %c1, metadata !3861, metadata !DIExpression()), !dbg !3868
  call void @llvm.lifetime.start.p0(i64 8, ptr %c2) #8, !dbg !3867
  tail call void @llvm.dbg.declare(metadata ptr %c2, metadata !3862, metadata !DIExpression()), !dbg !3869
  %0 = load ptr, ptr %s2.addr, align 8, !dbg !3870, !tbaa !1279
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i32 1, !dbg !3870
  store ptr %incdec.ptr, ptr %s2.addr, align 8, !dbg !3870, !tbaa !1279
  %1 = load i8, ptr %0, align 1, !dbg !3871, !tbaa !1878
  %conv = zext i8 %1 to i64, !dbg !3872
  store i64 %conv, ptr %c2, align 8, !dbg !3873, !tbaa !1358
  %2 = load i64, ptr %n.addr, align 8, !dbg !3874, !tbaa !1358
  %3 = load ptr, ptr %last.addr, align 8, !dbg !3875, !tbaa !1279
  %idx.neg = sub i64 0, %2, !dbg !3875
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.neg, !dbg !3875
  store ptr %add.ptr, ptr %last.addr, align 8, !dbg !3875, !tbaa !1279
  br label %do.body, !dbg !3876

do.body:                                          ; preds = %do.cond7, %entry
  br label %do.body1, !dbg !3877

do.body1:                                         ; preds = %do.cond, %do.body
  %4 = load ptr, ptr %s1.addr, align 8, !dbg !3879, !tbaa !1279
  %5 = load ptr, ptr %last.addr, align 8, !dbg !3882, !tbaa !1279
  %cmp = icmp uge ptr %4, %5, !dbg !3883
  br i1 %cmp, label %if.then, label %if.end, !dbg !3884

if.then:                                          ; preds = %do.body1
  store ptr null, ptr %retval, align 8, !dbg !3885
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3885

if.end:                                           ; preds = %do.body1
  %6 = load ptr, ptr %s1.addr, align 8, !dbg !3887, !tbaa !1279
  %incdec.ptr3 = getelementptr inbounds i8, ptr %6, i32 1, !dbg !3887
  store ptr %incdec.ptr3, ptr %s1.addr, align 8, !dbg !3887, !tbaa !1279
  %7 = load i8, ptr %6, align 1, !dbg !3888, !tbaa !1878
  %conv4 = zext i8 %7 to i64, !dbg !3889
  store i64 %conv4, ptr %c1, align 8, !dbg !3890, !tbaa !1358
  br label %do.cond, !dbg !3891

do.cond:                                          ; preds = %if.end
  %8 = load i64, ptr %c1, align 8, !dbg !3892, !tbaa !1358
  %9 = load i64, ptr %c2, align 8, !dbg !3893, !tbaa !1358
  %cmp5 = icmp ne i64 %8, %9, !dbg !3894
  br i1 %cmp5, label %do.body1, label %do.end, !dbg !3891, !llvm.loop !3895

do.end:                                           ; preds = %do.cond
  br label %do.cond7, !dbg !3897

do.cond7:                                         ; preds = %do.end
  %10 = load ptr, ptr %s1.addr, align 8, !dbg !3898, !tbaa !1279
  %11 = load ptr, ptr %s2.addr, align 8, !dbg !3898, !tbaa !1279
  %12 = load i64, ptr %n.addr, align 8, !dbg !3898, !tbaa !1358
  %call = call i32 @strncmp(ptr noundef %10, ptr noundef %11, i64 noundef %12) #9, !dbg !3898
  %cmp8 = icmp ne i32 %call, 0, !dbg !3899
  br i1 %cmp8, label %do.body, label %do.end10, !dbg !3897, !llvm.loop !3900

do.end10:                                         ; preds = %do.cond7
  %13 = load ptr, ptr %s1.addr, align 8, !dbg !3902, !tbaa !1279
  %incdec.ptr11 = getelementptr inbounds i8, ptr %13, i32 -1, !dbg !3902
  store ptr %incdec.ptr11, ptr %s1.addr, align 8, !dbg !3902, !tbaa !1279
  store ptr %incdec.ptr11, ptr %retval, align 8, !dbg !3903
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3903

cleanup:                                          ; preds = %do.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %c2) #8, !dbg !3904
  call void @llvm.lifetime.end.p0(i64 8, ptr %c1) #8, !dbg !3904
  %14 = load ptr, ptr %retval, align 8, !dbg !3904
  ret ptr %14, !dbg !3904
}

declare !dbg !3905 ptr @ngx_pnalloc(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !3906 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #6

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

!llvm.dbg.cu = !{!107}
!llvm.module.flags = !{!1180, !1181, !1182, !1183, !1184, !1185}
!llvm.ident = !{!1186}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../ngx_stream_lua-0.0.7/src/ngx_stream_lua_directive.c", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6461c2c31ecc69695bec0701f27e8b92")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 34)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 135, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 48)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 172, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 57)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 13)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 276, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 44)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 282, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 15)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 304, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 6)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 328, type: !36, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 397, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 46)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !2, line: 402, type: !31, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 524, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 11)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 818, type: !11, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 834, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 47)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 903, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 40)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1200, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 36)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1209, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 56)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1216, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 42)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1298, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 27)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 751, type: !31, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 966, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 608, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 76)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 979, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 65)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1004, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 45)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1128, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 54)
!107 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !108, retainedTypes: !738, globals: !1179, splitDebugInlining: false, nameTableKind: None)
!108 = !{!109, !726}
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !110, file: !2, line: 775, baseType: !213, size: 32, elements: !723)
!110 = distinct !DISubprogram(name: "ngx_stream_lua_conf_lua_block_parse", scope: !2, file: !2, line: 763, type: !111, scopeLine: 764, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !700)
!111 = !DISubroutineType(types: !112)
!112 = !{!113, !114, !598}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_t", file: !116, line: 16, baseType: !117)
!116 = !DIFile(filename: "src/core/ngx_core.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1c4d8383f329aa1de050d17038ecb169")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_conf_s", file: !118, line: 116, size: 768, elements: !119)
!118 = !DIFile(filename: "src/core/ngx_conf_file.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6ae6b72e2fd6bbb6ecc9de2e6386072c")
!119 = !{!120, !121, !317, !682, !683, !684, !693, !694, !695, !696, !697, !699}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !117, file: !118, line: 117, baseType: !113, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !117, file: !118, line: 118, baseType: !122, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_array_t", file: !124, line: 22, baseType: !125)
!124 = !DIFile(filename: "src/core/ngx_array.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "225c765b8c2d594417b07329b35d9ae4")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 16, size: 320, elements: !126)
!126 = !{!127, !129, !135, !138, !139}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !125, file: !124, line: 17, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !125, file: !124, line: 18, baseType: !130, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_uint_t", file: !131, line: 79, baseType: !132)
!131 = !DIFile(filename: "src/core/ngx_config.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1030e66de4bc6fae79f292da1593286a")
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !133, line: 90, baseType: !134)
!133 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!134 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !125, file: !124, line: 19, baseType: !136, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !137, line: 29, baseType: !134)
!137 = !DIFile(filename: "/usr/include/glob.h", directory: "", checksumkind: CSK_MD5, checksum: "fe493b50b1dc220fe9bcfb4d648abdef")
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !125, file: !124, line: 20, baseType: !130, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !125, file: !124, line: 21, baseType: !140, size: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_t", file: !116, line: 18, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_s", file: !143, line: 57, size: 640, elements: !144)
!143 = !DIFile(filename: "src/core/ngx_palloc.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6555a54b944797708293a47c3c8684b9")
!144 = !{!145, !159, !160, !161, !297, !304, !316}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !142, file: !143, line: 58, baseType: !146, size: 256)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_data_t", file: !143, line: 54, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 49, size: 256, elements: !148)
!148 = !{!149, !156, !157, !158}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !147, file: !143, line: 50, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !152, line: 33, baseType: !153)
!152 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !154, line: 31, baseType: !155)
!154 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!155 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !147, file: !143, line: 51, baseType: !150, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !147, file: !143, line: 52, baseType: !140, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !147, file: !143, line: 53, baseType: !130, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !142, file: !143, line: 59, baseType: !136, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !142, file: !143, line: 60, baseType: !140, size: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !142, file: !143, line: 61, baseType: !162, size: 64, offset: 384)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_chain_t", file: !116, line: 19, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_chain_s", file: !165, line: 59, size: 128, elements: !166)
!165 = !DIFile(filename: "src/core/ngx_buf.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6fc45f3cccbbf41b239dcfa9e2c5b7b1")
!166 = !{!167, !296}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !164, file: !165, line: 60, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_buf_t", file: !165, line: 18, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_buf_s", file: !165, line: 20, size: 640, elements: !171)
!171 = !{!172, !173, !174, !178, !179, !180, !181, !183, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !170, file: !165, line: 21, baseType: !150, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !170, file: !165, line: 22, baseType: !150, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "file_pos", scope: !170, file: !165, line: 23, baseType: !175, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !152, line: 87, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !154, line: 153, baseType: !177)
!177 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "file_last", scope: !170, file: !165, line: 24, baseType: !175, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !170, file: !165, line: 26, baseType: !150, size: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !170, file: !165, line: 27, baseType: !150, size: 64, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !170, file: !165, line: 28, baseType: !182, size: 64, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_buf_tag_t", file: !165, line: 16, baseType: !128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !170, file: !165, line: 29, baseType: !184, size: 64, offset: 448)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_t", file: !116, line: 23, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_file_s", file: !187, line: 16, size: 1600, elements: !188)
!187 = !DIFile(filename: "src/core/ngx_file.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "25b6ae7999feb045abc19bb7a7bd4ab8")
!188 = !{!189, !193, !200, !240, !241, !242, !281, !282}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !186, file: !187, line: 17, baseType: !190, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_fd_t", file: !191, line: 16, baseType: !192)
!191 = !DIFile(filename: "src/os/unix/ngx_files.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "7b9a751e8c1ad1afef5467d60ed94e69")
!192 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !186, file: !187, line: 18, baseType: !194, size: 128, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_str_t", file: !195, line: 19, baseType: !196)
!195 = !DIFile(filename: "src/core/ngx_string.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "aecf67ab89c624000ba2e2684dbcfdc8")
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !195, line: 16, size: 128, elements: !197)
!197 = !{!198, !199}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !196, file: !195, line: 17, baseType: !136, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !196, file: !195, line: 18, baseType: !150, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !186, file: !187, line: 19, baseType: !201, size: 1152, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_info_t", file: !191, line: 17, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !203, line: 26, size: 1152, elements: !204)
!203 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!204 = !{!205, !207, !209, !211, !214, !216, !218, !219, !220, !222, !224, !226, !234, !235, !236}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !202, file: !203, line: 31, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !154, line: 145, baseType: !134)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !202, file: !203, line: 36, baseType: !208, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !154, line: 148, baseType: !134)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !202, file: !203, line: 44, baseType: !210, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !154, line: 151, baseType: !134)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !202, file: !203, line: 45, baseType: !212, size: 32, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !154, line: 150, baseType: !213)
!213 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !202, file: !203, line: 47, baseType: !215, size: 32, offset: 224)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !154, line: 146, baseType: !213)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !202, file: !203, line: 48, baseType: !217, size: 32, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !154, line: 147, baseType: !213)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !202, file: !203, line: 50, baseType: !192, size: 32, offset: 288)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !202, file: !203, line: 52, baseType: !206, size: 64, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !202, file: !203, line: 57, baseType: !221, size: 64, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !154, line: 152, baseType: !177)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !202, file: !203, line: 61, baseType: !223, size: 64, offset: 448)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !154, line: 175, baseType: !177)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !202, file: !203, line: 63, baseType: !225, size: 64, offset: 512)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !154, line: 180, baseType: !177)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !202, file: !203, line: 74, baseType: !227, size: 128, offset: 576)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !228, line: 11, size: 128, elements: !229)
!228 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!229 = !{!230, !232}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !227, file: !228, line: 16, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !154, line: 160, baseType: !177)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !227, file: !228, line: 21, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !154, line: 197, baseType: !177)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !202, file: !203, line: 75, baseType: !227, size: 128, offset: 704)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !202, file: !203, line: 76, baseType: !227, size: 128, offset: 832)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !202, file: !203, line: 89, baseType: !237, size: 192, offset: 960)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 192, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 3)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !186, file: !187, line: 21, baseType: !175, size: 64, offset: 1344)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "sys_offset", scope: !186, file: !187, line: 22, baseType: !175, size: 64, offset: 1408)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !186, file: !187, line: 24, baseType: !243, size: 64, offset: 1472)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_t", file: !116, line: 20, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_log_s", file: !246, line: 50, size: 640, elements: !247)
!246 = !DIFile(filename: "src/core/ngx_log.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f35895306f847777914ce99ffeccfabd")
!247 = !{!248, !249, !261, !264, !267, !272, !273, !278, !279, !280}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !245, file: !246, line: 51, baseType: !130, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !245, file: !246, line: 52, baseType: !250, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_open_file_t", file: !116, line: 21, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_open_file_s", file: !118, line: 89, size: 320, elements: !253)
!253 = !{!254, !255, !256, !260}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !252, file: !118, line: 90, baseType: !190, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !252, file: !118, line: 91, baseType: !194, size: 128, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !252, file: !118, line: 93, baseType: !257, size: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !250, !243}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !252, file: !118, line: 94, baseType: !128, size: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !245, file: !246, line: 54, baseType: !262, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_atomic_uint_t", file: !263, line: 98, baseType: !134)
!263 = !DIFile(filename: "src/os/unix/ngx_atomic.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "eac8f0294f941da9268c3a72c9fca0e1")
!264 = !DIDerivedType(tag: DW_TAG_member, name: "disk_full_time", scope: !245, file: !246, line: 56, baseType: !265, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !266, line: 10, baseType: !231)
!266 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!267 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !245, file: !246, line: 58, baseType: !268, size: 64, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_handler_pt", file: !246, line: 45, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!150, !243, !150, !136}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !245, file: !246, line: 59, baseType: !128, size: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !245, file: !246, line: 61, baseType: !274, size: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_writer_pt", file: !246, line: 46, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !243, !130, !150, !136}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "wdata", scope: !245, file: !246, line: 62, baseType: !128, size: 64, offset: 448)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !245, file: !246, line: 70, baseType: !113, size: 64, offset: 512)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !245, file: !246, line: 72, baseType: !243, size: 64, offset: 576)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "valid_info", scope: !186, file: !187, line: 37, baseType: !213, size: 1, offset: 1536, flags: DIFlagBitField, extraData: i64 1536)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !186, file: !187, line: 38, baseType: !213, size: 1, offset: 1537, flags: DIFlagBitField, extraData: i64 1536)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "shadow", scope: !170, file: !165, line: 30, baseType: !168, size: 64, offset: 512)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !170, file: !165, line: 34, baseType: !213, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "memory", scope: !170, file: !165, line: 40, baseType: !213, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !170, file: !165, line: 43, baseType: !213, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "recycled", scope: !170, file: !165, line: 45, baseType: !213, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "in_file", scope: !170, file: !165, line: 46, baseType: !213, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !170, file: !165, line: 47, baseType: !213, size: 1, offset: 581, flags: DIFlagBitField, extraData: i64 576)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !170, file: !165, line: 48, baseType: !213, size: 1, offset: 582, flags: DIFlagBitField, extraData: i64 576)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "last_buf", scope: !170, file: !165, line: 49, baseType: !213, size: 1, offset: 583, flags: DIFlagBitField, extraData: i64 576)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "last_in_chain", scope: !170, file: !165, line: 50, baseType: !213, size: 1, offset: 584, flags: DIFlagBitField, extraData: i64 576)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "last_shadow", scope: !170, file: !165, line: 52, baseType: !213, size: 1, offset: 585, flags: DIFlagBitField, extraData: i64 576)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !170, file: !165, line: 53, baseType: !213, size: 1, offset: 586, flags: DIFlagBitField, extraData: i64 576)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !170, file: !165, line: 55, baseType: !192, size: 32, offset: 608)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !164, file: !165, line: 61, baseType: !162, size: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "large", scope: !142, file: !143, line: 62, baseType: !298, size: 64, offset: 448)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_large_t", file: !143, line: 41, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_large_s", file: !143, line: 43, size: 128, elements: !301)
!301 = !{!302, !303}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !300, file: !143, line: 44, baseType: !298, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !300, file: !143, line: 45, baseType: !128, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !142, file: !143, line: 63, baseType: !305, size: 64, offset: 512)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_cleanup_t", file: !143, line: 32, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_cleanup_s", file: !143, line: 34, size: 192, elements: !308)
!308 = !{!309, !314, !315}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !307, file: !143, line: 35, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_cleanup_pt", file: !143, line: 30, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !128}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !307, file: !143, line: 36, baseType: !128, size: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !307, file: !143, line: 37, baseType: !305, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !142, file: !143, line: 64, baseType: !243, size: 64, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !117, file: !118, line: 120, baseType: !318, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_cycle_t", file: !116, line: 17, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_cycle_s", file: !321, line: 47, size: 5184, elements: !322)
!321 = !DIFile(filename: "src/core/ngx_cycle.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "084646d0d3ecf791b89c14281fd46376")
!322 = !{!323, !327, !328, !329, !330, !331, !578, !579, !580, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !680, !681}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "conf_ctx", scope: !320, file: !321, line: 48, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !320, file: !321, line: 49, baseType: !140, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !320, file: !321, line: 51, baseType: !243, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "new_log", scope: !320, file: !321, line: 52, baseType: !244, size: 640, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "log_use_stderr", scope: !320, file: !321, line: 54, baseType: !130, size: 64, offset: 832)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !320, file: !321, line: 56, baseType: !332, size: 64, offset: 896)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_connection_t", file: !116, line: 26, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_connection_s", file: !336, line: 124, size: 1920, elements: !337)
!336 = !DIFile(filename: "src/core/ngx_connection.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "bf513a87e959064e14502903e9282b0e")
!337 = !{!338, !339, !396, !397, !400, !408, !410, !415, !420, !499, !500, !501, !502, !503, !504, !505, !506, !507, !513, !554, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !335, file: !336, line: 125, baseType: !128, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !335, file: !336, line: 126, baseType: !340, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_t", file: !116, line: 24, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_event_s", file: !343, line: 30, size: 768, elements: !344)
!343 = !DIFile(filename: "src/event/ngx_event.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "c79f651cc4aca504d9d912404beb8bf3")
!344 = !{!345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !373, !374, !375, !388}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !342, file: !343, line: 31, baseType: !128, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !342, file: !343, line: 33, baseType: !213, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !342, file: !343, line: 35, baseType: !213, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "instance", scope: !342, file: !343, line: 38, baseType: !213, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !342, file: !343, line: 44, baseType: !213, size: 1, offset: 67, flags: DIFlagBitField, extraData: i64 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !342, file: !343, line: 46, baseType: !213, size: 1, offset: 68, flags: DIFlagBitField, extraData: i64 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !342, file: !343, line: 49, baseType: !213, size: 1, offset: 69, flags: DIFlagBitField, extraData: i64 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "oneshot", scope: !342, file: !343, line: 51, baseType: !213, size: 1, offset: 70, flags: DIFlagBitField, extraData: i64 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !342, file: !343, line: 54, baseType: !213, size: 1, offset: 71, flags: DIFlagBitField, extraData: i64 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !342, file: !343, line: 56, baseType: !213, size: 1, offset: 72, flags: DIFlagBitField, extraData: i64 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !342, file: !343, line: 57, baseType: !213, size: 1, offset: 73, flags: DIFlagBitField, extraData: i64 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "timedout", scope: !342, file: !343, line: 59, baseType: !213, size: 1, offset: 74, flags: DIFlagBitField, extraData: i64 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "timer_set", scope: !342, file: !343, line: 60, baseType: !213, size: 1, offset: 75, flags: DIFlagBitField, extraData: i64 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "delayed", scope: !342, file: !343, line: 62, baseType: !213, size: 1, offset: 76, flags: DIFlagBitField, extraData: i64 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_accept", scope: !342, file: !343, line: 64, baseType: !213, size: 1, offset: 77, flags: DIFlagBitField, extraData: i64 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "pending_eof", scope: !342, file: !343, line: 67, baseType: !213, size: 1, offset: 78, flags: DIFlagBitField, extraData: i64 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "posted", scope: !342, file: !343, line: 69, baseType: !213, size: 1, offset: 79, flags: DIFlagBitField, extraData: i64 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "closed", scope: !342, file: !343, line: 71, baseType: !213, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !342, file: !343, line: 74, baseType: !213, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !342, file: !343, line: 75, baseType: !213, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "skip_socket_leak_check", scope: !342, file: !343, line: 77, baseType: !213, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "cancelable", scope: !342, file: !343, line: 80, baseType: !213, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !342, file: !343, line: 110, baseType: !213, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !342, file: !343, line: 113, baseType: !369, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_handler_pt", file: !116, line: 32, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !340}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !342, file: !343, line: 120, baseType: !130, size: 64, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !342, file: !343, line: 122, baseType: !243, size: 64, offset: 256)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !342, file: !343, line: 124, baseType: !376, size: 320, offset: 320)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_node_t", file: !377, line: 20, baseType: !378)
!377 = !DIFile(filename: "src/core/ngx_rbtree.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ee5b3151c1c48b156833d321f8e1946a")
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_rbtree_node_s", file: !377, line: 22, size: 320, elements: !379)
!379 = !{!380, !382, !384, !385, !386, !387}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !378, file: !377, line: 23, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_key_t", file: !377, line: 16, baseType: !130)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !378, file: !377, line: 24, baseType: !383, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !378, file: !377, line: 25, baseType: !383, size: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !378, file: !377, line: 26, baseType: !383, size: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !378, file: !377, line: 27, baseType: !151, size: 8, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !378, file: !377, line: 28, baseType: !151, size: 8, offset: 264)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !342, file: !343, line: 127, baseType: !389, size: 128, offset: 640)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_queue_t", file: !390, line: 16, baseType: !391)
!390 = !DIFile(filename: "src/core/ngx_queue.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "2c59b395537893ba5e88100999d73c03")
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_queue_s", file: !390, line: 18, size: 128, elements: !392)
!392 = !{!393, !395}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !391, file: !390, line: 19, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !391, file: !390, line: 20, baseType: !394, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !335, file: !336, line: 127, baseType: !340, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !335, file: !336, line: 129, baseType: !398, size: 32, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_socket_t", file: !399, line: 17, baseType: !192)
!399 = !DIFile(filename: "src/os/unix/ngx_socket.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ad64fd7b9f2b4876e8c9dcdeeb2305ce")
!400 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !335, file: !336, line: 131, baseType: !401, size: 64, offset: 256)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_recv_pt", file: !402, line: 19, baseType: !403)
!402 = !DIFile(filename: "src/os/unix/ngx_os.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f9335bbb6e5d9856f7d75990ec765c0d")
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!406, !333, !150, !136}
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !152, line: 108, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !154, line: 194, baseType: !177)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !335, file: !336, line: 132, baseType: !409, size: 64, offset: 320)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_send_pt", file: !402, line: 22, baseType: !403)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "recv_chain", scope: !335, file: !336, line: 133, baseType: !411, size: 64, offset: 384)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_recv_chain_pt", file: !402, line: 20, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!406, !333, !162, !175}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "send_chain", scope: !335, file: !336, line: 134, baseType: !416, size: 64, offset: 448)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_send_chain_pt", file: !402, line: 23, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!162, !333, !162, !175}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "listening", scope: !335, file: !336, line: 136, baseType: !421, size: 64, offset: 512)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_listening_t", file: !336, line: 16, baseType: !423)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_listening_s", file: !336, line: 18, size: 2432, elements: !424)
!424 = !{!425, !426, !439, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !457, !458, !459, !460, !461, !462, !465, !466, !467, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !423, file: !336, line: 19, baseType: !398, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !423, file: !336, line: 21, baseType: !427, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !429, line: 180, size: 128, elements: !430)
!429 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!430 = !{!431, !435}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !428, file: !429, line: 182, baseType: !432, size: 16)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !433, line: 28, baseType: !434)
!433 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!434 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !428, file: !429, line: 183, baseType: !436, size: 112, offset: 16)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !437)
!437 = !{!438}
!438 = !DISubrange(count: 14)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !423, file: !336, line: 22, baseType: !440, size: 32, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !441, line: 274, baseType: !442)
!441 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !154, line: 210, baseType: !213)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text_max_len", scope: !423, file: !336, line: 23, baseType: !136, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text", scope: !423, file: !336, line: 24, baseType: !194, size: 128, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !423, file: !336, line: 26, baseType: !192, size: 32, offset: 384)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "backlog", scope: !423, file: !336, line: 28, baseType: !192, size: 32, offset: 416)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !423, file: !336, line: 29, baseType: !192, size: 32, offset: 448)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sndbuf", scope: !423, file: !336, line: 30, baseType: !192, size: 32, offset: 480)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "keepidle", scope: !423, file: !336, line: 32, baseType: !192, size: 32, offset: 512)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "keepintvl", scope: !423, file: !336, line: 33, baseType: !192, size: 32, offset: 544)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "keepcnt", scope: !423, file: !336, line: 34, baseType: !192, size: 32, offset: 576)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !423, file: !336, line: 38, baseType: !453, size: 64, offset: 640)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_connection_handler_pt", file: !116, line: 33, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !333}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "servers", scope: !423, file: !336, line: 40, baseType: !128, size: 64, offset: 704)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !423, file: !336, line: 42, baseType: !244, size: 640, offset: 768)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "logp", scope: !423, file: !336, line: 43, baseType: !243, size: 64, offset: 1408)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "pool_size", scope: !423, file: !336, line: 45, baseType: !136, size: 64, offset: 1472)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "post_accept_buffer_size", scope: !423, file: !336, line: 47, baseType: !136, size: 64, offset: 1536)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "post_accept_timeout", scope: !423, file: !336, line: 49, baseType: !463, size: 64, offset: 1600)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_msec_t", file: !464, line: 16, baseType: !381)
!464 = !DIFile(filename: "src/os/unix/ngx_time.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "dcb54d32e6c10d0319e2777a5d39953b")
!465 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !423, file: !336, line: 51, baseType: !421, size: 64, offset: 1664)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !423, file: !336, line: 52, baseType: !333, size: 64, offset: 1728)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !423, file: !336, line: 54, baseType: !468, size: 192, offset: 1792)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_t", file: !377, line: 32, baseType: !469)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_rbtree_s", file: !377, line: 37, size: 192, elements: !470)
!470 = !{!471, !472, !473}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !469, file: !377, line: 38, baseType: !383, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !469, file: !377, line: 39, baseType: !383, size: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "insert", scope: !469, file: !377, line: 40, baseType: !474, size: 64, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_rbtree_insert_pt", file: !377, line: 34, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !383, !383, !383}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !423, file: !336, line: 55, baseType: !376, size: 320, offset: 1984)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !423, file: !336, line: 57, baseType: !130, size: 64, offset: 2304)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !423, file: !336, line: 59, baseType: !213, size: 1, offset: 2368, flags: DIFlagBitField, extraData: i64 2368)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "remain", scope: !423, file: !336, line: 60, baseType: !213, size: 1, offset: 2369, flags: DIFlagBitField, extraData: i64 2368)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ignore", scope: !423, file: !336, line: 61, baseType: !213, size: 1, offset: 2370, flags: DIFlagBitField, extraData: i64 2368)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !423, file: !336, line: 63, baseType: !213, size: 1, offset: 2371, flags: DIFlagBitField, extraData: i64 2368)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "inherited", scope: !423, file: !336, line: 64, baseType: !213, size: 1, offset: 2372, flags: DIFlagBitField, extraData: i64 2368)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "nonblocking_accept", scope: !423, file: !336, line: 65, baseType: !213, size: 1, offset: 2373, flags: DIFlagBitField, extraData: i64 2368)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !423, file: !336, line: 66, baseType: !213, size: 1, offset: 2374, flags: DIFlagBitField, extraData: i64 2368)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "nonblocking", scope: !423, file: !336, line: 67, baseType: !213, size: 1, offset: 2375, flags: DIFlagBitField, extraData: i64 2368)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !423, file: !336, line: 68, baseType: !213, size: 1, offset: 2376, flags: DIFlagBitField, extraData: i64 2368)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "addr_ntop", scope: !423, file: !336, line: 69, baseType: !213, size: 1, offset: 2377, flags: DIFlagBitField, extraData: i64 2368)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "wildcard", scope: !423, file: !336, line: 70, baseType: !213, size: 1, offset: 2378, flags: DIFlagBitField, extraData: i64 2368)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6only", scope: !423, file: !336, line: 73, baseType: !213, size: 1, offset: 2379, flags: DIFlagBitField, extraData: i64 2368)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "reuseport", scope: !423, file: !336, line: 75, baseType: !213, size: 1, offset: 2380, flags: DIFlagBitField, extraData: i64 2368)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "add_reuseport", scope: !423, file: !336, line: 76, baseType: !213, size: 1, offset: 2381, flags: DIFlagBitField, extraData: i64 2368)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !423, file: !336, line: 77, baseType: !213, size: 2, offset: 2382, flags: DIFlagBitField, extraData: i64 2368)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_accept", scope: !423, file: !336, line: 79, baseType: !213, size: 1, offset: 2384, flags: DIFlagBitField, extraData: i64 2368)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "delete_deferred", scope: !423, file: !336, line: 80, baseType: !213, size: 1, offset: 2385, flags: DIFlagBitField, extraData: i64 2368)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "add_deferred", scope: !423, file: !336, line: 81, baseType: !213, size: 1, offset: 2386, flags: DIFlagBitField, extraData: i64 2368)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "fastopen", scope: !423, file: !336, line: 90, baseType: !192, size: 32, offset: 2400)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "sent", scope: !335, file: !336, line: 138, baseType: !175, size: 64, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !335, file: !336, line: 140, baseType: !243, size: 64, offset: 640)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !335, file: !336, line: 142, baseType: !140, size: 64, offset: 704)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !335, file: !336, line: 144, baseType: !192, size: 32, offset: 768)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !335, file: !336, line: 146, baseType: !427, size: 64, offset: 832)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !335, file: !336, line: 147, baseType: !440, size: 32, offset: 896)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "addr_text", scope: !335, file: !336, line: 148, baseType: !194, size: 128, offset: 960)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol_addr", scope: !335, file: !336, line: 150, baseType: !194, size: 128, offset: 1088)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol_port", scope: !335, file: !336, line: 151, baseType: !508, size: 16, offset: 1216)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !509, line: 123, baseType: !510)
!509 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !511, line: 25, baseType: !512)
!511 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !154, line: 40, baseType: !434)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !335, file: !336, line: 154, baseType: !514, size: 64, offset: 1280)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_ssl_connection_t", file: !116, line: 29, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_ssl_connection_s", file: !517, line: 74, size: 704, elements: !518)
!517 = !DIFile(filename: "src/event/ngx_event_openssl.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "51639b814b1b55c5b35047c033281672")
!518 = !{!519, !524, !528, !532, !533, !534, !535, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !516, file: !517, line: 75, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !522, line: 184, baseType: !523)
!522 = !DIFile(filename: "/usr/include/openssl/types.h", directory: "", checksumkind: CSK_MD5, checksum: "44f1236065e4ee65cf4cd545c3e12ab9")
!523 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !522, line: 184, flags: DIFlagFwdDecl)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "session_ctx", scope: !516, file: !517, line: 76, baseType: !525, size: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !522, line: 185, baseType: !527)
!527 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !522, line: 185, flags: DIFlagFwdDecl)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !516, file: !517, line: 78, baseType: !529, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_int_t", file: !131, line: 78, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !441, line: 267, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !154, line: 207, baseType: !177)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !516, file: !517, line: 79, baseType: !168, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !516, file: !517, line: 80, baseType: !136, size: 64, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !516, file: !517, line: 82, baseType: !453, size: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !516, file: !517, line: 84, baseType: !536, size: 64, offset: 384)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_SESSION", file: !538, line: 231, baseType: !539)
!538 = !DIFile(filename: "/usr/include/openssl/ssl.h", directory: "", checksumkind: CSK_MD5, checksum: "848d42aedd0da44ffda19088217823c7")
!539 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_session_st", file: !538, line: 231, flags: DIFlagFwdDecl)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "save_session", scope: !516, file: !517, line: 85, baseType: !453, size: 64, offset: 448)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "saved_read_handler", scope: !516, file: !517, line: 87, baseType: !369, size: 64, offset: 512)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "saved_write_handler", scope: !516, file: !517, line: 88, baseType: !369, size: 64, offset: 576)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "early_buf", scope: !516, file: !517, line: 90, baseType: !151, size: 8, offset: 640)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "handshaked", scope: !516, file: !517, line: 92, baseType: !213, size: 1, offset: 648, flags: DIFlagBitField, extraData: i64 648)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiation", scope: !516, file: !517, line: 93, baseType: !213, size: 1, offset: 649, flags: DIFlagBitField, extraData: i64 648)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !516, file: !517, line: 94, baseType: !213, size: 1, offset: 650, flags: DIFlagBitField, extraData: i64 648)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "no_wait_shutdown", scope: !516, file: !517, line: 95, baseType: !213, size: 1, offset: 651, flags: DIFlagBitField, extraData: i64 648)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "no_send_shutdown", scope: !516, file: !517, line: 96, baseType: !213, size: 1, offset: 652, flags: DIFlagBitField, extraData: i64 648)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_buffer_set", scope: !516, file: !517, line: 97, baseType: !213, size: 1, offset: 653, flags: DIFlagBitField, extraData: i64 648)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "try_early_data", scope: !516, file: !517, line: 98, baseType: !213, size: 1, offset: 654, flags: DIFlagBitField, extraData: i64 648)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "in_early", scope: !516, file: !517, line: 99, baseType: !213, size: 1, offset: 655, flags: DIFlagBitField, extraData: i64 648)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "early_preread", scope: !516, file: !517, line: 100, baseType: !213, size: 1, offset: 656, flags: DIFlagBitField, extraData: i64 648)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "write_blocked", scope: !516, file: !517, line: 101, baseType: !213, size: 1, offset: 657, flags: DIFlagBitField, extraData: i64 648)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "udp", scope: !335, file: !336, line: 157, baseType: !555, size: 64, offset: 1344)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_udp_connection_t", file: !116, line: 30, baseType: !557)
!557 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_udp_connection_s", file: !116, line: 30, flags: DIFlagFwdDecl)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "local_sockaddr", scope: !335, file: !336, line: 159, baseType: !427, size: 64, offset: 1408)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "local_socklen", scope: !335, file: !336, line: 160, baseType: !440, size: 32, offset: 1472)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !335, file: !336, line: 162, baseType: !168, size: 64, offset: 1536)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !335, file: !336, line: 164, baseType: !389, size: 128, offset: 1600)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !335, file: !336, line: 166, baseType: !262, size: 64, offset: 1728)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "requests", scope: !335, file: !336, line: 168, baseType: !130, size: 64, offset: 1792)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !335, file: !336, line: 170, baseType: !213, size: 8, offset: 1856, flags: DIFlagBitField, extraData: i64 1856)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "log_error", scope: !335, file: !336, line: 172, baseType: !213, size: 3, offset: 1864, flags: DIFlagBitField, extraData: i64 1856)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "timedout", scope: !335, file: !336, line: 174, baseType: !213, size: 1, offset: 1867, flags: DIFlagBitField, extraData: i64 1856)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !335, file: !336, line: 175, baseType: !213, size: 1, offset: 1868, flags: DIFlagBitField, extraData: i64 1856)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !335, file: !336, line: 176, baseType: !213, size: 1, offset: 1869, flags: DIFlagBitField, extraData: i64 1856)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !335, file: !336, line: 178, baseType: !213, size: 1, offset: 1870, flags: DIFlagBitField, extraData: i64 1856)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "reusable", scope: !335, file: !336, line: 179, baseType: !213, size: 1, offset: 1871, flags: DIFlagBitField, extraData: i64 1856)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !335, file: !336, line: 180, baseType: !213, size: 1, offset: 1872, flags: DIFlagBitField, extraData: i64 1856)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !335, file: !336, line: 181, baseType: !213, size: 1, offset: 1873, flags: DIFlagBitField, extraData: i64 1856)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "sendfile", scope: !335, file: !336, line: 183, baseType: !213, size: 1, offset: 1874, flags: DIFlagBitField, extraData: i64 1856)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "sndlowat", scope: !335, file: !336, line: 184, baseType: !213, size: 1, offset: 1875, flags: DIFlagBitField, extraData: i64 1856)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nodelay", scope: !335, file: !336, line: 185, baseType: !213, size: 2, offset: 1876, flags: DIFlagBitField, extraData: i64 1856)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nopush", scope: !335, file: !336, line: 186, baseType: !213, size: 2, offset: 1878, flags: DIFlagBitField, extraData: i64 1856)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "need_last_buf", scope: !335, file: !336, line: 188, baseType: !213, size: 1, offset: 1880, flags: DIFlagBitField, extraData: i64 1856)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "free_connections", scope: !320, file: !321, line: 57, baseType: !333, size: 64, offset: 960)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "free_connection_n", scope: !320, file: !321, line: 58, baseType: !130, size: 64, offset: 1024)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !320, file: !321, line: 60, baseType: !581, size: 64, offset: 1088)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_module_t", file: !116, line: 15, baseType: !584)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_module_s", file: !585, line: 222, size: 1600, elements: !586)
!585 = !DIFile(filename: "src/core/ngx_module.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "1b2032f87974a892f93f4098e8fc0619")
!586 = !{!587, !588, !589, !590, !591, !592, !593, !596, !597, !611, !612, !616, !620, !621, !622, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_index", scope: !584, file: !585, line: 223, baseType: !130, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !584, file: !585, line: 224, baseType: !130, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !584, file: !585, line: 226, baseType: !113, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "spare0", scope: !584, file: !585, line: 228, baseType: !130, size: 64, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "spare1", scope: !584, file: !585, line: 229, baseType: !130, size: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !584, file: !585, line: 231, baseType: !130, size: 64, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !584, file: !585, line: 232, baseType: !594, size: 64, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !584, file: !585, line: 234, baseType: !128, size: 64, offset: 448)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !584, file: !585, line: 235, baseType: !598, size: 64, offset: 512)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_command_t", file: !116, line: 22, baseType: !600)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_command_s", file: !118, line: 77, size: 448, elements: !601)
!601 = !{!602, !603, !604, !608, !609, !610}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !600, file: !118, line: 78, baseType: !194, size: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !600, file: !118, line: 79, baseType: !130, size: 64, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !600, file: !118, line: 80, baseType: !605, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!113, !114, !598, !128}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !600, file: !118, line: 81, baseType: !130, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !600, file: !118, line: 82, baseType: !130, size: 64, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !600, file: !118, line: 83, baseType: !128, size: 64, offset: 384)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !584, file: !585, line: 236, baseType: !130, size: 64, offset: 576)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "init_master", scope: !584, file: !585, line: 238, baseType: !613, size: 64, offset: 640)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!529, !243}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "init_module", scope: !584, file: !585, line: 240, baseType: !617, size: 64, offset: 704)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!529, !318}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "init_process", scope: !584, file: !585, line: 242, baseType: !617, size: 64, offset: 768)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "init_thread", scope: !584, file: !585, line: 243, baseType: !617, size: 64, offset: 832)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "exit_thread", scope: !584, file: !585, line: 244, baseType: !623, size: 64, offset: 896)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !318}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "exit_process", scope: !584, file: !585, line: 245, baseType: !623, size: 64, offset: 960)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "exit_master", scope: !584, file: !585, line: 247, baseType: !623, size: 64, offset: 1024)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook0", scope: !584, file: !585, line: 249, baseType: !132, size: 64, offset: 1088)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook1", scope: !584, file: !585, line: 250, baseType: !132, size: 64, offset: 1152)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook2", scope: !584, file: !585, line: 251, baseType: !132, size: 64, offset: 1216)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook3", scope: !584, file: !585, line: 252, baseType: !132, size: 64, offset: 1280)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook4", scope: !584, file: !585, line: 253, baseType: !132, size: 64, offset: 1344)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook5", scope: !584, file: !585, line: 254, baseType: !132, size: 64, offset: 1408)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook6", scope: !584, file: !585, line: 255, baseType: !132, size: 64, offset: 1472)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "spare_hook7", scope: !584, file: !585, line: 256, baseType: !132, size: 64, offset: 1536)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "modules_n", scope: !320, file: !321, line: 61, baseType: !130, size: 64, offset: 1152)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "modules_used", scope: !320, file: !321, line: 62, baseType: !130, size: 64, offset: 1216)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "reusable_connections_queue", scope: !320, file: !321, line: 64, baseType: !389, size: 128, offset: 1280)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "reusable_connections_n", scope: !320, file: !321, line: 65, baseType: !130, size: 64, offset: 1408)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "listening", scope: !320, file: !321, line: 67, baseType: !123, size: 320, offset: 1472)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "paths", scope: !320, file: !321, line: 68, baseType: !123, size: 320, offset: 1792)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump", scope: !320, file: !321, line: 70, baseType: !123, size: 320, offset: 2112)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump_rbtree", scope: !320, file: !321, line: 71, baseType: !468, size: 192, offset: 2432)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "config_dump_sentinel", scope: !320, file: !321, line: 72, baseType: !376, size: 320, offset: 2624)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "open_files", scope: !320, file: !321, line: 74, baseType: !646, size: 448, offset: 2944)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_list_t", file: !647, line: 31, baseType: !648)
!647 = !DIFile(filename: "src/core/ngx_list.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "580525d954b127a1c35170a83ca4d8b1")
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !647, line: 25, size: 448, elements: !649)
!649 = !{!650, !658, !659, !660, !661}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !648, file: !647, line: 26, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_list_part_t", file: !647, line: 16, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_list_part_s", file: !647, line: 18, size: 192, elements: !654)
!654 = !{!655, !656, !657}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !653, file: !647, line: 19, baseType: !128, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !653, file: !647, line: 20, baseType: !130, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !653, file: !647, line: 21, baseType: !651, size: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !648, file: !647, line: 27, baseType: !652, size: 192, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !648, file: !647, line: 28, baseType: !136, size: 64, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !648, file: !647, line: 29, baseType: !130, size: 64, offset: 320)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !648, file: !647, line: 30, baseType: !140, size: 64, offset: 384)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "shared_memory", scope: !320, file: !321, line: 75, baseType: !646, size: 448, offset: 3392)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "connection_n", scope: !320, file: !321, line: 77, baseType: !130, size: 64, offset: 3840)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "files_n", scope: !320, file: !321, line: 78, baseType: !130, size: 64, offset: 3904)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !320, file: !321, line: 80, baseType: !333, size: 64, offset: 3968)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "read_events", scope: !320, file: !321, line: 81, baseType: !340, size: 64, offset: 4032)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "write_events", scope: !320, file: !321, line: 82, baseType: !340, size: 64, offset: 4096)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "old_cycle", scope: !320, file: !321, line: 84, baseType: !318, size: 64, offset: 4160)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !320, file: !321, line: 86, baseType: !194, size: 128, offset: 4224)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "conf_param", scope: !320, file: !321, line: 87, baseType: !194, size: 128, offset: 4352)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "conf_prefix", scope: !320, file: !321, line: 88, baseType: !194, size: 128, offset: 4480)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !320, file: !321, line: 89, baseType: !194, size: 128, offset: 4608)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "lock_file", scope: !320, file: !321, line: 90, baseType: !194, size: 128, offset: 4736)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !320, file: !321, line: 91, baseType: !194, size: 128, offset: 4864)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_error_log_handler", scope: !320, file: !321, line: 93, baseType: !676, size: 64, offset: 4992)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_intercept_pt", file: !321, line: 34, baseType: !677)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!529, !243, !130, !150, !136}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "intercept_error_log_data", scope: !320, file: !321, line: 94, baseType: !128, size: 64, offset: 5056)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "entered_logger", scope: !320, file: !321, line: 95, baseType: !213, size: 32, offset: 5120)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !117, file: !118, line: 121, baseType: !140, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "temp_pool", scope: !117, file: !118, line: 122, baseType: !140, size: 64, offset: 256)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "conf_file", scope: !117, file: !118, line: 123, baseType: !685, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_file_t", file: !118, line: 103, baseType: !687)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !118, line: 98, size: 1792, elements: !688)
!688 = !{!689, !690, !691, !692}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !687, file: !118, line: 99, baseType: !185, size: 1600)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !687, file: !118, line: 100, baseType: !168, size: 64, offset: 1600)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !687, file: !118, line: 101, baseType: !168, size: 64, offset: 1664)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !687, file: !118, line: 102, baseType: !130, size: 64, offset: 1728)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !117, file: !118, line: 124, baseType: !243, size: 64, offset: 384)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !117, file: !118, line: 126, baseType: !128, size: 64, offset: 448)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "module_type", scope: !117, file: !118, line: 127, baseType: !130, size: 64, offset: 512)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_type", scope: !117, file: !118, line: 128, baseType: !130, size: 64, offset: 576)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !117, file: !118, line: 130, baseType: !698, size: 64, offset: 640)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_conf_handler_pt", file: !118, line: 112, baseType: !605)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "handler_conf", scope: !117, file: !118, line: 131, baseType: !128, size: 64, offset: 704)
!700 = !{!701, !702, !703, !709, !710, !711, !712, !713, !715, !716, !717, !718, !719, !720, !721, !722}
!701 = !DILocalVariable(name: "cf", arg: 1, scope: !110, file: !2, line: 763, type: !114)
!702 = !DILocalVariable(name: "cmd", arg: 2, scope: !110, file: !2, line: 763, type: !598)
!703 = !DILocalVariable(name: "ctx", scope: !110, file: !2, line: 765, type: !704)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_lua_block_parser_ctx_t", file: !2, line: 40, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_stream_lua_block_parser_ctx_s", file: !2, line: 52, size: 128, elements: !706)
!706 = !{!707, !708}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "start_line", scope: !705, file: !2, line: 53, baseType: !130, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "token_len", scope: !705, file: !2, line: 54, baseType: !192, size: 32, offset: 64)
!709 = !DILocalVariable(name: "level", scope: !110, file: !2, line: 767, type: !192)
!710 = !DILocalVariable(name: "rv", scope: !110, file: !2, line: 768, type: !113)
!711 = !DILocalVariable(name: "p", scope: !110, file: !2, line: 769, type: !150)
!712 = !DILocalVariable(name: "len", scope: !110, file: !2, line: 770, type: !136)
!713 = !DILocalVariable(name: "src", scope: !110, file: !2, line: 771, type: !714)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!715 = !DILocalVariable(name: "dst", scope: !110, file: !2, line: 771, type: !714)
!716 = !DILocalVariable(name: "rc", scope: !110, file: !2, line: 772, type: !529)
!717 = !DILocalVariable(name: "i", scope: !110, file: !2, line: 773, type: !130)
!718 = !DILocalVariable(name: "start_line", scope: !110, file: !2, line: 773, type: !130)
!719 = !DILocalVariable(name: "saved", scope: !110, file: !2, line: 774, type: !122)
!720 = !DILocalVariable(name: "type", scope: !110, file: !2, line: 778, type: !109)
!721 = !DILabel(scope: !110, name: "failed", file: !2, line: 908)
!722 = !DILabel(scope: !110, name: "done", file: !2, line: 912)
!723 = !{!724, !725}
!724 = !DIEnumerator(name: "parse_block", value: 0)
!725 = !DIEnumerator(name: "parse_param", value: 1)
!726 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 58, baseType: !213, size: 32, elements: !727)
!727 = !{!728, !729, !730, !731, !732, !733, !734, !735, !736, !737}
!728 = !DIEnumerator(name: "FOUND_LEFT_CURLY", value: 0)
!729 = !DIEnumerator(name: "FOUND_RIGHT_CURLY", value: 1)
!730 = !DIEnumerator(name: "FOUND_LEFT_LBRACKET_STR", value: 2)
!731 = !DIEnumerator(name: "FOUND_LBRACKET_STR", value: 2)
!732 = !DIEnumerator(name: "FOUND_LEFT_LBRACKET_CMT", value: 3)
!733 = !DIEnumerator(name: "FOUND_LBRACKET_CMT", value: 3)
!734 = !DIEnumerator(name: "FOUND_RIGHT_LBRACKET", value: 4)
!735 = !DIEnumerator(name: "FOUND_COMMENT_LINE", value: 5)
!736 = !DIEnumerator(name: "FOUND_DOUBLE_QUOTED", value: 6)
!737 = !DIEnumerator(name: "FOUND_SINGLE_QUOTED", value: 7)
!738 = !{!128, !136, !739, !150, !741, !1112, !1118, !594, !1167, !676, !406, !151, !130}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_flag_t", file: !131, line: 80, baseType: !530)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_lua_handler_pt", file: !742, line: 52, baseType: !743)
!742 = !DIFile(filename: "../ngx_stream_lua-0.0.7/src/ngx_stream_lua_request.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ccaa5a9459f8752c4a35875ca3232d17")
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!529, !746}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_lua_request_t", file: !742, line: 22, baseType: !748)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_stream_lua_request_s", file: !742, line: 27, size: 384, elements: !749)
!749 = !{!750, !751, !1096, !1097, !1106, !1111}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !748, file: !742, line: 28, baseType: !333, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !748, file: !742, line: 29, baseType: !752, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_session_t", file: !754, line: 20, baseType: !755)
!754 = !DIFile(filename: "src/stream/ngx_stream.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "5b43959b152802dd9a372cd63f29aa49")
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_stream_session_s", file: !754, line: 195, size: 960, elements: !756)
!756 = !{!757, !760, !761, !762, !763, !764, !765, !766, !767, !768, !1077, !1078, !1091, !1092, !1093, !1094, !1095}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !755, file: !754, line: 196, baseType: !758, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !511, line: 26, baseType: !759)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !154, line: 42, baseType: !213)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !755, file: !754, line: 198, baseType: !333, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "received", scope: !755, file: !754, line: 200, baseType: !175, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "start_sec", scope: !755, file: !754, line: 201, baseType: !265, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "start_msec", scope: !755, file: !754, line: 202, baseType: !463, size: 64, offset: 256)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "log_handler", scope: !755, file: !754, line: 204, baseType: !268, size: 64, offset: 320)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !755, file: !754, line: 206, baseType: !326, size: 64, offset: 384)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "main_conf", scope: !755, file: !754, line: 207, baseType: !326, size: 64, offset: 448)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !755, file: !754, line: 208, baseType: !326, size: 64, offset: 512)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !755, file: !754, line: 210, baseType: !769, size: 64, offset: 576)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_t", file: !771, line: 142, baseType: !772)
!771 = !DIFile(filename: "src/stream/ngx_stream_upstream.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "3f8e5475e314f6b689847c899b77180e")
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !771, line: 117, size: 3328, elements: !773)
!773 = !{!774, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !887, !1064, !1075, !1076}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !772, file: !771, line: 118, baseType: !775, size: 1024)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_peer_connection_t", file: !776, line: 22, baseType: !777)
!776 = !DIFile(filename: "src/event/ngx_event_connect.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "ac5aedde14d2cb26bc31b0019c79e36b")
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_peer_connection_s", file: !776, line: 36, size: 1024, elements: !778)
!778 = !{!779, !780, !781, !782, !783, !784, !785, !791, !796, !798, !799, !801, !806, !815, !816, !817, !818, !819, !820, !821}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !777, file: !776, line: 37, baseType: !333, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !777, file: !776, line: 39, baseType: !427, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !777, file: !776, line: 40, baseType: !440, size: 32, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !777, file: !776, line: 41, baseType: !714, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "tries", scope: !777, file: !776, line: 43, baseType: !130, size: 64, offset: 256)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !777, file: !776, line: 44, baseType: !463, size: 64, offset: 320)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !777, file: !776, line: 46, baseType: !786, size: 64, offset: 384)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_get_peer_pt", file: !776, line: 24, baseType: !787)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!529, !790, !128}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !777, file: !776, line: 47, baseType: !792, size: 64, offset: 448)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_free_peer_pt", file: !776, line: 26, baseType: !793)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !790, !128, !130}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !777, file: !776, line: 48, baseType: !797, size: 64, offset: 512)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_notify_peer_pt", file: !776, line: 28, baseType: !793)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !777, file: !776, line: 49, baseType: !128, size: 64, offset: 576)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "set_session", scope: !777, file: !776, line: 52, baseType: !800, size: 64, offset: 640)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_set_peer_session_pt", file: !776, line: 30, baseType: !787)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "save_session", scope: !777, file: !776, line: 53, baseType: !802, size: 64, offset: 704)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_event_save_peer_session_pt", file: !776, line: 32, baseType: !803)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{null, !790, !128}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !777, file: !776, line: 56, baseType: !807, size: 64, offset: 768)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_addr_t", file: !809, line: 78, baseType: !810)
!809 = !DIFile(filename: "src/core/ngx_inet.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6d8b5de9d803e9eabdd54c00fd750bd0")
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !809, line: 74, size: 256, elements: !811)
!811 = !{!812, !813, !814}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !810, file: !809, line: 75, baseType: !427, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !810, file: !809, line: 76, baseType: !440, size: 32, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !810, file: !809, line: 77, baseType: !194, size: 128, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !777, file: !776, line: 58, baseType: !192, size: 32, offset: 832)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !777, file: !776, line: 59, baseType: !192, size: 32, offset: 864)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !777, file: !776, line: 61, baseType: !243, size: 64, offset: 896)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !777, file: !776, line: 63, baseType: !213, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !777, file: !776, line: 64, baseType: !213, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "so_keepalive", scope: !777, file: !776, line: 65, baseType: !213, size: 1, offset: 962, flags: DIFlagBitField, extraData: i64 960)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "log_error", scope: !777, file: !776, line: 68, baseType: !213, size: 2, offset: 963, flags: DIFlagBitField, extraData: i64 960)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_buf", scope: !772, file: !771, line: 120, baseType: !169, size: 640, offset: 1024)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_buf", scope: !772, file: !771, line: 121, baseType: !169, size: 640, offset: 1664)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !772, file: !771, line: 123, baseType: !162, size: 64, offset: 2304)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_out", scope: !772, file: !771, line: 124, baseType: !162, size: 64, offset: 2368)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_busy", scope: !772, file: !771, line: 125, baseType: !162, size: 64, offset: 2432)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_out", scope: !772, file: !771, line: 126, baseType: !162, size: 64, offset: 2496)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_busy", scope: !772, file: !771, line: 127, baseType: !162, size: 64, offset: 2560)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "received", scope: !772, file: !771, line: 129, baseType: !175, size: 64, offset: 2624)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "start_sec", scope: !772, file: !771, line: 130, baseType: !265, size: 64, offset: 2688)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "requests", scope: !772, file: !771, line: 131, baseType: !130, size: 64, offset: 2752)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "responses", scope: !772, file: !771, line: 132, baseType: !130, size: 64, offset: 2816)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !772, file: !771, line: 133, baseType: !463, size: 64, offset: 2880)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_name", scope: !772, file: !771, line: 135, baseType: !194, size: 128, offset: 2944)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !772, file: !771, line: 137, baseType: !836, size: 64, offset: 3072)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_srv_conf_t", file: !771, line: 36, baseType: !838)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_stream_upstream_srv_conf_s", file: !771, line: 70, size: 832, elements: !839)
!839 = !{!840, !855, !856, !857, !858, !859, !860, !861, !862, !863}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !838, file: !771, line: 71, baseType: !841, size: 192)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_peer_t", file: !771, line: 49, baseType: !842)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !771, line: 45, size: 192, elements: !843)
!843 = !{!844, !849, !854}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "init_upstream", scope: !842, file: !771, line: 46, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_init_pt", file: !771, line: 39, baseType: !846)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!529, !114, !836}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !842, file: !771, line: 47, baseType: !850, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_init_peer_pt", file: !771, line: 41, baseType: !851)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!529, !752, !836}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !842, file: !771, line: 48, baseType: !128, size: 64, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !838, file: !771, line: 72, baseType: !326, size: 64, offset: 192)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "servers", scope: !838, file: !771, line: 74, baseType: !122, size: 64, offset: 256)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !838, file: !771, line: 77, baseType: !130, size: 64, offset: 320)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !838, file: !771, line: 78, baseType: !194, size: 128, offset: 384)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !838, file: !771, line: 79, baseType: !150, size: 64, offset: 512)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !838, file: !771, line: 80, baseType: !130, size: 64, offset: 576)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !838, file: !771, line: 81, baseType: !508, size: 16, offset: 640)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "no_port", scope: !838, file: !771, line: 82, baseType: !130, size: 64, offset: 704)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "shm_zone", scope: !838, file: !771, line: 85, baseType: !864, size: 64, offset: 768)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_zone_t", file: !321, line: 31, baseType: !866)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_shm_zone_s", file: !321, line: 37, size: 704, elements: !867)
!867 = !{!868, !869, !879, !884, !885, !886}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !866, file: !321, line: 38, baseType: !128, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "shm", scope: !866, file: !321, line: 39, baseType: !870, size: 384, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_t", file: !871, line: 22, baseType: !872)
!871 = !DIFile(filename: "src/os/unix/ngx_shmem.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "bf27d4781f3b25ce5eb9a764f55ea2d4")
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !871, line: 16, size: 384, elements: !873)
!873 = !{!874, !875, !876, !877, !878}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !872, file: !871, line: 17, baseType: !150, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !872, file: !871, line: 18, baseType: !136, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !872, file: !871, line: 19, baseType: !194, size: 128, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !872, file: !871, line: 20, baseType: !243, size: 64, offset: 256)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !872, file: !871, line: 21, baseType: !130, size: 64, offset: 320)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !866, file: !321, line: 40, baseType: !880, size: 64, offset: 448)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shm_zone_init_pt", file: !321, line: 33, baseType: !881)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!529, !864, !128}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !866, file: !321, line: 41, baseType: !128, size: 64, offset: 512)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !866, file: !321, line: 42, baseType: !128, size: 64, offset: 576)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "noreuse", scope: !866, file: !321, line: 43, baseType: !130, size: 64, offset: 640)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !772, file: !771, line: 138, baseType: !888, size: 64, offset: 3136)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_resolved_t", file: !771, line: 114, baseType: !890)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !771, line: 101, size: 704, elements: !891)
!891 = !{!892, !893, !894, !895, !896, !909, !910, !911, !912}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !890, file: !771, line: 102, baseType: !194, size: 128)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !890, file: !771, line: 103, baseType: !508, size: 16, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "no_port", scope: !890, file: !771, line: 104, baseType: !130, size: 64, offset: 192)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !890, file: !771, line: 106, baseType: !130, size: 64, offset: 256)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !890, file: !771, line: 107, baseType: !897, size: 64, offset: 320)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_addr_t", file: !899, line: 67, baseType: !900)
!899 = !DIFile(filename: "src/core/ngx_resolver.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f052cfe8812cf8cb9c2edba7fbbb264b")
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !899, line: 61, size: 320, elements: !901)
!901 = !{!902, !903, !904, !905, !908}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !900, file: !899, line: 62, baseType: !427, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !900, file: !899, line: 63, baseType: !440, size: 32, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !900, file: !899, line: 64, baseType: !194, size: 128, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !900, file: !899, line: 65, baseType: !906, size: 16, offset: 256)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !152, line: 34, baseType: !907)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !154, line: 32, baseType: !434)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !900, file: !899, line: 66, baseType: !906, size: 16, offset: 272)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !890, file: !771, line: 109, baseType: !427, size: 64, offset: 384)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "socklen", scope: !890, file: !771, line: 110, baseType: !440, size: 32, offset: 448)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !890, file: !771, line: 111, baseType: !194, size: 128, offset: 512)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !890, file: !771, line: 113, baseType: !913, size: 64, offset: 640)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_ctx_t", file: !899, line: 56, baseType: !915)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_resolver_ctx_s", file: !899, line: 195, size: 1792, elements: !916)
!916 = !{!917, !918, !951, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1037, !1038, !1039, !1052, !1057, !1058, !1059, !1060, !1061, !1062, !1063}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !915, file: !899, line: 196, baseType: !913, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !915, file: !899, line: 197, baseType: !919, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_t", file: !899, line: 40, baseType: !921)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_resolver_s", file: !899, line: 148, size: 4096, elements: !922)
!922 = !{!923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !921, file: !899, line: 150, baseType: !340, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !921, file: !899, line: 151, baseType: !128, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !921, file: !899, line: 152, baseType: !243, size: 64, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !921, file: !899, line: 155, baseType: !529, size: 64, offset: 192)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !921, file: !899, line: 158, baseType: !123, size: 320, offset: 256)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "last_connection", scope: !921, file: !899, line: 159, baseType: !130, size: 64, offset: 576)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "name_rbtree", scope: !921, file: !899, line: 161, baseType: !468, size: 192, offset: 640)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "name_sentinel", scope: !921, file: !899, line: 162, baseType: !376, size: 320, offset: 832)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "srv_rbtree", scope: !921, file: !899, line: 164, baseType: !468, size: 192, offset: 1152)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "srv_sentinel", scope: !921, file: !899, line: 165, baseType: !376, size: 320, offset: 1344)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "addr_rbtree", scope: !921, file: !899, line: 167, baseType: !468, size: 192, offset: 1664)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "addr_sentinel", scope: !921, file: !899, line: 168, baseType: !376, size: 320, offset: 1856)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "name_resend_queue", scope: !921, file: !899, line: 170, baseType: !389, size: 128, offset: 2176)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "srv_resend_queue", scope: !921, file: !899, line: 171, baseType: !389, size: 128, offset: 2304)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "addr_resend_queue", scope: !921, file: !899, line: 172, baseType: !389, size: 128, offset: 2432)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "name_expire_queue", scope: !921, file: !899, line: 174, baseType: !389, size: 128, offset: 2560)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "srv_expire_queue", scope: !921, file: !899, line: 175, baseType: !389, size: 128, offset: 2688)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "addr_expire_queue", scope: !921, file: !899, line: 176, baseType: !389, size: 128, offset: 2816)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6", scope: !921, file: !899, line: 179, baseType: !130, size: 64, offset: 2944)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_rbtree", scope: !921, file: !899, line: 180, baseType: !468, size: 192, offset: 3008)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_sentinel", scope: !921, file: !899, line: 181, baseType: !376, size: 320, offset: 3200)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_resend_queue", scope: !921, file: !899, line: 182, baseType: !389, size: 128, offset: 3520)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "addr6_expire_queue", scope: !921, file: !899, line: 183, baseType: !389, size: 128, offset: 3648)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "resend_timeout", scope: !921, file: !899, line: 186, baseType: !265, size: 64, offset: 3776)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_timeout", scope: !921, file: !899, line: 187, baseType: !265, size: 64, offset: 3840)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !921, file: !899, line: 188, baseType: !265, size: 64, offset: 3904)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !921, file: !899, line: 189, baseType: !265, size: 64, offset: 3968)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !921, file: !899, line: 191, baseType: !130, size: 64, offset: 4032)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !915, file: !899, line: 198, baseType: !952, size: 64, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_node_t", file: !899, line: 145, baseType: !954)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !899, line: 92, size: 1472, elements: !955)
!955 = !{!956, !957, !958, !959, !979, !980, !981, !982, !983, !1000, !1001, !1002, !1003, !1004, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !954, file: !899, line: 93, baseType: !376, size: 320)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !954, file: !899, line: 94, baseType: !389, size: 128, offset: 320)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !954, file: !899, line: 97, baseType: !150, size: 64, offset: 448)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "addr6", scope: !954, file: !899, line: 101, baseType: !960, size: 128, offset: 512)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !509, line: 219, size: 128, elements: !961)
!961 = !{!962}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !960, file: !509, line: 226, baseType: !963, size: 128)
!963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !960, file: !509, line: 221, size: 128, elements: !964)
!964 = !{!965, !971, !975}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !963, file: !509, line: 223, baseType: !966, size: 128)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !967, size: 128, elements: !969)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !511, line: 24, baseType: !968)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !154, line: 38, baseType: !155)
!969 = !{!970}
!970 = !DISubrange(count: 16)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !963, file: !509, line: 224, baseType: !972, size: 128)
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, size: 128, elements: !973)
!973 = !{!974}
!974 = !DISubrange(count: 8)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !963, file: !509, line: 225, baseType: !976, size: 128)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !758, size: 128, elements: !977)
!977 = !{!978}
!978 = !DISubrange(count: 4)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "nlen", scope: !954, file: !899, line: 104, baseType: !906, size: 16, offset: 640)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !954, file: !899, line: 105, baseType: !906, size: 16, offset: 656)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !954, file: !899, line: 107, baseType: !150, size: 64, offset: 704)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "query6", scope: !954, file: !899, line: 109, baseType: !150, size: 64, offset: 768)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !954, file: !899, line: 117, baseType: !984, size: 64, offset: 832)
!984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !954, file: !899, line: 112, size: 64, elements: !985)
!985 = !{!986, !988, !990, !991}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !984, file: !899, line: 113, baseType: !987, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !509, line: 30, baseType: !758)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !984, file: !899, line: 114, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "cname", scope: !984, file: !899, line: 115, baseType: !150, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "srvs", scope: !984, file: !899, line: 116, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_srv_t", file: !899, line: 75, baseType: !994)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !899, line: 70, size: 192, elements: !995)
!995 = !{!996, !997, !998, !999}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !994, file: !899, line: 71, baseType: !194, size: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !994, file: !899, line: 72, baseType: !906, size: 16, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !994, file: !899, line: 73, baseType: !906, size: 16, offset: 144)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !994, file: !899, line: 74, baseType: !906, size: 16, offset: 160)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !954, file: !899, line: 119, baseType: !151, size: 8, offset: 896)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !954, file: !899, line: 120, baseType: !906, size: 16, offset: 912)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "nsrvs", scope: !954, file: !899, line: 121, baseType: !906, size: 16, offset: 928)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "cnlen", scope: !954, file: !899, line: 122, baseType: !906, size: 16, offset: 944)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "u6", scope: !954, file: !899, line: 128, baseType: !1005, size: 128, offset: 960)
!1005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !954, file: !899, line: 125, size: 128, elements: !1006)
!1006 = !{!1007, !1008}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "addr6", scope: !1005, file: !899, line: 126, baseType: !960, size: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "addrs6", scope: !1005, file: !899, line: 127, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs6", scope: !954, file: !899, line: 130, baseType: !906, size: 16, offset: 1088)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !954, file: !899, line: 133, baseType: !265, size: 64, offset: 1152)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !954, file: !899, line: 134, baseType: !265, size: 64, offset: 1216)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !954, file: !899, line: 135, baseType: !758, size: 32, offset: 1280)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !954, file: !899, line: 137, baseType: !213, size: 1, offset: 1312, flags: DIFlagBitField, extraData: i64 1312)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "tcp6", scope: !954, file: !899, line: 139, baseType: !213, size: 1, offset: 1313, flags: DIFlagBitField, extraData: i64 1312)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "last_connection", scope: !954, file: !899, line: 142, baseType: !130, size: 64, offset: 1344)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !954, file: !899, line: 144, baseType: !913, size: 64, offset: 1408)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !915, file: !899, line: 201, baseType: !529, size: 64, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !915, file: !899, line: 203, baseType: !529, size: 64, offset: 256)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !915, file: !899, line: 204, baseType: !194, size: 128, offset: 320)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "service", scope: !915, file: !899, line: 205, baseType: !194, size: 128, offset: 448)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !915, file: !899, line: 207, baseType: !265, size: 64, offset: 576)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !915, file: !899, line: 208, baseType: !130, size: 64, offset: 640)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !915, file: !899, line: 209, baseType: !897, size: 64, offset: 704)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !915, file: !899, line: 210, baseType: !898, size: 320, offset: 768)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !915, file: !899, line: 211, baseType: !1027, size: 128, offset: 1088)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !509, line: 245, size: 128, elements: !1028)
!1028 = !{!1029, !1030, !1031, !1035}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !1027, file: !509, line: 247, baseType: !432, size: 16)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !1027, file: !509, line: 248, baseType: !508, size: 16, offset: 16)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !1027, file: !509, line: 249, baseType: !1032, size: 32, offset: 32)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !509, line: 31, size: 32, elements: !1033)
!1033 = !{!1034}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !1032, file: !509, line: 33, baseType: !987, size: 32)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !1027, file: !509, line: 252, baseType: !1036, size: 64, offset: 64)
!1036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 64, elements: !973)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !915, file: !899, line: 213, baseType: !130, size: 64, offset: 1216)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "nsrvs", scope: !915, file: !899, line: 214, baseType: !130, size: 64, offset: 1280)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "srvs", scope: !915, file: !899, line: 215, baseType: !1040, size: 64, offset: 1344)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_srv_name_t", file: !899, line: 89, baseType: !1042)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !899, line: 78, size: 448, elements: !1043)
!1043 = !{!1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1042, file: !899, line: 79, baseType: !194, size: 128)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1042, file: !899, line: 80, baseType: !906, size: 16, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1042, file: !899, line: 81, baseType: !906, size: 16, offset: 144)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1042, file: !899, line: 82, baseType: !906, size: 16, offset: 160)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1042, file: !899, line: 84, baseType: !913, size: 64, offset: 192)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1042, file: !899, line: 85, baseType: !529, size: 64, offset: 256)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !1042, file: !899, line: 87, baseType: !130, size: 64, offset: 320)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !1042, file: !899, line: 88, baseType: !807, size: 64, offset: 384)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !915, file: !899, line: 217, baseType: !1053, size: 64, offset: 1408)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_resolver_handler_pt", file: !899, line: 58, baseType: !1054)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !913}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !915, file: !899, line: 218, baseType: !128, size: 64, offset: 1472)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !915, file: !899, line: 219, baseType: !463, size: 64, offset: 1536)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "quick", scope: !915, file: !899, line: 221, baseType: !213, size: 1, offset: 1600, flags: DIFlagBitField, extraData: i64 1600)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !915, file: !899, line: 222, baseType: !213, size: 1, offset: 1601, flags: DIFlagBitField, extraData: i64 1600)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "cancelable", scope: !915, file: !899, line: 223, baseType: !213, size: 1, offset: 1602, flags: DIFlagBitField, extraData: i64 1600)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "recursion", scope: !915, file: !899, line: 224, baseType: !130, size: 64, offset: 1664)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !915, file: !899, line: 225, baseType: !340, size: 64, offset: 1728)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !772, file: !771, line: 139, baseType: !1065, size: 64, offset: 3200)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_upstream_state_t", file: !771, line: 98, baseType: !1067)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !771, line: 90, size: 384, elements: !1068)
!1068 = !{!1069, !1070, !1071, !1072, !1073, !1074}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "response_time", scope: !1067, file: !771, line: 91, baseType: !463, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !1067, file: !771, line: 92, baseType: !463, size: 64, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "first_byte_time", scope: !1067, file: !771, line: 93, baseType: !463, size: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_sent", scope: !1067, file: !771, line: 94, baseType: !175, size: 64, offset: 192)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_received", scope: !1067, file: !771, line: 95, baseType: !175, size: 64, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !1067, file: !771, line: 97, baseType: !714, size: 64, offset: 320)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !772, file: !771, line: 140, baseType: !213, size: 1, offset: 3264, flags: DIFlagBitField, extraData: i64 3264)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol", scope: !772, file: !771, line: 141, baseType: !213, size: 1, offset: 3265, flags: DIFlagBitField, extraData: i64 3264)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_states", scope: !755, file: !754, line: 211, baseType: !122, size: 64, offset: 640)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "variables", scope: !755, file: !754, line: 213, baseType: !1079, size: 64, offset: 704)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_variable_value_t", file: !1081, line: 17, baseType: !1082)
!1081 = !DIFile(filename: "src/stream/ngx_stream_variables.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "9fb175b04865878c75328ce50a6318ed")
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_variable_value_t", file: !195, line: 37, baseType: !1083)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !195, line: 28, size: 128, elements: !1084)
!1084 = !{!1085, !1086, !1087, !1088, !1089, !1090}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1083, file: !195, line: 29, baseType: !213, size: 28, flags: DIFlagBitField, extraData: i64 0)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1083, file: !195, line: 31, baseType: !213, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "no_cacheable", scope: !1083, file: !195, line: 32, baseType: !213, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "not_found", scope: !1083, file: !195, line: 33, baseType: !213, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "escape", scope: !1083, file: !195, line: 34, baseType: !213, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1083, file: !195, line: 36, baseType: !150, size: 64, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "phase_handler", scope: !755, file: !754, line: 221, baseType: !529, size: 64, offset: 768)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !755, file: !754, line: 222, baseType: !130, size: 64, offset: 832)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !755, file: !754, line: 224, baseType: !213, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "stat_processing", scope: !755, file: !754, line: 226, baseType: !213, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "health_check", scope: !755, file: !754, line: 228, baseType: !213, size: 1, offset: 898, flags: DIFlagBitField, extraData: i64 896)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !748, file: !742, line: 30, baseType: !140, size: 64, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !748, file: !742, line: 31, baseType: !1098, size: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_lua_cleanup_t", file: !742, line: 13, baseType: !1100)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_stream_lua_cleanup_s", file: !742, line: 15, size: 192, elements: !1101)
!1101 = !{!1102, !1104, !1105}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1100, file: !742, line: 16, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_lua_cleanup_pt", file: !742, line: 11, baseType: !311)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1100, file: !742, line: 17, baseType: !128, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1100, file: !742, line: 18, baseType: !1098, size: 64, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "read_event_handler", scope: !748, file: !742, line: 33, baseType: !1107, size: 64, offset: 256)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_lua_event_handler_pt", file: !742, line: 24, baseType: !1108)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{null, !746}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "write_event_handler", scope: !748, file: !742, line: 34, baseType: !1107, size: 64, offset: 320)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_conf_ctx_t", file: !754, line: 41, baseType: !1114)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !754, line: 38, size: 128, elements: !1115)
!1115 = !{!1116, !1117}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "main_conf", scope: !1114, file: !754, line: 39, baseType: !326, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "srv_conf", scope: !1114, file: !754, line: 40, baseType: !326, size: 64, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_lua_main_conf_handler_pt", file: !1119, line: 159, baseType: !1120)
!1119 = !DIFile(filename: "../ngx_stream_lua-0.0.7/src/ngx_stream_lua_common.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "4e05fc77816ba2ab92ec88110a59787d")
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!529, !243, !1123, !1128}
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_lua_main_conf_t", file: !1119, line: 148, baseType: !1125)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_stream_lua_main_conf_s", file: !1119, line: 171, size: 1984, elements: !1126)
!1126 = !{!1127, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1155, !1156, !1160, !1161, !1162, !1163, !1164, !1165, !1166}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "lua", scope: !1125, file: !1119, line: 172, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !1130, line: 51, baseType: !1131)
!1130 = !DIFile(filename: "luajit-root/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/luajit/include/luajit-2.1/lua.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build", checksumkind: CSK_MD5, checksum: "255fa697efe8afbe3c913e4a8fc1e62f")
!1131 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !1130, line: 51, flags: DIFlagFwdDecl)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "vm_cleanup", scope: !1125, file: !1119, line: 173, baseType: !305, size: 64, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "lua_path", scope: !1125, file: !1119, line: 175, baseType: !194, size: 128, offset: 128)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "lua_cpath", scope: !1125, file: !1119, line: 176, baseType: !194, size: 128, offset: 256)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !1125, file: !1119, line: 178, baseType: !318, size: 64, offset: 384)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !1125, file: !1119, line: 179, baseType: !140, size: 64, offset: 448)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "load_resty_core", scope: !1125, file: !1119, line: 181, baseType: !740, size: 64, offset: 512)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "max_pending_timers", scope: !1125, file: !1119, line: 183, baseType: !529, size: 64, offset: 576)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "pending_timers", scope: !1125, file: !1119, line: 184, baseType: !529, size: 64, offset: 640)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "max_running_timers", scope: !1125, file: !1119, line: 186, baseType: !529, size: 64, offset: 704)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "running_timers", scope: !1125, file: !1119, line: 187, baseType: !529, size: 64, offset: 768)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "watcher", scope: !1125, file: !1119, line: 189, baseType: !333, size: 64, offset: 832)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "shm_zones", scope: !1125, file: !1119, line: 202, baseType: !122, size: 64, offset: 896)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "shdict_zones", scope: !1125, file: !1119, line: 204, baseType: !122, size: 64, offset: 960)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "preload_hooks", scope: !1125, file: !1119, line: 206, baseType: !122, size: 64, offset: 1024)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "postponed_to_preread_phase_end", scope: !1125, file: !1119, line: 208, baseType: !740, size: 64, offset: 1088)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "init_handler", scope: !1125, file: !1119, line: 210, baseType: !1118, size: 64, offset: 1152)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "init_src", scope: !1125, file: !1119, line: 211, baseType: !194, size: 128, offset: 1216)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "init_worker_handler", scope: !1125, file: !1119, line: 213, baseType: !1118, size: 64, offset: 1344)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "init_worker_src", scope: !1125, file: !1119, line: 214, baseType: !194, size: 128, offset: 1408)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "balancer_peer_data", scope: !1125, file: !1119, line: 216, baseType: !1152, size: 64, offset: 1536)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_lua_balancer_peer_data_t", file: !1119, line: 153, baseType: !1154)
!1154 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_stream_lua_balancer_peer_data_s", file: !1119, line: 152, flags: DIFlagFwdDecl)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "shm_zones_inited", scope: !1125, file: !1119, line: 223, baseType: !130, size: 64, offset: 1600)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "sema_mm", scope: !1125, file: !1119, line: 225, baseType: !1157, size: 64, offset: 1664)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_lua_sema_mm_t", file: !1119, line: 156, baseType: !1159)
!1159 = !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_stream_lua_sema_mm_s", file: !1119, line: 156, flags: DIFlagFwdDecl)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_trim_cycle", scope: !1125, file: !1119, line: 227, baseType: !130, size: 64, offset: 1728)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_trim_req_count", scope: !1125, file: !1119, line: 229, baseType: !130, size: 64, offset: 1792)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "set_sa_restart", scope: !1125, file: !1119, line: 232, baseType: !740, size: 64, offset: 1856)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "requires_preread", scope: !1125, file: !1119, line: 234, baseType: !213, size: 1, offset: 1920, flags: DIFlagBitField, extraData: i64 1920)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "requires_log", scope: !1125, file: !1119, line: 236, baseType: !213, size: 1, offset: 1921, flags: DIFlagBitField, extraData: i64 1920)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "requires_shm", scope: !1125, file: !1119, line: 237, baseType: !213, size: 1, offset: 1922, flags: DIFlagBitField, extraData: i64 1920)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "requires_capture_log", scope: !1125, file: !1119, line: 238, baseType: !213, size: 1, offset: 1923, flags: DIFlagBitField, extraData: i64 1920)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_lua_log_ringbuf_t", file: !1169, line: 25, baseType: !1170)
!1169 = !DIFile(filename: "../ngx_stream_lua-0.0.7/src/ngx_stream_lua_log_ringbuf.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "350109297ac1408c26b307eb225c3438")
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1169, line: 17, size: 448, elements: !1171)
!1171 = !{!1172, !1173, !1174, !1175, !1176, !1177, !1178}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "filter_level", scope: !1170, file: !1169, line: 18, baseType: !130, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1170, file: !1169, line: 19, baseType: !113, size: 64, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1170, file: !1169, line: 20, baseType: !113, size: 64, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1170, file: !1169, line: 21, baseType: !113, size: 64, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !1170, file: !1169, line: 22, baseType: !113, size: 64, offset: 256)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1170, file: !1169, line: 23, baseType: !136, size: 64, offset: 320)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1170, file: !1169, line: 24, baseType: !136, size: 64, offset: 384)
!1179 = !{!0, !7, !9, !14, !19, !24, !29, !34, !39, !41, !46, !48, !53, !55, !60, !65, !70, !75, !80, !85, !87, !92, !97, !102}
!1180 = !{i32 7, !"Dwarf Version", i32 5}
!1181 = !{i32 2, !"Debug Info Version", i32 3}
!1182 = !{i32 1, !"wchar_size", i32 4}
!1183 = !{i32 8, !"PIC Level", i32 2}
!1184 = !{i32 7, !"PIE Level", i32 2}
!1185 = !{i32 7, !"uwtable", i32 2}
!1186 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!1187 = distinct !DISubprogram(name: "ngx_stream_lua_shared_dict", scope: !2, file: !2, line: 73, type: !606, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !1188)
!1188 = !{!1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1198, !1278}
!1189 = !DILocalVariable(name: "cf", arg: 1, scope: !1187, file: !2, line: 73, type: !114)
!1190 = !DILocalVariable(name: "cmd", arg: 2, scope: !1187, file: !2, line: 73, type: !598)
!1191 = !DILocalVariable(name: "conf", arg: 3, scope: !1187, file: !2, line: 73, type: !128)
!1192 = !DILocalVariable(name: "lmcf", scope: !1187, file: !2, line: 75, type: !1123)
!1193 = !DILocalVariable(name: "value", scope: !1187, file: !2, line: 76, type: !714)
!1194 = !DILocalVariable(name: "name", scope: !1187, file: !2, line: 76, type: !194)
!1195 = !DILocalVariable(name: "zone", scope: !1187, file: !2, line: 77, type: !864)
!1196 = !DILocalVariable(name: "zp", scope: !1187, file: !2, line: 78, type: !1197)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!1198 = !DILocalVariable(name: "ctx", scope: !1187, file: !2, line: 79, type: !1199)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_lua_shdict_ctx_t", file: !1201, line: 55, baseType: !1202)
!1201 = !DIFile(filename: "../ngx_stream_lua-0.0.7/src/ngx_stream_lua_shdict.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "b3f3a4d8e8c9b50c17bda2ca9feeee8b")
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1201, line: 49, size: 384, elements: !1203)
!1203 = !{!1204, !1212, !1275, !1276, !1277}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !1202, file: !1201, line: 50, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_lua_shdict_shctx_t", file: !1201, line: 46, baseType: !1207)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1201, line: 42, size: 640, elements: !1208)
!1208 = !{!1209, !1210, !1211}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "rbtree", scope: !1207, file: !1201, line: 43, baseType: !468, size: 192)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !1207, file: !1201, line: 44, baseType: !376, size: 320, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "lru_queue", scope: !1207, file: !1201, line: 45, baseType: !389, size: 128, offset: 512)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "shpool", scope: !1202, file: !1201, line: 51, baseType: !1213, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_pool_t", file: !1215, line: 59, baseType: !1216)
!1215 = !DIFile(filename: "src/core/ngx_slab.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "6137611cd598fa2ecc498e6967a03177")
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1215, line: 34, size: 1600, elements: !1217)
!1217 = !{!1218, !1227, !1228, !1229, !1237, !1238, !1239, !1248, !1249, !1250, !1251, !1270, !1271, !1272, !1273, !1274}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1216, file: !1215, line: 35, baseType: !1219, size: 128)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shmtx_sh_t", file: !1220, line: 21, baseType: !1221)
!1220 = !DIFile(filename: "src/core/ngx_shmtx.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "56a332e5761f46e2bb83cbdaf8b18a9f")
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1220, line: 16, size: 128, elements: !1222)
!1222 = !{!1223, !1226}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1221, file: !1220, line: 17, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_atomic_t", file: !263, line: 106, baseType: !1225)
!1225 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !262)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1221, file: !1220, line: 19, baseType: !1224, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "min_size", scope: !1216, file: !1215, line: 37, baseType: !136, size: 64, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "min_shift", scope: !1216, file: !1215, line: 38, baseType: !136, size: 64, offset: 192)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1216, file: !1215, line: 40, baseType: !1230, size: 64, offset: 256)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_page_t", file: !1215, line: 16, baseType: !1232)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_slab_page_s", file: !1215, line: 18, size: 192, elements: !1233)
!1233 = !{!1234, !1235, !1236}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "slab", scope: !1232, file: !1215, line: 19, baseType: !132, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1232, file: !1215, line: 20, baseType: !1230, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1232, file: !1215, line: 21, baseType: !132, size: 64, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1216, file: !1215, line: 41, baseType: !1230, size: 64, offset: 320)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1216, file: !1215, line: 42, baseType: !1231, size: 192, offset: 384)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1216, file: !1215, line: 44, baseType: !1240, size: 64, offset: 576)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_slab_stat_t", file: !1215, line: 31, baseType: !1242)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1215, line: 25, size: 256, elements: !1243)
!1243 = !{!1244, !1245, !1246, !1247}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !1242, file: !1215, line: 26, baseType: !130, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1242, file: !1215, line: 27, baseType: !130, size: 64, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "reqs", scope: !1242, file: !1215, line: 29, baseType: !130, size: 64, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "fails", scope: !1242, file: !1215, line: 30, baseType: !130, size: 64, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !1216, file: !1215, line: 45, baseType: !130, size: 64, offset: 640)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1216, file: !1215, line: 47, baseType: !150, size: 64, offset: 704)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1216, file: !1215, line: 48, baseType: !150, size: 64, offset: 768)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1216, file: !1215, line: 50, baseType: !1252, size: 512, offset: 832)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_shmtx_t", file: !1220, line: 37, baseType: !1253)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1220, line: 24, size: 512, elements: !1254)
!1254 = !{!1255, !1257, !1258, !1259, !1269}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1253, file: !1220, line: 26, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1253, file: !1220, line: 28, baseType: !1256, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !1253, file: !1220, line: 29, baseType: !130, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1253, file: !1220, line: 30, baseType: !1260, size: 256, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !1261, line: 39, baseType: !1262)
!1261 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/semaphore.h", directory: "", checksumkind: CSK_MD5, checksum: "f0ec69aef73516c696d526041269f8fd")
!1262 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !1261, line: 35, size: 256, elements: !1263)
!1263 = !{!1264, !1268}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1262, file: !1261, line: 37, baseType: !1265, size: 256)
!1265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !1266)
!1266 = !{!1267}
!1267 = !DISubrange(count: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1262, file: !1261, line: 38, baseType: !177, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "spin", scope: !1253, file: !1220, line: 36, baseType: !130, size: 64, offset: 448)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "log_ctx", scope: !1216, file: !1215, line: 52, baseType: !150, size: 64, offset: 1344)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !1216, file: !1215, line: 53, baseType: !151, size: 8, offset: 1408)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "log_nomem", scope: !1216, file: !1215, line: 55, baseType: !213, size: 1, offset: 1416, flags: DIFlagBitField, extraData: i64 1416)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1216, file: !1215, line: 57, baseType: !128, size: 64, offset: 1472)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1216, file: !1215, line: 58, baseType: !128, size: 64, offset: 1536)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1202, file: !1201, line: 52, baseType: !194, size: 128, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "main_conf", scope: !1202, file: !1201, line: 53, baseType: !1123, size: 64, offset: 256)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1202, file: !1201, line: 54, baseType: !243, size: 64, offset: 320)
!1278 = !DILocalVariable(name: "size", scope: !1187, file: !2, line: 80, type: !406)
!1279 = !{!1280, !1280, i64 0}
!1280 = !{!"any pointer", !1281, i64 0}
!1281 = !{!"omnipotent char", !1282, i64 0}
!1282 = !{!"Simple C/C++ TBAA"}
!1283 = !DILocation(line: 73, column: 40, scope: !1187)
!1284 = !DILocation(line: 73, column: 59, scope: !1187)
!1285 = !DILocation(line: 73, column: 70, scope: !1187)
!1286 = !DILocation(line: 75, column: 5, scope: !1187)
!1287 = !DILocation(line: 75, column: 41, scope: !1187)
!1288 = !DILocation(line: 75, column: 48, scope: !1187)
!1289 = !DILocation(line: 76, column: 5, scope: !1187)
!1290 = !DILocation(line: 76, column: 41, scope: !1187)
!1291 = !DILocation(line: 76, column: 48, scope: !1187)
!1292 = !DILocation(line: 77, column: 5, scope: !1187)
!1293 = !DILocation(line: 77, column: 41, scope: !1187)
!1294 = !DILocation(line: 78, column: 5, scope: !1187)
!1295 = !DILocation(line: 78, column: 41, scope: !1187)
!1296 = !DILocation(line: 79, column: 5, scope: !1187)
!1297 = !DILocation(line: 79, column: 41, scope: !1187)
!1298 = !DILocation(line: 80, column: 5, scope: !1187)
!1299 = !DILocation(line: 80, column: 41, scope: !1187)
!1300 = !DILocation(line: 82, column: 9, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 82, column: 9)
!1302 = !DILocation(line: 82, column: 15, scope: !1301)
!1303 = !{!1304, !1280, i64 120}
!1304 = !{!"ngx_stream_lua_main_conf_s", !1280, i64 0, !1280, i64 8, !1305, i64 16, !1305, i64 32, !1280, i64 48, !1280, i64 56, !1306, i64 64, !1306, i64 72, !1306, i64 80, !1306, i64 88, !1306, i64 96, !1280, i64 104, !1280, i64 112, !1280, i64 120, !1280, i64 128, !1306, i64 136, !1280, i64 144, !1305, i64 152, !1280, i64 168, !1305, i64 176, !1280, i64 192, !1306, i64 200, !1280, i64 208, !1306, i64 216, !1306, i64 224, !1306, i64 232, !1307, i64 240, !1307, i64 240, !1307, i64 240, !1307, i64 240}
!1305 = !{!"", !1306, i64 0, !1280, i64 8}
!1306 = !{!"long", !1281, i64 0}
!1307 = !{!"int", !1281, i64 0}
!1308 = !DILocation(line: 82, column: 28, scope: !1301)
!1309 = !DILocation(line: 82, column: 9, scope: !1187)
!1310 = !DILocation(line: 83, column: 41, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1301, file: !2, line: 82, column: 37)
!1312 = !DILocation(line: 83, column: 45, scope: !1311)
!1313 = !{!1314, !1280, i64 24}
!1314 = !{!"ngx_conf_s", !1280, i64 0, !1280, i64 8, !1280, i64 16, !1280, i64 24, !1280, i64 32, !1280, i64 40, !1280, i64 48, !1280, i64 56, !1306, i64 64, !1306, i64 72, !1280, i64 80, !1280, i64 88}
!1315 = !DILocation(line: 83, column: 30, scope: !1311)
!1316 = !DILocation(line: 83, column: 9, scope: !1311)
!1317 = !DILocation(line: 83, column: 15, scope: !1311)
!1318 = !DILocation(line: 83, column: 28, scope: !1311)
!1319 = !DILocation(line: 84, column: 13, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1311, file: !2, line: 84, column: 13)
!1321 = !DILocation(line: 84, column: 19, scope: !1320)
!1322 = !DILocation(line: 84, column: 32, scope: !1320)
!1323 = !DILocation(line: 84, column: 13, scope: !1311)
!1324 = !DILocation(line: 85, column: 13, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1320, file: !2, line: 84, column: 41)
!1326 = !DILocation(line: 88, column: 28, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1311, file: !2, line: 88, column: 13)
!1328 = !DILocation(line: 88, column: 34, scope: !1327)
!1329 = !DILocation(line: 88, column: 48, scope: !1327)
!1330 = !DILocation(line: 88, column: 52, scope: !1327)
!1331 = !DILocation(line: 88, column: 13, scope: !1327)
!1332 = !DILocation(line: 90, column: 13, scope: !1327)
!1333 = !DILocation(line: 88, column: 13, scope: !1311)
!1334 = !DILocation(line: 92, column: 13, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1327, file: !2, line: 91, column: 9)
!1336 = !DILocation(line: 94, column: 5, scope: !1311)
!1337 = !DILocation(line: 96, column: 13, scope: !1187)
!1338 = !DILocation(line: 96, column: 17, scope: !1187)
!1339 = !{!1314, !1280, i64 8}
!1340 = !DILocation(line: 96, column: 23, scope: !1187)
!1341 = !{!1342, !1280, i64 0}
!1342 = !{!"", !1280, i64 0, !1306, i64 8, !1306, i64 16, !1306, i64 24, !1280, i64 32}
!1343 = !DILocation(line: 96, column: 11, scope: !1187)
!1344 = !DILocation(line: 98, column: 9, scope: !1187)
!1345 = !DILocation(line: 100, column: 9, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 100, column: 9)
!1347 = !DILocation(line: 100, column: 18, scope: !1346)
!1348 = !{!1305, !1306, i64 0}
!1349 = !DILocation(line: 100, column: 22, scope: !1346)
!1350 = !DILocation(line: 100, column: 9, scope: !1187)
!1351 = !DILocation(line: 101, column: 43, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1346, file: !2, line: 100, column: 28)
!1353 = !DILocation(line: 102, column: 68, scope: !1352)
!1354 = !DILocation(line: 101, column: 9, scope: !1352)
!1355 = !DILocation(line: 103, column: 9, scope: !1352)
!1356 = !DILocation(line: 106, column: 12, scope: !1187)
!1357 = !{i64 0, i64 8, !1358, i64 8, i64 8, !1279}
!1358 = !{!1306, !1306, i64 0}
!1359 = !DILocation(line: 108, column: 28, scope: !1187)
!1360 = !DILocation(line: 108, column: 12, scope: !1187)
!1361 = !DILocation(line: 108, column: 10, scope: !1187)
!1362 = !DILocation(line: 110, column: 9, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 110, column: 9)
!1364 = !DILocation(line: 110, column: 14, scope: !1363)
!1365 = !DILocation(line: 110, column: 9, scope: !1187)
!1366 = !DILocation(line: 111, column: 43, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1363, file: !2, line: 110, column: 23)
!1368 = !DILocation(line: 112, column: 68, scope: !1367)
!1369 = !DILocation(line: 111, column: 9, scope: !1367)
!1370 = !DILocation(line: 113, column: 9, scope: !1367)
!1371 = !DILocation(line: 116, column: 23, scope: !1187)
!1372 = !DILocation(line: 116, column: 27, scope: !1187)
!1373 = !DILocation(line: 116, column: 11, scope: !1187)
!1374 = !DILocation(line: 116, column: 9, scope: !1187)
!1375 = !DILocation(line: 117, column: 9, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 117, column: 9)
!1377 = !DILocation(line: 117, column: 13, scope: !1376)
!1378 = !DILocation(line: 117, column: 9, scope: !1187)
!1379 = !DILocation(line: 118, column: 9, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 117, column: 22)
!1381 = !DILocation(line: 121, column: 5, scope: !1187)
!1382 = !DILocation(line: 121, column: 10, scope: !1187)
!1383 = !DILocation(line: 121, column: 17, scope: !1187)
!1384 = !DILocation(line: 122, column: 22, scope: !1187)
!1385 = !DILocation(line: 122, column: 5, scope: !1187)
!1386 = !DILocation(line: 122, column: 10, scope: !1187)
!1387 = !DILocation(line: 122, column: 20, scope: !1187)
!1388 = !{!1389, !1280, i64 32}
!1389 = !{!"", !1280, i64 0, !1280, i64 8, !1305, i64 16, !1280, i64 32, !1280, i64 40}
!1390 = !DILocation(line: 123, column: 17, scope: !1187)
!1391 = !DILocation(line: 123, column: 21, scope: !1187)
!1392 = !{!1314, !1280, i64 16}
!1393 = !DILocation(line: 123, column: 28, scope: !1187)
!1394 = !DILocation(line: 123, column: 5, scope: !1187)
!1395 = !DILocation(line: 123, column: 10, scope: !1187)
!1396 = !DILocation(line: 123, column: 14, scope: !1187)
!1397 = !{!1389, !1280, i64 40}
!1398 = !DILocation(line: 125, column: 45, scope: !1187)
!1399 = !DILocation(line: 125, column: 65, scope: !1187)
!1400 = !DILocation(line: 125, column: 12, scope: !1187)
!1401 = !DILocation(line: 125, column: 10, scope: !1187)
!1402 = !DILocation(line: 127, column: 9, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 127, column: 9)
!1404 = !DILocation(line: 127, column: 14, scope: !1403)
!1405 = !DILocation(line: 127, column: 9, scope: !1187)
!1406 = !DILocation(line: 128, column: 9, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1403, file: !2, line: 127, column: 23)
!1408 = !DILocation(line: 131, column: 9, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 131, column: 9)
!1410 = !DILocation(line: 131, column: 15, scope: !1409)
!1411 = !{!1412, !1280, i64 0}
!1412 = !{!"ngx_shm_zone_s", !1280, i64 0, !1413, i64 8, !1280, i64 56, !1280, i64 64, !1280, i64 72, !1306, i64 80}
!1413 = !{!"", !1280, i64 0, !1306, i64 8, !1305, i64 16, !1280, i64 32, !1306, i64 40}
!1414 = !DILocation(line: 131, column: 9, scope: !1187)
!1415 = !DILocation(line: 132, column: 15, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 131, column: 21)
!1417 = !DILocation(line: 132, column: 21, scope: !1416)
!1418 = !DILocation(line: 132, column: 13, scope: !1416)
!1419 = !DILocation(line: 134, column: 43, scope: !1416)
!1420 = !DILocation(line: 136, column: 46, scope: !1416)
!1421 = !DILocation(line: 136, column: 51, scope: !1416)
!1422 = !DILocation(line: 134, column: 9, scope: !1416)
!1423 = !DILocation(line: 137, column: 9, scope: !1416)
!1424 = !DILocation(line: 140, column: 5, scope: !1187)
!1425 = !DILocation(line: 140, column: 11, scope: !1187)
!1426 = !DILocation(line: 140, column: 16, scope: !1187)
!1427 = !{!1412, !1280, i64 56}
!1428 = !DILocation(line: 141, column: 18, scope: !1187)
!1429 = !DILocation(line: 141, column: 5, scope: !1187)
!1430 = !DILocation(line: 141, column: 11, scope: !1187)
!1431 = !DILocation(line: 141, column: 16, scope: !1187)
!1432 = !DILocation(line: 143, column: 25, scope: !1187)
!1433 = !DILocation(line: 143, column: 31, scope: !1187)
!1434 = !DILocation(line: 143, column: 10, scope: !1187)
!1435 = !DILocation(line: 143, column: 8, scope: !1187)
!1436 = !DILocation(line: 144, column: 9, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 144, column: 9)
!1438 = !DILocation(line: 144, column: 12, scope: !1437)
!1439 = !DILocation(line: 144, column: 9, scope: !1187)
!1440 = !DILocation(line: 145, column: 9, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1437, file: !2, line: 144, column: 21)
!1442 = !DILocation(line: 148, column: 11, scope: !1187)
!1443 = !DILocation(line: 148, column: 6, scope: !1187)
!1444 = !DILocation(line: 148, column: 9, scope: !1187)
!1445 = !DILocation(line: 150, column: 5, scope: !1187)
!1446 = !DILocation(line: 150, column: 11, scope: !1187)
!1447 = !DILocation(line: 150, column: 24, scope: !1187)
!1448 = !DILocation(line: 152, column: 5, scope: !1187)
!1449 = !DILocation(line: 153, column: 1, scope: !1187)
!1450 = !DISubprogram(name: "ngx_palloc", scope: !143, file: !143, line: 79, type: !1451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!128, !140, !136}
!1453 = distinct !DISubprogram(name: "ngx_array_init", scope: !124, file: !124, line: 32, type: !1454, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !1456)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!529, !122, !140, !130, !136}
!1456 = !{!1457, !1458, !1459, !1460}
!1457 = !DILocalVariable(name: "array", arg: 1, scope: !1453, file: !124, line: 32, type: !122)
!1458 = !DILocalVariable(name: "pool", arg: 2, scope: !1453, file: !124, line: 32, type: !140)
!1459 = !DILocalVariable(name: "n", arg: 3, scope: !1453, file: !124, line: 32, type: !130)
!1460 = !DILocalVariable(name: "size", arg: 4, scope: !1453, file: !124, line: 32, type: !136)
!1461 = !DILocation(line: 32, column: 29, scope: !1453)
!1462 = !DILocation(line: 32, column: 48, scope: !1453)
!1463 = !DILocation(line: 32, column: 65, scope: !1453)
!1464 = !DILocation(line: 32, column: 75, scope: !1453)
!1465 = !DILocation(line: 39, column: 5, scope: !1453)
!1466 = !DILocation(line: 39, column: 12, scope: !1453)
!1467 = !DILocation(line: 39, column: 18, scope: !1453)
!1468 = !{!1342, !1306, i64 8}
!1469 = !DILocation(line: 40, column: 19, scope: !1453)
!1470 = !DILocation(line: 40, column: 5, scope: !1453)
!1471 = !DILocation(line: 40, column: 12, scope: !1453)
!1472 = !DILocation(line: 40, column: 17, scope: !1453)
!1473 = !{!1342, !1306, i64 16}
!1474 = !DILocation(line: 41, column: 21, scope: !1453)
!1475 = !DILocation(line: 41, column: 5, scope: !1453)
!1476 = !DILocation(line: 41, column: 12, scope: !1453)
!1477 = !DILocation(line: 41, column: 19, scope: !1453)
!1478 = !{!1342, !1306, i64 24}
!1479 = !DILocation(line: 42, column: 19, scope: !1453)
!1480 = !DILocation(line: 42, column: 5, scope: !1453)
!1481 = !DILocation(line: 42, column: 12, scope: !1453)
!1482 = !DILocation(line: 42, column: 17, scope: !1453)
!1483 = !{!1342, !1280, i64 32}
!1484 = !DILocation(line: 44, column: 30, scope: !1453)
!1485 = !DILocation(line: 44, column: 36, scope: !1453)
!1486 = !DILocation(line: 44, column: 40, scope: !1453)
!1487 = !DILocation(line: 44, column: 38, scope: !1453)
!1488 = !DILocation(line: 44, column: 19, scope: !1453)
!1489 = !DILocation(line: 44, column: 5, scope: !1453)
!1490 = !DILocation(line: 44, column: 12, scope: !1453)
!1491 = !DILocation(line: 44, column: 17, scope: !1453)
!1492 = !DILocation(line: 45, column: 9, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1453, file: !124, line: 45, column: 9)
!1494 = !DILocation(line: 45, column: 16, scope: !1493)
!1495 = !DILocation(line: 45, column: 21, scope: !1493)
!1496 = !DILocation(line: 45, column: 9, scope: !1453)
!1497 = !DILocation(line: 46, column: 9, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1493, file: !124, line: 45, column: 30)
!1499 = !DILocation(line: 49, column: 5, scope: !1453)
!1500 = !DILocation(line: 50, column: 1, scope: !1453)
!1501 = !DISubprogram(name: "ngx_conf_log_error", scope: !118, file: !118, line: 276, type: !1502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{null, !130, !114, !1504, !594, null}
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_err_t", file: !1505, line: 16, baseType: !192)
!1505 = !DIFile(filename: "src/os/unix/ngx_errno.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "30ed2ad8bb523aef1235abc1478ad7cf")
!1506 = !DISubprogram(name: "ngx_parse_size", scope: !1507, file: !1507, line: 16, type: !1508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1507 = !DIFile(filename: "src/core/ngx_parse.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "298f4ae89e2d0c2a0b5296127de5521e")
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!406, !714}
!1510 = !DISubprogram(name: "ngx_pcalloc", scope: !143, file: !143, line: 81, type: !1451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1511 = !DISubprogram(name: "ngx_stream_lua_shared_memory_add", scope: !1512, file: !1512, line: 59, type: !1513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1512 = !DIFile(filename: "../ngx_stream_lua-0.0.7/src/api/ngx_stream_lua_api.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "f257fb11e714521a806a028b458bd098")
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!864, !114, !714, !136, !128}
!1515 = !DISubprogram(name: "ngx_array_push", scope: !124, file: !124, line: 27, type: !1516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!128, !122}
!1518 = distinct !DISubprogram(name: "ngx_stream_lua_code_cache", scope: !2, file: !2, line: 157, type: !606, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !1519)
!1519 = !{!1520, !1521, !1522, !1523, !1524, !1525}
!1520 = !DILocalVariable(name: "cf", arg: 1, scope: !1518, file: !2, line: 157, type: !114)
!1521 = !DILocalVariable(name: "cmd", arg: 2, scope: !1518, file: !2, line: 157, type: !598)
!1522 = !DILocalVariable(name: "conf", arg: 3, scope: !1518, file: !2, line: 157, type: !128)
!1523 = !DILocalVariable(name: "p", scope: !1518, file: !2, line: 159, type: !113)
!1524 = !DILocalVariable(name: "fp", scope: !1518, file: !2, line: 160, type: !739)
!1525 = !DILocalVariable(name: "ret", scope: !1518, file: !2, line: 161, type: !113)
!1526 = !DILocation(line: 157, column: 39, scope: !1518)
!1527 = !DILocation(line: 157, column: 58, scope: !1518)
!1528 = !DILocation(line: 157, column: 69, scope: !1518)
!1529 = !DILocation(line: 159, column: 5, scope: !1518)
!1530 = !DILocation(line: 159, column: 23, scope: !1518)
!1531 = !DILocation(line: 159, column: 27, scope: !1518)
!1532 = !DILocation(line: 160, column: 5, scope: !1518)
!1533 = !DILocation(line: 160, column: 23, scope: !1518)
!1534 = !DILocation(line: 161, column: 5, scope: !1518)
!1535 = !DILocation(line: 161, column: 23, scope: !1518)
!1536 = !DILocation(line: 163, column: 34, scope: !1518)
!1537 = !DILocation(line: 163, column: 38, scope: !1518)
!1538 = !DILocation(line: 163, column: 43, scope: !1518)
!1539 = !DILocation(line: 163, column: 11, scope: !1518)
!1540 = !DILocation(line: 163, column: 9, scope: !1518)
!1541 = !DILocation(line: 164, column: 9, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 164, column: 9)
!1543 = !DILocation(line: 164, column: 13, scope: !1542)
!1544 = !DILocation(line: 164, column: 9, scope: !1518)
!1545 = !DILocation(line: 165, column: 16, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1542, file: !2, line: 164, column: 29)
!1547 = !DILocation(line: 165, column: 9, scope: !1546)
!1548 = !DILocation(line: 168, column: 26, scope: !1518)
!1549 = !DILocation(line: 168, column: 30, scope: !1518)
!1550 = !DILocation(line: 168, column: 35, scope: !1518)
!1551 = !{!1552, !1306, i64 40}
!1552 = !{!"ngx_command_s", !1305, i64 0, !1306, i64 16, !1280, i64 24, !1306, i64 32, !1306, i64 40, !1280, i64 48}
!1553 = !DILocation(line: 168, column: 28, scope: !1518)
!1554 = !DILocation(line: 168, column: 8, scope: !1518)
!1555 = !DILocation(line: 170, column: 11, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 170, column: 9)
!1557 = !DILocation(line: 170, column: 10, scope: !1556)
!1558 = !DILocation(line: 170, column: 9, scope: !1518)
!1559 = !DILocation(line: 171, column: 43, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !2, line: 170, column: 15)
!1561 = !DILocation(line: 171, column: 9, scope: !1560)
!1562 = !DILocation(line: 174, column: 5, scope: !1560)
!1563 = !DILocation(line: 176, column: 5, scope: !1518)
!1564 = !DILocation(line: 177, column: 1, scope: !1518)
!1565 = !DISubprogram(name: "ngx_conf_set_flag_slot", scope: !118, file: !118, line: 280, type: !606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1566 = distinct !DISubprogram(name: "ngx_stream_lua_package_cpath", scope: !2, file: !2, line: 181, type: !606, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !1567)
!1567 = !{!1568, !1569, !1570, !1571, !1572}
!1568 = !DILocalVariable(name: "cf", arg: 1, scope: !1566, file: !2, line: 181, type: !114)
!1569 = !DILocalVariable(name: "cmd", arg: 2, scope: !1566, file: !2, line: 181, type: !598)
!1570 = !DILocalVariable(name: "conf", arg: 3, scope: !1566, file: !2, line: 181, type: !128)
!1571 = !DILocalVariable(name: "lmcf", scope: !1566, file: !2, line: 183, type: !1123)
!1572 = !DILocalVariable(name: "value", scope: !1566, file: !2, line: 185, type: !714)
!1573 = !DILocation(line: 181, column: 42, scope: !1566)
!1574 = !DILocation(line: 181, column: 61, scope: !1566)
!1575 = !DILocation(line: 181, column: 72, scope: !1566)
!1576 = !DILocation(line: 183, column: 5, scope: !1566)
!1577 = !DILocation(line: 183, column: 39, scope: !1566)
!1578 = !DILocation(line: 183, column: 46, scope: !1566)
!1579 = !DILocation(line: 185, column: 5, scope: !1566)
!1580 = !DILocation(line: 185, column: 23, scope: !1566)
!1581 = !DILocation(line: 187, column: 9, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1566, file: !2, line: 187, column: 9)
!1583 = !DILocation(line: 187, column: 15, scope: !1582)
!1584 = !DILocation(line: 187, column: 25, scope: !1582)
!1585 = !{!1304, !1306, i64 32}
!1586 = !DILocation(line: 187, column: 29, scope: !1582)
!1587 = !DILocation(line: 187, column: 9, scope: !1566)
!1588 = !DILocation(line: 188, column: 9, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 187, column: 35)
!1590 = !DILocation(line: 193, column: 13, scope: !1566)
!1591 = !DILocation(line: 193, column: 17, scope: !1566)
!1592 = !DILocation(line: 193, column: 23, scope: !1566)
!1593 = !DILocation(line: 193, column: 11, scope: !1566)
!1594 = !DILocation(line: 195, column: 27, scope: !1566)
!1595 = !DILocation(line: 195, column: 36, scope: !1566)
!1596 = !DILocation(line: 195, column: 5, scope: !1566)
!1597 = !DILocation(line: 195, column: 11, scope: !1566)
!1598 = !DILocation(line: 195, column: 21, scope: !1566)
!1599 = !DILocation(line: 195, column: 25, scope: !1566)
!1600 = !DILocation(line: 196, column: 28, scope: !1566)
!1601 = !DILocation(line: 196, column: 37, scope: !1566)
!1602 = !{!1305, !1280, i64 8}
!1603 = !DILocation(line: 196, column: 5, scope: !1566)
!1604 = !DILocation(line: 196, column: 11, scope: !1566)
!1605 = !DILocation(line: 196, column: 21, scope: !1566)
!1606 = !DILocation(line: 196, column: 26, scope: !1566)
!1607 = !{!1304, !1280, i64 40}
!1608 = !DILocation(line: 198, column: 5, scope: !1566)
!1609 = !DILocation(line: 199, column: 1, scope: !1566)
!1610 = distinct !DISubprogram(name: "ngx_stream_lua_package_path", scope: !2, file: !2, line: 203, type: !606, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !1611)
!1611 = !{!1612, !1613, !1614, !1615, !1616}
!1612 = !DILocalVariable(name: "cf", arg: 1, scope: !1610, file: !2, line: 203, type: !114)
!1613 = !DILocalVariable(name: "cmd", arg: 2, scope: !1610, file: !2, line: 203, type: !598)
!1614 = !DILocalVariable(name: "conf", arg: 3, scope: !1610, file: !2, line: 203, type: !128)
!1615 = !DILocalVariable(name: "lmcf", scope: !1610, file: !2, line: 205, type: !1123)
!1616 = !DILocalVariable(name: "value", scope: !1610, file: !2, line: 207, type: !714)
!1617 = !DILocation(line: 203, column: 41, scope: !1610)
!1618 = !DILocation(line: 203, column: 60, scope: !1610)
!1619 = !DILocation(line: 203, column: 71, scope: !1610)
!1620 = !DILocation(line: 205, column: 5, scope: !1610)
!1621 = !DILocation(line: 205, column: 39, scope: !1610)
!1622 = !DILocation(line: 205, column: 46, scope: !1610)
!1623 = !DILocation(line: 207, column: 5, scope: !1610)
!1624 = !DILocation(line: 207, column: 24, scope: !1610)
!1625 = !DILocation(line: 209, column: 9, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1610, file: !2, line: 209, column: 9)
!1627 = !DILocation(line: 209, column: 15, scope: !1626)
!1628 = !DILocation(line: 209, column: 24, scope: !1626)
!1629 = !{!1304, !1306, i64 16}
!1630 = !DILocation(line: 209, column: 28, scope: !1626)
!1631 = !DILocation(line: 209, column: 9, scope: !1610)
!1632 = !DILocation(line: 210, column: 9, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1626, file: !2, line: 209, column: 34)
!1634 = !DILocation(line: 215, column: 13, scope: !1610)
!1635 = !DILocation(line: 215, column: 17, scope: !1610)
!1636 = !DILocation(line: 215, column: 23, scope: !1610)
!1637 = !DILocation(line: 215, column: 11, scope: !1610)
!1638 = !DILocation(line: 217, column: 26, scope: !1610)
!1639 = !DILocation(line: 217, column: 35, scope: !1610)
!1640 = !DILocation(line: 217, column: 5, scope: !1610)
!1641 = !DILocation(line: 217, column: 11, scope: !1610)
!1642 = !DILocation(line: 217, column: 20, scope: !1610)
!1643 = !DILocation(line: 217, column: 24, scope: !1610)
!1644 = !DILocation(line: 218, column: 27, scope: !1610)
!1645 = !DILocation(line: 218, column: 36, scope: !1610)
!1646 = !DILocation(line: 218, column: 5, scope: !1610)
!1647 = !DILocation(line: 218, column: 11, scope: !1610)
!1648 = !DILocation(line: 218, column: 20, scope: !1610)
!1649 = !DILocation(line: 218, column: 25, scope: !1610)
!1650 = !{!1304, !1280, i64 24}
!1651 = !DILocation(line: 220, column: 5, scope: !1610)
!1652 = !DILocation(line: 221, column: 1, scope: !1610)
!1653 = distinct !DISubprogram(name: "ngx_stream_lua_preread_by_lua_block", scope: !2, file: !2, line: 231, type: !606, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !1654)
!1654 = !{!1655, !1656, !1657, !1658, !1659}
!1655 = !DILocalVariable(name: "cf", arg: 1, scope: !1653, file: !2, line: 231, type: !114)
!1656 = !DILocalVariable(name: "cmd", arg: 2, scope: !1653, file: !2, line: 231, type: !598)
!1657 = !DILocalVariable(name: "conf", arg: 3, scope: !1653, file: !2, line: 232, type: !128)
!1658 = !DILocalVariable(name: "rv", scope: !1653, file: !2, line: 234, type: !113)
!1659 = !DILocalVariable(name: "save", scope: !1653, file: !2, line: 235, type: !115)
!1660 = !DILocation(line: 231, column: 49, scope: !1653)
!1661 = !DILocation(line: 231, column: 68, scope: !1653)
!1662 = !DILocation(line: 232, column: 11, scope: !1653)
!1663 = !DILocation(line: 234, column: 5, scope: !1653)
!1664 = !DILocation(line: 234, column: 18, scope: !1653)
!1665 = !DILocation(line: 235, column: 5, scope: !1653)
!1666 = !DILocation(line: 235, column: 18, scope: !1653)
!1667 = !DILocation(line: 237, column: 13, scope: !1653)
!1668 = !DILocation(line: 237, column: 12, scope: !1653)
!1669 = !{i64 0, i64 8, !1279, i64 8, i64 8, !1279, i64 16, i64 8, !1279, i64 24, i64 8, !1279, i64 32, i64 8, !1279, i64 40, i64 8, !1279, i64 48, i64 8, !1279, i64 56, i64 8, !1279, i64 64, i64 8, !1358, i64 72, i64 8, !1358, i64 80, i64 8, !1279, i64 88, i64 8, !1279}
!1670 = !DILocation(line: 238, column: 5, scope: !1653)
!1671 = !DILocation(line: 238, column: 9, scope: !1653)
!1672 = !DILocation(line: 238, column: 17, scope: !1653)
!1673 = !{!1314, !1280, i64 80}
!1674 = !DILocation(line: 239, column: 24, scope: !1653)
!1675 = !DILocation(line: 239, column: 5, scope: !1653)
!1676 = !DILocation(line: 239, column: 9, scope: !1653)
!1677 = !DILocation(line: 239, column: 22, scope: !1653)
!1678 = !{!1314, !1280, i64 88}
!1679 = !DILocation(line: 241, column: 46, scope: !1653)
!1680 = !DILocation(line: 241, column: 50, scope: !1653)
!1681 = !DILocation(line: 241, column: 10, scope: !1653)
!1682 = !DILocation(line: 241, column: 8, scope: !1653)
!1683 = !DILocation(line: 243, column: 6, scope: !1653)
!1684 = !DILocation(line: 243, column: 11, scope: !1653)
!1685 = !DILocation(line: 245, column: 12, scope: !1653)
!1686 = !DILocation(line: 246, column: 1, scope: !1653)
!1687 = !DILocation(line: 245, column: 5, scope: !1653)
!1688 = distinct !DISubprogram(name: "ngx_stream_lua_preread_by_lua", scope: !2, file: !2, line: 250, type: !606, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !1689)
!1689 = !{!1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1763}
!1690 = !DILocalVariable(name: "cf", arg: 1, scope: !1688, file: !2, line: 250, type: !114)
!1691 = !DILocalVariable(name: "cmd", arg: 2, scope: !1688, file: !2, line: 250, type: !598)
!1692 = !DILocalVariable(name: "conf", arg: 3, scope: !1688, file: !2, line: 250, type: !128)
!1693 = !DILocalVariable(name: "chunkname_len", scope: !1688, file: !2, line: 252, type: !136)
!1694 = !DILocalVariable(name: "p", scope: !1688, file: !2, line: 253, type: !150)
!1695 = !DILocalVariable(name: "chunkname", scope: !1688, file: !2, line: 253, type: !150)
!1696 = !DILocalVariable(name: "value", scope: !1688, file: !2, line: 254, type: !714)
!1697 = !DILocalVariable(name: "lmcf", scope: !1688, file: !2, line: 255, type: !1123)
!1698 = !DILocalVariable(name: "lscf", scope: !1688, file: !2, line: 256, type: !1699)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_lua_srv_conf_t", file: !1119, line: 149, baseType: !1701)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_stream_lua_srv_conf_s", file: !1119, line: 244, size: 3264, elements: !1702)
!1702 = !{!1703, !1711, !1712, !1713, !1714, !1715, !1716, !1726, !1727, !1728, !1729, !1730, !1731, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !1701, file: !1119, line: 246, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_ssl_t", file: !116, line: 28, baseType: !1706)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_ssl_s", file: !517, line: 67, size: 192, elements: !1707)
!1707 = !{!1708, !1709, !1710}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1706, file: !517, line: 68, baseType: !525, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1706, file: !517, line: 69, baseType: !243, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !1706, file: !517, line: 70, baseType: !136, size: 64, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_protocols", scope: !1701, file: !1119, line: 247, baseType: !130, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ciphers", scope: !1701, file: !1119, line: 248, baseType: !194, size: 128, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_verify_depth", scope: !1701, file: !1119, line: 249, baseType: !130, size: 64, offset: 256)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_trusted_certificate", scope: !1701, file: !1119, line: 250, baseType: !194, size: 128, offset: 320)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_crl", scope: !1701, file: !1119, line: 251, baseType: !194, size: 128, offset: 448)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "srv", scope: !1701, file: !1119, line: 257, baseType: !1717, size: 256, offset: 576)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1701, file: !1119, line: 253, size: 256, elements: !1718)
!1718 = !{!1719, !1724, !1725}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_cert_handler", scope: !1717, file: !1119, line: 254, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_lua_srv_conf_handler_pt", file: !1119, line: 161, baseType: !1721)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!529, !746, !1699, !1128}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_cert_src", scope: !1717, file: !1119, line: 255, baseType: !194, size: 128, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_cert_src_key", scope: !1717, file: !1119, line: 256, baseType: !150, size: 64, offset: 192)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "enable_code_cache", scope: !1701, file: !1119, line: 260, baseType: !740, size: 64, offset: 832)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "preread_handler", scope: !1701, file: !1119, line: 263, baseType: !741, size: 64, offset: 896)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "content_handler", scope: !1701, file: !1119, line: 265, baseType: !741, size: 64, offset: 960)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "log_handler", scope: !1701, file: !1119, line: 266, baseType: !741, size: 64, offset: 1024)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "preread_chunkname", scope: !1701, file: !1119, line: 268, baseType: !150, size: 64, offset: 1088)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "preread_src", scope: !1701, file: !1119, line: 269, baseType: !1732, size: 320, offset: 1152)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_complex_value_t", file: !1733, line: 59, baseType: !1734)
!1733 = !DIFile(filename: "src/stream/ngx_stream_script.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "906ce9701d29af90406e83a550e671a7")
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1733, line: 54, size: 320, elements: !1735)
!1735 = !{!1736, !1737, !1739, !1740}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1734, file: !1733, line: 55, baseType: !194, size: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flushes", scope: !1734, file: !1733, line: 56, baseType: !1738, size: 64, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "lengths", scope: !1734, file: !1733, line: 57, baseType: !128, size: 64, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1734, file: !1733, line: 58, baseType: !128, size: 64, offset: 256)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "preread_src_key", scope: !1701, file: !1119, line: 273, baseType: !150, size: 64, offset: 1472)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "content_chunkname", scope: !1701, file: !1119, line: 275, baseType: !150, size: 64, offset: 1536)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "content_src", scope: !1701, file: !1119, line: 277, baseType: !1732, size: 320, offset: 1600)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "content_src_key", scope: !1701, file: !1119, line: 282, baseType: !150, size: 64, offset: 1920)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "log_chunkname", scope: !1701, file: !1119, line: 284, baseType: !150, size: 64, offset: 1984)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "log_src", scope: !1701, file: !1119, line: 285, baseType: !1732, size: 320, offset: 2048)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "log_src_key", scope: !1701, file: !1119, line: 289, baseType: !150, size: 64, offset: 2368)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_timeout", scope: !1701, file: !1119, line: 293, baseType: !463, size: 64, offset: 2432)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "connect_timeout", scope: !1701, file: !1119, line: 294, baseType: !463, size: 64, offset: 2496)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "send_timeout", scope: !1701, file: !1119, line: 295, baseType: !463, size: 64, offset: 2560)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !1701, file: !1119, line: 296, baseType: !463, size: 64, offset: 2624)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "send_lowat", scope: !1701, file: !1119, line: 298, baseType: !136, size: 64, offset: 2688)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !1701, file: !1119, line: 299, baseType: !136, size: 64, offset: 2752)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "pool_size", scope: !1701, file: !1119, line: 301, baseType: !130, size: 64, offset: 2816)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "log_socket_errors", scope: !1701, file: !1119, line: 304, baseType: !740, size: 64, offset: 2880)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "check_client_abort", scope: !1701, file: !1119, line: 305, baseType: !740, size: 64, offset: 2944)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "balancer", scope: !1701, file: !1119, line: 313, baseType: !1758, size: 256, offset: 3008)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1701, file: !1119, line: 308, size: 256, elements: !1759)
!1759 = !{!1760, !1761, !1762}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1758, file: !1119, line: 309, baseType: !194, size: 128)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "src_key", scope: !1758, file: !1119, line: 310, baseType: !150, size: 64, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1758, file: !1119, line: 312, baseType: !1720, size: 64, offset: 192)
!1763 = !DILocalVariable(name: "ccv", scope: !1688, file: !2, line: 258, type: !1764)
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_compile_complex_value_t", file: !1733, line: 70, baseType: !1765)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1733, line: 62, size: 256, elements: !1766)
!1766 = !{!1767, !1768, !1769, !1771, !1772, !1773}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "cf", scope: !1765, file: !1733, line: 63, baseType: !114, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1765, file: !1733, line: 64, baseType: !714, size: 64, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "complex_value", scope: !1765, file: !1733, line: 65, baseType: !1770, size: 64, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !1765, file: !1733, line: 67, baseType: !213, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "conf_prefix", scope: !1765, file: !1733, line: 68, baseType: !213, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "root_prefix", scope: !1765, file: !1733, line: 69, baseType: !213, size: 1, offset: 194, flags: DIFlagBitField, extraData: i64 192)
!1774 = !DILocation(line: 250, column: 43, scope: !1688)
!1775 = !DILocation(line: 250, column: 62, scope: !1688)
!1776 = !DILocation(line: 250, column: 73, scope: !1688)
!1777 = !DILocation(line: 252, column: 5, scope: !1688)
!1778 = !DILocation(line: 252, column: 44, scope: !1688)
!1779 = !DILocation(line: 253, column: 5, scope: !1688)
!1780 = !DILocation(line: 253, column: 44, scope: !1688)
!1781 = !DILocation(line: 253, column: 48, scope: !1688)
!1782 = !DILocation(line: 254, column: 5, scope: !1688)
!1783 = !DILocation(line: 254, column: 44, scope: !1688)
!1784 = !DILocation(line: 255, column: 5, scope: !1688)
!1785 = !DILocation(line: 255, column: 44, scope: !1688)
!1786 = !DILocation(line: 256, column: 5, scope: !1688)
!1787 = !DILocation(line: 256, column: 44, scope: !1688)
!1788 = !DILocation(line: 256, column: 51, scope: !1688)
!1789 = !DILocation(line: 258, column: 5, scope: !1688)
!1790 = !DILocation(line: 258, column: 44, scope: !1688)
!1791 = !DILocation(line: 263, column: 9, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1688, file: !2, line: 263, column: 9)
!1793 = !DILocation(line: 263, column: 14, scope: !1792)
!1794 = !{!1552, !1280, i64 48}
!1795 = !DILocation(line: 263, column: 19, scope: !1792)
!1796 = !DILocation(line: 263, column: 9, scope: !1688)
!1797 = !DILocation(line: 264, column: 9, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1792, file: !2, line: 263, column: 28)
!1799 = !DILocation(line: 267, column: 9, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1688, file: !2, line: 267, column: 9)
!1801 = !DILocation(line: 267, column: 15, scope: !1800)
!1802 = !{!1803, !1280, i64 112}
!1803 = !{!"ngx_stream_lua_srv_conf_s", !1280, i64 0, !1306, i64 8, !1305, i64 16, !1306, i64 32, !1305, i64 40, !1305, i64 56, !1804, i64 72, !1306, i64 104, !1280, i64 112, !1280, i64 120, !1280, i64 128, !1280, i64 136, !1805, i64 144, !1280, i64 184, !1280, i64 192, !1805, i64 200, !1280, i64 240, !1280, i64 248, !1805, i64 256, !1280, i64 296, !1306, i64 304, !1306, i64 312, !1306, i64 320, !1306, i64 328, !1306, i64 336, !1306, i64 344, !1306, i64 352, !1306, i64 360, !1306, i64 368, !1806, i64 376}
!1804 = !{!"", !1280, i64 0, !1305, i64 8, !1280, i64 24}
!1805 = !{!"", !1305, i64 0, !1280, i64 16, !1280, i64 24, !1280, i64 32}
!1806 = !{!"", !1305, i64 0, !1280, i64 16, !1280, i64 24}
!1807 = !DILocation(line: 267, column: 9, scope: !1688)
!1808 = !DILocation(line: 268, column: 9, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1800, file: !2, line: 267, column: 32)
!1810 = !DILocation(line: 271, column: 13, scope: !1688)
!1811 = !DILocation(line: 271, column: 17, scope: !1688)
!1812 = !DILocation(line: 271, column: 23, scope: !1688)
!1813 = !DILocation(line: 271, column: 11, scope: !1688)
!1814 = !DILocation(line: 273, column: 9, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1688, file: !2, line: 273, column: 9)
!1816 = !DILocation(line: 273, column: 18, scope: !1815)
!1817 = !DILocation(line: 273, column: 22, scope: !1815)
!1818 = !DILocation(line: 273, column: 9, scope: !1688)
!1819 = !DILocation(line: 275, column: 41, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1815, file: !2, line: 273, column: 28)
!1821 = !DILocation(line: 275, column: 9, scope: !1820)
!1822 = !DILocation(line: 278, column: 9, scope: !1820)
!1823 = !DILocation(line: 281, column: 9, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1688, file: !2, line: 281, column: 9)
!1825 = !DILocation(line: 281, column: 14, scope: !1824)
!1826 = !DILocation(line: 281, column: 19, scope: !1824)
!1827 = !DILocation(line: 281, column: 9, scope: !1688)
!1828 = !DILocation(line: 282, column: 51, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1824, file: !2, line: 281, column: 61)
!1830 = !DILocation(line: 282, column: 21, scope: !1829)
!1831 = !DILocation(line: 282, column: 19, scope: !1829)
!1832 = !DILocation(line: 285, column: 13, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1829, file: !2, line: 285, column: 13)
!1834 = !DILocation(line: 285, column: 23, scope: !1833)
!1835 = !DILocation(line: 285, column: 13, scope: !1829)
!1836 = !DILocation(line: 286, column: 13, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1833, file: !2, line: 285, column: 32)
!1838 = !DILocation(line: 289, column: 35, scope: !1829)
!1839 = !DILocation(line: 289, column: 9, scope: !1829)
!1840 = !DILocation(line: 289, column: 15, scope: !1829)
!1841 = !DILocation(line: 289, column: 33, scope: !1829)
!1842 = !{!1803, !1280, i64 136}
!1843 = !DILocation(line: 293, column: 9, scope: !1829)
!1844 = !DILocation(line: 293, column: 15, scope: !1829)
!1845 = !DILocation(line: 293, column: 27, scope: !1829)
!1846 = !DILocation(line: 293, column: 35, scope: !1829)
!1847 = !DILocation(line: 295, column: 24, scope: !1829)
!1848 = !DILocation(line: 295, column: 28, scope: !1829)
!1849 = !DILocation(line: 296, column: 24, scope: !1829)
!1850 = !DILocation(line: 296, column: 38, scope: !1829)
!1851 = !DILocation(line: 296, column: 70, scope: !1829)
!1852 = !DILocation(line: 295, column: 13, scope: !1829)
!1853 = !DILocation(line: 295, column: 11, scope: !1829)
!1854 = !DILocation(line: 297, column: 13, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1829, file: !2, line: 297, column: 13)
!1856 = !DILocation(line: 297, column: 15, scope: !1855)
!1857 = !DILocation(line: 297, column: 13, scope: !1829)
!1858 = !DILocation(line: 298, column: 13, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1855, file: !2, line: 297, column: 24)
!1860 = !DILocation(line: 301, column: 33, scope: !1829)
!1861 = !DILocation(line: 301, column: 9, scope: !1829)
!1862 = !DILocation(line: 301, column: 15, scope: !1829)
!1863 = !DILocation(line: 301, column: 31, scope: !1829)
!1864 = !{!1803, !1280, i64 184}
!1865 = !DILocation(line: 303, column: 13, scope: !1829)
!1866 = !DILocation(line: 303, column: 11, scope: !1829)
!1867 = !DILocation(line: 304, column: 13, scope: !1829)
!1868 = !DILocation(line: 304, column: 11, scope: !1829)
!1869 = !DILocation(line: 306, column: 39, scope: !1829)
!1870 = !DILocation(line: 306, column: 42, scope: !1829)
!1871 = !DILocation(line: 306, column: 51, scope: !1829)
!1872 = !DILocation(line: 306, column: 57, scope: !1829)
!1873 = !DILocation(line: 306, column: 66, scope: !1829)
!1874 = !DILocation(line: 306, column: 13, scope: !1829)
!1875 = !DILocation(line: 306, column: 11, scope: !1829)
!1876 = !DILocation(line: 307, column: 10, scope: !1829)
!1877 = !DILocation(line: 307, column: 12, scope: !1829)
!1878 = !{!1281, !1281, i64 0}
!1879 = !DILocation(line: 309, column: 5, scope: !1829)
!1880 = !DILocation(line: 310, column: 9, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1824, file: !2, line: 309, column: 12)
!1882 = !DILocation(line: 311, column: 18, scope: !1881)
!1883 = !DILocation(line: 311, column: 13, scope: !1881)
!1884 = !DILocation(line: 311, column: 16, scope: !1881)
!1885 = !{!1886, !1280, i64 0}
!1886 = !{!"", !1280, i64 0, !1280, i64 8, !1280, i64 16, !1307, i64 24, !1307, i64 24, !1307, i64 24}
!1887 = !DILocation(line: 312, column: 22, scope: !1881)
!1888 = !DILocation(line: 312, column: 13, scope: !1881)
!1889 = !DILocation(line: 312, column: 19, scope: !1881)
!1890 = !{!1886, !1280, i64 8}
!1891 = !DILocation(line: 313, column: 30, scope: !1881)
!1892 = !DILocation(line: 313, column: 36, scope: !1881)
!1893 = !DILocation(line: 313, column: 13, scope: !1881)
!1894 = !DILocation(line: 313, column: 27, scope: !1881)
!1895 = !{!1886, !1280, i64 16}
!1896 = !DILocation(line: 315, column: 13, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1881, file: !2, line: 315, column: 13)
!1898 = !DILocation(line: 315, column: 52, scope: !1897)
!1899 = !DILocation(line: 315, column: 13, scope: !1881)
!1900 = !DILocation(line: 316, column: 13, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1897, file: !2, line: 315, column: 63)
!1902 = !DILocation(line: 319, column: 13, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1881, file: !2, line: 319, column: 13)
!1904 = !DILocation(line: 319, column: 19, scope: !1903)
!1905 = !DILocation(line: 319, column: 31, scope: !1903)
!1906 = !{!1803, !1280, i64 168}
!1907 = !DILocation(line: 319, column: 39, scope: !1903)
!1908 = !DILocation(line: 319, column: 13, scope: !1881)
!1909 = !DILocation(line: 321, column: 28, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1903, file: !2, line: 319, column: 48)
!1911 = !DILocation(line: 321, column: 32, scope: !1910)
!1912 = !DILocation(line: 321, column: 17, scope: !1910)
!1913 = !DILocation(line: 321, column: 15, scope: !1910)
!1914 = !DILocation(line: 322, column: 17, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1910, file: !2, line: 322, column: 17)
!1916 = !DILocation(line: 322, column: 19, scope: !1915)
!1917 = !DILocation(line: 322, column: 17, scope: !1910)
!1918 = !DILocation(line: 323, column: 17, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1915, file: !2, line: 322, column: 28)
!1920 = !DILocation(line: 326, column: 37, scope: !1910)
!1921 = !DILocation(line: 326, column: 13, scope: !1910)
!1922 = !DILocation(line: 326, column: 19, scope: !1910)
!1923 = !DILocation(line: 326, column: 35, scope: !1910)
!1924 = !DILocation(line: 328, column: 17, scope: !1910)
!1925 = !DILocation(line: 328, column: 15, scope: !1910)
!1926 = !DILocation(line: 330, column: 43, scope: !1910)
!1927 = !DILocation(line: 330, column: 46, scope: !1910)
!1928 = !DILocation(line: 330, column: 55, scope: !1910)
!1929 = !DILocation(line: 330, column: 61, scope: !1910)
!1930 = !DILocation(line: 330, column: 70, scope: !1910)
!1931 = !DILocation(line: 330, column: 17, scope: !1910)
!1932 = !DILocation(line: 330, column: 15, scope: !1910)
!1933 = !DILocation(line: 331, column: 14, scope: !1910)
!1934 = !DILocation(line: 331, column: 16, scope: !1910)
!1935 = !DILocation(line: 332, column: 9, scope: !1910)
!1936 = !DILocation(line: 335, column: 57, scope: !1688)
!1937 = !DILocation(line: 335, column: 62, scope: !1688)
!1938 = !DILocation(line: 335, column: 5, scope: !1688)
!1939 = !DILocation(line: 335, column: 11, scope: !1688)
!1940 = !DILocation(line: 335, column: 27, scope: !1688)
!1941 = !DILocation(line: 337, column: 12, scope: !1688)
!1942 = !{!1314, !1280, i64 56}
!1943 = !{!1944, !1280, i64 0}
!1944 = !{!"", !1280, i64 0, !1280, i64 8}
!1945 = !{!1946, !1306, i64 0}
!1946 = !{!"ngx_module_s", !1306, i64 0, !1306, i64 8, !1280, i64 16, !1306, i64 24, !1306, i64 32, !1306, i64 40, !1280, i64 48, !1280, i64 56, !1280, i64 64, !1306, i64 72, !1280, i64 80, !1280, i64 88, !1280, i64 96, !1280, i64 104, !1280, i64 112, !1280, i64 120, !1280, i64 128, !1306, i64 136, !1306, i64 144, !1306, i64 152, !1306, i64 160, !1306, i64 168, !1306, i64 176, !1306, i64 184, !1306, i64 192}
!1947 = !DILocation(line: 337, column: 10, scope: !1688)
!1948 = !DILocation(line: 339, column: 5, scope: !1688)
!1949 = !DILocation(line: 339, column: 11, scope: !1688)
!1950 = !DILocation(line: 339, column: 28, scope: !1688)
!1951 = !DILocation(line: 341, column: 5, scope: !1688)
!1952 = !DILocation(line: 342, column: 1, scope: !1688)
!1953 = !DILocation(line: 763, column: 49, scope: !110)
!1954 = !DILocation(line: 763, column: 68, scope: !110)
!1955 = !DILocation(line: 765, column: 5, scope: !110)
!1956 = !DILocation(line: 765, column: 49, scope: !110)
!1957 = !DILocation(line: 767, column: 5, scope: !110)
!1958 = !DILocation(line: 767, column: 23, scope: !110)
!1959 = !{!1307, !1307, i64 0}
!1960 = !DILocation(line: 768, column: 5, scope: !110)
!1961 = !DILocation(line: 768, column: 23, scope: !110)
!1962 = !DILocation(line: 769, column: 5, scope: !110)
!1963 = !DILocation(line: 769, column: 23, scope: !110)
!1964 = !DILocation(line: 770, column: 5, scope: !110)
!1965 = !DILocation(line: 770, column: 23, scope: !110)
!1966 = !DILocation(line: 771, column: 5, scope: !110)
!1967 = !DILocation(line: 771, column: 23, scope: !110)
!1968 = !DILocation(line: 771, column: 29, scope: !110)
!1969 = !DILocation(line: 772, column: 5, scope: !110)
!1970 = !DILocation(line: 772, column: 23, scope: !110)
!1971 = !DILocation(line: 773, column: 5, scope: !110)
!1972 = !DILocation(line: 773, column: 23, scope: !110)
!1973 = !DILocation(line: 773, column: 26, scope: !110)
!1974 = !DILocation(line: 774, column: 5, scope: !110)
!1975 = !DILocation(line: 774, column: 23, scope: !110)
!1976 = !DILocation(line: 775, column: 5, scope: !110)
!1977 = !DILocation(line: 778, column: 7, scope: !110)
!1978 = !DILocation(line: 780, column: 9, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !110, file: !2, line: 780, column: 9)
!1980 = !DILocation(line: 780, column: 13, scope: !1979)
!1981 = !{!1314, !1280, i64 40}
!1982 = !DILocation(line: 780, column: 24, scope: !1979)
!1983 = !DILocation(line: 780, column: 29, scope: !1979)
!1984 = !{!1985, !1307, i64 0}
!1985 = !{!"", !1986, i64 0, !1280, i64 200, !1280, i64 208, !1306, i64 216}
!1986 = !{!"ngx_file_s", !1307, i64 0, !1305, i64 8, !1987, i64 24, !1306, i64 168, !1306, i64 176, !1280, i64 184, !1307, i64 192, !1307, i64 192}
!1987 = !{!"stat", !1306, i64 0, !1306, i64 8, !1306, i64 16, !1307, i64 24, !1307, i64 28, !1307, i64 32, !1307, i64 36, !1306, i64 40, !1306, i64 48, !1306, i64 56, !1306, i64 64, !1988, i64 72, !1988, i64 88, !1988, i64 104, !1281, i64 120}
!1988 = !{!"timespec", !1306, i64 0, !1306, i64 8}
!1989 = !DILocation(line: 780, column: 32, scope: !1979)
!1990 = !DILocation(line: 780, column: 9, scope: !110)
!1991 = !DILocation(line: 782, column: 14, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1979, file: !2, line: 780, column: 53)
!1993 = !DILocation(line: 784, column: 5, scope: !1992)
!1994 = !DILocation(line: 785, column: 14, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1979, file: !2, line: 784, column: 12)
!1996 = !DILocation(line: 788, column: 13, scope: !110)
!1997 = !DILocation(line: 788, column: 17, scope: !110)
!1998 = !DILocation(line: 788, column: 11, scope: !110)
!1999 = !DILocation(line: 790, column: 33, scope: !110)
!2000 = !DILocation(line: 790, column: 37, scope: !110)
!2001 = !{!1314, !1280, i64 32}
!2002 = !DILocation(line: 790, column: 16, scope: !110)
!2003 = !DILocation(line: 790, column: 5, scope: !110)
!2004 = !DILocation(line: 790, column: 9, scope: !110)
!2005 = !DILocation(line: 790, column: 14, scope: !110)
!2006 = !DILocation(line: 791, column: 9, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !110, file: !2, line: 791, column: 9)
!2008 = !DILocation(line: 791, column: 13, scope: !2007)
!2009 = !DILocation(line: 791, column: 18, scope: !2007)
!2010 = !DILocation(line: 791, column: 9, scope: !110)
!2011 = !DILocation(line: 792, column: 9, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2007, file: !2, line: 791, column: 27)
!2013 = !DILocation(line: 795, column: 9, scope: !110)
!2014 = !DILocation(line: 795, column: 19, scope: !110)
!2015 = !{!2016, !1307, i64 8}
!2016 = !{!"ngx_stream_lua_block_parser_ctx_s", !1306, i64 0, !1307, i64 8}
!2017 = !DILocation(line: 796, column: 18, scope: !110)
!2018 = !DILocation(line: 796, column: 22, scope: !110)
!2019 = !DILocation(line: 796, column: 33, scope: !110)
!2020 = !{!1985, !1306, i64 216}
!2021 = !DILocation(line: 796, column: 16, scope: !110)
!2022 = !DILocation(line: 800, column: 22, scope: !110)
!2023 = !DILocation(line: 800, column: 9, scope: !110)
!2024 = !DILocation(line: 800, column: 20, scope: !110)
!2025 = !{!2016, !1306, i64 0}
!2026 = !DILocation(line: 802, column: 5, scope: !110)
!2027 = !DILocation(line: 803, column: 49, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !2, line: 802, column: 16)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !2, line: 802, column: 5)
!2030 = distinct !DILexicalBlock(scope: !110, file: !2, line: 802, column: 5)
!2031 = !DILocation(line: 803, column: 14, scope: !2028)
!2032 = !DILocation(line: 803, column: 12, scope: !2028)
!2033 = !DILocation(line: 807, column: 17, scope: !2028)
!2034 = !DILocation(line: 807, column: 9, scope: !2028)
!2035 = !DILocation(line: 810, column: 13, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2028, file: !2, line: 807, column: 21)
!2037 = !DILocation(line: 814, column: 30, scope: !2036)
!2038 = !DILocation(line: 814, column: 34, scope: !2036)
!2039 = !DILocation(line: 814, column: 45, scope: !2036)
!2040 = !DILocation(line: 814, column: 17, scope: !2036)
!2041 = !DILocation(line: 814, column: 28, scope: !2036)
!2042 = !DILocation(line: 816, column: 17, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2036, file: !2, line: 816, column: 17)
!2044 = !DILocation(line: 816, column: 22, scope: !2043)
!2045 = !DILocation(line: 816, column: 17, scope: !2036)
!2046 = !DILocation(line: 817, column: 51, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2043, file: !2, line: 816, column: 38)
!2048 = !DILocation(line: 817, column: 17, scope: !2047)
!2049 = !DILocation(line: 820, column: 17, scope: !2047)
!2050 = !DILocation(line: 823, column: 18, scope: !2036)
!2051 = !DILocation(line: 825, column: 13, scope: !2036)
!2052 = !DILocation(line: 829, column: 18, scope: !2036)
!2053 = !DILocation(line: 832, column: 17, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2036, file: !2, line: 832, column: 17)
!2055 = !DILocation(line: 832, column: 22, scope: !2054)
!2056 = !DILocation(line: 832, column: 37, scope: !2054)
!2057 = !DILocation(line: 832, column: 40, scope: !2054)
!2058 = !DILocation(line: 832, column: 46, scope: !2054)
!2059 = !DILocation(line: 832, column: 17, scope: !2036)
!2060 = !DILocation(line: 833, column: 51, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2054, file: !2, line: 832, column: 51)
!2062 = !DILocation(line: 835, column: 60, scope: !2061)
!2063 = !DILocation(line: 836, column: 36, scope: !2061)
!2064 = !DILocation(line: 833, column: 17, scope: !2061)
!2065 = !DILocation(line: 837, column: 17, scope: !2061)
!2066 = !DILocation(line: 840, column: 17, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2036, file: !2, line: 840, column: 17)
!2068 = !DILocation(line: 840, column: 23, scope: !2067)
!2069 = !DILocation(line: 840, column: 17, scope: !2036)
!2070 = !DILocation(line: 843, column: 23, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2067, file: !2, line: 840, column: 29)
!2072 = !DILocation(line: 843, column: 27, scope: !2071)
!2073 = !DILocation(line: 843, column: 33, scope: !2071)
!2074 = !DILocation(line: 843, column: 21, scope: !2071)
!2075 = !DILocation(line: 845, column: 26, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2071, file: !2, line: 845, column: 17)
!2077 = !DILocation(line: 845, column: 33, scope: !2076)
!2078 = !DILocation(line: 845, column: 22, scope: !2076)
!2079 = !DILocation(line: 845, column: 38, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2076, file: !2, line: 845, column: 17)
!2081 = !DILocation(line: 845, column: 42, scope: !2080)
!2082 = !DILocation(line: 845, column: 46, scope: !2080)
!2083 = !DILocation(line: 845, column: 52, scope: !2080)
!2084 = !DILocation(line: 845, column: 40, scope: !2080)
!2085 = !DILocation(line: 845, column: 17, scope: !2076)
!2086 = !DILocation(line: 846, column: 28, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2080, file: !2, line: 845, column: 64)
!2088 = !DILocation(line: 846, column: 32, scope: !2087)
!2089 = !DILocation(line: 846, column: 35, scope: !2087)
!2090 = !DILocation(line: 846, column: 25, scope: !2087)
!2091 = !DILocation(line: 847, column: 17, scope: !2087)
!2092 = !DILocation(line: 845, column: 60, scope: !2080)
!2093 = !DILocation(line: 845, column: 17, scope: !2080)
!2094 = distinct !{!2094, !2085, !2095, !2096}
!2095 = !DILocation(line: 847, column: 17, scope: !2076)
!2096 = !{!"llvm.loop.mustprogress"}
!2097 = !DILocation(line: 855, column: 38, scope: !2071)
!2098 = !DILocation(line: 855, column: 23, scope: !2071)
!2099 = !DILocation(line: 855, column: 21, scope: !2071)
!2100 = !DILocation(line: 856, column: 21, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2071, file: !2, line: 856, column: 21)
!2102 = !DILocation(line: 856, column: 25, scope: !2101)
!2103 = !DILocation(line: 856, column: 21, scope: !2071)
!2104 = !DILocation(line: 857, column: 21, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2101, file: !2, line: 856, column: 34)
!2106 = !DILocation(line: 859, column: 28, scope: !2071)
!2107 = !DILocation(line: 859, column: 17, scope: !2071)
!2108 = !DILocation(line: 859, column: 22, scope: !2071)
!2109 = !DILocation(line: 859, column: 26, scope: !2071)
!2110 = !DILocation(line: 860, column: 17, scope: !2071)
!2111 = !DILocation(line: 860, column: 22, scope: !2071)
!2112 = !DILocation(line: 860, column: 25, scope: !2071)
!2113 = !DILocation(line: 862, column: 32, scope: !2071)
!2114 = !DILocation(line: 862, column: 36, scope: !2071)
!2115 = !DILocation(line: 862, column: 42, scope: !2071)
!2116 = !DILocation(line: 862, column: 21, scope: !2071)
!2117 = !DILocation(line: 862, column: 19, scope: !2071)
!2118 = !DILocation(line: 863, column: 21, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2071, file: !2, line: 863, column: 21)
!2120 = !DILocation(line: 863, column: 23, scope: !2119)
!2121 = !DILocation(line: 863, column: 21, scope: !2071)
!2122 = !DILocation(line: 864, column: 21, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2119, file: !2, line: 863, column: 32)
!2124 = !DILocation(line: 866, column: 29, scope: !2071)
!2125 = !DILocation(line: 866, column: 17, scope: !2071)
!2126 = !DILocation(line: 866, column: 22, scope: !2071)
!2127 = !DILocation(line: 866, column: 27, scope: !2071)
!2128 = !DILocation(line: 868, column: 24, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2071, file: !2, line: 868, column: 17)
!2130 = !DILocation(line: 868, column: 22, scope: !2129)
!2131 = !DILocation(line: 868, column: 29, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2129, file: !2, line: 868, column: 17)
!2133 = !DILocation(line: 868, column: 33, scope: !2132)
!2134 = !DILocation(line: 868, column: 37, scope: !2132)
!2135 = !DILocation(line: 868, column: 43, scope: !2132)
!2136 = !DILocation(line: 868, column: 31, scope: !2132)
!2137 = !DILocation(line: 868, column: 17, scope: !2129)
!2138 = !DILocation(line: 869, column: 25, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2132, file: !2, line: 868, column: 55)
!2140 = !DILocation(line: 869, column: 23, scope: !2139)
!2141 = !DILocation(line: 870, column: 17, scope: !2139)
!2142 = !DILocation(line: 868, column: 51, scope: !2132)
!2143 = !DILocation(line: 868, column: 17, scope: !2132)
!2144 = distinct !{!2144, !2137, !2145, !2096}
!2145 = !DILocation(line: 870, column: 17, scope: !2129)
!2146 = !DILocation(line: 872, column: 17, scope: !2071)
!2147 = !DILocation(line: 872, column: 23, scope: !2071)
!2148 = !DILocation(line: 874, column: 28, scope: !2071)
!2149 = !DILocation(line: 874, column: 17, scope: !2071)
!2150 = !DILocation(line: 874, column: 21, scope: !2071)
!2151 = !DILocation(line: 874, column: 26, scope: !2071)
!2152 = !DILocation(line: 876, column: 24, scope: !2071)
!2153 = !DILocation(line: 876, column: 28, scope: !2071)
!2154 = !DILocation(line: 876, column: 37, scope: !2071)
!2155 = !DILocation(line: 876, column: 41, scope: !2071)
!2156 = !DILocation(line: 876, column: 46, scope: !2071)
!2157 = !DILocation(line: 876, column: 50, scope: !2071)
!2158 = !DILocation(line: 876, column: 22, scope: !2071)
!2159 = !DILocation(line: 876, column: 20, scope: !2071)
!2160 = !DILocation(line: 877, column: 21, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2071, file: !2, line: 877, column: 21)
!2162 = !DILocation(line: 877, column: 24, scope: !2161)
!2163 = !DILocation(line: 877, column: 21, scope: !2071)
!2164 = !DILocation(line: 878, column: 21, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2161, file: !2, line: 877, column: 40)
!2166 = !DILocation(line: 881, column: 21, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2071, file: !2, line: 881, column: 21)
!2168 = !DILocation(line: 881, column: 24, scope: !2167)
!2169 = !DILocation(line: 881, column: 21, scope: !2071)
!2170 = !DILocation(line: 882, column: 21, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2167, file: !2, line: 881, column: 43)
!2172 = !DILocation(line: 885, column: 51, scope: !2071)
!2173 = !DILocation(line: 885, column: 58, scope: !2071)
!2174 = !DILocation(line: 885, column: 17, scope: !2071)
!2175 = !DILocation(line: 887, column: 17, scope: !2071)
!2176 = !DILocation(line: 890, column: 13, scope: !2036)
!2177 = !DILocation(line: 898, column: 13, scope: !2036)
!2178 = !DILocation(line: 902, column: 47, scope: !2036)
!2179 = !DILocation(line: 903, column: 75, scope: !2036)
!2180 = !DILocation(line: 902, column: 13, scope: !2036)
!2181 = !DILocation(line: 904, column: 13, scope: !2036)
!2182 = !DILocation(line: 802, column: 5, scope: !2029)
!2183 = distinct !{!2183, !2184, !2185}
!2184 = !DILocation(line: 802, column: 5, scope: !2030)
!2185 = !DILocation(line: 906, column: 5, scope: !2030)
!2186 = !DILocation(line: 908, column: 1, scope: !110)
!2187 = !DILocation(line: 910, column: 8, scope: !110)
!2188 = !DILocation(line: 910, column: 5, scope: !110)
!2189 = !DILocation(line: 912, column: 1, scope: !110)
!2190 = !DILocation(line: 914, column: 9, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !110, file: !2, line: 914, column: 9)
!2192 = !DILocation(line: 914, column: 12, scope: !2191)
!2193 = !DILocation(line: 914, column: 9, scope: !110)
!2194 = !DILocation(line: 915, column: 9, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2191, file: !2, line: 914, column: 26)
!2196 = !DILocation(line: 918, column: 5, scope: !110)
!2197 = !DILocation(line: 919, column: 1, scope: !110)
!2198 = distinct !DISubprogram(name: "ngx_stream_lua_gen_chunk_name", scope: !2, file: !2, line: 720, type: !2199, scopeLine: 722, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !2202)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!150, !114, !594, !136, !2201}
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!2202 = !{!2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210}
!2203 = !DILocalVariable(name: "cf", arg: 1, scope: !2198, file: !2, line: 720, type: !114)
!2204 = !DILocalVariable(name: "tag", arg: 2, scope: !2198, file: !2, line: 720, type: !594)
!2205 = !DILocalVariable(name: "tag_len", arg: 3, scope: !2198, file: !2, line: 720, type: !136)
!2206 = !DILocalVariable(name: "chunkname_len", arg: 4, scope: !2198, file: !2, line: 721, type: !2201)
!2207 = !DILocalVariable(name: "p", scope: !2198, file: !2, line: 723, type: !150)
!2208 = !DILocalVariable(name: "out", scope: !2198, file: !2, line: 723, type: !150)
!2209 = !DILocalVariable(name: "len", scope: !2198, file: !2, line: 724, type: !136)
!2210 = !DILabel(scope: !2198, name: "found", file: !2, line: 749)
!2211 = !DILocation(line: 720, column: 43, scope: !2198)
!2212 = !DILocation(line: 720, column: 59, scope: !2198)
!2213 = !DILocation(line: 720, column: 71, scope: !2198)
!2214 = !DILocation(line: 721, column: 13, scope: !2198)
!2215 = !DILocation(line: 723, column: 5, scope: !2198)
!2216 = !DILocation(line: 723, column: 18, scope: !2198)
!2217 = !DILocation(line: 723, column: 22, scope: !2198)
!2218 = !DILocation(line: 724, column: 5, scope: !2198)
!2219 = !DILocation(line: 724, column: 18, scope: !2198)
!2220 = !DILocation(line: 726, column: 32, scope: !2198)
!2221 = !DILocation(line: 726, column: 30, scope: !2198)
!2222 = !DILocation(line: 726, column: 42, scope: !2198)
!2223 = !DILocation(line: 726, column: 46, scope: !2198)
!2224 = !DILocation(line: 726, column: 57, scope: !2198)
!2225 = !DILocation(line: 726, column: 62, scope: !2198)
!2226 = !DILocation(line: 726, column: 67, scope: !2198)
!2227 = !{!1985, !1306, i64 8}
!2228 = !DILocation(line: 726, column: 40, scope: !2198)
!2229 = !DILocation(line: 727, column: 11, scope: !2198)
!2230 = !DILocation(line: 727, column: 27, scope: !2198)
!2231 = !DILocation(line: 726, column: 9, scope: !2198)
!2232 = !DILocation(line: 729, column: 22, scope: !2198)
!2233 = !DILocation(line: 729, column: 26, scope: !2198)
!2234 = !DILocation(line: 729, column: 32, scope: !2198)
!2235 = !DILocation(line: 729, column: 11, scope: !2198)
!2236 = !DILocation(line: 729, column: 9, scope: !2198)
!2237 = !DILocation(line: 730, column: 9, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2198, file: !2, line: 730, column: 9)
!2239 = !DILocation(line: 730, column: 13, scope: !2238)
!2240 = !DILocation(line: 730, column: 9, scope: !2198)
!2241 = !DILocation(line: 731, column: 9, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2238, file: !2, line: 730, column: 22)
!2243 = !DILocation(line: 734, column: 9, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2198, file: !2, line: 734, column: 9)
!2245 = !DILocation(line: 734, column: 13, scope: !2244)
!2246 = !DILocation(line: 734, column: 24, scope: !2244)
!2247 = !DILocation(line: 734, column: 29, scope: !2244)
!2248 = !DILocation(line: 734, column: 34, scope: !2244)
!2249 = !DILocation(line: 734, column: 9, scope: !2198)
!2250 = !DILocation(line: 735, column: 13, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2244, file: !2, line: 734, column: 39)
!2252 = !DILocation(line: 735, column: 17, scope: !2251)
!2253 = !DILocation(line: 735, column: 28, scope: !2251)
!2254 = !DILocation(line: 735, column: 33, scope: !2251)
!2255 = !DILocation(line: 735, column: 38, scope: !2251)
!2256 = !{!1985, !1280, i64 16}
!2257 = !DILocation(line: 735, column: 45, scope: !2251)
!2258 = !DILocation(line: 735, column: 49, scope: !2251)
!2259 = !DILocation(line: 735, column: 60, scope: !2251)
!2260 = !DILocation(line: 735, column: 65, scope: !2251)
!2261 = !DILocation(line: 735, column: 70, scope: !2251)
!2262 = !DILocation(line: 735, column: 43, scope: !2251)
!2263 = !DILocation(line: 735, column: 11, scope: !2251)
!2264 = !DILocation(line: 736, column: 9, scope: !2251)
!2265 = !DILocation(line: 736, column: 16, scope: !2251)
!2266 = !DILocation(line: 736, column: 23, scope: !2251)
!2267 = !DILocation(line: 736, column: 27, scope: !2251)
!2268 = !DILocation(line: 736, column: 38, scope: !2251)
!2269 = !DILocation(line: 736, column: 43, scope: !2251)
!2270 = !DILocation(line: 736, column: 48, scope: !2251)
!2271 = !DILocation(line: 736, column: 20, scope: !2251)
!2272 = !DILocation(line: 737, column: 18, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !2, line: 737, column: 17)
!2274 = distinct !DILexicalBlock(scope: !2251, file: !2, line: 736, column: 54)
!2275 = !DILocation(line: 737, column: 17, scope: !2273)
!2276 = !DILocation(line: 737, column: 20, scope: !2273)
!2277 = !DILocation(line: 737, column: 27, scope: !2273)
!2278 = !DILocation(line: 737, column: 31, scope: !2273)
!2279 = !DILocation(line: 737, column: 30, scope: !2273)
!2280 = !DILocation(line: 737, column: 33, scope: !2273)
!2281 = !DILocation(line: 737, column: 17, scope: !2274)
!2282 = !DILocation(line: 738, column: 18, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2273, file: !2, line: 737, column: 42)
!2284 = !DILocation(line: 739, column: 17, scope: !2283)
!2285 = distinct !{!2285, !2264, !2286, !2096}
!2286 = !DILocation(line: 741, column: 9, scope: !2251)
!2287 = !DILocation(line: 743, column: 10, scope: !2251)
!2288 = !DILocation(line: 745, column: 5, scope: !2251)
!2289 = !DILocation(line: 746, column: 13, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2244, file: !2, line: 745, column: 12)
!2291 = !DILocation(line: 746, column: 17, scope: !2290)
!2292 = !DILocation(line: 746, column: 28, scope: !2290)
!2293 = !DILocation(line: 746, column: 33, scope: !2290)
!2294 = !DILocation(line: 746, column: 38, scope: !2290)
!2295 = !DILocation(line: 746, column: 11, scope: !2290)
!2296 = !DILocation(line: 749, column: 1, scope: !2198)
!2297 = !DILocation(line: 751, column: 18, scope: !2198)
!2298 = !DILocation(line: 751, column: 23, scope: !2198)
!2299 = !DILocation(line: 752, column: 18, scope: !2198)
!2300 = !DILocation(line: 752, column: 27, scope: !2198)
!2301 = !DILocation(line: 752, column: 32, scope: !2198)
!2302 = !DILocation(line: 752, column: 36, scope: !2198)
!2303 = !DILocation(line: 752, column: 47, scope: !2198)
!2304 = !DILocation(line: 752, column: 52, scope: !2198)
!2305 = !DILocation(line: 752, column: 57, scope: !2198)
!2306 = !DILocation(line: 753, column: 20, scope: !2198)
!2307 = !DILocation(line: 753, column: 24, scope: !2198)
!2308 = !DILocation(line: 753, column: 35, scope: !2198)
!2309 = !DILocation(line: 753, column: 40, scope: !2198)
!2310 = !DILocation(line: 753, column: 45, scope: !2198)
!2311 = !DILocation(line: 753, column: 18, scope: !2198)
!2312 = !DILocation(line: 753, column: 51, scope: !2198)
!2313 = !DILocation(line: 753, column: 49, scope: !2198)
!2314 = !DILocation(line: 754, column: 18, scope: !2198)
!2315 = !DILocation(line: 754, column: 21, scope: !2198)
!2316 = !DILocation(line: 754, column: 25, scope: !2198)
!2317 = !DILocation(line: 754, column: 36, scope: !2198)
!2318 = !DILocation(line: 751, column: 5, scope: !2198)
!2319 = !DILocation(line: 755, column: 22, scope: !2198)
!2320 = !DILocation(line: 755, column: 6, scope: !2198)
!2321 = !DILocation(line: 755, column: 20, scope: !2198)
!2322 = !DILocation(line: 757, column: 12, scope: !2198)
!2323 = !DILocation(line: 757, column: 5, scope: !2198)
!2324 = !DILocation(line: 758, column: 1, scope: !2198)
!2325 = !DISubprogram(name: "ngx_stream_lua_digest_hex", scope: !2326, file: !2326, line: 177, type: !2327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2326 = !DIFile(filename: "../ngx_stream_lua-0.0.7/src/ngx_stream_lua_util.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "b022de5ec41f9ea6c310e1c1512f615b")
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!150, !150, !2329, !192}
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!2331 = !DISubprogram(name: "ngx_stream_compile_complex_value", scope: !1733, file: !1733, line: 105, type: !2332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!529, !2334}
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!2335 = distinct !DISubprogram(name: "ngx_stream_lua_content_by_lua_block", scope: !2, file: !2, line: 345, type: !606, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !2336)
!2336 = !{!2337, !2338, !2339, !2340, !2341}
!2337 = !DILocalVariable(name: "cf", arg: 1, scope: !2335, file: !2, line: 345, type: !114)
!2338 = !DILocalVariable(name: "cmd", arg: 2, scope: !2335, file: !2, line: 345, type: !598)
!2339 = !DILocalVariable(name: "conf", arg: 3, scope: !2335, file: !2, line: 346, type: !128)
!2340 = !DILocalVariable(name: "rv", scope: !2335, file: !2, line: 348, type: !113)
!2341 = !DILocalVariable(name: "save", scope: !2335, file: !2, line: 349, type: !115)
!2342 = !DILocation(line: 345, column: 49, scope: !2335)
!2343 = !DILocation(line: 345, column: 68, scope: !2335)
!2344 = !DILocation(line: 346, column: 11, scope: !2335)
!2345 = !DILocation(line: 348, column: 5, scope: !2335)
!2346 = !DILocation(line: 348, column: 18, scope: !2335)
!2347 = !DILocation(line: 349, column: 5, scope: !2335)
!2348 = !DILocation(line: 349, column: 18, scope: !2335)
!2349 = !DILocation(line: 351, column: 13, scope: !2335)
!2350 = !DILocation(line: 351, column: 12, scope: !2335)
!2351 = !DILocation(line: 352, column: 5, scope: !2335)
!2352 = !DILocation(line: 352, column: 9, scope: !2335)
!2353 = !DILocation(line: 352, column: 17, scope: !2335)
!2354 = !DILocation(line: 353, column: 24, scope: !2335)
!2355 = !DILocation(line: 353, column: 5, scope: !2335)
!2356 = !DILocation(line: 353, column: 9, scope: !2335)
!2357 = !DILocation(line: 353, column: 22, scope: !2335)
!2358 = !DILocation(line: 355, column: 46, scope: !2335)
!2359 = !DILocation(line: 355, column: 50, scope: !2335)
!2360 = !DILocation(line: 355, column: 10, scope: !2335)
!2361 = !DILocation(line: 355, column: 8, scope: !2335)
!2362 = !DILocation(line: 357, column: 6, scope: !2335)
!2363 = !DILocation(line: 357, column: 11, scope: !2335)
!2364 = !DILocation(line: 359, column: 12, scope: !2335)
!2365 = !DILocation(line: 360, column: 1, scope: !2335)
!2366 = !DILocation(line: 359, column: 5, scope: !2335)
!2367 = distinct !DISubprogram(name: "ngx_stream_lua_content_by_lua", scope: !2, file: !2, line: 364, type: !606, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !2368)
!2368 = !{!2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2397, !2398}
!2369 = !DILocalVariable(name: "cf", arg: 1, scope: !2367, file: !2, line: 364, type: !114)
!2370 = !DILocalVariable(name: "cmd", arg: 2, scope: !2367, file: !2, line: 364, type: !598)
!2371 = !DILocalVariable(name: "conf", arg: 3, scope: !2367, file: !2, line: 364, type: !128)
!2372 = !DILocalVariable(name: "chunkname_len", scope: !2367, file: !2, line: 366, type: !136)
!2373 = !DILocalVariable(name: "p", scope: !2367, file: !2, line: 367, type: !150)
!2374 = !DILocalVariable(name: "chunkname", scope: !2367, file: !2, line: 368, type: !150)
!2375 = !DILocalVariable(name: "value", scope: !2367, file: !2, line: 369, type: !714)
!2376 = !DILocalVariable(name: "cxcf", scope: !2367, file: !2, line: 371, type: !2377)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_core_srv_conf_t", file: !754, line: 192, baseType: !2379)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !754, line: 172, size: 768, elements: !2380)
!2380 = !{!2381, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2379, file: !754, line: 173, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_content_handler_pt", file: !754, line: 131, baseType: !2383)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{null, !752}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2379, file: !754, line: 175, baseType: !1112, size: 64, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !2379, file: !754, line: 177, baseType: !150, size: 64, offset: 128)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2379, file: !754, line: 178, baseType: !130, size: 64, offset: 192)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_nodelay", scope: !2379, file: !754, line: 180, baseType: !740, size: 64, offset: 256)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "preread_buffer_size", scope: !2379, file: !754, line: 181, baseType: !136, size: 64, offset: 320)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "preread_timeout", scope: !2379, file: !754, line: 182, baseType: !463, size: 64, offset: 384)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "error_log", scope: !2379, file: !754, line: 184, baseType: !243, size: 64, offset: 448)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "resolver_timeout", scope: !2379, file: !754, line: 186, baseType: !463, size: 64, offset: 512)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "resolver", scope: !2379, file: !754, line: 187, baseType: !919, size: 64, offset: 576)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_protocol_timeout", scope: !2379, file: !754, line: 189, baseType: !463, size: 64, offset: 640)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !2379, file: !754, line: 191, baseType: !130, size: 64, offset: 704)
!2397 = !DILocalVariable(name: "ccv", scope: !2367, file: !2, line: 374, type: !1764)
!2398 = !DILocalVariable(name: "llcf", scope: !2367, file: !2, line: 376, type: !2399)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_lua_loc_conf_t", file: !1119, line: 317, baseType: !1700)
!2401 = !DILocation(line: 364, column: 43, scope: !2367)
!2402 = !DILocation(line: 364, column: 62, scope: !2367)
!2403 = !DILocation(line: 364, column: 73, scope: !2367)
!2404 = !DILocation(line: 366, column: 5, scope: !2367)
!2405 = !DILocation(line: 366, column: 36, scope: !2367)
!2406 = !DILocation(line: 367, column: 5, scope: !2367)
!2407 = !DILocation(line: 367, column: 36, scope: !2367)
!2408 = !DILocation(line: 368, column: 5, scope: !2367)
!2409 = !DILocation(line: 368, column: 36, scope: !2367)
!2410 = !DILocation(line: 369, column: 5, scope: !2367)
!2411 = !DILocation(line: 369, column: 36, scope: !2367)
!2412 = !DILocation(line: 371, column: 5, scope: !2367)
!2413 = !DILocation(line: 371, column: 36, scope: !2367)
!2414 = !DILocation(line: 374, column: 5, scope: !2367)
!2415 = !DILocation(line: 374, column: 54, scope: !2367)
!2416 = !DILocation(line: 376, column: 5, scope: !2367)
!2417 = !DILocation(line: 376, column: 44, scope: !2367)
!2418 = !DILocation(line: 376, column: 51, scope: !2367)
!2419 = !DILocation(line: 381, column: 9, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2367, file: !2, line: 381, column: 9)
!2421 = !DILocation(line: 381, column: 14, scope: !2420)
!2422 = !DILocation(line: 381, column: 19, scope: !2420)
!2423 = !DILocation(line: 381, column: 9, scope: !2367)
!2424 = !DILocation(line: 382, column: 9, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2420, file: !2, line: 381, column: 28)
!2426 = !DILocation(line: 385, column: 9, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2367, file: !2, line: 385, column: 9)
!2428 = !DILocation(line: 385, column: 15, scope: !2427)
!2429 = !{!1803, !1280, i64 120}
!2430 = !DILocation(line: 385, column: 9, scope: !2367)
!2431 = !DILocation(line: 386, column: 9, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2427, file: !2, line: 385, column: 32)
!2433 = !DILocation(line: 389, column: 13, scope: !2367)
!2434 = !DILocation(line: 389, column: 17, scope: !2367)
!2435 = !DILocation(line: 389, column: 23, scope: !2367)
!2436 = !DILocation(line: 389, column: 11, scope: !2367)
!2437 = !DILocation(line: 394, column: 9, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2367, file: !2, line: 394, column: 9)
!2439 = !DILocation(line: 394, column: 18, scope: !2438)
!2440 = !DILocation(line: 394, column: 22, scope: !2438)
!2441 = !DILocation(line: 394, column: 9, scope: !2367)
!2442 = !DILocation(line: 396, column: 41, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2438, file: !2, line: 394, column: 28)
!2444 = !DILocation(line: 396, column: 9, scope: !2443)
!2445 = !DILocation(line: 398, column: 9, scope: !2443)
!2446 = !DILocation(line: 401, column: 9, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2367, file: !2, line: 401, column: 9)
!2448 = !DILocation(line: 401, column: 14, scope: !2447)
!2449 = !DILocation(line: 401, column: 19, scope: !2447)
!2450 = !DILocation(line: 401, column: 9, scope: !2367)
!2451 = !DILocation(line: 402, column: 51, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2447, file: !2, line: 401, column: 61)
!2453 = !DILocation(line: 402, column: 21, scope: !2452)
!2454 = !DILocation(line: 402, column: 19, scope: !2452)
!2455 = !DILocation(line: 405, column: 13, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2452, file: !2, line: 405, column: 13)
!2457 = !DILocation(line: 405, column: 23, scope: !2456)
!2458 = !DILocation(line: 405, column: 13, scope: !2452)
!2459 = !DILocation(line: 406, column: 13, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2456, file: !2, line: 405, column: 32)
!2461 = !DILocation(line: 409, column: 35, scope: !2452)
!2462 = !DILocation(line: 409, column: 9, scope: !2452)
!2463 = !DILocation(line: 409, column: 15, scope: !2452)
!2464 = !DILocation(line: 409, column: 33, scope: !2452)
!2465 = !{!1803, !1280, i64 192}
!2466 = !DILocation(line: 415, column: 9, scope: !2452)
!2467 = !DILocation(line: 415, column: 15, scope: !2452)
!2468 = !DILocation(line: 415, column: 27, scope: !2452)
!2469 = !DILocation(line: 415, column: 35, scope: !2452)
!2470 = !DILocation(line: 417, column: 24, scope: !2452)
!2471 = !DILocation(line: 417, column: 28, scope: !2452)
!2472 = !DILocation(line: 418, column: 24, scope: !2452)
!2473 = !DILocation(line: 418, column: 38, scope: !2452)
!2474 = !DILocation(line: 418, column: 70, scope: !2452)
!2475 = !DILocation(line: 417, column: 13, scope: !2452)
!2476 = !DILocation(line: 417, column: 11, scope: !2452)
!2477 = !DILocation(line: 419, column: 13, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2452, file: !2, line: 419, column: 13)
!2479 = !DILocation(line: 419, column: 15, scope: !2478)
!2480 = !DILocation(line: 419, column: 13, scope: !2452)
!2481 = !DILocation(line: 420, column: 13, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2478, file: !2, line: 419, column: 24)
!2483 = !DILocation(line: 423, column: 33, scope: !2452)
!2484 = !DILocation(line: 423, column: 9, scope: !2452)
!2485 = !DILocation(line: 423, column: 15, scope: !2452)
!2486 = !DILocation(line: 423, column: 31, scope: !2452)
!2487 = !{!1803, !1280, i64 240}
!2488 = !DILocation(line: 425, column: 13, scope: !2452)
!2489 = !DILocation(line: 425, column: 11, scope: !2452)
!2490 = !DILocation(line: 426, column: 13, scope: !2452)
!2491 = !DILocation(line: 426, column: 11, scope: !2452)
!2492 = !DILocation(line: 428, column: 39, scope: !2452)
!2493 = !DILocation(line: 428, column: 42, scope: !2452)
!2494 = !DILocation(line: 428, column: 51, scope: !2452)
!2495 = !DILocation(line: 428, column: 57, scope: !2452)
!2496 = !DILocation(line: 428, column: 66, scope: !2452)
!2497 = !DILocation(line: 428, column: 13, scope: !2452)
!2498 = !DILocation(line: 428, column: 11, scope: !2452)
!2499 = !DILocation(line: 429, column: 10, scope: !2452)
!2500 = !DILocation(line: 429, column: 12, scope: !2452)
!2501 = !DILocation(line: 431, column: 5, scope: !2452)
!2502 = !DILocation(line: 433, column: 9, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2447, file: !2, line: 431, column: 12)
!2504 = !DILocation(line: 434, column: 18, scope: !2503)
!2505 = !DILocation(line: 434, column: 13, scope: !2503)
!2506 = !DILocation(line: 434, column: 16, scope: !2503)
!2507 = !DILocation(line: 435, column: 22, scope: !2503)
!2508 = !DILocation(line: 435, column: 13, scope: !2503)
!2509 = !DILocation(line: 435, column: 19, scope: !2503)
!2510 = !DILocation(line: 436, column: 30, scope: !2503)
!2511 = !DILocation(line: 436, column: 36, scope: !2503)
!2512 = !DILocation(line: 436, column: 13, scope: !2503)
!2513 = !DILocation(line: 436, column: 27, scope: !2503)
!2514 = !DILocation(line: 438, column: 13, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2503, file: !2, line: 438, column: 13)
!2516 = !DILocation(line: 438, column: 52, scope: !2515)
!2517 = !DILocation(line: 438, column: 13, scope: !2503)
!2518 = !DILocation(line: 439, column: 13, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2515, file: !2, line: 438, column: 63)
!2520 = !DILocation(line: 442, column: 13, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2503, file: !2, line: 442, column: 13)
!2522 = !DILocation(line: 442, column: 19, scope: !2521)
!2523 = !DILocation(line: 442, column: 31, scope: !2521)
!2524 = !{!1803, !1280, i64 224}
!2525 = !DILocation(line: 442, column: 39, scope: !2521)
!2526 = !DILocation(line: 442, column: 13, scope: !2503)
!2527 = !DILocation(line: 444, column: 28, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2521, file: !2, line: 442, column: 48)
!2529 = !DILocation(line: 444, column: 32, scope: !2528)
!2530 = !DILocation(line: 444, column: 17, scope: !2528)
!2531 = !DILocation(line: 444, column: 15, scope: !2528)
!2532 = !DILocation(line: 445, column: 17, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2528, file: !2, line: 445, column: 17)
!2534 = !DILocation(line: 445, column: 19, scope: !2533)
!2535 = !DILocation(line: 445, column: 17, scope: !2528)
!2536 = !DILocation(line: 446, column: 17, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2533, file: !2, line: 445, column: 28)
!2538 = !DILocation(line: 449, column: 37, scope: !2528)
!2539 = !DILocation(line: 449, column: 13, scope: !2528)
!2540 = !DILocation(line: 449, column: 19, scope: !2528)
!2541 = !DILocation(line: 449, column: 35, scope: !2528)
!2542 = !DILocation(line: 451, column: 17, scope: !2528)
!2543 = !DILocation(line: 451, column: 15, scope: !2528)
!2544 = !DILocation(line: 453, column: 43, scope: !2528)
!2545 = !DILocation(line: 453, column: 46, scope: !2528)
!2546 = !DILocation(line: 453, column: 55, scope: !2528)
!2547 = !DILocation(line: 453, column: 61, scope: !2528)
!2548 = !DILocation(line: 453, column: 70, scope: !2528)
!2549 = !DILocation(line: 453, column: 17, scope: !2528)
!2550 = !DILocation(line: 453, column: 15, scope: !2528)
!2551 = !DILocation(line: 454, column: 14, scope: !2528)
!2552 = !DILocation(line: 454, column: 16, scope: !2528)
!2553 = !DILocation(line: 455, column: 9, scope: !2528)
!2554 = !DILocation(line: 458, column: 57, scope: !2367)
!2555 = !DILocation(line: 458, column: 62, scope: !2367)
!2556 = !DILocation(line: 458, column: 5, scope: !2367)
!2557 = !DILocation(line: 458, column: 11, scope: !2367)
!2558 = !DILocation(line: 458, column: 27, scope: !2367)
!2559 = !DILocation(line: 462, column: 12, scope: !2367)
!2560 = !{!1944, !1280, i64 8}
!2561 = !DILocation(line: 462, column: 10, scope: !2367)
!2562 = !DILocation(line: 463, column: 9, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2367, file: !2, line: 463, column: 9)
!2564 = !DILocation(line: 463, column: 14, scope: !2563)
!2565 = !DILocation(line: 463, column: 9, scope: !2367)
!2566 = !DILocation(line: 464, column: 9, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2563, file: !2, line: 463, column: 23)
!2568 = !DILocation(line: 467, column: 5, scope: !2367)
!2569 = !DILocation(line: 467, column: 11, scope: !2367)
!2570 = !DILocation(line: 467, column: 19, scope: !2367)
!2571 = !{!2572, !1280, i64 0}
!2572 = !{!"", !1280, i64 0, !1280, i64 8, !1280, i64 16, !1306, i64 24, !1306, i64 32, !1306, i64 40, !1306, i64 48, !1280, i64 56, !1306, i64 64, !1280, i64 72, !1306, i64 80, !1306, i64 88}
!2573 = !DILocation(line: 469, column: 5, scope: !2367)
!2574 = !DILocation(line: 470, column: 1, scope: !2367)
!2575 = distinct !DISubprogram(name: "ngx_stream_lua_log_by_lua_block", scope: !2, file: !2, line: 474, type: !606, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !2576)
!2576 = !{!2577, !2578, !2579, !2580, !2581}
!2577 = !DILocalVariable(name: "cf", arg: 1, scope: !2575, file: !2, line: 474, type: !114)
!2578 = !DILocalVariable(name: "cmd", arg: 2, scope: !2575, file: !2, line: 474, type: !598)
!2579 = !DILocalVariable(name: "conf", arg: 3, scope: !2575, file: !2, line: 475, type: !128)
!2580 = !DILocalVariable(name: "rv", scope: !2575, file: !2, line: 477, type: !113)
!2581 = !DILocalVariable(name: "save", scope: !2575, file: !2, line: 478, type: !115)
!2582 = !DILocation(line: 474, column: 45, scope: !2575)
!2583 = !DILocation(line: 474, column: 64, scope: !2575)
!2584 = !DILocation(line: 475, column: 11, scope: !2575)
!2585 = !DILocation(line: 477, column: 5, scope: !2575)
!2586 = !DILocation(line: 477, column: 18, scope: !2575)
!2587 = !DILocation(line: 478, column: 5, scope: !2575)
!2588 = !DILocation(line: 478, column: 18, scope: !2575)
!2589 = !DILocation(line: 480, column: 13, scope: !2575)
!2590 = !DILocation(line: 480, column: 12, scope: !2575)
!2591 = !DILocation(line: 481, column: 5, scope: !2575)
!2592 = !DILocation(line: 481, column: 9, scope: !2575)
!2593 = !DILocation(line: 481, column: 17, scope: !2575)
!2594 = !DILocation(line: 482, column: 24, scope: !2575)
!2595 = !DILocation(line: 482, column: 5, scope: !2575)
!2596 = !DILocation(line: 482, column: 9, scope: !2575)
!2597 = !DILocation(line: 482, column: 22, scope: !2575)
!2598 = !DILocation(line: 484, column: 46, scope: !2575)
!2599 = !DILocation(line: 484, column: 50, scope: !2575)
!2600 = !DILocation(line: 484, column: 10, scope: !2575)
!2601 = !DILocation(line: 484, column: 8, scope: !2575)
!2602 = !DILocation(line: 486, column: 6, scope: !2575)
!2603 = !DILocation(line: 486, column: 11, scope: !2575)
!2604 = !DILocation(line: 488, column: 12, scope: !2575)
!2605 = !DILocation(line: 489, column: 1, scope: !2575)
!2606 = !DILocation(line: 488, column: 5, scope: !2575)
!2607 = distinct !DISubprogram(name: "ngx_stream_lua_log_by_lua", scope: !2, file: !2, line: 493, type: !606, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !2608)
!2608 = !{!2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618}
!2609 = !DILocalVariable(name: "cf", arg: 1, scope: !2607, file: !2, line: 493, type: !114)
!2610 = !DILocalVariable(name: "cmd", arg: 2, scope: !2607, file: !2, line: 493, type: !598)
!2611 = !DILocalVariable(name: "conf", arg: 3, scope: !2607, file: !2, line: 493, type: !128)
!2612 = !DILocalVariable(name: "chunkname_len", scope: !2607, file: !2, line: 495, type: !136)
!2613 = !DILocalVariable(name: "p", scope: !2607, file: !2, line: 496, type: !150)
!2614 = !DILocalVariable(name: "chunkname", scope: !2607, file: !2, line: 496, type: !150)
!2615 = !DILocalVariable(name: "value", scope: !2607, file: !2, line: 497, type: !714)
!2616 = !DILocalVariable(name: "lmcf", scope: !2607, file: !2, line: 498, type: !1123)
!2617 = !DILocalVariable(name: "llcf", scope: !2607, file: !2, line: 499, type: !2399)
!2618 = !DILocalVariable(name: "ccv", scope: !2607, file: !2, line: 500, type: !1764)
!2619 = !DILocation(line: 493, column: 39, scope: !2607)
!2620 = !DILocation(line: 493, column: 58, scope: !2607)
!2621 = !DILocation(line: 493, column: 69, scope: !2607)
!2622 = !DILocation(line: 495, column: 5, scope: !2607)
!2623 = !DILocation(line: 495, column: 48, scope: !2607)
!2624 = !DILocation(line: 496, column: 5, scope: !2607)
!2625 = !DILocation(line: 496, column: 48, scope: !2607)
!2626 = !DILocation(line: 496, column: 52, scope: !2607)
!2627 = !DILocation(line: 497, column: 5, scope: !2607)
!2628 = !DILocation(line: 497, column: 48, scope: !2607)
!2629 = !DILocation(line: 498, column: 5, scope: !2607)
!2630 = !DILocation(line: 498, column: 48, scope: !2607)
!2631 = !DILocation(line: 499, column: 5, scope: !2607)
!2632 = !DILocation(line: 499, column: 48, scope: !2607)
!2633 = !DILocation(line: 499, column: 55, scope: !2607)
!2634 = !DILocation(line: 500, column: 5, scope: !2607)
!2635 = !DILocation(line: 500, column: 48, scope: !2607)
!2636 = !DILocation(line: 505, column: 9, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2607, file: !2, line: 505, column: 9)
!2638 = !DILocation(line: 505, column: 14, scope: !2637)
!2639 = !DILocation(line: 505, column: 19, scope: !2637)
!2640 = !DILocation(line: 505, column: 9, scope: !2607)
!2641 = !DILocation(line: 506, column: 9, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2637, file: !2, line: 505, column: 28)
!2643 = !DILocation(line: 509, column: 9, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2607, file: !2, line: 509, column: 9)
!2645 = !DILocation(line: 509, column: 15, scope: !2644)
!2646 = !{!1803, !1280, i64 128}
!2647 = !DILocation(line: 509, column: 9, scope: !2607)
!2648 = !DILocation(line: 510, column: 9, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2644, file: !2, line: 509, column: 28)
!2650 = !DILocation(line: 513, column: 13, scope: !2607)
!2651 = !DILocation(line: 513, column: 17, scope: !2607)
!2652 = !DILocation(line: 513, column: 23, scope: !2607)
!2653 = !DILocation(line: 513, column: 11, scope: !2607)
!2654 = !DILocation(line: 515, column: 9, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2607, file: !2, line: 515, column: 9)
!2656 = !DILocation(line: 515, column: 18, scope: !2655)
!2657 = !DILocation(line: 515, column: 22, scope: !2655)
!2658 = !DILocation(line: 515, column: 9, scope: !2607)
!2659 = !DILocation(line: 517, column: 41, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2655, file: !2, line: 515, column: 28)
!2661 = !DILocation(line: 517, column: 9, scope: !2660)
!2662 = !DILocation(line: 520, column: 9, scope: !2660)
!2663 = !DILocation(line: 523, column: 9, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2607, file: !2, line: 523, column: 9)
!2665 = !DILocation(line: 523, column: 14, scope: !2664)
!2666 = !DILocation(line: 523, column: 19, scope: !2664)
!2667 = !DILocation(line: 523, column: 9, scope: !2607)
!2668 = !DILocation(line: 524, column: 51, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2664, file: !2, line: 523, column: 57)
!2670 = !DILocation(line: 524, column: 21, scope: !2669)
!2671 = !DILocation(line: 524, column: 19, scope: !2669)
!2672 = !DILocation(line: 527, column: 13, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2669, file: !2, line: 527, column: 13)
!2674 = !DILocation(line: 527, column: 23, scope: !2673)
!2675 = !DILocation(line: 527, column: 13, scope: !2669)
!2676 = !DILocation(line: 528, column: 13, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2673, file: !2, line: 527, column: 32)
!2678 = !DILocation(line: 531, column: 31, scope: !2669)
!2679 = !DILocation(line: 531, column: 9, scope: !2669)
!2680 = !DILocation(line: 531, column: 15, scope: !2669)
!2681 = !DILocation(line: 531, column: 29, scope: !2669)
!2682 = !{!1803, !1280, i64 248}
!2683 = !DILocation(line: 535, column: 9, scope: !2669)
!2684 = !DILocation(line: 535, column: 15, scope: !2669)
!2685 = !DILocation(line: 535, column: 23, scope: !2669)
!2686 = !DILocation(line: 535, column: 31, scope: !2669)
!2687 = !DILocation(line: 537, column: 24, scope: !2669)
!2688 = !DILocation(line: 537, column: 28, scope: !2669)
!2689 = !DILocation(line: 538, column: 24, scope: !2669)
!2690 = !DILocation(line: 538, column: 38, scope: !2669)
!2691 = !DILocation(line: 538, column: 70, scope: !2669)
!2692 = !DILocation(line: 537, column: 13, scope: !2669)
!2693 = !DILocation(line: 537, column: 11, scope: !2669)
!2694 = !DILocation(line: 539, column: 13, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2669, file: !2, line: 539, column: 13)
!2696 = !DILocation(line: 539, column: 15, scope: !2695)
!2697 = !DILocation(line: 539, column: 13, scope: !2669)
!2698 = !DILocation(line: 540, column: 13, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2695, file: !2, line: 539, column: 24)
!2700 = !DILocation(line: 543, column: 29, scope: !2669)
!2701 = !DILocation(line: 543, column: 9, scope: !2669)
!2702 = !DILocation(line: 543, column: 15, scope: !2669)
!2703 = !DILocation(line: 543, column: 27, scope: !2669)
!2704 = !{!1803, !1280, i64 296}
!2705 = !DILocation(line: 545, column: 13, scope: !2669)
!2706 = !DILocation(line: 545, column: 11, scope: !2669)
!2707 = !DILocation(line: 546, column: 13, scope: !2669)
!2708 = !DILocation(line: 546, column: 11, scope: !2669)
!2709 = !DILocation(line: 548, column: 39, scope: !2669)
!2710 = !DILocation(line: 548, column: 42, scope: !2669)
!2711 = !DILocation(line: 548, column: 51, scope: !2669)
!2712 = !DILocation(line: 548, column: 57, scope: !2669)
!2713 = !DILocation(line: 548, column: 66, scope: !2669)
!2714 = !DILocation(line: 548, column: 13, scope: !2669)
!2715 = !DILocation(line: 548, column: 11, scope: !2669)
!2716 = !DILocation(line: 549, column: 10, scope: !2669)
!2717 = !DILocation(line: 549, column: 12, scope: !2669)
!2718 = !DILocation(line: 551, column: 5, scope: !2669)
!2719 = !DILocation(line: 552, column: 9, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2664, file: !2, line: 551, column: 12)
!2721 = !DILocation(line: 553, column: 18, scope: !2720)
!2722 = !DILocation(line: 553, column: 13, scope: !2720)
!2723 = !DILocation(line: 553, column: 16, scope: !2720)
!2724 = !DILocation(line: 554, column: 22, scope: !2720)
!2725 = !DILocation(line: 554, column: 13, scope: !2720)
!2726 = !DILocation(line: 554, column: 19, scope: !2720)
!2727 = !DILocation(line: 555, column: 30, scope: !2720)
!2728 = !DILocation(line: 555, column: 36, scope: !2720)
!2729 = !DILocation(line: 555, column: 13, scope: !2720)
!2730 = !DILocation(line: 555, column: 27, scope: !2720)
!2731 = !DILocation(line: 557, column: 13, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2720, file: !2, line: 557, column: 13)
!2733 = !DILocation(line: 557, column: 52, scope: !2732)
!2734 = !DILocation(line: 557, column: 13, scope: !2720)
!2735 = !DILocation(line: 558, column: 13, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2732, file: !2, line: 557, column: 63)
!2737 = !DILocation(line: 561, column: 13, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2720, file: !2, line: 561, column: 13)
!2739 = !DILocation(line: 561, column: 19, scope: !2738)
!2740 = !DILocation(line: 561, column: 27, scope: !2738)
!2741 = !{!1803, !1280, i64 280}
!2742 = !DILocation(line: 561, column: 35, scope: !2738)
!2743 = !DILocation(line: 561, column: 13, scope: !2720)
!2744 = !DILocation(line: 563, column: 28, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2738, file: !2, line: 561, column: 44)
!2746 = !DILocation(line: 563, column: 32, scope: !2745)
!2747 = !DILocation(line: 563, column: 17, scope: !2745)
!2748 = !DILocation(line: 563, column: 15, scope: !2745)
!2749 = !DILocation(line: 564, column: 17, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2745, file: !2, line: 564, column: 17)
!2751 = !DILocation(line: 564, column: 19, scope: !2750)
!2752 = !DILocation(line: 564, column: 17, scope: !2745)
!2753 = !DILocation(line: 565, column: 17, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2750, file: !2, line: 564, column: 28)
!2755 = !DILocation(line: 568, column: 33, scope: !2745)
!2756 = !DILocation(line: 568, column: 13, scope: !2745)
!2757 = !DILocation(line: 568, column: 19, scope: !2745)
!2758 = !DILocation(line: 568, column: 31, scope: !2745)
!2759 = !DILocation(line: 570, column: 17, scope: !2745)
!2760 = !DILocation(line: 570, column: 15, scope: !2745)
!2761 = !DILocation(line: 572, column: 43, scope: !2745)
!2762 = !DILocation(line: 572, column: 46, scope: !2745)
!2763 = !DILocation(line: 572, column: 55, scope: !2745)
!2764 = !DILocation(line: 572, column: 61, scope: !2745)
!2765 = !DILocation(line: 572, column: 70, scope: !2745)
!2766 = !DILocation(line: 572, column: 17, scope: !2745)
!2767 = !DILocation(line: 572, column: 15, scope: !2745)
!2768 = !DILocation(line: 573, column: 14, scope: !2745)
!2769 = !DILocation(line: 573, column: 16, scope: !2745)
!2770 = !DILocation(line: 574, column: 9, scope: !2745)
!2771 = !DILocation(line: 577, column: 53, scope: !2607)
!2772 = !DILocation(line: 577, column: 58, scope: !2607)
!2773 = !DILocation(line: 577, column: 5, scope: !2607)
!2774 = !DILocation(line: 577, column: 11, scope: !2607)
!2775 = !DILocation(line: 577, column: 23, scope: !2607)
!2776 = !DILocation(line: 579, column: 12, scope: !2607)
!2777 = !DILocation(line: 579, column: 10, scope: !2607)
!2778 = !DILocation(line: 581, column: 5, scope: !2607)
!2779 = !DILocation(line: 581, column: 11, scope: !2607)
!2780 = !DILocation(line: 581, column: 24, scope: !2607)
!2781 = !DILocation(line: 583, column: 5, scope: !2607)
!2782 = !DILocation(line: 584, column: 1, scope: !2607)
!2783 = distinct !DISubprogram(name: "ngx_stream_lua_init_by_lua_block", scope: !2, file: !2, line: 590, type: !606, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !2784)
!2784 = !{!2785, !2786, !2787, !2788, !2789}
!2785 = !DILocalVariable(name: "cf", arg: 1, scope: !2783, file: !2, line: 590, type: !114)
!2786 = !DILocalVariable(name: "cmd", arg: 2, scope: !2783, file: !2, line: 590, type: !598)
!2787 = !DILocalVariable(name: "conf", arg: 3, scope: !2783, file: !2, line: 591, type: !128)
!2788 = !DILocalVariable(name: "rv", scope: !2783, file: !2, line: 593, type: !113)
!2789 = !DILocalVariable(name: "save", scope: !2783, file: !2, line: 594, type: !115)
!2790 = !DILocation(line: 590, column: 46, scope: !2783)
!2791 = !DILocation(line: 590, column: 65, scope: !2783)
!2792 = !DILocation(line: 591, column: 11, scope: !2783)
!2793 = !DILocation(line: 593, column: 5, scope: !2783)
!2794 = !DILocation(line: 593, column: 18, scope: !2783)
!2795 = !DILocation(line: 594, column: 5, scope: !2783)
!2796 = !DILocation(line: 594, column: 18, scope: !2783)
!2797 = !DILocation(line: 596, column: 13, scope: !2783)
!2798 = !DILocation(line: 596, column: 12, scope: !2783)
!2799 = !DILocation(line: 597, column: 5, scope: !2783)
!2800 = !DILocation(line: 597, column: 9, scope: !2783)
!2801 = !DILocation(line: 597, column: 17, scope: !2783)
!2802 = !DILocation(line: 598, column: 24, scope: !2783)
!2803 = !DILocation(line: 598, column: 5, scope: !2783)
!2804 = !DILocation(line: 598, column: 9, scope: !2783)
!2805 = !DILocation(line: 598, column: 22, scope: !2783)
!2806 = !DILocation(line: 600, column: 46, scope: !2783)
!2807 = !DILocation(line: 600, column: 50, scope: !2783)
!2808 = !DILocation(line: 600, column: 10, scope: !2783)
!2809 = !DILocation(line: 600, column: 8, scope: !2783)
!2810 = !DILocation(line: 602, column: 6, scope: !2783)
!2811 = !DILocation(line: 602, column: 11, scope: !2783)
!2812 = !DILocation(line: 604, column: 12, scope: !2783)
!2813 = !DILocation(line: 605, column: 1, scope: !2783)
!2814 = !DILocation(line: 604, column: 5, scope: !2783)
!2815 = distinct !DISubprogram(name: "ngx_stream_lua_init_by_lua", scope: !2, file: !2, line: 609, type: !606, scopeLine: 611, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !2816)
!2816 = !{!2817, !2818, !2819, !2820, !2821, !2822}
!2817 = !DILocalVariable(name: "cf", arg: 1, scope: !2815, file: !2, line: 609, type: !114)
!2818 = !DILocalVariable(name: "cmd", arg: 2, scope: !2815, file: !2, line: 609, type: !598)
!2819 = !DILocalVariable(name: "conf", arg: 3, scope: !2815, file: !2, line: 610, type: !128)
!2820 = !DILocalVariable(name: "name", scope: !2815, file: !2, line: 612, type: !150)
!2821 = !DILocalVariable(name: "value", scope: !2815, file: !2, line: 613, type: !714)
!2822 = !DILocalVariable(name: "lmcf", scope: !2815, file: !2, line: 614, type: !1123)
!2823 = !DILocation(line: 609, column: 40, scope: !2815)
!2824 = !DILocation(line: 609, column: 59, scope: !2815)
!2825 = !DILocation(line: 610, column: 11, scope: !2815)
!2826 = !DILocation(line: 612, column: 5, scope: !2815)
!2827 = !DILocation(line: 612, column: 42, scope: !2815)
!2828 = !DILocation(line: 613, column: 5, scope: !2815)
!2829 = !DILocation(line: 613, column: 42, scope: !2815)
!2830 = !DILocation(line: 614, column: 5, scope: !2815)
!2831 = !DILocation(line: 614, column: 42, scope: !2815)
!2832 = !DILocation(line: 614, column: 49, scope: !2815)
!2833 = !DILocation(line: 619, column: 9, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2815, file: !2, line: 619, column: 9)
!2835 = !DILocation(line: 619, column: 14, scope: !2834)
!2836 = !DILocation(line: 619, column: 19, scope: !2834)
!2837 = !DILocation(line: 619, column: 9, scope: !2815)
!2838 = !DILocation(line: 620, column: 9, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2834, file: !2, line: 619, column: 28)
!2840 = !DILocation(line: 623, column: 9, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2815, file: !2, line: 623, column: 9)
!2842 = !DILocation(line: 623, column: 15, scope: !2841)
!2843 = !{!1304, !1280, i64 144}
!2844 = !DILocation(line: 623, column: 9, scope: !2815)
!2845 = !DILocation(line: 624, column: 9, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2841, file: !2, line: 623, column: 29)
!2847 = !DILocation(line: 627, column: 13, scope: !2815)
!2848 = !DILocation(line: 627, column: 17, scope: !2815)
!2849 = !DILocation(line: 627, column: 23, scope: !2815)
!2850 = !DILocation(line: 627, column: 11, scope: !2815)
!2851 = !DILocation(line: 629, column: 9, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2815, file: !2, line: 629, column: 9)
!2853 = !DILocation(line: 629, column: 18, scope: !2852)
!2854 = !DILocation(line: 629, column: 22, scope: !2852)
!2855 = !DILocation(line: 629, column: 9, scope: !2815)
!2856 = !DILocation(line: 631, column: 41, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2852, file: !2, line: 629, column: 28)
!2858 = !DILocation(line: 631, column: 9, scope: !2857)
!2859 = !DILocation(line: 633, column: 9, scope: !2857)
!2860 = !DILocation(line: 636, column: 64, scope: !2815)
!2861 = !DILocation(line: 636, column: 69, scope: !2815)
!2862 = !DILocation(line: 636, column: 5, scope: !2815)
!2863 = !DILocation(line: 636, column: 11, scope: !2815)
!2864 = !DILocation(line: 636, column: 24, scope: !2815)
!2865 = !DILocation(line: 638, column: 9, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2815, file: !2, line: 638, column: 9)
!2867 = !DILocation(line: 638, column: 14, scope: !2866)
!2868 = !DILocation(line: 638, column: 19, scope: !2866)
!2869 = !DILocation(line: 638, column: 9, scope: !2815)
!2870 = !DILocation(line: 639, column: 43, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2866, file: !2, line: 638, column: 51)
!2872 = !DILocation(line: 639, column: 47, scope: !2871)
!2873 = !DILocation(line: 639, column: 53, scope: !2871)
!2874 = !DILocation(line: 639, column: 62, scope: !2871)
!2875 = !DILocation(line: 640, column: 43, scope: !2871)
!2876 = !DILocation(line: 640, column: 52, scope: !2871)
!2877 = !DILocation(line: 639, column: 16, scope: !2871)
!2878 = !DILocation(line: 639, column: 14, scope: !2871)
!2879 = !DILocation(line: 641, column: 13, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2871, file: !2, line: 641, column: 13)
!2881 = !DILocation(line: 641, column: 18, scope: !2880)
!2882 = !DILocation(line: 641, column: 13, scope: !2871)
!2883 = !DILocation(line: 642, column: 13, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2880, file: !2, line: 641, column: 27)
!2885 = !DILocation(line: 645, column: 31, scope: !2871)
!2886 = !DILocation(line: 645, column: 9, scope: !2871)
!2887 = !DILocation(line: 645, column: 15, scope: !2871)
!2888 = !DILocation(line: 645, column: 24, scope: !2871)
!2889 = !DILocation(line: 645, column: 29, scope: !2871)
!2890 = !{!1304, !1280, i64 160}
!2891 = !DILocation(line: 646, column: 30, scope: !2871)
!2892 = !DILocation(line: 646, column: 9, scope: !2871)
!2893 = !DILocation(line: 646, column: 15, scope: !2871)
!2894 = !DILocation(line: 646, column: 24, scope: !2871)
!2895 = !DILocation(line: 646, column: 28, scope: !2871)
!2896 = !{!1304, !1306, i64 152}
!2897 = !DILocation(line: 648, column: 5, scope: !2871)
!2898 = !DILocation(line: 649, column: 9, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2866, file: !2, line: 648, column: 12)
!2900 = !DILocation(line: 649, column: 15, scope: !2899)
!2901 = !DILocation(line: 649, column: 26, scope: !2899)
!2902 = !DILocation(line: 652, column: 5, scope: !2815)
!2903 = !DILocation(line: 653, column: 1, scope: !2815)
!2904 = !DISubprogram(name: "ngx_stream_lua_rebase_path", scope: !2326, file: !2326, line: 149, type: !2905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!150, !140, !150, !136}
!2907 = !DISubprogram(name: "strlen", scope: !2908, file: !2908, line: 407, type: !2909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2908 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!134, !594}
!2911 = distinct !DISubprogram(name: "ngx_stream_lua_init_worker_by_lua_block", scope: !2, file: !2, line: 657, type: !606, scopeLine: 659, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !2912)
!2912 = !{!2913, !2914, !2915, !2916, !2917}
!2913 = !DILocalVariable(name: "cf", arg: 1, scope: !2911, file: !2, line: 657, type: !114)
!2914 = !DILocalVariable(name: "cmd", arg: 2, scope: !2911, file: !2, line: 657, type: !598)
!2915 = !DILocalVariable(name: "conf", arg: 3, scope: !2911, file: !2, line: 658, type: !128)
!2916 = !DILocalVariable(name: "rv", scope: !2911, file: !2, line: 660, type: !113)
!2917 = !DILocalVariable(name: "save", scope: !2911, file: !2, line: 661, type: !115)
!2918 = !DILocation(line: 657, column: 53, scope: !2911)
!2919 = !DILocation(line: 657, column: 72, scope: !2911)
!2920 = !DILocation(line: 658, column: 11, scope: !2911)
!2921 = !DILocation(line: 660, column: 5, scope: !2911)
!2922 = !DILocation(line: 660, column: 18, scope: !2911)
!2923 = !DILocation(line: 661, column: 5, scope: !2911)
!2924 = !DILocation(line: 661, column: 18, scope: !2911)
!2925 = !DILocation(line: 663, column: 13, scope: !2911)
!2926 = !DILocation(line: 663, column: 12, scope: !2911)
!2927 = !DILocation(line: 664, column: 5, scope: !2911)
!2928 = !DILocation(line: 664, column: 9, scope: !2911)
!2929 = !DILocation(line: 664, column: 17, scope: !2911)
!2930 = !DILocation(line: 665, column: 24, scope: !2911)
!2931 = !DILocation(line: 665, column: 5, scope: !2911)
!2932 = !DILocation(line: 665, column: 9, scope: !2911)
!2933 = !DILocation(line: 665, column: 22, scope: !2911)
!2934 = !DILocation(line: 667, column: 46, scope: !2911)
!2935 = !DILocation(line: 667, column: 50, scope: !2911)
!2936 = !DILocation(line: 667, column: 10, scope: !2911)
!2937 = !DILocation(line: 667, column: 8, scope: !2911)
!2938 = !DILocation(line: 669, column: 6, scope: !2911)
!2939 = !DILocation(line: 669, column: 11, scope: !2911)
!2940 = !DILocation(line: 671, column: 12, scope: !2911)
!2941 = !DILocation(line: 672, column: 1, scope: !2911)
!2942 = !DILocation(line: 671, column: 5, scope: !2911)
!2943 = distinct !DISubprogram(name: "ngx_stream_lua_init_worker_by_lua", scope: !2, file: !2, line: 676, type: !606, scopeLine: 678, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !2944)
!2944 = !{!2945, !2946, !2947, !2948, !2949, !2950}
!2945 = !DILocalVariable(name: "cf", arg: 1, scope: !2943, file: !2, line: 676, type: !114)
!2946 = !DILocalVariable(name: "cmd", arg: 2, scope: !2943, file: !2, line: 676, type: !598)
!2947 = !DILocalVariable(name: "conf", arg: 3, scope: !2943, file: !2, line: 677, type: !128)
!2948 = !DILocalVariable(name: "name", scope: !2943, file: !2, line: 679, type: !150)
!2949 = !DILocalVariable(name: "value", scope: !2943, file: !2, line: 680, type: !714)
!2950 = !DILocalVariable(name: "lmcf", scope: !2943, file: !2, line: 682, type: !1123)
!2951 = !DILocation(line: 676, column: 47, scope: !2943)
!2952 = !DILocation(line: 676, column: 66, scope: !2943)
!2953 = !DILocation(line: 677, column: 11, scope: !2943)
!2954 = !DILocation(line: 679, column: 5, scope: !2943)
!2955 = !DILocation(line: 679, column: 34, scope: !2943)
!2956 = !DILocation(line: 680, column: 5, scope: !2943)
!2957 = !DILocation(line: 680, column: 34, scope: !2943)
!2958 = !DILocation(line: 682, column: 5, scope: !2943)
!2959 = !DILocation(line: 682, column: 42, scope: !2943)
!2960 = !DILocation(line: 682, column: 49, scope: !2943)
!2961 = !DILocation(line: 687, column: 9, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2943, file: !2, line: 687, column: 9)
!2963 = !DILocation(line: 687, column: 14, scope: !2962)
!2964 = !DILocation(line: 687, column: 19, scope: !2962)
!2965 = !DILocation(line: 687, column: 9, scope: !2943)
!2966 = !DILocation(line: 688, column: 9, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2962, file: !2, line: 687, column: 28)
!2968 = !DILocation(line: 691, column: 9, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2943, file: !2, line: 691, column: 9)
!2970 = !DILocation(line: 691, column: 15, scope: !2969)
!2971 = !{!1304, !1280, i64 168}
!2972 = !DILocation(line: 691, column: 9, scope: !2943)
!2973 = !DILocation(line: 692, column: 9, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2969, file: !2, line: 691, column: 36)
!2975 = !DILocation(line: 695, column: 13, scope: !2943)
!2976 = !DILocation(line: 695, column: 17, scope: !2943)
!2977 = !DILocation(line: 695, column: 23, scope: !2943)
!2978 = !DILocation(line: 695, column: 11, scope: !2943)
!2979 = !DILocation(line: 697, column: 71, scope: !2943)
!2980 = !DILocation(line: 697, column: 76, scope: !2943)
!2981 = !DILocation(line: 697, column: 5, scope: !2943)
!2982 = !DILocation(line: 697, column: 11, scope: !2943)
!2983 = !DILocation(line: 697, column: 31, scope: !2943)
!2984 = !DILocation(line: 699, column: 9, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2943, file: !2, line: 699, column: 9)
!2986 = !DILocation(line: 699, column: 14, scope: !2985)
!2987 = !DILocation(line: 699, column: 19, scope: !2985)
!2988 = !DILocation(line: 699, column: 9, scope: !2943)
!2989 = !DILocation(line: 700, column: 43, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2985, file: !2, line: 699, column: 58)
!2991 = !DILocation(line: 700, column: 47, scope: !2990)
!2992 = !DILocation(line: 700, column: 53, scope: !2990)
!2993 = !DILocation(line: 700, column: 62, scope: !2990)
!2994 = !DILocation(line: 701, column: 43, scope: !2990)
!2995 = !DILocation(line: 701, column: 52, scope: !2990)
!2996 = !DILocation(line: 700, column: 16, scope: !2990)
!2997 = !DILocation(line: 700, column: 14, scope: !2990)
!2998 = !DILocation(line: 702, column: 13, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2990, file: !2, line: 702, column: 13)
!3000 = !DILocation(line: 702, column: 18, scope: !2999)
!3001 = !DILocation(line: 702, column: 13, scope: !2990)
!3002 = !DILocation(line: 703, column: 13, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2999, file: !2, line: 702, column: 27)
!3004 = !DILocation(line: 706, column: 38, scope: !2990)
!3005 = !DILocation(line: 706, column: 9, scope: !2990)
!3006 = !DILocation(line: 706, column: 15, scope: !2990)
!3007 = !DILocation(line: 706, column: 31, scope: !2990)
!3008 = !DILocation(line: 706, column: 36, scope: !2990)
!3009 = !{!1304, !1280, i64 184}
!3010 = !DILocation(line: 707, column: 37, scope: !2990)
!3011 = !DILocation(line: 707, column: 9, scope: !2990)
!3012 = !DILocation(line: 707, column: 15, scope: !2990)
!3013 = !DILocation(line: 707, column: 31, scope: !2990)
!3014 = !DILocation(line: 707, column: 35, scope: !2990)
!3015 = !{!1304, !1306, i64 176}
!3016 = !DILocation(line: 709, column: 5, scope: !2990)
!3017 = !DILocation(line: 710, column: 9, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !2985, file: !2, line: 709, column: 12)
!3019 = !DILocation(line: 710, column: 15, scope: !3018)
!3020 = !DILocation(line: 710, column: 33, scope: !3018)
!3021 = !DILocation(line: 713, column: 5, scope: !2943)
!3022 = !DILocation(line: 714, column: 1, scope: !2943)
!3023 = !DISubprogram(name: "ngx_array_create", scope: !124, file: !124, line: 25, type: !3024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!122, !140, !130, !136}
!3026 = distinct !DISubprogram(name: "ngx_stream_lua_conf_read_lua_token", scope: !2, file: !2, line: 923, type: !3027, scopeLine: 925, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !3030)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!529, !114, !3029}
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!3030 = !{!3031, !3032, !3033, !3034, !3035, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051}
!3031 = !DILocalVariable(name: "cf", arg: 1, scope: !3026, file: !2, line: 923, type: !114)
!3032 = !DILocalVariable(name: "ctx", arg: 2, scope: !3026, file: !2, line: 924, type: !3029)
!3033 = !DILocalVariable(name: "i", scope: !3026, file: !2, line: 929, type: !192)
!3034 = !DILocalVariable(name: "rc", scope: !3026, file: !2, line: 929, type: !192)
!3035 = !DILocalVariable(name: "ovec", scope: !3026, file: !2, line: 930, type: !3036)
!3036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 64, elements: !3037)
!3037 = !{!3038}
!3038 = !DISubrange(count: 2)
!3039 = !DILocalVariable(name: "start", scope: !3026, file: !2, line: 931, type: !150)
!3040 = !DILocalVariable(name: "p", scope: !3026, file: !2, line: 931, type: !150)
!3041 = !DILocalVariable(name: "q", scope: !3026, file: !2, line: 931, type: !150)
!3042 = !DILocalVariable(name: "ch", scope: !3026, file: !2, line: 931, type: !151)
!3043 = !DILocalVariable(name: "file_size", scope: !3026, file: !2, line: 932, type: !175)
!3044 = !DILocalVariable(name: "len", scope: !3026, file: !2, line: 933, type: !136)
!3045 = !DILocalVariable(name: "buf_size", scope: !3026, file: !2, line: 933, type: !136)
!3046 = !DILocalVariable(name: "n", scope: !3026, file: !2, line: 934, type: !406)
!3047 = !DILocalVariable(name: "size", scope: !3026, file: !2, line: 934, type: !406)
!3048 = !DILocalVariable(name: "start_line", scope: !3026, file: !2, line: 935, type: !130)
!3049 = !DILocalVariable(name: "word", scope: !3026, file: !2, line: 936, type: !714)
!3050 = !DILocalVariable(name: "b", scope: !3026, file: !2, line: 937, type: !168)
!3051 = !DILocalVariable(name: "dump", scope: !3026, file: !2, line: 939, type: !168)
!3052 = !DILocation(line: 923, column: 48, scope: !3026)
!3053 = !DILocation(line: 924, column: 40, scope: !3026)
!3054 = !DILocation(line: 929, column: 5, scope: !3026)
!3055 = !DILocation(line: 929, column: 18, scope: !3026)
!3056 = !DILocation(line: 929, column: 21, scope: !3026)
!3057 = !DILocation(line: 930, column: 5, scope: !3026)
!3058 = !DILocation(line: 930, column: 18, scope: !3026)
!3059 = !DILocation(line: 931, column: 5, scope: !3026)
!3060 = !DILocation(line: 931, column: 18, scope: !3026)
!3061 = !DILocation(line: 931, column: 26, scope: !3026)
!3062 = !DILocation(line: 931, column: 30, scope: !3026)
!3063 = !DILocation(line: 931, column: 33, scope: !3026)
!3064 = !DILocation(line: 932, column: 5, scope: !3026)
!3065 = !DILocation(line: 932, column: 18, scope: !3026)
!3066 = !DILocation(line: 933, column: 5, scope: !3026)
!3067 = !DILocation(line: 933, column: 18, scope: !3026)
!3068 = !DILocation(line: 933, column: 23, scope: !3026)
!3069 = !DILocation(line: 934, column: 5, scope: !3026)
!3070 = !DILocation(line: 934, column: 18, scope: !3026)
!3071 = !DILocation(line: 934, column: 21, scope: !3026)
!3072 = !DILocation(line: 935, column: 5, scope: !3026)
!3073 = !DILocation(line: 935, column: 18, scope: !3026)
!3074 = !DILocation(line: 936, column: 5, scope: !3026)
!3075 = !DILocation(line: 936, column: 18, scope: !3026)
!3076 = !DILocation(line: 937, column: 5, scope: !3026)
!3077 = !DILocation(line: 937, column: 18, scope: !3026)
!3078 = !DILocation(line: 939, column: 5, scope: !3026)
!3079 = !DILocation(line: 939, column: 18, scope: !3026)
!3080 = !DILocation(line: 942, column: 9, scope: !3026)
!3081 = !DILocation(line: 942, column: 13, scope: !3026)
!3082 = !DILocation(line: 942, column: 24, scope: !3026)
!3083 = !{!1985, !1280, i64 200}
!3084 = !DILocation(line: 942, column: 7, scope: !3026)
!3085 = !DILocation(line: 944, column: 12, scope: !3026)
!3086 = !DILocation(line: 944, column: 16, scope: !3026)
!3087 = !DILocation(line: 944, column: 27, scope: !3026)
!3088 = !{!1985, !1280, i64 208}
!3089 = !DILocation(line: 944, column: 10, scope: !3026)
!3090 = !DILocation(line: 946, column: 13, scope: !3026)
!3091 = !DILocation(line: 946, column: 16, scope: !3026)
!3092 = !{!3093, !1280, i64 0}
!3093 = !{!"ngx_buf_s", !1280, i64 0, !1280, i64 8, !1306, i64 16, !1306, i64 24, !1280, i64 32, !1280, i64 40, !1280, i64 48, !1280, i64 56, !1280, i64 64, !1307, i64 72, !1307, i64 72, !1307, i64 72, !1307, i64 72, !1307, i64 72, !1307, i64 72, !1307, i64 72, !1307, i64 72, !1307, i64 73, !1307, i64 73, !1307, i64 73, !1307, i64 76}
!3094 = !DILocation(line: 946, column: 11, scope: !3026)
!3095 = !DILocation(line: 947, column: 18, scope: !3026)
!3096 = !DILocation(line: 947, column: 22, scope: !3026)
!3097 = !DILocation(line: 947, column: 33, scope: !3026)
!3098 = !DILocation(line: 947, column: 16, scope: !3026)
!3099 = !DILocation(line: 948, column: 16, scope: !3026)
!3100 = !DILocation(line: 948, column: 19, scope: !3026)
!3101 = !{!3093, !1280, i64 40}
!3102 = !DILocation(line: 948, column: 25, scope: !3026)
!3103 = !DILocation(line: 948, column: 28, scope: !3026)
!3104 = !{!3093, !1280, i64 32}
!3105 = !DILocation(line: 948, column: 23, scope: !3026)
!3106 = !DILocation(line: 948, column: 14, scope: !3026)
!3107 = !DILocation(line: 952, column: 17, scope: !3026)
!3108 = !{!1985, !1306, i64 72}
!3109 = !DILocation(line: 952, column: 15, scope: !3026)
!3110 = !DILocation(line: 954, column: 5, scope: !3026)
!3111 = !DILocation(line: 956, column: 13, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !2, line: 956, column: 13)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !2, line: 954, column: 16)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !2, line: 954, column: 5)
!3115 = distinct !DILexicalBlock(scope: !3026, file: !2, line: 954, column: 5)
!3116 = !DILocation(line: 956, column: 16, scope: !3112)
!3117 = !DILocation(line: 956, column: 23, scope: !3112)
!3118 = !DILocation(line: 956, column: 26, scope: !3112)
!3119 = !{!3093, !1280, i64 8}
!3120 = !DILocation(line: 956, column: 20, scope: !3112)
!3121 = !DILocation(line: 957, column: 13, scope: !3112)
!3122 = !DILocation(line: 957, column: 17, scope: !3112)
!3123 = !DILocation(line: 957, column: 20, scope: !3112)
!3124 = !DILocation(line: 957, column: 27, scope: !3112)
!3125 = !DILocation(line: 957, column: 30, scope: !3112)
!3126 = !DILocation(line: 957, column: 25, scope: !3112)
!3127 = !DILocation(line: 957, column: 37, scope: !3112)
!3128 = !DILocation(line: 957, column: 40, scope: !3112)
!3129 = !DILocation(line: 957, column: 46, scope: !3112)
!3130 = !DILocation(line: 957, column: 49, scope: !3112)
!3131 = !DILocation(line: 957, column: 44, scope: !3112)
!3132 = !DILocation(line: 957, column: 56, scope: !3112)
!3133 = !DILocation(line: 957, column: 34, scope: !3112)
!3134 = !DILocation(line: 958, column: 17, scope: !3112)
!3135 = !DILocation(line: 958, column: 20, scope: !3112)
!3136 = !DILocation(line: 958, column: 24, scope: !3112)
!3137 = !DILocation(line: 958, column: 35, scope: !3112)
!3138 = !DILocation(line: 958, column: 40, scope: !3112)
!3139 = !{!1985, !1306, i64 168}
!3140 = !DILocation(line: 958, column: 49, scope: !3112)
!3141 = !DILocation(line: 958, column: 47, scope: !3112)
!3142 = !DILocation(line: 956, column: 13, scope: !3113)
!3143 = !DILocation(line: 961, column: 17, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !2, line: 961, column: 17)
!3145 = distinct !DILexicalBlock(scope: !3112, file: !2, line: 959, column: 9)
!3146 = !DILocation(line: 961, column: 21, scope: !3144)
!3147 = !DILocation(line: 961, column: 32, scope: !3144)
!3148 = !DILocation(line: 961, column: 37, scope: !3144)
!3149 = !DILocation(line: 961, column: 47, scope: !3144)
!3150 = !DILocation(line: 961, column: 44, scope: !3144)
!3151 = !DILocation(line: 961, column: 17, scope: !3145)
!3152 = !DILocation(line: 963, column: 39, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3144, file: !2, line: 961, column: 58)
!3154 = !DILocation(line: 963, column: 44, scope: !3153)
!3155 = !DILocation(line: 963, column: 17, scope: !3153)
!3156 = !DILocation(line: 963, column: 21, scope: !3153)
!3157 = !DILocation(line: 963, column: 32, scope: !3153)
!3158 = !DILocation(line: 963, column: 37, scope: !3153)
!3159 = !DILocation(line: 965, column: 51, scope: !3153)
!3160 = !DILocation(line: 965, column: 17, scope: !3153)
!3161 = !DILocation(line: 969, column: 17, scope: !3153)
!3162 = !DILocation(line: 972, column: 19, scope: !3145)
!3163 = !DILocation(line: 972, column: 22, scope: !3145)
!3164 = !DILocation(line: 972, column: 29, scope: !3145)
!3165 = !DILocation(line: 972, column: 27, scope: !3145)
!3166 = !DILocation(line: 972, column: 17, scope: !3145)
!3167 = !DILocation(line: 974, column: 17, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3145, file: !2, line: 974, column: 17)
!3169 = !DILocation(line: 974, column: 24, scope: !3168)
!3170 = !DILocation(line: 974, column: 21, scope: !3168)
!3171 = !DILocation(line: 974, column: 17, scope: !3145)
!3172 = !DILocation(line: 976, column: 39, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3168, file: !2, line: 974, column: 34)
!3174 = !DILocation(line: 976, column: 17, scope: !3173)
!3175 = !DILocation(line: 976, column: 21, scope: !3173)
!3176 = !DILocation(line: 976, column: 32, scope: !3173)
!3177 = !DILocation(line: 976, column: 37, scope: !3173)
!3178 = !DILocation(line: 978, column: 51, scope: !3173)
!3179 = !DILocation(line: 978, column: 17, scope: !3173)
!3180 = !DILocation(line: 982, column: 17, scope: !3173)
!3181 = !DILocation(line: 985, column: 17, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3145, file: !2, line: 985, column: 17)
!3183 = !DILocation(line: 985, column: 17, scope: !3145)
!3184 = !DILocation(line: 986, column: 17, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3182, file: !2, line: 985, column: 22)
!3186 = !DILocation(line: 987, column: 13, scope: !3185)
!3187 = !DILocation(line: 989, column: 31, scope: !3145)
!3188 = !DILocation(line: 989, column: 43, scope: !3145)
!3189 = !DILocation(line: 989, column: 47, scope: !3145)
!3190 = !DILocation(line: 989, column: 58, scope: !3145)
!3191 = !DILocation(line: 989, column: 63, scope: !3145)
!3192 = !DILocation(line: 989, column: 41, scope: !3145)
!3193 = !DILocation(line: 989, column: 18, scope: !3145)
!3194 = !DILocation(line: 991, column: 17, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3145, file: !2, line: 991, column: 17)
!3196 = !DILocation(line: 991, column: 24, scope: !3195)
!3197 = !DILocation(line: 991, column: 27, scope: !3195)
!3198 = !DILocation(line: 991, column: 34, scope: !3195)
!3199 = !DILocation(line: 991, column: 37, scope: !3195)
!3200 = !DILocation(line: 991, column: 45, scope: !3195)
!3201 = !DILocation(line: 991, column: 43, scope: !3195)
!3202 = !DILocation(line: 991, column: 31, scope: !3195)
!3203 = !DILocation(line: 991, column: 22, scope: !3195)
!3204 = !DILocation(line: 991, column: 17, scope: !3145)
!3205 = !DILocation(line: 992, column: 24, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3195, file: !2, line: 991, column: 51)
!3207 = !DILocation(line: 992, column: 27, scope: !3206)
!3208 = !DILocation(line: 992, column: 34, scope: !3206)
!3209 = !DILocation(line: 992, column: 37, scope: !3206)
!3210 = !DILocation(line: 992, column: 45, scope: !3206)
!3211 = !DILocation(line: 992, column: 43, scope: !3206)
!3212 = !DILocation(line: 992, column: 31, scope: !3206)
!3213 = !DILocation(line: 992, column: 22, scope: !3206)
!3214 = !DILocation(line: 993, column: 13, scope: !3206)
!3215 = !DILocation(line: 995, column: 32, scope: !3145)
!3216 = !DILocation(line: 995, column: 36, scope: !3145)
!3217 = !DILocation(line: 995, column: 47, scope: !3145)
!3218 = !DILocation(line: 995, column: 53, scope: !3145)
!3219 = !DILocation(line: 995, column: 56, scope: !3145)
!3220 = !DILocation(line: 995, column: 64, scope: !3145)
!3221 = !DILocation(line: 995, column: 62, scope: !3145)
!3222 = !DILocation(line: 995, column: 69, scope: !3145)
!3223 = !DILocation(line: 996, column: 31, scope: !3145)
!3224 = !DILocation(line: 996, column: 35, scope: !3145)
!3225 = !DILocation(line: 996, column: 46, scope: !3145)
!3226 = !DILocation(line: 996, column: 51, scope: !3145)
!3227 = !DILocation(line: 995, column: 17, scope: !3145)
!3228 = !DILocation(line: 995, column: 15, scope: !3145)
!3229 = !DILocation(line: 998, column: 17, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3145, file: !2, line: 998, column: 17)
!3231 = !DILocation(line: 998, column: 19, scope: !3230)
!3232 = !DILocation(line: 998, column: 17, scope: !3145)
!3233 = !DILocation(line: 999, column: 17, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3230, file: !2, line: 998, column: 33)
!3235 = !DILocation(line: 1002, column: 17, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3145, file: !2, line: 1002, column: 17)
!3237 = !DILocation(line: 1002, column: 22, scope: !3236)
!3238 = !DILocation(line: 1002, column: 19, scope: !3236)
!3239 = !DILocation(line: 1002, column: 17, scope: !3145)
!3240 = !DILocation(line: 1003, column: 51, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3236, file: !2, line: 1002, column: 28)
!3242 = !DILocation(line: 1006, column: 36, scope: !3241)
!3243 = !DILocation(line: 1006, column: 39, scope: !3241)
!3244 = !DILocation(line: 1003, column: 17, scope: !3241)
!3245 = !DILocation(line: 1007, column: 17, scope: !3241)
!3246 = !DILocation(line: 1010, column: 22, scope: !3145)
!3247 = !DILocation(line: 1010, column: 25, scope: !3145)
!3248 = !DILocation(line: 1010, column: 34, scope: !3145)
!3249 = !DILocation(line: 1010, column: 37, scope: !3145)
!3250 = !DILocation(line: 1010, column: 43, scope: !3145)
!3251 = !DILocation(line: 1010, column: 41, scope: !3145)
!3252 = !DILocation(line: 1010, column: 31, scope: !3145)
!3253 = !DILocation(line: 1010, column: 13, scope: !3145)
!3254 = !DILocation(line: 1010, column: 16, scope: !3145)
!3255 = !DILocation(line: 1010, column: 20, scope: !3145)
!3256 = !DILocation(line: 1011, column: 23, scope: !3145)
!3257 = !DILocation(line: 1011, column: 26, scope: !3145)
!3258 = !DILocation(line: 1011, column: 34, scope: !3145)
!3259 = !DILocation(line: 1011, column: 32, scope: !3145)
!3260 = !DILocation(line: 1011, column: 40, scope: !3145)
!3261 = !DILocation(line: 1011, column: 38, scope: !3145)
!3262 = !DILocation(line: 1011, column: 13, scope: !3145)
!3263 = !DILocation(line: 1011, column: 16, scope: !3145)
!3264 = !DILocation(line: 1011, column: 21, scope: !3145)
!3265 = !DILocation(line: 1012, column: 21, scope: !3145)
!3266 = !DILocation(line: 1012, column: 24, scope: !3145)
!3267 = !DILocation(line: 1012, column: 19, scope: !3145)
!3268 = !DILocation(line: 1015, column: 17, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3145, file: !2, line: 1015, column: 17)
!3270 = !DILocation(line: 1015, column: 17, scope: !3145)
!3271 = !DILocation(line: 1016, column: 30, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3269, file: !2, line: 1015, column: 23)
!3273 = !DILocation(line: 1016, column: 17, scope: !3272)
!3274 = !DILocation(line: 1016, column: 23, scope: !3272)
!3275 = !DILocation(line: 1016, column: 28, scope: !3272)
!3276 = !DILocation(line: 1017, column: 13, scope: !3272)
!3277 = !DILocation(line: 1019, column: 9, scope: !3145)
!3278 = !DILocation(line: 1021, column: 33, scope: !3113)
!3279 = !DILocation(line: 1021, column: 36, scope: !3113)
!3280 = !DILocation(line: 1021, column: 41, scope: !3113)
!3281 = !DILocation(line: 1021, column: 44, scope: !3113)
!3282 = !DILocation(line: 1021, column: 51, scope: !3113)
!3283 = !DILocation(line: 1021, column: 54, scope: !3113)
!3284 = !DILocation(line: 1021, column: 49, scope: !3113)
!3285 = !DILocation(line: 1021, column: 59, scope: !3113)
!3286 = !DILocation(line: 1021, column: 14, scope: !3113)
!3287 = !DILocation(line: 1021, column: 12, scope: !3113)
!3288 = !DILocation(line: 1023, column: 13, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3113, file: !2, line: 1023, column: 13)
!3290 = !DILocation(line: 1023, column: 16, scope: !3289)
!3291 = !DILocation(line: 1023, column: 13, scope: !3113)
!3292 = !DILocation(line: 1027, column: 17, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3294, file: !2, line: 1027, column: 17)
!3294 = distinct !DILexicalBlock(scope: !3289, file: !2, line: 1023, column: 21)
!3295 = !DILocation(line: 1027, column: 21, scope: !3293)
!3296 = !DILocation(line: 1027, column: 32, scope: !3293)
!3297 = !DILocation(line: 1027, column: 37, scope: !3293)
!3298 = !DILocation(line: 1027, column: 47, scope: !3293)
!3299 = !DILocation(line: 1027, column: 44, scope: !3293)
!3300 = !DILocation(line: 1027, column: 17, scope: !3294)
!3301 = !DILocation(line: 1029, column: 39, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3293, file: !2, line: 1027, column: 58)
!3303 = !DILocation(line: 1029, column: 44, scope: !3302)
!3304 = !DILocation(line: 1029, column: 17, scope: !3302)
!3305 = !DILocation(line: 1029, column: 21, scope: !3302)
!3306 = !DILocation(line: 1029, column: 32, scope: !3302)
!3307 = !DILocation(line: 1029, column: 37, scope: !3302)
!3308 = !DILocation(line: 1031, column: 51, scope: !3302)
!3309 = !DILocation(line: 1031, column: 17, scope: !3302)
!3310 = !DILocation(line: 1035, column: 17, scope: !3302)
!3311 = !DILocation(line: 1038, column: 19, scope: !3294)
!3312 = !DILocation(line: 1038, column: 22, scope: !3294)
!3313 = !DILocation(line: 1038, column: 29, scope: !3294)
!3314 = !DILocation(line: 1038, column: 32, scope: !3294)
!3315 = !DILocation(line: 1038, column: 27, scope: !3294)
!3316 = !DILocation(line: 1038, column: 17, scope: !3294)
!3317 = !DILocation(line: 1040, column: 17, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3294, file: !2, line: 1040, column: 17)
!3319 = !DILocation(line: 1040, column: 24, scope: !3318)
!3320 = !DILocation(line: 1040, column: 21, scope: !3318)
!3321 = !DILocation(line: 1040, column: 17, scope: !3294)
!3322 = !DILocation(line: 1042, column: 39, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3318, file: !2, line: 1040, column: 34)
!3324 = !DILocation(line: 1042, column: 17, scope: !3323)
!3325 = !DILocation(line: 1042, column: 21, scope: !3323)
!3326 = !DILocation(line: 1042, column: 32, scope: !3323)
!3327 = !DILocation(line: 1042, column: 37, scope: !3323)
!3328 = !DILocation(line: 1044, column: 51, scope: !3323)
!3329 = !DILocation(line: 1044, column: 17, scope: !3323)
!3330 = !DILocation(line: 1048, column: 17, scope: !3323)
!3331 = !DILocation(line: 1051, column: 17, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3294, file: !2, line: 1051, column: 17)
!3333 = !DILocation(line: 1051, column: 17, scope: !3294)
!3334 = !DILocation(line: 1052, column: 17, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3332, file: !2, line: 1051, column: 22)
!3336 = !DILocation(line: 1053, column: 13, scope: !3335)
!3337 = !DILocation(line: 1055, column: 31, scope: !3294)
!3338 = !DILocation(line: 1055, column: 43, scope: !3294)
!3339 = !DILocation(line: 1055, column: 47, scope: !3294)
!3340 = !DILocation(line: 1055, column: 58, scope: !3294)
!3341 = !DILocation(line: 1055, column: 63, scope: !3294)
!3342 = !DILocation(line: 1055, column: 41, scope: !3294)
!3343 = !DILocation(line: 1055, column: 18, scope: !3294)
!3344 = !DILocation(line: 1057, column: 17, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3294, file: !2, line: 1057, column: 17)
!3346 = !DILocation(line: 1057, column: 24, scope: !3345)
!3347 = !DILocation(line: 1057, column: 27, scope: !3345)
!3348 = !DILocation(line: 1057, column: 34, scope: !3345)
!3349 = !DILocation(line: 1057, column: 37, scope: !3345)
!3350 = !DILocation(line: 1057, column: 45, scope: !3345)
!3351 = !DILocation(line: 1057, column: 43, scope: !3345)
!3352 = !DILocation(line: 1057, column: 31, scope: !3345)
!3353 = !DILocation(line: 1057, column: 22, scope: !3345)
!3354 = !DILocation(line: 1057, column: 17, scope: !3294)
!3355 = !DILocation(line: 1058, column: 24, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3345, file: !2, line: 1057, column: 51)
!3357 = !DILocation(line: 1058, column: 27, scope: !3356)
!3358 = !DILocation(line: 1058, column: 34, scope: !3356)
!3359 = !DILocation(line: 1058, column: 37, scope: !3356)
!3360 = !DILocation(line: 1058, column: 45, scope: !3356)
!3361 = !DILocation(line: 1058, column: 43, scope: !3356)
!3362 = !DILocation(line: 1058, column: 31, scope: !3356)
!3363 = !DILocation(line: 1058, column: 22, scope: !3356)
!3364 = !DILocation(line: 1059, column: 13, scope: !3356)
!3365 = !DILocation(line: 1061, column: 32, scope: !3294)
!3366 = !DILocation(line: 1061, column: 36, scope: !3294)
!3367 = !DILocation(line: 1061, column: 47, scope: !3294)
!3368 = !DILocation(line: 1061, column: 53, scope: !3294)
!3369 = !DILocation(line: 1061, column: 56, scope: !3294)
!3370 = !DILocation(line: 1061, column: 64, scope: !3294)
!3371 = !DILocation(line: 1061, column: 62, scope: !3294)
!3372 = !DILocation(line: 1061, column: 69, scope: !3294)
!3373 = !DILocation(line: 1062, column: 31, scope: !3294)
!3374 = !DILocation(line: 1062, column: 35, scope: !3294)
!3375 = !DILocation(line: 1062, column: 46, scope: !3294)
!3376 = !DILocation(line: 1062, column: 51, scope: !3294)
!3377 = !DILocation(line: 1061, column: 17, scope: !3294)
!3378 = !DILocation(line: 1061, column: 15, scope: !3294)
!3379 = !DILocation(line: 1064, column: 17, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3294, file: !2, line: 1064, column: 17)
!3381 = !DILocation(line: 1064, column: 19, scope: !3380)
!3382 = !DILocation(line: 1064, column: 17, scope: !3294)
!3383 = !DILocation(line: 1065, column: 17, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3380, file: !2, line: 1064, column: 33)
!3385 = !DILocation(line: 1068, column: 17, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3294, file: !2, line: 1068, column: 17)
!3387 = !DILocation(line: 1068, column: 22, scope: !3386)
!3388 = !DILocation(line: 1068, column: 19, scope: !3386)
!3389 = !DILocation(line: 1068, column: 17, scope: !3294)
!3390 = !DILocation(line: 1069, column: 51, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3386, file: !2, line: 1068, column: 28)
!3392 = !DILocation(line: 1072, column: 36, scope: !3391)
!3393 = !DILocation(line: 1072, column: 39, scope: !3391)
!3394 = !DILocation(line: 1069, column: 17, scope: !3391)
!3395 = !DILocation(line: 1073, column: 17, scope: !3391)
!3396 = !DILocation(line: 1076, column: 22, scope: !3294)
!3397 = !DILocation(line: 1076, column: 25, scope: !3294)
!3398 = !DILocation(line: 1076, column: 33, scope: !3294)
!3399 = !DILocation(line: 1076, column: 31, scope: !3294)
!3400 = !DILocation(line: 1076, column: 13, scope: !3294)
!3401 = !DILocation(line: 1076, column: 16, scope: !3294)
!3402 = !DILocation(line: 1076, column: 20, scope: !3294)
!3403 = !DILocation(line: 1077, column: 23, scope: !3294)
!3404 = !DILocation(line: 1077, column: 26, scope: !3294)
!3405 = !DILocation(line: 1077, column: 32, scope: !3294)
!3406 = !DILocation(line: 1077, column: 30, scope: !3294)
!3407 = !DILocation(line: 1077, column: 13, scope: !3294)
!3408 = !DILocation(line: 1077, column: 16, scope: !3294)
!3409 = !DILocation(line: 1077, column: 21, scope: !3294)
!3410 = !DILocation(line: 1078, column: 21, scope: !3294)
!3411 = !DILocation(line: 1078, column: 24, scope: !3294)
!3412 = !DILocation(line: 1078, column: 19, scope: !3294)
!3413 = !DILocation(line: 1080, column: 13, scope: !3294)
!3414 = distinct !{!3414, !3415, !3416}
!3415 = !DILocation(line: 954, column: 5, scope: !3115)
!3416 = !DILocation(line: 1156, column: 5, scope: !3115)
!3417 = !DILocation(line: 1083, column: 13, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3113, file: !2, line: 1083, column: 13)
!3419 = !DILocation(line: 1083, column: 16, scope: !3418)
!3420 = !DILocation(line: 1083, column: 43, scope: !3418)
!3421 = !DILocation(line: 1083, column: 46, scope: !3418)
!3422 = !DILocation(line: 1083, column: 49, scope: !3418)
!3423 = !DILocation(line: 1083, column: 13, scope: !3113)
!3424 = !DILocation(line: 1088, column: 20, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3426, file: !2, line: 1088, column: 13)
!3426 = distinct !DILexicalBlock(scope: !3418, file: !2, line: 1083, column: 77)
!3427 = !DILocation(line: 1088, column: 18, scope: !3425)
!3428 = !DILocation(line: 1088, column: 25, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3425, file: !2, line: 1088, column: 13)
!3430 = !DILocation(line: 1088, column: 29, scope: !3429)
!3431 = !DILocation(line: 1088, column: 27, scope: !3429)
!3432 = !DILocation(line: 1088, column: 13, scope: !3425)
!3433 = !DILocation(line: 1089, column: 22, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3429, file: !2, line: 1088, column: 43)
!3435 = !DILocation(line: 1089, column: 25, scope: !3434)
!3436 = !DILocation(line: 1089, column: 29, scope: !3434)
!3437 = !DILocation(line: 1089, column: 20, scope: !3434)
!3438 = !DILocation(line: 1090, column: 21, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3434, file: !2, line: 1090, column: 21)
!3440 = !DILocation(line: 1090, column: 24, scope: !3439)
!3441 = !DILocation(line: 1090, column: 21, scope: !3434)
!3442 = !DILocation(line: 1091, column: 21, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3439, file: !2, line: 1090, column: 31)
!3444 = !DILocation(line: 1091, column: 25, scope: !3443)
!3445 = !DILocation(line: 1091, column: 36, scope: !3443)
!3446 = !DILocation(line: 1091, column: 40, scope: !3443)
!3447 = !DILocation(line: 1092, column: 17, scope: !3443)
!3448 = !DILocation(line: 1093, column: 13, scope: !3434)
!3449 = !DILocation(line: 1088, column: 39, scope: !3429)
!3450 = !DILocation(line: 1088, column: 13, scope: !3429)
!3451 = distinct !{!3451, !3432, !3452, !2096}
!3452 = !DILocation(line: 1093, column: 13, scope: !3425)
!3453 = !DILocation(line: 1095, column: 23, scope: !3426)
!3454 = !DILocation(line: 1095, column: 13, scope: !3426)
!3455 = !DILocation(line: 1095, column: 16, scope: !3426)
!3456 = !DILocation(line: 1095, column: 20, scope: !3426)
!3457 = !DILocation(line: 1096, column: 24, scope: !3426)
!3458 = !DILocation(line: 1096, column: 13, scope: !3426)
!3459 = !DILocation(line: 1096, column: 21, scope: !3426)
!3460 = !DILocation(line: 1097, column: 13, scope: !3426)
!3461 = !DILocation(line: 1097, column: 21, scope: !3426)
!3462 = !DILocation(line: 1099, column: 17, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3426, file: !2, line: 1099, column: 17)
!3464 = !DILocation(line: 1099, column: 20, scope: !3463)
!3465 = !DILocation(line: 1099, column: 17, scope: !3426)
!3466 = !DILocation(line: 1100, column: 22, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3463, file: !2, line: 1099, column: 48)
!3468 = !DILocation(line: 1100, column: 25, scope: !3467)
!3469 = !DILocation(line: 1100, column: 19, scope: !3467)
!3470 = !DILocation(line: 1101, column: 20, scope: !3467)
!3471 = !DILocation(line: 1103, column: 13, scope: !3467)
!3472 = !DILocation(line: 1104, column: 21, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3463, file: !2, line: 1103, column: 20)
!3474 = !DILocation(line: 1104, column: 24, scope: !3473)
!3475 = !DILocation(line: 1104, column: 19, scope: !3473)
!3476 = !DILocation(line: 1105, column: 20, scope: !3473)
!3477 = !DILocation(line: 1113, column: 13, scope: !3426)
!3478 = !DILocation(line: 1113, column: 18, scope: !3426)
!3479 = !DILocation(line: 1116, column: 13, scope: !3426)
!3480 = !DILocation(line: 1116, column: 16, scope: !3426)
!3481 = !DILocation(line: 1116, column: 20, scope: !3426)
!3482 = !DILocation(line: 1116, column: 28, scope: !3426)
!3483 = !DILocation(line: 1116, column: 33, scope: !3426)
!3484 = !DILocation(line: 1123, column: 41, scope: !3426)
!3485 = !DILocation(line: 1123, column: 44, scope: !3426)
!3486 = !DILocation(line: 1123, column: 50, scope: !3426)
!3487 = !DILocation(line: 1123, column: 48, scope: !3426)
!3488 = !DILocation(line: 1123, column: 59, scope: !3426)
!3489 = !DILocation(line: 1123, column: 62, scope: !3426)
!3490 = !DILocation(line: 1123, column: 68, scope: !3426)
!3491 = !DILocation(line: 1124, column: 41, scope: !3426)
!3492 = !DILocation(line: 1124, column: 44, scope: !3426)
!3493 = !DILocation(line: 1124, column: 50, scope: !3426)
!3494 = !DILocation(line: 1124, column: 48, scope: !3426)
!3495 = !DILocation(line: 1124, column: 60, scope: !3426)
!3496 = !DILocation(line: 1124, column: 58, scope: !3426)
!3497 = !DILocation(line: 1124, column: 62, scope: !3426)
!3498 = !DILocation(line: 1123, column: 17, scope: !3426)
!3499 = !DILocation(line: 1123, column: 15, scope: !3426)
!3500 = !DILocation(line: 1126, column: 17, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3426, file: !2, line: 1126, column: 17)
!3502 = !DILocation(line: 1126, column: 19, scope: !3501)
!3503 = !DILocation(line: 1126, column: 17, scope: !3426)
!3504 = !DILocation(line: 1127, column: 51, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3501, file: !2, line: 1126, column: 28)
!3506 = !DILocation(line: 1130, column: 36, scope: !3505)
!3507 = !DILocation(line: 1130, column: 39, scope: !3505)
!3508 = !DILocation(line: 1130, column: 45, scope: !3505)
!3509 = !DILocation(line: 1130, column: 43, scope: !3505)
!3510 = !DILocation(line: 1130, column: 55, scope: !3505)
!3511 = !DILocation(line: 1130, column: 53, scope: !3505)
!3512 = !DILocation(line: 1130, column: 58, scope: !3505)
!3513 = !DILocation(line: 1127, column: 17, scope: !3505)
!3514 = !DILocation(line: 1131, column: 17, scope: !3505)
!3515 = !DILocation(line: 1136, column: 13, scope: !3426)
!3516 = !DILocation(line: 1136, column: 18, scope: !3426)
!3517 = !DILocation(line: 1137, column: 13, scope: !3426)
!3518 = !DILocation(line: 1137, column: 16, scope: !3426)
!3519 = !DILocation(line: 1137, column: 20, scope: !3426)
!3520 = !DILocation(line: 1137, column: 28, scope: !3426)
!3521 = !DILocation(line: 1137, column: 33, scope: !3426)
!3522 = !DILocation(line: 1139, column: 23, scope: !3426)
!3523 = !DILocation(line: 1139, column: 27, scope: !3426)
!3524 = !DILocation(line: 1139, column: 30, scope: !3426)
!3525 = !DILocation(line: 1139, column: 25, scope: !3426)
!3526 = !DILocation(line: 1139, column: 36, scope: !3426)
!3527 = !DILocation(line: 1139, column: 39, scope: !3426)
!3528 = !DILocation(line: 1139, column: 34, scope: !3426)
!3529 = !DILocation(line: 1139, column: 45, scope: !3426)
!3530 = !DILocation(line: 1139, column: 43, scope: !3426)
!3531 = !DILocation(line: 1139, column: 55, scope: !3426)
!3532 = !DILocation(line: 1139, column: 53, scope: !3426)
!3533 = !DILocation(line: 1139, column: 13, scope: !3426)
!3534 = !DILocation(line: 1139, column: 21, scope: !3426)
!3535 = !DILocation(line: 1143, column: 9, scope: !3426)
!3536 = !DILocation(line: 1145, column: 16, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3113, file: !2, line: 1145, column: 9)
!3538 = !DILocation(line: 1145, column: 14, scope: !3537)
!3539 = !DILocation(line: 1145, column: 21, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3537, file: !2, line: 1145, column: 9)
!3541 = !DILocation(line: 1145, column: 25, scope: !3540)
!3542 = !DILocation(line: 1145, column: 23, scope: !3540)
!3543 = !DILocation(line: 1145, column: 9, scope: !3537)
!3544 = !DILocation(line: 1146, column: 18, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3540, file: !2, line: 1145, column: 39)
!3546 = !DILocation(line: 1146, column: 21, scope: !3545)
!3547 = !DILocation(line: 1146, column: 25, scope: !3545)
!3548 = !DILocation(line: 1146, column: 16, scope: !3545)
!3549 = !DILocation(line: 1147, column: 17, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3545, file: !2, line: 1147, column: 17)
!3551 = !DILocation(line: 1147, column: 20, scope: !3550)
!3552 = !DILocation(line: 1147, column: 17, scope: !3545)
!3553 = !DILocation(line: 1148, column: 17, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3550, file: !2, line: 1147, column: 27)
!3555 = !DILocation(line: 1148, column: 21, scope: !3554)
!3556 = !DILocation(line: 1148, column: 32, scope: !3554)
!3557 = !DILocation(line: 1148, column: 36, scope: !3554)
!3558 = !DILocation(line: 1149, column: 13, scope: !3554)
!3559 = !DILocation(line: 1150, column: 9, scope: !3545)
!3560 = !DILocation(line: 1145, column: 35, scope: !3540)
!3561 = !DILocation(line: 1145, column: 9, scope: !3540)
!3562 = distinct !{!3562, !3543, !3563, !2096}
!3563 = !DILocation(line: 1150, column: 9, scope: !3537)
!3564 = !DILocation(line: 1152, column: 19, scope: !3113)
!3565 = !DILocation(line: 1152, column: 9, scope: !3113)
!3566 = !DILocation(line: 1152, column: 12, scope: !3113)
!3567 = !DILocation(line: 1152, column: 16, scope: !3113)
!3568 = !DILocation(line: 1153, column: 26, scope: !3113)
!3569 = !DILocation(line: 1153, column: 36, scope: !3113)
!3570 = !DILocation(line: 1153, column: 34, scope: !3113)
!3571 = !DILocation(line: 1153, column: 9, scope: !3113)
!3572 = !DILocation(line: 1153, column: 14, scope: !3113)
!3573 = !DILocation(line: 1153, column: 24, scope: !3113)
!3574 = !DILocation(line: 1155, column: 9, scope: !3113)
!3575 = !DILocation(line: 1158, column: 27, scope: !3026)
!3576 = !DILocation(line: 1158, column: 31, scope: !3026)
!3577 = !DILocation(line: 1158, column: 12, scope: !3026)
!3578 = !DILocation(line: 1158, column: 10, scope: !3026)
!3579 = !DILocation(line: 1159, column: 9, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3026, file: !2, line: 1159, column: 9)
!3581 = !DILocation(line: 1159, column: 14, scope: !3580)
!3582 = !DILocation(line: 1159, column: 9, scope: !3026)
!3583 = !DILocation(line: 1160, column: 9, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3580, file: !2, line: 1159, column: 23)
!3585 = !DILocation(line: 1163, column: 30, scope: !3026)
!3586 = !DILocation(line: 1163, column: 34, scope: !3026)
!3587 = !DILocation(line: 1163, column: 45, scope: !3026)
!3588 = !DILocation(line: 1163, column: 48, scope: !3026)
!3589 = !DILocation(line: 1163, column: 54, scope: !3026)
!3590 = !DILocation(line: 1163, column: 52, scope: !3026)
!3591 = !DILocation(line: 1163, column: 18, scope: !3026)
!3592 = !DILocation(line: 1163, column: 5, scope: !3026)
!3593 = !DILocation(line: 1163, column: 11, scope: !3026)
!3594 = !DILocation(line: 1163, column: 16, scope: !3026)
!3595 = !DILocation(line: 1164, column: 9, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3026, file: !2, line: 1164, column: 9)
!3597 = !DILocation(line: 1164, column: 15, scope: !3596)
!3598 = !DILocation(line: 1164, column: 20, scope: !3596)
!3599 = !DILocation(line: 1164, column: 9, scope: !3026)
!3600 = !DILocation(line: 1165, column: 9, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3596, file: !2, line: 1164, column: 29)
!3602 = !DILocation(line: 1168, column: 11, scope: !3026)
!3603 = !DILocation(line: 1168, column: 14, scope: !3026)
!3604 = !DILocation(line: 1168, column: 20, scope: !3026)
!3605 = !DILocation(line: 1168, column: 18, scope: !3026)
!3606 = !DILocation(line: 1168, column: 9, scope: !3026)
!3607 = !DILocation(line: 1169, column: 5, scope: !3026)
!3608 = !DILocation(line: 1170, column: 17, scope: !3026)
!3609 = !DILocation(line: 1170, column: 5, scope: !3026)
!3610 = !DILocation(line: 1170, column: 11, scope: !3026)
!3611 = !DILocation(line: 1170, column: 15, scope: !3026)
!3612 = !DILocation(line: 1172, column: 12, scope: !3026)
!3613 = !DILocation(line: 1172, column: 5, scope: !3026)
!3614 = !DILocation(line: 1173, column: 1, scope: !3026)
!3615 = distinct !DISubprogram(name: "ngx_stream_lua_capture_error_log", scope: !2, file: !2, line: 1177, type: !606, scopeLine: 1179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !3616)
!3616 = !{!3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625}
!3617 = !DILocalVariable(name: "cf", arg: 1, scope: !3615, file: !2, line: 1177, type: !114)
!3618 = !DILocalVariable(name: "cmd", arg: 2, scope: !3615, file: !2, line: 1177, type: !598)
!3619 = !DILocalVariable(name: "conf", arg: 3, scope: !3615, file: !2, line: 1178, type: !128)
!3620 = !DILocalVariable(name: "value", scope: !3615, file: !2, line: 1183, type: !714)
!3621 = !DILocalVariable(name: "size", scope: !3615, file: !2, line: 1184, type: !406)
!3622 = !DILocalVariable(name: "data", scope: !3615, file: !2, line: 1185, type: !150)
!3623 = !DILocalVariable(name: "cycle", scope: !3615, file: !2, line: 1186, type: !318)
!3624 = !DILocalVariable(name: "lmcf", scope: !3615, file: !2, line: 1188, type: !1123)
!3625 = !DILocalVariable(name: "ringbuf", scope: !3615, file: !2, line: 1189, type: !1167)
!3626 = !DILocation(line: 1177, column: 46, scope: !3615)
!3627 = !DILocation(line: 1177, column: 65, scope: !3615)
!3628 = !DILocation(line: 1178, column: 11, scope: !3615)
!3629 = !DILocation(line: 1183, column: 5, scope: !3615)
!3630 = !DILocation(line: 1183, column: 36, scope: !3615)
!3631 = !DILocation(line: 1184, column: 5, scope: !3615)
!3632 = !DILocation(line: 1184, column: 36, scope: !3615)
!3633 = !DILocation(line: 1185, column: 5, scope: !3615)
!3634 = !DILocation(line: 1185, column: 36, scope: !3615)
!3635 = !DILocation(line: 1186, column: 5, scope: !3615)
!3636 = !DILocation(line: 1186, column: 36, scope: !3615)
!3637 = !DILocation(line: 1188, column: 5, scope: !3615)
!3638 = !DILocation(line: 1188, column: 44, scope: !3615)
!3639 = !DILocation(line: 1188, column: 51, scope: !3615)
!3640 = !DILocation(line: 1189, column: 5, scope: !3615)
!3641 = !DILocation(line: 1189, column: 44, scope: !3615)
!3642 = !DILocation(line: 1191, column: 13, scope: !3615)
!3643 = !DILocation(line: 1191, column: 17, scope: !3615)
!3644 = !DILocation(line: 1191, column: 23, scope: !3615)
!3645 = !DILocation(line: 1191, column: 11, scope: !3615)
!3646 = !DILocation(line: 1192, column: 13, scope: !3615)
!3647 = !DILocation(line: 1192, column: 17, scope: !3615)
!3648 = !DILocation(line: 1192, column: 11, scope: !3615)
!3649 = !DILocation(line: 1194, column: 9, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3615, file: !2, line: 1194, column: 9)
!3651 = !DILocation(line: 1194, column: 15, scope: !3650)
!3652 = !DILocation(line: 1194, column: 9, scope: !3615)
!3653 = !DILocation(line: 1195, column: 9, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3650, file: !2, line: 1194, column: 37)
!3655 = !DILocation(line: 1198, column: 9, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3615, file: !2, line: 1198, column: 9)
!3657 = !DILocation(line: 1198, column: 18, scope: !3656)
!3658 = !DILocation(line: 1198, column: 22, scope: !3656)
!3659 = !DILocation(line: 1198, column: 9, scope: !3615)
!3660 = !DILocation(line: 1199, column: 43, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3656, file: !2, line: 1198, column: 28)
!3662 = !DILocation(line: 1201, column: 29, scope: !3661)
!3663 = !DILocation(line: 1199, column: 9, scope: !3661)
!3664 = !DILocation(line: 1202, column: 9, scope: !3661)
!3665 = !DILocation(line: 1205, column: 28, scope: !3615)
!3666 = !DILocation(line: 1205, column: 12, scope: !3615)
!3667 = !DILocation(line: 1205, column: 10, scope: !3615)
!3668 = !DILocation(line: 1207, column: 9, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3615, file: !2, line: 1207, column: 9)
!3670 = !DILocation(line: 1207, column: 14, scope: !3669)
!3671 = !DILocation(line: 1207, column: 9, scope: !3615)
!3672 = !DILocation(line: 1208, column: 43, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3669, file: !2, line: 1207, column: 35)
!3674 = !DILocation(line: 1210, column: 51, scope: !3673)
!3675 = !DILocation(line: 1208, column: 9, scope: !3673)
!3676 = !DILocation(line: 1212, column: 9, scope: !3673)
!3677 = !DILocation(line: 1215, column: 9, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3615, file: !2, line: 1215, column: 9)
!3679 = !DILocation(line: 1215, column: 16, scope: !3678)
!3680 = !{!3681, !1280, i64 624}
!3681 = !{!"ngx_cycle_s", !1280, i64 0, !1280, i64 8, !1280, i64 16, !3682, i64 24, !1306, i64 104, !1280, i64 112, !1280, i64 120, !1306, i64 128, !1280, i64 136, !1306, i64 144, !1306, i64 152, !3683, i64 160, !1306, i64 176, !1342, i64 184, !1342, i64 224, !1342, i64 264, !3684, i64 304, !3685, i64 328, !3686, i64 368, !3686, i64 424, !1306, i64 480, !1306, i64 488, !1280, i64 496, !1280, i64 504, !1280, i64 512, !1280, i64 520, !1305, i64 528, !1305, i64 544, !1305, i64 560, !1305, i64 576, !1305, i64 592, !1305, i64 608, !1280, i64 624, !1280, i64 632, !1307, i64 640}
!3682 = !{!"ngx_log_s", !1306, i64 0, !1280, i64 8, !1306, i64 16, !1306, i64 24, !1280, i64 32, !1280, i64 40, !1280, i64 48, !1280, i64 56, !1280, i64 64, !1280, i64 72}
!3683 = !{!"ngx_queue_s", !1280, i64 0, !1280, i64 8}
!3684 = !{!"ngx_rbtree_s", !1280, i64 0, !1280, i64 8, !1280, i64 16}
!3685 = !{!"ngx_rbtree_node_s", !1306, i64 0, !1280, i64 8, !1280, i64 16, !1280, i64 24, !1281, i64 32, !1281, i64 33}
!3686 = !{!"", !1280, i64 0, !3687, i64 8, !1306, i64 32, !1306, i64 40, !1280, i64 48}
!3687 = !{!"ngx_list_part_s", !1280, i64 0, !1306, i64 8, !1280, i64 16}
!3688 = !DILocation(line: 1215, column: 9, scope: !3615)
!3689 = !DILocation(line: 1216, column: 9, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3678, file: !2, line: 1215, column: 45)
!3691 = !DILocation(line: 1220, column: 26, scope: !3615)
!3692 = !DILocation(line: 1220, column: 30, scope: !3615)
!3693 = !DILocation(line: 1220, column: 15, scope: !3615)
!3694 = !DILocation(line: 1219, column: 13, scope: !3615)
!3695 = !DILocation(line: 1221, column: 9, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3615, file: !2, line: 1221, column: 9)
!3697 = !DILocation(line: 1221, column: 17, scope: !3696)
!3698 = !DILocation(line: 1221, column: 9, scope: !3615)
!3699 = !DILocation(line: 1222, column: 9, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3696, file: !2, line: 1221, column: 26)
!3701 = !DILocation(line: 1225, column: 23, scope: !3615)
!3702 = !DILocation(line: 1225, column: 27, scope: !3615)
!3703 = !DILocation(line: 1225, column: 33, scope: !3615)
!3704 = !DILocation(line: 1225, column: 12, scope: !3615)
!3705 = !DILocation(line: 1225, column: 10, scope: !3615)
!3706 = !DILocation(line: 1226, column: 9, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3615, file: !2, line: 1226, column: 9)
!3708 = !DILocation(line: 1226, column: 14, scope: !3707)
!3709 = !DILocation(line: 1226, column: 9, scope: !3615)
!3710 = !DILocation(line: 1227, column: 9, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3707, file: !2, line: 1226, column: 23)
!3712 = !DILocation(line: 1230, column: 37, scope: !3615)
!3713 = !DILocation(line: 1230, column: 46, scope: !3615)
!3714 = !DILocation(line: 1230, column: 52, scope: !3615)
!3715 = !DILocation(line: 1230, column: 5, scope: !3615)
!3716 = !DILocation(line: 1232, column: 5, scope: !3615)
!3717 = !DILocation(line: 1232, column: 11, scope: !3615)
!3718 = !DILocation(line: 1232, column: 32, scope: !3615)
!3719 = !DILocation(line: 1233, column: 5, scope: !3615)
!3720 = !DILocation(line: 1233, column: 12, scope: !3615)
!3721 = !DILocation(line: 1233, column: 40, scope: !3615)
!3722 = !DILocation(line: 1235, column: 39, scope: !3615)
!3723 = !DILocation(line: 1235, column: 5, scope: !3615)
!3724 = !DILocation(line: 1235, column: 12, scope: !3615)
!3725 = !DILocation(line: 1235, column: 37, scope: !3615)
!3726 = !{!3681, !1280, i64 632}
!3727 = !DILocation(line: 1237, column: 5, scope: !3615)
!3728 = !DILocation(line: 1239, column: 1, scope: !3615)
!3729 = !DISubprogram(name: "ngx_stream_lua_log_ringbuf_init", scope: !1169, file: !1169, line: 28, type: !3730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{null, !1167, !128, !136}
!3732 = distinct !DISubprogram(name: "ngx_stream_lua_add_variable", scope: !2, file: !2, line: 1287, type: !606, scopeLine: 1289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !3733)
!3733 = !{!3734, !3735, !3736, !3737, !3756, !3757}
!3734 = !DILocalVariable(name: "cf", arg: 1, scope: !3732, file: !2, line: 1287, type: !114)
!3735 = !DILocalVariable(name: "cmd", arg: 2, scope: !3732, file: !2, line: 1287, type: !598)
!3736 = !DILocalVariable(name: "conf", arg: 3, scope: !3732, file: !2, line: 1288, type: !128)
!3737 = !DILocalVariable(name: "var", scope: !3732, file: !2, line: 1290, type: !3738)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_variable_t", file: !1081, line: 21, baseType: !3740)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_stream_variable_s", file: !1081, line: 37, size: 448, elements: !3741)
!3741 = !{!3742, !3743, !3748, !3753, !3754, !3755}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3740, file: !1081, line: 38, baseType: !194, size: 128)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "set_handler", scope: !3740, file: !1081, line: 39, baseType: !3744, size: 64, offset: 128)
!3744 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_set_variable_pt", file: !1081, line: 23, baseType: !3745)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{null, !752, !1079, !132}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "get_handler", scope: !3740, file: !1081, line: 40, baseType: !3749, size: 64, offset: 192)
!3749 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_stream_get_variable_pt", file: !1081, line: 25, baseType: !3750)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!529, !752, !1079, !132}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3740, file: !1081, line: 41, baseType: !132, size: 64, offset: 256)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3740, file: !1081, line: 42, baseType: !130, size: 64, offset: 320)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3740, file: !1081, line: 43, baseType: !130, size: 64, offset: 384)
!3756 = !DILocalVariable(name: "value", scope: !3732, file: !2, line: 1291, type: !714)
!3757 = !DILocalVariable(name: "ret", scope: !3732, file: !2, line: 1292, type: !529)
!3758 = !DILocation(line: 1287, column: 41, scope: !3732)
!3759 = !DILocation(line: 1287, column: 60, scope: !3732)
!3760 = !DILocation(line: 1288, column: 11, scope: !3732)
!3761 = !DILocation(line: 1290, column: 5, scope: !3732)
!3762 = !DILocation(line: 1290, column: 38, scope: !3732)
!3763 = !DILocation(line: 1291, column: 5, scope: !3732)
!3764 = !DILocation(line: 1291, column: 38, scope: !3732)
!3765 = !DILocation(line: 1292, column: 5, scope: !3732)
!3766 = !DILocation(line: 1292, column: 38, scope: !3732)
!3767 = !DILocation(line: 1294, column: 13, scope: !3732)
!3768 = !DILocation(line: 1294, column: 17, scope: !3732)
!3769 = !DILocation(line: 1294, column: 23, scope: !3732)
!3770 = !DILocation(line: 1294, column: 11, scope: !3732)
!3771 = !DILocation(line: 1296, column: 9, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3732, file: !2, line: 1296, column: 9)
!3773 = !DILocation(line: 1296, column: 18, scope: !3772)
!3774 = !DILocation(line: 1296, column: 26, scope: !3772)
!3775 = !DILocation(line: 1296, column: 9, scope: !3732)
!3776 = !DILocation(line: 1297, column: 43, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3772, file: !2, line: 1296, column: 34)
!3778 = !DILocation(line: 1298, column: 61, scope: !3777)
!3779 = !DILocation(line: 1297, column: 9, scope: !3777)
!3780 = !DILocation(line: 1299, column: 9, scope: !3777)
!3781 = !DILocation(line: 1302, column: 5, scope: !3732)
!3782 = !DILocation(line: 1302, column: 14, scope: !3732)
!3783 = !DILocation(line: 1302, column: 17, scope: !3732)
!3784 = !DILocation(line: 1303, column: 5, scope: !3732)
!3785 = !DILocation(line: 1303, column: 14, scope: !3732)
!3786 = !DILocation(line: 1303, column: 18, scope: !3732)
!3787 = !DILocation(line: 1305, column: 35, scope: !3732)
!3788 = !DILocation(line: 1305, column: 39, scope: !3732)
!3789 = !DILocation(line: 1305, column: 45, scope: !3732)
!3790 = !DILocation(line: 1305, column: 11, scope: !3732)
!3791 = !DILocation(line: 1305, column: 9, scope: !3732)
!3792 = !DILocation(line: 1307, column: 9, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3732, file: !2, line: 1307, column: 9)
!3794 = !DILocation(line: 1307, column: 13, scope: !3793)
!3795 = !DILocation(line: 1307, column: 9, scope: !3732)
!3796 = !DILocation(line: 1308, column: 9, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3793, file: !2, line: 1307, column: 22)
!3798 = !DILocation(line: 1311, column: 9, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3732, file: !2, line: 1311, column: 9)
!3800 = !DILocation(line: 1311, column: 14, scope: !3799)
!3801 = !{!3802, !1280, i64 24}
!3802 = !{!"ngx_stream_variable_s", !1305, i64 0, !1280, i64 16, !1280, i64 24, !1306, i64 32, !1306, i64 40, !1306, i64 48}
!3803 = !DILocation(line: 1311, column: 26, scope: !3799)
!3804 = !DILocation(line: 1311, column: 9, scope: !3732)
!3805 = !DILocation(line: 1312, column: 9, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3799, file: !2, line: 1311, column: 35)
!3807 = !DILocation(line: 1312, column: 14, scope: !3806)
!3808 = !DILocation(line: 1312, column: 26, scope: !3806)
!3809 = !DILocation(line: 1313, column: 5, scope: !3806)
!3810 = !DILocation(line: 1315, column: 41, scope: !3732)
!3811 = !DILocation(line: 1315, column: 45, scope: !3732)
!3812 = !DILocation(line: 1315, column: 51, scope: !3732)
!3813 = !DILocation(line: 1315, column: 11, scope: !3732)
!3814 = !DILocation(line: 1315, column: 9, scope: !3732)
!3815 = !DILocation(line: 1316, column: 9, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3732, file: !2, line: 1316, column: 9)
!3817 = !DILocation(line: 1316, column: 13, scope: !3816)
!3818 = !DILocation(line: 1316, column: 9, scope: !3732)
!3819 = !DILocation(line: 1317, column: 9, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3816, file: !2, line: 1316, column: 27)
!3821 = !DILocation(line: 1320, column: 5, scope: !3732)
!3822 = !DILocation(line: 1321, column: 1, scope: !3732)
!3823 = !DISubprogram(name: "ngx_stream_add_variable", scope: !1081, file: !1081, line: 49, type: !3824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!3738, !114, !714, !130}
!3826 = distinct !DISubprogram(name: "ngx_stream_lua_undefined_var", scope: !2, file: !2, line: 1277, type: !3751, scopeLine: 1279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !3827)
!3827 = !{!3828, !3829, !3830}
!3828 = !DILocalVariable(name: "s", arg: 1, scope: !3826, file: !2, line: 1277, type: !752)
!3829 = !DILocalVariable(name: "v", arg: 2, scope: !3826, file: !2, line: 1278, type: !1079)
!3830 = !DILocalVariable(name: "data", arg: 3, scope: !3826, file: !2, line: 1278, type: !132)
!3831 = !DILocation(line: 1277, column: 52, scope: !3826)
!3832 = !DILocation(line: 1278, column: 34, scope: !3826)
!3833 = !DILocation(line: 1278, column: 47, scope: !3826)
!3834 = !DILocation(line: 1280, column: 5, scope: !3826)
!3835 = !DILocation(line: 1280, column: 18, scope: !3826)
!3836 = !DILocation(line: 1282, column: 5, scope: !3826)
!3837 = !DISubprogram(name: "ngx_stream_get_variable_index", scope: !1081, file: !1081, line: 51, type: !3838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!529, !114, !714}
!3840 = !DISubprogram(name: "ngx_snprintf", scope: !195, file: !195, line: 154, type: !3841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!150, !150, !136, !594, null}
!3843 = !DISubprogram(name: "ngx_read_file", scope: !191, file: !191, line: 122, type: !3844, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!406, !184, !150, !136, !175}
!3846 = !DISubprogram(name: "ngx_stream_lua_lex", scope: !3847, file: !3847, line: 22, type: !3848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3847 = !DIFile(filename: "../ngx_stream_lua-0.0.7/src/ngx_stream_lua_lex.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "cbd26dfd5959281dc100d2cc32c0de49")
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!192, !3850, !136, !3851}
!3850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2329)
!3851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3852)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!3853 = distinct !DISubprogram(name: "ngx_stream_lua_strlstrn", scope: !2, file: !2, line: 1249, type: !3854, scopeLine: 1250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !3856)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!150, !150, !150, !150, !136}
!3856 = !{!3857, !3858, !3859, !3860, !3861, !3862}
!3857 = !DILocalVariable(name: "s1", arg: 1, scope: !3853, file: !2, line: 1249, type: !150)
!3858 = !DILocalVariable(name: "last", arg: 2, scope: !3853, file: !2, line: 1249, type: !150)
!3859 = !DILocalVariable(name: "s2", arg: 3, scope: !3853, file: !2, line: 1249, type: !150)
!3860 = !DILocalVariable(name: "n", arg: 4, scope: !3853, file: !2, line: 1249, type: !136)
!3861 = !DILocalVariable(name: "c1", scope: !3853, file: !2, line: 1251, type: !130)
!3862 = !DILocalVariable(name: "c2", scope: !3853, file: !2, line: 1251, type: !130)
!3863 = !DILocation(line: 1249, column: 33, scope: !3853)
!3864 = !DILocation(line: 1249, column: 45, scope: !3853)
!3865 = !DILocation(line: 1249, column: 59, scope: !3853)
!3866 = !DILocation(line: 1249, column: 70, scope: !3853)
!3867 = !DILocation(line: 1251, column: 5, scope: !3853)
!3868 = !DILocation(line: 1251, column: 17, scope: !3853)
!3869 = !DILocation(line: 1251, column: 21, scope: !3853)
!3870 = !DILocation(line: 1253, column: 26, scope: !3853)
!3871 = !DILocation(line: 1253, column: 23, scope: !3853)
!3872 = !DILocation(line: 1253, column: 10, scope: !3853)
!3873 = !DILocation(line: 1253, column: 8, scope: !3853)
!3874 = !DILocation(line: 1254, column: 13, scope: !3853)
!3875 = !DILocation(line: 1254, column: 10, scope: !3853)
!3876 = !DILocation(line: 1256, column: 5, scope: !3853)
!3877 = !DILocation(line: 1257, column: 9, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3853, file: !2, line: 1256, column: 8)
!3879 = !DILocation(line: 1258, column: 17, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3881, file: !2, line: 1258, column: 17)
!3881 = distinct !DILexicalBlock(scope: !3878, file: !2, line: 1257, column: 12)
!3882 = !DILocation(line: 1258, column: 23, scope: !3880)
!3883 = !DILocation(line: 1258, column: 20, scope: !3880)
!3884 = !DILocation(line: 1258, column: 17, scope: !3881)
!3885 = !DILocation(line: 1259, column: 17, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3880, file: !2, line: 1258, column: 29)
!3887 = !DILocation(line: 1262, column: 34, scope: !3881)
!3888 = !DILocation(line: 1262, column: 31, scope: !3881)
!3889 = !DILocation(line: 1262, column: 18, scope: !3881)
!3890 = !DILocation(line: 1262, column: 16, scope: !3881)
!3891 = !DILocation(line: 1266, column: 9, scope: !3881)
!3892 = !DILocation(line: 1266, column: 18, scope: !3878)
!3893 = !DILocation(line: 1266, column: 24, scope: !3878)
!3894 = !DILocation(line: 1266, column: 21, scope: !3878)
!3895 = distinct !{!3895, !3877, !3896, !2096}
!3896 = !DILocation(line: 1266, column: 26, scope: !3878)
!3897 = !DILocation(line: 1270, column: 5, scope: !3878)
!3898 = !DILocation(line: 1270, column: 14, scope: !3853)
!3899 = !DILocation(line: 1270, column: 37, scope: !3853)
!3900 = distinct !{!3900, !3876, !3901, !2096}
!3901 = !DILocation(line: 1270, column: 41, scope: !3853)
!3902 = !DILocation(line: 1272, column: 12, scope: !3853)
!3903 = !DILocation(line: 1272, column: 5, scope: !3853)
!3904 = !DILocation(line: 1273, column: 1, scope: !3853)
!3905 = !DISubprogram(name: "ngx_pnalloc", scope: !143, file: !143, line: 80, type: !1451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3906 = !DISubprogram(name: "strncmp", scope: !2908, file: !2908, line: 159, type: !3907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!192, !594, !594, !3909}
!3909 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !3910, line: 70, baseType: !134)
!3910 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
