; ModuleID = 'samples/372.bc'
source_filename = "dbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dav_hooks_propdb = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_struct = type { i32, i32, i32, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.dav_propdb_metadata = type { i8, i8, i16 }
%struct.dav_db = type { ptr, ptr, i32, %struct.dav_buffer, i16, i32, ptr, %struct.dav_buffer, %struct.apr_datum_t }
%struct.dav_buffer = type { i64, i64, ptr }
%struct.apr_datum_t = type { ptr, i64 }
%struct.dav_error = type { i32, i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.dav_xmlns_info = type { ptr, ptr, ptr, i32 }
%struct.apr_array_header_t = type { ptr, i32, i32, i32, ptr }
%struct.dav_namespace_map = type { ptr }
%struct.dav_deadprop_rollback = type { %struct.apr_datum_t, %struct.apr_datum_t }
%struct.dav_prop_name = type { ptr, ptr }

@.str = private unnamed_addr constant [15 x i8] c".state_for_dir\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [6 x i8] c"/.DAV\00", align 1, !dbg !7
@dav_hooks_db_dbm = constant %struct.dav_hooks_propdb { ptr @dav_propdb_open, ptr @dav_propdb_close, ptr @dav_propdb_define_namespaces, ptr @dav_propdb_output_value, ptr @dav_propdb_map_namespaces, ptr @dav_propdb_store, ptr @dav_propdb_remove, ptr @dav_propdb_exists, ptr @dav_propdb_first_name, ptr @dav_propdb_next_name, ptr @dav_propdb_get_rollback, ptr @dav_propdb_apply_rollback, ptr null }, align 8, !dbg !12
@.str.2 = private unnamed_addr constant [34 x i8] c"Could not open property database.\00", align 1, !dbg !224
@ap_server_conf = external global ptr, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"dbm.c\00", align 1, !dbg !229
@dav_fs_module = external global %struct.module_struct, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"AH00576: The DBM driver could not be loaded\00", align 1, !dbg !235
@.str.5 = private unnamed_addr constant [9 x i8] c"METADATA\00", align 1, !dbg !240
@__const.dav_propdb_open.m = private unnamed_addr constant %struct.dav_propdb_metadata { i8 4, i8 0, i16 0 }, align 2
@.str.6 = private unnamed_addr constant [9 x i8] c"NS_TABLE\00", align 1, !dbg !245
@.str.7 = private unnamed_addr constant [69 x i8] c"Prop database has the wrong major version number and cannot be used.\00", align 1, !dbg !247
@.str.8 = private unnamed_addr constant [7 x i8] c"/.DAV/\00", align 1, !dbg !252
@.str.9 = private unnamed_addr constant [34 x i8] c"AH00577: Error writing propdb: %s\00", align 1, !dbg !257
@.str.10 = private unnamed_addr constant [5 x i8] c"ns%d\00", align 1, !dbg !259
@.str.11 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1, !dbg !264
@.str.12 = private unnamed_addr constant [2 x i8] c"<\00", align 1, !dbg !269
@.str.13 = private unnamed_addr constant [4 x i8] c"/>\0A\00", align 1, !dbg !274
@.str.14 = private unnamed_addr constant [4 x i8] c"<ns\00", align 1, !dbg !276
@.str.15 = private unnamed_addr constant [12 x i8] c" xml:lang=\22\00", align 1, !dbg !278
@.str.16 = private unnamed_addr constant [3 x i8] c"\22>\00", align 1, !dbg !283
@.str.17 = private unnamed_addr constant [3 x i8] c"</\00", align 1, !dbg !288
@.str.18 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1, !dbg !290
@.str.19 = private unnamed_addr constant [5 x i8] c"</ns\00", align 1, !dbg !292
@.str.20 = private unnamed_addr constant [2 x i8] c">\00", align 1, !dbg !294
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !296

; Function Attrs: nounwind uwtable
define void @dav_dbm_get_statefiles(ptr noundef %p, ptr noundef %fname, ptr noundef %state1, ptr noundef %state2) #0 !dbg !1132 {
entry:
  %p.addr = alloca ptr, align 8
  %fname.addr = alloca ptr, align 8
  %state1.addr = alloca ptr, align 8
  %state2.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1136, metadata !DIExpression()), !dbg !1144
  store ptr %fname, ptr %fname.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %fname.addr, metadata !1137, metadata !DIExpression()), !dbg !1145
  store ptr %state1, ptr %state1.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %state1.addr, metadata !1138, metadata !DIExpression()), !dbg !1146
  store ptr %state2, ptr %state2.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %state2.addr, metadata !1139, metadata !DIExpression()), !dbg !1147
  %0 = load ptr, ptr %fname.addr, align 8, !dbg !1148, !tbaa !1140
  %cmp = icmp eq ptr %0, null, !dbg !1150
  br i1 %cmp, label %if.then, label %if.end, !dbg !1151

if.then:                                          ; preds = %entry
  store ptr @.str, ptr %fname.addr, align 8, !dbg !1152, !tbaa !1140
  br label %if.end, !dbg !1153

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !1154, !tbaa !1140
  %2 = load ptr, ptr %fname.addr, align 8, !dbg !1155, !tbaa !1140
  %3 = load ptr, ptr %state1.addr, align 8, !dbg !1156, !tbaa !1140
  %4 = load ptr, ptr %state2.addr, align 8, !dbg !1157, !tbaa !1140
  call void @apr_dbm_get_usednames(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4), !dbg !1158
  ret void, !dbg !1159
}

declare !dbg !1160 void @apr_dbm_get_usednames(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @dav_fs_ensure_state_dir(ptr noundef %p, ptr noundef %dirname) #0 !dbg !1161 {
entry:
  %p.addr = alloca ptr, align 8
  %dirname.addr = alloca ptr, align 8
  %pathname = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1165, metadata !DIExpression()), !dbg !1168
  store ptr %dirname, ptr %dirname.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %dirname.addr, metadata !1166, metadata !DIExpression()), !dbg !1169
  call void @llvm.lifetime.start.p0(i64 8, ptr %pathname) #10, !dbg !1170
  tail call void @llvm.dbg.declare(metadata ptr %pathname, metadata !1167, metadata !DIExpression()), !dbg !1171
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1172, !tbaa !1140
  %1 = load ptr, ptr %dirname.addr, align 8, !dbg !1173, !tbaa !1140
  %call = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %0, ptr noundef %1, ptr noundef @.str.1, ptr noundef null), !dbg !1174
  store ptr %call, ptr %pathname, align 8, !dbg !1171, !tbaa !1140
  %2 = load ptr, ptr %pathname, align 8, !dbg !1175, !tbaa !1140
  %3 = load ptr, ptr %p.addr, align 8, !dbg !1176, !tbaa !1140
  %call1 = call i32 @apr_dir_make(ptr noundef %2, i32 noundef 4095, ptr noundef %3), !dbg !1177
  call void @llvm.lifetime.end.p0(i64 8, ptr %pathname) #10, !dbg !1178
  ret void, !dbg !1178
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1179 ptr @apr_pstrcat(ptr noundef, ...) #1

declare !dbg !1183 i32 @apr_dir_make(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define ptr @dav_dbm_open_direct(ptr noundef %p, ptr noundef %pathname, i32 noundef %ro, ptr noundef %pdb) #0 !dbg !1186 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pathname.addr = alloca ptr, align 8
  %ro.addr = alloca i32, align 4
  %pdb.addr = alloca ptr, align 8
  %file = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1190, metadata !DIExpression()), !dbg !1196
  store ptr %pathname, ptr %pathname.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !1191, metadata !DIExpression()), !dbg !1197
  store i32 %ro, ptr %ro.addr, align 4, !tbaa !1198
  tail call void @llvm.dbg.declare(metadata ptr %ro.addr, metadata !1192, metadata !DIExpression()), !dbg !1200
  store ptr %pdb, ptr %pdb.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %pdb.addr, metadata !1193, metadata !DIExpression()), !dbg !1201
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #10, !dbg !1202
  tail call void @llvm.dbg.declare(metadata ptr %file, metadata !1194, metadata !DIExpression()), !dbg !1203
  store ptr null, ptr %file, align 8, !dbg !1203, !tbaa !1140
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #10, !dbg !1204
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !1195, metadata !DIExpression()), !dbg !1205
  %0 = load ptr, ptr %pdb.addr, align 8, !dbg !1206, !tbaa !1140
  store ptr null, ptr %0, align 8, !dbg !1207, !tbaa !1140
  %1 = load ptr, ptr %pathname.addr, align 8, !dbg !1208, !tbaa !1140
  %2 = load i32, ptr %ro.addr, align 4, !dbg !1210, !tbaa !1198
  %tobool = icmp ne i32 %2, 0, !dbg !1210
  %3 = zext i1 %tobool to i64, !dbg !1210
  %cond = select i1 %tobool, i32 1, i32 3, !dbg !1210
  %4 = load ptr, ptr %p.addr, align 8, !dbg !1211, !tbaa !1140
  %call = call i32 @apr_dbm_open(ptr noundef %file, ptr noundef %1, i32 noundef %cond, i32 noundef 4095, ptr noundef %4), !dbg !1212
  store i32 %call, ptr %status, align 4, !dbg !1213, !tbaa !1198
  %cmp = icmp ne i32 %call, 0, !dbg !1214
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1215

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, ptr %ro.addr, align 4, !dbg !1216, !tbaa !1198
  %tobool1 = icmp ne i32 %5, 0, !dbg !1216
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1217

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %p.addr, align 8, !dbg !1218, !tbaa !1140
  %7 = load i32, ptr %status, align 4, !dbg !1220, !tbaa !1198
  %call2 = call ptr @dav_fs_dbm_error(ptr noundef null, ptr noundef %6, i32 noundef %7), !dbg !1221
  store ptr %call2, ptr %retval, align 8, !dbg !1222
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1222

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load ptr, ptr %file, align 8, !dbg !1223, !tbaa !1140
  %cmp3 = icmp ne ptr %8, null, !dbg !1225
  br i1 %cmp3, label %if.then4, label %if.end7, !dbg !1226

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %p.addr, align 8, !dbg !1227, !tbaa !1140
  %call5 = call ptr @apr_palloc(ptr noundef %9, i64 noundef 104), !dbg !1227
  call void @llvm.memset.p0.i64(ptr align 1 %call5, i8 0, i64 104, i1 false), !dbg !1227
  %10 = load ptr, ptr %pdb.addr, align 8, !dbg !1229, !tbaa !1140
  store ptr %call5, ptr %10, align 8, !dbg !1230, !tbaa !1140
  %11 = load ptr, ptr %p.addr, align 8, !dbg !1231, !tbaa !1140
  %12 = load ptr, ptr %pdb.addr, align 8, !dbg !1232, !tbaa !1140
  %13 = load ptr, ptr %12, align 8, !dbg !1233, !tbaa !1140
  %pool = getelementptr inbounds %struct.dav_db, ptr %13, i32 0, i32 0, !dbg !1234
  store ptr %11, ptr %pool, align 8, !dbg !1235, !tbaa !1236
  %14 = load ptr, ptr %file, align 8, !dbg !1242, !tbaa !1140
  %15 = load ptr, ptr %pdb.addr, align 8, !dbg !1243, !tbaa !1140
  %16 = load ptr, ptr %15, align 8, !dbg !1244, !tbaa !1140
  %file6 = getelementptr inbounds %struct.dav_db, ptr %16, i32 0, i32 1, !dbg !1245
  store ptr %14, ptr %file6, align 8, !dbg !1246, !tbaa !1247
  br label %if.end7, !dbg !1248

if.end7:                                          ; preds = %if.then4, %if.end
  store ptr null, ptr %retval, align 8, !dbg !1249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1249

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #10, !dbg !1250
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #10, !dbg !1250
  %17 = load ptr, ptr %retval, align 8, !dbg !1250
  ret ptr %17, !dbg !1250
}

declare !dbg !1251 i32 @apr_dbm_open(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @dav_fs_dbm_error(ptr noundef %db, ptr noundef %p, i32 noundef %status) #0 !dbg !1255 {
entry:
  %retval = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %errcode = alloca i32, align 4
  %errstr = alloca ptr, align 8
  %err = alloca ptr, align 8
  %errbuf = alloca [200 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %sr__ = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !1259, metadata !DIExpression()), !dbg !1276
  store ptr %p, ptr %p.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1260, metadata !DIExpression()), !dbg !1277
  store i32 %status, ptr %status.addr, align 4, !tbaa !1198
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !1261, metadata !DIExpression()), !dbg !1278
  call void @llvm.lifetime.start.p0(i64 4, ptr %errcode) #10, !dbg !1279
  tail call void @llvm.dbg.declare(metadata ptr %errcode, metadata !1262, metadata !DIExpression()), !dbg !1280
  call void @llvm.lifetime.start.p0(i64 8, ptr %errstr) #10, !dbg !1281
  tail call void @llvm.dbg.declare(metadata ptr %errstr, metadata !1263, metadata !DIExpression()), !dbg !1282
  call void @llvm.lifetime.start.p0(i64 8, ptr %err) #10, !dbg !1283
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1264, metadata !DIExpression()), !dbg !1284
  call void @llvm.lifetime.start.p0(i64 200, ptr %errbuf) #10, !dbg !1285
  tail call void @llvm.dbg.declare(metadata ptr %errbuf, metadata !1265, metadata !DIExpression()), !dbg !1286
  %0 = load i32, ptr %status.addr, align 4, !dbg !1287, !tbaa !1198
  %cmp = icmp eq i32 %0, 0, !dbg !1289
  br i1 %cmp, label %if.then, label %if.end, !dbg !1290

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1291
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1291

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %db.addr, align 8, !dbg !1292, !tbaa !1140
  %tobool = icmp ne ptr %1, null, !dbg !1292
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1292

cond.true:                                        ; preds = %if.end
  %2 = load ptr, ptr %db.addr, align 8, !dbg !1293, !tbaa !1140
  %pool = getelementptr inbounds %struct.dav_db, ptr %2, i32 0, i32 0, !dbg !1294
  %3 = load ptr, ptr %pool, align 8, !dbg !1294, !tbaa !1236
  br label %cond.end, !dbg !1292

cond.false:                                       ; preds = %if.end
  %4 = load ptr, ptr %p.addr, align 8, !dbg !1295, !tbaa !1140
  br label %cond.end, !dbg !1292

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ %4, %cond.false ], !dbg !1292
  store ptr %cond, ptr %p.addr, align 8, !dbg !1296, !tbaa !1140
  %5 = load ptr, ptr %db.addr, align 8, !dbg !1297, !tbaa !1140
  %cmp1 = icmp eq ptr %5, null, !dbg !1298
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !1299

if.then2:                                         ; preds = %cond.end
  store i32 1, ptr %errcode, align 4, !dbg !1300, !tbaa !1198
  store ptr @.str.2, ptr %errstr, align 8, !dbg !1301, !tbaa !1140
  %6 = load i32, ptr %status.addr, align 4, !dbg !1302, !tbaa !1198
  %cmp3 = icmp eq i32 %6, 20019, !dbg !1302
  br i1 %cmp3, label %if.then4, label %if.end9, !dbg !1303

if.then4:                                         ; preds = %if.then2
  br label %do.body, !dbg !1304

do.body:                                          ; preds = %if.then4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sr__) #10, !dbg !1305
  tail call void @llvm.dbg.declare(metadata ptr %sr__, metadata !1269, metadata !DIExpression()), !dbg !1305
  %7 = load ptr, ptr @ap_server_conf, align 8, !dbg !1305, !tbaa !1140
  store ptr %7, ptr %sr__, align 8, !dbg !1305, !tbaa !1140
  br i1 icmp ne (ptr getelementptr (i8, ptr @dav_fs_module, i64 8), ptr null), label %cond.true5, label %cond.false6, !dbg !1306

cond.true5:                                       ; preds = %do.body
  %8 = load i32, ptr getelementptr (i8, ptr @dav_fs_module, i64 8), align 4, !dbg !1306, !tbaa !1198
  br label %cond.end7, !dbg !1306

cond.false6:                                      ; preds = %do.body
  br label %cond.end7, !dbg !1306

cond.end7:                                        ; preds = %cond.false6, %cond.true5
  %cond8 = phi i32 [ %8, %cond.true5 ], [ -1, %cond.false6 ], !dbg !1306
  %9 = load i32, ptr %status.addr, align 4, !dbg !1306, !tbaa !1198
  %10 = load ptr, ptr %sr__, align 8, !dbg !1306, !tbaa !1140
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_error_(ptr noundef @.str.3, i32 noundef 105, i32 noundef %cond8, i32 noundef 2, i32 noundef %9, ptr noundef %10, ptr noundef @.str.4), !dbg !1306
  call void @llvm.lifetime.end.p0(i64 8, ptr %sr__) #10, !dbg !1304
  br label %do.cond, !dbg !1305

do.cond:                                          ; preds = %cond.end7
  br label %do.end, !dbg !1305

do.end:                                           ; preds = %do.cond
  br label %if.end9, !dbg !1305

if.end9:                                          ; preds = %do.end, %if.then2
  br label %if.end12, !dbg !1308

if.else:                                          ; preds = %cond.end
  %11 = load ptr, ptr %db.addr, align 8, !dbg !1309, !tbaa !1140
  %file = getelementptr inbounds %struct.dav_db, ptr %11, i32 0, i32 1, !dbg !1311
  %12 = load ptr, ptr %file, align 8, !dbg !1311, !tbaa !1247
  %arraydecay = getelementptr inbounds [200 x i8], ptr %errbuf, i64 0, i64 0, !dbg !1312
  %call = call ptr @apr_dbm_geterror(ptr noundef %12, ptr noundef %errcode, ptr noundef %arraydecay, i64 noundef 200), !dbg !1313
  %13 = load ptr, ptr %p.addr, align 8, !dbg !1314, !tbaa !1140
  %arraydecay10 = getelementptr inbounds [200 x i8], ptr %errbuf, i64 0, i64 0, !dbg !1315
  %call11 = call ptr @apr_pstrdup(ptr noundef %13, ptr noundef %arraydecay10), !dbg !1316
  store ptr %call11, ptr %errstr, align 8, !dbg !1317, !tbaa !1140
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end9
  %14 = load ptr, ptr %p.addr, align 8, !dbg !1318, !tbaa !1140
  %15 = load i32, ptr %errcode, align 4, !dbg !1319, !tbaa !1198
  %16 = load i32, ptr %status.addr, align 4, !dbg !1320, !tbaa !1198
  %17 = load ptr, ptr %errstr, align 8, !dbg !1321, !tbaa !1140
  %call13 = call ptr @dav_new_error(ptr noundef %14, i32 noundef 500, i32 noundef %15, i32 noundef %16, ptr noundef %17), !dbg !1322
  store ptr %call13, ptr %err, align 8, !dbg !1323, !tbaa !1140
  %18 = load ptr, ptr %err, align 8, !dbg !1324, !tbaa !1140
  store ptr %18, ptr %retval, align 8, !dbg !1325
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1325

cleanup:                                          ; preds = %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 200, ptr %errbuf) #10, !dbg !1326
  call void @llvm.lifetime.end.p0(i64 8, ptr %err) #10, !dbg !1326
  call void @llvm.lifetime.end.p0(i64 8, ptr %errstr) #10, !dbg !1326
  call void @llvm.lifetime.end.p0(i64 4, ptr %errcode) #10, !dbg !1326
  %19 = load ptr, ptr %retval, align 8, !dbg !1326
  ret ptr %19, !dbg !1326
}

declare !dbg !1327 ptr @apr_palloc(ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define void @dav_dbm_close(ptr noundef %db) #0 !dbg !1330 {
entry:
  %db.addr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !1332, metadata !DIExpression()), !dbg !1333
  %0 = load ptr, ptr %db.addr, align 8, !dbg !1334, !tbaa !1140
  %file = getelementptr inbounds %struct.dav_db, ptr %0, i32 0, i32 1, !dbg !1335
  %1 = load ptr, ptr %file, align 8, !dbg !1335, !tbaa !1247
  call void @apr_dbm_close(ptr noundef %1), !dbg !1336
  ret void, !dbg !1337
}

declare !dbg !1338 void @apr_dbm_close(ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @dav_dbm_fetch(ptr noundef %db, ptr %key.coerce0, i64 %key.coerce1, ptr noundef %pvalue) #0 !dbg !1341 {
entry:
  %key = alloca %struct.apr_datum_t, align 8
  %db.addr = alloca ptr, align 8
  %pvalue.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %0 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 0
  store ptr %key.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 1
  store i64 %key.coerce1, ptr %1, align 8
  store ptr %db, ptr %db.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !1346, metadata !DIExpression()), !dbg !1350
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !1347, metadata !DIExpression()), !dbg !1351
  store ptr %pvalue, ptr %pvalue.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %pvalue.addr, metadata !1348, metadata !DIExpression()), !dbg !1352
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #10, !dbg !1353
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !1349, metadata !DIExpression()), !dbg !1354
  %dptr = getelementptr inbounds %struct.apr_datum_t, ptr %key, i32 0, i32 0, !dbg !1355
  %2 = load ptr, ptr %dptr, align 8, !dbg !1355, !tbaa !1357
  %tobool = icmp ne ptr %2, null, !dbg !1358
  br i1 %tobool, label %if.else, label %if.then, !dbg !1359

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pvalue.addr, align 8, !dbg !1360, !tbaa !1140
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 16, i1 false), !dbg !1362
  store i32 0, ptr %status, align 4, !dbg !1363, !tbaa !1198
  br label %if.end, !dbg !1364

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %db.addr, align 8, !dbg !1365, !tbaa !1140
  %file = getelementptr inbounds %struct.dav_db, ptr %4, i32 0, i32 1, !dbg !1367
  %5 = load ptr, ptr %file, align 8, !dbg !1367, !tbaa !1247
  %6 = load ptr, ptr %pvalue.addr, align 8, !dbg !1368, !tbaa !1140
  %7 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 0, !dbg !1369
  %8 = load ptr, ptr %7, align 8, !dbg !1369
  %9 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 1, !dbg !1369
  %10 = load i64, ptr %9, align 8, !dbg !1369
  %call = call i32 @apr_dbm_fetch(ptr noundef %5, ptr %8, i64 %10, ptr noundef %6), !dbg !1369
  store i32 %call, ptr %status, align 4, !dbg !1370, !tbaa !1198
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load ptr, ptr %db.addr, align 8, !dbg !1371, !tbaa !1140
  %12 = load i32, ptr %status, align 4, !dbg !1372, !tbaa !1198
  %call1 = call ptr @dav_fs_dbm_error(ptr noundef %11, ptr noundef null, i32 noundef %12), !dbg !1373
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #10, !dbg !1374
  ret ptr %call1, !dbg !1375
}

declare !dbg !1376 i32 @apr_dbm_fetch(ptr noundef, ptr, i64, ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @dav_dbm_store(ptr noundef %db, ptr %key.coerce0, i64 %key.coerce1, ptr %value.coerce0, i64 %value.coerce1) #0 !dbg !1379 {
entry:
  %key = alloca %struct.apr_datum_t, align 8
  %value = alloca %struct.apr_datum_t, align 8
  %db.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %0 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 0
  store ptr %key.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 1
  store i64 %key.coerce1, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %value, i32 0, i32 0
  store ptr %value.coerce0, ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %value, i32 0, i32 1
  store i64 %value.coerce1, ptr %3, align 8
  store ptr %db, ptr %db.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !1383, metadata !DIExpression()), !dbg !1387
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !1384, metadata !DIExpression()), !dbg !1388
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !1385, metadata !DIExpression()), !dbg !1389
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #10, !dbg !1390
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !1386, metadata !DIExpression()), !dbg !1391
  %4 = load ptr, ptr %db.addr, align 8, !dbg !1392, !tbaa !1140
  %file = getelementptr inbounds %struct.dav_db, ptr %4, i32 0, i32 1, !dbg !1393
  %5 = load ptr, ptr %file, align 8, !dbg !1393, !tbaa !1247
  %6 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 0, !dbg !1394
  %7 = load ptr, ptr %6, align 8, !dbg !1394
  %8 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 1, !dbg !1394
  %9 = load i64, ptr %8, align 8, !dbg !1394
  %10 = getelementptr inbounds { ptr, i64 }, ptr %value, i32 0, i32 0, !dbg !1394
  %11 = load ptr, ptr %10, align 8, !dbg !1394
  %12 = getelementptr inbounds { ptr, i64 }, ptr %value, i32 0, i32 1, !dbg !1394
  %13 = load i64, ptr %12, align 8, !dbg !1394
  %call = call i32 @apr_dbm_store(ptr noundef %5, ptr %7, i64 %9, ptr %11, i64 %13), !dbg !1394
  store i32 %call, ptr %status, align 4, !dbg !1391, !tbaa !1198
  %14 = load ptr, ptr %db.addr, align 8, !dbg !1395, !tbaa !1140
  %15 = load i32, ptr %status, align 4, !dbg !1396, !tbaa !1198
  %call1 = call ptr @dav_fs_dbm_error(ptr noundef %14, ptr noundef null, i32 noundef %15), !dbg !1397
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #10, !dbg !1398
  ret ptr %call1, !dbg !1399
}

declare !dbg !1400 i32 @apr_dbm_store(ptr noundef, ptr, i64, ptr, i64) #1

; Function Attrs: nounwind uwtable
define ptr @dav_dbm_delete(ptr noundef %db, ptr %key.coerce0, i64 %key.coerce1) #0 !dbg !1403 {
entry:
  %key = alloca %struct.apr_datum_t, align 8
  %db.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %0 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 0
  store ptr %key.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 1
  store i64 %key.coerce1, ptr %1, align 8
  store ptr %db, ptr %db.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !1407, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !1408, metadata !DIExpression()), !dbg !1411
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #10, !dbg !1412
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !1409, metadata !DIExpression()), !dbg !1413
  %2 = load ptr, ptr %db.addr, align 8, !dbg !1414, !tbaa !1140
  %file = getelementptr inbounds %struct.dav_db, ptr %2, i32 0, i32 1, !dbg !1415
  %3 = load ptr, ptr %file, align 8, !dbg !1415, !tbaa !1247
  %4 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 0, !dbg !1416
  %5 = load ptr, ptr %4, align 8, !dbg !1416
  %6 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 1, !dbg !1416
  %7 = load i64, ptr %6, align 8, !dbg !1416
  %call = call i32 @apr_dbm_delete(ptr noundef %3, ptr %5, i64 %7), !dbg !1416
  store i32 %call, ptr %status, align 4, !dbg !1413, !tbaa !1198
  %8 = load ptr, ptr %db.addr, align 8, !dbg !1417, !tbaa !1140
  %9 = load i32, ptr %status, align 4, !dbg !1418, !tbaa !1198
  %call1 = call ptr @dav_fs_dbm_error(ptr noundef %8, ptr noundef null, i32 noundef %9), !dbg !1419
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #10, !dbg !1420
  ret ptr %call1, !dbg !1421
}

declare !dbg !1422 i32 @apr_dbm_delete(ptr noundef, ptr, i64) #1

; Function Attrs: nounwind uwtable
define i32 @dav_dbm_exists(ptr noundef %db, ptr %key.coerce0, i64 %key.coerce1) #0 !dbg !1425 {
entry:
  %key = alloca %struct.apr_datum_t, align 8
  %db.addr = alloca ptr, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 0
  store ptr %key.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 1
  store i64 %key.coerce1, ptr %1, align 8
  store ptr %db, ptr %db.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !1429, metadata !DIExpression()), !dbg !1431
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !1430, metadata !DIExpression()), !dbg !1432
  %2 = load ptr, ptr %db.addr, align 8, !dbg !1433, !tbaa !1140
  %file = getelementptr inbounds %struct.dav_db, ptr %2, i32 0, i32 1, !dbg !1434
  %3 = load ptr, ptr %file, align 8, !dbg !1434, !tbaa !1247
  %4 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 0, !dbg !1435
  %5 = load ptr, ptr %4, align 8, !dbg !1435
  %6 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 1, !dbg !1435
  %7 = load i64, ptr %6, align 8, !dbg !1435
  %call = call i32 @apr_dbm_exists(ptr noundef %3, ptr %5, i64 %7), !dbg !1435
  ret i32 %call, !dbg !1436
}

declare !dbg !1437 i32 @apr_dbm_exists(ptr noundef, ptr, i64) #1

; Function Attrs: nounwind uwtable
define void @dav_dbm_freedatum(ptr noundef %db, ptr %data.coerce0, i64 %data.coerce1) #0 !dbg !1440 {
entry:
  %data = alloca %struct.apr_datum_t, align 8
  %db.addr = alloca ptr, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %data, i32 0, i32 0
  store ptr %data.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %data, i32 0, i32 1
  store i64 %data.coerce1, ptr %1, align 8
  store ptr %db, ptr %db.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !1444, metadata !DIExpression()), !dbg !1446
  tail call void @llvm.dbg.declare(metadata ptr %data, metadata !1445, metadata !DIExpression()), !dbg !1447
  %2 = load ptr, ptr %db.addr, align 8, !dbg !1448, !tbaa !1140
  %file = getelementptr inbounds %struct.dav_db, ptr %2, i32 0, i32 1, !dbg !1449
  %3 = load ptr, ptr %file, align 8, !dbg !1449, !tbaa !1247
  %4 = getelementptr inbounds { ptr, i64 }, ptr %data, i32 0, i32 0, !dbg !1450
  %5 = load ptr, ptr %4, align 8, !dbg !1450
  %6 = getelementptr inbounds { ptr, i64 }, ptr %data, i32 0, i32 1, !dbg !1450
  %7 = load i64, ptr %6, align 8, !dbg !1450
  call void @apr_dbm_freedatum(ptr noundef %3, ptr %5, i64 %7), !dbg !1450
  ret void, !dbg !1451
}

declare !dbg !1452 void @apr_dbm_freedatum(ptr noundef, ptr, i64) #1

; Function Attrs: nounwind uwtable
define internal ptr @dav_propdb_open(ptr noundef %pool, ptr noundef %resource, i32 noundef %ro, ptr noundef %pdb) #0 !dbg !1455 {
entry:
  %retval = alloca ptr, align 8
  %pool.addr = alloca ptr, align 8
  %resource.addr = alloca ptr, align 8
  %ro.addr = alloca i32, align 4
  %pdb.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %err = alloca ptr, align 8
  %key = alloca %struct.apr_datum_t, align 8
  %value = alloca %struct.apr_datum_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %m = alloca %struct.dav_propdb_metadata, align 2
  %m17 = alloca %struct.dav_propdb_metadata, align 2
  %ns = alloca i64, align 8
  %uri = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !1457, metadata !DIExpression()), !dbg !1478
  store ptr %resource, ptr %resource.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %resource.addr, metadata !1458, metadata !DIExpression()), !dbg !1479
  store i32 %ro, ptr %ro.addr, align 4, !tbaa !1198
  tail call void @llvm.dbg.declare(metadata ptr %ro.addr, metadata !1459, metadata !DIExpression()), !dbg !1480
  store ptr %pdb, ptr %pdb.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %pdb.addr, metadata !1460, metadata !DIExpression()), !dbg !1481
  call void @llvm.lifetime.start.p0(i64 8, ptr %db) #10, !dbg !1482
  tail call void @llvm.dbg.declare(metadata ptr %db, metadata !1461, metadata !DIExpression()), !dbg !1483
  call void @llvm.lifetime.start.p0(i64 8, ptr %err) #10, !dbg !1484
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1462, metadata !DIExpression()), !dbg !1485
  call void @llvm.lifetime.start.p0(i64 16, ptr %key) #10, !dbg !1486
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !1463, metadata !DIExpression()), !dbg !1487
  call void @llvm.lifetime.start.p0(i64 16, ptr %value) #10, !dbg !1488
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !1464, metadata !DIExpression()), !dbg !1489
  call void @llvm.memset.p0.i64(ptr align 8 %value, i8 0, i64 16, i1 false), !dbg !1489
  %0 = load ptr, ptr %pdb.addr, align 8, !dbg !1490, !tbaa !1140
  store ptr null, ptr %0, align 8, !dbg !1491, !tbaa !1140
  %1 = load ptr, ptr %pool.addr, align 8, !dbg !1492, !tbaa !1140
  %2 = load ptr, ptr %resource.addr, align 8, !dbg !1494, !tbaa !1140
  %3 = load i32, ptr %ro.addr, align 4, !dbg !1495, !tbaa !1198
  %call = call ptr @dav_dbm_open(ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %db), !dbg !1496
  store ptr %call, ptr %err, align 8, !dbg !1497, !tbaa !1140
  %cmp = icmp ne ptr %call, null, !dbg !1498
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1499

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %db, align 8, !dbg !1500, !tbaa !1140
  %cmp1 = icmp eq ptr %4, null, !dbg !1501
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1502

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %err, align 8, !dbg !1503, !tbaa !1140
  store ptr %5, ptr %retval, align 8, !dbg !1504
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup49, !dbg !1504

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %pool.addr, align 8, !dbg !1505, !tbaa !1140
  %call2 = call ptr @apr_hash_make(ptr noundef %6), !dbg !1506
  %7 = load ptr, ptr %db, align 8, !dbg !1507, !tbaa !1140
  %uri_index = getelementptr inbounds %struct.dav_db, ptr %7, i32 0, i32 6, !dbg !1508
  store ptr %call2, ptr %uri_index, align 8, !dbg !1509, !tbaa !1510
  %dptr = getelementptr inbounds %struct.apr_datum_t, ptr %key, i32 0, i32 0, !dbg !1511
  store ptr @.str.5, ptr %dptr, align 8, !dbg !1512, !tbaa !1357
  %dsize = getelementptr inbounds %struct.apr_datum_t, ptr %key, i32 0, i32 1, !dbg !1513
  store i64 8, ptr %dsize, align 8, !dbg !1514, !tbaa !1515
  %8 = load ptr, ptr %db, align 8, !dbg !1516, !tbaa !1140
  %9 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 0, !dbg !1518
  %10 = load ptr, ptr %9, align 8, !dbg !1518
  %11 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 1, !dbg !1518
  %12 = load i64, ptr %11, align 8, !dbg !1518
  %call3 = call ptr @dav_dbm_fetch(ptr noundef %8, ptr %10, i64 %12, ptr noundef %value), !dbg !1518
  store ptr %call3, ptr %err, align 8, !dbg !1519, !tbaa !1140
  %cmp4 = icmp ne ptr %call3, null, !dbg !1520
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1521

if.then5:                                         ; preds = %if.end
  %13 = load ptr, ptr %err, align 8, !dbg !1522, !tbaa !1140
  store ptr %13, ptr %retval, align 8, !dbg !1524
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup49, !dbg !1524

if.end6:                                          ; preds = %if.end
  %dptr7 = getelementptr inbounds %struct.apr_datum_t, ptr %value, i32 0, i32 0, !dbg !1525
  %14 = load ptr, ptr %dptr7, align 8, !dbg !1525, !tbaa !1357
  %cmp8 = icmp eq ptr %14, null, !dbg !1526
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !1527

if.then9:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #10, !dbg !1528
  tail call void @llvm.dbg.declare(metadata ptr %m, metadata !1465, metadata !DIExpression()), !dbg !1529
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %m, ptr align 2 @__const.dav_propdb_open.m, i64 4, i1 false), !dbg !1529
  %dptr10 = getelementptr inbounds %struct.apr_datum_t, ptr %key, i32 0, i32 0, !dbg !1530
  store ptr @.str.6, ptr %dptr10, align 8, !dbg !1531, !tbaa !1357
  %dsize11 = getelementptr inbounds %struct.apr_datum_t, ptr %key, i32 0, i32 1, !dbg !1532
  store i64 8, ptr %dsize11, align 8, !dbg !1533, !tbaa !1515
  %15 = load ptr, ptr %db, align 8, !dbg !1534, !tbaa !1140
  %16 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 0, !dbg !1536
  %17 = load ptr, ptr %16, align 8, !dbg !1536
  %18 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 1, !dbg !1536
  %19 = load i64, ptr %18, align 8, !dbg !1536
  %call12 = call i32 @dav_dbm_exists(ptr noundef %15, ptr %17, i64 %19), !dbg !1536
  %tobool = icmp ne i32 %call12, 0, !dbg !1536
  br i1 %tobool, label %if.then13, label %if.end15, !dbg !1537

if.then13:                                        ; preds = %if.then9
  %20 = load ptr, ptr %db, align 8, !dbg !1538, !tbaa !1140
  call void @dav_dbm_close(ptr noundef %20), !dbg !1540
  %21 = load ptr, ptr %pool.addr, align 8, !dbg !1541, !tbaa !1140
  %call14 = call ptr @dav_new_error(ptr noundef %21, i32 noundef 500, i32 noundef 200, i32 noundef 0, ptr noundef @.str.7), !dbg !1542
  store ptr %call14, ptr %retval, align 8, !dbg !1543
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1543

if.end15:                                         ; preds = %if.then9
  %22 = load ptr, ptr %pool.addr, align 8, !dbg !1544, !tbaa !1140
  %23 = load ptr, ptr %db, align 8, !dbg !1545, !tbaa !1140
  %ns_table = getelementptr inbounds %struct.dav_db, ptr %23, i32 0, i32 3, !dbg !1546
  call void @dav_set_bufsize(ptr noundef %22, ptr noundef %ns_table, i64 noundef 4), !dbg !1547
  %24 = load ptr, ptr %db, align 8, !dbg !1548, !tbaa !1140
  %ns_table16 = getelementptr inbounds %struct.dav_db, ptr %24, i32 0, i32 3, !dbg !1549
  %buf = getelementptr inbounds %struct.dav_buffer, ptr %ns_table16, i32 0, i32 2, !dbg !1550
  %25 = load ptr, ptr %buf, align 8, !dbg !1550, !tbaa !1551
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 2 %m, i64 4, i1 false), !dbg !1552
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1553
  br label %cleanup, !dbg !1553

cleanup:                                          ; preds = %if.end15, %if.then13
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #10, !dbg !1553
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup49 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end48, !dbg !1554

if.else:                                          ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 4, ptr %m17) #10, !dbg !1555
  tail call void @llvm.dbg.declare(metadata ptr %m17, metadata !1474, metadata !DIExpression()), !dbg !1556
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #10, !dbg !1557
  tail call void @llvm.dbg.declare(metadata ptr %ns, metadata !1476, metadata !DIExpression()), !dbg !1558
  call void @llvm.lifetime.start.p0(i64 8, ptr %uri) #10, !dbg !1559
  tail call void @llvm.dbg.declare(metadata ptr %uri, metadata !1477, metadata !DIExpression()), !dbg !1560
  %26 = load ptr, ptr %pool.addr, align 8, !dbg !1561, !tbaa !1140
  %27 = load ptr, ptr %db, align 8, !dbg !1562, !tbaa !1140
  %ns_table18 = getelementptr inbounds %struct.dav_db, ptr %27, i32 0, i32 3, !dbg !1563
  %dsize19 = getelementptr inbounds %struct.apr_datum_t, ptr %value, i32 0, i32 1, !dbg !1564
  %28 = load i64, ptr %dsize19, align 8, !dbg !1564, !tbaa !1515
  call void @dav_set_bufsize(ptr noundef %26, ptr noundef %ns_table18, i64 noundef %28), !dbg !1565
  %29 = load ptr, ptr %db, align 8, !dbg !1566, !tbaa !1140
  %ns_table20 = getelementptr inbounds %struct.dav_db, ptr %29, i32 0, i32 3, !dbg !1567
  %buf21 = getelementptr inbounds %struct.dav_buffer, ptr %ns_table20, i32 0, i32 2, !dbg !1568
  %30 = load ptr, ptr %buf21, align 8, !dbg !1568, !tbaa !1551
  %dptr22 = getelementptr inbounds %struct.apr_datum_t, ptr %value, i32 0, i32 0, !dbg !1569
  %31 = load ptr, ptr %dptr22, align 8, !dbg !1569, !tbaa !1357
  %dsize23 = getelementptr inbounds %struct.apr_datum_t, ptr %value, i32 0, i32 1, !dbg !1570
  %32 = load i64, ptr %dsize23, align 8, !dbg !1570, !tbaa !1515
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %30, ptr align 1 %31, i64 %32, i1 false), !dbg !1571
  %dptr24 = getelementptr inbounds %struct.apr_datum_t, ptr %value, i32 0, i32 0, !dbg !1572
  %33 = load ptr, ptr %dptr24, align 8, !dbg !1572, !tbaa !1357
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %m17, ptr align 1 %33, i64 4, i1 false), !dbg !1573
  %major = getelementptr inbounds %struct.dav_propdb_metadata, ptr %m17, i32 0, i32 0, !dbg !1574
  %34 = load i8, ptr %major, align 2, !dbg !1574, !tbaa !1576
  %conv = zext i8 %34 to i32, !dbg !1578
  %cmp25 = icmp ne i32 %conv, 4, !dbg !1579
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !1580

