; ModuleID = 'samples/687.bc'
source_filename = "cram/cram_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__kstring_t = type { i64, i64, ptr }
%struct.cram_index = type { i32, i32, ptr, i32, i32, i32, i32, i32, i32, i64 }
%struct.cram_fd = type { ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, ptr, i32, [7 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.cram_range, [4096 x i32], [4096 x i32], [256 x i8], [256 x i8], [32 x [32 x i8]], i32, ptr, i64, i32, i32, i32, i32, i32, i32, ptr, ptr, %union.pthread_mutex_t, %union.pthread_mutex_t, ptr, %union.pthread_mutex_t, ptr, i32 }
%struct.cram_range = type { i32, i32, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.hFILE = type { ptr, ptr, ptr, ptr, ptr, i64, i8, i32 }
%struct.cram_container = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, ptr, i64, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cram_block = type { i32, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i32 }
%struct.cram_slice = type { ptr, ptr, ptr, ptr, i32, i32, i64, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.cram_block_slice_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, [16 x i8] }
%struct.cram_record = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s.crai\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [21 x i8] c"%d\09%d\09%d\09%ld\09%d\09%d%n\00", align 1, !dbg !12
@stderr = external global ptr, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"Malformed index file, refid %d\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [43 x i8] c"Unknown reference ID. Missing from index?\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [3 x i8] c"wz\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [20 x i8] c"Cram container read\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [54 x i8] c"c->comp_hdr_block->content_type == COMPRESSION_HEADER\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [18 x i8] c"cram/cram_index.c\00", align 1, !dbg !42
@__PRETTY_FUNCTION__.cram_index_build = private unnamed_addr constant [46 x i8] c"int cram_index_build(cram_fd *, const char *)\00", align 1, !dbg !47
@.str.9 = private unnamed_addr constant [42 x i8] c"spos - cpos - c->offset == c->landmark[j]\00", align 1, !dbg !53
@.str.10 = private unnamed_addr constant [20 x i8] c"%d\09%d\09%d\09%ld\09%d\09%d\0A\00", align 1, !dbg !58
@.str.11 = private unnamed_addr constant [25 x i8] c"cpos == hpos + c->length\00", align 1, !dbg !60

; Function Attrs: nounwind uwtable
define dso_local i32 @cram_index_load(ptr noundef %fd, ptr noundef %fn) #0 !dbg !124 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %fn2 = alloca [4096 x i8], align 16
  %buf = alloca [65536 x i8], align 16
  %len = alloca i64, align 8
  %kstr = alloca %struct.__kstring_t, align 8
  %fp = alloca ptr, align 8
  %idx = alloca ptr, align 8
  %idx_stack = alloca ptr, align 8
  %ep = alloca ptr, align 8
  %e = alloca %struct.cram_index, align 8
  %idx_stack_alloc = alloca i32, align 4
  %idx_stack_ptr = alloca i32, align 4
  %pos = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %l52 = alloca i64, align 8
  %s53 = alloca ptr, align 8
  %nchars = alloca i32, align 4
  %line = alloca ptr, align 8
  %index_end = alloca i64, align 8
  store ptr %fd, ptr %fd.addr, align 8, !tbaa !1136
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !1103, metadata !DIExpression()), !dbg !1140
  store ptr %fn, ptr %fn.addr, align 8, !tbaa !1136
  tail call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !1104, metadata !DIExpression()), !dbg !1141
  call void @llvm.lifetime.start.p0(i64 4096, ptr %fn2) #12, !dbg !1142
  tail call void @llvm.dbg.declare(metadata ptr %fn2, metadata !1105, metadata !DIExpression()), !dbg !1143
  call void @llvm.lifetime.start.p0(i64 65536, ptr %buf) #12, !dbg !1144
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !1107, metadata !DIExpression()), !dbg !1145
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #12, !dbg !1146
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !1111, metadata !DIExpression()), !dbg !1147
  call void @llvm.lifetime.start.p0(i64 24, ptr %kstr) #12, !dbg !1148
  tail call void @llvm.dbg.declare(metadata ptr %kstr, metadata !1112, metadata !DIExpression()), !dbg !1149
  call void @llvm.memset.p0.i64(ptr align 8 %kstr, i8 0, i64 24, i1 false), !dbg !1149
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp) #12, !dbg !1150
  tail call void @llvm.dbg.declare(metadata ptr %fp, metadata !1113, metadata !DIExpression()), !dbg !1151
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #12, !dbg !1152
  tail call void @llvm.dbg.declare(metadata ptr %idx, metadata !1116, metadata !DIExpression()), !dbg !1153
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx_stack) #12, !dbg !1154
  tail call void @llvm.dbg.declare(metadata ptr %idx_stack, metadata !1117, metadata !DIExpression()), !dbg !1155
  store ptr null, ptr %idx_stack, align 8, !dbg !1155, !tbaa !1136
  call void @llvm.lifetime.start.p0(i64 8, ptr %ep) #12, !dbg !1154
  tail call void @llvm.dbg.declare(metadata ptr %ep, metadata !1119, metadata !DIExpression()), !dbg !1156
  call void @llvm.lifetime.start.p0(i64 48, ptr %e) #12, !dbg !1154
  tail call void @llvm.dbg.declare(metadata ptr %e, metadata !1120, metadata !DIExpression()), !dbg !1157
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx_stack_alloc) #12, !dbg !1158
  tail call void @llvm.dbg.declare(metadata ptr %idx_stack_alloc, metadata !1121, metadata !DIExpression()), !dbg !1159
  store i32 0, ptr %idx_stack_alloc, align 4, !dbg !1159, !tbaa !1160
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx_stack_ptr) #12, !dbg !1158
  tail call void @llvm.dbg.declare(metadata ptr %idx_stack_ptr, metadata !1122, metadata !DIExpression()), !dbg !1162
  store i32 0, ptr %idx_stack_ptr, align 4, !dbg !1162, !tbaa !1160
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #12, !dbg !1163
  tail call void @llvm.dbg.declare(metadata ptr %pos, metadata !1123, metadata !DIExpression()), !dbg !1164
  store i64 0, ptr %pos, align 8, !dbg !1164, !tbaa !1165
  %0 = load ptr, ptr %fd.addr, align 8, !dbg !1167, !tbaa !1136
  %index = getelementptr inbounds %struct.cram_fd, ptr %0, i32 0, i32 37, !dbg !1169
  %1 = load ptr, ptr %index, align 8, !dbg !1169, !tbaa !1170
  %tobool = icmp ne ptr %1, null, !dbg !1167
  br i1 %tobool, label %if.then, label %if.end, !dbg !1173

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup202, !dbg !1174

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %fd.addr, align 8, !dbg !1175, !tbaa !1136
  %index_sz = getelementptr inbounds %struct.cram_fd, ptr %2, i32 0, i32 36, !dbg !1176
  store i32 1, ptr %index_sz, align 8, !dbg !1177, !tbaa !1178
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 48) #13, !dbg !1179
  %3 = load ptr, ptr %fd.addr, align 8, !dbg !1180, !tbaa !1136
  %index1 = getelementptr inbounds %struct.cram_fd, ptr %3, i32 0, i32 37, !dbg !1181
  store ptr %call, ptr %index1, align 8, !dbg !1182, !tbaa !1170
  %4 = load ptr, ptr %fd.addr, align 8, !dbg !1183, !tbaa !1136
  %index2 = getelementptr inbounds %struct.cram_fd, ptr %4, i32 0, i32 37, !dbg !1185
  %5 = load ptr, ptr %index2, align 8, !dbg !1185, !tbaa !1170
  %tobool3 = icmp ne ptr %5, null, !dbg !1183
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1186

if.then4:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !1187
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup202, !dbg !1187

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %fd.addr, align 8, !dbg !1188, !tbaa !1136
  %index6 = getelementptr inbounds %struct.cram_fd, ptr %6, i32 0, i32 37, !dbg !1189
  %7 = load ptr, ptr %index6, align 8, !dbg !1189, !tbaa !1170
  %arrayidx = getelementptr inbounds %struct.cram_index, ptr %7, i64 0, !dbg !1188
  store ptr %arrayidx, ptr %idx, align 8, !dbg !1190, !tbaa !1136
  %8 = load ptr, ptr %idx, align 8, !dbg !1191, !tbaa !1136
  %refid = getelementptr inbounds %struct.cram_index, ptr %8, i32 0, i32 3, !dbg !1192
  store i32 -1, ptr %refid, align 8, !dbg !1193, !tbaa !1194
  %9 = load ptr, ptr %idx, align 8, !dbg !1196, !tbaa !1136
  %start = getelementptr inbounds %struct.cram_index, ptr %9, i32 0, i32 4, !dbg !1197
  store i32 -2147483648, ptr %start, align 4, !dbg !1198, !tbaa !1199
  %10 = load ptr, ptr %idx, align 8, !dbg !1200, !tbaa !1136
  %end = getelementptr inbounds %struct.cram_index, ptr %10, i32 0, i32 5, !dbg !1201
  store i32 2147483647, ptr %end, align 8, !dbg !1202, !tbaa !1203
  %11 = load i32, ptr %idx_stack_alloc, align 4, !dbg !1204, !tbaa !1160
  %inc = add nsw i32 %11, 1, !dbg !1204
  store i32 %inc, ptr %idx_stack_alloc, align 4, !dbg !1204, !tbaa !1160
  %conv = sext i32 %inc to i64, !dbg !1204
  %call7 = call noalias ptr @calloc(i64 noundef %conv, i64 noundef 8) #13, !dbg !1205
  store ptr %call7, ptr %idx_stack, align 8, !dbg !1206, !tbaa !1136
  %12 = load ptr, ptr %idx, align 8, !dbg !1207, !tbaa !1136
  %13 = load ptr, ptr %idx_stack, align 8, !dbg !1208, !tbaa !1136
  %14 = load i32, ptr %idx_stack_ptr, align 4, !dbg !1209, !tbaa !1160
  %idxprom = sext i32 %14 to i64, !dbg !1208
  %arrayidx8 = getelementptr inbounds ptr, ptr %13, i64 %idxprom, !dbg !1208
  store ptr %12, ptr %arrayidx8, align 8, !dbg !1210, !tbaa !1136
  %arraydecay = getelementptr inbounds [4096 x i8], ptr %fn2, i64 0, i64 0, !dbg !1211
  %15 = load ptr, ptr %fn.addr, align 8, !dbg !1212, !tbaa !1136
  %call9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str, ptr noundef %15) #12, !dbg !1213
  %arraydecay10 = getelementptr inbounds [4096 x i8], ptr %fn2, i64 0, i64 0, !dbg !1214
  %call11 = call ptr @hopen(ptr noundef %arraydecay10, ptr noundef @.str.1), !dbg !1216
  store ptr %call11, ptr %fp, align 8, !dbg !1217, !tbaa !1136
  %tobool12 = icmp ne ptr %call11, null, !dbg !1217
  br i1 %tobool12, label %if.end15, label %if.then13, !dbg !1218

if.then13:                                        ; preds = %if.end5
  %arraydecay14 = getelementptr inbounds [4096 x i8], ptr %fn2, i64 0, i64 0, !dbg !1219
  call void @perror(ptr noundef %arraydecay14), !dbg !1221
  %16 = load ptr, ptr %idx_stack, align 8, !dbg !1222, !tbaa !1136
  call void @free(ptr noundef %16) #12, !dbg !1223
  store i32 -1, ptr %retval, align 4, !dbg !1224
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup202, !dbg !1224

if.end15:                                         ; preds = %if.end5
  br label %while.cond, !dbg !1225

while.cond:                                       ; preds = %while.body, %if.end15
  %17 = load ptr, ptr %fp, align 8, !dbg !1226, !tbaa !1136
  %arraydecay16 = getelementptr inbounds [65536 x i8], ptr %buf, i64 0, i64 0, !dbg !1227
  %call17 = call i64 @hread(ptr noundef %17, ptr noundef %arraydecay16, i64 noundef 65536), !dbg !1228
  store i64 %call17, ptr %len, align 8, !dbg !1229, !tbaa !1165
  %cmp = icmp sgt i64 %call17, 0, !dbg !1230
  br i1 %cmp, label %while.body, label %while.end, !dbg !1225

while.body:                                       ; preds = %while.cond
  %arraydecay19 = getelementptr inbounds [65536 x i8], ptr %buf, i64 0, i64 0, !dbg !1231
  %18 = load i64, ptr %len, align 8, !dbg !1232, !tbaa !1165
  %conv20 = trunc i64 %18 to i32, !dbg !1232
  %call21 = call i32 @kputsn(ptr noundef %arraydecay19, i32 noundef %conv20, ptr noundef %kstr), !dbg !1233
  br label %while.cond, !dbg !1225, !llvm.loop !1234

while.end:                                        ; preds = %while.cond
  %19 = load i64, ptr %len, align 8, !dbg !1237, !tbaa !1165
  %cmp22 = icmp slt i64 %19, 0, !dbg !1239
  br i1 %cmp22, label %if.then26, label %lor.lhs.false, !dbg !1240

lor.lhs.false:                                    ; preds = %while.end
  %l = getelementptr inbounds %struct.__kstring_t, ptr %kstr, i32 0, i32 0, !dbg !1241
  %20 = load i64, ptr %l, align 8, !dbg !1241, !tbaa !1242
  %cmp24 = icmp ult i64 %20, 2, !dbg !1244
  br i1 %cmp24, label %if.then26, label %if.end31, !dbg !1245

if.then26:                                        ; preds = %lor.lhs.false, %while.end
  %s = getelementptr inbounds %struct.__kstring_t, ptr %kstr, i32 0, i32 2, !dbg !1246
  %21 = load ptr, ptr %s, align 8, !dbg !1246, !tbaa !1249
  %tobool27 = icmp ne ptr %21, null, !dbg !1250
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !1251

if.then28:                                        ; preds = %if.then26
  %s29 = getelementptr inbounds %struct.__kstring_t, ptr %kstr, i32 0, i32 2, !dbg !1252
  %22 = load ptr, ptr %s29, align 8, !dbg !1252, !tbaa !1249
  call void @free(ptr noundef %22) #12, !dbg !1253
  br label %if.end30, !dbg !1253

if.end30:                                         ; preds = %if.then28, %if.then26
  %23 = load ptr, ptr %idx_stack, align 8, !dbg !1254, !tbaa !1136
  call void @free(ptr noundef %23) #12, !dbg !1255
  store i32 -1, ptr %retval, align 4, !dbg !1256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup202, !dbg !1256

if.end31:                                         ; preds = %lor.lhs.false
  %24 = load ptr, ptr %fp, align 8, !dbg !1257, !tbaa !1136
  %call32 = call i32 @hclose(ptr noundef %24), !dbg !1259
  %tobool33 = icmp ne i32 %call32, 0, !dbg !1259
  br i1 %tobool33, label %if.then34, label %if.end40, !dbg !1260

if.then34:                                        ; preds = %if.end31
  %s35 = getelementptr inbounds %struct.__kstring_t, ptr %kstr, i32 0, i32 2, !dbg !1261
  %25 = load ptr, ptr %s35, align 8, !dbg !1261, !tbaa !1249
  %tobool36 = icmp ne ptr %25, null, !dbg !1264
  br i1 %tobool36, label %if.then37, label %if.end39, !dbg !1265

if.then37:                                        ; preds = %if.then34
  %s38 = getelementptr inbounds %struct.__kstring_t, ptr %kstr, i32 0, i32 2, !dbg !1266
  %26 = load ptr, ptr %s38, align 8, !dbg !1266, !tbaa !1249
  call void @free(ptr noundef %26) #12, !dbg !1267
  br label %if.end39, !dbg !1267

if.end39:                                         ; preds = %if.then37, %if.then34
  %27 = load ptr, ptr %idx_stack, align 8, !dbg !1268, !tbaa !1136
  call void @free(ptr noundef %27) #12, !dbg !1269
  store i32 -1, ptr %retval, align 4, !dbg !1270
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup202, !dbg !1270

if.end40:                                         ; preds = %if.end31
  %s41 = getelementptr inbounds %struct.__kstring_t, ptr %kstr, i32 0, i32 2, !dbg !1271
  %28 = load ptr, ptr %s41, align 8, !dbg !1271, !tbaa !1249
  %arrayidx42 = getelementptr inbounds i8, ptr %28, i64 0, !dbg !1272
  %29 = load i8, ptr %arrayidx42, align 1, !dbg !1272, !tbaa !1273
  %conv43 = sext i8 %29 to i32, !dbg !1272
  %cmp44 = icmp eq i32 %conv43, 31, !dbg !1274
  br i1 %cmp44, label %land.lhs.true, label %if.end64, !dbg !1275

land.lhs.true:                                    ; preds = %if.end40
  %s46 = getelementptr inbounds %struct.__kstring_t, ptr %kstr, i32 0, i32 2, !dbg !1276
  %30 = load ptr, ptr %s46, align 8, !dbg !1276, !tbaa !1249
  %arrayidx47 = getelementptr inbounds i8, ptr %30, i64 1, !dbg !1277
  %31 = load i8, ptr %arrayidx47, align 1, !dbg !1277, !tbaa !1273
  %conv48 = zext i8 %31 to i32, !dbg !1278
  %cmp49 = icmp eq i32 %conv48, 139, !dbg !1279
  br i1 %cmp49, label %if.then51, label %if.end64, !dbg !1280

if.then51:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %l52) #12, !dbg !1281
  tail call void @llvm.dbg.declare(metadata ptr %l52, metadata !1124, metadata !DIExpression()), !dbg !1282
  call void @llvm.lifetime.start.p0(i64 8, ptr %s53) #12, !dbg !1283
  tail call void @llvm.dbg.declare(metadata ptr %s53, metadata !1127, metadata !DIExpression()), !dbg !1284
  %s54 = getelementptr inbounds %struct.__kstring_t, ptr %kstr, i32 0, i32 2, !dbg !1285
  %32 = load ptr, ptr %s54, align 8, !dbg !1285, !tbaa !1249
  %l55 = getelementptr inbounds %struct.__kstring_t, ptr %kstr, i32 0, i32 0, !dbg !1286
  %33 = load i64, ptr %l55, align 8, !dbg !1286, !tbaa !1242
  %call56 = call ptr @zlib_mem_inflate(ptr noundef %32, i64 noundef %33, ptr noundef %l52), !dbg !1287
  store ptr %call56, ptr %s53, align 8, !dbg !1284, !tbaa !1136
  %s57 = getelementptr inbounds %struct.__kstring_t, ptr %kstr, i32 0, i32 2, !dbg !1288
  %34 = load ptr, ptr %s57, align 8, !dbg !1288, !tbaa !1249
  call void @free(ptr noundef %34) #12, !dbg !1289
  %35 = load ptr, ptr %s53, align 8, !dbg !1290, !tbaa !1136
  %tobool58 = icmp ne ptr %35, null, !dbg !1290
  br i1 %tobool58, label %if.end60, label %if.then59, !dbg !1292

if.then59:                                        ; preds = %if.then51
  %36 = load ptr, ptr %idx_stack, align 8, !dbg !1293, !tbaa !1136
  call void @free(ptr noundef %36) #12, !dbg !1295
  store i32 -1, ptr %retval, align 4, !dbg !1296
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1296

if.end60:                                         ; preds = %if.then51
  %37 = load ptr, ptr %s53, align 8, !dbg !1297, !tbaa !1136
  %s61 = getelementptr inbounds %struct.__kstring_t, ptr %kstr, i32 0, i32 2, !dbg !1298
  store ptr %37, ptr %s61, align 8, !dbg !1299, !tbaa !1249
  %38 = load i64, ptr %l52, align 8, !dbg !1300, !tbaa !1165
  %l62 = getelementptr inbounds %struct.__kstring_t, ptr %kstr, i32 0, i32 0, !dbg !1301
  store i64 %38, ptr %l62, align 8, !dbg !1302, !tbaa !1242
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1303
  br label %cleanup, !dbg !1303

cleanup:                                          ; preds = %if.end60, %if.then59
  call void @llvm.lifetime.end.p0(i64 8, ptr %s53) #12, !dbg !1303
  call void @llvm.lifetime.end.p0(i64 8, ptr %l52) #12, !dbg !1303
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup202 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end64, !dbg !1304

if.end64:                                         ; preds = %cleanup.cont, %land.lhs.true, %if.end40
  br label %do.body, !dbg !1305

do.body:                                          ; preds = %do.cond, %if.end64
  call void @llvm.lifetime.start.p0(i64 4, ptr %nchars) #12, !dbg !1306
  tail call void @llvm.dbg.declare(metadata ptr %nchars, metadata !1128, metadata !DIExpression()), !dbg !1307
  call void @llvm.lifetime.start.p0(i64 8, ptr %line) #12, !dbg !1308
  tail call void @llvm.dbg.declare(metadata ptr %line, metadata !1130, metadata !DIExpression()), !dbg !1309
  %s65 = getelementptr inbounds %struct.__kstring_t, ptr %kstr, i32 0, i32 2, !dbg !1310
  %39 = load ptr, ptr %s65, align 8, !dbg !1310, !tbaa !1249
  %40 = load i64, ptr %pos, align 8, !dbg !1311, !tbaa !1165
  %arrayidx66 = getelementptr inbounds i8, ptr %39, i64 %40, !dbg !1312
  store ptr %arrayidx66, ptr %line, align 8, !dbg !1309, !tbaa !1136
  %41 = load ptr, ptr %line, align 8, !dbg !1313, !tbaa !1136
  %refid67 = getelementptr inbounds %struct.cram_index, ptr %e, i32 0, i32 3, !dbg !1315
  %start68 = getelementptr inbounds %struct.cram_index, ptr %e, i32 0, i32 4, !dbg !1316
  %end69 = getelementptr inbounds %struct.cram_index, ptr %e, i32 0, i32 5, !dbg !1317
  %offset = getelementptr inbounds %struct.cram_index, ptr %e, i32 0, i32 9, !dbg !1318
  %slice = getelementptr inbounds %struct.cram_index, ptr %e, i32 0, i32 7, !dbg !1319
  %len70 = getelementptr inbounds %struct.cram_index, ptr %e, i32 0, i32 8, !dbg !1320
  %call71 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %41, ptr noundef @.str.2, ptr noundef %refid67, ptr noundef %start68, ptr noundef %end69, ptr noundef %offset, ptr noundef %slice, ptr noundef %len70, ptr noundef %nchars) #12, !dbg !1321
  %cmp72 = icmp ne i32 %call71, 6, !dbg !1322
  br i1 %cmp72, label %if.then74, label %if.end76, !dbg !1323

if.then74:                                        ; preds = %do.body
  %s75 = getelementptr inbounds %struct.__kstring_t, ptr %kstr, i32 0, i32 2, !dbg !1324
  %42 = load ptr, ptr %s75, align 8, !dbg !1324, !tbaa !1249
  call void @free(ptr noundef %42) #12, !dbg !1326
  %43 = load ptr, ptr %idx_stack, align 8, !dbg !1327, !tbaa !1136
  call void @free(ptr noundef %43) #12, !dbg !1328
  store i32 -1, ptr %retval, align 4, !dbg !1329
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup194, !dbg !1329

if.end76:                                         ; preds = %do.body
  %start77 = getelementptr inbounds %struct.cram_index, ptr %e, i32 0, i32 4, !dbg !1330
  %44 = load i32, ptr %start77, align 4, !dbg !1330, !tbaa !1199
  %sub = sub nsw i32 %44, 1, !dbg !1331
  %end78 = getelementptr inbounds %struct.cram_index, ptr %e, i32 0, i32 5, !dbg !1332
  %45 = load i32, ptr %end78, align 8, !dbg !1333, !tbaa !1203
  %add = add nsw i32 %45, %sub, !dbg !1333
  store i32 %add, ptr %end78, align 8, !dbg !1333, !tbaa !1203
  %refid79 = getelementptr inbounds %struct.cram_index, ptr %e, i32 0, i32 3, !dbg !1334
  %46 = load i32, ptr %refid79, align 8, !dbg !1334, !tbaa !1194
  %cmp80 = icmp slt i32 %46, -1, !dbg !1336
  br i1 %cmp80, label %if.then82, label %if.end86, !dbg !1337

if.then82:                                        ; preds = %if.end76
  %s83 = getelementptr inbounds %struct.__kstring_t, ptr %kstr, i32 0, i32 2, !dbg !1338
  %47 = load ptr, ptr %s83, align 8, !dbg !1338, !tbaa !1249
  call void @free(ptr noundef %47) #12, !dbg !1340
  %48 = load ptr, ptr %idx_stack, align 8, !dbg !1341, !tbaa !1136
  call void @free(ptr noundef %48) #12, !dbg !1342
  %49 = load ptr, ptr @stderr, align 8, !dbg !1343, !tbaa !1136
  %refid84 = getelementptr inbounds %struct.cram_index, ptr %e, i32 0, i32 3, !dbg !1344
  %50 = load i32, ptr %refid84, align 8, !dbg !1344, !tbaa !1194
  %call85 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef @.str.3, i32 noundef %50), !dbg !1345
  store i32 -1, ptr %retval, align 4, !dbg !1346
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup194, !dbg !1346

if.end86:                                         ; preds = %if.end76
  %refid87 = getelementptr inbounds %struct.cram_index, ptr %e, i32 0, i32 3, !dbg !1347
  %51 = load i32, ptr %refid87, align 8, !dbg !1347, !tbaa !1194
  %52 = load ptr, ptr %idx, align 8, !dbg !1348, !tbaa !1136
  %refid88 = getelementptr inbounds %struct.cram_index, ptr %52, i32 0, i32 3, !dbg !1349
  %53 = load i32, ptr %refid88, align 8, !dbg !1349, !tbaa !1194
  %cmp89 = icmp ne i32 %51, %53, !dbg !1350
  br i1 %cmp89, label %if.then91, label %if.end126, !dbg !1351

if.then91:                                        ; preds = %if.end86
  %54 = load ptr, ptr %fd.addr, align 8, !dbg !1352, !tbaa !1136
  %index_sz92 = getelementptr inbounds %struct.cram_fd, ptr %54, i32 0, i32 36, !dbg !1353
  %55 = load i32, ptr %index_sz92, align 8, !dbg !1353, !tbaa !1178
  %refid93 = getelementptr inbounds %struct.cram_index, ptr %e, i32 0, i32 3, !dbg !1354
  %56 = load i32, ptr %refid93, align 8, !dbg !1354, !tbaa !1194
  %add94 = add nsw i32 %56, 2, !dbg !1355
  %cmp95 = icmp slt i32 %55, %add94, !dbg !1356
  br i1 %cmp95, label %if.then97, label %if.end114, !dbg !1357

if.then97:                                        ; preds = %if.then91
  call void @llvm.lifetime.start.p0(i64 8, ptr %index_end) #12, !dbg !1358
  tail call void @llvm.dbg.declare(metadata ptr %index_end, metadata !1131, metadata !DIExpression()), !dbg !1359
  %57 = load ptr, ptr %fd.addr, align 8, !dbg !1360, !tbaa !1136
  %index_sz98 = getelementptr inbounds %struct.cram_fd, ptr %57, i32 0, i32 36, !dbg !1361
  %58 = load i32, ptr %index_sz98, align 8, !dbg !1361, !tbaa !1178
  %conv99 = sext i32 %58 to i64, !dbg !1360
  %mul = mul i64 %conv99, 48, !dbg !1362
  store i64 %mul, ptr %index_end, align 8, !dbg !1359, !tbaa !1165
  %refid100 = getelementptr inbounds %struct.cram_index, ptr %e, i32 0, i32 3, !dbg !1363
  %59 = load i32, ptr %refid100, align 8, !dbg !1363, !tbaa !1194
  %add101 = add nsw i32 %59, 2, !dbg !1364
  %60 = load ptr, ptr %fd.addr, align 8, !dbg !1365, !tbaa !1136
  %index_sz102 = getelementptr inbounds %struct.cram_fd, ptr %60, i32 0, i32 36, !dbg !1366
  store i32 %add101, ptr %index_sz102, align 8, !dbg !1367, !tbaa !1178
  %61 = load ptr, ptr %fd.addr, align 8, !dbg !1368, !tbaa !1136
  %index103 = getelementptr inbounds %struct.cram_fd, ptr %61, i32 0, i32 37, !dbg !1369
  %62 = load ptr, ptr %index103, align 8, !dbg !1369, !tbaa !1170
  %63 = load ptr, ptr %fd.addr, align 8, !dbg !1370, !tbaa !1136
  %index_sz104 = getelementptr inbounds %struct.cram_fd, ptr %63, i32 0, i32 36, !dbg !1371
  %64 = load i32, ptr %index_sz104, align 8, !dbg !1371, !tbaa !1178
  %conv105 = sext i32 %64 to i64, !dbg !1370
  %mul106 = mul i64 %conv105, 48, !dbg !1372
  %call107 = call ptr @realloc(ptr noundef %62, i64 noundef %mul106) #14, !dbg !1373
  %65 = load ptr, ptr %fd.addr, align 8, !dbg !1374, !tbaa !1136
  %index108 = getelementptr inbounds %struct.cram_fd, ptr %65, i32 0, i32 37, !dbg !1375
  store ptr %call107, ptr %index108, align 8, !dbg !1376, !tbaa !1170
  %66 = load ptr, ptr %fd.addr, align 8, !dbg !1377, !tbaa !1136
  %index109 = getelementptr inbounds %struct.cram_fd, ptr %66, i32 0, i32 37, !dbg !1378
  %67 = load ptr, ptr %index109, align 8, !dbg !1378, !tbaa !1170
  %68 = load i64, ptr %index_end, align 8, !dbg !1379, !tbaa !1165
  %add.ptr = getelementptr inbounds i8, ptr %67, i64 %68, !dbg !1380
  %69 = load ptr, ptr %fd.addr, align 8, !dbg !1381, !tbaa !1136
  %index_sz110 = getelementptr inbounds %struct.cram_fd, ptr %69, i32 0, i32 36, !dbg !1382
  %70 = load i32, ptr %index_sz110, align 8, !dbg !1382, !tbaa !1178
  %conv111 = sext i32 %70 to i64, !dbg !1381
  %mul112 = mul i64 %conv111, 48, !dbg !1383
  %71 = load i64, ptr %index_end, align 8, !dbg !1384, !tbaa !1165
  %sub113 = sub i64 %mul112, %71, !dbg !1385
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %sub113, i1 false), !dbg !1386
  call void @llvm.lifetime.end.p0(i64 8, ptr %index_end) #12, !dbg !1387
  br label %if.end114, !dbg !1388

if.end114:                                        ; preds = %if.then97, %if.then91
  %72 = load ptr, ptr %fd.addr, align 8, !dbg !1389, !tbaa !1136
  %index115 = getelementptr inbounds %struct.cram_fd, ptr %72, i32 0, i32 37, !dbg !1390
  %73 = load ptr, ptr %index115, align 8, !dbg !1390, !tbaa !1170
  %refid116 = getelementptr inbounds %struct.cram_index, ptr %e, i32 0, i32 3, !dbg !1391
  %74 = load i32, ptr %refid116, align 8, !dbg !1391, !tbaa !1194
  %add117 = add nsw i32 %74, 1, !dbg !1392
  %idxprom118 = sext i32 %add117 to i64, !dbg !1389
  %arrayidx119 = getelementptr inbounds %struct.cram_index, ptr %73, i64 %idxprom118, !dbg !1389
  store ptr %arrayidx119, ptr %idx, align 8, !dbg !1393, !tbaa !1136
  %refid120 = getelementptr inbounds %struct.cram_index, ptr %e, i32 0, i32 3, !dbg !1394
  %75 = load i32, ptr %refid120, align 8, !dbg !1394, !tbaa !1194
  %76 = load ptr, ptr %idx, align 8, !dbg !1395, !tbaa !1136
  %refid121 = getelementptr inbounds %struct.cram_index, ptr %76, i32 0, i32 3, !dbg !1396
  store i32 %75, ptr %refid121, align 8, !dbg !1397, !tbaa !1194
  %77 = load ptr, ptr %idx, align 8, !dbg !1398, !tbaa !1136
  %start122 = getelementptr inbounds %struct.cram_index, ptr %77, i32 0, i32 4, !dbg !1399
  store i32 -2147483648, ptr %start122, align 4, !dbg !1400, !tbaa !1199
  %78 = load ptr, ptr %idx, align 8, !dbg !1401, !tbaa !1136
  %end123 = getelementptr inbounds %struct.cram_index, ptr %78, i32 0, i32 5, !dbg !1402
  store i32 2147483647, ptr %end123, align 8, !dbg !1403, !tbaa !1203
  %79 = load ptr, ptr %idx, align 8, !dbg !1404, !tbaa !1136
  %nalloc = getelementptr inbounds %struct.cram_index, ptr %79, i32 0, i32 1, !dbg !1405
  store i32 0, ptr %nalloc, align 4, !dbg !1406, !tbaa !1407
  %80 = load ptr, ptr %idx, align 8, !dbg !1408, !tbaa !1136
  %nslice = getelementptr inbounds %struct.cram_index, ptr %80, i32 0, i32 0, !dbg !1409
  store i32 0, ptr %nslice, align 8, !dbg !1410, !tbaa !1411
  %81 = load ptr, ptr %idx, align 8, !dbg !1412, !tbaa !1136
  %e124 = getelementptr inbounds %struct.cram_index, ptr %81, i32 0, i32 2, !dbg !1413
  store ptr null, ptr %e124, align 8, !dbg !1414, !tbaa !1415
  %82 = load ptr, ptr %idx, align 8, !dbg !1416, !tbaa !1136
  %83 = load ptr, ptr %idx_stack, align 8, !dbg !1417, !tbaa !1136
  store i32 0, ptr %idx_stack_ptr, align 4, !dbg !1418, !tbaa !1160
  %arrayidx125 = getelementptr inbounds ptr, ptr %83, i64 0, !dbg !1417
  store ptr %82, ptr %arrayidx125, align 8, !dbg !1419, !tbaa !1136
  br label %if.end126, !dbg !1420

if.end126:                                        ; preds = %if.end114, %if.end86
  br label %while.cond127, !dbg !1421

while.cond127:                                    ; preds = %while.body136, %if.end126
  %start128 = getelementptr inbounds %struct.cram_index, ptr %e, i32 0, i32 4, !dbg !1422
  %84 = load i32, ptr %start128, align 4, !dbg !1422, !tbaa !1199
  %85 = load ptr, ptr %idx, align 8, !dbg !1423, !tbaa !1136
  %start129 = getelementptr inbounds %struct.cram_index, ptr %85, i32 0, i32 4, !dbg !1424
  %86 = load i32, ptr %start129, align 4, !dbg !1424, !tbaa !1199
  %cmp130 = icmp sge i32 %84, %86, !dbg !1425
  br i1 %cmp130, label %land.rhs, label %land.end, !dbg !1426

land.rhs:                                         ; preds = %while.cond127
  %end132 = getelementptr inbounds %struct.cram_index, ptr %e, i32 0, i32 5, !dbg !1427
  %87 = load i32, ptr %end132, align 8, !dbg !1427, !tbaa !1203
  %88 = load ptr, ptr %idx, align 8, !dbg !1428, !tbaa !1136
  %end133 = getelementptr inbounds %struct.cram_index, ptr %88, i32 0, i32 5, !dbg !1429
  %89 = load i32, ptr %end133, align 8, !dbg !1429, !tbaa !1203
  %cmp134 = icmp sle i32 %87, %89, !dbg !1430
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond127
  %90 = phi i1 [ false, %while.cond127 ], [ %cmp134, %land.rhs ], !dbg !1431
  %lnot = xor i1 %90, true, !dbg !1432
  br i1 %lnot, label %while.body136, label %while.end139, !dbg !1421

while.body136:                                    ; preds = %land.end
  %91 = load ptr, ptr %idx_stack, align 8, !dbg !1433, !tbaa !1136
  %92 = load i32, ptr %idx_stack_ptr, align 4, !dbg !1435, !tbaa !1160
  %dec = add nsw i32 %92, -1, !dbg !1435
  store i32 %dec, ptr %idx_stack_ptr, align 4, !dbg !1435, !tbaa !1160
  %idxprom137 = sext i32 %dec to i64, !dbg !1433
  %arrayidx138 = getelementptr inbounds ptr, ptr %91, i64 %idxprom137, !dbg !1433
  %93 = load ptr, ptr %arrayidx138, align 8, !dbg !1433, !tbaa !1136
  store ptr %93, ptr %idx, align 8, !dbg !1436, !tbaa !1136
  br label %while.cond127, !dbg !1421, !llvm.loop !1437

while.end139:                                     ; preds = %land.end
  %94 = load ptr, ptr %idx, align 8, !dbg !1439, !tbaa !1136
  %nslice140 = getelementptr inbounds %struct.cram_index, ptr %94, i32 0, i32 0, !dbg !1441
  %95 = load i32, ptr %nslice140, align 8, !dbg !1441, !tbaa !1411
  %add141 = add nsw i32 %95, 1, !dbg !1442
  %96 = load ptr, ptr %idx, align 8, !dbg !1443, !tbaa !1136
  %nalloc142 = getelementptr inbounds %struct.cram_index, ptr %96, i32 0, i32 1, !dbg !1444
  %97 = load i32, ptr %nalloc142, align 4, !dbg !1444, !tbaa !1407
  %cmp143 = icmp sge i32 %add141, %97, !dbg !1445
  br i1 %cmp143, label %if.then145, label %if.end157, !dbg !1446

if.then145:                                       ; preds = %while.end139
  %98 = load ptr, ptr %idx, align 8, !dbg !1447, !tbaa !1136
  %nalloc146 = getelementptr inbounds %struct.cram_index, ptr %98, i32 0, i32 1, !dbg !1449
  %99 = load i32, ptr %nalloc146, align 4, !dbg !1449, !tbaa !1407
  %tobool147 = icmp ne i32 %99, 0, !dbg !1447
  br i1 %tobool147, label %cond.true, label %cond.false, !dbg !1447

