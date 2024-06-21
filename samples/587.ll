; ModuleID = 'samples/587.bc'
source_filename = "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src/src/libmongoc/src/mongoc/mongoc-cursor-array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._data_array_t = type { %struct._bson_t, %struct._bson_t, %struct.bson_iter_t, [48 x i8], %struct._bson_t, ptr, [120 x i8] }
%struct.bson_iter_t = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._bson_value_t }
%struct._bson_value_t = type { i32, i32, %union.anon }
%union.anon = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, i32, %struct.bson_oid_t }
%struct.bson_oid_t = type { [12 x i8] }
%struct._bson_t = type { i32, i32, [120 x i8] }
%struct._mongoc_cursor_t = type { ptr, i32, i32, i8, i32, i8, [103 x i8], %struct._bson_t, ptr, ptr, ptr, i8, i8, i8, ptr, i32, ptr, i32, i32, %struct._bson_error_t, [64 x i8], %struct._bson_t, ptr, %struct._mongoc_cursor_impl_t, i64, i64, [56 x i8] }
%struct._bson_error_t = type { i32, i32, [504 x i8] }
%struct._mongoc_cursor_impl_t = type { ptr, ptr, ptr, ptr, ptr, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [51 x i8] c"The parameter: %s, in function %s, cannot be NULL\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"client\00", align 1, !dbg !7
@__func__._mongoc_cursor_array_new = private unnamed_addr constant [25 x i8] c"_mongoc_cursor_array_new\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [37 x i8] c"%s:%d %s(): precondition failed: %s\0A\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [198 x i8] c"/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src/src/libmongoc/src/mongoc/mongoc-cursor-array.c\00", align 1, !dbg !23
@__func__._pop_from_batch = private unnamed_addr constant [16 x i8] c"_pop_from_batch\00", align 1, !dbg !28
@.str.4 = private unnamed_addr constant [55 x i8] c"bson_init_static (&data->bson, document, document_len)\00", align 1, !dbg !33

; Function Attrs: nounwind uwtable
define ptr @_mongoc_cursor_array_new(ptr noundef %client, ptr noundef %db_and_coll, ptr noundef %cmd, ptr noundef %opts, ptr noundef %field_name) #0 !dbg !305 {
entry:
  %client.addr = alloca ptr, align 8
  %db_and_coll.addr = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %opts.addr = alloca ptr, align 8
  %field_name.addr = alloca ptr, align 8
  %cursor = alloca ptr, align 8
  %data = alloca ptr, align 8
  store ptr %client, ptr %client.addr, align 8, !tbaa !1267
  tail call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !1260, metadata !DIExpression()), !dbg !1271
  store ptr %db_and_coll, ptr %db_and_coll.addr, align 8, !tbaa !1267
  tail call void @llvm.dbg.declare(metadata ptr %db_and_coll.addr, metadata !1261, metadata !DIExpression()), !dbg !1272
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !1267
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !1262, metadata !DIExpression()), !dbg !1273
  store ptr %opts, ptr %opts.addr, align 8, !tbaa !1267
  tail call void @llvm.dbg.declare(metadata ptr %opts.addr, metadata !1263, metadata !DIExpression()), !dbg !1274
  store ptr %field_name, ptr %field_name.addr, align 8, !tbaa !1267
  tail call void @llvm.dbg.declare(metadata ptr %field_name.addr, metadata !1264, metadata !DIExpression()), !dbg !1275
  br label %do.body, !dbg !1276

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %client.addr, align 8, !dbg !1277, !tbaa !1267
  %cmp = icmp eq ptr %0, null, !dbg !1277
  %lnot = xor i1 %cmp, true, !dbg !1277
  %lnot1 = xor i1 %lnot, true, !dbg !1277
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1277
  %conv = sext i32 %lnot.ext to i64, !dbg !1277
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1277
  %tobool = icmp ne i64 %expval, 0, !dbg !1277
  br i1 %tobool, label %if.then, label %if.end, !dbg !1280

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !1281, !tbaa !1267
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__._mongoc_cursor_array_new), !dbg !1281
  call void @abort() #6, !dbg !1281
  unreachable, !dbg !1281

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !1280

do.end:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %cursor) #7, !dbg !1283
  tail call void @llvm.dbg.declare(metadata ptr %cursor, metadata !1265, metadata !DIExpression()), !dbg !1284
  %2 = load ptr, ptr %client.addr, align 8, !dbg !1285, !tbaa !1267
  %3 = load ptr, ptr %db_and_coll.addr, align 8, !dbg !1286, !tbaa !1267
  %4 = load ptr, ptr %opts.addr, align 8, !dbg !1287, !tbaa !1267
  %call2 = call ptr @_mongoc_cursor_new_with_opts(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef null, ptr noundef null, ptr noundef null), !dbg !1288
  store ptr %call2, ptr %cursor, align 8, !dbg !1284, !tbaa !1267
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #7, !dbg !1289
  tail call void @llvm.dbg.declare(metadata ptr %data, metadata !1266, metadata !DIExpression()), !dbg !1290
  %call3 = call ptr @bson_aligned_alloc0(i64 noundef 128, i64 noundef 640), !dbg !1291
  store ptr %call3, ptr %data, align 8, !dbg !1290, !tbaa !1267
  %5 = load ptr, ptr %cmd.addr, align 8, !dbg !1292, !tbaa !1267
  %6 = load ptr, ptr %data, align 8, !dbg !1293, !tbaa !1267
  %cmd4 = getelementptr inbounds %struct._data_array_t, ptr %6, i32 0, i32 0, !dbg !1294
  call void @bson_copy_to(ptr noundef %5, ptr noundef %cmd4), !dbg !1295
  %7 = load ptr, ptr %data, align 8, !dbg !1296, !tbaa !1267
  %array = getelementptr inbounds %struct._data_array_t, ptr %7, i32 0, i32 1, !dbg !1297
  call void @bson_init(ptr noundef %array), !dbg !1298
  %8 = load ptr, ptr %field_name.addr, align 8, !dbg !1299, !tbaa !1267
  %call5 = call ptr @bson_strdup(ptr noundef %8), !dbg !1300
  %9 = load ptr, ptr %data, align 8, !dbg !1301, !tbaa !1267
  %field_name6 = getelementptr inbounds %struct._data_array_t, ptr %9, i32 0, i32 5, !dbg !1302
  store ptr %call5, ptr %field_name6, align 128, !dbg !1303, !tbaa !1304
  %10 = load ptr, ptr %cursor, align 8, !dbg !1310, !tbaa !1267
  %impl = getelementptr inbounds %struct._mongoc_cursor_t, ptr %10, i32 0, i32 23, !dbg !1311
  %prime = getelementptr inbounds %struct._mongoc_cursor_impl_t, ptr %impl, i32 0, i32 2, !dbg !1312
  store ptr @_prime, ptr %prime, align 8, !dbg !1313, !tbaa !1314
  %11 = load ptr, ptr %cursor, align 8, !dbg !1320, !tbaa !1267
  %impl7 = getelementptr inbounds %struct._mongoc_cursor_t, ptr %11, i32 0, i32 23, !dbg !1321
  %pop_from_batch = getelementptr inbounds %struct._mongoc_cursor_impl_t, ptr %impl7, i32 0, i32 3, !dbg !1322
  store ptr @_pop_from_batch, ptr %pop_from_batch, align 8, !dbg !1323, !tbaa !1324
  %12 = load ptr, ptr %cursor, align 8, !dbg !1325, !tbaa !1267
  %impl8 = getelementptr inbounds %struct._mongoc_cursor_t, ptr %12, i32 0, i32 23, !dbg !1326
  %destroy = getelementptr inbounds %struct._mongoc_cursor_impl_t, ptr %impl8, i32 0, i32 1, !dbg !1327
  store ptr @_destroy, ptr %destroy, align 8, !dbg !1328, !tbaa !1329
  %13 = load ptr, ptr %cursor, align 8, !dbg !1330, !tbaa !1267
  %impl9 = getelementptr inbounds %struct._mongoc_cursor_t, ptr %13, i32 0, i32 23, !dbg !1331
  %clone = getelementptr inbounds %struct._mongoc_cursor_impl_t, ptr %impl9, i32 0, i32 0, !dbg !1332
  store ptr @_clone, ptr %clone, align 8, !dbg !1333, !tbaa !1334
  %14 = load ptr, ptr %data, align 8, !dbg !1335, !tbaa !1267
  %15 = load ptr, ptr %cursor, align 8, !dbg !1336, !tbaa !1267
  %impl10 = getelementptr inbounds %struct._mongoc_cursor_t, ptr %15, i32 0, i32 23, !dbg !1337
  %data11 = getelementptr inbounds %struct._mongoc_cursor_impl_t, ptr %impl10, i32 0, i32 5, !dbg !1338
  store ptr %14, ptr %data11, align 8, !dbg !1339, !tbaa !1340
  %16 = load ptr, ptr %cursor, align 8, !dbg !1341, !tbaa !1267
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #7, !dbg !1342
  call void @llvm.lifetime.end.p0(i64 8, ptr %cursor) #7, !dbg !1342
  ret ptr %16, !dbg !1343
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #1

declare !dbg !1344 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare !dbg !1401 void @abort() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare !dbg !1405 ptr @_mongoc_cursor_new_with_opts(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !1412 ptr @bson_aligned_alloc0(i64 noundef, i64 noundef) #2

declare !dbg !1415 void @bson_copy_to(ptr noundef, ptr noundef) #2

declare !dbg !1419 void @bson_init(ptr noundef) #2

declare !dbg !1422 ptr @bson_strdup(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @_prime(ptr noundef %cursor) #0 !dbg !1426 {
entry:
  %retval = alloca i32, align 4
  %cursor.addr = alloca ptr, align 8
  %iter = alloca %struct.bson_iter_t, align 128
  %data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cursor, ptr %cursor.addr, align 8, !tbaa !1267
  tail call void @llvm.dbg.declare(metadata ptr %cursor.addr, metadata !1428, metadata !DIExpression()), !dbg !1431
  call void @llvm.lifetime.start.p0(i64 80, ptr %iter) #7, !dbg !1432
  tail call void @llvm.dbg.declare(metadata ptr %iter, metadata !1429, metadata !DIExpression()), !dbg !1433
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #7, !dbg !1434
  tail call void @llvm.dbg.declare(metadata ptr %data, metadata !1430, metadata !DIExpression()), !dbg !1435
  %0 = load ptr, ptr %cursor.addr, align 8, !dbg !1436, !tbaa !1267
  %impl = getelementptr inbounds %struct._mongoc_cursor_t, ptr %0, i32 0, i32 23, !dbg !1437
  %data1 = getelementptr inbounds %struct._mongoc_cursor_impl_t, ptr %impl, i32 0, i32 5, !dbg !1438
  %1 = load ptr, ptr %data1, align 8, !dbg !1438, !tbaa !1340
  store ptr %1, ptr %data, align 8, !dbg !1435, !tbaa !1267
  %2 = load ptr, ptr %data, align 8, !dbg !1439, !tbaa !1267
  %array = getelementptr inbounds %struct._data_array_t, ptr %2, i32 0, i32 1, !dbg !1440
  call void @bson_destroy(ptr noundef %array), !dbg !1441
  %3 = load ptr, ptr %cursor.addr, align 8, !dbg !1442, !tbaa !1267
  %4 = load ptr, ptr %data, align 8, !dbg !1444, !tbaa !1267
  %cmd = getelementptr inbounds %struct._data_array_t, ptr %4, i32 0, i32 0, !dbg !1445
  %5 = load ptr, ptr %cursor.addr, align 8, !dbg !1446, !tbaa !1267
  %opts = getelementptr inbounds %struct._mongoc_cursor_t, ptr %5, i32 0, i32 7, !dbg !1447
  %6 = load ptr, ptr %data, align 8, !dbg !1448, !tbaa !1267
  %array2 = getelementptr inbounds %struct._data_array_t, ptr %6, i32 0, i32 1, !dbg !1449
  %call = call zeroext i1 @_mongoc_cursor_run_command(ptr noundef %3, ptr noundef %cmd, ptr noundef %opts, ptr noundef %array2, i1 noundef zeroext false), !dbg !1450
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !1451

land.lhs.true:                                    ; preds = %entry
  %7 = load ptr, ptr %data, align 8, !dbg !1452, !tbaa !1267
  %array3 = getelementptr inbounds %struct._data_array_t, ptr %7, i32 0, i32 1, !dbg !1453
  %8 = load ptr, ptr %data, align 8, !dbg !1454, !tbaa !1267
  %field_name = getelementptr inbounds %struct._data_array_t, ptr %8, i32 0, i32 5, !dbg !1455
  %9 = load ptr, ptr %field_name, align 128, !dbg !1455, !tbaa !1304
  %call4 = call zeroext i1 @bson_iter_init_find(ptr noundef %iter, ptr noundef %array3, ptr noundef %9), !dbg !1456
  br i1 %call4, label %land.lhs.true5, label %if.end, !dbg !1457

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = call i32 @bson_iter_type(ptr noundef %iter), !dbg !1458
  %cmp = icmp eq i32 %call6, 4, !dbg !1458
  br i1 %cmp, label %land.lhs.true7, label %if.end, !dbg !1459

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %10 = load ptr, ptr %data, align 8, !dbg !1460, !tbaa !1267
  %iter8 = getelementptr inbounds %struct._data_array_t, ptr %10, i32 0, i32 2, !dbg !1461
  %call9 = call zeroext i1 @bson_iter_recurse(ptr noundef %iter, ptr noundef %iter8), !dbg !1462
  br i1 %call9, label %if.then, label %if.end, !dbg !1463

if.then:                                          ; preds = %land.lhs.true7
  store i32 1, ptr %retval, align 4, !dbg !1464
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1464

if.end:                                           ; preds = %land.lhs.true7, %land.lhs.true5, %land.lhs.true, %entry
  store i32 3, ptr %retval, align 4, !dbg !1466
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1466

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #7, !dbg !1467
  call void @llvm.lifetime.end.p0(i64 80, ptr %iter) #7, !dbg !1467
  %11 = load i32, ptr %retval, align 4, !dbg !1467
  ret i32 %11, !dbg !1467
}

; Function Attrs: nounwind uwtable
define internal i32 @_pop_from_batch(ptr noundef %cursor) #0 !dbg !1468 {
entry:
  %retval = alloca i32, align 4
  %cursor.addr = alloca ptr, align 8
  %document_len = alloca i32, align 4
  %document = alloca ptr, align 8
  %data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cursor, ptr %cursor.addr, align 8, !tbaa !1267
  tail call void @llvm.dbg.declare(metadata ptr %cursor.addr, metadata !1470, metadata !DIExpression()), !dbg !1474
  call void @llvm.lifetime.start.p0(i64 4, ptr %document_len) #7, !dbg !1475
  tail call void @llvm.dbg.declare(metadata ptr %document_len, metadata !1471, metadata !DIExpression()), !dbg !1476
  call void @llvm.lifetime.start.p0(i64 8, ptr %document) #7, !dbg !1477
  tail call void @llvm.dbg.declare(metadata ptr %document, metadata !1472, metadata !DIExpression()), !dbg !1478
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #7, !dbg !1479
  tail call void @llvm.dbg.declare(metadata ptr %data, metadata !1473, metadata !DIExpression()), !dbg !1480
  %0 = load ptr, ptr %cursor.addr, align 8, !dbg !1481, !tbaa !1267
  %impl = getelementptr inbounds %struct._mongoc_cursor_t, ptr %0, i32 0, i32 23, !dbg !1482
  %data1 = getelementptr inbounds %struct._mongoc_cursor_impl_t, ptr %impl, i32 0, i32 5, !dbg !1483
  %1 = load ptr, ptr %data1, align 8, !dbg !1483, !tbaa !1340
  store ptr %1, ptr %data, align 8, !dbg !1480, !tbaa !1267
  %2 = load ptr, ptr %data, align 8, !dbg !1484, !tbaa !1267
  %iter = getelementptr inbounds %struct._data_array_t, ptr %2, i32 0, i32 2, !dbg !1486
  %call = call zeroext i1 @bson_iter_next(ptr noundef %iter), !dbg !1487
  br i1 %call, label %if.then, label %if.end9, !dbg !1488

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %data, align 8, !dbg !1489, !tbaa !1267
  %iter2 = getelementptr inbounds %struct._data_array_t, ptr %3, i32 0, i32 2, !dbg !1491
  call void @bson_iter_document(ptr noundef %iter2, ptr noundef %document_len, ptr noundef %document), !dbg !1492
  br label %do.body, !dbg !1493

do.body:                                          ; preds = %if.then
  %4 = load ptr, ptr %data, align 8, !dbg !1494, !tbaa !1267
  %bson = getelementptr inbounds %struct._data_array_t, ptr %4, i32 0, i32 4, !dbg !1494
  %5 = load ptr, ptr %document, align 8, !dbg !1494, !tbaa !1267
  %6 = load i32, ptr %document_len, align 4, !dbg !1494, !tbaa !1497
  %conv = zext i32 %6 to i64, !dbg !1494
  %call3 = call zeroext i1 @bson_init_static(ptr noundef %bson, ptr noundef %5, i64 noundef %conv), !dbg !1494
  %lnot = xor i1 %call3, true, !dbg !1494
  %lnot4 = xor i1 %lnot, true, !dbg !1494
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !1494
  %conv5 = sext i32 %lnot.ext to i64, !dbg !1494
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 1), !dbg !1494
  %tobool = icmp ne i64 %expval, 0, !dbg !1494
  br i1 %tobool, label %if.end, label %if.then6, !dbg !1498

