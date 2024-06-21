; ModuleID = 'samples/942.bc'
source_filename = "impl/sonLibKVDatabaseConf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stKVDatabaseConf = type { i32, ptr, ptr, i32, i32, i64, i64, i64, ptr, ptr, ptr, ptr }
%struct._stExceptContext = type { [1 x %struct.__jmp_buf_tag], ptr, ptr }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }

@ST_KV_DATABASE_EXCEPTION_ID = external global ptr, align 8
@.str = private unnamed_addr constant [76 x i8] c"requested MySQL database, however sonlib is not compiled with MySql support\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !12
@.str.3 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !17
@_cexceptTOS = external global ptr, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Invalid database XML specification: %s\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [10 x i8] c"conf_type\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [7 x i8] c"db_tag\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [71 x i8] c"Database XML tag \22%s\22 did not match st_kv_database_conf type attribute\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [14 x i8] c"tokyo_cabinet\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [13 x i8] c"database_dir\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [13 x i8] c"kyoto_tycoon\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [5 x i8] c"host\00", align 1, !dbg !51
@.str.12 = private unnamed_addr constant [14 x i8] c"database_name\00", align 1, !dbg !56
@.str.13 = private unnamed_addr constant [6 x i8] c"mysql\00", align 1, !dbg !58
@.str.14 = private unnamed_addr constant [5 x i8] c"user\00", align 1, !dbg !63
@.str.15 = private unnamed_addr constant [9 x i8] c"password\00", align 1, !dbg !65
@.str.16 = private unnamed_addr constant [11 x i8] c"table_name\00", align 1, !dbg !70
@.str.17 = private unnamed_addr constant [6 x i8] c"redis\00", align 1, !dbg !75
@.str.18 = private unnamed_addr constant [27 x i8] c"invalid database type \22%s\22\00", align 1, !dbg !77
@.str.19 = private unnamed_addr constant [3 x i8] c"</\00", align 1, !dbg !82
@.str.20 = private unnamed_addr constant [2 x i8] c"<\00", align 1, !dbg !87
@.str.21 = private unnamed_addr constant [3 x i8] c"/>\00", align 1, !dbg !89
@.str.22 = private unnamed_addr constant [2 x i8] c">\00", align 1, !dbg !91
@.str.23 = private unnamed_addr constant [2 x i8] c"=\00", align 1, !dbg !93
@__const.hackParseXmlString.toReplace = private unnamed_addr constant [5 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], align 16
@.str.24 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !95
@.str.25 = private unnamed_addr constant [20 x i8] c"st_kv_database_conf\00", align 1, !dbg !97
@.str.26 = private unnamed_addr constant [5 x i8] c"type\00", align 1, !dbg !102
@.str.27 = private unnamed_addr constant [36 x i8] c"failed to to get value for key \22%s\22\00", align 1, !dbg !104
@.str.28 = private unnamed_addr constant [55 x i8] c"got a duplicate entry in the database conf string \22%s\22\00", align 1, !dbg !109
@.str.29 = private unnamed_addr constant [35 x i8] c"got an unexpected final entry \22%s\22\00", align 1, !dbg !114
@.str.30 = private unnamed_addr constant [85 x i8] c"BUG: expected the token: %s in database XML string, but I got: %s from the stream %s\00", align 1, !dbg !119
@.str.31 = private unnamed_addr constant [53 x i8] c"did not find a \22%s\22 value in the database XML string\00", align 1, !dbg !124
@.str.32 = private unnamed_addr constant [5 x i8] c"port\00", align 1, !dbg !129
@.str.33 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1, !dbg !131
@.str.34 = private unnamed_addr constant [16 x i8] c"max_record_size\00", align 1, !dbg !136
@.str.35 = private unnamed_addr constant [17 x i8] c"max_bulkset_size\00", align 1, !dbg !141
@.str.36 = private unnamed_addr constant [24 x i8] c"max_bulkset_num_records\00", align 1, !dbg !146

; Function Attrs: nounwind uwtable
define ptr @stKVDatabaseConf_constructTokyoCabinet(ptr noundef %databaseDir) #0 !dbg !176 {
entry:
  %databaseDir.addr = alloca ptr, align 8
  %conf = alloca ptr, align 8
  store ptr %databaseDir, ptr %databaseDir.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %databaseDir.addr, metadata !201, metadata !DIExpression()), !dbg !207
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #9, !dbg !208
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !202, metadata !DIExpression()), !dbg !209
  %call = call ptr @stSafeCCalloc(i64 noundef 88), !dbg !210
  store ptr %call, ptr %conf, align 8, !dbg !209, !tbaa !203
  %0 = load ptr, ptr %conf, align 8, !dbg !211, !tbaa !203
  %type = getelementptr inbounds %struct.stKVDatabaseConf, ptr %0, i32 0, i32 0, !dbg !212
  store i32 0, ptr %type, align 8, !dbg !213, !tbaa !214
  %1 = load ptr, ptr %databaseDir.addr, align 8, !dbg !218, !tbaa !203
  %call1 = call ptr @stString_copy(ptr noundef %1), !dbg !219
  %2 = load ptr, ptr %conf, align 8, !dbg !220, !tbaa !203
  %databaseDir2 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %2, i32 0, i32 1, !dbg !221
  store ptr %call1, ptr %databaseDir2, align 8, !dbg !222, !tbaa !223
  %3 = load ptr, ptr %conf, align 8, !dbg !224, !tbaa !203
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #9, !dbg !225
  ret ptr %3, !dbg !226
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !227 ptr @stSafeCCalloc(i64 noundef) #2

declare !dbg !234 ptr @stString_copy(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define ptr @stKVDatabaseConf_constructKyotoTycoon(ptr noundef %host, i32 noundef %port, i32 noundef %timeout, i64 noundef %maxRecordSize, i64 noundef %maxBulkSetSize, i64 noundef %maxBulkSetNumRecords, ptr noundef %databaseDir, ptr noundef %databaseName) #0 !dbg !238 {
entry:
  %host.addr = alloca ptr, align 8
  %port.addr = alloca i32, align 4
  %timeout.addr = alloca i32, align 4
  %maxRecordSize.addr = alloca i64, align 8
  %maxBulkSetSize.addr = alloca i64, align 8
  %maxBulkSetNumRecords.addr = alloca i64, align 8
  %databaseDir.addr = alloca ptr, align 8
  %databaseName.addr = alloca ptr, align 8
  %conf = alloca ptr, align 8
  store ptr %host, ptr %host.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %host.addr, metadata !242, metadata !DIExpression()), !dbg !251
  store i32 %port, ptr %port.addr, align 4, !tbaa !252
  tail call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !243, metadata !DIExpression()), !dbg !253
  store i32 %timeout, ptr %timeout.addr, align 4, !tbaa !252
  tail call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !244, metadata !DIExpression()), !dbg !254
  store i64 %maxRecordSize, ptr %maxRecordSize.addr, align 8, !tbaa !255
  tail call void @llvm.dbg.declare(metadata ptr %maxRecordSize.addr, metadata !245, metadata !DIExpression()), !dbg !256
  store i64 %maxBulkSetSize, ptr %maxBulkSetSize.addr, align 8, !tbaa !255
  tail call void @llvm.dbg.declare(metadata ptr %maxBulkSetSize.addr, metadata !246, metadata !DIExpression()), !dbg !257
  store i64 %maxBulkSetNumRecords, ptr %maxBulkSetNumRecords.addr, align 8, !tbaa !255
  tail call void @llvm.dbg.declare(metadata ptr %maxBulkSetNumRecords.addr, metadata !247, metadata !DIExpression()), !dbg !258
  store ptr %databaseDir, ptr %databaseDir.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %databaseDir.addr, metadata !248, metadata !DIExpression()), !dbg !259
  store ptr %databaseName, ptr %databaseName.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %databaseName.addr, metadata !249, metadata !DIExpression()), !dbg !260
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #9, !dbg !261
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !250, metadata !DIExpression()), !dbg !262
  %call = call ptr @stSafeCCalloc(i64 noundef 88), !dbg !263
  store ptr %call, ptr %conf, align 8, !dbg !262, !tbaa !203
  %0 = load ptr, ptr %conf, align 8, !dbg !264, !tbaa !203
  %type = getelementptr inbounds %struct.stKVDatabaseConf, ptr %0, i32 0, i32 0, !dbg !265
  store i32 1, ptr %type, align 8, !dbg !266, !tbaa !214
  %1 = load ptr, ptr %databaseDir.addr, align 8, !dbg !267, !tbaa !203
  %call1 = call ptr @stString_copy(ptr noundef %1), !dbg !268
  %2 = load ptr, ptr %conf, align 8, !dbg !269, !tbaa !203
  %databaseDir2 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %2, i32 0, i32 1, !dbg !270
  store ptr %call1, ptr %databaseDir2, align 8, !dbg !271, !tbaa !223
  %3 = load ptr, ptr %host.addr, align 8, !dbg !272, !tbaa !203
  %call3 = call ptr @stString_copy(ptr noundef %3), !dbg !273
  %4 = load ptr, ptr %conf, align 8, !dbg !274, !tbaa !203
  %host4 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %4, i32 0, i32 2, !dbg !275
  store ptr %call3, ptr %host4, align 8, !dbg !276, !tbaa !277
  %5 = load i32, ptr %port.addr, align 4, !dbg !278, !tbaa !252
  %6 = load ptr, ptr %conf, align 8, !dbg !279, !tbaa !203
  %port5 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %6, i32 0, i32 3, !dbg !280
  store i32 %5, ptr %port5, align 8, !dbg !281, !tbaa !282
  %7 = load i32, ptr %timeout.addr, align 4, !dbg !283, !tbaa !252
  %8 = load ptr, ptr %conf, align 8, !dbg !284, !tbaa !203
  %timeout6 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %8, i32 0, i32 4, !dbg !285
  store i32 %7, ptr %timeout6, align 4, !dbg !286, !tbaa !287
  %9 = load i64, ptr %maxRecordSize.addr, align 8, !dbg !288, !tbaa !255
  %10 = load ptr, ptr %conf, align 8, !dbg !289, !tbaa !203
  %maxKTRecordSize = getelementptr inbounds %struct.stKVDatabaseConf, ptr %10, i32 0, i32 5, !dbg !290
  store i64 %9, ptr %maxKTRecordSize, align 8, !dbg !291, !tbaa !292
  %11 = load i64, ptr %maxBulkSetSize.addr, align 8, !dbg !293, !tbaa !255
  %12 = load ptr, ptr %conf, align 8, !dbg !294, !tbaa !203
  %maxKTBulkSetSize = getelementptr inbounds %struct.stKVDatabaseConf, ptr %12, i32 0, i32 6, !dbg !295
  store i64 %11, ptr %maxKTBulkSetSize, align 8, !dbg !296, !tbaa !297
  %13 = load i64, ptr %maxBulkSetNumRecords.addr, align 8, !dbg !298, !tbaa !255
  %14 = load ptr, ptr %conf, align 8, !dbg !299, !tbaa !203
  %maxKTBulkSetNumRecords = getelementptr inbounds %struct.stKVDatabaseConf, ptr %14, i32 0, i32 7, !dbg !300
  store i64 %13, ptr %maxKTBulkSetNumRecords, align 8, !dbg !301, !tbaa !302
  %15 = load ptr, ptr %databaseName.addr, align 8, !dbg !303, !tbaa !203
  %call7 = call ptr @stString_copy(ptr noundef %15), !dbg !304
  %16 = load ptr, ptr %conf, align 8, !dbg !305, !tbaa !203
  %databaseName8 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %16, i32 0, i32 10, !dbg !306
  store ptr %call7, ptr %databaseName8, align 8, !dbg !307, !tbaa !308
  %17 = load ptr, ptr %conf, align 8, !dbg !309, !tbaa !203
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #9, !dbg !310
  ret ptr %17, !dbg !311
}

; Function Attrs: nounwind uwtable
define ptr @stKVDatabaseConf_constructRedis(ptr noundef %host, i32 noundef %port) #0 !dbg !312 {
entry:
  %host.addr = alloca ptr, align 8
  %port.addr = alloca i32, align 4
  %conf = alloca ptr, align 8
  store ptr %host, ptr %host.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %host.addr, metadata !316, metadata !DIExpression()), !dbg !319
  store i32 %port, ptr %port.addr, align 4, !tbaa !252
  tail call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !317, metadata !DIExpression()), !dbg !320
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #9, !dbg !321
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !318, metadata !DIExpression()), !dbg !322
  %call = call ptr @stSafeCCalloc(i64 noundef 88), !dbg !323
  store ptr %call, ptr %conf, align 8, !dbg !322, !tbaa !203
  %0 = load ptr, ptr %conf, align 8, !dbg !324, !tbaa !203
  %type = getelementptr inbounds %struct.stKVDatabaseConf, ptr %0, i32 0, i32 0, !dbg !325
  store i32 3, ptr %type, align 8, !dbg !326, !tbaa !214
  %1 = load ptr, ptr %host.addr, align 8, !dbg !327, !tbaa !203
  %call1 = call ptr @stString_copy(ptr noundef %1), !dbg !328
  %2 = load ptr, ptr %conf, align 8, !dbg !329, !tbaa !203
  %host2 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %2, i32 0, i32 2, !dbg !330
  store ptr %call1, ptr %host2, align 8, !dbg !331, !tbaa !277
  %3 = load i32, ptr %port.addr, align 4, !dbg !332, !tbaa !252
  %4 = load ptr, ptr %conf, align 8, !dbg !333, !tbaa !203
  %port3 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %4, i32 0, i32 3, !dbg !334
  store i32 %3, ptr %port3, align 8, !dbg !335, !tbaa !282
  %5 = load ptr, ptr %conf, align 8, !dbg !336, !tbaa !203
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #9, !dbg !337
  ret ptr %5, !dbg !338
}

; Function Attrs: nounwind uwtable
define ptr @stKVDatabaseConf_constructMySql(ptr noundef %host, i32 noundef %port, ptr noundef %user, ptr noundef %password, ptr noundef %databaseName, ptr noundef %tableName) #0 !dbg !339 {
entry:
  %host.addr = alloca ptr, align 8
  %port.addr = alloca i32, align 4
  %user.addr = alloca ptr, align 8
  %password.addr = alloca ptr, align 8
  %databaseName.addr = alloca ptr, align 8
  %tableName.addr = alloca ptr, align 8
  store ptr %host, ptr %host.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %host.addr, metadata !343, metadata !DIExpression()), !dbg !349
  store i32 %port, ptr %port.addr, align 4, !tbaa !252
  tail call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !344, metadata !DIExpression()), !dbg !350
  store ptr %user, ptr %user.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %user.addr, metadata !345, metadata !DIExpression()), !dbg !351
  store ptr %password, ptr %password.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %password.addr, metadata !346, metadata !DIExpression()), !dbg !352
  store ptr %databaseName, ptr %databaseName.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %databaseName.addr, metadata !347, metadata !DIExpression()), !dbg !353
  store ptr %tableName, ptr %tableName.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %tableName.addr, metadata !348, metadata !DIExpression()), !dbg !354
  %0 = load ptr, ptr @ST_KV_DATABASE_EXCEPTION_ID, align 8, !dbg !355, !tbaa !203
  call void (ptr, ptr, ...) @stThrowNew(ptr noundef %0, ptr noundef @.str), !dbg !356
  %1 = load ptr, ptr %host.addr, align 8, !dbg !357, !tbaa !203
  %2 = load i32, ptr %port.addr, align 4, !dbg !358, !tbaa !252
  %3 = load ptr, ptr %user.addr, align 8, !dbg !359, !tbaa !203
  %4 = load ptr, ptr %password.addr, align 8, !dbg !360, !tbaa !203
  %5 = load ptr, ptr %databaseName.addr, align 8, !dbg !361, !tbaa !203
  %6 = load ptr, ptr %tableName.addr, align 8, !dbg !362, !tbaa !203
  %call = call ptr @constructSql(i32 noundef 2, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6), !dbg !363
  ret ptr %call, !dbg !364
}

declare !dbg !365 void @stThrowNew(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define internal ptr @constructSql(i32 noundef %type, ptr noundef %host, i32 noundef %port, ptr noundef %user, ptr noundef %password, ptr noundef %databaseName, ptr noundef %tableName) #0 !dbg !369 {
entry:
  %type.addr = alloca i32, align 4
  %host.addr = alloca ptr, align 8
  %port.addr = alloca i32, align 4
  %user.addr = alloca ptr, align 8
  %password.addr = alloca ptr, align 8
  %databaseName.addr = alloca ptr, align 8
  %tableName.addr = alloca ptr, align 8
  %conf = alloca ptr, align 8
  store i32 %type, ptr %type.addr, align 4, !tbaa !381
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !373, metadata !DIExpression()), !dbg !382
  store ptr %host, ptr %host.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %host.addr, metadata !374, metadata !DIExpression()), !dbg !383
  store i32 %port, ptr %port.addr, align 4, !tbaa !252
  tail call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !375, metadata !DIExpression()), !dbg !384
  store ptr %user, ptr %user.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %user.addr, metadata !376, metadata !DIExpression()), !dbg !385
  store ptr %password, ptr %password.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %password.addr, metadata !377, metadata !DIExpression()), !dbg !386
  store ptr %databaseName, ptr %databaseName.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %databaseName.addr, metadata !378, metadata !DIExpression()), !dbg !387
  store ptr %tableName, ptr %tableName.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %tableName.addr, metadata !379, metadata !DIExpression()), !dbg !388
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #9, !dbg !389
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !380, metadata !DIExpression()), !dbg !390
  %call = call ptr @stSafeCCalloc(i64 noundef 88), !dbg !391
  store ptr %call, ptr %conf, align 8, !dbg !390, !tbaa !203
  %0 = load i32, ptr %type.addr, align 4, !dbg !392, !tbaa !381
  %1 = load ptr, ptr %conf, align 8, !dbg !393, !tbaa !203
  %type1 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %1, i32 0, i32 0, !dbg !394
  store i32 %0, ptr %type1, align 8, !dbg !395, !tbaa !214
  %2 = load ptr, ptr %host.addr, align 8, !dbg !396, !tbaa !203
  %call2 = call ptr @stString_copy(ptr noundef %2), !dbg !397
  %3 = load ptr, ptr %conf, align 8, !dbg !398, !tbaa !203
  %host3 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %3, i32 0, i32 2, !dbg !399
  store ptr %call2, ptr %host3, align 8, !dbg !400, !tbaa !277
  %4 = load i32, ptr %port.addr, align 4, !dbg !401, !tbaa !252
  %5 = load ptr, ptr %conf, align 8, !dbg !402, !tbaa !203
  %port4 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %5, i32 0, i32 3, !dbg !403
  store i32 %4, ptr %port4, align 8, !dbg !404, !tbaa !282
  %6 = load ptr, ptr %user.addr, align 8, !dbg !405, !tbaa !203
  %call5 = call ptr @stString_copy(ptr noundef %6), !dbg !406
  %7 = load ptr, ptr %conf, align 8, !dbg !407, !tbaa !203
  %user6 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %7, i32 0, i32 8, !dbg !408
  store ptr %call5, ptr %user6, align 8, !dbg !409, !tbaa !410
  %8 = load ptr, ptr %password.addr, align 8, !dbg !411, !tbaa !203
  %call7 = call ptr @stString_copy(ptr noundef %8), !dbg !412
  %9 = load ptr, ptr %conf, align 8, !dbg !413, !tbaa !203
  %password8 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %9, i32 0, i32 9, !dbg !414
  store ptr %call7, ptr %password8, align 8, !dbg !415, !tbaa !416
  %10 = load ptr, ptr %databaseName.addr, align 8, !dbg !417, !tbaa !203
  %call9 = call ptr @stString_copy(ptr noundef %10), !dbg !418
  %11 = load ptr, ptr %conf, align 8, !dbg !419, !tbaa !203
  %databaseName10 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %11, i32 0, i32 10, !dbg !420
  store ptr %call9, ptr %databaseName10, align 8, !dbg !421, !tbaa !308
  %12 = load ptr, ptr %tableName.addr, align 8, !dbg !422, !tbaa !203
  %call11 = call ptr @stString_copy(ptr noundef %12), !dbg !423
  %13 = load ptr, ptr %conf, align 8, !dbg !424, !tbaa !203
  %tableName12 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %13, i32 0, i32 11, !dbg !425
  store ptr %call11, ptr %tableName12, align 8, !dbg !426, !tbaa !427
  %14 = load ptr, ptr %conf, align 8, !dbg !428, !tbaa !203
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #9, !dbg !429
  ret ptr %14, !dbg !430
}

