; ModuleID = 'samples/737.bc'
source_filename = "sparse_matrix_utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.double_matrix_t = type { i64, i64, ptr }
%struct.sparse_matrix_t = type { i32, i32, ptr, ptr, ptr }
%struct.uint32_array = type { i64, i64, ptr }
%struct.kh_int_uint32_t = type { i32, i32, i32, i32, ptr, ptr, ptr }
%struct.kh_int_set_t = type { i32, i32, i32, i32, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local ptr @sparse_matrix_new_from_matrix(ptr noundef %matrix) #0 !dbg !40 {
entry:
  %matrix.addr = alloca ptr, align 8
  %sparse = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i64, align 8
  %value = alloca double, align 8
  store ptr %matrix, ptr %matrix.addr, align 8, !tbaa !91
  tail call void @llvm.dbg.declare(metadata ptr %matrix.addr, metadata !80, metadata !DIExpression()), !dbg !95
  call void @llvm.lifetime.start.p0(i64 8, ptr %sparse) #10, !dbg !96
  tail call void @llvm.dbg.declare(metadata ptr %sparse, metadata !81, metadata !DIExpression()), !dbg !97
  %0 = load ptr, ptr %matrix.addr, align 8, !dbg !98, !tbaa !91
  %m = getelementptr inbounds %struct.double_matrix_t, ptr %0, i32 0, i32 0, !dbg !99
  %1 = load i64, ptr %m, align 8, !dbg !99, !tbaa !100
  %2 = load ptr, ptr %matrix.addr, align 8, !dbg !103, !tbaa !91
  %n = getelementptr inbounds %struct.double_matrix_t, ptr %2, i32 0, i32 1, !dbg !104
  %3 = load i64, ptr %n, align 8, !dbg !104, !tbaa !105
  %call = call ptr @sparse_matrix_new_shape(i64 noundef %1, i64 noundef %3), !dbg !106
  store ptr %call, ptr %sparse, align 8, !dbg !97, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !107
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !82, metadata !DIExpression()), !dbg !108
  store i64 0, ptr %i, align 8, !dbg !108, !tbaa !109
  br label %for.cond, !dbg !107

for.cond:                                         ; preds = %for.inc9, %entry
  %4 = load i64, ptr %i, align 8, !dbg !110, !tbaa !109
  %5 = load ptr, ptr %matrix.addr, align 8, !dbg !111, !tbaa !91
  %m1 = getelementptr inbounds %struct.double_matrix_t, ptr %5, i32 0, i32 0, !dbg !112
  %6 = load i64, ptr %m1, align 8, !dbg !112, !tbaa !100
  %cmp = icmp ult i64 %4, %6, !dbg !113
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !114

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !115
  br label %for.end11

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #10, !dbg !116
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !84, metadata !DIExpression()), !dbg !117
  store i64 0, ptr %j, align 8, !dbg !117, !tbaa !109
  br label %for.cond2, !dbg !116

for.cond2:                                        ; preds = %for.inc, %for.body
  %7 = load i64, ptr %j, align 8, !dbg !118, !tbaa !109
  %8 = load ptr, ptr %matrix.addr, align 8, !dbg !119, !tbaa !91
  %n3 = getelementptr inbounds %struct.double_matrix_t, ptr %8, i32 0, i32 1, !dbg !120
  %9 = load i64, ptr %n3, align 8, !dbg !120, !tbaa !105
  %cmp4 = icmp ult i64 %7, %9, !dbg !121
  br i1 %cmp4, label %for.body6, label %for.cond.cleanup5, !dbg !122

for.cond.cleanup5:                                ; preds = %for.cond2
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #10, !dbg !123
  br label %for.end

for.body6:                                        ; preds = %for.cond2
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #10, !dbg !124
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !88, metadata !DIExpression()), !dbg !125
  %10 = load ptr, ptr %matrix.addr, align 8, !dbg !126, !tbaa !91
  %11 = load i64, ptr %i, align 8, !dbg !127, !tbaa !109
  %12 = load i64, ptr %j, align 8, !dbg !128, !tbaa !109
  %call7 = call double @double_matrix_get(ptr noundef %10, i64 noundef %11, i64 noundef %12), !dbg !129
  store double %call7, ptr %value, align 8, !dbg !125, !tbaa !130
  %13 = load double, ptr %value, align 8, !dbg !132, !tbaa !130
  %call8 = call zeroext i1 @double_equals(double noundef %13, double noundef 0.000000e+00), !dbg !134
  br i1 %call8, label %if.end, label %if.then, !dbg !135

if.then:                                          ; preds = %for.body6
  %14 = load ptr, ptr %sparse, align 8, !dbg !136, !tbaa !91
  %15 = load i64, ptr %j, align 8, !dbg !138, !tbaa !109
  %conv = trunc i64 %15 to i32, !dbg !138
  %16 = load double, ptr %value, align 8, !dbg !139, !tbaa !130
  call void @sparse_matrix_append(ptr noundef %14, i32 noundef %conv, double noundef %16), !dbg !140
  br label %if.end, !dbg !141

if.end:                                           ; preds = %if.then, %for.body6
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #10, !dbg !142
  br label %for.inc, !dbg !143

for.inc:                                          ; preds = %if.end
  %17 = load i64, ptr %j, align 8, !dbg !144, !tbaa !109
  %inc = add i64 %17, 1, !dbg !144
  store i64 %inc, ptr %j, align 8, !dbg !144, !tbaa !109
  br label %for.cond2, !dbg !123, !llvm.loop !145

for.end:                                          ; preds = %for.cond.cleanup5
  %18 = load ptr, ptr %sparse, align 8, !dbg !148, !tbaa !91
  call void @sparse_matrix_finalize_row(ptr noundef %18), !dbg !149
  br label %for.inc9, !dbg !150

for.inc9:                                         ; preds = %for.end
  %19 = load i64, ptr %i, align 8, !dbg !151, !tbaa !109
  %inc10 = add i64 %19, 1, !dbg !151
  store i64 %inc10, ptr %i, align 8, !dbg !151, !tbaa !109
  br label %for.cond, !dbg !115, !llvm.loop !152

for.end11:                                        ; preds = %for.cond.cleanup
  %20 = load ptr, ptr %sparse, align 8, !dbg !154, !tbaa !91
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %sparse) #10, !dbg !155
  ret ptr %20, !dbg !156
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !157 ptr @sparse_matrix_new_shape(i64 noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal double @double_matrix_get(ptr noundef %self, i64 noundef %row_index, i64 noundef %col_index) #3 !dbg !160 {
entry:
  %self.addr = alloca ptr, align 8
  %row_index.addr = alloca i64, align 8
  %col_index.addr = alloca i64, align 8
  %index = alloca i64, align 8
  store ptr %self, ptr %self.addr, align 8, !tbaa !91
  tail call void @llvm.dbg.declare(metadata ptr %self.addr, metadata !164, metadata !DIExpression()), !dbg !168
  store i64 %row_index, ptr %row_index.addr, align 8, !tbaa !109
  tail call void @llvm.dbg.declare(metadata ptr %row_index.addr, metadata !165, metadata !DIExpression()), !dbg !168
  store i64 %col_index, ptr %col_index.addr, align 8, !tbaa !109
  tail call void @llvm.dbg.declare(metadata ptr %col_index.addr, metadata !166, metadata !DIExpression()), !dbg !168
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #10, !dbg !168
  tail call void @llvm.dbg.declare(metadata ptr %index, metadata !167, metadata !DIExpression()), !dbg !168
  %0 = load i64, ptr %row_index.addr, align 8, !dbg !168, !tbaa !109
  %1 = load ptr, ptr %self.addr, align 8, !dbg !168, !tbaa !91
  %n = getelementptr inbounds %struct.double_matrix_t, ptr %1, i32 0, i32 1, !dbg !168
  %2 = load i64, ptr %n, align 8, !dbg !168, !tbaa !105
  %mul = mul i64 %0, %2, !dbg !168
  %3 = load i64, ptr %col_index.addr, align 8, !dbg !168, !tbaa !109
  %add = add i64 %mul, %3, !dbg !168
  store i64 %add, ptr %index, align 8, !dbg !168, !tbaa !109
  %4 = load ptr, ptr %self.addr, align 8, !dbg !168, !tbaa !91
  %values = getelementptr inbounds %struct.double_matrix_t, ptr %4, i32 0, i32 2, !dbg !168
  %5 = load ptr, ptr %values, align 8, !dbg !168, !tbaa !169
  %6 = load i64, ptr %index, align 8, !dbg !168, !tbaa !109
  %arrayidx = getelementptr inbounds double, ptr %5, i64 %6, !dbg !168
  %7 = load double, ptr %arrayidx, align 8, !dbg !168, !tbaa !130
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #10, !dbg !168
  ret double %7, !dbg !168
}

declare !dbg !170 zeroext i1 @double_equals(double noundef, double noundef) #2

declare !dbg !175 void @sparse_matrix_append(ptr noundef, i32 noundef, double noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !178 void @sparse_matrix_finalize_row(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @sparse_matrix_add_unique_columns(ptr noundef %matrix, ptr noundef %unique_columns, ptr noundef %array) #0 !dbg !181 {
entry:
  %retval = alloca i1, align 1
  %matrix.addr = alloca ptr, align 8
  %unique_columns.addr = alloca ptr, align 8
  %array.addr = alloca ptr, align 8
  %n = alloca i64, align 8
  %indices2 = alloca ptr, align 8
  %i = alloca i64, align 8
  %k = alloca i32, align 4
  %col = alloca i32, align 4
  %ret = alloca i32, align 4
  %next_id = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %key = alloca i32, align 4
  %batch = alloca ptr, align 8
  %col_id = alloca i32, align 4
  %__i = alloca i32, align 4
  store ptr %matrix, ptr %matrix.addr, align 8, !tbaa !91
  tail call void @llvm.dbg.declare(metadata ptr %matrix.addr, metadata !196, metadata !DIExpression()), !dbg !218
  store ptr %unique_columns, ptr %unique_columns.addr, align 8, !tbaa !91
  tail call void @llvm.dbg.declare(metadata ptr %unique_columns.addr, metadata !197, metadata !DIExpression()), !dbg !219
  store ptr %array, ptr %array.addr, align 8, !tbaa !91
  tail call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !198, metadata !DIExpression()), !dbg !220
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #10, !dbg !221
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !199, metadata !DIExpression()), !dbg !222
  %0 = load ptr, ptr %matrix.addr, align 8, !dbg !223, !tbaa !91
  %indices = getelementptr inbounds %struct.sparse_matrix_t, ptr %0, i32 0, i32 3, !dbg !224
  %1 = load ptr, ptr %indices, align 8, !dbg !224, !tbaa !225
  %n1 = getelementptr inbounds %struct.uint32_array, ptr %1, i32 0, i32 0, !dbg !228
  %2 = load i64, ptr %n1, align 8, !dbg !228, !tbaa !100
  store i64 %2, ptr %n, align 8, !dbg !222, !tbaa !109
  call void @llvm.lifetime.start.p0(i64 8, ptr %indices2) #10, !dbg !229
  tail call void @llvm.dbg.declare(metadata ptr %indices2, metadata !200, metadata !DIExpression()), !dbg !230
  %3 = load ptr, ptr %matrix.addr, align 8, !dbg !231, !tbaa !91
  %indices3 = getelementptr inbounds %struct.sparse_matrix_t, ptr %3, i32 0, i32 3, !dbg !232
  %4 = load ptr, ptr %indices3, align 8, !dbg !232, !tbaa !225
  %a = getelementptr inbounds %struct.uint32_array, ptr %4, i32 0, i32 2, !dbg !233
  %5 = load ptr, ptr %a, align 8, !dbg !233, !tbaa !169
  store ptr %5, ptr %indices2, align 8, !dbg !230, !tbaa !91
  %6 = load ptr, ptr %unique_columns.addr, align 8, !dbg !234, !tbaa !91
  call void @kh_clear_int_uint32(ptr noundef %6), !dbg !234
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !235
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !201, metadata !DIExpression()), !dbg !236
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #10, !dbg !237
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !202, metadata !DIExpression()), !dbg !238
  store i64 0, ptr %i, align 8, !dbg !239, !tbaa !109
  br label %for.cond, !dbg !240

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i64, ptr %i, align 8, !dbg !241, !tbaa !109
  %8 = load i64, ptr %n, align 8, !dbg !242, !tbaa !109
  %cmp = icmp ult i64 %7, %8, !dbg !243
  br i1 %cmp, label %for.body, label %for.end, !dbg !244

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %col) #10, !dbg !245
  tail call void @llvm.dbg.declare(metadata ptr %col, metadata !204, metadata !DIExpression()), !dbg !246
  %9 = load ptr, ptr %indices2, align 8, !dbg !247, !tbaa !91
  %10 = load i64, ptr %i, align 8, !dbg !248, !tbaa !109
  %arrayidx = getelementptr inbounds i32, ptr %9, i64 %10, !dbg !247
  %11 = load i32, ptr %arrayidx, align 4, !dbg !247, !tbaa !249
  store i32 %11, ptr %col, align 4, !dbg !246, !tbaa !249
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !250
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !208, metadata !DIExpression()), !dbg !251
  store i32 0, ptr %ret, align 4, !dbg !251, !tbaa !249
  %12 = load ptr, ptr %unique_columns.addr, align 8, !dbg !252, !tbaa !91
  %13 = load i32, ptr %col, align 4, !dbg !252, !tbaa !249
  %call = call i32 @kh_get_int_uint32(ptr noundef %12, i32 noundef %13), !dbg !252
  store i32 %call, ptr %k, align 4, !dbg !253, !tbaa !249
  %14 = load i32, ptr %k, align 4, !dbg !254, !tbaa !249
  %15 = load ptr, ptr %unique_columns.addr, align 8, !dbg !255, !tbaa !91
  %n_buckets = getelementptr inbounds %struct.kh_int_uint32_t, ptr %15, i32 0, i32 0, !dbg !255
  %16 = load i32, ptr %n_buckets, align 8, !dbg !255, !tbaa !256
  %cmp4 = icmp eq i32 %14, %16, !dbg !258
  br i1 %cmp4, label %if.then, label %if.end9, !dbg !259

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %next_id) #10, !dbg !260
  tail call void @llvm.dbg.declare(metadata ptr %next_id, metadata !210, metadata !DIExpression()), !dbg !261
  %17 = load ptr, ptr %unique_columns.addr, align 8, !dbg !262, !tbaa !91
  %size = getelementptr inbounds %struct.kh_int_uint32_t, ptr %17, i32 0, i32 1, !dbg !262
  %18 = load i32, ptr %size, align 4, !dbg !262, !tbaa !263
  store i32 %18, ptr %next_id, align 4, !dbg !261, !tbaa !249
  %19 = load ptr, ptr %unique_columns.addr, align 8, !dbg !264, !tbaa !91
  %20 = load i32, ptr %col, align 4, !dbg !264, !tbaa !249
  %call5 = call i32 @kh_put_int_uint32(ptr noundef %19, i32 noundef %20, ptr noundef %ret), !dbg !264
  store i32 %call5, ptr %k, align 4, !dbg !265, !tbaa !249
  %21 = load i32, ptr %ret, align 4, !dbg !266, !tbaa !249
  %cmp6 = icmp slt i32 %21, 0, !dbg !268
  br i1 %cmp6, label %if.then7, label %if.end, !dbg !269

if.then7:                                         ; preds = %if.then
  store i1 false, ptr %retval, align 1, !dbg !270
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !270

if.end:                                           ; preds = %if.then
  %22 = load i32, ptr %next_id, align 4, !dbg !272, !tbaa !249
  %23 = load ptr, ptr %unique_columns.addr, align 8, !dbg !273, !tbaa !91
  %vals = getelementptr inbounds %struct.kh_int_uint32_t, ptr %23, i32 0, i32 6, !dbg !273
  %24 = load ptr, ptr %vals, align 8, !dbg !273, !tbaa !274
  %25 = load i32, ptr %k, align 4, !dbg !273, !tbaa !249
  %idxprom = zext i32 %25 to i64, !dbg !273
  %arrayidx8 = getelementptr inbounds i32, ptr %24, i64 %idxprom, !dbg !273
  store i32 %22, ptr %arrayidx8, align 4, !dbg !275, !tbaa !249
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !276
  br label %cleanup, !dbg !276

cleanup:                                          ; preds = %if.end, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr %next_id) #10, !dbg !276
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup10 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end9, !dbg !277

if.end9:                                          ; preds = %cleanup.cont, %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !278
  br label %cleanup10, !dbg !278

cleanup10:                                        ; preds = %if.end9, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !278
  call void @llvm.lifetime.end.p0(i64 4, ptr %col) #10, !dbg !278
  %cleanup.dest12 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest12, label %cleanup43 [
    i32 0, label %cleanup.cont13
  ]

cleanup.cont13:                                   ; preds = %cleanup10
  br label %for.inc, !dbg !279

for.inc:                                          ; preds = %cleanup.cont13
  %26 = load i64, ptr %i, align 8, !dbg !280, !tbaa !109
  %inc = add i64 %26, 1, !dbg !280
  store i64 %inc, ptr %i, align 8, !dbg !280, !tbaa !109
  br label %for.cond, !dbg !281, !llvm.loop !282

for.end:                                          ; preds = %for.cond
  %27 = load ptr, ptr %array.addr, align 8, !dbg !284, !tbaa !91
  call void @uint32_array_clear(ptr noundef %27), !dbg !285
  %28 = load ptr, ptr %array.addr, align 8, !dbg !286, !tbaa !91
  %29 = load ptr, ptr %unique_columns.addr, align 8, !dbg !288, !tbaa !91
  %size14 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %29, i32 0, i32 1, !dbg !288
  %30 = load i32, ptr %size14, align 4, !dbg !288, !tbaa !263
  %conv = zext i32 %30 to i64, !dbg !288
  %call15 = call zeroext i1 @uint32_array_resize_fixed(ptr noundef %28, i64 noundef %conv), !dbg !289
  br i1 %call15, label %if.end17, label %if.then16, !dbg !290

if.then16:                                        ; preds = %for.end
  store i1 false, ptr %retval, align 1, !dbg !291
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43, !dbg !291

if.end17:                                         ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %key) #10, !dbg !293
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !213, metadata !DIExpression()), !dbg !294
  call void @llvm.lifetime.start.p0(i64 8, ptr %batch) #10, !dbg !295
  tail call void @llvm.dbg.declare(metadata ptr %batch, metadata !214, metadata !DIExpression()), !dbg !296
  %31 = load ptr, ptr %array.addr, align 8, !dbg !297, !tbaa !91
  %a18 = getelementptr inbounds %struct.uint32_array, ptr %31, i32 0, i32 2, !dbg !298
  %32 = load ptr, ptr %a18, align 8, !dbg !298, !tbaa !169
  store ptr %32, ptr %batch, align 8, !dbg !296, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 4, ptr %col_id) #10, !dbg !299
  tail call void @llvm.dbg.declare(metadata ptr %col_id, metadata !215, metadata !DIExpression()), !dbg !300
  call void @llvm.lifetime.start.p0(i64 4, ptr %__i) #10, !dbg !301
  tail call void @llvm.dbg.declare(metadata ptr %__i, metadata !216, metadata !DIExpression()), !dbg !301
  store i32 0, ptr %__i, align 4, !dbg !302, !tbaa !249
  br label %for.cond19, !dbg !302

for.cond19:                                       ; preds = %for.inc37, %if.end17
  %33 = load i32, ptr %__i, align 4, !dbg !304, !tbaa !249
  %34 = load ptr, ptr %unique_columns.addr, align 8, !dbg !304, !tbaa !91
  %n_buckets20 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %34, i32 0, i32 0, !dbg !304
  %35 = load i32, ptr %n_buckets20, align 8, !dbg !304, !tbaa !256
  %cmp21 = icmp ne i32 %33, %35, !dbg !304
  br i1 %cmp21, label %for.body23, label %for.end39, !dbg !302

for.body23:                                       ; preds = %for.cond19
  %36 = load ptr, ptr %unique_columns.addr, align 8, !dbg !306, !tbaa !91
  %flags = getelementptr inbounds %struct.kh_int_uint32_t, ptr %36, i32 0, i32 4, !dbg !306
  %37 = load ptr, ptr %flags, align 8, !dbg !306, !tbaa !309
  %38 = load i32, ptr %__i, align 4, !dbg !306, !tbaa !249
  %shr = lshr i32 %38, 4, !dbg !306
  %idxprom24 = zext i32 %shr to i64, !dbg !306
  %arrayidx25 = getelementptr inbounds i32, ptr %37, i64 %idxprom24, !dbg !306
  %39 = load i32, ptr %arrayidx25, align 4, !dbg !306, !tbaa !249
  %40 = load i32, ptr %__i, align 4, !dbg !306, !tbaa !249
  %and = and i32 %40, 15, !dbg !306
  %shl = shl i32 %and, 1, !dbg !306
  %shr26 = lshr i32 %39, %shl, !dbg !306
  %and27 = and i32 %shr26, 3, !dbg !306
  %tobool = icmp ne i32 %and27, 0, !dbg !306
  br i1 %tobool, label %if.then28, label %if.end29, !dbg !310

if.then28:                                        ; preds = %for.body23
  br label %for.inc37, !dbg !306