if.then27:                                        ; preds = %if.else
  %35 = load ptr, ptr %db, align 8, !dbg !1581, !tbaa !1140
  call void @dav_dbm_close(ptr noundef %35), !dbg !1583
  %36 = load ptr, ptr %pool.addr, align 8, !dbg !1584, !tbaa !1140
  %call28 = call ptr @dav_new_error(ptr noundef %36, i32 noundef 500, i32 noundef 200, i32 noundef 0, ptr noundef @.str.7), !dbg !1585
  store ptr %call28, ptr %retval, align 8, !dbg !1586
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43, !dbg !1586

if.end29:                                         ; preds = %if.else
  %minor = getelementptr inbounds %struct.dav_propdb_metadata, ptr %m17, i32 0, i32 1, !dbg !1587
  %37 = load i8, ptr %minor, align 1, !dbg !1587, !tbaa !1588
  %conv30 = zext i8 %37 to i32, !dbg !1589
  %38 = load ptr, ptr %db, align 8, !dbg !1590, !tbaa !1140
  %version = getelementptr inbounds %struct.dav_db, ptr %38, i32 0, i32 2, !dbg !1591
  store i32 %conv30, ptr %version, align 8, !dbg !1592, !tbaa !1593
  %ns_count = getelementptr inbounds %struct.dav_propdb_metadata, ptr %m17, i32 0, i32 2, !dbg !1594
  %39 = load i16, ptr %ns_count, align 2, !dbg !1594, !tbaa !1595
  %call31 = call zeroext i16 @__bswap_16(i16 noundef zeroext %39), !dbg !1594
  %40 = load ptr, ptr %db, align 8, !dbg !1596, !tbaa !1140
  %ns_count32 = getelementptr inbounds %struct.dav_db, ptr %40, i32 0, i32 4, !dbg !1597
  store i16 %call31, ptr %ns_count32, align 8, !dbg !1598, !tbaa !1599
  %41 = load ptr, ptr %db, align 8, !dbg !1600, !tbaa !1140
  %42 = getelementptr inbounds { ptr, i64 }, ptr %value, i32 0, i32 0, !dbg !1601
  %43 = load ptr, ptr %42, align 8, !dbg !1601
  %44 = getelementptr inbounds { ptr, i64 }, ptr %value, i32 0, i32 1, !dbg !1601
  %45 = load i64, ptr %44, align 8, !dbg !1601
  call void @dav_dbm_freedatum(ptr noundef %41, ptr %43, i64 %45), !dbg !1601
  store i64 0, ptr %ns, align 8, !dbg !1602, !tbaa !1604
  %46 = load ptr, ptr %db, align 8, !dbg !1605, !tbaa !1140
  %ns_table33 = getelementptr inbounds %struct.dav_db, ptr %46, i32 0, i32 3, !dbg !1606
  %buf34 = getelementptr inbounds %struct.dav_buffer, ptr %ns_table33, i32 0, i32 2, !dbg !1607
  %47 = load ptr, ptr %buf34, align 8, !dbg !1607, !tbaa !1551
  %add.ptr = getelementptr inbounds i8, ptr %47, i64 4, !dbg !1608
  store ptr %add.ptr, ptr %uri, align 8, !dbg !1609, !tbaa !1140
  br label %for.cond, !dbg !1610

for.cond:                                         ; preds = %for.inc, %if.end29
  %48 = load i64, ptr %ns, align 8, !dbg !1611, !tbaa !1604
  %inc = add nsw i64 %48, 1, !dbg !1611
  store i64 %inc, ptr %ns, align 8, !dbg !1611, !tbaa !1604
  %49 = load ptr, ptr %db, align 8, !dbg !1613, !tbaa !1140
  %ns_count35 = getelementptr inbounds %struct.dav_db, ptr %49, i32 0, i32 4, !dbg !1614
  %50 = load i16, ptr %ns_count35, align 8, !dbg !1614, !tbaa !1599
  %conv36 = sext i16 %50 to i64, !dbg !1613
  %cmp37 = icmp slt i64 %48, %conv36, !dbg !1615
  br i1 %cmp37, label %for.body, label %for.end, !dbg !1616

for.body:                                         ; preds = %for.cond
  %51 = load ptr, ptr %db, align 8, !dbg !1617, !tbaa !1140
  %uri_index39 = getelementptr inbounds %struct.dav_db, ptr %51, i32 0, i32 6, !dbg !1619
  %52 = load ptr, ptr %uri_index39, align 8, !dbg !1619, !tbaa !1510
  %53 = load ptr, ptr %pool.addr, align 8, !dbg !1620, !tbaa !1140
  %54 = load ptr, ptr %uri, align 8, !dbg !1621, !tbaa !1140
  %call40 = call ptr @apr_pstrdup(ptr noundef %53, ptr noundef %54), !dbg !1622
  %55 = load i64, ptr %ns, align 8, !dbg !1623, !tbaa !1604
  %56 = inttoptr i64 %55 to ptr, !dbg !1624
  call void @apr_hash_set(ptr noundef %52, ptr noundef %call40, i64 noundef -1, ptr noundef %56), !dbg !1625
  br label %for.inc, !dbg !1626

for.inc:                                          ; preds = %for.body
  %57 = load ptr, ptr %uri, align 8, !dbg !1627, !tbaa !1140
  %call41 = call i64 @strlen(ptr noundef %57) #11, !dbg !1628
  %add = add i64 %call41, 1, !dbg !1629
  %58 = load ptr, ptr %uri, align 8, !dbg !1630, !tbaa !1140
  %add.ptr42 = getelementptr inbounds i8, ptr %58, i64 %add, !dbg !1630
  store ptr %add.ptr42, ptr %uri, align 8, !dbg !1630, !tbaa !1140
  br label %for.cond, !dbg !1631, !llvm.loop !1632

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1635
  br label %cleanup43, !dbg !1635

cleanup43:                                        ; preds = %for.end, %if.then27
  call void @llvm.lifetime.end.p0(i64 8, ptr %uri) #10, !dbg !1635
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #10, !dbg !1635
  call void @llvm.lifetime.end.p0(i64 4, ptr %m17) #10, !dbg !1635
  %cleanup.dest46 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest46, label %cleanup49 [
    i32 0, label %cleanup.cont47
  ]

cleanup.cont47:                                   ; preds = %cleanup43
  br label %if.end48

if.end48:                                         ; preds = %cleanup.cont47, %cleanup.cont
  %59 = load ptr, ptr %db, align 8, !dbg !1636, !tbaa !1140
  %60 = load ptr, ptr %pdb.addr, align 8, !dbg !1637, !tbaa !1140
  store ptr %59, ptr %60, align 8, !dbg !1638, !tbaa !1140
  store ptr null, ptr %retval, align 8, !dbg !1639
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup49, !dbg !1639

cleanup49:                                        ; preds = %if.end48, %cleanup43, %cleanup, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %value) #10, !dbg !1640
  call void @llvm.lifetime.end.p0(i64 16, ptr %key) #10, !dbg !1640
  call void @llvm.lifetime.end.p0(i64 8, ptr %err) #10, !dbg !1640
  call void @llvm.lifetime.end.p0(i64 8, ptr %db) #10, !dbg !1640
  %61 = load ptr, ptr %retval, align 8, !dbg !1640
  ret ptr %61, !dbg !1640
}

; Function Attrs: nounwind uwtable
define internal void @dav_propdb_close(ptr noundef %db) #0 !dbg !1641 {
entry:
  %db.addr = alloca ptr, align 8
  %m = alloca %struct.dav_propdb_metadata, align 2
  %key = alloca %struct.apr_datum_t, align 8
  %value = alloca %struct.apr_datum_t, align 8
  %err = alloca ptr, align 8
  %sr__ = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !1643, metadata !DIExpression()), !dbg !1653
  %0 = load ptr, ptr %db.addr, align 8, !dbg !1654, !tbaa !1140
  %ns_table_dirty = getelementptr inbounds %struct.dav_db, ptr %0, i32 0, i32 5, !dbg !1655
  %1 = load i32, ptr %ns_table_dirty, align 4, !dbg !1655, !tbaa !1656
  %tobool = icmp ne i32 %1, 0, !dbg !1654
  br i1 %tobool, label %if.then, label %if.end10, !dbg !1657

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #10, !dbg !1658
  tail call void @llvm.dbg.declare(metadata ptr %m, metadata !1644, metadata !DIExpression()), !dbg !1659
  call void @llvm.lifetime.start.p0(i64 16, ptr %key) #10, !dbg !1660
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !1647, metadata !DIExpression()), !dbg !1661
  call void @llvm.lifetime.start.p0(i64 16, ptr %value) #10, !dbg !1662
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !1648, metadata !DIExpression()), !dbg !1663
  call void @llvm.lifetime.start.p0(i64 8, ptr %err) #10, !dbg !1664
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1649, metadata !DIExpression()), !dbg !1665
  %dptr = getelementptr inbounds %struct.apr_datum_t, ptr %key, i32 0, i32 0, !dbg !1666
  store ptr @.str.5, ptr %dptr, align 8, !dbg !1667, !tbaa !1357
  %dsize = getelementptr inbounds %struct.apr_datum_t, ptr %key, i32 0, i32 1, !dbg !1668
  store i64 8, ptr %dsize, align 8, !dbg !1669, !tbaa !1515
  %2 = load ptr, ptr %db.addr, align 8, !dbg !1670, !tbaa !1140
  %ns_table = getelementptr inbounds %struct.dav_db, ptr %2, i32 0, i32 3, !dbg !1671
  %buf = getelementptr inbounds %struct.dav_buffer, ptr %ns_table, i32 0, i32 2, !dbg !1672
  %3 = load ptr, ptr %buf, align 8, !dbg !1672, !tbaa !1551
  %dptr1 = getelementptr inbounds %struct.apr_datum_t, ptr %value, i32 0, i32 0, !dbg !1673
  store ptr %3, ptr %dptr1, align 8, !dbg !1674, !tbaa !1357
  %4 = load ptr, ptr %db.addr, align 8, !dbg !1675, !tbaa !1140
  %ns_table2 = getelementptr inbounds %struct.dav_db, ptr %4, i32 0, i32 3, !dbg !1676
  %cur_len = getelementptr inbounds %struct.dav_buffer, ptr %ns_table2, i32 0, i32 1, !dbg !1677
  %5 = load i64, ptr %cur_len, align 8, !dbg !1677, !tbaa !1678
  %dsize3 = getelementptr inbounds %struct.apr_datum_t, ptr %value, i32 0, i32 1, !dbg !1679
  store i64 %5, ptr %dsize3, align 8, !dbg !1680, !tbaa !1515
  %major = getelementptr inbounds %struct.dav_propdb_metadata, ptr %m, i32 0, i32 0, !dbg !1681
  store i8 4, ptr %major, align 2, !dbg !1682, !tbaa !1576
  %6 = load ptr, ptr %db.addr, align 8, !dbg !1683, !tbaa !1140
  %version = getelementptr inbounds %struct.dav_db, ptr %6, i32 0, i32 2, !dbg !1684
  %7 = load i32, ptr %version, align 8, !dbg !1684, !tbaa !1593
  %conv = trunc i32 %7 to i8, !dbg !1683
  %minor = getelementptr inbounds %struct.dav_propdb_metadata, ptr %m, i32 0, i32 1, !dbg !1685
  store i8 %conv, ptr %minor, align 1, !dbg !1686, !tbaa !1588
  %8 = load ptr, ptr %db.addr, align 8, !dbg !1687, !tbaa !1140
  %ns_count = getelementptr inbounds %struct.dav_db, ptr %8, i32 0, i32 4, !dbg !1687
  %9 = load i16, ptr %ns_count, align 8, !dbg !1687, !tbaa !1599
  %call = call zeroext i16 @__bswap_16(i16 noundef zeroext %9), !dbg !1687
  %ns_count4 = getelementptr inbounds %struct.dav_propdb_metadata, ptr %m, i32 0, i32 2, !dbg !1688
  store i16 %call, ptr %ns_count4, align 2, !dbg !1689, !tbaa !1595
  %10 = load ptr, ptr %db.addr, align 8, !dbg !1690, !tbaa !1140
  %ns_table5 = getelementptr inbounds %struct.dav_db, ptr %10, i32 0, i32 3, !dbg !1691
  %buf6 = getelementptr inbounds %struct.dav_buffer, ptr %ns_table5, i32 0, i32 2, !dbg !1692
  %11 = load ptr, ptr %buf6, align 8, !dbg !1692, !tbaa !1551
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 2 %m, i64 4, i1 false), !dbg !1693
  %12 = load ptr, ptr %db.addr, align 8, !dbg !1694, !tbaa !1140
  %13 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 0, !dbg !1695
  %14 = load ptr, ptr %13, align 8, !dbg !1695
  %15 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 1, !dbg !1695
  %16 = load i64, ptr %15, align 8, !dbg !1695
  %17 = getelementptr inbounds { ptr, i64 }, ptr %value, i32 0, i32 0, !dbg !1695
  %18 = load ptr, ptr %17, align 8, !dbg !1695
  %19 = getelementptr inbounds { ptr, i64 }, ptr %value, i32 0, i32 1, !dbg !1695
  %20 = load i64, ptr %19, align 8, !dbg !1695
  %call7 = call ptr @dav_dbm_store(ptr noundef %12, ptr %14, i64 %16, ptr %18, i64 %20), !dbg !1695
  store ptr %call7, ptr %err, align 8, !dbg !1696, !tbaa !1140
  %21 = load ptr, ptr %err, align 8, !dbg !1697, !tbaa !1140
  %cmp = icmp ne ptr %21, null, !dbg !1698
  br i1 %cmp, label %if.then9, label %if.end, !dbg !1699

if.then9:                                         ; preds = %if.then
  br label %do.body, !dbg !1700

do.body:                                          ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 8, ptr %sr__) #10, !dbg !1701
  tail call void @llvm.dbg.declare(metadata ptr %sr__, metadata !1650, metadata !DIExpression()), !dbg !1701
  %22 = load ptr, ptr @ap_server_conf, align 8, !dbg !1701, !tbaa !1140
  store ptr %22, ptr %sr__, align 8, !dbg !1701, !tbaa !1140
  br i1 icmp ne (ptr getelementptr (i8, ptr @dav_fs_module, i64 8), ptr null), label %cond.true, label %cond.false, !dbg !1702

cond.true:                                        ; preds = %do.body
  %23 = load i32, ptr getelementptr (i8, ptr @dav_fs_module, i64 8), align 4, !dbg !1702, !tbaa !1198
  br label %cond.end, !dbg !1702

cond.false:                                       ; preds = %do.body
  br label %cond.end, !dbg !1702

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ -1, %cond.false ], !dbg !1702
  %24 = load ptr, ptr %err, align 8, !dbg !1702, !tbaa !1140
  %aprerr = getelementptr inbounds %struct.dav_error, ptr %24, i32 0, i32 3, !dbg !1702
  %25 = load i32, ptr %aprerr, align 8, !dbg !1702, !tbaa !1704
  %26 = load ptr, ptr %sr__, align 8, !dbg !1702, !tbaa !1140
  %27 = load ptr, ptr %err, align 8, !dbg !1702, !tbaa !1140
  %desc = getelementptr inbounds %struct.dav_error, ptr %27, i32 0, i32 2, !dbg !1702
  %28 = load ptr, ptr %desc, align 8, !dbg !1702, !tbaa !1706
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_error_(ptr noundef @.str.3, i32 noundef 534, i32 noundef %cond, i32 noundef 4, i32 noundef %25, ptr noundef %26, ptr noundef @.str.9, ptr noundef %28), !dbg !1702
  call void @llvm.lifetime.end.p0(i64 8, ptr %sr__) #10, !dbg !1700
  br label %do.cond, !dbg !1701

do.cond:                                          ; preds = %cond.end
  br label %do.end, !dbg !1701

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !1701

if.end:                                           ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %err) #10, !dbg !1707
  call void @llvm.lifetime.end.p0(i64 16, ptr %value) #10, !dbg !1707
  call void @llvm.lifetime.end.p0(i64 16, ptr %key) #10, !dbg !1707
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #10, !dbg !1707
  br label %if.end10, !dbg !1708

if.end10:                                         ; preds = %if.end, %entry
  %29 = load ptr, ptr %db.addr, align 8, !dbg !1709, !tbaa !1140
  call void @dav_dbm_close(ptr noundef %29), !dbg !1710
  ret void, !dbg !1711
}

; Function Attrs: nounwind uwtable
define internal ptr @dav_propdb_define_namespaces(ptr noundef %db, ptr noundef %xi) #0 !dbg !1712 {
entry:
  %db.addr = alloca ptr, align 8
  %xi.addr = alloca ptr, align 8
  %ns = alloca i32, align 4
  %uri = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !1714, metadata !DIExpression()), !dbg !1718
  store ptr %xi, ptr %xi.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %xi.addr, metadata !1715, metadata !DIExpression()), !dbg !1719
  call void @llvm.lifetime.start.p0(i64 4, ptr %ns) #10, !dbg !1720
  tail call void @llvm.dbg.declare(metadata ptr %ns, metadata !1716, metadata !DIExpression()), !dbg !1721
  call void @llvm.lifetime.start.p0(i64 8, ptr %uri) #10, !dbg !1722
  tail call void @llvm.dbg.declare(metadata ptr %uri, metadata !1717, metadata !DIExpression()), !dbg !1723
  %0 = load ptr, ptr %db.addr, align 8, !dbg !1724, !tbaa !1140
  %ns_table = getelementptr inbounds %struct.dav_db, ptr %0, i32 0, i32 3, !dbg !1725
  %buf = getelementptr inbounds %struct.dav_buffer, ptr %ns_table, i32 0, i32 2, !dbg !1726
  %1 = load ptr, ptr %buf, align 8, !dbg !1726, !tbaa !1551
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 4, !dbg !1727
  store ptr %add.ptr, ptr %uri, align 8, !dbg !1723, !tbaa !1140
  store i32 0, ptr %ns, align 4, !dbg !1728, !tbaa !1198
  br label %for.cond, !dbg !1730

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %ns, align 4, !dbg !1731, !tbaa !1198
  %3 = load ptr, ptr %db.addr, align 8, !dbg !1733, !tbaa !1140
  %ns_count = getelementptr inbounds %struct.dav_db, ptr %3, i32 0, i32 4, !dbg !1734
  %4 = load i16, ptr %ns_count, align 8, !dbg !1734, !tbaa !1599
  %conv = sext i16 %4 to i32, !dbg !1733
  %cmp = icmp slt i32 %2, %conv, !dbg !1735
  br i1 %cmp, label %for.body, label %for.end, !dbg !1736

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %uri, align 8, !dbg !1737, !tbaa !1140
  %6 = load i8, ptr %5, align 1, !dbg !1740, !tbaa !1741
  %conv2 = sext i8 %6 to i32, !dbg !1740
  %cmp3 = icmp eq i32 %conv2, 0, !dbg !1742
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1743

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !1744

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %xi.addr, align 8, !dbg !1745, !tbaa !1140
  %8 = load ptr, ptr %xi.addr, align 8, !dbg !1746, !tbaa !1140
  %pool = getelementptr inbounds %struct.dav_xmlns_info, ptr %8, i32 0, i32 0, !dbg !1747
  %9 = load ptr, ptr %pool, align 8, !dbg !1747, !tbaa !1748
  %10 = load i32, ptr %ns, align 4, !dbg !1750, !tbaa !1198
  %call = call ptr (ptr, ptr, ...) @apr_psprintf(ptr noundef %9, ptr noundef @.str.10, i32 noundef %10), !dbg !1751
  %11 = load ptr, ptr %xi.addr, align 8, !dbg !1752, !tbaa !1140
  %pool5 = getelementptr inbounds %struct.dav_xmlns_info, ptr %11, i32 0, i32 0, !dbg !1753
  %12 = load ptr, ptr %pool5, align 8, !dbg !1753, !tbaa !1748
  %13 = load ptr, ptr %uri, align 8, !dbg !1754, !tbaa !1140
  %call6 = call ptr @apr_pstrdup(ptr noundef %12, ptr noundef %13), !dbg !1755
  call void @dav_xmlns_add(ptr noundef %7, ptr noundef %call, ptr noundef %call6), !dbg !1756
  br label %for.inc, !dbg !1757

for.inc:                                          ; preds = %if.end, %if.then
  %14 = load i32, ptr %ns, align 4, !dbg !1758, !tbaa !1198
  %inc = add nsw i32 %14, 1, !dbg !1758
  store i32 %inc, ptr %ns, align 4, !dbg !1758, !tbaa !1198
  %15 = load ptr, ptr %uri, align 8, !dbg !1759, !tbaa !1140
  %call7 = call i64 @strlen(ptr noundef %15) #11, !dbg !1760
  %add = add i64 %call7, 1, !dbg !1761
  %16 = load ptr, ptr %uri, align 8, !dbg !1762, !tbaa !1140
  %add.ptr8 = getelementptr inbounds i8, ptr %16, i64 %add, !dbg !1762
  store ptr %add.ptr8, ptr %uri, align 8, !dbg !1762, !tbaa !1140
  br label %for.cond, !dbg !1763, !llvm.loop !1764

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %uri) #10, !dbg !1766
  call void @llvm.lifetime.end.p0(i64 4, ptr %ns) #10, !dbg !1766
  ret ptr null, !dbg !1767
}

; Function Attrs: nounwind uwtable
define internal ptr @dav_propdb_output_value(ptr noundef %db, ptr noundef %name, ptr noundef %xi, ptr noundef %phdr, ptr noundef %found) #0 !dbg !1768 {
entry:
  %retval = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %xi.addr = alloca ptr, align 8
  %phdr.addr = alloca ptr, align 8
  %found.addr = alloca ptr, align 8
  %key = alloca %struct.apr_datum_t, align 8
  %value = alloca %struct.apr_datum_t, align 8
  %err = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !1770, metadata !DIExpression()), !dbg !1778
  store ptr %name, ptr %name.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1771, metadata !DIExpression()), !dbg !1779
  store ptr %xi, ptr %xi.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %xi.addr, metadata !1772, metadata !DIExpression()), !dbg !1780
  store ptr %phdr, ptr %phdr.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %phdr.addr, metadata !1773, metadata !DIExpression()), !dbg !1781
  store ptr %found, ptr %found.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %found.addr, metadata !1774, metadata !DIExpression()), !dbg !1782
  call void @llvm.lifetime.start.p0(i64 16, ptr %key) #10, !dbg !1783
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !1775, metadata !DIExpression()), !dbg !1784
  %0 = load ptr, ptr %db.addr, align 8, !dbg !1785, !tbaa !1140
  %1 = load ptr, ptr %name.addr, align 8, !dbg !1786, !tbaa !1140
  %call = call { ptr, i64 } @dav_build_key(ptr noundef %0, ptr noundef %1), !dbg !1787
  %2 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 0, !dbg !1787
  %3 = extractvalue { ptr, i64 } %call, 0, !dbg !1787
  store ptr %3, ptr %2, align 8, !dbg !1787
  %4 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 1, !dbg !1787
  %5 = extractvalue { ptr, i64 } %call, 1, !dbg !1787
  store i64 %5, ptr %4, align 8, !dbg !1787
  call void @llvm.lifetime.start.p0(i64 16, ptr %value) #10, !dbg !1788
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !1776, metadata !DIExpression()), !dbg !1789
  call void @llvm.lifetime.start.p0(i64 8, ptr %err) #10, !dbg !1790
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1777, metadata !DIExpression()), !dbg !1791
  %6 = load ptr, ptr %db.addr, align 8, !dbg !1792, !tbaa !1140
  %7 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 0, !dbg !1794
  %8 = load ptr, ptr %7, align 8, !dbg !1794
  %9 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 1, !dbg !1794
  %10 = load i64, ptr %9, align 8, !dbg !1794
  %call1 = call ptr @dav_dbm_fetch(ptr noundef %6, ptr %8, i64 %10, ptr noundef %value), !dbg !1794
  store ptr %call1, ptr %err, align 8, !dbg !1795, !tbaa !1140
  %cmp = icmp ne ptr %call1, null, !dbg !1796
  br i1 %cmp, label %if.then, label %if.end, !dbg !1797

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %err, align 8, !dbg !1798, !tbaa !1140
  store ptr %11, ptr %retval, align 8, !dbg !1799
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1799

if.end:                                           ; preds = %entry
  %dptr = getelementptr inbounds %struct.apr_datum_t, ptr %value, i32 0, i32 0, !dbg !1800
  %12 = load ptr, ptr %dptr, align 8, !dbg !1800, !tbaa !1357
  %cmp2 = icmp eq ptr %12, null, !dbg !1802
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1803

if.then3:                                         ; preds = %if.end
  %13 = load ptr, ptr %found.addr, align 8, !dbg !1804, !tbaa !1140
  store i32 0, ptr %13, align 4, !dbg !1806, !tbaa !1198
  store ptr null, ptr %retval, align 8, !dbg !1807
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1807

if.end4:                                          ; preds = %if.end
  %14 = load ptr, ptr %found.addr, align 8, !dbg !1808, !tbaa !1140
  store i32 1, ptr %14, align 4, !dbg !1809, !tbaa !1198
  %15 = load ptr, ptr %db.addr, align 8, !dbg !1810, !tbaa !1140
  %pool = getelementptr inbounds %struct.dav_db, ptr %15, i32 0, i32 0, !dbg !1811
  %16 = load ptr, ptr %pool, align 8, !dbg !1811, !tbaa !1236
  %dptr5 = getelementptr inbounds %struct.apr_datum_t, ptr %key, i32 0, i32 0, !dbg !1812
  %17 = load ptr, ptr %dptr5, align 8, !dbg !1812, !tbaa !1357
  %dptr6 = getelementptr inbounds %struct.apr_datum_t, ptr %value, i32 0, i32 0, !dbg !1813
  %18 = load ptr, ptr %dptr6, align 8, !dbg !1813, !tbaa !1357
  %19 = load ptr, ptr %phdr.addr, align 8, !dbg !1814, !tbaa !1140
  call void @dav_append_prop(ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19), !dbg !1815
  %20 = load ptr, ptr %db.addr, align 8, !dbg !1816, !tbaa !1140
  %21 = getelementptr inbounds { ptr, i64 }, ptr %value, i32 0, i32 0, !dbg !1817
  %22 = load ptr, ptr %21, align 8, !dbg !1817
  %23 = getelementptr inbounds { ptr, i64 }, ptr %value, i32 0, i32 1, !dbg !1817
  %24 = load i64, ptr %23, align 8, !dbg !1817
  call void @dav_dbm_freedatum(ptr noundef %20, ptr %22, i64 %24), !dbg !1817
  store ptr null, ptr %retval, align 8, !dbg !1818
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1818

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %err) #10, !dbg !1819
  call void @llvm.lifetime.end.p0(i64 16, ptr %value) #10, !dbg !1819
  call void @llvm.lifetime.end.p0(i64 16, ptr %key) #10, !dbg !1819
  %25 = load ptr, ptr %retval, align 8, !dbg !1819
  ret ptr %25, !dbg !1819
}

; Function Attrs: nounwind uwtable
define internal ptr @dav_propdb_map_namespaces(ptr noundef %db, ptr noundef %namespaces, ptr noundef %mapping) #0 !dbg !1820 {
entry:
  %db.addr = alloca ptr, align 8
  %namespaces.addr = alloca ptr, align 8
  %mapping.addr = alloca ptr, align 8
  %m = alloca ptr, align 8
  %i = alloca i32, align 4
  %pmap = alloca ptr, align 8
  %puri = alloca ptr, align 8
  %uri = alloca ptr, align 8
  %uri_len = alloca i64, align 8
  %ns_id = alloca i64, align 8
  store ptr %db, ptr %db.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !1822, metadata !DIExpression()), !dbg !1835
  store ptr %namespaces, ptr %namespaces.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %namespaces.addr, metadata !1823, metadata !DIExpression()), !dbg !1836
  store ptr %mapping, ptr %mapping.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %mapping.addr, metadata !1824, metadata !DIExpression()), !dbg !1837
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #10, !dbg !1838
  tail call void @llvm.dbg.declare(metadata ptr %m, metadata !1825, metadata !DIExpression()), !dbg !1839
  %0 = load ptr, ptr %db.addr, align 8, !dbg !1840, !tbaa !1140
  %pool = getelementptr inbounds %struct.dav_db, ptr %0, i32 0, i32 0, !dbg !1841
  %1 = load ptr, ptr %pool, align 8, !dbg !1841, !tbaa !1236
  %call = call ptr @apr_palloc(ptr noundef %1, i64 noundef 8), !dbg !1842
  store ptr %call, ptr %m, align 8, !dbg !1839, !tbaa !1140
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !1843
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1826, metadata !DIExpression()), !dbg !1844
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmap) #10, !dbg !1845
  tail call void @llvm.dbg.declare(metadata ptr %pmap, metadata !1827, metadata !DIExpression()), !dbg !1846
  call void @llvm.lifetime.start.p0(i64 8, ptr %puri) #10, !dbg !1847
  tail call void @llvm.dbg.declare(metadata ptr %puri, metadata !1828, metadata !DIExpression()), !dbg !1848
  %2 = load ptr, ptr %db.addr, align 8, !dbg !1849, !tbaa !1140
  %pool1 = getelementptr inbounds %struct.dav_db, ptr %2, i32 0, i32 0, !dbg !1850
  %3 = load ptr, ptr %pool1, align 8, !dbg !1850, !tbaa !1236
  %4 = load ptr, ptr %namespaces.addr, align 8, !dbg !1851, !tbaa !1140
  %nelts = getelementptr inbounds %struct.apr_array_header_t, ptr %4, i32 0, i32 2, !dbg !1852
  %5 = load i32, ptr %nelts, align 4, !dbg !1852, !tbaa !1853
  %conv = sext i32 %5 to i64, !dbg !1851
  %mul = mul i64 %conv, 4, !dbg !1855
  %call2 = call ptr @apr_palloc(ptr noundef %3, i64 noundef %mul), !dbg !1856
  store ptr %call2, ptr %pmap, align 8, !dbg !1857, !tbaa !1140
  %6 = load ptr, ptr %m, align 8, !dbg !1858, !tbaa !1140
  %ns_map = getelementptr inbounds %struct.dav_namespace_map, ptr %6, i32 0, i32 0, !dbg !1859
  store ptr %call2, ptr %ns_map, align 8, !dbg !1860, !tbaa !1861
  %7 = load ptr, ptr %namespaces.addr, align 8, !dbg !1863, !tbaa !1140
  %nelts3 = getelementptr inbounds %struct.apr_array_header_t, ptr %7, i32 0, i32 2, !dbg !1864
  %8 = load i32, ptr %nelts3, align 4, !dbg !1864, !tbaa !1853
  store i32 %8, ptr %i, align 4, !dbg !1865, !tbaa !1198
  %9 = load ptr, ptr %namespaces.addr, align 8, !dbg !1866, !tbaa !1140
  %elts = getelementptr inbounds %struct.apr_array_header_t, ptr %9, i32 0, i32 4, !dbg !1867
  %10 = load ptr, ptr %elts, align 8, !dbg !1867, !tbaa !1868
  store ptr %10, ptr %puri, align 8, !dbg !1869, !tbaa !1140
  br label %for.cond, !dbg !1870

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, ptr %i, align 4, !dbg !1871, !tbaa !1198
  %dec = add nsw i32 %11, -1, !dbg !1871
  store i32 %dec, ptr %i, align 4, !dbg !1871, !tbaa !1198
  %cmp = icmp sgt i32 %11, 0, !dbg !1872
  br i1 %cmp, label %for.body, label %for.end, !dbg !1873

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %uri) #10, !dbg !1874
  tail call void @llvm.dbg.declare(metadata ptr %uri, metadata !1829, metadata !DIExpression()), !dbg !1875
  %12 = load ptr, ptr %puri, align 8, !dbg !1876, !tbaa !1140
  %13 = load ptr, ptr %12, align 8, !dbg !1877, !tbaa !1140
  store ptr %13, ptr %uri, align 8, !dbg !1875, !tbaa !1140
  call void @llvm.lifetime.start.p0(i64 8, ptr %uri_len) #10, !dbg !1878
  tail call void @llvm.dbg.declare(metadata ptr %uri_len, metadata !1833, metadata !DIExpression()), !dbg !1879
  %14 = load ptr, ptr %uri, align 8, !dbg !1880, !tbaa !1140
  %call5 = call i64 @strlen(ptr noundef %14) #11, !dbg !1881
  store i64 %call5, ptr %uri_len, align 8, !dbg !1879, !tbaa !1604
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns_id) #10, !dbg !1882
  tail call void @llvm.dbg.declare(metadata ptr %ns_id, metadata !1834, metadata !DIExpression()), !dbg !1883
  %15 = load ptr, ptr %db.addr, align 8, !dbg !1884, !tbaa !1140
  %uri_index = getelementptr inbounds %struct.dav_db, ptr %15, i32 0, i32 6, !dbg !1885
  %16 = load ptr, ptr %uri_index, align 8, !dbg !1885, !tbaa !1510
  %17 = load ptr, ptr %uri, align 8, !dbg !1886, !tbaa !1140
  %18 = load i64, ptr %uri_len, align 8, !dbg !1887, !tbaa !1604
  %call6 = call ptr @apr_hash_get(ptr noundef %16, ptr noundef %17, i64 noundef %18), !dbg !1888
  %19 = ptrtoint ptr %call6 to i64, !dbg !1889
  store i64 %19, ptr %ns_id, align 8, !dbg !1883, !tbaa !1604
  %20 = load i64, ptr %ns_id, align 8, !dbg !1890, !tbaa !1604
  %cmp7 = icmp eq i64 %20, 0, !dbg !1892
  br i1 %cmp7, label %if.then, label %if.else, !dbg !1893

if.then:                                          ; preds = %for.body
  %21 = load ptr, ptr %db.addr, align 8, !dbg !1894, !tbaa !1140
  %pool9 = getelementptr inbounds %struct.dav_db, ptr %21, i32 0, i32 0, !dbg !1896
  %22 = load ptr, ptr %pool9, align 8, !dbg !1896, !tbaa !1236
  %23 = load ptr, ptr %db.addr, align 8, !dbg !1897, !tbaa !1140
  %ns_table = getelementptr inbounds %struct.dav_db, ptr %23, i32 0, i32 3, !dbg !1898
  %24 = load i64, ptr %uri_len, align 8, !dbg !1899, !tbaa !1604
  %add = add i64 %24, 1, !dbg !1900
  call void @dav_check_bufsize(ptr noundef %22, ptr noundef %ns_table, i64 noundef %add), !dbg !1901
  %25 = load ptr, ptr %db.addr, align 8, !dbg !1902, !tbaa !1140
  %ns_table10 = getelementptr inbounds %struct.dav_db, ptr %25, i32 0, i32 3, !dbg !1903
  %buf = getelementptr inbounds %struct.dav_buffer, ptr %ns_table10, i32 0, i32 2, !dbg !1904
  %26 = load ptr, ptr %buf, align 8, !dbg !1904, !tbaa !1551
  %27 = load ptr, ptr %db.addr, align 8, !dbg !1905, !tbaa !1140
  %ns_table11 = getelementptr inbounds %struct.dav_db, ptr %27, i32 0, i32 3, !dbg !1906
  %cur_len = getelementptr inbounds %struct.dav_buffer, ptr %ns_table11, i32 0, i32 1, !dbg !1907
  %28 = load i64, ptr %cur_len, align 8, !dbg !1907, !tbaa !1678
  %add.ptr = getelementptr inbounds i8, ptr %26, i64 %28, !dbg !1908
  %29 = load ptr, ptr %uri, align 8, !dbg !1909, !tbaa !1140
  %30 = load i64, ptr %uri_len, align 8, !dbg !1910, !tbaa !1604
  %add12 = add i64 %30, 1, !dbg !1911
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %29, i64 %add12, i1 false), !dbg !1912
  %31 = load i64, ptr %uri_len, align 8, !dbg !1913, !tbaa !1604
  %add13 = add i64 %31, 1, !dbg !1914
  %32 = load ptr, ptr %db.addr, align 8, !dbg !1915, !tbaa !1140
  %ns_table14 = getelementptr inbounds %struct.dav_db, ptr %32, i32 0, i32 3, !dbg !1916
  %cur_len15 = getelementptr inbounds %struct.dav_buffer, ptr %ns_table14, i32 0, i32 1, !dbg !1917
  %33 = load i64, ptr %cur_len15, align 8, !dbg !1918, !tbaa !1678
  %add16 = add i64 %33, %add13, !dbg !1918
  store i64 %add16, ptr %cur_len15, align 8, !dbg !1918, !tbaa !1678
  %34 = load ptr, ptr %db.addr, align 8, !dbg !1919, !tbaa !1140
  %uri_index17 = getelementptr inbounds %struct.dav_db, ptr %34, i32 0, i32 6, !dbg !1920
  %35 = load ptr, ptr %uri_index17, align 8, !dbg !1920, !tbaa !1510
  %36 = load ptr, ptr %db.addr, align 8, !dbg !1921, !tbaa !1140
  %pool18 = getelementptr inbounds %struct.dav_db, ptr %36, i32 0, i32 0, !dbg !1922
  %37 = load ptr, ptr %pool18, align 8, !dbg !1922, !tbaa !1236
  %38 = load ptr, ptr %uri, align 8, !dbg !1923, !tbaa !1140
  %call19 = call ptr @apr_pstrdup(ptr noundef %37, ptr noundef %38), !dbg !1924
  %39 = load i64, ptr %uri_len, align 8, !dbg !1925, !tbaa !1604
  %40 = load ptr, ptr %db.addr, align 8, !dbg !1926, !tbaa !1140
  %ns_count = getelementptr inbounds %struct.dav_db, ptr %40, i32 0, i32 4, !dbg !1927
  %41 = load i16, ptr %ns_count, align 8, !dbg !1927, !tbaa !1599
  %conv20 = sext i16 %41 to i32, !dbg !1926
  %add21 = add nsw i32 %conv20, 1, !dbg !1928
  %conv22 = sext i32 %add21 to i64, !dbg !1929
  %42 = inttoptr i64 %conv22 to ptr, !dbg !1930
  call void @apr_hash_set(ptr noundef %35, ptr noundef %call19, i64 noundef %39, ptr noundef %42), !dbg !1931
  %43 = load ptr, ptr %db.addr, align 8, !dbg !1932, !tbaa !1140
  %ns_table_dirty = getelementptr inbounds %struct.dav_db, ptr %43, i32 0, i32 5, !dbg !1933
  store i32 1, ptr %ns_table_dirty, align 4, !dbg !1934, !tbaa !1656
  %44 = load ptr, ptr %db.addr, align 8, !dbg !1935, !tbaa !1140
  %ns_count23 = getelementptr inbounds %struct.dav_db, ptr %44, i32 0, i32 4, !dbg !1936
  %45 = load i16, ptr %ns_count23, align 8, !dbg !1937, !tbaa !1599
  %inc = add i16 %45, 1, !dbg !1937
  store i16 %inc, ptr %ns_count23, align 8, !dbg !1937, !tbaa !1599
  %conv24 = sext i16 %45 to i32, !dbg !1935
  %46 = load ptr, ptr %pmap, align 8, !dbg !1938, !tbaa !1140
  store i32 %conv24, ptr %46, align 4, !dbg !1939, !tbaa !1198
  br label %if.end, !dbg !1940

