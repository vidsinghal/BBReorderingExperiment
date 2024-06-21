; ModuleID = 'samples/31.bc'
source_filename = "vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__storeu_ps = type { <4 x float> }

; Function Attrs: nounwind uwtable
define hidden void @vq_nbest(ptr noundef %_in, ptr noundef %codebook, i32 noundef %len, i32 noundef %entries, ptr noundef %E, i32 noundef %N, ptr noundef %nbest, ptr noundef %best_dist, ptr noundef %stack) #0 !dbg !22 {
entry:
  %_in.addr = alloca ptr, align 8
  %codebook.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %entries.addr = alloca i32, align 4
  %E.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %nbest.addr = alloca ptr, align 8
  %best_dist.addr = alloca ptr, align 8
  %stack.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %used = alloca i32, align 4
  %half = alloca <4 x float>, align 16
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %d = alloca <4 x float>, align 16
  store ptr %_in, ptr %_in.addr, align 8, !tbaa !68
  tail call void @llvm.dbg.declare(metadata ptr %_in.addr, metadata !39, metadata !DIExpression()), !dbg !72
  store ptr %codebook, ptr %codebook.addr, align 8, !tbaa !68
  tail call void @llvm.dbg.declare(metadata ptr %codebook.addr, metadata !40, metadata !DIExpression()), !dbg !73
  store i32 %len, ptr %len.addr, align 4, !tbaa !74
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !41, metadata !DIExpression()), !dbg !76
  store i32 %entries, ptr %entries.addr, align 4, !tbaa !74
  tail call void @llvm.dbg.declare(metadata ptr %entries.addr, metadata !42, metadata !DIExpression()), !dbg !77
  store ptr %E, ptr %E.addr, align 8, !tbaa !68
  tail call void @llvm.dbg.declare(metadata ptr %E.addr, metadata !43, metadata !DIExpression()), !dbg !78
  store i32 %N, ptr %N.addr, align 4, !tbaa !74
  tail call void @llvm.dbg.declare(metadata ptr %N.addr, metadata !44, metadata !DIExpression()), !dbg !79
  store ptr %nbest, ptr %nbest.addr, align 8, !tbaa !68
  tail call void @llvm.dbg.declare(metadata ptr %nbest.addr, metadata !45, metadata !DIExpression()), !dbg !80
  store ptr %best_dist, ptr %best_dist.addr, align 8, !tbaa !68
  tail call void @llvm.dbg.declare(metadata ptr %best_dist.addr, metadata !46, metadata !DIExpression()), !dbg !81
  store ptr %stack, ptr %stack.addr, align 8, !tbaa !68
  tail call void @llvm.dbg.declare(metadata ptr %stack.addr, metadata !47, metadata !DIExpression()), !dbg !82
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !83
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !48, metadata !DIExpression()), !dbg !84
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6, !dbg !83
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !49, metadata !DIExpression()), !dbg !85
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6, !dbg !83
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !50, metadata !DIExpression()), !dbg !86
  call void @llvm.lifetime.start.p0(i64 4, ptr %used) #6, !dbg !83
  tail call void @llvm.dbg.declare(metadata ptr %used, metadata !51, metadata !DIExpression()), !dbg !87
  call void @llvm.lifetime.start.p0(i64 16, ptr %half) #6, !dbg !88
  tail call void @llvm.dbg.declare(metadata ptr %half, metadata !52, metadata !DIExpression()), !dbg !89
  store i32 0, ptr %used, align 4, !dbg !90, !tbaa !74
  %0 = load i32, ptr %entries.addr, align 4, !dbg !91, !tbaa !74
  %1 = zext i32 %0 to i64, !dbg !91
  %2 = call ptr @llvm.stacksave.p0(), !dbg !91
  store ptr %2, ptr %saved_stack, align 8, !dbg !91
  %vla = alloca float, i64 %1, align 16, !dbg !91
  store i64 %1, ptr %__vla_expr0, align 8, !dbg !91
  tail call void @llvm.dbg.declare(metadata ptr %__vla_expr0, metadata !53, metadata !DIExpression()), !dbg !92
  tail call void @llvm.dbg.declare(metadata ptr %vla, metadata !55, metadata !DIExpression()), !dbg !91
  %call = call <4 x float> @_mm_set_ps1(float noundef 5.000000e-01), !dbg !93
  store <4 x float> %call, ptr %half, align 16, !dbg !94, !tbaa !95
  %3 = load i32, ptr %len.addr, align 4, !dbg !96, !tbaa !74
  %4 = zext i32 %3 to i64, !dbg !96
  %vla1 = alloca <4 x float>, i64 %4, align 16, !dbg !96
  store i64 %4, ptr %__vla_expr1, align 8, !dbg !96
  tail call void @llvm.dbg.declare(metadata ptr %__vla_expr1, metadata !59, metadata !DIExpression()), !dbg !92
  tail call void @llvm.dbg.declare(metadata ptr %vla1, metadata !60, metadata !DIExpression()), !dbg !96
  store i32 0, ptr %i, align 4, !dbg !97, !tbaa !74
  br label %for.cond, !dbg !99

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i, align 4, !dbg !100, !tbaa !74
  %6 = load i32, ptr %len.addr, align 4, !dbg !102, !tbaa !74
  %cmp = icmp slt i32 %5, %6, !dbg !103
  br i1 %cmp, label %for.body, label %for.end, !dbg !104

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %_in.addr, align 8, !dbg !105, !tbaa !68
  %8 = load i32, ptr %i, align 4, !dbg !106, !tbaa !74
  %idxprom = sext i32 %8 to i64, !dbg !105
  %arrayidx = getelementptr inbounds float, ptr %7, i64 %idxprom, !dbg !105
  %9 = load float, ptr %arrayidx, align 4, !dbg !105, !tbaa !107
  %call2 = call <4 x float> @_mm_set_ps1(float noundef %9), !dbg !109
  %10 = load i32, ptr %i, align 4, !dbg !110, !tbaa !74
  %idxprom3 = sext i32 %10 to i64, !dbg !111
  %arrayidx4 = getelementptr inbounds <4 x float>, ptr %vla1, i64 %idxprom3, !dbg !111
  store <4 x float> %call2, ptr %arrayidx4, align 16, !dbg !112, !tbaa !95
  br label %for.inc, !dbg !111

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !dbg !113, !tbaa !74
  %inc = add nsw i32 %11, 1, !dbg !113
  store i32 %inc, ptr %i, align 4, !dbg !113, !tbaa !74
  br label %for.cond, !dbg !114, !llvm.loop !115

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !118, !tbaa !74
  br label %for.cond5, !dbg !119

for.cond5:                                        ; preds = %for.inc21, %for.end
  %12 = load i32, ptr %i, align 4, !dbg !120, !tbaa !74
  %13 = load i32, ptr %entries.addr, align 4, !dbg !121, !tbaa !74
  %shr = ashr i32 %13, 2, !dbg !122
  %cmp6 = icmp slt i32 %12, %shr, !dbg !123
  br i1 %cmp6, label %for.body7, label %for.end23, !dbg !124

for.body7:                                        ; preds = %for.cond5
  call void @llvm.lifetime.start.p0(i64 16, ptr %d) #6, !dbg !125
  tail call void @llvm.dbg.declare(metadata ptr %d, metadata !64, metadata !DIExpression()), !dbg !126
  %14 = load ptr, ptr %E.addr, align 8, !dbg !127, !tbaa !68
  %15 = load i32, ptr %i, align 4, !dbg !128, !tbaa !74
  %idxprom8 = sext i32 %15 to i64, !dbg !127
  %arrayidx9 = getelementptr inbounds <4 x float>, ptr %14, i64 %idxprom8, !dbg !127
  %16 = load <4 x float>, ptr %arrayidx9, align 16, !dbg !127, !tbaa !95
  %17 = load <4 x float>, ptr %half, align 16, !dbg !129, !tbaa !95
  %call10 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %16, <4 x float> noundef %17), !dbg !130
  store <4 x float> %call10, ptr %d, align 16, !dbg !126, !tbaa !95
  store i32 0, ptr %j, align 4, !dbg !131, !tbaa !74
  br label %for.cond11, !dbg !133

for.cond11:                                       ; preds = %for.inc18, %for.body7
  %18 = load i32, ptr %j, align 4, !dbg !134, !tbaa !74
  %19 = load i32, ptr %len.addr, align 4, !dbg !136, !tbaa !74
  %cmp12 = icmp slt i32 %18, %19, !dbg !137
  br i1 %cmp12, label %for.body13, label %for.end20, !dbg !138

for.body13:                                       ; preds = %for.cond11
  %20 = load <4 x float>, ptr %d, align 16, !dbg !139, !tbaa !95
  %21 = load i32, ptr %j, align 4, !dbg !140, !tbaa !74
  %idxprom14 = sext i32 %21 to i64, !dbg !141
  %arrayidx15 = getelementptr inbounds <4 x float>, ptr %vla1, i64 %idxprom14, !dbg !141
  %22 = load <4 x float>, ptr %arrayidx15, align 16, !dbg !141, !tbaa !95
  %23 = load ptr, ptr %codebook.addr, align 8, !dbg !142, !tbaa !68
  %incdec.ptr = getelementptr inbounds <4 x float>, ptr %23, i32 1, !dbg !142
  store ptr %incdec.ptr, ptr %codebook.addr, align 8, !dbg !142, !tbaa !68
  %24 = load <4 x float>, ptr %23, align 16, !dbg !143, !tbaa !95
  %call16 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %22, <4 x float> noundef %24), !dbg !144
  %call17 = call <4 x float> @_mm_sub_ps(<4 x float> noundef %20, <4 x float> noundef %call16), !dbg !145
  store <4 x float> %call17, ptr %d, align 16, !dbg !146, !tbaa !95
  br label %for.inc18, !dbg !147

for.inc18:                                        ; preds = %for.body13
  %25 = load i32, ptr %j, align 4, !dbg !148, !tbaa !74
  %inc19 = add nsw i32 %25, 1, !dbg !148
  store i32 %inc19, ptr %j, align 4, !dbg !148, !tbaa !74
  br label %for.cond11, !dbg !149, !llvm.loop !150

for.end20:                                        ; preds = %for.cond11
  %26 = load i32, ptr %i, align 4, !dbg !152, !tbaa !74
  %mul = mul nsw i32 4, %26, !dbg !153
  %idx.ext = sext i32 %mul to i64, !dbg !154
  %add.ptr = getelementptr inbounds float, ptr %vla, i64 %idx.ext, !dbg !154
  %27 = load <4 x float>, ptr %d, align 16, !dbg !155, !tbaa !95
  call void @_mm_storeu_ps(ptr noundef %add.ptr, <4 x float> noundef %27), !dbg !156
  call void @llvm.lifetime.end.p0(i64 16, ptr %d) #6, !dbg !157
  br label %for.inc21, !dbg !158

