; ModuleID = 'samples/419.bc'
source_filename = "struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.definition_struct = type { %struct.bt_definition, ptr, ptr }
%struct.bt_definition = type { ptr, i32, i32, i32, i32, ptr }
%struct._GPtrArray = type { ptr, i32 }
%struct.bt_declaration = type { i32, i64, i32, ptr, ptr, ptr }
%struct.bt_stream_pos = type { ptr, ptr, ptr, ptr, ptr }
%struct.declaration_struct = type { %struct.bt_declaration, ptr, ptr, ptr }
%struct._GArray = type { ptr, i32 }
%struct.declaration_field = type { i32, ptr }

@.str = private unnamed_addr constant [35 x i8] c"pos->rw_table[dispatch_id] != NULL\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [30 x i8] c"../include/babeltrace/types.h\00", align 1, !dbg !7
@__PRETTY_FUNCTION__.generic_rw = private unnamed_addr constant [63 x i8] c"int generic_rw(struct bt_stream_pos *, struct bt_definition *)\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [22 x i8] c"!ret || ret == -EPERM\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [9 x i8] c"struct.c\00", align 1, !dbg !24
@__PRETTY_FUNCTION__._struct_definition_new = private unnamed_addr constant [124 x i8] c"struct bt_definition *_struct_definition_new(struct bt_declaration *, struct definition_scope *, GQuark, int, const char *)\00", align 1, !dbg !29
@.str.4 = private unnamed_addr constant [58 x i8] c"_struct->fields->len == _struct->declaration->fields->len\00", align 1, !dbg !34
@__PRETTY_FUNCTION__._struct_definition_free = private unnamed_addr constant [53 x i8] c"void _struct_definition_free(struct bt_definition *)\00", align 1, !dbg !39

; Function Attrs: nounwind uwtable
define i32 @bt_struct_rw(ptr noundef %ppos, ptr noundef %definition) #0 !dbg !167 {
entry:
  %retval = alloca i32, align 4
  %ppos.addr = alloca ptr, align 8
  %definition.addr = alloca ptr, align 8
  %struct_definition = alloca ptr, align 8
  %__ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %i = alloca i64, align 8
  %ret = alloca i32, align 4
  %field = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ppos, ptr %ppos.addr, align 8, !tbaa !206
  tail call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !193, metadata !DIExpression()), !dbg !210
  store ptr %definition, ptr %definition.addr, align 8, !tbaa !206
  tail call void @llvm.dbg.declare(metadata ptr %definition.addr, metadata !194, metadata !DIExpression()), !dbg !211
  call void @llvm.lifetime.start.p0(i64 8, ptr %struct_definition) #10, !dbg !212
  tail call void @llvm.dbg.declare(metadata ptr %struct_definition, metadata !195, metadata !DIExpression()), !dbg !213
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !214
  tail call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !196, metadata !DIExpression()), !dbg !214
  %0 = load ptr, ptr %definition.addr, align 8, !dbg !214, !tbaa !206
  store ptr %0, ptr %__ptr, align 8, !dbg !214, !tbaa !206
  %1 = load ptr, ptr %__ptr, align 8, !dbg !214, !tbaa !206
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 0, !dbg !214
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !214, !tbaa !206
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !215
  %2 = load ptr, ptr %tmp, align 8, !dbg !214, !tbaa !206
  store ptr %2, ptr %struct_definition, align 8, !dbg !213, !tbaa !206
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !216
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !200, metadata !DIExpression()), !dbg !217
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !218
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !201, metadata !DIExpression()), !dbg !219
  store i64 0, ptr %i, align 8, !dbg !220, !tbaa !221
  br label %for.cond, !dbg !223

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, ptr %i, align 8, !dbg !224, !tbaa !221
  %4 = load ptr, ptr %struct_definition, align 8, !dbg !225, !tbaa !206
  %fields = getelementptr inbounds %struct.definition_struct, ptr %4, i32 0, i32 2, !dbg !226
  %5 = load ptr, ptr %fields, align 8, !dbg !226, !tbaa !227
  %len = getelementptr inbounds %struct._GPtrArray, ptr %5, i32 0, i32 1, !dbg !231
  %6 = load i32, ptr %len, align 8, !dbg !231, !tbaa !232
  %conv = zext i32 %6 to i64, !dbg !225
  %cmp = icmp ult i64 %3, %conv, !dbg !234
  br i1 %cmp, label %for.body, label %for.end, !dbg !235

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %field) #10, !dbg !236
  tail call void @llvm.dbg.declare(metadata ptr %field, metadata !202, metadata !DIExpression()), !dbg !237
  %7 = load ptr, ptr %struct_definition, align 8, !dbg !238, !tbaa !206
  %fields2 = getelementptr inbounds %struct.definition_struct, ptr %7, i32 0, i32 2, !dbg !238
  %8 = load ptr, ptr %fields2, align 8, !dbg !238, !tbaa !227
  %pdata = getelementptr inbounds %struct._GPtrArray, ptr %8, i32 0, i32 0, !dbg !238
  %9 = load ptr, ptr %pdata, align 8, !dbg !238, !tbaa !239
  %10 = load i64, ptr %i, align 8, !dbg !238, !tbaa !221
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 %10, !dbg !238
  %11 = load ptr, ptr %arrayidx, align 8, !dbg !238, !tbaa !206
  store ptr %11, ptr %field, align 8, !dbg !237, !tbaa !206
  %12 = load ptr, ptr %ppos.addr, align 8, !dbg !240, !tbaa !206
  %13 = load ptr, ptr %field, align 8, !dbg !241, !tbaa !206
  %call = call i32 @generic_rw(ptr noundef %12, ptr noundef %13), !dbg !242
  store i32 %call, ptr %ret, align 4, !dbg !243, !tbaa !244
  %14 = load i32, ptr %ret, align 4, !dbg !245, !tbaa !244
  %tobool = icmp ne i32 %14, 0, !dbg !245
  br i1 %tobool, label %if.then, label %if.end, !dbg !247

if.then:                                          ; preds = %for.body
  %15 = load i32, ptr %ret, align 4, !dbg !248, !tbaa !244
  store i32 %15, ptr %retval, align 4, !dbg !249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !249

if.end:                                           ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !250
  br label %cleanup, !dbg !250

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %field) #10, !dbg !250
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup3 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !251

for.inc:                                          ; preds = %cleanup.cont
  %16 = load i64, ptr %i, align 8, !dbg !252, !tbaa !221
  %inc = add i64 %16, 1, !dbg !252
  store i64 %inc, ptr %i, align 8, !dbg !252, !tbaa !221
  br label %for.cond, !dbg !253, !llvm.loop !254

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !257
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup3, !dbg !257

cleanup3:                                         ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !258
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !258
  call void @llvm.lifetime.end.p0(i64 8, ptr %struct_definition) #10, !dbg !258
  %17 = load i32, ptr %retval, align 4, !dbg !258
  ret i32 %17, !dbg !258
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @generic_rw(ptr noundef %pos, ptr noundef %definition) #2 !dbg !259 {
entry:
  %pos.addr = alloca ptr, align 8
  %definition.addr = alloca ptr, align 8
  %dispatch_id = alloca i32, align 4
  %call = alloca ptr, align 8
  store ptr %pos, ptr %pos.addr, align 8, !tbaa !206
  tail call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !261, metadata !DIExpression()), !dbg !265
  store ptr %definition, ptr %definition.addr, align 8, !tbaa !206
  tail call void @llvm.dbg.declare(metadata ptr %definition.addr, metadata !262, metadata !DIExpression()), !dbg !266
  call void @llvm.lifetime.start.p0(i64 4, ptr %dispatch_id) #10, !dbg !267
  tail call void @llvm.dbg.declare(metadata ptr %dispatch_id, metadata !263, metadata !DIExpression()), !dbg !268
  %0 = load ptr, ptr %definition.addr, align 8, !dbg !269, !tbaa !206
  %declaration = getelementptr inbounds %struct.bt_definition, ptr %0, i32 0, i32 0, !dbg !270
  %1 = load ptr, ptr %declaration, align 8, !dbg !270, !tbaa !271
  %id = getelementptr inbounds %struct.bt_declaration, ptr %1, i32 0, i32 0, !dbg !272
  %2 = load i32, ptr %id, align 8, !dbg !272, !tbaa !273
  store i32 %2, ptr %dispatch_id, align 4, !dbg !268, !tbaa !275
  call void @llvm.lifetime.start.p0(i64 8, ptr %call) #10, !dbg !276
  tail call void @llvm.dbg.declare(metadata ptr %call, metadata !264, metadata !DIExpression()), !dbg !277
  %3 = load ptr, ptr %pos.addr, align 8, !dbg !278, !tbaa !206
  %rw_table = getelementptr inbounds %struct.bt_stream_pos, ptr %3, i32 0, i32 0, !dbg !278
  %4 = load ptr, ptr %rw_table, align 8, !dbg !278, !tbaa !281
  %5 = load i32, ptr %dispatch_id, align 4, !dbg !278, !tbaa !275
  %idxprom = zext i32 %5 to i64, !dbg !278
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom, !dbg !278
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !278, !tbaa !206
  %cmp = icmp ne ptr %6, null, !dbg !278
  br i1 %cmp, label %if.then, label %if.else, !dbg !283

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !283

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 131, ptr noundef @__PRETTY_FUNCTION__.generic_rw) #11, !dbg !278
  unreachable, !dbg !278

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %pos.addr, align 8, !dbg !284, !tbaa !206
  %rw_table1 = getelementptr inbounds %struct.bt_stream_pos, ptr %7, i32 0, i32 0, !dbg !285
  %8 = load ptr, ptr %rw_table1, align 8, !dbg !285, !tbaa !281
  %9 = load i32, ptr %dispatch_id, align 4, !dbg !286, !tbaa !275
  %idxprom2 = zext i32 %9 to i64, !dbg !284
  %arrayidx3 = getelementptr inbounds ptr, ptr %8, i64 %idxprom2, !dbg !284
  %10 = load ptr, ptr %arrayidx3, align 8, !dbg !284, !tbaa !206
  store ptr %10, ptr %call, align 8, !dbg !287, !tbaa !206
  %11 = load ptr, ptr %call, align 8, !dbg !288, !tbaa !206
  %12 = load ptr, ptr %pos.addr, align 8, !dbg !289, !tbaa !206
  %13 = load ptr, ptr %definition.addr, align 8, !dbg !290, !tbaa !206
  %call4 = call i32 %11(ptr noundef %12, ptr noundef %13), !dbg !288
  call void @llvm.lifetime.end.p0(i64 8, ptr %call) #10, !dbg !291
  call void @llvm.lifetime.end.p0(i64 4, ptr %dispatch_id) #10, !dbg !291
  ret i32 %call4, !dbg !292
}

; Function Attrs: nounwind uwtable
define ptr @bt_struct_declaration_new(ptr noundef %parent_scope, i64 noundef %min_align) #0 !dbg !293 {
entry:
  %parent_scope.addr = alloca ptr, align 8
  %min_align.addr = alloca i64, align 8
  %struct_declaration = alloca ptr, align 8
  %declaration = alloca ptr, align 8
  %__n = alloca i64, align 8
  %__s = alloca i64, align 8
  %__p = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %parent_scope, ptr %parent_scope.addr, align 8, !tbaa !206
  tail call void @llvm.dbg.declare(metadata ptr %parent_scope.addr, metadata !301, metadata !DIExpression()), !dbg !309
  store i64 %min_align, ptr %min_align.addr, align 8, !tbaa !221
  tail call void @llvm.dbg.declare(metadata ptr %min_align.addr, metadata !302, metadata !DIExpression()), !dbg !310
  call void @llvm.lifetime.start.p0(i64 8, ptr %struct_declaration) #10, !dbg !311
  tail call void @llvm.dbg.declare(metadata ptr %struct_declaration, metadata !303, metadata !DIExpression()), !dbg !312
  call void @llvm.lifetime.start.p0(i64 8, ptr %declaration) #10, !dbg !313
  tail call void @llvm.dbg.declare(metadata ptr %declaration, metadata !304, metadata !DIExpression()), !dbg !314
  call void @llvm.lifetime.start.p0(i64 8, ptr %__n) #10, !dbg !315
  tail call void @llvm.dbg.declare(metadata ptr %__n, metadata !305, metadata !DIExpression()), !dbg !315
  store i64 1, ptr %__n, align 8, !dbg !315, !tbaa !221
  call void @llvm.lifetime.start.p0(i64 8, ptr %__s) #10, !dbg !315
  tail call void @llvm.dbg.declare(metadata ptr %__s, metadata !307, metadata !DIExpression()), !dbg !315
  store i64 72, ptr %__s, align 8, !dbg !315, !tbaa !221
  call void @llvm.lifetime.start.p0(i64 8, ptr %__p) #10, !dbg !315
  tail call void @llvm.dbg.declare(metadata ptr %__p, metadata !308, metadata !DIExpression()), !dbg !315
  %0 = load i64, ptr %__s, align 8, !dbg !316, !tbaa !221
  %cmp = icmp eq i64 %0, 1, !dbg !316
  br i1 %cmp, label %if.then, label %if.else, !dbg !315

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %__n, align 8, !dbg !316, !tbaa !221
  %call = call noalias ptr @g_malloc(i64 noundef %1) #12, !dbg !316
  store ptr %call, ptr %__p, align 8, !dbg !316, !tbaa !206
  br label %if.end7, !dbg !316

if.else:                                          ; preds = %entry
  %2 = load i64, ptr %__n, align 8, !dbg !318, !tbaa !221
  %3 = call i1 @llvm.is.constant.i64(i64 %2), !dbg !318
  br i1 %3, label %land.lhs.true, label %if.else5, !dbg !318

land.lhs.true:                                    ; preds = %if.else
  %4 = load i64, ptr %__s, align 8, !dbg !318, !tbaa !221
  %cmp1 = icmp eq i64 %4, 0, !dbg !318
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !318

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = load i64, ptr %__n, align 8, !dbg !318, !tbaa !221
  %6 = load i64, ptr %__s, align 8, !dbg !318, !tbaa !221
  %div = udiv i64 -1, %6, !dbg !318
  %cmp2 = icmp ule i64 %5, %div, !dbg !318
  br i1 %cmp2, label %if.then3, label %if.else5, !dbg !316

if.then3:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %7 = load i64, ptr %__n, align 8, !dbg !318, !tbaa !221
  %8 = load i64, ptr %__s, align 8, !dbg !318, !tbaa !221
  %mul = mul i64 %7, %8, !dbg !318
  %call4 = call noalias ptr @g_malloc(i64 noundef %mul) #12, !dbg !318
  store ptr %call4, ptr %__p, align 8, !dbg !318, !tbaa !206
  br label %if.end, !dbg !318

if.else5:                                         ; preds = %lor.lhs.false, %if.else
  %9 = load i64, ptr %__n, align 8, !dbg !318, !tbaa !221
  %10 = load i64, ptr %__s, align 8, !dbg !318, !tbaa !221
  %call6 = call noalias ptr @g_malloc_n(i64 noundef %9, i64 noundef %10) #13, !dbg !318
  store ptr %call6, ptr %__p, align 8, !dbg !318, !tbaa !206
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then3
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %11 = load ptr, ptr %__p, align 8, !dbg !315, !tbaa !206
  store ptr %11, ptr %tmp, align 8, !dbg !316, !tbaa !206
  call void @llvm.lifetime.end.p0(i64 8, ptr %__p) #10, !dbg !320
  call void @llvm.lifetime.end.p0(i64 8, ptr %__s) #10, !dbg !320
  call void @llvm.lifetime.end.p0(i64 8, ptr %__n) #10, !dbg !320
  %12 = load ptr, ptr %tmp, align 8, !dbg !315, !tbaa !206
  store ptr %12, ptr %struct_declaration, align 8, !dbg !321, !tbaa !206
  %13 = load ptr, ptr %struct_declaration, align 8, !dbg !322, !tbaa !206
  %p = getelementptr inbounds %struct.declaration_struct, ptr %13, i32 0, i32 0, !dbg !323
  store ptr %p, ptr %declaration, align 8, !dbg !324, !tbaa !206
  %call8 = call ptr @g_hash_table_new(ptr noundef @g_direct_hash, ptr noundef @g_direct_equal), !dbg !325
  %14 = load ptr, ptr %struct_declaration, align 8, !dbg !326, !tbaa !206
  %fields_by_name = getelementptr inbounds %struct.declaration_struct, ptr %14, i32 0, i32 1, !dbg !327
  store ptr %call8, ptr %fields_by_name, align 8, !dbg !328, !tbaa !329
  %call9 = call ptr @g_array_sized_new(i32 noundef 0, i32 noundef 1, i32 noundef 16, i32 noundef 8), !dbg !331
  %15 = load ptr, ptr %struct_declaration, align 8, !dbg !332, !tbaa !206
  %fields = getelementptr inbounds %struct.declaration_struct, ptr %15, i32 0, i32 3, !dbg !333
  store ptr %call9, ptr %fields, align 8, !dbg !334, !tbaa !335
  %16 = load ptr, ptr %parent_scope.addr, align 8, !dbg !336, !tbaa !206
  %call10 = call ptr @bt_new_declaration_scope(ptr noundef %16), !dbg !337
  %17 = load ptr, ptr %struct_declaration, align 8, !dbg !338, !tbaa !206
  %scope = getelementptr inbounds %struct.declaration_struct, ptr %17, i32 0, i32 2, !dbg !339
  store ptr %call10, ptr %scope, align 8, !dbg !340, !tbaa !341
  %18 = load ptr, ptr %declaration, align 8, !dbg !342, !tbaa !206
  %id = getelementptr inbounds %struct.bt_declaration, ptr %18, i32 0, i32 0, !dbg !343
  store i32 5, ptr %id, align 8, !dbg !344, !tbaa !273
  %19 = load i64, ptr %min_align.addr, align 8, !dbg !345, !tbaa !221
  %cmp11 = icmp ult i64 1, %19, !dbg !345
  br i1 %cmp11, label %cond.true, label %cond.false, !dbg !345

