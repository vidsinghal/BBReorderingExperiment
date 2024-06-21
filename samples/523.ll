; ModuleID = 'samples/523.bc'
source_filename = "test_dot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @test_BLAS_sdot(i32 noundef %n, i32 noundef %conj, float noundef %alpha, float noundef %beta, float noundef %rin, float noundef %rout, double noundef %r_true_l, double noundef %r_true_t, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, double noundef %eps_int, double noundef %un_int, ptr noundef %test_ratio) #0 !dbg !40 {
entry:
  %n.addr = alloca i32, align 4
  %conj.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %rin.addr = alloca float, align 4
  %rout.addr = alloca float, align 4
  %r_true_l.addr = alloca double, align 8
  %r_true_t.addr = alloca double, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %eps_int.addr = alloca double, align 8
  %un_int.addr = alloca double, align 8
  %test_ratio.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %eps_accurate = alloca double, align 8
  %eps_out = alloca double, align 8
  %tmp1 = alloca double, align 8
  %S = alloca double, align 8
  %S1 = alloca double, align 8
  %S2 = alloca double, align 8
  %U = alloca double, align 8
  %un_d = alloca double, align 8
  %un_accurate = alloca double, align 8
  %un_out = alloca double, align 8
  store i32 %n, ptr %n.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !45, metadata !DIExpression()), !dbg !77
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !78
  tail call void @llvm.dbg.declare(metadata ptr %conj.addr, metadata !46, metadata !DIExpression()), !dbg !79
  store float %alpha, ptr %alpha.addr, align 4, !tbaa !80
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !47, metadata !DIExpression()), !dbg !82
  store float %beta, ptr %beta.addr, align 4, !tbaa !80
  tail call void @llvm.dbg.declare(metadata ptr %beta.addr, metadata !48, metadata !DIExpression()), !dbg !83
  store float %rin, ptr %rin.addr, align 4, !tbaa !80
  tail call void @llvm.dbg.declare(metadata ptr %rin.addr, metadata !49, metadata !DIExpression()), !dbg !84
  store float %rout, ptr %rout.addr, align 4, !tbaa !80
  tail call void @llvm.dbg.declare(metadata ptr %rout.addr, metadata !50, metadata !DIExpression()), !dbg !85
  store double %r_true_l, ptr %r_true_l.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %r_true_l.addr, metadata !51, metadata !DIExpression()), !dbg !88
  store double %r_true_t, ptr %r_true_t.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %r_true_t.addr, metadata !52, metadata !DIExpression()), !dbg !89
  store ptr %x, ptr %x.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !53, metadata !DIExpression()), !dbg !92
  store i32 %incx, ptr %incx.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incx.addr, metadata !54, metadata !DIExpression()), !dbg !93
  store ptr %y, ptr %y.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !55, metadata !DIExpression()), !dbg !94
  store i32 %incy, ptr %incy.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incy.addr, metadata !56, metadata !DIExpression()), !dbg !95
  store double %eps_int, ptr %eps_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %eps_int.addr, metadata !57, metadata !DIExpression()), !dbg !96
  store double %un_int, ptr %un_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %un_int.addr, metadata !58, metadata !DIExpression()), !dbg !97
  store ptr %test_ratio, ptr %test_ratio.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %test_ratio.addr, metadata !59, metadata !DIExpression()), !dbg !98
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !99
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !60, metadata !DIExpression()), !dbg !100
  call void @llvm.lifetime.start.p0(i64 4, ptr %ix) #5, !dbg !99
  tail call void @llvm.dbg.declare(metadata ptr %ix, metadata !61, metadata !DIExpression()), !dbg !101
  call void @llvm.lifetime.start.p0(i64 4, ptr %iy) #5, !dbg !99
  tail call void @llvm.dbg.declare(metadata ptr %iy, metadata !62, metadata !DIExpression()), !dbg !102
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_accurate) #5, !dbg !103
  tail call void @llvm.dbg.declare(metadata ptr %eps_accurate, metadata !63, metadata !DIExpression()), !dbg !104
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_out) #5, !dbg !103
  tail call void @llvm.dbg.declare(metadata ptr %eps_out, metadata !64, metadata !DIExpression()), !dbg !105
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp1) #5, !dbg !103
  tail call void @llvm.dbg.declare(metadata ptr %tmp1, metadata !65, metadata !DIExpression()), !dbg !106
  call void @llvm.lifetime.start.p0(i64 8, ptr %S) #5, !dbg !103
  tail call void @llvm.dbg.declare(metadata ptr %S, metadata !66, metadata !DIExpression()), !dbg !107
  call void @llvm.lifetime.start.p0(i64 8, ptr %S1) #5, !dbg !103
  tail call void @llvm.dbg.declare(metadata ptr %S1, metadata !67, metadata !DIExpression()), !dbg !108
  call void @llvm.lifetime.start.p0(i64 8, ptr %S2) #5, !dbg !103
  tail call void @llvm.dbg.declare(metadata ptr %S2, metadata !68, metadata !DIExpression()), !dbg !109
  call void @llvm.lifetime.start.p0(i64 8, ptr %U) #5, !dbg !103
  tail call void @llvm.dbg.declare(metadata ptr %U, metadata !69, metadata !DIExpression()), !dbg !110
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_d) #5, !dbg !111
  tail call void @llvm.dbg.declare(metadata ptr %un_d, metadata !70, metadata !DIExpression()), !dbg !112
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_accurate) #5, !dbg !111
  tail call void @llvm.dbg.declare(metadata ptr %un_accurate, metadata !71, metadata !DIExpression()), !dbg !113
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_out) #5, !dbg !111
  tail call void @llvm.dbg.declare(metadata ptr %un_out, metadata !72, metadata !DIExpression()), !dbg !114
  store i32 0, ptr %ix, align 4, !dbg !115, !tbaa !73
  store i32 0, ptr %iy, align 4, !dbg !116, !tbaa !73
  %0 = load i32, ptr %incx.addr, align 4, !dbg !117, !tbaa !73
  %cmp = icmp slt i32 %0, 0, !dbg !119
  br i1 %cmp, label %if.then, label %if.end, !dbg !120

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4, !dbg !121, !tbaa !73
  %sub = sub nsw i32 %1, 1, !dbg !122
  %sub1 = sub nsw i32 0, %sub, !dbg !123
  %2 = load i32, ptr %incx.addr, align 4, !dbg !124, !tbaa !73
  %mul = mul nsw i32 %sub1, %2, !dbg !125
  store i32 %mul, ptr %ix, align 4, !dbg !126, !tbaa !73
  br label %if.end, !dbg !127

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %incy.addr, align 4, !dbg !128, !tbaa !73
  %cmp2 = icmp slt i32 %3, 0, !dbg !130
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !131

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr %n.addr, align 4, !dbg !132, !tbaa !73
  %sub4 = sub nsw i32 %4, 1, !dbg !133
  %sub5 = sub nsw i32 0, %sub4, !dbg !134
  %5 = load i32, ptr %incy.addr, align 4, !dbg !135, !tbaa !73
  %mul6 = mul nsw i32 %sub5, %5, !dbg !136
  store i32 %mul6, ptr %iy, align 4, !dbg !137, !tbaa !73
  br label %if.end7, !dbg !138

if.end7:                                          ; preds = %if.then3, %if.end
  store double 0.000000e+00, ptr %S2, align 8, !dbg !139, !tbaa !86
  store double 0.000000e+00, ptr %S1, align 8, !dbg !140, !tbaa !86
  store double 0.000000e+00, ptr %S, align 8, !dbg !141, !tbaa !86
  store i32 0, ptr %i, align 4, !dbg !142, !tbaa !73
  br label %for.cond, !dbg !144

for.cond:                                         ; preds = %for.inc, %if.end7
  %6 = load i32, ptr %i, align 4, !dbg !145, !tbaa !73
  %7 = load i32, ptr %n.addr, align 4, !dbg !147, !tbaa !73
  %cmp8 = icmp slt i32 %6, %7, !dbg !148
  br i1 %cmp8, label %for.body, label %for.end, !dbg !149

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %x.addr, align 8, !dbg !150, !tbaa !90
  %9 = load i32, ptr %ix, align 4, !dbg !152, !tbaa !73
  %idxprom = sext i32 %9 to i64, !dbg !150
  %arrayidx = getelementptr inbounds float, ptr %8, i64 %idxprom, !dbg !150
  %10 = load float, ptr %arrayidx, align 4, !dbg !150, !tbaa !80
  %11 = load ptr, ptr %y.addr, align 8, !dbg !153, !tbaa !90
  %12 = load i32, ptr %iy, align 4, !dbg !154, !tbaa !73
  %idxprom9 = sext i32 %12 to i64, !dbg !153
  %arrayidx10 = getelementptr inbounds float, ptr %11, i64 %idxprom9, !dbg !153
  %13 = load float, ptr %arrayidx10, align 4, !dbg !153, !tbaa !80
  %mul11 = fmul float %10, %13, !dbg !155
  %conv = fpext float %mul11 to double, !dbg !150
  %14 = call double @llvm.fabs.f64(double %conv), !dbg !156
  %15 = load double, ptr %S, align 8, !dbg !157, !tbaa !86
  %add = fadd double %15, %14, !dbg !157
  store double %add, ptr %S, align 8, !dbg !157, !tbaa !86
  %16 = load ptr, ptr %x.addr, align 8, !dbg !158, !tbaa !90
  %17 = load i32, ptr %ix, align 4, !dbg !159, !tbaa !73
  %idxprom12 = sext i32 %17 to i64, !dbg !158
  %arrayidx13 = getelementptr inbounds float, ptr %16, i64 %idxprom12, !dbg !158
  %18 = load float, ptr %arrayidx13, align 4, !dbg !158, !tbaa !80
  %conv14 = fpext float %18 to double, !dbg !158
  %19 = call double @llvm.fabs.f64(double %conv14), !dbg !160
  %20 = load double, ptr %S1, align 8, !dbg !161, !tbaa !86
  %add15 = fadd double %20, %19, !dbg !161
  store double %add15, ptr %S1, align 8, !dbg !161, !tbaa !86
  %21 = load ptr, ptr %y.addr, align 8, !dbg !162, !tbaa !90
  %22 = load i32, ptr %iy, align 4, !dbg !163, !tbaa !73
  %idxprom16 = sext i32 %22 to i64, !dbg !162
  %arrayidx17 = getelementptr inbounds float, ptr %21, i64 %idxprom16, !dbg !162
  %23 = load float, ptr %arrayidx17, align 4, !dbg !162, !tbaa !80
  %conv18 = fpext float %23 to double, !dbg !162
  %24 = call double @llvm.fabs.f64(double %conv18), !dbg !164
  %25 = load double, ptr %S2, align 8, !dbg !165, !tbaa !86
  %add19 = fadd double %25, %24, !dbg !165
  store double %add19, ptr %S2, align 8, !dbg !165, !tbaa !86
  %26 = load i32, ptr %incx.addr, align 4, !dbg !166, !tbaa !73
  %27 = load i32, ptr %ix, align 4, !dbg !167, !tbaa !73
  %add20 = add nsw i32 %27, %26, !dbg !167
  store i32 %add20, ptr %ix, align 4, !dbg !167, !tbaa !73
  %28 = load i32, ptr %incy.addr, align 4, !dbg !168, !tbaa !73
  %29 = load i32, ptr %iy, align 4, !dbg !169, !tbaa !73
  %add21 = add nsw i32 %29, %28, !dbg !169
  store i32 %add21, ptr %iy, align 4, !dbg !169, !tbaa !73
  br label %for.inc, !dbg !170

for.inc:                                          ; preds = %for.body
  %30 = load i32, ptr %i, align 4, !dbg !171, !tbaa !73
  %inc = add nsw i32 %30, 1, !dbg !171
  store i32 %inc, ptr %i, align 4, !dbg !171, !tbaa !73
  br label %for.cond, !dbg !172, !llvm.loop !173

for.end:                                          ; preds = %for.cond
  %31 = load float, ptr %alpha.addr, align 4, !dbg !176, !tbaa !80
  %conv22 = fpext float %31 to double, !dbg !176
  %32 = call double @llvm.fabs.f64(double %conv22), !dbg !177
  %33 = load double, ptr %S, align 8, !dbg !178, !tbaa !86
  %mul23 = fmul double %33, %32, !dbg !178
  store double %mul23, ptr %S, align 8, !dbg !178, !tbaa !86
  %34 = load float, ptr %beta.addr, align 4, !dbg !179, !tbaa !80
  %35 = load float, ptr %rin.addr, align 4, !dbg !180, !tbaa !80
  %mul24 = fmul float %34, %35, !dbg !181
  %conv25 = fpext float %mul24 to double, !dbg !179
  %36 = call double @llvm.fabs.f64(double %conv25), !dbg !182
  %37 = load double, ptr %S, align 8, !dbg !183, !tbaa !86
  %add26 = fadd double %37, %36, !dbg !183
  store double %add26, ptr %S, align 8, !dbg !183, !tbaa !86
  %call = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !184
  %conv27 = sitofp i32 %call to double, !dbg !185
  %call28 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !186
  %conv29 = sitofp i32 %call28 to double, !dbg !187
  %call30 = call double @pow(double noundef %conv27, double noundef %conv29) #5, !dbg !188
  store double %call30, ptr %un_d, align 8, !dbg !189, !tbaa !86
  %38 = load double, ptr %S, align 8, !dbg !190, !tbaa !86
  %39 = load double, ptr %un_d, align 8, !dbg !190, !tbaa !86
  %cmp31 = fcmp ogt double %38, %39, !dbg !190
  br i1 %cmp31, label %cond.true, label %cond.false, !dbg !190

cond.true:                                        ; preds = %for.end
  %40 = load double, ptr %S, align 8, !dbg !190, !tbaa !86
  br label %cond.end, !dbg !190

cond.false:                                       ; preds = %for.end
  %41 = load double, ptr %un_d, align 8, !dbg !190, !tbaa !86
  br label %cond.end, !dbg !190

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %40, %cond.true ], [ %41, %cond.false ], !dbg !190
  store double %cond, ptr %S, align 8, !dbg !191, !tbaa !86
  %call33 = call double @power(i32 noundef 2, i32 noundef -106), !dbg !192
  store double %call33, ptr %eps_accurate, align 8, !dbg !193, !tbaa !86
  %call34 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 214), !dbg !194
  %conv35 = sitofp i32 %call34 to double, !dbg !195
  %call36 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 214), !dbg !196
  %conv37 = sitofp i32 %call36 to double, !dbg !197
  %call38 = call double @pow(double noundef %conv35, double noundef %conv37) #5, !dbg !198
  store double %call38, ptr %un_accurate, align 8, !dbg !199, !tbaa !86
  %call39 = call double @power(i32 noundef 2, i32 noundef -24), !dbg !200
  store double %call39, ptr %eps_out, align 8, !dbg !201, !tbaa !86
  %call40 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 211), !dbg !202
  %conv41 = sitofp i32 %call40 to double, !dbg !203
  %call42 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 211), !dbg !204
  %conv43 = sitofp i32 %call42 to double, !dbg !205
  %call44 = call double @pow(double noundef %conv41, double noundef %conv43) #5, !dbg !206
  store double %call44, ptr %un_out, align 8, !dbg !207, !tbaa !86
  %42 = load float, ptr %rout.addr, align 4, !dbg !208, !tbaa !80
  %conv45 = fpext float %42 to double, !dbg !208
  %43 = load double, ptr %r_true_l.addr, align 8, !dbg !209, !tbaa !86
  %sub46 = fsub double %conv45, %43, !dbg !210
  %44 = load double, ptr %r_true_t.addr, align 8, !dbg !211, !tbaa !86
  %sub47 = fsub double %sub46, %44, !dbg !212
  %45 = call double @llvm.fabs.f64(double %sub47), !dbg !213
  store double %45, ptr %tmp1, align 8, !dbg !214, !tbaa !86
  %46 = load float, ptr %alpha.addr, align 4, !dbg !215, !tbaa !80
  %conv48 = fpext float %46 to double, !dbg !215
  %47 = call double @llvm.fabs.f64(double %conv48), !dbg !216
  %mul49 = fmul double 2.000000e+00, %47, !dbg !217
  %48 = load i32, ptr %n.addr, align 4, !dbg !218, !tbaa !73
  %conv50 = sitofp i32 %48 to double, !dbg !218
  %49 = call double @llvm.fmuladd.f64(double %mul49, double %conv50, double 3.000000e+00), !dbg !219
  store double %49, ptr %U, align 8, !dbg !220, !tbaa !86
  %50 = load double, ptr %U, align 8, !dbg !221, !tbaa !86
  %51 = load double, ptr %S1, align 8, !dbg !221, !tbaa !86
  %52 = load i32, ptr %n.addr, align 4, !dbg !221, !tbaa !73
  %mul52 = mul nsw i32 2, %52, !dbg !221
  %conv53 = sitofp i32 %mul52 to double, !dbg !221
  %add54 = fadd double %51, %conv53, !dbg !221
  %add55 = fadd double %add54, 1.000000e+00, !dbg !221
  %cmp56 = fcmp ogt double %50, %add55, !dbg !221
  br i1 %cmp56, label %cond.true58, label %cond.false59, !dbg !221

cond.true58:                                      ; preds = %cond.end
  %53 = load double, ptr %U, align 8, !dbg !221, !tbaa !86
  br label %cond.end64, !dbg !221

cond.false59:                                     ; preds = %cond.end
  %54 = load double, ptr %S1, align 8, !dbg !221, !tbaa !86
  %55 = load i32, ptr %n.addr, align 4, !dbg !221, !tbaa !73
  %mul60 = mul nsw i32 2, %55, !dbg !221
  %conv61 = sitofp i32 %mul60 to double, !dbg !221
  %add62 = fadd double %54, %conv61, !dbg !221
  %add63 = fadd double %add62, 1.000000e+00, !dbg !221
  br label %cond.end64, !dbg !221

cond.end64:                                       ; preds = %cond.false59, %cond.true58
  %cond65 = phi double [ %53, %cond.true58 ], [ %add63, %cond.false59 ], !dbg !221
  store double %cond65, ptr %U, align 8, !dbg !222, !tbaa !86
  %56 = load double, ptr %U, align 8, !dbg !223, !tbaa !86
  %57 = load double, ptr %S2, align 8, !dbg !223, !tbaa !86
  %58 = load i32, ptr %n.addr, align 4, !dbg !223, !tbaa !73
  %mul66 = mul nsw i32 2, %58, !dbg !223
  %conv67 = sitofp i32 %mul66 to double, !dbg !223
  %add68 = fadd double %57, %conv67, !dbg !223
  %add69 = fadd double %add68, 1.000000e+00, !dbg !223
  %cmp70 = fcmp ogt double %56, %add69, !dbg !223
  br i1 %cmp70, label %cond.true72, label %cond.false73, !dbg !223

cond.true72:                                      ; preds = %cond.end64
  %59 = load double, ptr %U, align 8, !dbg !223, !tbaa !86
  br label %cond.end78, !dbg !223

cond.false73:                                     ; preds = %cond.end64
  %60 = load double, ptr %S2, align 8, !dbg !223, !tbaa !86
  %61 = load i32, ptr %n.addr, align 4, !dbg !223, !tbaa !73
  %mul74 = mul nsw i32 2, %61, !dbg !223
  %conv75 = sitofp i32 %mul74 to double, !dbg !223
  %add76 = fadd double %60, %conv75, !dbg !223
  %add77 = fadd double %add76, 1.000000e+00, !dbg !223
  br label %cond.end78, !dbg !223

cond.end78:                                       ; preds = %cond.false73, %cond.true72
  %cond79 = phi double [ %59, %cond.true72 ], [ %add77, %cond.false73 ], !dbg !223
  %62 = load double, ptr %un_int.addr, align 8, !dbg !224, !tbaa !86
  %63 = load double, ptr %un_accurate, align 8, !dbg !225, !tbaa !86
  %add80 = fadd double %62, %63, !dbg !226
  %64 = load double, ptr %un_out, align 8, !dbg !227, !tbaa !86
  %65 = call double @llvm.fmuladd.f64(double %cond79, double %add80, double %64), !dbg !228
  store double %65, ptr %U, align 8, !dbg !229, !tbaa !86
  %66 = load double, ptr %tmp1, align 8, !dbg !230, !tbaa !86
  %67 = load i32, ptr %n.addr, align 4, !dbg !231, !tbaa !73
  %add82 = add nsw i32 %67, 2, !dbg !232
  %conv83 = sitofp i32 %add82 to double, !dbg !233
  %68 = load double, ptr %eps_int.addr, align 8, !dbg !234, !tbaa !86
  %69 = load double, ptr %eps_accurate, align 8, !dbg !235, !tbaa !86
  %add84 = fadd double %68, %69, !dbg !236
  %mul85 = fmul double %conv83, %add84, !dbg !237
  %70 = load double, ptr %S, align 8, !dbg !238, !tbaa !86
  %71 = load double, ptr %eps_out, align 8, !dbg !239, !tbaa !86
  %72 = load double, ptr %r_true_l.addr, align 8, !dbg !240, !tbaa !86
  %73 = call double @llvm.fabs.f64(double %72), !dbg !241
  %mul87 = fmul double %71, %73, !dbg !242
  %74 = call double @llvm.fmuladd.f64(double %mul85, double %70, double %mul87), !dbg !243
  %75 = load double, ptr %U, align 8, !dbg !244, !tbaa !86
  %add88 = fadd double %74, %75, !dbg !245
  %div = fdiv double %66, %add88, !dbg !246
  %76 = load ptr, ptr %test_ratio.addr, align 8, !dbg !247, !tbaa !90
  store double %div, ptr %76, align 8, !dbg !248, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_out) #5, !dbg !249
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_accurate) #5, !dbg !249
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_d) #5, !dbg !249
  call void @llvm.lifetime.end.p0(i64 8, ptr %U) #5, !dbg !249
  call void @llvm.lifetime.end.p0(i64 8, ptr %S2) #5, !dbg !249
  call void @llvm.lifetime.end.p0(i64 8, ptr %S1) #5, !dbg !249
  call void @llvm.lifetime.end.p0(i64 8, ptr %S) #5, !dbg !249
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp1) #5, !dbg !249
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_out) #5, !dbg !249
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_accurate) #5, !dbg !249
  call void @llvm.lifetime.end.p0(i64 4, ptr %iy) #5, !dbg !249
  call void @llvm.lifetime.end.p0(i64 4, ptr %ix) #5, !dbg !249
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !249
  ret void, !dbg !249
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind
declare !dbg !250 double @pow(double noundef, double noundef) #3

declare !dbg !254 i32 @BLAS_fpinfo_x(i32 noundef, i32 noundef) #4

declare !dbg !258 double @power(i32 noundef, i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @test_BLAS_ddot(i32 noundef %n, i32 noundef %conj, double noundef %alpha, double noundef %beta, double noundef %rin, double noundef %rout, double noundef %r_true_l, double noundef %r_true_t, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, double noundef %eps_int, double noundef %un_int, ptr noundef %test_ratio) #0 !dbg !262 {
entry:
  %n.addr = alloca i32, align 4
  %conj.addr = alloca i32, align 4
  %alpha.addr = alloca double, align 8
  %beta.addr = alloca double, align 8
  %rin.addr = alloca double, align 8
  %rout.addr = alloca double, align 8
  %r_true_l.addr = alloca double, align 8
  %r_true_t.addr = alloca double, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %eps_int.addr = alloca double, align 8
  %un_int.addr = alloca double, align 8
  %test_ratio.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %eps_accurate = alloca double, align 8
  %eps_out = alloca double, align 8
  %tmp1 = alloca double, align 8
  %S = alloca double, align 8
  %S1 = alloca double, align 8
  %S2 = alloca double, align 8
  %U = alloca double, align 8
  %un_d = alloca double, align 8
  %un_accurate = alloca double, align 8
  %un_out = alloca double, align 8
  store i32 %n, ptr %n.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !266, metadata !DIExpression()), !dbg !294
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !78
  tail call void @llvm.dbg.declare(metadata ptr %conj.addr, metadata !267, metadata !DIExpression()), !dbg !295
  store double %alpha, ptr %alpha.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !268, metadata !DIExpression()), !dbg !296
  store double %beta, ptr %beta.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %beta.addr, metadata !269, metadata !DIExpression()), !dbg !297
  store double %rin, ptr %rin.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %rin.addr, metadata !270, metadata !DIExpression()), !dbg !298
  store double %rout, ptr %rout.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %rout.addr, metadata !271, metadata !DIExpression()), !dbg !299
  store double %r_true_l, ptr %r_true_l.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %r_true_l.addr, metadata !272, metadata !DIExpression()), !dbg !300
  store double %r_true_t, ptr %r_true_t.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %r_true_t.addr, metadata !273, metadata !DIExpression()), !dbg !301
  store ptr %x, ptr %x.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !274, metadata !DIExpression()), !dbg !302
  store i32 %incx, ptr %incx.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incx.addr, metadata !275, metadata !DIExpression()), !dbg !303
  store ptr %y, ptr %y.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !276, metadata !DIExpression()), !dbg !304
  store i32 %incy, ptr %incy.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incy.addr, metadata !277, metadata !DIExpression()), !dbg !305
  store double %eps_int, ptr %eps_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %eps_int.addr, metadata !278, metadata !DIExpression()), !dbg !306
  store double %un_int, ptr %un_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %un_int.addr, metadata !279, metadata !DIExpression()), !dbg !307
  store ptr %test_ratio, ptr %test_ratio.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %test_ratio.addr, metadata !280, metadata !DIExpression()), !dbg !308
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !309
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !281, metadata !DIExpression()), !dbg !310
  call void @llvm.lifetime.start.p0(i64 4, ptr %ix) #5, !dbg !309
  tail call void @llvm.dbg.declare(metadata ptr %ix, metadata !282, metadata !DIExpression()), !dbg !311
  call void @llvm.lifetime.start.p0(i64 4, ptr %iy) #5, !dbg !309
  tail call void @llvm.dbg.declare(metadata ptr %iy, metadata !283, metadata !DIExpression()), !dbg !312
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_accurate) #5, !dbg !313
  tail call void @llvm.dbg.declare(metadata ptr %eps_accurate, metadata !284, metadata !DIExpression()), !dbg !314
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_out) #5, !dbg !313
  tail call void @llvm.dbg.declare(metadata ptr %eps_out, metadata !285, metadata !DIExpression()), !dbg !315
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp1) #5, !dbg !313
  tail call void @llvm.dbg.declare(metadata ptr %tmp1, metadata !286, metadata !DIExpression()), !dbg !316
  call void @llvm.lifetime.start.p0(i64 8, ptr %S) #5, !dbg !313
  tail call void @llvm.dbg.declare(metadata ptr %S, metadata !287, metadata !DIExpression()), !dbg !317
  call void @llvm.lifetime.start.p0(i64 8, ptr %S1) #5, !dbg !313
  tail call void @llvm.dbg.declare(metadata ptr %S1, metadata !288, metadata !DIExpression()), !dbg !318
  call void @llvm.lifetime.start.p0(i64 8, ptr %S2) #5, !dbg !313
  tail call void @llvm.dbg.declare(metadata ptr %S2, metadata !289, metadata !DIExpression()), !dbg !319
  call void @llvm.lifetime.start.p0(i64 8, ptr %U) #5, !dbg !313
  tail call void @llvm.dbg.declare(metadata ptr %U, metadata !290, metadata !DIExpression()), !dbg !320
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_d) #5, !dbg !321
  tail call void @llvm.dbg.declare(metadata ptr %un_d, metadata !291, metadata !DIExpression()), !dbg !322
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_accurate) #5, !dbg !321
  tail call void @llvm.dbg.declare(metadata ptr %un_accurate, metadata !292, metadata !DIExpression()), !dbg !323
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_out) #5, !dbg !321
  tail call void @llvm.dbg.declare(metadata ptr %un_out, metadata !293, metadata !DIExpression()), !dbg !324
  store i32 0, ptr %ix, align 4, !dbg !325, !tbaa !73
  store i32 0, ptr %iy, align 4, !dbg !326, !tbaa !73
  %0 = load i32, ptr %incx.addr, align 4, !dbg !327, !tbaa !73
  %cmp = icmp slt i32 %0, 0, !dbg !329
  br i1 %cmp, label %if.then, label %if.end, !dbg !330

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4, !dbg !331, !tbaa !73
  %sub = sub nsw i32 %1, 1, !dbg !332
  %sub1 = sub nsw i32 0, %sub, !dbg !333
  %2 = load i32, ptr %incx.addr, align 4, !dbg !334, !tbaa !73
  %mul = mul nsw i32 %sub1, %2, !dbg !335
  store i32 %mul, ptr %ix, align 4, !dbg !336, !tbaa !73
  br label %if.end, !dbg !337

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %incy.addr, align 4, !dbg !338, !tbaa !73
  %cmp2 = icmp slt i32 %3, 0, !dbg !340
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !341

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr %n.addr, align 4, !dbg !342, !tbaa !73
  %sub4 = sub nsw i32 %4, 1, !dbg !343
  %sub5 = sub nsw i32 0, %sub4, !dbg !344
  %5 = load i32, ptr %incy.addr, align 4, !dbg !345, !tbaa !73
  %mul6 = mul nsw i32 %sub5, %5, !dbg !346
  store i32 %mul6, ptr %iy, align 4, !dbg !347, !tbaa !73
  br label %if.end7, !dbg !348

if.end7:                                          ; preds = %if.then3, %if.end
  store double 0.000000e+00, ptr %S2, align 8, !dbg !349, !tbaa !86
  store double 0.000000e+00, ptr %S1, align 8, !dbg !350, !tbaa !86
  store double 0.000000e+00, ptr %S, align 8, !dbg !351, !tbaa !86
  store i32 0, ptr %i, align 4, !dbg !352, !tbaa !73
  br label %for.cond, !dbg !354

for.cond:                                         ; preds = %for.inc, %if.end7
  %6 = load i32, ptr %i, align 4, !dbg !355, !tbaa !73
  %7 = load i32, ptr %n.addr, align 4, !dbg !357, !tbaa !73
  %cmp8 = icmp slt i32 %6, %7, !dbg !358
  br i1 %cmp8, label %for.body, label %for.end, !dbg !359

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %x.addr, align 8, !dbg !360, !tbaa !90
  %9 = load i32, ptr %ix, align 4, !dbg !362, !tbaa !73
  %idxprom = sext i32 %9 to i64, !dbg !360
  %arrayidx = getelementptr inbounds double, ptr %8, i64 %idxprom, !dbg !360
  %10 = load double, ptr %arrayidx, align 8, !dbg !360, !tbaa !86
  %11 = load ptr, ptr %y.addr, align 8, !dbg !363, !tbaa !90
  %12 = load i32, ptr %iy, align 4, !dbg !364, !tbaa !73
  %idxprom9 = sext i32 %12 to i64, !dbg !363
  %arrayidx10 = getelementptr inbounds double, ptr %11, i64 %idxprom9, !dbg !363
  %13 = load double, ptr %arrayidx10, align 8, !dbg !363, !tbaa !86
  %mul11 = fmul double %10, %13, !dbg !365
  %14 = call double @llvm.fabs.f64(double %mul11), !dbg !366
  %15 = load double, ptr %S, align 8, !dbg !367, !tbaa !86
  %add = fadd double %15, %14, !dbg !367
  store double %add, ptr %S, align 8, !dbg !367, !tbaa !86
  %16 = load ptr, ptr %x.addr, align 8, !dbg !368, !tbaa !90
  %17 = load i32, ptr %ix, align 4, !dbg !369, !tbaa !73
  %idxprom12 = sext i32 %17 to i64, !dbg !368
  %arrayidx13 = getelementptr inbounds double, ptr %16, i64 %idxprom12, !dbg !368
  %18 = load double, ptr %arrayidx13, align 8, !dbg !368, !tbaa !86
  %19 = call double @llvm.fabs.f64(double %18), !dbg !370
  %20 = load double, ptr %S1, align 8, !dbg !371, !tbaa !86
  %add14 = fadd double %20, %19, !dbg !371
  store double %add14, ptr %S1, align 8, !dbg !371, !tbaa !86
  %21 = load ptr, ptr %y.addr, align 8, !dbg !372, !tbaa !90
  %22 = load i32, ptr %iy, align 4, !dbg !373, !tbaa !73
  %idxprom15 = sext i32 %22 to i64, !dbg !372
  %arrayidx16 = getelementptr inbounds double, ptr %21, i64 %idxprom15, !dbg !372
  %23 = load double, ptr %arrayidx16, align 8, !dbg !372, !tbaa !86
  %24 = call double @llvm.fabs.f64(double %23), !dbg !374
  %25 = load double, ptr %S2, align 8, !dbg !375, !tbaa !86
  %add17 = fadd double %25, %24, !dbg !375
  store double %add17, ptr %S2, align 8, !dbg !375, !tbaa !86
  %26 = load i32, ptr %incx.addr, align 4, !dbg !376, !tbaa !73
  %27 = load i32, ptr %ix, align 4, !dbg !377, !tbaa !73
  %add18 = add nsw i32 %27, %26, !dbg !377
  store i32 %add18, ptr %ix, align 4, !dbg !377, !tbaa !73
  %28 = load i32, ptr %incy.addr, align 4, !dbg !378, !tbaa !73
  %29 = load i32, ptr %iy, align 4, !dbg !379, !tbaa !73
  %add19 = add nsw i32 %29, %28, !dbg !379
  store i32 %add19, ptr %iy, align 4, !dbg !379, !tbaa !73
  br label %for.inc, !dbg !380

for.inc:                                          ; preds = %for.body
  %30 = load i32, ptr %i, align 4, !dbg !381, !tbaa !73
  %inc = add nsw i32 %30, 1, !dbg !381
  store i32 %inc, ptr %i, align 4, !dbg !381, !tbaa !73
  br label %for.cond, !dbg !382, !llvm.loop !383

for.end:                                          ; preds = %for.cond
  %31 = load double, ptr %alpha.addr, align 8, !dbg !385, !tbaa !86
  %32 = call double @llvm.fabs.f64(double %31), !dbg !386
  %33 = load double, ptr %S, align 8, !dbg !387, !tbaa !86
  %mul20 = fmul double %33, %32, !dbg !387
  store double %mul20, ptr %S, align 8, !dbg !387, !tbaa !86
  %34 = load double, ptr %beta.addr, align 8, !dbg !388, !tbaa !86
  %35 = load double, ptr %rin.addr, align 8, !dbg !389, !tbaa !86
  %mul21 = fmul double %34, %35, !dbg !390
  %36 = call double @llvm.fabs.f64(double %mul21), !dbg !391
  %37 = load double, ptr %S, align 8, !dbg !392, !tbaa !86
  %add22 = fadd double %37, %36, !dbg !392
  store double %add22, ptr %S, align 8, !dbg !392, !tbaa !86
  %call = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !393
  %conv = sitofp i32 %call to double, !dbg !394
  %call23 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !395
  %conv24 = sitofp i32 %call23 to double, !dbg !396
  %call25 = call double @pow(double noundef %conv, double noundef %conv24) #5, !dbg !397
  store double %call25, ptr %un_d, align 8, !dbg !398, !tbaa !86
  %38 = load double, ptr %S, align 8, !dbg !399, !tbaa !86
  %39 = load double, ptr %un_d, align 8, !dbg !399, !tbaa !86
  %cmp26 = fcmp ogt double %38, %39, !dbg !399
  br i1 %cmp26, label %cond.true, label %cond.false, !dbg !399

cond.true:                                        ; preds = %for.end
  %40 = load double, ptr %S, align 8, !dbg !399, !tbaa !86
  br label %cond.end, !dbg !399

cond.false:                                       ; preds = %for.end
  %41 = load double, ptr %un_d, align 8, !dbg !399, !tbaa !86
  br label %cond.end, !dbg !399

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %40, %cond.true ], [ %41, %cond.false ], !dbg !399
  store double %cond, ptr %S, align 8, !dbg !400, !tbaa !86
  %call28 = call double @power(i32 noundef 2, i32 noundef -106), !dbg !401
  store double %call28, ptr %eps_accurate, align 8, !dbg !402, !tbaa !86
  %call29 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 214), !dbg !403
  %conv30 = sitofp i32 %call29 to double, !dbg !404
  %call31 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 214), !dbg !405
  %conv32 = sitofp i32 %call31 to double, !dbg !406
  %call33 = call double @pow(double noundef %conv30, double noundef %conv32) #5, !dbg !407
  store double %call33, ptr %un_accurate, align 8, !dbg !408, !tbaa !86
  %call34 = call double @power(i32 noundef 2, i32 noundef -53), !dbg !409
  store double %call34, ptr %eps_out, align 8, !dbg !410, !tbaa !86
  %call35 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !411
  %conv36 = sitofp i32 %call35 to double, !dbg !412
  %call37 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !413
  %conv38 = sitofp i32 %call37 to double, !dbg !414
  %call39 = call double @pow(double noundef %conv36, double noundef %conv38) #5, !dbg !415
  store double %call39, ptr %un_out, align 8, !dbg !416, !tbaa !86
  %42 = load double, ptr %rout.addr, align 8, !dbg !417, !tbaa !86
  %43 = load double, ptr %r_true_l.addr, align 8, !dbg !418, !tbaa !86
  %sub40 = fsub double %42, %43, !dbg !419
  %44 = load double, ptr %r_true_t.addr, align 8, !dbg !420, !tbaa !86
  %sub41 = fsub double %sub40, %44, !dbg !421
  %45 = call double @llvm.fabs.f64(double %sub41), !dbg !422
  store double %45, ptr %tmp1, align 8, !dbg !423, !tbaa !86
  %46 = load double, ptr %alpha.addr, align 8, !dbg !424, !tbaa !86
  %47 = call double @llvm.fabs.f64(double %46), !dbg !425
  %mul42 = fmul double 2.000000e+00, %47, !dbg !426
  %48 = load i32, ptr %n.addr, align 4, !dbg !427, !tbaa !73
  %conv43 = sitofp i32 %48 to double, !dbg !427
  %49 = call double @llvm.fmuladd.f64(double %mul42, double %conv43, double 3.000000e+00), !dbg !428
  store double %49, ptr %U, align 8, !dbg !429, !tbaa !86
  %50 = load double, ptr %U, align 8, !dbg !430, !tbaa !86
  %51 = load double, ptr %S1, align 8, !dbg !430, !tbaa !86
  %52 = load i32, ptr %n.addr, align 4, !dbg !430, !tbaa !73
  %mul45 = mul nsw i32 2, %52, !dbg !430
  %conv46 = sitofp i32 %mul45 to double, !dbg !430
  %add47 = fadd double %51, %conv46, !dbg !430
  %add48 = fadd double %add47, 1.000000e+00, !dbg !430
  %cmp49 = fcmp ogt double %50, %add48, !dbg !430
  br i1 %cmp49, label %cond.true51, label %cond.false52, !dbg !430

cond.true51:                                      ; preds = %cond.end
  %53 = load double, ptr %U, align 8, !dbg !430, !tbaa !86
  br label %cond.end57, !dbg !430

cond.false52:                                     ; preds = %cond.end
  %54 = load double, ptr %S1, align 8, !dbg !430, !tbaa !86
  %55 = load i32, ptr %n.addr, align 4, !dbg !430, !tbaa !73
  %mul53 = mul nsw i32 2, %55, !dbg !430
  %conv54 = sitofp i32 %mul53 to double, !dbg !430
  %add55 = fadd double %54, %conv54, !dbg !430
  %add56 = fadd double %add55, 1.000000e+00, !dbg !430
  br label %cond.end57, !dbg !430

cond.end57:                                       ; preds = %cond.false52, %cond.true51
  %cond58 = phi double [ %53, %cond.true51 ], [ %add56, %cond.false52 ], !dbg !430
  store double %cond58, ptr %U, align 8, !dbg !431, !tbaa !86
  %56 = load double, ptr %U, align 8, !dbg !432, !tbaa !86
  %57 = load double, ptr %S2, align 8, !dbg !432, !tbaa !86
  %58 = load i32, ptr %n.addr, align 4, !dbg !432, !tbaa !73
  %mul59 = mul nsw i32 2, %58, !dbg !432
  %conv60 = sitofp i32 %mul59 to double, !dbg !432
  %add61 = fadd double %57, %conv60, !dbg !432
  %add62 = fadd double %add61, 1.000000e+00, !dbg !432
  %cmp63 = fcmp ogt double %56, %add62, !dbg !432
  br i1 %cmp63, label %cond.true65, label %cond.false66, !dbg !432

cond.true65:                                      ; preds = %cond.end57
  %59 = load double, ptr %U, align 8, !dbg !432, !tbaa !86
  br label %cond.end71, !dbg !432

cond.false66:                                     ; preds = %cond.end57
  %60 = load double, ptr %S2, align 8, !dbg !432, !tbaa !86
  %61 = load i32, ptr %n.addr, align 4, !dbg !432, !tbaa !73
  %mul67 = mul nsw i32 2, %61, !dbg !432
  %conv68 = sitofp i32 %mul67 to double, !dbg !432
  %add69 = fadd double %60, %conv68, !dbg !432
  %add70 = fadd double %add69, 1.000000e+00, !dbg !432
  br label %cond.end71, !dbg !432

cond.end71:                                       ; preds = %cond.false66, %cond.true65
  %cond72 = phi double [ %59, %cond.true65 ], [ %add70, %cond.false66 ], !dbg !432
  %62 = load double, ptr %un_int.addr, align 8, !dbg !433, !tbaa !86
  %63 = load double, ptr %un_accurate, align 8, !dbg !434, !tbaa !86
  %add73 = fadd double %62, %63, !dbg !435
  %64 = load double, ptr %un_out, align 8, !dbg !436, !tbaa !86
  %65 = call double @llvm.fmuladd.f64(double %cond72, double %add73, double %64), !dbg !437
  store double %65, ptr %U, align 8, !dbg !438, !tbaa !86
  %66 = load double, ptr %tmp1, align 8, !dbg !439, !tbaa !86
  %67 = load i32, ptr %n.addr, align 4, !dbg !440, !tbaa !73
  %add75 = add nsw i32 %67, 2, !dbg !441
  %conv76 = sitofp i32 %add75 to double, !dbg !442
  %68 = load double, ptr %eps_int.addr, align 8, !dbg !443, !tbaa !86
  %69 = load double, ptr %eps_accurate, align 8, !dbg !444, !tbaa !86
  %add77 = fadd double %68, %69, !dbg !445
  %mul78 = fmul double %conv76, %add77, !dbg !446
  %70 = load double, ptr %S, align 8, !dbg !447, !tbaa !86
  %71 = load double, ptr %eps_out, align 8, !dbg !448, !tbaa !86
  %72 = load double, ptr %r_true_l.addr, align 8, !dbg !449, !tbaa !86
  %73 = call double @llvm.fabs.f64(double %72), !dbg !450
  %mul80 = fmul double %71, %73, !dbg !451
  %74 = call double @llvm.fmuladd.f64(double %mul78, double %70, double %mul80), !dbg !452
  %75 = load double, ptr %U, align 8, !dbg !453, !tbaa !86
  %add81 = fadd double %74, %75, !dbg !454
  %div = fdiv double %66, %add81, !dbg !455
  %76 = load ptr, ptr %test_ratio.addr, align 8, !dbg !456, !tbaa !90
  store double %div, ptr %76, align 8, !dbg !457, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_out) #5, !dbg !458
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_accurate) #5, !dbg !458
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_d) #5, !dbg !458
  call void @llvm.lifetime.end.p0(i64 8, ptr %U) #5, !dbg !458
  call void @llvm.lifetime.end.p0(i64 8, ptr %S2) #5, !dbg !458
  call void @llvm.lifetime.end.p0(i64 8, ptr %S1) #5, !dbg !458
  call void @llvm.lifetime.end.p0(i64 8, ptr %S) #5, !dbg !458
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp1) #5, !dbg !458
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_out) #5, !dbg !458
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_accurate) #5, !dbg !458
  call void @llvm.lifetime.end.p0(i64 4, ptr %iy) #5, !dbg !458
  call void @llvm.lifetime.end.p0(i64 4, ptr %ix) #5, !dbg !458
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !458
  ret void, !dbg !458
}

; Function Attrs: nounwind uwtable
define dso_local void @test_BLAS_cdot(i32 noundef %n, i32 noundef %conj, ptr noundef %alpha, ptr noundef %beta, ptr noundef %rin, ptr noundef %rout, ptr noundef %r_true_l, ptr noundef %r_true_t, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, double noundef %eps_int, double noundef %un_int, ptr noundef %test_ratio) #0 !dbg !459 {
entry:
  %n.addr = alloca i32, align 4
  %conj.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %rin.addr = alloca ptr, align 8
  %rout.addr = alloca ptr, align 8
  %r_true_l.addr = alloca ptr, align 8
  %r_true_t.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %eps_int.addr = alloca double, align 8
  %un_int.addr = alloca double, align 8
  %test_ratio.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %eps_accurate = alloca double, align 8
  %eps_out = alloca double, align 8
  %tmp1 = alloca double, align 8
  %S = alloca double, align 8
  %S1 = alloca double, align 8
  %S2 = alloca double, align 8
  %U = alloca double, align 8
  %prod = alloca [2 x double], align 16
  %tmp = alloca [2 x double], align 16
  %un_d = alloca double, align 8
  %un_accurate = alloca double, align 8
  %un_out = alloca double, align 8
  %x_i = alloca ptr, align 8
  %y_i = alloca ptr, align 8
  %alpha_i = alloca ptr, align 8
  %beta_i = alloca ptr, align 8
  %rin_i = alloca ptr, align 8
  %rout_i = alloca ptr, align 8
  %x_ii = alloca [2 x float], align 4
  %y_ii = alloca [2 x float], align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !466, metadata !DIExpression()), !dbg !508
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !78
  tail call void @llvm.dbg.declare(metadata ptr %conj.addr, metadata !467, metadata !DIExpression()), !dbg !509
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !468, metadata !DIExpression()), !dbg !510
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %beta.addr, metadata !469, metadata !DIExpression()), !dbg !511
  store ptr %rin, ptr %rin.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %rin.addr, metadata !470, metadata !DIExpression()), !dbg !512
  store ptr %rout, ptr %rout.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %rout.addr, metadata !471, metadata !DIExpression()), !dbg !513
  store ptr %r_true_l, ptr %r_true_l.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %r_true_l.addr, metadata !472, metadata !DIExpression()), !dbg !514
  store ptr %r_true_t, ptr %r_true_t.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %r_true_t.addr, metadata !473, metadata !DIExpression()), !dbg !515
  store ptr %x, ptr %x.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !474, metadata !DIExpression()), !dbg !516
  store i32 %incx, ptr %incx.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incx.addr, metadata !475, metadata !DIExpression()), !dbg !517
  store ptr %y, ptr %y.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !476, metadata !DIExpression()), !dbg !518
  store i32 %incy, ptr %incy.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incy.addr, metadata !477, metadata !DIExpression()), !dbg !519
  store double %eps_int, ptr %eps_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %eps_int.addr, metadata !478, metadata !DIExpression()), !dbg !520
  store double %un_int, ptr %un_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %un_int.addr, metadata !479, metadata !DIExpression()), !dbg !521
  store ptr %test_ratio, ptr %test_ratio.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %test_ratio.addr, metadata !480, metadata !DIExpression()), !dbg !522
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !523
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !481, metadata !DIExpression()), !dbg !524
  call void @llvm.lifetime.start.p0(i64 4, ptr %ix) #5, !dbg !523
  tail call void @llvm.dbg.declare(metadata ptr %ix, metadata !482, metadata !DIExpression()), !dbg !525
  call void @llvm.lifetime.start.p0(i64 4, ptr %iy) #5, !dbg !523
  tail call void @llvm.dbg.declare(metadata ptr %iy, metadata !483, metadata !DIExpression()), !dbg !526
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_accurate) #5, !dbg !527
  tail call void @llvm.dbg.declare(metadata ptr %eps_accurate, metadata !484, metadata !DIExpression()), !dbg !528
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_out) #5, !dbg !527
  tail call void @llvm.dbg.declare(metadata ptr %eps_out, metadata !485, metadata !DIExpression()), !dbg !529
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp1) #5, !dbg !527
  tail call void @llvm.dbg.declare(metadata ptr %tmp1, metadata !486, metadata !DIExpression()), !dbg !530
  call void @llvm.lifetime.start.p0(i64 8, ptr %S) #5, !dbg !527
  tail call void @llvm.dbg.declare(metadata ptr %S, metadata !487, metadata !DIExpression()), !dbg !531
  call void @llvm.lifetime.start.p0(i64 8, ptr %S1) #5, !dbg !527
  tail call void @llvm.dbg.declare(metadata ptr %S1, metadata !488, metadata !DIExpression()), !dbg !532
  call void @llvm.lifetime.start.p0(i64 8, ptr %S2) #5, !dbg !527
  tail call void @llvm.dbg.declare(metadata ptr %S2, metadata !489, metadata !DIExpression()), !dbg !533
  call void @llvm.lifetime.start.p0(i64 8, ptr %U) #5, !dbg !527
  tail call void @llvm.dbg.declare(metadata ptr %U, metadata !490, metadata !DIExpression()), !dbg !534
  call void @llvm.lifetime.start.p0(i64 16, ptr %prod) #5, !dbg !527
  tail call void @llvm.dbg.declare(metadata ptr %prod, metadata !491, metadata !DIExpression()), !dbg !535
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #5, !dbg !527
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !495, metadata !DIExpression()), !dbg !536
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_d) #5, !dbg !537
  tail call void @llvm.dbg.declare(metadata ptr %un_d, metadata !496, metadata !DIExpression()), !dbg !538
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_accurate) #5, !dbg !537
  tail call void @llvm.dbg.declare(metadata ptr %un_accurate, metadata !497, metadata !DIExpression()), !dbg !539
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_out) #5, !dbg !537
  tail call void @llvm.dbg.declare(metadata ptr %un_out, metadata !498, metadata !DIExpression()), !dbg !540
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_i) #5, !dbg !541
  tail call void @llvm.dbg.declare(metadata ptr %x_i, metadata !499, metadata !DIExpression()), !dbg !542
  %0 = load ptr, ptr %x.addr, align 8, !dbg !543, !tbaa !90
  store ptr %0, ptr %x_i, align 8, !dbg !542, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_i) #5, !dbg !544
  tail call void @llvm.dbg.declare(metadata ptr %y_i, metadata !500, metadata !DIExpression()), !dbg !545
  %1 = load ptr, ptr %y.addr, align 8, !dbg !546, !tbaa !90
  store ptr %1, ptr %y_i, align 8, !dbg !545, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_i) #5, !dbg !547
  tail call void @llvm.dbg.declare(metadata ptr %alpha_i, metadata !501, metadata !DIExpression()), !dbg !548
  %2 = load ptr, ptr %alpha.addr, align 8, !dbg !549, !tbaa !90
  store ptr %2, ptr %alpha_i, align 8, !dbg !548, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta_i) #5, !dbg !550
  tail call void @llvm.dbg.declare(metadata ptr %beta_i, metadata !502, metadata !DIExpression()), !dbg !551
  %3 = load ptr, ptr %beta.addr, align 8, !dbg !552, !tbaa !90
  store ptr %3, ptr %beta_i, align 8, !dbg !551, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %rin_i) #5, !dbg !553
  tail call void @llvm.dbg.declare(metadata ptr %rin_i, metadata !503, metadata !DIExpression()), !dbg !554
  %4 = load ptr, ptr %rin.addr, align 8, !dbg !555, !tbaa !90
  store ptr %4, ptr %rin_i, align 8, !dbg !554, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %rout_i) #5, !dbg !556
  tail call void @llvm.dbg.declare(metadata ptr %rout_i, metadata !504, metadata !DIExpression()), !dbg !557
  %5 = load ptr, ptr %rout.addr, align 8, !dbg !558, !tbaa !90
  store ptr %5, ptr %rout_i, align 8, !dbg !557, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_ii) #5, !dbg !559
  tail call void @llvm.dbg.declare(metadata ptr %x_ii, metadata !505, metadata !DIExpression()), !dbg !560
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_ii) #5, !dbg !561
  tail call void @llvm.dbg.declare(metadata ptr %y_ii, metadata !507, metadata !DIExpression()), !dbg !562
  %6 = load i32, ptr %incx.addr, align 4, !dbg !563, !tbaa !73
  %mul = mul nsw i32 %6, 2, !dbg !563
  store i32 %mul, ptr %incx.addr, align 4, !dbg !563, !tbaa !73
  %7 = load i32, ptr %incy.addr, align 4, !dbg !564, !tbaa !73
  %mul1 = mul nsw i32 %7, 2, !dbg !564
  store i32 %mul1, ptr %incy.addr, align 4, !dbg !564, !tbaa !73
  store i32 0, ptr %ix, align 4, !dbg !565, !tbaa !73
  store i32 0, ptr %iy, align 4, !dbg !566, !tbaa !73
  %8 = load i32, ptr %incx.addr, align 4, !dbg !567, !tbaa !73
  %cmp = icmp slt i32 %8, 0, !dbg !569
  br i1 %cmp, label %if.then, label %if.end, !dbg !570

if.then:                                          ; preds = %entry
  %9 = load i32, ptr %n.addr, align 4, !dbg !571, !tbaa !73
  %sub = sub nsw i32 %9, 1, !dbg !572
  %sub2 = sub nsw i32 0, %sub, !dbg !573
  %10 = load i32, ptr %incx.addr, align 4, !dbg !574, !tbaa !73
  %mul3 = mul nsw i32 %sub2, %10, !dbg !575
  store i32 %mul3, ptr %ix, align 4, !dbg !576, !tbaa !73
  br label %if.end, !dbg !577

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, ptr %incy.addr, align 4, !dbg !578, !tbaa !73
  %cmp4 = icmp slt i32 %11, 0, !dbg !580
  br i1 %cmp4, label %if.then5, label %if.end9, !dbg !581

if.then5:                                         ; preds = %if.end
  %12 = load i32, ptr %n.addr, align 4, !dbg !582, !tbaa !73
  %sub6 = sub nsw i32 %12, 1, !dbg !583
  %sub7 = sub nsw i32 0, %sub6, !dbg !584
  %13 = load i32, ptr %incy.addr, align 4, !dbg !585, !tbaa !73
  %mul8 = mul nsw i32 %sub7, %13, !dbg !586
  store i32 %mul8, ptr %iy, align 4, !dbg !587, !tbaa !73
  br label %if.end9, !dbg !588

if.end9:                                          ; preds = %if.then5, %if.end
  store double 0.000000e+00, ptr %S2, align 8, !dbg !589, !tbaa !86
  store double 0.000000e+00, ptr %S1, align 8, !dbg !590, !tbaa !86
  store double 0.000000e+00, ptr %S, align 8, !dbg !591, !tbaa !86
  store i32 0, ptr %i, align 4, !dbg !592, !tbaa !73
  br label %for.cond, !dbg !594

for.cond:                                         ; preds = %for.inc, %if.end9
  %14 = load i32, ptr %i, align 4, !dbg !595, !tbaa !73
  %15 = load i32, ptr %n.addr, align 4, !dbg !597, !tbaa !73
  %cmp10 = icmp slt i32 %14, %15, !dbg !598
  br i1 %cmp10, label %for.body, label %for.end, !dbg !599

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %x_i, align 8, !dbg !600, !tbaa !90
  %17 = load i32, ptr %ix, align 4, !dbg !602, !tbaa !73
  %idxprom = sext i32 %17 to i64, !dbg !600
  %arrayidx = getelementptr inbounds float, ptr %16, i64 %idxprom, !dbg !600
  %18 = load float, ptr %arrayidx, align 4, !dbg !600, !tbaa !80
  %arrayidx11 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 0, !dbg !603
  store float %18, ptr %arrayidx11, align 4, !dbg !604, !tbaa !80
  %19 = load ptr, ptr %x_i, align 8, !dbg !605, !tbaa !90
  %20 = load i32, ptr %ix, align 4, !dbg !606, !tbaa !73
  %add = add nsw i32 %20, 1, !dbg !607
  %idxprom12 = sext i32 %add to i64, !dbg !605
  %arrayidx13 = getelementptr inbounds float, ptr %19, i64 %idxprom12, !dbg !605
  %21 = load float, ptr %arrayidx13, align 4, !dbg !605, !tbaa !80
  %arrayidx14 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !608
  store float %21, ptr %arrayidx14, align 4, !dbg !609, !tbaa !80
  %22 = load ptr, ptr %y_i, align 8, !dbg !610, !tbaa !90
  %23 = load i32, ptr %iy, align 4, !dbg !611, !tbaa !73
  %idxprom15 = sext i32 %23 to i64, !dbg !610
  %arrayidx16 = getelementptr inbounds float, ptr %22, i64 %idxprom15, !dbg !610
  %24 = load float, ptr %arrayidx16, align 4, !dbg !610, !tbaa !80
  %arrayidx17 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 0, !dbg !612
  store float %24, ptr %arrayidx17, align 4, !dbg !613, !tbaa !80
  %25 = load ptr, ptr %y_i, align 8, !dbg !614, !tbaa !90
  %26 = load i32, ptr %iy, align 4, !dbg !615, !tbaa !73
  %add18 = add nsw i32 %26, 1, !dbg !616
  %idxprom19 = sext i32 %add18 to i64, !dbg !614
  %arrayidx20 = getelementptr inbounds float, ptr %25, i64 %idxprom19, !dbg !614
  %27 = load float, ptr %arrayidx20, align 4, !dbg !614, !tbaa !80
  %arrayidx21 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 1, !dbg !617
  store float %27, ptr %arrayidx21, align 4, !dbg !618, !tbaa !80
  %28 = load i32, ptr %conj.addr, align 4, !dbg !619, !tbaa !78
  %cmp22 = icmp eq i32 %28, 191, !dbg !621
  br i1 %cmp22, label %if.then23, label %if.end26, !dbg !622

if.then23:                                        ; preds = %for.body
  %arrayidx24 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !623
  %29 = load float, ptr %arrayidx24, align 4, !dbg !623, !tbaa !80
  %fneg = fneg float %29, !dbg !625
  %arrayidx25 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !626
  store float %fneg, ptr %arrayidx25, align 4, !dbg !627, !tbaa !80
  br label %if.end26, !dbg !628

if.end26:                                         ; preds = %if.then23, %for.body
  %arrayidx27 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 0, !dbg !629
  %30 = load float, ptr %arrayidx27, align 4, !dbg !629, !tbaa !80
  %arrayidx28 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 0, !dbg !630
  %31 = load float, ptr %arrayidx28, align 4, !dbg !630, !tbaa !80
  %arrayidx30 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !631
  %32 = load float, ptr %arrayidx30, align 4, !dbg !631, !tbaa !80
  %arrayidx31 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !632
  %33 = load float, ptr %arrayidx31, align 4, !dbg !632, !tbaa !80
  %mul32 = fmul float %32, %33, !dbg !633
  %34 = call float @llvm.fmuladd.f32(float %30, float %31, float %mul32), !dbg !634
  %conv = fpext float %34 to double, !dbg !629
  %call = call double @sqrt(double noundef %conv) #5, !dbg !635
  %35 = load double, ptr %S1, align 8, !dbg !636, !tbaa !86
  %add33 = fadd double %35, %call, !dbg !636
  store double %add33, ptr %S1, align 8, !dbg !636, !tbaa !86
  %arrayidx34 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 0, !dbg !637
  %36 = load float, ptr %arrayidx34, align 4, !dbg !637, !tbaa !80
  %arrayidx35 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 0, !dbg !638
  %37 = load float, ptr %arrayidx35, align 4, !dbg !638, !tbaa !80
  %arrayidx37 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 1, !dbg !639
  %38 = load float, ptr %arrayidx37, align 4, !dbg !639, !tbaa !80
  %arrayidx38 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 1, !dbg !640
  %39 = load float, ptr %arrayidx38, align 4, !dbg !640, !tbaa !80
  %mul39 = fmul float %38, %39, !dbg !641
  %40 = call float @llvm.fmuladd.f32(float %36, float %37, float %mul39), !dbg !642
  %conv40 = fpext float %40 to double, !dbg !637
  %call41 = call double @sqrt(double noundef %conv40) #5, !dbg !643
  %41 = load double, ptr %S2, align 8, !dbg !644, !tbaa !86
  %add42 = fadd double %41, %call41, !dbg !644
  store double %add42, ptr %S2, align 8, !dbg !644, !tbaa !86
  %arrayidx43 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 0, !dbg !645
  %42 = load float, ptr %arrayidx43, align 4, !dbg !645, !tbaa !80
  %arrayidx44 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 0, !dbg !647
  %43 = load float, ptr %arrayidx44, align 4, !dbg !647, !tbaa !80
  %arrayidx46 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !648
  %44 = load float, ptr %arrayidx46, align 4, !dbg !648, !tbaa !80
  %arrayidx47 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 1, !dbg !649
  %45 = load float, ptr %arrayidx47, align 4, !dbg !649, !tbaa !80
  %mul48 = fmul float %44, %45, !dbg !650
  %neg = fneg float %mul48, !dbg !651
  %46 = call float @llvm.fmuladd.f32(float %42, float %43, float %neg), !dbg !651
  %conv49 = fpext float %46 to double, !dbg !645
  %arrayidx50 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !652
  store double %conv49, ptr %arrayidx50, align 16, !dbg !653, !tbaa !86
  %arrayidx51 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 0, !dbg !654
  %47 = load float, ptr %arrayidx51, align 4, !dbg !654, !tbaa !80
  %arrayidx52 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 1, !dbg !655
  %48 = load float, ptr %arrayidx52, align 4, !dbg !655, !tbaa !80
  %arrayidx54 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !656
  %49 = load float, ptr %arrayidx54, align 4, !dbg !656, !tbaa !80
  %arrayidx55 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 0, !dbg !657
  %50 = load float, ptr %arrayidx55, align 4, !dbg !657, !tbaa !80
  %mul56 = fmul float %49, %50, !dbg !658
  %51 = call float @llvm.fmuladd.f32(float %47, float %48, float %mul56), !dbg !659
  %conv57 = fpext float %51 to double, !dbg !654
  %arrayidx58 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !660
  store double %conv57, ptr %arrayidx58, align 8, !dbg !661, !tbaa !86
  %arrayidx59 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !662
  %52 = load double, ptr %arrayidx59, align 16, !dbg !662, !tbaa !86
  %arrayidx60 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !663
  %53 = load double, ptr %arrayidx60, align 16, !dbg !663, !tbaa !86
  %arrayidx62 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !664
  %54 = load double, ptr %arrayidx62, align 8, !dbg !664, !tbaa !86
  %arrayidx63 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !665
  %55 = load double, ptr %arrayidx63, align 8, !dbg !665, !tbaa !86
  %mul64 = fmul double %54, %55, !dbg !666
  %56 = call double @llvm.fmuladd.f64(double %52, double %53, double %mul64), !dbg !667
  %call65 = call double @sqrt(double noundef %56) #5, !dbg !668
  %57 = load double, ptr %S, align 8, !dbg !669, !tbaa !86
  %add66 = fadd double %57, %call65, !dbg !669
  store double %add66, ptr %S, align 8, !dbg !669, !tbaa !86
  %58 = load i32, ptr %incx.addr, align 4, !dbg !670, !tbaa !73
  %59 = load i32, ptr %ix, align 4, !dbg !671, !tbaa !73
  %add67 = add nsw i32 %59, %58, !dbg !671
  store i32 %add67, ptr %ix, align 4, !dbg !671, !tbaa !73
  %60 = load i32, ptr %incy.addr, align 4, !dbg !672, !tbaa !73
  %61 = load i32, ptr %iy, align 4, !dbg !673, !tbaa !73
  %add68 = add nsw i32 %61, %60, !dbg !673
  store i32 %add68, ptr %iy, align 4, !dbg !673, !tbaa !73
  br label %for.inc, !dbg !674

for.inc:                                          ; preds = %if.end26
  %62 = load i32, ptr %i, align 4, !dbg !675, !tbaa !73
  %inc = add nsw i32 %62, 1, !dbg !675
  store i32 %inc, ptr %i, align 4, !dbg !675, !tbaa !73
  br label %for.cond, !dbg !676, !llvm.loop !677

for.end:                                          ; preds = %for.cond
  %63 = load ptr, ptr %alpha_i, align 8, !dbg !679, !tbaa !90
  %arrayidx69 = getelementptr inbounds float, ptr %63, i64 0, !dbg !679
  %64 = load float, ptr %arrayidx69, align 4, !dbg !679, !tbaa !80
  %65 = load ptr, ptr %alpha_i, align 8, !dbg !680, !tbaa !90
  %arrayidx70 = getelementptr inbounds float, ptr %65, i64 0, !dbg !680
  %66 = load float, ptr %arrayidx70, align 4, !dbg !680, !tbaa !80
  %67 = load ptr, ptr %alpha_i, align 8, !dbg !681, !tbaa !90
  %arrayidx72 = getelementptr inbounds float, ptr %67, i64 1, !dbg !681
  %68 = load float, ptr %arrayidx72, align 4, !dbg !681, !tbaa !80
  %69 = load ptr, ptr %alpha_i, align 8, !dbg !682, !tbaa !90
  %arrayidx73 = getelementptr inbounds float, ptr %69, i64 1, !dbg !682
  %70 = load float, ptr %arrayidx73, align 4, !dbg !682, !tbaa !80
  %mul74 = fmul float %68, %70, !dbg !683
  %71 = call float @llvm.fmuladd.f32(float %64, float %66, float %mul74), !dbg !684
  %conv75 = fpext float %71 to double, !dbg !679
  %call76 = call double @sqrt(double noundef %conv75) #5, !dbg !685
  %72 = load double, ptr %S, align 8, !dbg !686, !tbaa !86
  %mul77 = fmul double %72, %call76, !dbg !686
  store double %mul77, ptr %S, align 8, !dbg !686, !tbaa !86
  %73 = load ptr, ptr %beta_i, align 8, !dbg !687, !tbaa !90
  %arrayidx78 = getelementptr inbounds float, ptr %73, i64 0, !dbg !687
  %74 = load float, ptr %arrayidx78, align 4, !dbg !687, !tbaa !80
  %75 = load ptr, ptr %rin_i, align 8, !dbg !689, !tbaa !90
  %arrayidx79 = getelementptr inbounds float, ptr %75, i64 0, !dbg !689
  %76 = load float, ptr %arrayidx79, align 4, !dbg !689, !tbaa !80
  %77 = load ptr, ptr %beta_i, align 8, !dbg !690, !tbaa !90
  %arrayidx81 = getelementptr inbounds float, ptr %77, i64 1, !dbg !690
  %78 = load float, ptr %arrayidx81, align 4, !dbg !690, !tbaa !80
  %79 = load ptr, ptr %rin_i, align 8, !dbg !691, !tbaa !90
  %arrayidx82 = getelementptr inbounds float, ptr %79, i64 1, !dbg !691
  %80 = load float, ptr %arrayidx82, align 4, !dbg !691, !tbaa !80
  %mul83 = fmul float %78, %80, !dbg !692
  %neg84 = fneg float %mul83, !dbg !693
  %81 = call float @llvm.fmuladd.f32(float %74, float %76, float %neg84), !dbg !693
  %conv85 = fpext float %81 to double, !dbg !687
  %arrayidx86 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !694
  store double %conv85, ptr %arrayidx86, align 16, !dbg !695, !tbaa !86
  %82 = load ptr, ptr %beta_i, align 8, !dbg !696, !tbaa !90
  %arrayidx87 = getelementptr inbounds float, ptr %82, i64 0, !dbg !696
  %83 = load float, ptr %arrayidx87, align 4, !dbg !696, !tbaa !80
  %84 = load ptr, ptr %rin_i, align 8, !dbg !697, !tbaa !90
  %arrayidx88 = getelementptr inbounds float, ptr %84, i64 1, !dbg !697
  %85 = load float, ptr %arrayidx88, align 4, !dbg !697, !tbaa !80
  %86 = load ptr, ptr %beta_i, align 8, !dbg !698, !tbaa !90
  %arrayidx90 = getelementptr inbounds float, ptr %86, i64 1, !dbg !698
  %87 = load float, ptr %arrayidx90, align 4, !dbg !698, !tbaa !80
  %88 = load ptr, ptr %rin_i, align 8, !dbg !699, !tbaa !90
  %arrayidx91 = getelementptr inbounds float, ptr %88, i64 0, !dbg !699
  %89 = load float, ptr %arrayidx91, align 4, !dbg !699, !tbaa !80
  %mul92 = fmul float %87, %89, !dbg !700
  %90 = call float @llvm.fmuladd.f32(float %83, float %85, float %mul92), !dbg !701
  %conv93 = fpext float %90 to double, !dbg !696
  %arrayidx94 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !702
  store double %conv93, ptr %arrayidx94, align 8, !dbg !703, !tbaa !86
  %arrayidx95 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !704
  %91 = load double, ptr %arrayidx95, align 16, !dbg !704, !tbaa !86
  %arrayidx96 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !705
  %92 = load double, ptr %arrayidx96, align 16, !dbg !705, !tbaa !86
  %arrayidx98 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !706
  %93 = load double, ptr %arrayidx98, align 8, !dbg !706, !tbaa !86
  %arrayidx99 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !707
  %94 = load double, ptr %arrayidx99, align 8, !dbg !707, !tbaa !86
  %mul100 = fmul double %93, %94, !dbg !708
  %95 = call double @llvm.fmuladd.f64(double %91, double %92, double %mul100), !dbg !709
  %call101 = call double @sqrt(double noundef %95) #5, !dbg !710
  %96 = load double, ptr %S, align 8, !dbg !711, !tbaa !86
  %add102 = fadd double %96, %call101, !dbg !711
  store double %add102, ptr %S, align 8, !dbg !711, !tbaa !86
  %call103 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !712
  %conv104 = sitofp i32 %call103 to double, !dbg !713
  %call105 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !714
  %conv106 = sitofp i32 %call105 to double, !dbg !715
  %call107 = call double @pow(double noundef %conv104, double noundef %conv106) #5, !dbg !716
  store double %call107, ptr %un_d, align 8, !dbg !717, !tbaa !86
  %97 = load double, ptr %S, align 8, !dbg !718, !tbaa !86
  %98 = load double, ptr %un_d, align 8, !dbg !718, !tbaa !86
  %cmp108 = fcmp ogt double %97, %98, !dbg !718
  br i1 %cmp108, label %cond.true, label %cond.false, !dbg !718

cond.true:                                        ; preds = %for.end
  %99 = load double, ptr %S, align 8, !dbg !718, !tbaa !86
  br label %cond.end, !dbg !718

cond.false:                                       ; preds = %for.end
  %100 = load double, ptr %un_d, align 8, !dbg !718, !tbaa !86
  br label %cond.end, !dbg !718

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %99, %cond.true ], [ %100, %cond.false ], !dbg !718
  store double %cond, ptr %S, align 8, !dbg !719, !tbaa !86
  %call110 = call double @power(i32 noundef 2, i32 noundef -106), !dbg !720
  store double %call110, ptr %eps_accurate, align 8, !dbg !721, !tbaa !86
  %call111 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 214), !dbg !722
  %conv112 = sitofp i32 %call111 to double, !dbg !723
  %call113 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 214), !dbg !724
  %conv114 = sitofp i32 %call113 to double, !dbg !725
  %call115 = call double @pow(double noundef %conv112, double noundef %conv114) #5, !dbg !726
  store double %call115, ptr %un_accurate, align 8, !dbg !727, !tbaa !86
  %call116 = call double @power(i32 noundef 2, i32 noundef -24), !dbg !728
  store double %call116, ptr %eps_out, align 8, !dbg !729, !tbaa !86
  %call117 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 211), !dbg !730
  %conv118 = sitofp i32 %call117 to double, !dbg !731
  %call119 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 211), !dbg !732
  %conv120 = sitofp i32 %call119 to double, !dbg !733
  %call121 = call double @pow(double noundef %conv118, double noundef %conv120) #5, !dbg !734
  store double %call121, ptr %un_out, align 8, !dbg !735, !tbaa !86
  %101 = load ptr, ptr %rout_i, align 8, !dbg !736, !tbaa !90
  %arrayidx122 = getelementptr inbounds float, ptr %101, i64 0, !dbg !736
  %102 = load float, ptr %arrayidx122, align 4, !dbg !736, !tbaa !80
  %conv123 = fpext float %102 to double, !dbg !736
  %103 = load ptr, ptr %r_true_l.addr, align 8, !dbg !737, !tbaa !90
  %arrayidx124 = getelementptr inbounds double, ptr %103, i64 0, !dbg !737
  %104 = load double, ptr %arrayidx124, align 8, !dbg !737, !tbaa !86
  %sub125 = fsub double %conv123, %104, !dbg !738
  %105 = load ptr, ptr %r_true_t.addr, align 8, !dbg !739, !tbaa !90
  %arrayidx126 = getelementptr inbounds double, ptr %105, i64 0, !dbg !739
  %106 = load double, ptr %arrayidx126, align 8, !dbg !739, !tbaa !86
  %sub127 = fsub double %sub125, %106, !dbg !740
  %arrayidx128 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !741
  store double %sub127, ptr %arrayidx128, align 16, !dbg !742, !tbaa !86
  %107 = load ptr, ptr %rout_i, align 8, !dbg !743, !tbaa !90
  %arrayidx129 = getelementptr inbounds float, ptr %107, i64 1, !dbg !743
  %108 = load float, ptr %arrayidx129, align 4, !dbg !743, !tbaa !80
  %conv130 = fpext float %108 to double, !dbg !743
  %109 = load ptr, ptr %r_true_l.addr, align 8, !dbg !744, !tbaa !90
  %arrayidx131 = getelementptr inbounds double, ptr %109, i64 1, !dbg !744
  %110 = load double, ptr %arrayidx131, align 8, !dbg !744, !tbaa !86
  %sub132 = fsub double %conv130, %110, !dbg !745
  %111 = load ptr, ptr %r_true_t.addr, align 8, !dbg !746, !tbaa !90
  %arrayidx133 = getelementptr inbounds double, ptr %111, i64 1, !dbg !746
  %112 = load double, ptr %arrayidx133, align 8, !dbg !746, !tbaa !86
  %sub134 = fsub double %sub132, %112, !dbg !747
  %arrayidx135 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !748
  store double %sub134, ptr %arrayidx135, align 8, !dbg !749, !tbaa !86
  %arrayidx136 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !750
  %113 = load double, ptr %arrayidx136, align 16, !dbg !750, !tbaa !86
  %arrayidx137 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !751
  %114 = load double, ptr %arrayidx137, align 16, !dbg !751, !tbaa !86
  %arrayidx139 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !752
  %115 = load double, ptr %arrayidx139, align 8, !dbg !752, !tbaa !86
  %arrayidx140 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !753
  %116 = load double, ptr %arrayidx140, align 8, !dbg !753, !tbaa !86
  %mul141 = fmul double %115, %116, !dbg !754
  %117 = call double @llvm.fmuladd.f64(double %113, double %114, double %mul141), !dbg !755
  %call142 = call double @sqrt(double noundef %117) #5, !dbg !756
  store double %call142, ptr %tmp1, align 8, !dbg !757, !tbaa !86
  %118 = load ptr, ptr %alpha_i, align 8, !dbg !758, !tbaa !90
  %arrayidx143 = getelementptr inbounds float, ptr %118, i64 0, !dbg !758
  %119 = load float, ptr %arrayidx143, align 4, !dbg !758, !tbaa !80
  %120 = load ptr, ptr %alpha_i, align 8, !dbg !759, !tbaa !90
  %arrayidx144 = getelementptr inbounds float, ptr %120, i64 0, !dbg !759
  %121 = load float, ptr %arrayidx144, align 4, !dbg !759, !tbaa !80
  %122 = load ptr, ptr %alpha_i, align 8, !dbg !760, !tbaa !90
  %arrayidx146 = getelementptr inbounds float, ptr %122, i64 1, !dbg !760
  %123 = load float, ptr %arrayidx146, align 4, !dbg !760, !tbaa !80
  %124 = load ptr, ptr %alpha_i, align 8, !dbg !761, !tbaa !90
  %arrayidx147 = getelementptr inbounds float, ptr %124, i64 1, !dbg !761
  %125 = load float, ptr %arrayidx147, align 4, !dbg !761, !tbaa !80
  %mul148 = fmul float %123, %125, !dbg !762
  %126 = call float @llvm.fmuladd.f32(float %119, float %121, float %mul148), !dbg !763
  %conv149 = fpext float %126 to double, !dbg !758
  %call150 = call double @sqrt(double noundef %conv149) #5, !dbg !764
  %mul151 = fmul double 2.000000e+00, %call150, !dbg !765
  %127 = load i32, ptr %n.addr, align 4, !dbg !766, !tbaa !73
  %conv152 = sitofp i32 %127 to double, !dbg !766
  %128 = call double @llvm.fmuladd.f64(double %mul151, double %conv152, double 3.000000e+00), !dbg !767
  store double %128, ptr %U, align 8, !dbg !768, !tbaa !86
  %129 = load double, ptr %U, align 8, !dbg !769, !tbaa !86
  %130 = load double, ptr %S1, align 8, !dbg !769, !tbaa !86
  %131 = load i32, ptr %n.addr, align 4, !dbg !769, !tbaa !73
  %mul154 = mul nsw i32 2, %131, !dbg !769
  %conv155 = sitofp i32 %mul154 to double, !dbg !769
  %add156 = fadd double %130, %conv155, !dbg !769
  %add157 = fadd double %add156, 1.000000e+00, !dbg !769
  %cmp158 = fcmp ogt double %129, %add157, !dbg !769
  br i1 %cmp158, label %cond.true160, label %cond.false161, !dbg !769

cond.true160:                                     ; preds = %cond.end
  %132 = load double, ptr %U, align 8, !dbg !769, !tbaa !86
  br label %cond.end166, !dbg !769

cond.false161:                                    ; preds = %cond.end
  %133 = load double, ptr %S1, align 8, !dbg !769, !tbaa !86
  %134 = load i32, ptr %n.addr, align 4, !dbg !769, !tbaa !73
  %mul162 = mul nsw i32 2, %134, !dbg !769
  %conv163 = sitofp i32 %mul162 to double, !dbg !769
  %add164 = fadd double %133, %conv163, !dbg !769
  %add165 = fadd double %add164, 1.000000e+00, !dbg !769
  br label %cond.end166, !dbg !769

cond.end166:                                      ; preds = %cond.false161, %cond.true160
  %cond167 = phi double [ %132, %cond.true160 ], [ %add165, %cond.false161 ], !dbg !769
  store double %cond167, ptr %U, align 8, !dbg !770, !tbaa !86
  %135 = load double, ptr %U, align 8, !dbg !771, !tbaa !86
  %136 = load double, ptr %S2, align 8, !dbg !771, !tbaa !86
  %137 = load i32, ptr %n.addr, align 4, !dbg !771, !tbaa !73
  %mul168 = mul nsw i32 2, %137, !dbg !771
  %conv169 = sitofp i32 %mul168 to double, !dbg !771
  %add170 = fadd double %136, %conv169, !dbg !771
  %add171 = fadd double %add170, 1.000000e+00, !dbg !771
  %cmp172 = fcmp ogt double %135, %add171, !dbg !771
  br i1 %cmp172, label %cond.true174, label %cond.false175, !dbg !771

cond.true174:                                     ; preds = %cond.end166
  %138 = load double, ptr %U, align 8, !dbg !771, !tbaa !86
  br label %cond.end180, !dbg !771

cond.false175:                                    ; preds = %cond.end166
  %139 = load double, ptr %S2, align 8, !dbg !771, !tbaa !86
  %140 = load i32, ptr %n.addr, align 4, !dbg !771, !tbaa !73
  %mul176 = mul nsw i32 2, %140, !dbg !771
  %conv177 = sitofp i32 %mul176 to double, !dbg !771
  %add178 = fadd double %139, %conv177, !dbg !771
  %add179 = fadd double %add178, 1.000000e+00, !dbg !771
  br label %cond.end180, !dbg !771

cond.end180:                                      ; preds = %cond.false175, %cond.true174
  %cond181 = phi double [ %138, %cond.true174 ], [ %add179, %cond.false175 ], !dbg !771
  %141 = load double, ptr %un_int.addr, align 8, !dbg !772, !tbaa !86
  %142 = load double, ptr %un_accurate, align 8, !dbg !773, !tbaa !86
  %add182 = fadd double %141, %142, !dbg !774
  %143 = load double, ptr %un_out, align 8, !dbg !775, !tbaa !86
  %144 = call double @llvm.fmuladd.f64(double %cond181, double %add182, double %143), !dbg !776
  store double %144, ptr %U, align 8, !dbg !777, !tbaa !86
  %call184 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !778
  %mul185 = fmul double 2.000000e+00, %call184, !dbg !779
  %145 = load double, ptr %U, align 8, !dbg !780, !tbaa !86
  %mul186 = fmul double %145, %mul185, !dbg !780
  store double %mul186, ptr %U, align 8, !dbg !780, !tbaa !86
  %146 = load double, ptr %tmp1, align 8, !dbg !781, !tbaa !86
  %call187 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !782
  %mul188 = fmul double 2.000000e+00, %call187, !dbg !783
  %147 = load i32, ptr %n.addr, align 4, !dbg !784, !tbaa !73
  %add189 = add nsw i32 %147, 2, !dbg !785
  %conv190 = sitofp i32 %add189 to double, !dbg !786
  %mul191 = fmul double %mul188, %conv190, !dbg !787
  %148 = load double, ptr %eps_int.addr, align 8, !dbg !788, !tbaa !86
  %149 = load double, ptr %eps_accurate, align 8, !dbg !789, !tbaa !86
  %add192 = fadd double %148, %149, !dbg !790
  %mul193 = fmul double %mul191, %add192, !dbg !791
  %150 = load double, ptr %S, align 8, !dbg !792, !tbaa !86
  %call195 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !793
  %151 = load double, ptr %eps_out, align 8, !dbg !794, !tbaa !86
  %mul196 = fmul double %call195, %151, !dbg !795
  %152 = load ptr, ptr %r_true_l.addr, align 8, !dbg !796, !tbaa !90
  %arrayidx197 = getelementptr inbounds double, ptr %152, i64 0, !dbg !796
  %153 = load double, ptr %arrayidx197, align 8, !dbg !796, !tbaa !86
  %154 = load ptr, ptr %r_true_l.addr, align 8, !dbg !797, !tbaa !90
  %arrayidx198 = getelementptr inbounds double, ptr %154, i64 0, !dbg !797
  %155 = load double, ptr %arrayidx198, align 8, !dbg !797, !tbaa !86
  %156 = load ptr, ptr %r_true_l.addr, align 8, !dbg !798, !tbaa !90
  %arrayidx200 = getelementptr inbounds double, ptr %156, i64 1, !dbg !798
  %157 = load double, ptr %arrayidx200, align 8, !dbg !798, !tbaa !86
  %158 = load ptr, ptr %r_true_l.addr, align 8, !dbg !799, !tbaa !90
  %arrayidx201 = getelementptr inbounds double, ptr %158, i64 1, !dbg !799
  %159 = load double, ptr %arrayidx201, align 8, !dbg !799, !tbaa !86
  %mul202 = fmul double %157, %159, !dbg !800
  %160 = call double @llvm.fmuladd.f64(double %153, double %155, double %mul202), !dbg !801
  %call203 = call double @sqrt(double noundef %160) #5, !dbg !802
  %mul204 = fmul double %mul196, %call203, !dbg !803
  %161 = call double @llvm.fmuladd.f64(double %mul193, double %150, double %mul204), !dbg !804
  %162 = load double, ptr %U, align 8, !dbg !805, !tbaa !86
  %add205 = fadd double %161, %162, !dbg !806
  %div = fdiv double %146, %add205, !dbg !807
  %163 = load ptr, ptr %test_ratio.addr, align 8, !dbg !808, !tbaa !90
  store double %div, ptr %163, align 8, !dbg !809, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_ii) #5, !dbg !810
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_ii) #5, !dbg !810
  call void @llvm.lifetime.end.p0(i64 8, ptr %rout_i) #5, !dbg !810
  call void @llvm.lifetime.end.p0(i64 8, ptr %rin_i) #5, !dbg !810
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta_i) #5, !dbg !810
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_i) #5, !dbg !810
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_i) #5, !dbg !810
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_i) #5, !dbg !810
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_out) #5, !dbg !810
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_accurate) #5, !dbg !810
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_d) #5, !dbg !810
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #5, !dbg !810
  call void @llvm.lifetime.end.p0(i64 16, ptr %prod) #5, !dbg !810
  call void @llvm.lifetime.end.p0(i64 8, ptr %U) #5, !dbg !810
  call void @llvm.lifetime.end.p0(i64 8, ptr %S2) #5, !dbg !810
  call void @llvm.lifetime.end.p0(i64 8, ptr %S1) #5, !dbg !810
  call void @llvm.lifetime.end.p0(i64 8, ptr %S) #5, !dbg !810
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp1) #5, !dbg !810
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_out) #5, !dbg !810
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_accurate) #5, !dbg !810
  call void @llvm.lifetime.end.p0(i64 4, ptr %iy) #5, !dbg !810
  call void @llvm.lifetime.end.p0(i64 4, ptr %ix) #5, !dbg !810
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !810
  ret void, !dbg !810
}

; Function Attrs: nounwind
declare !dbg !811 double @sqrt(double noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nounwind uwtable
define dso_local void @test_BLAS_zdot(i32 noundef %n, i32 noundef %conj, ptr noundef %alpha, ptr noundef %beta, ptr noundef %rin, ptr noundef %rout, ptr noundef %r_true_l, ptr noundef %r_true_t, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, double noundef %eps_int, double noundef %un_int, ptr noundef %test_ratio) #0 !dbg !814 {
entry:
  %n.addr = alloca i32, align 4
  %conj.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %rin.addr = alloca ptr, align 8
  %rout.addr = alloca ptr, align 8
  %r_true_l.addr = alloca ptr, align 8
  %r_true_t.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %eps_int.addr = alloca double, align 8
  %un_int.addr = alloca double, align 8
  %test_ratio.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %eps_accurate = alloca double, align 8
  %eps_out = alloca double, align 8
  %tmp1 = alloca double, align 8
  %S = alloca double, align 8
  %S1 = alloca double, align 8
  %S2 = alloca double, align 8
  %U = alloca double, align 8
  %prod = alloca [2 x double], align 16
  %tmp = alloca [2 x double], align 16
  %un_d = alloca double, align 8
  %un_accurate = alloca double, align 8
  %un_out = alloca double, align 8
  %x_i = alloca ptr, align 8
  %y_i = alloca ptr, align 8
  %alpha_i = alloca ptr, align 8
  %beta_i = alloca ptr, align 8
  %rin_i = alloca ptr, align 8
  %rout_i = alloca ptr, align 8
  %x_ii = alloca [2 x double], align 16
  %y_ii = alloca [2 x double], align 16
  store i32 %n, ptr %n.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !816, metadata !DIExpression()), !dbg !854
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !78
  tail call void @llvm.dbg.declare(metadata ptr %conj.addr, metadata !817, metadata !DIExpression()), !dbg !855
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !818, metadata !DIExpression()), !dbg !856
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %beta.addr, metadata !819, metadata !DIExpression()), !dbg !857
  store ptr %rin, ptr %rin.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %rin.addr, metadata !820, metadata !DIExpression()), !dbg !858
  store ptr %rout, ptr %rout.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %rout.addr, metadata !821, metadata !DIExpression()), !dbg !859
  store ptr %r_true_l, ptr %r_true_l.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %r_true_l.addr, metadata !822, metadata !DIExpression()), !dbg !860
  store ptr %r_true_t, ptr %r_true_t.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %r_true_t.addr, metadata !823, metadata !DIExpression()), !dbg !861
  store ptr %x, ptr %x.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !824, metadata !DIExpression()), !dbg !862
  store i32 %incx, ptr %incx.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incx.addr, metadata !825, metadata !DIExpression()), !dbg !863
  store ptr %y, ptr %y.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !826, metadata !DIExpression()), !dbg !864
  store i32 %incy, ptr %incy.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incy.addr, metadata !827, metadata !DIExpression()), !dbg !865
  store double %eps_int, ptr %eps_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %eps_int.addr, metadata !828, metadata !DIExpression()), !dbg !866
  store double %un_int, ptr %un_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %un_int.addr, metadata !829, metadata !DIExpression()), !dbg !867
  store ptr %test_ratio, ptr %test_ratio.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %test_ratio.addr, metadata !830, metadata !DIExpression()), !dbg !868
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !869
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !831, metadata !DIExpression()), !dbg !870
  call void @llvm.lifetime.start.p0(i64 4, ptr %ix) #5, !dbg !869
  tail call void @llvm.dbg.declare(metadata ptr %ix, metadata !832, metadata !DIExpression()), !dbg !871
  call void @llvm.lifetime.start.p0(i64 4, ptr %iy) #5, !dbg !869
  tail call void @llvm.dbg.declare(metadata ptr %iy, metadata !833, metadata !DIExpression()), !dbg !872
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_accurate) #5, !dbg !873
  tail call void @llvm.dbg.declare(metadata ptr %eps_accurate, metadata !834, metadata !DIExpression()), !dbg !874
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_out) #5, !dbg !873
  tail call void @llvm.dbg.declare(metadata ptr %eps_out, metadata !835, metadata !DIExpression()), !dbg !875
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp1) #5, !dbg !873
  tail call void @llvm.dbg.declare(metadata ptr %tmp1, metadata !836, metadata !DIExpression()), !dbg !876
  call void @llvm.lifetime.start.p0(i64 8, ptr %S) #5, !dbg !873
  tail call void @llvm.dbg.declare(metadata ptr %S, metadata !837, metadata !DIExpression()), !dbg !877
  call void @llvm.lifetime.start.p0(i64 8, ptr %S1) #5, !dbg !873
  tail call void @llvm.dbg.declare(metadata ptr %S1, metadata !838, metadata !DIExpression()), !dbg !878
  call void @llvm.lifetime.start.p0(i64 8, ptr %S2) #5, !dbg !873
  tail call void @llvm.dbg.declare(metadata ptr %S2, metadata !839, metadata !DIExpression()), !dbg !879
  call void @llvm.lifetime.start.p0(i64 8, ptr %U) #5, !dbg !873
  tail call void @llvm.dbg.declare(metadata ptr %U, metadata !840, metadata !DIExpression()), !dbg !880
  call void @llvm.lifetime.start.p0(i64 16, ptr %prod) #5, !dbg !873
  tail call void @llvm.dbg.declare(metadata ptr %prod, metadata !841, metadata !DIExpression()), !dbg !881
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #5, !dbg !873
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !842, metadata !DIExpression()), !dbg !882
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_d) #5, !dbg !883
  tail call void @llvm.dbg.declare(metadata ptr %un_d, metadata !843, metadata !DIExpression()), !dbg !884
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_accurate) #5, !dbg !883
  tail call void @llvm.dbg.declare(metadata ptr %un_accurate, metadata !844, metadata !DIExpression()), !dbg !885
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_out) #5, !dbg !883
  tail call void @llvm.dbg.declare(metadata ptr %un_out, metadata !845, metadata !DIExpression()), !dbg !886
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_i) #5, !dbg !887
  tail call void @llvm.dbg.declare(metadata ptr %x_i, metadata !846, metadata !DIExpression()), !dbg !888
  %0 = load ptr, ptr %x.addr, align 8, !dbg !889, !tbaa !90
  store ptr %0, ptr %x_i, align 8, !dbg !888, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_i) #5, !dbg !890
  tail call void @llvm.dbg.declare(metadata ptr %y_i, metadata !847, metadata !DIExpression()), !dbg !891
  %1 = load ptr, ptr %y.addr, align 8, !dbg !892, !tbaa !90
  store ptr %1, ptr %y_i, align 8, !dbg !891, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_i) #5, !dbg !893
  tail call void @llvm.dbg.declare(metadata ptr %alpha_i, metadata !848, metadata !DIExpression()), !dbg !894
  %2 = load ptr, ptr %alpha.addr, align 8, !dbg !895, !tbaa !90
  store ptr %2, ptr %alpha_i, align 8, !dbg !894, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta_i) #5, !dbg !896
  tail call void @llvm.dbg.declare(metadata ptr %beta_i, metadata !849, metadata !DIExpression()), !dbg !897
  %3 = load ptr, ptr %beta.addr, align 8, !dbg !898, !tbaa !90
  store ptr %3, ptr %beta_i, align 8, !dbg !897, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %rin_i) #5, !dbg !899
  tail call void @llvm.dbg.declare(metadata ptr %rin_i, metadata !850, metadata !DIExpression()), !dbg !900
  %4 = load ptr, ptr %rin.addr, align 8, !dbg !901, !tbaa !90
  store ptr %4, ptr %rin_i, align 8, !dbg !900, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %rout_i) #5, !dbg !902
  tail call void @llvm.dbg.declare(metadata ptr %rout_i, metadata !851, metadata !DIExpression()), !dbg !903
  %5 = load ptr, ptr %rout.addr, align 8, !dbg !904, !tbaa !90
  store ptr %5, ptr %rout_i, align 8, !dbg !903, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 16, ptr %x_ii) #5, !dbg !905
  tail call void @llvm.dbg.declare(metadata ptr %x_ii, metadata !852, metadata !DIExpression()), !dbg !906
  call void @llvm.lifetime.start.p0(i64 16, ptr %y_ii) #5, !dbg !907
  tail call void @llvm.dbg.declare(metadata ptr %y_ii, metadata !853, metadata !DIExpression()), !dbg !908
  %6 = load i32, ptr %incx.addr, align 4, !dbg !909, !tbaa !73
  %mul = mul nsw i32 %6, 2, !dbg !909
  store i32 %mul, ptr %incx.addr, align 4, !dbg !909, !tbaa !73
  %7 = load i32, ptr %incy.addr, align 4, !dbg !910, !tbaa !73
  %mul1 = mul nsw i32 %7, 2, !dbg !910
  store i32 %mul1, ptr %incy.addr, align 4, !dbg !910, !tbaa !73
  store i32 0, ptr %ix, align 4, !dbg !911, !tbaa !73
  store i32 0, ptr %iy, align 4, !dbg !912, !tbaa !73
  %8 = load i32, ptr %incx.addr, align 4, !dbg !913, !tbaa !73
  %cmp = icmp slt i32 %8, 0, !dbg !915
  br i1 %cmp, label %if.then, label %if.end, !dbg !916

if.then:                                          ; preds = %entry
  %9 = load i32, ptr %n.addr, align 4, !dbg !917, !tbaa !73
  %sub = sub nsw i32 %9, 1, !dbg !918
  %sub2 = sub nsw i32 0, %sub, !dbg !919
  %10 = load i32, ptr %incx.addr, align 4, !dbg !920, !tbaa !73
  %mul3 = mul nsw i32 %sub2, %10, !dbg !921
  store i32 %mul3, ptr %ix, align 4, !dbg !922, !tbaa !73
  br label %if.end, !dbg !923

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, ptr %incy.addr, align 4, !dbg !924, !tbaa !73
  %cmp4 = icmp slt i32 %11, 0, !dbg !926
  br i1 %cmp4, label %if.then5, label %if.end9, !dbg !927

if.then5:                                         ; preds = %if.end
  %12 = load i32, ptr %n.addr, align 4, !dbg !928, !tbaa !73
  %sub6 = sub nsw i32 %12, 1, !dbg !929
  %sub7 = sub nsw i32 0, %sub6, !dbg !930
  %13 = load i32, ptr %incy.addr, align 4, !dbg !931, !tbaa !73
  %mul8 = mul nsw i32 %sub7, %13, !dbg !932
  store i32 %mul8, ptr %iy, align 4, !dbg !933, !tbaa !73
  br label %if.end9, !dbg !934

if.end9:                                          ; preds = %if.then5, %if.end
  store double 0.000000e+00, ptr %S2, align 8, !dbg !935, !tbaa !86
  store double 0.000000e+00, ptr %S1, align 8, !dbg !936, !tbaa !86
  store double 0.000000e+00, ptr %S, align 8, !dbg !937, !tbaa !86
  store i32 0, ptr %i, align 4, !dbg !938, !tbaa !73
  br label %for.cond, !dbg !940

for.cond:                                         ; preds = %for.inc, %if.end9
  %14 = load i32, ptr %i, align 4, !dbg !941, !tbaa !73
  %15 = load i32, ptr %n.addr, align 4, !dbg !943, !tbaa !73
  %cmp10 = icmp slt i32 %14, %15, !dbg !944
  br i1 %cmp10, label %for.body, label %for.end, !dbg !945

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %x_i, align 8, !dbg !946, !tbaa !90
  %17 = load i32, ptr %ix, align 4, !dbg !948, !tbaa !73
  %idxprom = sext i32 %17 to i64, !dbg !946
  %arrayidx = getelementptr inbounds double, ptr %16, i64 %idxprom, !dbg !946
  %18 = load double, ptr %arrayidx, align 8, !dbg !946, !tbaa !86
  %arrayidx11 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 0, !dbg !949
  store double %18, ptr %arrayidx11, align 16, !dbg !950, !tbaa !86
  %19 = load ptr, ptr %x_i, align 8, !dbg !951, !tbaa !90
  %20 = load i32, ptr %ix, align 4, !dbg !952, !tbaa !73
  %add = add nsw i32 %20, 1, !dbg !953
  %idxprom12 = sext i32 %add to i64, !dbg !951
  %arrayidx13 = getelementptr inbounds double, ptr %19, i64 %idxprom12, !dbg !951
  %21 = load double, ptr %arrayidx13, align 8, !dbg !951, !tbaa !86
  %arrayidx14 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 1, !dbg !954
  store double %21, ptr %arrayidx14, align 8, !dbg !955, !tbaa !86
  %22 = load ptr, ptr %y_i, align 8, !dbg !956, !tbaa !90
  %23 = load i32, ptr %iy, align 4, !dbg !957, !tbaa !73
  %idxprom15 = sext i32 %23 to i64, !dbg !956
  %arrayidx16 = getelementptr inbounds double, ptr %22, i64 %idxprom15, !dbg !956
  %24 = load double, ptr %arrayidx16, align 8, !dbg !956, !tbaa !86
  %arrayidx17 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 0, !dbg !958
  store double %24, ptr %arrayidx17, align 16, !dbg !959, !tbaa !86
  %25 = load ptr, ptr %y_i, align 8, !dbg !960, !tbaa !90
  %26 = load i32, ptr %iy, align 4, !dbg !961, !tbaa !73
  %add18 = add nsw i32 %26, 1, !dbg !962
  %idxprom19 = sext i32 %add18 to i64, !dbg !960
  %arrayidx20 = getelementptr inbounds double, ptr %25, i64 %idxprom19, !dbg !960
  %27 = load double, ptr %arrayidx20, align 8, !dbg !960, !tbaa !86
  %arrayidx21 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 1, !dbg !963
  store double %27, ptr %arrayidx21, align 8, !dbg !964, !tbaa !86
  %28 = load i32, ptr %conj.addr, align 4, !dbg !965, !tbaa !78
  %cmp22 = icmp eq i32 %28, 191, !dbg !967
  br i1 %cmp22, label %if.then23, label %if.end26, !dbg !968

if.then23:                                        ; preds = %for.body
  %arrayidx24 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 1, !dbg !969
  %29 = load double, ptr %arrayidx24, align 8, !dbg !969, !tbaa !86
  %fneg = fneg double %29, !dbg !971
  %arrayidx25 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 1, !dbg !972
  store double %fneg, ptr %arrayidx25, align 8, !dbg !973, !tbaa !86
  br label %if.end26, !dbg !974

if.end26:                                         ; preds = %if.then23, %for.body
  %arrayidx27 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 0, !dbg !975
  %30 = load double, ptr %arrayidx27, align 16, !dbg !975, !tbaa !86
  %arrayidx28 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 0, !dbg !976
  %31 = load double, ptr %arrayidx28, align 16, !dbg !976, !tbaa !86
  %arrayidx30 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 1, !dbg !977
  %32 = load double, ptr %arrayidx30, align 8, !dbg !977, !tbaa !86
  %arrayidx31 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 1, !dbg !978
  %33 = load double, ptr %arrayidx31, align 8, !dbg !978, !tbaa !86
  %mul32 = fmul double %32, %33, !dbg !979
  %34 = call double @llvm.fmuladd.f64(double %30, double %31, double %mul32), !dbg !980
  %call = call double @sqrt(double noundef %34) #5, !dbg !981
  %35 = load double, ptr %S1, align 8, !dbg !982, !tbaa !86
  %add33 = fadd double %35, %call, !dbg !982
  store double %add33, ptr %S1, align 8, !dbg !982, !tbaa !86
  %arrayidx34 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 0, !dbg !983
  %36 = load double, ptr %arrayidx34, align 16, !dbg !983, !tbaa !86
  %arrayidx35 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 0, !dbg !984
  %37 = load double, ptr %arrayidx35, align 16, !dbg !984, !tbaa !86
  %arrayidx37 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 1, !dbg !985
  %38 = load double, ptr %arrayidx37, align 8, !dbg !985, !tbaa !86
  %arrayidx38 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 1, !dbg !986
  %39 = load double, ptr %arrayidx38, align 8, !dbg !986, !tbaa !86
  %mul39 = fmul double %38, %39, !dbg !987
  %40 = call double @llvm.fmuladd.f64(double %36, double %37, double %mul39), !dbg !988
  %call40 = call double @sqrt(double noundef %40) #5, !dbg !989
  %41 = load double, ptr %S2, align 8, !dbg !990, !tbaa !86
  %add41 = fadd double %41, %call40, !dbg !990
  store double %add41, ptr %S2, align 8, !dbg !990, !tbaa !86
  %arrayidx42 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 0, !dbg !991
  %42 = load double, ptr %arrayidx42, align 16, !dbg !991, !tbaa !86
  %arrayidx43 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 0, !dbg !993
  %43 = load double, ptr %arrayidx43, align 16, !dbg !993, !tbaa !86
  %arrayidx45 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 1, !dbg !994
  %44 = load double, ptr %arrayidx45, align 8, !dbg !994, !tbaa !86
  %arrayidx46 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 1, !dbg !995
  %45 = load double, ptr %arrayidx46, align 8, !dbg !995, !tbaa !86
  %mul47 = fmul double %44, %45, !dbg !996
  %neg = fneg double %mul47, !dbg !997
  %46 = call double @llvm.fmuladd.f64(double %42, double %43, double %neg), !dbg !997
  %arrayidx48 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !998
  store double %46, ptr %arrayidx48, align 16, !dbg !999, !tbaa !86
  %arrayidx49 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 0, !dbg !1000
  %47 = load double, ptr %arrayidx49, align 16, !dbg !1000, !tbaa !86
  %arrayidx50 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 1, !dbg !1001
  %48 = load double, ptr %arrayidx50, align 8, !dbg !1001, !tbaa !86
  %arrayidx52 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 1, !dbg !1002
  %49 = load double, ptr %arrayidx52, align 8, !dbg !1002, !tbaa !86
  %arrayidx53 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 0, !dbg !1003
  %50 = load double, ptr %arrayidx53, align 16, !dbg !1003, !tbaa !86
  %mul54 = fmul double %49, %50, !dbg !1004
  %51 = call double @llvm.fmuladd.f64(double %47, double %48, double %mul54), !dbg !1005
  %arrayidx55 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !1006
  store double %51, ptr %arrayidx55, align 8, !dbg !1007, !tbaa !86
  %arrayidx56 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !1008
  %52 = load double, ptr %arrayidx56, align 16, !dbg !1008, !tbaa !86
  %arrayidx57 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !1009
  %53 = load double, ptr %arrayidx57, align 16, !dbg !1009, !tbaa !86
  %arrayidx59 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !1010
  %54 = load double, ptr %arrayidx59, align 8, !dbg !1010, !tbaa !86
  %arrayidx60 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !1011
  %55 = load double, ptr %arrayidx60, align 8, !dbg !1011, !tbaa !86
  %mul61 = fmul double %54, %55, !dbg !1012
  %56 = call double @llvm.fmuladd.f64(double %52, double %53, double %mul61), !dbg !1013
  %call62 = call double @sqrt(double noundef %56) #5, !dbg !1014
  %57 = load double, ptr %S, align 8, !dbg !1015, !tbaa !86
  %add63 = fadd double %57, %call62, !dbg !1015
  store double %add63, ptr %S, align 8, !dbg !1015, !tbaa !86
  %58 = load i32, ptr %incx.addr, align 4, !dbg !1016, !tbaa !73
  %59 = load i32, ptr %ix, align 4, !dbg !1017, !tbaa !73
  %add64 = add nsw i32 %59, %58, !dbg !1017
  store i32 %add64, ptr %ix, align 4, !dbg !1017, !tbaa !73
  %60 = load i32, ptr %incy.addr, align 4, !dbg !1018, !tbaa !73
  %61 = load i32, ptr %iy, align 4, !dbg !1019, !tbaa !73
  %add65 = add nsw i32 %61, %60, !dbg !1019
  store i32 %add65, ptr %iy, align 4, !dbg !1019, !tbaa !73
  br label %for.inc, !dbg !1020

for.inc:                                          ; preds = %if.end26
  %62 = load i32, ptr %i, align 4, !dbg !1021, !tbaa !73
  %inc = add nsw i32 %62, 1, !dbg !1021
  store i32 %inc, ptr %i, align 4, !dbg !1021, !tbaa !73
  br label %for.cond, !dbg !1022, !llvm.loop !1023

for.end:                                          ; preds = %for.cond
  %63 = load ptr, ptr %alpha_i, align 8, !dbg !1025, !tbaa !90
  %arrayidx66 = getelementptr inbounds double, ptr %63, i64 0, !dbg !1025
  %64 = load double, ptr %arrayidx66, align 8, !dbg !1025, !tbaa !86
  %65 = load ptr, ptr %alpha_i, align 8, !dbg !1026, !tbaa !90
  %arrayidx67 = getelementptr inbounds double, ptr %65, i64 0, !dbg !1026
  %66 = load double, ptr %arrayidx67, align 8, !dbg !1026, !tbaa !86
  %67 = load ptr, ptr %alpha_i, align 8, !dbg !1027, !tbaa !90
  %arrayidx69 = getelementptr inbounds double, ptr %67, i64 1, !dbg !1027
  %68 = load double, ptr %arrayidx69, align 8, !dbg !1027, !tbaa !86
  %69 = load ptr, ptr %alpha_i, align 8, !dbg !1028, !tbaa !90
  %arrayidx70 = getelementptr inbounds double, ptr %69, i64 1, !dbg !1028
  %70 = load double, ptr %arrayidx70, align 8, !dbg !1028, !tbaa !86
  %mul71 = fmul double %68, %70, !dbg !1029
  %71 = call double @llvm.fmuladd.f64(double %64, double %66, double %mul71), !dbg !1030
  %call72 = call double @sqrt(double noundef %71) #5, !dbg !1031
  %72 = load double, ptr %S, align 8, !dbg !1032, !tbaa !86
  %mul73 = fmul double %72, %call72, !dbg !1032
  store double %mul73, ptr %S, align 8, !dbg !1032, !tbaa !86
  %73 = load ptr, ptr %beta_i, align 8, !dbg !1033, !tbaa !90
  %arrayidx74 = getelementptr inbounds double, ptr %73, i64 0, !dbg !1033
  %74 = load double, ptr %arrayidx74, align 8, !dbg !1033, !tbaa !86
  %75 = load ptr, ptr %rin_i, align 8, !dbg !1035, !tbaa !90
  %arrayidx75 = getelementptr inbounds double, ptr %75, i64 0, !dbg !1035
  %76 = load double, ptr %arrayidx75, align 8, !dbg !1035, !tbaa !86
  %77 = load ptr, ptr %beta_i, align 8, !dbg !1036, !tbaa !90
  %arrayidx77 = getelementptr inbounds double, ptr %77, i64 1, !dbg !1036
  %78 = load double, ptr %arrayidx77, align 8, !dbg !1036, !tbaa !86
  %79 = load ptr, ptr %rin_i, align 8, !dbg !1037, !tbaa !90
  %arrayidx78 = getelementptr inbounds double, ptr %79, i64 1, !dbg !1037
  %80 = load double, ptr %arrayidx78, align 8, !dbg !1037, !tbaa !86
  %mul79 = fmul double %78, %80, !dbg !1038
  %neg80 = fneg double %mul79, !dbg !1039
  %81 = call double @llvm.fmuladd.f64(double %74, double %76, double %neg80), !dbg !1039
  %arrayidx81 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !1040
  store double %81, ptr %arrayidx81, align 16, !dbg !1041, !tbaa !86
  %82 = load ptr, ptr %beta_i, align 8, !dbg !1042, !tbaa !90
  %arrayidx82 = getelementptr inbounds double, ptr %82, i64 0, !dbg !1042
  %83 = load double, ptr %arrayidx82, align 8, !dbg !1042, !tbaa !86
  %84 = load ptr, ptr %rin_i, align 8, !dbg !1043, !tbaa !90
  %arrayidx83 = getelementptr inbounds double, ptr %84, i64 1, !dbg !1043
  %85 = load double, ptr %arrayidx83, align 8, !dbg !1043, !tbaa !86
  %86 = load ptr, ptr %beta_i, align 8, !dbg !1044, !tbaa !90
  %arrayidx85 = getelementptr inbounds double, ptr %86, i64 1, !dbg !1044
  %87 = load double, ptr %arrayidx85, align 8, !dbg !1044, !tbaa !86
  %88 = load ptr, ptr %rin_i, align 8, !dbg !1045, !tbaa !90
  %arrayidx86 = getelementptr inbounds double, ptr %88, i64 0, !dbg !1045
  %89 = load double, ptr %arrayidx86, align 8, !dbg !1045, !tbaa !86
  %mul87 = fmul double %87, %89, !dbg !1046
  %90 = call double @llvm.fmuladd.f64(double %83, double %85, double %mul87), !dbg !1047
  %arrayidx88 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !1048
  store double %90, ptr %arrayidx88, align 8, !dbg !1049, !tbaa !86
  %arrayidx89 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !1050
  %91 = load double, ptr %arrayidx89, align 16, !dbg !1050, !tbaa !86
  %arrayidx90 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !1051
  %92 = load double, ptr %arrayidx90, align 16, !dbg !1051, !tbaa !86
  %arrayidx92 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !1052
  %93 = load double, ptr %arrayidx92, align 8, !dbg !1052, !tbaa !86
  %arrayidx93 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !1053
  %94 = load double, ptr %arrayidx93, align 8, !dbg !1053, !tbaa !86
  %mul94 = fmul double %93, %94, !dbg !1054
  %95 = call double @llvm.fmuladd.f64(double %91, double %92, double %mul94), !dbg !1055
  %call95 = call double @sqrt(double noundef %95) #5, !dbg !1056
  %96 = load double, ptr %S, align 8, !dbg !1057, !tbaa !86
  %add96 = fadd double %96, %call95, !dbg !1057
  store double %add96, ptr %S, align 8, !dbg !1057, !tbaa !86
  %call97 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !1058
  %conv = sitofp i32 %call97 to double, !dbg !1059
  %call98 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !1060
  %conv99 = sitofp i32 %call98 to double, !dbg !1061
  %call100 = call double @pow(double noundef %conv, double noundef %conv99) #5, !dbg !1062
  store double %call100, ptr %un_d, align 8, !dbg !1063, !tbaa !86
  %97 = load double, ptr %S, align 8, !dbg !1064, !tbaa !86
  %98 = load double, ptr %un_d, align 8, !dbg !1064, !tbaa !86
  %cmp101 = fcmp ogt double %97, %98, !dbg !1064
  br i1 %cmp101, label %cond.true, label %cond.false, !dbg !1064

cond.true:                                        ; preds = %for.end
  %99 = load double, ptr %S, align 8, !dbg !1064, !tbaa !86
  br label %cond.end, !dbg !1064

cond.false:                                       ; preds = %for.end
  %100 = load double, ptr %un_d, align 8, !dbg !1064, !tbaa !86
  br label %cond.end, !dbg !1064

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %99, %cond.true ], [ %100, %cond.false ], !dbg !1064
  store double %cond, ptr %S, align 8, !dbg !1065, !tbaa !86
  %call103 = call double @power(i32 noundef 2, i32 noundef -106), !dbg !1066
  store double %call103, ptr %eps_accurate, align 8, !dbg !1067, !tbaa !86
  %call104 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 214), !dbg !1068
  %conv105 = sitofp i32 %call104 to double, !dbg !1069
  %call106 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 214), !dbg !1070
  %conv107 = sitofp i32 %call106 to double, !dbg !1071
  %call108 = call double @pow(double noundef %conv105, double noundef %conv107) #5, !dbg !1072
  store double %call108, ptr %un_accurate, align 8, !dbg !1073, !tbaa !86
  %call109 = call double @power(i32 noundef 2, i32 noundef -53), !dbg !1074
  store double %call109, ptr %eps_out, align 8, !dbg !1075, !tbaa !86
  %call110 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !1076
  %conv111 = sitofp i32 %call110 to double, !dbg !1077
  %call112 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !1078
  %conv113 = sitofp i32 %call112 to double, !dbg !1079
  %call114 = call double @pow(double noundef %conv111, double noundef %conv113) #5, !dbg !1080
  store double %call114, ptr %un_out, align 8, !dbg !1081, !tbaa !86
  %101 = load ptr, ptr %rout_i, align 8, !dbg !1082, !tbaa !90
  %arrayidx115 = getelementptr inbounds double, ptr %101, i64 0, !dbg !1082
  %102 = load double, ptr %arrayidx115, align 8, !dbg !1082, !tbaa !86
  %103 = load ptr, ptr %r_true_l.addr, align 8, !dbg !1083, !tbaa !90
  %arrayidx116 = getelementptr inbounds double, ptr %103, i64 0, !dbg !1083
  %104 = load double, ptr %arrayidx116, align 8, !dbg !1083, !tbaa !86
  %sub117 = fsub double %102, %104, !dbg !1084
  %105 = load ptr, ptr %r_true_t.addr, align 8, !dbg !1085, !tbaa !90
  %arrayidx118 = getelementptr inbounds double, ptr %105, i64 0, !dbg !1085
  %106 = load double, ptr %arrayidx118, align 8, !dbg !1085, !tbaa !86
  %sub119 = fsub double %sub117, %106, !dbg !1086
  %arrayidx120 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !1087
  store double %sub119, ptr %arrayidx120, align 16, !dbg !1088, !tbaa !86
  %107 = load ptr, ptr %rout_i, align 8, !dbg !1089, !tbaa !90
  %arrayidx121 = getelementptr inbounds double, ptr %107, i64 1, !dbg !1089
  %108 = load double, ptr %arrayidx121, align 8, !dbg !1089, !tbaa !86
  %109 = load ptr, ptr %r_true_l.addr, align 8, !dbg !1090, !tbaa !90
  %arrayidx122 = getelementptr inbounds double, ptr %109, i64 1, !dbg !1090
  %110 = load double, ptr %arrayidx122, align 8, !dbg !1090, !tbaa !86
  %sub123 = fsub double %108, %110, !dbg !1091
  %111 = load ptr, ptr %r_true_t.addr, align 8, !dbg !1092, !tbaa !90
  %arrayidx124 = getelementptr inbounds double, ptr %111, i64 1, !dbg !1092
  %112 = load double, ptr %arrayidx124, align 8, !dbg !1092, !tbaa !86
  %sub125 = fsub double %sub123, %112, !dbg !1093
  %arrayidx126 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !1094
  store double %sub125, ptr %arrayidx126, align 8, !dbg !1095, !tbaa !86
  %arrayidx127 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !1096
  %113 = load double, ptr %arrayidx127, align 16, !dbg !1096, !tbaa !86
  %arrayidx128 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !1097
  %114 = load double, ptr %arrayidx128, align 16, !dbg !1097, !tbaa !86
  %arrayidx130 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !1098
  %115 = load double, ptr %arrayidx130, align 8, !dbg !1098, !tbaa !86
  %arrayidx131 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !1099
  %116 = load double, ptr %arrayidx131, align 8, !dbg !1099, !tbaa !86
  %mul132 = fmul double %115, %116, !dbg !1100
  %117 = call double @llvm.fmuladd.f64(double %113, double %114, double %mul132), !dbg !1101
  %call133 = call double @sqrt(double noundef %117) #5, !dbg !1102
  store double %call133, ptr %tmp1, align 8, !dbg !1103, !tbaa !86
  %118 = load ptr, ptr %alpha_i, align 8, !dbg !1104, !tbaa !90
  %arrayidx134 = getelementptr inbounds double, ptr %118, i64 0, !dbg !1104
  %119 = load double, ptr %arrayidx134, align 8, !dbg !1104, !tbaa !86
  %120 = load ptr, ptr %alpha_i, align 8, !dbg !1105, !tbaa !90
  %arrayidx135 = getelementptr inbounds double, ptr %120, i64 0, !dbg !1105
  %121 = load double, ptr %arrayidx135, align 8, !dbg !1105, !tbaa !86
  %122 = load ptr, ptr %alpha_i, align 8, !dbg !1106, !tbaa !90
  %arrayidx137 = getelementptr inbounds double, ptr %122, i64 1, !dbg !1106
  %123 = load double, ptr %arrayidx137, align 8, !dbg !1106, !tbaa !86
  %124 = load ptr, ptr %alpha_i, align 8, !dbg !1107, !tbaa !90
  %arrayidx138 = getelementptr inbounds double, ptr %124, i64 1, !dbg !1107
  %125 = load double, ptr %arrayidx138, align 8, !dbg !1107, !tbaa !86
  %mul139 = fmul double %123, %125, !dbg !1108
  %126 = call double @llvm.fmuladd.f64(double %119, double %121, double %mul139), !dbg !1109
  %call140 = call double @sqrt(double noundef %126) #5, !dbg !1110
  %mul141 = fmul double 2.000000e+00, %call140, !dbg !1111
  %127 = load i32, ptr %n.addr, align 4, !dbg !1112, !tbaa !73
  %conv142 = sitofp i32 %127 to double, !dbg !1112
  %128 = call double @llvm.fmuladd.f64(double %mul141, double %conv142, double 3.000000e+00), !dbg !1113
  store double %128, ptr %U, align 8, !dbg !1114, !tbaa !86
  %129 = load double, ptr %U, align 8, !dbg !1115, !tbaa !86
  %130 = load double, ptr %S1, align 8, !dbg !1115, !tbaa !86
  %131 = load i32, ptr %n.addr, align 4, !dbg !1115, !tbaa !73
  %mul144 = mul nsw i32 2, %131, !dbg !1115
  %conv145 = sitofp i32 %mul144 to double, !dbg !1115
  %add146 = fadd double %130, %conv145, !dbg !1115
  %add147 = fadd double %add146, 1.000000e+00, !dbg !1115
  %cmp148 = fcmp ogt double %129, %add147, !dbg !1115
  br i1 %cmp148, label %cond.true150, label %cond.false151, !dbg !1115

cond.true150:                                     ; preds = %cond.end
  %132 = load double, ptr %U, align 8, !dbg !1115, !tbaa !86
  br label %cond.end156, !dbg !1115

cond.false151:                                    ; preds = %cond.end
  %133 = load double, ptr %S1, align 8, !dbg !1115, !tbaa !86
  %134 = load i32, ptr %n.addr, align 4, !dbg !1115, !tbaa !73
  %mul152 = mul nsw i32 2, %134, !dbg !1115
  %conv153 = sitofp i32 %mul152 to double, !dbg !1115
  %add154 = fadd double %133, %conv153, !dbg !1115
  %add155 = fadd double %add154, 1.000000e+00, !dbg !1115
  br label %cond.end156, !dbg !1115

cond.end156:                                      ; preds = %cond.false151, %cond.true150
  %cond157 = phi double [ %132, %cond.true150 ], [ %add155, %cond.false151 ], !dbg !1115
  store double %cond157, ptr %U, align 8, !dbg !1116, !tbaa !86
  %135 = load double, ptr %U, align 8, !dbg !1117, !tbaa !86
  %136 = load double, ptr %S2, align 8, !dbg !1117, !tbaa !86
  %137 = load i32, ptr %n.addr, align 4, !dbg !1117, !tbaa !73
  %mul158 = mul nsw i32 2, %137, !dbg !1117
  %conv159 = sitofp i32 %mul158 to double, !dbg !1117
  %add160 = fadd double %136, %conv159, !dbg !1117
  %add161 = fadd double %add160, 1.000000e+00, !dbg !1117
  %cmp162 = fcmp ogt double %135, %add161, !dbg !1117
  br i1 %cmp162, label %cond.true164, label %cond.false165, !dbg !1117

cond.true164:                                     ; preds = %cond.end156
  %138 = load double, ptr %U, align 8, !dbg !1117, !tbaa !86
  br label %cond.end170, !dbg !1117

cond.false165:                                    ; preds = %cond.end156
  %139 = load double, ptr %S2, align 8, !dbg !1117, !tbaa !86
  %140 = load i32, ptr %n.addr, align 4, !dbg !1117, !tbaa !73
  %mul166 = mul nsw i32 2, %140, !dbg !1117
  %conv167 = sitofp i32 %mul166 to double, !dbg !1117
  %add168 = fadd double %139, %conv167, !dbg !1117
  %add169 = fadd double %add168, 1.000000e+00, !dbg !1117
  br label %cond.end170, !dbg !1117

cond.end170:                                      ; preds = %cond.false165, %cond.true164
  %cond171 = phi double [ %138, %cond.true164 ], [ %add169, %cond.false165 ], !dbg !1117
  %141 = load double, ptr %un_int.addr, align 8, !dbg !1118, !tbaa !86
  %142 = load double, ptr %un_accurate, align 8, !dbg !1119, !tbaa !86
  %add172 = fadd double %141, %142, !dbg !1120
  %143 = load double, ptr %un_out, align 8, !dbg !1121, !tbaa !86
  %144 = call double @llvm.fmuladd.f64(double %cond171, double %add172, double %143), !dbg !1122
  store double %144, ptr %U, align 8, !dbg !1123, !tbaa !86
  %call174 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !1124
  %mul175 = fmul double 2.000000e+00, %call174, !dbg !1125
  %145 = load double, ptr %U, align 8, !dbg !1126, !tbaa !86
  %mul176 = fmul double %145, %mul175, !dbg !1126
  store double %mul176, ptr %U, align 8, !dbg !1126, !tbaa !86
  %146 = load double, ptr %tmp1, align 8, !dbg !1127, !tbaa !86
  %call177 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !1128
  %mul178 = fmul double 2.000000e+00, %call177, !dbg !1129
  %147 = load i32, ptr %n.addr, align 4, !dbg !1130, !tbaa !73
  %add179 = add nsw i32 %147, 2, !dbg !1131
  %conv180 = sitofp i32 %add179 to double, !dbg !1132
  %mul181 = fmul double %mul178, %conv180, !dbg !1133
  %148 = load double, ptr %eps_int.addr, align 8, !dbg !1134, !tbaa !86
  %149 = load double, ptr %eps_accurate, align 8, !dbg !1135, !tbaa !86
  %add182 = fadd double %148, %149, !dbg !1136
  %mul183 = fmul double %mul181, %add182, !dbg !1137
  %150 = load double, ptr %S, align 8, !dbg !1138, !tbaa !86
  %call185 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !1139
  %151 = load double, ptr %eps_out, align 8, !dbg !1140, !tbaa !86
  %mul186 = fmul double %call185, %151, !dbg !1141
  %152 = load ptr, ptr %r_true_l.addr, align 8, !dbg !1142, !tbaa !90
  %arrayidx187 = getelementptr inbounds double, ptr %152, i64 0, !dbg !1142
  %153 = load double, ptr %arrayidx187, align 8, !dbg !1142, !tbaa !86
  %154 = load ptr, ptr %r_true_l.addr, align 8, !dbg !1143, !tbaa !90
  %arrayidx188 = getelementptr inbounds double, ptr %154, i64 0, !dbg !1143
  %155 = load double, ptr %arrayidx188, align 8, !dbg !1143, !tbaa !86
  %156 = load ptr, ptr %r_true_l.addr, align 8, !dbg !1144, !tbaa !90
  %arrayidx190 = getelementptr inbounds double, ptr %156, i64 1, !dbg !1144
  %157 = load double, ptr %arrayidx190, align 8, !dbg !1144, !tbaa !86
  %158 = load ptr, ptr %r_true_l.addr, align 8, !dbg !1145, !tbaa !90
  %arrayidx191 = getelementptr inbounds double, ptr %158, i64 1, !dbg !1145
  %159 = load double, ptr %arrayidx191, align 8, !dbg !1145, !tbaa !86
  %mul192 = fmul double %157, %159, !dbg !1146
  %160 = call double @llvm.fmuladd.f64(double %153, double %155, double %mul192), !dbg !1147
  %call193 = call double @sqrt(double noundef %160) #5, !dbg !1148
  %mul194 = fmul double %mul186, %call193, !dbg !1149
  %161 = call double @llvm.fmuladd.f64(double %mul183, double %150, double %mul194), !dbg !1150
  %162 = load double, ptr %U, align 8, !dbg !1151, !tbaa !86
  %add195 = fadd double %161, %162, !dbg !1152
  %div = fdiv double %146, %add195, !dbg !1153
  %163 = load ptr, ptr %test_ratio.addr, align 8, !dbg !1154, !tbaa !90
  store double %div, ptr %163, align 8, !dbg !1155, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 16, ptr %y_ii) #5, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 16, ptr %x_ii) #5, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 8, ptr %rout_i) #5, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 8, ptr %rin_i) #5, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta_i) #5, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_i) #5, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_i) #5, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_i) #5, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_out) #5, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_accurate) #5, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_d) #5, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #5, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 16, ptr %prod) #5, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 8, ptr %U) #5, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 8, ptr %S2) #5, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 8, ptr %S1) #5, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 8, ptr %S) #5, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp1) #5, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_out) #5, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_accurate) #5, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 4, ptr %iy) #5, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 4, ptr %ix) #5, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !1156
  ret void, !dbg !1156
}

; Function Attrs: nounwind uwtable
define dso_local void @test_BLAS_cdot_s_s(i32 noundef %n, i32 noundef %conj, ptr noundef %alpha, ptr noundef %beta, ptr noundef %rin, ptr noundef %rout, ptr noundef %r_true_l, ptr noundef %r_true_t, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, double noundef %eps_int, double noundef %un_int, ptr noundef %test_ratio) #0 !dbg !1157 {
entry:
  %n.addr = alloca i32, align 4
  %conj.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %rin.addr = alloca ptr, align 8
  %rout.addr = alloca ptr, align 8
  %r_true_l.addr = alloca ptr, align 8
  %r_true_t.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %eps_int.addr = alloca double, align 8
  %un_int.addr = alloca double, align 8
  %test_ratio.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %eps_accurate = alloca double, align 8
  %eps_out = alloca double, align 8
  %tmp1 = alloca double, align 8
  %S = alloca double, align 8
  %S1 = alloca double, align 8
  %S2 = alloca double, align 8
  %U = alloca double, align 8
  %prod = alloca [2 x double], align 16
  %tmp = alloca [2 x double], align 16
  %un_d = alloca double, align 8
  %un_accurate = alloca double, align 8
  %un_out = alloca double, align 8
  %x_i = alloca ptr, align 8
  %y_i = alloca ptr, align 8
  %alpha_i = alloca ptr, align 8
  %beta_i = alloca ptr, align 8
  %rin_i = alloca ptr, align 8
  %rout_i = alloca ptr, align 8
  %x_ii = alloca float, align 4
  %y_ii = alloca float, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1161, metadata !DIExpression()), !dbg !1199
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !78
  tail call void @llvm.dbg.declare(metadata ptr %conj.addr, metadata !1162, metadata !DIExpression()), !dbg !1200
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !1163, metadata !DIExpression()), !dbg !1201
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %beta.addr, metadata !1164, metadata !DIExpression()), !dbg !1202
  store ptr %rin, ptr %rin.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %rin.addr, metadata !1165, metadata !DIExpression()), !dbg !1203
  store ptr %rout, ptr %rout.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %rout.addr, metadata !1166, metadata !DIExpression()), !dbg !1204
  store ptr %r_true_l, ptr %r_true_l.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %r_true_l.addr, metadata !1167, metadata !DIExpression()), !dbg !1205
  store ptr %r_true_t, ptr %r_true_t.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %r_true_t.addr, metadata !1168, metadata !DIExpression()), !dbg !1206
  store ptr %x, ptr %x.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !1169, metadata !DIExpression()), !dbg !1207
  store i32 %incx, ptr %incx.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incx.addr, metadata !1170, metadata !DIExpression()), !dbg !1208
  store ptr %y, ptr %y.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !1171, metadata !DIExpression()), !dbg !1209
  store i32 %incy, ptr %incy.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incy.addr, metadata !1172, metadata !DIExpression()), !dbg !1210
  store double %eps_int, ptr %eps_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %eps_int.addr, metadata !1173, metadata !DIExpression()), !dbg !1211
  store double %un_int, ptr %un_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %un_int.addr, metadata !1174, metadata !DIExpression()), !dbg !1212
  store ptr %test_ratio, ptr %test_ratio.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %test_ratio.addr, metadata !1175, metadata !DIExpression()), !dbg !1213
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !1214
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1176, metadata !DIExpression()), !dbg !1215
  call void @llvm.lifetime.start.p0(i64 4, ptr %ix) #5, !dbg !1214
  tail call void @llvm.dbg.declare(metadata ptr %ix, metadata !1177, metadata !DIExpression()), !dbg !1216
  call void @llvm.lifetime.start.p0(i64 4, ptr %iy) #5, !dbg !1214
  tail call void @llvm.dbg.declare(metadata ptr %iy, metadata !1178, metadata !DIExpression()), !dbg !1217
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_accurate) #5, !dbg !1218
  tail call void @llvm.dbg.declare(metadata ptr %eps_accurate, metadata !1179, metadata !DIExpression()), !dbg !1219
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_out) #5, !dbg !1218
  tail call void @llvm.dbg.declare(metadata ptr %eps_out, metadata !1180, metadata !DIExpression()), !dbg !1220
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp1) #5, !dbg !1218
  tail call void @llvm.dbg.declare(metadata ptr %tmp1, metadata !1181, metadata !DIExpression()), !dbg !1221
  call void @llvm.lifetime.start.p0(i64 8, ptr %S) #5, !dbg !1218
  tail call void @llvm.dbg.declare(metadata ptr %S, metadata !1182, metadata !DIExpression()), !dbg !1222
  call void @llvm.lifetime.start.p0(i64 8, ptr %S1) #5, !dbg !1218
  tail call void @llvm.dbg.declare(metadata ptr %S1, metadata !1183, metadata !DIExpression()), !dbg !1223
  call void @llvm.lifetime.start.p0(i64 8, ptr %S2) #5, !dbg !1218
  tail call void @llvm.dbg.declare(metadata ptr %S2, metadata !1184, metadata !DIExpression()), !dbg !1224
  call void @llvm.lifetime.start.p0(i64 8, ptr %U) #5, !dbg !1218
  tail call void @llvm.dbg.declare(metadata ptr %U, metadata !1185, metadata !DIExpression()), !dbg !1225
  call void @llvm.lifetime.start.p0(i64 16, ptr %prod) #5, !dbg !1218
  tail call void @llvm.dbg.declare(metadata ptr %prod, metadata !1186, metadata !DIExpression()), !dbg !1226
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #5, !dbg !1218
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !1187, metadata !DIExpression()), !dbg !1227
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_d) #5, !dbg !1228
  tail call void @llvm.dbg.declare(metadata ptr %un_d, metadata !1188, metadata !DIExpression()), !dbg !1229
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_accurate) #5, !dbg !1228
  tail call void @llvm.dbg.declare(metadata ptr %un_accurate, metadata !1189, metadata !DIExpression()), !dbg !1230
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_out) #5, !dbg !1228
  tail call void @llvm.dbg.declare(metadata ptr %un_out, metadata !1190, metadata !DIExpression()), !dbg !1231
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_i) #5, !dbg !1232
  tail call void @llvm.dbg.declare(metadata ptr %x_i, metadata !1191, metadata !DIExpression()), !dbg !1233
  %0 = load ptr, ptr %x.addr, align 8, !dbg !1234, !tbaa !90
  store ptr %0, ptr %x_i, align 8, !dbg !1233, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_i) #5, !dbg !1235
  tail call void @llvm.dbg.declare(metadata ptr %y_i, metadata !1192, metadata !DIExpression()), !dbg !1236
  %1 = load ptr, ptr %y.addr, align 8, !dbg !1237, !tbaa !90
  store ptr %1, ptr %y_i, align 8, !dbg !1236, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_i) #5, !dbg !1238
  tail call void @llvm.dbg.declare(metadata ptr %alpha_i, metadata !1193, metadata !DIExpression()), !dbg !1239
  %2 = load ptr, ptr %alpha.addr, align 8, !dbg !1240, !tbaa !90
  store ptr %2, ptr %alpha_i, align 8, !dbg !1239, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta_i) #5, !dbg !1241
  tail call void @llvm.dbg.declare(metadata ptr %beta_i, metadata !1194, metadata !DIExpression()), !dbg !1242
  %3 = load ptr, ptr %beta.addr, align 8, !dbg !1243, !tbaa !90
  store ptr %3, ptr %beta_i, align 8, !dbg !1242, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %rin_i) #5, !dbg !1244
  tail call void @llvm.dbg.declare(metadata ptr %rin_i, metadata !1195, metadata !DIExpression()), !dbg !1245
  %4 = load ptr, ptr %rin.addr, align 8, !dbg !1246, !tbaa !90
  store ptr %4, ptr %rin_i, align 8, !dbg !1245, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %rout_i) #5, !dbg !1247
  tail call void @llvm.dbg.declare(metadata ptr %rout_i, metadata !1196, metadata !DIExpression()), !dbg !1248
  %5 = load ptr, ptr %rout.addr, align 8, !dbg !1249, !tbaa !90
  store ptr %5, ptr %rout_i, align 8, !dbg !1248, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 4, ptr %x_ii) #5, !dbg !1250
  tail call void @llvm.dbg.declare(metadata ptr %x_ii, metadata !1197, metadata !DIExpression()), !dbg !1251
  call void @llvm.lifetime.start.p0(i64 4, ptr %y_ii) #5, !dbg !1252
  tail call void @llvm.dbg.declare(metadata ptr %y_ii, metadata !1198, metadata !DIExpression()), !dbg !1253
  store i32 0, ptr %ix, align 4, !dbg !1254, !tbaa !73
  store i32 0, ptr %iy, align 4, !dbg !1255, !tbaa !73
  %6 = load i32, ptr %incx.addr, align 4, !dbg !1256, !tbaa !73
  %cmp = icmp slt i32 %6, 0, !dbg !1258
  br i1 %cmp, label %if.then, label %if.end, !dbg !1259

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %n.addr, align 4, !dbg !1260, !tbaa !73
  %sub = sub nsw i32 %7, 1, !dbg !1261
  %sub1 = sub nsw i32 0, %sub, !dbg !1262
  %8 = load i32, ptr %incx.addr, align 4, !dbg !1263, !tbaa !73
  %mul = mul nsw i32 %sub1, %8, !dbg !1264
  store i32 %mul, ptr %ix, align 4, !dbg !1265, !tbaa !73
  br label %if.end, !dbg !1266

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, ptr %incy.addr, align 4, !dbg !1267, !tbaa !73
  %cmp2 = icmp slt i32 %9, 0, !dbg !1269
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !1270

if.then3:                                         ; preds = %if.end
  %10 = load i32, ptr %n.addr, align 4, !dbg !1271, !tbaa !73
  %sub4 = sub nsw i32 %10, 1, !dbg !1272
  %sub5 = sub nsw i32 0, %sub4, !dbg !1273
  %11 = load i32, ptr %incy.addr, align 4, !dbg !1274, !tbaa !73
  %mul6 = mul nsw i32 %sub5, %11, !dbg !1275
  store i32 %mul6, ptr %iy, align 4, !dbg !1276, !tbaa !73
  br label %if.end7, !dbg !1277

if.end7:                                          ; preds = %if.then3, %if.end
  store double 0.000000e+00, ptr %S2, align 8, !dbg !1278, !tbaa !86
  store double 0.000000e+00, ptr %S1, align 8, !dbg !1279, !tbaa !86
  store double 0.000000e+00, ptr %S, align 8, !dbg !1280, !tbaa !86
  store i32 0, ptr %i, align 4, !dbg !1281, !tbaa !73
  br label %for.cond, !dbg !1283

for.cond:                                         ; preds = %for.inc, %if.end7
  %12 = load i32, ptr %i, align 4, !dbg !1284, !tbaa !73
  %13 = load i32, ptr %n.addr, align 4, !dbg !1286, !tbaa !73
  %cmp8 = icmp slt i32 %12, %13, !dbg !1287
  br i1 %cmp8, label %for.body, label %for.end, !dbg !1288

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %x_i, align 8, !dbg !1289, !tbaa !90
  %15 = load i32, ptr %ix, align 4, !dbg !1291, !tbaa !73
  %idxprom = sext i32 %15 to i64, !dbg !1289
  %arrayidx = getelementptr inbounds float, ptr %14, i64 %idxprom, !dbg !1289
  %16 = load float, ptr %arrayidx, align 4, !dbg !1289, !tbaa !80
  store float %16, ptr %x_ii, align 4, !dbg !1292, !tbaa !80
  %17 = load ptr, ptr %y_i, align 8, !dbg !1293, !tbaa !90
  %18 = load i32, ptr %iy, align 4, !dbg !1294, !tbaa !73
  %idxprom9 = sext i32 %18 to i64, !dbg !1293
  %arrayidx10 = getelementptr inbounds float, ptr %17, i64 %idxprom9, !dbg !1293
  %19 = load float, ptr %arrayidx10, align 4, !dbg !1293, !tbaa !80
  store float %19, ptr %y_ii, align 4, !dbg !1295, !tbaa !80
  %20 = load float, ptr %x_ii, align 4, !dbg !1296, !tbaa !80
  %conv = fpext float %20 to double, !dbg !1296
  %21 = call double @llvm.fabs.f64(double %conv), !dbg !1297
  %22 = load double, ptr %S1, align 8, !dbg !1298, !tbaa !86
  %add = fadd double %22, %21, !dbg !1298
  store double %add, ptr %S1, align 8, !dbg !1298, !tbaa !86
  %23 = load float, ptr %y_ii, align 4, !dbg !1299, !tbaa !80
  %conv11 = fpext float %23 to double, !dbg !1299
  %24 = call double @llvm.fabs.f64(double %conv11), !dbg !1300
  %25 = load double, ptr %S2, align 8, !dbg !1301, !tbaa !86
  %add12 = fadd double %25, %24, !dbg !1301
  store double %add12, ptr %S2, align 8, !dbg !1301, !tbaa !86
  %26 = load float, ptr %x_ii, align 4, !dbg !1302, !tbaa !80
  %27 = load float, ptr %y_ii, align 4, !dbg !1303, !tbaa !80
  %mul13 = fmul float %26, %27, !dbg !1304
  %conv14 = fpext float %mul13 to double, !dbg !1302
  %arrayidx15 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !1305
  store double %conv14, ptr %arrayidx15, align 16, !dbg !1306, !tbaa !86
  %arrayidx16 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !1307
  store double 0.000000e+00, ptr %arrayidx16, align 8, !dbg !1308, !tbaa !86
  %arrayidx17 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !1309
  %28 = load double, ptr %arrayidx17, align 16, !dbg !1309, !tbaa !86
  %arrayidx18 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !1310
  %29 = load double, ptr %arrayidx18, align 16, !dbg !1310, !tbaa !86
  %arrayidx20 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !1311
  %30 = load double, ptr %arrayidx20, align 8, !dbg !1311, !tbaa !86
  %arrayidx21 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !1312
  %31 = load double, ptr %arrayidx21, align 8, !dbg !1312, !tbaa !86
  %mul22 = fmul double %30, %31, !dbg !1313
  %32 = call double @llvm.fmuladd.f64(double %28, double %29, double %mul22), !dbg !1314
  %call = call double @sqrt(double noundef %32) #5, !dbg !1315
  %33 = load double, ptr %S, align 8, !dbg !1316, !tbaa !86
  %add23 = fadd double %33, %call, !dbg !1316
  store double %add23, ptr %S, align 8, !dbg !1316, !tbaa !86
  %34 = load i32, ptr %incx.addr, align 4, !dbg !1317, !tbaa !73
  %35 = load i32, ptr %ix, align 4, !dbg !1318, !tbaa !73
  %add24 = add nsw i32 %35, %34, !dbg !1318
  store i32 %add24, ptr %ix, align 4, !dbg !1318, !tbaa !73
  %36 = load i32, ptr %incy.addr, align 4, !dbg !1319, !tbaa !73
  %37 = load i32, ptr %iy, align 4, !dbg !1320, !tbaa !73
  %add25 = add nsw i32 %37, %36, !dbg !1320
  store i32 %add25, ptr %iy, align 4, !dbg !1320, !tbaa !73
  br label %for.inc, !dbg !1321

for.inc:                                          ; preds = %for.body
  %38 = load i32, ptr %i, align 4, !dbg !1322, !tbaa !73
  %inc = add nsw i32 %38, 1, !dbg !1322
  store i32 %inc, ptr %i, align 4, !dbg !1322, !tbaa !73
  br label %for.cond, !dbg !1323, !llvm.loop !1324

for.end:                                          ; preds = %for.cond
  %39 = load ptr, ptr %alpha_i, align 8, !dbg !1326, !tbaa !90
  %arrayidx26 = getelementptr inbounds float, ptr %39, i64 0, !dbg !1326
  %40 = load float, ptr %arrayidx26, align 4, !dbg !1326, !tbaa !80
  %41 = load ptr, ptr %alpha_i, align 8, !dbg !1327, !tbaa !90
  %arrayidx27 = getelementptr inbounds float, ptr %41, i64 0, !dbg !1327
  %42 = load float, ptr %arrayidx27, align 4, !dbg !1327, !tbaa !80
  %43 = load ptr, ptr %alpha_i, align 8, !dbg !1328, !tbaa !90
  %arrayidx29 = getelementptr inbounds float, ptr %43, i64 1, !dbg !1328
  %44 = load float, ptr %arrayidx29, align 4, !dbg !1328, !tbaa !80
  %45 = load ptr, ptr %alpha_i, align 8, !dbg !1329, !tbaa !90
  %arrayidx30 = getelementptr inbounds float, ptr %45, i64 1, !dbg !1329
  %46 = load float, ptr %arrayidx30, align 4, !dbg !1329, !tbaa !80
  %mul31 = fmul float %44, %46, !dbg !1330
  %47 = call float @llvm.fmuladd.f32(float %40, float %42, float %mul31), !dbg !1331
  %conv32 = fpext float %47 to double, !dbg !1326
  %call33 = call double @sqrt(double noundef %conv32) #5, !dbg !1332
  %48 = load double, ptr %S, align 8, !dbg !1333, !tbaa !86
  %mul34 = fmul double %48, %call33, !dbg !1333
  store double %mul34, ptr %S, align 8, !dbg !1333, !tbaa !86
  %49 = load ptr, ptr %beta_i, align 8, !dbg !1334, !tbaa !90
  %arrayidx35 = getelementptr inbounds float, ptr %49, i64 0, !dbg !1334
  %50 = load float, ptr %arrayidx35, align 4, !dbg !1334, !tbaa !80
  %51 = load ptr, ptr %rin_i, align 8, !dbg !1336, !tbaa !90
  %arrayidx36 = getelementptr inbounds float, ptr %51, i64 0, !dbg !1336
  %52 = load float, ptr %arrayidx36, align 4, !dbg !1336, !tbaa !80
  %53 = load ptr, ptr %beta_i, align 8, !dbg !1337, !tbaa !90
  %arrayidx38 = getelementptr inbounds float, ptr %53, i64 1, !dbg !1337
  %54 = load float, ptr %arrayidx38, align 4, !dbg !1337, !tbaa !80
  %55 = load ptr, ptr %rin_i, align 8, !dbg !1338, !tbaa !90
  %arrayidx39 = getelementptr inbounds float, ptr %55, i64 1, !dbg !1338
  %56 = load float, ptr %arrayidx39, align 4, !dbg !1338, !tbaa !80
  %mul40 = fmul float %54, %56, !dbg !1339
  %neg = fneg float %mul40, !dbg !1340
  %57 = call float @llvm.fmuladd.f32(float %50, float %52, float %neg), !dbg !1340
  %conv41 = fpext float %57 to double, !dbg !1334
  %arrayidx42 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !1341
  store double %conv41, ptr %arrayidx42, align 16, !dbg !1342, !tbaa !86
  %58 = load ptr, ptr %beta_i, align 8, !dbg !1343, !tbaa !90
  %arrayidx43 = getelementptr inbounds float, ptr %58, i64 0, !dbg !1343
  %59 = load float, ptr %arrayidx43, align 4, !dbg !1343, !tbaa !80
  %60 = load ptr, ptr %rin_i, align 8, !dbg !1344, !tbaa !90
  %arrayidx44 = getelementptr inbounds float, ptr %60, i64 1, !dbg !1344
  %61 = load float, ptr %arrayidx44, align 4, !dbg !1344, !tbaa !80
  %62 = load ptr, ptr %beta_i, align 8, !dbg !1345, !tbaa !90
  %arrayidx46 = getelementptr inbounds float, ptr %62, i64 1, !dbg !1345
  %63 = load float, ptr %arrayidx46, align 4, !dbg !1345, !tbaa !80
  %64 = load ptr, ptr %rin_i, align 8, !dbg !1346, !tbaa !90
  %arrayidx47 = getelementptr inbounds float, ptr %64, i64 0, !dbg !1346
  %65 = load float, ptr %arrayidx47, align 4, !dbg !1346, !tbaa !80
  %mul48 = fmul float %63, %65, !dbg !1347
  %66 = call float @llvm.fmuladd.f32(float %59, float %61, float %mul48), !dbg !1348
  %conv49 = fpext float %66 to double, !dbg !1343
  %arrayidx50 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !1349
  store double %conv49, ptr %arrayidx50, align 8, !dbg !1350, !tbaa !86
  %arrayidx51 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !1351
  %67 = load double, ptr %arrayidx51, align 16, !dbg !1351, !tbaa !86
  %arrayidx52 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !1352
  %68 = load double, ptr %arrayidx52, align 16, !dbg !1352, !tbaa !86
  %arrayidx54 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !1353
  %69 = load double, ptr %arrayidx54, align 8, !dbg !1353, !tbaa !86
  %arrayidx55 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !1354
  %70 = load double, ptr %arrayidx55, align 8, !dbg !1354, !tbaa !86
  %mul56 = fmul double %69, %70, !dbg !1355
  %71 = call double @llvm.fmuladd.f64(double %67, double %68, double %mul56), !dbg !1356
  %call57 = call double @sqrt(double noundef %71) #5, !dbg !1357
  %72 = load double, ptr %S, align 8, !dbg !1358, !tbaa !86
  %add58 = fadd double %72, %call57, !dbg !1358
  store double %add58, ptr %S, align 8, !dbg !1358, !tbaa !86
  %call59 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !1359
  %conv60 = sitofp i32 %call59 to double, !dbg !1360
  %call61 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !1361
  %conv62 = sitofp i32 %call61 to double, !dbg !1362
  %call63 = call double @pow(double noundef %conv60, double noundef %conv62) #5, !dbg !1363
  store double %call63, ptr %un_d, align 8, !dbg !1364, !tbaa !86
  %73 = load double, ptr %S, align 8, !dbg !1365, !tbaa !86
  %74 = load double, ptr %un_d, align 8, !dbg !1365, !tbaa !86
  %cmp64 = fcmp ogt double %73, %74, !dbg !1365
  br i1 %cmp64, label %cond.true, label %cond.false, !dbg !1365

cond.true:                                        ; preds = %for.end
  %75 = load double, ptr %S, align 8, !dbg !1365, !tbaa !86
  br label %cond.end, !dbg !1365

cond.false:                                       ; preds = %for.end
  %76 = load double, ptr %un_d, align 8, !dbg !1365, !tbaa !86
  br label %cond.end, !dbg !1365

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %75, %cond.true ], [ %76, %cond.false ], !dbg !1365
  store double %cond, ptr %S, align 8, !dbg !1366, !tbaa !86
  %call66 = call double @power(i32 noundef 2, i32 noundef -106), !dbg !1367
  store double %call66, ptr %eps_accurate, align 8, !dbg !1368, !tbaa !86
  %call67 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 214), !dbg !1369
  %conv68 = sitofp i32 %call67 to double, !dbg !1370
  %call69 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 214), !dbg !1371
  %conv70 = sitofp i32 %call69 to double, !dbg !1372
  %call71 = call double @pow(double noundef %conv68, double noundef %conv70) #5, !dbg !1373
  store double %call71, ptr %un_accurate, align 8, !dbg !1374, !tbaa !86
  %call72 = call double @power(i32 noundef 2, i32 noundef -24), !dbg !1375
  store double %call72, ptr %eps_out, align 8, !dbg !1376, !tbaa !86
  %call73 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 211), !dbg !1377
  %conv74 = sitofp i32 %call73 to double, !dbg !1378
  %call75 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 211), !dbg !1379
  %conv76 = sitofp i32 %call75 to double, !dbg !1380
  %call77 = call double @pow(double noundef %conv74, double noundef %conv76) #5, !dbg !1381
  store double %call77, ptr %un_out, align 8, !dbg !1382, !tbaa !86
  %77 = load ptr, ptr %rout_i, align 8, !dbg !1383, !tbaa !90
  %arrayidx78 = getelementptr inbounds float, ptr %77, i64 0, !dbg !1383
  %78 = load float, ptr %arrayidx78, align 4, !dbg !1383, !tbaa !80
  %conv79 = fpext float %78 to double, !dbg !1383
  %79 = load ptr, ptr %r_true_l.addr, align 8, !dbg !1384, !tbaa !90
  %arrayidx80 = getelementptr inbounds double, ptr %79, i64 0, !dbg !1384
  %80 = load double, ptr %arrayidx80, align 8, !dbg !1384, !tbaa !86
  %sub81 = fsub double %conv79, %80, !dbg !1385
  %81 = load ptr, ptr %r_true_t.addr, align 8, !dbg !1386, !tbaa !90
  %arrayidx82 = getelementptr inbounds double, ptr %81, i64 0, !dbg !1386
  %82 = load double, ptr %arrayidx82, align 8, !dbg !1386, !tbaa !86
  %sub83 = fsub double %sub81, %82, !dbg !1387
  %arrayidx84 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !1388
  store double %sub83, ptr %arrayidx84, align 16, !dbg !1389, !tbaa !86
  %83 = load ptr, ptr %rout_i, align 8, !dbg !1390, !tbaa !90
  %arrayidx85 = getelementptr inbounds float, ptr %83, i64 1, !dbg !1390
  %84 = load float, ptr %arrayidx85, align 4, !dbg !1390, !tbaa !80
  %conv86 = fpext float %84 to double, !dbg !1390
  %85 = load ptr, ptr %r_true_l.addr, align 8, !dbg !1391, !tbaa !90
  %arrayidx87 = getelementptr inbounds double, ptr %85, i64 1, !dbg !1391
  %86 = load double, ptr %arrayidx87, align 8, !dbg !1391, !tbaa !86
  %sub88 = fsub double %conv86, %86, !dbg !1392
  %87 = load ptr, ptr %r_true_t.addr, align 8, !dbg !1393, !tbaa !90
  %arrayidx89 = getelementptr inbounds double, ptr %87, i64 1, !dbg !1393
  %88 = load double, ptr %arrayidx89, align 8, !dbg !1393, !tbaa !86
  %sub90 = fsub double %sub88, %88, !dbg !1394
  %arrayidx91 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !1395
  store double %sub90, ptr %arrayidx91, align 8, !dbg !1396, !tbaa !86
  %arrayidx92 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !1397
  %89 = load double, ptr %arrayidx92, align 16, !dbg !1397, !tbaa !86
  %arrayidx93 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !1398
  %90 = load double, ptr %arrayidx93, align 16, !dbg !1398, !tbaa !86
  %arrayidx95 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !1399
  %91 = load double, ptr %arrayidx95, align 8, !dbg !1399, !tbaa !86
  %arrayidx96 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !1400
  %92 = load double, ptr %arrayidx96, align 8, !dbg !1400, !tbaa !86
  %mul97 = fmul double %91, %92, !dbg !1401
  %93 = call double @llvm.fmuladd.f64(double %89, double %90, double %mul97), !dbg !1402
  %call98 = call double @sqrt(double noundef %93) #5, !dbg !1403
  store double %call98, ptr %tmp1, align 8, !dbg !1404, !tbaa !86
  %94 = load ptr, ptr %alpha_i, align 8, !dbg !1405, !tbaa !90
  %arrayidx99 = getelementptr inbounds float, ptr %94, i64 0, !dbg !1405
  %95 = load float, ptr %arrayidx99, align 4, !dbg !1405, !tbaa !80
  %96 = load ptr, ptr %alpha_i, align 8, !dbg !1406, !tbaa !90
  %arrayidx100 = getelementptr inbounds float, ptr %96, i64 0, !dbg !1406
  %97 = load float, ptr %arrayidx100, align 4, !dbg !1406, !tbaa !80
  %98 = load ptr, ptr %alpha_i, align 8, !dbg !1407, !tbaa !90
  %arrayidx102 = getelementptr inbounds float, ptr %98, i64 1, !dbg !1407
  %99 = load float, ptr %arrayidx102, align 4, !dbg !1407, !tbaa !80
  %100 = load ptr, ptr %alpha_i, align 8, !dbg !1408, !tbaa !90
  %arrayidx103 = getelementptr inbounds float, ptr %100, i64 1, !dbg !1408
  %101 = load float, ptr %arrayidx103, align 4, !dbg !1408, !tbaa !80
  %mul104 = fmul float %99, %101, !dbg !1409
  %102 = call float @llvm.fmuladd.f32(float %95, float %97, float %mul104), !dbg !1410
  %conv105 = fpext float %102 to double, !dbg !1405
  %call106 = call double @sqrt(double noundef %conv105) #5, !dbg !1411
  %mul107 = fmul double 2.000000e+00, %call106, !dbg !1412
  %103 = load i32, ptr %n.addr, align 4, !dbg !1413, !tbaa !73
  %conv108 = sitofp i32 %103 to double, !dbg !1413
  %104 = call double @llvm.fmuladd.f64(double %mul107, double %conv108, double 3.000000e+00), !dbg !1414
  store double %104, ptr %U, align 8, !dbg !1415, !tbaa !86
  %105 = load double, ptr %U, align 8, !dbg !1416, !tbaa !86
  %106 = load double, ptr %S1, align 8, !dbg !1416, !tbaa !86
  %107 = load i32, ptr %n.addr, align 4, !dbg !1416, !tbaa !73
  %mul110 = mul nsw i32 2, %107, !dbg !1416
  %conv111 = sitofp i32 %mul110 to double, !dbg !1416
  %add112 = fadd double %106, %conv111, !dbg !1416
  %add113 = fadd double %add112, 1.000000e+00, !dbg !1416
  %cmp114 = fcmp ogt double %105, %add113, !dbg !1416
  br i1 %cmp114, label %cond.true116, label %cond.false117, !dbg !1416

cond.true116:                                     ; preds = %cond.end
  %108 = load double, ptr %U, align 8, !dbg !1416, !tbaa !86
  br label %cond.end122, !dbg !1416

cond.false117:                                    ; preds = %cond.end
  %109 = load double, ptr %S1, align 8, !dbg !1416, !tbaa !86
  %110 = load i32, ptr %n.addr, align 4, !dbg !1416, !tbaa !73
  %mul118 = mul nsw i32 2, %110, !dbg !1416
  %conv119 = sitofp i32 %mul118 to double, !dbg !1416
  %add120 = fadd double %109, %conv119, !dbg !1416
  %add121 = fadd double %add120, 1.000000e+00, !dbg !1416
  br label %cond.end122, !dbg !1416

cond.end122:                                      ; preds = %cond.false117, %cond.true116
  %cond123 = phi double [ %108, %cond.true116 ], [ %add121, %cond.false117 ], !dbg !1416
  store double %cond123, ptr %U, align 8, !dbg !1417, !tbaa !86
  %111 = load double, ptr %U, align 8, !dbg !1418, !tbaa !86
  %112 = load double, ptr %S2, align 8, !dbg !1418, !tbaa !86
  %113 = load i32, ptr %n.addr, align 4, !dbg !1418, !tbaa !73
  %mul124 = mul nsw i32 2, %113, !dbg !1418
  %conv125 = sitofp i32 %mul124 to double, !dbg !1418
  %add126 = fadd double %112, %conv125, !dbg !1418
  %add127 = fadd double %add126, 1.000000e+00, !dbg !1418
  %cmp128 = fcmp ogt double %111, %add127, !dbg !1418
  br i1 %cmp128, label %cond.true130, label %cond.false131, !dbg !1418

cond.true130:                                     ; preds = %cond.end122
  %114 = load double, ptr %U, align 8, !dbg !1418, !tbaa !86
  br label %cond.end136, !dbg !1418

cond.false131:                                    ; preds = %cond.end122
  %115 = load double, ptr %S2, align 8, !dbg !1418, !tbaa !86
  %116 = load i32, ptr %n.addr, align 4, !dbg !1418, !tbaa !73
  %mul132 = mul nsw i32 2, %116, !dbg !1418
  %conv133 = sitofp i32 %mul132 to double, !dbg !1418
  %add134 = fadd double %115, %conv133, !dbg !1418
  %add135 = fadd double %add134, 1.000000e+00, !dbg !1418
  br label %cond.end136, !dbg !1418

cond.end136:                                      ; preds = %cond.false131, %cond.true130
  %cond137 = phi double [ %114, %cond.true130 ], [ %add135, %cond.false131 ], !dbg !1418
  %117 = load double, ptr %un_int.addr, align 8, !dbg !1419, !tbaa !86
  %118 = load double, ptr %un_accurate, align 8, !dbg !1420, !tbaa !86
  %add138 = fadd double %117, %118, !dbg !1421
  %119 = load double, ptr %un_out, align 8, !dbg !1422, !tbaa !86
  %120 = call double @llvm.fmuladd.f64(double %cond137, double %add138, double %119), !dbg !1423
  store double %120, ptr %U, align 8, !dbg !1424, !tbaa !86
  %call140 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !1425
  %mul141 = fmul double 2.000000e+00, %call140, !dbg !1426
  %121 = load double, ptr %U, align 8, !dbg !1427, !tbaa !86
  %mul142 = fmul double %121, %mul141, !dbg !1427
  store double %mul142, ptr %U, align 8, !dbg !1427, !tbaa !86
  %122 = load double, ptr %tmp1, align 8, !dbg !1428, !tbaa !86
  %call143 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !1429
  %mul144 = fmul double 2.000000e+00, %call143, !dbg !1430
  %123 = load i32, ptr %n.addr, align 4, !dbg !1431, !tbaa !73
  %add145 = add nsw i32 %123, 2, !dbg !1432
  %conv146 = sitofp i32 %add145 to double, !dbg !1433
  %mul147 = fmul double %mul144, %conv146, !dbg !1434
  %124 = load double, ptr %eps_int.addr, align 8, !dbg !1435, !tbaa !86
  %125 = load double, ptr %eps_accurate, align 8, !dbg !1436, !tbaa !86
  %add148 = fadd double %124, %125, !dbg !1437
  %mul149 = fmul double %mul147, %add148, !dbg !1438
  %126 = load double, ptr %S, align 8, !dbg !1439, !tbaa !86
  %call151 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !1440
  %127 = load double, ptr %eps_out, align 8, !dbg !1441, !tbaa !86
  %mul152 = fmul double %call151, %127, !dbg !1442
  %128 = load ptr, ptr %r_true_l.addr, align 8, !dbg !1443, !tbaa !90
  %arrayidx153 = getelementptr inbounds double, ptr %128, i64 0, !dbg !1443
  %129 = load double, ptr %arrayidx153, align 8, !dbg !1443, !tbaa !86
  %130 = load ptr, ptr %r_true_l.addr, align 8, !dbg !1444, !tbaa !90
  %arrayidx154 = getelementptr inbounds double, ptr %130, i64 0, !dbg !1444
  %131 = load double, ptr %arrayidx154, align 8, !dbg !1444, !tbaa !86
  %132 = load ptr, ptr %r_true_l.addr, align 8, !dbg !1445, !tbaa !90
  %arrayidx156 = getelementptr inbounds double, ptr %132, i64 1, !dbg !1445
  %133 = load double, ptr %arrayidx156, align 8, !dbg !1445, !tbaa !86
  %134 = load ptr, ptr %r_true_l.addr, align 8, !dbg !1446, !tbaa !90
  %arrayidx157 = getelementptr inbounds double, ptr %134, i64 1, !dbg !1446
  %135 = load double, ptr %arrayidx157, align 8, !dbg !1446, !tbaa !86
  %mul158 = fmul double %133, %135, !dbg !1447
  %136 = call double @llvm.fmuladd.f64(double %129, double %131, double %mul158), !dbg !1448
  %call159 = call double @sqrt(double noundef %136) #5, !dbg !1449
  %mul160 = fmul double %mul152, %call159, !dbg !1450
  %137 = call double @llvm.fmuladd.f64(double %mul149, double %126, double %mul160), !dbg !1451
  %138 = load double, ptr %U, align 8, !dbg !1452, !tbaa !86
  %add161 = fadd double %137, %138, !dbg !1453
  %div = fdiv double %122, %add161, !dbg !1454
  %139 = load ptr, ptr %test_ratio.addr, align 8, !dbg !1455, !tbaa !90
  store double %div, ptr %139, align 8, !dbg !1456, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 4, ptr %y_ii) #5, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 4, ptr %x_ii) #5, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 8, ptr %rout_i) #5, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 8, ptr %rin_i) #5, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta_i) #5, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_i) #5, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_i) #5, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_i) #5, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_out) #5, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_accurate) #5, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_d) #5, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #5, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 16, ptr %prod) #5, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 8, ptr %U) #5, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 8, ptr %S2) #5, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 8, ptr %S1) #5, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 8, ptr %S) #5, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp1) #5, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_out) #5, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_accurate) #5, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 4, ptr %iy) #5, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 4, ptr %ix) #5, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !1457
  ret void, !dbg !1457
}

; Function Attrs: nounwind uwtable
define dso_local void @test_BLAS_cdot_s_c(i32 noundef %n, i32 noundef %conj, ptr noundef %alpha, ptr noundef %beta, ptr noundef %rin, ptr noundef %rout, ptr noundef %r_true_l, ptr noundef %r_true_t, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, double noundef %eps_int, double noundef %un_int, ptr noundef %test_ratio) #0 !dbg !1458 {
entry:
  %n.addr = alloca i32, align 4
  %conj.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %rin.addr = alloca ptr, align 8
  %rout.addr = alloca ptr, align 8
  %r_true_l.addr = alloca ptr, align 8
  %r_true_t.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %eps_int.addr = alloca double, align 8
  %un_int.addr = alloca double, align 8
  %test_ratio.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %eps_accurate = alloca double, align 8
  %eps_out = alloca double, align 8
  %tmp1 = alloca double, align 8
  %S = alloca double, align 8
  %S1 = alloca double, align 8
  %S2 = alloca double, align 8
  %U = alloca double, align 8
  %prod = alloca [2 x double], align 16
  %tmp = alloca [2 x double], align 16
  %un_d = alloca double, align 8
  %un_accurate = alloca double, align 8
  %un_out = alloca double, align 8
  %x_i = alloca ptr, align 8
  %y_i = alloca ptr, align 8
  %alpha_i = alloca ptr, align 8
  %beta_i = alloca ptr, align 8
  %rin_i = alloca ptr, align 8
  %rout_i = alloca ptr, align 8
  %x_ii = alloca float, align 4
  %y_ii = alloca [2 x float], align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1462, metadata !DIExpression()), !dbg !1500
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !78
  tail call void @llvm.dbg.declare(metadata ptr %conj.addr, metadata !1463, metadata !DIExpression()), !dbg !1501
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !1464, metadata !DIExpression()), !dbg !1502
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %beta.addr, metadata !1465, metadata !DIExpression()), !dbg !1503
  store ptr %rin, ptr %rin.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %rin.addr, metadata !1466, metadata !DIExpression()), !dbg !1504
  store ptr %rout, ptr %rout.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %rout.addr, metadata !1467, metadata !DIExpression()), !dbg !1505
  store ptr %r_true_l, ptr %r_true_l.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %r_true_l.addr, metadata !1468, metadata !DIExpression()), !dbg !1506
  store ptr %r_true_t, ptr %r_true_t.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %r_true_t.addr, metadata !1469, metadata !DIExpression()), !dbg !1507
  store ptr %x, ptr %x.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !1470, metadata !DIExpression()), !dbg !1508
  store i32 %incx, ptr %incx.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incx.addr, metadata !1471, metadata !DIExpression()), !dbg !1509
  store ptr %y, ptr %y.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !1472, metadata !DIExpression()), !dbg !1510
  store i32 %incy, ptr %incy.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incy.addr, metadata !1473, metadata !DIExpression()), !dbg !1511
  store double %eps_int, ptr %eps_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %eps_int.addr, metadata !1474, metadata !DIExpression()), !dbg !1512
  store double %un_int, ptr %un_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %un_int.addr, metadata !1475, metadata !DIExpression()), !dbg !1513
  store ptr %test_ratio, ptr %test_ratio.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %test_ratio.addr, metadata !1476, metadata !DIExpression()), !dbg !1514
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !1515
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1477, metadata !DIExpression()), !dbg !1516
  call void @llvm.lifetime.start.p0(i64 4, ptr %ix) #5, !dbg !1515
  tail call void @llvm.dbg.declare(metadata ptr %ix, metadata !1478, metadata !DIExpression()), !dbg !1517
  call void @llvm.lifetime.start.p0(i64 4, ptr %iy) #5, !dbg !1515
  tail call void @llvm.dbg.declare(metadata ptr %iy, metadata !1479, metadata !DIExpression()), !dbg !1518
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_accurate) #5, !dbg !1519
  tail call void @llvm.dbg.declare(metadata ptr %eps_accurate, metadata !1480, metadata !DIExpression()), !dbg !1520
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_out) #5, !dbg !1519
  tail call void @llvm.dbg.declare(metadata ptr %eps_out, metadata !1481, metadata !DIExpression()), !dbg !1521
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp1) #5, !dbg !1519
  tail call void @llvm.dbg.declare(metadata ptr %tmp1, metadata !1482, metadata !DIExpression()), !dbg !1522
  call void @llvm.lifetime.start.p0(i64 8, ptr %S) #5, !dbg !1519
  tail call void @llvm.dbg.declare(metadata ptr %S, metadata !1483, metadata !DIExpression()), !dbg !1523
  call void @llvm.lifetime.start.p0(i64 8, ptr %S1) #5, !dbg !1519
  tail call void @llvm.dbg.declare(metadata ptr %S1, metadata !1484, metadata !DIExpression()), !dbg !1524
  call void @llvm.lifetime.start.p0(i64 8, ptr %S2) #5, !dbg !1519
  tail call void @llvm.dbg.declare(metadata ptr %S2, metadata !1485, metadata !DIExpression()), !dbg !1525
  call void @llvm.lifetime.start.p0(i64 8, ptr %U) #5, !dbg !1519
  tail call void @llvm.dbg.declare(metadata ptr %U, metadata !1486, metadata !DIExpression()), !dbg !1526
  call void @llvm.lifetime.start.p0(i64 16, ptr %prod) #5, !dbg !1519
  tail call void @llvm.dbg.declare(metadata ptr %prod, metadata !1487, metadata !DIExpression()), !dbg !1527
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #5, !dbg !1519
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !1488, metadata !DIExpression()), !dbg !1528
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_d) #5, !dbg !1529
  tail call void @llvm.dbg.declare(metadata ptr %un_d, metadata !1489, metadata !DIExpression()), !dbg !1530
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_accurate) #5, !dbg !1529
  tail call void @llvm.dbg.declare(metadata ptr %un_accurate, metadata !1490, metadata !DIExpression()), !dbg !1531
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_out) #5, !dbg !1529
  tail call void @llvm.dbg.declare(metadata ptr %un_out, metadata !1491, metadata !DIExpression()), !dbg !1532
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_i) #5, !dbg !1533
  tail call void @llvm.dbg.declare(metadata ptr %x_i, metadata !1492, metadata !DIExpression()), !dbg !1534
  %0 = load ptr, ptr %x.addr, align 8, !dbg !1535, !tbaa !90
  store ptr %0, ptr %x_i, align 8, !dbg !1534, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_i) #5, !dbg !1536
  tail call void @llvm.dbg.declare(metadata ptr %y_i, metadata !1493, metadata !DIExpression()), !dbg !1537
  %1 = load ptr, ptr %y.addr, align 8, !dbg !1538, !tbaa !90
  store ptr %1, ptr %y_i, align 8, !dbg !1537, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_i) #5, !dbg !1539
  tail call void @llvm.dbg.declare(metadata ptr %alpha_i, metadata !1494, metadata !DIExpression()), !dbg !1540
  %2 = load ptr, ptr %alpha.addr, align 8, !dbg !1541, !tbaa !90
  store ptr %2, ptr %alpha_i, align 8, !dbg !1540, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta_i) #5, !dbg !1542
  tail call void @llvm.dbg.declare(metadata ptr %beta_i, metadata !1495, metadata !DIExpression()), !dbg !1543
  %3 = load ptr, ptr %beta.addr, align 8, !dbg !1544, !tbaa !90
  store ptr %3, ptr %beta_i, align 8, !dbg !1543, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %rin_i) #5, !dbg !1545
  tail call void @llvm.dbg.declare(metadata ptr %rin_i, metadata !1496, metadata !DIExpression()), !dbg !1546
  %4 = load ptr, ptr %rin.addr, align 8, !dbg !1547, !tbaa !90
  store ptr %4, ptr %rin_i, align 8, !dbg !1546, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %rout_i) #5, !dbg !1548
  tail call void @llvm.dbg.declare(metadata ptr %rout_i, metadata !1497, metadata !DIExpression()), !dbg !1549
  %5 = load ptr, ptr %rout.addr, align 8, !dbg !1550, !tbaa !90
  store ptr %5, ptr %rout_i, align 8, !dbg !1549, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 4, ptr %x_ii) #5, !dbg !1551
  tail call void @llvm.dbg.declare(metadata ptr %x_ii, metadata !1498, metadata !DIExpression()), !dbg !1552
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_ii) #5, !dbg !1553
  tail call void @llvm.dbg.declare(metadata ptr %y_ii, metadata !1499, metadata !DIExpression()), !dbg !1554
  %6 = load i32, ptr %incy.addr, align 4, !dbg !1555, !tbaa !73
  %mul = mul nsw i32 %6, 2, !dbg !1555
  store i32 %mul, ptr %incy.addr, align 4, !dbg !1555, !tbaa !73
  store i32 0, ptr %ix, align 4, !dbg !1556, !tbaa !73
  store i32 0, ptr %iy, align 4, !dbg !1557, !tbaa !73
  %7 = load i32, ptr %incx.addr, align 4, !dbg !1558, !tbaa !73
  %cmp = icmp slt i32 %7, 0, !dbg !1560
  br i1 %cmp, label %if.then, label %if.end, !dbg !1561

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %n.addr, align 4, !dbg !1562, !tbaa !73
  %sub = sub nsw i32 %8, 1, !dbg !1563
  %sub1 = sub nsw i32 0, %sub, !dbg !1564
  %9 = load i32, ptr %incx.addr, align 4, !dbg !1565, !tbaa !73
  %mul2 = mul nsw i32 %sub1, %9, !dbg !1566
  store i32 %mul2, ptr %ix, align 4, !dbg !1567, !tbaa !73
  br label %if.end, !dbg !1568

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, ptr %incy.addr, align 4, !dbg !1569, !tbaa !73
  %cmp3 = icmp slt i32 %10, 0, !dbg !1571
  br i1 %cmp3, label %if.then4, label %if.end8, !dbg !1572

if.then4:                                         ; preds = %if.end
  %11 = load i32, ptr %n.addr, align 4, !dbg !1573, !tbaa !73
  %sub5 = sub nsw i32 %11, 1, !dbg !1574
  %sub6 = sub nsw i32 0, %sub5, !dbg !1575
  %12 = load i32, ptr %incy.addr, align 4, !dbg !1576, !tbaa !73
  %mul7 = mul nsw i32 %sub6, %12, !dbg !1577
  store i32 %mul7, ptr %iy, align 4, !dbg !1578, !tbaa !73
  br label %if.end8, !dbg !1579

if.end8:                                          ; preds = %if.then4, %if.end
  store double 0.000000e+00, ptr %S2, align 8, !dbg !1580, !tbaa !86
  store double 0.000000e+00, ptr %S1, align 8, !dbg !1581, !tbaa !86
  store double 0.000000e+00, ptr %S, align 8, !dbg !1582, !tbaa !86
  store i32 0, ptr %i, align 4, !dbg !1583, !tbaa !73
  br label %for.cond, !dbg !1585

for.cond:                                         ; preds = %for.inc, %if.end8
  %13 = load i32, ptr %i, align 4, !dbg !1586, !tbaa !73
  %14 = load i32, ptr %n.addr, align 4, !dbg !1588, !tbaa !73
  %cmp9 = icmp slt i32 %13, %14, !dbg !1589
  br i1 %cmp9, label %for.body, label %for.end, !dbg !1590

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %x_i, align 8, !dbg !1591, !tbaa !90
  %16 = load i32, ptr %ix, align 4, !dbg !1593, !tbaa !73
  %idxprom = sext i32 %16 to i64, !dbg !1591
  %arrayidx = getelementptr inbounds float, ptr %15, i64 %idxprom, !dbg !1591
  %17 = load float, ptr %arrayidx, align 4, !dbg !1591, !tbaa !80
  store float %17, ptr %x_ii, align 4, !dbg !1594, !tbaa !80
  %18 = load ptr, ptr %y_i, align 8, !dbg !1595, !tbaa !90
  %19 = load i32, ptr %iy, align 4, !dbg !1596, !tbaa !73
  %idxprom10 = sext i32 %19 to i64, !dbg !1595
  %arrayidx11 = getelementptr inbounds float, ptr %18, i64 %idxprom10, !dbg !1595
  %20 = load float, ptr %arrayidx11, align 4, !dbg !1595, !tbaa !80
  %arrayidx12 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 0, !dbg !1597
  store float %20, ptr %arrayidx12, align 4, !dbg !1598, !tbaa !80
  %21 = load ptr, ptr %y_i, align 8, !dbg !1599, !tbaa !90
  %22 = load i32, ptr %iy, align 4, !dbg !1600, !tbaa !73
  %add = add nsw i32 %22, 1, !dbg !1601
  %idxprom13 = sext i32 %add to i64, !dbg !1599
  %arrayidx14 = getelementptr inbounds float, ptr %21, i64 %idxprom13, !dbg !1599
  %23 = load float, ptr %arrayidx14, align 4, !dbg !1599, !tbaa !80
  %arrayidx15 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 1, !dbg !1602
  store float %23, ptr %arrayidx15, align 4, !dbg !1603, !tbaa !80
  %24 = load float, ptr %x_ii, align 4, !dbg !1604, !tbaa !80
  %conv = fpext float %24 to double, !dbg !1604
  %25 = call double @llvm.fabs.f64(double %conv), !dbg !1605
  %26 = load double, ptr %S1, align 8, !dbg !1606, !tbaa !86
  %add16 = fadd double %26, %25, !dbg !1606
  store double %add16, ptr %S1, align 8, !dbg !1606, !tbaa !86
  %arrayidx17 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 0, !dbg !1607
  %27 = load float, ptr %arrayidx17, align 4, !dbg !1607, !tbaa !80
  %arrayidx18 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 0, !dbg !1608
  %28 = load float, ptr %arrayidx18, align 4, !dbg !1608, !tbaa !80
  %arrayidx20 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 1, !dbg !1609
  %29 = load float, ptr %arrayidx20, align 4, !dbg !1609, !tbaa !80
  %arrayidx21 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 1, !dbg !1610
  %30 = load float, ptr %arrayidx21, align 4, !dbg !1610, !tbaa !80
  %mul22 = fmul float %29, %30, !dbg !1611
  %31 = call float @llvm.fmuladd.f32(float %27, float %28, float %mul22), !dbg !1612
  %conv23 = fpext float %31 to double, !dbg !1607
  %call = call double @sqrt(double noundef %conv23) #5, !dbg !1613
  %32 = load double, ptr %S2, align 8, !dbg !1614, !tbaa !86
  %add24 = fadd double %32, %call, !dbg !1614
  store double %add24, ptr %S2, align 8, !dbg !1614, !tbaa !86
  %arrayidx25 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 0, !dbg !1615
  %33 = load float, ptr %arrayidx25, align 4, !dbg !1615, !tbaa !80
  %34 = load float, ptr %x_ii, align 4, !dbg !1617, !tbaa !80
  %mul26 = fmul float %33, %34, !dbg !1618
  %conv27 = fpext float %mul26 to double, !dbg !1615
  %arrayidx28 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !1619
  store double %conv27, ptr %arrayidx28, align 16, !dbg !1620, !tbaa !86
  %arrayidx29 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 1, !dbg !1621
  %35 = load float, ptr %arrayidx29, align 4, !dbg !1621, !tbaa !80
  %36 = load float, ptr %x_ii, align 4, !dbg !1622, !tbaa !80
  %mul30 = fmul float %35, %36, !dbg !1623
  %conv31 = fpext float %mul30 to double, !dbg !1621
  %arrayidx32 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !1624
  store double %conv31, ptr %arrayidx32, align 8, !dbg !1625, !tbaa !86
  %arrayidx33 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !1626
  %37 = load double, ptr %arrayidx33, align 16, !dbg !1626, !tbaa !86
  %arrayidx34 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !1627
  %38 = load double, ptr %arrayidx34, align 16, !dbg !1627, !tbaa !86
  %arrayidx36 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !1628
  %39 = load double, ptr %arrayidx36, align 8, !dbg !1628, !tbaa !86
  %arrayidx37 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !1629
  %40 = load double, ptr %arrayidx37, align 8, !dbg !1629, !tbaa !86
  %mul38 = fmul double %39, %40, !dbg !1630
  %41 = call double @llvm.fmuladd.f64(double %37, double %38, double %mul38), !dbg !1631
  %call39 = call double @sqrt(double noundef %41) #5, !dbg !1632
  %42 = load double, ptr %S, align 8, !dbg !1633, !tbaa !86
  %add40 = fadd double %42, %call39, !dbg !1633
  store double %add40, ptr %S, align 8, !dbg !1633, !tbaa !86
  %43 = load i32, ptr %incx.addr, align 4, !dbg !1634, !tbaa !73
  %44 = load i32, ptr %ix, align 4, !dbg !1635, !tbaa !73
  %add41 = add nsw i32 %44, %43, !dbg !1635
  store i32 %add41, ptr %ix, align 4, !dbg !1635, !tbaa !73
  %45 = load i32, ptr %incy.addr, align 4, !dbg !1636, !tbaa !73
  %46 = load i32, ptr %iy, align 4, !dbg !1637, !tbaa !73
  %add42 = add nsw i32 %46, %45, !dbg !1637
  store i32 %add42, ptr %iy, align 4, !dbg !1637, !tbaa !73
  br label %for.inc, !dbg !1638

for.inc:                                          ; preds = %for.body
  %47 = load i32, ptr %i, align 4, !dbg !1639, !tbaa !73
  %inc = add nsw i32 %47, 1, !dbg !1639
  store i32 %inc, ptr %i, align 4, !dbg !1639, !tbaa !73
  br label %for.cond, !dbg !1640, !llvm.loop !1641

for.end:                                          ; preds = %for.cond
  %48 = load ptr, ptr %alpha_i, align 8, !dbg !1643, !tbaa !90
  %arrayidx43 = getelementptr inbounds float, ptr %48, i64 0, !dbg !1643
  %49 = load float, ptr %arrayidx43, align 4, !dbg !1643, !tbaa !80
  %50 = load ptr, ptr %alpha_i, align 8, !dbg !1644, !tbaa !90
  %arrayidx44 = getelementptr inbounds float, ptr %50, i64 0, !dbg !1644
  %51 = load float, ptr %arrayidx44, align 4, !dbg !1644, !tbaa !80
  %52 = load ptr, ptr %alpha_i, align 8, !dbg !1645, !tbaa !90
  %arrayidx46 = getelementptr inbounds float, ptr %52, i64 1, !dbg !1645
  %53 = load float, ptr %arrayidx46, align 4, !dbg !1645, !tbaa !80
  %54 = load ptr, ptr %alpha_i, align 8, !dbg !1646, !tbaa !90
  %arrayidx47 = getelementptr inbounds float, ptr %54, i64 1, !dbg !1646
  %55 = load float, ptr %arrayidx47, align 4, !dbg !1646, !tbaa !80
  %mul48 = fmul float %53, %55, !dbg !1647
  %56 = call float @llvm.fmuladd.f32(float %49, float %51, float %mul48), !dbg !1648
  %conv49 = fpext float %56 to double, !dbg !1643
  %call50 = call double @sqrt(double noundef %conv49) #5, !dbg !1649
  %57 = load double, ptr %S, align 8, !dbg !1650, !tbaa !86
  %mul51 = fmul double %57, %call50, !dbg !1650
  store double %mul51, ptr %S, align 8, !dbg !1650, !tbaa !86
  %58 = load ptr, ptr %beta_i, align 8, !dbg !1651, !tbaa !90
  %arrayidx52 = getelementptr inbounds float, ptr %58, i64 0, !dbg !1651
  %59 = load float, ptr %arrayidx52, align 4, !dbg !1651, !tbaa !80
  %60 = load ptr, ptr %rin_i, align 8, !dbg !1653, !tbaa !90
  %arrayidx53 = getelementptr inbounds float, ptr %60, i64 0, !dbg !1653
  %61 = load float, ptr %arrayidx53, align 4, !dbg !1653, !tbaa !80
  %62 = load ptr, ptr %beta_i, align 8, !dbg !1654, !tbaa !90
  %arrayidx55 = getelementptr inbounds float, ptr %62, i64 1, !dbg !1654
  %63 = load float, ptr %arrayidx55, align 4, !dbg !1654, !tbaa !80
  %64 = load ptr, ptr %rin_i, align 8, !dbg !1655, !tbaa !90
  %arrayidx56 = getelementptr inbounds float, ptr %64, i64 1, !dbg !1655
  %65 = load float, ptr %arrayidx56, align 4, !dbg !1655, !tbaa !80
  %mul57 = fmul float %63, %65, !dbg !1656
  %neg = fneg float %mul57, !dbg !1657
  %66 = call float @llvm.fmuladd.f32(float %59, float %61, float %neg), !dbg !1657
  %conv58 = fpext float %66 to double, !dbg !1651
  %arrayidx59 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !1658
  store double %conv58, ptr %arrayidx59, align 16, !dbg !1659, !tbaa !86
  %67 = load ptr, ptr %beta_i, align 8, !dbg !1660, !tbaa !90
  %arrayidx60 = getelementptr inbounds float, ptr %67, i64 0, !dbg !1660
  %68 = load float, ptr %arrayidx60, align 4, !dbg !1660, !tbaa !80
  %69 = load ptr, ptr %rin_i, align 8, !dbg !1661, !tbaa !90
  %arrayidx61 = getelementptr inbounds float, ptr %69, i64 1, !dbg !1661
  %70 = load float, ptr %arrayidx61, align 4, !dbg !1661, !tbaa !80
  %71 = load ptr, ptr %beta_i, align 8, !dbg !1662, !tbaa !90
  %arrayidx63 = getelementptr inbounds float, ptr %71, i64 1, !dbg !1662
  %72 = load float, ptr %arrayidx63, align 4, !dbg !1662, !tbaa !80
  %73 = load ptr, ptr %rin_i, align 8, !dbg !1663, !tbaa !90
  %arrayidx64 = getelementptr inbounds float, ptr %73, i64 0, !dbg !1663
  %74 = load float, ptr %arrayidx64, align 4, !dbg !1663, !tbaa !80
  %mul65 = fmul float %72, %74, !dbg !1664
  %75 = call float @llvm.fmuladd.f32(float %68, float %70, float %mul65), !dbg !1665
  %conv66 = fpext float %75 to double, !dbg !1660
  %arrayidx67 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !1666
  store double %conv66, ptr %arrayidx67, align 8, !dbg !1667, !tbaa !86
  %arrayidx68 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !1668
  %76 = load double, ptr %arrayidx68, align 16, !dbg !1668, !tbaa !86
  %arrayidx69 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !1669
  %77 = load double, ptr %arrayidx69, align 16, !dbg !1669, !tbaa !86
  %arrayidx71 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !1670
  %78 = load double, ptr %arrayidx71, align 8, !dbg !1670, !tbaa !86
  %arrayidx72 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !1671
  %79 = load double, ptr %arrayidx72, align 8, !dbg !1671, !tbaa !86
  %mul73 = fmul double %78, %79, !dbg !1672
  %80 = call double @llvm.fmuladd.f64(double %76, double %77, double %mul73), !dbg !1673
  %call74 = call double @sqrt(double noundef %80) #5, !dbg !1674
  %81 = load double, ptr %S, align 8, !dbg !1675, !tbaa !86
  %add75 = fadd double %81, %call74, !dbg !1675
  store double %add75, ptr %S, align 8, !dbg !1675, !tbaa !86
  %call76 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !1676
  %conv77 = sitofp i32 %call76 to double, !dbg !1677
  %call78 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !1678
  %conv79 = sitofp i32 %call78 to double, !dbg !1679
  %call80 = call double @pow(double noundef %conv77, double noundef %conv79) #5, !dbg !1680
  store double %call80, ptr %un_d, align 8, !dbg !1681, !tbaa !86
  %82 = load double, ptr %S, align 8, !dbg !1682, !tbaa !86
  %83 = load double, ptr %un_d, align 8, !dbg !1682, !tbaa !86
  %cmp81 = fcmp ogt double %82, %83, !dbg !1682
  br i1 %cmp81, label %cond.true, label %cond.false, !dbg !1682

cond.true:                                        ; preds = %for.end
  %84 = load double, ptr %S, align 8, !dbg !1682, !tbaa !86
  br label %cond.end, !dbg !1682

cond.false:                                       ; preds = %for.end
  %85 = load double, ptr %un_d, align 8, !dbg !1682, !tbaa !86
  br label %cond.end, !dbg !1682

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %84, %cond.true ], [ %85, %cond.false ], !dbg !1682
  store double %cond, ptr %S, align 8, !dbg !1683, !tbaa !86
  %call83 = call double @power(i32 noundef 2, i32 noundef -106), !dbg !1684
  store double %call83, ptr %eps_accurate, align 8, !dbg !1685, !tbaa !86
  %call84 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 214), !dbg !1686
  %conv85 = sitofp i32 %call84 to double, !dbg !1687
  %call86 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 214), !dbg !1688
  %conv87 = sitofp i32 %call86 to double, !dbg !1689
  %call88 = call double @pow(double noundef %conv85, double noundef %conv87) #5, !dbg !1690
  store double %call88, ptr %un_accurate, align 8, !dbg !1691, !tbaa !86
  %call89 = call double @power(i32 noundef 2, i32 noundef -24), !dbg !1692
  store double %call89, ptr %eps_out, align 8, !dbg !1693, !tbaa !86
  %call90 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 211), !dbg !1694
  %conv91 = sitofp i32 %call90 to double, !dbg !1695
  %call92 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 211), !dbg !1696
  %conv93 = sitofp i32 %call92 to double, !dbg !1697
  %call94 = call double @pow(double noundef %conv91, double noundef %conv93) #5, !dbg !1698
  store double %call94, ptr %un_out, align 8, !dbg !1699, !tbaa !86
  %86 = load ptr, ptr %rout_i, align 8, !dbg !1700, !tbaa !90
  %arrayidx95 = getelementptr inbounds float, ptr %86, i64 0, !dbg !1700
  %87 = load float, ptr %arrayidx95, align 4, !dbg !1700, !tbaa !80
  %conv96 = fpext float %87 to double, !dbg !1700
  %88 = load ptr, ptr %r_true_l.addr, align 8, !dbg !1701, !tbaa !90
  %arrayidx97 = getelementptr inbounds double, ptr %88, i64 0, !dbg !1701
  %89 = load double, ptr %arrayidx97, align 8, !dbg !1701, !tbaa !86
  %sub98 = fsub double %conv96, %89, !dbg !1702
  %90 = load ptr, ptr %r_true_t.addr, align 8, !dbg !1703, !tbaa !90
  %arrayidx99 = getelementptr inbounds double, ptr %90, i64 0, !dbg !1703
  %91 = load double, ptr %arrayidx99, align 8, !dbg !1703, !tbaa !86
  %sub100 = fsub double %sub98, %91, !dbg !1704
  %arrayidx101 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !1705
  store double %sub100, ptr %arrayidx101, align 16, !dbg !1706, !tbaa !86
  %92 = load ptr, ptr %rout_i, align 8, !dbg !1707, !tbaa !90
  %arrayidx102 = getelementptr inbounds float, ptr %92, i64 1, !dbg !1707
  %93 = load float, ptr %arrayidx102, align 4, !dbg !1707, !tbaa !80
  %conv103 = fpext float %93 to double, !dbg !1707
  %94 = load ptr, ptr %r_true_l.addr, align 8, !dbg !1708, !tbaa !90
  %arrayidx104 = getelementptr inbounds double, ptr %94, i64 1, !dbg !1708
  %95 = load double, ptr %arrayidx104, align 8, !dbg !1708, !tbaa !86
  %sub105 = fsub double %conv103, %95, !dbg !1709
  %96 = load ptr, ptr %r_true_t.addr, align 8, !dbg !1710, !tbaa !90
  %arrayidx106 = getelementptr inbounds double, ptr %96, i64 1, !dbg !1710
  %97 = load double, ptr %arrayidx106, align 8, !dbg !1710, !tbaa !86
  %sub107 = fsub double %sub105, %97, !dbg !1711
  %arrayidx108 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !1712
  store double %sub107, ptr %arrayidx108, align 8, !dbg !1713, !tbaa !86
  %arrayidx109 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !1714
  %98 = load double, ptr %arrayidx109, align 16, !dbg !1714, !tbaa !86
  %arrayidx110 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !1715
  %99 = load double, ptr %arrayidx110, align 16, !dbg !1715, !tbaa !86
  %arrayidx112 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !1716
  %100 = load double, ptr %arrayidx112, align 8, !dbg !1716, !tbaa !86
  %arrayidx113 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !1717
  %101 = load double, ptr %arrayidx113, align 8, !dbg !1717, !tbaa !86
  %mul114 = fmul double %100, %101, !dbg !1718
  %102 = call double @llvm.fmuladd.f64(double %98, double %99, double %mul114), !dbg !1719
  %call115 = call double @sqrt(double noundef %102) #5, !dbg !1720
  store double %call115, ptr %tmp1, align 8, !dbg !1721, !tbaa !86
  %103 = load ptr, ptr %alpha_i, align 8, !dbg !1722, !tbaa !90
  %arrayidx116 = getelementptr inbounds float, ptr %103, i64 0, !dbg !1722
  %104 = load float, ptr %arrayidx116, align 4, !dbg !1722, !tbaa !80
  %105 = load ptr, ptr %alpha_i, align 8, !dbg !1723, !tbaa !90
  %arrayidx117 = getelementptr inbounds float, ptr %105, i64 0, !dbg !1723
  %106 = load float, ptr %arrayidx117, align 4, !dbg !1723, !tbaa !80
  %107 = load ptr, ptr %alpha_i, align 8, !dbg !1724, !tbaa !90
  %arrayidx119 = getelementptr inbounds float, ptr %107, i64 1, !dbg !1724
  %108 = load float, ptr %arrayidx119, align 4, !dbg !1724, !tbaa !80
  %109 = load ptr, ptr %alpha_i, align 8, !dbg !1725, !tbaa !90
  %arrayidx120 = getelementptr inbounds float, ptr %109, i64 1, !dbg !1725
  %110 = load float, ptr %arrayidx120, align 4, !dbg !1725, !tbaa !80
  %mul121 = fmul float %108, %110, !dbg !1726
  %111 = call float @llvm.fmuladd.f32(float %104, float %106, float %mul121), !dbg !1727
  %conv122 = fpext float %111 to double, !dbg !1722
  %call123 = call double @sqrt(double noundef %conv122) #5, !dbg !1728
  %mul124 = fmul double 2.000000e+00, %call123, !dbg !1729
  %112 = load i32, ptr %n.addr, align 4, !dbg !1730, !tbaa !73
  %conv125 = sitofp i32 %112 to double, !dbg !1730
  %113 = call double @llvm.fmuladd.f64(double %mul124, double %conv125, double 3.000000e+00), !dbg !1731
  store double %113, ptr %U, align 8, !dbg !1732, !tbaa !86
  %114 = load double, ptr %U, align 8, !dbg !1733, !tbaa !86
  %115 = load double, ptr %S1, align 8, !dbg !1733, !tbaa !86
  %116 = load i32, ptr %n.addr, align 4, !dbg !1733, !tbaa !73
  %mul127 = mul nsw i32 2, %116, !dbg !1733
  %conv128 = sitofp i32 %mul127 to double, !dbg !1733
  %add129 = fadd double %115, %conv128, !dbg !1733
  %add130 = fadd double %add129, 1.000000e+00, !dbg !1733
  %cmp131 = fcmp ogt double %114, %add130, !dbg !1733
  br i1 %cmp131, label %cond.true133, label %cond.false134, !dbg !1733

cond.true133:                                     ; preds = %cond.end
  %117 = load double, ptr %U, align 8, !dbg !1733, !tbaa !86
  br label %cond.end139, !dbg !1733

cond.false134:                                    ; preds = %cond.end
  %118 = load double, ptr %S1, align 8, !dbg !1733, !tbaa !86
  %119 = load i32, ptr %n.addr, align 4, !dbg !1733, !tbaa !73
  %mul135 = mul nsw i32 2, %119, !dbg !1733
  %conv136 = sitofp i32 %mul135 to double, !dbg !1733
  %add137 = fadd double %118, %conv136, !dbg !1733
  %add138 = fadd double %add137, 1.000000e+00, !dbg !1733
  br label %cond.end139, !dbg !1733

cond.end139:                                      ; preds = %cond.false134, %cond.true133
  %cond140 = phi double [ %117, %cond.true133 ], [ %add138, %cond.false134 ], !dbg !1733
  store double %cond140, ptr %U, align 8, !dbg !1734, !tbaa !86
  %120 = load double, ptr %U, align 8, !dbg !1735, !tbaa !86
  %121 = load double, ptr %S2, align 8, !dbg !1735, !tbaa !86
  %122 = load i32, ptr %n.addr, align 4, !dbg !1735, !tbaa !73
  %mul141 = mul nsw i32 2, %122, !dbg !1735
  %conv142 = sitofp i32 %mul141 to double, !dbg !1735
  %add143 = fadd double %121, %conv142, !dbg !1735
  %add144 = fadd double %add143, 1.000000e+00, !dbg !1735
  %cmp145 = fcmp ogt double %120, %add144, !dbg !1735
  br i1 %cmp145, label %cond.true147, label %cond.false148, !dbg !1735

cond.true147:                                     ; preds = %cond.end139
  %123 = load double, ptr %U, align 8, !dbg !1735, !tbaa !86
  br label %cond.end153, !dbg !1735

cond.false148:                                    ; preds = %cond.end139
  %124 = load double, ptr %S2, align 8, !dbg !1735, !tbaa !86
  %125 = load i32, ptr %n.addr, align 4, !dbg !1735, !tbaa !73
  %mul149 = mul nsw i32 2, %125, !dbg !1735
  %conv150 = sitofp i32 %mul149 to double, !dbg !1735
  %add151 = fadd double %124, %conv150, !dbg !1735
  %add152 = fadd double %add151, 1.000000e+00, !dbg !1735
  br label %cond.end153, !dbg !1735

cond.end153:                                      ; preds = %cond.false148, %cond.true147
  %cond154 = phi double [ %123, %cond.true147 ], [ %add152, %cond.false148 ], !dbg !1735
  %126 = load double, ptr %un_int.addr, align 8, !dbg !1736, !tbaa !86
  %127 = load double, ptr %un_accurate, align 8, !dbg !1737, !tbaa !86
  %add155 = fadd double %126, %127, !dbg !1738
  %128 = load double, ptr %un_out, align 8, !dbg !1739, !tbaa !86
  %129 = call double @llvm.fmuladd.f64(double %cond154, double %add155, double %128), !dbg !1740
  store double %129, ptr %U, align 8, !dbg !1741, !tbaa !86
  %call157 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !1742
  %mul158 = fmul double 2.000000e+00, %call157, !dbg !1743
  %130 = load double, ptr %U, align 8, !dbg !1744, !tbaa !86
  %mul159 = fmul double %130, %mul158, !dbg !1744
  store double %mul159, ptr %U, align 8, !dbg !1744, !tbaa !86
  %131 = load double, ptr %tmp1, align 8, !dbg !1745, !tbaa !86
  %call160 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !1746
  %mul161 = fmul double 2.000000e+00, %call160, !dbg !1747
  %132 = load i32, ptr %n.addr, align 4, !dbg !1748, !tbaa !73
  %add162 = add nsw i32 %132, 2, !dbg !1749
  %conv163 = sitofp i32 %add162 to double, !dbg !1750
  %mul164 = fmul double %mul161, %conv163, !dbg !1751
  %133 = load double, ptr %eps_int.addr, align 8, !dbg !1752, !tbaa !86
  %134 = load double, ptr %eps_accurate, align 8, !dbg !1753, !tbaa !86
  %add165 = fadd double %133, %134, !dbg !1754
  %mul166 = fmul double %mul164, %add165, !dbg !1755
  %135 = load double, ptr %S, align 8, !dbg !1756, !tbaa !86
  %call168 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !1757
  %136 = load double, ptr %eps_out, align 8, !dbg !1758, !tbaa !86
  %mul169 = fmul double %call168, %136, !dbg !1759
  %137 = load ptr, ptr %r_true_l.addr, align 8, !dbg !1760, !tbaa !90
  %arrayidx170 = getelementptr inbounds double, ptr %137, i64 0, !dbg !1760
  %138 = load double, ptr %arrayidx170, align 8, !dbg !1760, !tbaa !86
  %139 = load ptr, ptr %r_true_l.addr, align 8, !dbg !1761, !tbaa !90
  %arrayidx171 = getelementptr inbounds double, ptr %139, i64 0, !dbg !1761
  %140 = load double, ptr %arrayidx171, align 8, !dbg !1761, !tbaa !86
  %141 = load ptr, ptr %r_true_l.addr, align 8, !dbg !1762, !tbaa !90
  %arrayidx173 = getelementptr inbounds double, ptr %141, i64 1, !dbg !1762
  %142 = load double, ptr %arrayidx173, align 8, !dbg !1762, !tbaa !86
  %143 = load ptr, ptr %r_true_l.addr, align 8, !dbg !1763, !tbaa !90
  %arrayidx174 = getelementptr inbounds double, ptr %143, i64 1, !dbg !1763
  %144 = load double, ptr %arrayidx174, align 8, !dbg !1763, !tbaa !86
  %mul175 = fmul double %142, %144, !dbg !1764
  %145 = call double @llvm.fmuladd.f64(double %138, double %140, double %mul175), !dbg !1765
  %call176 = call double @sqrt(double noundef %145) #5, !dbg !1766
  %mul177 = fmul double %mul169, %call176, !dbg !1767
  %146 = call double @llvm.fmuladd.f64(double %mul166, double %135, double %mul177), !dbg !1768
  %147 = load double, ptr %U, align 8, !dbg !1769, !tbaa !86
  %add178 = fadd double %146, %147, !dbg !1770
  %div = fdiv double %131, %add178, !dbg !1771
  %148 = load ptr, ptr %test_ratio.addr, align 8, !dbg !1772, !tbaa !90
  store double %div, ptr %148, align 8, !dbg !1773, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_ii) #5, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 4, ptr %x_ii) #5, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 8, ptr %rout_i) #5, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 8, ptr %rin_i) #5, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta_i) #5, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_i) #5, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_i) #5, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_i) #5, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_out) #5, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_accurate) #5, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_d) #5, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #5, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 16, ptr %prod) #5, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 8, ptr %U) #5, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 8, ptr %S2) #5, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 8, ptr %S1) #5, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 8, ptr %S) #5, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp1) #5, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_out) #5, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_accurate) #5, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 4, ptr %iy) #5, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 4, ptr %ix) #5, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !1774
  ret void, !dbg !1774
}

; Function Attrs: nounwind uwtable
define dso_local void @test_BLAS_cdot_c_s(i32 noundef %n, i32 noundef %conj, ptr noundef %alpha, ptr noundef %beta, ptr noundef %rin, ptr noundef %rout, ptr noundef %r_true_l, ptr noundef %r_true_t, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, double noundef %eps_int, double noundef %un_int, ptr noundef %test_ratio) #0 !dbg !1775 {
entry:
  %n.addr = alloca i32, align 4
  %conj.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %rin.addr = alloca ptr, align 8
  %rout.addr = alloca ptr, align 8
  %r_true_l.addr = alloca ptr, align 8
  %r_true_t.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %eps_int.addr = alloca double, align 8
  %un_int.addr = alloca double, align 8
  %test_ratio.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %eps_accurate = alloca double, align 8
  %eps_out = alloca double, align 8
  %tmp1 = alloca double, align 8
  %S = alloca double, align 8
  %S1 = alloca double, align 8
  %S2 = alloca double, align 8
  %U = alloca double, align 8
  %prod = alloca [2 x double], align 16
  %tmp = alloca [2 x double], align 16
  %un_d = alloca double, align 8
  %un_accurate = alloca double, align 8
  %un_out = alloca double, align 8
  %x_i = alloca ptr, align 8
  %y_i = alloca ptr, align 8
  %alpha_i = alloca ptr, align 8
  %beta_i = alloca ptr, align 8
  %rin_i = alloca ptr, align 8
  %rout_i = alloca ptr, align 8
  %x_ii = alloca [2 x float], align 4
  %y_ii = alloca float, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1779, metadata !DIExpression()), !dbg !1817
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !78
  tail call void @llvm.dbg.declare(metadata ptr %conj.addr, metadata !1780, metadata !DIExpression()), !dbg !1818
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !1781, metadata !DIExpression()), !dbg !1819
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %beta.addr, metadata !1782, metadata !DIExpression()), !dbg !1820
  store ptr %rin, ptr %rin.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %rin.addr, metadata !1783, metadata !DIExpression()), !dbg !1821
  store ptr %rout, ptr %rout.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %rout.addr, metadata !1784, metadata !DIExpression()), !dbg !1822
  store ptr %r_true_l, ptr %r_true_l.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %r_true_l.addr, metadata !1785, metadata !DIExpression()), !dbg !1823
  store ptr %r_true_t, ptr %r_true_t.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %r_true_t.addr, metadata !1786, metadata !DIExpression()), !dbg !1824
  store ptr %x, ptr %x.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !1787, metadata !DIExpression()), !dbg !1825
  store i32 %incx, ptr %incx.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incx.addr, metadata !1788, metadata !DIExpression()), !dbg !1826
  store ptr %y, ptr %y.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !1789, metadata !DIExpression()), !dbg !1827
  store i32 %incy, ptr %incy.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incy.addr, metadata !1790, metadata !DIExpression()), !dbg !1828
  store double %eps_int, ptr %eps_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %eps_int.addr, metadata !1791, metadata !DIExpression()), !dbg !1829
  store double %un_int, ptr %un_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %un_int.addr, metadata !1792, metadata !DIExpression()), !dbg !1830
  store ptr %test_ratio, ptr %test_ratio.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %test_ratio.addr, metadata !1793, metadata !DIExpression()), !dbg !1831
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !1832
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1794, metadata !DIExpression()), !dbg !1833
  call void @llvm.lifetime.start.p0(i64 4, ptr %ix) #5, !dbg !1832
  tail call void @llvm.dbg.declare(metadata ptr %ix, metadata !1795, metadata !DIExpression()), !dbg !1834
  call void @llvm.lifetime.start.p0(i64 4, ptr %iy) #5, !dbg !1832
  tail call void @llvm.dbg.declare(metadata ptr %iy, metadata !1796, metadata !DIExpression()), !dbg !1835
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_accurate) #5, !dbg !1836
  tail call void @llvm.dbg.declare(metadata ptr %eps_accurate, metadata !1797, metadata !DIExpression()), !dbg !1837
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_out) #5, !dbg !1836
  tail call void @llvm.dbg.declare(metadata ptr %eps_out, metadata !1798, metadata !DIExpression()), !dbg !1838
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp1) #5, !dbg !1836
  tail call void @llvm.dbg.declare(metadata ptr %tmp1, metadata !1799, metadata !DIExpression()), !dbg !1839
  call void @llvm.lifetime.start.p0(i64 8, ptr %S) #5, !dbg !1836
  tail call void @llvm.dbg.declare(metadata ptr %S, metadata !1800, metadata !DIExpression()), !dbg !1840
  call void @llvm.lifetime.start.p0(i64 8, ptr %S1) #5, !dbg !1836
  tail call void @llvm.dbg.declare(metadata ptr %S1, metadata !1801, metadata !DIExpression()), !dbg !1841
  call void @llvm.lifetime.start.p0(i64 8, ptr %S2) #5, !dbg !1836
  tail call void @llvm.dbg.declare(metadata ptr %S2, metadata !1802, metadata !DIExpression()), !dbg !1842
  call void @llvm.lifetime.start.p0(i64 8, ptr %U) #5, !dbg !1836
  tail call void @llvm.dbg.declare(metadata ptr %U, metadata !1803, metadata !DIExpression()), !dbg !1843
  call void @llvm.lifetime.start.p0(i64 16, ptr %prod) #5, !dbg !1836
  tail call void @llvm.dbg.declare(metadata ptr %prod, metadata !1804, metadata !DIExpression()), !dbg !1844
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #5, !dbg !1836
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !1805, metadata !DIExpression()), !dbg !1845
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_d) #5, !dbg !1846
  tail call void @llvm.dbg.declare(metadata ptr %un_d, metadata !1806, metadata !DIExpression()), !dbg !1847
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_accurate) #5, !dbg !1846
  tail call void @llvm.dbg.declare(metadata ptr %un_accurate, metadata !1807, metadata !DIExpression()), !dbg !1848
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_out) #5, !dbg !1846
  tail call void @llvm.dbg.declare(metadata ptr %un_out, metadata !1808, metadata !DIExpression()), !dbg !1849
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_i) #5, !dbg !1850
  tail call void @llvm.dbg.declare(metadata ptr %x_i, metadata !1809, metadata !DIExpression()), !dbg !1851
  %0 = load ptr, ptr %x.addr, align 8, !dbg !1852, !tbaa !90
  store ptr %0, ptr %x_i, align 8, !dbg !1851, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_i) #5, !dbg !1853
  tail call void @llvm.dbg.declare(metadata ptr %y_i, metadata !1810, metadata !DIExpression()), !dbg !1854
  %1 = load ptr, ptr %y.addr, align 8, !dbg !1855, !tbaa !90
  store ptr %1, ptr %y_i, align 8, !dbg !1854, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_i) #5, !dbg !1856
  tail call void @llvm.dbg.declare(metadata ptr %alpha_i, metadata !1811, metadata !DIExpression()), !dbg !1857
  %2 = load ptr, ptr %alpha.addr, align 8, !dbg !1858, !tbaa !90
  store ptr %2, ptr %alpha_i, align 8, !dbg !1857, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta_i) #5, !dbg !1859
  tail call void @llvm.dbg.declare(metadata ptr %beta_i, metadata !1812, metadata !DIExpression()), !dbg !1860
  %3 = load ptr, ptr %beta.addr, align 8, !dbg !1861, !tbaa !90
  store ptr %3, ptr %beta_i, align 8, !dbg !1860, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %rin_i) #5, !dbg !1862
  tail call void @llvm.dbg.declare(metadata ptr %rin_i, metadata !1813, metadata !DIExpression()), !dbg !1863
  %4 = load ptr, ptr %rin.addr, align 8, !dbg !1864, !tbaa !90
  store ptr %4, ptr %rin_i, align 8, !dbg !1863, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %rout_i) #5, !dbg !1865
  tail call void @llvm.dbg.declare(metadata ptr %rout_i, metadata !1814, metadata !DIExpression()), !dbg !1866
  %5 = load ptr, ptr %rout.addr, align 8, !dbg !1867, !tbaa !90
  store ptr %5, ptr %rout_i, align 8, !dbg !1866, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_ii) #5, !dbg !1868
  tail call void @llvm.dbg.declare(metadata ptr %x_ii, metadata !1815, metadata !DIExpression()), !dbg !1869
  call void @llvm.lifetime.start.p0(i64 4, ptr %y_ii) #5, !dbg !1870
  tail call void @llvm.dbg.declare(metadata ptr %y_ii, metadata !1816, metadata !DIExpression()), !dbg !1871
  %6 = load i32, ptr %incx.addr, align 4, !dbg !1872, !tbaa !73
  %mul = mul nsw i32 %6, 2, !dbg !1872
  store i32 %mul, ptr %incx.addr, align 4, !dbg !1872, !tbaa !73
  store i32 0, ptr %ix, align 4, !dbg !1873, !tbaa !73
  store i32 0, ptr %iy, align 4, !dbg !1874, !tbaa !73
  %7 = load i32, ptr %incx.addr, align 4, !dbg !1875, !tbaa !73
  %cmp = icmp slt i32 %7, 0, !dbg !1877
  br i1 %cmp, label %if.then, label %if.end, !dbg !1878

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %n.addr, align 4, !dbg !1879, !tbaa !73
  %sub = sub nsw i32 %8, 1, !dbg !1880
  %sub1 = sub nsw i32 0, %sub, !dbg !1881
  %9 = load i32, ptr %incx.addr, align 4, !dbg !1882, !tbaa !73
  %mul2 = mul nsw i32 %sub1, %9, !dbg !1883
  store i32 %mul2, ptr %ix, align 4, !dbg !1884, !tbaa !73
  br label %if.end, !dbg !1885

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, ptr %incy.addr, align 4, !dbg !1886, !tbaa !73
  %cmp3 = icmp slt i32 %10, 0, !dbg !1888
  br i1 %cmp3, label %if.then4, label %if.end8, !dbg !1889

if.then4:                                         ; preds = %if.end
  %11 = load i32, ptr %n.addr, align 4, !dbg !1890, !tbaa !73
  %sub5 = sub nsw i32 %11, 1, !dbg !1891
  %sub6 = sub nsw i32 0, %sub5, !dbg !1892
  %12 = load i32, ptr %incy.addr, align 4, !dbg !1893, !tbaa !73
  %mul7 = mul nsw i32 %sub6, %12, !dbg !1894
  store i32 %mul7, ptr %iy, align 4, !dbg !1895, !tbaa !73
  br label %if.end8, !dbg !1896

if.end8:                                          ; preds = %if.then4, %if.end
  store double 0.000000e+00, ptr %S2, align 8, !dbg !1897, !tbaa !86
  store double 0.000000e+00, ptr %S1, align 8, !dbg !1898, !tbaa !86
  store double 0.000000e+00, ptr %S, align 8, !dbg !1899, !tbaa !86
  store i32 0, ptr %i, align 4, !dbg !1900, !tbaa !73
  br label %for.cond, !dbg !1902

for.cond:                                         ; preds = %for.inc, %if.end8
  %13 = load i32, ptr %i, align 4, !dbg !1903, !tbaa !73
  %14 = load i32, ptr %n.addr, align 4, !dbg !1905, !tbaa !73
  %cmp9 = icmp slt i32 %13, %14, !dbg !1906
  br i1 %cmp9, label %for.body, label %for.end, !dbg !1907

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %x_i, align 8, !dbg !1908, !tbaa !90
  %16 = load i32, ptr %ix, align 4, !dbg !1910, !tbaa !73
  %idxprom = sext i32 %16 to i64, !dbg !1908
  %arrayidx = getelementptr inbounds float, ptr %15, i64 %idxprom, !dbg !1908
  %17 = load float, ptr %arrayidx, align 4, !dbg !1908, !tbaa !80
  %arrayidx10 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 0, !dbg !1911
  store float %17, ptr %arrayidx10, align 4, !dbg !1912, !tbaa !80
  %18 = load ptr, ptr %x_i, align 8, !dbg !1913, !tbaa !90
  %19 = load i32, ptr %ix, align 4, !dbg !1914, !tbaa !73
  %add = add nsw i32 %19, 1, !dbg !1915
  %idxprom11 = sext i32 %add to i64, !dbg !1913
  %arrayidx12 = getelementptr inbounds float, ptr %18, i64 %idxprom11, !dbg !1913
  %20 = load float, ptr %arrayidx12, align 4, !dbg !1913, !tbaa !80
  %arrayidx13 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !1916
  store float %20, ptr %arrayidx13, align 4, !dbg !1917, !tbaa !80
  %21 = load ptr, ptr %y_i, align 8, !dbg !1918, !tbaa !90
  %22 = load i32, ptr %iy, align 4, !dbg !1919, !tbaa !73
  %idxprom14 = sext i32 %22 to i64, !dbg !1918
  %arrayidx15 = getelementptr inbounds float, ptr %21, i64 %idxprom14, !dbg !1918
  %23 = load float, ptr %arrayidx15, align 4, !dbg !1918, !tbaa !80
  store float %23, ptr %y_ii, align 4, !dbg !1920, !tbaa !80
  %24 = load i32, ptr %conj.addr, align 4, !dbg !1921, !tbaa !78
  %cmp16 = icmp eq i32 %24, 191, !dbg !1923
  br i1 %cmp16, label %if.then17, label %if.end20, !dbg !1924

if.then17:                                        ; preds = %for.body
  %arrayidx18 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !1925
  %25 = load float, ptr %arrayidx18, align 4, !dbg !1925, !tbaa !80
  %fneg = fneg float %25, !dbg !1927
  %arrayidx19 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !1928
  store float %fneg, ptr %arrayidx19, align 4, !dbg !1929, !tbaa !80
  br label %if.end20, !dbg !1930

if.end20:                                         ; preds = %if.then17, %for.body
  %arrayidx21 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 0, !dbg !1931
  %26 = load float, ptr %arrayidx21, align 4, !dbg !1931, !tbaa !80
  %arrayidx22 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 0, !dbg !1932
  %27 = load float, ptr %arrayidx22, align 4, !dbg !1932, !tbaa !80
  %arrayidx24 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !1933
  %28 = load float, ptr %arrayidx24, align 4, !dbg !1933, !tbaa !80
  %arrayidx25 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !1934
  %29 = load float, ptr %arrayidx25, align 4, !dbg !1934, !tbaa !80
  %mul26 = fmul float %28, %29, !dbg !1935
  %30 = call float @llvm.fmuladd.f32(float %26, float %27, float %mul26), !dbg !1936
  %conv = fpext float %30 to double, !dbg !1931
  %call = call double @sqrt(double noundef %conv) #5, !dbg !1937
  %31 = load double, ptr %S1, align 8, !dbg !1938, !tbaa !86
  %add27 = fadd double %31, %call, !dbg !1938
  store double %add27, ptr %S1, align 8, !dbg !1938, !tbaa !86
  %32 = load float, ptr %y_ii, align 4, !dbg !1939, !tbaa !80
  %conv28 = fpext float %32 to double, !dbg !1939
  %33 = call double @llvm.fabs.f64(double %conv28), !dbg !1940
  %34 = load double, ptr %S2, align 8, !dbg !1941, !tbaa !86
  %add29 = fadd double %34, %33, !dbg !1941
  store double %add29, ptr %S2, align 8, !dbg !1941, !tbaa !86
  %arrayidx30 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 0, !dbg !1942
  %35 = load float, ptr %arrayidx30, align 4, !dbg !1942, !tbaa !80
  %36 = load float, ptr %y_ii, align 4, !dbg !1944, !tbaa !80
  %mul31 = fmul float %35, %36, !dbg !1945
  %conv32 = fpext float %mul31 to double, !dbg !1942
  %arrayidx33 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !1946
  store double %conv32, ptr %arrayidx33, align 16, !dbg !1947, !tbaa !86
  %arrayidx34 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !1948
  %37 = load float, ptr %arrayidx34, align 4, !dbg !1948, !tbaa !80
  %38 = load float, ptr %y_ii, align 4, !dbg !1949, !tbaa !80
  %mul35 = fmul float %37, %38, !dbg !1950
  %conv36 = fpext float %mul35 to double, !dbg !1948
  %arrayidx37 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !1951
  store double %conv36, ptr %arrayidx37, align 8, !dbg !1952, !tbaa !86
  %arrayidx38 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !1953
  %39 = load double, ptr %arrayidx38, align 16, !dbg !1953, !tbaa !86
  %arrayidx39 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !1954
  %40 = load double, ptr %arrayidx39, align 16, !dbg !1954, !tbaa !86
  %arrayidx41 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !1955
  %41 = load double, ptr %arrayidx41, align 8, !dbg !1955, !tbaa !86
  %arrayidx42 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !1956
  %42 = load double, ptr %arrayidx42, align 8, !dbg !1956, !tbaa !86
  %mul43 = fmul double %41, %42, !dbg !1957
  %43 = call double @llvm.fmuladd.f64(double %39, double %40, double %mul43), !dbg !1958
  %call44 = call double @sqrt(double noundef %43) #5, !dbg !1959
  %44 = load double, ptr %S, align 8, !dbg !1960, !tbaa !86
  %add45 = fadd double %44, %call44, !dbg !1960
  store double %add45, ptr %S, align 8, !dbg !1960, !tbaa !86
  %45 = load i32, ptr %incx.addr, align 4, !dbg !1961, !tbaa !73
  %46 = load i32, ptr %ix, align 4, !dbg !1962, !tbaa !73
  %add46 = add nsw i32 %46, %45, !dbg !1962
  store i32 %add46, ptr %ix, align 4, !dbg !1962, !tbaa !73
  %47 = load i32, ptr %incy.addr, align 4, !dbg !1963, !tbaa !73
  %48 = load i32, ptr %iy, align 4, !dbg !1964, !tbaa !73
  %add47 = add nsw i32 %48, %47, !dbg !1964
  store i32 %add47, ptr %iy, align 4, !dbg !1964, !tbaa !73
  br label %for.inc, !dbg !1965

for.inc:                                          ; preds = %if.end20
  %49 = load i32, ptr %i, align 4, !dbg !1966, !tbaa !73
  %inc = add nsw i32 %49, 1, !dbg !1966
  store i32 %inc, ptr %i, align 4, !dbg !1966, !tbaa !73
  br label %for.cond, !dbg !1967, !llvm.loop !1968

for.end:                                          ; preds = %for.cond
  %50 = load ptr, ptr %alpha_i, align 8, !dbg !1970, !tbaa !90
  %arrayidx48 = getelementptr inbounds float, ptr %50, i64 0, !dbg !1970
  %51 = load float, ptr %arrayidx48, align 4, !dbg !1970, !tbaa !80
  %52 = load ptr, ptr %alpha_i, align 8, !dbg !1971, !tbaa !90
  %arrayidx49 = getelementptr inbounds float, ptr %52, i64 0, !dbg !1971
  %53 = load float, ptr %arrayidx49, align 4, !dbg !1971, !tbaa !80
  %54 = load ptr, ptr %alpha_i, align 8, !dbg !1972, !tbaa !90
  %arrayidx51 = getelementptr inbounds float, ptr %54, i64 1, !dbg !1972
  %55 = load float, ptr %arrayidx51, align 4, !dbg !1972, !tbaa !80
  %56 = load ptr, ptr %alpha_i, align 8, !dbg !1973, !tbaa !90
  %arrayidx52 = getelementptr inbounds float, ptr %56, i64 1, !dbg !1973
  %57 = load float, ptr %arrayidx52, align 4, !dbg !1973, !tbaa !80
  %mul53 = fmul float %55, %57, !dbg !1974
  %58 = call float @llvm.fmuladd.f32(float %51, float %53, float %mul53), !dbg !1975
  %conv54 = fpext float %58 to double, !dbg !1970
  %call55 = call double @sqrt(double noundef %conv54) #5, !dbg !1976
  %59 = load double, ptr %S, align 8, !dbg !1977, !tbaa !86
  %mul56 = fmul double %59, %call55, !dbg !1977
  store double %mul56, ptr %S, align 8, !dbg !1977, !tbaa !86
  %60 = load ptr, ptr %beta_i, align 8, !dbg !1978, !tbaa !90
  %arrayidx57 = getelementptr inbounds float, ptr %60, i64 0, !dbg !1978
  %61 = load float, ptr %arrayidx57, align 4, !dbg !1978, !tbaa !80
  %62 = load ptr, ptr %rin_i, align 8, !dbg !1980, !tbaa !90
  %arrayidx58 = getelementptr inbounds float, ptr %62, i64 0, !dbg !1980
  %63 = load float, ptr %arrayidx58, align 4, !dbg !1980, !tbaa !80
  %64 = load ptr, ptr %beta_i, align 8, !dbg !1981, !tbaa !90
  %arrayidx60 = getelementptr inbounds float, ptr %64, i64 1, !dbg !1981
  %65 = load float, ptr %arrayidx60, align 4, !dbg !1981, !tbaa !80
  %66 = load ptr, ptr %rin_i, align 8, !dbg !1982, !tbaa !90
  %arrayidx61 = getelementptr inbounds float, ptr %66, i64 1, !dbg !1982
  %67 = load float, ptr %arrayidx61, align 4, !dbg !1982, !tbaa !80
  %mul62 = fmul float %65, %67, !dbg !1983
  %neg = fneg float %mul62, !dbg !1984
  %68 = call float @llvm.fmuladd.f32(float %61, float %63, float %neg), !dbg !1984
  %conv63 = fpext float %68 to double, !dbg !1978
  %arrayidx64 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !1985
  store double %conv63, ptr %arrayidx64, align 16, !dbg !1986, !tbaa !86
  %69 = load ptr, ptr %beta_i, align 8, !dbg !1987, !tbaa !90
  %arrayidx65 = getelementptr inbounds float, ptr %69, i64 0, !dbg !1987
  %70 = load float, ptr %arrayidx65, align 4, !dbg !1987, !tbaa !80
  %71 = load ptr, ptr %rin_i, align 8, !dbg !1988, !tbaa !90
  %arrayidx66 = getelementptr inbounds float, ptr %71, i64 1, !dbg !1988
  %72 = load float, ptr %arrayidx66, align 4, !dbg !1988, !tbaa !80
  %73 = load ptr, ptr %beta_i, align 8, !dbg !1989, !tbaa !90
  %arrayidx68 = getelementptr inbounds float, ptr %73, i64 1, !dbg !1989
  %74 = load float, ptr %arrayidx68, align 4, !dbg !1989, !tbaa !80
  %75 = load ptr, ptr %rin_i, align 8, !dbg !1990, !tbaa !90
  %arrayidx69 = getelementptr inbounds float, ptr %75, i64 0, !dbg !1990
  %76 = load float, ptr %arrayidx69, align 4, !dbg !1990, !tbaa !80
  %mul70 = fmul float %74, %76, !dbg !1991
  %77 = call float @llvm.fmuladd.f32(float %70, float %72, float %mul70), !dbg !1992
  %conv71 = fpext float %77 to double, !dbg !1987
  %arrayidx72 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !1993
  store double %conv71, ptr %arrayidx72, align 8, !dbg !1994, !tbaa !86
  %arrayidx73 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !1995
  %78 = load double, ptr %arrayidx73, align 16, !dbg !1995, !tbaa !86
  %arrayidx74 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !1996
  %79 = load double, ptr %arrayidx74, align 16, !dbg !1996, !tbaa !86
  %arrayidx76 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !1997
  %80 = load double, ptr %arrayidx76, align 8, !dbg !1997, !tbaa !86
  %arrayidx77 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !1998
  %81 = load double, ptr %arrayidx77, align 8, !dbg !1998, !tbaa !86
  %mul78 = fmul double %80, %81, !dbg !1999
  %82 = call double @llvm.fmuladd.f64(double %78, double %79, double %mul78), !dbg !2000
  %call79 = call double @sqrt(double noundef %82) #5, !dbg !2001
  %83 = load double, ptr %S, align 8, !dbg !2002, !tbaa !86
  %add80 = fadd double %83, %call79, !dbg !2002
  store double %add80, ptr %S, align 8, !dbg !2002, !tbaa !86
  %call81 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !2003
  %conv82 = sitofp i32 %call81 to double, !dbg !2004
  %call83 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !2005
  %conv84 = sitofp i32 %call83 to double, !dbg !2006
  %call85 = call double @pow(double noundef %conv82, double noundef %conv84) #5, !dbg !2007
  store double %call85, ptr %un_d, align 8, !dbg !2008, !tbaa !86
  %84 = load double, ptr %S, align 8, !dbg !2009, !tbaa !86
  %85 = load double, ptr %un_d, align 8, !dbg !2009, !tbaa !86
  %cmp86 = fcmp ogt double %84, %85, !dbg !2009
  br i1 %cmp86, label %cond.true, label %cond.false, !dbg !2009

cond.true:                                        ; preds = %for.end
  %86 = load double, ptr %S, align 8, !dbg !2009, !tbaa !86
  br label %cond.end, !dbg !2009

cond.false:                                       ; preds = %for.end
  %87 = load double, ptr %un_d, align 8, !dbg !2009, !tbaa !86
  br label %cond.end, !dbg !2009

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %86, %cond.true ], [ %87, %cond.false ], !dbg !2009
  store double %cond, ptr %S, align 8, !dbg !2010, !tbaa !86
  %call88 = call double @power(i32 noundef 2, i32 noundef -106), !dbg !2011
  store double %call88, ptr %eps_accurate, align 8, !dbg !2012, !tbaa !86
  %call89 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 214), !dbg !2013
  %conv90 = sitofp i32 %call89 to double, !dbg !2014
  %call91 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 214), !dbg !2015
  %conv92 = sitofp i32 %call91 to double, !dbg !2016
  %call93 = call double @pow(double noundef %conv90, double noundef %conv92) #5, !dbg !2017
  store double %call93, ptr %un_accurate, align 8, !dbg !2018, !tbaa !86
  %call94 = call double @power(i32 noundef 2, i32 noundef -24), !dbg !2019
  store double %call94, ptr %eps_out, align 8, !dbg !2020, !tbaa !86
  %call95 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 211), !dbg !2021
  %conv96 = sitofp i32 %call95 to double, !dbg !2022
  %call97 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 211), !dbg !2023
  %conv98 = sitofp i32 %call97 to double, !dbg !2024
  %call99 = call double @pow(double noundef %conv96, double noundef %conv98) #5, !dbg !2025
  store double %call99, ptr %un_out, align 8, !dbg !2026, !tbaa !86
  %88 = load ptr, ptr %rout_i, align 8, !dbg !2027, !tbaa !90
  %arrayidx100 = getelementptr inbounds float, ptr %88, i64 0, !dbg !2027
  %89 = load float, ptr %arrayidx100, align 4, !dbg !2027, !tbaa !80
  %conv101 = fpext float %89 to double, !dbg !2027
  %90 = load ptr, ptr %r_true_l.addr, align 8, !dbg !2028, !tbaa !90
  %arrayidx102 = getelementptr inbounds double, ptr %90, i64 0, !dbg !2028
  %91 = load double, ptr %arrayidx102, align 8, !dbg !2028, !tbaa !86
  %sub103 = fsub double %conv101, %91, !dbg !2029
  %92 = load ptr, ptr %r_true_t.addr, align 8, !dbg !2030, !tbaa !90
  %arrayidx104 = getelementptr inbounds double, ptr %92, i64 0, !dbg !2030
  %93 = load double, ptr %arrayidx104, align 8, !dbg !2030, !tbaa !86
  %sub105 = fsub double %sub103, %93, !dbg !2031
  %arrayidx106 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !2032
  store double %sub105, ptr %arrayidx106, align 16, !dbg !2033, !tbaa !86
  %94 = load ptr, ptr %rout_i, align 8, !dbg !2034, !tbaa !90
  %arrayidx107 = getelementptr inbounds float, ptr %94, i64 1, !dbg !2034
  %95 = load float, ptr %arrayidx107, align 4, !dbg !2034, !tbaa !80
  %conv108 = fpext float %95 to double, !dbg !2034
  %96 = load ptr, ptr %r_true_l.addr, align 8, !dbg !2035, !tbaa !90
  %arrayidx109 = getelementptr inbounds double, ptr %96, i64 1, !dbg !2035
  %97 = load double, ptr %arrayidx109, align 8, !dbg !2035, !tbaa !86
  %sub110 = fsub double %conv108, %97, !dbg !2036
  %98 = load ptr, ptr %r_true_t.addr, align 8, !dbg !2037, !tbaa !90
  %arrayidx111 = getelementptr inbounds double, ptr %98, i64 1, !dbg !2037
  %99 = load double, ptr %arrayidx111, align 8, !dbg !2037, !tbaa !86
  %sub112 = fsub double %sub110, %99, !dbg !2038
  %arrayidx113 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !2039
  store double %sub112, ptr %arrayidx113, align 8, !dbg !2040, !tbaa !86
  %arrayidx114 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !2041
  %100 = load double, ptr %arrayidx114, align 16, !dbg !2041, !tbaa !86
  %arrayidx115 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !2042
  %101 = load double, ptr %arrayidx115, align 16, !dbg !2042, !tbaa !86
  %arrayidx117 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !2043
  %102 = load double, ptr %arrayidx117, align 8, !dbg !2043, !tbaa !86
  %arrayidx118 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !2044
  %103 = load double, ptr %arrayidx118, align 8, !dbg !2044, !tbaa !86
  %mul119 = fmul double %102, %103, !dbg !2045
  %104 = call double @llvm.fmuladd.f64(double %100, double %101, double %mul119), !dbg !2046
  %call120 = call double @sqrt(double noundef %104) #5, !dbg !2047
  store double %call120, ptr %tmp1, align 8, !dbg !2048, !tbaa !86
  %105 = load ptr, ptr %alpha_i, align 8, !dbg !2049, !tbaa !90
  %arrayidx121 = getelementptr inbounds float, ptr %105, i64 0, !dbg !2049
  %106 = load float, ptr %arrayidx121, align 4, !dbg !2049, !tbaa !80
  %107 = load ptr, ptr %alpha_i, align 8, !dbg !2050, !tbaa !90
  %arrayidx122 = getelementptr inbounds float, ptr %107, i64 0, !dbg !2050
  %108 = load float, ptr %arrayidx122, align 4, !dbg !2050, !tbaa !80
  %109 = load ptr, ptr %alpha_i, align 8, !dbg !2051, !tbaa !90
  %arrayidx124 = getelementptr inbounds float, ptr %109, i64 1, !dbg !2051
  %110 = load float, ptr %arrayidx124, align 4, !dbg !2051, !tbaa !80
  %111 = load ptr, ptr %alpha_i, align 8, !dbg !2052, !tbaa !90
  %arrayidx125 = getelementptr inbounds float, ptr %111, i64 1, !dbg !2052
  %112 = load float, ptr %arrayidx125, align 4, !dbg !2052, !tbaa !80
  %mul126 = fmul float %110, %112, !dbg !2053
  %113 = call float @llvm.fmuladd.f32(float %106, float %108, float %mul126), !dbg !2054
  %conv127 = fpext float %113 to double, !dbg !2049
  %call128 = call double @sqrt(double noundef %conv127) #5, !dbg !2055
  %mul129 = fmul double 2.000000e+00, %call128, !dbg !2056
  %114 = load i32, ptr %n.addr, align 4, !dbg !2057, !tbaa !73
  %conv130 = sitofp i32 %114 to double, !dbg !2057
  %115 = call double @llvm.fmuladd.f64(double %mul129, double %conv130, double 3.000000e+00), !dbg !2058
  store double %115, ptr %U, align 8, !dbg !2059, !tbaa !86
  %116 = load double, ptr %U, align 8, !dbg !2060, !tbaa !86
  %117 = load double, ptr %S1, align 8, !dbg !2060, !tbaa !86
  %118 = load i32, ptr %n.addr, align 4, !dbg !2060, !tbaa !73
  %mul132 = mul nsw i32 2, %118, !dbg !2060
  %conv133 = sitofp i32 %mul132 to double, !dbg !2060
  %add134 = fadd double %117, %conv133, !dbg !2060
  %add135 = fadd double %add134, 1.000000e+00, !dbg !2060
  %cmp136 = fcmp ogt double %116, %add135, !dbg !2060
  br i1 %cmp136, label %cond.true138, label %cond.false139, !dbg !2060

cond.true138:                                     ; preds = %cond.end
  %119 = load double, ptr %U, align 8, !dbg !2060, !tbaa !86
  br label %cond.end144, !dbg !2060

cond.false139:                                    ; preds = %cond.end
  %120 = load double, ptr %S1, align 8, !dbg !2060, !tbaa !86
  %121 = load i32, ptr %n.addr, align 4, !dbg !2060, !tbaa !73
  %mul140 = mul nsw i32 2, %121, !dbg !2060
  %conv141 = sitofp i32 %mul140 to double, !dbg !2060
  %add142 = fadd double %120, %conv141, !dbg !2060
  %add143 = fadd double %add142, 1.000000e+00, !dbg !2060
  br label %cond.end144, !dbg !2060

cond.end144:                                      ; preds = %cond.false139, %cond.true138
  %cond145 = phi double [ %119, %cond.true138 ], [ %add143, %cond.false139 ], !dbg !2060
  store double %cond145, ptr %U, align 8, !dbg !2061, !tbaa !86
  %122 = load double, ptr %U, align 8, !dbg !2062, !tbaa !86
  %123 = load double, ptr %S2, align 8, !dbg !2062, !tbaa !86
  %124 = load i32, ptr %n.addr, align 4, !dbg !2062, !tbaa !73
  %mul146 = mul nsw i32 2, %124, !dbg !2062
  %conv147 = sitofp i32 %mul146 to double, !dbg !2062
  %add148 = fadd double %123, %conv147, !dbg !2062
  %add149 = fadd double %add148, 1.000000e+00, !dbg !2062
  %cmp150 = fcmp ogt double %122, %add149, !dbg !2062
  br i1 %cmp150, label %cond.true152, label %cond.false153, !dbg !2062

cond.true152:                                     ; preds = %cond.end144
  %125 = load double, ptr %U, align 8, !dbg !2062, !tbaa !86
  br label %cond.end158, !dbg !2062

cond.false153:                                    ; preds = %cond.end144
  %126 = load double, ptr %S2, align 8, !dbg !2062, !tbaa !86
  %127 = load i32, ptr %n.addr, align 4, !dbg !2062, !tbaa !73
  %mul154 = mul nsw i32 2, %127, !dbg !2062
  %conv155 = sitofp i32 %mul154 to double, !dbg !2062
  %add156 = fadd double %126, %conv155, !dbg !2062
  %add157 = fadd double %add156, 1.000000e+00, !dbg !2062
  br label %cond.end158, !dbg !2062

cond.end158:                                      ; preds = %cond.false153, %cond.true152
  %cond159 = phi double [ %125, %cond.true152 ], [ %add157, %cond.false153 ], !dbg !2062
  %128 = load double, ptr %un_int.addr, align 8, !dbg !2063, !tbaa !86
  %129 = load double, ptr %un_accurate, align 8, !dbg !2064, !tbaa !86
  %add160 = fadd double %128, %129, !dbg !2065
  %130 = load double, ptr %un_out, align 8, !dbg !2066, !tbaa !86
  %131 = call double @llvm.fmuladd.f64(double %cond159, double %add160, double %130), !dbg !2067
  store double %131, ptr %U, align 8, !dbg !2068, !tbaa !86
  %call162 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !2069
  %mul163 = fmul double 2.000000e+00, %call162, !dbg !2070
  %132 = load double, ptr %U, align 8, !dbg !2071, !tbaa !86
  %mul164 = fmul double %132, %mul163, !dbg !2071
  store double %mul164, ptr %U, align 8, !dbg !2071, !tbaa !86
  %133 = load double, ptr %tmp1, align 8, !dbg !2072, !tbaa !86
  %call165 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !2073
  %mul166 = fmul double 2.000000e+00, %call165, !dbg !2074
  %134 = load i32, ptr %n.addr, align 4, !dbg !2075, !tbaa !73
  %add167 = add nsw i32 %134, 2, !dbg !2076
  %conv168 = sitofp i32 %add167 to double, !dbg !2077
  %mul169 = fmul double %mul166, %conv168, !dbg !2078
  %135 = load double, ptr %eps_int.addr, align 8, !dbg !2079, !tbaa !86
  %136 = load double, ptr %eps_accurate, align 8, !dbg !2080, !tbaa !86
  %add170 = fadd double %135, %136, !dbg !2081
  %mul171 = fmul double %mul169, %add170, !dbg !2082
  %137 = load double, ptr %S, align 8, !dbg !2083, !tbaa !86
  %call173 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !2084
  %138 = load double, ptr %eps_out, align 8, !dbg !2085, !tbaa !86
  %mul174 = fmul double %call173, %138, !dbg !2086
  %139 = load ptr, ptr %r_true_l.addr, align 8, !dbg !2087, !tbaa !90
  %arrayidx175 = getelementptr inbounds double, ptr %139, i64 0, !dbg !2087
  %140 = load double, ptr %arrayidx175, align 8, !dbg !2087, !tbaa !86
  %141 = load ptr, ptr %r_true_l.addr, align 8, !dbg !2088, !tbaa !90
  %arrayidx176 = getelementptr inbounds double, ptr %141, i64 0, !dbg !2088
  %142 = load double, ptr %arrayidx176, align 8, !dbg !2088, !tbaa !86
  %143 = load ptr, ptr %r_true_l.addr, align 8, !dbg !2089, !tbaa !90
  %arrayidx178 = getelementptr inbounds double, ptr %143, i64 1, !dbg !2089
  %144 = load double, ptr %arrayidx178, align 8, !dbg !2089, !tbaa !86
  %145 = load ptr, ptr %r_true_l.addr, align 8, !dbg !2090, !tbaa !90
  %arrayidx179 = getelementptr inbounds double, ptr %145, i64 1, !dbg !2090
  %146 = load double, ptr %arrayidx179, align 8, !dbg !2090, !tbaa !86
  %mul180 = fmul double %144, %146, !dbg !2091
  %147 = call double @llvm.fmuladd.f64(double %140, double %142, double %mul180), !dbg !2092
  %call181 = call double @sqrt(double noundef %147) #5, !dbg !2093
  %mul182 = fmul double %mul174, %call181, !dbg !2094
  %148 = call double @llvm.fmuladd.f64(double %mul171, double %137, double %mul182), !dbg !2095
  %149 = load double, ptr %U, align 8, !dbg !2096, !tbaa !86
  %add183 = fadd double %148, %149, !dbg !2097
  %div = fdiv double %133, %add183, !dbg !2098
  %150 = load ptr, ptr %test_ratio.addr, align 8, !dbg !2099, !tbaa !90
  store double %div, ptr %150, align 8, !dbg !2100, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 4, ptr %y_ii) #5, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_ii) #5, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 8, ptr %rout_i) #5, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 8, ptr %rin_i) #5, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta_i) #5, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_i) #5, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_i) #5, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_i) #5, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_out) #5, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_accurate) #5, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_d) #5, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #5, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 16, ptr %prod) #5, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 8, ptr %U) #5, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 8, ptr %S2) #5, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 8, ptr %S1) #5, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 8, ptr %S) #5, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp1) #5, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_out) #5, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_accurate) #5, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 4, ptr %iy) #5, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 4, ptr %ix) #5, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !2101
  ret void, !dbg !2101
}

; Function Attrs: nounwind uwtable
define dso_local void @test_BLAS_zdot_d_d(i32 noundef %n, i32 noundef %conj, ptr noundef %alpha, ptr noundef %beta, ptr noundef %rin, ptr noundef %rout, ptr noundef %r_true_l, ptr noundef %r_true_t, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, double noundef %eps_int, double noundef %un_int, ptr noundef %test_ratio) #0 !dbg !2102 {
entry:
  %n.addr = alloca i32, align 4
  %conj.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %rin.addr = alloca ptr, align 8
  %rout.addr = alloca ptr, align 8
  %r_true_l.addr = alloca ptr, align 8
  %r_true_t.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %eps_int.addr = alloca double, align 8
  %un_int.addr = alloca double, align 8
  %test_ratio.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %eps_accurate = alloca double, align 8
  %eps_out = alloca double, align 8
  %tmp1 = alloca double, align 8
  %S = alloca double, align 8
  %S1 = alloca double, align 8
  %S2 = alloca double, align 8
  %U = alloca double, align 8
  %prod = alloca [2 x double], align 16
  %tmp = alloca [2 x double], align 16
  %un_d = alloca double, align 8
  %un_accurate = alloca double, align 8
  %un_out = alloca double, align 8
  %x_i = alloca ptr, align 8
  %y_i = alloca ptr, align 8
  %alpha_i = alloca ptr, align 8
  %beta_i = alloca ptr, align 8
  %rin_i = alloca ptr, align 8
  %rout_i = alloca ptr, align 8
  %x_ii = alloca double, align 8
  %y_ii = alloca double, align 8
  store i32 %n, ptr %n.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2106, metadata !DIExpression()), !dbg !2144
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !78
  tail call void @llvm.dbg.declare(metadata ptr %conj.addr, metadata !2107, metadata !DIExpression()), !dbg !2145
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !2108, metadata !DIExpression()), !dbg !2146
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %beta.addr, metadata !2109, metadata !DIExpression()), !dbg !2147
  store ptr %rin, ptr %rin.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %rin.addr, metadata !2110, metadata !DIExpression()), !dbg !2148
  store ptr %rout, ptr %rout.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %rout.addr, metadata !2111, metadata !DIExpression()), !dbg !2149
  store ptr %r_true_l, ptr %r_true_l.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %r_true_l.addr, metadata !2112, metadata !DIExpression()), !dbg !2150
  store ptr %r_true_t, ptr %r_true_t.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %r_true_t.addr, metadata !2113, metadata !DIExpression()), !dbg !2151
  store ptr %x, ptr %x.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !2114, metadata !DIExpression()), !dbg !2152
  store i32 %incx, ptr %incx.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incx.addr, metadata !2115, metadata !DIExpression()), !dbg !2153
  store ptr %y, ptr %y.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !2116, metadata !DIExpression()), !dbg !2154
  store i32 %incy, ptr %incy.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incy.addr, metadata !2117, metadata !DIExpression()), !dbg !2155
  store double %eps_int, ptr %eps_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %eps_int.addr, metadata !2118, metadata !DIExpression()), !dbg !2156
  store double %un_int, ptr %un_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %un_int.addr, metadata !2119, metadata !DIExpression()), !dbg !2157
  store ptr %test_ratio, ptr %test_ratio.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %test_ratio.addr, metadata !2120, metadata !DIExpression()), !dbg !2158
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !2159
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2121, metadata !DIExpression()), !dbg !2160
  call void @llvm.lifetime.start.p0(i64 4, ptr %ix) #5, !dbg !2159
  tail call void @llvm.dbg.declare(metadata ptr %ix, metadata !2122, metadata !DIExpression()), !dbg !2161
  call void @llvm.lifetime.start.p0(i64 4, ptr %iy) #5, !dbg !2159
  tail call void @llvm.dbg.declare(metadata ptr %iy, metadata !2123, metadata !DIExpression()), !dbg !2162
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_accurate) #5, !dbg !2163
  tail call void @llvm.dbg.declare(metadata ptr %eps_accurate, metadata !2124, metadata !DIExpression()), !dbg !2164
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_out) #5, !dbg !2163
  tail call void @llvm.dbg.declare(metadata ptr %eps_out, metadata !2125, metadata !DIExpression()), !dbg !2165
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp1) #5, !dbg !2163
  tail call void @llvm.dbg.declare(metadata ptr %tmp1, metadata !2126, metadata !DIExpression()), !dbg !2166
  call void @llvm.lifetime.start.p0(i64 8, ptr %S) #5, !dbg !2163
  tail call void @llvm.dbg.declare(metadata ptr %S, metadata !2127, metadata !DIExpression()), !dbg !2167
  call void @llvm.lifetime.start.p0(i64 8, ptr %S1) #5, !dbg !2163
  tail call void @llvm.dbg.declare(metadata ptr %S1, metadata !2128, metadata !DIExpression()), !dbg !2168
  call void @llvm.lifetime.start.p0(i64 8, ptr %S2) #5, !dbg !2163
  tail call void @llvm.dbg.declare(metadata ptr %S2, metadata !2129, metadata !DIExpression()), !dbg !2169
  call void @llvm.lifetime.start.p0(i64 8, ptr %U) #5, !dbg !2163
  tail call void @llvm.dbg.declare(metadata ptr %U, metadata !2130, metadata !DIExpression()), !dbg !2170
  call void @llvm.lifetime.start.p0(i64 16, ptr %prod) #5, !dbg !2163
  tail call void @llvm.dbg.declare(metadata ptr %prod, metadata !2131, metadata !DIExpression()), !dbg !2171
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #5, !dbg !2163
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2132, metadata !DIExpression()), !dbg !2172
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_d) #5, !dbg !2173
  tail call void @llvm.dbg.declare(metadata ptr %un_d, metadata !2133, metadata !DIExpression()), !dbg !2174
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_accurate) #5, !dbg !2173
  tail call void @llvm.dbg.declare(metadata ptr %un_accurate, metadata !2134, metadata !DIExpression()), !dbg !2175
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_out) #5, !dbg !2173
  tail call void @llvm.dbg.declare(metadata ptr %un_out, metadata !2135, metadata !DIExpression()), !dbg !2176
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_i) #5, !dbg !2177
  tail call void @llvm.dbg.declare(metadata ptr %x_i, metadata !2136, metadata !DIExpression()), !dbg !2178
  %0 = load ptr, ptr %x.addr, align 8, !dbg !2179, !tbaa !90
  store ptr %0, ptr %x_i, align 8, !dbg !2178, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_i) #5, !dbg !2180
  tail call void @llvm.dbg.declare(metadata ptr %y_i, metadata !2137, metadata !DIExpression()), !dbg !2181
  %1 = load ptr, ptr %y.addr, align 8, !dbg !2182, !tbaa !90
  store ptr %1, ptr %y_i, align 8, !dbg !2181, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_i) #5, !dbg !2183
  tail call void @llvm.dbg.declare(metadata ptr %alpha_i, metadata !2138, metadata !DIExpression()), !dbg !2184
  %2 = load ptr, ptr %alpha.addr, align 8, !dbg !2185, !tbaa !90
  store ptr %2, ptr %alpha_i, align 8, !dbg !2184, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta_i) #5, !dbg !2186
  tail call void @llvm.dbg.declare(metadata ptr %beta_i, metadata !2139, metadata !DIExpression()), !dbg !2187
  %3 = load ptr, ptr %beta.addr, align 8, !dbg !2188, !tbaa !90
  store ptr %3, ptr %beta_i, align 8, !dbg !2187, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %rin_i) #5, !dbg !2189
  tail call void @llvm.dbg.declare(metadata ptr %rin_i, metadata !2140, metadata !DIExpression()), !dbg !2190
  %4 = load ptr, ptr %rin.addr, align 8, !dbg !2191, !tbaa !90
  store ptr %4, ptr %rin_i, align 8, !dbg !2190, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %rout_i) #5, !dbg !2192
  tail call void @llvm.dbg.declare(metadata ptr %rout_i, metadata !2141, metadata !DIExpression()), !dbg !2193
  %5 = load ptr, ptr %rout.addr, align 8, !dbg !2194, !tbaa !90
  store ptr %5, ptr %rout_i, align 8, !dbg !2193, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_ii) #5, !dbg !2195
  tail call void @llvm.dbg.declare(metadata ptr %x_ii, metadata !2142, metadata !DIExpression()), !dbg !2196
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_ii) #5, !dbg !2197
  tail call void @llvm.dbg.declare(metadata ptr %y_ii, metadata !2143, metadata !DIExpression()), !dbg !2198
  store i32 0, ptr %ix, align 4, !dbg !2199, !tbaa !73
  store i32 0, ptr %iy, align 4, !dbg !2200, !tbaa !73
  %6 = load i32, ptr %incx.addr, align 4, !dbg !2201, !tbaa !73
  %cmp = icmp slt i32 %6, 0, !dbg !2203
  br i1 %cmp, label %if.then, label %if.end, !dbg !2204

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %n.addr, align 4, !dbg !2205, !tbaa !73
  %sub = sub nsw i32 %7, 1, !dbg !2206
  %sub1 = sub nsw i32 0, %sub, !dbg !2207
  %8 = load i32, ptr %incx.addr, align 4, !dbg !2208, !tbaa !73
  %mul = mul nsw i32 %sub1, %8, !dbg !2209
  store i32 %mul, ptr %ix, align 4, !dbg !2210, !tbaa !73
  br label %if.end, !dbg !2211

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, ptr %incy.addr, align 4, !dbg !2212, !tbaa !73
  %cmp2 = icmp slt i32 %9, 0, !dbg !2214
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !2215

if.then3:                                         ; preds = %if.end
  %10 = load i32, ptr %n.addr, align 4, !dbg !2216, !tbaa !73
  %sub4 = sub nsw i32 %10, 1, !dbg !2217
  %sub5 = sub nsw i32 0, %sub4, !dbg !2218
  %11 = load i32, ptr %incy.addr, align 4, !dbg !2219, !tbaa !73
  %mul6 = mul nsw i32 %sub5, %11, !dbg !2220
  store i32 %mul6, ptr %iy, align 4, !dbg !2221, !tbaa !73
  br label %if.end7, !dbg !2222

if.end7:                                          ; preds = %if.then3, %if.end
  store double 0.000000e+00, ptr %S2, align 8, !dbg !2223, !tbaa !86
  store double 0.000000e+00, ptr %S1, align 8, !dbg !2224, !tbaa !86
  store double 0.000000e+00, ptr %S, align 8, !dbg !2225, !tbaa !86
  store i32 0, ptr %i, align 4, !dbg !2226, !tbaa !73
  br label %for.cond, !dbg !2228

for.cond:                                         ; preds = %for.inc, %if.end7
  %12 = load i32, ptr %i, align 4, !dbg !2229, !tbaa !73
  %13 = load i32, ptr %n.addr, align 4, !dbg !2231, !tbaa !73
  %cmp8 = icmp slt i32 %12, %13, !dbg !2232
  br i1 %cmp8, label %for.body, label %for.end, !dbg !2233

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %x_i, align 8, !dbg !2234, !tbaa !90
  %15 = load i32, ptr %ix, align 4, !dbg !2236, !tbaa !73
  %idxprom = sext i32 %15 to i64, !dbg !2234
  %arrayidx = getelementptr inbounds double, ptr %14, i64 %idxprom, !dbg !2234
  %16 = load double, ptr %arrayidx, align 8, !dbg !2234, !tbaa !86
  store double %16, ptr %x_ii, align 8, !dbg !2237, !tbaa !86
  %17 = load ptr, ptr %y_i, align 8, !dbg !2238, !tbaa !90
  %18 = load i32, ptr %iy, align 4, !dbg !2239, !tbaa !73
  %idxprom9 = sext i32 %18 to i64, !dbg !2238
  %arrayidx10 = getelementptr inbounds double, ptr %17, i64 %idxprom9, !dbg !2238
  %19 = load double, ptr %arrayidx10, align 8, !dbg !2238, !tbaa !86
  store double %19, ptr %y_ii, align 8, !dbg !2240, !tbaa !86
  %20 = load double, ptr %x_ii, align 8, !dbg !2241, !tbaa !86
  %21 = call double @llvm.fabs.f64(double %20), !dbg !2242
  %22 = load double, ptr %S1, align 8, !dbg !2243, !tbaa !86
  %add = fadd double %22, %21, !dbg !2243
  store double %add, ptr %S1, align 8, !dbg !2243, !tbaa !86
  %23 = load double, ptr %y_ii, align 8, !dbg !2244, !tbaa !86
  %24 = call double @llvm.fabs.f64(double %23), !dbg !2245
  %25 = load double, ptr %S2, align 8, !dbg !2246, !tbaa !86
  %add11 = fadd double %25, %24, !dbg !2246
  store double %add11, ptr %S2, align 8, !dbg !2246, !tbaa !86
  %26 = load double, ptr %x_ii, align 8, !dbg !2247, !tbaa !86
  %27 = load double, ptr %y_ii, align 8, !dbg !2248, !tbaa !86
  %mul12 = fmul double %26, %27, !dbg !2249
  %arrayidx13 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !2250
  store double %mul12, ptr %arrayidx13, align 16, !dbg !2251, !tbaa !86
  %arrayidx14 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !2252
  store double 0.000000e+00, ptr %arrayidx14, align 8, !dbg !2253, !tbaa !86
  %arrayidx15 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !2254
  %28 = load double, ptr %arrayidx15, align 16, !dbg !2254, !tbaa !86
  %arrayidx16 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !2255
  %29 = load double, ptr %arrayidx16, align 16, !dbg !2255, !tbaa !86
  %arrayidx18 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !2256
  %30 = load double, ptr %arrayidx18, align 8, !dbg !2256, !tbaa !86
  %arrayidx19 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !2257
  %31 = load double, ptr %arrayidx19, align 8, !dbg !2257, !tbaa !86
  %mul20 = fmul double %30, %31, !dbg !2258
  %32 = call double @llvm.fmuladd.f64(double %28, double %29, double %mul20), !dbg !2259
  %call = call double @sqrt(double noundef %32) #5, !dbg !2260
  %33 = load double, ptr %S, align 8, !dbg !2261, !tbaa !86
  %add21 = fadd double %33, %call, !dbg !2261
  store double %add21, ptr %S, align 8, !dbg !2261, !tbaa !86
  %34 = load i32, ptr %incx.addr, align 4, !dbg !2262, !tbaa !73
  %35 = load i32, ptr %ix, align 4, !dbg !2263, !tbaa !73
  %add22 = add nsw i32 %35, %34, !dbg !2263
  store i32 %add22, ptr %ix, align 4, !dbg !2263, !tbaa !73
  %36 = load i32, ptr %incy.addr, align 4, !dbg !2264, !tbaa !73
  %37 = load i32, ptr %iy, align 4, !dbg !2265, !tbaa !73
  %add23 = add nsw i32 %37, %36, !dbg !2265
  store i32 %add23, ptr %iy, align 4, !dbg !2265, !tbaa !73
  br label %for.inc, !dbg !2266

for.inc:                                          ; preds = %for.body
  %38 = load i32, ptr %i, align 4, !dbg !2267, !tbaa !73
  %inc = add nsw i32 %38, 1, !dbg !2267
  store i32 %inc, ptr %i, align 4, !dbg !2267, !tbaa !73
  br label %for.cond, !dbg !2268, !llvm.loop !2269

for.end:                                          ; preds = %for.cond
  %39 = load ptr, ptr %alpha_i, align 8, !dbg !2271, !tbaa !90
  %arrayidx24 = getelementptr inbounds double, ptr %39, i64 0, !dbg !2271
  %40 = load double, ptr %arrayidx24, align 8, !dbg !2271, !tbaa !86
  %41 = load ptr, ptr %alpha_i, align 8, !dbg !2272, !tbaa !90
  %arrayidx25 = getelementptr inbounds double, ptr %41, i64 0, !dbg !2272
  %42 = load double, ptr %arrayidx25, align 8, !dbg !2272, !tbaa !86
  %43 = load ptr, ptr %alpha_i, align 8, !dbg !2273, !tbaa !90
  %arrayidx27 = getelementptr inbounds double, ptr %43, i64 1, !dbg !2273
  %44 = load double, ptr %arrayidx27, align 8, !dbg !2273, !tbaa !86
  %45 = load ptr, ptr %alpha_i, align 8, !dbg !2274, !tbaa !90
  %arrayidx28 = getelementptr inbounds double, ptr %45, i64 1, !dbg !2274
  %46 = load double, ptr %arrayidx28, align 8, !dbg !2274, !tbaa !86
  %mul29 = fmul double %44, %46, !dbg !2275
  %47 = call double @llvm.fmuladd.f64(double %40, double %42, double %mul29), !dbg !2276
  %call30 = call double @sqrt(double noundef %47) #5, !dbg !2277
  %48 = load double, ptr %S, align 8, !dbg !2278, !tbaa !86
  %mul31 = fmul double %48, %call30, !dbg !2278
  store double %mul31, ptr %S, align 8, !dbg !2278, !tbaa !86
  %49 = load ptr, ptr %beta_i, align 8, !dbg !2279, !tbaa !90
  %arrayidx32 = getelementptr inbounds double, ptr %49, i64 0, !dbg !2279
  %50 = load double, ptr %arrayidx32, align 8, !dbg !2279, !tbaa !86
  %51 = load ptr, ptr %rin_i, align 8, !dbg !2281, !tbaa !90
  %arrayidx33 = getelementptr inbounds double, ptr %51, i64 0, !dbg !2281
  %52 = load double, ptr %arrayidx33, align 8, !dbg !2281, !tbaa !86
  %53 = load ptr, ptr %beta_i, align 8, !dbg !2282, !tbaa !90
  %arrayidx35 = getelementptr inbounds double, ptr %53, i64 1, !dbg !2282
  %54 = load double, ptr %arrayidx35, align 8, !dbg !2282, !tbaa !86
  %55 = load ptr, ptr %rin_i, align 8, !dbg !2283, !tbaa !90
  %arrayidx36 = getelementptr inbounds double, ptr %55, i64 1, !dbg !2283
  %56 = load double, ptr %arrayidx36, align 8, !dbg !2283, !tbaa !86
  %mul37 = fmul double %54, %56, !dbg !2284
  %neg = fneg double %mul37, !dbg !2285
  %57 = call double @llvm.fmuladd.f64(double %50, double %52, double %neg), !dbg !2285
  %arrayidx38 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !2286
  store double %57, ptr %arrayidx38, align 16, !dbg !2287, !tbaa !86
  %58 = load ptr, ptr %beta_i, align 8, !dbg !2288, !tbaa !90
  %arrayidx39 = getelementptr inbounds double, ptr %58, i64 0, !dbg !2288
  %59 = load double, ptr %arrayidx39, align 8, !dbg !2288, !tbaa !86
  %60 = load ptr, ptr %rin_i, align 8, !dbg !2289, !tbaa !90
  %arrayidx40 = getelementptr inbounds double, ptr %60, i64 1, !dbg !2289
  %61 = load double, ptr %arrayidx40, align 8, !dbg !2289, !tbaa !86
  %62 = load ptr, ptr %beta_i, align 8, !dbg !2290, !tbaa !90
  %arrayidx42 = getelementptr inbounds double, ptr %62, i64 1, !dbg !2290
  %63 = load double, ptr %arrayidx42, align 8, !dbg !2290, !tbaa !86
  %64 = load ptr, ptr %rin_i, align 8, !dbg !2291, !tbaa !90
  %arrayidx43 = getelementptr inbounds double, ptr %64, i64 0, !dbg !2291
  %65 = load double, ptr %arrayidx43, align 8, !dbg !2291, !tbaa !86
  %mul44 = fmul double %63, %65, !dbg !2292
  %66 = call double @llvm.fmuladd.f64(double %59, double %61, double %mul44), !dbg !2293
  %arrayidx45 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !2294
  store double %66, ptr %arrayidx45, align 8, !dbg !2295, !tbaa !86
  %arrayidx46 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !2296
  %67 = load double, ptr %arrayidx46, align 16, !dbg !2296, !tbaa !86
  %arrayidx47 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !2297
  %68 = load double, ptr %arrayidx47, align 16, !dbg !2297, !tbaa !86
  %arrayidx49 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !2298
  %69 = load double, ptr %arrayidx49, align 8, !dbg !2298, !tbaa !86
  %arrayidx50 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !2299
  %70 = load double, ptr %arrayidx50, align 8, !dbg !2299, !tbaa !86
  %mul51 = fmul double %69, %70, !dbg !2300
  %71 = call double @llvm.fmuladd.f64(double %67, double %68, double %mul51), !dbg !2301
  %call52 = call double @sqrt(double noundef %71) #5, !dbg !2302
  %72 = load double, ptr %S, align 8, !dbg !2303, !tbaa !86
  %add53 = fadd double %72, %call52, !dbg !2303
  store double %add53, ptr %S, align 8, !dbg !2303, !tbaa !86
  %call54 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !2304
  %conv = sitofp i32 %call54 to double, !dbg !2305
  %call55 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !2306
  %conv56 = sitofp i32 %call55 to double, !dbg !2307
  %call57 = call double @pow(double noundef %conv, double noundef %conv56) #5, !dbg !2308
  store double %call57, ptr %un_d, align 8, !dbg !2309, !tbaa !86
  %73 = load double, ptr %S, align 8, !dbg !2310, !tbaa !86
  %74 = load double, ptr %un_d, align 8, !dbg !2310, !tbaa !86
  %cmp58 = fcmp ogt double %73, %74, !dbg !2310
  br i1 %cmp58, label %cond.true, label %cond.false, !dbg !2310

cond.true:                                        ; preds = %for.end
  %75 = load double, ptr %S, align 8, !dbg !2310, !tbaa !86
  br label %cond.end, !dbg !2310

cond.false:                                       ; preds = %for.end
  %76 = load double, ptr %un_d, align 8, !dbg !2310, !tbaa !86
  br label %cond.end, !dbg !2310

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %75, %cond.true ], [ %76, %cond.false ], !dbg !2310
  store double %cond, ptr %S, align 8, !dbg !2311, !tbaa !86
  %call60 = call double @power(i32 noundef 2, i32 noundef -106), !dbg !2312
  store double %call60, ptr %eps_accurate, align 8, !dbg !2313, !tbaa !86
  %call61 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 214), !dbg !2314
  %conv62 = sitofp i32 %call61 to double, !dbg !2315
  %call63 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 214), !dbg !2316
  %conv64 = sitofp i32 %call63 to double, !dbg !2317
  %call65 = call double @pow(double noundef %conv62, double noundef %conv64) #5, !dbg !2318
  store double %call65, ptr %un_accurate, align 8, !dbg !2319, !tbaa !86
  %call66 = call double @power(i32 noundef 2, i32 noundef -53), !dbg !2320
  store double %call66, ptr %eps_out, align 8, !dbg !2321, !tbaa !86
  %call67 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !2322
  %conv68 = sitofp i32 %call67 to double, !dbg !2323
  %call69 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !2324
  %conv70 = sitofp i32 %call69 to double, !dbg !2325
  %call71 = call double @pow(double noundef %conv68, double noundef %conv70) #5, !dbg !2326
  store double %call71, ptr %un_out, align 8, !dbg !2327, !tbaa !86
  %77 = load ptr, ptr %rout_i, align 8, !dbg !2328, !tbaa !90
  %arrayidx72 = getelementptr inbounds double, ptr %77, i64 0, !dbg !2328
  %78 = load double, ptr %arrayidx72, align 8, !dbg !2328, !tbaa !86
  %79 = load ptr, ptr %r_true_l.addr, align 8, !dbg !2329, !tbaa !90
  %arrayidx73 = getelementptr inbounds double, ptr %79, i64 0, !dbg !2329
  %80 = load double, ptr %arrayidx73, align 8, !dbg !2329, !tbaa !86
  %sub74 = fsub double %78, %80, !dbg !2330
  %81 = load ptr, ptr %r_true_t.addr, align 8, !dbg !2331, !tbaa !90
  %arrayidx75 = getelementptr inbounds double, ptr %81, i64 0, !dbg !2331
  %82 = load double, ptr %arrayidx75, align 8, !dbg !2331, !tbaa !86
  %sub76 = fsub double %sub74, %82, !dbg !2332
  %arrayidx77 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !2333
  store double %sub76, ptr %arrayidx77, align 16, !dbg !2334, !tbaa !86
  %83 = load ptr, ptr %rout_i, align 8, !dbg !2335, !tbaa !90
  %arrayidx78 = getelementptr inbounds double, ptr %83, i64 1, !dbg !2335
  %84 = load double, ptr %arrayidx78, align 8, !dbg !2335, !tbaa !86
  %85 = load ptr, ptr %r_true_l.addr, align 8, !dbg !2336, !tbaa !90
  %arrayidx79 = getelementptr inbounds double, ptr %85, i64 1, !dbg !2336
  %86 = load double, ptr %arrayidx79, align 8, !dbg !2336, !tbaa !86
  %sub80 = fsub double %84, %86, !dbg !2337
  %87 = load ptr, ptr %r_true_t.addr, align 8, !dbg !2338, !tbaa !90
  %arrayidx81 = getelementptr inbounds double, ptr %87, i64 1, !dbg !2338
  %88 = load double, ptr %arrayidx81, align 8, !dbg !2338, !tbaa !86
  %sub82 = fsub double %sub80, %88, !dbg !2339
  %arrayidx83 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !2340
  store double %sub82, ptr %arrayidx83, align 8, !dbg !2341, !tbaa !86
  %arrayidx84 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !2342
  %89 = load double, ptr %arrayidx84, align 16, !dbg !2342, !tbaa !86
  %arrayidx85 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !2343
  %90 = load double, ptr %arrayidx85, align 16, !dbg !2343, !tbaa !86
  %arrayidx87 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !2344
  %91 = load double, ptr %arrayidx87, align 8, !dbg !2344, !tbaa !86
  %arrayidx88 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !2345
  %92 = load double, ptr %arrayidx88, align 8, !dbg !2345, !tbaa !86
  %mul89 = fmul double %91, %92, !dbg !2346
  %93 = call double @llvm.fmuladd.f64(double %89, double %90, double %mul89), !dbg !2347
  %call90 = call double @sqrt(double noundef %93) #5, !dbg !2348
  store double %call90, ptr %tmp1, align 8, !dbg !2349, !tbaa !86
  %94 = load ptr, ptr %alpha_i, align 8, !dbg !2350, !tbaa !90
  %arrayidx91 = getelementptr inbounds double, ptr %94, i64 0, !dbg !2350
  %95 = load double, ptr %arrayidx91, align 8, !dbg !2350, !tbaa !86
  %96 = load ptr, ptr %alpha_i, align 8, !dbg !2351, !tbaa !90
  %arrayidx92 = getelementptr inbounds double, ptr %96, i64 0, !dbg !2351
  %97 = load double, ptr %arrayidx92, align 8, !dbg !2351, !tbaa !86
  %98 = load ptr, ptr %alpha_i, align 8, !dbg !2352, !tbaa !90
  %arrayidx94 = getelementptr inbounds double, ptr %98, i64 1, !dbg !2352
  %99 = load double, ptr %arrayidx94, align 8, !dbg !2352, !tbaa !86
  %100 = load ptr, ptr %alpha_i, align 8, !dbg !2353, !tbaa !90
  %arrayidx95 = getelementptr inbounds double, ptr %100, i64 1, !dbg !2353
  %101 = load double, ptr %arrayidx95, align 8, !dbg !2353, !tbaa !86
  %mul96 = fmul double %99, %101, !dbg !2354
  %102 = call double @llvm.fmuladd.f64(double %95, double %97, double %mul96), !dbg !2355
  %call97 = call double @sqrt(double noundef %102) #5, !dbg !2356
  %mul98 = fmul double 2.000000e+00, %call97, !dbg !2357
  %103 = load i32, ptr %n.addr, align 4, !dbg !2358, !tbaa !73
  %conv99 = sitofp i32 %103 to double, !dbg !2358
  %104 = call double @llvm.fmuladd.f64(double %mul98, double %conv99, double 3.000000e+00), !dbg !2359
  store double %104, ptr %U, align 8, !dbg !2360, !tbaa !86
  %105 = load double, ptr %U, align 8, !dbg !2361, !tbaa !86
  %106 = load double, ptr %S1, align 8, !dbg !2361, !tbaa !86
  %107 = load i32, ptr %n.addr, align 4, !dbg !2361, !tbaa !73
  %mul101 = mul nsw i32 2, %107, !dbg !2361
  %conv102 = sitofp i32 %mul101 to double, !dbg !2361
  %add103 = fadd double %106, %conv102, !dbg !2361
  %add104 = fadd double %add103, 1.000000e+00, !dbg !2361
  %cmp105 = fcmp ogt double %105, %add104, !dbg !2361
  br i1 %cmp105, label %cond.true107, label %cond.false108, !dbg !2361

cond.true107:                                     ; preds = %cond.end
  %108 = load double, ptr %U, align 8, !dbg !2361, !tbaa !86
  br label %cond.end113, !dbg !2361

cond.false108:                                    ; preds = %cond.end
  %109 = load double, ptr %S1, align 8, !dbg !2361, !tbaa !86
  %110 = load i32, ptr %n.addr, align 4, !dbg !2361, !tbaa !73
  %mul109 = mul nsw i32 2, %110, !dbg !2361
  %conv110 = sitofp i32 %mul109 to double, !dbg !2361
  %add111 = fadd double %109, %conv110, !dbg !2361
  %add112 = fadd double %add111, 1.000000e+00, !dbg !2361
  br label %cond.end113, !dbg !2361

cond.end113:                                      ; preds = %cond.false108, %cond.true107
  %cond114 = phi double [ %108, %cond.true107 ], [ %add112, %cond.false108 ], !dbg !2361
  store double %cond114, ptr %U, align 8, !dbg !2362, !tbaa !86
  %111 = load double, ptr %U, align 8, !dbg !2363, !tbaa !86
  %112 = load double, ptr %S2, align 8, !dbg !2363, !tbaa !86
  %113 = load i32, ptr %n.addr, align 4, !dbg !2363, !tbaa !73
  %mul115 = mul nsw i32 2, %113, !dbg !2363
  %conv116 = sitofp i32 %mul115 to double, !dbg !2363
  %add117 = fadd double %112, %conv116, !dbg !2363
  %add118 = fadd double %add117, 1.000000e+00, !dbg !2363
  %cmp119 = fcmp ogt double %111, %add118, !dbg !2363
  br i1 %cmp119, label %cond.true121, label %cond.false122, !dbg !2363

cond.true121:                                     ; preds = %cond.end113
  %114 = load double, ptr %U, align 8, !dbg !2363, !tbaa !86
  br label %cond.end127, !dbg !2363

cond.false122:                                    ; preds = %cond.end113
  %115 = load double, ptr %S2, align 8, !dbg !2363, !tbaa !86
  %116 = load i32, ptr %n.addr, align 4, !dbg !2363, !tbaa !73
  %mul123 = mul nsw i32 2, %116, !dbg !2363
  %conv124 = sitofp i32 %mul123 to double, !dbg !2363
  %add125 = fadd double %115, %conv124, !dbg !2363
  %add126 = fadd double %add125, 1.000000e+00, !dbg !2363
  br label %cond.end127, !dbg !2363

cond.end127:                                      ; preds = %cond.false122, %cond.true121
  %cond128 = phi double [ %114, %cond.true121 ], [ %add126, %cond.false122 ], !dbg !2363
  %117 = load double, ptr %un_int.addr, align 8, !dbg !2364, !tbaa !86
  %118 = load double, ptr %un_accurate, align 8, !dbg !2365, !tbaa !86
  %add129 = fadd double %117, %118, !dbg !2366
  %119 = load double, ptr %un_out, align 8, !dbg !2367, !tbaa !86
  %120 = call double @llvm.fmuladd.f64(double %cond128, double %add129, double %119), !dbg !2368
  store double %120, ptr %U, align 8, !dbg !2369, !tbaa !86
  %call131 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !2370
  %mul132 = fmul double 2.000000e+00, %call131, !dbg !2371
  %121 = load double, ptr %U, align 8, !dbg !2372, !tbaa !86
  %mul133 = fmul double %121, %mul132, !dbg !2372
  store double %mul133, ptr %U, align 8, !dbg !2372, !tbaa !86
  %122 = load double, ptr %tmp1, align 8, !dbg !2373, !tbaa !86
  %call134 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !2374
  %mul135 = fmul double 2.000000e+00, %call134, !dbg !2375
  %123 = load i32, ptr %n.addr, align 4, !dbg !2376, !tbaa !73
  %add136 = add nsw i32 %123, 2, !dbg !2377
  %conv137 = sitofp i32 %add136 to double, !dbg !2378
  %mul138 = fmul double %mul135, %conv137, !dbg !2379
  %124 = load double, ptr %eps_int.addr, align 8, !dbg !2380, !tbaa !86
  %125 = load double, ptr %eps_accurate, align 8, !dbg !2381, !tbaa !86
  %add139 = fadd double %124, %125, !dbg !2382
  %mul140 = fmul double %mul138, %add139, !dbg !2383
  %126 = load double, ptr %S, align 8, !dbg !2384, !tbaa !86
  %call142 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !2385
  %127 = load double, ptr %eps_out, align 8, !dbg !2386, !tbaa !86
  %mul143 = fmul double %call142, %127, !dbg !2387
  %128 = load ptr, ptr %r_true_l.addr, align 8, !dbg !2388, !tbaa !90
  %arrayidx144 = getelementptr inbounds double, ptr %128, i64 0, !dbg !2388
  %129 = load double, ptr %arrayidx144, align 8, !dbg !2388, !tbaa !86
  %130 = load ptr, ptr %r_true_l.addr, align 8, !dbg !2389, !tbaa !90
  %arrayidx145 = getelementptr inbounds double, ptr %130, i64 0, !dbg !2389
  %131 = load double, ptr %arrayidx145, align 8, !dbg !2389, !tbaa !86
  %132 = load ptr, ptr %r_true_l.addr, align 8, !dbg !2390, !tbaa !90
  %arrayidx147 = getelementptr inbounds double, ptr %132, i64 1, !dbg !2390
  %133 = load double, ptr %arrayidx147, align 8, !dbg !2390, !tbaa !86
  %134 = load ptr, ptr %r_true_l.addr, align 8, !dbg !2391, !tbaa !90
  %arrayidx148 = getelementptr inbounds double, ptr %134, i64 1, !dbg !2391
  %135 = load double, ptr %arrayidx148, align 8, !dbg !2391, !tbaa !86
  %mul149 = fmul double %133, %135, !dbg !2392
  %136 = call double @llvm.fmuladd.f64(double %129, double %131, double %mul149), !dbg !2393
  %call150 = call double @sqrt(double noundef %136) #5, !dbg !2394
  %mul151 = fmul double %mul143, %call150, !dbg !2395
  %137 = call double @llvm.fmuladd.f64(double %mul140, double %126, double %mul151), !dbg !2396
  %138 = load double, ptr %U, align 8, !dbg !2397, !tbaa !86
  %add152 = fadd double %137, %138, !dbg !2398
  %div = fdiv double %122, %add152, !dbg !2399
  %139 = load ptr, ptr %test_ratio.addr, align 8, !dbg !2400, !tbaa !90
  store double %div, ptr %139, align 8, !dbg !2401, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_ii) #5, !dbg !2402
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_ii) #5, !dbg !2402
  call void @llvm.lifetime.end.p0(i64 8, ptr %rout_i) #5, !dbg !2402
  call void @llvm.lifetime.end.p0(i64 8, ptr %rin_i) #5, !dbg !2402
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta_i) #5, !dbg !2402
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_i) #5, !dbg !2402
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_i) #5, !dbg !2402
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_i) #5, !dbg !2402
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_out) #5, !dbg !2402
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_accurate) #5, !dbg !2402
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_d) #5, !dbg !2402
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #5, !dbg !2402
  call void @llvm.lifetime.end.p0(i64 16, ptr %prod) #5, !dbg !2402
  call void @llvm.lifetime.end.p0(i64 8, ptr %U) #5, !dbg !2402
  call void @llvm.lifetime.end.p0(i64 8, ptr %S2) #5, !dbg !2402
  call void @llvm.lifetime.end.p0(i64 8, ptr %S1) #5, !dbg !2402
  call void @llvm.lifetime.end.p0(i64 8, ptr %S) #5, !dbg !2402
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp1) #5, !dbg !2402
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_out) #5, !dbg !2402
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_accurate) #5, !dbg !2402
  call void @llvm.lifetime.end.p0(i64 4, ptr %iy) #5, !dbg !2402
  call void @llvm.lifetime.end.p0(i64 4, ptr %ix) #5, !dbg !2402
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !2402
  ret void, !dbg !2402
}

; Function Attrs: nounwind uwtable
define dso_local void @test_BLAS_zdot_d_z(i32 noundef %n, i32 noundef %conj, ptr noundef %alpha, ptr noundef %beta, ptr noundef %rin, ptr noundef %rout, ptr noundef %r_true_l, ptr noundef %r_true_t, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, double noundef %eps_int, double noundef %un_int, ptr noundef %test_ratio) #0 !dbg !2403 {
entry:
  %n.addr = alloca i32, align 4
  %conj.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %rin.addr = alloca ptr, align 8
  %rout.addr = alloca ptr, align 8
  %r_true_l.addr = alloca ptr, align 8
  %r_true_t.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %eps_int.addr = alloca double, align 8
  %un_int.addr = alloca double, align 8
  %test_ratio.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %eps_accurate = alloca double, align 8
  %eps_out = alloca double, align 8
  %tmp1 = alloca double, align 8
  %S = alloca double, align 8
  %S1 = alloca double, align 8
  %S2 = alloca double, align 8
  %U = alloca double, align 8
  %prod = alloca [2 x double], align 16
  %tmp = alloca [2 x double], align 16
  %un_d = alloca double, align 8
  %un_accurate = alloca double, align 8
  %un_out = alloca double, align 8
  %x_i = alloca ptr, align 8
  %y_i = alloca ptr, align 8
  %alpha_i = alloca ptr, align 8
  %beta_i = alloca ptr, align 8
  %rin_i = alloca ptr, align 8
  %rout_i = alloca ptr, align 8
  %x_ii = alloca double, align 8
  %y_ii = alloca [2 x double], align 16
  store i32 %n, ptr %n.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2407, metadata !DIExpression()), !dbg !2445
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !78
  tail call void @llvm.dbg.declare(metadata ptr %conj.addr, metadata !2408, metadata !DIExpression()), !dbg !2446
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !2409, metadata !DIExpression()), !dbg !2447
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %beta.addr, metadata !2410, metadata !DIExpression()), !dbg !2448
  store ptr %rin, ptr %rin.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %rin.addr, metadata !2411, metadata !DIExpression()), !dbg !2449
  store ptr %rout, ptr %rout.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %rout.addr, metadata !2412, metadata !DIExpression()), !dbg !2450
  store ptr %r_true_l, ptr %r_true_l.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %r_true_l.addr, metadata !2413, metadata !DIExpression()), !dbg !2451
  store ptr %r_true_t, ptr %r_true_t.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %r_true_t.addr, metadata !2414, metadata !DIExpression()), !dbg !2452
  store ptr %x, ptr %x.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !2415, metadata !DIExpression()), !dbg !2453
  store i32 %incx, ptr %incx.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incx.addr, metadata !2416, metadata !DIExpression()), !dbg !2454
  store ptr %y, ptr %y.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !2417, metadata !DIExpression()), !dbg !2455
  store i32 %incy, ptr %incy.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incy.addr, metadata !2418, metadata !DIExpression()), !dbg !2456
  store double %eps_int, ptr %eps_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %eps_int.addr, metadata !2419, metadata !DIExpression()), !dbg !2457
  store double %un_int, ptr %un_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %un_int.addr, metadata !2420, metadata !DIExpression()), !dbg !2458
  store ptr %test_ratio, ptr %test_ratio.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %test_ratio.addr, metadata !2421, metadata !DIExpression()), !dbg !2459
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !2460
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2422, metadata !DIExpression()), !dbg !2461
  call void @llvm.lifetime.start.p0(i64 4, ptr %ix) #5, !dbg !2460
  tail call void @llvm.dbg.declare(metadata ptr %ix, metadata !2423, metadata !DIExpression()), !dbg !2462
  call void @llvm.lifetime.start.p0(i64 4, ptr %iy) #5, !dbg !2460
  tail call void @llvm.dbg.declare(metadata ptr %iy, metadata !2424, metadata !DIExpression()), !dbg !2463
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_accurate) #5, !dbg !2464
  tail call void @llvm.dbg.declare(metadata ptr %eps_accurate, metadata !2425, metadata !DIExpression()), !dbg !2465
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_out) #5, !dbg !2464
  tail call void @llvm.dbg.declare(metadata ptr %eps_out, metadata !2426, metadata !DIExpression()), !dbg !2466
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp1) #5, !dbg !2464
  tail call void @llvm.dbg.declare(metadata ptr %tmp1, metadata !2427, metadata !DIExpression()), !dbg !2467
  call void @llvm.lifetime.start.p0(i64 8, ptr %S) #5, !dbg !2464
  tail call void @llvm.dbg.declare(metadata ptr %S, metadata !2428, metadata !DIExpression()), !dbg !2468
  call void @llvm.lifetime.start.p0(i64 8, ptr %S1) #5, !dbg !2464
  tail call void @llvm.dbg.declare(metadata ptr %S1, metadata !2429, metadata !DIExpression()), !dbg !2469
  call void @llvm.lifetime.start.p0(i64 8, ptr %S2) #5, !dbg !2464
  tail call void @llvm.dbg.declare(metadata ptr %S2, metadata !2430, metadata !DIExpression()), !dbg !2470
  call void @llvm.lifetime.start.p0(i64 8, ptr %U) #5, !dbg !2464
  tail call void @llvm.dbg.declare(metadata ptr %U, metadata !2431, metadata !DIExpression()), !dbg !2471
  call void @llvm.lifetime.start.p0(i64 16, ptr %prod) #5, !dbg !2464
  tail call void @llvm.dbg.declare(metadata ptr %prod, metadata !2432, metadata !DIExpression()), !dbg !2472
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #5, !dbg !2464
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2433, metadata !DIExpression()), !dbg !2473
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_d) #5, !dbg !2474
  tail call void @llvm.dbg.declare(metadata ptr %un_d, metadata !2434, metadata !DIExpression()), !dbg !2475
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_accurate) #5, !dbg !2474
  tail call void @llvm.dbg.declare(metadata ptr %un_accurate, metadata !2435, metadata !DIExpression()), !dbg !2476
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_out) #5, !dbg !2474
  tail call void @llvm.dbg.declare(metadata ptr %un_out, metadata !2436, metadata !DIExpression()), !dbg !2477
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_i) #5, !dbg !2478
  tail call void @llvm.dbg.declare(metadata ptr %x_i, metadata !2437, metadata !DIExpression()), !dbg !2479
  %0 = load ptr, ptr %x.addr, align 8, !dbg !2480, !tbaa !90
  store ptr %0, ptr %x_i, align 8, !dbg !2479, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_i) #5, !dbg !2481
  tail call void @llvm.dbg.declare(metadata ptr %y_i, metadata !2438, metadata !DIExpression()), !dbg !2482
  %1 = load ptr, ptr %y.addr, align 8, !dbg !2483, !tbaa !90
  store ptr %1, ptr %y_i, align 8, !dbg !2482, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_i) #5, !dbg !2484
  tail call void @llvm.dbg.declare(metadata ptr %alpha_i, metadata !2439, metadata !DIExpression()), !dbg !2485
  %2 = load ptr, ptr %alpha.addr, align 8, !dbg !2486, !tbaa !90
  store ptr %2, ptr %alpha_i, align 8, !dbg !2485, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta_i) #5, !dbg !2487
  tail call void @llvm.dbg.declare(metadata ptr %beta_i, metadata !2440, metadata !DIExpression()), !dbg !2488
  %3 = load ptr, ptr %beta.addr, align 8, !dbg !2489, !tbaa !90
  store ptr %3, ptr %beta_i, align 8, !dbg !2488, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %rin_i) #5, !dbg !2490
  tail call void @llvm.dbg.declare(metadata ptr %rin_i, metadata !2441, metadata !DIExpression()), !dbg !2491
  %4 = load ptr, ptr %rin.addr, align 8, !dbg !2492, !tbaa !90
  store ptr %4, ptr %rin_i, align 8, !dbg !2491, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %rout_i) #5, !dbg !2493
  tail call void @llvm.dbg.declare(metadata ptr %rout_i, metadata !2442, metadata !DIExpression()), !dbg !2494
  %5 = load ptr, ptr %rout.addr, align 8, !dbg !2495, !tbaa !90
  store ptr %5, ptr %rout_i, align 8, !dbg !2494, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_ii) #5, !dbg !2496
  tail call void @llvm.dbg.declare(metadata ptr %x_ii, metadata !2443, metadata !DIExpression()), !dbg !2497
  call void @llvm.lifetime.start.p0(i64 16, ptr %y_ii) #5, !dbg !2498
  tail call void @llvm.dbg.declare(metadata ptr %y_ii, metadata !2444, metadata !DIExpression()), !dbg !2499
  %6 = load i32, ptr %incy.addr, align 4, !dbg !2500, !tbaa !73
  %mul = mul nsw i32 %6, 2, !dbg !2500
  store i32 %mul, ptr %incy.addr, align 4, !dbg !2500, !tbaa !73
  store i32 0, ptr %ix, align 4, !dbg !2501, !tbaa !73
  store i32 0, ptr %iy, align 4, !dbg !2502, !tbaa !73
  %7 = load i32, ptr %incx.addr, align 4, !dbg !2503, !tbaa !73
  %cmp = icmp slt i32 %7, 0, !dbg !2505
  br i1 %cmp, label %if.then, label %if.end, !dbg !2506

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %n.addr, align 4, !dbg !2507, !tbaa !73
  %sub = sub nsw i32 %8, 1, !dbg !2508
  %sub1 = sub nsw i32 0, %sub, !dbg !2509
  %9 = load i32, ptr %incx.addr, align 4, !dbg !2510, !tbaa !73
  %mul2 = mul nsw i32 %sub1, %9, !dbg !2511
  store i32 %mul2, ptr %ix, align 4, !dbg !2512, !tbaa !73
  br label %if.end, !dbg !2513

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, ptr %incy.addr, align 4, !dbg !2514, !tbaa !73
  %cmp3 = icmp slt i32 %10, 0, !dbg !2516
  br i1 %cmp3, label %if.then4, label %if.end8, !dbg !2517

if.then4:                                         ; preds = %if.end
  %11 = load i32, ptr %n.addr, align 4, !dbg !2518, !tbaa !73
  %sub5 = sub nsw i32 %11, 1, !dbg !2519
  %sub6 = sub nsw i32 0, %sub5, !dbg !2520
  %12 = load i32, ptr %incy.addr, align 4, !dbg !2521, !tbaa !73
  %mul7 = mul nsw i32 %sub6, %12, !dbg !2522
  store i32 %mul7, ptr %iy, align 4, !dbg !2523, !tbaa !73
  br label %if.end8, !dbg !2524

if.end8:                                          ; preds = %if.then4, %if.end
  store double 0.000000e+00, ptr %S2, align 8, !dbg !2525, !tbaa !86
  store double 0.000000e+00, ptr %S1, align 8, !dbg !2526, !tbaa !86
  store double 0.000000e+00, ptr %S, align 8, !dbg !2527, !tbaa !86
  store i32 0, ptr %i, align 4, !dbg !2528, !tbaa !73
  br label %for.cond, !dbg !2530

for.cond:                                         ; preds = %for.inc, %if.end8
  %13 = load i32, ptr %i, align 4, !dbg !2531, !tbaa !73
  %14 = load i32, ptr %n.addr, align 4, !dbg !2533, !tbaa !73
  %cmp9 = icmp slt i32 %13, %14, !dbg !2534
  br i1 %cmp9, label %for.body, label %for.end, !dbg !2535

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %x_i, align 8, !dbg !2536, !tbaa !90
  %16 = load i32, ptr %ix, align 4, !dbg !2538, !tbaa !73
  %idxprom = sext i32 %16 to i64, !dbg !2536
  %arrayidx = getelementptr inbounds double, ptr %15, i64 %idxprom, !dbg !2536
  %17 = load double, ptr %arrayidx, align 8, !dbg !2536, !tbaa !86
  store double %17, ptr %x_ii, align 8, !dbg !2539, !tbaa !86
  %18 = load ptr, ptr %y_i, align 8, !dbg !2540, !tbaa !90
  %19 = load i32, ptr %iy, align 4, !dbg !2541, !tbaa !73
  %idxprom10 = sext i32 %19 to i64, !dbg !2540
  %arrayidx11 = getelementptr inbounds double, ptr %18, i64 %idxprom10, !dbg !2540
  %20 = load double, ptr %arrayidx11, align 8, !dbg !2540, !tbaa !86
  %arrayidx12 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 0, !dbg !2542
  store double %20, ptr %arrayidx12, align 16, !dbg !2543, !tbaa !86
  %21 = load ptr, ptr %y_i, align 8, !dbg !2544, !tbaa !90
  %22 = load i32, ptr %iy, align 4, !dbg !2545, !tbaa !73
  %add = add nsw i32 %22, 1, !dbg !2546
  %idxprom13 = sext i32 %add to i64, !dbg !2544
  %arrayidx14 = getelementptr inbounds double, ptr %21, i64 %idxprom13, !dbg !2544
  %23 = load double, ptr %arrayidx14, align 8, !dbg !2544, !tbaa !86
  %arrayidx15 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 1, !dbg !2547
  store double %23, ptr %arrayidx15, align 8, !dbg !2548, !tbaa !86
  %24 = load double, ptr %x_ii, align 8, !dbg !2549, !tbaa !86
  %25 = call double @llvm.fabs.f64(double %24), !dbg !2550
  %26 = load double, ptr %S1, align 8, !dbg !2551, !tbaa !86
  %add16 = fadd double %26, %25, !dbg !2551
  store double %add16, ptr %S1, align 8, !dbg !2551, !tbaa !86
  %arrayidx17 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 0, !dbg !2552
  %27 = load double, ptr %arrayidx17, align 16, !dbg !2552, !tbaa !86
  %arrayidx18 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 0, !dbg !2553
  %28 = load double, ptr %arrayidx18, align 16, !dbg !2553, !tbaa !86
  %arrayidx20 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 1, !dbg !2554
  %29 = load double, ptr %arrayidx20, align 8, !dbg !2554, !tbaa !86
  %arrayidx21 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 1, !dbg !2555
  %30 = load double, ptr %arrayidx21, align 8, !dbg !2555, !tbaa !86
  %mul22 = fmul double %29, %30, !dbg !2556
  %31 = call double @llvm.fmuladd.f64(double %27, double %28, double %mul22), !dbg !2557
  %call = call double @sqrt(double noundef %31) #5, !dbg !2558
  %32 = load double, ptr %S2, align 8, !dbg !2559, !tbaa !86
  %add23 = fadd double %32, %call, !dbg !2559
  store double %add23, ptr %S2, align 8, !dbg !2559, !tbaa !86
  %arrayidx24 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 0, !dbg !2560
  %33 = load double, ptr %arrayidx24, align 16, !dbg !2560, !tbaa !86
  %34 = load double, ptr %x_ii, align 8, !dbg !2562, !tbaa !86
  %mul25 = fmul double %33, %34, !dbg !2563
  %arrayidx26 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !2564
  store double %mul25, ptr %arrayidx26, align 16, !dbg !2565, !tbaa !86
  %arrayidx27 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 1, !dbg !2566
  %35 = load double, ptr %arrayidx27, align 8, !dbg !2566, !tbaa !86
  %36 = load double, ptr %x_ii, align 8, !dbg !2567, !tbaa !86
  %mul28 = fmul double %35, %36, !dbg !2568
  %arrayidx29 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !2569
  store double %mul28, ptr %arrayidx29, align 8, !dbg !2570, !tbaa !86
  %arrayidx30 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !2571
  %37 = load double, ptr %arrayidx30, align 16, !dbg !2571, !tbaa !86
  %arrayidx31 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !2572
  %38 = load double, ptr %arrayidx31, align 16, !dbg !2572, !tbaa !86
  %arrayidx33 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !2573
  %39 = load double, ptr %arrayidx33, align 8, !dbg !2573, !tbaa !86
  %arrayidx34 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !2574
  %40 = load double, ptr %arrayidx34, align 8, !dbg !2574, !tbaa !86
  %mul35 = fmul double %39, %40, !dbg !2575
  %41 = call double @llvm.fmuladd.f64(double %37, double %38, double %mul35), !dbg !2576
  %call36 = call double @sqrt(double noundef %41) #5, !dbg !2577
  %42 = load double, ptr %S, align 8, !dbg !2578, !tbaa !86
  %add37 = fadd double %42, %call36, !dbg !2578
  store double %add37, ptr %S, align 8, !dbg !2578, !tbaa !86
  %43 = load i32, ptr %incx.addr, align 4, !dbg !2579, !tbaa !73
  %44 = load i32, ptr %ix, align 4, !dbg !2580, !tbaa !73
  %add38 = add nsw i32 %44, %43, !dbg !2580
  store i32 %add38, ptr %ix, align 4, !dbg !2580, !tbaa !73
  %45 = load i32, ptr %incy.addr, align 4, !dbg !2581, !tbaa !73
  %46 = load i32, ptr %iy, align 4, !dbg !2582, !tbaa !73
  %add39 = add nsw i32 %46, %45, !dbg !2582
  store i32 %add39, ptr %iy, align 4, !dbg !2582, !tbaa !73
  br label %for.inc, !dbg !2583

for.inc:                                          ; preds = %for.body
  %47 = load i32, ptr %i, align 4, !dbg !2584, !tbaa !73
  %inc = add nsw i32 %47, 1, !dbg !2584
  store i32 %inc, ptr %i, align 4, !dbg !2584, !tbaa !73
  br label %for.cond, !dbg !2585, !llvm.loop !2586

for.end:                                          ; preds = %for.cond
  %48 = load ptr, ptr %alpha_i, align 8, !dbg !2588, !tbaa !90
  %arrayidx40 = getelementptr inbounds double, ptr %48, i64 0, !dbg !2588
  %49 = load double, ptr %arrayidx40, align 8, !dbg !2588, !tbaa !86
  %50 = load ptr, ptr %alpha_i, align 8, !dbg !2589, !tbaa !90
  %arrayidx41 = getelementptr inbounds double, ptr %50, i64 0, !dbg !2589
  %51 = load double, ptr %arrayidx41, align 8, !dbg !2589, !tbaa !86
  %52 = load ptr, ptr %alpha_i, align 8, !dbg !2590, !tbaa !90
  %arrayidx43 = getelementptr inbounds double, ptr %52, i64 1, !dbg !2590
  %53 = load double, ptr %arrayidx43, align 8, !dbg !2590, !tbaa !86
  %54 = load ptr, ptr %alpha_i, align 8, !dbg !2591, !tbaa !90
  %arrayidx44 = getelementptr inbounds double, ptr %54, i64 1, !dbg !2591
  %55 = load double, ptr %arrayidx44, align 8, !dbg !2591, !tbaa !86
  %mul45 = fmul double %53, %55, !dbg !2592
  %56 = call double @llvm.fmuladd.f64(double %49, double %51, double %mul45), !dbg !2593
  %call46 = call double @sqrt(double noundef %56) #5, !dbg !2594
  %57 = load double, ptr %S, align 8, !dbg !2595, !tbaa !86
  %mul47 = fmul double %57, %call46, !dbg !2595
  store double %mul47, ptr %S, align 8, !dbg !2595, !tbaa !86
  %58 = load ptr, ptr %beta_i, align 8, !dbg !2596, !tbaa !90
  %arrayidx48 = getelementptr inbounds double, ptr %58, i64 0, !dbg !2596
  %59 = load double, ptr %arrayidx48, align 8, !dbg !2596, !tbaa !86
  %60 = load ptr, ptr %rin_i, align 8, !dbg !2598, !tbaa !90
  %arrayidx49 = getelementptr inbounds double, ptr %60, i64 0, !dbg !2598
  %61 = load double, ptr %arrayidx49, align 8, !dbg !2598, !tbaa !86
  %62 = load ptr, ptr %beta_i, align 8, !dbg !2599, !tbaa !90
  %arrayidx51 = getelementptr inbounds double, ptr %62, i64 1, !dbg !2599
  %63 = load double, ptr %arrayidx51, align 8, !dbg !2599, !tbaa !86
  %64 = load ptr, ptr %rin_i, align 8, !dbg !2600, !tbaa !90
  %arrayidx52 = getelementptr inbounds double, ptr %64, i64 1, !dbg !2600
  %65 = load double, ptr %arrayidx52, align 8, !dbg !2600, !tbaa !86
  %mul53 = fmul double %63, %65, !dbg !2601
  %neg = fneg double %mul53, !dbg !2602
  %66 = call double @llvm.fmuladd.f64(double %59, double %61, double %neg), !dbg !2602
  %arrayidx54 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !2603
  store double %66, ptr %arrayidx54, align 16, !dbg !2604, !tbaa !86
  %67 = load ptr, ptr %beta_i, align 8, !dbg !2605, !tbaa !90
  %arrayidx55 = getelementptr inbounds double, ptr %67, i64 0, !dbg !2605
  %68 = load double, ptr %arrayidx55, align 8, !dbg !2605, !tbaa !86
  %69 = load ptr, ptr %rin_i, align 8, !dbg !2606, !tbaa !90
  %arrayidx56 = getelementptr inbounds double, ptr %69, i64 1, !dbg !2606
  %70 = load double, ptr %arrayidx56, align 8, !dbg !2606, !tbaa !86
  %71 = load ptr, ptr %beta_i, align 8, !dbg !2607, !tbaa !90
  %arrayidx58 = getelementptr inbounds double, ptr %71, i64 1, !dbg !2607
  %72 = load double, ptr %arrayidx58, align 8, !dbg !2607, !tbaa !86
  %73 = load ptr, ptr %rin_i, align 8, !dbg !2608, !tbaa !90
  %arrayidx59 = getelementptr inbounds double, ptr %73, i64 0, !dbg !2608
  %74 = load double, ptr %arrayidx59, align 8, !dbg !2608, !tbaa !86
  %mul60 = fmul double %72, %74, !dbg !2609
  %75 = call double @llvm.fmuladd.f64(double %68, double %70, double %mul60), !dbg !2610
  %arrayidx61 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !2611
  store double %75, ptr %arrayidx61, align 8, !dbg !2612, !tbaa !86
  %arrayidx62 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !2613
  %76 = load double, ptr %arrayidx62, align 16, !dbg !2613, !tbaa !86
  %arrayidx63 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !2614
  %77 = load double, ptr %arrayidx63, align 16, !dbg !2614, !tbaa !86
  %arrayidx65 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !2615
  %78 = load double, ptr %arrayidx65, align 8, !dbg !2615, !tbaa !86
  %arrayidx66 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !2616
  %79 = load double, ptr %arrayidx66, align 8, !dbg !2616, !tbaa !86
  %mul67 = fmul double %78, %79, !dbg !2617
  %80 = call double @llvm.fmuladd.f64(double %76, double %77, double %mul67), !dbg !2618
  %call68 = call double @sqrt(double noundef %80) #5, !dbg !2619
  %81 = load double, ptr %S, align 8, !dbg !2620, !tbaa !86
  %add69 = fadd double %81, %call68, !dbg !2620
  store double %add69, ptr %S, align 8, !dbg !2620, !tbaa !86
  %call70 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !2621
  %conv = sitofp i32 %call70 to double, !dbg !2622
  %call71 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !2623
  %conv72 = sitofp i32 %call71 to double, !dbg !2624
  %call73 = call double @pow(double noundef %conv, double noundef %conv72) #5, !dbg !2625
  store double %call73, ptr %un_d, align 8, !dbg !2626, !tbaa !86
  %82 = load double, ptr %S, align 8, !dbg !2627, !tbaa !86
  %83 = load double, ptr %un_d, align 8, !dbg !2627, !tbaa !86
  %cmp74 = fcmp ogt double %82, %83, !dbg !2627
  br i1 %cmp74, label %cond.true, label %cond.false, !dbg !2627

cond.true:                                        ; preds = %for.end
  %84 = load double, ptr %S, align 8, !dbg !2627, !tbaa !86
  br label %cond.end, !dbg !2627

cond.false:                                       ; preds = %for.end
  %85 = load double, ptr %un_d, align 8, !dbg !2627, !tbaa !86
  br label %cond.end, !dbg !2627

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %84, %cond.true ], [ %85, %cond.false ], !dbg !2627
  store double %cond, ptr %S, align 8, !dbg !2628, !tbaa !86
  %call76 = call double @power(i32 noundef 2, i32 noundef -106), !dbg !2629
  store double %call76, ptr %eps_accurate, align 8, !dbg !2630, !tbaa !86
  %call77 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 214), !dbg !2631
  %conv78 = sitofp i32 %call77 to double, !dbg !2632
  %call79 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 214), !dbg !2633
  %conv80 = sitofp i32 %call79 to double, !dbg !2634
  %call81 = call double @pow(double noundef %conv78, double noundef %conv80) #5, !dbg !2635
  store double %call81, ptr %un_accurate, align 8, !dbg !2636, !tbaa !86
  %call82 = call double @power(i32 noundef 2, i32 noundef -53), !dbg !2637
  store double %call82, ptr %eps_out, align 8, !dbg !2638, !tbaa !86
  %call83 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !2639
  %conv84 = sitofp i32 %call83 to double, !dbg !2640
  %call85 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !2641
  %conv86 = sitofp i32 %call85 to double, !dbg !2642
  %call87 = call double @pow(double noundef %conv84, double noundef %conv86) #5, !dbg !2643
  store double %call87, ptr %un_out, align 8, !dbg !2644, !tbaa !86
  %86 = load ptr, ptr %rout_i, align 8, !dbg !2645, !tbaa !90
  %arrayidx88 = getelementptr inbounds double, ptr %86, i64 0, !dbg !2645
  %87 = load double, ptr %arrayidx88, align 8, !dbg !2645, !tbaa !86
  %88 = load ptr, ptr %r_true_l.addr, align 8, !dbg !2646, !tbaa !90
  %arrayidx89 = getelementptr inbounds double, ptr %88, i64 0, !dbg !2646
  %89 = load double, ptr %arrayidx89, align 8, !dbg !2646, !tbaa !86
  %sub90 = fsub double %87, %89, !dbg !2647
  %90 = load ptr, ptr %r_true_t.addr, align 8, !dbg !2648, !tbaa !90
  %arrayidx91 = getelementptr inbounds double, ptr %90, i64 0, !dbg !2648
  %91 = load double, ptr %arrayidx91, align 8, !dbg !2648, !tbaa !86
  %sub92 = fsub double %sub90, %91, !dbg !2649
  %arrayidx93 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !2650
  store double %sub92, ptr %arrayidx93, align 16, !dbg !2651, !tbaa !86
  %92 = load ptr, ptr %rout_i, align 8, !dbg !2652, !tbaa !90
  %arrayidx94 = getelementptr inbounds double, ptr %92, i64 1, !dbg !2652
  %93 = load double, ptr %arrayidx94, align 8, !dbg !2652, !tbaa !86
  %94 = load ptr, ptr %r_true_l.addr, align 8, !dbg !2653, !tbaa !90
  %arrayidx95 = getelementptr inbounds double, ptr %94, i64 1, !dbg !2653
  %95 = load double, ptr %arrayidx95, align 8, !dbg !2653, !tbaa !86
  %sub96 = fsub double %93, %95, !dbg !2654
  %96 = load ptr, ptr %r_true_t.addr, align 8, !dbg !2655, !tbaa !90
  %arrayidx97 = getelementptr inbounds double, ptr %96, i64 1, !dbg !2655
  %97 = load double, ptr %arrayidx97, align 8, !dbg !2655, !tbaa !86
  %sub98 = fsub double %sub96, %97, !dbg !2656
  %arrayidx99 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !2657
  store double %sub98, ptr %arrayidx99, align 8, !dbg !2658, !tbaa !86
  %arrayidx100 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !2659
  %98 = load double, ptr %arrayidx100, align 16, !dbg !2659, !tbaa !86
  %arrayidx101 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !2660
  %99 = load double, ptr %arrayidx101, align 16, !dbg !2660, !tbaa !86
  %arrayidx103 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !2661
  %100 = load double, ptr %arrayidx103, align 8, !dbg !2661, !tbaa !86
  %arrayidx104 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !2662
  %101 = load double, ptr %arrayidx104, align 8, !dbg !2662, !tbaa !86
  %mul105 = fmul double %100, %101, !dbg !2663
  %102 = call double @llvm.fmuladd.f64(double %98, double %99, double %mul105), !dbg !2664
  %call106 = call double @sqrt(double noundef %102) #5, !dbg !2665
  store double %call106, ptr %tmp1, align 8, !dbg !2666, !tbaa !86
  %103 = load ptr, ptr %alpha_i, align 8, !dbg !2667, !tbaa !90
  %arrayidx107 = getelementptr inbounds double, ptr %103, i64 0, !dbg !2667
  %104 = load double, ptr %arrayidx107, align 8, !dbg !2667, !tbaa !86
  %105 = load ptr, ptr %alpha_i, align 8, !dbg !2668, !tbaa !90
  %arrayidx108 = getelementptr inbounds double, ptr %105, i64 0, !dbg !2668
  %106 = load double, ptr %arrayidx108, align 8, !dbg !2668, !tbaa !86
  %107 = load ptr, ptr %alpha_i, align 8, !dbg !2669, !tbaa !90
  %arrayidx110 = getelementptr inbounds double, ptr %107, i64 1, !dbg !2669
  %108 = load double, ptr %arrayidx110, align 8, !dbg !2669, !tbaa !86
  %109 = load ptr, ptr %alpha_i, align 8, !dbg !2670, !tbaa !90
  %arrayidx111 = getelementptr inbounds double, ptr %109, i64 1, !dbg !2670
  %110 = load double, ptr %arrayidx111, align 8, !dbg !2670, !tbaa !86
  %mul112 = fmul double %108, %110, !dbg !2671
  %111 = call double @llvm.fmuladd.f64(double %104, double %106, double %mul112), !dbg !2672
  %call113 = call double @sqrt(double noundef %111) #5, !dbg !2673
  %mul114 = fmul double 2.000000e+00, %call113, !dbg !2674
  %112 = load i32, ptr %n.addr, align 4, !dbg !2675, !tbaa !73
  %conv115 = sitofp i32 %112 to double, !dbg !2675
  %113 = call double @llvm.fmuladd.f64(double %mul114, double %conv115, double 3.000000e+00), !dbg !2676
  store double %113, ptr %U, align 8, !dbg !2677, !tbaa !86
  %114 = load double, ptr %U, align 8, !dbg !2678, !tbaa !86
  %115 = load double, ptr %S1, align 8, !dbg !2678, !tbaa !86
  %116 = load i32, ptr %n.addr, align 4, !dbg !2678, !tbaa !73
  %mul117 = mul nsw i32 2, %116, !dbg !2678
  %conv118 = sitofp i32 %mul117 to double, !dbg !2678
  %add119 = fadd double %115, %conv118, !dbg !2678
  %add120 = fadd double %add119, 1.000000e+00, !dbg !2678
  %cmp121 = fcmp ogt double %114, %add120, !dbg !2678
  br i1 %cmp121, label %cond.true123, label %cond.false124, !dbg !2678

cond.true123:                                     ; preds = %cond.end
  %117 = load double, ptr %U, align 8, !dbg !2678, !tbaa !86
  br label %cond.end129, !dbg !2678

cond.false124:                                    ; preds = %cond.end
  %118 = load double, ptr %S1, align 8, !dbg !2678, !tbaa !86
  %119 = load i32, ptr %n.addr, align 4, !dbg !2678, !tbaa !73
  %mul125 = mul nsw i32 2, %119, !dbg !2678
  %conv126 = sitofp i32 %mul125 to double, !dbg !2678
  %add127 = fadd double %118, %conv126, !dbg !2678
  %add128 = fadd double %add127, 1.000000e+00, !dbg !2678
  br label %cond.end129, !dbg !2678

cond.end129:                                      ; preds = %cond.false124, %cond.true123
  %cond130 = phi double [ %117, %cond.true123 ], [ %add128, %cond.false124 ], !dbg !2678
  store double %cond130, ptr %U, align 8, !dbg !2679, !tbaa !86
  %120 = load double, ptr %U, align 8, !dbg !2680, !tbaa !86
  %121 = load double, ptr %S2, align 8, !dbg !2680, !tbaa !86
  %122 = load i32, ptr %n.addr, align 4, !dbg !2680, !tbaa !73
  %mul131 = mul nsw i32 2, %122, !dbg !2680
  %conv132 = sitofp i32 %mul131 to double, !dbg !2680
  %add133 = fadd double %121, %conv132, !dbg !2680
  %add134 = fadd double %add133, 1.000000e+00, !dbg !2680
  %cmp135 = fcmp ogt double %120, %add134, !dbg !2680
  br i1 %cmp135, label %cond.true137, label %cond.false138, !dbg !2680

cond.true137:                                     ; preds = %cond.end129
  %123 = load double, ptr %U, align 8, !dbg !2680, !tbaa !86
  br label %cond.end143, !dbg !2680

cond.false138:                                    ; preds = %cond.end129
  %124 = load double, ptr %S2, align 8, !dbg !2680, !tbaa !86
  %125 = load i32, ptr %n.addr, align 4, !dbg !2680, !tbaa !73
  %mul139 = mul nsw i32 2, %125, !dbg !2680
  %conv140 = sitofp i32 %mul139 to double, !dbg !2680
  %add141 = fadd double %124, %conv140, !dbg !2680
  %add142 = fadd double %add141, 1.000000e+00, !dbg !2680
  br label %cond.end143, !dbg !2680

cond.end143:                                      ; preds = %cond.false138, %cond.true137
  %cond144 = phi double [ %123, %cond.true137 ], [ %add142, %cond.false138 ], !dbg !2680
  %126 = load double, ptr %un_int.addr, align 8, !dbg !2681, !tbaa !86
  %127 = load double, ptr %un_accurate, align 8, !dbg !2682, !tbaa !86
  %add145 = fadd double %126, %127, !dbg !2683
  %128 = load double, ptr %un_out, align 8, !dbg !2684, !tbaa !86
  %129 = call double @llvm.fmuladd.f64(double %cond144, double %add145, double %128), !dbg !2685
  store double %129, ptr %U, align 8, !dbg !2686, !tbaa !86
  %call147 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !2687
  %mul148 = fmul double 2.000000e+00, %call147, !dbg !2688
  %130 = load double, ptr %U, align 8, !dbg !2689, !tbaa !86
  %mul149 = fmul double %130, %mul148, !dbg !2689
  store double %mul149, ptr %U, align 8, !dbg !2689, !tbaa !86
  %131 = load double, ptr %tmp1, align 8, !dbg !2690, !tbaa !86
  %call150 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !2691
  %mul151 = fmul double 2.000000e+00, %call150, !dbg !2692
  %132 = load i32, ptr %n.addr, align 4, !dbg !2693, !tbaa !73
  %add152 = add nsw i32 %132, 2, !dbg !2694
  %conv153 = sitofp i32 %add152 to double, !dbg !2695
  %mul154 = fmul double %mul151, %conv153, !dbg !2696
  %133 = load double, ptr %eps_int.addr, align 8, !dbg !2697, !tbaa !86
  %134 = load double, ptr %eps_accurate, align 8, !dbg !2698, !tbaa !86
  %add155 = fadd double %133, %134, !dbg !2699
  %mul156 = fmul double %mul154, %add155, !dbg !2700
  %135 = load double, ptr %S, align 8, !dbg !2701, !tbaa !86
  %call158 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !2702
  %136 = load double, ptr %eps_out, align 8, !dbg !2703, !tbaa !86
  %mul159 = fmul double %call158, %136, !dbg !2704
  %137 = load ptr, ptr %r_true_l.addr, align 8, !dbg !2705, !tbaa !90
  %arrayidx160 = getelementptr inbounds double, ptr %137, i64 0, !dbg !2705
  %138 = load double, ptr %arrayidx160, align 8, !dbg !2705, !tbaa !86
  %139 = load ptr, ptr %r_true_l.addr, align 8, !dbg !2706, !tbaa !90
  %arrayidx161 = getelementptr inbounds double, ptr %139, i64 0, !dbg !2706
  %140 = load double, ptr %arrayidx161, align 8, !dbg !2706, !tbaa !86
  %141 = load ptr, ptr %r_true_l.addr, align 8, !dbg !2707, !tbaa !90
  %arrayidx163 = getelementptr inbounds double, ptr %141, i64 1, !dbg !2707
  %142 = load double, ptr %arrayidx163, align 8, !dbg !2707, !tbaa !86
  %143 = load ptr, ptr %r_true_l.addr, align 8, !dbg !2708, !tbaa !90
  %arrayidx164 = getelementptr inbounds double, ptr %143, i64 1, !dbg !2708
  %144 = load double, ptr %arrayidx164, align 8, !dbg !2708, !tbaa !86
  %mul165 = fmul double %142, %144, !dbg !2709
  %145 = call double @llvm.fmuladd.f64(double %138, double %140, double %mul165), !dbg !2710
  %call166 = call double @sqrt(double noundef %145) #5, !dbg !2711
  %mul167 = fmul double %mul159, %call166, !dbg !2712
  %146 = call double @llvm.fmuladd.f64(double %mul156, double %135, double %mul167), !dbg !2713
  %147 = load double, ptr %U, align 8, !dbg !2714, !tbaa !86
  %add168 = fadd double %146, %147, !dbg !2715
  %div = fdiv double %131, %add168, !dbg !2716
  %148 = load ptr, ptr %test_ratio.addr, align 8, !dbg !2717, !tbaa !90
  store double %div, ptr %148, align 8, !dbg !2718, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 16, ptr %y_ii) #5, !dbg !2719
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_ii) #5, !dbg !2719
  call void @llvm.lifetime.end.p0(i64 8, ptr %rout_i) #5, !dbg !2719
  call void @llvm.lifetime.end.p0(i64 8, ptr %rin_i) #5, !dbg !2719
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta_i) #5, !dbg !2719
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_i) #5, !dbg !2719
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_i) #5, !dbg !2719
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_i) #5, !dbg !2719
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_out) #5, !dbg !2719
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_accurate) #5, !dbg !2719
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_d) #5, !dbg !2719
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #5, !dbg !2719
  call void @llvm.lifetime.end.p0(i64 16, ptr %prod) #5, !dbg !2719
  call void @llvm.lifetime.end.p0(i64 8, ptr %U) #5, !dbg !2719
  call void @llvm.lifetime.end.p0(i64 8, ptr %S2) #5, !dbg !2719
  call void @llvm.lifetime.end.p0(i64 8, ptr %S1) #5, !dbg !2719
  call void @llvm.lifetime.end.p0(i64 8, ptr %S) #5, !dbg !2719
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp1) #5, !dbg !2719
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_out) #5, !dbg !2719
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_accurate) #5, !dbg !2719
  call void @llvm.lifetime.end.p0(i64 4, ptr %iy) #5, !dbg !2719
  call void @llvm.lifetime.end.p0(i64 4, ptr %ix) #5, !dbg !2719
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !2719
  ret void, !dbg !2719
}

; Function Attrs: nounwind uwtable
define dso_local void @test_BLAS_zdot_z_d(i32 noundef %n, i32 noundef %conj, ptr noundef %alpha, ptr noundef %beta, ptr noundef %rin, ptr noundef %rout, ptr noundef %r_true_l, ptr noundef %r_true_t, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, double noundef %eps_int, double noundef %un_int, ptr noundef %test_ratio) #0 !dbg !2720 {
entry:
  %n.addr = alloca i32, align 4
  %conj.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %rin.addr = alloca ptr, align 8
  %rout.addr = alloca ptr, align 8
  %r_true_l.addr = alloca ptr, align 8
  %r_true_t.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %eps_int.addr = alloca double, align 8
  %un_int.addr = alloca double, align 8
  %test_ratio.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %eps_accurate = alloca double, align 8
  %eps_out = alloca double, align 8
  %tmp1 = alloca double, align 8
  %S = alloca double, align 8
  %S1 = alloca double, align 8
  %S2 = alloca double, align 8
  %U = alloca double, align 8
  %prod = alloca [2 x double], align 16
  %tmp = alloca [2 x double], align 16
  %un_d = alloca double, align 8
  %un_accurate = alloca double, align 8
  %un_out = alloca double, align 8
  %x_i = alloca ptr, align 8
  %y_i = alloca ptr, align 8
  %alpha_i = alloca ptr, align 8
  %beta_i = alloca ptr, align 8
  %rin_i = alloca ptr, align 8
  %rout_i = alloca ptr, align 8
  %x_ii = alloca [2 x double], align 16
  %y_ii = alloca double, align 8
  store i32 %n, ptr %n.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2724, metadata !DIExpression()), !dbg !2762
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !78
  tail call void @llvm.dbg.declare(metadata ptr %conj.addr, metadata !2725, metadata !DIExpression()), !dbg !2763
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !2726, metadata !DIExpression()), !dbg !2764
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %beta.addr, metadata !2727, metadata !DIExpression()), !dbg !2765
  store ptr %rin, ptr %rin.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %rin.addr, metadata !2728, metadata !DIExpression()), !dbg !2766
  store ptr %rout, ptr %rout.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %rout.addr, metadata !2729, metadata !DIExpression()), !dbg !2767
  store ptr %r_true_l, ptr %r_true_l.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %r_true_l.addr, metadata !2730, metadata !DIExpression()), !dbg !2768
  store ptr %r_true_t, ptr %r_true_t.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %r_true_t.addr, metadata !2731, metadata !DIExpression()), !dbg !2769
  store ptr %x, ptr %x.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !2732, metadata !DIExpression()), !dbg !2770
  store i32 %incx, ptr %incx.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incx.addr, metadata !2733, metadata !DIExpression()), !dbg !2771
  store ptr %y, ptr %y.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !2734, metadata !DIExpression()), !dbg !2772
  store i32 %incy, ptr %incy.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incy.addr, metadata !2735, metadata !DIExpression()), !dbg !2773
  store double %eps_int, ptr %eps_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %eps_int.addr, metadata !2736, metadata !DIExpression()), !dbg !2774
  store double %un_int, ptr %un_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %un_int.addr, metadata !2737, metadata !DIExpression()), !dbg !2775
  store ptr %test_ratio, ptr %test_ratio.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %test_ratio.addr, metadata !2738, metadata !DIExpression()), !dbg !2776
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !2777
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2739, metadata !DIExpression()), !dbg !2778
  call void @llvm.lifetime.start.p0(i64 4, ptr %ix) #5, !dbg !2777
  tail call void @llvm.dbg.declare(metadata ptr %ix, metadata !2740, metadata !DIExpression()), !dbg !2779
  call void @llvm.lifetime.start.p0(i64 4, ptr %iy) #5, !dbg !2777
  tail call void @llvm.dbg.declare(metadata ptr %iy, metadata !2741, metadata !DIExpression()), !dbg !2780
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_accurate) #5, !dbg !2781
  tail call void @llvm.dbg.declare(metadata ptr %eps_accurate, metadata !2742, metadata !DIExpression()), !dbg !2782
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_out) #5, !dbg !2781
  tail call void @llvm.dbg.declare(metadata ptr %eps_out, metadata !2743, metadata !DIExpression()), !dbg !2783
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp1) #5, !dbg !2781
  tail call void @llvm.dbg.declare(metadata ptr %tmp1, metadata !2744, metadata !DIExpression()), !dbg !2784
  call void @llvm.lifetime.start.p0(i64 8, ptr %S) #5, !dbg !2781
  tail call void @llvm.dbg.declare(metadata ptr %S, metadata !2745, metadata !DIExpression()), !dbg !2785
  call void @llvm.lifetime.start.p0(i64 8, ptr %S1) #5, !dbg !2781
  tail call void @llvm.dbg.declare(metadata ptr %S1, metadata !2746, metadata !DIExpression()), !dbg !2786
  call void @llvm.lifetime.start.p0(i64 8, ptr %S2) #5, !dbg !2781
  tail call void @llvm.dbg.declare(metadata ptr %S2, metadata !2747, metadata !DIExpression()), !dbg !2787
  call void @llvm.lifetime.start.p0(i64 8, ptr %U) #5, !dbg !2781
  tail call void @llvm.dbg.declare(metadata ptr %U, metadata !2748, metadata !DIExpression()), !dbg !2788
  call void @llvm.lifetime.start.p0(i64 16, ptr %prod) #5, !dbg !2781
  tail call void @llvm.dbg.declare(metadata ptr %prod, metadata !2749, metadata !DIExpression()), !dbg !2789
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #5, !dbg !2781
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2750, metadata !DIExpression()), !dbg !2790
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_d) #5, !dbg !2791
  tail call void @llvm.dbg.declare(metadata ptr %un_d, metadata !2751, metadata !DIExpression()), !dbg !2792
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_accurate) #5, !dbg !2791
  tail call void @llvm.dbg.declare(metadata ptr %un_accurate, metadata !2752, metadata !DIExpression()), !dbg !2793
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_out) #5, !dbg !2791
  tail call void @llvm.dbg.declare(metadata ptr %un_out, metadata !2753, metadata !DIExpression()), !dbg !2794
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_i) #5, !dbg !2795
  tail call void @llvm.dbg.declare(metadata ptr %x_i, metadata !2754, metadata !DIExpression()), !dbg !2796
  %0 = load ptr, ptr %x.addr, align 8, !dbg !2797, !tbaa !90
  store ptr %0, ptr %x_i, align 8, !dbg !2796, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_i) #5, !dbg !2798
  tail call void @llvm.dbg.declare(metadata ptr %y_i, metadata !2755, metadata !DIExpression()), !dbg !2799
  %1 = load ptr, ptr %y.addr, align 8, !dbg !2800, !tbaa !90
  store ptr %1, ptr %y_i, align 8, !dbg !2799, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_i) #5, !dbg !2801
  tail call void @llvm.dbg.declare(metadata ptr %alpha_i, metadata !2756, metadata !DIExpression()), !dbg !2802
  %2 = load ptr, ptr %alpha.addr, align 8, !dbg !2803, !tbaa !90
  store ptr %2, ptr %alpha_i, align 8, !dbg !2802, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta_i) #5, !dbg !2804
  tail call void @llvm.dbg.declare(metadata ptr %beta_i, metadata !2757, metadata !DIExpression()), !dbg !2805
  %3 = load ptr, ptr %beta.addr, align 8, !dbg !2806, !tbaa !90
  store ptr %3, ptr %beta_i, align 8, !dbg !2805, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %rin_i) #5, !dbg !2807
  tail call void @llvm.dbg.declare(metadata ptr %rin_i, metadata !2758, metadata !DIExpression()), !dbg !2808
  %4 = load ptr, ptr %rin.addr, align 8, !dbg !2809, !tbaa !90
  store ptr %4, ptr %rin_i, align 8, !dbg !2808, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %rout_i) #5, !dbg !2810
  tail call void @llvm.dbg.declare(metadata ptr %rout_i, metadata !2759, metadata !DIExpression()), !dbg !2811
  %5 = load ptr, ptr %rout.addr, align 8, !dbg !2812, !tbaa !90
  store ptr %5, ptr %rout_i, align 8, !dbg !2811, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 16, ptr %x_ii) #5, !dbg !2813
  tail call void @llvm.dbg.declare(metadata ptr %x_ii, metadata !2760, metadata !DIExpression()), !dbg !2814
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_ii) #5, !dbg !2815
  tail call void @llvm.dbg.declare(metadata ptr %y_ii, metadata !2761, metadata !DIExpression()), !dbg !2816
  %6 = load i32, ptr %incx.addr, align 4, !dbg !2817, !tbaa !73
  %mul = mul nsw i32 %6, 2, !dbg !2817
  store i32 %mul, ptr %incx.addr, align 4, !dbg !2817, !tbaa !73
  store i32 0, ptr %ix, align 4, !dbg !2818, !tbaa !73
  store i32 0, ptr %iy, align 4, !dbg !2819, !tbaa !73
  %7 = load i32, ptr %incx.addr, align 4, !dbg !2820, !tbaa !73
  %cmp = icmp slt i32 %7, 0, !dbg !2822
  br i1 %cmp, label %if.then, label %if.end, !dbg !2823

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %n.addr, align 4, !dbg !2824, !tbaa !73
  %sub = sub nsw i32 %8, 1, !dbg !2825
  %sub1 = sub nsw i32 0, %sub, !dbg !2826
  %9 = load i32, ptr %incx.addr, align 4, !dbg !2827, !tbaa !73
  %mul2 = mul nsw i32 %sub1, %9, !dbg !2828
  store i32 %mul2, ptr %ix, align 4, !dbg !2829, !tbaa !73
  br label %if.end, !dbg !2830

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, ptr %incy.addr, align 4, !dbg !2831, !tbaa !73
  %cmp3 = icmp slt i32 %10, 0, !dbg !2833
  br i1 %cmp3, label %if.then4, label %if.end8, !dbg !2834

if.then4:                                         ; preds = %if.end
  %11 = load i32, ptr %n.addr, align 4, !dbg !2835, !tbaa !73
  %sub5 = sub nsw i32 %11, 1, !dbg !2836
  %sub6 = sub nsw i32 0, %sub5, !dbg !2837
  %12 = load i32, ptr %incy.addr, align 4, !dbg !2838, !tbaa !73
  %mul7 = mul nsw i32 %sub6, %12, !dbg !2839
  store i32 %mul7, ptr %iy, align 4, !dbg !2840, !tbaa !73
  br label %if.end8, !dbg !2841

if.end8:                                          ; preds = %if.then4, %if.end
  store double 0.000000e+00, ptr %S2, align 8, !dbg !2842, !tbaa !86
  store double 0.000000e+00, ptr %S1, align 8, !dbg !2843, !tbaa !86
  store double 0.000000e+00, ptr %S, align 8, !dbg !2844, !tbaa !86
  store i32 0, ptr %i, align 4, !dbg !2845, !tbaa !73
  br label %for.cond, !dbg !2847

for.cond:                                         ; preds = %for.inc, %if.end8
  %13 = load i32, ptr %i, align 4, !dbg !2848, !tbaa !73
  %14 = load i32, ptr %n.addr, align 4, !dbg !2850, !tbaa !73
  %cmp9 = icmp slt i32 %13, %14, !dbg !2851
  br i1 %cmp9, label %for.body, label %for.end, !dbg !2852

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %x_i, align 8, !dbg !2853, !tbaa !90
  %16 = load i32, ptr %ix, align 4, !dbg !2855, !tbaa !73
  %idxprom = sext i32 %16 to i64, !dbg !2853
  %arrayidx = getelementptr inbounds double, ptr %15, i64 %idxprom, !dbg !2853
  %17 = load double, ptr %arrayidx, align 8, !dbg !2853, !tbaa !86
  %arrayidx10 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 0, !dbg !2856
  store double %17, ptr %arrayidx10, align 16, !dbg !2857, !tbaa !86
  %18 = load ptr, ptr %x_i, align 8, !dbg !2858, !tbaa !90
  %19 = load i32, ptr %ix, align 4, !dbg !2859, !tbaa !73
  %add = add nsw i32 %19, 1, !dbg !2860
  %idxprom11 = sext i32 %add to i64, !dbg !2858
  %arrayidx12 = getelementptr inbounds double, ptr %18, i64 %idxprom11, !dbg !2858
  %20 = load double, ptr %arrayidx12, align 8, !dbg !2858, !tbaa !86
  %arrayidx13 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 1, !dbg !2861
  store double %20, ptr %arrayidx13, align 8, !dbg !2862, !tbaa !86
  %21 = load ptr, ptr %y_i, align 8, !dbg !2863, !tbaa !90
  %22 = load i32, ptr %iy, align 4, !dbg !2864, !tbaa !73
  %idxprom14 = sext i32 %22 to i64, !dbg !2863
  %arrayidx15 = getelementptr inbounds double, ptr %21, i64 %idxprom14, !dbg !2863
  %23 = load double, ptr %arrayidx15, align 8, !dbg !2863, !tbaa !86
  store double %23, ptr %y_ii, align 8, !dbg !2865, !tbaa !86
  %24 = load i32, ptr %conj.addr, align 4, !dbg !2866, !tbaa !78
  %cmp16 = icmp eq i32 %24, 191, !dbg !2868
  br i1 %cmp16, label %if.then17, label %if.end20, !dbg !2869

if.then17:                                        ; preds = %for.body
  %arrayidx18 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 1, !dbg !2870
  %25 = load double, ptr %arrayidx18, align 8, !dbg !2870, !tbaa !86
  %fneg = fneg double %25, !dbg !2872
  %arrayidx19 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 1, !dbg !2873
  store double %fneg, ptr %arrayidx19, align 8, !dbg !2874, !tbaa !86
  br label %if.end20, !dbg !2875

if.end20:                                         ; preds = %if.then17, %for.body
  %arrayidx21 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 0, !dbg !2876
  %26 = load double, ptr %arrayidx21, align 16, !dbg !2876, !tbaa !86
  %arrayidx22 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 0, !dbg !2877
  %27 = load double, ptr %arrayidx22, align 16, !dbg !2877, !tbaa !86
  %arrayidx24 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 1, !dbg !2878
  %28 = load double, ptr %arrayidx24, align 8, !dbg !2878, !tbaa !86
  %arrayidx25 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 1, !dbg !2879
  %29 = load double, ptr %arrayidx25, align 8, !dbg !2879, !tbaa !86
  %mul26 = fmul double %28, %29, !dbg !2880
  %30 = call double @llvm.fmuladd.f64(double %26, double %27, double %mul26), !dbg !2881
  %call = call double @sqrt(double noundef %30) #5, !dbg !2882
  %31 = load double, ptr %S1, align 8, !dbg !2883, !tbaa !86
  %add27 = fadd double %31, %call, !dbg !2883
  store double %add27, ptr %S1, align 8, !dbg !2883, !tbaa !86
  %32 = load double, ptr %y_ii, align 8, !dbg !2884, !tbaa !86
  %33 = call double @llvm.fabs.f64(double %32), !dbg !2885
  %34 = load double, ptr %S2, align 8, !dbg !2886, !tbaa !86
  %add28 = fadd double %34, %33, !dbg !2886
  store double %add28, ptr %S2, align 8, !dbg !2886, !tbaa !86
  %arrayidx29 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 0, !dbg !2887
  %35 = load double, ptr %arrayidx29, align 16, !dbg !2887, !tbaa !86
  %36 = load double, ptr %y_ii, align 8, !dbg !2889, !tbaa !86
  %mul30 = fmul double %35, %36, !dbg !2890
  %arrayidx31 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !2891
  store double %mul30, ptr %arrayidx31, align 16, !dbg !2892, !tbaa !86
  %arrayidx32 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 1, !dbg !2893
  %37 = load double, ptr %arrayidx32, align 8, !dbg !2893, !tbaa !86
  %38 = load double, ptr %y_ii, align 8, !dbg !2894, !tbaa !86
  %mul33 = fmul double %37, %38, !dbg !2895
  %arrayidx34 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !2896
  store double %mul33, ptr %arrayidx34, align 8, !dbg !2897, !tbaa !86
  %arrayidx35 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !2898
  %39 = load double, ptr %arrayidx35, align 16, !dbg !2898, !tbaa !86
  %arrayidx36 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !2899
  %40 = load double, ptr %arrayidx36, align 16, !dbg !2899, !tbaa !86
  %arrayidx38 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !2900
  %41 = load double, ptr %arrayidx38, align 8, !dbg !2900, !tbaa !86
  %arrayidx39 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !2901
  %42 = load double, ptr %arrayidx39, align 8, !dbg !2901, !tbaa !86
  %mul40 = fmul double %41, %42, !dbg !2902
  %43 = call double @llvm.fmuladd.f64(double %39, double %40, double %mul40), !dbg !2903
  %call41 = call double @sqrt(double noundef %43) #5, !dbg !2904
  %44 = load double, ptr %S, align 8, !dbg !2905, !tbaa !86
  %add42 = fadd double %44, %call41, !dbg !2905
  store double %add42, ptr %S, align 8, !dbg !2905, !tbaa !86
  %45 = load i32, ptr %incx.addr, align 4, !dbg !2906, !tbaa !73
  %46 = load i32, ptr %ix, align 4, !dbg !2907, !tbaa !73
  %add43 = add nsw i32 %46, %45, !dbg !2907
  store i32 %add43, ptr %ix, align 4, !dbg !2907, !tbaa !73
  %47 = load i32, ptr %incy.addr, align 4, !dbg !2908, !tbaa !73
  %48 = load i32, ptr %iy, align 4, !dbg !2909, !tbaa !73
  %add44 = add nsw i32 %48, %47, !dbg !2909
  store i32 %add44, ptr %iy, align 4, !dbg !2909, !tbaa !73
  br label %for.inc, !dbg !2910

for.inc:                                          ; preds = %if.end20
  %49 = load i32, ptr %i, align 4, !dbg !2911, !tbaa !73
  %inc = add nsw i32 %49, 1, !dbg !2911
  store i32 %inc, ptr %i, align 4, !dbg !2911, !tbaa !73
  br label %for.cond, !dbg !2912, !llvm.loop !2913

for.end:                                          ; preds = %for.cond
  %50 = load ptr, ptr %alpha_i, align 8, !dbg !2915, !tbaa !90
  %arrayidx45 = getelementptr inbounds double, ptr %50, i64 0, !dbg !2915
  %51 = load double, ptr %arrayidx45, align 8, !dbg !2915, !tbaa !86
  %52 = load ptr, ptr %alpha_i, align 8, !dbg !2916, !tbaa !90
  %arrayidx46 = getelementptr inbounds double, ptr %52, i64 0, !dbg !2916
  %53 = load double, ptr %arrayidx46, align 8, !dbg !2916, !tbaa !86
  %54 = load ptr, ptr %alpha_i, align 8, !dbg !2917, !tbaa !90
  %arrayidx48 = getelementptr inbounds double, ptr %54, i64 1, !dbg !2917
  %55 = load double, ptr %arrayidx48, align 8, !dbg !2917, !tbaa !86
  %56 = load ptr, ptr %alpha_i, align 8, !dbg !2918, !tbaa !90
  %arrayidx49 = getelementptr inbounds double, ptr %56, i64 1, !dbg !2918
  %57 = load double, ptr %arrayidx49, align 8, !dbg !2918, !tbaa !86
  %mul50 = fmul double %55, %57, !dbg !2919
  %58 = call double @llvm.fmuladd.f64(double %51, double %53, double %mul50), !dbg !2920
  %call51 = call double @sqrt(double noundef %58) #5, !dbg !2921
  %59 = load double, ptr %S, align 8, !dbg !2922, !tbaa !86
  %mul52 = fmul double %59, %call51, !dbg !2922
  store double %mul52, ptr %S, align 8, !dbg !2922, !tbaa !86
  %60 = load ptr, ptr %beta_i, align 8, !dbg !2923, !tbaa !90
  %arrayidx53 = getelementptr inbounds double, ptr %60, i64 0, !dbg !2923
  %61 = load double, ptr %arrayidx53, align 8, !dbg !2923, !tbaa !86
  %62 = load ptr, ptr %rin_i, align 8, !dbg !2925, !tbaa !90
  %arrayidx54 = getelementptr inbounds double, ptr %62, i64 0, !dbg !2925
  %63 = load double, ptr %arrayidx54, align 8, !dbg !2925, !tbaa !86
  %64 = load ptr, ptr %beta_i, align 8, !dbg !2926, !tbaa !90
  %arrayidx56 = getelementptr inbounds double, ptr %64, i64 1, !dbg !2926
  %65 = load double, ptr %arrayidx56, align 8, !dbg !2926, !tbaa !86
  %66 = load ptr, ptr %rin_i, align 8, !dbg !2927, !tbaa !90
  %arrayidx57 = getelementptr inbounds double, ptr %66, i64 1, !dbg !2927
  %67 = load double, ptr %arrayidx57, align 8, !dbg !2927, !tbaa !86
  %mul58 = fmul double %65, %67, !dbg !2928
  %neg = fneg double %mul58, !dbg !2929
  %68 = call double @llvm.fmuladd.f64(double %61, double %63, double %neg), !dbg !2929
  %arrayidx59 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !2930
  store double %68, ptr %arrayidx59, align 16, !dbg !2931, !tbaa !86
  %69 = load ptr, ptr %beta_i, align 8, !dbg !2932, !tbaa !90
  %arrayidx60 = getelementptr inbounds double, ptr %69, i64 0, !dbg !2932
  %70 = load double, ptr %arrayidx60, align 8, !dbg !2932, !tbaa !86
  %71 = load ptr, ptr %rin_i, align 8, !dbg !2933, !tbaa !90
  %arrayidx61 = getelementptr inbounds double, ptr %71, i64 1, !dbg !2933
  %72 = load double, ptr %arrayidx61, align 8, !dbg !2933, !tbaa !86
  %73 = load ptr, ptr %beta_i, align 8, !dbg !2934, !tbaa !90
  %arrayidx63 = getelementptr inbounds double, ptr %73, i64 1, !dbg !2934
  %74 = load double, ptr %arrayidx63, align 8, !dbg !2934, !tbaa !86
  %75 = load ptr, ptr %rin_i, align 8, !dbg !2935, !tbaa !90
  %arrayidx64 = getelementptr inbounds double, ptr %75, i64 0, !dbg !2935
  %76 = load double, ptr %arrayidx64, align 8, !dbg !2935, !tbaa !86
  %mul65 = fmul double %74, %76, !dbg !2936
  %77 = call double @llvm.fmuladd.f64(double %70, double %72, double %mul65), !dbg !2937
  %arrayidx66 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !2938
  store double %77, ptr %arrayidx66, align 8, !dbg !2939, !tbaa !86
  %arrayidx67 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !2940
  %78 = load double, ptr %arrayidx67, align 16, !dbg !2940, !tbaa !86
  %arrayidx68 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !2941
  %79 = load double, ptr %arrayidx68, align 16, !dbg !2941, !tbaa !86
  %arrayidx70 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !2942
  %80 = load double, ptr %arrayidx70, align 8, !dbg !2942, !tbaa !86
  %arrayidx71 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !2943
  %81 = load double, ptr %arrayidx71, align 8, !dbg !2943, !tbaa !86
  %mul72 = fmul double %80, %81, !dbg !2944
  %82 = call double @llvm.fmuladd.f64(double %78, double %79, double %mul72), !dbg !2945
  %call73 = call double @sqrt(double noundef %82) #5, !dbg !2946
  %83 = load double, ptr %S, align 8, !dbg !2947, !tbaa !86
  %add74 = fadd double %83, %call73, !dbg !2947
  store double %add74, ptr %S, align 8, !dbg !2947, !tbaa !86
  %call75 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !2948
  %conv = sitofp i32 %call75 to double, !dbg !2949
  %call76 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !2950
  %conv77 = sitofp i32 %call76 to double, !dbg !2951
  %call78 = call double @pow(double noundef %conv, double noundef %conv77) #5, !dbg !2952
  store double %call78, ptr %un_d, align 8, !dbg !2953, !tbaa !86
  %84 = load double, ptr %S, align 8, !dbg !2954, !tbaa !86
  %85 = load double, ptr %un_d, align 8, !dbg !2954, !tbaa !86
  %cmp79 = fcmp ogt double %84, %85, !dbg !2954
  br i1 %cmp79, label %cond.true, label %cond.false, !dbg !2954

cond.true:                                        ; preds = %for.end
  %86 = load double, ptr %S, align 8, !dbg !2954, !tbaa !86
  br label %cond.end, !dbg !2954

cond.false:                                       ; preds = %for.end
  %87 = load double, ptr %un_d, align 8, !dbg !2954, !tbaa !86
  br label %cond.end, !dbg !2954

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %86, %cond.true ], [ %87, %cond.false ], !dbg !2954
  store double %cond, ptr %S, align 8, !dbg !2955, !tbaa !86
  %call81 = call double @power(i32 noundef 2, i32 noundef -106), !dbg !2956
  store double %call81, ptr %eps_accurate, align 8, !dbg !2957, !tbaa !86
  %call82 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 214), !dbg !2958
  %conv83 = sitofp i32 %call82 to double, !dbg !2959
  %call84 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 214), !dbg !2960
  %conv85 = sitofp i32 %call84 to double, !dbg !2961
  %call86 = call double @pow(double noundef %conv83, double noundef %conv85) #5, !dbg !2962
  store double %call86, ptr %un_accurate, align 8, !dbg !2963, !tbaa !86
  %call87 = call double @power(i32 noundef 2, i32 noundef -53), !dbg !2964
  store double %call87, ptr %eps_out, align 8, !dbg !2965, !tbaa !86
  %call88 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !2966
  %conv89 = sitofp i32 %call88 to double, !dbg !2967
  %call90 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !2968
  %conv91 = sitofp i32 %call90 to double, !dbg !2969
  %call92 = call double @pow(double noundef %conv89, double noundef %conv91) #5, !dbg !2970
  store double %call92, ptr %un_out, align 8, !dbg !2971, !tbaa !86
  %88 = load ptr, ptr %rout_i, align 8, !dbg !2972, !tbaa !90
  %arrayidx93 = getelementptr inbounds double, ptr %88, i64 0, !dbg !2972
  %89 = load double, ptr %arrayidx93, align 8, !dbg !2972, !tbaa !86
  %90 = load ptr, ptr %r_true_l.addr, align 8, !dbg !2973, !tbaa !90
  %arrayidx94 = getelementptr inbounds double, ptr %90, i64 0, !dbg !2973
  %91 = load double, ptr %arrayidx94, align 8, !dbg !2973, !tbaa !86
  %sub95 = fsub double %89, %91, !dbg !2974
  %92 = load ptr, ptr %r_true_t.addr, align 8, !dbg !2975, !tbaa !90
  %arrayidx96 = getelementptr inbounds double, ptr %92, i64 0, !dbg !2975
  %93 = load double, ptr %arrayidx96, align 8, !dbg !2975, !tbaa !86
  %sub97 = fsub double %sub95, %93, !dbg !2976
  %arrayidx98 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !2977
  store double %sub97, ptr %arrayidx98, align 16, !dbg !2978, !tbaa !86
  %94 = load ptr, ptr %rout_i, align 8, !dbg !2979, !tbaa !90
  %arrayidx99 = getelementptr inbounds double, ptr %94, i64 1, !dbg !2979
  %95 = load double, ptr %arrayidx99, align 8, !dbg !2979, !tbaa !86
  %96 = load ptr, ptr %r_true_l.addr, align 8, !dbg !2980, !tbaa !90
  %arrayidx100 = getelementptr inbounds double, ptr %96, i64 1, !dbg !2980
  %97 = load double, ptr %arrayidx100, align 8, !dbg !2980, !tbaa !86
  %sub101 = fsub double %95, %97, !dbg !2981
  %98 = load ptr, ptr %r_true_t.addr, align 8, !dbg !2982, !tbaa !90
  %arrayidx102 = getelementptr inbounds double, ptr %98, i64 1, !dbg !2982
  %99 = load double, ptr %arrayidx102, align 8, !dbg !2982, !tbaa !86
  %sub103 = fsub double %sub101, %99, !dbg !2983
  %arrayidx104 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !2984
  store double %sub103, ptr %arrayidx104, align 8, !dbg !2985, !tbaa !86
  %arrayidx105 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !2986
  %100 = load double, ptr %arrayidx105, align 16, !dbg !2986, !tbaa !86
  %arrayidx106 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !2987
  %101 = load double, ptr %arrayidx106, align 16, !dbg !2987, !tbaa !86
  %arrayidx108 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !2988
  %102 = load double, ptr %arrayidx108, align 8, !dbg !2988, !tbaa !86
  %arrayidx109 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !2989
  %103 = load double, ptr %arrayidx109, align 8, !dbg !2989, !tbaa !86
  %mul110 = fmul double %102, %103, !dbg !2990
  %104 = call double @llvm.fmuladd.f64(double %100, double %101, double %mul110), !dbg !2991
  %call111 = call double @sqrt(double noundef %104) #5, !dbg !2992
  store double %call111, ptr %tmp1, align 8, !dbg !2993, !tbaa !86
  %105 = load ptr, ptr %alpha_i, align 8, !dbg !2994, !tbaa !90
  %arrayidx112 = getelementptr inbounds double, ptr %105, i64 0, !dbg !2994
  %106 = load double, ptr %arrayidx112, align 8, !dbg !2994, !tbaa !86
  %107 = load ptr, ptr %alpha_i, align 8, !dbg !2995, !tbaa !90
  %arrayidx113 = getelementptr inbounds double, ptr %107, i64 0, !dbg !2995
  %108 = load double, ptr %arrayidx113, align 8, !dbg !2995, !tbaa !86
  %109 = load ptr, ptr %alpha_i, align 8, !dbg !2996, !tbaa !90
  %arrayidx115 = getelementptr inbounds double, ptr %109, i64 1, !dbg !2996
  %110 = load double, ptr %arrayidx115, align 8, !dbg !2996, !tbaa !86
  %111 = load ptr, ptr %alpha_i, align 8, !dbg !2997, !tbaa !90
  %arrayidx116 = getelementptr inbounds double, ptr %111, i64 1, !dbg !2997
  %112 = load double, ptr %arrayidx116, align 8, !dbg !2997, !tbaa !86
  %mul117 = fmul double %110, %112, !dbg !2998
  %113 = call double @llvm.fmuladd.f64(double %106, double %108, double %mul117), !dbg !2999
  %call118 = call double @sqrt(double noundef %113) #5, !dbg !3000
  %mul119 = fmul double 2.000000e+00, %call118, !dbg !3001
  %114 = load i32, ptr %n.addr, align 4, !dbg !3002, !tbaa !73
  %conv120 = sitofp i32 %114 to double, !dbg !3002
  %115 = call double @llvm.fmuladd.f64(double %mul119, double %conv120, double 3.000000e+00), !dbg !3003
  store double %115, ptr %U, align 8, !dbg !3004, !tbaa !86
  %116 = load double, ptr %U, align 8, !dbg !3005, !tbaa !86
  %117 = load double, ptr %S1, align 8, !dbg !3005, !tbaa !86
  %118 = load i32, ptr %n.addr, align 4, !dbg !3005, !tbaa !73
  %mul122 = mul nsw i32 2, %118, !dbg !3005
  %conv123 = sitofp i32 %mul122 to double, !dbg !3005
  %add124 = fadd double %117, %conv123, !dbg !3005
  %add125 = fadd double %add124, 1.000000e+00, !dbg !3005
  %cmp126 = fcmp ogt double %116, %add125, !dbg !3005
  br i1 %cmp126, label %cond.true128, label %cond.false129, !dbg !3005

cond.true128:                                     ; preds = %cond.end
  %119 = load double, ptr %U, align 8, !dbg !3005, !tbaa !86
  br label %cond.end134, !dbg !3005

cond.false129:                                    ; preds = %cond.end
  %120 = load double, ptr %S1, align 8, !dbg !3005, !tbaa !86
  %121 = load i32, ptr %n.addr, align 4, !dbg !3005, !tbaa !73
  %mul130 = mul nsw i32 2, %121, !dbg !3005
  %conv131 = sitofp i32 %mul130 to double, !dbg !3005
  %add132 = fadd double %120, %conv131, !dbg !3005
  %add133 = fadd double %add132, 1.000000e+00, !dbg !3005
  br label %cond.end134, !dbg !3005

cond.end134:                                      ; preds = %cond.false129, %cond.true128
  %cond135 = phi double [ %119, %cond.true128 ], [ %add133, %cond.false129 ], !dbg !3005
  store double %cond135, ptr %U, align 8, !dbg !3006, !tbaa !86
  %122 = load double, ptr %U, align 8, !dbg !3007, !tbaa !86
  %123 = load double, ptr %S2, align 8, !dbg !3007, !tbaa !86
  %124 = load i32, ptr %n.addr, align 4, !dbg !3007, !tbaa !73
  %mul136 = mul nsw i32 2, %124, !dbg !3007
  %conv137 = sitofp i32 %mul136 to double, !dbg !3007
  %add138 = fadd double %123, %conv137, !dbg !3007
  %add139 = fadd double %add138, 1.000000e+00, !dbg !3007
  %cmp140 = fcmp ogt double %122, %add139, !dbg !3007
  br i1 %cmp140, label %cond.true142, label %cond.false143, !dbg !3007

cond.true142:                                     ; preds = %cond.end134
  %125 = load double, ptr %U, align 8, !dbg !3007, !tbaa !86
  br label %cond.end148, !dbg !3007

cond.false143:                                    ; preds = %cond.end134
  %126 = load double, ptr %S2, align 8, !dbg !3007, !tbaa !86
  %127 = load i32, ptr %n.addr, align 4, !dbg !3007, !tbaa !73
  %mul144 = mul nsw i32 2, %127, !dbg !3007
  %conv145 = sitofp i32 %mul144 to double, !dbg !3007
  %add146 = fadd double %126, %conv145, !dbg !3007
  %add147 = fadd double %add146, 1.000000e+00, !dbg !3007
  br label %cond.end148, !dbg !3007

cond.end148:                                      ; preds = %cond.false143, %cond.true142
  %cond149 = phi double [ %125, %cond.true142 ], [ %add147, %cond.false143 ], !dbg !3007
  %128 = load double, ptr %un_int.addr, align 8, !dbg !3008, !tbaa !86
  %129 = load double, ptr %un_accurate, align 8, !dbg !3009, !tbaa !86
  %add150 = fadd double %128, %129, !dbg !3010
  %130 = load double, ptr %un_out, align 8, !dbg !3011, !tbaa !86
  %131 = call double @llvm.fmuladd.f64(double %cond149, double %add150, double %130), !dbg !3012
  store double %131, ptr %U, align 8, !dbg !3013, !tbaa !86
  %call152 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !3014
  %mul153 = fmul double 2.000000e+00, %call152, !dbg !3015
  %132 = load double, ptr %U, align 8, !dbg !3016, !tbaa !86
  %mul154 = fmul double %132, %mul153, !dbg !3016
  store double %mul154, ptr %U, align 8, !dbg !3016, !tbaa !86
  %133 = load double, ptr %tmp1, align 8, !dbg !3017, !tbaa !86
  %call155 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !3018
  %mul156 = fmul double 2.000000e+00, %call155, !dbg !3019
  %134 = load i32, ptr %n.addr, align 4, !dbg !3020, !tbaa !73
  %add157 = add nsw i32 %134, 2, !dbg !3021
  %conv158 = sitofp i32 %add157 to double, !dbg !3022
  %mul159 = fmul double %mul156, %conv158, !dbg !3023
  %135 = load double, ptr %eps_int.addr, align 8, !dbg !3024, !tbaa !86
  %136 = load double, ptr %eps_accurate, align 8, !dbg !3025, !tbaa !86
  %add160 = fadd double %135, %136, !dbg !3026
  %mul161 = fmul double %mul159, %add160, !dbg !3027
  %137 = load double, ptr %S, align 8, !dbg !3028, !tbaa !86
  %call163 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !3029
  %138 = load double, ptr %eps_out, align 8, !dbg !3030, !tbaa !86
  %mul164 = fmul double %call163, %138, !dbg !3031
  %139 = load ptr, ptr %r_true_l.addr, align 8, !dbg !3032, !tbaa !90
  %arrayidx165 = getelementptr inbounds double, ptr %139, i64 0, !dbg !3032
  %140 = load double, ptr %arrayidx165, align 8, !dbg !3032, !tbaa !86
  %141 = load ptr, ptr %r_true_l.addr, align 8, !dbg !3033, !tbaa !90
  %arrayidx166 = getelementptr inbounds double, ptr %141, i64 0, !dbg !3033
  %142 = load double, ptr %arrayidx166, align 8, !dbg !3033, !tbaa !86
  %143 = load ptr, ptr %r_true_l.addr, align 8, !dbg !3034, !tbaa !90
  %arrayidx168 = getelementptr inbounds double, ptr %143, i64 1, !dbg !3034
  %144 = load double, ptr %arrayidx168, align 8, !dbg !3034, !tbaa !86
  %145 = load ptr, ptr %r_true_l.addr, align 8, !dbg !3035, !tbaa !90
  %arrayidx169 = getelementptr inbounds double, ptr %145, i64 1, !dbg !3035
  %146 = load double, ptr %arrayidx169, align 8, !dbg !3035, !tbaa !86
  %mul170 = fmul double %144, %146, !dbg !3036
  %147 = call double @llvm.fmuladd.f64(double %140, double %142, double %mul170), !dbg !3037
  %call171 = call double @sqrt(double noundef %147) #5, !dbg !3038
  %mul172 = fmul double %mul164, %call171, !dbg !3039
  %148 = call double @llvm.fmuladd.f64(double %mul161, double %137, double %mul172), !dbg !3040
  %149 = load double, ptr %U, align 8, !dbg !3041, !tbaa !86
  %add173 = fadd double %148, %149, !dbg !3042
  %div = fdiv double %133, %add173, !dbg !3043
  %150 = load ptr, ptr %test_ratio.addr, align 8, !dbg !3044, !tbaa !90
  store double %div, ptr %150, align 8, !dbg !3045, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_ii) #5, !dbg !3046
  call void @llvm.lifetime.end.p0(i64 16, ptr %x_ii) #5, !dbg !3046
  call void @llvm.lifetime.end.p0(i64 8, ptr %rout_i) #5, !dbg !3046
  call void @llvm.lifetime.end.p0(i64 8, ptr %rin_i) #5, !dbg !3046
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta_i) #5, !dbg !3046
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_i) #5, !dbg !3046
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_i) #5, !dbg !3046
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_i) #5, !dbg !3046
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_out) #5, !dbg !3046
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_accurate) #5, !dbg !3046
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_d) #5, !dbg !3046
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #5, !dbg !3046
  call void @llvm.lifetime.end.p0(i64 16, ptr %prod) #5, !dbg !3046
  call void @llvm.lifetime.end.p0(i64 8, ptr %U) #5, !dbg !3046
  call void @llvm.lifetime.end.p0(i64 8, ptr %S2) #5, !dbg !3046
  call void @llvm.lifetime.end.p0(i64 8, ptr %S1) #5, !dbg !3046
  call void @llvm.lifetime.end.p0(i64 8, ptr %S) #5, !dbg !3046
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp1) #5, !dbg !3046
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_out) #5, !dbg !3046
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_accurate) #5, !dbg !3046
  call void @llvm.lifetime.end.p0(i64 4, ptr %iy) #5, !dbg !3046
  call void @llvm.lifetime.end.p0(i64 4, ptr %ix) #5, !dbg !3046
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !3046
  ret void, !dbg !3046
}

; Function Attrs: nounwind uwtable
define dso_local void @test_BLAS_ddot_s_s(i32 noundef %n, i32 noundef %conj, double noundef %alpha, double noundef %beta, double noundef %rin, double noundef %rout, double noundef %r_true_l, double noundef %r_true_t, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, double noundef %eps_int, double noundef %un_int, ptr noundef %test_ratio) #0 !dbg !3047 {
entry:
  %n.addr = alloca i32, align 4
  %conj.addr = alloca i32, align 4
  %alpha.addr = alloca double, align 8
  %beta.addr = alloca double, align 8
  %rin.addr = alloca double, align 8
  %rout.addr = alloca double, align 8
  %r_true_l.addr = alloca double, align 8
  %r_true_t.addr = alloca double, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %eps_int.addr = alloca double, align 8
  %un_int.addr = alloca double, align 8
  %test_ratio.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %eps_accurate = alloca double, align 8
  %eps_out = alloca double, align 8
  %tmp1 = alloca double, align 8
  %S = alloca double, align 8
  %S1 = alloca double, align 8
  %S2 = alloca double, align 8
  %U = alloca double, align 8
  %un_d = alloca double, align 8
  %un_accurate = alloca double, align 8
  %un_out = alloca double, align 8
  store i32 %n, ptr %n.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3051, metadata !DIExpression()), !dbg !3079
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !78
  tail call void @llvm.dbg.declare(metadata ptr %conj.addr, metadata !3052, metadata !DIExpression()), !dbg !3080
  store double %alpha, ptr %alpha.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !3053, metadata !DIExpression()), !dbg !3081
  store double %beta, ptr %beta.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %beta.addr, metadata !3054, metadata !DIExpression()), !dbg !3082
  store double %rin, ptr %rin.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %rin.addr, metadata !3055, metadata !DIExpression()), !dbg !3083
  store double %rout, ptr %rout.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %rout.addr, metadata !3056, metadata !DIExpression()), !dbg !3084
  store double %r_true_l, ptr %r_true_l.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %r_true_l.addr, metadata !3057, metadata !DIExpression()), !dbg !3085
  store double %r_true_t, ptr %r_true_t.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %r_true_t.addr, metadata !3058, metadata !DIExpression()), !dbg !3086
  store ptr %x, ptr %x.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !3059, metadata !DIExpression()), !dbg !3087
  store i32 %incx, ptr %incx.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incx.addr, metadata !3060, metadata !DIExpression()), !dbg !3088
  store ptr %y, ptr %y.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !3061, metadata !DIExpression()), !dbg !3089
  store i32 %incy, ptr %incy.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incy.addr, metadata !3062, metadata !DIExpression()), !dbg !3090
  store double %eps_int, ptr %eps_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %eps_int.addr, metadata !3063, metadata !DIExpression()), !dbg !3091
  store double %un_int, ptr %un_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %un_int.addr, metadata !3064, metadata !DIExpression()), !dbg !3092
  store ptr %test_ratio, ptr %test_ratio.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %test_ratio.addr, metadata !3065, metadata !DIExpression()), !dbg !3093
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !3094
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3066, metadata !DIExpression()), !dbg !3095
  call void @llvm.lifetime.start.p0(i64 4, ptr %ix) #5, !dbg !3094
  tail call void @llvm.dbg.declare(metadata ptr %ix, metadata !3067, metadata !DIExpression()), !dbg !3096
  call void @llvm.lifetime.start.p0(i64 4, ptr %iy) #5, !dbg !3094
  tail call void @llvm.dbg.declare(metadata ptr %iy, metadata !3068, metadata !DIExpression()), !dbg !3097
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_accurate) #5, !dbg !3098
  tail call void @llvm.dbg.declare(metadata ptr %eps_accurate, metadata !3069, metadata !DIExpression()), !dbg !3099
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_out) #5, !dbg !3098
  tail call void @llvm.dbg.declare(metadata ptr %eps_out, metadata !3070, metadata !DIExpression()), !dbg !3100
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp1) #5, !dbg !3098
  tail call void @llvm.dbg.declare(metadata ptr %tmp1, metadata !3071, metadata !DIExpression()), !dbg !3101
  call void @llvm.lifetime.start.p0(i64 8, ptr %S) #5, !dbg !3098
  tail call void @llvm.dbg.declare(metadata ptr %S, metadata !3072, metadata !DIExpression()), !dbg !3102
  call void @llvm.lifetime.start.p0(i64 8, ptr %S1) #5, !dbg !3098
  tail call void @llvm.dbg.declare(metadata ptr %S1, metadata !3073, metadata !DIExpression()), !dbg !3103
  call void @llvm.lifetime.start.p0(i64 8, ptr %S2) #5, !dbg !3098
  tail call void @llvm.dbg.declare(metadata ptr %S2, metadata !3074, metadata !DIExpression()), !dbg !3104
  call void @llvm.lifetime.start.p0(i64 8, ptr %U) #5, !dbg !3098
  tail call void @llvm.dbg.declare(metadata ptr %U, metadata !3075, metadata !DIExpression()), !dbg !3105
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_d) #5, !dbg !3106
  tail call void @llvm.dbg.declare(metadata ptr %un_d, metadata !3076, metadata !DIExpression()), !dbg !3107
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_accurate) #5, !dbg !3106
  tail call void @llvm.dbg.declare(metadata ptr %un_accurate, metadata !3077, metadata !DIExpression()), !dbg !3108
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_out) #5, !dbg !3106
  tail call void @llvm.dbg.declare(metadata ptr %un_out, metadata !3078, metadata !DIExpression()), !dbg !3109
  store i32 0, ptr %ix, align 4, !dbg !3110, !tbaa !73
  store i32 0, ptr %iy, align 4, !dbg !3111, !tbaa !73
  %0 = load i32, ptr %incx.addr, align 4, !dbg !3112, !tbaa !73
  %cmp = icmp slt i32 %0, 0, !dbg !3114
  br i1 %cmp, label %if.then, label %if.end, !dbg !3115

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4, !dbg !3116, !tbaa !73
  %sub = sub nsw i32 %1, 1, !dbg !3117
  %sub1 = sub nsw i32 0, %sub, !dbg !3118
  %2 = load i32, ptr %incx.addr, align 4, !dbg !3119, !tbaa !73
  %mul = mul nsw i32 %sub1, %2, !dbg !3120
  store i32 %mul, ptr %ix, align 4, !dbg !3121, !tbaa !73
  br label %if.end, !dbg !3122

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %incy.addr, align 4, !dbg !3123, !tbaa !73
  %cmp2 = icmp slt i32 %3, 0, !dbg !3125
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !3126

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr %n.addr, align 4, !dbg !3127, !tbaa !73
  %sub4 = sub nsw i32 %4, 1, !dbg !3128
  %sub5 = sub nsw i32 0, %sub4, !dbg !3129
  %5 = load i32, ptr %incy.addr, align 4, !dbg !3130, !tbaa !73
  %mul6 = mul nsw i32 %sub5, %5, !dbg !3131
  store i32 %mul6, ptr %iy, align 4, !dbg !3132, !tbaa !73
  br label %if.end7, !dbg !3133

if.end7:                                          ; preds = %if.then3, %if.end
  store double 0.000000e+00, ptr %S2, align 8, !dbg !3134, !tbaa !86
  store double 0.000000e+00, ptr %S1, align 8, !dbg !3135, !tbaa !86
  store double 0.000000e+00, ptr %S, align 8, !dbg !3136, !tbaa !86
  store i32 0, ptr %i, align 4, !dbg !3137, !tbaa !73
  br label %for.cond, !dbg !3139

for.cond:                                         ; preds = %for.inc, %if.end7
  %6 = load i32, ptr %i, align 4, !dbg !3140, !tbaa !73
  %7 = load i32, ptr %n.addr, align 4, !dbg !3142, !tbaa !73
  %cmp8 = icmp slt i32 %6, %7, !dbg !3143
  br i1 %cmp8, label %for.body, label %for.end, !dbg !3144

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %x.addr, align 8, !dbg !3145, !tbaa !90
  %9 = load i32, ptr %ix, align 4, !dbg !3147, !tbaa !73
  %idxprom = sext i32 %9 to i64, !dbg !3145
  %arrayidx = getelementptr inbounds float, ptr %8, i64 %idxprom, !dbg !3145
  %10 = load float, ptr %arrayidx, align 4, !dbg !3145, !tbaa !80
  %11 = load ptr, ptr %y.addr, align 8, !dbg !3148, !tbaa !90
  %12 = load i32, ptr %iy, align 4, !dbg !3149, !tbaa !73
  %idxprom9 = sext i32 %12 to i64, !dbg !3148
  %arrayidx10 = getelementptr inbounds float, ptr %11, i64 %idxprom9, !dbg !3148
  %13 = load float, ptr %arrayidx10, align 4, !dbg !3148, !tbaa !80
  %mul11 = fmul float %10, %13, !dbg !3150
  %conv = fpext float %mul11 to double, !dbg !3145
  %14 = call double @llvm.fabs.f64(double %conv), !dbg !3151
  %15 = load double, ptr %S, align 8, !dbg !3152, !tbaa !86
  %add = fadd double %15, %14, !dbg !3152
  store double %add, ptr %S, align 8, !dbg !3152, !tbaa !86
  %16 = load ptr, ptr %x.addr, align 8, !dbg !3153, !tbaa !90
  %17 = load i32, ptr %ix, align 4, !dbg !3154, !tbaa !73
  %idxprom12 = sext i32 %17 to i64, !dbg !3153
  %arrayidx13 = getelementptr inbounds float, ptr %16, i64 %idxprom12, !dbg !3153
  %18 = load float, ptr %arrayidx13, align 4, !dbg !3153, !tbaa !80
  %conv14 = fpext float %18 to double, !dbg !3153
  %19 = call double @llvm.fabs.f64(double %conv14), !dbg !3155
  %20 = load double, ptr %S1, align 8, !dbg !3156, !tbaa !86
  %add15 = fadd double %20, %19, !dbg !3156
  store double %add15, ptr %S1, align 8, !dbg !3156, !tbaa !86
  %21 = load ptr, ptr %y.addr, align 8, !dbg !3157, !tbaa !90
  %22 = load i32, ptr %iy, align 4, !dbg !3158, !tbaa !73
  %idxprom16 = sext i32 %22 to i64, !dbg !3157
  %arrayidx17 = getelementptr inbounds float, ptr %21, i64 %idxprom16, !dbg !3157
  %23 = load float, ptr %arrayidx17, align 4, !dbg !3157, !tbaa !80
  %conv18 = fpext float %23 to double, !dbg !3157
  %24 = call double @llvm.fabs.f64(double %conv18), !dbg !3159
  %25 = load double, ptr %S2, align 8, !dbg !3160, !tbaa !86
  %add19 = fadd double %25, %24, !dbg !3160
  store double %add19, ptr %S2, align 8, !dbg !3160, !tbaa !86
  %26 = load i32, ptr %incx.addr, align 4, !dbg !3161, !tbaa !73
  %27 = load i32, ptr %ix, align 4, !dbg !3162, !tbaa !73
  %add20 = add nsw i32 %27, %26, !dbg !3162
  store i32 %add20, ptr %ix, align 4, !dbg !3162, !tbaa !73
  %28 = load i32, ptr %incy.addr, align 4, !dbg !3163, !tbaa !73
  %29 = load i32, ptr %iy, align 4, !dbg !3164, !tbaa !73
  %add21 = add nsw i32 %29, %28, !dbg !3164
  store i32 %add21, ptr %iy, align 4, !dbg !3164, !tbaa !73
  br label %for.inc, !dbg !3165

for.inc:                                          ; preds = %for.body
  %30 = load i32, ptr %i, align 4, !dbg !3166, !tbaa !73
  %inc = add nsw i32 %30, 1, !dbg !3166
  store i32 %inc, ptr %i, align 4, !dbg !3166, !tbaa !73
  br label %for.cond, !dbg !3167, !llvm.loop !3168

for.end:                                          ; preds = %for.cond
  %31 = load double, ptr %alpha.addr, align 8, !dbg !3170, !tbaa !86
  %32 = call double @llvm.fabs.f64(double %31), !dbg !3171
  %33 = load double, ptr %S, align 8, !dbg !3172, !tbaa !86
  %mul22 = fmul double %33, %32, !dbg !3172
  store double %mul22, ptr %S, align 8, !dbg !3172, !tbaa !86
  %34 = load double, ptr %beta.addr, align 8, !dbg !3173, !tbaa !86
  %35 = load double, ptr %rin.addr, align 8, !dbg !3174, !tbaa !86
  %mul23 = fmul double %34, %35, !dbg !3175
  %36 = call double @llvm.fabs.f64(double %mul23), !dbg !3176
  %37 = load double, ptr %S, align 8, !dbg !3177, !tbaa !86
  %add24 = fadd double %37, %36, !dbg !3177
  store double %add24, ptr %S, align 8, !dbg !3177, !tbaa !86
  %call = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !3178
  %conv25 = sitofp i32 %call to double, !dbg !3179
  %call26 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !3180
  %conv27 = sitofp i32 %call26 to double, !dbg !3181
  %call28 = call double @pow(double noundef %conv25, double noundef %conv27) #5, !dbg !3182
  store double %call28, ptr %un_d, align 8, !dbg !3183, !tbaa !86
  %38 = load double, ptr %S, align 8, !dbg !3184, !tbaa !86
  %39 = load double, ptr %un_d, align 8, !dbg !3184, !tbaa !86
  %cmp29 = fcmp ogt double %38, %39, !dbg !3184
  br i1 %cmp29, label %cond.true, label %cond.false, !dbg !3184

cond.true:                                        ; preds = %for.end
  %40 = load double, ptr %S, align 8, !dbg !3184, !tbaa !86
  br label %cond.end, !dbg !3184

cond.false:                                       ; preds = %for.end
  %41 = load double, ptr %un_d, align 8, !dbg !3184, !tbaa !86
  br label %cond.end, !dbg !3184

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %40, %cond.true ], [ %41, %cond.false ], !dbg !3184
  store double %cond, ptr %S, align 8, !dbg !3185, !tbaa !86
  %call31 = call double @power(i32 noundef 2, i32 noundef -106), !dbg !3186
  store double %call31, ptr %eps_accurate, align 8, !dbg !3187, !tbaa !86
  %call32 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 214), !dbg !3188
  %conv33 = sitofp i32 %call32 to double, !dbg !3189
  %call34 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 214), !dbg !3190
  %conv35 = sitofp i32 %call34 to double, !dbg !3191
  %call36 = call double @pow(double noundef %conv33, double noundef %conv35) #5, !dbg !3192
  store double %call36, ptr %un_accurate, align 8, !dbg !3193, !tbaa !86
  %call37 = call double @power(i32 noundef 2, i32 noundef -53), !dbg !3194
  store double %call37, ptr %eps_out, align 8, !dbg !3195, !tbaa !86
  %call38 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !3196
  %conv39 = sitofp i32 %call38 to double, !dbg !3197
  %call40 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !3198
  %conv41 = sitofp i32 %call40 to double, !dbg !3199
  %call42 = call double @pow(double noundef %conv39, double noundef %conv41) #5, !dbg !3200
  store double %call42, ptr %un_out, align 8, !dbg !3201, !tbaa !86
  %42 = load double, ptr %rout.addr, align 8, !dbg !3202, !tbaa !86
  %43 = load double, ptr %r_true_l.addr, align 8, !dbg !3203, !tbaa !86
  %sub43 = fsub double %42, %43, !dbg !3204
  %44 = load double, ptr %r_true_t.addr, align 8, !dbg !3205, !tbaa !86
  %sub44 = fsub double %sub43, %44, !dbg !3206
  %45 = call double @llvm.fabs.f64(double %sub44), !dbg !3207
  store double %45, ptr %tmp1, align 8, !dbg !3208, !tbaa !86
  %46 = load double, ptr %alpha.addr, align 8, !dbg !3209, !tbaa !86
  %47 = call double @llvm.fabs.f64(double %46), !dbg !3210
  %mul45 = fmul double 2.000000e+00, %47, !dbg !3211
  %48 = load i32, ptr %n.addr, align 4, !dbg !3212, !tbaa !73
  %conv46 = sitofp i32 %48 to double, !dbg !3212
  %49 = call double @llvm.fmuladd.f64(double %mul45, double %conv46, double 3.000000e+00), !dbg !3213
  store double %49, ptr %U, align 8, !dbg !3214, !tbaa !86
  %50 = load double, ptr %U, align 8, !dbg !3215, !tbaa !86
  %51 = load double, ptr %S1, align 8, !dbg !3215, !tbaa !86
  %52 = load i32, ptr %n.addr, align 4, !dbg !3215, !tbaa !73
  %mul48 = mul nsw i32 2, %52, !dbg !3215
  %conv49 = sitofp i32 %mul48 to double, !dbg !3215
  %add50 = fadd double %51, %conv49, !dbg !3215
  %add51 = fadd double %add50, 1.000000e+00, !dbg !3215
  %cmp52 = fcmp ogt double %50, %add51, !dbg !3215
  br i1 %cmp52, label %cond.true54, label %cond.false55, !dbg !3215

cond.true54:                                      ; preds = %cond.end
  %53 = load double, ptr %U, align 8, !dbg !3215, !tbaa !86
  br label %cond.end60, !dbg !3215

cond.false55:                                     ; preds = %cond.end
  %54 = load double, ptr %S1, align 8, !dbg !3215, !tbaa !86
  %55 = load i32, ptr %n.addr, align 4, !dbg !3215, !tbaa !73
  %mul56 = mul nsw i32 2, %55, !dbg !3215
  %conv57 = sitofp i32 %mul56 to double, !dbg !3215
  %add58 = fadd double %54, %conv57, !dbg !3215
  %add59 = fadd double %add58, 1.000000e+00, !dbg !3215
  br label %cond.end60, !dbg !3215

cond.end60:                                       ; preds = %cond.false55, %cond.true54
  %cond61 = phi double [ %53, %cond.true54 ], [ %add59, %cond.false55 ], !dbg !3215
  store double %cond61, ptr %U, align 8, !dbg !3216, !tbaa !86
  %56 = load double, ptr %U, align 8, !dbg !3217, !tbaa !86
  %57 = load double, ptr %S2, align 8, !dbg !3217, !tbaa !86
  %58 = load i32, ptr %n.addr, align 4, !dbg !3217, !tbaa !73
  %mul62 = mul nsw i32 2, %58, !dbg !3217
  %conv63 = sitofp i32 %mul62 to double, !dbg !3217
  %add64 = fadd double %57, %conv63, !dbg !3217
  %add65 = fadd double %add64, 1.000000e+00, !dbg !3217
  %cmp66 = fcmp ogt double %56, %add65, !dbg !3217
  br i1 %cmp66, label %cond.true68, label %cond.false69, !dbg !3217

cond.true68:                                      ; preds = %cond.end60
  %59 = load double, ptr %U, align 8, !dbg !3217, !tbaa !86
  br label %cond.end74, !dbg !3217

cond.false69:                                     ; preds = %cond.end60
  %60 = load double, ptr %S2, align 8, !dbg !3217, !tbaa !86
  %61 = load i32, ptr %n.addr, align 4, !dbg !3217, !tbaa !73
  %mul70 = mul nsw i32 2, %61, !dbg !3217
  %conv71 = sitofp i32 %mul70 to double, !dbg !3217
  %add72 = fadd double %60, %conv71, !dbg !3217
  %add73 = fadd double %add72, 1.000000e+00, !dbg !3217
  br label %cond.end74, !dbg !3217

cond.end74:                                       ; preds = %cond.false69, %cond.true68
  %cond75 = phi double [ %59, %cond.true68 ], [ %add73, %cond.false69 ], !dbg !3217
  %62 = load double, ptr %un_int.addr, align 8, !dbg !3218, !tbaa !86
  %63 = load double, ptr %un_accurate, align 8, !dbg !3219, !tbaa !86
  %add76 = fadd double %62, %63, !dbg !3220
  %64 = load double, ptr %un_out, align 8, !dbg !3221, !tbaa !86
  %65 = call double @llvm.fmuladd.f64(double %cond75, double %add76, double %64), !dbg !3222
  store double %65, ptr %U, align 8, !dbg !3223, !tbaa !86
  %66 = load double, ptr %tmp1, align 8, !dbg !3224, !tbaa !86
  %67 = load i32, ptr %n.addr, align 4, !dbg !3225, !tbaa !73
  %add78 = add nsw i32 %67, 2, !dbg !3226
  %conv79 = sitofp i32 %add78 to double, !dbg !3227
  %68 = load double, ptr %eps_int.addr, align 8, !dbg !3228, !tbaa !86
  %69 = load double, ptr %eps_accurate, align 8, !dbg !3229, !tbaa !86
  %add80 = fadd double %68, %69, !dbg !3230
  %mul81 = fmul double %conv79, %add80, !dbg !3231
  %70 = load double, ptr %S, align 8, !dbg !3232, !tbaa !86
  %71 = load double, ptr %eps_out, align 8, !dbg !3233, !tbaa !86
  %72 = load double, ptr %r_true_l.addr, align 8, !dbg !3234, !tbaa !86
  %73 = call double @llvm.fabs.f64(double %72), !dbg !3235
  %mul83 = fmul double %71, %73, !dbg !3236
  %74 = call double @llvm.fmuladd.f64(double %mul81, double %70, double %mul83), !dbg !3237
  %75 = load double, ptr %U, align 8, !dbg !3238, !tbaa !86
  %add84 = fadd double %74, %75, !dbg !3239
  %div = fdiv double %66, %add84, !dbg !3240
  %76 = load ptr, ptr %test_ratio.addr, align 8, !dbg !3241, !tbaa !90
  store double %div, ptr %76, align 8, !dbg !3242, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_out) #5, !dbg !3243
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_accurate) #5, !dbg !3243
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_d) #5, !dbg !3243
  call void @llvm.lifetime.end.p0(i64 8, ptr %U) #5, !dbg !3243
  call void @llvm.lifetime.end.p0(i64 8, ptr %S2) #5, !dbg !3243
  call void @llvm.lifetime.end.p0(i64 8, ptr %S1) #5, !dbg !3243
  call void @llvm.lifetime.end.p0(i64 8, ptr %S) #5, !dbg !3243
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp1) #5, !dbg !3243
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_out) #5, !dbg !3243
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_accurate) #5, !dbg !3243
  call void @llvm.lifetime.end.p0(i64 4, ptr %iy) #5, !dbg !3243
  call void @llvm.lifetime.end.p0(i64 4, ptr %ix) #5, !dbg !3243
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !3243
  ret void, !dbg !3243
}

; Function Attrs: nounwind uwtable
define dso_local void @test_BLAS_ddot_s_d(i32 noundef %n, i32 noundef %conj, double noundef %alpha, double noundef %beta, double noundef %rin, double noundef %rout, double noundef %r_true_l, double noundef %r_true_t, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, double noundef %eps_int, double noundef %un_int, ptr noundef %test_ratio) #0 !dbg !3244 {
entry:
  %n.addr = alloca i32, align 4
  %conj.addr = alloca i32, align 4
  %alpha.addr = alloca double, align 8
  %beta.addr = alloca double, align 8
  %rin.addr = alloca double, align 8
  %rout.addr = alloca double, align 8
  %r_true_l.addr = alloca double, align 8
  %r_true_t.addr = alloca double, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %eps_int.addr = alloca double, align 8
  %un_int.addr = alloca double, align 8
  %test_ratio.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %eps_accurate = alloca double, align 8
  %eps_out = alloca double, align 8
  %tmp1 = alloca double, align 8
  %S = alloca double, align 8
  %S1 = alloca double, align 8
  %S2 = alloca double, align 8
  %U = alloca double, align 8
  %un_d = alloca double, align 8
  %un_accurate = alloca double, align 8
  %un_out = alloca double, align 8
  store i32 %n, ptr %n.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3248, metadata !DIExpression()), !dbg !3276
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !78
  tail call void @llvm.dbg.declare(metadata ptr %conj.addr, metadata !3249, metadata !DIExpression()), !dbg !3277
  store double %alpha, ptr %alpha.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !3250, metadata !DIExpression()), !dbg !3278
  store double %beta, ptr %beta.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %beta.addr, metadata !3251, metadata !DIExpression()), !dbg !3279
  store double %rin, ptr %rin.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %rin.addr, metadata !3252, metadata !DIExpression()), !dbg !3280
  store double %rout, ptr %rout.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %rout.addr, metadata !3253, metadata !DIExpression()), !dbg !3281
  store double %r_true_l, ptr %r_true_l.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %r_true_l.addr, metadata !3254, metadata !DIExpression()), !dbg !3282
  store double %r_true_t, ptr %r_true_t.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %r_true_t.addr, metadata !3255, metadata !DIExpression()), !dbg !3283
  store ptr %x, ptr %x.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !3256, metadata !DIExpression()), !dbg !3284
  store i32 %incx, ptr %incx.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incx.addr, metadata !3257, metadata !DIExpression()), !dbg !3285
  store ptr %y, ptr %y.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !3258, metadata !DIExpression()), !dbg !3286
  store i32 %incy, ptr %incy.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incy.addr, metadata !3259, metadata !DIExpression()), !dbg !3287
  store double %eps_int, ptr %eps_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %eps_int.addr, metadata !3260, metadata !DIExpression()), !dbg !3288
  store double %un_int, ptr %un_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %un_int.addr, metadata !3261, metadata !DIExpression()), !dbg !3289
  store ptr %test_ratio, ptr %test_ratio.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %test_ratio.addr, metadata !3262, metadata !DIExpression()), !dbg !3290
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !3291
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3263, metadata !DIExpression()), !dbg !3292
  call void @llvm.lifetime.start.p0(i64 4, ptr %ix) #5, !dbg !3291
  tail call void @llvm.dbg.declare(metadata ptr %ix, metadata !3264, metadata !DIExpression()), !dbg !3293
  call void @llvm.lifetime.start.p0(i64 4, ptr %iy) #5, !dbg !3291
  tail call void @llvm.dbg.declare(metadata ptr %iy, metadata !3265, metadata !DIExpression()), !dbg !3294
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_accurate) #5, !dbg !3295
  tail call void @llvm.dbg.declare(metadata ptr %eps_accurate, metadata !3266, metadata !DIExpression()), !dbg !3296
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_out) #5, !dbg !3295
  tail call void @llvm.dbg.declare(metadata ptr %eps_out, metadata !3267, metadata !DIExpression()), !dbg !3297
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp1) #5, !dbg !3295
  tail call void @llvm.dbg.declare(metadata ptr %tmp1, metadata !3268, metadata !DIExpression()), !dbg !3298
  call void @llvm.lifetime.start.p0(i64 8, ptr %S) #5, !dbg !3295
  tail call void @llvm.dbg.declare(metadata ptr %S, metadata !3269, metadata !DIExpression()), !dbg !3299
  call void @llvm.lifetime.start.p0(i64 8, ptr %S1) #5, !dbg !3295
  tail call void @llvm.dbg.declare(metadata ptr %S1, metadata !3270, metadata !DIExpression()), !dbg !3300
  call void @llvm.lifetime.start.p0(i64 8, ptr %S2) #5, !dbg !3295
  tail call void @llvm.dbg.declare(metadata ptr %S2, metadata !3271, metadata !DIExpression()), !dbg !3301
  call void @llvm.lifetime.start.p0(i64 8, ptr %U) #5, !dbg !3295
  tail call void @llvm.dbg.declare(metadata ptr %U, metadata !3272, metadata !DIExpression()), !dbg !3302
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_d) #5, !dbg !3303
  tail call void @llvm.dbg.declare(metadata ptr %un_d, metadata !3273, metadata !DIExpression()), !dbg !3304
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_accurate) #5, !dbg !3303
  tail call void @llvm.dbg.declare(metadata ptr %un_accurate, metadata !3274, metadata !DIExpression()), !dbg !3305
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_out) #5, !dbg !3303
  tail call void @llvm.dbg.declare(metadata ptr %un_out, metadata !3275, metadata !DIExpression()), !dbg !3306
  store i32 0, ptr %ix, align 4, !dbg !3307, !tbaa !73
  store i32 0, ptr %iy, align 4, !dbg !3308, !tbaa !73
  %0 = load i32, ptr %incx.addr, align 4, !dbg !3309, !tbaa !73
  %cmp = icmp slt i32 %0, 0, !dbg !3311
  br i1 %cmp, label %if.then, label %if.end, !dbg !3312

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4, !dbg !3313, !tbaa !73
  %sub = sub nsw i32 %1, 1, !dbg !3314
  %sub1 = sub nsw i32 0, %sub, !dbg !3315
  %2 = load i32, ptr %incx.addr, align 4, !dbg !3316, !tbaa !73
  %mul = mul nsw i32 %sub1, %2, !dbg !3317
  store i32 %mul, ptr %ix, align 4, !dbg !3318, !tbaa !73
  br label %if.end, !dbg !3319

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %incy.addr, align 4, !dbg !3320, !tbaa !73
  %cmp2 = icmp slt i32 %3, 0, !dbg !3322
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !3323

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr %n.addr, align 4, !dbg !3324, !tbaa !73
  %sub4 = sub nsw i32 %4, 1, !dbg !3325
  %sub5 = sub nsw i32 0, %sub4, !dbg !3326
  %5 = load i32, ptr %incy.addr, align 4, !dbg !3327, !tbaa !73
  %mul6 = mul nsw i32 %sub5, %5, !dbg !3328
  store i32 %mul6, ptr %iy, align 4, !dbg !3329, !tbaa !73
  br label %if.end7, !dbg !3330

if.end7:                                          ; preds = %if.then3, %if.end
  store double 0.000000e+00, ptr %S2, align 8, !dbg !3331, !tbaa !86
  store double 0.000000e+00, ptr %S1, align 8, !dbg !3332, !tbaa !86
  store double 0.000000e+00, ptr %S, align 8, !dbg !3333, !tbaa !86
  store i32 0, ptr %i, align 4, !dbg !3334, !tbaa !73
  br label %for.cond, !dbg !3336

for.cond:                                         ; preds = %for.inc, %if.end7
  %6 = load i32, ptr %i, align 4, !dbg !3337, !tbaa !73
  %7 = load i32, ptr %n.addr, align 4, !dbg !3339, !tbaa !73
  %cmp8 = icmp slt i32 %6, %7, !dbg !3340
  br i1 %cmp8, label %for.body, label %for.end, !dbg !3341

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %x.addr, align 8, !dbg !3342, !tbaa !90
  %9 = load i32, ptr %ix, align 4, !dbg !3344, !tbaa !73
  %idxprom = sext i32 %9 to i64, !dbg !3342
  %arrayidx = getelementptr inbounds float, ptr %8, i64 %idxprom, !dbg !3342
  %10 = load float, ptr %arrayidx, align 4, !dbg !3342, !tbaa !80
  %conv = fpext float %10 to double, !dbg !3342
  %11 = load ptr, ptr %y.addr, align 8, !dbg !3345, !tbaa !90
  %12 = load i32, ptr %iy, align 4, !dbg !3346, !tbaa !73
  %idxprom9 = sext i32 %12 to i64, !dbg !3345
  %arrayidx10 = getelementptr inbounds double, ptr %11, i64 %idxprom9, !dbg !3345
  %13 = load double, ptr %arrayidx10, align 8, !dbg !3345, !tbaa !86
  %mul11 = fmul double %conv, %13, !dbg !3347
  %14 = call double @llvm.fabs.f64(double %mul11), !dbg !3348
  %15 = load double, ptr %S, align 8, !dbg !3349, !tbaa !86
  %add = fadd double %15, %14, !dbg !3349
  store double %add, ptr %S, align 8, !dbg !3349, !tbaa !86
  %16 = load ptr, ptr %x.addr, align 8, !dbg !3350, !tbaa !90
  %17 = load i32, ptr %ix, align 4, !dbg !3351, !tbaa !73
  %idxprom12 = sext i32 %17 to i64, !dbg !3350
  %arrayidx13 = getelementptr inbounds float, ptr %16, i64 %idxprom12, !dbg !3350
  %18 = load float, ptr %arrayidx13, align 4, !dbg !3350, !tbaa !80
  %conv14 = fpext float %18 to double, !dbg !3350
  %19 = call double @llvm.fabs.f64(double %conv14), !dbg !3352
  %20 = load double, ptr %S1, align 8, !dbg !3353, !tbaa !86
  %add15 = fadd double %20, %19, !dbg !3353
  store double %add15, ptr %S1, align 8, !dbg !3353, !tbaa !86
  %21 = load ptr, ptr %y.addr, align 8, !dbg !3354, !tbaa !90
  %22 = load i32, ptr %iy, align 4, !dbg !3355, !tbaa !73
  %idxprom16 = sext i32 %22 to i64, !dbg !3354
  %arrayidx17 = getelementptr inbounds double, ptr %21, i64 %idxprom16, !dbg !3354
  %23 = load double, ptr %arrayidx17, align 8, !dbg !3354, !tbaa !86
  %24 = call double @llvm.fabs.f64(double %23), !dbg !3356
  %25 = load double, ptr %S2, align 8, !dbg !3357, !tbaa !86
  %add18 = fadd double %25, %24, !dbg !3357
  store double %add18, ptr %S2, align 8, !dbg !3357, !tbaa !86
  %26 = load i32, ptr %incx.addr, align 4, !dbg !3358, !tbaa !73
  %27 = load i32, ptr %ix, align 4, !dbg !3359, !tbaa !73
  %add19 = add nsw i32 %27, %26, !dbg !3359
  store i32 %add19, ptr %ix, align 4, !dbg !3359, !tbaa !73
  %28 = load i32, ptr %incy.addr, align 4, !dbg !3360, !tbaa !73
  %29 = load i32, ptr %iy, align 4, !dbg !3361, !tbaa !73
  %add20 = add nsw i32 %29, %28, !dbg !3361
  store i32 %add20, ptr %iy, align 4, !dbg !3361, !tbaa !73
  br label %for.inc, !dbg !3362

for.inc:                                          ; preds = %for.body
  %30 = load i32, ptr %i, align 4, !dbg !3363, !tbaa !73
  %inc = add nsw i32 %30, 1, !dbg !3363
  store i32 %inc, ptr %i, align 4, !dbg !3363, !tbaa !73
  br label %for.cond, !dbg !3364, !llvm.loop !3365

for.end:                                          ; preds = %for.cond
  %31 = load double, ptr %alpha.addr, align 8, !dbg !3367, !tbaa !86
  %32 = call double @llvm.fabs.f64(double %31), !dbg !3368
  %33 = load double, ptr %S, align 8, !dbg !3369, !tbaa !86
  %mul21 = fmul double %33, %32, !dbg !3369
  store double %mul21, ptr %S, align 8, !dbg !3369, !tbaa !86
  %34 = load double, ptr %beta.addr, align 8, !dbg !3370, !tbaa !86
  %35 = load double, ptr %rin.addr, align 8, !dbg !3371, !tbaa !86
  %mul22 = fmul double %34, %35, !dbg !3372
  %36 = call double @llvm.fabs.f64(double %mul22), !dbg !3373
  %37 = load double, ptr %S, align 8, !dbg !3374, !tbaa !86
  %add23 = fadd double %37, %36, !dbg !3374
  store double %add23, ptr %S, align 8, !dbg !3374, !tbaa !86
  %call = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !3375
  %conv24 = sitofp i32 %call to double, !dbg !3376
  %call25 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !3377
  %conv26 = sitofp i32 %call25 to double, !dbg !3378
  %call27 = call double @pow(double noundef %conv24, double noundef %conv26) #5, !dbg !3379
  store double %call27, ptr %un_d, align 8, !dbg !3380, !tbaa !86
  %38 = load double, ptr %S, align 8, !dbg !3381, !tbaa !86
  %39 = load double, ptr %un_d, align 8, !dbg !3381, !tbaa !86
  %cmp28 = fcmp ogt double %38, %39, !dbg !3381
  br i1 %cmp28, label %cond.true, label %cond.false, !dbg !3381

cond.true:                                        ; preds = %for.end
  %40 = load double, ptr %S, align 8, !dbg !3381, !tbaa !86
  br label %cond.end, !dbg !3381

cond.false:                                       ; preds = %for.end
  %41 = load double, ptr %un_d, align 8, !dbg !3381, !tbaa !86
  br label %cond.end, !dbg !3381

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %40, %cond.true ], [ %41, %cond.false ], !dbg !3381
  store double %cond, ptr %S, align 8, !dbg !3382, !tbaa !86
  %call30 = call double @power(i32 noundef 2, i32 noundef -106), !dbg !3383
  store double %call30, ptr %eps_accurate, align 8, !dbg !3384, !tbaa !86
  %call31 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 214), !dbg !3385
  %conv32 = sitofp i32 %call31 to double, !dbg !3386
  %call33 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 214), !dbg !3387
  %conv34 = sitofp i32 %call33 to double, !dbg !3388
  %call35 = call double @pow(double noundef %conv32, double noundef %conv34) #5, !dbg !3389
  store double %call35, ptr %un_accurate, align 8, !dbg !3390, !tbaa !86
  %call36 = call double @power(i32 noundef 2, i32 noundef -53), !dbg !3391
  store double %call36, ptr %eps_out, align 8, !dbg !3392, !tbaa !86
  %call37 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !3393
  %conv38 = sitofp i32 %call37 to double, !dbg !3394
  %call39 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !3395
  %conv40 = sitofp i32 %call39 to double, !dbg !3396
  %call41 = call double @pow(double noundef %conv38, double noundef %conv40) #5, !dbg !3397
  store double %call41, ptr %un_out, align 8, !dbg !3398, !tbaa !86
  %42 = load double, ptr %rout.addr, align 8, !dbg !3399, !tbaa !86
  %43 = load double, ptr %r_true_l.addr, align 8, !dbg !3400, !tbaa !86
  %sub42 = fsub double %42, %43, !dbg !3401
  %44 = load double, ptr %r_true_t.addr, align 8, !dbg !3402, !tbaa !86
  %sub43 = fsub double %sub42, %44, !dbg !3403
  %45 = call double @llvm.fabs.f64(double %sub43), !dbg !3404
  store double %45, ptr %tmp1, align 8, !dbg !3405, !tbaa !86
  %46 = load double, ptr %alpha.addr, align 8, !dbg !3406, !tbaa !86
  %47 = call double @llvm.fabs.f64(double %46), !dbg !3407
  %mul44 = fmul double 2.000000e+00, %47, !dbg !3408
  %48 = load i32, ptr %n.addr, align 4, !dbg !3409, !tbaa !73
  %conv45 = sitofp i32 %48 to double, !dbg !3409
  %49 = call double @llvm.fmuladd.f64(double %mul44, double %conv45, double 3.000000e+00), !dbg !3410
  store double %49, ptr %U, align 8, !dbg !3411, !tbaa !86
  %50 = load double, ptr %U, align 8, !dbg !3412, !tbaa !86
  %51 = load double, ptr %S1, align 8, !dbg !3412, !tbaa !86
  %52 = load i32, ptr %n.addr, align 4, !dbg !3412, !tbaa !73
  %mul47 = mul nsw i32 2, %52, !dbg !3412
  %conv48 = sitofp i32 %mul47 to double, !dbg !3412
  %add49 = fadd double %51, %conv48, !dbg !3412
  %add50 = fadd double %add49, 1.000000e+00, !dbg !3412
  %cmp51 = fcmp ogt double %50, %add50, !dbg !3412
  br i1 %cmp51, label %cond.true53, label %cond.false54, !dbg !3412

cond.true53:                                      ; preds = %cond.end
  %53 = load double, ptr %U, align 8, !dbg !3412, !tbaa !86
  br label %cond.end59, !dbg !3412

cond.false54:                                     ; preds = %cond.end
  %54 = load double, ptr %S1, align 8, !dbg !3412, !tbaa !86
  %55 = load i32, ptr %n.addr, align 4, !dbg !3412, !tbaa !73
  %mul55 = mul nsw i32 2, %55, !dbg !3412
  %conv56 = sitofp i32 %mul55 to double, !dbg !3412
  %add57 = fadd double %54, %conv56, !dbg !3412
  %add58 = fadd double %add57, 1.000000e+00, !dbg !3412
  br label %cond.end59, !dbg !3412

cond.end59:                                       ; preds = %cond.false54, %cond.true53
  %cond60 = phi double [ %53, %cond.true53 ], [ %add58, %cond.false54 ], !dbg !3412
  store double %cond60, ptr %U, align 8, !dbg !3413, !tbaa !86
  %56 = load double, ptr %U, align 8, !dbg !3414, !tbaa !86
  %57 = load double, ptr %S2, align 8, !dbg !3414, !tbaa !86
  %58 = load i32, ptr %n.addr, align 4, !dbg !3414, !tbaa !73
  %mul61 = mul nsw i32 2, %58, !dbg !3414
  %conv62 = sitofp i32 %mul61 to double, !dbg !3414
  %add63 = fadd double %57, %conv62, !dbg !3414
  %add64 = fadd double %add63, 1.000000e+00, !dbg !3414
  %cmp65 = fcmp ogt double %56, %add64, !dbg !3414
  br i1 %cmp65, label %cond.true67, label %cond.false68, !dbg !3414

cond.true67:                                      ; preds = %cond.end59
  %59 = load double, ptr %U, align 8, !dbg !3414, !tbaa !86
  br label %cond.end73, !dbg !3414

cond.false68:                                     ; preds = %cond.end59
  %60 = load double, ptr %S2, align 8, !dbg !3414, !tbaa !86
  %61 = load i32, ptr %n.addr, align 4, !dbg !3414, !tbaa !73
  %mul69 = mul nsw i32 2, %61, !dbg !3414
  %conv70 = sitofp i32 %mul69 to double, !dbg !3414
  %add71 = fadd double %60, %conv70, !dbg !3414
  %add72 = fadd double %add71, 1.000000e+00, !dbg !3414
  br label %cond.end73, !dbg !3414

cond.end73:                                       ; preds = %cond.false68, %cond.true67
  %cond74 = phi double [ %59, %cond.true67 ], [ %add72, %cond.false68 ], !dbg !3414
  %62 = load double, ptr %un_int.addr, align 8, !dbg !3415, !tbaa !86
  %63 = load double, ptr %un_accurate, align 8, !dbg !3416, !tbaa !86
  %add75 = fadd double %62, %63, !dbg !3417
  %64 = load double, ptr %un_out, align 8, !dbg !3418, !tbaa !86
  %65 = call double @llvm.fmuladd.f64(double %cond74, double %add75, double %64), !dbg !3419
  store double %65, ptr %U, align 8, !dbg !3420, !tbaa !86
  %66 = load double, ptr %tmp1, align 8, !dbg !3421, !tbaa !86
  %67 = load i32, ptr %n.addr, align 4, !dbg !3422, !tbaa !73
  %add77 = add nsw i32 %67, 2, !dbg !3423
  %conv78 = sitofp i32 %add77 to double, !dbg !3424
  %68 = load double, ptr %eps_int.addr, align 8, !dbg !3425, !tbaa !86
  %69 = load double, ptr %eps_accurate, align 8, !dbg !3426, !tbaa !86
  %add79 = fadd double %68, %69, !dbg !3427
  %mul80 = fmul double %conv78, %add79, !dbg !3428
  %70 = load double, ptr %S, align 8, !dbg !3429, !tbaa !86
  %71 = load double, ptr %eps_out, align 8, !dbg !3430, !tbaa !86
  %72 = load double, ptr %r_true_l.addr, align 8, !dbg !3431, !tbaa !86
  %73 = call double @llvm.fabs.f64(double %72), !dbg !3432
  %mul82 = fmul double %71, %73, !dbg !3433
  %74 = call double @llvm.fmuladd.f64(double %mul80, double %70, double %mul82), !dbg !3434
  %75 = load double, ptr %U, align 8, !dbg !3435, !tbaa !86
  %add83 = fadd double %74, %75, !dbg !3436
  %div = fdiv double %66, %add83, !dbg !3437
  %76 = load ptr, ptr %test_ratio.addr, align 8, !dbg !3438, !tbaa !90
  store double %div, ptr %76, align 8, !dbg !3439, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_out) #5, !dbg !3440
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_accurate) #5, !dbg !3440
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_d) #5, !dbg !3440
  call void @llvm.lifetime.end.p0(i64 8, ptr %U) #5, !dbg !3440
  call void @llvm.lifetime.end.p0(i64 8, ptr %S2) #5, !dbg !3440
  call void @llvm.lifetime.end.p0(i64 8, ptr %S1) #5, !dbg !3440
  call void @llvm.lifetime.end.p0(i64 8, ptr %S) #5, !dbg !3440
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp1) #5, !dbg !3440
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_out) #5, !dbg !3440
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_accurate) #5, !dbg !3440
  call void @llvm.lifetime.end.p0(i64 4, ptr %iy) #5, !dbg !3440
  call void @llvm.lifetime.end.p0(i64 4, ptr %ix) #5, !dbg !3440
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !3440
  ret void, !dbg !3440
}

; Function Attrs: nounwind uwtable
define dso_local void @test_BLAS_ddot_d_s(i32 noundef %n, i32 noundef %conj, double noundef %alpha, double noundef %beta, double noundef %rin, double noundef %rout, double noundef %r_true_l, double noundef %r_true_t, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, double noundef %eps_int, double noundef %un_int, ptr noundef %test_ratio) #0 !dbg !3441 {
entry:
  %n.addr = alloca i32, align 4
  %conj.addr = alloca i32, align 4
  %alpha.addr = alloca double, align 8
  %beta.addr = alloca double, align 8
  %rin.addr = alloca double, align 8
  %rout.addr = alloca double, align 8
  %r_true_l.addr = alloca double, align 8
  %r_true_t.addr = alloca double, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %eps_int.addr = alloca double, align 8
  %un_int.addr = alloca double, align 8
  %test_ratio.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %eps_accurate = alloca double, align 8
  %eps_out = alloca double, align 8
  %tmp1 = alloca double, align 8
  %S = alloca double, align 8
  %S1 = alloca double, align 8
  %S2 = alloca double, align 8
  %U = alloca double, align 8
  %un_d = alloca double, align 8
  %un_accurate = alloca double, align 8
  %un_out = alloca double, align 8
  store i32 %n, ptr %n.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3445, metadata !DIExpression()), !dbg !3473
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !78
  tail call void @llvm.dbg.declare(metadata ptr %conj.addr, metadata !3446, metadata !DIExpression()), !dbg !3474
  store double %alpha, ptr %alpha.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !3447, metadata !DIExpression()), !dbg !3475
  store double %beta, ptr %beta.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %beta.addr, metadata !3448, metadata !DIExpression()), !dbg !3476
  store double %rin, ptr %rin.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %rin.addr, metadata !3449, metadata !DIExpression()), !dbg !3477
  store double %rout, ptr %rout.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %rout.addr, metadata !3450, metadata !DIExpression()), !dbg !3478
  store double %r_true_l, ptr %r_true_l.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %r_true_l.addr, metadata !3451, metadata !DIExpression()), !dbg !3479
  store double %r_true_t, ptr %r_true_t.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %r_true_t.addr, metadata !3452, metadata !DIExpression()), !dbg !3480
  store ptr %x, ptr %x.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !3453, metadata !DIExpression()), !dbg !3481
  store i32 %incx, ptr %incx.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incx.addr, metadata !3454, metadata !DIExpression()), !dbg !3482
  store ptr %y, ptr %y.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !3455, metadata !DIExpression()), !dbg !3483
  store i32 %incy, ptr %incy.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incy.addr, metadata !3456, metadata !DIExpression()), !dbg !3484
  store double %eps_int, ptr %eps_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %eps_int.addr, metadata !3457, metadata !DIExpression()), !dbg !3485
  store double %un_int, ptr %un_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %un_int.addr, metadata !3458, metadata !DIExpression()), !dbg !3486
  store ptr %test_ratio, ptr %test_ratio.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %test_ratio.addr, metadata !3459, metadata !DIExpression()), !dbg !3487
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !3488
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3460, metadata !DIExpression()), !dbg !3489
  call void @llvm.lifetime.start.p0(i64 4, ptr %ix) #5, !dbg !3488
  tail call void @llvm.dbg.declare(metadata ptr %ix, metadata !3461, metadata !DIExpression()), !dbg !3490
  call void @llvm.lifetime.start.p0(i64 4, ptr %iy) #5, !dbg !3488
  tail call void @llvm.dbg.declare(metadata ptr %iy, metadata !3462, metadata !DIExpression()), !dbg !3491
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_accurate) #5, !dbg !3492
  tail call void @llvm.dbg.declare(metadata ptr %eps_accurate, metadata !3463, metadata !DIExpression()), !dbg !3493
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_out) #5, !dbg !3492
  tail call void @llvm.dbg.declare(metadata ptr %eps_out, metadata !3464, metadata !DIExpression()), !dbg !3494
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp1) #5, !dbg !3492
  tail call void @llvm.dbg.declare(metadata ptr %tmp1, metadata !3465, metadata !DIExpression()), !dbg !3495
  call void @llvm.lifetime.start.p0(i64 8, ptr %S) #5, !dbg !3492
  tail call void @llvm.dbg.declare(metadata ptr %S, metadata !3466, metadata !DIExpression()), !dbg !3496
  call void @llvm.lifetime.start.p0(i64 8, ptr %S1) #5, !dbg !3492
  tail call void @llvm.dbg.declare(metadata ptr %S1, metadata !3467, metadata !DIExpression()), !dbg !3497
  call void @llvm.lifetime.start.p0(i64 8, ptr %S2) #5, !dbg !3492
  tail call void @llvm.dbg.declare(metadata ptr %S2, metadata !3468, metadata !DIExpression()), !dbg !3498
  call void @llvm.lifetime.start.p0(i64 8, ptr %U) #5, !dbg !3492
  tail call void @llvm.dbg.declare(metadata ptr %U, metadata !3469, metadata !DIExpression()), !dbg !3499
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_d) #5, !dbg !3500
  tail call void @llvm.dbg.declare(metadata ptr %un_d, metadata !3470, metadata !DIExpression()), !dbg !3501
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_accurate) #5, !dbg !3500
  tail call void @llvm.dbg.declare(metadata ptr %un_accurate, metadata !3471, metadata !DIExpression()), !dbg !3502
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_out) #5, !dbg !3500
  tail call void @llvm.dbg.declare(metadata ptr %un_out, metadata !3472, metadata !DIExpression()), !dbg !3503
  store i32 0, ptr %ix, align 4, !dbg !3504, !tbaa !73
  store i32 0, ptr %iy, align 4, !dbg !3505, !tbaa !73
  %0 = load i32, ptr %incx.addr, align 4, !dbg !3506, !tbaa !73
  %cmp = icmp slt i32 %0, 0, !dbg !3508
  br i1 %cmp, label %if.then, label %if.end, !dbg !3509

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4, !dbg !3510, !tbaa !73
  %sub = sub nsw i32 %1, 1, !dbg !3511
  %sub1 = sub nsw i32 0, %sub, !dbg !3512
  %2 = load i32, ptr %incx.addr, align 4, !dbg !3513, !tbaa !73
  %mul = mul nsw i32 %sub1, %2, !dbg !3514
  store i32 %mul, ptr %ix, align 4, !dbg !3515, !tbaa !73
  br label %if.end, !dbg !3516

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %incy.addr, align 4, !dbg !3517, !tbaa !73
  %cmp2 = icmp slt i32 %3, 0, !dbg !3519
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !3520

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr %n.addr, align 4, !dbg !3521, !tbaa !73
  %sub4 = sub nsw i32 %4, 1, !dbg !3522
  %sub5 = sub nsw i32 0, %sub4, !dbg !3523
  %5 = load i32, ptr %incy.addr, align 4, !dbg !3524, !tbaa !73
  %mul6 = mul nsw i32 %sub5, %5, !dbg !3525
  store i32 %mul6, ptr %iy, align 4, !dbg !3526, !tbaa !73
  br label %if.end7, !dbg !3527

if.end7:                                          ; preds = %if.then3, %if.end
  store double 0.000000e+00, ptr %S2, align 8, !dbg !3528, !tbaa !86
  store double 0.000000e+00, ptr %S1, align 8, !dbg !3529, !tbaa !86
  store double 0.000000e+00, ptr %S, align 8, !dbg !3530, !tbaa !86
  store i32 0, ptr %i, align 4, !dbg !3531, !tbaa !73
  br label %for.cond, !dbg !3533

for.cond:                                         ; preds = %for.inc, %if.end7
  %6 = load i32, ptr %i, align 4, !dbg !3534, !tbaa !73
  %7 = load i32, ptr %n.addr, align 4, !dbg !3536, !tbaa !73
  %cmp8 = icmp slt i32 %6, %7, !dbg !3537
  br i1 %cmp8, label %for.body, label %for.end, !dbg !3538

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %x.addr, align 8, !dbg !3539, !tbaa !90
  %9 = load i32, ptr %ix, align 4, !dbg !3541, !tbaa !73
  %idxprom = sext i32 %9 to i64, !dbg !3539
  %arrayidx = getelementptr inbounds double, ptr %8, i64 %idxprom, !dbg !3539
  %10 = load double, ptr %arrayidx, align 8, !dbg !3539, !tbaa !86
  %11 = load ptr, ptr %y.addr, align 8, !dbg !3542, !tbaa !90
  %12 = load i32, ptr %iy, align 4, !dbg !3543, !tbaa !73
  %idxprom9 = sext i32 %12 to i64, !dbg !3542
  %arrayidx10 = getelementptr inbounds float, ptr %11, i64 %idxprom9, !dbg !3542
  %13 = load float, ptr %arrayidx10, align 4, !dbg !3542, !tbaa !80
  %conv = fpext float %13 to double, !dbg !3542
  %mul11 = fmul double %10, %conv, !dbg !3544
  %14 = call double @llvm.fabs.f64(double %mul11), !dbg !3545
  %15 = load double, ptr %S, align 8, !dbg !3546, !tbaa !86
  %add = fadd double %15, %14, !dbg !3546
  store double %add, ptr %S, align 8, !dbg !3546, !tbaa !86
  %16 = load ptr, ptr %x.addr, align 8, !dbg !3547, !tbaa !90
  %17 = load i32, ptr %ix, align 4, !dbg !3548, !tbaa !73
  %idxprom12 = sext i32 %17 to i64, !dbg !3547
  %arrayidx13 = getelementptr inbounds double, ptr %16, i64 %idxprom12, !dbg !3547
  %18 = load double, ptr %arrayidx13, align 8, !dbg !3547, !tbaa !86
  %19 = call double @llvm.fabs.f64(double %18), !dbg !3549
  %20 = load double, ptr %S1, align 8, !dbg !3550, !tbaa !86
  %add14 = fadd double %20, %19, !dbg !3550
  store double %add14, ptr %S1, align 8, !dbg !3550, !tbaa !86
  %21 = load ptr, ptr %y.addr, align 8, !dbg !3551, !tbaa !90
  %22 = load i32, ptr %iy, align 4, !dbg !3552, !tbaa !73
  %idxprom15 = sext i32 %22 to i64, !dbg !3551
  %arrayidx16 = getelementptr inbounds float, ptr %21, i64 %idxprom15, !dbg !3551
  %23 = load float, ptr %arrayidx16, align 4, !dbg !3551, !tbaa !80
  %conv17 = fpext float %23 to double, !dbg !3551
  %24 = call double @llvm.fabs.f64(double %conv17), !dbg !3553
  %25 = load double, ptr %S2, align 8, !dbg !3554, !tbaa !86
  %add18 = fadd double %25, %24, !dbg !3554
  store double %add18, ptr %S2, align 8, !dbg !3554, !tbaa !86
  %26 = load i32, ptr %incx.addr, align 4, !dbg !3555, !tbaa !73
  %27 = load i32, ptr %ix, align 4, !dbg !3556, !tbaa !73
  %add19 = add nsw i32 %27, %26, !dbg !3556
  store i32 %add19, ptr %ix, align 4, !dbg !3556, !tbaa !73
  %28 = load i32, ptr %incy.addr, align 4, !dbg !3557, !tbaa !73
  %29 = load i32, ptr %iy, align 4, !dbg !3558, !tbaa !73
  %add20 = add nsw i32 %29, %28, !dbg !3558
  store i32 %add20, ptr %iy, align 4, !dbg !3558, !tbaa !73
  br label %for.inc, !dbg !3559

for.inc:                                          ; preds = %for.body
  %30 = load i32, ptr %i, align 4, !dbg !3560, !tbaa !73
  %inc = add nsw i32 %30, 1, !dbg !3560
  store i32 %inc, ptr %i, align 4, !dbg !3560, !tbaa !73
  br label %for.cond, !dbg !3561, !llvm.loop !3562

for.end:                                          ; preds = %for.cond
  %31 = load double, ptr %alpha.addr, align 8, !dbg !3564, !tbaa !86
  %32 = call double @llvm.fabs.f64(double %31), !dbg !3565
  %33 = load double, ptr %S, align 8, !dbg !3566, !tbaa !86
  %mul21 = fmul double %33, %32, !dbg !3566
  store double %mul21, ptr %S, align 8, !dbg !3566, !tbaa !86
  %34 = load double, ptr %beta.addr, align 8, !dbg !3567, !tbaa !86
  %35 = load double, ptr %rin.addr, align 8, !dbg !3568, !tbaa !86
  %mul22 = fmul double %34, %35, !dbg !3569
  %36 = call double @llvm.fabs.f64(double %mul22), !dbg !3570
  %37 = load double, ptr %S, align 8, !dbg !3571, !tbaa !86
  %add23 = fadd double %37, %36, !dbg !3571
  store double %add23, ptr %S, align 8, !dbg !3571, !tbaa !86
  %call = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !3572
  %conv24 = sitofp i32 %call to double, !dbg !3573
  %call25 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !3574
  %conv26 = sitofp i32 %call25 to double, !dbg !3575
  %call27 = call double @pow(double noundef %conv24, double noundef %conv26) #5, !dbg !3576
  store double %call27, ptr %un_d, align 8, !dbg !3577, !tbaa !86
  %38 = load double, ptr %S, align 8, !dbg !3578, !tbaa !86
  %39 = load double, ptr %un_d, align 8, !dbg !3578, !tbaa !86
  %cmp28 = fcmp ogt double %38, %39, !dbg !3578
  br i1 %cmp28, label %cond.true, label %cond.false, !dbg !3578

cond.true:                                        ; preds = %for.end
  %40 = load double, ptr %S, align 8, !dbg !3578, !tbaa !86
  br label %cond.end, !dbg !3578

cond.false:                                       ; preds = %for.end
  %41 = load double, ptr %un_d, align 8, !dbg !3578, !tbaa !86
  br label %cond.end, !dbg !3578

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %40, %cond.true ], [ %41, %cond.false ], !dbg !3578
  store double %cond, ptr %S, align 8, !dbg !3579, !tbaa !86
  %call30 = call double @power(i32 noundef 2, i32 noundef -106), !dbg !3580
  store double %call30, ptr %eps_accurate, align 8, !dbg !3581, !tbaa !86
  %call31 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 214), !dbg !3582
  %conv32 = sitofp i32 %call31 to double, !dbg !3583
  %call33 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 214), !dbg !3584
  %conv34 = sitofp i32 %call33 to double, !dbg !3585
  %call35 = call double @pow(double noundef %conv32, double noundef %conv34) #5, !dbg !3586
  store double %call35, ptr %un_accurate, align 8, !dbg !3587, !tbaa !86
  %call36 = call double @power(i32 noundef 2, i32 noundef -53), !dbg !3588
  store double %call36, ptr %eps_out, align 8, !dbg !3589, !tbaa !86
  %call37 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !3590
  %conv38 = sitofp i32 %call37 to double, !dbg !3591
  %call39 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !3592
  %conv40 = sitofp i32 %call39 to double, !dbg !3593
  %call41 = call double @pow(double noundef %conv38, double noundef %conv40) #5, !dbg !3594
  store double %call41, ptr %un_out, align 8, !dbg !3595, !tbaa !86
  %42 = load double, ptr %rout.addr, align 8, !dbg !3596, !tbaa !86
  %43 = load double, ptr %r_true_l.addr, align 8, !dbg !3597, !tbaa !86
  %sub42 = fsub double %42, %43, !dbg !3598
  %44 = load double, ptr %r_true_t.addr, align 8, !dbg !3599, !tbaa !86
  %sub43 = fsub double %sub42, %44, !dbg !3600
  %45 = call double @llvm.fabs.f64(double %sub43), !dbg !3601
  store double %45, ptr %tmp1, align 8, !dbg !3602, !tbaa !86
  %46 = load double, ptr %alpha.addr, align 8, !dbg !3603, !tbaa !86
  %47 = call double @llvm.fabs.f64(double %46), !dbg !3604
  %mul44 = fmul double 2.000000e+00, %47, !dbg !3605
  %48 = load i32, ptr %n.addr, align 4, !dbg !3606, !tbaa !73
  %conv45 = sitofp i32 %48 to double, !dbg !3606
  %49 = call double @llvm.fmuladd.f64(double %mul44, double %conv45, double 3.000000e+00), !dbg !3607
  store double %49, ptr %U, align 8, !dbg !3608, !tbaa !86
  %50 = load double, ptr %U, align 8, !dbg !3609, !tbaa !86
  %51 = load double, ptr %S1, align 8, !dbg !3609, !tbaa !86
  %52 = load i32, ptr %n.addr, align 4, !dbg !3609, !tbaa !73
  %mul47 = mul nsw i32 2, %52, !dbg !3609
  %conv48 = sitofp i32 %mul47 to double, !dbg !3609
  %add49 = fadd double %51, %conv48, !dbg !3609
  %add50 = fadd double %add49, 1.000000e+00, !dbg !3609
  %cmp51 = fcmp ogt double %50, %add50, !dbg !3609
  br i1 %cmp51, label %cond.true53, label %cond.false54, !dbg !3609

cond.true53:                                      ; preds = %cond.end
  %53 = load double, ptr %U, align 8, !dbg !3609, !tbaa !86
  br label %cond.end59, !dbg !3609

cond.false54:                                     ; preds = %cond.end
  %54 = load double, ptr %S1, align 8, !dbg !3609, !tbaa !86
  %55 = load i32, ptr %n.addr, align 4, !dbg !3609, !tbaa !73
  %mul55 = mul nsw i32 2, %55, !dbg !3609
  %conv56 = sitofp i32 %mul55 to double, !dbg !3609
  %add57 = fadd double %54, %conv56, !dbg !3609
  %add58 = fadd double %add57, 1.000000e+00, !dbg !3609
  br label %cond.end59, !dbg !3609

cond.end59:                                       ; preds = %cond.false54, %cond.true53
  %cond60 = phi double [ %53, %cond.true53 ], [ %add58, %cond.false54 ], !dbg !3609
  store double %cond60, ptr %U, align 8, !dbg !3610, !tbaa !86
  %56 = load double, ptr %U, align 8, !dbg !3611, !tbaa !86
  %57 = load double, ptr %S2, align 8, !dbg !3611, !tbaa !86
  %58 = load i32, ptr %n.addr, align 4, !dbg !3611, !tbaa !73
  %mul61 = mul nsw i32 2, %58, !dbg !3611
  %conv62 = sitofp i32 %mul61 to double, !dbg !3611
  %add63 = fadd double %57, %conv62, !dbg !3611
  %add64 = fadd double %add63, 1.000000e+00, !dbg !3611
  %cmp65 = fcmp ogt double %56, %add64, !dbg !3611
  br i1 %cmp65, label %cond.true67, label %cond.false68, !dbg !3611

cond.true67:                                      ; preds = %cond.end59
  %59 = load double, ptr %U, align 8, !dbg !3611, !tbaa !86
  br label %cond.end73, !dbg !3611

cond.false68:                                     ; preds = %cond.end59
  %60 = load double, ptr %S2, align 8, !dbg !3611, !tbaa !86
  %61 = load i32, ptr %n.addr, align 4, !dbg !3611, !tbaa !73
  %mul69 = mul nsw i32 2, %61, !dbg !3611
  %conv70 = sitofp i32 %mul69 to double, !dbg !3611
  %add71 = fadd double %60, %conv70, !dbg !3611
  %add72 = fadd double %add71, 1.000000e+00, !dbg !3611
  br label %cond.end73, !dbg !3611

cond.end73:                                       ; preds = %cond.false68, %cond.true67
  %cond74 = phi double [ %59, %cond.true67 ], [ %add72, %cond.false68 ], !dbg !3611
  %62 = load double, ptr %un_int.addr, align 8, !dbg !3612, !tbaa !86
  %63 = load double, ptr %un_accurate, align 8, !dbg !3613, !tbaa !86
  %add75 = fadd double %62, %63, !dbg !3614
  %64 = load double, ptr %un_out, align 8, !dbg !3615, !tbaa !86
  %65 = call double @llvm.fmuladd.f64(double %cond74, double %add75, double %64), !dbg !3616
  store double %65, ptr %U, align 8, !dbg !3617, !tbaa !86
  %66 = load double, ptr %tmp1, align 8, !dbg !3618, !tbaa !86
  %67 = load i32, ptr %n.addr, align 4, !dbg !3619, !tbaa !73
  %add77 = add nsw i32 %67, 2, !dbg !3620
  %conv78 = sitofp i32 %add77 to double, !dbg !3621
  %68 = load double, ptr %eps_int.addr, align 8, !dbg !3622, !tbaa !86
  %69 = load double, ptr %eps_accurate, align 8, !dbg !3623, !tbaa !86
  %add79 = fadd double %68, %69, !dbg !3624
  %mul80 = fmul double %conv78, %add79, !dbg !3625
  %70 = load double, ptr %S, align 8, !dbg !3626, !tbaa !86
  %71 = load double, ptr %eps_out, align 8, !dbg !3627, !tbaa !86
  %72 = load double, ptr %r_true_l.addr, align 8, !dbg !3628, !tbaa !86
  %73 = call double @llvm.fabs.f64(double %72), !dbg !3629
  %mul82 = fmul double %71, %73, !dbg !3630
  %74 = call double @llvm.fmuladd.f64(double %mul80, double %70, double %mul82), !dbg !3631
  %75 = load double, ptr %U, align 8, !dbg !3632, !tbaa !86
  %add83 = fadd double %74, %75, !dbg !3633
  %div = fdiv double %66, %add83, !dbg !3634
  %76 = load ptr, ptr %test_ratio.addr, align 8, !dbg !3635, !tbaa !90
  store double %div, ptr %76, align 8, !dbg !3636, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_out) #5, !dbg !3637
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_accurate) #5, !dbg !3637
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_d) #5, !dbg !3637
  call void @llvm.lifetime.end.p0(i64 8, ptr %U) #5, !dbg !3637
  call void @llvm.lifetime.end.p0(i64 8, ptr %S2) #5, !dbg !3637
  call void @llvm.lifetime.end.p0(i64 8, ptr %S1) #5, !dbg !3637
  call void @llvm.lifetime.end.p0(i64 8, ptr %S) #5, !dbg !3637
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp1) #5, !dbg !3637
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_out) #5, !dbg !3637
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_accurate) #5, !dbg !3637
  call void @llvm.lifetime.end.p0(i64 4, ptr %iy) #5, !dbg !3637
  call void @llvm.lifetime.end.p0(i64 4, ptr %ix) #5, !dbg !3637
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !3637
  ret void, !dbg !3637
}

; Function Attrs: nounwind uwtable
define dso_local void @test_BLAS_zdot_c_c(i32 noundef %n, i32 noundef %conj, ptr noundef %alpha, ptr noundef %beta, ptr noundef %rin, ptr noundef %rout, ptr noundef %r_true_l, ptr noundef %r_true_t, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, double noundef %eps_int, double noundef %un_int, ptr noundef %test_ratio) #0 !dbg !3638 {
entry:
  %n.addr = alloca i32, align 4
  %conj.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %rin.addr = alloca ptr, align 8
  %rout.addr = alloca ptr, align 8
  %r_true_l.addr = alloca ptr, align 8
  %r_true_t.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %eps_int.addr = alloca double, align 8
  %un_int.addr = alloca double, align 8
  %test_ratio.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %eps_accurate = alloca double, align 8
  %eps_out = alloca double, align 8
  %tmp1 = alloca double, align 8
  %S = alloca double, align 8
  %S1 = alloca double, align 8
  %S2 = alloca double, align 8
  %U = alloca double, align 8
  %prod = alloca [2 x double], align 16
  %tmp = alloca [2 x double], align 16
  %un_d = alloca double, align 8
  %un_accurate = alloca double, align 8
  %un_out = alloca double, align 8
  %x_i = alloca ptr, align 8
  %y_i = alloca ptr, align 8
  %alpha_i = alloca ptr, align 8
  %beta_i = alloca ptr, align 8
  %rin_i = alloca ptr, align 8
  %rout_i = alloca ptr, align 8
  %x_ii = alloca [2 x float], align 4
  %y_ii = alloca [2 x float], align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3640, metadata !DIExpression()), !dbg !3678
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !78
  tail call void @llvm.dbg.declare(metadata ptr %conj.addr, metadata !3641, metadata !DIExpression()), !dbg !3679
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !3642, metadata !DIExpression()), !dbg !3680
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %beta.addr, metadata !3643, metadata !DIExpression()), !dbg !3681
  store ptr %rin, ptr %rin.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %rin.addr, metadata !3644, metadata !DIExpression()), !dbg !3682
  store ptr %rout, ptr %rout.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %rout.addr, metadata !3645, metadata !DIExpression()), !dbg !3683
  store ptr %r_true_l, ptr %r_true_l.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %r_true_l.addr, metadata !3646, metadata !DIExpression()), !dbg !3684
  store ptr %r_true_t, ptr %r_true_t.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %r_true_t.addr, metadata !3647, metadata !DIExpression()), !dbg !3685
  store ptr %x, ptr %x.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !3648, metadata !DIExpression()), !dbg !3686
  store i32 %incx, ptr %incx.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incx.addr, metadata !3649, metadata !DIExpression()), !dbg !3687
  store ptr %y, ptr %y.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !3650, metadata !DIExpression()), !dbg !3688
  store i32 %incy, ptr %incy.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incy.addr, metadata !3651, metadata !DIExpression()), !dbg !3689
  store double %eps_int, ptr %eps_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %eps_int.addr, metadata !3652, metadata !DIExpression()), !dbg !3690
  store double %un_int, ptr %un_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %un_int.addr, metadata !3653, metadata !DIExpression()), !dbg !3691
  store ptr %test_ratio, ptr %test_ratio.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %test_ratio.addr, metadata !3654, metadata !DIExpression()), !dbg !3692
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !3693
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3655, metadata !DIExpression()), !dbg !3694
  call void @llvm.lifetime.start.p0(i64 4, ptr %ix) #5, !dbg !3693
  tail call void @llvm.dbg.declare(metadata ptr %ix, metadata !3656, metadata !DIExpression()), !dbg !3695
  call void @llvm.lifetime.start.p0(i64 4, ptr %iy) #5, !dbg !3693
  tail call void @llvm.dbg.declare(metadata ptr %iy, metadata !3657, metadata !DIExpression()), !dbg !3696
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_accurate) #5, !dbg !3697
  tail call void @llvm.dbg.declare(metadata ptr %eps_accurate, metadata !3658, metadata !DIExpression()), !dbg !3698
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_out) #5, !dbg !3697
  tail call void @llvm.dbg.declare(metadata ptr %eps_out, metadata !3659, metadata !DIExpression()), !dbg !3699
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp1) #5, !dbg !3697
  tail call void @llvm.dbg.declare(metadata ptr %tmp1, metadata !3660, metadata !DIExpression()), !dbg !3700
  call void @llvm.lifetime.start.p0(i64 8, ptr %S) #5, !dbg !3697
  tail call void @llvm.dbg.declare(metadata ptr %S, metadata !3661, metadata !DIExpression()), !dbg !3701
  call void @llvm.lifetime.start.p0(i64 8, ptr %S1) #5, !dbg !3697
  tail call void @llvm.dbg.declare(metadata ptr %S1, metadata !3662, metadata !DIExpression()), !dbg !3702
  call void @llvm.lifetime.start.p0(i64 8, ptr %S2) #5, !dbg !3697
  tail call void @llvm.dbg.declare(metadata ptr %S2, metadata !3663, metadata !DIExpression()), !dbg !3703
  call void @llvm.lifetime.start.p0(i64 8, ptr %U) #5, !dbg !3697
  tail call void @llvm.dbg.declare(metadata ptr %U, metadata !3664, metadata !DIExpression()), !dbg !3704
  call void @llvm.lifetime.start.p0(i64 16, ptr %prod) #5, !dbg !3697
  tail call void @llvm.dbg.declare(metadata ptr %prod, metadata !3665, metadata !DIExpression()), !dbg !3705
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #5, !dbg !3697
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !3666, metadata !DIExpression()), !dbg !3706
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_d) #5, !dbg !3707
  tail call void @llvm.dbg.declare(metadata ptr %un_d, metadata !3667, metadata !DIExpression()), !dbg !3708
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_accurate) #5, !dbg !3707
  tail call void @llvm.dbg.declare(metadata ptr %un_accurate, metadata !3668, metadata !DIExpression()), !dbg !3709
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_out) #5, !dbg !3707
  tail call void @llvm.dbg.declare(metadata ptr %un_out, metadata !3669, metadata !DIExpression()), !dbg !3710
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_i) #5, !dbg !3711
  tail call void @llvm.dbg.declare(metadata ptr %x_i, metadata !3670, metadata !DIExpression()), !dbg !3712
  %0 = load ptr, ptr %x.addr, align 8, !dbg !3713, !tbaa !90
  store ptr %0, ptr %x_i, align 8, !dbg !3712, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_i) #5, !dbg !3714
  tail call void @llvm.dbg.declare(metadata ptr %y_i, metadata !3671, metadata !DIExpression()), !dbg !3715
  %1 = load ptr, ptr %y.addr, align 8, !dbg !3716, !tbaa !90
  store ptr %1, ptr %y_i, align 8, !dbg !3715, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_i) #5, !dbg !3717
  tail call void @llvm.dbg.declare(metadata ptr %alpha_i, metadata !3672, metadata !DIExpression()), !dbg !3718
  %2 = load ptr, ptr %alpha.addr, align 8, !dbg !3719, !tbaa !90
  store ptr %2, ptr %alpha_i, align 8, !dbg !3718, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta_i) #5, !dbg !3720
  tail call void @llvm.dbg.declare(metadata ptr %beta_i, metadata !3673, metadata !DIExpression()), !dbg !3721
  %3 = load ptr, ptr %beta.addr, align 8, !dbg !3722, !tbaa !90
  store ptr %3, ptr %beta_i, align 8, !dbg !3721, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %rin_i) #5, !dbg !3723
  tail call void @llvm.dbg.declare(metadata ptr %rin_i, metadata !3674, metadata !DIExpression()), !dbg !3724
  %4 = load ptr, ptr %rin.addr, align 8, !dbg !3725, !tbaa !90
  store ptr %4, ptr %rin_i, align 8, !dbg !3724, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %rout_i) #5, !dbg !3726
  tail call void @llvm.dbg.declare(metadata ptr %rout_i, metadata !3675, metadata !DIExpression()), !dbg !3727
  %5 = load ptr, ptr %rout.addr, align 8, !dbg !3728, !tbaa !90
  store ptr %5, ptr %rout_i, align 8, !dbg !3727, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_ii) #5, !dbg !3729
  tail call void @llvm.dbg.declare(metadata ptr %x_ii, metadata !3676, metadata !DIExpression()), !dbg !3730
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_ii) #5, !dbg !3731
  tail call void @llvm.dbg.declare(metadata ptr %y_ii, metadata !3677, metadata !DIExpression()), !dbg !3732
  %6 = load i32, ptr %incx.addr, align 4, !dbg !3733, !tbaa !73
  %mul = mul nsw i32 %6, 2, !dbg !3733
  store i32 %mul, ptr %incx.addr, align 4, !dbg !3733, !tbaa !73
  %7 = load i32, ptr %incy.addr, align 4, !dbg !3734, !tbaa !73
  %mul1 = mul nsw i32 %7, 2, !dbg !3734
  store i32 %mul1, ptr %incy.addr, align 4, !dbg !3734, !tbaa !73
  store i32 0, ptr %ix, align 4, !dbg !3735, !tbaa !73
  store i32 0, ptr %iy, align 4, !dbg !3736, !tbaa !73
  %8 = load i32, ptr %incx.addr, align 4, !dbg !3737, !tbaa !73
  %cmp = icmp slt i32 %8, 0, !dbg !3739
  br i1 %cmp, label %if.then, label %if.end, !dbg !3740

if.then:                                          ; preds = %entry
  %9 = load i32, ptr %n.addr, align 4, !dbg !3741, !tbaa !73
  %sub = sub nsw i32 %9, 1, !dbg !3742
  %sub2 = sub nsw i32 0, %sub, !dbg !3743
  %10 = load i32, ptr %incx.addr, align 4, !dbg !3744, !tbaa !73
  %mul3 = mul nsw i32 %sub2, %10, !dbg !3745
  store i32 %mul3, ptr %ix, align 4, !dbg !3746, !tbaa !73
  br label %if.end, !dbg !3747

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, ptr %incy.addr, align 4, !dbg !3748, !tbaa !73
  %cmp4 = icmp slt i32 %11, 0, !dbg !3750
  br i1 %cmp4, label %if.then5, label %if.end9, !dbg !3751

if.then5:                                         ; preds = %if.end
  %12 = load i32, ptr %n.addr, align 4, !dbg !3752, !tbaa !73
  %sub6 = sub nsw i32 %12, 1, !dbg !3753
  %sub7 = sub nsw i32 0, %sub6, !dbg !3754
  %13 = load i32, ptr %incy.addr, align 4, !dbg !3755, !tbaa !73
  %mul8 = mul nsw i32 %sub7, %13, !dbg !3756
  store i32 %mul8, ptr %iy, align 4, !dbg !3757, !tbaa !73
  br label %if.end9, !dbg !3758

if.end9:                                          ; preds = %if.then5, %if.end
  store double 0.000000e+00, ptr %S2, align 8, !dbg !3759, !tbaa !86
  store double 0.000000e+00, ptr %S1, align 8, !dbg !3760, !tbaa !86
  store double 0.000000e+00, ptr %S, align 8, !dbg !3761, !tbaa !86
  store i32 0, ptr %i, align 4, !dbg !3762, !tbaa !73
  br label %for.cond, !dbg !3764

for.cond:                                         ; preds = %for.inc, %if.end9
  %14 = load i32, ptr %i, align 4, !dbg !3765, !tbaa !73
  %15 = load i32, ptr %n.addr, align 4, !dbg !3767, !tbaa !73
  %cmp10 = icmp slt i32 %14, %15, !dbg !3768
  br i1 %cmp10, label %for.body, label %for.end, !dbg !3769

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %x_i, align 8, !dbg !3770, !tbaa !90
  %17 = load i32, ptr %ix, align 4, !dbg !3772, !tbaa !73
  %idxprom = sext i32 %17 to i64, !dbg !3770
  %arrayidx = getelementptr inbounds float, ptr %16, i64 %idxprom, !dbg !3770
  %18 = load float, ptr %arrayidx, align 4, !dbg !3770, !tbaa !80
  %arrayidx11 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 0, !dbg !3773
  store float %18, ptr %arrayidx11, align 4, !dbg !3774, !tbaa !80
  %19 = load ptr, ptr %x_i, align 8, !dbg !3775, !tbaa !90
  %20 = load i32, ptr %ix, align 4, !dbg !3776, !tbaa !73
  %add = add nsw i32 %20, 1, !dbg !3777
  %idxprom12 = sext i32 %add to i64, !dbg !3775
  %arrayidx13 = getelementptr inbounds float, ptr %19, i64 %idxprom12, !dbg !3775
  %21 = load float, ptr %arrayidx13, align 4, !dbg !3775, !tbaa !80
  %arrayidx14 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !3778
  store float %21, ptr %arrayidx14, align 4, !dbg !3779, !tbaa !80
  %22 = load ptr, ptr %y_i, align 8, !dbg !3780, !tbaa !90
  %23 = load i32, ptr %iy, align 4, !dbg !3781, !tbaa !73
  %idxprom15 = sext i32 %23 to i64, !dbg !3780
  %arrayidx16 = getelementptr inbounds float, ptr %22, i64 %idxprom15, !dbg !3780
  %24 = load float, ptr %arrayidx16, align 4, !dbg !3780, !tbaa !80
  %arrayidx17 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 0, !dbg !3782
  store float %24, ptr %arrayidx17, align 4, !dbg !3783, !tbaa !80
  %25 = load ptr, ptr %y_i, align 8, !dbg !3784, !tbaa !90
  %26 = load i32, ptr %iy, align 4, !dbg !3785, !tbaa !73
  %add18 = add nsw i32 %26, 1, !dbg !3786
  %idxprom19 = sext i32 %add18 to i64, !dbg !3784
  %arrayidx20 = getelementptr inbounds float, ptr %25, i64 %idxprom19, !dbg !3784
  %27 = load float, ptr %arrayidx20, align 4, !dbg !3784, !tbaa !80
  %arrayidx21 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 1, !dbg !3787
  store float %27, ptr %arrayidx21, align 4, !dbg !3788, !tbaa !80
  %28 = load i32, ptr %conj.addr, align 4, !dbg !3789, !tbaa !78
  %cmp22 = icmp eq i32 %28, 191, !dbg !3791
  br i1 %cmp22, label %if.then23, label %if.end26, !dbg !3792

if.then23:                                        ; preds = %for.body
  %arrayidx24 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !3793
  %29 = load float, ptr %arrayidx24, align 4, !dbg !3793, !tbaa !80
  %fneg = fneg float %29, !dbg !3795
  %arrayidx25 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !3796
  store float %fneg, ptr %arrayidx25, align 4, !dbg !3797, !tbaa !80
  br label %if.end26, !dbg !3798

if.end26:                                         ; preds = %if.then23, %for.body
  %arrayidx27 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 0, !dbg !3799
  %30 = load float, ptr %arrayidx27, align 4, !dbg !3799, !tbaa !80
  %arrayidx28 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 0, !dbg !3800
  %31 = load float, ptr %arrayidx28, align 4, !dbg !3800, !tbaa !80
  %arrayidx30 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !3801
  %32 = load float, ptr %arrayidx30, align 4, !dbg !3801, !tbaa !80
  %arrayidx31 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !3802
  %33 = load float, ptr %arrayidx31, align 4, !dbg !3802, !tbaa !80
  %mul32 = fmul float %32, %33, !dbg !3803
  %34 = call float @llvm.fmuladd.f32(float %30, float %31, float %mul32), !dbg !3804
  %conv = fpext float %34 to double, !dbg !3799
  %call = call double @sqrt(double noundef %conv) #5, !dbg !3805
  %35 = load double, ptr %S1, align 8, !dbg !3806, !tbaa !86
  %add33 = fadd double %35, %call, !dbg !3806
  store double %add33, ptr %S1, align 8, !dbg !3806, !tbaa !86
  %arrayidx34 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 0, !dbg !3807
  %36 = load float, ptr %arrayidx34, align 4, !dbg !3807, !tbaa !80
  %arrayidx35 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 0, !dbg !3808
  %37 = load float, ptr %arrayidx35, align 4, !dbg !3808, !tbaa !80
  %arrayidx37 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 1, !dbg !3809
  %38 = load float, ptr %arrayidx37, align 4, !dbg !3809, !tbaa !80
  %arrayidx38 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 1, !dbg !3810
  %39 = load float, ptr %arrayidx38, align 4, !dbg !3810, !tbaa !80
  %mul39 = fmul float %38, %39, !dbg !3811
  %40 = call float @llvm.fmuladd.f32(float %36, float %37, float %mul39), !dbg !3812
  %conv40 = fpext float %40 to double, !dbg !3807
  %call41 = call double @sqrt(double noundef %conv40) #5, !dbg !3813
  %41 = load double, ptr %S2, align 8, !dbg !3814, !tbaa !86
  %add42 = fadd double %41, %call41, !dbg !3814
  store double %add42, ptr %S2, align 8, !dbg !3814, !tbaa !86
  %arrayidx43 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 0, !dbg !3815
  %42 = load float, ptr %arrayidx43, align 4, !dbg !3815, !tbaa !80
  %conv44 = fpext float %42 to double, !dbg !3817
  %arrayidx45 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 0, !dbg !3818
  %43 = load float, ptr %arrayidx45, align 4, !dbg !3818, !tbaa !80
  %conv46 = fpext float %43 to double, !dbg !3818
  %arrayidx48 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !3819
  %44 = load float, ptr %arrayidx48, align 4, !dbg !3819, !tbaa !80
  %conv49 = fpext float %44 to double, !dbg !3820
  %arrayidx50 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 1, !dbg !3821
  %45 = load float, ptr %arrayidx50, align 4, !dbg !3821, !tbaa !80
  %conv51 = fpext float %45 to double, !dbg !3821
  %mul52 = fmul double %conv49, %conv51, !dbg !3822
  %neg = fneg double %mul52, !dbg !3823
  %46 = call double @llvm.fmuladd.f64(double %conv44, double %conv46, double %neg), !dbg !3823
  %arrayidx53 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !3824
  store double %46, ptr %arrayidx53, align 16, !dbg !3825, !tbaa !86
  %arrayidx54 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 0, !dbg !3826
  %47 = load float, ptr %arrayidx54, align 4, !dbg !3826, !tbaa !80
  %conv55 = fpext float %47 to double, !dbg !3827
  %arrayidx56 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 1, !dbg !3828
  %48 = load float, ptr %arrayidx56, align 4, !dbg !3828, !tbaa !80
  %conv57 = fpext float %48 to double, !dbg !3828
  %arrayidx59 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !3829
  %49 = load float, ptr %arrayidx59, align 4, !dbg !3829, !tbaa !80
  %conv60 = fpext float %49 to double, !dbg !3830
  %arrayidx61 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 0, !dbg !3831
  %50 = load float, ptr %arrayidx61, align 4, !dbg !3831, !tbaa !80
  %conv62 = fpext float %50 to double, !dbg !3831
  %mul63 = fmul double %conv60, %conv62, !dbg !3832
  %51 = call double @llvm.fmuladd.f64(double %conv55, double %conv57, double %mul63), !dbg !3833
  %arrayidx64 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !3834
  store double %51, ptr %arrayidx64, align 8, !dbg !3835, !tbaa !86
  %arrayidx65 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !3836
  %52 = load double, ptr %arrayidx65, align 16, !dbg !3836, !tbaa !86
  %arrayidx66 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !3837
  %53 = load double, ptr %arrayidx66, align 16, !dbg !3837, !tbaa !86
  %arrayidx68 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !3838
  %54 = load double, ptr %arrayidx68, align 8, !dbg !3838, !tbaa !86
  %arrayidx69 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !3839
  %55 = load double, ptr %arrayidx69, align 8, !dbg !3839, !tbaa !86
  %mul70 = fmul double %54, %55, !dbg !3840
  %56 = call double @llvm.fmuladd.f64(double %52, double %53, double %mul70), !dbg !3841
  %call71 = call double @sqrt(double noundef %56) #5, !dbg !3842
  %57 = load double, ptr %S, align 8, !dbg !3843, !tbaa !86
  %add72 = fadd double %57, %call71, !dbg !3843
  store double %add72, ptr %S, align 8, !dbg !3843, !tbaa !86
  %58 = load i32, ptr %incx.addr, align 4, !dbg !3844, !tbaa !73
  %59 = load i32, ptr %ix, align 4, !dbg !3845, !tbaa !73
  %add73 = add nsw i32 %59, %58, !dbg !3845
  store i32 %add73, ptr %ix, align 4, !dbg !3845, !tbaa !73
  %60 = load i32, ptr %incy.addr, align 4, !dbg !3846, !tbaa !73
  %61 = load i32, ptr %iy, align 4, !dbg !3847, !tbaa !73
  %add74 = add nsw i32 %61, %60, !dbg !3847
  store i32 %add74, ptr %iy, align 4, !dbg !3847, !tbaa !73
  br label %for.inc, !dbg !3848

for.inc:                                          ; preds = %if.end26
  %62 = load i32, ptr %i, align 4, !dbg !3849, !tbaa !73
  %inc = add nsw i32 %62, 1, !dbg !3849
  store i32 %inc, ptr %i, align 4, !dbg !3849, !tbaa !73
  br label %for.cond, !dbg !3850, !llvm.loop !3851

for.end:                                          ; preds = %for.cond
  %63 = load ptr, ptr %alpha_i, align 8, !dbg !3853, !tbaa !90
  %arrayidx75 = getelementptr inbounds double, ptr %63, i64 0, !dbg !3853
  %64 = load double, ptr %arrayidx75, align 8, !dbg !3853, !tbaa !86
  %65 = load ptr, ptr %alpha_i, align 8, !dbg !3854, !tbaa !90
  %arrayidx76 = getelementptr inbounds double, ptr %65, i64 0, !dbg !3854
  %66 = load double, ptr %arrayidx76, align 8, !dbg !3854, !tbaa !86
  %67 = load ptr, ptr %alpha_i, align 8, !dbg !3855, !tbaa !90
  %arrayidx78 = getelementptr inbounds double, ptr %67, i64 1, !dbg !3855
  %68 = load double, ptr %arrayidx78, align 8, !dbg !3855, !tbaa !86
  %69 = load ptr, ptr %alpha_i, align 8, !dbg !3856, !tbaa !90
  %arrayidx79 = getelementptr inbounds double, ptr %69, i64 1, !dbg !3856
  %70 = load double, ptr %arrayidx79, align 8, !dbg !3856, !tbaa !86
  %mul80 = fmul double %68, %70, !dbg !3857
  %71 = call double @llvm.fmuladd.f64(double %64, double %66, double %mul80), !dbg !3858
  %call81 = call double @sqrt(double noundef %71) #5, !dbg !3859
  %72 = load double, ptr %S, align 8, !dbg !3860, !tbaa !86
  %mul82 = fmul double %72, %call81, !dbg !3860
  store double %mul82, ptr %S, align 8, !dbg !3860, !tbaa !86
  %73 = load ptr, ptr %beta_i, align 8, !dbg !3861, !tbaa !90
  %arrayidx83 = getelementptr inbounds double, ptr %73, i64 0, !dbg !3861
  %74 = load double, ptr %arrayidx83, align 8, !dbg !3861, !tbaa !86
  %75 = load ptr, ptr %rin_i, align 8, !dbg !3863, !tbaa !90
  %arrayidx84 = getelementptr inbounds double, ptr %75, i64 0, !dbg !3863
  %76 = load double, ptr %arrayidx84, align 8, !dbg !3863, !tbaa !86
  %77 = load ptr, ptr %beta_i, align 8, !dbg !3864, !tbaa !90
  %arrayidx86 = getelementptr inbounds double, ptr %77, i64 1, !dbg !3864
  %78 = load double, ptr %arrayidx86, align 8, !dbg !3864, !tbaa !86
  %79 = load ptr, ptr %rin_i, align 8, !dbg !3865, !tbaa !90
  %arrayidx87 = getelementptr inbounds double, ptr %79, i64 1, !dbg !3865
  %80 = load double, ptr %arrayidx87, align 8, !dbg !3865, !tbaa !86
  %mul88 = fmul double %78, %80, !dbg !3866
  %neg89 = fneg double %mul88, !dbg !3867
  %81 = call double @llvm.fmuladd.f64(double %74, double %76, double %neg89), !dbg !3867
  %arrayidx90 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !3868
  store double %81, ptr %arrayidx90, align 16, !dbg !3869, !tbaa !86
  %82 = load ptr, ptr %beta_i, align 8, !dbg !3870, !tbaa !90
  %arrayidx91 = getelementptr inbounds double, ptr %82, i64 0, !dbg !3870
  %83 = load double, ptr %arrayidx91, align 8, !dbg !3870, !tbaa !86
  %84 = load ptr, ptr %rin_i, align 8, !dbg !3871, !tbaa !90
  %arrayidx92 = getelementptr inbounds double, ptr %84, i64 1, !dbg !3871
  %85 = load double, ptr %arrayidx92, align 8, !dbg !3871, !tbaa !86
  %86 = load ptr, ptr %beta_i, align 8, !dbg !3872, !tbaa !90
  %arrayidx94 = getelementptr inbounds double, ptr %86, i64 1, !dbg !3872
  %87 = load double, ptr %arrayidx94, align 8, !dbg !3872, !tbaa !86
  %88 = load ptr, ptr %rin_i, align 8, !dbg !3873, !tbaa !90
  %arrayidx95 = getelementptr inbounds double, ptr %88, i64 0, !dbg !3873
  %89 = load double, ptr %arrayidx95, align 8, !dbg !3873, !tbaa !86
  %mul96 = fmul double %87, %89, !dbg !3874
  %90 = call double @llvm.fmuladd.f64(double %83, double %85, double %mul96), !dbg !3875
  %arrayidx97 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !3876
  store double %90, ptr %arrayidx97, align 8, !dbg !3877, !tbaa !86
  %arrayidx98 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !3878
  %91 = load double, ptr %arrayidx98, align 16, !dbg !3878, !tbaa !86
  %arrayidx99 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !3879
  %92 = load double, ptr %arrayidx99, align 16, !dbg !3879, !tbaa !86
  %arrayidx101 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !3880
  %93 = load double, ptr %arrayidx101, align 8, !dbg !3880, !tbaa !86
  %arrayidx102 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !3881
  %94 = load double, ptr %arrayidx102, align 8, !dbg !3881, !tbaa !86
  %mul103 = fmul double %93, %94, !dbg !3882
  %95 = call double @llvm.fmuladd.f64(double %91, double %92, double %mul103), !dbg !3883
  %call104 = call double @sqrt(double noundef %95) #5, !dbg !3884
  %96 = load double, ptr %S, align 8, !dbg !3885, !tbaa !86
  %add105 = fadd double %96, %call104, !dbg !3885
  store double %add105, ptr %S, align 8, !dbg !3885, !tbaa !86
  %call106 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !3886
  %conv107 = sitofp i32 %call106 to double, !dbg !3887
  %call108 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !3888
  %conv109 = sitofp i32 %call108 to double, !dbg !3889
  %call110 = call double @pow(double noundef %conv107, double noundef %conv109) #5, !dbg !3890
  store double %call110, ptr %un_d, align 8, !dbg !3891, !tbaa !86
  %97 = load double, ptr %S, align 8, !dbg !3892, !tbaa !86
  %98 = load double, ptr %un_d, align 8, !dbg !3892, !tbaa !86
  %cmp111 = fcmp ogt double %97, %98, !dbg !3892
  br i1 %cmp111, label %cond.true, label %cond.false, !dbg !3892

cond.true:                                        ; preds = %for.end
  %99 = load double, ptr %S, align 8, !dbg !3892, !tbaa !86
  br label %cond.end, !dbg !3892

cond.false:                                       ; preds = %for.end
  %100 = load double, ptr %un_d, align 8, !dbg !3892, !tbaa !86
  br label %cond.end, !dbg !3892

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %99, %cond.true ], [ %100, %cond.false ], !dbg !3892
  store double %cond, ptr %S, align 8, !dbg !3893, !tbaa !86
  %call113 = call double @power(i32 noundef 2, i32 noundef -106), !dbg !3894
  store double %call113, ptr %eps_accurate, align 8, !dbg !3895, !tbaa !86
  %call114 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 214), !dbg !3896
  %conv115 = sitofp i32 %call114 to double, !dbg !3897
  %call116 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 214), !dbg !3898
  %conv117 = sitofp i32 %call116 to double, !dbg !3899
  %call118 = call double @pow(double noundef %conv115, double noundef %conv117) #5, !dbg !3900
  store double %call118, ptr %un_accurate, align 8, !dbg !3901, !tbaa !86
  %call119 = call double @power(i32 noundef 2, i32 noundef -53), !dbg !3902
  store double %call119, ptr %eps_out, align 8, !dbg !3903, !tbaa !86
  %call120 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !3904
  %conv121 = sitofp i32 %call120 to double, !dbg !3905
  %call122 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !3906
  %conv123 = sitofp i32 %call122 to double, !dbg !3907
  %call124 = call double @pow(double noundef %conv121, double noundef %conv123) #5, !dbg !3908
  store double %call124, ptr %un_out, align 8, !dbg !3909, !tbaa !86
  %101 = load ptr, ptr %rout_i, align 8, !dbg !3910, !tbaa !90
  %arrayidx125 = getelementptr inbounds double, ptr %101, i64 0, !dbg !3910
  %102 = load double, ptr %arrayidx125, align 8, !dbg !3910, !tbaa !86
  %103 = load ptr, ptr %r_true_l.addr, align 8, !dbg !3911, !tbaa !90
  %arrayidx126 = getelementptr inbounds double, ptr %103, i64 0, !dbg !3911
  %104 = load double, ptr %arrayidx126, align 8, !dbg !3911, !tbaa !86
  %sub127 = fsub double %102, %104, !dbg !3912
  %105 = load ptr, ptr %r_true_t.addr, align 8, !dbg !3913, !tbaa !90
  %arrayidx128 = getelementptr inbounds double, ptr %105, i64 0, !dbg !3913
  %106 = load double, ptr %arrayidx128, align 8, !dbg !3913, !tbaa !86
  %sub129 = fsub double %sub127, %106, !dbg !3914
  %arrayidx130 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !3915
  store double %sub129, ptr %arrayidx130, align 16, !dbg !3916, !tbaa !86
  %107 = load ptr, ptr %rout_i, align 8, !dbg !3917, !tbaa !90
  %arrayidx131 = getelementptr inbounds double, ptr %107, i64 1, !dbg !3917
  %108 = load double, ptr %arrayidx131, align 8, !dbg !3917, !tbaa !86
  %109 = load ptr, ptr %r_true_l.addr, align 8, !dbg !3918, !tbaa !90
  %arrayidx132 = getelementptr inbounds double, ptr %109, i64 1, !dbg !3918
  %110 = load double, ptr %arrayidx132, align 8, !dbg !3918, !tbaa !86
  %sub133 = fsub double %108, %110, !dbg !3919
  %111 = load ptr, ptr %r_true_t.addr, align 8, !dbg !3920, !tbaa !90
  %arrayidx134 = getelementptr inbounds double, ptr %111, i64 1, !dbg !3920
  %112 = load double, ptr %arrayidx134, align 8, !dbg !3920, !tbaa !86
  %sub135 = fsub double %sub133, %112, !dbg !3921
  %arrayidx136 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !3922
  store double %sub135, ptr %arrayidx136, align 8, !dbg !3923, !tbaa !86
  %arrayidx137 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !3924
  %113 = load double, ptr %arrayidx137, align 16, !dbg !3924, !tbaa !86
  %arrayidx138 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !3925
  %114 = load double, ptr %arrayidx138, align 16, !dbg !3925, !tbaa !86
  %arrayidx140 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !3926
  %115 = load double, ptr %arrayidx140, align 8, !dbg !3926, !tbaa !86
  %arrayidx141 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !3927
  %116 = load double, ptr %arrayidx141, align 8, !dbg !3927, !tbaa !86
  %mul142 = fmul double %115, %116, !dbg !3928
  %117 = call double @llvm.fmuladd.f64(double %113, double %114, double %mul142), !dbg !3929
  %call143 = call double @sqrt(double noundef %117) #5, !dbg !3930
  store double %call143, ptr %tmp1, align 8, !dbg !3931, !tbaa !86
  %118 = load ptr, ptr %alpha_i, align 8, !dbg !3932, !tbaa !90
  %arrayidx144 = getelementptr inbounds double, ptr %118, i64 0, !dbg !3932
  %119 = load double, ptr %arrayidx144, align 8, !dbg !3932, !tbaa !86
  %120 = load ptr, ptr %alpha_i, align 8, !dbg !3933, !tbaa !90
  %arrayidx145 = getelementptr inbounds double, ptr %120, i64 0, !dbg !3933
  %121 = load double, ptr %arrayidx145, align 8, !dbg !3933, !tbaa !86
  %122 = load ptr, ptr %alpha_i, align 8, !dbg !3934, !tbaa !90
  %arrayidx147 = getelementptr inbounds double, ptr %122, i64 1, !dbg !3934
  %123 = load double, ptr %arrayidx147, align 8, !dbg !3934, !tbaa !86
  %124 = load ptr, ptr %alpha_i, align 8, !dbg !3935, !tbaa !90
  %arrayidx148 = getelementptr inbounds double, ptr %124, i64 1, !dbg !3935
  %125 = load double, ptr %arrayidx148, align 8, !dbg !3935, !tbaa !86
  %mul149 = fmul double %123, %125, !dbg !3936
  %126 = call double @llvm.fmuladd.f64(double %119, double %121, double %mul149), !dbg !3937
  %call150 = call double @sqrt(double noundef %126) #5, !dbg !3938
  %mul151 = fmul double 2.000000e+00, %call150, !dbg !3939
  %127 = load i32, ptr %n.addr, align 4, !dbg !3940, !tbaa !73
  %conv152 = sitofp i32 %127 to double, !dbg !3940
  %128 = call double @llvm.fmuladd.f64(double %mul151, double %conv152, double 3.000000e+00), !dbg !3941
  store double %128, ptr %U, align 8, !dbg !3942, !tbaa !86
  %129 = load double, ptr %U, align 8, !dbg !3943, !tbaa !86
  %130 = load double, ptr %S1, align 8, !dbg !3943, !tbaa !86
  %131 = load i32, ptr %n.addr, align 4, !dbg !3943, !tbaa !73
  %mul154 = mul nsw i32 2, %131, !dbg !3943
  %conv155 = sitofp i32 %mul154 to double, !dbg !3943
  %add156 = fadd double %130, %conv155, !dbg !3943
  %add157 = fadd double %add156, 1.000000e+00, !dbg !3943
  %cmp158 = fcmp ogt double %129, %add157, !dbg !3943
  br i1 %cmp158, label %cond.true160, label %cond.false161, !dbg !3943

cond.true160:                                     ; preds = %cond.end
  %132 = load double, ptr %U, align 8, !dbg !3943, !tbaa !86
  br label %cond.end166, !dbg !3943

cond.false161:                                    ; preds = %cond.end
  %133 = load double, ptr %S1, align 8, !dbg !3943, !tbaa !86
  %134 = load i32, ptr %n.addr, align 4, !dbg !3943, !tbaa !73
  %mul162 = mul nsw i32 2, %134, !dbg !3943
  %conv163 = sitofp i32 %mul162 to double, !dbg !3943
  %add164 = fadd double %133, %conv163, !dbg !3943
  %add165 = fadd double %add164, 1.000000e+00, !dbg !3943
  br label %cond.end166, !dbg !3943

cond.end166:                                      ; preds = %cond.false161, %cond.true160
  %cond167 = phi double [ %132, %cond.true160 ], [ %add165, %cond.false161 ], !dbg !3943
  store double %cond167, ptr %U, align 8, !dbg !3944, !tbaa !86
  %135 = load double, ptr %U, align 8, !dbg !3945, !tbaa !86
  %136 = load double, ptr %S2, align 8, !dbg !3945, !tbaa !86
  %137 = load i32, ptr %n.addr, align 4, !dbg !3945, !tbaa !73
  %mul168 = mul nsw i32 2, %137, !dbg !3945
  %conv169 = sitofp i32 %mul168 to double, !dbg !3945
  %add170 = fadd double %136, %conv169, !dbg !3945
  %add171 = fadd double %add170, 1.000000e+00, !dbg !3945
  %cmp172 = fcmp ogt double %135, %add171, !dbg !3945
  br i1 %cmp172, label %cond.true174, label %cond.false175, !dbg !3945

cond.true174:                                     ; preds = %cond.end166
  %138 = load double, ptr %U, align 8, !dbg !3945, !tbaa !86
  br label %cond.end180, !dbg !3945

cond.false175:                                    ; preds = %cond.end166
  %139 = load double, ptr %S2, align 8, !dbg !3945, !tbaa !86
  %140 = load i32, ptr %n.addr, align 4, !dbg !3945, !tbaa !73
  %mul176 = mul nsw i32 2, %140, !dbg !3945
  %conv177 = sitofp i32 %mul176 to double, !dbg !3945
  %add178 = fadd double %139, %conv177, !dbg !3945
  %add179 = fadd double %add178, 1.000000e+00, !dbg !3945
  br label %cond.end180, !dbg !3945

cond.end180:                                      ; preds = %cond.false175, %cond.true174
  %cond181 = phi double [ %138, %cond.true174 ], [ %add179, %cond.false175 ], !dbg !3945
  %141 = load double, ptr %un_int.addr, align 8, !dbg !3946, !tbaa !86
  %142 = load double, ptr %un_accurate, align 8, !dbg !3947, !tbaa !86
  %add182 = fadd double %141, %142, !dbg !3948
  %143 = load double, ptr %un_out, align 8, !dbg !3949, !tbaa !86
  %144 = call double @llvm.fmuladd.f64(double %cond181, double %add182, double %143), !dbg !3950
  store double %144, ptr %U, align 8, !dbg !3951, !tbaa !86
  %call184 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !3952
  %mul185 = fmul double 2.000000e+00, %call184, !dbg !3953
  %145 = load double, ptr %U, align 8, !dbg !3954, !tbaa !86
  %mul186 = fmul double %145, %mul185, !dbg !3954
  store double %mul186, ptr %U, align 8, !dbg !3954, !tbaa !86
  %146 = load double, ptr %tmp1, align 8, !dbg !3955, !tbaa !86
  %call187 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !3956
  %mul188 = fmul double 2.000000e+00, %call187, !dbg !3957
  %147 = load i32, ptr %n.addr, align 4, !dbg !3958, !tbaa !73
  %add189 = add nsw i32 %147, 2, !dbg !3959
  %conv190 = sitofp i32 %add189 to double, !dbg !3960
  %mul191 = fmul double %mul188, %conv190, !dbg !3961
  %148 = load double, ptr %eps_int.addr, align 8, !dbg !3962, !tbaa !86
  %149 = load double, ptr %eps_accurate, align 8, !dbg !3963, !tbaa !86
  %add192 = fadd double %148, %149, !dbg !3964
  %mul193 = fmul double %mul191, %add192, !dbg !3965
  %150 = load double, ptr %S, align 8, !dbg !3966, !tbaa !86
  %call195 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !3967
  %151 = load double, ptr %eps_out, align 8, !dbg !3968, !tbaa !86
  %mul196 = fmul double %call195, %151, !dbg !3969
  %152 = load ptr, ptr %r_true_l.addr, align 8, !dbg !3970, !tbaa !90
  %arrayidx197 = getelementptr inbounds double, ptr %152, i64 0, !dbg !3970
  %153 = load double, ptr %arrayidx197, align 8, !dbg !3970, !tbaa !86
  %154 = load ptr, ptr %r_true_l.addr, align 8, !dbg !3971, !tbaa !90
  %arrayidx198 = getelementptr inbounds double, ptr %154, i64 0, !dbg !3971
  %155 = load double, ptr %arrayidx198, align 8, !dbg !3971, !tbaa !86
  %156 = load ptr, ptr %r_true_l.addr, align 8, !dbg !3972, !tbaa !90
  %arrayidx200 = getelementptr inbounds double, ptr %156, i64 1, !dbg !3972
  %157 = load double, ptr %arrayidx200, align 8, !dbg !3972, !tbaa !86
  %158 = load ptr, ptr %r_true_l.addr, align 8, !dbg !3973, !tbaa !90
  %arrayidx201 = getelementptr inbounds double, ptr %158, i64 1, !dbg !3973
  %159 = load double, ptr %arrayidx201, align 8, !dbg !3973, !tbaa !86
  %mul202 = fmul double %157, %159, !dbg !3974
  %160 = call double @llvm.fmuladd.f64(double %153, double %155, double %mul202), !dbg !3975
  %call203 = call double @sqrt(double noundef %160) #5, !dbg !3976
  %mul204 = fmul double %mul196, %call203, !dbg !3977
  %161 = call double @llvm.fmuladd.f64(double %mul193, double %150, double %mul204), !dbg !3978
  %162 = load double, ptr %U, align 8, !dbg !3979, !tbaa !86
  %add205 = fadd double %161, %162, !dbg !3980
  %div = fdiv double %146, %add205, !dbg !3981
  %163 = load ptr, ptr %test_ratio.addr, align 8, !dbg !3982, !tbaa !90
  store double %div, ptr %163, align 8, !dbg !3983, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_ii) #5, !dbg !3984
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_ii) #5, !dbg !3984
  call void @llvm.lifetime.end.p0(i64 8, ptr %rout_i) #5, !dbg !3984
  call void @llvm.lifetime.end.p0(i64 8, ptr %rin_i) #5, !dbg !3984
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta_i) #5, !dbg !3984
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_i) #5, !dbg !3984
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_i) #5, !dbg !3984
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_i) #5, !dbg !3984
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_out) #5, !dbg !3984
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_accurate) #5, !dbg !3984
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_d) #5, !dbg !3984
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #5, !dbg !3984
  call void @llvm.lifetime.end.p0(i64 16, ptr %prod) #5, !dbg !3984
  call void @llvm.lifetime.end.p0(i64 8, ptr %U) #5, !dbg !3984
  call void @llvm.lifetime.end.p0(i64 8, ptr %S2) #5, !dbg !3984
  call void @llvm.lifetime.end.p0(i64 8, ptr %S1) #5, !dbg !3984
  call void @llvm.lifetime.end.p0(i64 8, ptr %S) #5, !dbg !3984
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp1) #5, !dbg !3984
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_out) #5, !dbg !3984
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_accurate) #5, !dbg !3984
  call void @llvm.lifetime.end.p0(i64 4, ptr %iy) #5, !dbg !3984
  call void @llvm.lifetime.end.p0(i64 4, ptr %ix) #5, !dbg !3984
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !3984
  ret void, !dbg !3984
}

; Function Attrs: nounwind uwtable
define dso_local void @test_BLAS_zdot_c_z(i32 noundef %n, i32 noundef %conj, ptr noundef %alpha, ptr noundef %beta, ptr noundef %rin, ptr noundef %rout, ptr noundef %r_true_l, ptr noundef %r_true_t, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, double noundef %eps_int, double noundef %un_int, ptr noundef %test_ratio) #0 !dbg !3985 {
entry:
  %n.addr = alloca i32, align 4
  %conj.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %rin.addr = alloca ptr, align 8
  %rout.addr = alloca ptr, align 8
  %r_true_l.addr = alloca ptr, align 8
  %r_true_t.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %eps_int.addr = alloca double, align 8
  %un_int.addr = alloca double, align 8
  %test_ratio.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %eps_accurate = alloca double, align 8
  %eps_out = alloca double, align 8
  %tmp1 = alloca double, align 8
  %S = alloca double, align 8
  %S1 = alloca double, align 8
  %S2 = alloca double, align 8
  %U = alloca double, align 8
  %prod = alloca [2 x double], align 16
  %tmp = alloca [2 x double], align 16
  %un_d = alloca double, align 8
  %un_accurate = alloca double, align 8
  %un_out = alloca double, align 8
  %x_i = alloca ptr, align 8
  %y_i = alloca ptr, align 8
  %alpha_i = alloca ptr, align 8
  %beta_i = alloca ptr, align 8
  %rin_i = alloca ptr, align 8
  %rout_i = alloca ptr, align 8
  %x_ii = alloca [2 x float], align 4
  %y_ii = alloca [2 x double], align 16
  store i32 %n, ptr %n.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3987, metadata !DIExpression()), !dbg !4025
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !78
  tail call void @llvm.dbg.declare(metadata ptr %conj.addr, metadata !3988, metadata !DIExpression()), !dbg !4026
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !3989, metadata !DIExpression()), !dbg !4027
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %beta.addr, metadata !3990, metadata !DIExpression()), !dbg !4028
  store ptr %rin, ptr %rin.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %rin.addr, metadata !3991, metadata !DIExpression()), !dbg !4029
  store ptr %rout, ptr %rout.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %rout.addr, metadata !3992, metadata !DIExpression()), !dbg !4030
  store ptr %r_true_l, ptr %r_true_l.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %r_true_l.addr, metadata !3993, metadata !DIExpression()), !dbg !4031
  store ptr %r_true_t, ptr %r_true_t.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %r_true_t.addr, metadata !3994, metadata !DIExpression()), !dbg !4032
  store ptr %x, ptr %x.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !3995, metadata !DIExpression()), !dbg !4033
  store i32 %incx, ptr %incx.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incx.addr, metadata !3996, metadata !DIExpression()), !dbg !4034
  store ptr %y, ptr %y.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !3997, metadata !DIExpression()), !dbg !4035
  store i32 %incy, ptr %incy.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incy.addr, metadata !3998, metadata !DIExpression()), !dbg !4036
  store double %eps_int, ptr %eps_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %eps_int.addr, metadata !3999, metadata !DIExpression()), !dbg !4037
  store double %un_int, ptr %un_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %un_int.addr, metadata !4000, metadata !DIExpression()), !dbg !4038
  store ptr %test_ratio, ptr %test_ratio.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %test_ratio.addr, metadata !4001, metadata !DIExpression()), !dbg !4039
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !4040
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !4002, metadata !DIExpression()), !dbg !4041
  call void @llvm.lifetime.start.p0(i64 4, ptr %ix) #5, !dbg !4040
  tail call void @llvm.dbg.declare(metadata ptr %ix, metadata !4003, metadata !DIExpression()), !dbg !4042
  call void @llvm.lifetime.start.p0(i64 4, ptr %iy) #5, !dbg !4040
  tail call void @llvm.dbg.declare(metadata ptr %iy, metadata !4004, metadata !DIExpression()), !dbg !4043
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_accurate) #5, !dbg !4044
  tail call void @llvm.dbg.declare(metadata ptr %eps_accurate, metadata !4005, metadata !DIExpression()), !dbg !4045
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_out) #5, !dbg !4044
  tail call void @llvm.dbg.declare(metadata ptr %eps_out, metadata !4006, metadata !DIExpression()), !dbg !4046
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp1) #5, !dbg !4044
  tail call void @llvm.dbg.declare(metadata ptr %tmp1, metadata !4007, metadata !DIExpression()), !dbg !4047
  call void @llvm.lifetime.start.p0(i64 8, ptr %S) #5, !dbg !4044
  tail call void @llvm.dbg.declare(metadata ptr %S, metadata !4008, metadata !DIExpression()), !dbg !4048
  call void @llvm.lifetime.start.p0(i64 8, ptr %S1) #5, !dbg !4044
  tail call void @llvm.dbg.declare(metadata ptr %S1, metadata !4009, metadata !DIExpression()), !dbg !4049
  call void @llvm.lifetime.start.p0(i64 8, ptr %S2) #5, !dbg !4044
  tail call void @llvm.dbg.declare(metadata ptr %S2, metadata !4010, metadata !DIExpression()), !dbg !4050
  call void @llvm.lifetime.start.p0(i64 8, ptr %U) #5, !dbg !4044
  tail call void @llvm.dbg.declare(metadata ptr %U, metadata !4011, metadata !DIExpression()), !dbg !4051
  call void @llvm.lifetime.start.p0(i64 16, ptr %prod) #5, !dbg !4044
  tail call void @llvm.dbg.declare(metadata ptr %prod, metadata !4012, metadata !DIExpression()), !dbg !4052
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #5, !dbg !4044
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !4013, metadata !DIExpression()), !dbg !4053
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_d) #5, !dbg !4054
  tail call void @llvm.dbg.declare(metadata ptr %un_d, metadata !4014, metadata !DIExpression()), !dbg !4055
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_accurate) #5, !dbg !4054
  tail call void @llvm.dbg.declare(metadata ptr %un_accurate, metadata !4015, metadata !DIExpression()), !dbg !4056
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_out) #5, !dbg !4054
  tail call void @llvm.dbg.declare(metadata ptr %un_out, metadata !4016, metadata !DIExpression()), !dbg !4057
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_i) #5, !dbg !4058
  tail call void @llvm.dbg.declare(metadata ptr %x_i, metadata !4017, metadata !DIExpression()), !dbg !4059
  %0 = load ptr, ptr %x.addr, align 8, !dbg !4060, !tbaa !90
  store ptr %0, ptr %x_i, align 8, !dbg !4059, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_i) #5, !dbg !4061
  tail call void @llvm.dbg.declare(metadata ptr %y_i, metadata !4018, metadata !DIExpression()), !dbg !4062
  %1 = load ptr, ptr %y.addr, align 8, !dbg !4063, !tbaa !90
  store ptr %1, ptr %y_i, align 8, !dbg !4062, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_i) #5, !dbg !4064
  tail call void @llvm.dbg.declare(metadata ptr %alpha_i, metadata !4019, metadata !DIExpression()), !dbg !4065
  %2 = load ptr, ptr %alpha.addr, align 8, !dbg !4066, !tbaa !90
  store ptr %2, ptr %alpha_i, align 8, !dbg !4065, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta_i) #5, !dbg !4067
  tail call void @llvm.dbg.declare(metadata ptr %beta_i, metadata !4020, metadata !DIExpression()), !dbg !4068
  %3 = load ptr, ptr %beta.addr, align 8, !dbg !4069, !tbaa !90
  store ptr %3, ptr %beta_i, align 8, !dbg !4068, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %rin_i) #5, !dbg !4070
  tail call void @llvm.dbg.declare(metadata ptr %rin_i, metadata !4021, metadata !DIExpression()), !dbg !4071
  %4 = load ptr, ptr %rin.addr, align 8, !dbg !4072, !tbaa !90
  store ptr %4, ptr %rin_i, align 8, !dbg !4071, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %rout_i) #5, !dbg !4073
  tail call void @llvm.dbg.declare(metadata ptr %rout_i, metadata !4022, metadata !DIExpression()), !dbg !4074
  %5 = load ptr, ptr %rout.addr, align 8, !dbg !4075, !tbaa !90
  store ptr %5, ptr %rout_i, align 8, !dbg !4074, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_ii) #5, !dbg !4076
  tail call void @llvm.dbg.declare(metadata ptr %x_ii, metadata !4023, metadata !DIExpression()), !dbg !4077
  call void @llvm.lifetime.start.p0(i64 16, ptr %y_ii) #5, !dbg !4078
  tail call void @llvm.dbg.declare(metadata ptr %y_ii, metadata !4024, metadata !DIExpression()), !dbg !4079
  %6 = load i32, ptr %incx.addr, align 4, !dbg !4080, !tbaa !73
  %mul = mul nsw i32 %6, 2, !dbg !4080
  store i32 %mul, ptr %incx.addr, align 4, !dbg !4080, !tbaa !73
  %7 = load i32, ptr %incy.addr, align 4, !dbg !4081, !tbaa !73
  %mul1 = mul nsw i32 %7, 2, !dbg !4081
  store i32 %mul1, ptr %incy.addr, align 4, !dbg !4081, !tbaa !73
  store i32 0, ptr %ix, align 4, !dbg !4082, !tbaa !73
  store i32 0, ptr %iy, align 4, !dbg !4083, !tbaa !73
  %8 = load i32, ptr %incx.addr, align 4, !dbg !4084, !tbaa !73
  %cmp = icmp slt i32 %8, 0, !dbg !4086
  br i1 %cmp, label %if.then, label %if.end, !dbg !4087

if.then:                                          ; preds = %entry
  %9 = load i32, ptr %n.addr, align 4, !dbg !4088, !tbaa !73
  %sub = sub nsw i32 %9, 1, !dbg !4089
  %sub2 = sub nsw i32 0, %sub, !dbg !4090
  %10 = load i32, ptr %incx.addr, align 4, !dbg !4091, !tbaa !73
  %mul3 = mul nsw i32 %sub2, %10, !dbg !4092
  store i32 %mul3, ptr %ix, align 4, !dbg !4093, !tbaa !73
  br label %if.end, !dbg !4094

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, ptr %incy.addr, align 4, !dbg !4095, !tbaa !73
  %cmp4 = icmp slt i32 %11, 0, !dbg !4097
  br i1 %cmp4, label %if.then5, label %if.end9, !dbg !4098

if.then5:                                         ; preds = %if.end
  %12 = load i32, ptr %n.addr, align 4, !dbg !4099, !tbaa !73
  %sub6 = sub nsw i32 %12, 1, !dbg !4100
  %sub7 = sub nsw i32 0, %sub6, !dbg !4101
  %13 = load i32, ptr %incy.addr, align 4, !dbg !4102, !tbaa !73
  %mul8 = mul nsw i32 %sub7, %13, !dbg !4103
  store i32 %mul8, ptr %iy, align 4, !dbg !4104, !tbaa !73
  br label %if.end9, !dbg !4105

if.end9:                                          ; preds = %if.then5, %if.end
  store double 0.000000e+00, ptr %S2, align 8, !dbg !4106, !tbaa !86
  store double 0.000000e+00, ptr %S1, align 8, !dbg !4107, !tbaa !86
  store double 0.000000e+00, ptr %S, align 8, !dbg !4108, !tbaa !86
  store i32 0, ptr %i, align 4, !dbg !4109, !tbaa !73
  br label %for.cond, !dbg !4111

for.cond:                                         ; preds = %for.inc, %if.end9
  %14 = load i32, ptr %i, align 4, !dbg !4112, !tbaa !73
  %15 = load i32, ptr %n.addr, align 4, !dbg !4114, !tbaa !73
  %cmp10 = icmp slt i32 %14, %15, !dbg !4115
  br i1 %cmp10, label %for.body, label %for.end, !dbg !4116

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %x_i, align 8, !dbg !4117, !tbaa !90
  %17 = load i32, ptr %ix, align 4, !dbg !4119, !tbaa !73
  %idxprom = sext i32 %17 to i64, !dbg !4117
  %arrayidx = getelementptr inbounds float, ptr %16, i64 %idxprom, !dbg !4117
  %18 = load float, ptr %arrayidx, align 4, !dbg !4117, !tbaa !80
  %arrayidx11 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 0, !dbg !4120
  store float %18, ptr %arrayidx11, align 4, !dbg !4121, !tbaa !80
  %19 = load ptr, ptr %x_i, align 8, !dbg !4122, !tbaa !90
  %20 = load i32, ptr %ix, align 4, !dbg !4123, !tbaa !73
  %add = add nsw i32 %20, 1, !dbg !4124
  %idxprom12 = sext i32 %add to i64, !dbg !4122
  %arrayidx13 = getelementptr inbounds float, ptr %19, i64 %idxprom12, !dbg !4122
  %21 = load float, ptr %arrayidx13, align 4, !dbg !4122, !tbaa !80
  %arrayidx14 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !4125
  store float %21, ptr %arrayidx14, align 4, !dbg !4126, !tbaa !80
  %22 = load ptr, ptr %y_i, align 8, !dbg !4127, !tbaa !90
  %23 = load i32, ptr %iy, align 4, !dbg !4128, !tbaa !73
  %idxprom15 = sext i32 %23 to i64, !dbg !4127
  %arrayidx16 = getelementptr inbounds double, ptr %22, i64 %idxprom15, !dbg !4127
  %24 = load double, ptr %arrayidx16, align 8, !dbg !4127, !tbaa !86
  %arrayidx17 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 0, !dbg !4129
  store double %24, ptr %arrayidx17, align 16, !dbg !4130, !tbaa !86
  %25 = load ptr, ptr %y_i, align 8, !dbg !4131, !tbaa !90
  %26 = load i32, ptr %iy, align 4, !dbg !4132, !tbaa !73
  %add18 = add nsw i32 %26, 1, !dbg !4133
  %idxprom19 = sext i32 %add18 to i64, !dbg !4131
  %arrayidx20 = getelementptr inbounds double, ptr %25, i64 %idxprom19, !dbg !4131
  %27 = load double, ptr %arrayidx20, align 8, !dbg !4131, !tbaa !86
  %arrayidx21 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 1, !dbg !4134
  store double %27, ptr %arrayidx21, align 8, !dbg !4135, !tbaa !86
  %28 = load i32, ptr %conj.addr, align 4, !dbg !4136, !tbaa !78
  %cmp22 = icmp eq i32 %28, 191, !dbg !4138
  br i1 %cmp22, label %if.then23, label %if.end26, !dbg !4139

if.then23:                                        ; preds = %for.body
  %arrayidx24 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !4140
  %29 = load float, ptr %arrayidx24, align 4, !dbg !4140, !tbaa !80
  %fneg = fneg float %29, !dbg !4142
  %arrayidx25 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !4143
  store float %fneg, ptr %arrayidx25, align 4, !dbg !4144, !tbaa !80
  br label %if.end26, !dbg !4145

if.end26:                                         ; preds = %if.then23, %for.body
  %arrayidx27 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 0, !dbg !4146
  %30 = load float, ptr %arrayidx27, align 4, !dbg !4146, !tbaa !80
  %arrayidx28 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 0, !dbg !4147
  %31 = load float, ptr %arrayidx28, align 4, !dbg !4147, !tbaa !80
  %arrayidx30 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !4148
  %32 = load float, ptr %arrayidx30, align 4, !dbg !4148, !tbaa !80
  %arrayidx31 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !4149
  %33 = load float, ptr %arrayidx31, align 4, !dbg !4149, !tbaa !80
  %mul32 = fmul float %32, %33, !dbg !4150
  %34 = call float @llvm.fmuladd.f32(float %30, float %31, float %mul32), !dbg !4151
  %conv = fpext float %34 to double, !dbg !4146
  %call = call double @sqrt(double noundef %conv) #5, !dbg !4152
  %35 = load double, ptr %S1, align 8, !dbg !4153, !tbaa !86
  %add33 = fadd double %35, %call, !dbg !4153
  store double %add33, ptr %S1, align 8, !dbg !4153, !tbaa !86
  %arrayidx34 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 0, !dbg !4154
  %36 = load double, ptr %arrayidx34, align 16, !dbg !4154, !tbaa !86
  %arrayidx35 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 0, !dbg !4155
  %37 = load double, ptr %arrayidx35, align 16, !dbg !4155, !tbaa !86
  %arrayidx37 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 1, !dbg !4156
  %38 = load double, ptr %arrayidx37, align 8, !dbg !4156, !tbaa !86
  %arrayidx38 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 1, !dbg !4157
  %39 = load double, ptr %arrayidx38, align 8, !dbg !4157, !tbaa !86
  %mul39 = fmul double %38, %39, !dbg !4158
  %40 = call double @llvm.fmuladd.f64(double %36, double %37, double %mul39), !dbg !4159
  %call40 = call double @sqrt(double noundef %40) #5, !dbg !4160
  %41 = load double, ptr %S2, align 8, !dbg !4161, !tbaa !86
  %add41 = fadd double %41, %call40, !dbg !4161
  store double %add41, ptr %S2, align 8, !dbg !4161, !tbaa !86
  %arrayidx42 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 0, !dbg !4162
  %42 = load float, ptr %arrayidx42, align 4, !dbg !4162, !tbaa !80
  %conv43 = fpext float %42 to double, !dbg !4164
  %arrayidx44 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 0, !dbg !4165
  %43 = load double, ptr %arrayidx44, align 16, !dbg !4165, !tbaa !86
  %arrayidx46 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !4166
  %44 = load float, ptr %arrayidx46, align 4, !dbg !4166, !tbaa !80
  %conv47 = fpext float %44 to double, !dbg !4167
  %arrayidx48 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 1, !dbg !4168
  %45 = load double, ptr %arrayidx48, align 8, !dbg !4168, !tbaa !86
  %mul49 = fmul double %conv47, %45, !dbg !4169
  %neg = fneg double %mul49, !dbg !4170
  %46 = call double @llvm.fmuladd.f64(double %conv43, double %43, double %neg), !dbg !4170
  %arrayidx50 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !4171
  store double %46, ptr %arrayidx50, align 16, !dbg !4172, !tbaa !86
  %arrayidx51 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 0, !dbg !4173
  %47 = load float, ptr %arrayidx51, align 4, !dbg !4173, !tbaa !80
  %conv52 = fpext float %47 to double, !dbg !4174
  %arrayidx53 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 1, !dbg !4175
  %48 = load double, ptr %arrayidx53, align 8, !dbg !4175, !tbaa !86
  %arrayidx55 = getelementptr inbounds [2 x float], ptr %x_ii, i64 0, i64 1, !dbg !4176
  %49 = load float, ptr %arrayidx55, align 4, !dbg !4176, !tbaa !80
  %conv56 = fpext float %49 to double, !dbg !4177
  %arrayidx57 = getelementptr inbounds [2 x double], ptr %y_ii, i64 0, i64 0, !dbg !4178
  %50 = load double, ptr %arrayidx57, align 16, !dbg !4178, !tbaa !86
  %mul58 = fmul double %conv56, %50, !dbg !4179
  %51 = call double @llvm.fmuladd.f64(double %conv52, double %48, double %mul58), !dbg !4180
  %arrayidx59 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !4181
  store double %51, ptr %arrayidx59, align 8, !dbg !4182, !tbaa !86
  %arrayidx60 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !4183
  %52 = load double, ptr %arrayidx60, align 16, !dbg !4183, !tbaa !86
  %arrayidx61 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !4184
  %53 = load double, ptr %arrayidx61, align 16, !dbg !4184, !tbaa !86
  %arrayidx63 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !4185
  %54 = load double, ptr %arrayidx63, align 8, !dbg !4185, !tbaa !86
  %arrayidx64 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !4186
  %55 = load double, ptr %arrayidx64, align 8, !dbg !4186, !tbaa !86
  %mul65 = fmul double %54, %55, !dbg !4187
  %56 = call double @llvm.fmuladd.f64(double %52, double %53, double %mul65), !dbg !4188
  %call66 = call double @sqrt(double noundef %56) #5, !dbg !4189
  %57 = load double, ptr %S, align 8, !dbg !4190, !tbaa !86
  %add67 = fadd double %57, %call66, !dbg !4190
  store double %add67, ptr %S, align 8, !dbg !4190, !tbaa !86
  %58 = load i32, ptr %incx.addr, align 4, !dbg !4191, !tbaa !73
  %59 = load i32, ptr %ix, align 4, !dbg !4192, !tbaa !73
  %add68 = add nsw i32 %59, %58, !dbg !4192
  store i32 %add68, ptr %ix, align 4, !dbg !4192, !tbaa !73
  %60 = load i32, ptr %incy.addr, align 4, !dbg !4193, !tbaa !73
  %61 = load i32, ptr %iy, align 4, !dbg !4194, !tbaa !73
  %add69 = add nsw i32 %61, %60, !dbg !4194
  store i32 %add69, ptr %iy, align 4, !dbg !4194, !tbaa !73
  br label %for.inc, !dbg !4195

for.inc:                                          ; preds = %if.end26
  %62 = load i32, ptr %i, align 4, !dbg !4196, !tbaa !73
  %inc = add nsw i32 %62, 1, !dbg !4196
  store i32 %inc, ptr %i, align 4, !dbg !4196, !tbaa !73
  br label %for.cond, !dbg !4197, !llvm.loop !4198

for.end:                                          ; preds = %for.cond
  %63 = load ptr, ptr %alpha_i, align 8, !dbg !4200, !tbaa !90
  %arrayidx70 = getelementptr inbounds double, ptr %63, i64 0, !dbg !4200
  %64 = load double, ptr %arrayidx70, align 8, !dbg !4200, !tbaa !86
  %65 = load ptr, ptr %alpha_i, align 8, !dbg !4201, !tbaa !90
  %arrayidx71 = getelementptr inbounds double, ptr %65, i64 0, !dbg !4201
  %66 = load double, ptr %arrayidx71, align 8, !dbg !4201, !tbaa !86
  %67 = load ptr, ptr %alpha_i, align 8, !dbg !4202, !tbaa !90
  %arrayidx73 = getelementptr inbounds double, ptr %67, i64 1, !dbg !4202
  %68 = load double, ptr %arrayidx73, align 8, !dbg !4202, !tbaa !86
  %69 = load ptr, ptr %alpha_i, align 8, !dbg !4203, !tbaa !90
  %arrayidx74 = getelementptr inbounds double, ptr %69, i64 1, !dbg !4203
  %70 = load double, ptr %arrayidx74, align 8, !dbg !4203, !tbaa !86
  %mul75 = fmul double %68, %70, !dbg !4204
  %71 = call double @llvm.fmuladd.f64(double %64, double %66, double %mul75), !dbg !4205
  %call76 = call double @sqrt(double noundef %71) #5, !dbg !4206
  %72 = load double, ptr %S, align 8, !dbg !4207, !tbaa !86
  %mul77 = fmul double %72, %call76, !dbg !4207
  store double %mul77, ptr %S, align 8, !dbg !4207, !tbaa !86
  %73 = load ptr, ptr %beta_i, align 8, !dbg !4208, !tbaa !90
  %arrayidx78 = getelementptr inbounds double, ptr %73, i64 0, !dbg !4208
  %74 = load double, ptr %arrayidx78, align 8, !dbg !4208, !tbaa !86
  %75 = load ptr, ptr %rin_i, align 8, !dbg !4210, !tbaa !90
  %arrayidx79 = getelementptr inbounds double, ptr %75, i64 0, !dbg !4210
  %76 = load double, ptr %arrayidx79, align 8, !dbg !4210, !tbaa !86
  %77 = load ptr, ptr %beta_i, align 8, !dbg !4211, !tbaa !90
  %arrayidx81 = getelementptr inbounds double, ptr %77, i64 1, !dbg !4211
  %78 = load double, ptr %arrayidx81, align 8, !dbg !4211, !tbaa !86
  %79 = load ptr, ptr %rin_i, align 8, !dbg !4212, !tbaa !90
  %arrayidx82 = getelementptr inbounds double, ptr %79, i64 1, !dbg !4212
  %80 = load double, ptr %arrayidx82, align 8, !dbg !4212, !tbaa !86
  %mul83 = fmul double %78, %80, !dbg !4213
  %neg84 = fneg double %mul83, !dbg !4214
  %81 = call double @llvm.fmuladd.f64(double %74, double %76, double %neg84), !dbg !4214
  %arrayidx85 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !4215
  store double %81, ptr %arrayidx85, align 16, !dbg !4216, !tbaa !86
  %82 = load ptr, ptr %beta_i, align 8, !dbg !4217, !tbaa !90
  %arrayidx86 = getelementptr inbounds double, ptr %82, i64 0, !dbg !4217
  %83 = load double, ptr %arrayidx86, align 8, !dbg !4217, !tbaa !86
  %84 = load ptr, ptr %rin_i, align 8, !dbg !4218, !tbaa !90
  %arrayidx87 = getelementptr inbounds double, ptr %84, i64 1, !dbg !4218
  %85 = load double, ptr %arrayidx87, align 8, !dbg !4218, !tbaa !86
  %86 = load ptr, ptr %beta_i, align 8, !dbg !4219, !tbaa !90
  %arrayidx89 = getelementptr inbounds double, ptr %86, i64 1, !dbg !4219
  %87 = load double, ptr %arrayidx89, align 8, !dbg !4219, !tbaa !86
  %88 = load ptr, ptr %rin_i, align 8, !dbg !4220, !tbaa !90
  %arrayidx90 = getelementptr inbounds double, ptr %88, i64 0, !dbg !4220
  %89 = load double, ptr %arrayidx90, align 8, !dbg !4220, !tbaa !86
  %mul91 = fmul double %87, %89, !dbg !4221
  %90 = call double @llvm.fmuladd.f64(double %83, double %85, double %mul91), !dbg !4222
  %arrayidx92 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !4223
  store double %90, ptr %arrayidx92, align 8, !dbg !4224, !tbaa !86
  %arrayidx93 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !4225
  %91 = load double, ptr %arrayidx93, align 16, !dbg !4225, !tbaa !86
  %arrayidx94 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !4226
  %92 = load double, ptr %arrayidx94, align 16, !dbg !4226, !tbaa !86
  %arrayidx96 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !4227
  %93 = load double, ptr %arrayidx96, align 8, !dbg !4227, !tbaa !86
  %arrayidx97 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !4228
  %94 = load double, ptr %arrayidx97, align 8, !dbg !4228, !tbaa !86
  %mul98 = fmul double %93, %94, !dbg !4229
  %95 = call double @llvm.fmuladd.f64(double %91, double %92, double %mul98), !dbg !4230
  %call99 = call double @sqrt(double noundef %95) #5, !dbg !4231
  %96 = load double, ptr %S, align 8, !dbg !4232, !tbaa !86
  %add100 = fadd double %96, %call99, !dbg !4232
  store double %add100, ptr %S, align 8, !dbg !4232, !tbaa !86
  %call101 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !4233
  %conv102 = sitofp i32 %call101 to double, !dbg !4234
  %call103 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !4235
  %conv104 = sitofp i32 %call103 to double, !dbg !4236
  %call105 = call double @pow(double noundef %conv102, double noundef %conv104) #5, !dbg !4237
  store double %call105, ptr %un_d, align 8, !dbg !4238, !tbaa !86
  %97 = load double, ptr %S, align 8, !dbg !4239, !tbaa !86
  %98 = load double, ptr %un_d, align 8, !dbg !4239, !tbaa !86
  %cmp106 = fcmp ogt double %97, %98, !dbg !4239
  br i1 %cmp106, label %cond.true, label %cond.false, !dbg !4239

cond.true:                                        ; preds = %for.end
  %99 = load double, ptr %S, align 8, !dbg !4239, !tbaa !86
  br label %cond.end, !dbg !4239

cond.false:                                       ; preds = %for.end
  %100 = load double, ptr %un_d, align 8, !dbg !4239, !tbaa !86
  br label %cond.end, !dbg !4239

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %99, %cond.true ], [ %100, %cond.false ], !dbg !4239
  store double %cond, ptr %S, align 8, !dbg !4240, !tbaa !86
  %call108 = call double @power(i32 noundef 2, i32 noundef -106), !dbg !4241
  store double %call108, ptr %eps_accurate, align 8, !dbg !4242, !tbaa !86
  %call109 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 214), !dbg !4243
  %conv110 = sitofp i32 %call109 to double, !dbg !4244
  %call111 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 214), !dbg !4245
  %conv112 = sitofp i32 %call111 to double, !dbg !4246
  %call113 = call double @pow(double noundef %conv110, double noundef %conv112) #5, !dbg !4247
  store double %call113, ptr %un_accurate, align 8, !dbg !4248, !tbaa !86
  %call114 = call double @power(i32 noundef 2, i32 noundef -53), !dbg !4249
  store double %call114, ptr %eps_out, align 8, !dbg !4250, !tbaa !86
  %call115 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !4251
  %conv116 = sitofp i32 %call115 to double, !dbg !4252
  %call117 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !4253
  %conv118 = sitofp i32 %call117 to double, !dbg !4254
  %call119 = call double @pow(double noundef %conv116, double noundef %conv118) #5, !dbg !4255
  store double %call119, ptr %un_out, align 8, !dbg !4256, !tbaa !86
  %101 = load ptr, ptr %rout_i, align 8, !dbg !4257, !tbaa !90
  %arrayidx120 = getelementptr inbounds double, ptr %101, i64 0, !dbg !4257
  %102 = load double, ptr %arrayidx120, align 8, !dbg !4257, !tbaa !86
  %103 = load ptr, ptr %r_true_l.addr, align 8, !dbg !4258, !tbaa !90
  %arrayidx121 = getelementptr inbounds double, ptr %103, i64 0, !dbg !4258
  %104 = load double, ptr %arrayidx121, align 8, !dbg !4258, !tbaa !86
  %sub122 = fsub double %102, %104, !dbg !4259
  %105 = load ptr, ptr %r_true_t.addr, align 8, !dbg !4260, !tbaa !90
  %arrayidx123 = getelementptr inbounds double, ptr %105, i64 0, !dbg !4260
  %106 = load double, ptr %arrayidx123, align 8, !dbg !4260, !tbaa !86
  %sub124 = fsub double %sub122, %106, !dbg !4261
  %arrayidx125 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !4262
  store double %sub124, ptr %arrayidx125, align 16, !dbg !4263, !tbaa !86
  %107 = load ptr, ptr %rout_i, align 8, !dbg !4264, !tbaa !90
  %arrayidx126 = getelementptr inbounds double, ptr %107, i64 1, !dbg !4264
  %108 = load double, ptr %arrayidx126, align 8, !dbg !4264, !tbaa !86
  %109 = load ptr, ptr %r_true_l.addr, align 8, !dbg !4265, !tbaa !90
  %arrayidx127 = getelementptr inbounds double, ptr %109, i64 1, !dbg !4265
  %110 = load double, ptr %arrayidx127, align 8, !dbg !4265, !tbaa !86
  %sub128 = fsub double %108, %110, !dbg !4266
  %111 = load ptr, ptr %r_true_t.addr, align 8, !dbg !4267, !tbaa !90
  %arrayidx129 = getelementptr inbounds double, ptr %111, i64 1, !dbg !4267
  %112 = load double, ptr %arrayidx129, align 8, !dbg !4267, !tbaa !86
  %sub130 = fsub double %sub128, %112, !dbg !4268
  %arrayidx131 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !4269
  store double %sub130, ptr %arrayidx131, align 8, !dbg !4270, !tbaa !86
  %arrayidx132 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !4271
  %113 = load double, ptr %arrayidx132, align 16, !dbg !4271, !tbaa !86
  %arrayidx133 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !4272
  %114 = load double, ptr %arrayidx133, align 16, !dbg !4272, !tbaa !86
  %arrayidx135 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !4273
  %115 = load double, ptr %arrayidx135, align 8, !dbg !4273, !tbaa !86
  %arrayidx136 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !4274
  %116 = load double, ptr %arrayidx136, align 8, !dbg !4274, !tbaa !86
  %mul137 = fmul double %115, %116, !dbg !4275
  %117 = call double @llvm.fmuladd.f64(double %113, double %114, double %mul137), !dbg !4276
  %call138 = call double @sqrt(double noundef %117) #5, !dbg !4277
  store double %call138, ptr %tmp1, align 8, !dbg !4278, !tbaa !86
  %118 = load ptr, ptr %alpha_i, align 8, !dbg !4279, !tbaa !90
  %arrayidx139 = getelementptr inbounds double, ptr %118, i64 0, !dbg !4279
  %119 = load double, ptr %arrayidx139, align 8, !dbg !4279, !tbaa !86
  %120 = load ptr, ptr %alpha_i, align 8, !dbg !4280, !tbaa !90
  %arrayidx140 = getelementptr inbounds double, ptr %120, i64 0, !dbg !4280
  %121 = load double, ptr %arrayidx140, align 8, !dbg !4280, !tbaa !86
  %122 = load ptr, ptr %alpha_i, align 8, !dbg !4281, !tbaa !90
  %arrayidx142 = getelementptr inbounds double, ptr %122, i64 1, !dbg !4281
  %123 = load double, ptr %arrayidx142, align 8, !dbg !4281, !tbaa !86
  %124 = load ptr, ptr %alpha_i, align 8, !dbg !4282, !tbaa !90
  %arrayidx143 = getelementptr inbounds double, ptr %124, i64 1, !dbg !4282
  %125 = load double, ptr %arrayidx143, align 8, !dbg !4282, !tbaa !86
  %mul144 = fmul double %123, %125, !dbg !4283
  %126 = call double @llvm.fmuladd.f64(double %119, double %121, double %mul144), !dbg !4284
  %call145 = call double @sqrt(double noundef %126) #5, !dbg !4285
  %mul146 = fmul double 2.000000e+00, %call145, !dbg !4286
  %127 = load i32, ptr %n.addr, align 4, !dbg !4287, !tbaa !73
  %conv147 = sitofp i32 %127 to double, !dbg !4287
  %128 = call double @llvm.fmuladd.f64(double %mul146, double %conv147, double 3.000000e+00), !dbg !4288
  store double %128, ptr %U, align 8, !dbg !4289, !tbaa !86
  %129 = load double, ptr %U, align 8, !dbg !4290, !tbaa !86
  %130 = load double, ptr %S1, align 8, !dbg !4290, !tbaa !86
  %131 = load i32, ptr %n.addr, align 4, !dbg !4290, !tbaa !73
  %mul149 = mul nsw i32 2, %131, !dbg !4290
  %conv150 = sitofp i32 %mul149 to double, !dbg !4290
  %add151 = fadd double %130, %conv150, !dbg !4290
  %add152 = fadd double %add151, 1.000000e+00, !dbg !4290
  %cmp153 = fcmp ogt double %129, %add152, !dbg !4290
  br i1 %cmp153, label %cond.true155, label %cond.false156, !dbg !4290

cond.true155:                                     ; preds = %cond.end
  %132 = load double, ptr %U, align 8, !dbg !4290, !tbaa !86
  br label %cond.end161, !dbg !4290

cond.false156:                                    ; preds = %cond.end
  %133 = load double, ptr %S1, align 8, !dbg !4290, !tbaa !86
  %134 = load i32, ptr %n.addr, align 4, !dbg !4290, !tbaa !73
  %mul157 = mul nsw i32 2, %134, !dbg !4290
  %conv158 = sitofp i32 %mul157 to double, !dbg !4290
  %add159 = fadd double %133, %conv158, !dbg !4290
  %add160 = fadd double %add159, 1.000000e+00, !dbg !4290
  br label %cond.end161, !dbg !4290

cond.end161:                                      ; preds = %cond.false156, %cond.true155
  %cond162 = phi double [ %132, %cond.true155 ], [ %add160, %cond.false156 ], !dbg !4290
  store double %cond162, ptr %U, align 8, !dbg !4291, !tbaa !86
  %135 = load double, ptr %U, align 8, !dbg !4292, !tbaa !86
  %136 = load double, ptr %S2, align 8, !dbg !4292, !tbaa !86
  %137 = load i32, ptr %n.addr, align 4, !dbg !4292, !tbaa !73
  %mul163 = mul nsw i32 2, %137, !dbg !4292
  %conv164 = sitofp i32 %mul163 to double, !dbg !4292
  %add165 = fadd double %136, %conv164, !dbg !4292
  %add166 = fadd double %add165, 1.000000e+00, !dbg !4292
  %cmp167 = fcmp ogt double %135, %add166, !dbg !4292
  br i1 %cmp167, label %cond.true169, label %cond.false170, !dbg !4292

cond.true169:                                     ; preds = %cond.end161
  %138 = load double, ptr %U, align 8, !dbg !4292, !tbaa !86
  br label %cond.end175, !dbg !4292

cond.false170:                                    ; preds = %cond.end161
  %139 = load double, ptr %S2, align 8, !dbg !4292, !tbaa !86
  %140 = load i32, ptr %n.addr, align 4, !dbg !4292, !tbaa !73
  %mul171 = mul nsw i32 2, %140, !dbg !4292
  %conv172 = sitofp i32 %mul171 to double, !dbg !4292
  %add173 = fadd double %139, %conv172, !dbg !4292
  %add174 = fadd double %add173, 1.000000e+00, !dbg !4292
  br label %cond.end175, !dbg !4292

cond.end175:                                      ; preds = %cond.false170, %cond.true169
  %cond176 = phi double [ %138, %cond.true169 ], [ %add174, %cond.false170 ], !dbg !4292
  %141 = load double, ptr %un_int.addr, align 8, !dbg !4293, !tbaa !86
  %142 = load double, ptr %un_accurate, align 8, !dbg !4294, !tbaa !86
  %add177 = fadd double %141, %142, !dbg !4295
  %143 = load double, ptr %un_out, align 8, !dbg !4296, !tbaa !86
  %144 = call double @llvm.fmuladd.f64(double %cond176, double %add177, double %143), !dbg !4297
  store double %144, ptr %U, align 8, !dbg !4298, !tbaa !86
  %call179 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !4299
  %mul180 = fmul double 2.000000e+00, %call179, !dbg !4300
  %145 = load double, ptr %U, align 8, !dbg !4301, !tbaa !86
  %mul181 = fmul double %145, %mul180, !dbg !4301
  store double %mul181, ptr %U, align 8, !dbg !4301, !tbaa !86
  %146 = load double, ptr %tmp1, align 8, !dbg !4302, !tbaa !86
  %call182 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !4303
  %mul183 = fmul double 2.000000e+00, %call182, !dbg !4304
  %147 = load i32, ptr %n.addr, align 4, !dbg !4305, !tbaa !73
  %add184 = add nsw i32 %147, 2, !dbg !4306
  %conv185 = sitofp i32 %add184 to double, !dbg !4307
  %mul186 = fmul double %mul183, %conv185, !dbg !4308
  %148 = load double, ptr %eps_int.addr, align 8, !dbg !4309, !tbaa !86
  %149 = load double, ptr %eps_accurate, align 8, !dbg !4310, !tbaa !86
  %add187 = fadd double %148, %149, !dbg !4311
  %mul188 = fmul double %mul186, %add187, !dbg !4312
  %150 = load double, ptr %S, align 8, !dbg !4313, !tbaa !86
  %call190 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !4314
  %151 = load double, ptr %eps_out, align 8, !dbg !4315, !tbaa !86
  %mul191 = fmul double %call190, %151, !dbg !4316
  %152 = load ptr, ptr %r_true_l.addr, align 8, !dbg !4317, !tbaa !90
  %arrayidx192 = getelementptr inbounds double, ptr %152, i64 0, !dbg !4317
  %153 = load double, ptr %arrayidx192, align 8, !dbg !4317, !tbaa !86
  %154 = load ptr, ptr %r_true_l.addr, align 8, !dbg !4318, !tbaa !90
  %arrayidx193 = getelementptr inbounds double, ptr %154, i64 0, !dbg !4318
  %155 = load double, ptr %arrayidx193, align 8, !dbg !4318, !tbaa !86
  %156 = load ptr, ptr %r_true_l.addr, align 8, !dbg !4319, !tbaa !90
  %arrayidx195 = getelementptr inbounds double, ptr %156, i64 1, !dbg !4319
  %157 = load double, ptr %arrayidx195, align 8, !dbg !4319, !tbaa !86
  %158 = load ptr, ptr %r_true_l.addr, align 8, !dbg !4320, !tbaa !90
  %arrayidx196 = getelementptr inbounds double, ptr %158, i64 1, !dbg !4320
  %159 = load double, ptr %arrayidx196, align 8, !dbg !4320, !tbaa !86
  %mul197 = fmul double %157, %159, !dbg !4321
  %160 = call double @llvm.fmuladd.f64(double %153, double %155, double %mul197), !dbg !4322
  %call198 = call double @sqrt(double noundef %160) #5, !dbg !4323
  %mul199 = fmul double %mul191, %call198, !dbg !4324
  %161 = call double @llvm.fmuladd.f64(double %mul188, double %150, double %mul199), !dbg !4325
  %162 = load double, ptr %U, align 8, !dbg !4326, !tbaa !86
  %add200 = fadd double %161, %162, !dbg !4327
  %div = fdiv double %146, %add200, !dbg !4328
  %163 = load ptr, ptr %test_ratio.addr, align 8, !dbg !4329, !tbaa !90
  store double %div, ptr %163, align 8, !dbg !4330, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 16, ptr %y_ii) #5, !dbg !4331
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_ii) #5, !dbg !4331
  call void @llvm.lifetime.end.p0(i64 8, ptr %rout_i) #5, !dbg !4331
  call void @llvm.lifetime.end.p0(i64 8, ptr %rin_i) #5, !dbg !4331
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta_i) #5, !dbg !4331
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_i) #5, !dbg !4331
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_i) #5, !dbg !4331
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_i) #5, !dbg !4331
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_out) #5, !dbg !4331
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_accurate) #5, !dbg !4331
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_d) #5, !dbg !4331
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #5, !dbg !4331
  call void @llvm.lifetime.end.p0(i64 16, ptr %prod) #5, !dbg !4331
  call void @llvm.lifetime.end.p0(i64 8, ptr %U) #5, !dbg !4331
  call void @llvm.lifetime.end.p0(i64 8, ptr %S2) #5, !dbg !4331
  call void @llvm.lifetime.end.p0(i64 8, ptr %S1) #5, !dbg !4331
  call void @llvm.lifetime.end.p0(i64 8, ptr %S) #5, !dbg !4331
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp1) #5, !dbg !4331
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_out) #5, !dbg !4331
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_accurate) #5, !dbg !4331
  call void @llvm.lifetime.end.p0(i64 4, ptr %iy) #5, !dbg !4331
  call void @llvm.lifetime.end.p0(i64 4, ptr %ix) #5, !dbg !4331
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !4331
  ret void, !dbg !4331
}

; Function Attrs: nounwind uwtable
define dso_local void @test_BLAS_zdot_z_c(i32 noundef %n, i32 noundef %conj, ptr noundef %alpha, ptr noundef %beta, ptr noundef %rin, ptr noundef %rout, ptr noundef %r_true_l, ptr noundef %r_true_t, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, double noundef %eps_int, double noundef %un_int, ptr noundef %test_ratio) #0 !dbg !4332 {
entry:
  %n.addr = alloca i32, align 4
  %conj.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %rin.addr = alloca ptr, align 8
  %rout.addr = alloca ptr, align 8
  %r_true_l.addr = alloca ptr, align 8
  %r_true_t.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %eps_int.addr = alloca double, align 8
  %un_int.addr = alloca double, align 8
  %test_ratio.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %eps_accurate = alloca double, align 8
  %eps_out = alloca double, align 8
  %tmp1 = alloca double, align 8
  %S = alloca double, align 8
  %S1 = alloca double, align 8
  %S2 = alloca double, align 8
  %U = alloca double, align 8
  %prod = alloca [2 x double], align 16
  %tmp = alloca [2 x double], align 16
  %un_d = alloca double, align 8
  %un_accurate = alloca double, align 8
  %un_out = alloca double, align 8
  %x_i = alloca ptr, align 8
  %y_i = alloca ptr, align 8
  %alpha_i = alloca ptr, align 8
  %beta_i = alloca ptr, align 8
  %rin_i = alloca ptr, align 8
  %rout_i = alloca ptr, align 8
  %x_ii = alloca [2 x double], align 16
  %y_ii = alloca [2 x float], align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4334, metadata !DIExpression()), !dbg !4372
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !78
  tail call void @llvm.dbg.declare(metadata ptr %conj.addr, metadata !4335, metadata !DIExpression()), !dbg !4373
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !4336, metadata !DIExpression()), !dbg !4374
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %beta.addr, metadata !4337, metadata !DIExpression()), !dbg !4375
  store ptr %rin, ptr %rin.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %rin.addr, metadata !4338, metadata !DIExpression()), !dbg !4376
  store ptr %rout, ptr %rout.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %rout.addr, metadata !4339, metadata !DIExpression()), !dbg !4377
  store ptr %r_true_l, ptr %r_true_l.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %r_true_l.addr, metadata !4340, metadata !DIExpression()), !dbg !4378
  store ptr %r_true_t, ptr %r_true_t.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %r_true_t.addr, metadata !4341, metadata !DIExpression()), !dbg !4379
  store ptr %x, ptr %x.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !4342, metadata !DIExpression()), !dbg !4380
  store i32 %incx, ptr %incx.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incx.addr, metadata !4343, metadata !DIExpression()), !dbg !4381
  store ptr %y, ptr %y.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !4344, metadata !DIExpression()), !dbg !4382
  store i32 %incy, ptr %incy.addr, align 4, !tbaa !73
  tail call void @llvm.dbg.declare(metadata ptr %incy.addr, metadata !4345, metadata !DIExpression()), !dbg !4383
  store double %eps_int, ptr %eps_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %eps_int.addr, metadata !4346, metadata !DIExpression()), !dbg !4384
  store double %un_int, ptr %un_int.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %un_int.addr, metadata !4347, metadata !DIExpression()), !dbg !4385
  store ptr %test_ratio, ptr %test_ratio.addr, align 8, !tbaa !90
  tail call void @llvm.dbg.declare(metadata ptr %test_ratio.addr, metadata !4348, metadata !DIExpression()), !dbg !4386
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !4387
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !4349, metadata !DIExpression()), !dbg !4388
  call void @llvm.lifetime.start.p0(i64 4, ptr %ix) #5, !dbg !4387
  tail call void @llvm.dbg.declare(metadata ptr %ix, metadata !4350, metadata !DIExpression()), !dbg !4389
  call void @llvm.lifetime.start.p0(i64 4, ptr %iy) #5, !dbg !4387
  tail call void @llvm.dbg.declare(metadata ptr %iy, metadata !4351, metadata !DIExpression()), !dbg !4390
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_accurate) #5, !dbg !4391
  tail call void @llvm.dbg.declare(metadata ptr %eps_accurate, metadata !4352, metadata !DIExpression()), !dbg !4392
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_out) #5, !dbg !4391
  tail call void @llvm.dbg.declare(metadata ptr %eps_out, metadata !4353, metadata !DIExpression()), !dbg !4393
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp1) #5, !dbg !4391
  tail call void @llvm.dbg.declare(metadata ptr %tmp1, metadata !4354, metadata !DIExpression()), !dbg !4394
  call void @llvm.lifetime.start.p0(i64 8, ptr %S) #5, !dbg !4391
  tail call void @llvm.dbg.declare(metadata ptr %S, metadata !4355, metadata !DIExpression()), !dbg !4395
  call void @llvm.lifetime.start.p0(i64 8, ptr %S1) #5, !dbg !4391
  tail call void @llvm.dbg.declare(metadata ptr %S1, metadata !4356, metadata !DIExpression()), !dbg !4396
  call void @llvm.lifetime.start.p0(i64 8, ptr %S2) #5, !dbg !4391
  tail call void @llvm.dbg.declare(metadata ptr %S2, metadata !4357, metadata !DIExpression()), !dbg !4397
  call void @llvm.lifetime.start.p0(i64 8, ptr %U) #5, !dbg !4391
  tail call void @llvm.dbg.declare(metadata ptr %U, metadata !4358, metadata !DIExpression()), !dbg !4398
  call void @llvm.lifetime.start.p0(i64 16, ptr %prod) #5, !dbg !4391
  tail call void @llvm.dbg.declare(metadata ptr %prod, metadata !4359, metadata !DIExpression()), !dbg !4399
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #5, !dbg !4391
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !4360, metadata !DIExpression()), !dbg !4400
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_d) #5, !dbg !4401
  tail call void @llvm.dbg.declare(metadata ptr %un_d, metadata !4361, metadata !DIExpression()), !dbg !4402
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_accurate) #5, !dbg !4401
  tail call void @llvm.dbg.declare(metadata ptr %un_accurate, metadata !4362, metadata !DIExpression()), !dbg !4403
  call void @llvm.lifetime.start.p0(i64 8, ptr %un_out) #5, !dbg !4401
  tail call void @llvm.dbg.declare(metadata ptr %un_out, metadata !4363, metadata !DIExpression()), !dbg !4404
  call void @llvm.lifetime.start.p0(i64 8, ptr %x_i) #5, !dbg !4405
  tail call void @llvm.dbg.declare(metadata ptr %x_i, metadata !4364, metadata !DIExpression()), !dbg !4406
  %0 = load ptr, ptr %x.addr, align 8, !dbg !4407, !tbaa !90
  store ptr %0, ptr %x_i, align 8, !dbg !4406, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_i) #5, !dbg !4408
  tail call void @llvm.dbg.declare(metadata ptr %y_i, metadata !4365, metadata !DIExpression()), !dbg !4409
  %1 = load ptr, ptr %y.addr, align 8, !dbg !4410, !tbaa !90
  store ptr %1, ptr %y_i, align 8, !dbg !4409, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_i) #5, !dbg !4411
  tail call void @llvm.dbg.declare(metadata ptr %alpha_i, metadata !4366, metadata !DIExpression()), !dbg !4412
  %2 = load ptr, ptr %alpha.addr, align 8, !dbg !4413, !tbaa !90
  store ptr %2, ptr %alpha_i, align 8, !dbg !4412, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta_i) #5, !dbg !4414
  tail call void @llvm.dbg.declare(metadata ptr %beta_i, metadata !4367, metadata !DIExpression()), !dbg !4415
  %3 = load ptr, ptr %beta.addr, align 8, !dbg !4416, !tbaa !90
  store ptr %3, ptr %beta_i, align 8, !dbg !4415, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %rin_i) #5, !dbg !4417
  tail call void @llvm.dbg.declare(metadata ptr %rin_i, metadata !4368, metadata !DIExpression()), !dbg !4418
  %4 = load ptr, ptr %rin.addr, align 8, !dbg !4419, !tbaa !90
  store ptr %4, ptr %rin_i, align 8, !dbg !4418, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %rout_i) #5, !dbg !4420
  tail call void @llvm.dbg.declare(metadata ptr %rout_i, metadata !4369, metadata !DIExpression()), !dbg !4421
  %5 = load ptr, ptr %rout.addr, align 8, !dbg !4422, !tbaa !90
  store ptr %5, ptr %rout_i, align 8, !dbg !4421, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 16, ptr %x_ii) #5, !dbg !4423
  tail call void @llvm.dbg.declare(metadata ptr %x_ii, metadata !4370, metadata !DIExpression()), !dbg !4424
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_ii) #5, !dbg !4425
  tail call void @llvm.dbg.declare(metadata ptr %y_ii, metadata !4371, metadata !DIExpression()), !dbg !4426
  %6 = load i32, ptr %incx.addr, align 4, !dbg !4427, !tbaa !73
  %mul = mul nsw i32 %6, 2, !dbg !4427
  store i32 %mul, ptr %incx.addr, align 4, !dbg !4427, !tbaa !73
  %7 = load i32, ptr %incy.addr, align 4, !dbg !4428, !tbaa !73
  %mul1 = mul nsw i32 %7, 2, !dbg !4428
  store i32 %mul1, ptr %incy.addr, align 4, !dbg !4428, !tbaa !73
  store i32 0, ptr %ix, align 4, !dbg !4429, !tbaa !73
  store i32 0, ptr %iy, align 4, !dbg !4430, !tbaa !73
  %8 = load i32, ptr %incx.addr, align 4, !dbg !4431, !tbaa !73
  %cmp = icmp slt i32 %8, 0, !dbg !4433
  br i1 %cmp, label %if.then, label %if.end, !dbg !4434

if.then:                                          ; preds = %entry
  %9 = load i32, ptr %n.addr, align 4, !dbg !4435, !tbaa !73
  %sub = sub nsw i32 %9, 1, !dbg !4436
  %sub2 = sub nsw i32 0, %sub, !dbg !4437
  %10 = load i32, ptr %incx.addr, align 4, !dbg !4438, !tbaa !73
  %mul3 = mul nsw i32 %sub2, %10, !dbg !4439
  store i32 %mul3, ptr %ix, align 4, !dbg !4440, !tbaa !73
  br label %if.end, !dbg !4441

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, ptr %incy.addr, align 4, !dbg !4442, !tbaa !73
  %cmp4 = icmp slt i32 %11, 0, !dbg !4444
  br i1 %cmp4, label %if.then5, label %if.end9, !dbg !4445

if.then5:                                         ; preds = %if.end
  %12 = load i32, ptr %n.addr, align 4, !dbg !4446, !tbaa !73
  %sub6 = sub nsw i32 %12, 1, !dbg !4447
  %sub7 = sub nsw i32 0, %sub6, !dbg !4448
  %13 = load i32, ptr %incy.addr, align 4, !dbg !4449, !tbaa !73
  %mul8 = mul nsw i32 %sub7, %13, !dbg !4450
  store i32 %mul8, ptr %iy, align 4, !dbg !4451, !tbaa !73
  br label %if.end9, !dbg !4452

if.end9:                                          ; preds = %if.then5, %if.end
  store double 0.000000e+00, ptr %S2, align 8, !dbg !4453, !tbaa !86
  store double 0.000000e+00, ptr %S1, align 8, !dbg !4454, !tbaa !86
  store double 0.000000e+00, ptr %S, align 8, !dbg !4455, !tbaa !86
  store i32 0, ptr %i, align 4, !dbg !4456, !tbaa !73
  br label %for.cond, !dbg !4458

for.cond:                                         ; preds = %for.inc, %if.end9
  %14 = load i32, ptr %i, align 4, !dbg !4459, !tbaa !73
  %15 = load i32, ptr %n.addr, align 4, !dbg !4461, !tbaa !73
  %cmp10 = icmp slt i32 %14, %15, !dbg !4462
  br i1 %cmp10, label %for.body, label %for.end, !dbg !4463

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %x_i, align 8, !dbg !4464, !tbaa !90
  %17 = load i32, ptr %ix, align 4, !dbg !4466, !tbaa !73
  %idxprom = sext i32 %17 to i64, !dbg !4464
  %arrayidx = getelementptr inbounds double, ptr %16, i64 %idxprom, !dbg !4464
  %18 = load double, ptr %arrayidx, align 8, !dbg !4464, !tbaa !86
  %arrayidx11 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 0, !dbg !4467
  store double %18, ptr %arrayidx11, align 16, !dbg !4468, !tbaa !86
  %19 = load ptr, ptr %x_i, align 8, !dbg !4469, !tbaa !90
  %20 = load i32, ptr %ix, align 4, !dbg !4470, !tbaa !73
  %add = add nsw i32 %20, 1, !dbg !4471
  %idxprom12 = sext i32 %add to i64, !dbg !4469
  %arrayidx13 = getelementptr inbounds double, ptr %19, i64 %idxprom12, !dbg !4469
  %21 = load double, ptr %arrayidx13, align 8, !dbg !4469, !tbaa !86
  %arrayidx14 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 1, !dbg !4472
  store double %21, ptr %arrayidx14, align 8, !dbg !4473, !tbaa !86
  %22 = load ptr, ptr %y_i, align 8, !dbg !4474, !tbaa !90
  %23 = load i32, ptr %iy, align 4, !dbg !4475, !tbaa !73
  %idxprom15 = sext i32 %23 to i64, !dbg !4474
  %arrayidx16 = getelementptr inbounds float, ptr %22, i64 %idxprom15, !dbg !4474
  %24 = load float, ptr %arrayidx16, align 4, !dbg !4474, !tbaa !80
  %arrayidx17 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 0, !dbg !4476
  store float %24, ptr %arrayidx17, align 4, !dbg !4477, !tbaa !80
  %25 = load ptr, ptr %y_i, align 8, !dbg !4478, !tbaa !90
  %26 = load i32, ptr %iy, align 4, !dbg !4479, !tbaa !73
  %add18 = add nsw i32 %26, 1, !dbg !4480
  %idxprom19 = sext i32 %add18 to i64, !dbg !4478
  %arrayidx20 = getelementptr inbounds float, ptr %25, i64 %idxprom19, !dbg !4478
  %27 = load float, ptr %arrayidx20, align 4, !dbg !4478, !tbaa !80
  %arrayidx21 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 1, !dbg !4481
  store float %27, ptr %arrayidx21, align 4, !dbg !4482, !tbaa !80
  %28 = load i32, ptr %conj.addr, align 4, !dbg !4483, !tbaa !78
  %cmp22 = icmp eq i32 %28, 191, !dbg !4485
  br i1 %cmp22, label %if.then23, label %if.end26, !dbg !4486

if.then23:                                        ; preds = %for.body
  %arrayidx24 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 1, !dbg !4487
  %29 = load double, ptr %arrayidx24, align 8, !dbg !4487, !tbaa !86
  %fneg = fneg double %29, !dbg !4489
  %arrayidx25 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 1, !dbg !4490
  store double %fneg, ptr %arrayidx25, align 8, !dbg !4491, !tbaa !86
  br label %if.end26, !dbg !4492

if.end26:                                         ; preds = %if.then23, %for.body
  %arrayidx27 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 0, !dbg !4493
  %30 = load double, ptr %arrayidx27, align 16, !dbg !4493, !tbaa !86
  %arrayidx28 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 0, !dbg !4494
  %31 = load double, ptr %arrayidx28, align 16, !dbg !4494, !tbaa !86
  %arrayidx30 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 1, !dbg !4495
  %32 = load double, ptr %arrayidx30, align 8, !dbg !4495, !tbaa !86
  %arrayidx31 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 1, !dbg !4496
  %33 = load double, ptr %arrayidx31, align 8, !dbg !4496, !tbaa !86
  %mul32 = fmul double %32, %33, !dbg !4497
  %34 = call double @llvm.fmuladd.f64(double %30, double %31, double %mul32), !dbg !4498
  %call = call double @sqrt(double noundef %34) #5, !dbg !4499
  %35 = load double, ptr %S1, align 8, !dbg !4500, !tbaa !86
  %add33 = fadd double %35, %call, !dbg !4500
  store double %add33, ptr %S1, align 8, !dbg !4500, !tbaa !86
  %arrayidx34 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 0, !dbg !4501
  %36 = load float, ptr %arrayidx34, align 4, !dbg !4501, !tbaa !80
  %arrayidx35 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 0, !dbg !4502
  %37 = load float, ptr %arrayidx35, align 4, !dbg !4502, !tbaa !80
  %arrayidx37 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 1, !dbg !4503
  %38 = load float, ptr %arrayidx37, align 4, !dbg !4503, !tbaa !80
  %arrayidx38 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 1, !dbg !4504
  %39 = load float, ptr %arrayidx38, align 4, !dbg !4504, !tbaa !80
  %mul39 = fmul float %38, %39, !dbg !4505
  %40 = call float @llvm.fmuladd.f32(float %36, float %37, float %mul39), !dbg !4506
  %conv = fpext float %40 to double, !dbg !4501
  %call40 = call double @sqrt(double noundef %conv) #5, !dbg !4507
  %41 = load double, ptr %S2, align 8, !dbg !4508, !tbaa !86
  %add41 = fadd double %41, %call40, !dbg !4508
  store double %add41, ptr %S2, align 8, !dbg !4508, !tbaa !86
  %arrayidx42 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 0, !dbg !4509
  %42 = load double, ptr %arrayidx42, align 16, !dbg !4509, !tbaa !86
  %arrayidx43 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 0, !dbg !4511
  %43 = load float, ptr %arrayidx43, align 4, !dbg !4511, !tbaa !80
  %conv44 = fpext float %43 to double, !dbg !4511
  %arrayidx46 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 1, !dbg !4512
  %44 = load double, ptr %arrayidx46, align 8, !dbg !4512, !tbaa !86
  %arrayidx47 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 1, !dbg !4513
  %45 = load float, ptr %arrayidx47, align 4, !dbg !4513, !tbaa !80
  %conv48 = fpext float %45 to double, !dbg !4513
  %mul49 = fmul double %44, %conv48, !dbg !4514
  %neg = fneg double %mul49, !dbg !4515
  %46 = call double @llvm.fmuladd.f64(double %42, double %conv44, double %neg), !dbg !4515
  %arrayidx50 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !4516
  store double %46, ptr %arrayidx50, align 16, !dbg !4517, !tbaa !86
  %arrayidx51 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 0, !dbg !4518
  %47 = load double, ptr %arrayidx51, align 16, !dbg !4518, !tbaa !86
  %arrayidx52 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 1, !dbg !4519
  %48 = load float, ptr %arrayidx52, align 4, !dbg !4519, !tbaa !80
  %conv53 = fpext float %48 to double, !dbg !4519
  %arrayidx55 = getelementptr inbounds [2 x double], ptr %x_ii, i64 0, i64 1, !dbg !4520
  %49 = load double, ptr %arrayidx55, align 8, !dbg !4520, !tbaa !86
  %arrayidx56 = getelementptr inbounds [2 x float], ptr %y_ii, i64 0, i64 0, !dbg !4521
  %50 = load float, ptr %arrayidx56, align 4, !dbg !4521, !tbaa !80
  %conv57 = fpext float %50 to double, !dbg !4521
  %mul58 = fmul double %49, %conv57, !dbg !4522
  %51 = call double @llvm.fmuladd.f64(double %47, double %conv53, double %mul58), !dbg !4523
  %arrayidx59 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !4524
  store double %51, ptr %arrayidx59, align 8, !dbg !4525, !tbaa !86
  %arrayidx60 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !4526
  %52 = load double, ptr %arrayidx60, align 16, !dbg !4526, !tbaa !86
  %arrayidx61 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !4527
  %53 = load double, ptr %arrayidx61, align 16, !dbg !4527, !tbaa !86
  %arrayidx63 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !4528
  %54 = load double, ptr %arrayidx63, align 8, !dbg !4528, !tbaa !86
  %arrayidx64 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !4529
  %55 = load double, ptr %arrayidx64, align 8, !dbg !4529, !tbaa !86
  %mul65 = fmul double %54, %55, !dbg !4530
  %56 = call double @llvm.fmuladd.f64(double %52, double %53, double %mul65), !dbg !4531
  %call66 = call double @sqrt(double noundef %56) #5, !dbg !4532
  %57 = load double, ptr %S, align 8, !dbg !4533, !tbaa !86
  %add67 = fadd double %57, %call66, !dbg !4533
  store double %add67, ptr %S, align 8, !dbg !4533, !tbaa !86
  %58 = load i32, ptr %incx.addr, align 4, !dbg !4534, !tbaa !73
  %59 = load i32, ptr %ix, align 4, !dbg !4535, !tbaa !73
  %add68 = add nsw i32 %59, %58, !dbg !4535
  store i32 %add68, ptr %ix, align 4, !dbg !4535, !tbaa !73
  %60 = load i32, ptr %incy.addr, align 4, !dbg !4536, !tbaa !73
  %61 = load i32, ptr %iy, align 4, !dbg !4537, !tbaa !73
  %add69 = add nsw i32 %61, %60, !dbg !4537
  store i32 %add69, ptr %iy, align 4, !dbg !4537, !tbaa !73
  br label %for.inc, !dbg !4538

for.inc:                                          ; preds = %if.end26
  %62 = load i32, ptr %i, align 4, !dbg !4539, !tbaa !73
  %inc = add nsw i32 %62, 1, !dbg !4539
  store i32 %inc, ptr %i, align 4, !dbg !4539, !tbaa !73
  br label %for.cond, !dbg !4540, !llvm.loop !4541

for.end:                                          ; preds = %for.cond
  %63 = load ptr, ptr %alpha_i, align 8, !dbg !4543, !tbaa !90
  %arrayidx70 = getelementptr inbounds double, ptr %63, i64 0, !dbg !4543
  %64 = load double, ptr %arrayidx70, align 8, !dbg !4543, !tbaa !86
  %65 = load ptr, ptr %alpha_i, align 8, !dbg !4544, !tbaa !90
  %arrayidx71 = getelementptr inbounds double, ptr %65, i64 0, !dbg !4544
  %66 = load double, ptr %arrayidx71, align 8, !dbg !4544, !tbaa !86
  %67 = load ptr, ptr %alpha_i, align 8, !dbg !4545, !tbaa !90
  %arrayidx73 = getelementptr inbounds double, ptr %67, i64 1, !dbg !4545
  %68 = load double, ptr %arrayidx73, align 8, !dbg !4545, !tbaa !86
  %69 = load ptr, ptr %alpha_i, align 8, !dbg !4546, !tbaa !90
  %arrayidx74 = getelementptr inbounds double, ptr %69, i64 1, !dbg !4546
  %70 = load double, ptr %arrayidx74, align 8, !dbg !4546, !tbaa !86
  %mul75 = fmul double %68, %70, !dbg !4547
  %71 = call double @llvm.fmuladd.f64(double %64, double %66, double %mul75), !dbg !4548
  %call76 = call double @sqrt(double noundef %71) #5, !dbg !4549
  %72 = load double, ptr %S, align 8, !dbg !4550, !tbaa !86
  %mul77 = fmul double %72, %call76, !dbg !4550
  store double %mul77, ptr %S, align 8, !dbg !4550, !tbaa !86
  %73 = load ptr, ptr %beta_i, align 8, !dbg !4551, !tbaa !90
  %arrayidx78 = getelementptr inbounds double, ptr %73, i64 0, !dbg !4551
  %74 = load double, ptr %arrayidx78, align 8, !dbg !4551, !tbaa !86
  %75 = load ptr, ptr %rin_i, align 8, !dbg !4553, !tbaa !90
  %arrayidx79 = getelementptr inbounds double, ptr %75, i64 0, !dbg !4553
  %76 = load double, ptr %arrayidx79, align 8, !dbg !4553, !tbaa !86
  %77 = load ptr, ptr %beta_i, align 8, !dbg !4554, !tbaa !90
  %arrayidx81 = getelementptr inbounds double, ptr %77, i64 1, !dbg !4554
  %78 = load double, ptr %arrayidx81, align 8, !dbg !4554, !tbaa !86
  %79 = load ptr, ptr %rin_i, align 8, !dbg !4555, !tbaa !90
  %arrayidx82 = getelementptr inbounds double, ptr %79, i64 1, !dbg !4555
  %80 = load double, ptr %arrayidx82, align 8, !dbg !4555, !tbaa !86
  %mul83 = fmul double %78, %80, !dbg !4556
  %neg84 = fneg double %mul83, !dbg !4557
  %81 = call double @llvm.fmuladd.f64(double %74, double %76, double %neg84), !dbg !4557
  %arrayidx85 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !4558
  store double %81, ptr %arrayidx85, align 16, !dbg !4559, !tbaa !86
  %82 = load ptr, ptr %beta_i, align 8, !dbg !4560, !tbaa !90
  %arrayidx86 = getelementptr inbounds double, ptr %82, i64 0, !dbg !4560
  %83 = load double, ptr %arrayidx86, align 8, !dbg !4560, !tbaa !86
  %84 = load ptr, ptr %rin_i, align 8, !dbg !4561, !tbaa !90
  %arrayidx87 = getelementptr inbounds double, ptr %84, i64 1, !dbg !4561
  %85 = load double, ptr %arrayidx87, align 8, !dbg !4561, !tbaa !86
  %86 = load ptr, ptr %beta_i, align 8, !dbg !4562, !tbaa !90
  %arrayidx89 = getelementptr inbounds double, ptr %86, i64 1, !dbg !4562
  %87 = load double, ptr %arrayidx89, align 8, !dbg !4562, !tbaa !86
  %88 = load ptr, ptr %rin_i, align 8, !dbg !4563, !tbaa !90
  %arrayidx90 = getelementptr inbounds double, ptr %88, i64 0, !dbg !4563
  %89 = load double, ptr %arrayidx90, align 8, !dbg !4563, !tbaa !86
  %mul91 = fmul double %87, %89, !dbg !4564
  %90 = call double @llvm.fmuladd.f64(double %83, double %85, double %mul91), !dbg !4565
  %arrayidx92 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !4566
  store double %90, ptr %arrayidx92, align 8, !dbg !4567, !tbaa !86
  %arrayidx93 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !4568
  %91 = load double, ptr %arrayidx93, align 16, !dbg !4568, !tbaa !86
  %arrayidx94 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 0, !dbg !4569
  %92 = load double, ptr %arrayidx94, align 16, !dbg !4569, !tbaa !86
  %arrayidx96 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !4570
  %93 = load double, ptr %arrayidx96, align 8, !dbg !4570, !tbaa !86
  %arrayidx97 = getelementptr inbounds [2 x double], ptr %prod, i64 0, i64 1, !dbg !4571
  %94 = load double, ptr %arrayidx97, align 8, !dbg !4571, !tbaa !86
  %mul98 = fmul double %93, %94, !dbg !4572
  %95 = call double @llvm.fmuladd.f64(double %91, double %92, double %mul98), !dbg !4573
  %call99 = call double @sqrt(double noundef %95) #5, !dbg !4574
  %96 = load double, ptr %S, align 8, !dbg !4575, !tbaa !86
  %add100 = fadd double %96, %call99, !dbg !4575
  store double %add100, ptr %S, align 8, !dbg !4575, !tbaa !86
  %call101 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !4576
  %conv102 = sitofp i32 %call101 to double, !dbg !4577
  %call103 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !4578
  %conv104 = sitofp i32 %call103 to double, !dbg !4579
  %call105 = call double @pow(double noundef %conv102, double noundef %conv104) #5, !dbg !4580
  store double %call105, ptr %un_d, align 8, !dbg !4581, !tbaa !86
  %97 = load double, ptr %S, align 8, !dbg !4582, !tbaa !86
  %98 = load double, ptr %un_d, align 8, !dbg !4582, !tbaa !86
  %cmp106 = fcmp ogt double %97, %98, !dbg !4582
  br i1 %cmp106, label %cond.true, label %cond.false, !dbg !4582

cond.true:                                        ; preds = %for.end
  %99 = load double, ptr %S, align 8, !dbg !4582, !tbaa !86
  br label %cond.end, !dbg !4582

cond.false:                                       ; preds = %for.end
  %100 = load double, ptr %un_d, align 8, !dbg !4582, !tbaa !86
  br label %cond.end, !dbg !4582

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %99, %cond.true ], [ %100, %cond.false ], !dbg !4582
  store double %cond, ptr %S, align 8, !dbg !4583, !tbaa !86
  %call108 = call double @power(i32 noundef 2, i32 noundef -106), !dbg !4584
  store double %call108, ptr %eps_accurate, align 8, !dbg !4585, !tbaa !86
  %call109 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 214), !dbg !4586
  %conv110 = sitofp i32 %call109 to double, !dbg !4587
  %call111 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 214), !dbg !4588
  %conv112 = sitofp i32 %call111 to double, !dbg !4589
  %call113 = call double @pow(double noundef %conv110, double noundef %conv112) #5, !dbg !4590
  store double %call113, ptr %un_accurate, align 8, !dbg !4591, !tbaa !86
  %call114 = call double @power(i32 noundef 2, i32 noundef -53), !dbg !4592
  store double %call114, ptr %eps_out, align 8, !dbg !4593, !tbaa !86
  %call115 = call i32 @BLAS_fpinfo_x(i32 noundef 151, i32 noundef 212), !dbg !4594
  %conv116 = sitofp i32 %call115 to double, !dbg !4595
  %call117 = call i32 @BLAS_fpinfo_x(i32 noundef 155, i32 noundef 212), !dbg !4596
  %conv118 = sitofp i32 %call117 to double, !dbg !4597
  %call119 = call double @pow(double noundef %conv116, double noundef %conv118) #5, !dbg !4598
  store double %call119, ptr %un_out, align 8, !dbg !4599, !tbaa !86
  %101 = load ptr, ptr %rout_i, align 8, !dbg !4600, !tbaa !90
  %arrayidx120 = getelementptr inbounds double, ptr %101, i64 0, !dbg !4600
  %102 = load double, ptr %arrayidx120, align 8, !dbg !4600, !tbaa !86
  %103 = load ptr, ptr %r_true_l.addr, align 8, !dbg !4601, !tbaa !90
  %arrayidx121 = getelementptr inbounds double, ptr %103, i64 0, !dbg !4601
  %104 = load double, ptr %arrayidx121, align 8, !dbg !4601, !tbaa !86
  %sub122 = fsub double %102, %104, !dbg !4602
  %105 = load ptr, ptr %r_true_t.addr, align 8, !dbg !4603, !tbaa !90
  %arrayidx123 = getelementptr inbounds double, ptr %105, i64 0, !dbg !4603
  %106 = load double, ptr %arrayidx123, align 8, !dbg !4603, !tbaa !86
  %sub124 = fsub double %sub122, %106, !dbg !4604
  %arrayidx125 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !4605
  store double %sub124, ptr %arrayidx125, align 16, !dbg !4606, !tbaa !86
  %107 = load ptr, ptr %rout_i, align 8, !dbg !4607, !tbaa !90
  %arrayidx126 = getelementptr inbounds double, ptr %107, i64 1, !dbg !4607
  %108 = load double, ptr %arrayidx126, align 8, !dbg !4607, !tbaa !86
  %109 = load ptr, ptr %r_true_l.addr, align 8, !dbg !4608, !tbaa !90
  %arrayidx127 = getelementptr inbounds double, ptr %109, i64 1, !dbg !4608
  %110 = load double, ptr %arrayidx127, align 8, !dbg !4608, !tbaa !86
  %sub128 = fsub double %108, %110, !dbg !4609
  %111 = load ptr, ptr %r_true_t.addr, align 8, !dbg !4610, !tbaa !90
  %arrayidx129 = getelementptr inbounds double, ptr %111, i64 1, !dbg !4610
  %112 = load double, ptr %arrayidx129, align 8, !dbg !4610, !tbaa !86
  %sub130 = fsub double %sub128, %112, !dbg !4611
  %arrayidx131 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !4612
  store double %sub130, ptr %arrayidx131, align 8, !dbg !4613, !tbaa !86
  %arrayidx132 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !4614
  %113 = load double, ptr %arrayidx132, align 16, !dbg !4614, !tbaa !86
  %arrayidx133 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !4615
  %114 = load double, ptr %arrayidx133, align 16, !dbg !4615, !tbaa !86
  %arrayidx135 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !4616
  %115 = load double, ptr %arrayidx135, align 8, !dbg !4616, !tbaa !86
  %arrayidx136 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !4617
  %116 = load double, ptr %arrayidx136, align 8, !dbg !4617, !tbaa !86
  %mul137 = fmul double %115, %116, !dbg !4618
  %117 = call double @llvm.fmuladd.f64(double %113, double %114, double %mul137), !dbg !4619
  %call138 = call double @sqrt(double noundef %117) #5, !dbg !4620
  store double %call138, ptr %tmp1, align 8, !dbg !4621, !tbaa !86
  %118 = load ptr, ptr %alpha_i, align 8, !dbg !4622, !tbaa !90
  %arrayidx139 = getelementptr inbounds double, ptr %118, i64 0, !dbg !4622
  %119 = load double, ptr %arrayidx139, align 8, !dbg !4622, !tbaa !86
  %120 = load ptr, ptr %alpha_i, align 8, !dbg !4623, !tbaa !90
  %arrayidx140 = getelementptr inbounds double, ptr %120, i64 0, !dbg !4623
  %121 = load double, ptr %arrayidx140, align 8, !dbg !4623, !tbaa !86
  %122 = load ptr, ptr %alpha_i, align 8, !dbg !4624, !tbaa !90
  %arrayidx142 = getelementptr inbounds double, ptr %122, i64 1, !dbg !4624
  %123 = load double, ptr %arrayidx142, align 8, !dbg !4624, !tbaa !86
  %124 = load ptr, ptr %alpha_i, align 8, !dbg !4625, !tbaa !90
  %arrayidx143 = getelementptr inbounds double, ptr %124, i64 1, !dbg !4625
  %125 = load double, ptr %arrayidx143, align 8, !dbg !4625, !tbaa !86
  %mul144 = fmul double %123, %125, !dbg !4626
  %126 = call double @llvm.fmuladd.f64(double %119, double %121, double %mul144), !dbg !4627
  %call145 = call double @sqrt(double noundef %126) #5, !dbg !4628
  %mul146 = fmul double 2.000000e+00, %call145, !dbg !4629
  %127 = load i32, ptr %n.addr, align 4, !dbg !4630, !tbaa !73
  %conv147 = sitofp i32 %127 to double, !dbg !4630
  %128 = call double @llvm.fmuladd.f64(double %mul146, double %conv147, double 3.000000e+00), !dbg !4631
  store double %128, ptr %U, align 8, !dbg !4632, !tbaa !86
  %129 = load double, ptr %U, align 8, !dbg !4633, !tbaa !86
  %130 = load double, ptr %S1, align 8, !dbg !4633, !tbaa !86
  %131 = load i32, ptr %n.addr, align 4, !dbg !4633, !tbaa !73
  %mul149 = mul nsw i32 2, %131, !dbg !4633
  %conv150 = sitofp i32 %mul149 to double, !dbg !4633
  %add151 = fadd double %130, %conv150, !dbg !4633
  %add152 = fadd double %add151, 1.000000e+00, !dbg !4633
  %cmp153 = fcmp ogt double %129, %add152, !dbg !4633
  br i1 %cmp153, label %cond.true155, label %cond.false156, !dbg !4633

cond.true155:                                     ; preds = %cond.end
  %132 = load double, ptr %U, align 8, !dbg !4633, !tbaa !86
  br label %cond.end161, !dbg !4633

cond.false156:                                    ; preds = %cond.end
  %133 = load double, ptr %S1, align 8, !dbg !4633, !tbaa !86
  %134 = load i32, ptr %n.addr, align 4, !dbg !4633, !tbaa !73
  %mul157 = mul nsw i32 2, %134, !dbg !4633
  %conv158 = sitofp i32 %mul157 to double, !dbg !4633
  %add159 = fadd double %133, %conv158, !dbg !4633
  %add160 = fadd double %add159, 1.000000e+00, !dbg !4633
  br label %cond.end161, !dbg !4633

cond.end161:                                      ; preds = %cond.false156, %cond.true155
  %cond162 = phi double [ %132, %cond.true155 ], [ %add160, %cond.false156 ], !dbg !4633
  store double %cond162, ptr %U, align 8, !dbg !4634, !tbaa !86
  %135 = load double, ptr %U, align 8, !dbg !4635, !tbaa !86
  %136 = load double, ptr %S2, align 8, !dbg !4635, !tbaa !86
  %137 = load i32, ptr %n.addr, align 4, !dbg !4635, !tbaa !73
  %mul163 = mul nsw i32 2, %137, !dbg !4635
  %conv164 = sitofp i32 %mul163 to double, !dbg !4635
  %add165 = fadd double %136, %conv164, !dbg !4635
  %add166 = fadd double %add165, 1.000000e+00, !dbg !4635
  %cmp167 = fcmp ogt double %135, %add166, !dbg !4635
  br i1 %cmp167, label %cond.true169, label %cond.false170, !dbg !4635

cond.true169:                                     ; preds = %cond.end161
  %138 = load double, ptr %U, align 8, !dbg !4635, !tbaa !86
  br label %cond.end175, !dbg !4635

cond.false170:                                    ; preds = %cond.end161
  %139 = load double, ptr %S2, align 8, !dbg !4635, !tbaa !86
  %140 = load i32, ptr %n.addr, align 4, !dbg !4635, !tbaa !73
  %mul171 = mul nsw i32 2, %140, !dbg !4635
  %conv172 = sitofp i32 %mul171 to double, !dbg !4635
  %add173 = fadd double %139, %conv172, !dbg !4635
  %add174 = fadd double %add173, 1.000000e+00, !dbg !4635
  br label %cond.end175, !dbg !4635

cond.end175:                                      ; preds = %cond.false170, %cond.true169
  %cond176 = phi double [ %138, %cond.true169 ], [ %add174, %cond.false170 ], !dbg !4635
  %141 = load double, ptr %un_int.addr, align 8, !dbg !4636, !tbaa !86
  %142 = load double, ptr %un_accurate, align 8, !dbg !4637, !tbaa !86
  %add177 = fadd double %141, %142, !dbg !4638
  %143 = load double, ptr %un_out, align 8, !dbg !4639, !tbaa !86
  %144 = call double @llvm.fmuladd.f64(double %cond176, double %add177, double %143), !dbg !4640
  store double %144, ptr %U, align 8, !dbg !4641, !tbaa !86
  %call179 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !4642
  %mul180 = fmul double 2.000000e+00, %call179, !dbg !4643
  %145 = load double, ptr %U, align 8, !dbg !4644, !tbaa !86
  %mul181 = fmul double %145, %mul180, !dbg !4644
  store double %mul181, ptr %U, align 8, !dbg !4644, !tbaa !86
  %146 = load double, ptr %tmp1, align 8, !dbg !4645, !tbaa !86
  %call182 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !4646
  %mul183 = fmul double 2.000000e+00, %call182, !dbg !4647
  %147 = load i32, ptr %n.addr, align 4, !dbg !4648, !tbaa !73
  %add184 = add nsw i32 %147, 2, !dbg !4649
  %conv185 = sitofp i32 %add184 to double, !dbg !4650
  %mul186 = fmul double %mul183, %conv185, !dbg !4651
  %148 = load double, ptr %eps_int.addr, align 8, !dbg !4652, !tbaa !86
  %149 = load double, ptr %eps_accurate, align 8, !dbg !4653, !tbaa !86
  %add187 = fadd double %148, %149, !dbg !4654
  %mul188 = fmul double %mul186, %add187, !dbg !4655
  %150 = load double, ptr %S, align 8, !dbg !4656, !tbaa !86
  %call190 = call double @sqrt(double noundef 2.000000e+00) #5, !dbg !4657
  %151 = load double, ptr %eps_out, align 8, !dbg !4658, !tbaa !86
  %mul191 = fmul double %call190, %151, !dbg !4659
  %152 = load ptr, ptr %r_true_l.addr, align 8, !dbg !4660, !tbaa !90
  %arrayidx192 = getelementptr inbounds double, ptr %152, i64 0, !dbg !4660
  %153 = load double, ptr %arrayidx192, align 8, !dbg !4660, !tbaa !86
  %154 = load ptr, ptr %r_true_l.addr, align 8, !dbg !4661, !tbaa !90
  %arrayidx193 = getelementptr inbounds double, ptr %154, i64 0, !dbg !4661
  %155 = load double, ptr %arrayidx193, align 8, !dbg !4661, !tbaa !86
  %156 = load ptr, ptr %r_true_l.addr, align 8, !dbg !4662, !tbaa !90
  %arrayidx195 = getelementptr inbounds double, ptr %156, i64 1, !dbg !4662
  %157 = load double, ptr %arrayidx195, align 8, !dbg !4662, !tbaa !86
  %158 = load ptr, ptr %r_true_l.addr, align 8, !dbg !4663, !tbaa !90
  %arrayidx196 = getelementptr inbounds double, ptr %158, i64 1, !dbg !4663
  %159 = load double, ptr %arrayidx196, align 8, !dbg !4663, !tbaa !86
  %mul197 = fmul double %157, %159, !dbg !4664
  %160 = call double @llvm.fmuladd.f64(double %153, double %155, double %mul197), !dbg !4665
  %call198 = call double @sqrt(double noundef %160) #5, !dbg !4666
  %mul199 = fmul double %mul191, %call198, !dbg !4667
  %161 = call double @llvm.fmuladd.f64(double %mul188, double %150, double %mul199), !dbg !4668
  %162 = load double, ptr %U, align 8, !dbg !4669, !tbaa !86
  %add200 = fadd double %161, %162, !dbg !4670
  %div = fdiv double %146, %add200, !dbg !4671
  %163 = load ptr, ptr %test_ratio.addr, align 8, !dbg !4672, !tbaa !90
  store double %div, ptr %163, align 8, !dbg !4673, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_ii) #5, !dbg !4674
  call void @llvm.lifetime.end.p0(i64 16, ptr %x_ii) #5, !dbg !4674
  call void @llvm.lifetime.end.p0(i64 8, ptr %rout_i) #5, !dbg !4674
  call void @llvm.lifetime.end.p0(i64 8, ptr %rin_i) #5, !dbg !4674
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta_i) #5, !dbg !4674
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_i) #5, !dbg !4674
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_i) #5, !dbg !4674
  call void @llvm.lifetime.end.p0(i64 8, ptr %x_i) #5, !dbg !4674
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_out) #5, !dbg !4674
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_accurate) #5, !dbg !4674
  call void @llvm.lifetime.end.p0(i64 8, ptr %un_d) #5, !dbg !4674
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #5, !dbg !4674
  call void @llvm.lifetime.end.p0(i64 16, ptr %prod) #5, !dbg !4674
  call void @llvm.lifetime.end.p0(i64 8, ptr %U) #5, !dbg !4674
  call void @llvm.lifetime.end.p0(i64 8, ptr %S2) #5, !dbg !4674
  call void @llvm.lifetime.end.p0(i64 8, ptr %S1) #5, !dbg !4674
  call void @llvm.lifetime.end.p0(i64 8, ptr %S) #5, !dbg !4674
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp1) #5, !dbg !4674
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_out) #5, !dbg !4674
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_accurate) #5, !dbg !4674
  call void @llvm.lifetime.end.p0(i64 4, ptr %iy) #5, !dbg !4674
  call void @llvm.lifetime.end.p0(i64 4, ptr %ix) #5, !dbg !4674
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !4674
  ret void, !dbg !4674
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !28, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "test_dot.c", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/testing/test-dot", checksumkind: CSK_MD5, checksum: "0b818e403ba9018a30c9a83181c8c3e7")
!2 = !{!3, !9, !22}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blas_conj_type", file: !4, line: 54, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "../../src/blas_enum.h", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/testing/test-dot", checksumkind: CSK_MD5, checksum: "8e42b1960f9fe688989d7c36c5b24db6")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "blas_conj", value: 191)
!8 = !DIEnumerator(name: "blas_no_conj", value: 192)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blas_cmach_type", file: !4, line: 27, baseType: !5, size: 32, elements: !10)
!10 = !{!11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21}
!11 = !DIEnumerator(name: "blas_base", value: 151)
!12 = !DIEnumerator(name: "blas_t", value: 152)
!13 = !DIEnumerator(name: "blas_rnd", value: 153)
!14 = !DIEnumerator(name: "blas_ieee", value: 154)
!15 = !DIEnumerator(name: "blas_emin", value: 155)
!16 = !DIEnumerator(name: "blas_emax", value: 156)
!17 = !DIEnumerator(name: "blas_eps", value: 157)
!18 = !DIEnumerator(name: "blas_prec", value: 158)
!19 = !DIEnumerator(name: "blas_underflow", value: 159)
!20 = !DIEnumerator(name: "blas_overflow", value: 160)
!21 = !DIEnumerator(name: "blas_sfmin", value: 161)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blas_prec_type", file: !4, line: 63, baseType: !5, size: 32, elements: !23)
!23 = !{!24, !25, !26, !27}
!24 = !DIEnumerator(name: "blas_prec_single", value: 211)
!25 = !DIEnumerator(name: "blas_prec_double", value: 212)
!26 = !DIEnumerator(name: "blas_prec_indigenous", value: 213)
!27 = !DIEnumerator(name: "blas_prec_extra", value: 214)
!28 = !{!29, !30, !32}
!29 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!33 = !{i32 7, !"Dwarf Version", i32 5}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 4}
!36 = !{i32 8, !"PIC Level", i32 2}
!37 = !{i32 7, !"PIE Level", i32 2}
!38 = !{i32 7, !"uwtable", i32 2}
!39 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!40 = distinct !DISubprogram(name: "test_BLAS_sdot", scope: !1, file: !1, line: 8, type: !41, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !44)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43, !3, !31, !31, !31, !31, !29, !29, !30, !43, !30, !43, !29, !29, !32}
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !{!45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!45 = !DILocalVariable(name: "n", arg: 1, scope: !40, file: !1, line: 8, type: !43)
!46 = !DILocalVariable(name: "conj", arg: 2, scope: !40, file: !1, line: 8, type: !3)
!47 = !DILocalVariable(name: "alpha", arg: 3, scope: !40, file: !1, line: 8, type: !31)
!48 = !DILocalVariable(name: "beta", arg: 4, scope: !40, file: !1, line: 8, type: !31)
!49 = !DILocalVariable(name: "rin", arg: 5, scope: !40, file: !1, line: 9, type: !31)
!50 = !DILocalVariable(name: "rout", arg: 6, scope: !40, file: !1, line: 9, type: !31)
!51 = !DILocalVariable(name: "r_true_l", arg: 7, scope: !40, file: !1, line: 9, type: !29)
!52 = !DILocalVariable(name: "r_true_t", arg: 8, scope: !40, file: !1, line: 9, type: !29)
!53 = !DILocalVariable(name: "x", arg: 9, scope: !40, file: !1, line: 10, type: !30)
!54 = !DILocalVariable(name: "incx", arg: 10, scope: !40, file: !1, line: 10, type: !43)
!55 = !DILocalVariable(name: "y", arg: 11, scope: !40, file: !1, line: 10, type: !30)
!56 = !DILocalVariable(name: "incy", arg: 12, scope: !40, file: !1, line: 10, type: !43)
!57 = !DILocalVariable(name: "eps_int", arg: 13, scope: !40, file: !1, line: 10, type: !29)
!58 = !DILocalVariable(name: "un_int", arg: 14, scope: !40, file: !1, line: 11, type: !29)
!59 = !DILocalVariable(name: "test_ratio", arg: 15, scope: !40, file: !1, line: 11, type: !32)
!60 = !DILocalVariable(name: "i", scope: !40, file: !1, line: 57, type: !43)
!61 = !DILocalVariable(name: "ix", scope: !40, file: !1, line: 57, type: !43)
!62 = !DILocalVariable(name: "iy", scope: !40, file: !1, line: 57, type: !43)
!63 = !DILocalVariable(name: "eps_accurate", scope: !40, file: !1, line: 58, type: !29)
!64 = !DILocalVariable(name: "eps_out", scope: !40, file: !1, line: 58, type: !29)
!65 = !DILocalVariable(name: "tmp1", scope: !40, file: !1, line: 58, type: !29)
!66 = !DILocalVariable(name: "S", scope: !40, file: !1, line: 58, type: !29)
!67 = !DILocalVariable(name: "S1", scope: !40, file: !1, line: 58, type: !29)
!68 = !DILocalVariable(name: "S2", scope: !40, file: !1, line: 58, type: !29)
!69 = !DILocalVariable(name: "U", scope: !40, file: !1, line: 58, type: !29)
!70 = !DILocalVariable(name: "un_d", scope: !40, file: !1, line: 59, type: !29)
!71 = !DILocalVariable(name: "un_accurate", scope: !40, file: !1, line: 59, type: !29)
!72 = !DILocalVariable(name: "un_out", scope: !40, file: !1, line: 59, type: !29)
!73 = !{!74, !74, i64 0}
!74 = !{!"int", !75, i64 0}
!75 = !{!"omnipotent char", !76, i64 0}
!76 = !{!"Simple C/C++ TBAA"}
!77 = !DILocation(line: 8, column: 25, scope: !40)
!78 = !{!75, !75, i64 0}
!79 = !DILocation(line: 8, column: 48, scope: !40)
!80 = !{!81, !81, i64 0}
!81 = !{!"float", !75, i64 0}
!82 = !DILocation(line: 8, column: 60, scope: !40)
!83 = !DILocation(line: 8, column: 73, scope: !40)
!84 = !DILocation(line: 9, column: 13, scope: !40)
!85 = !DILocation(line: 9, column: 24, scope: !40)
!86 = !{!87, !87, i64 0}
!87 = !{!"double", !75, i64 0}
!88 = !DILocation(line: 9, column: 37, scope: !40)
!89 = !DILocation(line: 9, column: 54, scope: !40)
!90 = !{!91, !91, i64 0}
!91 = !{!"any pointer", !75, i64 0}
!92 = !DILocation(line: 10, column: 14, scope: !40)
!93 = !DILocation(line: 10, column: 21, scope: !40)
!94 = !DILocation(line: 10, column: 34, scope: !40)
!95 = !DILocation(line: 10, column: 41, scope: !40)
!96 = !DILocation(line: 10, column: 54, scope: !40)
!97 = !DILocation(line: 11, column: 14, scope: !40)
!98 = !DILocation(line: 11, column: 30, scope: !40)
!99 = !DILocation(line: 57, column: 3, scope: !40)
!100 = !DILocation(line: 57, column: 7, scope: !40)
!101 = !DILocation(line: 57, column: 10, scope: !40)
!102 = !DILocation(line: 57, column: 14, scope: !40)
!103 = !DILocation(line: 58, column: 3, scope: !40)
!104 = !DILocation(line: 58, column: 10, scope: !40)
!105 = !DILocation(line: 58, column: 24, scope: !40)
!106 = !DILocation(line: 58, column: 33, scope: !40)
!107 = !DILocation(line: 58, column: 39, scope: !40)
!108 = !DILocation(line: 58, column: 42, scope: !40)
!109 = !DILocation(line: 58, column: 46, scope: !40)
!110 = !DILocation(line: 58, column: 50, scope: !40)
!111 = !DILocation(line: 59, column: 3, scope: !40)
!112 = !DILocation(line: 59, column: 10, scope: !40)
!113 = !DILocation(line: 59, column: 16, scope: !40)
!114 = !DILocation(line: 59, column: 29, scope: !40)
!115 = !DILocation(line: 62, column: 6, scope: !40)
!116 = !DILocation(line: 63, column: 6, scope: !40)
!117 = !DILocation(line: 64, column: 7, scope: !118)
!118 = distinct !DILexicalBlock(scope: !40, file: !1, line: 64, column: 7)
!119 = !DILocation(line: 64, column: 12, scope: !118)
!120 = !DILocation(line: 64, column: 7, scope: !40)
!121 = !DILocation(line: 65, column: 12, scope: !118)
!122 = !DILocation(line: 65, column: 14, scope: !118)
!123 = !DILocation(line: 65, column: 10, scope: !118)
!124 = !DILocation(line: 65, column: 21, scope: !118)
!125 = !DILocation(line: 65, column: 19, scope: !118)
!126 = !DILocation(line: 65, column: 8, scope: !118)
!127 = !DILocation(line: 65, column: 5, scope: !118)
!128 = !DILocation(line: 66, column: 7, scope: !129)
!129 = distinct !DILexicalBlock(scope: !40, file: !1, line: 66, column: 7)
!130 = !DILocation(line: 66, column: 12, scope: !129)
!131 = !DILocation(line: 66, column: 7, scope: !40)
!132 = !DILocation(line: 67, column: 12, scope: !129)
!133 = !DILocation(line: 67, column: 14, scope: !129)
!134 = !DILocation(line: 67, column: 10, scope: !129)
!135 = !DILocation(line: 67, column: 21, scope: !129)
!136 = !DILocation(line: 67, column: 19, scope: !129)
!137 = !DILocation(line: 67, column: 8, scope: !129)
!138 = !DILocation(line: 67, column: 5, scope: !129)
!139 = !DILocation(line: 70, column: 15, scope: !40)
!140 = !DILocation(line: 70, column: 10, scope: !40)
!141 = !DILocation(line: 70, column: 5, scope: !40)
!142 = !DILocation(line: 71, column: 10, scope: !143)
!143 = distinct !DILexicalBlock(scope: !40, file: !1, line: 71, column: 3)
!144 = !DILocation(line: 71, column: 8, scope: !143)
!145 = !DILocation(line: 71, column: 15, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !1, line: 71, column: 3)
!147 = !DILocation(line: 71, column: 19, scope: !146)
!148 = !DILocation(line: 71, column: 17, scope: !146)
!149 = !DILocation(line: 71, column: 3, scope: !143)
!150 = !DILocation(line: 72, column: 15, scope: !151)
!151 = distinct !DILexicalBlock(scope: !146, file: !1, line: 71, column: 27)
!152 = !DILocation(line: 72, column: 17, scope: !151)
!153 = !DILocation(line: 72, column: 23, scope: !151)
!154 = !DILocation(line: 72, column: 25, scope: !151)
!155 = !DILocation(line: 72, column: 21, scope: !151)
!156 = !DILocation(line: 72, column: 10, scope: !151)
!157 = !DILocation(line: 72, column: 7, scope: !151)
!158 = !DILocation(line: 73, column: 16, scope: !151)
!159 = !DILocation(line: 73, column: 18, scope: !151)
!160 = !DILocation(line: 73, column: 11, scope: !151)
!161 = !DILocation(line: 73, column: 8, scope: !151)
!162 = !DILocation(line: 74, column: 16, scope: !151)
!163 = !DILocation(line: 74, column: 18, scope: !151)
!164 = !DILocation(line: 74, column: 11, scope: !151)
!165 = !DILocation(line: 74, column: 8, scope: !151)
!166 = !DILocation(line: 75, column: 11, scope: !151)
!167 = !DILocation(line: 75, column: 8, scope: !151)
!168 = !DILocation(line: 76, column: 11, scope: !151)
!169 = !DILocation(line: 76, column: 8, scope: !151)
!170 = !DILocation(line: 77, column: 3, scope: !151)
!171 = !DILocation(line: 71, column: 22, scope: !146)
!172 = !DILocation(line: 71, column: 3, scope: !146)
!173 = distinct !{!173, !149, !174, !175}
!174 = !DILocation(line: 77, column: 3, scope: !143)
!175 = !{!"llvm.loop.mustprogress"}
!176 = !DILocation(line: 78, column: 13, scope: !40)
!177 = !DILocation(line: 78, column: 8, scope: !40)
!178 = !DILocation(line: 78, column: 5, scope: !40)
!179 = !DILocation(line: 79, column: 13, scope: !40)
!180 = !DILocation(line: 79, column: 20, scope: !40)
!181 = !DILocation(line: 79, column: 18, scope: !40)
!182 = !DILocation(line: 79, column: 8, scope: !40)
!183 = !DILocation(line: 79, column: 5, scope: !40)
!184 = !DILocation(line: 81, column: 23, scope: !40)
!185 = !DILocation(line: 81, column: 14, scope: !40)
!186 = !DILocation(line: 82, column: 16, scope: !40)
!187 = !DILocation(line: 82, column: 7, scope: !40)
!188 = !DILocation(line: 81, column: 10, scope: !40)
!189 = !DILocation(line: 81, column: 8, scope: !40)
!190 = !DILocation(line: 83, column: 7, scope: !40)
!191 = !DILocation(line: 83, column: 5, scope: !40)
!192 = !DILocation(line: 85, column: 18, scope: !40)
!193 = !DILocation(line: 85, column: 16, scope: !40)
!194 = !DILocation(line: 86, column: 30, scope: !40)
!195 = !DILocation(line: 86, column: 21, scope: !40)
!196 = !DILocation(line: 87, column: 16, scope: !40)
!197 = !DILocation(line: 87, column: 7, scope: !40)
!198 = !DILocation(line: 86, column: 17, scope: !40)
!199 = !DILocation(line: 86, column: 15, scope: !40)
!200 = !DILocation(line: 89, column: 13, scope: !40)
!201 = !DILocation(line: 89, column: 11, scope: !40)
!202 = !DILocation(line: 90, column: 25, scope: !40)
!203 = !DILocation(line: 90, column: 16, scope: !40)
!204 = !DILocation(line: 91, column: 18, scope: !40)
!205 = !DILocation(line: 91, column: 9, scope: !40)
!206 = !DILocation(line: 90, column: 12, scope: !40)
!207 = !DILocation(line: 90, column: 10, scope: !40)
!208 = !DILocation(line: 92, column: 16, scope: !40)
!209 = !DILocation(line: 92, column: 23, scope: !40)
!210 = !DILocation(line: 92, column: 21, scope: !40)
!211 = !DILocation(line: 92, column: 35, scope: !40)
!212 = !DILocation(line: 92, column: 33, scope: !40)
!213 = !DILocation(line: 92, column: 10, scope: !40)
!214 = !DILocation(line: 92, column: 8, scope: !40)
!215 = !DILocation(line: 95, column: 16, scope: !40)
!216 = !DILocation(line: 95, column: 11, scope: !40)
!217 = !DILocation(line: 95, column: 9, scope: !40)
!218 = !DILocation(line: 95, column: 25, scope: !40)
!219 = !DILocation(line: 95, column: 27, scope: !40)
!220 = !DILocation(line: 95, column: 5, scope: !40)
!221 = !DILocation(line: 96, column: 7, scope: !40)
!222 = !DILocation(line: 96, column: 5, scope: !40)
!223 = !DILocation(line: 97, column: 7, scope: !40)
!224 = !DILocation(line: 97, column: 33, scope: !40)
!225 = !DILocation(line: 97, column: 42, scope: !40)
!226 = !DILocation(line: 97, column: 40, scope: !40)
!227 = !DILocation(line: 97, column: 57, scope: !40)
!228 = !DILocation(line: 97, column: 55, scope: !40)
!229 = !DILocation(line: 97, column: 5, scope: !40)
!230 = !DILocation(line: 99, column: 17, scope: !40)
!231 = !DILocation(line: 99, column: 26, scope: !40)
!232 = !DILocation(line: 99, column: 28, scope: !40)
!233 = !DILocation(line: 99, column: 25, scope: !40)
!234 = !DILocation(line: 99, column: 36, scope: !40)
!235 = !DILocation(line: 99, column: 46, scope: !40)
!236 = !DILocation(line: 99, column: 44, scope: !40)
!237 = !DILocation(line: 99, column: 33, scope: !40)
!238 = !DILocation(line: 99, column: 62, scope: !40)
!239 = !DILocation(line: 100, column: 6, scope: !40)
!240 = !DILocation(line: 100, column: 21, scope: !40)
!241 = !DILocation(line: 100, column: 16, scope: !40)
!242 = !DILocation(line: 100, column: 14, scope: !40)
!243 = !DILocation(line: 100, column: 4, scope: !40)
!244 = !DILocation(line: 100, column: 33, scope: !40)
!245 = !DILocation(line: 100, column: 31, scope: !40)
!246 = !DILocation(line: 99, column: 22, scope: !40)
!247 = !DILocation(line: 99, column: 4, scope: !40)
!248 = !DILocation(line: 99, column: 15, scope: !40)
!249 = !DILocation(line: 101, column: 1, scope: !40)
!250 = !DISubprogram(name: "pow", scope: !251, file: !251, line: 140, type: !252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!251 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "8c6e2d0d2bda65bc5ba1ca02b65383b7")
!252 = !DISubroutineType(types: !253)
!253 = !{!29, !29, !29}
!254 = !DISubprogram(name: "BLAS_fpinfo_x", scope: !255, file: !255, line: 2114, type: !256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!255 = !DIFile(filename: "../../src/blas_extended_proto.h", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/testing/test-dot", checksumkind: CSK_MD5, checksum: "9e4b28be948e34f7b50a8c545cc4c756")
!256 = !DISubroutineType(types: !257)
!257 = !{!43, !9, !22}
!258 = !DISubprogram(name: "power", scope: !259, file: !259, line: 7, type: !260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!259 = !DIFile(filename: "../blas_extended_test.h", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/testing/test-dot", checksumkind: CSK_MD5, checksum: "7b663bde701d6512a981d3be7ac440c5")
!260 = !DISubroutineType(types: !261)
!261 = !{!29, !43, !43}
!262 = distinct !DISubprogram(name: "test_BLAS_ddot", scope: !1, file: !1, line: 102, type: !263, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !265)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !43, !3, !29, !29, !29, !29, !29, !29, !32, !43, !32, !43, !29, !29, !32}
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293}
!266 = !DILocalVariable(name: "n", arg: 1, scope: !262, file: !1, line: 102, type: !43)
!267 = !DILocalVariable(name: "conj", arg: 2, scope: !262, file: !1, line: 102, type: !3)
!268 = !DILocalVariable(name: "alpha", arg: 3, scope: !262, file: !1, line: 102, type: !29)
!269 = !DILocalVariable(name: "beta", arg: 4, scope: !262, file: !1, line: 103, type: !29)
!270 = !DILocalVariable(name: "rin", arg: 5, scope: !262, file: !1, line: 103, type: !29)
!271 = !DILocalVariable(name: "rout", arg: 6, scope: !262, file: !1, line: 103, type: !29)
!272 = !DILocalVariable(name: "r_true_l", arg: 7, scope: !262, file: !1, line: 103, type: !29)
!273 = !DILocalVariable(name: "r_true_t", arg: 8, scope: !262, file: !1, line: 104, type: !29)
!274 = !DILocalVariable(name: "x", arg: 9, scope: !262, file: !1, line: 104, type: !32)
!275 = !DILocalVariable(name: "incx", arg: 10, scope: !262, file: !1, line: 104, type: !43)
!276 = !DILocalVariable(name: "y", arg: 11, scope: !262, file: !1, line: 104, type: !32)
!277 = !DILocalVariable(name: "incy", arg: 12, scope: !262, file: !1, line: 104, type: !43)
!278 = !DILocalVariable(name: "eps_int", arg: 13, scope: !262, file: !1, line: 105, type: !29)
!279 = !DILocalVariable(name: "un_int", arg: 14, scope: !262, file: !1, line: 105, type: !29)
!280 = !DILocalVariable(name: "test_ratio", arg: 15, scope: !262, file: !1, line: 105, type: !32)
!281 = !DILocalVariable(name: "i", scope: !262, file: !1, line: 151, type: !43)
!282 = !DILocalVariable(name: "ix", scope: !262, file: !1, line: 151, type: !43)
!283 = !DILocalVariable(name: "iy", scope: !262, file: !1, line: 151, type: !43)
!284 = !DILocalVariable(name: "eps_accurate", scope: !262, file: !1, line: 152, type: !29)
!285 = !DILocalVariable(name: "eps_out", scope: !262, file: !1, line: 152, type: !29)
!286 = !DILocalVariable(name: "tmp1", scope: !262, file: !1, line: 152, type: !29)
!287 = !DILocalVariable(name: "S", scope: !262, file: !1, line: 152, type: !29)
!288 = !DILocalVariable(name: "S1", scope: !262, file: !1, line: 152, type: !29)
!289 = !DILocalVariable(name: "S2", scope: !262, file: !1, line: 152, type: !29)
!290 = !DILocalVariable(name: "U", scope: !262, file: !1, line: 152, type: !29)
!291 = !DILocalVariable(name: "un_d", scope: !262, file: !1, line: 153, type: !29)
!292 = !DILocalVariable(name: "un_accurate", scope: !262, file: !1, line: 153, type: !29)
!293 = !DILocalVariable(name: "un_out", scope: !262, file: !1, line: 153, type: !29)
!294 = !DILocation(line: 102, column: 25, scope: !262)
!295 = !DILocation(line: 102, column: 48, scope: !262)
!296 = !DILocation(line: 102, column: 61, scope: !262)
!297 = !DILocation(line: 103, column: 14, scope: !262)
!298 = !DILocation(line: 103, column: 27, scope: !262)
!299 = !DILocation(line: 103, column: 39, scope: !262)
!300 = !DILocation(line: 103, column: 52, scope: !262)
!301 = !DILocation(line: 104, column: 14, scope: !262)
!302 = !DILocation(line: 104, column: 32, scope: !262)
!303 = !DILocation(line: 104, column: 39, scope: !262)
!304 = !DILocation(line: 104, column: 53, scope: !262)
!305 = !DILocation(line: 104, column: 60, scope: !262)
!306 = !DILocation(line: 105, column: 14, scope: !262)
!307 = !DILocation(line: 105, column: 30, scope: !262)
!308 = !DILocation(line: 105, column: 46, scope: !262)
!309 = !DILocation(line: 151, column: 3, scope: !262)
!310 = !DILocation(line: 151, column: 7, scope: !262)
!311 = !DILocation(line: 151, column: 10, scope: !262)
!312 = !DILocation(line: 151, column: 14, scope: !262)
!313 = !DILocation(line: 152, column: 3, scope: !262)
!314 = !DILocation(line: 152, column: 10, scope: !262)
!315 = !DILocation(line: 152, column: 24, scope: !262)
!316 = !DILocation(line: 152, column: 33, scope: !262)
!317 = !DILocation(line: 152, column: 39, scope: !262)
!318 = !DILocation(line: 152, column: 42, scope: !262)
!319 = !DILocation(line: 152, column: 46, scope: !262)
!320 = !DILocation(line: 152, column: 50, scope: !262)
!321 = !DILocation(line: 153, column: 3, scope: !262)
!322 = !DILocation(line: 153, column: 10, scope: !262)
!323 = !DILocation(line: 153, column: 16, scope: !262)
!324 = !DILocation(line: 153, column: 29, scope: !262)
!325 = !DILocation(line: 156, column: 6, scope: !262)
!326 = !DILocation(line: 157, column: 6, scope: !262)
!327 = !DILocation(line: 158, column: 7, scope: !328)
!328 = distinct !DILexicalBlock(scope: !262, file: !1, line: 158, column: 7)
!329 = !DILocation(line: 158, column: 12, scope: !328)
!330 = !DILocation(line: 158, column: 7, scope: !262)
!331 = !DILocation(line: 159, column: 12, scope: !328)
!332 = !DILocation(line: 159, column: 14, scope: !328)
!333 = !DILocation(line: 159, column: 10, scope: !328)
!334 = !DILocation(line: 159, column: 21, scope: !328)
!335 = !DILocation(line: 159, column: 19, scope: !328)
!336 = !DILocation(line: 159, column: 8, scope: !328)
!337 = !DILocation(line: 159, column: 5, scope: !328)
!338 = !DILocation(line: 160, column: 7, scope: !339)
!339 = distinct !DILexicalBlock(scope: !262, file: !1, line: 160, column: 7)
!340 = !DILocation(line: 160, column: 12, scope: !339)
!341 = !DILocation(line: 160, column: 7, scope: !262)
!342 = !DILocation(line: 161, column: 12, scope: !339)
!343 = !DILocation(line: 161, column: 14, scope: !339)
!344 = !DILocation(line: 161, column: 10, scope: !339)
!345 = !DILocation(line: 161, column: 21, scope: !339)
!346 = !DILocation(line: 161, column: 19, scope: !339)
!347 = !DILocation(line: 161, column: 8, scope: !339)
!348 = !DILocation(line: 161, column: 5, scope: !339)
!349 = !DILocation(line: 164, column: 15, scope: !262)
!350 = !DILocation(line: 164, column: 10, scope: !262)
!351 = !DILocation(line: 164, column: 5, scope: !262)
!352 = !DILocation(line: 165, column: 10, scope: !353)
!353 = distinct !DILexicalBlock(scope: !262, file: !1, line: 165, column: 3)
!354 = !DILocation(line: 165, column: 8, scope: !353)
!355 = !DILocation(line: 165, column: 15, scope: !356)
!356 = distinct !DILexicalBlock(scope: !353, file: !1, line: 165, column: 3)
!357 = !DILocation(line: 165, column: 19, scope: !356)
!358 = !DILocation(line: 165, column: 17, scope: !356)
!359 = !DILocation(line: 165, column: 3, scope: !353)
!360 = !DILocation(line: 166, column: 15, scope: !361)
!361 = distinct !DILexicalBlock(scope: !356, file: !1, line: 165, column: 27)
!362 = !DILocation(line: 166, column: 17, scope: !361)
!363 = !DILocation(line: 166, column: 23, scope: !361)
!364 = !DILocation(line: 166, column: 25, scope: !361)
!365 = !DILocation(line: 166, column: 21, scope: !361)
!366 = !DILocation(line: 166, column: 10, scope: !361)
!367 = !DILocation(line: 166, column: 7, scope: !361)
!368 = !DILocation(line: 167, column: 16, scope: !361)
!369 = !DILocation(line: 167, column: 18, scope: !361)
!370 = !DILocation(line: 167, column: 11, scope: !361)
!371 = !DILocation(line: 167, column: 8, scope: !361)
!372 = !DILocation(line: 168, column: 16, scope: !361)
!373 = !DILocation(line: 168, column: 18, scope: !361)
!374 = !DILocation(line: 168, column: 11, scope: !361)
!375 = !DILocation(line: 168, column: 8, scope: !361)
!376 = !DILocation(line: 169, column: 11, scope: !361)
!377 = !DILocation(line: 169, column: 8, scope: !361)
!378 = !DILocation(line: 170, column: 11, scope: !361)
!379 = !DILocation(line: 170, column: 8, scope: !361)
!380 = !DILocation(line: 171, column: 3, scope: !361)
!381 = !DILocation(line: 165, column: 22, scope: !356)
!382 = !DILocation(line: 165, column: 3, scope: !356)
!383 = distinct !{!383, !359, !384, !175}
!384 = !DILocation(line: 171, column: 3, scope: !353)
!385 = !DILocation(line: 172, column: 13, scope: !262)
!386 = !DILocation(line: 172, column: 8, scope: !262)
!387 = !DILocation(line: 172, column: 5, scope: !262)
!388 = !DILocation(line: 173, column: 13, scope: !262)
!389 = !DILocation(line: 173, column: 20, scope: !262)
!390 = !DILocation(line: 173, column: 18, scope: !262)
!391 = !DILocation(line: 173, column: 8, scope: !262)
!392 = !DILocation(line: 173, column: 5, scope: !262)
!393 = !DILocation(line: 175, column: 23, scope: !262)
!394 = !DILocation(line: 175, column: 14, scope: !262)
!395 = !DILocation(line: 176, column: 16, scope: !262)
!396 = !DILocation(line: 176, column: 7, scope: !262)
!397 = !DILocation(line: 175, column: 10, scope: !262)
!398 = !DILocation(line: 175, column: 8, scope: !262)
!399 = !DILocation(line: 177, column: 7, scope: !262)
!400 = !DILocation(line: 177, column: 5, scope: !262)
!401 = !DILocation(line: 179, column: 18, scope: !262)
!402 = !DILocation(line: 179, column: 16, scope: !262)
!403 = !DILocation(line: 180, column: 30, scope: !262)
!404 = !DILocation(line: 180, column: 21, scope: !262)
!405 = !DILocation(line: 181, column: 16, scope: !262)
!406 = !DILocation(line: 181, column: 7, scope: !262)
!407 = !DILocation(line: 180, column: 17, scope: !262)
!408 = !DILocation(line: 180, column: 15, scope: !262)
!409 = !DILocation(line: 183, column: 13, scope: !262)
!410 = !DILocation(line: 183, column: 11, scope: !262)
!411 = !DILocation(line: 184, column: 25, scope: !262)
!412 = !DILocation(line: 184, column: 16, scope: !262)
!413 = !DILocation(line: 185, column: 18, scope: !262)
!414 = !DILocation(line: 185, column: 9, scope: !262)
!415 = !DILocation(line: 184, column: 12, scope: !262)
!416 = !DILocation(line: 184, column: 10, scope: !262)
!417 = !DILocation(line: 186, column: 16, scope: !262)
!418 = !DILocation(line: 186, column: 23, scope: !262)
!419 = !DILocation(line: 186, column: 21, scope: !262)
!420 = !DILocation(line: 186, column: 35, scope: !262)
!421 = !DILocation(line: 186, column: 33, scope: !262)
!422 = !DILocation(line: 186, column: 10, scope: !262)
!423 = !DILocation(line: 186, column: 8, scope: !262)
!424 = !DILocation(line: 189, column: 16, scope: !262)
!425 = !DILocation(line: 189, column: 11, scope: !262)
!426 = !DILocation(line: 189, column: 9, scope: !262)
!427 = !DILocation(line: 189, column: 25, scope: !262)
!428 = !DILocation(line: 189, column: 27, scope: !262)
!429 = !DILocation(line: 189, column: 5, scope: !262)
!430 = !DILocation(line: 190, column: 7, scope: !262)
!431 = !DILocation(line: 190, column: 5, scope: !262)
!432 = !DILocation(line: 191, column: 7, scope: !262)
!433 = !DILocation(line: 191, column: 33, scope: !262)
!434 = !DILocation(line: 191, column: 42, scope: !262)
!435 = !DILocation(line: 191, column: 40, scope: !262)
!436 = !DILocation(line: 191, column: 57, scope: !262)
!437 = !DILocation(line: 191, column: 55, scope: !262)
!438 = !DILocation(line: 191, column: 5, scope: !262)
!439 = !DILocation(line: 193, column: 17, scope: !262)
!440 = !DILocation(line: 193, column: 26, scope: !262)
!441 = !DILocation(line: 193, column: 28, scope: !262)
!442 = !DILocation(line: 193, column: 25, scope: !262)
!443 = !DILocation(line: 193, column: 36, scope: !262)
!444 = !DILocation(line: 193, column: 46, scope: !262)
!445 = !DILocation(line: 193, column: 44, scope: !262)
!446 = !DILocation(line: 193, column: 33, scope: !262)
!447 = !DILocation(line: 193, column: 62, scope: !262)
!448 = !DILocation(line: 194, column: 6, scope: !262)
!449 = !DILocation(line: 194, column: 21, scope: !262)
!450 = !DILocation(line: 194, column: 16, scope: !262)
!451 = !DILocation(line: 194, column: 14, scope: !262)
!452 = !DILocation(line: 194, column: 4, scope: !262)
!453 = !DILocation(line: 194, column: 33, scope: !262)
!454 = !DILocation(line: 194, column: 31, scope: !262)
!455 = !DILocation(line: 193, column: 22, scope: !262)
!456 = !DILocation(line: 193, column: 4, scope: !262)
!457 = !DILocation(line: 193, column: 15, scope: !262)
!458 = !DILocation(line: 195, column: 1, scope: !262)
!459 = distinct !DISubprogram(name: "test_BLAS_cdot", scope: !1, file: !1, line: 196, type: !460, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !465)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !43, !3, !462, !462, !462, !462, !32, !32, !464, !43, !464, !43, !29, !29, !32}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!465 = !{!466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !507}
!466 = !DILocalVariable(name: "n", arg: 1, scope: !459, file: !1, line: 196, type: !43)
!467 = !DILocalVariable(name: "conj", arg: 2, scope: !459, file: !1, line: 196, type: !3)
!468 = !DILocalVariable(name: "alpha", arg: 3, scope: !459, file: !1, line: 196, type: !462)
!469 = !DILocalVariable(name: "beta", arg: 4, scope: !459, file: !1, line: 197, type: !462)
!470 = !DILocalVariable(name: "rin", arg: 5, scope: !459, file: !1, line: 197, type: !462)
!471 = !DILocalVariable(name: "rout", arg: 6, scope: !459, file: !1, line: 197, type: !462)
!472 = !DILocalVariable(name: "r_true_l", arg: 7, scope: !459, file: !1, line: 198, type: !32)
!473 = !DILocalVariable(name: "r_true_t", arg: 8, scope: !459, file: !1, line: 198, type: !32)
!474 = !DILocalVariable(name: "x", arg: 9, scope: !459, file: !1, line: 198, type: !464)
!475 = !DILocalVariable(name: "incx", arg: 10, scope: !459, file: !1, line: 198, type: !43)
!476 = !DILocalVariable(name: "y", arg: 11, scope: !459, file: !1, line: 199, type: !464)
!477 = !DILocalVariable(name: "incy", arg: 12, scope: !459, file: !1, line: 199, type: !43)
!478 = !DILocalVariable(name: "eps_int", arg: 13, scope: !459, file: !1, line: 199, type: !29)
!479 = !DILocalVariable(name: "un_int", arg: 14, scope: !459, file: !1, line: 199, type: !29)
!480 = !DILocalVariable(name: "test_ratio", arg: 15, scope: !459, file: !1, line: 200, type: !32)
!481 = !DILocalVariable(name: "i", scope: !459, file: !1, line: 246, type: !43)
!482 = !DILocalVariable(name: "ix", scope: !459, file: !1, line: 246, type: !43)
!483 = !DILocalVariable(name: "iy", scope: !459, file: !1, line: 246, type: !43)
!484 = !DILocalVariable(name: "eps_accurate", scope: !459, file: !1, line: 247, type: !29)
!485 = !DILocalVariable(name: "eps_out", scope: !459, file: !1, line: 247, type: !29)
!486 = !DILocalVariable(name: "tmp1", scope: !459, file: !1, line: 247, type: !29)
!487 = !DILocalVariable(name: "S", scope: !459, file: !1, line: 247, type: !29)
!488 = !DILocalVariable(name: "S1", scope: !459, file: !1, line: 247, type: !29)
!489 = !DILocalVariable(name: "S2", scope: !459, file: !1, line: 247, type: !29)
!490 = !DILocalVariable(name: "U", scope: !459, file: !1, line: 247, type: !29)
!491 = !DILocalVariable(name: "prod", scope: !459, file: !1, line: 247, type: !492)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 128, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 2)
!495 = !DILocalVariable(name: "tmp", scope: !459, file: !1, line: 247, type: !492)
!496 = !DILocalVariable(name: "un_d", scope: !459, file: !1, line: 248, type: !29)
!497 = !DILocalVariable(name: "un_accurate", scope: !459, file: !1, line: 248, type: !29)
!498 = !DILocalVariable(name: "un_out", scope: !459, file: !1, line: 248, type: !29)
!499 = !DILocalVariable(name: "x_i", scope: !459, file: !1, line: 249, type: !30)
!500 = !DILocalVariable(name: "y_i", scope: !459, file: !1, line: 250, type: !30)
!501 = !DILocalVariable(name: "alpha_i", scope: !459, file: !1, line: 251, type: !30)
!502 = !DILocalVariable(name: "beta_i", scope: !459, file: !1, line: 252, type: !30)
!503 = !DILocalVariable(name: "rin_i", scope: !459, file: !1, line: 253, type: !30)
!504 = !DILocalVariable(name: "rout_i", scope: !459, file: !1, line: 254, type: !30)
!505 = !DILocalVariable(name: "x_ii", scope: !459, file: !1, line: 255, type: !506)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !493)
!507 = !DILocalVariable(name: "y_ii", scope: !459, file: !1, line: 256, type: !506)
!508 = !DILocation(line: 196, column: 25, scope: !459)
!509 = !DILocation(line: 196, column: 48, scope: !459)
!510 = !DILocation(line: 196, column: 66, scope: !459)
!511 = !DILocation(line: 197, column: 19, scope: !459)
!512 = !DILocation(line: 197, column: 37, scope: !459)
!513 = !DILocation(line: 197, column: 54, scope: !459)
!514 = !DILocation(line: 198, column: 15, scope: !459)
!515 = !DILocation(line: 198, column: 33, scope: !459)
!516 = !DILocation(line: 198, column: 49, scope: !459)
!517 = !DILocation(line: 198, column: 56, scope: !459)
!518 = !DILocation(line: 199, column: 13, scope: !459)
!519 = !DILocation(line: 199, column: 20, scope: !459)
!520 = !DILocation(line: 199, column: 33, scope: !459)
!521 = !DILocation(line: 199, column: 49, scope: !459)
!522 = !DILocation(line: 200, column: 15, scope: !459)
!523 = !DILocation(line: 246, column: 3, scope: !459)
!524 = !DILocation(line: 246, column: 7, scope: !459)
!525 = !DILocation(line: 246, column: 10, scope: !459)
!526 = !DILocation(line: 246, column: 14, scope: !459)
!527 = !DILocation(line: 247, column: 3, scope: !459)
!528 = !DILocation(line: 247, column: 10, scope: !459)
!529 = !DILocation(line: 247, column: 24, scope: !459)
!530 = !DILocation(line: 247, column: 33, scope: !459)
!531 = !DILocation(line: 247, column: 39, scope: !459)
!532 = !DILocation(line: 247, column: 42, scope: !459)
!533 = !DILocation(line: 247, column: 46, scope: !459)
!534 = !DILocation(line: 247, column: 50, scope: !459)
!535 = !DILocation(line: 247, column: 53, scope: !459)
!536 = !DILocation(line: 247, column: 62, scope: !459)
!537 = !DILocation(line: 248, column: 3, scope: !459)
!538 = !DILocation(line: 248, column: 10, scope: !459)
!539 = !DILocation(line: 248, column: 16, scope: !459)
!540 = !DILocation(line: 248, column: 29, scope: !459)
!541 = !DILocation(line: 249, column: 3, scope: !459)
!542 = !DILocation(line: 249, column: 10, scope: !459)
!543 = !DILocation(line: 249, column: 26, scope: !459)
!544 = !DILocation(line: 250, column: 3, scope: !459)
!545 = !DILocation(line: 250, column: 10, scope: !459)
!546 = !DILocation(line: 250, column: 26, scope: !459)
!547 = !DILocation(line: 251, column: 3, scope: !459)
!548 = !DILocation(line: 251, column: 10, scope: !459)
!549 = !DILocation(line: 251, column: 30, scope: !459)
!550 = !DILocation(line: 252, column: 3, scope: !459)
!551 = !DILocation(line: 252, column: 10, scope: !459)
!552 = !DILocation(line: 252, column: 29, scope: !459)
!553 = !DILocation(line: 253, column: 3, scope: !459)
!554 = !DILocation(line: 253, column: 10, scope: !459)
!555 = !DILocation(line: 253, column: 28, scope: !459)
!556 = !DILocation(line: 254, column: 3, scope: !459)
!557 = !DILocation(line: 254, column: 10, scope: !459)
!558 = !DILocation(line: 254, column: 29, scope: !459)
!559 = !DILocation(line: 255, column: 3, scope: !459)
!560 = !DILocation(line: 255, column: 9, scope: !459)
!561 = !DILocation(line: 256, column: 3, scope: !459)
!562 = !DILocation(line: 256, column: 9, scope: !459)
!563 = !DILocation(line: 259, column: 8, scope: !459)
!564 = !DILocation(line: 260, column: 8, scope: !459)
!565 = !DILocation(line: 261, column: 6, scope: !459)
!566 = !DILocation(line: 262, column: 6, scope: !459)
!567 = !DILocation(line: 263, column: 7, scope: !568)
!568 = distinct !DILexicalBlock(scope: !459, file: !1, line: 263, column: 7)
!569 = !DILocation(line: 263, column: 12, scope: !568)
!570 = !DILocation(line: 263, column: 7, scope: !459)
!571 = !DILocation(line: 264, column: 12, scope: !568)
!572 = !DILocation(line: 264, column: 14, scope: !568)
!573 = !DILocation(line: 264, column: 10, scope: !568)
!574 = !DILocation(line: 264, column: 21, scope: !568)
!575 = !DILocation(line: 264, column: 19, scope: !568)
!576 = !DILocation(line: 264, column: 8, scope: !568)
!577 = !DILocation(line: 264, column: 5, scope: !568)
!578 = !DILocation(line: 265, column: 7, scope: !579)
!579 = distinct !DILexicalBlock(scope: !459, file: !1, line: 265, column: 7)
!580 = !DILocation(line: 265, column: 12, scope: !579)
!581 = !DILocation(line: 265, column: 7, scope: !459)
!582 = !DILocation(line: 266, column: 12, scope: !579)
!583 = !DILocation(line: 266, column: 14, scope: !579)
!584 = !DILocation(line: 266, column: 10, scope: !579)
!585 = !DILocation(line: 266, column: 21, scope: !579)
!586 = !DILocation(line: 266, column: 19, scope: !579)
!587 = !DILocation(line: 266, column: 8, scope: !579)
!588 = !DILocation(line: 266, column: 5, scope: !579)
!589 = !DILocation(line: 269, column: 15, scope: !459)
!590 = !DILocation(line: 269, column: 10, scope: !459)
!591 = !DILocation(line: 269, column: 5, scope: !459)
!592 = !DILocation(line: 270, column: 10, scope: !593)
!593 = distinct !DILexicalBlock(scope: !459, file: !1, line: 270, column: 3)
!594 = !DILocation(line: 270, column: 8, scope: !593)
!595 = !DILocation(line: 270, column: 15, scope: !596)
!596 = distinct !DILexicalBlock(scope: !593, file: !1, line: 270, column: 3)
!597 = !DILocation(line: 270, column: 19, scope: !596)
!598 = !DILocation(line: 270, column: 17, scope: !596)
!599 = !DILocation(line: 270, column: 3, scope: !593)
!600 = !DILocation(line: 271, column: 15, scope: !601)
!601 = distinct !DILexicalBlock(scope: !596, file: !1, line: 270, column: 27)
!602 = !DILocation(line: 271, column: 19, scope: !601)
!603 = !DILocation(line: 271, column: 5, scope: !601)
!604 = !DILocation(line: 271, column: 13, scope: !601)
!605 = !DILocation(line: 272, column: 15, scope: !601)
!606 = !DILocation(line: 272, column: 19, scope: !601)
!607 = !DILocation(line: 272, column: 22, scope: !601)
!608 = !DILocation(line: 272, column: 5, scope: !601)
!609 = !DILocation(line: 272, column: 13, scope: !601)
!610 = !DILocation(line: 273, column: 15, scope: !601)
!611 = !DILocation(line: 273, column: 19, scope: !601)
!612 = !DILocation(line: 273, column: 5, scope: !601)
!613 = !DILocation(line: 273, column: 13, scope: !601)
!614 = !DILocation(line: 274, column: 15, scope: !601)
!615 = !DILocation(line: 274, column: 19, scope: !601)
!616 = !DILocation(line: 274, column: 22, scope: !601)
!617 = !DILocation(line: 274, column: 5, scope: !601)
!618 = !DILocation(line: 274, column: 13, scope: !601)
!619 = !DILocation(line: 275, column: 9, scope: !620)
!620 = distinct !DILexicalBlock(scope: !601, file: !1, line: 275, column: 9)
!621 = !DILocation(line: 275, column: 14, scope: !620)
!622 = !DILocation(line: 275, column: 9, scope: !601)
!623 = !DILocation(line: 276, column: 18, scope: !624)
!624 = distinct !DILexicalBlock(scope: !620, file: !1, line: 275, column: 28)
!625 = !DILocation(line: 276, column: 17, scope: !624)
!626 = !DILocation(line: 276, column: 7, scope: !624)
!627 = !DILocation(line: 276, column: 15, scope: !624)
!628 = !DILocation(line: 277, column: 5, scope: !624)
!629 = !DILocation(line: 278, column: 16, scope: !601)
!630 = !DILocation(line: 278, column: 26, scope: !601)
!631 = !DILocation(line: 278, column: 36, scope: !601)
!632 = !DILocation(line: 278, column: 46, scope: !601)
!633 = !DILocation(line: 278, column: 44, scope: !601)
!634 = !DILocation(line: 278, column: 34, scope: !601)
!635 = !DILocation(line: 278, column: 11, scope: !601)
!636 = !DILocation(line: 278, column: 8, scope: !601)
!637 = !DILocation(line: 279, column: 16, scope: !601)
!638 = !DILocation(line: 279, column: 26, scope: !601)
!639 = !DILocation(line: 279, column: 36, scope: !601)
!640 = !DILocation(line: 279, column: 46, scope: !601)
!641 = !DILocation(line: 279, column: 44, scope: !601)
!642 = !DILocation(line: 279, column: 34, scope: !601)
!643 = !DILocation(line: 279, column: 11, scope: !601)
!644 = !DILocation(line: 279, column: 8, scope: !601)
!645 = !DILocation(line: 280, column: 17, scope: !646)
!646 = distinct !DILexicalBlock(scope: !601, file: !1, line: 279, column: 56)
!647 = !DILocation(line: 280, column: 27, scope: !646)
!648 = !DILocation(line: 280, column: 37, scope: !646)
!649 = !DILocation(line: 280, column: 47, scope: !646)
!650 = !DILocation(line: 280, column: 45, scope: !646)
!651 = !DILocation(line: 280, column: 35, scope: !646)
!652 = !DILocation(line: 280, column: 7, scope: !646)
!653 = !DILocation(line: 280, column: 15, scope: !646)
!654 = !DILocation(line: 281, column: 17, scope: !646)
!655 = !DILocation(line: 281, column: 27, scope: !646)
!656 = !DILocation(line: 281, column: 37, scope: !646)
!657 = !DILocation(line: 281, column: 47, scope: !646)
!658 = !DILocation(line: 281, column: 45, scope: !646)
!659 = !DILocation(line: 281, column: 35, scope: !646)
!660 = !DILocation(line: 281, column: 7, scope: !646)
!661 = !DILocation(line: 281, column: 15, scope: !646)
!662 = !DILocation(line: 284, column: 15, scope: !601)
!663 = !DILocation(line: 284, column: 25, scope: !601)
!664 = !DILocation(line: 284, column: 35, scope: !601)
!665 = !DILocation(line: 284, column: 45, scope: !601)
!666 = !DILocation(line: 284, column: 43, scope: !601)
!667 = !DILocation(line: 284, column: 33, scope: !601)
!668 = !DILocation(line: 284, column: 10, scope: !601)
!669 = !DILocation(line: 284, column: 7, scope: !601)
!670 = !DILocation(line: 285, column: 11, scope: !601)
!671 = !DILocation(line: 285, column: 8, scope: !601)
!672 = !DILocation(line: 286, column: 11, scope: !601)
!673 = !DILocation(line: 286, column: 8, scope: !601)
!674 = !DILocation(line: 287, column: 3, scope: !601)
!675 = !DILocation(line: 270, column: 22, scope: !596)
!676 = !DILocation(line: 270, column: 3, scope: !596)
!677 = distinct !{!677, !599, !678, !175}
!678 = !DILocation(line: 287, column: 3, scope: !593)
!679 = !DILocation(line: 288, column: 13, scope: !459)
!680 = !DILocation(line: 288, column: 26, scope: !459)
!681 = !DILocation(line: 288, column: 39, scope: !459)
!682 = !DILocation(line: 288, column: 52, scope: !459)
!683 = !DILocation(line: 288, column: 50, scope: !459)
!684 = !DILocation(line: 288, column: 37, scope: !459)
!685 = !DILocation(line: 288, column: 8, scope: !459)
!686 = !DILocation(line: 288, column: 5, scope: !459)
!687 = !DILocation(line: 290, column: 15, scope: !688)
!688 = distinct !DILexicalBlock(scope: !459, file: !1, line: 289, column: 3)
!689 = !DILocation(line: 290, column: 27, scope: !688)
!690 = !DILocation(line: 290, column: 38, scope: !688)
!691 = !DILocation(line: 290, column: 50, scope: !688)
!692 = !DILocation(line: 290, column: 48, scope: !688)
!693 = !DILocation(line: 290, column: 36, scope: !688)
!694 = !DILocation(line: 290, column: 5, scope: !688)
!695 = !DILocation(line: 290, column: 13, scope: !688)
!696 = !DILocation(line: 291, column: 15, scope: !688)
!697 = !DILocation(line: 291, column: 27, scope: !688)
!698 = !DILocation(line: 291, column: 38, scope: !688)
!699 = !DILocation(line: 291, column: 50, scope: !688)
!700 = !DILocation(line: 291, column: 48, scope: !688)
!701 = !DILocation(line: 291, column: 36, scope: !688)
!702 = !DILocation(line: 291, column: 5, scope: !688)
!703 = !DILocation(line: 291, column: 13, scope: !688)
!704 = !DILocation(line: 294, column: 13, scope: !459)
!705 = !DILocation(line: 294, column: 23, scope: !459)
!706 = !DILocation(line: 294, column: 33, scope: !459)
!707 = !DILocation(line: 294, column: 43, scope: !459)
!708 = !DILocation(line: 294, column: 41, scope: !459)
!709 = !DILocation(line: 294, column: 31, scope: !459)
!710 = !DILocation(line: 294, column: 8, scope: !459)
!711 = !DILocation(line: 294, column: 5, scope: !459)
!712 = !DILocation(line: 296, column: 23, scope: !459)
!713 = !DILocation(line: 296, column: 14, scope: !459)
!714 = !DILocation(line: 297, column: 16, scope: !459)
!715 = !DILocation(line: 297, column: 7, scope: !459)
!716 = !DILocation(line: 296, column: 10, scope: !459)
!717 = !DILocation(line: 296, column: 8, scope: !459)
!718 = !DILocation(line: 298, column: 7, scope: !459)
!719 = !DILocation(line: 298, column: 5, scope: !459)
!720 = !DILocation(line: 300, column: 18, scope: !459)
!721 = !DILocation(line: 300, column: 16, scope: !459)
!722 = !DILocation(line: 301, column: 30, scope: !459)
!723 = !DILocation(line: 301, column: 21, scope: !459)
!724 = !DILocation(line: 302, column: 16, scope: !459)
!725 = !DILocation(line: 302, column: 7, scope: !459)
!726 = !DILocation(line: 301, column: 17, scope: !459)
!727 = !DILocation(line: 301, column: 15, scope: !459)
!728 = !DILocation(line: 303, column: 13, scope: !459)
!729 = !DILocation(line: 303, column: 11, scope: !459)
!730 = !DILocation(line: 304, column: 25, scope: !459)
!731 = !DILocation(line: 304, column: 16, scope: !459)
!732 = !DILocation(line: 305, column: 18, scope: !459)
!733 = !DILocation(line: 305, column: 9, scope: !459)
!734 = !DILocation(line: 304, column: 12, scope: !459)
!735 = !DILocation(line: 304, column: 10, scope: !459)
!736 = !DILocation(line: 306, column: 13, scope: !459)
!737 = !DILocation(line: 306, column: 25, scope: !459)
!738 = !DILocation(line: 306, column: 23, scope: !459)
!739 = !DILocation(line: 306, column: 40, scope: !459)
!740 = !DILocation(line: 306, column: 38, scope: !459)
!741 = !DILocation(line: 306, column: 3, scope: !459)
!742 = !DILocation(line: 306, column: 10, scope: !459)
!743 = !DILocation(line: 307, column: 13, scope: !459)
!744 = !DILocation(line: 307, column: 25, scope: !459)
!745 = !DILocation(line: 307, column: 23, scope: !459)
!746 = !DILocation(line: 307, column: 40, scope: !459)
!747 = !DILocation(line: 307, column: 38, scope: !459)
!748 = !DILocation(line: 307, column: 3, scope: !459)
!749 = !DILocation(line: 307, column: 10, scope: !459)
!750 = !DILocation(line: 308, column: 15, scope: !459)
!751 = !DILocation(line: 308, column: 24, scope: !459)
!752 = !DILocation(line: 308, column: 33, scope: !459)
!753 = !DILocation(line: 308, column: 42, scope: !459)
!754 = !DILocation(line: 308, column: 40, scope: !459)
!755 = !DILocation(line: 308, column: 31, scope: !459)
!756 = !DILocation(line: 308, column: 10, scope: !459)
!757 = !DILocation(line: 308, column: 8, scope: !459)
!758 = !DILocation(line: 311, column: 16, scope: !459)
!759 = !DILocation(line: 311, column: 29, scope: !459)
!760 = !DILocation(line: 311, column: 42, scope: !459)
!761 = !DILocation(line: 311, column: 55, scope: !459)
!762 = !DILocation(line: 311, column: 53, scope: !459)
!763 = !DILocation(line: 311, column: 40, scope: !459)
!764 = !DILocation(line: 311, column: 11, scope: !459)
!765 = !DILocation(line: 311, column: 9, scope: !459)
!766 = !DILocation(line: 311, column: 69, scope: !459)
!767 = !DILocation(line: 311, column: 71, scope: !459)
!768 = !DILocation(line: 311, column: 5, scope: !459)
!769 = !DILocation(line: 312, column: 7, scope: !459)
!770 = !DILocation(line: 312, column: 5, scope: !459)
!771 = !DILocation(line: 313, column: 7, scope: !459)
!772 = !DILocation(line: 313, column: 33, scope: !459)
!773 = !DILocation(line: 313, column: 42, scope: !459)
!774 = !DILocation(line: 313, column: 40, scope: !459)
!775 = !DILocation(line: 313, column: 57, scope: !459)
!776 = !DILocation(line: 313, column: 55, scope: !459)
!777 = !DILocation(line: 313, column: 5, scope: !459)
!778 = !DILocation(line: 314, column: 12, scope: !459)
!779 = !DILocation(line: 314, column: 10, scope: !459)
!780 = !DILocation(line: 314, column: 5, scope: !459)
!781 = !DILocation(line: 316, column: 17, scope: !459)
!782 = !DILocation(line: 316, column: 29, scope: !459)
!783 = !DILocation(line: 316, column: 27, scope: !459)
!784 = !DILocation(line: 316, column: 41, scope: !459)
!785 = !DILocation(line: 316, column: 43, scope: !459)
!786 = !DILocation(line: 316, column: 40, scope: !459)
!787 = !DILocation(line: 316, column: 38, scope: !459)
!788 = !DILocation(line: 316, column: 51, scope: !459)
!789 = !DILocation(line: 316, column: 61, scope: !459)
!790 = !DILocation(line: 316, column: 59, scope: !459)
!791 = !DILocation(line: 316, column: 48, scope: !459)
!792 = !DILocation(line: 316, column: 77, scope: !459)
!793 = !DILocation(line: 318, column: 4, scope: !459)
!794 = !DILocation(line: 318, column: 15, scope: !459)
!795 = !DILocation(line: 318, column: 13, scope: !459)
!796 = !DILocation(line: 318, column: 30, scope: !459)
!797 = !DILocation(line: 318, column: 44, scope: !459)
!798 = !DILocation(line: 319, column: 9, scope: !459)
!799 = !DILocation(line: 319, column: 23, scope: !459)
!800 = !DILocation(line: 319, column: 21, scope: !459)
!801 = !DILocation(line: 318, column: 56, scope: !459)
!802 = !DILocation(line: 318, column: 25, scope: !459)
!803 = !DILocation(line: 318, column: 23, scope: !459)
!804 = !DILocation(line: 317, column: 4, scope: !459)
!805 = !DILocation(line: 320, column: 4, scope: !459)
!806 = !DILocation(line: 319, column: 36, scope: !459)
!807 = !DILocation(line: 316, column: 22, scope: !459)
!808 = !DILocation(line: 316, column: 4, scope: !459)
!809 = !DILocation(line: 316, column: 15, scope: !459)
!810 = !DILocation(line: 321, column: 1, scope: !459)
!811 = !DISubprogram(name: "sqrt", scope: !251, file: !251, line: 143, type: !812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!812 = !DISubroutineType(types: !813)
!813 = !{!29, !29}
!814 = distinct !DISubprogram(name: "test_BLAS_zdot", scope: !1, file: !1, line: 324, type: !460, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !815)
!815 = !{!816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853}
!816 = !DILocalVariable(name: "n", arg: 1, scope: !814, file: !1, line: 324, type: !43)
!817 = !DILocalVariable(name: "conj", arg: 2, scope: !814, file: !1, line: 324, type: !3)
!818 = !DILocalVariable(name: "alpha", arg: 3, scope: !814, file: !1, line: 324, type: !462)
!819 = !DILocalVariable(name: "beta", arg: 4, scope: !814, file: !1, line: 325, type: !462)
!820 = !DILocalVariable(name: "rin", arg: 5, scope: !814, file: !1, line: 325, type: !462)
!821 = !DILocalVariable(name: "rout", arg: 6, scope: !814, file: !1, line: 325, type: !462)
!822 = !DILocalVariable(name: "r_true_l", arg: 7, scope: !814, file: !1, line: 326, type: !32)
!823 = !DILocalVariable(name: "r_true_t", arg: 8, scope: !814, file: !1, line: 326, type: !32)
!824 = !DILocalVariable(name: "x", arg: 9, scope: !814, file: !1, line: 326, type: !464)
!825 = !DILocalVariable(name: "incx", arg: 10, scope: !814, file: !1, line: 326, type: !43)
!826 = !DILocalVariable(name: "y", arg: 11, scope: !814, file: !1, line: 327, type: !464)
!827 = !DILocalVariable(name: "incy", arg: 12, scope: !814, file: !1, line: 327, type: !43)
!828 = !DILocalVariable(name: "eps_int", arg: 13, scope: !814, file: !1, line: 327, type: !29)
!829 = !DILocalVariable(name: "un_int", arg: 14, scope: !814, file: !1, line: 327, type: !29)
!830 = !DILocalVariable(name: "test_ratio", arg: 15, scope: !814, file: !1, line: 328, type: !32)
!831 = !DILocalVariable(name: "i", scope: !814, file: !1, line: 374, type: !43)
!832 = !DILocalVariable(name: "ix", scope: !814, file: !1, line: 374, type: !43)
!833 = !DILocalVariable(name: "iy", scope: !814, file: !1, line: 374, type: !43)
!834 = !DILocalVariable(name: "eps_accurate", scope: !814, file: !1, line: 375, type: !29)
!835 = !DILocalVariable(name: "eps_out", scope: !814, file: !1, line: 375, type: !29)
!836 = !DILocalVariable(name: "tmp1", scope: !814, file: !1, line: 375, type: !29)
!837 = !DILocalVariable(name: "S", scope: !814, file: !1, line: 375, type: !29)
!838 = !DILocalVariable(name: "S1", scope: !814, file: !1, line: 375, type: !29)
!839 = !DILocalVariable(name: "S2", scope: !814, file: !1, line: 375, type: !29)
!840 = !DILocalVariable(name: "U", scope: !814, file: !1, line: 375, type: !29)
!841 = !DILocalVariable(name: "prod", scope: !814, file: !1, line: 375, type: !492)
!842 = !DILocalVariable(name: "tmp", scope: !814, file: !1, line: 375, type: !492)
!843 = !DILocalVariable(name: "un_d", scope: !814, file: !1, line: 376, type: !29)
!844 = !DILocalVariable(name: "un_accurate", scope: !814, file: !1, line: 376, type: !29)
!845 = !DILocalVariable(name: "un_out", scope: !814, file: !1, line: 376, type: !29)
!846 = !DILocalVariable(name: "x_i", scope: !814, file: !1, line: 377, type: !32)
!847 = !DILocalVariable(name: "y_i", scope: !814, file: !1, line: 378, type: !32)
!848 = !DILocalVariable(name: "alpha_i", scope: !814, file: !1, line: 379, type: !32)
!849 = !DILocalVariable(name: "beta_i", scope: !814, file: !1, line: 380, type: !32)
!850 = !DILocalVariable(name: "rin_i", scope: !814, file: !1, line: 381, type: !32)
!851 = !DILocalVariable(name: "rout_i", scope: !814, file: !1, line: 382, type: !32)
!852 = !DILocalVariable(name: "x_ii", scope: !814, file: !1, line: 383, type: !492)
!853 = !DILocalVariable(name: "y_ii", scope: !814, file: !1, line: 384, type: !492)
!854 = !DILocation(line: 324, column: 25, scope: !814)
!855 = !DILocation(line: 324, column: 48, scope: !814)
!856 = !DILocation(line: 324, column: 66, scope: !814)
!857 = !DILocation(line: 325, column: 19, scope: !814)
!858 = !DILocation(line: 325, column: 37, scope: !814)
!859 = !DILocation(line: 325, column: 54, scope: !814)
!860 = !DILocation(line: 326, column: 15, scope: !814)
!861 = !DILocation(line: 326, column: 33, scope: !814)
!862 = !DILocation(line: 326, column: 49, scope: !814)
!863 = !DILocation(line: 326, column: 56, scope: !814)
!864 = !DILocation(line: 327, column: 13, scope: !814)
!865 = !DILocation(line: 327, column: 20, scope: !814)
!866 = !DILocation(line: 327, column: 33, scope: !814)
!867 = !DILocation(line: 327, column: 49, scope: !814)
!868 = !DILocation(line: 328, column: 15, scope: !814)
!869 = !DILocation(line: 374, column: 3, scope: !814)
!870 = !DILocation(line: 374, column: 7, scope: !814)
!871 = !DILocation(line: 374, column: 10, scope: !814)
!872 = !DILocation(line: 374, column: 14, scope: !814)
!873 = !DILocation(line: 375, column: 3, scope: !814)
!874 = !DILocation(line: 375, column: 10, scope: !814)
!875 = !DILocation(line: 375, column: 24, scope: !814)
!876 = !DILocation(line: 375, column: 33, scope: !814)
!877 = !DILocation(line: 375, column: 39, scope: !814)
!878 = !DILocation(line: 375, column: 42, scope: !814)
!879 = !DILocation(line: 375, column: 46, scope: !814)
!880 = !DILocation(line: 375, column: 50, scope: !814)
!881 = !DILocation(line: 375, column: 53, scope: !814)
!882 = !DILocation(line: 375, column: 62, scope: !814)
!883 = !DILocation(line: 376, column: 3, scope: !814)
!884 = !DILocation(line: 376, column: 10, scope: !814)
!885 = !DILocation(line: 376, column: 16, scope: !814)
!886 = !DILocation(line: 376, column: 29, scope: !814)
!887 = !DILocation(line: 377, column: 3, scope: !814)
!888 = !DILocation(line: 377, column: 11, scope: !814)
!889 = !DILocation(line: 377, column: 28, scope: !814)
!890 = !DILocation(line: 378, column: 3, scope: !814)
!891 = !DILocation(line: 378, column: 11, scope: !814)
!892 = !DILocation(line: 378, column: 28, scope: !814)
!893 = !DILocation(line: 379, column: 3, scope: !814)
!894 = !DILocation(line: 379, column: 11, scope: !814)
!895 = !DILocation(line: 379, column: 32, scope: !814)
!896 = !DILocation(line: 380, column: 3, scope: !814)
!897 = !DILocation(line: 380, column: 11, scope: !814)
!898 = !DILocation(line: 380, column: 31, scope: !814)
!899 = !DILocation(line: 381, column: 3, scope: !814)
!900 = !DILocation(line: 381, column: 11, scope: !814)
!901 = !DILocation(line: 381, column: 30, scope: !814)
!902 = !DILocation(line: 382, column: 3, scope: !814)
!903 = !DILocation(line: 382, column: 11, scope: !814)
!904 = !DILocation(line: 382, column: 31, scope: !814)
!905 = !DILocation(line: 383, column: 3, scope: !814)
!906 = !DILocation(line: 383, column: 10, scope: !814)
!907 = !DILocation(line: 384, column: 3, scope: !814)
!908 = !DILocation(line: 384, column: 10, scope: !814)
!909 = !DILocation(line: 387, column: 8, scope: !814)
!910 = !DILocation(line: 388, column: 8, scope: !814)
!911 = !DILocation(line: 389, column: 6, scope: !814)
!912 = !DILocation(line: 390, column: 6, scope: !814)
!913 = !DILocation(line: 391, column: 7, scope: !914)
!914 = distinct !DILexicalBlock(scope: !814, file: !1, line: 391, column: 7)
!915 = !DILocation(line: 391, column: 12, scope: !914)
!916 = !DILocation(line: 391, column: 7, scope: !814)
!917 = !DILocation(line: 392, column: 12, scope: !914)
!918 = !DILocation(line: 392, column: 14, scope: !914)
!919 = !DILocation(line: 392, column: 10, scope: !914)
!920 = !DILocation(line: 392, column: 21, scope: !914)
!921 = !DILocation(line: 392, column: 19, scope: !914)
!922 = !DILocation(line: 392, column: 8, scope: !914)
!923 = !DILocation(line: 392, column: 5, scope: !914)
!924 = !DILocation(line: 393, column: 7, scope: !925)
!925 = distinct !DILexicalBlock(scope: !814, file: !1, line: 393, column: 7)
!926 = !DILocation(line: 393, column: 12, scope: !925)
!927 = !DILocation(line: 393, column: 7, scope: !814)
!928 = !DILocation(line: 394, column: 12, scope: !925)
!929 = !DILocation(line: 394, column: 14, scope: !925)
!930 = !DILocation(line: 394, column: 10, scope: !925)
!931 = !DILocation(line: 394, column: 21, scope: !925)
!932 = !DILocation(line: 394, column: 19, scope: !925)
!933 = !DILocation(line: 394, column: 8, scope: !925)
!934 = !DILocation(line: 394, column: 5, scope: !925)
!935 = !DILocation(line: 397, column: 15, scope: !814)
!936 = !DILocation(line: 397, column: 10, scope: !814)
!937 = !DILocation(line: 397, column: 5, scope: !814)
!938 = !DILocation(line: 398, column: 10, scope: !939)
!939 = distinct !DILexicalBlock(scope: !814, file: !1, line: 398, column: 3)
!940 = !DILocation(line: 398, column: 8, scope: !939)
!941 = !DILocation(line: 398, column: 15, scope: !942)
!942 = distinct !DILexicalBlock(scope: !939, file: !1, line: 398, column: 3)
!943 = !DILocation(line: 398, column: 19, scope: !942)
!944 = !DILocation(line: 398, column: 17, scope: !942)
!945 = !DILocation(line: 398, column: 3, scope: !939)
!946 = !DILocation(line: 399, column: 15, scope: !947)
!947 = distinct !DILexicalBlock(scope: !942, file: !1, line: 398, column: 27)
!948 = !DILocation(line: 399, column: 19, scope: !947)
!949 = !DILocation(line: 399, column: 5, scope: !947)
!950 = !DILocation(line: 399, column: 13, scope: !947)
!951 = !DILocation(line: 400, column: 15, scope: !947)
!952 = !DILocation(line: 400, column: 19, scope: !947)
!953 = !DILocation(line: 400, column: 22, scope: !947)
!954 = !DILocation(line: 400, column: 5, scope: !947)
!955 = !DILocation(line: 400, column: 13, scope: !947)
!956 = !DILocation(line: 401, column: 15, scope: !947)
!957 = !DILocation(line: 401, column: 19, scope: !947)
!958 = !DILocation(line: 401, column: 5, scope: !947)
!959 = !DILocation(line: 401, column: 13, scope: !947)
!960 = !DILocation(line: 402, column: 15, scope: !947)
!961 = !DILocation(line: 402, column: 19, scope: !947)
!962 = !DILocation(line: 402, column: 22, scope: !947)
!963 = !DILocation(line: 402, column: 5, scope: !947)
!964 = !DILocation(line: 402, column: 13, scope: !947)
!965 = !DILocation(line: 403, column: 9, scope: !966)
!966 = distinct !DILexicalBlock(scope: !947, file: !1, line: 403, column: 9)
!967 = !DILocation(line: 403, column: 14, scope: !966)
!968 = !DILocation(line: 403, column: 9, scope: !947)
!969 = !DILocation(line: 404, column: 18, scope: !970)
!970 = distinct !DILexicalBlock(scope: !966, file: !1, line: 403, column: 28)
!971 = !DILocation(line: 404, column: 17, scope: !970)
!972 = !DILocation(line: 404, column: 7, scope: !970)
!973 = !DILocation(line: 404, column: 15, scope: !970)
!974 = !DILocation(line: 405, column: 5, scope: !970)
!975 = !DILocation(line: 406, column: 16, scope: !947)
!976 = !DILocation(line: 406, column: 26, scope: !947)
!977 = !DILocation(line: 406, column: 36, scope: !947)
!978 = !DILocation(line: 406, column: 46, scope: !947)
!979 = !DILocation(line: 406, column: 44, scope: !947)
!980 = !DILocation(line: 406, column: 34, scope: !947)
!981 = !DILocation(line: 406, column: 11, scope: !947)
!982 = !DILocation(line: 406, column: 8, scope: !947)
!983 = !DILocation(line: 407, column: 16, scope: !947)
!984 = !DILocation(line: 407, column: 26, scope: !947)
!985 = !DILocation(line: 407, column: 36, scope: !947)
!986 = !DILocation(line: 407, column: 46, scope: !947)
!987 = !DILocation(line: 407, column: 44, scope: !947)
!988 = !DILocation(line: 407, column: 34, scope: !947)
!989 = !DILocation(line: 407, column: 11, scope: !947)
!990 = !DILocation(line: 407, column: 8, scope: !947)
!991 = !DILocation(line: 408, column: 26, scope: !992)
!992 = distinct !DILexicalBlock(scope: !947, file: !1, line: 407, column: 56)
!993 = !DILocation(line: 408, column: 36, scope: !992)
!994 = !DILocation(line: 408, column: 55, scope: !992)
!995 = !DILocation(line: 408, column: 65, scope: !992)
!996 = !DILocation(line: 408, column: 63, scope: !992)
!997 = !DILocation(line: 408, column: 44, scope: !992)
!998 = !DILocation(line: 408, column: 7, scope: !992)
!999 = !DILocation(line: 408, column: 15, scope: !992)
!1000 = !DILocation(line: 409, column: 26, scope: !992)
!1001 = !DILocation(line: 409, column: 36, scope: !992)
!1002 = !DILocation(line: 409, column: 55, scope: !992)
!1003 = !DILocation(line: 409, column: 65, scope: !992)
!1004 = !DILocation(line: 409, column: 63, scope: !992)
!1005 = !DILocation(line: 409, column: 44, scope: !992)
!1006 = !DILocation(line: 409, column: 7, scope: !992)
!1007 = !DILocation(line: 409, column: 15, scope: !992)
!1008 = !DILocation(line: 411, column: 15, scope: !947)
!1009 = !DILocation(line: 411, column: 25, scope: !947)
!1010 = !DILocation(line: 411, column: 35, scope: !947)
!1011 = !DILocation(line: 411, column: 45, scope: !947)
!1012 = !DILocation(line: 411, column: 43, scope: !947)
!1013 = !DILocation(line: 411, column: 33, scope: !947)
!1014 = !DILocation(line: 411, column: 10, scope: !947)
!1015 = !DILocation(line: 411, column: 7, scope: !947)
!1016 = !DILocation(line: 412, column: 11, scope: !947)
!1017 = !DILocation(line: 412, column: 8, scope: !947)
!1018 = !DILocation(line: 413, column: 11, scope: !947)
!1019 = !DILocation(line: 413, column: 8, scope: !947)
!1020 = !DILocation(line: 414, column: 3, scope: !947)
!1021 = !DILocation(line: 398, column: 22, scope: !942)
!1022 = !DILocation(line: 398, column: 3, scope: !942)
!1023 = distinct !{!1023, !945, !1024, !175}
!1024 = !DILocation(line: 414, column: 3, scope: !939)
!1025 = !DILocation(line: 415, column: 13, scope: !814)
!1026 = !DILocation(line: 415, column: 26, scope: !814)
!1027 = !DILocation(line: 415, column: 39, scope: !814)
!1028 = !DILocation(line: 415, column: 52, scope: !814)
!1029 = !DILocation(line: 415, column: 50, scope: !814)
!1030 = !DILocation(line: 415, column: 37, scope: !814)
!1031 = !DILocation(line: 415, column: 8, scope: !814)
!1032 = !DILocation(line: 415, column: 5, scope: !814)
!1033 = !DILocation(line: 417, column: 24, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !814, file: !1, line: 416, column: 3)
!1035 = !DILocation(line: 417, column: 36, scope: !1034)
!1036 = !DILocation(line: 417, column: 56, scope: !1034)
!1037 = !DILocation(line: 417, column: 68, scope: !1034)
!1038 = !DILocation(line: 417, column: 66, scope: !1034)
!1039 = !DILocation(line: 417, column: 45, scope: !1034)
!1040 = !DILocation(line: 417, column: 5, scope: !1034)
!1041 = !DILocation(line: 417, column: 13, scope: !1034)
!1042 = !DILocation(line: 418, column: 24, scope: !1034)
!1043 = !DILocation(line: 418, column: 36, scope: !1034)
!1044 = !DILocation(line: 418, column: 56, scope: !1034)
!1045 = !DILocation(line: 418, column: 68, scope: !1034)
!1046 = !DILocation(line: 418, column: 66, scope: !1034)
!1047 = !DILocation(line: 418, column: 45, scope: !1034)
!1048 = !DILocation(line: 418, column: 5, scope: !1034)
!1049 = !DILocation(line: 418, column: 13, scope: !1034)
!1050 = !DILocation(line: 420, column: 13, scope: !814)
!1051 = !DILocation(line: 420, column: 23, scope: !814)
!1052 = !DILocation(line: 420, column: 33, scope: !814)
!1053 = !DILocation(line: 420, column: 43, scope: !814)
!1054 = !DILocation(line: 420, column: 41, scope: !814)
!1055 = !DILocation(line: 420, column: 31, scope: !814)
!1056 = !DILocation(line: 420, column: 8, scope: !814)
!1057 = !DILocation(line: 420, column: 5, scope: !814)
!1058 = !DILocation(line: 422, column: 23, scope: !814)
!1059 = !DILocation(line: 422, column: 14, scope: !814)
!1060 = !DILocation(line: 423, column: 16, scope: !814)
!1061 = !DILocation(line: 423, column: 7, scope: !814)
!1062 = !DILocation(line: 422, column: 10, scope: !814)
!1063 = !DILocation(line: 422, column: 8, scope: !814)
!1064 = !DILocation(line: 424, column: 7, scope: !814)
!1065 = !DILocation(line: 424, column: 5, scope: !814)
!1066 = !DILocation(line: 426, column: 18, scope: !814)
!1067 = !DILocation(line: 426, column: 16, scope: !814)
!1068 = !DILocation(line: 427, column: 30, scope: !814)
!1069 = !DILocation(line: 427, column: 21, scope: !814)
!1070 = !DILocation(line: 428, column: 16, scope: !814)
!1071 = !DILocation(line: 428, column: 7, scope: !814)
!1072 = !DILocation(line: 427, column: 17, scope: !814)
!1073 = !DILocation(line: 427, column: 15, scope: !814)
!1074 = !DILocation(line: 429, column: 13, scope: !814)
!1075 = !DILocation(line: 429, column: 11, scope: !814)
!1076 = !DILocation(line: 430, column: 25, scope: !814)
!1077 = !DILocation(line: 430, column: 16, scope: !814)
!1078 = !DILocation(line: 431, column: 18, scope: !814)
!1079 = !DILocation(line: 431, column: 9, scope: !814)
!1080 = !DILocation(line: 430, column: 12, scope: !814)
!1081 = !DILocation(line: 430, column: 10, scope: !814)
!1082 = !DILocation(line: 432, column: 13, scope: !814)
!1083 = !DILocation(line: 432, column: 25, scope: !814)
!1084 = !DILocation(line: 432, column: 23, scope: !814)
!1085 = !DILocation(line: 432, column: 40, scope: !814)
!1086 = !DILocation(line: 432, column: 38, scope: !814)
!1087 = !DILocation(line: 432, column: 3, scope: !814)
!1088 = !DILocation(line: 432, column: 10, scope: !814)
!1089 = !DILocation(line: 433, column: 13, scope: !814)
!1090 = !DILocation(line: 433, column: 25, scope: !814)
!1091 = !DILocation(line: 433, column: 23, scope: !814)
!1092 = !DILocation(line: 433, column: 40, scope: !814)
!1093 = !DILocation(line: 433, column: 38, scope: !814)
!1094 = !DILocation(line: 433, column: 3, scope: !814)
!1095 = !DILocation(line: 433, column: 10, scope: !814)
!1096 = !DILocation(line: 434, column: 15, scope: !814)
!1097 = !DILocation(line: 434, column: 24, scope: !814)
!1098 = !DILocation(line: 434, column: 33, scope: !814)
!1099 = !DILocation(line: 434, column: 42, scope: !814)
!1100 = !DILocation(line: 434, column: 40, scope: !814)
!1101 = !DILocation(line: 434, column: 31, scope: !814)
!1102 = !DILocation(line: 434, column: 10, scope: !814)
!1103 = !DILocation(line: 434, column: 8, scope: !814)
!1104 = !DILocation(line: 437, column: 16, scope: !814)
!1105 = !DILocation(line: 437, column: 29, scope: !814)
!1106 = !DILocation(line: 437, column: 42, scope: !814)
!1107 = !DILocation(line: 437, column: 55, scope: !814)
!1108 = !DILocation(line: 437, column: 53, scope: !814)
!1109 = !DILocation(line: 437, column: 40, scope: !814)
!1110 = !DILocation(line: 437, column: 11, scope: !814)
!1111 = !DILocation(line: 437, column: 9, scope: !814)
!1112 = !DILocation(line: 437, column: 69, scope: !814)
!1113 = !DILocation(line: 437, column: 71, scope: !814)
!1114 = !DILocation(line: 437, column: 5, scope: !814)
!1115 = !DILocation(line: 438, column: 7, scope: !814)
!1116 = !DILocation(line: 438, column: 5, scope: !814)
!1117 = !DILocation(line: 439, column: 7, scope: !814)
!1118 = !DILocation(line: 439, column: 33, scope: !814)
!1119 = !DILocation(line: 439, column: 42, scope: !814)
!1120 = !DILocation(line: 439, column: 40, scope: !814)
!1121 = !DILocation(line: 439, column: 57, scope: !814)
!1122 = !DILocation(line: 439, column: 55, scope: !814)
!1123 = !DILocation(line: 439, column: 5, scope: !814)
!1124 = !DILocation(line: 440, column: 12, scope: !814)
!1125 = !DILocation(line: 440, column: 10, scope: !814)
!1126 = !DILocation(line: 440, column: 5, scope: !814)
!1127 = !DILocation(line: 442, column: 17, scope: !814)
!1128 = !DILocation(line: 442, column: 29, scope: !814)
!1129 = !DILocation(line: 442, column: 27, scope: !814)
!1130 = !DILocation(line: 442, column: 41, scope: !814)
!1131 = !DILocation(line: 442, column: 43, scope: !814)
!1132 = !DILocation(line: 442, column: 40, scope: !814)
!1133 = !DILocation(line: 442, column: 38, scope: !814)
!1134 = !DILocation(line: 442, column: 51, scope: !814)
!1135 = !DILocation(line: 442, column: 61, scope: !814)
!1136 = !DILocation(line: 442, column: 59, scope: !814)
!1137 = !DILocation(line: 442, column: 48, scope: !814)
!1138 = !DILocation(line: 442, column: 77, scope: !814)
!1139 = !DILocation(line: 444, column: 4, scope: !814)
!1140 = !DILocation(line: 444, column: 15, scope: !814)
!1141 = !DILocation(line: 444, column: 13, scope: !814)
!1142 = !DILocation(line: 444, column: 30, scope: !814)
!1143 = !DILocation(line: 444, column: 44, scope: !814)
!1144 = !DILocation(line: 445, column: 9, scope: !814)
!1145 = !DILocation(line: 445, column: 23, scope: !814)
!1146 = !DILocation(line: 445, column: 21, scope: !814)
!1147 = !DILocation(line: 444, column: 56, scope: !814)
!1148 = !DILocation(line: 444, column: 25, scope: !814)
!1149 = !DILocation(line: 444, column: 23, scope: !814)
!1150 = !DILocation(line: 443, column: 4, scope: !814)
!1151 = !DILocation(line: 446, column: 4, scope: !814)
!1152 = !DILocation(line: 445, column: 36, scope: !814)
!1153 = !DILocation(line: 442, column: 22, scope: !814)
!1154 = !DILocation(line: 442, column: 4, scope: !814)
!1155 = !DILocation(line: 442, column: 15, scope: !814)
!1156 = !DILocation(line: 447, column: 1, scope: !814)
!1157 = distinct !DISubprogram(name: "test_BLAS_cdot_s_s", scope: !1, file: !1, line: 450, type: !1158, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1160)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{null, !43, !3, !462, !462, !462, !462, !32, !32, !30, !43, !30, !43, !29, !29, !32}
!1160 = !{!1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198}
!1161 = !DILocalVariable(name: "n", arg: 1, scope: !1157, file: !1, line: 450, type: !43)
!1162 = !DILocalVariable(name: "conj", arg: 2, scope: !1157, file: !1, line: 450, type: !3)
!1163 = !DILocalVariable(name: "alpha", arg: 3, scope: !1157, file: !1, line: 450, type: !462)
!1164 = !DILocalVariable(name: "beta", arg: 4, scope: !1157, file: !1, line: 451, type: !462)
!1165 = !DILocalVariable(name: "rin", arg: 5, scope: !1157, file: !1, line: 451, type: !462)
!1166 = !DILocalVariable(name: "rout", arg: 6, scope: !1157, file: !1, line: 451, type: !462)
!1167 = !DILocalVariable(name: "r_true_l", arg: 7, scope: !1157, file: !1, line: 452, type: !32)
!1168 = !DILocalVariable(name: "r_true_t", arg: 8, scope: !1157, file: !1, line: 452, type: !32)
!1169 = !DILocalVariable(name: "x", arg: 9, scope: !1157, file: !1, line: 452, type: !30)
!1170 = !DILocalVariable(name: "incx", arg: 10, scope: !1157, file: !1, line: 453, type: !43)
!1171 = !DILocalVariable(name: "y", arg: 11, scope: !1157, file: !1, line: 453, type: !30)
!1172 = !DILocalVariable(name: "incy", arg: 12, scope: !1157, file: !1, line: 453, type: !43)
!1173 = !DILocalVariable(name: "eps_int", arg: 13, scope: !1157, file: !1, line: 453, type: !29)
!1174 = !DILocalVariable(name: "un_int", arg: 14, scope: !1157, file: !1, line: 454, type: !29)
!1175 = !DILocalVariable(name: "test_ratio", arg: 15, scope: !1157, file: !1, line: 454, type: !32)
!1176 = !DILocalVariable(name: "i", scope: !1157, file: !1, line: 500, type: !43)
!1177 = !DILocalVariable(name: "ix", scope: !1157, file: !1, line: 500, type: !43)
!1178 = !DILocalVariable(name: "iy", scope: !1157, file: !1, line: 500, type: !43)
!1179 = !DILocalVariable(name: "eps_accurate", scope: !1157, file: !1, line: 501, type: !29)
!1180 = !DILocalVariable(name: "eps_out", scope: !1157, file: !1, line: 501, type: !29)
!1181 = !DILocalVariable(name: "tmp1", scope: !1157, file: !1, line: 501, type: !29)
!1182 = !DILocalVariable(name: "S", scope: !1157, file: !1, line: 501, type: !29)
!1183 = !DILocalVariable(name: "S1", scope: !1157, file: !1, line: 501, type: !29)
!1184 = !DILocalVariable(name: "S2", scope: !1157, file: !1, line: 501, type: !29)
!1185 = !DILocalVariable(name: "U", scope: !1157, file: !1, line: 501, type: !29)
!1186 = !DILocalVariable(name: "prod", scope: !1157, file: !1, line: 501, type: !492)
!1187 = !DILocalVariable(name: "tmp", scope: !1157, file: !1, line: 501, type: !492)
!1188 = !DILocalVariable(name: "un_d", scope: !1157, file: !1, line: 502, type: !29)
!1189 = !DILocalVariable(name: "un_accurate", scope: !1157, file: !1, line: 502, type: !29)
!1190 = !DILocalVariable(name: "un_out", scope: !1157, file: !1, line: 502, type: !29)
!1191 = !DILocalVariable(name: "x_i", scope: !1157, file: !1, line: 503, type: !30)
!1192 = !DILocalVariable(name: "y_i", scope: !1157, file: !1, line: 504, type: !30)
!1193 = !DILocalVariable(name: "alpha_i", scope: !1157, file: !1, line: 505, type: !30)
!1194 = !DILocalVariable(name: "beta_i", scope: !1157, file: !1, line: 506, type: !30)
!1195 = !DILocalVariable(name: "rin_i", scope: !1157, file: !1, line: 507, type: !30)
!1196 = !DILocalVariable(name: "rout_i", scope: !1157, file: !1, line: 508, type: !30)
!1197 = !DILocalVariable(name: "x_ii", scope: !1157, file: !1, line: 509, type: !31)
!1198 = !DILocalVariable(name: "y_ii", scope: !1157, file: !1, line: 510, type: !31)
!1199 = !DILocation(line: 450, column: 29, scope: !1157)
!1200 = !DILocation(line: 450, column: 52, scope: !1157)
!1201 = !DILocation(line: 450, column: 70, scope: !1157)
!1202 = !DILocation(line: 451, column: 16, scope: !1157)
!1203 = !DILocation(line: 451, column: 34, scope: !1157)
!1204 = !DILocation(line: 451, column: 51, scope: !1157)
!1205 = !DILocation(line: 452, column: 12, scope: !1157)
!1206 = !DILocation(line: 452, column: 30, scope: !1157)
!1207 = !DILocation(line: 452, column: 47, scope: !1157)
!1208 = !DILocation(line: 453, column: 8, scope: !1157)
!1209 = !DILocation(line: 453, column: 21, scope: !1157)
!1210 = !DILocation(line: 453, column: 28, scope: !1157)
!1211 = !DILocation(line: 453, column: 41, scope: !1157)
!1212 = !DILocation(line: 454, column: 11, scope: !1157)
!1213 = !DILocation(line: 454, column: 27, scope: !1157)
!1214 = !DILocation(line: 500, column: 3, scope: !1157)
!1215 = !DILocation(line: 500, column: 7, scope: !1157)
!1216 = !DILocation(line: 500, column: 10, scope: !1157)
!1217 = !DILocation(line: 500, column: 14, scope: !1157)
!1218 = !DILocation(line: 501, column: 3, scope: !1157)
!1219 = !DILocation(line: 501, column: 10, scope: !1157)
!1220 = !DILocation(line: 501, column: 24, scope: !1157)
!1221 = !DILocation(line: 501, column: 33, scope: !1157)
!1222 = !DILocation(line: 501, column: 39, scope: !1157)
!1223 = !DILocation(line: 501, column: 42, scope: !1157)
!1224 = !DILocation(line: 501, column: 46, scope: !1157)
!1225 = !DILocation(line: 501, column: 50, scope: !1157)
!1226 = !DILocation(line: 501, column: 53, scope: !1157)
!1227 = !DILocation(line: 501, column: 62, scope: !1157)
!1228 = !DILocation(line: 502, column: 3, scope: !1157)
!1229 = !DILocation(line: 502, column: 10, scope: !1157)
!1230 = !DILocation(line: 502, column: 16, scope: !1157)
!1231 = !DILocation(line: 502, column: 29, scope: !1157)
!1232 = !DILocation(line: 503, column: 3, scope: !1157)
!1233 = !DILocation(line: 503, column: 10, scope: !1157)
!1234 = !DILocation(line: 503, column: 16, scope: !1157)
!1235 = !DILocation(line: 504, column: 3, scope: !1157)
!1236 = !DILocation(line: 504, column: 10, scope: !1157)
!1237 = !DILocation(line: 504, column: 16, scope: !1157)
!1238 = !DILocation(line: 505, column: 3, scope: !1157)
!1239 = !DILocation(line: 505, column: 10, scope: !1157)
!1240 = !DILocation(line: 505, column: 30, scope: !1157)
!1241 = !DILocation(line: 506, column: 3, scope: !1157)
!1242 = !DILocation(line: 506, column: 10, scope: !1157)
!1243 = !DILocation(line: 506, column: 29, scope: !1157)
!1244 = !DILocation(line: 507, column: 3, scope: !1157)
!1245 = !DILocation(line: 507, column: 10, scope: !1157)
!1246 = !DILocation(line: 507, column: 28, scope: !1157)
!1247 = !DILocation(line: 508, column: 3, scope: !1157)
!1248 = !DILocation(line: 508, column: 10, scope: !1157)
!1249 = !DILocation(line: 508, column: 29, scope: !1157)
!1250 = !DILocation(line: 509, column: 3, scope: !1157)
!1251 = !DILocation(line: 509, column: 9, scope: !1157)
!1252 = !DILocation(line: 510, column: 3, scope: !1157)
!1253 = !DILocation(line: 510, column: 9, scope: !1157)
!1254 = !DILocation(line: 515, column: 6, scope: !1157)
!1255 = !DILocation(line: 516, column: 6, scope: !1157)
!1256 = !DILocation(line: 517, column: 7, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1157, file: !1, line: 517, column: 7)
!1258 = !DILocation(line: 517, column: 12, scope: !1257)
!1259 = !DILocation(line: 517, column: 7, scope: !1157)
!1260 = !DILocation(line: 518, column: 12, scope: !1257)
!1261 = !DILocation(line: 518, column: 14, scope: !1257)
!1262 = !DILocation(line: 518, column: 10, scope: !1257)
!1263 = !DILocation(line: 518, column: 21, scope: !1257)
!1264 = !DILocation(line: 518, column: 19, scope: !1257)
!1265 = !DILocation(line: 518, column: 8, scope: !1257)
!1266 = !DILocation(line: 518, column: 5, scope: !1257)
!1267 = !DILocation(line: 519, column: 7, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1157, file: !1, line: 519, column: 7)
!1269 = !DILocation(line: 519, column: 12, scope: !1268)
!1270 = !DILocation(line: 519, column: 7, scope: !1157)
!1271 = !DILocation(line: 520, column: 12, scope: !1268)
!1272 = !DILocation(line: 520, column: 14, scope: !1268)
!1273 = !DILocation(line: 520, column: 10, scope: !1268)
!1274 = !DILocation(line: 520, column: 21, scope: !1268)
!1275 = !DILocation(line: 520, column: 19, scope: !1268)
!1276 = !DILocation(line: 520, column: 8, scope: !1268)
!1277 = !DILocation(line: 520, column: 5, scope: !1268)
!1278 = !DILocation(line: 523, column: 15, scope: !1157)
!1279 = !DILocation(line: 523, column: 10, scope: !1157)
!1280 = !DILocation(line: 523, column: 5, scope: !1157)
!1281 = !DILocation(line: 524, column: 10, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1157, file: !1, line: 524, column: 3)
!1283 = !DILocation(line: 524, column: 8, scope: !1282)
!1284 = !DILocation(line: 524, column: 15, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1282, file: !1, line: 524, column: 3)
!1286 = !DILocation(line: 524, column: 19, scope: !1285)
!1287 = !DILocation(line: 524, column: 17, scope: !1285)
!1288 = !DILocation(line: 524, column: 3, scope: !1282)
!1289 = !DILocation(line: 525, column: 12, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1285, file: !1, line: 524, column: 27)
!1291 = !DILocation(line: 525, column: 16, scope: !1290)
!1292 = !DILocation(line: 525, column: 10, scope: !1290)
!1293 = !DILocation(line: 526, column: 12, scope: !1290)
!1294 = !DILocation(line: 526, column: 16, scope: !1290)
!1295 = !DILocation(line: 526, column: 10, scope: !1290)
!1296 = !DILocation(line: 527, column: 16, scope: !1290)
!1297 = !DILocation(line: 527, column: 11, scope: !1290)
!1298 = !DILocation(line: 527, column: 8, scope: !1290)
!1299 = !DILocation(line: 528, column: 16, scope: !1290)
!1300 = !DILocation(line: 528, column: 11, scope: !1290)
!1301 = !DILocation(line: 528, column: 8, scope: !1290)
!1302 = !DILocation(line: 529, column: 15, scope: !1290)
!1303 = !DILocation(line: 529, column: 22, scope: !1290)
!1304 = !DILocation(line: 529, column: 20, scope: !1290)
!1305 = !DILocation(line: 529, column: 5, scope: !1290)
!1306 = !DILocation(line: 529, column: 13, scope: !1290)
!1307 = !DILocation(line: 530, column: 5, scope: !1290)
!1308 = !DILocation(line: 530, column: 13, scope: !1290)
!1309 = !DILocation(line: 531, column: 15, scope: !1290)
!1310 = !DILocation(line: 531, column: 25, scope: !1290)
!1311 = !DILocation(line: 531, column: 35, scope: !1290)
!1312 = !DILocation(line: 531, column: 45, scope: !1290)
!1313 = !DILocation(line: 531, column: 43, scope: !1290)
!1314 = !DILocation(line: 531, column: 33, scope: !1290)
!1315 = !DILocation(line: 531, column: 10, scope: !1290)
!1316 = !DILocation(line: 531, column: 7, scope: !1290)
!1317 = !DILocation(line: 532, column: 11, scope: !1290)
!1318 = !DILocation(line: 532, column: 8, scope: !1290)
!1319 = !DILocation(line: 533, column: 11, scope: !1290)
!1320 = !DILocation(line: 533, column: 8, scope: !1290)
!1321 = !DILocation(line: 534, column: 3, scope: !1290)
!1322 = !DILocation(line: 524, column: 22, scope: !1285)
!1323 = !DILocation(line: 524, column: 3, scope: !1285)
!1324 = distinct !{!1324, !1288, !1325, !175}
!1325 = !DILocation(line: 534, column: 3, scope: !1282)
!1326 = !DILocation(line: 535, column: 13, scope: !1157)
!1327 = !DILocation(line: 535, column: 26, scope: !1157)
!1328 = !DILocation(line: 535, column: 39, scope: !1157)
!1329 = !DILocation(line: 535, column: 52, scope: !1157)
!1330 = !DILocation(line: 535, column: 50, scope: !1157)
!1331 = !DILocation(line: 535, column: 37, scope: !1157)
!1332 = !DILocation(line: 535, column: 8, scope: !1157)
!1333 = !DILocation(line: 535, column: 5, scope: !1157)
!1334 = !DILocation(line: 537, column: 15, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1157, file: !1, line: 536, column: 3)
!1336 = !DILocation(line: 537, column: 27, scope: !1335)
!1337 = !DILocation(line: 537, column: 38, scope: !1335)
!1338 = !DILocation(line: 537, column: 50, scope: !1335)
!1339 = !DILocation(line: 537, column: 48, scope: !1335)
!1340 = !DILocation(line: 537, column: 36, scope: !1335)
!1341 = !DILocation(line: 537, column: 5, scope: !1335)
!1342 = !DILocation(line: 537, column: 13, scope: !1335)
!1343 = !DILocation(line: 538, column: 15, scope: !1335)
!1344 = !DILocation(line: 538, column: 27, scope: !1335)
!1345 = !DILocation(line: 538, column: 38, scope: !1335)
!1346 = !DILocation(line: 538, column: 50, scope: !1335)
!1347 = !DILocation(line: 538, column: 48, scope: !1335)
!1348 = !DILocation(line: 538, column: 36, scope: !1335)
!1349 = !DILocation(line: 538, column: 5, scope: !1335)
!1350 = !DILocation(line: 538, column: 13, scope: !1335)
!1351 = !DILocation(line: 541, column: 13, scope: !1157)
!1352 = !DILocation(line: 541, column: 23, scope: !1157)
!1353 = !DILocation(line: 541, column: 33, scope: !1157)
!1354 = !DILocation(line: 541, column: 43, scope: !1157)
!1355 = !DILocation(line: 541, column: 41, scope: !1157)
!1356 = !DILocation(line: 541, column: 31, scope: !1157)
!1357 = !DILocation(line: 541, column: 8, scope: !1157)
!1358 = !DILocation(line: 541, column: 5, scope: !1157)
!1359 = !DILocation(line: 543, column: 23, scope: !1157)
!1360 = !DILocation(line: 543, column: 14, scope: !1157)
!1361 = !DILocation(line: 544, column: 16, scope: !1157)
!1362 = !DILocation(line: 544, column: 7, scope: !1157)
!1363 = !DILocation(line: 543, column: 10, scope: !1157)
!1364 = !DILocation(line: 543, column: 8, scope: !1157)
!1365 = !DILocation(line: 545, column: 7, scope: !1157)
!1366 = !DILocation(line: 545, column: 5, scope: !1157)
!1367 = !DILocation(line: 547, column: 18, scope: !1157)
!1368 = !DILocation(line: 547, column: 16, scope: !1157)
!1369 = !DILocation(line: 548, column: 30, scope: !1157)
!1370 = !DILocation(line: 548, column: 21, scope: !1157)
!1371 = !DILocation(line: 549, column: 16, scope: !1157)
!1372 = !DILocation(line: 549, column: 7, scope: !1157)
!1373 = !DILocation(line: 548, column: 17, scope: !1157)
!1374 = !DILocation(line: 548, column: 15, scope: !1157)
!1375 = !DILocation(line: 550, column: 13, scope: !1157)
!1376 = !DILocation(line: 550, column: 11, scope: !1157)
!1377 = !DILocation(line: 551, column: 25, scope: !1157)
!1378 = !DILocation(line: 551, column: 16, scope: !1157)
!1379 = !DILocation(line: 552, column: 18, scope: !1157)
!1380 = !DILocation(line: 552, column: 9, scope: !1157)
!1381 = !DILocation(line: 551, column: 12, scope: !1157)
!1382 = !DILocation(line: 551, column: 10, scope: !1157)
!1383 = !DILocation(line: 553, column: 13, scope: !1157)
!1384 = !DILocation(line: 553, column: 25, scope: !1157)
!1385 = !DILocation(line: 553, column: 23, scope: !1157)
!1386 = !DILocation(line: 553, column: 40, scope: !1157)
!1387 = !DILocation(line: 553, column: 38, scope: !1157)
!1388 = !DILocation(line: 553, column: 3, scope: !1157)
!1389 = !DILocation(line: 553, column: 10, scope: !1157)
!1390 = !DILocation(line: 554, column: 13, scope: !1157)
!1391 = !DILocation(line: 554, column: 25, scope: !1157)
!1392 = !DILocation(line: 554, column: 23, scope: !1157)
!1393 = !DILocation(line: 554, column: 40, scope: !1157)
!1394 = !DILocation(line: 554, column: 38, scope: !1157)
!1395 = !DILocation(line: 554, column: 3, scope: !1157)
!1396 = !DILocation(line: 554, column: 10, scope: !1157)
!1397 = !DILocation(line: 555, column: 15, scope: !1157)
!1398 = !DILocation(line: 555, column: 24, scope: !1157)
!1399 = !DILocation(line: 555, column: 33, scope: !1157)
!1400 = !DILocation(line: 555, column: 42, scope: !1157)
!1401 = !DILocation(line: 555, column: 40, scope: !1157)
!1402 = !DILocation(line: 555, column: 31, scope: !1157)
!1403 = !DILocation(line: 555, column: 10, scope: !1157)
!1404 = !DILocation(line: 555, column: 8, scope: !1157)
!1405 = !DILocation(line: 558, column: 16, scope: !1157)
!1406 = !DILocation(line: 558, column: 29, scope: !1157)
!1407 = !DILocation(line: 558, column: 42, scope: !1157)
!1408 = !DILocation(line: 558, column: 55, scope: !1157)
!1409 = !DILocation(line: 558, column: 53, scope: !1157)
!1410 = !DILocation(line: 558, column: 40, scope: !1157)
!1411 = !DILocation(line: 558, column: 11, scope: !1157)
!1412 = !DILocation(line: 558, column: 9, scope: !1157)
!1413 = !DILocation(line: 558, column: 69, scope: !1157)
!1414 = !DILocation(line: 558, column: 71, scope: !1157)
!1415 = !DILocation(line: 558, column: 5, scope: !1157)
!1416 = !DILocation(line: 559, column: 7, scope: !1157)
!1417 = !DILocation(line: 559, column: 5, scope: !1157)
!1418 = !DILocation(line: 560, column: 7, scope: !1157)
!1419 = !DILocation(line: 560, column: 33, scope: !1157)
!1420 = !DILocation(line: 560, column: 42, scope: !1157)
!1421 = !DILocation(line: 560, column: 40, scope: !1157)
!1422 = !DILocation(line: 560, column: 57, scope: !1157)
!1423 = !DILocation(line: 560, column: 55, scope: !1157)
!1424 = !DILocation(line: 560, column: 5, scope: !1157)
!1425 = !DILocation(line: 561, column: 12, scope: !1157)
!1426 = !DILocation(line: 561, column: 10, scope: !1157)
!1427 = !DILocation(line: 561, column: 5, scope: !1157)
!1428 = !DILocation(line: 563, column: 17, scope: !1157)
!1429 = !DILocation(line: 563, column: 29, scope: !1157)
!1430 = !DILocation(line: 563, column: 27, scope: !1157)
!1431 = !DILocation(line: 563, column: 41, scope: !1157)
!1432 = !DILocation(line: 563, column: 43, scope: !1157)
!1433 = !DILocation(line: 563, column: 40, scope: !1157)
!1434 = !DILocation(line: 563, column: 38, scope: !1157)
!1435 = !DILocation(line: 563, column: 51, scope: !1157)
!1436 = !DILocation(line: 563, column: 61, scope: !1157)
!1437 = !DILocation(line: 563, column: 59, scope: !1157)
!1438 = !DILocation(line: 563, column: 48, scope: !1157)
!1439 = !DILocation(line: 563, column: 77, scope: !1157)
!1440 = !DILocation(line: 565, column: 4, scope: !1157)
!1441 = !DILocation(line: 565, column: 15, scope: !1157)
!1442 = !DILocation(line: 565, column: 13, scope: !1157)
!1443 = !DILocation(line: 565, column: 30, scope: !1157)
!1444 = !DILocation(line: 565, column: 44, scope: !1157)
!1445 = !DILocation(line: 566, column: 9, scope: !1157)
!1446 = !DILocation(line: 566, column: 23, scope: !1157)
!1447 = !DILocation(line: 566, column: 21, scope: !1157)
!1448 = !DILocation(line: 565, column: 56, scope: !1157)
!1449 = !DILocation(line: 565, column: 25, scope: !1157)
!1450 = !DILocation(line: 565, column: 23, scope: !1157)
!1451 = !DILocation(line: 564, column: 4, scope: !1157)
!1452 = !DILocation(line: 567, column: 4, scope: !1157)
!1453 = !DILocation(line: 566, column: 36, scope: !1157)
!1454 = !DILocation(line: 563, column: 22, scope: !1157)
!1455 = !DILocation(line: 563, column: 4, scope: !1157)
!1456 = !DILocation(line: 563, column: 15, scope: !1157)
!1457 = !DILocation(line: 568, column: 1, scope: !1157)
!1458 = distinct !DISubprogram(name: "test_BLAS_cdot_s_c", scope: !1, file: !1, line: 571, type: !1459, scopeLine: 620, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1461)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{null, !43, !3, !462, !462, !462, !462, !32, !32, !30, !43, !464, !43, !29, !29, !32}
!1461 = !{!1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499}
!1462 = !DILocalVariable(name: "n", arg: 1, scope: !1458, file: !1, line: 571, type: !43)
!1463 = !DILocalVariable(name: "conj", arg: 2, scope: !1458, file: !1, line: 571, type: !3)
!1464 = !DILocalVariable(name: "alpha", arg: 3, scope: !1458, file: !1, line: 571, type: !462)
!1465 = !DILocalVariable(name: "beta", arg: 4, scope: !1458, file: !1, line: 572, type: !462)
!1466 = !DILocalVariable(name: "rin", arg: 5, scope: !1458, file: !1, line: 572, type: !462)
!1467 = !DILocalVariable(name: "rout", arg: 6, scope: !1458, file: !1, line: 572, type: !462)
!1468 = !DILocalVariable(name: "r_true_l", arg: 7, scope: !1458, file: !1, line: 573, type: !32)
!1469 = !DILocalVariable(name: "r_true_t", arg: 8, scope: !1458, file: !1, line: 573, type: !32)
!1470 = !DILocalVariable(name: "x", arg: 9, scope: !1458, file: !1, line: 573, type: !30)
!1471 = !DILocalVariable(name: "incx", arg: 10, scope: !1458, file: !1, line: 574, type: !43)
!1472 = !DILocalVariable(name: "y", arg: 11, scope: !1458, file: !1, line: 574, type: !464)
!1473 = !DILocalVariable(name: "incy", arg: 12, scope: !1458, file: !1, line: 574, type: !43)
!1474 = !DILocalVariable(name: "eps_int", arg: 13, scope: !1458, file: !1, line: 574, type: !29)
!1475 = !DILocalVariable(name: "un_int", arg: 14, scope: !1458, file: !1, line: 575, type: !29)
!1476 = !DILocalVariable(name: "test_ratio", arg: 15, scope: !1458, file: !1, line: 575, type: !32)
!1477 = !DILocalVariable(name: "i", scope: !1458, file: !1, line: 621, type: !43)
!1478 = !DILocalVariable(name: "ix", scope: !1458, file: !1, line: 621, type: !43)
!1479 = !DILocalVariable(name: "iy", scope: !1458, file: !1, line: 621, type: !43)
!1480 = !DILocalVariable(name: "eps_accurate", scope: !1458, file: !1, line: 622, type: !29)
!1481 = !DILocalVariable(name: "eps_out", scope: !1458, file: !1, line: 622, type: !29)
!1482 = !DILocalVariable(name: "tmp1", scope: !1458, file: !1, line: 622, type: !29)
!1483 = !DILocalVariable(name: "S", scope: !1458, file: !1, line: 622, type: !29)
!1484 = !DILocalVariable(name: "S1", scope: !1458, file: !1, line: 622, type: !29)
!1485 = !DILocalVariable(name: "S2", scope: !1458, file: !1, line: 622, type: !29)
!1486 = !DILocalVariable(name: "U", scope: !1458, file: !1, line: 622, type: !29)
!1487 = !DILocalVariable(name: "prod", scope: !1458, file: !1, line: 622, type: !492)
!1488 = !DILocalVariable(name: "tmp", scope: !1458, file: !1, line: 622, type: !492)
!1489 = !DILocalVariable(name: "un_d", scope: !1458, file: !1, line: 623, type: !29)
!1490 = !DILocalVariable(name: "un_accurate", scope: !1458, file: !1, line: 623, type: !29)
!1491 = !DILocalVariable(name: "un_out", scope: !1458, file: !1, line: 623, type: !29)
!1492 = !DILocalVariable(name: "x_i", scope: !1458, file: !1, line: 624, type: !30)
!1493 = !DILocalVariable(name: "y_i", scope: !1458, file: !1, line: 625, type: !30)
!1494 = !DILocalVariable(name: "alpha_i", scope: !1458, file: !1, line: 626, type: !30)
!1495 = !DILocalVariable(name: "beta_i", scope: !1458, file: !1, line: 627, type: !30)
!1496 = !DILocalVariable(name: "rin_i", scope: !1458, file: !1, line: 628, type: !30)
!1497 = !DILocalVariable(name: "rout_i", scope: !1458, file: !1, line: 629, type: !30)
!1498 = !DILocalVariable(name: "x_ii", scope: !1458, file: !1, line: 630, type: !31)
!1499 = !DILocalVariable(name: "y_ii", scope: !1458, file: !1, line: 631, type: !506)
!1500 = !DILocation(line: 571, column: 29, scope: !1458)
!1501 = !DILocation(line: 571, column: 52, scope: !1458)
!1502 = !DILocation(line: 571, column: 70, scope: !1458)
!1503 = !DILocation(line: 572, column: 16, scope: !1458)
!1504 = !DILocation(line: 572, column: 34, scope: !1458)
!1505 = !DILocation(line: 572, column: 51, scope: !1458)
!1506 = !DILocation(line: 573, column: 12, scope: !1458)
!1507 = !DILocation(line: 573, column: 30, scope: !1458)
!1508 = !DILocation(line: 573, column: 47, scope: !1458)
!1509 = !DILocation(line: 574, column: 8, scope: !1458)
!1510 = !DILocation(line: 574, column: 20, scope: !1458)
!1511 = !DILocation(line: 574, column: 27, scope: !1458)
!1512 = !DILocation(line: 574, column: 40, scope: !1458)
!1513 = !DILocation(line: 575, column: 11, scope: !1458)
!1514 = !DILocation(line: 575, column: 27, scope: !1458)
!1515 = !DILocation(line: 621, column: 3, scope: !1458)
!1516 = !DILocation(line: 621, column: 7, scope: !1458)
!1517 = !DILocation(line: 621, column: 10, scope: !1458)
!1518 = !DILocation(line: 621, column: 14, scope: !1458)
!1519 = !DILocation(line: 622, column: 3, scope: !1458)
!1520 = !DILocation(line: 622, column: 10, scope: !1458)
!1521 = !DILocation(line: 622, column: 24, scope: !1458)
!1522 = !DILocation(line: 622, column: 33, scope: !1458)
!1523 = !DILocation(line: 622, column: 39, scope: !1458)
!1524 = !DILocation(line: 622, column: 42, scope: !1458)
!1525 = !DILocation(line: 622, column: 46, scope: !1458)
!1526 = !DILocation(line: 622, column: 50, scope: !1458)
!1527 = !DILocation(line: 622, column: 53, scope: !1458)
!1528 = !DILocation(line: 622, column: 62, scope: !1458)
!1529 = !DILocation(line: 623, column: 3, scope: !1458)
!1530 = !DILocation(line: 623, column: 10, scope: !1458)
!1531 = !DILocation(line: 623, column: 16, scope: !1458)
!1532 = !DILocation(line: 623, column: 29, scope: !1458)
!1533 = !DILocation(line: 624, column: 3, scope: !1458)
!1534 = !DILocation(line: 624, column: 10, scope: !1458)
!1535 = !DILocation(line: 624, column: 16, scope: !1458)
!1536 = !DILocation(line: 625, column: 3, scope: !1458)
!1537 = !DILocation(line: 625, column: 10, scope: !1458)
!1538 = !DILocation(line: 625, column: 26, scope: !1458)
!1539 = !DILocation(line: 626, column: 3, scope: !1458)
!1540 = !DILocation(line: 626, column: 10, scope: !1458)
!1541 = !DILocation(line: 626, column: 30, scope: !1458)
!1542 = !DILocation(line: 627, column: 3, scope: !1458)
!1543 = !DILocation(line: 627, column: 10, scope: !1458)
!1544 = !DILocation(line: 627, column: 29, scope: !1458)
!1545 = !DILocation(line: 628, column: 3, scope: !1458)
!1546 = !DILocation(line: 628, column: 10, scope: !1458)
!1547 = !DILocation(line: 628, column: 28, scope: !1458)
!1548 = !DILocation(line: 629, column: 3, scope: !1458)
!1549 = !DILocation(line: 629, column: 10, scope: !1458)
!1550 = !DILocation(line: 629, column: 29, scope: !1458)
!1551 = !DILocation(line: 630, column: 3, scope: !1458)
!1552 = !DILocation(line: 630, column: 9, scope: !1458)
!1553 = !DILocation(line: 631, column: 3, scope: !1458)
!1554 = !DILocation(line: 631, column: 9, scope: !1458)
!1555 = !DILocation(line: 635, column: 8, scope: !1458)
!1556 = !DILocation(line: 636, column: 6, scope: !1458)
!1557 = !DILocation(line: 637, column: 6, scope: !1458)
!1558 = !DILocation(line: 638, column: 7, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1458, file: !1, line: 638, column: 7)
!1560 = !DILocation(line: 638, column: 12, scope: !1559)
!1561 = !DILocation(line: 638, column: 7, scope: !1458)
!1562 = !DILocation(line: 639, column: 12, scope: !1559)
!1563 = !DILocation(line: 639, column: 14, scope: !1559)
!1564 = !DILocation(line: 639, column: 10, scope: !1559)
!1565 = !DILocation(line: 639, column: 21, scope: !1559)
!1566 = !DILocation(line: 639, column: 19, scope: !1559)
!1567 = !DILocation(line: 639, column: 8, scope: !1559)
!1568 = !DILocation(line: 639, column: 5, scope: !1559)
!1569 = !DILocation(line: 640, column: 7, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1458, file: !1, line: 640, column: 7)
!1571 = !DILocation(line: 640, column: 12, scope: !1570)
!1572 = !DILocation(line: 640, column: 7, scope: !1458)
!1573 = !DILocation(line: 641, column: 12, scope: !1570)
!1574 = !DILocation(line: 641, column: 14, scope: !1570)
!1575 = !DILocation(line: 641, column: 10, scope: !1570)
!1576 = !DILocation(line: 641, column: 21, scope: !1570)
!1577 = !DILocation(line: 641, column: 19, scope: !1570)
!1578 = !DILocation(line: 641, column: 8, scope: !1570)
!1579 = !DILocation(line: 641, column: 5, scope: !1570)
!1580 = !DILocation(line: 644, column: 15, scope: !1458)
!1581 = !DILocation(line: 644, column: 10, scope: !1458)
!1582 = !DILocation(line: 644, column: 5, scope: !1458)
!1583 = !DILocation(line: 645, column: 10, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1458, file: !1, line: 645, column: 3)
!1585 = !DILocation(line: 645, column: 8, scope: !1584)
!1586 = !DILocation(line: 645, column: 15, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1584, file: !1, line: 645, column: 3)
!1588 = !DILocation(line: 645, column: 19, scope: !1587)
!1589 = !DILocation(line: 645, column: 17, scope: !1587)
!1590 = !DILocation(line: 645, column: 3, scope: !1584)
!1591 = !DILocation(line: 646, column: 12, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1587, file: !1, line: 645, column: 27)
!1593 = !DILocation(line: 646, column: 16, scope: !1592)
!1594 = !DILocation(line: 646, column: 10, scope: !1592)
!1595 = !DILocation(line: 647, column: 15, scope: !1592)
!1596 = !DILocation(line: 647, column: 19, scope: !1592)
!1597 = !DILocation(line: 647, column: 5, scope: !1592)
!1598 = !DILocation(line: 647, column: 13, scope: !1592)
!1599 = !DILocation(line: 648, column: 15, scope: !1592)
!1600 = !DILocation(line: 648, column: 19, scope: !1592)
!1601 = !DILocation(line: 648, column: 22, scope: !1592)
!1602 = !DILocation(line: 648, column: 5, scope: !1592)
!1603 = !DILocation(line: 648, column: 13, scope: !1592)
!1604 = !DILocation(line: 649, column: 16, scope: !1592)
!1605 = !DILocation(line: 649, column: 11, scope: !1592)
!1606 = !DILocation(line: 649, column: 8, scope: !1592)
!1607 = !DILocation(line: 650, column: 16, scope: !1592)
!1608 = !DILocation(line: 650, column: 26, scope: !1592)
!1609 = !DILocation(line: 650, column: 36, scope: !1592)
!1610 = !DILocation(line: 650, column: 46, scope: !1592)
!1611 = !DILocation(line: 650, column: 44, scope: !1592)
!1612 = !DILocation(line: 650, column: 34, scope: !1592)
!1613 = !DILocation(line: 650, column: 11, scope: !1592)
!1614 = !DILocation(line: 650, column: 8, scope: !1592)
!1615 = !DILocation(line: 651, column: 17, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1592, file: !1, line: 650, column: 56)
!1617 = !DILocation(line: 651, column: 27, scope: !1616)
!1618 = !DILocation(line: 651, column: 25, scope: !1616)
!1619 = !DILocation(line: 651, column: 7, scope: !1616)
!1620 = !DILocation(line: 651, column: 15, scope: !1616)
!1621 = !DILocation(line: 652, column: 17, scope: !1616)
!1622 = !DILocation(line: 652, column: 27, scope: !1616)
!1623 = !DILocation(line: 652, column: 25, scope: !1616)
!1624 = !DILocation(line: 652, column: 7, scope: !1616)
!1625 = !DILocation(line: 652, column: 15, scope: !1616)
!1626 = !DILocation(line: 654, column: 15, scope: !1592)
!1627 = !DILocation(line: 654, column: 25, scope: !1592)
!1628 = !DILocation(line: 654, column: 35, scope: !1592)
!1629 = !DILocation(line: 654, column: 45, scope: !1592)
!1630 = !DILocation(line: 654, column: 43, scope: !1592)
!1631 = !DILocation(line: 654, column: 33, scope: !1592)
!1632 = !DILocation(line: 654, column: 10, scope: !1592)
!1633 = !DILocation(line: 654, column: 7, scope: !1592)
!1634 = !DILocation(line: 655, column: 11, scope: !1592)
!1635 = !DILocation(line: 655, column: 8, scope: !1592)
!1636 = !DILocation(line: 656, column: 11, scope: !1592)
!1637 = !DILocation(line: 656, column: 8, scope: !1592)
!1638 = !DILocation(line: 657, column: 3, scope: !1592)
!1639 = !DILocation(line: 645, column: 22, scope: !1587)
!1640 = !DILocation(line: 645, column: 3, scope: !1587)
!1641 = distinct !{!1641, !1590, !1642, !175}
!1642 = !DILocation(line: 657, column: 3, scope: !1584)
!1643 = !DILocation(line: 658, column: 13, scope: !1458)
!1644 = !DILocation(line: 658, column: 26, scope: !1458)
!1645 = !DILocation(line: 658, column: 39, scope: !1458)
!1646 = !DILocation(line: 658, column: 52, scope: !1458)
!1647 = !DILocation(line: 658, column: 50, scope: !1458)
!1648 = !DILocation(line: 658, column: 37, scope: !1458)
!1649 = !DILocation(line: 658, column: 8, scope: !1458)
!1650 = !DILocation(line: 658, column: 5, scope: !1458)
!1651 = !DILocation(line: 660, column: 15, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1458, file: !1, line: 659, column: 3)
!1653 = !DILocation(line: 660, column: 27, scope: !1652)
!1654 = !DILocation(line: 660, column: 38, scope: !1652)
!1655 = !DILocation(line: 660, column: 50, scope: !1652)
!1656 = !DILocation(line: 660, column: 48, scope: !1652)
!1657 = !DILocation(line: 660, column: 36, scope: !1652)
!1658 = !DILocation(line: 660, column: 5, scope: !1652)
!1659 = !DILocation(line: 660, column: 13, scope: !1652)
!1660 = !DILocation(line: 661, column: 15, scope: !1652)
!1661 = !DILocation(line: 661, column: 27, scope: !1652)
!1662 = !DILocation(line: 661, column: 38, scope: !1652)
!1663 = !DILocation(line: 661, column: 50, scope: !1652)
!1664 = !DILocation(line: 661, column: 48, scope: !1652)
!1665 = !DILocation(line: 661, column: 36, scope: !1652)
!1666 = !DILocation(line: 661, column: 5, scope: !1652)
!1667 = !DILocation(line: 661, column: 13, scope: !1652)
!1668 = !DILocation(line: 664, column: 13, scope: !1458)
!1669 = !DILocation(line: 664, column: 23, scope: !1458)
!1670 = !DILocation(line: 664, column: 33, scope: !1458)
!1671 = !DILocation(line: 664, column: 43, scope: !1458)
!1672 = !DILocation(line: 664, column: 41, scope: !1458)
!1673 = !DILocation(line: 664, column: 31, scope: !1458)
!1674 = !DILocation(line: 664, column: 8, scope: !1458)
!1675 = !DILocation(line: 664, column: 5, scope: !1458)
!1676 = !DILocation(line: 666, column: 23, scope: !1458)
!1677 = !DILocation(line: 666, column: 14, scope: !1458)
!1678 = !DILocation(line: 667, column: 16, scope: !1458)
!1679 = !DILocation(line: 667, column: 7, scope: !1458)
!1680 = !DILocation(line: 666, column: 10, scope: !1458)
!1681 = !DILocation(line: 666, column: 8, scope: !1458)
!1682 = !DILocation(line: 668, column: 7, scope: !1458)
!1683 = !DILocation(line: 668, column: 5, scope: !1458)
!1684 = !DILocation(line: 670, column: 18, scope: !1458)
!1685 = !DILocation(line: 670, column: 16, scope: !1458)
!1686 = !DILocation(line: 671, column: 30, scope: !1458)
!1687 = !DILocation(line: 671, column: 21, scope: !1458)
!1688 = !DILocation(line: 672, column: 16, scope: !1458)
!1689 = !DILocation(line: 672, column: 7, scope: !1458)
!1690 = !DILocation(line: 671, column: 17, scope: !1458)
!1691 = !DILocation(line: 671, column: 15, scope: !1458)
!1692 = !DILocation(line: 673, column: 13, scope: !1458)
!1693 = !DILocation(line: 673, column: 11, scope: !1458)
!1694 = !DILocation(line: 674, column: 25, scope: !1458)
!1695 = !DILocation(line: 674, column: 16, scope: !1458)
!1696 = !DILocation(line: 675, column: 18, scope: !1458)
!1697 = !DILocation(line: 675, column: 9, scope: !1458)
!1698 = !DILocation(line: 674, column: 12, scope: !1458)
!1699 = !DILocation(line: 674, column: 10, scope: !1458)
!1700 = !DILocation(line: 676, column: 13, scope: !1458)
!1701 = !DILocation(line: 676, column: 25, scope: !1458)
!1702 = !DILocation(line: 676, column: 23, scope: !1458)
!1703 = !DILocation(line: 676, column: 40, scope: !1458)
!1704 = !DILocation(line: 676, column: 38, scope: !1458)
!1705 = !DILocation(line: 676, column: 3, scope: !1458)
!1706 = !DILocation(line: 676, column: 10, scope: !1458)
!1707 = !DILocation(line: 677, column: 13, scope: !1458)
!1708 = !DILocation(line: 677, column: 25, scope: !1458)
!1709 = !DILocation(line: 677, column: 23, scope: !1458)
!1710 = !DILocation(line: 677, column: 40, scope: !1458)
!1711 = !DILocation(line: 677, column: 38, scope: !1458)
!1712 = !DILocation(line: 677, column: 3, scope: !1458)
!1713 = !DILocation(line: 677, column: 10, scope: !1458)
!1714 = !DILocation(line: 678, column: 15, scope: !1458)
!1715 = !DILocation(line: 678, column: 24, scope: !1458)
!1716 = !DILocation(line: 678, column: 33, scope: !1458)
!1717 = !DILocation(line: 678, column: 42, scope: !1458)
!1718 = !DILocation(line: 678, column: 40, scope: !1458)
!1719 = !DILocation(line: 678, column: 31, scope: !1458)
!1720 = !DILocation(line: 678, column: 10, scope: !1458)
!1721 = !DILocation(line: 678, column: 8, scope: !1458)
!1722 = !DILocation(line: 681, column: 16, scope: !1458)
!1723 = !DILocation(line: 681, column: 29, scope: !1458)
!1724 = !DILocation(line: 681, column: 42, scope: !1458)
!1725 = !DILocation(line: 681, column: 55, scope: !1458)
!1726 = !DILocation(line: 681, column: 53, scope: !1458)
!1727 = !DILocation(line: 681, column: 40, scope: !1458)
!1728 = !DILocation(line: 681, column: 11, scope: !1458)
!1729 = !DILocation(line: 681, column: 9, scope: !1458)
!1730 = !DILocation(line: 681, column: 69, scope: !1458)
!1731 = !DILocation(line: 681, column: 71, scope: !1458)
!1732 = !DILocation(line: 681, column: 5, scope: !1458)
!1733 = !DILocation(line: 682, column: 7, scope: !1458)
!1734 = !DILocation(line: 682, column: 5, scope: !1458)
!1735 = !DILocation(line: 683, column: 7, scope: !1458)
!1736 = !DILocation(line: 683, column: 33, scope: !1458)
!1737 = !DILocation(line: 683, column: 42, scope: !1458)
!1738 = !DILocation(line: 683, column: 40, scope: !1458)
!1739 = !DILocation(line: 683, column: 57, scope: !1458)
!1740 = !DILocation(line: 683, column: 55, scope: !1458)
!1741 = !DILocation(line: 683, column: 5, scope: !1458)
!1742 = !DILocation(line: 684, column: 12, scope: !1458)
!1743 = !DILocation(line: 684, column: 10, scope: !1458)
!1744 = !DILocation(line: 684, column: 5, scope: !1458)
!1745 = !DILocation(line: 686, column: 17, scope: !1458)
!1746 = !DILocation(line: 686, column: 29, scope: !1458)
!1747 = !DILocation(line: 686, column: 27, scope: !1458)
!1748 = !DILocation(line: 686, column: 41, scope: !1458)
!1749 = !DILocation(line: 686, column: 43, scope: !1458)
!1750 = !DILocation(line: 686, column: 40, scope: !1458)
!1751 = !DILocation(line: 686, column: 38, scope: !1458)
!1752 = !DILocation(line: 686, column: 51, scope: !1458)
!1753 = !DILocation(line: 686, column: 61, scope: !1458)
!1754 = !DILocation(line: 686, column: 59, scope: !1458)
!1755 = !DILocation(line: 686, column: 48, scope: !1458)
!1756 = !DILocation(line: 686, column: 77, scope: !1458)
!1757 = !DILocation(line: 688, column: 4, scope: !1458)
!1758 = !DILocation(line: 688, column: 15, scope: !1458)
!1759 = !DILocation(line: 688, column: 13, scope: !1458)
!1760 = !DILocation(line: 688, column: 30, scope: !1458)
!1761 = !DILocation(line: 688, column: 44, scope: !1458)
!1762 = !DILocation(line: 689, column: 9, scope: !1458)
!1763 = !DILocation(line: 689, column: 23, scope: !1458)
!1764 = !DILocation(line: 689, column: 21, scope: !1458)
!1765 = !DILocation(line: 688, column: 56, scope: !1458)
!1766 = !DILocation(line: 688, column: 25, scope: !1458)
!1767 = !DILocation(line: 688, column: 23, scope: !1458)
!1768 = !DILocation(line: 687, column: 4, scope: !1458)
!1769 = !DILocation(line: 690, column: 4, scope: !1458)
!1770 = !DILocation(line: 689, column: 36, scope: !1458)
!1771 = !DILocation(line: 686, column: 22, scope: !1458)
!1772 = !DILocation(line: 686, column: 4, scope: !1458)
!1773 = !DILocation(line: 686, column: 15, scope: !1458)
!1774 = !DILocation(line: 691, column: 1, scope: !1458)
!1775 = distinct !DISubprogram(name: "test_BLAS_cdot_c_s", scope: !1, file: !1, line: 694, type: !1776, scopeLine: 743, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1778)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{null, !43, !3, !462, !462, !462, !462, !32, !32, !464, !43, !30, !43, !29, !29, !32}
!1778 = !{!1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816}
!1779 = !DILocalVariable(name: "n", arg: 1, scope: !1775, file: !1, line: 694, type: !43)
!1780 = !DILocalVariable(name: "conj", arg: 2, scope: !1775, file: !1, line: 694, type: !3)
!1781 = !DILocalVariable(name: "alpha", arg: 3, scope: !1775, file: !1, line: 694, type: !462)
!1782 = !DILocalVariable(name: "beta", arg: 4, scope: !1775, file: !1, line: 695, type: !462)
!1783 = !DILocalVariable(name: "rin", arg: 5, scope: !1775, file: !1, line: 695, type: !462)
!1784 = !DILocalVariable(name: "rout", arg: 6, scope: !1775, file: !1, line: 695, type: !462)
!1785 = !DILocalVariable(name: "r_true_l", arg: 7, scope: !1775, file: !1, line: 696, type: !32)
!1786 = !DILocalVariable(name: "r_true_t", arg: 8, scope: !1775, file: !1, line: 696, type: !32)
!1787 = !DILocalVariable(name: "x", arg: 9, scope: !1775, file: !1, line: 696, type: !464)
!1788 = !DILocalVariable(name: "incx", arg: 10, scope: !1775, file: !1, line: 696, type: !43)
!1789 = !DILocalVariable(name: "y", arg: 11, scope: !1775, file: !1, line: 697, type: !30)
!1790 = !DILocalVariable(name: "incy", arg: 12, scope: !1775, file: !1, line: 697, type: !43)
!1791 = !DILocalVariable(name: "eps_int", arg: 13, scope: !1775, file: !1, line: 697, type: !29)
!1792 = !DILocalVariable(name: "un_int", arg: 14, scope: !1775, file: !1, line: 697, type: !29)
!1793 = !DILocalVariable(name: "test_ratio", arg: 15, scope: !1775, file: !1, line: 698, type: !32)
!1794 = !DILocalVariable(name: "i", scope: !1775, file: !1, line: 744, type: !43)
!1795 = !DILocalVariable(name: "ix", scope: !1775, file: !1, line: 744, type: !43)
!1796 = !DILocalVariable(name: "iy", scope: !1775, file: !1, line: 744, type: !43)
!1797 = !DILocalVariable(name: "eps_accurate", scope: !1775, file: !1, line: 745, type: !29)
!1798 = !DILocalVariable(name: "eps_out", scope: !1775, file: !1, line: 745, type: !29)
!1799 = !DILocalVariable(name: "tmp1", scope: !1775, file: !1, line: 745, type: !29)
!1800 = !DILocalVariable(name: "S", scope: !1775, file: !1, line: 745, type: !29)
!1801 = !DILocalVariable(name: "S1", scope: !1775, file: !1, line: 745, type: !29)
!1802 = !DILocalVariable(name: "S2", scope: !1775, file: !1, line: 745, type: !29)
!1803 = !DILocalVariable(name: "U", scope: !1775, file: !1, line: 745, type: !29)
!1804 = !DILocalVariable(name: "prod", scope: !1775, file: !1, line: 745, type: !492)
!1805 = !DILocalVariable(name: "tmp", scope: !1775, file: !1, line: 745, type: !492)
!1806 = !DILocalVariable(name: "un_d", scope: !1775, file: !1, line: 746, type: !29)
!1807 = !DILocalVariable(name: "un_accurate", scope: !1775, file: !1, line: 746, type: !29)
!1808 = !DILocalVariable(name: "un_out", scope: !1775, file: !1, line: 746, type: !29)
!1809 = !DILocalVariable(name: "x_i", scope: !1775, file: !1, line: 747, type: !30)
!1810 = !DILocalVariable(name: "y_i", scope: !1775, file: !1, line: 748, type: !30)
!1811 = !DILocalVariable(name: "alpha_i", scope: !1775, file: !1, line: 749, type: !30)
!1812 = !DILocalVariable(name: "beta_i", scope: !1775, file: !1, line: 750, type: !30)
!1813 = !DILocalVariable(name: "rin_i", scope: !1775, file: !1, line: 751, type: !30)
!1814 = !DILocalVariable(name: "rout_i", scope: !1775, file: !1, line: 752, type: !30)
!1815 = !DILocalVariable(name: "x_ii", scope: !1775, file: !1, line: 753, type: !506)
!1816 = !DILocalVariable(name: "y_ii", scope: !1775, file: !1, line: 754, type: !31)
!1817 = !DILocation(line: 694, column: 29, scope: !1775)
!1818 = !DILocation(line: 694, column: 52, scope: !1775)
!1819 = !DILocation(line: 694, column: 70, scope: !1775)
!1820 = !DILocation(line: 695, column: 16, scope: !1775)
!1821 = !DILocation(line: 695, column: 34, scope: !1775)
!1822 = !DILocation(line: 695, column: 51, scope: !1775)
!1823 = !DILocation(line: 696, column: 12, scope: !1775)
!1824 = !DILocation(line: 696, column: 30, scope: !1775)
!1825 = !DILocation(line: 696, column: 46, scope: !1775)
!1826 = !DILocation(line: 696, column: 53, scope: !1775)
!1827 = !DILocation(line: 697, column: 11, scope: !1775)
!1828 = !DILocation(line: 697, column: 18, scope: !1775)
!1829 = !DILocation(line: 697, column: 31, scope: !1775)
!1830 = !DILocation(line: 697, column: 47, scope: !1775)
!1831 = !DILocation(line: 698, column: 12, scope: !1775)
!1832 = !DILocation(line: 744, column: 3, scope: !1775)
!1833 = !DILocation(line: 744, column: 7, scope: !1775)
!1834 = !DILocation(line: 744, column: 10, scope: !1775)
!1835 = !DILocation(line: 744, column: 14, scope: !1775)
!1836 = !DILocation(line: 745, column: 3, scope: !1775)
!1837 = !DILocation(line: 745, column: 10, scope: !1775)
!1838 = !DILocation(line: 745, column: 24, scope: !1775)
!1839 = !DILocation(line: 745, column: 33, scope: !1775)
!1840 = !DILocation(line: 745, column: 39, scope: !1775)
!1841 = !DILocation(line: 745, column: 42, scope: !1775)
!1842 = !DILocation(line: 745, column: 46, scope: !1775)
!1843 = !DILocation(line: 745, column: 50, scope: !1775)
!1844 = !DILocation(line: 745, column: 53, scope: !1775)
!1845 = !DILocation(line: 745, column: 62, scope: !1775)
!1846 = !DILocation(line: 746, column: 3, scope: !1775)
!1847 = !DILocation(line: 746, column: 10, scope: !1775)
!1848 = !DILocation(line: 746, column: 16, scope: !1775)
!1849 = !DILocation(line: 746, column: 29, scope: !1775)
!1850 = !DILocation(line: 747, column: 3, scope: !1775)
!1851 = !DILocation(line: 747, column: 10, scope: !1775)
!1852 = !DILocation(line: 747, column: 26, scope: !1775)
!1853 = !DILocation(line: 748, column: 3, scope: !1775)
!1854 = !DILocation(line: 748, column: 10, scope: !1775)
!1855 = !DILocation(line: 748, column: 16, scope: !1775)
!1856 = !DILocation(line: 749, column: 3, scope: !1775)
!1857 = !DILocation(line: 749, column: 10, scope: !1775)
!1858 = !DILocation(line: 749, column: 30, scope: !1775)
!1859 = !DILocation(line: 750, column: 3, scope: !1775)
!1860 = !DILocation(line: 750, column: 10, scope: !1775)
!1861 = !DILocation(line: 750, column: 29, scope: !1775)
!1862 = !DILocation(line: 751, column: 3, scope: !1775)
!1863 = !DILocation(line: 751, column: 10, scope: !1775)
!1864 = !DILocation(line: 751, column: 28, scope: !1775)
!1865 = !DILocation(line: 752, column: 3, scope: !1775)
!1866 = !DILocation(line: 752, column: 10, scope: !1775)
!1867 = !DILocation(line: 752, column: 29, scope: !1775)
!1868 = !DILocation(line: 753, column: 3, scope: !1775)
!1869 = !DILocation(line: 753, column: 9, scope: !1775)
!1870 = !DILocation(line: 754, column: 3, scope: !1775)
!1871 = !DILocation(line: 754, column: 9, scope: !1775)
!1872 = !DILocation(line: 757, column: 8, scope: !1775)
!1873 = !DILocation(line: 759, column: 6, scope: !1775)
!1874 = !DILocation(line: 760, column: 6, scope: !1775)
!1875 = !DILocation(line: 761, column: 7, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1775, file: !1, line: 761, column: 7)
!1877 = !DILocation(line: 761, column: 12, scope: !1876)
!1878 = !DILocation(line: 761, column: 7, scope: !1775)
!1879 = !DILocation(line: 762, column: 12, scope: !1876)
!1880 = !DILocation(line: 762, column: 14, scope: !1876)
!1881 = !DILocation(line: 762, column: 10, scope: !1876)
!1882 = !DILocation(line: 762, column: 21, scope: !1876)
!1883 = !DILocation(line: 762, column: 19, scope: !1876)
!1884 = !DILocation(line: 762, column: 8, scope: !1876)
!1885 = !DILocation(line: 762, column: 5, scope: !1876)
!1886 = !DILocation(line: 763, column: 7, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1775, file: !1, line: 763, column: 7)
!1888 = !DILocation(line: 763, column: 12, scope: !1887)
!1889 = !DILocation(line: 763, column: 7, scope: !1775)
!1890 = !DILocation(line: 764, column: 12, scope: !1887)
!1891 = !DILocation(line: 764, column: 14, scope: !1887)
!1892 = !DILocation(line: 764, column: 10, scope: !1887)
!1893 = !DILocation(line: 764, column: 21, scope: !1887)
!1894 = !DILocation(line: 764, column: 19, scope: !1887)
!1895 = !DILocation(line: 764, column: 8, scope: !1887)
!1896 = !DILocation(line: 764, column: 5, scope: !1887)
!1897 = !DILocation(line: 767, column: 15, scope: !1775)
!1898 = !DILocation(line: 767, column: 10, scope: !1775)
!1899 = !DILocation(line: 767, column: 5, scope: !1775)
!1900 = !DILocation(line: 768, column: 10, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1775, file: !1, line: 768, column: 3)
!1902 = !DILocation(line: 768, column: 8, scope: !1901)
!1903 = !DILocation(line: 768, column: 15, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1901, file: !1, line: 768, column: 3)
!1905 = !DILocation(line: 768, column: 19, scope: !1904)
!1906 = !DILocation(line: 768, column: 17, scope: !1904)
!1907 = !DILocation(line: 768, column: 3, scope: !1901)
!1908 = !DILocation(line: 769, column: 15, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1904, file: !1, line: 768, column: 27)
!1910 = !DILocation(line: 769, column: 19, scope: !1909)
!1911 = !DILocation(line: 769, column: 5, scope: !1909)
!1912 = !DILocation(line: 769, column: 13, scope: !1909)
!1913 = !DILocation(line: 770, column: 15, scope: !1909)
!1914 = !DILocation(line: 770, column: 19, scope: !1909)
!1915 = !DILocation(line: 770, column: 22, scope: !1909)
!1916 = !DILocation(line: 770, column: 5, scope: !1909)
!1917 = !DILocation(line: 770, column: 13, scope: !1909)
!1918 = !DILocation(line: 771, column: 12, scope: !1909)
!1919 = !DILocation(line: 771, column: 16, scope: !1909)
!1920 = !DILocation(line: 771, column: 10, scope: !1909)
!1921 = !DILocation(line: 772, column: 9, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1909, file: !1, line: 772, column: 9)
!1923 = !DILocation(line: 772, column: 14, scope: !1922)
!1924 = !DILocation(line: 772, column: 9, scope: !1909)
!1925 = !DILocation(line: 773, column: 18, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1922, file: !1, line: 772, column: 28)
!1927 = !DILocation(line: 773, column: 17, scope: !1926)
!1928 = !DILocation(line: 773, column: 7, scope: !1926)
!1929 = !DILocation(line: 773, column: 15, scope: !1926)
!1930 = !DILocation(line: 774, column: 5, scope: !1926)
!1931 = !DILocation(line: 775, column: 16, scope: !1909)
!1932 = !DILocation(line: 775, column: 26, scope: !1909)
!1933 = !DILocation(line: 775, column: 36, scope: !1909)
!1934 = !DILocation(line: 775, column: 46, scope: !1909)
!1935 = !DILocation(line: 775, column: 44, scope: !1909)
!1936 = !DILocation(line: 775, column: 34, scope: !1909)
!1937 = !DILocation(line: 775, column: 11, scope: !1909)
!1938 = !DILocation(line: 775, column: 8, scope: !1909)
!1939 = !DILocation(line: 776, column: 16, scope: !1909)
!1940 = !DILocation(line: 776, column: 11, scope: !1909)
!1941 = !DILocation(line: 776, column: 8, scope: !1909)
!1942 = !DILocation(line: 777, column: 17, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1909, file: !1, line: 776, column: 23)
!1944 = !DILocation(line: 777, column: 27, scope: !1943)
!1945 = !DILocation(line: 777, column: 25, scope: !1943)
!1946 = !DILocation(line: 777, column: 7, scope: !1943)
!1947 = !DILocation(line: 777, column: 15, scope: !1943)
!1948 = !DILocation(line: 778, column: 17, scope: !1943)
!1949 = !DILocation(line: 778, column: 27, scope: !1943)
!1950 = !DILocation(line: 778, column: 25, scope: !1943)
!1951 = !DILocation(line: 778, column: 7, scope: !1943)
!1952 = !DILocation(line: 778, column: 15, scope: !1943)
!1953 = !DILocation(line: 780, column: 15, scope: !1909)
!1954 = !DILocation(line: 780, column: 25, scope: !1909)
!1955 = !DILocation(line: 780, column: 35, scope: !1909)
!1956 = !DILocation(line: 780, column: 45, scope: !1909)
!1957 = !DILocation(line: 780, column: 43, scope: !1909)
!1958 = !DILocation(line: 780, column: 33, scope: !1909)
!1959 = !DILocation(line: 780, column: 10, scope: !1909)
!1960 = !DILocation(line: 780, column: 7, scope: !1909)
!1961 = !DILocation(line: 781, column: 11, scope: !1909)
!1962 = !DILocation(line: 781, column: 8, scope: !1909)
!1963 = !DILocation(line: 782, column: 11, scope: !1909)
!1964 = !DILocation(line: 782, column: 8, scope: !1909)
!1965 = !DILocation(line: 783, column: 3, scope: !1909)
!1966 = !DILocation(line: 768, column: 22, scope: !1904)
!1967 = !DILocation(line: 768, column: 3, scope: !1904)
!1968 = distinct !{!1968, !1907, !1969, !175}
!1969 = !DILocation(line: 783, column: 3, scope: !1901)
!1970 = !DILocation(line: 784, column: 13, scope: !1775)
!1971 = !DILocation(line: 784, column: 26, scope: !1775)
!1972 = !DILocation(line: 784, column: 39, scope: !1775)
!1973 = !DILocation(line: 784, column: 52, scope: !1775)
!1974 = !DILocation(line: 784, column: 50, scope: !1775)
!1975 = !DILocation(line: 784, column: 37, scope: !1775)
!1976 = !DILocation(line: 784, column: 8, scope: !1775)
!1977 = !DILocation(line: 784, column: 5, scope: !1775)
!1978 = !DILocation(line: 786, column: 15, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1775, file: !1, line: 785, column: 3)
!1980 = !DILocation(line: 786, column: 27, scope: !1979)
!1981 = !DILocation(line: 786, column: 38, scope: !1979)
!1982 = !DILocation(line: 786, column: 50, scope: !1979)
!1983 = !DILocation(line: 786, column: 48, scope: !1979)
!1984 = !DILocation(line: 786, column: 36, scope: !1979)
!1985 = !DILocation(line: 786, column: 5, scope: !1979)
!1986 = !DILocation(line: 786, column: 13, scope: !1979)
!1987 = !DILocation(line: 787, column: 15, scope: !1979)
!1988 = !DILocation(line: 787, column: 27, scope: !1979)
!1989 = !DILocation(line: 787, column: 38, scope: !1979)
!1990 = !DILocation(line: 787, column: 50, scope: !1979)
!1991 = !DILocation(line: 787, column: 48, scope: !1979)
!1992 = !DILocation(line: 787, column: 36, scope: !1979)
!1993 = !DILocation(line: 787, column: 5, scope: !1979)
!1994 = !DILocation(line: 787, column: 13, scope: !1979)
!1995 = !DILocation(line: 790, column: 13, scope: !1775)
!1996 = !DILocation(line: 790, column: 23, scope: !1775)
!1997 = !DILocation(line: 790, column: 33, scope: !1775)
!1998 = !DILocation(line: 790, column: 43, scope: !1775)
!1999 = !DILocation(line: 790, column: 41, scope: !1775)
!2000 = !DILocation(line: 790, column: 31, scope: !1775)
!2001 = !DILocation(line: 790, column: 8, scope: !1775)
!2002 = !DILocation(line: 790, column: 5, scope: !1775)
!2003 = !DILocation(line: 792, column: 23, scope: !1775)
!2004 = !DILocation(line: 792, column: 14, scope: !1775)
!2005 = !DILocation(line: 793, column: 16, scope: !1775)
!2006 = !DILocation(line: 793, column: 7, scope: !1775)
!2007 = !DILocation(line: 792, column: 10, scope: !1775)
!2008 = !DILocation(line: 792, column: 8, scope: !1775)
!2009 = !DILocation(line: 794, column: 7, scope: !1775)
!2010 = !DILocation(line: 794, column: 5, scope: !1775)
!2011 = !DILocation(line: 796, column: 18, scope: !1775)
!2012 = !DILocation(line: 796, column: 16, scope: !1775)
!2013 = !DILocation(line: 797, column: 30, scope: !1775)
!2014 = !DILocation(line: 797, column: 21, scope: !1775)
!2015 = !DILocation(line: 798, column: 16, scope: !1775)
!2016 = !DILocation(line: 798, column: 7, scope: !1775)
!2017 = !DILocation(line: 797, column: 17, scope: !1775)
!2018 = !DILocation(line: 797, column: 15, scope: !1775)
!2019 = !DILocation(line: 799, column: 13, scope: !1775)
!2020 = !DILocation(line: 799, column: 11, scope: !1775)
!2021 = !DILocation(line: 800, column: 25, scope: !1775)
!2022 = !DILocation(line: 800, column: 16, scope: !1775)
!2023 = !DILocation(line: 801, column: 18, scope: !1775)
!2024 = !DILocation(line: 801, column: 9, scope: !1775)
!2025 = !DILocation(line: 800, column: 12, scope: !1775)
!2026 = !DILocation(line: 800, column: 10, scope: !1775)
!2027 = !DILocation(line: 802, column: 13, scope: !1775)
!2028 = !DILocation(line: 802, column: 25, scope: !1775)
!2029 = !DILocation(line: 802, column: 23, scope: !1775)
!2030 = !DILocation(line: 802, column: 40, scope: !1775)
!2031 = !DILocation(line: 802, column: 38, scope: !1775)
!2032 = !DILocation(line: 802, column: 3, scope: !1775)
!2033 = !DILocation(line: 802, column: 10, scope: !1775)
!2034 = !DILocation(line: 803, column: 13, scope: !1775)
!2035 = !DILocation(line: 803, column: 25, scope: !1775)
!2036 = !DILocation(line: 803, column: 23, scope: !1775)
!2037 = !DILocation(line: 803, column: 40, scope: !1775)
!2038 = !DILocation(line: 803, column: 38, scope: !1775)
!2039 = !DILocation(line: 803, column: 3, scope: !1775)
!2040 = !DILocation(line: 803, column: 10, scope: !1775)
!2041 = !DILocation(line: 804, column: 15, scope: !1775)
!2042 = !DILocation(line: 804, column: 24, scope: !1775)
!2043 = !DILocation(line: 804, column: 33, scope: !1775)
!2044 = !DILocation(line: 804, column: 42, scope: !1775)
!2045 = !DILocation(line: 804, column: 40, scope: !1775)
!2046 = !DILocation(line: 804, column: 31, scope: !1775)
!2047 = !DILocation(line: 804, column: 10, scope: !1775)
!2048 = !DILocation(line: 804, column: 8, scope: !1775)
!2049 = !DILocation(line: 807, column: 16, scope: !1775)
!2050 = !DILocation(line: 807, column: 29, scope: !1775)
!2051 = !DILocation(line: 807, column: 42, scope: !1775)
!2052 = !DILocation(line: 807, column: 55, scope: !1775)
!2053 = !DILocation(line: 807, column: 53, scope: !1775)
!2054 = !DILocation(line: 807, column: 40, scope: !1775)
!2055 = !DILocation(line: 807, column: 11, scope: !1775)
!2056 = !DILocation(line: 807, column: 9, scope: !1775)
!2057 = !DILocation(line: 807, column: 69, scope: !1775)
!2058 = !DILocation(line: 807, column: 71, scope: !1775)
!2059 = !DILocation(line: 807, column: 5, scope: !1775)
!2060 = !DILocation(line: 808, column: 7, scope: !1775)
!2061 = !DILocation(line: 808, column: 5, scope: !1775)
!2062 = !DILocation(line: 809, column: 7, scope: !1775)
!2063 = !DILocation(line: 809, column: 33, scope: !1775)
!2064 = !DILocation(line: 809, column: 42, scope: !1775)
!2065 = !DILocation(line: 809, column: 40, scope: !1775)
!2066 = !DILocation(line: 809, column: 57, scope: !1775)
!2067 = !DILocation(line: 809, column: 55, scope: !1775)
!2068 = !DILocation(line: 809, column: 5, scope: !1775)
!2069 = !DILocation(line: 810, column: 12, scope: !1775)
!2070 = !DILocation(line: 810, column: 10, scope: !1775)
!2071 = !DILocation(line: 810, column: 5, scope: !1775)
!2072 = !DILocation(line: 812, column: 17, scope: !1775)
!2073 = !DILocation(line: 812, column: 29, scope: !1775)
!2074 = !DILocation(line: 812, column: 27, scope: !1775)
!2075 = !DILocation(line: 812, column: 41, scope: !1775)
!2076 = !DILocation(line: 812, column: 43, scope: !1775)
!2077 = !DILocation(line: 812, column: 40, scope: !1775)
!2078 = !DILocation(line: 812, column: 38, scope: !1775)
!2079 = !DILocation(line: 812, column: 51, scope: !1775)
!2080 = !DILocation(line: 812, column: 61, scope: !1775)
!2081 = !DILocation(line: 812, column: 59, scope: !1775)
!2082 = !DILocation(line: 812, column: 48, scope: !1775)
!2083 = !DILocation(line: 812, column: 77, scope: !1775)
!2084 = !DILocation(line: 814, column: 4, scope: !1775)
!2085 = !DILocation(line: 814, column: 15, scope: !1775)
!2086 = !DILocation(line: 814, column: 13, scope: !1775)
!2087 = !DILocation(line: 814, column: 30, scope: !1775)
!2088 = !DILocation(line: 814, column: 44, scope: !1775)
!2089 = !DILocation(line: 815, column: 9, scope: !1775)
!2090 = !DILocation(line: 815, column: 23, scope: !1775)
!2091 = !DILocation(line: 815, column: 21, scope: !1775)
!2092 = !DILocation(line: 814, column: 56, scope: !1775)
!2093 = !DILocation(line: 814, column: 25, scope: !1775)
!2094 = !DILocation(line: 814, column: 23, scope: !1775)
!2095 = !DILocation(line: 813, column: 4, scope: !1775)
!2096 = !DILocation(line: 816, column: 4, scope: !1775)
!2097 = !DILocation(line: 815, column: 36, scope: !1775)
!2098 = !DILocation(line: 812, column: 22, scope: !1775)
!2099 = !DILocation(line: 812, column: 4, scope: !1775)
!2100 = !DILocation(line: 812, column: 15, scope: !1775)
!2101 = !DILocation(line: 817, column: 1, scope: !1775)
!2102 = distinct !DISubprogram(name: "test_BLAS_zdot_d_d", scope: !1, file: !1, line: 820, type: !2103, scopeLine: 869, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2105)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{null, !43, !3, !462, !462, !462, !462, !32, !32, !32, !43, !32, !43, !29, !29, !32}
!2105 = !{!2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143}
!2106 = !DILocalVariable(name: "n", arg: 1, scope: !2102, file: !1, line: 820, type: !43)
!2107 = !DILocalVariable(name: "conj", arg: 2, scope: !2102, file: !1, line: 820, type: !3)
!2108 = !DILocalVariable(name: "alpha", arg: 3, scope: !2102, file: !1, line: 820, type: !462)
!2109 = !DILocalVariable(name: "beta", arg: 4, scope: !2102, file: !1, line: 821, type: !462)
!2110 = !DILocalVariable(name: "rin", arg: 5, scope: !2102, file: !1, line: 821, type: !462)
!2111 = !DILocalVariable(name: "rout", arg: 6, scope: !2102, file: !1, line: 821, type: !462)
!2112 = !DILocalVariable(name: "r_true_l", arg: 7, scope: !2102, file: !1, line: 822, type: !32)
!2113 = !DILocalVariable(name: "r_true_t", arg: 8, scope: !2102, file: !1, line: 822, type: !32)
!2114 = !DILocalVariable(name: "x", arg: 9, scope: !2102, file: !1, line: 822, type: !32)
!2115 = !DILocalVariable(name: "incx", arg: 10, scope: !2102, file: !1, line: 823, type: !43)
!2116 = !DILocalVariable(name: "y", arg: 11, scope: !2102, file: !1, line: 823, type: !32)
!2117 = !DILocalVariable(name: "incy", arg: 12, scope: !2102, file: !1, line: 823, type: !43)
!2118 = !DILocalVariable(name: "eps_int", arg: 13, scope: !2102, file: !1, line: 823, type: !29)
!2119 = !DILocalVariable(name: "un_int", arg: 14, scope: !2102, file: !1, line: 824, type: !29)
!2120 = !DILocalVariable(name: "test_ratio", arg: 15, scope: !2102, file: !1, line: 824, type: !32)
!2121 = !DILocalVariable(name: "i", scope: !2102, file: !1, line: 870, type: !43)
!2122 = !DILocalVariable(name: "ix", scope: !2102, file: !1, line: 870, type: !43)
!2123 = !DILocalVariable(name: "iy", scope: !2102, file: !1, line: 870, type: !43)
!2124 = !DILocalVariable(name: "eps_accurate", scope: !2102, file: !1, line: 871, type: !29)
!2125 = !DILocalVariable(name: "eps_out", scope: !2102, file: !1, line: 871, type: !29)
!2126 = !DILocalVariable(name: "tmp1", scope: !2102, file: !1, line: 871, type: !29)
!2127 = !DILocalVariable(name: "S", scope: !2102, file: !1, line: 871, type: !29)
!2128 = !DILocalVariable(name: "S1", scope: !2102, file: !1, line: 871, type: !29)
!2129 = !DILocalVariable(name: "S2", scope: !2102, file: !1, line: 871, type: !29)
!2130 = !DILocalVariable(name: "U", scope: !2102, file: !1, line: 871, type: !29)
!2131 = !DILocalVariable(name: "prod", scope: !2102, file: !1, line: 871, type: !492)
!2132 = !DILocalVariable(name: "tmp", scope: !2102, file: !1, line: 871, type: !492)
!2133 = !DILocalVariable(name: "un_d", scope: !2102, file: !1, line: 872, type: !29)
!2134 = !DILocalVariable(name: "un_accurate", scope: !2102, file: !1, line: 872, type: !29)
!2135 = !DILocalVariable(name: "un_out", scope: !2102, file: !1, line: 872, type: !29)
!2136 = !DILocalVariable(name: "x_i", scope: !2102, file: !1, line: 873, type: !32)
!2137 = !DILocalVariable(name: "y_i", scope: !2102, file: !1, line: 874, type: !32)
!2138 = !DILocalVariable(name: "alpha_i", scope: !2102, file: !1, line: 875, type: !32)
!2139 = !DILocalVariable(name: "beta_i", scope: !2102, file: !1, line: 876, type: !32)
!2140 = !DILocalVariable(name: "rin_i", scope: !2102, file: !1, line: 877, type: !32)
!2141 = !DILocalVariable(name: "rout_i", scope: !2102, file: !1, line: 878, type: !32)
!2142 = !DILocalVariable(name: "x_ii", scope: !2102, file: !1, line: 879, type: !29)
!2143 = !DILocalVariable(name: "y_ii", scope: !2102, file: !1, line: 880, type: !29)
!2144 = !DILocation(line: 820, column: 29, scope: !2102)
!2145 = !DILocation(line: 820, column: 52, scope: !2102)
!2146 = !DILocation(line: 820, column: 70, scope: !2102)
!2147 = !DILocation(line: 821, column: 16, scope: !2102)
!2148 = !DILocation(line: 821, column: 34, scope: !2102)
!2149 = !DILocation(line: 821, column: 51, scope: !2102)
!2150 = !DILocation(line: 822, column: 12, scope: !2102)
!2151 = !DILocation(line: 822, column: 30, scope: !2102)
!2152 = !DILocation(line: 822, column: 48, scope: !2102)
!2153 = !DILocation(line: 823, column: 8, scope: !2102)
!2154 = !DILocation(line: 823, column: 22, scope: !2102)
!2155 = !DILocation(line: 823, column: 29, scope: !2102)
!2156 = !DILocation(line: 823, column: 42, scope: !2102)
!2157 = !DILocation(line: 824, column: 11, scope: !2102)
!2158 = !DILocation(line: 824, column: 27, scope: !2102)
!2159 = !DILocation(line: 870, column: 3, scope: !2102)
!2160 = !DILocation(line: 870, column: 7, scope: !2102)
!2161 = !DILocation(line: 870, column: 10, scope: !2102)
!2162 = !DILocation(line: 870, column: 14, scope: !2102)
!2163 = !DILocation(line: 871, column: 3, scope: !2102)
!2164 = !DILocation(line: 871, column: 10, scope: !2102)
!2165 = !DILocation(line: 871, column: 24, scope: !2102)
!2166 = !DILocation(line: 871, column: 33, scope: !2102)
!2167 = !DILocation(line: 871, column: 39, scope: !2102)
!2168 = !DILocation(line: 871, column: 42, scope: !2102)
!2169 = !DILocation(line: 871, column: 46, scope: !2102)
!2170 = !DILocation(line: 871, column: 50, scope: !2102)
!2171 = !DILocation(line: 871, column: 53, scope: !2102)
!2172 = !DILocation(line: 871, column: 62, scope: !2102)
!2173 = !DILocation(line: 872, column: 3, scope: !2102)
!2174 = !DILocation(line: 872, column: 10, scope: !2102)
!2175 = !DILocation(line: 872, column: 16, scope: !2102)
!2176 = !DILocation(line: 872, column: 29, scope: !2102)
!2177 = !DILocation(line: 873, column: 3, scope: !2102)
!2178 = !DILocation(line: 873, column: 11, scope: !2102)
!2179 = !DILocation(line: 873, column: 17, scope: !2102)
!2180 = !DILocation(line: 874, column: 3, scope: !2102)
!2181 = !DILocation(line: 874, column: 11, scope: !2102)
!2182 = !DILocation(line: 874, column: 17, scope: !2102)
!2183 = !DILocation(line: 875, column: 3, scope: !2102)
!2184 = !DILocation(line: 875, column: 11, scope: !2102)
!2185 = !DILocation(line: 875, column: 32, scope: !2102)
!2186 = !DILocation(line: 876, column: 3, scope: !2102)
!2187 = !DILocation(line: 876, column: 11, scope: !2102)
!2188 = !DILocation(line: 876, column: 31, scope: !2102)
!2189 = !DILocation(line: 877, column: 3, scope: !2102)
!2190 = !DILocation(line: 877, column: 11, scope: !2102)
!2191 = !DILocation(line: 877, column: 30, scope: !2102)
!2192 = !DILocation(line: 878, column: 3, scope: !2102)
!2193 = !DILocation(line: 878, column: 11, scope: !2102)
!2194 = !DILocation(line: 878, column: 31, scope: !2102)
!2195 = !DILocation(line: 879, column: 3, scope: !2102)
!2196 = !DILocation(line: 879, column: 10, scope: !2102)
!2197 = !DILocation(line: 880, column: 3, scope: !2102)
!2198 = !DILocation(line: 880, column: 10, scope: !2102)
!2199 = !DILocation(line: 885, column: 6, scope: !2102)
!2200 = !DILocation(line: 886, column: 6, scope: !2102)
!2201 = !DILocation(line: 887, column: 7, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2102, file: !1, line: 887, column: 7)
!2203 = !DILocation(line: 887, column: 12, scope: !2202)
!2204 = !DILocation(line: 887, column: 7, scope: !2102)
!2205 = !DILocation(line: 888, column: 12, scope: !2202)
!2206 = !DILocation(line: 888, column: 14, scope: !2202)
!2207 = !DILocation(line: 888, column: 10, scope: !2202)
!2208 = !DILocation(line: 888, column: 21, scope: !2202)
!2209 = !DILocation(line: 888, column: 19, scope: !2202)
!2210 = !DILocation(line: 888, column: 8, scope: !2202)
!2211 = !DILocation(line: 888, column: 5, scope: !2202)
!2212 = !DILocation(line: 889, column: 7, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2102, file: !1, line: 889, column: 7)
!2214 = !DILocation(line: 889, column: 12, scope: !2213)
!2215 = !DILocation(line: 889, column: 7, scope: !2102)
!2216 = !DILocation(line: 890, column: 12, scope: !2213)
!2217 = !DILocation(line: 890, column: 14, scope: !2213)
!2218 = !DILocation(line: 890, column: 10, scope: !2213)
!2219 = !DILocation(line: 890, column: 21, scope: !2213)
!2220 = !DILocation(line: 890, column: 19, scope: !2213)
!2221 = !DILocation(line: 890, column: 8, scope: !2213)
!2222 = !DILocation(line: 890, column: 5, scope: !2213)
!2223 = !DILocation(line: 893, column: 15, scope: !2102)
!2224 = !DILocation(line: 893, column: 10, scope: !2102)
!2225 = !DILocation(line: 893, column: 5, scope: !2102)
!2226 = !DILocation(line: 894, column: 10, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2102, file: !1, line: 894, column: 3)
!2228 = !DILocation(line: 894, column: 8, scope: !2227)
!2229 = !DILocation(line: 894, column: 15, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2227, file: !1, line: 894, column: 3)
!2231 = !DILocation(line: 894, column: 19, scope: !2230)
!2232 = !DILocation(line: 894, column: 17, scope: !2230)
!2233 = !DILocation(line: 894, column: 3, scope: !2227)
!2234 = !DILocation(line: 895, column: 12, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2230, file: !1, line: 894, column: 27)
!2236 = !DILocation(line: 895, column: 16, scope: !2235)
!2237 = !DILocation(line: 895, column: 10, scope: !2235)
!2238 = !DILocation(line: 896, column: 12, scope: !2235)
!2239 = !DILocation(line: 896, column: 16, scope: !2235)
!2240 = !DILocation(line: 896, column: 10, scope: !2235)
!2241 = !DILocation(line: 897, column: 16, scope: !2235)
!2242 = !DILocation(line: 897, column: 11, scope: !2235)
!2243 = !DILocation(line: 897, column: 8, scope: !2235)
!2244 = !DILocation(line: 898, column: 16, scope: !2235)
!2245 = !DILocation(line: 898, column: 11, scope: !2235)
!2246 = !DILocation(line: 898, column: 8, scope: !2235)
!2247 = !DILocation(line: 899, column: 15, scope: !2235)
!2248 = !DILocation(line: 899, column: 22, scope: !2235)
!2249 = !DILocation(line: 899, column: 20, scope: !2235)
!2250 = !DILocation(line: 899, column: 5, scope: !2235)
!2251 = !DILocation(line: 899, column: 13, scope: !2235)
!2252 = !DILocation(line: 900, column: 5, scope: !2235)
!2253 = !DILocation(line: 900, column: 13, scope: !2235)
!2254 = !DILocation(line: 901, column: 15, scope: !2235)
!2255 = !DILocation(line: 901, column: 25, scope: !2235)
!2256 = !DILocation(line: 901, column: 35, scope: !2235)
!2257 = !DILocation(line: 901, column: 45, scope: !2235)
!2258 = !DILocation(line: 901, column: 43, scope: !2235)
!2259 = !DILocation(line: 901, column: 33, scope: !2235)
!2260 = !DILocation(line: 901, column: 10, scope: !2235)
!2261 = !DILocation(line: 901, column: 7, scope: !2235)
!2262 = !DILocation(line: 902, column: 11, scope: !2235)
!2263 = !DILocation(line: 902, column: 8, scope: !2235)
!2264 = !DILocation(line: 903, column: 11, scope: !2235)
!2265 = !DILocation(line: 903, column: 8, scope: !2235)
!2266 = !DILocation(line: 904, column: 3, scope: !2235)
!2267 = !DILocation(line: 894, column: 22, scope: !2230)
!2268 = !DILocation(line: 894, column: 3, scope: !2230)
!2269 = distinct !{!2269, !2233, !2270, !175}
!2270 = !DILocation(line: 904, column: 3, scope: !2227)
!2271 = !DILocation(line: 905, column: 13, scope: !2102)
!2272 = !DILocation(line: 905, column: 26, scope: !2102)
!2273 = !DILocation(line: 905, column: 39, scope: !2102)
!2274 = !DILocation(line: 905, column: 52, scope: !2102)
!2275 = !DILocation(line: 905, column: 50, scope: !2102)
!2276 = !DILocation(line: 905, column: 37, scope: !2102)
!2277 = !DILocation(line: 905, column: 8, scope: !2102)
!2278 = !DILocation(line: 905, column: 5, scope: !2102)
!2279 = !DILocation(line: 907, column: 24, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2102, file: !1, line: 906, column: 3)
!2281 = !DILocation(line: 907, column: 36, scope: !2280)
!2282 = !DILocation(line: 907, column: 56, scope: !2280)
!2283 = !DILocation(line: 907, column: 68, scope: !2280)
!2284 = !DILocation(line: 907, column: 66, scope: !2280)
!2285 = !DILocation(line: 907, column: 45, scope: !2280)
!2286 = !DILocation(line: 907, column: 5, scope: !2280)
!2287 = !DILocation(line: 907, column: 13, scope: !2280)
!2288 = !DILocation(line: 908, column: 24, scope: !2280)
!2289 = !DILocation(line: 908, column: 36, scope: !2280)
!2290 = !DILocation(line: 908, column: 56, scope: !2280)
!2291 = !DILocation(line: 908, column: 68, scope: !2280)
!2292 = !DILocation(line: 908, column: 66, scope: !2280)
!2293 = !DILocation(line: 908, column: 45, scope: !2280)
!2294 = !DILocation(line: 908, column: 5, scope: !2280)
!2295 = !DILocation(line: 908, column: 13, scope: !2280)
!2296 = !DILocation(line: 910, column: 13, scope: !2102)
!2297 = !DILocation(line: 910, column: 23, scope: !2102)
!2298 = !DILocation(line: 910, column: 33, scope: !2102)
!2299 = !DILocation(line: 910, column: 43, scope: !2102)
!2300 = !DILocation(line: 910, column: 41, scope: !2102)
!2301 = !DILocation(line: 910, column: 31, scope: !2102)
!2302 = !DILocation(line: 910, column: 8, scope: !2102)
!2303 = !DILocation(line: 910, column: 5, scope: !2102)
!2304 = !DILocation(line: 912, column: 23, scope: !2102)
!2305 = !DILocation(line: 912, column: 14, scope: !2102)
!2306 = !DILocation(line: 913, column: 16, scope: !2102)
!2307 = !DILocation(line: 913, column: 7, scope: !2102)
!2308 = !DILocation(line: 912, column: 10, scope: !2102)
!2309 = !DILocation(line: 912, column: 8, scope: !2102)
!2310 = !DILocation(line: 914, column: 7, scope: !2102)
!2311 = !DILocation(line: 914, column: 5, scope: !2102)
!2312 = !DILocation(line: 916, column: 18, scope: !2102)
!2313 = !DILocation(line: 916, column: 16, scope: !2102)
!2314 = !DILocation(line: 917, column: 30, scope: !2102)
!2315 = !DILocation(line: 917, column: 21, scope: !2102)
!2316 = !DILocation(line: 918, column: 16, scope: !2102)
!2317 = !DILocation(line: 918, column: 7, scope: !2102)
!2318 = !DILocation(line: 917, column: 17, scope: !2102)
!2319 = !DILocation(line: 917, column: 15, scope: !2102)
!2320 = !DILocation(line: 919, column: 13, scope: !2102)
!2321 = !DILocation(line: 919, column: 11, scope: !2102)
!2322 = !DILocation(line: 920, column: 25, scope: !2102)
!2323 = !DILocation(line: 920, column: 16, scope: !2102)
!2324 = !DILocation(line: 921, column: 18, scope: !2102)
!2325 = !DILocation(line: 921, column: 9, scope: !2102)
!2326 = !DILocation(line: 920, column: 12, scope: !2102)
!2327 = !DILocation(line: 920, column: 10, scope: !2102)
!2328 = !DILocation(line: 922, column: 13, scope: !2102)
!2329 = !DILocation(line: 922, column: 25, scope: !2102)
!2330 = !DILocation(line: 922, column: 23, scope: !2102)
!2331 = !DILocation(line: 922, column: 40, scope: !2102)
!2332 = !DILocation(line: 922, column: 38, scope: !2102)
!2333 = !DILocation(line: 922, column: 3, scope: !2102)
!2334 = !DILocation(line: 922, column: 10, scope: !2102)
!2335 = !DILocation(line: 923, column: 13, scope: !2102)
!2336 = !DILocation(line: 923, column: 25, scope: !2102)
!2337 = !DILocation(line: 923, column: 23, scope: !2102)
!2338 = !DILocation(line: 923, column: 40, scope: !2102)
!2339 = !DILocation(line: 923, column: 38, scope: !2102)
!2340 = !DILocation(line: 923, column: 3, scope: !2102)
!2341 = !DILocation(line: 923, column: 10, scope: !2102)
!2342 = !DILocation(line: 924, column: 15, scope: !2102)
!2343 = !DILocation(line: 924, column: 24, scope: !2102)
!2344 = !DILocation(line: 924, column: 33, scope: !2102)
!2345 = !DILocation(line: 924, column: 42, scope: !2102)
!2346 = !DILocation(line: 924, column: 40, scope: !2102)
!2347 = !DILocation(line: 924, column: 31, scope: !2102)
!2348 = !DILocation(line: 924, column: 10, scope: !2102)
!2349 = !DILocation(line: 924, column: 8, scope: !2102)
!2350 = !DILocation(line: 927, column: 16, scope: !2102)
!2351 = !DILocation(line: 927, column: 29, scope: !2102)
!2352 = !DILocation(line: 927, column: 42, scope: !2102)
!2353 = !DILocation(line: 927, column: 55, scope: !2102)
!2354 = !DILocation(line: 927, column: 53, scope: !2102)
!2355 = !DILocation(line: 927, column: 40, scope: !2102)
!2356 = !DILocation(line: 927, column: 11, scope: !2102)
!2357 = !DILocation(line: 927, column: 9, scope: !2102)
!2358 = !DILocation(line: 927, column: 69, scope: !2102)
!2359 = !DILocation(line: 927, column: 71, scope: !2102)
!2360 = !DILocation(line: 927, column: 5, scope: !2102)
!2361 = !DILocation(line: 928, column: 7, scope: !2102)
!2362 = !DILocation(line: 928, column: 5, scope: !2102)
!2363 = !DILocation(line: 929, column: 7, scope: !2102)
!2364 = !DILocation(line: 929, column: 33, scope: !2102)
!2365 = !DILocation(line: 929, column: 42, scope: !2102)
!2366 = !DILocation(line: 929, column: 40, scope: !2102)
!2367 = !DILocation(line: 929, column: 57, scope: !2102)
!2368 = !DILocation(line: 929, column: 55, scope: !2102)
!2369 = !DILocation(line: 929, column: 5, scope: !2102)
!2370 = !DILocation(line: 930, column: 12, scope: !2102)
!2371 = !DILocation(line: 930, column: 10, scope: !2102)
!2372 = !DILocation(line: 930, column: 5, scope: !2102)
!2373 = !DILocation(line: 932, column: 17, scope: !2102)
!2374 = !DILocation(line: 932, column: 29, scope: !2102)
!2375 = !DILocation(line: 932, column: 27, scope: !2102)
!2376 = !DILocation(line: 932, column: 41, scope: !2102)
!2377 = !DILocation(line: 932, column: 43, scope: !2102)
!2378 = !DILocation(line: 932, column: 40, scope: !2102)
!2379 = !DILocation(line: 932, column: 38, scope: !2102)
!2380 = !DILocation(line: 932, column: 51, scope: !2102)
!2381 = !DILocation(line: 932, column: 61, scope: !2102)
!2382 = !DILocation(line: 932, column: 59, scope: !2102)
!2383 = !DILocation(line: 932, column: 48, scope: !2102)
!2384 = !DILocation(line: 932, column: 77, scope: !2102)
!2385 = !DILocation(line: 934, column: 4, scope: !2102)
!2386 = !DILocation(line: 934, column: 15, scope: !2102)
!2387 = !DILocation(line: 934, column: 13, scope: !2102)
!2388 = !DILocation(line: 934, column: 30, scope: !2102)
!2389 = !DILocation(line: 934, column: 44, scope: !2102)
!2390 = !DILocation(line: 935, column: 9, scope: !2102)
!2391 = !DILocation(line: 935, column: 23, scope: !2102)
!2392 = !DILocation(line: 935, column: 21, scope: !2102)
!2393 = !DILocation(line: 934, column: 56, scope: !2102)
!2394 = !DILocation(line: 934, column: 25, scope: !2102)
!2395 = !DILocation(line: 934, column: 23, scope: !2102)
!2396 = !DILocation(line: 933, column: 4, scope: !2102)
!2397 = !DILocation(line: 936, column: 4, scope: !2102)
!2398 = !DILocation(line: 935, column: 36, scope: !2102)
!2399 = !DILocation(line: 932, column: 22, scope: !2102)
!2400 = !DILocation(line: 932, column: 4, scope: !2102)
!2401 = !DILocation(line: 932, column: 15, scope: !2102)
!2402 = !DILocation(line: 937, column: 1, scope: !2102)
!2403 = distinct !DISubprogram(name: "test_BLAS_zdot_d_z", scope: !1, file: !1, line: 940, type: !2404, scopeLine: 989, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2406)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{null, !43, !3, !462, !462, !462, !462, !32, !32, !32, !43, !464, !43, !29, !29, !32}
!2406 = !{!2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444}
!2407 = !DILocalVariable(name: "n", arg: 1, scope: !2403, file: !1, line: 940, type: !43)
!2408 = !DILocalVariable(name: "conj", arg: 2, scope: !2403, file: !1, line: 940, type: !3)
!2409 = !DILocalVariable(name: "alpha", arg: 3, scope: !2403, file: !1, line: 940, type: !462)
!2410 = !DILocalVariable(name: "beta", arg: 4, scope: !2403, file: !1, line: 941, type: !462)
!2411 = !DILocalVariable(name: "rin", arg: 5, scope: !2403, file: !1, line: 941, type: !462)
!2412 = !DILocalVariable(name: "rout", arg: 6, scope: !2403, file: !1, line: 941, type: !462)
!2413 = !DILocalVariable(name: "r_true_l", arg: 7, scope: !2403, file: !1, line: 942, type: !32)
!2414 = !DILocalVariable(name: "r_true_t", arg: 8, scope: !2403, file: !1, line: 942, type: !32)
!2415 = !DILocalVariable(name: "x", arg: 9, scope: !2403, file: !1, line: 942, type: !32)
!2416 = !DILocalVariable(name: "incx", arg: 10, scope: !2403, file: !1, line: 943, type: !43)
!2417 = !DILocalVariable(name: "y", arg: 11, scope: !2403, file: !1, line: 943, type: !464)
!2418 = !DILocalVariable(name: "incy", arg: 12, scope: !2403, file: !1, line: 943, type: !43)
!2419 = !DILocalVariable(name: "eps_int", arg: 13, scope: !2403, file: !1, line: 943, type: !29)
!2420 = !DILocalVariable(name: "un_int", arg: 14, scope: !2403, file: !1, line: 944, type: !29)
!2421 = !DILocalVariable(name: "test_ratio", arg: 15, scope: !2403, file: !1, line: 944, type: !32)
!2422 = !DILocalVariable(name: "i", scope: !2403, file: !1, line: 990, type: !43)
!2423 = !DILocalVariable(name: "ix", scope: !2403, file: !1, line: 990, type: !43)
!2424 = !DILocalVariable(name: "iy", scope: !2403, file: !1, line: 990, type: !43)
!2425 = !DILocalVariable(name: "eps_accurate", scope: !2403, file: !1, line: 991, type: !29)
!2426 = !DILocalVariable(name: "eps_out", scope: !2403, file: !1, line: 991, type: !29)
!2427 = !DILocalVariable(name: "tmp1", scope: !2403, file: !1, line: 991, type: !29)
!2428 = !DILocalVariable(name: "S", scope: !2403, file: !1, line: 991, type: !29)
!2429 = !DILocalVariable(name: "S1", scope: !2403, file: !1, line: 991, type: !29)
!2430 = !DILocalVariable(name: "S2", scope: !2403, file: !1, line: 991, type: !29)
!2431 = !DILocalVariable(name: "U", scope: !2403, file: !1, line: 991, type: !29)
!2432 = !DILocalVariable(name: "prod", scope: !2403, file: !1, line: 991, type: !492)
!2433 = !DILocalVariable(name: "tmp", scope: !2403, file: !1, line: 991, type: !492)
!2434 = !DILocalVariable(name: "un_d", scope: !2403, file: !1, line: 992, type: !29)
!2435 = !DILocalVariable(name: "un_accurate", scope: !2403, file: !1, line: 992, type: !29)
!2436 = !DILocalVariable(name: "un_out", scope: !2403, file: !1, line: 992, type: !29)
!2437 = !DILocalVariable(name: "x_i", scope: !2403, file: !1, line: 993, type: !32)
!2438 = !DILocalVariable(name: "y_i", scope: !2403, file: !1, line: 994, type: !32)
!2439 = !DILocalVariable(name: "alpha_i", scope: !2403, file: !1, line: 995, type: !32)
!2440 = !DILocalVariable(name: "beta_i", scope: !2403, file: !1, line: 996, type: !32)
!2441 = !DILocalVariable(name: "rin_i", scope: !2403, file: !1, line: 997, type: !32)
!2442 = !DILocalVariable(name: "rout_i", scope: !2403, file: !1, line: 998, type: !32)
!2443 = !DILocalVariable(name: "x_ii", scope: !2403, file: !1, line: 999, type: !29)
!2444 = !DILocalVariable(name: "y_ii", scope: !2403, file: !1, line: 1000, type: !492)
!2445 = !DILocation(line: 940, column: 29, scope: !2403)
!2446 = !DILocation(line: 940, column: 52, scope: !2403)
!2447 = !DILocation(line: 940, column: 70, scope: !2403)
!2448 = !DILocation(line: 941, column: 16, scope: !2403)
!2449 = !DILocation(line: 941, column: 34, scope: !2403)
!2450 = !DILocation(line: 941, column: 51, scope: !2403)
!2451 = !DILocation(line: 942, column: 12, scope: !2403)
!2452 = !DILocation(line: 942, column: 30, scope: !2403)
!2453 = !DILocation(line: 942, column: 48, scope: !2403)
!2454 = !DILocation(line: 943, column: 8, scope: !2403)
!2455 = !DILocation(line: 943, column: 20, scope: !2403)
!2456 = !DILocation(line: 943, column: 27, scope: !2403)
!2457 = !DILocation(line: 943, column: 40, scope: !2403)
!2458 = !DILocation(line: 944, column: 11, scope: !2403)
!2459 = !DILocation(line: 944, column: 27, scope: !2403)
!2460 = !DILocation(line: 990, column: 3, scope: !2403)
!2461 = !DILocation(line: 990, column: 7, scope: !2403)
!2462 = !DILocation(line: 990, column: 10, scope: !2403)
!2463 = !DILocation(line: 990, column: 14, scope: !2403)
!2464 = !DILocation(line: 991, column: 3, scope: !2403)
!2465 = !DILocation(line: 991, column: 10, scope: !2403)
!2466 = !DILocation(line: 991, column: 24, scope: !2403)
!2467 = !DILocation(line: 991, column: 33, scope: !2403)
!2468 = !DILocation(line: 991, column: 39, scope: !2403)
!2469 = !DILocation(line: 991, column: 42, scope: !2403)
!2470 = !DILocation(line: 991, column: 46, scope: !2403)
!2471 = !DILocation(line: 991, column: 50, scope: !2403)
!2472 = !DILocation(line: 991, column: 53, scope: !2403)
!2473 = !DILocation(line: 991, column: 62, scope: !2403)
!2474 = !DILocation(line: 992, column: 3, scope: !2403)
!2475 = !DILocation(line: 992, column: 10, scope: !2403)
!2476 = !DILocation(line: 992, column: 16, scope: !2403)
!2477 = !DILocation(line: 992, column: 29, scope: !2403)
!2478 = !DILocation(line: 993, column: 3, scope: !2403)
!2479 = !DILocation(line: 993, column: 11, scope: !2403)
!2480 = !DILocation(line: 993, column: 17, scope: !2403)
!2481 = !DILocation(line: 994, column: 3, scope: !2403)
!2482 = !DILocation(line: 994, column: 11, scope: !2403)
!2483 = !DILocation(line: 994, column: 28, scope: !2403)
!2484 = !DILocation(line: 995, column: 3, scope: !2403)
!2485 = !DILocation(line: 995, column: 11, scope: !2403)
!2486 = !DILocation(line: 995, column: 32, scope: !2403)
!2487 = !DILocation(line: 996, column: 3, scope: !2403)
!2488 = !DILocation(line: 996, column: 11, scope: !2403)
!2489 = !DILocation(line: 996, column: 31, scope: !2403)
!2490 = !DILocation(line: 997, column: 3, scope: !2403)
!2491 = !DILocation(line: 997, column: 11, scope: !2403)
!2492 = !DILocation(line: 997, column: 30, scope: !2403)
!2493 = !DILocation(line: 998, column: 3, scope: !2403)
!2494 = !DILocation(line: 998, column: 11, scope: !2403)
!2495 = !DILocation(line: 998, column: 31, scope: !2403)
!2496 = !DILocation(line: 999, column: 3, scope: !2403)
!2497 = !DILocation(line: 999, column: 10, scope: !2403)
!2498 = !DILocation(line: 1000, column: 3, scope: !2403)
!2499 = !DILocation(line: 1000, column: 10, scope: !2403)
!2500 = !DILocation(line: 1004, column: 8, scope: !2403)
!2501 = !DILocation(line: 1005, column: 6, scope: !2403)
!2502 = !DILocation(line: 1006, column: 6, scope: !2403)
!2503 = !DILocation(line: 1007, column: 7, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2403, file: !1, line: 1007, column: 7)
!2505 = !DILocation(line: 1007, column: 12, scope: !2504)
!2506 = !DILocation(line: 1007, column: 7, scope: !2403)
!2507 = !DILocation(line: 1008, column: 12, scope: !2504)
!2508 = !DILocation(line: 1008, column: 14, scope: !2504)
!2509 = !DILocation(line: 1008, column: 10, scope: !2504)
!2510 = !DILocation(line: 1008, column: 21, scope: !2504)
!2511 = !DILocation(line: 1008, column: 19, scope: !2504)
!2512 = !DILocation(line: 1008, column: 8, scope: !2504)
!2513 = !DILocation(line: 1008, column: 5, scope: !2504)
!2514 = !DILocation(line: 1009, column: 7, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2403, file: !1, line: 1009, column: 7)
!2516 = !DILocation(line: 1009, column: 12, scope: !2515)
!2517 = !DILocation(line: 1009, column: 7, scope: !2403)
!2518 = !DILocation(line: 1010, column: 12, scope: !2515)
!2519 = !DILocation(line: 1010, column: 14, scope: !2515)
!2520 = !DILocation(line: 1010, column: 10, scope: !2515)
!2521 = !DILocation(line: 1010, column: 21, scope: !2515)
!2522 = !DILocation(line: 1010, column: 19, scope: !2515)
!2523 = !DILocation(line: 1010, column: 8, scope: !2515)
!2524 = !DILocation(line: 1010, column: 5, scope: !2515)
!2525 = !DILocation(line: 1013, column: 15, scope: !2403)
!2526 = !DILocation(line: 1013, column: 10, scope: !2403)
!2527 = !DILocation(line: 1013, column: 5, scope: !2403)
!2528 = !DILocation(line: 1014, column: 10, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2403, file: !1, line: 1014, column: 3)
!2530 = !DILocation(line: 1014, column: 8, scope: !2529)
!2531 = !DILocation(line: 1014, column: 15, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2529, file: !1, line: 1014, column: 3)
!2533 = !DILocation(line: 1014, column: 19, scope: !2532)
!2534 = !DILocation(line: 1014, column: 17, scope: !2532)
!2535 = !DILocation(line: 1014, column: 3, scope: !2529)
!2536 = !DILocation(line: 1015, column: 12, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2532, file: !1, line: 1014, column: 27)
!2538 = !DILocation(line: 1015, column: 16, scope: !2537)
!2539 = !DILocation(line: 1015, column: 10, scope: !2537)
!2540 = !DILocation(line: 1016, column: 15, scope: !2537)
!2541 = !DILocation(line: 1016, column: 19, scope: !2537)
!2542 = !DILocation(line: 1016, column: 5, scope: !2537)
!2543 = !DILocation(line: 1016, column: 13, scope: !2537)
!2544 = !DILocation(line: 1017, column: 15, scope: !2537)
!2545 = !DILocation(line: 1017, column: 19, scope: !2537)
!2546 = !DILocation(line: 1017, column: 22, scope: !2537)
!2547 = !DILocation(line: 1017, column: 5, scope: !2537)
!2548 = !DILocation(line: 1017, column: 13, scope: !2537)
!2549 = !DILocation(line: 1018, column: 16, scope: !2537)
!2550 = !DILocation(line: 1018, column: 11, scope: !2537)
!2551 = !DILocation(line: 1018, column: 8, scope: !2537)
!2552 = !DILocation(line: 1019, column: 16, scope: !2537)
!2553 = !DILocation(line: 1019, column: 26, scope: !2537)
!2554 = !DILocation(line: 1019, column: 36, scope: !2537)
!2555 = !DILocation(line: 1019, column: 46, scope: !2537)
!2556 = !DILocation(line: 1019, column: 44, scope: !2537)
!2557 = !DILocation(line: 1019, column: 34, scope: !2537)
!2558 = !DILocation(line: 1019, column: 11, scope: !2537)
!2559 = !DILocation(line: 1019, column: 8, scope: !2537)
!2560 = !DILocation(line: 1020, column: 17, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2537, file: !1, line: 1019, column: 56)
!2562 = !DILocation(line: 1020, column: 27, scope: !2561)
!2563 = !DILocation(line: 1020, column: 25, scope: !2561)
!2564 = !DILocation(line: 1020, column: 7, scope: !2561)
!2565 = !DILocation(line: 1020, column: 15, scope: !2561)
!2566 = !DILocation(line: 1021, column: 17, scope: !2561)
!2567 = !DILocation(line: 1021, column: 27, scope: !2561)
!2568 = !DILocation(line: 1021, column: 25, scope: !2561)
!2569 = !DILocation(line: 1021, column: 7, scope: !2561)
!2570 = !DILocation(line: 1021, column: 15, scope: !2561)
!2571 = !DILocation(line: 1023, column: 15, scope: !2537)
!2572 = !DILocation(line: 1023, column: 25, scope: !2537)
!2573 = !DILocation(line: 1023, column: 35, scope: !2537)
!2574 = !DILocation(line: 1023, column: 45, scope: !2537)
!2575 = !DILocation(line: 1023, column: 43, scope: !2537)
!2576 = !DILocation(line: 1023, column: 33, scope: !2537)
!2577 = !DILocation(line: 1023, column: 10, scope: !2537)
!2578 = !DILocation(line: 1023, column: 7, scope: !2537)
!2579 = !DILocation(line: 1024, column: 11, scope: !2537)
!2580 = !DILocation(line: 1024, column: 8, scope: !2537)
!2581 = !DILocation(line: 1025, column: 11, scope: !2537)
!2582 = !DILocation(line: 1025, column: 8, scope: !2537)
!2583 = !DILocation(line: 1026, column: 3, scope: !2537)
!2584 = !DILocation(line: 1014, column: 22, scope: !2532)
!2585 = !DILocation(line: 1014, column: 3, scope: !2532)
!2586 = distinct !{!2586, !2535, !2587, !175}
!2587 = !DILocation(line: 1026, column: 3, scope: !2529)
!2588 = !DILocation(line: 1027, column: 13, scope: !2403)
!2589 = !DILocation(line: 1027, column: 26, scope: !2403)
!2590 = !DILocation(line: 1027, column: 39, scope: !2403)
!2591 = !DILocation(line: 1027, column: 52, scope: !2403)
!2592 = !DILocation(line: 1027, column: 50, scope: !2403)
!2593 = !DILocation(line: 1027, column: 37, scope: !2403)
!2594 = !DILocation(line: 1027, column: 8, scope: !2403)
!2595 = !DILocation(line: 1027, column: 5, scope: !2403)
!2596 = !DILocation(line: 1029, column: 24, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2403, file: !1, line: 1028, column: 3)
!2598 = !DILocation(line: 1029, column: 36, scope: !2597)
!2599 = !DILocation(line: 1029, column: 56, scope: !2597)
!2600 = !DILocation(line: 1029, column: 68, scope: !2597)
!2601 = !DILocation(line: 1029, column: 66, scope: !2597)
!2602 = !DILocation(line: 1029, column: 45, scope: !2597)
!2603 = !DILocation(line: 1029, column: 5, scope: !2597)
!2604 = !DILocation(line: 1029, column: 13, scope: !2597)
!2605 = !DILocation(line: 1030, column: 24, scope: !2597)
!2606 = !DILocation(line: 1030, column: 36, scope: !2597)
!2607 = !DILocation(line: 1030, column: 56, scope: !2597)
!2608 = !DILocation(line: 1030, column: 68, scope: !2597)
!2609 = !DILocation(line: 1030, column: 66, scope: !2597)
!2610 = !DILocation(line: 1030, column: 45, scope: !2597)
!2611 = !DILocation(line: 1030, column: 5, scope: !2597)
!2612 = !DILocation(line: 1030, column: 13, scope: !2597)
!2613 = !DILocation(line: 1032, column: 13, scope: !2403)
!2614 = !DILocation(line: 1032, column: 23, scope: !2403)
!2615 = !DILocation(line: 1032, column: 33, scope: !2403)
!2616 = !DILocation(line: 1032, column: 43, scope: !2403)
!2617 = !DILocation(line: 1032, column: 41, scope: !2403)
!2618 = !DILocation(line: 1032, column: 31, scope: !2403)
!2619 = !DILocation(line: 1032, column: 8, scope: !2403)
!2620 = !DILocation(line: 1032, column: 5, scope: !2403)
!2621 = !DILocation(line: 1034, column: 23, scope: !2403)
!2622 = !DILocation(line: 1034, column: 14, scope: !2403)
!2623 = !DILocation(line: 1035, column: 16, scope: !2403)
!2624 = !DILocation(line: 1035, column: 7, scope: !2403)
!2625 = !DILocation(line: 1034, column: 10, scope: !2403)
!2626 = !DILocation(line: 1034, column: 8, scope: !2403)
!2627 = !DILocation(line: 1036, column: 7, scope: !2403)
!2628 = !DILocation(line: 1036, column: 5, scope: !2403)
!2629 = !DILocation(line: 1038, column: 18, scope: !2403)
!2630 = !DILocation(line: 1038, column: 16, scope: !2403)
!2631 = !DILocation(line: 1039, column: 30, scope: !2403)
!2632 = !DILocation(line: 1039, column: 21, scope: !2403)
!2633 = !DILocation(line: 1040, column: 16, scope: !2403)
!2634 = !DILocation(line: 1040, column: 7, scope: !2403)
!2635 = !DILocation(line: 1039, column: 17, scope: !2403)
!2636 = !DILocation(line: 1039, column: 15, scope: !2403)
!2637 = !DILocation(line: 1041, column: 13, scope: !2403)
!2638 = !DILocation(line: 1041, column: 11, scope: !2403)
!2639 = !DILocation(line: 1042, column: 25, scope: !2403)
!2640 = !DILocation(line: 1042, column: 16, scope: !2403)
!2641 = !DILocation(line: 1043, column: 18, scope: !2403)
!2642 = !DILocation(line: 1043, column: 9, scope: !2403)
!2643 = !DILocation(line: 1042, column: 12, scope: !2403)
!2644 = !DILocation(line: 1042, column: 10, scope: !2403)
!2645 = !DILocation(line: 1044, column: 13, scope: !2403)
!2646 = !DILocation(line: 1044, column: 25, scope: !2403)
!2647 = !DILocation(line: 1044, column: 23, scope: !2403)
!2648 = !DILocation(line: 1044, column: 40, scope: !2403)
!2649 = !DILocation(line: 1044, column: 38, scope: !2403)
!2650 = !DILocation(line: 1044, column: 3, scope: !2403)
!2651 = !DILocation(line: 1044, column: 10, scope: !2403)
!2652 = !DILocation(line: 1045, column: 13, scope: !2403)
!2653 = !DILocation(line: 1045, column: 25, scope: !2403)
!2654 = !DILocation(line: 1045, column: 23, scope: !2403)
!2655 = !DILocation(line: 1045, column: 40, scope: !2403)
!2656 = !DILocation(line: 1045, column: 38, scope: !2403)
!2657 = !DILocation(line: 1045, column: 3, scope: !2403)
!2658 = !DILocation(line: 1045, column: 10, scope: !2403)
!2659 = !DILocation(line: 1046, column: 15, scope: !2403)
!2660 = !DILocation(line: 1046, column: 24, scope: !2403)
!2661 = !DILocation(line: 1046, column: 33, scope: !2403)
!2662 = !DILocation(line: 1046, column: 42, scope: !2403)
!2663 = !DILocation(line: 1046, column: 40, scope: !2403)
!2664 = !DILocation(line: 1046, column: 31, scope: !2403)
!2665 = !DILocation(line: 1046, column: 10, scope: !2403)
!2666 = !DILocation(line: 1046, column: 8, scope: !2403)
!2667 = !DILocation(line: 1049, column: 16, scope: !2403)
!2668 = !DILocation(line: 1049, column: 29, scope: !2403)
!2669 = !DILocation(line: 1049, column: 42, scope: !2403)
!2670 = !DILocation(line: 1049, column: 55, scope: !2403)
!2671 = !DILocation(line: 1049, column: 53, scope: !2403)
!2672 = !DILocation(line: 1049, column: 40, scope: !2403)
!2673 = !DILocation(line: 1049, column: 11, scope: !2403)
!2674 = !DILocation(line: 1049, column: 9, scope: !2403)
!2675 = !DILocation(line: 1049, column: 69, scope: !2403)
!2676 = !DILocation(line: 1049, column: 71, scope: !2403)
!2677 = !DILocation(line: 1049, column: 5, scope: !2403)
!2678 = !DILocation(line: 1050, column: 7, scope: !2403)
!2679 = !DILocation(line: 1050, column: 5, scope: !2403)
!2680 = !DILocation(line: 1051, column: 7, scope: !2403)
!2681 = !DILocation(line: 1051, column: 33, scope: !2403)
!2682 = !DILocation(line: 1051, column: 42, scope: !2403)
!2683 = !DILocation(line: 1051, column: 40, scope: !2403)
!2684 = !DILocation(line: 1051, column: 57, scope: !2403)
!2685 = !DILocation(line: 1051, column: 55, scope: !2403)
!2686 = !DILocation(line: 1051, column: 5, scope: !2403)
!2687 = !DILocation(line: 1052, column: 12, scope: !2403)
!2688 = !DILocation(line: 1052, column: 10, scope: !2403)
!2689 = !DILocation(line: 1052, column: 5, scope: !2403)
!2690 = !DILocation(line: 1054, column: 17, scope: !2403)
!2691 = !DILocation(line: 1054, column: 29, scope: !2403)
!2692 = !DILocation(line: 1054, column: 27, scope: !2403)
!2693 = !DILocation(line: 1054, column: 41, scope: !2403)
!2694 = !DILocation(line: 1054, column: 43, scope: !2403)
!2695 = !DILocation(line: 1054, column: 40, scope: !2403)
!2696 = !DILocation(line: 1054, column: 38, scope: !2403)
!2697 = !DILocation(line: 1054, column: 51, scope: !2403)
!2698 = !DILocation(line: 1054, column: 61, scope: !2403)
!2699 = !DILocation(line: 1054, column: 59, scope: !2403)
!2700 = !DILocation(line: 1054, column: 48, scope: !2403)
!2701 = !DILocation(line: 1054, column: 77, scope: !2403)
!2702 = !DILocation(line: 1056, column: 4, scope: !2403)
!2703 = !DILocation(line: 1056, column: 15, scope: !2403)
!2704 = !DILocation(line: 1056, column: 13, scope: !2403)
!2705 = !DILocation(line: 1056, column: 30, scope: !2403)
!2706 = !DILocation(line: 1056, column: 44, scope: !2403)
!2707 = !DILocation(line: 1057, column: 9, scope: !2403)
!2708 = !DILocation(line: 1057, column: 23, scope: !2403)
!2709 = !DILocation(line: 1057, column: 21, scope: !2403)
!2710 = !DILocation(line: 1056, column: 56, scope: !2403)
!2711 = !DILocation(line: 1056, column: 25, scope: !2403)
!2712 = !DILocation(line: 1056, column: 23, scope: !2403)
!2713 = !DILocation(line: 1055, column: 4, scope: !2403)
!2714 = !DILocation(line: 1058, column: 4, scope: !2403)
!2715 = !DILocation(line: 1057, column: 36, scope: !2403)
!2716 = !DILocation(line: 1054, column: 22, scope: !2403)
!2717 = !DILocation(line: 1054, column: 4, scope: !2403)
!2718 = !DILocation(line: 1054, column: 15, scope: !2403)
!2719 = !DILocation(line: 1059, column: 1, scope: !2403)
!2720 = distinct !DISubprogram(name: "test_BLAS_zdot_z_d", scope: !1, file: !1, line: 1062, type: !2721, scopeLine: 1111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2723)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{null, !43, !3, !462, !462, !462, !462, !32, !32, !464, !43, !32, !43, !29, !29, !32}
!2723 = !{!2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761}
!2724 = !DILocalVariable(name: "n", arg: 1, scope: !2720, file: !1, line: 1062, type: !43)
!2725 = !DILocalVariable(name: "conj", arg: 2, scope: !2720, file: !1, line: 1062, type: !3)
!2726 = !DILocalVariable(name: "alpha", arg: 3, scope: !2720, file: !1, line: 1062, type: !462)
!2727 = !DILocalVariable(name: "beta", arg: 4, scope: !2720, file: !1, line: 1063, type: !462)
!2728 = !DILocalVariable(name: "rin", arg: 5, scope: !2720, file: !1, line: 1063, type: !462)
!2729 = !DILocalVariable(name: "rout", arg: 6, scope: !2720, file: !1, line: 1063, type: !462)
!2730 = !DILocalVariable(name: "r_true_l", arg: 7, scope: !2720, file: !1, line: 1064, type: !32)
!2731 = !DILocalVariable(name: "r_true_t", arg: 8, scope: !2720, file: !1, line: 1064, type: !32)
!2732 = !DILocalVariable(name: "x", arg: 9, scope: !2720, file: !1, line: 1064, type: !464)
!2733 = !DILocalVariable(name: "incx", arg: 10, scope: !2720, file: !1, line: 1064, type: !43)
!2734 = !DILocalVariable(name: "y", arg: 11, scope: !2720, file: !1, line: 1065, type: !32)
!2735 = !DILocalVariable(name: "incy", arg: 12, scope: !2720, file: !1, line: 1065, type: !43)
!2736 = !DILocalVariable(name: "eps_int", arg: 13, scope: !2720, file: !1, line: 1065, type: !29)
!2737 = !DILocalVariable(name: "un_int", arg: 14, scope: !2720, file: !1, line: 1065, type: !29)
!2738 = !DILocalVariable(name: "test_ratio", arg: 15, scope: !2720, file: !1, line: 1066, type: !32)
!2739 = !DILocalVariable(name: "i", scope: !2720, file: !1, line: 1112, type: !43)
!2740 = !DILocalVariable(name: "ix", scope: !2720, file: !1, line: 1112, type: !43)
!2741 = !DILocalVariable(name: "iy", scope: !2720, file: !1, line: 1112, type: !43)
!2742 = !DILocalVariable(name: "eps_accurate", scope: !2720, file: !1, line: 1113, type: !29)
!2743 = !DILocalVariable(name: "eps_out", scope: !2720, file: !1, line: 1113, type: !29)
!2744 = !DILocalVariable(name: "tmp1", scope: !2720, file: !1, line: 1113, type: !29)
!2745 = !DILocalVariable(name: "S", scope: !2720, file: !1, line: 1113, type: !29)
!2746 = !DILocalVariable(name: "S1", scope: !2720, file: !1, line: 1113, type: !29)
!2747 = !DILocalVariable(name: "S2", scope: !2720, file: !1, line: 1113, type: !29)
!2748 = !DILocalVariable(name: "U", scope: !2720, file: !1, line: 1113, type: !29)
!2749 = !DILocalVariable(name: "prod", scope: !2720, file: !1, line: 1113, type: !492)
!2750 = !DILocalVariable(name: "tmp", scope: !2720, file: !1, line: 1113, type: !492)
!2751 = !DILocalVariable(name: "un_d", scope: !2720, file: !1, line: 1114, type: !29)
!2752 = !DILocalVariable(name: "un_accurate", scope: !2720, file: !1, line: 1114, type: !29)
!2753 = !DILocalVariable(name: "un_out", scope: !2720, file: !1, line: 1114, type: !29)
!2754 = !DILocalVariable(name: "x_i", scope: !2720, file: !1, line: 1115, type: !32)
!2755 = !DILocalVariable(name: "y_i", scope: !2720, file: !1, line: 1116, type: !32)
!2756 = !DILocalVariable(name: "alpha_i", scope: !2720, file: !1, line: 1117, type: !32)
!2757 = !DILocalVariable(name: "beta_i", scope: !2720, file: !1, line: 1118, type: !32)
!2758 = !DILocalVariable(name: "rin_i", scope: !2720, file: !1, line: 1119, type: !32)
!2759 = !DILocalVariable(name: "rout_i", scope: !2720, file: !1, line: 1120, type: !32)
!2760 = !DILocalVariable(name: "x_ii", scope: !2720, file: !1, line: 1121, type: !492)
!2761 = !DILocalVariable(name: "y_ii", scope: !2720, file: !1, line: 1122, type: !29)
!2762 = !DILocation(line: 1062, column: 29, scope: !2720)
!2763 = !DILocation(line: 1062, column: 52, scope: !2720)
!2764 = !DILocation(line: 1062, column: 70, scope: !2720)
!2765 = !DILocation(line: 1063, column: 16, scope: !2720)
!2766 = !DILocation(line: 1063, column: 34, scope: !2720)
!2767 = !DILocation(line: 1063, column: 51, scope: !2720)
!2768 = !DILocation(line: 1064, column: 12, scope: !2720)
!2769 = !DILocation(line: 1064, column: 30, scope: !2720)
!2770 = !DILocation(line: 1064, column: 46, scope: !2720)
!2771 = !DILocation(line: 1064, column: 53, scope: !2720)
!2772 = !DILocation(line: 1065, column: 12, scope: !2720)
!2773 = !DILocation(line: 1065, column: 19, scope: !2720)
!2774 = !DILocation(line: 1065, column: 32, scope: !2720)
!2775 = !DILocation(line: 1065, column: 48, scope: !2720)
!2776 = !DILocation(line: 1066, column: 12, scope: !2720)
!2777 = !DILocation(line: 1112, column: 3, scope: !2720)
!2778 = !DILocation(line: 1112, column: 7, scope: !2720)
!2779 = !DILocation(line: 1112, column: 10, scope: !2720)
!2780 = !DILocation(line: 1112, column: 14, scope: !2720)
!2781 = !DILocation(line: 1113, column: 3, scope: !2720)
!2782 = !DILocation(line: 1113, column: 10, scope: !2720)
!2783 = !DILocation(line: 1113, column: 24, scope: !2720)
!2784 = !DILocation(line: 1113, column: 33, scope: !2720)
!2785 = !DILocation(line: 1113, column: 39, scope: !2720)
!2786 = !DILocation(line: 1113, column: 42, scope: !2720)
!2787 = !DILocation(line: 1113, column: 46, scope: !2720)
!2788 = !DILocation(line: 1113, column: 50, scope: !2720)
!2789 = !DILocation(line: 1113, column: 53, scope: !2720)
!2790 = !DILocation(line: 1113, column: 62, scope: !2720)
!2791 = !DILocation(line: 1114, column: 3, scope: !2720)
!2792 = !DILocation(line: 1114, column: 10, scope: !2720)
!2793 = !DILocation(line: 1114, column: 16, scope: !2720)
!2794 = !DILocation(line: 1114, column: 29, scope: !2720)
!2795 = !DILocation(line: 1115, column: 3, scope: !2720)
!2796 = !DILocation(line: 1115, column: 11, scope: !2720)
!2797 = !DILocation(line: 1115, column: 28, scope: !2720)
!2798 = !DILocation(line: 1116, column: 3, scope: !2720)
!2799 = !DILocation(line: 1116, column: 11, scope: !2720)
!2800 = !DILocation(line: 1116, column: 17, scope: !2720)
!2801 = !DILocation(line: 1117, column: 3, scope: !2720)
!2802 = !DILocation(line: 1117, column: 11, scope: !2720)
!2803 = !DILocation(line: 1117, column: 32, scope: !2720)
!2804 = !DILocation(line: 1118, column: 3, scope: !2720)
!2805 = !DILocation(line: 1118, column: 11, scope: !2720)
!2806 = !DILocation(line: 1118, column: 31, scope: !2720)
!2807 = !DILocation(line: 1119, column: 3, scope: !2720)
!2808 = !DILocation(line: 1119, column: 11, scope: !2720)
!2809 = !DILocation(line: 1119, column: 30, scope: !2720)
!2810 = !DILocation(line: 1120, column: 3, scope: !2720)
!2811 = !DILocation(line: 1120, column: 11, scope: !2720)
!2812 = !DILocation(line: 1120, column: 31, scope: !2720)
!2813 = !DILocation(line: 1121, column: 3, scope: !2720)
!2814 = !DILocation(line: 1121, column: 10, scope: !2720)
!2815 = !DILocation(line: 1122, column: 3, scope: !2720)
!2816 = !DILocation(line: 1122, column: 10, scope: !2720)
!2817 = !DILocation(line: 1125, column: 8, scope: !2720)
!2818 = !DILocation(line: 1127, column: 6, scope: !2720)
!2819 = !DILocation(line: 1128, column: 6, scope: !2720)
!2820 = !DILocation(line: 1129, column: 7, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2720, file: !1, line: 1129, column: 7)
!2822 = !DILocation(line: 1129, column: 12, scope: !2821)
!2823 = !DILocation(line: 1129, column: 7, scope: !2720)
!2824 = !DILocation(line: 1130, column: 12, scope: !2821)
!2825 = !DILocation(line: 1130, column: 14, scope: !2821)
!2826 = !DILocation(line: 1130, column: 10, scope: !2821)
!2827 = !DILocation(line: 1130, column: 21, scope: !2821)
!2828 = !DILocation(line: 1130, column: 19, scope: !2821)
!2829 = !DILocation(line: 1130, column: 8, scope: !2821)
!2830 = !DILocation(line: 1130, column: 5, scope: !2821)
!2831 = !DILocation(line: 1131, column: 7, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2720, file: !1, line: 1131, column: 7)
!2833 = !DILocation(line: 1131, column: 12, scope: !2832)
!2834 = !DILocation(line: 1131, column: 7, scope: !2720)
!2835 = !DILocation(line: 1132, column: 12, scope: !2832)
!2836 = !DILocation(line: 1132, column: 14, scope: !2832)
!2837 = !DILocation(line: 1132, column: 10, scope: !2832)
!2838 = !DILocation(line: 1132, column: 21, scope: !2832)
!2839 = !DILocation(line: 1132, column: 19, scope: !2832)
!2840 = !DILocation(line: 1132, column: 8, scope: !2832)
!2841 = !DILocation(line: 1132, column: 5, scope: !2832)
!2842 = !DILocation(line: 1135, column: 15, scope: !2720)
!2843 = !DILocation(line: 1135, column: 10, scope: !2720)
!2844 = !DILocation(line: 1135, column: 5, scope: !2720)
!2845 = !DILocation(line: 1136, column: 10, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2720, file: !1, line: 1136, column: 3)
!2847 = !DILocation(line: 1136, column: 8, scope: !2846)
!2848 = !DILocation(line: 1136, column: 15, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2846, file: !1, line: 1136, column: 3)
!2850 = !DILocation(line: 1136, column: 19, scope: !2849)
!2851 = !DILocation(line: 1136, column: 17, scope: !2849)
!2852 = !DILocation(line: 1136, column: 3, scope: !2846)
!2853 = !DILocation(line: 1137, column: 15, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2849, file: !1, line: 1136, column: 27)
!2855 = !DILocation(line: 1137, column: 19, scope: !2854)
!2856 = !DILocation(line: 1137, column: 5, scope: !2854)
!2857 = !DILocation(line: 1137, column: 13, scope: !2854)
!2858 = !DILocation(line: 1138, column: 15, scope: !2854)
!2859 = !DILocation(line: 1138, column: 19, scope: !2854)
!2860 = !DILocation(line: 1138, column: 22, scope: !2854)
!2861 = !DILocation(line: 1138, column: 5, scope: !2854)
!2862 = !DILocation(line: 1138, column: 13, scope: !2854)
!2863 = !DILocation(line: 1139, column: 12, scope: !2854)
!2864 = !DILocation(line: 1139, column: 16, scope: !2854)
!2865 = !DILocation(line: 1139, column: 10, scope: !2854)
!2866 = !DILocation(line: 1140, column: 9, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2854, file: !1, line: 1140, column: 9)
!2868 = !DILocation(line: 1140, column: 14, scope: !2867)
!2869 = !DILocation(line: 1140, column: 9, scope: !2854)
!2870 = !DILocation(line: 1141, column: 18, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2867, file: !1, line: 1140, column: 28)
!2872 = !DILocation(line: 1141, column: 17, scope: !2871)
!2873 = !DILocation(line: 1141, column: 7, scope: !2871)
!2874 = !DILocation(line: 1141, column: 15, scope: !2871)
!2875 = !DILocation(line: 1142, column: 5, scope: !2871)
!2876 = !DILocation(line: 1143, column: 16, scope: !2854)
!2877 = !DILocation(line: 1143, column: 26, scope: !2854)
!2878 = !DILocation(line: 1143, column: 36, scope: !2854)
!2879 = !DILocation(line: 1143, column: 46, scope: !2854)
!2880 = !DILocation(line: 1143, column: 44, scope: !2854)
!2881 = !DILocation(line: 1143, column: 34, scope: !2854)
!2882 = !DILocation(line: 1143, column: 11, scope: !2854)
!2883 = !DILocation(line: 1143, column: 8, scope: !2854)
!2884 = !DILocation(line: 1144, column: 16, scope: !2854)
!2885 = !DILocation(line: 1144, column: 11, scope: !2854)
!2886 = !DILocation(line: 1144, column: 8, scope: !2854)
!2887 = !DILocation(line: 1145, column: 17, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2854, file: !1, line: 1144, column: 23)
!2889 = !DILocation(line: 1145, column: 27, scope: !2888)
!2890 = !DILocation(line: 1145, column: 25, scope: !2888)
!2891 = !DILocation(line: 1145, column: 7, scope: !2888)
!2892 = !DILocation(line: 1145, column: 15, scope: !2888)
!2893 = !DILocation(line: 1146, column: 17, scope: !2888)
!2894 = !DILocation(line: 1146, column: 27, scope: !2888)
!2895 = !DILocation(line: 1146, column: 25, scope: !2888)
!2896 = !DILocation(line: 1146, column: 7, scope: !2888)
!2897 = !DILocation(line: 1146, column: 15, scope: !2888)
!2898 = !DILocation(line: 1148, column: 15, scope: !2854)
!2899 = !DILocation(line: 1148, column: 25, scope: !2854)
!2900 = !DILocation(line: 1148, column: 35, scope: !2854)
!2901 = !DILocation(line: 1148, column: 45, scope: !2854)
!2902 = !DILocation(line: 1148, column: 43, scope: !2854)
!2903 = !DILocation(line: 1148, column: 33, scope: !2854)
!2904 = !DILocation(line: 1148, column: 10, scope: !2854)
!2905 = !DILocation(line: 1148, column: 7, scope: !2854)
!2906 = !DILocation(line: 1149, column: 11, scope: !2854)
!2907 = !DILocation(line: 1149, column: 8, scope: !2854)
!2908 = !DILocation(line: 1150, column: 11, scope: !2854)
!2909 = !DILocation(line: 1150, column: 8, scope: !2854)
!2910 = !DILocation(line: 1151, column: 3, scope: !2854)
!2911 = !DILocation(line: 1136, column: 22, scope: !2849)
!2912 = !DILocation(line: 1136, column: 3, scope: !2849)
!2913 = distinct !{!2913, !2852, !2914, !175}
!2914 = !DILocation(line: 1151, column: 3, scope: !2846)
!2915 = !DILocation(line: 1152, column: 13, scope: !2720)
!2916 = !DILocation(line: 1152, column: 26, scope: !2720)
!2917 = !DILocation(line: 1152, column: 39, scope: !2720)
!2918 = !DILocation(line: 1152, column: 52, scope: !2720)
!2919 = !DILocation(line: 1152, column: 50, scope: !2720)
!2920 = !DILocation(line: 1152, column: 37, scope: !2720)
!2921 = !DILocation(line: 1152, column: 8, scope: !2720)
!2922 = !DILocation(line: 1152, column: 5, scope: !2720)
!2923 = !DILocation(line: 1154, column: 24, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2720, file: !1, line: 1153, column: 3)
!2925 = !DILocation(line: 1154, column: 36, scope: !2924)
!2926 = !DILocation(line: 1154, column: 56, scope: !2924)
!2927 = !DILocation(line: 1154, column: 68, scope: !2924)
!2928 = !DILocation(line: 1154, column: 66, scope: !2924)
!2929 = !DILocation(line: 1154, column: 45, scope: !2924)
!2930 = !DILocation(line: 1154, column: 5, scope: !2924)
!2931 = !DILocation(line: 1154, column: 13, scope: !2924)
!2932 = !DILocation(line: 1155, column: 24, scope: !2924)
!2933 = !DILocation(line: 1155, column: 36, scope: !2924)
!2934 = !DILocation(line: 1155, column: 56, scope: !2924)
!2935 = !DILocation(line: 1155, column: 68, scope: !2924)
!2936 = !DILocation(line: 1155, column: 66, scope: !2924)
!2937 = !DILocation(line: 1155, column: 45, scope: !2924)
!2938 = !DILocation(line: 1155, column: 5, scope: !2924)
!2939 = !DILocation(line: 1155, column: 13, scope: !2924)
!2940 = !DILocation(line: 1157, column: 13, scope: !2720)
!2941 = !DILocation(line: 1157, column: 23, scope: !2720)
!2942 = !DILocation(line: 1157, column: 33, scope: !2720)
!2943 = !DILocation(line: 1157, column: 43, scope: !2720)
!2944 = !DILocation(line: 1157, column: 41, scope: !2720)
!2945 = !DILocation(line: 1157, column: 31, scope: !2720)
!2946 = !DILocation(line: 1157, column: 8, scope: !2720)
!2947 = !DILocation(line: 1157, column: 5, scope: !2720)
!2948 = !DILocation(line: 1159, column: 23, scope: !2720)
!2949 = !DILocation(line: 1159, column: 14, scope: !2720)
!2950 = !DILocation(line: 1160, column: 16, scope: !2720)
!2951 = !DILocation(line: 1160, column: 7, scope: !2720)
!2952 = !DILocation(line: 1159, column: 10, scope: !2720)
!2953 = !DILocation(line: 1159, column: 8, scope: !2720)
!2954 = !DILocation(line: 1161, column: 7, scope: !2720)
!2955 = !DILocation(line: 1161, column: 5, scope: !2720)
!2956 = !DILocation(line: 1163, column: 18, scope: !2720)
!2957 = !DILocation(line: 1163, column: 16, scope: !2720)
!2958 = !DILocation(line: 1164, column: 30, scope: !2720)
!2959 = !DILocation(line: 1164, column: 21, scope: !2720)
!2960 = !DILocation(line: 1165, column: 16, scope: !2720)
!2961 = !DILocation(line: 1165, column: 7, scope: !2720)
!2962 = !DILocation(line: 1164, column: 17, scope: !2720)
!2963 = !DILocation(line: 1164, column: 15, scope: !2720)
!2964 = !DILocation(line: 1166, column: 13, scope: !2720)
!2965 = !DILocation(line: 1166, column: 11, scope: !2720)
!2966 = !DILocation(line: 1167, column: 25, scope: !2720)
!2967 = !DILocation(line: 1167, column: 16, scope: !2720)
!2968 = !DILocation(line: 1168, column: 18, scope: !2720)
!2969 = !DILocation(line: 1168, column: 9, scope: !2720)
!2970 = !DILocation(line: 1167, column: 12, scope: !2720)
!2971 = !DILocation(line: 1167, column: 10, scope: !2720)
!2972 = !DILocation(line: 1169, column: 13, scope: !2720)
!2973 = !DILocation(line: 1169, column: 25, scope: !2720)
!2974 = !DILocation(line: 1169, column: 23, scope: !2720)
!2975 = !DILocation(line: 1169, column: 40, scope: !2720)
!2976 = !DILocation(line: 1169, column: 38, scope: !2720)
!2977 = !DILocation(line: 1169, column: 3, scope: !2720)
!2978 = !DILocation(line: 1169, column: 10, scope: !2720)
!2979 = !DILocation(line: 1170, column: 13, scope: !2720)
!2980 = !DILocation(line: 1170, column: 25, scope: !2720)
!2981 = !DILocation(line: 1170, column: 23, scope: !2720)
!2982 = !DILocation(line: 1170, column: 40, scope: !2720)
!2983 = !DILocation(line: 1170, column: 38, scope: !2720)
!2984 = !DILocation(line: 1170, column: 3, scope: !2720)
!2985 = !DILocation(line: 1170, column: 10, scope: !2720)
!2986 = !DILocation(line: 1171, column: 15, scope: !2720)
!2987 = !DILocation(line: 1171, column: 24, scope: !2720)
!2988 = !DILocation(line: 1171, column: 33, scope: !2720)
!2989 = !DILocation(line: 1171, column: 42, scope: !2720)
!2990 = !DILocation(line: 1171, column: 40, scope: !2720)
!2991 = !DILocation(line: 1171, column: 31, scope: !2720)
!2992 = !DILocation(line: 1171, column: 10, scope: !2720)
!2993 = !DILocation(line: 1171, column: 8, scope: !2720)
!2994 = !DILocation(line: 1174, column: 16, scope: !2720)
!2995 = !DILocation(line: 1174, column: 29, scope: !2720)
!2996 = !DILocation(line: 1174, column: 42, scope: !2720)
!2997 = !DILocation(line: 1174, column: 55, scope: !2720)
!2998 = !DILocation(line: 1174, column: 53, scope: !2720)
!2999 = !DILocation(line: 1174, column: 40, scope: !2720)
!3000 = !DILocation(line: 1174, column: 11, scope: !2720)
!3001 = !DILocation(line: 1174, column: 9, scope: !2720)
!3002 = !DILocation(line: 1174, column: 69, scope: !2720)
!3003 = !DILocation(line: 1174, column: 71, scope: !2720)
!3004 = !DILocation(line: 1174, column: 5, scope: !2720)
!3005 = !DILocation(line: 1175, column: 7, scope: !2720)
!3006 = !DILocation(line: 1175, column: 5, scope: !2720)
!3007 = !DILocation(line: 1176, column: 7, scope: !2720)
!3008 = !DILocation(line: 1176, column: 33, scope: !2720)
!3009 = !DILocation(line: 1176, column: 42, scope: !2720)
!3010 = !DILocation(line: 1176, column: 40, scope: !2720)
!3011 = !DILocation(line: 1176, column: 57, scope: !2720)
!3012 = !DILocation(line: 1176, column: 55, scope: !2720)
!3013 = !DILocation(line: 1176, column: 5, scope: !2720)
!3014 = !DILocation(line: 1177, column: 12, scope: !2720)
!3015 = !DILocation(line: 1177, column: 10, scope: !2720)
!3016 = !DILocation(line: 1177, column: 5, scope: !2720)
!3017 = !DILocation(line: 1179, column: 17, scope: !2720)
!3018 = !DILocation(line: 1179, column: 29, scope: !2720)
!3019 = !DILocation(line: 1179, column: 27, scope: !2720)
!3020 = !DILocation(line: 1179, column: 41, scope: !2720)
!3021 = !DILocation(line: 1179, column: 43, scope: !2720)
!3022 = !DILocation(line: 1179, column: 40, scope: !2720)
!3023 = !DILocation(line: 1179, column: 38, scope: !2720)
!3024 = !DILocation(line: 1179, column: 51, scope: !2720)
!3025 = !DILocation(line: 1179, column: 61, scope: !2720)
!3026 = !DILocation(line: 1179, column: 59, scope: !2720)
!3027 = !DILocation(line: 1179, column: 48, scope: !2720)
!3028 = !DILocation(line: 1179, column: 77, scope: !2720)
!3029 = !DILocation(line: 1181, column: 4, scope: !2720)
!3030 = !DILocation(line: 1181, column: 15, scope: !2720)
!3031 = !DILocation(line: 1181, column: 13, scope: !2720)
!3032 = !DILocation(line: 1181, column: 30, scope: !2720)
!3033 = !DILocation(line: 1181, column: 44, scope: !2720)
!3034 = !DILocation(line: 1182, column: 9, scope: !2720)
!3035 = !DILocation(line: 1182, column: 23, scope: !2720)
!3036 = !DILocation(line: 1182, column: 21, scope: !2720)
!3037 = !DILocation(line: 1181, column: 56, scope: !2720)
!3038 = !DILocation(line: 1181, column: 25, scope: !2720)
!3039 = !DILocation(line: 1181, column: 23, scope: !2720)
!3040 = !DILocation(line: 1180, column: 4, scope: !2720)
!3041 = !DILocation(line: 1183, column: 4, scope: !2720)
!3042 = !DILocation(line: 1182, column: 36, scope: !2720)
!3043 = !DILocation(line: 1179, column: 22, scope: !2720)
!3044 = !DILocation(line: 1179, column: 4, scope: !2720)
!3045 = !DILocation(line: 1179, column: 15, scope: !2720)
!3046 = !DILocation(line: 1184, column: 1, scope: !2720)
!3047 = distinct !DISubprogram(name: "test_BLAS_ddot_s_s", scope: !1, file: !1, line: 1187, type: !3048, scopeLine: 1236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3050)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{null, !43, !3, !29, !29, !29, !29, !29, !29, !30, !43, !30, !43, !29, !29, !32}
!3050 = !{!3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078}
!3051 = !DILocalVariable(name: "n", arg: 1, scope: !3047, file: !1, line: 1187, type: !43)
!3052 = !DILocalVariable(name: "conj", arg: 2, scope: !3047, file: !1, line: 1187, type: !3)
!3053 = !DILocalVariable(name: "alpha", arg: 3, scope: !3047, file: !1, line: 1187, type: !29)
!3054 = !DILocalVariable(name: "beta", arg: 4, scope: !3047, file: !1, line: 1188, type: !29)
!3055 = !DILocalVariable(name: "rin", arg: 5, scope: !3047, file: !1, line: 1188, type: !29)
!3056 = !DILocalVariable(name: "rout", arg: 6, scope: !3047, file: !1, line: 1188, type: !29)
!3057 = !DILocalVariable(name: "r_true_l", arg: 7, scope: !3047, file: !1, line: 1188, type: !29)
!3058 = !DILocalVariable(name: "r_true_t", arg: 8, scope: !3047, file: !1, line: 1189, type: !29)
!3059 = !DILocalVariable(name: "x", arg: 9, scope: !3047, file: !1, line: 1189, type: !30)
!3060 = !DILocalVariable(name: "incx", arg: 10, scope: !3047, file: !1, line: 1189, type: !43)
!3061 = !DILocalVariable(name: "y", arg: 11, scope: !3047, file: !1, line: 1189, type: !30)
!3062 = !DILocalVariable(name: "incy", arg: 12, scope: !3047, file: !1, line: 1190, type: !43)
!3063 = !DILocalVariable(name: "eps_int", arg: 13, scope: !3047, file: !1, line: 1190, type: !29)
!3064 = !DILocalVariable(name: "un_int", arg: 14, scope: !3047, file: !1, line: 1190, type: !29)
!3065 = !DILocalVariable(name: "test_ratio", arg: 15, scope: !3047, file: !1, line: 1191, type: !32)
!3066 = !DILocalVariable(name: "i", scope: !3047, file: !1, line: 1237, type: !43)
!3067 = !DILocalVariable(name: "ix", scope: !3047, file: !1, line: 1237, type: !43)
!3068 = !DILocalVariable(name: "iy", scope: !3047, file: !1, line: 1237, type: !43)
!3069 = !DILocalVariable(name: "eps_accurate", scope: !3047, file: !1, line: 1238, type: !29)
!3070 = !DILocalVariable(name: "eps_out", scope: !3047, file: !1, line: 1238, type: !29)
!3071 = !DILocalVariable(name: "tmp1", scope: !3047, file: !1, line: 1238, type: !29)
!3072 = !DILocalVariable(name: "S", scope: !3047, file: !1, line: 1238, type: !29)
!3073 = !DILocalVariable(name: "S1", scope: !3047, file: !1, line: 1238, type: !29)
!3074 = !DILocalVariable(name: "S2", scope: !3047, file: !1, line: 1238, type: !29)
!3075 = !DILocalVariable(name: "U", scope: !3047, file: !1, line: 1238, type: !29)
!3076 = !DILocalVariable(name: "un_d", scope: !3047, file: !1, line: 1239, type: !29)
!3077 = !DILocalVariable(name: "un_accurate", scope: !3047, file: !1, line: 1239, type: !29)
!3078 = !DILocalVariable(name: "un_out", scope: !3047, file: !1, line: 1239, type: !29)
!3079 = !DILocation(line: 1187, column: 29, scope: !3047)
!3080 = !DILocation(line: 1187, column: 52, scope: !3047)
!3081 = !DILocation(line: 1187, column: 65, scope: !3047)
!3082 = !DILocation(line: 1188, column: 11, scope: !3047)
!3083 = !DILocation(line: 1188, column: 24, scope: !3047)
!3084 = !DILocation(line: 1188, column: 36, scope: !3047)
!3085 = !DILocation(line: 1188, column: 49, scope: !3047)
!3086 = !DILocation(line: 1189, column: 11, scope: !3047)
!3087 = !DILocation(line: 1189, column: 28, scope: !3047)
!3088 = !DILocation(line: 1189, column: 35, scope: !3047)
!3089 = !DILocation(line: 1189, column: 48, scope: !3047)
!3090 = !DILocation(line: 1190, column: 8, scope: !3047)
!3091 = !DILocation(line: 1190, column: 21, scope: !3047)
!3092 = !DILocation(line: 1190, column: 37, scope: !3047)
!3093 = !DILocation(line: 1191, column: 12, scope: !3047)
!3094 = !DILocation(line: 1237, column: 3, scope: !3047)
!3095 = !DILocation(line: 1237, column: 7, scope: !3047)
!3096 = !DILocation(line: 1237, column: 10, scope: !3047)
!3097 = !DILocation(line: 1237, column: 14, scope: !3047)
!3098 = !DILocation(line: 1238, column: 3, scope: !3047)
!3099 = !DILocation(line: 1238, column: 10, scope: !3047)
!3100 = !DILocation(line: 1238, column: 24, scope: !3047)
!3101 = !DILocation(line: 1238, column: 33, scope: !3047)
!3102 = !DILocation(line: 1238, column: 39, scope: !3047)
!3103 = !DILocation(line: 1238, column: 42, scope: !3047)
!3104 = !DILocation(line: 1238, column: 46, scope: !3047)
!3105 = !DILocation(line: 1238, column: 50, scope: !3047)
!3106 = !DILocation(line: 1239, column: 3, scope: !3047)
!3107 = !DILocation(line: 1239, column: 10, scope: !3047)
!3108 = !DILocation(line: 1239, column: 16, scope: !3047)
!3109 = !DILocation(line: 1239, column: 29, scope: !3047)
!3110 = !DILocation(line: 1242, column: 6, scope: !3047)
!3111 = !DILocation(line: 1243, column: 6, scope: !3047)
!3112 = !DILocation(line: 1244, column: 7, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3047, file: !1, line: 1244, column: 7)
!3114 = !DILocation(line: 1244, column: 12, scope: !3113)
!3115 = !DILocation(line: 1244, column: 7, scope: !3047)
!3116 = !DILocation(line: 1245, column: 12, scope: !3113)
!3117 = !DILocation(line: 1245, column: 14, scope: !3113)
!3118 = !DILocation(line: 1245, column: 10, scope: !3113)
!3119 = !DILocation(line: 1245, column: 21, scope: !3113)
!3120 = !DILocation(line: 1245, column: 19, scope: !3113)
!3121 = !DILocation(line: 1245, column: 8, scope: !3113)
!3122 = !DILocation(line: 1245, column: 5, scope: !3113)
!3123 = !DILocation(line: 1246, column: 7, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3047, file: !1, line: 1246, column: 7)
!3125 = !DILocation(line: 1246, column: 12, scope: !3124)
!3126 = !DILocation(line: 1246, column: 7, scope: !3047)
!3127 = !DILocation(line: 1247, column: 12, scope: !3124)
!3128 = !DILocation(line: 1247, column: 14, scope: !3124)
!3129 = !DILocation(line: 1247, column: 10, scope: !3124)
!3130 = !DILocation(line: 1247, column: 21, scope: !3124)
!3131 = !DILocation(line: 1247, column: 19, scope: !3124)
!3132 = !DILocation(line: 1247, column: 8, scope: !3124)
!3133 = !DILocation(line: 1247, column: 5, scope: !3124)
!3134 = !DILocation(line: 1250, column: 15, scope: !3047)
!3135 = !DILocation(line: 1250, column: 10, scope: !3047)
!3136 = !DILocation(line: 1250, column: 5, scope: !3047)
!3137 = !DILocation(line: 1251, column: 10, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3047, file: !1, line: 1251, column: 3)
!3139 = !DILocation(line: 1251, column: 8, scope: !3138)
!3140 = !DILocation(line: 1251, column: 15, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3138, file: !1, line: 1251, column: 3)
!3142 = !DILocation(line: 1251, column: 19, scope: !3141)
!3143 = !DILocation(line: 1251, column: 17, scope: !3141)
!3144 = !DILocation(line: 1251, column: 3, scope: !3138)
!3145 = !DILocation(line: 1252, column: 15, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3141, file: !1, line: 1251, column: 27)
!3147 = !DILocation(line: 1252, column: 17, scope: !3146)
!3148 = !DILocation(line: 1252, column: 23, scope: !3146)
!3149 = !DILocation(line: 1252, column: 25, scope: !3146)
!3150 = !DILocation(line: 1252, column: 21, scope: !3146)
!3151 = !DILocation(line: 1252, column: 10, scope: !3146)
!3152 = !DILocation(line: 1252, column: 7, scope: !3146)
!3153 = !DILocation(line: 1253, column: 16, scope: !3146)
!3154 = !DILocation(line: 1253, column: 18, scope: !3146)
!3155 = !DILocation(line: 1253, column: 11, scope: !3146)
!3156 = !DILocation(line: 1253, column: 8, scope: !3146)
!3157 = !DILocation(line: 1254, column: 16, scope: !3146)
!3158 = !DILocation(line: 1254, column: 18, scope: !3146)
!3159 = !DILocation(line: 1254, column: 11, scope: !3146)
!3160 = !DILocation(line: 1254, column: 8, scope: !3146)
!3161 = !DILocation(line: 1255, column: 11, scope: !3146)
!3162 = !DILocation(line: 1255, column: 8, scope: !3146)
!3163 = !DILocation(line: 1256, column: 11, scope: !3146)
!3164 = !DILocation(line: 1256, column: 8, scope: !3146)
!3165 = !DILocation(line: 1257, column: 3, scope: !3146)
!3166 = !DILocation(line: 1251, column: 22, scope: !3141)
!3167 = !DILocation(line: 1251, column: 3, scope: !3141)
!3168 = distinct !{!3168, !3144, !3169, !175}
!3169 = !DILocation(line: 1257, column: 3, scope: !3138)
!3170 = !DILocation(line: 1258, column: 13, scope: !3047)
!3171 = !DILocation(line: 1258, column: 8, scope: !3047)
!3172 = !DILocation(line: 1258, column: 5, scope: !3047)
!3173 = !DILocation(line: 1259, column: 13, scope: !3047)
!3174 = !DILocation(line: 1259, column: 20, scope: !3047)
!3175 = !DILocation(line: 1259, column: 18, scope: !3047)
!3176 = !DILocation(line: 1259, column: 8, scope: !3047)
!3177 = !DILocation(line: 1259, column: 5, scope: !3047)
!3178 = !DILocation(line: 1261, column: 23, scope: !3047)
!3179 = !DILocation(line: 1261, column: 14, scope: !3047)
!3180 = !DILocation(line: 1262, column: 16, scope: !3047)
!3181 = !DILocation(line: 1262, column: 7, scope: !3047)
!3182 = !DILocation(line: 1261, column: 10, scope: !3047)
!3183 = !DILocation(line: 1261, column: 8, scope: !3047)
!3184 = !DILocation(line: 1263, column: 7, scope: !3047)
!3185 = !DILocation(line: 1263, column: 5, scope: !3047)
!3186 = !DILocation(line: 1265, column: 18, scope: !3047)
!3187 = !DILocation(line: 1265, column: 16, scope: !3047)
!3188 = !DILocation(line: 1266, column: 30, scope: !3047)
!3189 = !DILocation(line: 1266, column: 21, scope: !3047)
!3190 = !DILocation(line: 1267, column: 16, scope: !3047)
!3191 = !DILocation(line: 1267, column: 7, scope: !3047)
!3192 = !DILocation(line: 1266, column: 17, scope: !3047)
!3193 = !DILocation(line: 1266, column: 15, scope: !3047)
!3194 = !DILocation(line: 1269, column: 13, scope: !3047)
!3195 = !DILocation(line: 1269, column: 11, scope: !3047)
!3196 = !DILocation(line: 1270, column: 25, scope: !3047)
!3197 = !DILocation(line: 1270, column: 16, scope: !3047)
!3198 = !DILocation(line: 1271, column: 18, scope: !3047)
!3199 = !DILocation(line: 1271, column: 9, scope: !3047)
!3200 = !DILocation(line: 1270, column: 12, scope: !3047)
!3201 = !DILocation(line: 1270, column: 10, scope: !3047)
!3202 = !DILocation(line: 1272, column: 16, scope: !3047)
!3203 = !DILocation(line: 1272, column: 23, scope: !3047)
!3204 = !DILocation(line: 1272, column: 21, scope: !3047)
!3205 = !DILocation(line: 1272, column: 35, scope: !3047)
!3206 = !DILocation(line: 1272, column: 33, scope: !3047)
!3207 = !DILocation(line: 1272, column: 10, scope: !3047)
!3208 = !DILocation(line: 1272, column: 8, scope: !3047)
!3209 = !DILocation(line: 1275, column: 16, scope: !3047)
!3210 = !DILocation(line: 1275, column: 11, scope: !3047)
!3211 = !DILocation(line: 1275, column: 9, scope: !3047)
!3212 = !DILocation(line: 1275, column: 25, scope: !3047)
!3213 = !DILocation(line: 1275, column: 27, scope: !3047)
!3214 = !DILocation(line: 1275, column: 5, scope: !3047)
!3215 = !DILocation(line: 1276, column: 7, scope: !3047)
!3216 = !DILocation(line: 1276, column: 5, scope: !3047)
!3217 = !DILocation(line: 1277, column: 7, scope: !3047)
!3218 = !DILocation(line: 1277, column: 33, scope: !3047)
!3219 = !DILocation(line: 1277, column: 42, scope: !3047)
!3220 = !DILocation(line: 1277, column: 40, scope: !3047)
!3221 = !DILocation(line: 1277, column: 57, scope: !3047)
!3222 = !DILocation(line: 1277, column: 55, scope: !3047)
!3223 = !DILocation(line: 1277, column: 5, scope: !3047)
!3224 = !DILocation(line: 1279, column: 17, scope: !3047)
!3225 = !DILocation(line: 1279, column: 26, scope: !3047)
!3226 = !DILocation(line: 1279, column: 28, scope: !3047)
!3227 = !DILocation(line: 1279, column: 25, scope: !3047)
!3228 = !DILocation(line: 1279, column: 36, scope: !3047)
!3229 = !DILocation(line: 1279, column: 46, scope: !3047)
!3230 = !DILocation(line: 1279, column: 44, scope: !3047)
!3231 = !DILocation(line: 1279, column: 33, scope: !3047)
!3232 = !DILocation(line: 1279, column: 62, scope: !3047)
!3233 = !DILocation(line: 1280, column: 6, scope: !3047)
!3234 = !DILocation(line: 1280, column: 21, scope: !3047)
!3235 = !DILocation(line: 1280, column: 16, scope: !3047)
!3236 = !DILocation(line: 1280, column: 14, scope: !3047)
!3237 = !DILocation(line: 1280, column: 4, scope: !3047)
!3238 = !DILocation(line: 1280, column: 33, scope: !3047)
!3239 = !DILocation(line: 1280, column: 31, scope: !3047)
!3240 = !DILocation(line: 1279, column: 22, scope: !3047)
!3241 = !DILocation(line: 1279, column: 4, scope: !3047)
!3242 = !DILocation(line: 1279, column: 15, scope: !3047)
!3243 = !DILocation(line: 1281, column: 1, scope: !3047)
!3244 = distinct !DISubprogram(name: "test_BLAS_ddot_s_d", scope: !1, file: !1, line: 1282, type: !3245, scopeLine: 1331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3247)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{null, !43, !3, !29, !29, !29, !29, !29, !29, !30, !43, !32, !43, !29, !29, !32}
!3247 = !{!3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275}
!3248 = !DILocalVariable(name: "n", arg: 1, scope: !3244, file: !1, line: 1282, type: !43)
!3249 = !DILocalVariable(name: "conj", arg: 2, scope: !3244, file: !1, line: 1282, type: !3)
!3250 = !DILocalVariable(name: "alpha", arg: 3, scope: !3244, file: !1, line: 1282, type: !29)
!3251 = !DILocalVariable(name: "beta", arg: 4, scope: !3244, file: !1, line: 1283, type: !29)
!3252 = !DILocalVariable(name: "rin", arg: 5, scope: !3244, file: !1, line: 1283, type: !29)
!3253 = !DILocalVariable(name: "rout", arg: 6, scope: !3244, file: !1, line: 1283, type: !29)
!3254 = !DILocalVariable(name: "r_true_l", arg: 7, scope: !3244, file: !1, line: 1283, type: !29)
!3255 = !DILocalVariable(name: "r_true_t", arg: 8, scope: !3244, file: !1, line: 1284, type: !29)
!3256 = !DILocalVariable(name: "x", arg: 9, scope: !3244, file: !1, line: 1284, type: !30)
!3257 = !DILocalVariable(name: "incx", arg: 10, scope: !3244, file: !1, line: 1284, type: !43)
!3258 = !DILocalVariable(name: "y", arg: 11, scope: !3244, file: !1, line: 1284, type: !32)
!3259 = !DILocalVariable(name: "incy", arg: 12, scope: !3244, file: !1, line: 1285, type: !43)
!3260 = !DILocalVariable(name: "eps_int", arg: 13, scope: !3244, file: !1, line: 1285, type: !29)
!3261 = !DILocalVariable(name: "un_int", arg: 14, scope: !3244, file: !1, line: 1285, type: !29)
!3262 = !DILocalVariable(name: "test_ratio", arg: 15, scope: !3244, file: !1, line: 1286, type: !32)
!3263 = !DILocalVariable(name: "i", scope: !3244, file: !1, line: 1332, type: !43)
!3264 = !DILocalVariable(name: "ix", scope: !3244, file: !1, line: 1332, type: !43)
!3265 = !DILocalVariable(name: "iy", scope: !3244, file: !1, line: 1332, type: !43)
!3266 = !DILocalVariable(name: "eps_accurate", scope: !3244, file: !1, line: 1333, type: !29)
!3267 = !DILocalVariable(name: "eps_out", scope: !3244, file: !1, line: 1333, type: !29)
!3268 = !DILocalVariable(name: "tmp1", scope: !3244, file: !1, line: 1333, type: !29)
!3269 = !DILocalVariable(name: "S", scope: !3244, file: !1, line: 1333, type: !29)
!3270 = !DILocalVariable(name: "S1", scope: !3244, file: !1, line: 1333, type: !29)
!3271 = !DILocalVariable(name: "S2", scope: !3244, file: !1, line: 1333, type: !29)
!3272 = !DILocalVariable(name: "U", scope: !3244, file: !1, line: 1333, type: !29)
!3273 = !DILocalVariable(name: "un_d", scope: !3244, file: !1, line: 1334, type: !29)
!3274 = !DILocalVariable(name: "un_accurate", scope: !3244, file: !1, line: 1334, type: !29)
!3275 = !DILocalVariable(name: "un_out", scope: !3244, file: !1, line: 1334, type: !29)
!3276 = !DILocation(line: 1282, column: 29, scope: !3244)
!3277 = !DILocation(line: 1282, column: 52, scope: !3244)
!3278 = !DILocation(line: 1282, column: 65, scope: !3244)
!3279 = !DILocation(line: 1283, column: 11, scope: !3244)
!3280 = !DILocation(line: 1283, column: 24, scope: !3244)
!3281 = !DILocation(line: 1283, column: 36, scope: !3244)
!3282 = !DILocation(line: 1283, column: 49, scope: !3244)
!3283 = !DILocation(line: 1284, column: 11, scope: !3244)
!3284 = !DILocation(line: 1284, column: 28, scope: !3244)
!3285 = !DILocation(line: 1284, column: 35, scope: !3244)
!3286 = !DILocation(line: 1284, column: 49, scope: !3244)
!3287 = !DILocation(line: 1285, column: 8, scope: !3244)
!3288 = !DILocation(line: 1285, column: 21, scope: !3244)
!3289 = !DILocation(line: 1285, column: 37, scope: !3244)
!3290 = !DILocation(line: 1286, column: 12, scope: !3244)
!3291 = !DILocation(line: 1332, column: 3, scope: !3244)
!3292 = !DILocation(line: 1332, column: 7, scope: !3244)
!3293 = !DILocation(line: 1332, column: 10, scope: !3244)
!3294 = !DILocation(line: 1332, column: 14, scope: !3244)
!3295 = !DILocation(line: 1333, column: 3, scope: !3244)
!3296 = !DILocation(line: 1333, column: 10, scope: !3244)
!3297 = !DILocation(line: 1333, column: 24, scope: !3244)
!3298 = !DILocation(line: 1333, column: 33, scope: !3244)
!3299 = !DILocation(line: 1333, column: 39, scope: !3244)
!3300 = !DILocation(line: 1333, column: 42, scope: !3244)
!3301 = !DILocation(line: 1333, column: 46, scope: !3244)
!3302 = !DILocation(line: 1333, column: 50, scope: !3244)
!3303 = !DILocation(line: 1334, column: 3, scope: !3244)
!3304 = !DILocation(line: 1334, column: 10, scope: !3244)
!3305 = !DILocation(line: 1334, column: 16, scope: !3244)
!3306 = !DILocation(line: 1334, column: 29, scope: !3244)
!3307 = !DILocation(line: 1337, column: 6, scope: !3244)
!3308 = !DILocation(line: 1338, column: 6, scope: !3244)
!3309 = !DILocation(line: 1339, column: 7, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3244, file: !1, line: 1339, column: 7)
!3311 = !DILocation(line: 1339, column: 12, scope: !3310)
!3312 = !DILocation(line: 1339, column: 7, scope: !3244)
!3313 = !DILocation(line: 1340, column: 12, scope: !3310)
!3314 = !DILocation(line: 1340, column: 14, scope: !3310)
!3315 = !DILocation(line: 1340, column: 10, scope: !3310)
!3316 = !DILocation(line: 1340, column: 21, scope: !3310)
!3317 = !DILocation(line: 1340, column: 19, scope: !3310)
!3318 = !DILocation(line: 1340, column: 8, scope: !3310)
!3319 = !DILocation(line: 1340, column: 5, scope: !3310)
!3320 = !DILocation(line: 1341, column: 7, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3244, file: !1, line: 1341, column: 7)
!3322 = !DILocation(line: 1341, column: 12, scope: !3321)
!3323 = !DILocation(line: 1341, column: 7, scope: !3244)
!3324 = !DILocation(line: 1342, column: 12, scope: !3321)
!3325 = !DILocation(line: 1342, column: 14, scope: !3321)
!3326 = !DILocation(line: 1342, column: 10, scope: !3321)
!3327 = !DILocation(line: 1342, column: 21, scope: !3321)
!3328 = !DILocation(line: 1342, column: 19, scope: !3321)
!3329 = !DILocation(line: 1342, column: 8, scope: !3321)
!3330 = !DILocation(line: 1342, column: 5, scope: !3321)
!3331 = !DILocation(line: 1345, column: 15, scope: !3244)
!3332 = !DILocation(line: 1345, column: 10, scope: !3244)
!3333 = !DILocation(line: 1345, column: 5, scope: !3244)
!3334 = !DILocation(line: 1346, column: 10, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3244, file: !1, line: 1346, column: 3)
!3336 = !DILocation(line: 1346, column: 8, scope: !3335)
!3337 = !DILocation(line: 1346, column: 15, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3335, file: !1, line: 1346, column: 3)
!3339 = !DILocation(line: 1346, column: 19, scope: !3338)
!3340 = !DILocation(line: 1346, column: 17, scope: !3338)
!3341 = !DILocation(line: 1346, column: 3, scope: !3335)
!3342 = !DILocation(line: 1347, column: 15, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3338, file: !1, line: 1346, column: 27)
!3344 = !DILocation(line: 1347, column: 17, scope: !3343)
!3345 = !DILocation(line: 1347, column: 23, scope: !3343)
!3346 = !DILocation(line: 1347, column: 25, scope: !3343)
!3347 = !DILocation(line: 1347, column: 21, scope: !3343)
!3348 = !DILocation(line: 1347, column: 10, scope: !3343)
!3349 = !DILocation(line: 1347, column: 7, scope: !3343)
!3350 = !DILocation(line: 1348, column: 16, scope: !3343)
!3351 = !DILocation(line: 1348, column: 18, scope: !3343)
!3352 = !DILocation(line: 1348, column: 11, scope: !3343)
!3353 = !DILocation(line: 1348, column: 8, scope: !3343)
!3354 = !DILocation(line: 1349, column: 16, scope: !3343)
!3355 = !DILocation(line: 1349, column: 18, scope: !3343)
!3356 = !DILocation(line: 1349, column: 11, scope: !3343)
!3357 = !DILocation(line: 1349, column: 8, scope: !3343)
!3358 = !DILocation(line: 1350, column: 11, scope: !3343)
!3359 = !DILocation(line: 1350, column: 8, scope: !3343)
!3360 = !DILocation(line: 1351, column: 11, scope: !3343)
!3361 = !DILocation(line: 1351, column: 8, scope: !3343)
!3362 = !DILocation(line: 1352, column: 3, scope: !3343)
!3363 = !DILocation(line: 1346, column: 22, scope: !3338)
!3364 = !DILocation(line: 1346, column: 3, scope: !3338)
!3365 = distinct !{!3365, !3341, !3366, !175}
!3366 = !DILocation(line: 1352, column: 3, scope: !3335)
!3367 = !DILocation(line: 1353, column: 13, scope: !3244)
!3368 = !DILocation(line: 1353, column: 8, scope: !3244)
!3369 = !DILocation(line: 1353, column: 5, scope: !3244)
!3370 = !DILocation(line: 1354, column: 13, scope: !3244)
!3371 = !DILocation(line: 1354, column: 20, scope: !3244)
!3372 = !DILocation(line: 1354, column: 18, scope: !3244)
!3373 = !DILocation(line: 1354, column: 8, scope: !3244)
!3374 = !DILocation(line: 1354, column: 5, scope: !3244)
!3375 = !DILocation(line: 1356, column: 23, scope: !3244)
!3376 = !DILocation(line: 1356, column: 14, scope: !3244)
!3377 = !DILocation(line: 1357, column: 16, scope: !3244)
!3378 = !DILocation(line: 1357, column: 7, scope: !3244)
!3379 = !DILocation(line: 1356, column: 10, scope: !3244)
!3380 = !DILocation(line: 1356, column: 8, scope: !3244)
!3381 = !DILocation(line: 1358, column: 7, scope: !3244)
!3382 = !DILocation(line: 1358, column: 5, scope: !3244)
!3383 = !DILocation(line: 1360, column: 18, scope: !3244)
!3384 = !DILocation(line: 1360, column: 16, scope: !3244)
!3385 = !DILocation(line: 1361, column: 30, scope: !3244)
!3386 = !DILocation(line: 1361, column: 21, scope: !3244)
!3387 = !DILocation(line: 1362, column: 16, scope: !3244)
!3388 = !DILocation(line: 1362, column: 7, scope: !3244)
!3389 = !DILocation(line: 1361, column: 17, scope: !3244)
!3390 = !DILocation(line: 1361, column: 15, scope: !3244)
!3391 = !DILocation(line: 1364, column: 13, scope: !3244)
!3392 = !DILocation(line: 1364, column: 11, scope: !3244)
!3393 = !DILocation(line: 1365, column: 25, scope: !3244)
!3394 = !DILocation(line: 1365, column: 16, scope: !3244)
!3395 = !DILocation(line: 1366, column: 18, scope: !3244)
!3396 = !DILocation(line: 1366, column: 9, scope: !3244)
!3397 = !DILocation(line: 1365, column: 12, scope: !3244)
!3398 = !DILocation(line: 1365, column: 10, scope: !3244)
!3399 = !DILocation(line: 1367, column: 16, scope: !3244)
!3400 = !DILocation(line: 1367, column: 23, scope: !3244)
!3401 = !DILocation(line: 1367, column: 21, scope: !3244)
!3402 = !DILocation(line: 1367, column: 35, scope: !3244)
!3403 = !DILocation(line: 1367, column: 33, scope: !3244)
!3404 = !DILocation(line: 1367, column: 10, scope: !3244)
!3405 = !DILocation(line: 1367, column: 8, scope: !3244)
!3406 = !DILocation(line: 1370, column: 16, scope: !3244)
!3407 = !DILocation(line: 1370, column: 11, scope: !3244)
!3408 = !DILocation(line: 1370, column: 9, scope: !3244)
!3409 = !DILocation(line: 1370, column: 25, scope: !3244)
!3410 = !DILocation(line: 1370, column: 27, scope: !3244)
!3411 = !DILocation(line: 1370, column: 5, scope: !3244)
!3412 = !DILocation(line: 1371, column: 7, scope: !3244)
!3413 = !DILocation(line: 1371, column: 5, scope: !3244)
!3414 = !DILocation(line: 1372, column: 7, scope: !3244)
!3415 = !DILocation(line: 1372, column: 33, scope: !3244)
!3416 = !DILocation(line: 1372, column: 42, scope: !3244)
!3417 = !DILocation(line: 1372, column: 40, scope: !3244)
!3418 = !DILocation(line: 1372, column: 57, scope: !3244)
!3419 = !DILocation(line: 1372, column: 55, scope: !3244)
!3420 = !DILocation(line: 1372, column: 5, scope: !3244)
!3421 = !DILocation(line: 1374, column: 17, scope: !3244)
!3422 = !DILocation(line: 1374, column: 26, scope: !3244)
!3423 = !DILocation(line: 1374, column: 28, scope: !3244)
!3424 = !DILocation(line: 1374, column: 25, scope: !3244)
!3425 = !DILocation(line: 1374, column: 36, scope: !3244)
!3426 = !DILocation(line: 1374, column: 46, scope: !3244)
!3427 = !DILocation(line: 1374, column: 44, scope: !3244)
!3428 = !DILocation(line: 1374, column: 33, scope: !3244)
!3429 = !DILocation(line: 1374, column: 62, scope: !3244)
!3430 = !DILocation(line: 1375, column: 6, scope: !3244)
!3431 = !DILocation(line: 1375, column: 21, scope: !3244)
!3432 = !DILocation(line: 1375, column: 16, scope: !3244)
!3433 = !DILocation(line: 1375, column: 14, scope: !3244)
!3434 = !DILocation(line: 1375, column: 4, scope: !3244)
!3435 = !DILocation(line: 1375, column: 33, scope: !3244)
!3436 = !DILocation(line: 1375, column: 31, scope: !3244)
!3437 = !DILocation(line: 1374, column: 22, scope: !3244)
!3438 = !DILocation(line: 1374, column: 4, scope: !3244)
!3439 = !DILocation(line: 1374, column: 15, scope: !3244)
!3440 = !DILocation(line: 1376, column: 1, scope: !3244)
!3441 = distinct !DISubprogram(name: "test_BLAS_ddot_d_s", scope: !1, file: !1, line: 1377, type: !3442, scopeLine: 1426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3444)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{null, !43, !3, !29, !29, !29, !29, !29, !29, !32, !43, !30, !43, !29, !29, !32}
!3444 = !{!3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472}
!3445 = !DILocalVariable(name: "n", arg: 1, scope: !3441, file: !1, line: 1377, type: !43)
!3446 = !DILocalVariable(name: "conj", arg: 2, scope: !3441, file: !1, line: 1377, type: !3)
!3447 = !DILocalVariable(name: "alpha", arg: 3, scope: !3441, file: !1, line: 1377, type: !29)
!3448 = !DILocalVariable(name: "beta", arg: 4, scope: !3441, file: !1, line: 1378, type: !29)
!3449 = !DILocalVariable(name: "rin", arg: 5, scope: !3441, file: !1, line: 1378, type: !29)
!3450 = !DILocalVariable(name: "rout", arg: 6, scope: !3441, file: !1, line: 1378, type: !29)
!3451 = !DILocalVariable(name: "r_true_l", arg: 7, scope: !3441, file: !1, line: 1378, type: !29)
!3452 = !DILocalVariable(name: "r_true_t", arg: 8, scope: !3441, file: !1, line: 1379, type: !29)
!3453 = !DILocalVariable(name: "x", arg: 9, scope: !3441, file: !1, line: 1379, type: !32)
!3454 = !DILocalVariable(name: "incx", arg: 10, scope: !3441, file: !1, line: 1379, type: !43)
!3455 = !DILocalVariable(name: "y", arg: 11, scope: !3441, file: !1, line: 1379, type: !30)
!3456 = !DILocalVariable(name: "incy", arg: 12, scope: !3441, file: !1, line: 1380, type: !43)
!3457 = !DILocalVariable(name: "eps_int", arg: 13, scope: !3441, file: !1, line: 1380, type: !29)
!3458 = !DILocalVariable(name: "un_int", arg: 14, scope: !3441, file: !1, line: 1380, type: !29)
!3459 = !DILocalVariable(name: "test_ratio", arg: 15, scope: !3441, file: !1, line: 1381, type: !32)
!3460 = !DILocalVariable(name: "i", scope: !3441, file: !1, line: 1427, type: !43)
!3461 = !DILocalVariable(name: "ix", scope: !3441, file: !1, line: 1427, type: !43)
!3462 = !DILocalVariable(name: "iy", scope: !3441, file: !1, line: 1427, type: !43)
!3463 = !DILocalVariable(name: "eps_accurate", scope: !3441, file: !1, line: 1428, type: !29)
!3464 = !DILocalVariable(name: "eps_out", scope: !3441, file: !1, line: 1428, type: !29)
!3465 = !DILocalVariable(name: "tmp1", scope: !3441, file: !1, line: 1428, type: !29)
!3466 = !DILocalVariable(name: "S", scope: !3441, file: !1, line: 1428, type: !29)
!3467 = !DILocalVariable(name: "S1", scope: !3441, file: !1, line: 1428, type: !29)
!3468 = !DILocalVariable(name: "S2", scope: !3441, file: !1, line: 1428, type: !29)
!3469 = !DILocalVariable(name: "U", scope: !3441, file: !1, line: 1428, type: !29)
!3470 = !DILocalVariable(name: "un_d", scope: !3441, file: !1, line: 1429, type: !29)
!3471 = !DILocalVariable(name: "un_accurate", scope: !3441, file: !1, line: 1429, type: !29)
!3472 = !DILocalVariable(name: "un_out", scope: !3441, file: !1, line: 1429, type: !29)
!3473 = !DILocation(line: 1377, column: 29, scope: !3441)
!3474 = !DILocation(line: 1377, column: 52, scope: !3441)
!3475 = !DILocation(line: 1377, column: 65, scope: !3441)
!3476 = !DILocation(line: 1378, column: 11, scope: !3441)
!3477 = !DILocation(line: 1378, column: 24, scope: !3441)
!3478 = !DILocation(line: 1378, column: 36, scope: !3441)
!3479 = !DILocation(line: 1378, column: 49, scope: !3441)
!3480 = !DILocation(line: 1379, column: 11, scope: !3441)
!3481 = !DILocation(line: 1379, column: 29, scope: !3441)
!3482 = !DILocation(line: 1379, column: 36, scope: !3441)
!3483 = !DILocation(line: 1379, column: 49, scope: !3441)
!3484 = !DILocation(line: 1380, column: 8, scope: !3441)
!3485 = !DILocation(line: 1380, column: 21, scope: !3441)
!3486 = !DILocation(line: 1380, column: 37, scope: !3441)
!3487 = !DILocation(line: 1381, column: 12, scope: !3441)
!3488 = !DILocation(line: 1427, column: 3, scope: !3441)
!3489 = !DILocation(line: 1427, column: 7, scope: !3441)
!3490 = !DILocation(line: 1427, column: 10, scope: !3441)
!3491 = !DILocation(line: 1427, column: 14, scope: !3441)
!3492 = !DILocation(line: 1428, column: 3, scope: !3441)
!3493 = !DILocation(line: 1428, column: 10, scope: !3441)
!3494 = !DILocation(line: 1428, column: 24, scope: !3441)
!3495 = !DILocation(line: 1428, column: 33, scope: !3441)
!3496 = !DILocation(line: 1428, column: 39, scope: !3441)
!3497 = !DILocation(line: 1428, column: 42, scope: !3441)
!3498 = !DILocation(line: 1428, column: 46, scope: !3441)
!3499 = !DILocation(line: 1428, column: 50, scope: !3441)
!3500 = !DILocation(line: 1429, column: 3, scope: !3441)
!3501 = !DILocation(line: 1429, column: 10, scope: !3441)
!3502 = !DILocation(line: 1429, column: 16, scope: !3441)
!3503 = !DILocation(line: 1429, column: 29, scope: !3441)
!3504 = !DILocation(line: 1432, column: 6, scope: !3441)
!3505 = !DILocation(line: 1433, column: 6, scope: !3441)
!3506 = !DILocation(line: 1434, column: 7, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3441, file: !1, line: 1434, column: 7)
!3508 = !DILocation(line: 1434, column: 12, scope: !3507)
!3509 = !DILocation(line: 1434, column: 7, scope: !3441)
!3510 = !DILocation(line: 1435, column: 12, scope: !3507)
!3511 = !DILocation(line: 1435, column: 14, scope: !3507)
!3512 = !DILocation(line: 1435, column: 10, scope: !3507)
!3513 = !DILocation(line: 1435, column: 21, scope: !3507)
!3514 = !DILocation(line: 1435, column: 19, scope: !3507)
!3515 = !DILocation(line: 1435, column: 8, scope: !3507)
!3516 = !DILocation(line: 1435, column: 5, scope: !3507)
!3517 = !DILocation(line: 1436, column: 7, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3441, file: !1, line: 1436, column: 7)
!3519 = !DILocation(line: 1436, column: 12, scope: !3518)
!3520 = !DILocation(line: 1436, column: 7, scope: !3441)
!3521 = !DILocation(line: 1437, column: 12, scope: !3518)
!3522 = !DILocation(line: 1437, column: 14, scope: !3518)
!3523 = !DILocation(line: 1437, column: 10, scope: !3518)
!3524 = !DILocation(line: 1437, column: 21, scope: !3518)
!3525 = !DILocation(line: 1437, column: 19, scope: !3518)
!3526 = !DILocation(line: 1437, column: 8, scope: !3518)
!3527 = !DILocation(line: 1437, column: 5, scope: !3518)
!3528 = !DILocation(line: 1440, column: 15, scope: !3441)
!3529 = !DILocation(line: 1440, column: 10, scope: !3441)
!3530 = !DILocation(line: 1440, column: 5, scope: !3441)
!3531 = !DILocation(line: 1441, column: 10, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3441, file: !1, line: 1441, column: 3)
!3533 = !DILocation(line: 1441, column: 8, scope: !3532)
!3534 = !DILocation(line: 1441, column: 15, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3532, file: !1, line: 1441, column: 3)
!3536 = !DILocation(line: 1441, column: 19, scope: !3535)
!3537 = !DILocation(line: 1441, column: 17, scope: !3535)
!3538 = !DILocation(line: 1441, column: 3, scope: !3532)
!3539 = !DILocation(line: 1442, column: 15, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3535, file: !1, line: 1441, column: 27)
!3541 = !DILocation(line: 1442, column: 17, scope: !3540)
!3542 = !DILocation(line: 1442, column: 23, scope: !3540)
!3543 = !DILocation(line: 1442, column: 25, scope: !3540)
!3544 = !DILocation(line: 1442, column: 21, scope: !3540)
!3545 = !DILocation(line: 1442, column: 10, scope: !3540)
!3546 = !DILocation(line: 1442, column: 7, scope: !3540)
!3547 = !DILocation(line: 1443, column: 16, scope: !3540)
!3548 = !DILocation(line: 1443, column: 18, scope: !3540)
!3549 = !DILocation(line: 1443, column: 11, scope: !3540)
!3550 = !DILocation(line: 1443, column: 8, scope: !3540)
!3551 = !DILocation(line: 1444, column: 16, scope: !3540)
!3552 = !DILocation(line: 1444, column: 18, scope: !3540)
!3553 = !DILocation(line: 1444, column: 11, scope: !3540)
!3554 = !DILocation(line: 1444, column: 8, scope: !3540)
!3555 = !DILocation(line: 1445, column: 11, scope: !3540)
!3556 = !DILocation(line: 1445, column: 8, scope: !3540)
!3557 = !DILocation(line: 1446, column: 11, scope: !3540)
!3558 = !DILocation(line: 1446, column: 8, scope: !3540)
!3559 = !DILocation(line: 1447, column: 3, scope: !3540)
!3560 = !DILocation(line: 1441, column: 22, scope: !3535)
!3561 = !DILocation(line: 1441, column: 3, scope: !3535)
!3562 = distinct !{!3562, !3538, !3563, !175}
!3563 = !DILocation(line: 1447, column: 3, scope: !3532)
!3564 = !DILocation(line: 1448, column: 13, scope: !3441)
!3565 = !DILocation(line: 1448, column: 8, scope: !3441)
!3566 = !DILocation(line: 1448, column: 5, scope: !3441)
!3567 = !DILocation(line: 1449, column: 13, scope: !3441)
!3568 = !DILocation(line: 1449, column: 20, scope: !3441)
!3569 = !DILocation(line: 1449, column: 18, scope: !3441)
!3570 = !DILocation(line: 1449, column: 8, scope: !3441)
!3571 = !DILocation(line: 1449, column: 5, scope: !3441)
!3572 = !DILocation(line: 1451, column: 23, scope: !3441)
!3573 = !DILocation(line: 1451, column: 14, scope: !3441)
!3574 = !DILocation(line: 1452, column: 16, scope: !3441)
!3575 = !DILocation(line: 1452, column: 7, scope: !3441)
!3576 = !DILocation(line: 1451, column: 10, scope: !3441)
!3577 = !DILocation(line: 1451, column: 8, scope: !3441)
!3578 = !DILocation(line: 1453, column: 7, scope: !3441)
!3579 = !DILocation(line: 1453, column: 5, scope: !3441)
!3580 = !DILocation(line: 1455, column: 18, scope: !3441)
!3581 = !DILocation(line: 1455, column: 16, scope: !3441)
!3582 = !DILocation(line: 1456, column: 30, scope: !3441)
!3583 = !DILocation(line: 1456, column: 21, scope: !3441)
!3584 = !DILocation(line: 1457, column: 16, scope: !3441)
!3585 = !DILocation(line: 1457, column: 7, scope: !3441)
!3586 = !DILocation(line: 1456, column: 17, scope: !3441)
!3587 = !DILocation(line: 1456, column: 15, scope: !3441)
!3588 = !DILocation(line: 1459, column: 13, scope: !3441)
!3589 = !DILocation(line: 1459, column: 11, scope: !3441)
!3590 = !DILocation(line: 1460, column: 25, scope: !3441)
!3591 = !DILocation(line: 1460, column: 16, scope: !3441)
!3592 = !DILocation(line: 1461, column: 18, scope: !3441)
!3593 = !DILocation(line: 1461, column: 9, scope: !3441)
!3594 = !DILocation(line: 1460, column: 12, scope: !3441)
!3595 = !DILocation(line: 1460, column: 10, scope: !3441)
!3596 = !DILocation(line: 1462, column: 16, scope: !3441)
!3597 = !DILocation(line: 1462, column: 23, scope: !3441)
!3598 = !DILocation(line: 1462, column: 21, scope: !3441)
!3599 = !DILocation(line: 1462, column: 35, scope: !3441)
!3600 = !DILocation(line: 1462, column: 33, scope: !3441)
!3601 = !DILocation(line: 1462, column: 10, scope: !3441)
!3602 = !DILocation(line: 1462, column: 8, scope: !3441)
!3603 = !DILocation(line: 1465, column: 16, scope: !3441)
!3604 = !DILocation(line: 1465, column: 11, scope: !3441)
!3605 = !DILocation(line: 1465, column: 9, scope: !3441)
!3606 = !DILocation(line: 1465, column: 25, scope: !3441)
!3607 = !DILocation(line: 1465, column: 27, scope: !3441)
!3608 = !DILocation(line: 1465, column: 5, scope: !3441)
!3609 = !DILocation(line: 1466, column: 7, scope: !3441)
!3610 = !DILocation(line: 1466, column: 5, scope: !3441)
!3611 = !DILocation(line: 1467, column: 7, scope: !3441)
!3612 = !DILocation(line: 1467, column: 33, scope: !3441)
!3613 = !DILocation(line: 1467, column: 42, scope: !3441)
!3614 = !DILocation(line: 1467, column: 40, scope: !3441)
!3615 = !DILocation(line: 1467, column: 57, scope: !3441)
!3616 = !DILocation(line: 1467, column: 55, scope: !3441)
!3617 = !DILocation(line: 1467, column: 5, scope: !3441)
!3618 = !DILocation(line: 1469, column: 17, scope: !3441)
!3619 = !DILocation(line: 1469, column: 26, scope: !3441)
!3620 = !DILocation(line: 1469, column: 28, scope: !3441)
!3621 = !DILocation(line: 1469, column: 25, scope: !3441)
!3622 = !DILocation(line: 1469, column: 36, scope: !3441)
!3623 = !DILocation(line: 1469, column: 46, scope: !3441)
!3624 = !DILocation(line: 1469, column: 44, scope: !3441)
!3625 = !DILocation(line: 1469, column: 33, scope: !3441)
!3626 = !DILocation(line: 1469, column: 62, scope: !3441)
!3627 = !DILocation(line: 1470, column: 6, scope: !3441)
!3628 = !DILocation(line: 1470, column: 21, scope: !3441)
!3629 = !DILocation(line: 1470, column: 16, scope: !3441)
!3630 = !DILocation(line: 1470, column: 14, scope: !3441)
!3631 = !DILocation(line: 1470, column: 4, scope: !3441)
!3632 = !DILocation(line: 1470, column: 33, scope: !3441)
!3633 = !DILocation(line: 1470, column: 31, scope: !3441)
!3634 = !DILocation(line: 1469, column: 22, scope: !3441)
!3635 = !DILocation(line: 1469, column: 4, scope: !3441)
!3636 = !DILocation(line: 1469, column: 15, scope: !3441)
!3637 = !DILocation(line: 1471, column: 1, scope: !3441)
!3638 = distinct !DISubprogram(name: "test_BLAS_zdot_c_c", scope: !1, file: !1, line: 1472, type: !460, scopeLine: 1521, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3639)
!3639 = !{!3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677}
!3640 = !DILocalVariable(name: "n", arg: 1, scope: !3638, file: !1, line: 1472, type: !43)
!3641 = !DILocalVariable(name: "conj", arg: 2, scope: !3638, file: !1, line: 1472, type: !3)
!3642 = !DILocalVariable(name: "alpha", arg: 3, scope: !3638, file: !1, line: 1472, type: !462)
!3643 = !DILocalVariable(name: "beta", arg: 4, scope: !3638, file: !1, line: 1473, type: !462)
!3644 = !DILocalVariable(name: "rin", arg: 5, scope: !3638, file: !1, line: 1473, type: !462)
!3645 = !DILocalVariable(name: "rout", arg: 6, scope: !3638, file: !1, line: 1473, type: !462)
!3646 = !DILocalVariable(name: "r_true_l", arg: 7, scope: !3638, file: !1, line: 1474, type: !32)
!3647 = !DILocalVariable(name: "r_true_t", arg: 8, scope: !3638, file: !1, line: 1474, type: !32)
!3648 = !DILocalVariable(name: "x", arg: 9, scope: !3638, file: !1, line: 1474, type: !464)
!3649 = !DILocalVariable(name: "incx", arg: 10, scope: !3638, file: !1, line: 1474, type: !43)
!3650 = !DILocalVariable(name: "y", arg: 11, scope: !3638, file: !1, line: 1475, type: !464)
!3651 = !DILocalVariable(name: "incy", arg: 12, scope: !3638, file: !1, line: 1475, type: !43)
!3652 = !DILocalVariable(name: "eps_int", arg: 13, scope: !3638, file: !1, line: 1475, type: !29)
!3653 = !DILocalVariable(name: "un_int", arg: 14, scope: !3638, file: !1, line: 1475, type: !29)
!3654 = !DILocalVariable(name: "test_ratio", arg: 15, scope: !3638, file: !1, line: 1476, type: !32)
!3655 = !DILocalVariable(name: "i", scope: !3638, file: !1, line: 1522, type: !43)
!3656 = !DILocalVariable(name: "ix", scope: !3638, file: !1, line: 1522, type: !43)
!3657 = !DILocalVariable(name: "iy", scope: !3638, file: !1, line: 1522, type: !43)
!3658 = !DILocalVariable(name: "eps_accurate", scope: !3638, file: !1, line: 1523, type: !29)
!3659 = !DILocalVariable(name: "eps_out", scope: !3638, file: !1, line: 1523, type: !29)
!3660 = !DILocalVariable(name: "tmp1", scope: !3638, file: !1, line: 1523, type: !29)
!3661 = !DILocalVariable(name: "S", scope: !3638, file: !1, line: 1523, type: !29)
!3662 = !DILocalVariable(name: "S1", scope: !3638, file: !1, line: 1523, type: !29)
!3663 = !DILocalVariable(name: "S2", scope: !3638, file: !1, line: 1523, type: !29)
!3664 = !DILocalVariable(name: "U", scope: !3638, file: !1, line: 1523, type: !29)
!3665 = !DILocalVariable(name: "prod", scope: !3638, file: !1, line: 1523, type: !492)
!3666 = !DILocalVariable(name: "tmp", scope: !3638, file: !1, line: 1523, type: !492)
!3667 = !DILocalVariable(name: "un_d", scope: !3638, file: !1, line: 1524, type: !29)
!3668 = !DILocalVariable(name: "un_accurate", scope: !3638, file: !1, line: 1524, type: !29)
!3669 = !DILocalVariable(name: "un_out", scope: !3638, file: !1, line: 1524, type: !29)
!3670 = !DILocalVariable(name: "x_i", scope: !3638, file: !1, line: 1525, type: !30)
!3671 = !DILocalVariable(name: "y_i", scope: !3638, file: !1, line: 1526, type: !30)
!3672 = !DILocalVariable(name: "alpha_i", scope: !3638, file: !1, line: 1527, type: !32)
!3673 = !DILocalVariable(name: "beta_i", scope: !3638, file: !1, line: 1528, type: !32)
!3674 = !DILocalVariable(name: "rin_i", scope: !3638, file: !1, line: 1529, type: !32)
!3675 = !DILocalVariable(name: "rout_i", scope: !3638, file: !1, line: 1530, type: !32)
!3676 = !DILocalVariable(name: "x_ii", scope: !3638, file: !1, line: 1531, type: !506)
!3677 = !DILocalVariable(name: "y_ii", scope: !3638, file: !1, line: 1532, type: !506)
!3678 = !DILocation(line: 1472, column: 29, scope: !3638)
!3679 = !DILocation(line: 1472, column: 52, scope: !3638)
!3680 = !DILocation(line: 1472, column: 70, scope: !3638)
!3681 = !DILocation(line: 1473, column: 16, scope: !3638)
!3682 = !DILocation(line: 1473, column: 34, scope: !3638)
!3683 = !DILocation(line: 1473, column: 51, scope: !3638)
!3684 = !DILocation(line: 1474, column: 12, scope: !3638)
!3685 = !DILocation(line: 1474, column: 30, scope: !3638)
!3686 = !DILocation(line: 1474, column: 46, scope: !3638)
!3687 = !DILocation(line: 1474, column: 53, scope: !3638)
!3688 = !DILocation(line: 1475, column: 10, scope: !3638)
!3689 = !DILocation(line: 1475, column: 17, scope: !3638)
!3690 = !DILocation(line: 1475, column: 30, scope: !3638)
!3691 = !DILocation(line: 1475, column: 46, scope: !3638)
!3692 = !DILocation(line: 1476, column: 12, scope: !3638)
!3693 = !DILocation(line: 1522, column: 3, scope: !3638)
!3694 = !DILocation(line: 1522, column: 7, scope: !3638)
!3695 = !DILocation(line: 1522, column: 10, scope: !3638)
!3696 = !DILocation(line: 1522, column: 14, scope: !3638)
!3697 = !DILocation(line: 1523, column: 3, scope: !3638)
!3698 = !DILocation(line: 1523, column: 10, scope: !3638)
!3699 = !DILocation(line: 1523, column: 24, scope: !3638)
!3700 = !DILocation(line: 1523, column: 33, scope: !3638)
!3701 = !DILocation(line: 1523, column: 39, scope: !3638)
!3702 = !DILocation(line: 1523, column: 42, scope: !3638)
!3703 = !DILocation(line: 1523, column: 46, scope: !3638)
!3704 = !DILocation(line: 1523, column: 50, scope: !3638)
!3705 = !DILocation(line: 1523, column: 53, scope: !3638)
!3706 = !DILocation(line: 1523, column: 62, scope: !3638)
!3707 = !DILocation(line: 1524, column: 3, scope: !3638)
!3708 = !DILocation(line: 1524, column: 10, scope: !3638)
!3709 = !DILocation(line: 1524, column: 16, scope: !3638)
!3710 = !DILocation(line: 1524, column: 29, scope: !3638)
!3711 = !DILocation(line: 1525, column: 3, scope: !3638)
!3712 = !DILocation(line: 1525, column: 10, scope: !3638)
!3713 = !DILocation(line: 1525, column: 26, scope: !3638)
!3714 = !DILocation(line: 1526, column: 3, scope: !3638)
!3715 = !DILocation(line: 1526, column: 10, scope: !3638)
!3716 = !DILocation(line: 1526, column: 26, scope: !3638)
!3717 = !DILocation(line: 1527, column: 3, scope: !3638)
!3718 = !DILocation(line: 1527, column: 11, scope: !3638)
!3719 = !DILocation(line: 1527, column: 32, scope: !3638)
!3720 = !DILocation(line: 1528, column: 3, scope: !3638)
!3721 = !DILocation(line: 1528, column: 11, scope: !3638)
!3722 = !DILocation(line: 1528, column: 31, scope: !3638)
!3723 = !DILocation(line: 1529, column: 3, scope: !3638)
!3724 = !DILocation(line: 1529, column: 11, scope: !3638)
!3725 = !DILocation(line: 1529, column: 30, scope: !3638)
!3726 = !DILocation(line: 1530, column: 3, scope: !3638)
!3727 = !DILocation(line: 1530, column: 11, scope: !3638)
!3728 = !DILocation(line: 1530, column: 31, scope: !3638)
!3729 = !DILocation(line: 1531, column: 3, scope: !3638)
!3730 = !DILocation(line: 1531, column: 9, scope: !3638)
!3731 = !DILocation(line: 1532, column: 3, scope: !3638)
!3732 = !DILocation(line: 1532, column: 9, scope: !3638)
!3733 = !DILocation(line: 1535, column: 8, scope: !3638)
!3734 = !DILocation(line: 1536, column: 8, scope: !3638)
!3735 = !DILocation(line: 1537, column: 6, scope: !3638)
!3736 = !DILocation(line: 1538, column: 6, scope: !3638)
!3737 = !DILocation(line: 1539, column: 7, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3638, file: !1, line: 1539, column: 7)
!3739 = !DILocation(line: 1539, column: 12, scope: !3738)
!3740 = !DILocation(line: 1539, column: 7, scope: !3638)
!3741 = !DILocation(line: 1540, column: 12, scope: !3738)
!3742 = !DILocation(line: 1540, column: 14, scope: !3738)
!3743 = !DILocation(line: 1540, column: 10, scope: !3738)
!3744 = !DILocation(line: 1540, column: 21, scope: !3738)
!3745 = !DILocation(line: 1540, column: 19, scope: !3738)
!3746 = !DILocation(line: 1540, column: 8, scope: !3738)
!3747 = !DILocation(line: 1540, column: 5, scope: !3738)
!3748 = !DILocation(line: 1541, column: 7, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3638, file: !1, line: 1541, column: 7)
!3750 = !DILocation(line: 1541, column: 12, scope: !3749)
!3751 = !DILocation(line: 1541, column: 7, scope: !3638)
!3752 = !DILocation(line: 1542, column: 12, scope: !3749)
!3753 = !DILocation(line: 1542, column: 14, scope: !3749)
!3754 = !DILocation(line: 1542, column: 10, scope: !3749)
!3755 = !DILocation(line: 1542, column: 21, scope: !3749)
!3756 = !DILocation(line: 1542, column: 19, scope: !3749)
!3757 = !DILocation(line: 1542, column: 8, scope: !3749)
!3758 = !DILocation(line: 1542, column: 5, scope: !3749)
!3759 = !DILocation(line: 1545, column: 15, scope: !3638)
!3760 = !DILocation(line: 1545, column: 10, scope: !3638)
!3761 = !DILocation(line: 1545, column: 5, scope: !3638)
!3762 = !DILocation(line: 1546, column: 10, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3638, file: !1, line: 1546, column: 3)
!3764 = !DILocation(line: 1546, column: 8, scope: !3763)
!3765 = !DILocation(line: 1546, column: 15, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3763, file: !1, line: 1546, column: 3)
!3767 = !DILocation(line: 1546, column: 19, scope: !3766)
!3768 = !DILocation(line: 1546, column: 17, scope: !3766)
!3769 = !DILocation(line: 1546, column: 3, scope: !3763)
!3770 = !DILocation(line: 1547, column: 15, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3766, file: !1, line: 1546, column: 27)
!3772 = !DILocation(line: 1547, column: 19, scope: !3771)
!3773 = !DILocation(line: 1547, column: 5, scope: !3771)
!3774 = !DILocation(line: 1547, column: 13, scope: !3771)
!3775 = !DILocation(line: 1548, column: 15, scope: !3771)
!3776 = !DILocation(line: 1548, column: 19, scope: !3771)
!3777 = !DILocation(line: 1548, column: 22, scope: !3771)
!3778 = !DILocation(line: 1548, column: 5, scope: !3771)
!3779 = !DILocation(line: 1548, column: 13, scope: !3771)
!3780 = !DILocation(line: 1549, column: 15, scope: !3771)
!3781 = !DILocation(line: 1549, column: 19, scope: !3771)
!3782 = !DILocation(line: 1549, column: 5, scope: !3771)
!3783 = !DILocation(line: 1549, column: 13, scope: !3771)
!3784 = !DILocation(line: 1550, column: 15, scope: !3771)
!3785 = !DILocation(line: 1550, column: 19, scope: !3771)
!3786 = !DILocation(line: 1550, column: 22, scope: !3771)
!3787 = !DILocation(line: 1550, column: 5, scope: !3771)
!3788 = !DILocation(line: 1550, column: 13, scope: !3771)
!3789 = !DILocation(line: 1551, column: 9, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3771, file: !1, line: 1551, column: 9)
!3791 = !DILocation(line: 1551, column: 14, scope: !3790)
!3792 = !DILocation(line: 1551, column: 9, scope: !3771)
!3793 = !DILocation(line: 1552, column: 18, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3790, file: !1, line: 1551, column: 28)
!3795 = !DILocation(line: 1552, column: 17, scope: !3794)
!3796 = !DILocation(line: 1552, column: 7, scope: !3794)
!3797 = !DILocation(line: 1552, column: 15, scope: !3794)
!3798 = !DILocation(line: 1553, column: 5, scope: !3794)
!3799 = !DILocation(line: 1554, column: 16, scope: !3771)
!3800 = !DILocation(line: 1554, column: 26, scope: !3771)
!3801 = !DILocation(line: 1554, column: 36, scope: !3771)
!3802 = !DILocation(line: 1554, column: 46, scope: !3771)
!3803 = !DILocation(line: 1554, column: 44, scope: !3771)
!3804 = !DILocation(line: 1554, column: 34, scope: !3771)
!3805 = !DILocation(line: 1554, column: 11, scope: !3771)
!3806 = !DILocation(line: 1554, column: 8, scope: !3771)
!3807 = !DILocation(line: 1555, column: 16, scope: !3771)
!3808 = !DILocation(line: 1555, column: 26, scope: !3771)
!3809 = !DILocation(line: 1555, column: 36, scope: !3771)
!3810 = !DILocation(line: 1555, column: 46, scope: !3771)
!3811 = !DILocation(line: 1555, column: 44, scope: !3771)
!3812 = !DILocation(line: 1555, column: 34, scope: !3771)
!3813 = !DILocation(line: 1555, column: 11, scope: !3771)
!3814 = !DILocation(line: 1555, column: 8, scope: !3771)
!3815 = !DILocation(line: 1556, column: 26, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3771, file: !1, line: 1555, column: 56)
!3817 = !DILocation(line: 1556, column: 17, scope: !3816)
!3818 = !DILocation(line: 1556, column: 36, scope: !3816)
!3819 = !DILocation(line: 1556, column: 55, scope: !3816)
!3820 = !DILocation(line: 1556, column: 46, scope: !3816)
!3821 = !DILocation(line: 1556, column: 65, scope: !3816)
!3822 = !DILocation(line: 1556, column: 63, scope: !3816)
!3823 = !DILocation(line: 1556, column: 44, scope: !3816)
!3824 = !DILocation(line: 1556, column: 7, scope: !3816)
!3825 = !DILocation(line: 1556, column: 15, scope: !3816)
!3826 = !DILocation(line: 1557, column: 26, scope: !3816)
!3827 = !DILocation(line: 1557, column: 17, scope: !3816)
!3828 = !DILocation(line: 1557, column: 36, scope: !3816)
!3829 = !DILocation(line: 1557, column: 55, scope: !3816)
!3830 = !DILocation(line: 1557, column: 46, scope: !3816)
!3831 = !DILocation(line: 1557, column: 65, scope: !3816)
!3832 = !DILocation(line: 1557, column: 63, scope: !3816)
!3833 = !DILocation(line: 1557, column: 44, scope: !3816)
!3834 = !DILocation(line: 1557, column: 7, scope: !3816)
!3835 = !DILocation(line: 1557, column: 15, scope: !3816)
!3836 = !DILocation(line: 1559, column: 15, scope: !3771)
!3837 = !DILocation(line: 1559, column: 25, scope: !3771)
!3838 = !DILocation(line: 1559, column: 35, scope: !3771)
!3839 = !DILocation(line: 1559, column: 45, scope: !3771)
!3840 = !DILocation(line: 1559, column: 43, scope: !3771)
!3841 = !DILocation(line: 1559, column: 33, scope: !3771)
!3842 = !DILocation(line: 1559, column: 10, scope: !3771)
!3843 = !DILocation(line: 1559, column: 7, scope: !3771)
!3844 = !DILocation(line: 1560, column: 11, scope: !3771)
!3845 = !DILocation(line: 1560, column: 8, scope: !3771)
!3846 = !DILocation(line: 1561, column: 11, scope: !3771)
!3847 = !DILocation(line: 1561, column: 8, scope: !3771)
!3848 = !DILocation(line: 1562, column: 3, scope: !3771)
!3849 = !DILocation(line: 1546, column: 22, scope: !3766)
!3850 = !DILocation(line: 1546, column: 3, scope: !3766)
!3851 = distinct !{!3851, !3769, !3852, !175}
!3852 = !DILocation(line: 1562, column: 3, scope: !3763)
!3853 = !DILocation(line: 1563, column: 13, scope: !3638)
!3854 = !DILocation(line: 1563, column: 26, scope: !3638)
!3855 = !DILocation(line: 1563, column: 39, scope: !3638)
!3856 = !DILocation(line: 1563, column: 52, scope: !3638)
!3857 = !DILocation(line: 1563, column: 50, scope: !3638)
!3858 = !DILocation(line: 1563, column: 37, scope: !3638)
!3859 = !DILocation(line: 1563, column: 8, scope: !3638)
!3860 = !DILocation(line: 1563, column: 5, scope: !3638)
!3861 = !DILocation(line: 1565, column: 24, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3638, file: !1, line: 1564, column: 3)
!3863 = !DILocation(line: 1565, column: 36, scope: !3862)
!3864 = !DILocation(line: 1565, column: 56, scope: !3862)
!3865 = !DILocation(line: 1565, column: 68, scope: !3862)
!3866 = !DILocation(line: 1565, column: 66, scope: !3862)
!3867 = !DILocation(line: 1565, column: 45, scope: !3862)
!3868 = !DILocation(line: 1565, column: 5, scope: !3862)
!3869 = !DILocation(line: 1565, column: 13, scope: !3862)
!3870 = !DILocation(line: 1566, column: 24, scope: !3862)
!3871 = !DILocation(line: 1566, column: 36, scope: !3862)
!3872 = !DILocation(line: 1566, column: 56, scope: !3862)
!3873 = !DILocation(line: 1566, column: 68, scope: !3862)
!3874 = !DILocation(line: 1566, column: 66, scope: !3862)
!3875 = !DILocation(line: 1566, column: 45, scope: !3862)
!3876 = !DILocation(line: 1566, column: 5, scope: !3862)
!3877 = !DILocation(line: 1566, column: 13, scope: !3862)
!3878 = !DILocation(line: 1568, column: 13, scope: !3638)
!3879 = !DILocation(line: 1568, column: 23, scope: !3638)
!3880 = !DILocation(line: 1568, column: 33, scope: !3638)
!3881 = !DILocation(line: 1568, column: 43, scope: !3638)
!3882 = !DILocation(line: 1568, column: 41, scope: !3638)
!3883 = !DILocation(line: 1568, column: 31, scope: !3638)
!3884 = !DILocation(line: 1568, column: 8, scope: !3638)
!3885 = !DILocation(line: 1568, column: 5, scope: !3638)
!3886 = !DILocation(line: 1570, column: 23, scope: !3638)
!3887 = !DILocation(line: 1570, column: 14, scope: !3638)
!3888 = !DILocation(line: 1571, column: 16, scope: !3638)
!3889 = !DILocation(line: 1571, column: 7, scope: !3638)
!3890 = !DILocation(line: 1570, column: 10, scope: !3638)
!3891 = !DILocation(line: 1570, column: 8, scope: !3638)
!3892 = !DILocation(line: 1572, column: 7, scope: !3638)
!3893 = !DILocation(line: 1572, column: 5, scope: !3638)
!3894 = !DILocation(line: 1574, column: 18, scope: !3638)
!3895 = !DILocation(line: 1574, column: 16, scope: !3638)
!3896 = !DILocation(line: 1575, column: 30, scope: !3638)
!3897 = !DILocation(line: 1575, column: 21, scope: !3638)
!3898 = !DILocation(line: 1576, column: 16, scope: !3638)
!3899 = !DILocation(line: 1576, column: 7, scope: !3638)
!3900 = !DILocation(line: 1575, column: 17, scope: !3638)
!3901 = !DILocation(line: 1575, column: 15, scope: !3638)
!3902 = !DILocation(line: 1577, column: 13, scope: !3638)
!3903 = !DILocation(line: 1577, column: 11, scope: !3638)
!3904 = !DILocation(line: 1578, column: 25, scope: !3638)
!3905 = !DILocation(line: 1578, column: 16, scope: !3638)
!3906 = !DILocation(line: 1579, column: 18, scope: !3638)
!3907 = !DILocation(line: 1579, column: 9, scope: !3638)
!3908 = !DILocation(line: 1578, column: 12, scope: !3638)
!3909 = !DILocation(line: 1578, column: 10, scope: !3638)
!3910 = !DILocation(line: 1580, column: 13, scope: !3638)
!3911 = !DILocation(line: 1580, column: 25, scope: !3638)
!3912 = !DILocation(line: 1580, column: 23, scope: !3638)
!3913 = !DILocation(line: 1580, column: 40, scope: !3638)
!3914 = !DILocation(line: 1580, column: 38, scope: !3638)
!3915 = !DILocation(line: 1580, column: 3, scope: !3638)
!3916 = !DILocation(line: 1580, column: 10, scope: !3638)
!3917 = !DILocation(line: 1581, column: 13, scope: !3638)
!3918 = !DILocation(line: 1581, column: 25, scope: !3638)
!3919 = !DILocation(line: 1581, column: 23, scope: !3638)
!3920 = !DILocation(line: 1581, column: 40, scope: !3638)
!3921 = !DILocation(line: 1581, column: 38, scope: !3638)
!3922 = !DILocation(line: 1581, column: 3, scope: !3638)
!3923 = !DILocation(line: 1581, column: 10, scope: !3638)
!3924 = !DILocation(line: 1582, column: 15, scope: !3638)
!3925 = !DILocation(line: 1582, column: 24, scope: !3638)
!3926 = !DILocation(line: 1582, column: 33, scope: !3638)
!3927 = !DILocation(line: 1582, column: 42, scope: !3638)
!3928 = !DILocation(line: 1582, column: 40, scope: !3638)
!3929 = !DILocation(line: 1582, column: 31, scope: !3638)
!3930 = !DILocation(line: 1582, column: 10, scope: !3638)
!3931 = !DILocation(line: 1582, column: 8, scope: !3638)
!3932 = !DILocation(line: 1585, column: 16, scope: !3638)
!3933 = !DILocation(line: 1585, column: 29, scope: !3638)
!3934 = !DILocation(line: 1585, column: 42, scope: !3638)
!3935 = !DILocation(line: 1585, column: 55, scope: !3638)
!3936 = !DILocation(line: 1585, column: 53, scope: !3638)
!3937 = !DILocation(line: 1585, column: 40, scope: !3638)
!3938 = !DILocation(line: 1585, column: 11, scope: !3638)
!3939 = !DILocation(line: 1585, column: 9, scope: !3638)
!3940 = !DILocation(line: 1585, column: 69, scope: !3638)
!3941 = !DILocation(line: 1585, column: 71, scope: !3638)
!3942 = !DILocation(line: 1585, column: 5, scope: !3638)
!3943 = !DILocation(line: 1586, column: 7, scope: !3638)
!3944 = !DILocation(line: 1586, column: 5, scope: !3638)
!3945 = !DILocation(line: 1587, column: 7, scope: !3638)
!3946 = !DILocation(line: 1587, column: 33, scope: !3638)
!3947 = !DILocation(line: 1587, column: 42, scope: !3638)
!3948 = !DILocation(line: 1587, column: 40, scope: !3638)
!3949 = !DILocation(line: 1587, column: 57, scope: !3638)
!3950 = !DILocation(line: 1587, column: 55, scope: !3638)
!3951 = !DILocation(line: 1587, column: 5, scope: !3638)
!3952 = !DILocation(line: 1588, column: 12, scope: !3638)
!3953 = !DILocation(line: 1588, column: 10, scope: !3638)
!3954 = !DILocation(line: 1588, column: 5, scope: !3638)
!3955 = !DILocation(line: 1590, column: 17, scope: !3638)
!3956 = !DILocation(line: 1590, column: 29, scope: !3638)
!3957 = !DILocation(line: 1590, column: 27, scope: !3638)
!3958 = !DILocation(line: 1590, column: 41, scope: !3638)
!3959 = !DILocation(line: 1590, column: 43, scope: !3638)
!3960 = !DILocation(line: 1590, column: 40, scope: !3638)
!3961 = !DILocation(line: 1590, column: 38, scope: !3638)
!3962 = !DILocation(line: 1590, column: 51, scope: !3638)
!3963 = !DILocation(line: 1590, column: 61, scope: !3638)
!3964 = !DILocation(line: 1590, column: 59, scope: !3638)
!3965 = !DILocation(line: 1590, column: 48, scope: !3638)
!3966 = !DILocation(line: 1590, column: 77, scope: !3638)
!3967 = !DILocation(line: 1592, column: 4, scope: !3638)
!3968 = !DILocation(line: 1592, column: 15, scope: !3638)
!3969 = !DILocation(line: 1592, column: 13, scope: !3638)
!3970 = !DILocation(line: 1592, column: 30, scope: !3638)
!3971 = !DILocation(line: 1592, column: 44, scope: !3638)
!3972 = !DILocation(line: 1593, column: 9, scope: !3638)
!3973 = !DILocation(line: 1593, column: 23, scope: !3638)
!3974 = !DILocation(line: 1593, column: 21, scope: !3638)
!3975 = !DILocation(line: 1592, column: 56, scope: !3638)
!3976 = !DILocation(line: 1592, column: 25, scope: !3638)
!3977 = !DILocation(line: 1592, column: 23, scope: !3638)
!3978 = !DILocation(line: 1591, column: 4, scope: !3638)
!3979 = !DILocation(line: 1594, column: 4, scope: !3638)
!3980 = !DILocation(line: 1593, column: 36, scope: !3638)
!3981 = !DILocation(line: 1590, column: 22, scope: !3638)
!3982 = !DILocation(line: 1590, column: 4, scope: !3638)
!3983 = !DILocation(line: 1590, column: 15, scope: !3638)
!3984 = !DILocation(line: 1595, column: 1, scope: !3638)
!3985 = distinct !DISubprogram(name: "test_BLAS_zdot_c_z", scope: !1, file: !1, line: 1598, type: !460, scopeLine: 1647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3986)
!3986 = !{!3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024}
!3987 = !DILocalVariable(name: "n", arg: 1, scope: !3985, file: !1, line: 1598, type: !43)
!3988 = !DILocalVariable(name: "conj", arg: 2, scope: !3985, file: !1, line: 1598, type: !3)
!3989 = !DILocalVariable(name: "alpha", arg: 3, scope: !3985, file: !1, line: 1598, type: !462)
!3990 = !DILocalVariable(name: "beta", arg: 4, scope: !3985, file: !1, line: 1599, type: !462)
!3991 = !DILocalVariable(name: "rin", arg: 5, scope: !3985, file: !1, line: 1599, type: !462)
!3992 = !DILocalVariable(name: "rout", arg: 6, scope: !3985, file: !1, line: 1599, type: !462)
!3993 = !DILocalVariable(name: "r_true_l", arg: 7, scope: !3985, file: !1, line: 1600, type: !32)
!3994 = !DILocalVariable(name: "r_true_t", arg: 8, scope: !3985, file: !1, line: 1600, type: !32)
!3995 = !DILocalVariable(name: "x", arg: 9, scope: !3985, file: !1, line: 1600, type: !464)
!3996 = !DILocalVariable(name: "incx", arg: 10, scope: !3985, file: !1, line: 1600, type: !43)
!3997 = !DILocalVariable(name: "y", arg: 11, scope: !3985, file: !1, line: 1601, type: !464)
!3998 = !DILocalVariable(name: "incy", arg: 12, scope: !3985, file: !1, line: 1601, type: !43)
!3999 = !DILocalVariable(name: "eps_int", arg: 13, scope: !3985, file: !1, line: 1601, type: !29)
!4000 = !DILocalVariable(name: "un_int", arg: 14, scope: !3985, file: !1, line: 1601, type: !29)
!4001 = !DILocalVariable(name: "test_ratio", arg: 15, scope: !3985, file: !1, line: 1602, type: !32)
!4002 = !DILocalVariable(name: "i", scope: !3985, file: !1, line: 1648, type: !43)
!4003 = !DILocalVariable(name: "ix", scope: !3985, file: !1, line: 1648, type: !43)
!4004 = !DILocalVariable(name: "iy", scope: !3985, file: !1, line: 1648, type: !43)
!4005 = !DILocalVariable(name: "eps_accurate", scope: !3985, file: !1, line: 1649, type: !29)
!4006 = !DILocalVariable(name: "eps_out", scope: !3985, file: !1, line: 1649, type: !29)
!4007 = !DILocalVariable(name: "tmp1", scope: !3985, file: !1, line: 1649, type: !29)
!4008 = !DILocalVariable(name: "S", scope: !3985, file: !1, line: 1649, type: !29)
!4009 = !DILocalVariable(name: "S1", scope: !3985, file: !1, line: 1649, type: !29)
!4010 = !DILocalVariable(name: "S2", scope: !3985, file: !1, line: 1649, type: !29)
!4011 = !DILocalVariable(name: "U", scope: !3985, file: !1, line: 1649, type: !29)
!4012 = !DILocalVariable(name: "prod", scope: !3985, file: !1, line: 1649, type: !492)
!4013 = !DILocalVariable(name: "tmp", scope: !3985, file: !1, line: 1649, type: !492)
!4014 = !DILocalVariable(name: "un_d", scope: !3985, file: !1, line: 1650, type: !29)
!4015 = !DILocalVariable(name: "un_accurate", scope: !3985, file: !1, line: 1650, type: !29)
!4016 = !DILocalVariable(name: "un_out", scope: !3985, file: !1, line: 1650, type: !29)
!4017 = !DILocalVariable(name: "x_i", scope: !3985, file: !1, line: 1651, type: !30)
!4018 = !DILocalVariable(name: "y_i", scope: !3985, file: !1, line: 1652, type: !32)
!4019 = !DILocalVariable(name: "alpha_i", scope: !3985, file: !1, line: 1653, type: !32)
!4020 = !DILocalVariable(name: "beta_i", scope: !3985, file: !1, line: 1654, type: !32)
!4021 = !DILocalVariable(name: "rin_i", scope: !3985, file: !1, line: 1655, type: !32)
!4022 = !DILocalVariable(name: "rout_i", scope: !3985, file: !1, line: 1656, type: !32)
!4023 = !DILocalVariable(name: "x_ii", scope: !3985, file: !1, line: 1657, type: !506)
!4024 = !DILocalVariable(name: "y_ii", scope: !3985, file: !1, line: 1658, type: !492)
!4025 = !DILocation(line: 1598, column: 29, scope: !3985)
!4026 = !DILocation(line: 1598, column: 52, scope: !3985)
!4027 = !DILocation(line: 1598, column: 70, scope: !3985)
!4028 = !DILocation(line: 1599, column: 16, scope: !3985)
!4029 = !DILocation(line: 1599, column: 34, scope: !3985)
!4030 = !DILocation(line: 1599, column: 51, scope: !3985)
!4031 = !DILocation(line: 1600, column: 12, scope: !3985)
!4032 = !DILocation(line: 1600, column: 30, scope: !3985)
!4033 = !DILocation(line: 1600, column: 46, scope: !3985)
!4034 = !DILocation(line: 1600, column: 53, scope: !3985)
!4035 = !DILocation(line: 1601, column: 10, scope: !3985)
!4036 = !DILocation(line: 1601, column: 17, scope: !3985)
!4037 = !DILocation(line: 1601, column: 30, scope: !3985)
!4038 = !DILocation(line: 1601, column: 46, scope: !3985)
!4039 = !DILocation(line: 1602, column: 12, scope: !3985)
!4040 = !DILocation(line: 1648, column: 3, scope: !3985)
!4041 = !DILocation(line: 1648, column: 7, scope: !3985)
!4042 = !DILocation(line: 1648, column: 10, scope: !3985)
!4043 = !DILocation(line: 1648, column: 14, scope: !3985)
!4044 = !DILocation(line: 1649, column: 3, scope: !3985)
!4045 = !DILocation(line: 1649, column: 10, scope: !3985)
!4046 = !DILocation(line: 1649, column: 24, scope: !3985)
!4047 = !DILocation(line: 1649, column: 33, scope: !3985)
!4048 = !DILocation(line: 1649, column: 39, scope: !3985)
!4049 = !DILocation(line: 1649, column: 42, scope: !3985)
!4050 = !DILocation(line: 1649, column: 46, scope: !3985)
!4051 = !DILocation(line: 1649, column: 50, scope: !3985)
!4052 = !DILocation(line: 1649, column: 53, scope: !3985)
!4053 = !DILocation(line: 1649, column: 62, scope: !3985)
!4054 = !DILocation(line: 1650, column: 3, scope: !3985)
!4055 = !DILocation(line: 1650, column: 10, scope: !3985)
!4056 = !DILocation(line: 1650, column: 16, scope: !3985)
!4057 = !DILocation(line: 1650, column: 29, scope: !3985)
!4058 = !DILocation(line: 1651, column: 3, scope: !3985)
!4059 = !DILocation(line: 1651, column: 10, scope: !3985)
!4060 = !DILocation(line: 1651, column: 26, scope: !3985)
!4061 = !DILocation(line: 1652, column: 3, scope: !3985)
!4062 = !DILocation(line: 1652, column: 11, scope: !3985)
!4063 = !DILocation(line: 1652, column: 28, scope: !3985)
!4064 = !DILocation(line: 1653, column: 3, scope: !3985)
!4065 = !DILocation(line: 1653, column: 11, scope: !3985)
!4066 = !DILocation(line: 1653, column: 32, scope: !3985)
!4067 = !DILocation(line: 1654, column: 3, scope: !3985)
!4068 = !DILocation(line: 1654, column: 11, scope: !3985)
!4069 = !DILocation(line: 1654, column: 31, scope: !3985)
!4070 = !DILocation(line: 1655, column: 3, scope: !3985)
!4071 = !DILocation(line: 1655, column: 11, scope: !3985)
!4072 = !DILocation(line: 1655, column: 30, scope: !3985)
!4073 = !DILocation(line: 1656, column: 3, scope: !3985)
!4074 = !DILocation(line: 1656, column: 11, scope: !3985)
!4075 = !DILocation(line: 1656, column: 31, scope: !3985)
!4076 = !DILocation(line: 1657, column: 3, scope: !3985)
!4077 = !DILocation(line: 1657, column: 9, scope: !3985)
!4078 = !DILocation(line: 1658, column: 3, scope: !3985)
!4079 = !DILocation(line: 1658, column: 10, scope: !3985)
!4080 = !DILocation(line: 1661, column: 8, scope: !3985)
!4081 = !DILocation(line: 1662, column: 8, scope: !3985)
!4082 = !DILocation(line: 1663, column: 6, scope: !3985)
!4083 = !DILocation(line: 1664, column: 6, scope: !3985)
!4084 = !DILocation(line: 1665, column: 7, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !3985, file: !1, line: 1665, column: 7)
!4086 = !DILocation(line: 1665, column: 12, scope: !4085)
!4087 = !DILocation(line: 1665, column: 7, scope: !3985)
!4088 = !DILocation(line: 1666, column: 12, scope: !4085)
!4089 = !DILocation(line: 1666, column: 14, scope: !4085)
!4090 = !DILocation(line: 1666, column: 10, scope: !4085)
!4091 = !DILocation(line: 1666, column: 21, scope: !4085)
!4092 = !DILocation(line: 1666, column: 19, scope: !4085)
!4093 = !DILocation(line: 1666, column: 8, scope: !4085)
!4094 = !DILocation(line: 1666, column: 5, scope: !4085)
!4095 = !DILocation(line: 1667, column: 7, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !3985, file: !1, line: 1667, column: 7)
!4097 = !DILocation(line: 1667, column: 12, scope: !4096)
!4098 = !DILocation(line: 1667, column: 7, scope: !3985)
!4099 = !DILocation(line: 1668, column: 12, scope: !4096)
!4100 = !DILocation(line: 1668, column: 14, scope: !4096)
!4101 = !DILocation(line: 1668, column: 10, scope: !4096)
!4102 = !DILocation(line: 1668, column: 21, scope: !4096)
!4103 = !DILocation(line: 1668, column: 19, scope: !4096)
!4104 = !DILocation(line: 1668, column: 8, scope: !4096)
!4105 = !DILocation(line: 1668, column: 5, scope: !4096)
!4106 = !DILocation(line: 1671, column: 15, scope: !3985)
!4107 = !DILocation(line: 1671, column: 10, scope: !3985)
!4108 = !DILocation(line: 1671, column: 5, scope: !3985)
!4109 = !DILocation(line: 1672, column: 10, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !3985, file: !1, line: 1672, column: 3)
!4111 = !DILocation(line: 1672, column: 8, scope: !4110)
!4112 = !DILocation(line: 1672, column: 15, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4110, file: !1, line: 1672, column: 3)
!4114 = !DILocation(line: 1672, column: 19, scope: !4113)
!4115 = !DILocation(line: 1672, column: 17, scope: !4113)
!4116 = !DILocation(line: 1672, column: 3, scope: !4110)
!4117 = !DILocation(line: 1673, column: 15, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4113, file: !1, line: 1672, column: 27)
!4119 = !DILocation(line: 1673, column: 19, scope: !4118)
!4120 = !DILocation(line: 1673, column: 5, scope: !4118)
!4121 = !DILocation(line: 1673, column: 13, scope: !4118)
!4122 = !DILocation(line: 1674, column: 15, scope: !4118)
!4123 = !DILocation(line: 1674, column: 19, scope: !4118)
!4124 = !DILocation(line: 1674, column: 22, scope: !4118)
!4125 = !DILocation(line: 1674, column: 5, scope: !4118)
!4126 = !DILocation(line: 1674, column: 13, scope: !4118)
!4127 = !DILocation(line: 1675, column: 15, scope: !4118)
!4128 = !DILocation(line: 1675, column: 19, scope: !4118)
!4129 = !DILocation(line: 1675, column: 5, scope: !4118)
!4130 = !DILocation(line: 1675, column: 13, scope: !4118)
!4131 = !DILocation(line: 1676, column: 15, scope: !4118)
!4132 = !DILocation(line: 1676, column: 19, scope: !4118)
!4133 = !DILocation(line: 1676, column: 22, scope: !4118)
!4134 = !DILocation(line: 1676, column: 5, scope: !4118)
!4135 = !DILocation(line: 1676, column: 13, scope: !4118)
!4136 = !DILocation(line: 1677, column: 9, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4118, file: !1, line: 1677, column: 9)
!4138 = !DILocation(line: 1677, column: 14, scope: !4137)
!4139 = !DILocation(line: 1677, column: 9, scope: !4118)
!4140 = !DILocation(line: 1678, column: 18, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4137, file: !1, line: 1677, column: 28)
!4142 = !DILocation(line: 1678, column: 17, scope: !4141)
!4143 = !DILocation(line: 1678, column: 7, scope: !4141)
!4144 = !DILocation(line: 1678, column: 15, scope: !4141)
!4145 = !DILocation(line: 1679, column: 5, scope: !4141)
!4146 = !DILocation(line: 1680, column: 16, scope: !4118)
!4147 = !DILocation(line: 1680, column: 26, scope: !4118)
!4148 = !DILocation(line: 1680, column: 36, scope: !4118)
!4149 = !DILocation(line: 1680, column: 46, scope: !4118)
!4150 = !DILocation(line: 1680, column: 44, scope: !4118)
!4151 = !DILocation(line: 1680, column: 34, scope: !4118)
!4152 = !DILocation(line: 1680, column: 11, scope: !4118)
!4153 = !DILocation(line: 1680, column: 8, scope: !4118)
!4154 = !DILocation(line: 1681, column: 16, scope: !4118)
!4155 = !DILocation(line: 1681, column: 26, scope: !4118)
!4156 = !DILocation(line: 1681, column: 36, scope: !4118)
!4157 = !DILocation(line: 1681, column: 46, scope: !4118)
!4158 = !DILocation(line: 1681, column: 44, scope: !4118)
!4159 = !DILocation(line: 1681, column: 34, scope: !4118)
!4160 = !DILocation(line: 1681, column: 11, scope: !4118)
!4161 = !DILocation(line: 1681, column: 8, scope: !4118)
!4162 = !DILocation(line: 1682, column: 26, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4118, file: !1, line: 1681, column: 56)
!4164 = !DILocation(line: 1682, column: 17, scope: !4163)
!4165 = !DILocation(line: 1682, column: 36, scope: !4163)
!4166 = !DILocation(line: 1682, column: 55, scope: !4163)
!4167 = !DILocation(line: 1682, column: 46, scope: !4163)
!4168 = !DILocation(line: 1682, column: 65, scope: !4163)
!4169 = !DILocation(line: 1682, column: 63, scope: !4163)
!4170 = !DILocation(line: 1682, column: 44, scope: !4163)
!4171 = !DILocation(line: 1682, column: 7, scope: !4163)
!4172 = !DILocation(line: 1682, column: 15, scope: !4163)
!4173 = !DILocation(line: 1683, column: 26, scope: !4163)
!4174 = !DILocation(line: 1683, column: 17, scope: !4163)
!4175 = !DILocation(line: 1683, column: 36, scope: !4163)
!4176 = !DILocation(line: 1683, column: 55, scope: !4163)
!4177 = !DILocation(line: 1683, column: 46, scope: !4163)
!4178 = !DILocation(line: 1683, column: 65, scope: !4163)
!4179 = !DILocation(line: 1683, column: 63, scope: !4163)
!4180 = !DILocation(line: 1683, column: 44, scope: !4163)
!4181 = !DILocation(line: 1683, column: 7, scope: !4163)
!4182 = !DILocation(line: 1683, column: 15, scope: !4163)
!4183 = !DILocation(line: 1685, column: 15, scope: !4118)
!4184 = !DILocation(line: 1685, column: 25, scope: !4118)
!4185 = !DILocation(line: 1685, column: 35, scope: !4118)
!4186 = !DILocation(line: 1685, column: 45, scope: !4118)
!4187 = !DILocation(line: 1685, column: 43, scope: !4118)
!4188 = !DILocation(line: 1685, column: 33, scope: !4118)
!4189 = !DILocation(line: 1685, column: 10, scope: !4118)
!4190 = !DILocation(line: 1685, column: 7, scope: !4118)
!4191 = !DILocation(line: 1686, column: 11, scope: !4118)
!4192 = !DILocation(line: 1686, column: 8, scope: !4118)
!4193 = !DILocation(line: 1687, column: 11, scope: !4118)
!4194 = !DILocation(line: 1687, column: 8, scope: !4118)
!4195 = !DILocation(line: 1688, column: 3, scope: !4118)
!4196 = !DILocation(line: 1672, column: 22, scope: !4113)
!4197 = !DILocation(line: 1672, column: 3, scope: !4113)
!4198 = distinct !{!4198, !4116, !4199, !175}
!4199 = !DILocation(line: 1688, column: 3, scope: !4110)
!4200 = !DILocation(line: 1689, column: 13, scope: !3985)
!4201 = !DILocation(line: 1689, column: 26, scope: !3985)
!4202 = !DILocation(line: 1689, column: 39, scope: !3985)
!4203 = !DILocation(line: 1689, column: 52, scope: !3985)
!4204 = !DILocation(line: 1689, column: 50, scope: !3985)
!4205 = !DILocation(line: 1689, column: 37, scope: !3985)
!4206 = !DILocation(line: 1689, column: 8, scope: !3985)
!4207 = !DILocation(line: 1689, column: 5, scope: !3985)
!4208 = !DILocation(line: 1691, column: 24, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !3985, file: !1, line: 1690, column: 3)
!4210 = !DILocation(line: 1691, column: 36, scope: !4209)
!4211 = !DILocation(line: 1691, column: 56, scope: !4209)
!4212 = !DILocation(line: 1691, column: 68, scope: !4209)
!4213 = !DILocation(line: 1691, column: 66, scope: !4209)
!4214 = !DILocation(line: 1691, column: 45, scope: !4209)
!4215 = !DILocation(line: 1691, column: 5, scope: !4209)
!4216 = !DILocation(line: 1691, column: 13, scope: !4209)
!4217 = !DILocation(line: 1692, column: 24, scope: !4209)
!4218 = !DILocation(line: 1692, column: 36, scope: !4209)
!4219 = !DILocation(line: 1692, column: 56, scope: !4209)
!4220 = !DILocation(line: 1692, column: 68, scope: !4209)
!4221 = !DILocation(line: 1692, column: 66, scope: !4209)
!4222 = !DILocation(line: 1692, column: 45, scope: !4209)
!4223 = !DILocation(line: 1692, column: 5, scope: !4209)
!4224 = !DILocation(line: 1692, column: 13, scope: !4209)
!4225 = !DILocation(line: 1694, column: 13, scope: !3985)
!4226 = !DILocation(line: 1694, column: 23, scope: !3985)
!4227 = !DILocation(line: 1694, column: 33, scope: !3985)
!4228 = !DILocation(line: 1694, column: 43, scope: !3985)
!4229 = !DILocation(line: 1694, column: 41, scope: !3985)
!4230 = !DILocation(line: 1694, column: 31, scope: !3985)
!4231 = !DILocation(line: 1694, column: 8, scope: !3985)
!4232 = !DILocation(line: 1694, column: 5, scope: !3985)
!4233 = !DILocation(line: 1696, column: 23, scope: !3985)
!4234 = !DILocation(line: 1696, column: 14, scope: !3985)
!4235 = !DILocation(line: 1697, column: 16, scope: !3985)
!4236 = !DILocation(line: 1697, column: 7, scope: !3985)
!4237 = !DILocation(line: 1696, column: 10, scope: !3985)
!4238 = !DILocation(line: 1696, column: 8, scope: !3985)
!4239 = !DILocation(line: 1698, column: 7, scope: !3985)
!4240 = !DILocation(line: 1698, column: 5, scope: !3985)
!4241 = !DILocation(line: 1700, column: 18, scope: !3985)
!4242 = !DILocation(line: 1700, column: 16, scope: !3985)
!4243 = !DILocation(line: 1701, column: 30, scope: !3985)
!4244 = !DILocation(line: 1701, column: 21, scope: !3985)
!4245 = !DILocation(line: 1702, column: 16, scope: !3985)
!4246 = !DILocation(line: 1702, column: 7, scope: !3985)
!4247 = !DILocation(line: 1701, column: 17, scope: !3985)
!4248 = !DILocation(line: 1701, column: 15, scope: !3985)
!4249 = !DILocation(line: 1703, column: 13, scope: !3985)
!4250 = !DILocation(line: 1703, column: 11, scope: !3985)
!4251 = !DILocation(line: 1704, column: 25, scope: !3985)
!4252 = !DILocation(line: 1704, column: 16, scope: !3985)
!4253 = !DILocation(line: 1705, column: 18, scope: !3985)
!4254 = !DILocation(line: 1705, column: 9, scope: !3985)
!4255 = !DILocation(line: 1704, column: 12, scope: !3985)
!4256 = !DILocation(line: 1704, column: 10, scope: !3985)
!4257 = !DILocation(line: 1706, column: 13, scope: !3985)
!4258 = !DILocation(line: 1706, column: 25, scope: !3985)
!4259 = !DILocation(line: 1706, column: 23, scope: !3985)
!4260 = !DILocation(line: 1706, column: 40, scope: !3985)
!4261 = !DILocation(line: 1706, column: 38, scope: !3985)
!4262 = !DILocation(line: 1706, column: 3, scope: !3985)
!4263 = !DILocation(line: 1706, column: 10, scope: !3985)
!4264 = !DILocation(line: 1707, column: 13, scope: !3985)
!4265 = !DILocation(line: 1707, column: 25, scope: !3985)
!4266 = !DILocation(line: 1707, column: 23, scope: !3985)
!4267 = !DILocation(line: 1707, column: 40, scope: !3985)
!4268 = !DILocation(line: 1707, column: 38, scope: !3985)
!4269 = !DILocation(line: 1707, column: 3, scope: !3985)
!4270 = !DILocation(line: 1707, column: 10, scope: !3985)
!4271 = !DILocation(line: 1708, column: 15, scope: !3985)
!4272 = !DILocation(line: 1708, column: 24, scope: !3985)
!4273 = !DILocation(line: 1708, column: 33, scope: !3985)
!4274 = !DILocation(line: 1708, column: 42, scope: !3985)
!4275 = !DILocation(line: 1708, column: 40, scope: !3985)
!4276 = !DILocation(line: 1708, column: 31, scope: !3985)
!4277 = !DILocation(line: 1708, column: 10, scope: !3985)
!4278 = !DILocation(line: 1708, column: 8, scope: !3985)
!4279 = !DILocation(line: 1711, column: 16, scope: !3985)
!4280 = !DILocation(line: 1711, column: 29, scope: !3985)
!4281 = !DILocation(line: 1711, column: 42, scope: !3985)
!4282 = !DILocation(line: 1711, column: 55, scope: !3985)
!4283 = !DILocation(line: 1711, column: 53, scope: !3985)
!4284 = !DILocation(line: 1711, column: 40, scope: !3985)
!4285 = !DILocation(line: 1711, column: 11, scope: !3985)
!4286 = !DILocation(line: 1711, column: 9, scope: !3985)
!4287 = !DILocation(line: 1711, column: 69, scope: !3985)
!4288 = !DILocation(line: 1711, column: 71, scope: !3985)
!4289 = !DILocation(line: 1711, column: 5, scope: !3985)
!4290 = !DILocation(line: 1712, column: 7, scope: !3985)
!4291 = !DILocation(line: 1712, column: 5, scope: !3985)
!4292 = !DILocation(line: 1713, column: 7, scope: !3985)
!4293 = !DILocation(line: 1713, column: 33, scope: !3985)
!4294 = !DILocation(line: 1713, column: 42, scope: !3985)
!4295 = !DILocation(line: 1713, column: 40, scope: !3985)
!4296 = !DILocation(line: 1713, column: 57, scope: !3985)
!4297 = !DILocation(line: 1713, column: 55, scope: !3985)
!4298 = !DILocation(line: 1713, column: 5, scope: !3985)
!4299 = !DILocation(line: 1714, column: 12, scope: !3985)
!4300 = !DILocation(line: 1714, column: 10, scope: !3985)
!4301 = !DILocation(line: 1714, column: 5, scope: !3985)
!4302 = !DILocation(line: 1716, column: 17, scope: !3985)
!4303 = !DILocation(line: 1716, column: 29, scope: !3985)
!4304 = !DILocation(line: 1716, column: 27, scope: !3985)
!4305 = !DILocation(line: 1716, column: 41, scope: !3985)
!4306 = !DILocation(line: 1716, column: 43, scope: !3985)
!4307 = !DILocation(line: 1716, column: 40, scope: !3985)
!4308 = !DILocation(line: 1716, column: 38, scope: !3985)
!4309 = !DILocation(line: 1716, column: 51, scope: !3985)
!4310 = !DILocation(line: 1716, column: 61, scope: !3985)
!4311 = !DILocation(line: 1716, column: 59, scope: !3985)
!4312 = !DILocation(line: 1716, column: 48, scope: !3985)
!4313 = !DILocation(line: 1716, column: 77, scope: !3985)
!4314 = !DILocation(line: 1718, column: 4, scope: !3985)
!4315 = !DILocation(line: 1718, column: 15, scope: !3985)
!4316 = !DILocation(line: 1718, column: 13, scope: !3985)
!4317 = !DILocation(line: 1718, column: 30, scope: !3985)
!4318 = !DILocation(line: 1718, column: 44, scope: !3985)
!4319 = !DILocation(line: 1719, column: 9, scope: !3985)
!4320 = !DILocation(line: 1719, column: 23, scope: !3985)
!4321 = !DILocation(line: 1719, column: 21, scope: !3985)
!4322 = !DILocation(line: 1718, column: 56, scope: !3985)
!4323 = !DILocation(line: 1718, column: 25, scope: !3985)
!4324 = !DILocation(line: 1718, column: 23, scope: !3985)
!4325 = !DILocation(line: 1717, column: 4, scope: !3985)
!4326 = !DILocation(line: 1720, column: 4, scope: !3985)
!4327 = !DILocation(line: 1719, column: 36, scope: !3985)
!4328 = !DILocation(line: 1716, column: 22, scope: !3985)
!4329 = !DILocation(line: 1716, column: 4, scope: !3985)
!4330 = !DILocation(line: 1716, column: 15, scope: !3985)
!4331 = !DILocation(line: 1721, column: 1, scope: !3985)
!4332 = distinct !DISubprogram(name: "test_BLAS_zdot_z_c", scope: !1, file: !1, line: 1724, type: !460, scopeLine: 1773, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4333)
!4333 = !{!4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371}
!4334 = !DILocalVariable(name: "n", arg: 1, scope: !4332, file: !1, line: 1724, type: !43)
!4335 = !DILocalVariable(name: "conj", arg: 2, scope: !4332, file: !1, line: 1724, type: !3)
!4336 = !DILocalVariable(name: "alpha", arg: 3, scope: !4332, file: !1, line: 1724, type: !462)
!4337 = !DILocalVariable(name: "beta", arg: 4, scope: !4332, file: !1, line: 1725, type: !462)
!4338 = !DILocalVariable(name: "rin", arg: 5, scope: !4332, file: !1, line: 1725, type: !462)
!4339 = !DILocalVariable(name: "rout", arg: 6, scope: !4332, file: !1, line: 1725, type: !462)
!4340 = !DILocalVariable(name: "r_true_l", arg: 7, scope: !4332, file: !1, line: 1726, type: !32)
!4341 = !DILocalVariable(name: "r_true_t", arg: 8, scope: !4332, file: !1, line: 1726, type: !32)
!4342 = !DILocalVariable(name: "x", arg: 9, scope: !4332, file: !1, line: 1726, type: !464)
!4343 = !DILocalVariable(name: "incx", arg: 10, scope: !4332, file: !1, line: 1726, type: !43)
!4344 = !DILocalVariable(name: "y", arg: 11, scope: !4332, file: !1, line: 1727, type: !464)
!4345 = !DILocalVariable(name: "incy", arg: 12, scope: !4332, file: !1, line: 1727, type: !43)
!4346 = !DILocalVariable(name: "eps_int", arg: 13, scope: !4332, file: !1, line: 1727, type: !29)
!4347 = !DILocalVariable(name: "un_int", arg: 14, scope: !4332, file: !1, line: 1727, type: !29)
!4348 = !DILocalVariable(name: "test_ratio", arg: 15, scope: !4332, file: !1, line: 1728, type: !32)
!4349 = !DILocalVariable(name: "i", scope: !4332, file: !1, line: 1774, type: !43)
!4350 = !DILocalVariable(name: "ix", scope: !4332, file: !1, line: 1774, type: !43)
!4351 = !DILocalVariable(name: "iy", scope: !4332, file: !1, line: 1774, type: !43)
!4352 = !DILocalVariable(name: "eps_accurate", scope: !4332, file: !1, line: 1775, type: !29)
!4353 = !DILocalVariable(name: "eps_out", scope: !4332, file: !1, line: 1775, type: !29)
!4354 = !DILocalVariable(name: "tmp1", scope: !4332, file: !1, line: 1775, type: !29)
!4355 = !DILocalVariable(name: "S", scope: !4332, file: !1, line: 1775, type: !29)
!4356 = !DILocalVariable(name: "S1", scope: !4332, file: !1, line: 1775, type: !29)
!4357 = !DILocalVariable(name: "S2", scope: !4332, file: !1, line: 1775, type: !29)
!4358 = !DILocalVariable(name: "U", scope: !4332, file: !1, line: 1775, type: !29)
!4359 = !DILocalVariable(name: "prod", scope: !4332, file: !1, line: 1775, type: !492)
!4360 = !DILocalVariable(name: "tmp", scope: !4332, file: !1, line: 1775, type: !492)
!4361 = !DILocalVariable(name: "un_d", scope: !4332, file: !1, line: 1776, type: !29)
!4362 = !DILocalVariable(name: "un_accurate", scope: !4332, file: !1, line: 1776, type: !29)
!4363 = !DILocalVariable(name: "un_out", scope: !4332, file: !1, line: 1776, type: !29)
!4364 = !DILocalVariable(name: "x_i", scope: !4332, file: !1, line: 1777, type: !32)
!4365 = !DILocalVariable(name: "y_i", scope: !4332, file: !1, line: 1778, type: !30)
!4366 = !DILocalVariable(name: "alpha_i", scope: !4332, file: !1, line: 1779, type: !32)
!4367 = !DILocalVariable(name: "beta_i", scope: !4332, file: !1, line: 1780, type: !32)
!4368 = !DILocalVariable(name: "rin_i", scope: !4332, file: !1, line: 1781, type: !32)
!4369 = !DILocalVariable(name: "rout_i", scope: !4332, file: !1, line: 1782, type: !32)
!4370 = !DILocalVariable(name: "x_ii", scope: !4332, file: !1, line: 1783, type: !492)
!4371 = !DILocalVariable(name: "y_ii", scope: !4332, file: !1, line: 1784, type: !506)
!4372 = !DILocation(line: 1724, column: 29, scope: !4332)
!4373 = !DILocation(line: 1724, column: 52, scope: !4332)
!4374 = !DILocation(line: 1724, column: 70, scope: !4332)
!4375 = !DILocation(line: 1725, column: 16, scope: !4332)
!4376 = !DILocation(line: 1725, column: 34, scope: !4332)
!4377 = !DILocation(line: 1725, column: 51, scope: !4332)
!4378 = !DILocation(line: 1726, column: 12, scope: !4332)
!4379 = !DILocation(line: 1726, column: 30, scope: !4332)
!4380 = !DILocation(line: 1726, column: 46, scope: !4332)
!4381 = !DILocation(line: 1726, column: 53, scope: !4332)
!4382 = !DILocation(line: 1727, column: 10, scope: !4332)
!4383 = !DILocation(line: 1727, column: 17, scope: !4332)
!4384 = !DILocation(line: 1727, column: 30, scope: !4332)
!4385 = !DILocation(line: 1727, column: 46, scope: !4332)
!4386 = !DILocation(line: 1728, column: 12, scope: !4332)
!4387 = !DILocation(line: 1774, column: 3, scope: !4332)
!4388 = !DILocation(line: 1774, column: 7, scope: !4332)
!4389 = !DILocation(line: 1774, column: 10, scope: !4332)
!4390 = !DILocation(line: 1774, column: 14, scope: !4332)
!4391 = !DILocation(line: 1775, column: 3, scope: !4332)
!4392 = !DILocation(line: 1775, column: 10, scope: !4332)
!4393 = !DILocation(line: 1775, column: 24, scope: !4332)
!4394 = !DILocation(line: 1775, column: 33, scope: !4332)
!4395 = !DILocation(line: 1775, column: 39, scope: !4332)
!4396 = !DILocation(line: 1775, column: 42, scope: !4332)
!4397 = !DILocation(line: 1775, column: 46, scope: !4332)
!4398 = !DILocation(line: 1775, column: 50, scope: !4332)
!4399 = !DILocation(line: 1775, column: 53, scope: !4332)
!4400 = !DILocation(line: 1775, column: 62, scope: !4332)
!4401 = !DILocation(line: 1776, column: 3, scope: !4332)
!4402 = !DILocation(line: 1776, column: 10, scope: !4332)
!4403 = !DILocation(line: 1776, column: 16, scope: !4332)
!4404 = !DILocation(line: 1776, column: 29, scope: !4332)
!4405 = !DILocation(line: 1777, column: 3, scope: !4332)
!4406 = !DILocation(line: 1777, column: 11, scope: !4332)
!4407 = !DILocation(line: 1777, column: 28, scope: !4332)
!4408 = !DILocation(line: 1778, column: 3, scope: !4332)
!4409 = !DILocation(line: 1778, column: 10, scope: !4332)
!4410 = !DILocation(line: 1778, column: 26, scope: !4332)
!4411 = !DILocation(line: 1779, column: 3, scope: !4332)
!4412 = !DILocation(line: 1779, column: 11, scope: !4332)
!4413 = !DILocation(line: 1779, column: 32, scope: !4332)
!4414 = !DILocation(line: 1780, column: 3, scope: !4332)
!4415 = !DILocation(line: 1780, column: 11, scope: !4332)
!4416 = !DILocation(line: 1780, column: 31, scope: !4332)
!4417 = !DILocation(line: 1781, column: 3, scope: !4332)
!4418 = !DILocation(line: 1781, column: 11, scope: !4332)
!4419 = !DILocation(line: 1781, column: 30, scope: !4332)
!4420 = !DILocation(line: 1782, column: 3, scope: !4332)
!4421 = !DILocation(line: 1782, column: 11, scope: !4332)
!4422 = !DILocation(line: 1782, column: 31, scope: !4332)
!4423 = !DILocation(line: 1783, column: 3, scope: !4332)
!4424 = !DILocation(line: 1783, column: 10, scope: !4332)
!4425 = !DILocation(line: 1784, column: 3, scope: !4332)
!4426 = !DILocation(line: 1784, column: 9, scope: !4332)
!4427 = !DILocation(line: 1787, column: 8, scope: !4332)
!4428 = !DILocation(line: 1788, column: 8, scope: !4332)
!4429 = !DILocation(line: 1789, column: 6, scope: !4332)
!4430 = !DILocation(line: 1790, column: 6, scope: !4332)
!4431 = !DILocation(line: 1791, column: 7, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4332, file: !1, line: 1791, column: 7)
!4433 = !DILocation(line: 1791, column: 12, scope: !4432)
!4434 = !DILocation(line: 1791, column: 7, scope: !4332)
!4435 = !DILocation(line: 1792, column: 12, scope: !4432)
!4436 = !DILocation(line: 1792, column: 14, scope: !4432)
!4437 = !DILocation(line: 1792, column: 10, scope: !4432)
!4438 = !DILocation(line: 1792, column: 21, scope: !4432)
!4439 = !DILocation(line: 1792, column: 19, scope: !4432)
!4440 = !DILocation(line: 1792, column: 8, scope: !4432)
!4441 = !DILocation(line: 1792, column: 5, scope: !4432)
!4442 = !DILocation(line: 1793, column: 7, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4332, file: !1, line: 1793, column: 7)
!4444 = !DILocation(line: 1793, column: 12, scope: !4443)
!4445 = !DILocation(line: 1793, column: 7, scope: !4332)
!4446 = !DILocation(line: 1794, column: 12, scope: !4443)
!4447 = !DILocation(line: 1794, column: 14, scope: !4443)
!4448 = !DILocation(line: 1794, column: 10, scope: !4443)
!4449 = !DILocation(line: 1794, column: 21, scope: !4443)
!4450 = !DILocation(line: 1794, column: 19, scope: !4443)
!4451 = !DILocation(line: 1794, column: 8, scope: !4443)
!4452 = !DILocation(line: 1794, column: 5, scope: !4443)
!4453 = !DILocation(line: 1797, column: 15, scope: !4332)
!4454 = !DILocation(line: 1797, column: 10, scope: !4332)
!4455 = !DILocation(line: 1797, column: 5, scope: !4332)
!4456 = !DILocation(line: 1798, column: 10, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4332, file: !1, line: 1798, column: 3)
!4458 = !DILocation(line: 1798, column: 8, scope: !4457)
!4459 = !DILocation(line: 1798, column: 15, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4457, file: !1, line: 1798, column: 3)
!4461 = !DILocation(line: 1798, column: 19, scope: !4460)
!4462 = !DILocation(line: 1798, column: 17, scope: !4460)
!4463 = !DILocation(line: 1798, column: 3, scope: !4457)
!4464 = !DILocation(line: 1799, column: 15, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4460, file: !1, line: 1798, column: 27)
!4466 = !DILocation(line: 1799, column: 19, scope: !4465)
!4467 = !DILocation(line: 1799, column: 5, scope: !4465)
!4468 = !DILocation(line: 1799, column: 13, scope: !4465)
!4469 = !DILocation(line: 1800, column: 15, scope: !4465)
!4470 = !DILocation(line: 1800, column: 19, scope: !4465)
!4471 = !DILocation(line: 1800, column: 22, scope: !4465)
!4472 = !DILocation(line: 1800, column: 5, scope: !4465)
!4473 = !DILocation(line: 1800, column: 13, scope: !4465)
!4474 = !DILocation(line: 1801, column: 15, scope: !4465)
!4475 = !DILocation(line: 1801, column: 19, scope: !4465)
!4476 = !DILocation(line: 1801, column: 5, scope: !4465)
!4477 = !DILocation(line: 1801, column: 13, scope: !4465)
!4478 = !DILocation(line: 1802, column: 15, scope: !4465)
!4479 = !DILocation(line: 1802, column: 19, scope: !4465)
!4480 = !DILocation(line: 1802, column: 22, scope: !4465)
!4481 = !DILocation(line: 1802, column: 5, scope: !4465)
!4482 = !DILocation(line: 1802, column: 13, scope: !4465)
!4483 = !DILocation(line: 1803, column: 9, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4465, file: !1, line: 1803, column: 9)
!4485 = !DILocation(line: 1803, column: 14, scope: !4484)
!4486 = !DILocation(line: 1803, column: 9, scope: !4465)
!4487 = !DILocation(line: 1804, column: 18, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4484, file: !1, line: 1803, column: 28)
!4489 = !DILocation(line: 1804, column: 17, scope: !4488)
!4490 = !DILocation(line: 1804, column: 7, scope: !4488)
!4491 = !DILocation(line: 1804, column: 15, scope: !4488)
!4492 = !DILocation(line: 1805, column: 5, scope: !4488)
!4493 = !DILocation(line: 1806, column: 16, scope: !4465)
!4494 = !DILocation(line: 1806, column: 26, scope: !4465)
!4495 = !DILocation(line: 1806, column: 36, scope: !4465)
!4496 = !DILocation(line: 1806, column: 46, scope: !4465)
!4497 = !DILocation(line: 1806, column: 44, scope: !4465)
!4498 = !DILocation(line: 1806, column: 34, scope: !4465)
!4499 = !DILocation(line: 1806, column: 11, scope: !4465)
!4500 = !DILocation(line: 1806, column: 8, scope: !4465)
!4501 = !DILocation(line: 1807, column: 16, scope: !4465)
!4502 = !DILocation(line: 1807, column: 26, scope: !4465)
!4503 = !DILocation(line: 1807, column: 36, scope: !4465)
!4504 = !DILocation(line: 1807, column: 46, scope: !4465)
!4505 = !DILocation(line: 1807, column: 44, scope: !4465)
!4506 = !DILocation(line: 1807, column: 34, scope: !4465)
!4507 = !DILocation(line: 1807, column: 11, scope: !4465)
!4508 = !DILocation(line: 1807, column: 8, scope: !4465)
!4509 = !DILocation(line: 1808, column: 26, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4465, file: !1, line: 1807, column: 56)
!4511 = !DILocation(line: 1808, column: 36, scope: !4510)
!4512 = !DILocation(line: 1808, column: 55, scope: !4510)
!4513 = !DILocation(line: 1808, column: 65, scope: !4510)
!4514 = !DILocation(line: 1808, column: 63, scope: !4510)
!4515 = !DILocation(line: 1808, column: 44, scope: !4510)
!4516 = !DILocation(line: 1808, column: 7, scope: !4510)
!4517 = !DILocation(line: 1808, column: 15, scope: !4510)
!4518 = !DILocation(line: 1809, column: 26, scope: !4510)
!4519 = !DILocation(line: 1809, column: 36, scope: !4510)
!4520 = !DILocation(line: 1809, column: 55, scope: !4510)
!4521 = !DILocation(line: 1809, column: 65, scope: !4510)
!4522 = !DILocation(line: 1809, column: 63, scope: !4510)
!4523 = !DILocation(line: 1809, column: 44, scope: !4510)
!4524 = !DILocation(line: 1809, column: 7, scope: !4510)
!4525 = !DILocation(line: 1809, column: 15, scope: !4510)
!4526 = !DILocation(line: 1811, column: 15, scope: !4465)
!4527 = !DILocation(line: 1811, column: 25, scope: !4465)
!4528 = !DILocation(line: 1811, column: 35, scope: !4465)
!4529 = !DILocation(line: 1811, column: 45, scope: !4465)
!4530 = !DILocation(line: 1811, column: 43, scope: !4465)
!4531 = !DILocation(line: 1811, column: 33, scope: !4465)
!4532 = !DILocation(line: 1811, column: 10, scope: !4465)
!4533 = !DILocation(line: 1811, column: 7, scope: !4465)
!4534 = !DILocation(line: 1812, column: 11, scope: !4465)
!4535 = !DILocation(line: 1812, column: 8, scope: !4465)
!4536 = !DILocation(line: 1813, column: 11, scope: !4465)
!4537 = !DILocation(line: 1813, column: 8, scope: !4465)
!4538 = !DILocation(line: 1814, column: 3, scope: !4465)
!4539 = !DILocation(line: 1798, column: 22, scope: !4460)
!4540 = !DILocation(line: 1798, column: 3, scope: !4460)
!4541 = distinct !{!4541, !4463, !4542, !175}
!4542 = !DILocation(line: 1814, column: 3, scope: !4457)
!4543 = !DILocation(line: 1815, column: 13, scope: !4332)
!4544 = !DILocation(line: 1815, column: 26, scope: !4332)
!4545 = !DILocation(line: 1815, column: 39, scope: !4332)
!4546 = !DILocation(line: 1815, column: 52, scope: !4332)
!4547 = !DILocation(line: 1815, column: 50, scope: !4332)
!4548 = !DILocation(line: 1815, column: 37, scope: !4332)
!4549 = !DILocation(line: 1815, column: 8, scope: !4332)
!4550 = !DILocation(line: 1815, column: 5, scope: !4332)
!4551 = !DILocation(line: 1817, column: 24, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4332, file: !1, line: 1816, column: 3)
!4553 = !DILocation(line: 1817, column: 36, scope: !4552)
!4554 = !DILocation(line: 1817, column: 56, scope: !4552)
!4555 = !DILocation(line: 1817, column: 68, scope: !4552)
!4556 = !DILocation(line: 1817, column: 66, scope: !4552)
!4557 = !DILocation(line: 1817, column: 45, scope: !4552)
!4558 = !DILocation(line: 1817, column: 5, scope: !4552)
!4559 = !DILocation(line: 1817, column: 13, scope: !4552)
!4560 = !DILocation(line: 1818, column: 24, scope: !4552)
!4561 = !DILocation(line: 1818, column: 36, scope: !4552)
!4562 = !DILocation(line: 1818, column: 56, scope: !4552)
!4563 = !DILocation(line: 1818, column: 68, scope: !4552)
!4564 = !DILocation(line: 1818, column: 66, scope: !4552)
!4565 = !DILocation(line: 1818, column: 45, scope: !4552)
!4566 = !DILocation(line: 1818, column: 5, scope: !4552)
!4567 = !DILocation(line: 1818, column: 13, scope: !4552)
!4568 = !DILocation(line: 1820, column: 13, scope: !4332)
!4569 = !DILocation(line: 1820, column: 23, scope: !4332)
!4570 = !DILocation(line: 1820, column: 33, scope: !4332)
!4571 = !DILocation(line: 1820, column: 43, scope: !4332)
!4572 = !DILocation(line: 1820, column: 41, scope: !4332)
!4573 = !DILocation(line: 1820, column: 31, scope: !4332)
!4574 = !DILocation(line: 1820, column: 8, scope: !4332)
!4575 = !DILocation(line: 1820, column: 5, scope: !4332)
!4576 = !DILocation(line: 1822, column: 23, scope: !4332)
!4577 = !DILocation(line: 1822, column: 14, scope: !4332)
!4578 = !DILocation(line: 1823, column: 16, scope: !4332)
!4579 = !DILocation(line: 1823, column: 7, scope: !4332)
!4580 = !DILocation(line: 1822, column: 10, scope: !4332)
!4581 = !DILocation(line: 1822, column: 8, scope: !4332)
!4582 = !DILocation(line: 1824, column: 7, scope: !4332)
!4583 = !DILocation(line: 1824, column: 5, scope: !4332)
!4584 = !DILocation(line: 1826, column: 18, scope: !4332)
!4585 = !DILocation(line: 1826, column: 16, scope: !4332)
!4586 = !DILocation(line: 1827, column: 30, scope: !4332)
!4587 = !DILocation(line: 1827, column: 21, scope: !4332)
!4588 = !DILocation(line: 1828, column: 16, scope: !4332)
!4589 = !DILocation(line: 1828, column: 7, scope: !4332)
!4590 = !DILocation(line: 1827, column: 17, scope: !4332)
!4591 = !DILocation(line: 1827, column: 15, scope: !4332)
!4592 = !DILocation(line: 1829, column: 13, scope: !4332)
!4593 = !DILocation(line: 1829, column: 11, scope: !4332)
!4594 = !DILocation(line: 1830, column: 25, scope: !4332)
!4595 = !DILocation(line: 1830, column: 16, scope: !4332)
!4596 = !DILocation(line: 1831, column: 18, scope: !4332)
!4597 = !DILocation(line: 1831, column: 9, scope: !4332)
!4598 = !DILocation(line: 1830, column: 12, scope: !4332)
!4599 = !DILocation(line: 1830, column: 10, scope: !4332)
!4600 = !DILocation(line: 1832, column: 13, scope: !4332)
!4601 = !DILocation(line: 1832, column: 25, scope: !4332)
!4602 = !DILocation(line: 1832, column: 23, scope: !4332)
!4603 = !DILocation(line: 1832, column: 40, scope: !4332)
!4604 = !DILocation(line: 1832, column: 38, scope: !4332)
!4605 = !DILocation(line: 1832, column: 3, scope: !4332)
!4606 = !DILocation(line: 1832, column: 10, scope: !4332)
!4607 = !DILocation(line: 1833, column: 13, scope: !4332)
!4608 = !DILocation(line: 1833, column: 25, scope: !4332)
!4609 = !DILocation(line: 1833, column: 23, scope: !4332)
!4610 = !DILocation(line: 1833, column: 40, scope: !4332)
!4611 = !DILocation(line: 1833, column: 38, scope: !4332)
!4612 = !DILocation(line: 1833, column: 3, scope: !4332)
!4613 = !DILocation(line: 1833, column: 10, scope: !4332)
!4614 = !DILocation(line: 1834, column: 15, scope: !4332)
!4615 = !DILocation(line: 1834, column: 24, scope: !4332)
!4616 = !DILocation(line: 1834, column: 33, scope: !4332)
!4617 = !DILocation(line: 1834, column: 42, scope: !4332)
!4618 = !DILocation(line: 1834, column: 40, scope: !4332)
!4619 = !DILocation(line: 1834, column: 31, scope: !4332)
!4620 = !DILocation(line: 1834, column: 10, scope: !4332)
!4621 = !DILocation(line: 1834, column: 8, scope: !4332)
!4622 = !DILocation(line: 1837, column: 16, scope: !4332)
!4623 = !DILocation(line: 1837, column: 29, scope: !4332)
!4624 = !DILocation(line: 1837, column: 42, scope: !4332)
!4625 = !DILocation(line: 1837, column: 55, scope: !4332)
!4626 = !DILocation(line: 1837, column: 53, scope: !4332)
!4627 = !DILocation(line: 1837, column: 40, scope: !4332)
!4628 = !DILocation(line: 1837, column: 11, scope: !4332)
!4629 = !DILocation(line: 1837, column: 9, scope: !4332)
!4630 = !DILocation(line: 1837, column: 69, scope: !4332)
!4631 = !DILocation(line: 1837, column: 71, scope: !4332)
!4632 = !DILocation(line: 1837, column: 5, scope: !4332)
!4633 = !DILocation(line: 1838, column: 7, scope: !4332)
!4634 = !DILocation(line: 1838, column: 5, scope: !4332)
!4635 = !DILocation(line: 1839, column: 7, scope: !4332)
!4636 = !DILocation(line: 1839, column: 33, scope: !4332)
!4637 = !DILocation(line: 1839, column: 42, scope: !4332)
!4638 = !DILocation(line: 1839, column: 40, scope: !4332)
!4639 = !DILocation(line: 1839, column: 57, scope: !4332)
!4640 = !DILocation(line: 1839, column: 55, scope: !4332)
!4641 = !DILocation(line: 1839, column: 5, scope: !4332)
!4642 = !DILocation(line: 1840, column: 12, scope: !4332)
!4643 = !DILocation(line: 1840, column: 10, scope: !4332)
!4644 = !DILocation(line: 1840, column: 5, scope: !4332)
!4645 = !DILocation(line: 1842, column: 17, scope: !4332)
!4646 = !DILocation(line: 1842, column: 29, scope: !4332)
!4647 = !DILocation(line: 1842, column: 27, scope: !4332)
!4648 = !DILocation(line: 1842, column: 41, scope: !4332)
!4649 = !DILocation(line: 1842, column: 43, scope: !4332)
!4650 = !DILocation(line: 1842, column: 40, scope: !4332)
!4651 = !DILocation(line: 1842, column: 38, scope: !4332)
!4652 = !DILocation(line: 1842, column: 51, scope: !4332)
!4653 = !DILocation(line: 1842, column: 61, scope: !4332)
!4654 = !DILocation(line: 1842, column: 59, scope: !4332)
!4655 = !DILocation(line: 1842, column: 48, scope: !4332)
!4656 = !DILocation(line: 1842, column: 77, scope: !4332)
!4657 = !DILocation(line: 1844, column: 4, scope: !4332)
!4658 = !DILocation(line: 1844, column: 15, scope: !4332)
!4659 = !DILocation(line: 1844, column: 13, scope: !4332)
!4660 = !DILocation(line: 1844, column: 30, scope: !4332)
!4661 = !DILocation(line: 1844, column: 44, scope: !4332)
!4662 = !DILocation(line: 1845, column: 9, scope: !4332)
!4663 = !DILocation(line: 1845, column: 23, scope: !4332)
!4664 = !DILocation(line: 1845, column: 21, scope: !4332)
!4665 = !DILocation(line: 1844, column: 56, scope: !4332)
!4666 = !DILocation(line: 1844, column: 25, scope: !4332)
!4667 = !DILocation(line: 1844, column: 23, scope: !4332)
!4668 = !DILocation(line: 1843, column: 4, scope: !4332)
!4669 = !DILocation(line: 1846, column: 4, scope: !4332)
!4670 = !DILocation(line: 1845, column: 36, scope: !4332)
!4671 = !DILocation(line: 1842, column: 22, scope: !4332)
!4672 = !DILocation(line: 1842, column: 4, scope: !4332)
!4673 = !DILocation(line: 1842, column: 15, scope: !4332)
!4674 = !DILocation(line: 1847, column: 1, scope: !4332)