for.inc21:                                        ; preds = %for.end20
  %28 = load i32, ptr %i, align 4, !dbg !159, !tbaa !74
  %inc22 = add nsw i32 %28, 1, !dbg !159
  store i32 %inc22, ptr %i, align 4, !dbg !159, !tbaa !74
  br label %for.cond5, !dbg !160, !llvm.loop !161

for.end23:                                        ; preds = %for.cond5
  store i32 0, ptr %i, align 4, !dbg !163, !tbaa !74
  br label %for.cond24, !dbg !165

for.cond24:                                       ; preds = %for.inc63, %for.end23
  %29 = load i32, ptr %i, align 4, !dbg !166, !tbaa !74
  %30 = load i32, ptr %entries.addr, align 4, !dbg !168, !tbaa !74
  %cmp25 = icmp slt i32 %29, %30, !dbg !169
  br i1 %cmp25, label %for.body26, label %for.end65, !dbg !170

for.body26:                                       ; preds = %for.cond24
  %31 = load i32, ptr %i, align 4, !dbg !171, !tbaa !74
  %32 = load i32, ptr %N.addr, align 4, !dbg !174, !tbaa !74
  %cmp27 = icmp slt i32 %31, %32, !dbg !175
  br i1 %cmp27, label %if.then, label %lor.lhs.false, !dbg !176

lor.lhs.false:                                    ; preds = %for.body26
  %33 = load i32, ptr %i, align 4, !dbg !177, !tbaa !74
  %idxprom28 = sext i32 %33 to i64, !dbg !178
  %arrayidx29 = getelementptr inbounds float, ptr %vla, i64 %idxprom28, !dbg !178
  %34 = load float, ptr %arrayidx29, align 4, !dbg !178, !tbaa !107
  %35 = load ptr, ptr %best_dist.addr, align 8, !dbg !179, !tbaa !68
  %36 = load i32, ptr %N.addr, align 4, !dbg !180, !tbaa !74
  %sub = sub nsw i32 %36, 1, !dbg !181
  %idxprom30 = sext i32 %sub to i64, !dbg !179
  %arrayidx31 = getelementptr inbounds float, ptr %35, i64 %idxprom30, !dbg !179
  %37 = load float, ptr %arrayidx31, align 4, !dbg !179, !tbaa !107
  %cmp32 = fcmp olt float %34, %37, !dbg !182
  br i1 %cmp32, label %if.then, label %if.end, !dbg !183

if.then:                                          ; preds = %lor.lhs.false, %for.body26
  %38 = load i32, ptr %N.addr, align 4, !dbg !184, !tbaa !74
  %sub33 = sub nsw i32 %38, 1, !dbg !187
  store i32 %sub33, ptr %k, align 4, !dbg !188, !tbaa !74
  br label %for.cond34, !dbg !189

for.cond34:                                       ; preds = %for.inc54, %if.then
  %39 = load i32, ptr %k, align 4, !dbg !190, !tbaa !74
  %cmp35 = icmp sge i32 %39, 1, !dbg !192
  br i1 %cmp35, label %land.rhs, label %land.end, !dbg !193

land.rhs:                                         ; preds = %for.cond34
  %40 = load i32, ptr %k, align 4, !dbg !194, !tbaa !74
  %41 = load i32, ptr %used, align 4, !dbg !195, !tbaa !74
  %cmp36 = icmp sgt i32 %40, %41, !dbg !196
  br i1 %cmp36, label %lor.end, label %lor.rhs, !dbg !197