if.end29:                                         ; preds = %for.body23
  %41 = load ptr, ptr %unique_columns.addr, align 8, !dbg !310, !tbaa !91
  %keys = getelementptr inbounds %struct.kh_int_uint32_t, ptr %41, i32 0, i32 5, !dbg !310
  %42 = load ptr, ptr %keys, align 8, !dbg !310, !tbaa !311
  %43 = load i32, ptr %__i, align 4, !dbg !310, !tbaa !249
  %idxprom30 = zext i32 %43 to i64, !dbg !310
  %arrayidx31 = getelementptr inbounds i32, ptr %42, i64 %idxprom30, !dbg !310
  %44 = load i32, ptr %arrayidx31, align 4, !dbg !310, !tbaa !249
  store i32 %44, ptr %key, align 4, !dbg !310, !tbaa !249
  %45 = load ptr, ptr %unique_columns.addr, align 8, !dbg !310, !tbaa !91
  %vals32 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %45, i32 0, i32 6, !dbg !310
  %46 = load ptr, ptr %vals32, align 8, !dbg !310, !tbaa !274
  %47 = load i32, ptr %__i, align 4, !dbg !310, !tbaa !249
  %idxprom33 = zext i32 %47 to i64, !dbg !310
  %arrayidx34 = getelementptr inbounds i32, ptr %46, i64 %idxprom33, !dbg !310
  %48 = load i32, ptr %arrayidx34, align 4, !dbg !310, !tbaa !249
  store i32 %48, ptr %col_id, align 4, !dbg !310, !tbaa !249
  %49 = load i32, ptr %key, align 4, !dbg !312, !tbaa !249
  %50 = load ptr, ptr %batch, align 8, !dbg !312, !tbaa !91
  %51 = load i32, ptr %col_id, align 4, !dbg !312, !tbaa !249
  %idxprom35 = zext i32 %51 to i64, !dbg !312
  %arrayidx36 = getelementptr inbounds i32, ptr %50, i64 %idxprom35, !dbg !312
  store i32 %49, ptr %arrayidx36, align 4, !dbg !312, !tbaa !249
  br label %for.inc37, !dbg !310

for.inc37:                                        ; preds = %if.end29, %if.then28
  %52 = load i32, ptr %__i, align 4, !dbg !304, !tbaa !249
  %inc38 = add i32 %52, 1, !dbg !304
  store i32 %inc38, ptr %__i, align 4, !dbg !304, !tbaa !249
  br label %for.cond19, !dbg !304, !llvm.loop !314

for.end39:                                        ; preds = %for.cond19
  call void @llvm.lifetime.end.p0(i64 4, ptr %__i) #10, !dbg !315
  store i1 true, ptr %retval, align 1, !dbg !316
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %col_id) #10, !dbg !317
  call void @llvm.lifetime.end.p0(i64 8, ptr %batch) #10, !dbg !317
  call void @llvm.lifetime.end.p0(i64 4, ptr %key) #10, !dbg !317
  br label %cleanup43

cleanup43:                                        ; preds = %for.end39, %if.then16, %cleanup10
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #10, !dbg !317
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !317
  call void @llvm.lifetime.end.p0(i64 8, ptr %indices2) #10, !dbg !317
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #10, !dbg !317
  %53 = load i1, ptr %retval, align 1, !dbg !317
  ret i1 %53, !dbg !317
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @kh_clear_int_uint32(ptr noundef %h) #3 !dbg !318 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !91
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !322, metadata !DIExpression()), !dbg !323
  %0 = load ptr, ptr %h.addr, align 8, !dbg !324, !tbaa !91
  %tobool = icmp ne ptr %0, null, !dbg !324
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !324

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %h.addr, align 8, !dbg !324, !tbaa !91
  %flags = getelementptr inbounds %struct.kh_int_uint32_t, ptr %1, i32 0, i32 4, !dbg !324
  %2 = load ptr, ptr %flags, align 8, !dbg !324, !tbaa !309
  %tobool1 = icmp ne ptr %2, null, !dbg !324
  br i1 %tobool1, label %if.then, label %if.end, !dbg !323

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %h.addr, align 8, !dbg !326, !tbaa !91
  %flags2 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %3, i32 0, i32 4, !dbg !326
  %4 = load ptr, ptr %flags2, align 8, !dbg !326, !tbaa !309
  %5 = load ptr, ptr %h.addr, align 8, !dbg !326, !tbaa !91
  %n_buckets = getelementptr inbounds %struct.kh_int_uint32_t, ptr %5, i32 0, i32 0, !dbg !326
  %6 = load i32, ptr %n_buckets, align 8, !dbg !326, !tbaa !256
  %cmp = icmp ult i32 %6, 16, !dbg !326
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !326

cond.true:                                        ; preds = %if.then
  br label %cond.end, !dbg !326

cond.false:                                       ; preds = %if.then
  %7 = load ptr, ptr %h.addr, align 8, !dbg !326, !tbaa !91
  %n_buckets3 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %7, i32 0, i32 0, !dbg !326
  %8 = load i32, ptr %n_buckets3, align 8, !dbg !326, !tbaa !256
  %shr = lshr i32 %8, 4, !dbg !326
  br label %cond.end, !dbg !326

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %shr, %cond.false ], !dbg !326
  %conv = zext i32 %cond to i64, !dbg !326
  %mul = mul i64 %conv, 4, !dbg !326
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 -86, i64 %mul, i1 false), !dbg !326
  %9 = load ptr, ptr %h.addr, align 8, !dbg !326, !tbaa !91
  %n_occupied = getelementptr inbounds %struct.kh_int_uint32_t, ptr %9, i32 0, i32 2, !dbg !326
  store i32 0, ptr %n_occupied, align 8, !dbg !326, !tbaa !328
  %10 = load ptr, ptr %h.addr, align 8, !dbg !326, !tbaa !91
  %size = getelementptr inbounds %struct.kh_int_uint32_t, ptr %10, i32 0, i32 1, !dbg !326
  store i32 0, ptr %size, align 4, !dbg !326, !tbaa !263
  br label %if.end, !dbg !326

if.end:                                           ; preds = %cond.end, %land.lhs.true, %entry
  ret void, !dbg !323
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @kh_get_int_uint32(ptr noundef %h, i32 noundef %key) #3 !dbg !329 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca ptr, align 8
  %key.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %last = alloca i32, align 4
  %mask = alloca i32, align 4
  %step = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %h, ptr %h.addr, align 8, !tbaa !91
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !335, metadata !DIExpression()), !dbg !344
  store i32 %key, ptr %key.addr, align 4, !tbaa !249
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !336, metadata !DIExpression()), !dbg !344
  %0 = load ptr, ptr %h.addr, align 8, !dbg !345, !tbaa !91
  %n_buckets = getelementptr inbounds %struct.kh_int_uint32_t, ptr %0, i32 0, i32 0, !dbg !345
  %1 = load i32, ptr %n_buckets, align 8, !dbg !345, !tbaa !256
  %tobool = icmp ne i32 %1, 0, !dbg !345
  br i1 %tobool, label %if.then, label %if.else, !dbg !344

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #10, !dbg !346
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !337, metadata !DIExpression()), !dbg !346
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !346
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !340, metadata !DIExpression()), !dbg !346
  call void @llvm.lifetime.start.p0(i64 4, ptr %last) #10, !dbg !346
  tail call void @llvm.dbg.declare(metadata ptr %last, metadata !341, metadata !DIExpression()), !dbg !346
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #10, !dbg !346
  tail call void @llvm.dbg.declare(metadata ptr %mask, metadata !342, metadata !DIExpression()), !dbg !346
  call void @llvm.lifetime.start.p0(i64 4, ptr %step) #10, !dbg !346
  tail call void @llvm.dbg.declare(metadata ptr %step, metadata !343, metadata !DIExpression()), !dbg !346
  store i32 0, ptr %step, align 4, !dbg !346, !tbaa !249
  %2 = load ptr, ptr %h.addr, align 8, !dbg !346, !tbaa !91
  %n_buckets1 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %2, i32 0, i32 0, !dbg !346
  %3 = load i32, ptr %n_buckets1, align 8, !dbg !346, !tbaa !256
  %sub = sub i32 %3, 1, !dbg !346
  store i32 %sub, ptr %mask, align 4, !dbg !346, !tbaa !249
  %4 = load i32, ptr %key.addr, align 4, !dbg !346, !tbaa !249
  store i32 %4, ptr %k, align 4, !dbg !346, !tbaa !249
  %5 = load i32, ptr %k, align 4, !dbg !346, !tbaa !249
  %6 = load i32, ptr %mask, align 4, !dbg !346, !tbaa !249
  %and = and i32 %5, %6, !dbg !346
  store i32 %and, ptr %i, align 4, !dbg !346, !tbaa !249
  %7 = load i32, ptr %i, align 4, !dbg !346, !tbaa !249
  store i32 %7, ptr %last, align 4, !dbg !346, !tbaa !249
  br label %while.cond, !dbg !346

while.cond:                                       ; preds = %if.end, %if.then
  %8 = load ptr, ptr %h.addr, align 8, !dbg !346, !tbaa !91
  %flags = getelementptr inbounds %struct.kh_int_uint32_t, ptr %8, i32 0, i32 4, !dbg !346
  %9 = load ptr, ptr %flags, align 8, !dbg !346, !tbaa !309
  %10 = load i32, ptr %i, align 4, !dbg !346, !tbaa !249
  %shr = lshr i32 %10, 4, !dbg !346
  %idxprom = zext i32 %shr to i64, !dbg !346
  %arrayidx = getelementptr inbounds i32, ptr %9, i64 %idxprom, !dbg !346
  %11 = load i32, ptr %arrayidx, align 4, !dbg !346, !tbaa !249
  %12 = load i32, ptr %i, align 4, !dbg !346, !tbaa !249
  %and2 = and i32 %12, 15, !dbg !346
  %shl = shl i32 %and2, 1, !dbg !346
  %shr3 = lshr i32 %11, %shl, !dbg !346
  %and4 = and i32 %shr3, 2, !dbg !346
  %tobool5 = icmp ne i32 %and4, 0, !dbg !346
  br i1 %tobool5, label %land.end, label %land.rhs, !dbg !346

land.rhs:                                         ; preds = %while.cond
  %13 = load ptr, ptr %h.addr, align 8, !dbg !346, !tbaa !91
  %flags6 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %13, i32 0, i32 4, !dbg !346
  %14 = load ptr, ptr %flags6, align 8, !dbg !346, !tbaa !309
  %15 = load i32, ptr %i, align 4, !dbg !346, !tbaa !249
  %shr7 = lshr i32 %15, 4, !dbg !346
  %idxprom8 = zext i32 %shr7 to i64, !dbg !346
  %arrayidx9 = getelementptr inbounds i32, ptr %14, i64 %idxprom8, !dbg !346
  %16 = load i32, ptr %arrayidx9, align 4, !dbg !346, !tbaa !249
  %17 = load i32, ptr %i, align 4, !dbg !346, !tbaa !249
  %and10 = and i32 %17, 15, !dbg !346
  %shl11 = shl i32 %and10, 1, !dbg !346
  %shr12 = lshr i32 %16, %shl11, !dbg !346
  %and13 = and i32 %shr12, 1, !dbg !346
  %tobool14 = icmp ne i32 %and13, 0, !dbg !346
  br i1 %tobool14, label %lor.end, label %lor.rhs, !dbg !346

lor.rhs:                                          ; preds = %land.rhs
  %18 = load ptr, ptr %h.addr, align 8, !dbg !346, !tbaa !91
  %keys = getelementptr inbounds %struct.kh_int_uint32_t, ptr %18, i32 0, i32 5, !dbg !346
  %19 = load ptr, ptr %keys, align 8, !dbg !346, !tbaa !311
  %20 = load i32, ptr %i, align 4, !dbg !346, !tbaa !249
  %idxprom15 = zext i32 %20 to i64, !dbg !346
  %arrayidx16 = getelementptr inbounds i32, ptr %19, i64 %idxprom15, !dbg !346
  %21 = load i32, ptr %arrayidx16, align 4, !dbg !346, !tbaa !249
  %22 = load i32, ptr %key.addr, align 4, !dbg !346, !tbaa !249
  %cmp = icmp eq i32 %21, %22, !dbg !346
  %lnot = xor i1 %cmp, true, !dbg !346
  br label %lor.end, !dbg !346

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %23 = phi i1 [ true, %land.rhs ], [ %lnot, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %24 = phi i1 [ false, %while.cond ], [ %23, %lor.end ], !dbg !347
  br i1 %24, label %while.body, label %while.end, !dbg !346

while.body:                                       ; preds = %land.end
  %25 = load i32, ptr %i, align 4, !dbg !348, !tbaa !249
  %26 = load i32, ptr %step, align 4, !dbg !348, !tbaa !249
  %inc = add i32 %26, 1, !dbg !348
  store i32 %inc, ptr %step, align 4, !dbg !348, !tbaa !249
  %add = add i32 %25, %inc, !dbg !348
  %27 = load i32, ptr %mask, align 4, !dbg !348, !tbaa !249
  %and17 = and i32 %add, %27, !dbg !348
  store i32 %and17, ptr %i, align 4, !dbg !348, !tbaa !249
  %28 = load i32, ptr %i, align 4, !dbg !350, !tbaa !249
  %29 = load i32, ptr %last, align 4, !dbg !350, !tbaa !249
  %cmp18 = icmp eq i32 %28, %29, !dbg !350
  br i1 %cmp18, label %if.then19, label %if.end, !dbg !348

if.then19:                                        ; preds = %while.body
  %30 = load ptr, ptr %h.addr, align 8, !dbg !350, !tbaa !91
  %n_buckets20 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %30, i32 0, i32 0, !dbg !350
  %31 = load i32, ptr %n_buckets20, align 8, !dbg !350, !tbaa !256
  store i32 %31, ptr %retval, align 4, !dbg !350
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !350

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !346, !llvm.loop !352

while.end:                                        ; preds = %land.end
  %32 = load ptr, ptr %h.addr, align 8, !dbg !346, !tbaa !91
  %flags21 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %32, i32 0, i32 4, !dbg !346
  %33 = load ptr, ptr %flags21, align 8, !dbg !346, !tbaa !309
  %34 = load i32, ptr %i, align 4, !dbg !346, !tbaa !249
  %shr22 = lshr i32 %34, 4, !dbg !346
  %idxprom23 = zext i32 %shr22 to i64, !dbg !346
  %arrayidx24 = getelementptr inbounds i32, ptr %33, i64 %idxprom23, !dbg !346
  %35 = load i32, ptr %arrayidx24, align 4, !dbg !346, !tbaa !249
  %36 = load i32, ptr %i, align 4, !dbg !346, !tbaa !249
  %and25 = and i32 %36, 15, !dbg !346
  %shl26 = shl i32 %and25, 1, !dbg !346
  %shr27 = lshr i32 %35, %shl26, !dbg !346
  %and28 = and i32 %shr27, 3, !dbg !346
  %tobool29 = icmp ne i32 %and28, 0, !dbg !346
  br i1 %tobool29, label %cond.true, label %cond.false, !dbg !346

cond.true:                                        ; preds = %while.end
  %37 = load ptr, ptr %h.addr, align 8, !dbg !346, !tbaa !91
  %n_buckets30 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %37, i32 0, i32 0, !dbg !346
  %38 = load i32, ptr %n_buckets30, align 8, !dbg !346, !tbaa !256
  br label %cond.end, !dbg !346

cond.false:                                       ; preds = %while.end
  %39 = load i32, ptr %i, align 4, !dbg !346, !tbaa !249
  br label %cond.end, !dbg !346

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %38, %cond.true ], [ %39, %cond.false ], !dbg !346
  store i32 %cond, ptr %retval, align 4, !dbg !346
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !346

cleanup:                                          ; preds = %cond.end, %if.then19
  call void @llvm.lifetime.end.p0(i64 4, ptr %step) #10, !dbg !345
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #10, !dbg !345
  call void @llvm.lifetime.end.p0(i64 4, ptr %last) #10, !dbg !345
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !345
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #10, !dbg !345
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !345
  br label %return, !dbg !345

return:                                           ; preds = %if.else, %cleanup
  %40 = load i32, ptr %retval, align 4, !dbg !344
  ret i32 %40, !dbg !344
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @kh_put_int_uint32(ptr noundef %h, i32 noundef %key, ptr noundef %ret) #3 !dbg !353 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca ptr, align 8
  %key.addr = alloca i32, align 4
  %ret.addr = alloca ptr, align 8
  %x = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %site = alloca i32, align 4
  %last = alloca i32, align 4
  %mask = alloca i32, align 4
  %step = alloca i32, align 4
  store ptr %h, ptr %h.addr, align 8, !tbaa !91
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !358, metadata !DIExpression()), !dbg !369
  store i32 %key, ptr %key.addr, align 4, !tbaa !249
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !359, metadata !DIExpression()), !dbg !369
  store ptr %ret, ptr %ret.addr, align 8, !tbaa !91
  tail call void @llvm.dbg.declare(metadata ptr %ret.addr, metadata !360, metadata !DIExpression()), !dbg !369
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #10, !dbg !369
  tail call void @llvm.dbg.declare(metadata ptr %x, metadata !361, metadata !DIExpression()), !dbg !369
  %0 = load ptr, ptr %h.addr, align 8, !dbg !370, !tbaa !91
  %n_occupied = getelementptr inbounds %struct.kh_int_uint32_t, ptr %0, i32 0, i32 2, !dbg !370
  %1 = load i32, ptr %n_occupied, align 8, !dbg !370, !tbaa !328
  %2 = load ptr, ptr %h.addr, align 8, !dbg !370, !tbaa !91
  %upper_bound = getelementptr inbounds %struct.kh_int_uint32_t, ptr %2, i32 0, i32 3, !dbg !370
  %3 = load i32, ptr %upper_bound, align 4, !dbg !370, !tbaa !372
  %cmp = icmp uge i32 %1, %3, !dbg !370
  br i1 %cmp, label %if.then, label %if.end14, !dbg !369

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %h.addr, align 8, !dbg !373, !tbaa !91
  %n_buckets = getelementptr inbounds %struct.kh_int_uint32_t, ptr %4, i32 0, i32 0, !dbg !373
  %5 = load i32, ptr %n_buckets, align 8, !dbg !373, !tbaa !256
  %6 = load ptr, ptr %h.addr, align 8, !dbg !373, !tbaa !91
  %size = getelementptr inbounds %struct.kh_int_uint32_t, ptr %6, i32 0, i32 1, !dbg !373
  %7 = load i32, ptr %size, align 4, !dbg !373, !tbaa !263
  %shl = shl i32 %7, 1, !dbg !373
  %cmp1 = icmp ugt i32 %5, %shl, !dbg !373
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !376

if.then2:                                         ; preds = %if.then
  %8 = load ptr, ptr %h.addr, align 8, !dbg !377, !tbaa !91
  %9 = load ptr, ptr %h.addr, align 8, !dbg !377, !tbaa !91
  %n_buckets3 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %9, i32 0, i32 0, !dbg !377
  %10 = load i32, ptr %n_buckets3, align 8, !dbg !377, !tbaa !256
  %sub = sub i32 %10, 1, !dbg !377
  %call = call i32 @kh_resize_int_uint32(ptr noundef %8, i32 noundef %sub), !dbg !377
  %cmp4 = icmp slt i32 %call, 0, !dbg !377
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !380

if.then5:                                         ; preds = %if.then2
  %11 = load ptr, ptr %ret.addr, align 8, !dbg !381, !tbaa !91
  store i32 -1, ptr %11, align 4, !dbg !381, !tbaa !249
  %12 = load ptr, ptr %h.addr, align 8, !dbg !381, !tbaa !91
  %n_buckets6 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %12, i32 0, i32 0, !dbg !381
  %13 = load i32, ptr %n_buckets6, align 8, !dbg !381, !tbaa !256
  store i32 %13, ptr %retval, align 4, !dbg !381
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !381

if.end:                                           ; preds = %if.then2
  br label %if.end13, !dbg !380

if.else:                                          ; preds = %if.then
  %14 = load ptr, ptr %h.addr, align 8, !dbg !383, !tbaa !91
  %15 = load ptr, ptr %h.addr, align 8, !dbg !383, !tbaa !91
  %n_buckets7 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %15, i32 0, i32 0, !dbg !383
  %16 = load i32, ptr %n_buckets7, align 8, !dbg !383, !tbaa !256
  %add = add i32 %16, 1, !dbg !383
  %call8 = call i32 @kh_resize_int_uint32(ptr noundef %14, i32 noundef %add), !dbg !383
  %cmp9 = icmp slt i32 %call8, 0, !dbg !383
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !373

if.then10:                                        ; preds = %if.else
  %17 = load ptr, ptr %ret.addr, align 8, !dbg !385, !tbaa !91
  store i32 -1, ptr %17, align 4, !dbg !385, !tbaa !249
  %18 = load ptr, ptr %h.addr, align 8, !dbg !385, !tbaa !91
  %n_buckets11 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %18, i32 0, i32 0, !dbg !385
  %19 = load i32, ptr %n_buckets11, align 8, !dbg !385, !tbaa !256
  store i32 %19, ptr %retval, align 4, !dbg !385
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !385

if.end12:                                         ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  br label %if.end14, !dbg !376