if.else:                                          ; preds = %for.body
  %47 = load i64, ptr %ns_id, align 8, !dbg !1941, !tbaa !1604
  %sub = sub nsw i64 %47, 1, !dbg !1943
  %conv25 = trunc i64 %sub to i32, !dbg !1941
  %48 = load ptr, ptr %pmap, align 8, !dbg !1944, !tbaa !1140
  store i32 %conv25, ptr %48, align 4, !dbg !1945, !tbaa !1198
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns_id) #10, !dbg !1946
  call void @llvm.lifetime.end.p0(i64 8, ptr %uri_len) #10, !dbg !1946
  call void @llvm.lifetime.end.p0(i64 8, ptr %uri) #10, !dbg !1946
  br label %for.inc, !dbg !1947

for.inc:                                          ; preds = %if.end
  %49 = load ptr, ptr %puri, align 8, !dbg !1948, !tbaa !1140
  %incdec.ptr = getelementptr inbounds ptr, ptr %49, i32 1, !dbg !1948
  store ptr %incdec.ptr, ptr %puri, align 8, !dbg !1948, !tbaa !1140
  %50 = load ptr, ptr %pmap, align 8, !dbg !1949, !tbaa !1140
  %incdec.ptr26 = getelementptr inbounds i32, ptr %50, i32 1, !dbg !1949
  store ptr %incdec.ptr26, ptr %pmap, align 8, !dbg !1949, !tbaa !1140
  br label %for.cond, !dbg !1950, !llvm.loop !1951

for.end:                                          ; preds = %for.cond
  %51 = load ptr, ptr %m, align 8, !dbg !1953, !tbaa !1140
  %52 = load ptr, ptr %mapping.addr, align 8, !dbg !1954, !tbaa !1140
  store ptr %51, ptr %52, align 8, !dbg !1955, !tbaa !1140
  call void @llvm.lifetime.end.p0(i64 8, ptr %puri) #10, !dbg !1956
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmap) #10, !dbg !1956
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !1956
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #10, !dbg !1956
  ret ptr null, !dbg !1957
}

; Function Attrs: nounwind uwtable
define internal ptr @dav_propdb_store(ptr noundef %db, ptr noundef %name, ptr noundef %elem, ptr noundef %mapping) #0 !dbg !1958 {
entry:
  %db.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %elem.addr = alloca ptr, align 8
  %mapping.addr = alloca ptr, align 8
  %key = alloca %struct.apr_datum_t, align 8
  %value = alloca %struct.apr_datum_t, align 8
  store ptr %db, ptr %db.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !1960, metadata !DIExpression()), !dbg !1966
  store ptr %name, ptr %name.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1961, metadata !DIExpression()), !dbg !1967
  store ptr %elem, ptr %elem.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %elem.addr, metadata !1962, metadata !DIExpression()), !dbg !1968
  store ptr %mapping, ptr %mapping.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %mapping.addr, metadata !1963, metadata !DIExpression()), !dbg !1969
  call void @llvm.lifetime.start.p0(i64 16, ptr %key) #10, !dbg !1970
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !1964, metadata !DIExpression()), !dbg !1971
  %0 = load ptr, ptr %db.addr, align 8, !dbg !1972, !tbaa !1140
  %1 = load ptr, ptr %name.addr, align 8, !dbg !1973, !tbaa !1140
  %call = call { ptr, i64 } @dav_build_key(ptr noundef %0, ptr noundef %1), !dbg !1974
  %2 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 0, !dbg !1974
  %3 = extractvalue { ptr, i64 } %call, 0, !dbg !1974
  store ptr %3, ptr %2, align 8, !dbg !1974
  %4 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 1, !dbg !1974
  %5 = extractvalue { ptr, i64 } %call, 1, !dbg !1974
  store i64 %5, ptr %4, align 8, !dbg !1974
  call void @llvm.lifetime.start.p0(i64 16, ptr %value) #10, !dbg !1975
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !1965, metadata !DIExpression()), !dbg !1976
  %6 = load ptr, ptr %db.addr, align 8, !dbg !1977, !tbaa !1140
  %pool = getelementptr inbounds %struct.dav_db, ptr %6, i32 0, i32 0, !dbg !1978
  %7 = load ptr, ptr %pool, align 8, !dbg !1978, !tbaa !1236
  %8 = load ptr, ptr %elem.addr, align 8, !dbg !1979, !tbaa !1140
  call void @apr_xml_quote_elem(ptr noundef %7, ptr noundef %8), !dbg !1980
  %9 = load ptr, ptr %db.addr, align 8, !dbg !1981, !tbaa !1140
  %pool1 = getelementptr inbounds %struct.dav_db, ptr %9, i32 0, i32 0, !dbg !1982
  %10 = load ptr, ptr %pool1, align 8, !dbg !1982, !tbaa !1236
  %11 = load ptr, ptr %elem.addr, align 8, !dbg !1983, !tbaa !1140
  %12 = load ptr, ptr %mapping.addr, align 8, !dbg !1984, !tbaa !1140
  %ns_map = getelementptr inbounds %struct.dav_namespace_map, ptr %12, i32 0, i32 0, !dbg !1985
  %13 = load ptr, ptr %ns_map, align 8, !dbg !1985, !tbaa !1861
  %dptr = getelementptr inbounds %struct.apr_datum_t, ptr %value, i32 0, i32 0, !dbg !1986
  %dsize = getelementptr inbounds %struct.apr_datum_t, ptr %value, i32 0, i32 1, !dbg !1987
  call void @apr_xml_to_text(ptr noundef %10, ptr noundef %11, i32 noundef 2, ptr noundef null, ptr noundef %13, ptr noundef %dptr, ptr noundef %dsize), !dbg !1988
  %14 = load ptr, ptr %db.addr, align 8, !dbg !1989, !tbaa !1140
  %15 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 0, !dbg !1990
  %16 = load ptr, ptr %15, align 8, !dbg !1990
  %17 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 1, !dbg !1990
  %18 = load i64, ptr %17, align 8, !dbg !1990
  %19 = getelementptr inbounds { ptr, i64 }, ptr %value, i32 0, i32 0, !dbg !1990
  %20 = load ptr, ptr %19, align 8, !dbg !1990
  %21 = getelementptr inbounds { ptr, i64 }, ptr %value, i32 0, i32 1, !dbg !1990
  %22 = load i64, ptr %21, align 8, !dbg !1990
  %call2 = call ptr @dav_dbm_store(ptr noundef %14, ptr %16, i64 %18, ptr %20, i64 %22), !dbg !1990
  call void @llvm.lifetime.end.p0(i64 16, ptr %value) #10, !dbg !1991
  call void @llvm.lifetime.end.p0(i64 16, ptr %key) #10, !dbg !1991
  ret ptr %call2, !dbg !1992
}

; Function Attrs: nounwind uwtable
define internal ptr @dav_propdb_remove(ptr noundef %db, ptr noundef %name) #0 !dbg !1993 {
entry:
  %db.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %key = alloca %struct.apr_datum_t, align 8
  store ptr %db, ptr %db.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !1995, metadata !DIExpression()), !dbg !1998
  store ptr %name, ptr %name.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1996, metadata !DIExpression()), !dbg !1999
  call void @llvm.lifetime.start.p0(i64 16, ptr %key) #10, !dbg !2000
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !1997, metadata !DIExpression()), !dbg !2001
  %0 = load ptr, ptr %db.addr, align 8, !dbg !2002, !tbaa !1140
  %1 = load ptr, ptr %name.addr, align 8, !dbg !2003, !tbaa !1140
  %call = call { ptr, i64 } @dav_build_key(ptr noundef %0, ptr noundef %1), !dbg !2004
  %2 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 0, !dbg !2004
  %3 = extractvalue { ptr, i64 } %call, 0, !dbg !2004
  store ptr %3, ptr %2, align 8, !dbg !2004
  %4 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 1, !dbg !2004
  %5 = extractvalue { ptr, i64 } %call, 1, !dbg !2004
  store i64 %5, ptr %4, align 8, !dbg !2004
  %6 = load ptr, ptr %db.addr, align 8, !dbg !2005, !tbaa !1140
  %7 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 0, !dbg !2006
  %8 = load ptr, ptr %7, align 8, !dbg !2006
  %9 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 1, !dbg !2006
  %10 = load i64, ptr %9, align 8, !dbg !2006
  %call1 = call ptr @dav_dbm_delete(ptr noundef %6, ptr %8, i64 %10), !dbg !2006
  call void @llvm.lifetime.end.p0(i64 16, ptr %key) #10, !dbg !2007
  ret ptr %call1, !dbg !2008
}

; Function Attrs: nounwind uwtable
define internal i32 @dav_propdb_exists(ptr noundef %db, ptr noundef %name) #0 !dbg !2009 {
entry:
  %db.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %key = alloca %struct.apr_datum_t, align 8
  store ptr %db, ptr %db.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !2011, metadata !DIExpression()), !dbg !2014
  store ptr %name, ptr %name.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2012, metadata !DIExpression()), !dbg !2015
  call void @llvm.lifetime.start.p0(i64 16, ptr %key) #10, !dbg !2016
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !2013, metadata !DIExpression()), !dbg !2017
  %0 = load ptr, ptr %db.addr, align 8, !dbg !2018, !tbaa !1140
  %1 = load ptr, ptr %name.addr, align 8, !dbg !2019, !tbaa !1140
  %call = call { ptr, i64 } @dav_build_key(ptr noundef %0, ptr noundef %1), !dbg !2020
  %2 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 0, !dbg !2020
  %3 = extractvalue { ptr, i64 } %call, 0, !dbg !2020
  store ptr %3, ptr %2, align 8, !dbg !2020
  %4 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 1, !dbg !2020
  %5 = extractvalue { ptr, i64 } %call, 1, !dbg !2020
  store i64 %5, ptr %4, align 8, !dbg !2020
  %6 = load ptr, ptr %db.addr, align 8, !dbg !2021, !tbaa !1140
  %7 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 0, !dbg !2022
  %8 = load ptr, ptr %7, align 8, !dbg !2022
  %9 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 1, !dbg !2022
  %10 = load i64, ptr %9, align 8, !dbg !2022
  %call1 = call i32 @dav_dbm_exists(ptr noundef %6, ptr %8, i64 %10), !dbg !2022
  call void @llvm.lifetime.end.p0(i64 16, ptr %key) #10, !dbg !2023
  ret i32 %call1, !dbg !2024
}

; Function Attrs: nounwind uwtable
define internal ptr @dav_propdb_first_name(ptr noundef %db, ptr noundef %pname) #0 !dbg !2025 {
entry:
  %retval = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %pname.addr = alloca ptr, align 8
  %err = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !2027, metadata !DIExpression()), !dbg !2030
  store ptr %pname, ptr %pname.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %pname.addr, metadata !2028, metadata !DIExpression()), !dbg !2031
  call void @llvm.lifetime.start.p0(i64 8, ptr %err) #10, !dbg !2032
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !2029, metadata !DIExpression()), !dbg !2033
  %0 = load ptr, ptr %db.addr, align 8, !dbg !2034, !tbaa !1140
  %1 = load ptr, ptr %db.addr, align 8, !dbg !2036, !tbaa !1140
  %iter = getelementptr inbounds %struct.dav_db, ptr %1, i32 0, i32 8, !dbg !2037
  %call = call ptr @dav_dbm_firstkey(ptr noundef %0, ptr noundef %iter), !dbg !2038
  store ptr %call, ptr %err, align 8, !dbg !2039, !tbaa !1140
  %cmp = icmp ne ptr %call, null, !dbg !2040
  br i1 %cmp, label %if.then, label %if.end, !dbg !2041

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %err, align 8, !dbg !2042, !tbaa !1140
  store ptr %2, ptr %retval, align 8, !dbg !2043
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2043

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %db.addr, align 8, !dbg !2044, !tbaa !1140
  %iter1 = getelementptr inbounds %struct.dav_db, ptr %3, i32 0, i32 8, !dbg !2046
  %dptr = getelementptr inbounds %struct.apr_datum_t, ptr %iter1, i32 0, i32 0, !dbg !2047
  %4 = load ptr, ptr %dptr, align 8, !dbg !2047, !tbaa !2048
  %cmp2 = icmp ne ptr %4, null, !dbg !2049
  br i1 %cmp2, label %land.lhs.true, label %if.end9, !dbg !2050

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %db.addr, align 8, !dbg !2051, !tbaa !1140
  %iter3 = getelementptr inbounds %struct.dav_db, ptr %5, i32 0, i32 8, !dbg !2052
  %dptr4 = getelementptr inbounds %struct.apr_datum_t, ptr %iter3, i32 0, i32 0, !dbg !2053
  %6 = load ptr, ptr %dptr4, align 8, !dbg !2053, !tbaa !2048
  %7 = load i8, ptr %6, align 1, !dbg !2054, !tbaa !1741
  %conv = sext i8 %7 to i32, !dbg !2054
  %cmp5 = icmp eq i32 %conv, 77, !dbg !2055
  br i1 %cmp5, label %if.then7, label %if.end9, !dbg !2056

if.then7:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %db.addr, align 8, !dbg !2057, !tbaa !1140
  %9 = load ptr, ptr %pname.addr, align 8, !dbg !2058, !tbaa !1140
  %call8 = call ptr @dav_propdb_next_name(ptr noundef %8, ptr noundef %9), !dbg !2059
  store ptr %call8, ptr %retval, align 8, !dbg !2060
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2060

if.end9:                                          ; preds = %land.lhs.true, %if.end
  %10 = load ptr, ptr %db.addr, align 8, !dbg !2061, !tbaa !1140
  %11 = load ptr, ptr %pname.addr, align 8, !dbg !2062, !tbaa !1140
  call void @dav_set_name(ptr noundef %10, ptr noundef %11), !dbg !2063
  store ptr null, ptr %retval, align 8, !dbg !2064
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2064

cleanup:                                          ; preds = %if.end9, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %err) #10, !dbg !2065
  %12 = load ptr, ptr %retval, align 8, !dbg !2065
  ret ptr %12, !dbg !2065
}

; Function Attrs: nounwind uwtable
define internal ptr @dav_propdb_next_name(ptr noundef %db, ptr noundef %pname) #0 !dbg !2066 {
entry:
  %retval = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %pname.addr = alloca ptr, align 8
  %err = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !2068, metadata !DIExpression()), !dbg !2071
  store ptr %pname, ptr %pname.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %pname.addr, metadata !2069, metadata !DIExpression()), !dbg !2072
  call void @llvm.lifetime.start.p0(i64 8, ptr %err) #10, !dbg !2073
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !2070, metadata !DIExpression()), !dbg !2074
  %0 = load ptr, ptr %db.addr, align 8, !dbg !2075, !tbaa !1140
  %iter = getelementptr inbounds %struct.dav_db, ptr %0, i32 0, i32 8, !dbg !2077
  %dptr = getelementptr inbounds %struct.apr_datum_t, ptr %iter, i32 0, i32 0, !dbg !2078
  %1 = load ptr, ptr %dptr, align 8, !dbg !2078, !tbaa !2048
  %cmp = icmp ne ptr %1, null, !dbg !2079
  br i1 %cmp, label %if.then, label %if.end, !dbg !2080

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %db.addr, align 8, !dbg !2081, !tbaa !1140
  %3 = load ptr, ptr %db.addr, align 8, !dbg !2082, !tbaa !1140
  %iter1 = getelementptr inbounds %struct.dav_db, ptr %3, i32 0, i32 8, !dbg !2083
  %4 = getelementptr inbounds { ptr, i64 }, ptr %iter1, i32 0, i32 0, !dbg !2084
  %5 = load ptr, ptr %4, align 8, !dbg !2084
  %6 = getelementptr inbounds { ptr, i64 }, ptr %iter1, i32 0, i32 1, !dbg !2084
  %7 = load i64, ptr %6, align 8, !dbg !2084
  call void @dav_dbm_freedatum(ptr noundef %2, ptr %5, i64 %7), !dbg !2084
  br label %if.end, !dbg !2084

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %db.addr, align 8, !dbg !2085, !tbaa !1140
  %9 = load ptr, ptr %db.addr, align 8, !dbg !2087, !tbaa !1140
  %iter2 = getelementptr inbounds %struct.dav_db, ptr %9, i32 0, i32 8, !dbg !2088
  %call = call ptr @dav_dbm_nextkey(ptr noundef %8, ptr noundef %iter2), !dbg !2089
  store ptr %call, ptr %err, align 8, !dbg !2090, !tbaa !1140
  %cmp3 = icmp ne ptr %call, null, !dbg !2091
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2092

if.then4:                                         ; preds = %if.end
  %10 = load ptr, ptr %err, align 8, !dbg !2093, !tbaa !1140
  store ptr %10, ptr %retval, align 8, !dbg !2094
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2094

if.end5:                                          ; preds = %if.end
  %11 = load ptr, ptr %db.addr, align 8, !dbg !2095, !tbaa !1140
  %iter6 = getelementptr inbounds %struct.dav_db, ptr %11, i32 0, i32 8, !dbg !2097
  %dptr7 = getelementptr inbounds %struct.apr_datum_t, ptr %iter6, i32 0, i32 0, !dbg !2098
  %12 = load ptr, ptr %dptr7, align 8, !dbg !2098, !tbaa !2048
  %cmp8 = icmp ne ptr %12, null, !dbg !2099
  br i1 %cmp8, label %land.lhs.true, label %if.end15, !dbg !2100

land.lhs.true:                                    ; preds = %if.end5
  %13 = load ptr, ptr %db.addr, align 8, !dbg !2101, !tbaa !1140
  %iter9 = getelementptr inbounds %struct.dav_db, ptr %13, i32 0, i32 8, !dbg !2102
  %dptr10 = getelementptr inbounds %struct.apr_datum_t, ptr %iter9, i32 0, i32 0, !dbg !2103
  %14 = load ptr, ptr %dptr10, align 8, !dbg !2103, !tbaa !2048
  %15 = load i8, ptr %14, align 1, !dbg !2104, !tbaa !1741
  %conv = sext i8 %15 to i32, !dbg !2104
  %cmp11 = icmp eq i32 %conv, 77, !dbg !2105
  br i1 %cmp11, label %if.then13, label %if.end15, !dbg !2106

if.then13:                                        ; preds = %land.lhs.true
  %16 = load ptr, ptr %db.addr, align 8, !dbg !2107, !tbaa !1140
  %17 = load ptr, ptr %pname.addr, align 8, !dbg !2108, !tbaa !1140
  %call14 = call ptr @dav_propdb_next_name(ptr noundef %16, ptr noundef %17), !dbg !2109
  store ptr %call14, ptr %retval, align 8, !dbg !2110
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2110

if.end15:                                         ; preds = %land.lhs.true, %if.end5
  %18 = load ptr, ptr %db.addr, align 8, !dbg !2111, !tbaa !1140
  %19 = load ptr, ptr %pname.addr, align 8, !dbg !2112, !tbaa !1140
  call void @dav_set_name(ptr noundef %18, ptr noundef %19), !dbg !2113
  store ptr null, ptr %retval, align 8, !dbg !2114
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2114

cleanup:                                          ; preds = %if.end15, %if.then13, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %err) #10, !dbg !2115
  %20 = load ptr, ptr %retval, align 8, !dbg !2115
  ret ptr %20, !dbg !2115
}

; Function Attrs: nounwind uwtable
define internal ptr @dav_propdb_get_rollback(ptr noundef %db, ptr noundef %name, ptr noundef %prollback) #0 !dbg !2116 {
entry:
  %retval = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %prollback.addr = alloca ptr, align 8
  %rb = alloca ptr, align 8
  %key = alloca %struct.apr_datum_t, align 8
  %value = alloca %struct.apr_datum_t, align 8
  %err = alloca ptr, align 8
  %tmp = alloca %struct.apr_datum_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !2118, metadata !DIExpression()), !dbg !2125
  store ptr %name, ptr %name.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2119, metadata !DIExpression()), !dbg !2126
  store ptr %prollback, ptr %prollback.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %prollback.addr, metadata !2120, metadata !DIExpression()), !dbg !2127
  call void @llvm.lifetime.start.p0(i64 8, ptr %rb) #10, !dbg !2128
  tail call void @llvm.dbg.declare(metadata ptr %rb, metadata !2121, metadata !DIExpression()), !dbg !2129
  %0 = load ptr, ptr %db.addr, align 8, !dbg !2130, !tbaa !1140
  %pool = getelementptr inbounds %struct.dav_db, ptr %0, i32 0, i32 0, !dbg !2130
  %1 = load ptr, ptr %pool, align 8, !dbg !2130, !tbaa !1236
  %call = call ptr @apr_palloc(ptr noundef %1, i64 noundef 32), !dbg !2130
  call void @llvm.memset.p0.i64(ptr align 1 %call, i8 0, i64 32, i1 false), !dbg !2130
  store ptr %call, ptr %rb, align 8, !dbg !2129, !tbaa !1140
  call void @llvm.lifetime.start.p0(i64 16, ptr %key) #10, !dbg !2131
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !2122, metadata !DIExpression()), !dbg !2132
  call void @llvm.lifetime.start.p0(i64 16, ptr %value) #10, !dbg !2133
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !2123, metadata !DIExpression()), !dbg !2134
  call void @llvm.lifetime.start.p0(i64 8, ptr %err) #10, !dbg !2135
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !2124, metadata !DIExpression()), !dbg !2136
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #10, !dbg !2137
  %2 = load ptr, ptr %db.addr, align 8, !dbg !2138, !tbaa !1140
  %3 = load ptr, ptr %name.addr, align 8, !dbg !2139, !tbaa !1140
  %call1 = call { ptr, i64 } @dav_build_key(ptr noundef %2, ptr noundef %3), !dbg !2137
  %4 = getelementptr inbounds { ptr, i64 }, ptr %tmp, i32 0, i32 0, !dbg !2137
  %5 = extractvalue { ptr, i64 } %call1, 0, !dbg !2137
  store ptr %5, ptr %4, align 8, !dbg !2137
  %6 = getelementptr inbounds { ptr, i64 }, ptr %tmp, i32 0, i32 1, !dbg !2137
  %7 = extractvalue { ptr, i64 } %call1, 1, !dbg !2137
  store i64 %7, ptr %6, align 8, !dbg !2137
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %key, ptr align 8 %tmp, i64 16, i1 false), !dbg !2137, !tbaa.struct !2140
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #10, !dbg !2137
  %8 = load ptr, ptr %db.addr, align 8, !dbg !2141, !tbaa !1140
  %pool2 = getelementptr inbounds %struct.dav_db, ptr %8, i32 0, i32 0, !dbg !2142
  %9 = load ptr, ptr %pool2, align 8, !dbg !2142, !tbaa !1236
  %dptr = getelementptr inbounds %struct.apr_datum_t, ptr %key, i32 0, i32 0, !dbg !2143
  %10 = load ptr, ptr %dptr, align 8, !dbg !2143, !tbaa !1357
  %call3 = call ptr @apr_pstrdup(ptr noundef %9, ptr noundef %10), !dbg !2144
  %11 = load ptr, ptr %rb, align 8, !dbg !2145, !tbaa !1140
  %key4 = getelementptr inbounds %struct.dav_deadprop_rollback, ptr %11, i32 0, i32 0, !dbg !2146
  %dptr5 = getelementptr inbounds %struct.apr_datum_t, ptr %key4, i32 0, i32 0, !dbg !2147
  store ptr %call3, ptr %dptr5, align 8, !dbg !2148, !tbaa !2149
  %dsize = getelementptr inbounds %struct.apr_datum_t, ptr %key, i32 0, i32 1, !dbg !2151
  %12 = load i64, ptr %dsize, align 8, !dbg !2151, !tbaa !1515
  %13 = load ptr, ptr %rb, align 8, !dbg !2152, !tbaa !1140
  %key6 = getelementptr inbounds %struct.dav_deadprop_rollback, ptr %13, i32 0, i32 0, !dbg !2153
  %dsize7 = getelementptr inbounds %struct.apr_datum_t, ptr %key6, i32 0, i32 1, !dbg !2154
  store i64 %12, ptr %dsize7, align 8, !dbg !2155, !tbaa !2156
  %14 = load ptr, ptr %db.addr, align 8, !dbg !2157, !tbaa !1140
  %15 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 0, !dbg !2159
  %16 = load ptr, ptr %15, align 8, !dbg !2159
  %17 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 1, !dbg !2159
  %18 = load i64, ptr %17, align 8, !dbg !2159
  %call8 = call ptr @dav_dbm_fetch(ptr noundef %14, ptr %16, i64 %18, ptr noundef %value), !dbg !2159
  store ptr %call8, ptr %err, align 8, !dbg !2160, !tbaa !1140
  %cmp = icmp ne ptr %call8, null, !dbg !2161
  br i1 %cmp, label %if.then, label %if.end, !dbg !2162

if.then:                                          ; preds = %entry
  %19 = load ptr, ptr %err, align 8, !dbg !2163, !tbaa !1140
  store ptr %19, ptr %retval, align 8, !dbg !2164
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2164

if.end:                                           ; preds = %entry
  %dptr9 = getelementptr inbounds %struct.apr_datum_t, ptr %value, i32 0, i32 0, !dbg !2165
  %20 = load ptr, ptr %dptr9, align 8, !dbg !2165, !tbaa !1357
  %cmp10 = icmp ne ptr %20, null, !dbg !2167
  br i1 %cmp10, label %if.then11, label %if.end21, !dbg !2168

if.then11:                                        ; preds = %if.end
  %21 = load ptr, ptr %db.addr, align 8, !dbg !2169, !tbaa !1140
  %pool12 = getelementptr inbounds %struct.dav_db, ptr %21, i32 0, i32 0, !dbg !2171
  %22 = load ptr, ptr %pool12, align 8, !dbg !2171, !tbaa !1236
  %dptr13 = getelementptr inbounds %struct.apr_datum_t, ptr %value, i32 0, i32 0, !dbg !2172
  %23 = load ptr, ptr %dptr13, align 8, !dbg !2172, !tbaa !1357
  %dsize14 = getelementptr inbounds %struct.apr_datum_t, ptr %value, i32 0, i32 1, !dbg !2173
  %24 = load i64, ptr %dsize14, align 8, !dbg !2173, !tbaa !1515
  %call15 = call ptr @apr_pmemdup(ptr noundef %22, ptr noundef %23, i64 noundef %24), !dbg !2174
  %25 = load ptr, ptr %rb, align 8, !dbg !2175, !tbaa !1140
  %value16 = getelementptr inbounds %struct.dav_deadprop_rollback, ptr %25, i32 0, i32 1, !dbg !2176
  %dptr17 = getelementptr inbounds %struct.apr_datum_t, ptr %value16, i32 0, i32 0, !dbg !2177
  store ptr %call15, ptr %dptr17, align 8, !dbg !2178, !tbaa !2179
  %dsize18 = getelementptr inbounds %struct.apr_datum_t, ptr %value, i32 0, i32 1, !dbg !2180
  %26 = load i64, ptr %dsize18, align 8, !dbg !2180, !tbaa !1515
  %27 = load ptr, ptr %rb, align 8, !dbg !2181, !tbaa !1140
  %value19 = getelementptr inbounds %struct.dav_deadprop_rollback, ptr %27, i32 0, i32 1, !dbg !2182
  %dsize20 = getelementptr inbounds %struct.apr_datum_t, ptr %value19, i32 0, i32 1, !dbg !2183
  store i64 %26, ptr %dsize20, align 8, !dbg !2184, !tbaa !2185
  br label %if.end21, !dbg !2186

if.end21:                                         ; preds = %if.then11, %if.end
  %28 = load ptr, ptr %rb, align 8, !dbg !2187, !tbaa !1140
  %29 = load ptr, ptr %prollback.addr, align 8, !dbg !2188, !tbaa !1140
  store ptr %28, ptr %29, align 8, !dbg !2189, !tbaa !1140
  store ptr null, ptr %retval, align 8, !dbg !2190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2190

cleanup:                                          ; preds = %if.end21, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %err) #10, !dbg !2191
  call void @llvm.lifetime.end.p0(i64 16, ptr %value) #10, !dbg !2191
  call void @llvm.lifetime.end.p0(i64 16, ptr %key) #10, !dbg !2191
  call void @llvm.lifetime.end.p0(i64 8, ptr %rb) #10, !dbg !2191
  %30 = load ptr, ptr %retval, align 8, !dbg !2191
  ret ptr %30, !dbg !2191
}

; Function Attrs: nounwind uwtable
define internal ptr @dav_propdb_apply_rollback(ptr noundef %db, ptr noundef %rollback) #0 !dbg !2192 {
entry:
  %retval = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %rollback.addr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !2194, metadata !DIExpression()), !dbg !2196
  store ptr %rollback, ptr %rollback.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %rollback.addr, metadata !2195, metadata !DIExpression()), !dbg !2197
  %0 = load ptr, ptr %rollback.addr, align 8, !dbg !2198, !tbaa !1140
  %tobool = icmp ne ptr %0, null, !dbg !2198
  br i1 %tobool, label %if.end, label %if.then, !dbg !2200

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2201
  br label %return, !dbg !2201

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %rollback.addr, align 8, !dbg !2203, !tbaa !1140
  %value = getelementptr inbounds %struct.dav_deadprop_rollback, ptr %1, i32 0, i32 1, !dbg !2205
  %dptr = getelementptr inbounds %struct.apr_datum_t, ptr %value, i32 0, i32 0, !dbg !2206
  %2 = load ptr, ptr %dptr, align 8, !dbg !2206, !tbaa !2179
  %cmp = icmp eq ptr %2, null, !dbg !2207
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2208

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %db.addr, align 8, !dbg !2209, !tbaa !1140
  %4 = load ptr, ptr %rollback.addr, align 8, !dbg !2211, !tbaa !1140
  %key = getelementptr inbounds %struct.dav_deadprop_rollback, ptr %4, i32 0, i32 0, !dbg !2212
  %5 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 0, !dbg !2213
  %6 = load ptr, ptr %5, align 8, !dbg !2213
  %7 = getelementptr inbounds { ptr, i64 }, ptr %key, i32 0, i32 1, !dbg !2213
  %8 = load i64, ptr %7, align 8, !dbg !2213
  %call = call ptr @dav_dbm_delete(ptr noundef %3, ptr %6, i64 %8), !dbg !2213
  store ptr null, ptr %retval, align 8, !dbg !2214
  br label %return, !dbg !2214

if.end2:                                          ; preds = %if.end
  %9 = load ptr, ptr %db.addr, align 8, !dbg !2215, !tbaa !1140
  %10 = load ptr, ptr %rollback.addr, align 8, !dbg !2216, !tbaa !1140
  %key3 = getelementptr inbounds %struct.dav_deadprop_rollback, ptr %10, i32 0, i32 0, !dbg !2217
  %11 = load ptr, ptr %rollback.addr, align 8, !dbg !2218, !tbaa !1140
  %value4 = getelementptr inbounds %struct.dav_deadprop_rollback, ptr %11, i32 0, i32 1, !dbg !2219
  %12 = getelementptr inbounds { ptr, i64 }, ptr %key3, i32 0, i32 0, !dbg !2220
  %13 = load ptr, ptr %12, align 8, !dbg !2220
  %14 = getelementptr inbounds { ptr, i64 }, ptr %key3, i32 0, i32 1, !dbg !2220
  %15 = load i64, ptr %14, align 8, !dbg !2220
  %16 = getelementptr inbounds { ptr, i64 }, ptr %value4, i32 0, i32 0, !dbg !2220
  %17 = load ptr, ptr %16, align 8, !dbg !2220
  %18 = getelementptr inbounds { ptr, i64 }, ptr %value4, i32 0, i32 1, !dbg !2220
  %19 = load i64, ptr %18, align 8, !dbg !2220
  %call5 = call ptr @dav_dbm_store(ptr noundef %9, ptr %13, i64 %15, ptr %17, i64 %19), !dbg !2220
  store ptr %call5, ptr %retval, align 8, !dbg !2221
  br label %return, !dbg !2221

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %20 = load ptr, ptr %retval, align 8, !dbg !2222
  ret ptr %20, !dbg !2222
}

declare !dbg !2223 void @ap_log_error_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) #1

declare !dbg !2227 ptr @apr_dbm_geterror(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

declare !dbg !2230 ptr @apr_pstrdup(ptr noundef, ptr noundef) #1

declare !dbg !2233 ptr @dav_new_error(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @dav_dbm_open(ptr noundef %p, ptr noundef %resource, i32 noundef %ro, ptr noundef %pdb) #0 !dbg !2236 {
entry:
  %p.addr = alloca ptr, align 8
  %resource.addr = alloca ptr, align 8
  %ro.addr = alloca i32, align 4
  %pdb.addr = alloca ptr, align 8
  %dirpath = alloca ptr, align 8
  %fname = alloca ptr, align 8
  %pathname = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2238, metadata !DIExpression()), !dbg !2245
  store ptr %resource, ptr %resource.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %resource.addr, metadata !2239, metadata !DIExpression()), !dbg !2246
  store i32 %ro, ptr %ro.addr, align 4, !tbaa !1198
  tail call void @llvm.dbg.declare(metadata ptr %ro.addr, metadata !2240, metadata !DIExpression()), !dbg !2247
  store ptr %pdb, ptr %pdb.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %pdb.addr, metadata !2241, metadata !DIExpression()), !dbg !2248
  call void @llvm.lifetime.start.p0(i64 8, ptr %dirpath) #10, !dbg !2249
  tail call void @llvm.dbg.declare(metadata ptr %dirpath, metadata !2242, metadata !DIExpression()), !dbg !2250
  call void @llvm.lifetime.start.p0(i64 8, ptr %fname) #10, !dbg !2251
  tail call void @llvm.dbg.declare(metadata ptr %fname, metadata !2243, metadata !DIExpression()), !dbg !2252
  call void @llvm.lifetime.start.p0(i64 8, ptr %pathname) #10, !dbg !2253
  tail call void @llvm.dbg.declare(metadata ptr %pathname, metadata !2244, metadata !DIExpression()), !dbg !2254
  %0 = load ptr, ptr %resource.addr, align 8, !dbg !2255, !tbaa !1140
  %call = call ptr @dav_fs_dir_file_name(ptr noundef %0, ptr noundef %dirpath, ptr noundef %fname), !dbg !2256
  %1 = load i32, ptr %ro.addr, align 4, !dbg !2257, !tbaa !1198
  %tobool = icmp ne i32 %1, 0, !dbg !2257
  br i1 %tobool, label %if.end, label %if.then, !dbg !2259

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !2260, !tbaa !1140
  %3 = load ptr, ptr %dirpath, align 8, !dbg !2262, !tbaa !1140
  call void @dav_fs_ensure_state_dir(ptr noundef %2, ptr noundef %3), !dbg !2263
  br label %if.end, !dbg !2264

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %p.addr, align 8, !dbg !2265, !tbaa !1140
  %5 = load ptr, ptr %dirpath, align 8, !dbg !2266, !tbaa !1140
  %6 = load ptr, ptr %fname, align 8, !dbg !2267, !tbaa !1140
  %tobool1 = icmp ne ptr %6, null, !dbg !2267
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !2267

cond.true:                                        ; preds = %if.end
  %7 = load ptr, ptr %fname, align 8, !dbg !2268, !tbaa !1140
  br label %cond.end, !dbg !2267

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2267

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %7, %cond.true ], [ @.str, %cond.false ], !dbg !2267
  %call2 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %4, ptr noundef %5, ptr noundef @.str.8, ptr noundef %cond, ptr noundef null), !dbg !2269
  store ptr %call2, ptr %pathname, align 8, !dbg !2270, !tbaa !1140
  %8 = load ptr, ptr %p.addr, align 8, !dbg !2271, !tbaa !1140
  %9 = load ptr, ptr %pathname, align 8, !dbg !2272, !tbaa !1140
  %10 = load i32, ptr %ro.addr, align 4, !dbg !2273, !tbaa !1198
  %11 = load ptr, ptr %pdb.addr, align 8, !dbg !2274, !tbaa !1140
  %call3 = call ptr @dav_dbm_open_direct(ptr noundef %8, ptr noundef %9, i32 noundef %10, ptr noundef %11), !dbg !2275
  call void @llvm.lifetime.end.p0(i64 8, ptr %pathname) #10, !dbg !2276
  call void @llvm.lifetime.end.p0(i64 8, ptr %fname) #10, !dbg !2276
  call void @llvm.lifetime.end.p0(i64 8, ptr %dirpath) #10, !dbg !2276
  ret ptr %call3, !dbg !2277
}