; Function Attrs: nounwind uwtable
define ptr @getNextToken(ptr noundef %tokenStream) #0 !dbg !431 {
entry:
  %tokenStream.addr = alloca ptr, align 8
  %token = alloca ptr, align 8
  %cA = alloca ptr, align 8
  store ptr %tokenStream, ptr %tokenStream.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %tokenStream.addr, metadata !436, metadata !DIExpression()), !dbg !441
  call void @llvm.lifetime.start.p0(i64 8, ptr %token) #9, !dbg !442
  tail call void @llvm.dbg.declare(metadata ptr %token, metadata !437, metadata !DIExpression()), !dbg !443
  %0 = load ptr, ptr %tokenStream.addr, align 8, !dbg !444, !tbaa !203
  %call = call ptr @stString_getNextWord(ptr noundef %0), !dbg !445
  store ptr %call, ptr %token, align 8, !dbg !443, !tbaa !203
  %1 = load ptr, ptr %token, align 8, !dbg !446, !tbaa !203
  %cmp = icmp ne ptr %1, null, !dbg !447
  br i1 %cmp, label %if.then, label %if.end, !dbg !448

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %cA) #9, !dbg !449
  tail call void @llvm.dbg.declare(metadata ptr %cA, metadata !438, metadata !DIExpression()), !dbg !450
  %2 = load ptr, ptr %token, align 8, !dbg !451, !tbaa !203
  %call1 = call ptr @stString_replace(ptr noundef %2, ptr noundef @.str.1, ptr noundef @.str.2), !dbg !452
  store ptr %call1, ptr %cA, align 8, !dbg !450, !tbaa !203
  %3 = load ptr, ptr %token, align 8, !dbg !453, !tbaa !203
  call void @free(ptr noundef %3) #9, !dbg !454
  %4 = load ptr, ptr %cA, align 8, !dbg !455, !tbaa !203
  %call2 = call ptr @stString_replace(ptr noundef %4, ptr noundef @.str.3, ptr noundef @.str.2), !dbg !456
  store ptr %call2, ptr %token, align 8, !dbg !457, !tbaa !203
  %5 = load ptr, ptr %cA, align 8, !dbg !458, !tbaa !203
  call void @free(ptr noundef %5) #9, !dbg !459
  call void @llvm.lifetime.end.p0(i64 8, ptr %cA) #9, !dbg !460
  br label %if.end, !dbg !461

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %token, align 8, !dbg !462, !tbaa !203
  call void @llvm.lifetime.end.p0(i64 8, ptr %token) #9, !dbg !463
  ret ptr %6, !dbg !464
}

declare !dbg !465 ptr @stString_getNextWord(ptr noundef) #2

declare !dbg !466 ptr @stString_replace(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare !dbg !469 void @free(ptr noundef) #3

; Function Attrs: nounwind uwtable
define ptr @stKVDatabaseConf_constructFromString(ptr noundef %xmlString) #0 !dbg !473 {
entry:
  %xmlString.addr = alloca ptr, align 8
  %conf = alloca ptr, align 8
  %_cexceptContext = alloca %struct._stExceptContext, align 8
  %ex = alloca ptr, align 8
  store ptr %xmlString, ptr %xmlString.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %xmlString.addr, metadata !475, metadata !DIExpression()), !dbg !509
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #9, !dbg !510
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !476, metadata !DIExpression()), !dbg !511
  store ptr null, ptr %conf, align 8, !dbg !511, !tbaa !203
  call void @llvm.lifetime.start.p0(i64 216, ptr %_cexceptContext) #9, !dbg !512
  tail call void @llvm.dbg.declare(metadata ptr %_cexceptContext, metadata !477, metadata !DIExpression()), !dbg !512
  %0 = load ptr, ptr @_cexceptTOS, align 8, !dbg !512, !tbaa !203
  %prev = getelementptr inbounds %struct._stExceptContext, ptr %_cexceptContext, i32 0, i32 1, !dbg !512
  store ptr %0, ptr %prev, align 8, !dbg !512, !tbaa !513
  store ptr %_cexceptContext, ptr @_cexceptTOS, align 8, !dbg !512, !tbaa !203
  %except = getelementptr inbounds %struct._stExceptContext, ptr %_cexceptContext, i32 0, i32 2, !dbg !512
  store ptr null, ptr %except, align 8, !dbg !512, !tbaa !515
  %env = getelementptr inbounds %struct._stExceptContext, ptr %_cexceptContext, i32 0, i32 0, !dbg !516
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], ptr %env, i64 0, i64 0, !dbg !516
  %call = call i32 @_setjmp(ptr noundef %arraydecay) #10, !dbg !516
  %cmp = icmp eq i32 %call, 0, !dbg !516
  br i1 %cmp, label %if.then, label %if.end, !dbg !512

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %xmlString.addr, align 8, !dbg !518, !tbaa !203
  %call1 = call ptr @constructFromString(ptr noundef %1), !dbg !520
  store ptr %call1, ptr %conf, align 8, !dbg !521, !tbaa !203
  br label %if.end, !dbg !522

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr @_cexceptTOS, align 8, !dbg !523, !tbaa !203
  %except2 = getelementptr inbounds %struct._stExceptContext, ptr %2, i32 0, i32 2, !dbg !523
  %3 = load ptr, ptr %except2, align 8, !dbg !523, !tbaa !515
  %cmp3 = icmp ne ptr %3, null, !dbg !523
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !524

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %ex) #9, !dbg !525
  tail call void @llvm.dbg.declare(metadata ptr %ex, metadata !506, metadata !DIExpression()), !dbg !525
  %4 = load ptr, ptr @_cexceptTOS, align 8, !dbg !525, !tbaa !203
  %except5 = getelementptr inbounds %struct._stExceptContext, ptr %4, i32 0, i32 2, !dbg !525
  %5 = load ptr, ptr %except5, align 8, !dbg !525, !tbaa !515
  store ptr %5, ptr %ex, align 8, !dbg !525, !tbaa !203
  %6 = load ptr, ptr @_cexceptTOS, align 8, !dbg !525, !tbaa !203
  %prev6 = getelementptr inbounds %struct._stExceptContext, ptr %6, i32 0, i32 1, !dbg !525
  %7 = load ptr, ptr %prev6, align 8, !dbg !525, !tbaa !513
  store ptr %7, ptr @_cexceptTOS, align 8, !dbg !525, !tbaa !203
  %8 = load ptr, ptr %ex, align 8, !dbg !526, !tbaa !203
  %9 = load ptr, ptr @ST_KV_DATABASE_EXCEPTION_ID, align 8, !dbg !528, !tbaa !203
  %10 = load ptr, ptr %xmlString.addr, align 8, !dbg !529, !tbaa !203
  call void (ptr, ptr, ptr, ...) @stThrowNewCause(ptr noundef %8, ptr noundef %9, ptr noundef @.str.4, ptr noundef %10), !dbg !530
  %except7 = getelementptr inbounds %struct._stExceptContext, ptr %_cexceptContext, i32 0, i32 2, !dbg !531
  %11 = load ptr, ptr %except7, align 8, !dbg !531, !tbaa !515
  call void @stExcept_free(ptr noundef %11), !dbg !531
  call void @llvm.lifetime.end.p0(i64 8, ptr %ex) #9, !dbg !532
  br label %if.end9, !dbg !531

if.else:                                          ; preds = %if.end
  %12 = load ptr, ptr @_cexceptTOS, align 8, !dbg !533, !tbaa !203
  %prev8 = getelementptr inbounds %struct._stExceptContext, ptr %12, i32 0, i32 1, !dbg !533
  %13 = load ptr, ptr %prev8, align 8, !dbg !533, !tbaa !513
  store ptr %13, ptr @_cexceptTOS, align 8, !dbg !533, !tbaa !203
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  call void @llvm.lifetime.end.p0(i64 216, ptr %_cexceptContext) #9, !dbg !535
  %14 = load ptr, ptr %conf, align 8, !dbg !536, !tbaa !203
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #9, !dbg !537
  ret ptr %14, !dbg !538
}

; Function Attrs: nounwind returns_twice
declare !dbg !539 i32 @_setjmp(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal ptr @constructFromString(ptr noundef %xmlString) #0 !dbg !543 {
entry:
  %xmlString.addr = alloca ptr, align 8
  %hash = alloca ptr, align 8
  %databaseConf = alloca ptr, align 8
  %type = alloca ptr, align 8
  %dbTag = alloca ptr, align 8
  store ptr %xmlString, ptr %xmlString.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %xmlString.addr, metadata !545, metadata !DIExpression()), !dbg !553
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash) #9, !dbg !554
  tail call void @llvm.dbg.declare(metadata ptr %hash, metadata !546, metadata !DIExpression()), !dbg !555
  %0 = load ptr, ptr %xmlString.addr, align 8, !dbg !556, !tbaa !203
  %call = call ptr @hackParseXmlString(ptr noundef %0), !dbg !557
  store ptr %call, ptr %hash, align 8, !dbg !555, !tbaa !203
  call void @llvm.lifetime.start.p0(i64 8, ptr %databaseConf) #9, !dbg !558
  tail call void @llvm.dbg.declare(metadata ptr %databaseConf, metadata !550, metadata !DIExpression()), !dbg !559
  store ptr null, ptr %databaseConf, align 8, !dbg !559, !tbaa !203
  call void @llvm.lifetime.start.p0(i64 8, ptr %type) #9, !dbg !560
  tail call void @llvm.dbg.declare(metadata ptr %type, metadata !551, metadata !DIExpression()), !dbg !561
  %1 = load ptr, ptr %hash, align 8, !dbg !562, !tbaa !203
  %call1 = call ptr @getXmlValueRequired(ptr noundef %1, ptr noundef @.str.5), !dbg !563
  store ptr %call1, ptr %type, align 8, !dbg !561, !tbaa !203
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbTag) #9, !dbg !564
  tail call void @llvm.dbg.declare(metadata ptr %dbTag, metadata !552, metadata !DIExpression()), !dbg !565
  %2 = load ptr, ptr %hash, align 8, !dbg !566, !tbaa !203
  %call2 = call ptr @getXmlValueRequired(ptr noundef %2, ptr noundef @.str.6), !dbg !567
  store ptr %call2, ptr %dbTag, align 8, !dbg !565, !tbaa !203
  %3 = load ptr, ptr %type, align 8, !dbg !568, !tbaa !203
  %4 = load ptr, ptr %dbTag, align 8, !dbg !570, !tbaa !203
  %call3 = call zeroext i1 @stString_eq(ptr noundef %3, ptr noundef %4), !dbg !571
  br i1 %call3, label %if.end, label %if.then, !dbg !572

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr @ST_KV_DATABASE_EXCEPTION_ID, align 8, !dbg !573, !tbaa !203
  %6 = load ptr, ptr %dbTag, align 8, !dbg !575, !tbaa !203
  %7 = load ptr, ptr %type, align 8, !dbg !576, !tbaa !203
  call void (ptr, ptr, ...) @stThrowNew(ptr noundef %5, ptr noundef @.str.7, ptr noundef %6, ptr noundef %7), !dbg !577
  br label %if.end, !dbg !578

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %type, align 8, !dbg !579, !tbaa !203
  %call4 = call zeroext i1 @stString_eq(ptr noundef %8, ptr noundef @.str.8), !dbg !581
  br i1 %call4, label %if.then5, label %if.else, !dbg !582

if.then5:                                         ; preds = %if.end
  %9 = load ptr, ptr %hash, align 8, !dbg !583, !tbaa !203
  %call6 = call ptr @getXmlValueRequired(ptr noundef %9, ptr noundef @.str.9), !dbg !585
  %call7 = call ptr @stKVDatabaseConf_constructTokyoCabinet(ptr noundef %call6), !dbg !586
  store ptr %call7, ptr %databaseConf, align 8, !dbg !587, !tbaa !203
  br label %if.end39, !dbg !588

if.else:                                          ; preds = %if.end
  %10 = load ptr, ptr %type, align 8, !dbg !589, !tbaa !203
  %call8 = call zeroext i1 @stString_eq(ptr noundef %10, ptr noundef @.str.10), !dbg !591
  br i1 %call8, label %if.then9, label %if.else19, !dbg !592

if.then9:                                         ; preds = %if.else
  %11 = load ptr, ptr %hash, align 8, !dbg !593, !tbaa !203
  %call10 = call ptr @getXmlValueRequired(ptr noundef %11, ptr noundef @.str.11), !dbg !595
  %12 = load ptr, ptr %hash, align 8, !dbg !596, !tbaa !203
  %call11 = call i32 @getXmlPort(ptr noundef %12), !dbg !597
  %13 = load ptr, ptr %hash, align 8, !dbg !598, !tbaa !203
  %call12 = call i32 @getXmlTimeout(ptr noundef %13), !dbg !599
  %14 = load ptr, ptr %hash, align 8, !dbg !600, !tbaa !203
  %call13 = call i64 @getXMLMaxKTRecordSize(ptr noundef %14), !dbg !601
  %15 = load ptr, ptr %hash, align 8, !dbg !602, !tbaa !203
  %call14 = call i64 @getXMLMaxKTBulkSetSize(ptr noundef %15), !dbg !603
  %16 = load ptr, ptr %hash, align 8, !dbg !604, !tbaa !203
  %call15 = call i64 @getXMLMaxKTBulkSetNumRecords(ptr noundef %16), !dbg !605
  %17 = load ptr, ptr %hash, align 8, !dbg !606, !tbaa !203
  %call16 = call ptr @getXmlValueRequired(ptr noundef %17, ptr noundef @.str.9), !dbg !607
  %18 = load ptr, ptr %hash, align 8, !dbg !608, !tbaa !203
  %call17 = call ptr @stHash_search(ptr noundef %18, ptr noundef @.str.12), !dbg !609
  %call18 = call ptr @stKVDatabaseConf_constructKyotoTycoon(ptr noundef %call10, i32 noundef %call11, i32 noundef %call12, i64 noundef %call13, i64 noundef %call14, i64 noundef %call15, ptr noundef %call16, ptr noundef %call17), !dbg !610
  store ptr %call18, ptr %databaseConf, align 8, !dbg !611, !tbaa !203
  br label %if.end38, !dbg !612

if.else19:                                        ; preds = %if.else
  %19 = load ptr, ptr %type, align 8, !dbg !613, !tbaa !203
  %call20 = call zeroext i1 @stString_eq(ptr noundef %19, ptr noundef @.str.13), !dbg !615
  br i1 %call20, label %if.then21, label %if.else29, !dbg !616

if.then21:                                        ; preds = %if.else19
  %20 = load ptr, ptr %hash, align 8, !dbg !617, !tbaa !203
  %call22 = call ptr @getXmlValueRequired(ptr noundef %20, ptr noundef @.str.11), !dbg !619
  %21 = load ptr, ptr %hash, align 8, !dbg !620, !tbaa !203
  %call23 = call i32 @getXmlPort(ptr noundef %21), !dbg !621
  %22 = load ptr, ptr %hash, align 8, !dbg !622, !tbaa !203
  %call24 = call ptr @getXmlValueRequired(ptr noundef %22, ptr noundef @.str.14), !dbg !623
  %23 = load ptr, ptr %hash, align 8, !dbg !624, !tbaa !203
  %call25 = call ptr @getXmlValueRequired(ptr noundef %23, ptr noundef @.str.15), !dbg !625
  %24 = load ptr, ptr %hash, align 8, !dbg !626, !tbaa !203
  %call26 = call ptr @getXmlValueRequired(ptr noundef %24, ptr noundef @.str.12), !dbg !627
  %25 = load ptr, ptr %hash, align 8, !dbg !628, !tbaa !203
  %call27 = call ptr @getXmlValueRequired(ptr noundef %25, ptr noundef @.str.16), !dbg !629
  %call28 = call ptr @stKVDatabaseConf_constructMySql(ptr noundef %call22, i32 noundef %call23, ptr noundef %call24, ptr noundef %call25, ptr noundef %call26, ptr noundef %call27), !dbg !630
  store ptr %call28, ptr %databaseConf, align 8, !dbg !631, !tbaa !203
  br label %if.end37, !dbg !632

if.else29:                                        ; preds = %if.else19
  %26 = load ptr, ptr %type, align 8, !dbg !633, !tbaa !203
  %call30 = call zeroext i1 @stString_eq(ptr noundef %26, ptr noundef @.str.17), !dbg !635
  br i1 %call30, label %if.then31, label %if.else35, !dbg !636

if.then31:                                        ; preds = %if.else29
  %27 = load ptr, ptr %hash, align 8, !dbg !637, !tbaa !203
  %call32 = call ptr @getXmlValueRequired(ptr noundef %27, ptr noundef @.str.11), !dbg !639
  %28 = load ptr, ptr %hash, align 8, !dbg !640, !tbaa !203
  %call33 = call i32 @getXmlPort(ptr noundef %28), !dbg !641
  %call34 = call ptr @stKVDatabaseConf_constructRedis(ptr noundef %call32, i32 noundef %call33), !dbg !642
  store ptr %call34, ptr %databaseConf, align 8, !dbg !643, !tbaa !203
  br label %if.end36, !dbg !644

if.else35:                                        ; preds = %if.else29
  %29 = load ptr, ptr @ST_KV_DATABASE_EXCEPTION_ID, align 8, !dbg !645, !tbaa !203
  %30 = load ptr, ptr %type, align 8, !dbg !647, !tbaa !203
  call void (ptr, ptr, ...) @stThrowNew(ptr noundef %29, ptr noundef @.str.18, ptr noundef %30), !dbg !648
  br label %if.end36

if.end36:                                         ; preds = %if.else35, %if.then31
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then21
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then9
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then5
  %31 = load ptr, ptr %hash, align 8, !dbg !649, !tbaa !203
  call void @stHash_destruct(ptr noundef %31), !dbg !650
  %32 = load ptr, ptr %databaseConf, align 8, !dbg !651, !tbaa !203
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbTag) #9, !dbg !652
  call void @llvm.lifetime.end.p0(i64 8, ptr %type) #9, !dbg !652
  call void @llvm.lifetime.end.p0(i64 8, ptr %databaseConf) #9, !dbg !652
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash) #9, !dbg !652
  ret ptr %32, !dbg !653
}

declare !dbg !654 void @stThrowNewCause(ptr noundef, ptr noundef, ptr noundef, ...) #2

