; ModuleID = 'samples/688.bc'
source_filename = "BLAS_dsymv2_s_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.BLAS_dsymv2_s_s.routine_name = private unnamed_addr constant [16 x i8] c"BLAS_dsymv2_s_s\00", align 16

; Function Attrs: nounwind uwtable
define dso_local void @BLAS_dsymv2_s_s(i32 noundef %order, i32 noundef %uplo, i32 noundef %n, double noundef %alpha, ptr noundef %a, i32 noundef %lda, ptr noundef %x_head, ptr noundef %x_tail, i32 noundef %incx, double noundef %beta, ptr noundef %y, i32 noundef %incy) #0 !dbg !22 {
entry:
  %order.addr = alloca i32, align 4
  %uplo.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca double, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca i32, align 4
  %x_head.addr = alloca ptr, align 8
  %x_tail.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %beta.addr = alloca double, align 8
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %routine_name = alloca [16 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %xi = alloca i32, align 4
  %yi = alloca i32, align 4
  %xi0 = alloca i32, align 4
  %yi0 = alloca i32, align 4
  %aij = alloca i32, align 4
  %ai = alloca i32, align 4
  %incai = alloca i32, align 4
  %incaij = alloca i32, align 4
  %incaij2 = alloca i32, align 4
  %a_i = alloca ptr, align 8
  %x_head_i = alloca ptr, align 8
  %x_tail_i = alloca ptr, align 8
  %y_i = alloca ptr, align 8
  %alpha_i = alloca double, align 8
  %beta_i = alloca double, align 8
  %a_elem = alloca float, align 4
  %x_elem = alloca float, align 4
  %y_elem = alloca double, align 8
  %prod1 = alloca double, align 8
  %prod2 = alloca double, align 8
  %sum1 = alloca double, align 8
  %sum2 = alloca double, align 8
  %tmp1 = alloca double, align 8
  %tmp2 = alloca double, align 8
  %tmp3 = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %order, ptr %order.addr, align 4, !tbaa !76
  tail call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !31, metadata !DIExpression()), !dbg !79
  store i32 %uplo, ptr %uplo.addr, align 4, !tbaa !76
  tail call void @llvm.dbg.declare(metadata ptr %uplo.addr, metadata !32, metadata !DIExpression()), !dbg !80
  store i32 %n, ptr %n.addr, align 4, !tbaa !81
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !33, metadata !DIExpression()), !dbg !83
  store double %alpha, ptr %alpha.addr, align 8, !tbaa !84
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !34, metadata !DIExpression()), !dbg !86
  store ptr %a, ptr %a.addr, align 8, !tbaa !87
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !35, metadata !DIExpression()), !dbg !89
  store i32 %lda, ptr %lda.addr, align 4, !tbaa !81
  tail call void @llvm.dbg.declare(metadata ptr %lda.addr, metadata !36, metadata !DIExpression()), !dbg !90
  store ptr %x_head, ptr %x_head.addr, align 8, !tbaa !87
  tail call void @llvm.dbg.declare(metadata ptr %x_head.addr, metadata !37, metadata !DIExpression()), !dbg !91
  store ptr %x_tail, ptr %x_tail.addr, align 8, !tbaa !87
  tail call void @llvm.dbg.declare(metadata ptr %x_tail.addr, metadata !38, metadata !DIExpression()), !dbg !92
  store i32 %incx, ptr %incx.addr, align 4, !tbaa !81
  tail call void @llvm.dbg.declare(metadata ptr %incx.addr, metadata !39, metadata !DIExpression()), !dbg !93
  store double %beta, ptr %beta.addr, align 8, !tbaa !84
  tail call void @llvm.dbg.declare(metadata ptr %beta.addr, metadata !40, metadata !DIExpression()), !dbg !94
  store ptr %y, ptr %y.addr, align 8, !tbaa !87
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !41, metadata !DIExpression()), !dbg !95
  store i32 %incy, ptr %incy.addr, align 4, !tbaa !81
  tail call void @llvm.dbg.declare(metadata ptr %incy.addr, metadata !42, metadata !DIExpression()), !dbg !96
  call void @llvm.lifetime.start.p0(i64 16, ptr %routine_name) #5, !dbg !97
  tail call void @llvm.dbg.declare(metadata ptr %routine_name, metadata !43, metadata !DIExpression()), !dbg !98
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %routine_name, ptr align 16 @__const.BLAS_dsymv2_s_s.routine_name, i64 16, i1 false), !dbg !98
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !99
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !49, metadata !DIExpression()), !dbg !100
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5, !dbg !99
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !50, metadata !DIExpression()), !dbg !101
  call void @llvm.lifetime.start.p0(i64 4, ptr %xi) #5, !dbg !102
  tail call void @llvm.dbg.declare(metadata ptr %xi, metadata !51, metadata !DIExpression()), !dbg !103
  call void @llvm.lifetime.start.p0(i64 4, ptr %yi) #5, !dbg !102
  tail call void @llvm.dbg.declare(metadata ptr %yi, metadata !52, metadata !DIExpression()), !dbg !104
  call void @llvm.lifetime.start.p0(i64 4, ptr %xi0) #5, !dbg !102
  tail call void @llvm.dbg.declare(metadata ptr %xi0, metadata !53, metadata !DIExpression()), !dbg !105
  call void @llvm.lifetime.start.p0(i64 4, ptr %yi0) #5, !dbg !102
  tail call void @llvm.dbg.declare(metadata ptr %yi0, metadata !54, metadata !DIExpression()), !dbg !106
  call void @llvm.lifetime.start.p0(i64 4, ptr %aij) #5, !dbg !107
  tail call void @llvm.dbg.declare(metadata ptr %aij, metadata !55, metadata !DIExpression()), !dbg !108
  call void @llvm.lifetime.start.p0(i64 4, ptr %ai) #5, !dbg !107
  tail call void @llvm.dbg.declare(metadata ptr %ai, metadata !56, metadata !DIExpression()), !dbg !109
  call void @llvm.lifetime.start.p0(i64 4, ptr %incai) #5, !dbg !110
  tail call void @llvm.dbg.declare(metadata ptr %incai, metadata !57, metadata !DIExpression()), !dbg !111
  call void @llvm.lifetime.start.p0(i64 4, ptr %incaij) #5, !dbg !112
  tail call void @llvm.dbg.declare(metadata ptr %incaij, metadata !58, metadata !DIExpression()), !dbg !113
  call void @llvm.lifetime.start.p0(i64 4, ptr %incaij2) #5, !dbg !112
  tail call void @llvm.dbg.declare(metadata ptr %incaij2, metadata !59, metadata !DIExpression()), !dbg !114
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_i) #5, !dbg !115
  tail call void @llvm.dbg.declare(metadata ptr %a_i, metadata !60, metadata !DIExpression()), !dbg !116
  %0 = load ptr, ptr %a.addr, align 8, !dbg !117, !tbaa !87
  store ptr %0, ptr %a_i, align 8, !dbg !116, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_head_i) #5, !dbg !118
  tail call void @llvm.dbg.declare(metadata ptr %x_head_i, metadata !61, metadata !DIExpression()), !dbg !119
  %1 = load ptr, ptr %x_head.addr, align 8, !dbg !120, !tbaa !87
  store ptr %1, ptr %x_head_i, align 8, !dbg !119, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_tail_i) #5, !dbg !121
  tail call void @llvm.dbg.declare(metadata ptr %x_tail_i, metadata !62, metadata !DIExpression()), !dbg !122
  %2 = load ptr, ptr %x_tail.addr, align 8, !dbg !123, !tbaa !87
  store ptr %2, ptr %x_tail_i, align 8, !dbg !122, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_i) #5, !dbg !124
  tail call void @llvm.dbg.declare(metadata ptr %y_i, metadata !63, metadata !DIExpression()), !dbg !125
  %3 = load ptr, ptr %y.addr, align 8, !dbg !126, !tbaa !87
  store ptr %3, ptr %y_i, align 8, !dbg !125, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_i) #5, !dbg !127
  tail call void @llvm.dbg.declare(metadata ptr %alpha_i, metadata !64, metadata !DIExpression()), !dbg !128
  %4 = load double, ptr %alpha.addr, align 8, !dbg !129, !tbaa !84
  store double %4, ptr %alpha_i, align 8, !dbg !128, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta_i) #5, !dbg !130
  tail call void @llvm.dbg.declare(metadata ptr %beta_i, metadata !65, metadata !DIExpression()), !dbg !131
  %5 = load double, ptr %beta.addr, align 8, !dbg !132, !tbaa !84
  store double %5, ptr %beta_i, align 8, !dbg !131, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_elem) #5, !dbg !133
  tail call void @llvm.dbg.declare(metadata ptr %a_elem, metadata !66, metadata !DIExpression()), !dbg !134
  call void @llvm.lifetime.start.p0(i64 4, ptr %x_elem) #5, !dbg !135
  tail call void @llvm.dbg.declare(metadata ptr %x_elem, metadata !67, metadata !DIExpression()), !dbg !136
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_elem) #5, !dbg !137
  tail call void @llvm.dbg.declare(metadata ptr %y_elem, metadata !68, metadata !DIExpression()), !dbg !138
  call void @llvm.lifetime.start.p0(i64 8, ptr %prod1) #5, !dbg !139
  tail call void @llvm.dbg.declare(metadata ptr %prod1, metadata !69, metadata !DIExpression()), !dbg !140
  call void @llvm.lifetime.start.p0(i64 8, ptr %prod2) #5, !dbg !141
  tail call void @llvm.dbg.declare(metadata ptr %prod2, metadata !70, metadata !DIExpression()), !dbg !142
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum1) #5, !dbg !143
  tail call void @llvm.dbg.declare(metadata ptr %sum1, metadata !71, metadata !DIExpression()), !dbg !144
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum2) #5, !dbg !145
  tail call void @llvm.dbg.declare(metadata ptr %sum2, metadata !72, metadata !DIExpression()), !dbg !146
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp1) #5, !dbg !147
  tail call void @llvm.dbg.declare(metadata ptr %tmp1, metadata !73, metadata !DIExpression()), !dbg !148
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp2) #5, !dbg !149
  tail call void @llvm.dbg.declare(metadata ptr %tmp2, metadata !74, metadata !DIExpression()), !dbg !150
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp3) #5, !dbg !151
  tail call void @llvm.dbg.declare(metadata ptr %tmp3, metadata !75, metadata !DIExpression()), !dbg !152
  %6 = load i32, ptr %n.addr, align 4, !dbg !153, !tbaa !81
  %cmp = icmp sle i32 %6, 0, !dbg !155
  br i1 %cmp, label %if.then, label %if.end, !dbg !156

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !157