declare !dbg !2278 ptr @apr_hash_make(ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare !dbg !2281 void @dav_set_bufsize(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @__bswap_16(i16 noundef zeroext %__bsx) #5 !dbg !2285 {
entry:
  %__bsx.addr = alloca i16, align 2
  store i16 %__bsx, ptr %__bsx.addr, align 2, !tbaa !2291
  tail call void @llvm.dbg.declare(metadata ptr %__bsx.addr, metadata !2290, metadata !DIExpression()), !dbg !2292
  %0 = load i16, ptr %__bsx.addr, align 2, !dbg !2293, !tbaa !2291
  %conv = zext i16 %0 to i32, !dbg !2293
  %shr = ashr i32 %conv, 8, !dbg !2293
  %and = and i32 %shr, 255, !dbg !2293
  %1 = load i16, ptr %__bsx.addr, align 2, !dbg !2293, !tbaa !2291
  %conv1 = zext i16 %1 to i32, !dbg !2293
  %and2 = and i32 %conv1, 255, !dbg !2293
  %shl = shl i32 %and2, 8, !dbg !2293
  %or = or i32 %and, %shl, !dbg !2293
  %conv3 = trunc i32 %or to i16, !dbg !2293
  ret i16 %conv3, !dbg !2294
}

declare !dbg !2295 void @apr_hash_set(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2301 i64 @strlen(ptr noundef) #6

declare !dbg !2305 ptr @dav_fs_dir_file_name(ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !2309 void @dav_xmlns_add(ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !2312 ptr @apr_psprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
define internal { ptr, i64 } @dav_build_key(ptr noundef %db, ptr noundef %name) #0 !dbg !2315 {
entry:
  %retval = alloca %struct.apr_datum_t, align 8
  %db.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %nsbuf = alloca [20 x i8], align 16
  %l_ns = alloca i64, align 8
  %l_name = alloca i64, align 8
  %ns_id = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !2319, metadata !DIExpression()), !dbg !2331
  store ptr %name, ptr %name.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2320, metadata !DIExpression()), !dbg !2332
  call void @llvm.lifetime.start.p0(i64 20, ptr %nsbuf) #10, !dbg !2333
  tail call void @llvm.dbg.declare(metadata ptr %nsbuf, metadata !2321, metadata !DIExpression()), !dbg !2334
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_ns) #10, !dbg !2335
  tail call void @llvm.dbg.declare(metadata ptr %l_ns, metadata !2325, metadata !DIExpression()), !dbg !2336
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_name) #10, !dbg !2335
  tail call void @llvm.dbg.declare(metadata ptr %l_name, metadata !2326, metadata !DIExpression()), !dbg !2337
  %0 = load ptr, ptr %name.addr, align 8, !dbg !2338, !tbaa !1140
  %name1 = getelementptr inbounds %struct.dav_prop_name, ptr %0, i32 0, i32 1, !dbg !2339
  %1 = load ptr, ptr %name1, align 8, !dbg !2339, !tbaa !2340
  %call = call i64 @strlen(ptr noundef %1) #11, !dbg !2342
  store i64 %call, ptr %l_name, align 8, !dbg !2337, !tbaa !1604
  tail call void @llvm.dbg.declare(metadata ptr %retval, metadata !2327, metadata !DIExpression()), !dbg !2343
  call void @llvm.memset.p0.i64(ptr align 8 %retval, i8 0, i64 16, i1 false), !dbg !2343
  %2 = load ptr, ptr %name.addr, align 8, !dbg !2344, !tbaa !1140
  %ns = getelementptr inbounds %struct.dav_prop_name, ptr %2, i32 0, i32 0, !dbg !2345
  %3 = load ptr, ptr %ns, align 8, !dbg !2345, !tbaa !2346
  %4 = load i8, ptr %3, align 1, !dbg !2347, !tbaa !1741
  %conv = sext i8 %4 to i32, !dbg !2347
  %cmp = icmp eq i32 %conv, 0, !dbg !2348
  br i1 %cmp, label %if.then, label %if.else, !dbg !2349

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [20 x i8], ptr %nsbuf, i64 0, i64 0, !dbg !2350
  store i8 0, ptr %arrayidx, align 16, !dbg !2352, !tbaa !1741
  store i64 0, ptr %l_ns, align 8, !dbg !2353, !tbaa !1604
  br label %if.end10, !dbg !2354

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns_id) #10, !dbg !2355
  tail call void @llvm.dbg.declare(metadata ptr %ns_id, metadata !2328, metadata !DIExpression()), !dbg !2356
  %5 = load ptr, ptr %db.addr, align 8, !dbg !2357, !tbaa !1140
  %uri_index = getelementptr inbounds %struct.dav_db, ptr %5, i32 0, i32 6, !dbg !2358
  %6 = load ptr, ptr %uri_index, align 8, !dbg !2358, !tbaa !1510
  %7 = load ptr, ptr %name.addr, align 8, !dbg !2359, !tbaa !1140
  %ns3 = getelementptr inbounds %struct.dav_prop_name, ptr %7, i32 0, i32 0, !dbg !2360
  %8 = load ptr, ptr %ns3, align 8, !dbg !2360, !tbaa !2346
  %call4 = call ptr @apr_hash_get(ptr noundef %6, ptr noundef %8, i64 noundef -1), !dbg !2361
  %9 = ptrtoint ptr %call4 to i64, !dbg !2362
  store i64 %9, ptr %ns_id, align 8, !dbg !2356, !tbaa !1604
  %10 = load i64, ptr %ns_id, align 8, !dbg !2363, !tbaa !1604
  %cmp5 = icmp eq i64 %10, 0, !dbg !2365
  br i1 %cmp5, label %if.then7, label %if.end, !dbg !2366

if.then7:                                         ; preds = %if.else
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2367

if.end:                                           ; preds = %if.else
  %arraydecay = getelementptr inbounds [20 x i8], ptr %nsbuf, i64 0, i64 0, !dbg !2369
  %11 = load i64, ptr %ns_id, align 8, !dbg !2370, !tbaa !1604
  %sub = sub nsw i64 %11, 1, !dbg !2371
  %call8 = call i32 (ptr, i64, ptr, ...) @apr_snprintf(ptr noundef %arraydecay, i64 noundef 20, ptr noundef @.str.11, i64 noundef %sub), !dbg !2372
  %conv9 = sext i32 %call8 to i64, !dbg !2372
  store i64 %conv9, ptr %l_ns, align 8, !dbg !2373, !tbaa !1604
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2374
  br label %cleanup, !dbg !2374

cleanup:                                          ; preds = %if.end, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns_id) #10, !dbg !2374
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup29 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end10

if.end10:                                         ; preds = %cleanup.cont, %if.then
  %12 = load ptr, ptr %db.addr, align 8, !dbg !2375, !tbaa !1140
  %pool = getelementptr inbounds %struct.dav_db, ptr %12, i32 0, i32 0, !dbg !2376
  %13 = load ptr, ptr %pool, align 8, !dbg !2376, !tbaa !1236
  %14 = load ptr, ptr %db.addr, align 8, !dbg !2377, !tbaa !1140
  %wb_key = getelementptr inbounds %struct.dav_db, ptr %14, i32 0, i32 7, !dbg !2378
  %15 = load i64, ptr %l_ns, align 8, !dbg !2379, !tbaa !1604
  %add = add i64 %15, 1, !dbg !2380
  %16 = load i64, ptr %l_name, align 8, !dbg !2381, !tbaa !1604
  %add11 = add i64 %add, %16, !dbg !2382
  %add12 = add i64 %add11, 1, !dbg !2383
  call void @dav_set_bufsize(ptr noundef %13, ptr noundef %wb_key, i64 noundef %add12), !dbg !2384
  %17 = load ptr, ptr %db.addr, align 8, !dbg !2385, !tbaa !1140
  %wb_key13 = getelementptr inbounds %struct.dav_db, ptr %17, i32 0, i32 7, !dbg !2386
  %buf = getelementptr inbounds %struct.dav_buffer, ptr %wb_key13, i32 0, i32 2, !dbg !2387
  %18 = load ptr, ptr %buf, align 8, !dbg !2387, !tbaa !2388
  %arraydecay14 = getelementptr inbounds [20 x i8], ptr %nsbuf, i64 0, i64 0, !dbg !2389
  %19 = load i64, ptr %l_ns, align 8, !dbg !2390, !tbaa !1604
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %18, ptr align 16 %arraydecay14, i64 %19, i1 false), !dbg !2389
  %20 = load ptr, ptr %db.addr, align 8, !dbg !2391, !tbaa !1140
  %wb_key15 = getelementptr inbounds %struct.dav_db, ptr %20, i32 0, i32 7, !dbg !2392
  %buf16 = getelementptr inbounds %struct.dav_buffer, ptr %wb_key15, i32 0, i32 2, !dbg !2393
  %21 = load ptr, ptr %buf16, align 8, !dbg !2393, !tbaa !2388
  %22 = load i64, ptr %l_ns, align 8, !dbg !2394, !tbaa !1604
  %arrayidx17 = getelementptr inbounds i8, ptr %21, i64 %22, !dbg !2391
  store i8 58, ptr %arrayidx17, align 1, !dbg !2395, !tbaa !1741
  %23 = load ptr, ptr %db.addr, align 8, !dbg !2396, !tbaa !1140
  %wb_key18 = getelementptr inbounds %struct.dav_db, ptr %23, i32 0, i32 7, !dbg !2397
  %buf19 = getelementptr inbounds %struct.dav_buffer, ptr %wb_key18, i32 0, i32 2, !dbg !2398
  %24 = load ptr, ptr %buf19, align 8, !dbg !2398, !tbaa !2388
  %25 = load i64, ptr %l_ns, align 8, !dbg !2399, !tbaa !1604
  %add20 = add i64 %25, 1, !dbg !2400
  %arrayidx21 = getelementptr inbounds i8, ptr %24, i64 %add20, !dbg !2396
  %26 = load ptr, ptr %name.addr, align 8, !dbg !2401, !tbaa !1140
  %name22 = getelementptr inbounds %struct.dav_prop_name, ptr %26, i32 0, i32 1, !dbg !2402
  %27 = load ptr, ptr %name22, align 8, !dbg !2402, !tbaa !2340
  %28 = load i64, ptr %l_name, align 8, !dbg !2403, !tbaa !1604
  %add23 = add i64 %28, 1, !dbg !2404
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx21, ptr align 1 %27, i64 %add23, i1 false), !dbg !2405
  %29 = load i64, ptr %l_ns, align 8, !dbg !2406, !tbaa !1604
  %add24 = add i64 %29, 1, !dbg !2407
  %30 = load i64, ptr %l_name, align 8, !dbg !2408, !tbaa !1604
  %add25 = add i64 %add24, %30, !dbg !2409
  %add26 = add i64 %add25, 1, !dbg !2410
  %dsize = getelementptr inbounds %struct.apr_datum_t, ptr %retval, i32 0, i32 1, !dbg !2411
  store i64 %add26, ptr %dsize, align 8, !dbg !2412, !tbaa !1515
  %31 = load ptr, ptr %db.addr, align 8, !dbg !2413, !tbaa !1140
  %wb_key27 = getelementptr inbounds %struct.dav_db, ptr %31, i32 0, i32 7, !dbg !2414
  %buf28 = getelementptr inbounds %struct.dav_buffer, ptr %wb_key27, i32 0, i32 2, !dbg !2415
  %32 = load ptr, ptr %buf28, align 8, !dbg !2415, !tbaa !2388
  %dptr = getelementptr inbounds %struct.apr_datum_t, ptr %retval, i32 0, i32 0, !dbg !2416
  store ptr %32, ptr %dptr, align 8, !dbg !2417, !tbaa !1357
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29, !dbg !2418

cleanup29:                                        ; preds = %if.end10, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_name) #10, !dbg !2419
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_ns) #10, !dbg !2419
  call void @llvm.lifetime.end.p0(i64 20, ptr %nsbuf) #10, !dbg !2419
  %33 = load { ptr, i64 }, ptr %retval, align 8, !dbg !2419
  ret { ptr, i64 } %33, !dbg !2419
}

; Function Attrs: nounwind uwtable
define internal void @dav_append_prop(ptr noundef %pool, ptr noundef %name, ptr noundef %value, ptr noundef %phdr) #0 !dbg !2420 {
entry:
  %pool.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %phdr.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %lang = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !2424, metadata !DIExpression()), !dbg !2430
  store ptr %name, ptr %name.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2425, metadata !DIExpression()), !dbg !2431
  store ptr %value, ptr %value.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !2426, metadata !DIExpression()), !dbg !2432
  store ptr %phdr, ptr %phdr.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %phdr.addr, metadata !2427, metadata !DIExpression()), !dbg !2433
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #10, !dbg !2434
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !2428, metadata !DIExpression()), !dbg !2435
  call void @llvm.lifetime.start.p0(i64 8, ptr %lang) #10, !dbg !2436
  tail call void @llvm.dbg.declare(metadata ptr %lang, metadata !2429, metadata !DIExpression()), !dbg !2437
  %0 = load ptr, ptr %value.addr, align 8, !dbg !2438, !tbaa !1140
  store ptr %0, ptr %lang, align 8, !dbg !2437, !tbaa !1140
  %1 = load ptr, ptr %lang, align 8, !dbg !2439, !tbaa !1140
  %call = call i64 @strlen(ptr noundef %1) #11, !dbg !2440
  %add = add i64 %call, 1, !dbg !2441
  %2 = load ptr, ptr %value.addr, align 8, !dbg !2442, !tbaa !1140
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %add, !dbg !2442
  store ptr %add.ptr, ptr %value.addr, align 8, !dbg !2442, !tbaa !1140
  %3 = load ptr, ptr %value.addr, align 8, !dbg !2443, !tbaa !1140
  %4 = load i8, ptr %3, align 1, !dbg !2445, !tbaa !1741
  %conv = sext i8 %4 to i32, !dbg !2445
  %cmp = icmp eq i32 %conv, 0, !dbg !2446
  br i1 %cmp, label %if.then, label %if.else9, !dbg !2447

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %name.addr, align 8, !dbg !2448, !tbaa !1140
  %6 = load i8, ptr %5, align 1, !dbg !2451, !tbaa !1741
  %conv2 = sext i8 %6 to i32, !dbg !2451
  %cmp3 = icmp eq i32 %conv2, 58, !dbg !2452
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !2453

if.then5:                                         ; preds = %if.then
  %7 = load ptr, ptr %pool.addr, align 8, !dbg !2454, !tbaa !1140
  %8 = load ptr, ptr %name.addr, align 8, !dbg !2456, !tbaa !1140
  %add.ptr6 = getelementptr inbounds i8, ptr %8, i64 1, !dbg !2457
  %call7 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %7, ptr noundef @.str.12, ptr noundef %add.ptr6, ptr noundef @.str.13, ptr noundef null), !dbg !2458
  store ptr %call7, ptr %s, align 8, !dbg !2459, !tbaa !1140
  br label %if.end, !dbg !2460

if.else:                                          ; preds = %if.then
  %9 = load ptr, ptr %pool.addr, align 8, !dbg !2461, !tbaa !1140
  %10 = load ptr, ptr %name.addr, align 8, !dbg !2463, !tbaa !1140
  %call8 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %9, ptr noundef @.str.14, ptr noundef %10, ptr noundef @.str.13, ptr noundef null), !dbg !2464
  store ptr %call8, ptr %s, align 8, !dbg !2465, !tbaa !1140
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  br label %if.end36, !dbg !2466

if.else9:                                         ; preds = %entry
  %11 = load ptr, ptr %lang, align 8, !dbg !2467, !tbaa !1140
  %12 = load i8, ptr %11, align 1, !dbg !2469, !tbaa !1741
  %conv10 = sext i8 %12 to i32, !dbg !2469
  %cmp11 = icmp ne i32 %conv10, 0, !dbg !2470
  br i1 %cmp11, label %if.then13, label %if.else24, !dbg !2471

if.then13:                                        ; preds = %if.else9
  %13 = load ptr, ptr %name.addr, align 8, !dbg !2472, !tbaa !1140
  %14 = load i8, ptr %13, align 1, !dbg !2475, !tbaa !1741
  %conv14 = sext i8 %14 to i32, !dbg !2475
  %cmp15 = icmp eq i32 %conv14, 58, !dbg !2476
  br i1 %cmp15, label %if.then17, label %if.else21, !dbg !2477

if.then17:                                        ; preds = %if.then13
  %15 = load ptr, ptr %pool.addr, align 8, !dbg !2478, !tbaa !1140
  %16 = load ptr, ptr %name.addr, align 8, !dbg !2480, !tbaa !1140
  %add.ptr18 = getelementptr inbounds i8, ptr %16, i64 1, !dbg !2481
  %17 = load ptr, ptr %lang, align 8, !dbg !2482, !tbaa !1140
  %18 = load ptr, ptr %value.addr, align 8, !dbg !2483, !tbaa !1140
  %19 = load ptr, ptr %name.addr, align 8, !dbg !2484, !tbaa !1140
  %add.ptr19 = getelementptr inbounds i8, ptr %19, i64 1, !dbg !2485
  %call20 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %15, ptr noundef @.str.12, ptr noundef %add.ptr18, ptr noundef @.str.15, ptr noundef %17, ptr noundef @.str.16, ptr noundef %18, ptr noundef @.str.17, ptr noundef %add.ptr19, ptr noundef @.str.18, ptr noundef null), !dbg !2486
  store ptr %call20, ptr %s, align 8, !dbg !2487, !tbaa !1140
  br label %if.end23, !dbg !2488

if.else21:                                        ; preds = %if.then13
  %20 = load ptr, ptr %pool.addr, align 8, !dbg !2489, !tbaa !1140
  %21 = load ptr, ptr %name.addr, align 8, !dbg !2491, !tbaa !1140
  %22 = load ptr, ptr %lang, align 8, !dbg !2492, !tbaa !1140
  %23 = load ptr, ptr %value.addr, align 8, !dbg !2493, !tbaa !1140
  %24 = load ptr, ptr %name.addr, align 8, !dbg !2494, !tbaa !1140
  %call22 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %20, ptr noundef @.str.14, ptr noundef %21, ptr noundef @.str.15, ptr noundef %22, ptr noundef @.str.16, ptr noundef %23, ptr noundef @.str.19, ptr noundef %24, ptr noundef @.str.18, ptr noundef null), !dbg !2495
  store ptr %call22, ptr %s, align 8, !dbg !2496, !tbaa !1140
  br label %if.end23

if.end23:                                         ; preds = %if.else21, %if.then17
  br label %if.end35, !dbg !2497

if.else24:                                        ; preds = %if.else9
  %25 = load ptr, ptr %name.addr, align 8, !dbg !2498, !tbaa !1140
  %26 = load i8, ptr %25, align 1, !dbg !2500, !tbaa !1741
  %conv25 = sext i8 %26 to i32, !dbg !2500
  %cmp26 = icmp eq i32 %conv25, 58, !dbg !2501
  br i1 %cmp26, label %if.then28, label %if.else32, !dbg !2502

if.then28:                                        ; preds = %if.else24
  %27 = load ptr, ptr %pool.addr, align 8, !dbg !2503, !tbaa !1140
  %28 = load ptr, ptr %name.addr, align 8, !dbg !2505, !tbaa !1140
  %add.ptr29 = getelementptr inbounds i8, ptr %28, i64 1, !dbg !2506
  %29 = load ptr, ptr %value.addr, align 8, !dbg !2507, !tbaa !1140
  %30 = load ptr, ptr %name.addr, align 8, !dbg !2508, !tbaa !1140
  %add.ptr30 = getelementptr inbounds i8, ptr %30, i64 1, !dbg !2509
  %call31 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %27, ptr noundef @.str.12, ptr noundef %add.ptr29, ptr noundef @.str.20, ptr noundef %29, ptr noundef @.str.17, ptr noundef %add.ptr30, ptr noundef @.str.18, ptr noundef null), !dbg !2510
  store ptr %call31, ptr %s, align 8, !dbg !2511, !tbaa !1140
  br label %if.end34, !dbg !2512

if.else32:                                        ; preds = %if.else24
  %31 = load ptr, ptr %pool.addr, align 8, !dbg !2513, !tbaa !1140
  %32 = load ptr, ptr %name.addr, align 8, !dbg !2515, !tbaa !1140
  %33 = load ptr, ptr %value.addr, align 8, !dbg !2516, !tbaa !1140
  %34 = load ptr, ptr %name.addr, align 8, !dbg !2517, !tbaa !1140
  %call33 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %31, ptr noundef @.str.14, ptr noundef %32, ptr noundef @.str.20, ptr noundef %33, ptr noundef @.str.19, ptr noundef %34, ptr noundef @.str.18, ptr noundef null), !dbg !2518
  store ptr %call33, ptr %s, align 8, !dbg !2519, !tbaa !1140
  br label %if.end34

if.end34:                                         ; preds = %if.else32, %if.then28
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end23
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end
  %35 = load ptr, ptr %pool.addr, align 8, !dbg !2520, !tbaa !1140
  %36 = load ptr, ptr %phdr.addr, align 8, !dbg !2521, !tbaa !1140
  %37 = load ptr, ptr %s, align 8, !dbg !2522, !tbaa !1140
  call void @apr_text_append(ptr noundef %35, ptr noundef %36, ptr noundef %37), !dbg !2523
  call void @llvm.lifetime.end.p0(i64 8, ptr %lang) #10, !dbg !2524
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #10, !dbg !2524
  ret void, !dbg !2524
}

declare !dbg !2525 ptr @apr_hash_get(ptr noundef, ptr noundef, i64 noundef) #1

declare !dbg !2528 i32 @apr_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #1

declare !dbg !2531 void @apr_text_append(ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !2534 void @dav_check_bufsize(ptr noundef, ptr noundef, i64 noundef) #1

declare !dbg !2535 void @apr_xml_quote_elem(ptr noundef, ptr noundef) #1

declare !dbg !2538 void @apr_xml_to_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @dav_dbm_firstkey(ptr noundef %db, ptr noundef %pkey) #0 !dbg !2541 {
entry:
  %db.addr = alloca ptr, align 8
  %pkey.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !2545, metadata !DIExpression()), !dbg !2548
  store ptr %pkey, ptr %pkey.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %pkey.addr, metadata !2546, metadata !DIExpression()), !dbg !2549
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #10, !dbg !2550
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !2547, metadata !DIExpression()), !dbg !2551
  %0 = load ptr, ptr %db.addr, align 8, !dbg !2552, !tbaa !1140
  %file = getelementptr inbounds %struct.dav_db, ptr %0, i32 0, i32 1, !dbg !2553
  %1 = load ptr, ptr %file, align 8, !dbg !2553, !tbaa !1247
  %2 = load ptr, ptr %pkey.addr, align 8, !dbg !2554, !tbaa !1140
  %call = call i32 @apr_dbm_firstkey(ptr noundef %1, ptr noundef %2), !dbg !2555
  store i32 %call, ptr %status, align 4, !dbg !2551, !tbaa !1198
  %3 = load ptr, ptr %db.addr, align 8, !dbg !2556, !tbaa !1140
  %4 = load i32, ptr %status, align 4, !dbg !2557, !tbaa !1198
  %call1 = call ptr @dav_fs_dbm_error(ptr noundef %3, ptr noundef null, i32 noundef %4), !dbg !2558
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #10, !dbg !2559
  ret ptr %call1, !dbg !2560
}

; Function Attrs: nounwind uwtable
define internal void @dav_set_name(ptr noundef %db, ptr noundef %pname) #0 !dbg !2561 {
entry:
  %db.addr = alloca ptr, align 8
  %pname.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %id = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !2565, metadata !DIExpression()), !dbg !2572
  store ptr %pname, ptr %pname.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %pname.addr, metadata !2566, metadata !DIExpression()), !dbg !2573
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #10, !dbg !2574
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !2567, metadata !DIExpression()), !dbg !2575
  %0 = load ptr, ptr %db.addr, align 8, !dbg !2576, !tbaa !1140
  %iter = getelementptr inbounds %struct.dav_db, ptr %0, i32 0, i32 8, !dbg !2577
  %dptr = getelementptr inbounds %struct.apr_datum_t, ptr %iter, i32 0, i32 0, !dbg !2578
  %1 = load ptr, ptr %dptr, align 8, !dbg !2578, !tbaa !2048
  store ptr %1, ptr %s, align 8, !dbg !2575, !tbaa !1140
  %2 = load ptr, ptr %s, align 8, !dbg !2579, !tbaa !1140
  %cmp = icmp eq ptr %2, null, !dbg !2580
  br i1 %cmp, label %if.then, label %if.else, !dbg !2581

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pname.addr, align 8, !dbg !2582, !tbaa !1140
  %name = getelementptr inbounds %struct.dav_prop_name, ptr %3, i32 0, i32 1, !dbg !2584
  store ptr null, ptr %name, align 8, !dbg !2585, !tbaa !2340
  %4 = load ptr, ptr %pname.addr, align 8, !dbg !2586, !tbaa !1140
  %ns = getelementptr inbounds %struct.dav_prop_name, ptr %4, i32 0, i32 0, !dbg !2587
  store ptr null, ptr %ns, align 8, !dbg !2588, !tbaa !2346
  br label %if.end21, !dbg !2589

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %s, align 8, !dbg !2590, !tbaa !1140
  %6 = load i8, ptr %5, align 1, !dbg !2591, !tbaa !1741
  %conv = sext i8 %6 to i32, !dbg !2591
  %cmp1 = icmp eq i32 %conv, 58, !dbg !2592
  br i1 %cmp1, label %if.then3, label %if.else6, !dbg !2593

if.then3:                                         ; preds = %if.else
  %7 = load ptr, ptr %pname.addr, align 8, !dbg !2594, !tbaa !1140
  %ns4 = getelementptr inbounds %struct.dav_prop_name, ptr %7, i32 0, i32 0, !dbg !2596
  store ptr @.str.21, ptr %ns4, align 8, !dbg !2597, !tbaa !2346
  %8 = load ptr, ptr %s, align 8, !dbg !2598, !tbaa !1140
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 1, !dbg !2599
  %9 = load ptr, ptr %pname.addr, align 8, !dbg !2600, !tbaa !1140
  %name5 = getelementptr inbounds %struct.dav_prop_name, ptr %9, i32 0, i32 1, !dbg !2601
  store ptr %add.ptr, ptr %name5, align 8, !dbg !2602, !tbaa !2340
  br label %if.end20, !dbg !2603

if.else6:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #10, !dbg !2604
  tail call void @llvm.dbg.declare(metadata ptr %id, metadata !2568, metadata !DIExpression()), !dbg !2605
  %10 = load ptr, ptr %s, align 8, !dbg !2606, !tbaa !1140
  %call = call i32 @atoi(ptr noundef %10) #11, !dbg !2607
  store i32 %call, ptr %id, align 4, !dbg !2605, !tbaa !1198
  %11 = load ptr, ptr %db.addr, align 8, !dbg !2608, !tbaa !1140
  %12 = load i32, ptr %id, align 4, !dbg !2609, !tbaa !1198
  %call7 = call ptr @dav_get_ns_table_uri(ptr noundef %11, i32 noundef %12), !dbg !2610
  %13 = load ptr, ptr %pname.addr, align 8, !dbg !2611, !tbaa !1140
  %ns8 = getelementptr inbounds %struct.dav_prop_name, ptr %13, i32 0, i32 0, !dbg !2612
  store ptr %call7, ptr %ns8, align 8, !dbg !2613, !tbaa !2346
  %14 = load ptr, ptr %s, align 8, !dbg !2614, !tbaa !1140
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 1, !dbg !2614
  %15 = load i8, ptr %arrayidx, align 1, !dbg !2614, !tbaa !1741
  %conv9 = sext i8 %15 to i32, !dbg !2614
  %cmp10 = icmp eq i32 %conv9, 58, !dbg !2616
  br i1 %cmp10, label %if.then12, label %if.else15, !dbg !2617

if.then12:                                        ; preds = %if.else6
  %16 = load ptr, ptr %s, align 8, !dbg !2618, !tbaa !1140
  %add.ptr13 = getelementptr inbounds i8, ptr %16, i64 2, !dbg !2620
  %17 = load ptr, ptr %pname.addr, align 8, !dbg !2621, !tbaa !1140
  %name14 = getelementptr inbounds %struct.dav_prop_name, ptr %17, i32 0, i32 1, !dbg !2622
  store ptr %add.ptr13, ptr %name14, align 8, !dbg !2623, !tbaa !2340
  br label %if.end, !dbg !2624

if.else15:                                        ; preds = %if.else6
  %18 = load ptr, ptr %s, align 8, !dbg !2625, !tbaa !1140
  %add.ptr16 = getelementptr inbounds i8, ptr %18, i64 2, !dbg !2625
  %call17 = call ptr @strchr(ptr noundef %add.ptr16, i32 noundef 58) #11, !dbg !2625
  %add.ptr18 = getelementptr inbounds i8, ptr %call17, i64 1, !dbg !2627
  %19 = load ptr, ptr %pname.addr, align 8, !dbg !2628, !tbaa !1140
  %name19 = getelementptr inbounds %struct.dav_prop_name, ptr %19, i32 0, i32 1, !dbg !2629
  store ptr %add.ptr18, ptr %name19, align 8, !dbg !2630, !tbaa !2340
  br label %if.end

if.end:                                           ; preds = %if.else15, %if.then12
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #10, !dbg !2631
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then3
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #10, !dbg !2632
  ret void, !dbg !2632
}

declare !dbg !2633 i32 @apr_dbm_firstkey(ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally i32 @atoi(ptr noundef nonnull %__nptr) #7 !dbg !2636 {
entry:
  %__nptr.addr = alloca ptr, align 8
  store ptr %__nptr, ptr %__nptr.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %__nptr.addr, metadata !2641, metadata !DIExpression()), !dbg !2642
  %0 = load ptr, ptr %__nptr.addr, align 8, !dbg !2643, !tbaa !1140
  %call = call i64 @strtol(ptr noundef %0, ptr noundef null, i32 noundef 10) #10, !dbg !2644
  %conv = trunc i64 %call to i32, !dbg !2645
  ret i32 %conv, !dbg !2646
}

; Function Attrs: nounwind uwtable
define internal ptr @dav_get_ns_table_uri(ptr noundef %db, i32 noundef %ns_id) #0 !dbg !2647 {
entry:
  %db.addr = alloca ptr, align 8
  %ns_id.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !2651, metadata !DIExpression()), !dbg !2654
  store i32 %ns_id, ptr %ns_id.addr, align 4, !tbaa !1198
  tail call void @llvm.dbg.declare(metadata ptr %ns_id.addr, metadata !2652, metadata !DIExpression()), !dbg !2655
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !2656
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !2653, metadata !DIExpression()), !dbg !2657
  %0 = load ptr, ptr %db.addr, align 8, !dbg !2658, !tbaa !1140
  %ns_table = getelementptr inbounds %struct.dav_db, ptr %0, i32 0, i32 3, !dbg !2659
  %buf = getelementptr inbounds %struct.dav_buffer, ptr %ns_table, i32 0, i32 2, !dbg !2660
  %1 = load ptr, ptr %buf, align 8, !dbg !2660, !tbaa !1551
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 4, !dbg !2661
  store ptr %add.ptr, ptr %p, align 8, !dbg !2657, !tbaa !1140
  br label %while.cond, !dbg !2662

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, ptr %ns_id.addr, align 4, !dbg !2663, !tbaa !1198
  %dec = add nsw i32 %2, -1, !dbg !2663
  store i32 %dec, ptr %ns_id.addr, align 4, !dbg !2663, !tbaa !1198
  %tobool = icmp ne i32 %2, 0, !dbg !2662
  br i1 %tobool, label %while.body, label %while.end, !dbg !2662

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %p, align 8, !dbg !2664, !tbaa !1140
  %call = call i64 @strlen(ptr noundef %3) #11, !dbg !2665
  %add = add i64 %call, 1, !dbg !2666
  %4 = load ptr, ptr %p, align 8, !dbg !2667, !tbaa !1140
  %add.ptr1 = getelementptr inbounds i8, ptr %4, i64 %add, !dbg !2667
  store ptr %add.ptr1, ptr %p, align 8, !dbg !2667, !tbaa !1140
  br label %while.cond, !dbg !2662, !llvm.loop !2668

while.end:                                        ; preds = %while.cond
  %5 = load ptr, ptr %p, align 8, !dbg !2670, !tbaa !1140
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !2671
  ret ptr %5, !dbg !2672
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2673 ptr @strchr(ptr noundef, i32 noundef) #6

; Function Attrs: nounwind
declare !dbg !2676 i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #8

; Function Attrs: nounwind uwtable
define internal ptr @dav_dbm_nextkey(ptr noundef %db, ptr noundef %pkey) #0 !dbg !2681 {
entry:
  %db.addr = alloca ptr, align 8
  %pkey.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !2683, metadata !DIExpression()), !dbg !2686
  store ptr %pkey, ptr %pkey.addr, align 8, !tbaa !1140
  tail call void @llvm.dbg.declare(metadata ptr %pkey.addr, metadata !2684, metadata !DIExpression()), !dbg !2687
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #10, !dbg !2688
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !2685, metadata !DIExpression()), !dbg !2689
  %0 = load ptr, ptr %db.addr, align 8, !dbg !2690, !tbaa !1140
  %file = getelementptr inbounds %struct.dav_db, ptr %0, i32 0, i32 1, !dbg !2691
  %1 = load ptr, ptr %file, align 8, !dbg !2691, !tbaa !1247
  %2 = load ptr, ptr %pkey.addr, align 8, !dbg !2692, !tbaa !1140
  %call = call i32 @apr_dbm_nextkey(ptr noundef %1, ptr noundef %2), !dbg !2693
  store i32 %call, ptr %status, align 4, !dbg !2689, !tbaa !1198
  %3 = load ptr, ptr %db.addr, align 8, !dbg !2694, !tbaa !1140
  %4 = load i32, ptr %status, align 4, !dbg !2695, !tbaa !1198
  %call1 = call ptr @dav_fs_dbm_error(ptr noundef %3, ptr noundef null, i32 noundef %4), !dbg !2696
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #10, !dbg !2697
  ret ptr %call1, !dbg !2698
}

declare !dbg !2699 i32 @apr_dbm_nextkey(ptr noundef, ptr noundef) #1