if.then6:                                         ; preds = %do.body
  %7 = load ptr, ptr @stderr, align 8, !dbg !1499, !tbaa !1267
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 57, ptr noundef @__func__._pop_from_batch, ptr noundef @.str.4), !dbg !1499
  call void @abort() #6, !dbg !1499
  unreachable, !dbg !1499

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !1498

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1498

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %data, align 8, !dbg !1501, !tbaa !1267
  %bson8 = getelementptr inbounds %struct._data_array_t, ptr %8, i32 0, i32 4, !dbg !1502
  %9 = load ptr, ptr %cursor.addr, align 8, !dbg !1503, !tbaa !1267
  %current = getelementptr inbounds %struct._mongoc_cursor_t, ptr %9, i32 0, i32 22, !dbg !1504
  store ptr %bson8, ptr %current, align 128, !dbg !1505, !tbaa !1506
  store i32 1, ptr %retval, align 4, !dbg !1507
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1507

if.end9:                                          ; preds = %entry
  store i32 3, ptr %retval, align 4, !dbg !1508
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1508

cleanup:                                          ; preds = %if.end9, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #7, !dbg !1509
  call void @llvm.lifetime.end.p0(i64 8, ptr %document) #7, !dbg !1509
  call void @llvm.lifetime.end.p0(i64 4, ptr %document_len) #7, !dbg !1509
  %10 = load i32, ptr %retval, align 4, !dbg !1509
  ret i32 %10, !dbg !1509
}

; Function Attrs: nounwind uwtable
define internal void @_destroy(ptr noundef %impl) #0 !dbg !1510 {
entry:
  %impl.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  store ptr %impl, ptr %impl.addr, align 8, !tbaa !1267
  tail call void @llvm.dbg.declare(metadata ptr %impl.addr, metadata !1512, metadata !DIExpression()), !dbg !1514
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #7, !dbg !1515
  tail call void @llvm.dbg.declare(metadata ptr %data, metadata !1513, metadata !DIExpression()), !dbg !1516
  %0 = load ptr, ptr %impl.addr, align 8, !dbg !1517, !tbaa !1267
  %data1 = getelementptr inbounds %struct._mongoc_cursor_impl_t, ptr %0, i32 0, i32 5, !dbg !1518
  %1 = load ptr, ptr %data1, align 8, !dbg !1518, !tbaa !1519
  store ptr %1, ptr %data, align 8, !dbg !1516, !tbaa !1267
  %2 = load ptr, ptr %data, align 8, !dbg !1520, !tbaa !1267
  %array = getelementptr inbounds %struct._data_array_t, ptr %2, i32 0, i32 1, !dbg !1521
  call void @bson_destroy(ptr noundef %array), !dbg !1522
  %3 = load ptr, ptr %data, align 8, !dbg !1523, !tbaa !1267
  %cmd = getelementptr inbounds %struct._data_array_t, ptr %3, i32 0, i32 0, !dbg !1524
  call void @bson_destroy(ptr noundef %cmd), !dbg !1525
  %4 = load ptr, ptr %data, align 8, !dbg !1526, !tbaa !1267
  %field_name = getelementptr inbounds %struct._data_array_t, ptr %4, i32 0, i32 5, !dbg !1527
  %5 = load ptr, ptr %field_name, align 128, !dbg !1527, !tbaa !1304
  call void @bson_free(ptr noundef %5), !dbg !1528
  %6 = load ptr, ptr %data, align 8, !dbg !1529, !tbaa !1267
  call void @bson_free(ptr noundef %6), !dbg !1530
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #7, !dbg !1531
  ret void, !dbg !1531
}

; Function Attrs: nounwind uwtable
define internal void @_clone(ptr noundef %dst, ptr noundef %src) #0 !dbg !1532 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %data_dst = alloca ptr, align 8
  %data_src = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !1267
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1534, metadata !DIExpression()), !dbg !1538
  store ptr %src, ptr %src.addr, align 8, !tbaa !1267
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1535, metadata !DIExpression()), !dbg !1539
  call void @llvm.lifetime.start.p0(i64 8, ptr %data_dst) #7, !dbg !1540
  tail call void @llvm.dbg.declare(metadata ptr %data_dst, metadata !1536, metadata !DIExpression()), !dbg !1541
  %call = call ptr @bson_aligned_alloc0(i64 noundef 128, i64 noundef 640), !dbg !1542
  store ptr %call, ptr %data_dst, align 8, !dbg !1541, !tbaa !1267
  call void @llvm.lifetime.start.p0(i64 8, ptr %data_src) #7, !dbg !1543
  tail call void @llvm.dbg.declare(metadata ptr %data_src, metadata !1537, metadata !DIExpression()), !dbg !1544
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1545, !tbaa !1267
  %data = getelementptr inbounds %struct._mongoc_cursor_impl_t, ptr %0, i32 0, i32 5, !dbg !1546
  %1 = load ptr, ptr %data, align 8, !dbg !1546, !tbaa !1519
  store ptr %1, ptr %data_src, align 8, !dbg !1544, !tbaa !1267
  %2 = load ptr, ptr %data_dst, align 8, !dbg !1547, !tbaa !1267
  %array = getelementptr inbounds %struct._data_array_t, ptr %2, i32 0, i32 1, !dbg !1548
  call void @bson_init(ptr noundef %array), !dbg !1549
  %3 = load ptr, ptr %data_src, align 8, !dbg !1550, !tbaa !1267
  %cmd = getelementptr inbounds %struct._data_array_t, ptr %3, i32 0, i32 0, !dbg !1551
  %4 = load ptr, ptr %data_dst, align 8, !dbg !1552, !tbaa !1267
  %cmd1 = getelementptr inbounds %struct._data_array_t, ptr %4, i32 0, i32 0, !dbg !1553
  call void @bson_copy_to(ptr noundef %cmd, ptr noundef %cmd1), !dbg !1554
  %5 = load ptr, ptr %data_src, align 8, !dbg !1555, !tbaa !1267
  %field_name = getelementptr inbounds %struct._data_array_t, ptr %5, i32 0, i32 5, !dbg !1556
  %6 = load ptr, ptr %field_name, align 128, !dbg !1556, !tbaa !1304
  %call2 = call ptr @bson_strdup(ptr noundef %6), !dbg !1557
  %7 = load ptr, ptr %data_dst, align 8, !dbg !1558, !tbaa !1267
  %field_name3 = getelementptr inbounds %struct._data_array_t, ptr %7, i32 0, i32 5, !dbg !1559
  store ptr %call2, ptr %field_name3, align 128, !dbg !1560, !tbaa !1304
  %8 = load ptr, ptr %data_dst, align 8, !dbg !1561, !tbaa !1267
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !1562, !tbaa !1267
  %data4 = getelementptr inbounds %struct._mongoc_cursor_impl_t, ptr %9, i32 0, i32 5, !dbg !1563
  store ptr %8, ptr %data4, align 8, !dbg !1564, !tbaa !1519
  call void @llvm.lifetime.end.p0(i64 8, ptr %data_src) #7, !dbg !1565
  call void @llvm.lifetime.end.p0(i64 8, ptr %data_dst) #7, !dbg !1565
  ret void, !dbg !1565
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare !dbg !1566 void @bson_destroy(ptr noundef) #2

declare !dbg !1567 zeroext i1 @_mongoc_cursor_run_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #2