if.end:                                           ; preds = %entry
  %7 = load double, ptr %alpha_i, align 8, !dbg !159, !tbaa !84
  %cmp1 = fcmp oeq double %7, 0.000000e+00, !dbg !161
  br i1 %cmp1, label %land.lhs.true, label %if.end4, !dbg !162

land.lhs.true:                                    ; preds = %if.end
  %8 = load double, ptr %beta_i, align 8, !dbg !163, !tbaa !84
  %cmp2 = fcmp oeq double %8, 1.000000e+00, !dbg !164
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !165

if.then3:                                         ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !166

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %9 = load i32, ptr %n.addr, align 4, !dbg !168, !tbaa !81
  %cmp5 = icmp slt i32 %9, 0, !dbg !170
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !171

if.then6:                                         ; preds = %if.end4
  %arraydecay = getelementptr inbounds [16 x i8], ptr %routine_name, i64 0, i64 0, !dbg !172
  %10 = load i32, ptr %n.addr, align 4, !dbg !174, !tbaa !81
  call void (ptr, i32, i32, ptr, ...) @BLAS_error(ptr noundef %arraydecay, i32 noundef -3, i32 noundef %10, ptr noundef null), !dbg !175
  br label %if.end7, !dbg !176

if.end7:                                          ; preds = %if.then6, %if.end4
  %11 = load i32, ptr %lda.addr, align 4, !dbg !177, !tbaa !81
  %12 = load i32, ptr %n.addr, align 4, !dbg !179, !tbaa !81
  %cmp8 = icmp slt i32 %11, %12, !dbg !180
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !181

if.then9:                                         ; preds = %if.end7
  %arraydecay10 = getelementptr inbounds [16 x i8], ptr %routine_name, i64 0, i64 0, !dbg !182
  %13 = load i32, ptr %n.addr, align 4, !dbg !184, !tbaa !81
  call void (ptr, i32, i32, ptr, ...) @BLAS_error(ptr noundef %arraydecay10, i32 noundef -6, i32 noundef %13, ptr noundef null), !dbg !185
  br label %if.end11, !dbg !186

if.end11:                                         ; preds = %if.then9, %if.end7
  %14 = load i32, ptr %incx.addr, align 4, !dbg !187, !tbaa !81
  %cmp12 = icmp eq i32 %14, 0, !dbg !189
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !190

if.then13:                                        ; preds = %if.end11
  %arraydecay14 = getelementptr inbounds [16 x i8], ptr %routine_name, i64 0, i64 0, !dbg !191
  %15 = load i32, ptr %incx.addr, align 4, !dbg !193, !tbaa !81
  call void (ptr, i32, i32, ptr, ...) @BLAS_error(ptr noundef %arraydecay14, i32 noundef -9, i32 noundef %15, ptr noundef null), !dbg !194
  br label %if.end15, !dbg !195

if.end15:                                         ; preds = %if.then13, %if.end11
  %16 = load i32, ptr %incy.addr, align 4, !dbg !196, !tbaa !81
  %cmp16 = icmp eq i32 %16, 0, !dbg !198
  br i1 %cmp16, label %if.then17, label %if.end19, !dbg !199

if.then17:                                        ; preds = %if.end15
  %arraydecay18 = getelementptr inbounds [16 x i8], ptr %routine_name, i64 0, i64 0, !dbg !200
  %17 = load i32, ptr %incy.addr, align 4, !dbg !202, !tbaa !81
  call void (ptr, i32, i32, ptr, ...) @BLAS_error(ptr noundef %arraydecay18, i32 noundef -12, i32 noundef %17, ptr noundef null), !dbg !203
  br label %if.end19, !dbg !204

if.end19:                                         ; preds = %if.then17, %if.end15
  %18 = load i32, ptr %order.addr, align 4, !dbg !205, !tbaa !76
  %cmp20 = icmp eq i32 %18, 102, !dbg !207
  br i1 %cmp20, label %land.lhs.true21, label %lor.lhs.false, !dbg !208

land.lhs.true21:                                  ; preds = %if.end19
  %19 = load i32, ptr %uplo.addr, align 4, !dbg !209, !tbaa !76
  %cmp22 = icmp eq i32 %19, 121, !dbg !210
  br i1 %cmp22, label %if.then26, label %lor.lhs.false, !dbg !211

lor.lhs.false:                                    ; preds = %land.lhs.true21, %if.end19
  %20 = load i32, ptr %order.addr, align 4, !dbg !212, !tbaa !76
  %cmp23 = icmp eq i32 %20, 101, !dbg !213
  br i1 %cmp23, label %land.lhs.true24, label %if.else, !dbg !214