if.end14:                                         ; preds = %if.end13, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #10, !dbg !387
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !362, metadata !DIExpression()), !dbg !387
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !387
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !364, metadata !DIExpression()), !dbg !387
  call void @llvm.lifetime.start.p0(i64 4, ptr %site) #10, !dbg !387
  tail call void @llvm.dbg.declare(metadata ptr %site, metadata !365, metadata !DIExpression()), !dbg !387
  call void @llvm.lifetime.start.p0(i64 4, ptr %last) #10, !dbg !387
  tail call void @llvm.dbg.declare(metadata ptr %last, metadata !366, metadata !DIExpression()), !dbg !387
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #10, !dbg !387
  tail call void @llvm.dbg.declare(metadata ptr %mask, metadata !367, metadata !DIExpression()), !dbg !387
  %20 = load ptr, ptr %h.addr, align 8, !dbg !387, !tbaa !91
  %n_buckets15 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %20, i32 0, i32 0, !dbg !387
  %21 = load i32, ptr %n_buckets15, align 8, !dbg !387, !tbaa !256
  %sub16 = sub i32 %21, 1, !dbg !387
  store i32 %sub16, ptr %mask, align 4, !dbg !387, !tbaa !249
  call void @llvm.lifetime.start.p0(i64 4, ptr %step) #10, !dbg !387
  tail call void @llvm.dbg.declare(metadata ptr %step, metadata !368, metadata !DIExpression()), !dbg !387
  store i32 0, ptr %step, align 4, !dbg !387, !tbaa !249
  %22 = load ptr, ptr %h.addr, align 8, !dbg !387, !tbaa !91
  %n_buckets17 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %22, i32 0, i32 0, !dbg !387
  %23 = load i32, ptr %n_buckets17, align 8, !dbg !387, !tbaa !256
  store i32 %23, ptr %site, align 4, !dbg !387, !tbaa !249
  store i32 %23, ptr %x, align 4, !dbg !387, !tbaa !249
  %24 = load i32, ptr %key.addr, align 4, !dbg !387, !tbaa !249
  store i32 %24, ptr %k, align 4, !dbg !387, !tbaa !249
  %25 = load i32, ptr %k, align 4, !dbg !387, !tbaa !249
  %26 = load i32, ptr %mask, align 4, !dbg !387, !tbaa !249
  %and = and i32 %25, %26, !dbg !387
  store i32 %and, ptr %i, align 4, !dbg !387, !tbaa !249
  %27 = load ptr, ptr %h.addr, align 8, !dbg !388, !tbaa !91
  %flags = getelementptr inbounds %struct.kh_int_uint32_t, ptr %27, i32 0, i32 4, !dbg !388
  %28 = load ptr, ptr %flags, align 8, !dbg !388, !tbaa !309
  %29 = load i32, ptr %i, align 4, !dbg !388, !tbaa !249
  %shr = lshr i32 %29, 4, !dbg !388
  %idxprom = zext i32 %shr to i64, !dbg !388
  %arrayidx = getelementptr inbounds i32, ptr %28, i64 %idxprom, !dbg !388
  %30 = load i32, ptr %arrayidx, align 4, !dbg !388, !tbaa !249
  %31 = load i32, ptr %i, align 4, !dbg !388, !tbaa !249
  %and18 = and i32 %31, 15, !dbg !388
  %shl19 = shl i32 %and18, 1, !dbg !388
  %shr20 = lshr i32 %30, %shl19, !dbg !388
  %and21 = and i32 %shr20, 2, !dbg !388
  %tobool = icmp ne i32 %and21, 0, !dbg !388
  br i1 %tobool, label %if.then22, label %if.else23, !dbg !387

if.then22:                                        ; preds = %if.end14
  %32 = load i32, ptr %i, align 4, !dbg !388, !tbaa !249
  store i32 %32, ptr %x, align 4, !dbg !388, !tbaa !249
  br label %if.end79, !dbg !388

if.else23:                                        ; preds = %if.end14
  %33 = load i32, ptr %i, align 4, !dbg !390, !tbaa !249
  store i32 %33, ptr %last, align 4, !dbg !390, !tbaa !249
  br label %while.cond, !dbg !390

while.cond:                                       ; preds = %if.end60, %if.else23
  %34 = load ptr, ptr %h.addr, align 8, !dbg !390, !tbaa !91
  %flags24 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %34, i32 0, i32 4, !dbg !390
  %35 = load ptr, ptr %flags24, align 8, !dbg !390, !tbaa !309
  %36 = load i32, ptr %i, align 4, !dbg !390, !tbaa !249
  %shr25 = lshr i32 %36, 4, !dbg !390
  %idxprom26 = zext i32 %shr25 to i64, !dbg !390
  %arrayidx27 = getelementptr inbounds i32, ptr %35, i64 %idxprom26, !dbg !390
  %37 = load i32, ptr %arrayidx27, align 4, !dbg !390, !tbaa !249
  %38 = load i32, ptr %i, align 4, !dbg !390, !tbaa !249
  %and28 = and i32 %38, 15, !dbg !390
  %shl29 = shl i32 %and28, 1, !dbg !390
  %shr30 = lshr i32 %37, %shl29, !dbg !390
  %and31 = and i32 %shr30, 2, !dbg !390
  %tobool32 = icmp ne i32 %and31, 0, !dbg !390
  br i1 %tobool32, label %land.end, label %land.rhs, !dbg !390

land.rhs:                                         ; preds = %while.cond
  %39 = load ptr, ptr %h.addr, align 8, !dbg !390, !tbaa !91
  %flags33 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %39, i32 0, i32 4, !dbg !390
  %40 = load ptr, ptr %flags33, align 8, !dbg !390, !tbaa !309
  %41 = load i32, ptr %i, align 4, !dbg !390, !tbaa !249
  %shr34 = lshr i32 %41, 4, !dbg !390
  %idxprom35 = zext i32 %shr34 to i64, !dbg !390
  %arrayidx36 = getelementptr inbounds i32, ptr %40, i64 %idxprom35, !dbg !390
  %42 = load i32, ptr %arrayidx36, align 4, !dbg !390, !tbaa !249
  %43 = load i32, ptr %i, align 4, !dbg !390, !tbaa !249
  %and37 = and i32 %43, 15, !dbg !390
  %shl38 = shl i32 %and37, 1, !dbg !390
  %shr39 = lshr i32 %42, %shl38, !dbg !390
  %and40 = and i32 %shr39, 1, !dbg !390
  %tobool41 = icmp ne i32 %and40, 0, !dbg !390
  br i1 %tobool41, label %lor.end, label %lor.rhs, !dbg !390

lor.rhs:                                          ; preds = %land.rhs
  %44 = load ptr, ptr %h.addr, align 8, !dbg !390, !tbaa !91
  %keys = getelementptr inbounds %struct.kh_int_uint32_t, ptr %44, i32 0, i32 5, !dbg !390
  %45 = load ptr, ptr %keys, align 8, !dbg !390, !tbaa !311
  %46 = load i32, ptr %i, align 4, !dbg !390, !tbaa !249
  %idxprom42 = zext i32 %46 to i64, !dbg !390
  %arrayidx43 = getelementptr inbounds i32, ptr %45, i64 %idxprom42, !dbg !390
  %47 = load i32, ptr %arrayidx43, align 4, !dbg !390, !tbaa !249
  %48 = load i32, ptr %key.addr, align 4, !dbg !390, !tbaa !249
  %cmp44 = icmp eq i32 %47, %48, !dbg !390
  %lnot = xor i1 %cmp44, true, !dbg !390
  br label %lor.end, !dbg !390

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %49 = phi i1 [ true, %land.rhs ], [ %lnot, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %50 = phi i1 [ false, %while.cond ], [ %49, %lor.end ], !dbg !392
  br i1 %50, label %while.body, label %while.end, !dbg !390

while.body:                                       ; preds = %land.end
  %51 = load ptr, ptr %h.addr, align 8, !dbg !393, !tbaa !91
  %flags45 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %51, i32 0, i32 4, !dbg !393
  %52 = load ptr, ptr %flags45, align 8, !dbg !393, !tbaa !309
  %53 = load i32, ptr %i, align 4, !dbg !393, !tbaa !249
  %shr46 = lshr i32 %53, 4, !dbg !393
  %idxprom47 = zext i32 %shr46 to i64, !dbg !393
  %arrayidx48 = getelementptr inbounds i32, ptr %52, i64 %idxprom47, !dbg !393
  %54 = load i32, ptr %arrayidx48, align 4, !dbg !393, !tbaa !249
  %55 = load i32, ptr %i, align 4, !dbg !393, !tbaa !249
  %and49 = and i32 %55, 15, !dbg !393
  %shl50 = shl i32 %and49, 1, !dbg !393
  %shr51 = lshr i32 %54, %shl50, !dbg !393
  %and52 = and i32 %shr51, 1, !dbg !393
  %tobool53 = icmp ne i32 %and52, 0, !dbg !393
  br i1 %tobool53, label %if.then54, label %if.end55, !dbg !396

if.then54:                                        ; preds = %while.body
  %56 = load i32, ptr %i, align 4, !dbg !393, !tbaa !249
  store i32 %56, ptr %site, align 4, !dbg !393, !tbaa !249
  br label %if.end55, !dbg !393

if.end55:                                         ; preds = %if.then54, %while.body
  %57 = load i32, ptr %i, align 4, !dbg !396, !tbaa !249
  %58 = load i32, ptr %step, align 4, !dbg !396, !tbaa !249
  %inc = add i32 %58, 1, !dbg !396
  store i32 %inc, ptr %step, align 4, !dbg !396, !tbaa !249
  %add56 = add i32 %57, %inc, !dbg !396
  %59 = load i32, ptr %mask, align 4, !dbg !396, !tbaa !249
  %and57 = and i32 %add56, %59, !dbg !396
  store i32 %and57, ptr %i, align 4, !dbg !396, !tbaa !249
  %60 = load i32, ptr %i, align 4, !dbg !397, !tbaa !249
  %61 = load i32, ptr %last, align 4, !dbg !397, !tbaa !249
  %cmp58 = icmp eq i32 %60, %61, !dbg !397
  br i1 %cmp58, label %if.then59, label %if.end60, !dbg !396

if.then59:                                        ; preds = %if.end55
  %62 = load i32, ptr %site, align 4, !dbg !399, !tbaa !249
  store i32 %62, ptr %x, align 4, !dbg !399, !tbaa !249
  br label %while.end, !dbg !399

if.end60:                                         ; preds = %if.end55
  br label %while.cond, !dbg !390, !llvm.loop !401

while.end:                                        ; preds = %if.then59, %land.end
  %63 = load i32, ptr %x, align 4, !dbg !402, !tbaa !249
  %64 = load ptr, ptr %h.addr, align 8, !dbg !402, !tbaa !91
  %n_buckets61 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %64, i32 0, i32 0, !dbg !402
  %65 = load i32, ptr %n_buckets61, align 8, !dbg !402, !tbaa !256
  %cmp62 = icmp eq i32 %63, %65, !dbg !402
  br i1 %cmp62, label %if.then63, label %if.end78, !dbg !390

if.then63:                                        ; preds = %while.end
  %66 = load ptr, ptr %h.addr, align 8, !dbg !404, !tbaa !91
  %flags64 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %66, i32 0, i32 4, !dbg !404
  %67 = load ptr, ptr %flags64, align 8, !dbg !404, !tbaa !309
  %68 = load i32, ptr %i, align 4, !dbg !404, !tbaa !249
  %shr65 = lshr i32 %68, 4, !dbg !404
  %idxprom66 = zext i32 %shr65 to i64, !dbg !404
  %arrayidx67 = getelementptr inbounds i32, ptr %67, i64 %idxprom66, !dbg !404
  %69 = load i32, ptr %arrayidx67, align 4, !dbg !404, !tbaa !249
  %70 = load i32, ptr %i, align 4, !dbg !404, !tbaa !249
  %and68 = and i32 %70, 15, !dbg !404
  %shl69 = shl i32 %and68, 1, !dbg !404
  %shr70 = lshr i32 %69, %shl69, !dbg !404
  %and71 = and i32 %shr70, 2, !dbg !404
  %tobool72 = icmp ne i32 %and71, 0, !dbg !404
  br i1 %tobool72, label %land.lhs.true, label %if.else76, !dbg !404

land.lhs.true:                                    ; preds = %if.then63
  %71 = load i32, ptr %site, align 4, !dbg !404, !tbaa !249
  %72 = load ptr, ptr %h.addr, align 8, !dbg !404, !tbaa !91
  %n_buckets73 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %72, i32 0, i32 0, !dbg !404
  %73 = load i32, ptr %n_buckets73, align 8, !dbg !404, !tbaa !256
  %cmp74 = icmp ne i32 %71, %73, !dbg !404
  br i1 %cmp74, label %if.then75, label %if.else76, !dbg !407

if.then75:                                        ; preds = %land.lhs.true
  %74 = load i32, ptr %site, align 4, !dbg !404, !tbaa !249
  store i32 %74, ptr %x, align 4, !dbg !404, !tbaa !249
  br label %if.end77, !dbg !404

if.else76:                                        ; preds = %land.lhs.true, %if.then63
  %75 = load i32, ptr %i, align 4, !dbg !404, !tbaa !249
  store i32 %75, ptr %x, align 4, !dbg !404, !tbaa !249
  br label %if.end77

if.end77:                                         ; preds = %if.else76, %if.then75
  br label %if.end78, !dbg !407

if.end78:                                         ; preds = %if.end77, %while.end
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then22
  call void @llvm.lifetime.end.p0(i64 4, ptr %step) #10, !dbg !369
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #10, !dbg !369
  call void @llvm.lifetime.end.p0(i64 4, ptr %last) #10, !dbg !369
  call void @llvm.lifetime.end.p0(i64 4, ptr %site) #10, !dbg !369
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !369
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #10, !dbg !369
  %76 = load ptr, ptr %h.addr, align 8, !dbg !408, !tbaa !91
  %flags80 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %76, i32 0, i32 4, !dbg !408
  %77 = load ptr, ptr %flags80, align 8, !dbg !408, !tbaa !309
  %78 = load i32, ptr %x, align 4, !dbg !408, !tbaa !249
  %shr81 = lshr i32 %78, 4, !dbg !408
  %idxprom82 = zext i32 %shr81 to i64, !dbg !408
  %arrayidx83 = getelementptr inbounds i32, ptr %77, i64 %idxprom82, !dbg !408
  %79 = load i32, ptr %arrayidx83, align 4, !dbg !408, !tbaa !249
  %80 = load i32, ptr %x, align 4, !dbg !408, !tbaa !249
  %and84 = and i32 %80, 15, !dbg !408
  %shl85 = shl i32 %and84, 1, !dbg !408
  %shr86 = lshr i32 %79, %shl85, !dbg !408
  %and87 = and i32 %shr86, 2, !dbg !408
  %tobool88 = icmp ne i32 %and87, 0, !dbg !408
  br i1 %tobool88, label %if.then89, label %if.else106, !dbg !369

if.then89:                                        ; preds = %if.end79
  %81 = load i32, ptr %key.addr, align 4, !dbg !410, !tbaa !249
  %82 = load ptr, ptr %h.addr, align 8, !dbg !410, !tbaa !91
  %keys90 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %82, i32 0, i32 5, !dbg !410
  %83 = load ptr, ptr %keys90, align 8, !dbg !410, !tbaa !311
  %84 = load i32, ptr %x, align 4, !dbg !410, !tbaa !249
  %idxprom91 = zext i32 %84 to i64, !dbg !410
  %arrayidx92 = getelementptr inbounds i32, ptr %83, i64 %idxprom91, !dbg !410
  store i32 %81, ptr %arrayidx92, align 4, !dbg !410, !tbaa !249
  %85 = load i32, ptr %x, align 4, !dbg !410, !tbaa !249
  %and93 = and i32 %85, 15, !dbg !410
  %shl94 = shl i32 %and93, 1, !dbg !410
  %sh_prom = zext i32 %shl94 to i64, !dbg !410
  %shl95 = shl i64 3, %sh_prom, !dbg !410
  %not = xor i64 %shl95, -1, !dbg !410
  %86 = load ptr, ptr %h.addr, align 8, !dbg !410, !tbaa !91
  %flags96 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %86, i32 0, i32 4, !dbg !410
  %87 = load ptr, ptr %flags96, align 8, !dbg !410, !tbaa !309
  %88 = load i32, ptr %x, align 4, !dbg !410, !tbaa !249
  %shr97 = lshr i32 %88, 4, !dbg !410
  %idxprom98 = zext i32 %shr97 to i64, !dbg !410
  %arrayidx99 = getelementptr inbounds i32, ptr %87, i64 %idxprom98, !dbg !410
  %89 = load i32, ptr %arrayidx99, align 4, !dbg !410, !tbaa !249
  %conv = zext i32 %89 to i64, !dbg !410
  %and100 = and i64 %conv, %not, !dbg !410
  %conv101 = trunc i64 %and100 to i32, !dbg !410
  store i32 %conv101, ptr %arrayidx99, align 4, !dbg !410, !tbaa !249
  %90 = load ptr, ptr %h.addr, align 8, !dbg !410, !tbaa !91
  %size102 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %90, i32 0, i32 1, !dbg !410
  %91 = load i32, ptr %size102, align 4, !dbg !410, !tbaa !263
  %inc103 = add i32 %91, 1, !dbg !410
  store i32 %inc103, ptr %size102, align 4, !dbg !410, !tbaa !263
  %92 = load ptr, ptr %h.addr, align 8, !dbg !410, !tbaa !91
  %n_occupied104 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %92, i32 0, i32 2, !dbg !410
  %93 = load i32, ptr %n_occupied104, align 8, !dbg !410, !tbaa !328
  %inc105 = add i32 %93, 1, !dbg !410
  store i32 %inc105, ptr %n_occupied104, align 8, !dbg !410, !tbaa !328
  %94 = load ptr, ptr %ret.addr, align 8, !dbg !410, !tbaa !91
  store i32 1, ptr %94, align 4, !dbg !410, !tbaa !249
  br label %if.end136, !dbg !410

if.else106:                                       ; preds = %if.end79
  %95 = load ptr, ptr %h.addr, align 8, !dbg !412, !tbaa !91
  %flags107 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %95, i32 0, i32 4, !dbg !412
  %96 = load ptr, ptr %flags107, align 8, !dbg !412, !tbaa !309
  %97 = load i32, ptr %x, align 4, !dbg !412, !tbaa !249
  %shr108 = lshr i32 %97, 4, !dbg !412
  %idxprom109 = zext i32 %shr108 to i64, !dbg !412
  %arrayidx110 = getelementptr inbounds i32, ptr %96, i64 %idxprom109, !dbg !412
  %98 = load i32, ptr %arrayidx110, align 4, !dbg !412, !tbaa !249
  %99 = load i32, ptr %x, align 4, !dbg !412, !tbaa !249
  %and111 = and i32 %99, 15, !dbg !412
  %shl112 = shl i32 %and111, 1, !dbg !412
  %shr113 = lshr i32 %98, %shl112, !dbg !412
  %and114 = and i32 %shr113, 1, !dbg !412
  %tobool115 = icmp ne i32 %and114, 0, !dbg !412
  br i1 %tobool115, label %if.then116, label %if.else134, !dbg !408

if.then116:                                       ; preds = %if.else106
  %100 = load i32, ptr %key.addr, align 4, !dbg !414, !tbaa !249
  %101 = load ptr, ptr %h.addr, align 8, !dbg !414, !tbaa !91
  %keys117 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %101, i32 0, i32 5, !dbg !414
  %102 = load ptr, ptr %keys117, align 8, !dbg !414, !tbaa !311
  %103 = load i32, ptr %x, align 4, !dbg !414, !tbaa !249
  %idxprom118 = zext i32 %103 to i64, !dbg !414
  %arrayidx119 = getelementptr inbounds i32, ptr %102, i64 %idxprom118, !dbg !414
  store i32 %100, ptr %arrayidx119, align 4, !dbg !414, !tbaa !249
  %104 = load i32, ptr %x, align 4, !dbg !414, !tbaa !249
  %and120 = and i32 %104, 15, !dbg !414
  %shl121 = shl i32 %and120, 1, !dbg !414
  %sh_prom122 = zext i32 %shl121 to i64, !dbg !414
  %shl123 = shl i64 3, %sh_prom122, !dbg !414
  %not124 = xor i64 %shl123, -1, !dbg !414
  %105 = load ptr, ptr %h.addr, align 8, !dbg !414, !tbaa !91
  %flags125 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %105, i32 0, i32 4, !dbg !414
  %106 = load ptr, ptr %flags125, align 8, !dbg !414, !tbaa !309
  %107 = load i32, ptr %x, align 4, !dbg !414, !tbaa !249
  %shr126 = lshr i32 %107, 4, !dbg !414
  %idxprom127 = zext i32 %shr126 to i64, !dbg !414
  %arrayidx128 = getelementptr inbounds i32, ptr %106, i64 %idxprom127, !dbg !414
  %108 = load i32, ptr %arrayidx128, align 4, !dbg !414, !tbaa !249
  %conv129 = zext i32 %108 to i64, !dbg !414
  %and130 = and i64 %conv129, %not124, !dbg !414
  %conv131 = trunc i64 %and130 to i32, !dbg !414
  store i32 %conv131, ptr %arrayidx128, align 4, !dbg !414, !tbaa !249
  %109 = load ptr, ptr %h.addr, align 8, !dbg !414, !tbaa !91
  %size132 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %109, i32 0, i32 1, !dbg !414
  %110 = load i32, ptr %size132, align 4, !dbg !414, !tbaa !263
  %inc133 = add i32 %110, 1, !dbg !414
  store i32 %inc133, ptr %size132, align 4, !dbg !414, !tbaa !263
  %111 = load ptr, ptr %ret.addr, align 8, !dbg !414, !tbaa !91
  store i32 2, ptr %111, align 4, !dbg !414, !tbaa !249
  br label %if.end135, !dbg !414

if.else134:                                       ; preds = %if.else106
  %112 = load ptr, ptr %ret.addr, align 8, !dbg !412, !tbaa !91
  store i32 0, ptr %112, align 4, !dbg !412, !tbaa !249
  br label %if.end135

if.end135:                                        ; preds = %if.else134, %if.then116
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.then89
  %113 = load i32, ptr %x, align 4, !dbg !369, !tbaa !249
  store i32 %113, ptr %retval, align 4, !dbg !369
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !369

cleanup:                                          ; preds = %if.end136, %if.then10, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #10, !dbg !369
  %114 = load i32, ptr %retval, align 4, !dbg !369
  ret i32 %114, !dbg !369
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @uint32_array_clear(ptr noundef %array) #3 !dbg !416 {
entry:
  %array.addr = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8, !tbaa !91
  tail call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !420, metadata !DIExpression()), !dbg !421
  %0 = load ptr, ptr %array.addr, align 8, !dbg !421, !tbaa !91
  %n = getelementptr inbounds %struct.uint32_array, ptr %0, i32 0, i32 0, !dbg !421
  store i64 0, ptr %n, align 8, !dbg !421, !tbaa !100
  ret void, !dbg !421
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @uint32_array_resize_fixed(ptr noundef %array, i64 noundef %size) #3 !dbg !422 {
entry:
  %retval = alloca i1, align 1
  %array.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %array, ptr %array.addr, align 8, !tbaa !91
  tail call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !426, metadata !DIExpression()), !dbg !428
  store i64 %size, ptr %size.addr, align 8, !tbaa !109
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !427, metadata !DIExpression()), !dbg !428
  %0 = load ptr, ptr %array.addr, align 8, !dbg !429, !tbaa !91
  %1 = load i64, ptr %size.addr, align 8, !dbg !429, !tbaa !109
  %call = call zeroext i1 @uint32_array_resize(ptr noundef %0, i64 noundef %1), !dbg !429
  br i1 %call, label %if.end, label %if.then, !dbg !428

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !429
  br label %return, !dbg !429

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !428, !tbaa !109
  %3 = load ptr, ptr %array.addr, align 8, !dbg !428, !tbaa !91
  %n = getelementptr inbounds %struct.uint32_array, ptr %3, i32 0, i32 0, !dbg !428
  store i64 %2, ptr %n, align 8, !dbg !428, !tbaa !100
  store i1 true, ptr %retval, align 1, !dbg !428
  br label %return, !dbg !428