declare !dbg !1570 zeroext i1 @bson_iter_init_find(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !1575 i32 @bson_iter_type(ptr noundef) #2

declare !dbg !1580 zeroext i1 @bson_iter_recurse(ptr noundef, ptr noundef) #2

declare !dbg !1583 zeroext i1 @bson_iter_next(ptr noundef) #2

declare !dbg !1586 void @bson_iter_document(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !1591 zeroext i1 @bson_init_static(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !1594 void @bson_free(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!38}
!llvm.module.flags = !{!299, !300, !301, !302, !303}
!llvm.ident = !{!304}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-cursor-array.c", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "4d894e6bd9e3d43854d79409559167a8")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 51)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 7)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 200, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 25)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 37)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1584, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 198)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 128, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 16)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 55)
!38 = distinct !DICompileUnit(language: DW_LANG_C99, file: !39, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !158, globals: !298, splitDebugInlining: false, nameTableKind: None)
!39 = !DIFile(filename: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src/src/libmongoc/src/mongoc/mongoc-cursor-array.c", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src/spack-build/src/libmongoc", checksumkind: CSK_MD5, checksum: "4d894e6bd9e3d43854d79409559167a8")
!40 = !{!41, !52, !66, !76, !84, !89, !95, !101, !105, !112, !122, !147}
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 29, baseType: !43, size: 32, elements: !44)
!42 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-topology-description-private.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "c363a9849f2ac6bffaeb66be51759e54")
!43 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!44 = !{!45, !46, !47, !48, !49, !50, !51}
!45 = !DIEnumerator(name: "MONGOC_TOPOLOGY_UNKNOWN", value: 0)
!46 = !DIEnumerator(name: "MONGOC_TOPOLOGY_SHARDED", value: 1)
!47 = !DIEnumerator(name: "MONGOC_TOPOLOGY_RS_NO_PRIMARY", value: 2)
!48 = !DIEnumerator(name: "MONGOC_TOPOLOGY_RS_WITH_PRIMARY", value: 3)
!49 = !DIEnumerator(name: "MONGOC_TOPOLOGY_SINGLE", value: 4)
!50 = !DIEnumerator(name: "MONGOC_TOPOLOGY_LOAD_BALANCED", value: 5)
!51 = !DIEnumerator(name: "MONGOC_TOPOLOGY_DESCRIPTION_TYPES", value: 6)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !53, line: 50, baseType: !43, size: 32, elements: !54)
!53 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-server-description-private.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "83680b4e3be8e33e1561e324b37fbabc")
!54 = !{!55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!55 = !DIEnumerator(name: "MONGOC_SERVER_UNKNOWN", value: 0)
!56 = !DIEnumerator(name: "MONGOC_SERVER_STANDALONE", value: 1)
!57 = !DIEnumerator(name: "MONGOC_SERVER_MONGOS", value: 2)
!58 = !DIEnumerator(name: "MONGOC_SERVER_POSSIBLE_PRIMARY", value: 3)
!59 = !DIEnumerator(name: "MONGOC_SERVER_RS_PRIMARY", value: 4)
!60 = !DIEnumerator(name: "MONGOC_SERVER_RS_SECONDARY", value: 5)
!61 = !DIEnumerator(name: "MONGOC_SERVER_RS_ARBITER", value: 6)
!62 = !DIEnumerator(name: "MONGOC_SERVER_RS_OTHER", value: 7)
!63 = !DIEnumerator(name: "MONGOC_SERVER_RS_GHOST", value: 8)
!64 = !DIEnumerator(name: "MONGOC_SERVER_LOAD_BALANCER", value: 9)
!65 = !DIEnumerator(name: "MONGOC_SERVER_DESCRIPTION_TYPES", value: 10)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 34, baseType: !43, size: 32, elements: !68)
!67 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-async-cmd-private.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "64a7d54a7578ed0f1a917170e1a69ef1")
!68 = !{!69, !70, !71, !72, !73, !74, !75}
!69 = !DIEnumerator(name: "MONGOC_ASYNC_CMD_INITIATE", value: 0)
!70 = !DIEnumerator(name: "MONGOC_ASYNC_CMD_SETUP", value: 1)
!71 = !DIEnumerator(name: "MONGOC_ASYNC_CMD_SEND", value: 2)
!72 = !DIEnumerator(name: "MONGOC_ASYNC_CMD_RECV_LEN", value: 3)
!73 = !DIEnumerator(name: "MONGOC_ASYNC_CMD_RECV_RPC", value: 4)
!74 = !DIEnumerator(name: "MONGOC_ASYNC_CMD_ERROR_STATE", value: 5)
!75 = !DIEnumerator(name: "MONGOC_ASYNC_CMD_CANCELED_STATE", value: 6)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !77, line: 35, baseType: !43, size: 32, elements: !78)
!77 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-async-private.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "d382d604891e4dcd6525efa4f0caa2ac")
!78 = !{!79, !80, !81, !82, !83}
!79 = !DIEnumerator(name: "MONGOC_ASYNC_CMD_CONNECTED", value: 0)
!80 = !DIEnumerator(name: "MONGOC_ASYNC_CMD_IN_PROGRESS", value: 1)
!81 = !DIEnumerator(name: "MONGOC_ASYNC_CMD_SUCCESS", value: 2)
!82 = !DIEnumerator(name: "MONGOC_ASYNC_CMD_ERROR", value: 3)
!83 = !DIEnumerator(name: "MONGOC_ASYNC_CMD_TIMEOUT", value: 4)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !85, line: 31, baseType: !43, size: 32, elements: !86)
!85 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-crypto-private.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "d917683855b94173416b062df755d960")
!86 = !{!87, !88}
!87 = !DIEnumerator(name: "MONGOC_CRYPTO_ALGORITHM_SHA_1", value: 0)
!88 = !DIEnumerator(name: "MONGOC_CRYPTO_ALGORITHM_SHA_256", value: 1)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "handshake_state_t", file: !90, line: 93, baseType: !43, size: 32, elements: !91)
!90 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-topology-scanner-private.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "6a7c2b6800aca689461ec4d426bcb656")
!91 = !{!92, !93, !94}
!92 = !DIEnumerator(name: "HANDSHAKE_CMD_UNINITIALIZED", value: 0)
!93 = !DIEnumerator(name: "HANDSHAKE_CMD_TOO_BIG", value: 1)
!94 = !DIEnumerator(name: "HANDSHAKE_CMD_OKAY", value: 2)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mongoc_topology_cse_state_t", file: !96, line: 48, baseType: !43, size: 32, elements: !97)
!96 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-topology-private.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "d090a5517ffc173094d517992a64aa5f")
!97 = !{!98, !99, !100}
!98 = !DIEnumerator(name: "MONGOC_CSE_DISABLED", value: 0)
!99 = !DIEnumerator(name: "MONGOC_CSE_STARTING", value: 1)
!100 = !DIEnumerator(name: "MONGOC_CSE_ENABLED", value: 2)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !96, line: 57, baseType: !43, size: 32, elements: !102)
!102 = !{!103, !104}
!103 = !DIEnumerator(name: "MONGOC_RR_SRV", value: 0)
!104 = !DIEnumerator(name: "MONGOC_RR_TXT", value: 1)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !106, line: 93, baseType: !43, size: 32, elements: !107)
!106 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-cursor-private.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "01a4aa845a8c93f061499d8f96d04341")
!107 = !{!108, !109, !110, !111}
!108 = !DIEnumerator(name: "UNPRIMED", value: 0)
!109 = !DIEnumerator(name: "IN_BATCH", value: 1)
!110 = !DIEnumerator(name: "END_OF_BATCH", value: 2)
!111 = !DIEnumerator(name: "DONE", value: 3)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !113, line: 54, baseType: !43, size: 32, elements: !114)
!113 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-client-session-private.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "be1f432f9f37b512ecd98c1c21e6ff05")
!114 = !{!115, !116, !117, !118, !119, !120, !121}
!115 = !DIEnumerator(name: "MONGOC_INTERNAL_TRANSACTION_NONE", value: 0)
!116 = !DIEnumerator(name: "MONGOC_INTERNAL_TRANSACTION_STARTING", value: 1)
!117 = !DIEnumerator(name: "MONGOC_INTERNAL_TRANSACTION_IN_PROGRESS", value: 2)
!118 = !DIEnumerator(name: "MONGOC_INTERNAL_TRANSACTION_ENDING", value: 3)
!119 = !DIEnumerator(name: "MONGOC_INTERNAL_TRANSACTION_COMMITTED", value: 4)
!120 = !DIEnumerator(name: "MONGOC_INTERNAL_TRANSACTION_COMMITTED_EMPTY", value: 5)
!121 = !DIEnumerator(name: "MONGOC_INTERNAL_TRANSACTION_ABORTED", value: 6)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !123, line: 235, baseType: !43, size: 32, elements: !124)
!123 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/linux-ubuntu22.04-zen2/clang-18.0.0/libbson-1.24.4-3emagvezomjldhykavhwzeddzez6p3tl/include/libbson-1.0/bson/bson-types.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build", checksumkind: CSK_MD5, checksum: "fd1703a8823d69f0452e79051a925038")
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146}
!125 = !DIEnumerator(name: "BSON_TYPE_EOD", value: 0)
!126 = !DIEnumerator(name: "BSON_TYPE_DOUBLE", value: 1)
!127 = !DIEnumerator(name: "BSON_TYPE_UTF8", value: 2)
!128 = !DIEnumerator(name: "BSON_TYPE_DOCUMENT", value: 3)
!129 = !DIEnumerator(name: "BSON_TYPE_ARRAY", value: 4)
!130 = !DIEnumerator(name: "BSON_TYPE_BINARY", value: 5)
!131 = !DIEnumerator(name: "BSON_TYPE_UNDEFINED", value: 6)
!132 = !DIEnumerator(name: "BSON_TYPE_OID", value: 7)
!133 = !DIEnumerator(name: "BSON_TYPE_BOOL", value: 8)
!134 = !DIEnumerator(name: "BSON_TYPE_DATE_TIME", value: 9)
!135 = !DIEnumerator(name: "BSON_TYPE_NULL", value: 10)
!136 = !DIEnumerator(name: "BSON_TYPE_REGEX", value: 11)
!137 = !DIEnumerator(name: "BSON_TYPE_DBPOINTER", value: 12)
!138 = !DIEnumerator(name: "BSON_TYPE_CODE", value: 13)
!139 = !DIEnumerator(name: "BSON_TYPE_SYMBOL", value: 14)
!140 = !DIEnumerator(name: "BSON_TYPE_CODEWSCOPE", value: 15)
!141 = !DIEnumerator(name: "BSON_TYPE_INT32", value: 16)
!142 = !DIEnumerator(name: "BSON_TYPE_TIMESTAMP", value: 17)
!143 = !DIEnumerator(name: "BSON_TYPE_INT64", value: 18)
!144 = !DIEnumerator(name: "BSON_TYPE_DECIMAL128", value: 19)
!145 = !DIEnumerator(name: "BSON_TYPE_MAXKEY", value: 127)
!146 = !DIEnumerator(name: "BSON_TYPE_MINKEY", value: 255)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !123, line: 267, baseType: !43, size: 32, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157}
!149 = !DIEnumerator(name: "BSON_SUBTYPE_BINARY", value: 0)
!150 = !DIEnumerator(name: "BSON_SUBTYPE_FUNCTION", value: 1)
!151 = !DIEnumerator(name: "BSON_SUBTYPE_BINARY_DEPRECATED", value: 2)
!152 = !DIEnumerator(name: "BSON_SUBTYPE_UUID_DEPRECATED", value: 3)
!153 = !DIEnumerator(name: "BSON_SUBTYPE_UUID", value: 4)
!154 = !DIEnumerator(name: "BSON_SUBTYPE_MD5", value: 5)
!155 = !DIEnumerator(name: "BSON_SUBTYPE_ENCRYPTED", value: 6)
!156 = !DIEnumerator(name: "BSON_SUBTYPE_COLUMN", value: 7)
!157 = !DIEnumerator(name: "BSON_SUBTYPE_USER", value: 128)
!158 = !{!159, !160}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "data_array_t", file: !2, line: 26, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_data_array_t", file: !2, line: 20, size: 5120, elements: !163)
!163 = !{!164, !181, !182, !296, !297}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !162, file: !2, line: 21, baseType: !165, size: 1024, align: 1024)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "bson_t", file: !123, line: 138, baseType: !166, align: 1024)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_bson_t", file: !123, line: 134, size: 1024, elements: !167)
!167 = !{!168, !173, !174}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !166, file: !123, line: 135, baseType: !169, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !170, line: 26, baseType: !171)
!170 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !172, line: 42, baseType: !43)
!172 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!173 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !166, file: !123, line: 136, baseType: !169, size: 32, offset: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !166, file: !123, line: 137, baseType: !175, size: 960, offset: 64)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 960, elements: !179)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !170, line: 24, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !172, line: 38, baseType: !178)
!178 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!179 = !{!180}
!180 = !DISubrange(count: 120)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !162, file: !2, line: 22, baseType: !165, size: 1024, align: 1024, offset: 1024)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !162, file: !2, line: 23, baseType: !183, size: 640, align: 1024, offset: 2048)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "bson_iter_t", file: !123, line: 376, baseType: !184, align: 1024)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !123, line: 363, size: 640, elements: !185)
!185 = !{!186, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !184, file: !123, line: 364, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !184, file: !123, line: 365, baseType: !169, size: 32, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !184, file: !123, line: 366, baseType: !169, size: 32, offset: 96)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !184, file: !123, line: 367, baseType: !169, size: 32, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !184, file: !123, line: 368, baseType: !169, size: 32, offset: 160)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "d1", scope: !184, file: !123, line: 369, baseType: !169, size: 32, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "d2", scope: !184, file: !123, line: 370, baseType: !169, size: 32, offset: 224)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "d3", scope: !184, file: !123, line: 371, baseType: !169, size: 32, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "d4", scope: !184, file: !123, line: 372, baseType: !169, size: 32, offset: 288)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "next_off", scope: !184, file: !123, line: 373, baseType: !169, size: 32, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "err_off", scope: !184, file: !123, line: 374, baseType: !169, size: 32, offset: 352)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !184, file: !123, line: 375, baseType: !200, size: 256, align: 64, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "bson_value_t", file: !123, line: 348, baseType: !201, align: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_bson_value_t", file: !123, line: 295, size: 256, elements: !202)
!202 = !{!203, !205, !210}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "value_type", scope: !201, file: !123, line: 296, baseType: !204, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "bson_type_t", file: !123, line: 258, baseType: !122)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !201, file: !123, line: 297, baseType: !206, size: 32, offset: 32)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !207, line: 26, baseType: !208)
!207 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !172, line: 41, baseType: !209)
!209 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !201, file: !123, line: 347, baseType: !211, size: 192, offset: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !201, file: !123, line: 298, size: 192, elements: !212)
!212 = !{!213, !221, !225, !226, !230, !232, !234, !235, !240, !246, !252, !259, !264, !270, !275, !282, !287}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "v_oid", scope: !211, file: !123, line: 299, baseType: !214, size: 96)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "bson_oid_t", file: !123, line: 179, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !123, line: 177, size: 96, elements: !216)
!216 = !{!217}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !215, file: !123, line: 178, baseType: !218, size: 96)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 96, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 12)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "v_int64", scope: !211, file: !123, line: 300, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !207, line: 27, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !172, line: 44, baseType: !224)
!224 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "v_int32", scope: !211, file: !123, line: 301, baseType: !206, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "v_int8", scope: !211, file: !123, line: 302, baseType: !227, size: 8)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !207, line: 24, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !172, line: 37, baseType: !229)
!229 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "v_double", scope: !211, file: !123, line: 303, baseType: !231, size: 64)
!231 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "v_bool", scope: !211, file: !123, line: 304, baseType: !233, size: 8)
!233 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "v_datetime", scope: !211, file: !123, line: 305, baseType: !222, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "v_timestamp", scope: !211, file: !123, line: 309, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !123, line: 306, size: 64, elements: !237)
!237 = !{!238, !239}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !236, file: !123, line: 307, baseType: !169, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "increment", scope: !236, file: !123, line: 308, baseType: !169, size: 32, offset: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "v_utf8", scope: !211, file: !123, line: 313, baseType: !241, size: 128)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !123, line: 310, size: 128, elements: !242)
!242 = !{!243, !245}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !241, file: !123, line: 311, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !241, file: !123, line: 312, baseType: !169, size: 32, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "v_doc", scope: !211, file: !123, line: 317, baseType: !247, size: 128)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !123, line: 314, size: 128, elements: !248)
!248 = !{!249, !251}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !247, file: !123, line: 315, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !247, file: !123, line: 316, baseType: !169, size: 32, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "v_binary", scope: !211, file: !123, line: 322, baseType: !253, size: 128)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !123, line: 318, size: 128, elements: !254)
!254 = !{!255, !256, !257}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !253, file: !123, line: 319, baseType: !250, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !253, file: !123, line: 320, baseType: !169, size: 32, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !253, file: !123, line: 321, baseType: !258, size: 32, offset: 96)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "bson_subtype_t", file: !123, line: 277, baseType: !147)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "v_regex", scope: !211, file: !123, line: 326, baseType: !260, size: 128)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !123, line: 323, size: 128, elements: !261)
!261 = !{!262, !263}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "regex", scope: !260, file: !123, line: 324, baseType: !244, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !260, file: !123, line: 325, baseType: !244, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "v_dbpointer", scope: !211, file: !123, line: 331, baseType: !265, size: 192)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !123, line: 327, size: 192, elements: !266)
!266 = !{!267, !268, !269}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "collection", scope: !265, file: !123, line: 328, baseType: !244, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "collection_len", scope: !265, file: !123, line: 329, baseType: !169, size: 32, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "oid", scope: !265, file: !123, line: 330, baseType: !214, size: 96, offset: 96)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "v_code", scope: !211, file: !123, line: 335, baseType: !271, size: 128)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !123, line: 332, size: 128, elements: !272)
!272 = !{!273, !274}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !271, file: !123, line: 333, baseType: !244, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "code_len", scope: !271, file: !123, line: 334, baseType: !169, size: 32, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "v_codewscope", scope: !211, file: !123, line: 341, baseType: !276, size: 192)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !123, line: 336, size: 192, elements: !277)
!277 = !{!278, !279, !280, !281}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !276, file: !123, line: 337, baseType: !244, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "scope_data", scope: !276, file: !123, line: 338, baseType: !250, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "code_len", scope: !276, file: !123, line: 339, baseType: !169, size: 32, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "scope_len", scope: !276, file: !123, line: 340, baseType: !169, size: 32, offset: 160)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "v_symbol", scope: !211, file: !123, line: 345, baseType: !283, size: 128)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !123, line: 342, size: 128, elements: !284)
!284 = !{!285, !286}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "symbol", scope: !283, file: !123, line: 343, baseType: !244, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !283, file: !123, line: 344, baseType: !169, size: 32, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "v_decimal128", scope: !211, file: !123, line: 346, baseType: !288, size: 128)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "bson_decimal128_t", file: !123, line: 203, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !123, line: 195, size: 128, elements: !290)
!290 = !{!291, !295}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !289, file: !123, line: 197, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !170, line: 27, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !172, line: 45, baseType: !294)
!294 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !289, file: !123, line: 198, baseType: !292, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "bson", scope: !162, file: !2, line: 24, baseType: !165, size: 1024, align: 1024, offset: 3072)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "field_name", scope: !162, file: !2, line: 25, baseType: !244, size: 64, offset: 4096)
!298 = !{!0, !7, !12, !18, !23, !28, !33}
!299 = !{i32 7, !"Dwarf Version", i32 5}
!300 = !{i32 2, !"Debug Info Version", i32 3}
!301 = !{i32 1, !"wchar_size", i32 4}
!302 = !{i32 8, !"PIC Level", i32 2}
!303 = !{i32 7, !"uwtable", i32 2}
!304 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!305 = distinct !DISubprogram(name: "_mongoc_cursor_array_new", scope: !2, file: !2, line: 89, type: !306, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1259)
!306 = !DISubroutineType(types: !307)
!307 = !{!308, !314, !509, !783, !783, !509}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_cursor_t", file: !310, line: 30, baseType: !311)
!310 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-cursor.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "ab02e4cb247e4dedbf49e30b4b02e193")
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_cursor_t", file: !106, line: 119, size: 9216, elements: !312)
!312 = !{!313, !1160, !1161, !1162, !1163, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1257, !1258}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !311, file: !106, line: 120, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_client_t", file: !316, line: 75, baseType: !317)
!316 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-client.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "3ff398fceb492cf43ecf501aafb6c1ac")
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_client_t", file: !318, line: 88, size: 3328, elements: !319)
!318 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-client-private.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "78e2a2bde865b5013301daa5bcbf2c0b")
!319 = !{!320, !325, !388, !389, !390, !501, !502, !503, !521, !1137, !1142, !1147, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !317, file: !318, line: 89, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_uri_t", file: !323, line: 95, baseType: !324)
!323 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-uri.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "ec8a82d2d8c002b1517fee400464e7cc")
!324 = !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_uri_t", file: !323, line: 95, flags: DIFlagFwdDecl)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "cluster", scope: !317, file: !318, line: 90, baseType: !326, size: 832, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_cluster_t", file: !327, line: 67, baseType: !328)
!327 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-cluster-private.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "30797c304da6f75cd02cc8c891239d5b")
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_cluster_t", file: !327, line: 53, size: 832, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337, !360, !370}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "operation_id", scope: !328, file: !327, line: 54, baseType: !222, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "request_id", scope: !328, file: !327, line: 55, baseType: !206, size: 32, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "sockettimeoutms", scope: !328, file: !327, line: 56, baseType: !169, size: 32, offset: 96)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "socketcheckintervalms", scope: !328, file: !327, line: 57, baseType: !169, size: 32, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !328, file: !327, line: 58, baseType: !321, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "requires_auth", scope: !328, file: !327, line: 59, baseType: !43, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !328, file: !327, line: 61, baseType: !314, size: 64, offset: 320)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !328, file: !327, line: 63, baseType: !338, size: 64, offset: 384)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_set_t", file: !340, line: 46, baseType: !341)
!340 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-set-private.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "3758cc3bf4abb8f2a2770ec5b1bbb51e")
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !340, line: 40, size: 320, elements: !342)
!342 = !{!343, !350, !353, !354, !359}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !341, file: !340, line: 41, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_set_item_t", file: !340, line: 38, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !340, line: 35, size: 128, elements: !347)
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !346, file: !340, line: 36, baseType: !169, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !346, file: !340, line: 37, baseType: !159, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "items_len", scope: !341, file: !340, line: 42, baseType: !351, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !352, line: 70, baseType: !294)
!352 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!353 = !DIDerivedType(tag: DW_TAG_member, name: "items_allocated", scope: !341, file: !340, line: 43, baseType: !351, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "dtor", scope: !341, file: !340, line: 44, baseType: !355, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_set_item_dtor", file: !340, line: 26, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !159, !159}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "dtor_ctx", scope: !341, file: !340, line: 45, baseType: !159, size: 64, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !328, file: !327, line: 64, baseType: !361, size: 320, offset: 448)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_array_t", file: !362, line: 28, baseType: !363)
!362 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-array-private.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "eae0618b708a8182274df626b7b67773")
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_array_t", file: !362, line: 31, size: 320, elements: !364)
!364 = !{!365, !366, !367, !368, !369}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !363, file: !362, line: 32, baseType: !351, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "element_alignment", scope: !363, file: !362, line: 33, baseType: !351, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "element_size", scope: !363, file: !362, line: 34, baseType: !351, size: 64, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !363, file: !362, line: 35, baseType: !351, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !363, file: !362, line: 36, baseType: !159, size: 64, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "scram_cache", scope: !328, file: !327, line: 66, baseType: !371, size: 64, offset: 768)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_scram_cache_t", file: !373, line: 50, baseType: !374)
!373 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-scram-private.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "fb161be2bdaf05d53d5e8e4bb4760b0a")
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_scram_cache_t", file: !373, line: 41, size: 1408, elements: !375)
!375 = !{!376, !377, !381, !382, !386, !387}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "hashed_password", scope: !374, file: !373, line: 43, baseType: !244, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "decoded_salt", scope: !374, file: !373, line: 44, baseType: !378, size: 512, offset: 64)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 512, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !374, file: !373, line: 45, baseType: !169, size: 32, offset: 576)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "client_key", scope: !374, file: !373, line: 47, baseType: !383, size: 256, offset: 608)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 256, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "server_key", scope: !374, file: !373, line: 48, baseType: !383, size: 256, offset: 864)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "salted_password", scope: !374, file: !373, line: 49, baseType: !383, size: 256, offset: 1120)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "in_exhaust", scope: !317, file: !318, line: 91, baseType: !233, size: 8, offset: 896)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "is_pooled", scope: !317, file: !318, line: 92, baseType: !233, size: 8, offset: 904)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "initiator", scope: !317, file: !318, line: 94, baseType: !391, size: 64, offset: 960)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_stream_initiator_t", file: !316, line: 98, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!395, !464, !466, !159, !491}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_stream_t", file: !397, line: 30, baseType: !398)
!397 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-stream.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "e8a3b99226da0b724dd3e01f845f3207")
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_stream_t", file: !397, line: 38, size: 1024, elements: !399)
!399 = !{!400, !401, !405, !409, !410, !425, !429, !438, !442, !446, !457, !458, !459, !460}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !398, file: !397, line: 39, baseType: !209, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !398, file: !397, line: 40, baseType: !402, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !395}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !398, file: !397, line: 41, baseType: !406, size: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!209, !395}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !398, file: !397, line: 42, baseType: !406, size: 64, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "writev", scope: !398, file: !397, line: 43, baseType: !411, size: 64, offset: 256)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!414, !395, !417, !351, !206}
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !415, line: 77, baseType: !416)
!415 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !172, line: 194, baseType: !224)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_iovec_t", file: !419, line: 51, baseType: !420)
!419 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-iovec.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "c3d4de8405f528f15caf2ab7f847ca12")
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !421, line: 26, size: 128, elements: !422)
!421 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!422 = !{!423, !424}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !420, file: !421, line: 28, baseType: !159, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !420, file: !421, line: 29, baseType: !351, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "readv", scope: !398, file: !397, line: 47, baseType: !426, size: 64, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!414, !395, !417, !351, !351, !206}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "setsockopt", scope: !398, file: !397, line: 52, baseType: !430, size: 64, offset: 384)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!209, !395, !209, !209, !159, !433}
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_socklen_t", file: !434, line: 51, baseType: !435)
!434 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-socket.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "3f61c4bf2a022ee0a3d85154a5bee770")
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !436, line: 274, baseType: !437)
!436 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !172, line: 210, baseType: !43)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "get_base_stream", scope: !398, file: !397, line: 57, baseType: !439, size: 64, offset: 448)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!395, !395}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "check_closed", scope: !398, file: !397, line: 58, baseType: !443, size: 64, offset: 512)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!233, !395}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !398, file: !397, line: 59, baseType: !447, size: 64, offset: 576)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!414, !450, !351, !206}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_stream_poll_t", file: !397, line: 36, baseType: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_stream_poll_t", file: !397, line: 32, size: 128, elements: !453)
!453 = !{!454, !455, !456}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !452, file: !397, line: 33, baseType: !395, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !452, file: !397, line: 34, baseType: !209, size: 32, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !452, file: !397, line: 35, baseType: !209, size: 32, offset: 96)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !398, file: !397, line: 62, baseType: !402, size: 64, offset: 640)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "timed_out", scope: !398, file: !397, line: 63, baseType: !443, size: 64, offset: 704)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "should_retry", scope: !398, file: !397, line: 64, baseType: !443, size: 64, offset: 768)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !398, file: !397, line: 65, baseType: !461, size: 192, offset: 832)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 192, elements: !462)
!462 = !{!463}
!463 = !DISubrange(count: 3)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_host_list_t", file: !469, line: 35, baseType: !470)
!469 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-host-list.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "5e2da30e912e909ed594a59683833f7d")
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_host_list_t", file: !469, line: 38, size: 4544, elements: !471)
!471 = !{!472, !474, !478, !482, !486, !487}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !470, file: !469, line: 39, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !470, file: !469, line: 40, baseType: !475, size: 2048, offset: 64)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !476)
!476 = !{!477}
!477 = !DISubrange(count: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "host_and_port", scope: !470, file: !469, line: 41, baseType: !479, size: 2096, offset: 2112)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2096, elements: !480)
!480 = !{!481}
!481 = !DISubrange(count: 262)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !470, file: !469, line: 42, baseType: !483, size: 16, offset: 4208)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !170, line: 25, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !172, line: 40, baseType: !485)
!485 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !470, file: !469, line: 43, baseType: !209, size: 32, offset: 4224)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !470, file: !469, line: 44, baseType: !488, size: 256, offset: 4288)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 256, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: 4)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "bson_error_t", file: !123, line: 521, baseType: !493, align: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_bson_error_t", file: !123, line: 517, size: 4096, elements: !494)
!494 = !{!495, !496, !497}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !493, file: !123, line: 518, baseType: !169, size: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !493, file: !123, line: 519, baseType: !169, size: 32, offset: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !493, file: !123, line: 520, baseType: !498, size: 4032, offset: 64)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 4032, elements: !499)
!499 = !{!500}
!500 = !DISubrange(count: 504)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "initiator_data", scope: !317, file: !318, line: 95, baseType: !159, size: 64, offset: 1024)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "use_ssl", scope: !317, file: !318, line: 98, baseType: !233, size: 8, offset: 1088)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_opts", scope: !317, file: !318, line: 99, baseType: !504, size: 832, offset: 1152)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_ssl_opt_t", file: !505, line: 29, baseType: !506)
!505 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-ssl.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "42c133e3ad18a70058177091190401fd")
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_ssl_opt_t", file: !505, line: 32, size: 832, elements: !507)
!507 = !{!508, !510, !511, !512, !513, !514, !515, !516, !517}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "pem_file", scope: !506, file: !505, line: 33, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "pem_pwd", scope: !506, file: !505, line: 34, baseType: !509, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "ca_file", scope: !506, file: !505, line: 35, baseType: !509, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ca_dir", scope: !506, file: !505, line: 36, baseType: !509, size: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "crl_file", scope: !506, file: !505, line: 37, baseType: !509, size: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "weak_cert_validation", scope: !506, file: !505, line: 38, baseType: !233, size: 8, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "allow_invalid_hostname", scope: !506, file: !505, line: 39, baseType: !233, size: 8, offset: 328)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !506, file: !505, line: 40, baseType: !159, size: 64, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !506, file: !505, line: 41, baseType: !518, size: 384, offset: 448)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 384, elements: !519)
!519 = !{!520}
!520 = !DISubrange(count: 6)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "topology", scope: !317, file: !318, line: 102, baseType: !522, size: 64, offset: 1984)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_topology_t", file: !96, line: 215, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_topology_t", file: !96, line: 107, size: 3264, elements: !525)
!525 = !{!526, !804, !805, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1058, !1059, !1090, !1091, !1092, !1093, !1094, !1095, !1104, !1106, !1107, !1118, !1119, !1120, !1121, !1122, !1136}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_shared_descr_", scope: !524, file: !96, line: 112, baseType: !527, size: 128)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "mc_shared_tpld", file: !96, line: 102, baseType: !528)
!528 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "mc_shared_tpld", file: !96, line: 96, size: 128, elements: !529)
!529 = !{!530, !539}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_sptr_", scope: !528, file: !96, line: 99, baseType: !531, size: 128)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_shared_ptr", file: !532, line: 58, baseType: !533)
!532 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-shared-private.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "bd017efd5e6206fb55a3ac7306a95f24")
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mongoc_shared_ptr", file: !532, line: 53, size: 128, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !533, file: !532, line: 55, baseType: !159, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_aux", scope: !533, file: !532, line: 57, baseType: !537, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_shared_ptr_aux", file: !532, line: 57, flags: DIFlagFwdDecl)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !528, file: !96, line: 101, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_topology_description_t", file: !543, line: 30, baseType: !544)
!543 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-topology-description.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "7216b55e1e9684b298b54af143edd9a6")
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_topology_description_t", file: !42, line: 39, size: 7168, elements: !545)
!545 = !{!546, !547, !548, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !803}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "topology_id", scope: !544, file: !42, line: 40, baseType: !214, size: 96)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "opened", scope: !544, file: !42, line: 41, baseType: !233, size: 8, offset: 96)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !544, file: !42, line: 42, baseType: !549, size: 32, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_topology_description_type_t", file: !42, line: 37, baseType: !41)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "heartbeat_msec", scope: !544, file: !42, line: 43, baseType: !222, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_servers_", scope: !544, file: !42, line: 44, baseType: !338, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "set_name", scope: !544, file: !42, line: 45, baseType: !244, size: 64, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "max_set_version", scope: !544, file: !42, line: 46, baseType: !222, size: 64, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "max_election_id", scope: !544, file: !42, line: 47, baseType: !214, size: 96, offset: 448)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "compatibility_error", scope: !544, file: !42, line: 48, baseType: !492, size: 4096, align: 64, offset: 576)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "max_server_id", scope: !544, file: !42, line: 49, baseType: !169, size: 32, offset: 4672)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "max_hosts", scope: !544, file: !42, line: 50, baseType: !206, size: 32, offset: 4704)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "stale", scope: !544, file: !42, line: 51, baseType: !233, size: 8, offset: 4736)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "rand_seed", scope: !544, file: !42, line: 52, baseType: !43, size: 32, offset: 4768)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_time", scope: !544, file: !42, line: 56, baseType: !165, size: 1024, align: 1024, offset: 5120)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "session_timeout_minutes", scope: !544, file: !42, line: 60, baseType: !222, size: 64, offset: 6144)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "apm_callbacks", scope: !544, file: !42, line: 62, baseType: !563, size: 768, offset: 6208)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_apm_callbacks_t", file: !564, line: 47, baseType: !565)
!564 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-apm.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "7d75bdfe24fe6c33f2e35e978734250d")
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_apm_callbacks_t", file: !566, line: 30, size: 768, elements: !567)
!566 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-apm-private.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "38567e68b1732b6834d5d941e9d55422")
!567 = !{!568, !590, !611, !635, !694, !707, !720, !734, !746, !758, !771, !788}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !565, file: !566, line: 31, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_apm_command_started_cb_t", file: !564, line: 319, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !573}
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_apm_command_started_t", file: !564, line: 54, baseType: !576)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_apm_command_started_t", file: !566, line: 49, size: 704, elements: !577)
!577 = !{!578, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !576, file: !566, line: 50, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "command_owned", scope: !576, file: !566, line: 51, baseType: !233, size: 8, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "database_name", scope: !576, file: !566, line: 52, baseType: !509, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "command_name", scope: !576, file: !566, line: 53, baseType: !509, size: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "request_id", scope: !576, file: !566, line: 54, baseType: !222, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "operation_id", scope: !576, file: !566, line: 55, baseType: !222, size: 64, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !576, file: !566, line: 56, baseType: !466, size: 64, offset: 384)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "server_id", scope: !576, file: !566, line: 57, baseType: !169, size: 32, offset: 448)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "service_id", scope: !576, file: !566, line: 58, baseType: !214, size: 96, offset: 480)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "server_connection_id", scope: !576, file: !566, line: 59, baseType: !222, size: 64, offset: 576)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !576, file: !566, line: 60, baseType: !159, size: 64, offset: 640)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "succeeded", scope: !565, file: !566, line: 32, baseType: !591, size: 64, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_apm_command_succeeded_cb_t", file: !564, line: 321, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !595}
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !597)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_apm_command_succeeded_t", file: !564, line: 55, baseType: !598)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_apm_command_succeeded_t", file: !566, line: 63, size: 704, elements: !599)
!599 = !{!600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !598, file: !566, line: 64, baseType: !222, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !598, file: !566, line: 65, baseType: !579, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "reply_owned", scope: !598, file: !566, line: 66, baseType: !233, size: 8, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "command_name", scope: !598, file: !566, line: 67, baseType: !509, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "request_id", scope: !598, file: !566, line: 68, baseType: !222, size: 64, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "operation_id", scope: !598, file: !566, line: 69, baseType: !222, size: 64, offset: 320)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !598, file: !566, line: 70, baseType: !466, size: 64, offset: 384)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "server_id", scope: !598, file: !566, line: 71, baseType: !169, size: 32, offset: 448)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "service_id", scope: !598, file: !566, line: 72, baseType: !214, size: 96, offset: 480)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "server_connection_id", scope: !598, file: !566, line: 73, baseType: !222, size: 64, offset: 576)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !598, file: !566, line: 74, baseType: !159, size: 64, offset: 640)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !565, file: !566, line: 33, baseType: !612, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_apm_command_failed_cb_t", file: !564, line: 323, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_apm_command_failed_t", file: !564, line: 56, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_apm_command_failed_t", file: !566, line: 77, size: 768, elements: !620)
!620 = !{!621, !622, !623, !626, !627, !628, !629, !630, !631, !632, !633, !634}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !619, file: !566, line: 78, baseType: !222, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "command_name", scope: !619, file: !566, line: 79, baseType: !509, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !619, file: !566, line: 80, baseType: !624, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !619, file: !566, line: 81, baseType: !579, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "reply_owned", scope: !619, file: !566, line: 82, baseType: !233, size: 8, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "request_id", scope: !619, file: !566, line: 83, baseType: !222, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "operation_id", scope: !619, file: !566, line: 84, baseType: !222, size: 64, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !619, file: !566, line: 85, baseType: !466, size: 64, offset: 448)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "server_id", scope: !619, file: !566, line: 86, baseType: !169, size: 32, offset: 512)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "service_id", scope: !619, file: !566, line: 87, baseType: !214, size: 96, offset: 544)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "server_connection_id", scope: !619, file: !566, line: 88, baseType: !222, size: 64, offset: 640)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !619, file: !566, line: 89, baseType: !159, size: 64, offset: 704)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "server_changed", scope: !565, file: !566, line: 34, baseType: !636, size: 64, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_apm_server_changed_cb_t", file: !564, line: 325, baseType: !637)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !640}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_apm_server_changed_t", file: !564, line: 63, baseType: !643)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_apm_server_changed_t", file: !566, line: 96, size: 384, elements: !644)
!644 = !{!645, !646, !647, !692, !693}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !643, file: !566, line: 97, baseType: !466, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "topology_id", scope: !643, file: !566, line: 98, baseType: !214, size: 96, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "previous_description", scope: !643, file: !566, line: 99, baseType: !648, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_server_description_t", file: !651, line: 30, baseType: !652)
!651 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-server-description.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "cc8bf5c6bc4fdc600a2455ea4c236259")
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_server_description_t", file: !53, line: 64, size: 19456, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !690, !691}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !652, file: !53, line: 65, baseType: !169, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !652, file: !53, line: 66, baseType: !468, size: 4544, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "round_trip_time_msec", scope: !652, file: !53, line: 67, baseType: !222, size: 64, offset: 4608)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time_usec", scope: !652, file: !53, line: 68, baseType: !222, size: 64, offset: 4672)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "last_hello_response", scope: !652, file: !53, line: 69, baseType: !165, size: 1024, align: 1024, offset: 5120)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "has_hello_response", scope: !652, file: !53, line: 70, baseType: !233, size: 8, offset: 6144)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "hello_ok", scope: !652, file: !53, line: 71, baseType: !233, size: 8, offset: 6152)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "connection_address", scope: !652, file: !53, line: 72, baseType: !509, size: 64, offset: 6208)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "me", scope: !652, file: !53, line: 77, baseType: !509, size: 64, offset: 6272)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "opened", scope: !652, file: !53, line: 80, baseType: !233, size: 8, offset: 6336)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "set_name", scope: !652, file: !53, line: 82, baseType: !509, size: 64, offset: 6400)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !652, file: !53, line: 83, baseType: !492, size: 4096, align: 64, offset: 6464)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !652, file: !53, line: 84, baseType: !667, size: 32, offset: 10560)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_server_description_type_t", file: !53, line: 62, baseType: !52)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "min_wire_version", scope: !652, file: !53, line: 86, baseType: !206, size: 32, offset: 10592)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "max_wire_version", scope: !652, file: !53, line: 87, baseType: !206, size: 32, offset: 10624)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "max_msg_size", scope: !652, file: !53, line: 88, baseType: !206, size: 32, offset: 10656)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "max_bson_obj_size", scope: !652, file: !53, line: 89, baseType: !206, size: 32, offset: 10688)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_batch_size", scope: !652, file: !53, line: 90, baseType: !206, size: 32, offset: 10720)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "session_timeout_minutes", scope: !652, file: !53, line: 91, baseType: !222, size: 64, offset: 10752)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "hosts", scope: !652, file: !53, line: 95, baseType: !165, size: 1024, align: 1024, offset: 11264)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "passives", scope: !652, file: !53, line: 96, baseType: !165, size: 1024, align: 1024, offset: 12288)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "arbiters", scope: !652, file: !53, line: 97, baseType: !165, size: 1024, align: 1024, offset: 13312)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !652, file: !53, line: 99, baseType: !165, size: 1024, align: 1024, offset: 14336)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "current_primary", scope: !652, file: !53, line: 100, baseType: !509, size: 64, offset: 15360)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "set_version", scope: !652, file: !53, line: 101, baseType: !222, size: 64, offset: 15424)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "election_id", scope: !652, file: !53, line: 102, baseType: !214, size: 96, offset: 15488)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "last_write_date_ms", scope: !652, file: !53, line: 103, baseType: !222, size: 64, offset: 15616)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "compressors", scope: !652, file: !53, line: 105, baseType: !165, size: 1024, align: 1024, offset: 16384)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "topology_version", scope: !652, file: !53, line: 106, baseType: !165, size: 1024, align: 1024, offset: 17408)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !652, file: !53, line: 120, baseType: !169, size: 32, offset: 18432)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_generation_map_", scope: !652, file: !53, line: 126, baseType: !686, size: 64, offset: 18496)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_generation_map_t", file: !688, line: 26, baseType: !689)
!688 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-generation-map-private.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "1b6851a7511306db23d17244ea8cae59")
!689 = !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_generation_map", file: !688, line: 26, flags: DIFlagFwdDecl)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "service_id", scope: !652, file: !53, line: 127, baseType: !214, size: 96, offset: 18560)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "server_connection_id", scope: !652, file: !53, line: 128, baseType: !222, size: 64, offset: 18688)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "new_description", scope: !643, file: !566, line: 100, baseType: !648, size: 64, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !643, file: !566, line: 101, baseType: !159, size: 64, offset: 320)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "server_opening", scope: !565, file: !566, line: 35, baseType: !695, size: 64, offset: 256)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_apm_server_opening_cb_t", file: !564, line: 327, baseType: !696)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{null, !699}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !701)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_apm_server_opening_t", file: !564, line: 64, baseType: !702)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_apm_server_opening_t", file: !566, line: 104, size: 256, elements: !703)
!703 = !{!704, !705, !706}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !702, file: !566, line: 105, baseType: !466, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "topology_id", scope: !702, file: !566, line: 106, baseType: !214, size: 96, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !702, file: !566, line: 107, baseType: !159, size: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "server_closed", scope: !565, file: !566, line: 36, baseType: !708, size: 64, offset: 320)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_apm_server_closed_cb_t", file: !564, line: 329, baseType: !709)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !712}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_apm_server_closed_t", file: !564, line: 65, baseType: !715)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_apm_server_closed_t", file: !566, line: 110, size: 256, elements: !716)
!716 = !{!717, !718, !719}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !715, file: !566, line: 111, baseType: !466, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "topology_id", scope: !715, file: !566, line: 112, baseType: !214, size: 96, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !715, file: !566, line: 113, baseType: !159, size: 64, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "topology_changed", scope: !565, file: !566, line: 37, baseType: !721, size: 64, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_apm_topology_changed_cb_t", file: !564, line: 331, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !725}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !727)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_apm_topology_changed_t", file: !564, line: 66, baseType: !728)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_apm_topology_changed_t", file: !566, line: 116, size: 320, elements: !729)
!729 = !{!730, !731, !732, !733}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "topology_id", scope: !728, file: !566, line: 117, baseType: !214, size: 96)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "previous_description", scope: !728, file: !566, line: 118, baseType: !540, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "new_description", scope: !728, file: !566, line: 119, baseType: !540, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !728, file: !566, line: 120, baseType: !159, size: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "topology_opening", scope: !565, file: !566, line: 38, baseType: !735, size: 64, offset: 448)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_apm_topology_opening_cb_t", file: !564, line: 333, baseType: !736)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !739}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_apm_topology_opening_t", file: !564, line: 67, baseType: !742)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_apm_topology_opening_t", file: !566, line: 123, size: 192, elements: !743)
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "topology_id", scope: !742, file: !566, line: 124, baseType: !214, size: 96)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !742, file: !566, line: 125, baseType: !159, size: 64, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "topology_closed", scope: !565, file: !566, line: 39, baseType: !747, size: 64, offset: 512)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_apm_topology_closed_cb_t", file: !564, line: 335, baseType: !748)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{null, !751}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !753)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_apm_topology_closed_t", file: !564, line: 68, baseType: !754)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_apm_topology_closed_t", file: !566, line: 128, size: 192, elements: !755)
!755 = !{!756, !757}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "topology_id", scope: !754, file: !566, line: 129, baseType: !214, size: 96)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !754, file: !566, line: 130, baseType: !159, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "server_heartbeat_started", scope: !565, file: !566, line: 40, baseType: !759, size: 64, offset: 576)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_apm_server_heartbeat_started_cb_t", file: !564, line: 337, baseType: !760)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{null, !763}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !765)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_apm_server_heartbeat_started_t", file: !564, line: 70, baseType: !766)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_apm_server_heartbeat_started_t", file: !566, line: 133, size: 192, elements: !767)
!767 = !{!768, !769, !770}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !766, file: !566, line: 134, baseType: !466, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !766, file: !566, line: 135, baseType: !159, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !766, file: !566, line: 136, baseType: !233, size: 8, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "server_heartbeat_succeeded", scope: !565, file: !566, line: 41, baseType: !772, size: 64, offset: 640)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_apm_server_heartbeat_succeeded_cb_t", file: !564, line: 339, baseType: !773)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{null, !776}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !778)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_apm_server_heartbeat_succeeded_t", file: !564, line: 72, baseType: !779)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_apm_server_heartbeat_succeeded_t", file: !566, line: 139, size: 320, elements: !780)
!780 = !{!781, !782, !785, !786, !787}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "duration_usec", scope: !779, file: !566, line: 140, baseType: !222, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !779, file: !566, line: 141, baseType: !783, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !779, file: !566, line: 142, baseType: !466, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !779, file: !566, line: 143, baseType: !159, size: 64, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !779, file: !566, line: 144, baseType: !233, size: 8, offset: 256)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "server_heartbeat_failed", scope: !565, file: !566, line: 42, baseType: !789, size: 64, offset: 704)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_apm_server_heartbeat_failed_cb_t", file: !564, line: 341, baseType: !790)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !793}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !795)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_apm_server_heartbeat_failed_t", file: !564, line: 74, baseType: !796)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_apm_server_heartbeat_failed_t", file: !566, line: 147, size: 320, elements: !797)
!797 = !{!798, !799, !800, !801, !802}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "duration_usec", scope: !796, file: !566, line: 148, baseType: !222, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !796, file: !566, line: 149, baseType: !624, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !796, file: !566, line: 150, baseType: !466, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !796, file: !566, line: 151, baseType: !159, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !796, file: !566, line: 152, baseType: !233, size: 8, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "apm_context", scope: !544, file: !42, line: 63, baseType: !159, size: 64, offset: 6976)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !524, file: !96, line: 118, baseType: !321, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "scanner", scope: !524, file: !96, line: 119, baseType: !806, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_topology_scanner_t", file: !90, line: 145, baseType: !808)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mongoc_topology_scanner", file: !90, line: 110, size: 11264, elements: !809)
!809 = !{!810, !904, !905, !981, !982, !983, !1013, !1014, !1016, !1017, !1018, !1023, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1047}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !808, file: !90, line: 111, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_async_t", file: !77, line: 33, baseType: !813)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_async", file: !77, line: 29, size: 192, elements: !814)
!814 = !{!815, !902, !903}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "cmds", scope: !813, file: !77, line: 30, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_async_cmd", file: !67, line: 44, size: 9216, elements: !818)
!818 = !{!819, !820, !821, !823, !824, !829, !835, !836, !842, !843, !844, !845, !846, !847, !848, !849, !864, !865, !866, !867, !868, !873, !874, !875, !876, !900, !901}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !817, file: !67, line: 45, baseType: !395, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !817, file: !67, line: 47, baseType: !811, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !817, file: !67, line: 48, baseType: !822, size: 32, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_async_cmd_state_t", file: !67, line: 42, baseType: !66)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !817, file: !67, line: 49, baseType: !209, size: 32, offset: 160)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "initiator", scope: !817, file: !67, line: 50, baseType: !825, size: 64, offset: 192)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_async_cmd_initiate_t", file: !77, line: 48, baseType: !826)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!395, !816}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !817, file: !67, line: 51, baseType: !830, size: 64, offset: 256)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_async_cmd_setup_t", file: !77, line: 51, baseType: !831)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!209, !395, !834, !159, !206, !491}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "setup_ctx", scope: !817, file: !67, line: 52, baseType: !159, size: 64, offset: 320)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !817, file: !67, line: 53, baseType: !837, size: 64, offset: 384)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_async_cmd_cb_t", file: !77, line: 43, baseType: !838)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{null, !816, !841, !783, !222}
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_async_cmd_result_t", file: !77, line: 41, baseType: !76)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !817, file: !67, line: 54, baseType: !159, size: 64, offset: 448)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !817, file: !67, line: 55, baseType: !492, size: 4096, align: 64, offset: 512)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "initiate_delay_ms", scope: !817, file: !67, line: 56, baseType: !222, size: 64, offset: 4608)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "connect_started", scope: !817, file: !67, line: 57, baseType: !222, size: 64, offset: 4672)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_started", scope: !817, file: !67, line: 58, baseType: !222, size: 64, offset: 4736)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_msec", scope: !817, file: !67, line: 59, baseType: !222, size: 64, offset: 4800)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !817, file: !67, line: 60, baseType: !165, size: 1024, align: 1024, offset: 5120)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !817, file: !67, line: 61, baseType: !850, size: 320, offset: 6144)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_buffer_t", file: !851, line: 30, baseType: !852)
!851 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-buffer-private.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "342ffe25b74e2f2366eb85a676a52cfe")
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_buffer_t", file: !851, line: 33, size: 320, elements: !853)
!853 = !{!854, !855, !856, !857, !863}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !852, file: !851, line: 34, baseType: !250, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !852, file: !851, line: 35, baseType: !351, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !852, file: !851, line: 36, baseType: !351, size: 64, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "realloc_func", scope: !852, file: !851, line: 37, baseType: !858, size: 64, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "bson_realloc_func", file: !859, line: 31, baseType: !860)
!859 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/linux-ubuntu22.04-zen2/clang-18.0.0/libbson-1.24.4-3emagvezomjldhykavhwzeddzez6p3tl/include/libbson-1.0/bson/bson-memory.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build", checksumkind: CSK_MD5, checksum: "bd1060bd64476ebf607005ba6da351c4")
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!159, !159, !351, !159}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "realloc_data", scope: !852, file: !851, line: 38, baseType: !159, size: 64, offset: 256)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "iovec", scope: !817, file: !67, line: 62, baseType: !417, size: 64, offset: 6464)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "niovec", scope: !817, file: !67, line: 63, baseType: !351, size: 64, offset: 6528)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_written", scope: !817, file: !67, line: 64, baseType: !351, size: 64, offset: 6592)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_to_read", scope: !817, file: !67, line: 65, baseType: !351, size: 64, offset: 6656)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !817, file: !67, line: 66, baseType: !869, size: 64, offset: 6720)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcd_rpc_message", file: !871, line: 30, baseType: !872)
!871 = !DIFile(filename: "src/libmongoc/src/mongoc/mcd-rpc.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "115a00b3d2e492a038f88a549d13e0b8")
!872 = !DICompositeType(tag: DW_TAG_union_type, name: "_mcd_rpc_message", file: !871, line: 30, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !817, file: !67, line: 67, baseType: !165, size: 1024, align: 1024, offset: 7168)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "reply_needs_cleanup", scope: !817, file: !67, line: 68, baseType: !233, size: 8, offset: 8192)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !817, file: !67, line: 69, baseType: !244, size: 64, offset: 8256)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "dns_result", scope: !817, file: !67, line: 70, baseType: !877, size: 64, offset: 8320)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !879, line: 565, size: 384, elements: !880)
!879 = !DIFile(filename: "/usr/include/netdb.h", directory: "", checksumkind: CSK_MD5, checksum: "dd84cdc2a8dcb66c232d326e9ca8b469")
!880 = !{!881, !882, !883, !884, !885, !886, !898, !899}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !878, file: !879, line: 567, baseType: !209, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !878, file: !879, line: 568, baseType: !209, size: 32, offset: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !878, file: !879, line: 569, baseType: !209, size: 32, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !878, file: !879, line: 570, baseType: !209, size: 32, offset: 96)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !878, file: !879, line: 571, baseType: !435, size: 32, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !878, file: !879, line: 572, baseType: !887, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !889, line: 180, size: 128, elements: !890)
!889 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!890 = !{!891, !894}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !888, file: !889, line: 182, baseType: !892, size: 16)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !893, line: 28, baseType: !485)
!893 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!894 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !888, file: !889, line: 183, baseType: !895, size: 112, offset: 16)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !896)
!896 = !{!897}
!897 = !DISubrange(count: 14)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !878, file: !879, line: 573, baseType: !244, size: 64, offset: 256)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !878, file: !879, line: 574, baseType: !877, size: 64, offset: 320)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !817, file: !67, line: 72, baseType: !816, size: 64, offset: 8384)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !817, file: !67, line: 73, baseType: !816, size: 64, offset: 8448)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "ncmds", scope: !813, file: !77, line: 31, baseType: !351, size: 64, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "request_id", scope: !813, file: !77, line: 32, baseType: !169, size: 32, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "connect_timeout_msec", scope: !808, file: !90, line: 112, baseType: !222, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !808, file: !90, line: 113, baseType: !906, size: 64, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_topology_scanner_node_t", file: !90, line: 91, baseType: !908)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mongoc_topology_scanner_node", file: !90, line: 51, size: 14336, elements: !909)
!909 = !{!910, !911, !912, !913, !914, !915, !916, !917, !919, !921, !922, !923, !924, !925, !926, !927, !934, !935, !936, !979}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !908, file: !90, line: 52, baseType: !169, size: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !908, file: !90, line: 54, baseType: !395, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "last_used", scope: !908, file: !90, line: 56, baseType: !222, size: 64, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "last_failed", scope: !908, file: !90, line: 61, baseType: !222, size: 64, offset: 192)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "has_auth", scope: !908, file: !90, line: 62, baseType: !233, size: 8, offset: 256)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "hello_ok", scope: !908, file: !90, line: 63, baseType: !233, size: 8, offset: 264)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !908, file: !90, line: 64, baseType: !468, size: 4544, offset: 320)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !908, file: !90, line: 65, baseType: !918, size: 64, offset: 4864)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !908, file: !90, line: 67, baseType: !920, size: 64, offset: 4928)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !908, file: !90, line: 68, baseType: !920, size: 64, offset: 4992)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "retired", scope: !908, file: !90, line: 70, baseType: !233, size: 8, offset: 5056)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "last_error", scope: !908, file: !90, line: 71, baseType: !492, size: 4096, align: 64, offset: 5120)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "dns_results", scope: !908, file: !90, line: 77, baseType: !877, size: 64, offset: 9216)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "successful_dns_result", scope: !908, file: !90, line: 78, baseType: !877, size: 64, offset: 9280)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "last_dns_cache", scope: !908, file: !90, line: 79, baseType: !222, size: 64, offset: 9344)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_supported_mechs", scope: !908, file: !90, line: 83, baseType: !928, size: 16, offset: 9408)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_handshake_sasl_supported_mechs_t", file: !929, line: 126, baseType: !930)
!929 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-handshake-private.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "ddeb85cede4d3ca8a0e920210f380e09")
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !929, line: 123, size: 16, elements: !931)
!931 = !{!932, !933}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "scram_sha_256", scope: !930, file: !929, line: 124, baseType: !233, size: 8)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "scram_sha_1", scope: !930, file: !929, line: 125, baseType: !233, size: 8, offset: 8)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "negotiated_sasl_supported_mechs", scope: !908, file: !90, line: 84, baseType: !233, size: 8, offset: 9424)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "speculative_auth_response", scope: !908, file: !90, line: 85, baseType: !165, size: 1024, align: 1024, offset: 10240)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "scram", scope: !908, file: !90, line: 86, baseType: !937, size: 2368, offset: 11264)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_scram_t", file: !373, line: 71, baseType: !938)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_scram_t", file: !373, line: 52, size: 2368, elements: !939)
!939 = !{!940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !953, !954, !955, !956, !957, !978}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !938, file: !373, line: 53, baseType: !209, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !938, file: !373, line: 54, baseType: !244, size: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !938, file: !373, line: 55, baseType: !244, size: 64, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "hashed_password", scope: !938, file: !373, line: 56, baseType: !244, size: 64, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "decoded_salt", scope: !938, file: !373, line: 57, baseType: !378, size: 512, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !938, file: !373, line: 58, baseType: !169, size: 32, offset: 768)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "client_key", scope: !938, file: !373, line: 59, baseType: !383, size: 256, offset: 800)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "server_key", scope: !938, file: !373, line: 60, baseType: !383, size: 256, offset: 1056)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "salted_password", scope: !938, file: !373, line: 61, baseType: !383, size: 256, offset: 1312)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_nonce", scope: !938, file: !373, line: 62, baseType: !950, size: 384, offset: 1568)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !951)
!951 = !{!952}
!952 = !DISubrange(count: 48)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_nonce_len", scope: !938, file: !373, line: 63, baseType: !206, size: 32, offset: 1952)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "auth_message", scope: !938, file: !373, line: 64, baseType: !250, size: 64, offset: 1984)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "auth_messagemax", scope: !938, file: !373, line: 65, baseType: !169, size: 32, offset: 2048)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "auth_messagelen", scope: !938, file: !373, line: 66, baseType: !169, size: 32, offset: 2080)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "crypto", scope: !938, file: !373, line: 68, baseType: !958, size: 192, offset: 2112)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_crypto_t", file: !85, line: 30, baseType: !959)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_crypto_t", file: !85, line: 36, size: 192, elements: !960)
!960 = !{!961, !971, !976}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "hmac", scope: !959, file: !85, line: 37, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{null, !965, !966, !209, !968, !209, !970}
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !959, file: !85, line: 43, baseType: !972, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!233, !965, !968, !975, !970}
!975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm", scope: !959, file: !85, line: 47, baseType: !977, size: 32, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_crypto_hash_algorithm_t", file: !85, line: 34, baseType: !84)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !938, file: !373, line: 70, baseType: !371, size: 64, offset: 2304)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_sd", scope: !908, file: !90, line: 90, baseType: !980, size: 64, offset: 13632)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "hello_cmd", scope: !808, file: !90, line: 114, baseType: !165, size: 1024, align: 1024, offset: 1024)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_hello_cmd", scope: !808, file: !90, line: 115, baseType: !165, size: 1024, align: 1024, offset: 2048)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_cmd_mtx", scope: !808, file: !90, line: 116, baseType: !984, size: 320, offset: 3072)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !985, line: 72, baseType: !986)
!985 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!986 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !985, line: 67, size: 320, elements: !987)
!987 = !{!988, !1008, !1012}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !986, file: !985, line: 69, baseType: !989, size: 320)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !990, line: 22, size: 320, elements: !991)
!990 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!991 = !{!992, !993, !994, !995, !996, !997, !999, !1000}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !989, file: !990, line: 24, baseType: !209, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !989, file: !990, line: 25, baseType: !43, size: 32, offset: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !989, file: !990, line: 26, baseType: !209, size: 32, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !989, file: !990, line: 28, baseType: !43, size: 32, offset: 96)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !989, file: !990, line: 32, baseType: !209, size: 32, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !989, file: !990, line: 34, baseType: !998, size: 16, offset: 160)
!998 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !989, file: !990, line: 35, baseType: !998, size: 16, offset: 176)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !989, file: !990, line: 36, baseType: !1001, size: 128, offset: 192)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !1002, line: 55, baseType: !1003)
!1002 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !1002, line: 51, size: 128, elements: !1004)
!1004 = !{!1005, !1007}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !1003, file: !1002, line: 53, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !1003, file: !1002, line: 54, baseType: !1006, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !986, file: !985, line: 70, baseType: !1009, size: 320)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !1010)
!1010 = !{!1011}
!1011 = !DISubrange(count: 40)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !986, file: !985, line: 71, baseType: !224, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_cmd", scope: !808, file: !90, line: 117, baseType: !579, size: 64, offset: 3392)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_state", scope: !808, file: !90, line: 118, baseType: !1015, size: 32, offset: 3456)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "handshake_state_t", file: !90, line: 108, baseType: !89)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_time", scope: !808, file: !90, line: 119, baseType: !165, size: 1024, align: 1024, offset: 4096)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "appname", scope: !808, file: !90, line: 120, baseType: !509, size: 64, offset: 5120)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "setup_err_cb", scope: !808, file: !90, line: 122, baseType: !1019, size: 64, offset: 5184)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_topology_scanner_setup_err_cb_t", file: !90, line: 38, baseType: !1020)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{null, !169, !159, !624}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !808, file: !90, line: 123, baseType: !1024, size: 64, offset: 5248)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_topology_scanner_cb_t", file: !90, line: 41, baseType: !1025)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !169, !783, !222, !159, !624}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "cb_data", scope: !808, file: !90, line: 124, baseType: !159, size: 64, offset: 5312)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !808, file: !90, line: 125, baseType: !464, size: 64, offset: 5376)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !808, file: !90, line: 126, baseType: !830, size: 64, offset: 5440)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "initiator", scope: !808, file: !90, line: 127, baseType: !391, size: 64, offset: 5504)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "initiator_context", scope: !808, file: !90, line: 128, baseType: !159, size: 64, offset: 5568)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !808, file: !90, line: 129, baseType: !492, size: 4096, align: 64, offset: 5632)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_opts", scope: !808, file: !90, line: 132, baseType: !1035, size: 64, offset: 9728)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "apm_callbacks", scope: !808, file: !90, line: 135, baseType: !563, size: 768, offset: 9792)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "apm_context", scope: !808, file: !90, line: 136, baseType: !159, size: 64, offset: 10560)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "dns_cache_timeout_ms", scope: !808, file: !90, line: 137, baseType: !222, size: 64, offset: 10624)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "negotiate_sasl_supported_mechs", scope: !808, file: !90, line: 139, baseType: !233, size: 8, offset: 10688)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "bypass_cooldown", scope: !808, file: !90, line: 140, baseType: !233, size: 8, offset: 10696)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "speculative_authentication", scope: !808, file: !90, line: 141, baseType: !233, size: 8, offset: 10704)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "api", scope: !808, file: !90, line: 143, baseType: !1043, size: 64, offset: 10752)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_server_api_t", file: !1045, line: 31, baseType: !1046)
!1045 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-server-api.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "78dfc9819e8f8bc83a71b53404eadf3c")
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_server_api_t", file: !1045, line: 31, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "loadbalanced", scope: !808, file: !90, line: 144, baseType: !233, size: 8, offset: 10816)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "server_selection_try_once", scope: !524, file: !96, line: 120, baseType: !233, size: 8, offset: 256)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "last_scan", scope: !524, file: !96, line: 122, baseType: !222, size: 64, offset: 320)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "local_threshold_msec", scope: !524, file: !96, line: 123, baseType: !222, size: 64, offset: 384)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "connect_timeout_msec", scope: !524, file: !96, line: 124, baseType: !222, size: 64, offset: 448)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "server_selection_timeout_msec", scope: !524, file: !96, line: 125, baseType: !222, size: 64, offset: 512)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "min_heartbeat_frequency_msec", scope: !524, file: !96, line: 127, baseType: !222, size: 64, offset: 576)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "srv_polling_rescan_interval_ms", scope: !524, file: !96, line: 131, baseType: !222, size: 64, offset: 640)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "srv_polling_last_scan_ms", scope: !524, file: !96, line: 132, baseType: !222, size: 64, offset: 704)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "srv_polling_thread", scope: !524, file: !96, line: 134, baseType: !1057, size: 64, offset: 768)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !985, line: 27, baseType: !294)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "srv_polling_mtx", scope: !524, file: !96, line: 135, baseType: !984, size: 320, offset: 832)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "srv_polling_cond", scope: !524, file: !96, line: 136, baseType: !1060, size: 384, offset: 1152)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !985, line: 80, baseType: !1061)
!1061 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !985, line: 75, size: 384, elements: !1062)
!1062 = !{!1063, !1087, !1088}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !1061, file: !985, line: 77, baseType: !1064, size: 384)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !1002, line: 94, size: 384, elements: !1065)
!1065 = !{!1066, !1078, !1079, !1083, !1084, !1085, !1086}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !1064, file: !1002, line: 96, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "__atomic_wide_counter", file: !1068, line: 33, baseType: !1069)
!1068 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h", directory: "", checksumkind: CSK_MD5, checksum: "2708e6e61e266abad2d765ccef838dbe")
!1069 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !1068, line: 25, size: 64, elements: !1070)
!1070 = !{!1071, !1073}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "__value64", scope: !1069, file: !1068, line: 27, baseType: !1072, size: 64)
!1072 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "__value32", scope: !1069, file: !1068, line: 32, baseType: !1074, size: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !1068, line: 28, size: 64, elements: !1075)
!1075 = !{!1076, !1077}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !1074, file: !1068, line: 30, baseType: !43, size: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !1074, file: !1068, line: 31, baseType: !43, size: 32, offset: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !1064, file: !1002, line: 97, baseType: !1067, size: 64, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !1064, file: !1002, line: 98, baseType: !1080, size: 64, offset: 128)
!1080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 64, elements: !1081)
!1081 = !{!1082}
!1082 = !DISubrange(count: 2)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !1064, file: !1002, line: 99, baseType: !1080, size: 64, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !1064, file: !1002, line: 100, baseType: !43, size: 32, offset: 256)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !1064, file: !1002, line: 101, baseType: !43, size: 32, offset: 288)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !1064, file: !1002, line: 102, baseType: !1080, size: 64, offset: 320)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1061, file: !985, line: 78, baseType: !950, size: 384)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1061, file: !985, line: 79, baseType: !1089, size: 64)
!1089 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "scanner_state", scope: !524, file: !96, line: 143, baseType: !209, size: 32, offset: 1536)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "tpld_modification_mtx", scope: !524, file: !96, line: 155, baseType: !984, size: 320, offset: 1600)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "cond_client", scope: !524, file: !96, line: 165, baseType: !1060, size: 384, offset: 1920)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "single_threaded", scope: !524, file: !96, line: 167, baseType: !233, size: 8, offset: 2304)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "stale", scope: !524, file: !96, line: 168, baseType: !233, size: 8, offset: 2312)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "session_pool", scope: !524, file: !96, line: 170, baseType: !1096, size: 64, offset: 2368)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_server_session_pool", file: !96, line: 75, baseType: !1097)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mongoc_server_session_pool", file: !96, line: 75, size: 64, elements: !1098)
!1098 = !{!1099}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !1097, file: !96, line: 75, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_ts_pool", file: !1102, line: 96, baseType: !1103)
!1102 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-ts-pool-private.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "f2a011fb6062a61d14cca87b7e3acd67")
!1103 = !DICompositeType(tag: DW_TAG_structure_type, name: "mongoc_ts_pool", file: !1102, line: 96, flags: DIFlagFwdDecl)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "cse_state", scope: !524, file: !96, line: 173, baseType: !1105, size: 32, offset: 2432)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_topology_cse_state_t", file: !96, line: 52, baseType: !95)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "is_srv_polling", scope: !524, file: !96, line: 174, baseType: !233, size: 8, offset: 2464)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "clientSideEncryption", scope: !524, file: !96, line: 198, baseType: !1108, size: 128, offset: 2496)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !524, file: !96, line: 191, size: 128, elements: !1109)
!1109 = !{!1110}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "autoOptions", scope: !1108, file: !96, line: 197, baseType: !1111, size: 128)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1108, file: !96, line: 192, size: 128, elements: !1112)
!1112 = !{!1113}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "extraOptions", scope: !1111, file: !96, line: 196, baseType: !1114, size: 128)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1111, file: !96, line: 193, size: 128, elements: !1115)
!1115 = !{!1116, !1117}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "cryptSharedLibPath", scope: !1114, file: !96, line: 194, baseType: !244, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "cryptSharedLibRequired", scope: !1114, file: !96, line: 195, baseType: !233, size: 8, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "encrypted_fields_map", scope: !524, file: !96, line: 201, baseType: !579, size: 64, offset: 2624)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "server_monitors", scope: !524, file: !96, line: 204, baseType: !338, size: 64, offset: 2688)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "rtt_monitors", scope: !524, file: !96, line: 205, baseType: !338, size: 64, offset: 2752)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "apm_mutex", scope: !524, file: !96, line: 206, baseType: !984, size: 320, offset: 2816)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "rr_resolver", scope: !524, file: !96, line: 209, baseType: !1123, size: 64, offset: 3136)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mongoc_rr_resolver_fn", file: !96, line: 84, baseType: !1124)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!233, !509, !1127, !1128, !351, !491}
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_rr_type_t", file: !96, line: 57, baseType: !101)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_rr_data_t", file: !96, line: 71, baseType: !1130)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_rr_data_t", file: !96, line: 59, size: 192, elements: !1131)
!1131 = !{!1132, !1133, !1134, !1135}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1130, file: !96, line: 61, baseType: !169, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "min_ttl", scope: !1130, file: !96, line: 64, baseType: !169, size: 32, offset: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "hosts", scope: !1130, file: !96, line: 67, baseType: !473, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "txt_record_opts", scope: !1130, file: !96, line: 70, baseType: !244, size: 64, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !524, file: !96, line: 214, baseType: !233, size: 8, offset: 3200)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "read_prefs", scope: !317, file: !318, line: 104, baseType: !1138, size: 64, offset: 2048)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_read_prefs_t", file: !1140, line: 33, baseType: !1141)
!1140 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-read-prefs.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "39494b56050754f341ac9e1aa259b8a6")
!1141 = !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_read_prefs_t", file: !1140, line: 33, flags: DIFlagFwdDecl)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "read_concern", scope: !317, file: !318, line: 105, baseType: !1143, size: 64, offset: 2112)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_read_concern_t", file: !1145, line: 35, baseType: !1146)
!1145 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-read-concern.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "6e1554a4f43b405f70bbf2c59ead73dd")
!1146 = !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_read_concern_t", file: !1145, line: 35, flags: DIFlagFwdDecl)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "write_concern", scope: !317, file: !318, line: 106, baseType: !1148, size: 64, offset: 2176)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_write_concern_t", file: !1150, line: 36, baseType: !1151)
!1150 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-write-concern.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "d777c85e5593d047218fef92f7ab5434")
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_write_concern_t", file: !1150, line: 36, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "apm_callbacks", scope: !317, file: !318, line: 108, baseType: !563, size: 768, offset: 2240)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "apm_context", scope: !317, file: !318, line: 109, baseType: !159, size: 64, offset: 3008)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "error_api_version", scope: !317, file: !318, line: 111, baseType: !206, size: 32, offset: 3072)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "error_api_set", scope: !317, file: !318, line: 112, baseType: !233, size: 8, offset: 3104)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "api", scope: !317, file: !318, line: 114, baseType: !1043, size: 64, offset: 3136)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "client_sessions", scope: !317, file: !318, line: 117, baseType: !338, size: 64, offset: 3200)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "csid_rand_seed", scope: !317, file: !318, line: 118, baseType: !43, size: 32, offset: 3264)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !317, file: !318, line: 120, baseType: !169, size: 32, offset: 3296)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "client_generation", scope: !311, file: !106, line: 121, baseType: !169, size: 32, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "server_id", scope: !311, file: !106, line: 123, baseType: !169, size: 32, offset: 96)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "secondary_ok", scope: !311, file: !106, line: 124, baseType: !233, size: 8, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !311, file: !106, line: 126, baseType: !1164, size: 32, offset: 160)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_cursor_state_t", file: !106, line: 93, baseType: !105)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "in_exhaust", scope: !311, file: !106, line: 127, baseType: !233, size: 8, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !311, file: !106, line: 129, baseType: !165, size: 1024, align: 1024, offset: 1024)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "read_concern", scope: !311, file: !106, line: 131, baseType: !1143, size: 64, offset: 2048)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "read_prefs", scope: !311, file: !106, line: 132, baseType: !1138, size: 64, offset: 2112)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "write_concern", scope: !311, file: !106, line: 133, baseType: !1148, size: 64, offset: 2176)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "must_use_primary", scope: !311, file: !106, line: 139, baseType: !233, size: 8, offset: 2240)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "is_aggr_with_write_stage", scope: !311, file: !106, line: 143, baseType: !233, size: 8, offset: 2248)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_session", scope: !311, file: !106, line: 145, baseType: !233, size: 8, offset: 2256)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "client_session", scope: !311, file: !106, line: 146, baseType: !1174, size: 64, offset: 2304)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_client_session_t", file: !316, line: 78, baseType: !1176)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_client_session_t", file: !113, line: 69, size: 3072, elements: !1177)
!1177 = !{!1178, !1179, !1199, !1208, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !1176, file: !113, line: 70, baseType: !314, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1176, file: !113, line: 71, baseType: !1180, size: 320, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_session_opt_t", file: !316, line: 79, baseType: !1181)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_session_opt_t", file: !113, line: 41, size: 320, elements: !1182)
!1182 = !{!1183, !1190, !1191}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "causal_consistency", scope: !1181, file: !113, line: 42, baseType: !1184, size: 16)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_optional_t", file: !1185, line: 31, baseType: !1186)
!1185 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-optional.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "f90b93bf8d4e15329353b361b19eb1e5")
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1185, line: 28, size: 16, elements: !1187)
!1187 = !{!1188, !1189}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1186, file: !1185, line: 29, baseType: !233, size: 8)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "is_set", scope: !1186, file: !1185, line: 30, baseType: !233, size: 8, offset: 8)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !1181, file: !113, line: 43, baseType: !1184, size: 16, offset: 16)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "default_txn_opts", scope: !1181, file: !113, line: 44, baseType: !1192, size: 256, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_transaction_opt_t", file: !316, line: 80, baseType: !1193)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_transaction_opt_t", file: !113, line: 34, size: 256, elements: !1194)
!1194 = !{!1195, !1196, !1197, !1198}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "read_concern", scope: !1193, file: !113, line: 35, baseType: !1143, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "write_concern", scope: !1193, file: !113, line: 36, baseType: !1148, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "read_prefs", scope: !1193, file: !113, line: 37, baseType: !1138, size: 64, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "max_commit_time_ms", scope: !1193, file: !113, line: 38, baseType: !222, size: 64, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "server_session", scope: !1176, file: !113, line: 72, baseType: !1200, size: 64, offset: 384)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_server_session_t", file: !113, line: 52, baseType: !1202)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_server_session_t", file: !113, line: 47, size: 3072, elements: !1203)
!1203 = !{!1204, !1205, !1206, !1207}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_usec", scope: !1202, file: !113, line: 48, baseType: !222, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "lsid", scope: !1202, file: !113, line: 49, baseType: !165, size: 1024, align: 1024, offset: 1024)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "txn_number", scope: !1202, file: !113, line: 50, baseType: !222, size: 64, offset: 2048)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !1202, file: !113, line: 51, baseType: !233, size: 8, offset: 2112)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !1176, file: !113, line: 73, baseType: !1209, size: 320, offset: 448)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_transaction_t", file: !113, line: 67, baseType: !1210)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_transaction_t", file: !113, line: 64, size: 320, elements: !1211)
!1211 = !{!1212, !1214}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1210, file: !113, line: 65, baseType: !1213, size: 32)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_internal_transaction_state_t", file: !113, line: 62, baseType: !112)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1210, file: !113, line: 66, baseType: !1192, size: 256, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "client_session_id", scope: !1176, file: !113, line: 74, baseType: !169, size: 32, offset: 768)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_time", scope: !1176, file: !113, line: 75, baseType: !165, size: 1024, align: 1024, offset: 1024)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "operation_timestamp", scope: !1176, file: !113, line: 76, baseType: !169, size: 32, offset: 2048)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "operation_increment", scope: !1176, file: !113, line: 77, baseType: !169, size: 32, offset: 2080)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "client_generation", scope: !1176, file: !113, line: 78, baseType: !169, size: 32, offset: 2112)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "server_id", scope: !1176, file: !113, line: 79, baseType: !169, size: 32, offset: 2144)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_token", scope: !1176, file: !113, line: 80, baseType: !579, size: 64, offset: 2176)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_time_timestamp", scope: !1176, file: !113, line: 81, baseType: !169, size: 32, offset: 2240)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_time_increment", scope: !1176, file: !113, line: 82, baseType: !169, size: 32, offset: 2272)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_time_set", scope: !1176, file: !113, line: 83, baseType: !233, size: 8, offset: 2304)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "with_txn_timeout_ms", scope: !1176, file: !113, line: 86, baseType: !222, size: 64, offset: 2368)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "fail_commit_label", scope: !1176, file: !113, line: 87, baseType: !509, size: 64, offset: 2432)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !311, file: !106, line: 148, baseType: !169, size: 32, offset: 2368)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !311, file: !106, line: 150, baseType: !244, size: 64, offset: 2432)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "nslen", scope: !311, file: !106, line: 151, baseType: !169, size: 32, offset: 2496)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "dblen", scope: !311, file: !106, line: 152, baseType: !169, size: 32, offset: 2528)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !311, file: !106, line: 154, baseType: !492, size: 4096, align: 64, offset: 2560)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "error_doc", scope: !311, file: !106, line: 155, baseType: !165, size: 1024, align: 1024, offset: 7168)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !311, file: !106, line: 157, baseType: !783, size: 64, offset: 8192)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "impl", scope: !311, file: !106, line: 159, baseType: !1235, size: 384, offset: 8256)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_cursor_impl_t", file: !106, line: 92, baseType: !1236)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_cursor_impl_t", file: !106, line: 96, size: 384, elements: !1237)
!1237 = !{!1238, !1245, !1249, !1254, !1255, !1256}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !1236, file: !106, line: 97, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{null, !1242, !1243}
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1235)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !1236, file: !106, line: 98, baseType: !1246, size: 64, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{null, !1242}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "prime", scope: !1236, file: !106, line: 99, baseType: !1250, size: 64, offset: 128)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mongoc_cursor_impl_transition_t", file: !106, line: 94, baseType: !1251)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!1164, !308}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "pop_from_batch", scope: !1236, file: !106, line: 100, baseType: !1250, size: 64, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_batch", scope: !1236, file: !106, line: 101, baseType: !1250, size: 64, offset: 256)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1236, file: !106, line: 102, baseType: !159, size: 64, offset: 320)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "operation_id", scope: !311, file: !106, line: 161, baseType: !222, size: 64, offset: 8640)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_id", scope: !311, file: !106, line: 162, baseType: !222, size: 64, offset: 8704)
!1259 = !{!1260, !1261, !1262, !1263, !1264, !1265, !1266}
!1260 = !DILocalVariable(name: "client", arg: 1, scope: !305, file: !2, line: 89, type: !314)
!1261 = !DILocalVariable(name: "db_and_coll", arg: 2, scope: !305, file: !2, line: 90, type: !509)
!1262 = !DILocalVariable(name: "cmd", arg: 3, scope: !305, file: !2, line: 91, type: !783)
!1263 = !DILocalVariable(name: "opts", arg: 4, scope: !305, file: !2, line: 92, type: !783)
!1264 = !DILocalVariable(name: "field_name", arg: 5, scope: !305, file: !2, line: 93, type: !509)
!1265 = !DILocalVariable(name: "cursor", scope: !305, file: !2, line: 97, type: !308)
!1266 = !DILocalVariable(name: "data", scope: !305, file: !2, line: 99, type: !160)
!1267 = !{!1268, !1268, i64 0}
!1268 = !{!"any pointer", !1269, i64 0}
!1269 = !{!"omnipotent char", !1270, i64 0}
!1270 = !{!"Simple C/C++ TBAA"}
!1271 = !DILocation(line: 89, column: 44, scope: !305)
!1272 = !DILocation(line: 90, column: 39, scope: !305)
!1273 = !DILocation(line: 91, column: 41, scope: !305)
!1274 = !DILocation(line: 92, column: 41, scope: !305)
!1275 = !DILocation(line: 93, column: 39, scope: !305)
!1276 = !DILocation(line: 95, column: 4, scope: !305)
!1277 = !DILocation(line: 95, column: 4, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !2, line: 95, column: 4)
!1279 = distinct !DILexicalBlock(scope: !305, file: !2, line: 95, column: 4)
!1280 = !DILocation(line: 95, column: 4, scope: !1279)
!1281 = !DILocation(line: 95, column: 4, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 95, column: 4)
!1283 = !DILocation(line: 97, column: 4, scope: !305)
!1284 = !DILocation(line: 97, column: 21, scope: !305)
!1285 = !DILocation(line: 98, column: 7, scope: !305)
!1286 = !DILocation(line: 98, column: 15, scope: !305)
!1287 = !DILocation(line: 98, column: 28, scope: !305)
!1288 = !DILocation(line: 97, column: 30, scope: !305)
!1289 = !DILocation(line: 99, column: 4, scope: !305)
!1290 = !DILocation(line: 99, column: 18, scope: !305)
!1291 = !DILocation(line: 99, column: 25, scope: !305)
!1292 = !DILocation(line: 100, column: 18, scope: !305)
!1293 = !DILocation(line: 100, column: 24, scope: !305)
!1294 = !DILocation(line: 100, column: 30, scope: !305)
!1295 = !DILocation(line: 100, column: 4, scope: !305)
!1296 = !DILocation(line: 101, column: 16, scope: !305)
!1297 = !DILocation(line: 101, column: 22, scope: !305)
!1298 = !DILocation(line: 101, column: 4, scope: !305)
!1299 = !DILocation(line: 102, column: 36, scope: !305)
!1300 = !DILocation(line: 102, column: 23, scope: !305)
!1301 = !DILocation(line: 102, column: 4, scope: !305)
!1302 = !DILocation(line: 102, column: 10, scope: !305)
!1303 = !DILocation(line: 102, column: 21, scope: !305)
!1304 = !{!1305, !1268, i64 512}
!1305 = !{!"_data_array_t", !1306, i64 0, !1306, i64 128, !1308, i64 256, !1306, i64 384, !1268, i64 512}
!1306 = !{!"_bson_t", !1307, i64 0, !1307, i64 4, !1269, i64 8}
!1307 = !{!"int", !1269, i64 0}
!1308 = !{!"", !1268, i64 0, !1307, i64 8, !1307, i64 12, !1307, i64 16, !1307, i64 20, !1307, i64 24, !1307, i64 28, !1307, i64 32, !1307, i64 36, !1307, i64 40, !1307, i64 44, !1309, i64 48}
!1309 = !{!"_bson_value_t", !1269, i64 0, !1307, i64 4, !1269, i64 8}
!1310 = !DILocation(line: 103, column: 4, scope: !305)
!1311 = !DILocation(line: 103, column: 12, scope: !305)
!1312 = !DILocation(line: 103, column: 17, scope: !305)
!1313 = !DILocation(line: 103, column: 23, scope: !305)
!1314 = !{!1315, !1268, i64 1048}
!1315 = !{!"_mongoc_cursor_t", !1268, i64 0, !1307, i64 8, !1307, i64 12, !1316, i64 16, !1269, i64 20, !1316, i64 24, !1306, i64 128, !1268, i64 256, !1268, i64 264, !1268, i64 272, !1316, i64 280, !1316, i64 281, !1316, i64 282, !1268, i64 288, !1307, i64 296, !1268, i64 304, !1307, i64 312, !1307, i64 316, !1317, i64 320, !1306, i64 896, !1268, i64 1024, !1318, i64 1032, !1319, i64 1080, !1319, i64 1088}
!1316 = !{!"_Bool", !1269, i64 0}
!1317 = !{!"_bson_error_t", !1307, i64 0, !1307, i64 4, !1269, i64 8}
!1318 = !{!"_mongoc_cursor_impl_t", !1268, i64 0, !1268, i64 8, !1268, i64 16, !1268, i64 24, !1268, i64 32, !1268, i64 40}
!1319 = !{!"long", !1269, i64 0}
!1320 = !DILocation(line: 104, column: 4, scope: !305)
!1321 = !DILocation(line: 104, column: 12, scope: !305)
!1322 = !DILocation(line: 104, column: 17, scope: !305)
!1323 = !DILocation(line: 104, column: 32, scope: !305)
!1324 = !{!1315, !1268, i64 1056}
!1325 = !DILocation(line: 105, column: 4, scope: !305)
!1326 = !DILocation(line: 105, column: 12, scope: !305)
!1327 = !DILocation(line: 105, column: 17, scope: !305)
!1328 = !DILocation(line: 105, column: 25, scope: !305)
!1329 = !{!1315, !1268, i64 1040}
!1330 = !DILocation(line: 106, column: 4, scope: !305)
!1331 = !DILocation(line: 106, column: 12, scope: !305)
!1332 = !DILocation(line: 106, column: 17, scope: !305)
!1333 = !DILocation(line: 106, column: 23, scope: !305)
!1334 = !{!1315, !1268, i64 1032}
!1335 = !DILocation(line: 107, column: 33, scope: !305)
!1336 = !DILocation(line: 107, column: 4, scope: !305)
!1337 = !DILocation(line: 107, column: 12, scope: !305)
!1338 = !DILocation(line: 107, column: 17, scope: !305)
!1339 = !DILocation(line: 107, column: 22, scope: !305)
!1340 = !{!1315, !1268, i64 1072}
!1341 = !DILocation(line: 108, column: 11, scope: !305)
!1342 = !DILocation(line: 109, column: 1, scope: !305)
!1343 = !DILocation(line: 108, column: 4, scope: !305)
!1344 = !DISubprogram(name: "fprintf", scope: !415, file: !415, line: 350, type: !1345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!209, !1347, !1400, null}
!1347 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1348)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1350, line: 7, baseType: !1351)
!1350 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1352, line: 49, size: 1728, elements: !1353)
!1352 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1353 = !{!1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1369, !1371, !1372, !1373, !1375, !1376, !1377, !1381, !1384, !1386, !1389, !1392, !1393, !1394, !1395, !1396}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1351, file: !1352, line: 51, baseType: !209, size: 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1351, file: !1352, line: 54, baseType: !244, size: 64, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1351, file: !1352, line: 55, baseType: !244, size: 64, offset: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1351, file: !1352, line: 56, baseType: !244, size: 64, offset: 192)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1351, file: !1352, line: 57, baseType: !244, size: 64, offset: 256)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1351, file: !1352, line: 58, baseType: !244, size: 64, offset: 320)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1351, file: !1352, line: 59, baseType: !244, size: 64, offset: 384)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1351, file: !1352, line: 60, baseType: !244, size: 64, offset: 448)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1351, file: !1352, line: 61, baseType: !244, size: 64, offset: 512)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1351, file: !1352, line: 64, baseType: !244, size: 64, offset: 576)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1351, file: !1352, line: 65, baseType: !244, size: 64, offset: 640)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1351, file: !1352, line: 66, baseType: !244, size: 64, offset: 704)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1351, file: !1352, line: 68, baseType: !1367, size: 64, offset: 768)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1352, line: 36, flags: DIFlagFwdDecl)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1351, file: !1352, line: 70, baseType: !1370, size: 64, offset: 832)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1351, file: !1352, line: 72, baseType: !209, size: 32, offset: 896)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1351, file: !1352, line: 73, baseType: !209, size: 32, offset: 928)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1351, file: !1352, line: 74, baseType: !1374, size: 64, offset: 960)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !172, line: 152, baseType: !224)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1351, file: !1352, line: 77, baseType: !485, size: 16, offset: 1024)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1351, file: !1352, line: 78, baseType: !229, size: 8, offset: 1040)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1351, file: !1352, line: 79, baseType: !1378, size: 8, offset: 1048)
!1378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !1379)
!1379 = !{!1380}
!1380 = !DISubrange(count: 1)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1351, file: !1352, line: 81, baseType: !1382, size: 64, offset: 1088)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1352, line: 43, baseType: null)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1351, file: !1352, line: 89, baseType: !1385, size: 64, offset: 1152)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !172, line: 153, baseType: !224)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1351, file: !1352, line: 91, baseType: !1387, size: 64, offset: 1216)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1352, line: 37, flags: DIFlagFwdDecl)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1351, file: !1352, line: 92, baseType: !1390, size: 64, offset: 1280)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1352, line: 38, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1351, file: !1352, line: 93, baseType: !1370, size: 64, offset: 1344)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1351, file: !1352, line: 94, baseType: !159, size: 64, offset: 1408)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1351, file: !1352, line: 95, baseType: !351, size: 64, offset: 1472)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1351, file: !1352, line: 96, baseType: !209, size: 32, offset: 1536)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1351, file: !1352, line: 98, baseType: !1397, size: 160, offset: 1568)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !1398)
!1398 = !{!1399}
!1399 = !DISubrange(count: 20)
!1400 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !509)
!1401 = !DISubprogram(name: "abort", scope: !1402, file: !1402, line: 598, type: !1403, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1402 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1403 = !DISubroutineType(types: !1404)
!1404 = !{null}
!1405 = !DISubprogram(name: "_mongoc_cursor_new_with_opts", scope: !106, file: !106, line: 266, type: !1406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!308, !314, !509, !783, !1408, !1408, !1410}
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1139)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1144)
!1412 = !DISubprogram(name: "bson_aligned_alloc0", scope: !859, file: !859, line: 55, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!159, !351, !351}
!1415 = !DISubprogram(name: "bson_copy_to", scope: !1416, file: !1416, line: 321, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1416 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/linux-ubuntu22.04-zen2/clang-18.0.0/libbson-1.24.4-3emagvezomjldhykavhwzeddzez6p3tl/include/libbson-1.0/bson/bson.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build", checksumkind: CSK_MD5, checksum: "42c50b520076412f2233ea573fe55042")
!1417 = !DISubroutineType(types: !1418)
!1418 = !{null, !783, !579}
!1419 = !DISubprogram(name: "bson_init", scope: !1416, file: !1416, line: 235, type: !1420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{null, !579}
!1422 = !DISubprogram(name: "bson_strdup", scope: !1423, file: !1423, line: 56, type: !1424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1423 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/linux-ubuntu22.04-zen2/clang-18.0.0/libbson-1.24.4-3emagvezomjldhykavhwzeddzez6p3tl/include/libbson-1.0/bson/bson-string.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build", checksumkind: CSK_MD5, checksum: "84bb7fecb29271e3a8fdc145cb33a77b")
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!244, !509}
!1426 = distinct !DISubprogram(name: "_prime", scope: !2, file: !2, line: 30, type: !1252, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1427)
!1427 = !{!1428, !1429, !1430}
!1428 = !DILocalVariable(name: "cursor", arg: 1, scope: !1426, file: !2, line: 30, type: !308)
!1429 = !DILocalVariable(name: "iter", scope: !1426, file: !2, line: 32, type: !183)
!1430 = !DILocalVariable(name: "data", scope: !1426, file: !2, line: 33, type: !160)
!1431 = !DILocation(line: 30, column: 26, scope: !1426)
!1432 = !DILocation(line: 32, column: 4, scope: !1426)
!1433 = !DILocation(line: 32, column: 16, scope: !1426)
!1434 = !DILocation(line: 33, column: 4, scope: !1426)
!1435 = !DILocation(line: 33, column: 18, scope: !1426)
!1436 = !DILocation(line: 33, column: 42, scope: !1426)
!1437 = !DILocation(line: 33, column: 50, scope: !1426)
!1438 = !DILocation(line: 33, column: 55, scope: !1426)
!1439 = !DILocation(line: 35, column: 19, scope: !1426)
!1440 = !DILocation(line: 35, column: 25, scope: !1426)
!1441 = !DILocation(line: 35, column: 4, scope: !1426)
!1442 = !DILocation(line: 39, column: 11, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 38, column: 8)
!1444 = !DILocation(line: 39, column: 20, scope: !1443)
!1445 = !DILocation(line: 39, column: 26, scope: !1443)
!1446 = !DILocation(line: 39, column: 32, scope: !1443)
!1447 = !DILocation(line: 39, column: 40, scope: !1443)
!1448 = !DILocation(line: 39, column: 47, scope: !1443)
!1449 = !DILocation(line: 39, column: 53, scope: !1443)
!1450 = !DILocation(line: 38, column: 8, scope: !1443)
!1451 = !DILocation(line: 39, column: 67, scope: !1443)
!1452 = !DILocation(line: 40, column: 37, scope: !1443)
!1453 = !DILocation(line: 40, column: 43, scope: !1443)
!1454 = !DILocation(line: 40, column: 50, scope: !1443)
!1455 = !DILocation(line: 40, column: 56, scope: !1443)
!1456 = !DILocation(line: 40, column: 8, scope: !1443)
!1457 = !DILocation(line: 40, column: 68, scope: !1443)
!1458 = !DILocation(line: 41, column: 8, scope: !1443)
!1459 = !DILocation(line: 41, column: 38, scope: !1443)
!1460 = !DILocation(line: 42, column: 35, scope: !1443)
!1461 = !DILocation(line: 42, column: 41, scope: !1443)
!1462 = !DILocation(line: 42, column: 8, scope: !1443)
!1463 = !DILocation(line: 38, column: 8, scope: !1426)
!1464 = !DILocation(line: 43, column: 7, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1443, file: !2, line: 42, column: 48)
!1466 = !DILocation(line: 45, column: 4, scope: !1426)
!1467 = !DILocation(line: 46, column: 1, scope: !1426)
!1468 = distinct !DISubprogram(name: "_pop_from_batch", scope: !2, file: !2, line: 50, type: !1252, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1469)
!1469 = !{!1470, !1471, !1472, !1473}
!1470 = !DILocalVariable(name: "cursor", arg: 1, scope: !1468, file: !2, line: 50, type: !308)
!1471 = !DILocalVariable(name: "document_len", scope: !1468, file: !2, line: 52, type: !169)
!1472 = !DILocalVariable(name: "document", scope: !1468, file: !2, line: 53, type: !187)
!1473 = !DILocalVariable(name: "data", scope: !1468, file: !2, line: 54, type: !160)
!1474 = !DILocation(line: 50, column: 35, scope: !1468)
!1475 = !DILocation(line: 52, column: 4, scope: !1468)
!1476 = !DILocation(line: 52, column: 13, scope: !1468)
!1477 = !DILocation(line: 53, column: 4, scope: !1468)
!1478 = !DILocation(line: 53, column: 19, scope: !1468)
!1479 = !DILocation(line: 54, column: 4, scope: !1468)
!1480 = !DILocation(line: 54, column: 18, scope: !1468)
!1481 = !DILocation(line: 54, column: 42, scope: !1468)
!1482 = !DILocation(line: 54, column: 50, scope: !1468)
!1483 = !DILocation(line: 54, column: 55, scope: !1468)
!1484 = !DILocation(line: 55, column: 25, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1468, file: !2, line: 55, column: 8)
!1486 = !DILocation(line: 55, column: 31, scope: !1485)
!1487 = !DILocation(line: 55, column: 8, scope: !1485)
!1488 = !DILocation(line: 55, column: 8, scope: !1468)
!1489 = !DILocation(line: 56, column: 28, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1485, file: !2, line: 55, column: 38)
!1491 = !DILocation(line: 56, column: 34, scope: !1490)
!1492 = !DILocation(line: 56, column: 7, scope: !1490)
!1493 = !DILocation(line: 57, column: 7, scope: !1490)
!1494 = !DILocation(line: 57, column: 7, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !2, line: 57, column: 7)
!1496 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 57, column: 7)
!1497 = !{!1307, !1307, i64 0}
!1498 = !DILocation(line: 57, column: 7, scope: !1496)
!1499 = !DILocation(line: 57, column: 7, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1495, file: !2, line: 57, column: 7)
!1501 = !DILocation(line: 58, column: 26, scope: !1490)
!1502 = !DILocation(line: 58, column: 32, scope: !1490)
!1503 = !DILocation(line: 58, column: 7, scope: !1490)
!1504 = !DILocation(line: 58, column: 15, scope: !1490)
!1505 = !DILocation(line: 58, column: 23, scope: !1490)
!1506 = !{!1315, !1268, i64 1024}
!1507 = !DILocation(line: 59, column: 7, scope: !1490)
!1508 = !DILocation(line: 61, column: 4, scope: !1468)
!1509 = !DILocation(line: 62, column: 1, scope: !1468)
!1510 = distinct !DISubprogram(name: "_destroy", scope: !2, file: !2, line: 78, type: !1247, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1511)
!1511 = !{!1512, !1513}
!1512 = !DILocalVariable(name: "impl", arg: 1, scope: !1510, file: !2, line: 78, type: !1242)
!1513 = !DILocalVariable(name: "data", scope: !1510, file: !2, line: 80, type: !160)
!1514 = !DILocation(line: 78, column: 33, scope: !1510)
!1515 = !DILocation(line: 80, column: 4, scope: !1510)
!1516 = !DILocation(line: 80, column: 18, scope: !1510)
!1517 = !DILocation(line: 80, column: 42, scope: !1510)
!1518 = !DILocation(line: 80, column: 48, scope: !1510)
!1519 = !{!1318, !1268, i64 40}
!1520 = !DILocation(line: 81, column: 19, scope: !1510)
!1521 = !DILocation(line: 81, column: 25, scope: !1510)
!1522 = !DILocation(line: 81, column: 4, scope: !1510)
!1523 = !DILocation(line: 82, column: 19, scope: !1510)
!1524 = !DILocation(line: 82, column: 25, scope: !1510)
!1525 = !DILocation(line: 82, column: 4, scope: !1510)
!1526 = !DILocation(line: 83, column: 15, scope: !1510)
!1527 = !DILocation(line: 83, column: 21, scope: !1510)
!1528 = !DILocation(line: 83, column: 4, scope: !1510)
!1529 = !DILocation(line: 84, column: 15, scope: !1510)
!1530 = !DILocation(line: 84, column: 4, scope: !1510)
!1531 = !DILocation(line: 85, column: 1, scope: !1510)
!1532 = distinct !DISubprogram(name: "_clone", scope: !2, file: !2, line: 66, type: !1240, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1533)
!1533 = !{!1534, !1535, !1536, !1537}
!1534 = !DILocalVariable(name: "dst", arg: 1, scope: !1532, file: !2, line: 66, type: !1242)
!1535 = !DILocalVariable(name: "src", arg: 2, scope: !1532, file: !2, line: 66, type: !1243)
!1536 = !DILocalVariable(name: "data_dst", scope: !1532, file: !2, line: 68, type: !160)
!1537 = !DILocalVariable(name: "data_src", scope: !1532, file: !2, line: 69, type: !160)
!1538 = !DILocation(line: 66, column: 31, scope: !1532)
!1539 = !DILocation(line: 66, column: 64, scope: !1532)
!1540 = !DILocation(line: 68, column: 4, scope: !1532)
!1541 = !DILocation(line: 68, column: 18, scope: !1532)
!1542 = !DILocation(line: 68, column: 29, scope: !1532)
!1543 = !DILocation(line: 69, column: 4, scope: !1532)
!1544 = !DILocation(line: 69, column: 18, scope: !1532)
!1545 = !DILocation(line: 69, column: 46, scope: !1532)
!1546 = !DILocation(line: 69, column: 51, scope: !1532)
!1547 = !DILocation(line: 70, column: 16, scope: !1532)
!1548 = !DILocation(line: 70, column: 26, scope: !1532)
!1549 = !DILocation(line: 70, column: 4, scope: !1532)
!1550 = !DILocation(line: 71, column: 19, scope: !1532)
!1551 = !DILocation(line: 71, column: 29, scope: !1532)
!1552 = !DILocation(line: 71, column: 35, scope: !1532)
!1553 = !DILocation(line: 71, column: 45, scope: !1532)
!1554 = !DILocation(line: 71, column: 4, scope: !1532)
!1555 = !DILocation(line: 72, column: 40, scope: !1532)
!1556 = !DILocation(line: 72, column: 50, scope: !1532)
!1557 = !DILocation(line: 72, column: 27, scope: !1532)
!1558 = !DILocation(line: 72, column: 4, scope: !1532)
!1559 = !DILocation(line: 72, column: 14, scope: !1532)
!1560 = !DILocation(line: 72, column: 25, scope: !1532)
!1561 = !DILocation(line: 73, column: 16, scope: !1532)
!1562 = !DILocation(line: 73, column: 4, scope: !1532)
!1563 = !DILocation(line: 73, column: 9, scope: !1532)
!1564 = !DILocation(line: 73, column: 14, scope: !1532)
!1565 = !DILocation(line: 74, column: 1, scope: !1532)
!1566 = !DISubprogram(name: "bson_destroy", scope: !1416, file: !1416, line: 371, type: !1420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1567 = !DISubprogram(name: "_mongoc_cursor_run_command", scope: !106, file: !106, line: 187, type: !1568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!233, !308, !783, !783, !579, !233}
!1570 = !DISubprogram(name: "bson_iter_init_find", scope: !1571, file: !1571, line: 212, type: !1572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1571 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/linux-ubuntu22.04-zen2/clang-18.0.0/libbson-1.24.4-3emagvezomjldhykavhwzeddzez6p3tl/include/libbson-1.0/bson/bson-iter.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build", checksumkind: CSK_MD5, checksum: "b1aaa33ff9d1150882dc86fe0aa08dd3")
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!233, !1574, !783, !509}
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!1575 = !DISubprogram(name: "bson_iter_type", scope: !1571, file: !1571, line: 491, type: !1576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!204, !1578}
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!1580 = !DISubprogram(name: "bson_iter_recurse", scope: !1571, file: !1571, line: 510, type: !1581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!233, !1578, !1574}
!1583 = !DISubprogram(name: "bson_iter_next", scope: !1571, file: !1571, line: 309, type: !1584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!233, !1574}
!1586 = !DISubprogram(name: "bson_iter_document", scope: !1571, file: !1571, line: 173, type: !1587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{null, !1578, !1589, !1590}
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!1591 = !DISubprogram(name: "bson_init_static", scope: !1416, file: !1416, line: 218, type: !1592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!233, !579, !187, !351}
!1594 = !DISubprogram(name: "bson_free", scope: !859, file: !859, line: 61, type: !1595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{null, !159}