land.lhs.true24:                                  ; preds = %lor.lhs.false
  %21 = load i32, ptr %uplo.addr, align 4, !dbg !215, !tbaa !76
  %cmp25 = icmp eq i32 %21, 122, !dbg !216
  br i1 %cmp25, label %if.then26, label %if.else, !dbg !217

if.then26:                                        ; preds = %land.lhs.true24, %land.lhs.true21
  %22 = load i32, ptr %lda.addr, align 4, !dbg !218, !tbaa !81
  store i32 %22, ptr %incai, align 4, !dbg !220, !tbaa !81
  store i32 1, ptr %incaij, align 4, !dbg !221, !tbaa !81
  %23 = load i32, ptr %lda.addr, align 4, !dbg !222, !tbaa !81
  store i32 %23, ptr %incaij2, align 4, !dbg !223, !tbaa !81
  br label %if.end27, !dbg !224

if.else:                                          ; preds = %land.lhs.true24, %lor.lhs.false
  store i32 1, ptr %incai, align 4, !dbg !225, !tbaa !81
  %24 = load i32, ptr %lda.addr, align 4, !dbg !227, !tbaa !81
  store i32 %24, ptr %incaij, align 4, !dbg !228, !tbaa !81
  store i32 1, ptr %incaij2, align 4, !dbg !229, !tbaa !81
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then26
  %25 = load i32, ptr %incx.addr, align 4, !dbg !230, !tbaa !81
  %cmp28 = icmp sgt i32 %25, 0, !dbg !231
  br i1 %cmp28, label %cond.true, label %cond.false, !dbg !232

cond.true:                                        ; preds = %if.end27
  br label %cond.end, !dbg !232

cond.false:                                       ; preds = %if.end27
  %26 = load i32, ptr %n.addr, align 4, !dbg !233, !tbaa !81
  %sub = sub nsw i32 0, %26, !dbg !234
  %add = add nsw i32 %sub, 1, !dbg !235
  %27 = load i32, ptr %incx.addr, align 4, !dbg !236, !tbaa !81
  %mul = mul nsw i32 %add, %27, !dbg !237
  br label %cond.end, !dbg !232

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %mul, %cond.false ], !dbg !232
  store i32 %cond, ptr %xi0, align 4, !dbg !238, !tbaa !81
  %28 = load i32, ptr %incy.addr, align 4, !dbg !239, !tbaa !81
  %cmp29 = icmp sgt i32 %28, 0, !dbg !240
  br i1 %cmp29, label %cond.true30, label %cond.false31, !dbg !241

cond.true30:                                      ; preds = %cond.end
  br label %cond.end35, !dbg !241

cond.false31:                                     ; preds = %cond.end
  %29 = load i32, ptr %n.addr, align 4, !dbg !242, !tbaa !81
  %sub32 = sub nsw i32 0, %29, !dbg !243
  %add33 = add nsw i32 %sub32, 1, !dbg !244
  %30 = load i32, ptr %incy.addr, align 4, !dbg !245, !tbaa !81
  %mul34 = mul nsw i32 %add33, %30, !dbg !246
  br label %cond.end35, !dbg !241

cond.end35:                                       ; preds = %cond.false31, %cond.true30
  %cond36 = phi i32 [ 0, %cond.true30 ], [ %mul34, %cond.false31 ], !dbg !241
  store i32 %cond36, ptr %yi0, align 4, !dbg !247, !tbaa !81
  store i32 0, ptr %i, align 4, !dbg !248, !tbaa !81
  %31 = load i32, ptr %yi0, align 4, !dbg !250, !tbaa !81
  store i32 %31, ptr %yi, align 4, !dbg !251, !tbaa !81
  store i32 0, ptr %ai, align 4, !dbg !252, !tbaa !81
  br label %for.cond, !dbg !253

for.cond:                                         ; preds = %for.inc85, %cond.end35
  %32 = load i32, ptr %i, align 4, !dbg !254, !tbaa !81
  %33 = load i32, ptr %n.addr, align 4, !dbg !256, !tbaa !81
  %cmp37 = icmp slt i32 %32, %33, !dbg !257
  br i1 %cmp37, label %for.body, label %for.end89, !dbg !258

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, ptr %sum1, align 8, !dbg !259, !tbaa !84
  store double 0.000000e+00, ptr %sum2, align 8, !dbg !261, !tbaa !84
  store i32 0, ptr %j, align 4, !dbg !262, !tbaa !81
  %34 = load i32, ptr %ai, align 4, !dbg !264, !tbaa !81
  store i32 %34, ptr %aij, align 4, !dbg !265, !tbaa !81
  %35 = load i32, ptr %xi0, align 4, !dbg !266, !tbaa !81
  store i32 %35, ptr %xi, align 4, !dbg !267, !tbaa !81
  br label %for.cond38, !dbg !268

for.cond38:                                       ; preds = %for.inc, %for.body
  %36 = load i32, ptr %j, align 4, !dbg !269, !tbaa !81
  %37 = load i32, ptr %i, align 4, !dbg !271, !tbaa !81
  %cmp39 = icmp slt i32 %36, %37, !dbg !272
  br i1 %cmp39, label %for.body40, label %for.end, !dbg !273

for.body40:                                       ; preds = %for.cond38
  %38 = load ptr, ptr %a_i, align 8, !dbg !274, !tbaa !87
  %39 = load i32, ptr %aij, align 4, !dbg !276, !tbaa !81
  %idxprom = sext i32 %39 to i64, !dbg !274
  %arrayidx = getelementptr inbounds float, ptr %38, i64 %idxprom, !dbg !274
  %40 = load float, ptr %arrayidx, align 4, !dbg !274, !tbaa !277
  store float %40, ptr %a_elem, align 4, !dbg !279, !tbaa !277
  %41 = load ptr, ptr %x_head_i, align 8, !dbg !280, !tbaa !87
  %42 = load i32, ptr %xi, align 4, !dbg !281, !tbaa !81
  %idxprom41 = sext i32 %42 to i64, !dbg !280
  %arrayidx42 = getelementptr inbounds float, ptr %41, i64 %idxprom41, !dbg !280
  %43 = load float, ptr %arrayidx42, align 4, !dbg !280, !tbaa !277
  store float %43, ptr %x_elem, align 4, !dbg !282, !tbaa !277
  %44 = load float, ptr %a_elem, align 4, !dbg !283, !tbaa !277
  %conv = fpext float %44 to double, !dbg !284
  %45 = load float, ptr %x_elem, align 4, !dbg !285, !tbaa !277
  %conv43 = fpext float %45 to double, !dbg !285
  %mul44 = fmul double %conv, %conv43, !dbg !286
  store double %mul44, ptr %prod1, align 8, !dbg !287, !tbaa !84
  %46 = load double, ptr %sum1, align 8, !dbg !288, !tbaa !84
  %47 = load double, ptr %prod1, align 8, !dbg !289, !tbaa !84
  %add45 = fadd double %46, %47, !dbg !290
  store double %add45, ptr %sum1, align 8, !dbg !291, !tbaa !84
  %48 = load ptr, ptr %x_tail_i, align 8, !dbg !292, !tbaa !87
  %49 = load i32, ptr %xi, align 4, !dbg !293, !tbaa !81
  %idxprom46 = sext i32 %49 to i64, !dbg !292
  %arrayidx47 = getelementptr inbounds float, ptr %48, i64 %idxprom46, !dbg !292
  %50 = load float, ptr %arrayidx47, align 4, !dbg !292, !tbaa !277
  store float %50, ptr %x_elem, align 4, !dbg !294, !tbaa !277
  %51 = load float, ptr %a_elem, align 4, !dbg !295, !tbaa !277
  %conv48 = fpext float %51 to double, !dbg !296
  %52 = load float, ptr %x_elem, align 4, !dbg !297, !tbaa !277
  %conv49 = fpext float %52 to double, !dbg !297
  %mul50 = fmul double %conv48, %conv49, !dbg !298
  store double %mul50, ptr %prod2, align 8, !dbg !299, !tbaa !84
  %53 = load double, ptr %sum2, align 8, !dbg !300, !tbaa !84
  %54 = load double, ptr %prod2, align 8, !dbg !301, !tbaa !84
  %add51 = fadd double %53, %54, !dbg !302
  store double %add51, ptr %sum2, align 8, !dbg !303, !tbaa !84
  br label %for.inc, !dbg !304