lor.rhs:                                          ; preds = %land.rhs
  %42 = load i32, ptr %i, align 4, !dbg !198, !tbaa !74
  %idxprom37 = sext i32 %42 to i64, !dbg !199
  %arrayidx38 = getelementptr inbounds float, ptr %vla, i64 %idxprom37, !dbg !199
  %43 = load float, ptr %arrayidx38, align 4, !dbg !199, !tbaa !107
  %44 = load ptr, ptr %best_dist.addr, align 8, !dbg !200, !tbaa !68
  %45 = load i32, ptr %k, align 4, !dbg !201, !tbaa !74
  %sub39 = sub nsw i32 %45, 1, !dbg !202
  %idxprom40 = sext i32 %sub39 to i64, !dbg !200
  %arrayidx41 = getelementptr inbounds float, ptr %44, i64 %idxprom40, !dbg !200
  %46 = load float, ptr %arrayidx41, align 4, !dbg !200, !tbaa !107
  %cmp42 = fcmp olt float %43, %46, !dbg !203
  br label %lor.end, !dbg !197

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %47 = phi i1 [ true, %land.rhs ], [ %cmp42, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond34
  %48 = phi i1 [ false, %for.cond34 ], [ %47, %lor.end ], !dbg !204
  br i1 %48, label %for.body43, label %for.end55, !dbg !205

for.body43:                                       ; preds = %land.end
  %49 = load ptr, ptr %best_dist.addr, align 8, !dbg !206, !tbaa !68
  %50 = load i32, ptr %k, align 4, !dbg !208, !tbaa !74
  %sub44 = sub nsw i32 %50, 1, !dbg !209
  %idxprom45 = sext i32 %sub44 to i64, !dbg !206
  %arrayidx46 = getelementptr inbounds float, ptr %49, i64 %idxprom45, !dbg !206
  %51 = load float, ptr %arrayidx46, align 4, !dbg !206, !tbaa !107
  %52 = load ptr, ptr %best_dist.addr, align 8, !dbg !210, !tbaa !68
  %53 = load i32, ptr %k, align 4, !dbg !211, !tbaa !74
  %idxprom47 = sext i32 %53 to i64, !dbg !210
  %arrayidx48 = getelementptr inbounds float, ptr %52, i64 %idxprom47, !dbg !210
  store float %51, ptr %arrayidx48, align 4, !dbg !212, !tbaa !107
  %54 = load ptr, ptr %nbest.addr, align 8, !dbg !213, !tbaa !68
  %55 = load i32, ptr %k, align 4, !dbg !214, !tbaa !74
  %sub49 = sub nsw i32 %55, 1, !dbg !215
  %idxprom50 = sext i32 %sub49 to i64, !dbg !213
  %arrayidx51 = getelementptr inbounds i32, ptr %54, i64 %idxprom50, !dbg !213
  %56 = load i32, ptr %arrayidx51, align 4, !dbg !213, !tbaa !74
  %57 = load ptr, ptr %nbest.addr, align 8, !dbg !216, !tbaa !68
  %58 = load i32, ptr %k, align 4, !dbg !217, !tbaa !74
  %idxprom52 = sext i32 %58 to i64, !dbg !216
  %arrayidx53 = getelementptr inbounds i32, ptr %57, i64 %idxprom52, !dbg !216
  store i32 %56, ptr %arrayidx53, align 4, !dbg !218, !tbaa !74
  br label %for.inc54, !dbg !219

for.inc54:                                        ; preds = %for.body43
  %59 = load i32, ptr %k, align 4, !dbg !220, !tbaa !74
  %dec = add nsw i32 %59, -1, !dbg !220
  store i32 %dec, ptr %k, align 4, !dbg !220, !tbaa !74
  br label %for.cond34, !dbg !221, !llvm.loop !222

for.end55:                                        ; preds = %land.end
  %60 = load i32, ptr %i, align 4, !dbg !224, !tbaa !74
  %idxprom56 = sext i32 %60 to i64, !dbg !225
  %arrayidx57 = getelementptr inbounds float, ptr %vla, i64 %idxprom56, !dbg !225
  %61 = load float, ptr %arrayidx57, align 4, !dbg !225, !tbaa !107
  %62 = load ptr, ptr %best_dist.addr, align 8, !dbg !226, !tbaa !68
  %63 = load i32, ptr %k, align 4, !dbg !227, !tbaa !74
  %idxprom58 = sext i32 %63 to i64, !dbg !226
  %arrayidx59 = getelementptr inbounds float, ptr %62, i64 %idxprom58, !dbg !226
  store float %61, ptr %arrayidx59, align 4, !dbg !228, !tbaa !107
  %64 = load i32, ptr %i, align 4, !dbg !229, !tbaa !74
  %65 = load ptr, ptr %nbest.addr, align 8, !dbg !230, !tbaa !68
  %66 = load i32, ptr %k, align 4, !dbg !231, !tbaa !74
  %idxprom60 = sext i32 %66 to i64, !dbg !230
  %arrayidx61 = getelementptr inbounds i32, ptr %65, i64 %idxprom60, !dbg !230
  store i32 %64, ptr %arrayidx61, align 4, !dbg !232, !tbaa !74
  %67 = load i32, ptr %used, align 4, !dbg !233, !tbaa !74
  %inc62 = add nsw i32 %67, 1, !dbg !233
  store i32 %inc62, ptr %used, align 4, !dbg !233, !tbaa !74
  br label %if.end, !dbg !234

if.end:                                           ; preds = %for.end55, %lor.lhs.false
  br label %for.inc63, !dbg !235

for.inc63:                                        ; preds = %if.end
  %68 = load i32, ptr %i, align 4, !dbg !236, !tbaa !74
  %inc64 = add nsw i32 %68, 1, !dbg !236
  store i32 %inc64, ptr %i, align 4, !dbg !236, !tbaa !74
  br label %for.cond24, !dbg !237, !llvm.loop !238

for.end65:                                        ; preds = %for.cond24
  %69 = load ptr, ptr %saved_stack, align 8, !dbg !240
  call void @llvm.stackrestore.p0(ptr %69), !dbg !240
  call void @llvm.lifetime.end.p0(i64 16, ptr %half) #6, !dbg !240
  call void @llvm.lifetime.end.p0(i64 4, ptr %used) #6, !dbg !240
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6, !dbg !240
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6, !dbg !240
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !240
  ret void, !dbg !240
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_set_ps1(float noundef %__w) #3 {
entry:
  %__w.addr = alloca float, align 4
  store float %__w, ptr %__w.addr, align 4, !tbaa !107
  %0 = load float, ptr %__w.addr, align 4, !tbaa !107
  %call = call <4 x float> @_mm_set1_ps(float noundef %0)
  ret <4 x float> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_mul_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !95
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !95
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !95
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !95
  %mul = fmul <4 x float> %0, %1
  ret <4 x float> %mul
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_sub_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !95
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !95
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !95
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !95
  %sub = fsub <4 x float> %0, %1
  ret <4 x float> %sub
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storeu_ps(ptr noundef %__p, <4 x float> noundef %__a) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !68
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !95
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !95
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !68
  %__v = getelementptr inbounds %struct.__storeu_ps, ptr %1, i32 0, i32 0
  store <4 x float> %0, ptr %__v, align 1, !tbaa !95
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #2

; Function Attrs: nounwind uwtable
define hidden void @vq_nbest_sign(ptr noundef %_in, ptr noundef %codebook, i32 noundef %len, i32 noundef %entries, ptr noundef %E, i32 noundef %N, ptr noundef %nbest, ptr noundef %best_dist, ptr noundef %stack) #0 !dbg !241 {
entry:
  %_in.addr = alloca ptr, align 8
  %codebook.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %entries.addr = alloca i32, align 4
  %E.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %nbest.addr = alloca ptr, align 8
  %best_dist.addr = alloca ptr, align 8
  %stack.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %used = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %d = alloca <4 x float>, align 16
  %sign = alloca i32, align 4
  store ptr %_in, ptr %_in.addr, align 8, !tbaa !68
  tail call void @llvm.dbg.declare(metadata ptr %_in.addr, metadata !243, metadata !DIExpression()), !dbg !274
  store ptr %codebook, ptr %codebook.addr, align 8, !tbaa !68
  tail call void @llvm.dbg.declare(metadata ptr %codebook.addr, metadata !244, metadata !DIExpression()), !dbg !275
  store i32 %len, ptr %len.addr, align 4, !tbaa !74
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !245, metadata !DIExpression()), !dbg !276
  store i32 %entries, ptr %entries.addr, align 4, !tbaa !74
  tail call void @llvm.dbg.declare(metadata ptr %entries.addr, metadata !246, metadata !DIExpression()), !dbg !277
  store ptr %E, ptr %E.addr, align 8, !tbaa !68
  tail call void @llvm.dbg.declare(metadata ptr %E.addr, metadata !247, metadata !DIExpression()), !dbg !278
  store i32 %N, ptr %N.addr, align 4, !tbaa !74
  tail call void @llvm.dbg.declare(metadata ptr %N.addr, metadata !248, metadata !DIExpression()), !dbg !279
  store ptr %nbest, ptr %nbest.addr, align 8, !tbaa !68
  tail call void @llvm.dbg.declare(metadata ptr %nbest.addr, metadata !249, metadata !DIExpression()), !dbg !280
  store ptr %best_dist, ptr %best_dist.addr, align 8, !tbaa !68
  tail call void @llvm.dbg.declare(metadata ptr %best_dist.addr, metadata !250, metadata !DIExpression()), !dbg !281
  store ptr %stack, ptr %stack.addr, align 8, !tbaa !68
  tail call void @llvm.dbg.declare(metadata ptr %stack.addr, metadata !251, metadata !DIExpression()), !dbg !282
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !283
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !252, metadata !DIExpression()), !dbg !284
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6, !dbg !283
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !253, metadata !DIExpression()), !dbg !285
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6, !dbg !283
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !254, metadata !DIExpression()), !dbg !286
  call void @llvm.lifetime.start.p0(i64 4, ptr %used) #6, !dbg !283
  tail call void @llvm.dbg.declare(metadata ptr %used, metadata !255, metadata !DIExpression()), !dbg !287
  store i32 0, ptr %used, align 4, !dbg !288, !tbaa !74
  %0 = load i32, ptr %entries.addr, align 4, !dbg !289, !tbaa !74
  %1 = zext i32 %0 to i64, !dbg !289
  %2 = call ptr @llvm.stacksave.p0(), !dbg !289
  store ptr %2, ptr %saved_stack, align 8, !dbg !289
  %vla = alloca float, i64 %1, align 16, !dbg !289
  store i64 %1, ptr %__vla_expr0, align 8, !dbg !289
  tail call void @llvm.dbg.declare(metadata ptr %__vla_expr0, metadata !256, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.declare(metadata ptr %vla, metadata !257, metadata !DIExpression()), !dbg !289
  %3 = load i32, ptr %len.addr, align 4, !dbg !291, !tbaa !74
  %4 = zext i32 %3 to i64, !dbg !291
  %vla1 = alloca <4 x float>, i64 %4, align 16, !dbg !291
  store i64 %4, ptr %__vla_expr1, align 8, !dbg !291
  tail call void @llvm.dbg.declare(metadata ptr %__vla_expr1, metadata !261, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.declare(metadata ptr %vla1, metadata !262, metadata !DIExpression()), !dbg !291
  store i32 0, ptr %i, align 4, !dbg !292, !tbaa !74
  br label %for.cond, !dbg !294

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i, align 4, !dbg !295, !tbaa !74
  %6 = load i32, ptr %len.addr, align 4, !dbg !297, !tbaa !74
  %cmp = icmp slt i32 %5, %6, !dbg !298
  br i1 %cmp, label %for.body, label %for.end, !dbg !299

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %_in.addr, align 8, !dbg !300, !tbaa !68
  %8 = load i32, ptr %i, align 4, !dbg !301, !tbaa !74
  %idxprom = sext i32 %8 to i64, !dbg !300
  %arrayidx = getelementptr inbounds float, ptr %7, i64 %idxprom, !dbg !300
  %9 = load float, ptr %arrayidx, align 4, !dbg !300, !tbaa !107
  %call = call <4 x float> @_mm_set_ps1(float noundef %9), !dbg !302
  %10 = load i32, ptr %i, align 4, !dbg !303, !tbaa !74
  %idxprom2 = sext i32 %10 to i64, !dbg !304
  %arrayidx3 = getelementptr inbounds <4 x float>, ptr %vla1, i64 %idxprom2, !dbg !304
  store <4 x float> %call, ptr %arrayidx3, align 16, !dbg !305, !tbaa !95
  br label %for.inc, !dbg !304

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !dbg !306, !tbaa !74
  %inc = add nsw i32 %11, 1, !dbg !306
  store i32 %inc, ptr %i, align 4, !dbg !306, !tbaa !74
  br label %for.cond, !dbg !307, !llvm.loop !308

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !310, !tbaa !74
  br label %for.cond4, !dbg !311

for.cond4:                                        ; preds = %for.inc18, %for.end
  %12 = load i32, ptr %i, align 4, !dbg !312, !tbaa !74
  %13 = load i32, ptr %entries.addr, align 4, !dbg !313, !tbaa !74
  %shr = ashr i32 %13, 2, !dbg !314
  %cmp5 = icmp slt i32 %12, %shr, !dbg !315
  br i1 %cmp5, label %for.body6, label %for.end20, !dbg !316

for.body6:                                        ; preds = %for.cond4
  call void @llvm.lifetime.start.p0(i64 16, ptr %d) #6, !dbg !317
  tail call void @llvm.dbg.declare(metadata ptr %d, metadata !266, metadata !DIExpression()), !dbg !318
  %call7 = call <4 x float> @_mm_setzero_ps(), !dbg !319
  store <4 x float> %call7, ptr %d, align 16, !dbg !318, !tbaa !95
  store i32 0, ptr %j, align 4, !dbg !320, !tbaa !74
  br label %for.cond8, !dbg !322

for.cond8:                                        ; preds = %for.inc15, %for.body6
  %14 = load i32, ptr %j, align 4, !dbg !323, !tbaa !74
  %15 = load i32, ptr %len.addr, align 4, !dbg !325, !tbaa !74
  %cmp9 = icmp slt i32 %14, %15, !dbg !326
  br i1 %cmp9, label %for.body10, label %for.end17, !dbg !327

for.body10:                                       ; preds = %for.cond8
  %16 = load <4 x float>, ptr %d, align 16, !dbg !328, !tbaa !95
  %17 = load i32, ptr %j, align 4, !dbg !329, !tbaa !74
  %idxprom11 = sext i32 %17 to i64, !dbg !330
  %arrayidx12 = getelementptr inbounds <4 x float>, ptr %vla1, i64 %idxprom11, !dbg !330
  %18 = load <4 x float>, ptr %arrayidx12, align 16, !dbg !330, !tbaa !95
  %19 = load ptr, ptr %codebook.addr, align 8, !dbg !331, !tbaa !68
  %incdec.ptr = getelementptr inbounds <4 x float>, ptr %19, i32 1, !dbg !331
  store ptr %incdec.ptr, ptr %codebook.addr, align 8, !dbg !331, !tbaa !68
  %20 = load <4 x float>, ptr %19, align 16, !dbg !332, !tbaa !95
  %call13 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %18, <4 x float> noundef %20), !dbg !333
  %call14 = call <4 x float> @_mm_add_ps(<4 x float> noundef %16, <4 x float> noundef %call13), !dbg !334
  store <4 x float> %call14, ptr %d, align 16, !dbg !335, !tbaa !95
  br label %for.inc15, !dbg !336

for.inc15:                                        ; preds = %for.body10
  %21 = load i32, ptr %j, align 4, !dbg !337, !tbaa !74
  %inc16 = add nsw i32 %21, 1, !dbg !337
  store i32 %inc16, ptr %j, align 4, !dbg !337, !tbaa !74
  br label %for.cond8, !dbg !338, !llvm.loop !339

for.end17:                                        ; preds = %for.cond8
  %22 = load i32, ptr %i, align 4, !dbg !341, !tbaa !74
  %mul = mul nsw i32 4, %22, !dbg !342
  %idx.ext = sext i32 %mul to i64, !dbg !343
  %add.ptr = getelementptr inbounds float, ptr %vla, i64 %idx.ext, !dbg !343
  %23 = load <4 x float>, ptr %d, align 16, !dbg !344, !tbaa !95
  call void @_mm_storeu_ps(ptr noundef %add.ptr, <4 x float> noundef %23), !dbg !345
  call void @llvm.lifetime.end.p0(i64 16, ptr %d) #6, !dbg !346
  br label %for.inc18, !dbg !347

for.inc18:                                        ; preds = %for.end17
  %24 = load i32, ptr %i, align 4, !dbg !348, !tbaa !74
  %inc19 = add nsw i32 %24, 1, !dbg !348
  store i32 %inc19, ptr %i, align 4, !dbg !348, !tbaa !74
  br label %for.cond4, !dbg !349, !llvm.loop !350

for.end20:                                        ; preds = %for.cond4
  store i32 0, ptr %i, align 4, !dbg !352, !tbaa !74
  br label %for.cond21, !dbg !353

for.cond21:                                       ; preds = %for.inc78, %for.end20
  %25 = load i32, ptr %i, align 4, !dbg !354, !tbaa !74
  %26 = load i32, ptr %entries.addr, align 4, !dbg !355, !tbaa !74
  %cmp22 = icmp slt i32 %25, %26, !dbg !356
  br i1 %cmp22, label %for.body23, label %for.end80, !dbg !357

for.body23:                                       ; preds = %for.cond21
  call void @llvm.lifetime.start.p0(i64 4, ptr %sign) #6, !dbg !358
  tail call void @llvm.dbg.declare(metadata ptr %sign, metadata !270, metadata !DIExpression()), !dbg !359
  %27 = load i32, ptr %i, align 4, !dbg !360, !tbaa !74
  %idxprom24 = sext i32 %27 to i64, !dbg !362
  %arrayidx25 = getelementptr inbounds float, ptr %vla, i64 %idxprom24, !dbg !362
  %28 = load float, ptr %arrayidx25, align 4, !dbg !362, !tbaa !107
  %cmp26 = fcmp ogt float %28, 0.000000e+00, !dbg !363
  br i1 %cmp26, label %if.then, label %if.else, !dbg !364

if.then:                                          ; preds = %for.body23
  store i32 0, ptr %sign, align 4, !dbg !365, !tbaa !74
  %29 = load i32, ptr %i, align 4, !dbg !367, !tbaa !74
  %idxprom27 = sext i32 %29 to i64, !dbg !368
  %arrayidx28 = getelementptr inbounds float, ptr %vla, i64 %idxprom27, !dbg !368
  %30 = load float, ptr %arrayidx28, align 4, !dbg !368, !tbaa !107
  %fneg = fneg float %30, !dbg !369
  %31 = load i32, ptr %i, align 4, !dbg !370, !tbaa !74
  %idxprom29 = sext i32 %31 to i64, !dbg !371
  %arrayidx30 = getelementptr inbounds float, ptr %vla, i64 %idxprom29, !dbg !371
  store float %fneg, ptr %arrayidx30, align 4, !dbg !372, !tbaa !107
  br label %if.end, !dbg !373

if.else:                                          ; preds = %for.body23
  store i32 1, ptr %sign, align 4, !dbg !374, !tbaa !74
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %32 = load ptr, ptr %E.addr, align 8, !dbg !376, !tbaa !68
  %33 = load i32, ptr %i, align 4, !dbg !377, !tbaa !74
  %idxprom31 = sext i32 %33 to i64, !dbg !378
  %arrayidx32 = getelementptr inbounds float, ptr %32, i64 %idxprom31, !dbg !378
  %34 = load float, ptr %arrayidx32, align 4, !dbg !378, !tbaa !107
  %35 = load i32, ptr %i, align 4, !dbg !379, !tbaa !74
  %idxprom34 = sext i32 %35 to i64, !dbg !380
  %arrayidx35 = getelementptr inbounds float, ptr %vla, i64 %idxprom34, !dbg !380
  %36 = load float, ptr %arrayidx35, align 4, !dbg !381, !tbaa !107
  %37 = call float @llvm.fmuladd.f32(float 5.000000e-01, float %34, float %36), !dbg !381
  store float %37, ptr %arrayidx35, align 4, !dbg !381, !tbaa !107
  %38 = load i32, ptr %i, align 4, !dbg !382, !tbaa !74
  %39 = load i32, ptr %N.addr, align 4, !dbg !384, !tbaa !74
  %cmp36 = icmp slt i32 %38, %39, !dbg !385
  br i1 %cmp36, label %if.then42, label %lor.lhs.false, !dbg !386

lor.lhs.false:                                    ; preds = %if.end
  %40 = load i32, ptr %i, align 4, !dbg !387, !tbaa !74
  %idxprom37 = sext i32 %40 to i64, !dbg !388
  %arrayidx38 = getelementptr inbounds float, ptr %vla, i64 %idxprom37, !dbg !388
  %41 = load float, ptr %arrayidx38, align 4, !dbg !388, !tbaa !107
  %42 = load ptr, ptr %best_dist.addr, align 8, !dbg !389, !tbaa !68
  %43 = load i32, ptr %N.addr, align 4, !dbg !390, !tbaa !74
  %sub = sub nsw i32 %43, 1, !dbg !391
  %idxprom39 = sext i32 %sub to i64, !dbg !389
  %arrayidx40 = getelementptr inbounds float, ptr %42, i64 %idxprom39, !dbg !389
  %44 = load float, ptr %arrayidx40, align 4, !dbg !389, !tbaa !107
  %cmp41 = fcmp olt float %41, %44, !dbg !392
  br i1 %cmp41, label %if.then42, label %if.end77, !dbg !393

if.then42:                                        ; preds = %lor.lhs.false, %if.end
  %45 = load i32, ptr %N.addr, align 4, !dbg !394, !tbaa !74
  %sub43 = sub nsw i32 %45, 1, !dbg !397
  store i32 %sub43, ptr %k, align 4, !dbg !398, !tbaa !74
  br label %for.cond44, !dbg !399

for.cond44:                                       ; preds = %for.inc64, %if.then42
  %46 = load i32, ptr %k, align 4, !dbg !400, !tbaa !74
  %cmp45 = icmp sge i32 %46, 1, !dbg !402
  br i1 %cmp45, label %land.rhs, label %land.end, !dbg !403

land.rhs:                                         ; preds = %for.cond44
  %47 = load i32, ptr %k, align 4, !dbg !404, !tbaa !74
  %48 = load i32, ptr %used, align 4, !dbg !405, !tbaa !74
  %cmp46 = icmp sgt i32 %47, %48, !dbg !406
  br i1 %cmp46, label %lor.end, label %lor.rhs, !dbg !407

lor.rhs:                                          ; preds = %land.rhs
  %49 = load i32, ptr %i, align 4, !dbg !408, !tbaa !74
  %idxprom47 = sext i32 %49 to i64, !dbg !409
  %arrayidx48 = getelementptr inbounds float, ptr %vla, i64 %idxprom47, !dbg !409
  %50 = load float, ptr %arrayidx48, align 4, !dbg !409, !tbaa !107
  %51 = load ptr, ptr %best_dist.addr, align 8, !dbg !410, !tbaa !68
  %52 = load i32, ptr %k, align 4, !dbg !411, !tbaa !74
  %sub49 = sub nsw i32 %52, 1, !dbg !412
  %idxprom50 = sext i32 %sub49 to i64, !dbg !410
  %arrayidx51 = getelementptr inbounds float, ptr %51, i64 %idxprom50, !dbg !410
  %53 = load float, ptr %arrayidx51, align 4, !dbg !410, !tbaa !107
  %cmp52 = fcmp olt float %50, %53, !dbg !413
  br label %lor.end, !dbg !407

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %54 = phi i1 [ true, %land.rhs ], [ %cmp52, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond44
  %55 = phi i1 [ false, %for.cond44 ], [ %54, %lor.end ], !dbg !414
  br i1 %55, label %for.body53, label %for.end65, !dbg !415

for.body53:                                       ; preds = %land.end
  %56 = load ptr, ptr %best_dist.addr, align 8, !dbg !416, !tbaa !68
  %57 = load i32, ptr %k, align 4, !dbg !418, !tbaa !74
  %sub54 = sub nsw i32 %57, 1, !dbg !419
  %idxprom55 = sext i32 %sub54 to i64, !dbg !416
  %arrayidx56 = getelementptr inbounds float, ptr %56, i64 %idxprom55, !dbg !416
  %58 = load float, ptr %arrayidx56, align 4, !dbg !416, !tbaa !107
  %59 = load ptr, ptr %best_dist.addr, align 8, !dbg !420, !tbaa !68
  %60 = load i32, ptr %k, align 4, !dbg !421, !tbaa !74
  %idxprom57 = sext i32 %60 to i64, !dbg !420
  %arrayidx58 = getelementptr inbounds float, ptr %59, i64 %idxprom57, !dbg !420
  store float %58, ptr %arrayidx58, align 4, !dbg !422, !tbaa !107
  %61 = load ptr, ptr %nbest.addr, align 8, !dbg !423, !tbaa !68
  %62 = load i32, ptr %k, align 4, !dbg !424, !tbaa !74
  %sub59 = sub nsw i32 %62, 1, !dbg !425
  %idxprom60 = sext i32 %sub59 to i64, !dbg !423
  %arrayidx61 = getelementptr inbounds i32, ptr %61, i64 %idxprom60, !dbg !423
  %63 = load i32, ptr %arrayidx61, align 4, !dbg !423, !tbaa !74
  %64 = load ptr, ptr %nbest.addr, align 8, !dbg !426, !tbaa !68
  %65 = load i32, ptr %k, align 4, !dbg !427, !tbaa !74
  %idxprom62 = sext i32 %65 to i64, !dbg !426
  %arrayidx63 = getelementptr inbounds i32, ptr %64, i64 %idxprom62, !dbg !426
  store i32 %63, ptr %arrayidx63, align 4, !dbg !428, !tbaa !74
  br label %for.inc64, !dbg !429

for.inc64:                                        ; preds = %for.body53
  %66 = load i32, ptr %k, align 4, !dbg !430, !tbaa !74
  %dec = add nsw i32 %66, -1, !dbg !430
  store i32 %dec, ptr %k, align 4, !dbg !430, !tbaa !74
  br label %for.cond44, !dbg !431, !llvm.loop !432

for.end65:                                        ; preds = %land.end
  %67 = load i32, ptr %i, align 4, !dbg !434, !tbaa !74
  %idxprom66 = sext i32 %67 to i64, !dbg !435
  %arrayidx67 = getelementptr inbounds float, ptr %vla, i64 %idxprom66, !dbg !435
  %68 = load float, ptr %arrayidx67, align 4, !dbg !435, !tbaa !107
  %69 = load ptr, ptr %best_dist.addr, align 8, !dbg !436, !tbaa !68
  %70 = load i32, ptr %k, align 4, !dbg !437, !tbaa !74
  %idxprom68 = sext i32 %70 to i64, !dbg !436
  %arrayidx69 = getelementptr inbounds float, ptr %69, i64 %idxprom68, !dbg !436
  store float %68, ptr %arrayidx69, align 4, !dbg !438, !tbaa !107
  %71 = load i32, ptr %i, align 4, !dbg !439, !tbaa !74
  %72 = load ptr, ptr %nbest.addr, align 8, !dbg !440, !tbaa !68
  %73 = load i32, ptr %k, align 4, !dbg !441, !tbaa !74
  %idxprom70 = sext i32 %73 to i64, !dbg !440
  %arrayidx71 = getelementptr inbounds i32, ptr %72, i64 %idxprom70, !dbg !440
  store i32 %71, ptr %arrayidx71, align 4, !dbg !442, !tbaa !74
  %74 = load i32, ptr %used, align 4, !dbg !443, !tbaa !74
  %inc72 = add nsw i32 %74, 1, !dbg !443
  store i32 %inc72, ptr %used, align 4, !dbg !443, !tbaa !74
  %75 = load i32, ptr %sign, align 4, !dbg !444, !tbaa !74
  %tobool = icmp ne i32 %75, 0, !dbg !444
  br i1 %tobool, label %if.then73, label %if.end76, !dbg !446

if.then73:                                        ; preds = %for.end65
  %76 = load i32, ptr %entries.addr, align 4, !dbg !447, !tbaa !74
  %77 = load ptr, ptr %nbest.addr, align 8, !dbg !448, !tbaa !68
  %78 = load i32, ptr %k, align 4, !dbg !449, !tbaa !74
  %idxprom74 = sext i32 %78 to i64, !dbg !448
  %arrayidx75 = getelementptr inbounds i32, ptr %77, i64 %idxprom74, !dbg !448
  %79 = load i32, ptr %arrayidx75, align 4, !dbg !450, !tbaa !74
  %add = add nsw i32 %79, %76, !dbg !450
  store i32 %add, ptr %arrayidx75, align 4, !dbg !450, !tbaa !74
  br label %if.end76, !dbg !448

if.end76:                                         ; preds = %if.then73, %for.end65
  br label %if.end77, !dbg !451

if.end77:                                         ; preds = %if.end76, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 4, ptr %sign) #6, !dbg !452
  br label %for.inc78, !dbg !453

for.inc78:                                        ; preds = %if.end77
  %80 = load i32, ptr %i, align 4, !dbg !454, !tbaa !74
  %inc79 = add nsw i32 %80, 1, !dbg !454
  store i32 %inc79, ptr %i, align 4, !dbg !454, !tbaa !74
  br label %for.cond21, !dbg !455, !llvm.loop !456

for.end80:                                        ; preds = %for.cond21
  %81 = load ptr, ptr %saved_stack, align 8, !dbg !458
  call void @llvm.stackrestore.p0(ptr %81), !dbg !458
  call void @llvm.lifetime.end.p0(i64 4, ptr %used) #6, !dbg !458
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6, !dbg !458
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6, !dbg !458
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !458
  ret void, !dbg !458
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_setzero_ps() #3 {
entry:
  %.compoundliteral = alloca <4 x float>, align 16
  store <4 x float> zeroinitializer, ptr %.compoundliteral, align 16, !tbaa !95
  %0 = load <4 x float>, ptr %.compoundliteral, align 16, !tbaa !95
  ret <4 x float> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_add_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !95
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !95
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !95
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !95
  %add = fadd <4 x float> %0, %1
  ret <4 x float> %add
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nounwind uwtable
define hidden i32 @scal_quant(float noundef %in, ptr noundef %boundary, i32 noundef %entries) #5 !dbg !459 {
entry:
  %in.addr = alloca float, align 4
  %boundary.addr = alloca ptr, align 8
  %entries.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store float %in, ptr %in.addr, align 4, !tbaa !107
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !465, metadata !DIExpression()), !dbg !469
  store ptr %boundary, ptr %boundary.addr, align 8, !tbaa !68
  tail call void @llvm.dbg.declare(metadata ptr %boundary.addr, metadata !466, metadata !DIExpression()), !dbg !470
  store i32 %entries, ptr %entries.addr, align 4, !tbaa !74
  tail call void @llvm.dbg.declare(metadata ptr %entries.addr, metadata !467, metadata !DIExpression()), !dbg !471
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !472
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !468, metadata !DIExpression()), !dbg !473
  store i32 0, ptr %i, align 4, !dbg !473, !tbaa !74
  br label %while.cond, !dbg !474

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %i, align 4, !dbg !475, !tbaa !74
  %1 = load i32, ptr %entries.addr, align 4, !dbg !476, !tbaa !74
  %sub = sub nsw i32 %1, 1, !dbg !477
  %cmp = icmp slt i32 %0, %sub, !dbg !478
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !479

