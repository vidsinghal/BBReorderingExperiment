; ModuleID = 'samples/102.bc'
source_filename = "ecdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_dbmethods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dns_rdatasetitermethods = type { ptr, ptr, ptr, ptr }
%struct.dns_rdatasetmethods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dns_ecdb = type { %struct.dns_db, %union.pthread_mutex_t, i32, %struct.anon.7 }
%struct.dns_db = type { i32, i32, ptr, i16, i16, %struct.dns_name, ptr, %struct.anon.6 }
%struct.dns_name = type { i32, ptr, i32, i32, i32, ptr, ptr, %struct.anon.4, %struct.anon.5 }
%struct.anon.4 = type { ptr, ptr }
%struct.anon.5 = type { ptr, ptr }
%struct.anon.6 = type { ptr, ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.anon.7 = type { ptr, ptr }
%struct.dns_ecdbnode = type { i32, %union.pthread_mutex_t, ptr, %struct.dns_name, %struct.anon.8, %struct.anon.9, i32 }
%struct.anon.8 = type { ptr, ptr }
%struct.anon.9 = type { ptr, ptr }
%struct.isc__magic_t = type { i32 }
%struct.ecdb_rdatasetiter = type { %struct.dns_rdatasetiter, ptr }
%struct.dns_rdatasetiter = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.isc_region = type { ptr, i32 }
%struct.rdatasetheader = type { i16, i32, i16, i16, i32, %struct.anon.10 }
%struct.anon.10 = type { ptr, ptr }
%struct.dns_rdataset = type { i32, ptr, %struct.anon.11, i16, i16, i32, i32, i16, i16, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.anon.11 = type { ptr, ptr }
%union.anon = type { ptr }
%struct.dns_rdata = type { ptr, i32, i16, i16, i32, %struct.anon.12 }
%struct.anon.12 = type { ptr, ptr }

@.str = private unnamed_addr constant [7 x i8] c"ecdb.c\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [19 x i8] c"mctx != ((void*)0)\00", align 1, !dbg !8
@.str.2 = private unnamed_addr constant [44 x i8] c"dbimp != ((void*)0) && *dbimp == ((void*)0)\00", align 1, !dbg !13
@.str.3 = private unnamed_addr constant [5 x i8] c"ecdb\00", align 1, !dbg !18
@.str.4 = private unnamed_addr constant [44 x i8] c"dbimp != ((void*)0) && *dbimp != ((void*)0)\00", align 1, !dbg !23
@dns_rootname = external global ptr, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"origin == dns_rootname\00", align 1, !dbg !25
@.str.6 = private unnamed_addr constant [25 x i8] c"type == dns_dbtype_cache\00", align 1, !dbg !30
@.str.7 = private unnamed_addr constant [40 x i8] c"dbp != ((void*)0) && *dbp == ((void*)0)\00", align 1, !dbg !35
@ecdb_methods = internal global %struct.dns_dbmethods { ptr @attach, ptr @detach, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @findnode, ptr @find, ptr @findzonecut, ptr @attachnode, ptr @detachnode, ptr null, ptr null, ptr @createiterator, ptr null, ptr @allrdatasets, ptr @addrdataset, ptr null, ptr @deleterdataset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !40
@.str.8 = private unnamed_addr constant [102 x i8] c"((ecdb) != ((void*)0) && (ecdb)->common.impmagic == (('E') << 24 | ('C') << 16 | ('D') << 8 | ('B')))\00", align 1, !dbg !1059
@.str.9 = private unnamed_addr constant [48 x i8] c"targetp != ((void*)0) && *targetp == ((void*)0)\00", align 1, !dbg !1064
@.str.10 = private unnamed_addr constant [59 x i8] c"((pthread_mutex_lock(((&ecdb->lock))) == 0) ? 0 : 34) == 0\00", align 1, !dbg !1069
@.str.11 = private unnamed_addr constant [61 x i8] c"((pthread_mutex_unlock(((&ecdb->lock))) == 0) ? 0 : 34) == 0\00", align 1, !dbg !1074
@.str.12 = private unnamed_addr constant [18 x i8] c"dbp != ((void*)0)\00", align 1, !dbg !1079
@.str.13 = private unnamed_addr constant [42 x i8] c"pthread_mutex_destroy((&ecdb->lock)) == 0\00", align 1, !dbg !1084
@.str.14 = private unnamed_addr constant [44 x i8] c"nodep != ((void*)0) && *nodep == ((void*)0)\00", align 1, !dbg !1089
@.str.15 = private unnamed_addr constant [42 x i8] c"pthread_mutex_destroy((&node->lock)) == 0\00", align 1, !dbg !1091
@.str.16 = private unnamed_addr constant [168 x i8] c"(__builtin_expect(!!((node) != ((void*)0)), 1) && __builtin_expect(!!(((const isc__magic_t *)(node))->magic == ((('E') << 24 | ('C') << 16 | ('D') << 8 | ('N')))), 1))\00", align 1, !dbg !1093
@.str.17 = private unnamed_addr constant [59 x i8] c"((pthread_mutex_lock(((&node->lock))) == 0) ? 0 : 34) == 0\00", align 1, !dbg !1098
@.str.18 = private unnamed_addr constant [21 x i8] c"node->references > 0\00", align 1, !dbg !1100
@.str.19 = private unnamed_addr constant [22 x i8] c"node->references != 0\00", align 1, !dbg !1105
@.str.20 = private unnamed_addr constant [61 x i8] c"((pthread_mutex_unlock(((&node->lock))) == 0) ? 0 : 34) == 0\00", align 1, !dbg !1110
@.str.21 = private unnamed_addr constant [20 x i8] c"nodep != ((void*)0)\00", align 1, !dbg !1112
@.str.22 = private unnamed_addr constant [29 x i8] c"(ecdb->nodes).tail == (node)\00", align 1, !dbg !1115
@.str.23 = private unnamed_addr constant [29 x i8] c"(ecdb->nodes).head == (node)\00", align 1, !dbg !1120
@.str.24 = private unnamed_addr constant [29 x i8] c"(ecdb->nodes).head != (node)\00", align 1, !dbg !1122
@.str.25 = private unnamed_addr constant [29 x i8] c"(ecdb->nodes).tail != (node)\00", align 1, !dbg !1124
@.str.26 = private unnamed_addr constant [35 x i8] c"(node->rdatasets).tail == (header)\00", align 1, !dbg !1126
@.str.27 = private unnamed_addr constant [35 x i8] c"(node->rdatasets).head == (header)\00", align 1, !dbg !1131
@.str.28 = private unnamed_addr constant [35 x i8] c"(node->rdatasets).head != (header)\00", align 1, !dbg !1133
@.str.29 = private unnamed_addr constant [35 x i8] c"(node->rdatasets).tail != (header)\00", align 1, !dbg !1135
@.str.30 = private unnamed_addr constant [176 x i8] c"(__builtin_expect(!!((ecdbnode) != ((void*)0)), 1) && __builtin_expect(!!(((const isc__magic_t *)(ecdbnode))->magic == ((('E') << 24 | ('C') << 16 | ('D') << 8 | ('N')))), 1))\00", align 1, !dbg !1137
@rdatasetiter_methods = internal global %struct.dns_rdatasetitermethods { ptr @rdatasetiter_destroy, ptr @rdatasetiter_first, ptr @rdatasetiter_next, ptr @rdatasetiter_current }, align 8, !dbg !1142
@.str.31 = private unnamed_addr constant [24 x i8] c"iteratorp != ((void*)0)\00", align 1, !dbg !1144
@.str.32 = private unnamed_addr constant [180 x i8] c"(__builtin_expect(!!((*iteratorp) != ((void*)0)), 1) && __builtin_expect(!!(((const isc__magic_t *)(*iteratorp))->magic == ((('D') << 24 | ('N') << 16 | ('S') << 8 | ('i')))), 1))\00", align 1, !dbg !1149
@.str.33 = private unnamed_addr constant [176 x i8] c"(__builtin_expect(!!((iterator) != ((void*)0)), 1) && __builtin_expect(!!(((const isc__magic_t *)(iterator))->magic == ((('D') << 24 | ('N') << 16 | ('S') << 8 | ('i')))), 1))\00", align 1, !dbg !1154
@.str.34 = private unnamed_addr constant [37 x i8] c"!dns_rdataset_isassociated(rdataset)\00", align 1, !dbg !1156
@rdataset_methods = internal global %struct.dns_rdatasetmethods { ptr @rdataset_disassociate, ptr @rdataset_first, ptr @rdataset_next, ptr @rdataset_current, ptr @rdataset_clone, ptr @rdataset_count, ptr null, ptr null, ptr null, ptr null, ptr @rdataset_settrust, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !1161
@.str.35 = private unnamed_addr constant [18 x i8] c"raw != ((void*)0)\00", align 1, !dbg !1163
@.str.36 = private unnamed_addr constant [63 x i8] c"((pthread_mutex_lock(((&ecdbnode->lock))) == 0) ? 0 : 34) == 0\00", align 1, !dbg !1165
@.str.37 = private unnamed_addr constant [69 x i8] c"header->type != rdataset->type || header->covers != rdataset->covers\00", align 1, !dbg !1170
@.str.38 = private unnamed_addr constant [65 x i8] c"((pthread_mutex_unlock(((&ecdbnode->lock))) == 0) ? 0 : 34) == 0\00", align 1, !dbg !1175

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @dns_ecdb_register(ptr noundef %mctx, ptr noundef %dbimp) #0 !dbg !1186 {
entry:
  %mctx.addr = alloca ptr, align 8
  %dbimp.addr = alloca ptr, align 8
  store ptr %mctx, ptr %mctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %mctx.addr, metadata !1194, metadata !DIExpression()), !dbg !1196
  store ptr %dbimp, ptr %dbimp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dbimp.addr, metadata !1195, metadata !DIExpression()), !dbg !1197
  %0 = load ptr, ptr %mctx.addr, align 8, !dbg !1198
  %cmp = icmp ne ptr %0, null, !dbg !1198
  %lnot = xor i1 %cmp, true, !dbg !1198
  %lnot1 = xor i1 %lnot, true, !dbg !1198
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1198
  %conv = sext i32 %lnot.ext to i64, !dbg !1198
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1198
  %tobool = icmp ne i64 %expval, 0, !dbg !1198
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1198

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 137, i32 noundef 0, ptr noundef @.str.1) #8, !dbg !1198
  unreachable, !dbg !1198

1:                                                ; No predecessors!
  br label %lor.end, !dbg !1198

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !1198
  %3 = load ptr, ptr %dbimp.addr, align 8, !dbg !1199
  %cmp2 = icmp ne ptr %3, null, !dbg !1199
  br i1 %cmp2, label %land.rhs, label %land.end, !dbg !1199

land.rhs:                                         ; preds = %lor.end
  %4 = load ptr, ptr %dbimp.addr, align 8, !dbg !1199
  %5 = load ptr, ptr %4, align 8, !dbg !1199
  %cmp4 = icmp eq ptr %5, null, !dbg !1199
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end
  %6 = phi i1 [ false, %lor.end ], [ %cmp4, %land.rhs ], !dbg !1200
  %lnot6 = xor i1 %6, true, !dbg !1199
  %lnot8 = xor i1 %lnot6, true, !dbg !1199
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !1199
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !1199
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !1199
  %tobool12 = icmp ne i64 %expval11, 0, !dbg !1199
  br i1 %tobool12, label %lor.end14, label %lor.rhs13, !dbg !1199

lor.rhs13:                                        ; preds = %land.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 138, i32 noundef 0, ptr noundef @.str.2) #8, !dbg !1199
  unreachable, !dbg !1199

7:                                                ; No predecessors!
  br label %lor.end14, !dbg !1199

lor.end14:                                        ; preds = %7, %land.end
  %8 = phi i1 [ true, %land.end ], [ false, %7 ]
  %lor.ext15 = zext i1 %8 to i32, !dbg !1199
  %9 = load ptr, ptr %mctx.addr, align 8, !dbg !1201
  %10 = load ptr, ptr %dbimp.addr, align 8, !dbg !1202
  %call = call i32 @dns_db_register(ptr noundef @.str.3, ptr noundef @dns_ecdb_create, ptr noundef null, ptr noundef %9, ptr noundef %10), !dbg !1203
  ret i32 %call, !dbg !1204
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #1

; Function Attrs: noreturn null_pointer_is_valid
declare !dbg !1205 void @isc_assertion_failed(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1209 i32 @dns_db_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @dns_ecdb_create(ptr noundef %mctx, ptr noundef %origin, i32 noundef %type, i16 noundef zeroext %rdclass, i32 noundef %argc, ptr noundef %argv, ptr noundef %driverarg, ptr noundef %dbp) #0 !dbg !1218 {
entry:
  %retval = alloca i32, align 4
  %mctx.addr = alloca ptr, align 8
  %origin.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %rdclass.addr = alloca i16, align 2
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %driverarg.addr = alloca ptr, align 8
  %dbp.addr = alloca ptr, align 8
  %ecdb = alloca ptr, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mctx, ptr %mctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %mctx.addr, metadata !1220, metadata !DIExpression()), !dbg !1230
  store ptr %origin, ptr %origin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %origin.addr, metadata !1221, metadata !DIExpression()), !dbg !1231
  store i32 %type, ptr %type.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1222, metadata !DIExpression()), !dbg !1232
  store i16 %rdclass, ptr %rdclass.addr, align 2
  tail call void @llvm.dbg.declare(metadata ptr %rdclass.addr, metadata !1223, metadata !DIExpression()), !dbg !1233
  store i32 %argc, ptr %argc.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !1224, metadata !DIExpression()), !dbg !1234
  store ptr %argv, ptr %argv.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !1225, metadata !DIExpression()), !dbg !1235
  store ptr %driverarg, ptr %driverarg.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %driverarg.addr, metadata !1226, metadata !DIExpression()), !dbg !1236
  store ptr %dbp, ptr %dbp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dbp.addr, metadata !1227, metadata !DIExpression()), !dbg !1237
  call void @llvm.lifetime.start.p0(i64 8, ptr %ecdb) #9, !dbg !1238
  tail call void @llvm.dbg.declare(metadata ptr %ecdb, metadata !1228, metadata !DIExpression()), !dbg !1239
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !1240
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1229, metadata !DIExpression()), !dbg !1241
  %0 = load ptr, ptr %mctx.addr, align 8, !dbg !1242
  %cmp = icmp ne ptr %0, null, !dbg !1242
  %lnot = xor i1 %cmp, true, !dbg !1242
  %lnot1 = xor i1 %lnot, true, !dbg !1242
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1242
  %conv = sext i32 %lnot.ext to i64, !dbg !1242
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1242
  %tobool = icmp ne i64 %expval, 0, !dbg !1242
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1242

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 598, i32 noundef 0, ptr noundef @.str.1) #8, !dbg !1242
  unreachable, !dbg !1242

1:                                                ; No predecessors!
  br label %lor.end, !dbg !1242

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !1242
  %3 = load ptr, ptr %origin.addr, align 8, !dbg !1243
  %4 = load ptr, ptr @dns_rootname, align 8, !dbg !1243
  %cmp2 = icmp eq ptr %3, %4, !dbg !1243
  %lnot4 = xor i1 %cmp2, true, !dbg !1243
  %lnot6 = xor i1 %lnot4, true, !dbg !1243
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !1243
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !1243
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 1), !dbg !1243
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !1243
  br i1 %tobool10, label %lor.end12, label %lor.rhs11, !dbg !1243

lor.rhs11:                                        ; preds = %lor.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 599, i32 noundef 0, ptr noundef @.str.5) #8, !dbg !1243
  unreachable, !dbg !1243

5:                                                ; No predecessors!
  br label %lor.end12, !dbg !1243

lor.end12:                                        ; preds = %5, %lor.end
  %6 = phi i1 [ true, %lor.end ], [ false, %5 ]
  %lor.ext13 = zext i1 %6 to i32, !dbg !1243
  %7 = load i32, ptr %type.addr, align 4, !dbg !1244
  %cmp14 = icmp eq i32 %7, 1, !dbg !1244
  %lnot16 = xor i1 %cmp14, true, !dbg !1244
  %lnot18 = xor i1 %lnot16, true, !dbg !1244
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !1244
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !1244
  %expval21 = call i64 @llvm.expect.i64(i64 %conv20, i64 1), !dbg !1244
  %tobool22 = icmp ne i64 %expval21, 0, !dbg !1244
  br i1 %tobool22, label %lor.end24, label %lor.rhs23, !dbg !1244

lor.rhs23:                                        ; preds = %lor.end12
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 600, i32 noundef 0, ptr noundef @.str.6) #8, !dbg !1244
  unreachable, !dbg !1244

8:                                                ; No predecessors!
  br label %lor.end24, !dbg !1244

lor.end24:                                        ; preds = %8, %lor.end12
  %9 = phi i1 [ true, %lor.end12 ], [ false, %8 ]
  %lor.ext25 = zext i1 %9 to i32, !dbg !1244
  %10 = load ptr, ptr %dbp.addr, align 8, !dbg !1245
  %cmp26 = icmp ne ptr %10, null, !dbg !1245
  br i1 %cmp26, label %land.rhs, label %land.end, !dbg !1245

land.rhs:                                         ; preds = %lor.end24
  %11 = load ptr, ptr %dbp.addr, align 8, !dbg !1245
  %12 = load ptr, ptr %11, align 8, !dbg !1245
  %cmp28 = icmp eq ptr %12, null, !dbg !1245
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end24
  %13 = phi i1 [ false, %lor.end24 ], [ %cmp28, %land.rhs ], !dbg !1246
  %lnot30 = xor i1 %13, true, !dbg !1245
  %lnot32 = xor i1 %lnot30, true, !dbg !1245
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !1245
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !1245
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 1), !dbg !1245
  %tobool36 = icmp ne i64 %expval35, 0, !dbg !1245
  br i1 %tobool36, label %lor.end38, label %lor.rhs37, !dbg !1245

lor.rhs37:                                        ; preds = %land.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 601, i32 noundef 0, ptr noundef @.str.7) #8, !dbg !1245
  unreachable, !dbg !1245

14:                                               ; No predecessors!
  br label %lor.end38, !dbg !1245

lor.end38:                                        ; preds = %14, %land.end
  %15 = phi i1 [ true, %land.end ], [ false, %14 ]
  %lor.ext39 = zext i1 %15 to i32, !dbg !1245
  %16 = load i32, ptr %argc.addr, align 4, !dbg !1247
  %17 = load ptr, ptr %argv.addr, align 8, !dbg !1248
  %18 = load ptr, ptr %driverarg.addr, align 8, !dbg !1249
  %19 = load ptr, ptr %mctx.addr, align 8, !dbg !1250
  %call = call ptr @isc__mem_get(ptr noundef %19, i64 noundef 192, ptr noundef @.str, i32 noundef 607), !dbg !1250
  store ptr %call, ptr %ecdb, align 8, !dbg !1251
  %20 = load ptr, ptr %ecdb, align 8, !dbg !1252
  %cmp40 = icmp eq ptr %20, null, !dbg !1254
  br i1 %cmp40, label %if.then, label %if.end, !dbg !1255

if.then:                                          ; preds = %lor.end38
  store i32 1, ptr %retval, align 4, !dbg !1256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1256

if.end:                                           ; preds = %lor.end38
  %21 = load ptr, ptr %ecdb, align 8, !dbg !1257
  %common = getelementptr inbounds %struct.dns_ecdb, ptr %21, i32 0, i32 0, !dbg !1258
  %attributes = getelementptr inbounds %struct.dns_db, ptr %common, i32 0, i32 3, !dbg !1259
  store i16 1, ptr %attributes, align 8, !dbg !1260
  %22 = load i16, ptr %rdclass.addr, align 2, !dbg !1261
  %23 = load ptr, ptr %ecdb, align 8, !dbg !1262
  %common42 = getelementptr inbounds %struct.dns_ecdb, ptr %23, i32 0, i32 0, !dbg !1263
  %rdclass43 = getelementptr inbounds %struct.dns_db, ptr %common42, i32 0, i32 4, !dbg !1264
  store i16 %22, ptr %rdclass43, align 2, !dbg !1265
  %24 = load ptr, ptr %ecdb, align 8, !dbg !1266
  %common44 = getelementptr inbounds %struct.dns_ecdb, ptr %24, i32 0, i32 0, !dbg !1267
  %methods = getelementptr inbounds %struct.dns_db, ptr %common44, i32 0, i32 2, !dbg !1268
  store ptr @ecdb_methods, ptr %methods, align 8, !dbg !1269
  %25 = load ptr, ptr %ecdb, align 8, !dbg !1270
  %common45 = getelementptr inbounds %struct.dns_ecdb, ptr %25, i32 0, i32 0, !dbg !1271
  %origin46 = getelementptr inbounds %struct.dns_db, ptr %common45, i32 0, i32 5, !dbg !1272
  call void @dns_name_init(ptr noundef %origin46, ptr noundef null), !dbg !1273
  %26 = load ptr, ptr %origin.addr, align 8, !dbg !1274
  %27 = load ptr, ptr %mctx.addr, align 8, !dbg !1275
  %28 = load ptr, ptr %ecdb, align 8, !dbg !1276
  %common47 = getelementptr inbounds %struct.dns_ecdb, ptr %28, i32 0, i32 0, !dbg !1277
  %origin48 = getelementptr inbounds %struct.dns_db, ptr %common47, i32 0, i32 5, !dbg !1278
  %call49 = call i32 @dns_name_dupwithoffsets(ptr noundef %26, ptr noundef %27, ptr noundef %origin48), !dbg !1279
  store i32 %call49, ptr %result, align 4, !dbg !1280
  %29 = load i32, ptr %result, align 4, !dbg !1281
  %cmp50 = icmp ne i32 %29, 0, !dbg !1283
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !1284

if.then52:                                        ; preds = %if.end
  br label %do.body, !dbg !1285

do.body:                                          ; preds = %if.then52
  %30 = load ptr, ptr %mctx.addr, align 8, !dbg !1287
  %31 = load ptr, ptr %ecdb, align 8, !dbg !1287
  call void @isc__mem_put(ptr noundef %30, ptr noundef %31, i64 noundef 192, ptr noundef @.str, i32 noundef 617), !dbg !1287
  store ptr null, ptr %ecdb, align 8, !dbg !1287
  br label %do.cond, !dbg !1287

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1287

do.end:                                           ; preds = %do.cond
  %32 = load i32, ptr %result, align 4, !dbg !1289
  store i32 %32, ptr %retval, align 4, !dbg !1290
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1290

if.end53:                                         ; preds = %if.end
  %33 = load ptr, ptr %ecdb, align 8, !dbg !1291
  %lock = getelementptr inbounds %struct.dns_ecdb, ptr %33, i32 0, i32 1, !dbg !1291
  call void @isc__mutex_init(ptr noundef %lock, ptr noundef @.str, i32 noundef 621), !dbg !1291
  %34 = load ptr, ptr %ecdb, align 8, !dbg !1292
  %references = getelementptr inbounds %struct.dns_ecdb, ptr %34, i32 0, i32 2, !dbg !1293
  store i32 1, ptr %references, align 8, !dbg !1294
  br label %do.body54, !dbg !1295

do.body54:                                        ; preds = %if.end53
  %35 = load ptr, ptr %ecdb, align 8, !dbg !1296
  %nodes = getelementptr inbounds %struct.dns_ecdb, ptr %35, i32 0, i32 3, !dbg !1296
  %head = getelementptr inbounds %struct.anon.7, ptr %nodes, i32 0, i32 0, !dbg !1296
  store ptr null, ptr %head, align 8, !dbg !1296
  %36 = load ptr, ptr %ecdb, align 8, !dbg !1296
  %nodes55 = getelementptr inbounds %struct.dns_ecdb, ptr %36, i32 0, i32 3, !dbg !1296
  %tail = getelementptr inbounds %struct.anon.7, ptr %nodes55, i32 0, i32 1, !dbg !1296
  store ptr null, ptr %tail, align 8, !dbg !1296
  br label %do.cond56, !dbg !1296

do.cond56:                                        ; preds = %do.body54
  br label %do.end57, !dbg !1296

do.end57:                                         ; preds = %do.cond56
  %37 = load ptr, ptr %ecdb, align 8, !dbg !1298
  %common58 = getelementptr inbounds %struct.dns_ecdb, ptr %37, i32 0, i32 0, !dbg !1299
  %mctx59 = getelementptr inbounds %struct.dns_db, ptr %common58, i32 0, i32 6, !dbg !1300
  store ptr null, ptr %mctx59, align 8, !dbg !1301
  %38 = load ptr, ptr %mctx.addr, align 8, !dbg !1302
  %39 = load ptr, ptr %ecdb, align 8, !dbg !1303
  %common60 = getelementptr inbounds %struct.dns_ecdb, ptr %39, i32 0, i32 0, !dbg !1304
  %mctx61 = getelementptr inbounds %struct.dns_db, ptr %common60, i32 0, i32 6, !dbg !1305
  call void @isc_mem_attach(ptr noundef %38, ptr noundef %mctx61), !dbg !1306
  %40 = load ptr, ptr %ecdb, align 8, !dbg !1307
  %common62 = getelementptr inbounds %struct.dns_ecdb, ptr %40, i32 0, i32 0, !dbg !1308
  %impmagic = getelementptr inbounds %struct.dns_db, ptr %common62, i32 0, i32 1, !dbg !1309
  store i32 1162036290, ptr %impmagic, align 4, !dbg !1310
  %41 = load ptr, ptr %ecdb, align 8, !dbg !1311
  %common63 = getelementptr inbounds %struct.dns_ecdb, ptr %41, i32 0, i32 0, !dbg !1312
  %magic = getelementptr inbounds %struct.dns_db, ptr %common63, i32 0, i32 0, !dbg !1313
  store i32 1145983812, ptr %magic, align 8, !dbg !1314
  %42 = load ptr, ptr %ecdb, align 8, !dbg !1315
  %43 = load ptr, ptr %dbp.addr, align 8, !dbg !1316
  store ptr %42, ptr %43, align 8, !dbg !1317
  store i32 0, ptr %retval, align 4, !dbg !1318
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1318

cleanup:                                          ; preds = %do.end57, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !1319
  call void @llvm.lifetime.end.p0(i64 8, ptr %ecdb) #9, !dbg !1319
  %44 = load i32, ptr %retval, align 4, !dbg !1319
  ret i32 %44, !dbg !1319
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define void @dns_ecdb_unregister(ptr noundef %dbimp) #0 !dbg !1320 {
entry:
  %dbimp.addr = alloca ptr, align 8
  store ptr %dbimp, ptr %dbimp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dbimp.addr, metadata !1324, metadata !DIExpression()), !dbg !1325
  %0 = load ptr, ptr %dbimp.addr, align 8, !dbg !1326
  %cmp = icmp ne ptr %0, null, !dbg !1326
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1326

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %dbimp.addr, align 8, !dbg !1326
  %2 = load ptr, ptr %1, align 8, !dbg !1326
  %cmp1 = icmp ne ptr %2, null, !dbg !1326
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !1327
  %lnot = xor i1 %3, true, !dbg !1326
  %lnot2 = xor i1 %lnot, true, !dbg !1326
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1326
  %conv = sext i32 %lnot.ext to i64, !dbg !1326
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1326
  %tobool = icmp ne i64 %expval, 0, !dbg !1326
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1326

lor.rhs:                                          ; preds = %land.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 145, i32 noundef 0, ptr noundef @.str.4) #8, !dbg !1326
  unreachable, !dbg !1326

4:                                                ; No predecessors!
  br label %lor.end, !dbg !1326

lor.end:                                          ; preds = %4, %land.end
  %5 = phi i1 [ true, %land.end ], [ false, %4 ]
  %lor.ext = zext i1 %5 to i32, !dbg !1326
  %6 = load ptr, ptr %dbimp.addr, align 8, !dbg !1328
  call void @dns_db_unregister(ptr noundef %6), !dbg !1329
  ret void, !dbg !1330
}

; Function Attrs: null_pointer_is_valid
declare !dbg !1331 void @dns_db_unregister(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare !dbg !1332 ptr @isc__mem_get(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !1333 void @dns_name_init(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !1336 i32 @dns_name_dupwithoffsets(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !1339 void @isc__mem_put(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !1340 void @isc__mutex_init(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !1344 void @isc_mem_attach(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @attach(ptr noundef %source, ptr noundef %targetp) #0 !dbg !1347 {
entry:
  %source.addr = alloca ptr, align 8
  %targetp.addr = alloca ptr, align 8
  %ecdb = alloca ptr, align 8
  store ptr %source, ptr %source.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %source.addr, metadata !1349, metadata !DIExpression()), !dbg !1352
  store ptr %targetp, ptr %targetp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %targetp.addr, metadata !1350, metadata !DIExpression()), !dbg !1353
  call void @llvm.lifetime.start.p0(i64 8, ptr %ecdb) #9, !dbg !1354
  tail call void @llvm.dbg.declare(metadata ptr %ecdb, metadata !1351, metadata !DIExpression()), !dbg !1355
  %0 = load ptr, ptr %source.addr, align 8, !dbg !1356
  store ptr %0, ptr %ecdb, align 8, !dbg !1355
  %1 = load ptr, ptr %ecdb, align 8, !dbg !1357
  %cmp = icmp ne ptr %1, null, !dbg !1357
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1357

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %ecdb, align 8, !dbg !1357
  %common = getelementptr inbounds %struct.dns_ecdb, ptr %2, i32 0, i32 0, !dbg !1357
  %impmagic = getelementptr inbounds %struct.dns_db, ptr %common, i32 0, i32 1, !dbg !1357
  %3 = load i32, ptr %impmagic, align 4, !dbg !1357
  %cmp1 = icmp eq i32 %3, 1162036290, !dbg !1357
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !1358
  %lnot = xor i1 %4, true, !dbg !1357
  %lnot2 = xor i1 %lnot, true, !dbg !1357
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1357
  %conv = sext i32 %lnot.ext to i64, !dbg !1357
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1357
  %tobool = icmp ne i64 %expval, 0, !dbg !1357
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1357

lor.rhs:                                          ; preds = %land.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 158, i32 noundef 0, ptr noundef @.str.8) #8, !dbg !1357
  unreachable, !dbg !1357

5:                                                ; No predecessors!
  br label %lor.end, !dbg !1357

lor.end:                                          ; preds = %5, %land.end
  %6 = phi i1 [ true, %land.end ], [ false, %5 ]
  %lor.ext = zext i1 %6 to i32, !dbg !1357
  %7 = load ptr, ptr %targetp.addr, align 8, !dbg !1359
  %cmp3 = icmp ne ptr %7, null, !dbg !1359
  br i1 %cmp3, label %land.rhs5, label %land.end8, !dbg !1359

land.rhs5:                                        ; preds = %lor.end
  %8 = load ptr, ptr %targetp.addr, align 8, !dbg !1359
  %9 = load ptr, ptr %8, align 8, !dbg !1359
  %cmp6 = icmp eq ptr %9, null, !dbg !1359
  br label %land.end8

land.end8:                                        ; preds = %land.rhs5, %lor.end
  %10 = phi i1 [ false, %lor.end ], [ %cmp6, %land.rhs5 ], !dbg !1358
  %lnot9 = xor i1 %10, true, !dbg !1359
  %lnot11 = xor i1 %lnot9, true, !dbg !1359
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !1359
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !1359
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 1), !dbg !1359
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !1359
  br i1 %tobool15, label %lor.end17, label %lor.rhs16, !dbg !1359

lor.rhs16:                                        ; preds = %land.end8
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 159, i32 noundef 0, ptr noundef @.str.9) #8, !dbg !1359
  unreachable, !dbg !1359

11:                                               ; No predecessors!
  br label %lor.end17, !dbg !1359

lor.end17:                                        ; preds = %11, %land.end8
  %12 = phi i1 [ true, %land.end8 ], [ false, %11 ]
  %lor.ext18 = zext i1 %12 to i32, !dbg !1359
  br label %do.body, !dbg !1360

do.body:                                          ; preds = %lor.end17
  %13 = load ptr, ptr %ecdb, align 8, !dbg !1361
  %lock = getelementptr inbounds %struct.dns_ecdb, ptr %13, i32 0, i32 1, !dbg !1361
  %call = call i32 @pthread_mutex_lock(ptr noundef %lock) #9, !dbg !1361
  %cmp19 = icmp eq i32 %call, 0, !dbg !1361
  %14 = zext i1 %cmp19 to i64, !dbg !1361
  %cond = select i1 %cmp19, i32 0, i32 34, !dbg !1361
  %cmp21 = icmp eq i32 %cond, 0, !dbg !1361
  %lnot23 = xor i1 %cmp21, true, !dbg !1361
  %lnot25 = xor i1 %lnot23, true, !dbg !1361
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !1361
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !1361
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 1), !dbg !1361
  %tobool29 = icmp ne i64 %expval28, 0, !dbg !1361
  br i1 %tobool29, label %lor.end31, label %lor.rhs30, !dbg !1361

lor.rhs30:                                        ; preds = %do.body
  call void @isc_error_runtimecheck(ptr noundef @.str, i32 noundef 161, ptr noundef @.str.10) #8, !dbg !1361
  unreachable, !dbg !1361

15:                                               ; No predecessors!
  br label %lor.end31, !dbg !1361

lor.end31:                                        ; preds = %15, %do.body
  %16 = phi i1 [ true, %do.body ], [ false, %15 ]
  %lor.ext32 = zext i1 %16 to i32, !dbg !1361
  br label %do.cond, !dbg !1361

do.cond:                                          ; preds = %lor.end31
  br label %do.end, !dbg !1361

do.end:                                           ; preds = %do.cond
  %17 = load ptr, ptr %ecdb, align 8, !dbg !1363
  %references = getelementptr inbounds %struct.dns_ecdb, ptr %17, i32 0, i32 2, !dbg !1364
  %18 = load i32, ptr %references, align 8, !dbg !1365
  %inc = add i32 %18, 1, !dbg !1365
  store i32 %inc, ptr %references, align 8, !dbg !1365
  br label %do.body33, !dbg !1366

do.body33:                                        ; preds = %do.end
  %19 = load ptr, ptr %ecdb, align 8, !dbg !1367
  %lock34 = getelementptr inbounds %struct.dns_ecdb, ptr %19, i32 0, i32 1, !dbg !1367
  %call35 = call i32 @pthread_mutex_unlock(ptr noundef %lock34) #9, !dbg !1367
  %cmp36 = icmp eq i32 %call35, 0, !dbg !1367
  %20 = zext i1 %cmp36 to i64, !dbg !1367
  %cond38 = select i1 %cmp36, i32 0, i32 34, !dbg !1367
  %cmp39 = icmp eq i32 %cond38, 0, !dbg !1367
  %lnot41 = xor i1 %cmp39, true, !dbg !1367
  %lnot43 = xor i1 %lnot41, true, !dbg !1367
  %lnot.ext44 = zext i1 %lnot43 to i32, !dbg !1367
  %conv45 = sext i32 %lnot.ext44 to i64, !dbg !1367
  %expval46 = call i64 @llvm.expect.i64(i64 %conv45, i64 1), !dbg !1367
  %tobool47 = icmp ne i64 %expval46, 0, !dbg !1367
  br i1 %tobool47, label %lor.end49, label %lor.rhs48, !dbg !1367

lor.rhs48:                                        ; preds = %do.body33
  call void @isc_error_runtimecheck(ptr noundef @.str, i32 noundef 163, ptr noundef @.str.11) #8, !dbg !1367
  unreachable, !dbg !1367

21:                                               ; No predecessors!
  br label %lor.end49, !dbg !1367

lor.end49:                                        ; preds = %21, %do.body33
  %22 = phi i1 [ true, %do.body33 ], [ false, %21 ]
  %lor.ext50 = zext i1 %22 to i32, !dbg !1367
  br label %do.cond51, !dbg !1367

do.cond51:                                        ; preds = %lor.end49
  br label %do.end52, !dbg !1367

do.end52:                                         ; preds = %do.cond51
  %23 = load ptr, ptr %source.addr, align 8, !dbg !1369
  %24 = load ptr, ptr %targetp.addr, align 8, !dbg !1370
  store ptr %23, ptr %24, align 8, !dbg !1371
  call void @llvm.lifetime.end.p0(i64 8, ptr %ecdb) #9, !dbg !1372
  ret void, !dbg !1372
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @detach(ptr noundef %dbp) #0 !dbg !1373 {
entry:
  %dbp.addr = alloca ptr, align 8
  %ecdb = alloca ptr, align 8
  %need_destroy = alloca i8, align 1
  store ptr %dbp, ptr %dbp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dbp.addr, metadata !1375, metadata !DIExpression()), !dbg !1378
  call void @llvm.lifetime.start.p0(i64 8, ptr %ecdb) #9, !dbg !1379
  tail call void @llvm.dbg.declare(metadata ptr %ecdb, metadata !1376, metadata !DIExpression()), !dbg !1380
  call void @llvm.lifetime.start.p0(i64 1, ptr %need_destroy) #9, !dbg !1381
  tail call void @llvm.dbg.declare(metadata ptr %need_destroy, metadata !1377, metadata !DIExpression()), !dbg !1382
  store i8 0, ptr %need_destroy, align 1, !dbg !1382
  %0 = load ptr, ptr %dbp.addr, align 8, !dbg !1383
  %cmp = icmp ne ptr %0, null, !dbg !1383
  %lnot = xor i1 %cmp, true, !dbg !1383
  %lnot1 = xor i1 %lnot, true, !dbg !1383
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1383
  %conv = sext i32 %lnot.ext to i64, !dbg !1383
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1383
  %tobool = icmp ne i64 %expval, 0, !dbg !1383
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1383

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 191, i32 noundef 0, ptr noundef @.str.12) #8, !dbg !1383
  unreachable, !dbg !1383

1:                                                ; No predecessors!
  br label %lor.end, !dbg !1383

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !1383
  %3 = load ptr, ptr %dbp.addr, align 8, !dbg !1384
  %4 = load ptr, ptr %3, align 8, !dbg !1385
  store ptr %4, ptr %ecdb, align 8, !dbg !1386
  %5 = load ptr, ptr %ecdb, align 8, !dbg !1387
  %cmp2 = icmp ne ptr %5, null, !dbg !1387
  br i1 %cmp2, label %land.rhs, label %land.end, !dbg !1387

land.rhs:                                         ; preds = %lor.end
  %6 = load ptr, ptr %ecdb, align 8, !dbg !1387
  %common = getelementptr inbounds %struct.dns_ecdb, ptr %6, i32 0, i32 0, !dbg !1387
  %impmagic = getelementptr inbounds %struct.dns_db, ptr %common, i32 0, i32 1, !dbg !1387
  %7 = load i32, ptr %impmagic, align 4, !dbg !1387
  %cmp4 = icmp eq i32 %7, 1162036290, !dbg !1387
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end
  %8 = phi i1 [ false, %lor.end ], [ %cmp4, %land.rhs ], !dbg !1388
  %lnot6 = xor i1 %8, true, !dbg !1387
  %lnot8 = xor i1 %lnot6, true, !dbg !1387
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !1387
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !1387
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !1387
  %tobool12 = icmp ne i64 %expval11, 0, !dbg !1387
  br i1 %tobool12, label %lor.end14, label %lor.rhs13, !dbg !1387

lor.rhs13:                                        ; preds = %land.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 193, i32 noundef 0, ptr noundef @.str.8) #8, !dbg !1387
  unreachable, !dbg !1387

9:                                                ; No predecessors!
  br label %lor.end14, !dbg !1387

lor.end14:                                        ; preds = %9, %land.end
  %10 = phi i1 [ true, %land.end ], [ false, %9 ]
  %lor.ext15 = zext i1 %10 to i32, !dbg !1387
  br label %do.body, !dbg !1389

do.body:                                          ; preds = %lor.end14
  %11 = load ptr, ptr %ecdb, align 8, !dbg !1390
  %lock = getelementptr inbounds %struct.dns_ecdb, ptr %11, i32 0, i32 1, !dbg !1390
  %call = call i32 @pthread_mutex_lock(ptr noundef %lock) #9, !dbg !1390
  %cmp16 = icmp eq i32 %call, 0, !dbg !1390
  %12 = zext i1 %cmp16 to i64, !dbg !1390
  %cond = select i1 %cmp16, i32 0, i32 34, !dbg !1390
  %cmp18 = icmp eq i32 %cond, 0, !dbg !1390
  %lnot20 = xor i1 %cmp18, true, !dbg !1390
  %lnot22 = xor i1 %lnot20, true, !dbg !1390
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !1390
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !1390
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 1), !dbg !1390
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !1390
  br i1 %tobool26, label %lor.end28, label %lor.rhs27, !dbg !1390

lor.rhs27:                                        ; preds = %do.body
  call void @isc_error_runtimecheck(ptr noundef @.str, i32 noundef 195, ptr noundef @.str.10) #8, !dbg !1390
  unreachable, !dbg !1390

13:                                               ; No predecessors!
  br label %lor.end28, !dbg !1390

lor.end28:                                        ; preds = %13, %do.body
  %14 = phi i1 [ true, %do.body ], [ false, %13 ]
  %lor.ext29 = zext i1 %14 to i32, !dbg !1390
  br label %do.cond, !dbg !1390

do.cond:                                          ; preds = %lor.end28
  br label %do.end, !dbg !1390

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %ecdb, align 8, !dbg !1392
  %references = getelementptr inbounds %struct.dns_ecdb, ptr %15, i32 0, i32 2, !dbg !1393
  %16 = load i32, ptr %references, align 8, !dbg !1394
  %dec = add i32 %16, -1, !dbg !1394
  store i32 %dec, ptr %references, align 8, !dbg !1394
  %17 = load ptr, ptr %ecdb, align 8, !dbg !1395
  %references30 = getelementptr inbounds %struct.dns_ecdb, ptr %17, i32 0, i32 2, !dbg !1397
  %18 = load i32, ptr %references30, align 8, !dbg !1397
  %cmp31 = icmp eq i32 %18, 0, !dbg !1398
  br i1 %cmp31, label %land.lhs.true, label %if.end, !dbg !1399

land.lhs.true:                                    ; preds = %do.end
  %19 = load ptr, ptr %ecdb, align 8, !dbg !1400
  %nodes = getelementptr inbounds %struct.dns_ecdb, ptr %19, i32 0, i32 3, !dbg !1400
  %head = getelementptr inbounds %struct.anon.7, ptr %nodes, i32 0, i32 0, !dbg !1400
  %20 = load ptr, ptr %head, align 8, !dbg !1400
  %cmp33 = icmp eq ptr %20, null, !dbg !1400
  br i1 %cmp33, label %if.then, label %if.end, !dbg !1401

if.then:                                          ; preds = %land.lhs.true
  store i8 1, ptr %need_destroy, align 1, !dbg !1402
  br label %if.end, !dbg !1403

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  br label %do.body35, !dbg !1404

do.body35:                                        ; preds = %if.end
  %21 = load ptr, ptr %ecdb, align 8, !dbg !1405
  %lock36 = getelementptr inbounds %struct.dns_ecdb, ptr %21, i32 0, i32 1, !dbg !1405
  %call37 = call i32 @pthread_mutex_unlock(ptr noundef %lock36) #9, !dbg !1405
  %cmp38 = icmp eq i32 %call37, 0, !dbg !1405
  %22 = zext i1 %cmp38 to i64, !dbg !1405
  %cond40 = select i1 %cmp38, i32 0, i32 34, !dbg !1405
  %cmp41 = icmp eq i32 %cond40, 0, !dbg !1405
  %lnot43 = xor i1 %cmp41, true, !dbg !1405
  %lnot45 = xor i1 %lnot43, true, !dbg !1405
  %lnot.ext46 = zext i1 %lnot45 to i32, !dbg !1405
  %conv47 = sext i32 %lnot.ext46 to i64, !dbg !1405
  %expval48 = call i64 @llvm.expect.i64(i64 %conv47, i64 1), !dbg !1405
  %tobool49 = icmp ne i64 %expval48, 0, !dbg !1405
  br i1 %tobool49, label %lor.end51, label %lor.rhs50, !dbg !1405

lor.rhs50:                                        ; preds = %do.body35
  call void @isc_error_runtimecheck(ptr noundef @.str, i32 noundef 199, ptr noundef @.str.11) #8, !dbg !1405
  unreachable, !dbg !1405

23:                                               ; No predecessors!
  br label %lor.end51, !dbg !1405

lor.end51:                                        ; preds = %23, %do.body35
  %24 = phi i1 [ true, %do.body35 ], [ false, %23 ]
  %lor.ext52 = zext i1 %24 to i32, !dbg !1405
  br label %do.cond53, !dbg !1405

do.cond53:                                        ; preds = %lor.end51
  br label %do.end54, !dbg !1405

do.end54:                                         ; preds = %do.cond53
  %25 = load i8, ptr %need_destroy, align 1, !dbg !1407, !range !1409, !noundef !1410
  %tobool55 = trunc i8 %25 to i1, !dbg !1407
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !1411

if.then56:                                        ; preds = %do.end54
  call void @destroy_ecdb(ptr noundef %ecdb), !dbg !1412
  br label %if.end57, !dbg !1412

if.end57:                                         ; preds = %if.then56, %do.end54
  %26 = load ptr, ptr %dbp.addr, align 8, !dbg !1413
  store ptr null, ptr %26, align 8, !dbg !1414
  call void @llvm.lifetime.end.p0(i64 1, ptr %need_destroy) #9, !dbg !1415
  call void @llvm.lifetime.end.p0(i64 8, ptr %ecdb) #9, !dbg !1415
  ret void, !dbg !1415
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @findnode(ptr noundef %db, ptr noundef %name, i1 noundef zeroext %create, ptr noundef %nodep) #0 !dbg !1416 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %create.addr = alloca i8, align 1
  %nodep.addr = alloca ptr, align 8
  %ecdb = alloca ptr, align 8
  %mctx = alloca ptr, align 8
  %node = alloca ptr, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !1418, metadata !DIExpression()), !dbg !1426
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1419, metadata !DIExpression()), !dbg !1427
  %frombool = zext i1 %create to i8
  store i8 %frombool, ptr %create.addr, align 1
  tail call void @llvm.dbg.declare(metadata ptr %create.addr, metadata !1420, metadata !DIExpression()), !dbg !1428
  store ptr %nodep, ptr %nodep.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %nodep.addr, metadata !1421, metadata !DIExpression()), !dbg !1429
  call void @llvm.lifetime.start.p0(i64 8, ptr %ecdb) #9, !dbg !1430
  tail call void @llvm.dbg.declare(metadata ptr %ecdb, metadata !1422, metadata !DIExpression()), !dbg !1431
  %0 = load ptr, ptr %db.addr, align 8, !dbg !1432
  store ptr %0, ptr %ecdb, align 8, !dbg !1431
  call void @llvm.lifetime.start.p0(i64 8, ptr %mctx) #9, !dbg !1433
  tail call void @llvm.dbg.declare(metadata ptr %mctx, metadata !1423, metadata !DIExpression()), !dbg !1434
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #9, !dbg !1435
  tail call void @llvm.dbg.declare(metadata ptr %node, metadata !1424, metadata !DIExpression()), !dbg !1436
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !1437
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1425, metadata !DIExpression()), !dbg !1438
  %1 = load ptr, ptr %ecdb, align 8, !dbg !1439
  %cmp = icmp ne ptr %1, null, !dbg !1439
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1439

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %ecdb, align 8, !dbg !1439
  %common = getelementptr inbounds %struct.dns_ecdb, ptr %2, i32 0, i32 0, !dbg !1439
  %impmagic = getelementptr inbounds %struct.dns_db, ptr %common, i32 0, i32 1, !dbg !1439
  %3 = load i32, ptr %impmagic, align 4, !dbg !1439
  %cmp1 = icmp eq i32 %3, 1162036290, !dbg !1439
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !1440
  %lnot = xor i1 %4, true, !dbg !1439
  %lnot2 = xor i1 %lnot, true, !dbg !1439
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1439
  %conv = sext i32 %lnot.ext to i64, !dbg !1439
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1439
  %tobool = icmp ne i64 %expval, 0, !dbg !1439
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1439

lor.rhs:                                          ; preds = %land.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 342, i32 noundef 0, ptr noundef @.str.8) #8, !dbg !1439
  unreachable, !dbg !1439

5:                                                ; No predecessors!
  br label %lor.end, !dbg !1439

lor.end:                                          ; preds = %5, %land.end
  %6 = phi i1 [ true, %land.end ], [ false, %5 ]
  %lor.ext = zext i1 %6 to i32, !dbg !1439
  %7 = load ptr, ptr %nodep.addr, align 8, !dbg !1441
  %cmp3 = icmp ne ptr %7, null, !dbg !1441
  br i1 %cmp3, label %land.rhs5, label %land.end8, !dbg !1441

land.rhs5:                                        ; preds = %lor.end
  %8 = load ptr, ptr %nodep.addr, align 8, !dbg !1441
  %9 = load ptr, ptr %8, align 8, !dbg !1441
  %cmp6 = icmp eq ptr %9, null, !dbg !1441
  br label %land.end8

land.end8:                                        ; preds = %land.rhs5, %lor.end
  %10 = phi i1 [ false, %lor.end ], [ %cmp6, %land.rhs5 ], !dbg !1440
  %lnot9 = xor i1 %10, true, !dbg !1441
  %lnot11 = xor i1 %lnot9, true, !dbg !1441
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !1441
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !1441
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 1), !dbg !1441
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !1441
  br i1 %tobool15, label %lor.end17, label %lor.rhs16, !dbg !1441

lor.rhs16:                                        ; preds = %land.end8
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 343, i32 noundef 0, ptr noundef @.str.14) #8, !dbg !1441
  unreachable, !dbg !1441

11:                                               ; No predecessors!
  br label %lor.end17, !dbg !1441

lor.end17:                                        ; preds = %11, %land.end8
  %12 = phi i1 [ true, %land.end8 ], [ false, %11 ]
  %lor.ext18 = zext i1 %12 to i32, !dbg !1441
  %13 = load ptr, ptr %name.addr, align 8, !dbg !1442
  %14 = load i8, ptr %create.addr, align 1, !dbg !1443, !range !1409, !noundef !1410
  %tobool19 = trunc i8 %14 to i1, !dbg !1443
  %conv20 = zext i1 %tobool19 to i32, !dbg !1443
  %cmp21 = icmp ne i32 %conv20, 1, !dbg !1445
  br i1 %cmp21, label %if.then, label %if.end, !dbg !1446

if.then:                                          ; preds = %lor.end17
  store i32 23, ptr %retval, align 4, !dbg !1447
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1447

if.end:                                           ; preds = %lor.end17
  %15 = load ptr, ptr %ecdb, align 8, !dbg !1449
  %common23 = getelementptr inbounds %struct.dns_ecdb, ptr %15, i32 0, i32 0, !dbg !1450
  %mctx24 = getelementptr inbounds %struct.dns_db, ptr %common23, i32 0, i32 6, !dbg !1451
  %16 = load ptr, ptr %mctx24, align 8, !dbg !1451
  store ptr %16, ptr %mctx, align 8, !dbg !1452
  %17 = load ptr, ptr %mctx, align 8, !dbg !1453
  %call = call ptr @isc__mem_get(ptr noundef %17, i64 noundef 176, ptr noundef @.str, i32 noundef 353), !dbg !1453
  store ptr %call, ptr %node, align 8, !dbg !1454
  %18 = load ptr, ptr %node, align 8, !dbg !1455
  %cmp25 = icmp eq ptr %18, null, !dbg !1457
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !1458

if.then27:                                        ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1459
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1459

if.end28:                                         ; preds = %if.end
  %19 = load ptr, ptr %node, align 8, !dbg !1460
  %lock = getelementptr inbounds %struct.dns_ecdbnode, ptr %19, i32 0, i32 1, !dbg !1460
  call void @isc__mutex_init(ptr noundef %lock, ptr noundef @.str, i32 noundef 357), !dbg !1460
  %20 = load ptr, ptr %node, align 8, !dbg !1461
  %name29 = getelementptr inbounds %struct.dns_ecdbnode, ptr %20, i32 0, i32 3, !dbg !1462
  call void @dns_name_init(ptr noundef %name29, ptr noundef null), !dbg !1463
  %21 = load ptr, ptr %name.addr, align 8, !dbg !1464
  %22 = load ptr, ptr %mctx, align 8, !dbg !1465
  %23 = load ptr, ptr %node, align 8, !dbg !1466
  %name30 = getelementptr inbounds %struct.dns_ecdbnode, ptr %23, i32 0, i32 3, !dbg !1467
  %call31 = call i32 @dns_name_dup(ptr noundef %21, ptr noundef %22, ptr noundef %name30), !dbg !1468
  store i32 %call31, ptr %result, align 4, !dbg !1469
  %24 = load i32, ptr %result, align 4, !dbg !1470
  %cmp32 = icmp ne i32 %24, 0, !dbg !1472
  br i1 %cmp32, label %if.then34, label %if.end49, !dbg !1473

if.then34:                                        ; preds = %if.end28
  %25 = load ptr, ptr %node, align 8, !dbg !1474
  %lock35 = getelementptr inbounds %struct.dns_ecdbnode, ptr %25, i32 0, i32 1, !dbg !1474
  %call36 = call i32 @pthread_mutex_destroy(ptr noundef %lock35) #9, !dbg !1474
  %cmp37 = icmp eq i32 %call36, 0, !dbg !1474
  %lnot39 = xor i1 %cmp37, true, !dbg !1474
  %lnot41 = xor i1 %lnot39, true, !dbg !1474
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !1474
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !1474
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 1), !dbg !1474
  %tobool45 = icmp ne i64 %expval44, 0, !dbg !1474
  br i1 %tobool45, label %lor.end47, label %lor.rhs46, !dbg !1474

lor.rhs46:                                        ; preds = %if.then34
  call void @isc_error_runtimecheck(ptr noundef @.str, i32 noundef 362, ptr noundef @.str.15) #8, !dbg !1474
  unreachable, !dbg !1474

26:                                               ; No predecessors!
  br label %lor.end47, !dbg !1474

lor.end47:                                        ; preds = %26, %if.then34
  %27 = phi i1 [ true, %if.then34 ], [ false, %26 ]
  %lor.ext48 = zext i1 %27 to i32, !dbg !1474
  br label %do.body, !dbg !1476

do.body:                                          ; preds = %lor.end47
  %28 = load ptr, ptr %mctx, align 8, !dbg !1477
  %29 = load ptr, ptr %node, align 8, !dbg !1477
  call void @isc__mem_put(ptr noundef %28, ptr noundef %29, i64 noundef 176, ptr noundef @.str, i32 noundef 363), !dbg !1477
  store ptr null, ptr %node, align 8, !dbg !1477
  br label %do.cond, !dbg !1477

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1477

do.end:                                           ; preds = %do.cond
  %30 = load i32, ptr %result, align 4, !dbg !1479
  store i32 %30, ptr %retval, align 4, !dbg !1480
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1480

if.end49:                                         ; preds = %if.end28
  %31 = load ptr, ptr %ecdb, align 8, !dbg !1481
  %32 = load ptr, ptr %node, align 8, !dbg !1482
  %ecdb50 = getelementptr inbounds %struct.dns_ecdbnode, ptr %32, i32 0, i32 2, !dbg !1483
  store ptr %31, ptr %ecdb50, align 8, !dbg !1484
  %33 = load ptr, ptr %node, align 8, !dbg !1485
  %references = getelementptr inbounds %struct.dns_ecdbnode, ptr %33, i32 0, i32 6, !dbg !1486
  store i32 1, ptr %references, align 8, !dbg !1487
  br label %do.body51, !dbg !1488

do.body51:                                        ; preds = %if.end49
  %34 = load ptr, ptr %node, align 8, !dbg !1489
  %rdatasets = getelementptr inbounds %struct.dns_ecdbnode, ptr %34, i32 0, i32 5, !dbg !1489
  %head = getelementptr inbounds %struct.anon.9, ptr %rdatasets, i32 0, i32 0, !dbg !1489
  store ptr null, ptr %head, align 8, !dbg !1489
  %35 = load ptr, ptr %node, align 8, !dbg !1489
  %rdatasets52 = getelementptr inbounds %struct.dns_ecdbnode, ptr %35, i32 0, i32 5, !dbg !1489
  %tail = getelementptr inbounds %struct.anon.9, ptr %rdatasets52, i32 0, i32 1, !dbg !1489
  store ptr null, ptr %tail, align 8, !dbg !1489
  br label %do.cond53, !dbg !1489

do.cond53:                                        ; preds = %do.body51
  br label %do.end54, !dbg !1489

do.end54:                                         ; preds = %do.cond53
  br label %do.body55, !dbg !1491

do.body55:                                        ; preds = %do.end54
  %36 = load ptr, ptr %node, align 8, !dbg !1492
  %link = getelementptr inbounds %struct.dns_ecdbnode, ptr %36, i32 0, i32 4, !dbg !1492
  %prev = getelementptr inbounds %struct.anon.8, ptr %link, i32 0, i32 0, !dbg !1492
  store ptr inttoptr (i64 -1 to ptr), ptr %prev, align 8, !dbg !1492
  %37 = load ptr, ptr %node, align 8, !dbg !1492
  %link56 = getelementptr inbounds %struct.dns_ecdbnode, ptr %37, i32 0, i32 4, !dbg !1492
  %next = getelementptr inbounds %struct.anon.8, ptr %link56, i32 0, i32 1, !dbg !1492
  store ptr inttoptr (i64 -1 to ptr), ptr %next, align 8, !dbg !1492
  br label %do.cond57, !dbg !1492

do.cond57:                                        ; preds = %do.body55
  br label %do.end58, !dbg !1492

do.end58:                                         ; preds = %do.cond57
  br label %do.body59, !dbg !1494

do.body59:                                        ; preds = %do.end58
  %38 = load ptr, ptr %ecdb, align 8, !dbg !1495
  %lock60 = getelementptr inbounds %struct.dns_ecdb, ptr %38, i32 0, i32 1, !dbg !1495
  %call61 = call i32 @pthread_mutex_lock(ptr noundef %lock60) #9, !dbg !1495
  %cmp62 = icmp eq i32 %call61, 0, !dbg !1495
  %39 = zext i1 %cmp62 to i64, !dbg !1495
  %cond = select i1 %cmp62, i32 0, i32 34, !dbg !1495
  %cmp64 = icmp eq i32 %cond, 0, !dbg !1495
  %lnot66 = xor i1 %cmp64, true, !dbg !1495
  %lnot68 = xor i1 %lnot66, true, !dbg !1495
  %lnot.ext69 = zext i1 %lnot68 to i32, !dbg !1495
  %conv70 = sext i32 %lnot.ext69 to i64, !dbg !1495
  %expval71 = call i64 @llvm.expect.i64(i64 %conv70, i64 1), !dbg !1495
  %tobool72 = icmp ne i64 %expval71, 0, !dbg !1495
  br i1 %tobool72, label %lor.end74, label %lor.rhs73, !dbg !1495

lor.rhs73:                                        ; preds = %do.body59
  call void @isc_error_runtimecheck(ptr noundef @.str, i32 noundef 372, ptr noundef @.str.10) #8, !dbg !1495
  unreachable, !dbg !1495

40:                                               ; No predecessors!
  br label %lor.end74, !dbg !1495

lor.end74:                                        ; preds = %40, %do.body59
  %41 = phi i1 [ true, %do.body59 ], [ false, %40 ]
  %lor.ext75 = zext i1 %41 to i32, !dbg !1495
  br label %do.cond76, !dbg !1495

do.cond76:                                        ; preds = %lor.end74
  br label %do.end77, !dbg !1495

do.end77:                                         ; preds = %do.cond76
  br label %do.body78, !dbg !1497

do.body78:                                        ; preds = %do.end77
  br label %do.body79, !dbg !1498

do.body79:                                        ; preds = %do.body78
  %42 = load ptr, ptr %ecdb, align 8, !dbg !1500
  %nodes = getelementptr inbounds %struct.dns_ecdb, ptr %42, i32 0, i32 3, !dbg !1500
  %tail80 = getelementptr inbounds %struct.anon.7, ptr %nodes, i32 0, i32 1, !dbg !1500
  %43 = load ptr, ptr %tail80, align 8, !dbg !1500
  %cmp81 = icmp ne ptr %43, null, !dbg !1500
  br i1 %cmp81, label %if.then83, label %if.else, !dbg !1503

if.then83:                                        ; preds = %do.body79
  %44 = load ptr, ptr %node, align 8, !dbg !1500
  %45 = load ptr, ptr %ecdb, align 8, !dbg !1500
  %nodes84 = getelementptr inbounds %struct.dns_ecdb, ptr %45, i32 0, i32 3, !dbg !1500
  %tail85 = getelementptr inbounds %struct.anon.7, ptr %nodes84, i32 0, i32 1, !dbg !1500
  %46 = load ptr, ptr %tail85, align 8, !dbg !1500
  %link86 = getelementptr inbounds %struct.dns_ecdbnode, ptr %46, i32 0, i32 4, !dbg !1500
  %next87 = getelementptr inbounds %struct.anon.8, ptr %link86, i32 0, i32 1, !dbg !1500
  store ptr %44, ptr %next87, align 8, !dbg !1500
  br label %if.end90, !dbg !1500

if.else:                                          ; preds = %do.body79
  %47 = load ptr, ptr %node, align 8, !dbg !1500
  %48 = load ptr, ptr %ecdb, align 8, !dbg !1500
  %nodes88 = getelementptr inbounds %struct.dns_ecdb, ptr %48, i32 0, i32 3, !dbg !1500
  %head89 = getelementptr inbounds %struct.anon.7, ptr %nodes88, i32 0, i32 0, !dbg !1500
  store ptr %47, ptr %head89, align 8, !dbg !1500
  br label %if.end90

if.end90:                                         ; preds = %if.else, %if.then83
  %49 = load ptr, ptr %ecdb, align 8, !dbg !1503
  %nodes91 = getelementptr inbounds %struct.dns_ecdb, ptr %49, i32 0, i32 3, !dbg !1503
  %tail92 = getelementptr inbounds %struct.anon.7, ptr %nodes91, i32 0, i32 1, !dbg !1503
  %50 = load ptr, ptr %tail92, align 8, !dbg !1503
  %51 = load ptr, ptr %node, align 8, !dbg !1503
  %link93 = getelementptr inbounds %struct.dns_ecdbnode, ptr %51, i32 0, i32 4, !dbg !1503
  %prev94 = getelementptr inbounds %struct.anon.8, ptr %link93, i32 0, i32 0, !dbg !1503
  store ptr %50, ptr %prev94, align 8, !dbg !1503
  %52 = load ptr, ptr %node, align 8, !dbg !1503
  %link95 = getelementptr inbounds %struct.dns_ecdbnode, ptr %52, i32 0, i32 4, !dbg !1503
  %next96 = getelementptr inbounds %struct.anon.8, ptr %link95, i32 0, i32 1, !dbg !1503
  store ptr null, ptr %next96, align 8, !dbg !1503
  %53 = load ptr, ptr %node, align 8, !dbg !1503
  %54 = load ptr, ptr %ecdb, align 8, !dbg !1503
  %nodes97 = getelementptr inbounds %struct.dns_ecdb, ptr %54, i32 0, i32 3, !dbg !1503
  %tail98 = getelementptr inbounds %struct.anon.7, ptr %nodes97, i32 0, i32 1, !dbg !1503
  store ptr %53, ptr %tail98, align 8, !dbg !1503
  br label %do.cond99, !dbg !1503

do.cond99:                                        ; preds = %if.end90
  br label %do.end100, !dbg !1503

do.end100:                                        ; preds = %do.cond99
  br label %do.cond101, !dbg !1498

do.cond101:                                       ; preds = %do.end100
  br label %do.end102, !dbg !1498

do.end102:                                        ; preds = %do.cond101
  br label %do.body103, !dbg !1504

do.body103:                                       ; preds = %do.end102
  %55 = load ptr, ptr %ecdb, align 8, !dbg !1505
  %lock104 = getelementptr inbounds %struct.dns_ecdb, ptr %55, i32 0, i32 1, !dbg !1505
  %call105 = call i32 @pthread_mutex_unlock(ptr noundef %lock104) #9, !dbg !1505
  %cmp106 = icmp eq i32 %call105, 0, !dbg !1505
  %56 = zext i1 %cmp106 to i64, !dbg !1505
  %cond108 = select i1 %cmp106, i32 0, i32 34, !dbg !1505
  %cmp109 = icmp eq i32 %cond108, 0, !dbg !1505
  %lnot111 = xor i1 %cmp109, true, !dbg !1505
  %lnot113 = xor i1 %lnot111, true, !dbg !1505
  %lnot.ext114 = zext i1 %lnot113 to i32, !dbg !1505
  %conv115 = sext i32 %lnot.ext114 to i64, !dbg !1505
  %expval116 = call i64 @llvm.expect.i64(i64 %conv115, i64 1), !dbg !1505
  %tobool117 = icmp ne i64 %expval116, 0, !dbg !1505
  br i1 %tobool117, label %lor.end119, label %lor.rhs118, !dbg !1505

lor.rhs118:                                       ; preds = %do.body103
  call void @isc_error_runtimecheck(ptr noundef @.str, i32 noundef 374, ptr noundef @.str.11) #8, !dbg !1505
  unreachable, !dbg !1505

57:                                               ; No predecessors!
  br label %lor.end119, !dbg !1505

lor.end119:                                       ; preds = %57, %do.body103
  %58 = phi i1 [ true, %do.body103 ], [ false, %57 ]
  %lor.ext120 = zext i1 %58 to i32, !dbg !1505
  br label %do.cond121, !dbg !1505

do.cond121:                                       ; preds = %lor.end119
  br label %do.end122, !dbg !1505

do.end122:                                        ; preds = %do.cond121
  %59 = load ptr, ptr %node, align 8, !dbg !1507
  %magic = getelementptr inbounds %struct.dns_ecdbnode, ptr %59, i32 0, i32 0, !dbg !1508
  store i32 1162036302, ptr %magic, align 8, !dbg !1509
  %60 = load ptr, ptr %node, align 8, !dbg !1510
  %61 = load ptr, ptr %nodep.addr, align 8, !dbg !1511
  store ptr %60, ptr %61, align 8, !dbg !1512
  store i32 0, ptr %retval, align 4, !dbg !1513
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1513

cleanup:                                          ; preds = %do.end122, %do.end, %if.then27, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !1514
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #9, !dbg !1514
  call void @llvm.lifetime.end.p0(i64 8, ptr %mctx) #9, !dbg !1514
  call void @llvm.lifetime.end.p0(i64 8, ptr %ecdb) #9, !dbg !1514
  %62 = load i32, ptr %retval, align 4, !dbg !1514
  ret i32 %62, !dbg !1514
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @find(ptr noundef %db, ptr noundef %name, ptr noundef %version, i16 noundef zeroext %type, i32 noundef %options, i32 noundef %now, ptr noundef %nodep, ptr noundef %foundname, ptr noundef %rdataset, ptr noundef %sigrdataset) #0 !dbg !1515 {
entry:
  %db.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %version.addr = alloca ptr, align 8
  %type.addr = alloca i16, align 2
  %options.addr = alloca i32, align 4
  %now.addr = alloca i32, align 4
  %nodep.addr = alloca ptr, align 8
  %foundname.addr = alloca ptr, align 8
  %rdataset.addr = alloca ptr, align 8
  %sigrdataset.addr = alloca ptr, align 8
  %ecdb = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !1517, metadata !DIExpression()), !dbg !1528
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1518, metadata !DIExpression()), !dbg !1529
  store ptr %version, ptr %version.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %version.addr, metadata !1519, metadata !DIExpression()), !dbg !1530
  store i16 %type, ptr %type.addr, align 2
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1520, metadata !DIExpression()), !dbg !1531
  store i32 %options, ptr %options.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %options.addr, metadata !1521, metadata !DIExpression()), !dbg !1532
  store i32 %now, ptr %now.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %now.addr, metadata !1522, metadata !DIExpression()), !dbg !1533
  store ptr %nodep, ptr %nodep.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %nodep.addr, metadata !1523, metadata !DIExpression()), !dbg !1534
  store ptr %foundname, ptr %foundname.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %foundname.addr, metadata !1524, metadata !DIExpression()), !dbg !1535
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !1525, metadata !DIExpression()), !dbg !1536
  store ptr %sigrdataset, ptr %sigrdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %sigrdataset.addr, metadata !1526, metadata !DIExpression()), !dbg !1537
  call void @llvm.lifetime.start.p0(i64 8, ptr %ecdb) #9, !dbg !1538
  tail call void @llvm.dbg.declare(metadata ptr %ecdb, metadata !1527, metadata !DIExpression()), !dbg !1539
  %0 = load ptr, ptr %db.addr, align 8, !dbg !1540
  store ptr %0, ptr %ecdb, align 8, !dbg !1539
  %1 = load ptr, ptr %ecdb, align 8, !dbg !1541
  %cmp = icmp ne ptr %1, null, !dbg !1541
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1541

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %ecdb, align 8, !dbg !1541
  %common = getelementptr inbounds %struct.dns_ecdb, ptr %2, i32 0, i32 0, !dbg !1541
  %impmagic = getelementptr inbounds %struct.dns_db, ptr %common, i32 0, i32 1, !dbg !1541
  %3 = load i32, ptr %impmagic, align 4, !dbg !1541
  %cmp1 = icmp eq i32 %3, 1162036290, !dbg !1541
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !1542
  %lnot = xor i1 %4, true, !dbg !1541
  %lnot2 = xor i1 %lnot, true, !dbg !1541
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1541
  %conv = sext i32 %lnot.ext to i64, !dbg !1541
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1541
  %tobool = icmp ne i64 %expval, 0, !dbg !1541
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1541

lor.rhs:                                          ; preds = %land.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 295, i32 noundef 0, ptr noundef @.str.8) #8, !dbg !1541
  unreachable, !dbg !1541

5:                                                ; No predecessors!
  br label %lor.end, !dbg !1541

lor.end:                                          ; preds = %5, %land.end
  %6 = phi i1 [ true, %land.end ], [ false, %5 ]
  %lor.ext = zext i1 %6 to i32, !dbg !1541
  %7 = load ptr, ptr %name.addr, align 8, !dbg !1543
  %8 = load ptr, ptr %version.addr, align 8, !dbg !1544
  %9 = load i16, ptr %type.addr, align 2, !dbg !1545
  %10 = load i32, ptr %options.addr, align 4, !dbg !1546
  %11 = load i32, ptr %now.addr, align 4, !dbg !1547
  %12 = load ptr, ptr %nodep.addr, align 8, !dbg !1548
  %13 = load ptr, ptr %foundname.addr, align 8, !dbg !1549
  %14 = load ptr, ptr %rdataset.addr, align 8, !dbg !1550
  %15 = load ptr, ptr %sigrdataset.addr, align 8, !dbg !1551
  call void @llvm.lifetime.end.p0(i64 8, ptr %ecdb) #9, !dbg !1552
  ret i32 23, !dbg !1553
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @findzonecut(ptr noundef %db, ptr noundef %name, i32 noundef %options, i32 noundef %now, ptr noundef %nodep, ptr noundef %foundname, ptr noundef %dcname, ptr noundef %rdataset, ptr noundef %sigrdataset) #0 !dbg !1554 {
entry:
  %db.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %options.addr = alloca i32, align 4
  %now.addr = alloca i32, align 4
  %nodep.addr = alloca ptr, align 8
  %foundname.addr = alloca ptr, align 8
  %dcname.addr = alloca ptr, align 8
  %rdataset.addr = alloca ptr, align 8
  %sigrdataset.addr = alloca ptr, align 8
  %ecdb = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !1556, metadata !DIExpression()), !dbg !1566
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1557, metadata !DIExpression()), !dbg !1567
  store i32 %options, ptr %options.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %options.addr, metadata !1558, metadata !DIExpression()), !dbg !1568
  store i32 %now, ptr %now.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %now.addr, metadata !1559, metadata !DIExpression()), !dbg !1569
  store ptr %nodep, ptr %nodep.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %nodep.addr, metadata !1560, metadata !DIExpression()), !dbg !1570
  store ptr %foundname, ptr %foundname.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %foundname.addr, metadata !1561, metadata !DIExpression()), !dbg !1571
  store ptr %dcname, ptr %dcname.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dcname.addr, metadata !1562, metadata !DIExpression()), !dbg !1572
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !1563, metadata !DIExpression()), !dbg !1573
  store ptr %sigrdataset, ptr %sigrdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %sigrdataset.addr, metadata !1564, metadata !DIExpression()), !dbg !1574
  call void @llvm.lifetime.start.p0(i64 8, ptr %ecdb) #9, !dbg !1575
  tail call void @llvm.dbg.declare(metadata ptr %ecdb, metadata !1565, metadata !DIExpression()), !dbg !1576
  %0 = load ptr, ptr %db.addr, align 8, !dbg !1577
  store ptr %0, ptr %ecdb, align 8, !dbg !1576
  %1 = load ptr, ptr %ecdb, align 8, !dbg !1578
  %cmp = icmp ne ptr %1, null, !dbg !1578
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1578

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %ecdb, align 8, !dbg !1578
  %common = getelementptr inbounds %struct.dns_ecdb, ptr %2, i32 0, i32 0, !dbg !1578
  %impmagic = getelementptr inbounds %struct.dns_db, ptr %common, i32 0, i32 1, !dbg !1578
  %3 = load i32, ptr %impmagic, align 4, !dbg !1578
  %cmp1 = icmp eq i32 %3, 1162036290, !dbg !1578
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !1579
  %lnot = xor i1 %4, true, !dbg !1578
  %lnot2 = xor i1 %lnot, true, !dbg !1578
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1578
  %conv = sext i32 %lnot.ext to i64, !dbg !1578
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1578
  %tobool = icmp ne i64 %expval, 0, !dbg !1578
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1578

lor.rhs:                                          ; preds = %land.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 319, i32 noundef 0, ptr noundef @.str.8) #8, !dbg !1578
  unreachable, !dbg !1578

5:                                                ; No predecessors!
  br label %lor.end, !dbg !1578

lor.end:                                          ; preds = %5, %land.end
  %6 = phi i1 [ true, %land.end ], [ false, %5 ]
  %lor.ext = zext i1 %6 to i32, !dbg !1578
  %7 = load ptr, ptr %name.addr, align 8, !dbg !1580
  %8 = load i32, ptr %options.addr, align 4, !dbg !1581
  %9 = load i32, ptr %now.addr, align 4, !dbg !1582
  %10 = load ptr, ptr %nodep.addr, align 8, !dbg !1583
  %11 = load ptr, ptr %foundname.addr, align 8, !dbg !1584
  %12 = load ptr, ptr %dcname.addr, align 8, !dbg !1585
  %13 = load ptr, ptr %rdataset.addr, align 8, !dbg !1586
  %14 = load ptr, ptr %sigrdataset.addr, align 8, !dbg !1587
  call void @llvm.lifetime.end.p0(i64 8, ptr %ecdb) #9, !dbg !1588
  ret i32 23, !dbg !1589
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @attachnode(ptr noundef %db, ptr noundef %source, ptr noundef %targetp) #0 !dbg !1590 {
entry:
  %db.addr = alloca ptr, align 8
  %source.addr = alloca ptr, align 8
  %targetp.addr = alloca ptr, align 8
  %ecdb = alloca ptr, align 8
  %node = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !1592, metadata !DIExpression()), !dbg !1597
  store ptr %source, ptr %source.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %source.addr, metadata !1593, metadata !DIExpression()), !dbg !1598
  store ptr %targetp, ptr %targetp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %targetp.addr, metadata !1594, metadata !DIExpression()), !dbg !1599
  call void @llvm.lifetime.start.p0(i64 8, ptr %ecdb) #9, !dbg !1600
  tail call void @llvm.dbg.declare(metadata ptr %ecdb, metadata !1595, metadata !DIExpression()), !dbg !1601
  %0 = load ptr, ptr %db.addr, align 8, !dbg !1602
  store ptr %0, ptr %ecdb, align 8, !dbg !1601
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #9, !dbg !1603
  tail call void @llvm.dbg.declare(metadata ptr %node, metadata !1596, metadata !DIExpression()), !dbg !1604
  %1 = load ptr, ptr %source.addr, align 8, !dbg !1605
  store ptr %1, ptr %node, align 8, !dbg !1604
  %2 = load ptr, ptr %ecdb, align 8, !dbg !1606
  %cmp = icmp ne ptr %2, null, !dbg !1606
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1606

land.rhs:                                         ; preds = %entry
  %3 = load ptr, ptr %ecdb, align 8, !dbg !1606
  %common = getelementptr inbounds %struct.dns_ecdb, ptr %3, i32 0, i32 0, !dbg !1606
  %impmagic = getelementptr inbounds %struct.dns_db, ptr %common, i32 0, i32 1, !dbg !1606
  %4 = load i32, ptr %impmagic, align 4, !dbg !1606
  %cmp1 = icmp eq i32 %4, 1162036290, !dbg !1606
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !1607
  %lnot = xor i1 %5, true, !dbg !1606
  %lnot2 = xor i1 %lnot, true, !dbg !1606
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1606
  %conv = sext i32 %lnot.ext to i64, !dbg !1606
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1606
  %tobool = icmp ne i64 %expval, 0, !dbg !1606
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1606

lor.rhs:                                          ; preds = %land.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 212, i32 noundef 0, ptr noundef @.str.8) #8, !dbg !1606
  unreachable, !dbg !1606

6:                                                ; No predecessors!
  br label %lor.end, !dbg !1606

lor.end:                                          ; preds = %6, %land.end
  %7 = phi i1 [ true, %land.end ], [ false, %6 ]
  %lor.ext = zext i1 %7 to i32, !dbg !1606
  %8 = load ptr, ptr %node, align 8, !dbg !1608
  %cmp3 = icmp ne ptr %8, null, !dbg !1608
  %lnot5 = xor i1 %cmp3, true, !dbg !1608
  %lnot7 = xor i1 %lnot5, true, !dbg !1608
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !1608
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !1608
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 1), !dbg !1608
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !1608
  br i1 %tobool11, label %land.rhs12, label %land.end22, !dbg !1608

land.rhs12:                                       ; preds = %lor.end
  %9 = load ptr, ptr %node, align 8, !dbg !1608
  %magic = getelementptr inbounds %struct.isc__magic_t, ptr %9, i32 0, i32 0, !dbg !1608
  %10 = load i32, ptr %magic, align 4, !dbg !1608
  %cmp13 = icmp eq i32 %10, 1162036302, !dbg !1608
  %lnot15 = xor i1 %cmp13, true, !dbg !1608
  %lnot17 = xor i1 %lnot15, true, !dbg !1608
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !1608
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !1608
  %expval20 = call i64 @llvm.expect.i64(i64 %conv19, i64 1), !dbg !1608
  %tobool21 = icmp ne i64 %expval20, 0, !dbg !1608
  br label %land.end22

land.end22:                                       ; preds = %land.rhs12, %lor.end
  %11 = phi i1 [ false, %lor.end ], [ %tobool21, %land.rhs12 ], !dbg !1607
  %lnot23 = xor i1 %11, true, !dbg !1608
  %lnot25 = xor i1 %lnot23, true, !dbg !1608
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !1608
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !1608
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 1), !dbg !1608
  %tobool29 = icmp ne i64 %expval28, 0, !dbg !1608
  br i1 %tobool29, label %lor.end31, label %lor.rhs30, !dbg !1608

lor.rhs30:                                        ; preds = %land.end22
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 213, i32 noundef 0, ptr noundef @.str.16) #8, !dbg !1608
  unreachable, !dbg !1608

12:                                               ; No predecessors!
  br label %lor.end31, !dbg !1608

lor.end31:                                        ; preds = %12, %land.end22
  %13 = phi i1 [ true, %land.end22 ], [ false, %12 ]
  %lor.ext32 = zext i1 %13 to i32, !dbg !1608
  %14 = load ptr, ptr %targetp.addr, align 8, !dbg !1609
  %cmp33 = icmp ne ptr %14, null, !dbg !1609
  br i1 %cmp33, label %land.rhs35, label %land.end38, !dbg !1609

land.rhs35:                                       ; preds = %lor.end31
  %15 = load ptr, ptr %targetp.addr, align 8, !dbg !1609
  %16 = load ptr, ptr %15, align 8, !dbg !1609
  %cmp36 = icmp eq ptr %16, null, !dbg !1609
  br label %land.end38

land.end38:                                       ; preds = %land.rhs35, %lor.end31
  %17 = phi i1 [ false, %lor.end31 ], [ %cmp36, %land.rhs35 ], !dbg !1607
  %lnot39 = xor i1 %17, true, !dbg !1609
  %lnot41 = xor i1 %lnot39, true, !dbg !1609
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !1609
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !1609
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 1), !dbg !1609
  %tobool45 = icmp ne i64 %expval44, 0, !dbg !1609
  br i1 %tobool45, label %lor.end47, label %lor.rhs46, !dbg !1609

lor.rhs46:                                        ; preds = %land.end38
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 214, i32 noundef 0, ptr noundef @.str.9) #8, !dbg !1609
  unreachable, !dbg !1609

18:                                               ; No predecessors!
  br label %lor.end47, !dbg !1609

lor.end47:                                        ; preds = %18, %land.end38
  %19 = phi i1 [ true, %land.end38 ], [ false, %18 ]
  %lor.ext48 = zext i1 %19 to i32, !dbg !1609
  br label %do.body, !dbg !1610

do.body:                                          ; preds = %lor.end47
  %20 = load ptr, ptr %node, align 8, !dbg !1611
  %lock = getelementptr inbounds %struct.dns_ecdbnode, ptr %20, i32 0, i32 1, !dbg !1611
  %call = call i32 @pthread_mutex_lock(ptr noundef %lock) #9, !dbg !1611
  %cmp49 = icmp eq i32 %call, 0, !dbg !1611
  %21 = zext i1 %cmp49 to i64, !dbg !1611
  %cond = select i1 %cmp49, i32 0, i32 34, !dbg !1611
  %cmp51 = icmp eq i32 %cond, 0, !dbg !1611
  %lnot53 = xor i1 %cmp51, true, !dbg !1611
  %lnot55 = xor i1 %lnot53, true, !dbg !1611
  %lnot.ext56 = zext i1 %lnot55 to i32, !dbg !1611
  %conv57 = sext i32 %lnot.ext56 to i64, !dbg !1611
  %expval58 = call i64 @llvm.expect.i64(i64 %conv57, i64 1), !dbg !1611
  %tobool59 = icmp ne i64 %expval58, 0, !dbg !1611
  br i1 %tobool59, label %lor.end61, label %lor.rhs60, !dbg !1611

lor.rhs60:                                        ; preds = %do.body
  call void @isc_error_runtimecheck(ptr noundef @.str, i32 noundef 216, ptr noundef @.str.17) #8, !dbg !1611
  unreachable, !dbg !1611

22:                                               ; No predecessors!
  br label %lor.end61, !dbg !1611

lor.end61:                                        ; preds = %22, %do.body
  %23 = phi i1 [ true, %do.body ], [ false, %22 ]
  %lor.ext62 = zext i1 %23 to i32, !dbg !1611
  br label %do.cond, !dbg !1611

do.cond:                                          ; preds = %lor.end61
  br label %do.end, !dbg !1611

do.end:                                           ; preds = %do.cond
  %24 = load ptr, ptr %node, align 8, !dbg !1613
  %references = getelementptr inbounds %struct.dns_ecdbnode, ptr %24, i32 0, i32 6, !dbg !1613
  %25 = load i32, ptr %references, align 8, !dbg !1613
  %cmp63 = icmp ugt i32 %25, 0, !dbg !1613
  %lnot65 = xor i1 %cmp63, true, !dbg !1613
  %lnot67 = xor i1 %lnot65, true, !dbg !1613
  %lnot.ext68 = zext i1 %lnot67 to i32, !dbg !1613
  %conv69 = sext i32 %lnot.ext68 to i64, !dbg !1613
  %expval70 = call i64 @llvm.expect.i64(i64 %conv69, i64 1), !dbg !1613
  %tobool71 = icmp ne i64 %expval70, 0, !dbg !1613
  br i1 %tobool71, label %lor.end73, label %lor.rhs72, !dbg !1613

lor.rhs72:                                        ; preds = %do.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 217, i32 noundef 2, ptr noundef @.str.18) #8, !dbg !1613
  unreachable, !dbg !1613

26:                                               ; No predecessors!
  br label %lor.end73, !dbg !1613

lor.end73:                                        ; preds = %26, %do.end
  %27 = phi i1 [ true, %do.end ], [ false, %26 ]
  %lor.ext74 = zext i1 %27 to i32, !dbg !1613
  %28 = load ptr, ptr %node, align 8, !dbg !1614
  %references75 = getelementptr inbounds %struct.dns_ecdbnode, ptr %28, i32 0, i32 6, !dbg !1615
  %29 = load i32, ptr %references75, align 8, !dbg !1616
  %inc = add i32 %29, 1, !dbg !1616
  store i32 %inc, ptr %references75, align 8, !dbg !1616
  %30 = load ptr, ptr %node, align 8, !dbg !1617
  %references76 = getelementptr inbounds %struct.dns_ecdbnode, ptr %30, i32 0, i32 6, !dbg !1617
  %31 = load i32, ptr %references76, align 8, !dbg !1617
  %cmp77 = icmp ne i32 %31, 0, !dbg !1617
  %lnot79 = xor i1 %cmp77, true, !dbg !1617
  %lnot81 = xor i1 %lnot79, true, !dbg !1617
  %lnot.ext82 = zext i1 %lnot81 to i32, !dbg !1617
  %conv83 = sext i32 %lnot.ext82 to i64, !dbg !1617
  %expval84 = call i64 @llvm.expect.i64(i64 %conv83, i64 1), !dbg !1617
  %tobool85 = icmp ne i64 %expval84, 0, !dbg !1617
  br i1 %tobool85, label %lor.end87, label %lor.rhs86, !dbg !1617

lor.rhs86:                                        ; preds = %lor.end73
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 219, i32 noundef 2, ptr noundef @.str.19) #8, !dbg !1617
  unreachable, !dbg !1617

32:                                               ; No predecessors!
  br label %lor.end87, !dbg !1617

lor.end87:                                        ; preds = %32, %lor.end73
  %33 = phi i1 [ true, %lor.end73 ], [ false, %32 ]
  %lor.ext88 = zext i1 %33 to i32, !dbg !1617
  br label %do.body89, !dbg !1618

do.body89:                                        ; preds = %lor.end87
  %34 = load ptr, ptr %node, align 8, !dbg !1619
  %lock90 = getelementptr inbounds %struct.dns_ecdbnode, ptr %34, i32 0, i32 1, !dbg !1619
  %call91 = call i32 @pthread_mutex_unlock(ptr noundef %lock90) #9, !dbg !1619
  %cmp92 = icmp eq i32 %call91, 0, !dbg !1619
  %35 = zext i1 %cmp92 to i64, !dbg !1619
  %cond94 = select i1 %cmp92, i32 0, i32 34, !dbg !1619
  %cmp95 = icmp eq i32 %cond94, 0, !dbg !1619
  %lnot97 = xor i1 %cmp95, true, !dbg !1619
  %lnot99 = xor i1 %lnot97, true, !dbg !1619
  %lnot.ext100 = zext i1 %lnot99 to i32, !dbg !1619
  %conv101 = sext i32 %lnot.ext100 to i64, !dbg !1619
  %expval102 = call i64 @llvm.expect.i64(i64 %conv101, i64 1), !dbg !1619
  %tobool103 = icmp ne i64 %expval102, 0, !dbg !1619
  br i1 %tobool103, label %lor.end105, label %lor.rhs104, !dbg !1619

lor.rhs104:                                       ; preds = %do.body89
  call void @isc_error_runtimecheck(ptr noundef @.str, i32 noundef 220, ptr noundef @.str.20) #8, !dbg !1619
  unreachable, !dbg !1619

36:                                               ; No predecessors!
  br label %lor.end105, !dbg !1619

lor.end105:                                       ; preds = %36, %do.body89
  %37 = phi i1 [ true, %do.body89 ], [ false, %36 ]
  %lor.ext106 = zext i1 %37 to i32, !dbg !1619
  br label %do.cond107, !dbg !1619

do.cond107:                                       ; preds = %lor.end105
  br label %do.end108, !dbg !1619

do.end108:                                        ; preds = %do.cond107
  %38 = load ptr, ptr %node, align 8, !dbg !1621
  %39 = load ptr, ptr %targetp.addr, align 8, !dbg !1622
  store ptr %38, ptr %39, align 8, !dbg !1623
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #9, !dbg !1624
  call void @llvm.lifetime.end.p0(i64 8, ptr %ecdb) #9, !dbg !1624
  ret void, !dbg !1624
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @detachnode(ptr noundef %db, ptr noundef %nodep) #0 !dbg !1625 {
entry:
  %db.addr = alloca ptr, align 8
  %nodep.addr = alloca ptr, align 8
  %ecdb = alloca ptr, align 8
  %node = alloca ptr, align 8
  %need_destroy = alloca i8, align 1
  store ptr %db, ptr %db.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !1627, metadata !DIExpression()), !dbg !1632
  store ptr %nodep, ptr %nodep.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %nodep.addr, metadata !1628, metadata !DIExpression()), !dbg !1633
  call void @llvm.lifetime.start.p0(i64 8, ptr %ecdb) #9, !dbg !1634
  tail call void @llvm.dbg.declare(metadata ptr %ecdb, metadata !1629, metadata !DIExpression()), !dbg !1635
  %0 = load ptr, ptr %db.addr, align 8, !dbg !1636
  store ptr %0, ptr %ecdb, align 8, !dbg !1635
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #9, !dbg !1637
  tail call void @llvm.dbg.declare(metadata ptr %node, metadata !1630, metadata !DIExpression()), !dbg !1638
  call void @llvm.lifetime.start.p0(i64 1, ptr %need_destroy) #9, !dbg !1639
  tail call void @llvm.dbg.declare(metadata ptr %need_destroy, metadata !1631, metadata !DIExpression()), !dbg !1640
  store i8 0, ptr %need_destroy, align 1, !dbg !1640
  %1 = load ptr, ptr %ecdb, align 8, !dbg !1641
  %cmp = icmp ne ptr %1, null, !dbg !1641
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1641

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %ecdb, align 8, !dbg !1641
  %common = getelementptr inbounds %struct.dns_ecdb, ptr %2, i32 0, i32 0, !dbg !1641
  %impmagic = getelementptr inbounds %struct.dns_db, ptr %common, i32 0, i32 1, !dbg !1641
  %3 = load i32, ptr %impmagic, align 4, !dbg !1641
  %cmp1 = icmp eq i32 %3, 1162036290, !dbg !1641
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !1642
  %lnot = xor i1 %4, true, !dbg !1641
  %lnot2 = xor i1 %lnot, true, !dbg !1641
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1641
  %conv = sext i32 %lnot.ext to i64, !dbg !1641
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1641
  %tobool = icmp ne i64 %expval, 0, !dbg !1641
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1641

lor.rhs:                                          ; preds = %land.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 267, i32 noundef 0, ptr noundef @.str.8) #8, !dbg !1641
  unreachable, !dbg !1641

5:                                                ; No predecessors!
  br label %lor.end, !dbg !1641

lor.end:                                          ; preds = %5, %land.end
  %6 = phi i1 [ true, %land.end ], [ false, %5 ]
  %lor.ext = zext i1 %6 to i32, !dbg !1641
  %7 = load ptr, ptr %nodep.addr, align 8, !dbg !1643
  %cmp3 = icmp ne ptr %7, null, !dbg !1643
  %lnot5 = xor i1 %cmp3, true, !dbg !1643
  %lnot7 = xor i1 %lnot5, true, !dbg !1643
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !1643
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !1643
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 1), !dbg !1643
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !1643
  br i1 %tobool11, label %lor.end13, label %lor.rhs12, !dbg !1643

lor.rhs12:                                        ; preds = %lor.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 268, i32 noundef 0, ptr noundef @.str.21) #8, !dbg !1643
  unreachable, !dbg !1643

8:                                                ; No predecessors!
  br label %lor.end13, !dbg !1643

lor.end13:                                        ; preds = %8, %lor.end
  %9 = phi i1 [ true, %lor.end ], [ false, %8 ]
  %lor.ext14 = zext i1 %9 to i32, !dbg !1643
  %10 = load ptr, ptr %nodep.addr, align 8, !dbg !1644
  %11 = load ptr, ptr %10, align 8, !dbg !1645
  store ptr %11, ptr %node, align 8, !dbg !1646
  %12 = load ptr, ptr %node, align 8, !dbg !1647
  %cmp15 = icmp ne ptr %12, null, !dbg !1647
  %lnot17 = xor i1 %cmp15, true, !dbg !1647
  %lnot19 = xor i1 %lnot17, true, !dbg !1647
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !1647
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !1647
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 1), !dbg !1647
  %tobool23 = icmp ne i64 %expval22, 0, !dbg !1647
  br i1 %tobool23, label %land.rhs24, label %land.end34, !dbg !1647

land.rhs24:                                       ; preds = %lor.end13
  %13 = load ptr, ptr %node, align 8, !dbg !1647
  %magic = getelementptr inbounds %struct.isc__magic_t, ptr %13, i32 0, i32 0, !dbg !1647
  %14 = load i32, ptr %magic, align 4, !dbg !1647
  %cmp25 = icmp eq i32 %14, 1162036302, !dbg !1647
  %lnot27 = xor i1 %cmp25, true, !dbg !1647
  %lnot29 = xor i1 %lnot27, true, !dbg !1647
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !1647
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !1647
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 1), !dbg !1647
  %tobool33 = icmp ne i64 %expval32, 0, !dbg !1647
  br label %land.end34

land.end34:                                       ; preds = %land.rhs24, %lor.end13
  %15 = phi i1 [ false, %lor.end13 ], [ %tobool33, %land.rhs24 ], !dbg !1642
  %lnot35 = xor i1 %15, true, !dbg !1647
  %lnot37 = xor i1 %lnot35, true, !dbg !1647
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !1647
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !1647
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 1), !dbg !1647
  %tobool41 = icmp ne i64 %expval40, 0, !dbg !1647
  br i1 %tobool41, label %lor.end43, label %lor.rhs42, !dbg !1647

lor.rhs42:                                        ; preds = %land.end34
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 270, i32 noundef 0, ptr noundef @.str.16) #8, !dbg !1647
  unreachable, !dbg !1647

16:                                               ; No predecessors!
  br label %lor.end43, !dbg !1647

lor.end43:                                        ; preds = %16, %land.end34
  %17 = phi i1 [ true, %land.end34 ], [ false, %16 ]
  %lor.ext44 = zext i1 %17 to i32, !dbg !1647
  %18 = load ptr, ptr %ecdb, align 8, !dbg !1648
  br label %do.body, !dbg !1649

do.body:                                          ; preds = %lor.end43
  %19 = load ptr, ptr %node, align 8, !dbg !1650
  %lock = getelementptr inbounds %struct.dns_ecdbnode, ptr %19, i32 0, i32 1, !dbg !1650
  %call = call i32 @pthread_mutex_lock(ptr noundef %lock) #9, !dbg !1650
  %cmp45 = icmp eq i32 %call, 0, !dbg !1650
  %20 = zext i1 %cmp45 to i64, !dbg !1650
  %cond = select i1 %cmp45, i32 0, i32 34, !dbg !1650
  %cmp47 = icmp eq i32 %cond, 0, !dbg !1650
  %lnot49 = xor i1 %cmp47, true, !dbg !1650
  %lnot51 = xor i1 %lnot49, true, !dbg !1650
  %lnot.ext52 = zext i1 %lnot51 to i32, !dbg !1650
  %conv53 = sext i32 %lnot.ext52 to i64, !dbg !1650
  %expval54 = call i64 @llvm.expect.i64(i64 %conv53, i64 1), !dbg !1650
  %tobool55 = icmp ne i64 %expval54, 0, !dbg !1650
  br i1 %tobool55, label %lor.end57, label %lor.rhs56, !dbg !1650

lor.rhs56:                                        ; preds = %do.body
  call void @isc_error_runtimecheck(ptr noundef @.str, i32 noundef 274, ptr noundef @.str.17) #8, !dbg !1650
  unreachable, !dbg !1650

21:                                               ; No predecessors!
  br label %lor.end57, !dbg !1650

lor.end57:                                        ; preds = %21, %do.body
  %22 = phi i1 [ true, %do.body ], [ false, %21 ]
  %lor.ext58 = zext i1 %22 to i32, !dbg !1650
  br label %do.cond, !dbg !1650

do.cond:                                          ; preds = %lor.end57
  br label %do.end, !dbg !1650

do.end:                                           ; preds = %do.cond
  %23 = load ptr, ptr %node, align 8, !dbg !1652
  %references = getelementptr inbounds %struct.dns_ecdbnode, ptr %23, i32 0, i32 6, !dbg !1652
  %24 = load i32, ptr %references, align 8, !dbg !1652
  %cmp59 = icmp ugt i32 %24, 0, !dbg !1652
  %lnot61 = xor i1 %cmp59, true, !dbg !1652
  %lnot63 = xor i1 %lnot61, true, !dbg !1652
  %lnot.ext64 = zext i1 %lnot63 to i32, !dbg !1652
  %conv65 = sext i32 %lnot.ext64 to i64, !dbg !1652
  %expval66 = call i64 @llvm.expect.i64(i64 %conv65, i64 1), !dbg !1652
  %tobool67 = icmp ne i64 %expval66, 0, !dbg !1652
  br i1 %tobool67, label %lor.end69, label %lor.rhs68, !dbg !1652

lor.rhs68:                                        ; preds = %do.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 275, i32 noundef 2, ptr noundef @.str.18) #8, !dbg !1652
  unreachable, !dbg !1652

25:                                               ; No predecessors!
  br label %lor.end69, !dbg !1652

lor.end69:                                        ; preds = %25, %do.end
  %26 = phi i1 [ true, %do.end ], [ false, %25 ]
  %lor.ext70 = zext i1 %26 to i32, !dbg !1652
  %27 = load ptr, ptr %node, align 8, !dbg !1653
  %references71 = getelementptr inbounds %struct.dns_ecdbnode, ptr %27, i32 0, i32 6, !dbg !1654
  %28 = load i32, ptr %references71, align 8, !dbg !1655
  %dec = add i32 %28, -1, !dbg !1655
  store i32 %dec, ptr %references71, align 8, !dbg !1655
  %29 = load ptr, ptr %node, align 8, !dbg !1656
  %references72 = getelementptr inbounds %struct.dns_ecdbnode, ptr %29, i32 0, i32 6, !dbg !1658
  %30 = load i32, ptr %references72, align 8, !dbg !1658
  %cmp73 = icmp eq i32 %30, 0, !dbg !1659
  br i1 %cmp73, label %if.then, label %if.end, !dbg !1660

if.then:                                          ; preds = %lor.end69
  store i8 1, ptr %need_destroy, align 1, !dbg !1661
  br label %if.end, !dbg !1662

if.end:                                           ; preds = %if.then, %lor.end69
  br label %do.body75, !dbg !1663

do.body75:                                        ; preds = %if.end
  %31 = load ptr, ptr %node, align 8, !dbg !1664
  %lock76 = getelementptr inbounds %struct.dns_ecdbnode, ptr %31, i32 0, i32 1, !dbg !1664
  %call77 = call i32 @pthread_mutex_unlock(ptr noundef %lock76) #9, !dbg !1664
  %cmp78 = icmp eq i32 %call77, 0, !dbg !1664
  %32 = zext i1 %cmp78 to i64, !dbg !1664
  %cond80 = select i1 %cmp78, i32 0, i32 34, !dbg !1664
  %cmp81 = icmp eq i32 %cond80, 0, !dbg !1664
  %lnot83 = xor i1 %cmp81, true, !dbg !1664
  %lnot85 = xor i1 %lnot83, true, !dbg !1664
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !1664
  %conv87 = sext i32 %lnot.ext86 to i64, !dbg !1664
  %expval88 = call i64 @llvm.expect.i64(i64 %conv87, i64 1), !dbg !1664
  %tobool89 = icmp ne i64 %expval88, 0, !dbg !1664
  br i1 %tobool89, label %lor.end91, label %lor.rhs90, !dbg !1664

lor.rhs90:                                        ; preds = %do.body75
  call void @isc_error_runtimecheck(ptr noundef @.str, i32 noundef 279, ptr noundef @.str.20) #8, !dbg !1664
  unreachable, !dbg !1664

33:                                               ; No predecessors!
  br label %lor.end91, !dbg !1664

lor.end91:                                        ; preds = %33, %do.body75
  %34 = phi i1 [ true, %do.body75 ], [ false, %33 ]
  %lor.ext92 = zext i1 %34 to i32, !dbg !1664
  br label %do.cond93, !dbg !1664

do.cond93:                                        ; preds = %lor.end91
  br label %do.end94, !dbg !1664

do.end94:                                         ; preds = %do.cond93
  %35 = load i8, ptr %need_destroy, align 1, !dbg !1666, !range !1409, !noundef !1410
  %tobool95 = trunc i8 %35 to i1, !dbg !1666
  br i1 %tobool95, label %if.then96, label %if.end97, !dbg !1668

if.then96:                                        ; preds = %do.end94
  %36 = load ptr, ptr %node, align 8, !dbg !1669
  call void @destroynode(ptr noundef %36), !dbg !1670
  br label %if.end97, !dbg !1670

if.end97:                                         ; preds = %if.then96, %do.end94
  %37 = load ptr, ptr %nodep.addr, align 8, !dbg !1671
  store ptr null, ptr %37, align 8, !dbg !1672
  call void @llvm.lifetime.end.p0(i64 1, ptr %need_destroy) #9, !dbg !1673
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #9, !dbg !1673
  call void @llvm.lifetime.end.p0(i64 8, ptr %ecdb) #9, !dbg !1673
  ret void, !dbg !1673
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @createiterator(ptr noundef %db, i32 noundef %options, ptr noundef %iteratorp) #0 !dbg !1674 {
entry:
  %db.addr = alloca ptr, align 8
  %options.addr = alloca i32, align 4
  %iteratorp.addr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !1676, metadata !DIExpression()), !dbg !1679
  store i32 %options, ptr %options.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %options.addr, metadata !1677, metadata !DIExpression()), !dbg !1680
  store ptr %iteratorp, ptr %iteratorp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %iteratorp.addr, metadata !1678, metadata !DIExpression()), !dbg !1681
  %0 = load ptr, ptr %db.addr, align 8, !dbg !1682
  %1 = load i32, ptr %options.addr, align 4, !dbg !1683
  %2 = load ptr, ptr %iteratorp.addr, align 8, !dbg !1684
  ret i32 27, !dbg !1685
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @allrdatasets(ptr noundef %db, ptr noundef %node, ptr noundef %version, i32 noundef %now, ptr noundef %iteratorp) #0 !dbg !1686 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %version.addr = alloca ptr, align 8
  %now.addr = alloca i32, align 4
  %iteratorp.addr = alloca ptr, align 8
  %ecdb = alloca ptr, align 8
  %ecdbnode = alloca ptr, align 8
  %mctx = alloca ptr, align 8
  %iterator = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !1688, metadata !DIExpression()), !dbg !1697
  store ptr %node, ptr %node.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1689, metadata !DIExpression()), !dbg !1698
  store ptr %version, ptr %version.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %version.addr, metadata !1690, metadata !DIExpression()), !dbg !1699
  store i32 %now, ptr %now.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %now.addr, metadata !1691, metadata !DIExpression()), !dbg !1700
  store ptr %iteratorp, ptr %iteratorp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %iteratorp.addr, metadata !1692, metadata !DIExpression()), !dbg !1701
  call void @llvm.lifetime.start.p0(i64 8, ptr %ecdb) #9, !dbg !1702
  tail call void @llvm.dbg.declare(metadata ptr %ecdb, metadata !1693, metadata !DIExpression()), !dbg !1703
  %0 = load ptr, ptr %db.addr, align 8, !dbg !1704
  store ptr %0, ptr %ecdb, align 8, !dbg !1703
  call void @llvm.lifetime.start.p0(i64 8, ptr %ecdbnode) #9, !dbg !1705
  tail call void @llvm.dbg.declare(metadata ptr %ecdbnode, metadata !1694, metadata !DIExpression()), !dbg !1706
  %1 = load ptr, ptr %node.addr, align 8, !dbg !1707
  store ptr %1, ptr %ecdbnode, align 8, !dbg !1706
  call void @llvm.lifetime.start.p0(i64 8, ptr %mctx) #9, !dbg !1708
  tail call void @llvm.dbg.declare(metadata ptr %mctx, metadata !1695, metadata !DIExpression()), !dbg !1709
  call void @llvm.lifetime.start.p0(i64 8, ptr %iterator) #9, !dbg !1710
  tail call void @llvm.dbg.declare(metadata ptr %iterator, metadata !1696, metadata !DIExpression()), !dbg !1711
  %2 = load ptr, ptr %ecdb, align 8, !dbg !1712
  %cmp = icmp ne ptr %2, null, !dbg !1712
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1712

land.rhs:                                         ; preds = %entry
  %3 = load ptr, ptr %ecdb, align 8, !dbg !1712
  %common = getelementptr inbounds %struct.dns_ecdb, ptr %3, i32 0, i32 0, !dbg !1712
  %impmagic = getelementptr inbounds %struct.dns_db, ptr %common, i32 0, i32 1, !dbg !1712
  %4 = load i32, ptr %impmagic, align 4, !dbg !1712
  %cmp1 = icmp eq i32 %4, 1162036290, !dbg !1712
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !1713
  %lnot = xor i1 %5, true, !dbg !1712
  %lnot2 = xor i1 %lnot, true, !dbg !1712
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1712
  %conv = sext i32 %lnot.ext to i64, !dbg !1712
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1712
  %tobool = icmp ne i64 %expval, 0, !dbg !1712
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1712

lor.rhs:                                          ; preds = %land.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 517, i32 noundef 0, ptr noundef @.str.8) #8, !dbg !1712
  unreachable, !dbg !1712

6:                                                ; No predecessors!
  br label %lor.end, !dbg !1712

lor.end:                                          ; preds = %6, %land.end
  %7 = phi i1 [ true, %land.end ], [ false, %6 ]
  %lor.ext = zext i1 %7 to i32, !dbg !1712
  %8 = load ptr, ptr %ecdbnode, align 8, !dbg !1714
  %cmp3 = icmp ne ptr %8, null, !dbg !1714
  %lnot5 = xor i1 %cmp3, true, !dbg !1714
  %lnot7 = xor i1 %lnot5, true, !dbg !1714
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !1714
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !1714
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 1), !dbg !1714
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !1714
  br i1 %tobool11, label %land.rhs12, label %land.end22, !dbg !1714

land.rhs12:                                       ; preds = %lor.end
  %9 = load ptr, ptr %ecdbnode, align 8, !dbg !1714
  %magic = getelementptr inbounds %struct.isc__magic_t, ptr %9, i32 0, i32 0, !dbg !1714
  %10 = load i32, ptr %magic, align 4, !dbg !1714
  %cmp13 = icmp eq i32 %10, 1162036302, !dbg !1714
  %lnot15 = xor i1 %cmp13, true, !dbg !1714
  %lnot17 = xor i1 %lnot15, true, !dbg !1714
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !1714
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !1714
  %expval20 = call i64 @llvm.expect.i64(i64 %conv19, i64 1), !dbg !1714
  %tobool21 = icmp ne i64 %expval20, 0, !dbg !1714
  br label %land.end22

land.end22:                                       ; preds = %land.rhs12, %lor.end
  %11 = phi i1 [ false, %lor.end ], [ %tobool21, %land.rhs12 ], !dbg !1713
  %lnot23 = xor i1 %11, true, !dbg !1714
  %lnot25 = xor i1 %lnot23, true, !dbg !1714
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !1714
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !1714
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 1), !dbg !1714
  %tobool29 = icmp ne i64 %expval28, 0, !dbg !1714
  br i1 %tobool29, label %lor.end31, label %lor.rhs30, !dbg !1714

lor.rhs30:                                        ; preds = %land.end22
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 518, i32 noundef 0, ptr noundef @.str.30) #8, !dbg !1714
  unreachable, !dbg !1714

12:                                               ; No predecessors!
  br label %lor.end31, !dbg !1714

lor.end31:                                        ; preds = %12, %land.end22
  %13 = phi i1 [ true, %land.end22 ], [ false, %12 ]
  %lor.ext32 = zext i1 %13 to i32, !dbg !1714
  %14 = load ptr, ptr %ecdb, align 8, !dbg !1715
  %common33 = getelementptr inbounds %struct.dns_ecdb, ptr %14, i32 0, i32 0, !dbg !1716
  %mctx34 = getelementptr inbounds %struct.dns_db, ptr %common33, i32 0, i32 6, !dbg !1717
  %15 = load ptr, ptr %mctx34, align 8, !dbg !1717
  store ptr %15, ptr %mctx, align 8, !dbg !1718
  %16 = load ptr, ptr %mctx, align 8, !dbg !1719
  %call = call ptr @isc__mem_get(ptr noundef %16, i64 noundef 56, ptr noundef @.str, i32 noundef 522), !dbg !1719
  store ptr %call, ptr %iterator, align 8, !dbg !1720
  %17 = load ptr, ptr %iterator, align 8, !dbg !1721
  %cmp35 = icmp eq ptr %17, null, !dbg !1723
  br i1 %cmp35, label %if.then, label %if.end, !dbg !1724

if.then:                                          ; preds = %lor.end31
  store i32 1, ptr %retval, align 4, !dbg !1725
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1725

if.end:                                           ; preds = %lor.end31
  %18 = load ptr, ptr %iterator, align 8, !dbg !1726
  %common37 = getelementptr inbounds %struct.ecdb_rdatasetiter, ptr %18, i32 0, i32 0, !dbg !1727
  %magic38 = getelementptr inbounds %struct.dns_rdatasetiter, ptr %common37, i32 0, i32 0, !dbg !1728
  store i32 1145983849, ptr %magic38, align 8, !dbg !1729
  %19 = load ptr, ptr %iterator, align 8, !dbg !1730
  %common39 = getelementptr inbounds %struct.ecdb_rdatasetiter, ptr %19, i32 0, i32 0, !dbg !1731
  %methods = getelementptr inbounds %struct.dns_rdatasetiter, ptr %common39, i32 0, i32 1, !dbg !1732
  store ptr @rdatasetiter_methods, ptr %methods, align 8, !dbg !1733
  %20 = load ptr, ptr %db.addr, align 8, !dbg !1734
  %21 = load ptr, ptr %iterator, align 8, !dbg !1735
  %common40 = getelementptr inbounds %struct.ecdb_rdatasetiter, ptr %21, i32 0, i32 0, !dbg !1736
  %db41 = getelementptr inbounds %struct.dns_rdatasetiter, ptr %common40, i32 0, i32 2, !dbg !1737
  store ptr %20, ptr %db41, align 8, !dbg !1738
  %22 = load ptr, ptr %iterator, align 8, !dbg !1739
  %common42 = getelementptr inbounds %struct.ecdb_rdatasetiter, ptr %22, i32 0, i32 0, !dbg !1740
  %node43 = getelementptr inbounds %struct.dns_rdatasetiter, ptr %common42, i32 0, i32 3, !dbg !1741
  store ptr null, ptr %node43, align 8, !dbg !1742
  %23 = load ptr, ptr %db.addr, align 8, !dbg !1743
  %24 = load ptr, ptr %node.addr, align 8, !dbg !1744
  %25 = load ptr, ptr %iterator, align 8, !dbg !1745
  %common44 = getelementptr inbounds %struct.ecdb_rdatasetiter, ptr %25, i32 0, i32 0, !dbg !1746
  %node45 = getelementptr inbounds %struct.dns_rdatasetiter, ptr %common44, i32 0, i32 3, !dbg !1747
  call void @attachnode(ptr noundef %23, ptr noundef %24, ptr noundef %node45), !dbg !1748
  %26 = load ptr, ptr %version.addr, align 8, !dbg !1749
  %27 = load ptr, ptr %iterator, align 8, !dbg !1750
  %common46 = getelementptr inbounds %struct.ecdb_rdatasetiter, ptr %27, i32 0, i32 0, !dbg !1751
  %version47 = getelementptr inbounds %struct.dns_rdatasetiter, ptr %common46, i32 0, i32 4, !dbg !1752
  store ptr %26, ptr %version47, align 8, !dbg !1753
  %28 = load i32, ptr %now.addr, align 4, !dbg !1754
  %29 = load ptr, ptr %iterator, align 8, !dbg !1755
  %common48 = getelementptr inbounds %struct.ecdb_rdatasetiter, ptr %29, i32 0, i32 0, !dbg !1756
  %now49 = getelementptr inbounds %struct.dns_rdatasetiter, ptr %common48, i32 0, i32 5, !dbg !1757
  store i32 %28, ptr %now49, align 8, !dbg !1758
  %30 = load ptr, ptr %iterator, align 8, !dbg !1759
  %31 = load ptr, ptr %iteratorp.addr, align 8, !dbg !1760
  store ptr %30, ptr %31, align 8, !dbg !1761
  store i32 0, ptr %retval, align 4, !dbg !1762
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1762

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %iterator) #9, !dbg !1763
  call void @llvm.lifetime.end.p0(i64 8, ptr %mctx) #9, !dbg !1763
  call void @llvm.lifetime.end.p0(i64 8, ptr %ecdbnode) #9, !dbg !1763
  call void @llvm.lifetime.end.p0(i64 8, ptr %ecdb) #9, !dbg !1763
  %32 = load i32, ptr %retval, align 4, !dbg !1763
  ret i32 %32, !dbg !1763
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @addrdataset(ptr noundef %db, ptr noundef %node, ptr noundef %version, i32 noundef %now, ptr noundef %rdataset, i32 noundef %options, ptr noundef %addedrdataset) #0 !dbg !1764 {
entry:
  %db.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %version.addr = alloca ptr, align 8
  %now.addr = alloca i32, align 4
  %rdataset.addr = alloca ptr, align 8
  %options.addr = alloca i32, align 4
  %addedrdataset.addr = alloca ptr, align 8
  %ecdb = alloca ptr, align 8
  %r = alloca %struct.isc_region, align 8
  %result = alloca i32, align 4
  %mctx = alloca ptr, align 8
  %ecdbnode = alloca ptr, align 8
  %header = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !1766, metadata !DIExpression()), !dbg !1780
  store ptr %node, ptr %node.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1767, metadata !DIExpression()), !dbg !1781
  store ptr %version, ptr %version.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %version.addr, metadata !1768, metadata !DIExpression()), !dbg !1782
  store i32 %now, ptr %now.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %now.addr, metadata !1769, metadata !DIExpression()), !dbg !1783
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !1770, metadata !DIExpression()), !dbg !1784
  store i32 %options, ptr %options.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %options.addr, metadata !1771, metadata !DIExpression()), !dbg !1785
  store ptr %addedrdataset, ptr %addedrdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %addedrdataset.addr, metadata !1772, metadata !DIExpression()), !dbg !1786
  call void @llvm.lifetime.start.p0(i64 8, ptr %ecdb) #9, !dbg !1787
  tail call void @llvm.dbg.declare(metadata ptr %ecdb, metadata !1773, metadata !DIExpression()), !dbg !1788
  %0 = load ptr, ptr %db.addr, align 8, !dbg !1789
  store ptr %0, ptr %ecdb, align 8, !dbg !1788
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #9, !dbg !1790
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !1774, metadata !DIExpression()), !dbg !1791
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !1792
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1775, metadata !DIExpression()), !dbg !1793
  store i32 0, ptr %result, align 4, !dbg !1793
  call void @llvm.lifetime.start.p0(i64 8, ptr %mctx) #9, !dbg !1794
  tail call void @llvm.dbg.declare(metadata ptr %mctx, metadata !1776, metadata !DIExpression()), !dbg !1795
  call void @llvm.lifetime.start.p0(i64 8, ptr %ecdbnode) #9, !dbg !1796
  tail call void @llvm.dbg.declare(metadata ptr %ecdbnode, metadata !1777, metadata !DIExpression()), !dbg !1797
  %1 = load ptr, ptr %node.addr, align 8, !dbg !1798
  store ptr %1, ptr %ecdbnode, align 8, !dbg !1797
  call void @llvm.lifetime.start.p0(i64 8, ptr %header) #9, !dbg !1799
  tail call void @llvm.dbg.declare(metadata ptr %header, metadata !1778, metadata !DIExpression()), !dbg !1800
  %2 = load ptr, ptr %ecdb, align 8, !dbg !1801
  %cmp = icmp ne ptr %2, null, !dbg !1801
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1801

land.rhs:                                         ; preds = %entry
  %3 = load ptr, ptr %ecdb, align 8, !dbg !1801
  %common = getelementptr inbounds %struct.dns_ecdb, ptr %3, i32 0, i32 0, !dbg !1801
  %impmagic = getelementptr inbounds %struct.dns_db, ptr %common, i32 0, i32 1, !dbg !1801
  %4 = load i32, ptr %impmagic, align 4, !dbg !1801
  %cmp1 = icmp eq i32 %4, 1162036290, !dbg !1801
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !1802
  %lnot = xor i1 %5, true, !dbg !1801
  %lnot2 = xor i1 %lnot, true, !dbg !1801
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1801
  %conv = sext i32 %lnot.ext to i64, !dbg !1801
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1801
  %tobool = icmp ne i64 %expval, 0, !dbg !1801
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1801

lor.rhs:                                          ; preds = %land.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 434, i32 noundef 0, ptr noundef @.str.8) #8, !dbg !1801
  unreachable, !dbg !1801

6:                                                ; No predecessors!
  br label %lor.end, !dbg !1801

lor.end:                                          ; preds = %6, %land.end
  %7 = phi i1 [ true, %land.end ], [ false, %6 ]
  %lor.ext = zext i1 %7 to i32, !dbg !1801
  %8 = load ptr, ptr %ecdbnode, align 8, !dbg !1803
  %cmp3 = icmp ne ptr %8, null, !dbg !1803
  %lnot5 = xor i1 %cmp3, true, !dbg !1803
  %lnot7 = xor i1 %lnot5, true, !dbg !1803
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !1803
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !1803
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 1), !dbg !1803
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !1803
  br i1 %tobool11, label %land.rhs12, label %land.end22, !dbg !1803

land.rhs12:                                       ; preds = %lor.end
  %9 = load ptr, ptr %ecdbnode, align 8, !dbg !1803
  %magic = getelementptr inbounds %struct.isc__magic_t, ptr %9, i32 0, i32 0, !dbg !1803
  %10 = load i32, ptr %magic, align 4, !dbg !1803
  %cmp13 = icmp eq i32 %10, 1162036302, !dbg !1803
  %lnot15 = xor i1 %cmp13, true, !dbg !1803
  %lnot17 = xor i1 %lnot15, true, !dbg !1803
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !1803
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !1803
  %expval20 = call i64 @llvm.expect.i64(i64 %conv19, i64 1), !dbg !1803
  %tobool21 = icmp ne i64 %expval20, 0, !dbg !1803
  br label %land.end22

land.end22:                                       ; preds = %land.rhs12, %lor.end
  %11 = phi i1 [ false, %lor.end ], [ %tobool21, %land.rhs12 ], !dbg !1802
  %lnot23 = xor i1 %11, true, !dbg !1803
  %lnot25 = xor i1 %lnot23, true, !dbg !1803
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !1803
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !1803
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 1), !dbg !1803
  %tobool29 = icmp ne i64 %expval28, 0, !dbg !1803
  br i1 %tobool29, label %lor.end31, label %lor.rhs30, !dbg !1803

lor.rhs30:                                        ; preds = %land.end22
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 435, i32 noundef 0, ptr noundef @.str.30) #8, !dbg !1803
  unreachable, !dbg !1803

12:                                               ; No predecessors!
  br label %lor.end31, !dbg !1803

lor.end31:                                        ; preds = %12, %land.end22
  %13 = phi i1 [ true, %land.end22 ], [ false, %12 ]
  %lor.ext32 = zext i1 %13 to i32, !dbg !1803
  %14 = load ptr, ptr %version.addr, align 8, !dbg !1804
  %15 = load i32, ptr %now.addr, align 4, !dbg !1805
  %16 = load i32, ptr %options.addr, align 4, !dbg !1806
  %17 = load ptr, ptr %ecdb, align 8, !dbg !1807
  %common33 = getelementptr inbounds %struct.dns_ecdb, ptr %17, i32 0, i32 0, !dbg !1808
  %mctx34 = getelementptr inbounds %struct.dns_db, ptr %common33, i32 0, i32 6, !dbg !1809
  %18 = load ptr, ptr %mctx34, align 8, !dbg !1809
  store ptr %18, ptr %mctx, align 8, !dbg !1810
  br label %do.body, !dbg !1811

do.body:                                          ; preds = %lor.end31
  %19 = load ptr, ptr %ecdbnode, align 8, !dbg !1812
  %lock = getelementptr inbounds %struct.dns_ecdbnode, ptr %19, i32 0, i32 1, !dbg !1812
  %call = call i32 @pthread_mutex_lock(ptr noundef %lock) #9, !dbg !1812
  %cmp35 = icmp eq i32 %call, 0, !dbg !1812
  %20 = zext i1 %cmp35 to i64, !dbg !1812
  %cond = select i1 %cmp35, i32 0, i32 34, !dbg !1812
  %cmp37 = icmp eq i32 %cond, 0, !dbg !1812
  %lnot39 = xor i1 %cmp37, true, !dbg !1812
  %lnot41 = xor i1 %lnot39, true, !dbg !1812
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !1812
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !1812
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 1), !dbg !1812
  %tobool45 = icmp ne i64 %expval44, 0, !dbg !1812
  br i1 %tobool45, label %lor.end47, label %lor.rhs46, !dbg !1812

lor.rhs46:                                        ; preds = %do.body
  call void @isc_error_runtimecheck(ptr noundef @.str, i32 noundef 443, ptr noundef @.str.36) #8, !dbg !1812
  unreachable, !dbg !1812

21:                                               ; No predecessors!
  br label %lor.end47, !dbg !1812

lor.end47:                                        ; preds = %21, %do.body
  %22 = phi i1 [ true, %do.body ], [ false, %21 ]
  %lor.ext48 = zext i1 %22 to i32, !dbg !1812
  br label %do.cond, !dbg !1812

do.cond:                                          ; preds = %lor.end47
  br label %do.end, !dbg !1812

do.end:                                           ; preds = %do.cond
  %23 = load ptr, ptr %ecdbnode, align 8, !dbg !1814
  %rdatasets = getelementptr inbounds %struct.dns_ecdbnode, ptr %23, i32 0, i32 5, !dbg !1814
  %head = getelementptr inbounds %struct.anon.9, ptr %rdatasets, i32 0, i32 0, !dbg !1814
  %24 = load ptr, ptr %head, align 8, !dbg !1814
  store ptr %24, ptr %header, align 8, !dbg !1816
  br label %for.cond, !dbg !1817

for.cond:                                         ; preds = %for.inc, %do.end
  %25 = load ptr, ptr %header, align 8, !dbg !1818
  %cmp49 = icmp ne ptr %25, null, !dbg !1820
  br i1 %cmp49, label %for.body, label %for.end, !dbg !1821

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr %header, align 8, !dbg !1822
  %type = getelementptr inbounds %struct.rdatasetheader, ptr %26, i32 0, i32 0, !dbg !1822
  %27 = load i16, ptr %type, align 8, !dbg !1822
  %conv51 = zext i16 %27 to i32, !dbg !1822
  %28 = load ptr, ptr %rdataset.addr, align 8, !dbg !1822
  %type52 = getelementptr inbounds %struct.dns_rdataset, ptr %28, i32 0, i32 4, !dbg !1822
  %29 = load i16, ptr %type52, align 2, !dbg !1822
  %conv53 = zext i16 %29 to i32, !dbg !1822
  %cmp54 = icmp ne i32 %conv51, %conv53, !dbg !1822
  br i1 %cmp54, label %lor.end62, label %lor.rhs56, !dbg !1822

lor.rhs56:                                        ; preds = %for.body
  %30 = load ptr, ptr %header, align 8, !dbg !1822
  %covers = getelementptr inbounds %struct.rdatasetheader, ptr %30, i32 0, i32 3, !dbg !1822
  %31 = load i16, ptr %covers, align 2, !dbg !1822
  %conv57 = zext i16 %31 to i32, !dbg !1822
  %32 = load ptr, ptr %rdataset.addr, align 8, !dbg !1822
  %covers58 = getelementptr inbounds %struct.dns_rdataset, ptr %32, i32 0, i32 8, !dbg !1822
  %33 = load i16, ptr %covers58, align 2, !dbg !1822
  %conv59 = zext i16 %33 to i32, !dbg !1822
  %cmp60 = icmp ne i32 %conv57, %conv59, !dbg !1822
  br label %lor.end62, !dbg !1822

lor.end62:                                        ; preds = %lor.rhs56, %for.body
  %34 = phi i1 [ true, %for.body ], [ %cmp60, %lor.rhs56 ]
  %lnot64 = xor i1 %34, true, !dbg !1822
  %lnot66 = xor i1 %lnot64, true, !dbg !1822
  %lnot.ext67 = zext i1 %lnot66 to i32, !dbg !1822
  %conv68 = sext i32 %lnot.ext67 to i64, !dbg !1822
  %expval69 = call i64 @llvm.expect.i64(i64 %conv68, i64 1), !dbg !1822
  %tobool70 = icmp ne i64 %expval69, 0, !dbg !1822
  br i1 %tobool70, label %lor.end72, label %lor.rhs71, !dbg !1822

lor.rhs71:                                        ; preds = %lor.end62
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 452, i32 noundef 2, ptr noundef @.str.37) #8, !dbg !1822
  unreachable, !dbg !1822

35:                                               ; No predecessors!
  br label %lor.end72, !dbg !1822

lor.end72:                                        ; preds = %35, %lor.end62
  %36 = phi i1 [ true, %lor.end62 ], [ false, %35 ]
  %lor.ext73 = zext i1 %36 to i32, !dbg !1822
  br label %for.inc, !dbg !1824

for.inc:                                          ; preds = %lor.end72
  %37 = load ptr, ptr %header, align 8, !dbg !1825
  %link = getelementptr inbounds %struct.rdatasetheader, ptr %37, i32 0, i32 5, !dbg !1825
  %next = getelementptr inbounds %struct.anon.10, ptr %link, i32 0, i32 1, !dbg !1825
  %38 = load ptr, ptr %next, align 8, !dbg !1825
  store ptr %38, ptr %header, align 8, !dbg !1826
  br label %for.cond, !dbg !1827, !llvm.loop !1828

for.end:                                          ; preds = %for.cond
  %39 = load ptr, ptr %rdataset.addr, align 8, !dbg !1831
  %40 = load ptr, ptr %mctx, align 8, !dbg !1832
  %call74 = call i32 @dns_rdataslab_fromrdataset(ptr noundef %39, ptr noundef %40, ptr noundef %r, i32 noundef 32), !dbg !1833
  store i32 %call74, ptr %result, align 4, !dbg !1834
  %41 = load i32, ptr %result, align 4, !dbg !1835
  %cmp75 = icmp ne i32 %41, 0, !dbg !1837
  br i1 %cmp75, label %if.then, label %if.end, !dbg !1838

if.then:                                          ; preds = %for.end
  br label %unlock, !dbg !1839

if.end:                                           ; preds = %for.end
  %base = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 0, !dbg !1840
  %42 = load ptr, ptr %base, align 8, !dbg !1840
  store ptr %42, ptr %header, align 8, !dbg !1841
  %43 = load ptr, ptr %rdataset.addr, align 8, !dbg !1842
  %type77 = getelementptr inbounds %struct.dns_rdataset, ptr %43, i32 0, i32 4, !dbg !1843
  %44 = load i16, ptr %type77, align 2, !dbg !1843
  %45 = load ptr, ptr %header, align 8, !dbg !1844
  %type78 = getelementptr inbounds %struct.rdatasetheader, ptr %45, i32 0, i32 0, !dbg !1845
  store i16 %44, ptr %type78, align 8, !dbg !1846
  %46 = load ptr, ptr %rdataset.addr, align 8, !dbg !1847
  %ttl = getelementptr inbounds %struct.dns_rdataset, ptr %46, i32 0, i32 5, !dbg !1848
  %47 = load i32, ptr %ttl, align 4, !dbg !1848
  %48 = load ptr, ptr %header, align 8, !dbg !1849
  %ttl79 = getelementptr inbounds %struct.rdatasetheader, ptr %48, i32 0, i32 1, !dbg !1850
  store i32 %47, ptr %ttl79, align 4, !dbg !1851
  %49 = load ptr, ptr %rdataset.addr, align 8, !dbg !1852
  %trust = getelementptr inbounds %struct.dns_rdataset, ptr %49, i32 0, i32 7, !dbg !1853
  %50 = load i16, ptr %trust, align 4, !dbg !1853
  %51 = load ptr, ptr %header, align 8, !dbg !1854
  %trust80 = getelementptr inbounds %struct.rdatasetheader, ptr %51, i32 0, i32 2, !dbg !1855
  store i16 %50, ptr %trust80, align 8, !dbg !1856
  %52 = load ptr, ptr %rdataset.addr, align 8, !dbg !1857
  %covers81 = getelementptr inbounds %struct.dns_rdataset, ptr %52, i32 0, i32 8, !dbg !1858
  %53 = load i16, ptr %covers81, align 2, !dbg !1858
  %54 = load ptr, ptr %header, align 8, !dbg !1859
  %covers82 = getelementptr inbounds %struct.rdatasetheader, ptr %54, i32 0, i32 3, !dbg !1860
  store i16 %53, ptr %covers82, align 2, !dbg !1861
  %55 = load ptr, ptr %header, align 8, !dbg !1862
  %attributes = getelementptr inbounds %struct.rdatasetheader, ptr %55, i32 0, i32 4, !dbg !1863
  store i32 0, ptr %attributes, align 4, !dbg !1864
  %56 = load ptr, ptr %rdataset.addr, align 8, !dbg !1865
  %attributes83 = getelementptr inbounds %struct.dns_rdataset, ptr %56, i32 0, i32 9, !dbg !1867
  %57 = load i32, ptr %attributes83, align 8, !dbg !1867
  %and = and i32 %57, 8192, !dbg !1868
  %cmp84 = icmp ne i32 %and, 0, !dbg !1869
  br i1 %cmp84, label %if.then86, label %if.end88, !dbg !1870

if.then86:                                        ; preds = %if.end
  %58 = load ptr, ptr %header, align 8, !dbg !1871
  %attributes87 = getelementptr inbounds %struct.rdatasetheader, ptr %58, i32 0, i32 4, !dbg !1872
  %59 = load i32, ptr %attributes87, align 4, !dbg !1873
  %or = or i32 %59, 16, !dbg !1873
  store i32 %or, ptr %attributes87, align 4, !dbg !1873
  br label %if.end88, !dbg !1871

if.end88:                                         ; preds = %if.then86, %if.end
  %60 = load ptr, ptr %rdataset.addr, align 8, !dbg !1874
  %attributes89 = getelementptr inbounds %struct.dns_rdataset, ptr %60, i32 0, i32 9, !dbg !1876
  %61 = load i32, ptr %attributes89, align 8, !dbg !1876
  %and90 = and i32 %61, 2097152, !dbg !1877
  %cmp91 = icmp ne i32 %and90, 0, !dbg !1878
  br i1 %cmp91, label %if.then93, label %if.end96, !dbg !1879

if.then93:                                        ; preds = %if.end88
  %62 = load ptr, ptr %header, align 8, !dbg !1880
  %attributes94 = getelementptr inbounds %struct.rdatasetheader, ptr %62, i32 0, i32 4, !dbg !1881
  %63 = load i32, ptr %attributes94, align 4, !dbg !1882
  %or95 = or i32 %63, 256, !dbg !1882
  store i32 %or95, ptr %attributes94, align 4, !dbg !1882
  br label %if.end96, !dbg !1880

if.end96:                                         ; preds = %if.then93, %if.end88
  br label %do.body97, !dbg !1883

do.body97:                                        ; preds = %if.end96
  %64 = load ptr, ptr %header, align 8, !dbg !1884
  %link98 = getelementptr inbounds %struct.rdatasetheader, ptr %64, i32 0, i32 5, !dbg !1884
  %prev = getelementptr inbounds %struct.anon.10, ptr %link98, i32 0, i32 0, !dbg !1884
  store ptr inttoptr (i64 -1 to ptr), ptr %prev, align 8, !dbg !1884
  %65 = load ptr, ptr %header, align 8, !dbg !1884
  %link99 = getelementptr inbounds %struct.rdatasetheader, ptr %65, i32 0, i32 5, !dbg !1884
  %next100 = getelementptr inbounds %struct.anon.10, ptr %link99, i32 0, i32 1, !dbg !1884
  store ptr inttoptr (i64 -1 to ptr), ptr %next100, align 8, !dbg !1884
  br label %do.cond101, !dbg !1884

do.cond101:                                       ; preds = %do.body97
  br label %do.end102, !dbg !1884

do.end102:                                        ; preds = %do.cond101
  br label %do.body103, !dbg !1886

do.body103:                                       ; preds = %do.end102
  br label %do.body104, !dbg !1887

do.body104:                                       ; preds = %do.body103
  %66 = load ptr, ptr %ecdbnode, align 8, !dbg !1889
  %rdatasets105 = getelementptr inbounds %struct.dns_ecdbnode, ptr %66, i32 0, i32 5, !dbg !1889
  %tail = getelementptr inbounds %struct.anon.9, ptr %rdatasets105, i32 0, i32 1, !dbg !1889
  %67 = load ptr, ptr %tail, align 8, !dbg !1889
  %cmp106 = icmp ne ptr %67, null, !dbg !1889
  br i1 %cmp106, label %if.then108, label %if.else, !dbg !1892

if.then108:                                       ; preds = %do.body104
  %68 = load ptr, ptr %header, align 8, !dbg !1889
  %69 = load ptr, ptr %ecdbnode, align 8, !dbg !1889
  %rdatasets109 = getelementptr inbounds %struct.dns_ecdbnode, ptr %69, i32 0, i32 5, !dbg !1889
  %tail110 = getelementptr inbounds %struct.anon.9, ptr %rdatasets109, i32 0, i32 1, !dbg !1889
  %70 = load ptr, ptr %tail110, align 8, !dbg !1889
  %link111 = getelementptr inbounds %struct.rdatasetheader, ptr %70, i32 0, i32 5, !dbg !1889
  %next112 = getelementptr inbounds %struct.anon.10, ptr %link111, i32 0, i32 1, !dbg !1889
  store ptr %68, ptr %next112, align 8, !dbg !1889
  br label %if.end115, !dbg !1889

if.else:                                          ; preds = %do.body104
  %71 = load ptr, ptr %header, align 8, !dbg !1889
  %72 = load ptr, ptr %ecdbnode, align 8, !dbg !1889
  %rdatasets113 = getelementptr inbounds %struct.dns_ecdbnode, ptr %72, i32 0, i32 5, !dbg !1889
  %head114 = getelementptr inbounds %struct.anon.9, ptr %rdatasets113, i32 0, i32 0, !dbg !1889
  store ptr %71, ptr %head114, align 8, !dbg !1889
  br label %if.end115

if.end115:                                        ; preds = %if.else, %if.then108
  %73 = load ptr, ptr %ecdbnode, align 8, !dbg !1892
  %rdatasets116 = getelementptr inbounds %struct.dns_ecdbnode, ptr %73, i32 0, i32 5, !dbg !1892
  %tail117 = getelementptr inbounds %struct.anon.9, ptr %rdatasets116, i32 0, i32 1, !dbg !1892
  %74 = load ptr, ptr %tail117, align 8, !dbg !1892
  %75 = load ptr, ptr %header, align 8, !dbg !1892
  %link118 = getelementptr inbounds %struct.rdatasetheader, ptr %75, i32 0, i32 5, !dbg !1892
  %prev119 = getelementptr inbounds %struct.anon.10, ptr %link118, i32 0, i32 0, !dbg !1892
  store ptr %74, ptr %prev119, align 8, !dbg !1892
  %76 = load ptr, ptr %header, align 8, !dbg !1892
  %link120 = getelementptr inbounds %struct.rdatasetheader, ptr %76, i32 0, i32 5, !dbg !1892
  %next121 = getelementptr inbounds %struct.anon.10, ptr %link120, i32 0, i32 1, !dbg !1892
  store ptr null, ptr %next121, align 8, !dbg !1892
  %77 = load ptr, ptr %header, align 8, !dbg !1892
  %78 = load ptr, ptr %ecdbnode, align 8, !dbg !1892
  %rdatasets122 = getelementptr inbounds %struct.dns_ecdbnode, ptr %78, i32 0, i32 5, !dbg !1892
  %tail123 = getelementptr inbounds %struct.anon.9, ptr %rdatasets122, i32 0, i32 1, !dbg !1892
  store ptr %77, ptr %tail123, align 8, !dbg !1892
  br label %do.cond124, !dbg !1892

do.cond124:                                       ; preds = %if.end115
  br label %do.end125, !dbg !1892

do.end125:                                        ; preds = %do.cond124
  br label %do.cond126, !dbg !1887

do.cond126:                                       ; preds = %do.end125
  br label %do.end127, !dbg !1887

do.end127:                                        ; preds = %do.cond126
  %79 = load ptr, ptr %addedrdataset.addr, align 8, !dbg !1893
  %cmp128 = icmp eq ptr %79, null, !dbg !1895
  br i1 %cmp128, label %if.then130, label %if.end131, !dbg !1896

if.then130:                                       ; preds = %do.end127
  br label %unlock, !dbg !1897

if.end131:                                        ; preds = %do.end127
  %80 = load ptr, ptr %ecdb, align 8, !dbg !1898
  %81 = load ptr, ptr %ecdbnode, align 8, !dbg !1899
  %82 = load ptr, ptr %header, align 8, !dbg !1900
  %83 = load ptr, ptr %addedrdataset.addr, align 8, !dbg !1901
  call void @bind_rdataset(ptr noundef %80, ptr noundef %81, ptr noundef %82, ptr noundef %83), !dbg !1902
  br label %unlock, !dbg !1902

unlock:                                           ; preds = %if.end131, %if.then130, %if.then
  tail call void @llvm.dbg.label(metadata !1779), !dbg !1903
  br label %do.body132, !dbg !1904

do.body132:                                       ; preds = %unlock
  %84 = load ptr, ptr %ecdbnode, align 8, !dbg !1905
  %lock133 = getelementptr inbounds %struct.dns_ecdbnode, ptr %84, i32 0, i32 1, !dbg !1905
  %call134 = call i32 @pthread_mutex_unlock(ptr noundef %lock133) #9, !dbg !1905
  %cmp135 = icmp eq i32 %call134, 0, !dbg !1905
  %85 = zext i1 %cmp135 to i64, !dbg !1905
  %cond137 = select i1 %cmp135, i32 0, i32 34, !dbg !1905
  %cmp138 = icmp eq i32 %cond137, 0, !dbg !1905
  %lnot140 = xor i1 %cmp138, true, !dbg !1905
  %lnot142 = xor i1 %lnot140, true, !dbg !1905
  %lnot.ext143 = zext i1 %lnot142 to i32, !dbg !1905
  %conv144 = sext i32 %lnot.ext143 to i64, !dbg !1905
  %expval145 = call i64 @llvm.expect.i64(i64 %conv144, i64 1), !dbg !1905
  %tobool146 = icmp ne i64 %expval145, 0, !dbg !1905
  br i1 %tobool146, label %lor.end148, label %lor.rhs147, !dbg !1905

lor.rhs147:                                       ; preds = %do.body132
  call void @isc_error_runtimecheck(ptr noundef @.str, i32 noundef 479, ptr noundef @.str.38) #8, !dbg !1905
  unreachable, !dbg !1905

86:                                               ; No predecessors!
  br label %lor.end148, !dbg !1905

lor.end148:                                       ; preds = %86, %do.body132
  %87 = phi i1 [ true, %do.body132 ], [ false, %86 ]
  %lor.ext149 = zext i1 %87 to i32, !dbg !1905
  br label %do.cond150, !dbg !1905

do.cond150:                                       ; preds = %lor.end148
  br label %do.end151, !dbg !1905

do.end151:                                        ; preds = %do.cond150
  %88 = load i32, ptr %result, align 4, !dbg !1907
  call void @llvm.lifetime.end.p0(i64 8, ptr %header) #9, !dbg !1908
  call void @llvm.lifetime.end.p0(i64 8, ptr %ecdbnode) #9, !dbg !1908
  call void @llvm.lifetime.end.p0(i64 8, ptr %mctx) #9, !dbg !1908
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !1908
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #9, !dbg !1908
  call void @llvm.lifetime.end.p0(i64 8, ptr %ecdb) #9, !dbg !1908
  ret i32 %88, !dbg !1909
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @deleterdataset(ptr noundef %db, ptr noundef %node, ptr noundef %version, i16 noundef zeroext %type, i16 noundef zeroext %covers) #0 !dbg !1910 {
entry:
  %db.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %version.addr = alloca ptr, align 8
  %type.addr = alloca i16, align 2
  %covers.addr = alloca i16, align 2
  store ptr %db, ptr %db.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %db.addr, metadata !1912, metadata !DIExpression()), !dbg !1917
  store ptr %node, ptr %node.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1913, metadata !DIExpression()), !dbg !1918
  store ptr %version, ptr %version.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %version.addr, metadata !1914, metadata !DIExpression()), !dbg !1919
  store i16 %type, ptr %type.addr, align 2
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1915, metadata !DIExpression()), !dbg !1920
  store i16 %covers, ptr %covers.addr, align 2
  tail call void @llvm.dbg.declare(metadata ptr %covers.addr, metadata !1916, metadata !DIExpression()), !dbg !1921
  %0 = load ptr, ptr %db.addr, align 8, !dbg !1922
  %1 = load ptr, ptr %node.addr, align 8, !dbg !1923
  %2 = load ptr, ptr %version.addr, align 8, !dbg !1924
  %3 = load i16, ptr %type.addr, align 2, !dbg !1925
  %4 = load i16, ptr %covers.addr, align 2, !dbg !1926
  ret i32 27, !dbg !1927
}

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !1928 i32 @pthread_mutex_lock(ptr noundef) #5

; Function Attrs: noreturn null_pointer_is_valid
declare !dbg !1933 void @isc_error_runtimecheck(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !1937 i32 @pthread_mutex_unlock(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @destroy_ecdb(ptr noundef %ecdbp) #0 !dbg !1938 {
entry:
  %ecdbp.addr = alloca ptr, align 8
  %ecdb = alloca ptr, align 8
  %mctx = alloca ptr, align 8
  store ptr %ecdbp, ptr %ecdbp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ecdbp.addr, metadata !1943, metadata !DIExpression()), !dbg !1946
  call void @llvm.lifetime.start.p0(i64 8, ptr %ecdb) #9, !dbg !1947
  tail call void @llvm.dbg.declare(metadata ptr %ecdb, metadata !1944, metadata !DIExpression()), !dbg !1948
  %0 = load ptr, ptr %ecdbp.addr, align 8, !dbg !1949
  %1 = load ptr, ptr %0, align 8, !dbg !1950
  store ptr %1, ptr %ecdb, align 8, !dbg !1948
  call void @llvm.lifetime.start.p0(i64 8, ptr %mctx) #9, !dbg !1951
  tail call void @llvm.dbg.declare(metadata ptr %mctx, metadata !1945, metadata !DIExpression()), !dbg !1952
  %2 = load ptr, ptr %ecdb, align 8, !dbg !1953
  %common = getelementptr inbounds %struct.dns_ecdb, ptr %2, i32 0, i32 0, !dbg !1954
  %mctx1 = getelementptr inbounds %struct.dns_db, ptr %common, i32 0, i32 6, !dbg !1955
  %3 = load ptr, ptr %mctx1, align 8, !dbg !1955
  store ptr %3, ptr %mctx, align 8, !dbg !1952
  %4 = load ptr, ptr %ecdb, align 8, !dbg !1956
  %common2 = getelementptr inbounds %struct.dns_ecdb, ptr %4, i32 0, i32 0, !dbg !1958
  %origin = getelementptr inbounds %struct.dns_db, ptr %common2, i32 0, i32 5, !dbg !1959
  %call = call zeroext i1 @dns_name_dynamic(ptr noundef %origin), !dbg !1960
  br i1 %call, label %if.then, label %if.end, !dbg !1961

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ecdb, align 8, !dbg !1962
  %common3 = getelementptr inbounds %struct.dns_ecdb, ptr %5, i32 0, i32 0, !dbg !1963
  %origin4 = getelementptr inbounds %struct.dns_db, ptr %common3, i32 0, i32 5, !dbg !1964
  %6 = load ptr, ptr %mctx, align 8, !dbg !1965
  call void @dns_name_free(ptr noundef %origin4, ptr noundef %6), !dbg !1966
  br label %if.end, !dbg !1966

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %ecdb, align 8, !dbg !1967
  %lock = getelementptr inbounds %struct.dns_ecdb, ptr %7, i32 0, i32 1, !dbg !1967
  %call5 = call i32 @pthread_mutex_destroy(ptr noundef %lock) #9, !dbg !1967
  %cmp = icmp eq i32 %call5, 0, !dbg !1967
  %lnot = xor i1 %cmp, true, !dbg !1967
  %lnot6 = xor i1 %lnot, true, !dbg !1967
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !1967
  %conv = sext i32 %lnot.ext to i64, !dbg !1967
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1967
  %tobool = icmp ne i64 %expval, 0, !dbg !1967
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1967

lor.rhs:                                          ; preds = %if.end
  call void @isc_error_runtimecheck(ptr noundef @.str, i32 noundef 176, ptr noundef @.str.13) #8, !dbg !1967
  unreachable, !dbg !1967

8:                                                ; No predecessors!
  br label %lor.end, !dbg !1967

lor.end:                                          ; preds = %8, %if.end
  %9 = phi i1 [ true, %if.end ], [ false, %8 ]
  %lor.ext = zext i1 %9 to i32, !dbg !1967
  %10 = load ptr, ptr %ecdb, align 8, !dbg !1968
  %common7 = getelementptr inbounds %struct.dns_ecdb, ptr %10, i32 0, i32 0, !dbg !1969
  %impmagic = getelementptr inbounds %struct.dns_db, ptr %common7, i32 0, i32 1, !dbg !1970
  store i32 0, ptr %impmagic, align 4, !dbg !1971
  %11 = load ptr, ptr %ecdb, align 8, !dbg !1972
  %common8 = getelementptr inbounds %struct.dns_ecdb, ptr %11, i32 0, i32 0, !dbg !1973
  %magic = getelementptr inbounds %struct.dns_db, ptr %common8, i32 0, i32 0, !dbg !1974
  store i32 0, ptr %magic, align 8, !dbg !1975
  br label %do.body, !dbg !1976

do.body:                                          ; preds = %lor.end
  %12 = load ptr, ptr %ecdb, align 8, !dbg !1977
  call void @isc__mem_putanddetach(ptr noundef %mctx, ptr noundef %12, i64 noundef 192, ptr noundef @.str, i32 noundef 181), !dbg !1977
  store ptr null, ptr %ecdb, align 8, !dbg !1977
  br label %do.cond, !dbg !1977

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1977

do.end:                                           ; preds = %do.cond
  %13 = load ptr, ptr %ecdbp.addr, align 8, !dbg !1979
  store ptr null, ptr %13, align 8, !dbg !1980
  call void @llvm.lifetime.end.p0(i64 8, ptr %mctx) #9, !dbg !1981
  call void @llvm.lifetime.end.p0(i64 8, ptr %ecdb) #9, !dbg !1981
  ret void, !dbg !1981
}

; Function Attrs: null_pointer_is_valid
declare !dbg !1982 zeroext i1 @dns_name_dynamic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !1985 void @dns_name_free(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !1988 i32 @pthread_mutex_destroy(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare !dbg !1989 void @isc__mem_putanddetach(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !1990 i32 @dns_name_dup(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @destroynode(ptr noundef %node) #0 !dbg !1991 {
entry:
  %node.addr = alloca ptr, align 8
  %mctx = alloca ptr, align 8
  %ecdb = alloca ptr, align 8
  %need_destroydb = alloca i8, align 1
  %header = alloca ptr, align 8
  %headersize = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1995, metadata !DIExpression()), !dbg !2002
  call void @llvm.lifetime.start.p0(i64 8, ptr %mctx) #9, !dbg !2003
  tail call void @llvm.dbg.declare(metadata ptr %mctx, metadata !1996, metadata !DIExpression()), !dbg !2004
  call void @llvm.lifetime.start.p0(i64 8, ptr %ecdb) #9, !dbg !2005
  tail call void @llvm.dbg.declare(metadata ptr %ecdb, metadata !1997, metadata !DIExpression()), !dbg !2006
  %0 = load ptr, ptr %node.addr, align 8, !dbg !2007
  %ecdb1 = getelementptr inbounds %struct.dns_ecdbnode, ptr %0, i32 0, i32 2, !dbg !2008
  %1 = load ptr, ptr %ecdb1, align 8, !dbg !2008
  store ptr %1, ptr %ecdb, align 8, !dbg !2006
  call void @llvm.lifetime.start.p0(i64 1, ptr %need_destroydb) #9, !dbg !2009
  tail call void @llvm.dbg.declare(metadata ptr %need_destroydb, metadata !1998, metadata !DIExpression()), !dbg !2010
  store i8 0, ptr %need_destroydb, align 1, !dbg !2010
  call void @llvm.lifetime.start.p0(i64 8, ptr %header) #9, !dbg !2011
  tail call void @llvm.dbg.declare(metadata ptr %header, metadata !1999, metadata !DIExpression()), !dbg !2012
  %2 = load ptr, ptr %ecdb, align 8, !dbg !2013
  %common = getelementptr inbounds %struct.dns_ecdb, ptr %2, i32 0, i32 0, !dbg !2014
  %mctx2 = getelementptr inbounds %struct.dns_db, ptr %common, i32 0, i32 6, !dbg !2015
  %3 = load ptr, ptr %mctx2, align 8, !dbg !2015
  store ptr %3, ptr %mctx, align 8, !dbg !2016
  br label %do.body, !dbg !2017

do.body:                                          ; preds = %entry
  %4 = load ptr, ptr %ecdb, align 8, !dbg !2018
  %lock = getelementptr inbounds %struct.dns_ecdb, ptr %4, i32 0, i32 1, !dbg !2018
  %call = call i32 @pthread_mutex_lock(ptr noundef %lock) #9, !dbg !2018
  %cmp = icmp eq i32 %call, 0, !dbg !2018
  %5 = zext i1 %cmp to i64, !dbg !2018
  %cond = select i1 %cmp, i32 0, i32 34, !dbg !2018
  %cmp3 = icmp eq i32 %cond, 0, !dbg !2018
  %lnot = xor i1 %cmp3, true, !dbg !2018
  %lnot4 = xor i1 %lnot, true, !dbg !2018
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !2018
  %conv = sext i32 %lnot.ext to i64, !dbg !2018
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2018
  %tobool = icmp ne i64 %expval, 0, !dbg !2018
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !2018

lor.rhs:                                          ; preds = %do.body
  call void @isc_error_runtimecheck(ptr noundef @.str, i32 noundef 234, ptr noundef @.str.10) #8, !dbg !2018
  unreachable, !dbg !2018

6:                                                ; No predecessors!
  br label %lor.end, !dbg !2018

lor.end:                                          ; preds = %6, %do.body
  %7 = phi i1 [ true, %do.body ], [ false, %6 ]
  %lor.ext = zext i1 %7 to i32, !dbg !2018
  br label %do.cond, !dbg !2018

do.cond:                                          ; preds = %lor.end
  br label %do.end, !dbg !2018

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !2020

do.body5:                                         ; preds = %do.end
  br label %do.body6, !dbg !2021

do.body6:                                         ; preds = %do.body5
  %8 = load ptr, ptr %node.addr, align 8, !dbg !2023
  %link = getelementptr inbounds %struct.dns_ecdbnode, ptr %8, i32 0, i32 4, !dbg !2023
  %next = getelementptr inbounds %struct.anon.8, ptr %link, i32 0, i32 1, !dbg !2023
  %9 = load ptr, ptr %next, align 8, !dbg !2023
  %cmp7 = icmp ne ptr %9, null, !dbg !2023
  br i1 %cmp7, label %if.then, label %if.else, !dbg !2026

if.then:                                          ; preds = %do.body6
  %10 = load ptr, ptr %node.addr, align 8, !dbg !2023
  %link9 = getelementptr inbounds %struct.dns_ecdbnode, ptr %10, i32 0, i32 4, !dbg !2023
  %prev = getelementptr inbounds %struct.anon.8, ptr %link9, i32 0, i32 0, !dbg !2023
  %11 = load ptr, ptr %prev, align 8, !dbg !2023
  %12 = load ptr, ptr %node.addr, align 8, !dbg !2023
  %link10 = getelementptr inbounds %struct.dns_ecdbnode, ptr %12, i32 0, i32 4, !dbg !2023
  %next11 = getelementptr inbounds %struct.anon.8, ptr %link10, i32 0, i32 1, !dbg !2023
  %13 = load ptr, ptr %next11, align 8, !dbg !2023
  %link12 = getelementptr inbounds %struct.dns_ecdbnode, ptr %13, i32 0, i32 4, !dbg !2023
  %prev13 = getelementptr inbounds %struct.anon.8, ptr %link12, i32 0, i32 0, !dbg !2023
  store ptr %11, ptr %prev13, align 8, !dbg !2023
  br label %if.end, !dbg !2023

if.else:                                          ; preds = %do.body6
  %14 = load ptr, ptr %ecdb, align 8, !dbg !2027
  %nodes = getelementptr inbounds %struct.dns_ecdb, ptr %14, i32 0, i32 3, !dbg !2027
  %tail = getelementptr inbounds %struct.anon.7, ptr %nodes, i32 0, i32 1, !dbg !2027
  %15 = load ptr, ptr %tail, align 8, !dbg !2027
  %16 = load ptr, ptr %node.addr, align 8, !dbg !2027
  %cmp14 = icmp eq ptr %15, %16, !dbg !2027
  %lnot16 = xor i1 %cmp14, true, !dbg !2027
  %lnot18 = xor i1 %lnot16, true, !dbg !2027
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !2027
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !2027
  %expval21 = call i64 @llvm.expect.i64(i64 %conv20, i64 1), !dbg !2027
  %tobool22 = icmp ne i64 %expval21, 0, !dbg !2027
  br i1 %tobool22, label %lor.end24, label %lor.rhs23, !dbg !2027

lor.rhs23:                                        ; preds = %if.else
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 235, i32 noundef 2, ptr noundef @.str.22) #8, !dbg !2027
  unreachable, !dbg !2027

17:                                               ; No predecessors!
  br label %lor.end24, !dbg !2027

lor.end24:                                        ; preds = %17, %if.else
  %18 = phi i1 [ true, %if.else ], [ false, %17 ]
  %lor.ext25 = zext i1 %18 to i32, !dbg !2027
  %19 = load ptr, ptr %node.addr, align 8, !dbg !2027
  %link26 = getelementptr inbounds %struct.dns_ecdbnode, ptr %19, i32 0, i32 4, !dbg !2027
  %prev27 = getelementptr inbounds %struct.anon.8, ptr %link26, i32 0, i32 0, !dbg !2027
  %20 = load ptr, ptr %prev27, align 8, !dbg !2027
  %21 = load ptr, ptr %ecdb, align 8, !dbg !2027
  %nodes28 = getelementptr inbounds %struct.dns_ecdb, ptr %21, i32 0, i32 3, !dbg !2027
  %tail29 = getelementptr inbounds %struct.anon.7, ptr %nodes28, i32 0, i32 1, !dbg !2027
  store ptr %20, ptr %tail29, align 8, !dbg !2027
  br label %if.end

if.end:                                           ; preds = %lor.end24, %if.then
  %22 = load ptr, ptr %node.addr, align 8, !dbg !2029
  %link30 = getelementptr inbounds %struct.dns_ecdbnode, ptr %22, i32 0, i32 4, !dbg !2029
  %prev31 = getelementptr inbounds %struct.anon.8, ptr %link30, i32 0, i32 0, !dbg !2029
  %23 = load ptr, ptr %prev31, align 8, !dbg !2029
  %cmp32 = icmp ne ptr %23, null, !dbg !2029
  br i1 %cmp32, label %if.then34, label %if.else41, !dbg !2026

if.then34:                                        ; preds = %if.end
  %24 = load ptr, ptr %node.addr, align 8, !dbg !2029
  %link35 = getelementptr inbounds %struct.dns_ecdbnode, ptr %24, i32 0, i32 4, !dbg !2029
  %next36 = getelementptr inbounds %struct.anon.8, ptr %link35, i32 0, i32 1, !dbg !2029
  %25 = load ptr, ptr %next36, align 8, !dbg !2029
  %26 = load ptr, ptr %node.addr, align 8, !dbg !2029
  %link37 = getelementptr inbounds %struct.dns_ecdbnode, ptr %26, i32 0, i32 4, !dbg !2029
  %prev38 = getelementptr inbounds %struct.anon.8, ptr %link37, i32 0, i32 0, !dbg !2029
  %27 = load ptr, ptr %prev38, align 8, !dbg !2029
  %link39 = getelementptr inbounds %struct.dns_ecdbnode, ptr %27, i32 0, i32 4, !dbg !2029
  %next40 = getelementptr inbounds %struct.anon.8, ptr %link39, i32 0, i32 1, !dbg !2029
  store ptr %25, ptr %next40, align 8, !dbg !2029
  br label %if.end59, !dbg !2029

if.else41:                                        ; preds = %if.end
  %28 = load ptr, ptr %ecdb, align 8, !dbg !2031
  %nodes42 = getelementptr inbounds %struct.dns_ecdb, ptr %28, i32 0, i32 3, !dbg !2031
  %head = getelementptr inbounds %struct.anon.7, ptr %nodes42, i32 0, i32 0, !dbg !2031
  %29 = load ptr, ptr %head, align 8, !dbg !2031
  %30 = load ptr, ptr %node.addr, align 8, !dbg !2031
  %cmp43 = icmp eq ptr %29, %30, !dbg !2031
  %lnot45 = xor i1 %cmp43, true, !dbg !2031
  %lnot47 = xor i1 %lnot45, true, !dbg !2031
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !2031
  %conv49 = sext i32 %lnot.ext48 to i64, !dbg !2031
  %expval50 = call i64 @llvm.expect.i64(i64 %conv49, i64 1), !dbg !2031
  %tobool51 = icmp ne i64 %expval50, 0, !dbg !2031
  br i1 %tobool51, label %lor.end53, label %lor.rhs52, !dbg !2031

lor.rhs52:                                        ; preds = %if.else41
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 235, i32 noundef 2, ptr noundef @.str.23) #8, !dbg !2031
  unreachable, !dbg !2031

31:                                               ; No predecessors!
  br label %lor.end53, !dbg !2031

lor.end53:                                        ; preds = %31, %if.else41
  %32 = phi i1 [ true, %if.else41 ], [ false, %31 ]
  %lor.ext54 = zext i1 %32 to i32, !dbg !2031
  %33 = load ptr, ptr %node.addr, align 8, !dbg !2031
  %link55 = getelementptr inbounds %struct.dns_ecdbnode, ptr %33, i32 0, i32 4, !dbg !2031
  %next56 = getelementptr inbounds %struct.anon.8, ptr %link55, i32 0, i32 1, !dbg !2031
  %34 = load ptr, ptr %next56, align 8, !dbg !2031
  %35 = load ptr, ptr %ecdb, align 8, !dbg !2031
  %nodes57 = getelementptr inbounds %struct.dns_ecdb, ptr %35, i32 0, i32 3, !dbg !2031
  %head58 = getelementptr inbounds %struct.anon.7, ptr %nodes57, i32 0, i32 0, !dbg !2031
  store ptr %34, ptr %head58, align 8, !dbg !2031
  br label %if.end59

if.end59:                                         ; preds = %lor.end53, %if.then34
  %36 = load ptr, ptr %node.addr, align 8, !dbg !2026
  %link60 = getelementptr inbounds %struct.dns_ecdbnode, ptr %36, i32 0, i32 4, !dbg !2026
  %prev61 = getelementptr inbounds %struct.anon.8, ptr %link60, i32 0, i32 0, !dbg !2026
  store ptr inttoptr (i64 -1 to ptr), ptr %prev61, align 8, !dbg !2026
  %37 = load ptr, ptr %node.addr, align 8, !dbg !2026
  %link62 = getelementptr inbounds %struct.dns_ecdbnode, ptr %37, i32 0, i32 4, !dbg !2026
  %next63 = getelementptr inbounds %struct.anon.8, ptr %link62, i32 0, i32 1, !dbg !2026
  store ptr inttoptr (i64 -1 to ptr), ptr %next63, align 8, !dbg !2026
  %38 = load ptr, ptr %ecdb, align 8, !dbg !2026
  %nodes64 = getelementptr inbounds %struct.dns_ecdb, ptr %38, i32 0, i32 3, !dbg !2026
  %head65 = getelementptr inbounds %struct.anon.7, ptr %nodes64, i32 0, i32 0, !dbg !2026
  %39 = load ptr, ptr %head65, align 8, !dbg !2026
  %40 = load ptr, ptr %node.addr, align 8, !dbg !2026
  %cmp66 = icmp ne ptr %39, %40, !dbg !2026
  %lnot68 = xor i1 %cmp66, true, !dbg !2026
  %lnot70 = xor i1 %lnot68, true, !dbg !2026
  %lnot.ext71 = zext i1 %lnot70 to i32, !dbg !2026
  %conv72 = sext i32 %lnot.ext71 to i64, !dbg !2026
  %expval73 = call i64 @llvm.expect.i64(i64 %conv72, i64 1), !dbg !2026
  %tobool74 = icmp ne i64 %expval73, 0, !dbg !2026
  br i1 %tobool74, label %lor.end76, label %lor.rhs75, !dbg !2026

lor.rhs75:                                        ; preds = %if.end59
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 235, i32 noundef 2, ptr noundef @.str.24) #8, !dbg !2026
  unreachable, !dbg !2026

41:                                               ; No predecessors!
  br label %lor.end76, !dbg !2026

lor.end76:                                        ; preds = %41, %if.end59
  %42 = phi i1 [ true, %if.end59 ], [ false, %41 ]
  %lor.ext77 = zext i1 %42 to i32, !dbg !2026
  %43 = load ptr, ptr %ecdb, align 8, !dbg !2026
  %nodes78 = getelementptr inbounds %struct.dns_ecdb, ptr %43, i32 0, i32 3, !dbg !2026
  %tail79 = getelementptr inbounds %struct.anon.7, ptr %nodes78, i32 0, i32 1, !dbg !2026
  %44 = load ptr, ptr %tail79, align 8, !dbg !2026
  %45 = load ptr, ptr %node.addr, align 8, !dbg !2026
  %cmp80 = icmp ne ptr %44, %45, !dbg !2026
  %lnot82 = xor i1 %cmp80, true, !dbg !2026
  %lnot84 = xor i1 %lnot82, true, !dbg !2026
  %lnot.ext85 = zext i1 %lnot84 to i32, !dbg !2026
  %conv86 = sext i32 %lnot.ext85 to i64, !dbg !2026
  %expval87 = call i64 @llvm.expect.i64(i64 %conv86, i64 1), !dbg !2026
  %tobool88 = icmp ne i64 %expval87, 0, !dbg !2026
  br i1 %tobool88, label %lor.end90, label %lor.rhs89, !dbg !2026

lor.rhs89:                                        ; preds = %lor.end76
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 235, i32 noundef 2, ptr noundef @.str.25) #8, !dbg !2026
  unreachable, !dbg !2026

46:                                               ; No predecessors!
  br label %lor.end90, !dbg !2026

lor.end90:                                        ; preds = %46, %lor.end76
  %47 = phi i1 [ true, %lor.end76 ], [ false, %46 ]
  %lor.ext91 = zext i1 %47 to i32, !dbg !2026
  br label %do.cond92, !dbg !2026

do.cond92:                                        ; preds = %lor.end90
  br label %do.end93, !dbg !2026

do.end93:                                         ; preds = %do.cond92
  br label %do.cond94, !dbg !2021

do.cond94:                                        ; preds = %do.end93
  br label %do.end95, !dbg !2021

do.end95:                                         ; preds = %do.cond94
  %48 = load ptr, ptr %ecdb, align 8, !dbg !2033
  %references = getelementptr inbounds %struct.dns_ecdb, ptr %48, i32 0, i32 2, !dbg !2035
  %49 = load i32, ptr %references, align 8, !dbg !2035
  %cmp96 = icmp eq i32 %49, 0, !dbg !2036
  br i1 %cmp96, label %land.lhs.true, label %if.end103, !dbg !2037

land.lhs.true:                                    ; preds = %do.end95
  %50 = load ptr, ptr %ecdb, align 8, !dbg !2038
  %nodes98 = getelementptr inbounds %struct.dns_ecdb, ptr %50, i32 0, i32 3, !dbg !2038
  %head99 = getelementptr inbounds %struct.anon.7, ptr %nodes98, i32 0, i32 0, !dbg !2038
  %51 = load ptr, ptr %head99, align 8, !dbg !2038
  %cmp100 = icmp eq ptr %51, null, !dbg !2038
  br i1 %cmp100, label %if.then102, label %if.end103, !dbg !2039

if.then102:                                       ; preds = %land.lhs.true
  store i8 1, ptr %need_destroydb, align 1, !dbg !2040
  br label %if.end103, !dbg !2041

if.end103:                                        ; preds = %if.then102, %land.lhs.true, %do.end95
  br label %do.body104, !dbg !2042

do.body104:                                       ; preds = %if.end103
  %52 = load ptr, ptr %ecdb, align 8, !dbg !2043
  %lock105 = getelementptr inbounds %struct.dns_ecdb, ptr %52, i32 0, i32 1, !dbg !2043
  %call106 = call i32 @pthread_mutex_unlock(ptr noundef %lock105) #9, !dbg !2043
  %cmp107 = icmp eq i32 %call106, 0, !dbg !2043
  %53 = zext i1 %cmp107 to i64, !dbg !2043
  %cond109 = select i1 %cmp107, i32 0, i32 34, !dbg !2043
  %cmp110 = icmp eq i32 %cond109, 0, !dbg !2043
  %lnot112 = xor i1 %cmp110, true, !dbg !2043
  %lnot114 = xor i1 %lnot112, true, !dbg !2043
  %lnot.ext115 = zext i1 %lnot114 to i32, !dbg !2043
  %conv116 = sext i32 %lnot.ext115 to i64, !dbg !2043
  %expval117 = call i64 @llvm.expect.i64(i64 %conv116, i64 1), !dbg !2043
  %tobool118 = icmp ne i64 %expval117, 0, !dbg !2043
  br i1 %tobool118, label %lor.end120, label %lor.rhs119, !dbg !2043

lor.rhs119:                                       ; preds = %do.body104
  call void @isc_error_runtimecheck(ptr noundef @.str, i32 noundef 238, ptr noundef @.str.11) #8, !dbg !2043
  unreachable, !dbg !2043

54:                                               ; No predecessors!
  br label %lor.end120, !dbg !2043

lor.end120:                                       ; preds = %54, %do.body104
  %55 = phi i1 [ true, %do.body104 ], [ false, %54 ]
  %lor.ext121 = zext i1 %55 to i32, !dbg !2043
  br label %do.cond122, !dbg !2043

do.cond122:                                       ; preds = %lor.end120
  br label %do.end123, !dbg !2043

do.end123:                                        ; preds = %do.cond122
  %56 = load ptr, ptr %node.addr, align 8, !dbg !2045
  %name = getelementptr inbounds %struct.dns_ecdbnode, ptr %56, i32 0, i32 3, !dbg !2046
  %57 = load ptr, ptr %mctx, align 8, !dbg !2047
  call void @dns_name_free(ptr noundef %name, ptr noundef %57), !dbg !2048
  br label %while.cond, !dbg !2049

while.cond:                                       ; preds = %do.end231, %do.end123
  %58 = load ptr, ptr %node.addr, align 8, !dbg !2050
  %rdatasets = getelementptr inbounds %struct.dns_ecdbnode, ptr %58, i32 0, i32 5, !dbg !2050
  %head124 = getelementptr inbounds %struct.anon.9, ptr %rdatasets, i32 0, i32 0, !dbg !2050
  %59 = load ptr, ptr %head124, align 8, !dbg !2050
  store ptr %59, ptr %header, align 8, !dbg !2051
  %cmp125 = icmp ne ptr %59, null, !dbg !2052
  br i1 %cmp125, label %while.body, label %while.end, !dbg !2049

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %headersize) #9, !dbg !2053
  tail call void @llvm.dbg.declare(metadata ptr %headersize, metadata !2000, metadata !DIExpression()), !dbg !2054
  br label %do.body127, !dbg !2055

do.body127:                                       ; preds = %while.body
  br label %do.body128, !dbg !2056

do.body128:                                       ; preds = %do.body127
  %60 = load ptr, ptr %header, align 8, !dbg !2058
  %link129 = getelementptr inbounds %struct.rdatasetheader, ptr %60, i32 0, i32 5, !dbg !2058
  %next130 = getelementptr inbounds %struct.anon.10, ptr %link129, i32 0, i32 1, !dbg !2058
  %61 = load ptr, ptr %next130, align 8, !dbg !2058
  %cmp131 = icmp ne ptr %61, null, !dbg !2058
  br i1 %cmp131, label %if.then133, label %if.else140, !dbg !2061

if.then133:                                       ; preds = %do.body128
  %62 = load ptr, ptr %header, align 8, !dbg !2058
  %link134 = getelementptr inbounds %struct.rdatasetheader, ptr %62, i32 0, i32 5, !dbg !2058
  %prev135 = getelementptr inbounds %struct.anon.10, ptr %link134, i32 0, i32 0, !dbg !2058
  %63 = load ptr, ptr %prev135, align 8, !dbg !2058
  %64 = load ptr, ptr %header, align 8, !dbg !2058
  %link136 = getelementptr inbounds %struct.rdatasetheader, ptr %64, i32 0, i32 5, !dbg !2058
  %next137 = getelementptr inbounds %struct.anon.10, ptr %link136, i32 0, i32 1, !dbg !2058
  %65 = load ptr, ptr %next137, align 8, !dbg !2058
  %link138 = getelementptr inbounds %struct.rdatasetheader, ptr %65, i32 0, i32 5, !dbg !2058
  %prev139 = getelementptr inbounds %struct.anon.10, ptr %link138, i32 0, i32 0, !dbg !2058
  store ptr %63, ptr %prev139, align 8, !dbg !2058
  br label %if.end159, !dbg !2058

if.else140:                                       ; preds = %do.body128
  %66 = load ptr, ptr %node.addr, align 8, !dbg !2062
  %rdatasets141 = getelementptr inbounds %struct.dns_ecdbnode, ptr %66, i32 0, i32 5, !dbg !2062
  %tail142 = getelementptr inbounds %struct.anon.9, ptr %rdatasets141, i32 0, i32 1, !dbg !2062
  %67 = load ptr, ptr %tail142, align 8, !dbg !2062
  %68 = load ptr, ptr %header, align 8, !dbg !2062
  %cmp143 = icmp eq ptr %67, %68, !dbg !2062
  %lnot145 = xor i1 %cmp143, true, !dbg !2062
  %lnot147 = xor i1 %lnot145, true, !dbg !2062
  %lnot.ext148 = zext i1 %lnot147 to i32, !dbg !2062
  %conv149 = sext i32 %lnot.ext148 to i64, !dbg !2062
  %expval150 = call i64 @llvm.expect.i64(i64 %conv149, i64 1), !dbg !2062
  %tobool151 = icmp ne i64 %expval150, 0, !dbg !2062
  br i1 %tobool151, label %lor.end153, label %lor.rhs152, !dbg !2062

lor.rhs152:                                       ; preds = %if.else140
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 245, i32 noundef 2, ptr noundef @.str.26) #8, !dbg !2062
  unreachable, !dbg !2062

69:                                               ; No predecessors!
  br label %lor.end153, !dbg !2062

lor.end153:                                       ; preds = %69, %if.else140
  %70 = phi i1 [ true, %if.else140 ], [ false, %69 ]
  %lor.ext154 = zext i1 %70 to i32, !dbg !2062
  %71 = load ptr, ptr %header, align 8, !dbg !2062
  %link155 = getelementptr inbounds %struct.rdatasetheader, ptr %71, i32 0, i32 5, !dbg !2062
  %prev156 = getelementptr inbounds %struct.anon.10, ptr %link155, i32 0, i32 0, !dbg !2062
  %72 = load ptr, ptr %prev156, align 8, !dbg !2062
  %73 = load ptr, ptr %node.addr, align 8, !dbg !2062
  %rdatasets157 = getelementptr inbounds %struct.dns_ecdbnode, ptr %73, i32 0, i32 5, !dbg !2062
  %tail158 = getelementptr inbounds %struct.anon.9, ptr %rdatasets157, i32 0, i32 1, !dbg !2062
  store ptr %72, ptr %tail158, align 8, !dbg !2062
  br label %if.end159

if.end159:                                        ; preds = %lor.end153, %if.then133
  %74 = load ptr, ptr %header, align 8, !dbg !2064
  %link160 = getelementptr inbounds %struct.rdatasetheader, ptr %74, i32 0, i32 5, !dbg !2064
  %prev161 = getelementptr inbounds %struct.anon.10, ptr %link160, i32 0, i32 0, !dbg !2064
  %75 = load ptr, ptr %prev161, align 8, !dbg !2064
  %cmp162 = icmp ne ptr %75, null, !dbg !2064
  br i1 %cmp162, label %if.then164, label %if.else171, !dbg !2061

if.then164:                                       ; preds = %if.end159
  %76 = load ptr, ptr %header, align 8, !dbg !2064
  %link165 = getelementptr inbounds %struct.rdatasetheader, ptr %76, i32 0, i32 5, !dbg !2064
  %next166 = getelementptr inbounds %struct.anon.10, ptr %link165, i32 0, i32 1, !dbg !2064
  %77 = load ptr, ptr %next166, align 8, !dbg !2064
  %78 = load ptr, ptr %header, align 8, !dbg !2064
  %link167 = getelementptr inbounds %struct.rdatasetheader, ptr %78, i32 0, i32 5, !dbg !2064
  %prev168 = getelementptr inbounds %struct.anon.10, ptr %link167, i32 0, i32 0, !dbg !2064
  %79 = load ptr, ptr %prev168, align 8, !dbg !2064
  %link169 = getelementptr inbounds %struct.rdatasetheader, ptr %79, i32 0, i32 5, !dbg !2064
  %next170 = getelementptr inbounds %struct.anon.10, ptr %link169, i32 0, i32 1, !dbg !2064
  store ptr %77, ptr %next170, align 8, !dbg !2064
  br label %if.end190, !dbg !2064

if.else171:                                       ; preds = %if.end159
  %80 = load ptr, ptr %node.addr, align 8, !dbg !2066
  %rdatasets172 = getelementptr inbounds %struct.dns_ecdbnode, ptr %80, i32 0, i32 5, !dbg !2066
  %head173 = getelementptr inbounds %struct.anon.9, ptr %rdatasets172, i32 0, i32 0, !dbg !2066
  %81 = load ptr, ptr %head173, align 8, !dbg !2066
  %82 = load ptr, ptr %header, align 8, !dbg !2066
  %cmp174 = icmp eq ptr %81, %82, !dbg !2066
  %lnot176 = xor i1 %cmp174, true, !dbg !2066
  %lnot178 = xor i1 %lnot176, true, !dbg !2066
  %lnot.ext179 = zext i1 %lnot178 to i32, !dbg !2066
  %conv180 = sext i32 %lnot.ext179 to i64, !dbg !2066
  %expval181 = call i64 @llvm.expect.i64(i64 %conv180, i64 1), !dbg !2066
  %tobool182 = icmp ne i64 %expval181, 0, !dbg !2066
  br i1 %tobool182, label %lor.end184, label %lor.rhs183, !dbg !2066

lor.rhs183:                                       ; preds = %if.else171
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 245, i32 noundef 2, ptr noundef @.str.27) #8, !dbg !2066
  unreachable, !dbg !2066

83:                                               ; No predecessors!
  br label %lor.end184, !dbg !2066

lor.end184:                                       ; preds = %83, %if.else171
  %84 = phi i1 [ true, %if.else171 ], [ false, %83 ]
  %lor.ext185 = zext i1 %84 to i32, !dbg !2066
  %85 = load ptr, ptr %header, align 8, !dbg !2066
  %link186 = getelementptr inbounds %struct.rdatasetheader, ptr %85, i32 0, i32 5, !dbg !2066
  %next187 = getelementptr inbounds %struct.anon.10, ptr %link186, i32 0, i32 1, !dbg !2066
  %86 = load ptr, ptr %next187, align 8, !dbg !2066
  %87 = load ptr, ptr %node.addr, align 8, !dbg !2066
  %rdatasets188 = getelementptr inbounds %struct.dns_ecdbnode, ptr %87, i32 0, i32 5, !dbg !2066
  %head189 = getelementptr inbounds %struct.anon.9, ptr %rdatasets188, i32 0, i32 0, !dbg !2066
  store ptr %86, ptr %head189, align 8, !dbg !2066
  br label %if.end190

if.end190:                                        ; preds = %lor.end184, %if.then164
  %88 = load ptr, ptr %header, align 8, !dbg !2061
  %link191 = getelementptr inbounds %struct.rdatasetheader, ptr %88, i32 0, i32 5, !dbg !2061
  %prev192 = getelementptr inbounds %struct.anon.10, ptr %link191, i32 0, i32 0, !dbg !2061
  store ptr inttoptr (i64 -1 to ptr), ptr %prev192, align 8, !dbg !2061
  %89 = load ptr, ptr %header, align 8, !dbg !2061
  %link193 = getelementptr inbounds %struct.rdatasetheader, ptr %89, i32 0, i32 5, !dbg !2061
  %next194 = getelementptr inbounds %struct.anon.10, ptr %link193, i32 0, i32 1, !dbg !2061
  store ptr inttoptr (i64 -1 to ptr), ptr %next194, align 8, !dbg !2061
  %90 = load ptr, ptr %node.addr, align 8, !dbg !2061
  %rdatasets195 = getelementptr inbounds %struct.dns_ecdbnode, ptr %90, i32 0, i32 5, !dbg !2061
  %head196 = getelementptr inbounds %struct.anon.9, ptr %rdatasets195, i32 0, i32 0, !dbg !2061
  %91 = load ptr, ptr %head196, align 8, !dbg !2061
  %92 = load ptr, ptr %header, align 8, !dbg !2061
  %cmp197 = icmp ne ptr %91, %92, !dbg !2061
  %lnot199 = xor i1 %cmp197, true, !dbg !2061
  %lnot201 = xor i1 %lnot199, true, !dbg !2061
  %lnot.ext202 = zext i1 %lnot201 to i32, !dbg !2061
  %conv203 = sext i32 %lnot.ext202 to i64, !dbg !2061
  %expval204 = call i64 @llvm.expect.i64(i64 %conv203, i64 1), !dbg !2061
  %tobool205 = icmp ne i64 %expval204, 0, !dbg !2061
  br i1 %tobool205, label %lor.end207, label %lor.rhs206, !dbg !2061

lor.rhs206:                                       ; preds = %if.end190
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 245, i32 noundef 2, ptr noundef @.str.28) #8, !dbg !2061
  unreachable, !dbg !2061

93:                                               ; No predecessors!
  br label %lor.end207, !dbg !2061

lor.end207:                                       ; preds = %93, %if.end190
  %94 = phi i1 [ true, %if.end190 ], [ false, %93 ]
  %lor.ext208 = zext i1 %94 to i32, !dbg !2061
  %95 = load ptr, ptr %node.addr, align 8, !dbg !2061
  %rdatasets209 = getelementptr inbounds %struct.dns_ecdbnode, ptr %95, i32 0, i32 5, !dbg !2061
  %tail210 = getelementptr inbounds %struct.anon.9, ptr %rdatasets209, i32 0, i32 1, !dbg !2061
  %96 = load ptr, ptr %tail210, align 8, !dbg !2061
  %97 = load ptr, ptr %header, align 8, !dbg !2061
  %cmp211 = icmp ne ptr %96, %97, !dbg !2061
  %lnot213 = xor i1 %cmp211, true, !dbg !2061
  %lnot215 = xor i1 %lnot213, true, !dbg !2061
  %lnot.ext216 = zext i1 %lnot215 to i32, !dbg !2061
  %conv217 = sext i32 %lnot.ext216 to i64, !dbg !2061
  %expval218 = call i64 @llvm.expect.i64(i64 %conv217, i64 1), !dbg !2061
  %tobool219 = icmp ne i64 %expval218, 0, !dbg !2061
  br i1 %tobool219, label %lor.end221, label %lor.rhs220, !dbg !2061

lor.rhs220:                                       ; preds = %lor.end207
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 245, i32 noundef 2, ptr noundef @.str.29) #8, !dbg !2061
  unreachable, !dbg !2061

98:                                               ; No predecessors!
  br label %lor.end221, !dbg !2061

lor.end221:                                       ; preds = %98, %lor.end207
  %99 = phi i1 [ true, %lor.end207 ], [ false, %98 ]
  %lor.ext222 = zext i1 %99 to i32, !dbg !2061
  br label %do.cond223, !dbg !2061

do.cond223:                                       ; preds = %lor.end221
  br label %do.end224, !dbg !2061

do.end224:                                        ; preds = %do.cond223
  br label %do.cond225, !dbg !2056

do.cond225:                                       ; preds = %do.end224
  br label %do.end226, !dbg !2056

do.end226:                                        ; preds = %do.cond225
  %100 = load ptr, ptr %header, align 8, !dbg !2068
  %call227 = call i32 @dns_rdataslab_size(ptr noundef %100, i32 noundef 32), !dbg !2069
  store i32 %call227, ptr %headersize, align 4, !dbg !2070
  br label %do.body228, !dbg !2071

do.body228:                                       ; preds = %do.end226
  %101 = load ptr, ptr %mctx, align 8, !dbg !2072
  %102 = load ptr, ptr %header, align 8, !dbg !2072
  %103 = load i32, ptr %headersize, align 4, !dbg !2072
  %conv229 = zext i32 %103 to i64, !dbg !2072
  call void @isc__mem_put(ptr noundef %101, ptr noundef %102, i64 noundef %conv229, ptr noundef @.str, i32 noundef 249), !dbg !2072
  store ptr null, ptr %header, align 8, !dbg !2072
  br label %do.cond230, !dbg !2072

do.cond230:                                       ; preds = %do.body228
  br label %do.end231, !dbg !2072

do.end231:                                        ; preds = %do.cond230
  call void @llvm.lifetime.end.p0(i64 4, ptr %headersize) #9, !dbg !2074
  br label %while.cond, !dbg !2049, !llvm.loop !2075

while.end:                                        ; preds = %while.cond
  %104 = load ptr, ptr %node.addr, align 8, !dbg !2076
  %lock232 = getelementptr inbounds %struct.dns_ecdbnode, ptr %104, i32 0, i32 1, !dbg !2076
  %call233 = call i32 @pthread_mutex_destroy(ptr noundef %lock232) #9, !dbg !2076
  %cmp234 = icmp eq i32 %call233, 0, !dbg !2076
  %lnot236 = xor i1 %cmp234, true, !dbg !2076
  %lnot238 = xor i1 %lnot236, true, !dbg !2076
  %lnot.ext239 = zext i1 %lnot238 to i32, !dbg !2076
  %conv240 = sext i32 %lnot.ext239 to i64, !dbg !2076
  %expval241 = call i64 @llvm.expect.i64(i64 %conv240, i64 1), !dbg !2076
  %tobool242 = icmp ne i64 %expval241, 0, !dbg !2076
  br i1 %tobool242, label %lor.end244, label %lor.rhs243, !dbg !2076

lor.rhs243:                                       ; preds = %while.end
  call void @isc_error_runtimecheck(ptr noundef @.str, i32 noundef 252, ptr noundef @.str.15) #8, !dbg !2076
  unreachable, !dbg !2076

105:                                              ; No predecessors!
  br label %lor.end244, !dbg !2076

lor.end244:                                       ; preds = %105, %while.end
  %106 = phi i1 [ true, %while.end ], [ false, %105 ]
  %lor.ext245 = zext i1 %106 to i32, !dbg !2076
  %107 = load ptr, ptr %node.addr, align 8, !dbg !2077
  %magic = getelementptr inbounds %struct.dns_ecdbnode, ptr %107, i32 0, i32 0, !dbg !2078
  store i32 0, ptr %magic, align 8, !dbg !2079
  br label %do.body246, !dbg !2080

do.body246:                                       ; preds = %lor.end244
  %108 = load ptr, ptr %mctx, align 8, !dbg !2081
  %109 = load ptr, ptr %node.addr, align 8, !dbg !2081
  call void @isc__mem_put(ptr noundef %108, ptr noundef %109, i64 noundef 176, ptr noundef @.str, i32 noundef 255), !dbg !2081
  store ptr null, ptr %node.addr, align 8, !dbg !2081
  br label %do.cond247, !dbg !2081

do.cond247:                                       ; preds = %do.body246
  br label %do.end248, !dbg !2081

do.end248:                                        ; preds = %do.cond247
  %110 = load i8, ptr %need_destroydb, align 1, !dbg !2083, !range !1409, !noundef !1410
  %tobool249 = trunc i8 %110 to i1, !dbg !2083
  br i1 %tobool249, label %if.then250, label %if.end251, !dbg !2085

if.then250:                                       ; preds = %do.end248
  call void @destroy_ecdb(ptr noundef %ecdb), !dbg !2086
  br label %if.end251, !dbg !2086

if.end251:                                        ; preds = %if.then250, %do.end248
  call void @llvm.lifetime.end.p0(i64 8, ptr %header) #9, !dbg !2087
  call void @llvm.lifetime.end.p0(i64 1, ptr %need_destroydb) #9, !dbg !2087
  call void @llvm.lifetime.end.p0(i64 8, ptr %ecdb) #9, !dbg !2087
  call void @llvm.lifetime.end.p0(i64 8, ptr %mctx) #9, !dbg !2087
  ret void, !dbg !2087
}

; Function Attrs: null_pointer_is_valid
declare !dbg !2088 i32 @dns_rdataslab_size(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @rdatasetiter_destroy(ptr noundef %iteratorp) #0 !dbg !2092 {
entry:
  %iteratorp.addr = alloca ptr, align 8
  %mctx = alloca ptr, align 8
  %u = alloca %union.anon, align 8
  store ptr %iteratorp, ptr %iteratorp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %iteratorp.addr, metadata !2094, metadata !DIExpression()), !dbg !2101
  call void @llvm.lifetime.start.p0(i64 8, ptr %mctx) #9, !dbg !2102
  tail call void @llvm.dbg.declare(metadata ptr %mctx, metadata !2095, metadata !DIExpression()), !dbg !2103
  call void @llvm.lifetime.start.p0(i64 8, ptr %u) #9, !dbg !2104
  tail call void @llvm.dbg.declare(metadata ptr %u, metadata !2096, metadata !DIExpression()), !dbg !2105
  %0 = load ptr, ptr %iteratorp.addr, align 8, !dbg !2106
  %cmp = icmp ne ptr %0, null, !dbg !2106
  %lnot = xor i1 %cmp, true, !dbg !2106
  %lnot1 = xor i1 %lnot, true, !dbg !2106
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2106
  %conv = sext i32 %lnot.ext to i64, !dbg !2106
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2106
  %tobool = icmp ne i64 %expval, 0, !dbg !2106
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !2106

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 771, i32 noundef 0, ptr noundef @.str.31) #8, !dbg !2106
  unreachable, !dbg !2106

1:                                                ; No predecessors!
  br label %lor.end, !dbg !2106

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !2106
  %3 = load ptr, ptr %iteratorp.addr, align 8, !dbg !2107
  %4 = load ptr, ptr %3, align 8, !dbg !2107
  %cmp2 = icmp ne ptr %4, null, !dbg !2107
  %lnot4 = xor i1 %cmp2, true, !dbg !2107
  %lnot6 = xor i1 %lnot4, true, !dbg !2107
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !2107
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !2107
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 1), !dbg !2107
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !2107
  br i1 %tobool10, label %land.rhs, label %land.end, !dbg !2107

land.rhs:                                         ; preds = %lor.end
  %5 = load ptr, ptr %iteratorp.addr, align 8, !dbg !2107
  %6 = load ptr, ptr %5, align 8, !dbg !2107
  %magic = getelementptr inbounds %struct.isc__magic_t, ptr %6, i32 0, i32 0, !dbg !2107
  %7 = load i32, ptr %magic, align 4, !dbg !2107
  %cmp11 = icmp eq i32 %7, 1145983849, !dbg !2107
  %lnot13 = xor i1 %cmp11, true, !dbg !2107
  %lnot15 = xor i1 %lnot13, true, !dbg !2107
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !2107
  %conv17 = sext i32 %lnot.ext16 to i64, !dbg !2107
  %expval18 = call i64 @llvm.expect.i64(i64 %conv17, i64 1), !dbg !2107
  %tobool19 = icmp ne i64 %expval18, 0, !dbg !2107
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end
  %8 = phi i1 [ false, %lor.end ], [ %tobool19, %land.rhs ], !dbg !2108
  %lnot20 = xor i1 %8, true, !dbg !2107
  %lnot22 = xor i1 %lnot20, true, !dbg !2107
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !2107
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !2107
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 1), !dbg !2107
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !2107
  br i1 %tobool26, label %lor.end28, label %lor.rhs27, !dbg !2107

lor.rhs27:                                        ; preds = %land.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 772, i32 noundef 0, ptr noundef @.str.32) #8, !dbg !2107
  unreachable, !dbg !2107

9:                                                ; No predecessors!
  br label %lor.end28, !dbg !2107

lor.end28:                                        ; preds = %9, %land.end
  %10 = phi i1 [ true, %land.end ], [ false, %9 ]
  %lor.ext29 = zext i1 %10 to i32, !dbg !2107
  %11 = load ptr, ptr %iteratorp.addr, align 8, !dbg !2109
  %12 = load ptr, ptr %11, align 8, !dbg !2110
  store ptr %12, ptr %u, align 8, !dbg !2111
  %13 = load ptr, ptr %u, align 8, !dbg !2112
  %common = getelementptr inbounds %struct.ecdb_rdatasetiter, ptr %13, i32 0, i32 0, !dbg !2113
  %db = getelementptr inbounds %struct.dns_rdatasetiter, ptr %common, i32 0, i32 2, !dbg !2114
  %14 = load ptr, ptr %db, align 8, !dbg !2114
  %mctx30 = getelementptr inbounds %struct.dns_db, ptr %14, i32 0, i32 6, !dbg !2115
  %15 = load ptr, ptr %mctx30, align 8, !dbg !2115
  store ptr %15, ptr %mctx, align 8, !dbg !2116
  %16 = load ptr, ptr %u, align 8, !dbg !2117
  %common31 = getelementptr inbounds %struct.ecdb_rdatasetiter, ptr %16, i32 0, i32 0, !dbg !2118
  %magic32 = getelementptr inbounds %struct.dns_rdatasetiter, ptr %common31, i32 0, i32 0, !dbg !2119
  store i32 0, ptr %magic32, align 8, !dbg !2120
  %17 = load ptr, ptr %u, align 8, !dbg !2121
  %common33 = getelementptr inbounds %struct.ecdb_rdatasetiter, ptr %17, i32 0, i32 0, !dbg !2122
  %db34 = getelementptr inbounds %struct.dns_rdatasetiter, ptr %common33, i32 0, i32 2, !dbg !2123
  %18 = load ptr, ptr %db34, align 8, !dbg !2123
  %19 = load ptr, ptr %u, align 8, !dbg !2124
  %common35 = getelementptr inbounds %struct.ecdb_rdatasetiter, ptr %19, i32 0, i32 0, !dbg !2125
  %node = getelementptr inbounds %struct.dns_rdatasetiter, ptr %common35, i32 0, i32 3, !dbg !2126
  call void @dns_db_detachnode(ptr noundef %18, ptr noundef %node), !dbg !2127
  br label %do.body, !dbg !2128

do.body:                                          ; preds = %lor.end28
  %20 = load ptr, ptr %mctx, align 8, !dbg !2129
  %21 = load ptr, ptr %u, align 8, !dbg !2129
  call void @isc__mem_put(ptr noundef %20, ptr noundef %21, i64 noundef 56, ptr noundef @.str, i32 noundef 782), !dbg !2129
  store ptr null, ptr %u, align 8, !dbg !2129
  br label %do.cond, !dbg !2129

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2129

do.end:                                           ; preds = %do.cond
  %22 = load ptr, ptr %iteratorp.addr, align 8, !dbg !2131
  store ptr null, ptr %22, align 8, !dbg !2132
  call void @llvm.lifetime.end.p0(i64 8, ptr %u) #9, !dbg !2133
  call void @llvm.lifetime.end.p0(i64 8, ptr %mctx) #9, !dbg !2133
  ret void, !dbg !2133
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @rdatasetiter_first(ptr noundef %iterator) #0 !dbg !2134 {
entry:
  %retval = alloca i32, align 4
  %iterator.addr = alloca ptr, align 8
  %ecdbiterator = alloca ptr, align 8
  %ecdbnode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iterator, ptr %iterator.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %iterator.addr, metadata !2136, metadata !DIExpression()), !dbg !2139
  call void @llvm.lifetime.start.p0(i64 8, ptr %ecdbiterator) #9, !dbg !2140
  tail call void @llvm.dbg.declare(metadata ptr %ecdbiterator, metadata !2137, metadata !DIExpression()), !dbg !2141
  %0 = load ptr, ptr %iterator.addr, align 8, !dbg !2142
  store ptr %0, ptr %ecdbiterator, align 8, !dbg !2141
  call void @llvm.lifetime.start.p0(i64 8, ptr %ecdbnode) #9, !dbg !2143
  tail call void @llvm.dbg.declare(metadata ptr %ecdbnode, metadata !2138, metadata !DIExpression()), !dbg !2144
  %1 = load ptr, ptr %iterator.addr, align 8, !dbg !2145
  %node = getelementptr inbounds %struct.dns_rdatasetiter, ptr %1, i32 0, i32 3, !dbg !2146
  %2 = load ptr, ptr %node, align 8, !dbg !2146
  store ptr %2, ptr %ecdbnode, align 8, !dbg !2144
  %3 = load ptr, ptr %iterator.addr, align 8, !dbg !2147
  %cmp = icmp ne ptr %3, null, !dbg !2147
  %lnot = xor i1 %cmp, true, !dbg !2147
  %lnot1 = xor i1 %lnot, true, !dbg !2147
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2147
  %conv = sext i32 %lnot.ext to i64, !dbg !2147
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2147
  %tobool = icmp ne i64 %expval, 0, !dbg !2147
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2147

land.rhs:                                         ; preds = %entry
  %4 = load ptr, ptr %iterator.addr, align 8, !dbg !2147
  %magic = getelementptr inbounds %struct.isc__magic_t, ptr %4, i32 0, i32 0, !dbg !2147
  %5 = load i32, ptr %magic, align 4, !dbg !2147
  %cmp2 = icmp eq i32 %5, 1145983849, !dbg !2147
  %lnot4 = xor i1 %cmp2, true, !dbg !2147
  %lnot6 = xor i1 %lnot4, true, !dbg !2147
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !2147
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !2147
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 1), !dbg !2147
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !2147
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %tobool10, %land.rhs ], !dbg !2148
  %lnot11 = xor i1 %6, true, !dbg !2147
  %lnot13 = xor i1 %lnot11, true, !dbg !2147
  %lnot.ext14 = zext i1 %lnot13 to i32, !dbg !2147
  %conv15 = sext i32 %lnot.ext14 to i64, !dbg !2147
  %expval16 = call i64 @llvm.expect.i64(i64 %conv15, i64 1), !dbg !2147
  %tobool17 = icmp ne i64 %expval16, 0, !dbg !2147
  br i1 %tobool17, label %lor.end, label %lor.rhs, !dbg !2147

lor.rhs:                                          ; preds = %land.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 792, i32 noundef 0, ptr noundef @.str.33) #8, !dbg !2147
  unreachable, !dbg !2147

7:                                                ; No predecessors!
  br label %lor.end, !dbg !2147

lor.end:                                          ; preds = %7, %land.end
  %8 = phi i1 [ true, %land.end ], [ false, %7 ]
  %lor.ext = zext i1 %8 to i32, !dbg !2147
  %9 = load ptr, ptr %ecdbnode, align 8, !dbg !2149
  %rdatasets = getelementptr inbounds %struct.dns_ecdbnode, ptr %9, i32 0, i32 5, !dbg !2149
  %head = getelementptr inbounds %struct.anon.9, ptr %rdatasets, i32 0, i32 0, !dbg !2149
  %10 = load ptr, ptr %head, align 8, !dbg !2149
  %cmp18 = icmp eq ptr %10, null, !dbg !2149
  br i1 %cmp18, label %if.then, label %if.end, !dbg !2151

if.then:                                          ; preds = %lor.end
  store i32 29, ptr %retval, align 4, !dbg !2152
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2152

if.end:                                           ; preds = %lor.end
  %11 = load ptr, ptr %ecdbnode, align 8, !dbg !2153
  %rdatasets20 = getelementptr inbounds %struct.dns_ecdbnode, ptr %11, i32 0, i32 5, !dbg !2153
  %head21 = getelementptr inbounds %struct.anon.9, ptr %rdatasets20, i32 0, i32 0, !dbg !2153
  %12 = load ptr, ptr %head21, align 8, !dbg !2153
  %13 = load ptr, ptr %ecdbiterator, align 8, !dbg !2154
  %current = getelementptr inbounds %struct.ecdb_rdatasetiter, ptr %13, i32 0, i32 1, !dbg !2155
  store ptr %12, ptr %current, align 8, !dbg !2156
  store i32 0, ptr %retval, align 4, !dbg !2157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2157

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ecdbnode) #9, !dbg !2158
  call void @llvm.lifetime.end.p0(i64 8, ptr %ecdbiterator) #9, !dbg !2158
  %14 = load i32, ptr %retval, align 4, !dbg !2158
  ret i32 %14, !dbg !2158
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @rdatasetiter_next(ptr noundef %iterator) #0 !dbg !2159 {
entry:
  %retval = alloca i32, align 4
  %iterator.addr = alloca ptr, align 8
  %ecdbiterator = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iterator, ptr %iterator.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %iterator.addr, metadata !2161, metadata !DIExpression()), !dbg !2163
  call void @llvm.lifetime.start.p0(i64 8, ptr %ecdbiterator) #9, !dbg !2164
  tail call void @llvm.dbg.declare(metadata ptr %ecdbiterator, metadata !2162, metadata !DIExpression()), !dbg !2165
  %0 = load ptr, ptr %iterator.addr, align 8, !dbg !2166
  store ptr %0, ptr %ecdbiterator, align 8, !dbg !2165
  %1 = load ptr, ptr %iterator.addr, align 8, !dbg !2167
  %cmp = icmp ne ptr %1, null, !dbg !2167
  %lnot = xor i1 %cmp, true, !dbg !2167
  %lnot1 = xor i1 %lnot, true, !dbg !2167
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2167
  %conv = sext i32 %lnot.ext to i64, !dbg !2167
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2167
  %tobool = icmp ne i64 %expval, 0, !dbg !2167
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2167

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %iterator.addr, align 8, !dbg !2167
  %magic = getelementptr inbounds %struct.isc__magic_t, ptr %2, i32 0, i32 0, !dbg !2167
  %3 = load i32, ptr %magic, align 4, !dbg !2167
  %cmp2 = icmp eq i32 %3, 1145983849, !dbg !2167
  %lnot4 = xor i1 %cmp2, true, !dbg !2167
  %lnot6 = xor i1 %lnot4, true, !dbg !2167
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !2167
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !2167
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 1), !dbg !2167
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !2167
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool10, %land.rhs ], !dbg !2168
  %lnot11 = xor i1 %4, true, !dbg !2167
  %lnot13 = xor i1 %lnot11, true, !dbg !2167
  %lnot.ext14 = zext i1 %lnot13 to i32, !dbg !2167
  %conv15 = sext i32 %lnot.ext14 to i64, !dbg !2167
  %expval16 = call i64 @llvm.expect.i64(i64 %conv15, i64 1), !dbg !2167
  %tobool17 = icmp ne i64 %expval16, 0, !dbg !2167
  br i1 %tobool17, label %lor.end, label %lor.rhs, !dbg !2167

lor.rhs:                                          ; preds = %land.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 804, i32 noundef 0, ptr noundef @.str.33) #8, !dbg !2167
  unreachable, !dbg !2167

5:                                                ; No predecessors!
  br label %lor.end, !dbg !2167

lor.end:                                          ; preds = %5, %land.end
  %6 = phi i1 [ true, %land.end ], [ false, %5 ]
  %lor.ext = zext i1 %6 to i32, !dbg !2167
  %7 = load ptr, ptr %ecdbiterator, align 8, !dbg !2169
  %current = getelementptr inbounds %struct.ecdb_rdatasetiter, ptr %7, i32 0, i32 1, !dbg !2169
  %8 = load ptr, ptr %current, align 8, !dbg !2169
  %link = getelementptr inbounds %struct.rdatasetheader, ptr %8, i32 0, i32 5, !dbg !2169
  %next = getelementptr inbounds %struct.anon.10, ptr %link, i32 0, i32 1, !dbg !2169
  %9 = load ptr, ptr %next, align 8, !dbg !2169
  %10 = load ptr, ptr %ecdbiterator, align 8, !dbg !2170
  %current18 = getelementptr inbounds %struct.ecdb_rdatasetiter, ptr %10, i32 0, i32 1, !dbg !2171
  store ptr %9, ptr %current18, align 8, !dbg !2172
  %11 = load ptr, ptr %ecdbiterator, align 8, !dbg !2173
  %current19 = getelementptr inbounds %struct.ecdb_rdatasetiter, ptr %11, i32 0, i32 1, !dbg !2175
  %12 = load ptr, ptr %current19, align 8, !dbg !2175
  %cmp20 = icmp eq ptr %12, null, !dbg !2176
  br i1 %cmp20, label %if.then, label %if.else, !dbg !2177

if.then:                                          ; preds = %lor.end
  store i32 29, ptr %retval, align 4, !dbg !2178
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2178

if.else:                                          ; preds = %lor.end
  store i32 0, ptr %retval, align 4, !dbg !2179
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2179

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ecdbiterator) #9, !dbg !2180
  %13 = load i32, ptr %retval, align 4, !dbg !2180
  ret i32 %13, !dbg !2180
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @rdatasetiter_current(ptr noundef %iterator, ptr noundef %rdataset) #0 !dbg !2181 {
entry:
  %iterator.addr = alloca ptr, align 8
  %rdataset.addr = alloca ptr, align 8
  %ecdbiterator = alloca ptr, align 8
  %ecdb = alloca ptr, align 8
  store ptr %iterator, ptr %iterator.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %iterator.addr, metadata !2183, metadata !DIExpression()), !dbg !2187
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !2184, metadata !DIExpression()), !dbg !2188
  call void @llvm.lifetime.start.p0(i64 8, ptr %ecdbiterator) #9, !dbg !2189
  tail call void @llvm.dbg.declare(metadata ptr %ecdbiterator, metadata !2185, metadata !DIExpression()), !dbg !2190
  %0 = load ptr, ptr %iterator.addr, align 8, !dbg !2191
  store ptr %0, ptr %ecdbiterator, align 8, !dbg !2190
  call void @llvm.lifetime.start.p0(i64 8, ptr %ecdb) #9, !dbg !2192
  tail call void @llvm.dbg.declare(metadata ptr %ecdb, metadata !2186, metadata !DIExpression()), !dbg !2193
  %1 = load ptr, ptr %iterator.addr, align 8, !dbg !2194
  %db = getelementptr inbounds %struct.dns_rdatasetiter, ptr %1, i32 0, i32 2, !dbg !2195
  %2 = load ptr, ptr %db, align 8, !dbg !2195
  store ptr %2, ptr %ecdb, align 8, !dbg !2196
  %3 = load ptr, ptr %ecdb, align 8, !dbg !2197
  %cmp = icmp ne ptr %3, null, !dbg !2197
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2197

land.rhs:                                         ; preds = %entry
  %4 = load ptr, ptr %ecdb, align 8, !dbg !2197
  %common = getelementptr inbounds %struct.dns_ecdb, ptr %4, i32 0, i32 0, !dbg !2197
  %impmagic = getelementptr inbounds %struct.dns_db, ptr %common, i32 0, i32 1, !dbg !2197
  %5 = load i32, ptr %impmagic, align 4, !dbg !2197
  %cmp1 = icmp eq i32 %5, 1162036290, !dbg !2197
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !2198
  %lnot = xor i1 %6, true, !dbg !2197
  %lnot2 = xor i1 %lnot, true, !dbg !2197
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2197
  %conv = sext i32 %lnot.ext to i64, !dbg !2197
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2197
  %tobool = icmp ne i64 %expval, 0, !dbg !2197
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !2197

lor.rhs:                                          ; preds = %land.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 819, i32 noundef 0, ptr noundef @.str.8) #8, !dbg !2197
  unreachable, !dbg !2197

7:                                                ; No predecessors!
  br label %lor.end, !dbg !2197

lor.end:                                          ; preds = %7, %land.end
  %8 = phi i1 [ true, %land.end ], [ false, %7 ]
  %lor.ext = zext i1 %8 to i32, !dbg !2197
  %9 = load ptr, ptr %ecdb, align 8, !dbg !2199
  %10 = load ptr, ptr %iterator.addr, align 8, !dbg !2200
  %node = getelementptr inbounds %struct.dns_rdatasetiter, ptr %10, i32 0, i32 3, !dbg !2201
  %11 = load ptr, ptr %node, align 8, !dbg !2201
  %12 = load ptr, ptr %ecdbiterator, align 8, !dbg !2202
  %current = getelementptr inbounds %struct.ecdb_rdatasetiter, ptr %12, i32 0, i32 1, !dbg !2203
  %13 = load ptr, ptr %current, align 8, !dbg !2203
  %14 = load ptr, ptr %rdataset.addr, align 8, !dbg !2204
  call void @bind_rdataset(ptr noundef %9, ptr noundef %11, ptr noundef %13, ptr noundef %14), !dbg !2205
  call void @llvm.lifetime.end.p0(i64 8, ptr %ecdb) #9, !dbg !2206
  call void @llvm.lifetime.end.p0(i64 8, ptr %ecdbiterator) #9, !dbg !2206
  ret void, !dbg !2206
}

; Function Attrs: null_pointer_is_valid
declare !dbg !2207 void @dns_db_detachnode(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @bind_rdataset(ptr noundef %ecdb, ptr noundef %node, ptr noundef %header, ptr noundef %rdataset) #0 !dbg !2208 {
entry:
  %ecdb.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %header.addr = alloca ptr, align 8
  %rdataset.addr = alloca ptr, align 8
  %raw = alloca ptr, align 8
  store ptr %ecdb, ptr %ecdb.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ecdb.addr, metadata !2212, metadata !DIExpression()), !dbg !2217
  store ptr %node, ptr %node.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2213, metadata !DIExpression()), !dbg !2218
  store ptr %header, ptr %header.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !2214, metadata !DIExpression()), !dbg !2219
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !2215, metadata !DIExpression()), !dbg !2220
  call void @llvm.lifetime.start.p0(i64 8, ptr %raw) #9, !dbg !2221
  tail call void @llvm.dbg.declare(metadata ptr %raw, metadata !2216, metadata !DIExpression()), !dbg !2222
  %0 = load ptr, ptr %rdataset.addr, align 8, !dbg !2223
  %call = call zeroext i1 @dns_rdataset_isassociated(ptr noundef %0), !dbg !2223
  %lnot = xor i1 %call, true, !dbg !2223
  %lnot1 = xor i1 %lnot, true, !dbg !2223
  %lnot2 = xor i1 %lnot1, true, !dbg !2223
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2223
  %conv = sext i32 %lnot.ext to i64, !dbg !2223
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2223
  %tobool = icmp ne i64 %expval, 0, !dbg !2223
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !2223

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 393, i32 noundef 0, ptr noundef @.str.34) #8, !dbg !2223
  unreachable, !dbg !2223

1:                                                ; No predecessors!
  br label %lor.end, !dbg !2223

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !2223
  %3 = load ptr, ptr %rdataset.addr, align 8, !dbg !2224
  %methods = getelementptr inbounds %struct.dns_rdataset, ptr %3, i32 0, i32 1, !dbg !2225
  store ptr @rdataset_methods, ptr %methods, align 8, !dbg !2226
  %4 = load ptr, ptr %ecdb.addr, align 8, !dbg !2227
  %common = getelementptr inbounds %struct.dns_ecdb, ptr %4, i32 0, i32 0, !dbg !2228
  %rdclass = getelementptr inbounds %struct.dns_db, ptr %common, i32 0, i32 4, !dbg !2229
  %5 = load i16, ptr %rdclass, align 2, !dbg !2229
  %6 = load ptr, ptr %rdataset.addr, align 8, !dbg !2230
  %rdclass3 = getelementptr inbounds %struct.dns_rdataset, ptr %6, i32 0, i32 3, !dbg !2231
  store i16 %5, ptr %rdclass3, align 8, !dbg !2232
  %7 = load ptr, ptr %header.addr, align 8, !dbg !2233
  %type = getelementptr inbounds %struct.rdatasetheader, ptr %7, i32 0, i32 0, !dbg !2234
  %8 = load i16, ptr %type, align 8, !dbg !2234
  %9 = load ptr, ptr %rdataset.addr, align 8, !dbg !2235
  %type4 = getelementptr inbounds %struct.dns_rdataset, ptr %9, i32 0, i32 4, !dbg !2236
  store i16 %8, ptr %type4, align 2, !dbg !2237
  %10 = load ptr, ptr %header.addr, align 8, !dbg !2238
  %covers = getelementptr inbounds %struct.rdatasetheader, ptr %10, i32 0, i32 3, !dbg !2239
  %11 = load i16, ptr %covers, align 2, !dbg !2239
  %12 = load ptr, ptr %rdataset.addr, align 8, !dbg !2240
  %covers5 = getelementptr inbounds %struct.dns_rdataset, ptr %12, i32 0, i32 8, !dbg !2241
  store i16 %11, ptr %covers5, align 2, !dbg !2242
  %13 = load ptr, ptr %header.addr, align 8, !dbg !2243
  %ttl = getelementptr inbounds %struct.rdatasetheader, ptr %13, i32 0, i32 1, !dbg !2244
  %14 = load i32, ptr %ttl, align 4, !dbg !2244
  %15 = load ptr, ptr %rdataset.addr, align 8, !dbg !2245
  %ttl6 = getelementptr inbounds %struct.dns_rdataset, ptr %15, i32 0, i32 5, !dbg !2246
  store i32 %14, ptr %ttl6, align 4, !dbg !2247
  %16 = load ptr, ptr %header.addr, align 8, !dbg !2248
  %trust = getelementptr inbounds %struct.rdatasetheader, ptr %16, i32 0, i32 2, !dbg !2249
  %17 = load i16, ptr %trust, align 8, !dbg !2249
  %18 = load ptr, ptr %rdataset.addr, align 8, !dbg !2250
  %trust7 = getelementptr inbounds %struct.dns_rdataset, ptr %18, i32 0, i32 7, !dbg !2251
  store i16 %17, ptr %trust7, align 4, !dbg !2252
  %19 = load ptr, ptr %header.addr, align 8, !dbg !2253
  %attributes = getelementptr inbounds %struct.rdatasetheader, ptr %19, i32 0, i32 4, !dbg !2253
  %20 = load i32, ptr %attributes, align 4, !dbg !2253
  %and = and i32 %20, 16, !dbg !2253
  %cmp = icmp ne i32 %and, 0, !dbg !2253
  br i1 %cmp, label %if.then, label %if.end, !dbg !2255

if.then:                                          ; preds = %lor.end
  %21 = load ptr, ptr %rdataset.addr, align 8, !dbg !2256
  %attributes9 = getelementptr inbounds %struct.dns_rdataset, ptr %21, i32 0, i32 9, !dbg !2257
  %22 = load i32, ptr %attributes9, align 8, !dbg !2258
  %or = or i32 %22, 8192, !dbg !2258
  store i32 %or, ptr %attributes9, align 8, !dbg !2258
  br label %if.end, !dbg !2256

if.end:                                           ; preds = %if.then, %lor.end
  %23 = load ptr, ptr %header.addr, align 8, !dbg !2259
  %attributes10 = getelementptr inbounds %struct.rdatasetheader, ptr %23, i32 0, i32 4, !dbg !2259
  %24 = load i32, ptr %attributes10, align 4, !dbg !2259
  %and11 = and i32 %24, 256, !dbg !2259
  %cmp12 = icmp ne i32 %and11, 0, !dbg !2259
  br i1 %cmp12, label %if.then14, label %if.end17, !dbg !2261

if.then14:                                        ; preds = %if.end
  %25 = load ptr, ptr %rdataset.addr, align 8, !dbg !2262
  %attributes15 = getelementptr inbounds %struct.dns_rdataset, ptr %25, i32 0, i32 9, !dbg !2263
  %26 = load i32, ptr %attributes15, align 8, !dbg !2264
  %or16 = or i32 %26, 2097152, !dbg !2264
  store i32 %or16, ptr %attributes15, align 8, !dbg !2264
  br label %if.end17, !dbg !2262

if.end17:                                         ; preds = %if.then14, %if.end
  %27 = load ptr, ptr %ecdb.addr, align 8, !dbg !2265
  %28 = load ptr, ptr %rdataset.addr, align 8, !dbg !2266
  %private1 = getelementptr inbounds %struct.dns_rdataset, ptr %28, i32 0, i32 12, !dbg !2267
  store ptr %27, ptr %private1, align 8, !dbg !2268
  %29 = load ptr, ptr %node.addr, align 8, !dbg !2269
  %30 = load ptr, ptr %rdataset.addr, align 8, !dbg !2270
  %private2 = getelementptr inbounds %struct.dns_rdataset, ptr %30, i32 0, i32 13, !dbg !2271
  store ptr %29, ptr %private2, align 8, !dbg !2272
  %31 = load ptr, ptr %header.addr, align 8, !dbg !2273
  %add.ptr = getelementptr inbounds i8, ptr %31, i64 32, !dbg !2274
  store ptr %add.ptr, ptr %raw, align 8, !dbg !2275
  %32 = load ptr, ptr %raw, align 8, !dbg !2276
  %33 = load ptr, ptr %rdataset.addr, align 8, !dbg !2277
  %private3 = getelementptr inbounds %struct.dns_rdataset, ptr %33, i32 0, i32 14, !dbg !2278
  store ptr %32, ptr %private3, align 8, !dbg !2279
  %34 = load ptr, ptr %rdataset.addr, align 8, !dbg !2280
  %count = getelementptr inbounds %struct.dns_rdataset, ptr %34, i32 0, i32 10, !dbg !2281
  store i32 0, ptr %count, align 4, !dbg !2282
  %35 = load ptr, ptr %rdataset.addr, align 8, !dbg !2283
  %privateuint4 = getelementptr inbounds %struct.dns_rdataset, ptr %35, i32 0, i32 15, !dbg !2284
  store i32 0, ptr %privateuint4, align 8, !dbg !2285
  %36 = load ptr, ptr %rdataset.addr, align 8, !dbg !2286
  %private5 = getelementptr inbounds %struct.dns_rdataset, ptr %36, i32 0, i32 16, !dbg !2287
  store ptr null, ptr %private5, align 8, !dbg !2288
  %37 = load ptr, ptr %node.addr, align 8, !dbg !2289
  %references = getelementptr inbounds %struct.dns_ecdbnode, ptr %37, i32 0, i32 6, !dbg !2289
  %38 = load i32, ptr %references, align 8, !dbg !2289
  %cmp18 = icmp ugt i32 %38, 0, !dbg !2289
  %lnot20 = xor i1 %cmp18, true, !dbg !2289
  %lnot22 = xor i1 %lnot20, true, !dbg !2289
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !2289
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !2289
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 1), !dbg !2289
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !2289
  br i1 %tobool26, label %lor.end28, label %lor.rhs27, !dbg !2289

lor.rhs27:                                        ; preds = %if.end17
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 418, i32 noundef 2, ptr noundef @.str.18) #8, !dbg !2289
  unreachable, !dbg !2289

39:                                               ; No predecessors!
  br label %lor.end28, !dbg !2289

lor.end28:                                        ; preds = %39, %if.end17
  %40 = phi i1 [ true, %if.end17 ], [ false, %39 ]
  %lor.ext29 = zext i1 %40 to i32, !dbg !2289
  %41 = load ptr, ptr %node.addr, align 8, !dbg !2290
  %references30 = getelementptr inbounds %struct.dns_ecdbnode, ptr %41, i32 0, i32 6, !dbg !2291
  %42 = load i32, ptr %references30, align 8, !dbg !2292
  %inc = add i32 %42, 1, !dbg !2292
  store i32 %inc, ptr %references30, align 8, !dbg !2292
  call void @llvm.lifetime.end.p0(i64 8, ptr %raw) #9, !dbg !2293
  ret void, !dbg !2293
}

; Function Attrs: null_pointer_is_valid
declare !dbg !2294 zeroext i1 @dns_rdataset_isassociated(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @rdataset_disassociate(ptr noundef %rdataset) #0 !dbg !2297 {
entry:
  %rdataset.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %node = alloca ptr, align 8
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !2299, metadata !DIExpression()), !dbg !2302
  call void @llvm.lifetime.start.p0(i64 8, ptr %db) #9, !dbg !2303
  tail call void @llvm.dbg.declare(metadata ptr %db, metadata !2300, metadata !DIExpression()), !dbg !2304
  %0 = load ptr, ptr %rdataset.addr, align 8, !dbg !2305
  %private1 = getelementptr inbounds %struct.dns_rdataset, ptr %0, i32 0, i32 12, !dbg !2306
  %1 = load ptr, ptr %private1, align 8, !dbg !2306
  store ptr %1, ptr %db, align 8, !dbg !2304
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #9, !dbg !2307
  tail call void @llvm.dbg.declare(metadata ptr %node, metadata !2301, metadata !DIExpression()), !dbg !2308
  %2 = load ptr, ptr %rdataset.addr, align 8, !dbg !2309
  %private2 = getelementptr inbounds %struct.dns_rdataset, ptr %2, i32 0, i32 13, !dbg !2310
  %3 = load ptr, ptr %private2, align 8, !dbg !2310
  store ptr %3, ptr %node, align 8, !dbg !2308
  %4 = load ptr, ptr %db, align 8, !dbg !2311
  call void @dns_db_detachnode(ptr noundef %4, ptr noundef %node), !dbg !2312
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #9, !dbg !2313
  call void @llvm.lifetime.end.p0(i64 8, ptr %db) #9, !dbg !2313
  ret void, !dbg !2313
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @rdataset_first(ptr noundef %rdataset) #0 !dbg !2314 {
entry:
  %retval = alloca i32, align 4
  %rdataset.addr = alloca ptr, align 8
  %raw = alloca ptr, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !2316, metadata !DIExpression()), !dbg !2319
  call void @llvm.lifetime.start.p0(i64 8, ptr %raw) #9, !dbg !2320
  tail call void @llvm.dbg.declare(metadata ptr %raw, metadata !2317, metadata !DIExpression()), !dbg !2321
  %0 = load ptr, ptr %rdataset.addr, align 8, !dbg !2322
  %private3 = getelementptr inbounds %struct.dns_rdataset, ptr %0, i32 0, i32 14, !dbg !2323
  %1 = load ptr, ptr %private3, align 8, !dbg !2323
  store ptr %1, ptr %raw, align 8, !dbg !2321
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #9, !dbg !2324
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !2318, metadata !DIExpression()), !dbg !2325
  %2 = load ptr, ptr %raw, align 8, !dbg !2326
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0, !dbg !2326
  %3 = load i8, ptr %arrayidx, align 1, !dbg !2326
  %conv = zext i8 %3 to i32, !dbg !2326
  %mul = mul nsw i32 %conv, 256, !dbg !2327
  %4 = load ptr, ptr %raw, align 8, !dbg !2328
  %arrayidx1 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !2328
  %5 = load i8, ptr %arrayidx1, align 1, !dbg !2328
  %conv2 = zext i8 %5 to i32, !dbg !2328
  %add = add nsw i32 %mul, %conv2, !dbg !2329
  store i32 %add, ptr %count, align 4, !dbg !2330
  %6 = load i32, ptr %count, align 4, !dbg !2331
  %cmp = icmp eq i32 %6, 0, !dbg !2333
  br i1 %cmp, label %if.then, label %if.end, !dbg !2334

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %rdataset.addr, align 8, !dbg !2335
  %private5 = getelementptr inbounds %struct.dns_rdataset, ptr %7, i32 0, i32 16, !dbg !2337
  store ptr null, ptr %private5, align 8, !dbg !2338
  store i32 29, ptr %retval, align 4, !dbg !2339
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2339

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %raw, align 8, !dbg !2340
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 2, !dbg !2340
  store ptr %add.ptr, ptr %raw, align 8, !dbg !2340
  %9 = load i32, ptr %count, align 4, !dbg !2341
  %dec = add i32 %9, -1, !dbg !2341
  store i32 %dec, ptr %count, align 4, !dbg !2341
  %10 = load i32, ptr %count, align 4, !dbg !2342
  %11 = load ptr, ptr %rdataset.addr, align 8, !dbg !2343
  %privateuint4 = getelementptr inbounds %struct.dns_rdataset, ptr %11, i32 0, i32 15, !dbg !2344
  store i32 %10, ptr %privateuint4, align 8, !dbg !2345
  %12 = load ptr, ptr %raw, align 8, !dbg !2346
  %13 = load ptr, ptr %rdataset.addr, align 8, !dbg !2347
  %private54 = getelementptr inbounds %struct.dns_rdataset, ptr %13, i32 0, i32 16, !dbg !2348
  store ptr %12, ptr %private54, align 8, !dbg !2349
  store i32 0, ptr %retval, align 4, !dbg !2350
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2350

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #9, !dbg !2351
  call void @llvm.lifetime.end.p0(i64 8, ptr %raw) #9, !dbg !2351
  %14 = load i32, ptr %retval, align 4, !dbg !2351
  ret i32 %14, !dbg !2351
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @rdataset_next(ptr noundef %rdataset) #0 !dbg !2352 {
entry:
  %retval = alloca i32, align 4
  %rdataset.addr = alloca ptr, align 8
  %count = alloca i32, align 4
  %length = alloca i32, align 4
  %raw = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !2354, metadata !DIExpression()), !dbg !2358
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #9, !dbg !2359
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !2355, metadata !DIExpression()), !dbg !2360
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #9, !dbg !2361
  tail call void @llvm.dbg.declare(metadata ptr %length, metadata !2356, metadata !DIExpression()), !dbg !2362
  call void @llvm.lifetime.start.p0(i64 8, ptr %raw) #9, !dbg !2363
  tail call void @llvm.dbg.declare(metadata ptr %raw, metadata !2357, metadata !DIExpression()), !dbg !2364
  %0 = load ptr, ptr %rdataset.addr, align 8, !dbg !2365
  %privateuint4 = getelementptr inbounds %struct.dns_rdataset, ptr %0, i32 0, i32 15, !dbg !2366
  %1 = load i32, ptr %privateuint4, align 8, !dbg !2366
  store i32 %1, ptr %count, align 4, !dbg !2367
  %2 = load i32, ptr %count, align 4, !dbg !2368
  %cmp = icmp eq i32 %2, 0, !dbg !2370
  br i1 %cmp, label %if.then, label %if.end, !dbg !2371

if.then:                                          ; preds = %entry
  store i32 29, ptr %retval, align 4, !dbg !2372
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2372

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %count, align 4, !dbg !2373
  %dec = add i32 %3, -1, !dbg !2373
  store i32 %dec, ptr %count, align 4, !dbg !2373
  %4 = load i32, ptr %count, align 4, !dbg !2374
  %5 = load ptr, ptr %rdataset.addr, align 8, !dbg !2375
  %privateuint41 = getelementptr inbounds %struct.dns_rdataset, ptr %5, i32 0, i32 15, !dbg !2376
  store i32 %4, ptr %privateuint41, align 8, !dbg !2377
  %6 = load ptr, ptr %rdataset.addr, align 8, !dbg !2378
  %private5 = getelementptr inbounds %struct.dns_rdataset, ptr %6, i32 0, i32 16, !dbg !2379
  %7 = load ptr, ptr %private5, align 8, !dbg !2379
  store ptr %7, ptr %raw, align 8, !dbg !2380
  %8 = load ptr, ptr %raw, align 8, !dbg !2381
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 0, !dbg !2381
  %9 = load i8, ptr %arrayidx, align 1, !dbg !2381
  %conv = zext i8 %9 to i32, !dbg !2381
  %mul = mul nsw i32 %conv, 256, !dbg !2382
  %10 = load ptr, ptr %raw, align 8, !dbg !2383
  %arrayidx2 = getelementptr inbounds i8, ptr %10, i64 1, !dbg !2383
  %11 = load i8, ptr %arrayidx2, align 1, !dbg !2383
  %conv3 = zext i8 %11 to i32, !dbg !2383
  %add = add nsw i32 %mul, %conv3, !dbg !2384
  store i32 %add, ptr %length, align 4, !dbg !2385
  %12 = load i32, ptr %length, align 4, !dbg !2386
  %add4 = add i32 %12, 2, !dbg !2387
  %13 = load ptr, ptr %raw, align 8, !dbg !2388
  %idx.ext = zext i32 %add4 to i64, !dbg !2388
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %idx.ext, !dbg !2388
  store ptr %add.ptr, ptr %raw, align 8, !dbg !2388
  %14 = load ptr, ptr %raw, align 8, !dbg !2389
  %15 = load ptr, ptr %rdataset.addr, align 8, !dbg !2390
  %private55 = getelementptr inbounds %struct.dns_rdataset, ptr %15, i32 0, i32 16, !dbg !2391
  store ptr %14, ptr %private55, align 8, !dbg !2392
  store i32 0, ptr %retval, align 4, !dbg !2393
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2393

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %raw) #9, !dbg !2394
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #9, !dbg !2394
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #9, !dbg !2394
  %16 = load i32, ptr %retval, align 4, !dbg !2394
  ret i32 %16, !dbg !2394
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @rdataset_current(ptr noundef %rdataset, ptr noundef %rdata) #0 !dbg !2395 {
entry:
  %rdataset.addr = alloca ptr, align 8
  %rdata.addr = alloca ptr, align 8
  %raw = alloca ptr, align 8
  %r = alloca %struct.isc_region, align 8
  %length = alloca i32, align 4
  %flags = alloca i32, align 4
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !2397, metadata !DIExpression()), !dbg !2403
  store ptr %rdata, ptr %rdata.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdata.addr, metadata !2398, metadata !DIExpression()), !dbg !2404
  call void @llvm.lifetime.start.p0(i64 8, ptr %raw) #9, !dbg !2405
  tail call void @llvm.dbg.declare(metadata ptr %raw, metadata !2399, metadata !DIExpression()), !dbg !2406
  %0 = load ptr, ptr %rdataset.addr, align 8, !dbg !2407
  %private5 = getelementptr inbounds %struct.dns_rdataset, ptr %0, i32 0, i32 16, !dbg !2408
  %1 = load ptr, ptr %private5, align 8, !dbg !2408
  store ptr %1, ptr %raw, align 8, !dbg !2406
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #9, !dbg !2409
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !2400, metadata !DIExpression()), !dbg !2410
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #9, !dbg !2411
  tail call void @llvm.dbg.declare(metadata ptr %length, metadata !2401, metadata !DIExpression()), !dbg !2412
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #9, !dbg !2413
  tail call void @llvm.dbg.declare(metadata ptr %flags, metadata !2402, metadata !DIExpression()), !dbg !2414
  store i32 0, ptr %flags, align 4, !dbg !2414
  %2 = load ptr, ptr %raw, align 8, !dbg !2415
  %cmp = icmp ne ptr %2, null, !dbg !2415
  %lnot = xor i1 %cmp, true, !dbg !2415
  %lnot1 = xor i1 %lnot, true, !dbg !2415
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2415
  %conv = sext i32 %lnot.ext to i64, !dbg !2415
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2415
  %tobool = icmp ne i64 %expval, 0, !dbg !2415
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !2415

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 705, i32 noundef 0, ptr noundef @.str.35) #8, !dbg !2415
  unreachable, !dbg !2415

3:                                                ; No predecessors!
  br label %lor.end, !dbg !2415

lor.end:                                          ; preds = %3, %entry
  %4 = phi i1 [ true, %entry ], [ false, %3 ]
  %lor.ext = zext i1 %4 to i32, !dbg !2415
  %5 = load ptr, ptr %raw, align 8, !dbg !2416
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 0, !dbg !2416
  %6 = load i8, ptr %arrayidx, align 1, !dbg !2416
  %conv2 = zext i8 %6 to i32, !dbg !2416
  %mul = mul nsw i32 %conv2, 256, !dbg !2417
  %7 = load ptr, ptr %raw, align 8, !dbg !2418
  %arrayidx3 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !2418
  %8 = load i8, ptr %arrayidx3, align 1, !dbg !2418
  %conv4 = zext i8 %8 to i32, !dbg !2418
  %add = add nsw i32 %mul, %conv4, !dbg !2419
  store i32 %add, ptr %length, align 4, !dbg !2420
  %9 = load ptr, ptr %raw, align 8, !dbg !2421
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 2, !dbg !2421
  store ptr %add.ptr, ptr %raw, align 8, !dbg !2421
  %10 = load ptr, ptr %rdataset.addr, align 8, !dbg !2422
  %type = getelementptr inbounds %struct.dns_rdataset, ptr %10, i32 0, i32 4, !dbg !2424
  %11 = load i16, ptr %type, align 2, !dbg !2424
  %conv5 = zext i16 %11 to i32, !dbg !2422
  %cmp6 = icmp eq i32 %conv5, 46, !dbg !2425
  br i1 %cmp6, label %if.then, label %if.end12, !dbg !2426

if.then:                                          ; preds = %lor.end
  %12 = load ptr, ptr %raw, align 8, !dbg !2427
  %13 = load i8, ptr %12, align 1, !dbg !2430
  %conv8 = zext i8 %13 to i32, !dbg !2430
  %and = and i32 %conv8, 1, !dbg !2431
  %cmp9 = icmp ne i32 %and, 0, !dbg !2432
  br i1 %cmp9, label %if.then11, label %if.end, !dbg !2433

if.then11:                                        ; preds = %if.then
  %14 = load i32, ptr %flags, align 4, !dbg !2434
  %or = or i32 %14, 2, !dbg !2434
  store i32 %or, ptr %flags, align 4, !dbg !2434
  br label %if.end, !dbg !2435

if.end:                                           ; preds = %if.then11, %if.then
  %15 = load i32, ptr %length, align 4, !dbg !2436
  %dec = add i32 %15, -1, !dbg !2436
  store i32 %dec, ptr %length, align 4, !dbg !2436
  %16 = load ptr, ptr %raw, align 8, !dbg !2437
  %incdec.ptr = getelementptr inbounds i8, ptr %16, i32 1, !dbg !2437
  store ptr %incdec.ptr, ptr %raw, align 8, !dbg !2437
  br label %if.end12, !dbg !2438

if.end12:                                         ; preds = %if.end, %lor.end
  %17 = load i32, ptr %length, align 4, !dbg !2439
  %length13 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 1, !dbg !2440
  store i32 %17, ptr %length13, align 8, !dbg !2441
  %18 = load ptr, ptr %raw, align 8, !dbg !2442
  %base = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 0, !dbg !2443
  store ptr %18, ptr %base, align 8, !dbg !2444
  %19 = load ptr, ptr %rdata.addr, align 8, !dbg !2445
  %20 = load ptr, ptr %rdataset.addr, align 8, !dbg !2446
  %rdclass = getelementptr inbounds %struct.dns_rdataset, ptr %20, i32 0, i32 3, !dbg !2447
  %21 = load i16, ptr %rdclass, align 8, !dbg !2447
  %22 = load ptr, ptr %rdataset.addr, align 8, !dbg !2448
  %type14 = getelementptr inbounds %struct.dns_rdataset, ptr %22, i32 0, i32 4, !dbg !2449
  %23 = load i16, ptr %type14, align 2, !dbg !2449
  call void @dns_rdata_fromregion(ptr noundef %19, i16 noundef zeroext %21, i16 noundef zeroext %23, ptr noundef %r), !dbg !2450
  %24 = load i32, ptr %flags, align 4, !dbg !2451
  %25 = load ptr, ptr %rdata.addr, align 8, !dbg !2452
  %flags15 = getelementptr inbounds %struct.dns_rdata, ptr %25, i32 0, i32 4, !dbg !2453
  %26 = load i32, ptr %flags15, align 8, !dbg !2454
  %or16 = or i32 %26, %24, !dbg !2454
  store i32 %or16, ptr %flags15, align 8, !dbg !2454
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #9, !dbg !2455
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #9, !dbg !2455
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #9, !dbg !2455
  call void @llvm.lifetime.end.p0(i64 8, ptr %raw) #9, !dbg !2455
  ret void, !dbg !2455
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @rdataset_clone(ptr noundef %source, ptr noundef %target) #0 !dbg !2456 {
entry:
  %source.addr = alloca ptr, align 8
  %target.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %node = alloca ptr, align 8
  %cloned_node = alloca ptr, align 8
  store ptr %source, ptr %source.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %source.addr, metadata !2458, metadata !DIExpression()), !dbg !2463
  store ptr %target, ptr %target.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !2459, metadata !DIExpression()), !dbg !2464
  call void @llvm.lifetime.start.p0(i64 8, ptr %db) #9, !dbg !2465
  tail call void @llvm.dbg.declare(metadata ptr %db, metadata !2460, metadata !DIExpression()), !dbg !2466
  %0 = load ptr, ptr %source.addr, align 8, !dbg !2467
  %private1 = getelementptr inbounds %struct.dns_rdataset, ptr %0, i32 0, i32 12, !dbg !2468
  %1 = load ptr, ptr %private1, align 8, !dbg !2468
  store ptr %1, ptr %db, align 8, !dbg !2466
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #9, !dbg !2469
  tail call void @llvm.dbg.declare(metadata ptr %node, metadata !2461, metadata !DIExpression()), !dbg !2470
  %2 = load ptr, ptr %source.addr, align 8, !dbg !2471
  %private2 = getelementptr inbounds %struct.dns_rdataset, ptr %2, i32 0, i32 13, !dbg !2472
  %3 = load ptr, ptr %private2, align 8, !dbg !2472
  store ptr %3, ptr %node, align 8, !dbg !2470
  call void @llvm.lifetime.start.p0(i64 8, ptr %cloned_node) #9, !dbg !2473
  tail call void @llvm.dbg.declare(metadata ptr %cloned_node, metadata !2462, metadata !DIExpression()), !dbg !2474
  store ptr null, ptr %cloned_node, align 8, !dbg !2474
  %4 = load ptr, ptr %db, align 8, !dbg !2475
  %5 = load ptr, ptr %node, align 8, !dbg !2476
  call void @attachnode(ptr noundef %4, ptr noundef %5, ptr noundef %cloned_node), !dbg !2477
  %6 = load ptr, ptr %target.addr, align 8, !dbg !2478
  %7 = load ptr, ptr %source.addr, align 8, !dbg !2479
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %7, i64 120, i1 false), !dbg !2480
  %8 = load ptr, ptr %target.addr, align 8, !dbg !2481
  %privateuint4 = getelementptr inbounds %struct.dns_rdataset, ptr %8, i32 0, i32 15, !dbg !2482
  store i32 0, ptr %privateuint4, align 8, !dbg !2483
  %9 = load ptr, ptr %target.addr, align 8, !dbg !2484
  %private5 = getelementptr inbounds %struct.dns_rdataset, ptr %9, i32 0, i32 16, !dbg !2485
  store ptr null, ptr %private5, align 8, !dbg !2486
  call void @llvm.lifetime.end.p0(i64 8, ptr %cloned_node) #9, !dbg !2487
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #9, !dbg !2487
  call void @llvm.lifetime.end.p0(i64 8, ptr %db) #9, !dbg !2487
  ret void, !dbg !2487
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @rdataset_count(ptr noundef %rdataset) #0 !dbg !2488 {
entry:
  %rdataset.addr = alloca ptr, align 8
  %raw = alloca ptr, align 8
  %count = alloca i32, align 4
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !2490, metadata !DIExpression()), !dbg !2493
  call void @llvm.lifetime.start.p0(i64 8, ptr %raw) #9, !dbg !2494
  tail call void @llvm.dbg.declare(metadata ptr %raw, metadata !2491, metadata !DIExpression()), !dbg !2495
  %0 = load ptr, ptr %rdataset.addr, align 8, !dbg !2496
  %private3 = getelementptr inbounds %struct.dns_rdataset, ptr %0, i32 0, i32 14, !dbg !2497
  %1 = load ptr, ptr %private3, align 8, !dbg !2497
  store ptr %1, ptr %raw, align 8, !dbg !2495
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #9, !dbg !2498
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !2492, metadata !DIExpression()), !dbg !2499
  %2 = load ptr, ptr %raw, align 8, !dbg !2500
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0, !dbg !2500
  %3 = load i8, ptr %arrayidx, align 1, !dbg !2500
  %conv = zext i8 %3 to i32, !dbg !2500
  %mul = mul nsw i32 %conv, 256, !dbg !2501
  %4 = load ptr, ptr %raw, align 8, !dbg !2502
  %arrayidx1 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !2502
  %5 = load i8, ptr %arrayidx1, align 1, !dbg !2502
  %conv2 = zext i8 %5 to i32, !dbg !2502
  %add = add nsw i32 %mul, %conv2, !dbg !2503
  store i32 %add, ptr %count, align 4, !dbg !2504
  %6 = load i32, ptr %count, align 4, !dbg !2505
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #9, !dbg !2506
  call void @llvm.lifetime.end.p0(i64 8, ptr %raw) #9, !dbg !2506
  ret i32 %6, !dbg !2507
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @rdataset_settrust(ptr noundef %rdataset, i16 noundef zeroext %trust) #0 !dbg !2508 {
entry:
  %rdataset.addr = alloca ptr, align 8
  %trust.addr = alloca i16, align 2
  %header = alloca ptr, align 8
  store ptr %rdataset, ptr %rdataset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rdataset.addr, metadata !2510, metadata !DIExpression()), !dbg !2513
  store i16 %trust, ptr %trust.addr, align 2
  tail call void @llvm.dbg.declare(metadata ptr %trust.addr, metadata !2511, metadata !DIExpression()), !dbg !2514
  call void @llvm.lifetime.start.p0(i64 8, ptr %header) #9, !dbg !2515
  tail call void @llvm.dbg.declare(metadata ptr %header, metadata !2512, metadata !DIExpression()), !dbg !2516
  %0 = load ptr, ptr %rdataset.addr, align 8, !dbg !2517
  %private3 = getelementptr inbounds %struct.dns_rdataset, ptr %0, i32 0, i32 14, !dbg !2518
  %1 = load ptr, ptr %private3, align 8, !dbg !2518
  store ptr %1, ptr %header, align 8, !dbg !2516
  %2 = load ptr, ptr %header, align 8, !dbg !2519
  %incdec.ptr = getelementptr inbounds %struct.rdatasetheader, ptr %2, i32 -1, !dbg !2519
  store ptr %incdec.ptr, ptr %header, align 8, !dbg !2519
  %3 = load i16, ptr %trust.addr, align 2, !dbg !2520
  %4 = load ptr, ptr %rdataset.addr, align 8, !dbg !2521
  %trust1 = getelementptr inbounds %struct.dns_rdataset, ptr %4, i32 0, i32 7, !dbg !2522
  store i16 %3, ptr %trust1, align 4, !dbg !2523
  %5 = load ptr, ptr %header, align 8, !dbg !2524
  %trust2 = getelementptr inbounds %struct.rdatasetheader, ptr %5, i32 0, i32 2, !dbg !2525
  store i16 %3, ptr %trust2, align 8, !dbg !2526
  call void @llvm.lifetime.end.p0(i64 8, ptr %header) #9, !dbg !2527
  ret void, !dbg !2527
}

; Function Attrs: null_pointer_is_valid
declare !dbg !2528 void @dns_rdata_fromregion(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !2532 i32 @dns_rdataslab_fromrdataset(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #7

attributes #0 = { nounwind null_pointer_is_valid uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!42}
!llvm.module.flags = !{!1180, !1181, !1182, !1183, !1184}
!llvm.ident = !{!1185}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "ecdb.c", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "b6c0e6dce9da1c1a2c80ed6f5fde04df")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 7)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !10, isLocal: true, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 19)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 44)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 140, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 5)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 145, type: !15, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !2, line: 599, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 23)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !2, line: 600, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 25)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 601, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 40)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "ecdb_methods", scope: !42, file: !2, line: 539, type: !166, isLocal: true, isDefinition: true)
!42 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !43, retainedTypes: !155, globals: !1058, splitDebugInlining: false, nameTableKind: None)
!43 = !{!44, !52, !58, !64, !67}
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 25, baseType: !46, size: 32, elements: !47)
!45 = !DIFile(filename: "isc/include/isc/assertions.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "d437064b1a440cf5712e89d244b6208d")
!46 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!47 = !{!48, !49, !50, !51}
!48 = !DIEnumerator(name: "isc_assertiontype_require", value: 0)
!49 = !DIEnumerator(name: "isc_assertiontype_ensure", value: 1)
!50 = !DIEnumerator(name: "isc_assertiontype_insist", value: 2)
!51 = !DIEnumerator(name: "isc_assertiontype_invariant", value: 3)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !53, line: 186, baseType: !46, size: 32, elements: !54)
!53 = !DIFile(filename: "include/dns/types.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "f35a187441d60b1b4301c816339e75b0")
!54 = !{!55, !56, !57}
!55 = !DIEnumerator(name: "dns_dbtype_zone", value: 0)
!56 = !DIEnumerator(name: "dns_dbtype_cache", value: 1)
!57 = !DIEnumerator(name: "dns_dbtype_stub", value: 3)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !53, line: 213, baseType: !46, size: 32, elements: !59)
!59 = !{!60, !61, !62, !63}
!60 = !DIEnumerator(name: "dns_masterformat_none", value: 0)
!61 = !DIEnumerator(name: "dns_masterformat_text", value: 1)
!62 = !DIEnumerator(name: "dns_masterformat_raw", value: 2)
!63 = !DIEnumerator(name: "dns_masterformat_map", value: 3)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !53, line: 164, baseType: !46, size: 32, elements: !65)
!65 = !{!66}
!66 = !DIEnumerator(name: "dns_hash_sha1", value: 1)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !68, line: 21, baseType: !46, size: 32, elements: !69)
!68 = !DIFile(filename: "include/dns/enumtype.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "11dbf2b1e0a48ddc2542c96b9ee9da38")
!69 = !{!70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154}
!70 = !DIEnumerator(name: "dns_rdatatype_none", value: 0)
!71 = !DIEnumerator(name: "dns_rdatatype_a", value: 1)
!72 = !DIEnumerator(name: "dns_rdatatype_ns", value: 2)
!73 = !DIEnumerator(name: "dns_rdatatype_md", value: 3)
!74 = !DIEnumerator(name: "dns_rdatatype_mf", value: 4)
!75 = !DIEnumerator(name: "dns_rdatatype_cname", value: 5)
!76 = !DIEnumerator(name: "dns_rdatatype_soa", value: 6)
!77 = !DIEnumerator(name: "dns_rdatatype_mb", value: 7)
!78 = !DIEnumerator(name: "dns_rdatatype_mg", value: 8)
!79 = !DIEnumerator(name: "dns_rdatatype_mr", value: 9)
!80 = !DIEnumerator(name: "dns_rdatatype_null", value: 10)
!81 = !DIEnumerator(name: "dns_rdatatype_wks", value: 11)
!82 = !DIEnumerator(name: "dns_rdatatype_ptr", value: 12)
!83 = !DIEnumerator(name: "dns_rdatatype_hinfo", value: 13)
!84 = !DIEnumerator(name: "dns_rdatatype_minfo", value: 14)
!85 = !DIEnumerator(name: "dns_rdatatype_mx", value: 15)
!86 = !DIEnumerator(name: "dns_rdatatype_txt", value: 16)
!87 = !DIEnumerator(name: "dns_rdatatype_rp", value: 17)
!88 = !DIEnumerator(name: "dns_rdatatype_afsdb", value: 18)
!89 = !DIEnumerator(name: "dns_rdatatype_x25", value: 19)
!90 = !DIEnumerator(name: "dns_rdatatype_isdn", value: 20)
!91 = !DIEnumerator(name: "dns_rdatatype_rt", value: 21)
!92 = !DIEnumerator(name: "dns_rdatatype_nsap", value: 22)
!93 = !DIEnumerator(name: "dns_rdatatype_nsap_ptr", value: 23)
!94 = !DIEnumerator(name: "dns_rdatatype_sig", value: 24)
!95 = !DIEnumerator(name: "dns_rdatatype_key", value: 25)
!96 = !DIEnumerator(name: "dns_rdatatype_px", value: 26)
!97 = !DIEnumerator(name: "dns_rdatatype_gpos", value: 27)
!98 = !DIEnumerator(name: "dns_rdatatype_aaaa", value: 28)
!99 = !DIEnumerator(name: "dns_rdatatype_loc", value: 29)
!100 = !DIEnumerator(name: "dns_rdatatype_nxt", value: 30)
!101 = !DIEnumerator(name: "dns_rdatatype_eid", value: 31)
!102 = !DIEnumerator(name: "dns_rdatatype_nimloc", value: 32)
!103 = !DIEnumerator(name: "dns_rdatatype_srv", value: 33)
!104 = !DIEnumerator(name: "dns_rdatatype_atma", value: 34)
!105 = !DIEnumerator(name: "dns_rdatatype_naptr", value: 35)
!106 = !DIEnumerator(name: "dns_rdatatype_kx", value: 36)
!107 = !DIEnumerator(name: "dns_rdatatype_cert", value: 37)
!108 = !DIEnumerator(name: "dns_rdatatype_a6", value: 38)
!109 = !DIEnumerator(name: "dns_rdatatype_dname", value: 39)
!110 = !DIEnumerator(name: "dns_rdatatype_sink", value: 40)
!111 = !DIEnumerator(name: "dns_rdatatype_opt", value: 41)
!112 = !DIEnumerator(name: "dns_rdatatype_apl", value: 42)
!113 = !DIEnumerator(name: "dns_rdatatype_ds", value: 43)
!114 = !DIEnumerator(name: "dns_rdatatype_sshfp", value: 44)
!115 = !DIEnumerator(name: "dns_rdatatype_ipseckey", value: 45)
!116 = !DIEnumerator(name: "dns_rdatatype_rrsig", value: 46)
!117 = !DIEnumerator(name: "dns_rdatatype_nsec", value: 47)
!118 = !DIEnumerator(name: "dns_rdatatype_dnskey", value: 48)
!119 = !DIEnumerator(name: "dns_rdatatype_dhcid", value: 49)
!120 = !DIEnumerator(name: "dns_rdatatype_nsec3", value: 50)
!121 = !DIEnumerator(name: "dns_rdatatype_nsec3param", value: 51)
!122 = !DIEnumerator(name: "dns_rdatatype_tlsa", value: 52)
!123 = !DIEnumerator(name: "dns_rdatatype_smimea", value: 53)
!124 = !DIEnumerator(name: "dns_rdatatype_hip", value: 55)
!125 = !DIEnumerator(name: "dns_rdatatype_ninfo", value: 56)
!126 = !DIEnumerator(name: "dns_rdatatype_rkey", value: 57)
!127 = !DIEnumerator(name: "dns_rdatatype_talink", value: 58)
!128 = !DIEnumerator(name: "dns_rdatatype_cds", value: 59)
!129 = !DIEnumerator(name: "dns_rdatatype_cdnskey", value: 60)
!130 = !DIEnumerator(name: "dns_rdatatype_openpgpkey", value: 61)
!131 = !DIEnumerator(name: "dns_rdatatype_csync", value: 62)
!132 = !DIEnumerator(name: "dns_rdatatype_zonemd", value: 63)
!133 = !DIEnumerator(name: "dns_rdatatype_spf", value: 99)
!134 = !DIEnumerator(name: "dns_rdatatype_nid", value: 104)
!135 = !DIEnumerator(name: "dns_rdatatype_l32", value: 105)
!136 = !DIEnumerator(name: "dns_rdatatype_l64", value: 106)
!137 = !DIEnumerator(name: "dns_rdatatype_lp", value: 107)
!138 = !DIEnumerator(name: "dns_rdatatype_eui48", value: 108)
!139 = !DIEnumerator(name: "dns_rdatatype_eui64", value: 109)
!140 = !DIEnumerator(name: "dns_rdatatype_tkey", value: 249)
!141 = !DIEnumerator(name: "dns_rdatatype_tsig", value: 250)
!142 = !DIEnumerator(name: "dns_rdatatype_uri", value: 256)
!143 = !DIEnumerator(name: "dns_rdatatype_caa", value: 257)
!144 = !DIEnumerator(name: "dns_rdatatype_avc", value: 258)
!145 = !DIEnumerator(name: "dns_rdatatype_doa", value: 259)
!146 = !DIEnumerator(name: "dns_rdatatype_amtrelay", value: 260)
!147 = !DIEnumerator(name: "dns_rdatatype_ta", value: 32768)
!148 = !DIEnumerator(name: "dns_rdatatype_dlv", value: 32769)
!149 = !DIEnumerator(name: "dns_rdatatype_keydata", value: 65533)
!150 = !DIEnumerator(name: "dns_rdatatype_ixfr", value: 251)
!151 = !DIEnumerator(name: "dns_rdatatype_axfr", value: 252)
!152 = !DIEnumerator(name: "dns_rdatatype_mailb", value: 253)
!153 = !DIEnumerator(name: "dns_rdatatype_maila", value: 254)
!154 = !DIEnumerator(name: "dns_rdatatype_any", value: 255)
!155 = !{!156, !157, !969, !1041, !1043, !291, !698, !1050, !401, !1056}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_db_t", file: !53, line: 54, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_db", file: !160, line: 223, size: 1024, elements: !161)
!160 = !DIFile(filename: "include/dns/db.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "f7341a6445a0da00d6edbc7f74bf2ce5")
!161 = !{!162, !163, !164, !945, !946, !947, !948, !949}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !159, file: !160, line: 224, baseType: !46, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "impmagic", scope: !159, file: !160, line: 225, baseType: !46, size: 32, offset: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !159, file: !160, line: 226, baseType: !165, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbmethods_t", file: !160, line: 200, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_dbmethods", file: !160, line: 71, size: 3072, elements: !168)
!168 = !{!169, !174, !178, !187, !188, !255, !261, !266, !270, !274, !279, !657, !661, !665, !669, !673, !677, !681, !689, !693, !726, !730, !734, !738, !742, !746, !747, !751, !758, !762, !766, !777, !778, !782, !786, !790, !791, !798, !802, !806, !909, !913, !920, !924, !928, !935, !939, !944}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !167, file: !160, line: 72, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !157, !173}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !167, file: !160, line: 73, baseType: !175, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !173}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "beginload", scope: !167, file: !160, line: 74, baseType: !179, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!182, !157, !184}
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_result_t", file: !183, line: 67, baseType: !46)
!183 = !DIFile(filename: "isc/include/isc/types.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "6a355582c4f962c465b18bab43b68c96")
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatacallbacks_t", file: !53, line: 120, baseType: !186)
!186 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatacallbacks", file: !53, line: 120, flags: DIFlagFwdDecl)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "endload", scope: !167, file: !160, line: 76, baseType: !179, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "serialize", scope: !167, file: !160, line: 78, baseType: !189, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!182, !157, !192, !194}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbversion_t", file: !53, line: 61, baseType: null)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !196, line: 7, baseType: !197)
!196 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !198, line: 49, size: 1728, elements: !199)
!198 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!199 = !{!200, !202, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !217, !219, !220, !221, !225, !227, !229, !233, !236, !238, !241, !244, !245, !246, !250, !251}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !197, file: !198, line: 51, baseType: !201, size: 32)
!201 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !197, file: !198, line: 54, baseType: !203, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !197, file: !198, line: 55, baseType: !203, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !197, file: !198, line: 56, baseType: !203, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !197, file: !198, line: 57, baseType: !203, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !197, file: !198, line: 58, baseType: !203, size: 64, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !197, file: !198, line: 59, baseType: !203, size: 64, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !197, file: !198, line: 60, baseType: !203, size: 64, offset: 448)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !197, file: !198, line: 61, baseType: !203, size: 64, offset: 512)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !197, file: !198, line: 64, baseType: !203, size: 64, offset: 576)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !197, file: !198, line: 65, baseType: !203, size: 64, offset: 640)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !197, file: !198, line: 66, baseType: !203, size: 64, offset: 704)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !197, file: !198, line: 68, baseType: !215, size: 64, offset: 768)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !198, line: 36, flags: DIFlagFwdDecl)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !197, file: !198, line: 70, baseType: !218, size: 64, offset: 832)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !197, file: !198, line: 72, baseType: !201, size: 32, offset: 896)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !197, file: !198, line: 73, baseType: !201, size: 32, offset: 928)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !197, file: !198, line: 74, baseType: !222, size: 64, offset: 960)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !223, line: 152, baseType: !224)
!223 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!224 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !197, file: !198, line: 77, baseType: !226, size: 16, offset: 1024)
!226 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !197, file: !198, line: 78, baseType: !228, size: 8, offset: 1040)
!228 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !197, file: !198, line: 79, baseType: !230, size: 8, offset: 1048)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 1)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !197, file: !198, line: 81, baseType: !234, size: 64, offset: 1088)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !198, line: 43, baseType: null)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !197, file: !198, line: 89, baseType: !237, size: 64, offset: 1152)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !223, line: 153, baseType: !224)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !197, file: !198, line: 91, baseType: !239, size: 64, offset: 1216)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !198, line: 37, flags: DIFlagFwdDecl)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !197, file: !198, line: 92, baseType: !242, size: 64, offset: 1280)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !198, line: 38, flags: DIFlagFwdDecl)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !197, file: !198, line: 93, baseType: !218, size: 64, offset: 1344)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !197, file: !198, line: 94, baseType: !156, size: 64, offset: 1408)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !197, file: !198, line: 95, baseType: !247, size: 64, offset: 1472)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !248, line: 70, baseType: !249)
!248 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!249 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !197, file: !198, line: 96, baseType: !201, size: 32, offset: 1536)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !197, file: !198, line: 98, baseType: !252, size: 160, offset: 1568)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 160, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 20)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !167, file: !160, line: 80, baseType: !256, size: 64, offset: 320)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!182, !157, !192, !259, !260}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_masterformat_t", file: !53, line: 218, baseType: !58)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "currentversion", scope: !167, file: !160, line: 83, baseType: !262, size: 64, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !157, !265}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "newversion", scope: !167, file: !160, line: 85, baseType: !267, size: 64, offset: 448)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!182, !157, !265}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "attachversion", scope: !167, file: !160, line: 87, baseType: !271, size: 64, offset: 512)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !157, !192, !265}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "closeversion", scope: !167, file: !160, line: 89, baseType: !275, size: 64, offset: 576)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !157, !265, !278}
!278 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "findnode", scope: !167, file: !160, line: 92, baseType: !280, size: 64, offset: 640)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!182, !157, !283, !278, !654}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_name_t", file: !53, line: 107, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_name", file: !287, line: 104, size: 640, elements: !288)
!287 = !DIFile(filename: "include/dns/name.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "ec64c9a43875cd86cb4b0e37c1191a89")
!288 = !{!289, !290, !293, !294, !295, !296, !297, !354, !360}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !286, file: !287, line: 105, baseType: !46, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ndata", scope: !286, file: !287, line: 106, baseType: !291, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !286, file: !287, line: 107, baseType: !46, size: 32, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "labels", scope: !286, file: !287, line: 108, baseType: !46, size: 32, offset: 160)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !286, file: !287, line: 109, baseType: !46, size: 32, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !286, file: !287, line: 110, baseType: !291, size: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !286, file: !287, line: 111, baseType: !298, size: 64, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_buffer_t", file: !183, line: 35, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_buffer", file: !301, line: 173, size: 512, elements: !302)
!301 = !DIFile(filename: "isc/include/isc/buffer.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "feec9784066f3891a27281dd5bdccd55")
!302 = !{!303, !304, !305, !306, !307, !308, !309, !314, !353}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !300, file: !301, line: 174, baseType: !46, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !300, file: !301, line: 175, baseType: !156, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !300, file: !301, line: 178, baseType: !46, size: 32, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !300, file: !301, line: 179, baseType: !46, size: 32, offset: 160)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !300, file: !301, line: 180, baseType: !46, size: 32, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !300, file: !301, line: 181, baseType: !46, size: 32, offset: 224)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !300, file: !301, line: 184, baseType: !310, size: 128, offset: 256)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !300, file: !301, line: 184, size: 128, elements: !311)
!311 = !{!312, !313}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !310, file: !301, line: 184, baseType: !298, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !310, file: !301, line: 184, baseType: !298, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !300, file: !301, line: 186, baseType: !315, size: 64, offset: 384)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_mem_t", file: !183, line: 59, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_mem", file: !318, line: 191, size: 128, elements: !319)
!318 = !DIFile(filename: "isc/include/isc/mem.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "587a841195795b087519b89f298822b2")
!319 = !{!320, !321, !322}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "impmagic", scope: !317, file: !318, line: 192, baseType: !46, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !317, file: !318, line: 193, baseType: !46, size: 32, offset: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !317, file: !318, line: 194, baseType: !323, size: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_memmethods_t", file: !318, line: 180, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_memmethods", file: !318, line: 170, size: 448, elements: !326)
!326 = !{!327, !331, !335, !340, !341, !345, !349}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "memget", scope: !325, file: !318, line: 171, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!156, !315, !247, !259, !46}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "memput", scope: !325, file: !318, line: 172, baseType: !332, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !315, !156, !247, !259, !46}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "memputanddetach", scope: !325, file: !318, line: 173, baseType: !336, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !339, !156, !247, !259, !46}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "memallocate", scope: !325, file: !318, line: 175, baseType: !328, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "memreallocate", scope: !325, file: !318, line: 176, baseType: !342, size: 64, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!156, !315, !156, !247, !259, !46}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "memstrdup", scope: !325, file: !318, line: 178, baseType: !346, size: 64, offset: 320)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!203, !315, !259, !259, !46}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "memfree", scope: !325, file: !318, line: 179, baseType: !350, size: 64, offset: 384)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !315, !156, !259, !46}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "autore", scope: !300, file: !301, line: 188, baseType: !278, size: 8, offset: 448)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !286, file: !287, line: 112, baseType: !355, size: 128, offset: 384)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !286, file: !287, line: 112, size: 128, elements: !356)
!356 = !{!357, !359}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !355, file: !287, line: 112, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !355, file: !287, line: 112, baseType: !358, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !286, file: !287, line: 113, baseType: !361, size: 128, offset: 512)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !286, file: !287, line: 113, size: 128, elements: !362)
!362 = !{!363, !653}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !361, file: !287, line: 113, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdataset_t", file: !53, line: 123, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdataset", file: !367, line: 107, size: 960, elements: !368)
!367 = !DIFile(filename: "include/dns/rdataset.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "a2414fd23f718a363582354673aed6a8")
!368 = !{!369, !370, !627, !632, !633, !634, !638, !639, !640, !641, !642, !643, !646, !647, !648, !649, !650, !651, !652}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !366, file: !367, line: 108, baseType: !46, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !366, file: !367, line: 109, baseType: !371, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatasetmethods_t", file: !367, line: 96, baseType: !373)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatasetmethods", file: !367, line: 64, size: 1024, elements: !374)
!374 = !{!375, !379, !383, !384, !408, !412, !416, !420, !424, !425, !426, !431, !432, !433, !437, !443}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "disassociate", scope: !373, file: !367, line: 65, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !364}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !373, file: !367, line: 66, baseType: !380, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!182, !364}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !373, file: !367, line: 67, baseType: !380, size: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !373, file: !367, line: 68, baseType: !385, size: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !364, !388}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdata_t", file: !53, line: 119, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdata", file: !391, line: 112, size: 320, elements: !392)
!391 = !DIFile(filename: "include/dns/rdata.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "e790fb4f336bc4fdcd566550403b32a6")
!392 = !{!393, !394, !395, !400, !402, !403}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !390, file: !391, line: 113, baseType: !291, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !390, file: !391, line: 114, baseType: !46, size: 32, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !390, file: !391, line: 115, baseType: !396, size: 16, offset: 96)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdataclass_t", file: !53, line: 121, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !398, line: 25, baseType: !399)
!398 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !223, line: 40, baseType: !226)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !390, file: !391, line: 116, baseType: !401, size: 16, offset: 112)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatatype_t", file: !53, line: 126, baseType: !397)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !390, file: !391, line: 117, baseType: !46, size: 32, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !390, file: !391, line: 118, baseType: !404, size: 128, offset: 192)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !390, file: !391, line: 118, size: 128, elements: !405)
!405 = !{!406, !407}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !404, file: !391, line: 118, baseType: !388, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !404, file: !391, line: 118, baseType: !388, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !373, file: !367, line: 70, baseType: !409, size: 64, offset: 256)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !364, !364}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !373, file: !367, line: 72, baseType: !413, size: 64, offset: 320)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!46, !364}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "addnoqname", scope: !373, file: !367, line: 73, baseType: !417, size: 64, offset: 384)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!182, !364, !283}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "getnoqname", scope: !373, file: !367, line: 75, baseType: !421, size: 64, offset: 448)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!182, !364, !358, !364, !364}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "addclosest", scope: !373, file: !367, line: 79, baseType: !417, size: 64, offset: 512)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "getclosest", scope: !373, file: !367, line: 81, baseType: !421, size: 64, offset: 576)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "settrust", scope: !373, file: !367, line: 85, baseType: !427, size: 64, offset: 640)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !364, !430}
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_trust_t", file: !53, line: 140, baseType: !397)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !373, file: !367, line: 87, baseType: !376, size: 64, offset: 704)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "clearprefetch", scope: !373, file: !367, line: 88, baseType: !376, size: 64, offset: 768)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "setownercase", scope: !373, file: !367, line: 89, baseType: !434, size: 64, offset: 832)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !364, !283}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "getownercase", scope: !373, file: !367, line: 91, baseType: !438, size: 64, offset: 896)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !441, !358}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "addglue", scope: !373, file: !367, line: 93, baseType: !444, size: 64, offset: 960)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!182, !364, !192, !447}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_message_t", file: !53, line: 103, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_message", file: !450, line: 197, size: 3840, elements: !451)
!450 = !DIFile(filename: "include/dns/message.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "6416f0e57c4314c86bb1ccbb29bdbc0d")
!451 = !{!452, !453, !455, !456, !458, !460, !461, !465, !472, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !530, !531, !538, !539, !545, !546, !554, !559, !564, !569, !577, !578, !579, !580, !581, !585, !590, !591, !592, !593, !597, !598, !599, !600, !609}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !449, file: !450, line: 199, baseType: !46, size: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !449, file: !450, line: 201, baseType: !454, size: 16, offset: 32)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_messageid_t", file: !53, line: 104, baseType: !397)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !449, file: !450, line: 202, baseType: !46, size: 32, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "rcode", scope: !449, file: !450, line: 203, baseType: !457, size: 16, offset: 96)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rcode_t", file: !53, line: 118, baseType: !397)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !449, file: !450, line: 204, baseType: !459, size: 16, offset: 112)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_opcode_t", file: !53, line: 111, baseType: !397)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !449, file: !450, line: 205, baseType: !396, size: 16, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !449, file: !450, line: 208, baseType: !462, size: 128, offset: 160)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 128, elements: !463)
!463 = !{!464}
!464 = !DISubrange(count: 4)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "sections", scope: !449, file: !450, line: 211, baseType: !466, size: 512, offset: 320)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 512, elements: !463)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_namelist_t", file: !53, line: 108, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 108, size: 128, elements: !469)
!469 = !{!470, !471}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !468, file: !53, line: 108, baseType: !358, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !468, file: !53, line: 108, baseType: !358, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "cursors", scope: !449, file: !450, line: 212, baseType: !473, size: 256, offset: 832)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 256, elements: !463)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !449, file: !450, line: 213, baseType: !364, size: 64, offset: 1088)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "sig0", scope: !449, file: !450, line: 214, baseType: !364, size: 64, offset: 1152)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "tsig", scope: !449, file: !450, line: 215, baseType: !364, size: 64, offset: 1216)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !449, file: !450, line: 217, baseType: !201, size: 32, offset: 1280)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "from_to_wire", scope: !449, file: !450, line: 218, baseType: !46, size: 2, offset: 1312, flags: DIFlagBitField, extraData: i64 1312)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "header_ok", scope: !449, file: !450, line: 219, baseType: !46, size: 1, offset: 1314, flags: DIFlagBitField, extraData: i64 1312)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "question_ok", scope: !449, file: !450, line: 220, baseType: !46, size: 1, offset: 1315, flags: DIFlagBitField, extraData: i64 1312)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_continuation", scope: !449, file: !450, line: 221, baseType: !46, size: 1, offset: 1316, flags: DIFlagBitField, extraData: i64 1312)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "verified_sig", scope: !449, file: !450, line: 222, baseType: !46, size: 1, offset: 1317, flags: DIFlagBitField, extraData: i64 1312)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "verify_attempted", scope: !449, file: !450, line: 223, baseType: !46, size: 1, offset: 1318, flags: DIFlagBitField, extraData: i64 1312)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "free_query", scope: !449, file: !450, line: 224, baseType: !46, size: 1, offset: 1319, flags: DIFlagBitField, extraData: i64 1312)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "free_saved", scope: !449, file: !450, line: 225, baseType: !46, size: 1, offset: 1320, flags: DIFlagBitField, extraData: i64 1312)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "cc_ok", scope: !449, file: !450, line: 226, baseType: !46, size: 1, offset: 1321, flags: DIFlagBitField, extraData: i64 1312)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "cc_bad", scope: !449, file: !450, line: 227, baseType: !46, size: 1, offset: 1322, flags: DIFlagBitField, extraData: i64 1312)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "tkey", scope: !449, file: !450, line: 228, baseType: !46, size: 1, offset: 1323, flags: DIFlagBitField, extraData: i64 1312)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass_set", scope: !449, file: !450, line: 229, baseType: !46, size: 1, offset: 1324, flags: DIFlagBitField, extraData: i64 1312)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "opt_reserved", scope: !449, file: !450, line: 231, baseType: !46, size: 32, offset: 1344)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "sig_reserved", scope: !449, file: !450, line: 232, baseType: !46, size: 32, offset: 1376)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !449, file: !450, line: 233, baseType: !46, size: 32, offset: 1408)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !449, file: !450, line: 235, baseType: !397, size: 16, offset: 1440)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "padding_off", scope: !449, file: !450, line: 236, baseType: !46, size: 32, offset: 1472)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !449, file: !450, line: 238, baseType: !298, size: 64, offset: 1536)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "cctx", scope: !449, file: !450, line: 239, baseType: !497, size: 64, offset: 1600)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_compress_t", file: !53, line: 53, baseType: !499)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_compress", file: !500, line: 66, size: 18688, elements: !501)
!500 = !DIFile(filename: "include/dns/compress.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "ae360072e6dd15c4fe76c4efa2dcea4c")
!501 = !{!502, !503, !504, !505, !524, !528, !529}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !499, file: !500, line: 67, baseType: !46, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !499, file: !500, line: 68, baseType: !46, size: 32, offset: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "edns", scope: !499, file: !500, line: 69, baseType: !201, size: 32, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !499, file: !500, line: 71, baseType: !506, size: 4096, offset: 128)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, size: 4096, elements: !522)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_compressnode_t", file: !500, line: 56, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_compressnode", file: !500, line: 58, size: 896, elements: !510)
!510 = !{!511, !512, !513, !514, !521}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !509, file: !500, line: 59, baseType: !507, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !509, file: !500, line: 60, baseType: !397, size: 16, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !509, file: !500, line: 61, baseType: !397, size: 16, offset: 80)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !509, file: !500, line: 62, baseType: !515, size: 128, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_region_t", file: !183, line: 65, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_region", file: !517, line: 21, size: 128, elements: !518)
!517 = !DIFile(filename: "isc/include/isc/region.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "2ed4a07dc05ddbd48f51e2dc9be9f317")
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !516, file: !517, line: 22, baseType: !291, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !516, file: !517, line: 23, baseType: !46, size: 32, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !509, file: !500, line: 63, baseType: !285, size: 640, offset: 256)
!522 = !{!523}
!523 = !DISubrange(count: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "initialnodes", scope: !499, file: !500, line: 73, baseType: !525, size: 14336, offset: 4224)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !508, size: 14336, elements: !526)
!526 = !{!527}
!527 = !DISubrange(count: 16)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !499, file: !500, line: 74, baseType: !397, size: 16, offset: 18560)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !499, file: !500, line: 75, baseType: !315, size: 64, offset: 18624)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !449, file: !450, line: 241, baseType: !315, size: 64, offset: 1664)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "namepool", scope: !449, file: !450, line: 242, baseType: !532, size: 64, offset: 1728)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_mempool_t", file: !183, line: 60, baseType: !534)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_mempool", file: !318, line: 205, size: 64, elements: !535)
!535 = !{!536, !537}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "impmagic", scope: !534, file: !318, line: 206, baseType: !46, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !534, file: !318, line: 207, baseType: !46, size: 32, offset: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "rdspool", scope: !449, file: !450, line: 243, baseType: !532, size: 64, offset: 1792)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "scratchpad", scope: !449, file: !450, line: 245, baseType: !540, size: 128, offset: 1856)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_bufferlist_t", file: !183, line: 36, baseType: !541)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !183, line: 36, size: 128, elements: !542)
!542 = !{!543, !544}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !541, file: !183, line: 36, baseType: !298, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !541, file: !183, line: 36, baseType: !298, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !449, file: !450, line: 246, baseType: !540, size: 128, offset: 1984)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "rdatas", scope: !449, file: !450, line: 248, baseType: !547, size: 128, offset: 2112)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !449, file: !450, line: 248, size: 128, elements: !548)
!548 = !{!549, !553}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !547, file: !450, line: 248, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_msgblock_t", file: !450, line: 189, baseType: !552)
!552 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_msgblock", file: !450, line: 189, flags: DIFlagFwdDecl)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !547, file: !450, line: 248, baseType: !550, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "rdatalists", scope: !449, file: !450, line: 249, baseType: !555, size: 128, offset: 2240)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !449, file: !450, line: 249, size: 128, elements: !556)
!556 = !{!557, !558}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !555, file: !450, line: 249, baseType: !550, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !555, file: !450, line: 249, baseType: !550, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !449, file: !450, line: 250, baseType: !560, size: 128, offset: 2368)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !449, file: !450, line: 250, size: 128, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !560, file: !450, line: 250, baseType: !550, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !560, file: !450, line: 250, baseType: !550, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "freerdata", scope: !449, file: !450, line: 252, baseType: !565, size: 128, offset: 2496)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !449, file: !450, line: 252, size: 128, elements: !566)
!566 = !{!567, !568}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !565, file: !450, line: 252, baseType: !388, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !565, file: !450, line: 252, baseType: !388, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "freerdatalist", scope: !449, file: !450, line: 253, baseType: !570, size: 128, offset: 2624)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !449, file: !450, line: 253, size: 128, elements: !571)
!571 = !{!572, !576}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !570, file: !450, line: 253, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatalist_t", file: !53, line: 122, baseType: !575)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatalist", file: !53, line: 122, flags: DIFlagFwdDecl)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !570, file: !450, line: 253, baseType: !573, size: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "tsigstatus", scope: !449, file: !450, line: 255, baseType: !457, size: 16, offset: 2752)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "querytsigstatus", scope: !449, file: !450, line: 256, baseType: !457, size: 16, offset: 2768)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "tsigname", scope: !449, file: !450, line: 257, baseType: !358, size: 64, offset: 2816)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "querytsig", scope: !449, file: !450, line: 258, baseType: !364, size: 64, offset: 2880)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "tsigkey", scope: !449, file: !450, line: 259, baseType: !582, size: 64, offset: 2944)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_tsigkey_t", file: !53, line: 143, baseType: !584)
!584 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_tsigkey", file: !53, line: 143, flags: DIFlagFwdDecl)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "tsigctx", scope: !449, file: !450, line: 260, baseType: !586, size: 64, offset: 3008)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "dst_context_t", file: !588, line: 45, baseType: !589)
!588 = !DIFile(filename: "include/dst/dst.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "10e76bcacbe005e6cc7dee2ac6ffac9a")
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "dst_context", file: !588, line: 45, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "sigstart", scope: !449, file: !450, line: 261, baseType: !201, size: 32, offset: 3072)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "timeadjust", scope: !449, file: !450, line: 262, baseType: !201, size: 32, offset: 3104)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "sig0name", scope: !449, file: !450, line: 264, baseType: !358, size: 64, offset: 3136)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "sig0key", scope: !449, file: !450, line: 265, baseType: !594, size: 64, offset: 3200)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "dst_key_t", file: !588, line: 44, baseType: !596)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "dst_key", file: !588, line: 44, flags: DIFlagFwdDecl)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "sig0status", scope: !449, file: !450, line: 266, baseType: !457, size: 16, offset: 3264)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !449, file: !450, line: 267, baseType: !515, size: 128, offset: 3328)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "saved", scope: !449, file: !450, line: 268, baseType: !515, size: 128, offset: 3456)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !449, file: !450, line: 270, baseType: !601, size: 64, offset: 3584)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatasetorderfunc_t", file: !53, line: 415, baseType: !602)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!201, !605, !607}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "order_arg", scope: !449, file: !450, line: 271, baseType: !610, size: 192, offset: 3648)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_sortlist_arg_t", file: !53, line: 134, baseType: !611)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_sortlist_arg", file: !450, line: 191, size: 192, elements: !612)
!612 = !{!613, !617, !622}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !611, file: !450, line: 192, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_aclenv_t", file: !53, line: 32, baseType: !616)
!616 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_aclenv", file: !53, line: 32, flags: DIFlagFwdDecl)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "acl", scope: !611, file: !450, line: 193, baseType: !618, size: 64, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_acl_t", file: !53, line: 30, baseType: !621)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_acl", file: !53, line: 30, flags: DIFlagFwdDecl)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "element", scope: !611, file: !450, line: 194, baseType: !623, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_aclelement_t", file: !53, line: 31, baseType: !626)
!626 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_aclelement", file: !53, line: 31, flags: DIFlagFwdDecl)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !366, file: !367, line: 110, baseType: !628, size: 128, offset: 128)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !366, file: !367, line: 110, size: 128, elements: !629)
!629 = !{!630, !631}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !628, file: !367, line: 110, baseType: !364, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !628, file: !367, line: 110, baseType: !364, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !366, file: !367, line: 117, baseType: !396, size: 16, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !366, file: !367, line: 118, baseType: !401, size: 16, offset: 272)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !366, file: !367, line: 119, baseType: !635, size: 32, offset: 288)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_ttl_t", file: !53, line: 144, baseType: !636)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !398, line: 26, baseType: !637)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !223, line: 42, baseType: !46)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "stale_ttl", scope: !366, file: !367, line: 124, baseType: !635, size: 32, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !366, file: !367, line: 125, baseType: !430, size: 16, offset: 352)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "covers", scope: !366, file: !367, line: 126, baseType: !401, size: 16, offset: 368)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !366, file: !367, line: 131, baseType: !46, size: 32, offset: 384)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !366, file: !367, line: 139, baseType: !636, size: 32, offset: 416)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "resign", scope: !366, file: !367, line: 145, baseType: !644, size: 32, offset: 448)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_stdtime_t", file: !645, line: 26, baseType: !636)
!645 = !DIFile(filename: "../../lib/isc/unix/include/isc/stdtime.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "b8868fded6c0eb282ad50986c628a693")
!646 = !DIDerivedType(tag: DW_TAG_member, name: "private1", scope: !366, file: !367, line: 152, baseType: !156, size: 64, offset: 512)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "private2", scope: !366, file: !367, line: 153, baseType: !156, size: 64, offset: 576)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "private3", scope: !366, file: !367, line: 154, baseType: !156, size: 64, offset: 640)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "privateuint4", scope: !366, file: !367, line: 155, baseType: !46, size: 32, offset: 704)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "private5", scope: !366, file: !367, line: 156, baseType: !156, size: 64, offset: 768)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "private6", scope: !366, file: !367, line: 157, baseType: !607, size: 64, offset: 832)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "private7", scope: !366, file: !367, line: 158, baseType: !607, size: 64, offset: 896)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !361, file: !287, line: 113, baseType: !364, size: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbnode_t", file: !53, line: 58, baseType: null)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "find", scope: !167, file: !160, line: 95, baseType: !658, size: 64, offset: 704)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!182, !157, !283, !192, !401, !46, !644, !654, !358, !364, !364}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "findzonecut", scope: !167, file: !160, line: 102, baseType: !662, size: 64, offset: 768)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!182, !157, !283, !46, !644, !654, !358, !358, !364, !364}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "attachnode", scope: !167, file: !160, line: 109, baseType: !666, size: 64, offset: 832)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !157, !655, !654}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "detachnode", scope: !167, file: !160, line: 112, baseType: !670, size: 64, offset: 896)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !157, !654}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "expirenode", scope: !167, file: !160, line: 114, baseType: !674, size: 64, offset: 960)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!182, !157, !655, !644}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "printnode", scope: !167, file: !160, line: 116, baseType: !678, size: 64, offset: 1024)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{null, !157, !655, !194}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "createiterator", scope: !167, file: !160, line: 118, baseType: !682, size: 64, offset: 1088)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!182, !157, !46, !685}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbiterator_t", file: !53, line: 56, baseType: !688)
!688 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_dbiterator", file: !53, line: 56, flags: DIFlagFwdDecl)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "findrdataset", scope: !167, file: !160, line: 120, baseType: !690, size: 64, offset: 1152)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!182, !157, !655, !192, !401, !401, !644, !364, !364}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "allrdatasets", scope: !167, file: !160, line: 127, baseType: !694, size: 64, offset: 1216)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!182, !157, !655, !192, !644, !697}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatasetiter_t", file: !53, line: 125, baseType: !700)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatasetiter", file: !701, line: 89, size: 384, elements: !702)
!701 = !DIFile(filename: "include/dns/rdatasetiter.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "9746ed7a00ac2faebfbf0cffc47d675f")
!702 = !{!703, !704, !722, !723, !724, !725}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !700, file: !701, line: 91, baseType: !46, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !700, file: !701, line: 92, baseType: !705, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatasetitermethods_t", file: !701, line: 75, baseType: !707)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatasetitermethods", file: !701, line: 69, size: 256, elements: !708)
!708 = !{!709, !713, !717, !718}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !707, file: !701, line: 70, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !697}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !707, file: !701, line: 71, baseType: !714, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!182, !698}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !707, file: !701, line: 72, baseType: !714, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !707, file: !701, line: 73, baseType: !719, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !698, !364}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !700, file: !701, line: 93, baseType: !157, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !700, file: !701, line: 94, baseType: !655, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !700, file: !701, line: 95, baseType: !192, size: 64, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "now", scope: !700, file: !701, line: 96, baseType: !644, size: 32, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "addrdataset", scope: !167, file: !160, line: 131, baseType: !727, size: 64, offset: 1280)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!182, !157, !655, !192, !644, !364, !46, !364}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "subtractrdataset", scope: !167, file: !160, line: 137, baseType: !731, size: 64, offset: 1344)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!182, !157, !655, !192, !364, !46, !364}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "deleterdataset", scope: !167, file: !160, line: 142, baseType: !735, size: 64, offset: 1408)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!182, !157, !655, !192, !401, !401}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "issecure", scope: !167, file: !160, line: 146, baseType: !739, size: 64, offset: 1472)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!278, !157}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "nodecount", scope: !167, file: !160, line: 147, baseType: !743, size: 64, offset: 1536)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!46, !157}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ispersistent", scope: !167, file: !160, line: 148, baseType: !739, size: 64, offset: 1600)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "overmem", scope: !167, file: !160, line: 149, baseType: !748, size: 64, offset: 1664)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{null, !157, !278}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "settask", scope: !167, file: !160, line: 150, baseType: !752, size: 64, offset: 1728)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !157, !755}
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_task_t", file: !183, line: 77, baseType: !757)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "isc_task", file: !183, line: 77, flags: DIFlagFwdDecl)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "getoriginnode", scope: !167, file: !160, line: 151, baseType: !759, size: 64, offset: 1792)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!182, !157, !654}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "transfernode", scope: !167, file: !160, line: 152, baseType: !763, size: 64, offset: 1856)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{null, !157, !654, !654}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "getnsec3parameters", scope: !167, file: !160, line: 154, baseType: !767, size: 64, offset: 1920)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!182, !157, !192, !770, !772, !775, !291, !776}
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_hash_t", file: !53, line: 166, baseType: !64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !398, line: 24, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !223, line: 38, baseType: !292)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "findnsec3node", scope: !167, file: !160, line: 161, baseType: !280, size: 64, offset: 1984)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "setsigningtime", scope: !167, file: !160, line: 164, baseType: !779, size: 64, offset: 2048)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!182, !157, !364, !644}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "getsigningtime", scope: !167, file: !160, line: 167, baseType: !783, size: 64, offset: 2112)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!182, !157, !364, !358}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "resigned", scope: !167, file: !160, line: 170, baseType: !787, size: 64, offset: 2176)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !157, !364, !192}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "isdnssec", scope: !167, file: !160, line: 172, baseType: !739, size: 64, offset: 2240)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "getrrsetstats", scope: !167, file: !160, line: 173, baseType: !792, size: 64, offset: 2304)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!795, !157}
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_stats_t", file: !53, line: 137, baseType: !797)
!797 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_stats", file: !53, line: 137, flags: DIFlagFwdDecl)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "rpz_attach", scope: !167, file: !160, line: 174, baseType: !799, size: 64, offset: 2368)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !157, !156, !773}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "rpz_ready", scope: !167, file: !160, line: 176, baseType: !803, size: 64, offset: 2432)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!182, !157}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "findnodeext", scope: !167, file: !160, line: 177, baseType: !807, size: 64, offset: 2496)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{!182, !157, !283, !278, !810, !822, !654}
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_clientinfomethods_t", file: !812, line: 68, baseType: !813)
!812 = !DIFile(filename: "include/dns/clientinfo.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "f273dbbef534c5352c6d152e1993b2e9")
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_clientinfomethods", file: !812, line: 64, size: 128, elements: !814)
!814 = !{!815, !816, !817}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !813, file: !812, line: 65, baseType: !397, size: 16)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "age", scope: !813, file: !812, line: 66, baseType: !397, size: 16, offset: 16)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "sourceip", scope: !813, file: !812, line: 67, baseType: !818, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_clientinfo_sourceip_t", file: !812, line: 58, baseType: !819)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!182, !822, !829}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_clientinfo_t", file: !812, line: 56, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_clientinfo", file: !812, line: 52, size: 192, elements: !825)
!825 = !{!826, !827, !828}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !824, file: !812, line: 53, baseType: !397, size: 16)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !824, file: !812, line: 54, baseType: !156, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "dbversion", scope: !824, file: !812, line: 55, baseType: !156, size: 64, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_sockaddr_t", file: !183, line: 69, baseType: !832)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_sockaddr", file: !833, line: 27, size: 1216, elements: !834)
!833 = !DIFile(filename: "isc/include/isc/sockaddr.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "b46a0f057942d922d0824c5621821d46")
!834 = !{!835, !902, !903}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !832, file: !833, line: 36, baseType: !836, size: 1024)
!836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !832, file: !833, line: 28, size: 1024, elements: !837)
!837 = !{!838, !849, !865, !884, !893}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !836, file: !833, line: 29, baseType: !839, size: 128)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !840, line: 180, size: 128, elements: !841)
!840 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!841 = !{!842, !845}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !839, file: !840, line: 182, baseType: !843, size: 16)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !844, line: 28, baseType: !226)
!844 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!845 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !839, file: !840, line: 183, baseType: !846, size: 112, offset: 16)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 112, elements: !847)
!847 = !{!848}
!848 = !DISubrange(count: 14)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !836, file: !833, line: 30, baseType: !850, size: 128)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !851, line: 245, size: 128, elements: !852)
!851 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!852 = !{!853, !854, !856, !861}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !850, file: !851, line: 247, baseType: !843, size: 16)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !850, file: !851, line: 248, baseType: !855, size: 16, offset: 16)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !851, line: 123, baseType: !397)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !850, file: !851, line: 249, baseType: !857, size: 32, offset: 32)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !851, line: 31, size: 32, elements: !858)
!858 = !{!859}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !857, file: !851, line: 33, baseType: !860, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !851, line: 30, baseType: !636)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !850, file: !851, line: 252, baseType: !862, size: 64, offset: 64)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 64, elements: !863)
!863 = !{!864}
!864 = !DISubrange(count: 8)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "sin6", scope: !836, file: !833, line: 31, baseType: !866, size: 224)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !851, line: 260, size: 224, elements: !867)
!867 = !{!868, !869, !870, !871, !883}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !866, file: !851, line: 262, baseType: !843, size: 16)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !866, file: !851, line: 263, baseType: !855, size: 16, offset: 16)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !866, file: !851, line: 264, baseType: !636, size: 32, offset: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !866, file: !851, line: 265, baseType: !872, size: 128, offset: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !851, line: 219, size: 128, elements: !873)
!873 = !{!874}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !872, file: !851, line: 226, baseType: !875, size: 128)
!875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !872, file: !851, line: 221, size: 128, elements: !876)
!876 = !{!877, !879, !881}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !875, file: !851, line: 223, baseType: !878, size: 128)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !773, size: 128, elements: !526)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !875, file: !851, line: 224, baseType: !880, size: 128)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 128, elements: !863)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !875, file: !851, line: 225, baseType: !882, size: 128)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !636, size: 128, elements: !463)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !866, file: !851, line: 266, baseType: !636, size: 32, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !836, file: !833, line: 32, baseType: !885, size: 1024)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !840, line: 193, size: 1024, elements: !886)
!886 = !{!887, !888, !892}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !885, file: !840, line: 195, baseType: !843, size: 16)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !885, file: !840, line: 196, baseType: !889, size: 944, offset: 16)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 944, elements: !890)
!890 = !{!891}
!891 = !DISubrange(count: 118)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !885, file: !840, line: 197, baseType: !249, size: 64, offset: 960)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "sunix", scope: !836, file: !833, line: 34, baseType: !894, size: 880)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !895, line: 29, size: 880, elements: !896)
!895 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/un.h", directory: "", checksumkind: CSK_MD5, checksum: "543d98cd612c9215c9333043f81a0cd3")
!896 = !{!897, !898}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !894, file: !895, line: 31, baseType: !843, size: 16)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !894, file: !895, line: 32, baseType: !899, size: 864, offset: 16)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 864, elements: !900)
!900 = !{!901}
!901 = !DISubrange(count: 108)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !832, file: !833, line: 37, baseType: !46, size: 32, offset: 1024)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !832, file: !833, line: 38, baseType: !904, size: 128, offset: 1088)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !832, file: !833, line: 38, size: 128, elements: !905)
!905 = !{!906, !908}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !904, file: !833, line: 38, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !904, file: !833, line: 38, baseType: !907, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "findext", scope: !167, file: !160, line: 182, baseType: !910, size: 64, offset: 2560)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!182, !157, !283, !192, !401, !46, !644, !654, !358, !810, !822, !364, !364}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "setcachestats", scope: !167, file: !160, line: 191, baseType: !914, size: 64, offset: 2624)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!182, !157, !917}
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_stats_t", file: !183, line: 74, baseType: !919)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "isc_stats", file: !183, line: 74, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "hashsize", scope: !167, file: !160, line: 192, baseType: !921, size: 64, offset: 2688)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!247, !157}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "nodefullname", scope: !167, file: !160, line: 193, baseType: !925, size: 64, offset: 2752)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{!182, !157, !655, !358}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "getsize", scope: !167, file: !160, line: 195, baseType: !929, size: 64, offset: 2816)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!182, !157, !192, !932, !932}
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !398, line: 27, baseType: !934)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !223, line: 45, baseType: !249)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "setservestalettl", scope: !167, file: !160, line: 197, baseType: !936, size: 64, offset: 2880)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!182, !157, !635}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "getservestalettl", scope: !167, file: !160, line: 198, baseType: !940, size: 64, offset: 2944)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!182, !157, !943}
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "setgluecachestats", scope: !167, file: !160, line: 199, baseType: !914, size: 64, offset: 3008)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !159, file: !160, line: 227, baseType: !397, size: 16, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !159, file: !160, line: 228, baseType: !396, size: 16, offset: 144)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !159, file: !160, line: 229, baseType: !285, size: 640, offset: 192)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !159, file: !160, line: 230, baseType: !315, size: 64, offset: 832)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "update_listeners", scope: !159, file: !160, line: 231, baseType: !950, size: 128, offset: 896)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !159, file: !160, line: 231, size: 128, elements: !951)
!951 = !{!952, !968}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !950, file: !160, line: 231, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbonupdatelistener_t", file: !53, line: 59, baseType: !955)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_dbonupdatelistener", file: !160, line: 237, size: 256, elements: !956)
!956 = !{!957, !962, !963}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "onupdate", scope: !955, file: !160, line: 238, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbupdate_callback_t", file: !160, line: 209, baseType: !959)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!182, !157, !156}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "onupdate_arg", scope: !955, file: !160, line: 239, baseType: !156, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !955, file: !160, line: 240, baseType: !964, size: 128, offset: 128)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !955, file: !160, line: 240, size: 128, elements: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !964, file: !160, line: 240, baseType: !953, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !964, file: !160, line: 240, baseType: !953, size: 64, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !950, file: !160, line: 231, baseType: !953, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_ecdb_t", file: !2, line: 51, baseType: !971)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_ecdb", file: !2, line: 43, size: 1536, elements: !972)
!972 = !{!973, !974, !1004, !1005}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !971, file: !2, line: 45, baseType: !158, size: 1024)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !971, file: !2, line: 46, baseType: !975, size: 320, offset: 1024)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_mutex_t", file: !976, line: 58, baseType: !977)
!976 = !DIFile(filename: "../../lib/isc/pthreads/include/isc/mutex.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "6b7e8979b3639d755e3f6ba516d0d52d")
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !978, line: 72, baseType: !979)
!978 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!979 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !978, line: 67, size: 320, elements: !980)
!980 = !{!981, !1001, !1003}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !979, file: !978, line: 69, baseType: !982, size: 320)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !983, line: 22, size: 320, elements: !984)
!983 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!984 = !{!985, !986, !987, !988, !989, !990, !992, !993}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !982, file: !983, line: 24, baseType: !201, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !982, file: !983, line: 25, baseType: !46, size: 32, offset: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !982, file: !983, line: 26, baseType: !201, size: 32, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !982, file: !983, line: 28, baseType: !46, size: 32, offset: 96)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !982, file: !983, line: 32, baseType: !201, size: 32, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !982, file: !983, line: 34, baseType: !991, size: 16, offset: 160)
!991 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !982, file: !983, line: 35, baseType: !991, size: 16, offset: 176)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !982, file: !983, line: 36, baseType: !994, size: 128, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !995, line: 55, baseType: !996)
!995 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !995, line: 51, size: 128, elements: !997)
!997 = !{!998, !1000}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !996, file: !995, line: 53, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !996, file: !995, line: 54, baseType: !999, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !979, file: !978, line: 70, baseType: !1002, size: 320)
!1002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 320, elements: !38)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !979, file: !978, line: 71, baseType: !224, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !971, file: !2, line: 49, baseType: !46, size: 32, offset: 1344)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !971, file: !2, line: 50, baseType: !1006, size: 128, offset: 1408)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !2, line: 50, size: 128, elements: !1007)
!1007 = !{!1008, !1040}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1006, file: !2, line: 50, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_ecdbnode", file: !2, line: 53, size: 1408, elements: !1011)
!1011 = !{!1012, !1013, !1014, !1015, !1016, !1021, !1039}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1010, file: !2, line: 55, baseType: !46, size: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1010, file: !2, line: 56, baseType: !975, size: 320, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "ecdb", scope: !1010, file: !2, line: 57, baseType: !969, size: 64, offset: 384)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1010, file: !2, line: 58, baseType: !285, size: 640, offset: 448)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1010, file: !2, line: 59, baseType: !1017, size: 128, offset: 1088)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1010, file: !2, line: 59, size: 128, elements: !1018)
!1018 = !{!1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1017, file: !2, line: 59, baseType: !1009, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1017, file: !2, line: 59, baseType: !1009, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "rdatasets", scope: !1010, file: !2, line: 62, baseType: !1022, size: 128, offset: 1216)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1010, file: !2, line: 62, size: 128, elements: !1023)
!1023 = !{!1024, !1038}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1022, file: !2, line: 62, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rdatasetheader", file: !2, line: 66, size: 256, elements: !1027)
!1027 = !{!1028, !1029, !1030, !1031, !1032, !1033}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1026, file: !2, line: 67, baseType: !401, size: 16)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !1026, file: !2, line: 68, baseType: !635, size: 32, offset: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !1026, file: !2, line: 69, baseType: !430, size: 16, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "covers", scope: !1026, file: !2, line: 70, baseType: !401, size: 16, offset: 80)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1026, file: !2, line: 71, baseType: !46, size: 32, offset: 96)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1026, file: !2, line: 73, baseType: !1034, size: 128, offset: 128)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1026, file: !2, line: 73, size: 128, elements: !1035)
!1035 = !{!1036, !1037}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1034, file: !2, line: 73, baseType: !1025, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1034, file: !2, line: 73, baseType: !1025, size: 64, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1022, file: !2, line: 62, baseType: !1025, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1010, file: !2, line: 63, baseType: !46, size: 32, offset: 1344)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1006, file: !2, line: 50, baseType: !1009, size: 64, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_ecdbnode_t", file: !2, line: 64, baseType: !1010)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1045)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc__magic_t", file: !1046, line: 22, baseType: !1047)
!1046 = !DIFile(filename: "isc/include/isc/magic.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "8ece3f29379e72c0b49c17feca828350")
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1046, line: 20, size: 32, elements: !1048)
!1048 = !{!1049}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1047, file: !1046, line: 21, baseType: !46, size: 32)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "ecdb_rdatasetiter_t", file: !2, line: 120, baseType: !1052)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ecdb_rdatasetiter", file: !2, line: 117, size: 448, elements: !1053)
!1053 = !{!1054, !1055}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1052, file: !2, line: 118, baseType: !699, size: 384)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1052, file: !2, line: 119, baseType: !1056, size: 64, offset: 384)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "rdatasetheader_t", file: !2, line: 74, baseType: !1026)
!1058 = !{!0, !8, !13, !18, !23, !25, !30, !35, !40, !1059, !1064, !1069, !1074, !1079, !1084, !1089, !1091, !1093, !1098, !1100, !1105, !1110, !1112, !1115, !1120, !1122, !1124, !1126, !1131, !1133, !1135, !1137, !1142, !1144, !1149, !1154, !1156, !1161, !1163, !1165, !1170, !1175}
!1059 = !DIGlobalVariableExpression(var: !1060, expr: !DIExpression())
!1060 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !1061, isLocal: true, isDefinition: true)
!1061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 816, elements: !1062)
!1062 = !{!1063}
!1063 = !DISubrange(count: 102)
!1064 = !DIGlobalVariableExpression(var: !1065, expr: !DIExpression())
!1065 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !1066, isLocal: true, isDefinition: true)
!1066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !1067)
!1067 = !{!1068}
!1068 = !DISubrange(count: 48)
!1069 = !DIGlobalVariableExpression(var: !1070, expr: !DIExpression())
!1070 = distinct !DIGlobalVariable(scope: null, file: !2, line: 161, type: !1071, isLocal: true, isDefinition: true)
!1071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, elements: !1072)
!1072 = !{!1073}
!1073 = !DISubrange(count: 59)
!1074 = !DIGlobalVariableExpression(var: !1075, expr: !DIExpression())
!1075 = distinct !DIGlobalVariable(scope: null, file: !2, line: 163, type: !1076, isLocal: true, isDefinition: true)
!1076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !1077)
!1077 = !{!1078}
!1078 = !DISubrange(count: 61)
!1079 = !DIGlobalVariableExpression(var: !1080, expr: !DIExpression())
!1080 = distinct !DIGlobalVariable(scope: null, file: !2, line: 191, type: !1081, isLocal: true, isDefinition: true)
!1081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !1082)
!1082 = !{!1083}
!1083 = !DISubrange(count: 18)
!1084 = !DIGlobalVariableExpression(var: !1085, expr: !DIExpression())
!1085 = distinct !DIGlobalVariable(scope: null, file: !2, line: 176, type: !1086, isLocal: true, isDefinition: true)
!1086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !1087)
!1087 = !{!1088}
!1088 = !DISubrange(count: 42)
!1089 = !DIGlobalVariableExpression(var: !1090, expr: !DIExpression())
!1090 = distinct !DIGlobalVariable(scope: null, file: !2, line: 343, type: !15, isLocal: true, isDefinition: true)
!1091 = !DIGlobalVariableExpression(var: !1092, expr: !DIExpression())
!1092 = distinct !DIGlobalVariable(scope: null, file: !2, line: 362, type: !1086, isLocal: true, isDefinition: true)
!1093 = !DIGlobalVariableExpression(var: !1094, expr: !DIExpression())
!1094 = distinct !DIGlobalVariable(scope: null, file: !2, line: 213, type: !1095, isLocal: true, isDefinition: true)
!1095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1344, elements: !1096)
!1096 = !{!1097}
!1097 = !DISubrange(count: 168)
!1098 = !DIGlobalVariableExpression(var: !1099, expr: !DIExpression())
!1099 = distinct !DIGlobalVariable(scope: null, file: !2, line: 216, type: !1071, isLocal: true, isDefinition: true)
!1100 = !DIGlobalVariableExpression(var: !1101, expr: !DIExpression())
!1101 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !1102, isLocal: true, isDefinition: true)
!1102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !1103)
!1103 = !{!1104}
!1104 = !DISubrange(count: 21)
!1105 = !DIGlobalVariableExpression(var: !1106, expr: !DIExpression())
!1106 = distinct !DIGlobalVariable(scope: null, file: !2, line: 219, type: !1107, isLocal: true, isDefinition: true)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !1108)
!1108 = !{!1109}
!1109 = !DISubrange(count: 22)
!1110 = !DIGlobalVariableExpression(var: !1111, expr: !DIExpression())
!1111 = distinct !DIGlobalVariable(scope: null, file: !2, line: 220, type: !1076, isLocal: true, isDefinition: true)
!1112 = !DIGlobalVariableExpression(var: !1113, expr: !DIExpression())
!1113 = distinct !DIGlobalVariable(scope: null, file: !2, line: 268, type: !1114, isLocal: true, isDefinition: true)
!1114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !253)
!1115 = !DIGlobalVariableExpression(var: !1116, expr: !DIExpression())
!1116 = distinct !DIGlobalVariable(scope: null, file: !2, line: 235, type: !1117, isLocal: true, isDefinition: true)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !1118)
!1118 = !{!1119}
!1119 = !DISubrange(count: 29)
!1120 = !DIGlobalVariableExpression(var: !1121, expr: !DIExpression())
!1121 = distinct !DIGlobalVariable(scope: null, file: !2, line: 235, type: !1117, isLocal: true, isDefinition: true)
!1122 = !DIGlobalVariableExpression(var: !1123, expr: !DIExpression())
!1123 = distinct !DIGlobalVariable(scope: null, file: !2, line: 235, type: !1117, isLocal: true, isDefinition: true)
!1124 = !DIGlobalVariableExpression(var: !1125, expr: !DIExpression())
!1125 = distinct !DIGlobalVariable(scope: null, file: !2, line: 235, type: !1117, isLocal: true, isDefinition: true)
!1126 = !DIGlobalVariableExpression(var: !1127, expr: !DIExpression())
!1127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 245, type: !1128, isLocal: true, isDefinition: true)
!1128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !1129)
!1129 = !{!1130}
!1130 = !DISubrange(count: 35)
!1131 = !DIGlobalVariableExpression(var: !1132, expr: !DIExpression())
!1132 = distinct !DIGlobalVariable(scope: null, file: !2, line: 245, type: !1128, isLocal: true, isDefinition: true)
!1133 = !DIGlobalVariableExpression(var: !1134, expr: !DIExpression())
!1134 = distinct !DIGlobalVariable(scope: null, file: !2, line: 245, type: !1128, isLocal: true, isDefinition: true)
!1135 = !DIGlobalVariableExpression(var: !1136, expr: !DIExpression())
!1136 = distinct !DIGlobalVariable(scope: null, file: !2, line: 245, type: !1128, isLocal: true, isDefinition: true)
!1137 = !DIGlobalVariableExpression(var: !1138, expr: !DIExpression())
!1138 = distinct !DIGlobalVariable(scope: null, file: !2, line: 518, type: !1139, isLocal: true, isDefinition: true)
!1139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1408, elements: !1140)
!1140 = !{!1141}
!1141 = !DISubrange(count: 176)
!1142 = !DIGlobalVariableExpression(var: !1143, expr: !DIExpression())
!1143 = distinct !DIGlobalVariable(name: "rdatasetiter_methods", scope: !42, file: !2, line: 128, type: !706, isLocal: true, isDefinition: true)
!1144 = !DIGlobalVariableExpression(var: !1145, expr: !DIExpression())
!1145 = distinct !DIGlobalVariable(scope: null, file: !2, line: 771, type: !1146, isLocal: true, isDefinition: true)
!1146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !1147)
!1147 = !{!1148}
!1148 = !DISubrange(count: 24)
!1149 = !DIGlobalVariableExpression(var: !1150, expr: !DIExpression())
!1150 = distinct !DIGlobalVariable(scope: null, file: !2, line: 772, type: !1151, isLocal: true, isDefinition: true)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1440, elements: !1152)
!1152 = !{!1153}
!1153 = !DISubrange(count: 180)
!1154 = !DIGlobalVariableExpression(var: !1155, expr: !DIExpression())
!1155 = distinct !DIGlobalVariable(scope: null, file: !2, line: 792, type: !1139, isLocal: true, isDefinition: true)
!1156 = !DIGlobalVariableExpression(var: !1157, expr: !DIExpression())
!1157 = distinct !DIGlobalVariable(scope: null, file: !2, line: 393, type: !1158, isLocal: true, isDefinition: true)
!1158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !1159)
!1159 = !{!1160}
!1160 = !DISubrange(count: 37)
!1161 = !DIGlobalVariableExpression(var: !1162, expr: !DIExpression())
!1162 = distinct !DIGlobalVariable(name: "rdataset_methods", scope: !42, file: !2, line: 98, type: !372, isLocal: true, isDefinition: true)
!1163 = !DIGlobalVariableExpression(var: !1164, expr: !DIExpression())
!1164 = distinct !DIGlobalVariable(scope: null, file: !2, line: 705, type: !1081, isLocal: true, isDefinition: true)
!1165 = !DIGlobalVariableExpression(var: !1166, expr: !DIExpression())
!1166 = distinct !DIGlobalVariable(scope: null, file: !2, line: 443, type: !1167, isLocal: true, isDefinition: true)
!1167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !1168)
!1168 = !{!1169}
!1169 = !DISubrange(count: 63)
!1170 = !DIGlobalVariableExpression(var: !1171, expr: !DIExpression())
!1171 = distinct !DIGlobalVariable(scope: null, file: !2, line: 451, type: !1172, isLocal: true, isDefinition: true)
!1172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 552, elements: !1173)
!1173 = !{!1174}
!1174 = !DISubrange(count: 69)
!1175 = !DIGlobalVariableExpression(var: !1176, expr: !DIExpression())
!1176 = distinct !DIGlobalVariable(scope: null, file: !2, line: 479, type: !1177, isLocal: true, isDefinition: true)
!1177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !1178)
!1178 = !{!1179}
!1179 = !DISubrange(count: 65)
!1180 = !{i32 7, !"Dwarf Version", i32 5}
!1181 = !{i32 2, !"Debug Info Version", i32 3}
!1182 = !{i32 1, !"wchar_size", i32 4}
!1183 = !{i32 8, !"PIC Level", i32 2}
!1184 = !{i32 7, !"uwtable", i32 2}
!1185 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!1186 = distinct !DISubprogram(name: "dns_ecdb_register", scope: !2, file: !2, line: 136, type: !1187, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !1193)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!182, !315, !1189}
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbimplementation_t", file: !53, line: 55, baseType: !1192)
!1192 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_dbimplementation", file: !53, line: 55, flags: DIFlagFwdDecl)
!1193 = !{!1194, !1195}
!1194 = !DILocalVariable(name: "mctx", arg: 1, scope: !1186, file: !2, line: 136, type: !315)
!1195 = !DILocalVariable(name: "dbimp", arg: 2, scope: !1186, file: !2, line: 136, type: !1189)
!1196 = !DILocation(line: 136, column: 30, scope: !1186)
!1197 = !DILocation(line: 136, column: 61, scope: !1186)
!1198 = !DILocation(line: 137, column: 2, scope: !1186)
!1199 = !DILocation(line: 138, column: 2, scope: !1186)
!1200 = !DILocation(line: 0, scope: !1186)
!1201 = !DILocation(line: 140, column: 57, scope: !1186)
!1202 = !DILocation(line: 140, column: 63, scope: !1186)
!1203 = !DILocation(line: 140, column: 10, scope: !1186)
!1204 = !DILocation(line: 140, column: 2, scope: !1186)
!1205 = !DISubprogram(name: "isc_assertion_failed", scope: !45, file: !45, line: 37, type: !1206, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{null, !259, !201, !1208, !259}
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_assertiontype_t", file: !45, line: 30, baseType: !44)
!1209 = !DISubprogram(name: "dns_db_register", scope: !160, file: !160, line: 1413, type: !1210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!182, !259, !1212, !156, !315, !1189}
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbcreatefunc_t", file: !160, line: 203, baseType: !1213)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!182, !315, !283, !1216, !396, !46, !1217, !156, !173}
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbtype_t", file: !53, line: 188, baseType: !52)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!1218 = distinct !DISubprogram(name: "dns_ecdb_create", scope: !2, file: !2, line: 591, type: !1214, scopeLine: 594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !1219)
!1219 = !{!1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229}
!1220 = !DILocalVariable(name: "mctx", arg: 1, scope: !1218, file: !2, line: 591, type: !315)
!1221 = !DILocalVariable(name: "origin", arg: 2, scope: !1218, file: !2, line: 591, type: !283)
!1222 = !DILocalVariable(name: "type", arg: 3, scope: !1218, file: !2, line: 591, type: !1216)
!1223 = !DILocalVariable(name: "rdclass", arg: 4, scope: !1218, file: !2, line: 592, type: !396)
!1224 = !DILocalVariable(name: "argc", arg: 5, scope: !1218, file: !2, line: 592, type: !46)
!1225 = !DILocalVariable(name: "argv", arg: 6, scope: !1218, file: !2, line: 592, type: !1217)
!1226 = !DILocalVariable(name: "driverarg", arg: 7, scope: !1218, file: !2, line: 593, type: !156)
!1227 = !DILocalVariable(name: "dbp", arg: 8, scope: !1218, file: !2, line: 593, type: !173)
!1228 = !DILocalVariable(name: "ecdb", scope: !1218, file: !2, line: 595, type: !969)
!1229 = !DILocalVariable(name: "result", scope: !1218, file: !2, line: 596, type: !182)
!1230 = !DILocation(line: 591, column: 28, scope: !1218)
!1231 = !DILocation(line: 591, column: 52, scope: !1218)
!1232 = !DILocation(line: 591, column: 73, scope: !1218)
!1233 = !DILocation(line: 592, column: 20, scope: !1218)
!1234 = !DILocation(line: 592, column: 42, scope: !1218)
!1235 = !DILocation(line: 592, column: 54, scope: !1218)
!1236 = !DILocation(line: 593, column: 9, scope: !1218)
!1237 = !DILocation(line: 593, column: 31, scope: !1218)
!1238 = !DILocation(line: 595, column: 2, scope: !1218)
!1239 = !DILocation(line: 595, column: 14, scope: !1218)
!1240 = !DILocation(line: 596, column: 2, scope: !1218)
!1241 = !DILocation(line: 596, column: 15, scope: !1218)
!1242 = !DILocation(line: 598, column: 2, scope: !1218)
!1243 = !DILocation(line: 599, column: 2, scope: !1218)
!1244 = !DILocation(line: 600, column: 2, scope: !1218)
!1245 = !DILocation(line: 601, column: 2, scope: !1218)
!1246 = !DILocation(line: 0, scope: !1218)
!1247 = !DILocation(line: 603, column: 2, scope: !1218)
!1248 = !DILocation(line: 604, column: 2, scope: !1218)
!1249 = !DILocation(line: 605, column: 2, scope: !1218)
!1250 = !DILocation(line: 607, column: 9, scope: !1218)
!1251 = !DILocation(line: 607, column: 7, scope: !1218)
!1252 = !DILocation(line: 608, column: 6, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 608, column: 6)
!1254 = !DILocation(line: 608, column: 11, scope: !1253)
!1255 = !DILocation(line: 608, column: 6, scope: !1218)
!1256 = !DILocation(line: 609, column: 3, scope: !1253)
!1257 = !DILocation(line: 611, column: 2, scope: !1218)
!1258 = !DILocation(line: 611, column: 8, scope: !1218)
!1259 = !DILocation(line: 611, column: 15, scope: !1218)
!1260 = !DILocation(line: 611, column: 26, scope: !1218)
!1261 = !DILocation(line: 612, column: 25, scope: !1218)
!1262 = !DILocation(line: 612, column: 2, scope: !1218)
!1263 = !DILocation(line: 612, column: 8, scope: !1218)
!1264 = !DILocation(line: 612, column: 15, scope: !1218)
!1265 = !DILocation(line: 612, column: 23, scope: !1218)
!1266 = !DILocation(line: 613, column: 2, scope: !1218)
!1267 = !DILocation(line: 613, column: 8, scope: !1218)
!1268 = !DILocation(line: 613, column: 15, scope: !1218)
!1269 = !DILocation(line: 613, column: 23, scope: !1218)
!1270 = !DILocation(line: 614, column: 17, scope: !1218)
!1271 = !DILocation(line: 614, column: 23, scope: !1218)
!1272 = !DILocation(line: 614, column: 30, scope: !1218)
!1273 = !DILocation(line: 614, column: 2, scope: !1218)
!1274 = !DILocation(line: 615, column: 35, scope: !1218)
!1275 = !DILocation(line: 615, column: 43, scope: !1218)
!1276 = !DILocation(line: 615, column: 50, scope: !1218)
!1277 = !DILocation(line: 615, column: 56, scope: !1218)
!1278 = !DILocation(line: 615, column: 63, scope: !1218)
!1279 = !DILocation(line: 615, column: 11, scope: !1218)
!1280 = !DILocation(line: 615, column: 9, scope: !1218)
!1281 = !DILocation(line: 616, column: 6, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 616, column: 6)
!1283 = !DILocation(line: 616, column: 13, scope: !1282)
!1284 = !DILocation(line: 616, column: 6, scope: !1218)
!1285 = !DILocation(line: 617, column: 3, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1282, file: !2, line: 616, column: 31)
!1287 = !DILocation(line: 617, column: 3, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1286, file: !2, line: 617, column: 3)
!1289 = !DILocation(line: 618, column: 11, scope: !1286)
!1290 = !DILocation(line: 618, column: 3, scope: !1286)
!1291 = !DILocation(line: 621, column: 2, scope: !1218)
!1292 = !DILocation(line: 623, column: 2, scope: !1218)
!1293 = !DILocation(line: 623, column: 8, scope: !1218)
!1294 = !DILocation(line: 623, column: 19, scope: !1218)
!1295 = !DILocation(line: 624, column: 2, scope: !1218)
!1296 = !DILocation(line: 624, column: 2, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 624, column: 2)
!1298 = !DILocation(line: 626, column: 2, scope: !1218)
!1299 = !DILocation(line: 626, column: 8, scope: !1218)
!1300 = !DILocation(line: 626, column: 15, scope: !1218)
!1301 = !DILocation(line: 626, column: 20, scope: !1218)
!1302 = !DILocation(line: 627, column: 17, scope: !1218)
!1303 = !DILocation(line: 627, column: 24, scope: !1218)
!1304 = !DILocation(line: 627, column: 30, scope: !1218)
!1305 = !DILocation(line: 627, column: 37, scope: !1218)
!1306 = !DILocation(line: 627, column: 2, scope: !1218)
!1307 = !DILocation(line: 628, column: 2, scope: !1218)
!1308 = !DILocation(line: 628, column: 8, scope: !1218)
!1309 = !DILocation(line: 628, column: 15, scope: !1218)
!1310 = !DILocation(line: 628, column: 24, scope: !1218)
!1311 = !DILocation(line: 629, column: 2, scope: !1218)
!1312 = !DILocation(line: 629, column: 8, scope: !1218)
!1313 = !DILocation(line: 629, column: 15, scope: !1218)
!1314 = !DILocation(line: 629, column: 21, scope: !1218)
!1315 = !DILocation(line: 631, column: 21, scope: !1218)
!1316 = !DILocation(line: 631, column: 3, scope: !1218)
!1317 = !DILocation(line: 631, column: 7, scope: !1218)
!1318 = !DILocation(line: 633, column: 2, scope: !1218)
!1319 = !DILocation(line: 634, column: 1, scope: !1218)
!1320 = distinct !DISubprogram(name: "dns_ecdb_unregister", scope: !2, file: !2, line: 144, type: !1321, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !1323)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{null, !1189}
!1323 = !{!1324}
!1324 = !DILocalVariable(name: "dbimp", arg: 1, scope: !1320, file: !2, line: 144, type: !1189)
!1325 = !DILocation(line: 144, column: 46, scope: !1320)
!1326 = !DILocation(line: 145, column: 2, scope: !1320)
!1327 = !DILocation(line: 0, scope: !1320)
!1328 = !DILocation(line: 147, column: 20, scope: !1320)
!1329 = !DILocation(line: 147, column: 2, scope: !1320)
!1330 = !DILocation(line: 148, column: 1, scope: !1320)
!1331 = !DISubprogram(name: "dns_db_unregister", scope: !160, file: !160, line: 1439, type: !1321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1332 = !DISubprogram(name: "isc__mem_get", scope: !318, file: !318, line: 630, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1333 = !DISubprogram(name: "dns_name_init", scope: !287, file: !287, line: 208, type: !1334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{null, !358, !291}
!1336 = !DISubprogram(name: "dns_name_dupwithoffsets", scope: !287, file: !287, line: 1050, type: !1337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!182, !283, !315, !358}
!1339 = !DISubprogram(name: "isc__mem_put", scope: !318, file: !318, line: 634, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1340 = !DISubprogram(name: "isc__mutex_init", scope: !976, file: !976, line: 72, type: !1341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{null, !1343, !259, !46}
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!1344 = !DISubprogram(name: "isc_mem_attach", scope: !318, file: !318, line: 299, type: !1345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{null, !315, !339}
!1347 = distinct !DISubprogram(name: "attach", scope: !2, file: !2, line: 155, type: !171, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !1348)
!1348 = !{!1349, !1350, !1351}
!1349 = !DILocalVariable(name: "source", arg: 1, scope: !1347, file: !2, line: 155, type: !157)
!1350 = !DILocalVariable(name: "targetp", arg: 2, scope: !1347, file: !2, line: 155, type: !173)
!1351 = !DILocalVariable(name: "ecdb", scope: !1347, file: !2, line: 156, type: !969)
!1352 = !DILocation(line: 155, column: 18, scope: !1347)
!1353 = !DILocation(line: 155, column: 37, scope: !1347)
!1354 = !DILocation(line: 156, column: 2, scope: !1347)
!1355 = !DILocation(line: 156, column: 14, scope: !1347)
!1356 = !DILocation(line: 156, column: 35, scope: !1347)
!1357 = !DILocation(line: 158, column: 2, scope: !1347)
!1358 = !DILocation(line: 0, scope: !1347)
!1359 = !DILocation(line: 159, column: 2, scope: !1347)
!1360 = !DILocation(line: 161, column: 2, scope: !1347)
!1361 = !DILocation(line: 161, column: 2, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1347, file: !2, line: 161, column: 2)
!1363 = !DILocation(line: 162, column: 2, scope: !1347)
!1364 = !DILocation(line: 162, column: 8, scope: !1347)
!1365 = !DILocation(line: 162, column: 18, scope: !1347)
!1366 = !DILocation(line: 163, column: 2, scope: !1347)
!1367 = !DILocation(line: 163, column: 2, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1347, file: !2, line: 163, column: 2)
!1369 = !DILocation(line: 165, column: 13, scope: !1347)
!1370 = !DILocation(line: 165, column: 3, scope: !1347)
!1371 = !DILocation(line: 165, column: 11, scope: !1347)
!1372 = !DILocation(line: 166, column: 1, scope: !1347)
!1373 = distinct !DISubprogram(name: "detach", scope: !2, file: !2, line: 187, type: !176, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !1374)
!1374 = !{!1375, !1376, !1377}
!1375 = !DILocalVariable(name: "dbp", arg: 1, scope: !1373, file: !2, line: 187, type: !173)
!1376 = !DILocalVariable(name: "ecdb", scope: !1373, file: !2, line: 188, type: !969)
!1377 = !DILocalVariable(name: "need_destroy", scope: !1373, file: !2, line: 189, type: !278)
!1378 = !DILocation(line: 187, column: 19, scope: !1373)
!1379 = !DILocation(line: 188, column: 2, scope: !1373)
!1380 = !DILocation(line: 188, column: 14, scope: !1373)
!1381 = !DILocation(line: 189, column: 2, scope: !1373)
!1382 = !DILocation(line: 189, column: 7, scope: !1373)
!1383 = !DILocation(line: 191, column: 2, scope: !1373)
!1384 = !DILocation(line: 192, column: 24, scope: !1373)
!1385 = !DILocation(line: 192, column: 23, scope: !1373)
!1386 = !DILocation(line: 192, column: 7, scope: !1373)
!1387 = !DILocation(line: 193, column: 2, scope: !1373)
!1388 = !DILocation(line: 0, scope: !1373)
!1389 = !DILocation(line: 195, column: 2, scope: !1373)
!1390 = !DILocation(line: 195, column: 2, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 195, column: 2)
!1392 = !DILocation(line: 196, column: 2, scope: !1373)
!1393 = !DILocation(line: 196, column: 8, scope: !1373)
!1394 = !DILocation(line: 196, column: 18, scope: !1373)
!1395 = !DILocation(line: 197, column: 6, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 197, column: 6)
!1397 = !DILocation(line: 197, column: 12, scope: !1396)
!1398 = !DILocation(line: 197, column: 23, scope: !1396)
!1399 = !DILocation(line: 197, column: 28, scope: !1396)
!1400 = !DILocation(line: 197, column: 31, scope: !1396)
!1401 = !DILocation(line: 197, column: 6, scope: !1373)
!1402 = !DILocation(line: 198, column: 16, scope: !1396)
!1403 = !DILocation(line: 198, column: 3, scope: !1396)
!1404 = !DILocation(line: 199, column: 2, scope: !1373)
!1405 = !DILocation(line: 199, column: 2, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 199, column: 2)
!1407 = !DILocation(line: 201, column: 6, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 201, column: 6)
!1409 = !{i8 0, i8 2}
!1410 = !{}
!1411 = !DILocation(line: 201, column: 6, scope: !1373)
!1412 = !DILocation(line: 202, column: 3, scope: !1408)
!1413 = !DILocation(line: 204, column: 3, scope: !1373)
!1414 = !DILocation(line: 204, column: 7, scope: !1373)
!1415 = !DILocation(line: 205, column: 1, scope: !1373)
!1416 = distinct !DISubprogram(name: "findnode", scope: !2, file: !2, line: 334, type: !281, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !1417)
!1417 = !{!1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425}
!1418 = !DILocalVariable(name: "db", arg: 1, scope: !1416, file: !2, line: 334, type: !157)
!1419 = !DILocalVariable(name: "name", arg: 2, scope: !1416, file: !2, line: 334, type: !283)
!1420 = !DILocalVariable(name: "create", arg: 3, scope: !1416, file: !2, line: 334, type: !278)
!1421 = !DILocalVariable(name: "nodep", arg: 4, scope: !1416, file: !2, line: 335, type: !654)
!1422 = !DILocalVariable(name: "ecdb", scope: !1416, file: !2, line: 337, type: !969)
!1423 = !DILocalVariable(name: "mctx", scope: !1416, file: !2, line: 338, type: !315)
!1424 = !DILocalVariable(name: "node", scope: !1416, file: !2, line: 339, type: !1041)
!1425 = !DILocalVariable(name: "result", scope: !1416, file: !2, line: 340, type: !182)
!1426 = !DILocation(line: 334, column: 20, scope: !1416)
!1427 = !DILocation(line: 334, column: 42, scope: !1416)
!1428 = !DILocation(line: 334, column: 53, scope: !1416)
!1429 = !DILocation(line: 335, column: 18, scope: !1416)
!1430 = !DILocation(line: 337, column: 2, scope: !1416)
!1431 = !DILocation(line: 337, column: 14, scope: !1416)
!1432 = !DILocation(line: 337, column: 35, scope: !1416)
!1433 = !DILocation(line: 338, column: 2, scope: !1416)
!1434 = !DILocation(line: 338, column: 13, scope: !1416)
!1435 = !DILocation(line: 339, column: 2, scope: !1416)
!1436 = !DILocation(line: 339, column: 18, scope: !1416)
!1437 = !DILocation(line: 340, column: 2, scope: !1416)
!1438 = !DILocation(line: 340, column: 15, scope: !1416)
!1439 = !DILocation(line: 342, column: 2, scope: !1416)
!1440 = !DILocation(line: 0, scope: !1416)
!1441 = !DILocation(line: 343, column: 2, scope: !1416)
!1442 = !DILocation(line: 345, column: 2, scope: !1416)
!1443 = !DILocation(line: 347, column: 6, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 347, column: 6)
!1445 = !DILocation(line: 347, column: 13, scope: !1444)
!1446 = !DILocation(line: 347, column: 6, scope: !1416)
!1447 = !DILocation(line: 349, column: 3, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1444, file: !2, line: 347, column: 22)
!1449 = !DILocation(line: 352, column: 9, scope: !1416)
!1450 = !DILocation(line: 352, column: 15, scope: !1416)
!1451 = !DILocation(line: 352, column: 22, scope: !1416)
!1452 = !DILocation(line: 352, column: 7, scope: !1416)
!1453 = !DILocation(line: 353, column: 9, scope: !1416)
!1454 = !DILocation(line: 353, column: 7, scope: !1416)
!1455 = !DILocation(line: 354, column: 6, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 354, column: 6)
!1457 = !DILocation(line: 354, column: 11, scope: !1456)
!1458 = !DILocation(line: 354, column: 6, scope: !1416)
!1459 = !DILocation(line: 355, column: 3, scope: !1456)
!1460 = !DILocation(line: 357, column: 2, scope: !1416)
!1461 = !DILocation(line: 359, column: 17, scope: !1416)
!1462 = !DILocation(line: 359, column: 23, scope: !1416)
!1463 = !DILocation(line: 359, column: 2, scope: !1416)
!1464 = !DILocation(line: 360, column: 24, scope: !1416)
!1465 = !DILocation(line: 360, column: 30, scope: !1416)
!1466 = !DILocation(line: 360, column: 37, scope: !1416)
!1467 = !DILocation(line: 360, column: 43, scope: !1416)
!1468 = !DILocation(line: 360, column: 11, scope: !1416)
!1469 = !DILocation(line: 360, column: 9, scope: !1416)
!1470 = !DILocation(line: 361, column: 6, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 361, column: 6)
!1472 = !DILocation(line: 361, column: 13, scope: !1471)
!1473 = !DILocation(line: 361, column: 6, scope: !1416)
!1474 = !DILocation(line: 362, column: 3, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1471, file: !2, line: 361, column: 31)
!1476 = !DILocation(line: 363, column: 3, scope: !1475)
!1477 = !DILocation(line: 363, column: 3, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1475, file: !2, line: 363, column: 3)
!1479 = !DILocation(line: 364, column: 11, scope: !1475)
!1480 = !DILocation(line: 364, column: 3, scope: !1475)
!1481 = !DILocation(line: 366, column: 14, scope: !1416)
!1482 = !DILocation(line: 366, column: 2, scope: !1416)
!1483 = !DILocation(line: 366, column: 8, scope: !1416)
!1484 = !DILocation(line: 366, column: 12, scope: !1416)
!1485 = !DILocation(line: 367, column: 2, scope: !1416)
!1486 = !DILocation(line: 367, column: 8, scope: !1416)
!1487 = !DILocation(line: 367, column: 19, scope: !1416)
!1488 = !DILocation(line: 368, column: 2, scope: !1416)
!1489 = !DILocation(line: 368, column: 2, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 368, column: 2)
!1491 = !DILocation(line: 370, column: 2, scope: !1416)
!1492 = !DILocation(line: 370, column: 2, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 370, column: 2)
!1494 = !DILocation(line: 372, column: 2, scope: !1416)
!1495 = !DILocation(line: 372, column: 2, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 372, column: 2)
!1497 = !DILocation(line: 373, column: 2, scope: !1416)
!1498 = !DILocation(line: 373, column: 2, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 373, column: 2)
!1500 = !DILocation(line: 373, column: 2, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !2, line: 373, column: 2)
!1502 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 373, column: 2)
!1503 = !DILocation(line: 373, column: 2, scope: !1502)
!1504 = !DILocation(line: 374, column: 2, scope: !1416)
!1505 = !DILocation(line: 374, column: 2, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 374, column: 2)
!1507 = !DILocation(line: 376, column: 2, scope: !1416)
!1508 = !DILocation(line: 376, column: 8, scope: !1416)
!1509 = !DILocation(line: 376, column: 14, scope: !1416)
!1510 = !DILocation(line: 378, column: 11, scope: !1416)
!1511 = !DILocation(line: 378, column: 3, scope: !1416)
!1512 = !DILocation(line: 378, column: 9, scope: !1416)
!1513 = !DILocation(line: 380, column: 2, scope: !1416)
!1514 = !DILocation(line: 381, column: 1, scope: !1416)
!1515 = distinct !DISubprogram(name: "find", scope: !2, file: !2, line: 288, type: !659, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !1516)
!1516 = !{!1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527}
!1517 = !DILocalVariable(name: "db", arg: 1, scope: !1515, file: !2, line: 288, type: !157)
!1518 = !DILocalVariable(name: "name", arg: 2, scope: !1515, file: !2, line: 288, type: !283)
!1519 = !DILocalVariable(name: "version", arg: 3, scope: !1515, file: !2, line: 288, type: !192)
!1520 = !DILocalVariable(name: "type", arg: 4, scope: !1515, file: !2, line: 289, type: !401)
!1521 = !DILocalVariable(name: "options", arg: 5, scope: !1515, file: !2, line: 289, type: !46)
!1522 = !DILocalVariable(name: "now", arg: 6, scope: !1515, file: !2, line: 289, type: !644)
!1523 = !DILocalVariable(name: "nodep", arg: 7, scope: !1515, file: !2, line: 290, type: !654)
!1524 = !DILocalVariable(name: "foundname", arg: 8, scope: !1515, file: !2, line: 290, type: !358)
!1525 = !DILocalVariable(name: "rdataset", arg: 9, scope: !1515, file: !2, line: 290, type: !364)
!1526 = !DILocalVariable(name: "sigrdataset", arg: 10, scope: !1515, file: !2, line: 291, type: !364)
!1527 = !DILocalVariable(name: "ecdb", scope: !1515, file: !2, line: 293, type: !969)
!1528 = !DILocation(line: 288, column: 16, scope: !1515)
!1529 = !DILocation(line: 288, column: 38, scope: !1515)
!1530 = !DILocation(line: 288, column: 61, scope: !1515)
!1531 = !DILocation(line: 289, column: 21, scope: !1515)
!1532 = !DILocation(line: 289, column: 40, scope: !1515)
!1533 = !DILocation(line: 289, column: 63, scope: !1515)
!1534 = !DILocation(line: 290, column: 20, scope: !1515)
!1535 = !DILocation(line: 290, column: 39, scope: !1515)
!1536 = !DILocation(line: 290, column: 66, scope: !1515)
!1537 = !DILocation(line: 291, column: 21, scope: !1515)
!1538 = !DILocation(line: 293, column: 2, scope: !1515)
!1539 = !DILocation(line: 293, column: 14, scope: !1515)
!1540 = !DILocation(line: 293, column: 35, scope: !1515)
!1541 = !DILocation(line: 295, column: 2, scope: !1515)
!1542 = !DILocation(line: 0, scope: !1515)
!1543 = !DILocation(line: 297, column: 2, scope: !1515)
!1544 = !DILocation(line: 298, column: 2, scope: !1515)
!1545 = !DILocation(line: 299, column: 2, scope: !1515)
!1546 = !DILocation(line: 300, column: 2, scope: !1515)
!1547 = !DILocation(line: 301, column: 2, scope: !1515)
!1548 = !DILocation(line: 302, column: 2, scope: !1515)
!1549 = !DILocation(line: 303, column: 2, scope: !1515)
!1550 = !DILocation(line: 304, column: 2, scope: !1515)
!1551 = !DILocation(line: 305, column: 2, scope: !1515)
!1552 = !DILocation(line: 308, column: 1, scope: !1515)
!1553 = !DILocation(line: 307, column: 2, scope: !1515)
!1554 = distinct !DISubprogram(name: "findzonecut", scope: !2, file: !2, line: 311, type: !663, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !1555)
!1555 = !{!1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565}
!1556 = !DILocalVariable(name: "db", arg: 1, scope: !1554, file: !2, line: 311, type: !157)
!1557 = !DILocalVariable(name: "name", arg: 2, scope: !1554, file: !2, line: 311, type: !283)
!1558 = !DILocalVariable(name: "options", arg: 3, scope: !1554, file: !2, line: 312, type: !46)
!1559 = !DILocalVariable(name: "now", arg: 4, scope: !1554, file: !2, line: 312, type: !644)
!1560 = !DILocalVariable(name: "nodep", arg: 5, scope: !1554, file: !2, line: 313, type: !654)
!1561 = !DILocalVariable(name: "foundname", arg: 6, scope: !1554, file: !2, line: 313, type: !358)
!1562 = !DILocalVariable(name: "dcname", arg: 7, scope: !1554, file: !2, line: 314, type: !358)
!1563 = !DILocalVariable(name: "rdataset", arg: 8, scope: !1554, file: !2, line: 314, type: !364)
!1564 = !DILocalVariable(name: "sigrdataset", arg: 9, scope: !1554, file: !2, line: 315, type: !364)
!1565 = !DILocalVariable(name: "ecdb", scope: !1554, file: !2, line: 317, type: !969)
!1566 = !DILocation(line: 311, column: 23, scope: !1554)
!1567 = !DILocation(line: 311, column: 45, scope: !1554)
!1568 = !DILocation(line: 312, column: 19, scope: !1554)
!1569 = !DILocation(line: 312, column: 42, scope: !1554)
!1570 = !DILocation(line: 313, column: 21, scope: !1554)
!1571 = !DILocation(line: 313, column: 40, scope: !1554)
!1572 = !DILocation(line: 314, column: 18, scope: !1554)
!1573 = !DILocation(line: 314, column: 42, scope: !1554)
!1574 = !DILocation(line: 315, column: 22, scope: !1554)
!1575 = !DILocation(line: 317, column: 2, scope: !1554)
!1576 = !DILocation(line: 317, column: 14, scope: !1554)
!1577 = !DILocation(line: 317, column: 35, scope: !1554)
!1578 = !DILocation(line: 319, column: 2, scope: !1554)
!1579 = !DILocation(line: 0, scope: !1554)
!1580 = !DILocation(line: 321, column: 2, scope: !1554)
!1581 = !DILocation(line: 322, column: 2, scope: !1554)
!1582 = !DILocation(line: 323, column: 2, scope: !1554)
!1583 = !DILocation(line: 324, column: 2, scope: !1554)
!1584 = !DILocation(line: 325, column: 2, scope: !1554)
!1585 = !DILocation(line: 326, column: 2, scope: !1554)
!1586 = !DILocation(line: 327, column: 2, scope: !1554)
!1587 = !DILocation(line: 328, column: 2, scope: !1554)
!1588 = !DILocation(line: 331, column: 1, scope: !1554)
!1589 = !DILocation(line: 330, column: 2, scope: !1554)
!1590 = distinct !DISubprogram(name: "attachnode", scope: !2, file: !2, line: 208, type: !667, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !1591)
!1591 = !{!1592, !1593, !1594, !1595, !1596}
!1592 = !DILocalVariable(name: "db", arg: 1, scope: !1590, file: !2, line: 208, type: !157)
!1593 = !DILocalVariable(name: "source", arg: 2, scope: !1590, file: !2, line: 208, type: !655)
!1594 = !DILocalVariable(name: "targetp", arg: 3, scope: !1590, file: !2, line: 208, type: !654)
!1595 = !DILocalVariable(name: "ecdb", scope: !1590, file: !2, line: 209, type: !969)
!1596 = !DILocalVariable(name: "node", scope: !1590, file: !2, line: 210, type: !1041)
!1597 = !DILocation(line: 208, column: 22, scope: !1590)
!1598 = !DILocation(line: 208, column: 40, scope: !1590)
!1599 = !DILocation(line: 208, column: 63, scope: !1590)
!1600 = !DILocation(line: 209, column: 2, scope: !1590)
!1601 = !DILocation(line: 209, column: 14, scope: !1590)
!1602 = !DILocation(line: 209, column: 35, scope: !1590)
!1603 = !DILocation(line: 210, column: 2, scope: !1590)
!1604 = !DILocation(line: 210, column: 18, scope: !1590)
!1605 = !DILocation(line: 210, column: 43, scope: !1590)
!1606 = !DILocation(line: 212, column: 2, scope: !1590)
!1607 = !DILocation(line: 0, scope: !1590)
!1608 = !DILocation(line: 213, column: 2, scope: !1590)
!1609 = !DILocation(line: 214, column: 2, scope: !1590)
!1610 = !DILocation(line: 216, column: 2, scope: !1590)
!1611 = !DILocation(line: 216, column: 2, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1590, file: !2, line: 216, column: 2)
!1613 = !DILocation(line: 217, column: 2, scope: !1590)
!1614 = !DILocation(line: 218, column: 2, scope: !1590)
!1615 = !DILocation(line: 218, column: 8, scope: !1590)
!1616 = !DILocation(line: 218, column: 18, scope: !1590)
!1617 = !DILocation(line: 219, column: 2, scope: !1590)
!1618 = !DILocation(line: 220, column: 2, scope: !1590)
!1619 = !DILocation(line: 220, column: 2, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1590, file: !2, line: 220, column: 2)
!1621 = !DILocation(line: 222, column: 13, scope: !1590)
!1622 = !DILocation(line: 222, column: 3, scope: !1590)
!1623 = !DILocation(line: 222, column: 11, scope: !1590)
!1624 = !DILocation(line: 223, column: 1, scope: !1590)
!1625 = distinct !DISubprogram(name: "detachnode", scope: !2, file: !2, line: 262, type: !671, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !1626)
!1626 = !{!1627, !1628, !1629, !1630, !1631}
!1627 = !DILocalVariable(name: "db", arg: 1, scope: !1625, file: !2, line: 262, type: !157)
!1628 = !DILocalVariable(name: "nodep", arg: 2, scope: !1625, file: !2, line: 262, type: !654)
!1629 = !DILocalVariable(name: "ecdb", scope: !1625, file: !2, line: 263, type: !969)
!1630 = !DILocalVariable(name: "node", scope: !1625, file: !2, line: 264, type: !1041)
!1631 = !DILocalVariable(name: "need_destroy", scope: !1625, file: !2, line: 265, type: !278)
!1632 = !DILocation(line: 262, column: 22, scope: !1625)
!1633 = !DILocation(line: 262, column: 41, scope: !1625)
!1634 = !DILocation(line: 263, column: 2, scope: !1625)
!1635 = !DILocation(line: 263, column: 14, scope: !1625)
!1636 = !DILocation(line: 263, column: 35, scope: !1625)
!1637 = !DILocation(line: 264, column: 2, scope: !1625)
!1638 = !DILocation(line: 264, column: 18, scope: !1625)
!1639 = !DILocation(line: 265, column: 2, scope: !1625)
!1640 = !DILocation(line: 265, column: 7, scope: !1625)
!1641 = !DILocation(line: 267, column: 2, scope: !1625)
!1642 = !DILocation(line: 0, scope: !1625)
!1643 = !DILocation(line: 268, column: 2, scope: !1625)
!1644 = !DILocation(line: 269, column: 28, scope: !1625)
!1645 = !DILocation(line: 269, column: 27, scope: !1625)
!1646 = !DILocation(line: 269, column: 7, scope: !1625)
!1647 = !DILocation(line: 270, column: 2, scope: !1625)
!1648 = !DILocation(line: 272, column: 2, scope: !1625)
!1649 = !DILocation(line: 274, column: 2, scope: !1625)
!1650 = !DILocation(line: 274, column: 2, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1625, file: !2, line: 274, column: 2)
!1652 = !DILocation(line: 275, column: 2, scope: !1625)
!1653 = !DILocation(line: 276, column: 2, scope: !1625)
!1654 = !DILocation(line: 276, column: 8, scope: !1625)
!1655 = !DILocation(line: 276, column: 18, scope: !1625)
!1656 = !DILocation(line: 277, column: 6, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1625, file: !2, line: 277, column: 6)
!1658 = !DILocation(line: 277, column: 12, scope: !1657)
!1659 = !DILocation(line: 277, column: 23, scope: !1657)
!1660 = !DILocation(line: 277, column: 6, scope: !1625)
!1661 = !DILocation(line: 278, column: 16, scope: !1657)
!1662 = !DILocation(line: 278, column: 3, scope: !1657)
!1663 = !DILocation(line: 279, column: 2, scope: !1625)
!1664 = !DILocation(line: 279, column: 2, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1625, file: !2, line: 279, column: 2)
!1666 = !DILocation(line: 281, column: 6, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1625, file: !2, line: 281, column: 6)
!1668 = !DILocation(line: 281, column: 6, scope: !1625)
!1669 = !DILocation(line: 282, column: 15, scope: !1667)
!1670 = !DILocation(line: 282, column: 3, scope: !1667)
!1671 = !DILocation(line: 284, column: 3, scope: !1625)
!1672 = !DILocation(line: 284, column: 9, scope: !1625)
!1673 = !DILocation(line: 285, column: 1, scope: !1625)
!1674 = distinct !DISubprogram(name: "createiterator", scope: !2, file: !2, line: 498, type: !683, scopeLine: 500, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !1675)
!1675 = !{!1676, !1677, !1678}
!1676 = !DILocalVariable(name: "db", arg: 1, scope: !1674, file: !2, line: 498, type: !157)
!1677 = !DILocalVariable(name: "options", arg: 2, scope: !1674, file: !2, line: 498, type: !46)
!1678 = !DILocalVariable(name: "iteratorp", arg: 3, scope: !1674, file: !2, line: 499, type: !685)
!1679 = !DILocation(line: 498, column: 26, scope: !1674)
!1680 = !DILocation(line: 498, column: 43, scope: !1674)
!1681 = !DILocation(line: 499, column: 28, scope: !1674)
!1682 = !DILocation(line: 501, column: 2, scope: !1674)
!1683 = !DILocation(line: 502, column: 2, scope: !1674)
!1684 = !DILocation(line: 503, column: 2, scope: !1674)
!1685 = !DILocation(line: 505, column: 2, scope: !1674)
!1686 = distinct !DISubprogram(name: "allrdatasets", scope: !2, file: !2, line: 509, type: !695, scopeLine: 511, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !1687)
!1687 = !{!1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696}
!1688 = !DILocalVariable(name: "db", arg: 1, scope: !1686, file: !2, line: 509, type: !157)
!1689 = !DILocalVariable(name: "node", arg: 2, scope: !1686, file: !2, line: 509, type: !655)
!1690 = !DILocalVariable(name: "version", arg: 3, scope: !1686, file: !2, line: 509, type: !192)
!1691 = !DILocalVariable(name: "now", arg: 4, scope: !1686, file: !2, line: 510, type: !644)
!1692 = !DILocalVariable(name: "iteratorp", arg: 5, scope: !1686, file: !2, line: 510, type: !697)
!1693 = !DILocalVariable(name: "ecdb", scope: !1686, file: !2, line: 512, type: !969)
!1694 = !DILocalVariable(name: "ecdbnode", scope: !1686, file: !2, line: 513, type: !1041)
!1695 = !DILocalVariable(name: "mctx", scope: !1686, file: !2, line: 514, type: !315)
!1696 = !DILocalVariable(name: "iterator", scope: !1686, file: !2, line: 515, type: !1050)
!1697 = !DILocation(line: 509, column: 24, scope: !1686)
!1698 = !DILocation(line: 509, column: 42, scope: !1686)
!1699 = !DILocation(line: 509, column: 65, scope: !1686)
!1700 = !DILocation(line: 510, column: 21, scope: !1686)
!1701 = !DILocation(line: 510, column: 47, scope: !1686)
!1702 = !DILocation(line: 512, column: 2, scope: !1686)
!1703 = !DILocation(line: 512, column: 14, scope: !1686)
!1704 = !DILocation(line: 512, column: 35, scope: !1686)
!1705 = !DILocation(line: 513, column: 2, scope: !1686)
!1706 = !DILocation(line: 513, column: 18, scope: !1686)
!1707 = !DILocation(line: 513, column: 47, scope: !1686)
!1708 = !DILocation(line: 514, column: 2, scope: !1686)
!1709 = !DILocation(line: 514, column: 13, scope: !1686)
!1710 = !DILocation(line: 515, column: 2, scope: !1686)
!1711 = !DILocation(line: 515, column: 23, scope: !1686)
!1712 = !DILocation(line: 517, column: 2, scope: !1686)
!1713 = !DILocation(line: 0, scope: !1686)
!1714 = !DILocation(line: 518, column: 2, scope: !1686)
!1715 = !DILocation(line: 520, column: 9, scope: !1686)
!1716 = !DILocation(line: 520, column: 15, scope: !1686)
!1717 = !DILocation(line: 520, column: 22, scope: !1686)
!1718 = !DILocation(line: 520, column: 7, scope: !1686)
!1719 = !DILocation(line: 522, column: 13, scope: !1686)
!1720 = !DILocation(line: 522, column: 11, scope: !1686)
!1721 = !DILocation(line: 523, column: 6, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1686, file: !2, line: 523, column: 6)
!1723 = !DILocation(line: 523, column: 15, scope: !1722)
!1724 = !DILocation(line: 523, column: 6, scope: !1686)
!1725 = !DILocation(line: 524, column: 3, scope: !1722)
!1726 = !DILocation(line: 526, column: 2, scope: !1686)
!1727 = !DILocation(line: 526, column: 12, scope: !1686)
!1728 = !DILocation(line: 526, column: 19, scope: !1686)
!1729 = !DILocation(line: 526, column: 25, scope: !1686)
!1730 = !DILocation(line: 527, column: 2, scope: !1686)
!1731 = !DILocation(line: 527, column: 12, scope: !1686)
!1732 = !DILocation(line: 527, column: 19, scope: !1686)
!1733 = !DILocation(line: 527, column: 27, scope: !1686)
!1734 = !DILocation(line: 528, column: 24, scope: !1686)
!1735 = !DILocation(line: 528, column: 2, scope: !1686)
!1736 = !DILocation(line: 528, column: 12, scope: !1686)
!1737 = !DILocation(line: 528, column: 19, scope: !1686)
!1738 = !DILocation(line: 528, column: 22, scope: !1686)
!1739 = !DILocation(line: 529, column: 2, scope: !1686)
!1740 = !DILocation(line: 529, column: 12, scope: !1686)
!1741 = !DILocation(line: 529, column: 19, scope: !1686)
!1742 = !DILocation(line: 529, column: 24, scope: !1686)
!1743 = !DILocation(line: 530, column: 13, scope: !1686)
!1744 = !DILocation(line: 530, column: 17, scope: !1686)
!1745 = !DILocation(line: 530, column: 24, scope: !1686)
!1746 = !DILocation(line: 530, column: 34, scope: !1686)
!1747 = !DILocation(line: 530, column: 41, scope: !1686)
!1748 = !DILocation(line: 530, column: 2, scope: !1686)
!1749 = !DILocation(line: 531, column: 29, scope: !1686)
!1750 = !DILocation(line: 531, column: 2, scope: !1686)
!1751 = !DILocation(line: 531, column: 12, scope: !1686)
!1752 = !DILocation(line: 531, column: 19, scope: !1686)
!1753 = !DILocation(line: 531, column: 27, scope: !1686)
!1754 = !DILocation(line: 532, column: 25, scope: !1686)
!1755 = !DILocation(line: 532, column: 2, scope: !1686)
!1756 = !DILocation(line: 532, column: 12, scope: !1686)
!1757 = !DILocation(line: 532, column: 19, scope: !1686)
!1758 = !DILocation(line: 532, column: 23, scope: !1686)
!1759 = !DILocation(line: 534, column: 37, scope: !1686)
!1760 = !DILocation(line: 534, column: 3, scope: !1686)
!1761 = !DILocation(line: 534, column: 13, scope: !1686)
!1762 = !DILocation(line: 536, column: 2, scope: !1686)
!1763 = !DILocation(line: 537, column: 1, scope: !1686)
!1764 = distinct !DISubprogram(name: "addrdataset", scope: !2, file: !2, line: 423, type: !728, scopeLine: 426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !1765)
!1765 = !{!1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779}
!1766 = !DILocalVariable(name: "db", arg: 1, scope: !1764, file: !2, line: 423, type: !157)
!1767 = !DILocalVariable(name: "node", arg: 2, scope: !1764, file: !2, line: 423, type: !655)
!1768 = !DILocalVariable(name: "version", arg: 3, scope: !1764, file: !2, line: 423, type: !192)
!1769 = !DILocalVariable(name: "now", arg: 4, scope: !1764, file: !2, line: 424, type: !644)
!1770 = !DILocalVariable(name: "rdataset", arg: 5, scope: !1764, file: !2, line: 424, type: !364)
!1771 = !DILocalVariable(name: "options", arg: 6, scope: !1764, file: !2, line: 424, type: !46)
!1772 = !DILocalVariable(name: "addedrdataset", arg: 7, scope: !1764, file: !2, line: 425, type: !364)
!1773 = !DILocalVariable(name: "ecdb", scope: !1764, file: !2, line: 427, type: !969)
!1774 = !DILocalVariable(name: "r", scope: !1764, file: !2, line: 428, type: !515)
!1775 = !DILocalVariable(name: "result", scope: !1764, file: !2, line: 429, type: !182)
!1776 = !DILocalVariable(name: "mctx", scope: !1764, file: !2, line: 430, type: !315)
!1777 = !DILocalVariable(name: "ecdbnode", scope: !1764, file: !2, line: 431, type: !1041)
!1778 = !DILocalVariable(name: "header", scope: !1764, file: !2, line: 432, type: !1056)
!1779 = !DILabel(scope: !1764, name: "unlock", file: !2, line: 478)
!1780 = !DILocation(line: 423, column: 23, scope: !1764)
!1781 = !DILocation(line: 423, column: 41, scope: !1764)
!1782 = !DILocation(line: 423, column: 64, scope: !1764)
!1783 = !DILocation(line: 424, column: 20, scope: !1764)
!1784 = !DILocation(line: 424, column: 41, scope: !1764)
!1785 = !DILocation(line: 424, column: 64, scope: !1764)
!1786 = !DILocation(line: 425, column: 22, scope: !1764)
!1787 = !DILocation(line: 427, column: 2, scope: !1764)
!1788 = !DILocation(line: 427, column: 14, scope: !1764)
!1789 = !DILocation(line: 427, column: 35, scope: !1764)
!1790 = !DILocation(line: 428, column: 2, scope: !1764)
!1791 = !DILocation(line: 428, column: 15, scope: !1764)
!1792 = !DILocation(line: 429, column: 2, scope: !1764)
!1793 = !DILocation(line: 429, column: 15, scope: !1764)
!1794 = !DILocation(line: 430, column: 2, scope: !1764)
!1795 = !DILocation(line: 430, column: 13, scope: !1764)
!1796 = !DILocation(line: 431, column: 2, scope: !1764)
!1797 = !DILocation(line: 431, column: 18, scope: !1764)
!1798 = !DILocation(line: 431, column: 47, scope: !1764)
!1799 = !DILocation(line: 432, column: 2, scope: !1764)
!1800 = !DILocation(line: 432, column: 20, scope: !1764)
!1801 = !DILocation(line: 434, column: 2, scope: !1764)
!1802 = !DILocation(line: 0, scope: !1764)
!1803 = !DILocation(line: 435, column: 2, scope: !1764)
!1804 = !DILocation(line: 437, column: 2, scope: !1764)
!1805 = !DILocation(line: 438, column: 2, scope: !1764)
!1806 = !DILocation(line: 439, column: 2, scope: !1764)
!1807 = !DILocation(line: 441, column: 9, scope: !1764)
!1808 = !DILocation(line: 441, column: 15, scope: !1764)
!1809 = !DILocation(line: 441, column: 22, scope: !1764)
!1810 = !DILocation(line: 441, column: 7, scope: !1764)
!1811 = !DILocation(line: 443, column: 2, scope: !1764)
!1812 = !DILocation(line: 443, column: 2, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1764, file: !2, line: 443, column: 2)
!1814 = !DILocation(line: 449, column: 16, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1764, file: !2, line: 449, column: 2)
!1816 = !DILocation(line: 449, column: 14, scope: !1815)
!1817 = !DILocation(line: 449, column: 7, scope: !1815)
!1818 = !DILocation(line: 449, column: 52, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1815, file: !2, line: 449, column: 2)
!1820 = !DILocation(line: 449, column: 59, scope: !1819)
!1821 = !DILocation(line: 449, column: 2, scope: !1815)
!1822 = !DILocation(line: 451, column: 3, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1819, file: !2, line: 450, column: 45)
!1824 = !DILocation(line: 453, column: 2, scope: !1823)
!1825 = !DILocation(line: 450, column: 16, scope: !1819)
!1826 = !DILocation(line: 450, column: 14, scope: !1819)
!1827 = !DILocation(line: 449, column: 2, scope: !1819)
!1828 = distinct !{!1828, !1821, !1829, !1830}
!1829 = !DILocation(line: 453, column: 2, scope: !1815)
!1830 = !{!"llvm.loop.mustprogress"}
!1831 = !DILocation(line: 455, column: 38, scope: !1764)
!1832 = !DILocation(line: 455, column: 48, scope: !1764)
!1833 = !DILocation(line: 455, column: 11, scope: !1764)
!1834 = !DILocation(line: 455, column: 9, scope: !1764)
!1835 = !DILocation(line: 457, column: 6, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1764, file: !2, line: 457, column: 6)
!1837 = !DILocation(line: 457, column: 13, scope: !1836)
!1838 = !DILocation(line: 457, column: 6, scope: !1764)
!1839 = !DILocation(line: 458, column: 3, scope: !1836)
!1840 = !DILocation(line: 460, column: 33, scope: !1764)
!1841 = !DILocation(line: 460, column: 9, scope: !1764)
!1842 = !DILocation(line: 461, column: 17, scope: !1764)
!1843 = !DILocation(line: 461, column: 27, scope: !1764)
!1844 = !DILocation(line: 461, column: 2, scope: !1764)
!1845 = !DILocation(line: 461, column: 10, scope: !1764)
!1846 = !DILocation(line: 461, column: 15, scope: !1764)
!1847 = !DILocation(line: 462, column: 16, scope: !1764)
!1848 = !DILocation(line: 462, column: 26, scope: !1764)
!1849 = !DILocation(line: 462, column: 2, scope: !1764)
!1850 = !DILocation(line: 462, column: 10, scope: !1764)
!1851 = !DILocation(line: 462, column: 14, scope: !1764)
!1852 = !DILocation(line: 463, column: 18, scope: !1764)
!1853 = !DILocation(line: 463, column: 28, scope: !1764)
!1854 = !DILocation(line: 463, column: 2, scope: !1764)
!1855 = !DILocation(line: 463, column: 10, scope: !1764)
!1856 = !DILocation(line: 463, column: 16, scope: !1764)
!1857 = !DILocation(line: 464, column: 19, scope: !1764)
!1858 = !DILocation(line: 464, column: 29, scope: !1764)
!1859 = !DILocation(line: 464, column: 2, scope: !1764)
!1860 = !DILocation(line: 464, column: 10, scope: !1764)
!1861 = !DILocation(line: 464, column: 17, scope: !1764)
!1862 = !DILocation(line: 465, column: 2, scope: !1764)
!1863 = !DILocation(line: 465, column: 10, scope: !1764)
!1864 = !DILocation(line: 465, column: 21, scope: !1764)
!1865 = !DILocation(line: 466, column: 7, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1764, file: !2, line: 466, column: 6)
!1867 = !DILocation(line: 466, column: 17, scope: !1866)
!1868 = !DILocation(line: 466, column: 28, scope: !1866)
!1869 = !DILocation(line: 466, column: 57, scope: !1866)
!1870 = !DILocation(line: 466, column: 6, scope: !1764)
!1871 = !DILocation(line: 467, column: 3, scope: !1866)
!1872 = !DILocation(line: 467, column: 11, scope: !1866)
!1873 = !DILocation(line: 467, column: 22, scope: !1866)
!1874 = !DILocation(line: 468, column: 7, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1764, file: !2, line: 468, column: 6)
!1876 = !DILocation(line: 468, column: 17, scope: !1875)
!1877 = !DILocation(line: 468, column: 28, scope: !1875)
!1878 = !DILocation(line: 468, column: 57, scope: !1875)
!1879 = !DILocation(line: 468, column: 6, scope: !1764)
!1880 = !DILocation(line: 469, column: 3, scope: !1875)
!1881 = !DILocation(line: 469, column: 11, scope: !1875)
!1882 = !DILocation(line: 469, column: 22, scope: !1875)
!1883 = !DILocation(line: 470, column: 2, scope: !1764)
!1884 = !DILocation(line: 470, column: 2, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1764, file: !2, line: 470, column: 2)
!1886 = !DILocation(line: 471, column: 2, scope: !1764)
!1887 = !DILocation(line: 471, column: 2, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1764, file: !2, line: 471, column: 2)
!1889 = !DILocation(line: 471, column: 2, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !2, line: 471, column: 2)
!1891 = distinct !DILexicalBlock(scope: !1888, file: !2, line: 471, column: 2)
!1892 = !DILocation(line: 471, column: 2, scope: !1891)
!1893 = !DILocation(line: 473, column: 6, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1764, file: !2, line: 473, column: 6)
!1895 = !DILocation(line: 473, column: 20, scope: !1894)
!1896 = !DILocation(line: 473, column: 6, scope: !1764)
!1897 = !DILocation(line: 474, column: 3, scope: !1894)
!1898 = !DILocation(line: 476, column: 16, scope: !1764)
!1899 = !DILocation(line: 476, column: 22, scope: !1764)
!1900 = !DILocation(line: 476, column: 32, scope: !1764)
!1901 = !DILocation(line: 476, column: 40, scope: !1764)
!1902 = !DILocation(line: 476, column: 2, scope: !1764)
!1903 = !DILocation(line: 478, column: 2, scope: !1764)
!1904 = !DILocation(line: 479, column: 2, scope: !1764)
!1905 = !DILocation(line: 479, column: 2, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1764, file: !2, line: 479, column: 2)
!1907 = !DILocation(line: 481, column: 10, scope: !1764)
!1908 = !DILocation(line: 482, column: 1, scope: !1764)
!1909 = !DILocation(line: 481, column: 2, scope: !1764)
!1910 = distinct !DISubprogram(name: "deleterdataset", scope: !2, file: !2, line: 485, type: !736, scopeLine: 487, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !1911)
!1911 = !{!1912, !1913, !1914, !1915, !1916}
!1912 = !DILocalVariable(name: "db", arg: 1, scope: !1910, file: !2, line: 485, type: !157)
!1913 = !DILocalVariable(name: "node", arg: 2, scope: !1910, file: !2, line: 485, type: !655)
!1914 = !DILocalVariable(name: "version", arg: 3, scope: !1910, file: !2, line: 485, type: !192)
!1915 = !DILocalVariable(name: "type", arg: 4, scope: !1910, file: !2, line: 486, type: !401)
!1916 = !DILocalVariable(name: "covers", arg: 5, scope: !1910, file: !2, line: 486, type: !401)
!1917 = !DILocation(line: 485, column: 26, scope: !1910)
!1918 = !DILocation(line: 485, column: 44, scope: !1910)
!1919 = !DILocation(line: 485, column: 67, scope: !1910)
!1920 = !DILocation(line: 486, column: 25, scope: !1910)
!1921 = !DILocation(line: 486, column: 47, scope: !1910)
!1922 = !DILocation(line: 488, column: 2, scope: !1910)
!1923 = !DILocation(line: 489, column: 2, scope: !1910)
!1924 = !DILocation(line: 490, column: 2, scope: !1910)
!1925 = !DILocation(line: 491, column: 2, scope: !1910)
!1926 = !DILocation(line: 492, column: 2, scope: !1910)
!1927 = !DILocation(line: 494, column: 2, scope: !1910)
!1928 = !DISubprogram(name: "pthread_mutex_lock", scope: !1929, file: !1929, line: 794, type: !1930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1929 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "5205981c6f80cc3dc1e81231df63d8ef")
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!201, !1932}
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!1933 = !DISubprogram(name: "isc_error_runtimecheck", scope: !1934, file: !1934, line: 49, type: !1935, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1934 = !DIFile(filename: "isc/include/isc/error.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "e90b8298ea6c947397fab383c61a094d")
!1935 = !DISubroutineType(types: !1936)
!1936 = !{null, !259, !201, !259}
!1937 = !DISubprogram(name: "pthread_mutex_unlock", scope: !1929, file: !1929, line: 835, type: !1930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1938 = distinct !DISubprogram(name: "destroy_ecdb", scope: !2, file: !2, line: 169, type: !1939, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !1942)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{null, !1941}
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!1942 = !{!1943, !1944, !1945}
!1943 = !DILocalVariable(name: "ecdbp", arg: 1, scope: !1938, file: !2, line: 169, type: !1941)
!1944 = !DILocalVariable(name: "ecdb", scope: !1938, file: !2, line: 170, type: !969)
!1945 = !DILocalVariable(name: "mctx", scope: !1938, file: !2, line: 171, type: !315)
!1946 = !DILocation(line: 169, column: 27, scope: !1938)
!1947 = !DILocation(line: 170, column: 2, scope: !1938)
!1948 = !DILocation(line: 170, column: 14, scope: !1938)
!1949 = !DILocation(line: 170, column: 22, scope: !1938)
!1950 = !DILocation(line: 170, column: 21, scope: !1938)
!1951 = !DILocation(line: 171, column: 2, scope: !1938)
!1952 = !DILocation(line: 171, column: 13, scope: !1938)
!1953 = !DILocation(line: 171, column: 20, scope: !1938)
!1954 = !DILocation(line: 171, column: 26, scope: !1938)
!1955 = !DILocation(line: 171, column: 33, scope: !1938)
!1956 = !DILocation(line: 173, column: 24, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1938, file: !2, line: 173, column: 6)
!1958 = !DILocation(line: 173, column: 30, scope: !1957)
!1959 = !DILocation(line: 173, column: 37, scope: !1957)
!1960 = !DILocation(line: 173, column: 6, scope: !1957)
!1961 = !DILocation(line: 173, column: 6, scope: !1938)
!1962 = !DILocation(line: 174, column: 18, scope: !1957)
!1963 = !DILocation(line: 174, column: 24, scope: !1957)
!1964 = !DILocation(line: 174, column: 31, scope: !1957)
!1965 = !DILocation(line: 174, column: 39, scope: !1957)
!1966 = !DILocation(line: 174, column: 3, scope: !1957)
!1967 = !DILocation(line: 176, column: 2, scope: !1938)
!1968 = !DILocation(line: 178, column: 2, scope: !1938)
!1969 = !DILocation(line: 178, column: 8, scope: !1938)
!1970 = !DILocation(line: 178, column: 15, scope: !1938)
!1971 = !DILocation(line: 178, column: 24, scope: !1938)
!1972 = !DILocation(line: 179, column: 2, scope: !1938)
!1973 = !DILocation(line: 179, column: 8, scope: !1938)
!1974 = !DILocation(line: 179, column: 15, scope: !1938)
!1975 = !DILocation(line: 179, column: 21, scope: !1938)
!1976 = !DILocation(line: 181, column: 2, scope: !1938)
!1977 = !DILocation(line: 181, column: 2, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1938, file: !2, line: 181, column: 2)
!1979 = !DILocation(line: 183, column: 3, scope: !1938)
!1980 = !DILocation(line: 183, column: 9, scope: !1938)
!1981 = !DILocation(line: 184, column: 1, scope: !1938)
!1982 = !DISubprogram(name: "dns_name_dynamic", scope: !287, file: !287, line: 1112, type: !1983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!278, !283}
!1985 = !DISubprogram(name: "dns_name_free", scope: !287, file: !287, line: 1068, type: !1986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{null, !358, !315}
!1988 = !DISubprogram(name: "pthread_mutex_destroy", scope: !1929, file: !1929, line: 786, type: !1930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1989 = !DISubprogram(name: "isc__mem_putanddetach", scope: !318, file: !318, line: 632, type: !337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1990 = !DISubprogram(name: "dns_name_dup", scope: !287, file: !287, line: 1035, type: !1337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1991 = distinct !DISubprogram(name: "destroynode", scope: !2, file: !2, line: 226, type: !1992, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !1994)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{null, !1041}
!1994 = !{!1995, !1996, !1997, !1998, !1999, !2000}
!1995 = !DILocalVariable(name: "node", arg: 1, scope: !1991, file: !2, line: 226, type: !1041)
!1996 = !DILocalVariable(name: "mctx", scope: !1991, file: !2, line: 227, type: !315)
!1997 = !DILocalVariable(name: "ecdb", scope: !1991, file: !2, line: 228, type: !969)
!1998 = !DILocalVariable(name: "need_destroydb", scope: !1991, file: !2, line: 229, type: !278)
!1999 = !DILocalVariable(name: "header", scope: !1991, file: !2, line: 230, type: !1056)
!2000 = !DILocalVariable(name: "headersize", scope: !2001, file: !2, line: 243, type: !46)
!2001 = distinct !DILexicalBlock(scope: !1991, file: !2, line: 242, column: 60)
!2002 = !DILocation(line: 226, column: 29, scope: !1991)
!2003 = !DILocation(line: 227, column: 2, scope: !1991)
!2004 = !DILocation(line: 227, column: 13, scope: !1991)
!2005 = !DILocation(line: 228, column: 2, scope: !1991)
!2006 = !DILocation(line: 228, column: 14, scope: !1991)
!2007 = !DILocation(line: 228, column: 21, scope: !1991)
!2008 = !DILocation(line: 228, column: 27, scope: !1991)
!2009 = !DILocation(line: 229, column: 2, scope: !1991)
!2010 = !DILocation(line: 229, column: 7, scope: !1991)
!2011 = !DILocation(line: 230, column: 2, scope: !1991)
!2012 = !DILocation(line: 230, column: 20, scope: !1991)
!2013 = !DILocation(line: 232, column: 9, scope: !1991)
!2014 = !DILocation(line: 232, column: 15, scope: !1991)
!2015 = !DILocation(line: 232, column: 22, scope: !1991)
!2016 = !DILocation(line: 232, column: 7, scope: !1991)
!2017 = !DILocation(line: 234, column: 2, scope: !1991)
!2018 = !DILocation(line: 234, column: 2, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1991, file: !2, line: 234, column: 2)
!2020 = !DILocation(line: 235, column: 2, scope: !1991)
!2021 = !DILocation(line: 235, column: 2, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1991, file: !2, line: 235, column: 2)
!2023 = !DILocation(line: 235, column: 2, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !2, line: 235, column: 2)
!2025 = distinct !DILexicalBlock(scope: !2022, file: !2, line: 235, column: 2)
!2026 = !DILocation(line: 235, column: 2, scope: !2025)
!2027 = !DILocation(line: 235, column: 2, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2024, file: !2, line: 235, column: 2)
!2029 = !DILocation(line: 235, column: 2, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2025, file: !2, line: 235, column: 2)
!2031 = !DILocation(line: 235, column: 2, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2030, file: !2, line: 235, column: 2)
!2033 = !DILocation(line: 236, column: 6, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !1991, file: !2, line: 236, column: 6)
!2035 = !DILocation(line: 236, column: 12, scope: !2034)
!2036 = !DILocation(line: 236, column: 23, scope: !2034)
!2037 = !DILocation(line: 236, column: 28, scope: !2034)
!2038 = !DILocation(line: 236, column: 31, scope: !2034)
!2039 = !DILocation(line: 236, column: 6, scope: !1991)
!2040 = !DILocation(line: 237, column: 18, scope: !2034)
!2041 = !DILocation(line: 237, column: 3, scope: !2034)
!2042 = !DILocation(line: 238, column: 2, scope: !1991)
!2043 = !DILocation(line: 238, column: 2, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1991, file: !2, line: 238, column: 2)
!2045 = !DILocation(line: 240, column: 17, scope: !1991)
!2046 = !DILocation(line: 240, column: 23, scope: !1991)
!2047 = !DILocation(line: 240, column: 29, scope: !1991)
!2048 = !DILocation(line: 240, column: 2, scope: !1991)
!2049 = !DILocation(line: 242, column: 2, scope: !1991)
!2050 = !DILocation(line: 242, column: 19, scope: !1991)
!2051 = !DILocation(line: 242, column: 17, scope: !1991)
!2052 = !DILocation(line: 242, column: 51, scope: !1991)
!2053 = !DILocation(line: 243, column: 3, scope: !2001)
!2054 = !DILocation(line: 243, column: 16, scope: !2001)
!2055 = !DILocation(line: 245, column: 3, scope: !2001)
!2056 = !DILocation(line: 245, column: 3, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2001, file: !2, line: 245, column: 3)
!2058 = !DILocation(line: 245, column: 3, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !2, line: 245, column: 3)
!2060 = distinct !DILexicalBlock(scope: !2057, file: !2, line: 245, column: 3)
!2061 = !DILocation(line: 245, column: 3, scope: !2060)
!2062 = !DILocation(line: 245, column: 3, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2059, file: !2, line: 245, column: 3)
!2064 = !DILocation(line: 245, column: 3, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2060, file: !2, line: 245, column: 3)
!2066 = !DILocation(line: 245, column: 3, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2065, file: !2, line: 245, column: 3)
!2068 = !DILocation(line: 247, column: 40, scope: !2001)
!2069 = !DILocation(line: 247, column: 4, scope: !2001)
!2070 = !DILocation(line: 246, column: 14, scope: !2001)
!2071 = !DILocation(line: 249, column: 3, scope: !2001)
!2072 = !DILocation(line: 249, column: 3, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2001, file: !2, line: 249, column: 3)
!2074 = !DILocation(line: 250, column: 2, scope: !1991)
!2075 = distinct !{!2075, !2049, !2074, !1830}
!2076 = !DILocation(line: 252, column: 2, scope: !1991)
!2077 = !DILocation(line: 254, column: 2, scope: !1991)
!2078 = !DILocation(line: 254, column: 8, scope: !1991)
!2079 = !DILocation(line: 254, column: 14, scope: !1991)
!2080 = !DILocation(line: 255, column: 2, scope: !1991)
!2081 = !DILocation(line: 255, column: 2, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !1991, file: !2, line: 255, column: 2)
!2083 = !DILocation(line: 257, column: 6, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !1991, file: !2, line: 257, column: 6)
!2085 = !DILocation(line: 257, column: 6, scope: !1991)
!2086 = !DILocation(line: 258, column: 3, scope: !2084)
!2087 = !DILocation(line: 259, column: 1, scope: !1991)
!2088 = !DISubprogram(name: "dns_rdataslab_size", scope: !2089, file: !2089, line: 88, type: !2090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2089 = !DIFile(filename: "include/dns/rdataslab.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "930b9ca552e0acf5a2f27f1b2f267b6a")
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!46, !291, !46}
!2092 = distinct !DISubprogram(name: "rdatasetiter_destroy", scope: !2, file: !2, line: 764, type: !711, scopeLine: 764, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2093)
!2093 = !{!2094, !2095, !2096}
!2094 = !DILocalVariable(name: "iteratorp", arg: 1, scope: !2092, file: !2, line: 764, type: !697)
!2095 = !DILocalVariable(name: "mctx", scope: !2092, file: !2, line: 765, type: !315)
!2096 = !DILocalVariable(name: "u", scope: !2092, file: !2, line: 769, type: !2097)
!2097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2092, file: !2, line: 766, size: 64, elements: !2098)
!2098 = !{!2099, !2100}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "rdatasetiterator", scope: !2097, file: !2, line: 767, baseType: !698, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "ecdbiterator", scope: !2097, file: !2, line: 768, baseType: !1050, size: 64)
!2101 = !DILocation(line: 764, column: 43, scope: !2092)
!2102 = !DILocation(line: 765, column: 2, scope: !2092)
!2103 = !DILocation(line: 765, column: 13, scope: !2092)
!2104 = !DILocation(line: 766, column: 2, scope: !2092)
!2105 = !DILocation(line: 769, column: 4, scope: !2092)
!2106 = !DILocation(line: 771, column: 2, scope: !2092)
!2107 = !DILocation(line: 772, column: 2, scope: !2092)
!2108 = !DILocation(line: 0, scope: !2092)
!2109 = !DILocation(line: 774, column: 24, scope: !2092)
!2110 = !DILocation(line: 774, column: 23, scope: !2092)
!2111 = !DILocation(line: 774, column: 21, scope: !2092)
!2112 = !DILocation(line: 776, column: 11, scope: !2092)
!2113 = !DILocation(line: 776, column: 25, scope: !2092)
!2114 = !DILocation(line: 776, column: 32, scope: !2092)
!2115 = !DILocation(line: 776, column: 36, scope: !2092)
!2116 = !DILocation(line: 776, column: 7, scope: !2092)
!2117 = !DILocation(line: 777, column: 4, scope: !2092)
!2118 = !DILocation(line: 777, column: 18, scope: !2092)
!2119 = !DILocation(line: 777, column: 25, scope: !2092)
!2120 = !DILocation(line: 777, column: 31, scope: !2092)
!2121 = !DILocation(line: 779, column: 22, scope: !2092)
!2122 = !DILocation(line: 779, column: 36, scope: !2092)
!2123 = !DILocation(line: 779, column: 43, scope: !2092)
!2124 = !DILocation(line: 780, column: 9, scope: !2092)
!2125 = !DILocation(line: 780, column: 23, scope: !2092)
!2126 = !DILocation(line: 780, column: 30, scope: !2092)
!2127 = !DILocation(line: 779, column: 2, scope: !2092)
!2128 = !DILocation(line: 781, column: 2, scope: !2092)
!2129 = !DILocation(line: 781, column: 2, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2092, file: !2, line: 781, column: 2)
!2131 = !DILocation(line: 784, column: 3, scope: !2092)
!2132 = !DILocation(line: 784, column: 13, scope: !2092)
!2133 = !DILocation(line: 785, column: 1, scope: !2092)
!2134 = distinct !DISubprogram(name: "rdatasetiter_first", scope: !2, file: !2, line: 788, type: !715, scopeLine: 788, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2135)
!2135 = !{!2136, !2137, !2138}
!2136 = !DILocalVariable(name: "iterator", arg: 1, scope: !2134, file: !2, line: 788, type: !698)
!2137 = !DILocalVariable(name: "ecdbiterator", scope: !2134, file: !2, line: 789, type: !1050)
!2138 = !DILocalVariable(name: "ecdbnode", scope: !2134, file: !2, line: 790, type: !1041)
!2139 = !DILocation(line: 788, column: 40, scope: !2134)
!2140 = !DILocation(line: 789, column: 2, scope: !2134)
!2141 = !DILocation(line: 789, column: 23, scope: !2134)
!2142 = !DILocation(line: 789, column: 61, scope: !2134)
!2143 = !DILocation(line: 790, column: 2, scope: !2134)
!2144 = !DILocation(line: 790, column: 18, scope: !2134)
!2145 = !DILocation(line: 790, column: 47, scope: !2134)
!2146 = !DILocation(line: 790, column: 57, scope: !2134)
!2147 = !DILocation(line: 792, column: 2, scope: !2134)
!2148 = !DILocation(line: 0, scope: !2134)
!2149 = !DILocation(line: 794, column: 6, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2134, file: !2, line: 794, column: 6)
!2151 = !DILocation(line: 794, column: 6, scope: !2134)
!2152 = !DILocation(line: 795, column: 3, scope: !2150)
!2153 = !DILocation(line: 796, column: 26, scope: !2134)
!2154 = !DILocation(line: 796, column: 2, scope: !2134)
!2155 = !DILocation(line: 796, column: 16, scope: !2134)
!2156 = !DILocation(line: 796, column: 24, scope: !2134)
!2157 = !DILocation(line: 797, column: 2, scope: !2134)
!2158 = !DILocation(line: 798, column: 1, scope: !2134)
!2159 = distinct !DISubprogram(name: "rdatasetiter_next", scope: !2, file: !2, line: 801, type: !715, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2160)
!2160 = !{!2161, !2162}
!2161 = !DILocalVariable(name: "iterator", arg: 1, scope: !2159, file: !2, line: 801, type: !698)
!2162 = !DILocalVariable(name: "ecdbiterator", scope: !2159, file: !2, line: 802, type: !1050)
!2163 = !DILocation(line: 801, column: 39, scope: !2159)
!2164 = !DILocation(line: 802, column: 2, scope: !2159)
!2165 = !DILocation(line: 802, column: 23, scope: !2159)
!2166 = !DILocation(line: 802, column: 61, scope: !2159)
!2167 = !DILocation(line: 804, column: 2, scope: !2159)
!2168 = !DILocation(line: 0, scope: !2159)
!2169 = !DILocation(line: 806, column: 26, scope: !2159)
!2170 = !DILocation(line: 806, column: 2, scope: !2159)
!2171 = !DILocation(line: 806, column: 16, scope: !2159)
!2172 = !DILocation(line: 806, column: 24, scope: !2159)
!2173 = !DILocation(line: 807, column: 6, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2159, file: !2, line: 807, column: 6)
!2175 = !DILocation(line: 807, column: 20, scope: !2174)
!2176 = !DILocation(line: 807, column: 28, scope: !2174)
!2177 = !DILocation(line: 807, column: 6, scope: !2159)
!2178 = !DILocation(line: 808, column: 3, scope: !2174)
!2179 = !DILocation(line: 810, column: 3, scope: !2174)
!2180 = !DILocation(line: 811, column: 1, scope: !2159)
!2181 = distinct !DISubprogram(name: "rdatasetiter_current", scope: !2, file: !2, line: 814, type: !720, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2182)
!2182 = !{!2183, !2184, !2185, !2186}
!2183 = !DILocalVariable(name: "iterator", arg: 1, scope: !2181, file: !2, line: 814, type: !698)
!2184 = !DILocalVariable(name: "rdataset", arg: 2, scope: !2181, file: !2, line: 814, type: !364)
!2185 = !DILocalVariable(name: "ecdbiterator", scope: !2181, file: !2, line: 815, type: !1050)
!2186 = !DILocalVariable(name: "ecdb", scope: !2181, file: !2, line: 816, type: !969)
!2187 = !DILocation(line: 814, column: 42, scope: !2181)
!2188 = !DILocation(line: 814, column: 68, scope: !2181)
!2189 = !DILocation(line: 815, column: 2, scope: !2181)
!2190 = !DILocation(line: 815, column: 23, scope: !2181)
!2191 = !DILocation(line: 815, column: 61, scope: !2181)
!2192 = !DILocation(line: 816, column: 2, scope: !2181)
!2193 = !DILocation(line: 816, column: 14, scope: !2181)
!2194 = !DILocation(line: 818, column: 23, scope: !2181)
!2195 = !DILocation(line: 818, column: 33, scope: !2181)
!2196 = !DILocation(line: 818, column: 7, scope: !2181)
!2197 = !DILocation(line: 819, column: 2, scope: !2181)
!2198 = !DILocation(line: 0, scope: !2181)
!2199 = !DILocation(line: 821, column: 16, scope: !2181)
!2200 = !DILocation(line: 821, column: 22, scope: !2181)
!2201 = !DILocation(line: 821, column: 32, scope: !2181)
!2202 = !DILocation(line: 821, column: 38, scope: !2181)
!2203 = !DILocation(line: 821, column: 52, scope: !2181)
!2204 = !DILocation(line: 821, column: 61, scope: !2181)
!2205 = !DILocation(line: 821, column: 2, scope: !2181)
!2206 = !DILocation(line: 822, column: 1, scope: !2181)
!2207 = !DISubprogram(name: "dns_db_detachnode", scope: !160, file: !160, line: 1006, type: !671, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2208 = distinct !DISubprogram(name: "bind_rdataset", scope: !2, file: !2, line: 384, type: !2209, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2211)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{null, !969, !1041, !1056, !364}
!2211 = !{!2212, !2213, !2214, !2215, !2216}
!2212 = !DILocalVariable(name: "ecdb", arg: 1, scope: !2208, file: !2, line: 384, type: !969)
!2213 = !DILocalVariable(name: "node", arg: 2, scope: !2208, file: !2, line: 384, type: !1041)
!2214 = !DILocalVariable(name: "header", arg: 3, scope: !2208, file: !2, line: 385, type: !1056)
!2215 = !DILocalVariable(name: "rdataset", arg: 4, scope: !2208, file: !2, line: 385, type: !364)
!2216 = !DILocalVariable(name: "raw", scope: !2208, file: !2, line: 387, type: !291)
!2217 = !DILocation(line: 384, column: 27, scope: !2208)
!2218 = !DILocation(line: 384, column: 49, scope: !2208)
!2219 = !DILocation(line: 385, column: 26, scope: !2208)
!2220 = !DILocation(line: 385, column: 50, scope: !2208)
!2221 = !DILocation(line: 387, column: 2, scope: !2208)
!2222 = !DILocation(line: 387, column: 17, scope: !2208)
!2223 = !DILocation(line: 393, column: 2, scope: !2208)
!2224 = !DILocation(line: 395, column: 2, scope: !2208)
!2225 = !DILocation(line: 395, column: 12, scope: !2208)
!2226 = !DILocation(line: 395, column: 20, scope: !2208)
!2227 = !DILocation(line: 396, column: 22, scope: !2208)
!2228 = !DILocation(line: 396, column: 28, scope: !2208)
!2229 = !DILocation(line: 396, column: 35, scope: !2208)
!2230 = !DILocation(line: 396, column: 2, scope: !2208)
!2231 = !DILocation(line: 396, column: 12, scope: !2208)
!2232 = !DILocation(line: 396, column: 20, scope: !2208)
!2233 = !DILocation(line: 397, column: 19, scope: !2208)
!2234 = !DILocation(line: 397, column: 27, scope: !2208)
!2235 = !DILocation(line: 397, column: 2, scope: !2208)
!2236 = !DILocation(line: 397, column: 12, scope: !2208)
!2237 = !DILocation(line: 397, column: 17, scope: !2208)
!2238 = !DILocation(line: 398, column: 21, scope: !2208)
!2239 = !DILocation(line: 398, column: 29, scope: !2208)
!2240 = !DILocation(line: 398, column: 2, scope: !2208)
!2241 = !DILocation(line: 398, column: 12, scope: !2208)
!2242 = !DILocation(line: 398, column: 19, scope: !2208)
!2243 = !DILocation(line: 399, column: 18, scope: !2208)
!2244 = !DILocation(line: 399, column: 26, scope: !2208)
!2245 = !DILocation(line: 399, column: 2, scope: !2208)
!2246 = !DILocation(line: 399, column: 12, scope: !2208)
!2247 = !DILocation(line: 399, column: 16, scope: !2208)
!2248 = !DILocation(line: 400, column: 20, scope: !2208)
!2249 = !DILocation(line: 400, column: 28, scope: !2208)
!2250 = !DILocation(line: 400, column: 2, scope: !2208)
!2251 = !DILocation(line: 400, column: 12, scope: !2208)
!2252 = !DILocation(line: 400, column: 18, scope: !2208)
!2253 = !DILocation(line: 401, column: 6, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2208, file: !2, line: 401, column: 6)
!2255 = !DILocation(line: 401, column: 6, scope: !2208)
!2256 = !DILocation(line: 402, column: 3, scope: !2254)
!2257 = !DILocation(line: 402, column: 13, scope: !2254)
!2258 = !DILocation(line: 402, column: 24, scope: !2254)
!2259 = !DILocation(line: 403, column: 6, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2208, file: !2, line: 403, column: 6)
!2261 = !DILocation(line: 403, column: 6, scope: !2208)
!2262 = !DILocation(line: 404, column: 3, scope: !2260)
!2263 = !DILocation(line: 404, column: 13, scope: !2260)
!2264 = !DILocation(line: 404, column: 24, scope: !2260)
!2265 = !DILocation(line: 406, column: 23, scope: !2208)
!2266 = !DILocation(line: 406, column: 2, scope: !2208)
!2267 = !DILocation(line: 406, column: 12, scope: !2208)
!2268 = !DILocation(line: 406, column: 21, scope: !2208)
!2269 = !DILocation(line: 407, column: 23, scope: !2208)
!2270 = !DILocation(line: 407, column: 2, scope: !2208)
!2271 = !DILocation(line: 407, column: 12, scope: !2208)
!2272 = !DILocation(line: 407, column: 21, scope: !2208)
!2273 = !DILocation(line: 408, column: 25, scope: !2208)
!2274 = !DILocation(line: 408, column: 32, scope: !2208)
!2275 = !DILocation(line: 408, column: 6, scope: !2208)
!2276 = !DILocation(line: 409, column: 23, scope: !2208)
!2277 = !DILocation(line: 409, column: 2, scope: !2208)
!2278 = !DILocation(line: 409, column: 12, scope: !2208)
!2279 = !DILocation(line: 409, column: 21, scope: !2208)
!2280 = !DILocation(line: 410, column: 2, scope: !2208)
!2281 = !DILocation(line: 410, column: 12, scope: !2208)
!2282 = !DILocation(line: 410, column: 18, scope: !2208)
!2283 = !DILocation(line: 415, column: 2, scope: !2208)
!2284 = !DILocation(line: 415, column: 12, scope: !2208)
!2285 = !DILocation(line: 415, column: 25, scope: !2208)
!2286 = !DILocation(line: 416, column: 2, scope: !2208)
!2287 = !DILocation(line: 416, column: 12, scope: !2208)
!2288 = !DILocation(line: 416, column: 21, scope: !2208)
!2289 = !DILocation(line: 418, column: 2, scope: !2208)
!2290 = !DILocation(line: 419, column: 2, scope: !2208)
!2291 = !DILocation(line: 419, column: 8, scope: !2208)
!2292 = !DILocation(line: 419, column: 18, scope: !2208)
!2293 = !DILocation(line: 420, column: 1, scope: !2208)
!2294 = !DISubprogram(name: "dns_rdataset_isassociated", scope: !367, file: !367, line: 251, type: !2295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!278, !364}
!2297 = distinct !DISubprogram(name: "rdataset_disassociate", scope: !2, file: !2, line: 641, type: !377, scopeLine: 641, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2298)
!2298 = !{!2299, !2300, !2301}
!2299 = !DILocalVariable(name: "rdataset", arg: 1, scope: !2297, file: !2, line: 641, type: !364)
!2300 = !DILocalVariable(name: "db", scope: !2297, file: !2, line: 642, type: !157)
!2301 = !DILocalVariable(name: "node", scope: !2297, file: !2, line: 643, type: !655)
!2302 = !DILocation(line: 641, column: 39, scope: !2297)
!2303 = !DILocation(line: 642, column: 2, scope: !2297)
!2304 = !DILocation(line: 642, column: 12, scope: !2297)
!2305 = !DILocation(line: 642, column: 17, scope: !2297)
!2306 = !DILocation(line: 642, column: 27, scope: !2297)
!2307 = !DILocation(line: 643, column: 2, scope: !2297)
!2308 = !DILocation(line: 643, column: 16, scope: !2297)
!2309 = !DILocation(line: 643, column: 23, scope: !2297)
!2310 = !DILocation(line: 643, column: 33, scope: !2297)
!2311 = !DILocation(line: 645, column: 20, scope: !2297)
!2312 = !DILocation(line: 645, column: 2, scope: !2297)
!2313 = !DILocation(line: 646, column: 1, scope: !2297)
!2314 = distinct !DISubprogram(name: "rdataset_first", scope: !2, file: !2, line: 649, type: !381, scopeLine: 649, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2315)
!2315 = !{!2316, !2317, !2318}
!2316 = !DILocalVariable(name: "rdataset", arg: 1, scope: !2314, file: !2, line: 649, type: !364)
!2317 = !DILocalVariable(name: "raw", scope: !2314, file: !2, line: 650, type: !291)
!2318 = !DILocalVariable(name: "count", scope: !2314, file: !2, line: 651, type: !46)
!2319 = !DILocation(line: 649, column: 32, scope: !2314)
!2320 = !DILocation(line: 650, column: 2, scope: !2314)
!2321 = !DILocation(line: 650, column: 17, scope: !2314)
!2322 = !DILocation(line: 650, column: 23, scope: !2314)
!2323 = !DILocation(line: 650, column: 33, scope: !2314)
!2324 = !DILocation(line: 651, column: 2, scope: !2314)
!2325 = !DILocation(line: 651, column: 15, scope: !2314)
!2326 = !DILocation(line: 653, column: 10, scope: !2314)
!2327 = !DILocation(line: 653, column: 17, scope: !2314)
!2328 = !DILocation(line: 653, column: 25, scope: !2314)
!2329 = !DILocation(line: 653, column: 23, scope: !2314)
!2330 = !DILocation(line: 653, column: 8, scope: !2314)
!2331 = !DILocation(line: 654, column: 6, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2314, file: !2, line: 654, column: 6)
!2333 = !DILocation(line: 654, column: 12, scope: !2332)
!2334 = !DILocation(line: 654, column: 6, scope: !2314)
!2335 = !DILocation(line: 655, column: 3, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2332, file: !2, line: 654, column: 18)
!2337 = !DILocation(line: 655, column: 13, scope: !2336)
!2338 = !DILocation(line: 655, column: 22, scope: !2336)
!2339 = !DILocation(line: 656, column: 3, scope: !2336)
!2340 = !DILocation(line: 661, column: 6, scope: !2314)
!2341 = !DILocation(line: 668, column: 7, scope: !2314)
!2342 = !DILocation(line: 669, column: 27, scope: !2314)
!2343 = !DILocation(line: 669, column: 2, scope: !2314)
!2344 = !DILocation(line: 669, column: 12, scope: !2314)
!2345 = !DILocation(line: 669, column: 25, scope: !2314)
!2346 = !DILocation(line: 670, column: 23, scope: !2314)
!2347 = !DILocation(line: 670, column: 2, scope: !2314)
!2348 = !DILocation(line: 670, column: 12, scope: !2314)
!2349 = !DILocation(line: 670, column: 21, scope: !2314)
!2350 = !DILocation(line: 672, column: 2, scope: !2314)
!2351 = !DILocation(line: 673, column: 1, scope: !2314)
!2352 = distinct !DISubprogram(name: "rdataset_next", scope: !2, file: !2, line: 676, type: !381, scopeLine: 676, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2353)
!2353 = !{!2354, !2355, !2356, !2357}
!2354 = !DILocalVariable(name: "rdataset", arg: 1, scope: !2352, file: !2, line: 676, type: !364)
!2355 = !DILocalVariable(name: "count", scope: !2352, file: !2, line: 677, type: !46)
!2356 = !DILocalVariable(name: "length", scope: !2352, file: !2, line: 678, type: !46)
!2357 = !DILocalVariable(name: "raw", scope: !2352, file: !2, line: 679, type: !291)
!2358 = !DILocation(line: 676, column: 31, scope: !2352)
!2359 = !DILocation(line: 677, column: 2, scope: !2352)
!2360 = !DILocation(line: 677, column: 15, scope: !2352)
!2361 = !DILocation(line: 678, column: 2, scope: !2352)
!2362 = !DILocation(line: 678, column: 15, scope: !2352)
!2363 = !DILocation(line: 679, column: 2, scope: !2352)
!2364 = !DILocation(line: 679, column: 17, scope: !2352)
!2365 = !DILocation(line: 681, column: 10, scope: !2352)
!2366 = !DILocation(line: 681, column: 20, scope: !2352)
!2367 = !DILocation(line: 681, column: 8, scope: !2352)
!2368 = !DILocation(line: 682, column: 6, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2352, file: !2, line: 682, column: 6)
!2370 = !DILocation(line: 682, column: 12, scope: !2369)
!2371 = !DILocation(line: 682, column: 6, scope: !2352)
!2372 = !DILocation(line: 683, column: 3, scope: !2369)
!2373 = !DILocation(line: 684, column: 7, scope: !2352)
!2374 = !DILocation(line: 685, column: 27, scope: !2352)
!2375 = !DILocation(line: 685, column: 2, scope: !2352)
!2376 = !DILocation(line: 685, column: 12, scope: !2352)
!2377 = !DILocation(line: 685, column: 25, scope: !2352)
!2378 = !DILocation(line: 686, column: 8, scope: !2352)
!2379 = !DILocation(line: 686, column: 18, scope: !2352)
!2380 = !DILocation(line: 686, column: 6, scope: !2352)
!2381 = !DILocation(line: 687, column: 11, scope: !2352)
!2382 = !DILocation(line: 687, column: 18, scope: !2352)
!2383 = !DILocation(line: 687, column: 26, scope: !2352)
!2384 = !DILocation(line: 687, column: 24, scope: !2352)
!2385 = !DILocation(line: 687, column: 9, scope: !2352)
!2386 = !DILocation(line: 691, column: 9, scope: !2352)
!2387 = !DILocation(line: 691, column: 16, scope: !2352)
!2388 = !DILocation(line: 691, column: 6, scope: !2352)
!2389 = !DILocation(line: 693, column: 23, scope: !2352)
!2390 = !DILocation(line: 693, column: 2, scope: !2352)
!2391 = !DILocation(line: 693, column: 12, scope: !2352)
!2392 = !DILocation(line: 693, column: 21, scope: !2352)
!2393 = !DILocation(line: 695, column: 2, scope: !2352)
!2394 = !DILocation(line: 696, column: 1, scope: !2352)
!2395 = distinct !DISubprogram(name: "rdataset_current", scope: !2, file: !2, line: 699, type: !386, scopeLine: 699, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2396)
!2396 = !{!2397, !2398, !2399, !2400, !2401, !2402}
!2397 = !DILocalVariable(name: "rdataset", arg: 1, scope: !2395, file: !2, line: 699, type: !364)
!2398 = !DILocalVariable(name: "rdata", arg: 2, scope: !2395, file: !2, line: 699, type: !388)
!2399 = !DILocalVariable(name: "raw", scope: !2395, file: !2, line: 700, type: !291)
!2400 = !DILocalVariable(name: "r", scope: !2395, file: !2, line: 701, type: !515)
!2401 = !DILocalVariable(name: "length", scope: !2395, file: !2, line: 702, type: !46)
!2402 = !DILocalVariable(name: "flags", scope: !2395, file: !2, line: 703, type: !46)
!2403 = !DILocation(line: 699, column: 34, scope: !2395)
!2404 = !DILocation(line: 699, column: 57, scope: !2395)
!2405 = !DILocation(line: 700, column: 2, scope: !2395)
!2406 = !DILocation(line: 700, column: 17, scope: !2395)
!2407 = !DILocation(line: 700, column: 23, scope: !2395)
!2408 = !DILocation(line: 700, column: 33, scope: !2395)
!2409 = !DILocation(line: 701, column: 2, scope: !2395)
!2410 = !DILocation(line: 701, column: 15, scope: !2395)
!2411 = !DILocation(line: 702, column: 2, scope: !2395)
!2412 = !DILocation(line: 702, column: 15, scope: !2395)
!2413 = !DILocation(line: 703, column: 2, scope: !2395)
!2414 = !DILocation(line: 703, column: 15, scope: !2395)
!2415 = !DILocation(line: 705, column: 2, scope: !2395)
!2416 = !DILocation(line: 707, column: 11, scope: !2395)
!2417 = !DILocation(line: 707, column: 18, scope: !2395)
!2418 = !DILocation(line: 707, column: 26, scope: !2395)
!2419 = !DILocation(line: 707, column: 24, scope: !2395)
!2420 = !DILocation(line: 707, column: 9, scope: !2395)
!2421 = !DILocation(line: 711, column: 6, scope: !2395)
!2422 = !DILocation(line: 713, column: 6, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2395, file: !2, line: 713, column: 6)
!2424 = !DILocation(line: 713, column: 16, scope: !2423)
!2425 = !DILocation(line: 713, column: 21, scope: !2423)
!2426 = !DILocation(line: 713, column: 6, scope: !2395)
!2427 = !DILocation(line: 714, column: 9, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !2, line: 714, column: 7)
!2429 = distinct !DILexicalBlock(scope: !2423, file: !2, line: 713, column: 45)
!2430 = !DILocation(line: 714, column: 8, scope: !2428)
!2431 = !DILocation(line: 714, column: 13, scope: !2428)
!2432 = !DILocation(line: 714, column: 38, scope: !2428)
!2433 = !DILocation(line: 714, column: 7, scope: !2429)
!2434 = !DILocation(line: 715, column: 10, scope: !2428)
!2435 = !DILocation(line: 715, column: 4, scope: !2428)
!2436 = !DILocation(line: 716, column: 9, scope: !2429)
!2437 = !DILocation(line: 717, column: 6, scope: !2429)
!2438 = !DILocation(line: 718, column: 2, scope: !2429)
!2439 = !DILocation(line: 719, column: 13, scope: !2395)
!2440 = !DILocation(line: 719, column: 4, scope: !2395)
!2441 = !DILocation(line: 719, column: 11, scope: !2395)
!2442 = !DILocation(line: 720, column: 11, scope: !2395)
!2443 = !DILocation(line: 720, column: 4, scope: !2395)
!2444 = !DILocation(line: 720, column: 9, scope: !2395)
!2445 = !DILocation(line: 721, column: 23, scope: !2395)
!2446 = !DILocation(line: 721, column: 30, scope: !2395)
!2447 = !DILocation(line: 721, column: 40, scope: !2395)
!2448 = !DILocation(line: 721, column: 49, scope: !2395)
!2449 = !DILocation(line: 721, column: 59, scope: !2395)
!2450 = !DILocation(line: 721, column: 2, scope: !2395)
!2451 = !DILocation(line: 722, column: 18, scope: !2395)
!2452 = !DILocation(line: 722, column: 2, scope: !2395)
!2453 = !DILocation(line: 722, column: 9, scope: !2395)
!2454 = !DILocation(line: 722, column: 15, scope: !2395)
!2455 = !DILocation(line: 723, column: 1, scope: !2395)
!2456 = distinct !DISubprogram(name: "rdataset_clone", scope: !2, file: !2, line: 726, type: !410, scopeLine: 726, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2457)
!2457 = !{!2458, !2459, !2460, !2461, !2462}
!2458 = !DILocalVariable(name: "source", arg: 1, scope: !2456, file: !2, line: 726, type: !364)
!2459 = !DILocalVariable(name: "target", arg: 2, scope: !2456, file: !2, line: 726, type: !364)
!2460 = !DILocalVariable(name: "db", scope: !2456, file: !2, line: 727, type: !157)
!2461 = !DILocalVariable(name: "node", scope: !2456, file: !2, line: 728, type: !655)
!2462 = !DILocalVariable(name: "cloned_node", scope: !2456, file: !2, line: 729, type: !655)
!2463 = !DILocation(line: 726, column: 32, scope: !2456)
!2464 = !DILocation(line: 726, column: 56, scope: !2456)
!2465 = !DILocation(line: 727, column: 2, scope: !2456)
!2466 = !DILocation(line: 727, column: 12, scope: !2456)
!2467 = !DILocation(line: 727, column: 17, scope: !2456)
!2468 = !DILocation(line: 727, column: 25, scope: !2456)
!2469 = !DILocation(line: 728, column: 2, scope: !2456)
!2470 = !DILocation(line: 728, column: 16, scope: !2456)
!2471 = !DILocation(line: 728, column: 23, scope: !2456)
!2472 = !DILocation(line: 728, column: 31, scope: !2456)
!2473 = !DILocation(line: 729, column: 2, scope: !2456)
!2474 = !DILocation(line: 729, column: 16, scope: !2456)
!2475 = !DILocation(line: 731, column: 13, scope: !2456)
!2476 = !DILocation(line: 731, column: 17, scope: !2456)
!2477 = !DILocation(line: 731, column: 2, scope: !2456)
!2478 = !DILocation(line: 732, column: 3, scope: !2456)
!2479 = !DILocation(line: 732, column: 13, scope: !2456)
!2480 = !DILocation(line: 732, column: 12, scope: !2456)
!2481 = !DILocation(line: 737, column: 2, scope: !2456)
!2482 = !DILocation(line: 737, column: 10, scope: !2456)
!2483 = !DILocation(line: 737, column: 23, scope: !2456)
!2484 = !DILocation(line: 738, column: 2, scope: !2456)
!2485 = !DILocation(line: 738, column: 10, scope: !2456)
!2486 = !DILocation(line: 738, column: 19, scope: !2456)
!2487 = !DILocation(line: 739, column: 1, scope: !2456)
!2488 = distinct !DISubprogram(name: "rdataset_count", scope: !2, file: !2, line: 742, type: !414, scopeLine: 742, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2489)
!2489 = !{!2490, !2491, !2492}
!2490 = !DILocalVariable(name: "rdataset", arg: 1, scope: !2488, file: !2, line: 742, type: !364)
!2491 = !DILocalVariable(name: "raw", scope: !2488, file: !2, line: 743, type: !291)
!2492 = !DILocalVariable(name: "count", scope: !2488, file: !2, line: 744, type: !46)
!2493 = !DILocation(line: 742, column: 32, scope: !2488)
!2494 = !DILocation(line: 743, column: 2, scope: !2488)
!2495 = !DILocation(line: 743, column: 17, scope: !2488)
!2496 = !DILocation(line: 743, column: 23, scope: !2488)
!2497 = !DILocation(line: 743, column: 33, scope: !2488)
!2498 = !DILocation(line: 744, column: 2, scope: !2488)
!2499 = !DILocation(line: 744, column: 15, scope: !2488)
!2500 = !DILocation(line: 746, column: 10, scope: !2488)
!2501 = !DILocation(line: 746, column: 17, scope: !2488)
!2502 = !DILocation(line: 746, column: 25, scope: !2488)
!2503 = !DILocation(line: 746, column: 23, scope: !2488)
!2504 = !DILocation(line: 746, column: 8, scope: !2488)
!2505 = !DILocation(line: 748, column: 10, scope: !2488)
!2506 = !DILocation(line: 749, column: 1, scope: !2488)
!2507 = !DILocation(line: 748, column: 2, scope: !2488)
!2508 = distinct !DISubprogram(name: "rdataset_settrust", scope: !2, file: !2, line: 752, type: !428, scopeLine: 752, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2509)
!2509 = !{!2510, !2511, !2512}
!2510 = !DILocalVariable(name: "rdataset", arg: 1, scope: !2508, file: !2, line: 752, type: !364)
!2511 = !DILocalVariable(name: "trust", arg: 2, scope: !2508, file: !2, line: 752, type: !430)
!2512 = !DILocalVariable(name: "header", scope: !2508, file: !2, line: 753, type: !1056)
!2513 = !DILocation(line: 752, column: 35, scope: !2508)
!2514 = !DILocation(line: 752, column: 57, scope: !2508)
!2515 = !DILocation(line: 753, column: 2, scope: !2508)
!2516 = !DILocation(line: 753, column: 20, scope: !2508)
!2517 = !DILocation(line: 753, column: 29, scope: !2508)
!2518 = !DILocation(line: 753, column: 39, scope: !2508)
!2519 = !DILocation(line: 755, column: 8, scope: !2508)
!2520 = !DILocation(line: 756, column: 36, scope: !2508)
!2521 = !DILocation(line: 756, column: 18, scope: !2508)
!2522 = !DILocation(line: 756, column: 28, scope: !2508)
!2523 = !DILocation(line: 756, column: 34, scope: !2508)
!2524 = !DILocation(line: 756, column: 2, scope: !2508)
!2525 = !DILocation(line: 756, column: 10, scope: !2508)
!2526 = !DILocation(line: 756, column: 16, scope: !2508)
!2527 = !DILocation(line: 757, column: 1, scope: !2508)
!2528 = !DISubprogram(name: "dns_rdata_fromregion", scope: !391, file: !391, line: 261, type: !2529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{null, !388, !396, !401, !2531}
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!2532 = !DISubprogram(name: "dns_rdataslab_fromrdataset", scope: !2089, file: !2089, line: 67, type: !2533, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!182, !364, !315, !2531, !46}