cond.true:                                        ; preds = %if.then145
  %100 = load ptr, ptr %idx, align 8, !dbg !1450, !tbaa !1136
  %nalloc148 = getelementptr inbounds %struct.cram_index, ptr %100, i32 0, i32 1, !dbg !1451
  %101 = load i32, ptr %nalloc148, align 4, !dbg !1451, !tbaa !1407
  %mul149 = mul nsw i32 %101, 2, !dbg !1452
  br label %cond.end, !dbg !1447

cond.false:                                       ; preds = %if.then145
  br label %cond.end, !dbg !1447

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul149, %cond.true ], [ 16, %cond.false ], !dbg !1447
  %102 = load ptr, ptr %idx, align 8, !dbg !1453, !tbaa !1136
  %nalloc150 = getelementptr inbounds %struct.cram_index, ptr %102, i32 0, i32 1, !dbg !1454
  store i32 %cond, ptr %nalloc150, align 4, !dbg !1455, !tbaa !1407
  %103 = load ptr, ptr %idx, align 8, !dbg !1456, !tbaa !1136
  %e151 = getelementptr inbounds %struct.cram_index, ptr %103, i32 0, i32 2, !dbg !1457
  %104 = load ptr, ptr %e151, align 8, !dbg !1457, !tbaa !1415
  %105 = load ptr, ptr %idx, align 8, !dbg !1458, !tbaa !1136
  %nalloc152 = getelementptr inbounds %struct.cram_index, ptr %105, i32 0, i32 1, !dbg !1459
  %106 = load i32, ptr %nalloc152, align 4, !dbg !1459, !tbaa !1407
  %conv153 = sext i32 %106 to i64, !dbg !1458
  %mul154 = mul i64 %conv153, 48, !dbg !1460
  %call155 = call ptr @realloc(ptr noundef %104, i64 noundef %mul154) #14, !dbg !1461
  %107 = load ptr, ptr %idx, align 8, !dbg !1462, !tbaa !1136
  %e156 = getelementptr inbounds %struct.cram_index, ptr %107, i32 0, i32 2, !dbg !1463
  store ptr %call155, ptr %e156, align 8, !dbg !1464, !tbaa !1415
  br label %if.end157, !dbg !1465

if.end157:                                        ; preds = %cond.end, %while.end139
  %nslice158 = getelementptr inbounds %struct.cram_index, ptr %e, i32 0, i32 0, !dbg !1466
  store i32 0, ptr %nslice158, align 8, !dbg !1467, !tbaa !1411
  %nalloc159 = getelementptr inbounds %struct.cram_index, ptr %e, i32 0, i32 1, !dbg !1468
  store i32 0, ptr %nalloc159, align 4, !dbg !1469, !tbaa !1407
  %e160 = getelementptr inbounds %struct.cram_index, ptr %e, i32 0, i32 2, !dbg !1470
  store ptr null, ptr %e160, align 8, !dbg !1471, !tbaa !1415
  %108 = load ptr, ptr %idx, align 8, !dbg !1472, !tbaa !1136
  %e161 = getelementptr inbounds %struct.cram_index, ptr %108, i32 0, i32 2, !dbg !1473
  %109 = load ptr, ptr %e161, align 8, !dbg !1473, !tbaa !1415
  %110 = load ptr, ptr %idx, align 8, !dbg !1474, !tbaa !1136
  %nslice162 = getelementptr inbounds %struct.cram_index, ptr %110, i32 0, i32 0, !dbg !1475
  %111 = load i32, ptr %nslice162, align 8, !dbg !1476, !tbaa !1411
  %inc163 = add nsw i32 %111, 1, !dbg !1476
  store i32 %inc163, ptr %nslice162, align 8, !dbg !1476, !tbaa !1411
  %idxprom164 = sext i32 %111 to i64, !dbg !1472
  %arrayidx165 = getelementptr inbounds %struct.cram_index, ptr %109, i64 %idxprom164, !dbg !1472
  store ptr %arrayidx165, ptr %ep, align 8, !dbg !1477, !tbaa !1136
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx165, ptr align 8 %e, i64 48, i1 false), !dbg !1478, !tbaa.struct !1479
  %112 = load ptr, ptr %ep, align 8, !dbg !1480, !tbaa !1136
  store ptr %112, ptr %idx, align 8, !dbg !1481, !tbaa !1136
  %113 = load i32, ptr %idx_stack_ptr, align 4, !dbg !1482, !tbaa !1160
  %inc166 = add nsw i32 %113, 1, !dbg !1482
  store i32 %inc166, ptr %idx_stack_ptr, align 4, !dbg !1482, !tbaa !1160
  %114 = load i32, ptr %idx_stack_alloc, align 4, !dbg !1484, !tbaa !1160
  %cmp167 = icmp sge i32 %inc166, %114, !dbg !1485
  br i1 %cmp167, label %if.then169, label %if.end174, !dbg !1486

if.then169:                                       ; preds = %if.end157
  %115 = load i32, ptr %idx_stack_alloc, align 4, !dbg !1487, !tbaa !1160
  %mul170 = mul nsw i32 %115, 2, !dbg !1487
  store i32 %mul170, ptr %idx_stack_alloc, align 4, !dbg !1487, !tbaa !1160
  %116 = load ptr, ptr %idx_stack, align 8, !dbg !1489, !tbaa !1136
  %117 = load i32, ptr %idx_stack_alloc, align 4, !dbg !1490, !tbaa !1160
  %conv171 = sext i32 %117 to i64, !dbg !1490
  %mul172 = mul i64 %conv171, 8, !dbg !1491
  %call173 = call ptr @realloc(ptr noundef %116, i64 noundef %mul172) #14, !dbg !1492
  store ptr %call173, ptr %idx_stack, align 8, !dbg !1493, !tbaa !1136
  br label %if.end174, !dbg !1494

if.end174:                                        ; preds = %if.then169, %if.end157
  %118 = load ptr, ptr %idx, align 8, !dbg !1495, !tbaa !1136
  %119 = load ptr, ptr %idx_stack, align 8, !dbg !1496, !tbaa !1136
  %120 = load i32, ptr %idx_stack_ptr, align 4, !dbg !1497, !tbaa !1160
  %idxprom175 = sext i32 %120 to i64, !dbg !1496
  %arrayidx176 = getelementptr inbounds ptr, ptr %119, i64 %idxprom175, !dbg !1496
  store ptr %118, ptr %arrayidx176, align 8, !dbg !1498, !tbaa !1136
  %121 = load i32, ptr %nchars, align 4, !dbg !1499, !tbaa !1160
  %conv177 = sext i32 %121 to i64, !dbg !1499
  %122 = load i64, ptr %pos, align 8, !dbg !1500, !tbaa !1165
  %add178 = add i64 %122, %conv177, !dbg !1500
  store i64 %add178, ptr %pos, align 8, !dbg !1500, !tbaa !1165
  br label %while.cond179, !dbg !1501

while.cond179:                                    ; preds = %while.body190, %if.end174
  %123 = load i64, ptr %pos, align 8, !dbg !1502, !tbaa !1165
  %l180 = getelementptr inbounds %struct.__kstring_t, ptr %kstr, i32 0, i32 0, !dbg !1503
  %124 = load i64, ptr %l180, align 8, !dbg !1503, !tbaa !1242
  %cmp181 = icmp ult i64 %123, %124, !dbg !1504
  br i1 %cmp181, label %land.rhs183, label %land.end189, !dbg !1505

land.rhs183:                                      ; preds = %while.cond179
  %s184 = getelementptr inbounds %struct.__kstring_t, ptr %kstr, i32 0, i32 2, !dbg !1506
  %125 = load ptr, ptr %s184, align 8, !dbg !1506, !tbaa !1249
  %126 = load i64, ptr %pos, align 8, !dbg !1507, !tbaa !1165
  %arrayidx185 = getelementptr inbounds i8, ptr %125, i64 %126, !dbg !1508
  %127 = load i8, ptr %arrayidx185, align 1, !dbg !1508, !tbaa !1273
  %conv186 = sext i8 %127 to i32, !dbg !1508
  %cmp187 = icmp ne i32 %conv186, 10, !dbg !1509
  br label %land.end189

land.end189:                                      ; preds = %land.rhs183, %while.cond179
  %128 = phi i1 [ false, %while.cond179 ], [ %cmp187, %land.rhs183 ], !dbg !1431
  br i1 %128, label %while.body190, label %while.end192, !dbg !1501

while.body190:                                    ; preds = %land.end189
  %129 = load i64, ptr %pos, align 8, !dbg !1510, !tbaa !1165
  %inc191 = add i64 %129, 1, !dbg !1510
  store i64 %inc191, ptr %pos, align 8, !dbg !1510, !tbaa !1165
  br label %while.cond179, !dbg !1501, !llvm.loop !1511

while.end192:                                     ; preds = %land.end189
  %130 = load i64, ptr %pos, align 8, !dbg !1512, !tbaa !1165
  %inc193 = add i64 %130, 1, !dbg !1512
  store i64 %inc193, ptr %pos, align 8, !dbg !1512, !tbaa !1165
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1513
  br label %cleanup194, !dbg !1513

cleanup194:                                       ; preds = %while.end192, %if.then82, %if.then74
  call void @llvm.lifetime.end.p0(i64 8, ptr %line) #12, !dbg !1513
  call void @llvm.lifetime.end.p0(i64 4, ptr %nchars) #12, !dbg !1513
  %cleanup.dest196 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest196, label %cleanup202 [
    i32 0, label %cleanup.cont197
  ]

cleanup.cont197:                                  ; preds = %cleanup194
  br label %do.cond, !dbg !1514

do.cond:                                          ; preds = %cleanup.cont197
  %131 = load i64, ptr %pos, align 8, !dbg !1515, !tbaa !1165
  %l198 = getelementptr inbounds %struct.__kstring_t, ptr %kstr, i32 0, i32 0, !dbg !1516
  %132 = load i64, ptr %l198, align 8, !dbg !1516, !tbaa !1242
  %cmp199 = icmp ult i64 %131, %132, !dbg !1517
  br i1 %cmp199, label %do.body, label %do.end, !dbg !1514, !llvm.loop !1518

do.end:                                           ; preds = %do.cond
  %133 = load ptr, ptr %idx_stack, align 8, !dbg !1520, !tbaa !1136
  call void @free(ptr noundef %133) #12, !dbg !1521
  %s201 = getelementptr inbounds %struct.__kstring_t, ptr %kstr, i32 0, i32 2, !dbg !1522
  %134 = load ptr, ptr %s201, align 8, !dbg !1522, !tbaa !1249
  call void @free(ptr noundef %134) #12, !dbg !1523
  store i32 0, ptr %retval, align 4, !dbg !1524
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup202, !dbg !1524

cleanup202:                                       ; preds = %do.end, %cleanup194, %cleanup, %if.end39, %if.end30, %if.then13, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #12, !dbg !1525
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx_stack_ptr) #12, !dbg !1525
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx_stack_alloc) #12, !dbg !1525
  call void @llvm.lifetime.end.p0(i64 48, ptr %e) #12, !dbg !1525
  call void @llvm.lifetime.end.p0(i64 8, ptr %ep) #12, !dbg !1525
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx_stack) #12, !dbg !1525
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #12, !dbg !1525
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp) #12, !dbg !1525
  call void @llvm.lifetime.end.p0(i64 24, ptr %kstr) #12, !dbg !1525
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #12, !dbg !1525
  call void @llvm.lifetime.end.p0(i64 65536, ptr %buf) #12, !dbg !1525
  call void @llvm.lifetime.end.p0(i64 4096, ptr %fn2) #12, !dbg !1525
  %135 = load i32, ptr %retval, align 4, !dbg !1525
  ret i32 %135, !dbg !1525
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind allocsize(0,1)
declare !dbg !1526 noalias ptr @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: nounwind
declare !dbg !1530 i32 @sprintf(ptr noundef, ptr noundef, ...) #4

declare !dbg !1535 ptr @hopen(ptr noundef, ptr noundef) #5

declare !dbg !1538 void @perror(ptr noundef) #5

; Function Attrs: nounwind
declare !dbg !1541 void @free(ptr noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @hread(ptr noundef %fp, ptr noundef %buffer, i64 noundef %nbytes) #6 !dbg !1544 {
entry:
  %fp.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %nbytes.addr = alloca i64, align 8
  %n = alloca i64, align 8
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !1136
  tail call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !1548, metadata !DIExpression()), !dbg !1552
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !1136
  tail call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !1549, metadata !DIExpression()), !dbg !1553
  store i64 %nbytes, ptr %nbytes.addr, align 8, !tbaa !1165
  tail call void @llvm.dbg.declare(metadata ptr %nbytes.addr, metadata !1550, metadata !DIExpression()), !dbg !1554
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #12, !dbg !1555
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1551, metadata !DIExpression()), !dbg !1556
  %0 = load ptr, ptr %fp.addr, align 8, !dbg !1557, !tbaa !1136
  %end = getelementptr inbounds %struct.hFILE, ptr %0, i32 0, i32 2, !dbg !1558
  %1 = load ptr, ptr %end, align 8, !dbg !1558, !tbaa !1559
  %2 = load ptr, ptr %fp.addr, align 8, !dbg !1561, !tbaa !1136
  %begin = getelementptr inbounds %struct.hFILE, ptr %2, i32 0, i32 1, !dbg !1562
  %3 = load ptr, ptr %begin, align 8, !dbg !1562, !tbaa !1563
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64, !dbg !1564
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64, !dbg !1564
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1564
  store i64 %sub.ptr.sub, ptr %n, align 8, !dbg !1556, !tbaa !1165
  %4 = load i64, ptr %n, align 8, !dbg !1565, !tbaa !1165
  %5 = load i64, ptr %nbytes.addr, align 8, !dbg !1567, !tbaa !1165
  %cmp = icmp ugt i64 %4, %5, !dbg !1568
  br i1 %cmp, label %if.then, label %if.end, !dbg !1569

if.then:                                          ; preds = %entry
  %6 = load i64, ptr %nbytes.addr, align 8, !dbg !1570, !tbaa !1165
  store i64 %6, ptr %n, align 8, !dbg !1571, !tbaa !1165
  br label %if.end, !dbg !1572

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %buffer.addr, align 8, !dbg !1573, !tbaa !1136
  %8 = load ptr, ptr %fp.addr, align 8, !dbg !1574, !tbaa !1136
  %begin1 = getelementptr inbounds %struct.hFILE, ptr %8, i32 0, i32 1, !dbg !1575
  %9 = load ptr, ptr %begin1, align 8, !dbg !1575, !tbaa !1563
  %10 = load i64, ptr %n, align 8, !dbg !1576, !tbaa !1165
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %9, i64 %10, i1 false), !dbg !1577
  %11 = load i64, ptr %n, align 8, !dbg !1578, !tbaa !1165
  %12 = load ptr, ptr %fp.addr, align 8, !dbg !1579, !tbaa !1136
  %begin2 = getelementptr inbounds %struct.hFILE, ptr %12, i32 0, i32 1, !dbg !1580
  %13 = load ptr, ptr %begin2, align 8, !dbg !1581, !tbaa !1563
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %11, !dbg !1581
  store ptr %add.ptr, ptr %begin2, align 8, !dbg !1581, !tbaa !1563
  %14 = load i64, ptr %n, align 8, !dbg !1582, !tbaa !1165
  %15 = load i64, ptr %nbytes.addr, align 8, !dbg !1583, !tbaa !1165
  %cmp3 = icmp eq i64 %14, %15, !dbg !1584
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !1585

cond.true:                                        ; preds = %if.end
  %16 = load i64, ptr %n, align 8, !dbg !1586, !tbaa !1165
  br label %cond.end, !dbg !1585

cond.false:                                       ; preds = %if.end
  %17 = load ptr, ptr %fp.addr, align 8, !dbg !1587, !tbaa !1136
  %18 = load ptr, ptr %buffer.addr, align 8, !dbg !1588, !tbaa !1136
  %19 = load i64, ptr %nbytes.addr, align 8, !dbg !1589, !tbaa !1165
  %20 = load i64, ptr %n, align 8, !dbg !1590, !tbaa !1165
  %call = call i64 @hread2(ptr noundef %17, ptr noundef %18, i64 noundef %19, i64 noundef %20), !dbg !1591
  br label %cond.end, !dbg !1585

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %16, %cond.true ], [ %call, %cond.false ], !dbg !1585
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #12, !dbg !1592
  ret i64 %cond, !dbg !1593
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @kputsn(ptr noundef %p, i32 noundef %l, ptr noundef %s) #6 !dbg !1594 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %l.addr = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !1136
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1600, metadata !DIExpression()), !dbg !1606
  store i32 %l, ptr %l.addr, align 4, !tbaa !1160
  tail call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !1601, metadata !DIExpression()), !dbg !1607
  store ptr %s, ptr %s.addr, align 8, !tbaa !1136
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1602, metadata !DIExpression()), !dbg !1608
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1609, !tbaa !1136
  %l1 = getelementptr inbounds %struct.__kstring_t, ptr %0, i32 0, i32 0, !dbg !1610
  %1 = load i64, ptr %l1, align 8, !dbg !1610, !tbaa !1242
  %2 = load i32, ptr %l.addr, align 4, !dbg !1611, !tbaa !1160
  %conv = sext i32 %2 to i64, !dbg !1611
  %add = add i64 %1, %conv, !dbg !1612
  %add2 = add i64 %add, 1, !dbg !1613
  %3 = load ptr, ptr %s.addr, align 8, !dbg !1614, !tbaa !1136
  %m = getelementptr inbounds %struct.__kstring_t, ptr %3, i32 0, i32 1, !dbg !1615
  %4 = load i64, ptr %m, align 8, !dbg !1615, !tbaa !1616
  %cmp = icmp uge i64 %add2, %4, !dbg !1617
  br i1 %cmp, label %if.then, label %if.end33, !dbg !1618

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #12, !dbg !1619
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !1603, metadata !DIExpression()), !dbg !1620
  %5 = load ptr, ptr %s.addr, align 8, !dbg !1621, !tbaa !1136
  %l4 = getelementptr inbounds %struct.__kstring_t, ptr %5, i32 0, i32 0, !dbg !1622
  %6 = load i64, ptr %l4, align 8, !dbg !1622, !tbaa !1242
  %7 = load i32, ptr %l.addr, align 4, !dbg !1623, !tbaa !1160
  %conv5 = sext i32 %7 to i64, !dbg !1623
  %add6 = add i64 %6, %conv5, !dbg !1624
  %add7 = add i64 %add6, 2, !dbg !1625
  %8 = load ptr, ptr %s.addr, align 8, !dbg !1626, !tbaa !1136
  %m8 = getelementptr inbounds %struct.__kstring_t, ptr %8, i32 0, i32 1, !dbg !1627
  store i64 %add7, ptr %m8, align 8, !dbg !1628, !tbaa !1616
  %9 = load ptr, ptr %s.addr, align 8, !dbg !1629, !tbaa !1136
  %m9 = getelementptr inbounds %struct.__kstring_t, ptr %9, i32 0, i32 1, !dbg !1629
  %10 = load i64, ptr %m9, align 8, !dbg !1629, !tbaa !1616
  %dec = add i64 %10, -1, !dbg !1629
  store i64 %dec, ptr %m9, align 8, !dbg !1629, !tbaa !1616
  %11 = load ptr, ptr %s.addr, align 8, !dbg !1629, !tbaa !1136
  %m10 = getelementptr inbounds %struct.__kstring_t, ptr %11, i32 0, i32 1, !dbg !1629
  %12 = load i64, ptr %m10, align 8, !dbg !1629, !tbaa !1616
  %shr = lshr i64 %12, 1, !dbg !1629
  %13 = load ptr, ptr %s.addr, align 8, !dbg !1629, !tbaa !1136
  %m11 = getelementptr inbounds %struct.__kstring_t, ptr %13, i32 0, i32 1, !dbg !1629
  %14 = load i64, ptr %m11, align 8, !dbg !1629, !tbaa !1616
  %or = or i64 %14, %shr, !dbg !1629
  store i64 %or, ptr %m11, align 8, !dbg !1629, !tbaa !1616
  %15 = load ptr, ptr %s.addr, align 8, !dbg !1629, !tbaa !1136
  %m12 = getelementptr inbounds %struct.__kstring_t, ptr %15, i32 0, i32 1, !dbg !1629
  %16 = load i64, ptr %m12, align 8, !dbg !1629, !tbaa !1616
  %shr13 = lshr i64 %16, 2, !dbg !1629
  %17 = load ptr, ptr %s.addr, align 8, !dbg !1629, !tbaa !1136
  %m14 = getelementptr inbounds %struct.__kstring_t, ptr %17, i32 0, i32 1, !dbg !1629
  %18 = load i64, ptr %m14, align 8, !dbg !1629, !tbaa !1616
  %or15 = or i64 %18, %shr13, !dbg !1629
  store i64 %or15, ptr %m14, align 8, !dbg !1629, !tbaa !1616
  %19 = load ptr, ptr %s.addr, align 8, !dbg !1629, !tbaa !1136
  %m16 = getelementptr inbounds %struct.__kstring_t, ptr %19, i32 0, i32 1, !dbg !1629
  %20 = load i64, ptr %m16, align 8, !dbg !1629, !tbaa !1616
  %shr17 = lshr i64 %20, 4, !dbg !1629
  %21 = load ptr, ptr %s.addr, align 8, !dbg !1629, !tbaa !1136
  %m18 = getelementptr inbounds %struct.__kstring_t, ptr %21, i32 0, i32 1, !dbg !1629
  %22 = load i64, ptr %m18, align 8, !dbg !1629, !tbaa !1616
  %or19 = or i64 %22, %shr17, !dbg !1629
  store i64 %or19, ptr %m18, align 8, !dbg !1629, !tbaa !1616
  %23 = load ptr, ptr %s.addr, align 8, !dbg !1629, !tbaa !1136
  %m20 = getelementptr inbounds %struct.__kstring_t, ptr %23, i32 0, i32 1, !dbg !1629
  %24 = load i64, ptr %m20, align 8, !dbg !1629, !tbaa !1616
  %shr21 = lshr i64 %24, 8, !dbg !1629
  %25 = load ptr, ptr %s.addr, align 8, !dbg !1629, !tbaa !1136
  %m22 = getelementptr inbounds %struct.__kstring_t, ptr %25, i32 0, i32 1, !dbg !1629
  %26 = load i64, ptr %m22, align 8, !dbg !1629, !tbaa !1616
  %or23 = or i64 %26, %shr21, !dbg !1629
  store i64 %or23, ptr %m22, align 8, !dbg !1629, !tbaa !1616
  %27 = load ptr, ptr %s.addr, align 8, !dbg !1629, !tbaa !1136
  %m24 = getelementptr inbounds %struct.__kstring_t, ptr %27, i32 0, i32 1, !dbg !1629
  %28 = load i64, ptr %m24, align 8, !dbg !1629, !tbaa !1616
  %shr25 = lshr i64 %28, 16, !dbg !1629
  %29 = load ptr, ptr %s.addr, align 8, !dbg !1629, !tbaa !1136
  %m26 = getelementptr inbounds %struct.__kstring_t, ptr %29, i32 0, i32 1, !dbg !1629
  %30 = load i64, ptr %m26, align 8, !dbg !1629, !tbaa !1616
  %or27 = or i64 %30, %shr25, !dbg !1629
  store i64 %or27, ptr %m26, align 8, !dbg !1629, !tbaa !1616
  %31 = load ptr, ptr %s.addr, align 8, !dbg !1629, !tbaa !1136
  %m28 = getelementptr inbounds %struct.__kstring_t, ptr %31, i32 0, i32 1, !dbg !1629
  %32 = load i64, ptr %m28, align 8, !dbg !1629, !tbaa !1616
  %inc = add i64 %32, 1, !dbg !1629
  store i64 %inc, ptr %m28, align 8, !dbg !1629, !tbaa !1616
  %33 = load ptr, ptr %s.addr, align 8, !dbg !1630, !tbaa !1136
  %s29 = getelementptr inbounds %struct.__kstring_t, ptr %33, i32 0, i32 2, !dbg !1632
  %34 = load ptr, ptr %s29, align 8, !dbg !1632, !tbaa !1249
  %35 = load ptr, ptr %s.addr, align 8, !dbg !1633, !tbaa !1136
  %m30 = getelementptr inbounds %struct.__kstring_t, ptr %35, i32 0, i32 1, !dbg !1634
  %36 = load i64, ptr %m30, align 8, !dbg !1634, !tbaa !1616
  %call = call ptr @realloc(ptr noundef %34, i64 noundef %36) #14, !dbg !1635
  store ptr %call, ptr %tmp, align 8, !dbg !1636, !tbaa !1136
  %tobool = icmp ne ptr %call, null, !dbg !1636
  br i1 %tobool, label %if.then31, label %if.else, !dbg !1637

if.then31:                                        ; preds = %if.then
  %37 = load ptr, ptr %tmp, align 8, !dbg !1638, !tbaa !1136
  %38 = load ptr, ptr %s.addr, align 8, !dbg !1639, !tbaa !1136
  %s32 = getelementptr inbounds %struct.__kstring_t, ptr %38, i32 0, i32 2, !dbg !1640
  store ptr %37, ptr %s32, align 8, !dbg !1641, !tbaa !1249
  br label %if.end, !dbg !1639

if.else:                                          ; preds = %if.then
  store i32 -1, ptr %retval, align 4, !dbg !1642
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1642

if.end:                                           ; preds = %if.then31
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1643
  br label %cleanup, !dbg !1643

cleanup:                                          ; preds = %if.end, %if.else
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #12, !dbg !1643
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end33, !dbg !1644

if.end33:                                         ; preds = %cleanup.cont, %entry
  %39 = load ptr, ptr %s.addr, align 8, !dbg !1645, !tbaa !1136
  %s34 = getelementptr inbounds %struct.__kstring_t, ptr %39, i32 0, i32 2, !dbg !1646
  %40 = load ptr, ptr %s34, align 8, !dbg !1646, !tbaa !1249
  %41 = load ptr, ptr %s.addr, align 8, !dbg !1647, !tbaa !1136
  %l35 = getelementptr inbounds %struct.__kstring_t, ptr %41, i32 0, i32 0, !dbg !1648
  %42 = load i64, ptr %l35, align 8, !dbg !1648, !tbaa !1242
  %add.ptr = getelementptr inbounds i8, ptr %40, i64 %42, !dbg !1649
  %43 = load ptr, ptr %p.addr, align 8, !dbg !1650, !tbaa !1136
  %44 = load i32, ptr %l.addr, align 4, !dbg !1651, !tbaa !1160
  %conv36 = sext i32 %44 to i64, !dbg !1651
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %43, i64 %conv36, i1 false), !dbg !1652
  %45 = load i32, ptr %l.addr, align 4, !dbg !1653, !tbaa !1160
  %conv37 = sext i32 %45 to i64, !dbg !1653
  %46 = load ptr, ptr %s.addr, align 8, !dbg !1654, !tbaa !1136
  %l38 = getelementptr inbounds %struct.__kstring_t, ptr %46, i32 0, i32 0, !dbg !1655
  %47 = load i64, ptr %l38, align 8, !dbg !1656, !tbaa !1242
  %add39 = add i64 %47, %conv37, !dbg !1656
  store i64 %add39, ptr %l38, align 8, !dbg !1656, !tbaa !1242
  %48 = load ptr, ptr %s.addr, align 8, !dbg !1657, !tbaa !1136
  %s40 = getelementptr inbounds %struct.__kstring_t, ptr %48, i32 0, i32 2, !dbg !1658
  %49 = load ptr, ptr %s40, align 8, !dbg !1658, !tbaa !1249
  %50 = load ptr, ptr %s.addr, align 8, !dbg !1659, !tbaa !1136
  %l41 = getelementptr inbounds %struct.__kstring_t, ptr %50, i32 0, i32 0, !dbg !1660
  %51 = load i64, ptr %l41, align 8, !dbg !1660, !tbaa !1242
  %arrayidx = getelementptr inbounds i8, ptr %49, i64 %51, !dbg !1657
  store i8 0, ptr %arrayidx, align 1, !dbg !1661, !tbaa !1273
  %52 = load i32, ptr %l.addr, align 4, !dbg !1662, !tbaa !1160
  store i32 %52, ptr %retval, align 4, !dbg !1663
  br label %return, !dbg !1663

return:                                           ; preds = %if.end33, %cleanup
  %53 = load i32, ptr %retval, align 4, !dbg !1664
  ret i32 %53, !dbg !1664

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !1665 i32 @hclose(ptr noundef) #5

declare !dbg !1668 ptr @zlib_mem_inflate(ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare !dbg !1673 i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #4

declare !dbg !1676 i32 @fprintf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: nounwind allocsize(1)
declare !dbg !1680 ptr @realloc(ptr noundef, i64 noundef) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local void @cram_index_free(ptr noundef %fd) #0 !dbg !1683 {
entry:
  %fd.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fd, ptr %fd.addr, align 8, !tbaa !1136
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !1687, metadata !DIExpression()), !dbg !1689
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1690
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1688, metadata !DIExpression()), !dbg !1691
  %0 = load ptr, ptr %fd.addr, align 8, !dbg !1692, !tbaa !1136
  %index = getelementptr inbounds %struct.cram_fd, ptr %0, i32 0, i32 37, !dbg !1694
  %1 = load ptr, ptr %index, align 8, !dbg !1694, !tbaa !1170
  %tobool = icmp ne ptr %1, null, !dbg !1692
  br i1 %tobool, label %if.end, label %if.then, !dbg !1695

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1696

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !1697, !tbaa !1160
  br label %for.cond, !dbg !1699

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !1700, !tbaa !1160
  %3 = load ptr, ptr %fd.addr, align 8, !dbg !1702, !tbaa !1136
  %index_sz = getelementptr inbounds %struct.cram_fd, ptr %3, i32 0, i32 36, !dbg !1703
  %4 = load i32, ptr %index_sz, align 8, !dbg !1703, !tbaa !1178
  %cmp = icmp slt i32 %2, %4, !dbg !1704
  br i1 %cmp, label %for.body, label %for.end, !dbg !1705

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %fd.addr, align 8, !dbg !1706, !tbaa !1136
  %index1 = getelementptr inbounds %struct.cram_fd, ptr %5, i32 0, i32 37, !dbg !1708
  %6 = load ptr, ptr %index1, align 8, !dbg !1708, !tbaa !1170
  %7 = load i32, ptr %i, align 4, !dbg !1709, !tbaa !1160
  %idxprom = sext i32 %7 to i64, !dbg !1706
  %arrayidx = getelementptr inbounds %struct.cram_index, ptr %6, i64 %idxprom, !dbg !1706
  call void @cram_index_free_recurse(ptr noundef %arrayidx), !dbg !1710
  br label %for.inc, !dbg !1711

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !1712, !tbaa !1160
  %inc = add nsw i32 %8, 1, !dbg !1712
  store i32 %inc, ptr %i, align 4, !dbg !1712, !tbaa !1160
  br label %for.cond, !dbg !1713, !llvm.loop !1714

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %fd.addr, align 8, !dbg !1716, !tbaa !1136
  %index2 = getelementptr inbounds %struct.cram_fd, ptr %9, i32 0, i32 37, !dbg !1717
  %10 = load ptr, ptr %index2, align 8, !dbg !1717, !tbaa !1170
  call void @free(ptr noundef %10) #12, !dbg !1718
  %11 = load ptr, ptr %fd.addr, align 8, !dbg !1719, !tbaa !1136
  %index3 = getelementptr inbounds %struct.cram_fd, ptr %11, i32 0, i32 37, !dbg !1720
  store ptr null, ptr %index3, align 8, !dbg !1721, !tbaa !1170
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1722
  br label %cleanup, !dbg !1722

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1722
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1722

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @cram_index_free_recurse(ptr noundef %e) #0 !dbg !1723 {
entry:
  %e.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %e, ptr %e.addr, align 8, !tbaa !1136
  tail call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !1727, metadata !DIExpression()), !dbg !1731
  %0 = load ptr, ptr %e.addr, align 8, !dbg !1732, !tbaa !1136
  %e1 = getelementptr inbounds %struct.cram_index, ptr %0, i32 0, i32 2, !dbg !1733
  %1 = load ptr, ptr %e1, align 8, !dbg !1733, !tbaa !1415
  %tobool = icmp ne ptr %1, null, !dbg !1732
  br i1 %tobool, label %if.then, label %if.end, !dbg !1734

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1735
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1728, metadata !DIExpression()), !dbg !1736
  store i32 0, ptr %i, align 4, !dbg !1737, !tbaa !1160
  br label %for.cond, !dbg !1739

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %i, align 4, !dbg !1740, !tbaa !1160
  %3 = load ptr, ptr %e.addr, align 8, !dbg !1742, !tbaa !1136
  %nslice = getelementptr inbounds %struct.cram_index, ptr %3, i32 0, i32 0, !dbg !1743
  %4 = load i32, ptr %nslice, align 8, !dbg !1743, !tbaa !1411
  %cmp = icmp slt i32 %2, %4, !dbg !1744
  br i1 %cmp, label %for.body, label %for.end, !dbg !1745

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %e.addr, align 8, !dbg !1746, !tbaa !1136
  %e2 = getelementptr inbounds %struct.cram_index, ptr %5, i32 0, i32 2, !dbg !1748
  %6 = load ptr, ptr %e2, align 8, !dbg !1748, !tbaa !1415
  %7 = load i32, ptr %i, align 4, !dbg !1749, !tbaa !1160
  %idxprom = sext i32 %7 to i64, !dbg !1746
  %arrayidx = getelementptr inbounds %struct.cram_index, ptr %6, i64 %idxprom, !dbg !1746
  call void @cram_index_free_recurse(ptr noundef %arrayidx), !dbg !1750
  br label %for.inc, !dbg !1751

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !1752, !tbaa !1160
  %inc = add nsw i32 %8, 1, !dbg !1752
  store i32 %inc, ptr %i, align 4, !dbg !1752, !tbaa !1160
  br label %for.cond, !dbg !1753, !llvm.loop !1754

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %e.addr, align 8, !dbg !1756, !tbaa !1136
  %e3 = getelementptr inbounds %struct.cram_index, ptr %9, i32 0, i32 2, !dbg !1757
  %10 = load ptr, ptr %e3, align 8, !dbg !1757, !tbaa !1415
  call void @free(ptr noundef %10) #12, !dbg !1758
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1759
  br label %if.end, !dbg !1760

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !1761
}

; Function Attrs: nounwind uwtable
define dso_local ptr @cram_index_query(ptr noundef %fd, i32 noundef %refid, i32 noundef %pos, ptr noundef %from) #0 !dbg !1762 {
entry:
  %retval = alloca ptr, align 8
  %fd.addr = alloca ptr, align 8
  %refid.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %from.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %e = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fd, ptr %fd.addr, align 8, !tbaa !1136
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !1766, metadata !DIExpression()), !dbg !1774
  store i32 %refid, ptr %refid.addr, align 4, !tbaa !1160
  tail call void @llvm.dbg.declare(metadata ptr %refid.addr, metadata !1767, metadata !DIExpression()), !dbg !1775
  store i32 %pos, ptr %pos.addr, align 4, !tbaa !1160
  tail call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !1768, metadata !DIExpression()), !dbg !1776
  store ptr %from, ptr %from.addr, align 8, !tbaa !1136
  tail call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !1769, metadata !DIExpression()), !dbg !1777
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1778
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1770, metadata !DIExpression()), !dbg !1779
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12, !dbg !1778
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !1771, metadata !DIExpression()), !dbg !1780
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #12, !dbg !1778
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !1772, metadata !DIExpression()), !dbg !1781
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #12, !dbg !1782
  tail call void @llvm.dbg.declare(metadata ptr %e, metadata !1773, metadata !DIExpression()), !dbg !1783
  %0 = load i32, ptr %refid.addr, align 4, !dbg !1784, !tbaa !1160
  %add = add nsw i32 %0, 1, !dbg !1786
  %cmp = icmp slt i32 %add, 0, !dbg !1787
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1788

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %refid.addr, align 4, !dbg !1789, !tbaa !1160
  %add1 = add nsw i32 %1, 1, !dbg !1790
  %2 = load ptr, ptr %fd.addr, align 8, !dbg !1791, !tbaa !1136
  %index_sz = getelementptr inbounds %struct.cram_fd, ptr %2, i32 0, i32 36, !dbg !1792
  %3 = load i32, ptr %index_sz, align 8, !dbg !1792, !tbaa !1178
  %cmp2 = icmp sge i32 %add1, %3, !dbg !1793
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1794

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !1795
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1795

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %i, align 4, !dbg !1796, !tbaa !1160
  %4 = load ptr, ptr %fd.addr, align 8, !dbg !1797, !tbaa !1136
  %index = getelementptr inbounds %struct.cram_fd, ptr %4, i32 0, i32 37, !dbg !1798
  %5 = load ptr, ptr %index, align 8, !dbg !1798, !tbaa !1170
  %6 = load i32, ptr %refid.addr, align 4, !dbg !1799, !tbaa !1160
  %add3 = add nsw i32 %6, 1, !dbg !1800
  %idxprom = sext i32 %add3 to i64, !dbg !1797
  %arrayidx = getelementptr inbounds %struct.cram_index, ptr %5, i64 %idxprom, !dbg !1797
  %nslice = getelementptr inbounds %struct.cram_index, ptr %arrayidx, i32 0, i32 0, !dbg !1801
  %7 = load i32, ptr %nslice, align 8, !dbg !1801, !tbaa !1411
  %sub = sub nsw i32 %7, 1, !dbg !1802
  store i32 %sub, ptr %j, align 4, !dbg !1803, !tbaa !1160
  %8 = load ptr, ptr %from.addr, align 8, !dbg !1804, !tbaa !1136
  %tobool = icmp ne ptr %8, null, !dbg !1804
  br i1 %tobool, label %if.end9, label %if.then4, !dbg !1806

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %fd.addr, align 8, !dbg !1807, !tbaa !1136
  %index5 = getelementptr inbounds %struct.cram_fd, ptr %9, i32 0, i32 37, !dbg !1808
  %10 = load ptr, ptr %index5, align 8, !dbg !1808, !tbaa !1170
  %11 = load i32, ptr %refid.addr, align 4, !dbg !1809, !tbaa !1160
  %add6 = add nsw i32 %11, 1, !dbg !1810
  %idxprom7 = sext i32 %add6 to i64, !dbg !1807
  %arrayidx8 = getelementptr inbounds %struct.cram_index, ptr %10, i64 %idxprom7, !dbg !1807
  store ptr %arrayidx8, ptr %from.addr, align 8, !dbg !1811, !tbaa !1136
  br label %if.end9, !dbg !1812