cond.true:                                        ; preds = %if.end7
  %20 = load i64, ptr %min_align.addr, align 8, !dbg !345, !tbaa !221
  br label %cond.end, !dbg !345

cond.false:                                       ; preds = %if.end7
  br label %cond.end, !dbg !345

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %20, %cond.true ], [ 1, %cond.false ], !dbg !345
  %21 = load ptr, ptr %declaration, align 8, !dbg !346, !tbaa !206
  %alignment = getelementptr inbounds %struct.bt_declaration, ptr %21, i32 0, i32 1, !dbg !347
  store i64 %cond, ptr %alignment, align 8, !dbg !348, !tbaa !349
  %22 = load ptr, ptr %declaration, align 8, !dbg !350, !tbaa !206
  %declaration_free = getelementptr inbounds %struct.bt_declaration, ptr %22, i32 0, i32 3, !dbg !351
  store ptr @_struct_declaration_free, ptr %declaration_free, align 8, !dbg !352, !tbaa !353
  %23 = load ptr, ptr %declaration, align 8, !dbg !354, !tbaa !206
  %definition_new = getelementptr inbounds %struct.bt_declaration, ptr %23, i32 0, i32 4, !dbg !355
  store ptr @_struct_definition_new, ptr %definition_new, align 8, !dbg !356, !tbaa !357
  %24 = load ptr, ptr %declaration, align 8, !dbg !358, !tbaa !206
  %definition_free = getelementptr inbounds %struct.bt_declaration, ptr %24, i32 0, i32 5, !dbg !359
  store ptr @_struct_definition_free, ptr %definition_free, align 8, !dbg !360, !tbaa !361
  %25 = load ptr, ptr %declaration, align 8, !dbg !362, !tbaa !206
  %ref = getelementptr inbounds %struct.bt_declaration, ptr %25, i32 0, i32 2, !dbg !363
  store i32 1, ptr %ref, align 8, !dbg !364, !tbaa !365
  %26 = load ptr, ptr %struct_declaration, align 8, !dbg !366, !tbaa !206
  call void @llvm.lifetime.end.p0(i64 8, ptr %declaration) #10, !dbg !367
  call void @llvm.lifetime.end.p0(i64 8, ptr %struct_declaration) #10, !dbg !367
  ret ptr %26, !dbg !368
}

; Function Attrs: allocsize(0)
declare !dbg !369 noalias ptr @g_malloc(i64 noundef) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: allocsize(0,1)
declare !dbg !373 noalias ptr @g_malloc_n(i64 noundef, i64 noundef) #5

declare !dbg !376 ptr @g_hash_table_new(ptr noundef, ptr noundef) #6

; Function Attrs: nounwind willreturn memory(none)
declare i32 @g_direct_hash(ptr noundef) #7

; Function Attrs: nounwind willreturn memory(none)
declare i32 @g_direct_equal(ptr noundef, ptr noundef) #7

declare !dbg !389 ptr @g_array_sized_new(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #6

declare !dbg !392 ptr @bt_new_declaration_scope(ptr noundef) #6

; Function Attrs: nounwind uwtable
define internal void @_struct_declaration_free(ptr noundef %declaration) #0 !dbg !395 {
entry:
  %declaration.addr = alloca ptr, align 8
  %struct_declaration = alloca ptr, align 8
  %__ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %i = alloca i64, align 8
  %declaration_field = alloca ptr, align 8
  store ptr %declaration, ptr %declaration.addr, align 8, !tbaa !206
  tail call void @llvm.dbg.declare(metadata ptr %declaration.addr, metadata !397, metadata !DIExpression()), !dbg !408
  call void @llvm.lifetime.start.p0(i64 8, ptr %struct_declaration) #10, !dbg !409
  tail call void @llvm.dbg.declare(metadata ptr %struct_declaration, metadata !398, metadata !DIExpression()), !dbg !410
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !411
  tail call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !399, metadata !DIExpression()), !dbg !411
  %0 = load ptr, ptr %declaration.addr, align 8, !dbg !411, !tbaa !206
  store ptr %0, ptr %__ptr, align 8, !dbg !411, !tbaa !206
  %1 = load ptr, ptr %__ptr, align 8, !dbg !411, !tbaa !206
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 0, !dbg !411
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !411, !tbaa !206
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !412
  %2 = load ptr, ptr %tmp, align 8, !dbg !411, !tbaa !206
  store ptr %2, ptr %struct_declaration, align 8, !dbg !410, !tbaa !206
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !413
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !403, metadata !DIExpression()), !dbg !414
  %3 = load ptr, ptr %struct_declaration, align 8, !dbg !415, !tbaa !206
  %scope = getelementptr inbounds %struct.declaration_struct, ptr %3, i32 0, i32 2, !dbg !416
  %4 = load ptr, ptr %scope, align 8, !dbg !416, !tbaa !341
  call void @bt_free_declaration_scope(ptr noundef %4), !dbg !417
  %5 = load ptr, ptr %struct_declaration, align 8, !dbg !418, !tbaa !206
  %fields_by_name = getelementptr inbounds %struct.declaration_struct, ptr %5, i32 0, i32 1, !dbg !419
  %6 = load ptr, ptr %fields_by_name, align 8, !dbg !419, !tbaa !329
  call void @g_hash_table_destroy(ptr noundef %6), !dbg !420
  store i64 0, ptr %i, align 8, !dbg !421, !tbaa !221
  br label %for.cond, !dbg !422

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i64, ptr %i, align 8, !dbg !423, !tbaa !221
  %8 = load ptr, ptr %struct_declaration, align 8, !dbg !424, !tbaa !206
  %fields = getelementptr inbounds %struct.declaration_struct, ptr %8, i32 0, i32 3, !dbg !425
  %9 = load ptr, ptr %fields, align 8, !dbg !425, !tbaa !335
  %len = getelementptr inbounds %struct._GArray, ptr %9, i32 0, i32 1, !dbg !426
  %10 = load i32, ptr %len, align 8, !dbg !426, !tbaa !427
  %conv = zext i32 %10 to i64, !dbg !424
  %cmp = icmp ult i64 %7, %conv, !dbg !429
  br i1 %cmp, label %for.body, label %for.end, !dbg !430

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %declaration_field) #10, !dbg !431
  tail call void @llvm.dbg.declare(metadata ptr %declaration_field, metadata !404, metadata !DIExpression()), !dbg !432
  %11 = load ptr, ptr %struct_declaration, align 8, !dbg !433, !tbaa !206
  %fields2 = getelementptr inbounds %struct.declaration_struct, ptr %11, i32 0, i32 3, !dbg !433
  %12 = load ptr, ptr %fields2, align 8, !dbg !433, !tbaa !335
  %data = getelementptr inbounds %struct._GArray, ptr %12, i32 0, i32 0, !dbg !433
  %13 = load ptr, ptr %data, align 8, !dbg !433, !tbaa !434
  %14 = load i64, ptr %i, align 8, !dbg !433, !tbaa !221
  %arrayidx = getelementptr inbounds %struct.declaration_field, ptr %13, i64 %14, !dbg !433
  store ptr %arrayidx, ptr %declaration_field, align 8, !dbg !432, !tbaa !206
  %15 = load ptr, ptr %declaration_field, align 8, !dbg !435, !tbaa !206
  %declaration3 = getelementptr inbounds %struct.declaration_field, ptr %15, i32 0, i32 1, !dbg !436
  %16 = load ptr, ptr %declaration3, align 8, !dbg !436, !tbaa !437
  call void @bt_declaration_unref(ptr noundef %16), !dbg !439
  call void @llvm.lifetime.end.p0(i64 8, ptr %declaration_field) #10, !dbg !440
  br label %for.inc, !dbg !441

for.inc:                                          ; preds = %for.body
  %17 = load i64, ptr %i, align 8, !dbg !442, !tbaa !221
  %inc = add i64 %17, 1, !dbg !442
  store i64 %inc, ptr %i, align 8, !dbg !442, !tbaa !221
  br label %for.cond, !dbg !443, !llvm.loop !444

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %struct_declaration, align 8, !dbg !446, !tbaa !206
  %fields4 = getelementptr inbounds %struct.declaration_struct, ptr %18, i32 0, i32 3, !dbg !447
  %19 = load ptr, ptr %fields4, align 8, !dbg !447, !tbaa !335
  %call = call ptr @g_array_free(ptr noundef %19, i32 noundef 1), !dbg !448
  %20 = load ptr, ptr %struct_declaration, align 8, !dbg !449, !tbaa !206
  call void @g_free(ptr noundef %20), !dbg !450
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !451
  call void @llvm.lifetime.end.p0(i64 8, ptr %struct_declaration) #10, !dbg !451
  ret void, !dbg !451
}

; Function Attrs: nounwind uwtable
define internal ptr @_struct_definition_new(ptr noundef %declaration, ptr noundef %parent_scope, i32 noundef %field_name, i32 noundef %index, ptr noundef %root_name) #0 !dbg !452 {
entry:
  %retval = alloca ptr, align 8
  %declaration.addr = alloca ptr, align 8
  %parent_scope.addr = alloca ptr, align 8
  %field_name.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %root_name.addr = alloca ptr, align 8
  %struct_declaration = alloca ptr, align 8
  %__ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %_struct = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %__n = alloca i64, align 8
  %__s = alloca i64, align 8
  %__p = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %declaration_field = alloca ptr, align 8
  %field = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %field52 = alloca ptr, align 8
  store ptr %declaration, ptr %declaration.addr, align 8, !tbaa !206
  tail call void @llvm.dbg.declare(metadata ptr %declaration.addr, metadata !454, metadata !DIExpression()), !dbg !479
  store ptr %parent_scope, ptr %parent_scope.addr, align 8, !tbaa !206
  tail call void @llvm.dbg.declare(metadata ptr %parent_scope.addr, metadata !455, metadata !DIExpression()), !dbg !480
  store i32 %field_name, ptr %field_name.addr, align 4, !tbaa !244
  tail call void @llvm.dbg.declare(metadata ptr %field_name.addr, metadata !456, metadata !DIExpression()), !dbg !481
  store i32 %index, ptr %index.addr, align 4, !tbaa !244
  tail call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !457, metadata !DIExpression()), !dbg !482
  store ptr %root_name, ptr %root_name.addr, align 8, !tbaa !206
  tail call void @llvm.dbg.declare(metadata ptr %root_name.addr, metadata !458, metadata !DIExpression()), !dbg !483
  call void @llvm.lifetime.start.p0(i64 8, ptr %struct_declaration) #10, !dbg !484
  tail call void @llvm.dbg.declare(metadata ptr %struct_declaration, metadata !459, metadata !DIExpression()), !dbg !485
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !486
  tail call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !460, metadata !DIExpression()), !dbg !486
  %0 = load ptr, ptr %declaration.addr, align 8, !dbg !486, !tbaa !206
  store ptr %0, ptr %__ptr, align 8, !dbg !486, !tbaa !206
  %1 = load ptr, ptr %__ptr, align 8, !dbg !486, !tbaa !206
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 0, !dbg !486
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !486, !tbaa !206
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !487
  %2 = load ptr, ptr %tmp, align 8, !dbg !486, !tbaa !206
  store ptr %2, ptr %struct_declaration, align 8, !dbg !485, !tbaa !206
  call void @llvm.lifetime.start.p0(i64 8, ptr %_struct) #10, !dbg !488
  tail call void @llvm.dbg.declare(metadata ptr %_struct, metadata !462, metadata !DIExpression()), !dbg !489
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !490
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !463, metadata !DIExpression()), !dbg !491
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !492
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !464, metadata !DIExpression()), !dbg !493
  call void @llvm.lifetime.start.p0(i64 8, ptr %__n) #10, !dbg !494
  tail call void @llvm.dbg.declare(metadata ptr %__n, metadata !465, metadata !DIExpression()), !dbg !494
  store i64 1, ptr %__n, align 8, !dbg !494, !tbaa !221
  call void @llvm.lifetime.start.p0(i64 8, ptr %__s) #10, !dbg !494
  tail call void @llvm.dbg.declare(metadata ptr %__s, metadata !467, metadata !DIExpression()), !dbg !494
  store i64 48, ptr %__s, align 8, !dbg !494, !tbaa !221
  call void @llvm.lifetime.start.p0(i64 8, ptr %__p) #10, !dbg !494
  tail call void @llvm.dbg.declare(metadata ptr %__p, metadata !468, metadata !DIExpression()), !dbg !494
  %3 = load i64, ptr %__s, align 8, !dbg !495, !tbaa !221
  %cmp = icmp eq i64 %3, 1, !dbg !495
  br i1 %cmp, label %if.then, label %if.else, !dbg !494

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %__n, align 8, !dbg !495, !tbaa !221
  %call = call noalias ptr @g_malloc(i64 noundef %4) #12, !dbg !495
  store ptr %call, ptr %__p, align 8, !dbg !495, !tbaa !206
  br label %if.end7, !dbg !495

if.else:                                          ; preds = %entry
  %5 = load i64, ptr %__n, align 8, !dbg !497, !tbaa !221
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !497
  br i1 %6, label %land.lhs.true, label %if.else5, !dbg !497

land.lhs.true:                                    ; preds = %if.else
  %7 = load i64, ptr %__s, align 8, !dbg !497, !tbaa !221
  %cmp1 = icmp eq i64 %7, 0, !dbg !497
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !497

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load i64, ptr %__n, align 8, !dbg !497, !tbaa !221
  %9 = load i64, ptr %__s, align 8, !dbg !497, !tbaa !221
  %div = udiv i64 -1, %9, !dbg !497
  %cmp2 = icmp ule i64 %8, %div, !dbg !497
  br i1 %cmp2, label %if.then3, label %if.else5, !dbg !495

if.then3:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %10 = load i64, ptr %__n, align 8, !dbg !497, !tbaa !221
  %11 = load i64, ptr %__s, align 8, !dbg !497, !tbaa !221
  %mul = mul i64 %10, %11, !dbg !497
  %call4 = call noalias ptr @g_malloc(i64 noundef %mul) #12, !dbg !497
  store ptr %call4, ptr %__p, align 8, !dbg !497, !tbaa !206
  br label %if.end, !dbg !497