land.rhs:                                         ; preds = %while.cond
  %2 = load float, ptr %in.addr, align 4, !dbg !480, !tbaa !107
  %3 = load ptr, ptr %boundary.addr, align 8, !dbg !481, !tbaa !68
  %arrayidx = getelementptr inbounds float, ptr %3, i64 0, !dbg !481
  %4 = load float, ptr %arrayidx, align 4, !dbg !481, !tbaa !107
  %cmp1 = fcmp ogt float %2, %4, !dbg !482
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ], !dbg !483
  br i1 %5, label %while.body, label %while.end, !dbg !474

while.body:                                       ; preds = %land.end
  %6 = load ptr, ptr %boundary.addr, align 8, !dbg !484, !tbaa !68
  %incdec.ptr = getelementptr inbounds float, ptr %6, i32 1, !dbg !484
  store ptr %incdec.ptr, ptr %boundary.addr, align 8, !dbg !484, !tbaa !68
  %7 = load i32, ptr %i, align 4, !dbg !486, !tbaa !74
  %inc = add nsw i32 %7, 1, !dbg !486
  store i32 %inc, ptr %i, align 4, !dbg !486, !tbaa !74
  br label %while.cond, !dbg !474, !llvm.loop !487

while.end:                                        ; preds = %land.end
  %8 = load i32, ptr %i, align 4, !dbg !489, !tbaa !74
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !490
  ret i32 %8, !dbg !491
}