declare !dbg !657 void @stExcept_free(ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @stKVDatabaseConf_constructClone(ptr noundef %srcConf) #0 !dbg !660 {
entry:
  %srcConf.addr = alloca ptr, align 8
  %conf = alloca ptr, align 8
  store ptr %srcConf, ptr %srcConf.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %srcConf.addr, metadata !664, metadata !DIExpression()), !dbg !666
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #9, !dbg !667
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !665, metadata !DIExpression()), !dbg !668
  %call = call ptr @stSafeCCalloc(i64 noundef 88), !dbg !669
  store ptr %call, ptr %conf, align 8, !dbg !668, !tbaa !203
  %0 = load ptr, ptr %srcConf.addr, align 8, !dbg !670, !tbaa !203
  %type = getelementptr inbounds %struct.stKVDatabaseConf, ptr %0, i32 0, i32 0, !dbg !671
  %1 = load i32, ptr %type, align 8, !dbg !671, !tbaa !214
  %2 = load ptr, ptr %conf, align 8, !dbg !672, !tbaa !203
  %type1 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %2, i32 0, i32 0, !dbg !673
  store i32 %1, ptr %type1, align 8, !dbg !674, !tbaa !214
  %3 = load ptr, ptr %srcConf.addr, align 8, !dbg !675, !tbaa !203
  %databaseDir = getelementptr inbounds %struct.stKVDatabaseConf, ptr %3, i32 0, i32 1, !dbg !676
  %4 = load ptr, ptr %databaseDir, align 8, !dbg !676, !tbaa !223
  %call2 = call ptr @stString_copy(ptr noundef %4), !dbg !677
  %5 = load ptr, ptr %conf, align 8, !dbg !678, !tbaa !203
  %databaseDir3 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %5, i32 0, i32 1, !dbg !679
  store ptr %call2, ptr %databaseDir3, align 8, !dbg !680, !tbaa !223
  %6 = load ptr, ptr %srcConf.addr, align 8, !dbg !681, !tbaa !203
  %host = getelementptr inbounds %struct.stKVDatabaseConf, ptr %6, i32 0, i32 2, !dbg !682
  %7 = load ptr, ptr %host, align 8, !dbg !682, !tbaa !277
  %call4 = call ptr @stString_copy(ptr noundef %7), !dbg !683
  %8 = load ptr, ptr %conf, align 8, !dbg !684, !tbaa !203
  %host5 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %8, i32 0, i32 2, !dbg !685
  store ptr %call4, ptr %host5, align 8, !dbg !686, !tbaa !277
  %9 = load ptr, ptr %srcConf.addr, align 8, !dbg !687, !tbaa !203
  %port = getelementptr inbounds %struct.stKVDatabaseConf, ptr %9, i32 0, i32 3, !dbg !688
  %10 = load i32, ptr %port, align 8, !dbg !688, !tbaa !282
  %11 = load ptr, ptr %conf, align 8, !dbg !689, !tbaa !203
  %port6 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %11, i32 0, i32 3, !dbg !690
  store i32 %10, ptr %port6, align 8, !dbg !691, !tbaa !282
  %12 = load ptr, ptr %srcConf.addr, align 8, !dbg !692, !tbaa !203
  %timeout = getelementptr inbounds %struct.stKVDatabaseConf, ptr %12, i32 0, i32 4, !dbg !693
  %13 = load i32, ptr %timeout, align 4, !dbg !693, !tbaa !287
  %14 = load ptr, ptr %conf, align 8, !dbg !694, !tbaa !203
  %timeout7 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %14, i32 0, i32 4, !dbg !695
  store i32 %13, ptr %timeout7, align 4, !dbg !696, !tbaa !287
  %15 = load ptr, ptr %srcConf.addr, align 8, !dbg !697, !tbaa !203
  %maxKTRecordSize = getelementptr inbounds %struct.stKVDatabaseConf, ptr %15, i32 0, i32 5, !dbg !698
  %16 = load i64, ptr %maxKTRecordSize, align 8, !dbg !698, !tbaa !292
  %17 = load ptr, ptr %conf, align 8, !dbg !699, !tbaa !203
  %maxKTRecordSize8 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %17, i32 0, i32 5, !dbg !700
  store i64 %16, ptr %maxKTRecordSize8, align 8, !dbg !701, !tbaa !292
  %18 = load ptr, ptr %srcConf.addr, align 8, !dbg !702, !tbaa !203
  %maxKTBulkSetSize = getelementptr inbounds %struct.stKVDatabaseConf, ptr %18, i32 0, i32 6, !dbg !703
  %19 = load i64, ptr %maxKTBulkSetSize, align 8, !dbg !703, !tbaa !297
  %20 = load ptr, ptr %conf, align 8, !dbg !704, !tbaa !203
  %maxKTBulkSetSize9 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %20, i32 0, i32 6, !dbg !705
  store i64 %19, ptr %maxKTBulkSetSize9, align 8, !dbg !706, !tbaa !297
  %21 = load ptr, ptr %srcConf.addr, align 8, !dbg !707, !tbaa !203
  %maxKTBulkSetNumRecords = getelementptr inbounds %struct.stKVDatabaseConf, ptr %21, i32 0, i32 7, !dbg !708
  %22 = load i64, ptr %maxKTBulkSetNumRecords, align 8, !dbg !708, !tbaa !302
  %23 = load ptr, ptr %conf, align 8, !dbg !709, !tbaa !203
  %maxKTBulkSetNumRecords10 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %23, i32 0, i32 7, !dbg !710
  store i64 %22, ptr %maxKTBulkSetNumRecords10, align 8, !dbg !711, !tbaa !302
  %24 = load ptr, ptr %srcConf.addr, align 8, !dbg !712, !tbaa !203
  %user = getelementptr inbounds %struct.stKVDatabaseConf, ptr %24, i32 0, i32 8, !dbg !713
  %25 = load ptr, ptr %user, align 8, !dbg !713, !tbaa !410
  %call11 = call ptr @stString_copy(ptr noundef %25), !dbg !714
  %26 = load ptr, ptr %conf, align 8, !dbg !715, !tbaa !203
  %user12 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %26, i32 0, i32 8, !dbg !716
  store ptr %call11, ptr %user12, align 8, !dbg !717, !tbaa !410
  %27 = load ptr, ptr %srcConf.addr, align 8, !dbg !718, !tbaa !203
  %password = getelementptr inbounds %struct.stKVDatabaseConf, ptr %27, i32 0, i32 9, !dbg !719
  %28 = load ptr, ptr %password, align 8, !dbg !719, !tbaa !416
  %call13 = call ptr @stString_copy(ptr noundef %28), !dbg !720
  %29 = load ptr, ptr %conf, align 8, !dbg !721, !tbaa !203
  %password14 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %29, i32 0, i32 9, !dbg !722
  store ptr %call13, ptr %password14, align 8, !dbg !723, !tbaa !416
  %30 = load ptr, ptr %srcConf.addr, align 8, !dbg !724, !tbaa !203
  %databaseName = getelementptr inbounds %struct.stKVDatabaseConf, ptr %30, i32 0, i32 10, !dbg !725
  %31 = load ptr, ptr %databaseName, align 8, !dbg !725, !tbaa !308
  %call15 = call ptr @stString_copy(ptr noundef %31), !dbg !726
  %32 = load ptr, ptr %conf, align 8, !dbg !727, !tbaa !203
  %databaseName16 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %32, i32 0, i32 10, !dbg !728
  store ptr %call15, ptr %databaseName16, align 8, !dbg !729, !tbaa !308
  %33 = load ptr, ptr %srcConf.addr, align 8, !dbg !730, !tbaa !203
  %tableName = getelementptr inbounds %struct.stKVDatabaseConf, ptr %33, i32 0, i32 11, !dbg !731
  %34 = load ptr, ptr %tableName, align 8, !dbg !731, !tbaa !427
  %call17 = call ptr @stString_copy(ptr noundef %34), !dbg !732
  %35 = load ptr, ptr %conf, align 8, !dbg !733, !tbaa !203
  %tableName18 = getelementptr inbounds %struct.stKVDatabaseConf, ptr %35, i32 0, i32 11, !dbg !734
  store ptr %call17, ptr %tableName18, align 8, !dbg !735, !tbaa !427
  %36 = load ptr, ptr %conf, align 8, !dbg !736, !tbaa !203
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #9, !dbg !737
  ret ptr %36, !dbg !738
}

; Function Attrs: nounwind uwtable
define void @stKVDatabaseConf_destruct(ptr noundef %conf) #0 !dbg !739 {
entry:
  %conf.addr = alloca ptr, align 8
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !743, metadata !DIExpression()), !dbg !744
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !745, !tbaa !203
  %cmp = icmp ne ptr %0, null, !dbg !747
  br i1 %cmp, label %if.then, label %if.end, !dbg !748

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %conf.addr, align 8, !dbg !749, !tbaa !203
  %databaseDir = getelementptr inbounds %struct.stKVDatabaseConf, ptr %1, i32 0, i32 1, !dbg !751
  %2 = load ptr, ptr %databaseDir, align 8, !dbg !751, !tbaa !223
  call void @stSafeCFree(ptr noundef %2), !dbg !752
  %3 = load ptr, ptr %conf.addr, align 8, !dbg !753, !tbaa !203
  %host = getelementptr inbounds %struct.stKVDatabaseConf, ptr %3, i32 0, i32 2, !dbg !754
  %4 = load ptr, ptr %host, align 8, !dbg !754, !tbaa !277
  call void @stSafeCFree(ptr noundef %4), !dbg !755
  %5 = load ptr, ptr %conf.addr, align 8, !dbg !756, !tbaa !203
  %user = getelementptr inbounds %struct.stKVDatabaseConf, ptr %5, i32 0, i32 8, !dbg !757
  %6 = load ptr, ptr %user, align 8, !dbg !757, !tbaa !410
  call void @stSafeCFree(ptr noundef %6), !dbg !758
  %7 = load ptr, ptr %conf.addr, align 8, !dbg !759, !tbaa !203
  %password = getelementptr inbounds %struct.stKVDatabaseConf, ptr %7, i32 0, i32 9, !dbg !760
  %8 = load ptr, ptr %password, align 8, !dbg !760, !tbaa !416
  call void @stSafeCFree(ptr noundef %8), !dbg !761
  %9 = load ptr, ptr %conf.addr, align 8, !dbg !762, !tbaa !203
  %databaseName = getelementptr inbounds %struct.stKVDatabaseConf, ptr %9, i32 0, i32 10, !dbg !763
  %10 = load ptr, ptr %databaseName, align 8, !dbg !763, !tbaa !308
  call void @stSafeCFree(ptr noundef %10), !dbg !764
  %11 = load ptr, ptr %conf.addr, align 8, !dbg !765, !tbaa !203
  %tableName = getelementptr inbounds %struct.stKVDatabaseConf, ptr %11, i32 0, i32 11, !dbg !766
  %12 = load ptr, ptr %tableName, align 8, !dbg !766, !tbaa !427
  call void @stSafeCFree(ptr noundef %12), !dbg !767
  %13 = load ptr, ptr %conf.addr, align 8, !dbg !768, !tbaa !203
  call void @stSafeCFree(ptr noundef %13), !dbg !769
  br label %if.end, !dbg !770

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !771
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @stSafeCFree(ptr noundef %mem) #5 !dbg !772 {
entry:
  %mem.addr = alloca ptr, align 8
  store ptr %mem, ptr %mem.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %mem.addr, metadata !774, metadata !DIExpression()), !dbg !775
  %0 = load ptr, ptr %mem.addr, align 8, !dbg !776, !tbaa !203
  %cmp = icmp ne ptr %0, null, !dbg !778
  br i1 %cmp, label %if.then, label %if.end, !dbg !779

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %mem.addr, align 8, !dbg !780, !tbaa !203
  call void @free(ptr noundef %1) #9, !dbg !782
  br label %if.end, !dbg !783

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !784
}

; Function Attrs: nounwind uwtable
define i32 @stKVDatabaseConf_getType(ptr noundef %conf) #0 !dbg !785 {
entry:
  %conf.addr = alloca ptr, align 8
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !789, metadata !DIExpression()), !dbg !790
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !791, !tbaa !203
  %type = getelementptr inbounds %struct.stKVDatabaseConf, ptr %0, i32 0, i32 0, !dbg !792
  %1 = load i32, ptr %type, align 8, !dbg !792, !tbaa !214
  ret i32 %1, !dbg !793
}

; Function Attrs: nounwind uwtable
define ptr @stKVDatabaseConf_getDir(ptr noundef %conf) #0 !dbg !794 {
entry:
  %conf.addr = alloca ptr, align 8
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !798, metadata !DIExpression()), !dbg !799
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !800, !tbaa !203
  %databaseDir = getelementptr inbounds %struct.stKVDatabaseConf, ptr %0, i32 0, i32 1, !dbg !801
  %1 = load ptr, ptr %databaseDir, align 8, !dbg !801, !tbaa !223
  ret ptr %1, !dbg !802
}

; Function Attrs: nounwind uwtable
define ptr @stKVDatabaseConf_getHost(ptr noundef %conf) #0 !dbg !803 {
entry:
  %conf.addr = alloca ptr, align 8
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !805, metadata !DIExpression()), !dbg !806
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !807, !tbaa !203
  %host = getelementptr inbounds %struct.stKVDatabaseConf, ptr %0, i32 0, i32 2, !dbg !808
  %1 = load ptr, ptr %host, align 8, !dbg !808, !tbaa !277
  ret ptr %1, !dbg !809
}

; Function Attrs: nounwind uwtable
define i32 @stKVDatabaseConf_getPort(ptr noundef %conf) #0 !dbg !810 {
entry:
  %conf.addr = alloca ptr, align 8
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !814, metadata !DIExpression()), !dbg !815
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !816, !tbaa !203
  %port = getelementptr inbounds %struct.stKVDatabaseConf, ptr %0, i32 0, i32 3, !dbg !817
  %1 = load i32, ptr %port, align 8, !dbg !817, !tbaa !282
  ret i32 %1, !dbg !818
}

; Function Attrs: nounwind uwtable
define i32 @stKVDatabaseConf_getTimeout(ptr noundef %conf) #0 !dbg !819 {
entry:
  %conf.addr = alloca ptr, align 8
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !823, metadata !DIExpression()), !dbg !824
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !825, !tbaa !203
  %timeout = getelementptr inbounds %struct.stKVDatabaseConf, ptr %0, i32 0, i32 4, !dbg !826
  %1 = load i32, ptr %timeout, align 4, !dbg !826, !tbaa !287
  ret i32 %1, !dbg !827
}

; Function Attrs: nounwind uwtable
define i64 @stKVDatabaseConf_getMaxKTRecordSize(ptr noundef %conf) #0 !dbg !828 {
entry:
  %conf.addr = alloca ptr, align 8
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !832, metadata !DIExpression()), !dbg !833
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !834, !tbaa !203
  %maxKTRecordSize = getelementptr inbounds %struct.stKVDatabaseConf, ptr %0, i32 0, i32 5, !dbg !835
  %1 = load i64, ptr %maxKTRecordSize, align 8, !dbg !835, !tbaa !292
  ret i64 %1, !dbg !836
}

; Function Attrs: nounwind uwtable
define void @stKVDatabaseConf_setMaxKTRecordSize(ptr noundef %conf, i64 noundef %maxRecordSize) #0 !dbg !837 {
entry:
  %conf.addr = alloca ptr, align 8
  %maxRecordSize.addr = alloca i64, align 8
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !841, metadata !DIExpression()), !dbg !843
  store i64 %maxRecordSize, ptr %maxRecordSize.addr, align 8, !tbaa !255
  tail call void @llvm.dbg.declare(metadata ptr %maxRecordSize.addr, metadata !842, metadata !DIExpression()), !dbg !844
  %0 = load i64, ptr %maxRecordSize.addr, align 8, !dbg !845, !tbaa !255
  %1 = load ptr, ptr %conf.addr, align 8, !dbg !846, !tbaa !203
  %maxKTRecordSize = getelementptr inbounds %struct.stKVDatabaseConf, ptr %1, i32 0, i32 5, !dbg !847
  store i64 %0, ptr %maxKTRecordSize, align 8, !dbg !848, !tbaa !292
  ret void, !dbg !849
}

; Function Attrs: nounwind uwtable
define i64 @stKVDatabaseConf_getMaxKTBulkSetSize(ptr noundef %conf) #0 !dbg !850 {
entry:
  %conf.addr = alloca ptr, align 8
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !852, metadata !DIExpression()), !dbg !853
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !854, !tbaa !203
  %maxKTBulkSetSize = getelementptr inbounds %struct.stKVDatabaseConf, ptr %0, i32 0, i32 6, !dbg !855
  %1 = load i64, ptr %maxKTBulkSetSize, align 8, !dbg !855, !tbaa !297
  ret i64 %1, !dbg !856
}

; Function Attrs: nounwind uwtable
define i64 @stKVDatabaseConf_getMaxKTBulkSetNumRecords(ptr noundef %conf) #0 !dbg !857 {
entry:
  %conf.addr = alloca ptr, align 8
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !859, metadata !DIExpression()), !dbg !860
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !861, !tbaa !203
  %maxKTBulkSetNumRecords = getelementptr inbounds %struct.stKVDatabaseConf, ptr %0, i32 0, i32 7, !dbg !862
  %1 = load i64, ptr %maxKTBulkSetNumRecords, align 8, !dbg !862, !tbaa !302
  ret i64 %1, !dbg !863
}

; Function Attrs: nounwind uwtable
define ptr @stKVDatabaseConf_getUser(ptr noundef %conf) #0 !dbg !864 {
entry:
  %conf.addr = alloca ptr, align 8
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !866, metadata !DIExpression()), !dbg !867
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !868, !tbaa !203
  %user = getelementptr inbounds %struct.stKVDatabaseConf, ptr %0, i32 0, i32 8, !dbg !869
  %1 = load ptr, ptr %user, align 8, !dbg !869, !tbaa !410
  ret ptr %1, !dbg !870
}

; Function Attrs: nounwind uwtable
define ptr @stKVDatabaseConf_getPassword(ptr noundef %conf) #0 !dbg !871 {
entry:
  %conf.addr = alloca ptr, align 8
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !873, metadata !DIExpression()), !dbg !874
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !875, !tbaa !203
  %password = getelementptr inbounds %struct.stKVDatabaseConf, ptr %0, i32 0, i32 9, !dbg !876
  %1 = load ptr, ptr %password, align 8, !dbg !876, !tbaa !416
  ret ptr %1, !dbg !877
}

; Function Attrs: nounwind uwtable
define ptr @stKVDatabaseConf_getDatabaseName(ptr noundef %conf) #0 !dbg !878 {
entry:
  %conf.addr = alloca ptr, align 8
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !880, metadata !DIExpression()), !dbg !881
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !882, !tbaa !203
  %databaseName = getelementptr inbounds %struct.stKVDatabaseConf, ptr %0, i32 0, i32 10, !dbg !883
  %1 = load ptr, ptr %databaseName, align 8, !dbg !883, !tbaa !308
  ret ptr %1, !dbg !884
}

; Function Attrs: nounwind uwtable
define ptr @stKVDatabaseConf_getTableName(ptr noundef %conf) #0 !dbg !885 {
entry:
  %conf.addr = alloca ptr, align 8
  store ptr %conf, ptr %conf.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !887, metadata !DIExpression()), !dbg !888
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !889, !tbaa !203
  %tableName = getelementptr inbounds %struct.stKVDatabaseConf, ptr %0, i32 0, i32 11, !dbg !890
  %1 = load ptr, ptr %tableName, align 8, !dbg !890, !tbaa !427
  ret ptr %1, !dbg !891
}

; Function Attrs: nounwind uwtable
define internal ptr @hackParseXmlString(ptr noundef %xmlString) #0 !dbg !892 {
entry:
  %xmlString.addr = alloca ptr, align 8
  %hash = alloca ptr, align 8
  %toReplace = alloca [5 x ptr], align 16
  %cA = alloca ptr, align 8
  %cA2 = alloca ptr, align 8
  %i = alloca i64, align 8
  %key = alloca ptr, align 8
  %value = alloca ptr, align 8
  store ptr %xmlString, ptr %xmlString.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %xmlString.addr, metadata !896, metadata !DIExpression()), !dbg !907
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash) #9, !dbg !908
  tail call void @llvm.dbg.declare(metadata ptr %hash, metadata !897, metadata !DIExpression()), !dbg !909
  %call = call ptr @stHash_construct3(ptr noundef @stHash_stringKey, ptr noundef @stHash_stringEqualKey, ptr noundef @free, ptr noundef @free), !dbg !910
  store ptr %call, ptr %hash, align 8, !dbg !909, !tbaa !203
  call void @llvm.lifetime.start.p0(i64 40, ptr %toReplace) #9, !dbg !911
  tail call void @llvm.dbg.declare(metadata ptr %toReplace, metadata !898, metadata !DIExpression()), !dbg !912
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %toReplace, ptr align 16 @__const.hackParseXmlString.toReplace, i64 40, i1 false), !dbg !912
  call void @llvm.lifetime.start.p0(i64 8, ptr %cA) #9, !dbg !913
  tail call void @llvm.dbg.declare(metadata ptr %cA, metadata !900, metadata !DIExpression()), !dbg !914
  %0 = load ptr, ptr %xmlString.addr, align 8, !dbg !915, !tbaa !203
  %arrayidx = getelementptr inbounds [5 x ptr], ptr %toReplace, i64 0, i64 0, !dbg !916
  %1 = load ptr, ptr %arrayidx, align 16, !dbg !916, !tbaa !203
  %call1 = call ptr @stString_replace(ptr noundef %0, ptr noundef %1, ptr noundef @.str.24), !dbg !917
  store ptr %call1, ptr %cA, align 8, !dbg !914, !tbaa !203
  call void @llvm.lifetime.start.p0(i64 8, ptr %cA2) #9, !dbg !913
  tail call void @llvm.dbg.declare(metadata ptr %cA2, metadata !901, metadata !DIExpression()), !dbg !918
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9, !dbg !919
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !902, metadata !DIExpression()), !dbg !920
  store i64 1, ptr %i, align 8, !dbg !920, !tbaa !255
  br label %for.cond, !dbg !919

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %i, align 8, !dbg !921, !tbaa !255
  %cmp = icmp slt i64 %2, 5, !dbg !923
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !924

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9, !dbg !925
  br label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %cA, align 8, !dbg !926, !tbaa !203
  %4 = load i64, ptr %i, align 8, !dbg !928, !tbaa !255
  %arrayidx2 = getelementptr inbounds [5 x ptr], ptr %toReplace, i64 0, i64 %4, !dbg !929
  %5 = load ptr, ptr %arrayidx2, align 8, !dbg !929, !tbaa !203
  %call3 = call ptr @stString_replace(ptr noundef %3, ptr noundef %5, ptr noundef @.str.24), !dbg !930
  store ptr %call3, ptr %cA2, align 8, !dbg !931, !tbaa !203
  %6 = load ptr, ptr %cA, align 8, !dbg !932, !tbaa !203
  call void @free(ptr noundef %6) #9, !dbg !933
  %7 = load ptr, ptr %cA2, align 8, !dbg !934, !tbaa !203
  store ptr %7, ptr %cA, align 8, !dbg !935, !tbaa !203
  br label %for.inc, !dbg !936