if.end9:                                          ; preds = %if.then4, %if.end
  %12 = load i32, ptr %j, align 4, !dbg !1813, !tbaa !1160
  %div = sdiv i32 %12, 2, !dbg !1815
  store i32 %div, ptr %k, align 4, !dbg !1816, !tbaa !1160
  br label %for.cond, !dbg !1817

for.cond:                                         ; preds = %for.inc, %if.end9
  %13 = load i32, ptr %k, align 4, !dbg !1818, !tbaa !1160
  %14 = load i32, ptr %i, align 4, !dbg !1820, !tbaa !1160
  %cmp10 = icmp ne i32 %13, %14, !dbg !1821
  br i1 %cmp10, label %for.body, label %for.end, !dbg !1822

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %from.addr, align 8, !dbg !1823, !tbaa !1136
  %e11 = getelementptr inbounds %struct.cram_index, ptr %15, i32 0, i32 2, !dbg !1826
  %16 = load ptr, ptr %e11, align 8, !dbg !1826, !tbaa !1415
  %17 = load i32, ptr %k, align 4, !dbg !1827, !tbaa !1160
  %idxprom12 = sext i32 %17 to i64, !dbg !1823
  %arrayidx13 = getelementptr inbounds %struct.cram_index, ptr %16, i64 %idxprom12, !dbg !1823
  %refid14 = getelementptr inbounds %struct.cram_index, ptr %arrayidx13, i32 0, i32 3, !dbg !1828
  %18 = load i32, ptr %refid14, align 8, !dbg !1828, !tbaa !1194
  %19 = load i32, ptr %refid.addr, align 4, !dbg !1829, !tbaa !1160
  %cmp15 = icmp sgt i32 %18, %19, !dbg !1830
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1831

if.then16:                                        ; preds = %for.body
  %20 = load i32, ptr %k, align 4, !dbg !1832, !tbaa !1160
  store i32 %20, ptr %j, align 4, !dbg !1834, !tbaa !1160
  br label %for.inc, !dbg !1835

if.end17:                                         ; preds = %for.body
  %21 = load ptr, ptr %from.addr, align 8, !dbg !1836, !tbaa !1136
  %e18 = getelementptr inbounds %struct.cram_index, ptr %21, i32 0, i32 2, !dbg !1838
  %22 = load ptr, ptr %e18, align 8, !dbg !1838, !tbaa !1415
  %23 = load i32, ptr %k, align 4, !dbg !1839, !tbaa !1160
  %idxprom19 = sext i32 %23 to i64, !dbg !1836
  %arrayidx20 = getelementptr inbounds %struct.cram_index, ptr %22, i64 %idxprom19, !dbg !1836
  %refid21 = getelementptr inbounds %struct.cram_index, ptr %arrayidx20, i32 0, i32 3, !dbg !1840
  %24 = load i32, ptr %refid21, align 8, !dbg !1840, !tbaa !1194
  %25 = load i32, ptr %refid.addr, align 4, !dbg !1841, !tbaa !1160
  %cmp22 = icmp slt i32 %24, %25, !dbg !1842
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !1843

if.then23:                                        ; preds = %if.end17
  %26 = load i32, ptr %k, align 4, !dbg !1844, !tbaa !1160
  store i32 %26, ptr %i, align 4, !dbg !1846, !tbaa !1160
  br label %for.inc, !dbg !1847

if.end24:                                         ; preds = %if.end17
  %27 = load ptr, ptr %from.addr, align 8, !dbg !1848, !tbaa !1136
  %e25 = getelementptr inbounds %struct.cram_index, ptr %27, i32 0, i32 2, !dbg !1850
  %28 = load ptr, ptr %e25, align 8, !dbg !1850, !tbaa !1415
  %29 = load i32, ptr %k, align 4, !dbg !1851, !tbaa !1160
  %idxprom26 = sext i32 %29 to i64, !dbg !1848
  %arrayidx27 = getelementptr inbounds %struct.cram_index, ptr %28, i64 %idxprom26, !dbg !1848
  %start = getelementptr inbounds %struct.cram_index, ptr %arrayidx27, i32 0, i32 4, !dbg !1852
  %30 = load i32, ptr %start, align 4, !dbg !1852, !tbaa !1199
  %31 = load i32, ptr %pos.addr, align 4, !dbg !1853, !tbaa !1160
  %cmp28 = icmp sge i32 %30, %31, !dbg !1854
  br i1 %cmp28, label %if.then29, label %if.end30, !dbg !1855

if.then29:                                        ; preds = %if.end24
  %32 = load i32, ptr %k, align 4, !dbg !1856, !tbaa !1160
  store i32 %32, ptr %j, align 4, !dbg !1858, !tbaa !1160
  br label %for.inc, !dbg !1859

if.end30:                                         ; preds = %if.end24
  %33 = load ptr, ptr %from.addr, align 8, !dbg !1860, !tbaa !1136
  %e31 = getelementptr inbounds %struct.cram_index, ptr %33, i32 0, i32 2, !dbg !1862
  %34 = load ptr, ptr %e31, align 8, !dbg !1862, !tbaa !1415
  %35 = load i32, ptr %k, align 4, !dbg !1863, !tbaa !1160
  %idxprom32 = sext i32 %35 to i64, !dbg !1860
  %arrayidx33 = getelementptr inbounds %struct.cram_index, ptr %34, i64 %idxprom32, !dbg !1860
  %start34 = getelementptr inbounds %struct.cram_index, ptr %arrayidx33, i32 0, i32 4, !dbg !1864
  %36 = load i32, ptr %start34, align 4, !dbg !1864, !tbaa !1199
  %37 = load i32, ptr %pos.addr, align 4, !dbg !1865, !tbaa !1160
  %cmp35 = icmp slt i32 %36, %37, !dbg !1866
  br i1 %cmp35, label %if.then36, label %if.end37, !dbg !1867

if.then36:                                        ; preds = %if.end30
  %38 = load i32, ptr %k, align 4, !dbg !1868, !tbaa !1160
  store i32 %38, ptr %i, align 4, !dbg !1870, !tbaa !1160
  br label %for.inc, !dbg !1871

if.end37:                                         ; preds = %if.end30
  br label %for.inc, !dbg !1872

for.inc:                                          ; preds = %if.end37, %if.then36, %if.then29, %if.then23, %if.then16
  %39 = load i32, ptr %j, align 4, !dbg !1873, !tbaa !1160
  %40 = load i32, ptr %i, align 4, !dbg !1874, !tbaa !1160
  %sub38 = sub nsw i32 %39, %40, !dbg !1875
  %div39 = sdiv i32 %sub38, 2, !dbg !1876
  %41 = load i32, ptr %i, align 4, !dbg !1877, !tbaa !1160
  %add40 = add nsw i32 %div39, %41, !dbg !1878
  store i32 %add40, ptr %k, align 4, !dbg !1879, !tbaa !1160
  br label %for.cond, !dbg !1880, !llvm.loop !1881

for.end:                                          ; preds = %for.cond
  br label %while.cond, !dbg !1883

while.cond:                                       ; preds = %while.body, %for.end
  %42 = load i32, ptr %i, align 4, !dbg !1884, !tbaa !1160
  %cmp41 = icmp sgt i32 %42, 0, !dbg !1885
  br i1 %cmp41, label %land.rhs, label %land.end, !dbg !1886

land.rhs:                                         ; preds = %while.cond
  %43 = load ptr, ptr %from.addr, align 8, !dbg !1887, !tbaa !1136
  %e42 = getelementptr inbounds %struct.cram_index, ptr %43, i32 0, i32 2, !dbg !1888
  %44 = load ptr, ptr %e42, align 8, !dbg !1888, !tbaa !1415
  %45 = load i32, ptr %i, align 4, !dbg !1889, !tbaa !1160
  %sub43 = sub nsw i32 %45, 1, !dbg !1890
  %idxprom44 = sext i32 %sub43 to i64, !dbg !1887
  %arrayidx45 = getelementptr inbounds %struct.cram_index, ptr %44, i64 %idxprom44, !dbg !1887
  %end = getelementptr inbounds %struct.cram_index, ptr %arrayidx45, i32 0, i32 5, !dbg !1891
  %46 = load i32, ptr %end, align 8, !dbg !1891, !tbaa !1203
  %47 = load i32, ptr %pos.addr, align 4, !dbg !1892, !tbaa !1160
  %cmp46 = icmp sge i32 %46, %47, !dbg !1893
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %48 = phi i1 [ false, %while.cond ], [ %cmp46, %land.rhs ], !dbg !1894
  br i1 %48, label %while.body, label %while.end, !dbg !1883

while.body:                                       ; preds = %land.end
  %49 = load i32, ptr %i, align 4, !dbg !1895, !tbaa !1160
  %dec = add nsw i32 %49, -1, !dbg !1895
  store i32 %dec, ptr %i, align 4, !dbg !1895, !tbaa !1160
  br label %while.cond, !dbg !1883, !llvm.loop !1896

while.end:                                        ; preds = %land.end
  %50 = load i32, ptr %i, align 4, !dbg !1897, !tbaa !1160
  %add47 = add nsw i32 %50, 1, !dbg !1899
  %51 = load ptr, ptr %from.addr, align 8, !dbg !1900, !tbaa !1136
  %nslice48 = getelementptr inbounds %struct.cram_index, ptr %51, i32 0, i32 0, !dbg !1901
  %52 = load i32, ptr %nslice48, align 8, !dbg !1901, !tbaa !1411
  %cmp49 = icmp slt i32 %add47, %52, !dbg !1902
  br i1 %cmp49, label %land.lhs.true, label %if.end64, !dbg !1903

land.lhs.true:                                    ; preds = %while.end
  %53 = load ptr, ptr %from.addr, align 8, !dbg !1904, !tbaa !1136
  %e50 = getelementptr inbounds %struct.cram_index, ptr %53, i32 0, i32 2, !dbg !1905
  %54 = load ptr, ptr %e50, align 8, !dbg !1905, !tbaa !1415
  %55 = load i32, ptr %i, align 4, !dbg !1906, !tbaa !1160
  %add51 = add nsw i32 %55, 1, !dbg !1907
  %idxprom52 = sext i32 %add51 to i64, !dbg !1904
  %arrayidx53 = getelementptr inbounds %struct.cram_index, ptr %54, i64 %idxprom52, !dbg !1904
  %start54 = getelementptr inbounds %struct.cram_index, ptr %arrayidx53, i32 0, i32 4, !dbg !1908
  %56 = load i32, ptr %start54, align 4, !dbg !1908, !tbaa !1199
  %57 = load i32, ptr %pos.addr, align 4, !dbg !1909, !tbaa !1160
  %cmp55 = icmp eq i32 %56, %57, !dbg !1910
  br i1 %cmp55, label %land.lhs.true56, label %if.end64, !dbg !1911

land.lhs.true56:                                  ; preds = %land.lhs.true
  %58 = load ptr, ptr %from.addr, align 8, !dbg !1912, !tbaa !1136
  %e57 = getelementptr inbounds %struct.cram_index, ptr %58, i32 0, i32 2, !dbg !1913
  %59 = load ptr, ptr %e57, align 8, !dbg !1913, !tbaa !1415
  %60 = load i32, ptr %i, align 4, !dbg !1914, !tbaa !1160
  %add58 = add nsw i32 %60, 1, !dbg !1915
  %idxprom59 = sext i32 %add58 to i64, !dbg !1912
  %arrayidx60 = getelementptr inbounds %struct.cram_index, ptr %59, i64 %idxprom59, !dbg !1912
  %refid61 = getelementptr inbounds %struct.cram_index, ptr %arrayidx60, i32 0, i32 3, !dbg !1916
  %61 = load i32, ptr %refid61, align 8, !dbg !1916, !tbaa !1194
  %62 = load i32, ptr %refid.addr, align 4, !dbg !1917, !tbaa !1160
  %cmp62 = icmp eq i32 %61, %62, !dbg !1918
  br i1 %cmp62, label %if.then63, label %if.end64, !dbg !1919

if.then63:                                        ; preds = %land.lhs.true56
  %63 = load i32, ptr %i, align 4, !dbg !1920, !tbaa !1160
  %inc = add nsw i32 %63, 1, !dbg !1920
  store i32 %inc, ptr %i, align 4, !dbg !1920, !tbaa !1160
  br label %if.end64, !dbg !1921

if.end64:                                         ; preds = %if.then63, %land.lhs.true56, %land.lhs.true, %while.end
  %64 = load ptr, ptr %from.addr, align 8, !dbg !1922, !tbaa !1136
  %e65 = getelementptr inbounds %struct.cram_index, ptr %64, i32 0, i32 2, !dbg !1923
  %65 = load ptr, ptr %e65, align 8, !dbg !1923, !tbaa !1415
  %66 = load i32, ptr %i, align 4, !dbg !1924, !tbaa !1160
  %idxprom66 = sext i32 %66 to i64, !dbg !1922
  %arrayidx67 = getelementptr inbounds %struct.cram_index, ptr %65, i64 %idxprom66, !dbg !1922
  store ptr %arrayidx67, ptr %e, align 8, !dbg !1925, !tbaa !1136
  %67 = load ptr, ptr %e, align 8, !dbg !1926, !tbaa !1136
  store ptr %67, ptr %retval, align 8, !dbg !1927
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1927

cleanup:                                          ; preds = %if.end64, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #12, !dbg !1928
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #12, !dbg !1928
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12, !dbg !1928
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1928
  %68 = load ptr, ptr %retval, align 8, !dbg !1928
  ret ptr %68, !dbg !1928
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cram_seek_to_refpos(ptr noundef %fd, ptr noundef %r) #0 !dbg !1929 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %e = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fd, ptr %fd.addr, align 8, !tbaa !1136
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !1934, metadata !DIExpression()), !dbg !1937
  store ptr %r, ptr %r.addr, align 8, !tbaa !1136
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1935, metadata !DIExpression()), !dbg !1938
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #12, !dbg !1939
  tail call void @llvm.dbg.declare(metadata ptr %e, metadata !1936, metadata !DIExpression()), !dbg !1940
  %0 = load ptr, ptr %fd.addr, align 8, !dbg !1941, !tbaa !1136
  %1 = load ptr, ptr %r.addr, align 8, !dbg !1943, !tbaa !1136
  %refid = getelementptr inbounds %struct.cram_range, ptr %1, i32 0, i32 0, !dbg !1944
  %2 = load i32, ptr %refid, align 4, !dbg !1944, !tbaa !1945
  %3 = load ptr, ptr %r.addr, align 8, !dbg !1946, !tbaa !1136
  %start = getelementptr inbounds %struct.cram_range, ptr %3, i32 0, i32 1, !dbg !1947
  %4 = load i32, ptr %start, align 4, !dbg !1947, !tbaa !1948
  %call = call ptr @cram_index_query(ptr noundef %0, i32 noundef %2, i32 noundef %4, ptr noundef null), !dbg !1949
  store ptr %call, ptr %e, align 8, !dbg !1950, !tbaa !1136
  %tobool = icmp ne ptr %call, null, !dbg !1950
  br i1 %tobool, label %if.then, label %if.else, !dbg !1951

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %fd.addr, align 8, !dbg !1952, !tbaa !1136
  %6 = load ptr, ptr %e, align 8, !dbg !1955, !tbaa !1136
  %offset = getelementptr inbounds %struct.cram_index, ptr %6, i32 0, i32 9, !dbg !1956
  %7 = load i64, ptr %offset, align 8, !dbg !1956, !tbaa !1957
  %call1 = call i32 @cram_seek(ptr noundef %5, i64 noundef %7, i32 noundef 0), !dbg !1958
  %cmp = icmp ne i32 0, %call1, !dbg !1959
  br i1 %cmp, label %if.then2, label %if.end7, !dbg !1960

if.then2:                                         ; preds = %if.then
  %8 = load ptr, ptr %fd.addr, align 8, !dbg !1961, !tbaa !1136
  %9 = load ptr, ptr %e, align 8, !dbg !1963, !tbaa !1136
  %offset3 = getelementptr inbounds %struct.cram_index, ptr %9, i32 0, i32 9, !dbg !1964
  %10 = load i64, ptr %offset3, align 8, !dbg !1964, !tbaa !1957
  %11 = load ptr, ptr %fd.addr, align 8, !dbg !1965, !tbaa !1136
  %first_container = getelementptr inbounds %struct.cram_fd, ptr %11, i32 0, i32 38, !dbg !1966
  %12 = load i64, ptr %first_container, align 8, !dbg !1966, !tbaa !1967
  %sub = sub nsw i64 %10, %12, !dbg !1968
  %call4 = call i32 @cram_seek(ptr noundef %8, i64 noundef %sub, i32 noundef 1), !dbg !1969
  %cmp5 = icmp ne i32 0, %call4, !dbg !1970
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !1971

if.then6:                                         ; preds = %if.then2
  store i32 -1, ptr %retval, align 4, !dbg !1972
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1972

if.end:                                           ; preds = %if.then2
  br label %if.end7, !dbg !1973

if.end7:                                          ; preds = %if.end, %if.then
  br label %if.end9, !dbg !1974

if.else:                                          ; preds = %entry
  %13 = load ptr, ptr @stderr, align 8, !dbg !1975, !tbaa !1136
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.4), !dbg !1977
  store i32 -1, ptr %retval, align 4, !dbg !1978
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1978

if.end9:                                          ; preds = %if.end7
  %14 = load ptr, ptr %fd.addr, align 8, !dbg !1979, !tbaa !1136
  %ctr = getelementptr inbounds %struct.cram_fd, ptr %14, i32 0, i32 9, !dbg !1981
  %15 = load ptr, ptr %ctr, align 8, !dbg !1981, !tbaa !1982
  %tobool10 = icmp ne ptr %15, null, !dbg !1979
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !1983

if.then11:                                        ; preds = %if.end9
  %16 = load ptr, ptr %fd.addr, align 8, !dbg !1984, !tbaa !1136
  %ctr12 = getelementptr inbounds %struct.cram_fd, ptr %16, i32 0, i32 9, !dbg !1986
  %17 = load ptr, ptr %ctr12, align 8, !dbg !1986, !tbaa !1982
  call void @cram_free_container(ptr noundef %17), !dbg !1987
  %18 = load ptr, ptr %fd.addr, align 8, !dbg !1988, !tbaa !1136
  %ctr13 = getelementptr inbounds %struct.cram_fd, ptr %18, i32 0, i32 9, !dbg !1989
  store ptr null, ptr %ctr13, align 8, !dbg !1990, !tbaa !1982
  br label %if.end14, !dbg !1991

if.end14:                                         ; preds = %if.then11, %if.end9
  store i32 0, ptr %retval, align 4, !dbg !1992
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1992

cleanup:                                          ; preds = %if.end14, %if.else, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #12, !dbg !1993
  %19 = load i32, ptr %retval, align 4, !dbg !1993
  ret i32 %19, !dbg !1993
}

declare !dbg !1994 i32 @cram_seek(ptr noundef, i64 noundef, i32 noundef) #5

declare !dbg !1997 void @cram_free_container(ptr noundef) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @cram_index_build(ptr noundef %fd, ptr noundef %fn_base) #0 !dbg !2000 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca ptr, align 8
  %fn_base.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  %cpos = alloca i64, align 8
  %spos = alloca i64, align 8
  %hpos = alloca i64, align 8
  %fp = alloca ptr, align 8
  %fn_idx = alloca [4096 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  %buf = alloca [1024 x i8], align 16
  %s = alloca ptr, align 8
  %sz = alloca i32, align 4
  store ptr %fd, ptr %fd.addr, align 8, !tbaa !1136
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !2002, metadata !DIExpression()), !dbg !2033
  store ptr %fn_base, ptr %fn_base.addr, align 8, !tbaa !1136
  tail call void @llvm.dbg.declare(metadata ptr %fn_base.addr, metadata !2003, metadata !DIExpression()), !dbg !2034
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #12, !dbg !2035
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !2004, metadata !DIExpression()), !dbg !2036
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpos) #12, !dbg !2037
  tail call void @llvm.dbg.declare(metadata ptr %cpos, metadata !2005, metadata !DIExpression()), !dbg !2038
  call void @llvm.lifetime.start.p0(i64 8, ptr %spos) #12, !dbg !2037
  tail call void @llvm.dbg.declare(metadata ptr %spos, metadata !2006, metadata !DIExpression()), !dbg !2039
  call void @llvm.lifetime.start.p0(i64 8, ptr %hpos) #12, !dbg !2037
  tail call void @llvm.dbg.declare(metadata ptr %hpos, metadata !2007, metadata !DIExpression()), !dbg !2040
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp) #12, !dbg !2041
  tail call void @llvm.dbg.declare(metadata ptr %fp, metadata !2008, metadata !DIExpression()), !dbg !2042
  call void @llvm.lifetime.start.p0(i64 4096, ptr %fn_idx) #12, !dbg !2043
  tail call void @llvm.dbg.declare(metadata ptr %fn_idx, metadata !2024, metadata !DIExpression()), !dbg !2044
  %0 = load ptr, ptr %fn_base.addr, align 8, !dbg !2045, !tbaa !1136
  %call = call i64 @strlen(ptr noundef %0) #15, !dbg !2047
  %cmp = icmp ugt i64 %call, 4090, !dbg !2048
  br i1 %cmp, label %if.then, label %if.end, !dbg !2049

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !2050
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup87, !dbg !2050

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [4096 x i8], ptr %fn_idx, i64 0, i64 0, !dbg !2051
  %1 = load ptr, ptr %fn_base.addr, align 8, !dbg !2052, !tbaa !1136
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str, ptr noundef %1) #12, !dbg !2053
  %arraydecay2 = getelementptr inbounds [4096 x i8], ptr %fn_idx, i64 0, i64 0, !dbg !2054
  %call3 = call ptr @zfopen(ptr noundef %arraydecay2, ptr noundef @.str.5), !dbg !2056
  store ptr %call3, ptr %fp, align 8, !dbg !2057, !tbaa !1136
  %tobool = icmp ne ptr %call3, null, !dbg !2057
  br i1 %tobool, label %if.end6, label %if.then4, !dbg !2058

if.then4:                                         ; preds = %if.end
  %arraydecay5 = getelementptr inbounds [4096 x i8], ptr %fn_idx, i64 0, i64 0, !dbg !2059
  call void @perror(ptr noundef %arraydecay5), !dbg !2061
  store i32 -1, ptr %retval, align 4, !dbg !2062
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup87, !dbg !2062

if.end6:                                          ; preds = %if.end
  %2 = load ptr, ptr %fd.addr, align 8, !dbg !2063, !tbaa !1136
  %fp7 = getelementptr inbounds %struct.cram_fd, ptr %2, i32 0, i32 0, !dbg !2064
  %3 = load ptr, ptr %fp7, align 8, !dbg !2064, !tbaa !2065
  %call8 = call i64 @htell(ptr noundef %3), !dbg !2066
  store i64 %call8, ptr %cpos, align 8, !dbg !2067, !tbaa !1165
  br label %while.cond, !dbg !2068

while.cond:                                       ; preds = %cleanup.cont80, %if.end6
  %4 = load ptr, ptr %fd.addr, align 8, !dbg !2069, !tbaa !1136
  %call9 = call ptr @cram_read_container(ptr noundef %4), !dbg !2070
  store ptr %call9, ptr %c, align 8, !dbg !2071, !tbaa !1136
  %tobool10 = icmp ne ptr %call9, null, !dbg !2068
  br i1 %tobool10, label %while.body, label %while.end, !dbg !2068

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12, !dbg !2072
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !2025, metadata !DIExpression()), !dbg !2073
  %5 = load ptr, ptr %fd.addr, align 8, !dbg !2074, !tbaa !1136
  %err = getelementptr inbounds %struct.cram_fd, ptr %5, i32 0, i32 8, !dbg !2076
  %6 = load i32, ptr %err, align 8, !dbg !2076, !tbaa !2077
  %tobool11 = icmp ne i32 %6, 0, !dbg !2074
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !2078

if.then12:                                        ; preds = %while.body
  call void @perror(ptr noundef @.str.6), !dbg !2079
  store i32 1, ptr %retval, align 4, !dbg !2081
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup78, !dbg !2081

if.end13:                                         ; preds = %while.body
  %7 = load ptr, ptr %fd.addr, align 8, !dbg !2082, !tbaa !1136
  %fp14 = getelementptr inbounds %struct.cram_fd, ptr %7, i32 0, i32 0, !dbg !2083
  %8 = load ptr, ptr %fp14, align 8, !dbg !2083, !tbaa !2065
  %call15 = call i64 @htell(ptr noundef %8), !dbg !2084
  store i64 %call15, ptr %hpos, align 8, !dbg !2085, !tbaa !1165
  %9 = load ptr, ptr %fd.addr, align 8, !dbg !2086, !tbaa !1136
  %call16 = call ptr @cram_read_block(ptr noundef %9), !dbg !2088
  %10 = load ptr, ptr %c, align 8, !dbg !2089, !tbaa !1136
  %comp_hdr_block = getelementptr inbounds %struct.cram_container, ptr %10, i32 0, i32 12, !dbg !2090
  store ptr %call16, ptr %comp_hdr_block, align 8, !dbg !2091, !tbaa !2092
  %tobool17 = icmp ne ptr %call16, null, !dbg !2091
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !2094

if.then18:                                        ; preds = %if.end13
  store i32 1, ptr %retval, align 4, !dbg !2095
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup78, !dbg !2095

if.end19:                                         ; preds = %if.end13
  %11 = load ptr, ptr %c, align 8, !dbg !2096, !tbaa !1136
  %comp_hdr_block20 = getelementptr inbounds %struct.cram_container, ptr %11, i32 0, i32 12, !dbg !2096
  %12 = load ptr, ptr %comp_hdr_block20, align 8, !dbg !2096, !tbaa !2092
  %content_type = getelementptr inbounds %struct.cram_block, ptr %12, i32 0, i32 2, !dbg !2096
  %13 = load i32, ptr %content_type, align 8, !dbg !2096, !tbaa !2099
  %cmp21 = icmp eq i32 %13, 1, !dbg !2096
  br i1 %cmp21, label %if.then22, label %if.else, !dbg !2101

if.then22:                                        ; preds = %if.end19
  br label %if.end23, !dbg !2101

if.else:                                          ; preds = %if.end19
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.8, i32 noundef 455, ptr noundef @__PRETTY_FUNCTION__.cram_index_build) #16, !dbg !2096
  unreachable, !dbg !2096

if.end23:                                         ; preds = %if.then22
  %14 = load ptr, ptr %fd.addr, align 8, !dbg !2102, !tbaa !1136
  %15 = load ptr, ptr %c, align 8, !dbg !2103, !tbaa !1136
  %comp_hdr_block24 = getelementptr inbounds %struct.cram_container, ptr %15, i32 0, i32 12, !dbg !2104
  %16 = load ptr, ptr %comp_hdr_block24, align 8, !dbg !2104, !tbaa !2092
  %call25 = call ptr @cram_decode_compression_header(ptr noundef %14, ptr noundef %16), !dbg !2105
  %17 = load ptr, ptr %c, align 8, !dbg !2106, !tbaa !1136
  %comp_hdr = getelementptr inbounds %struct.cram_container, ptr %17, i32 0, i32 11, !dbg !2107
  store ptr %call25, ptr %comp_hdr, align 8, !dbg !2108, !tbaa !2109
  %18 = load ptr, ptr %c, align 8, !dbg !2110, !tbaa !1136
  %comp_hdr26 = getelementptr inbounds %struct.cram_container, ptr %18, i32 0, i32 11, !dbg !2112
  %19 = load ptr, ptr %comp_hdr26, align 8, !dbg !2112, !tbaa !2109
  %tobool27 = icmp ne ptr %19, null, !dbg !2110
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !2113

if.then28:                                        ; preds = %if.end23
  store i32 -1, ptr %retval, align 4, !dbg !2114
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup78, !dbg !2114

if.end29:                                         ; preds = %if.end23
  store i32 0, ptr %j, align 4, !dbg !2115, !tbaa !1160
  br label %for.cond, !dbg !2116

for.cond:                                         ; preds = %for.inc, %if.end29
  %20 = load i32, ptr %j, align 4, !dbg !2117, !tbaa !1160
  %21 = load ptr, ptr %c, align 8, !dbg !2118, !tbaa !1136
  %num_landmarks = getelementptr inbounds %struct.cram_container, ptr %21, i32 0, i32 8, !dbg !2119
  %22 = load i32, ptr %num_landmarks, align 8, !dbg !2119, !tbaa !2120
  %cmp30 = icmp slt i32 %20, %22, !dbg !2121
  br i1 %cmp30, label %for.body, label %for.end, !dbg !2122

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1024, ptr %buf) #12, !dbg !2123
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !2027, metadata !DIExpression()), !dbg !2124
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #12, !dbg !2125
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !2031, metadata !DIExpression()), !dbg !2126
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #12, !dbg !2127
  tail call void @llvm.dbg.declare(metadata ptr %sz, metadata !2032, metadata !DIExpression()), !dbg !2128
  %23 = load ptr, ptr %fd.addr, align 8, !dbg !2129, !tbaa !1136
  %fp31 = getelementptr inbounds %struct.cram_fd, ptr %23, i32 0, i32 0, !dbg !2130
  %24 = load ptr, ptr %fp31, align 8, !dbg !2130, !tbaa !2065
  %call32 = call i64 @htell(ptr noundef %24), !dbg !2131
  store i64 %call32, ptr %spos, align 8, !dbg !2132, !tbaa !1165
  %25 = load i64, ptr %spos, align 8, !dbg !2133, !tbaa !1165
  %26 = load i64, ptr %cpos, align 8, !dbg !2133, !tbaa !1165
  %sub = sub nsw i64 %25, %26, !dbg !2133
  %27 = load ptr, ptr %c, align 8, !dbg !2133, !tbaa !1136
  %offset = getelementptr inbounds %struct.cram_container, ptr %27, i32 0, i32 10, !dbg !2133
  %28 = load i64, ptr %offset, align 8, !dbg !2133, !tbaa !2136
  %sub33 = sub i64 %sub, %28, !dbg !2133
  %29 = load ptr, ptr %c, align 8, !dbg !2133, !tbaa !1136
  %landmark = getelementptr inbounds %struct.cram_container, ptr %29, i32 0, i32 9, !dbg !2133
  %30 = load ptr, ptr %landmark, align 8, !dbg !2133, !tbaa !2137
  %31 = load i32, ptr %j, align 4, !dbg !2133, !tbaa !1160
  %idxprom = sext i32 %31 to i64, !dbg !2133
  %arrayidx = getelementptr inbounds i32, ptr %30, i64 %idxprom, !dbg !2133
  %32 = load i32, ptr %arrayidx, align 4, !dbg !2133, !tbaa !1160
  %conv = sext i32 %32 to i64, !dbg !2133
  %cmp34 = icmp eq i64 %sub33, %conv, !dbg !2133
  br i1 %cmp34, label %if.then36, label %if.else37, !dbg !2138

if.then36:                                        ; preds = %for.body
  br label %if.end38, !dbg !2138

if.else37:                                        ; preds = %for.body
  call void @__assert_fail(ptr noundef @.str.9, ptr noundef @.str.8, i32 noundef 468, ptr noundef @__PRETTY_FUNCTION__.cram_index_build) #16, !dbg !2133
  unreachable, !dbg !2133

if.end38:                                         ; preds = %if.then36
  %33 = load ptr, ptr %fd.addr, align 8, !dbg !2139, !tbaa !1136
  %call39 = call ptr @cram_read_slice(ptr noundef %33), !dbg !2141
  store ptr %call39, ptr %s, align 8, !dbg !2142, !tbaa !1136
  %tobool40 = icmp ne ptr %call39, null, !dbg !2142
  br i1 %tobool40, label %if.end43, label %if.then41, !dbg !2143

if.then41:                                        ; preds = %if.end38
  %34 = load ptr, ptr %fp, align 8, !dbg !2144, !tbaa !1136
  %call42 = call i32 @zfclose(ptr noundef %34), !dbg !2146
  store i32 -1, ptr %retval, align 4, !dbg !2147
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2147

if.end43:                                         ; preds = %if.end38
  %35 = load ptr, ptr %fd.addr, align 8, !dbg !2148, !tbaa !1136
  %fp44 = getelementptr inbounds %struct.cram_fd, ptr %35, i32 0, i32 0, !dbg !2149
  %36 = load ptr, ptr %fp44, align 8, !dbg !2149, !tbaa !2065
  %call45 = call i64 @htell(ptr noundef %36), !dbg !2150
  %37 = load i64, ptr %spos, align 8, !dbg !2151, !tbaa !1165
  %sub46 = sub nsw i64 %call45, %37, !dbg !2152
  %conv47 = trunc i64 %sub46 to i32, !dbg !2153
  store i32 %conv47, ptr %sz, align 4, !dbg !2154, !tbaa !1160
  %38 = load ptr, ptr %s, align 8, !dbg !2155, !tbaa !1136
  %hdr = getelementptr inbounds %struct.cram_slice, ptr %38, i32 0, i32 0, !dbg !2157
  %39 = load ptr, ptr %hdr, align 8, !dbg !2157, !tbaa !2158
  %ref_seq_id = getelementptr inbounds %struct.cram_block_slice_hdr, ptr %39, i32 0, i32 1, !dbg !2160
  %40 = load i32, ptr %ref_seq_id, align 4, !dbg !2160, !tbaa !2161
  %cmp48 = icmp eq i32 %40, -2, !dbg !2163
  br i1 %cmp48, label %if.then50, label %if.else55, !dbg !2164

if.then50:                                        ; preds = %if.end43
  %41 = load ptr, ptr %fd.addr, align 8, !dbg !2165, !tbaa !1136
  %42 = load ptr, ptr %c, align 8, !dbg !2167, !tbaa !1136
  %43 = load ptr, ptr %s, align 8, !dbg !2168, !tbaa !1136
  %44 = load ptr, ptr %fp, align 8, !dbg !2169, !tbaa !1136
  %45 = load i64, ptr %cpos, align 8, !dbg !2170, !tbaa !1165
  %46 = load ptr, ptr %c, align 8, !dbg !2171, !tbaa !1136
  %landmark51 = getelementptr inbounds %struct.cram_container, ptr %46, i32 0, i32 9, !dbg !2172
  %47 = load ptr, ptr %landmark51, align 8, !dbg !2172, !tbaa !2137
  %48 = load i32, ptr %j, align 4, !dbg !2173, !tbaa !1160
  %idxprom52 = sext i32 %48 to i64, !dbg !2171
  %arrayidx53 = getelementptr inbounds i32, ptr %47, i64 %idxprom52, !dbg !2171
  %49 = load i32, ptr %arrayidx53, align 4, !dbg !2171, !tbaa !1160
  %50 = load i32, ptr %sz, align 4, !dbg !2174, !tbaa !1160
  %call54 = call i32 @cram_index_build_multiref(ptr noundef %41, ptr noundef %42, ptr noundef %43, ptr noundef %44, i64 noundef %45, i32 noundef %49, i32 noundef %50), !dbg !2175
  br label %if.end67, !dbg !2176

if.else55:                                        ; preds = %if.end43
  %arraydecay56 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0, !dbg !2177
  %51 = load ptr, ptr %s, align 8, !dbg !2179, !tbaa !1136
  %hdr57 = getelementptr inbounds %struct.cram_slice, ptr %51, i32 0, i32 0, !dbg !2180
  %52 = load ptr, ptr %hdr57, align 8, !dbg !2180, !tbaa !2158
  %ref_seq_id58 = getelementptr inbounds %struct.cram_block_slice_hdr, ptr %52, i32 0, i32 1, !dbg !2181
  %53 = load i32, ptr %ref_seq_id58, align 4, !dbg !2181, !tbaa !2161
  %54 = load ptr, ptr %s, align 8, !dbg !2182, !tbaa !1136
  %hdr59 = getelementptr inbounds %struct.cram_slice, ptr %54, i32 0, i32 0, !dbg !2183
  %55 = load ptr, ptr %hdr59, align 8, !dbg !2183, !tbaa !2158
  %ref_seq_start = getelementptr inbounds %struct.cram_block_slice_hdr, ptr %55, i32 0, i32 2, !dbg !2184
  %56 = load i32, ptr %ref_seq_start, align 8, !dbg !2184, !tbaa !2185
  %57 = load ptr, ptr %s, align 8, !dbg !2186, !tbaa !1136
  %hdr60 = getelementptr inbounds %struct.cram_slice, ptr %57, i32 0, i32 0, !dbg !2187
  %58 = load ptr, ptr %hdr60, align 8, !dbg !2187, !tbaa !2158
  %ref_seq_span = getelementptr inbounds %struct.cram_block_slice_hdr, ptr %58, i32 0, i32 3, !dbg !2188
  %59 = load i32, ptr %ref_seq_span, align 4, !dbg !2188, !tbaa !2189
  %60 = load i64, ptr %cpos, align 8, !dbg !2190, !tbaa !1165
  %61 = load ptr, ptr %c, align 8, !dbg !2191, !tbaa !1136
  %landmark61 = getelementptr inbounds %struct.cram_container, ptr %61, i32 0, i32 9, !dbg !2192
  %62 = load ptr, ptr %landmark61, align 8, !dbg !2192, !tbaa !2137
  %63 = load i32, ptr %j, align 4, !dbg !2193, !tbaa !1160
  %idxprom62 = sext i32 %63 to i64, !dbg !2191
  %arrayidx63 = getelementptr inbounds i32, ptr %62, i64 %idxprom62, !dbg !2191
  %64 = load i32, ptr %arrayidx63, align 4, !dbg !2191, !tbaa !1160
  %65 = load i32, ptr %sz, align 4, !dbg !2194, !tbaa !1160
  %call64 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay56, ptr noundef @.str.10, i32 noundef %53, i32 noundef %56, i32 noundef %59, i64 noundef %60, i32 noundef %64, i32 noundef %65) #12, !dbg !2195
  %arraydecay65 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0, !dbg !2196
  %66 = load ptr, ptr %fp, align 8, !dbg !2197, !tbaa !1136
  %call66 = call i32 @zfputs(ptr noundef %arraydecay65, ptr noundef %66), !dbg !2198
  br label %if.end67