return:                                           ; preds = %if.end, %if.then
  %4 = load i1, ptr %retval, align 1, !dbg !428
  ret i1 %4, !dbg !428
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @sparse_matrix_alias_columns(ptr noundef %matrix, ptr noundef %unique_columns) #0 !dbg !431 {
entry:
  %retval = alloca i1, align 1
  %matrix.addr = alloca ptr, align 8
  %unique_columns.addr = alloca ptr, align 8
  %n = alloca i64, align 8
  %indices2 = alloca ptr, align 8
  %i = alloca i64, align 8
  %k = alloca i32, align 4
  %col_id = alloca i32, align 4
  %col = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %matrix, ptr %matrix.addr, align 8, !tbaa !91
  tail call void @llvm.dbg.declare(metadata ptr %matrix.addr, metadata !435, metadata !DIExpression()), !dbg !447
  store ptr %unique_columns, ptr %unique_columns.addr, align 8, !tbaa !91
  tail call void @llvm.dbg.declare(metadata ptr %unique_columns.addr, metadata !436, metadata !DIExpression()), !dbg !448
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #10, !dbg !449
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !437, metadata !DIExpression()), !dbg !450
  %0 = load ptr, ptr %matrix.addr, align 8, !dbg !451, !tbaa !91
  %indices = getelementptr inbounds %struct.sparse_matrix_t, ptr %0, i32 0, i32 3, !dbg !452
  %1 = load ptr, ptr %indices, align 8, !dbg !452, !tbaa !225
  %n1 = getelementptr inbounds %struct.uint32_array, ptr %1, i32 0, i32 0, !dbg !453
  %2 = load i64, ptr %n1, align 8, !dbg !453, !tbaa !100
  store i64 %2, ptr %n, align 8, !dbg !450, !tbaa !109
  call void @llvm.lifetime.start.p0(i64 8, ptr %indices2) #10, !dbg !454
  tail call void @llvm.dbg.declare(metadata ptr %indices2, metadata !438, metadata !DIExpression()), !dbg !455
  %3 = load ptr, ptr %matrix.addr, align 8, !dbg !456, !tbaa !91
  %indices3 = getelementptr inbounds %struct.sparse_matrix_t, ptr %3, i32 0, i32 3, !dbg !457
  %4 = load ptr, ptr %indices3, align 8, !dbg !457, !tbaa !225
  %a = getelementptr inbounds %struct.uint32_array, ptr %4, i32 0, i32 2, !dbg !458
  %5 = load ptr, ptr %a, align 8, !dbg !458, !tbaa !169
  store ptr %5, ptr %indices2, align 8, !dbg !455, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !459
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !439, metadata !DIExpression()), !dbg !460
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #10, !dbg !461
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !440, metadata !DIExpression()), !dbg !462
  call void @llvm.lifetime.start.p0(i64 4, ptr %col_id) #10, !dbg !463
  tail call void @llvm.dbg.declare(metadata ptr %col_id, metadata !441, metadata !DIExpression()), !dbg !464
  store i64 0, ptr %i, align 8, !dbg !465, !tbaa !109
  br label %for.cond, !dbg !466

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i64, ptr %i, align 8, !dbg !467, !tbaa !109
  %7 = load i64, ptr %n, align 8, !dbg !468, !tbaa !109
  %cmp = icmp ult i64 %6, %7, !dbg !469
  br i1 %cmp, label %for.body, label %for.end, !dbg !470

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %col) #10, !dbg !471
  tail call void @llvm.dbg.declare(metadata ptr %col, metadata !442, metadata !DIExpression()), !dbg !472
  %8 = load ptr, ptr %indices2, align 8, !dbg !473, !tbaa !91
  %9 = load i64, ptr %i, align 8, !dbg !474, !tbaa !109
  %arrayidx = getelementptr inbounds i32, ptr %8, i64 %9, !dbg !473
  %10 = load i32, ptr %arrayidx, align 4, !dbg !473, !tbaa !249
  store i32 %10, ptr %col, align 4, !dbg !472, !tbaa !249
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !475
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !446, metadata !DIExpression()), !dbg !476
  store i32 0, ptr %ret, align 4, !dbg !476, !tbaa !249
  %11 = load ptr, ptr %unique_columns.addr, align 8, !dbg !477, !tbaa !91
  %12 = load i32, ptr %col, align 4, !dbg !477, !tbaa !249
  %call = call i32 @kh_get_int_uint32(ptr noundef %11, i32 noundef %12), !dbg !477
  store i32 %call, ptr %k, align 4, !dbg !478, !tbaa !249
  %13 = load i32, ptr %k, align 4, !dbg !479, !tbaa !249
  %14 = load ptr, ptr %unique_columns.addr, align 8, !dbg !481, !tbaa !91
  %n_buckets = getelementptr inbounds %struct.kh_int_uint32_t, ptr %14, i32 0, i32 0, !dbg !481
  %15 = load i32, ptr %n_buckets, align 8, !dbg !481, !tbaa !256
  %cmp4 = icmp ne i32 %13, %15, !dbg !482
  br i1 %cmp4, label %if.then, label %if.else, !dbg !483

if.then:                                          ; preds = %for.body
  %16 = load ptr, ptr %unique_columns.addr, align 8, !dbg !484, !tbaa !91
  %vals = getelementptr inbounds %struct.kh_int_uint32_t, ptr %16, i32 0, i32 6, !dbg !484
  %17 = load ptr, ptr %vals, align 8, !dbg !484, !tbaa !274
  %18 = load i32, ptr %k, align 4, !dbg !484, !tbaa !249
  %idxprom = zext i32 %18 to i64, !dbg !484
  %arrayidx5 = getelementptr inbounds i32, ptr %17, i64 %idxprom, !dbg !484
  %19 = load i32, ptr %arrayidx5, align 4, !dbg !484, !tbaa !249
  store i32 %19, ptr %col_id, align 4, !dbg !486, !tbaa !249
  %20 = load i32, ptr %col_id, align 4, !dbg !487, !tbaa !249
  %21 = load ptr, ptr %indices2, align 8, !dbg !488, !tbaa !91
  %22 = load i64, ptr %i, align 8, !dbg !489, !tbaa !109
  %arrayidx6 = getelementptr inbounds i32, ptr %21, i64 %22, !dbg !488
  store i32 %20, ptr %arrayidx6, align 4, !dbg !490, !tbaa !249
  br label %if.end, !dbg !491

if.else:                                          ; preds = %for.body
  store i1 false, ptr %retval, align 1, !dbg !492
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !492

if.end:                                           ; preds = %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !494
  br label %cleanup, !dbg !494

cleanup:                                          ; preds = %if.end, %if.else
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !494
  call void @llvm.lifetime.end.p0(i64 4, ptr %col) #10, !dbg !494
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !495

for.inc:                                          ; preds = %cleanup.cont
  %23 = load i64, ptr %i, align 8, !dbg !496, !tbaa !109
  %inc = add i64 %23, 1, !dbg !496
  store i64 %inc, ptr %i, align 8, !dbg !496, !tbaa !109
  br label %for.cond, !dbg !497, !llvm.loop !498

for.end:                                          ; preds = %for.cond
  %24 = load ptr, ptr %unique_columns.addr, align 8, !dbg !500, !tbaa !91
  %size = getelementptr inbounds %struct.kh_int_uint32_t, ptr %24, i32 0, i32 1, !dbg !500
  %25 = load i32, ptr %size, align 4, !dbg !500, !tbaa !263
  %26 = load ptr, ptr %matrix.addr, align 8, !dbg !501, !tbaa !91
  %n8 = getelementptr inbounds %struct.sparse_matrix_t, ptr %26, i32 0, i32 1, !dbg !502
  store i32 %25, ptr %n8, align 4, !dbg !503, !tbaa !504
  store i1 true, ptr %retval, align 1, !dbg !505
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup9, !dbg !505

cleanup9:                                         ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %col_id) #10, !dbg !506
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #10, !dbg !506
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !506
  call void @llvm.lifetime.end.p0(i64 8, ptr %indices2) #10, !dbg !506
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #10, !dbg !506
  %27 = load i1, ptr %retval, align 1, !dbg !506
  ret i1 %27, !dbg !506
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i1 @sparse_matrix_add_unique_columns_alias(ptr noundef %matrix, ptr noundef %unique_columns, ptr noundef %array) #3 !dbg !507 {
entry:
  %matrix.addr = alloca ptr, align 8
  %unique_columns.addr = alloca ptr, align 8
  %array.addr = alloca ptr, align 8
  store ptr %matrix, ptr %matrix.addr, align 8, !tbaa !91
  tail call void @llvm.dbg.declare(metadata ptr %matrix.addr, metadata !509, metadata !DIExpression()), !dbg !512
  store ptr %unique_columns, ptr %unique_columns.addr, align 8, !tbaa !91
  tail call void @llvm.dbg.declare(metadata ptr %unique_columns.addr, metadata !510, metadata !DIExpression()), !dbg !513
  store ptr %array, ptr %array.addr, align 8, !tbaa !91
  tail call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !511, metadata !DIExpression()), !dbg !514
  %0 = load ptr, ptr %matrix.addr, align 8, !dbg !515, !tbaa !91
  %1 = load ptr, ptr %unique_columns.addr, align 8, !dbg !516, !tbaa !91
  %2 = load ptr, ptr %array.addr, align 8, !dbg !517, !tbaa !91
  %call = call zeroext i1 @sparse_matrix_add_unique_columns(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !518
  br i1 %call, label %land.rhs, label %land.end, !dbg !519

land.rhs:                                         ; preds = %entry
  %3 = load ptr, ptr %matrix.addr, align 8, !dbg !520, !tbaa !91
  %4 = load ptr, ptr %unique_columns.addr, align 8, !dbg !521, !tbaa !91
  %call1 = call zeroext i1 @sparse_matrix_alias_columns(ptr noundef %3, ptr noundef %4), !dbg !522
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %call1, %land.rhs ], !dbg !523
  ret i1 %5, !dbg !524
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sparse_matrix_unique_columns(ptr noundef %matrix) #0 !dbg !525 {
entry:
  %retval = alloca ptr, align 8
  %matrix.addr = alloca ptr, align 8
  %unique_columns = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %matrix, ptr %matrix.addr, align 8, !tbaa !91
  tail call void @llvm.dbg.declare(metadata ptr %matrix.addr, metadata !529, metadata !DIExpression()), !dbg !532
  call void @llvm.lifetime.start.p0(i64 8, ptr %unique_columns) #10, !dbg !533
  tail call void @llvm.dbg.declare(metadata ptr %unique_columns, metadata !530, metadata !DIExpression()), !dbg !534
  %call = call ptr @kh_init_int_set(), !dbg !535
  store ptr %call, ptr %unique_columns, align 8, !dbg !534, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #10, !dbg !536
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !531, metadata !DIExpression()), !dbg !537
  %call1 = call ptr @uint32_array_new(), !dbg !538
  store ptr %call1, ptr %ret, align 8, !dbg !537, !tbaa !91
  %0 = load ptr, ptr %matrix.addr, align 8, !dbg !539, !tbaa !91
  %1 = load ptr, ptr %unique_columns, align 8, !dbg !541, !tbaa !91
  %2 = load ptr, ptr %ret, align 8, !dbg !542, !tbaa !91
  %call2 = call zeroext i1 @sparse_matrix_add_unique_columns(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !543
  br i1 %call2, label %if.then, label %if.end, !dbg !544

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %unique_columns, align 8, !dbg !545, !tbaa !91
  call void @kh_destroy_int_set(ptr noundef %3), !dbg !545
  %4 = load ptr, ptr %ret, align 8, !dbg !547, !tbaa !91
  store ptr %4, ptr %retval, align 8, !dbg !548
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !548

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %unique_columns, align 8, !dbg !549, !tbaa !91
  call void @kh_destroy_int_set(ptr noundef %5), !dbg !549
  %6 = load ptr, ptr %ret, align 8, !dbg !550, !tbaa !91
  call void @uint32_array_destroy(ptr noundef %6), !dbg !551
  store ptr null, ptr %retval, align 8, !dbg !552
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !552

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #10, !dbg !553
  call void @llvm.lifetime.end.p0(i64 8, ptr %unique_columns) #10, !dbg !553
  %7 = load ptr, ptr %retval, align 8, !dbg !553
  ret ptr %7, !dbg !553
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @kh_init_int_set() #3 !dbg !554 {
entry:
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 40) #11, !dbg !557
  ret ptr %call, !dbg !557
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @uint32_array_new() #3 !dbg !558 {
entry:
  %call = call ptr @uint32_array_new_size(i64 noundef 8), !dbg !561
  ret ptr %call, !dbg !561
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @kh_destroy_int_set(ptr noundef %h) #3 !dbg !562 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !91
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !566, metadata !DIExpression()), !dbg !567
  %0 = load ptr, ptr %h.addr, align 8, !dbg !568, !tbaa !91
  %tobool = icmp ne ptr %0, null, !dbg !568
  br i1 %tobool, label %if.then, label %if.end, !dbg !567

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %h.addr, align 8, !dbg !570, !tbaa !91
  %keys = getelementptr inbounds %struct.kh_int_set_t, ptr %1, i32 0, i32 5, !dbg !570
  %2 = load ptr, ptr %keys, align 8, !dbg !570, !tbaa !311
  call void @free(ptr noundef %2) #10, !dbg !570
  %3 = load ptr, ptr %h.addr, align 8, !dbg !570, !tbaa !91
  %flags = getelementptr inbounds %struct.kh_int_set_t, ptr %3, i32 0, i32 4, !dbg !570
  %4 = load ptr, ptr %flags, align 8, !dbg !570, !tbaa !309
  call void @free(ptr noundef %4) #10, !dbg !570
  %5 = load ptr, ptr %h.addr, align 8, !dbg !570, !tbaa !91
  %vals = getelementptr inbounds %struct.kh_int_set_t, ptr %5, i32 0, i32 6, !dbg !570
  %6 = load ptr, ptr %vals, align 8, !dbg !570, !tbaa !274
  call void @free(ptr noundef %6) #10, !dbg !570
  %7 = load ptr, ptr %h.addr, align 8, !dbg !570, !tbaa !91
  call void @free(ptr noundef %7) #10, !dbg !570
  br label %if.end, !dbg !570

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !567
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @uint32_array_destroy(ptr noundef %array) #3 !dbg !572 {
entry:
  %array.addr = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8, !tbaa !91
  tail call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !574, metadata !DIExpression()), !dbg !575
  %0 = load ptr, ptr %array.addr, align 8, !dbg !576, !tbaa !91
  %cmp = icmp eq ptr %0, null, !dbg !576
  br i1 %cmp, label %if.then, label %if.end, !dbg !575

if.then:                                          ; preds = %entry
  br label %return, !dbg !576

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %array.addr, align 8, !dbg !578, !tbaa !91
  %a = getelementptr inbounds %struct.uint32_array, ptr %1, i32 0, i32 2, !dbg !578
  %2 = load ptr, ptr %a, align 8, !dbg !578, !tbaa !169
  %cmp1 = icmp ne ptr %2, null, !dbg !578
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !575

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %array.addr, align 8, !dbg !578, !tbaa !91
  %a3 = getelementptr inbounds %struct.uint32_array, ptr %3, i32 0, i32 2, !dbg !578
  %4 = load ptr, ptr %a3, align 8, !dbg !578, !tbaa !169
  call void @free(ptr noundef %4) #10, !dbg !578
  br label %if.end4, !dbg !578

if.end4:                                          ; preds = %if.then2, %if.end
  %5 = load ptr, ptr %array.addr, align 8, !dbg !575, !tbaa !91
  call void @free(ptr noundef %5) #10, !dbg !575
  br label %return, !dbg !575

return:                                           ; preds = %if.end4, %if.then
  ret void, !dbg !575
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @kh_resize_int_uint32(ptr noundef %h, i32 noundef %new_n_buckets) #3 !dbg !580 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca ptr, align 8
  %new_n_buckets.addr = alloca i32, align 4
  %new_flags = alloca ptr, align 8
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %new_keys = alloca ptr, align 8
  %new_vals = alloca ptr, align 8
  %key = alloca i32, align 4
  %val = alloca i32, align 4
  %new_mask = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %step = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp120 = alloca i32, align 4
  store ptr %h, ptr %h.addr, align 8, !tbaa !91
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !584, metadata !DIExpression()), !dbg !618
  store i32 %new_n_buckets, ptr %new_n_buckets.addr, align 4, !tbaa !249
  tail call void @llvm.dbg.declare(metadata ptr %new_n_buckets.addr, metadata !585, metadata !DIExpression()), !dbg !618
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_flags) #10, !dbg !618
  tail call void @llvm.dbg.declare(metadata ptr %new_flags, metadata !586, metadata !DIExpression()), !dbg !618
  store ptr null, ptr %new_flags, align 8, !dbg !618, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10, !dbg !618
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !587, metadata !DIExpression()), !dbg !618
  store i32 1, ptr %j, align 4, !dbg !618, !tbaa !249
  %0 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !619, !tbaa !249
  %dec = add i32 %0, -1, !dbg !619
  store i32 %dec, ptr %new_n_buckets.addr, align 4, !dbg !619, !tbaa !249
  %1 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !619, !tbaa !249
  %shr = lshr i32 %1, 1, !dbg !619
  %2 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !619, !tbaa !249
  %or = or i32 %2, %shr, !dbg !619
  store i32 %or, ptr %new_n_buckets.addr, align 4, !dbg !619, !tbaa !249
  %3 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !619, !tbaa !249
  %shr1 = lshr i32 %3, 2, !dbg !619
  %4 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !619, !tbaa !249
  %or2 = or i32 %4, %shr1, !dbg !619
  store i32 %or2, ptr %new_n_buckets.addr, align 4, !dbg !619, !tbaa !249
  %5 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !619, !tbaa !249
  %shr3 = lshr i32 %5, 4, !dbg !619
  %6 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !619, !tbaa !249
  %or4 = or i32 %6, %shr3, !dbg !619
  store i32 %or4, ptr %new_n_buckets.addr, align 4, !dbg !619, !tbaa !249
  %7 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !619, !tbaa !249
  %shr5 = lshr i32 %7, 8, !dbg !619
  %8 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !619, !tbaa !249
  %or6 = or i32 %8, %shr5, !dbg !619
  store i32 %or6, ptr %new_n_buckets.addr, align 4, !dbg !619, !tbaa !249
  %9 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !619, !tbaa !249
  %shr7 = lshr i32 %9, 16, !dbg !619
  %10 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !619, !tbaa !249
  %or8 = or i32 %10, %shr7, !dbg !619
  store i32 %or8, ptr %new_n_buckets.addr, align 4, !dbg !619, !tbaa !249
  %11 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !619, !tbaa !249
  %inc = add i32 %11, 1, !dbg !619
  store i32 %inc, ptr %new_n_buckets.addr, align 4, !dbg !619, !tbaa !249
  %12 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !620, !tbaa !249
  %cmp = icmp ult i32 %12, 4, !dbg !620
  br i1 %cmp, label %if.then, label %if.end, !dbg !619

if.then:                                          ; preds = %entry
  store i32 4, ptr %new_n_buckets.addr, align 4, !dbg !620, !tbaa !249
  br label %if.end, !dbg !620

if.end:                                           ; preds = %if.then, %entry
  %13 = load ptr, ptr %h.addr, align 8, !dbg !622, !tbaa !91
  %size = getelementptr inbounds %struct.kh_int_uint32_t, ptr %13, i32 0, i32 1, !dbg !622
  %14 = load i32, ptr %size, align 4, !dbg !622, !tbaa !263
  %15 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !622, !tbaa !249
  %conv = uitofp i32 %15 to double, !dbg !622
  %16 = call double @llvm.fmuladd.f64(double %conv, double 7.700000e-01, double 5.000000e-01), !dbg !622
  %conv9 = fptoui double %16 to i32, !dbg !622
  %cmp10 = icmp uge i32 %14, %conv9, !dbg !622
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !619

if.then12:                                        ; preds = %if.end
  store i32 0, ptr %j, align 4, !dbg !622, !tbaa !249
  br label %if.end49, !dbg !622

if.else:                                          ; preds = %if.end
  %17 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !623, !tbaa !249
  %cmp13 = icmp ult i32 %17, 16, !dbg !623
  br i1 %cmp13, label %cond.true, label %cond.false, !dbg !623

cond.true:                                        ; preds = %if.else
  br label %cond.end, !dbg !623

cond.false:                                       ; preds = %if.else
  %18 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !623, !tbaa !249
  %shr15 = lshr i32 %18, 4, !dbg !623
  br label %cond.end, !dbg !623

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %shr15, %cond.false ], !dbg !623
  %conv16 = zext i32 %cond to i64, !dbg !623
  %mul = mul i64 %conv16, 4, !dbg !623
  %call = call noalias ptr @malloc(i64 noundef %mul) #12, !dbg !623
  store ptr %call, ptr %new_flags, align 8, !dbg !623, !tbaa !91
  %19 = load ptr, ptr %new_flags, align 8, !dbg !624, !tbaa !91
  %tobool = icmp ne ptr %19, null, !dbg !624
  br i1 %tobool, label %if.end18, label %if.then17, !dbg !623