if.else5:                                         ; preds = %lor.lhs.false, %if.else
  %12 = load i64, ptr %__n, align 8, !dbg !497, !tbaa !221
  %13 = load i64, ptr %__s, align 8, !dbg !497, !tbaa !221
  %call6 = call noalias ptr @g_malloc_n(i64 noundef %12, i64 noundef %13) #13, !dbg !497
  store ptr %call6, ptr %__p, align 8, !dbg !497, !tbaa !206
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then3
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %14 = load ptr, ptr %__p, align 8, !dbg !494, !tbaa !206
  store ptr %14, ptr %tmp8, align 8, !dbg !495, !tbaa !206
  call void @llvm.lifetime.end.p0(i64 8, ptr %__p) #10, !dbg !499
  call void @llvm.lifetime.end.p0(i64 8, ptr %__s) #10, !dbg !499
  call void @llvm.lifetime.end.p0(i64 8, ptr %__n) #10, !dbg !499
  %15 = load ptr, ptr %tmp8, align 8, !dbg !494, !tbaa !206
  store ptr %15, ptr %_struct, align 8, !dbg !500, !tbaa !206
  %16 = load ptr, ptr %struct_declaration, align 8, !dbg !501, !tbaa !206
  %p = getelementptr inbounds %struct.declaration_struct, ptr %16, i32 0, i32 0, !dbg !502
  call void @bt_declaration_ref(ptr noundef %p), !dbg !503
  %17 = load ptr, ptr %declaration.addr, align 8, !dbg !504, !tbaa !206
  %18 = load ptr, ptr %_struct, align 8, !dbg !505, !tbaa !206
  %p9 = getelementptr inbounds %struct.definition_struct, ptr %18, i32 0, i32 0, !dbg !506
  %declaration10 = getelementptr inbounds %struct.bt_definition, ptr %p9, i32 0, i32 0, !dbg !507
  store ptr %17, ptr %declaration10, align 8, !dbg !508, !tbaa !509
  %19 = load ptr, ptr %struct_declaration, align 8, !dbg !510, !tbaa !206
  %20 = load ptr, ptr %_struct, align 8, !dbg !511, !tbaa !206
  %declaration11 = getelementptr inbounds %struct.definition_struct, ptr %20, i32 0, i32 1, !dbg !512
  store ptr %19, ptr %declaration11, align 8, !dbg !513, !tbaa !514
  %21 = load ptr, ptr %_struct, align 8, !dbg !515, !tbaa !206
  %p12 = getelementptr inbounds %struct.definition_struct, ptr %21, i32 0, i32 0, !dbg !516
  %ref = getelementptr inbounds %struct.bt_definition, ptr %p12, i32 0, i32 3, !dbg !517
  store i32 1, ptr %ref, align 8, !dbg !518, !tbaa !519
  %22 = load ptr, ptr %root_name.addr, align 8, !dbg !520, !tbaa !206
  %tobool = icmp ne ptr %22, null, !dbg !520
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !520

cond.true:                                        ; preds = %if.end7
  br label %cond.end, !dbg !520

cond.false:                                       ; preds = %if.end7
  %23 = load i32, ptr %index.addr, align 4, !dbg !521, !tbaa !244
  br label %cond.end, !dbg !520

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2147483647, %cond.true ], [ %23, %cond.false ], !dbg !520
  %24 = load ptr, ptr %_struct, align 8, !dbg !522, !tbaa !206
  %p13 = getelementptr inbounds %struct.definition_struct, ptr %24, i32 0, i32 0, !dbg !523
  %index14 = getelementptr inbounds %struct.bt_definition, ptr %p13, i32 0, i32 1, !dbg !524
  store i32 %cond, ptr %index14, align 8, !dbg !525, !tbaa !526
  %25 = load i32, ptr %field_name.addr, align 4, !dbg !527, !tbaa !244
  %26 = load ptr, ptr %_struct, align 8, !dbg !528, !tbaa !206
  %p15 = getelementptr inbounds %struct.definition_struct, ptr %26, i32 0, i32 0, !dbg !529
  %name = getelementptr inbounds %struct.bt_definition, ptr %p15, i32 0, i32 2, !dbg !530
  store i32 %25, ptr %name, align 4, !dbg !531, !tbaa !532
  %27 = load ptr, ptr %parent_scope.addr, align 8, !dbg !533, !tbaa !206
  %28 = load i32, ptr %field_name.addr, align 4, !dbg !534, !tbaa !244
  %29 = load ptr, ptr %root_name.addr, align 8, !dbg !535, !tbaa !206
  %call16 = call i32 @bt_new_definition_path(ptr noundef %27, i32 noundef %28, ptr noundef %29), !dbg !536
  %30 = load ptr, ptr %_struct, align 8, !dbg !537, !tbaa !206
  %p17 = getelementptr inbounds %struct.definition_struct, ptr %30, i32 0, i32 0, !dbg !538
  %path = getelementptr inbounds %struct.bt_definition, ptr %p17, i32 0, i32 4, !dbg !539
  store i32 %call16, ptr %path, align 4, !dbg !540, !tbaa !541
  %31 = load ptr, ptr %parent_scope.addr, align 8, !dbg !542, !tbaa !206
  %32 = load i32, ptr %field_name.addr, align 4, !dbg !543, !tbaa !244
  %33 = load ptr, ptr %root_name.addr, align 8, !dbg !544, !tbaa !206
  %call18 = call ptr @bt_new_definition_scope(ptr noundef %31, i32 noundef %32, ptr noundef %33), !dbg !545
  %34 = load ptr, ptr %_struct, align 8, !dbg !546, !tbaa !206
  %p19 = getelementptr inbounds %struct.definition_struct, ptr %34, i32 0, i32 0, !dbg !547
  %scope = getelementptr inbounds %struct.bt_definition, ptr %p19, i32 0, i32 5, !dbg !548
  store ptr %call18, ptr %scope, align 8, !dbg !549, !tbaa !550
  %35 = load i32, ptr %field_name.addr, align 4, !dbg !551, !tbaa !244
  %36 = load ptr, ptr %_struct, align 8, !dbg !552, !tbaa !206
  %p20 = getelementptr inbounds %struct.definition_struct, ptr %36, i32 0, i32 0, !dbg !553
  %37 = load ptr, ptr %parent_scope.addr, align 8, !dbg !554, !tbaa !206
  %call21 = call i32 @bt_register_field_definition(i32 noundef %35, ptr noundef %p20, ptr noundef %37), !dbg !555
  store i32 %call21, ptr %ret, align 4, !dbg !556, !tbaa !244
  %38 = load i32, ptr %ret, align 4, !dbg !557, !tbaa !244
  %tobool22 = icmp ne i32 %38, 0, !dbg !557
  br i1 %tobool22, label %lor.lhs.false23, label %if.then25, !dbg !557

lor.lhs.false23:                                  ; preds = %cond.end
  %39 = load i32, ptr %ret, align 4, !dbg !557, !tbaa !244
  %cmp24 = icmp eq i32 %39, -1, !dbg !557
  br i1 %cmp24, label %if.then25, label %if.else26, !dbg !560

if.then25:                                        ; preds = %lor.lhs.false23, %cond.end
  br label %if.end27, !dbg !560

if.else26:                                        ; preds = %lor.lhs.false23
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 136, ptr noundef @__PRETTY_FUNCTION__._struct_definition_new) #11, !dbg !557
  unreachable, !dbg !557

if.end27:                                         ; preds = %if.then25
  %call28 = call ptr @g_ptr_array_sized_new(i32 noundef 8), !dbg !561
  %40 = load ptr, ptr %_struct, align 8, !dbg !562, !tbaa !206
  %fields = getelementptr inbounds %struct.definition_struct, ptr %40, i32 0, i32 2, !dbg !563
  store ptr %call28, ptr %fields, align 8, !dbg !564, !tbaa !227
  %41 = load ptr, ptr %_struct, align 8, !dbg !565, !tbaa !206
  %fields29 = getelementptr inbounds %struct.definition_struct, ptr %41, i32 0, i32 2, !dbg !566
  %42 = load ptr, ptr %fields29, align 8, !dbg !566, !tbaa !227
  %43 = load ptr, ptr %struct_declaration, align 8, !dbg !567, !tbaa !206
  %fields30 = getelementptr inbounds %struct.declaration_struct, ptr %43, i32 0, i32 3, !dbg !568
  %44 = load ptr, ptr %fields30, align 8, !dbg !568, !tbaa !335
  %len = getelementptr inbounds %struct._GArray, ptr %44, i32 0, i32 1, !dbg !569
  %45 = load i32, ptr %len, align 8, !dbg !569, !tbaa !427
  call void @g_ptr_array_set_size(ptr noundef %42, i32 noundef %45), !dbg !570
  store i32 0, ptr %i, align 4, !dbg !571, !tbaa !244
  br label %for.cond, !dbg !572

for.cond:                                         ; preds = %for.inc, %if.end27
  %46 = load i32, ptr %i, align 4, !dbg !573, !tbaa !244
  %47 = load ptr, ptr %struct_declaration, align 8, !dbg !574, !tbaa !206
  %fields31 = getelementptr inbounds %struct.declaration_struct, ptr %47, i32 0, i32 3, !dbg !575
  %48 = load ptr, ptr %fields31, align 8, !dbg !575, !tbaa !335
  %len32 = getelementptr inbounds %struct._GArray, ptr %48, i32 0, i32 1, !dbg !576
  %49 = load i32, ptr %len32, align 8, !dbg !576, !tbaa !427
  %cmp33 = icmp ult i32 %46, %49, !dbg !577
  br i1 %cmp33, label %for.body, label %for.end, !dbg !578

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %declaration_field) #10, !dbg !579
  tail call void @llvm.dbg.declare(metadata ptr %declaration_field, metadata !469, metadata !DIExpression()), !dbg !580
  %50 = load ptr, ptr %struct_declaration, align 8, !dbg !581, !tbaa !206
  %fields34 = getelementptr inbounds %struct.declaration_struct, ptr %50, i32 0, i32 3, !dbg !581
  %51 = load ptr, ptr %fields34, align 8, !dbg !581, !tbaa !335
  %data = getelementptr inbounds %struct._GArray, ptr %51, i32 0, i32 0, !dbg !581
  %52 = load ptr, ptr %data, align 8, !dbg !581, !tbaa !434
  %53 = load i32, ptr %i, align 4, !dbg !581, !tbaa !244
  %idxprom = sext i32 %53 to i64, !dbg !581
  %arrayidx = getelementptr inbounds %struct.declaration_field, ptr %52, i64 %idxprom, !dbg !581
  store ptr %arrayidx, ptr %declaration_field, align 8, !dbg !580, !tbaa !206
  call void @llvm.lifetime.start.p0(i64 8, ptr %field) #10, !dbg !582
  tail call void @llvm.dbg.declare(metadata ptr %field, metadata !473, metadata !DIExpression()), !dbg !583
  %54 = load ptr, ptr %_struct, align 8, !dbg !584, !tbaa !206
  %fields35 = getelementptr inbounds %struct.definition_struct, ptr %54, i32 0, i32 2, !dbg !584
  %55 = load ptr, ptr %fields35, align 8, !dbg !584, !tbaa !227
  %pdata = getelementptr inbounds %struct._GPtrArray, ptr %55, i32 0, i32 0, !dbg !584
  %56 = load ptr, ptr %pdata, align 8, !dbg !584, !tbaa !239
  %57 = load i32, ptr %i, align 4, !dbg !584, !tbaa !244
  %idxprom36 = sext i32 %57 to i64, !dbg !584
  %arrayidx37 = getelementptr inbounds ptr, ptr %56, i64 %idxprom36, !dbg !584
  store ptr %arrayidx37, ptr %field, align 8, !dbg !583, !tbaa !206
  %58 = load ptr, ptr %declaration_field, align 8, !dbg !585, !tbaa !206
  %declaration38 = getelementptr inbounds %struct.declaration_field, ptr %58, i32 0, i32 1, !dbg !586
  %59 = load ptr, ptr %declaration38, align 8, !dbg !586, !tbaa !437
  %definition_new = getelementptr inbounds %struct.bt_declaration, ptr %59, i32 0, i32 4, !dbg !587
  %60 = load ptr, ptr %definition_new, align 8, !dbg !587, !tbaa !357
  %61 = load ptr, ptr %declaration_field, align 8, !dbg !588, !tbaa !206
  %declaration39 = getelementptr inbounds %struct.declaration_field, ptr %61, i32 0, i32 1, !dbg !589
  %62 = load ptr, ptr %declaration39, align 8, !dbg !589, !tbaa !437
  %63 = load ptr, ptr %_struct, align 8, !dbg !590, !tbaa !206
  %p40 = getelementptr inbounds %struct.definition_struct, ptr %63, i32 0, i32 0, !dbg !591
  %scope41 = getelementptr inbounds %struct.bt_definition, ptr %p40, i32 0, i32 5, !dbg !592
  %64 = load ptr, ptr %scope41, align 8, !dbg !592, !tbaa !550
  %65 = load ptr, ptr %declaration_field, align 8, !dbg !593, !tbaa !206
  %name42 = getelementptr inbounds %struct.declaration_field, ptr %65, i32 0, i32 0, !dbg !594
  %66 = load i32, ptr %name42, align 8, !dbg !594, !tbaa !595
  %67 = load i32, ptr %i, align 4, !dbg !596, !tbaa !244
  %call43 = call ptr %60(ptr noundef %62, ptr noundef %64, i32 noundef %66, i32 noundef %67, ptr noundef null), !dbg !585
  %68 = load ptr, ptr %field, align 8, !dbg !597, !tbaa !206
  store ptr %call43, ptr %68, align 8, !dbg !598, !tbaa !206
  %69 = load ptr, ptr %field, align 8, !dbg !599, !tbaa !206
  %70 = load ptr, ptr %69, align 8, !dbg !601, !tbaa !206
  %tobool44 = icmp ne ptr %70, null, !dbg !601
  br i1 %tobool44, label %if.end46, label %if.then45, !dbg !602

if.then45:                                        ; preds = %for.body
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !603

if.end46:                                         ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !604
  br label %cleanup, !dbg !604

cleanup:                                          ; preds = %if.then45, %if.end46
  call void @llvm.lifetime.end.p0(i64 8, ptr %field) #10, !dbg !604
  call void @llvm.lifetime.end.p0(i64 8, ptr %declaration_field) #10, !dbg !604
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup63 [
    i32 0, label %cleanup.cont
    i32 5, label %error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !605

for.inc:                                          ; preds = %cleanup.cont
  %71 = load i32, ptr %i, align 4, !dbg !606, !tbaa !244
  %inc = add nsw i32 %71, 1, !dbg !606
  store i32 %inc, ptr %i, align 4, !dbg !606, !tbaa !244
  br label %for.cond, !dbg !607, !llvm.loop !608

for.end:                                          ; preds = %for.cond
  %72 = load ptr, ptr %_struct, align 8, !dbg !610, !tbaa !206
  %p48 = getelementptr inbounds %struct.definition_struct, ptr %72, i32 0, i32 0, !dbg !611
  store ptr %p48, ptr %retval, align 8, !dbg !612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !612

error:                                            ; preds = %cleanup
  tail call void @llvm.dbg.label(metadata !474), !dbg !613
  %73 = load i32, ptr %i, align 4, !dbg !614, !tbaa !244
  %dec = add nsw i32 %73, -1, !dbg !614
  store i32 %dec, ptr %i, align 4, !dbg !614, !tbaa !244
  br label %for.cond49, !dbg !615

for.cond49:                                       ; preds = %for.inc57, %error
  %74 = load i32, ptr %i, align 4, !dbg !616, !tbaa !244
  %cmp50 = icmp sge i32 %74, 0, !dbg !617
  br i1 %cmp50, label %for.body51, label %for.end59, !dbg !618

for.body51:                                       ; preds = %for.cond49
  call void @llvm.lifetime.start.p0(i64 8, ptr %field52) #10, !dbg !619
  tail call void @llvm.dbg.declare(metadata ptr %field52, metadata !475, metadata !DIExpression()), !dbg !620
  %75 = load ptr, ptr %_struct, align 8, !dbg !621, !tbaa !206
  %fields53 = getelementptr inbounds %struct.definition_struct, ptr %75, i32 0, i32 2, !dbg !621
  %76 = load ptr, ptr %fields53, align 8, !dbg !621, !tbaa !227
  %pdata54 = getelementptr inbounds %struct._GPtrArray, ptr %76, i32 0, i32 0, !dbg !621
  %77 = load ptr, ptr %pdata54, align 8, !dbg !621, !tbaa !239
  %78 = load i32, ptr %i, align 4, !dbg !621, !tbaa !244
  %idxprom55 = sext i32 %78 to i64, !dbg !621
  %arrayidx56 = getelementptr inbounds ptr, ptr %77, i64 %idxprom55, !dbg !621
  %79 = load ptr, ptr %arrayidx56, align 8, !dbg !621, !tbaa !206
  store ptr %79, ptr %field52, align 8, !dbg !620, !tbaa !206
  %80 = load ptr, ptr %field52, align 8, !dbg !622, !tbaa !206
  call void @bt_definition_unref(ptr noundef %80), !dbg !623
  call void @llvm.lifetime.end.p0(i64 8, ptr %field52) #10, !dbg !624
  br label %for.inc57, !dbg !625

for.inc57:                                        ; preds = %for.body51
  %81 = load i32, ptr %i, align 4, !dbg !626, !tbaa !244
  %dec58 = add nsw i32 %81, -1, !dbg !626
  store i32 %dec58, ptr %i, align 4, !dbg !626, !tbaa !244
  br label %for.cond49, !dbg !627, !llvm.loop !628

for.end59:                                        ; preds = %for.cond49
  %82 = load ptr, ptr %_struct, align 8, !dbg !630, !tbaa !206
  %p60 = getelementptr inbounds %struct.definition_struct, ptr %82, i32 0, i32 0, !dbg !631
  %scope61 = getelementptr inbounds %struct.bt_definition, ptr %p60, i32 0, i32 5, !dbg !632
  %83 = load ptr, ptr %scope61, align 8, !dbg !632, !tbaa !550
  call void @bt_free_definition_scope(ptr noundef %83), !dbg !633
  %84 = load ptr, ptr %struct_declaration, align 8, !dbg !634, !tbaa !206
  %p62 = getelementptr inbounds %struct.declaration_struct, ptr %84, i32 0, i32 0, !dbg !635
  call void @bt_declaration_unref(ptr noundef %p62), !dbg !636
  %85 = load ptr, ptr %_struct, align 8, !dbg !637, !tbaa !206
  call void @g_free(ptr noundef %85), !dbg !638
  store ptr null, ptr %retval, align 8, !dbg !639
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !639

cleanup63:                                        ; preds = %for.end59, %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !640
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !640
  call void @llvm.lifetime.end.p0(i64 8, ptr %_struct) #10, !dbg !640
  call void @llvm.lifetime.end.p0(i64 8, ptr %struct_declaration) #10, !dbg !640
  %86 = load ptr, ptr %retval, align 8, !dbg !640
  ret ptr %86, !dbg !640
}