if.end67:                                         ; preds = %if.else55, %if.then50
  %67 = load ptr, ptr %s, align 8, !dbg !2199, !tbaa !1136
  call void @cram_free_slice(ptr noundef %67), !dbg !2200
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2201
  br label %cleanup, !dbg !2201

cleanup:                                          ; preds = %if.end67, %if.then41
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #12, !dbg !2201
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #12, !dbg !2201
  call void @llvm.lifetime.end.p0(i64 1024, ptr %buf) #12, !dbg !2201
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup78 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2202

for.inc:                                          ; preds = %cleanup.cont
  %68 = load i32, ptr %j, align 4, !dbg !2203, !tbaa !1160
  %inc = add nsw i32 %68, 1, !dbg !2203
  store i32 %inc, ptr %j, align 4, !dbg !2203, !tbaa !1160
  br label %for.cond, !dbg !2204, !llvm.loop !2205

for.end:                                          ; preds = %for.cond
  %69 = load ptr, ptr %fd.addr, align 8, !dbg !2207, !tbaa !1136
  %fp70 = getelementptr inbounds %struct.cram_fd, ptr %69, i32 0, i32 0, !dbg !2208
  %70 = load ptr, ptr %fp70, align 8, !dbg !2208, !tbaa !2065
  %call71 = call i64 @htell(ptr noundef %70), !dbg !2209
  store i64 %call71, ptr %cpos, align 8, !dbg !2210, !tbaa !1165
  %71 = load i64, ptr %cpos, align 8, !dbg !2211, !tbaa !1165
  %72 = load i64, ptr %hpos, align 8, !dbg !2211, !tbaa !1165
  %73 = load ptr, ptr %c, align 8, !dbg !2211, !tbaa !1136
  %length = getelementptr inbounds %struct.cram_container, ptr %73, i32 0, i32 0, !dbg !2211
  %74 = load i32, ptr %length, align 8, !dbg !2211, !tbaa !2214
  %conv72 = sext i32 %74 to i64, !dbg !2211
  %add = add nsw i64 %72, %conv72, !dbg !2211
  %cmp73 = icmp eq i64 %71, %add, !dbg !2211
  br i1 %cmp73, label %if.then75, label %if.else76, !dbg !2215

if.then75:                                        ; preds = %for.end
  br label %if.end77, !dbg !2215

if.else76:                                        ; preds = %for.end
  call void @__assert_fail(ptr noundef @.str.11, ptr noundef @.str.8, i32 noundef 492, ptr noundef @__PRETTY_FUNCTION__.cram_index_build) #16, !dbg !2211
  unreachable, !dbg !2211

if.end77:                                         ; preds = %if.then75
  %75 = load ptr, ptr %c, align 8, !dbg !2216, !tbaa !1136
  call void @cram_free_container(ptr noundef %75), !dbg !2217
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2218
  br label %cleanup78, !dbg !2218

cleanup78:                                        ; preds = %if.end77, %cleanup, %if.then28, %if.then18, %if.then12
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12, !dbg !2218
  %cleanup.dest79 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest79, label %cleanup87 [
    i32 0, label %cleanup.cont80
  ]

cleanup.cont80:                                   ; preds = %cleanup78
  br label %while.cond, !dbg !2068, !llvm.loop !2219

while.end:                                        ; preds = %while.cond
  %76 = load ptr, ptr %fd.addr, align 8, !dbg !2220, !tbaa !1136
  %err81 = getelementptr inbounds %struct.cram_fd, ptr %76, i32 0, i32 8, !dbg !2222
  %77 = load i32, ptr %err81, align 8, !dbg !2222, !tbaa !2077
  %tobool82 = icmp ne i32 %77, 0, !dbg !2220
  br i1 %tobool82, label %if.then83, label %if.end85, !dbg !2223

if.then83:                                        ; preds = %while.end
  %78 = load ptr, ptr %fp, align 8, !dbg !2224, !tbaa !1136
  %call84 = call i32 @zfclose(ptr noundef %78), !dbg !2226
  store i32 -1, ptr %retval, align 4, !dbg !2227
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup87, !dbg !2227

if.end85:                                         ; preds = %while.end
  %79 = load ptr, ptr %fp, align 8, !dbg !2228, !tbaa !1136
  %call86 = call i32 @zfclose(ptr noundef %79), !dbg !2229
  store i32 %call86, ptr %retval, align 4, !dbg !2230
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup87, !dbg !2230

cleanup87:                                        ; preds = %if.end85, %if.then83, %cleanup78, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4096, ptr %fn_idx) #12, !dbg !2231
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp) #12, !dbg !2231
  call void @llvm.lifetime.end.p0(i64 8, ptr %hpos) #12, !dbg !2231
  call void @llvm.lifetime.end.p0(i64 8, ptr %spos) #12, !dbg !2231
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpos) #12, !dbg !2231
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #12, !dbg !2231
  %80 = load i32, ptr %retval, align 4, !dbg !2231
  ret i32 %80, !dbg !2231
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2232 i64 @strlen(ptr noundef) #9

declare !dbg !2236 ptr @zfopen(ptr noundef, ptr noundef) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @htell(ptr noundef %fp) #6 !dbg !2239 {
entry:
  %fp.addr = alloca ptr, align 8
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !1136
  tail call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !2243, metadata !DIExpression()), !dbg !2244
  %0 = load ptr, ptr %fp.addr, align 8, !dbg !2245, !tbaa !1136
  %offset = getelementptr inbounds %struct.hFILE, ptr %0, i32 0, i32 5, !dbg !2246
  %1 = load i64, ptr %offset, align 8, !dbg !2246, !tbaa !2247
  %2 = load ptr, ptr %fp.addr, align 8, !dbg !2248, !tbaa !1136
  %begin = getelementptr inbounds %struct.hFILE, ptr %2, i32 0, i32 1, !dbg !2249
  %3 = load ptr, ptr %begin, align 8, !dbg !2249, !tbaa !1563
  %4 = load ptr, ptr %fp.addr, align 8, !dbg !2250, !tbaa !1136
  %buffer = getelementptr inbounds %struct.hFILE, ptr %4, i32 0, i32 0, !dbg !2251
  %5 = load ptr, ptr %buffer, align 8, !dbg !2251, !tbaa !2252
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i64, !dbg !2253
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64, !dbg !2253
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2253
  %add = add nsw i64 %1, %sub.ptr.sub, !dbg !2254
  ret i64 %add, !dbg !2255
}

declare !dbg !2256 ptr @cram_read_container(ptr noundef) #5

declare !dbg !2259 ptr @cram_read_block(ptr noundef) #5

; Function Attrs: noreturn nounwind
declare !dbg !2262 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #10

declare !dbg !2266 ptr @cram_decode_compression_header(ptr noundef, ptr noundef) #5

declare !dbg !2270 ptr @cram_read_slice(ptr noundef) #5

declare !dbg !2273 i32 @zfclose(ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal i32 @cram_index_build_multiref(ptr noundef %fd, ptr noundef %c, ptr noundef %s, ptr noundef %fp, i64 noundef %cpos, i32 noundef %landmark, i32 noundef %sz) #0 !dbg !2276 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %cpos.addr = alloca i64, align 8
  %landmark.addr = alloca i32, align 4
  %sz.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ref = alloca i32, align 4
  %ref_start = alloca i32, align 4
  %ref_end = alloca i32, align 4
  %buf = alloca [1024 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fd, ptr %fd.addr, align 8, !tbaa !1136
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !2280, metadata !DIExpression()), !dbg !2292
  store ptr %c, ptr %c.addr, align 8, !tbaa !1136
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2281, metadata !DIExpression()), !dbg !2293
  store ptr %s, ptr %s.addr, align 8, !tbaa !1136
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2282, metadata !DIExpression()), !dbg !2294
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !1136
  tail call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !2283, metadata !DIExpression()), !dbg !2295
  store i64 %cpos, ptr %cpos.addr, align 8, !tbaa !1165
  tail call void @llvm.dbg.declare(metadata ptr %cpos.addr, metadata !2284, metadata !DIExpression()), !dbg !2296
  store i32 %landmark, ptr %landmark.addr, align 4, !tbaa !1160
  tail call void @llvm.dbg.declare(metadata ptr %landmark.addr, metadata !2285, metadata !DIExpression()), !dbg !2297
  store i32 %sz, ptr %sz.addr, align 4, !tbaa !1160
  tail call void @llvm.dbg.declare(metadata ptr %sz.addr, metadata !2286, metadata !DIExpression()), !dbg !2298
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !2299
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2287, metadata !DIExpression()), !dbg !2300
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref) #12, !dbg !2299
  tail call void @llvm.dbg.declare(metadata ptr %ref, metadata !2288, metadata !DIExpression()), !dbg !2301
  store i32 -2, ptr %ref, align 4, !dbg !2301, !tbaa !1160
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_start) #12, !dbg !2299
  tail call void @llvm.dbg.declare(metadata ptr %ref_start, metadata !2289, metadata !DIExpression()), !dbg !2302
  store i32 0, ptr %ref_start, align 4, !dbg !2302, !tbaa !1160
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_end) #12, !dbg !2299
  tail call void @llvm.dbg.declare(metadata ptr %ref_end, metadata !2290, metadata !DIExpression()), !dbg !2303
  call void @llvm.lifetime.start.p0(i64 1024, ptr %buf) #12, !dbg !2304
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !2291, metadata !DIExpression()), !dbg !2305
  %0 = load ptr, ptr %fd.addr, align 8, !dbg !2306, !tbaa !1136
  %1 = load ptr, ptr %c.addr, align 8, !dbg !2308, !tbaa !1136
  %2 = load ptr, ptr %s.addr, align 8, !dbg !2309, !tbaa !1136
  %3 = load ptr, ptr %fd.addr, align 8, !dbg !2310, !tbaa !1136
  %header = getelementptr inbounds %struct.cram_fd, ptr %3, i32 0, i32 4, !dbg !2311
  %4 = load ptr, ptr %header, align 8, !dbg !2311, !tbaa !2312
  %call = call i32 @cram_decode_slice(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %4), !dbg !2313
  %cmp = icmp ne i32 0, %call, !dbg !2314
  br i1 %cmp, label %if.then, label %if.end, !dbg !2315

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !2316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2316

if.end:                                           ; preds = %entry
  store i32 -2147483648, ptr %ref_end, align 4, !dbg !2317, !tbaa !1160
  store i32 0, ptr %i, align 4, !dbg !2318, !tbaa !1160
  br label %for.cond, !dbg !2320

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4, !dbg !2321, !tbaa !1160
  %6 = load ptr, ptr %s.addr, align 8, !dbg !2323, !tbaa !1136
  %hdr = getelementptr inbounds %struct.cram_slice, ptr %6, i32 0, i32 0, !dbg !2324
  %7 = load ptr, ptr %hdr, align 8, !dbg !2324, !tbaa !2158
  %num_records = getelementptr inbounds %struct.cram_block_slice_hdr, ptr %7, i32 0, i32 4, !dbg !2325
  %8 = load i32, ptr %num_records, align 8, !dbg !2325, !tbaa !2326
  %cmp1 = icmp slt i32 %5, %8, !dbg !2327
  br i1 %cmp1, label %for.body, label %for.end, !dbg !2328

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %s.addr, align 8, !dbg !2329, !tbaa !1136
  %crecs = getelementptr inbounds %struct.cram_slice, ptr %9, i32 0, i32 7, !dbg !2332
  %10 = load ptr, ptr %crecs, align 8, !dbg !2332, !tbaa !2333
  %11 = load i32, ptr %i, align 4, !dbg !2334, !tbaa !1160
  %idxprom = sext i32 %11 to i64, !dbg !2329
  %arrayidx = getelementptr inbounds %struct.cram_record, ptr %10, i64 %idxprom, !dbg !2329
  %ref_id = getelementptr inbounds %struct.cram_record, ptr %arrayidx, i32 0, i32 1, !dbg !2335
  %12 = load i32, ptr %ref_id, align 8, !dbg !2335, !tbaa !2336
  %13 = load i32, ptr %ref, align 4, !dbg !2338, !tbaa !1160
  %cmp2 = icmp eq i32 %12, %13, !dbg !2339
  br i1 %cmp2, label %if.then3, label %if.end14, !dbg !2340

if.then3:                                         ; preds = %for.body
  %14 = load i32, ptr %ref_end, align 4, !dbg !2341, !tbaa !1160
  %15 = load ptr, ptr %s.addr, align 8, !dbg !2344, !tbaa !1136
  %crecs4 = getelementptr inbounds %struct.cram_slice, ptr %15, i32 0, i32 7, !dbg !2345
  %16 = load ptr, ptr %crecs4, align 8, !dbg !2345, !tbaa !2333
  %17 = load i32, ptr %i, align 4, !dbg !2346, !tbaa !1160
  %idxprom5 = sext i32 %17 to i64, !dbg !2344
  %arrayidx6 = getelementptr inbounds %struct.cram_record, ptr %16, i64 %idxprom5, !dbg !2344
  %aend = getelementptr inbounds %struct.cram_record, ptr %arrayidx6, i32 0, i32 22, !dbg !2347
  %18 = load i32, ptr %aend, align 4, !dbg !2347, !tbaa !2348
  %cmp7 = icmp slt i32 %14, %18, !dbg !2349
  br i1 %cmp7, label %if.then8, label %if.end13, !dbg !2350

if.then8:                                         ; preds = %if.then3
  %19 = load ptr, ptr %s.addr, align 8, !dbg !2351, !tbaa !1136
  %crecs9 = getelementptr inbounds %struct.cram_slice, ptr %19, i32 0, i32 7, !dbg !2352
  %20 = load ptr, ptr %crecs9, align 8, !dbg !2352, !tbaa !2333
  %21 = load i32, ptr %i, align 4, !dbg !2353, !tbaa !1160
  %idxprom10 = sext i32 %21 to i64, !dbg !2351
  %arrayidx11 = getelementptr inbounds %struct.cram_record, ptr %20, i64 %idxprom10, !dbg !2351
  %aend12 = getelementptr inbounds %struct.cram_record, ptr %arrayidx11, i32 0, i32 22, !dbg !2354
  %22 = load i32, ptr %aend12, align 4, !dbg !2354, !tbaa !2348
  store i32 %22, ptr %ref_end, align 4, !dbg !2355, !tbaa !1160
  br label %if.end13, !dbg !2356

if.end13:                                         ; preds = %if.then8, %if.then3
  br label %for.inc, !dbg !2357

if.end14:                                         ; preds = %for.body
  %23 = load i32, ptr %ref, align 4, !dbg !2358, !tbaa !1160
  %cmp15 = icmp ne i32 %23, -2, !dbg !2360
  br i1 %cmp15, label %if.then16, label %if.end20, !dbg !2361

if.then16:                                        ; preds = %if.end14
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0, !dbg !2362
  %24 = load i32, ptr %ref, align 4, !dbg !2364, !tbaa !1160
  %25 = load i32, ptr %ref_start, align 4, !dbg !2365, !tbaa !1160
  %26 = load i32, ptr %ref_end, align 4, !dbg !2366, !tbaa !1160
  %27 = load i32, ptr %ref_start, align 4, !dbg !2367, !tbaa !1160
  %sub = sub nsw i32 %26, %27, !dbg !2368
  %add = add nsw i32 %sub, 1, !dbg !2369
  %28 = load i64, ptr %cpos.addr, align 8, !dbg !2370, !tbaa !1165
  %29 = load i32, ptr %landmark.addr, align 4, !dbg !2371, !tbaa !1160
  %30 = load i32, ptr %sz.addr, align 4, !dbg !2372, !tbaa !1160
  %call17 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.10, i32 noundef %24, i32 noundef %25, i32 noundef %add, i64 noundef %28, i32 noundef %29, i32 noundef %30) #12, !dbg !2373
  %arraydecay18 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0, !dbg !2374
  %31 = load ptr, ptr %fp.addr, align 8, !dbg !2375, !tbaa !1136
  %call19 = call i32 @zfputs(ptr noundef %arraydecay18, ptr noundef %31), !dbg !2376
  br label %if.end20, !dbg !2377

if.end20:                                         ; preds = %if.then16, %if.end14
  %32 = load ptr, ptr %s.addr, align 8, !dbg !2378, !tbaa !1136
  %crecs21 = getelementptr inbounds %struct.cram_slice, ptr %32, i32 0, i32 7, !dbg !2379
  %33 = load ptr, ptr %crecs21, align 8, !dbg !2379, !tbaa !2333
  %34 = load i32, ptr %i, align 4, !dbg !2380, !tbaa !1160
  %idxprom22 = sext i32 %34 to i64, !dbg !2378
  %arrayidx23 = getelementptr inbounds %struct.cram_record, ptr %33, i64 %idxprom22, !dbg !2378
  %ref_id24 = getelementptr inbounds %struct.cram_record, ptr %arrayidx23, i32 0, i32 1, !dbg !2381
  %35 = load i32, ptr %ref_id24, align 8, !dbg !2381, !tbaa !2336
  store i32 %35, ptr %ref, align 4, !dbg !2382, !tbaa !1160
  %36 = load ptr, ptr %s.addr, align 8, !dbg !2383, !tbaa !1136
  %crecs25 = getelementptr inbounds %struct.cram_slice, ptr %36, i32 0, i32 7, !dbg !2384
  %37 = load ptr, ptr %crecs25, align 8, !dbg !2384, !tbaa !2333
  %38 = load i32, ptr %i, align 4, !dbg !2385, !tbaa !1160
  %idxprom26 = sext i32 %38 to i64, !dbg !2383
  %arrayidx27 = getelementptr inbounds %struct.cram_record, ptr %37, i64 %idxprom26, !dbg !2383
  %apos = getelementptr inbounds %struct.cram_record, ptr %arrayidx27, i32 0, i32 5, !dbg !2386
  %39 = load i32, ptr %apos, align 8, !dbg !2386, !tbaa !2387
  store i32 %39, ptr %ref_start, align 4, !dbg !2388, !tbaa !1160
  store i32 -2147483648, ptr %ref_end, align 4, !dbg !2389, !tbaa !1160
  br label %for.inc, !dbg !2390

for.inc:                                          ; preds = %if.end20, %if.end13
  %40 = load i32, ptr %i, align 4, !dbg !2391, !tbaa !1160
  %inc = add nsw i32 %40, 1, !dbg !2391
  store i32 %inc, ptr %i, align 4, !dbg !2391, !tbaa !1160
  br label %for.cond, !dbg !2392, !llvm.loop !2393

for.end:                                          ; preds = %for.cond
  %41 = load i32, ptr %ref, align 4, !dbg !2395, !tbaa !1160
  %cmp28 = icmp ne i32 %41, -2, !dbg !2397
  br i1 %cmp28, label %if.then29, label %if.end36, !dbg !2398

if.then29:                                        ; preds = %for.end
  %arraydecay30 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0, !dbg !2399
  %42 = load i32, ptr %ref, align 4, !dbg !2401, !tbaa !1160
  %43 = load i32, ptr %ref_start, align 4, !dbg !2402, !tbaa !1160
  %44 = load i32, ptr %ref_end, align 4, !dbg !2403, !tbaa !1160
  %45 = load i32, ptr %ref_start, align 4, !dbg !2404, !tbaa !1160
  %sub31 = sub nsw i32 %44, %45, !dbg !2405
  %add32 = add nsw i32 %sub31, 1, !dbg !2406
  %46 = load i64, ptr %cpos.addr, align 8, !dbg !2407, !tbaa !1165
  %47 = load i32, ptr %landmark.addr, align 4, !dbg !2408, !tbaa !1160
  %48 = load i32, ptr %sz.addr, align 4, !dbg !2409, !tbaa !1160
  %call33 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay30, ptr noundef @.str.10, i32 noundef %42, i32 noundef %43, i32 noundef %add32, i64 noundef %46, i32 noundef %47, i32 noundef %48) #12, !dbg !2410
  %arraydecay34 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0, !dbg !2411
  %49 = load ptr, ptr %fp.addr, align 8, !dbg !2412, !tbaa !1136
  %call35 = call i32 @zfputs(ptr noundef %arraydecay34, ptr noundef %49), !dbg !2413
  br label %if.end36, !dbg !2414

if.end36:                                         ; preds = %if.then29, %for.end
  store i32 0, ptr %retval, align 4, !dbg !2415
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2415

cleanup:                                          ; preds = %if.end36, %if.then
  call void @llvm.lifetime.end.p0(i64 1024, ptr %buf) #12, !dbg !2416
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_end) #12, !dbg !2416
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_start) #12, !dbg !2416
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref) #12, !dbg !2416
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !2416
  %50 = load i32, ptr %retval, align 4, !dbg !2416
  ret i32 %50, !dbg !2416
}

declare !dbg !2417 i32 @zfputs(ptr noundef, ptr noundef) #5

declare !dbg !2420 void @cram_free_slice(ptr noundef) #5