if.then17:                                        ; preds = %cond.end
  store i32 -1, ptr %retval, align 4, !dbg !624
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup178, !dbg !624

if.end18:                                         ; preds = %cond.end
  %20 = load ptr, ptr %new_flags, align 8, !dbg !623, !tbaa !91
  %21 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !623, !tbaa !249
  %cmp19 = icmp ult i32 %21, 16, !dbg !623
  br i1 %cmp19, label %cond.true21, label %cond.false22, !dbg !623

cond.true21:                                      ; preds = %if.end18
  br label %cond.end24, !dbg !623

cond.false22:                                     ; preds = %if.end18
  %22 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !623, !tbaa !249
  %shr23 = lshr i32 %22, 4, !dbg !623
  br label %cond.end24, !dbg !623

cond.end24:                                       ; preds = %cond.false22, %cond.true21
  %cond25 = phi i32 [ 1, %cond.true21 ], [ %shr23, %cond.false22 ], !dbg !623
  %conv26 = zext i32 %cond25 to i64, !dbg !623
  %mul27 = mul i64 %conv26, 4, !dbg !623
  call void @llvm.memset.p0.i64(ptr align 4 %20, i8 -86, i64 %mul27, i1 false), !dbg !623
  %23 = load ptr, ptr %h.addr, align 8, !dbg !626, !tbaa !91
  %n_buckets = getelementptr inbounds %struct.kh_int_uint32_t, ptr %23, i32 0, i32 0, !dbg !626
  %24 = load i32, ptr %n_buckets, align 8, !dbg !626, !tbaa !256
  %25 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !626, !tbaa !249
  %cmp28 = icmp ult i32 %24, %25, !dbg !626
  br i1 %cmp28, label %if.then30, label %if.end48, !dbg !623

if.then30:                                        ; preds = %cond.end24
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_keys) #10, !dbg !627
  tail call void @llvm.dbg.declare(metadata ptr %new_keys, metadata !588, metadata !DIExpression()), !dbg !627
  %26 = load ptr, ptr %h.addr, align 8, !dbg !627, !tbaa !91
  %keys = getelementptr inbounds %struct.kh_int_uint32_t, ptr %26, i32 0, i32 5, !dbg !627
  %27 = load ptr, ptr %keys, align 8, !dbg !627, !tbaa !311
  %28 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !627, !tbaa !249
  %conv31 = zext i32 %28 to i64, !dbg !627
  %mul32 = mul i64 %conv31, 4, !dbg !627
  %call33 = call ptr @realloc(ptr noundef %27, i64 noundef %mul32) #13, !dbg !627
  store ptr %call33, ptr %new_keys, align 8, !dbg !627, !tbaa !91
  %29 = load ptr, ptr %new_keys, align 8, !dbg !628, !tbaa !91
  %tobool34 = icmp ne ptr %29, null, !dbg !628
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !627

if.then35:                                        ; preds = %if.then30
  %30 = load ptr, ptr %new_flags, align 8, !dbg !630, !tbaa !91
  call void @free(ptr noundef %30) #10, !dbg !630
  store i32 -1, ptr %retval, align 4, !dbg !630
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !630

if.end36:                                         ; preds = %if.then30
  %31 = load ptr, ptr %new_keys, align 8, !dbg !627, !tbaa !91
  %32 = load ptr, ptr %h.addr, align 8, !dbg !627, !tbaa !91
  %keys37 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %32, i32 0, i32 5, !dbg !627
  store ptr %31, ptr %keys37, align 8, !dbg !627, !tbaa !311
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_vals) #10, !dbg !632
  tail call void @llvm.dbg.declare(metadata ptr %new_vals, metadata !594, metadata !DIExpression()), !dbg !632
  %33 = load ptr, ptr %h.addr, align 8, !dbg !632, !tbaa !91
  %vals = getelementptr inbounds %struct.kh_int_uint32_t, ptr %33, i32 0, i32 6, !dbg !632
  %34 = load ptr, ptr %vals, align 8, !dbg !632, !tbaa !274
  %35 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !632, !tbaa !249
  %conv38 = zext i32 %35 to i64, !dbg !632
  %mul39 = mul i64 %conv38, 4, !dbg !632
  %call40 = call ptr @realloc(ptr noundef %34, i64 noundef %mul39) #13, !dbg !632
  store ptr %call40, ptr %new_vals, align 8, !dbg !632, !tbaa !91
  %36 = load ptr, ptr %new_vals, align 8, !dbg !633, !tbaa !91
  %tobool41 = icmp ne ptr %36, null, !dbg !633
  br i1 %tobool41, label %if.end43, label %if.then42, !dbg !632

if.then42:                                        ; preds = %if.end36
  %37 = load ptr, ptr %new_flags, align 8, !dbg !635, !tbaa !91
  call void @free(ptr noundef %37) #10, !dbg !635
  store i32 -1, ptr %retval, align 4, !dbg !635
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !635

if.end43:                                         ; preds = %if.end36
  %38 = load ptr, ptr %new_vals, align 8, !dbg !632, !tbaa !91
  %39 = load ptr, ptr %h.addr, align 8, !dbg !632, !tbaa !91
  %vals44 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %39, i32 0, i32 6, !dbg !632
  store ptr %38, ptr %vals44, align 8, !dbg !632, !tbaa !274
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !637
  br label %cleanup, !dbg !637

cleanup:                                          ; preds = %if.end43, %if.then42
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_vals) #10, !dbg !637
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup45 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !626
  br label %cleanup45, !dbg !626

cleanup45:                                        ; preds = %cleanup.cont, %cleanup, %if.then35
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_keys) #10, !dbg !626
  %cleanup.dest46 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest46, label %cleanup178 [
    i32 0, label %cleanup.cont47
  ]

cleanup.cont47:                                   ; preds = %cleanup45
  br label %if.end48, !dbg !627

if.end48:                                         ; preds = %cleanup.cont47, %cond.end24
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then12
  %40 = load i32, ptr %j, align 4, !dbg !638, !tbaa !249
  %tobool50 = icmp ne i32 %40, 0, !dbg !638
  br i1 %tobool50, label %if.then51, label %if.end177, !dbg !618

if.then51:                                        ; preds = %if.end49
  store i32 0, ptr %j, align 4, !dbg !639, !tbaa !249
  br label %for.cond, !dbg !639

for.cond:                                         ; preds = %for.inc, %if.then51
  %41 = load i32, ptr %j, align 4, !dbg !640, !tbaa !249
  %42 = load ptr, ptr %h.addr, align 8, !dbg !640, !tbaa !91
  %n_buckets52 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %42, i32 0, i32 0, !dbg !640
  %43 = load i32, ptr %n_buckets52, align 8, !dbg !640, !tbaa !256
  %cmp53 = icmp ne i32 %41, %43, !dbg !640
  br i1 %cmp53, label %for.body, label %for.end, !dbg !639

for.body:                                         ; preds = %for.cond
  %44 = load ptr, ptr %h.addr, align 8, !dbg !641, !tbaa !91
  %flags = getelementptr inbounds %struct.kh_int_uint32_t, ptr %44, i32 0, i32 4, !dbg !641
  %45 = load ptr, ptr %flags, align 8, !dbg !641, !tbaa !309
  %46 = load i32, ptr %j, align 4, !dbg !641, !tbaa !249
  %shr55 = lshr i32 %46, 4, !dbg !641
  %idxprom = zext i32 %shr55 to i64, !dbg !641
  %arrayidx = getelementptr inbounds i32, ptr %45, i64 %idxprom, !dbg !641
  %47 = load i32, ptr %arrayidx, align 4, !dbg !641, !tbaa !249
  %48 = load i32, ptr %j, align 4, !dbg !641, !tbaa !249
  %and = and i32 %48, 15, !dbg !641
  %shl = shl i32 %and, 1, !dbg !641
  %shr56 = lshr i32 %47, %shl, !dbg !641
  %and57 = and i32 %shr56, 3, !dbg !641
  %cmp58 = icmp eq i32 %and57, 0, !dbg !641
  br i1 %cmp58, label %if.then60, label %if.end152, !dbg !642

if.then60:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %key) #10, !dbg !643
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !597, metadata !DIExpression()), !dbg !643
  %49 = load ptr, ptr %h.addr, align 8, !dbg !643, !tbaa !91
  %keys61 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %49, i32 0, i32 5, !dbg !643
  %50 = load ptr, ptr %keys61, align 8, !dbg !643, !tbaa !311
  %51 = load i32, ptr %j, align 4, !dbg !643, !tbaa !249
  %idxprom62 = zext i32 %51 to i64, !dbg !643
  %arrayidx63 = getelementptr inbounds i32, ptr %50, i64 %idxprom62, !dbg !643
  %52 = load i32, ptr %arrayidx63, align 4, !dbg !643, !tbaa !249
  store i32 %52, ptr %key, align 4, !dbg !643, !tbaa !249
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #10, !dbg !643
  tail call void @llvm.dbg.declare(metadata ptr %val, metadata !605, metadata !DIExpression()), !dbg !643
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_mask) #10, !dbg !643
  tail call void @llvm.dbg.declare(metadata ptr %new_mask, metadata !606, metadata !DIExpression()), !dbg !643
  %53 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !643, !tbaa !249
  %sub = sub i32 %53, 1, !dbg !643
  store i32 %sub, ptr %new_mask, align 4, !dbg !643, !tbaa !249
  %54 = load ptr, ptr %h.addr, align 8, !dbg !644, !tbaa !91
  %vals64 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %54, i32 0, i32 6, !dbg !644
  %55 = load ptr, ptr %vals64, align 8, !dbg !644, !tbaa !274
  %56 = load i32, ptr %j, align 4, !dbg !644, !tbaa !249
  %idxprom65 = zext i32 %56 to i64, !dbg !644
  %arrayidx66 = getelementptr inbounds i32, ptr %55, i64 %idxprom65, !dbg !644
  %57 = load i32, ptr %arrayidx66, align 4, !dbg !644, !tbaa !249
  store i32 %57, ptr %val, align 4, !dbg !644, !tbaa !249
  %58 = load i32, ptr %j, align 4, !dbg !643, !tbaa !249
  %and67 = and i32 %58, 15, !dbg !643
  %shl68 = shl i32 %and67, 1, !dbg !643
  %sh_prom = zext i32 %shl68 to i64, !dbg !643
  %shl69 = shl i64 1, %sh_prom, !dbg !643
  %59 = load ptr, ptr %h.addr, align 8, !dbg !643, !tbaa !91
  %flags70 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %59, i32 0, i32 4, !dbg !643
  %60 = load ptr, ptr %flags70, align 8, !dbg !643, !tbaa !309
  %61 = load i32, ptr %j, align 4, !dbg !643, !tbaa !249
  %shr71 = lshr i32 %61, 4, !dbg !643
  %idxprom72 = zext i32 %shr71 to i64, !dbg !643
  %arrayidx73 = getelementptr inbounds i32, ptr %60, i64 %idxprom72, !dbg !643
  %62 = load i32, ptr %arrayidx73, align 4, !dbg !643, !tbaa !249
  %conv74 = zext i32 %62 to i64, !dbg !643
  %or75 = or i64 %conv74, %shl69, !dbg !643
  %conv76 = trunc i64 %or75 to i32, !dbg !643
  store i32 %conv76, ptr %arrayidx73, align 4, !dbg !643, !tbaa !249
  br label %while.cond, !dbg !643

while.cond:                                       ; preds = %cleanup.cont150, %if.then60
  br label %while.body, !dbg !643

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #10, !dbg !646
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !607, metadata !DIExpression()), !dbg !646
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !646
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !609, metadata !DIExpression()), !dbg !646
  call void @llvm.lifetime.start.p0(i64 4, ptr %step) #10, !dbg !646
  tail call void @llvm.dbg.declare(metadata ptr %step, metadata !610, metadata !DIExpression()), !dbg !646
  store i32 0, ptr %step, align 4, !dbg !646, !tbaa !249
  %63 = load i32, ptr %key, align 4, !dbg !646, !tbaa !249
  store i32 %63, ptr %k, align 4, !dbg !646, !tbaa !249
  %64 = load i32, ptr %k, align 4, !dbg !646, !tbaa !249
  %65 = load i32, ptr %new_mask, align 4, !dbg !646, !tbaa !249
  %and77 = and i32 %64, %65, !dbg !646
  store i32 %and77, ptr %i, align 4, !dbg !646, !tbaa !249
  br label %while.cond78, !dbg !646

while.cond78:                                     ; preds = %while.body87, %while.body
  %66 = load ptr, ptr %new_flags, align 8, !dbg !646, !tbaa !91
  %67 = load i32, ptr %i, align 4, !dbg !646, !tbaa !249
  %shr79 = lshr i32 %67, 4, !dbg !646
  %idxprom80 = zext i32 %shr79 to i64, !dbg !646
  %arrayidx81 = getelementptr inbounds i32, ptr %66, i64 %idxprom80, !dbg !646
  %68 = load i32, ptr %arrayidx81, align 4, !dbg !646, !tbaa !249
  %69 = load i32, ptr %i, align 4, !dbg !646, !tbaa !249
  %and82 = and i32 %69, 15, !dbg !646
  %shl83 = shl i32 %and82, 1, !dbg !646
  %shr84 = lshr i32 %68, %shl83, !dbg !646
  %and85 = and i32 %shr84, 2, !dbg !646
  %tobool86 = icmp ne i32 %and85, 0, !dbg !646
  %lnot = xor i1 %tobool86, true, !dbg !646
  br i1 %lnot, label %while.body87, label %while.end, !dbg !646

while.body87:                                     ; preds = %while.cond78
  %70 = load i32, ptr %i, align 4, !dbg !646, !tbaa !249
  %71 = load i32, ptr %step, align 4, !dbg !646, !tbaa !249
  %inc88 = add i32 %71, 1, !dbg !646
  store i32 %inc88, ptr %step, align 4, !dbg !646, !tbaa !249
  %add = add i32 %70, %inc88, !dbg !646
  %72 = load i32, ptr %new_mask, align 4, !dbg !646, !tbaa !249
  %and89 = and i32 %add, %72, !dbg !646
  store i32 %and89, ptr %i, align 4, !dbg !646, !tbaa !249
  br label %while.cond78, !dbg !646, !llvm.loop !647

while.end:                                        ; preds = %while.cond78
  %73 = load i32, ptr %i, align 4, !dbg !646, !tbaa !249
  %and90 = and i32 %73, 15, !dbg !646
  %shl91 = shl i32 %and90, 1, !dbg !646
  %sh_prom92 = zext i32 %shl91 to i64, !dbg !646
  %shl93 = shl i64 2, %sh_prom92, !dbg !646
  %not = xor i64 %shl93, -1, !dbg !646
  %74 = load ptr, ptr %new_flags, align 8, !dbg !646, !tbaa !91
  %75 = load i32, ptr %i, align 4, !dbg !646, !tbaa !249
  %shr94 = lshr i32 %75, 4, !dbg !646
  %idxprom95 = zext i32 %shr94 to i64, !dbg !646
  %arrayidx96 = getelementptr inbounds i32, ptr %74, i64 %idxprom95, !dbg !646
  %76 = load i32, ptr %arrayidx96, align 4, !dbg !646, !tbaa !249
  %conv97 = zext i32 %76 to i64, !dbg !646
  %and98 = and i64 %conv97, %not, !dbg !646
  %conv99 = trunc i64 %and98 to i32, !dbg !646
  store i32 %conv99, ptr %arrayidx96, align 4, !dbg !646, !tbaa !249
  %77 = load i32, ptr %i, align 4, !dbg !648, !tbaa !249
  %78 = load ptr, ptr %h.addr, align 8, !dbg !648, !tbaa !91
  %n_buckets100 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %78, i32 0, i32 0, !dbg !648
  %79 = load i32, ptr %n_buckets100, align 8, !dbg !648, !tbaa !256
  %cmp101 = icmp ult i32 %77, %79, !dbg !648
  br i1 %cmp101, label %land.lhs.true, label %if.else138, !dbg !648

land.lhs.true:                                    ; preds = %while.end
  %80 = load ptr, ptr %h.addr, align 8, !dbg !648, !tbaa !91
  %flags103 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %80, i32 0, i32 4, !dbg !648
  %81 = load ptr, ptr %flags103, align 8, !dbg !648, !tbaa !309
  %82 = load i32, ptr %i, align 4, !dbg !648, !tbaa !249
  %shr104 = lshr i32 %82, 4, !dbg !648
  %idxprom105 = zext i32 %shr104 to i64, !dbg !648
  %arrayidx106 = getelementptr inbounds i32, ptr %81, i64 %idxprom105, !dbg !648
  %83 = load i32, ptr %arrayidx106, align 4, !dbg !648, !tbaa !249
  %84 = load i32, ptr %i, align 4, !dbg !648, !tbaa !249
  %and107 = and i32 %84, 15, !dbg !648
  %shl108 = shl i32 %and107, 1, !dbg !648
  %shr109 = lshr i32 %83, %shl108, !dbg !648
  %and110 = and i32 %shr109, 3, !dbg !648
  %cmp111 = icmp eq i32 %and110, 0, !dbg !648
  br i1 %cmp111, label %if.then113, label %if.else138, !dbg !646

if.then113:                                       ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #10, !dbg !649
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !611, metadata !DIExpression()), !dbg !649
  %85 = load ptr, ptr %h.addr, align 8, !dbg !649, !tbaa !91
  %keys114 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %85, i32 0, i32 5, !dbg !649
  %86 = load ptr, ptr %keys114, align 8, !dbg !649, !tbaa !311
  %87 = load i32, ptr %i, align 4, !dbg !649, !tbaa !249
  %idxprom115 = zext i32 %87 to i64, !dbg !649
  %arrayidx116 = getelementptr inbounds i32, ptr %86, i64 %idxprom115, !dbg !649
  %88 = load i32, ptr %arrayidx116, align 4, !dbg !649, !tbaa !249
  store i32 %88, ptr %tmp, align 4, !dbg !649, !tbaa !249
  %89 = load i32, ptr %key, align 4, !dbg !649, !tbaa !249
  %90 = load ptr, ptr %h.addr, align 8, !dbg !649, !tbaa !91
  %keys117 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %90, i32 0, i32 5, !dbg !649
  %91 = load ptr, ptr %keys117, align 8, !dbg !649, !tbaa !311
  %92 = load i32, ptr %i, align 4, !dbg !649, !tbaa !249
  %idxprom118 = zext i32 %92 to i64, !dbg !649
  %arrayidx119 = getelementptr inbounds i32, ptr %91, i64 %idxprom118, !dbg !649
  store i32 %89, ptr %arrayidx119, align 4, !dbg !649, !tbaa !249
  %93 = load i32, ptr %tmp, align 4, !dbg !649, !tbaa !249
  store i32 %93, ptr %key, align 4, !dbg !649, !tbaa !249
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #10, !dbg !650
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp120) #10, !dbg !651
  tail call void @llvm.dbg.declare(metadata ptr %tmp120, metadata !615, metadata !DIExpression()), !dbg !651
  %94 = load ptr, ptr %h.addr, align 8, !dbg !651, !tbaa !91
  %vals121 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %94, i32 0, i32 6, !dbg !651
  %95 = load ptr, ptr %vals121, align 8, !dbg !651, !tbaa !274
  %96 = load i32, ptr %i, align 4, !dbg !651, !tbaa !249
  %idxprom122 = zext i32 %96 to i64, !dbg !651
  %arrayidx123 = getelementptr inbounds i32, ptr %95, i64 %idxprom122, !dbg !651
  %97 = load i32, ptr %arrayidx123, align 4, !dbg !651, !tbaa !249
  store i32 %97, ptr %tmp120, align 4, !dbg !651, !tbaa !249
  %98 = load i32, ptr %val, align 4, !dbg !651, !tbaa !249
  %99 = load ptr, ptr %h.addr, align 8, !dbg !651, !tbaa !91
  %vals124 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %99, i32 0, i32 6, !dbg !651
  %100 = load ptr, ptr %vals124, align 8, !dbg !651, !tbaa !274
  %101 = load i32, ptr %i, align 4, !dbg !651, !tbaa !249
  %idxprom125 = zext i32 %101 to i64, !dbg !651
  %arrayidx126 = getelementptr inbounds i32, ptr %100, i64 %idxprom125, !dbg !651
  store i32 %98, ptr %arrayidx126, align 4, !dbg !651, !tbaa !249
  %102 = load i32, ptr %tmp120, align 4, !dbg !651, !tbaa !249
  store i32 %102, ptr %val, align 4, !dbg !651, !tbaa !249
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp120) #10, !dbg !652
  %103 = load i32, ptr %i, align 4, !dbg !650, !tbaa !249
  %and127 = and i32 %103, 15, !dbg !650
  %shl128 = shl i32 %and127, 1, !dbg !650
  %sh_prom129 = zext i32 %shl128 to i64, !dbg !650
  %shl130 = shl i64 1, %sh_prom129, !dbg !650
  %104 = load ptr, ptr %h.addr, align 8, !dbg !650, !tbaa !91
  %flags131 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %104, i32 0, i32 4, !dbg !650
  %105 = load ptr, ptr %flags131, align 8, !dbg !650, !tbaa !309
  %106 = load i32, ptr %i, align 4, !dbg !650, !tbaa !249
  %shr132 = lshr i32 %106, 4, !dbg !650
  %idxprom133 = zext i32 %shr132 to i64, !dbg !650
  %arrayidx134 = getelementptr inbounds i32, ptr %105, i64 %idxprom133, !dbg !650
  %107 = load i32, ptr %arrayidx134, align 4, !dbg !650, !tbaa !249
  %conv135 = zext i32 %107 to i64, !dbg !650
  %or136 = or i64 %conv135, %shl130, !dbg !650
  %conv137 = trunc i64 %or136 to i32, !dbg !650
  store i32 %conv137, ptr %arrayidx134, align 4, !dbg !650, !tbaa !249
  br label %if.end145, !dbg !650