; Function Attrs: nounwind uwtable
define internal void @_struct_definition_free(ptr noundef %definition) #0 !dbg !641 {
entry:
  %definition.addr = alloca ptr, align 8
  %_struct = alloca ptr, align 8
  %__ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %i = alloca i64, align 8
  %field = alloca ptr, align 8
  store ptr %definition, ptr %definition.addr, align 8, !tbaa !206
  tail call void @llvm.dbg.declare(metadata ptr %definition.addr, metadata !643, metadata !DIExpression()), !dbg !652
  call void @llvm.lifetime.start.p0(i64 8, ptr %_struct) #10, !dbg !653
  tail call void @llvm.dbg.declare(metadata ptr %_struct, metadata !644, metadata !DIExpression()), !dbg !654
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !655
  tail call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !645, metadata !DIExpression()), !dbg !655
  %0 = load ptr, ptr %definition.addr, align 8, !dbg !655, !tbaa !206
  store ptr %0, ptr %__ptr, align 8, !dbg !655, !tbaa !206
  %1 = load ptr, ptr %__ptr, align 8, !dbg !655, !tbaa !206
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 0, !dbg !655
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !655, !tbaa !206
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !656
  %2 = load ptr, ptr %tmp, align 8, !dbg !655, !tbaa !206
  store ptr %2, ptr %_struct, align 8, !dbg !654, !tbaa !206
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !657
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !647, metadata !DIExpression()), !dbg !658
  %3 = load ptr, ptr %_struct, align 8, !dbg !659, !tbaa !206
  %fields = getelementptr inbounds %struct.definition_struct, ptr %3, i32 0, i32 2, !dbg !659
  %4 = load ptr, ptr %fields, align 8, !dbg !659, !tbaa !227
  %len = getelementptr inbounds %struct._GPtrArray, ptr %4, i32 0, i32 1, !dbg !659
  %5 = load i32, ptr %len, align 8, !dbg !659, !tbaa !232
  %6 = load ptr, ptr %_struct, align 8, !dbg !659, !tbaa !206
  %declaration = getelementptr inbounds %struct.definition_struct, ptr %6, i32 0, i32 1, !dbg !659
  %7 = load ptr, ptr %declaration, align 8, !dbg !659, !tbaa !514
  %fields1 = getelementptr inbounds %struct.declaration_struct, ptr %7, i32 0, i32 3, !dbg !659
  %8 = load ptr, ptr %fields1, align 8, !dbg !659, !tbaa !335
  %len2 = getelementptr inbounds %struct._GArray, ptr %8, i32 0, i32 1, !dbg !659
  %9 = load i32, ptr %len2, align 8, !dbg !659, !tbaa !427
  %cmp = icmp eq i32 %5, %9, !dbg !659
  br i1 %cmp, label %if.then, label %if.else, !dbg !662

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !662

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.3, i32 noundef 173, ptr noundef @__PRETTY_FUNCTION__._struct_definition_free) #11, !dbg !659
  unreachable, !dbg !659

if.end:                                           ; preds = %if.then
  store i64 0, ptr %i, align 8, !dbg !663, !tbaa !221
  br label %for.cond, !dbg !664

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i64, ptr %i, align 8, !dbg !665, !tbaa !221
  %11 = load ptr, ptr %_struct, align 8, !dbg !666, !tbaa !206
  %fields3 = getelementptr inbounds %struct.definition_struct, ptr %11, i32 0, i32 2, !dbg !667
  %12 = load ptr, ptr %fields3, align 8, !dbg !667, !tbaa !227
  %len4 = getelementptr inbounds %struct._GPtrArray, ptr %12, i32 0, i32 1, !dbg !668
  %13 = load i32, ptr %len4, align 8, !dbg !668, !tbaa !232
  %conv = zext i32 %13 to i64, !dbg !666
  %cmp5 = icmp ult i64 %10, %conv, !dbg !669
  br i1 %cmp5, label %for.body, label %for.end, !dbg !670

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %field) #10, !dbg !671
  tail call void @llvm.dbg.declare(metadata ptr %field, metadata !648, metadata !DIExpression()), !dbg !672
  %14 = load ptr, ptr %_struct, align 8, !dbg !673, !tbaa !206
  %fields7 = getelementptr inbounds %struct.definition_struct, ptr %14, i32 0, i32 2, !dbg !673
  %15 = load ptr, ptr %fields7, align 8, !dbg !673, !tbaa !227
  %pdata = getelementptr inbounds %struct._GPtrArray, ptr %15, i32 0, i32 0, !dbg !673
  %16 = load ptr, ptr %pdata, align 8, !dbg !673, !tbaa !239
  %17 = load i64, ptr %i, align 8, !dbg !673, !tbaa !221
  %arrayidx = getelementptr inbounds ptr, ptr %16, i64 %17, !dbg !673
  %18 = load ptr, ptr %arrayidx, align 8, !dbg !673, !tbaa !206
  store ptr %18, ptr %field, align 8, !dbg !672, !tbaa !206
  %19 = load ptr, ptr %field, align 8, !dbg !674, !tbaa !206
  call void @bt_definition_unref(ptr noundef %19), !dbg !675
  call void @llvm.lifetime.end.p0(i64 8, ptr %field) #10, !dbg !676
  br label %for.inc, !dbg !677

for.inc:                                          ; preds = %for.body
  %20 = load i64, ptr %i, align 8, !dbg !678, !tbaa !221
  %inc = add i64 %20, 1, !dbg !678
  store i64 %inc, ptr %i, align 8, !dbg !678, !tbaa !221
  br label %for.cond, !dbg !679, !llvm.loop !680

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %_struct, align 8, !dbg !682, !tbaa !206
  %p = getelementptr inbounds %struct.definition_struct, ptr %21, i32 0, i32 0, !dbg !683
  %scope = getelementptr inbounds %struct.bt_definition, ptr %p, i32 0, i32 5, !dbg !684
  %22 = load ptr, ptr %scope, align 8, !dbg !684, !tbaa !550
  call void @bt_free_definition_scope(ptr noundef %22), !dbg !685
  %23 = load ptr, ptr %_struct, align 8, !dbg !686, !tbaa !206
  %p8 = getelementptr inbounds %struct.definition_struct, ptr %23, i32 0, i32 0, !dbg !687
  %declaration9 = getelementptr inbounds %struct.bt_definition, ptr %p8, i32 0, i32 0, !dbg !688
  %24 = load ptr, ptr %declaration9, align 8, !dbg !688, !tbaa !509
  call void @bt_declaration_unref(ptr noundef %24), !dbg !689
  %25 = load ptr, ptr %_struct, align 8, !dbg !690, !tbaa !206
  %fields10 = getelementptr inbounds %struct.definition_struct, ptr %25, i32 0, i32 2, !dbg !691
  %26 = load ptr, ptr %fields10, align 8, !dbg !691, !tbaa !227
  %call = call ptr @g_ptr_array_free(ptr noundef %26, i32 noundef 1), !dbg !692
  %27 = load ptr, ptr %_struct, align 8, !dbg !693, !tbaa !206
  call void @g_free(ptr noundef %27), !dbg !694
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !695
  call void @llvm.lifetime.end.p0(i64 8, ptr %_struct) #10, !dbg !695
  ret void, !dbg !695
}

; Function Attrs: nounwind uwtable
define void @bt_struct_declaration_add_field(ptr noundef %struct_declaration, ptr noundef %field_name, ptr noundef %field_declaration) #0 !dbg !696 {
entry:
  %struct_declaration.addr = alloca ptr, align 8
  %field_name.addr = alloca ptr, align 8
  %field_declaration.addr = alloca ptr, align 8
  %field = alloca ptr, align 8
  %index = alloca i64, align 8
  store ptr %struct_declaration, ptr %struct_declaration.addr, align 8, !tbaa !206
  tail call void @llvm.dbg.declare(metadata ptr %struct_declaration.addr, metadata !700, metadata !DIExpression()), !dbg !705
  store ptr %field_name, ptr %field_name.addr, align 8, !tbaa !206
  tail call void @llvm.dbg.declare(metadata ptr %field_name.addr, metadata !701, metadata !DIExpression()), !dbg !706
  store ptr %field_declaration, ptr %field_declaration.addr, align 8, !tbaa !206
  tail call void @llvm.dbg.declare(metadata ptr %field_declaration.addr, metadata !702, metadata !DIExpression()), !dbg !707
  call void @llvm.lifetime.start.p0(i64 8, ptr %field) #10, !dbg !708
  tail call void @llvm.dbg.declare(metadata ptr %field, metadata !703, metadata !DIExpression()), !dbg !709
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #10, !dbg !710
  tail call void @llvm.dbg.declare(metadata ptr %index, metadata !704, metadata !DIExpression()), !dbg !711
  %0 = load ptr, ptr %struct_declaration.addr, align 8, !dbg !712, !tbaa !206
  %fields = getelementptr inbounds %struct.declaration_struct, ptr %0, i32 0, i32 3, !dbg !713
  %1 = load ptr, ptr %fields, align 8, !dbg !713, !tbaa !335
  %2 = load ptr, ptr %struct_declaration.addr, align 8, !dbg !714, !tbaa !206
  %fields1 = getelementptr inbounds %struct.declaration_struct, ptr %2, i32 0, i32 3, !dbg !715
  %3 = load ptr, ptr %fields1, align 8, !dbg !715, !tbaa !335
  %len = getelementptr inbounds %struct._GArray, ptr %3, i32 0, i32 1, !dbg !716
  %4 = load i32, ptr %len, align 8, !dbg !716, !tbaa !427
  %add = add i32 %4, 1, !dbg !717
  %call = call ptr @g_array_set_size(ptr noundef %1, i32 noundef %add), !dbg !718
  %5 = load ptr, ptr %struct_declaration.addr, align 8, !dbg !719, !tbaa !206
  %fields2 = getelementptr inbounds %struct.declaration_struct, ptr %5, i32 0, i32 3, !dbg !720
  %6 = load ptr, ptr %fields2, align 8, !dbg !720, !tbaa !335
  %len3 = getelementptr inbounds %struct._GArray, ptr %6, i32 0, i32 1, !dbg !721
  %7 = load i32, ptr %len3, align 8, !dbg !721, !tbaa !427
  %sub = sub i32 %7, 1, !dbg !722
  %conv = zext i32 %sub to i64, !dbg !719
  store i64 %conv, ptr %index, align 8, !dbg !723, !tbaa !221
  %8 = load ptr, ptr %struct_declaration.addr, align 8, !dbg !724, !tbaa !206
  %fields4 = getelementptr inbounds %struct.declaration_struct, ptr %8, i32 0, i32 3, !dbg !724
  %9 = load ptr, ptr %fields4, align 8, !dbg !724, !tbaa !335
  %data = getelementptr inbounds %struct._GArray, ptr %9, i32 0, i32 0, !dbg !724
  %10 = load ptr, ptr %data, align 8, !dbg !724, !tbaa !434
  %11 = load i64, ptr %index, align 8, !dbg !724, !tbaa !221
  %arrayidx = getelementptr inbounds %struct.declaration_field, ptr %10, i64 %11, !dbg !724
  store ptr %arrayidx, ptr %field, align 8, !dbg !725, !tbaa !206
  %12 = load ptr, ptr %field_name.addr, align 8, !dbg !726, !tbaa !206
  %call5 = call i32 @g_quark_from_string(ptr noundef %12), !dbg !727
  %13 = load ptr, ptr %field, align 8, !dbg !728, !tbaa !206
  %name = getelementptr inbounds %struct.declaration_field, ptr %13, i32 0, i32 0, !dbg !729
  store i32 %call5, ptr %name, align 8, !dbg !730, !tbaa !595
  %14 = load ptr, ptr %field_declaration.addr, align 8, !dbg !731, !tbaa !206
  call void @bt_declaration_ref(ptr noundef %14), !dbg !732
  %15 = load ptr, ptr %field_declaration.addr, align 8, !dbg !733, !tbaa !206
  %16 = load ptr, ptr %field, align 8, !dbg !734, !tbaa !206
  %declaration = getelementptr inbounds %struct.declaration_field, ptr %16, i32 0, i32 1, !dbg !735
  store ptr %15, ptr %declaration, align 8, !dbg !736, !tbaa !437
  %17 = load ptr, ptr %struct_declaration.addr, align 8, !dbg !737, !tbaa !206
  %fields_by_name = getelementptr inbounds %struct.declaration_struct, ptr %17, i32 0, i32 1, !dbg !738
  %18 = load ptr, ptr %fields_by_name, align 8, !dbg !738, !tbaa !329
  %19 = load ptr, ptr %field, align 8, !dbg !739, !tbaa !206
  %name6 = getelementptr inbounds %struct.declaration_field, ptr %19, i32 0, i32 0, !dbg !740
  %20 = load i32, ptr %name6, align 8, !dbg !740, !tbaa !595
  %conv7 = zext i32 %20 to i64, !dbg !741
  %21 = inttoptr i64 %conv7 to ptr, !dbg !742
  %22 = load i64, ptr %index, align 8, !dbg !743, !tbaa !221
  %23 = inttoptr i64 %22 to ptr, !dbg !744
  %call8 = call i32 @g_hash_table_insert(ptr noundef %18, ptr noundef %21, ptr noundef %23), !dbg !745
  %24 = load ptr, ptr %struct_declaration.addr, align 8, !dbg !746, !tbaa !206
  %p = getelementptr inbounds %struct.declaration_struct, ptr %24, i32 0, i32 0, !dbg !746
  %alignment = getelementptr inbounds %struct.bt_declaration, ptr %p, i32 0, i32 1, !dbg !746
  %25 = load i64, ptr %alignment, align 8, !dbg !746, !tbaa !747
  %26 = load ptr, ptr %field_declaration.addr, align 8, !dbg !746, !tbaa !206
  %alignment9 = getelementptr inbounds %struct.bt_declaration, ptr %26, i32 0, i32 1, !dbg !746
  %27 = load i64, ptr %alignment9, align 8, !dbg !746, !tbaa !349
  %cmp = icmp ult i64 %25, %27, !dbg !746
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !746

cond.true:                                        ; preds = %entry
  %28 = load ptr, ptr %field_declaration.addr, align 8, !dbg !746, !tbaa !206
  %alignment11 = getelementptr inbounds %struct.bt_declaration, ptr %28, i32 0, i32 1, !dbg !746
  %29 = load i64, ptr %alignment11, align 8, !dbg !746, !tbaa !349
  br label %cond.end, !dbg !746

cond.false:                                       ; preds = %entry
  %30 = load ptr, ptr %struct_declaration.addr, align 8, !dbg !746, !tbaa !206
  %p12 = getelementptr inbounds %struct.declaration_struct, ptr %30, i32 0, i32 0, !dbg !746
  %alignment13 = getelementptr inbounds %struct.bt_declaration, ptr %p12, i32 0, i32 1, !dbg !746
  %31 = load i64, ptr %alignment13, align 8, !dbg !746, !tbaa !747
  br label %cond.end, !dbg !746

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %29, %cond.true ], [ %31, %cond.false ], !dbg !746
  %32 = load ptr, ptr %struct_declaration.addr, align 8, !dbg !748, !tbaa !206
  %p14 = getelementptr inbounds %struct.declaration_struct, ptr %32, i32 0, i32 0, !dbg !749
  %alignment15 = getelementptr inbounds %struct.bt_declaration, ptr %p14, i32 0, i32 1, !dbg !750
  store i64 %cond, ptr %alignment15, align 8, !dbg !751, !tbaa !747
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #10, !dbg !752
  call void @llvm.lifetime.end.p0(i64 8, ptr %field) #10, !dbg !752
  ret void, !dbg !752
}