; Function Attrs: nounwind uwtable
define hidden i32 @scal_quant32(float noundef %in, ptr noundef %boundary, i32 noundef %entries) #5 !dbg !492 {
entry:
  %in.addr = alloca float, align 4
  %boundary.addr = alloca ptr, align 8
  %entries.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store float %in, ptr %in.addr, align 4, !tbaa !107
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !498, metadata !DIExpression()), !dbg !502
  store ptr %boundary, ptr %boundary.addr, align 8, !tbaa !68
  tail call void @llvm.dbg.declare(metadata ptr %boundary.addr, metadata !499, metadata !DIExpression()), !dbg !503
  store i32 %entries, ptr %entries.addr, align 4, !tbaa !74
  tail call void @llvm.dbg.declare(metadata ptr %entries.addr, metadata !500, metadata !DIExpression()), !dbg !504
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !505
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !501, metadata !DIExpression()), !dbg !506
  store i32 0, ptr %i, align 4, !dbg !506, !tbaa !74
  br label %while.cond, !dbg !507

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %i, align 4, !dbg !508, !tbaa !74
  %1 = load i32, ptr %entries.addr, align 4, !dbg !509, !tbaa !74
  %sub = sub nsw i32 %1, 1, !dbg !510
  %cmp = icmp slt i32 %0, %sub, !dbg !511
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !512

land.rhs:                                         ; preds = %while.cond
  %2 = load float, ptr %in.addr, align 4, !dbg !513, !tbaa !107
  %3 = load ptr, ptr %boundary.addr, align 8, !dbg !514, !tbaa !68
  %arrayidx = getelementptr inbounds float, ptr %3, i64 0, !dbg !514
  %4 = load float, ptr %arrayidx, align 4, !dbg !514, !tbaa !107
  %cmp1 = fcmp ogt float %2, %4, !dbg !515
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ], !dbg !516
  br i1 %5, label %while.body, label %while.end, !dbg !507

while.body:                                       ; preds = %land.end
  %6 = load ptr, ptr %boundary.addr, align 8, !dbg !517, !tbaa !68
  %incdec.ptr = getelementptr inbounds float, ptr %6, i32 1, !dbg !517
  store ptr %incdec.ptr, ptr %boundary.addr, align 8, !dbg !517, !tbaa !68
  %7 = load i32, ptr %i, align 4, !dbg !519, !tbaa !74
  %inc = add nsw i32 %7, 1, !dbg !519
  store i32 %inc, ptr %i, align 4, !dbg !519, !tbaa !74
  br label %while.cond, !dbg !507, !llvm.loop !520