for.inc:                                          ; preds = %for.body
  %8 = load i64, ptr %i, align 8, !dbg !937, !tbaa !255
  %inc = add nsw i64 %8, 1, !dbg !937
  store i64 %inc, ptr %i, align 8, !dbg !937, !tbaa !255
  br label %for.cond, !dbg !925, !llvm.loop !938

for.end:                                          ; preds = %for.cond.cleanup
  call void @getExpectedToken(ptr noundef %cA2, ptr noundef @.str.25), !dbg !940
  %9 = load ptr, ptr %hash, align 8, !dbg !941, !tbaa !203
  %call4 = call ptr @stString_copy(ptr noundef @.str.5), !dbg !942
  %call5 = call ptr @getKeyValue(ptr noundef %cA2, ptr noundef @.str.26), !dbg !943
  call void @stHash_insert(ptr noundef %9, ptr noundef %call4, ptr noundef %call5), !dbg !944
  %10 = load ptr, ptr %hash, align 8, !dbg !945, !tbaa !203
  %call6 = call ptr @stString_copy(ptr noundef @.str.6), !dbg !946
  %call7 = call ptr @getNextToken(ptr noundef %cA2), !dbg !947
  call void @stHash_insert(ptr noundef %10, ptr noundef %call6, ptr noundef %call7), !dbg !948
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #9, !dbg !949
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !904, metadata !DIExpression()), !dbg !950
  br label %while.cond, !dbg !951

while.cond:                                       ; preds = %if.end16, %for.end
  %call8 = call ptr @getNextToken(ptr noundef %cA2), !dbg !952
  store ptr %call8, ptr %key, align 8, !dbg !953, !tbaa !203
  %cmp9 = icmp ne ptr %call8, null, !dbg !954
  br i1 %cmp9, label %land.rhs, label %land.end, !dbg !955

land.rhs:                                         ; preds = %while.cond
  %11 = load ptr, ptr %key, align 8, !dbg !956, !tbaa !203
  %call10 = call zeroext i1 @stString_eq(ptr noundef %11, ptr noundef @.str.25), !dbg !957
  %lnot = xor i1 %call10, true, !dbg !958
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ], !dbg !959
  br i1 %12, label %while.body, label %while.end, !dbg !951

while.body:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #9, !dbg !960
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !905, metadata !DIExpression()), !dbg !961
  %call11 = call ptr @getNextToken(ptr noundef %cA2), !dbg !962
  store ptr %call11, ptr %value, align 8, !dbg !961, !tbaa !203
  %13 = load ptr, ptr %value, align 8, !dbg !963, !tbaa !203
  %cmp12 = icmp eq ptr %13, null, !dbg !965
  br i1 %cmp12, label %if.then, label %if.end, !dbg !966

if.then:                                          ; preds = %while.body
  %14 = load ptr, ptr @ST_KV_DATABASE_EXCEPTION_ID, align 8, !dbg !967, !tbaa !203
  %15 = load ptr, ptr %key, align 8, !dbg !969, !tbaa !203
  call void (ptr, ptr, ...) @stThrowNew(ptr noundef %14, ptr noundef @.str.27, ptr noundef %15), !dbg !970
  br label %if.end, !dbg !971

if.end:                                           ; preds = %if.then, %while.body
  %16 = load ptr, ptr %hash, align 8, !dbg !972, !tbaa !203
  %17 = load ptr, ptr %key, align 8, !dbg !974, !tbaa !203
  %call13 = call ptr @stHash_search(ptr noundef %16, ptr noundef %17), !dbg !975
  %cmp14 = icmp ne ptr %call13, null, !dbg !976
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !977

if.then15:                                        ; preds = %if.end
  %18 = load ptr, ptr @ST_KV_DATABASE_EXCEPTION_ID, align 8, !dbg !978, !tbaa !203
  %19 = load ptr, ptr %key, align 8, !dbg !980, !tbaa !203
  call void (ptr, ptr, ...) @stThrowNew(ptr noundef %18, ptr noundef @.str.28, ptr noundef %19), !dbg !981
  br label %if.end16, !dbg !982

if.end16:                                         ; preds = %if.then15, %if.end
  %20 = load ptr, ptr %hash, align 8, !dbg !983, !tbaa !203
  %21 = load ptr, ptr %key, align 8, !dbg !984, !tbaa !203
  %22 = load ptr, ptr %value, align 8, !dbg !985, !tbaa !203
  call void @stHash_insert(ptr noundef %20, ptr noundef %21, ptr noundef %22), !dbg !986
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #9, !dbg !987
  br label %while.cond, !dbg !951, !llvm.loop !988

while.end:                                        ; preds = %land.end
  %23 = load ptr, ptr %key, align 8, !dbg !989, !tbaa !203
  %call17 = call zeroext i1 @stString_eq(ptr noundef %23, ptr noundef @.str.25), !dbg !991
  br i1 %call17, label %if.end19, label %if.then18, !dbg !992

if.then18:                                        ; preds = %while.end
  %24 = load ptr, ptr @ST_KV_DATABASE_EXCEPTION_ID, align 8, !dbg !993, !tbaa !203
  %25 = load ptr, ptr %key, align 8, !dbg !995, !tbaa !203
  call void (ptr, ptr, ...) @stThrowNew(ptr noundef %24, ptr noundef @.str.29, ptr noundef %25), !dbg !996
  br label %if.end19, !dbg !997

if.end19:                                         ; preds = %if.then18, %while.end
  %26 = load ptr, ptr %key, align 8, !dbg !998, !tbaa !203
  call void @free(ptr noundef %26) #9, !dbg !999
  %27 = load ptr, ptr %cA, align 8, !dbg !1000, !tbaa !203
  call void @free(ptr noundef %27) #9, !dbg !1001
  %28 = load ptr, ptr %hash, align 8, !dbg !1002, !tbaa !203
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #9, !dbg !1003
  call void @llvm.lifetime.end.p0(i64 8, ptr %cA2) #9, !dbg !1003
  call void @llvm.lifetime.end.p0(i64 8, ptr %cA) #9, !dbg !1003
  call void @llvm.lifetime.end.p0(i64 40, ptr %toReplace) #9, !dbg !1003
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash) #9, !dbg !1003
  ret ptr %28, !dbg !1004
}

; Function Attrs: nounwind uwtable
define internal ptr @getXmlValueRequired(ptr noundef %hash, ptr noundef %key) #0 !dbg !1005 {
entry:
  %hash.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  store ptr %hash, ptr %hash.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !1009, metadata !DIExpression()), !dbg !1012
  store ptr %key, ptr %key.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1010, metadata !DIExpression()), !dbg !1013
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #9, !dbg !1014
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !1011, metadata !DIExpression()), !dbg !1015
  %0 = load ptr, ptr %hash.addr, align 8, !dbg !1016, !tbaa !203
  %1 = load ptr, ptr %key.addr, align 8, !dbg !1017, !tbaa !203
  %call = call ptr @stHash_search(ptr noundef %0, ptr noundef %1), !dbg !1018
  store ptr %call, ptr %value, align 8, !dbg !1015, !tbaa !203
  %2 = load ptr, ptr %value, align 8, !dbg !1019, !tbaa !203
  %cmp = icmp eq ptr %2, null, !dbg !1021
  br i1 %cmp, label %if.then, label %if.end, !dbg !1022

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @ST_KV_DATABASE_EXCEPTION_ID, align 8, !dbg !1023, !tbaa !203
  %4 = load ptr, ptr %key.addr, align 8, !dbg !1025, !tbaa !203
  call void (ptr, ptr, ...) @stThrowNew(ptr noundef %3, ptr noundef @.str.31, ptr noundef %4), !dbg !1026
  br label %if.end, !dbg !1027

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %value, align 8, !dbg !1028, !tbaa !203
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #9, !dbg !1029
  ret ptr %5, !dbg !1030
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @stString_eq(ptr noundef %string1, ptr noundef %string2) #5 !dbg !1031 {
entry:
  %retval = alloca i1, align 1
  %string1.addr = alloca ptr, align 8
  %string2.addr = alloca ptr, align 8
  store ptr %string1, ptr %string1.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %string1.addr, metadata !1036, metadata !DIExpression()), !dbg !1038
  store ptr %string2, ptr %string2.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %string2.addr, metadata !1037, metadata !DIExpression()), !dbg !1039
  %0 = load ptr, ptr %string1.addr, align 8, !dbg !1040, !tbaa !203
  %cmp = icmp eq ptr %0, null, !dbg !1042
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !1043

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %string2.addr, align 8, !dbg !1044, !tbaa !203
  %cmp1 = icmp eq ptr %1, null, !dbg !1045
  br i1 %cmp1, label %if.then, label %if.else, !dbg !1046

if.then:                                          ; preds = %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !1047
  br label %return, !dbg !1047

if.else:                                          ; preds = %land.lhs.true, %entry
  %2 = load ptr, ptr %string1.addr, align 8, !dbg !1049, !tbaa !203
  %cmp2 = icmp eq ptr %2, null, !dbg !1051
  br i1 %cmp2, label %if.then4, label %lor.lhs.false, !dbg !1052

lor.lhs.false:                                    ; preds = %if.else
  %3 = load ptr, ptr %string2.addr, align 8, !dbg !1053, !tbaa !203
  %cmp3 = icmp eq ptr %3, null, !dbg !1054
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !1055

if.then4:                                         ; preds = %lor.lhs.false, %if.else
  store i1 false, ptr %retval, align 1, !dbg !1056
  br label %return, !dbg !1056

if.else5:                                         ; preds = %lor.lhs.false
  %4 = load ptr, ptr %string1.addr, align 8, !dbg !1058, !tbaa !203
  %5 = load ptr, ptr %string2.addr, align 8, !dbg !1060, !tbaa !203
  %call = call i32 @strcmp(ptr noundef %4, ptr noundef %5) #11, !dbg !1061
  %cmp6 = icmp eq i32 %call, 0, !dbg !1062
  store i1 %cmp6, ptr %retval, align 1, !dbg !1063
  br label %return, !dbg !1063

return:                                           ; preds = %if.else5, %if.then4, %if.then
  %6 = load i1, ptr %retval, align 1, !dbg !1064
  ret i1 %6, !dbg !1064
}

; Function Attrs: nounwind uwtable
define internal i32 @getXmlPort(ptr noundef %hash) #0 !dbg !1065 {
entry:
  %retval = alloca i32, align 4
  %hash.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hash, ptr %hash.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !1069, metadata !DIExpression()), !dbg !1071
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #9, !dbg !1072
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !1070, metadata !DIExpression()), !dbg !1073
  %0 = load ptr, ptr %hash.addr, align 8, !dbg !1074, !tbaa !203
  %call = call ptr @stHash_search(ptr noundef %0, ptr noundef @.str.32), !dbg !1075
  store ptr %call, ptr %value, align 8, !dbg !1073, !tbaa !203
  %1 = load ptr, ptr %value, align 8, !dbg !1076, !tbaa !203
  %cmp = icmp eq ptr %1, null, !dbg !1078
  br i1 %cmp, label %if.then, label %if.else, !dbg !1079

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1080
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1080

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %value, align 8, !dbg !1082, !tbaa !203
  %call1 = call i64 @stSafeStrToUInt32(ptr noundef %2), !dbg !1084
  %conv = trunc i64 %call1 to i32, !dbg !1084
  store i32 %conv, ptr %retval, align 4, !dbg !1085
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1085

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #9, !dbg !1086
  %3 = load i32, ptr %retval, align 4, !dbg !1086
  ret i32 %3, !dbg !1086
}

; Function Attrs: nounwind uwtable
define internal i32 @getXmlTimeout(ptr noundef %hash) #0 !dbg !1087 {
entry:
  %retval = alloca i32, align 4
  %hash.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hash, ptr %hash.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !1089, metadata !DIExpression()), !dbg !1091
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #9, !dbg !1092
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !1090, metadata !DIExpression()), !dbg !1093
  %0 = load ptr, ptr %hash.addr, align 8, !dbg !1094, !tbaa !203
  %call = call ptr @stHash_search(ptr noundef %0, ptr noundef @.str.33), !dbg !1095
  store ptr %call, ptr %value, align 8, !dbg !1093, !tbaa !203
  %1 = load ptr, ptr %value, align 8, !dbg !1096, !tbaa !203
  %cmp = icmp eq ptr %1, null, !dbg !1098
  br i1 %cmp, label %if.then, label %if.else, !dbg !1099

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !1100
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1100

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %value, align 8, !dbg !1102, !tbaa !203
  %call1 = call i64 @stSafeStrToUInt32(ptr noundef %2), !dbg !1104
  %conv = trunc i64 %call1 to i32, !dbg !1104
  store i32 %conv, ptr %retval, align 4, !dbg !1105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1105

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #9, !dbg !1106
  %3 = load i32, ptr %retval, align 4, !dbg !1106
  ret i32 %3, !dbg !1106
}

; Function Attrs: nounwind uwtable
define internal i64 @getXMLMaxKTRecordSize(ptr noundef %hash) #0 !dbg !1107 {
entry:
  %retval = alloca i64, align 8
  %hash.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hash, ptr %hash.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !1111, metadata !DIExpression()), !dbg !1113
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #9, !dbg !1114
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !1112, metadata !DIExpression()), !dbg !1115
  %0 = load ptr, ptr %hash.addr, align 8, !dbg !1116, !tbaa !203
  %call = call ptr @stHash_search(ptr noundef %0, ptr noundef @.str.34), !dbg !1117
  store ptr %call, ptr %value, align 8, !dbg !1115, !tbaa !203
  %1 = load ptr, ptr %value, align 8, !dbg !1118, !tbaa !203
  %cmp = icmp eq ptr %1, null, !dbg !1120
  br i1 %cmp, label %if.then, label %if.else, !dbg !1121

if.then:                                          ; preds = %entry
  store i64 10000000, ptr %retval, align 8, !dbg !1122
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1122

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %value, align 8, !dbg !1124, !tbaa !203
  %call1 = call i64 @stSafeStrToInt64(ptr noundef %2), !dbg !1126
  store i64 %call1, ptr %retval, align 8, !dbg !1127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1127

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #9, !dbg !1128
  %3 = load i64, ptr %retval, align 8, !dbg !1128
  ret i64 %3, !dbg !1128
}

; Function Attrs: nounwind uwtable
define internal i64 @getXMLMaxKTBulkSetSize(ptr noundef %hash) #0 !dbg !1129 {
entry:
  %retval = alloca i64, align 8
  %hash.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hash, ptr %hash.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !1131, metadata !DIExpression()), !dbg !1133
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #9, !dbg !1134
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !1132, metadata !DIExpression()), !dbg !1135
  %0 = load ptr, ptr %hash.addr, align 8, !dbg !1136, !tbaa !203
  %call = call ptr @stHash_search(ptr noundef %0, ptr noundef @.str.35), !dbg !1137
  store ptr %call, ptr %value, align 8, !dbg !1135, !tbaa !203
  %1 = load ptr, ptr %value, align 8, !dbg !1138, !tbaa !203
  %cmp = icmp eq ptr %1, null, !dbg !1140
  br i1 %cmp, label %if.then, label %if.else, !dbg !1141

if.then:                                          ; preds = %entry
  store i64 183500800, ptr %retval, align 8, !dbg !1142
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1142

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %value, align 8, !dbg !1144, !tbaa !203
  %call1 = call i64 @stSafeStrToInt64(ptr noundef %2), !dbg !1146
  store i64 %call1, ptr %retval, align 8, !dbg !1147
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1147

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #9, !dbg !1148
  %3 = load i64, ptr %retval, align 8, !dbg !1148
  ret i64 %3, !dbg !1148
}

; Function Attrs: nounwind uwtable
define internal i64 @getXMLMaxKTBulkSetNumRecords(ptr noundef %hash) #0 !dbg !1149 {
entry:
  %retval = alloca i64, align 8
  %hash.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hash, ptr %hash.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !1151, metadata !DIExpression()), !dbg !1153
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #9, !dbg !1154
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !1152, metadata !DIExpression()), !dbg !1155
  %0 = load ptr, ptr %hash.addr, align 8, !dbg !1156, !tbaa !203
  %call = call ptr @stHash_search(ptr noundef %0, ptr noundef @.str.36), !dbg !1157
  store ptr %call, ptr %value, align 8, !dbg !1155, !tbaa !203
  %1 = load ptr, ptr %value, align 8, !dbg !1158, !tbaa !203
  %cmp = icmp eq ptr %1, null, !dbg !1160
  br i1 %cmp, label %if.then, label %if.else, !dbg !1161

if.then:                                          ; preds = %entry
  store i64 10000, ptr %retval, align 8, !dbg !1162
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1162

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %value, align 8, !dbg !1164, !tbaa !203
  %call1 = call i64 @stSafeStrToInt64(ptr noundef %2), !dbg !1166
  store i64 %call1, ptr %retval, align 8, !dbg !1167
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1167

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #9, !dbg !1168
  %3 = load i64, ptr %retval, align 8, !dbg !1168
  ret i64 %3, !dbg !1168
}

declare !dbg !1169 ptr @stHash_search(ptr noundef, ptr noundef) #2

declare !dbg !1173 void @stHash_destruct(ptr noundef) #2

declare !dbg !1176 ptr @stHash_construct3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @stHash_stringKey(ptr noundef) #2

declare i32 @stHash_stringEqualKey(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define internal void @getExpectedToken(ptr noundef %tokenStream, ptr noundef %expected) #0 !dbg !1191 {
entry:
  %tokenStream.addr = alloca ptr, align 8
  %expected.addr = alloca ptr, align 8
  %cA = alloca ptr, align 8
  store ptr %tokenStream, ptr %tokenStream.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %tokenStream.addr, metadata !1195, metadata !DIExpression()), !dbg !1198
  store ptr %expected, ptr %expected.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %expected.addr, metadata !1196, metadata !DIExpression()), !dbg !1199
  call void @llvm.lifetime.start.p0(i64 8, ptr %cA) #9, !dbg !1200
  tail call void @llvm.dbg.declare(metadata ptr %cA, metadata !1197, metadata !DIExpression()), !dbg !1201
  %0 = load ptr, ptr %tokenStream.addr, align 8, !dbg !1202, !tbaa !203
  %call = call ptr @getNextToken(ptr noundef %0), !dbg !1203
  store ptr %call, ptr %cA, align 8, !dbg !1201, !tbaa !203
  %1 = load ptr, ptr %cA, align 8, !dbg !1204, !tbaa !203
  %2 = load ptr, ptr %expected.addr, align 8, !dbg !1206, !tbaa !203
  %call1 = call zeroext i1 @stString_eq(ptr noundef %1, ptr noundef %2), !dbg !1207
  br i1 %call1, label %if.end, label %if.then, !dbg !1208

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @ST_KV_DATABASE_EXCEPTION_ID, align 8, !dbg !1209, !tbaa !203
  %4 = load ptr, ptr %expected.addr, align 8, !dbg !1211, !tbaa !203
  %5 = load ptr, ptr %cA, align 8, !dbg !1212, !tbaa !203
  %6 = load ptr, ptr %tokenStream.addr, align 8, !dbg !1213, !tbaa !203
  %7 = load ptr, ptr %6, align 8, !dbg !1214, !tbaa !203
  call void (ptr, ptr, ...) @stThrowNew(ptr noundef %3, ptr noundef @.str.30, ptr noundef %4, ptr noundef %5, ptr noundef %7), !dbg !1215
  br label %if.end, !dbg !1216

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %cA, align 8, !dbg !1217, !tbaa !203
  call void @free(ptr noundef %8) #9, !dbg !1218
  call void @llvm.lifetime.end.p0(i64 8, ptr %cA) #9, !dbg !1219
  ret void, !dbg !1219
}