declare !dbg !753 ptr @g_array_set_size(ptr noundef, i32 noundef) #6

declare !dbg !756 i32 @g_quark_from_string(ptr noundef) #6

declare !dbg !761 void @bt_declaration_ref(ptr noundef) #6

declare !dbg !762 i32 @g_hash_table_insert(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: nounwind uwtable
define i32 @bt_struct_declaration_lookup_field_index(ptr noundef %struct_declaration, i32 noundef %field_name) #0 !dbg !765 {
entry:
  %retval = alloca i32, align 4
  %struct_declaration.addr = alloca ptr, align 8
  %field_name.addr = alloca i32, align 4
  %index = alloca ptr, align 8
  %found = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %struct_declaration, ptr %struct_declaration.addr, align 8, !tbaa !206
  tail call void @llvm.dbg.declare(metadata ptr %struct_declaration.addr, metadata !769, metadata !DIExpression()), !dbg !773
  store i32 %field_name, ptr %field_name.addr, align 4, !tbaa !244
  tail call void @llvm.dbg.declare(metadata ptr %field_name.addr, metadata !770, metadata !DIExpression()), !dbg !774
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #10, !dbg !775
  tail call void @llvm.dbg.declare(metadata ptr %index, metadata !771, metadata !DIExpression()), !dbg !776
  call void @llvm.lifetime.start.p0(i64 4, ptr %found) #10, !dbg !777
  tail call void @llvm.dbg.declare(metadata ptr %found, metadata !772, metadata !DIExpression()), !dbg !778
  %0 = load ptr, ptr %struct_declaration.addr, align 8, !dbg !779, !tbaa !206
  %fields_by_name = getelementptr inbounds %struct.declaration_struct, ptr %0, i32 0, i32 1, !dbg !780
  %1 = load ptr, ptr %fields_by_name, align 8, !dbg !780, !tbaa !329
  %2 = load i32, ptr %field_name.addr, align 4, !dbg !781, !tbaa !244
  %conv = zext i32 %2 to i64, !dbg !782
  %3 = inttoptr i64 %conv to ptr, !dbg !783
  %call = call i32 @g_hash_table_lookup_extended(ptr noundef %1, ptr noundef %3, ptr noundef null, ptr noundef %index), !dbg !784
  store i32 %call, ptr %found, align 4, !dbg !785, !tbaa !244
  %4 = load i32, ptr %found, align 4, !dbg !786, !tbaa !244
  %tobool = icmp ne i32 %4, 0, !dbg !786
  br i1 %tobool, label %if.end, label %if.then, !dbg !788

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !789
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !789

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %index, align 8, !dbg !790, !tbaa !206
  %6 = ptrtoint ptr %5 to i64, !dbg !791
  %conv1 = trunc i64 %6 to i32, !dbg !792
  store i32 %conv1, ptr %retval, align 4, !dbg !793
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !793

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %found) #10, !dbg !794
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #10, !dbg !794
  %7 = load i32, ptr %retval, align 4, !dbg !794
  ret i32 %7, !dbg !794
}

declare !dbg !795 i32 @g_hash_table_lookup_extended(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: nounwind uwtable
define ptr @bt_struct_declaration_get_field_from_index(ptr noundef %struct_declaration, i32 noundef %index) #0 !dbg !798 {
entry:
  %retval = alloca ptr, align 8
  %struct_declaration.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  store ptr %struct_declaration, ptr %struct_declaration.addr, align 8, !tbaa !206
  tail call void @llvm.dbg.declare(metadata ptr %struct_declaration.addr, metadata !802, metadata !DIExpression()), !dbg !804
  store i32 %index, ptr %index.addr, align 4, !tbaa !244
  tail call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !803, metadata !DIExpression()), !dbg !805
  %0 = load i32, ptr %index.addr, align 4, !dbg !806, !tbaa !244
  %cmp = icmp slt i32 %0, 0, !dbg !808
  br i1 %cmp, label %if.then, label %if.end, !dbg !809

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !810
  br label %return, !dbg !810

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %struct_declaration.addr, align 8, !dbg !811, !tbaa !206
  %fields = getelementptr inbounds %struct.declaration_struct, ptr %1, i32 0, i32 3, !dbg !811
  %2 = load ptr, ptr %fields, align 8, !dbg !811, !tbaa !335
  %data = getelementptr inbounds %struct._GArray, ptr %2, i32 0, i32 0, !dbg !811
  %3 = load ptr, ptr %data, align 8, !dbg !811, !tbaa !434
  %4 = load i32, ptr %index.addr, align 4, !dbg !811, !tbaa !244
  %idxprom = sext i32 %4 to i64, !dbg !811
  %arrayidx = getelementptr inbounds %struct.declaration_field, ptr %3, i64 %idxprom, !dbg !811
  store ptr %arrayidx, ptr %retval, align 8, !dbg !812
  br label %return, !dbg !812

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !813
  ret ptr %5, !dbg !813
}

; Function Attrs: nounwind uwtable
define ptr @bt_struct_definition_get_field_from_index(ptr noundef %_struct, i32 noundef %index) #0 !dbg !814 {
entry:
  %retval = alloca ptr, align 8
  %_struct.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  store ptr %_struct, ptr %_struct.addr, align 8, !tbaa !206
  tail call void @llvm.dbg.declare(metadata ptr %_struct.addr, metadata !820, metadata !DIExpression()), !dbg !822
  store i32 %index, ptr %index.addr, align 4, !tbaa !244
  tail call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !821, metadata !DIExpression()), !dbg !823
  %0 = load i32, ptr %index.addr, align 4, !dbg !824, !tbaa !244
  %cmp = icmp slt i32 %0, 0, !dbg !826
  br i1 %cmp, label %if.then, label %if.end, !dbg !827

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !828
  br label %return, !dbg !828

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %_struct.addr, align 8, !dbg !829, !tbaa !206
  %fields = getelementptr inbounds %struct.definition_struct, ptr %1, i32 0, i32 2, !dbg !829
  %2 = load ptr, ptr %fields, align 8, !dbg !829, !tbaa !227
  %pdata = getelementptr inbounds %struct._GPtrArray, ptr %2, i32 0, i32 0, !dbg !829
  %3 = load ptr, ptr %pdata, align 8, !dbg !829, !tbaa !239
  %4 = load i32, ptr %index.addr, align 4, !dbg !829, !tbaa !244
  %idxprom = sext i32 %4 to i64, !dbg !829
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom, !dbg !829
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !829, !tbaa !206
  store ptr %5, ptr %retval, align 8, !dbg !830
  br label %return, !dbg !830

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8, !dbg !831
  ret ptr %6, !dbg !831
}

; Function Attrs: nounwind uwtable
define i64 @bt_struct_declaration_len(ptr noundef %struct_declaration) #0 !dbg !832 {
entry:
  %struct_declaration.addr = alloca ptr, align 8
  store ptr %struct_declaration, ptr %struct_declaration.addr, align 8, !tbaa !206
  tail call void @llvm.dbg.declare(metadata ptr %struct_declaration.addr, metadata !838, metadata !DIExpression()), !dbg !839
  %0 = load ptr, ptr %struct_declaration.addr, align 8, !dbg !840, !tbaa !206
  %fields = getelementptr inbounds %struct.declaration_struct, ptr %0, i32 0, i32 3, !dbg !841
  %1 = load ptr, ptr %fields, align 8, !dbg !841, !tbaa !335
  %len = getelementptr inbounds %struct._GArray, ptr %1, i32 0, i32 1, !dbg !842
  %2 = load i32, ptr %len, align 8, !dbg !842, !tbaa !427
  %conv = zext i32 %2 to i64, !dbg !840
  ret i64 %conv, !dbg !843
}

; Function Attrs: noreturn nounwind
declare !dbg !844 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #8

declare !dbg !848 void @bt_free_declaration_scope(ptr noundef) #6

declare !dbg !851 void @g_hash_table_destroy(ptr noundef) #6

declare !dbg !854 void @bt_declaration_unref(ptr noundef) #6

declare !dbg !855 ptr @g_array_free(ptr noundef, i32 noundef) #6

declare !dbg !858 void @g_free(ptr noundef) #6

declare !dbg !861 i32 @bt_new_definition_path(ptr noundef, i32 noundef, ptr noundef) #6

declare !dbg !864 ptr @bt_new_definition_scope(ptr noundef, i32 noundef, ptr noundef) #6

declare !dbg !867 i32 @bt_register_field_definition(i32 noundef, ptr noundef, ptr noundef) #6

declare !dbg !870 ptr @g_ptr_array_sized_new(i32 noundef) #6

declare !dbg !873 void @g_ptr_array_set_size(ptr noundef, i32 noundef) #6

declare !dbg !876 void @bt_definition_unref(ptr noundef) #6

declare !dbg !877 void @bt_free_definition_scope(ptr noundef) #6