for.inc:                                          ; preds = %for.body40
  %55 = load i32, ptr %j, align 4, !dbg !305, !tbaa !81
  %inc = add nsw i32 %55, 1, !dbg !305
  store i32 %inc, ptr %j, align 4, !dbg !305, !tbaa !81
  %56 = load i32, ptr %incaij, align 4, !dbg !306, !tbaa !81
  %57 = load i32, ptr %aij, align 4, !dbg !307, !tbaa !81
  %add52 = add nsw i32 %57, %56, !dbg !307
  store i32 %add52, ptr %aij, align 4, !dbg !307, !tbaa !81
  %58 = load i32, ptr %incx.addr, align 4, !dbg !308, !tbaa !81
  %59 = load i32, ptr %xi, align 4, !dbg !309, !tbaa !81
  %add53 = add nsw i32 %59, %58, !dbg !309
  store i32 %add53, ptr %xi, align 4, !dbg !309, !tbaa !81
  br label %for.cond38, !dbg !310, !llvm.loop !311

for.end:                                          ; preds = %for.cond38
  br label %for.cond54, !dbg !314

for.cond54:                                       ; preds = %for.inc72, %for.end
  %60 = load i32, ptr %j, align 4, !dbg !315, !tbaa !81
  %61 = load i32, ptr %n.addr, align 4, !dbg !318, !tbaa !81
  %cmp55 = icmp slt i32 %60, %61, !dbg !319
  br i1 %cmp55, label %for.body57, label %for.end76, !dbg !320

for.body57:                                       ; preds = %for.cond54
  %62 = load ptr, ptr %a_i, align 8, !dbg !321, !tbaa !87
  %63 = load i32, ptr %aij, align 4, !dbg !323, !tbaa !81
  %idxprom58 = sext i32 %63 to i64, !dbg !321
  %arrayidx59 = getelementptr inbounds float, ptr %62, i64 %idxprom58, !dbg !321
  %64 = load float, ptr %arrayidx59, align 4, !dbg !321, !tbaa !277
  store float %64, ptr %a_elem, align 4, !dbg !324, !tbaa !277
  %65 = load ptr, ptr %x_head_i, align 8, !dbg !325, !tbaa !87
  %66 = load i32, ptr %xi, align 4, !dbg !326, !tbaa !81
  %idxprom60 = sext i32 %66 to i64, !dbg !325
  %arrayidx61 = getelementptr inbounds float, ptr %65, i64 %idxprom60, !dbg !325
  %67 = load float, ptr %arrayidx61, align 4, !dbg !325, !tbaa !277
  store float %67, ptr %x_elem, align 4, !dbg !327, !tbaa !277
  %68 = load float, ptr %a_elem, align 4, !dbg !328, !tbaa !277
  %conv62 = fpext float %68 to double, !dbg !329
  %69 = load float, ptr %x_elem, align 4, !dbg !330, !tbaa !277
  %conv63 = fpext float %69 to double, !dbg !330
  %mul64 = fmul double %conv62, %conv63, !dbg !331
  store double %mul64, ptr %prod1, align 8, !dbg !332, !tbaa !84
  %70 = load double, ptr %sum1, align 8, !dbg !333, !tbaa !84
  %71 = load double, ptr %prod1, align 8, !dbg !334, !tbaa !84
  %add65 = fadd double %70, %71, !dbg !335
  store double %add65, ptr %sum1, align 8, !dbg !336, !tbaa !84
  %72 = load ptr, ptr %x_tail_i, align 8, !dbg !337, !tbaa !87
  %73 = load i32, ptr %xi, align 4, !dbg !338, !tbaa !81
  %idxprom66 = sext i32 %73 to i64, !dbg !337
  %arrayidx67 = getelementptr inbounds float, ptr %72, i64 %idxprom66, !dbg !337
  %74 = load float, ptr %arrayidx67, align 4, !dbg !337, !tbaa !277
  store float %74, ptr %x_elem, align 4, !dbg !339, !tbaa !277
  %75 = load float, ptr %a_elem, align 4, !dbg !340, !tbaa !277
  %conv68 = fpext float %75 to double, !dbg !341
  %76 = load float, ptr %x_elem, align 4, !dbg !342, !tbaa !277
  %conv69 = fpext float %76 to double, !dbg !342
  %mul70 = fmul double %conv68, %conv69, !dbg !343
  store double %mul70, ptr %prod2, align 8, !dbg !344, !tbaa !84
  %77 = load double, ptr %sum2, align 8, !dbg !345, !tbaa !84
  %78 = load double, ptr %prod2, align 8, !dbg !346, !tbaa !84
  %add71 = fadd double %77, %78, !dbg !347
  store double %add71, ptr %sum2, align 8, !dbg !348, !tbaa !84
  br label %for.inc72, !dbg !349

for.inc72:                                        ; preds = %for.body57
  %79 = load i32, ptr %j, align 4, !dbg !350, !tbaa !81
  %inc73 = add nsw i32 %79, 1, !dbg !350
  store i32 %inc73, ptr %j, align 4, !dbg !350, !tbaa !81
  %80 = load i32, ptr %incaij2, align 4, !dbg !351, !tbaa !81
  %81 = load i32, ptr %aij, align 4, !dbg !352, !tbaa !81
  %add74 = add nsw i32 %81, %80, !dbg !352
  store i32 %add74, ptr %aij, align 4, !dbg !352, !tbaa !81
  %82 = load i32, ptr %incx.addr, align 4, !dbg !353, !tbaa !81
  %83 = load i32, ptr %xi, align 4, !dbg !354, !tbaa !81
  %add75 = add nsw i32 %83, %82, !dbg !354
  store i32 %add75, ptr %xi, align 4, !dbg !354, !tbaa !81
  br label %for.cond54, !dbg !355, !llvm.loop !356