while.end:                                        ; preds = %land.end
  %8 = load i32, ptr %i, align 4, !dbg !522, !tbaa !74
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !523
  ret i32 %8, !dbg !524
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_set1_ps(float noundef %__w) #3 {
entry:
  %__w.addr = alloca float, align 4
  %.compoundliteral = alloca <4 x float>, align 16
  store float %__w, ptr %__w.addr, align 4, !tbaa !107
  %0 = load float, ptr %__w.addr, align 4, !tbaa !107
  %vecinit = insertelement <4 x float> undef, float %0, i32 0
  %1 = load float, ptr %__w.addr, align 4, !tbaa !107
  %vecinit1 = insertelement <4 x float> %vecinit, float %1, i32 1
  %2 = load float, ptr %__w.addr, align 4, !tbaa !107
  %vecinit2 = insertelement <4 x float> %vecinit1, float %2, i32 2
  %3 = load float, ptr %__w.addr, align 4, !tbaa !107
  %vecinit3 = insertelement <4 x float> %vecinit2, float %3, i32 3
  store <4 x float> %vecinit3, ptr %.compoundliteral, align 16, !tbaa !95
  %4 = load <4 x float>, ptr %.compoundliteral, align 16, !tbaa !95
  ret <4 x float> %4
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "vq.c", directory: "/local-ssd/speex-qmzan5mk55e2h3aga2cspzdx6ztxzo53-build/aidengro/spack-stage-speex-1.2.1-qmzan5mk55e2h3aga2cspzdx6ztxzo53/spack-src/libspeex", checksumkind: CSK_MD5, checksum: "731d6d34db6e8460894e53f325dcbdc8")
!2 = !{!3, !5, !10, !11}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__m128", file: !6, line: 21, baseType: !7, align: 128)
!6 = !DIFile(filename: "/usr/lib/clang/18/include/xmmintrin.h", directory: "", checksumkind: CSK_MD5, checksum: "4f48a2836fc33cbe0f1ace6456c426c6")
!7 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, flags: DIFlagVector, elements: !8)
!8 = !{!9}
!9 = !DISubrange(count: 4)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v4sf", file: !6, line: 20, baseType: !7)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__storeu_ps", file: !6, line: 1989, size: 128, elements: !13)
!13 = !{!14}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "__v", scope: !12, file: !6, line: 1990, baseType: !15, size: 128, align: 8)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__m128_u", file: !6, line: 23, baseType: !7, align: 8)
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 8, !"PIC Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!22 = distinct !DISubprogram(name: "vq_nbest", scope: !23, file: !23, line: 36, type: !24, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !38)
!23 = !DIFile(filename: "./vq_sse.h", directory: "/local-ssd/speex-qmzan5mk55e2h3aga2cspzdx6ztxzo53-build/aidengro/spack-stage-speex-1.2.1-qmzan5mk55e2h3aga2cspzdx6ztxzo53/spack-src/libspeex", checksumkind: CSK_MD5, checksum: "deceefd67308a0637fab71ee8c982291")
!24 = !DISubroutineType(types: !25)
!25 = !{null, !26, !29, !31, !31, !32, !31, !33, !34, !36}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "spx_word16_t", file: !28, line: 139, baseType: !4)
!28 = !DIFile(filename: "./arch.h", directory: "/local-ssd/speex-qmzan5mk55e2h3aga2cspzdx6ztxzo53-build/aidengro/spack-stage-speex-1.2.1-qmzan5mk55e2h3aga2cspzdx6ztxzo53/spack-src/libspeex", checksumkind: CSK_MD5, checksum: "744ad89064be960bc1cc356058e53bc7")
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "spx_word32_t", file: !28, line: 140, baseType: !4)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !55, !59, !60, !64}
!39 = !DILocalVariable(name: "_in", arg: 1, scope: !22, file: !23, line: 36, type: !26)
!40 = !DILocalVariable(name: "codebook", arg: 2, scope: !22, file: !23, line: 36, type: !29)
!41 = !DILocalVariable(name: "len", arg: 3, scope: !22, file: !23, line: 36, type: !31)
!42 = !DILocalVariable(name: "entries", arg: 4, scope: !22, file: !23, line: 36, type: !31)
!43 = !DILocalVariable(name: "E", arg: 5, scope: !22, file: !23, line: 36, type: !32)
!44 = !DILocalVariable(name: "N", arg: 6, scope: !22, file: !23, line: 36, type: !31)
!45 = !DILocalVariable(name: "nbest", arg: 7, scope: !22, file: !23, line: 36, type: !33)
!46 = !DILocalVariable(name: "best_dist", arg: 8, scope: !22, file: !23, line: 36, type: !34)
!47 = !DILocalVariable(name: "stack", arg: 9, scope: !22, file: !23, line: 36, type: !36)
!48 = !DILocalVariable(name: "i", scope: !22, file: !23, line: 38, type: !31)
!49 = !DILocalVariable(name: "j", scope: !22, file: !23, line: 38, type: !31)
!50 = !DILocalVariable(name: "k", scope: !22, file: !23, line: 38, type: !31)
!51 = !DILocalVariable(name: "used", scope: !22, file: !23, line: 38, type: !31)
!52 = !DILocalVariable(name: "half", scope: !22, file: !23, line: 41, type: !5)
!53 = !DILocalVariable(name: "__vla_expr0", scope: !22, type: !54, flags: DIFlagArtificial)
!54 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!55 = !DILocalVariable(name: "dist", scope: !22, file: !23, line: 43, type: !56)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: !53)
!59 = !DILocalVariable(name: "__vla_expr1", scope: !22, type: !54, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: "in", scope: !22, file: !23, line: 45, type: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, align: 128, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: !59)
!64 = !DILocalVariable(name: "d", scope: !65, file: !23, line: 50, type: !5)
!65 = distinct !DILexicalBlock(scope: !66, file: !23, line: 49, column: 4)
!66 = distinct !DILexicalBlock(scope: !67, file: !23, line: 48, column: 4)
!67 = distinct !DILexicalBlock(scope: !22, file: !23, line: 48, column: 4)
!68 = !{!69, !69, i64 0}
!69 = !{!"any pointer", !70, i64 0}
!70 = !{!"omnipotent char", !71, i64 0}
!71 = !{!"Simple C/C++ TBAA"}
!72 = !DILocation(line: 36, column: 29, scope: !22)
!73 = !DILocation(line: 36, column: 48, scope: !22)
!74 = !{!75, !75, i64 0}
!75 = !{!"int", !70, i64 0}
!76 = !DILocation(line: 36, column: 62, scope: !22)
!77 = !DILocation(line: 36, column: 71, scope: !22)
!78 = !DILocation(line: 36, column: 88, scope: !22)
!79 = !DILocation(line: 36, column: 95, scope: !22)
!80 = !DILocation(line: 36, column: 103, scope: !22)
!81 = !DILocation(line: 36, column: 124, scope: !22)
!82 = !DILocation(line: 36, column: 141, scope: !22)
!83 = !DILocation(line: 38, column: 4, scope: !22)
!84 = !DILocation(line: 38, column: 8, scope: !22)
!85 = !DILocation(line: 38, column: 10, scope: !22)
!86 = !DILocation(line: 38, column: 12, scope: !22)
!87 = !DILocation(line: 38, column: 14, scope: !22)
!88 = !DILocation(line: 41, column: 4, scope: !22)
!89 = !DILocation(line: 41, column: 11, scope: !22)
!90 = !DILocation(line: 42, column: 9, scope: !22)
!91 = !DILocation(line: 43, column: 4, scope: !22)
!92 = !DILocation(line: 0, scope: !22)
!93 = !DILocation(line: 44, column: 11, scope: !22)
!94 = !DILocation(line: 44, column: 9, scope: !22)
!95 = !{!70, !70, i64 0}
!96 = !DILocation(line: 45, column: 4, scope: !22)
!97 = !DILocation(line: 46, column: 10, scope: !98)
!98 = distinct !DILexicalBlock(scope: !22, file: !23, line: 46, column: 4)
!99 = !DILocation(line: 46, column: 9, scope: !98)
!100 = !DILocation(line: 46, column: 13, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !23, line: 46, column: 4)
!102 = !DILocation(line: 46, column: 15, scope: !101)
!103 = !DILocation(line: 46, column: 14, scope: !101)
!104 = !DILocation(line: 46, column: 4, scope: !98)
!105 = !DILocation(line: 47, column: 27, scope: !101)
!106 = !DILocation(line: 47, column: 31, scope: !101)
!107 = !{!108, !108, i64 0}
!108 = !{!"float", !70, i64 0}
!109 = !DILocation(line: 47, column: 15, scope: !101)
!110 = !DILocation(line: 47, column: 10, scope: !101)
!111 = !DILocation(line: 47, column: 7, scope: !101)
!112 = !DILocation(line: 47, column: 13, scope: !101)
!113 = !DILocation(line: 46, column: 20, scope: !101)
!114 = !DILocation(line: 46, column: 4, scope: !101)
!115 = distinct !{!115, !104, !116, !117}
!116 = !DILocation(line: 47, column: 33, scope: !98)
!117 = !{!"llvm.loop.mustprogress"}
!118 = !DILocation(line: 48, column: 10, scope: !67)
!119 = !DILocation(line: 48, column: 9, scope: !67)
!120 = !DILocation(line: 48, column: 13, scope: !66)
!121 = !DILocation(line: 48, column: 15, scope: !66)
!122 = !DILocation(line: 48, column: 22, scope: !66)
!123 = !DILocation(line: 48, column: 14, scope: !66)
!124 = !DILocation(line: 48, column: 4, scope: !67)
!125 = !DILocation(line: 50, column: 7, scope: !65)
!126 = !DILocation(line: 50, column: 14, scope: !65)
!127 = !DILocation(line: 50, column: 29, scope: !65)
!128 = !DILocation(line: 50, column: 31, scope: !65)
!129 = !DILocation(line: 50, column: 35, scope: !65)
!130 = !DILocation(line: 50, column: 18, scope: !65)
!131 = !DILocation(line: 51, column: 13, scope: !132)
!132 = distinct !DILexicalBlock(scope: !65, file: !23, line: 51, column: 7)
!133 = !DILocation(line: 51, column: 12, scope: !132)
!134 = !DILocation(line: 51, column: 16, scope: !135)
!135 = distinct !DILexicalBlock(scope: !132, file: !23, line: 51, column: 7)
!136 = !DILocation(line: 51, column: 18, scope: !135)
!137 = !DILocation(line: 51, column: 17, scope: !135)
!138 = !DILocation(line: 51, column: 7, scope: !132)
!139 = !DILocation(line: 52, column: 25, scope: !135)
!140 = !DILocation(line: 52, column: 42, scope: !135)
!141 = !DILocation(line: 52, column: 39, scope: !135)
!142 = !DILocation(line: 52, column: 55, scope: !135)
!143 = !DILocation(line: 52, column: 46, scope: !135)
!144 = !DILocation(line: 52, column: 28, scope: !135)
!145 = !DILocation(line: 52, column: 14, scope: !135)
!146 = !DILocation(line: 52, column: 12, scope: !135)
!147 = !DILocation(line: 52, column: 10, scope: !135)
!148 = !DILocation(line: 51, column: 23, scope: !135)
!149 = !DILocation(line: 51, column: 7, scope: !135)
!150 = distinct !{!150, !138, !151, !117}
!151 = !DILocation(line: 52, column: 58, scope: !132)
!152 = !DILocation(line: 53, column: 28, scope: !65)
!153 = !DILocation(line: 53, column: 27, scope: !65)
!154 = !DILocation(line: 53, column: 25, scope: !65)
!155 = !DILocation(line: 53, column: 31, scope: !65)
!156 = !DILocation(line: 53, column: 7, scope: !65)
!157 = !DILocation(line: 54, column: 4, scope: !66)
!158 = !DILocation(line: 54, column: 4, scope: !65)
!159 = !DILocation(line: 48, column: 27, scope: !66)
!160 = !DILocation(line: 48, column: 4, scope: !66)
!161 = distinct !{!161, !124, !162, !117}
!162 = !DILocation(line: 54, column: 4, scope: !67)
!163 = !DILocation(line: 55, column: 10, scope: !164)
!164 = distinct !DILexicalBlock(scope: !22, file: !23, line: 55, column: 4)
!165 = !DILocation(line: 55, column: 9, scope: !164)
!166 = !DILocation(line: 55, column: 13, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !23, line: 55, column: 4)
!168 = !DILocation(line: 55, column: 15, scope: !167)
!169 = !DILocation(line: 55, column: 14, scope: !167)
!170 = !DILocation(line: 55, column: 4, scope: !164)
!171 = !DILocation(line: 57, column: 11, scope: !172)
!172 = distinct !DILexicalBlock(scope: !173, file: !23, line: 57, column: 11)
!173 = distinct !DILexicalBlock(scope: !167, file: !23, line: 56, column: 4)
!174 = !DILocation(line: 57, column: 13, scope: !172)
!175 = !DILocation(line: 57, column: 12, scope: !172)
!176 = !DILocation(line: 57, column: 15, scope: !172)
!177 = !DILocation(line: 57, column: 23, scope: !172)
!178 = !DILocation(line: 57, column: 18, scope: !172)
!179 = !DILocation(line: 57, column: 26, scope: !172)
!180 = !DILocation(line: 57, column: 36, scope: !172)
!181 = !DILocation(line: 57, column: 37, scope: !172)
!182 = !DILocation(line: 57, column: 25, scope: !172)
!183 = !DILocation(line: 57, column: 11, scope: !173)
!184 = !DILocation(line: 59, column: 17, scope: !185)
!185 = distinct !DILexicalBlock(scope: !186, file: !23, line: 59, column: 10)
!186 = distinct !DILexicalBlock(scope: !172, file: !23, line: 58, column: 7)
!187 = !DILocation(line: 59, column: 18, scope: !185)
!188 = !DILocation(line: 59, column: 16, scope: !185)
!189 = !DILocation(line: 59, column: 15, scope: !185)
!190 = !DILocation(line: 59, column: 23, scope: !191)
!191 = distinct !DILexicalBlock(scope: !185, file: !23, line: 59, column: 10)
!192 = !DILocation(line: 59, column: 25, scope: !191)
!193 = !DILocation(line: 59, column: 31, scope: !191)
!194 = !DILocation(line: 59, column: 35, scope: !191)
!195 = !DILocation(line: 59, column: 39, scope: !191)
!196 = !DILocation(line: 59, column: 37, scope: !191)
!197 = !DILocation(line: 59, column: 44, scope: !191)
!198 = !DILocation(line: 59, column: 52, scope: !191)
!199 = !DILocation(line: 59, column: 47, scope: !191)
!200 = !DILocation(line: 59, column: 57, scope: !191)
!201 = !DILocation(line: 59, column: 67, scope: !191)
!202 = !DILocation(line: 59, column: 68, scope: !191)
!203 = !DILocation(line: 59, column: 55, scope: !191)
!204 = !DILocation(line: 0, scope: !191)
!205 = !DILocation(line: 59, column: 10, scope: !185)
!206 = !DILocation(line: 61, column: 26, scope: !207)
!207 = distinct !DILexicalBlock(scope: !191, file: !23, line: 60, column: 10)
!208 = !DILocation(line: 61, column: 36, scope: !207)
!209 = !DILocation(line: 61, column: 37, scope: !207)
!210 = !DILocation(line: 61, column: 13, scope: !207)
!211 = !DILocation(line: 61, column: 23, scope: !207)
!212 = !DILocation(line: 61, column: 25, scope: !207)
!213 = !DILocation(line: 62, column: 24, scope: !207)
!214 = !DILocation(line: 62, column: 30, scope: !207)
!215 = !DILocation(line: 62, column: 31, scope: !207)
!216 = !DILocation(line: 62, column: 13, scope: !207)
!217 = !DILocation(line: 62, column: 19, scope: !207)
!218 = !DILocation(line: 62, column: 22, scope: !207)
!219 = !DILocation(line: 63, column: 10, scope: !207)
!220 = !DILocation(line: 59, column: 75, scope: !191)
!221 = !DILocation(line: 59, column: 10, scope: !191)
!222 = distinct !{!222, !205, !223, !117}
!223 = !DILocation(line: 63, column: 10, scope: !185)
!224 = !DILocation(line: 64, column: 28, scope: !186)
!225 = !DILocation(line: 64, column: 23, scope: !186)
!226 = !DILocation(line: 64, column: 10, scope: !186)
!227 = !DILocation(line: 64, column: 20, scope: !186)
!228 = !DILocation(line: 64, column: 22, scope: !186)
!229 = !DILocation(line: 65, column: 19, scope: !186)
!230 = !DILocation(line: 65, column: 10, scope: !186)
!231 = !DILocation(line: 65, column: 16, scope: !186)
!232 = !DILocation(line: 65, column: 18, scope: !186)
!233 = !DILocation(line: 66, column: 14, scope: !186)
!234 = !DILocation(line: 67, column: 7, scope: !186)
!235 = !DILocation(line: 68, column: 4, scope: !173)
!236 = !DILocation(line: 55, column: 24, scope: !167)
!237 = !DILocation(line: 55, column: 4, scope: !167)
!238 = distinct !{!238, !170, !239, !117}
!239 = !DILocation(line: 68, column: 4, scope: !164)
!240 = !DILocation(line: 69, column: 1, scope: !22)
!241 = distinct !DISubprogram(name: "vq_nbest_sign", scope: !23, file: !23, line: 75, type: !24, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !242)
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !261, !262, !266, !270}
!243 = !DILocalVariable(name: "_in", arg: 1, scope: !241, file: !23, line: 75, type: !26)
!244 = !DILocalVariable(name: "codebook", arg: 2, scope: !241, file: !23, line: 75, type: !29)
!245 = !DILocalVariable(name: "len", arg: 3, scope: !241, file: !23, line: 75, type: !31)
!246 = !DILocalVariable(name: "entries", arg: 4, scope: !241, file: !23, line: 75, type: !31)
!247 = !DILocalVariable(name: "E", arg: 5, scope: !241, file: !23, line: 75, type: !32)
!248 = !DILocalVariable(name: "N", arg: 6, scope: !241, file: !23, line: 75, type: !31)
!249 = !DILocalVariable(name: "nbest", arg: 7, scope: !241, file: !23, line: 75, type: !33)
!250 = !DILocalVariable(name: "best_dist", arg: 8, scope: !241, file: !23, line: 75, type: !34)
!251 = !DILocalVariable(name: "stack", arg: 9, scope: !241, file: !23, line: 75, type: !36)
!252 = !DILocalVariable(name: "i", scope: !241, file: !23, line: 77, type: !31)
!253 = !DILocalVariable(name: "j", scope: !241, file: !23, line: 77, type: !31)
!254 = !DILocalVariable(name: "k", scope: !241, file: !23, line: 77, type: !31)
!255 = !DILocalVariable(name: "used", scope: !241, file: !23, line: 77, type: !31)
!256 = !DILocalVariable(name: "__vla_expr0", scope: !241, type: !54, flags: DIFlagArtificial)
!257 = !DILocalVariable(name: "dist", scope: !241, file: !23, line: 82, type: !258)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: !256)
!261 = !DILocalVariable(name: "__vla_expr1", scope: !241, type: !54, flags: DIFlagArtificial)
!262 = !DILocalVariable(name: "in", scope: !241, file: !23, line: 84, type: !263)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, align: 128, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: !261)
!266 = !DILocalVariable(name: "d", scope: !267, file: !23, line: 89, type: !5)
!267 = distinct !DILexicalBlock(scope: !268, file: !23, line: 88, column: 4)
!268 = distinct !DILexicalBlock(scope: !269, file: !23, line: 87, column: 4)
!269 = distinct !DILexicalBlock(scope: !241, file: !23, line: 87, column: 4)
!270 = !DILocalVariable(name: "sign", scope: !271, file: !23, line: 96, type: !31)
!271 = distinct !DILexicalBlock(scope: !272, file: !23, line: 95, column: 4)
!272 = distinct !DILexicalBlock(scope: !273, file: !23, line: 94, column: 4)
!273 = distinct !DILexicalBlock(scope: !241, file: !23, line: 94, column: 4)
!274 = !DILocation(line: 75, column: 34, scope: !241)
!275 = !DILocation(line: 75, column: 53, scope: !241)
!276 = !DILocation(line: 75, column: 67, scope: !241)
!277 = !DILocation(line: 75, column: 76, scope: !241)
!278 = !DILocation(line: 75, column: 93, scope: !241)
!279 = !DILocation(line: 75, column: 100, scope: !241)
!280 = !DILocation(line: 75, column: 108, scope: !241)
!281 = !DILocation(line: 75, column: 129, scope: !241)
!282 = !DILocation(line: 75, column: 146, scope: !241)
!283 = !DILocation(line: 77, column: 4, scope: !241)
!284 = !DILocation(line: 77, column: 8, scope: !241)
!285 = !DILocation(line: 77, column: 10, scope: !241)
!286 = !DILocation(line: 77, column: 12, scope: !241)
!287 = !DILocation(line: 77, column: 14, scope: !241)
!288 = !DILocation(line: 81, column: 9, scope: !241)
!289 = !DILocation(line: 82, column: 4, scope: !241)
!290 = !DILocation(line: 0, scope: !241)
!291 = !DILocation(line: 84, column: 4, scope: !241)
!292 = !DILocation(line: 85, column: 10, scope: !293)
!293 = distinct !DILexicalBlock(scope: !241, file: !23, line: 85, column: 4)
!294 = !DILocation(line: 85, column: 9, scope: !293)
!295 = !DILocation(line: 85, column: 13, scope: !296)
!296 = distinct !DILexicalBlock(scope: !293, file: !23, line: 85, column: 4)
!297 = !DILocation(line: 85, column: 15, scope: !296)
!298 = !DILocation(line: 85, column: 14, scope: !296)
!299 = !DILocation(line: 85, column: 4, scope: !293)
!300 = !DILocation(line: 86, column: 27, scope: !296)
!301 = !DILocation(line: 86, column: 31, scope: !296)
!302 = !DILocation(line: 86, column: 15, scope: !296)
!303 = !DILocation(line: 86, column: 10, scope: !296)
!304 = !DILocation(line: 86, column: 7, scope: !296)
!305 = !DILocation(line: 86, column: 13, scope: !296)
!306 = !DILocation(line: 85, column: 20, scope: !296)
!307 = !DILocation(line: 85, column: 4, scope: !296)
!308 = distinct !{!308, !299, !309, !117}
!309 = !DILocation(line: 86, column: 33, scope: !293)
!310 = !DILocation(line: 87, column: 10, scope: !269)
!311 = !DILocation(line: 87, column: 9, scope: !269)
!312 = !DILocation(line: 87, column: 13, scope: !268)
!313 = !DILocation(line: 87, column: 15, scope: !268)
!314 = !DILocation(line: 87, column: 22, scope: !268)
!315 = !DILocation(line: 87, column: 14, scope: !268)
!316 = !DILocation(line: 87, column: 4, scope: !269)
!317 = !DILocation(line: 89, column: 7, scope: !267)
!318 = !DILocation(line: 89, column: 14, scope: !267)
!319 = !DILocation(line: 89, column: 18, scope: !267)
!320 = !DILocation(line: 90, column: 13, scope: !321)
!321 = distinct !DILexicalBlock(scope: !267, file: !23, line: 90, column: 7)
!322 = !DILocation(line: 90, column: 12, scope: !321)
!323 = !DILocation(line: 90, column: 16, scope: !324)
!324 = distinct !DILexicalBlock(scope: !321, file: !23, line: 90, column: 7)
!325 = !DILocation(line: 90, column: 18, scope: !324)
!326 = !DILocation(line: 90, column: 17, scope: !324)
!327 = !DILocation(line: 90, column: 7, scope: !321)
!328 = !DILocation(line: 91, column: 25, scope: !324)
!329 = !DILocation(line: 91, column: 42, scope: !324)
!330 = !DILocation(line: 91, column: 39, scope: !324)
!331 = !DILocation(line: 91, column: 55, scope: !324)
!332 = !DILocation(line: 91, column: 46, scope: !324)
!333 = !DILocation(line: 91, column: 28, scope: !324)
!334 = !DILocation(line: 91, column: 14, scope: !324)
!335 = !DILocation(line: 91, column: 12, scope: !324)
!336 = !DILocation(line: 91, column: 10, scope: !324)
!337 = !DILocation(line: 90, column: 23, scope: !324)
!338 = !DILocation(line: 90, column: 7, scope: !324)
!339 = distinct !{!339, !327, !340, !117}
!340 = !DILocation(line: 91, column: 58, scope: !321)
!341 = !DILocation(line: 92, column: 28, scope: !267)
!342 = !DILocation(line: 92, column: 27, scope: !267)
!343 = !DILocation(line: 92, column: 25, scope: !267)
!344 = !DILocation(line: 92, column: 31, scope: !267)
!345 = !DILocation(line: 92, column: 7, scope: !267)
!346 = !DILocation(line: 93, column: 4, scope: !268)
!347 = !DILocation(line: 93, column: 4, scope: !267)
!348 = !DILocation(line: 87, column: 27, scope: !268)
!349 = !DILocation(line: 87, column: 4, scope: !268)
!350 = distinct !{!350, !316, !351, !117}
!351 = !DILocation(line: 93, column: 4, scope: !269)
!352 = !DILocation(line: 94, column: 10, scope: !273)
!353 = !DILocation(line: 94, column: 9, scope: !273)
!354 = !DILocation(line: 94, column: 13, scope: !272)
!355 = !DILocation(line: 94, column: 15, scope: !272)
!356 = !DILocation(line: 94, column: 14, scope: !272)
!357 = !DILocation(line: 94, column: 4, scope: !273)
!358 = !DILocation(line: 96, column: 7, scope: !271)
!359 = !DILocation(line: 96, column: 11, scope: !271)
!360 = !DILocation(line: 97, column: 16, scope: !361)
!361 = distinct !DILexicalBlock(scope: !271, file: !23, line: 97, column: 11)
!362 = !DILocation(line: 97, column: 11, scope: !361)
!363 = !DILocation(line: 97, column: 18, scope: !361)
!364 = !DILocation(line: 97, column: 11, scope: !271)
!365 = !DILocation(line: 99, column: 14, scope: !366)
!366 = distinct !DILexicalBlock(scope: !361, file: !23, line: 98, column: 7)
!367 = !DILocation(line: 100, column: 24, scope: !366)
!368 = !DILocation(line: 100, column: 19, scope: !366)
!369 = !DILocation(line: 100, column: 18, scope: !366)
!370 = !DILocation(line: 100, column: 15, scope: !366)
!371 = !DILocation(line: 100, column: 10, scope: !366)
!372 = !DILocation(line: 100, column: 17, scope: !366)
!373 = !DILocation(line: 101, column: 7, scope: !366)
!374 = !DILocation(line: 103, column: 14, scope: !375)
!375 = distinct !DILexicalBlock(scope: !361, file: !23, line: 102, column: 7)
!376 = !DILocation(line: 105, column: 31, scope: !271)
!377 = !DILocation(line: 105, column: 34, scope: !271)
!378 = !DILocation(line: 105, column: 22, scope: !271)
!379 = !DILocation(line: 105, column: 12, scope: !271)
!380 = !DILocation(line: 105, column: 7, scope: !271)
!381 = !DILocation(line: 105, column: 15, scope: !271)
!382 = !DILocation(line: 106, column: 11, scope: !383)
!383 = distinct !DILexicalBlock(scope: !271, file: !23, line: 106, column: 11)
!384 = !DILocation(line: 106, column: 13, scope: !383)
!385 = !DILocation(line: 106, column: 12, scope: !383)
!386 = !DILocation(line: 106, column: 15, scope: !383)
!387 = !DILocation(line: 106, column: 23, scope: !383)
!388 = !DILocation(line: 106, column: 18, scope: !383)
!389 = !DILocation(line: 106, column: 26, scope: !383)
!390 = !DILocation(line: 106, column: 36, scope: !383)
!391 = !DILocation(line: 106, column: 37, scope: !383)
!392 = !DILocation(line: 106, column: 25, scope: !383)
!393 = !DILocation(line: 106, column: 11, scope: !271)
!394 = !DILocation(line: 108, column: 17, scope: !395)
!395 = distinct !DILexicalBlock(scope: !396, file: !23, line: 108, column: 10)
!396 = distinct !DILexicalBlock(scope: !383, file: !23, line: 107, column: 7)
!397 = !DILocation(line: 108, column: 18, scope: !395)
!398 = !DILocation(line: 108, column: 16, scope: !395)
!399 = !DILocation(line: 108, column: 15, scope: !395)
!400 = !DILocation(line: 108, column: 23, scope: !401)
!401 = distinct !DILexicalBlock(scope: !395, file: !23, line: 108, column: 10)
!402 = !DILocation(line: 108, column: 25, scope: !401)
!403 = !DILocation(line: 108, column: 31, scope: !401)
!404 = !DILocation(line: 108, column: 35, scope: !401)
!405 = !DILocation(line: 108, column: 39, scope: !401)
!406 = !DILocation(line: 108, column: 37, scope: !401)
!407 = !DILocation(line: 108, column: 44, scope: !401)
!408 = !DILocation(line: 108, column: 52, scope: !401)
!409 = !DILocation(line: 108, column: 47, scope: !401)
!410 = !DILocation(line: 108, column: 57, scope: !401)
!411 = !DILocation(line: 108, column: 67, scope: !401)
!412 = !DILocation(line: 108, column: 68, scope: !401)
!413 = !DILocation(line: 108, column: 55, scope: !401)
!414 = !DILocation(line: 0, scope: !401)
!415 = !DILocation(line: 108, column: 10, scope: !395)
!416 = !DILocation(line: 110, column: 26, scope: !417)
!417 = distinct !DILexicalBlock(scope: !401, file: !23, line: 109, column: 10)
!418 = !DILocation(line: 110, column: 36, scope: !417)
!419 = !DILocation(line: 110, column: 37, scope: !417)
!420 = !DILocation(line: 110, column: 13, scope: !417)
!421 = !DILocation(line: 110, column: 23, scope: !417)
!422 = !DILocation(line: 110, column: 25, scope: !417)
!423 = !DILocation(line: 111, column: 24, scope: !417)
!424 = !DILocation(line: 111, column: 30, scope: !417)
!425 = !DILocation(line: 111, column: 31, scope: !417)
!426 = !DILocation(line: 111, column: 13, scope: !417)
!427 = !DILocation(line: 111, column: 19, scope: !417)
!428 = !DILocation(line: 111, column: 22, scope: !417)
!429 = !DILocation(line: 112, column: 10, scope: !417)
!430 = !DILocation(line: 108, column: 75, scope: !401)
!431 = !DILocation(line: 108, column: 10, scope: !401)
!432 = distinct !{!432, !415, !433, !117}
!433 = !DILocation(line: 112, column: 10, scope: !395)
!434 = !DILocation(line: 113, column: 28, scope: !396)
!435 = !DILocation(line: 113, column: 23, scope: !396)
!436 = !DILocation(line: 113, column: 10, scope: !396)
!437 = !DILocation(line: 113, column: 20, scope: !396)
!438 = !DILocation(line: 113, column: 22, scope: !396)
!439 = !DILocation(line: 114, column: 19, scope: !396)
!440 = !DILocation(line: 114, column: 10, scope: !396)
!441 = !DILocation(line: 114, column: 16, scope: !396)
!442 = !DILocation(line: 114, column: 18, scope: !396)
!443 = !DILocation(line: 115, column: 14, scope: !396)
!444 = !DILocation(line: 116, column: 14, scope: !445)
!445 = distinct !DILexicalBlock(scope: !396, file: !23, line: 116, column: 14)
!446 = !DILocation(line: 116, column: 14, scope: !396)
!447 = !DILocation(line: 117, column: 23, scope: !445)
!448 = !DILocation(line: 117, column: 13, scope: !445)
!449 = !DILocation(line: 117, column: 19, scope: !445)
!450 = !DILocation(line: 117, column: 21, scope: !445)
!451 = !DILocation(line: 118, column: 7, scope: !396)
!452 = !DILocation(line: 119, column: 4, scope: !272)
!453 = !DILocation(line: 119, column: 4, scope: !271)
!454 = !DILocation(line: 94, column: 24, scope: !272)
!455 = !DILocation(line: 94, column: 4, scope: !272)
!456 = distinct !{!456, !357, !457, !117}
!457 = !DILocation(line: 119, column: 4, scope: !273)
!458 = !DILocation(line: 120, column: 1, scope: !241)
!459 = distinct !DISubprogram(name: "scal_quant", scope: !1, file: !1, line: 51, type: !460, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !464)
!460 = !DISubroutineType(types: !461)
!461 = !{!31, !27, !462, !31}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!464 = !{!465, !466, !467, !468}
!465 = !DILocalVariable(name: "in", arg: 1, scope: !459, file: !1, line: 51, type: !27)
!466 = !DILocalVariable(name: "boundary", arg: 2, scope: !459, file: !1, line: 51, type: !462)
!467 = !DILocalVariable(name: "entries", arg: 3, scope: !459, file: !1, line: 51, type: !31)
!468 = !DILocalVariable(name: "i", scope: !459, file: !1, line: 53, type: !31)
!469 = !DILocation(line: 51, column: 29, scope: !459)
!470 = !DILocation(line: 51, column: 53, scope: !459)
!471 = !DILocation(line: 51, column: 67, scope: !459)
!472 = !DILocation(line: 53, column: 4, scope: !459)
!473 = !DILocation(line: 53, column: 8, scope: !459)
!474 = !DILocation(line: 54, column: 4, scope: !459)
!475 = !DILocation(line: 54, column: 11, scope: !459)
!476 = !DILocation(line: 54, column: 13, scope: !459)
!477 = !DILocation(line: 54, column: 20, scope: !459)
!478 = !DILocation(line: 54, column: 12, scope: !459)
!479 = !DILocation(line: 54, column: 23, scope: !459)
!480 = !DILocation(line: 54, column: 26, scope: !459)
!481 = !DILocation(line: 54, column: 29, scope: !459)
!482 = !DILocation(line: 54, column: 28, scope: !459)
!483 = !DILocation(line: 0, scope: !459)
!484 = !DILocation(line: 56, column: 15, scope: !485)
!485 = distinct !DILexicalBlock(scope: !459, file: !1, line: 55, column: 4)
!486 = !DILocation(line: 57, column: 8, scope: !485)
!487 = distinct !{!487, !474, !488, !117}
!488 = !DILocation(line: 58, column: 4, scope: !459)
!489 = !DILocation(line: 59, column: 11, scope: !459)
!490 = !DILocation(line: 60, column: 1, scope: !459)
!491 = !DILocation(line: 59, column: 4, scope: !459)
!492 = distinct !DISubprogram(name: "scal_quant32", scope: !1, file: !1, line: 62, type: !493, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !497)
!493 = !DISubroutineType(types: !494)
!494 = !{!31, !35, !495, !31}
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!497 = !{!498, !499, !500, !501}
!498 = !DILocalVariable(name: "in", arg: 1, scope: !492, file: !1, line: 62, type: !35)
!499 = !DILocalVariable(name: "boundary", arg: 2, scope: !492, file: !1, line: 62, type: !495)
!500 = !DILocalVariable(name: "entries", arg: 3, scope: !492, file: !1, line: 62, type: !31)
!501 = !DILocalVariable(name: "i", scope: !492, file: !1, line: 64, type: !31)
!502 = !DILocation(line: 62, column: 31, scope: !492)
!503 = !DILocation(line: 62, column: 55, scope: !492)
!504 = !DILocation(line: 62, column: 69, scope: !492)
!505 = !DILocation(line: 64, column: 4, scope: !492)
!506 = !DILocation(line: 64, column: 8, scope: !492)
!507 = !DILocation(line: 65, column: 4, scope: !492)
!508 = !DILocation(line: 65, column: 11, scope: !492)
!509 = !DILocation(line: 65, column: 13, scope: !492)
!510 = !DILocation(line: 65, column: 20, scope: !492)
!511 = !DILocation(line: 65, column: 12, scope: !492)
!512 = !DILocation(line: 65, column: 23, scope: !492)
!513 = !DILocation(line: 65, column: 26, scope: !492)
!514 = !DILocation(line: 65, column: 29, scope: !492)
!515 = !DILocation(line: 65, column: 28, scope: !492)
!516 = !DILocation(line: 0, scope: !492)
!517 = !DILocation(line: 67, column: 15, scope: !518)
!518 = distinct !DILexicalBlock(scope: !492, file: !1, line: 66, column: 4)
!519 = !DILocation(line: 68, column: 8, scope: !518)
!520 = distinct !{!520, !507, !521, !117}
!521 = !DILocation(line: 69, column: 4, scope: !492)
!522 = !DILocation(line: 70, column: 11, scope: !492)
!523 = !DILocation(line: 71, column: 1, scope: !492)
!524 = !DILocation(line: 70, column: 4, scope: !492)