declare !dbg !2700 ptr @apr_pmemdup(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!1126, !1127, !1128, !1129, !1130}
!llvm.ident = !{!1131}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "dbm.c", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src/modules/dav/fs", checksumkind: CSK_MD5, checksum: "9f9394f499c6bffe7afd6a00c8d15052")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 15)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 121, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 6)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "dav_hooks_db_dbm", scope: !14, file: !2, line: 784, type: !301, isLocal: false, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !179, globals: !223, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16, !28, !86, !110, !119, !127, !139, !144, !149, !161, !165, !170, !175}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 296, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "main/mod_dav.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src/modules/dav", checksumkind: CSK_MD5, checksum: "b6a8eab5551a9362e9e8d2c4945ac944")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27}
!20 = !DIEnumerator(name: "DAV_RESOURCE_TYPE_UNKNOWN", value: 0)
!21 = !DIEnumerator(name: "DAV_RESOURCE_TYPE_REGULAR", value: 1)
!22 = !DIEnumerator(name: "DAV_RESOURCE_TYPE_VERSION", value: 2)
!23 = !DIEnumerator(name: "DAV_RESOURCE_TYPE_HISTORY", value: 3)
!24 = !DIEnumerator(name: "DAV_RESOURCE_TYPE_WORKING", value: 4)
!25 = !DIEnumerator(name: "DAV_RESOURCE_TYPE_WORKSPACE", value: 5)
!26 = !DIEnumerator(name: "DAV_RESOURCE_TYPE_ACTIVITY", value: 6)
!27 = !DIEnumerator(name: "DAV_RESOURCE_TYPE_PRIVATE", value: 7)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !30, file: !29, line: 151, baseType: !18, size: 32, elements: !107)
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
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 57, baseType: !18, size: 32, elements: !87)
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
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !111, line: 41, baseType: !18, size: 32, elements: !112)
!111 = !DIFile(filename: "include/util_filter.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "894e51124b630754ca6243e0c50426ad")
!112 = !{!113, !114, !115, !116, !117, !118}
!113 = !DIEnumerator(name: "AP_MODE_READBYTES", value: 0)
!114 = !DIEnumerator(name: "AP_MODE_GETLINE", value: 1)
!115 = !DIEnumerator(name: "AP_MODE_EATCRLF", value: 2)
!116 = !DIEnumerator(name: "AP_MODE_SPECULATIVE", value: 3)
!117 = !DIEnumerator(name: "AP_MODE_EXHAUSTIVE", value: 4)
!118 = !DIEnumerator(name: "AP_MODE_INIT", value: 5)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !111, line: 158, baseType: !18, size: 32, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126}
!121 = !DIEnumerator(name: "AP_FTYPE_RESOURCE", value: 10)
!122 = !DIEnumerator(name: "AP_FTYPE_CONTENT_SET", value: 20)
!123 = !DIEnumerator(name: "AP_FTYPE_PROTOCOL", value: 30)
!124 = !DIEnumerator(name: "AP_FTYPE_TRANSCODE", value: 40)
!125 = !DIEnumerator(name: "AP_FTYPE_CONNECTION", value: 50)
!126 = !DIEnumerator(name: "AP_FTYPE_NETWORK", value: 60)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !128, line: 1251, baseType: !18, size: 32, elements: !129)
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
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !128, line: 1264, baseType: !18, size: 32, elements: !140)
!140 = !{!141, !142, !143}
!141 = !DIEnumerator(name: "CONN_SENSE_DEFAULT", value: 0)
!142 = !DIEnumerator(name: "CONN_SENSE_WANT_READ", value: 1)
!143 = !DIEnumerator(name: "CONN_SENSE_WANT_WRITE", value: 2)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !128, line: 1136, baseType: !18, size: 32, elements: !145)
!145 = !{!146, !147, !148}
!146 = !DIEnumerator(name: "AP_CONN_UNKNOWN", value: 0)
!147 = !DIEnumerator(name: "AP_CONN_CLOSE", value: 1)
!148 = !DIEnumerator(name: "AP_CONN_KEEPALIVE", value: 2)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !150, line: 62, baseType: !18, size: 32, elements: !151)
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
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 1902, baseType: !18, size: 32, elements: !162)
!162 = !{!163, !164}
!163 = !DIEnumerator(name: "DAV_MODE_WRITE_TRUNC", value: 0)
!164 = !DIEnumerator(name: "DAV_MODE_WRITE_SEEKABLE", value: 1)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 1353, baseType: !18, size: 32, elements: !166)
!166 = !{!167, !168, !169}
!167 = !DIEnumerator(name: "DAV_LOCKREC_DIRECT", value: 0)
!168 = !DIEnumerator(name: "DAV_LOCKREC_INDIRECT", value: 1)
!169 = !DIEnumerator(name: "DAV_LOCKREC_INDIRECT_PARTIAL", value: 2)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 1342, baseType: !18, size: 32, elements: !171)
!171 = !{!172, !173, !174}
!172 = !DIEnumerator(name: "DAV_LOCKSCOPE_UNKNOWN", value: 0)
!173 = !DIEnumerator(name: "DAV_LOCKSCOPE_EXCLUSIVE", value: 1)
!174 = !DIEnumerator(name: "DAV_LOCKSCOPE_SHARED", value: 2)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 1348, baseType: !18, size: 32, elements: !176)
!176 = !{!177, !178}
!177 = !DIEnumerator(name: "DAV_LOCKTYPE_UNKNOWN", value: 0)
!178 = !DIEnumerator(name: "DAV_LOCKTYPE_WRITE", value: 1)
!179 = !{!42, !180, !76, !83, !182, !36, !221}
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !75, line: 40, baseType: !181)
!181 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_xml_elem", file: !184, line: 143, baseType: !185)
!184 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-util-1.6.3-l37sacsnb2zk76xejbzfvftzd4gcjj3o/include/apr-1/apr_xml.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "478ff65569ad8360e0ab2190ba58f12e")
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_xml_elem", file: !184, line: 162, size: 896, elements: !186)
!186 = !{!187, !188, !189, !190, !203, !204, !206, !207, !208, !216, !217, !220}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !185, file: !184, line: 164, baseType: !33, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !185, file: !184, line: 166, baseType: !36, size: 32, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "lang", scope: !185, file: !184, line: 168, baseType: !33, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "first_cdata", scope: !185, file: !184, line: 171, baseType: !191, size: 128, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_text_header", file: !184, line: 61, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_text_header", file: !184, line: 64, size: 128, elements: !193)
!193 = !{!194, !202}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !192, file: !184, line: 66, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_text", file: !184, line: 50, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_text", file: !184, line: 53, size: 128, elements: !198)
!198 = !{!199, !200}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !197, file: !184, line: 55, baseType: !33, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !197, file: !184, line: 57, baseType: !201, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !192, file: !184, line: 68, baseType: !195, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "following_cdata", scope: !185, file: !184, line: 173, baseType: !191, size: 128, offset: 320)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !185, file: !184, line: 176, baseType: !205, size: 64, offset: 448)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !185, file: !184, line: 178, baseType: !205, size: 64, offset: 512)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "first_child", scope: !185, file: !184, line: 180, baseType: !205, size: 64, offset: 576)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !185, file: !184, line: 182, baseType: !209, size: 64, offset: 640)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_xml_attr", file: !184, line: 148, size: 256, elements: !211)
!211 = !{!212, !213, !214, !215}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !210, file: !184, line: 150, baseType: !33, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !210, file: !184, line: 152, baseType: !36, size: 32, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !210, file: !184, line: 155, baseType: !33, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !210, file: !184, line: 158, baseType: !209, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "last_child", scope: !185, file: !184, line: 186, baseType: !205, size: 64, offset: 704)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "ns_scope", scope: !185, file: !184, line: 188, baseType: !218, size: 64, offset: 768)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_xml_ns_scope", file: !184, line: 188, flags: DIFlagFwdDecl)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !185, file: !184, line: 192, baseType: !42, size: 64, offset: 832)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!223 = !{!0, !7, !12, !224, !229, !231, !235, !240, !245, !247, !252, !257, !259, !264, !269, !274, !276, !278, !283, !288, !290, !292, !294, !296}
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !226, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 34)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !9, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "aplog_module_index", scope: !14, file: !2, line: 148, type: !233, isLocal: true, isDefinition: true)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !237, isLocal: true, isDefinition: true)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 44)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !2, line: 439, type: !242, isLocal: true, isDefinition: true)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 9)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !2, line: 456, type: !242, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !2, line: 464, type: !249, isLocal: true, isDefinition: true)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 552, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 69)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !2, line: 200, type: !254, isLocal: true, isDefinition: true)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 7)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !2, line: 534, type: !226, isLocal: true, isDefinition: true)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !2, line: 559, type: !261, isLocal: true, isDefinition: true)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 5)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !2, line: 353, type: !266, isLocal: true, isDefinition: true)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 4)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !2, line: 383, type: !271, isLocal: true, isDefinition: true)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 2)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !2, line: 383, type: !266, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !2, line: 386, type: !266, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !2, line: 392, type: !280, isLocal: true, isDefinition: true)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 12)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !2, line: 393, type: !285, isLocal: true, isDefinition: true)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 3)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !2, line: 393, type: !285, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !2, line: 393, type: !285, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !2, line: 398, type: !261, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !2, line: 404, type: !271, isLocal: true, isDefinition: true)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !2, line: 693, type: !298, isLocal: true, isDefinition: true)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 1)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_hooks_db", file: !17, line: 276, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_hooks_propdb", file: !17, line: 267, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dav_hooks_propdb", file: !17, line: 1206, size: 832, elements: !305)
!305 = !{!306, !1050, !1054, !1066, !1078, !1090, !1096, !1100, !1104, !1109, !1110, !1121, !1125}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !304, file: !17, line: 1208, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!310, !94, !323, !36, !1016}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_error", file: !17, line: 135, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dav_error", file: !17, line: 121, size: 448, elements: !313)
!313 = !{!314, !315, !316, !317, !318, !319, !320, !322}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !312, file: !17, line: 122, baseType: !36, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "error_id", scope: !312, file: !17, line: 123, baseType: !36, size: 32, offset: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !312, file: !17, line: 124, baseType: !33, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "aprerr", scope: !312, file: !17, line: 126, baseType: !47, size: 32, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !312, file: !17, line: 128, baseType: !33, size: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tagname", scope: !312, file: !17, line: 129, baseType: !33, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !312, file: !17, line: 131, baseType: !321, size: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "childtags", scope: !312, file: !17, line: 133, baseType: !33, size: 64, offset: 384)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_resource", file: !17, line: 421, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dav_resource", file: !17, line: 387, size: 448, elements: !327)
!327 = !{!328, !330, !331, !332, !333, !334, !335, !336, !340, !1015}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !326, file: !17, line: 388, baseType: !329, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_resource_type", file: !17, line: 315, baseType: !16)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !326, file: !17, line: 390, baseType: !36, size: 32, offset: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "collection", scope: !326, file: !17, line: 392, baseType: !36, size: 32, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "versioned", scope: !326, file: !17, line: 396, baseType: !36, size: 32, offset: 96)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "baselined", scope: !326, file: !17, line: 400, baseType: !36, size: 32, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "working", scope: !326, file: !17, line: 404, baseType: !36, size: 32, offset: 160)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !326, file: !17, line: 408, baseType: !33, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !326, file: !17, line: 412, baseType: !337, size: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_resource_private", file: !17, line: 320, baseType: !339)
!339 = !DICompositeType(tag: DW_TAG_structure_type, name: "dav_resource_private", file: !17, line: 320, flags: DIFlagFwdDecl)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "hooks", scope: !326, file: !17, line: 414, baseType: !341, size: 64, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_hooks_repository", file: !17, line: 270, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dav_hooks_repository", file: !17, line: 1914, size: 1280, elements: !345)
!345 = !{!346, !347, !790, !794, !798, !799, !808, !812, !818, !822, !826, !830, !834, !854, !858, !862, !1008, !1009, !1010, !1014}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "handle_get", scope: !344, file: !17, line: 1922, baseType: !36, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "get_resource", scope: !344, file: !17, line: 1947, baseType: !348, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!310, !351, !33, !33, !36, !788}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "request_rec", file: !128, line: 811, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_rec", file: !128, line: 838, size: 5888, elements: !354)
!354 = !{!355, !356, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !647, !648, !649, !650, !651, !652, !653, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !708, !709, !710, !711, !712, !713, !714, !719, !740, !777, !778, !779, !780, !781, !782, !783}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !353, file: !128, line: 840, baseType: !94, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !353, file: !128, line: 842, baseType: !357, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_rec", file: !128, line: 809, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conn_rec", file: !128, line: 1145, size: 1664, elements: !360)
!360 = !{!361, !362, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !545, !602, !603, !604, !606, !615, !616, !617, !618, !619, !620, !622, !623, !626, !627, !632, !633}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !359, file: !128, line: 1147, baseType: !94, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "base_server", scope: !359, file: !128, line: 1149, baseType: !363, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "server_rec", file: !128, line: 807, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "server_rec", file: !128, line: 1315, size: 1536, elements: !366)
!366 = !{!367, !379, !380, !381, !386, !393, !396, !397, !398, !399, !400, !404, !405, !406, !407, !502, !509, !510, !511, !512, !523, !524, !525, !526, !527, !528, !529, !530}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !365, file: !128, line: 1317, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "process_rec", file: !128, line: 805, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "process_rec", file: !128, line: 822, size: 320, elements: !371)
!371 = !{!372, !373, !374, !375, !378}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !370, file: !128, line: 824, baseType: !94, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "pconf", scope: !370, file: !128, line: 826, baseType: !94, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "short_name", scope: !370, file: !128, line: 828, baseType: !33, size: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !370, file: !128, line: 830, baseType: !376, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !370, file: !128, line: 832, baseType: !36, size: 32, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !365, file: !128, line: 1319, baseType: !363, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "error_fname", scope: !365, file: !128, line: 1324, baseType: !222, size: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "error_log", scope: !365, file: !128, line: 1326, baseType: !382, size: 64, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_file_t", file: !384, line: 188, baseType: !385)
!384 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_file_io.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "9f1a845f7255d07e28e3a10d24320b5d")
!385 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_file_t", file: !150, line: 212, flags: DIFlagFwdDecl)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !365, file: !128, line: 1328, baseType: !387, size: 128, offset: 256)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_logconf", file: !128, line: 1305, size: 128, elements: !388)
!388 = !{!389, !392}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "module_levels", scope: !387, file: !128, line: 1307, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !387, file: !128, line: 1310, baseType: !36, size: 32, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "module_config", scope: !365, file: !128, line: 1334, baseType: !394, size: 64, offset: 384)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DICompositeType(tag: DW_TAG_structure_type, name: "ap_conf_vector_t", file: !128, line: 791, flags: DIFlagFwdDecl)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_defaults", scope: !365, file: !128, line: 1336, baseType: !394, size: 64, offset: 448)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "defn_name", scope: !365, file: !128, line: 1339, baseType: !33, size: 64, offset: 512)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "defn_line_number", scope: !365, file: !128, line: 1341, baseType: !18, size: 32, offset: 576)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtual", scope: !365, file: !128, line: 1343, baseType: !4, size: 8, offset: 608)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !365, file: !128, line: 1349, baseType: !401, size: 16, offset: 624)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_port_t", file: !402, line: 230, baseType: !403)
!402 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_network_io.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "d28b53dbcb33f6acce926c2efb3f7365")
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_uint16_t", file: !66, line: 331, baseType: !181)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "server_scheme", scope: !365, file: !128, line: 1351, baseType: !33, size: 64, offset: 640)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "server_admin", scope: !365, file: !128, line: 1356, baseType: !222, size: 64, offset: 704)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "server_hostname", scope: !365, file: !128, line: 1358, baseType: !222, size: 64, offset: 768)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !365, file: !128, line: 1363, baseType: !408, size: 64, offset: 832)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "server_addr_rec", file: !128, line: 1293, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "server_addr_rec", file: !128, line: 1294, size: 256, elements: !411)
!411 = !{!412, !413, !414, !501}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !410, file: !128, line: 1296, baseType: !408, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "virthost", scope: !410, file: !128, line: 1298, baseType: !222, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "host_addr", scope: !410, file: !128, line: 1300, baseType: !415, size: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_sockaddr_t", file: !402, line: 235, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_sockaddr_t", file: !402, line: 239, size: 1536, elements: !418)
!418 = !{!419, !420, !421, !422, !423, !425, !430, !431, !432, !433, !434}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !417, file: !402, line: 241, baseType: !94, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !417, file: !402, line: 243, baseType: !222, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "servname", scope: !417, file: !402, line: 245, baseType: !222, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !417, file: !402, line: 247, baseType: !401, size: 16, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !417, file: !402, line: 249, baseType: !424, size: 32, offset: 224)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_int32_t", file: !66, line: 333, baseType: !36)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "salen", scope: !417, file: !402, line: 251, baseType: !426, size: 32, offset: 256)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_socklen_t", file: !66, line: 382, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !428, line: 33, baseType: !429)
!428 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !75, line: 210, baseType: !18)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "ipaddr_len", scope: !417, file: !402, line: 253, baseType: !36, size: 32, offset: 288)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "addr_str_len", scope: !417, file: !402, line: 256, baseType: !36, size: 32, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "ipaddr_ptr", scope: !417, file: !402, line: 259, baseType: !42, size: 64, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !417, file: !402, line: 262, baseType: !415, size: 64, offset: 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !417, file: !402, line: 280, baseType: !435, size: 1024, offset: 512)
!435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !417, file: !402, line: 264, size: 1024, elements: !436)
!436 = !{!437, !460, !483, !492}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !435, file: !402, line: 266, baseType: !438, size: 128)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !439, line: 245, size: 128, elements: !440)
!439 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!440 = !{!441, !444, !448, !455}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !438, file: !439, line: 247, baseType: !442, size: 16)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !443, line: 28, baseType: !181)
!443 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!444 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !438, file: !439, line: 248, baseType: !445, size: 16, offset: 16)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !439, line: 123, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !447, line: 25, baseType: !180)
!447 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !438, file: !439, line: 249, baseType: !449, size: 32, offset: 32)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !439, line: 31, size: 32, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !449, file: !439, line: 33, baseType: !452, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !439, line: 30, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !447, line: 26, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !75, line: 42, baseType: !18)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !438, file: !439, line: 252, baseType: !456, size: 64, offset: 64)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 64, elements: !458)
!457 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!458 = !{!459}
!459 = !DISubrange(count: 8)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "sin6", scope: !435, file: !402, line: 269, baseType: !461, size: 224)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !439, line: 260, size: 224, elements: !462)
!462 = !{!463, !464, !465, !466, !482}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !461, file: !439, line: 262, baseType: !442, size: 16)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !461, file: !439, line: 263, baseType: !445, size: 16, offset: 16)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !461, file: !439, line: 264, baseType: !453, size: 32, offset: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !461, file: !439, line: 265, baseType: !467, size: 128, offset: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !439, line: 219, size: 128, elements: !468)
!468 = !{!469}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !467, file: !439, line: 226, baseType: !470, size: 128)
!470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !467, file: !439, line: 221, size: 128, elements: !471)
!471 = !{!472, !478, !480}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !470, file: !439, line: 223, baseType: !473, size: 128)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 128, elements: !476)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !447, line: 24, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !75, line: 38, baseType: !457)
!476 = !{!477}
!477 = !DISubrange(count: 16)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !470, file: !439, line: 224, baseType: !479, size: 128)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 128, elements: !458)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !470, file: !439, line: 225, baseType: !481, size: 128)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 128, elements: !267)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !461, file: !439, line: 266, baseType: !453, size: 32, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "sas", scope: !435, file: !402, line: 274, baseType: !484, size: 1024)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !428, line: 193, size: 1024, elements: !485)
!485 = !{!486, !487, !491}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !484, file: !428, line: 195, baseType: !442, size: 16)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !484, file: !428, line: 196, baseType: !488, size: 944, offset: 16)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 944, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: 118)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !484, file: !428, line: 197, baseType: !69, size: 64, offset: 960)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "unx", scope: !435, file: !402, line: 278, baseType: !493, size: 880)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !494, line: 29, size: 880, elements: !495)
!494 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/un.h", directory: "", checksumkind: CSK_MD5, checksum: "543d98cd612c9215c9333043f81a0cd3")
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !493, file: !494, line: 31, baseType: !442, size: 16)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !493, file: !494, line: 32, baseType: !498, size: 864, offset: 16)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 864, elements: !499)
!499 = !{!500}
!500 = !DISubrange(count: 108)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "host_port", scope: !410, file: !128, line: 1302, baseType: !401, size: 16, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !365, file: !128, line: 1365, baseType: !503, size: 64, offset: 896)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_interval_time_t", file: !504, line: 55, baseType: !505)
!504 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_time.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "1a8b9732d4ee010f71e3eb03e6e3a16e")
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_int64_t", file: !66, line: 371, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !507, line: 27, baseType: !508)
!507 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !75, line: 44, baseType: !76)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_timeout", scope: !365, file: !128, line: 1367, baseType: !503, size: 64, offset: 960)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_max", scope: !365, file: !128, line: 1369, baseType: !36, size: 32, offset: 1024)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive", scope: !365, file: !128, line: 1371, baseType: !36, size: 32, offset: 1056)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !365, file: !128, line: 1374, baseType: !513, size: 64, offset: 1088)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_array_header_t", file: !515, line: 59, baseType: !516)
!515 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_tables.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "82dd315cfdbab9381cd05a1d2abe34a2")
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_array_header_t", file: !515, line: 62, size: 256, elements: !517)
!517 = !{!518, !519, !520, !521, !522}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !516, file: !515, line: 64, baseType: !94, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "elt_size", scope: !516, file: !515, line: 66, baseType: !36, size: 32, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !516, file: !515, line: 68, baseType: !36, size: 32, offset: 96)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !516, file: !515, line: 70, baseType: !36, size: 32, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !516, file: !515, line: 72, baseType: !222, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "wild_names", scope: !365, file: !128, line: 1376, baseType: !513, size: 64, offset: 1152)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !365, file: !128, line: 1379, baseType: !33, size: 64, offset: 1216)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "pathlen", scope: !365, file: !128, line: 1381, baseType: !36, size: 32, offset: 1280)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "limit_req_line", scope: !365, file: !128, line: 1384, baseType: !36, size: 32, offset: 1312)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "limit_req_fieldsize", scope: !365, file: !128, line: 1386, baseType: !36, size: 32, offset: 1344)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "limit_req_fields", scope: !365, file: !128, line: 1388, baseType: !36, size: 32, offset: 1376)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !365, file: !128, line: 1391, baseType: !42, size: 64, offset: 1408)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_timeout_set", scope: !365, file: !128, line: 1396, baseType: !18, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "vhost_lookup_data", scope: !359, file: !128, line: 1151, baseType: !42, size: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "local_addr", scope: !359, file: !128, line: 1155, baseType: !415, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "client_addr", scope: !359, file: !128, line: 1159, baseType: !415, size: 64, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "client_ip", scope: !359, file: !128, line: 1164, baseType: !222, size: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "remote_host", scope: !359, file: !128, line: 1168, baseType: !222, size: 64, offset: 384)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "remote_logname", scope: !359, file: !128, line: 1171, baseType: !222, size: 64, offset: 448)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip", scope: !359, file: !128, line: 1174, baseType: !222, size: 64, offset: 512)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "local_host", scope: !359, file: !128, line: 1177, baseType: !222, size: 64, offset: 576)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !359, file: !128, line: 1180, baseType: !76, size: 64, offset: 640)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "conn_config", scope: !359, file: !128, line: 1183, baseType: !394, size: 64, offset: 704)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !359, file: !128, line: 1186, baseType: !542, size: 64, offset: 768)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_table_t", file: !515, line: 56, baseType: !544)
!544 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_table_t", file: !515, line: 56, flags: DIFlagFwdDecl)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "input_filters", scope: !359, file: !128, line: 1188, baseType: !546, size: 64, offset: 832)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_filter_t", file: !111, line: 259, size: 320, elements: !548)
!548 = !{!549, !598, !599, !600, !601}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "frec", scope: !547, file: !111, line: 263, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_filter_rec_t", file: !111, line: 199, baseType: !552)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_filter_rec_t", file: !111, line: 215, size: 448, elements: !553)
!553 = !{!554, !555, !583, !588, !590, !594, !596, !597}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !552, file: !111, line: 217, baseType: !33, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "filter_func", scope: !552, file: !111, line: 220, baseType: !556, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_filter_func", file: !111, line: 146, baseType: !557)
!557 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "ap_filter_func", file: !111, line: 143, size: 64, elements: !558)
!558 = !{!559, !577}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "out_func", scope: !557, file: !111, line: 144, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_out_filter_func", file: !111, line: 134, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!47, !564, !566}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_filter_t", file: !111, line: 94, baseType: !547)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_bucket_brigade", file: !29, line: 119, baseType: !568)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_bucket_brigade", file: !29, line: 258, size: 256, elements: !569)
!569 = !{!570, !571, !576}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !568, file: !29, line: 264, baseType: !94, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !568, file: !29, line: 273, baseType: !572, size: 128, offset: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_bucket_list", file: !29, line: 273, size: 128, elements: !573)
!573 = !{!574, !575}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !572, file: !29, line: 273, baseType: !57, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !572, file: !29, line: 273, baseType: !57, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_alloc", scope: !568, file: !29, line: 275, baseType: !80, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "in_func", scope: !557, file: !111, line: 145, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_in_filter_func", file: !111, line: 136, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!47, !564, !566, !582, !85, !71}
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_input_mode_t", file: !111, line: 63, baseType: !110)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "filter_init_func", scope: !552, file: !111, line: 230, baseType: !584, size: 64, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_init_filter_func", file: !111, line: 141, baseType: !585)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!36, !564}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !552, file: !111, line: 233, baseType: !589, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "providers", scope: !552, file: !111, line: 236, baseType: !591, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_filter_provider_t", file: !111, line: 200, baseType: !593)
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "ap_filter_provider_t", file: !111, line: 200, flags: DIFlagFwdDecl)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "ftype", scope: !552, file: !111, line: 243, baseType: !595, size: 32, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_filter_type", file: !111, line: 184, baseType: !119)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !552, file: !111, line: 246, baseType: !36, size: 32, offset: 352)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "proto_flags", scope: !552, file: !111, line: 249, baseType: !18, size: 32, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !547, file: !111, line: 266, baseType: !42, size: 64, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !547, file: !111, line: 269, baseType: !564, size: 64, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !547, file: !111, line: 275, baseType: !351, size: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !547, file: !111, line: 280, baseType: !357, size: 64, offset: 256)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "output_filters", scope: !359, file: !128, line: 1190, baseType: !546, size: 64, offset: 896)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sbh", scope: !359, file: !128, line: 1192, baseType: !42, size: 64, offset: 960)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_alloc", scope: !359, file: !128, line: 1194, baseType: !605, size: 64, offset: 1024)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !359, file: !128, line: 1196, baseType: !607, size: 64, offset: 1088)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_state_t", file: !128, line: 813, baseType: !609)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conn_state_t", file: !128, line: 1273, size: 64, elements: !610)
!610 = !{!611, !613}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !609, file: !128, line: 1275, baseType: !612, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_state_e", file: !128, line: 1262, baseType: !127)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "sense", scope: !609, file: !128, line: 1277, baseType: !614, size: 32, offset: 32)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_sense_e", file: !128, line: 1268, baseType: !139)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "data_in_input_filters", scope: !359, file: !128, line: 1198, baseType: !36, size: 32, offset: 1152)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "data_in_output_filters", scope: !359, file: !128, line: 1200, baseType: !36, size: 32, offset: 1184)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "clogging_input_filters", scope: !359, file: !128, line: 1205, baseType: !18, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "double_reverse", scope: !359, file: !128, line: 1209, baseType: !36, size: 2, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "aborted", scope: !359, file: !128, line: 1212, baseType: !18, size: 32, offset: 1248)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !359, file: !128, line: 1216, baseType: !621, size: 32, offset: 1280)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_conn_keepalive_e", file: !128, line: 1140, baseType: !144)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "keepalives", scope: !359, file: !128, line: 1219, baseType: !36, size: 32, offset: 1312)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !359, file: !128, line: 1223, baseType: !624, size: 64, offset: 1344)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "log_id", scope: !359, file: !128, line: 1228, baseType: !33, size: 64, offset: 1408)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "current_thread", scope: !359, file: !128, line: 1237, baseType: !628, size: 64, offset: 1472)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_thread_t", file: !630, line: 178, baseType: !631)
!630 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_thread_proc.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "86521d0dbb7f1fbad577c4bb2abede6c")
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_thread_t", file: !630, line: 178, flags: DIFlagFwdDecl)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !359, file: !128, line: 1241, baseType: !357, size: 64, offset: 1536)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "outgoing", scope: !359, file: !128, line: 1243, baseType: !36, size: 32, offset: 1600)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !353, file: !128, line: 844, baseType: !363, size: 64, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !128, line: 847, baseType: !351, size: 64, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !353, file: !128, line: 849, baseType: !351, size: 64, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !353, file: !128, line: 853, baseType: !351, size: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "the_request", scope: !353, file: !128, line: 859, baseType: !222, size: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "assbackwards", scope: !353, file: !128, line: 861, baseType: !36, size: 32, offset: 448)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "proxyreq", scope: !353, file: !128, line: 866, baseType: !36, size: 32, offset: 480)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "header_only", scope: !353, file: !128, line: 868, baseType: !36, size: 32, offset: 512)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "proto_num", scope: !353, file: !128, line: 870, baseType: !36, size: 32, offset: 544)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !353, file: !128, line: 872, baseType: !222, size: 64, offset: 576)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !353, file: !128, line: 876, baseType: !33, size: 64, offset: 640)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "request_time", scope: !353, file: !128, line: 879, baseType: !646, size: 64, offset: 704)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_time_t", file: !504, line: 45, baseType: !505)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "status_line", scope: !353, file: !128, line: 882, baseType: !33, size: 64, offset: 768)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !353, file: !128, line: 884, baseType: !36, size: 32, offset: 832)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "method_number", scope: !353, file: !128, line: 891, baseType: !36, size: 32, offset: 864)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !353, file: !128, line: 893, baseType: !33, size: 64, offset: 896)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !353, file: !128, line: 915, baseType: !505, size: 64, offset: 960)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_xmethods", scope: !353, file: !128, line: 917, baseType: !513, size: 64, offset: 1024)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_methods", scope: !353, file: !128, line: 919, baseType: !654, size: 64, offset: 1088)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_method_list_t", file: !128, line: 634, baseType: !656)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_method_list_t", file: !128, line: 643, size: 128, elements: !657)
!657 = !{!658, !659}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "method_mask", scope: !656, file: !128, line: 645, baseType: !505, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "method_list", scope: !656, file: !128, line: 647, baseType: !513, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "sent_bodyct", scope: !353, file: !128, line: 922, baseType: !71, size: 64, offset: 1152)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_sent", scope: !353, file: !128, line: 924, baseType: !71, size: 64, offset: 1216)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !353, file: !128, line: 926, baseType: !646, size: 64, offset: 1280)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !353, file: !128, line: 931, baseType: !33, size: 64, offset: 1344)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "clength", scope: !353, file: !128, line: 933, baseType: !71, size: 64, offset: 1408)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !353, file: !128, line: 935, baseType: !36, size: 32, offset: 1472)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "read_body", scope: !353, file: !128, line: 940, baseType: !36, size: 32, offset: 1504)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "read_chunked", scope: !353, file: !128, line: 942, baseType: !36, size: 32, offset: 1536)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "expecting_100", scope: !353, file: !128, line: 944, baseType: !18, size: 32, offset: 1568)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "kept_body", scope: !353, file: !128, line: 946, baseType: !566, size: 64, offset: 1600)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "body_table", scope: !353, file: !128, line: 950, baseType: !542, size: 64, offset: 1664)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "remaining", scope: !353, file: !128, line: 952, baseType: !71, size: 64, offset: 1728)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "read_length", scope: !353, file: !128, line: 954, baseType: !71, size: 64, offset: 1792)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "headers_in", scope: !353, file: !128, line: 969, baseType: !542, size: 64, offset: 1856)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "headers_out", scope: !353, file: !128, line: 971, baseType: !542, size: 64, offset: 1920)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "err_headers_out", scope: !353, file: !128, line: 974, baseType: !542, size: 64, offset: 1984)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "subprocess_env", scope: !353, file: !128, line: 976, baseType: !542, size: 64, offset: 2048)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !353, file: !128, line: 978, baseType: !542, size: 64, offset: 2112)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !353, file: !128, line: 985, baseType: !33, size: 64, offset: 2176)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !353, file: !128, line: 987, baseType: !33, size: 64, offset: 2240)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "content_encoding", scope: !353, file: !128, line: 990, baseType: !33, size: 64, offset: 2304)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "content_languages", scope: !353, file: !128, line: 992, baseType: !513, size: 64, offset: 2368)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "vlist_validator", scope: !353, file: !128, line: 995, baseType: !222, size: 64, offset: 2432)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !353, file: !128, line: 998, baseType: !222, size: 64, offset: 2496)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ap_auth_type", scope: !353, file: !128, line: 1000, baseType: !222, size: 64, offset: 2560)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "unparsed_uri", scope: !353, file: !128, line: 1007, baseType: !222, size: 64, offset: 2624)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !353, file: !128, line: 1009, baseType: !222, size: 64, offset: 2688)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !353, file: !128, line: 1011, baseType: !222, size: 64, offset: 2752)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "canonical_filename", scope: !353, file: !128, line: 1015, baseType: !222, size: 64, offset: 2816)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "path_info", scope: !353, file: !128, line: 1017, baseType: !222, size: 64, offset: 2880)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !353, file: !128, line: 1019, baseType: !222, size: 64, offset: 2944)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "used_path_info", scope: !353, file: !128, line: 1029, baseType: !36, size: 32, offset: 3008)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "eos_sent", scope: !353, file: !128, line: 1032, baseType: !36, size: 32, offset: 3040)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "per_dir_config", scope: !353, file: !128, line: 1040, baseType: !394, size: 64, offset: 3072)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "request_config", scope: !353, file: !128, line: 1042, baseType: !394, size: 64, offset: 3136)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !353, file: !128, line: 1047, baseType: !624, size: 64, offset: 3200)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "log_id", scope: !353, file: !128, line: 1052, baseType: !33, size: 64, offset: 3264)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "htaccess", scope: !353, file: !128, line: 1060, baseType: !698, size: 64, offset: 3328)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !700)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htaccess_result", file: !128, line: 781, size: 320, elements: !701)
!701 = !{!702, !703, !704, !705, !706, !707}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !700, file: !128, line: 783, baseType: !33, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "override", scope: !700, file: !128, line: 785, baseType: !36, size: 32, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "override_opts", scope: !700, file: !128, line: 787, baseType: !36, size: 32, offset: 96)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "override_list", scope: !700, file: !128, line: 789, baseType: !542, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "htaccess", scope: !700, file: !128, line: 791, baseType: !394, size: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !700, file: !128, line: 793, baseType: !698, size: 64, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "output_filters", scope: !353, file: !128, line: 1063, baseType: !546, size: 64, offset: 3392)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "input_filters", scope: !353, file: !128, line: 1065, baseType: !546, size: 64, offset: 3456)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "proto_output_filters", scope: !353, file: !128, line: 1069, baseType: !546, size: 64, offset: 3520)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "proto_input_filters", scope: !353, file: !128, line: 1072, baseType: !546, size: 64, offset: 3584)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "no_cache", scope: !353, file: !128, line: 1075, baseType: !36, size: 32, offset: 3648)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "no_local_copy", scope: !353, file: !128, line: 1077, baseType: !36, size: 32, offset: 3680)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "invoke_mtx", scope: !353, file: !128, line: 1082, baseType: !715, size: 64, offset: 3712)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_thread_mutex_t", file: !717, line: 41, baseType: !718)
!717 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_thread_mutex.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "333d6b386ebd5ebf2a57c53b3ab4b684")
!718 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_thread_mutex_t", file: !717, line: 41, flags: DIFlagFwdDecl)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "parsed_uri", scope: !353, file: !128, line: 1085, baseType: !720, size: 704, offset: 3776)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_uri_t", file: !721, line: 80, baseType: !722)
!721 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-util-1.6.3-l37sacsnb2zk76xejbzfvftzd4gcjj3o/include/apr-1/apr_uri.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "9269047179f727bd075392a12871b578")
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_uri_t", file: !721, line: 85, size: 704, elements: !723)
!723 = !{!724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !736, !737, !738, !739}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "scheme", scope: !722, file: !721, line: 87, baseType: !222, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "hostinfo", scope: !722, file: !721, line: 89, baseType: !222, size: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !722, file: !721, line: 91, baseType: !222, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !722, file: !721, line: 93, baseType: !222, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !722, file: !721, line: 95, baseType: !222, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "port_str", scope: !722, file: !721, line: 97, baseType: !222, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !722, file: !721, line: 99, baseType: !222, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !722, file: !721, line: 101, baseType: !222, size: 64, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "fragment", scope: !722, file: !721, line: 103, baseType: !222, size: 64, offset: 512)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "hostent", scope: !722, file: !721, line: 106, baseType: !734, size: 64, offset: 576)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DICompositeType(tag: DW_TAG_structure_type, name: "hostent", file: !721, line: 106, flags: DIFlagFwdDecl)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !722, file: !721, line: 109, baseType: !401, size: 16, offset: 640)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "is_initialized", scope: !722, file: !721, line: 112, baseType: !18, size: 1, offset: 656, flags: DIFlagBitField, extraData: i64 656)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "dns_looked_up", scope: !722, file: !721, line: 115, baseType: !18, size: 1, offset: 657, flags: DIFlagBitField, extraData: i64 656)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "dns_resolved", scope: !722, file: !721, line: 117, baseType: !18, size: 1, offset: 658, flags: DIFlagBitField, extraData: i64 656)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "finfo", scope: !353, file: !128, line: 1087, baseType: !741, size: 960, offset: 4480)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_finfo_t", file: !150, line: 143, baseType: !742)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_finfo_t", file: !150, line: 174, size: 960, elements: !743)
!743 = !{!744, !745, !746, !748, !750, !755, !759, !763, !767, !768, !769, !770, !771, !772, !773, !774, !775}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !742, file: !150, line: 176, baseType: !94, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !742, file: !150, line: 179, baseType: !424, size: 32, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "protection", scope: !742, file: !150, line: 181, baseType: !747, size: 32, offset: 96)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_fileperms_t", file: !150, line: 125, baseType: !424)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "filetype", scope: !742, file: !150, line: 186, baseType: !749, size: 32, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_filetype_e", file: !150, line: 72, baseType: !149)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !742, file: !150, line: 188, baseType: !751, size: 32, offset: 160)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_uid_t", file: !752, line: 45, baseType: !753)
!752 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_user.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "724f26fd838740b0ca4b55f59030741b")
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !73, line: 79, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !75, line: 146, baseType: !18)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !742, file: !150, line: 190, baseType: !756, size: 32, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_gid_t", file: !752, line: 54, baseType: !757)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !73, line: 64, baseType: !758)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !75, line: 147, baseType: !18)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !742, file: !150, line: 192, baseType: !760, size: 64, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_ino_t", file: !66, line: 383, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !73, line: 47, baseType: !762)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !75, line: 148, baseType: !69)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !742, file: !150, line: 194, baseType: !764, size: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_dev_t", file: !150, line: 135, baseType: !765)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !73, line: 59, baseType: !766)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !75, line: 145, baseType: !69)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !742, file: !150, line: 196, baseType: !424, size: 32, offset: 384)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !742, file: !150, line: 198, baseType: !71, size: 64, offset: 448)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "csize", scope: !742, file: !150, line: 200, baseType: !71, size: 64, offset: 512)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !742, file: !150, line: 202, baseType: !646, size: 64, offset: 576)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !742, file: !150, line: 204, baseType: !646, size: 64, offset: 640)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !742, file: !150, line: 206, baseType: !646, size: 64, offset: 704)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !742, file: !150, line: 208, baseType: !33, size: 64, offset: 768)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !742, file: !150, line: 210, baseType: !33, size: 64, offset: 832)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "filehand", scope: !742, file: !150, line: 212, baseType: !776, size: 64, offset: 896)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "useragent_addr", scope: !353, file: !128, line: 1093, baseType: !415, size: 64, offset: 5440)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "useragent_ip", scope: !353, file: !128, line: 1094, baseType: !222, size: 64, offset: 5504)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "trailers_in", scope: !353, file: !128, line: 1097, baseType: !542, size: 64, offset: 5568)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "trailers_out", scope: !353, file: !128, line: 1099, baseType: !542, size: 64, offset: 5632)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "useragent_host", scope: !353, file: !128, line: 1104, baseType: !222, size: 64, offset: 5696)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "double_reverse", scope: !353, file: !128, line: 1108, baseType: !36, size: 32, offset: 5760)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "bnotes", scope: !353, file: !128, line: 1113, baseType: !784, size: 64, offset: 5824)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_request_bnotes_t", file: !128, line: 662, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_uint64_t", file: !66, line: 372, baseType: !786)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !447, line: 27, baseType: !787)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !75, line: 45, baseType: !69)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent_resource", scope: !344, file: !17, line: 1962, baseType: !791, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!310, !323, !788}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "is_same_resource", scope: !344, file: !17, line: 1971, baseType: !795, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!36, !323, !323}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "is_parent_resource", scope: !344, file: !17, line: 1981, baseType: !795, size: 64, offset: 256)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "open_stream", scope: !344, file: !17, line: 1990, baseType: !800, size: 64, offset: 320)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!310, !323, !803, !804}
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_stream_mode", file: !17, line: 1905, baseType: !161)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_stream", file: !17, line: 1900, baseType: !807)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "dav_stream", file: !17, line: 1900, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "close_stream", scope: !344, file: !17, line: 2010, baseType: !809, size: 64, offset: 384)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!310, !805, !36}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "write_stream", scope: !344, file: !17, line: 2017, baseType: !813, size: 64, offset: 448)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!310, !805, !816, !65}
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "seek_stream", scope: !344, file: !17, line: 2027, baseType: !819, size: 64, offset: 512)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!310, !805, !71}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "set_headers", scope: !344, file: !17, line: 2040, baseType: !823, size: 64, offset: 576)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!310, !351, !323}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "deliver", scope: !344, file: !17, line: 2056, baseType: !827, size: 64, offset: 640)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!310, !323, !564}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "create_collection", scope: !344, file: !17, line: 2065, baseType: !831, size: 64, offset: 704)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!310, !789}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "copy_resource", scope: !344, file: !17, line: 2082, baseType: !835, size: 64, offset: 768)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!310, !323, !789, !36, !838}
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_response", file: !17, line: 188, baseType: !841)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dav_response", file: !17, line: 492, size: 384, elements: !842)
!842 = !{!843, !844, !845, !851, !852}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !841, file: !17, line: 494, baseType: !33, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !841, file: !17, line: 495, baseType: !33, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "propresult", scope: !841, file: !17, line: 498, baseType: !846, size: 128, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_get_props_result", file: !17, line: 489, baseType: !847)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 485, size: 128, elements: !848)
!848 = !{!849, !850}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "propstats", scope: !847, file: !17, line: 487, baseType: !195, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "xmlns", scope: !847, file: !17, line: 488, baseType: !195, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !841, file: !17, line: 500, baseType: !36, size: 32, offset: 256)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !841, file: !17, line: 502, baseType: !853, size: 64, offset: 320)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "move_resource", scope: !344, file: !17, line: 2097, baseType: !855, size: 64, offset: 832)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!310, !789, !789, !838}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "remove_resource", scope: !344, file: !17, line: 2110, baseType: !859, size: 64, offset: 896)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!310, !789, !838}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "walk", scope: !344, file: !17, line: 2126, baseType: !863, size: 64, offset: 960)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!310, !866, !36, !838}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !868)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_walk_params", file: !17, line: 1840, baseType: !869)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 1820, size: 384, elements: !870)
!870 = !{!871, !872, !884, !885, !886, !887}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !869, file: !17, line: 1822, baseType: !36, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !869, file: !17, line: 1828, baseType: !873, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!310, !876, !36}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_walk_resource", file: !17, line: 1818, baseType: !878)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 1804, size: 256, elements: !879)
!879 = !{!880, !881, !882, !883}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "walk_ctx", scope: !878, file: !17, line: 1807, baseType: !42, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !878, file: !17, line: 1810, baseType: !94, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !878, file: !17, line: 1813, baseType: !323, size: 64, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !878, file: !17, line: 1816, baseType: !839, size: 64, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "walk_ctx", scope: !869, file: !17, line: 1829, baseType: !42, size: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !869, file: !17, line: 1832, baseType: !94, size: 64, offset: 192)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !869, file: !17, line: 1835, baseType: !323, size: 64, offset: 256)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "lockdb", scope: !869, file: !17, line: 1838, baseType: !888, size: 64, offset: 320)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_lockdb", file: !17, line: 1340, baseType: !890)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 1333, size: 192, elements: !891)
!891 = !{!892, !1003, !1004}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "hooks", scope: !890, file: !17, line: 1335, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !895)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_hooks_locks", file: !17, line: 268, baseType: !896)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dav_hooks_locks", file: !17, line: 1473, size: 1024, elements: !897)
!897 = !{!898, !902, !910, !916, !920, !925, !929, !933, !963, !967, !971, !975, !981, !985, !997, !1002}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "get_supportedlock", scope: !896, file: !17, line: 1476, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!33, !323}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "parse_locktoken", scope: !896, file: !17, line: 1483, baseType: !903, size: 64, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{!310, !94, !33, !906}
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_locktoken", file: !17, line: 428, baseType: !909)
!909 = !DICompositeType(tag: DW_TAG_structure_type, name: "dav_locktoken", file: !17, line: 428, flags: DIFlagFwdDecl)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "format_locktoken", scope: !896, file: !17, line: 1494, baseType: !911, size: 64, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!33, !94, !914}
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !908)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "compare_locktoken", scope: !896, file: !17, line: 1505, baseType: !917, size: 64, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!36, !914, !914}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "open_lockdb", scope: !896, file: !17, line: 1527, baseType: !921, size: 64, offset: 256)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!310, !351, !36, !36, !924}
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "close_lockdb", scope: !896, file: !17, line: 1535, baseType: !926, size: 64, offset: 320)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{null, !888}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "remove_locknull_state", scope: !896, file: !17, line: 1540, baseType: !930, size: 64, offset: 384)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{!310, !888, !323}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "create_lock", scope: !896, file: !17, line: 1551, baseType: !934, size: 64, offset: 448)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!310, !888, !323, !937}
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_lock", file: !17, line: 1409, baseType: !940)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dav_lock", file: !17, line: 1389, size: 576, elements: !941)
!941 = !{!942, !944, !945, !947, !949, !950, !954, !955, !956, !957, !961}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "rectype", scope: !940, file: !17, line: 1391, baseType: !943, size: 32)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_lock_rectype", file: !17, line: 1357, baseType: !165)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "is_locknull", scope: !940, file: !17, line: 1392, baseType: !36, size: 32, offset: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !940, file: !17, line: 1396, baseType: !946, size: 32, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_lock_scope", file: !17, line: 1346, baseType: !170)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !940, file: !17, line: 1397, baseType: !948, size: 32, offset: 96)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_lock_type", file: !17, line: 1351, baseType: !175)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !940, file: !17, line: 1398, baseType: !36, size: 32, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !940, file: !17, line: 1399, baseType: !951, size: 64, offset: 192)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !952, line: 10, baseType: !953)
!952 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !75, line: 160, baseType: !76)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "locktoken", scope: !940, file: !17, line: 1401, baseType: !914, size: 64, offset: 256)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !940, file: !17, line: 1403, baseType: !33, size: 64, offset: 320)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "auth_user", scope: !940, file: !17, line: 1404, baseType: !33, size: 64, offset: 384)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !940, file: !17, line: 1406, baseType: !958, size: 64, offset: 448)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_lock_private", file: !17, line: 1327, baseType: !960)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "dav_lock_private", file: !17, line: 1327, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !940, file: !17, line: 1408, baseType: !962, size: 64, offset: 512)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "get_locks", scope: !896, file: !17, line: 1565, baseType: !964, size: 64, offset: 512)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{!310, !888, !323, !36, !937}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "find_lock", scope: !896, file: !17, line: 1586, baseType: !968, size: 64, offset: 576)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!310, !888, !323, !914, !36, !937}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "has_locks", scope: !896, file: !17, line: 1601, baseType: !972, size: 64, offset: 640)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!310, !888, !323, !234}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "append_locks", scope: !896, file: !17, line: 1616, baseType: !976, size: 64, offset: 704)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!310, !888, !323, !36, !979}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !939)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "remove_lock", scope: !896, file: !17, line: 1626, baseType: !982, size: 64, offset: 768)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!310, !888, !323, !914}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "refresh_locks", scope: !896, file: !17, line: 1640, baseType: !986, size: 64, offset: 832)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!310, !888, !323, !989, !951, !937}
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !991)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_locktoken_list", file: !17, line: 875, baseType: !992)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dav_locktoken_list", file: !17, line: 871, size: 128, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "locktoken", scope: !992, file: !17, line: 873, baseType: !907, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !992, file: !17, line: 874, baseType: !996, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_resource", scope: !896, file: !17, line: 1662, baseType: !998, size: 64, offset: 896)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!310, !888, !914, !323, !1001}
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !896, file: !17, line: 1671, baseType: !42, size: 64, offset: 960)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ro", scope: !890, file: !17, line: 1336, baseType: !36, size: 32, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !890, file: !17, line: 1338, baseType: !1005, size: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_lockdb_private", file: !17, line: 1322, baseType: !1007)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "dav_lockdb_private", file: !17, line: 1322, flags: DIFlagFwdDecl)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "getetag", scope: !344, file: !17, line: 2130, baseType: !899, size: 64, offset: 1024)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !344, file: !17, line: 2136, baseType: !42, size: 64, offset: 1088)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "get_request_rec", scope: !344, file: !17, line: 2139, baseType: !1011, size: 64, offset: 1152)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!351, !323}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "get_pathname", scope: !344, file: !17, line: 2142, baseType: !899, size: 64, offset: 1216)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !326, file: !17, line: 419, baseType: !94, size: 64, offset: 384)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_db", file: !17, line: 1196, baseType: !1019)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dav_db", file: !2, line: 52, size: 832, elements: !1020)
!1020 = !{!1021, !1022, !1027, !1028, !1035, !1037, !1038, !1043, !1044}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !1019, file: !2, line: 53, baseType: !94, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1019, file: !2, line: 54, baseType: !1023, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_dbm_t", file: !1025, line: 42, baseType: !1026)
!1025 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-util-1.6.3-l37sacsnb2zk76xejbzfvftzd4gcjj3o/include/apr-1/apr_dbm.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "e0dd97ccc244987925467af46d041eb9")
!1026 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_dbm_t", file: !1025, line: 42, flags: DIFlagFwdDecl)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1019, file: !2, line: 58, baseType: !36, size: 32, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "ns_table", scope: !1019, file: !2, line: 60, baseType: !1029, size: 192, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_buffer", file: !17, line: 449, baseType: !1030)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 444, size: 192, elements: !1031)
!1031 = !{!1032, !1033, !1034}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_len", scope: !1030, file: !17, line: 446, baseType: !65, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "cur_len", scope: !1030, file: !17, line: 447, baseType: !65, size: 64, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1030, file: !17, line: 448, baseType: !222, size: 64, offset: 128)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "ns_count", scope: !1019, file: !2, line: 61, baseType: !1036, size: 16, offset: 384)
!1036 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ns_table_dirty", scope: !1019, file: !2, line: 62, baseType: !36, size: 32, offset: 416)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "uri_index", scope: !1019, file: !2, line: 63, baseType: !1039, size: 64, offset: 448)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_hash_t", file: !1041, line: 52, baseType: !1042)
!1041 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_hash.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "200f319f929840eb1031e0c6813d7a15")
!1042 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_hash_t", file: !1041, line: 52, flags: DIFlagFwdDecl)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "wb_key", scope: !1019, file: !2, line: 65, baseType: !1029, size: 192, offset: 512)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1019, file: !2, line: 67, baseType: !1045, size: 128, offset: 704)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_datum_t", file: !1025, line: 53, baseType: !1046)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1025, line: 47, size: 128, elements: !1047)
!1047 = !{!1048, !1049}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "dptr", scope: !1046, file: !1025, line: 50, baseType: !222, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "dsize", scope: !1046, file: !1025, line: 52, baseType: !65, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !304, file: !17, line: 1210, baseType: !1051, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{null, !1017}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "define_namespaces", scope: !304, file: !17, line: 1224, baseType: !1055, size: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!310, !1017, !1058}
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_xmlns_info", file: !17, line: 617, baseType: !1060)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 612, size: 256, elements: !1061)
!1061 = !{!1062, !1063, !1064, !1065}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !1060, file: !17, line: 613, baseType: !94, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "uri_prefix", scope: !1060, file: !17, line: 614, baseType: !1039, size: 64, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_uri", scope: !1060, file: !17, line: 615, baseType: !1039, size: 64, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1060, file: !17, line: 616, baseType: !36, size: 32, offset: 192)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "output_value", scope: !304, file: !17, line: 1238, baseType: !1067, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!310, !1017, !1070, !1058, !1077, !234}
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1072)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_prop_name", file: !17, line: 1203, baseType: !1073)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 1200, size: 128, elements: !1074)
!1074 = !{!1075, !1076}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1073, file: !17, line: 1201, baseType: !33, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1073, file: !17, line: 1202, baseType: !33, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "map_namespaces", scope: !304, file: !17, line: 1257, baseType: !1079, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!310, !1017, !1082, !1084}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !514)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_namespace_map", file: !17, line: 1197, baseType: !1087)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dav_namespace_map", file: !2, line: 317, size: 64, elements: !1088)
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ns_map", scope: !1087, file: !2, line: 318, baseType: !234, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !304, file: !17, line: 1269, baseType: !1091, size: 64, offset: 320)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!310, !1017, !1070, !1094, !1085}
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !304, file: !17, line: 1274, baseType: !1097, size: 64, offset: 384)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!310, !1017, !1070}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !304, file: !17, line: 1277, baseType: !1101, size: 64, offset: 448)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!36, !1017, !1070}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "first_name", scope: !304, file: !17, line: 1286, baseType: !1105, size: 64, offset: 512)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!310, !1017, !1108}
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "next_name", scope: !304, file: !17, line: 1287, baseType: !1105, size: 64, offset: 576)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "get_rollback", scope: !304, file: !17, line: 1296, baseType: !1111, size: 64, offset: 640)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!310, !1017, !1070, !1114}
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_deadprop_rollback", file: !17, line: 1198, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dav_deadprop_rollback", file: !2, line: 312, size: 256, elements: !1118)
!1118 = !{!1119, !1120}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1117, file: !2, line: 313, baseType: !1045, size: 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1117, file: !2, line: 314, baseType: !1045, size: 128, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "apply_rollback", scope: !304, file: !17, line: 1298, baseType: !1122, size: 64, offset: 704)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!310, !1017, !1115}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !304, file: !17, line: 1305, baseType: !42, size: 64, offset: 768)
!1126 = !{i32 7, !"Dwarf Version", i32 5}
!1127 = !{i32 2, !"Debug Info Version", i32 3}
!1128 = !{i32 1, !"wchar_size", i32 4}
!1129 = !{i32 8, !"PIC Level", i32 2}
!1130 = !{i32 7, !"uwtable", i32 2}
!1131 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!1132 = distinct !DISubprogram(name: "dav_dbm_get_statefiles", scope: !2, file: !2, line: 78, type: !1133, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1135)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{null, !94, !33, !83, !83}
!1135 = !{!1136, !1137, !1138, !1139}
!1136 = !DILocalVariable(name: "p", arg: 1, scope: !1132, file: !2, line: 78, type: !94)
!1137 = !DILocalVariable(name: "fname", arg: 2, scope: !1132, file: !2, line: 78, type: !33)
!1138 = !DILocalVariable(name: "state1", arg: 3, scope: !1132, file: !2, line: 79, type: !83)
!1139 = !DILocalVariable(name: "state2", arg: 4, scope: !1132, file: !2, line: 79, type: !83)
!1140 = !{!1141, !1141, i64 0}
!1141 = !{!"any pointer", !1142, i64 0}
!1142 = !{!"omnipotent char", !1143, i64 0}
!1143 = !{!"Simple C/C++ TBAA"}
!1144 = !DILocation(line: 78, column: 41, scope: !1132)
!1145 = !DILocation(line: 78, column: 56, scope: !1132)
!1146 = !DILocation(line: 79, column: 42, scope: !1132)
!1147 = !DILocation(line: 79, column: 63, scope: !1132)
!1148 = !DILocation(line: 81, column: 9, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 81, column: 9)
!1150 = !DILocation(line: 81, column: 15, scope: !1149)
!1151 = !DILocation(line: 81, column: 9, scope: !1132)
!1152 = !DILocation(line: 82, column: 15, scope: !1149)
!1153 = !DILocation(line: 82, column: 9, scope: !1149)
!1154 = !DILocation(line: 84, column: 27, scope: !1132)
!1155 = !DILocation(line: 84, column: 30, scope: !1132)
!1156 = !DILocation(line: 84, column: 37, scope: !1132)
!1157 = !DILocation(line: 84, column: 45, scope: !1132)
!1158 = !DILocation(line: 84, column: 5, scope: !1132)
!1159 = !DILocation(line: 85, column: 1, scope: !1132)
!1160 = !DISubprogram(name: "apr_dbm_get_usednames", scope: !1025, file: !1025, line: 217, type: !1133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1161 = distinct !DISubprogram(name: "dav_fs_ensure_state_dir", scope: !2, file: !2, line: 119, type: !1162, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1164)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !94, !33}
!1164 = !{!1165, !1166, !1167}
!1165 = !DILocalVariable(name: "p", arg: 1, scope: !1161, file: !2, line: 119, type: !94)
!1166 = !DILocalVariable(name: "dirname", arg: 2, scope: !1161, file: !2, line: 119, type: !33)
!1167 = !DILocalVariable(name: "pathname", scope: !1161, file: !2, line: 121, type: !33)
!1168 = !DILocation(line: 119, column: 43, scope: !1161)
!1169 = !DILocation(line: 119, column: 58, scope: !1161)
!1170 = !DILocation(line: 121, column: 5, scope: !1161)
!1171 = !DILocation(line: 121, column: 17, scope: !1161)
!1172 = !DILocation(line: 121, column: 40, scope: !1161)
!1173 = !DILocation(line: 121, column: 43, scope: !1161)
!1174 = !DILocation(line: 121, column: 28, scope: !1161)
!1175 = !DILocation(line: 126, column: 25, scope: !1161)
!1176 = !DILocation(line: 126, column: 51, scope: !1161)
!1177 = !DILocation(line: 126, column: 12, scope: !1161)
!1178 = !DILocation(line: 127, column: 1, scope: !1161)
!1179 = !DISubprogram(name: "apr_pstrcat", scope: !1180, file: !1180, line: 147, type: !1181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1180 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_strings.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "f876519c65276b07631e818685d4ffb3")
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!222, !94, null}
!1183 = !DISubprogram(name: "apr_dir_make", scope: !384, file: !384, line: 901, type: !1184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!47, !33, !747, !94}
!1186 = distinct !DISubprogram(name: "dav_dbm_open_direct", scope: !2, file: !2, line: 132, type: !1187, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1189)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!310, !94, !33, !36, !1016}
!1189 = !{!1190, !1191, !1192, !1193, !1194, !1195}
!1190 = !DILocalVariable(name: "p", arg: 1, scope: !1186, file: !2, line: 132, type: !94)
!1191 = !DILocalVariable(name: "pathname", arg: 2, scope: !1186, file: !2, line: 132, type: !33)
!1192 = !DILocalVariable(name: "ro", arg: 3, scope: !1186, file: !2, line: 132, type: !36)
!1193 = !DILocalVariable(name: "pdb", arg: 4, scope: !1186, file: !2, line: 133, type: !1016)
!1194 = !DILocalVariable(name: "file", scope: !1186, file: !2, line: 139, type: !1023)
!1195 = !DILocalVariable(name: "status", scope: !1186, file: !2, line: 140, type: !47)
!1196 = !DILocation(line: 132, column: 45, scope: !1186)
!1197 = !DILocation(line: 132, column: 60, scope: !1186)
!1198 = !{!1199, !1199, i64 0}
!1199 = !{!"int", !1142, i64 0}
!1200 = !DILocation(line: 132, column: 74, scope: !1186)
!1201 = !DILocation(line: 133, column: 42, scope: !1186)
!1202 = !DILocation(line: 139, column: 5, scope: !1186)
!1203 = !DILocation(line: 139, column: 16, scope: !1186)
!1204 = !DILocation(line: 140, column: 5, scope: !1186)
!1205 = !DILocation(line: 140, column: 18, scope: !1186)
!1206 = !DILocation(line: 142, column: 6, scope: !1186)
!1207 = !DILocation(line: 142, column: 10, scope: !1186)
!1208 = !DILocation(line: 159, column: 39, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 159, column: 9)
!1210 = !DILocation(line: 160, column: 32, scope: !1209)
!1211 = !DILocation(line: 161, column: 48, scope: !1209)
!1212 = !DILocation(line: 159, column: 19, scope: !1209)
!1213 = !DILocation(line: 159, column: 17, scope: !1209)
!1214 = !DILocation(line: 162, column: 17, scope: !1209)
!1215 = !DILocation(line: 163, column: 9, scope: !1209)
!1216 = !DILocation(line: 163, column: 13, scope: !1209)
!1217 = !DILocation(line: 159, column: 9, scope: !1186)
!1218 = !DILocation(line: 168, column: 39, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 163, column: 17)
!1220 = !DILocation(line: 168, column: 42, scope: !1219)
!1221 = !DILocation(line: 168, column: 16, scope: !1219)
!1222 = !DILocation(line: 168, column: 9, scope: !1219)
!1223 = !DILocation(line: 173, column: 9, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 173, column: 9)
!1225 = !DILocation(line: 173, column: 14, scope: !1224)
!1226 = !DILocation(line: 173, column: 9, scope: !1186)
!1227 = !DILocation(line: 175, column: 16, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1224, file: !2, line: 173, column: 23)
!1229 = !DILocation(line: 175, column: 10, scope: !1228)
!1230 = !DILocation(line: 175, column: 14, scope: !1228)
!1231 = !DILocation(line: 176, column: 24, scope: !1228)
!1232 = !DILocation(line: 176, column: 11, scope: !1228)
!1233 = !DILocation(line: 176, column: 10, scope: !1228)
!1234 = !DILocation(line: 176, column: 17, scope: !1228)
!1235 = !DILocation(line: 176, column: 22, scope: !1228)
!1236 = !{!1237, !1141, i64 0}
!1237 = !{!"dav_db", !1141, i64 0, !1141, i64 8, !1199, i64 16, !1238, i64 24, !1240, i64 48, !1199, i64 52, !1141, i64 56, !1238, i64 64, !1241, i64 88}
!1238 = !{!"", !1239, i64 0, !1239, i64 8, !1141, i64 16}
!1239 = !{!"long", !1142, i64 0}
!1240 = !{!"short", !1142, i64 0}
!1241 = !{!"", !1141, i64 0, !1239, i64 8}
!1242 = !DILocation(line: 177, column: 24, scope: !1228)
!1243 = !DILocation(line: 177, column: 11, scope: !1228)
!1244 = !DILocation(line: 177, column: 10, scope: !1228)
!1245 = !DILocation(line: 177, column: 17, scope: !1228)
!1246 = !DILocation(line: 177, column: 22, scope: !1228)
!1247 = !{!1237, !1141, i64 8}
!1248 = !DILocation(line: 178, column: 5, scope: !1228)
!1249 = !DILocation(line: 180, column: 5, scope: !1186)
!1250 = !DILocation(line: 181, column: 1, scope: !1186)
!1251 = !DISubprogram(name: "apr_dbm_open", scope: !1025, file: !1025, line: 111, type: !1252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!47, !1254, !33, !424, !747, !94}
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1255 = distinct !DISubprogram(name: "dav_fs_dbm_error", scope: !2, file: !2, line: 87, type: !1256, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1258)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!310, !1017, !94, !47}
!1258 = !{!1259, !1260, !1261, !1262, !1263, !1264, !1265, !1269}
!1259 = !DILocalVariable(name: "db", arg: 1, scope: !1255, file: !2, line: 87, type: !1017)
!1260 = !DILocalVariable(name: "p", arg: 2, scope: !1255, file: !2, line: 87, type: !94)
!1261 = !DILocalVariable(name: "status", arg: 3, scope: !1255, file: !2, line: 88, type: !47)
!1262 = !DILocalVariable(name: "errcode", scope: !1255, file: !2, line: 90, type: !36)
!1263 = !DILocalVariable(name: "errstr", scope: !1255, file: !2, line: 91, type: !33)
!1264 = !DILocalVariable(name: "err", scope: !1255, file: !2, line: 92, type: !310)
!1265 = !DILocalVariable(name: "errbuf", scope: !1255, file: !2, line: 93, type: !1266)
!1266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1600, elements: !1267)
!1267 = !{!1268}
!1268 = !DISubrange(count: 200)
!1269 = !DILocalVariable(name: "sr__", scope: !1270, file: !2, line: 105, type: !1274)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !2, line: 105, column: 13)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !2, line: 104, column: 13)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 101, column: 21)
!1273 = distinct !DILexicalBlock(scope: !1255, file: !2, line: 101, column: 9)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!1276 = !DILocation(line: 87, column: 45, scope: !1255)
!1277 = !DILocation(line: 87, column: 61, scope: !1255)
!1278 = !DILocation(line: 88, column: 50, scope: !1255)
!1279 = !DILocation(line: 90, column: 5, scope: !1255)
!1280 = !DILocation(line: 90, column: 9, scope: !1255)
!1281 = !DILocation(line: 91, column: 5, scope: !1255)
!1282 = !DILocation(line: 91, column: 17, scope: !1255)
!1283 = !DILocation(line: 92, column: 5, scope: !1255)
!1284 = !DILocation(line: 92, column: 16, scope: !1255)
!1285 = !DILocation(line: 93, column: 5, scope: !1255)
!1286 = !DILocation(line: 93, column: 10, scope: !1255)
!1287 = !DILocation(line: 95, column: 9, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1255, file: !2, line: 95, column: 9)
!1289 = !DILocation(line: 95, column: 16, scope: !1288)
!1290 = !DILocation(line: 95, column: 9, scope: !1255)
!1291 = !DILocation(line: 96, column: 9, scope: !1288)
!1292 = !DILocation(line: 98, column: 9, scope: !1255)
!1293 = !DILocation(line: 98, column: 14, scope: !1255)
!1294 = !DILocation(line: 98, column: 18, scope: !1255)
!1295 = !DILocation(line: 98, column: 25, scope: !1255)
!1296 = !DILocation(line: 98, column: 7, scope: !1255)
!1297 = !DILocation(line: 101, column: 9, scope: !1273)
!1298 = !DILocation(line: 101, column: 12, scope: !1273)
!1299 = !DILocation(line: 101, column: 9, scope: !1255)
!1300 = !DILocation(line: 102, column: 17, scope: !1272)
!1301 = !DILocation(line: 103, column: 16, scope: !1272)
!1302 = !DILocation(line: 104, column: 13, scope: !1271)
!1303 = !DILocation(line: 104, column: 13, scope: !1272)
!1304 = !DILocation(line: 105, column: 13, scope: !1271)
!1305 = !DILocation(line: 105, column: 13, scope: !1270)
!1306 = !DILocation(line: 105, column: 13, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 105, column: 13)
!1308 = !DILocation(line: 107, column: 5, scope: !1272)
!1309 = !DILocation(line: 109, column: 33, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 108, column: 10)
!1311 = !DILocation(line: 109, column: 37, scope: !1310)
!1312 = !DILocation(line: 109, column: 53, scope: !1310)
!1313 = !DILocation(line: 109, column: 16, scope: !1310)
!1314 = !DILocation(line: 110, column: 30, scope: !1310)
!1315 = !DILocation(line: 110, column: 33, scope: !1310)
!1316 = !DILocation(line: 110, column: 18, scope: !1310)
!1317 = !DILocation(line: 110, column: 16, scope: !1310)
!1318 = !DILocation(line: 113, column: 25, scope: !1255)
!1319 = !DILocation(line: 113, column: 56, scope: !1255)
!1320 = !DILocation(line: 113, column: 65, scope: !1255)
!1321 = !DILocation(line: 113, column: 73, scope: !1255)
!1322 = !DILocation(line: 113, column: 11, scope: !1255)
!1323 = !DILocation(line: 113, column: 9, scope: !1255)
!1324 = !DILocation(line: 114, column: 12, scope: !1255)
!1325 = !DILocation(line: 114, column: 5, scope: !1255)
!1326 = !DILocation(line: 115, column: 1, scope: !1255)
!1327 = !DISubprogram(name: "apr_palloc", scope: !96, file: !96, line: 430, type: !1328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!42, !94, !65}
!1330 = distinct !DISubprogram(name: "dav_dbm_close", scope: !2, file: !2, line: 212, type: !1052, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1331)
!1331 = !{!1332}
!1332 = !DILocalVariable(name: "db", arg: 1, scope: !1330, file: !2, line: 212, type: !1017)
!1333 = !DILocation(line: 212, column: 28, scope: !1330)
!1334 = !DILocation(line: 214, column: 19, scope: !1330)
!1335 = !DILocation(line: 214, column: 23, scope: !1330)
!1336 = !DILocation(line: 214, column: 5, scope: !1330)
!1337 = !DILocation(line: 215, column: 1, scope: !1330)
!1338 = !DISubprogram(name: "apr_dbm_close", scope: !1025, file: !1025, line: 119, type: !1339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{null, !1023}
!1341 = distinct !DISubprogram(name: "dav_dbm_fetch", scope: !2, file: !2, line: 217, type: !1342, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1345)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!310, !1017, !1045, !1344}
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1345 = !{!1346, !1347, !1348, !1349}
!1346 = !DILocalVariable(name: "db", arg: 1, scope: !1341, file: !2, line: 217, type: !1017)
!1347 = !DILocalVariable(name: "key", arg: 2, scope: !1341, file: !2, line: 217, type: !1045)
!1348 = !DILocalVariable(name: "pvalue", arg: 3, scope: !1341, file: !2, line: 217, type: !1344)
!1349 = !DILocalVariable(name: "status", scope: !1341, file: !2, line: 219, type: !47)
!1350 = !DILocation(line: 217, column: 35, scope: !1341)
!1351 = !DILocation(line: 217, column: 51, scope: !1341)
!1352 = !DILocation(line: 217, column: 69, scope: !1341)
!1353 = !DILocation(line: 219, column: 5, scope: !1341)
!1354 = !DILocation(line: 219, column: 18, scope: !1341)
!1355 = !DILocation(line: 221, column: 14, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1341, file: !2, line: 221, column: 9)
!1357 = !{!1241, !1141, i64 0}
!1358 = !DILocation(line: 221, column: 10, scope: !1356)
!1359 = !DILocation(line: 221, column: 9, scope: !1341)
!1360 = !DILocation(line: 223, column: 16, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1356, file: !2, line: 221, column: 20)
!1362 = !DILocation(line: 223, column: 9, scope: !1361)
!1363 = !DILocation(line: 224, column: 16, scope: !1361)
!1364 = !DILocation(line: 225, column: 5, scope: !1361)
!1365 = !DILocation(line: 226, column: 32, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1356, file: !2, line: 225, column: 12)
!1367 = !DILocation(line: 226, column: 36, scope: !1366)
!1368 = !DILocation(line: 226, column: 47, scope: !1366)
!1369 = !DILocation(line: 226, column: 18, scope: !1366)
!1370 = !DILocation(line: 226, column: 16, scope: !1366)
!1371 = !DILocation(line: 229, column: 29, scope: !1341)
!1372 = !DILocation(line: 229, column: 39, scope: !1341)
!1373 = !DILocation(line: 229, column: 12, scope: !1341)
!1374 = !DILocation(line: 230, column: 1, scope: !1341)
!1375 = !DILocation(line: 229, column: 5, scope: !1341)
!1376 = !DISubprogram(name: "apr_dbm_fetch", scope: !1025, file: !1025, line: 127, type: !1377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!47, !1023, !1045, !1344}
!1379 = distinct !DISubprogram(name: "dav_dbm_store", scope: !2, file: !2, line: 232, type: !1380, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1382)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!310, !1017, !1045, !1045}
!1382 = !{!1383, !1384, !1385, !1386}
!1383 = !DILocalVariable(name: "db", arg: 1, scope: !1379, file: !2, line: 232, type: !1017)
!1384 = !DILocalVariable(name: "key", arg: 2, scope: !1379, file: !2, line: 232, type: !1045)
!1385 = !DILocalVariable(name: "value", arg: 3, scope: !1379, file: !2, line: 232, type: !1045)
!1386 = !DILocalVariable(name: "status", scope: !1379, file: !2, line: 234, type: !47)
!1387 = !DILocation(line: 232, column: 35, scope: !1379)
!1388 = !DILocation(line: 232, column: 51, scope: !1379)
!1389 = !DILocation(line: 232, column: 68, scope: !1379)
!1390 = !DILocation(line: 234, column: 5, scope: !1379)
!1391 = !DILocation(line: 234, column: 18, scope: !1379)
!1392 = !DILocation(line: 234, column: 41, scope: !1379)
!1393 = !DILocation(line: 234, column: 45, scope: !1379)
!1394 = !DILocation(line: 234, column: 27, scope: !1379)
!1395 = !DILocation(line: 236, column: 29, scope: !1379)
!1396 = !DILocation(line: 236, column: 39, scope: !1379)
!1397 = !DILocation(line: 236, column: 12, scope: !1379)
!1398 = !DILocation(line: 237, column: 1, scope: !1379)
!1399 = !DILocation(line: 236, column: 5, scope: !1379)
!1400 = !DISubprogram(name: "apr_dbm_store", scope: !1025, file: !1025, line: 135, type: !1401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!47, !1023, !1045, !1045}
!1403 = distinct !DISubprogram(name: "dav_dbm_delete", scope: !2, file: !2, line: 239, type: !1404, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1406)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!310, !1017, !1045}
!1406 = !{!1407, !1408, !1409}
!1407 = !DILocalVariable(name: "db", arg: 1, scope: !1403, file: !2, line: 239, type: !1017)
!1408 = !DILocalVariable(name: "key", arg: 2, scope: !1403, file: !2, line: 239, type: !1045)
!1409 = !DILocalVariable(name: "status", scope: !1403, file: !2, line: 241, type: !47)
!1410 = !DILocation(line: 239, column: 36, scope: !1403)
!1411 = !DILocation(line: 239, column: 52, scope: !1403)
!1412 = !DILocation(line: 241, column: 5, scope: !1403)
!1413 = !DILocation(line: 241, column: 18, scope: !1403)
!1414 = !DILocation(line: 241, column: 42, scope: !1403)
!1415 = !DILocation(line: 241, column: 46, scope: !1403)
!1416 = !DILocation(line: 241, column: 27, scope: !1403)
!1417 = !DILocation(line: 243, column: 29, scope: !1403)
!1418 = !DILocation(line: 243, column: 39, scope: !1403)
!1419 = !DILocation(line: 243, column: 12, scope: !1403)
!1420 = !DILocation(line: 244, column: 1, scope: !1403)
!1421 = !DILocation(line: 243, column: 5, scope: !1403)
!1422 = !DISubprogram(name: "apr_dbm_delete", scope: !1025, file: !1025, line: 144, type: !1423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!47, !1023, !1045}
!1425 = distinct !DISubprogram(name: "dav_dbm_exists", scope: !2, file: !2, line: 246, type: !1426, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1428)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!36, !1017, !1045}
!1428 = !{!1429, !1430}
!1429 = !DILocalVariable(name: "db", arg: 1, scope: !1425, file: !2, line: 246, type: !1017)
!1430 = !DILocalVariable(name: "key", arg: 2, scope: !1425, file: !2, line: 246, type: !1045)
!1431 = !DILocation(line: 246, column: 28, scope: !1425)
!1432 = !DILocation(line: 246, column: 44, scope: !1425)
!1433 = !DILocation(line: 248, column: 27, scope: !1425)
!1434 = !DILocation(line: 248, column: 31, scope: !1425)
!1435 = !DILocation(line: 248, column: 12, scope: !1425)
!1436 = !DILocation(line: 248, column: 5, scope: !1425)
!1437 = !DISubprogram(name: "apr_dbm_exists", scope: !1025, file: !1025, line: 151, type: !1438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!36, !1023, !1045}
!1440 = distinct !DISubprogram(name: "dav_dbm_freedatum", scope: !2, file: !2, line: 265, type: !1441, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1443)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{null, !1017, !1045}
!1443 = !{!1444, !1445}
!1444 = !DILocalVariable(name: "db", arg: 1, scope: !1440, file: !2, line: 265, type: !1017)
!1445 = !DILocalVariable(name: "data", arg: 2, scope: !1440, file: !2, line: 265, type: !1045)
!1446 = !DILocation(line: 265, column: 32, scope: !1440)
!1447 = !DILocation(line: 265, column: 48, scope: !1440)
!1448 = !DILocation(line: 267, column: 23, scope: !1440)
!1449 = !DILocation(line: 267, column: 27, scope: !1440)
!1450 = !DILocation(line: 267, column: 5, scope: !1440)
!1451 = !DILocation(line: 268, column: 1, scope: !1440)
!1452 = !DISubprogram(name: "apr_dbm_freedatum", scope: !1025, file: !1025, line: 172, type: !1453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{null, !1023, !1045}
!1455 = distinct !DISubprogram(name: "dav_propdb_open", scope: !2, file: !2, line: 415, type: !308, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1456)
!1456 = !{!1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1474, !1476, !1477}
!1457 = !DILocalVariable(name: "pool", arg: 1, scope: !1455, file: !2, line: 415, type: !94)
!1458 = !DILocalVariable(name: "resource", arg: 2, scope: !1455, file: !2, line: 416, type: !323)
!1459 = !DILocalVariable(name: "ro", arg: 3, scope: !1455, file: !2, line: 416, type: !36)
!1460 = !DILocalVariable(name: "pdb", arg: 4, scope: !1455, file: !2, line: 417, type: !1016)
!1461 = !DILocalVariable(name: "db", scope: !1455, file: !2, line: 419, type: !1017)
!1462 = !DILocalVariable(name: "err", scope: !1455, file: !2, line: 420, type: !310)
!1463 = !DILocalVariable(name: "key", scope: !1455, file: !2, line: 421, type: !1045)
!1464 = !DILocalVariable(name: "value", scope: !1455, file: !2, line: 422, type: !1045)
!1465 = !DILocalVariable(name: "m", scope: !1466, file: !2, line: 447, type: !1468)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !2, line: 446, column: 29)
!1467 = distinct !DILexicalBlock(scope: !1455, file: !2, line: 446, column: 9)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "dav_propdb_metadata", file: !2, line: 310, baseType: !1469)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 279, size: 32, elements: !1470)
!1470 = !{!1471, !1472, !1473}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !1469, file: !2, line: 280, baseType: !457, size: 8)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !1469, file: !2, line: 305, baseType: !457, size: 8, offset: 8)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "ns_count", scope: !1469, file: !2, line: 308, baseType: !1036, size: 16, offset: 16)
!1474 = !DILocalVariable(name: "m", scope: !1475, file: !2, line: 473, type: !1468)
!1475 = distinct !DILexicalBlock(scope: !1467, file: !2, line: 472, column: 10)
!1476 = !DILocalVariable(name: "ns", scope: !1475, file: !2, line: 474, type: !76)
!1477 = !DILocalVariable(name: "uri", scope: !1475, file: !2, line: 475, type: !33)
!1478 = !DILocation(line: 415, column: 48, scope: !1455)
!1479 = !DILocation(line: 416, column: 56, scope: !1455)
!1480 = !DILocation(line: 416, column: 70, scope: !1455)
!1481 = !DILocation(line: 417, column: 45, scope: !1455)
!1482 = !DILocation(line: 419, column: 5, scope: !1455)
!1483 = !DILocation(line: 419, column: 13, scope: !1455)
!1484 = !DILocation(line: 420, column: 5, scope: !1455)
!1485 = !DILocation(line: 420, column: 16, scope: !1455)
!1486 = !DILocation(line: 421, column: 5, scope: !1455)
!1487 = !DILocation(line: 421, column: 17, scope: !1455)
!1488 = !DILocation(line: 422, column: 5, scope: !1455)
!1489 = !DILocation(line: 422, column: 17, scope: !1455)
!1490 = !DILocation(line: 424, column: 6, scope: !1455)
!1491 = !DILocation(line: 424, column: 10, scope: !1455)
!1492 = !DILocation(line: 433, column: 29, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1455, file: !2, line: 433, column: 9)
!1494 = !DILocation(line: 433, column: 35, scope: !1493)
!1495 = !DILocation(line: 433, column: 45, scope: !1493)
!1496 = !DILocation(line: 433, column: 16, scope: !1493)
!1497 = !DILocation(line: 433, column: 14, scope: !1493)
!1498 = !DILocation(line: 433, column: 55, scope: !1493)
!1499 = !DILocation(line: 434, column: 9, scope: !1493)
!1500 = !DILocation(line: 434, column: 12, scope: !1493)
!1501 = !DILocation(line: 434, column: 15, scope: !1493)
!1502 = !DILocation(line: 433, column: 9, scope: !1455)
!1503 = !DILocation(line: 435, column: 16, scope: !1493)
!1504 = !DILocation(line: 435, column: 9, scope: !1493)
!1505 = !DILocation(line: 437, column: 35, scope: !1455)
!1506 = !DILocation(line: 437, column: 21, scope: !1455)
!1507 = !DILocation(line: 437, column: 5, scope: !1455)
!1508 = !DILocation(line: 437, column: 9, scope: !1455)
!1509 = !DILocation(line: 437, column: 19, scope: !1455)
!1510 = !{!1237, !1141, i64 56}
!1511 = !DILocation(line: 439, column: 9, scope: !1455)
!1512 = !DILocation(line: 439, column: 14, scope: !1455)
!1513 = !DILocation(line: 440, column: 9, scope: !1455)
!1514 = !DILocation(line: 440, column: 15, scope: !1455)
!1515 = !{!1241, !1239, i64 8}
!1516 = !DILocation(line: 441, column: 30, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1455, file: !2, line: 441, column: 9)
!1518 = !DILocation(line: 441, column: 16, scope: !1517)
!1519 = !DILocation(line: 441, column: 14, scope: !1517)
!1520 = !DILocation(line: 441, column: 48, scope: !1517)
!1521 = !DILocation(line: 441, column: 9, scope: !1455)
!1522 = !DILocation(line: 443, column: 16, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1517, file: !2, line: 441, column: 57)
!1524 = !DILocation(line: 443, column: 9, scope: !1523)
!1525 = !DILocation(line: 446, column: 15, scope: !1467)
!1526 = !DILocation(line: 446, column: 20, scope: !1467)
!1527 = !DILocation(line: 446, column: 9, scope: !1455)
!1528 = !DILocation(line: 447, column: 9, scope: !1466)
!1529 = !DILocation(line: 447, column: 29, scope: !1466)
!1530 = !DILocation(line: 456, column: 13, scope: !1466)
!1531 = !DILocation(line: 456, column: 18, scope: !1466)
!1532 = !DILocation(line: 457, column: 13, scope: !1466)
!1533 = !DILocation(line: 457, column: 19, scope: !1466)
!1534 = !DILocation(line: 458, column: 28, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1466, file: !2, line: 458, column: 13)
!1536 = !DILocation(line: 458, column: 13, scope: !1535)
!1537 = !DILocation(line: 458, column: 13, scope: !1466)
!1538 = !DILocation(line: 459, column: 27, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !2, line: 458, column: 38)
!1540 = !DILocation(line: 459, column: 13, scope: !1539)
!1541 = !DILocation(line: 462, column: 34, scope: !1539)
!1542 = !DILocation(line: 462, column: 20, scope: !1539)
!1543 = !DILocation(line: 462, column: 13, scope: !1539)
!1544 = !DILocation(line: 469, column: 25, scope: !1466)
!1545 = !DILocation(line: 469, column: 32, scope: !1466)
!1546 = !DILocation(line: 469, column: 36, scope: !1466)
!1547 = !DILocation(line: 469, column: 9, scope: !1466)
!1548 = !DILocation(line: 470, column: 16, scope: !1466)
!1549 = !DILocation(line: 470, column: 20, scope: !1466)
!1550 = !DILocation(line: 470, column: 29, scope: !1466)
!1551 = !{!1237, !1141, i64 40}
!1552 = !DILocation(line: 470, column: 9, scope: !1466)
!1553 = !DILocation(line: 471, column: 5, scope: !1467)
!1554 = !DILocation(line: 471, column: 5, scope: !1466)
!1555 = !DILocation(line: 473, column: 9, scope: !1475)
!1556 = !DILocation(line: 473, column: 29, scope: !1475)
!1557 = !DILocation(line: 474, column: 9, scope: !1475)
!1558 = !DILocation(line: 474, column: 14, scope: !1475)
!1559 = !DILocation(line: 475, column: 9, scope: !1475)
!1560 = !DILocation(line: 475, column: 21, scope: !1475)
!1561 = !DILocation(line: 477, column: 25, scope: !1475)
!1562 = !DILocation(line: 477, column: 32, scope: !1475)
!1563 = !DILocation(line: 477, column: 36, scope: !1475)
!1564 = !DILocation(line: 477, column: 52, scope: !1475)
!1565 = !DILocation(line: 477, column: 9, scope: !1475)
!1566 = !DILocation(line: 478, column: 16, scope: !1475)
!1567 = !DILocation(line: 478, column: 20, scope: !1475)
!1568 = !DILocation(line: 478, column: 29, scope: !1475)
!1569 = !DILocation(line: 478, column: 40, scope: !1475)
!1570 = !DILocation(line: 478, column: 52, scope: !1475)
!1571 = !DILocation(line: 478, column: 9, scope: !1475)
!1572 = !DILocation(line: 480, column: 26, scope: !1475)
!1573 = !DILocation(line: 480, column: 9, scope: !1475)
!1574 = !DILocation(line: 481, column: 15, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1475, file: !2, line: 481, column: 13)
!1576 = !{!1577, !1142, i64 0}
!1577 = !{!"", !1142, i64 0, !1142, i64 1, !1240, i64 2}
!1578 = !DILocation(line: 481, column: 13, scope: !1575)
!1579 = !DILocation(line: 481, column: 21, scope: !1575)
!1580 = !DILocation(line: 481, column: 13, scope: !1475)
!1581 = !DILocation(line: 482, column: 27, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1575, file: !2, line: 481, column: 41)
!1583 = !DILocation(line: 482, column: 13, scope: !1582)
!1584 = !DILocation(line: 484, column: 34, scope: !1582)
!1585 = !DILocation(line: 484, column: 20, scope: !1582)
!1586 = !DILocation(line: 484, column: 13, scope: !1582)
!1587 = !DILocation(line: 489, column: 25, scope: !1475)
!1588 = !{!1577, !1142, i64 1}
!1589 = !DILocation(line: 489, column: 23, scope: !1475)
!1590 = !DILocation(line: 489, column: 9, scope: !1475)
!1591 = !DILocation(line: 489, column: 13, scope: !1475)
!1592 = !DILocation(line: 489, column: 21, scope: !1475)
!1593 = !{!1237, !1199, i64 16}
!1594 = !DILocation(line: 490, column: 24, scope: !1475)
!1595 = !{!1577, !1240, i64 2}
!1596 = !DILocation(line: 490, column: 9, scope: !1475)
!1597 = !DILocation(line: 490, column: 13, scope: !1475)
!1598 = !DILocation(line: 490, column: 22, scope: !1475)
!1599 = !{!1237, !1240, i64 48}
!1600 = !DILocation(line: 492, column: 27, scope: !1475)
!1601 = !DILocation(line: 492, column: 9, scope: !1475)
!1602 = !DILocation(line: 495, column: 17, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1475, file: !2, line: 495, column: 9)
!1604 = !{!1239, !1239, i64 0}
!1605 = !DILocation(line: 495, column: 28, scope: !1603)
!1606 = !DILocation(line: 495, column: 32, scope: !1603)
!1607 = !DILocation(line: 495, column: 41, scope: !1603)
!1608 = !DILocation(line: 495, column: 45, scope: !1603)
!1609 = !DILocation(line: 495, column: 26, scope: !1603)
!1610 = !DILocation(line: 495, column: 14, scope: !1603)
!1611 = !DILocation(line: 496, column: 16, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1603, file: !2, line: 495, column: 9)
!1613 = !DILocation(line: 496, column: 21, scope: !1612)
!1614 = !DILocation(line: 496, column: 25, scope: !1612)
!1615 = !DILocation(line: 496, column: 19, scope: !1612)
!1616 = !DILocation(line: 495, column: 9, scope: !1603)
!1617 = !DILocation(line: 500, column: 26, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 497, column: 38)
!1619 = !DILocation(line: 500, column: 30, scope: !1618)
!1620 = !DILocation(line: 501, column: 38, scope: !1618)
!1621 = !DILocation(line: 501, column: 44, scope: !1618)
!1622 = !DILocation(line: 501, column: 26, scope: !1618)
!1623 = !DILocation(line: 502, column: 34, scope: !1618)
!1624 = !DILocation(line: 502, column: 26, scope: !1618)
!1625 = !DILocation(line: 500, column: 13, scope: !1618)
!1626 = !DILocation(line: 503, column: 9, scope: !1618)
!1627 = !DILocation(line: 497, column: 28, scope: !1612)
!1628 = !DILocation(line: 497, column: 21, scope: !1612)
!1629 = !DILocation(line: 497, column: 33, scope: !1612)
!1630 = !DILocation(line: 497, column: 18, scope: !1612)
!1631 = !DILocation(line: 495, column: 9, scope: !1612)
!1632 = distinct !{!1632, !1616, !1633, !1634}
!1633 = !DILocation(line: 503, column: 9, scope: !1603)
!1634 = !{!"llvm.loop.mustprogress"}
!1635 = !DILocation(line: 504, column: 5, scope: !1467)
!1636 = !DILocation(line: 506, column: 12, scope: !1455)
!1637 = !DILocation(line: 506, column: 6, scope: !1455)
!1638 = !DILocation(line: 506, column: 10, scope: !1455)
!1639 = !DILocation(line: 507, column: 5, scope: !1455)
!1640 = !DILocation(line: 508, column: 1, scope: !1455)
!1641 = distinct !DISubprogram(name: "dav_propdb_close", scope: !2, file: !2, line: 510, type: !1052, scopeLine: 511, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1642)
!1642 = !{!1643, !1644, !1647, !1648, !1649, !1650}
!1643 = !DILocalVariable(name: "db", arg: 1, scope: !1641, file: !2, line: 510, type: !1017)
!1644 = !DILocalVariable(name: "m", scope: !1645, file: !2, line: 514, type: !1468)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !2, line: 513, column: 29)
!1646 = distinct !DILexicalBlock(scope: !1641, file: !2, line: 513, column: 9)
!1647 = !DILocalVariable(name: "key", scope: !1645, file: !2, line: 515, type: !1045)
!1648 = !DILocalVariable(name: "value", scope: !1645, file: !2, line: 516, type: !1045)
!1649 = !DILocalVariable(name: "err", scope: !1645, file: !2, line: 517, type: !310)
!1650 = !DILocalVariable(name: "sr__", scope: !1651, file: !2, line: 534, type: !1274)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !2, line: 534, column: 13)
!1652 = distinct !DILexicalBlock(scope: !1645, file: !2, line: 533, column: 13)
!1653 = !DILocation(line: 510, column: 38, scope: !1641)
!1654 = !DILocation(line: 513, column: 9, scope: !1646)
!1655 = !DILocation(line: 513, column: 13, scope: !1646)
!1656 = !{!1237, !1199, i64 52}
!1657 = !DILocation(line: 513, column: 9, scope: !1641)
!1658 = !DILocation(line: 514, column: 9, scope: !1645)
!1659 = !DILocation(line: 514, column: 29, scope: !1645)
!1660 = !DILocation(line: 515, column: 9, scope: !1645)
!1661 = !DILocation(line: 515, column: 21, scope: !1645)
!1662 = !DILocation(line: 516, column: 9, scope: !1645)
!1663 = !DILocation(line: 516, column: 21, scope: !1645)
!1664 = !DILocation(line: 517, column: 9, scope: !1645)
!1665 = !DILocation(line: 517, column: 20, scope: !1645)
!1666 = !DILocation(line: 519, column: 13, scope: !1645)
!1667 = !DILocation(line: 519, column: 18, scope: !1645)
!1668 = !DILocation(line: 520, column: 13, scope: !1645)
!1669 = !DILocation(line: 520, column: 19, scope: !1645)
!1670 = !DILocation(line: 522, column: 22, scope: !1645)
!1671 = !DILocation(line: 522, column: 26, scope: !1645)
!1672 = !DILocation(line: 522, column: 35, scope: !1645)
!1673 = !DILocation(line: 522, column: 15, scope: !1645)
!1674 = !DILocation(line: 522, column: 20, scope: !1645)
!1675 = !DILocation(line: 523, column: 23, scope: !1645)
!1676 = !DILocation(line: 523, column: 27, scope: !1645)
!1677 = !DILocation(line: 523, column: 36, scope: !1645)
!1678 = !{!1237, !1239, i64 32}
!1679 = !DILocation(line: 523, column: 15, scope: !1645)
!1680 = !DILocation(line: 523, column: 21, scope: !1645)
!1681 = !DILocation(line: 526, column: 11, scope: !1645)
!1682 = !DILocation(line: 526, column: 17, scope: !1645)
!1683 = !DILocation(line: 527, column: 19, scope: !1645)
!1684 = !DILocation(line: 527, column: 23, scope: !1645)
!1685 = !DILocation(line: 527, column: 11, scope: !1645)
!1686 = !DILocation(line: 527, column: 17, scope: !1645)
!1687 = !DILocation(line: 528, column: 22, scope: !1645)
!1688 = !DILocation(line: 528, column: 11, scope: !1645)
!1689 = !DILocation(line: 528, column: 20, scope: !1645)
!1690 = !DILocation(line: 530, column: 16, scope: !1645)
!1691 = !DILocation(line: 530, column: 20, scope: !1645)
!1692 = !DILocation(line: 530, column: 29, scope: !1645)
!1693 = !DILocation(line: 530, column: 9, scope: !1645)
!1694 = !DILocation(line: 532, column: 29, scope: !1645)
!1695 = !DILocation(line: 532, column: 15, scope: !1645)
!1696 = !DILocation(line: 532, column: 13, scope: !1645)
!1697 = !DILocation(line: 533, column: 13, scope: !1652)
!1698 = !DILocation(line: 533, column: 17, scope: !1652)
!1699 = !DILocation(line: 533, column: 13, scope: !1645)
!1700 = !DILocation(line: 534, column: 13, scope: !1652)
!1701 = !DILocation(line: 534, column: 13, scope: !1651)
!1702 = !DILocation(line: 534, column: 13, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1651, file: !2, line: 534, column: 13)
!1704 = !{!1705, !1199, i64 16}
!1705 = !{!"dav_error", !1199, i64 0, !1199, i64 4, !1141, i64 8, !1199, i64 16, !1141, i64 24, !1141, i64 32, !1141, i64 40, !1141, i64 48}
!1706 = !{!1705, !1141, i64 8}
!1707 = !DILocation(line: 536, column: 5, scope: !1646)
!1708 = !DILocation(line: 536, column: 5, scope: !1645)
!1709 = !DILocation(line: 538, column: 19, scope: !1641)
!1710 = !DILocation(line: 538, column: 5, scope: !1641)
!1711 = !DILocation(line: 539, column: 1, scope: !1641)
!1712 = distinct !DISubprogram(name: "dav_propdb_define_namespaces", scope: !2, file: !2, line: 541, type: !1056, scopeLine: 542, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1713)
!1713 = !{!1714, !1715, !1716, !1717}
!1714 = !DILocalVariable(name: "db", arg: 1, scope: !1712, file: !2, line: 541, type: !1017)
!1715 = !DILocalVariable(name: "xi", arg: 2, scope: !1712, file: !2, line: 541, type: !1058)
!1716 = !DILocalVariable(name: "ns", scope: !1712, file: !2, line: 543, type: !36)
!1717 = !DILocalVariable(name: "uri", scope: !1712, file: !2, line: 544, type: !33)
!1718 = !DILocation(line: 541, column: 57, scope: !1712)
!1719 = !DILocation(line: 541, column: 77, scope: !1712)
!1720 = !DILocation(line: 543, column: 5, scope: !1712)
!1721 = !DILocation(line: 543, column: 9, scope: !1712)
!1722 = !DILocation(line: 544, column: 5, scope: !1712)
!1723 = !DILocation(line: 544, column: 17, scope: !1712)
!1724 = !DILocation(line: 544, column: 23, scope: !1712)
!1725 = !DILocation(line: 544, column: 27, scope: !1712)
!1726 = !DILocation(line: 544, column: 36, scope: !1712)
!1727 = !DILocation(line: 544, column: 40, scope: !1712)
!1728 = !DILocation(line: 547, column: 13, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1712, file: !2, line: 547, column: 5)
!1730 = !DILocation(line: 547, column: 10, scope: !1729)
!1731 = !DILocation(line: 547, column: 18, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1729, file: !2, line: 547, column: 5)
!1733 = !DILocation(line: 547, column: 23, scope: !1732)
!1734 = !DILocation(line: 547, column: 27, scope: !1732)
!1735 = !DILocation(line: 547, column: 21, scope: !1732)
!1736 = !DILocation(line: 547, column: 5, scope: !1729)
!1737 = !DILocation(line: 553, column: 14, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !2, line: 553, column: 13)
!1739 = distinct !DILexicalBlock(scope: !1732, file: !2, line: 547, column: 67)
!1740 = !DILocation(line: 553, column: 13, scope: !1738)
!1741 = !{!1142, !1142, i64 0}
!1742 = !DILocation(line: 553, column: 18, scope: !1738)
!1743 = !DILocation(line: 553, column: 13, scope: !1739)
!1744 = !DILocation(line: 554, column: 13, scope: !1738)
!1745 = !DILocation(line: 558, column: 23, scope: !1739)
!1746 = !DILocation(line: 559, column: 36, scope: !1739)
!1747 = !DILocation(line: 559, column: 40, scope: !1739)
!1748 = !{!1749, !1141, i64 0}
!1749 = !{!"", !1141, i64 0, !1141, i64 8, !1141, i64 16, !1199, i64 24}
!1750 = !DILocation(line: 559, column: 54, scope: !1739)
!1751 = !DILocation(line: 559, column: 23, scope: !1739)
!1752 = !DILocation(line: 560, column: 35, scope: !1739)
!1753 = !DILocation(line: 560, column: 39, scope: !1739)
!1754 = !DILocation(line: 560, column: 45, scope: !1739)
!1755 = !DILocation(line: 560, column: 23, scope: !1739)
!1756 = !DILocation(line: 558, column: 9, scope: !1739)
!1757 = !DILocation(line: 561, column: 5, scope: !1739)
!1758 = !DILocation(line: 547, column: 37, scope: !1732)
!1759 = !DILocation(line: 547, column: 57, scope: !1732)
!1760 = !DILocation(line: 547, column: 50, scope: !1732)
!1761 = !DILocation(line: 547, column: 62, scope: !1732)
!1762 = !DILocation(line: 547, column: 47, scope: !1732)
!1763 = !DILocation(line: 547, column: 5, scope: !1732)
!1764 = distinct !{!1764, !1736, !1765, !1634}
!1765 = !DILocation(line: 561, column: 5, scope: !1729)
!1766 = !DILocation(line: 564, column: 1, scope: !1712)
!1767 = !DILocation(line: 563, column: 5, scope: !1712)
!1768 = distinct !DISubprogram(name: "dav_propdb_output_value", scope: !2, file: !2, line: 566, type: !1068, scopeLine: 571, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1769)
!1769 = !{!1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777}
!1770 = !DILocalVariable(name: "db", arg: 1, scope: !1768, file: !2, line: 566, type: !1017)
!1771 = !DILocalVariable(name: "name", arg: 2, scope: !1768, file: !2, line: 567, type: !1070)
!1772 = !DILocalVariable(name: "xi", arg: 3, scope: !1768, file: !2, line: 568, type: !1058)
!1773 = !DILocalVariable(name: "phdr", arg: 4, scope: !1768, file: !2, line: 569, type: !1077)
!1774 = !DILocalVariable(name: "found", arg: 5, scope: !1768, file: !2, line: 570, type: !234)
!1775 = !DILocalVariable(name: "key", scope: !1768, file: !2, line: 572, type: !1045)
!1776 = !DILocalVariable(name: "value", scope: !1768, file: !2, line: 573, type: !1045)
!1777 = !DILocalVariable(name: "err", scope: !1768, file: !2, line: 574, type: !310)
!1778 = !DILocation(line: 566, column: 52, scope: !1768)
!1779 = !DILocation(line: 567, column: 65, scope: !1768)
!1780 = !DILocation(line: 568, column: 60, scope: !1768)
!1781 = !DILocation(line: 569, column: 61, scope: !1768)
!1782 = !DILocation(line: 570, column: 49, scope: !1768)
!1783 = !DILocation(line: 572, column: 5, scope: !1768)
!1784 = !DILocation(line: 572, column: 17, scope: !1768)
!1785 = !DILocation(line: 572, column: 37, scope: !1768)
!1786 = !DILocation(line: 572, column: 41, scope: !1768)
!1787 = !DILocation(line: 572, column: 23, scope: !1768)
!1788 = !DILocation(line: 573, column: 5, scope: !1768)
!1789 = !DILocation(line: 573, column: 17, scope: !1768)
!1790 = !DILocation(line: 574, column: 5, scope: !1768)
!1791 = !DILocation(line: 574, column: 16, scope: !1768)
!1792 = !DILocation(line: 576, column: 30, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1768, file: !2, line: 576, column: 9)
!1794 = !DILocation(line: 576, column: 16, scope: !1793)
!1795 = !DILocation(line: 576, column: 14, scope: !1793)
!1796 = !DILocation(line: 576, column: 48, scope: !1793)
!1797 = !DILocation(line: 576, column: 9, scope: !1768)
!1798 = !DILocation(line: 577, column: 16, scope: !1793)
!1799 = !DILocation(line: 577, column: 9, scope: !1793)
!1800 = !DILocation(line: 578, column: 15, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1768, file: !2, line: 578, column: 9)
!1802 = !DILocation(line: 578, column: 20, scope: !1801)
!1803 = !DILocation(line: 578, column: 9, scope: !1768)
!1804 = !DILocation(line: 579, column: 10, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1801, file: !2, line: 578, column: 29)
!1806 = !DILocation(line: 579, column: 16, scope: !1805)
!1807 = !DILocation(line: 580, column: 9, scope: !1805)
!1808 = !DILocation(line: 582, column: 6, scope: !1768)
!1809 = !DILocation(line: 582, column: 12, scope: !1768)
!1810 = !DILocation(line: 584, column: 21, scope: !1768)
!1811 = !DILocation(line: 584, column: 25, scope: !1768)
!1812 = !DILocation(line: 584, column: 35, scope: !1768)
!1813 = !DILocation(line: 584, column: 47, scope: !1768)
!1814 = !DILocation(line: 584, column: 53, scope: !1768)
!1815 = !DILocation(line: 584, column: 5, scope: !1768)
!1816 = !DILocation(line: 586, column: 23, scope: !1768)
!1817 = !DILocation(line: 586, column: 5, scope: !1768)
!1818 = !DILocation(line: 588, column: 5, scope: !1768)
!1819 = !DILocation(line: 589, column: 1, scope: !1768)
!1820 = distinct !DISubprogram(name: "dav_propdb_map_namespaces", scope: !2, file: !2, line: 591, type: !1080, scopeLine: 595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1821)
!1821 = !{!1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1833, !1834}
!1822 = !DILocalVariable(name: "db", arg: 1, scope: !1820, file: !2, line: 592, type: !1017)
!1823 = !DILocalVariable(name: "namespaces", arg: 2, scope: !1820, file: !2, line: 593, type: !1082)
!1824 = !DILocalVariable(name: "mapping", arg: 3, scope: !1820, file: !2, line: 594, type: !1084)
!1825 = !DILocalVariable(name: "m", scope: !1820, file: !2, line: 596, type: !1085)
!1826 = !DILocalVariable(name: "i", scope: !1820, file: !2, line: 597, type: !36)
!1827 = !DILocalVariable(name: "pmap", scope: !1820, file: !2, line: 598, type: !234)
!1828 = !DILocalVariable(name: "puri", scope: !1820, file: !2, line: 599, type: !83)
!1829 = !DILocalVariable(name: "uri", scope: !1830, file: !2, line: 612, type: !33)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !2, line: 610, column: 26)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !2, line: 608, column: 5)
!1832 = distinct !DILexicalBlock(scope: !1820, file: !2, line: 608, column: 5)
!1833 = !DILocalVariable(name: "uri_len", scope: !1830, file: !2, line: 613, type: !65)
!1834 = !DILocalVariable(name: "ns_id", scope: !1830, file: !2, line: 614, type: !76)
!1835 = !DILocation(line: 592, column: 13, scope: !1820)
!1836 = !DILocation(line: 593, column: 31, scope: !1820)
!1837 = !DILocation(line: 594, column: 25, scope: !1820)
!1838 = !DILocation(line: 596, column: 5, scope: !1820)
!1839 = !DILocation(line: 596, column: 24, scope: !1820)
!1840 = !DILocation(line: 596, column: 39, scope: !1820)
!1841 = !DILocation(line: 596, column: 43, scope: !1820)
!1842 = !DILocation(line: 596, column: 28, scope: !1820)
!1843 = !DILocation(line: 597, column: 5, scope: !1820)
!1844 = !DILocation(line: 597, column: 9, scope: !1820)
!1845 = !DILocation(line: 598, column: 5, scope: !1820)
!1846 = !DILocation(line: 598, column: 10, scope: !1820)
!1847 = !DILocation(line: 599, column: 5, scope: !1820)
!1848 = !DILocation(line: 599, column: 18, scope: !1820)
!1849 = !DILocation(line: 607, column: 35, scope: !1820)
!1850 = !DILocation(line: 607, column: 39, scope: !1820)
!1851 = !DILocation(line: 607, column: 45, scope: !1820)
!1852 = !DILocation(line: 607, column: 57, scope: !1820)
!1853 = !{!1854, !1199, i64 12}
!1854 = !{!"apr_array_header_t", !1141, i64 0, !1199, i64 8, !1199, i64 12, !1199, i64 16, !1141, i64 24}
!1855 = !DILocation(line: 607, column: 63, scope: !1820)
!1856 = !DILocation(line: 607, column: 24, scope: !1820)
!1857 = !DILocation(line: 607, column: 22, scope: !1820)
!1858 = !DILocation(line: 607, column: 5, scope: !1820)
!1859 = !DILocation(line: 607, column: 8, scope: !1820)
!1860 = !DILocation(line: 607, column: 15, scope: !1820)
!1861 = !{!1862, !1141, i64 0}
!1862 = !{!"dav_namespace_map", !1141, i64 0}
!1863 = !DILocation(line: 608, column: 14, scope: !1832)
!1864 = !DILocation(line: 608, column: 26, scope: !1832)
!1865 = !DILocation(line: 608, column: 12, scope: !1832)
!1866 = !DILocation(line: 608, column: 55, scope: !1832)
!1867 = !DILocation(line: 608, column: 67, scope: !1832)
!1868 = !{!1854, !1141, i64 24}
!1869 = !DILocation(line: 608, column: 38, scope: !1832)
!1870 = !DILocation(line: 608, column: 10, scope: !1832)
!1871 = !DILocation(line: 609, column: 11, scope: !1831)
!1872 = !DILocation(line: 609, column: 14, scope: !1831)
!1873 = !DILocation(line: 608, column: 5, scope: !1832)
!1874 = !DILocation(line: 612, column: 9, scope: !1830)
!1875 = !DILocation(line: 612, column: 21, scope: !1830)
!1876 = !DILocation(line: 612, column: 28, scope: !1830)
!1877 = !DILocation(line: 612, column: 27, scope: !1830)
!1878 = !DILocation(line: 613, column: 9, scope: !1830)
!1879 = !DILocation(line: 613, column: 20, scope: !1830)
!1880 = !DILocation(line: 613, column: 37, scope: !1830)
!1881 = !DILocation(line: 613, column: 30, scope: !1830)
!1882 = !DILocation(line: 614, column: 9, scope: !1830)
!1883 = !DILocation(line: 614, column: 14, scope: !1830)
!1884 = !DILocation(line: 614, column: 41, scope: !1830)
!1885 = !DILocation(line: 614, column: 45, scope: !1830)
!1886 = !DILocation(line: 614, column: 56, scope: !1830)
!1887 = !DILocation(line: 614, column: 61, scope: !1830)
!1888 = !DILocation(line: 614, column: 28, scope: !1830)
!1889 = !DILocation(line: 614, column: 22, scope: !1830)
!1890 = !DILocation(line: 616, column: 13, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1830, file: !2, line: 616, column: 13)
!1892 = !DILocation(line: 616, column: 19, scope: !1891)
!1893 = !DILocation(line: 616, column: 13, scope: !1830)
!1894 = !DILocation(line: 617, column: 31, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1891, file: !2, line: 616, column: 25)
!1896 = !DILocation(line: 617, column: 35, scope: !1895)
!1897 = !DILocation(line: 617, column: 42, scope: !1895)
!1898 = !DILocation(line: 617, column: 46, scope: !1895)
!1899 = !DILocation(line: 617, column: 56, scope: !1895)
!1900 = !DILocation(line: 617, column: 64, scope: !1895)
!1901 = !DILocation(line: 617, column: 13, scope: !1895)
!1902 = !DILocation(line: 618, column: 20, scope: !1895)
!1903 = !DILocation(line: 618, column: 24, scope: !1895)
!1904 = !DILocation(line: 618, column: 33, scope: !1895)
!1905 = !DILocation(line: 618, column: 39, scope: !1895)
!1906 = !DILocation(line: 618, column: 43, scope: !1895)
!1907 = !DILocation(line: 618, column: 52, scope: !1895)
!1908 = !DILocation(line: 618, column: 37, scope: !1895)
!1909 = !DILocation(line: 618, column: 61, scope: !1895)
!1910 = !DILocation(line: 618, column: 66, scope: !1895)
!1911 = !DILocation(line: 618, column: 74, scope: !1895)
!1912 = !DILocation(line: 618, column: 13, scope: !1895)
!1913 = !DILocation(line: 619, column: 37, scope: !1895)
!1914 = !DILocation(line: 619, column: 45, scope: !1895)
!1915 = !DILocation(line: 619, column: 13, scope: !1895)
!1916 = !DILocation(line: 619, column: 17, scope: !1895)
!1917 = !DILocation(line: 619, column: 26, scope: !1895)
!1918 = !DILocation(line: 619, column: 34, scope: !1895)
!1919 = !DILocation(line: 623, column: 26, scope: !1895)
!1920 = !DILocation(line: 623, column: 30, scope: !1895)
!1921 = !DILocation(line: 623, column: 53, scope: !1895)
!1922 = !DILocation(line: 623, column: 57, scope: !1895)
!1923 = !DILocation(line: 623, column: 63, scope: !1895)
!1924 = !DILocation(line: 623, column: 41, scope: !1895)
!1925 = !DILocation(line: 623, column: 69, scope: !1895)
!1926 = !DILocation(line: 624, column: 42, scope: !1895)
!1927 = !DILocation(line: 624, column: 46, scope: !1895)
!1928 = !DILocation(line: 624, column: 55, scope: !1895)
!1929 = !DILocation(line: 624, column: 35, scope: !1895)
!1930 = !DILocation(line: 624, column: 26, scope: !1895)
!1931 = !DILocation(line: 623, column: 13, scope: !1895)
!1932 = !DILocation(line: 626, column: 13, scope: !1895)
!1933 = !DILocation(line: 626, column: 17, scope: !1895)
!1934 = !DILocation(line: 626, column: 32, scope: !1895)
!1935 = !DILocation(line: 628, column: 21, scope: !1895)
!1936 = !DILocation(line: 628, column: 25, scope: !1895)
!1937 = !DILocation(line: 628, column: 33, scope: !1895)
!1938 = !DILocation(line: 628, column: 14, scope: !1895)
!1939 = !DILocation(line: 628, column: 19, scope: !1895)
!1940 = !DILocation(line: 629, column: 9, scope: !1895)
!1941 = !DILocation(line: 631, column: 21, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1891, file: !2, line: 630, column: 14)
!1943 = !DILocation(line: 631, column: 27, scope: !1942)
!1944 = !DILocation(line: 631, column: 14, scope: !1942)
!1945 = !DILocation(line: 631, column: 19, scope: !1942)
!1946 = !DILocation(line: 633, column: 5, scope: !1831)
!1947 = !DILocation(line: 633, column: 5, scope: !1830)
!1948 = !DILocation(line: 610, column: 10, scope: !1831)
!1949 = !DILocation(line: 610, column: 18, scope: !1831)
!1950 = !DILocation(line: 608, column: 5, scope: !1831)
!1951 = distinct !{!1951, !1873, !1952, !1634}
!1952 = !DILocation(line: 633, column: 5, scope: !1832)
!1953 = !DILocation(line: 635, column: 16, scope: !1820)
!1954 = !DILocation(line: 635, column: 6, scope: !1820)
!1955 = !DILocation(line: 635, column: 14, scope: !1820)
!1956 = !DILocation(line: 637, column: 1, scope: !1820)
!1957 = !DILocation(line: 636, column: 5, scope: !1820)
!1958 = distinct !DISubprogram(name: "dav_propdb_store", scope: !2, file: !2, line: 639, type: !1092, scopeLine: 642, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1959)
!1959 = !{!1960, !1961, !1962, !1963, !1964, !1965}
!1960 = !DILocalVariable(name: "db", arg: 1, scope: !1958, file: !2, line: 639, type: !1017)
!1961 = !DILocalVariable(name: "name", arg: 2, scope: !1958, file: !2, line: 639, type: !1070)
!1962 = !DILocalVariable(name: "elem", arg: 3, scope: !1958, file: !2, line: 640, type: !1094)
!1963 = !DILocalVariable(name: "mapping", arg: 4, scope: !1958, file: !2, line: 641, type: !1085)
!1964 = !DILocalVariable(name: "key", scope: !1958, file: !2, line: 643, type: !1045)
!1965 = !DILocalVariable(name: "value", scope: !1958, file: !2, line: 644, type: !1045)
!1966 = !DILocation(line: 639, column: 45, scope: !1958)
!1967 = !DILocation(line: 639, column: 70, scope: !1958)
!1968 = !DILocation(line: 640, column: 57, scope: !1958)
!1969 = !DILocation(line: 641, column: 56, scope: !1958)
!1970 = !DILocation(line: 643, column: 5, scope: !1958)
!1971 = !DILocation(line: 643, column: 17, scope: !1958)
!1972 = !DILocation(line: 643, column: 37, scope: !1958)
!1973 = !DILocation(line: 643, column: 41, scope: !1958)
!1974 = !DILocation(line: 643, column: 23, scope: !1958)
!1975 = !DILocation(line: 644, column: 5, scope: !1958)
!1976 = !DILocation(line: 644, column: 17, scope: !1958)
!1977 = !DILocation(line: 653, column: 24, scope: !1958)
!1978 = !DILocation(line: 653, column: 28, scope: !1958)
!1979 = !DILocation(line: 653, column: 50, scope: !1958)
!1980 = !DILocation(line: 653, column: 5, scope: !1958)
!1981 = !DILocation(line: 656, column: 21, scope: !1958)
!1982 = !DILocation(line: 656, column: 25, scope: !1958)
!1983 = !DILocation(line: 656, column: 31, scope: !1958)
!1984 = !DILocation(line: 657, column: 21, scope: !1958)
!1985 = !DILocation(line: 657, column: 30, scope: !1958)
!1986 = !DILocation(line: 658, column: 43, scope: !1958)
!1987 = !DILocation(line: 658, column: 56, scope: !1958)
!1988 = !DILocation(line: 656, column: 5, scope: !1958)
!1989 = !DILocation(line: 660, column: 26, scope: !1958)
!1990 = !DILocation(line: 660, column: 12, scope: !1958)
!1991 = !DILocation(line: 661, column: 1, scope: !1958)
!1992 = !DILocation(line: 660, column: 5, scope: !1958)
!1993 = distinct !DISubprogram(name: "dav_propdb_remove", scope: !2, file: !2, line: 663, type: !1098, scopeLine: 664, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1994)
!1994 = !{!1995, !1996, !1997}
!1995 = !DILocalVariable(name: "db", arg: 1, scope: !1993, file: !2, line: 663, type: !1017)
!1996 = !DILocalVariable(name: "name", arg: 2, scope: !1993, file: !2, line: 663, type: !1070)
!1997 = !DILocalVariable(name: "key", scope: !1993, file: !2, line: 665, type: !1045)
!1998 = !DILocation(line: 663, column: 46, scope: !1993)
!1999 = !DILocation(line: 663, column: 71, scope: !1993)
!2000 = !DILocation(line: 665, column: 5, scope: !1993)
!2001 = !DILocation(line: 665, column: 17, scope: !1993)
!2002 = !DILocation(line: 665, column: 37, scope: !1993)
!2003 = !DILocation(line: 665, column: 41, scope: !1993)
!2004 = !DILocation(line: 665, column: 23, scope: !1993)
!2005 = !DILocation(line: 666, column: 27, scope: !1993)
!2006 = !DILocation(line: 666, column: 12, scope: !1993)
!2007 = !DILocation(line: 667, column: 1, scope: !1993)
!2008 = !DILocation(line: 666, column: 5, scope: !1993)
!2009 = distinct !DISubprogram(name: "dav_propdb_exists", scope: !2, file: !2, line: 669, type: !1102, scopeLine: 670, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2010)
!2010 = !{!2011, !2012, !2013}
!2011 = !DILocalVariable(name: "db", arg: 1, scope: !2009, file: !2, line: 669, type: !1017)
!2012 = !DILocalVariable(name: "name", arg: 2, scope: !2009, file: !2, line: 669, type: !1070)
!2013 = !DILocalVariable(name: "key", scope: !2009, file: !2, line: 671, type: !1045)
!2014 = !DILocation(line: 669, column: 38, scope: !2009)
!2015 = !DILocation(line: 669, column: 63, scope: !2009)
!2016 = !DILocation(line: 671, column: 5, scope: !2009)
!2017 = !DILocation(line: 671, column: 17, scope: !2009)
!2018 = !DILocation(line: 671, column: 37, scope: !2009)
!2019 = !DILocation(line: 671, column: 41, scope: !2009)
!2020 = !DILocation(line: 671, column: 23, scope: !2009)
!2021 = !DILocation(line: 672, column: 27, scope: !2009)
!2022 = !DILocation(line: 672, column: 12, scope: !2009)
!2023 = !DILocation(line: 673, column: 1, scope: !2009)
!2024 = !DILocation(line: 672, column: 5, scope: !2009)
!2025 = distinct !DISubprogram(name: "dav_propdb_first_name", scope: !2, file: !2, line: 729, type: !1106, scopeLine: 730, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2026)
!2026 = !{!2027, !2028, !2029}
!2027 = !DILocalVariable(name: "db", arg: 1, scope: !2025, file: !2, line: 729, type: !1017)
!2028 = !DILocalVariable(name: "pname", arg: 2, scope: !2025, file: !2, line: 729, type: !1108)
!2029 = !DILocalVariable(name: "err", scope: !2025, file: !2, line: 731, type: !310)
!2030 = !DILocation(line: 729, column: 50, scope: !2025)
!2031 = !DILocation(line: 729, column: 69, scope: !2025)
!2032 = !DILocation(line: 731, column: 5, scope: !2025)
!2033 = !DILocation(line: 731, column: 16, scope: !2025)
!2034 = !DILocation(line: 733, column: 33, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2025, file: !2, line: 733, column: 9)
!2036 = !DILocation(line: 733, column: 38, scope: !2035)
!2037 = !DILocation(line: 733, column: 42, scope: !2035)
!2038 = !DILocation(line: 733, column: 16, scope: !2035)
!2039 = !DILocation(line: 733, column: 14, scope: !2035)
!2040 = !DILocation(line: 733, column: 49, scope: !2035)
!2041 = !DILocation(line: 733, column: 9, scope: !2025)
!2042 = !DILocation(line: 734, column: 16, scope: !2035)
!2043 = !DILocation(line: 734, column: 9, scope: !2035)
!2044 = !DILocation(line: 737, column: 9, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2025, file: !2, line: 737, column: 9)
!2046 = !DILocation(line: 737, column: 13, scope: !2045)
!2047 = !DILocation(line: 737, column: 18, scope: !2045)
!2048 = !{!1237, !1141, i64 88}
!2049 = !DILocation(line: 737, column: 23, scope: !2045)
!2050 = !DILocation(line: 737, column: 31, scope: !2045)
!2051 = !DILocation(line: 737, column: 35, scope: !2045)
!2052 = !DILocation(line: 737, column: 39, scope: !2045)
!2053 = !DILocation(line: 737, column: 44, scope: !2045)
!2054 = !DILocation(line: 737, column: 34, scope: !2045)
!2055 = !DILocation(line: 737, column: 49, scope: !2045)
!2056 = !DILocation(line: 737, column: 9, scope: !2025)
!2057 = !DILocation(line: 738, column: 37, scope: !2045)
!2058 = !DILocation(line: 738, column: 41, scope: !2045)
!2059 = !DILocation(line: 738, column: 16, scope: !2045)
!2060 = !DILocation(line: 738, column: 9, scope: !2045)
!2061 = !DILocation(line: 740, column: 18, scope: !2025)
!2062 = !DILocation(line: 740, column: 22, scope: !2025)
!2063 = !DILocation(line: 740, column: 5, scope: !2025)
!2064 = !DILocation(line: 741, column: 5, scope: !2025)
!2065 = !DILocation(line: 742, column: 1, scope: !2025)
!2066 = distinct !DISubprogram(name: "dav_propdb_next_name", scope: !2, file: !2, line: 709, type: !1106, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2067)
!2067 = !{!2068, !2069, !2070}
!2068 = !DILocalVariable(name: "db", arg: 1, scope: !2066, file: !2, line: 709, type: !1017)
!2069 = !DILocalVariable(name: "pname", arg: 2, scope: !2066, file: !2, line: 709, type: !1108)
!2070 = !DILocalVariable(name: "err", scope: !2066, file: !2, line: 711, type: !310)
!2071 = !DILocation(line: 709, column: 49, scope: !2066)
!2072 = !DILocation(line: 709, column: 68, scope: !2066)
!2073 = !DILocation(line: 711, column: 5, scope: !2066)
!2074 = !DILocation(line: 711, column: 16, scope: !2066)
!2075 = !DILocation(line: 715, column: 9, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2066, file: !2, line: 715, column: 9)
!2077 = !DILocation(line: 715, column: 13, scope: !2076)
!2078 = !DILocation(line: 715, column: 18, scope: !2076)
!2079 = !DILocation(line: 715, column: 23, scope: !2076)
!2080 = !DILocation(line: 715, column: 9, scope: !2066)
!2081 = !DILocation(line: 716, column: 27, scope: !2076)
!2082 = !DILocation(line: 716, column: 31, scope: !2076)
!2083 = !DILocation(line: 716, column: 35, scope: !2076)
!2084 = !DILocation(line: 716, column: 9, scope: !2076)
!2085 = !DILocation(line: 718, column: 32, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2066, file: !2, line: 718, column: 9)
!2087 = !DILocation(line: 718, column: 37, scope: !2086)
!2088 = !DILocation(line: 718, column: 41, scope: !2086)
!2089 = !DILocation(line: 718, column: 16, scope: !2086)
!2090 = !DILocation(line: 718, column: 14, scope: !2086)
!2091 = !DILocation(line: 718, column: 48, scope: !2086)
!2092 = !DILocation(line: 718, column: 9, scope: !2066)
!2093 = !DILocation(line: 719, column: 16, scope: !2086)
!2094 = !DILocation(line: 719, column: 9, scope: !2086)
!2095 = !DILocation(line: 722, column: 9, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2066, file: !2, line: 722, column: 9)
!2097 = !DILocation(line: 722, column: 13, scope: !2096)
!2098 = !DILocation(line: 722, column: 18, scope: !2096)
!2099 = !DILocation(line: 722, column: 23, scope: !2096)
!2100 = !DILocation(line: 722, column: 31, scope: !2096)
!2101 = !DILocation(line: 722, column: 35, scope: !2096)
!2102 = !DILocation(line: 722, column: 39, scope: !2096)
!2103 = !DILocation(line: 722, column: 44, scope: !2096)
!2104 = !DILocation(line: 722, column: 34, scope: !2096)
!2105 = !DILocation(line: 722, column: 49, scope: !2096)
!2106 = !DILocation(line: 722, column: 9, scope: !2066)
!2107 = !DILocation(line: 723, column: 37, scope: !2096)
!2108 = !DILocation(line: 723, column: 41, scope: !2096)
!2109 = !DILocation(line: 723, column: 16, scope: !2096)
!2110 = !DILocation(line: 723, column: 9, scope: !2096)
!2111 = !DILocation(line: 725, column: 18, scope: !2066)
!2112 = !DILocation(line: 725, column: 22, scope: !2066)
!2113 = !DILocation(line: 725, column: 5, scope: !2066)
!2114 = !DILocation(line: 726, column: 5, scope: !2066)
!2115 = !DILocation(line: 727, column: 1, scope: !2066)
!2116 = distinct !DISubprogram(name: "dav_propdb_get_rollback", scope: !2, file: !2, line: 744, type: !1112, scopeLine: 747, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2117)
!2117 = !{!2118, !2119, !2120, !2121, !2122, !2123, !2124}
!2118 = !DILocalVariable(name: "db", arg: 1, scope: !2116, file: !2, line: 744, type: !1017)
!2119 = !DILocalVariable(name: "name", arg: 2, scope: !2116, file: !2, line: 745, type: !1070)
!2120 = !DILocalVariable(name: "prollback", arg: 3, scope: !2116, file: !2, line: 746, type: !1114)
!2121 = !DILocalVariable(name: "rb", scope: !2116, file: !2, line: 748, type: !1115)
!2122 = !DILocalVariable(name: "key", scope: !2116, file: !2, line: 749, type: !1045)
!2123 = !DILocalVariable(name: "value", scope: !2116, file: !2, line: 750, type: !1045)
!2124 = !DILocalVariable(name: "err", scope: !2116, file: !2, line: 751, type: !310)
!2125 = !DILocation(line: 744, column: 52, scope: !2116)
!2126 = !DILocation(line: 745, column: 65, scope: !2116)
!2127 = !DILocation(line: 746, column: 68, scope: !2116)
!2128 = !DILocation(line: 748, column: 5, scope: !2116)
!2129 = !DILocation(line: 748, column: 28, scope: !2116)
!2130 = !DILocation(line: 748, column: 33, scope: !2116)
!2131 = !DILocation(line: 749, column: 5, scope: !2116)
!2132 = !DILocation(line: 749, column: 17, scope: !2116)
!2133 = !DILocation(line: 750, column: 5, scope: !2116)
!2134 = !DILocation(line: 750, column: 17, scope: !2116)
!2135 = !DILocation(line: 751, column: 5, scope: !2116)
!2136 = !DILocation(line: 751, column: 16, scope: !2116)
!2137 = !DILocation(line: 753, column: 11, scope: !2116)
!2138 = !DILocation(line: 753, column: 25, scope: !2116)
!2139 = !DILocation(line: 753, column: 29, scope: !2116)
!2140 = !{i64 0, i64 8, !1140, i64 8, i64 8, !1604}
!2141 = !DILocation(line: 754, column: 32, scope: !2116)
!2142 = !DILocation(line: 754, column: 36, scope: !2116)
!2143 = !DILocation(line: 754, column: 46, scope: !2116)
!2144 = !DILocation(line: 754, column: 20, scope: !2116)
!2145 = !DILocation(line: 754, column: 5, scope: !2116)
!2146 = !DILocation(line: 754, column: 9, scope: !2116)
!2147 = !DILocation(line: 754, column: 13, scope: !2116)
!2148 = !DILocation(line: 754, column: 18, scope: !2116)
!2149 = !{!2150, !1141, i64 0}
!2150 = !{!"dav_deadprop_rollback", !1241, i64 0, !1241, i64 16}
!2151 = !DILocation(line: 755, column: 25, scope: !2116)
!2152 = !DILocation(line: 755, column: 5, scope: !2116)
!2153 = !DILocation(line: 755, column: 9, scope: !2116)
!2154 = !DILocation(line: 755, column: 13, scope: !2116)
!2155 = !DILocation(line: 755, column: 19, scope: !2116)
!2156 = !{!2150, !1239, i64 8}
!2157 = !DILocation(line: 757, column: 30, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2116, file: !2, line: 757, column: 9)
!2159 = !DILocation(line: 757, column: 16, scope: !2158)
!2160 = !DILocation(line: 757, column: 14, scope: !2158)
!2161 = !DILocation(line: 757, column: 48, scope: !2158)
!2162 = !DILocation(line: 757, column: 9, scope: !2116)
!2163 = !DILocation(line: 758, column: 16, scope: !2158)
!2164 = !DILocation(line: 758, column: 9, scope: !2158)
!2165 = !DILocation(line: 759, column: 15, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2116, file: !2, line: 759, column: 9)
!2167 = !DILocation(line: 759, column: 20, scope: !2166)
!2168 = !DILocation(line: 759, column: 9, scope: !2116)
!2169 = !DILocation(line: 760, column: 38, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2166, file: !2, line: 759, column: 29)
!2171 = !DILocation(line: 760, column: 42, scope: !2170)
!2172 = !DILocation(line: 760, column: 54, scope: !2170)
!2173 = !DILocation(line: 760, column: 66, scope: !2170)
!2174 = !DILocation(line: 760, column: 26, scope: !2170)
!2175 = !DILocation(line: 760, column: 9, scope: !2170)
!2176 = !DILocation(line: 760, column: 13, scope: !2170)
!2177 = !DILocation(line: 760, column: 19, scope: !2170)
!2178 = !DILocation(line: 760, column: 24, scope: !2170)
!2179 = !{!2150, !1141, i64 16}
!2180 = !DILocation(line: 761, column: 33, scope: !2170)
!2181 = !DILocation(line: 761, column: 9, scope: !2170)
!2182 = !DILocation(line: 761, column: 13, scope: !2170)
!2183 = !DILocation(line: 761, column: 19, scope: !2170)
!2184 = !DILocation(line: 761, column: 25, scope: !2170)
!2185 = !{!2150, !1239, i64 24}
!2186 = !DILocation(line: 762, column: 5, scope: !2170)
!2187 = !DILocation(line: 764, column: 18, scope: !2116)
!2188 = !DILocation(line: 764, column: 6, scope: !2116)
!2189 = !DILocation(line: 764, column: 16, scope: !2116)
!2190 = !DILocation(line: 765, column: 5, scope: !2116)
!2191 = !DILocation(line: 766, column: 1, scope: !2116)
!2192 = distinct !DISubprogram(name: "dav_propdb_apply_rollback", scope: !2, file: !2, line: 768, type: !1123, scopeLine: 770, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2193)
!2193 = !{!2194, !2195}
!2194 = !DILocalVariable(name: "db", arg: 1, scope: !2192, file: !2, line: 768, type: !1017)
!2195 = !DILocalVariable(name: "rollback", arg: 2, scope: !2192, file: !2, line: 769, type: !1115)
!2196 = !DILocation(line: 768, column: 54, scope: !2192)
!2197 = !DILocation(line: 769, column: 69, scope: !2192)
!2198 = !DILocation(line: 771, column: 10, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2192, file: !2, line: 771, column: 9)
!2200 = !DILocation(line: 771, column: 9, scope: !2192)
!2201 = !DILocation(line: 772, column: 9, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2199, file: !2, line: 771, column: 20)
!2203 = !DILocation(line: 775, column: 9, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2192, file: !2, line: 775, column: 9)
!2205 = !DILocation(line: 775, column: 19, scope: !2204)
!2206 = !DILocation(line: 775, column: 25, scope: !2204)
!2207 = !DILocation(line: 775, column: 30, scope: !2204)
!2208 = !DILocation(line: 775, column: 9, scope: !2192)
!2209 = !DILocation(line: 777, column: 31, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2204, file: !2, line: 775, column: 39)
!2211 = !DILocation(line: 777, column: 35, scope: !2210)
!2212 = !DILocation(line: 777, column: 45, scope: !2210)
!2213 = !DILocation(line: 777, column: 16, scope: !2210)
!2214 = !DILocation(line: 778, column: 9, scope: !2210)
!2215 = !DILocation(line: 781, column: 26, scope: !2192)
!2216 = !DILocation(line: 781, column: 30, scope: !2192)
!2217 = !DILocation(line: 781, column: 40, scope: !2192)
!2218 = !DILocation(line: 781, column: 45, scope: !2192)
!2219 = !DILocation(line: 781, column: 55, scope: !2192)
!2220 = !DILocation(line: 781, column: 12, scope: !2192)
!2221 = !DILocation(line: 781, column: 5, scope: !2192)
!2222 = !DILocation(line: 782, column: 1, scope: !2192)
!2223 = !DISubprogram(name: "ap_log_error_", scope: !2224, file: !2224, line: 372, type: !2225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2224 = !DIFile(filename: "include/http_log.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "ce7bde9ead508f1c34c81b1931b44b16")
!2225 = !DISubroutineType(types: !2226)
!2226 = !{null, !33, !36, !36, !36, !47, !1274, !33, null}
!2227 = !DISubprogram(name: "apr_dbm_geterror", scope: !1025, file: !1025, line: 183, type: !2228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!222, !1023, !234, !222, !65}
!2230 = !DISubprogram(name: "apr_pstrdup", scope: !1180, file: !1180, line: 95, type: !2231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!222, !94, !33}
!2233 = !DISubprogram(name: "dav_new_error", scope: !17, file: !17, line: 141, type: !2234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!310, !94, !36, !36, !47, !33}
!2236 = distinct !DISubprogram(name: "dav_dbm_open", scope: !2, file: !2, line: 183, type: !308, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2237)
!2237 = !{!2238, !2239, !2240, !2241, !2242, !2243, !2244}
!2238 = !DILocalVariable(name: "p", arg: 1, scope: !2236, file: !2, line: 183, type: !94)
!2239 = !DILocalVariable(name: "resource", arg: 2, scope: !2236, file: !2, line: 183, type: !323)
!2240 = !DILocalVariable(name: "ro", arg: 3, scope: !2236, file: !2, line: 184, type: !36)
!2241 = !DILocalVariable(name: "pdb", arg: 4, scope: !2236, file: !2, line: 184, type: !1016)
!2242 = !DILocalVariable(name: "dirpath", scope: !2236, file: !2, line: 186, type: !33)
!2243 = !DILocalVariable(name: "fname", scope: !2236, file: !2, line: 187, type: !33)
!2244 = !DILocalVariable(name: "pathname", scope: !2236, file: !2, line: 188, type: !33)
!2245 = !DILocation(line: 183, column: 46, scope: !2236)
!2246 = !DILocation(line: 183, column: 69, scope: !2236)
!2247 = !DILocation(line: 184, column: 37, scope: !2236)
!2248 = !DILocation(line: 184, column: 50, scope: !2236)
!2249 = !DILocation(line: 186, column: 5, scope: !2236)
!2250 = !DILocation(line: 186, column: 17, scope: !2236)
!2251 = !DILocation(line: 187, column: 5, scope: !2236)
!2252 = !DILocation(line: 187, column: 17, scope: !2236)
!2253 = !DILocation(line: 188, column: 5, scope: !2236)
!2254 = !DILocation(line: 188, column: 17, scope: !2236)
!2255 = !DILocation(line: 192, column: 33, scope: !2236)
!2256 = !DILocation(line: 192, column: 12, scope: !2236)
!2257 = !DILocation(line: 195, column: 10, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2236, file: !2, line: 195, column: 9)
!2259 = !DILocation(line: 195, column: 9, scope: !2236)
!2260 = !DILocation(line: 197, column: 33, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2258, file: !2, line: 195, column: 14)
!2262 = !DILocation(line: 197, column: 36, scope: !2261)
!2263 = !DILocation(line: 197, column: 9, scope: !2261)
!2264 = !DILocation(line: 198, column: 5, scope: !2261)
!2265 = !DILocation(line: 200, column: 28, scope: !2236)
!2266 = !DILocation(line: 200, column: 31, scope: !2236)
!2267 = !DILocation(line: 201, column: 31, scope: !2236)
!2268 = !DILocation(line: 201, column: 39, scope: !2236)
!2269 = !DILocation(line: 200, column: 16, scope: !2236)
!2270 = !DILocation(line: 200, column: 14, scope: !2236)
!2271 = !DILocation(line: 209, column: 32, scope: !2236)
!2272 = !DILocation(line: 209, column: 35, scope: !2236)
!2273 = !DILocation(line: 209, column: 45, scope: !2236)
!2274 = !DILocation(line: 209, column: 49, scope: !2236)
!2275 = !DILocation(line: 209, column: 12, scope: !2236)
!2276 = !DILocation(line: 210, column: 1, scope: !2236)
!2277 = !DILocation(line: 209, column: 5, scope: !2236)
!2278 = !DISubprogram(name: "apr_hash_make", scope: !1041, file: !1041, line: 78, type: !2279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!1039, !94}
!2281 = !DISubprogram(name: "dav_set_bufsize", scope: !17, file: !17, line: 454, type: !2282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{null, !94, !2284, !65}
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!2285 = distinct !DISubprogram(name: "__bswap_16", scope: !2286, file: !2286, line: 34, type: !2287, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2289)
!2286 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/byteswap.h", directory: "", checksumkind: CSK_MD5, checksum: "98f83253ffd9c64e7486789204e9fa05")
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!180, !180}
!2289 = !{!2290}
!2290 = !DILocalVariable(name: "__bsx", arg: 1, scope: !2285, file: !2286, line: 34, type: !180)
!2291 = !{!1240, !1240, i64 0}
!2292 = !DILocation(line: 34, column: 24, scope: !2285)
!2293 = !DILocation(line: 39, column: 10, scope: !2285)
!2294 = !DILocation(line: 39, column: 3, scope: !2285)
!2295 = !DISubprogram(name: "apr_hash_set", scope: !1041, file: !1041, line: 108, type: !2296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{null, !1039, !816, !2298, !816}
!2298 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_ssize_t", file: !66, line: 380, baseType: !2299)
!2299 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !73, line: 108, baseType: !2300)
!2300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !75, line: 194, baseType: !76)
!2301 = !DISubprogram(name: "strlen", scope: !2302, file: !2302, line: 407, type: !2303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2302 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!69, !33}
!2305 = !DISubprogram(name: "dav_fs_dir_file_name", scope: !2306, file: !2306, line: 44, type: !2307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2306 = !DIFile(filename: "./repos.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src/modules/dav/fs", checksumkind: CSK_MD5, checksum: "8150fd8072676fbe1f2643ea01a2d780")
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!310, !323, !83, !83}
!2309 = !DISubprogram(name: "dav_xmlns_add", scope: !17, file: !17, line: 624, type: !2310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{null, !1058, !33, !33}
!2312 = !DISubprogram(name: "apr_psprintf", scope: !1180, file: !1180, line: 182, type: !2313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!222, !94, !33, null}
!2315 = distinct !DISubprogram(name: "dav_build_key", scope: !2, file: !2, line: 328, type: !2316, scopeLine: 329, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2318)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!1045, !1017, !1070}
!2318 = !{!2319, !2320, !2321, !2325, !2326, !2327, !2328}
!2319 = !DILocalVariable(name: "db", arg: 1, scope: !2315, file: !2, line: 328, type: !1017)
!2320 = !DILocalVariable(name: "name", arg: 2, scope: !2315, file: !2, line: 328, type: !1070)
!2321 = !DILocalVariable(name: "nsbuf", scope: !2315, file: !2, line: 330, type: !2322)
!2322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !2323)
!2323 = !{!2324}
!2324 = !DISubrange(count: 20)
!2325 = !DILocalVariable(name: "l_ns", scope: !2315, file: !2, line: 331, type: !65)
!2326 = !DILocalVariable(name: "l_name", scope: !2315, file: !2, line: 331, type: !65)
!2327 = !DILocalVariable(name: "key", scope: !2315, file: !2, line: 332, type: !1045)
!2328 = !DILocalVariable(name: "ns_id", scope: !2329, file: !2, line: 344, type: !76)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !2, line: 343, column: 10)
!2330 = distinct !DILexicalBlock(scope: !2315, file: !2, line: 339, column: 9)
!2331 = !DILocation(line: 328, column: 42, scope: !2315)
!2332 = !DILocation(line: 328, column: 67, scope: !2315)
!2333 = !DILocation(line: 330, column: 5, scope: !2315)
!2334 = !DILocation(line: 330, column: 10, scope: !2315)
!2335 = !DILocation(line: 331, column: 5, scope: !2315)
!2336 = !DILocation(line: 331, column: 16, scope: !2315)
!2337 = !DILocation(line: 331, column: 22, scope: !2315)
!2338 = !DILocation(line: 331, column: 38, scope: !2315)
!2339 = !DILocation(line: 331, column: 44, scope: !2315)
!2340 = !{!2341, !1141, i64 8}
!2341 = !{!"", !1141, i64 0, !1141, i64 8}
!2342 = !DILocation(line: 331, column: 31, scope: !2315)
!2343 = !DILocation(line: 332, column: 17, scope: !2315)
!2344 = !DILocation(line: 339, column: 10, scope: !2330)
!2345 = !DILocation(line: 339, column: 16, scope: !2330)
!2346 = !{!2341, !1141, i64 0}
!2347 = !DILocation(line: 339, column: 9, scope: !2330)
!2348 = !DILocation(line: 339, column: 19, scope: !2330)
!2349 = !DILocation(line: 339, column: 9, scope: !2315)
!2350 = !DILocation(line: 340, column: 9, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2330, file: !2, line: 339, column: 28)
!2352 = !DILocation(line: 340, column: 18, scope: !2351)
!2353 = !DILocation(line: 341, column: 14, scope: !2351)
!2354 = !DILocation(line: 342, column: 5, scope: !2351)
!2355 = !DILocation(line: 344, column: 9, scope: !2329)
!2356 = !DILocation(line: 344, column: 14, scope: !2329)
!2357 = !DILocation(line: 344, column: 41, scope: !2329)
!2358 = !DILocation(line: 344, column: 45, scope: !2329)
!2359 = !DILocation(line: 344, column: 56, scope: !2329)
!2360 = !DILocation(line: 344, column: 62, scope: !2329)
!2361 = !DILocation(line: 344, column: 28, scope: !2329)
!2362 = !DILocation(line: 344, column: 22, scope: !2329)
!2363 = !DILocation(line: 348, column: 13, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2329, file: !2, line: 348, column: 13)
!2365 = !DILocation(line: 348, column: 19, scope: !2364)
!2366 = !DILocation(line: 348, column: 13, scope: !2329)
!2367 = !DILocation(line: 350, column: 13, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2364, file: !2, line: 348, column: 25)
!2369 = !DILocation(line: 353, column: 29, scope: !2329)
!2370 = !DILocation(line: 353, column: 58, scope: !2329)
!2371 = !DILocation(line: 353, column: 64, scope: !2329)
!2372 = !DILocation(line: 353, column: 16, scope: !2329)
!2373 = !DILocation(line: 353, column: 14, scope: !2329)
!2374 = !DILocation(line: 354, column: 5, scope: !2330)
!2375 = !DILocation(line: 357, column: 21, scope: !2315)
!2376 = !DILocation(line: 357, column: 25, scope: !2315)
!2377 = !DILocation(line: 357, column: 32, scope: !2315)
!2378 = !DILocation(line: 357, column: 36, scope: !2315)
!2379 = !DILocation(line: 357, column: 44, scope: !2315)
!2380 = !DILocation(line: 357, column: 49, scope: !2315)
!2381 = !DILocation(line: 357, column: 55, scope: !2315)
!2382 = !DILocation(line: 357, column: 53, scope: !2315)
!2383 = !DILocation(line: 357, column: 62, scope: !2315)
!2384 = !DILocation(line: 357, column: 5, scope: !2315)
!2385 = !DILocation(line: 358, column: 12, scope: !2315)
!2386 = !DILocation(line: 358, column: 16, scope: !2315)
!2387 = !DILocation(line: 358, column: 23, scope: !2315)
!2388 = !{!1237, !1141, i64 80}
!2389 = !DILocation(line: 358, column: 5, scope: !2315)
!2390 = !DILocation(line: 358, column: 35, scope: !2315)
!2391 = !DILocation(line: 359, column: 5, scope: !2315)
!2392 = !DILocation(line: 359, column: 9, scope: !2315)
!2393 = !DILocation(line: 359, column: 16, scope: !2315)
!2394 = !DILocation(line: 359, column: 20, scope: !2315)
!2395 = !DILocation(line: 359, column: 26, scope: !2315)
!2396 = !DILocation(line: 360, column: 13, scope: !2315)
!2397 = !DILocation(line: 360, column: 17, scope: !2315)
!2398 = !DILocation(line: 360, column: 24, scope: !2315)
!2399 = !DILocation(line: 360, column: 28, scope: !2315)
!2400 = !DILocation(line: 360, column: 33, scope: !2315)
!2401 = !DILocation(line: 360, column: 39, scope: !2315)
!2402 = !DILocation(line: 360, column: 45, scope: !2315)
!2403 = !DILocation(line: 360, column: 51, scope: !2315)
!2404 = !DILocation(line: 360, column: 58, scope: !2315)
!2405 = !DILocation(line: 360, column: 5, scope: !2315)
!2406 = !DILocation(line: 363, column: 17, scope: !2315)
!2407 = !DILocation(line: 363, column: 22, scope: !2315)
!2408 = !DILocation(line: 363, column: 28, scope: !2315)
!2409 = !DILocation(line: 363, column: 26, scope: !2315)
!2410 = !DILocation(line: 363, column: 35, scope: !2315)
!2411 = !DILocation(line: 363, column: 9, scope: !2315)
!2412 = !DILocation(line: 363, column: 15, scope: !2315)
!2413 = !DILocation(line: 364, column: 16, scope: !2315)
!2414 = !DILocation(line: 364, column: 20, scope: !2315)
!2415 = !DILocation(line: 364, column: 27, scope: !2315)
!2416 = !DILocation(line: 364, column: 9, scope: !2315)
!2417 = !DILocation(line: 364, column: 14, scope: !2315)
!2418 = !DILocation(line: 366, column: 5, scope: !2315)
!2419 = !DILocation(line: 367, column: 1, scope: !2315)
!2420 = distinct !DISubprogram(name: "dav_append_prop", scope: !2, file: !2, line: 369, type: !2421, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2423)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{null, !94, !33, !33, !1077}
!2423 = !{!2424, !2425, !2426, !2427, !2428, !2429}
!2424 = !DILocalVariable(name: "pool", arg: 1, scope: !2420, file: !2, line: 369, type: !94)
!2425 = !DILocalVariable(name: "name", arg: 2, scope: !2420, file: !2, line: 370, type: !33)
!2426 = !DILocalVariable(name: "value", arg: 3, scope: !2420, file: !2, line: 370, type: !33)
!2427 = !DILocalVariable(name: "phdr", arg: 4, scope: !2420, file: !2, line: 371, type: !1077)
!2428 = !DILocalVariable(name: "s", scope: !2420, file: !2, line: 373, type: !33)
!2429 = !DILocalVariable(name: "lang", scope: !2420, file: !2, line: 374, type: !33)
!2430 = !DILocation(line: 369, column: 41, scope: !2420)
!2431 = !DILocation(line: 370, column: 41, scope: !2420)
!2432 = !DILocation(line: 370, column: 59, scope: !2420)
!2433 = !DILocation(line: 371, column: 46, scope: !2420)
!2434 = !DILocation(line: 373, column: 5, scope: !2420)
!2435 = !DILocation(line: 373, column: 17, scope: !2420)
!2436 = !DILocation(line: 374, column: 5, scope: !2420)
!2437 = !DILocation(line: 374, column: 17, scope: !2420)
!2438 = !DILocation(line: 374, column: 24, scope: !2420)
!2439 = !DILocation(line: 377, column: 21, scope: !2420)
!2440 = !DILocation(line: 377, column: 14, scope: !2420)
!2441 = !DILocation(line: 377, column: 27, scope: !2420)
!2442 = !DILocation(line: 377, column: 11, scope: !2420)
!2443 = !DILocation(line: 379, column: 10, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2420, file: !2, line: 379, column: 9)
!2445 = !DILocation(line: 379, column: 9, scope: !2444)
!2446 = !DILocation(line: 379, column: 16, scope: !2444)
!2447 = !DILocation(line: 379, column: 9, scope: !2420)
!2448 = !DILocation(line: 381, column: 14, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !2, line: 381, column: 13)
!2450 = distinct !DILexicalBlock(scope: !2444, file: !2, line: 379, column: 25)
!2451 = !DILocation(line: 381, column: 13, scope: !2449)
!2452 = !DILocation(line: 381, column: 19, scope: !2449)
!2453 = !DILocation(line: 381, column: 13, scope: !2450)
!2454 = !DILocation(line: 383, column: 29, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2449, file: !2, line: 381, column: 27)
!2456 = !DILocation(line: 383, column: 40, scope: !2455)
!2457 = !DILocation(line: 383, column: 44, scope: !2455)
!2458 = !DILocation(line: 383, column: 17, scope: !2455)
!2459 = !DILocation(line: 383, column: 15, scope: !2455)
!2460 = !DILocation(line: 384, column: 9, scope: !2455)
!2461 = !DILocation(line: 386, column: 29, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2449, file: !2, line: 385, column: 14)
!2463 = !DILocation(line: 386, column: 42, scope: !2462)
!2464 = !DILocation(line: 386, column: 17, scope: !2462)
!2465 = !DILocation(line: 386, column: 15, scope: !2462)
!2466 = !DILocation(line: 388, column: 5, scope: !2450)
!2467 = !DILocation(line: 389, column: 15, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2444, file: !2, line: 389, column: 14)
!2469 = !DILocation(line: 389, column: 14, scope: !2468)
!2470 = !DILocation(line: 389, column: 20, scope: !2468)
!2471 = !DILocation(line: 389, column: 14, scope: !2444)
!2472 = !DILocation(line: 390, column: 14, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !2, line: 390, column: 13)
!2474 = distinct !DILexicalBlock(scope: !2468, file: !2, line: 389, column: 29)
!2475 = !DILocation(line: 390, column: 13, scope: !2473)
!2476 = !DILocation(line: 390, column: 19, scope: !2473)
!2477 = !DILocation(line: 390, column: 13, scope: !2474)
!2478 = !DILocation(line: 392, column: 29, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2473, file: !2, line: 390, column: 27)
!2480 = !DILocation(line: 392, column: 40, scope: !2479)
!2481 = !DILocation(line: 392, column: 44, scope: !2479)
!2482 = !DILocation(line: 393, column: 29, scope: !2479)
!2483 = !DILocation(line: 393, column: 42, scope: !2479)
!2484 = !DILocation(line: 393, column: 55, scope: !2479)
!2485 = !DILocation(line: 393, column: 59, scope: !2479)
!2486 = !DILocation(line: 392, column: 17, scope: !2479)
!2487 = !DILocation(line: 392, column: 15, scope: !2479)
!2488 = !DILocation(line: 395, column: 9, scope: !2479)
!2489 = !DILocation(line: 397, column: 29, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2473, file: !2, line: 396, column: 14)
!2491 = !DILocation(line: 397, column: 42, scope: !2490)
!2492 = !DILocation(line: 398, column: 29, scope: !2490)
!2493 = !DILocation(line: 398, column: 42, scope: !2490)
!2494 = !DILocation(line: 398, column: 57, scope: !2490)
!2495 = !DILocation(line: 397, column: 17, scope: !2490)
!2496 = !DILocation(line: 397, column: 15, scope: !2490)
!2497 = !DILocation(line: 401, column: 5, scope: !2474)
!2498 = !DILocation(line: 402, column: 15, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2468, file: !2, line: 402, column: 14)
!2500 = !DILocation(line: 402, column: 14, scope: !2499)
!2501 = !DILocation(line: 402, column: 20, scope: !2499)
!2502 = !DILocation(line: 402, column: 14, scope: !2468)
!2503 = !DILocation(line: 404, column: 25, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2499, file: !2, line: 402, column: 28)
!2505 = !DILocation(line: 404, column: 36, scope: !2504)
!2506 = !DILocation(line: 404, column: 40, scope: !2504)
!2507 = !DILocation(line: 404, column: 49, scope: !2504)
!2508 = !DILocation(line: 404, column: 62, scope: !2504)
!2509 = !DILocation(line: 404, column: 66, scope: !2504)
!2510 = !DILocation(line: 404, column: 13, scope: !2504)
!2511 = !DILocation(line: 404, column: 11, scope: !2504)
!2512 = !DILocation(line: 406, column: 5, scope: !2504)
!2513 = !DILocation(line: 408, column: 25, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2499, file: !2, line: 407, column: 10)
!2515 = !DILocation(line: 408, column: 38, scope: !2514)
!2516 = !DILocation(line: 408, column: 49, scope: !2514)
!2517 = !DILocation(line: 408, column: 64, scope: !2514)
!2518 = !DILocation(line: 408, column: 13, scope: !2514)
!2519 = !DILocation(line: 408, column: 11, scope: !2514)
!2520 = !DILocation(line: 412, column: 21, scope: !2420)
!2521 = !DILocation(line: 412, column: 27, scope: !2420)
!2522 = !DILocation(line: 412, column: 33, scope: !2420)
!2523 = !DILocation(line: 412, column: 5, scope: !2420)
!2524 = !DILocation(line: 413, column: 1, scope: !2420)
!2525 = !DISubprogram(name: "apr_hash_get", scope: !1041, file: !1041, line: 118, type: !2526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!42, !1039, !816, !2298}
!2528 = !DISubprogram(name: "apr_snprintf", scope: !1180, file: !1180, line: 279, type: !2529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!36, !222, !65, !33, null}
!2531 = !DISubprogram(name: "apr_text_append", scope: !184, file: !184, line: 77, type: !2532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{null, !94, !1077, !33}
!2534 = !DISubprogram(name: "dav_check_bufsize", scope: !17, file: !17, line: 462, type: !2282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2535 = !DISubprogram(name: "apr_xml_quote_elem", scope: !184, file: !184, line: 325, type: !2536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{null, !94, !182}
!2538 = !DISubprogram(name: "apr_xml_to_text", scope: !184, file: !184, line: 286, type: !2539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{null, !94, !1094, !36, !513, !234, !83, !84}
!2541 = distinct !DISubprogram(name: "dav_dbm_firstkey", scope: !2, file: !2, line: 251, type: !2542, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2544)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!310, !1017, !1344}
!2544 = !{!2545, !2546, !2547}
!2545 = !DILocalVariable(name: "db", arg: 1, scope: !2541, file: !2, line: 251, type: !1017)
!2546 = !DILocalVariable(name: "pkey", arg: 2, scope: !2541, file: !2, line: 251, type: !1344)
!2547 = !DILocalVariable(name: "status", scope: !2541, file: !2, line: 253, type: !47)
!2548 = !DILocation(line: 251, column: 45, scope: !2541)
!2549 = !DILocation(line: 251, column: 62, scope: !2541)
!2550 = !DILocation(line: 253, column: 5, scope: !2541)
!2551 = !DILocation(line: 253, column: 18, scope: !2541)
!2552 = !DILocation(line: 253, column: 44, scope: !2541)
!2553 = !DILocation(line: 253, column: 48, scope: !2541)
!2554 = !DILocation(line: 253, column: 54, scope: !2541)
!2555 = !DILocation(line: 253, column: 27, scope: !2541)
!2556 = !DILocation(line: 255, column: 29, scope: !2541)
!2557 = !DILocation(line: 255, column: 39, scope: !2541)
!2558 = !DILocation(line: 255, column: 12, scope: !2541)
!2559 = !DILocation(line: 256, column: 1, scope: !2541)
!2560 = !DILocation(line: 255, column: 5, scope: !2541)
!2561 = distinct !DISubprogram(name: "dav_set_name", scope: !2, file: !2, line: 685, type: !2562, scopeLine: 686, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2564)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{null, !1017, !1108}
!2564 = !{!2565, !2566, !2567, !2568}
!2565 = !DILocalVariable(name: "db", arg: 1, scope: !2561, file: !2, line: 685, type: !1017)
!2566 = !DILocalVariable(name: "pname", arg: 2, scope: !2561, file: !2, line: 685, type: !1108)
!2567 = !DILocalVariable(name: "s", scope: !2561, file: !2, line: 687, type: !33)
!2568 = !DILocalVariable(name: "id", scope: !2569, file: !2, line: 697, type: !36)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !2, line: 696, column: 10)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !2, line: 692, column: 14)
!2571 = distinct !DILexicalBlock(scope: !2561, file: !2, line: 689, column: 9)
!2572 = !DILocation(line: 685, column: 34, scope: !2561)
!2573 = !DILocation(line: 685, column: 53, scope: !2561)
!2574 = !DILocation(line: 687, column: 5, scope: !2561)
!2575 = !DILocation(line: 687, column: 17, scope: !2561)
!2576 = !DILocation(line: 687, column: 21, scope: !2561)
!2577 = !DILocation(line: 687, column: 25, scope: !2561)
!2578 = !DILocation(line: 687, column: 30, scope: !2561)
!2579 = !DILocation(line: 689, column: 9, scope: !2571)
!2580 = !DILocation(line: 689, column: 11, scope: !2571)
!2581 = !DILocation(line: 689, column: 9, scope: !2561)
!2582 = !DILocation(line: 690, column: 21, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2571, file: !2, line: 689, column: 20)
!2584 = !DILocation(line: 690, column: 28, scope: !2583)
!2585 = !DILocation(line: 690, column: 33, scope: !2583)
!2586 = !DILocation(line: 690, column: 9, scope: !2583)
!2587 = !DILocation(line: 690, column: 16, scope: !2583)
!2588 = !DILocation(line: 690, column: 19, scope: !2583)
!2589 = !DILocation(line: 691, column: 5, scope: !2583)
!2590 = !DILocation(line: 692, column: 15, scope: !2570)
!2591 = !DILocation(line: 692, column: 14, scope: !2570)
!2592 = !DILocation(line: 692, column: 17, scope: !2570)
!2593 = !DILocation(line: 692, column: 14, scope: !2571)
!2594 = !DILocation(line: 693, column: 9, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2570, file: !2, line: 692, column: 25)
!2596 = !DILocation(line: 693, column: 16, scope: !2595)
!2597 = !DILocation(line: 693, column: 19, scope: !2595)
!2598 = !DILocation(line: 694, column: 23, scope: !2595)
!2599 = !DILocation(line: 694, column: 25, scope: !2595)
!2600 = !DILocation(line: 694, column: 9, scope: !2595)
!2601 = !DILocation(line: 694, column: 16, scope: !2595)
!2602 = !DILocation(line: 694, column: 21, scope: !2595)
!2603 = !DILocation(line: 695, column: 5, scope: !2595)
!2604 = !DILocation(line: 697, column: 9, scope: !2569)
!2605 = !DILocation(line: 697, column: 13, scope: !2569)
!2606 = !DILocation(line: 697, column: 23, scope: !2569)
!2607 = !DILocation(line: 697, column: 18, scope: !2569)
!2608 = !DILocation(line: 699, column: 42, scope: !2569)
!2609 = !DILocation(line: 699, column: 46, scope: !2569)
!2610 = !DILocation(line: 699, column: 21, scope: !2569)
!2611 = !DILocation(line: 699, column: 9, scope: !2569)
!2612 = !DILocation(line: 699, column: 16, scope: !2569)
!2613 = !DILocation(line: 699, column: 19, scope: !2569)
!2614 = !DILocation(line: 700, column: 13, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2569, file: !2, line: 700, column: 13)
!2616 = !DILocation(line: 700, column: 18, scope: !2615)
!2617 = !DILocation(line: 700, column: 13, scope: !2569)
!2618 = !DILocation(line: 701, column: 27, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2615, file: !2, line: 700, column: 26)
!2620 = !DILocation(line: 701, column: 29, scope: !2619)
!2621 = !DILocation(line: 701, column: 13, scope: !2619)
!2622 = !DILocation(line: 701, column: 20, scope: !2619)
!2623 = !DILocation(line: 701, column: 25, scope: !2619)
!2624 = !DILocation(line: 702, column: 9, scope: !2619)
!2625 = !DILocation(line: 704, column: 27, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2615, file: !2, line: 703, column: 14)
!2627 = !DILocation(line: 704, column: 51, scope: !2626)
!2628 = !DILocation(line: 704, column: 13, scope: !2626)
!2629 = !DILocation(line: 704, column: 20, scope: !2626)
!2630 = !DILocation(line: 704, column: 25, scope: !2626)
!2631 = !DILocation(line: 706, column: 5, scope: !2570)
!2632 = !DILocation(line: 707, column: 1, scope: !2561)
!2633 = !DISubprogram(name: "apr_dbm_firstkey", scope: !1025, file: !1025, line: 158, type: !2634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!47, !1023, !1344}
!2636 = distinct !DISubprogram(name: "atoi", scope: !2637, file: !2637, line: 362, type: !2638, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2640)
!2637 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!36, !33}
!2640 = !{!2641}
!2641 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2636, file: !2637, line: 362, type: !33)
!2642 = !DILocation(line: 362, column: 1, scope: !2636)
!2643 = !DILocation(line: 364, column: 24, scope: !2636)
!2644 = !DILocation(line: 364, column: 16, scope: !2636)
!2645 = !DILocation(line: 364, column: 10, scope: !2636)
!2646 = !DILocation(line: 364, column: 3, scope: !2636)
!2647 = distinct !DISubprogram(name: "dav_get_ns_table_uri", scope: !2, file: !2, line: 675, type: !2648, scopeLine: 676, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2650)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!33, !1017, !36}
!2650 = !{!2651, !2652, !2653}
!2651 = !DILocalVariable(name: "db", arg: 1, scope: !2647, file: !2, line: 675, type: !1017)
!2652 = !DILocalVariable(name: "ns_id", arg: 2, scope: !2647, file: !2, line: 675, type: !36)
!2653 = !DILocalVariable(name: "p", scope: !2647, file: !2, line: 677, type: !33)
!2654 = !DILocation(line: 675, column: 49, scope: !2647)
!2655 = !DILocation(line: 675, column: 57, scope: !2647)
!2656 = !DILocation(line: 677, column: 5, scope: !2647)
!2657 = !DILocation(line: 677, column: 17, scope: !2647)
!2658 = !DILocation(line: 677, column: 21, scope: !2647)
!2659 = !DILocation(line: 677, column: 25, scope: !2647)
!2660 = !DILocation(line: 677, column: 34, scope: !2647)
!2661 = !DILocation(line: 677, column: 38, scope: !2647)
!2662 = !DILocation(line: 679, column: 5, scope: !2647)
!2663 = !DILocation(line: 679, column: 17, scope: !2647)
!2664 = !DILocation(line: 680, column: 21, scope: !2647)
!2665 = !DILocation(line: 680, column: 14, scope: !2647)
!2666 = !DILocation(line: 680, column: 24, scope: !2647)
!2667 = !DILocation(line: 680, column: 11, scope: !2647)
!2668 = distinct !{!2668, !2662, !2669, !1634}
!2669 = !DILocation(line: 680, column: 26, scope: !2647)
!2670 = !DILocation(line: 682, column: 12, scope: !2647)
!2671 = !DILocation(line: 683, column: 1, scope: !2647)
!2672 = !DILocation(line: 682, column: 5, scope: !2647)
!2673 = !DISubprogram(name: "strchr", scope: !2302, file: !2302, line: 246, type: !2674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!222, !33, !36}
!2676 = !DISubprogram(name: "strtol", scope: !2637, file: !2637, line: 177, type: !2677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!76, !2679, !2680, !36}
!2679 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!2680 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !221)
!2681 = distinct !DISubprogram(name: "dav_dbm_nextkey", scope: !2, file: !2, line: 258, type: !2542, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2682)
!2682 = !{!2683, !2684, !2685}
!2683 = !DILocalVariable(name: "db", arg: 1, scope: !2681, file: !2, line: 258, type: !1017)
!2684 = !DILocalVariable(name: "pkey", arg: 2, scope: !2681, file: !2, line: 258, type: !1344)
!2685 = !DILocalVariable(name: "status", scope: !2681, file: !2, line: 260, type: !47)
!2686 = !DILocation(line: 258, column: 44, scope: !2681)
!2687 = !DILocation(line: 258, column: 61, scope: !2681)
!2688 = !DILocation(line: 260, column: 5, scope: !2681)
!2689 = !DILocation(line: 260, column: 18, scope: !2681)
!2690 = !DILocation(line: 260, column: 43, scope: !2681)
!2691 = !DILocation(line: 260, column: 47, scope: !2681)
!2692 = !DILocation(line: 260, column: 53, scope: !2681)
!2693 = !DILocation(line: 260, column: 27, scope: !2681)
!2694 = !DILocation(line: 262, column: 29, scope: !2681)
!2695 = !DILocation(line: 262, column: 39, scope: !2681)
!2696 = !DILocation(line: 262, column: 12, scope: !2681)
!2697 = !DILocation(line: 263, column: 1, scope: !2681)
!2698 = !DILocation(line: 262, column: 5, scope: !2681)
!2699 = !DISubprogram(name: "apr_dbm_nextkey", scope: !1025, file: !1025, line: 165, type: !2634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2700 = !DISubprogram(name: "apr_pmemdup", scope: !1180, file: !1180, line: 135, type: !2701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!42, !94, !816, !65}