for.end76:                                        ; preds = %for.cond54
  %84 = load double, ptr %sum1, align 8, !dbg !358, !tbaa !84
  %85 = load double, ptr %sum2, align 8, !dbg !359, !tbaa !84
  %add77 = fadd double %84, %85, !dbg !360
  store double %add77, ptr %sum1, align 8, !dbg !361, !tbaa !84
  %86 = load double, ptr %sum1, align 8, !dbg !362, !tbaa !84
  %87 = load double, ptr %alpha_i, align 8, !dbg !363, !tbaa !84
  %mul78 = fmul double %86, %87, !dbg !364
  store double %mul78, ptr %tmp1, align 8, !dbg !365, !tbaa !84
  %88 = load ptr, ptr %y_i, align 8, !dbg !366, !tbaa !87
  %89 = load i32, ptr %yi, align 4, !dbg !367, !tbaa !81
  %idxprom79 = sext i32 %89 to i64, !dbg !366
  %arrayidx80 = getelementptr inbounds double, ptr %88, i64 %idxprom79, !dbg !366
  %90 = load double, ptr %arrayidx80, align 8, !dbg !366, !tbaa !84
  store double %90, ptr %y_elem, align 8, !dbg !368, !tbaa !84
  %91 = load double, ptr %y_elem, align 8, !dbg !369, !tbaa !84
  %92 = load double, ptr %beta_i, align 8, !dbg !370, !tbaa !84
  %mul81 = fmul double %91, %92, !dbg !371
  store double %mul81, ptr %tmp2, align 8, !dbg !372, !tbaa !84
  %93 = load double, ptr %tmp1, align 8, !dbg !373, !tbaa !84
  %94 = load double, ptr %tmp2, align 8, !dbg !374, !tbaa !84
  %add82 = fadd double %93, %94, !dbg !375
  store double %add82, ptr %tmp3, align 8, !dbg !376, !tbaa !84
  %95 = load double, ptr %tmp3, align 8, !dbg !377, !tbaa !84
  %96 = load ptr, ptr %y_i, align 8, !dbg !378, !tbaa !87
  %97 = load i32, ptr %yi, align 4, !dbg !379, !tbaa !81
  %idxprom83 = sext i32 %97 to i64, !dbg !378
  %arrayidx84 = getelementptr inbounds double, ptr %96, i64 %idxprom83, !dbg !378
  store double %95, ptr %arrayidx84, align 8, !dbg !380, !tbaa !84
  br label %for.inc85, !dbg !381

for.inc85:                                        ; preds = %for.end76
  %98 = load i32, ptr %i, align 4, !dbg !382, !tbaa !81
  %inc86 = add nsw i32 %98, 1, !dbg !382
  store i32 %inc86, ptr %i, align 4, !dbg !382, !tbaa !81
  %99 = load i32, ptr %incy.addr, align 4, !dbg !383, !tbaa !81
  %100 = load i32, ptr %yi, align 4, !dbg !384, !tbaa !81
  %add87 = add nsw i32 %100, %99, !dbg !384
  store i32 %add87, ptr %yi, align 4, !dbg !384, !tbaa !81
  %101 = load i32, ptr %incai, align 4, !dbg !385, !tbaa !81
  %102 = load i32, ptr %ai, align 4, !dbg !386, !tbaa !81
  %add88 = add nsw i32 %102, %101, !dbg !386
  store i32 %add88, ptr %ai, align 4, !dbg !386, !tbaa !81
  br label %for.cond, !dbg !387, !llvm.loop !388

for.end89:                                        ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !390
  br label %cleanup, !dbg !390