declare !dbg !2423 i64 @hread2(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #5

declare !dbg !2426 i32 @cram_decode_slice(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { nounwind allocsize(1) }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { noreturn nounwind }

!llvm.dbg.cu = !{!65}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "cram/cram_index.c", directory: "/local-ssd/star-s7gfyo2prvaki7w6cr7mtqgyaudishwq-build/aidengro/spack-stage-star-2.7.10b-s7gfyo2prvaki7w6cr7mtqgyaudishwq/spack-src/source/htslib", checksumkind: CSK_MD5, checksum: "e3d861c83286af032ee12b16dba6b549")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 8)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 2)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 167, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 21)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 186, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 32)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 353, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 43)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 437, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 3)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 447, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 20)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 455, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 54)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 455, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 18)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 455, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 368, elements: !51)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!51 = !{!52}
!52 = !DISubrange(count: 46)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 468, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 42)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 481, type: !34, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 492, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 25)
!65 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !66, retainedTypes: !104, globals: !116, splitDebugInlining: false, nameTableKind: None)
!66 = !{!67, !75, !84, !97}
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cram_block_method", file: !68, line: 147, baseType: !69, size: 32, elements: !70)
!68 = !DIFile(filename: "./cram/cram_structs.h", directory: "/local-ssd/star-s7gfyo2prvaki7w6cr7mtqgyaudishwq-build/aidengro/spack-stage-star-2.7.10b-s7gfyo2prvaki7w6cr7mtqgyaudishwq/spack-src/source/htslib", checksumkind: CSK_MD5, checksum: "26f5f6b71da317ccea50cc4377b5fde6")
!69 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!70 = !{!71, !72, !73, !74}
!71 = !DIEnumerator(name: "BM_ERROR", value: -1)
!72 = !DIEnumerator(name: "RAW", value: 0)
!73 = !DIEnumerator(name: "GZIP", value: 1)
!74 = !DIEnumerator(name: "BZIP2", value: 2)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cram_content_type", file: !68, line: 154, baseType: !69, size: 32, elements: !76)
!76 = !{!77, !78, !79, !80, !81, !82, !83}
!77 = !DIEnumerator(name: "CT_ERROR", value: -1)
!78 = !DIEnumerator(name: "FILE_HEADER", value: 0)
!79 = !DIEnumerator(name: "COMPRESSION_HEADER", value: 1)
!80 = !DIEnumerator(name: "MAPPED_SLICE", value: 2)
!81 = !DIEnumerator(name: "UNMAPPED_SLICE", value: 3)
!82 = !DIEnumerator(name: "EXTERNAL", value: 4)
!83 = !DIEnumerator(name: "CORE", value: 5)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cram_encoding", file: !68, line: 113, baseType: !85, size: 32, elements: !86)
!85 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!87 = !DIEnumerator(name: "E_NULL", value: 0)
!88 = !DIEnumerator(name: "E_EXTERNAL", value: 1)
!89 = !DIEnumerator(name: "E_GOLOMB", value: 2)
!90 = !DIEnumerator(name: "E_HUFFMAN", value: 3)
!91 = !DIEnumerator(name: "E_BYTE_ARRAY_LEN", value: 4)
!92 = !DIEnumerator(name: "E_BYTE_ARRAY_STOP", value: 5)
!93 = !DIEnumerator(name: "E_BETA", value: 6)
!94 = !DIEnumerator(name: "E_SUBEXP", value: 7)
!95 = !DIEnumerator(name: "E_GOLOMB_RICE", value: 8)
!96 = !DIEnumerator(name: "E_GAMMA", value: 9)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cram_external_type", file: !68, line: 126, baseType: !85, size: 32, elements: !98)
!98 = !{!99, !100, !101, !102, !103}
!99 = !DIEnumerator(name: "E_INT", value: 1)
!100 = !DIEnumerator(name: "E_LONG", value: 2)
!101 = !DIEnumerator(name: "E_BYTE", value: 3)
!102 = !DIEnumerator(name: "E_BYTE_ARRAY", value: 4)
!103 = !DIEnumerator(name: "E_BYTE_ARRAY_BLOCK", value: 5)
!104 = !{!105, !107, !69, !108, !113}
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uc", file: !68, line: 69, baseType: !106)
!106 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !109, line: 27, baseType: !110)
!109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !111, line: 44, baseType: !112)
!111 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!112 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !114, line: 77, baseType: !115)
!114 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !111, line: 194, baseType: !112)
!116 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !53, !58, !60}
!117 = !{i32 7, !"Dwarf Version", i32 5}
!118 = !{i32 2, !"Debug Info Version", i32 3}
!119 = !{i32 1, !"wchar_size", i32 4}
!120 = !{i32 8, !"PIC Level", i32 2}
!121 = !{i32 7, !"PIE Level", i32 2}
!122 = !{i32 7, !"uwtable", i32 2}
!123 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!124 = distinct !DISubprogram(name: "cram_index_load", scope: !2, file: !2, line: 95, type: !125, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !1102)
!125 = !DISubroutineType(types: !126)
!126 = !{!69, !127, !276}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "cram_fd", file: !68, line: 694, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cram_fd", file: !68, line: 622, size: 277952, elements: !130)
!130 = !{!131, !150, !151, !152, !167, !313, !314, !315, !316, !317, !807, !808, !809, !927, !928, !929, !930, !931, !932, !933, !934, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !962, !966, !967, !971, !972, !975, !976, !992, !993, !994, !995, !996, !997, !998, !999, !1086, !1089, !1090, !1091, !1099, !1100, !1101}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !129, file: !68, line: 623, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "cram_FILE", file: !68, line: 85, baseType: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hFILE", file: !135, line: 42, size: 448, elements: !136)
!135 = !DIFile(filename: "./htslib/hfile.h", directory: "/local-ssd/star-s7gfyo2prvaki7w6cr7mtqgyaudishwq-build/aidengro/spack-stage-star-2.7.10b-s7gfyo2prvaki7w6cr7mtqgyaudishwq/spack-src/source/htslib", checksumkind: CSK_MD5, checksum: "3de0564fb68f92a6cbdbd3661c50be4f")
!136 = !{!137, !138, !139, !140, !141, !145, !148, !149}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !134, file: !135, line: 43, baseType: !107, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !134, file: !135, line: 43, baseType: !107, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !134, file: !135, line: 43, baseType: !107, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !134, file: !135, line: 43, baseType: !107, size: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "backend", scope: !134, file: !135, line: 44, baseType: !142, size: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = !DICompositeType(tag: DW_TAG_structure_type, name: "hFILE_backend", file: !135, line: 41, flags: DIFlagFwdDecl)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !134, file: !135, line: 45, baseType: !146, size: 64, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !114, line: 63, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !111, line: 152, baseType: !112)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "at_eof", scope: !134, file: !135, line: 46, baseType: !69, size: 1, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "has_errno", scope: !134, file: !135, line: 47, baseType: !69, size: 32, offset: 416)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !129, file: !68, line: 624, baseType: !69, size: 32, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !129, file: !68, line: 625, baseType: !69, size: 32, offset: 96)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "file_def", scope: !129, file: !68, line: 626, baseType: !153, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "cram_file_def", file: !68, line: 140, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 135, size: 208, elements: !156)
!156 = !{!157, !161, !165, !166}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !155, file: !68, line: 136, baseType: !158, size: 32)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 4)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "major_version", scope: !155, file: !68, line: 137, baseType: !162, size: 8, offset: 32)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !163, line: 24, baseType: !164)
!163 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !111, line: 38, baseType: !106)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "minor_version", scope: !155, file: !68, line: 138, baseType: !162, size: 8, offset: 40)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "file_id", scope: !155, file: !68, line: 139, baseType: !34, size: 160, offset: 48)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !129, file: !68, line: 627, baseType: !168, size: 64, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "SAM_hdr", file: !170, line: 213, baseType: !171)
!170 = !DIFile(filename: "./cram/sam_header.h", directory: "/local-ssd/star-s7gfyo2prvaki7w6cr7mtqgyaudishwq-build/aidengro/spack-stage-star-2.7.10b-s7gfyo2prvaki7w6cr7mtqgyaudishwq/spack-src/source/htslib", checksumkind: CSK_MD5, checksum: "eceb4414916c32b1602bfba25324383a")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !170, line: 183, size: 9408, elements: !172)
!172 = !{!173, !184, !218, !233, !250, !251, !252, !263, !279, !280, !290, !291, !292, !293, !294, !305, !306, !307, !311, !312}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !171, file: !170, line: 184, baseType: !174, size: 192)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "kstring_t", file: !175, line: 19, baseType: !176)
!175 = !DIFile(filename: "./htslib/hts.h", directory: "/local-ssd/star-s7gfyo2prvaki7w6cr7mtqgyaudishwq-build/aidengro/spack-stage-star-2.7.10b-s7gfyo2prvaki7w6cr7mtqgyaudishwq/spack-src/source/htslib", checksumkind: CSK_MD5, checksum: "01f4720bfa3058148c5f4bac8317f59d")
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kstring_t", file: !175, line: 16, size: 192, elements: !177)
!177 = !{!178, !182, !183}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !176, file: !175, line: 17, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !180, line: 70, baseType: !181)
!180 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!181 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !176, file: !175, line: 17, baseType: !179, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !176, file: !175, line: 18, baseType: !107, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !171, file: !170, line: 185, baseType: !185, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_sam_hdr_t", file: !170, line: 168, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !170, line: 168, size: 320, elements: !188)
!188 = !{!189, !193, !194, !195, !196, !198, !199}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !187, file: !170, line: 168, baseType: !190, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "khint_t", file: !191, line: 152, baseType: !192)
!191 = !DIFile(filename: "./htslib/khash.h", directory: "/local-ssd/star-s7gfyo2prvaki7w6cr7mtqgyaudishwq-build/aidengro/spack-stage-star-2.7.10b-s7gfyo2prvaki7w6cr7mtqgyaudishwq/spack-src/source/htslib", checksumkind: CSK_MD5, checksum: "f198587301b07372c22d55a1bc46dccc")
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "khint32_t", file: !191, line: 135, baseType: !85)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !187, file: !170, line: 168, baseType: !190, size: 32, offset: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "n_occupied", scope: !187, file: !170, line: 168, baseType: !190, size: 32, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "upper_bound", scope: !187, file: !170, line: 168, baseType: !190, size: 32, offset: 96)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !187, file: !170, line: 168, baseType: !197, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !187, file: !170, line: 168, baseType: !197, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !187, file: !170, line: 168, baseType: !200, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "SAM_hdr_type", file: !170, line: 139, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SAM_hdr_item_s", file: !170, line: 134, size: 256, elements: !204)
!204 = !{!205, !207, !208, !217}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !203, file: !170, line: 135, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !203, file: !170, line: 136, baseType: !206, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !203, file: !170, line: 137, baseType: !209, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "SAM_hdr_tag", file: !170, line: 117, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SAM_hdr_tag_s", file: !170, line: 113, size: 192, elements: !212)
!212 = !{!213, !215, !216}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !211, file: !170, line: 114, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !211, file: !170, line: 115, baseType: !107, size: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !211, file: !170, line: 116, baseType: !69, size: 32, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !203, file: !170, line: 138, baseType: !69, size: 32, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "str_pool", scope: !171, file: !170, line: 186, baseType: !219, size: 64, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "string_alloc_t", file: !221, line: 56, baseType: !222)
!221 = !DIFile(filename: "./cram/string_alloc.h", directory: "/local-ssd/star-s7gfyo2prvaki7w6cr7mtqgyaudishwq-build/aidengro/spack-stage-star-2.7.10b-s7gfyo2prvaki7w6cr7mtqgyaudishwq/spack-src/source/htslib", checksumkind: CSK_MD5, checksum: "52eee84334c24075686868ec49e8d98f")
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !221, line: 52, size: 192, elements: !223)
!223 = !{!224, !225, !226}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "max_length", scope: !222, file: !221, line: 53, baseType: !179, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "nstrings", scope: !222, file: !221, line: 54, baseType: !179, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "strings", scope: !222, file: !221, line: 55, baseType: !227, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "string_t", file: !221, line: 50, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !221, line: 47, size: 128, elements: !230)
!230 = !{!231, !232}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !229, file: !221, line: 48, baseType: !107, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !229, file: !221, line: 49, baseType: !179, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "type_pool", scope: !171, file: !170, line: 187, baseType: !234, size: 64, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "pool_alloc_t", file: !236, line: 48, baseType: !237)
!236 = !DIFile(filename: "./cram/pooled_alloc.h", directory: "/local-ssd/star-s7gfyo2prvaki7w6cr7mtqgyaudishwq-build/aidengro/spack-stage-star-2.7.10b-s7gfyo2prvaki7w6cr7mtqgyaudishwq/spack-src/source/htslib", checksumkind: CSK_MD5, checksum: "02093bf30c2a3a10578025c13ec6132d")
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !236, line: 43, size: 256, elements: !238)
!238 = !{!239, !240, !241, !249}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "dsize", scope: !237, file: !236, line: 44, baseType: !179, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "npools", scope: !237, file: !236, line: 45, baseType: !179, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "pools", scope: !237, file: !236, line: 46, baseType: !242, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "pool_t", file: !236, line: 41, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !236, line: 38, size: 128, elements: !245)
!245 = !{!246, !248}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !244, file: !236, line: 39, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !244, file: !236, line: 40, baseType: !179, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !237, file: !236, line: 47, baseType: !247, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tag_pool", scope: !171, file: !170, line: 188, baseType: !234, size: 64, offset: 384)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "nref", scope: !171, file: !170, line: 191, baseType: !69, size: 32, offset: 448)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !171, file: !170, line: 192, baseType: !253, size: 64, offset: 512)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "SAM_SQ", file: !170, line: 147, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !170, line: 142, size: 256, elements: !256)
!256 = !{!257, !258, !261, !262}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !255, file: !170, line: 143, baseType: !107, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !255, file: !170, line: 144, baseType: !259, size: 32, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !163, line: 26, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !111, line: 42, baseType: !85)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "ty", scope: !255, file: !170, line: 145, baseType: !201, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !255, file: !170, line: 146, baseType: !209, size: 64, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "ref_hash", scope: !171, file: !170, line: 193, baseType: !264, size: 64, offset: 576)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_m_s2i_t", file: !170, line: 169, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !170, line: 169, size: 320, elements: !267)
!267 = !{!268, !269, !270, !271, !272, !273, !277}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !266, file: !170, line: 169, baseType: !190, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !266, file: !170, line: 169, baseType: !190, size: 32, offset: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "n_occupied", scope: !266, file: !170, line: 169, baseType: !190, size: 32, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "upper_bound", scope: !266, file: !170, line: 169, baseType: !190, size: 32, offset: 96)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !266, file: !170, line: 169, baseType: !197, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !266, file: !170, line: 169, baseType: !274, size: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_cstr_t", file: !191, line: 601, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !266, file: !170, line: 169, baseType: !278, size: 64, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "nrg", scope: !171, file: !170, line: 196, baseType: !69, size: 32, offset: 640)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "rg", scope: !171, file: !170, line: 197, baseType: !281, size: 64, offset: 704)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "SAM_RG", file: !170, line: 156, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !170, line: 150, size: 256, elements: !284)
!284 = !{!285, !286, !287, !288, !289}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !283, file: !170, line: 151, baseType: !107, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ty", scope: !283, file: !170, line: 152, baseType: !201, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !283, file: !170, line: 153, baseType: !209, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "name_len", scope: !283, file: !170, line: 154, baseType: !69, size: 32, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !283, file: !170, line: 155, baseType: !69, size: 32, offset: 224)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "rg_hash", scope: !171, file: !170, line: 198, baseType: !264, size: 64, offset: 768)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "npg", scope: !171, file: !170, line: 201, baseType: !69, size: 32, offset: 832)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "npg_end", scope: !171, file: !170, line: 202, baseType: !69, size: 32, offset: 864)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "npg_end_alloc", scope: !171, file: !170, line: 203, baseType: !69, size: 32, offset: 896)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "pg", scope: !171, file: !170, line: 204, baseType: !295, size: 64, offset: 960)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "SAM_PG", file: !170, line: 166, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !170, line: 159, size: 320, elements: !298)
!298 = !{!299, !300, !301, !302, !303, !304}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !297, file: !170, line: 160, baseType: !107, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ty", scope: !297, file: !170, line: 161, baseType: !201, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !297, file: !170, line: 162, baseType: !209, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "name_len", scope: !297, file: !170, line: 163, baseType: !69, size: 32, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !297, file: !170, line: 164, baseType: !69, size: 32, offset: 224)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "prev_id", scope: !297, file: !170, line: 165, baseType: !69, size: 32, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "pg_hash", scope: !171, file: !170, line: 205, baseType: !264, size: 64, offset: 1024)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "pg_end", scope: !171, file: !170, line: 206, baseType: !278, size: 64, offset: 1088)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "ID_buf", scope: !171, file: !170, line: 209, baseType: !308, size: 8192, offset: 1152)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 1024)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "ID_cnt", scope: !171, file: !170, line: 210, baseType: !69, size: 32, offset: 9344)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !171, file: !170, line: 211, baseType: !69, size: 32, offset: 9376)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !129, file: !68, line: 629, baseType: !107, size: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "record_counter", scope: !129, file: !68, line: 630, baseType: !69, size: 32, offset: 320)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "slice_num", scope: !129, file: !68, line: 631, baseType: !69, size: 32, offset: 352)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !129, file: !68, line: 632, baseType: !69, size: 32, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "ctr", scope: !129, file: !68, line: 639, baseType: !318, size: 64, offset: 448)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "cram_container", file: !68, line: 368, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 295, size: 3456, elements: !321)
!321 = !{!322, !325, !326, !327, !328, !329, !330, !331, !332, !333, !335, !336, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !746, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !806}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !320, file: !68, line: 296, baseType: !323, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !109, line: 26, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !111, line: 41, baseType: !69)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "ref_seq_id", scope: !320, file: !68, line: 297, baseType: !323, size: 32, offset: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ref_seq_start", scope: !320, file: !68, line: 298, baseType: !323, size: 32, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "ref_seq_span", scope: !320, file: !68, line: 299, baseType: !323, size: 32, offset: 96)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "record_counter", scope: !320, file: !68, line: 300, baseType: !323, size: 32, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "num_bases", scope: !320, file: !68, line: 301, baseType: !108, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "num_records", scope: !320, file: !68, line: 302, baseType: !323, size: 32, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "num_blocks", scope: !320, file: !68, line: 303, baseType: !323, size: 32, offset: 288)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "num_landmarks", scope: !320, file: !68, line: 304, baseType: !323, size: 32, offset: 320)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "landmark", scope: !320, file: !68, line: 305, baseType: !334, size: 64, offset: 384)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !320, file: !68, line: 308, baseType: !179, size: 64, offset: 448)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "comp_hdr", scope: !320, file: !68, line: 311, baseType: !337, size: 64, offset: 512)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "cram_block_compression_hdr", file: !68, line: 258, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 195, size: 7296, elements: !340)
!340 = !{!341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !357, !374, !375, !377, !378, !379, !397, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "ref_seq_id", scope: !339, file: !68, line: 196, baseType: !323, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "ref_seq_start", scope: !339, file: !68, line: 197, baseType: !323, size: 32, offset: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "ref_seq_span", scope: !339, file: !68, line: 198, baseType: !323, size: 32, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "num_records", scope: !339, file: !68, line: 199, baseType: !323, size: 32, offset: 96)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "num_landmarks", scope: !339, file: !68, line: 200, baseType: !323, size: 32, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "landmark", scope: !339, file: !68, line: 201, baseType: !334, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "mapped_qs_included", scope: !339, file: !68, line: 204, baseType: !69, size: 32, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "unmapped_qs_included", scope: !339, file: !68, line: 205, baseType: !69, size: 32, offset: 288)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "unmapped_placed", scope: !339, file: !68, line: 206, baseType: !69, size: 32, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "qs_included", scope: !339, file: !68, line: 207, baseType: !69, size: 32, offset: 352)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "read_names_included", scope: !339, file: !68, line: 208, baseType: !69, size: 32, offset: 384)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "AP_delta", scope: !339, file: !68, line: 209, baseType: !69, size: 32, offset: 416)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "substitution_matrix", scope: !339, file: !68, line: 211, baseType: !354, size: 160, offset: 448)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !355)
!355 = !{!356, !160}
!356 = !DISubrange(count: 5)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "TD_blk", scope: !339, file: !68, line: 214, baseType: !358, size: 64, offset: 640)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "cram_block", file: !68, line: 186, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 173, size: 512, elements: !361)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !371, !372, !373}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !360, file: !68, line: 174, baseType: !67, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "orig_method", scope: !360, file: !68, line: 174, baseType: !67, size: 32, offset: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !360, file: !68, line: 175, baseType: !75, size: 32, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "content_id", scope: !360, file: !68, line: 176, baseType: !323, size: 32, offset: 96)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "comp_size", scope: !360, file: !68, line: 177, baseType: !323, size: 32, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "uncomp_size", scope: !360, file: !68, line: 178, baseType: !323, size: 32, offset: 160)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !360, file: !68, line: 179, baseType: !323, size: 32, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !360, file: !68, line: 180, baseType: !370, size: 64, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !360, file: !68, line: 183, baseType: !179, size: 64, offset: 320)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !360, file: !68, line: 184, baseType: !179, size: 64, offset: 384)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "bit", scope: !360, file: !68, line: 185, baseType: !69, size: 32, offset: 448)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "nTL", scope: !339, file: !68, line: 215, baseType: !69, size: 32, offset: 704)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "TL", scope: !339, file: !68, line: 216, baseType: !376, size: 64, offset: 768)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "TD_hash", scope: !339, file: !68, line: 217, baseType: !264, size: 64, offset: 832)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "TD_keys", scope: !339, file: !68, line: 218, baseType: !219, size: 64, offset: 896)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "preservation_map", scope: !339, file: !68, line: 220, baseType: !380, size: 64, offset: 960)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_map_t", file: !68, line: 82, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 82, size: 320, elements: !383)
!383 = !{!384, !385, !386, !387, !388, !389, !390}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !382, file: !68, line: 82, baseType: !190, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !382, file: !68, line: 82, baseType: !190, size: 32, offset: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "n_occupied", scope: !382, file: !68, line: 82, baseType: !190, size: 32, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "upper_bound", scope: !382, file: !68, line: 82, baseType: !190, size: 32, offset: 96)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !382, file: !68, line: 82, baseType: !197, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !382, file: !68, line: 82, baseType: !274, size: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !382, file: !68, line: 82, baseType: !391, size: 64, offset: 256)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmap_t", file: !68, line: 77, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !68, line: 74, size: 64, elements: !394)
!394 = !{!395, !396}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !393, file: !68, line: 75, baseType: !69, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !393, file: !68, line: 76, baseType: !107, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "rec_encoding_map", scope: !339, file: !68, line: 221, baseType: !398, size: 2048, offset: 1024)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 2048, elements: !20)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cram_map", file: !68, line: 260, size: 256, elements: !401)
!401 = !{!402, !403, !404, !405, !406, !657}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !400, file: !68, line: 261, baseType: !69, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !400, file: !68, line: 262, baseType: !84, size: 32, offset: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !400, file: !68, line: 263, baseType: !69, size: 32, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !400, file: !68, line: 264, baseType: !69, size: 32, offset: 96)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "codec", scope: !400, file: !68, line: 265, baseType: !407, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cram_codec", file: !409, line: 109, size: 4544, elements: !410)
!409 = !DIFile(filename: "./cram/cram_codecs.h", directory: "/local-ssd/star-s7gfyo2prvaki7w6cr7mtqgyaudishwq-build/aidengro/spack-stage-star-2.7.10b-s7gfyo2prvaki7w6cr7mtqgyaudishwq/spack-src/source/htslib", checksumkind: CSK_MD5, checksum: "109a66833002163bbe6edd1820a5a240")
!410 = !{!411, !412, !416, !576, !580, !584}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "codec", scope: !408, file: !409, line: 110, baseType: !84, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !408, file: !409, line: 111, baseType: !413, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !407}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !408, file: !409, line: 112, baseType: !417, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!69, !420, !407, !358, !107, !278}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "cram_slice", file: !68, line: 543, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cram_slice", file: !68, line: 490, size: 1536, elements: !423)
!423 = !{!424, !443, !444, !446, !447, !448, !449, !452, !485, !487, !488, !489, !490, !491, !492, !493, !494, !495, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !422, file: !68, line: 491, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "cram_block_slice_hdr", file: !68, line: 282, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 270, size: 512, elements: !428)
!428 = !{!429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !427, file: !68, line: 271, baseType: !75, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "ref_seq_id", scope: !427, file: !68, line: 272, baseType: !323, size: 32, offset: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "ref_seq_start", scope: !427, file: !68, line: 273, baseType: !323, size: 32, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "ref_seq_span", scope: !427, file: !68, line: 274, baseType: !323, size: 32, offset: 96)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "num_records", scope: !427, file: !68, line: 275, baseType: !323, size: 32, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "record_counter", scope: !427, file: !68, line: 276, baseType: !323, size: 32, offset: 160)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "num_blocks", scope: !427, file: !68, line: 277, baseType: !323, size: 32, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "num_content_ids", scope: !427, file: !68, line: 278, baseType: !323, size: 32, offset: 224)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "block_content_ids", scope: !427, file: !68, line: 279, baseType: !334, size: 64, offset: 256)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "ref_base_id", scope: !427, file: !68, line: 280, baseType: !323, size: 32, offset: 320)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "md5", scope: !427, file: !68, line: 281, baseType: !440, size: 128, offset: 352)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 128, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 16)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_block", scope: !422, file: !68, line: 492, baseType: !358, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !422, file: !68, line: 493, baseType: !445, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "block_by_id", scope: !422, file: !68, line: 494, baseType: !445, size: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "last_apos", scope: !422, file: !68, line: 497, baseType: !69, size: 32, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "max_apos", scope: !422, file: !68, line: 497, baseType: !69, size: 32, offset: 288)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !422, file: !68, line: 500, baseType: !450, size: 64, offset: 320)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !163, line: 27, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !111, line: 45, baseType: !181)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "crecs", scope: !422, file: !68, line: 503, baseType: !453, size: 64, offset: 384)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "cram_record", file: !68, line: 410, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 373, size: 896, elements: !456)
!456 = !{!457, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !455, file: !68, line: 374, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "ref_id", scope: !455, file: !68, line: 376, baseType: !323, size: 32, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !68, line: 377, baseType: !323, size: 32, offset: 96)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "cram_flags", scope: !455, file: !68, line: 378, baseType: !323, size: 32, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !455, file: !68, line: 379, baseType: !323, size: 32, offset: 160)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "apos", scope: !455, file: !68, line: 380, baseType: !323, size: 32, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "rg", scope: !455, file: !68, line: 381, baseType: !323, size: 32, offset: 224)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !455, file: !68, line: 382, baseType: !323, size: 32, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "name_len", scope: !455, file: !68, line: 383, baseType: !323, size: 32, offset: 288)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "mate_line", scope: !455, file: !68, line: 384, baseType: !323, size: 32, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "mate_ref_id", scope: !455, file: !68, line: 385, baseType: !323, size: 32, offset: 352)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "mate_pos", scope: !455, file: !68, line: 386, baseType: !323, size: 32, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "tlen", scope: !455, file: !68, line: 387, baseType: !323, size: 32, offset: 416)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "ntags", scope: !455, file: !68, line: 390, baseType: !323, size: 32, offset: 448)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !455, file: !68, line: 391, baseType: !323, size: 32, offset: 480)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !455, file: !68, line: 392, baseType: !323, size: 32, offset: 512)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "tn", scope: !455, file: !68, line: 396, baseType: !323, size: 32, offset: 544)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "TL", scope: !455, file: !68, line: 398, baseType: !69, size: 32, offset: 576)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !455, file: !68, line: 400, baseType: !323, size: 32, offset: 608)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "qual", scope: !455, file: !68, line: 401, baseType: !323, size: 32, offset: 640)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "cigar", scope: !455, file: !68, line: 402, baseType: !323, size: 32, offset: 672)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ncigar", scope: !455, file: !68, line: 403, baseType: !323, size: 32, offset: 704)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "aend", scope: !455, file: !68, line: 404, baseType: !323, size: 32, offset: 736)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "mqual", scope: !455, file: !68, line: 405, baseType: !323, size: 32, offset: 768)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "feature", scope: !455, file: !68, line: 407, baseType: !323, size: 32, offset: 800)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "nfeature", scope: !455, file: !68, line: 408, baseType: !323, size: 32, offset: 832)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "mate_flags", scope: !455, file: !68, line: 409, baseType: !323, size: 32, offset: 864)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "cigar", scope: !422, file: !68, line: 508, baseType: !486, size: 64, offset: 448)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "cigar_alloc", scope: !422, file: !68, line: 509, baseType: !259, size: 32, offset: 512)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ncigar", scope: !422, file: !68, line: 510, baseType: !259, size: 32, offset: 544)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "name_blk", scope: !422, file: !68, line: 511, baseType: !358, size: 64, offset: 576)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "seqs_blk", scope: !422, file: !68, line: 512, baseType: !358, size: 64, offset: 640)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "qual_blk", scope: !422, file: !68, line: 513, baseType: !358, size: 64, offset: 704)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "aux_blk", scope: !422, file: !68, line: 514, baseType: !358, size: 64, offset: 768)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "base_blk", scope: !422, file: !68, line: 515, baseType: !358, size: 64, offset: 832)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "soft_blk", scope: !422, file: !68, line: 516, baseType: !358, size: 64, offset: 896)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !422, file: !68, line: 518, baseType: !496, size: 64, offset: 960)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "cram_feature", file: !68, line: 483, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 427, size: 128, elements: !499)
!499 = !{!500}
!500 = !DIDerivedType(tag: DW_TAG_member, scope: !498, file: !68, line: 428, baseType: !501, size: 128)
!501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !498, file: !68, line: 428, size: 128, elements: !502)
!502 = !{!503, !509, !516, !522, !529, !536, !542, !548, !554, !560}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "X", scope: !501, file: !68, line: 433, baseType: !504, size: 96)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !501, file: !68, line: 429, size: 96, elements: !505)
!505 = !{!506, !507, !508}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !504, file: !68, line: 430, baseType: !69, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !504, file: !68, line: 431, baseType: !69, size: 32, offset: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !504, file: !68, line: 432, baseType: !69, size: 32, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !501, file: !68, line: 439, baseType: !510, size: 128)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !501, file: !68, line: 434, size: 128, elements: !511)
!511 = !{!512, !513, !514, !515}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !510, file: !68, line: 435, baseType: !69, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !510, file: !68, line: 436, baseType: !69, size: 32, offset: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !510, file: !68, line: 437, baseType: !69, size: 32, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "qual", scope: !510, file: !68, line: 438, baseType: !69, size: 32, offset: 96)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "Q", scope: !501, file: !68, line: 444, baseType: !517, size: 96)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !501, file: !68, line: 440, size: 96, elements: !518)
!518 = !{!519, !520, !521}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !517, file: !68, line: 441, baseType: !69, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !517, file: !68, line: 442, baseType: !69, size: 32, offset: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "qual", scope: !517, file: !68, line: 443, baseType: !69, size: 32, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "S", scope: !501, file: !68, line: 450, baseType: !523, size: 128)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !501, file: !68, line: 445, size: 128, elements: !524)
!524 = !{!525, !526, !527, !528}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !523, file: !68, line: 446, baseType: !69, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !523, file: !68, line: 447, baseType: !69, size: 32, offset: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !523, file: !68, line: 448, baseType: !69, size: 32, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "seq_idx", scope: !523, file: !68, line: 449, baseType: !69, size: 32, offset: 96)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "I", scope: !501, file: !68, line: 456, baseType: !530, size: 128)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !501, file: !68, line: 451, size: 128, elements: !531)
!531 = !{!532, !533, !534, !535}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !530, file: !68, line: 452, baseType: !69, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !530, file: !68, line: 453, baseType: !69, size: 32, offset: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !530, file: !68, line: 454, baseType: !69, size: 32, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "seq_idx", scope: !530, file: !68, line: 455, baseType: !69, size: 32, offset: 96)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !501, file: !68, line: 461, baseType: !537, size: 96)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !501, file: !68, line: 457, size: 96, elements: !538)
!538 = !{!539, !540, !541}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !537, file: !68, line: 458, baseType: !69, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !537, file: !68, line: 459, baseType: !69, size: 32, offset: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !537, file: !68, line: 460, baseType: !69, size: 32, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !501, file: !68, line: 466, baseType: !543, size: 96)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !501, file: !68, line: 462, size: 96, elements: !544)
!544 = !{!545, !546, !547}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !543, file: !68, line: 463, baseType: !69, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !543, file: !68, line: 464, baseType: !69, size: 32, offset: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !543, file: !68, line: 465, baseType: !69, size: 32, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !501, file: !68, line: 471, baseType: !549, size: 96)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !501, file: !68, line: 467, size: 96, elements: !550)
!550 = !{!551, !552, !553}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !549, file: !68, line: 468, baseType: !69, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !549, file: !68, line: 469, baseType: !69, size: 32, offset: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !549, file: !68, line: 470, baseType: !69, size: 32, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "P", scope: !501, file: !68, line: 476, baseType: !555, size: 96)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !501, file: !68, line: 472, size: 96, elements: !556)
!556 = !{!557, !558, !559}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !555, file: !68, line: 473, baseType: !69, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !555, file: !68, line: 474, baseType: !69, size: 32, offset: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !555, file: !68, line: 475, baseType: !69, size: 32, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "H", scope: !501, file: !68, line: 481, baseType: !561, size: 96)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !501, file: !68, line: 477, size: 96, elements: !562)
!562 = !{!563, !564, !565}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !561, file: !68, line: 478, baseType: !69, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !561, file: !68, line: 479, baseType: !69, size: 32, offset: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !561, file: !68, line: 480, baseType: !69, size: 32, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "nfeatures", scope: !422, file: !68, line: 519, baseType: !69, size: 32, offset: 1024)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "afeatures", scope: !422, file: !68, line: 520, baseType: !69, size: 32, offset: 1056)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "tn_blk", scope: !422, file: !68, line: 527, baseType: !358, size: 64, offset: 1088)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "tn_id", scope: !422, file: !68, line: 528, baseType: !69, size: 32, offset: 1152)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "pair_keys", scope: !422, file: !68, line: 531, baseType: !219, size: 64, offset: 1216)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "pair", scope: !422, file: !68, line: 532, baseType: !264, size: 64, offset: 1280)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !422, file: !68, line: 534, baseType: !107, size: 64, offset: 1344)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "ref_start", scope: !422, file: !68, line: 535, baseType: !69, size: 32, offset: 1408)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ref_end", scope: !422, file: !68, line: 536, baseType: !69, size: 32, offset: 1440)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "ref_id", scope: !422, file: !68, line: 542, baseType: !69, size: 32, offset: 1472)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "encode", scope: !408, file: !409, line: 114, baseType: !577, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!69, !420, !407, !358, !107, !69}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !408, file: !409, line: 116, baseType: !581, size: 64, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!69, !407, !358, !107, !69}
!584 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !409, line: 118, baseType: !585, size: 4224, offset: 320)
!585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !409, line: 118, size: 4224, elements: !586)
!586 = !{!587, !601, !607, !613, !618, !624, !630, !636, !646, !647, !648, !656}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "huffman", scope: !585, file: !409, line: 119, baseType: !588, size: 128)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "cram_huffman_decoder", file: !409, line: 61, baseType: !589)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 58, size: 128, elements: !590)
!590 = !{!591, !592}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ncodes", scope: !589, file: !409, line: 59, baseType: !69, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "codes", scope: !589, file: !409, line: 60, baseType: !593, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "cram_huffman_code", file: !409, line: 56, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 51, size: 128, elements: !596)
!596 = !{!597, !598, !599, !600}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "symbol", scope: !595, file: !409, line: 52, baseType: !323, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !595, file: !409, line: 53, baseType: !323, size: 32, offset: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !595, file: !409, line: 54, baseType: !323, size: 32, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !595, file: !409, line: 55, baseType: !323, size: 32, offset: 96)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "external", scope: !585, file: !409, line: 120, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "cram_external_decoder", file: !409, line: 87, baseType: !603)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 84, size: 64, elements: !604)
!604 = !{!605, !606}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "content_id", scope: !603, file: !409, line: 85, baseType: !323, size: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !603, file: !409, line: 86, baseType: !97, size: 32, offset: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "beta", scope: !585, file: !409, line: 121, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "cram_beta_decoder", file: !409, line: 73, baseType: !609)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 70, size: 64, elements: !610)
!610 = !{!611, !612}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !609, file: !409, line: 71, baseType: !323, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "nbits", scope: !609, file: !409, line: 72, baseType: !323, size: 32, offset: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !585, file: !409, line: 122, baseType: !614, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "cram_gamma_decoder", file: !409, line: 77, baseType: !615)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 75, size: 32, elements: !616)
!616 = !{!617}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !615, file: !409, line: 76, baseType: !323, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "subexp", scope: !585, file: !409, line: 123, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "cram_subexp_decoder", file: !409, line: 82, baseType: !620)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 79, size: 64, elements: !621)
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !620, file: !409, line: 80, baseType: !323, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !620, file: !409, line: 81, baseType: !323, size: 32, offset: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "byte_array_len", scope: !585, file: !409, line: 124, baseType: !625, size: 128)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "cram_byte_array_len_decoder", file: !409, line: 92, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 89, size: 128, elements: !627)
!627 = !{!628, !629}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "len_codec", scope: !626, file: !409, line: 90, baseType: !407, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "value_codec", scope: !626, file: !409, line: 91, baseType: !407, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "byte_array_stop", scope: !585, file: !409, line: 125, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "cram_byte_array_stop_decoder", file: !409, line: 97, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 94, size: 64, elements: !633)
!633 = !{!634, !635}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !632, file: !409, line: 95, baseType: !106, size: 8)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "content_id", scope: !632, file: !409, line: 96, baseType: !323, size: 32, offset: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "e_huffman", scope: !585, file: !409, line: 127, baseType: !637, size: 4224)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "cram_huffman_encoder", file: !409, line: 68, baseType: !638)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 64, size: 4224, elements: !639)
!639 = !{!640, !641, !642}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "codes", scope: !638, file: !409, line: 65, baseType: !593, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "nvals", scope: !638, file: !409, line: 66, baseType: !69, size: 32, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "val2code", scope: !638, file: !409, line: 67, baseType: !643, size: 4128, offset: 96)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 4128, elements: !644)
!644 = !{!645}
!645 = !DISubrange(count: 129)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "e_external", scope: !585, file: !409, line: 128, baseType: !602, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "e_byte_array_stop", scope: !585, file: !409, line: 129, baseType: !631, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "e_byte_array_len", scope: !585, file: !409, line: 130, baseType: !649, size: 256)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "cram_byte_array_len_encoder", file: !409, line: 104, baseType: !650)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 99, size: 256, elements: !651)
!651 = !{!652, !653, !654, !655}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "len_len", scope: !650, file: !409, line: 100, baseType: !259, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "len_dat", scope: !650, file: !409, line: 101, baseType: !370, size: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "val_len", scope: !650, file: !409, line: 102, baseType: !259, size: 32, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "val_dat", scope: !650, file: !409, line: 103, baseType: !370, size: 64, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "e_beta", scope: !585, file: !409, line: 131, baseType: !608, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !400, file: !68, line: 266, baseType: !399, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "tag_encoding_map", scope: !339, file: !68, line: 222, baseType: !398, size: 2048, offset: 3072)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "BF_codec", scope: !339, file: !68, line: 224, baseType: !407, size: 64, offset: 5120)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "CF_codec", scope: !339, file: !68, line: 225, baseType: !407, size: 64, offset: 5184)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "RL_codec", scope: !339, file: !68, line: 226, baseType: !407, size: 64, offset: 5248)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "AP_codec", scope: !339, file: !68, line: 227, baseType: !407, size: 64, offset: 5312)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "RG_codec", scope: !339, file: !68, line: 228, baseType: !407, size: 64, offset: 5376)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "MF_codec", scope: !339, file: !68, line: 229, baseType: !407, size: 64, offset: 5440)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "NS_codec", scope: !339, file: !68, line: 230, baseType: !407, size: 64, offset: 5504)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "NP_codec", scope: !339, file: !68, line: 231, baseType: !407, size: 64, offset: 5568)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "TS_codec", scope: !339, file: !68, line: 232, baseType: !407, size: 64, offset: 5632)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "NF_codec", scope: !339, file: !68, line: 233, baseType: !407, size: 64, offset: 5696)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "TC_codec", scope: !339, file: !68, line: 234, baseType: !407, size: 64, offset: 5760)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "TN_codec", scope: !339, file: !68, line: 235, baseType: !407, size: 64, offset: 5824)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "TL_codec", scope: !339, file: !68, line: 236, baseType: !407, size: 64, offset: 5888)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "FN_codec", scope: !339, file: !68, line: 237, baseType: !407, size: 64, offset: 5952)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "FC_codec", scope: !339, file: !68, line: 238, baseType: !407, size: 64, offset: 6016)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "FP_codec", scope: !339, file: !68, line: 239, baseType: !407, size: 64, offset: 6080)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "BS_codec", scope: !339, file: !68, line: 240, baseType: !407, size: 64, offset: 6144)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "IN_codec", scope: !339, file: !68, line: 241, baseType: !407, size: 64, offset: 6208)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "SC_codec", scope: !339, file: !68, line: 242, baseType: !407, size: 64, offset: 6272)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "DL_codec", scope: !339, file: !68, line: 243, baseType: !407, size: 64, offset: 6336)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "BA_codec", scope: !339, file: !68, line: 244, baseType: !407, size: 64, offset: 6400)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "RS_codec", scope: !339, file: !68, line: 245, baseType: !407, size: 64, offset: 6464)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "PD_codec", scope: !339, file: !68, line: 246, baseType: !407, size: 64, offset: 6528)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "HC_codec", scope: !339, file: !68, line: 247, baseType: !407, size: 64, offset: 6592)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "MQ_codec", scope: !339, file: !68, line: 248, baseType: !407, size: 64, offset: 6656)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "RN_codec", scope: !339, file: !68, line: 249, baseType: !407, size: 64, offset: 6720)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "QS_codec", scope: !339, file: !68, line: 250, baseType: !407, size: 64, offset: 6784)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "Qs_codec", scope: !339, file: !68, line: 251, baseType: !407, size: 64, offset: 6848)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "RI_codec", scope: !339, file: !68, line: 252, baseType: !407, size: 64, offset: 6912)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "TM_codec", scope: !339, file: !68, line: 253, baseType: !407, size: 64, offset: 6976)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "TV_codec", scope: !339, file: !68, line: 254, baseType: !407, size: 64, offset: 7040)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "uncomp", scope: !339, file: !68, line: 256, baseType: !107, size: 64, offset: 7104)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "uncomp_size", scope: !339, file: !68, line: 257, baseType: !179, size: 64, offset: 7168)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "uncomp_alloc", scope: !339, file: !68, line: 257, baseType: !179, size: 64, offset: 7232)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "comp_hdr_block", scope: !320, file: !68, line: 312, baseType: !358, size: 64, offset: 576)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "max_slice", scope: !320, file: !68, line: 315, baseType: !69, size: 32, offset: 640)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "curr_slice", scope: !320, file: !68, line: 315, baseType: !69, size: 32, offset: 672)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "max_rec", scope: !320, file: !68, line: 316, baseType: !69, size: 32, offset: 704)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "curr_rec", scope: !320, file: !68, line: 316, baseType: !69, size: 32, offset: 736)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "max_c_rec", scope: !320, file: !68, line: 317, baseType: !69, size: 32, offset: 768)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "curr_c_rec", scope: !320, file: !68, line: 317, baseType: !69, size: 32, offset: 800)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "slice_rec", scope: !320, file: !68, line: 318, baseType: !69, size: 32, offset: 832)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "curr_ref", scope: !320, file: !68, line: 319, baseType: !69, size: 32, offset: 864)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "last_pos", scope: !320, file: !68, line: 320, baseType: !69, size: 32, offset: 896)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "slices", scope: !320, file: !68, line: 321, baseType: !704, size: 64, offset: 960)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !320, file: !68, line: 321, baseType: !458, size: 64, offset: 1024)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "pos_sorted", scope: !320, file: !68, line: 322, baseType: !69, size: 32, offset: 1088)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "max_apos", scope: !320, file: !68, line: 323, baseType: !69, size: 32, offset: 1120)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "last_slice", scope: !320, file: !68, line: 324, baseType: !69, size: 32, offset: 1152)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "multi_seq", scope: !320, file: !68, line: 325, baseType: !69, size: 32, offset: 1184)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "unsorted", scope: !320, file: !68, line: 326, baseType: !69, size: 32, offset: 1216)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "ref_start", scope: !320, file: !68, line: 329, baseType: !69, size: 32, offset: 1248)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "first_base", scope: !320, file: !68, line: 329, baseType: !69, size: 32, offset: 1280)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "last_base", scope: !320, file: !68, line: 329, baseType: !69, size: 32, offset: 1312)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "ref_id", scope: !320, file: !68, line: 329, baseType: !69, size: 32, offset: 1344)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "ref_end", scope: !320, file: !68, line: 329, baseType: !69, size: 32, offset: 1376)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !320, file: !68, line: 330, baseType: !107, size: 64, offset: 1408)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "bams", scope: !320, file: !68, line: 334, baseType: !718, size: 64, offset: 1472)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "bam_seq_t", file: !721, line: 75, baseType: !722)
!721 = !DIFile(filename: "./cram/cram_samtools.h", directory: "/local-ssd/star-s7gfyo2prvaki7w6cr7mtqgyaudishwq-build/aidengro/spack-stage-star-2.7.10b-s7gfyo2prvaki7w6cr7mtqgyaudishwq/spack-src/source/htslib", checksumkind: CSK_MD5, checksum: "8e2242983ee4148bfb80f0b0f767ae01")
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "bam1_t", file: !723, line: 152, baseType: !724)
!723 = !DIFile(filename: "./htslib/sam.h", directory: "/local-ssd/star-s7gfyo2prvaki7w6cr7mtqgyaudishwq-build/aidengro/spack-stage-star-2.7.10b-s7gfyo2prvaki7w6cr7mtqgyaudishwq/spack-src/source/htslib", checksumkind: CSK_MD5, checksum: "10249196401e59aa212c294be0dde90b")
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !723, line: 145, size: 448, elements: !725)
!725 = !{!726, !741, !742, !743, !745}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !724, file: !723, line: 146, baseType: !727, size: 256)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "bam1_core_t", file: !723, line: 128, baseType: !728)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !723, line: 119, size: 256, elements: !729)
!729 = !{!730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !728, file: !723, line: 120, baseType: !323, size: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !728, file: !723, line: 121, baseType: !323, size: 32, offset: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "bin", scope: !728, file: !723, line: 122, baseType: !259, size: 16, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "qual", scope: !728, file: !723, line: 122, baseType: !259, size: 8, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "l_qname", scope: !728, file: !723, line: 122, baseType: !259, size: 8, offset: 88, flags: DIFlagBitField, extraData: i64 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !728, file: !723, line: 123, baseType: !259, size: 16, offset: 96, flags: DIFlagBitField, extraData: i64 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "n_cigar", scope: !728, file: !723, line: 123, baseType: !259, size: 16, offset: 112, flags: DIFlagBitField, extraData: i64 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "l_qseq", scope: !728, file: !723, line: 124, baseType: !323, size: 32, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "mtid", scope: !728, file: !723, line: 125, baseType: !323, size: 32, offset: 160)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "mpos", scope: !728, file: !723, line: 126, baseType: !323, size: 32, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "isize", scope: !728, file: !723, line: 127, baseType: !323, size: 32, offset: 224)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "l_data", scope: !724, file: !723, line: 147, baseType: !69, size: 32, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "m_data", scope: !724, file: !723, line: 147, baseType: !69, size: 32, offset: 288)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !724, file: !723, line: 148, baseType: !744, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !724, file: !723, line: 150, baseType: !450, size: 64, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "TS_stats", scope: !320, file: !68, line: 337, baseType: !747, size: 64, offset: 1536)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "cram_stats", file: !68, line: 110, baseType: !749)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 105, size: 32896, elements: !750)
!750 = !{!751, !753, !765, !766}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "freqs", scope: !749, file: !68, line: 106, baseType: !752, size: 32768)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 32768, elements: !309)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !749, file: !68, line: 107, baseType: !754, size: 64, offset: 32768)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_m_i2i_t", file: !68, line: 63, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 63, size: 320, elements: !757)
!757 = !{!758, !759, !760, !761, !762, !763, !764}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !756, file: !68, line: 63, baseType: !190, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !756, file: !68, line: 63, baseType: !190, size: 32, offset: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "n_occupied", scope: !756, file: !68, line: 63, baseType: !190, size: 32, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "upper_bound", scope: !756, file: !68, line: 63, baseType: !190, size: 32, offset: 96)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !756, file: !68, line: 63, baseType: !197, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !756, file: !68, line: 63, baseType: !197, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !756, file: !68, line: 63, baseType: !278, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "nsamp", scope: !749, file: !68, line: 108, baseType: !69, size: 32, offset: 32832)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "nvals", scope: !749, file: !68, line: 109, baseType: !69, size: 32, offset: 32864)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "RG_stats", scope: !320, file: !68, line: 338, baseType: !747, size: 64, offset: 1600)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "FP_stats", scope: !320, file: !68, line: 339, baseType: !747, size: 64, offset: 1664)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "NS_stats", scope: !320, file: !68, line: 340, baseType: !747, size: 64, offset: 1728)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "RN_stats", scope: !320, file: !68, line: 341, baseType: !747, size: 64, offset: 1792)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "CF_stats", scope: !320, file: !68, line: 342, baseType: !747, size: 64, offset: 1856)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "TN_stats", scope: !320, file: !68, line: 343, baseType: !747, size: 64, offset: 1920)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "BA_stats", scope: !320, file: !68, line: 344, baseType: !747, size: 64, offset: 1984)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "TV_stats", scope: !320, file: !68, line: 345, baseType: !747, size: 64, offset: 2048)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "BS_stats", scope: !320, file: !68, line: 346, baseType: !747, size: 64, offset: 2112)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "FC_stats", scope: !320, file: !68, line: 347, baseType: !747, size: 64, offset: 2176)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "BF_stats", scope: !320, file: !68, line: 348, baseType: !747, size: 64, offset: 2240)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "AP_stats", scope: !320, file: !68, line: 349, baseType: !747, size: 64, offset: 2304)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "NF_stats", scope: !320, file: !68, line: 350, baseType: !747, size: 64, offset: 2368)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "MF_stats", scope: !320, file: !68, line: 351, baseType: !747, size: 64, offset: 2432)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "FN_stats", scope: !320, file: !68, line: 352, baseType: !747, size: 64, offset: 2496)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "RL_stats", scope: !320, file: !68, line: 353, baseType: !747, size: 64, offset: 2560)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "DL_stats", scope: !320, file: !68, line: 354, baseType: !747, size: 64, offset: 2624)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "TC_stats", scope: !320, file: !68, line: 355, baseType: !747, size: 64, offset: 2688)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "TL_stats", scope: !320, file: !68, line: 356, baseType: !747, size: 64, offset: 2752)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "MQ_stats", scope: !320, file: !68, line: 357, baseType: !747, size: 64, offset: 2816)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "TM_stats", scope: !320, file: !68, line: 358, baseType: !747, size: 64, offset: 2880)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "QS_stats", scope: !320, file: !68, line: 359, baseType: !747, size: 64, offset: 2944)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "NP_stats", scope: !320, file: !68, line: 360, baseType: !747, size: 64, offset: 3008)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "RI_stats", scope: !320, file: !68, line: 361, baseType: !747, size: 64, offset: 3072)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "RS_stats", scope: !320, file: !68, line: 362, baseType: !747, size: 64, offset: 3136)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "PD_stats", scope: !320, file: !68, line: 363, baseType: !747, size: 64, offset: 3200)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "HC_stats", scope: !320, file: !68, line: 364, baseType: !747, size: 64, offset: 3264)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "tags_used", scope: !320, file: !68, line: 366, baseType: !795, size: 64, offset: 3328)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_s_i2i_t", file: !68, line: 66, baseType: !797)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 66, size: 320, elements: !798)
!798 = !{!799, !800, !801, !802, !803, !804, !805}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !797, file: !68, line: 66, baseType: !190, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !797, file: !68, line: 66, baseType: !190, size: 32, offset: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "n_occupied", scope: !797, file: !68, line: 66, baseType: !190, size: 32, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "upper_bound", scope: !797, file: !68, line: 66, baseType: !190, size: 32, offset: 96)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !797, file: !68, line: 66, baseType: !197, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !797, file: !68, line: 66, baseType: !197, size: 64, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !797, file: !68, line: 66, baseType: !107, size: 64, offset: 256)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "refs_used", scope: !320, file: !68, line: 367, baseType: !278, size: 64, offset: 3392)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "first_base", scope: !129, file: !68, line: 642, baseType: !69, size: 32, offset: 512)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "last_base", scope: !129, file: !68, line: 642, baseType: !69, size: 32, offset: 544)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !129, file: !68, line: 645, baseType: !810, size: 64, offset: 576)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "refs_t", file: !68, line: 578, baseType: !812)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 563, size: 896, elements: !813)
!813 = !{!814, !815, !840, !841, !842, !843, !894, !895, !925, !926}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !812, file: !68, line: 564, baseType: !219, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "h_meta", scope: !812, file: !68, line: 566, baseType: !816, size: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_refs_t", file: !68, line: 560, baseType: !818)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 560, size: 320, elements: !819)
!819 = !{!820, !821, !822, !823, !824, !825, !826}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !818, file: !68, line: 560, baseType: !190, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !818, file: !68, line: 560, baseType: !190, size: 32, offset: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "n_occupied", scope: !818, file: !68, line: 560, baseType: !190, size: 32, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "upper_bound", scope: !818, file: !68, line: 560, baseType: !190, size: 32, offset: 96)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !818, file: !68, line: 560, baseType: !197, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !818, file: !68, line: 560, baseType: !274, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !818, file: !68, line: 560, baseType: !827, size: 64, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_entry", file: !68, line: 558, baseType: !830)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ref_entry", file: !68, line: 549, size: 448, elements: !831)
!831 = !{!832, !833, !834, !835, !836, !837, !838, !839}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !830, file: !68, line: 550, baseType: !107, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !830, file: !68, line: 551, baseType: !107, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !830, file: !68, line: 552, baseType: !108, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !830, file: !68, line: 553, baseType: !108, size: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "bases_per_line", scope: !830, file: !68, line: 554, baseType: !69, size: 32, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !830, file: !68, line: 555, baseType: !69, size: 32, offset: 288)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !830, file: !68, line: 556, baseType: !108, size: 64, offset: 320)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !830, file: !68, line: 557, baseType: !107, size: 64, offset: 384)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "ref_id", scope: !812, file: !68, line: 567, baseType: !827, size: 64, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "nref", scope: !812, file: !68, line: 568, baseType: !69, size: 32, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !812, file: !68, line: 570, baseType: !107, size: 64, offset: 256)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !812, file: !68, line: 571, baseType: !844, size: 64, offset: 320)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !846, line: 7, baseType: !847)
!846 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !848, line: 49, size: 1728, elements: !849)
!848 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!849 = !{!850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !865, !867, !868, !869, !870, !872, !874, !878, !881, !883, !886, !889, !890, !891, !892, !893}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !847, file: !848, line: 51, baseType: !69, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !847, file: !848, line: 54, baseType: !107, size: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !847, file: !848, line: 55, baseType: !107, size: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !847, file: !848, line: 56, baseType: !107, size: 64, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !847, file: !848, line: 57, baseType: !107, size: 64, offset: 256)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !847, file: !848, line: 58, baseType: !107, size: 64, offset: 320)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !847, file: !848, line: 59, baseType: !107, size: 64, offset: 384)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !847, file: !848, line: 60, baseType: !107, size: 64, offset: 448)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !847, file: !848, line: 61, baseType: !107, size: 64, offset: 512)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !847, file: !848, line: 64, baseType: !107, size: 64, offset: 576)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !847, file: !848, line: 65, baseType: !107, size: 64, offset: 640)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !847, file: !848, line: 66, baseType: !107, size: 64, offset: 704)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !847, file: !848, line: 68, baseType: !863, size: 64, offset: 768)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !848, line: 36, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !847, file: !848, line: 70, baseType: !866, size: 64, offset: 832)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !847, file: !848, line: 72, baseType: !69, size: 32, offset: 896)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !847, file: !848, line: 73, baseType: !69, size: 32, offset: 928)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !847, file: !848, line: 74, baseType: !147, size: 64, offset: 960)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !847, file: !848, line: 77, baseType: !871, size: 16, offset: 1024)
!871 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !847, file: !848, line: 78, baseType: !873, size: 8, offset: 1040)
!873 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !847, file: !848, line: 79, baseType: !875, size: 8, offset: 1048)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !876)
!876 = !{!877}
!877 = !DISubrange(count: 1)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !847, file: !848, line: 81, baseType: !879, size: 64, offset: 1088)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !848, line: 43, baseType: null)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !847, file: !848, line: 89, baseType: !882, size: 64, offset: 1152)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !111, line: 153, baseType: !112)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !847, file: !848, line: 91, baseType: !884, size: 64, offset: 1216)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !848, line: 37, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !847, file: !848, line: 92, baseType: !887, size: 64, offset: 1280)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !848, line: 38, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !847, file: !848, line: 93, baseType: !866, size: 64, offset: 1344)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !847, file: !848, line: 94, baseType: !247, size: 64, offset: 1408)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !847, file: !848, line: 95, baseType: !179, size: 64, offset: 1472)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !847, file: !848, line: 96, baseType: !69, size: 32, offset: 1536)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !847, file: !848, line: 98, baseType: !34, size: 160, offset: 1568)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !812, file: !68, line: 573, baseType: !69, size: 32, offset: 384)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !812, file: !68, line: 575, baseType: !896, size: 320, offset: 448)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !897, line: 72, baseType: !898)
!897 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!898 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !897, line: 67, size: 320, elements: !899)
!899 = !{!900, !920, !924}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !898, file: !897, line: 69, baseType: !901, size: 320)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !902, line: 22, size: 320, elements: !903)
!902 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!903 = !{!904, !905, !906, !907, !908, !909, !911, !912}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !901, file: !902, line: 24, baseType: !69, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !901, file: !902, line: 25, baseType: !85, size: 32, offset: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !901, file: !902, line: 26, baseType: !69, size: 32, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !901, file: !902, line: 28, baseType: !85, size: 32, offset: 96)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !901, file: !902, line: 32, baseType: !69, size: 32, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !901, file: !902, line: 34, baseType: !910, size: 16, offset: 160)
!910 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !901, file: !902, line: 35, baseType: !910, size: 16, offset: 176)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !901, file: !902, line: 36, baseType: !913, size: 128, offset: 192)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !914, line: 55, baseType: !915)
!914 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !914, line: 51, size: 128, elements: !916)
!916 = !{!917, !919}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !915, file: !914, line: 53, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !915, file: !914, line: 54, baseType: !918, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !898, file: !897, line: 70, baseType: !921, size: 320)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !922)
!922 = !{!923}
!923 = !DISubrange(count: 40)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !898, file: !897, line: 71, baseType: !112, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !812, file: !68, line: 576, baseType: !828, size: 64, offset: 768)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "last_id", scope: !812, file: !68, line: 577, baseType: !69, size: 32, offset: 832)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !129, file: !68, line: 646, baseType: !107, size: 64, offset: 640)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "ref_free", scope: !129, file: !68, line: 646, baseType: !107, size: 64, offset: 704)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "ref_id", scope: !129, file: !68, line: 647, baseType: !69, size: 32, offset: 768)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "ref_start", scope: !129, file: !68, line: 648, baseType: !69, size: 32, offset: 800)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "ref_end", scope: !129, file: !68, line: 649, baseType: !69, size: 32, offset: 832)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "ref_fn", scope: !129, file: !68, line: 650, baseType: !107, size: 64, offset: 896)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !129, file: !68, line: 653, baseType: !69, size: 32, offset: 960)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !129, file: !68, line: 654, baseType: !935, size: 448, offset: 1024)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !936, size: 448, elements: !944)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "cram_metrics", file: !68, line: 170, baseType: !938)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 165, size: 128, elements: !939)
!939 = !{!940, !941, !942, !943}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "m1", scope: !938, file: !68, line: 166, baseType: !69, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "m2", scope: !938, file: !68, line: 167, baseType: !69, size: 32, offset: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "trial", scope: !938, file: !68, line: 168, baseType: !69, size: 32, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "next_trial", scope: !938, file: !68, line: 169, baseType: !69, size: 32, offset: 96)
!944 = !{!945}
!945 = !DISubrange(count: 7)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "decode_md", scope: !129, file: !68, line: 657, baseType: !69, size: 32, offset: 1472)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !129, file: !68, line: 658, baseType: !69, size: 32, offset: 1504)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "seqs_per_slice", scope: !129, file: !68, line: 659, baseType: !69, size: 32, offset: 1536)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "slices_per_container", scope: !129, file: !68, line: 660, baseType: !69, size: 32, offset: 1568)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "embed_ref", scope: !129, file: !68, line: 661, baseType: !69, size: 32, offset: 1600)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "no_ref", scope: !129, file: !68, line: 662, baseType: !69, size: 32, offset: 1632)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_md5", scope: !129, file: !68, line: 663, baseType: !69, size: 32, offset: 1664)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "use_bz2", scope: !129, file: !68, line: 664, baseType: !69, size: 32, offset: 1696)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "shared_ref", scope: !129, file: !68, line: 665, baseType: !69, size: 32, offset: 1728)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !129, file: !68, line: 666, baseType: !956, size: 96, offset: 1760)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "cram_range", file: !68, line: 611, baseType: !957)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 607, size: 96, elements: !958)
!958 = !{!959, !960, !961}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "refid", scope: !957, file: !68, line: 608, baseType: !69, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !957, file: !68, line: 609, baseType: !69, size: 32, offset: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !957, file: !68, line: 610, baseType: !69, size: 32, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "bam_flag_swap", scope: !129, file: !68, line: 669, baseType: !963, size: 131072, offset: 1856)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 131072, elements: !964)
!964 = !{!965}
!965 = !DISubrange(count: 4096)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "cram_flag_swap", scope: !129, file: !68, line: 670, baseType: !963, size: 131072, offset: 132928)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "L1", scope: !129, file: !68, line: 671, baseType: !968, size: 2048, offset: 264000)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 2048, elements: !969)
!969 = !{!970}
!970 = !DISubrange(count: 256)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "L2", scope: !129, file: !68, line: 672, baseType: !968, size: 2048, offset: 266048)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "cram_sub_matrix", scope: !129, file: !68, line: 673, baseType: !973, size: 8192, offset: 268096)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !974)
!974 = !{!21, !21}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "index_sz", scope: !129, file: !68, line: 675, baseType: !69, size: 32, offset: 276288)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !129, file: !68, line: 676, baseType: !977, size: 64, offset: 276352)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "cram_index", file: !68, line: 605, baseType: !979)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cram_index", file: !68, line: 594, size: 384, elements: !980)
!980 = !{!981, !982, !983, !985, !986, !987, !988, !989, !990, !991}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "nslice", scope: !979, file: !68, line: 595, baseType: !69, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !979, file: !68, line: 595, baseType: !69, size: 32, offset: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !979, file: !68, line: 596, baseType: !984, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "refid", scope: !979, file: !68, line: 598, baseType: !69, size: 32, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !979, file: !68, line: 599, baseType: !69, size: 32, offset: 160)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !979, file: !68, line: 600, baseType: !69, size: 32, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "nseq", scope: !979, file: !68, line: 601, baseType: !69, size: 32, offset: 224)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !979, file: !68, line: 602, baseType: !69, size: 32, offset: 256)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !979, file: !68, line: 603, baseType: !69, size: 32, offset: 288)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !979, file: !68, line: 604, baseType: !108, size: 64, offset: 320)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "first_container", scope: !129, file: !68, line: 677, baseType: !146, size: 64, offset: 276416)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !129, file: !68, line: 678, baseType: !69, size: 32, offset: 276480)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "last_slice", scope: !129, file: !68, line: 679, baseType: !69, size: 32, offset: 276512)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "multi_seq", scope: !129, file: !68, line: 680, baseType: !69, size: 32, offset: 276544)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "unsorted", scope: !129, file: !68, line: 681, baseType: !69, size: 32, offset: 276576)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "empty_container", scope: !129, file: !68, line: 682, baseType: !69, size: 32, offset: 276608)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "own_pool", scope: !129, file: !68, line: 685, baseType: !69, size: 32, offset: 276640)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !129, file: !68, line: 686, baseType: !1000, size: 64, offset: 276672)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_pool", file: !1002, line: 93, baseType: !1003)
!1002 = !DIFile(filename: "./cram/thread_pool.h", directory: "/local-ssd/star-s7gfyo2prvaki7w6cr7mtqgyaudishwq-build/aidengro/spack-stage-star-2.7.10b-s7gfyo2prvaki7w6cr7mtqgyaudishwq/spack-src/source/htslib", checksumkind: CSK_MD5, checksum: "8f47ac085d4341e355376149e8fb8353")
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "t_pool", file: !1002, line: 71, size: 1984, elements: !1004)
!1004 = !{!1005, !1006, !1007, !1008, !1009, !1075, !1076, !1077, !1080, !1081, !1082, !1083, !1084, !1085}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "qsize", scope: !1003, file: !1002, line: 72, baseType: !69, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "njobs", scope: !1003, file: !1002, line: 73, baseType: !69, size: 32, offset: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "nwaiting", scope: !1003, file: !1002, line: 74, baseType: !69, size: 32, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1003, file: !1002, line: 75, baseType: !69, size: 32, offset: 96)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1003, file: !1002, line: 78, baseType: !1010, size: 64, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_pool_job", file: !1002, line: 63, baseType: !1012)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "t_pool_job", file: !1002, line: 55, size: 384, elements: !1013)
!1013 = !{!1014, !1018, !1019, !1021, !1023, !1074}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1012, file: !1002, line: 56, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!247, !247}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1012, file: !1002, line: 57, baseType: !247, size: 64, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1012, file: !1002, line: 58, baseType: !1020, size: 64, offset: 128)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1012, file: !1002, line: 60, baseType: !1022, size: 64, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1012, file: !1002, line: 61, baseType: !1024, size: 64, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "t_results_queue", file: !1002, line: 95, size: 960, elements: !1026)
!1026 = !{!1027, !1036, !1037, !1038, !1039, !1040, !1041, !1042}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "result_head", scope: !1025, file: !1002, line: 96, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_pool_result", file: !1002, line: 69, baseType: !1030)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "t_res", file: !1002, line: 65, size: 192, elements: !1031)
!1031 = !{!1032, !1034, !1035}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1030, file: !1002, line: 66, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1030, file: !1002, line: 67, baseType: !69, size: 32, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1030, file: !1002, line: 68, baseType: !247, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "result_tail", scope: !1025, file: !1002, line: 97, baseType: !1028, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "next_serial", scope: !1025, file: !1002, line: 98, baseType: !69, size: 32, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "curr_serial", scope: !1025, file: !1002, line: 99, baseType: !69, size: 32, offset: 160)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "queue_len", scope: !1025, file: !1002, line: 100, baseType: !69, size: 32, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1025, file: !1002, line: 101, baseType: !69, size: 32, offset: 224)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "result_m", scope: !1025, file: !1002, line: 102, baseType: !896, size: 320, offset: 256)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "result_avail_c", scope: !1025, file: !1002, line: 103, baseType: !1043, size: 384, offset: 576)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !897, line: 80, baseType: !1044)
!1044 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !897, line: 75, size: 384, elements: !1045)
!1045 = !{!1046, !1068, !1072}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !1044, file: !897, line: 77, baseType: !1047, size: 384)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !914, line: 94, size: 384, elements: !1048)
!1048 = !{!1049, !1061, !1062, !1064, !1065, !1066, !1067}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !1047, file: !914, line: 96, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__atomic_wide_counter", file: !1051, line: 33, baseType: !1052)
!1051 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h", directory: "", checksumkind: CSK_MD5, checksum: "2708e6e61e266abad2d765ccef838dbe")
!1052 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !1051, line: 25, size: 64, elements: !1053)
!1053 = !{!1054, !1056}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "__value64", scope: !1052, file: !1051, line: 27, baseType: !1055, size: 64)
!1055 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "__value32", scope: !1052, file: !1051, line: 32, baseType: !1057, size: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1052, file: !1051, line: 28, size: 64, elements: !1058)
!1058 = !{!1059, !1060}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !1057, file: !1051, line: 30, baseType: !85, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !1057, file: !1051, line: 31, baseType: !85, size: 32, offset: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !1047, file: !914, line: 97, baseType: !1050, size: 64, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !1047, file: !914, line: 98, baseType: !1063, size: 64, offset: 128)
!1063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 64, elements: !10)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !1047, file: !914, line: 99, baseType: !1063, size: 64, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !1047, file: !914, line: 100, baseType: !85, size: 32, offset: 256)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !1047, file: !914, line: 101, baseType: !85, size: 32, offset: 288)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !1047, file: !914, line: 102, baseType: !1063, size: 64, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1044, file: !897, line: 78, baseType: !1069, size: 384)
!1069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !1070)
!1070 = !{!1071}
!1071 = !DISubrange(count: 48)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1044, file: !897, line: 79, baseType: !1073, size: 64)
!1073 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1012, file: !1002, line: 62, baseType: !69, size: 32, offset: 320)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1003, file: !1002, line: 78, baseType: !1010, size: 64, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "tsize", scope: !1003, file: !1002, line: 81, baseType: !69, size: 32, offset: 256)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !1003, file: !1002, line: 82, baseType: !1078, size: 64, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !897, line: 27, baseType: !181)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "pool_m", scope: !1003, file: !1002, line: 85, baseType: !896, size: 320, offset: 384)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "empty_c", scope: !1003, file: !1002, line: 87, baseType: !1043, size: 384, offset: 704)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pending_c", scope: !1003, file: !1002, line: 88, baseType: !1043, size: 384, offset: 1088)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "full_c", scope: !1003, file: !1002, line: 89, baseType: !1043, size: 384, offset: 1472)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1003, file: !1002, line: 92, baseType: !1073, size: 64, offset: 1856)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "wait_time", scope: !1003, file: !1002, line: 92, baseType: !1073, size: 64, offset: 1920)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "rqueue", scope: !129, file: !68, line: 687, baseType: !1087, size: 64, offset: 276736)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_results_queue", file: !1002, line: 104, baseType: !1025)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "metrics_lock", scope: !129, file: !68, line: 688, baseType: !896, size: 320, offset: 276800)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ref_lock", scope: !129, file: !68, line: 689, baseType: !896, size: 320, offset: 277120)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "bl", scope: !129, file: !68, line: 690, baseType: !1092, size: 64, offset: 277440)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "spare_bams", file: !68, line: 620, baseType: !1094)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spare_bams", file: !68, line: 617, size: 128, elements: !1095)
!1095 = !{!1096, !1097}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "bams", scope: !1094, file: !68, line: 618, baseType: !718, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1094, file: !68, line: 619, baseType: !1098, size: 64, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "bam_list_lock", scope: !129, file: !68, line: 691, baseType: !896, size: 320, offset: 277504)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "job_pending", scope: !129, file: !68, line: 692, baseType: !247, size: 64, offset: 277824)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ooc", scope: !129, file: !68, line: 693, baseType: !69, size: 32, offset: 277888)
!1102 = !{!1103, !1104, !1105, !1107, !1111, !1112, !1113, !1116, !1117, !1119, !1120, !1121, !1122, !1123, !1124, !1127, !1128, !1130, !1131}
!1103 = !DILocalVariable(name: "fd", arg: 1, scope: !124, file: !2, line: 95, type: !127)
!1104 = !DILocalVariable(name: "fn", arg: 2, scope: !124, file: !2, line: 95, type: !276)
!1105 = !DILocalVariable(name: "fn2", scope: !124, file: !2, line: 96, type: !1106)
!1106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !964)
!1107 = !DILocalVariable(name: "buf", scope: !124, file: !2, line: 97, type: !1108)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 524288, elements: !1109)
!1109 = !{!1110}
!1110 = !DISubrange(count: 65536)
!1111 = !DILocalVariable(name: "len", scope: !124, file: !2, line: 98, type: !113)
!1112 = !DILocalVariable(name: "kstr", scope: !124, file: !2, line: 99, type: !174)
!1113 = !DILocalVariable(name: "fp", scope: !124, file: !2, line: 100, type: !1114)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "hFILE", file: !135, line: 48, baseType: !134)
!1116 = !DILocalVariable(name: "idx", scope: !124, file: !2, line: 101, type: !977)
!1117 = !DILocalVariable(name: "idx_stack", scope: !124, file: !2, line: 102, type: !1118)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!1119 = !DILocalVariable(name: "ep", scope: !124, file: !2, line: 102, type: !977)
!1120 = !DILocalVariable(name: "e", scope: !124, file: !2, line: 102, type: !978)
!1121 = !DILocalVariable(name: "idx_stack_alloc", scope: !124, file: !2, line: 103, type: !69)
!1122 = !DILocalVariable(name: "idx_stack_ptr", scope: !124, file: !2, line: 103, type: !69)
!1123 = !DILocalVariable(name: "pos", scope: !124, file: !2, line: 104, type: !179)
!1124 = !DILocalVariable(name: "l", scope: !1125, file: !2, line: 149, type: !179)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 148, column: 50)
!1126 = distinct !DILexicalBlock(scope: !124, file: !2, line: 148, column: 9)
!1127 = !DILocalVariable(name: "s", scope: !1125, file: !2, line: 150, type: !107)
!1128 = !DILocalVariable(name: "nchars", scope: !1129, file: !2, line: 163, type: !69)
!1129 = distinct !DILexicalBlock(scope: !124, file: !2, line: 162, column: 8)
!1130 = !DILocalVariable(name: "line", scope: !1129, file: !2, line: 164, type: !107)
!1131 = !DILocalVariable(name: "index_end", scope: !1132, file: !2, line: 192, type: !179)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 191, column: 36)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 191, column: 10)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 190, column: 29)
!1135 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 190, column: 6)
!1136 = !{!1137, !1137, i64 0}
!1137 = !{!"any pointer", !1138, i64 0}
!1138 = !{!"omnipotent char", !1139, i64 0}
!1139 = !{!"Simple C/C++ TBAA"}
!1140 = !DILocation(line: 95, column: 30, scope: !124)
!1141 = !DILocation(line: 95, column: 46, scope: !124)
!1142 = !DILocation(line: 96, column: 5, scope: !124)
!1143 = !DILocation(line: 96, column: 10, scope: !124)
!1144 = !DILocation(line: 97, column: 5, scope: !124)
!1145 = !DILocation(line: 97, column: 10, scope: !124)
!1146 = !DILocation(line: 98, column: 5, scope: !124)
!1147 = !DILocation(line: 98, column: 13, scope: !124)
!1148 = !DILocation(line: 99, column: 5, scope: !124)
!1149 = !DILocation(line: 99, column: 15, scope: !124)
!1150 = !DILocation(line: 100, column: 5, scope: !124)
!1151 = !DILocation(line: 100, column: 12, scope: !124)
!1152 = !DILocation(line: 101, column: 5, scope: !124)
!1153 = !DILocation(line: 101, column: 17, scope: !124)
!1154 = !DILocation(line: 102, column: 5, scope: !124)
!1155 = !DILocation(line: 102, column: 18, scope: !124)
!1156 = !DILocation(line: 102, column: 37, scope: !124)
!1157 = !DILocation(line: 102, column: 41, scope: !124)
!1158 = !DILocation(line: 103, column: 5, scope: !124)
!1159 = !DILocation(line: 103, column: 9, scope: !124)
!1160 = !{!1161, !1161, i64 0}
!1161 = !{!"int", !1138, i64 0}
!1162 = !DILocation(line: 103, column: 30, scope: !124)
!1163 = !DILocation(line: 104, column: 5, scope: !124)
!1164 = !DILocation(line: 104, column: 12, scope: !124)
!1165 = !{!1166, !1166, i64 0}
!1166 = !{!"long", !1138, i64 0}
!1167 = !DILocation(line: 107, column: 9, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !124, file: !2, line: 107, column: 9)
!1169 = !DILocation(line: 107, column: 13, scope: !1168)
!1170 = !{!1171, !1137, i64 34544}
!1171 = !{!"cram_fd", !1137, i64 0, !1161, i64 8, !1161, i64 12, !1137, i64 16, !1137, i64 24, !1137, i64 32, !1161, i64 40, !1161, i64 44, !1161, i64 48, !1137, i64 56, !1161, i64 64, !1161, i64 68, !1137, i64 72, !1137, i64 80, !1137, i64 88, !1161, i64 96, !1161, i64 100, !1161, i64 104, !1137, i64 112, !1161, i64 120, !1138, i64 128, !1161, i64 184, !1161, i64 188, !1161, i64 192, !1161, i64 196, !1161, i64 200, !1161, i64 204, !1161, i64 208, !1161, i64 212, !1161, i64 216, !1172, i64 220, !1138, i64 232, !1138, i64 16616, !1138, i64 33000, !1138, i64 33256, !1138, i64 33512, !1161, i64 34536, !1137, i64 34544, !1166, i64 34552, !1161, i64 34560, !1161, i64 34564, !1161, i64 34568, !1161, i64 34572, !1161, i64 34576, !1161, i64 34580, !1137, i64 34584, !1137, i64 34592, !1138, i64 34600, !1138, i64 34640, !1137, i64 34680, !1138, i64 34688, !1137, i64 34728, !1161, i64 34736}
!1172 = !{!"", !1161, i64 0, !1161, i64 4, !1161, i64 8}
!1173 = !DILocation(line: 107, column: 9, scope: !124)
!1174 = !DILocation(line: 108, column: 2, scope: !1168)
!1175 = !DILocation(line: 110, column: 25, scope: !124)
!1176 = !DILocation(line: 110, column: 29, scope: !124)
!1177 = !DILocation(line: 110, column: 38, scope: !124)
!1178 = !{!1171, !1161, i64 34536}
!1179 = !DILocation(line: 110, column: 17, scope: !124)
!1180 = !DILocation(line: 110, column: 5, scope: !124)
!1181 = !DILocation(line: 110, column: 9, scope: !124)
!1182 = !DILocation(line: 110, column: 15, scope: !124)
!1183 = !DILocation(line: 111, column: 10, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !124, file: !2, line: 111, column: 9)
!1185 = !DILocation(line: 111, column: 14, scope: !1184)
!1186 = !DILocation(line: 111, column: 9, scope: !124)
!1187 = !DILocation(line: 112, column: 2, scope: !1184)
!1188 = !DILocation(line: 114, column: 12, scope: !124)
!1189 = !DILocation(line: 114, column: 16, scope: !124)
!1190 = !DILocation(line: 114, column: 9, scope: !124)
!1191 = !DILocation(line: 115, column: 5, scope: !124)
!1192 = !DILocation(line: 115, column: 10, scope: !124)
!1193 = !DILocation(line: 115, column: 16, scope: !124)
!1194 = !{!1195, !1161, i64 16}
!1195 = !{!"cram_index", !1161, i64 0, !1161, i64 4, !1137, i64 8, !1161, i64 16, !1161, i64 20, !1161, i64 24, !1161, i64 28, !1161, i64 32, !1161, i64 36, !1166, i64 40}
!1196 = !DILocation(line: 116, column: 5, scope: !124)
!1197 = !DILocation(line: 116, column: 10, scope: !124)
!1198 = !DILocation(line: 116, column: 16, scope: !124)
!1199 = !{!1195, !1161, i64 20}
!1200 = !DILocation(line: 117, column: 5, scope: !124)
!1201 = !DILocation(line: 117, column: 10, scope: !124)
!1202 = !DILocation(line: 117, column: 16, scope: !124)
!1203 = !{!1195, !1161, i64 24}
!1204 = !DILocation(line: 119, column: 24, scope: !124)
!1205 = !DILocation(line: 119, column: 17, scope: !124)
!1206 = !DILocation(line: 119, column: 15, scope: !124)
!1207 = !DILocation(line: 120, column: 32, scope: !124)
!1208 = !DILocation(line: 120, column: 5, scope: !124)
!1209 = !DILocation(line: 120, column: 15, scope: !124)
!1210 = !DILocation(line: 120, column: 30, scope: !124)
!1211 = !DILocation(line: 122, column: 13, scope: !124)
!1212 = !DILocation(line: 122, column: 29, scope: !124)
!1213 = !DILocation(line: 122, column: 5, scope: !124)
!1214 = !DILocation(line: 123, column: 22, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !124, file: !2, line: 123, column: 9)
!1216 = !DILocation(line: 123, column: 16, scope: !1215)
!1217 = !DILocation(line: 123, column: 14, scope: !1215)
!1218 = !DILocation(line: 123, column: 9, scope: !124)
!1219 = !DILocation(line: 124, column: 9, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 123, column: 34)
!1221 = !DILocation(line: 124, column: 2, scope: !1220)
!1222 = !DILocation(line: 125, column: 7, scope: !1220)
!1223 = !DILocation(line: 125, column: 2, scope: !1220)
!1224 = !DILocation(line: 126, column: 2, scope: !1220)
!1225 = !DILocation(line: 130, column: 5, scope: !124)
!1226 = !DILocation(line: 130, column: 25, scope: !124)
!1227 = !DILocation(line: 130, column: 29, scope: !124)
!1228 = !DILocation(line: 130, column: 19, scope: !124)
!1229 = !DILocation(line: 130, column: 17, scope: !124)
!1230 = !DILocation(line: 130, column: 42, scope: !124)
!1231 = !DILocation(line: 131, column: 9, scope: !124)
!1232 = !DILocation(line: 131, column: 14, scope: !124)
!1233 = !DILocation(line: 131, column: 2, scope: !124)
!1234 = distinct !{!1234, !1225, !1235, !1236}
!1235 = !DILocation(line: 131, column: 24, scope: !124)
!1236 = !{!"llvm.loop.mustprogress"}
!1237 = !DILocation(line: 132, column: 9, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !124, file: !2, line: 132, column: 9)
!1239 = !DILocation(line: 132, column: 13, scope: !1238)
!1240 = !DILocation(line: 132, column: 17, scope: !1238)
!1241 = !DILocation(line: 132, column: 25, scope: !1238)
!1242 = !{!1243, !1166, i64 0}
!1243 = !{!"__kstring_t", !1166, i64 0, !1166, i64 8, !1137, i64 16}
!1244 = !DILocation(line: 132, column: 27, scope: !1238)
!1245 = !DILocation(line: 132, column: 9, scope: !124)
!1246 = !DILocation(line: 133, column: 11, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 133, column: 6)
!1248 = distinct !DILexicalBlock(scope: !1238, file: !2, line: 132, column: 32)
!1249 = !{!1243, !1137, i64 16}
!1250 = !DILocation(line: 133, column: 6, scope: !1247)
!1251 = !DILocation(line: 133, column: 6, scope: !1248)
!1252 = !DILocation(line: 134, column: 16, scope: !1247)
!1253 = !DILocation(line: 134, column: 6, scope: !1247)
!1254 = !DILocation(line: 135, column: 7, scope: !1248)
!1255 = !DILocation(line: 135, column: 2, scope: !1248)
!1256 = !DILocation(line: 136, column: 2, scope: !1248)
!1257 = !DILocation(line: 139, column: 16, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !124, file: !2, line: 139, column: 9)
!1259 = !DILocation(line: 139, column: 9, scope: !1258)
!1260 = !DILocation(line: 139, column: 9, scope: !124)
!1261 = !DILocation(line: 140, column: 11, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 140, column: 6)
!1263 = distinct !DILexicalBlock(scope: !1258, file: !2, line: 139, column: 21)
!1264 = !DILocation(line: 140, column: 6, scope: !1262)
!1265 = !DILocation(line: 140, column: 6, scope: !1263)
!1266 = !DILocation(line: 141, column: 16, scope: !1262)
!1267 = !DILocation(line: 141, column: 6, scope: !1262)
!1268 = !DILocation(line: 142, column: 7, scope: !1263)
!1269 = !DILocation(line: 142, column: 2, scope: !1263)
!1270 = !DILocation(line: 143, column: 2, scope: !1263)
!1271 = !DILocation(line: 148, column: 14, scope: !1126)
!1272 = !DILocation(line: 148, column: 9, scope: !1126)
!1273 = !{!1138, !1138, i64 0}
!1274 = !DILocation(line: 148, column: 19, scope: !1126)
!1275 = !DILocation(line: 148, column: 25, scope: !1126)
!1276 = !DILocation(line: 148, column: 37, scope: !1126)
!1277 = !DILocation(line: 148, column: 32, scope: !1126)
!1278 = !DILocation(line: 148, column: 28, scope: !1126)
!1279 = !DILocation(line: 148, column: 42, scope: !1126)
!1280 = !DILocation(line: 148, column: 9, scope: !124)
!1281 = !DILocation(line: 149, column: 2, scope: !1125)
!1282 = !DILocation(line: 149, column: 9, scope: !1125)
!1283 = !DILocation(line: 150, column: 2, scope: !1125)
!1284 = !DILocation(line: 150, column: 8, scope: !1125)
!1285 = !DILocation(line: 150, column: 34, scope: !1125)
!1286 = !DILocation(line: 150, column: 42, scope: !1125)
!1287 = !DILocation(line: 150, column: 12, scope: !1125)
!1288 = !DILocation(line: 151, column: 12, scope: !1125)
!1289 = !DILocation(line: 151, column: 2, scope: !1125)
!1290 = !DILocation(line: 152, column: 7, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1125, file: !2, line: 152, column: 6)
!1292 = !DILocation(line: 152, column: 6, scope: !1125)
!1293 = !DILocation(line: 153, column: 11, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 152, column: 10)
!1295 = !DILocation(line: 153, column: 6, scope: !1294)
!1296 = !DILocation(line: 154, column: 6, scope: !1294)
!1297 = !DILocation(line: 156, column: 11, scope: !1125)
!1298 = !DILocation(line: 156, column: 7, scope: !1125)
!1299 = !DILocation(line: 156, column: 9, scope: !1125)
!1300 = !DILocation(line: 157, column: 11, scope: !1125)
!1301 = !DILocation(line: 157, column: 7, scope: !1125)
!1302 = !DILocation(line: 157, column: 9, scope: !1125)
!1303 = !DILocation(line: 158, column: 5, scope: !1126)
!1304 = !DILocation(line: 158, column: 5, scope: !1125)
!1305 = !DILocation(line: 162, column: 5, scope: !124)
!1306 = !DILocation(line: 163, column: 2, scope: !1129)
!1307 = !DILocation(line: 163, column: 6, scope: !1129)
!1308 = !DILocation(line: 164, column: 2, scope: !1129)
!1309 = !DILocation(line: 164, column: 8, scope: !1129)
!1310 = !DILocation(line: 164, column: 21, scope: !1129)
!1311 = !DILocation(line: 164, column: 23, scope: !1129)
!1312 = !DILocation(line: 164, column: 16, scope: !1129)
!1313 = !DILocation(line: 167, column: 13, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 167, column: 6)
!1315 = !DILocation(line: 168, column: 9, scope: !1314)
!1316 = !DILocation(line: 169, column: 9, scope: !1314)
!1317 = !DILocation(line: 170, column: 9, scope: !1314)
!1318 = !DILocation(line: 171, column: 9, scope: !1314)
!1319 = !DILocation(line: 172, column: 9, scope: !1314)
!1320 = !DILocation(line: 173, column: 9, scope: !1314)
!1321 = !DILocation(line: 167, column: 6, scope: !1314)
!1322 = !DILocation(line: 174, column: 15, scope: !1314)
!1323 = !DILocation(line: 167, column: 6, scope: !1129)
!1324 = !DILocation(line: 175, column: 16, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1314, file: !2, line: 174, column: 21)
!1326 = !DILocation(line: 175, column: 6, scope: !1325)
!1327 = !DILocation(line: 176, column: 11, scope: !1325)
!1328 = !DILocation(line: 176, column: 6, scope: !1325)
!1329 = !DILocation(line: 177, column: 6, scope: !1325)
!1330 = !DILocation(line: 180, column: 13, scope: !1129)
!1331 = !DILocation(line: 180, column: 18, scope: !1129)
!1332 = !DILocation(line: 180, column: 4, scope: !1129)
!1333 = !DILocation(line: 180, column: 8, scope: !1129)
!1334 = !DILocation(line: 183, column: 8, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 183, column: 6)
!1336 = !DILocation(line: 183, column: 14, scope: !1335)
!1337 = !DILocation(line: 183, column: 6, scope: !1129)
!1338 = !DILocation(line: 184, column: 16, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 183, column: 20)
!1340 = !DILocation(line: 184, column: 6, scope: !1339)
!1341 = !DILocation(line: 185, column: 11, scope: !1339)
!1342 = !DILocation(line: 185, column: 6, scope: !1339)
!1343 = !DILocation(line: 186, column: 14, scope: !1339)
!1344 = !DILocation(line: 186, column: 60, scope: !1339)
!1345 = !DILocation(line: 186, column: 6, scope: !1339)
!1346 = !DILocation(line: 187, column: 6, scope: !1339)
!1347 = !DILocation(line: 190, column: 8, scope: !1135)
!1348 = !DILocation(line: 190, column: 17, scope: !1135)
!1349 = !DILocation(line: 190, column: 22, scope: !1135)
!1350 = !DILocation(line: 190, column: 14, scope: !1135)
!1351 = !DILocation(line: 190, column: 6, scope: !1129)
!1352 = !DILocation(line: 191, column: 10, scope: !1133)
!1353 = !DILocation(line: 191, column: 14, scope: !1133)
!1354 = !DILocation(line: 191, column: 27, scope: !1133)
!1355 = !DILocation(line: 191, column: 32, scope: !1133)
!1356 = !DILocation(line: 191, column: 23, scope: !1133)
!1357 = !DILocation(line: 191, column: 10, scope: !1134)
!1358 = !DILocation(line: 192, column: 3, scope: !1132)
!1359 = !DILocation(line: 192, column: 10, scope: !1132)
!1360 = !DILocation(line: 192, column: 22, scope: !1132)
!1361 = !DILocation(line: 192, column: 26, scope: !1132)
!1362 = !DILocation(line: 192, column: 35, scope: !1132)
!1363 = !DILocation(line: 193, column: 20, scope: !1132)
!1364 = !DILocation(line: 193, column: 25, scope: !1132)
!1365 = !DILocation(line: 193, column: 3, scope: !1132)
!1366 = !DILocation(line: 193, column: 7, scope: !1132)
!1367 = !DILocation(line: 193, column: 16, scope: !1132)
!1368 = !DILocation(line: 194, column: 23, scope: !1132)
!1369 = !DILocation(line: 194, column: 27, scope: !1132)
!1370 = !DILocation(line: 195, column: 9, scope: !1132)
!1371 = !DILocation(line: 195, column: 13, scope: !1132)
!1372 = !DILocation(line: 195, column: 22, scope: !1132)
!1373 = !DILocation(line: 194, column: 15, scope: !1132)
!1374 = !DILocation(line: 194, column: 3, scope: !1132)
!1375 = !DILocation(line: 194, column: 7, scope: !1132)
!1376 = !DILocation(line: 194, column: 13, scope: !1132)
!1377 = !DILocation(line: 196, column: 19, scope: !1132)
!1378 = !DILocation(line: 196, column: 23, scope: !1132)
!1379 = !DILocation(line: 196, column: 32, scope: !1132)
!1380 = !DILocation(line: 196, column: 30, scope: !1132)
!1381 = !DILocation(line: 197, column: 10, scope: !1132)
!1382 = !DILocation(line: 197, column: 14, scope: !1132)
!1383 = !DILocation(line: 197, column: 23, scope: !1132)
!1384 = !DILocation(line: 197, column: 46, scope: !1132)
!1385 = !DILocation(line: 197, column: 44, scope: !1132)
!1386 = !DILocation(line: 196, column: 3, scope: !1132)
!1387 = !DILocation(line: 198, column: 6, scope: !1133)
!1388 = !DILocation(line: 198, column: 6, scope: !1132)
!1389 = !DILocation(line: 199, column: 13, scope: !1134)
!1390 = !DILocation(line: 199, column: 17, scope: !1134)
!1391 = !DILocation(line: 199, column: 25, scope: !1134)
!1392 = !DILocation(line: 199, column: 30, scope: !1134)
!1393 = !DILocation(line: 199, column: 10, scope: !1134)
!1394 = !DILocation(line: 200, column: 21, scope: !1134)
!1395 = !DILocation(line: 200, column: 6, scope: !1134)
!1396 = !DILocation(line: 200, column: 11, scope: !1134)
!1397 = !DILocation(line: 200, column: 17, scope: !1134)
!1398 = !DILocation(line: 201, column: 6, scope: !1134)
!1399 = !DILocation(line: 201, column: 11, scope: !1134)
!1400 = !DILocation(line: 201, column: 17, scope: !1134)
!1401 = !DILocation(line: 202, column: 6, scope: !1134)
!1402 = !DILocation(line: 202, column: 11, scope: !1134)
!1403 = !DILocation(line: 202, column: 17, scope: !1134)
!1404 = !DILocation(line: 203, column: 20, scope: !1134)
!1405 = !DILocation(line: 203, column: 25, scope: !1134)
!1406 = !DILocation(line: 203, column: 32, scope: !1134)
!1407 = !{!1195, !1161, i64 4}
!1408 = !DILocation(line: 203, column: 6, scope: !1134)
!1409 = !DILocation(line: 203, column: 11, scope: !1134)
!1410 = !DILocation(line: 203, column: 18, scope: !1134)
!1411 = !{!1195, !1161, i64 0}
!1412 = !DILocation(line: 204, column: 6, scope: !1134)
!1413 = !DILocation(line: 204, column: 11, scope: !1134)
!1414 = !DILocation(line: 204, column: 13, scope: !1134)
!1415 = !{!1195, !1137, i64 8}
!1416 = !DILocation(line: 205, column: 39, scope: !1134)
!1417 = !DILocation(line: 205, column: 6, scope: !1134)
!1418 = !DILocation(line: 205, column: 31, scope: !1134)
!1419 = !DILocation(line: 205, column: 37, scope: !1134)
!1420 = !DILocation(line: 206, column: 2, scope: !1134)
!1421 = !DILocation(line: 208, column: 2, scope: !1129)
!1422 = !DILocation(line: 208, column: 13, scope: !1129)
!1423 = !DILocation(line: 208, column: 22, scope: !1129)
!1424 = !DILocation(line: 208, column: 27, scope: !1129)
!1425 = !DILocation(line: 208, column: 19, scope: !1129)
!1426 = !DILocation(line: 208, column: 33, scope: !1129)
!1427 = !DILocation(line: 208, column: 38, scope: !1129)
!1428 = !DILocation(line: 208, column: 45, scope: !1129)
!1429 = !DILocation(line: 208, column: 50, scope: !1129)
!1430 = !DILocation(line: 208, column: 42, scope: !1129)
!1431 = !DILocation(line: 0, scope: !1129)
!1432 = !DILocation(line: 208, column: 9, scope: !1129)
!1433 = !DILocation(line: 209, column: 12, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 208, column: 56)
!1435 = !DILocation(line: 209, column: 22, scope: !1434)
!1436 = !DILocation(line: 209, column: 10, scope: !1434)
!1437 = distinct !{!1437, !1421, !1438, !1236}
!1438 = !DILocation(line: 210, column: 2, scope: !1129)
!1439 = !DILocation(line: 213, column: 6, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 213, column: 6)
!1441 = !DILocation(line: 213, column: 11, scope: !1440)
!1442 = !DILocation(line: 213, column: 17, scope: !1440)
!1443 = !DILocation(line: 213, column: 23, scope: !1440)
!1444 = !DILocation(line: 213, column: 28, scope: !1440)
!1445 = !DILocation(line: 213, column: 20, scope: !1440)
!1446 = !DILocation(line: 213, column: 6, scope: !1129)
!1447 = !DILocation(line: 214, column: 20, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1440, file: !2, line: 213, column: 36)
!1449 = !DILocation(line: 214, column: 25, scope: !1448)
!1450 = !DILocation(line: 214, column: 34, scope: !1448)
!1451 = !DILocation(line: 214, column: 39, scope: !1448)
!1452 = !DILocation(line: 214, column: 45, scope: !1448)
!1453 = !DILocation(line: 214, column: 6, scope: !1448)
!1454 = !DILocation(line: 214, column: 11, scope: !1448)
!1455 = !DILocation(line: 214, column: 18, scope: !1448)
!1456 = !DILocation(line: 215, column: 23, scope: !1448)
!1457 = !DILocation(line: 215, column: 28, scope: !1448)
!1458 = !DILocation(line: 215, column: 31, scope: !1448)
!1459 = !DILocation(line: 215, column: 36, scope: !1448)
!1460 = !DILocation(line: 215, column: 43, scope: !1448)
!1461 = !DILocation(line: 215, column: 15, scope: !1448)
!1462 = !DILocation(line: 215, column: 6, scope: !1448)
!1463 = !DILocation(line: 215, column: 11, scope: !1448)
!1464 = !DILocation(line: 215, column: 13, scope: !1448)
!1465 = !DILocation(line: 216, column: 2, scope: !1448)
!1466 = !DILocation(line: 218, column: 15, scope: !1129)
!1467 = !DILocation(line: 218, column: 22, scope: !1129)
!1468 = !DILocation(line: 218, column: 4, scope: !1129)
!1469 = !DILocation(line: 218, column: 11, scope: !1129)
!1470 = !DILocation(line: 218, column: 29, scope: !1129)
!1471 = !DILocation(line: 218, column: 31, scope: !1129)
!1472 = !DILocation(line: 219, column: 10, scope: !1129)
!1473 = !DILocation(line: 219, column: 15, scope: !1129)
!1474 = !DILocation(line: 219, column: 17, scope: !1129)
!1475 = !DILocation(line: 219, column: 22, scope: !1129)
!1476 = !DILocation(line: 219, column: 28, scope: !1129)
!1477 = !DILocation(line: 219, column: 7, scope: !1129)
!1478 = !DILocation(line: 219, column: 35, scope: !1129)
!1479 = !{i64 0, i64 4, !1160, i64 4, i64 4, !1160, i64 8, i64 8, !1136, i64 16, i64 4, !1160, i64 20, i64 4, !1160, i64 24, i64 4, !1160, i64 28, i64 4, !1160, i64 32, i64 4, !1160, i64 36, i64 4, !1160, i64 40, i64 8, !1165}
!1480 = !DILocation(line: 220, column: 8, scope: !1129)
!1481 = !DILocation(line: 220, column: 6, scope: !1129)
!1482 = !DILocation(line: 222, column: 6, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 222, column: 6)
!1484 = !DILocation(line: 222, column: 25, scope: !1483)
!1485 = !DILocation(line: 222, column: 22, scope: !1483)
!1486 = !DILocation(line: 222, column: 6, scope: !1129)
!1487 = !DILocation(line: 223, column: 22, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 222, column: 42)
!1489 = !DILocation(line: 224, column: 26, scope: !1488)
!1490 = !DILocation(line: 224, column: 37, scope: !1488)
!1491 = !DILocation(line: 224, column: 52, scope: !1488)
!1492 = !DILocation(line: 224, column: 18, scope: !1488)
!1493 = !DILocation(line: 224, column: 16, scope: !1488)
!1494 = !DILocation(line: 225, column: 2, scope: !1488)
!1495 = !DILocation(line: 226, column: 29, scope: !1129)
!1496 = !DILocation(line: 226, column: 2, scope: !1129)
!1497 = !DILocation(line: 226, column: 12, scope: !1129)
!1498 = !DILocation(line: 226, column: 27, scope: !1129)
!1499 = !DILocation(line: 228, column: 9, scope: !1129)
!1500 = !DILocation(line: 228, column: 6, scope: !1129)
!1501 = !DILocation(line: 229, column: 2, scope: !1129)
!1502 = !DILocation(line: 229, column: 9, scope: !1129)
!1503 = !DILocation(line: 229, column: 20, scope: !1129)
!1504 = !DILocation(line: 229, column: 13, scope: !1129)
!1505 = !DILocation(line: 229, column: 22, scope: !1129)
!1506 = !DILocation(line: 229, column: 30, scope: !1129)
!1507 = !DILocation(line: 229, column: 32, scope: !1129)
!1508 = !DILocation(line: 229, column: 25, scope: !1129)
!1509 = !DILocation(line: 229, column: 37, scope: !1129)
!1510 = !DILocation(line: 230, column: 9, scope: !1129)
!1511 = distinct !{!1511, !1501, !1510, !1236}
!1512 = !DILocation(line: 231, column: 5, scope: !1129)
!1513 = !DILocation(line: 232, column: 5, scope: !124)
!1514 = !DILocation(line: 232, column: 5, scope: !1129)
!1515 = !DILocation(line: 232, column: 14, scope: !124)
!1516 = !DILocation(line: 232, column: 25, scope: !124)
!1517 = !DILocation(line: 232, column: 18, scope: !124)
!1518 = distinct !{!1518, !1305, !1519, !1236}
!1519 = !DILocation(line: 232, column: 26, scope: !124)
!1520 = !DILocation(line: 234, column: 10, scope: !124)
!1521 = !DILocation(line: 234, column: 5, scope: !124)
!1522 = !DILocation(line: 235, column: 15, scope: !124)
!1523 = !DILocation(line: 235, column: 5, scope: !124)
!1524 = !DILocation(line: 239, column: 5, scope: !124)
!1525 = !DILocation(line: 240, column: 1, scope: !124)
!1526 = !DISubprogram(name: "calloc", scope: !1527, file: !1527, line: 543, type: !1528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1527 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!247, !179, !179}
!1530 = !DISubprogram(name: "sprintf", scope: !114, file: !114, line: 358, type: !1531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!69, !1533, !1534, null}
!1533 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !107)
!1534 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !276)
!1535 = !DISubprogram(name: "hopen", scope: !135, file: !135, line: 54, type: !1536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!1114, !276, !276}
!1538 = !DISubprogram(name: "perror", scope: !114, file: !114, line: 804, type: !1539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{null, !276}
!1541 = !DISubprogram(name: "free", scope: !1527, file: !1527, line: 555, type: !1542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{null, !247}
!1544 = distinct !DISubprogram(name: "hread", scope: !135, file: !135, line: 139, type: !1545, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !1547)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!113, !1114, !247, !179}
!1547 = !{!1548, !1549, !1550, !1551}
!1548 = !DILocalVariable(name: "fp", arg: 1, scope: !1544, file: !135, line: 139, type: !1114)
!1549 = !DILocalVariable(name: "buffer", arg: 2, scope: !1544, file: !135, line: 139, type: !247)
!1550 = !DILocalVariable(name: "nbytes", arg: 3, scope: !1544, file: !135, line: 139, type: !179)
!1551 = !DILocalVariable(name: "n", scope: !1544, file: !135, line: 143, type: !179)
!1552 = !DILocation(line: 139, column: 14, scope: !1544)
!1553 = !DILocation(line: 139, column: 24, scope: !1544)
!1554 = !DILocation(line: 139, column: 39, scope: !1544)
!1555 = !DILocation(line: 143, column: 5, scope: !1544)
!1556 = !DILocation(line: 143, column: 12, scope: !1544)
!1557 = !DILocation(line: 143, column: 16, scope: !1544)
!1558 = !DILocation(line: 143, column: 20, scope: !1544)
!1559 = !{!1560, !1137, i64 16}
!1560 = !{!"hFILE", !1137, i64 0, !1137, i64 8, !1137, i64 16, !1137, i64 24, !1137, i64 32, !1166, i64 40, !1161, i64 48, !1161, i64 52}
!1561 = !DILocation(line: 143, column: 26, scope: !1544)
!1562 = !DILocation(line: 143, column: 30, scope: !1544)
!1563 = !{!1560, !1137, i64 8}
!1564 = !DILocation(line: 143, column: 24, scope: !1544)
!1565 = !DILocation(line: 144, column: 9, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1544, file: !135, line: 144, column: 9)
!1567 = !DILocation(line: 144, column: 13, scope: !1566)
!1568 = !DILocation(line: 144, column: 11, scope: !1566)
!1569 = !DILocation(line: 144, column: 9, scope: !1544)
!1570 = !DILocation(line: 144, column: 25, scope: !1566)
!1571 = !DILocation(line: 144, column: 23, scope: !1566)
!1572 = !DILocation(line: 144, column: 21, scope: !1566)
!1573 = !DILocation(line: 145, column: 12, scope: !1544)
!1574 = !DILocation(line: 145, column: 20, scope: !1544)
!1575 = !DILocation(line: 145, column: 24, scope: !1544)
!1576 = !DILocation(line: 145, column: 31, scope: !1544)
!1577 = !DILocation(line: 145, column: 5, scope: !1544)
!1578 = !DILocation(line: 146, column: 18, scope: !1544)
!1579 = !DILocation(line: 146, column: 5, scope: !1544)
!1580 = !DILocation(line: 146, column: 9, scope: !1544)
!1581 = !DILocation(line: 146, column: 15, scope: !1544)
!1582 = !DILocation(line: 147, column: 13, scope: !1544)
!1583 = !DILocation(line: 147, column: 18, scope: !1544)
!1584 = !DILocation(line: 147, column: 15, scope: !1544)
!1585 = !DILocation(line: 147, column: 12, scope: !1544)
!1586 = !DILocation(line: 147, column: 37, scope: !1544)
!1587 = !DILocation(line: 147, column: 48, scope: !1544)
!1588 = !DILocation(line: 147, column: 52, scope: !1544)
!1589 = !DILocation(line: 147, column: 60, scope: !1544)
!1590 = !DILocation(line: 147, column: 68, scope: !1544)
!1591 = !DILocation(line: 147, column: 41, scope: !1544)
!1592 = !DILocation(line: 148, column: 1, scope: !1544)
!1593 = !DILocation(line: 147, column: 5, scope: !1544)
!1594 = distinct !DISubprogram(name: "kputsn", scope: !1595, file: !1595, line: 125, type: !1596, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !1599)
!1595 = !DIFile(filename: "./htslib/kstring.h", directory: "/local-ssd/star-s7gfyo2prvaki7w6cr7mtqgyaudishwq-build/aidengro/spack-stage-star-2.7.10b-s7gfyo2prvaki7w6cr7mtqgyaudishwq/spack-src/source/htslib", checksumkind: CSK_MD5, checksum: "af7f465ce767766604762a631a96e329")
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!69, !276, !69, !1598}
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!1599 = !{!1600, !1601, !1602, !1603}
!1600 = !DILocalVariable(name: "p", arg: 1, scope: !1594, file: !1595, line: 125, type: !276)
!1601 = !DILocalVariable(name: "l", arg: 2, scope: !1594, file: !1595, line: 125, type: !69)
!1602 = !DILocalVariable(name: "s", arg: 3, scope: !1594, file: !1595, line: 125, type: !1598)
!1603 = !DILocalVariable(name: "tmp", scope: !1604, file: !1595, line: 128, type: !107)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !1595, line: 127, column: 28)
!1605 = distinct !DILexicalBlock(scope: !1594, file: !1595, line: 127, column: 6)
!1606 = !DILocation(line: 125, column: 38, scope: !1594)
!1607 = !DILocation(line: 125, column: 45, scope: !1594)
!1608 = !DILocation(line: 125, column: 59, scope: !1594)
!1609 = !DILocation(line: 127, column: 6, scope: !1605)
!1610 = !DILocation(line: 127, column: 9, scope: !1605)
!1611 = !DILocation(line: 127, column: 13, scope: !1605)
!1612 = !DILocation(line: 127, column: 11, scope: !1605)
!1613 = !DILocation(line: 127, column: 15, scope: !1605)
!1614 = !DILocation(line: 127, column: 22, scope: !1605)
!1615 = !DILocation(line: 127, column: 25, scope: !1605)
!1616 = !{!1243, !1166, i64 8}
!1617 = !DILocation(line: 127, column: 19, scope: !1605)
!1618 = !DILocation(line: 127, column: 6, scope: !1594)
!1619 = !DILocation(line: 128, column: 3, scope: !1604)
!1620 = !DILocation(line: 128, column: 9, scope: !1604)
!1621 = !DILocation(line: 129, column: 10, scope: !1604)
!1622 = !DILocation(line: 129, column: 13, scope: !1604)
!1623 = !DILocation(line: 129, column: 17, scope: !1604)
!1624 = !DILocation(line: 129, column: 15, scope: !1604)
!1625 = !DILocation(line: 129, column: 19, scope: !1604)
!1626 = !DILocation(line: 129, column: 3, scope: !1604)
!1627 = !DILocation(line: 129, column: 6, scope: !1604)
!1628 = !DILocation(line: 129, column: 8, scope: !1604)
!1629 = !DILocation(line: 130, column: 3, scope: !1604)
!1630 = !DILocation(line: 131, column: 29, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1604, file: !1595, line: 131, column: 7)
!1632 = !DILocation(line: 131, column: 32, scope: !1631)
!1633 = !DILocation(line: 131, column: 35, scope: !1631)
!1634 = !DILocation(line: 131, column: 38, scope: !1631)
!1635 = !DILocation(line: 131, column: 21, scope: !1631)
!1636 = !DILocation(line: 131, column: 12, scope: !1631)
!1637 = !DILocation(line: 131, column: 7, scope: !1604)
!1638 = !DILocation(line: 132, column: 11, scope: !1631)
!1639 = !DILocation(line: 132, column: 4, scope: !1631)
!1640 = !DILocation(line: 132, column: 7, scope: !1631)
!1641 = !DILocation(line: 132, column: 9, scope: !1631)
!1642 = !DILocation(line: 134, column: 4, scope: !1631)
!1643 = !DILocation(line: 135, column: 2, scope: !1605)
!1644 = !DILocation(line: 135, column: 2, scope: !1604)
!1645 = !DILocation(line: 136, column: 9, scope: !1594)
!1646 = !DILocation(line: 136, column: 12, scope: !1594)
!1647 = !DILocation(line: 136, column: 16, scope: !1594)
!1648 = !DILocation(line: 136, column: 19, scope: !1594)
!1649 = !DILocation(line: 136, column: 14, scope: !1594)
!1650 = !DILocation(line: 136, column: 22, scope: !1594)
!1651 = !DILocation(line: 136, column: 25, scope: !1594)
!1652 = !DILocation(line: 136, column: 2, scope: !1594)
!1653 = !DILocation(line: 137, column: 10, scope: !1594)
!1654 = !DILocation(line: 137, column: 2, scope: !1594)
!1655 = !DILocation(line: 137, column: 5, scope: !1594)
!1656 = !DILocation(line: 137, column: 7, scope: !1594)
!1657 = !DILocation(line: 138, column: 2, scope: !1594)
!1658 = !DILocation(line: 138, column: 5, scope: !1594)
!1659 = !DILocation(line: 138, column: 7, scope: !1594)
!1660 = !DILocation(line: 138, column: 10, scope: !1594)
!1661 = !DILocation(line: 138, column: 13, scope: !1594)
!1662 = !DILocation(line: 139, column: 9, scope: !1594)
!1663 = !DILocation(line: 139, column: 2, scope: !1594)
!1664 = !DILocation(line: 140, column: 1, scope: !1594)
!1665 = !DISubprogram(name: "hclose", scope: !135, file: !135, line: 67, type: !1666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!69, !1114}
!1668 = !DISubprogram(name: "zlib_mem_inflate", scope: !1669, file: !1669, line: 158, type: !1670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1669 = !DIFile(filename: "./cram/cram_io.h", directory: "/local-ssd/star-s7gfyo2prvaki7w6cr7mtqgyaudishwq-build/aidengro/spack-stage-star-2.7.10b-s7gfyo2prvaki7w6cr7mtqgyaudishwq/spack-src/source/htslib", checksumkind: CSK_MD5, checksum: "e18679559f2453f6735120c61b0c3f16")
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!107, !107, !179, !1672}
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!1673 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !114, file: !114, line: 439, type: !1674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!69, !1534, !1534, null}
!1676 = !DISubprogram(name: "fprintf", scope: !114, file: !114, line: 350, type: !1677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!69, !1679, !1534, null}
!1679 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !844)
!1680 = !DISubprogram(name: "realloc", scope: !1527, file: !1527, line: 551, type: !1681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!247, !247, !179}
!1683 = distinct !DISubprogram(name: "cram_index_free", scope: !2, file: !2, line: 252, type: !1684, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !1686)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{null, !127}
!1686 = !{!1687, !1688}
!1687 = !DILocalVariable(name: "fd", arg: 1, scope: !1683, file: !2, line: 252, type: !127)
!1688 = !DILocalVariable(name: "i", scope: !1683, file: !2, line: 253, type: !69)
!1689 = !DILocation(line: 252, column: 31, scope: !1683)
!1690 = !DILocation(line: 253, column: 5, scope: !1683)
!1691 = !DILocation(line: 253, column: 9, scope: !1683)
!1692 = !DILocation(line: 255, column: 10, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1683, file: !2, line: 255, column: 9)
!1694 = !DILocation(line: 255, column: 14, scope: !1693)
!1695 = !DILocation(line: 255, column: 9, scope: !1683)
!1696 = !DILocation(line: 256, column: 2, scope: !1693)
!1697 = !DILocation(line: 258, column: 12, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1683, file: !2, line: 258, column: 5)
!1699 = !DILocation(line: 258, column: 10, scope: !1698)
!1700 = !DILocation(line: 258, column: 17, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1698, file: !2, line: 258, column: 5)
!1702 = !DILocation(line: 258, column: 21, scope: !1701)
!1703 = !DILocation(line: 258, column: 25, scope: !1701)
!1704 = !DILocation(line: 258, column: 19, scope: !1701)
!1705 = !DILocation(line: 258, column: 5, scope: !1698)
!1706 = !DILocation(line: 259, column: 27, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1701, file: !2, line: 258, column: 40)
!1708 = !DILocation(line: 259, column: 31, scope: !1707)
!1709 = !DILocation(line: 259, column: 37, scope: !1707)
!1710 = !DILocation(line: 259, column: 2, scope: !1707)
!1711 = !DILocation(line: 260, column: 5, scope: !1707)
!1712 = !DILocation(line: 258, column: 36, scope: !1701)
!1713 = !DILocation(line: 258, column: 5, scope: !1701)
!1714 = distinct !{!1714, !1705, !1715, !1236}
!1715 = !DILocation(line: 260, column: 5, scope: !1698)
!1716 = !DILocation(line: 261, column: 10, scope: !1683)
!1717 = !DILocation(line: 261, column: 14, scope: !1683)
!1718 = !DILocation(line: 261, column: 5, scope: !1683)
!1719 = !DILocation(line: 263, column: 5, scope: !1683)
!1720 = !DILocation(line: 263, column: 9, scope: !1683)
!1721 = !DILocation(line: 263, column: 15, scope: !1683)
!1722 = !DILocation(line: 264, column: 1, scope: !1683)
!1723 = distinct !DISubprogram(name: "cram_index_free_recurse", scope: !2, file: !2, line: 242, type: !1724, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !1726)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{null, !977}
!1726 = !{!1727, !1728}
!1727 = !DILocalVariable(name: "e", arg: 1, scope: !1723, file: !2, line: 242, type: !977)
!1728 = !DILocalVariable(name: "i", scope: !1729, file: !2, line: 244, type: !69)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !2, line: 243, column: 15)
!1730 = distinct !DILexicalBlock(scope: !1723, file: !2, line: 243, column: 9)
!1731 = !DILocation(line: 242, column: 49, scope: !1723)
!1732 = !DILocation(line: 243, column: 9, scope: !1730)
!1733 = !DILocation(line: 243, column: 12, scope: !1730)
!1734 = !DILocation(line: 243, column: 9, scope: !1723)
!1735 = !DILocation(line: 244, column: 2, scope: !1729)
!1736 = !DILocation(line: 244, column: 6, scope: !1729)
!1737 = !DILocation(line: 245, column: 9, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1729, file: !2, line: 245, column: 2)
!1739 = !DILocation(line: 245, column: 7, scope: !1738)
!1740 = !DILocation(line: 245, column: 14, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1738, file: !2, line: 245, column: 2)
!1742 = !DILocation(line: 245, column: 18, scope: !1741)
!1743 = !DILocation(line: 245, column: 21, scope: !1741)
!1744 = !DILocation(line: 245, column: 16, scope: !1741)
!1745 = !DILocation(line: 245, column: 2, scope: !1738)
!1746 = !DILocation(line: 246, column: 31, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 245, column: 34)
!1748 = !DILocation(line: 246, column: 34, scope: !1747)
!1749 = !DILocation(line: 246, column: 36, scope: !1747)
!1750 = !DILocation(line: 246, column: 6, scope: !1747)
!1751 = !DILocation(line: 247, column: 2, scope: !1747)
!1752 = !DILocation(line: 245, column: 30, scope: !1741)
!1753 = !DILocation(line: 245, column: 2, scope: !1741)
!1754 = distinct !{!1754, !1745, !1755, !1236}
!1755 = !DILocation(line: 247, column: 2, scope: !1738)
!1756 = !DILocation(line: 248, column: 7, scope: !1729)
!1757 = !DILocation(line: 248, column: 10, scope: !1729)
!1758 = !DILocation(line: 248, column: 2, scope: !1729)
!1759 = !DILocation(line: 249, column: 5, scope: !1730)
!1760 = !DILocation(line: 249, column: 5, scope: !1729)
!1761 = !DILocation(line: 250, column: 1, scope: !1723)
!1762 = distinct !DISubprogram(name: "cram_index_query", scope: !2, file: !2, line: 280, type: !1763, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !1765)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!977, !127, !69, !69, !977}
!1765 = !{!1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773}
!1766 = !DILocalVariable(name: "fd", arg: 1, scope: !1762, file: !2, line: 280, type: !127)
!1767 = !DILocalVariable(name: "refid", arg: 2, scope: !1762, file: !2, line: 280, type: !69)
!1768 = !DILocalVariable(name: "pos", arg: 3, scope: !1762, file: !2, line: 280, type: !69)
!1769 = !DILocalVariable(name: "from", arg: 4, scope: !1762, file: !2, line: 281, type: !977)
!1770 = !DILocalVariable(name: "i", scope: !1762, file: !2, line: 282, type: !69)
!1771 = !DILocalVariable(name: "j", scope: !1762, file: !2, line: 282, type: !69)
!1772 = !DILocalVariable(name: "k", scope: !1762, file: !2, line: 282, type: !69)
!1773 = !DILocalVariable(name: "e", scope: !1762, file: !2, line: 283, type: !977)
!1774 = !DILocation(line: 280, column: 39, scope: !1762)
!1775 = !DILocation(line: 280, column: 47, scope: !1762)
!1776 = !DILocation(line: 280, column: 58, scope: !1762)
!1777 = !DILocation(line: 281, column: 21, scope: !1762)
!1778 = !DILocation(line: 282, column: 5, scope: !1762)
!1779 = !DILocation(line: 282, column: 9, scope: !1762)
!1780 = !DILocation(line: 282, column: 12, scope: !1762)
!1781 = !DILocation(line: 282, column: 15, scope: !1762)
!1782 = !DILocation(line: 283, column: 5, scope: !1762)
!1783 = !DILocation(line: 283, column: 17, scope: !1762)
!1784 = !DILocation(line: 285, column: 9, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1762, file: !2, line: 285, column: 9)
!1786 = !DILocation(line: 285, column: 14, scope: !1785)
!1787 = !DILocation(line: 285, column: 17, scope: !1785)
!1788 = !DILocation(line: 285, column: 21, scope: !1785)
!1789 = !DILocation(line: 285, column: 24, scope: !1785)
!1790 = !DILocation(line: 285, column: 29, scope: !1785)
!1791 = !DILocation(line: 285, column: 35, scope: !1785)
!1792 = !DILocation(line: 285, column: 39, scope: !1785)
!1793 = !DILocation(line: 285, column: 32, scope: !1785)
!1794 = !DILocation(line: 285, column: 9, scope: !1762)
!1795 = !DILocation(line: 286, column: 2, scope: !1785)
!1796 = !DILocation(line: 288, column: 7, scope: !1762)
!1797 = !DILocation(line: 288, column: 16, scope: !1762)
!1798 = !DILocation(line: 288, column: 20, scope: !1762)
!1799 = !DILocation(line: 288, column: 26, scope: !1762)
!1800 = !DILocation(line: 288, column: 31, scope: !1762)
!1801 = !DILocation(line: 288, column: 35, scope: !1762)
!1802 = !DILocation(line: 288, column: 41, scope: !1762)
!1803 = !DILocation(line: 288, column: 14, scope: !1762)
!1804 = !DILocation(line: 290, column: 10, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1762, file: !2, line: 290, column: 9)
!1806 = !DILocation(line: 290, column: 9, scope: !1762)
!1807 = !DILocation(line: 291, column: 10, scope: !1805)
!1808 = !DILocation(line: 291, column: 14, scope: !1805)
!1809 = !DILocation(line: 291, column: 20, scope: !1805)
!1810 = !DILocation(line: 291, column: 25, scope: !1805)
!1811 = !DILocation(line: 291, column: 7, scope: !1805)
!1812 = !DILocation(line: 291, column: 2, scope: !1805)
!1813 = !DILocation(line: 293, column: 14, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1762, file: !2, line: 293, column: 5)
!1815 = !DILocation(line: 293, column: 15, scope: !1814)
!1816 = !DILocation(line: 293, column: 12, scope: !1814)
!1817 = !DILocation(line: 293, column: 10, scope: !1814)
!1818 = !DILocation(line: 293, column: 19, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 293, column: 5)
!1820 = !DILocation(line: 293, column: 24, scope: !1819)
!1821 = !DILocation(line: 293, column: 21, scope: !1819)
!1822 = !DILocation(line: 293, column: 5, scope: !1814)
!1823 = !DILocation(line: 294, column: 6, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !2, line: 294, column: 6)
!1825 = distinct !DILexicalBlock(scope: !1819, file: !2, line: 293, column: 44)
!1826 = !DILocation(line: 294, column: 12, scope: !1824)
!1827 = !DILocation(line: 294, column: 14, scope: !1824)
!1828 = !DILocation(line: 294, column: 17, scope: !1824)
!1829 = !DILocation(line: 294, column: 25, scope: !1824)
!1830 = !DILocation(line: 294, column: 23, scope: !1824)
!1831 = !DILocation(line: 294, column: 6, scope: !1825)
!1832 = !DILocation(line: 295, column: 10, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1824, file: !2, line: 294, column: 32)
!1834 = !DILocation(line: 295, column: 8, scope: !1833)
!1835 = !DILocation(line: 296, column: 6, scope: !1833)
!1836 = !DILocation(line: 299, column: 6, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1825, file: !2, line: 299, column: 6)
!1838 = !DILocation(line: 299, column: 12, scope: !1837)
!1839 = !DILocation(line: 299, column: 14, scope: !1837)
!1840 = !DILocation(line: 299, column: 17, scope: !1837)
!1841 = !DILocation(line: 299, column: 25, scope: !1837)
!1842 = !DILocation(line: 299, column: 23, scope: !1837)
!1843 = !DILocation(line: 299, column: 6, scope: !1825)
!1844 = !DILocation(line: 300, column: 10, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1837, file: !2, line: 299, column: 32)
!1846 = !DILocation(line: 300, column: 8, scope: !1845)
!1847 = !DILocation(line: 301, column: 6, scope: !1845)
!1848 = !DILocation(line: 304, column: 6, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1825, file: !2, line: 304, column: 6)
!1850 = !DILocation(line: 304, column: 12, scope: !1849)
!1851 = !DILocation(line: 304, column: 14, scope: !1849)
!1852 = !DILocation(line: 304, column: 17, scope: !1849)
!1853 = !DILocation(line: 304, column: 26, scope: !1849)
!1854 = !DILocation(line: 304, column: 23, scope: !1849)
!1855 = !DILocation(line: 304, column: 6, scope: !1825)
!1856 = !DILocation(line: 305, column: 10, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1849, file: !2, line: 304, column: 31)
!1858 = !DILocation(line: 305, column: 8, scope: !1857)
!1859 = !DILocation(line: 306, column: 6, scope: !1857)
!1860 = !DILocation(line: 309, column: 6, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1825, file: !2, line: 309, column: 6)
!1862 = !DILocation(line: 309, column: 12, scope: !1861)
!1863 = !DILocation(line: 309, column: 14, scope: !1861)
!1864 = !DILocation(line: 309, column: 17, scope: !1861)
!1865 = !DILocation(line: 309, column: 25, scope: !1861)
!1866 = !DILocation(line: 309, column: 23, scope: !1861)
!1867 = !DILocation(line: 309, column: 6, scope: !1825)
!1868 = !DILocation(line: 310, column: 10, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1861, file: !2, line: 309, column: 30)
!1870 = !DILocation(line: 310, column: 8, scope: !1869)
!1871 = !DILocation(line: 311, column: 6, scope: !1869)
!1872 = !DILocation(line: 313, column: 5, scope: !1825)
!1873 = !DILocation(line: 293, column: 32, scope: !1819)
!1874 = !DILocation(line: 293, column: 34, scope: !1819)
!1875 = !DILocation(line: 293, column: 33, scope: !1819)
!1876 = !DILocation(line: 293, column: 36, scope: !1819)
!1877 = !DILocation(line: 293, column: 41, scope: !1819)
!1878 = !DILocation(line: 293, column: 39, scope: !1819)
!1879 = !DILocation(line: 293, column: 29, scope: !1819)
!1880 = !DILocation(line: 293, column: 5, scope: !1819)
!1881 = distinct !{!1881, !1822, !1882, !1236}
!1882 = !DILocation(line: 313, column: 5, scope: !1814)
!1883 = !DILocation(line: 316, column: 5, scope: !1762)
!1884 = !DILocation(line: 316, column: 12, scope: !1762)
!1885 = !DILocation(line: 316, column: 14, scope: !1762)
!1886 = !DILocation(line: 316, column: 18, scope: !1762)
!1887 = !DILocation(line: 316, column: 21, scope: !1762)
!1888 = !DILocation(line: 316, column: 27, scope: !1762)
!1889 = !DILocation(line: 316, column: 29, scope: !1762)
!1890 = !DILocation(line: 316, column: 30, scope: !1762)
!1891 = !DILocation(line: 316, column: 34, scope: !1762)
!1892 = !DILocation(line: 316, column: 41, scope: !1762)
!1893 = !DILocation(line: 316, column: 38, scope: !1762)
!1894 = !DILocation(line: 0, scope: !1762)
!1895 = !DILocation(line: 317, column: 3, scope: !1762)
!1896 = distinct !{!1896, !1883, !1895, !1236}
!1897 = !DILocation(line: 320, column: 9, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1762, file: !2, line: 320, column: 9)
!1899 = !DILocation(line: 320, column: 10, scope: !1898)
!1900 = !DILocation(line: 320, column: 15, scope: !1898)
!1901 = !DILocation(line: 320, column: 21, scope: !1898)
!1902 = !DILocation(line: 320, column: 13, scope: !1898)
!1903 = !DILocation(line: 320, column: 28, scope: !1898)
!1904 = !DILocation(line: 321, column: 2, scope: !1898)
!1905 = !DILocation(line: 321, column: 8, scope: !1898)
!1906 = !DILocation(line: 321, column: 10, scope: !1898)
!1907 = !DILocation(line: 321, column: 11, scope: !1898)
!1908 = !DILocation(line: 321, column: 15, scope: !1898)
!1909 = !DILocation(line: 321, column: 24, scope: !1898)
!1910 = !DILocation(line: 321, column: 21, scope: !1898)
!1911 = !DILocation(line: 321, column: 28, scope: !1898)
!1912 = !DILocation(line: 322, column: 2, scope: !1898)
!1913 = !DILocation(line: 322, column: 8, scope: !1898)
!1914 = !DILocation(line: 322, column: 10, scope: !1898)
!1915 = !DILocation(line: 322, column: 11, scope: !1898)
!1916 = !DILocation(line: 322, column: 15, scope: !1898)
!1917 = !DILocation(line: 322, column: 24, scope: !1898)
!1918 = !DILocation(line: 322, column: 21, scope: !1898)
!1919 = !DILocation(line: 320, column: 9, scope: !1762)
!1920 = !DILocation(line: 323, column: 3, scope: !1898)
!1921 = !DILocation(line: 323, column: 2, scope: !1898)
!1922 = !DILocation(line: 325, column: 10, scope: !1762)
!1923 = !DILocation(line: 325, column: 16, scope: !1762)
!1924 = !DILocation(line: 325, column: 18, scope: !1762)
!1925 = !DILocation(line: 325, column: 7, scope: !1762)
!1926 = !DILocation(line: 327, column: 12, scope: !1762)
!1927 = !DILocation(line: 327, column: 5, scope: !1762)
!1928 = !DILocation(line: 328, column: 1, scope: !1762)
!1929 = distinct !DISubprogram(name: "cram_seek_to_refpos", scope: !2, file: !2, line: 344, type: !1930, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !1933)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!69, !127, !1932}
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!1933 = !{!1934, !1935, !1936}
!1934 = !DILocalVariable(name: "fd", arg: 1, scope: !1929, file: !2, line: 344, type: !127)
!1935 = !DILocalVariable(name: "r", arg: 2, scope: !1929, file: !2, line: 344, type: !1932)
!1936 = !DILocalVariable(name: "e", scope: !1929, file: !2, line: 345, type: !977)
!1937 = !DILocation(line: 344, column: 34, scope: !1929)
!1938 = !DILocation(line: 344, column: 50, scope: !1929)
!1939 = !DILocation(line: 345, column: 5, scope: !1929)
!1940 = !DILocation(line: 345, column: 17, scope: !1929)
!1941 = !DILocation(line: 348, column: 31, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1929, file: !2, line: 348, column: 9)
!1943 = !DILocation(line: 348, column: 35, scope: !1942)
!1944 = !DILocation(line: 348, column: 38, scope: !1942)
!1945 = !{!1172, !1161, i64 0}
!1946 = !DILocation(line: 348, column: 45, scope: !1942)
!1947 = !DILocation(line: 348, column: 48, scope: !1942)
!1948 = !{!1172, !1161, i64 4}
!1949 = !DILocation(line: 348, column: 14, scope: !1942)
!1950 = !DILocation(line: 348, column: 12, scope: !1942)
!1951 = !DILocation(line: 348, column: 9, scope: !1929)
!1952 = !DILocation(line: 349, column: 21, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !2, line: 349, column: 6)
!1954 = distinct !DILexicalBlock(scope: !1942, file: !2, line: 348, column: 63)
!1955 = !DILocation(line: 349, column: 25, scope: !1953)
!1956 = !DILocation(line: 349, column: 28, scope: !1953)
!1957 = !{!1195, !1166, i64 40}
!1958 = !DILocation(line: 349, column: 11, scope: !1953)
!1959 = !DILocation(line: 349, column: 8, scope: !1953)
!1960 = !DILocation(line: 349, column: 6, scope: !1954)
!1961 = !DILocation(line: 350, column: 25, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1953, file: !2, line: 350, column: 10)
!1963 = !DILocation(line: 350, column: 29, scope: !1962)
!1964 = !DILocation(line: 350, column: 32, scope: !1962)
!1965 = !DILocation(line: 350, column: 41, scope: !1962)
!1966 = !DILocation(line: 350, column: 45, scope: !1962)
!1967 = !{!1171, !1166, i64 34552}
!1968 = !DILocation(line: 350, column: 39, scope: !1962)
!1969 = !DILocation(line: 350, column: 15, scope: !1962)
!1970 = !DILocation(line: 350, column: 12, scope: !1962)
!1971 = !DILocation(line: 350, column: 10, scope: !1953)
!1972 = !DILocation(line: 351, column: 3, scope: !1962)
!1973 = !DILocation(line: 350, column: 70, scope: !1962)
!1974 = !DILocation(line: 352, column: 5, scope: !1954)
!1975 = !DILocation(line: 353, column: 10, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1942, file: !2, line: 352, column: 12)
!1977 = !DILocation(line: 353, column: 2, scope: !1976)
!1978 = !DILocation(line: 354, column: 2, scope: !1976)
!1979 = !DILocation(line: 357, column: 9, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1929, file: !2, line: 357, column: 9)
!1981 = !DILocation(line: 357, column: 13, scope: !1980)
!1982 = !{!1171, !1137, i64 56}
!1983 = !DILocation(line: 357, column: 9, scope: !1929)
!1984 = !DILocation(line: 358, column: 22, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1980, file: !2, line: 357, column: 18)
!1986 = !DILocation(line: 358, column: 26, scope: !1985)
!1987 = !DILocation(line: 358, column: 2, scope: !1985)
!1988 = !DILocation(line: 359, column: 2, scope: !1985)
!1989 = !DILocation(line: 359, column: 6, scope: !1985)
!1990 = !DILocation(line: 359, column: 10, scope: !1985)
!1991 = !DILocation(line: 360, column: 5, scope: !1985)
!1992 = !DILocation(line: 362, column: 5, scope: !1929)
!1993 = !DILocation(line: 363, column: 1, scope: !1929)
!1994 = !DISubprogram(name: "cram_seek", scope: !1669, file: !1669, line: 472, type: !1995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!69, !127, !146, !69}
!1997 = !DISubprogram(name: "cram_free_container", scope: !1669, file: !1669, line: 297, type: !1998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{null, !318}
!2000 = distinct !DISubprogram(name: "cram_index_build", scope: !2, file: !2, line: 427, type: !125, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !2001)
!2001 = !{!2002, !2003, !2004, !2005, !2006, !2007, !2008, !2024, !2025, !2027, !2031, !2032}
!2002 = !DILocalVariable(name: "fd", arg: 1, scope: !2000, file: !2, line: 427, type: !127)
!2003 = !DILocalVariable(name: "fn_base", arg: 2, scope: !2000, file: !2, line: 427, type: !276)
!2004 = !DILocalVariable(name: "c", scope: !2000, file: !2, line: 428, type: !318)
!2005 = !DILocalVariable(name: "cpos", scope: !2000, file: !2, line: 429, type: !146)
!2006 = !DILocalVariable(name: "spos", scope: !2000, file: !2, line: 429, type: !146)
!2007 = !DILocalVariable(name: "hpos", scope: !2000, file: !2, line: 429, type: !146)
!2008 = !DILocalVariable(name: "fp", scope: !2000, file: !2, line: 430, type: !2009)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "zfp", file: !2011, line: 43, baseType: !2012)
!2011 = !DIFile(filename: "./cram/zfio.h", directory: "/local-ssd/star-s7gfyo2prvaki7w6cr7mtqgyaudishwq-build/aidengro/spack-stage-star-2.7.10b-s7gfyo2prvaki7w6cr7mtqgyaudishwq/spack-src/source/htslib", checksumkind: CSK_MD5, checksum: "ac387405fad601126b5d5f0ff206f3d6")
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2011, line: 40, size: 128, elements: !2013)
!2013 = !{!2014, !2015}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !2012, file: !2011, line: 41, baseType: !844, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "gz", scope: !2012, file: !2011, line: 42, baseType: !2016, size: 64, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "gzFile", file: !2017, line: 1287, baseType: !2018)
!2017 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_pa/linux-ubuntu22.04-zen2/clang-18.0.0/zlib-ng-2.1.4-lf6r7k4krys7xeuhd6faiwtpvvvf43ts/include/zlib.h", directory: "/local-ssd/star-s7gfyo2prvaki7w6cr7mtqgyaudishwq-build", checksumkind: CSK_MD5, checksum: "6de5f76a2b2462480db006f0a81f31fb")
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gzFile_s", file: !2017, line: 1784, size: 192, elements: !2020)
!2020 = !{!2021, !2022, !2023}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "have", scope: !2019, file: !2017, line: 1785, baseType: !85, size: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2019, file: !2017, line: 1786, baseType: !370, size: 64, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2019, file: !2017, line: 1787, baseType: !146, size: 64, offset: 128)
!2024 = !DILocalVariable(name: "fn_idx", scope: !2000, file: !2, line: 431, type: !1106)
!2025 = !DILocalVariable(name: "j", scope: !2026, file: !2, line: 444, type: !69)
!2026 = distinct !DILexicalBlock(scope: !2000, file: !2, line: 443, column: 43)
!2027 = !DILocalVariable(name: "buf", scope: !2028, file: !2, line: 463, type: !308)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !2, line: 462, column: 48)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !2, line: 462, column: 9)
!2030 = distinct !DILexicalBlock(scope: !2026, file: !2, line: 462, column: 9)
!2031 = !DILocalVariable(name: "s", scope: !2028, file: !2, line: 464, type: !420)
!2032 = !DILocalVariable(name: "sz", scope: !2028, file: !2, line: 465, type: !69)
!2033 = !DILocation(line: 427, column: 31, scope: !2000)
!2034 = !DILocation(line: 427, column: 47, scope: !2000)
!2035 = !DILocation(line: 428, column: 5, scope: !2000)
!2036 = !DILocation(line: 428, column: 21, scope: !2000)
!2037 = !DILocation(line: 429, column: 5, scope: !2000)
!2038 = !DILocation(line: 429, column: 11, scope: !2000)
!2039 = !DILocation(line: 429, column: 17, scope: !2000)
!2040 = !DILocation(line: 429, column: 23, scope: !2000)
!2041 = !DILocation(line: 430, column: 5, scope: !2000)
!2042 = !DILocation(line: 430, column: 10, scope: !2000)
!2043 = !DILocation(line: 431, column: 5, scope: !2000)
!2044 = !DILocation(line: 431, column: 10, scope: !2000)
!2045 = !DILocation(line: 433, column: 16, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2000, file: !2, line: 433, column: 9)
!2047 = !DILocation(line: 433, column: 9, scope: !2046)
!2048 = !DILocation(line: 433, column: 25, scope: !2046)
!2049 = !DILocation(line: 433, column: 9, scope: !2000)
!2050 = !DILocation(line: 434, column: 2, scope: !2046)
!2051 = !DILocation(line: 436, column: 13, scope: !2000)
!2052 = !DILocation(line: 436, column: 32, scope: !2000)
!2053 = !DILocation(line: 436, column: 5, scope: !2000)
!2054 = !DILocation(line: 437, column: 23, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2000, file: !2, line: 437, column: 9)
!2056 = !DILocation(line: 437, column: 16, scope: !2055)
!2057 = !DILocation(line: 437, column: 14, scope: !2055)
!2058 = !DILocation(line: 437, column: 9, scope: !2000)
!2059 = !DILocation(line: 438, column: 16, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2055, file: !2, line: 437, column: 39)
!2061 = !DILocation(line: 438, column: 9, scope: !2060)
!2062 = !DILocation(line: 439, column: 9, scope: !2060)
!2063 = !DILocation(line: 442, column: 18, scope: !2000)
!2064 = !DILocation(line: 442, column: 22, scope: !2000)
!2065 = !{!1171, !1137, i64 0}
!2066 = !DILocation(line: 442, column: 12, scope: !2000)
!2067 = !DILocation(line: 442, column: 10, scope: !2000)
!2068 = !DILocation(line: 443, column: 5, scope: !2000)
!2069 = !DILocation(line: 443, column: 37, scope: !2000)
!2070 = !DILocation(line: 443, column: 17, scope: !2000)
!2071 = !DILocation(line: 443, column: 15, scope: !2000)
!2072 = !DILocation(line: 444, column: 9, scope: !2026)
!2073 = !DILocation(line: 444, column: 13, scope: !2026)
!2074 = !DILocation(line: 446, column: 13, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2026, file: !2, line: 446, column: 13)
!2076 = !DILocation(line: 446, column: 17, scope: !2075)
!2077 = !{!1171, !1161, i64 48}
!2078 = !DILocation(line: 446, column: 13, scope: !2026)
!2079 = !DILocation(line: 447, column: 13, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2075, file: !2, line: 446, column: 22)
!2081 = !DILocation(line: 448, column: 13, scope: !2080)
!2082 = !DILocation(line: 451, column: 22, scope: !2026)
!2083 = !DILocation(line: 451, column: 26, scope: !2026)
!2084 = !DILocation(line: 451, column: 16, scope: !2026)
!2085 = !DILocation(line: 451, column: 14, scope: !2026)
!2086 = !DILocation(line: 453, column: 51, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2026, file: !2, line: 453, column: 13)
!2088 = !DILocation(line: 453, column: 35, scope: !2087)
!2089 = !DILocation(line: 453, column: 15, scope: !2087)
!2090 = !DILocation(line: 453, column: 18, scope: !2087)
!2091 = !DILocation(line: 453, column: 33, scope: !2087)
!2092 = !{!2093, !1137, i64 72}
!2093 = !{!"", !1161, i64 0, !1161, i64 4, !1161, i64 8, !1161, i64 12, !1161, i64 16, !1166, i64 24, !1161, i64 32, !1161, i64 36, !1161, i64 40, !1137, i64 48, !1166, i64 56, !1137, i64 64, !1137, i64 72, !1161, i64 80, !1161, i64 84, !1161, i64 88, !1161, i64 92, !1161, i64 96, !1161, i64 100, !1161, i64 104, !1161, i64 108, !1161, i64 112, !1137, i64 120, !1137, i64 128, !1161, i64 136, !1161, i64 140, !1161, i64 144, !1161, i64 148, !1161, i64 152, !1161, i64 156, !1161, i64 160, !1161, i64 164, !1161, i64 168, !1161, i64 172, !1137, i64 176, !1137, i64 184, !1137, i64 192, !1137, i64 200, !1137, i64 208, !1137, i64 216, !1137, i64 224, !1137, i64 232, !1137, i64 240, !1137, i64 248, !1137, i64 256, !1137, i64 264, !1137, i64 272, !1137, i64 280, !1137, i64 288, !1137, i64 296, !1137, i64 304, !1137, i64 312, !1137, i64 320, !1137, i64 328, !1137, i64 336, !1137, i64 344, !1137, i64 352, !1137, i64 360, !1137, i64 368, !1137, i64 376, !1137, i64 384, !1137, i64 392, !1137, i64 400, !1137, i64 408, !1137, i64 416, !1137, i64 424}
!2094 = !DILocation(line: 453, column: 13, scope: !2026)
!2095 = !DILocation(line: 454, column: 13, scope: !2087)
!2096 = !DILocation(line: 455, column: 9, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !2, line: 455, column: 9)
!2098 = distinct !DILexicalBlock(scope: !2026, file: !2, line: 455, column: 9)
!2099 = !{!2100, !1138, i64 8}
!2100 = !{!"", !1138, i64 0, !1138, i64 4, !1138, i64 8, !1161, i64 12, !1161, i64 16, !1161, i64 20, !1161, i64 24, !1137, i64 32, !1166, i64 40, !1166, i64 48, !1161, i64 56}
!2101 = !DILocation(line: 455, column: 9, scope: !2098)
!2102 = !DILocation(line: 457, column: 54, scope: !2026)
!2103 = !DILocation(line: 457, column: 58, scope: !2026)
!2104 = !DILocation(line: 457, column: 61, scope: !2026)
!2105 = !DILocation(line: 457, column: 23, scope: !2026)
!2106 = !DILocation(line: 457, column: 9, scope: !2026)
!2107 = !DILocation(line: 457, column: 12, scope: !2026)
!2108 = !DILocation(line: 457, column: 21, scope: !2026)
!2109 = !{!2093, !1137, i64 64}
!2110 = !DILocation(line: 458, column: 14, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2026, file: !2, line: 458, column: 13)
!2112 = !DILocation(line: 458, column: 17, scope: !2111)
!2113 = !DILocation(line: 458, column: 13, scope: !2026)
!2114 = !DILocation(line: 459, column: 13, scope: !2111)
!2115 = !DILocation(line: 462, column: 16, scope: !2030)
!2116 = !DILocation(line: 462, column: 14, scope: !2030)
!2117 = !DILocation(line: 462, column: 21, scope: !2029)
!2118 = !DILocation(line: 462, column: 25, scope: !2029)
!2119 = !DILocation(line: 462, column: 28, scope: !2029)
!2120 = !{!2093, !1161, i64 40}
!2121 = !DILocation(line: 462, column: 23, scope: !2029)
!2122 = !DILocation(line: 462, column: 9, scope: !2030)
!2123 = !DILocation(line: 463, column: 13, scope: !2028)
!2124 = !DILocation(line: 463, column: 18, scope: !2028)
!2125 = !DILocation(line: 464, column: 13, scope: !2028)
!2126 = !DILocation(line: 464, column: 25, scope: !2028)
!2127 = !DILocation(line: 465, column: 13, scope: !2028)
!2128 = !DILocation(line: 465, column: 17, scope: !2028)
!2129 = !DILocation(line: 467, column: 26, scope: !2028)
!2130 = !DILocation(line: 467, column: 30, scope: !2028)
!2131 = !DILocation(line: 467, column: 20, scope: !2028)
!2132 = !DILocation(line: 467, column: 18, scope: !2028)
!2133 = !DILocation(line: 468, column: 13, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !2, line: 468, column: 13)
!2135 = distinct !DILexicalBlock(scope: !2028, file: !2, line: 468, column: 13)
!2136 = !{!2093, !1166, i64 56}
!2137 = !{!2093, !1137, i64 48}
!2138 = !DILocation(line: 468, column: 13, scope: !2135)
!2139 = !DILocation(line: 470, column: 39, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2028, file: !2, line: 470, column: 17)
!2141 = !DILocation(line: 470, column: 23, scope: !2140)
!2142 = !DILocation(line: 470, column: 21, scope: !2140)
!2143 = !DILocation(line: 470, column: 17, scope: !2028)
!2144 = !DILocation(line: 471, column: 11, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2140, file: !2, line: 470, column: 45)
!2146 = !DILocation(line: 471, column: 3, scope: !2145)
!2147 = !DILocation(line: 472, column: 3, scope: !2145)
!2148 = !DILocation(line: 475, column: 30, scope: !2028)
!2149 = !DILocation(line: 475, column: 34, scope: !2028)
!2150 = !DILocation(line: 475, column: 24, scope: !2028)
!2151 = !DILocation(line: 475, column: 40, scope: !2028)
!2152 = !DILocation(line: 475, column: 38, scope: !2028)
!2153 = !DILocation(line: 475, column: 18, scope: !2028)
!2154 = !DILocation(line: 475, column: 16, scope: !2028)
!2155 = !DILocation(line: 477, column: 10, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2028, file: !2, line: 477, column: 10)
!2157 = !DILocation(line: 477, column: 13, scope: !2156)
!2158 = !{!2159, !1137, i64 0}
!2159 = !{!"cram_slice", !1137, i64 0, !1137, i64 8, !1137, i64 16, !1137, i64 24, !1161, i64 32, !1161, i64 36, !1166, i64 40, !1137, i64 48, !1137, i64 56, !1161, i64 64, !1161, i64 68, !1137, i64 72, !1137, i64 80, !1137, i64 88, !1137, i64 96, !1137, i64 104, !1137, i64 112, !1137, i64 120, !1161, i64 128, !1161, i64 132, !1137, i64 136, !1161, i64 144, !1137, i64 152, !1137, i64 160, !1137, i64 168, !1161, i64 176, !1161, i64 180, !1161, i64 184}
!2160 = !DILocation(line: 477, column: 18, scope: !2156)
!2161 = !{!2162, !1161, i64 4}
!2162 = !{!"", !1138, i64 0, !1161, i64 4, !1161, i64 8, !1161, i64 12, !1161, i64 16, !1161, i64 20, !1161, i64 24, !1161, i64 28, !1137, i64 32, !1161, i64 40, !1138, i64 44}
!2163 = !DILocation(line: 477, column: 29, scope: !2156)
!2164 = !DILocation(line: 477, column: 10, scope: !2028)
!2165 = !DILocation(line: 478, column: 29, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2156, file: !2, line: 477, column: 36)
!2167 = !DILocation(line: 478, column: 33, scope: !2166)
!2168 = !DILocation(line: 478, column: 36, scope: !2166)
!2169 = !DILocation(line: 478, column: 39, scope: !2166)
!2170 = !DILocation(line: 479, column: 8, scope: !2166)
!2171 = !DILocation(line: 479, column: 14, scope: !2166)
!2172 = !DILocation(line: 479, column: 17, scope: !2166)
!2173 = !DILocation(line: 479, column: 26, scope: !2166)
!2174 = !DILocation(line: 479, column: 30, scope: !2166)
!2175 = !DILocation(line: 478, column: 3, scope: !2166)
!2176 = !DILocation(line: 480, column: 6, scope: !2166)
!2177 = !DILocation(line: 481, column: 11, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2156, file: !2, line: 480, column: 13)
!2179 = !DILocation(line: 482, column: 4, scope: !2178)
!2180 = !DILocation(line: 482, column: 7, scope: !2178)
!2181 = !DILocation(line: 482, column: 12, scope: !2178)
!2182 = !DILocation(line: 482, column: 24, scope: !2178)
!2183 = !DILocation(line: 482, column: 27, scope: !2178)
!2184 = !DILocation(line: 482, column: 32, scope: !2178)
!2185 = !{!2162, !1161, i64 8}
!2186 = !DILocation(line: 483, column: 4, scope: !2178)
!2187 = !DILocation(line: 483, column: 7, scope: !2178)
!2188 = !DILocation(line: 483, column: 12, scope: !2178)
!2189 = !{!2162, !1161, i64 12}
!2190 = !DILocation(line: 483, column: 35, scope: !2178)
!2191 = !DILocation(line: 484, column: 4, scope: !2178)
!2192 = !DILocation(line: 484, column: 7, scope: !2178)
!2193 = !DILocation(line: 484, column: 16, scope: !2178)
!2194 = !DILocation(line: 484, column: 20, scope: !2178)
!2195 = !DILocation(line: 481, column: 3, scope: !2178)
!2196 = !DILocation(line: 485, column: 10, scope: !2178)
!2197 = !DILocation(line: 485, column: 15, scope: !2178)
!2198 = !DILocation(line: 485, column: 3, scope: !2178)
!2199 = !DILocation(line: 488, column: 29, scope: !2028)
!2200 = !DILocation(line: 488, column: 13, scope: !2028)
!2201 = !DILocation(line: 489, column: 9, scope: !2029)
!2202 = !DILocation(line: 489, column: 9, scope: !2028)
!2203 = !DILocation(line: 462, column: 44, scope: !2029)
!2204 = !DILocation(line: 462, column: 9, scope: !2029)
!2205 = distinct !{!2205, !2122, !2206, !1236}
!2206 = !DILocation(line: 489, column: 9, scope: !2030)
!2207 = !DILocation(line: 491, column: 22, scope: !2026)
!2208 = !DILocation(line: 491, column: 26, scope: !2026)
!2209 = !DILocation(line: 491, column: 16, scope: !2026)
!2210 = !DILocation(line: 491, column: 14, scope: !2026)
!2211 = !DILocation(line: 492, column: 9, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !2, line: 492, column: 9)
!2213 = distinct !DILexicalBlock(scope: !2026, file: !2, line: 492, column: 9)
!2214 = !{!2093, !1161, i64 0}
!2215 = !DILocation(line: 492, column: 9, scope: !2213)
!2216 = !DILocation(line: 494, column: 29, scope: !2026)
!2217 = !DILocation(line: 494, column: 9, scope: !2026)
!2218 = !DILocation(line: 495, column: 5, scope: !2000)
!2219 = distinct !{!2219, !2068, !2218, !1236}
!2220 = !DILocation(line: 496, column: 9, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2000, file: !2, line: 496, column: 9)
!2222 = !DILocation(line: 496, column: 13, scope: !2221)
!2223 = !DILocation(line: 496, column: 9, scope: !2000)
!2224 = !DILocation(line: 497, column: 10, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2221, file: !2, line: 496, column: 18)
!2226 = !DILocation(line: 497, column: 2, scope: !2225)
!2227 = !DILocation(line: 498, column: 2, scope: !2225)
!2228 = !DILocation(line: 502, column: 20, scope: !2000)
!2229 = !DILocation(line: 502, column: 12, scope: !2000)
!2230 = !DILocation(line: 502, column: 5, scope: !2000)
!2231 = !DILocation(line: 503, column: 1, scope: !2000)
!2232 = !DISubprogram(name: "strlen", scope: !2233, file: !2233, line: 407, type: !2234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2233 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!181, !276}
!2236 = !DISubprogram(name: "zfopen", scope: !2011, file: !2011, line: 49, type: !2237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!2009, !276, !276}
!2239 = distinct !DISubprogram(name: "htell", scope: !135, file: !135, line: 104, type: !2240, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !2242)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!146, !1114}
!2242 = !{!2243}
!2243 = !DILocalVariable(name: "fp", arg: 1, scope: !2239, file: !135, line: 104, type: !1114)
!2244 = !DILocation(line: 104, column: 34, scope: !2239)
!2245 = !DILocation(line: 106, column: 12, scope: !2239)
!2246 = !DILocation(line: 106, column: 16, scope: !2239)
!2247 = !{!1560, !1166, i64 40}
!2248 = !DILocation(line: 106, column: 26, scope: !2239)
!2249 = !DILocation(line: 106, column: 30, scope: !2239)
!2250 = !DILocation(line: 106, column: 38, scope: !2239)
!2251 = !DILocation(line: 106, column: 42, scope: !2239)
!2252 = !{!1560, !1137, i64 0}
!2253 = !DILocation(line: 106, column: 36, scope: !2239)
!2254 = !DILocation(line: 106, column: 23, scope: !2239)
!2255 = !DILocation(line: 106, column: 5, scope: !2239)
!2256 = !DISubprogram(name: "cram_read_container", scope: !1669, file: !1669, line: 305, type: !2257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!318, !127}
!2259 = !DISubprogram(name: "cram_read_block", scope: !1669, file: !1669, line: 138, type: !2260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!358, !127}
!2262 = !DISubprogram(name: "__assert_fail", scope: !2263, file: !2263, line: 69, type: !2264, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2263 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!2264 = !DISubroutineType(types: !2265)
!2265 = !{null, !276, !276, !85, !276}
!2266 = !DISubprogram(name: "cram_decode_compression_header", scope: !2267, file: !2267, line: 84, type: !2268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2267 = !DIFile(filename: "./cram/cram_decode.h", directory: "/local-ssd/star-s7gfyo2prvaki7w6cr7mtqgyaudishwq-build/aidengro/spack-stage-star-2.7.10b-s7gfyo2prvaki7w6cr7mtqgyaudishwq/spack-src/source/htslib", checksumkind: CSK_MD5, checksum: "ed2bb1e6c75205cecc7209dcb985f695")
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!337, !127, !358}
!2270 = !DISubprogram(name: "cram_read_slice", scope: !1669, file: !1669, line: 378, type: !2271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!420, !127}
!2273 = !DISubprogram(name: "zfclose", scope: !2011, file: !2011, line: 50, type: !2274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!69, !2009}
!2276 = distinct !DISubprogram(name: "cram_index_build_multiref", scope: !2, file: !2, line: 374, type: !2277, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !2279)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!69, !127, !318, !420, !2009, !146, !323, !69}
!2279 = !{!2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291}
!2280 = !DILocalVariable(name: "fd", arg: 1, scope: !2276, file: !2, line: 374, type: !127)
!2281 = !DILocalVariable(name: "c", arg: 2, scope: !2276, file: !2, line: 375, type: !318)
!2282 = !DILocalVariable(name: "s", arg: 3, scope: !2276, file: !2, line: 376, type: !420)
!2283 = !DILocalVariable(name: "fp", arg: 4, scope: !2276, file: !2, line: 377, type: !2009)
!2284 = !DILocalVariable(name: "cpos", arg: 5, scope: !2276, file: !2, line: 378, type: !146)
!2285 = !DILocalVariable(name: "landmark", arg: 6, scope: !2276, file: !2, line: 379, type: !323)
!2286 = !DILocalVariable(name: "sz", arg: 7, scope: !2276, file: !2, line: 380, type: !69)
!2287 = !DILocalVariable(name: "i", scope: !2276, file: !2, line: 381, type: !69)
!2288 = !DILocalVariable(name: "ref", scope: !2276, file: !2, line: 381, type: !69)
!2289 = !DILocalVariable(name: "ref_start", scope: !2276, file: !2, line: 381, type: !69)
!2290 = !DILocalVariable(name: "ref_end", scope: !2276, file: !2, line: 381, type: !69)
!2291 = !DILocalVariable(name: "buf", scope: !2276, file: !2, line: 382, type: !308)
!2292 = !DILocation(line: 374, column: 47, scope: !2276)
!2293 = !DILocation(line: 375, column: 26, scope: !2276)
!2294 = !DILocation(line: 376, column: 22, scope: !2276)
!2295 = !DILocation(line: 377, column: 15, scope: !2276)
!2296 = !DILocation(line: 378, column: 16, scope: !2276)
!2297 = !DILocation(line: 379, column: 18, scope: !2276)
!2298 = !DILocation(line: 380, column: 14, scope: !2276)
!2299 = !DILocation(line: 381, column: 5, scope: !2276)
!2300 = !DILocation(line: 381, column: 9, scope: !2276)
!2301 = !DILocation(line: 381, column: 12, scope: !2276)
!2302 = !DILocation(line: 381, column: 22, scope: !2276)
!2303 = !DILocation(line: 381, column: 37, scope: !2276)
!2304 = !DILocation(line: 382, column: 5, scope: !2276)
!2305 = !DILocation(line: 382, column: 10, scope: !2276)
!2306 = !DILocation(line: 384, column: 32, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2276, file: !2, line: 384, column: 9)
!2308 = !DILocation(line: 384, column: 36, scope: !2307)
!2309 = !DILocation(line: 384, column: 39, scope: !2307)
!2310 = !DILocation(line: 384, column: 42, scope: !2307)
!2311 = !DILocation(line: 384, column: 46, scope: !2307)
!2312 = !{!1171, !1137, i64 24}
!2313 = !DILocation(line: 384, column: 14, scope: !2307)
!2314 = !DILocation(line: 384, column: 11, scope: !2307)
!2315 = !DILocation(line: 384, column: 9, scope: !2276)
!2316 = !DILocation(line: 385, column: 2, scope: !2307)
!2317 = !DILocation(line: 387, column: 13, scope: !2276)
!2318 = !DILocation(line: 388, column: 12, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2276, file: !2, line: 388, column: 5)
!2320 = !DILocation(line: 388, column: 10, scope: !2319)
!2321 = !DILocation(line: 388, column: 17, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2319, file: !2, line: 388, column: 5)
!2323 = !DILocation(line: 388, column: 21, scope: !2322)
!2324 = !DILocation(line: 388, column: 24, scope: !2322)
!2325 = !DILocation(line: 388, column: 29, scope: !2322)
!2326 = !{!2162, !1161, i64 16}
!2327 = !DILocation(line: 388, column: 19, scope: !2322)
!2328 = !DILocation(line: 388, column: 5, scope: !2319)
!2329 = !DILocation(line: 389, column: 6, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !2, line: 389, column: 6)
!2331 = distinct !DILexicalBlock(scope: !2322, file: !2, line: 388, column: 47)
!2332 = !DILocation(line: 389, column: 9, scope: !2330)
!2333 = !{!2159, !1137, i64 48}
!2334 = !DILocation(line: 389, column: 15, scope: !2330)
!2335 = !DILocation(line: 389, column: 18, scope: !2330)
!2336 = !{!2337, !1161, i64 8}
!2337 = !{!"", !1137, i64 0, !1161, i64 8, !1161, i64 12, !1161, i64 16, !1161, i64 20, !1161, i64 24, !1161, i64 28, !1161, i64 32, !1161, i64 36, !1161, i64 40, !1161, i64 44, !1161, i64 48, !1161, i64 52, !1161, i64 56, !1161, i64 60, !1161, i64 64, !1161, i64 68, !1161, i64 72, !1161, i64 76, !1161, i64 80, !1161, i64 84, !1161, i64 88, !1161, i64 92, !1161, i64 96, !1161, i64 100, !1161, i64 104, !1161, i64 108}
!2338 = !DILocation(line: 389, column: 28, scope: !2330)
!2339 = !DILocation(line: 389, column: 25, scope: !2330)
!2340 = !DILocation(line: 389, column: 6, scope: !2331)
!2341 = !DILocation(line: 390, column: 10, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !2, line: 390, column: 10)
!2343 = distinct !DILexicalBlock(scope: !2330, file: !2, line: 389, column: 33)
!2344 = !DILocation(line: 390, column: 20, scope: !2342)
!2345 = !DILocation(line: 390, column: 23, scope: !2342)
!2346 = !DILocation(line: 390, column: 29, scope: !2342)
!2347 = !DILocation(line: 390, column: 32, scope: !2342)
!2348 = !{!2337, !1161, i64 92}
!2349 = !DILocation(line: 390, column: 18, scope: !2342)
!2350 = !DILocation(line: 390, column: 10, scope: !2343)
!2351 = !DILocation(line: 391, column: 13, scope: !2342)
!2352 = !DILocation(line: 391, column: 16, scope: !2342)
!2353 = !DILocation(line: 391, column: 22, scope: !2342)
!2354 = !DILocation(line: 391, column: 25, scope: !2342)
!2355 = !DILocation(line: 391, column: 11, scope: !2342)
!2356 = !DILocation(line: 391, column: 3, scope: !2342)
!2357 = !DILocation(line: 392, column: 6, scope: !2343)
!2358 = !DILocation(line: 395, column: 6, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2331, file: !2, line: 395, column: 6)
!2360 = !DILocation(line: 395, column: 10, scope: !2359)
!2361 = !DILocation(line: 395, column: 6, scope: !2331)
!2362 = !DILocation(line: 396, column: 14, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2359, file: !2, line: 395, column: 17)
!2364 = !DILocation(line: 397, column: 7, scope: !2363)
!2365 = !DILocation(line: 397, column: 12, scope: !2363)
!2366 = !DILocation(line: 397, column: 23, scope: !2363)
!2367 = !DILocation(line: 397, column: 33, scope: !2363)
!2368 = !DILocation(line: 397, column: 31, scope: !2363)
!2369 = !DILocation(line: 397, column: 43, scope: !2363)
!2370 = !DILocation(line: 398, column: 16, scope: !2363)
!2371 = !DILocation(line: 398, column: 22, scope: !2363)
!2372 = !DILocation(line: 398, column: 32, scope: !2363)
!2373 = !DILocation(line: 396, column: 6, scope: !2363)
!2374 = !DILocation(line: 399, column: 13, scope: !2363)
!2375 = !DILocation(line: 399, column: 18, scope: !2363)
!2376 = !DILocation(line: 399, column: 6, scope: !2363)
!2377 = !DILocation(line: 400, column: 2, scope: !2363)
!2378 = !DILocation(line: 402, column: 8, scope: !2331)
!2379 = !DILocation(line: 402, column: 11, scope: !2331)
!2380 = !DILocation(line: 402, column: 17, scope: !2331)
!2381 = !DILocation(line: 402, column: 20, scope: !2331)
!2382 = !DILocation(line: 402, column: 6, scope: !2331)
!2383 = !DILocation(line: 403, column: 14, scope: !2331)
!2384 = !DILocation(line: 403, column: 17, scope: !2331)
!2385 = !DILocation(line: 403, column: 23, scope: !2331)
!2386 = !DILocation(line: 403, column: 26, scope: !2331)
!2387 = !{!2337, !1161, i64 24}
!2388 = !DILocation(line: 403, column: 12, scope: !2331)
!2389 = !DILocation(line: 404, column: 10, scope: !2331)
!2390 = !DILocation(line: 405, column: 5, scope: !2331)
!2391 = !DILocation(line: 388, column: 43, scope: !2322)
!2392 = !DILocation(line: 388, column: 5, scope: !2322)
!2393 = distinct !{!2393, !2328, !2394, !1236}
!2394 = !DILocation(line: 405, column: 5, scope: !2319)
!2395 = !DILocation(line: 407, column: 9, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2276, file: !2, line: 407, column: 9)
!2397 = !DILocation(line: 407, column: 13, scope: !2396)
!2398 = !DILocation(line: 407, column: 9, scope: !2276)
!2399 = !DILocation(line: 408, column: 10, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2396, file: !2, line: 407, column: 20)
!2401 = !DILocation(line: 409, column: 3, scope: !2400)
!2402 = !DILocation(line: 409, column: 8, scope: !2400)
!2403 = !DILocation(line: 409, column: 19, scope: !2400)
!2404 = !DILocation(line: 409, column: 29, scope: !2400)
!2405 = !DILocation(line: 409, column: 27, scope: !2400)
!2406 = !DILocation(line: 409, column: 39, scope: !2400)
!2407 = !DILocation(line: 410, column: 12, scope: !2400)
!2408 = !DILocation(line: 410, column: 18, scope: !2400)
!2409 = !DILocation(line: 410, column: 28, scope: !2400)
!2410 = !DILocation(line: 408, column: 2, scope: !2400)
!2411 = !DILocation(line: 411, column: 9, scope: !2400)
!2412 = !DILocation(line: 411, column: 14, scope: !2400)
!2413 = !DILocation(line: 411, column: 2, scope: !2400)
!2414 = !DILocation(line: 412, column: 5, scope: !2400)
!2415 = !DILocation(line: 414, column: 5, scope: !2276)
!2416 = !DILocation(line: 415, column: 1, scope: !2276)
!2417 = !DISubprogram(name: "zfputs", scope: !2011, file: !2011, line: 48, type: !2418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!69, !107, !2009}
!2420 = !DISubprogram(name: "cram_free_slice", scope: !1669, file: !1669, line: 355, type: !2421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{null, !420}
!2423 = !DISubprogram(name: "hread2", scope: !135, file: !135, line: 141, type: !2424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!113, !1114, !247, !179, !179}
!2426 = !DISubprogram(name: "cram_decode_slice", scope: !2267, file: !2267, line: 104, type: !2427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!69, !127, !318, !420, !168}