declare !dbg !1220 void @stHash_insert(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @getKeyValue(ptr noundef %tokenStream, ptr noundef %key) #0 !dbg !1223 {
entry:
  %tokenStream.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  store ptr %tokenStream, ptr %tokenStream.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %tokenStream.addr, metadata !1227, metadata !DIExpression()), !dbg !1229
  store ptr %key, ptr %key.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1228, metadata !DIExpression()), !dbg !1230
  %0 = load ptr, ptr %tokenStream.addr, align 8, !dbg !1231, !tbaa !203
  %1 = load ptr, ptr %key.addr, align 8, !dbg !1232, !tbaa !203
  call void @getExpectedToken(ptr noundef %0, ptr noundef %1), !dbg !1233
  %2 = load ptr, ptr %tokenStream.addr, align 8, !dbg !1234, !tbaa !203
  %call = call ptr @getNextToken(ptr noundef %2), !dbg !1235
  ret ptr %call, !dbg !1236
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1237 i32 @strcmp(ptr noundef, ptr noundef) #7

declare !dbg !1241 i64 @stSafeStrToUInt32(ptr noundef) #2

declare !dbg !1244 i64 @stSafeStrToInt64(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind returns_twice }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!151}
!llvm.module.flags = !{!170, !171, !172, !173, !174}
!llvm.ident = !{!175}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "impl/sonLibKVDatabaseConf.c", directory: "/local-ssd/sonlib-v6oqz5ulgx4ids65u3c42j7jkpww5xiq-build/aidengro/spack-stage-sonlib-2020-04-01-v6oqz5ulgx4ids65u3c42j7jkpww5xiq/spack-src/C", checksumkind: CSK_MD5, checksum: "a968c17b592f8b77bf896a1d8a3d956d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 608, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 76)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 2)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 1)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !9, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 258, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 39)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 224, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 10)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 225, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 7)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 227, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 71)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 229, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 14)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 230, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 13)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 231, type: !46, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 232, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 5)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 239, type: !41, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 240, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 6)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 242, type: !53, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 242, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 9)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !2, line: 243, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 11)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !2, line: 244, type: !60, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 247, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 27)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 3)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !9, isLocal: true, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !84, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !9, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !9, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !2, line: 126, type: !9, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 20)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 133, type: !53, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 140, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 36)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 143, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 55)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !2, line: 148, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 35)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 680, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 85)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !126, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 53)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !53, isLocal: true, isDefinition: true)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !2, line: 173, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 8)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !2, line: 190, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 16)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !2, line: 202, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 17)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !2, line: 213, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 24)
!151 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, retainedTypes: !161, globals: !169, splitDebugInlining: false, nameTableKind: None)
!152 = !{!153}
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !154, line: 15, baseType: !155, size: 32, elements: !156)
!154 = !DIFile(filename: "inc/sonLibKVDatabaseConf.h", directory: "/local-ssd/sonlib-v6oqz5ulgx4ids65u3c42j7jkpww5xiq-build/aidengro/spack-stage-sonlib-2020-04-01-v6oqz5ulgx4ids65u3c42j7jkpww5xiq/spack-src/C", checksumkind: CSK_MD5, checksum: "12540acd461b51cbc071d0871c146b2a")
!155 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!156 = !{!157, !158, !159, !160}
!157 = !DIEnumerator(name: "stKVDatabaseTypeTokyoCabinet", value: 0)
!158 = !DIEnumerator(name: "stKVDatabaseTypeKyotoTycoon", value: 1)
!159 = !DIEnumerator(name: "stKVDatabaseTypeMySql", value: 2)
!160 = !DIEnumerator(name: "stKVDatabaseTypeRedis", value: 3)
!161 = !{!162, !163, !164}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !165, line: 27, baseType: !166)
!165 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !167, line: 44, baseType: !168)
!167 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!168 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!169 = !{!0, !7, !12, !17, !19, !24, !29, !34, !39, !44, !49, !51, !56, !58, !63, !65, !70, !75, !77, !82, !87, !89, !91, !93, !95, !97, !102, !104, !109, !114, !119, !124, !129, !131, !136, !141, !146}
!170 = !{i32 7, !"Dwarf Version", i32 5}
!171 = !{i32 2, !"Debug Info Version", i32 3}
!172 = !{i32 1, !"wchar_size", i32 4}
!173 = !{i32 8, !"PIC Level", i32 2}
!174 = !{i32 7, !"uwtable", i32 2}
!175 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!176 = distinct !DISubprogram(name: "stKVDatabaseConf_constructTokyoCabinet", scope: !2, file: !2, line: 38, type: !177, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !200)
!177 = !DISubroutineType(types: !178)
!178 = !{!179, !198}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "stKVDatabaseConf", file: !181, line: 48, baseType: !182)
!181 = !DIFile(filename: "inc/sonLibTypes.h", directory: "/local-ssd/sonlib-v6oqz5ulgx4ids65u3c42j7jkpww5xiq-build/aidengro/spack-stage-sonlib-2020-04-01-v6oqz5ulgx4ids65u3c42j7jkpww5xiq/spack-src/C", checksumkind: CSK_MD5, checksum: "fa8ee27ce8bc55779f777caa497f6304")
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stKVDatabaseConf", file: !2, line: 23, size: 704, elements: !183)
!183 = !{!184, !186, !187, !188, !189, !191, !192, !193, !194, !195, !196, !197}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !182, file: !2, line: 24, baseType: !185, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "stKVDatabaseType", file: !154, line: 20, baseType: !153)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "databaseDir", scope: !182, file: !2, line: 25, baseType: !163, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !182, file: !2, line: 26, baseType: !163, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !182, file: !2, line: 27, baseType: !155, size: 32, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !182, file: !2, line: 28, baseType: !190, size: 32, offset: 224)
!190 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "maxKTRecordSize", scope: !182, file: !2, line: 29, baseType: !164, size: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "maxKTBulkSetSize", scope: !182, file: !2, line: 30, baseType: !164, size: 64, offset: 320)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "maxKTBulkSetNumRecords", scope: !182, file: !2, line: 31, baseType: !164, size: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !182, file: !2, line: 32, baseType: !163, size: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !182, file: !2, line: 33, baseType: !163, size: 64, offset: 512)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "databaseName", scope: !182, file: !2, line: 34, baseType: !163, size: 64, offset: 576)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "tableName", scope: !182, file: !2, line: 35, baseType: !163, size: 64, offset: 640)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!200 = !{!201, !202}
!201 = !DILocalVariable(name: "databaseDir", arg: 1, scope: !176, file: !2, line: 38, type: !198)
!202 = !DILocalVariable(name: "conf", scope: !176, file: !2, line: 39, type: !179)
!203 = !{!204, !204, i64 0}
!204 = !{!"any pointer", !205, i64 0}
!205 = !{!"omnipotent char", !206, i64 0}
!206 = !{!"Simple C/C++ TBAA"}
!207 = !DILocation(line: 38, column: 70, scope: !176)
!208 = !DILocation(line: 39, column: 5, scope: !176)
!209 = !DILocation(line: 39, column: 23, scope: !176)
!210 = !DILocation(line: 39, column: 30, scope: !176)
!211 = !DILocation(line: 40, column: 5, scope: !176)
!212 = !DILocation(line: 40, column: 11, scope: !176)
!213 = !DILocation(line: 40, column: 16, scope: !176)
!214 = !{!215, !205, i64 0}
!215 = !{!"stKVDatabaseConf", !205, i64 0, !204, i64 8, !204, i64 16, !216, i64 24, !216, i64 28, !217, i64 32, !217, i64 40, !217, i64 48, !204, i64 56, !204, i64 64, !204, i64 72, !204, i64 80}
!216 = !{!"int", !205, i64 0}
!217 = !{!"long", !205, i64 0}
!218 = !DILocation(line: 41, column: 39, scope: !176)
!219 = !DILocation(line: 41, column: 25, scope: !176)
!220 = !DILocation(line: 41, column: 5, scope: !176)
!221 = !DILocation(line: 41, column: 11, scope: !176)
!222 = !DILocation(line: 41, column: 23, scope: !176)
!223 = !{!215, !204, i64 8}
!224 = !DILocation(line: 42, column: 12, scope: !176)
!225 = !DILocation(line: 43, column: 1, scope: !176)
!226 = !DILocation(line: 42, column: 5, scope: !176)
!227 = !DISubprogram(name: "stSafeCCalloc", scope: !228, file: !228, line: 51, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!228 = !DIFile(filename: "inc/stSafeC.h", directory: "/local-ssd/sonlib-v6oqz5ulgx4ids65u3c42j7jkpww5xiq-build/aidengro/spack-stage-sonlib-2020-04-01-v6oqz5ulgx4ids65u3c42j7jkpww5xiq/spack-src/C", checksumkind: CSK_MD5, checksum: "656c2111c4f2a82747e2537f96505de3")
!229 = !DISubroutineType(types: !230)
!230 = !{!162, !231}
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !232, line: 70, baseType: !233)
!232 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!233 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!234 = !DISubprogram(name: "stString_copy", scope: !235, file: !235, line: 28, type: !236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!235 = !DIFile(filename: "inc/sonLibString.h", directory: "/local-ssd/sonlib-v6oqz5ulgx4ids65u3c42j7jkpww5xiq-build/aidengro/spack-stage-sonlib-2020-04-01-v6oqz5ulgx4ids65u3c42j7jkpww5xiq/spack-src/C", checksumkind: CSK_MD5, checksum: "116073cc7b2ebc789475fa3d045bc966")
!236 = !DISubroutineType(types: !237)
!237 = !{!163, !198}
!238 = distinct !DISubprogram(name: "stKVDatabaseConf_constructKyotoTycoon", scope: !2, file: !2, line: 45, type: !239, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !241)
!239 = !DISubroutineType(types: !240)
!240 = !{!179, !198, !155, !190, !164, !164, !164, !198, !198}
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249, !250}
!242 = !DILocalVariable(name: "host", arg: 1, scope: !238, file: !2, line: 45, type: !198)
!243 = !DILocalVariable(name: "port", arg: 2, scope: !238, file: !2, line: 45, type: !155)
!244 = !DILocalVariable(name: "timeout", arg: 3, scope: !238, file: !2, line: 45, type: !190)
!245 = !DILocalVariable(name: "maxRecordSize", arg: 4, scope: !238, file: !2, line: 46, type: !164)
!246 = !DILocalVariable(name: "maxBulkSetSize", arg: 5, scope: !238, file: !2, line: 46, type: !164)
!247 = !DILocalVariable(name: "maxBulkSetNumRecords", arg: 6, scope: !238, file: !2, line: 47, type: !164)
!248 = !DILocalVariable(name: "databaseDir", arg: 7, scope: !238, file: !2, line: 48, type: !198)
!249 = !DILocalVariable(name: "databaseName", arg: 8, scope: !238, file: !2, line: 48, type: !198)
!250 = !DILocalVariable(name: "conf", scope: !238, file: !2, line: 49, type: !179)
!251 = !DILocation(line: 45, column: 69, scope: !238)
!252 = !{!216, !216, i64 0}
!253 = !DILocation(line: 45, column: 84, scope: !238)
!254 = !DILocation(line: 45, column: 94, scope: !238)
!255 = !{!217, !217, i64 0}
!256 = !DILocation(line: 46, column: 65, scope: !238)
!257 = !DILocation(line: 46, column: 88, scope: !238)
!258 = !DILocation(line: 47, column: 65, scope: !238)
!259 = !DILocation(line: 48, column: 69, scope: !238)
!260 = !DILocation(line: 48, column: 94, scope: !238)
!261 = !DILocation(line: 49, column: 5, scope: !238)
!262 = !DILocation(line: 49, column: 23, scope: !238)
!263 = !DILocation(line: 49, column: 30, scope: !238)
!264 = !DILocation(line: 50, column: 5, scope: !238)
!265 = !DILocation(line: 50, column: 11, scope: !238)
!266 = !DILocation(line: 50, column: 16, scope: !238)
!267 = !DILocation(line: 51, column: 39, scope: !238)
!268 = !DILocation(line: 51, column: 25, scope: !238)
!269 = !DILocation(line: 51, column: 5, scope: !238)
!270 = !DILocation(line: 51, column: 11, scope: !238)
!271 = !DILocation(line: 51, column: 23, scope: !238)
!272 = !DILocation(line: 52, column: 32, scope: !238)
!273 = !DILocation(line: 52, column: 18, scope: !238)
!274 = !DILocation(line: 52, column: 5, scope: !238)
!275 = !DILocation(line: 52, column: 11, scope: !238)
!276 = !DILocation(line: 52, column: 16, scope: !238)
!277 = !{!215, !204, i64 16}
!278 = !DILocation(line: 53, column: 18, scope: !238)
!279 = !DILocation(line: 53, column: 5, scope: !238)
!280 = !DILocation(line: 53, column: 11, scope: !238)
!281 = !DILocation(line: 53, column: 16, scope: !238)
!282 = !{!215, !216, i64 24}
!283 = !DILocation(line: 54, column: 21, scope: !238)
!284 = !DILocation(line: 54, column: 5, scope: !238)
!285 = !DILocation(line: 54, column: 11, scope: !238)
!286 = !DILocation(line: 54, column: 19, scope: !238)
!287 = !{!215, !216, i64 28}
!288 = !DILocation(line: 55, column: 29, scope: !238)
!289 = !DILocation(line: 55, column: 5, scope: !238)
!290 = !DILocation(line: 55, column: 11, scope: !238)
!291 = !DILocation(line: 55, column: 27, scope: !238)
!292 = !{!215, !217, i64 32}
!293 = !DILocation(line: 56, column: 30, scope: !238)
!294 = !DILocation(line: 56, column: 5, scope: !238)
!295 = !DILocation(line: 56, column: 11, scope: !238)
!296 = !DILocation(line: 56, column: 28, scope: !238)
!297 = !{!215, !217, i64 40}
!298 = !DILocation(line: 57, column: 36, scope: !238)
!299 = !DILocation(line: 57, column: 5, scope: !238)
!300 = !DILocation(line: 57, column: 11, scope: !238)
!301 = !DILocation(line: 57, column: 34, scope: !238)
!302 = !{!215, !217, i64 48}
!303 = !DILocation(line: 58, column: 40, scope: !238)
!304 = !DILocation(line: 58, column: 26, scope: !238)
!305 = !DILocation(line: 58, column: 5, scope: !238)
!306 = !DILocation(line: 58, column: 11, scope: !238)
!307 = !DILocation(line: 58, column: 24, scope: !238)
!308 = !{!215, !204, i64 72}
!309 = !DILocation(line: 59, column: 12, scope: !238)
!310 = !DILocation(line: 60, column: 1, scope: !238)
!311 = !DILocation(line: 59, column: 5, scope: !238)
!312 = distinct !DISubprogram(name: "stKVDatabaseConf_constructRedis", scope: !2, file: !2, line: 62, type: !313, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !315)
!313 = !DISubroutineType(types: !314)
!314 = !{!179, !198, !155}
!315 = !{!316, !317, !318}
!316 = !DILocalVariable(name: "host", arg: 1, scope: !312, file: !2, line: 62, type: !198)
!317 = !DILocalVariable(name: "port", arg: 2, scope: !312, file: !2, line: 62, type: !155)
!318 = !DILocalVariable(name: "conf", scope: !312, file: !2, line: 63, type: !179)
!319 = !DILocation(line: 62, column: 63, scope: !312)
!320 = !DILocation(line: 62, column: 78, scope: !312)
!321 = !DILocation(line: 63, column: 5, scope: !312)
!322 = !DILocation(line: 63, column: 23, scope: !312)
!323 = !DILocation(line: 63, column: 30, scope: !312)
!324 = !DILocation(line: 64, column: 5, scope: !312)
!325 = !DILocation(line: 64, column: 11, scope: !312)
!326 = !DILocation(line: 64, column: 16, scope: !312)
!327 = !DILocation(line: 65, column: 32, scope: !312)
!328 = !DILocation(line: 65, column: 18, scope: !312)
!329 = !DILocation(line: 65, column: 5, scope: !312)
!330 = !DILocation(line: 65, column: 11, scope: !312)
!331 = !DILocation(line: 65, column: 16, scope: !312)
!332 = !DILocation(line: 66, column: 18, scope: !312)
!333 = !DILocation(line: 66, column: 5, scope: !312)
!334 = !DILocation(line: 66, column: 11, scope: !312)
!335 = !DILocation(line: 66, column: 16, scope: !312)
!336 = !DILocation(line: 67, column: 12, scope: !312)
!337 = !DILocation(line: 68, column: 1, scope: !312)
!338 = !DILocation(line: 67, column: 5, scope: !312)
!339 = distinct !DISubprogram(name: "stKVDatabaseConf_constructMySql", scope: !2, file: !2, line: 83, type: !340, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !342)
!340 = !DISubroutineType(types: !341)
!341 = !{!179, !198, !155, !198, !198, !198, !198}
!342 = !{!343, !344, !345, !346, !347, !348}
!343 = !DILocalVariable(name: "host", arg: 1, scope: !339, file: !2, line: 83, type: !198)
!344 = !DILocalVariable(name: "port", arg: 2, scope: !339, file: !2, line: 83, type: !155)
!345 = !DILocalVariable(name: "user", arg: 3, scope: !339, file: !2, line: 83, type: !198)
!346 = !DILocalVariable(name: "password", arg: 4, scope: !339, file: !2, line: 83, type: !198)
!347 = !DILocalVariable(name: "databaseName", arg: 5, scope: !339, file: !2, line: 84, type: !198)
!348 = !DILocalVariable(name: "tableName", arg: 6, scope: !339, file: !2, line: 84, type: !198)
!349 = !DILocation(line: 83, column: 63, scope: !339)
!350 = !DILocation(line: 83, column: 78, scope: !339)
!351 = !DILocation(line: 83, column: 96, scope: !339)
!352 = !DILocation(line: 83, column: 114, scope: !339)
!353 = !DILocation(line: 84, column: 63, scope: !339)
!354 = !DILocation(line: 84, column: 89, scope: !339)
!355 = !DILocation(line: 86, column: 16, scope: !339)
!356 = !DILocation(line: 86, column: 5, scope: !339)
!357 = !DILocation(line: 89, column: 48, scope: !339)
!358 = !DILocation(line: 89, column: 54, scope: !339)
!359 = !DILocation(line: 89, column: 60, scope: !339)
!360 = !DILocation(line: 89, column: 66, scope: !339)
!361 = !DILocation(line: 89, column: 76, scope: !339)
!362 = !DILocation(line: 89, column: 90, scope: !339)
!363 = !DILocation(line: 89, column: 12, scope: !339)
!364 = !DILocation(line: 89, column: 5, scope: !339)
!365 = !DISubprogram(name: "stThrowNew", scope: !366, file: !366, line: 217, type: !367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!366 = !DIFile(filename: "inc/sonLibExcept.h", directory: "/local-ssd/sonlib-v6oqz5ulgx4ids65u3c42j7jkpww5xiq-build/aidengro/spack-stage-sonlib-2020-04-01-v6oqz5ulgx4ids65u3c42j7jkpww5xiq/spack-src/C", checksumkind: CSK_MD5, checksum: "37d38c83bfbc4d2e71246e1fd214f394")
!367 = !DISubroutineType(types: !368)
!368 = !{null, !198, !198, null}
!369 = distinct !DISubprogram(name: "constructSql", scope: !2, file: !2, line: 70, type: !370, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !372)
!370 = !DISubroutineType(types: !371)
!371 = !{!179, !185, !198, !155, !198, !198, !198, !198}
!372 = !{!373, !374, !375, !376, !377, !378, !379, !380}
!373 = !DILocalVariable(name: "type", arg: 1, scope: !369, file: !2, line: 70, type: !185)
!374 = !DILocalVariable(name: "host", arg: 2, scope: !369, file: !2, line: 70, type: !198)
!375 = !DILocalVariable(name: "port", arg: 3, scope: !369, file: !2, line: 70, type: !155)
!376 = !DILocalVariable(name: "user", arg: 4, scope: !369, file: !2, line: 70, type: !198)
!377 = !DILocalVariable(name: "password", arg: 5, scope: !369, file: !2, line: 70, type: !198)
!378 = !DILocalVariable(name: "databaseName", arg: 6, scope: !369, file: !2, line: 71, type: !198)
!379 = !DILocalVariable(name: "tableName", arg: 7, scope: !369, file: !2, line: 71, type: !198)
!380 = !DILocalVariable(name: "conf", scope: !369, file: !2, line: 72, type: !179)
!381 = !{!205, !205, i64 0}
!382 = !DILocation(line: 70, column: 56, scope: !369)
!383 = !DILocation(line: 70, column: 74, scope: !369)
!384 = !DILocation(line: 70, column: 89, scope: !369)
!385 = !DILocation(line: 70, column: 107, scope: !369)
!386 = !DILocation(line: 70, column: 125, scope: !369)
!387 = !DILocation(line: 71, column: 51, scope: !369)
!388 = !DILocation(line: 71, column: 77, scope: !369)
!389 = !DILocation(line: 72, column: 5, scope: !369)
!390 = !DILocation(line: 72, column: 23, scope: !369)
!391 = !DILocation(line: 72, column: 30, scope: !369)
!392 = !DILocation(line: 73, column: 18, scope: !369)
!393 = !DILocation(line: 73, column: 5, scope: !369)
!394 = !DILocation(line: 73, column: 11, scope: !369)
!395 = !DILocation(line: 73, column: 16, scope: !369)
!396 = !DILocation(line: 74, column: 32, scope: !369)
!397 = !DILocation(line: 74, column: 18, scope: !369)
!398 = !DILocation(line: 74, column: 5, scope: !369)
!399 = !DILocation(line: 74, column: 11, scope: !369)
!400 = !DILocation(line: 74, column: 16, scope: !369)
!401 = !DILocation(line: 75, column: 18, scope: !369)
!402 = !DILocation(line: 75, column: 5, scope: !369)
!403 = !DILocation(line: 75, column: 11, scope: !369)
!404 = !DILocation(line: 75, column: 16, scope: !369)
!405 = !DILocation(line: 76, column: 32, scope: !369)
!406 = !DILocation(line: 76, column: 18, scope: !369)
!407 = !DILocation(line: 76, column: 5, scope: !369)
!408 = !DILocation(line: 76, column: 11, scope: !369)
!409 = !DILocation(line: 76, column: 16, scope: !369)
!410 = !{!215, !204, i64 56}
!411 = !DILocation(line: 77, column: 36, scope: !369)
!412 = !DILocation(line: 77, column: 22, scope: !369)
!413 = !DILocation(line: 77, column: 5, scope: !369)
!414 = !DILocation(line: 77, column: 11, scope: !369)
!415 = !DILocation(line: 77, column: 20, scope: !369)
!416 = !{!215, !204, i64 64}
!417 = !DILocation(line: 78, column: 40, scope: !369)
!418 = !DILocation(line: 78, column: 26, scope: !369)
!419 = !DILocation(line: 78, column: 5, scope: !369)
!420 = !DILocation(line: 78, column: 11, scope: !369)
!421 = !DILocation(line: 78, column: 24, scope: !369)
!422 = !DILocation(line: 79, column: 37, scope: !369)
!423 = !DILocation(line: 79, column: 23, scope: !369)
!424 = !DILocation(line: 79, column: 5, scope: !369)
!425 = !DILocation(line: 79, column: 11, scope: !369)
!426 = !DILocation(line: 79, column: 21, scope: !369)
!427 = !{!215, !204, i64 80}
!428 = !DILocation(line: 80, column: 12, scope: !369)
!429 = !DILocation(line: 81, column: 1, scope: !369)
!430 = !DILocation(line: 80, column: 5, scope: !369)
!431 = distinct !DISubprogram(name: "getNextToken", scope: !2, file: !2, line: 92, type: !432, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !435)
!432 = !DISubroutineType(types: !433)
!433 = !{!163, !434}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!435 = !{!436, !437, !438}
!436 = !DILocalVariable(name: "tokenStream", arg: 1, scope: !431, file: !2, line: 92, type: !434)
!437 = !DILocalVariable(name: "token", scope: !431, file: !2, line: 93, type: !163)
!438 = !DILocalVariable(name: "cA", scope: !439, file: !2, line: 95, type: !163)
!439 = distinct !DILexicalBlock(scope: !440, file: !2, line: 94, column: 23)
!440 = distinct !DILexicalBlock(scope: !431, file: !2, line: 94, column: 8)
!441 = !DILocation(line: 92, column: 27, scope: !431)
!442 = !DILocation(line: 93, column: 5, scope: !431)
!443 = !DILocation(line: 93, column: 11, scope: !431)
!444 = !DILocation(line: 93, column: 40, scope: !431)
!445 = !DILocation(line: 93, column: 19, scope: !431)
!446 = !DILocation(line: 94, column: 8, scope: !440)
!447 = !DILocation(line: 94, column: 14, scope: !440)
!448 = !DILocation(line: 94, column: 8, scope: !431)
!449 = !DILocation(line: 95, column: 9, scope: !439)
!450 = !DILocation(line: 95, column: 15, scope: !439)
!451 = !DILocation(line: 95, column: 37, scope: !439)
!452 = !DILocation(line: 95, column: 20, scope: !439)
!453 = !DILocation(line: 96, column: 14, scope: !439)
!454 = !DILocation(line: 96, column: 9, scope: !439)
!455 = !DILocation(line: 97, column: 34, scope: !439)
!456 = !DILocation(line: 97, column: 17, scope: !439)
!457 = !DILocation(line: 97, column: 15, scope: !439)
!458 = !DILocation(line: 98, column: 14, scope: !439)
!459 = !DILocation(line: 98, column: 9, scope: !439)
!460 = !DILocation(line: 99, column: 5, scope: !440)
!461 = !DILocation(line: 99, column: 5, scope: !439)
!462 = !DILocation(line: 100, column: 12, scope: !431)
!463 = !DILocation(line: 101, column: 1, scope: !431)
!464 = !DILocation(line: 100, column: 5, scope: !431)
!465 = !DISubprogram(name: "stString_getNextWord", scope: !235, file: !235, line: 74, type: !432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!466 = !DISubprogram(name: "stString_replace", scope: !235, file: !235, line: 80, type: !467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!467 = !DISubroutineType(types: !468)
!468 = !{!163, !198, !198, !198}
!469 = !DISubprogram(name: "free", scope: !470, file: !470, line: 555, type: !471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!470 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!471 = !DISubroutineType(types: !472)
!472 = !{null, !162}
!473 = distinct !DISubprogram(name: "stKVDatabaseConf_constructFromString", scope: !2, file: !2, line: 253, type: !177, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !474)
!474 = !{!475, !476, !477, !506}
!475 = !DILocalVariable(name: "xmlString", arg: 1, scope: !473, file: !2, line: 253, type: !198)
!476 = !DILocalVariable(name: "conf", scope: !473, file: !2, line: 254, type: !179)
!477 = !DILocalVariable(name: "_cexceptContext", scope: !478, file: !2, line: 255, type: !479)
!478 = distinct !DILexicalBlock(scope: !473, file: !2, line: 255, column: 5)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stExceptContext", file: !366, line: 152, size: 1728, elements: !480)
!480 = !{!481, !500, !502}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !479, file: !366, line: 153, baseType: !482, size: 1600)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "jmp_buf", file: !483, line: 32, baseType: !484)
!483 = !DIFile(filename: "/usr/include/setjmp.h", directory: "", checksumkind: CSK_MD5, checksum: "cd7862ae7ed31595227c999638ae74e7")
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 1600, elements: !15)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__jmp_buf_tag", file: !486, line: 26, size: 1600, elements: !487)
!486 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct___jmp_buf_tag.h", directory: "", checksumkind: CSK_MD5, checksum: "56a90a97e853c2bec1d9e290be5e92e4")
!487 = !{!488, !492, !493}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "__jmpbuf", scope: !485, file: !486, line: 32, baseType: !489, size: 512)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__jmp_buf", file: !490, line: 31, baseType: !491)
!490 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/setjmp.h", directory: "", checksumkind: CSK_MD5, checksum: "80e7796efafaf357b5e64731e4f6ac30")
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 512, elements: !134)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "__mask_was_saved", scope: !485, file: !486, line: 33, baseType: !190, size: 32, offset: 512)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "__saved_mask", scope: !485, file: !486, line: 34, baseType: !494, size: 1024, offset: 576)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !495, line: 8, baseType: !496)
!495 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "acc6b14c0967857fec362a8d433e1cf2")
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !495, line: 5, size: 1024, elements: !497)
!497 = !{!498}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !496, file: !495, line: 7, baseType: !499, size: 1024)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 1024, elements: !139)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !479, file: !366, line: 154, baseType: !501, size: 64, offset: 1600)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "except", scope: !479, file: !366, line: 155, baseType: !503, size: 64, offset: 1664)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "stExcept", file: !181, line: 45, baseType: !505)
!505 = !DICompositeType(tag: DW_TAG_structure_type, name: "stExcept", file: !181, line: 45, flags: DIFlagFwdDecl)
!506 = !DILocalVariable(name: "ex", scope: !507, file: !2, line: 257, type: !503)
!507 = distinct !DILexicalBlock(scope: !508, file: !2, line: 257, column: 7)
!508 = distinct !DILexicalBlock(scope: !478, file: !2, line: 257, column: 7)
!509 = !DILocation(line: 253, column: 68, scope: !473)
!510 = !DILocation(line: 254, column: 5, scope: !473)
!511 = !DILocation(line: 254, column: 23, scope: !473)
!512 = !DILocation(line: 255, column: 5, scope: !478)
!513 = !{!514, !204, i64 200}
!514 = !{!"_stExceptContext", !205, i64 0, !204, i64 200, !204, i64 208}
!515 = !{!514, !204, i64 208}
!516 = !DILocation(line: 255, column: 5, scope: !517)
!517 = distinct !DILexicalBlock(scope: !478, file: !2, line: 255, column: 5)
!518 = !DILocation(line: 256, column: 36, scope: !519)
!519 = distinct !DILexicalBlock(scope: !517, file: !2, line: 255, column: 11)
!520 = !DILocation(line: 256, column: 16, scope: !519)
!521 = !DILocation(line: 256, column: 14, scope: !519)
!522 = !DILocation(line: 257, column: 5, scope: !519)
!523 = !DILocation(line: 257, column: 7, scope: !508)
!524 = !DILocation(line: 257, column: 7, scope: !478)
!525 = !DILocation(line: 257, column: 7, scope: !507)
!526 = !DILocation(line: 258, column: 25, scope: !527)
!527 = distinct !DILexicalBlock(scope: !507, file: !2, line: 257, column: 19)
!528 = !DILocation(line: 258, column: 29, scope: !527)
!529 = !DILocation(line: 258, column: 100, scope: !527)
!530 = !DILocation(line: 258, column: 9, scope: !527)
!531 = !DILocation(line: 259, column: 7, scope: !507)
!532 = !DILocation(line: 259, column: 7, scope: !508)
!533 = !DILocation(line: 259, column: 7, scope: !534)
!534 = distinct !DILexicalBlock(scope: !508, file: !2, line: 259, column: 7)
!535 = !DILocation(line: 259, column: 7, scope: !473)
!536 = !DILocation(line: 260, column: 12, scope: !473)
!537 = !DILocation(line: 261, column: 1, scope: !473)
!538 = !DILocation(line: 260, column: 5, scope: !473)
!539 = !DISubprogram(name: "_setjmp", scope: !483, file: !483, line: 45, type: !540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!540 = !DISubroutineType(types: !541)
!541 = !{!190, !542}
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!543 = distinct !DISubprogram(name: "constructFromString", scope: !2, file: !2, line: 221, type: !177, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !544)
!544 = !{!545, !546, !550, !551, !552}
!545 = !DILocalVariable(name: "xmlString", arg: 1, scope: !543, file: !2, line: 221, type: !198)
!546 = !DILocalVariable(name: "hash", scope: !543, file: !2, line: 222, type: !547)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "stHash", file: !181, line: 35, baseType: !549)
!549 = !DICompositeType(tag: DW_TAG_structure_type, name: "_stHash", file: !181, line: 35, flags: DIFlagFwdDecl)
!550 = !DILocalVariable(name: "databaseConf", scope: !543, file: !2, line: 223, type: !179)
!551 = !DILocalVariable(name: "type", scope: !543, file: !2, line: 224, type: !198)
!552 = !DILocalVariable(name: "dbTag", scope: !543, file: !2, line: 225, type: !198)
!553 = !DILocation(line: 221, column: 58, scope: !543)
!554 = !DILocation(line: 222, column: 5, scope: !543)
!555 = !DILocation(line: 222, column: 13, scope: !543)
!556 = !DILocation(line: 222, column: 39, scope: !543)
!557 = !DILocation(line: 222, column: 20, scope: !543)
!558 = !DILocation(line: 223, column: 5, scope: !543)
!559 = !DILocation(line: 223, column: 23, scope: !543)
!560 = !DILocation(line: 224, column: 5, scope: !543)
!561 = !DILocation(line: 224, column: 17, scope: !543)
!562 = !DILocation(line: 224, column: 44, scope: !543)
!563 = !DILocation(line: 224, column: 24, scope: !543)
!564 = !DILocation(line: 225, column: 5, scope: !543)
!565 = !DILocation(line: 225, column: 17, scope: !543)
!566 = !DILocation(line: 225, column: 45, scope: !543)
!567 = !DILocation(line: 225, column: 25, scope: !543)
!568 = !DILocation(line: 226, column: 22, scope: !569)
!569 = distinct !DILexicalBlock(scope: !543, file: !2, line: 226, column: 9)
!570 = !DILocation(line: 226, column: 28, scope: !569)
!571 = !DILocation(line: 226, column: 10, scope: !569)
!572 = !DILocation(line: 226, column: 9, scope: !543)
!573 = !DILocation(line: 227, column: 20, scope: !574)
!574 = distinct !DILexicalBlock(scope: !569, file: !2, line: 226, column: 36)
!575 = !DILocation(line: 227, column: 125, scope: !574)
!576 = !DILocation(line: 227, column: 132, scope: !574)
!577 = !DILocation(line: 227, column: 9, scope: !574)
!578 = !DILocation(line: 228, column: 5, scope: !574)
!579 = !DILocation(line: 229, column: 21, scope: !580)
!580 = distinct !DILexicalBlock(scope: !543, file: !2, line: 229, column: 9)
!581 = !DILocation(line: 229, column: 9, scope: !580)
!582 = !DILocation(line: 229, column: 9, scope: !543)
!583 = !DILocation(line: 230, column: 83, scope: !584)
!584 = distinct !DILexicalBlock(scope: !580, file: !2, line: 229, column: 45)
!585 = !DILocation(line: 230, column: 63, scope: !584)
!586 = !DILocation(line: 230, column: 24, scope: !584)
!587 = !DILocation(line: 230, column: 22, scope: !584)
!588 = !DILocation(line: 231, column: 5, scope: !584)
!589 = !DILocation(line: 231, column: 28, scope: !590)
!590 = distinct !DILexicalBlock(scope: !580, file: !2, line: 231, column: 16)
!591 = !DILocation(line: 231, column: 16, scope: !590)
!592 = !DILocation(line: 231, column: 16, scope: !580)
!593 = !DILocation(line: 232, column: 82, scope: !594)
!594 = distinct !DILexicalBlock(scope: !590, file: !2, line: 231, column: 51)
!595 = !DILocation(line: 232, column: 62, scope: !594)
!596 = !DILocation(line: 233, column: 68, scope: !594)
!597 = !DILocation(line: 233, column: 57, scope: !594)
!598 = !DILocation(line: 234, column: 71, scope: !594)
!599 = !DILocation(line: 234, column: 57, scope: !594)
!600 = !DILocation(line: 235, column: 79, scope: !594)
!601 = !DILocation(line: 235, column: 57, scope: !594)
!602 = !DILocation(line: 236, column: 80, scope: !594)
!603 = !DILocation(line: 236, column: 57, scope: !594)
!604 = !DILocation(line: 237, column: 86, scope: !594)
!605 = !DILocation(line: 237, column: 57, scope: !594)
!606 = !DILocation(line: 238, column: 77, scope: !594)
!607 = !DILocation(line: 238, column: 57, scope: !594)
!608 = !DILocation(line: 239, column: 71, scope: !594)
!609 = !DILocation(line: 239, column: 57, scope: !594)
!610 = !DILocation(line: 232, column: 24, scope: !594)
!611 = !DILocation(line: 232, column: 22, scope: !594)
!612 = !DILocation(line: 240, column: 5, scope: !594)
!613 = !DILocation(line: 240, column: 28, scope: !614)
!614 = distinct !DILexicalBlock(scope: !590, file: !2, line: 240, column: 16)
!615 = !DILocation(line: 240, column: 16, scope: !614)
!616 = !DILocation(line: 240, column: 16, scope: !590)
!617 = !DILocation(line: 241, column: 76, scope: !618)
!618 = distinct !DILexicalBlock(scope: !614, file: !2, line: 240, column: 44)
!619 = !DILocation(line: 241, column: 56, scope: !618)
!620 = !DILocation(line: 241, column: 102, scope: !618)
!621 = !DILocation(line: 241, column: 91, scope: !618)
!622 = !DILocation(line: 242, column: 76, scope: !618)
!623 = !DILocation(line: 242, column: 56, scope: !618)
!624 = !DILocation(line: 242, column: 111, scope: !618)
!625 = !DILocation(line: 242, column: 91, scope: !618)
!626 = !DILocation(line: 243, column: 76, scope: !618)
!627 = !DILocation(line: 243, column: 56, scope: !618)
!628 = !DILocation(line: 243, column: 120, scope: !618)
!629 = !DILocation(line: 243, column: 100, scope: !618)
!630 = !DILocation(line: 241, column: 24, scope: !618)
!631 = !DILocation(line: 241, column: 22, scope: !618)
!632 = !DILocation(line: 244, column: 5, scope: !618)
!633 = !DILocation(line: 244, column: 28, scope: !634)
!634 = distinct !DILexicalBlock(scope: !614, file: !2, line: 244, column: 16)
!635 = !DILocation(line: 244, column: 16, scope: !634)
!636 = !DILocation(line: 244, column: 16, scope: !614)
!637 = !DILocation(line: 245, column: 76, scope: !638)
!638 = distinct !DILexicalBlock(scope: !634, file: !2, line: 244, column: 44)
!639 = !DILocation(line: 245, column: 56, scope: !638)
!640 = !DILocation(line: 245, column: 102, scope: !638)
!641 = !DILocation(line: 245, column: 91, scope: !638)
!642 = !DILocation(line: 245, column: 24, scope: !638)
!643 = !DILocation(line: 245, column: 22, scope: !638)
!644 = !DILocation(line: 246, column: 5, scope: !638)
!645 = !DILocation(line: 247, column: 20, scope: !646)
!646 = distinct !DILexicalBlock(scope: !634, file: !2, line: 246, column: 12)
!647 = !DILocation(line: 247, column: 81, scope: !646)
!648 = !DILocation(line: 247, column: 9, scope: !646)
!649 = !DILocation(line: 249, column: 21, scope: !543)
!650 = !DILocation(line: 249, column: 5, scope: !543)
!651 = !DILocation(line: 250, column: 12, scope: !543)
!652 = !DILocation(line: 251, column: 1, scope: !543)
!653 = !DILocation(line: 250, column: 5, scope: !543)
!654 = !DISubprogram(name: "stThrowNewCause", scope: !366, file: !366, line: 226, type: !655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !503, !198, !198, null}
!657 = !DISubprogram(name: "stExcept_free", scope: !366, file: !366, line: 119, type: !658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!658 = !DISubroutineType(types: !659)
!659 = !{null, !503}
!660 = distinct !DISubprogram(name: "stKVDatabaseConf_constructClone", scope: !2, file: !2, line: 264, type: !661, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !663)
!661 = !DISubroutineType(types: !662)
!662 = !{!179, !179}
!663 = !{!664, !665}
!664 = !DILocalVariable(name: "srcConf", arg: 1, scope: !660, file: !2, line: 264, type: !179)
!665 = !DILocalVariable(name: "conf", scope: !660, file: !2, line: 265, type: !179)
!666 = !DILocation(line: 264, column: 69, scope: !660)
!667 = !DILocation(line: 265, column: 5, scope: !660)
!668 = !DILocation(line: 265, column: 23, scope: !660)
!669 = !DILocation(line: 265, column: 30, scope: !660)
!670 = !DILocation(line: 266, column: 18, scope: !660)
!671 = !DILocation(line: 266, column: 27, scope: !660)
!672 = !DILocation(line: 266, column: 5, scope: !660)
!673 = !DILocation(line: 266, column: 11, scope: !660)
!674 = !DILocation(line: 266, column: 16, scope: !660)
!675 = !DILocation(line: 267, column: 39, scope: !660)
!676 = !DILocation(line: 267, column: 48, scope: !660)
!677 = !DILocation(line: 267, column: 25, scope: !660)
!678 = !DILocation(line: 267, column: 5, scope: !660)
!679 = !DILocation(line: 267, column: 11, scope: !660)
!680 = !DILocation(line: 267, column: 23, scope: !660)
!681 = !DILocation(line: 268, column: 32, scope: !660)
!682 = !DILocation(line: 268, column: 41, scope: !660)
!683 = !DILocation(line: 268, column: 18, scope: !660)
!684 = !DILocation(line: 268, column: 5, scope: !660)
!685 = !DILocation(line: 268, column: 11, scope: !660)
!686 = !DILocation(line: 268, column: 16, scope: !660)
!687 = !DILocation(line: 269, column: 18, scope: !660)
!688 = !DILocation(line: 269, column: 27, scope: !660)
!689 = !DILocation(line: 269, column: 5, scope: !660)
!690 = !DILocation(line: 269, column: 11, scope: !660)
!691 = !DILocation(line: 269, column: 16, scope: !660)
!692 = !DILocation(line: 270, column: 21, scope: !660)
!693 = !DILocation(line: 270, column: 30, scope: !660)
!694 = !DILocation(line: 270, column: 5, scope: !660)
!695 = !DILocation(line: 270, column: 11, scope: !660)
!696 = !DILocation(line: 270, column: 19, scope: !660)
!697 = !DILocation(line: 271, column: 29, scope: !660)
!698 = !DILocation(line: 271, column: 38, scope: !660)
!699 = !DILocation(line: 271, column: 5, scope: !660)
!700 = !DILocation(line: 271, column: 11, scope: !660)
!701 = !DILocation(line: 271, column: 27, scope: !660)
!702 = !DILocation(line: 272, column: 30, scope: !660)
!703 = !DILocation(line: 272, column: 39, scope: !660)
!704 = !DILocation(line: 272, column: 5, scope: !660)
!705 = !DILocation(line: 272, column: 11, scope: !660)
!706 = !DILocation(line: 272, column: 28, scope: !660)
!707 = !DILocation(line: 273, column: 36, scope: !660)
!708 = !DILocation(line: 273, column: 45, scope: !660)
!709 = !DILocation(line: 273, column: 5, scope: !660)
!710 = !DILocation(line: 273, column: 11, scope: !660)
!711 = !DILocation(line: 273, column: 34, scope: !660)
!712 = !DILocation(line: 274, column: 32, scope: !660)
!713 = !DILocation(line: 274, column: 41, scope: !660)
!714 = !DILocation(line: 274, column: 18, scope: !660)
!715 = !DILocation(line: 274, column: 5, scope: !660)
!716 = !DILocation(line: 274, column: 11, scope: !660)
!717 = !DILocation(line: 274, column: 16, scope: !660)
!718 = !DILocation(line: 275, column: 36, scope: !660)
!719 = !DILocation(line: 275, column: 45, scope: !660)
!720 = !DILocation(line: 275, column: 22, scope: !660)
!721 = !DILocation(line: 275, column: 5, scope: !660)
!722 = !DILocation(line: 275, column: 11, scope: !660)
!723 = !DILocation(line: 275, column: 20, scope: !660)
!724 = !DILocation(line: 276, column: 40, scope: !660)
!725 = !DILocation(line: 276, column: 49, scope: !660)
!726 = !DILocation(line: 276, column: 26, scope: !660)
!727 = !DILocation(line: 276, column: 5, scope: !660)
!728 = !DILocation(line: 276, column: 11, scope: !660)
!729 = !DILocation(line: 276, column: 24, scope: !660)
!730 = !DILocation(line: 277, column: 37, scope: !660)
!731 = !DILocation(line: 277, column: 46, scope: !660)
!732 = !DILocation(line: 277, column: 23, scope: !660)
!733 = !DILocation(line: 277, column: 5, scope: !660)
!734 = !DILocation(line: 277, column: 11, scope: !660)
!735 = !DILocation(line: 277, column: 21, scope: !660)
!736 = !DILocation(line: 278, column: 12, scope: !660)
!737 = !DILocation(line: 279, column: 1, scope: !660)
!738 = !DILocation(line: 278, column: 5, scope: !660)
!739 = distinct !DISubprogram(name: "stKVDatabaseConf_destruct", scope: !2, file: !2, line: 281, type: !740, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !742)
!740 = !DISubroutineType(types: !741)
!741 = !{null, !179}
!742 = !{!743}
!743 = !DILocalVariable(name: "conf", arg: 1, scope: !739, file: !2, line: 281, type: !179)
!744 = !DILocation(line: 281, column: 50, scope: !739)
!745 = !DILocation(line: 282, column: 9, scope: !746)
!746 = distinct !DILexicalBlock(scope: !739, file: !2, line: 282, column: 9)
!747 = !DILocation(line: 282, column: 14, scope: !746)
!748 = !DILocation(line: 282, column: 9, scope: !739)
!749 = !DILocation(line: 283, column: 21, scope: !750)
!750 = distinct !DILexicalBlock(scope: !746, file: !2, line: 282, column: 23)
!751 = !DILocation(line: 283, column: 27, scope: !750)
!752 = !DILocation(line: 283, column: 9, scope: !750)
!753 = !DILocation(line: 284, column: 21, scope: !750)
!754 = !DILocation(line: 284, column: 27, scope: !750)
!755 = !DILocation(line: 284, column: 9, scope: !750)
!756 = !DILocation(line: 285, column: 21, scope: !750)
!757 = !DILocation(line: 285, column: 27, scope: !750)
!758 = !DILocation(line: 285, column: 9, scope: !750)
!759 = !DILocation(line: 286, column: 21, scope: !750)
!760 = !DILocation(line: 286, column: 27, scope: !750)
!761 = !DILocation(line: 286, column: 9, scope: !750)
!762 = !DILocation(line: 287, column: 21, scope: !750)
!763 = !DILocation(line: 287, column: 27, scope: !750)
!764 = !DILocation(line: 287, column: 9, scope: !750)
!765 = !DILocation(line: 288, column: 21, scope: !750)
!766 = !DILocation(line: 288, column: 27, scope: !750)
!767 = !DILocation(line: 288, column: 9, scope: !750)
!768 = !DILocation(line: 289, column: 21, scope: !750)
!769 = !DILocation(line: 289, column: 9, scope: !750)
!770 = !DILocation(line: 290, column: 5, scope: !750)
!771 = !DILocation(line: 291, column: 1, scope: !739)
!772 = distinct !DISubprogram(name: "stSafeCFree", scope: !228, file: !228, line: 64, type: !471, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !773)
!773 = !{!774}
!774 = !DILocalVariable(name: "mem", arg: 1, scope: !772, file: !228, line: 64, type: !162)
!775 = !DILocation(line: 64, column: 38, scope: !772)
!776 = !DILocation(line: 65, column: 9, scope: !777)
!777 = distinct !DILexicalBlock(scope: !772, file: !228, line: 65, column: 9)
!778 = !DILocation(line: 65, column: 13, scope: !777)
!779 = !DILocation(line: 65, column: 9, scope: !772)
!780 = !DILocation(line: 66, column: 14, scope: !781)
!781 = distinct !DILexicalBlock(scope: !777, file: !228, line: 65, column: 22)
!782 = !DILocation(line: 66, column: 9, scope: !781)
!783 = !DILocation(line: 67, column: 5, scope: !781)
!784 = !DILocation(line: 68, column: 1, scope: !772)
!785 = distinct !DISubprogram(name: "stKVDatabaseConf_getType", scope: !2, file: !2, line: 293, type: !786, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !788)
!786 = !DISubroutineType(types: !787)
!787 = !{!185, !179}
!788 = !{!789}
!789 = !DILocalVariable(name: "conf", arg: 1, scope: !785, file: !2, line: 293, type: !179)
!790 = !DILocation(line: 293, column: 61, scope: !785)
!791 = !DILocation(line: 294, column: 12, scope: !785)
!792 = !DILocation(line: 294, column: 18, scope: !785)
!793 = !DILocation(line: 294, column: 5, scope: !785)
!794 = distinct !DISubprogram(name: "stKVDatabaseConf_getDir", scope: !2, file: !2, line: 297, type: !795, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !797)
!795 = !DISubroutineType(types: !796)
!796 = !{!198, !179}
!797 = !{!798}
!798 = !DILocalVariable(name: "conf", arg: 1, scope: !794, file: !2, line: 297, type: !179)
!799 = !DILocation(line: 297, column: 55, scope: !794)
!800 = !DILocation(line: 298, column: 12, scope: !794)
!801 = !DILocation(line: 298, column: 18, scope: !794)
!802 = !DILocation(line: 298, column: 5, scope: !794)
!803 = distinct !DISubprogram(name: "stKVDatabaseConf_getHost", scope: !2, file: !2, line: 301, type: !795, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !804)
!804 = !{!805}
!805 = !DILocalVariable(name: "conf", arg: 1, scope: !803, file: !2, line: 301, type: !179)
!806 = !DILocation(line: 301, column: 56, scope: !803)
!807 = !DILocation(line: 302, column: 12, scope: !803)
!808 = !DILocation(line: 302, column: 18, scope: !803)
!809 = !DILocation(line: 302, column: 5, scope: !803)
!810 = distinct !DISubprogram(name: "stKVDatabaseConf_getPort", scope: !2, file: !2, line: 305, type: !811, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !813)
!811 = !DISubroutineType(types: !812)
!812 = !{!155, !179}
!813 = !{!814}
!814 = !DILocalVariable(name: "conf", arg: 1, scope: !810, file: !2, line: 305, type: !179)
!815 = !DILocation(line: 305, column: 53, scope: !810)
!816 = !DILocation(line: 306, column: 12, scope: !810)
!817 = !DILocation(line: 306, column: 18, scope: !810)
!818 = !DILocation(line: 306, column: 5, scope: !810)
!819 = distinct !DISubprogram(name: "stKVDatabaseConf_getTimeout", scope: !2, file: !2, line: 309, type: !820, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !822)
!820 = !DISubroutineType(types: !821)
!821 = !{!190, !179}
!822 = !{!823}
!823 = !DILocalVariable(name: "conf", arg: 1, scope: !819, file: !2, line: 309, type: !179)
!824 = !DILocation(line: 309, column: 51, scope: !819)
!825 = !DILocation(line: 310, column: 12, scope: !819)
!826 = !DILocation(line: 310, column: 18, scope: !819)
!827 = !DILocation(line: 310, column: 5, scope: !819)
!828 = distinct !DISubprogram(name: "stKVDatabaseConf_getMaxKTRecordSize", scope: !2, file: !2, line: 313, type: !829, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !831)
!829 = !DISubroutineType(types: !830)
!830 = !{!164, !179}
!831 = !{!832}
!832 = !DILocalVariable(name: "conf", arg: 1, scope: !828, file: !2, line: 313, type: !179)
!833 = !DILocation(line: 313, column: 63, scope: !828)
!834 = !DILocation(line: 314, column: 12, scope: !828)
!835 = !DILocation(line: 314, column: 18, scope: !828)
!836 = !DILocation(line: 314, column: 5, scope: !828)
!837 = distinct !DISubprogram(name: "stKVDatabaseConf_setMaxKTRecordSize", scope: !2, file: !2, line: 317, type: !838, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !840)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !179, !164}
!840 = !{!841, !842}
!841 = !DILocalVariable(name: "conf", arg: 1, scope: !837, file: !2, line: 317, type: !179)
!842 = !DILocalVariable(name: "maxRecordSize", arg: 2, scope: !837, file: !2, line: 318, type: !164)
!843 = !DILocation(line: 317, column: 60, scope: !837)
!844 = !DILocation(line: 318, column: 50, scope: !837)
!845 = !DILocation(line: 319, column: 29, scope: !837)
!846 = !DILocation(line: 319, column: 5, scope: !837)
!847 = !DILocation(line: 319, column: 11, scope: !837)
!848 = !DILocation(line: 319, column: 27, scope: !837)
!849 = !DILocation(line: 320, column: 1, scope: !837)
!850 = distinct !DISubprogram(name: "stKVDatabaseConf_getMaxKTBulkSetSize", scope: !2, file: !2, line: 322, type: !829, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !851)
!851 = !{!852}
!852 = !DILocalVariable(name: "conf", arg: 1, scope: !850, file: !2, line: 322, type: !179)
!853 = !DILocation(line: 322, column: 64, scope: !850)
!854 = !DILocation(line: 323, column: 12, scope: !850)
!855 = !DILocation(line: 323, column: 18, scope: !850)
!856 = !DILocation(line: 323, column: 5, scope: !850)
!857 = distinct !DISubprogram(name: "stKVDatabaseConf_getMaxKTBulkSetNumRecords", scope: !2, file: !2, line: 326, type: !829, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !858)
!858 = !{!859}
!859 = !DILocalVariable(name: "conf", arg: 1, scope: !857, file: !2, line: 326, type: !179)
!860 = !DILocation(line: 326, column: 70, scope: !857)
!861 = !DILocation(line: 327, column: 12, scope: !857)
!862 = !DILocation(line: 327, column: 18, scope: !857)
!863 = !DILocation(line: 327, column: 5, scope: !857)
!864 = distinct !DISubprogram(name: "stKVDatabaseConf_getUser", scope: !2, file: !2, line: 330, type: !795, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !865)
!865 = !{!866}
!866 = !DILocalVariable(name: "conf", arg: 1, scope: !864, file: !2, line: 330, type: !179)
!867 = !DILocation(line: 330, column: 56, scope: !864)
!868 = !DILocation(line: 331, column: 12, scope: !864)
!869 = !DILocation(line: 331, column: 18, scope: !864)
!870 = !DILocation(line: 331, column: 5, scope: !864)
!871 = distinct !DISubprogram(name: "stKVDatabaseConf_getPassword", scope: !2, file: !2, line: 334, type: !795, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !872)
!872 = !{!873}
!873 = !DILocalVariable(name: "conf", arg: 1, scope: !871, file: !2, line: 334, type: !179)
!874 = !DILocation(line: 334, column: 60, scope: !871)
!875 = !DILocation(line: 335, column: 12, scope: !871)
!876 = !DILocation(line: 335, column: 18, scope: !871)
!877 = !DILocation(line: 335, column: 5, scope: !871)
!878 = distinct !DISubprogram(name: "stKVDatabaseConf_getDatabaseName", scope: !2, file: !2, line: 338, type: !795, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !879)
!879 = !{!880}
!880 = !DILocalVariable(name: "conf", arg: 1, scope: !878, file: !2, line: 338, type: !179)
!881 = !DILocation(line: 338, column: 64, scope: !878)
!882 = !DILocation(line: 339, column: 12, scope: !878)
!883 = !DILocation(line: 339, column: 18, scope: !878)
!884 = !DILocation(line: 339, column: 5, scope: !878)
!885 = distinct !DISubprogram(name: "stKVDatabaseConf_getTableName", scope: !2, file: !2, line: 342, type: !795, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !886)
!886 = !{!887}
!887 = !DILocalVariable(name: "conf", arg: 1, scope: !885, file: !2, line: 342, type: !179)
!888 = !DILocation(line: 342, column: 61, scope: !885)
!889 = !DILocation(line: 343, column: 12, scope: !885)
!890 = !DILocation(line: 343, column: 18, scope: !885)
!891 = !DILocation(line: 343, column: 5, scope: !885)
!892 = distinct !DISubprogram(name: "hackParseXmlString", scope: !2, file: !2, line: 123, type: !893, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !895)
!893 = !DISubroutineType(types: !894)
!894 = !{!547, !198}
!895 = !{!896, !897, !898, !900, !901, !902, !904, !905}
!896 = !DILocalVariable(name: "xmlString", arg: 1, scope: !892, file: !2, line: 123, type: !198)
!897 = !DILocalVariable(name: "hash", scope: !892, file: !2, line: 124, type: !547)
!898 = !DILocalVariable(name: "toReplace", scope: !892, file: !2, line: 125, type: !899)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 320, elements: !54)
!900 = !DILocalVariable(name: "cA", scope: !892, file: !2, line: 126, type: !163)
!901 = !DILocalVariable(name: "cA2", scope: !892, file: !2, line: 126, type: !163)
!902 = !DILocalVariable(name: "i", scope: !903, file: !2, line: 127, type: !164)
!903 = distinct !DILexicalBlock(scope: !892, file: !2, line: 127, column: 5)
!904 = !DILocalVariable(name: "key", scope: !892, file: !2, line: 136, type: !163)
!905 = !DILocalVariable(name: "value", scope: !906, file: !2, line: 138, type: !163)
!906 = distinct !DILexicalBlock(scope: !892, file: !2, line: 137, column: 94)
!907 = !DILocation(line: 123, column: 47, scope: !892)
!908 = !DILocation(line: 124, column: 5, scope: !892)
!909 = !DILocation(line: 124, column: 13, scope: !892)
!910 = !DILocation(line: 124, column: 20, scope: !892)
!911 = !DILocation(line: 125, column: 5, scope: !892)
!912 = !DILocation(line: 125, column: 11, scope: !892)
!913 = !DILocation(line: 126, column: 5, scope: !892)
!914 = !DILocation(line: 126, column: 11, scope: !892)
!915 = !DILocation(line: 126, column: 33, scope: !892)
!916 = !DILocation(line: 126, column: 44, scope: !892)
!917 = !DILocation(line: 126, column: 16, scope: !892)
!918 = !DILocation(line: 126, column: 65, scope: !892)
!919 = !DILocation(line: 127, column: 10, scope: !903)
!920 = !DILocation(line: 127, column: 18, scope: !903)
!921 = !DILocation(line: 127, column: 25, scope: !922)
!922 = distinct !DILexicalBlock(scope: !903, file: !2, line: 127, column: 5)
!923 = !DILocation(line: 127, column: 27, scope: !922)
!924 = !DILocation(line: 127, column: 5, scope: !903)
!925 = !DILocation(line: 127, column: 5, scope: !922)
!926 = !DILocation(line: 128, column: 32, scope: !927)
!927 = distinct !DILexicalBlock(scope: !922, file: !2, line: 127, column: 37)
!928 = !DILocation(line: 128, column: 46, scope: !927)
!929 = !DILocation(line: 128, column: 36, scope: !927)
!930 = !DILocation(line: 128, column: 15, scope: !927)
!931 = !DILocation(line: 128, column: 13, scope: !927)
!932 = !DILocation(line: 129, column: 14, scope: !927)
!933 = !DILocation(line: 129, column: 9, scope: !927)
!934 = !DILocation(line: 130, column: 14, scope: !927)
!935 = !DILocation(line: 130, column: 12, scope: !927)
!936 = !DILocation(line: 131, column: 5, scope: !927)
!937 = !DILocation(line: 127, column: 33, scope: !922)
!938 = distinct !{!938, !924, !939}
!939 = !DILocation(line: 131, column: 5, scope: !903)
!940 = !DILocation(line: 132, column: 5, scope: !892)
!941 = !DILocation(line: 133, column: 19, scope: !892)
!942 = !DILocation(line: 133, column: 25, scope: !892)
!943 = !DILocation(line: 133, column: 53, scope: !892)
!944 = !DILocation(line: 133, column: 5, scope: !892)
!945 = !DILocation(line: 134, column: 19, scope: !892)
!946 = !DILocation(line: 134, column: 25, scope: !892)
!947 = !DILocation(line: 134, column: 50, scope: !892)
!948 = !DILocation(line: 134, column: 5, scope: !892)
!949 = !DILocation(line: 136, column: 5, scope: !892)
!950 = !DILocation(line: 136, column: 11, scope: !892)
!951 = !DILocation(line: 137, column: 5, scope: !892)
!952 = !DILocation(line: 137, column: 20, scope: !892)
!953 = !DILocation(line: 137, column: 18, scope: !892)
!954 = !DILocation(line: 137, column: 40, scope: !892)
!955 = !DILocation(line: 137, column: 49, scope: !892)
!956 = !DILocation(line: 137, column: 65, scope: !892)
!957 = !DILocation(line: 137, column: 53, scope: !892)
!958 = !DILocation(line: 137, column: 52, scope: !892)
!959 = !DILocation(line: 0, scope: !892)
!960 = !DILocation(line: 138, column: 9, scope: !906)
!961 = !DILocation(line: 138, column: 15, scope: !906)
!962 = !DILocation(line: 138, column: 23, scope: !906)
!963 = !DILocation(line: 139, column: 13, scope: !964)
!964 = distinct !DILexicalBlock(scope: !906, file: !2, line: 139, column: 13)
!965 = !DILocation(line: 139, column: 19, scope: !964)
!966 = !DILocation(line: 139, column: 13, scope: !906)
!967 = !DILocation(line: 140, column: 24, scope: !968)
!968 = distinct !DILexicalBlock(scope: !964, file: !2, line: 139, column: 28)
!969 = !DILocation(line: 140, column: 94, scope: !968)
!970 = !DILocation(line: 140, column: 13, scope: !968)
!971 = !DILocation(line: 141, column: 9, scope: !968)
!972 = !DILocation(line: 142, column: 27, scope: !973)
!973 = distinct !DILexicalBlock(scope: !906, file: !2, line: 142, column: 13)
!974 = !DILocation(line: 142, column: 33, scope: !973)
!975 = !DILocation(line: 142, column: 13, scope: !973)
!976 = !DILocation(line: 142, column: 38, scope: !973)
!977 = !DILocation(line: 142, column: 13, scope: !906)
!978 = !DILocation(line: 143, column: 24, scope: !979)
!979 = distinct !DILexicalBlock(scope: !973, file: !2, line: 142, column: 47)
!980 = !DILocation(line: 143, column: 113, scope: !979)
!981 = !DILocation(line: 143, column: 13, scope: !979)
!982 = !DILocation(line: 144, column: 9, scope: !979)
!983 = !DILocation(line: 145, column: 23, scope: !906)
!984 = !DILocation(line: 145, column: 29, scope: !906)
!985 = !DILocation(line: 145, column: 34, scope: !906)
!986 = !DILocation(line: 145, column: 9, scope: !906)
!987 = !DILocation(line: 146, column: 5, scope: !892)
!988 = distinct !{!988, !951, !987}
!989 = !DILocation(line: 147, column: 21, scope: !990)
!990 = distinct !DILexicalBlock(scope: !892, file: !2, line: 147, column: 8)
!991 = !DILocation(line: 147, column: 9, scope: !990)
!992 = !DILocation(line: 147, column: 8, scope: !892)
!993 = !DILocation(line: 148, column: 20, scope: !994)
!994 = distinct !DILexicalBlock(scope: !990, file: !2, line: 147, column: 50)
!995 = !DILocation(line: 148, column: 89, scope: !994)
!996 = !DILocation(line: 148, column: 9, scope: !994)
!997 = !DILocation(line: 149, column: 5, scope: !994)
!998 = !DILocation(line: 150, column: 10, scope: !892)
!999 = !DILocation(line: 150, column: 5, scope: !892)
!1000 = !DILocation(line: 151, column: 10, scope: !892)
!1001 = !DILocation(line: 151, column: 5, scope: !892)
!1002 = !DILocation(line: 152, column: 12, scope: !892)
!1003 = !DILocation(line: 153, column: 1, scope: !892)
!1004 = !DILocation(line: 152, column: 5, scope: !892)
!1005 = distinct !DISubprogram(name: "getXmlValueRequired", scope: !2, file: !2, line: 155, type: !1006, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !1008)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!198, !547, !198}
!1008 = !{!1009, !1010, !1011}
!1009 = !DILocalVariable(name: "hash", arg: 1, scope: !1005, file: !2, line: 155, type: !547)
!1010 = !DILocalVariable(name: "key", arg: 2, scope: !1005, file: !2, line: 155, type: !198)
!1011 = !DILocalVariable(name: "value", scope: !1005, file: !2, line: 156, type: !198)
!1012 = !DILocation(line: 155, column: 48, scope: !1005)
!1013 = !DILocation(line: 155, column: 66, scope: !1005)
!1014 = !DILocation(line: 156, column: 5, scope: !1005)
!1015 = !DILocation(line: 156, column: 17, scope: !1005)
!1016 = !DILocation(line: 156, column: 39, scope: !1005)
!1017 = !DILocation(line: 156, column: 52, scope: !1005)
!1018 = !DILocation(line: 156, column: 25, scope: !1005)
!1019 = !DILocation(line: 157, column: 9, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1005, file: !2, line: 157, column: 9)
!1021 = !DILocation(line: 157, column: 15, scope: !1020)
!1022 = !DILocation(line: 157, column: 9, scope: !1005)
!1023 = !DILocation(line: 158, column: 20, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 157, column: 24)
!1025 = !DILocation(line: 158, column: 107, scope: !1024)
!1026 = !DILocation(line: 158, column: 9, scope: !1024)
!1027 = !DILocation(line: 159, column: 5, scope: !1024)
!1028 = !DILocation(line: 160, column: 12, scope: !1005)
!1029 = !DILocation(line: 161, column: 1, scope: !1005)
!1030 = !DILocation(line: 160, column: 5, scope: !1005)
!1031 = distinct !DISubprogram(name: "stString_eq", scope: !235, file: !235, line: 46, type: !1032, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !1035)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!1034, !198, !198}
!1034 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1035 = !{!1036, !1037}
!1036 = !DILocalVariable(name: "string1", arg: 1, scope: !1031, file: !235, line: 46, type: !198)
!1037 = !DILocalVariable(name: "string2", arg: 2, scope: !1031, file: !235, line: 46, type: !198)
!1038 = !DILocation(line: 46, column: 44, scope: !1031)
!1039 = !DILocation(line: 46, column: 65, scope: !1031)
!1040 = !DILocation(line: 47, column: 10, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1031, file: !235, line: 47, column: 9)
!1042 = !DILocation(line: 47, column: 18, scope: !1041)
!1043 = !DILocation(line: 47, column: 27, scope: !1041)
!1044 = !DILocation(line: 47, column: 31, scope: !1041)
!1045 = !DILocation(line: 47, column: 39, scope: !1041)
!1046 = !DILocation(line: 47, column: 9, scope: !1031)
!1047 = !DILocation(line: 48, column: 9, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1041, file: !235, line: 47, column: 49)
!1049 = !DILocation(line: 49, column: 17, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1041, file: !235, line: 49, column: 16)
!1051 = !DILocation(line: 49, column: 25, scope: !1050)
!1052 = !DILocation(line: 49, column: 34, scope: !1050)
!1053 = !DILocation(line: 49, column: 38, scope: !1050)
!1054 = !DILocation(line: 49, column: 46, scope: !1050)
!1055 = !DILocation(line: 49, column: 16, scope: !1041)
!1056 = !DILocation(line: 50, column: 9, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1050, file: !235, line: 49, column: 56)
!1058 = !DILocation(line: 52, column: 23, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1050, file: !235, line: 51, column: 12)
!1060 = !DILocation(line: 52, column: 32, scope: !1059)
!1061 = !DILocation(line: 52, column: 16, scope: !1059)
!1062 = !DILocation(line: 52, column: 41, scope: !1059)
!1063 = !DILocation(line: 52, column: 9, scope: !1059)
!1064 = !DILocation(line: 54, column: 1, scope: !1031)
!1065 = distinct !DISubprogram(name: "getXmlPort", scope: !2, file: !2, line: 163, type: !1066, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !1068)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!190, !547}
!1068 = !{!1069, !1070}
!1069 = !DILocalVariable(name: "hash", arg: 1, scope: !1065, file: !2, line: 163, type: !547)
!1070 = !DILocalVariable(name: "value", scope: !1065, file: !2, line: 164, type: !198)
!1071 = !DILocation(line: 163, column: 31, scope: !1065)
!1072 = !DILocation(line: 164, column: 5, scope: !1065)
!1073 = !DILocation(line: 164, column: 17, scope: !1065)
!1074 = !DILocation(line: 164, column: 39, scope: !1065)
!1075 = !DILocation(line: 164, column: 25, scope: !1065)
!1076 = !DILocation(line: 165, column: 9, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 165, column: 9)
!1078 = !DILocation(line: 165, column: 15, scope: !1077)
!1079 = !DILocation(line: 165, column: 9, scope: !1065)
!1080 = !DILocation(line: 166, column: 9, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1077, file: !2, line: 165, column: 24)
!1082 = !DILocation(line: 168, column: 34, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1077, file: !2, line: 167, column: 12)
!1084 = !DILocation(line: 168, column: 16, scope: !1083)
!1085 = !DILocation(line: 168, column: 9, scope: !1083)
!1086 = !DILocation(line: 170, column: 1, scope: !1065)
!1087 = distinct !DISubprogram(name: "getXmlTimeout", scope: !2, file: !2, line: 172, type: !1066, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !1088)
!1088 = !{!1089, !1090}
!1089 = !DILocalVariable(name: "hash", arg: 1, scope: !1087, file: !2, line: 172, type: !547)
!1090 = !DILocalVariable(name: "value", scope: !1087, file: !2, line: 173, type: !198)
!1091 = !DILocation(line: 172, column: 34, scope: !1087)
!1092 = !DILocation(line: 173, column: 5, scope: !1087)
!1093 = !DILocation(line: 173, column: 17, scope: !1087)
!1094 = !DILocation(line: 173, column: 39, scope: !1087)
!1095 = !DILocation(line: 173, column: 25, scope: !1087)
!1096 = !DILocation(line: 174, column: 9, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 174, column: 9)
!1098 = !DILocation(line: 174, column: 15, scope: !1097)
!1099 = !DILocation(line: 174, column: 9, scope: !1087)
!1100 = !DILocation(line: 176, column: 9, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1097, file: !2, line: 174, column: 24)
!1102 = !DILocation(line: 178, column: 34, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1097, file: !2, line: 177, column: 12)
!1104 = !DILocation(line: 178, column: 16, scope: !1103)
!1105 = !DILocation(line: 178, column: 9, scope: !1103)
!1106 = !DILocation(line: 180, column: 1, scope: !1087)
!1107 = distinct !DISubprogram(name: "getXMLMaxKTRecordSize", scope: !2, file: !2, line: 189, type: !1108, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !1110)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!164, !547}
!1110 = !{!1111, !1112}
!1111 = !DILocalVariable(name: "hash", arg: 1, scope: !1107, file: !2, line: 189, type: !547)
!1112 = !DILocalVariable(name: "value", scope: !1107, file: !2, line: 190, type: !198)
!1113 = !DILocation(line: 189, column: 46, scope: !1107)
!1114 = !DILocation(line: 190, column: 5, scope: !1107)
!1115 = !DILocation(line: 190, column: 17, scope: !1107)
!1116 = !DILocation(line: 190, column: 39, scope: !1107)
!1117 = !DILocation(line: 190, column: 25, scope: !1107)
!1118 = !DILocation(line: 191, column: 9, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1107, file: !2, line: 191, column: 9)
!1120 = !DILocation(line: 191, column: 15, scope: !1119)
!1121 = !DILocation(line: 191, column: 9, scope: !1107)
!1122 = !DILocation(line: 192, column: 9, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 191, column: 24)
!1124 = !DILocation(line: 194, column: 33, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 193, column: 12)
!1126 = !DILocation(line: 194, column: 16, scope: !1125)
!1127 = !DILocation(line: 194, column: 9, scope: !1125)
!1128 = !DILocation(line: 196, column: 1, scope: !1107)
!1129 = distinct !DISubprogram(name: "getXMLMaxKTBulkSetSize", scope: !2, file: !2, line: 201, type: !1108, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !1130)
!1130 = !{!1131, !1132}
!1131 = !DILocalVariable(name: "hash", arg: 1, scope: !1129, file: !2, line: 201, type: !547)
!1132 = !DILocalVariable(name: "value", scope: !1129, file: !2, line: 202, type: !198)
!1133 = !DILocation(line: 201, column: 47, scope: !1129)
!1134 = !DILocation(line: 202, column: 5, scope: !1129)
!1135 = !DILocation(line: 202, column: 17, scope: !1129)
!1136 = !DILocation(line: 202, column: 39, scope: !1129)
!1137 = !DILocation(line: 202, column: 25, scope: !1129)
!1138 = !DILocation(line: 203, column: 9, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 203, column: 9)
!1140 = !DILocation(line: 203, column: 15, scope: !1139)
!1141 = !DILocation(line: 203, column: 9, scope: !1129)
!1142 = !DILocation(line: 204, column: 9, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1139, file: !2, line: 203, column: 24)
!1144 = !DILocation(line: 206, column: 33, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1139, file: !2, line: 205, column: 12)
!1146 = !DILocation(line: 206, column: 16, scope: !1145)
!1147 = !DILocation(line: 206, column: 9, scope: !1145)
!1148 = !DILocation(line: 208, column: 1, scope: !1129)
!1149 = distinct !DISubprogram(name: "getXMLMaxKTBulkSetNumRecords", scope: !2, file: !2, line: 212, type: !1108, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !1150)
!1150 = !{!1151, !1152}
!1151 = !DILocalVariable(name: "hash", arg: 1, scope: !1149, file: !2, line: 212, type: !547)
!1152 = !DILocalVariable(name: "value", scope: !1149, file: !2, line: 213, type: !198)
!1153 = !DILocation(line: 212, column: 53, scope: !1149)
!1154 = !DILocation(line: 213, column: 5, scope: !1149)
!1155 = !DILocation(line: 213, column: 17, scope: !1149)
!1156 = !DILocation(line: 213, column: 39, scope: !1149)
!1157 = !DILocation(line: 213, column: 25, scope: !1149)
!1158 = !DILocation(line: 214, column: 9, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 214, column: 9)
!1160 = !DILocation(line: 214, column: 15, scope: !1159)
!1161 = !DILocation(line: 214, column: 9, scope: !1149)
!1162 = !DILocation(line: 215, column: 9, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1159, file: !2, line: 214, column: 24)
!1164 = !DILocation(line: 217, column: 33, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1159, file: !2, line: 216, column: 12)
!1166 = !DILocation(line: 217, column: 16, scope: !1165)
!1167 = !DILocation(line: 217, column: 9, scope: !1165)
!1168 = !DILocation(line: 219, column: 1, scope: !1149)
!1169 = !DISubprogram(name: "stHash_search", scope: !1170, file: !1170, line: 59, type: !1171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1170 = !DIFile(filename: "inc/sonLibHash.h", directory: "/local-ssd/sonlib-v6oqz5ulgx4ids65u3c42j7jkpww5xiq-build/aidengro/spack-stage-sonlib-2020-04-01-v6oqz5ulgx4ids65u3c42j7jkpww5xiq/spack-src/C", checksumkind: CSK_MD5, checksum: "de7d0287f1c324cebc30abc927d49ee4")
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!162, !547, !162}
!1173 = !DISubprogram(name: "stHash_destruct", scope: !1170, file: !1170, line: 49, type: !1174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{null, !547}
!1176 = !DISubprogram(name: "stHash_construct3", scope: !1170, file: !1170, line: 43, type: !1177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!547, !1179, !1187, !1190, !1190}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!1182, !1185}
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1183, line: 27, baseType: !1184)
!1183 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !167, line: 45, baseType: !233)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!190, !1185, !1185}
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!1191 = distinct !DISubprogram(name: "getExpectedToken", scope: !2, file: !2, line: 103, type: !1192, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !1194)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{null, !434, !198}
!1194 = !{!1195, !1196, !1197}
!1195 = !DILocalVariable(name: "tokenStream", arg: 1, scope: !1191, file: !2, line: 103, type: !434)
!1196 = !DILocalVariable(name: "expected", arg: 2, scope: !1191, file: !2, line: 103, type: !198)
!1197 = !DILocalVariable(name: "cA", scope: !1191, file: !2, line: 104, type: !163)
!1198 = !DILocation(line: 103, column: 37, scope: !1191)
!1199 = !DILocation(line: 103, column: 62, scope: !1191)
!1200 = !DILocation(line: 104, column: 5, scope: !1191)
!1201 = !DILocation(line: 104, column: 11, scope: !1191)
!1202 = !DILocation(line: 104, column: 29, scope: !1191)
!1203 = !DILocation(line: 104, column: 16, scope: !1191)
!1204 = !DILocation(line: 105, column: 22, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 105, column: 9)
!1206 = !DILocation(line: 105, column: 26, scope: !1205)
!1207 = !DILocation(line: 105, column: 10, scope: !1205)
!1208 = !DILocation(line: 105, column: 9, scope: !1191)
!1209 = !DILocation(line: 106, column: 20, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 105, column: 37)
!1211 = !DILocation(line: 108, column: 20, scope: !1210)
!1212 = !DILocation(line: 108, column: 30, scope: !1210)
!1213 = !DILocation(line: 108, column: 35, scope: !1210)
!1214 = !DILocation(line: 108, column: 34, scope: !1210)
!1215 = !DILocation(line: 106, column: 9, scope: !1210)
!1216 = !DILocation(line: 109, column: 5, scope: !1210)
!1217 = !DILocation(line: 110, column: 10, scope: !1191)
!1218 = !DILocation(line: 110, column: 5, scope: !1191)
!1219 = !DILocation(line: 111, column: 1, scope: !1191)
!1220 = !DISubprogram(name: "stHash_insert", scope: !1170, file: !1170, line: 54, type: !1221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{null, !547, !162, !162}
!1223 = distinct !DISubprogram(name: "getKeyValue", scope: !2, file: !2, line: 113, type: !1224, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !1226)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!163, !434, !198}
!1226 = !{!1227, !1228}
!1227 = !DILocalVariable(name: "tokenStream", arg: 1, scope: !1223, file: !2, line: 113, type: !434)
!1228 = !DILocalVariable(name: "key", arg: 2, scope: !1223, file: !2, line: 113, type: !198)
!1229 = !DILocation(line: 113, column: 33, scope: !1223)
!1230 = !DILocation(line: 113, column: 58, scope: !1223)
!1231 = !DILocation(line: 114, column: 22, scope: !1223)
!1232 = !DILocation(line: 114, column: 35, scope: !1223)
!1233 = !DILocation(line: 114, column: 5, scope: !1223)
!1234 = !DILocation(line: 115, column: 25, scope: !1223)
!1235 = !DILocation(line: 115, column: 12, scope: !1223)
!1236 = !DILocation(line: 115, column: 5, scope: !1223)
!1237 = !DISubprogram(name: "strcmp", scope: !1238, file: !1238, line: 156, type: !1239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1238 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!190, !198, !198}
!1241 = !DISubprogram(name: "stSafeStrToUInt32", scope: !228, file: !228, line: 108, type: !1242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!1182, !198}
!1244 = !DISubprogram(name: "stSafeStrToInt64", scope: !228, file: !228, line: 111, type: !1245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!164, !198}