cleanup:                                          ; preds = %for.end89, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp3) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp2) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp1) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum2) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum1) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 8, ptr %prod2) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 8, ptr %prod1) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_elem) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 4, ptr %x_elem) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_elem) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta_i) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_i) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_i) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_tail_i) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_head_i) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_i) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 4, ptr %incaij2) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 4, ptr %incaij) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 4, ptr %incai) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 4, ptr %ai) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 4, ptr %aij) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 4, ptr %yi0) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 4, ptr %xi0) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 4, ptr %yi) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 4, ptr %xi) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !390
  call void @llvm.lifetime.end.p0(i64 16, ptr %routine_name) #5, !dbg !390
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !390

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare !dbg !391 void @BLAS_error(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !13, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "BLAS_dsymv2_s_s.c", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/src/symv2", checksumkind: CSK_MD5, checksum: "556d5c81bf58350de87c9d6d5a443c3b")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blas_order_type", file: !4, line: 6, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "../blas_enum.h", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/src/symv2", checksumkind: CSK_MD5, checksum: "8e42b1960f9fe688989d7c36c5b24db6")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "blas_rowmajor", value: 101)
!8 = !DIEnumerator(name: "blas_colmajor", value: 102)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blas_uplo_type", file: !4, line: 15, baseType: !5, size: 32, elements: !10)
!10 = !{!11, !12}
!11 = !DIEnumerator(name: "blas_upper", value: 121)
!12 = !DIEnumerator(name: "blas_lower", value: 122)
!13 = !{!14}
!14 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 8, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!22 = distinct !DISubprogram(name: "BLAS_dsymv2_s_s", scope: !1, file: !1, line: 4, type: !23, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !30)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !3, !9, !25, !14, !26, !25, !26, !26, !25, !14, !29, !25}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75}
!31 = !DILocalVariable(name: "order", arg: 1, scope: !22, file: !1, line: 4, type: !3)
!32 = !DILocalVariable(name: "uplo", arg: 2, scope: !22, file: !1, line: 4, type: !9)
!33 = !DILocalVariable(name: "n", arg: 3, scope: !22, file: !1, line: 5, type: !25)
!34 = !DILocalVariable(name: "alpha", arg: 4, scope: !22, file: !1, line: 5, type: !14)
!35 = !DILocalVariable(name: "a", arg: 5, scope: !22, file: !1, line: 5, type: !26)
!36 = !DILocalVariable(name: "lda", arg: 6, scope: !22, file: !1, line: 5, type: !25)
!37 = !DILocalVariable(name: "x_head", arg: 7, scope: !22, file: !1, line: 6, type: !26)
!38 = !DILocalVariable(name: "x_tail", arg: 8, scope: !22, file: !1, line: 6, type: !26)
!39 = !DILocalVariable(name: "incx", arg: 9, scope: !22, file: !1, line: 6, type: !25)
!40 = !DILocalVariable(name: "beta", arg: 10, scope: !22, file: !1, line: 7, type: !14)
!41 = !DILocalVariable(name: "y", arg: 11, scope: !22, file: !1, line: 7, type: !29)
!42 = !DILocalVariable(name: "incy", arg: 12, scope: !22, file: !1, line: 7, type: !25)
!43 = !DILocalVariable(name: "routine_name", scope: !22, file: !1, line: 60, type: !44)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, elements: !47)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !{!48}
!48 = !DISubrange(count: 16)
!49 = !DILocalVariable(name: "i", scope: !22, file: !1, line: 62, type: !25)
!50 = !DILocalVariable(name: "j", scope: !22, file: !1, line: 62, type: !25)
!51 = !DILocalVariable(name: "xi", scope: !22, file: !1, line: 63, type: !25)
!52 = !DILocalVariable(name: "yi", scope: !22, file: !1, line: 63, type: !25)
!53 = !DILocalVariable(name: "xi0", scope: !22, file: !1, line: 63, type: !25)
!54 = !DILocalVariable(name: "yi0", scope: !22, file: !1, line: 63, type: !25)
!55 = !DILocalVariable(name: "aij", scope: !22, file: !1, line: 64, type: !25)
!56 = !DILocalVariable(name: "ai", scope: !22, file: !1, line: 64, type: !25)
!57 = !DILocalVariable(name: "incai", scope: !22, file: !1, line: 65, type: !25)
!58 = !DILocalVariable(name: "incaij", scope: !22, file: !1, line: 66, type: !25)
!59 = !DILocalVariable(name: "incaij2", scope: !22, file: !1, line: 66, type: !25)
!60 = !DILocalVariable(name: "a_i", scope: !22, file: !1, line: 68, type: !26)
!61 = !DILocalVariable(name: "x_head_i", scope: !22, file: !1, line: 69, type: !26)
!62 = !DILocalVariable(name: "x_tail_i", scope: !22, file: !1, line: 70, type: !26)
!63 = !DILocalVariable(name: "y_i", scope: !22, file: !1, line: 71, type: !29)
!64 = !DILocalVariable(name: "alpha_i", scope: !22, file: !1, line: 72, type: !14)
!65 = !DILocalVariable(name: "beta_i", scope: !22, file: !1, line: 73, type: !14)
!66 = !DILocalVariable(name: "a_elem", scope: !22, file: !1, line: 74, type: !28)
!67 = !DILocalVariable(name: "x_elem", scope: !22, file: !1, line: 75, type: !28)
!68 = !DILocalVariable(name: "y_elem", scope: !22, file: !1, line: 76, type: !14)
!69 = !DILocalVariable(name: "prod1", scope: !22, file: !1, line: 77, type: !14)
!70 = !DILocalVariable(name: "prod2", scope: !22, file: !1, line: 78, type: !14)
!71 = !DILocalVariable(name: "sum1", scope: !22, file: !1, line: 79, type: !14)
!72 = !DILocalVariable(name: "sum2", scope: !22, file: !1, line: 80, type: !14)
!73 = !DILocalVariable(name: "tmp1", scope: !22, file: !1, line: 81, type: !14)
!74 = !DILocalVariable(name: "tmp2", scope: !22, file: !1, line: 82, type: !14)
!75 = !DILocalVariable(name: "tmp3", scope: !22, file: !1, line: 83, type: !14)
!76 = !{!77, !77, i64 0}
!77 = !{!"omnipotent char", !78, i64 0}
!78 = !{!"Simple C/C++ TBAA"}
!79 = !DILocation(line: 4, column: 43, scope: !22)
!80 = !DILocation(line: 4, column: 70, scope: !22)
!81 = !{!82, !82, i64 0}
!82 = !{!"int", !77, i64 0}
!83 = !DILocation(line: 5, column: 12, scope: !22)
!84 = !{!85, !85, i64 0}
!85 = !{!"double", !77, i64 0}
!86 = !DILocation(line: 5, column: 22, scope: !22)
!87 = !{!88, !88, i64 0}
!88 = !{!"any pointer", !77, i64 0}
!89 = !DILocation(line: 5, column: 42, scope: !22)
!90 = !DILocation(line: 5, column: 49, scope: !22)
!91 = !DILocation(line: 6, column: 21, scope: !22)
!92 = !DILocation(line: 6, column: 42, scope: !22)
!93 = !DILocation(line: 6, column: 54, scope: !22)
!94 = !DILocation(line: 7, column: 15, scope: !22)
!95 = !DILocation(line: 7, column: 29, scope: !22)
!96 = !DILocation(line: 7, column: 36, scope: !22)
!97 = !DILocation(line: 60, column: 3, scope: !22)
!98 = !DILocation(line: 60, column: 14, scope: !22)
!99 = !DILocation(line: 62, column: 3, scope: !22)
!100 = !DILocation(line: 62, column: 7, scope: !22)
!101 = !DILocation(line: 62, column: 10, scope: !22)
!102 = !DILocation(line: 63, column: 3, scope: !22)
!103 = !DILocation(line: 63, column: 7, scope: !22)
!104 = !DILocation(line: 63, column: 11, scope: !22)
!105 = !DILocation(line: 63, column: 15, scope: !22)
!106 = !DILocation(line: 63, column: 20, scope: !22)
!107 = !DILocation(line: 64, column: 3, scope: !22)
!108 = !DILocation(line: 64, column: 7, scope: !22)
!109 = !DILocation(line: 64, column: 12, scope: !22)
!110 = !DILocation(line: 65, column: 3, scope: !22)
!111 = !DILocation(line: 65, column: 7, scope: !22)
!112 = !DILocation(line: 66, column: 3, scope: !22)
!113 = !DILocation(line: 66, column: 7, scope: !22)
!114 = !DILocation(line: 66, column: 15, scope: !22)
!115 = !DILocation(line: 68, column: 3, scope: !22)
!116 = !DILocation(line: 68, column: 16, scope: !22)
!117 = !DILocation(line: 68, column: 22, scope: !22)
!118 = !DILocation(line: 69, column: 3, scope: !22)
!119 = !DILocation(line: 69, column: 16, scope: !22)
!120 = !DILocation(line: 69, column: 27, scope: !22)
!121 = !DILocation(line: 70, column: 3, scope: !22)
!122 = !DILocation(line: 70, column: 16, scope: !22)
!123 = !DILocation(line: 70, column: 27, scope: !22)
!124 = !DILocation(line: 71, column: 3, scope: !22)
!125 = !DILocation(line: 71, column: 11, scope: !22)
!126 = !DILocation(line: 71, column: 17, scope: !22)
!127 = !DILocation(line: 72, column: 3, scope: !22)
!128 = !DILocation(line: 72, column: 10, scope: !22)
!129 = !DILocation(line: 72, column: 20, scope: !22)
!130 = !DILocation(line: 73, column: 3, scope: !22)
!131 = !DILocation(line: 73, column: 10, scope: !22)
!132 = !DILocation(line: 73, column: 19, scope: !22)
!133 = !DILocation(line: 74, column: 3, scope: !22)
!134 = !DILocation(line: 74, column: 9, scope: !22)
!135 = !DILocation(line: 75, column: 3, scope: !22)
!136 = !DILocation(line: 75, column: 9, scope: !22)
!137 = !DILocation(line: 76, column: 3, scope: !22)
!138 = !DILocation(line: 76, column: 10, scope: !22)
!139 = !DILocation(line: 77, column: 3, scope: !22)
!140 = !DILocation(line: 77, column: 10, scope: !22)
!141 = !DILocation(line: 78, column: 3, scope: !22)
!142 = !DILocation(line: 78, column: 10, scope: !22)
!143 = !DILocation(line: 79, column: 3, scope: !22)
!144 = !DILocation(line: 79, column: 10, scope: !22)
!145 = !DILocation(line: 80, column: 3, scope: !22)
!146 = !DILocation(line: 80, column: 10, scope: !22)
!147 = !DILocation(line: 81, column: 3, scope: !22)
!148 = !DILocation(line: 81, column: 10, scope: !22)
!149 = !DILocation(line: 82, column: 3, scope: !22)
!150 = !DILocation(line: 82, column: 10, scope: !22)
!151 = !DILocation(line: 83, column: 3, scope: !22)
!152 = !DILocation(line: 83, column: 10, scope: !22)
!153 = !DILocation(line: 88, column: 7, scope: !154)
!154 = distinct !DILexicalBlock(scope: !22, file: !1, line: 88, column: 7)
!155 = !DILocation(line: 88, column: 9, scope: !154)
!156 = !DILocation(line: 88, column: 7, scope: !22)
!157 = !DILocation(line: 89, column: 5, scope: !158)
!158 = distinct !DILexicalBlock(scope: !154, file: !1, line: 88, column: 15)
!159 = !DILocation(line: 91, column: 7, scope: !160)
!160 = distinct !DILexicalBlock(scope: !22, file: !1, line: 91, column: 7)
!161 = !DILocation(line: 91, column: 15, scope: !160)
!162 = !DILocation(line: 91, column: 22, scope: !160)
!163 = !DILocation(line: 91, column: 25, scope: !160)
!164 = !DILocation(line: 91, column: 32, scope: !160)
!165 = !DILocation(line: 91, column: 7, scope: !22)
!166 = !DILocation(line: 92, column: 5, scope: !167)
!167 = distinct !DILexicalBlock(scope: !160, file: !1, line: 91, column: 40)
!168 = !DILocation(line: 96, column: 7, scope: !169)
!169 = distinct !DILexicalBlock(scope: !22, file: !1, line: 96, column: 7)
!170 = !DILocation(line: 96, column: 9, scope: !169)
!171 = !DILocation(line: 96, column: 7, scope: !22)
!172 = !DILocation(line: 97, column: 16, scope: !173)
!173 = distinct !DILexicalBlock(scope: !169, file: !1, line: 96, column: 14)
!174 = !DILocation(line: 97, column: 34, scope: !173)
!175 = !DILocation(line: 97, column: 5, scope: !173)
!176 = !DILocation(line: 98, column: 3, scope: !173)
!177 = !DILocation(line: 99, column: 7, scope: !178)
!178 = distinct !DILexicalBlock(scope: !22, file: !1, line: 99, column: 7)
!179 = !DILocation(line: 99, column: 13, scope: !178)
!180 = !DILocation(line: 99, column: 11, scope: !178)
!181 = !DILocation(line: 99, column: 7, scope: !22)
!182 = !DILocation(line: 100, column: 16, scope: !183)
!183 = distinct !DILexicalBlock(scope: !178, file: !1, line: 99, column: 16)
!184 = !DILocation(line: 100, column: 34, scope: !183)
!185 = !DILocation(line: 100, column: 5, scope: !183)
!186 = !DILocation(line: 101, column: 3, scope: !183)
!187 = !DILocation(line: 102, column: 7, scope: !188)
!188 = distinct !DILexicalBlock(scope: !22, file: !1, line: 102, column: 7)
!189 = !DILocation(line: 102, column: 12, scope: !188)
!190 = !DILocation(line: 102, column: 7, scope: !22)
!191 = !DILocation(line: 103, column: 16, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !1, line: 102, column: 18)
!193 = !DILocation(line: 103, column: 34, scope: !192)
!194 = !DILocation(line: 103, column: 5, scope: !192)
!195 = !DILocation(line: 104, column: 3, scope: !192)
!196 = !DILocation(line: 105, column: 7, scope: !197)
!197 = distinct !DILexicalBlock(scope: !22, file: !1, line: 105, column: 7)
!198 = !DILocation(line: 105, column: 12, scope: !197)
!199 = !DILocation(line: 105, column: 7, scope: !22)
!200 = !DILocation(line: 106, column: 16, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !1, line: 105, column: 18)
!202 = !DILocation(line: 106, column: 35, scope: !201)
!203 = !DILocation(line: 106, column: 5, scope: !201)
!204 = !DILocation(line: 107, column: 3, scope: !201)
!205 = !DILocation(line: 109, column: 8, scope: !206)
!206 = distinct !DILexicalBlock(scope: !22, file: !1, line: 109, column: 7)
!207 = !DILocation(line: 109, column: 14, scope: !206)
!208 = !DILocation(line: 109, column: 31, scope: !206)
!209 = !DILocation(line: 109, column: 34, scope: !206)
!210 = !DILocation(line: 109, column: 39, scope: !206)
!211 = !DILocation(line: 109, column: 54, scope: !206)
!212 = !DILocation(line: 110, column: 8, scope: !206)
!213 = !DILocation(line: 110, column: 14, scope: !206)
!214 = !DILocation(line: 110, column: 31, scope: !206)
!215 = !DILocation(line: 110, column: 34, scope: !206)
!216 = !DILocation(line: 110, column: 39, scope: !206)
!217 = !DILocation(line: 109, column: 7, scope: !22)
!218 = !DILocation(line: 111, column: 13, scope: !219)
!219 = distinct !DILexicalBlock(scope: !206, file: !1, line: 110, column: 55)
!220 = !DILocation(line: 111, column: 11, scope: !219)
!221 = !DILocation(line: 112, column: 12, scope: !219)
!222 = !DILocation(line: 113, column: 15, scope: !219)
!223 = !DILocation(line: 113, column: 13, scope: !219)
!224 = !DILocation(line: 114, column: 3, scope: !219)
!225 = !DILocation(line: 115, column: 11, scope: !226)
!226 = distinct !DILexicalBlock(scope: !206, file: !1, line: 114, column: 10)
!227 = !DILocation(line: 116, column: 14, scope: !226)
!228 = !DILocation(line: 116, column: 12, scope: !226)
!229 = !DILocation(line: 117, column: 13, scope: !226)
!230 = !DILocation(line: 125, column: 10, scope: !22)
!231 = !DILocation(line: 125, column: 15, scope: !22)
!232 = !DILocation(line: 125, column: 9, scope: !22)
!233 = !DILocation(line: 125, column: 29, scope: !22)
!234 = !DILocation(line: 125, column: 28, scope: !22)
!235 = !DILocation(line: 125, column: 31, scope: !22)
!236 = !DILocation(line: 125, column: 38, scope: !22)
!237 = !DILocation(line: 125, column: 36, scope: !22)
!238 = !DILocation(line: 125, column: 7, scope: !22)
!239 = !DILocation(line: 126, column: 10, scope: !22)
!240 = !DILocation(line: 126, column: 15, scope: !22)
!241 = !DILocation(line: 126, column: 9, scope: !22)
!242 = !DILocation(line: 126, column: 29, scope: !22)
!243 = !DILocation(line: 126, column: 28, scope: !22)
!244 = !DILocation(line: 126, column: 31, scope: !22)
!245 = !DILocation(line: 126, column: 38, scope: !22)
!246 = !DILocation(line: 126, column: 36, scope: !22)
!247 = !DILocation(line: 126, column: 7, scope: !22)
!248 = !DILocation(line: 131, column: 10, scope: !249)
!249 = distinct !DILexicalBlock(scope: !22, file: !1, line: 131, column: 3)
!250 = !DILocation(line: 131, column: 20, scope: !249)
!251 = !DILocation(line: 131, column: 18, scope: !249)
!252 = !DILocation(line: 131, column: 28, scope: !249)
!253 = !DILocation(line: 131, column: 8, scope: !249)
!254 = !DILocation(line: 131, column: 33, scope: !255)
!255 = distinct !DILexicalBlock(scope: !249, file: !1, line: 131, column: 3)
!256 = !DILocation(line: 131, column: 37, scope: !255)
!257 = !DILocation(line: 131, column: 35, scope: !255)
!258 = !DILocation(line: 131, column: 3, scope: !249)
!259 = !DILocation(line: 132, column: 10, scope: !260)
!260 = distinct !DILexicalBlock(scope: !255, file: !1, line: 131, column: 70)
!261 = !DILocation(line: 133, column: 10, scope: !260)
!262 = !DILocation(line: 135, column: 12, scope: !263)
!263 = distinct !DILexicalBlock(scope: !260, file: !1, line: 135, column: 5)
!264 = !DILocation(line: 135, column: 23, scope: !263)
!265 = !DILocation(line: 135, column: 21, scope: !263)
!266 = !DILocation(line: 135, column: 32, scope: !263)
!267 = !DILocation(line: 135, column: 30, scope: !263)
!268 = !DILocation(line: 135, column: 10, scope: !263)
!269 = !DILocation(line: 135, column: 37, scope: !270)
!270 = distinct !DILexicalBlock(scope: !263, file: !1, line: 135, column: 5)
!271 = !DILocation(line: 135, column: 41, scope: !270)
!272 = !DILocation(line: 135, column: 39, scope: !270)
!273 = !DILocation(line: 135, column: 5, scope: !263)
!274 = !DILocation(line: 136, column: 16, scope: !275)
!275 = distinct !DILexicalBlock(scope: !270, file: !1, line: 135, column: 76)
!276 = !DILocation(line: 136, column: 20, scope: !275)
!277 = !{!278, !278, i64 0}
!278 = !{!"float", !77, i64 0}
!279 = !DILocation(line: 136, column: 14, scope: !275)
!280 = !DILocation(line: 137, column: 16, scope: !275)
!281 = !DILocation(line: 137, column: 25, scope: !275)
!282 = !DILocation(line: 137, column: 14, scope: !275)
!283 = !DILocation(line: 138, column: 24, scope: !275)
!284 = !DILocation(line: 138, column: 15, scope: !275)
!285 = !DILocation(line: 138, column: 32, scope: !275)
!286 = !DILocation(line: 138, column: 31, scope: !275)
!287 = !DILocation(line: 138, column: 13, scope: !275)
!288 = !DILocation(line: 139, column: 14, scope: !275)
!289 = !DILocation(line: 139, column: 21, scope: !275)
!290 = !DILocation(line: 139, column: 19, scope: !275)
!291 = !DILocation(line: 139, column: 12, scope: !275)
!292 = !DILocation(line: 140, column: 16, scope: !275)
!293 = !DILocation(line: 140, column: 25, scope: !275)
!294 = !DILocation(line: 140, column: 14, scope: !275)
!295 = !DILocation(line: 141, column: 24, scope: !275)
!296 = !DILocation(line: 141, column: 15, scope: !275)
!297 = !DILocation(line: 141, column: 32, scope: !275)
!298 = !DILocation(line: 141, column: 31, scope: !275)
!299 = !DILocation(line: 141, column: 13, scope: !275)
!300 = !DILocation(line: 142, column: 14, scope: !275)
!301 = !DILocation(line: 142, column: 21, scope: !275)
!302 = !DILocation(line: 142, column: 19, scope: !275)
!303 = !DILocation(line: 142, column: 12, scope: !275)
!304 = !DILocation(line: 143, column: 5, scope: !275)
!305 = !DILocation(line: 135, column: 45, scope: !270)
!306 = !DILocation(line: 135, column: 56, scope: !270)
!307 = !DILocation(line: 135, column: 53, scope: !270)
!308 = !DILocation(line: 135, column: 70, scope: !270)
!309 = !DILocation(line: 135, column: 67, scope: !270)
!310 = !DILocation(line: 135, column: 5, scope: !270)
!311 = distinct !{!311, !273, !312, !313}
!312 = !DILocation(line: 143, column: 5, scope: !263)
!313 = !{!"llvm.loop.mustprogress"}
!314 = !DILocation(line: 144, column: 5, scope: !260)
!315 = !DILocation(line: 144, column: 12, scope: !316)
!316 = distinct !DILexicalBlock(scope: !317, file: !1, line: 144, column: 5)
!317 = distinct !DILexicalBlock(scope: !260, file: !1, line: 144, column: 5)
!318 = !DILocation(line: 144, column: 16, scope: !316)
!319 = !DILocation(line: 144, column: 14, scope: !316)
!320 = !DILocation(line: 144, column: 5, scope: !317)
!321 = !DILocation(line: 145, column: 16, scope: !322)
!322 = distinct !DILexicalBlock(scope: !316, file: !1, line: 144, column: 52)
!323 = !DILocation(line: 145, column: 20, scope: !322)
!324 = !DILocation(line: 145, column: 14, scope: !322)
!325 = !DILocation(line: 146, column: 16, scope: !322)
!326 = !DILocation(line: 146, column: 25, scope: !322)
!327 = !DILocation(line: 146, column: 14, scope: !322)
!328 = !DILocation(line: 147, column: 24, scope: !322)
!329 = !DILocation(line: 147, column: 15, scope: !322)
!330 = !DILocation(line: 147, column: 32, scope: !322)
!331 = !DILocation(line: 147, column: 31, scope: !322)
!332 = !DILocation(line: 147, column: 13, scope: !322)
!333 = !DILocation(line: 148, column: 14, scope: !322)
!334 = !DILocation(line: 148, column: 21, scope: !322)
!335 = !DILocation(line: 148, column: 19, scope: !322)
!336 = !DILocation(line: 148, column: 12, scope: !322)
!337 = !DILocation(line: 149, column: 16, scope: !322)
!338 = !DILocation(line: 149, column: 25, scope: !322)
!339 = !DILocation(line: 149, column: 14, scope: !322)
!340 = !DILocation(line: 150, column: 24, scope: !322)
!341 = !DILocation(line: 150, column: 15, scope: !322)
!342 = !DILocation(line: 150, column: 32, scope: !322)
!343 = !DILocation(line: 150, column: 31, scope: !322)
!344 = !DILocation(line: 150, column: 13, scope: !322)
!345 = !DILocation(line: 151, column: 14, scope: !322)
!346 = !DILocation(line: 151, column: 21, scope: !322)
!347 = !DILocation(line: 151, column: 19, scope: !322)
!348 = !DILocation(line: 151, column: 12, scope: !322)
!349 = !DILocation(line: 152, column: 5, scope: !322)
!350 = !DILocation(line: 144, column: 20, scope: !316)
!351 = !DILocation(line: 144, column: 31, scope: !316)
!352 = !DILocation(line: 144, column: 28, scope: !316)
!353 = !DILocation(line: 144, column: 46, scope: !316)
!354 = !DILocation(line: 144, column: 43, scope: !316)
!355 = !DILocation(line: 144, column: 5, scope: !316)
!356 = distinct !{!356, !320, !357, !313}
!357 = !DILocation(line: 152, column: 5, scope: !317)
!358 = !DILocation(line: 153, column: 12, scope: !260)
!359 = !DILocation(line: 153, column: 19, scope: !260)
!360 = !DILocation(line: 153, column: 17, scope: !260)
!361 = !DILocation(line: 153, column: 10, scope: !260)
!362 = !DILocation(line: 154, column: 12, scope: !260)
!363 = !DILocation(line: 154, column: 19, scope: !260)
!364 = !DILocation(line: 154, column: 17, scope: !260)
!365 = !DILocation(line: 154, column: 10, scope: !260)
!366 = !DILocation(line: 155, column: 14, scope: !260)
!367 = !DILocation(line: 155, column: 18, scope: !260)
!368 = !DILocation(line: 155, column: 12, scope: !260)
!369 = !DILocation(line: 156, column: 12, scope: !260)
!370 = !DILocation(line: 156, column: 21, scope: !260)
!371 = !DILocation(line: 156, column: 19, scope: !260)
!372 = !DILocation(line: 156, column: 10, scope: !260)
!373 = !DILocation(line: 157, column: 12, scope: !260)
!374 = !DILocation(line: 157, column: 19, scope: !260)
!375 = !DILocation(line: 157, column: 17, scope: !260)
!376 = !DILocation(line: 157, column: 10, scope: !260)
!377 = !DILocation(line: 158, column: 15, scope: !260)
!378 = !DILocation(line: 158, column: 5, scope: !260)
!379 = !DILocation(line: 158, column: 9, scope: !260)
!380 = !DILocation(line: 158, column: 13, scope: !260)
!381 = !DILocation(line: 159, column: 3, scope: !260)
!382 = !DILocation(line: 131, column: 41, scope: !255)
!383 = !DILocation(line: 131, column: 51, scope: !255)
!384 = !DILocation(line: 131, column: 48, scope: !255)
!385 = !DILocation(line: 131, column: 63, scope: !255)
!386 = !DILocation(line: 131, column: 60, scope: !255)
!387 = !DILocation(line: 131, column: 3, scope: !255)
!388 = distinct !{!388, !258, !389, !313}
!389 = !DILocation(line: 159, column: 3, scope: !249)
!390 = !DILocation(line: 163, column: 1, scope: !22)
!391 = !DISubprogram(name: "BLAS_error", scope: !392, file: !392, line: 2115, type: !393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!392 = !DIFile(filename: "../blas_extended_proto.h", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/src/symv2", checksumkind: CSK_MD5, checksum: "9e4b28be948e34f7b50a8c545cc4c756")
!393 = !DISubroutineType(types: !394)
!394 = !{null, !395, !25, !25, !396, null}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