if.else138:                                       ; preds = %land.lhs.true, %while.end
  %108 = load i32, ptr %key, align 4, !dbg !653, !tbaa !249
  %109 = load ptr, ptr %h.addr, align 8, !dbg !653, !tbaa !91
  %keys139 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %109, i32 0, i32 5, !dbg !653
  %110 = load ptr, ptr %keys139, align 8, !dbg !653, !tbaa !311
  %111 = load i32, ptr %i, align 4, !dbg !653, !tbaa !249
  %idxprom140 = zext i32 %111 to i64, !dbg !653
  %arrayidx141 = getelementptr inbounds i32, ptr %110, i64 %idxprom140, !dbg !653
  store i32 %108, ptr %arrayidx141, align 4, !dbg !653, !tbaa !249
  %112 = load i32, ptr %val, align 4, !dbg !655, !tbaa !249
  %113 = load ptr, ptr %h.addr, align 8, !dbg !655, !tbaa !91
  %vals142 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %113, i32 0, i32 6, !dbg !655
  %114 = load ptr, ptr %vals142, align 8, !dbg !655, !tbaa !274
  %115 = load i32, ptr %i, align 4, !dbg !655, !tbaa !249
  %idxprom143 = zext i32 %115 to i64, !dbg !655
  %arrayidx144 = getelementptr inbounds i32, ptr %114, i64 %idxprom143, !dbg !655
  store i32 %112, ptr %arrayidx144, align 4, !dbg !655, !tbaa !249
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup146, !dbg !653

if.end145:                                        ; preds = %if.then113
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !643
  br label %cleanup146, !dbg !643

cleanup146:                                       ; preds = %if.end145, %if.else138
  call void @llvm.lifetime.end.p0(i64 4, ptr %step) #10, !dbg !643
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !643
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #10, !dbg !643
  %cleanup.dest149 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest149, label %unreachable [
    i32 0, label %cleanup.cont150
    i32 6, label %while.end151
  ]

cleanup.cont150:                                  ; preds = %cleanup146
  br label %while.cond, !dbg !643, !llvm.loop !657

while.end151:                                     ; preds = %cleanup146
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_mask) #10, !dbg !641
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #10, !dbg !641
  call void @llvm.lifetime.end.p0(i64 4, ptr %key) #10, !dbg !641
  br label %if.end152, !dbg !643

if.end152:                                        ; preds = %while.end151, %for.body
  br label %for.inc, !dbg !642

for.inc:                                          ; preds = %if.end152
  %116 = load i32, ptr %j, align 4, !dbg !640, !tbaa !249
  %inc153 = add i32 %116, 1, !dbg !640
  store i32 %inc153, ptr %j, align 4, !dbg !640, !tbaa !249
  br label %for.cond, !dbg !640, !llvm.loop !658

for.end:                                          ; preds = %for.cond
  %117 = load ptr, ptr %h.addr, align 8, !dbg !659, !tbaa !91
  %n_buckets154 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %117, i32 0, i32 0, !dbg !659
  %118 = load i32, ptr %n_buckets154, align 8, !dbg !659, !tbaa !256
  %119 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !659, !tbaa !249
  %cmp155 = icmp ugt i32 %118, %119, !dbg !659
  br i1 %cmp155, label %if.then157, label %if.end168, !dbg !661

if.then157:                                       ; preds = %for.end
  %120 = load ptr, ptr %h.addr, align 8, !dbg !662, !tbaa !91
  %keys158 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %120, i32 0, i32 5, !dbg !662
  %121 = load ptr, ptr %keys158, align 8, !dbg !662, !tbaa !311
  %122 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !662, !tbaa !249
  %conv159 = zext i32 %122 to i64, !dbg !662
  %mul160 = mul i64 %conv159, 4, !dbg !662
  %call161 = call ptr @realloc(ptr noundef %121, i64 noundef %mul160) #13, !dbg !662
  %123 = load ptr, ptr %h.addr, align 8, !dbg !662, !tbaa !91
  %keys162 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %123, i32 0, i32 5, !dbg !662
  store ptr %call161, ptr %keys162, align 8, !dbg !662, !tbaa !311
  %124 = load ptr, ptr %h.addr, align 8, !dbg !664, !tbaa !91
  %vals163 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %124, i32 0, i32 6, !dbg !664
  %125 = load ptr, ptr %vals163, align 8, !dbg !664, !tbaa !274
  %126 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !664, !tbaa !249
  %conv164 = zext i32 %126 to i64, !dbg !664
  %mul165 = mul i64 %conv164, 4, !dbg !664
  %call166 = call ptr @realloc(ptr noundef %125, i64 noundef %mul165) #13, !dbg !664
  %127 = load ptr, ptr %h.addr, align 8, !dbg !664, !tbaa !91
  %vals167 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %127, i32 0, i32 6, !dbg !664
  store ptr %call166, ptr %vals167, align 8, !dbg !664, !tbaa !274
  br label %if.end168, !dbg !662

if.end168:                                        ; preds = %if.then157, %for.end
  %128 = load ptr, ptr %h.addr, align 8, !dbg !661, !tbaa !91
  %flags169 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %128, i32 0, i32 4, !dbg !661
  %129 = load ptr, ptr %flags169, align 8, !dbg !661, !tbaa !309
  call void @free(ptr noundef %129) #10, !dbg !661
  %130 = load ptr, ptr %new_flags, align 8, !dbg !661, !tbaa !91
  %131 = load ptr, ptr %h.addr, align 8, !dbg !661, !tbaa !91
  %flags170 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %131, i32 0, i32 4, !dbg !661
  store ptr %130, ptr %flags170, align 8, !dbg !661, !tbaa !309
  %132 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !661, !tbaa !249
  %133 = load ptr, ptr %h.addr, align 8, !dbg !661, !tbaa !91
  %n_buckets171 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %133, i32 0, i32 0, !dbg !661
  store i32 %132, ptr %n_buckets171, align 8, !dbg !661, !tbaa !256
  %134 = load ptr, ptr %h.addr, align 8, !dbg !661, !tbaa !91
  %size172 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %134, i32 0, i32 1, !dbg !661
  %135 = load i32, ptr %size172, align 4, !dbg !661, !tbaa !263
  %136 = load ptr, ptr %h.addr, align 8, !dbg !661, !tbaa !91
  %n_occupied = getelementptr inbounds %struct.kh_int_uint32_t, ptr %136, i32 0, i32 2, !dbg !661
  store i32 %135, ptr %n_occupied, align 8, !dbg !661, !tbaa !328
  %137 = load ptr, ptr %h.addr, align 8, !dbg !661, !tbaa !91
  %n_buckets173 = getelementptr inbounds %struct.kh_int_uint32_t, ptr %137, i32 0, i32 0, !dbg !661
  %138 = load i32, ptr %n_buckets173, align 8, !dbg !661, !tbaa !256
  %conv174 = uitofp i32 %138 to double, !dbg !661
  %139 = call double @llvm.fmuladd.f64(double %conv174, double 7.700000e-01, double 5.000000e-01), !dbg !661
  %conv176 = fptoui double %139 to i32, !dbg !661
  %140 = load ptr, ptr %h.addr, align 8, !dbg !661, !tbaa !91
  %upper_bound = getelementptr inbounds %struct.kh_int_uint32_t, ptr %140, i32 0, i32 3, !dbg !661
  store i32 %conv176, ptr %upper_bound, align 4, !dbg !661, !tbaa !372
  br label %if.end177, !dbg !661

if.end177:                                        ; preds = %if.end168, %if.end49
  store i32 0, ptr %retval, align 4, !dbg !618
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup178, !dbg !618

cleanup178:                                       ; preds = %if.end177, %cleanup45, %if.then17
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10, !dbg !618
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_flags) #10, !dbg !618
  %141 = load i32, ptr %retval, align 4, !dbg !618
  ret i32 %141, !dbg !618

unreachable:                                      ; preds = %cleanup146
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nounwind allocsize(0)
declare !dbg !666 noalias ptr @malloc(i64 noundef) #6

; Function Attrs: nounwind allocsize(1)
declare !dbg !670 ptr @realloc(ptr noundef, i64 noundef) #7

; Function Attrs: nounwind
declare !dbg !673 void @free(ptr noundef) #8

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @uint32_array_resize(ptr noundef %array, i64 noundef %size) #3 !dbg !676 {
entry:
  %retval = alloca i1, align 1
  %array.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %ptr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8, !tbaa !91
  tail call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !678, metadata !DIExpression()), !dbg !681
  store i64 %size, ptr %size.addr, align 8, !tbaa !109
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !679, metadata !DIExpression()), !dbg !681
  %0 = load i64, ptr %size.addr, align 8, !dbg !682, !tbaa !109
  %1 = load ptr, ptr %array.addr, align 8, !dbg !682, !tbaa !91
  %m = getelementptr inbounds %struct.uint32_array, ptr %1, i32 0, i32 1, !dbg !682
  %2 = load i64, ptr %m, align 8, !dbg !682, !tbaa !105
  %cmp = icmp ule i64 %0, %2, !dbg !682
  br i1 %cmp, label %if.then, label %if.end, !dbg !681

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !682
  br label %return, !dbg !682

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #10, !dbg !681
  tail call void @llvm.dbg.declare(metadata ptr %ptr, metadata !680, metadata !DIExpression()), !dbg !681
  %3 = load ptr, ptr %array.addr, align 8, !dbg !681, !tbaa !91
  %a = getelementptr inbounds %struct.uint32_array, ptr %3, i32 0, i32 2, !dbg !681
  %4 = load ptr, ptr %a, align 8, !dbg !681, !tbaa !169
  %5 = load i64, ptr %size.addr, align 8, !dbg !681, !tbaa !109
  %mul = mul i64 4, %5, !dbg !681
  %call = call ptr @realloc(ptr noundef %4, i64 noundef %mul) #13, !dbg !681
  store ptr %call, ptr %ptr, align 8, !dbg !681, !tbaa !91
  %6 = load ptr, ptr %ptr, align 8, !dbg !684, !tbaa !91
  %cmp1 = icmp eq ptr %6, null, !dbg !684
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !681

if.then2:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !684
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !684

if.end3:                                          ; preds = %if.end
  %7 = load ptr, ptr %ptr, align 8, !dbg !681, !tbaa !91
  %8 = load ptr, ptr %array.addr, align 8, !dbg !681, !tbaa !91
  %a4 = getelementptr inbounds %struct.uint32_array, ptr %8, i32 0, i32 2, !dbg !681
  store ptr %7, ptr %a4, align 8, !dbg !681, !tbaa !169
  %9 = load i64, ptr %size.addr, align 8, !dbg !681, !tbaa !109
  %10 = load ptr, ptr %array.addr, align 8, !dbg !681, !tbaa !91
  %m5 = getelementptr inbounds %struct.uint32_array, ptr %10, i32 0, i32 1, !dbg !681
  store i64 %9, ptr %m5, align 8, !dbg !681, !tbaa !105
  store i1 true, ptr %retval, align 1, !dbg !681
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !681

cleanup:                                          ; preds = %if.end3, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #10, !dbg !681
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %11 = load i1, ptr %retval, align 1, !dbg !681
  ret i1 %11, !dbg !681
}

; Function Attrs: nounwind allocsize(0,1)
declare !dbg !686 noalias ptr @calloc(i64 noundef, i64 noundef) #9

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @uint32_array_new_size(i64 noundef %size) #3 !dbg !689 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %array = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8, !tbaa !109
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !693, metadata !DIExpression()), !dbg !695
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #10, !dbg !695
  tail call void @llvm.dbg.declare(metadata ptr %array, metadata !694, metadata !DIExpression()), !dbg !695
  %call = call noalias ptr @malloc(i64 noundef 24) #12, !dbg !695
  store ptr %call, ptr %array, align 8, !dbg !695, !tbaa !91
  %0 = load ptr, ptr %array, align 8, !dbg !696, !tbaa !91
  %cmp = icmp eq ptr %0, null, !dbg !696
  br i1 %cmp, label %if.then, label %if.end, !dbg !695

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !696
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !696

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %array, align 8, !dbg !695, !tbaa !91
  %m = getelementptr inbounds %struct.uint32_array, ptr %1, i32 0, i32 1, !dbg !695
  store i64 0, ptr %m, align 8, !dbg !695, !tbaa !105
  %2 = load ptr, ptr %array, align 8, !dbg !695, !tbaa !91
  %n = getelementptr inbounds %struct.uint32_array, ptr %2, i32 0, i32 0, !dbg !695
  store i64 0, ptr %n, align 8, !dbg !695, !tbaa !100
  %3 = load i64, ptr %size.addr, align 8, !dbg !695, !tbaa !109
  %cmp1 = icmp ugt i64 %3, 0, !dbg !695
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !695

cond.true:                                        ; preds = %if.end
  %4 = load i64, ptr %size.addr, align 8, !dbg !695, !tbaa !109
  br label %cond.end, !dbg !695

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !695

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ 1, %cond.false ], !dbg !695
  %mul = mul i64 %cond, 4, !dbg !695
  %call2 = call noalias ptr @malloc(i64 noundef %mul) #12, !dbg !695
  %5 = load ptr, ptr %array, align 8, !dbg !695, !tbaa !91
  %a = getelementptr inbounds %struct.uint32_array, ptr %5, i32 0, i32 2, !dbg !695
  store ptr %call2, ptr %a, align 8, !dbg !695, !tbaa !169
  %6 = load ptr, ptr %array, align 8, !dbg !698, !tbaa !91
  %a3 = getelementptr inbounds %struct.uint32_array, ptr %6, i32 0, i32 2, !dbg !698
  %7 = load ptr, ptr %a3, align 8, !dbg !698, !tbaa !169
  %cmp4 = icmp eq ptr %7, null, !dbg !698
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !695

if.then5:                                         ; preds = %cond.end
  store ptr null, ptr %retval, align 8, !dbg !698
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !698