declare !dbg !880 ptr @g_ptr_array_free(ptr noundef, i32 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { allocsize(0) }
attributes #13 = { allocsize(0,1) }

!llvm.dbg.cu = !{!44}
!llvm.module.flags = !{!161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../include/babeltrace/types.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build/aidengro/spack-stage-babeltrace-1.2.4-ltsh36prkey7v3qgu5igo3lgbpgjtjyj/spack-src/types", checksumkind: CSK_MD5, checksum: "f3c4a6ec3715821c96628bfd5e29fc9b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 35)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 30)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 504, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 63)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !20, line: 136, type: !21, isLocal: true, isDefinition: true)
!20 = !DIFile(filename: "struct.c", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build/aidengro/spack-stage-babeltrace-1.2.4-ltsh36prkey7v3qgu5igo3lgbpgjtjyj/spack-src/types", checksumkind: CSK_MD5, checksum: "1d05e23ef8e4bc673889de29f9cb2553")
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 22)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !20, line: 136, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 9)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !20, line: 136, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 992, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 124)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !20, line: 173, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 58)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !20, line: 173, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 424, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 53)
!44 = distinct !DICompileUnit(language: DW_LANG_C11, file: !20, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !45, retainedTypes: !61, globals: !160, splitDebugInlining: false, nameTableKind: None)
!45 = !{!46}
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ctf_type_id", file: !47, line: 63, baseType: !48, size: 32, elements: !49)
!47 = !DIFile(filename: "../include/babeltrace/ctf/events.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build/aidengro/spack-stage-babeltrace-1.2.4-ltsh36prkey7v3qgu5igo3lgbpgjtjyj/spack-src/types", checksumkind: CSK_MD5, checksum: "94e6bc16713c74e95d4df9cedcb70078")
!48 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!50 = !DIEnumerator(name: "CTF_TYPE_UNKNOWN", value: 0)
!51 = !DIEnumerator(name: "CTF_TYPE_INTEGER", value: 1)
!52 = !DIEnumerator(name: "CTF_TYPE_FLOAT", value: 2)
!53 = !DIEnumerator(name: "CTF_TYPE_ENUM", value: 3)
!54 = !DIEnumerator(name: "CTF_TYPE_STRING", value: 4)
!55 = !DIEnumerator(name: "CTF_TYPE_STRUCT", value: 5)
!56 = !DIEnumerator(name: "CTF_TYPE_UNTAGGED_VARIANT", value: 6)
!57 = !DIEnumerator(name: "CTF_TYPE_VARIANT", value: 7)
!58 = !DIEnumerator(name: "CTF_TYPE_ARRAY", value: 8)
!59 = !DIEnumerator(name: "CTF_TYPE_SEQUENCE", value: 9)
!60 = !DIEnumerator(name: "NR_CTF_TYPES", value: 10)
!61 = !{!62, !149, !124, !150, !151, !147, !146, !76, !156, !78, !159}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "definition_struct", file: !2, line: 256, size: 384, elements: !64)
!64 = !{!65, !123, !139}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !63, file: !2, line: 257, baseType: !66, size: 256)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bt_definition", file: !2, line: 100, size: 256, elements: !67)
!67 = !{!68, !118, !119, !120, !121, !122}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "declaration", scope: !66, file: !2, line: 101, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bt_declaration", file: !2, line: 81, size: 384, elements: !71)
!71 = !{!72, !73, !77, !79, !83, !114}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !70, file: !2, line: 82, baseType: !46, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !70, file: !2, line: 83, baseType: !74, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !75, line: 70, baseType: !76)
!75 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!76 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !70, file: !2, line: 84, baseType: !78, size: 32, offset: 128)
!78 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "declaration_free", scope: !70, file: !2, line: 88, baseType: !80, size: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !69}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "definition_new", scope: !70, file: !2, line: 90, baseType: !84, size: 64, offset: 256)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{!87, !69, !88, !109, !78, !113}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "definition_scope", file: !2, line: 66, size: 192, elements: !90)
!90 = !{!91, !96, !97}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "definitions", scope: !89, file: !2, line: 68, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !94, line: 40, baseType: !95)
!94 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__sp/linux-ubuntu22.04-zen2/clang-18.0.0/glib-2.78.0-3gqao4bugh5cvju6k4tvz5724i6ntyf7/include/glib-2.0/glib/ghash.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build", checksumkind: CSK_MD5, checksum: "ff178276f16d53966cd41952349b047f")
!95 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !94, line: 40, flags: DIFlagFwdDecl)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "parent_scope", scope: !89, file: !2, line: 69, baseType: !88, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "scope_path", scope: !89, file: !2, line: 78, baseType: !98, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "GArray", file: !100, line: 39, baseType: !101)
!100 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__sp/linux-ubuntu22.04-zen2/clang-18.0.0/glib-2.78.0-3gqao4bugh5cvju6k4tvz5724i6ntyf7/include/glib-2.0/glib/garray.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build", checksumkind: CSK_MD5, checksum: "24464ffabff9776f21c3b3e9eb512110")
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GArray", file: !100, line: 43, size: 128, elements: !102)
!102 = !{!103, !107}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !101, file: !100, line: 45, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !106, line: 52, baseType: !4)
!106 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__sp/linux-ubuntu22.04-zen2/clang-18.0.0/glib-2.78.0-3gqao4bugh5cvju6k4tvz5724i6ntyf7/include/glib-2.0/glib/gtypes.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build", checksumkind: CSK_MD5, checksum: "bb471ab4f4c8d1bff5846ccdfd1b3ac4")
!107 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !101, file: !100, line: 46, baseType: !108, size: 32, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !106, line: 61, baseType: !48)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !110, line: 38, baseType: !111)
!110 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__sp/linux-ubuntu22.04-zen2/clang-18.0.0/glib-2.78.0-3gqao4bugh5cvju6k4tvz5724i6ntyf7/include/glib-2.0/glib/gquark.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build", checksumkind: CSK_MD5, checksum: "faea4af9793ef6f769fba7d824d6e90e")
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !112, line: 56, baseType: !48)
!112 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__sp/linux-ubuntu22.04-zen2/clang-18.0.0/glib-2.78.0-3gqao4bugh5cvju6k4tvz5724i6ntyf7/lib/glib-2.0/include/glibconfig.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build", checksumkind: CSK_MD5, checksum: "9ffe497af55cf05235a0b35b38ac2c19")
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "definition_free", scope: !70, file: !2, line: 97, baseType: !115, size: 64, offset: 320)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !87}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !66, file: !2, line: 102, baseType: !78, size: 32, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !66, file: !2, line: 103, baseType: !109, size: 32, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !66, file: !2, line: 104, baseType: !78, size: 32, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !66, file: !2, line: 105, baseType: !109, size: 32, offset: 160)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !66, file: !2, line: 106, baseType: !88, size: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "declaration", scope: !63, file: !2, line: 258, baseType: !124, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "declaration_struct", file: !2, line: 249, size: 576, elements: !126)
!126 = !{!127, !128, !129, !138}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !125, file: !2, line: 250, baseType: !70, size: 384)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "fields_by_name", scope: !125, file: !2, line: 251, baseType: !92, size: 64, offset: 384)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !125, file: !2, line: 252, baseType: !130, size: 64, offset: 448)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "declaration_scope", file: !2, line: 52, size: 320, elements: !132)
!132 = !{!133, !134, !135, !136, !137}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "typedef_declarations", scope: !131, file: !2, line: 55, baseType: !92, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "struct_declarations", scope: !131, file: !2, line: 57, baseType: !92, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "variant_declarations", scope: !131, file: !2, line: 59, baseType: !92, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "enum_declarations", scope: !131, file: !2, line: 61, baseType: !92, size: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "parent_scope", scope: !131, file: !2, line: 62, baseType: !130, size: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !125, file: !2, line: 253, baseType: !98, size: 64, offset: 512)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !63, file: !2, line: 259, baseType: !140, size: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPtrArray", file: !100, line: 41, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GPtrArray", file: !100, line: 55, size: 128, elements: !143)
!143 = !{!144, !148}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "pdata", scope: !142, file: !100, line: 57, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !106, line: 109, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !142, file: !100, line: 58, baseType: !108, size: 32, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !112, line: 82, baseType: !76)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "declaration_field", file: !2, line: 244, size: 128, elements: !153)
!153 = !{!154, !155}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !152, file: !2, line: 245, baseType: !109, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "declaration", scope: !152, file: !2, line: 246, baseType: !69, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !106, line: 110, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!160 = !{!0, !7, !12, !18, !24, !29, !34, !39}
!161 = !{i32 7, !"Dwarf Version", i32 5}
!162 = !{i32 2, !"Debug Info Version", i32 3}
!163 = !{i32 1, !"wchar_size", i32 4}
!164 = !{i32 8, !"PIC Level", i32 2}
!165 = !{i32 7, !"uwtable", i32 2}
!166 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!167 = distinct !DISubprogram(name: "bt_struct_rw", scope: !20, file: !20, line: 46, type: !168, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !192)
!168 = !DISubroutineType(types: !169)
!169 = !{!78, !170, !87}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bt_stream_pos", file: !2, line: 113, size: 320, elements: !172)
!172 = !{!173, !177, !183, !190, !191}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "rw_table", scope: !171, file: !2, line: 115, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "rw_dispatch", file: !2, line: 109, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "event_cb", scope: !171, file: !2, line: 116, baseType: !178, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!78, !170, !181}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "ctf_stream_definition", file: !2, line: 45, flags: DIFlagFwdDecl)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "pre_trace_cb", scope: !171, file: !2, line: 118, baseType: !184, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!78, !170, !187}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DICompositeType(tag: DW_TAG_structure_type, name: "bt_trace_descriptor", file: !189, line: 47, flags: DIFlagFwdDecl)
!189 = !DIFile(filename: "../include/babeltrace/format.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build/aidengro/spack-stage-babeltrace-1.2.4-ltsh36prkey7v3qgu5igo3lgbpgjtjyj/spack-src/types", checksumkind: CSK_MD5, checksum: "8b73d2e240348b75e8476ff9731b0bfe")
!190 = !DIDerivedType(tag: DW_TAG_member, name: "post_trace_cb", scope: !171, file: !2, line: 120, baseType: !184, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !171, file: !2, line: 122, baseType: !187, size: 64, offset: 256)
!192 = !{!193, !194, !195, !196, !200, !201, !202}
!193 = !DILocalVariable(name: "ppos", arg: 1, scope: !167, file: !20, line: 46, type: !170)
!194 = !DILocalVariable(name: "definition", arg: 2, scope: !167, file: !20, line: 46, type: !87)
!195 = !DILocalVariable(name: "struct_definition", scope: !167, file: !20, line: 48, type: !62)
!196 = !DILocalVariable(name: "__ptr", scope: !197, file: !20, line: 49, type: !198)
!197 = distinct !DILexicalBlock(scope: !167, file: !20, line: 49, column: 3)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!200 = !DILocalVariable(name: "i", scope: !167, file: !20, line: 50, type: !76)
!201 = !DILocalVariable(name: "ret", scope: !167, file: !20, line: 51, type: !78)
!202 = !DILocalVariable(name: "field", scope: !203, file: !20, line: 54, type: !87)
!203 = distinct !DILexicalBlock(scope: !204, file: !20, line: 53, column: 55)
!204 = distinct !DILexicalBlock(scope: !205, file: !20, line: 53, column: 2)
!205 = distinct !DILexicalBlock(scope: !167, file: !20, line: 53, column: 2)
!206 = !{!207, !207, i64 0}
!207 = !{!"any pointer", !208, i64 0}
!208 = !{!"omnipotent char", !209, i64 0}
!209 = !{!"Simple C/C++ TBAA"}
!210 = !DILocation(line: 46, column: 40, scope: !167)
!211 = !DILocation(line: 46, column: 68, scope: !167)
!212 = !DILocation(line: 48, column: 2, scope: !167)
!213 = !DILocation(line: 48, column: 28, scope: !167)
!214 = !DILocation(line: 49, column: 3, scope: !197)
!215 = !DILocation(line: 49, column: 3, scope: !167)
!216 = !DILocation(line: 50, column: 2, scope: !167)
!217 = !DILocation(line: 50, column: 16, scope: !167)
!218 = !DILocation(line: 51, column: 2, scope: !167)
!219 = !DILocation(line: 51, column: 6, scope: !167)
!220 = !DILocation(line: 53, column: 9, scope: !205)
!221 = !{!222, !222, i64 0}
!222 = !{!"long", !208, i64 0}
!223 = !DILocation(line: 53, column: 7, scope: !205)
!224 = !DILocation(line: 53, column: 14, scope: !204)
!225 = !DILocation(line: 53, column: 18, scope: !204)
!226 = !DILocation(line: 53, column: 37, scope: !204)
!227 = !{!228, !207, i64 40}
!228 = !{!"definition_struct", !229, i64 0, !207, i64 32, !207, i64 40}
!229 = !{!"bt_definition", !207, i64 0, !230, i64 8, !230, i64 12, !230, i64 16, !230, i64 20, !207, i64 24}
!230 = !{!"int", !208, i64 0}
!231 = !DILocation(line: 53, column: 45, scope: !204)
!232 = !{!233, !230, i64 8}
!233 = !{!"_GPtrArray", !207, i64 0, !230, i64 8}
!234 = !DILocation(line: 53, column: 16, scope: !204)
!235 = !DILocation(line: 53, column: 2, scope: !205)
!236 = !DILocation(line: 54, column: 3, scope: !203)
!237 = !DILocation(line: 54, column: 25, scope: !203)
!238 = !DILocation(line: 55, column: 4, scope: !203)
!239 = !{!233, !207, i64 0}
!240 = !DILocation(line: 56, column: 20, scope: !203)
!241 = !DILocation(line: 56, column: 26, scope: !203)
!242 = !DILocation(line: 56, column: 9, scope: !203)
!243 = !DILocation(line: 56, column: 7, scope: !203)
!244 = !{!230, !230, i64 0}
!245 = !DILocation(line: 57, column: 7, scope: !246)
!246 = distinct !DILexicalBlock(scope: !203, file: !20, line: 57, column: 7)
!247 = !DILocation(line: 57, column: 7, scope: !203)
!248 = !DILocation(line: 58, column: 11, scope: !246)
!249 = !DILocation(line: 58, column: 4, scope: !246)
!250 = !DILocation(line: 59, column: 2, scope: !204)
!251 = !DILocation(line: 59, column: 2, scope: !203)
!252 = !DILocation(line: 53, column: 51, scope: !204)
!253 = !DILocation(line: 53, column: 2, scope: !204)
!254 = distinct !{!254, !235, !255, !256}
!255 = !DILocation(line: 59, column: 2, scope: !205)
!256 = !{!"llvm.loop.mustprogress"}
!257 = !DILocation(line: 60, column: 2, scope: !167)
!258 = !DILocation(line: 61, column: 1, scope: !167)
!259 = distinct !DISubprogram(name: "generic_rw", scope: !2, file: !2, line: 126, type: !168, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !260)
!260 = !{!261, !262, !263, !264}
!261 = !DILocalVariable(name: "pos", arg: 1, scope: !259, file: !2, line: 126, type: !170)
!262 = !DILocalVariable(name: "definition", arg: 2, scope: !259, file: !2, line: 126, type: !87)
!263 = !DILocalVariable(name: "dispatch_id", scope: !259, file: !2, line: 128, type: !46)
!264 = !DILocalVariable(name: "call", scope: !259, file: !2, line: 129, type: !175)
!265 = !DILocation(line: 126, column: 38, scope: !259)
!266 = !DILocation(line: 126, column: 65, scope: !259)
!267 = !DILocation(line: 128, column: 2, scope: !259)
!268 = !DILocation(line: 128, column: 19, scope: !259)
!269 = !DILocation(line: 128, column: 33, scope: !259)
!270 = !DILocation(line: 128, column: 45, scope: !259)
!271 = !{!229, !207, i64 0}
!272 = !DILocation(line: 128, column: 58, scope: !259)
!273 = !{!274, !208, i64 0}
!274 = !{!"bt_declaration", !208, i64 0, !222, i64 8, !230, i64 16, !207, i64 24, !207, i64 32, !207, i64 40}
!275 = !{!208, !208, i64 0}
!276 = !DILocation(line: 129, column: 2, scope: !259)
!277 = !DILocation(line: 129, column: 14, scope: !259)
!278 = !DILocation(line: 131, column: 2, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !2, line: 131, column: 2)
!280 = distinct !DILexicalBlock(scope: !259, file: !2, line: 131, column: 2)
!281 = !{!282, !207, i64 0}
!282 = !{!"bt_stream_pos", !207, i64 0, !207, i64 8, !207, i64 16, !207, i64 24, !207, i64 32}
!283 = !DILocation(line: 131, column: 2, scope: !280)
!284 = !DILocation(line: 132, column: 9, scope: !259)
!285 = !DILocation(line: 132, column: 14, scope: !259)
!286 = !DILocation(line: 132, column: 23, scope: !259)
!287 = !DILocation(line: 132, column: 7, scope: !259)
!288 = !DILocation(line: 133, column: 9, scope: !259)
!289 = !DILocation(line: 133, column: 14, scope: !259)
!290 = !DILocation(line: 133, column: 19, scope: !259)
!291 = !DILocation(line: 134, column: 1, scope: !259)
!292 = !DILocation(line: 133, column: 2, scope: !259)
!293 = distinct !DISubprogram(name: "bt_struct_declaration_new", scope: !20, file: !20, line: 84, type: !294, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !300)
!294 = !DISubroutineType(types: !295)
!295 = !{!124, !130, !296}
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !297, line: 27, baseType: !298)
!297 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !299, line: 45, baseType: !76)
!299 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!300 = !{!301, !302, !303, !304, !305, !307, !308}
!301 = !DILocalVariable(name: "parent_scope", arg: 1, scope: !293, file: !20, line: 84, type: !130)
!302 = !DILocalVariable(name: "min_align", arg: 2, scope: !293, file: !20, line: 85, type: !296)
!303 = !DILocalVariable(name: "struct_declaration", scope: !293, file: !20, line: 87, type: !124)
!304 = !DILocalVariable(name: "declaration", scope: !293, file: !20, line: 88, type: !69)
!305 = !DILocalVariable(name: "__n", scope: !306, file: !20, line: 90, type: !150)
!306 = distinct !DILexicalBlock(scope: !293, file: !20, line: 90, column: 23)
!307 = !DILocalVariable(name: "__s", scope: !306, file: !20, line: 90, type: !150)
!308 = !DILocalVariable(name: "__p", scope: !306, file: !20, line: 90, type: !146)
!309 = !DILocation(line: 84, column: 54, scope: !293)
!310 = !DILocation(line: 85, column: 20, scope: !293)
!311 = !DILocation(line: 87, column: 2, scope: !293)
!312 = !DILocation(line: 87, column: 29, scope: !293)
!313 = !DILocation(line: 88, column: 2, scope: !293)
!314 = !DILocation(line: 88, column: 25, scope: !293)
!315 = !DILocation(line: 90, column: 23, scope: !306)
!316 = !DILocation(line: 90, column: 23, scope: !317)
!317 = distinct !DILexicalBlock(scope: !306, file: !20, line: 90, column: 23)
!318 = !DILocation(line: 90, column: 23, scope: !319)
!319 = distinct !DILexicalBlock(scope: !317, file: !20, line: 90, column: 23)
!320 = !DILocation(line: 90, column: 23, scope: !293)
!321 = !DILocation(line: 90, column: 21, scope: !293)
!322 = !DILocation(line: 91, column: 17, scope: !293)
!323 = !DILocation(line: 91, column: 37, scope: !293)
!324 = !DILocation(line: 91, column: 14, scope: !293)
!325 = !DILocation(line: 92, column: 39, scope: !293)
!326 = !DILocation(line: 92, column: 2, scope: !293)
!327 = !DILocation(line: 92, column: 22, scope: !293)
!328 = !DILocation(line: 92, column: 37, scope: !293)
!329 = !{!330, !207, i64 48}
!330 = !{!"declaration_struct", !274, i64 0, !207, i64 48, !207, i64 56, !207, i64 64}
!331 = !DILocation(line: 94, column: 31, scope: !293)
!332 = !DILocation(line: 94, column: 2, scope: !293)
!333 = !DILocation(line: 94, column: 22, scope: !293)
!334 = !DILocation(line: 94, column: 29, scope: !293)
!335 = !{!330, !207, i64 64}
!336 = !DILocation(line: 97, column: 55, scope: !293)
!337 = !DILocation(line: 97, column: 30, scope: !293)
!338 = !DILocation(line: 97, column: 2, scope: !293)
!339 = !DILocation(line: 97, column: 22, scope: !293)
!340 = !DILocation(line: 97, column: 28, scope: !293)
!341 = !{!330, !207, i64 56}
!342 = !DILocation(line: 98, column: 2, scope: !293)
!343 = !DILocation(line: 98, column: 15, scope: !293)
!344 = !DILocation(line: 98, column: 18, scope: !293)
!345 = !DILocation(line: 99, column: 27, scope: !293)
!346 = !DILocation(line: 99, column: 2, scope: !293)
!347 = !DILocation(line: 99, column: 15, scope: !293)
!348 = !DILocation(line: 99, column: 25, scope: !293)
!349 = !{!274, !222, i64 8}
!350 = !DILocation(line: 100, column: 2, scope: !293)
!351 = !DILocation(line: 100, column: 15, scope: !293)
!352 = !DILocation(line: 100, column: 32, scope: !293)
!353 = !{!274, !207, i64 24}
!354 = !DILocation(line: 101, column: 2, scope: !293)
!355 = !DILocation(line: 101, column: 15, scope: !293)
!356 = !DILocation(line: 101, column: 30, scope: !293)
!357 = !{!274, !207, i64 32}
!358 = !DILocation(line: 102, column: 2, scope: !293)
!359 = !DILocation(line: 102, column: 15, scope: !293)
!360 = !DILocation(line: 102, column: 31, scope: !293)
!361 = !{!274, !207, i64 40}
!362 = !DILocation(line: 103, column: 2, scope: !293)
!363 = !DILocation(line: 103, column: 15, scope: !293)
!364 = !DILocation(line: 103, column: 19, scope: !293)
!365 = !{!274, !230, i64 16}
!366 = !DILocation(line: 104, column: 9, scope: !293)
!367 = !DILocation(line: 105, column: 1, scope: !293)
!368 = !DILocation(line: 104, column: 2, scope: !293)
!369 = !DISubprogram(name: "g_malloc", scope: !370, file: !370, line: 84, type: !371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!370 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__sp/linux-ubuntu22.04-zen2/clang-18.0.0/glib-2.78.0-3gqao4bugh5cvju6k4tvz5724i6ntyf7/include/glib-2.0/glib/gmem.h", directory: "/local-ssd/babeltrace-ltsh36prkey7v3qgu5igo3lgbpgjtjyj-build", checksumkind: CSK_MD5, checksum: "ced1198de320998e99129be803b9130d")
!371 = !DISubroutineType(types: !372)
!372 = !{!146, !150}
!373 = !DISubprogram(name: "g_malloc_n", scope: !370, file: !370, line: 99, type: !374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!374 = !DISubroutineType(types: !375)
!375 = !{!146, !150, !150}
!376 = !DISubprogram(name: "g_hash_table_new", scope: !94, file: !94, line: 60, type: !377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!377 = !DISubroutineType(types: !378)
!378 = !{!92, !379, !383}
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashFunc", file: !106, line: 143, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!108, !156}
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "GEqualFunc", file: !106, line: 117, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!387, !156, !156}
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !106, line: 56, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !106, line: 55, baseType: !78)
!389 = !DISubprogram(name: "g_array_sized_new", scope: !100, file: !100, line: 88, type: !390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!390 = !DISubroutineType(types: !391)
!391 = !{!98, !387, !387, !108, !108}
!392 = !DISubprogram(name: "bt_new_declaration_scope", scope: !2, file: !2, line: 344, type: !393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!393 = !DISubroutineType(types: !394)
!394 = !{!130, !130}
!395 = distinct !DISubprogram(name: "_struct_declaration_free", scope: !20, file: !20, line: 64, type: !81, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !396)
!396 = !{!397, !398, !399, !403, !404}
!397 = !DILocalVariable(name: "declaration", arg: 1, scope: !395, file: !20, line: 64, type: !69)
!398 = !DILocalVariable(name: "struct_declaration", scope: !395, file: !20, line: 66, type: !124)
!399 = !DILocalVariable(name: "__ptr", scope: !400, file: !20, line: 67, type: !401)
!400 = distinct !DILexicalBlock(scope: !395, file: !20, line: 67, column: 3)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!403 = !DILocalVariable(name: "i", scope: !395, file: !20, line: 68, type: !76)
!404 = !DILocalVariable(name: "declaration_field", scope: !405, file: !20, line: 74, type: !151)
!405 = distinct !DILexicalBlock(scope: !406, file: !20, line: 73, column: 56)
!406 = distinct !DILexicalBlock(scope: !407, file: !20, line: 73, column: 2)
!407 = distinct !DILexicalBlock(scope: !395, file: !20, line: 73, column: 2)
!408 = !DILocation(line: 64, column: 54, scope: !395)
!409 = !DILocation(line: 66, column: 2, scope: !395)
!410 = !DILocation(line: 66, column: 29, scope: !395)
!411 = !DILocation(line: 67, column: 3, scope: !400)
!412 = !DILocation(line: 67, column: 3, scope: !395)
!413 = !DILocation(line: 68, column: 2, scope: !395)
!414 = !DILocation(line: 68, column: 16, scope: !395)
!415 = !DILocation(line: 70, column: 28, scope: !395)
!416 = !DILocation(line: 70, column: 48, scope: !395)
!417 = !DILocation(line: 70, column: 2, scope: !395)
!418 = !DILocation(line: 71, column: 23, scope: !395)
!419 = !DILocation(line: 71, column: 43, scope: !395)
!420 = !DILocation(line: 71, column: 2, scope: !395)
!421 = !DILocation(line: 73, column: 9, scope: !407)
!422 = !DILocation(line: 73, column: 7, scope: !407)
!423 = !DILocation(line: 73, column: 14, scope: !406)
!424 = !DILocation(line: 73, column: 18, scope: !406)
!425 = !DILocation(line: 73, column: 38, scope: !406)
!426 = !DILocation(line: 73, column: 46, scope: !406)
!427 = !{!428, !230, i64 8}
!428 = !{!"_GArray", !207, i64 0, !230, i64 8}
!429 = !DILocation(line: 73, column: 16, scope: !406)
!430 = !DILocation(line: 73, column: 2, scope: !407)
!431 = !DILocation(line: 74, column: 3, scope: !405)
!432 = !DILocation(line: 74, column: 29, scope: !405)
!433 = !DILocation(line: 75, column: 5, scope: !405)
!434 = !{!428, !207, i64 0}
!435 = !DILocation(line: 77, column: 24, scope: !405)
!436 = !DILocation(line: 77, column: 43, scope: !405)
!437 = !{!438, !207, i64 8}
!438 = !{!"declaration_field", !230, i64 0, !207, i64 8}
!439 = !DILocation(line: 77, column: 3, scope: !405)
!440 = !DILocation(line: 78, column: 2, scope: !406)
!441 = !DILocation(line: 78, column: 2, scope: !405)
!442 = !DILocation(line: 73, column: 52, scope: !406)
!443 = !DILocation(line: 73, column: 2, scope: !406)
!444 = distinct !{!444, !430, !445, !256}
!445 = !DILocation(line: 78, column: 2, scope: !407)
!446 = !DILocation(line: 79, column: 15, scope: !395)
!447 = !DILocation(line: 79, column: 35, scope: !395)
!448 = !DILocation(line: 79, column: 2, scope: !395)
!449 = !DILocation(line: 80, column: 9, scope: !395)
!450 = !DILocation(line: 80, column: 2, scope: !395)
!451 = !DILocation(line: 81, column: 1, scope: !395)
!452 = distinct !DISubprogram(name: "_struct_definition_new", scope: !20, file: !20, line: 109, type: !85, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !453)
!453 = !{!454, !455, !456, !457, !458, !459, !460, !462, !463, !464, !465, !467, !468, !469, !473, !474, !475}
!454 = !DILocalVariable(name: "declaration", arg: 1, scope: !452, file: !20, line: 109, type: !69)
!455 = !DILocalVariable(name: "parent_scope", arg: 2, scope: !452, file: !20, line: 110, type: !88)
!456 = !DILocalVariable(name: "field_name", arg: 3, scope: !452, file: !20, line: 111, type: !109)
!457 = !DILocalVariable(name: "index", arg: 4, scope: !452, file: !20, line: 111, type: !78)
!458 = !DILocalVariable(name: "root_name", arg: 5, scope: !452, file: !20, line: 112, type: !113)
!459 = !DILocalVariable(name: "struct_declaration", scope: !452, file: !20, line: 114, type: !124)
!460 = !DILocalVariable(name: "__ptr", scope: !461, file: !20, line: 115, type: !401)
!461 = distinct !DILexicalBlock(scope: !452, file: !20, line: 115, column: 3)
!462 = !DILocalVariable(name: "_struct", scope: !452, file: !20, line: 116, type: !62)
!463 = !DILocalVariable(name: "i", scope: !452, file: !20, line: 117, type: !78)
!464 = !DILocalVariable(name: "ret", scope: !452, file: !20, line: 118, type: !78)
!465 = !DILocalVariable(name: "__n", scope: !466, file: !20, line: 120, type: !150)
!466 = distinct !DILexicalBlock(scope: !452, file: !20, line: 120, column: 12)
!467 = !DILocalVariable(name: "__s", scope: !466, file: !20, line: 120, type: !150)
!468 = !DILocalVariable(name: "__p", scope: !466, file: !20, line: 120, type: !146)
!469 = !DILocalVariable(name: "declaration_field", scope: !470, file: !20, line: 141, type: !151)
!470 = distinct !DILexicalBlock(scope: !471, file: !20, line: 140, column: 56)
!471 = distinct !DILexicalBlock(scope: !472, file: !20, line: 140, column: 2)
!472 = distinct !DILexicalBlock(scope: !452, file: !20, line: 140, column: 2)
!473 = !DILocalVariable(name: "field", scope: !470, file: !20, line: 144, type: !159)
!474 = !DILabel(scope: !452, name: "error", file: !20, line: 155)
!475 = !DILocalVariable(name: "field", scope: !476, file: !20, line: 157, type: !87)
!476 = distinct !DILexicalBlock(scope: !477, file: !20, line: 156, column: 25)
!477 = distinct !DILexicalBlock(scope: !478, file: !20, line: 156, column: 2)
!478 = distinct !DILexicalBlock(scope: !452, file: !20, line: 156, column: 2)
!479 = !DILocation(line: 109, column: 48, scope: !452)
!480 = !DILocation(line: 110, column: 36, scope: !452)
!481 = !DILocation(line: 111, column: 18, scope: !452)
!482 = !DILocation(line: 111, column: 34, scope: !452)
!483 = !DILocation(line: 112, column: 23, scope: !452)
!484 = !DILocation(line: 114, column: 2, scope: !452)
!485 = !DILocation(line: 114, column: 29, scope: !452)
!486 = !DILocation(line: 115, column: 3, scope: !461)
!487 = !DILocation(line: 115, column: 3, scope: !452)
!488 = !DILocation(line: 116, column: 2, scope: !452)
!489 = !DILocation(line: 116, column: 28, scope: !452)
!490 = !DILocation(line: 117, column: 2, scope: !452)
!491 = !DILocation(line: 117, column: 6, scope: !452)
!492 = !DILocation(line: 118, column: 2, scope: !452)
!493 = !DILocation(line: 118, column: 6, scope: !452)
!494 = !DILocation(line: 120, column: 12, scope: !466)
!495 = !DILocation(line: 120, column: 12, scope: !496)
!496 = distinct !DILexicalBlock(scope: !466, file: !20, line: 120, column: 12)
!497 = !DILocation(line: 120, column: 12, scope: !498)
!498 = distinct !DILexicalBlock(scope: !496, file: !20, line: 120, column: 12)
!499 = !DILocation(line: 120, column: 12, scope: !452)
!500 = !DILocation(line: 120, column: 10, scope: !452)
!501 = !DILocation(line: 121, column: 22, scope: !452)
!502 = !DILocation(line: 121, column: 42, scope: !452)
!503 = !DILocation(line: 121, column: 2, scope: !452)
!504 = !DILocation(line: 122, column: 27, scope: !452)
!505 = !DILocation(line: 122, column: 2, scope: !452)
!506 = !DILocation(line: 122, column: 11, scope: !452)
!507 = !DILocation(line: 122, column: 13, scope: !452)
!508 = !DILocation(line: 122, column: 25, scope: !452)
!509 = !{!228, !207, i64 0}
!510 = !DILocation(line: 123, column: 25, scope: !452)
!511 = !DILocation(line: 123, column: 2, scope: !452)
!512 = !DILocation(line: 123, column: 11, scope: !452)
!513 = !DILocation(line: 123, column: 23, scope: !452)
!514 = !{!228, !207, i64 32}
!515 = !DILocation(line: 124, column: 2, scope: !452)
!516 = !DILocation(line: 124, column: 11, scope: !452)
!517 = !DILocation(line: 124, column: 13, scope: !452)
!518 = !DILocation(line: 124, column: 17, scope: !452)
!519 = !{!228, !230, i64 16}
!520 = !DILocation(line: 129, column: 21, scope: !452)
!521 = !DILocation(line: 129, column: 43, scope: !452)
!522 = !DILocation(line: 129, column: 2, scope: !452)
!523 = !DILocation(line: 129, column: 11, scope: !452)
!524 = !DILocation(line: 129, column: 13, scope: !452)
!525 = !DILocation(line: 129, column: 19, scope: !452)
!526 = !{!228, !230, i64 8}
!527 = !DILocation(line: 130, column: 20, scope: !452)
!528 = !DILocation(line: 130, column: 2, scope: !452)
!529 = !DILocation(line: 130, column: 11, scope: !452)
!530 = !DILocation(line: 130, column: 13, scope: !452)
!531 = !DILocation(line: 130, column: 18, scope: !452)
!532 = !{!228, !230, i64 12}
!533 = !DILocation(line: 131, column: 43, scope: !452)
!534 = !DILocation(line: 131, column: 57, scope: !452)
!535 = !DILocation(line: 131, column: 69, scope: !452)
!536 = !DILocation(line: 131, column: 20, scope: !452)
!537 = !DILocation(line: 131, column: 2, scope: !452)
!538 = !DILocation(line: 131, column: 11, scope: !452)
!539 = !DILocation(line: 131, column: 13, scope: !452)
!540 = !DILocation(line: 131, column: 18, scope: !452)
!541 = !{!228, !230, i64 20}
!542 = !DILocation(line: 132, column: 45, scope: !452)
!543 = !DILocation(line: 132, column: 59, scope: !452)
!544 = !DILocation(line: 132, column: 71, scope: !452)
!545 = !DILocation(line: 132, column: 21, scope: !452)
!546 = !DILocation(line: 132, column: 2, scope: !452)
!547 = !DILocation(line: 132, column: 11, scope: !452)
!548 = !DILocation(line: 132, column: 13, scope: !452)
!549 = !DILocation(line: 132, column: 19, scope: !452)
!550 = !{!228, !207, i64 24}
!551 = !DILocation(line: 134, column: 37, scope: !452)
!552 = !DILocation(line: 134, column: 50, scope: !452)
!553 = !DILocation(line: 134, column: 59, scope: !452)
!554 = !DILocation(line: 135, column: 6, scope: !452)
!555 = !DILocation(line: 134, column: 8, scope: !452)
!556 = !DILocation(line: 134, column: 6, scope: !452)
!557 = !DILocation(line: 136, column: 2, scope: !558)
!558 = distinct !DILexicalBlock(scope: !559, file: !20, line: 136, column: 2)
!559 = distinct !DILexicalBlock(scope: !452, file: !20, line: 136, column: 2)
!560 = !DILocation(line: 136, column: 2, scope: !559)
!561 = !DILocation(line: 138, column: 20, scope: !452)
!562 = !DILocation(line: 138, column: 2, scope: !452)
!563 = !DILocation(line: 138, column: 11, scope: !452)
!564 = !DILocation(line: 138, column: 18, scope: !452)
!565 = !DILocation(line: 139, column: 23, scope: !452)
!566 = !DILocation(line: 139, column: 32, scope: !452)
!567 = !DILocation(line: 139, column: 40, scope: !452)
!568 = !DILocation(line: 139, column: 60, scope: !452)
!569 = !DILocation(line: 139, column: 68, scope: !452)
!570 = !DILocation(line: 139, column: 2, scope: !452)
!571 = !DILocation(line: 140, column: 9, scope: !472)
!572 = !DILocation(line: 140, column: 7, scope: !472)
!573 = !DILocation(line: 140, column: 14, scope: !471)
!574 = !DILocation(line: 140, column: 18, scope: !471)
!575 = !DILocation(line: 140, column: 38, scope: !471)
!576 = !DILocation(line: 140, column: 46, scope: !471)
!577 = !DILocation(line: 140, column: 16, scope: !471)
!578 = !DILocation(line: 140, column: 2, scope: !472)
!579 = !DILocation(line: 141, column: 3, scope: !470)
!580 = !DILocation(line: 141, column: 29, scope: !470)
!581 = !DILocation(line: 142, column: 5, scope: !470)
!582 = !DILocation(line: 144, column: 3, scope: !470)
!583 = !DILocation(line: 144, column: 26, scope: !470)
!584 = !DILocation(line: 145, column: 31, scope: !470)
!585 = !DILocation(line: 147, column: 12, scope: !470)
!586 = !DILocation(line: 147, column: 31, scope: !470)
!587 = !DILocation(line: 147, column: 44, scope: !470)
!588 = !DILocation(line: 147, column: 59, scope: !470)
!589 = !DILocation(line: 147, column: 78, scope: !470)
!590 = !DILocation(line: 148, column: 10, scope: !470)
!591 = !DILocation(line: 148, column: 19, scope: !470)
!592 = !DILocation(line: 148, column: 21, scope: !470)
!593 = !DILocation(line: 149, column: 10, scope: !470)
!594 = !DILocation(line: 149, column: 29, scope: !470)
!595 = !{!438, !230, i64 0}
!596 = !DILocation(line: 149, column: 35, scope: !470)
!597 = !DILocation(line: 147, column: 4, scope: !470)
!598 = !DILocation(line: 147, column: 10, scope: !470)
!599 = !DILocation(line: 150, column: 9, scope: !600)
!600 = distinct !DILexicalBlock(scope: !470, file: !20, line: 150, column: 7)
!601 = !DILocation(line: 150, column: 8, scope: !600)
!602 = !DILocation(line: 150, column: 7, scope: !470)
!603 = !DILocation(line: 151, column: 4, scope: !600)
!604 = !DILocation(line: 152, column: 2, scope: !471)
!605 = !DILocation(line: 152, column: 2, scope: !470)
!606 = !DILocation(line: 140, column: 52, scope: !471)
!607 = !DILocation(line: 140, column: 2, scope: !471)
!608 = distinct !{!608, !578, !609, !256}
!609 = !DILocation(line: 152, column: 2, scope: !472)
!610 = !DILocation(line: 153, column: 10, scope: !452)
!611 = !DILocation(line: 153, column: 19, scope: !452)
!612 = !DILocation(line: 153, column: 2, scope: !452)
!613 = !DILocation(line: 155, column: 1, scope: !452)
!614 = !DILocation(line: 156, column: 8, scope: !478)
!615 = !DILocation(line: 156, column: 7, scope: !478)
!616 = !DILocation(line: 156, column: 12, scope: !477)
!617 = !DILocation(line: 156, column: 14, scope: !477)
!618 = !DILocation(line: 156, column: 2, scope: !478)
!619 = !DILocation(line: 157, column: 3, scope: !476)
!620 = !DILocation(line: 157, column: 25, scope: !476)
!621 = !DILocation(line: 157, column: 33, scope: !476)
!622 = !DILocation(line: 158, column: 23, scope: !476)
!623 = !DILocation(line: 158, column: 3, scope: !476)
!624 = !DILocation(line: 159, column: 2, scope: !477)
!625 = !DILocation(line: 159, column: 2, scope: !476)
!626 = !DILocation(line: 156, column: 21, scope: !477)
!627 = !DILocation(line: 156, column: 2, scope: !477)
!628 = distinct !{!628, !618, !629, !256}
!629 = !DILocation(line: 159, column: 2, scope: !478)
!630 = !DILocation(line: 160, column: 27, scope: !452)
!631 = !DILocation(line: 160, column: 36, scope: !452)
!632 = !DILocation(line: 160, column: 38, scope: !452)
!633 = !DILocation(line: 160, column: 2, scope: !452)
!634 = !DILocation(line: 161, column: 24, scope: !452)
!635 = !DILocation(line: 161, column: 44, scope: !452)
!636 = !DILocation(line: 161, column: 2, scope: !452)
!637 = !DILocation(line: 162, column: 9, scope: !452)
!638 = !DILocation(line: 162, column: 2, scope: !452)
!639 = !DILocation(line: 163, column: 2, scope: !452)
!640 = !DILocation(line: 164, column: 1, scope: !452)
!641 = distinct !DISubprogram(name: "_struct_definition_free", scope: !20, file: !20, line: 167, type: !116, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !642)
!642 = !{!643, !644, !645, !647, !648}
!643 = !DILocalVariable(name: "definition", arg: 1, scope: !641, file: !20, line: 167, type: !87)
!644 = !DILocalVariable(name: "_struct", scope: !641, file: !20, line: 169, type: !62)
!645 = !DILocalVariable(name: "__ptr", scope: !646, file: !20, line: 170, type: !198)
!646 = distinct !DILexicalBlock(scope: !641, file: !20, line: 170, column: 3)
!647 = !DILocalVariable(name: "i", scope: !641, file: !20, line: 171, type: !76)
!648 = !DILocalVariable(name: "field", scope: !649, file: !20, line: 175, type: !87)
!649 = distinct !DILexicalBlock(scope: !650, file: !20, line: 174, column: 45)
!650 = distinct !DILexicalBlock(scope: !651, file: !20, line: 174, column: 2)
!651 = distinct !DILexicalBlock(scope: !641, file: !20, line: 174, column: 2)
!652 = !DILocation(line: 167, column: 52, scope: !641)
!653 = !DILocation(line: 169, column: 2, scope: !641)
!654 = !DILocation(line: 169, column: 28, scope: !641)
!655 = !DILocation(line: 170, column: 3, scope: !646)
!656 = !DILocation(line: 170, column: 3, scope: !641)
!657 = !DILocation(line: 171, column: 2, scope: !641)
!658 = !DILocation(line: 171, column: 16, scope: !641)
!659 = !DILocation(line: 173, column: 2, scope: !660)
!660 = distinct !DILexicalBlock(scope: !661, file: !20, line: 173, column: 2)
!661 = distinct !DILexicalBlock(scope: !641, file: !20, line: 173, column: 2)
!662 = !DILocation(line: 173, column: 2, scope: !661)
!663 = !DILocation(line: 174, column: 9, scope: !651)
!664 = !DILocation(line: 174, column: 7, scope: !651)
!665 = !DILocation(line: 174, column: 14, scope: !650)
!666 = !DILocation(line: 174, column: 18, scope: !650)
!667 = !DILocation(line: 174, column: 27, scope: !650)
!668 = !DILocation(line: 174, column: 35, scope: !650)
!669 = !DILocation(line: 174, column: 16, scope: !650)
!670 = !DILocation(line: 174, column: 2, scope: !651)
!671 = !DILocation(line: 175, column: 3, scope: !649)
!672 = !DILocation(line: 175, column: 25, scope: !649)
!673 = !DILocation(line: 175, column: 33, scope: !649)
!674 = !DILocation(line: 176, column: 23, scope: !649)
!675 = !DILocation(line: 176, column: 3, scope: !649)
!676 = !DILocation(line: 177, column: 2, scope: !650)
!677 = !DILocation(line: 177, column: 2, scope: !649)
!678 = !DILocation(line: 174, column: 41, scope: !650)
!679 = !DILocation(line: 174, column: 2, scope: !650)
!680 = distinct !{!680, !670, !681, !256}
!681 = !DILocation(line: 177, column: 2, scope: !651)
!682 = !DILocation(line: 178, column: 27, scope: !641)
!683 = !DILocation(line: 178, column: 36, scope: !641)
!684 = !DILocation(line: 178, column: 38, scope: !641)
!685 = !DILocation(line: 178, column: 2, scope: !641)
!686 = !DILocation(line: 179, column: 23, scope: !641)
!687 = !DILocation(line: 179, column: 32, scope: !641)
!688 = !DILocation(line: 179, column: 34, scope: !641)
!689 = !DILocation(line: 179, column: 2, scope: !641)
!690 = !DILocation(line: 180, column: 19, scope: !641)
!691 = !DILocation(line: 180, column: 28, scope: !641)
!692 = !DILocation(line: 180, column: 2, scope: !641)
!693 = !DILocation(line: 181, column: 9, scope: !641)
!694 = !DILocation(line: 181, column: 2, scope: !641)
!695 = !DILocation(line: 182, column: 1, scope: !641)
!696 = distinct !DISubprogram(name: "bt_struct_declaration_add_field", scope: !20, file: !20, line: 184, type: !697, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !699)
!697 = !DISubroutineType(types: !698)
!698 = !{null, !124, !113, !69}
!699 = !{!700, !701, !702, !703, !704}
!700 = !DILocalVariable(name: "struct_declaration", arg: 1, scope: !696, file: !20, line: 184, type: !124)
!701 = !DILocalVariable(name: "field_name", arg: 2, scope: !696, file: !20, line: 185, type: !113)
!702 = !DILocalVariable(name: "field_declaration", arg: 3, scope: !696, file: !20, line: 186, type: !69)
!703 = !DILocalVariable(name: "field", scope: !696, file: !20, line: 188, type: !151)
!704 = !DILocalVariable(name: "index", scope: !696, file: !20, line: 189, type: !76)
!705 = !DILocation(line: 184, column: 65, scope: !696)
!706 = !DILocation(line: 185, column: 19, scope: !696)
!707 = !DILocation(line: 186, column: 30, scope: !696)
!708 = !DILocation(line: 188, column: 2, scope: !696)
!709 = !DILocation(line: 188, column: 28, scope: !696)
!710 = !DILocation(line: 189, column: 2, scope: !696)
!711 = !DILocation(line: 189, column: 16, scope: !696)
!712 = !DILocation(line: 191, column: 19, scope: !696)
!713 = !DILocation(line: 191, column: 39, scope: !696)
!714 = !DILocation(line: 191, column: 47, scope: !696)
!715 = !DILocation(line: 191, column: 67, scope: !696)
!716 = !DILocation(line: 191, column: 75, scope: !696)
!717 = !DILocation(line: 191, column: 79, scope: !696)
!718 = !DILocation(line: 191, column: 2, scope: !696)
!719 = !DILocation(line: 192, column: 10, scope: !696)
!720 = !DILocation(line: 192, column: 30, scope: !696)
!721 = !DILocation(line: 192, column: 38, scope: !696)
!722 = !DILocation(line: 192, column: 42, scope: !696)
!723 = !DILocation(line: 192, column: 8, scope: !696)
!724 = !DILocation(line: 193, column: 11, scope: !696)
!725 = !DILocation(line: 193, column: 8, scope: !696)
!726 = !DILocation(line: 194, column: 36, scope: !696)
!727 = !DILocation(line: 194, column: 16, scope: !696)
!728 = !DILocation(line: 194, column: 2, scope: !696)
!729 = !DILocation(line: 194, column: 9, scope: !696)
!730 = !DILocation(line: 194, column: 14, scope: !696)
!731 = !DILocation(line: 195, column: 21, scope: !696)
!732 = !DILocation(line: 195, column: 2, scope: !696)
!733 = !DILocation(line: 196, column: 23, scope: !696)
!734 = !DILocation(line: 196, column: 2, scope: !696)
!735 = !DILocation(line: 196, column: 9, scope: !696)
!736 = !DILocation(line: 196, column: 21, scope: !696)
!737 = !DILocation(line: 198, column: 22, scope: !696)
!738 = !DILocation(line: 198, column: 42, scope: !696)
!739 = !DILocation(line: 199, column: 35, scope: !696)
!740 = !DILocation(line: 199, column: 42, scope: !696)
!741 = !DILocation(line: 199, column: 19, scope: !696)
!742 = !DILocation(line: 199, column: 8, scope: !696)
!743 = !DILocation(line: 200, column: 19, scope: !696)
!744 = !DILocation(line: 200, column: 8, scope: !696)
!745 = !DILocation(line: 198, column: 2, scope: !696)
!746 = !DILocation(line: 205, column: 36, scope: !696)
!747 = !{!330, !222, i64 8}
!748 = !DILocation(line: 205, column: 2, scope: !696)
!749 = !DILocation(line: 205, column: 22, scope: !696)
!750 = !DILocation(line: 205, column: 24, scope: !696)
!751 = !DILocation(line: 205, column: 34, scope: !696)
!752 = !DILocation(line: 207, column: 1, scope: !696)
!753 = !DISubprogram(name: "g_array_set_size", scope: !100, file: !100, line: 117, type: !754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!754 = !DISubroutineType(types: !755)
!755 = !{!98, !98, !108}
!756 = !DISubprogram(name: "g_quark_from_string", scope: !110, file: !110, line: 47, type: !757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!757 = !DISubroutineType(types: !758)
!758 = !{!109, !759}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!761 = !DISubprogram(name: "bt_declaration_ref", scope: !2, file: !2, line: 372, type: !81, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!762 = !DISubprogram(name: "g_hash_table_insert", scope: !94, file: !94, line: 72, type: !763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!763 = !DISubroutineType(types: !764)
!764 = !{!387, !92, !146, !146}
!765 = distinct !DISubprogram(name: "bt_struct_declaration_lookup_field_index", scope: !20, file: !20, line: 215, type: !766, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !768)
!766 = !DISubroutineType(types: !767)
!767 = !{!78, !124, !109}
!768 = !{!769, !770, !771, !772}
!769 = !DILocalVariable(name: "struct_declaration", arg: 1, scope: !765, file: !20, line: 215, type: !124)
!770 = !DILocalVariable(name: "field_name", arg: 2, scope: !765, file: !20, line: 216, type: !109)
!771 = !DILocalVariable(name: "index", scope: !765, file: !20, line: 218, type: !146)
!772 = !DILocalVariable(name: "found", scope: !765, file: !20, line: 219, type: !387)
!773 = !DILocation(line: 215, column: 73, scope: !765)
!774 = !DILocation(line: 216, column: 19, scope: !765)
!775 = !DILocation(line: 218, column: 2, scope: !765)
!776 = !DILocation(line: 218, column: 11, scope: !765)
!777 = !DILocation(line: 219, column: 2, scope: !765)
!778 = !DILocation(line: 219, column: 11, scope: !765)
!779 = !DILocation(line: 221, column: 39, scope: !765)
!780 = !DILocation(line: 221, column: 59, scope: !765)
!781 = !DILocation(line: 222, column: 41, scope: !765)
!782 = !DILocation(line: 222, column: 25, scope: !765)
!783 = !DILocation(line: 222, column: 9, scope: !765)
!784 = !DILocation(line: 221, column: 10, scope: !765)
!785 = !DILocation(line: 221, column: 8, scope: !765)
!786 = !DILocation(line: 224, column: 7, scope: !787)
!787 = distinct !DILexicalBlock(scope: !765, file: !20, line: 224, column: 6)
!788 = !DILocation(line: 224, column: 6, scope: !765)
!789 = !DILocation(line: 225, column: 3, scope: !787)
!790 = !DILocation(line: 226, column: 31, scope: !765)
!791 = !DILocation(line: 226, column: 15, scope: !765)
!792 = !DILocation(line: 226, column: 9, scope: !765)
!793 = !DILocation(line: 226, column: 2, scope: !765)
!794 = !DILocation(line: 227, column: 1, scope: !765)
!795 = !DISubprogram(name: "g_hash_table_lookup_extended", scope: !94, file: !94, line: 108, type: !796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!796 = !DISubroutineType(types: !797)
!797 = !{!387, !92, !156, !145, !145}
!798 = distinct !DISubprogram(name: "bt_struct_declaration_get_field_from_index", scope: !20, file: !20, line: 233, type: !799, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !801)
!799 = !DISubroutineType(types: !800)
!800 = !{!151, !124, !78}
!801 = !{!802, !803}
!802 = !DILocalVariable(name: "struct_declaration", arg: 1, scope: !798, file: !20, line: 233, type: !124)
!803 = !DILocalVariable(name: "index", arg: 2, scope: !798, file: !20, line: 234, type: !78)
!804 = !DILocation(line: 233, column: 72, scope: !798)
!805 = !DILocation(line: 234, column: 11, scope: !798)
!806 = !DILocation(line: 236, column: 6, scope: !807)
!807 = distinct !DILexicalBlock(scope: !798, file: !20, line: 236, column: 6)
!808 = !DILocation(line: 236, column: 12, scope: !807)
!809 = !DILocation(line: 236, column: 6, scope: !798)
!810 = !DILocation(line: 237, column: 3, scope: !807)
!811 = !DILocation(line: 238, column: 10, scope: !798)
!812 = !DILocation(line: 238, column: 2, scope: !798)
!813 = !DILocation(line: 239, column: 1, scope: !798)
!814 = distinct !DISubprogram(name: "bt_struct_definition_get_field_from_index", scope: !20, file: !20, line: 245, type: !815, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !819)
!815 = !DISubroutineType(types: !816)
!816 = !{!87, !817, !78}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!819 = !{!820, !821}
!820 = !DILocalVariable(name: "_struct", arg: 1, scope: !814, file: !20, line: 245, type: !817)
!821 = !DILocalVariable(name: "index", arg: 2, scope: !814, file: !20, line: 246, type: !78)
!822 = !DILocation(line: 245, column: 75, scope: !814)
!823 = !DILocation(line: 246, column: 10, scope: !814)
!824 = !DILocation(line: 248, column: 6, scope: !825)
!825 = distinct !DILexicalBlock(scope: !814, file: !20, line: 248, column: 6)
!826 = !DILocation(line: 248, column: 12, scope: !825)
!827 = !DILocation(line: 248, column: 6, scope: !814)
!828 = !DILocation(line: 249, column: 3, scope: !825)
!829 = !DILocation(line: 250, column: 9, scope: !814)
!830 = !DILocation(line: 250, column: 2, scope: !814)
!831 = !DILocation(line: 251, column: 1, scope: !814)
!832 = distinct !DISubprogram(name: "bt_struct_declaration_len", scope: !20, file: !20, line: 253, type: !833, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !837)
!833 = !DISubroutineType(types: !834)
!834 = !{!296, !835}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!837 = !{!838}
!838 = !DILocalVariable(name: "struct_declaration", arg: 1, scope: !832, file: !20, line: 253, type: !835)
!839 = !DILocation(line: 253, column: 69, scope: !832)
!840 = !DILocation(line: 255, column: 9, scope: !832)
!841 = !DILocation(line: 255, column: 29, scope: !832)
!842 = !DILocation(line: 255, column: 37, scope: !832)
!843 = !DILocation(line: 255, column: 2, scope: !832)
!844 = !DISubprogram(name: "__assert_fail", scope: !845, file: !845, line: 69, type: !846, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!845 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!846 = !DISubroutineType(types: !847)
!847 = !{null, !113, !113, !48, !113}
!848 = !DISubprogram(name: "bt_free_declaration_scope", scope: !2, file: !2, line: 345, type: !849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !130}
!851 = !DISubprogram(name: "g_hash_table_destroy", scope: !94, file: !94, line: 70, type: !852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!852 = !DISubroutineType(types: !853)
!853 = !{null, !92}
!854 = !DISubprogram(name: "bt_declaration_unref", scope: !2, file: !2, line: 373, type: !81, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!855 = !DISubprogram(name: "g_array_free", scope: !100, file: !100, line: 95, type: !856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!856 = !DISubroutineType(types: !857)
!857 = !{!104, !98, !387}
!858 = !DISubprogram(name: "g_free", scope: !370, file: !370, line: 74, type: !859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !146}
!861 = !DISubprogram(name: "bt_new_definition_path", scope: !2, file: !2, line: 363, type: !862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!862 = !DISubroutineType(types: !863)
!863 = !{!109, !88, !109, !113}
!864 = !DISubprogram(name: "bt_new_definition_scope", scope: !2, file: !2, line: 359, type: !865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!865 = !DISubroutineType(types: !866)
!866 = !{!88, !88, !109, !113}
!867 = !DISubprogram(name: "bt_register_field_definition", scope: !2, file: !2, line: 355, type: !868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!868 = !DISubroutineType(types: !869)
!869 = !{!78, !109, !87, !88}
!870 = !DISubprogram(name: "g_ptr_array_sized_new", scope: !100, file: !100, line: 172, type: !871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!871 = !DISubroutineType(types: !872)
!872 = !{!140, !108}
!873 = !DISubprogram(name: "g_ptr_array_set_size", scope: !100, file: !100, line: 199, type: !874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !140, !388}
!876 = !DISubprogram(name: "bt_definition_unref", scope: !2, file: !2, line: 376, type: !116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!877 = !DISubprogram(name: "bt_free_definition_scope", scope: !2, file: !2, line: 361, type: !878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!878 = !DISubroutineType(types: !879)
!879 = !{null, !88}
!880 = !DISubprogram(name: "g_ptr_array_free", scope: !100, file: !100, line: 189, type: !881, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!881 = !DISubroutineType(types: !882)
!882 = !{!145, !140, !387}