if.end6:                                          ; preds = %cond.end
  %8 = load i64, ptr %size.addr, align 8, !dbg !695, !tbaa !109
  %9 = load ptr, ptr %array, align 8, !dbg !695, !tbaa !91
  %m7 = getelementptr inbounds %struct.uint32_array, ptr %9, i32 0, i32 1, !dbg !695
  store i64 %8, ptr %m7, align 8, !dbg !695, !tbaa !105
  %10 = load ptr, ptr %array, align 8, !dbg !695, !tbaa !91
  store ptr %10, ptr %retval, align 8, !dbg !695
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !695

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #10, !dbg !695
  %11 = load ptr, ptr %retval, align 8, !dbg !695
  ret ptr %11, !dbg !695
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, globals: !28, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "sparse_matrix_utils.c", directory: "/local-ssd/libpostal-ynvflsfumrraceljqaz5ddb4gjwgve42-build/aidengro/spack-stage-libpostal-1.1-ynvflsfumrraceljqaz5ddb4gjwgve42/spack-src/src", checksumkind: CSK_MD5, checksum: "f72b1a242f60699f56d3a399cb0b1edb")
!2 = !{!3, !8, !10, !11, !12, !13, !14}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !4, line: 26, baseType: !5)
!4 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !6, line: 42, baseType: !7)
!6 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "khint_t", file: !9, line: 126, baseType: !10)
!9 = !DIFile(filename: "./klib/khash.h", directory: "/local-ssd/libpostal-ynvflsfumrraceljqaz5ddb4gjwgve42-build/aidengro/spack-stage-libpostal-1.1-ynvflsfumrraceljqaz5ddb4gjwgve42/spack-src/src", checksumkind: CSK_MD5, checksum: "a08c5bfc047e663a6c069980bdbb6dd8")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "khint32_t", file: !9, line: 103, baseType: !7)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_int_set_t", file: !16, line: 37, baseType: !17)
!16 = !DIFile(filename: "./collections.h", directory: "/local-ssd/libpostal-ynvflsfumrraceljqaz5ddb4gjwgve42-build/aidengro/spack-stage-libpostal-1.1-ynvflsfumrraceljqaz5ddb4gjwgve42/spack-src/src", checksumkind: CSK_MD5, checksum: "be7bcb6b300ff5896c58c67efa7d2993")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 37, size: 320, elements: !18)
!18 = !{!19, !20, !21, !22, !23, !24, !25}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !17, file: !16, line: 37, baseType: !8, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !17, file: !16, line: 37, baseType: !8, size: 32, offset: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "n_occupied", scope: !17, file: !16, line: 37, baseType: !8, size: 32, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "upper_bound", scope: !17, file: !16, line: 37, baseType: !8, size: 32, offset: 96)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !17, file: !16, line: 37, baseType: !11, size: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !17, file: !16, line: 37, baseType: !11, size: 64, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !17, file: !16, line: 37, baseType: !26, size: 64, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !{!29}
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression(DW_OP_constu, 4605110762971426980, DW_OP_stack_value))
!30 = distinct !DIGlobalVariable(name: "__ac_HASH_UPPER", scope: !0, file: !9, line: 156, type: !31, isLocal: true, isDefinition: true)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!33 = !{i32 7, !"Dwarf Version", i32 5}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 4}
!36 = !{i32 8, !"PIC Level", i32 2}
!37 = !{i32 7, !"PIE Level", i32 2}
!38 = !{i32 7, !"uwtable", i32 2}
!39 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!40 = distinct !DISubprogram(name: "sparse_matrix_new_from_matrix", scope: !1, file: !1, line: 6, type: !41, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !79)
!41 = !DISubroutineType(types: !42)
!42 = !{!43, !71}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "sparse_matrix_t", file: !45, line: 55, baseType: !46)
!45 = !DIFile(filename: "./sparse_matrix.h", directory: "/local-ssd/libpostal-ynvflsfumrraceljqaz5ddb4gjwgve42-build/aidengro/spack-stage-libpostal-1.1-ynvflsfumrraceljqaz5ddb4gjwgve42/spack-src/src", checksumkind: CSK_MD5, checksum: "8fc87a69d693f4a70dbdd81f79584fe9")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 49, size: 256, elements: !47)
!47 = !{!48, !49, !50, !61, !62}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !46, file: !45, line: 50, baseType: !3, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !46, file: !45, line: 51, baseType: !3, size: 32, offset: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "indptr", scope: !46, file: !45, line: 52, baseType: !51, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_array", file: !16, line: 44, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 44, size: 192, elements: !54)
!54 = !{!55, !59, !60}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !53, file: !16, line: 44, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !57, line: 70, baseType: !58)
!57 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!58 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !53, file: !16, line: 44, baseType: !56, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !53, file: !16, line: 44, baseType: !13, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "indices", scope: !46, file: !45, line: 53, baseType: !51, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !46, file: !45, line: 54, baseType: !63, size: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_array", file: !16, line: 48, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 48, size: 192, elements: !66)
!66 = !{!67, !68, !69}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !65, file: !16, line: 48, baseType: !56, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !65, file: !16, line: 48, baseType: !56, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !65, file: !16, line: 48, baseType: !70, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_matrix_t", file: !73, line: 445, baseType: !74)
!73 = !DIFile(filename: "./matrix.h", directory: "/local-ssd/libpostal-ynvflsfumrraceljqaz5ddb4gjwgve42-build/aidengro/spack-stage-libpostal-1.1-ynvflsfumrraceljqaz5ddb4gjwgve42/spack-src/src", checksumkind: CSK_MD5, checksum: "4542bc027f82c0fc701d31ecb50748db")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !73, line: 445, size: 192, elements: !75)
!75 = !{!76, !77, !78}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !74, file: !73, line: 445, baseType: !56, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !74, file: !73, line: 445, baseType: !56, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !74, file: !73, line: 445, baseType: !70, size: 64, offset: 128)
!79 = !{!80, !81, !82, !84, !88}
!80 = !DILocalVariable(name: "matrix", arg: 1, scope: !40, file: !1, line: 6, type: !71)
!81 = !DILocalVariable(name: "sparse", scope: !40, file: !1, line: 7, type: !43)
!82 = !DILocalVariable(name: "i", scope: !83, file: !1, line: 9, type: !56)
!83 = distinct !DILexicalBlock(scope: !40, file: !1, line: 9, column: 5)
!84 = !DILocalVariable(name: "j", scope: !85, file: !1, line: 10, type: !56)
!85 = distinct !DILexicalBlock(scope: !86, file: !1, line: 10, column: 9)
!86 = distinct !DILexicalBlock(scope: !87, file: !1, line: 9, column: 44)
!87 = distinct !DILexicalBlock(scope: !83, file: !1, line: 9, column: 5)
!88 = !DILocalVariable(name: "value", scope: !89, file: !1, line: 11, type: !32)
!89 = distinct !DILexicalBlock(scope: !90, file: !1, line: 10, column: 48)
!90 = distinct !DILexicalBlock(scope: !85, file: !1, line: 10, column: 9)
!91 = !{!92, !92, i64 0}
!92 = !{!"any pointer", !93, i64 0}
!93 = !{!"omnipotent char", !94, i64 0}
!94 = !{!"Simple C/C++ TBAA"}
!95 = !DILocation(line: 6, column: 65, scope: !40)
!96 = !DILocation(line: 7, column: 5, scope: !40)
!97 = !DILocation(line: 7, column: 22, scope: !40)
!98 = !DILocation(line: 7, column: 55, scope: !40)
!99 = !DILocation(line: 7, column: 63, scope: !40)
!100 = !{!101, !102, i64 0}
!101 = !{!"", !102, i64 0, !102, i64 8, !92, i64 16}
!102 = !{!"long", !93, i64 0}
!103 = !DILocation(line: 7, column: 66, scope: !40)
!104 = !DILocation(line: 7, column: 74, scope: !40)
!105 = !{!101, !102, i64 8}
!106 = !DILocation(line: 7, column: 31, scope: !40)
!107 = !DILocation(line: 9, column: 10, scope: !83)
!108 = !DILocation(line: 9, column: 17, scope: !83)
!109 = !{!102, !102, i64 0}
!110 = !DILocation(line: 9, column: 24, scope: !87)
!111 = !DILocation(line: 9, column: 28, scope: !87)
!112 = !DILocation(line: 9, column: 36, scope: !87)
!113 = !DILocation(line: 9, column: 26, scope: !87)
!114 = !DILocation(line: 9, column: 5, scope: !83)
!115 = !DILocation(line: 9, column: 5, scope: !87)
!116 = !DILocation(line: 10, column: 14, scope: !85)
!117 = !DILocation(line: 10, column: 21, scope: !85)
!118 = !DILocation(line: 10, column: 28, scope: !90)
!119 = !DILocation(line: 10, column: 32, scope: !90)
!120 = !DILocation(line: 10, column: 40, scope: !90)
!121 = !DILocation(line: 10, column: 30, scope: !90)
!122 = !DILocation(line: 10, column: 9, scope: !85)
!123 = !DILocation(line: 10, column: 9, scope: !90)
!124 = !DILocation(line: 11, column: 13, scope: !89)
!125 = !DILocation(line: 11, column: 20, scope: !89)
!126 = !DILocation(line: 11, column: 46, scope: !89)
!127 = !DILocation(line: 11, column: 54, scope: !89)
!128 = !DILocation(line: 11, column: 57, scope: !89)
!129 = !DILocation(line: 11, column: 28, scope: !89)
!130 = !{!131, !131, i64 0}
!131 = !{!"double", !93, i64 0}
!132 = !DILocation(line: 12, column: 32, scope: !133)
!133 = distinct !DILexicalBlock(scope: !89, file: !1, line: 12, column: 17)
!134 = !DILocation(line: 12, column: 18, scope: !133)
!135 = !DILocation(line: 12, column: 17, scope: !89)
!136 = !DILocation(line: 13, column: 38, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !1, line: 12, column: 45)
!138 = !DILocation(line: 13, column: 46, scope: !137)
!139 = !DILocation(line: 13, column: 49, scope: !137)
!140 = !DILocation(line: 13, column: 17, scope: !137)
!141 = !DILocation(line: 14, column: 13, scope: !137)
!142 = !DILocation(line: 15, column: 9, scope: !90)
!143 = !DILocation(line: 15, column: 9, scope: !89)
!144 = !DILocation(line: 10, column: 44, scope: !90)
!145 = distinct !{!145, !122, !146, !147}
!146 = !DILocation(line: 15, column: 9, scope: !85)
!147 = !{!"llvm.loop.mustprogress"}
!148 = !DILocation(line: 16, column: 36, scope: !86)
!149 = !DILocation(line: 16, column: 9, scope: !86)
!150 = !DILocation(line: 17, column: 5, scope: !86)
!151 = !DILocation(line: 9, column: 40, scope: !87)
!152 = distinct !{!152, !114, !153, !147}
!153 = !DILocation(line: 17, column: 5, scope: !83)
!154 = !DILocation(line: 18, column: 12, scope: !40)
!155 = !DILocation(line: 19, column: 1, scope: !40)
!156 = !DILocation(line: 18, column: 5, scope: !40)
!157 = !DISubprogram(name: "sparse_matrix_new_shape", scope: !45, file: !45, line: 59, type: !158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!158 = !DISubroutineType(types: !159)
!159 = !{!43, !56, !56}
!160 = distinct !DISubprogram(name: "double_matrix_get", scope: !73, file: !73, line: 445, type: !161, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !163)
!161 = !DISubroutineType(types: !162)
!162 = !{!32, !71, !56, !56}
!163 = !{!164, !165, !166, !167}
!164 = !DILocalVariable(name: "self", arg: 1, scope: !160, file: !73, line: 445, type: !71)
!165 = !DILocalVariable(name: "row_index", arg: 2, scope: !160, file: !73, line: 445, type: !56)
!166 = !DILocalVariable(name: "col_index", arg: 3, scope: !160, file: !73, line: 445, type: !56)
!167 = !DILocalVariable(name: "index", scope: !160, file: !73, line: 445, type: !56)
!168 = !DILocation(line: 445, column: 1, scope: !160)
!169 = !{!101, !92, i64 16}
!170 = !DISubprogram(name: "double_equals", scope: !171, file: !171, line: 13, type: !172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!171 = !DIFile(filename: "./float_utils.h", directory: "/local-ssd/libpostal-ynvflsfumrraceljqaz5ddb4gjwgve42-build/aidengro/spack-stage-libpostal-1.1-ynvflsfumrraceljqaz5ddb4gjwgve42/spack-src/src", checksumkind: CSK_MD5, checksum: "1ebd4673f25917332dff04f6c1540126")
!172 = !DISubroutineType(types: !173)
!173 = !{!174, !32, !32}
!174 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!175 = !DISubprogram(name: "sparse_matrix_append", scope: !45, file: !45, line: 64, type: !176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !43, !3, !32}
!178 = !DISubprogram(name: "sparse_matrix_finalize_row", scope: !45, file: !45, line: 67, type: !179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !43}
!181 = distinct !DISubprogram(name: "sparse_matrix_add_unique_columns", scope: !1, file: !1, line: 22, type: !182, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !195)
!182 = !DISubroutineType(types: !183)
!183 = !{!174, !43, !184, !51}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_int_uint32_t", file: !16, line: 20, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 20, size: 320, elements: !187)
!187 = !{!188, !189, !190, !191, !192, !193, !194}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !186, file: !16, line: 20, baseType: !8, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !186, file: !16, line: 20, baseType: !8, size: 32, offset: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "n_occupied", scope: !186, file: !16, line: 20, baseType: !8, size: 32, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "upper_bound", scope: !186, file: !16, line: 20, baseType: !8, size: 32, offset: 96)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !186, file: !16, line: 20, baseType: !11, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !186, file: !16, line: 20, baseType: !11, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !186, file: !16, line: 20, baseType: !13, size: 64, offset: 256)
!195 = !{!196, !197, !198, !199, !200, !201, !202, !204, !208, !210, !213, !214, !215, !216}
!196 = !DILocalVariable(name: "matrix", arg: 1, scope: !181, file: !1, line: 22, type: !43)
!197 = !DILocalVariable(name: "unique_columns", arg: 2, scope: !181, file: !1, line: 22, type: !184)
!198 = !DILocalVariable(name: "array", arg: 3, scope: !181, file: !1, line: 22, type: !51)
!199 = !DILocalVariable(name: "n", scope: !181, file: !1, line: 23, type: !56)
!200 = !DILocalVariable(name: "indices", scope: !181, file: !1, line: 24, type: !13)
!201 = !DILocalVariable(name: "i", scope: !181, file: !1, line: 28, type: !56)
!202 = !DILocalVariable(name: "k", scope: !181, file: !1, line: 29, type: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "khiter_t", file: !9, line: 127, baseType: !8)
!204 = !DILocalVariable(name: "col", scope: !205, file: !1, line: 32, type: !3)
!205 = distinct !DILexicalBlock(scope: !206, file: !1, line: 31, column: 29)
!206 = distinct !DILexicalBlock(scope: !207, file: !1, line: 31, column: 5)
!207 = distinct !DILexicalBlock(scope: !181, file: !1, line: 31, column: 5)
!208 = !DILocalVariable(name: "ret", scope: !205, file: !1, line: 34, type: !209)
!209 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!210 = !DILocalVariable(name: "next_id", scope: !211, file: !1, line: 37, type: !3)
!211 = distinct !DILexicalBlock(scope: !212, file: !1, line: 36, column: 42)
!212 = distinct !DILexicalBlock(scope: !205, file: !1, line: 36, column: 13)
!213 = !DILocalVariable(name: "key", scope: !181, file: !1, line: 53, type: !8)
!214 = !DILocalVariable(name: "batch", scope: !181, file: !1, line: 55, type: !13)
!215 = !DILocalVariable(name: "col_id", scope: !181, file: !1, line: 56, type: !3)
!216 = !DILocalVariable(name: "__i", scope: !217, file: !1, line: 58, type: !8)
!217 = distinct !DILexicalBlock(scope: !181, file: !1, line: 58, column: 5)
!218 = !DILocation(line: 22, column: 56, scope: !181)
!219 = !DILocation(line: 22, column: 85, scope: !181)
!220 = !DILocation(line: 22, column: 115, scope: !181)
!221 = !DILocation(line: 23, column: 5, scope: !181)
!222 = !DILocation(line: 23, column: 12, scope: !181)
!223 = !DILocation(line: 23, column: 16, scope: !181)
!224 = !DILocation(line: 23, column: 24, scope: !181)
!225 = !{!226, !92, i64 16}
!226 = !{!"", !227, i64 0, !227, i64 4, !92, i64 8, !92, i64 16, !92, i64 24}
!227 = !{!"int", !93, i64 0}
!228 = !DILocation(line: 23, column: 33, scope: !181)
!229 = !DILocation(line: 24, column: 5, scope: !181)
!230 = !DILocation(line: 24, column: 15, scope: !181)
!231 = !DILocation(line: 24, column: 25, scope: !181)
!232 = !DILocation(line: 24, column: 33, scope: !181)
!233 = !DILocation(line: 24, column: 42, scope: !181)
!234 = !DILocation(line: 26, column: 5, scope: !181)
!235 = !DILocation(line: 28, column: 5, scope: !181)
!236 = !DILocation(line: 28, column: 12, scope: !181)
!237 = !DILocation(line: 29, column: 5, scope: !181)
!238 = !DILocation(line: 29, column: 14, scope: !181)
!239 = !DILocation(line: 31, column: 12, scope: !207)
!240 = !DILocation(line: 31, column: 10, scope: !207)
!241 = !DILocation(line: 31, column: 17, scope: !206)
!242 = !DILocation(line: 31, column: 21, scope: !206)
!243 = !DILocation(line: 31, column: 19, scope: !206)
!244 = !DILocation(line: 31, column: 5, scope: !207)
!245 = !DILocation(line: 32, column: 9, scope: !205)
!246 = !DILocation(line: 32, column: 18, scope: !205)
!247 = !DILocation(line: 32, column: 24, scope: !205)
!248 = !DILocation(line: 32, column: 32, scope: !205)
!249 = !{!227, !227, i64 0}
!250 = !DILocation(line: 34, column: 9, scope: !205)
!251 = !DILocation(line: 34, column: 13, scope: !205)
!252 = !DILocation(line: 35, column: 13, scope: !205)
!253 = !DILocation(line: 35, column: 11, scope: !205)
!254 = !DILocation(line: 36, column: 13, scope: !212)
!255 = !DILocation(line: 36, column: 18, scope: !212)
!256 = !{!257, !227, i64 0}
!257 = !{!"", !227, i64 0, !227, i64 4, !227, i64 8, !227, i64 12, !92, i64 16, !92, i64 24, !92, i64 32}
!258 = !DILocation(line: 36, column: 15, scope: !212)
!259 = !DILocation(line: 36, column: 13, scope: !205)
!260 = !DILocation(line: 37, column: 13, scope: !211)
!261 = !DILocation(line: 37, column: 22, scope: !211)
!262 = !DILocation(line: 37, column: 42, scope: !211)
!263 = !{!257, !227, i64 4}
!264 = !DILocation(line: 39, column: 17, scope: !211)
!265 = !DILocation(line: 39, column: 15, scope: !211)
!266 = !DILocation(line: 40, column: 17, scope: !267)
!267 = distinct !DILexicalBlock(scope: !211, file: !1, line: 40, column: 17)
!268 = !DILocation(line: 40, column: 21, scope: !267)
!269 = !DILocation(line: 40, column: 17, scope: !211)
!270 = !DILocation(line: 41, column: 17, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !1, line: 40, column: 26)
!272 = !DILocation(line: 43, column: 43, scope: !211)
!273 = !DILocation(line: 43, column: 13, scope: !211)
!274 = !{!257, !92, i64 32}
!275 = !DILocation(line: 43, column: 41, scope: !211)
!276 = !DILocation(line: 44, column: 9, scope: !212)
!277 = !DILocation(line: 44, column: 9, scope: !211)
!278 = !DILocation(line: 46, column: 5, scope: !206)
!279 = !DILocation(line: 46, column: 5, scope: !205)
!280 = !DILocation(line: 31, column: 25, scope: !206)
!281 = !DILocation(line: 31, column: 5, scope: !206)
!282 = distinct !{!282, !244, !283, !147}
!283 = !DILocation(line: 46, column: 5, scope: !207)
!284 = !DILocation(line: 48, column: 24, scope: !181)
!285 = !DILocation(line: 48, column: 5, scope: !181)
!286 = !DILocation(line: 49, column: 36, scope: !287)
!287 = distinct !DILexicalBlock(scope: !181, file: !1, line: 49, column: 9)
!288 = !DILocation(line: 49, column: 43, scope: !287)
!289 = !DILocation(line: 49, column: 10, scope: !287)
!290 = !DILocation(line: 49, column: 9, scope: !181)
!291 = !DILocation(line: 50, column: 9, scope: !292)
!292 = distinct !DILexicalBlock(scope: !287, file: !1, line: 49, column: 69)
!293 = !DILocation(line: 53, column: 5, scope: !181)
!294 = !DILocation(line: 53, column: 13, scope: !181)
!295 = !DILocation(line: 55, column: 5, scope: !181)
!296 = !DILocation(line: 55, column: 15, scope: !181)
!297 = !DILocation(line: 55, column: 23, scope: !181)
!298 = !DILocation(line: 55, column: 30, scope: !181)
!299 = !DILocation(line: 56, column: 5, scope: !181)
!300 = !DILocation(line: 56, column: 14, scope: !181)
!301 = !DILocation(line: 58, column: 5, scope: !217)
!302 = !DILocation(line: 58, column: 5, scope: !303)
!303 = distinct !DILexicalBlock(scope: !217, file: !1, line: 58, column: 5)
!304 = !DILocation(line: 58, column: 5, scope: !305)
!305 = distinct !DILexicalBlock(scope: !303, file: !1, line: 58, column: 5)
!306 = !DILocation(line: 58, column: 5, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !1, line: 58, column: 5)
!308 = distinct !DILexicalBlock(scope: !305, file: !1, line: 58, column: 5)
!309 = !{!257, !92, i64 16}
!310 = !DILocation(line: 58, column: 5, scope: !308)
!311 = !{!257, !92, i64 24}
!312 = !DILocation(line: 58, column: 5, scope: !313)
!313 = distinct !DILexicalBlock(scope: !308, file: !1, line: 58, column: 5)
!314 = distinct !{!314, !302, !302, !147}
!315 = !DILocation(line: 58, column: 5, scope: !181)
!316 = !DILocation(line: 62, column: 5, scope: !181)
!317 = !DILocation(line: 63, column: 1, scope: !181)
!318 = distinct !DISubprogram(name: "kh_clear_int_uint32", scope: !16, file: !16, line: 20, type: !319, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !321)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !184}
!321 = !{!322}
!322 = !DILocalVariable(name: "h", arg: 1, scope: !318, file: !16, line: 20, type: !184)
!323 = !DILocation(line: 20, column: 1, scope: !318)
!324 = !DILocation(line: 20, column: 1, scope: !325)
!325 = distinct !DILexicalBlock(scope: !318, file: !16, line: 20, column: 1)
!326 = !DILocation(line: 20, column: 1, scope: !327)
!327 = distinct !DILexicalBlock(scope: !325, file: !16, line: 20, column: 1)
!328 = !{!257, !227, i64 8}
!329 = distinct !DISubprogram(name: "kh_get_int_uint32", scope: !16, file: !16, line: 20, type: !330, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !334)
!330 = !DISubroutineType(types: !331)
!331 = !{!8, !332, !10}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!334 = !{!335, !336, !337, !340, !341, !342, !343}
!335 = !DILocalVariable(name: "h", arg: 1, scope: !329, file: !16, line: 20, type: !332)
!336 = !DILocalVariable(name: "key", arg: 2, scope: !329, file: !16, line: 20, type: !10)
!337 = !DILocalVariable(name: "k", scope: !338, file: !16, line: 20, type: !8)
!338 = distinct !DILexicalBlock(scope: !339, file: !16, line: 20, column: 1)
!339 = distinct !DILexicalBlock(scope: !329, file: !16, line: 20, column: 1)
!340 = !DILocalVariable(name: "i", scope: !338, file: !16, line: 20, type: !8)
!341 = !DILocalVariable(name: "last", scope: !338, file: !16, line: 20, type: !8)
!342 = !DILocalVariable(name: "mask", scope: !338, file: !16, line: 20, type: !8)
!343 = !DILocalVariable(name: "step", scope: !338, file: !16, line: 20, type: !8)
!344 = !DILocation(line: 20, column: 1, scope: !329)
!345 = !DILocation(line: 20, column: 1, scope: !339)
!346 = !DILocation(line: 20, column: 1, scope: !338)
!347 = !DILocation(line: 0, scope: !338)
!348 = !DILocation(line: 20, column: 1, scope: !349)
!349 = distinct !DILexicalBlock(scope: !338, file: !16, line: 20, column: 1)
!350 = !DILocation(line: 20, column: 1, scope: !351)
!351 = distinct !DILexicalBlock(scope: !349, file: !16, line: 20, column: 1)
!352 = distinct !{!352, !346, !346, !147}
!353 = distinct !DISubprogram(name: "kh_put_int_uint32", scope: !16, file: !16, line: 20, type: !354, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !357)
!354 = !DISubroutineType(types: !355)
!355 = !{!8, !184, !10, !356}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!357 = !{!358, !359, !360, !361, !362, !364, !365, !366, !367, !368}
!358 = !DILocalVariable(name: "h", arg: 1, scope: !353, file: !16, line: 20, type: !184)
!359 = !DILocalVariable(name: "key", arg: 2, scope: !353, file: !16, line: 20, type: !10)
!360 = !DILocalVariable(name: "ret", arg: 3, scope: !353, file: !16, line: 20, type: !356)
!361 = !DILocalVariable(name: "x", scope: !353, file: !16, line: 20, type: !8)
!362 = !DILocalVariable(name: "k", scope: !363, file: !16, line: 20, type: !8)
!363 = distinct !DILexicalBlock(scope: !353, file: !16, line: 20, column: 1)
!364 = !DILocalVariable(name: "i", scope: !363, file: !16, line: 20, type: !8)
!365 = !DILocalVariable(name: "site", scope: !363, file: !16, line: 20, type: !8)
!366 = !DILocalVariable(name: "last", scope: !363, file: !16, line: 20, type: !8)
!367 = !DILocalVariable(name: "mask", scope: !363, file: !16, line: 20, type: !8)
!368 = !DILocalVariable(name: "step", scope: !363, file: !16, line: 20, type: !8)
!369 = !DILocation(line: 20, column: 1, scope: !353)
!370 = !DILocation(line: 20, column: 1, scope: !371)
!371 = distinct !DILexicalBlock(scope: !353, file: !16, line: 20, column: 1)
!372 = !{!257, !227, i64 12}
!373 = !DILocation(line: 20, column: 1, scope: !374)
!374 = distinct !DILexicalBlock(scope: !375, file: !16, line: 20, column: 1)
!375 = distinct !DILexicalBlock(scope: !371, file: !16, line: 20, column: 1)
!376 = !DILocation(line: 20, column: 1, scope: !375)
!377 = !DILocation(line: 20, column: 1, scope: !378)
!378 = distinct !DILexicalBlock(scope: !379, file: !16, line: 20, column: 1)
!379 = distinct !DILexicalBlock(scope: !374, file: !16, line: 20, column: 1)
!380 = !DILocation(line: 20, column: 1, scope: !379)
!381 = !DILocation(line: 20, column: 1, scope: !382)
!382 = distinct !DILexicalBlock(scope: !378, file: !16, line: 20, column: 1)
!383 = !DILocation(line: 20, column: 1, scope: !384)
!384 = distinct !DILexicalBlock(scope: !374, file: !16, line: 20, column: 1)
!385 = !DILocation(line: 20, column: 1, scope: !386)
!386 = distinct !DILexicalBlock(scope: !384, file: !16, line: 20, column: 1)
!387 = !DILocation(line: 20, column: 1, scope: !363)
!388 = !DILocation(line: 20, column: 1, scope: !389)
!389 = distinct !DILexicalBlock(scope: !363, file: !16, line: 20, column: 1)
!390 = !DILocation(line: 20, column: 1, scope: !391)
!391 = distinct !DILexicalBlock(scope: !389, file: !16, line: 20, column: 1)
!392 = !DILocation(line: 0, scope: !391)
!393 = !DILocation(line: 20, column: 1, scope: !394)
!394 = distinct !DILexicalBlock(scope: !395, file: !16, line: 20, column: 1)
!395 = distinct !DILexicalBlock(scope: !391, file: !16, line: 20, column: 1)
!396 = !DILocation(line: 20, column: 1, scope: !395)
!397 = !DILocation(line: 20, column: 1, scope: !398)
!398 = distinct !DILexicalBlock(scope: !395, file: !16, line: 20, column: 1)
!399 = !DILocation(line: 20, column: 1, scope: !400)
!400 = distinct !DILexicalBlock(scope: !398, file: !16, line: 20, column: 1)
!401 = distinct !{!401, !390, !390, !147}
!402 = !DILocation(line: 20, column: 1, scope: !403)
!403 = distinct !DILexicalBlock(scope: !391, file: !16, line: 20, column: 1)
!404 = !DILocation(line: 20, column: 1, scope: !405)
!405 = distinct !DILexicalBlock(scope: !406, file: !16, line: 20, column: 1)
!406 = distinct !DILexicalBlock(scope: !403, file: !16, line: 20, column: 1)
!407 = !DILocation(line: 20, column: 1, scope: !406)
!408 = !DILocation(line: 20, column: 1, scope: !409)
!409 = distinct !DILexicalBlock(scope: !353, file: !16, line: 20, column: 1)
!410 = !DILocation(line: 20, column: 1, scope: !411)
!411 = distinct !DILexicalBlock(scope: !409, file: !16, line: 20, column: 1)
!412 = !DILocation(line: 20, column: 1, scope: !413)
!413 = distinct !DILexicalBlock(scope: !409, file: !16, line: 20, column: 1)
!414 = !DILocation(line: 20, column: 1, scope: !415)
!415 = distinct !DILexicalBlock(scope: !413, file: !16, line: 20, column: 1)
!416 = distinct !DISubprogram(name: "uint32_array_clear", scope: !16, file: !16, line: 44, type: !417, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !419)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !51}
!419 = !{!420}
!420 = !DILocalVariable(name: "array", arg: 1, scope: !416, file: !16, line: 44, type: !51)
!421 = !DILocation(line: 44, column: 1, scope: !416)
!422 = distinct !DISubprogram(name: "uint32_array_resize_fixed", scope: !16, file: !16, line: 44, type: !423, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !425)
!423 = !DISubroutineType(types: !424)
!424 = !{!174, !51, !56}
!425 = !{!426, !427}
!426 = !DILocalVariable(name: "array", arg: 1, scope: !422, file: !16, line: 44, type: !51)
!427 = !DILocalVariable(name: "size", arg: 2, scope: !422, file: !16, line: 44, type: !56)
!428 = !DILocation(line: 44, column: 1, scope: !422)
!429 = !DILocation(line: 44, column: 1, scope: !430)
!430 = distinct !DILexicalBlock(scope: !422, file: !16, line: 44, column: 1)
!431 = distinct !DISubprogram(name: "sparse_matrix_alias_columns", scope: !1, file: !1, line: 65, type: !432, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !434)
!432 = !DISubroutineType(types: !433)
!433 = !{!174, !43, !184}
!434 = !{!435, !436, !437, !438, !439, !440, !441, !442, !446}
!435 = !DILocalVariable(name: "matrix", arg: 1, scope: !431, file: !1, line: 65, type: !43)
!436 = !DILocalVariable(name: "unique_columns", arg: 2, scope: !431, file: !1, line: 65, type: !184)
!437 = !DILocalVariable(name: "n", scope: !431, file: !1, line: 66, type: !56)
!438 = !DILocalVariable(name: "indices", scope: !431, file: !1, line: 67, type: !13)
!439 = !DILocalVariable(name: "i", scope: !431, file: !1, line: 69, type: !56)
!440 = !DILocalVariable(name: "k", scope: !431, file: !1, line: 70, type: !203)
!441 = !DILocalVariable(name: "col_id", scope: !431, file: !1, line: 71, type: !3)
!442 = !DILocalVariable(name: "col", scope: !443, file: !1, line: 74, type: !3)
!443 = distinct !DILexicalBlock(scope: !444, file: !1, line: 73, column: 29)
!444 = distinct !DILexicalBlock(scope: !445, file: !1, line: 73, column: 5)
!445 = distinct !DILexicalBlock(scope: !431, file: !1, line: 73, column: 5)
!446 = !DILocalVariable(name: "ret", scope: !443, file: !1, line: 76, type: !209)
!447 = !DILocation(line: 65, column: 51, scope: !431)
!448 = !DILocation(line: 65, column: 80, scope: !431)
!449 = !DILocation(line: 66, column: 5, scope: !431)
!450 = !DILocation(line: 66, column: 12, scope: !431)
!451 = !DILocation(line: 66, column: 16, scope: !431)
!452 = !DILocation(line: 66, column: 24, scope: !431)
!453 = !DILocation(line: 66, column: 33, scope: !431)
!454 = !DILocation(line: 67, column: 5, scope: !431)
!455 = !DILocation(line: 67, column: 15, scope: !431)
!456 = !DILocation(line: 67, column: 25, scope: !431)
!457 = !DILocation(line: 67, column: 33, scope: !431)
!458 = !DILocation(line: 67, column: 42, scope: !431)
!459 = !DILocation(line: 69, column: 5, scope: !431)
!460 = !DILocation(line: 69, column: 12, scope: !431)
!461 = !DILocation(line: 70, column: 5, scope: !431)
!462 = !DILocation(line: 70, column: 14, scope: !431)
!463 = !DILocation(line: 71, column: 5, scope: !431)
!464 = !DILocation(line: 71, column: 14, scope: !431)
!465 = !DILocation(line: 73, column: 12, scope: !445)
!466 = !DILocation(line: 73, column: 10, scope: !445)
!467 = !DILocation(line: 73, column: 17, scope: !444)
!468 = !DILocation(line: 73, column: 21, scope: !444)
!469 = !DILocation(line: 73, column: 19, scope: !444)
!470 = !DILocation(line: 73, column: 5, scope: !445)
!471 = !DILocation(line: 74, column: 9, scope: !443)
!472 = !DILocation(line: 74, column: 18, scope: !443)
!473 = !DILocation(line: 74, column: 24, scope: !443)
!474 = !DILocation(line: 74, column: 32, scope: !443)
!475 = !DILocation(line: 76, column: 9, scope: !443)
!476 = !DILocation(line: 76, column: 13, scope: !443)
!477 = !DILocation(line: 77, column: 13, scope: !443)
!478 = !DILocation(line: 77, column: 11, scope: !443)
!479 = !DILocation(line: 78, column: 13, scope: !480)
!480 = distinct !DILexicalBlock(scope: !443, file: !1, line: 78, column: 13)
!481 = !DILocation(line: 78, column: 18, scope: !480)
!482 = !DILocation(line: 78, column: 15, scope: !480)
!483 = !DILocation(line: 78, column: 13, scope: !443)
!484 = !DILocation(line: 79, column: 22, scope: !485)
!485 = distinct !DILexicalBlock(scope: !480, file: !1, line: 78, column: 42)
!486 = !DILocation(line: 79, column: 20, scope: !485)
!487 = !DILocation(line: 80, column: 26, scope: !485)
!488 = !DILocation(line: 80, column: 13, scope: !485)
!489 = !DILocation(line: 80, column: 21, scope: !485)
!490 = !DILocation(line: 80, column: 24, scope: !485)
!491 = !DILocation(line: 81, column: 9, scope: !485)
!492 = !DILocation(line: 82, column: 13, scope: !493)
!493 = distinct !DILexicalBlock(scope: !480, file: !1, line: 81, column: 16)
!494 = !DILocation(line: 84, column: 5, scope: !444)
!495 = !DILocation(line: 84, column: 5, scope: !443)
!496 = !DILocation(line: 73, column: 25, scope: !444)
!497 = !DILocation(line: 73, column: 5, scope: !444)
!498 = distinct !{!498, !470, !499, !147}
!499 = !DILocation(line: 84, column: 5, scope: !445)
!500 = !DILocation(line: 86, column: 17, scope: !431)
!501 = !DILocation(line: 86, column: 5, scope: !431)
!502 = !DILocation(line: 86, column: 13, scope: !431)
!503 = !DILocation(line: 86, column: 15, scope: !431)
!504 = !{!226, !227, i64 4}
!505 = !DILocation(line: 88, column: 5, scope: !431)
!506 = !DILocation(line: 89, column: 1, scope: !431)
!507 = distinct !DISubprogram(name: "sparse_matrix_add_unique_columns_alias", scope: !1, file: !1, line: 91, type: !182, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !508)
!508 = !{!509, !510, !511}
!509 = !DILocalVariable(name: "matrix", arg: 1, scope: !507, file: !1, line: 91, type: !43)
!510 = !DILocalVariable(name: "unique_columns", arg: 2, scope: !507, file: !1, line: 91, type: !184)
!511 = !DILocalVariable(name: "array", arg: 3, scope: !507, file: !1, line: 91, type: !51)
!512 = !DILocation(line: 91, column: 69, scope: !507)
!513 = !DILocation(line: 91, column: 98, scope: !507)
!514 = !DILocation(line: 91, column: 128, scope: !507)
!515 = !DILocation(line: 92, column: 45, scope: !507)
!516 = !DILocation(line: 92, column: 53, scope: !507)
!517 = !DILocation(line: 92, column: 69, scope: !507)
!518 = !DILocation(line: 92, column: 12, scope: !507)
!519 = !DILocation(line: 92, column: 76, scope: !507)
!520 = !DILocation(line: 93, column: 40, scope: !507)
!521 = !DILocation(line: 93, column: 48, scope: !507)
!522 = !DILocation(line: 93, column: 12, scope: !507)
!523 = !DILocation(line: 0, scope: !507)
!524 = !DILocation(line: 92, column: 5, scope: !507)
!525 = distinct !DISubprogram(name: "sparse_matrix_unique_columns", scope: !1, file: !1, line: 96, type: !526, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !528)
!526 = !DISubroutineType(types: !527)
!527 = !{!51, !43}
!528 = !{!529, !530, !531}
!529 = !DILocalVariable(name: "matrix", arg: 1, scope: !525, file: !1, line: 96, type: !43)
!530 = !DILocalVariable(name: "unique_columns", scope: !525, file: !1, line: 97, type: !14)
!531 = !DILocalVariable(name: "ret", scope: !525, file: !1, line: 98, type: !51)
!532 = !DILocation(line: 96, column: 61, scope: !525)
!533 = !DILocation(line: 97, column: 5, scope: !525)
!534 = !DILocation(line: 97, column: 23, scope: !525)
!535 = !DILocation(line: 97, column: 40, scope: !525)
!536 = !DILocation(line: 98, column: 5, scope: !525)
!537 = !DILocation(line: 98, column: 19, scope: !525)
!538 = !DILocation(line: 98, column: 25, scope: !525)
!539 = !DILocation(line: 100, column: 42, scope: !540)
!540 = distinct !DILexicalBlock(scope: !525, file: !1, line: 100, column: 9)
!541 = !DILocation(line: 100, column: 50, scope: !540)
!542 = !DILocation(line: 100, column: 66, scope: !540)
!543 = !DILocation(line: 100, column: 9, scope: !540)
!544 = !DILocation(line: 100, column: 9, scope: !525)
!545 = !DILocation(line: 101, column: 9, scope: !546)
!546 = distinct !DILexicalBlock(scope: !540, file: !1, line: 100, column: 72)
!547 = !DILocation(line: 102, column: 16, scope: !546)
!548 = !DILocation(line: 102, column: 9, scope: !546)
!549 = !DILocation(line: 105, column: 5, scope: !525)
!550 = !DILocation(line: 106, column: 26, scope: !525)
!551 = !DILocation(line: 106, column: 5, scope: !525)
!552 = !DILocation(line: 107, column: 5, scope: !525)
!553 = !DILocation(line: 108, column: 1, scope: !525)
!554 = distinct !DISubprogram(name: "kh_init_int_set", scope: !16, file: !16, line: 37, type: !555, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!555 = !DISubroutineType(types: !556)
!556 = !{!14}
!557 = !DILocation(line: 37, column: 1, scope: !554)
!558 = distinct !DISubprogram(name: "uint32_array_new", scope: !16, file: !16, line: 44, type: !559, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!559 = !DISubroutineType(types: !560)
!560 = !{!51}
!561 = !DILocation(line: 44, column: 1, scope: !558)
!562 = distinct !DISubprogram(name: "kh_destroy_int_set", scope: !16, file: !16, line: 37, type: !563, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !565)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !14}
!565 = !{!566}
!566 = !DILocalVariable(name: "h", arg: 1, scope: !562, file: !16, line: 37, type: !14)
!567 = !DILocation(line: 37, column: 1, scope: !562)
!568 = !DILocation(line: 37, column: 1, scope: !569)
!569 = distinct !DILexicalBlock(scope: !562, file: !16, line: 37, column: 1)
!570 = !DILocation(line: 37, column: 1, scope: !571)
!571 = distinct !DILexicalBlock(scope: !569, file: !16, line: 37, column: 1)
!572 = distinct !DISubprogram(name: "uint32_array_destroy", scope: !16, file: !16, line: 44, type: !417, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !573)
!573 = !{!574}
!574 = !DILocalVariable(name: "array", arg: 1, scope: !572, file: !16, line: 44, type: !51)
!575 = !DILocation(line: 44, column: 1, scope: !572)
!576 = !DILocation(line: 44, column: 1, scope: !577)
!577 = distinct !DILexicalBlock(scope: !572, file: !16, line: 44, column: 1)
!578 = !DILocation(line: 44, column: 1, scope: !579)
!579 = distinct !DILexicalBlock(scope: !572, file: !16, line: 44, column: 1)
!580 = distinct !DISubprogram(name: "kh_resize_int_uint32", scope: !16, file: !16, line: 20, type: !581, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !583)
!581 = !DISubroutineType(types: !582)
!582 = !{!209, !184, !8}
!583 = !{!584, !585, !586, !587, !588, !594, !597, !605, !606, !607, !609, !610, !611, !615}
!584 = !DILocalVariable(name: "h", arg: 1, scope: !580, file: !16, line: 20, type: !184)
!585 = !DILocalVariable(name: "new_n_buckets", arg: 2, scope: !580, file: !16, line: 20, type: !8)
!586 = !DILocalVariable(name: "new_flags", scope: !580, file: !16, line: 20, type: !11)
!587 = !DILocalVariable(name: "j", scope: !580, file: !16, line: 20, type: !8)
!588 = !DILocalVariable(name: "new_keys", scope: !589, file: !16, line: 20, type: !11)
!589 = distinct !DILexicalBlock(scope: !590, file: !16, line: 20, column: 1)
!590 = distinct !DILexicalBlock(scope: !591, file: !16, line: 20, column: 1)
!591 = distinct !DILexicalBlock(scope: !592, file: !16, line: 20, column: 1)
!592 = distinct !DILexicalBlock(scope: !593, file: !16, line: 20, column: 1)
!593 = distinct !DILexicalBlock(scope: !580, file: !16, line: 20, column: 1)
!594 = !DILocalVariable(name: "new_vals", scope: !595, file: !16, line: 20, type: !13)
!595 = distinct !DILexicalBlock(scope: !596, file: !16, line: 20, column: 1)
!596 = distinct !DILexicalBlock(scope: !589, file: !16, line: 20, column: 1)
!597 = !DILocalVariable(name: "key", scope: !598, file: !16, line: 20, type: !10)
!598 = distinct !DILexicalBlock(scope: !599, file: !16, line: 20, column: 1)
!599 = distinct !DILexicalBlock(scope: !600, file: !16, line: 20, column: 1)
!600 = distinct !DILexicalBlock(scope: !601, file: !16, line: 20, column: 1)
!601 = distinct !DILexicalBlock(scope: !602, file: !16, line: 20, column: 1)
!602 = distinct !DILexicalBlock(scope: !603, file: !16, line: 20, column: 1)
!603 = distinct !DILexicalBlock(scope: !604, file: !16, line: 20, column: 1)
!604 = distinct !DILexicalBlock(scope: !580, file: !16, line: 20, column: 1)
!605 = !DILocalVariable(name: "val", scope: !598, file: !16, line: 20, type: !3)
!606 = !DILocalVariable(name: "new_mask", scope: !598, file: !16, line: 20, type: !8)
!607 = !DILocalVariable(name: "k", scope: !608, file: !16, line: 20, type: !8)
!608 = distinct !DILexicalBlock(scope: !598, file: !16, line: 20, column: 1)
!609 = !DILocalVariable(name: "i", scope: !608, file: !16, line: 20, type: !8)
!610 = !DILocalVariable(name: "step", scope: !608, file: !16, line: 20, type: !8)
!611 = !DILocalVariable(name: "tmp", scope: !612, file: !16, line: 20, type: !10)
!612 = distinct !DILexicalBlock(scope: !613, file: !16, line: 20, column: 1)
!613 = distinct !DILexicalBlock(scope: !614, file: !16, line: 20, column: 1)
!614 = distinct !DILexicalBlock(scope: !608, file: !16, line: 20, column: 1)
!615 = !DILocalVariable(name: "tmp", scope: !616, file: !16, line: 20, type: !3)
!616 = distinct !DILexicalBlock(scope: !617, file: !16, line: 20, column: 1)
!617 = distinct !DILexicalBlock(scope: !613, file: !16, line: 20, column: 1)
!618 = !DILocation(line: 20, column: 1, scope: !580)
!619 = !DILocation(line: 20, column: 1, scope: !593)
!620 = !DILocation(line: 20, column: 1, scope: !621)
!621 = distinct !DILexicalBlock(scope: !593, file: !16, line: 20, column: 1)
!622 = !DILocation(line: 20, column: 1, scope: !592)
!623 = !DILocation(line: 20, column: 1, scope: !591)
!624 = !DILocation(line: 20, column: 1, scope: !625)
!625 = distinct !DILexicalBlock(scope: !591, file: !16, line: 20, column: 1)
!626 = !DILocation(line: 20, column: 1, scope: !590)
!627 = !DILocation(line: 20, column: 1, scope: !589)
!628 = !DILocation(line: 20, column: 1, scope: !629)
!629 = distinct !DILexicalBlock(scope: !589, file: !16, line: 20, column: 1)
!630 = !DILocation(line: 20, column: 1, scope: !631)
!631 = distinct !DILexicalBlock(scope: !629, file: !16, line: 20, column: 1)
!632 = !DILocation(line: 20, column: 1, scope: !595)
!633 = !DILocation(line: 20, column: 1, scope: !634)
!634 = distinct !DILexicalBlock(scope: !595, file: !16, line: 20, column: 1)
!635 = !DILocation(line: 20, column: 1, scope: !636)
!636 = distinct !DILexicalBlock(scope: !634, file: !16, line: 20, column: 1)
!637 = !DILocation(line: 20, column: 1, scope: !596)
!638 = !DILocation(line: 20, column: 1, scope: !604)
!639 = !DILocation(line: 20, column: 1, scope: !602)
!640 = !DILocation(line: 20, column: 1, scope: !601)
!641 = !DILocation(line: 20, column: 1, scope: !599)
!642 = !DILocation(line: 20, column: 1, scope: !600)
!643 = !DILocation(line: 20, column: 1, scope: !598)
!644 = !DILocation(line: 20, column: 1, scope: !645)
!645 = distinct !DILexicalBlock(scope: !598, file: !16, line: 20, column: 1)
!646 = !DILocation(line: 20, column: 1, scope: !608)
!647 = distinct !{!647, !646, !646, !147}
!648 = !DILocation(line: 20, column: 1, scope: !614)
!649 = !DILocation(line: 20, column: 1, scope: !612)
!650 = !DILocation(line: 20, column: 1, scope: !613)
!651 = !DILocation(line: 20, column: 1, scope: !616)
!652 = !DILocation(line: 20, column: 1, scope: !617)
!653 = !DILocation(line: 20, column: 1, scope: !654)
!654 = distinct !DILexicalBlock(scope: !614, file: !16, line: 20, column: 1)
!655 = !DILocation(line: 20, column: 1, scope: !656)
!656 = distinct !DILexicalBlock(scope: !654, file: !16, line: 20, column: 1)
!657 = distinct !{!657, !643, !643}
!658 = distinct !{!658, !639, !639, !147}
!659 = !DILocation(line: 20, column: 1, scope: !660)
!660 = distinct !DILexicalBlock(scope: !603, file: !16, line: 20, column: 1)
!661 = !DILocation(line: 20, column: 1, scope: !603)
!662 = !DILocation(line: 20, column: 1, scope: !663)
!663 = distinct !DILexicalBlock(scope: !660, file: !16, line: 20, column: 1)
!664 = !DILocation(line: 20, column: 1, scope: !665)
!665 = distinct !DILexicalBlock(scope: !663, file: !16, line: 20, column: 1)
!666 = !DISubprogram(name: "malloc", scope: !667, file: !667, line: 540, type: !668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!667 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!668 = !DISubroutineType(types: !669)
!669 = !{!12, !56}
!670 = !DISubprogram(name: "realloc", scope: !667, file: !667, line: 551, type: !671, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!671 = !DISubroutineType(types: !672)
!672 = !{!12, !12, !56}
!673 = !DISubprogram(name: "free", scope: !667, file: !667, line: 555, type: !674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !12}
!676 = distinct !DISubprogram(name: "uint32_array_resize", scope: !16, file: !16, line: 44, type: !423, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !677)
!677 = !{!678, !679, !680}
!678 = !DILocalVariable(name: "array", arg: 1, scope: !676, file: !16, line: 44, type: !51)
!679 = !DILocalVariable(name: "size", arg: 2, scope: !676, file: !16, line: 44, type: !56)
!680 = !DILocalVariable(name: "ptr", scope: !676, file: !16, line: 44, type: !13)
!681 = !DILocation(line: 44, column: 1, scope: !676)
!682 = !DILocation(line: 44, column: 1, scope: !683)
!683 = distinct !DILexicalBlock(scope: !676, file: !16, line: 44, column: 1)
!684 = !DILocation(line: 44, column: 1, scope: !685)
!685 = distinct !DILexicalBlock(scope: !676, file: !16, line: 44, column: 1)
!686 = !DISubprogram(name: "calloc", scope: !667, file: !667, line: 543, type: !687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!687 = !DISubroutineType(types: !688)
!688 = !{!12, !56, !56}
!689 = distinct !DISubprogram(name: "uint32_array_new_size", scope: !16, file: !16, line: 44, type: !690, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !692)
!690 = !DISubroutineType(types: !691)
!691 = !{!51, !56}
!692 = !{!693, !694}
!693 = !DILocalVariable(name: "size", arg: 1, scope: !689, file: !16, line: 44, type: !56)
!694 = !DILocalVariable(name: "array", scope: !689, file: !16, line: 44, type: !51)
!695 = !DILocation(line: 44, column: 1, scope: !689)
!696 = !DILocation(line: 44, column: 1, scope: !697)
!697 = distinct !DILexicalBlock(scope: !689, file: !16, line: 44, column: 1)
!698 = !DILocation(line: 44, column: 1, scope: !699)
!699 = distinct !DILexicalBlock(scope: !689, file: !16, line: 44, column: 1)
