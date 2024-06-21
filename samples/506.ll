; ModuleID = 'samples/506.bc'
source_filename = "../test-dot2/testgen_BLAS_zdot2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"z_div: division by zero\00", align 1, !dbg !0

; Function Attrs: nounwind uwtable
define dso_local void @z_mul(ptr noundef %a, ptr noundef %b, ptr noundef %c) #0 !dbg !26 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %cr = alloca double, align 8
  %ci = alloca double, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !30, metadata !DIExpression()), !dbg !39
  store ptr %b, ptr %b.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !31, metadata !DIExpression()), !dbg !40
  store ptr %c, ptr %c.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !32, metadata !DIExpression()), !dbg !41
  call void @llvm.lifetime.start.p0(i64 8, ptr %cr) #5, !dbg !42
  tail call void @llvm.dbg.declare(metadata ptr %cr, metadata !33, metadata !DIExpression()), !dbg !43
  call void @llvm.lifetime.start.p0(i64 8, ptr %ci) #5, !dbg !42
  tail call void @llvm.dbg.declare(metadata ptr %ci, metadata !34, metadata !DIExpression()), !dbg !44
  %0 = load ptr, ptr %a.addr, align 8, !dbg !45, !tbaa !35
  %arrayidx = getelementptr inbounds double, ptr %0, i64 0, !dbg !45
  %1 = load double, ptr %arrayidx, align 8, !dbg !45, !tbaa !46
  %2 = load ptr, ptr %b.addr, align 8, !dbg !48, !tbaa !35
  %arrayidx1 = getelementptr inbounds double, ptr %2, i64 0, !dbg !48
  %3 = load double, ptr %arrayidx1, align 8, !dbg !48, !tbaa !46
  %4 = load ptr, ptr %a.addr, align 8, !dbg !49, !tbaa !35
  %arrayidx2 = getelementptr inbounds double, ptr %4, i64 1, !dbg !49
  %5 = load double, ptr %arrayidx2, align 8, !dbg !49, !tbaa !46
  %6 = load ptr, ptr %b.addr, align 8, !dbg !50, !tbaa !35
  %arrayidx3 = getelementptr inbounds double, ptr %6, i64 1, !dbg !50
  %7 = load double, ptr %arrayidx3, align 8, !dbg !50, !tbaa !46
  %mul4 = fmul double %5, %7, !dbg !51
  %neg = fneg double %mul4, !dbg !52
  %8 = call double @llvm.fmuladd.f64(double %1, double %3, double %neg), !dbg !52
  store double %8, ptr %cr, align 8, !dbg !53, !tbaa !46
  %9 = load ptr, ptr %a.addr, align 8, !dbg !54, !tbaa !35
  %arrayidx5 = getelementptr inbounds double, ptr %9, i64 1, !dbg !54
  %10 = load double, ptr %arrayidx5, align 8, !dbg !54, !tbaa !46
  %11 = load ptr, ptr %b.addr, align 8, !dbg !55, !tbaa !35
  %arrayidx6 = getelementptr inbounds double, ptr %11, i64 0, !dbg !55
  %12 = load double, ptr %arrayidx6, align 8, !dbg !55, !tbaa !46
  %13 = load ptr, ptr %a.addr, align 8, !dbg !56, !tbaa !35
  %arrayidx7 = getelementptr inbounds double, ptr %13, i64 0, !dbg !56
  %14 = load double, ptr %arrayidx7, align 8, !dbg !56, !tbaa !46
  %15 = load ptr, ptr %b.addr, align 8, !dbg !57, !tbaa !35
  %arrayidx8 = getelementptr inbounds double, ptr %15, i64 1, !dbg !57
  %16 = load double, ptr %arrayidx8, align 8, !dbg !57, !tbaa !46
  %mul9 = fmul double %14, %16, !dbg !58
  %17 = call double @llvm.fmuladd.f64(double %10, double %12, double %mul9), !dbg !59
  store double %17, ptr %ci, align 8, !dbg !60, !tbaa !46
  %18 = load double, ptr %cr, align 8, !dbg !61, !tbaa !46
  %19 = load ptr, ptr %c.addr, align 8, !dbg !62, !tbaa !35
  %arrayidx10 = getelementptr inbounds double, ptr %19, i64 0, !dbg !62
  store double %18, ptr %arrayidx10, align 8, !dbg !63, !tbaa !46
  %20 = load double, ptr %ci, align 8, !dbg !64, !tbaa !46
  %21 = load ptr, ptr %c.addr, align 8, !dbg !65, !tbaa !35
  %arrayidx11 = getelementptr inbounds double, ptr %21, i64 1, !dbg !65
  store double %20, ptr %arrayidx11, align 8, !dbg !66, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 8, ptr %ci) #5, !dbg !67
  call void @llvm.lifetime.end.p0(i64 8, ptr %cr) #5, !dbg !67
  ret void, !dbg !67
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @z_div(ptr noundef %a, ptr noundef %b, ptr noundef %c) #0 !dbg !68 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %ratio = alloca double, align 8
  %den = alloca double, align 8
  %abr = alloca double, align 8
  %abi = alloca double, align 8
  %cr = alloca double, align 8
  %ci = alloca double, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !70, metadata !DIExpression()), !dbg !79
  store ptr %b, ptr %b.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !71, metadata !DIExpression()), !dbg !80
  store ptr %c, ptr %c.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !72, metadata !DIExpression()), !dbg !81
  call void @llvm.lifetime.start.p0(i64 8, ptr %ratio) #5, !dbg !82
  tail call void @llvm.dbg.declare(metadata ptr %ratio, metadata !73, metadata !DIExpression()), !dbg !83
  call void @llvm.lifetime.start.p0(i64 8, ptr %den) #5, !dbg !82
  tail call void @llvm.dbg.declare(metadata ptr %den, metadata !74, metadata !DIExpression()), !dbg !84
  call void @llvm.lifetime.start.p0(i64 8, ptr %abr) #5, !dbg !85
  tail call void @llvm.dbg.declare(metadata ptr %abr, metadata !75, metadata !DIExpression()), !dbg !86
  call void @llvm.lifetime.start.p0(i64 8, ptr %abi) #5, !dbg !85
  tail call void @llvm.dbg.declare(metadata ptr %abi, metadata !76, metadata !DIExpression()), !dbg !87
  call void @llvm.lifetime.start.p0(i64 8, ptr %cr) #5, !dbg !85
  tail call void @llvm.dbg.declare(metadata ptr %cr, metadata !77, metadata !DIExpression()), !dbg !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %ci) #5, !dbg !85
  tail call void @llvm.dbg.declare(metadata ptr %ci, metadata !78, metadata !DIExpression()), !dbg !89
  %0 = load ptr, ptr %b.addr, align 8, !dbg !90, !tbaa !35
  %arrayidx = getelementptr inbounds double, ptr %0, i64 0, !dbg !90
  %1 = load double, ptr %arrayidx, align 8, !dbg !90, !tbaa !46
  store double %1, ptr %abr, align 8, !dbg !92, !tbaa !46
  %cmp = fcmp olt double %1, 0.000000e+00, !dbg !93
  br i1 %cmp, label %if.then, label %if.end, !dbg !94

if.then:                                          ; preds = %entry
  %2 = load double, ptr %abr, align 8, !dbg !95, !tbaa !46
  %fneg = fneg double %2, !dbg !96
  store double %fneg, ptr %abr, align 8, !dbg !97, !tbaa !46
  br label %if.end, !dbg !98

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %b.addr, align 8, !dbg !99, !tbaa !35
  %arrayidx1 = getelementptr inbounds double, ptr %3, i64 1, !dbg !99
  %4 = load double, ptr %arrayidx1, align 8, !dbg !99, !tbaa !46
  store double %4, ptr %abi, align 8, !dbg !101, !tbaa !46
  %cmp2 = fcmp olt double %4, 0.000000e+00, !dbg !102
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !103

if.then3:                                         ; preds = %if.end
  %5 = load double, ptr %abi, align 8, !dbg !104, !tbaa !46
  %fneg4 = fneg double %5, !dbg !105
  store double %fneg4, ptr %abi, align 8, !dbg !106, !tbaa !46
  br label %if.end5, !dbg !107

if.end5:                                          ; preds = %if.then3, %if.end
  %6 = load double, ptr %abr, align 8, !dbg !108, !tbaa !46
  %7 = load double, ptr %abi, align 8, !dbg !110, !tbaa !46
  %cmp6 = fcmp ole double %6, %7, !dbg !111
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !112

if.then7:                                         ; preds = %if.end5
  %8 = load double, ptr %abi, align 8, !dbg !113, !tbaa !46
  %cmp8 = fcmp oeq double %8, 0.000000e+00, !dbg !116
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !117

if.then9:                                         ; preds = %if.then7
  call void (ptr, i32, i32, ptr, ...) @BLAS_error(ptr noundef @.str, i32 noundef 0, i32 noundef 0, ptr noundef null), !dbg !118
  br label %if.end10, !dbg !120

if.end10:                                         ; preds = %if.then9, %if.then7
  %9 = load ptr, ptr %b.addr, align 8, !dbg !121, !tbaa !35
  %arrayidx11 = getelementptr inbounds double, ptr %9, i64 0, !dbg !121
  %10 = load double, ptr %arrayidx11, align 8, !dbg !121, !tbaa !46
  %11 = load ptr, ptr %b.addr, align 8, !dbg !122, !tbaa !35
  %arrayidx12 = getelementptr inbounds double, ptr %11, i64 1, !dbg !122
  %12 = load double, ptr %arrayidx12, align 8, !dbg !122, !tbaa !46
  %div = fdiv double %10, %12, !dbg !123
  store double %div, ptr %ratio, align 8, !dbg !124, !tbaa !46
  %13 = load ptr, ptr %b.addr, align 8, !dbg !125, !tbaa !35
  %arrayidx13 = getelementptr inbounds double, ptr %13, i64 1, !dbg !125
  %14 = load double, ptr %arrayidx13, align 8, !dbg !125, !tbaa !46
  %15 = load double, ptr %ratio, align 8, !dbg !126, !tbaa !46
  %16 = load double, ptr %ratio, align 8, !dbg !127, !tbaa !46
  %17 = call double @llvm.fmuladd.f64(double %15, double %16, double 1.000000e+00), !dbg !128
  %mul = fmul double %14, %17, !dbg !129
  store double %mul, ptr %den, align 8, !dbg !130, !tbaa !46
  %18 = load ptr, ptr %a.addr, align 8, !dbg !131, !tbaa !35
  %arrayidx14 = getelementptr inbounds double, ptr %18, i64 0, !dbg !131
  %19 = load double, ptr %arrayidx14, align 8, !dbg !131, !tbaa !46
  %20 = load double, ptr %ratio, align 8, !dbg !132, !tbaa !46
  %21 = load ptr, ptr %a.addr, align 8, !dbg !133, !tbaa !35
  %arrayidx16 = getelementptr inbounds double, ptr %21, i64 1, !dbg !133
  %22 = load double, ptr %arrayidx16, align 8, !dbg !133, !tbaa !46
  %23 = call double @llvm.fmuladd.f64(double %19, double %20, double %22), !dbg !134
  %24 = load double, ptr %den, align 8, !dbg !135, !tbaa !46
  %div17 = fdiv double %23, %24, !dbg !136
  store double %div17, ptr %cr, align 8, !dbg !137, !tbaa !46
  %25 = load ptr, ptr %a.addr, align 8, !dbg !138, !tbaa !35
  %arrayidx18 = getelementptr inbounds double, ptr %25, i64 1, !dbg !138
  %26 = load double, ptr %arrayidx18, align 8, !dbg !138, !tbaa !46
  %27 = load double, ptr %ratio, align 8, !dbg !139, !tbaa !46
  %28 = load ptr, ptr %a.addr, align 8, !dbg !140, !tbaa !35
  %arrayidx20 = getelementptr inbounds double, ptr %28, i64 0, !dbg !140
  %29 = load double, ptr %arrayidx20, align 8, !dbg !140, !tbaa !46
  %neg = fneg double %29, !dbg !141
  %30 = call double @llvm.fmuladd.f64(double %26, double %27, double %neg), !dbg !141
  %31 = load double, ptr %den, align 8, !dbg !142, !tbaa !46
  %div21 = fdiv double %30, %31, !dbg !143
  store double %div21, ptr %ci, align 8, !dbg !144, !tbaa !46
  br label %if.end37, !dbg !145

if.else:                                          ; preds = %if.end5
  %32 = load ptr, ptr %b.addr, align 8, !dbg !146, !tbaa !35
  %arrayidx22 = getelementptr inbounds double, ptr %32, i64 1, !dbg !146
  %33 = load double, ptr %arrayidx22, align 8, !dbg !146, !tbaa !46
  %34 = load ptr, ptr %b.addr, align 8, !dbg !148, !tbaa !35
  %arrayidx23 = getelementptr inbounds double, ptr %34, i64 0, !dbg !148
  %35 = load double, ptr %arrayidx23, align 8, !dbg !148, !tbaa !46
  %div24 = fdiv double %33, %35, !dbg !149
  store double %div24, ptr %ratio, align 8, !dbg !150, !tbaa !46
  %36 = load ptr, ptr %b.addr, align 8, !dbg !151, !tbaa !35
  %arrayidx25 = getelementptr inbounds double, ptr %36, i64 0, !dbg !151
  %37 = load double, ptr %arrayidx25, align 8, !dbg !151, !tbaa !46
  %38 = load double, ptr %ratio, align 8, !dbg !152, !tbaa !46
  %39 = load double, ptr %ratio, align 8, !dbg !153, !tbaa !46
  %40 = call double @llvm.fmuladd.f64(double %38, double %39, double 1.000000e+00), !dbg !154
  %mul27 = fmul double %37, %40, !dbg !155
  store double %mul27, ptr %den, align 8, !dbg !156, !tbaa !46
  %41 = load ptr, ptr %a.addr, align 8, !dbg !157, !tbaa !35
  %arrayidx28 = getelementptr inbounds double, ptr %41, i64 0, !dbg !157
  %42 = load double, ptr %arrayidx28, align 8, !dbg !157, !tbaa !46
  %43 = load ptr, ptr %a.addr, align 8, !dbg !158, !tbaa !35
  %arrayidx29 = getelementptr inbounds double, ptr %43, i64 1, !dbg !158
  %44 = load double, ptr %arrayidx29, align 8, !dbg !158, !tbaa !46
  %45 = load double, ptr %ratio, align 8, !dbg !159, !tbaa !46
  %46 = call double @llvm.fmuladd.f64(double %44, double %45, double %42), !dbg !160
  %47 = load double, ptr %den, align 8, !dbg !161, !tbaa !46
  %div31 = fdiv double %46, %47, !dbg !162
  store double %div31, ptr %cr, align 8, !dbg !163, !tbaa !46
  %48 = load ptr, ptr %a.addr, align 8, !dbg !164, !tbaa !35
  %arrayidx32 = getelementptr inbounds double, ptr %48, i64 1, !dbg !164
  %49 = load double, ptr %arrayidx32, align 8, !dbg !164, !tbaa !46
  %50 = load ptr, ptr %a.addr, align 8, !dbg !165, !tbaa !35
  %arrayidx33 = getelementptr inbounds double, ptr %50, i64 0, !dbg !165
  %51 = load double, ptr %arrayidx33, align 8, !dbg !165, !tbaa !46
  %52 = load double, ptr %ratio, align 8, !dbg !166, !tbaa !46
  %neg35 = fneg double %51, !dbg !167
  %53 = call double @llvm.fmuladd.f64(double %neg35, double %52, double %49), !dbg !167
  %54 = load double, ptr %den, align 8, !dbg !168, !tbaa !46
  %div36 = fdiv double %53, %54, !dbg !169
  store double %div36, ptr %ci, align 8, !dbg !170, !tbaa !46
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.end10
  %55 = load double, ptr %cr, align 8, !dbg !171, !tbaa !46
  %56 = load ptr, ptr %c.addr, align 8, !dbg !172, !tbaa !35
  %arrayidx38 = getelementptr inbounds double, ptr %56, i64 0, !dbg !172
  store double %55, ptr %arrayidx38, align 8, !dbg !173, !tbaa !46
  %57 = load double, ptr %ci, align 8, !dbg !174, !tbaa !46
  %58 = load ptr, ptr %c.addr, align 8, !dbg !175, !tbaa !35
  %arrayidx39 = getelementptr inbounds double, ptr %58, i64 1, !dbg !175
  store double %57, ptr %arrayidx39, align 8, !dbg !176, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 8, ptr %ci) #5, !dbg !177
  call void @llvm.lifetime.end.p0(i64 8, ptr %cr) #5, !dbg !177
  call void @llvm.lifetime.end.p0(i64 8, ptr %abi) #5, !dbg !177
  call void @llvm.lifetime.end.p0(i64 8, ptr %abr) #5, !dbg !177
  call void @llvm.lifetime.end.p0(i64 8, ptr %den) #5, !dbg !177
  call void @llvm.lifetime.end.p0(i64 8, ptr %ratio) #5, !dbg !177
  ret void, !dbg !177
}

declare !dbg !178 void @BLAS_error(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: nounwind uwtable
define dso_local void @testgen_BLAS_zdot2(i32 noundef %n, i32 noundef %n_fix2, i32 noundef %n_mix, i32 noundef %norm, i32 noundef %conj, ptr noundef %alpha, i32 noundef %alpha_flag, ptr noundef %beta, i32 noundef %beta_flag, ptr noundef %head_x, ptr noundef %tail_x, ptr noundef %y, ptr noundef %seed, ptr noundef %r, ptr noundef %r_true_l, ptr noundef %r_true_t) #0 !dbg !186 {
entry:
  %n.addr = alloca i32, align 4
  %n_fix2.addr = alloca i32, align 4
  %n_mix.addr = alloca i32, align 4
  %norm.addr = alloca i32, align 4
  %conj.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %alpha_flag.addr = alloca i32, align 4
  %beta.addr = alloca ptr, align 8
  %beta_flag.addr = alloca i32, align 4
  %head_x.addr = alloca ptr, align 8
  %tail_x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %seed.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %r_true_l.addr = alloca ptr, align 8
  %r_true_t.addr = alloca ptr, align 8
  %B = alloca i32, align 4
  %frees = alloca i32, align 4
  %y_free = alloca i32, align 4
  %i = alloca i32, align 4
  %ii = alloca i32, align 4
  %k = alloca i32, align 4
  %s = alloca i32, align 4
  %zero = alloca [2 x double], align 16
  %a = alloca double, align 8
  %b = alloca double, align 8
  %eps_out = alloca double, align 8
  %f = alloca [2 x double], align 16
  %rtmp = alloca [2 x double], align 16
  %rtmp_t = alloca [2 x double], align 16
  %alpha_i = alloca ptr, align 8
  %beta_i = alloca ptr, align 8
  %r_i = alloca ptr, align 8
  %head_x_i = alloca ptr, align 8
  %tail_x_i = alloca ptr, align 8
  %y_i = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !231
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !192, metadata !DIExpression()), !dbg !233
  store i32 %n_fix2, ptr %n_fix2.addr, align 4, !tbaa !231
  tail call void @llvm.dbg.declare(metadata ptr %n_fix2.addr, metadata !193, metadata !DIExpression()), !dbg !234
  store i32 %n_mix, ptr %n_mix.addr, align 4, !tbaa !231
  tail call void @llvm.dbg.declare(metadata ptr %n_mix.addr, metadata !194, metadata !DIExpression()), !dbg !235
  store i32 %norm, ptr %norm.addr, align 4, !tbaa !231
  tail call void @llvm.dbg.declare(metadata ptr %norm.addr, metadata !195, metadata !DIExpression()), !dbg !236
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !237
  tail call void @llvm.dbg.declare(metadata ptr %conj.addr, metadata !196, metadata !DIExpression()), !dbg !238
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !197, metadata !DIExpression()), !dbg !239
  store i32 %alpha_flag, ptr %alpha_flag.addr, align 4, !tbaa !231
  tail call void @llvm.dbg.declare(metadata ptr %alpha_flag.addr, metadata !198, metadata !DIExpression()), !dbg !240
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %beta.addr, metadata !199, metadata !DIExpression()), !dbg !241
  store i32 %beta_flag, ptr %beta_flag.addr, align 4, !tbaa !231
  tail call void @llvm.dbg.declare(metadata ptr %beta_flag.addr, metadata !200, metadata !DIExpression()), !dbg !242
  store ptr %head_x, ptr %head_x.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %head_x.addr, metadata !201, metadata !DIExpression()), !dbg !243
  store ptr %tail_x, ptr %tail_x.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %tail_x.addr, metadata !202, metadata !DIExpression()), !dbg !244
  store ptr %y, ptr %y.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !203, metadata !DIExpression()), !dbg !245
  store ptr %seed, ptr %seed.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %seed.addr, metadata !204, metadata !DIExpression()), !dbg !246
  store ptr %r, ptr %r.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !205, metadata !DIExpression()), !dbg !247
  store ptr %r_true_l, ptr %r_true_l.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %r_true_l.addr, metadata !206, metadata !DIExpression()), !dbg !248
  store ptr %r_true_t, ptr %r_true_t.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %r_true_t.addr, metadata !207, metadata !DIExpression()), !dbg !249
  call void @llvm.lifetime.start.p0(i64 4, ptr %B) #5, !dbg !250
  tail call void @llvm.dbg.declare(metadata ptr %B, metadata !208, metadata !DIExpression()), !dbg !251
  call void @llvm.lifetime.start.p0(i64 4, ptr %frees) #5, !dbg !250
  tail call void @llvm.dbg.declare(metadata ptr %frees, metadata !209, metadata !DIExpression()), !dbg !252
  call void @llvm.lifetime.start.p0(i64 4, ptr %y_free) #5, !dbg !250
  tail call void @llvm.dbg.declare(metadata ptr %y_free, metadata !210, metadata !DIExpression()), !dbg !253
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !250
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !211, metadata !DIExpression()), !dbg !254
  call void @llvm.lifetime.start.p0(i64 4, ptr %ii) #5, !dbg !250
  tail call void @llvm.dbg.declare(metadata ptr %ii, metadata !212, metadata !DIExpression()), !dbg !255
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5, !dbg !250
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !213, metadata !DIExpression()), !dbg !256
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #5, !dbg !250
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !214, metadata !DIExpression()), !dbg !257
  call void @llvm.lifetime.start.p0(i64 16, ptr %zero) #5, !dbg !258
  tail call void @llvm.dbg.declare(metadata ptr %zero, metadata !215, metadata !DIExpression()), !dbg !259
  call void @llvm.memset.p0.i64(ptr align 16 %zero, i8 0, i64 16, i1 false), !dbg !259
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #5, !dbg !260
  tail call void @llvm.dbg.declare(metadata ptr %a, metadata !219, metadata !DIExpression()), !dbg !261
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #5, !dbg !260
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !220, metadata !DIExpression()), !dbg !262
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps_out) #5, !dbg !260
  tail call void @llvm.dbg.declare(metadata ptr %eps_out, metadata !221, metadata !DIExpression()), !dbg !263
  call void @llvm.lifetime.start.p0(i64 16, ptr %f) #5, !dbg !264
  tail call void @llvm.dbg.declare(metadata ptr %f, metadata !222, metadata !DIExpression()), !dbg !265
  call void @llvm.lifetime.start.p0(i64 16, ptr %rtmp) #5, !dbg !264
  tail call void @llvm.dbg.declare(metadata ptr %rtmp, metadata !223, metadata !DIExpression()), !dbg !266
  call void @llvm.lifetime.start.p0(i64 16, ptr %rtmp_t) #5, !dbg !264
  tail call void @llvm.dbg.declare(metadata ptr %rtmp_t, metadata !224, metadata !DIExpression()), !dbg !267
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_i) #5, !dbg !268
  tail call void @llvm.dbg.declare(metadata ptr %alpha_i, metadata !225, metadata !DIExpression()), !dbg !269
  %0 = load ptr, ptr %alpha.addr, align 8, !dbg !270, !tbaa !35
  store ptr %0, ptr %alpha_i, align 8, !dbg !269, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta_i) #5, !dbg !271
  tail call void @llvm.dbg.declare(metadata ptr %beta_i, metadata !226, metadata !DIExpression()), !dbg !272
  %1 = load ptr, ptr %beta.addr, align 8, !dbg !273, !tbaa !35
  store ptr %1, ptr %beta_i, align 8, !dbg !272, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_i) #5, !dbg !274
  tail call void @llvm.dbg.declare(metadata ptr %r_i, metadata !227, metadata !DIExpression()), !dbg !275
  %2 = load ptr, ptr %r.addr, align 8, !dbg !276, !tbaa !35
  store ptr %2, ptr %r_i, align 8, !dbg !275, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr %head_x_i) #5, !dbg !277
  tail call void @llvm.dbg.declare(metadata ptr %head_x_i, metadata !228, metadata !DIExpression()), !dbg !278
  %3 = load ptr, ptr %head_x.addr, align 8, !dbg !279, !tbaa !35
  store ptr %3, ptr %head_x_i, align 8, !dbg !278, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr %tail_x_i) #5, !dbg !277
  tail call void @llvm.dbg.declare(metadata ptr %tail_x_i, metadata !229, metadata !DIExpression()), !dbg !280
  %4 = load ptr, ptr %tail_x.addr, align 8, !dbg !281, !tbaa !35
  store ptr %4, ptr %tail_x_i, align 8, !dbg !280, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_i) #5, !dbg !282
  tail call void @llvm.dbg.declare(metadata ptr %y_i, metadata !230, metadata !DIExpression()), !dbg !283
  %5 = load ptr, ptr %y.addr, align 8, !dbg !284, !tbaa !35
  store ptr %5, ptr %y_i, align 8, !dbg !283, !tbaa !35
  %6 = load i32, ptr %alpha_flag.addr, align 4, !dbg !285, !tbaa !231
  %cmp = icmp eq i32 %6, 0, !dbg !287
  br i1 %cmp, label %if.then, label %if.end, !dbg !288

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %seed.addr, align 8, !dbg !289, !tbaa !35
  %call = call double @xrand(ptr noundef %7), !dbg !291
  %8 = load ptr, ptr %alpha_i, align 8, !dbg !292, !tbaa !35
  %arrayidx = getelementptr inbounds double, ptr %8, i64 0, !dbg !292
  store double %call, ptr %arrayidx, align 8, !dbg !293, !tbaa !46
  %9 = load ptr, ptr %seed.addr, align 8, !dbg !294, !tbaa !35
  %call1 = call double @xrand(ptr noundef %9), !dbg !295
  %10 = load ptr, ptr %alpha_i, align 8, !dbg !296, !tbaa !35
  %arrayidx2 = getelementptr inbounds double, ptr %10, i64 1, !dbg !296
  store double %call1, ptr %arrayidx2, align 8, !dbg !297, !tbaa !46
  br label %if.end, !dbg !298

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, ptr %beta_flag.addr, align 4, !dbg !299, !tbaa !231
  %cmp3 = icmp eq i32 %11, 0, !dbg !301
  br i1 %cmp3, label %if.then4, label %if.end9, !dbg !302

if.then4:                                         ; preds = %if.end
  %12 = load ptr, ptr %seed.addr, align 8, !dbg !303, !tbaa !35
  %call5 = call double @xrand(ptr noundef %12), !dbg !305
  %13 = load ptr, ptr %beta_i, align 8, !dbg !306, !tbaa !35
  %arrayidx6 = getelementptr inbounds double, ptr %13, i64 0, !dbg !306
  store double %call5, ptr %arrayidx6, align 8, !dbg !307, !tbaa !46
  %14 = load ptr, ptr %seed.addr, align 8, !dbg !308, !tbaa !35
  %call7 = call double @xrand(ptr noundef %14), !dbg !309
  %15 = load ptr, ptr %beta_i, align 8, !dbg !310, !tbaa !35
  %arrayidx8 = getelementptr inbounds double, ptr %15, i64 1, !dbg !310
  store double %call7, ptr %arrayidx8, align 8, !dbg !311, !tbaa !46
  br label %if.end9, !dbg !312

if.end9:                                          ; preds = %if.then4, %if.end
  %16 = load i32, ptr %n.addr, align 4, !dbg !313, !tbaa !231
  %17 = load i32, ptr %n_fix2.addr, align 4, !dbg !314, !tbaa !231
  %sub = sub nsw i32 %16, %17, !dbg !315
  store i32 %sub, ptr %y_free, align 4, !dbg !316, !tbaa !231
  %18 = load i32, ptr %n_fix2.addr, align 4, !dbg !317, !tbaa !231
  %mul = mul nsw i32 2, %18, !dbg !318
  store i32 %mul, ptr %k, align 4, !dbg !319, !tbaa !231
  %call10 = call double @power(i32 noundef 2, i32 noundef -53), !dbg !320
  store double %call10, ptr %eps_out, align 8, !dbg !321, !tbaa !46
  %19 = load ptr, ptr %r_i, align 8, !dbg !322, !tbaa !35
  %arrayidx11 = getelementptr inbounds double, ptr %19, i64 1, !dbg !322
  store double 0.000000e+00, ptr %arrayidx11, align 8, !dbg !323, !tbaa !46
  %20 = load ptr, ptr %r_i, align 8, !dbg !324, !tbaa !35
  %arrayidx12 = getelementptr inbounds double, ptr %20, i64 0, !dbg !324
  store double 0.000000e+00, ptr %arrayidx12, align 8, !dbg !325, !tbaa !46
  %21 = load i32, ptr %conj.addr, align 4, !dbg !326, !tbaa !237
  %22 = load i32, ptr %n_fix2.addr, align 4, !dbg !327, !tbaa !231
  %23 = load ptr, ptr %alpha.addr, align 8, !dbg !328, !tbaa !35
  %24 = load ptr, ptr %y.addr, align 8, !dbg !329, !tbaa !35
  %arraydecay = getelementptr inbounds [2 x double], ptr %zero, i64 0, i64 0, !dbg !330
  %25 = load ptr, ptr %head_x.addr, align 8, !dbg !331, !tbaa !35
  %26 = load ptr, ptr %tail_x.addr, align 8, !dbg !332, !tbaa !35
  %27 = load ptr, ptr %r.addr, align 8, !dbg !333, !tbaa !35
  %28 = load ptr, ptr %r_true_l.addr, align 8, !dbg !334, !tbaa !35
  %29 = load ptr, ptr %r_true_t.addr, align 8, !dbg !335, !tbaa !35
  call void @z_r_truth2(i32 noundef %21, i32 noundef %22, ptr noundef %23, ptr noundef %24, i32 noundef 1, ptr noundef %arraydecay, ptr noundef %25, ptr noundef %26, i32 noundef 1, ptr noundef %27, ptr noundef %28, ptr noundef %29), !dbg !336
  %30 = load ptr, ptr %r_true_l.addr, align 8, !dbg !337, !tbaa !35
  %arrayidx13 = getelementptr inbounds double, ptr %30, i64 0, !dbg !337
  %31 = load double, ptr %arrayidx13, align 8, !dbg !337, !tbaa !46
  %32 = load ptr, ptr %r_true_t.addr, align 8, !dbg !338, !tbaa !35
  %arrayidx14 = getelementptr inbounds double, ptr %32, i64 0, !dbg !338
  %33 = load double, ptr %arrayidx14, align 8, !dbg !338, !tbaa !46
  %call15 = call i32 @FixedBits(double noundef %31, double noundef %33), !dbg !339
  store i32 %call15, ptr %B, align 4, !dbg !340, !tbaa !231
  %34 = load i32, ptr %B, align 4, !dbg !341, !tbaa !231
  %35 = load ptr, ptr %r_true_l.addr, align 8, !dbg !341, !tbaa !35
  %arrayidx16 = getelementptr inbounds double, ptr %35, i64 1, !dbg !341
  %36 = load double, ptr %arrayidx16, align 8, !dbg !341, !tbaa !46
  %37 = load ptr, ptr %r_true_t.addr, align 8, !dbg !341, !tbaa !35
  %arrayidx17 = getelementptr inbounds double, ptr %37, i64 1, !dbg !341
  %38 = load double, ptr %arrayidx17, align 8, !dbg !341, !tbaa !46
  %call18 = call i32 @FixedBits(double noundef %36, double noundef %38), !dbg !341
  %cmp19 = icmp sgt i32 %34, %call18, !dbg !341
  br i1 %cmp19, label %cond.true, label %cond.false, !dbg !341

cond.true:                                        ; preds = %if.end9
  %39 = load i32, ptr %B, align 4, !dbg !341, !tbaa !231
  br label %cond.end, !dbg !341

cond.false:                                       ; preds = %if.end9
  %40 = load ptr, ptr %r_true_l.addr, align 8, !dbg !341, !tbaa !35
  %arrayidx20 = getelementptr inbounds double, ptr %40, i64 1, !dbg !341
  %41 = load double, ptr %arrayidx20, align 8, !dbg !341, !tbaa !46
  %42 = load ptr, ptr %r_true_t.addr, align 8, !dbg !341, !tbaa !35
  %arrayidx21 = getelementptr inbounds double, ptr %42, i64 1, !dbg !341
  %43 = load double, ptr %arrayidx21, align 8, !dbg !341, !tbaa !46
  %call22 = call i32 @FixedBits(double noundef %41, double noundef %43), !dbg !341
  br label %cond.end, !dbg !341

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %39, %cond.true ], [ %call22, %cond.false ], !dbg !341
  store i32 %cond, ptr %B, align 4, !dbg !342, !tbaa !231
  %44 = load ptr, ptr %seed.addr, align 8, !dbg !343, !tbaa !35
  %call23 = call double @xrand(ptr noundef %44), !dbg !344
  %45 = load ptr, ptr %r_i, align 8, !dbg !345, !tbaa !35
  %arrayidx24 = getelementptr inbounds double, ptr %45, i64 0, !dbg !345
  store double %call23, ptr %arrayidx24, align 8, !dbg !346, !tbaa !46
  %46 = load ptr, ptr %seed.addr, align 8, !dbg !347, !tbaa !35
  %call25 = call double @xrand(ptr noundef %46), !dbg !348
  %47 = load ptr, ptr %r_i, align 8, !dbg !349, !tbaa !35
  %arrayidx26 = getelementptr inbounds double, ptr %47, i64 1, !dbg !349
  store double %call25, ptr %arrayidx26, align 8, !dbg !350, !tbaa !46
  %48 = load i32, ptr %n_fix2.addr, align 4, !dbg !351, !tbaa !231
  %49 = load i32, ptr %n_mix.addr, align 4, !dbg !353, !tbaa !231
  %add = add nsw i32 %48, %49, !dbg !354
  store i32 %add, ptr %i, align 4, !dbg !355, !tbaa !231
  br label %for.cond, !dbg !356

for.cond:                                         ; preds = %for.inc, %cond.end
  %50 = load i32, ptr %i, align 4, !dbg !357, !tbaa !231
  %51 = load i32, ptr %n.addr, align 4, !dbg !359, !tbaa !231
  %cmp27 = icmp slt i32 %50, %51, !dbg !360
  br i1 %cmp27, label %for.body, label %for.end, !dbg !361

for.body:                                         ; preds = %for.cond
  %52 = load i32, ptr %i, align 4, !dbg !362, !tbaa !231
  %mul28 = mul nsw i32 2, %52, !dbg !364
  store i32 %mul28, ptr %ii, align 4, !dbg !365, !tbaa !231
  %53 = load ptr, ptr %seed.addr, align 8, !dbg !366, !tbaa !35
  %call29 = call double @xrand(ptr noundef %53), !dbg !367
  %54 = load ptr, ptr %head_x_i, align 8, !dbg !368, !tbaa !35
  %55 = load i32, ptr %ii, align 4, !dbg !369, !tbaa !231
  %idxprom = sext i32 %55 to i64, !dbg !368
  %arrayidx30 = getelementptr inbounds double, ptr %54, i64 %idxprom, !dbg !368
  store double %call29, ptr %arrayidx30, align 8, !dbg !370, !tbaa !46
  %56 = load ptr, ptr %seed.addr, align 8, !dbg !371, !tbaa !35
  %call31 = call double @xrand(ptr noundef %56), !dbg !372
  %57 = load ptr, ptr %head_x_i, align 8, !dbg !373, !tbaa !35
  %58 = load i32, ptr %ii, align 4, !dbg !374, !tbaa !231
  %add32 = add nsw i32 %58, 1, !dbg !375
  %idxprom33 = sext i32 %add32 to i64, !dbg !373
  %arrayidx34 = getelementptr inbounds double, ptr %57, i64 %idxprom33, !dbg !373
  store double %call31, ptr %arrayidx34, align 8, !dbg !376, !tbaa !46
  %call35 = call double @power(i32 noundef 2, i32 noundef -53), !dbg !377
  store double %call35, ptr %a, align 8, !dbg !378, !tbaa !46
  %59 = load ptr, ptr %seed.addr, align 8, !dbg !379, !tbaa !35
  %call36 = call double @xrand(ptr noundef %59), !dbg !380
  %60 = load double, ptr %a, align 8, !dbg !381, !tbaa !46
  %mul37 = fmul double %call36, %60, !dbg !382
  %61 = load ptr, ptr %tail_x_i, align 8, !dbg !383, !tbaa !35
  %62 = load i32, ptr %ii, align 4, !dbg !384, !tbaa !231
  %idxprom38 = sext i32 %62 to i64, !dbg !383
  %arrayidx39 = getelementptr inbounds double, ptr %61, i64 %idxprom38, !dbg !383
  store double %mul37, ptr %arrayidx39, align 8, !dbg !385, !tbaa !46
  %63 = load ptr, ptr %seed.addr, align 8, !dbg !386, !tbaa !35
  %call40 = call double @xrand(ptr noundef %63), !dbg !387
  %64 = load double, ptr %a, align 8, !dbg !388, !tbaa !46
  %mul41 = fmul double %call40, %64, !dbg !389
  %65 = load ptr, ptr %tail_x_i, align 8, !dbg !390, !tbaa !35
  %66 = load i32, ptr %ii, align 4, !dbg !391, !tbaa !231
  %add42 = add nsw i32 %66, 1, !dbg !392
  %idxprom43 = sext i32 %add42 to i64, !dbg !390
  %arrayidx44 = getelementptr inbounds double, ptr %65, i64 %idxprom43, !dbg !390
  store double %mul41, ptr %arrayidx44, align 8, !dbg !393, !tbaa !46
  br label %for.inc, !dbg !394

for.inc:                                          ; preds = %for.body
  %67 = load i32, ptr %i, align 4, !dbg !395, !tbaa !231
  %inc = add nsw i32 %67, 1, !dbg !395
  store i32 %inc, ptr %i, align 4, !dbg !395, !tbaa !231
  br label %for.cond, !dbg !396, !llvm.loop !397

for.end:                                          ; preds = %for.cond
  %68 = load i32, ptr %alpha_flag.addr, align 4, !dbg !400, !tbaa !231
  %cmp45 = icmp eq i32 %68, 1, !dbg !402
  br i1 %cmp45, label %land.lhs.true, label %if.end66, !dbg !403

land.lhs.true:                                    ; preds = %for.end
  %69 = load ptr, ptr %alpha_i, align 8, !dbg !404, !tbaa !35
  %arrayidx46 = getelementptr inbounds double, ptr %69, i64 0, !dbg !404
  %70 = load double, ptr %arrayidx46, align 8, !dbg !404, !tbaa !46
  %cmp47 = fcmp oeq double %70, 0.000000e+00, !dbg !405
  br i1 %cmp47, label %land.lhs.true48, label %if.end66, !dbg !406

land.lhs.true48:                                  ; preds = %land.lhs.true
  %71 = load ptr, ptr %alpha_i, align 8, !dbg !407, !tbaa !35
  %arrayidx49 = getelementptr inbounds double, ptr %71, i64 1, !dbg !407
  %72 = load double, ptr %arrayidx49, align 8, !dbg !407, !tbaa !46
  %cmp50 = fcmp oeq double %72, 0.000000e+00, !dbg !408
  br i1 %cmp50, label %if.then51, label %if.end66, !dbg !409

if.then51:                                        ; preds = %land.lhs.true48
  %73 = load i32, ptr %n_fix2.addr, align 4, !dbg !410, !tbaa !231
  store i32 %73, ptr %i, align 4, !dbg !413, !tbaa !231
  br label %for.cond52, !dbg !414

for.cond52:                                       ; preds = %for.inc63, %if.then51
  %74 = load i32, ptr %i, align 4, !dbg !415, !tbaa !231
  %75 = load i32, ptr %n.addr, align 4, !dbg !417, !tbaa !231
  %cmp53 = icmp slt i32 %74, %75, !dbg !418
  br i1 %cmp53, label %for.body54, label %for.end65, !dbg !419

for.body54:                                       ; preds = %for.cond52
  %76 = load i32, ptr %i, align 4, !dbg !420, !tbaa !231
  %mul55 = mul nsw i32 2, %76, !dbg !422
  store i32 %mul55, ptr %ii, align 4, !dbg !423, !tbaa !231
  %77 = load ptr, ptr %seed.addr, align 8, !dbg !424, !tbaa !35
  %call56 = call double @xrand(ptr noundef %77), !dbg !425
  %78 = load ptr, ptr %y_i, align 8, !dbg !426, !tbaa !35
  %79 = load i32, ptr %ii, align 4, !dbg !427, !tbaa !231
  %idxprom57 = sext i32 %79 to i64, !dbg !426
  %arrayidx58 = getelementptr inbounds double, ptr %78, i64 %idxprom57, !dbg !426
  store double %call56, ptr %arrayidx58, align 8, !dbg !428, !tbaa !46
  %80 = load ptr, ptr %seed.addr, align 8, !dbg !429, !tbaa !35
  %call59 = call double @xrand(ptr noundef %80), !dbg !430
  %81 = load ptr, ptr %y_i, align 8, !dbg !431, !tbaa !35
  %82 = load i32, ptr %ii, align 4, !dbg !432, !tbaa !231
  %add60 = add nsw i32 %82, 1, !dbg !433
  %idxprom61 = sext i32 %add60 to i64, !dbg !431
  %arrayidx62 = getelementptr inbounds double, ptr %81, i64 %idxprom61, !dbg !431
  store double %call59, ptr %arrayidx62, align 8, !dbg !434, !tbaa !46
  br label %for.inc63, !dbg !435

for.inc63:                                        ; preds = %for.body54
  %83 = load i32, ptr %i, align 4, !dbg !436, !tbaa !231
  %inc64 = add nsw i32 %83, 1, !dbg !436
  store i32 %inc64, ptr %i, align 4, !dbg !436, !tbaa !231
  br label %for.cond52, !dbg !437, !llvm.loop !438

for.end65:                                        ; preds = %for.cond52
  %84 = load i32, ptr %conj.addr, align 4, !dbg !440, !tbaa !237
  %85 = load i32, ptr %n.addr, align 4, !dbg !441, !tbaa !231
  %86 = load ptr, ptr %alpha.addr, align 8, !dbg !442, !tbaa !35
  %87 = load ptr, ptr %y.addr, align 8, !dbg !443, !tbaa !35
  %88 = load ptr, ptr %beta.addr, align 8, !dbg !444, !tbaa !35
  %89 = load ptr, ptr %head_x.addr, align 8, !dbg !445, !tbaa !35
  %90 = load ptr, ptr %tail_x.addr, align 8, !dbg !446, !tbaa !35
  %91 = load ptr, ptr %r.addr, align 8, !dbg !447, !tbaa !35
  %92 = load ptr, ptr %r_true_l.addr, align 8, !dbg !448, !tbaa !35
  %93 = load ptr, ptr %r_true_t.addr, align 8, !dbg !449, !tbaa !35
  call void @z_r_truth2(i32 noundef %84, i32 noundef %85, ptr noundef %86, ptr noundef %87, i32 noundef 1, ptr noundef %88, ptr noundef %89, ptr noundef %90, i32 noundef 1, ptr noundef %91, ptr noundef %92, ptr noundef %93), !dbg !450
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !451

if.end66:                                         ; preds = %land.lhs.true48, %land.lhs.true, %for.end
  %94 = load i32, ptr %beta_flag.addr, align 4, !dbg !452, !tbaa !231
  %cmp67 = icmp eq i32 %94, 1, !dbg !454
  br i1 %cmp67, label %land.lhs.true68, label %if.end377, !dbg !455

land.lhs.true68:                                  ; preds = %if.end66
  %95 = load ptr, ptr %beta_i, align 8, !dbg !456, !tbaa !35
  %arrayidx69 = getelementptr inbounds double, ptr %95, i64 0, !dbg !456
  %96 = load double, ptr %arrayidx69, align 8, !dbg !456, !tbaa !46
  %cmp70 = fcmp oeq double %96, 0.000000e+00, !dbg !457
  br i1 %cmp70, label %land.lhs.true71, label %if.end377, !dbg !458

land.lhs.true71:                                  ; preds = %land.lhs.true68
  %97 = load ptr, ptr %beta_i, align 8, !dbg !459, !tbaa !35
  %arrayidx72 = getelementptr inbounds double, ptr %97, i64 1, !dbg !459
  %98 = load double, ptr %arrayidx72, align 8, !dbg !459, !tbaa !46
  %cmp73 = fcmp oeq double %98, 0.000000e+00, !dbg !460
  br i1 %cmp73, label %if.then74, label %if.end377, !dbg !461

if.then74:                                        ; preds = %land.lhs.true71
  %99 = load i32, ptr %B, align 4, !dbg !462, !tbaa !231
  %cmp75 = icmp eq i32 %99, 0, !dbg !465
  br i1 %cmp75, label %if.then76, label %if.else281, !dbg !466

if.then76:                                        ; preds = %if.then74
  %100 = load i32, ptr %y_free, align 4, !dbg !467, !tbaa !231
  switch i32 %100, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb
    i32 2, label %sw.bb84
  ], !dbg !469

sw.bb:                                            ; preds = %if.then76
  %101 = load ptr, ptr %seed.addr, align 8, !dbg !470, !tbaa !35
  %call77 = call double @xrand(ptr noundef %101), !dbg !472
  %102 = load ptr, ptr %y_i, align 8, !dbg !473, !tbaa !35
  %103 = load i32, ptr %k, align 4, !dbg !474, !tbaa !231
  %idxprom78 = sext i32 %103 to i64, !dbg !473
  %arrayidx79 = getelementptr inbounds double, ptr %102, i64 %idxprom78, !dbg !473
  store double %call77, ptr %arrayidx79, align 8, !dbg !475, !tbaa !46
  %104 = load ptr, ptr %seed.addr, align 8, !dbg !476, !tbaa !35
  %call80 = call double @xrand(ptr noundef %104), !dbg !477
  %105 = load ptr, ptr %y_i, align 8, !dbg !478, !tbaa !35
  %106 = load i32, ptr %k, align 4, !dbg !479, !tbaa !231
  %add81 = add nsw i32 %106, 1, !dbg !480
  %idxprom82 = sext i32 %add81 to i64, !dbg !478
  %arrayidx83 = getelementptr inbounds double, ptr %105, i64 %idxprom82, !dbg !478
  store double %call80, ptr %arrayidx83, align 8, !dbg !481, !tbaa !46
  br label %sw.epilog, !dbg !482

sw.bb84:                                          ; preds = %if.then76
  %107 = load i32, ptr %n_mix.addr, align 4, !dbg !483, !tbaa !231
  %cmp85 = icmp eq i32 %107, 0, !dbg !485
  br i1 %cmp85, label %if.then86, label %if.else, !dbg !486

if.then86:                                        ; preds = %sw.bb84
  %108 = load ptr, ptr %seed.addr, align 8, !dbg !487, !tbaa !35
  %call87 = call double @rand_half_1(i32 noundef 26, ptr noundef %108), !dbg !489
  store double %call87, ptr %a, align 8, !dbg !490, !tbaa !46
  %109 = load double, ptr %a, align 8, !dbg !491, !tbaa !46
  %110 = load ptr, ptr %head_x_i, align 8, !dbg !492, !tbaa !35
  %111 = load i32, ptr %k, align 4, !dbg !493, !tbaa !231
  %idxprom88 = sext i32 %111 to i64, !dbg !492
  %arrayidx89 = getelementptr inbounds double, ptr %110, i64 %idxprom88, !dbg !492
  store double %109, ptr %arrayidx89, align 8, !dbg !494, !tbaa !46
  %112 = load double, ptr %a, align 8, !dbg !495, !tbaa !46
  %113 = load ptr, ptr %head_x_i, align 8, !dbg !496, !tbaa !35
  %114 = load i32, ptr %k, align 4, !dbg !497, !tbaa !231
  %add90 = add nsw i32 %114, 1, !dbg !498
  %idxprom91 = sext i32 %add90 to i64, !dbg !496
  %arrayidx92 = getelementptr inbounds double, ptr %113, i64 %idxprom91, !dbg !496
  store double %112, ptr %arrayidx92, align 8, !dbg !499, !tbaa !46
  %115 = load double, ptr %a, align 8, !dbg !500, !tbaa !46
  %116 = load ptr, ptr %y_i, align 8, !dbg !501, !tbaa !35
  %117 = load i32, ptr %k, align 4, !dbg !502, !tbaa !231
  %idxprom93 = sext i32 %117 to i64, !dbg !501
  %arrayidx94 = getelementptr inbounds double, ptr %116, i64 %idxprom93, !dbg !501
  store double %115, ptr %arrayidx94, align 8, !dbg !503, !tbaa !46
  %118 = load double, ptr %a, align 8, !dbg !504, !tbaa !46
  %119 = load ptr, ptr %y_i, align 8, !dbg !505, !tbaa !35
  %120 = load i32, ptr %k, align 4, !dbg !506, !tbaa !231
  %add95 = add nsw i32 %120, 1, !dbg !507
  %idxprom96 = sext i32 %add95 to i64, !dbg !505
  %arrayidx97 = getelementptr inbounds double, ptr %119, i64 %idxprom96, !dbg !505
  store double %118, ptr %arrayidx97, align 8, !dbg !508, !tbaa !46
  %121 = load double, ptr %a, align 8, !dbg !509, !tbaa !46
  %122 = load double, ptr %eps_out, align 8, !dbg !510, !tbaa !46
  %add98 = fadd double %121, %122, !dbg !511
  %123 = load ptr, ptr %head_x_i, align 8, !dbg !512, !tbaa !35
  %124 = load i32, ptr %k, align 4, !dbg !513, !tbaa !231
  %add99 = add nsw i32 %124, 2, !dbg !514
  %idxprom100 = sext i32 %add99 to i64, !dbg !512
  %arrayidx101 = getelementptr inbounds double, ptr %123, i64 %idxprom100, !dbg !512
  store double %add98, ptr %arrayidx101, align 8, !dbg !515, !tbaa !46
  %125 = load double, ptr %a, align 8, !dbg !516, !tbaa !46
  %126 = load double, ptr %eps_out, align 8, !dbg !517, !tbaa !46
  %add102 = fadd double %125, %126, !dbg !518
  %127 = load ptr, ptr %head_x_i, align 8, !dbg !519, !tbaa !35
  %128 = load i32, ptr %k, align 4, !dbg !520, !tbaa !231
  %add103 = add nsw i32 %128, 3, !dbg !521
  %idxprom104 = sext i32 %add103 to i64, !dbg !519
  %arrayidx105 = getelementptr inbounds double, ptr %127, i64 %idxprom104, !dbg !519
  store double %add102, ptr %arrayidx105, align 8, !dbg !522, !tbaa !46
  %129 = load double, ptr %a, align 8, !dbg !523, !tbaa !46
  %fneg = fneg double %129, !dbg !524
  %130 = load double, ptr %eps_out, align 8, !dbg !525, !tbaa !46
  %add106 = fadd double %fneg, %130, !dbg !526
  %131 = load ptr, ptr %y_i, align 8, !dbg !527, !tbaa !35
  %132 = load i32, ptr %k, align 4, !dbg !528, !tbaa !231
  %add107 = add nsw i32 %132, 2, !dbg !529
  %idxprom108 = sext i32 %add107 to i64, !dbg !527
  %arrayidx109 = getelementptr inbounds double, ptr %131, i64 %idxprom108, !dbg !527
  store double %add106, ptr %arrayidx109, align 8, !dbg !530, !tbaa !46
  %133 = load double, ptr %a, align 8, !dbg !531, !tbaa !46
  %fneg110 = fneg double %133, !dbg !532
  %134 = load double, ptr %eps_out, align 8, !dbg !533, !tbaa !46
  %add111 = fadd double %fneg110, %134, !dbg !534
  %135 = load ptr, ptr %y_i, align 8, !dbg !535, !tbaa !35
  %136 = load i32, ptr %k, align 4, !dbg !536, !tbaa !231
  %add112 = add nsw i32 %136, 3, !dbg !537
  %idxprom113 = sext i32 %add112 to i64, !dbg !535
  %arrayidx114 = getelementptr inbounds double, ptr %135, i64 %idxprom113, !dbg !535
  store double %add111, ptr %arrayidx114, align 8, !dbg !538, !tbaa !46
  %call115 = call double @power(i32 noundef 2, i32 noundef -53), !dbg !539
  store double %call115, ptr %b, align 8, !dbg !540, !tbaa !46
  %137 = load ptr, ptr %y_i, align 8, !dbg !541, !tbaa !35
  %138 = load i32, ptr %k, align 4, !dbg !542, !tbaa !231
  %add116 = add nsw i32 %138, 2, !dbg !543
  %idxprom117 = sext i32 %add116 to i64, !dbg !541
  %arrayidx118 = getelementptr inbounds double, ptr %137, i64 %idxprom117, !dbg !541
  %139 = load double, ptr %arrayidx118, align 8, !dbg !541, !tbaa !46
  %140 = load double, ptr %b, align 8, !dbg !544, !tbaa !46
  %mul119 = fmul double %139, %140, !dbg !545
  %141 = load ptr, ptr %tail_x_i, align 8, !dbg !546, !tbaa !35
  %142 = load i32, ptr %k, align 4, !dbg !547, !tbaa !231
  %idxprom120 = sext i32 %142 to i64, !dbg !546
  %arrayidx121 = getelementptr inbounds double, ptr %141, i64 %idxprom120, !dbg !546
  store double %mul119, ptr %arrayidx121, align 8, !dbg !548, !tbaa !46
  %143 = load ptr, ptr %tail_x_i, align 8, !dbg !549, !tbaa !35
  %144 = load i32, ptr %k, align 4, !dbg !550, !tbaa !231
  %idxprom122 = sext i32 %144 to i64, !dbg !549
  %arrayidx123 = getelementptr inbounds double, ptr %143, i64 %idxprom122, !dbg !549
  %145 = load double, ptr %arrayidx123, align 8, !dbg !549, !tbaa !46
  %146 = load ptr, ptr %tail_x_i, align 8, !dbg !551, !tbaa !35
  %147 = load i32, ptr %k, align 4, !dbg !552, !tbaa !231
  %add124 = add nsw i32 %147, 1, !dbg !553
  %idxprom125 = sext i32 %add124 to i64, !dbg !551
  %arrayidx126 = getelementptr inbounds double, ptr %146, i64 %idxprom125, !dbg !551
  store double %145, ptr %arrayidx126, align 8, !dbg !554, !tbaa !46
  %148 = load ptr, ptr %y_i, align 8, !dbg !555, !tbaa !35
  %149 = load i32, ptr %k, align 4, !dbg !556, !tbaa !231
  %idxprom127 = sext i32 %149 to i64, !dbg !555
  %arrayidx128 = getelementptr inbounds double, ptr %148, i64 %idxprom127, !dbg !555
  %150 = load double, ptr %arrayidx128, align 8, !dbg !555, !tbaa !46
  %fneg129 = fneg double %150, !dbg !557
  %151 = load double, ptr %b, align 8, !dbg !558, !tbaa !46
  %mul130 = fmul double %fneg129, %151, !dbg !559
  %152 = load ptr, ptr %tail_x_i, align 8, !dbg !560, !tbaa !35
  %153 = load i32, ptr %k, align 4, !dbg !561, !tbaa !231
  %add131 = add nsw i32 %153, 2, !dbg !562
  %idxprom132 = sext i32 %add131 to i64, !dbg !560
  %arrayidx133 = getelementptr inbounds double, ptr %152, i64 %idxprom132, !dbg !560
  store double %mul130, ptr %arrayidx133, align 8, !dbg !563, !tbaa !46
  %154 = load ptr, ptr %tail_x_i, align 8, !dbg !564, !tbaa !35
  %155 = load i32, ptr %k, align 4, !dbg !565, !tbaa !231
  %add134 = add nsw i32 %155, 2, !dbg !566
  %idxprom135 = sext i32 %add134 to i64, !dbg !564
  %arrayidx136 = getelementptr inbounds double, ptr %154, i64 %idxprom135, !dbg !564
  %156 = load double, ptr %arrayidx136, align 8, !dbg !564, !tbaa !46
  %157 = load ptr, ptr %tail_x_i, align 8, !dbg !567, !tbaa !35
  %158 = load i32, ptr %k, align 4, !dbg !568, !tbaa !231
  %add137 = add nsw i32 %158, 3, !dbg !569
  %idxprom138 = sext i32 %add137 to i64, !dbg !567
  %arrayidx139 = getelementptr inbounds double, ptr %157, i64 %idxprom138, !dbg !567
  store double %156, ptr %arrayidx139, align 8, !dbg !570, !tbaa !46
  br label %if.end148, !dbg !571

if.else:                                          ; preds = %sw.bb84
  %159 = load ptr, ptr %seed.addr, align 8, !dbg !572, !tbaa !35
  %call140 = call double @xrand(ptr noundef %159), !dbg !574
  %160 = load ptr, ptr %y_i, align 8, !dbg !575, !tbaa !35
  %161 = load i32, ptr %k, align 4, !dbg !576, !tbaa !231
  %idxprom141 = sext i32 %161 to i64, !dbg !575
  %arrayidx142 = getelementptr inbounds double, ptr %160, i64 %idxprom141, !dbg !575
  store double %call140, ptr %arrayidx142, align 8, !dbg !577, !tbaa !46
  %162 = load ptr, ptr %seed.addr, align 8, !dbg !578, !tbaa !35
  %call143 = call double @xrand(ptr noundef %162), !dbg !579
  %163 = load ptr, ptr %y_i, align 8, !dbg !580, !tbaa !35
  %164 = load i32, ptr %k, align 4, !dbg !581, !tbaa !231
  %add144 = add nsw i32 %164, 1, !dbg !582
  %idxprom145 = sext i32 %add144 to i64, !dbg !580
  %arrayidx146 = getelementptr inbounds double, ptr %163, i64 %idxprom145, !dbg !580
  store double %call143, ptr %arrayidx146, align 8, !dbg !583, !tbaa !46
  %165 = load i32, ptr %n_fix2.addr, align 4, !dbg !584, !tbaa !231
  %add147 = add nsw i32 %165, 1, !dbg !585
  %166 = load i32, ptr %n.addr, align 4, !dbg !586, !tbaa !231
  %167 = load i32, ptr %conj.addr, align 4, !dbg !587, !tbaa !237
  %168 = load ptr, ptr %alpha.addr, align 8, !dbg !588, !tbaa !35
  %169 = load ptr, ptr %head_x.addr, align 8, !dbg !589, !tbaa !35
  %170 = load ptr, ptr %tail_x.addr, align 8, !dbg !590, !tbaa !35
  %171 = load ptr, ptr %y.addr, align 8, !dbg !591, !tbaa !35
  call void @gen_y_to_cancel(i32 noundef %add147, i32 noundef %166, i32 noundef %167, ptr noundef %168, ptr noundef %169, ptr noundef %170, ptr noundef %171), !dbg !592
  br label %if.end148

if.end148:                                        ; preds = %if.else, %if.then86
  br label %sw.epilog, !dbg !593

sw.default:                                       ; preds = %if.then76
  %172 = load ptr, ptr %seed.addr, align 8, !dbg !594, !tbaa !35
  %call149 = call double @xrand(ptr noundef %172), !dbg !595
  %173 = load ptr, ptr %y_i, align 8, !dbg !596, !tbaa !35
  %174 = load i32, ptr %k, align 4, !dbg !597, !tbaa !231
  %idxprom150 = sext i32 %174 to i64, !dbg !596
  %arrayidx151 = getelementptr inbounds double, ptr %173, i64 %idxprom150, !dbg !596
  store double %call149, ptr %arrayidx151, align 8, !dbg !598, !tbaa !46
  %175 = load ptr, ptr %seed.addr, align 8, !dbg !599, !tbaa !35
  %call152 = call double @xrand(ptr noundef %175), !dbg !600
  %176 = load ptr, ptr %y_i, align 8, !dbg !601, !tbaa !35
  %177 = load i32, ptr %k, align 4, !dbg !602, !tbaa !231
  %add153 = add nsw i32 %177, 1, !dbg !603
  %idxprom154 = sext i32 %add153 to i64, !dbg !601
  %arrayidx155 = getelementptr inbounds double, ptr %176, i64 %idxprom154, !dbg !601
  store double %call152, ptr %arrayidx155, align 8, !dbg !604, !tbaa !46
  %178 = load ptr, ptr %head_x_i, align 8, !dbg !605, !tbaa !35
  %179 = load i32, ptr %k, align 4, !dbg !606, !tbaa !231
  %idxprom156 = sext i32 %179 to i64, !dbg !605
  %arrayidx157 = getelementptr inbounds double, ptr %178, i64 %idxprom156, !dbg !605
  %180 = load double, ptr %arrayidx157, align 8, !dbg !605, !tbaa !46
  %arrayidx158 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !607
  store double %180, ptr %arrayidx158, align 16, !dbg !608, !tbaa !46
  %181 = load i32, ptr %conj.addr, align 4, !dbg !609, !tbaa !237
  %cmp159 = icmp eq i32 %181, 191, !dbg !611
  br i1 %cmp159, label %if.then160, label %if.else166, !dbg !612

if.then160:                                       ; preds = %sw.default
  %182 = load ptr, ptr %head_x_i, align 8, !dbg !613, !tbaa !35
  %183 = load i32, ptr %k, align 4, !dbg !614, !tbaa !231
  %add161 = add nsw i32 %183, 1, !dbg !615
  %idxprom162 = sext i32 %add161 to i64, !dbg !613
  %arrayidx163 = getelementptr inbounds double, ptr %182, i64 %idxprom162, !dbg !613
  %184 = load double, ptr %arrayidx163, align 8, !dbg !613, !tbaa !46
  %fneg164 = fneg double %184, !dbg !616
  %arrayidx165 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 1, !dbg !617
  store double %fneg164, ptr %arrayidx165, align 8, !dbg !618, !tbaa !46
  br label %if.end171, !dbg !617

if.else166:                                       ; preds = %sw.default
  %185 = load ptr, ptr %head_x_i, align 8, !dbg !619, !tbaa !35
  %186 = load i32, ptr %k, align 4, !dbg !620, !tbaa !231
  %add167 = add nsw i32 %186, 1, !dbg !621
  %idxprom168 = sext i32 %add167 to i64, !dbg !619
  %arrayidx169 = getelementptr inbounds double, ptr %185, i64 %idxprom168, !dbg !619
  %187 = load double, ptr %arrayidx169, align 8, !dbg !619, !tbaa !46
  %arrayidx170 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 1, !dbg !622
  store double %187, ptr %arrayidx170, align 8, !dbg !623, !tbaa !46
  br label %if.end171

if.end171:                                        ; preds = %if.else166, %if.then160
  %arraydecay172 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !624
  %188 = load ptr, ptr %y_i, align 8, !dbg !625, !tbaa !35
  %189 = load i32, ptr %k, align 4, !dbg !626, !tbaa !231
  %idxprom173 = sext i32 %189 to i64, !dbg !625
  %arrayidx174 = getelementptr inbounds double, ptr %188, i64 %idxprom173, !dbg !625
  %arraydecay175 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !627
  call void @z_mul(ptr noundef %arraydecay172, ptr noundef %arrayidx174, ptr noundef %arraydecay175), !dbg !628
  %190 = load ptr, ptr %alpha_i, align 8, !dbg !629, !tbaa !35
  %arraydecay176 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !630
  %arraydecay177 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !631
  call void @z_mul(ptr noundef %190, ptr noundef %arraydecay176, ptr noundef %arraydecay177), !dbg !632
  %191 = load ptr, ptr %tail_x_i, align 8, !dbg !633, !tbaa !35
  %192 = load i32, ptr %k, align 4, !dbg !634, !tbaa !231
  %idxprom178 = sext i32 %192 to i64, !dbg !633
  %arrayidx179 = getelementptr inbounds double, ptr %191, i64 %idxprom178, !dbg !633
  %193 = load double, ptr %arrayidx179, align 8, !dbg !633, !tbaa !46
  %arrayidx180 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 0, !dbg !635
  store double %193, ptr %arrayidx180, align 16, !dbg !636, !tbaa !46
  %194 = load i32, ptr %conj.addr, align 4, !dbg !637, !tbaa !237
  %cmp181 = icmp eq i32 %194, 191, !dbg !639
  br i1 %cmp181, label %if.then182, label %if.else188, !dbg !640

if.then182:                                       ; preds = %if.end171
  %195 = load ptr, ptr %tail_x_i, align 8, !dbg !641, !tbaa !35
  %196 = load i32, ptr %k, align 4, !dbg !642, !tbaa !231
  %add183 = add nsw i32 %196, 1, !dbg !643
  %idxprom184 = sext i32 %add183 to i64, !dbg !641
  %arrayidx185 = getelementptr inbounds double, ptr %195, i64 %idxprom184, !dbg !641
  %197 = load double, ptr %arrayidx185, align 8, !dbg !641, !tbaa !46
  %fneg186 = fneg double %197, !dbg !644
  %arrayidx187 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 1, !dbg !645
  store double %fneg186, ptr %arrayidx187, align 8, !dbg !646, !tbaa !46
  br label %if.end193, !dbg !645

if.else188:                                       ; preds = %if.end171
  %198 = load ptr, ptr %tail_x_i, align 8, !dbg !647, !tbaa !35
  %199 = load i32, ptr %k, align 4, !dbg !648, !tbaa !231
  %add189 = add nsw i32 %199, 1, !dbg !649
  %idxprom190 = sext i32 %add189 to i64, !dbg !647
  %arrayidx191 = getelementptr inbounds double, ptr %198, i64 %idxprom190, !dbg !647
  %200 = load double, ptr %arrayidx191, align 8, !dbg !647, !tbaa !46
  %arrayidx192 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 1, !dbg !650
  store double %200, ptr %arrayidx192, align 8, !dbg !651, !tbaa !46
  br label %if.end193

if.end193:                                        ; preds = %if.else188, %if.then182
  %arraydecay194 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 0, !dbg !652
  %201 = load ptr, ptr %y_i, align 8, !dbg !653, !tbaa !35
  %202 = load i32, ptr %k, align 4, !dbg !654, !tbaa !231
  %idxprom195 = sext i32 %202 to i64, !dbg !653
  %arrayidx196 = getelementptr inbounds double, ptr %201, i64 %idxprom195, !dbg !653
  %arraydecay197 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 0, !dbg !655
  call void @z_mul(ptr noundef %arraydecay194, ptr noundef %arrayidx196, ptr noundef %arraydecay197), !dbg !656
  %203 = load ptr, ptr %alpha_i, align 8, !dbg !657, !tbaa !35
  %arraydecay198 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 0, !dbg !658
  %arraydecay199 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 0, !dbg !659
  call void @z_mul(ptr noundef %203, ptr noundef %arraydecay198, ptr noundef %arraydecay199), !dbg !660
  %arrayidx200 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 0, !dbg !661
  %204 = load double, ptr %arrayidx200, align 16, !dbg !661, !tbaa !46
  %arrayidx201 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !662
  %205 = load double, ptr %arrayidx201, align 16, !dbg !663, !tbaa !46
  %add202 = fadd double %205, %204, !dbg !663
  store double %add202, ptr %arrayidx201, align 16, !dbg !663, !tbaa !46
  %arrayidx203 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 1, !dbg !664
  %206 = load double, ptr %arrayidx203, align 8, !dbg !664, !tbaa !46
  %arrayidx204 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 1, !dbg !665
  %207 = load double, ptr %arrayidx204, align 8, !dbg !666, !tbaa !46
  %add205 = fadd double %207, %206, !dbg !666
  store double %add205, ptr %arrayidx204, align 8, !dbg !666, !tbaa !46
  store i32 40, ptr %s, align 4, !dbg !667, !tbaa !231
  %208 = load i32, ptr %s, align 4, !dbg !668, !tbaa !231
  %sub206 = sub nsw i32 0, %208, !dbg !669
  %call207 = call double @power(i32 noundef 2, i32 noundef %sub206), !dbg !670
  store double %call207, ptr %b, align 8, !dbg !671, !tbaa !46
  %209 = load i32, ptr %n_fix2.addr, align 4, !dbg !672, !tbaa !231
  %add208 = add nsw i32 %209, 1, !dbg !674
  store i32 %add208, ptr %i, align 4, !dbg !675, !tbaa !231
  br label %for.cond209, !dbg !676

for.cond209:                                      ; preds = %for.inc277, %if.end193
  %210 = load i32, ptr %i, align 4, !dbg !677, !tbaa !231
  %211 = load i32, ptr %n.addr, align 4, !dbg !679, !tbaa !231
  %sub210 = sub nsw i32 %211, 2, !dbg !680
  %cmp211 = icmp slt i32 %210, %sub210, !dbg !681
  br i1 %cmp211, label %for.body212, label %for.end279, !dbg !682

for.body212:                                      ; preds = %for.cond209
  %212 = load i32, ptr %i, align 4, !dbg !683, !tbaa !231
  %mul213 = mul nsw i32 2, %212, !dbg !685
  store i32 %mul213, ptr %ii, align 4, !dbg !686, !tbaa !231
  %213 = load double, ptr %b, align 8, !dbg !687, !tbaa !46
  %arrayidx214 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !688
  %214 = load double, ptr %arrayidx214, align 16, !dbg !689, !tbaa !46
  %mul215 = fmul double %214, %213, !dbg !689
  store double %mul215, ptr %arrayidx214, align 16, !dbg !689, !tbaa !46
  %215 = load double, ptr %b, align 8, !dbg !690, !tbaa !46
  %arrayidx216 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 1, !dbg !691
  %216 = load double, ptr %arrayidx216, align 8, !dbg !692, !tbaa !46
  %mul217 = fmul double %216, %215, !dbg !692
  store double %mul217, ptr %arrayidx216, align 8, !dbg !692, !tbaa !46
  %217 = load ptr, ptr %head_x_i, align 8, !dbg !693, !tbaa !35
  %218 = load i32, ptr %ii, align 4, !dbg !694, !tbaa !231
  %idxprom218 = sext i32 %218 to i64, !dbg !693
  %arrayidx219 = getelementptr inbounds double, ptr %217, i64 %idxprom218, !dbg !693
  %219 = load double, ptr %arrayidx219, align 8, !dbg !693, !tbaa !46
  %arrayidx220 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !695
  store double %219, ptr %arrayidx220, align 16, !dbg !696, !tbaa !46
  %220 = load i32, ptr %conj.addr, align 4, !dbg !697, !tbaa !237
  %cmp221 = icmp eq i32 %220, 191, !dbg !699
  br i1 %cmp221, label %if.then222, label %if.else228, !dbg !700

if.then222:                                       ; preds = %for.body212
  %221 = load ptr, ptr %head_x_i, align 8, !dbg !701, !tbaa !35
  %222 = load i32, ptr %ii, align 4, !dbg !702, !tbaa !231
  %add223 = add nsw i32 %222, 1, !dbg !703
  %idxprom224 = sext i32 %add223 to i64, !dbg !701
  %arrayidx225 = getelementptr inbounds double, ptr %221, i64 %idxprom224, !dbg !701
  %223 = load double, ptr %arrayidx225, align 8, !dbg !701, !tbaa !46
  %fneg226 = fneg double %223, !dbg !704
  %arrayidx227 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 1, !dbg !705
  store double %fneg226, ptr %arrayidx227, align 8, !dbg !706, !tbaa !46
  br label %if.end233, !dbg !705

if.else228:                                       ; preds = %for.body212
  %224 = load ptr, ptr %head_x_i, align 8, !dbg !707, !tbaa !35
  %225 = load i32, ptr %ii, align 4, !dbg !708, !tbaa !231
  %add229 = add nsw i32 %225, 1, !dbg !709
  %idxprom230 = sext i32 %add229 to i64, !dbg !707
  %arrayidx231 = getelementptr inbounds double, ptr %224, i64 %idxprom230, !dbg !707
  %226 = load double, ptr %arrayidx231, align 8, !dbg !707, !tbaa !46
  %arrayidx232 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 1, !dbg !710
  store double %226, ptr %arrayidx232, align 8, !dbg !711, !tbaa !46
  br label %if.end233

if.end233:                                        ; preds = %if.else228, %if.then222
  %227 = load ptr, ptr %alpha_i, align 8, !dbg !712, !tbaa !35
  %arraydecay234 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !713
  %arraydecay235 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !714
  call void @z_mul(ptr noundef %227, ptr noundef %arraydecay234, ptr noundef %arraydecay235), !dbg !715
  %228 = load ptr, ptr %tail_x_i, align 8, !dbg !716, !tbaa !35
  %229 = load i32, ptr %ii, align 4, !dbg !717, !tbaa !231
  %idxprom236 = sext i32 %229 to i64, !dbg !716
  %arrayidx237 = getelementptr inbounds double, ptr %228, i64 %idxprom236, !dbg !716
  %230 = load double, ptr %arrayidx237, align 8, !dbg !716, !tbaa !46
  %arrayidx238 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 0, !dbg !718
  store double %230, ptr %arrayidx238, align 16, !dbg !719, !tbaa !46
  %231 = load i32, ptr %conj.addr, align 4, !dbg !720, !tbaa !237
  %cmp239 = icmp eq i32 %231, 191, !dbg !722
  br i1 %cmp239, label %if.then240, label %if.else246, !dbg !723

if.then240:                                       ; preds = %if.end233
  %232 = load ptr, ptr %tail_x_i, align 8, !dbg !724, !tbaa !35
  %233 = load i32, ptr %ii, align 4, !dbg !725, !tbaa !231
  %add241 = add nsw i32 %233, 1, !dbg !726
  %idxprom242 = sext i32 %add241 to i64, !dbg !724
  %arrayidx243 = getelementptr inbounds double, ptr %232, i64 %idxprom242, !dbg !724
  %234 = load double, ptr %arrayidx243, align 8, !dbg !724, !tbaa !46
  %fneg244 = fneg double %234, !dbg !727
  %arrayidx245 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 1, !dbg !728
  store double %fneg244, ptr %arrayidx245, align 8, !dbg !729, !tbaa !46
  br label %if.end251, !dbg !728

if.else246:                                       ; preds = %if.end233
  %235 = load ptr, ptr %tail_x_i, align 8, !dbg !730, !tbaa !35
  %236 = load i32, ptr %ii, align 4, !dbg !731, !tbaa !231
  %add247 = add nsw i32 %236, 1, !dbg !732
  %idxprom248 = sext i32 %add247 to i64, !dbg !730
  %arrayidx249 = getelementptr inbounds double, ptr %235, i64 %idxprom248, !dbg !730
  %237 = load double, ptr %arrayidx249, align 8, !dbg !730, !tbaa !46
  %arrayidx250 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 1, !dbg !733
  store double %237, ptr %arrayidx250, align 8, !dbg !734, !tbaa !46
  br label %if.end251

if.end251:                                        ; preds = %if.else246, %if.then240
  %238 = load ptr, ptr %alpha_i, align 8, !dbg !735, !tbaa !35
  %arraydecay252 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 0, !dbg !736
  %arraydecay253 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 0, !dbg !737
  call void @z_mul(ptr noundef %238, ptr noundef %arraydecay252, ptr noundef %arraydecay253), !dbg !738
  %arrayidx254 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 0, !dbg !739
  %239 = load double, ptr %arrayidx254, align 16, !dbg !739, !tbaa !46
  %arrayidx255 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !740
  %240 = load double, ptr %arrayidx255, align 16, !dbg !741, !tbaa !46
  %add256 = fadd double %240, %239, !dbg !741
  store double %add256, ptr %arrayidx255, align 16, !dbg !741, !tbaa !46
  %arrayidx257 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 1, !dbg !742
  %241 = load double, ptr %arrayidx257, align 8, !dbg !742, !tbaa !46
  %arrayidx258 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 1, !dbg !743
  %242 = load double, ptr %arrayidx258, align 8, !dbg !744, !tbaa !46
  %add259 = fadd double %242, %241, !dbg !744
  store double %add259, ptr %arrayidx258, align 8, !dbg !744, !tbaa !46
  %arrayidx260 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !745
  %243 = load double, ptr %arrayidx260, align 16, !dbg !745, !tbaa !46
  %cmp261 = fcmp oeq double %243, 0.000000e+00, !dbg !747
  br i1 %cmp261, label %land.lhs.true262, label %if.else271, !dbg !748

land.lhs.true262:                                 ; preds = %if.end251
  %arrayidx263 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 1, !dbg !749
  %244 = load double, ptr %arrayidx263, align 8, !dbg !749, !tbaa !46
  %cmp264 = fcmp oeq double %244, 0.000000e+00, !dbg !750
  br i1 %cmp264, label %if.then265, label %if.else271, !dbg !751

if.then265:                                       ; preds = %land.lhs.true262
  %245 = load ptr, ptr %y_i, align 8, !dbg !752, !tbaa !35
  %246 = load i32, ptr %ii, align 4, !dbg !753, !tbaa !231
  %add266 = add nsw i32 %246, 1, !dbg !754
  %idxprom267 = sext i32 %add266 to i64, !dbg !752
  %arrayidx268 = getelementptr inbounds double, ptr %245, i64 %idxprom267, !dbg !752
  store double 0.000000e+00, ptr %arrayidx268, align 8, !dbg !755, !tbaa !46
  %247 = load ptr, ptr %y_i, align 8, !dbg !756, !tbaa !35
  %248 = load i32, ptr %ii, align 4, !dbg !757, !tbaa !231
  %idxprom269 = sext i32 %248 to i64, !dbg !756
  %arrayidx270 = getelementptr inbounds double, ptr %247, i64 %idxprom269, !dbg !756
  store double 0.000000e+00, ptr %arrayidx270, align 8, !dbg !758, !tbaa !46
  br label %if.end276, !dbg !756

if.else271:                                       ; preds = %land.lhs.true262, %if.end251
  %arraydecay272 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !759
  %arraydecay273 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !760
  %249 = load ptr, ptr %y_i, align 8, !dbg !761, !tbaa !35
  %250 = load i32, ptr %ii, align 4, !dbg !762, !tbaa !231
  %idxprom274 = sext i32 %250 to i64, !dbg !761
  %arrayidx275 = getelementptr inbounds double, ptr %249, i64 %idxprom274, !dbg !761
  call void @z_div(ptr noundef %arraydecay272, ptr noundef %arraydecay273, ptr noundef %arrayidx275), !dbg !763
  br label %if.end276

if.end276:                                        ; preds = %if.else271, %if.then265
  br label %for.inc277, !dbg !764

for.inc277:                                       ; preds = %if.end276
  %251 = load i32, ptr %i, align 4, !dbg !765, !tbaa !231
  %inc278 = add nsw i32 %251, 1, !dbg !765
  store i32 %inc278, ptr %i, align 4, !dbg !765, !tbaa !231
  br label %for.cond209, !dbg !766, !llvm.loop !767

for.end279:                                       ; preds = %for.cond209
  %252 = load i32, ptr %n.addr, align 4, !dbg !769, !tbaa !231
  %sub280 = sub nsw i32 %252, 2, !dbg !770
  %253 = load i32, ptr %n.addr, align 4, !dbg !771, !tbaa !231
  %254 = load i32, ptr %conj.addr, align 4, !dbg !772, !tbaa !237
  %255 = load ptr, ptr %alpha.addr, align 8, !dbg !773, !tbaa !35
  %256 = load ptr, ptr %head_x.addr, align 8, !dbg !774, !tbaa !35
  %257 = load ptr, ptr %tail_x.addr, align 8, !dbg !775, !tbaa !35
  %258 = load ptr, ptr %y.addr, align 8, !dbg !776, !tbaa !35
  call void @gen_y_to_cancel(i32 noundef %sub280, i32 noundef %253, i32 noundef %254, ptr noundef %255, ptr noundef %256, ptr noundef %257, ptr noundef %258), !dbg !777
  br label %sw.epilog, !dbg !778

sw.epilog:                                        ; preds = %for.end279, %if.end148, %sw.bb, %if.then76
  br label %if.end375, !dbg !779

if.else281:                                       ; preds = %if.then74
  %259 = load i32, ptr %B, align 4, !dbg !780, !tbaa !231
  %cmp282 = icmp sge i32 %259, 106, !dbg !783
  br i1 %cmp282, label %if.then283, label %if.else284, !dbg !784

if.then283:                                       ; preds = %if.else281
  %260 = load i32, ptr %n_fix2.addr, align 4, !dbg !785, !tbaa !231
  %261 = load i32, ptr %n.addr, align 4, !dbg !787, !tbaa !231
  %262 = load i32, ptr %conj.addr, align 4, !dbg !788, !tbaa !237
  %263 = load ptr, ptr %alpha.addr, align 8, !dbg !789, !tbaa !35
  %264 = load ptr, ptr %head_x.addr, align 8, !dbg !790, !tbaa !35
  %265 = load ptr, ptr %tail_x.addr, align 8, !dbg !791, !tbaa !35
  %266 = load ptr, ptr %y.addr, align 8, !dbg !792, !tbaa !35
  call void @gen_y_to_cancel(i32 noundef %260, i32 noundef %261, i32 noundef %262, ptr noundef %263, ptr noundef %264, ptr noundef %265, ptr noundef %266), !dbg !793
  br label %if.end374, !dbg !794

if.else284:                                       ; preds = %if.else281
  %267 = load i32, ptr %y_free, align 4, !dbg !795, !tbaa !231
  %cmp285 = icmp eq i32 %267, 1, !dbg !798
  br i1 %cmp285, label %if.then286, label %if.else287, !dbg !799

if.then286:                                       ; preds = %if.else284
  %268 = load i32, ptr %n_fix2.addr, align 4, !dbg !800, !tbaa !231
  %269 = load i32, ptr %n.addr, align 4, !dbg !802, !tbaa !231
  %270 = load i32, ptr %conj.addr, align 4, !dbg !803, !tbaa !237
  %271 = load ptr, ptr %alpha.addr, align 8, !dbg !804, !tbaa !35
  %272 = load ptr, ptr %head_x.addr, align 8, !dbg !805, !tbaa !35
  %273 = load ptr, ptr %tail_x.addr, align 8, !dbg !806, !tbaa !35
  %274 = load ptr, ptr %y.addr, align 8, !dbg !807, !tbaa !35
  call void @gen_y_to_cancel(i32 noundef %268, i32 noundef %269, i32 noundef %270, ptr noundef %271, ptr noundef %272, ptr noundef %273, ptr noundef %274), !dbg !808
  br label %if.end373, !dbg !809

if.else287:                                       ; preds = %if.else284
  %275 = load i32, ptr %y_free, align 4, !dbg !810, !tbaa !231
  %conv = sitofp i32 %275 to double, !dbg !810
  %276 = load i32, ptr %B, align 4, !dbg !813, !tbaa !231
  %conv288 = sitofp i32 %276 to double, !dbg !813
  %div = fdiv double %conv288, 5.300000e+01, !dbg !814
  %add289 = fadd double %div, 1.000000e+00, !dbg !815
  %cmp290 = fcmp ogt double %conv, %add289, !dbg !816
  br i1 %cmp290, label %if.then292, label %if.else371, !dbg !817

if.then292:                                       ; preds = %if.else287
  %arrayidx293 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 1, !dbg !818
  store double 0.000000e+00, ptr %arrayidx293, align 8, !dbg !820, !tbaa !46
  %arrayidx294 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !821
  store double 0.000000e+00, ptr %arrayidx294, align 16, !dbg !822, !tbaa !46
  %277 = load i32, ptr %conj.addr, align 4, !dbg !823, !tbaa !237
  %278 = load i32, ptr %n_fix2.addr, align 4, !dbg !824, !tbaa !231
  %279 = load ptr, ptr %alpha.addr, align 8, !dbg !825, !tbaa !35
  %280 = load ptr, ptr %y.addr, align 8, !dbg !826, !tbaa !35
  %arraydecay295 = getelementptr inbounds [2 x double], ptr %zero, i64 0, i64 0, !dbg !827
  %281 = load ptr, ptr %head_x.addr, align 8, !dbg !828, !tbaa !35
  %282 = load ptr, ptr %tail_x.addr, align 8, !dbg !829, !tbaa !35
  %arraydecay296 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !830
  %283 = load ptr, ptr %r_true_l.addr, align 8, !dbg !831, !tbaa !35
  %284 = load ptr, ptr %r_true_t.addr, align 8, !dbg !832, !tbaa !35
  call void @z_r_truth2(i32 noundef %277, i32 noundef %278, ptr noundef %279, ptr noundef %280, i32 noundef 1, ptr noundef %arraydecay295, ptr noundef %281, ptr noundef %282, i32 noundef 1, ptr noundef %arraydecay296, ptr noundef %283, ptr noundef %284), !dbg !833
  %285 = load ptr, ptr %r_true_l.addr, align 8, !dbg !834, !tbaa !35
  %arrayidx297 = getelementptr inbounds double, ptr %285, i64 0, !dbg !834
  %286 = load double, ptr %arrayidx297, align 8, !dbg !834, !tbaa !46
  %arrayidx298 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !835
  store double %286, ptr %arrayidx298, align 16, !dbg !836, !tbaa !46
  %287 = load ptr, ptr %r_true_l.addr, align 8, !dbg !837, !tbaa !35
  %arrayidx299 = getelementptr inbounds double, ptr %287, i64 1, !dbg !837
  %288 = load double, ptr %arrayidx299, align 8, !dbg !837, !tbaa !46
  %arrayidx300 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 1, !dbg !838
  store double %288, ptr %arrayidx300, align 8, !dbg !839, !tbaa !46
  store i32 100, ptr %s, align 4, !dbg !840, !tbaa !231
  %289 = load i32, ptr %s, align 4, !dbg !841, !tbaa !231
  %sub301 = sub nsw i32 0, %289, !dbg !842
  %call302 = call double @power(i32 noundef 2, i32 noundef %sub301), !dbg !843
  store double %call302, ptr %b, align 8, !dbg !844, !tbaa !46
  %290 = load double, ptr %b, align 8, !dbg !845, !tbaa !46
  %arrayidx303 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !846
  %291 = load double, ptr %arrayidx303, align 16, !dbg !847, !tbaa !46
  %mul304 = fmul double %291, %290, !dbg !847
  store double %mul304, ptr %arrayidx303, align 16, !dbg !847, !tbaa !46
  %292 = load double, ptr %b, align 8, !dbg !848, !tbaa !46
  %arrayidx305 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 1, !dbg !849
  %293 = load double, ptr %arrayidx305, align 8, !dbg !850, !tbaa !46
  %mul306 = fmul double %293, %292, !dbg !850
  store double %mul306, ptr %arrayidx305, align 8, !dbg !850, !tbaa !46
  %294 = load ptr, ptr %head_x_i, align 8, !dbg !851, !tbaa !35
  %295 = load i32, ptr %k, align 4, !dbg !852, !tbaa !231
  %idxprom307 = sext i32 %295 to i64, !dbg !851
  %arrayidx308 = getelementptr inbounds double, ptr %294, i64 %idxprom307, !dbg !851
  %296 = load double, ptr %arrayidx308, align 8, !dbg !851, !tbaa !46
  %arrayidx309 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !853
  store double %296, ptr %arrayidx309, align 16, !dbg !854, !tbaa !46
  %297 = load i32, ptr %conj.addr, align 4, !dbg !855, !tbaa !237
  %cmp310 = icmp eq i32 %297, 191, !dbg !857
  br i1 %cmp310, label %if.then312, label %if.else318, !dbg !858

if.then312:                                       ; preds = %if.then292
  %298 = load ptr, ptr %head_x_i, align 8, !dbg !859, !tbaa !35
  %299 = load i32, ptr %k, align 4, !dbg !860, !tbaa !231
  %add313 = add nsw i32 %299, 1, !dbg !861
  %idxprom314 = sext i32 %add313 to i64, !dbg !859
  %arrayidx315 = getelementptr inbounds double, ptr %298, i64 %idxprom314, !dbg !859
  %300 = load double, ptr %arrayidx315, align 8, !dbg !859, !tbaa !46
  %fneg316 = fneg double %300, !dbg !862
  %arrayidx317 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 1, !dbg !863
  store double %fneg316, ptr %arrayidx317, align 8, !dbg !864, !tbaa !46
  br label %if.end323, !dbg !863

if.else318:                                       ; preds = %if.then292
  %301 = load ptr, ptr %head_x_i, align 8, !dbg !865, !tbaa !35
  %302 = load i32, ptr %k, align 4, !dbg !866, !tbaa !231
  %add319 = add nsw i32 %302, 1, !dbg !867
  %idxprom320 = sext i32 %add319 to i64, !dbg !865
  %arrayidx321 = getelementptr inbounds double, ptr %301, i64 %idxprom320, !dbg !865
  %303 = load double, ptr %arrayidx321, align 8, !dbg !865, !tbaa !46
  %arrayidx322 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 1, !dbg !868
  store double %303, ptr %arrayidx322, align 8, !dbg !869, !tbaa !46
  br label %if.end323

if.end323:                                        ; preds = %if.else318, %if.then312
  %304 = load ptr, ptr %alpha_i, align 8, !dbg !870, !tbaa !35
  %arraydecay324 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !871
  %arraydecay325 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !872
  call void @z_mul(ptr noundef %304, ptr noundef %arraydecay324, ptr noundef %arraydecay325), !dbg !873
  %305 = load ptr, ptr %tail_x_i, align 8, !dbg !874, !tbaa !35
  %306 = load i32, ptr %k, align 4, !dbg !875, !tbaa !231
  %idxprom326 = sext i32 %306 to i64, !dbg !874
  %arrayidx327 = getelementptr inbounds double, ptr %305, i64 %idxprom326, !dbg !874
  %307 = load double, ptr %arrayidx327, align 8, !dbg !874, !tbaa !46
  %arrayidx328 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 0, !dbg !876
  store double %307, ptr %arrayidx328, align 16, !dbg !877, !tbaa !46
  %308 = load i32, ptr %conj.addr, align 4, !dbg !878, !tbaa !237
  %cmp329 = icmp eq i32 %308, 191, !dbg !880
  br i1 %cmp329, label %if.then331, label %if.else337, !dbg !881

if.then331:                                       ; preds = %if.end323
  %309 = load ptr, ptr %tail_x_i, align 8, !dbg !882, !tbaa !35
  %310 = load i32, ptr %k, align 4, !dbg !883, !tbaa !231
  %add332 = add nsw i32 %310, 1, !dbg !884
  %idxprom333 = sext i32 %add332 to i64, !dbg !882
  %arrayidx334 = getelementptr inbounds double, ptr %309, i64 %idxprom333, !dbg !882
  %311 = load double, ptr %arrayidx334, align 8, !dbg !882, !tbaa !46
  %fneg335 = fneg double %311, !dbg !885
  %arrayidx336 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 1, !dbg !886
  store double %fneg335, ptr %arrayidx336, align 8, !dbg !887, !tbaa !46
  br label %if.end342, !dbg !886

if.else337:                                       ; preds = %if.end323
  %312 = load ptr, ptr %tail_x_i, align 8, !dbg !888, !tbaa !35
  %313 = load i32, ptr %k, align 4, !dbg !889, !tbaa !231
  %add338 = add nsw i32 %313, 1, !dbg !890
  %idxprom339 = sext i32 %add338 to i64, !dbg !888
  %arrayidx340 = getelementptr inbounds double, ptr %312, i64 %idxprom339, !dbg !888
  %314 = load double, ptr %arrayidx340, align 8, !dbg !888, !tbaa !46
  %arrayidx341 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 1, !dbg !891
  store double %314, ptr %arrayidx341, align 8, !dbg !892, !tbaa !46
  br label %if.end342

if.end342:                                        ; preds = %if.else337, %if.then331
  %315 = load ptr, ptr %alpha_i, align 8, !dbg !893, !tbaa !35
  %arraydecay343 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 0, !dbg !894
  %arraydecay344 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 0, !dbg !895
  call void @z_mul(ptr noundef %315, ptr noundef %arraydecay343, ptr noundef %arraydecay344), !dbg !896
  %arrayidx345 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 0, !dbg !897
  %316 = load double, ptr %arrayidx345, align 16, !dbg !897, !tbaa !46
  %arrayidx346 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !898
  %317 = load double, ptr %arrayidx346, align 16, !dbg !899, !tbaa !46
  %add347 = fadd double %317, %316, !dbg !899
  store double %add347, ptr %arrayidx346, align 16, !dbg !899, !tbaa !46
  %arrayidx348 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 1, !dbg !900
  %318 = load double, ptr %arrayidx348, align 8, !dbg !900, !tbaa !46
  %arrayidx349 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 1, !dbg !901
  %319 = load double, ptr %arrayidx349, align 8, !dbg !902, !tbaa !46
  %add350 = fadd double %319, %318, !dbg !902
  store double %add350, ptr %arrayidx349, align 8, !dbg !902, !tbaa !46
  %arrayidx351 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !903
  %320 = load double, ptr %arrayidx351, align 16, !dbg !903, !tbaa !46
  %cmp352 = fcmp oeq double %320, 0.000000e+00, !dbg !905
  br i1 %cmp352, label %land.lhs.true354, label %if.else364, !dbg !906

land.lhs.true354:                                 ; preds = %if.end342
  %arrayidx355 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 1, !dbg !907
  %321 = load double, ptr %arrayidx355, align 8, !dbg !907, !tbaa !46
  %cmp356 = fcmp oeq double %321, 0.000000e+00, !dbg !908
  br i1 %cmp356, label %if.then358, label %if.else364, !dbg !909

if.then358:                                       ; preds = %land.lhs.true354
  %322 = load ptr, ptr %y_i, align 8, !dbg !910, !tbaa !35
  %323 = load i32, ptr %k, align 4, !dbg !911, !tbaa !231
  %add359 = add nsw i32 %323, 1, !dbg !912
  %idxprom360 = sext i32 %add359 to i64, !dbg !910
  %arrayidx361 = getelementptr inbounds double, ptr %322, i64 %idxprom360, !dbg !910
  store double 0.000000e+00, ptr %arrayidx361, align 8, !dbg !913, !tbaa !46
  %324 = load ptr, ptr %y_i, align 8, !dbg !914, !tbaa !35
  %325 = load i32, ptr %k, align 4, !dbg !915, !tbaa !231
  %idxprom362 = sext i32 %325 to i64, !dbg !914
  %arrayidx363 = getelementptr inbounds double, ptr %324, i64 %idxprom362, !dbg !914
  store double 0.000000e+00, ptr %arrayidx363, align 8, !dbg !916, !tbaa !46
  br label %if.end369, !dbg !914

if.else364:                                       ; preds = %land.lhs.true354, %if.end342
  %arraydecay365 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !917
  %arraydecay366 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !918
  %326 = load ptr, ptr %y_i, align 8, !dbg !919, !tbaa !35
  %327 = load i32, ptr %k, align 4, !dbg !920, !tbaa !231
  %idxprom367 = sext i32 %327 to i64, !dbg !919
  %arrayidx368 = getelementptr inbounds double, ptr %326, i64 %idxprom367, !dbg !919
  call void @z_div(ptr noundef %arraydecay365, ptr noundef %arraydecay366, ptr noundef %arrayidx368), !dbg !921
  br label %if.end369

if.end369:                                        ; preds = %if.else364, %if.then358
  %328 = load i32, ptr %n_fix2.addr, align 4, !dbg !922, !tbaa !231
  %add370 = add nsw i32 %328, 1, !dbg !923
  %329 = load i32, ptr %n.addr, align 4, !dbg !924, !tbaa !231
  %330 = load i32, ptr %conj.addr, align 4, !dbg !925, !tbaa !237
  %331 = load ptr, ptr %alpha.addr, align 8, !dbg !926, !tbaa !35
  %332 = load ptr, ptr %head_x.addr, align 8, !dbg !927, !tbaa !35
  %333 = load ptr, ptr %tail_x.addr, align 8, !dbg !928, !tbaa !35
  %334 = load ptr, ptr %y.addr, align 8, !dbg !929, !tbaa !35
  call void @gen_y_to_cancel(i32 noundef %add370, i32 noundef %329, i32 noundef %330, ptr noundef %331, ptr noundef %332, ptr noundef %333, ptr noundef %334), !dbg !930
  br label %if.end372, !dbg !931

if.else371:                                       ; preds = %if.else287
  %335 = load i32, ptr %n_fix2.addr, align 4, !dbg !932, !tbaa !231
  %336 = load i32, ptr %n.addr, align 4, !dbg !934, !tbaa !231
  %337 = load i32, ptr %conj.addr, align 4, !dbg !935, !tbaa !237
  %338 = load ptr, ptr %alpha.addr, align 8, !dbg !936, !tbaa !35
  %339 = load ptr, ptr %head_x.addr, align 8, !dbg !937, !tbaa !35
  %340 = load ptr, ptr %tail_x.addr, align 8, !dbg !938, !tbaa !35
  %341 = load ptr, ptr %y.addr, align 8, !dbg !939, !tbaa !35
  call void @gen_y_to_cancel(i32 noundef %335, i32 noundef %336, i32 noundef %337, ptr noundef %338, ptr noundef %339, ptr noundef %340, ptr noundef %341), !dbg !940
  br label %if.end372

if.end372:                                        ; preds = %if.else371, %if.end369
  br label %if.end373

if.end373:                                        ; preds = %if.end372, %if.then286
  br label %if.end374

if.end374:                                        ; preds = %if.end373, %if.then283
  br label %if.end375

if.end375:                                        ; preds = %if.end374, %sw.epilog
  %342 = load i32, ptr %conj.addr, align 4, !dbg !941, !tbaa !237
  %343 = load i32, ptr %n.addr, align 4, !dbg !942, !tbaa !231
  %344 = load ptr, ptr %alpha.addr, align 8, !dbg !943, !tbaa !35
  %345 = load ptr, ptr %y.addr, align 8, !dbg !944, !tbaa !35
  %arraydecay376 = getelementptr inbounds [2 x double], ptr %zero, i64 0, i64 0, !dbg !945
  %346 = load ptr, ptr %head_x.addr, align 8, !dbg !946, !tbaa !35
  %347 = load ptr, ptr %tail_x.addr, align 8, !dbg !947, !tbaa !35
  %348 = load ptr, ptr %r.addr, align 8, !dbg !948, !tbaa !35
  %349 = load ptr, ptr %r_true_l.addr, align 8, !dbg !949, !tbaa !35
  %350 = load ptr, ptr %r_true_t.addr, align 8, !dbg !950, !tbaa !35
  call void @z_r_truth2(i32 noundef %342, i32 noundef %343, ptr noundef %344, ptr noundef %345, i32 noundef 1, ptr noundef %arraydecay376, ptr noundef %346, ptr noundef %347, i32 noundef 1, ptr noundef %348, ptr noundef %349, ptr noundef %350), !dbg !951
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !952

if.end377:                                        ; preds = %land.lhs.true71, %land.lhs.true68, %if.end66
  %351 = load i32, ptr %B, align 4, !dbg !953, !tbaa !231
  %cmp378 = icmp eq i32 %351, 0, !dbg !955
  br i1 %cmp378, label %if.then380, label %if.else634, !dbg !956

if.then380:                                       ; preds = %if.end377
  %352 = load i32, ptr %y_free, align 4, !dbg !957, !tbaa !231
  switch i32 %352, label %sw.default493 [
    i32 0, label %sw.epilog633
    i32 1, label %sw.bb381
  ], !dbg !959

sw.bb381:                                         ; preds = %if.then380
  store i32 0, ptr %frees, align 4, !dbg !960, !tbaa !231
  %353 = load i32, ptr %alpha_flag.addr, align 4, !dbg !962, !tbaa !231
  %cmp382 = icmp eq i32 %353, 0, !dbg !964
  br i1 %cmp382, label %if.then384, label %if.end386, !dbg !965

if.then384:                                       ; preds = %sw.bb381
  %354 = load i32, ptr %frees, align 4, !dbg !966, !tbaa !231
  %inc385 = add nsw i32 %354, 1, !dbg !966
  store i32 %inc385, ptr %frees, align 4, !dbg !966, !tbaa !231
  br label %if.end386, !dbg !966

if.end386:                                        ; preds = %if.then384, %sw.bb381
  %355 = load i32, ptr %beta_flag.addr, align 4, !dbg !967, !tbaa !231
  %cmp387 = icmp eq i32 %355, 0, !dbg !969
  br i1 %cmp387, label %if.then389, label %if.end391, !dbg !970

if.then389:                                       ; preds = %if.end386
  %356 = load i32, ptr %frees, align 4, !dbg !971, !tbaa !231
  %inc390 = add nsw i32 %356, 1, !dbg !971
  store i32 %inc390, ptr %frees, align 4, !dbg !971, !tbaa !231
  br label %if.end391, !dbg !971

if.end391:                                        ; preds = %if.then389, %if.end386
  %357 = load i32, ptr %n_mix.addr, align 4, !dbg !972, !tbaa !231
  %cmp392 = icmp eq i32 %357, 0, !dbg !974
  br i1 %cmp392, label %if.then394, label %if.end396, !dbg !975

if.then394:                                       ; preds = %if.end391
  %358 = load i32, ptr %frees, align 4, !dbg !976, !tbaa !231
  %inc395 = add nsw i32 %358, 1, !dbg !976
  store i32 %inc395, ptr %frees, align 4, !dbg !976, !tbaa !231
  br label %if.end396, !dbg !976

if.end396:                                        ; preds = %if.then394, %if.end391
  %359 = load i32, ptr %frees, align 4, !dbg !977, !tbaa !231
  %cmp397 = icmp sge i32 %359, 2, !dbg !979
  br i1 %cmp397, label %land.lhs.true399, label %if.else484, !dbg !980

land.lhs.true399:                                 ; preds = %if.end396
  %360 = load i32, ptr %n_mix.addr, align 4, !dbg !981, !tbaa !231
  %cmp400 = icmp eq i32 %360, 0, !dbg !982
  br i1 %cmp400, label %if.then402, label %if.else484, !dbg !983

if.then402:                                       ; preds = %land.lhs.true399
  %361 = load ptr, ptr %seed.addr, align 8, !dbg !984, !tbaa !35
  %call403 = call double @rand_half_1(i32 noundef 26, ptr noundef %361), !dbg !986
  store double %call403, ptr %a, align 8, !dbg !987, !tbaa !46
  %362 = load double, ptr %a, align 8, !dbg !988, !tbaa !46
  %fneg404 = fneg double %362, !dbg !989
  %363 = load double, ptr %a, align 8, !dbg !990, !tbaa !46
  %mul405 = fmul double %fneg404, %363, !dbg !991
  %364 = load ptr, ptr %r_i, align 8, !dbg !992, !tbaa !35
  %arrayidx406 = getelementptr inbounds double, ptr %364, i64 0, !dbg !992
  store double %mul405, ptr %arrayidx406, align 8, !dbg !993, !tbaa !46
  %365 = load ptr, ptr %r_i, align 8, !dbg !994, !tbaa !35
  %arrayidx407 = getelementptr inbounds double, ptr %365, i64 0, !dbg !994
  %366 = load double, ptr %arrayidx407, align 8, !dbg !994, !tbaa !46
  %367 = load ptr, ptr %r_i, align 8, !dbg !995, !tbaa !35
  %arrayidx408 = getelementptr inbounds double, ptr %367, i64 1, !dbg !995
  store double %366, ptr %arrayidx408, align 8, !dbg !996, !tbaa !46
  %368 = load i32, ptr %alpha_flag.addr, align 4, !dbg !997, !tbaa !231
  %cmp409 = icmp eq i32 %368, 1, !dbg !999
  br i1 %cmp409, label %if.then411, label %if.else416, !dbg !1000

if.then411:                                       ; preds = %if.then402
  %369 = load ptr, ptr %alpha_i, align 8, !dbg !1001, !tbaa !35
  %arrayidx412 = getelementptr inbounds double, ptr %369, i64 0, !dbg !1001
  %370 = load double, ptr %arrayidx412, align 8, !dbg !1001, !tbaa !46
  %371 = load ptr, ptr %beta_i, align 8, !dbg !1003, !tbaa !35
  %arrayidx413 = getelementptr inbounds double, ptr %371, i64 0, !dbg !1003
  store double %370, ptr %arrayidx413, align 8, !dbg !1004, !tbaa !46
  %372 = load ptr, ptr %alpha_i, align 8, !dbg !1005, !tbaa !35
  %arrayidx414 = getelementptr inbounds double, ptr %372, i64 1, !dbg !1005
  %373 = load double, ptr %arrayidx414, align 8, !dbg !1005, !tbaa !46
  %374 = load ptr, ptr %beta_i, align 8, !dbg !1006, !tbaa !35
  %arrayidx415 = getelementptr inbounds double, ptr %374, i64 1, !dbg !1006
  store double %373, ptr %arrayidx415, align 8, !dbg !1007, !tbaa !46
  br label %if.end425, !dbg !1008

if.else416:                                       ; preds = %if.then402
  %375 = load i32, ptr %beta_flag.addr, align 4, !dbg !1009, !tbaa !231
  %cmp417 = icmp eq i32 %375, 1, !dbg !1011
  br i1 %cmp417, label %if.then419, label %if.end424, !dbg !1012

if.then419:                                       ; preds = %if.else416
  %376 = load ptr, ptr %beta_i, align 8, !dbg !1013, !tbaa !35
  %arrayidx420 = getelementptr inbounds double, ptr %376, i64 0, !dbg !1013
  %377 = load double, ptr %arrayidx420, align 8, !dbg !1013, !tbaa !46
  %378 = load ptr, ptr %alpha_i, align 8, !dbg !1015, !tbaa !35
  %arrayidx421 = getelementptr inbounds double, ptr %378, i64 0, !dbg !1015
  store double %377, ptr %arrayidx421, align 8, !dbg !1016, !tbaa !46
  %379 = load ptr, ptr %beta_i, align 8, !dbg !1017, !tbaa !35
  %arrayidx422 = getelementptr inbounds double, ptr %379, i64 1, !dbg !1017
  %380 = load double, ptr %arrayidx422, align 8, !dbg !1017, !tbaa !46
  %381 = load ptr, ptr %alpha_i, align 8, !dbg !1018, !tbaa !35
  %arrayidx423 = getelementptr inbounds double, ptr %381, i64 1, !dbg !1018
  store double %380, ptr %arrayidx423, align 8, !dbg !1019, !tbaa !46
  br label %if.end424, !dbg !1020

if.end424:                                        ; preds = %if.then419, %if.else416
  br label %if.end425

if.end425:                                        ; preds = %if.end424, %if.then411
  %382 = load double, ptr %a, align 8, !dbg !1021, !tbaa !46
  %383 = load ptr, ptr %head_x_i, align 8, !dbg !1022, !tbaa !35
  %384 = load i32, ptr %k, align 4, !dbg !1023, !tbaa !231
  %idxprom426 = sext i32 %384 to i64, !dbg !1022
  %arrayidx427 = getelementptr inbounds double, ptr %383, i64 %idxprom426, !dbg !1022
  store double %382, ptr %arrayidx427, align 8, !dbg !1024, !tbaa !46
  %385 = load double, ptr %a, align 8, !dbg !1025, !tbaa !46
  %386 = load ptr, ptr %head_x_i, align 8, !dbg !1026, !tbaa !35
  %387 = load i32, ptr %k, align 4, !dbg !1027, !tbaa !231
  %add428 = add nsw i32 %387, 1, !dbg !1028
  %idxprom429 = sext i32 %add428 to i64, !dbg !1026
  %arrayidx430 = getelementptr inbounds double, ptr %386, i64 %idxprom429, !dbg !1026
  store double %385, ptr %arrayidx430, align 8, !dbg !1029, !tbaa !46
  %388 = load i32, ptr %conj.addr, align 4, !dbg !1030, !tbaa !237
  %cmp431 = icmp eq i32 %388, 191, !dbg !1032
  br i1 %cmp431, label %if.then433, label %if.end441, !dbg !1033

if.then433:                                       ; preds = %if.end425
  %389 = load ptr, ptr %head_x_i, align 8, !dbg !1034, !tbaa !35
  %390 = load i32, ptr %k, align 4, !dbg !1035, !tbaa !231
  %add434 = add nsw i32 %390, 1, !dbg !1036
  %idxprom435 = sext i32 %add434 to i64, !dbg !1034
  %arrayidx436 = getelementptr inbounds double, ptr %389, i64 %idxprom435, !dbg !1034
  %391 = load double, ptr %arrayidx436, align 8, !dbg !1034, !tbaa !46
  %fneg437 = fneg double %391, !dbg !1037
  %392 = load ptr, ptr %head_x_i, align 8, !dbg !1038, !tbaa !35
  %393 = load i32, ptr %k, align 4, !dbg !1039, !tbaa !231
  %add438 = add nsw i32 %393, 1, !dbg !1040
  %idxprom439 = sext i32 %add438 to i64, !dbg !1038
  %arrayidx440 = getelementptr inbounds double, ptr %392, i64 %idxprom439, !dbg !1038
  store double %fneg437, ptr %arrayidx440, align 8, !dbg !1041, !tbaa !46
  br label %if.end441, !dbg !1038

if.end441:                                        ; preds = %if.then433, %if.end425
  %394 = load double, ptr %a, align 8, !dbg !1042, !tbaa !46
  %395 = load ptr, ptr %y_i, align 8, !dbg !1043, !tbaa !35
  %396 = load i32, ptr %k, align 4, !dbg !1044, !tbaa !231
  %idxprom442 = sext i32 %396 to i64, !dbg !1043
  %arrayidx443 = getelementptr inbounds double, ptr %395, i64 %idxprom442, !dbg !1043
  store double %394, ptr %arrayidx443, align 8, !dbg !1045, !tbaa !46
  %397 = load double, ptr %a, align 8, !dbg !1046, !tbaa !46
  %398 = load ptr, ptr %y_i, align 8, !dbg !1047, !tbaa !35
  %399 = load i32, ptr %k, align 4, !dbg !1048, !tbaa !231
  %add444 = add nsw i32 %399, 1, !dbg !1049
  %idxprom445 = sext i32 %add444 to i64, !dbg !1047
  %arrayidx446 = getelementptr inbounds double, ptr %398, i64 %idxprom445, !dbg !1047
  store double %397, ptr %arrayidx446, align 8, !dbg !1050, !tbaa !46
  %400 = load ptr, ptr %alpha_i, align 8, !dbg !1051, !tbaa !35
  %401 = load ptr, ptr %head_x_i, align 8, !dbg !1052, !tbaa !35
  %402 = load i32, ptr %k, align 4, !dbg !1053, !tbaa !231
  %idxprom447 = sext i32 %402 to i64, !dbg !1052
  %arrayidx448 = getelementptr inbounds double, ptr %401, i64 %idxprom447, !dbg !1052
  %arraydecay449 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !1054
  call void @z_mul(ptr noundef %400, ptr noundef %arrayidx448, ptr noundef %arraydecay449), !dbg !1055
  %arraydecay450 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !1056
  %403 = load ptr, ptr %y_i, align 8, !dbg !1057, !tbaa !35
  %404 = load i32, ptr %k, align 4, !dbg !1058, !tbaa !231
  %idxprom451 = sext i32 %404 to i64, !dbg !1057
  %arrayidx452 = getelementptr inbounds double, ptr %403, i64 %idxprom451, !dbg !1057
  %arraydecay453 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !1059
  call void @z_mul(ptr noundef %arraydecay450, ptr noundef %arrayidx452, ptr noundef %arraydecay453), !dbg !1060
  %405 = load ptr, ptr %alpha_i, align 8, !dbg !1061, !tbaa !35
  %406 = load ptr, ptr %y_i, align 8, !dbg !1062, !tbaa !35
  %407 = load i32, ptr %k, align 4, !dbg !1063, !tbaa !231
  %idxprom454 = sext i32 %407 to i64, !dbg !1062
  %arrayidx455 = getelementptr inbounds double, ptr %406, i64 %idxprom454, !dbg !1062
  %arraydecay456 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !1064
  call void @z_mul(ptr noundef %405, ptr noundef %arrayidx455, ptr noundef %arraydecay456), !dbg !1065
  %call457 = call double @power(i32 noundef 2, i32 noundef -100), !dbg !1066
  %conv458 = fptosi double %call457 to i32, !dbg !1066
  store i32 %conv458, ptr %s, align 4, !dbg !1067, !tbaa !231
  %arrayidx459 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !1068
  %408 = load double, ptr %arrayidx459, align 16, !dbg !1068, !tbaa !46
  %cmp460 = fcmp oeq double %408, 0.000000e+00, !dbg !1070
  br i1 %cmp460, label %land.lhs.true462, label %if.else472, !dbg !1071

land.lhs.true462:                                 ; preds = %if.end441
  %arrayidx463 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 1, !dbg !1072
  %409 = load double, ptr %arrayidx463, align 8, !dbg !1072, !tbaa !46
  %cmp464 = fcmp oeq double %409, 0.000000e+00, !dbg !1073
  br i1 %cmp464, label %if.then466, label %if.else472, !dbg !1074

if.then466:                                       ; preds = %land.lhs.true462
  %410 = load ptr, ptr %tail_x_i, align 8, !dbg !1075, !tbaa !35
  %411 = load i32, ptr %k, align 4, !dbg !1077, !tbaa !231
  %idxprom467 = sext i32 %411 to i64, !dbg !1075
  %arrayidx468 = getelementptr inbounds double, ptr %410, i64 %idxprom467, !dbg !1075
  store double 0.000000e+00, ptr %arrayidx468, align 8, !dbg !1078, !tbaa !46
  %412 = load ptr, ptr %tail_x_i, align 8, !dbg !1079, !tbaa !35
  %413 = load i32, ptr %k, align 4, !dbg !1080, !tbaa !231
  %add469 = add nsw i32 %413, 1, !dbg !1081
  %idxprom470 = sext i32 %add469 to i64, !dbg !1079
  %arrayidx471 = getelementptr inbounds double, ptr %412, i64 %idxprom470, !dbg !1079
  store double 0.000000e+00, ptr %arrayidx471, align 8, !dbg !1082, !tbaa !46
  br label %if.end483, !dbg !1083

if.else472:                                       ; preds = %land.lhs.true462, %if.end441
  %414 = load i32, ptr %s, align 4, !dbg !1084, !tbaa !231
  %conv473 = sitofp i32 %414 to double, !dbg !1084
  %arrayidx474 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !1086
  %415 = load double, ptr %arrayidx474, align 16, !dbg !1087, !tbaa !46
  %mul475 = fmul double %415, %conv473, !dbg !1087
  store double %mul475, ptr %arrayidx474, align 16, !dbg !1087, !tbaa !46
  %416 = load i32, ptr %s, align 4, !dbg !1088, !tbaa !231
  %conv476 = sitofp i32 %416 to double, !dbg !1088
  %arrayidx477 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 1, !dbg !1089
  %417 = load double, ptr %arrayidx477, align 8, !dbg !1090, !tbaa !46
  %mul478 = fmul double %417, %conv476, !dbg !1090
  store double %mul478, ptr %arrayidx477, align 8, !dbg !1090, !tbaa !46
  %arraydecay479 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !1091
  %arraydecay480 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !1092
  %418 = load ptr, ptr %tail_x_i, align 8, !dbg !1093, !tbaa !35
  %419 = load i32, ptr %k, align 4, !dbg !1094, !tbaa !231
  %idxprom481 = sext i32 %419 to i64, !dbg !1093
  %arrayidx482 = getelementptr inbounds double, ptr %418, i64 %idxprom481, !dbg !1093
  call void @z_div(ptr noundef %arraydecay479, ptr noundef %arraydecay480, ptr noundef %arrayidx482), !dbg !1095
  br label %if.end483

if.end483:                                        ; preds = %if.else472, %if.then466
  br label %if.end492, !dbg !1096

if.else484:                                       ; preds = %land.lhs.true399, %if.end396
  %420 = load ptr, ptr %seed.addr, align 8, !dbg !1097, !tbaa !35
  %call485 = call double @xrand(ptr noundef %420), !dbg !1099
  %421 = load ptr, ptr %y_i, align 8, !dbg !1100, !tbaa !35
  %422 = load i32, ptr %k, align 4, !dbg !1101, !tbaa !231
  %idxprom486 = sext i32 %422 to i64, !dbg !1100
  %arrayidx487 = getelementptr inbounds double, ptr %421, i64 %idxprom486, !dbg !1100
  store double %call485, ptr %arrayidx487, align 8, !dbg !1102, !tbaa !46
  %423 = load ptr, ptr %seed.addr, align 8, !dbg !1103, !tbaa !35
  %call488 = call double @xrand(ptr noundef %423), !dbg !1104
  %424 = load ptr, ptr %y_i, align 8, !dbg !1105, !tbaa !35
  %425 = load i32, ptr %k, align 4, !dbg !1106, !tbaa !231
  %add489 = add nsw i32 %425, 1, !dbg !1107
  %idxprom490 = sext i32 %add489 to i64, !dbg !1105
  %arrayidx491 = getelementptr inbounds double, ptr %424, i64 %idxprom490, !dbg !1105
  store double %call488, ptr %arrayidx491, align 8, !dbg !1108, !tbaa !46
  %426 = load i32, ptr %n.addr, align 4, !dbg !1109, !tbaa !231
  %427 = load i32, ptr %conj.addr, align 4, !dbg !1110, !tbaa !237
  %428 = load ptr, ptr %alpha.addr, align 8, !dbg !1111, !tbaa !35
  %429 = load ptr, ptr %beta.addr, align 8, !dbg !1112, !tbaa !35
  %430 = load ptr, ptr %head_x.addr, align 8, !dbg !1113, !tbaa !35
  %431 = load ptr, ptr %tail_x.addr, align 8, !dbg !1114, !tbaa !35
  %432 = load ptr, ptr %y.addr, align 8, !dbg !1115, !tbaa !35
  %433 = load ptr, ptr %r.addr, align 8, !dbg !1116, !tbaa !35
  %434 = load ptr, ptr %seed.addr, align 8, !dbg !1117, !tbaa !35
  call void @gen_r_to_cancel(i32 noundef %426, i32 noundef %427, ptr noundef %428, ptr noundef %429, ptr noundef %430, ptr noundef %431, ptr noundef %432, ptr noundef %433, ptr noundef %434), !dbg !1118
  br label %if.end492

if.end492:                                        ; preds = %if.else484, %if.end483
  br label %sw.epilog633, !dbg !1119

sw.default493:                                    ; preds = %if.then380
  %435 = load ptr, ptr %seed.addr, align 8, !dbg !1120, !tbaa !35
  %call494 = call double @xrand(ptr noundef %435), !dbg !1121
  %436 = load ptr, ptr %y_i, align 8, !dbg !1122, !tbaa !35
  %437 = load i32, ptr %k, align 4, !dbg !1123, !tbaa !231
  %idxprom495 = sext i32 %437 to i64, !dbg !1122
  %arrayidx496 = getelementptr inbounds double, ptr %436, i64 %idxprom495, !dbg !1122
  store double %call494, ptr %arrayidx496, align 8, !dbg !1124, !tbaa !46
  %438 = load ptr, ptr %seed.addr, align 8, !dbg !1125, !tbaa !35
  %call497 = call double @xrand(ptr noundef %438), !dbg !1126
  %439 = load ptr, ptr %y_i, align 8, !dbg !1127, !tbaa !35
  %440 = load i32, ptr %k, align 4, !dbg !1128, !tbaa !231
  %add498 = add nsw i32 %440, 1, !dbg !1129
  %idxprom499 = sext i32 %add498 to i64, !dbg !1127
  %arrayidx500 = getelementptr inbounds double, ptr %439, i64 %idxprom499, !dbg !1127
  store double %call497, ptr %arrayidx500, align 8, !dbg !1130, !tbaa !46
  %441 = load ptr, ptr %head_x_i, align 8, !dbg !1131, !tbaa !35
  %442 = load i32, ptr %k, align 4, !dbg !1132, !tbaa !231
  %idxprom501 = sext i32 %442 to i64, !dbg !1131
  %arrayidx502 = getelementptr inbounds double, ptr %441, i64 %idxprom501, !dbg !1131
  %443 = load double, ptr %arrayidx502, align 8, !dbg !1131, !tbaa !46
  %arrayidx503 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !1133
  store double %443, ptr %arrayidx503, align 16, !dbg !1134, !tbaa !46
  %444 = load i32, ptr %conj.addr, align 4, !dbg !1135, !tbaa !237
  %cmp504 = icmp eq i32 %444, 191, !dbg !1137
  br i1 %cmp504, label %if.then506, label %if.else512, !dbg !1138

if.then506:                                       ; preds = %sw.default493
  %445 = load ptr, ptr %head_x_i, align 8, !dbg !1139, !tbaa !35
  %446 = load i32, ptr %k, align 4, !dbg !1140, !tbaa !231
  %add507 = add nsw i32 %446, 1, !dbg !1141
  %idxprom508 = sext i32 %add507 to i64, !dbg !1139
  %arrayidx509 = getelementptr inbounds double, ptr %445, i64 %idxprom508, !dbg !1139
  %447 = load double, ptr %arrayidx509, align 8, !dbg !1139, !tbaa !46
  %fneg510 = fneg double %447, !dbg !1142
  %arrayidx511 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 1, !dbg !1143
  store double %fneg510, ptr %arrayidx511, align 8, !dbg !1144, !tbaa !46
  br label %if.end517, !dbg !1143

if.else512:                                       ; preds = %sw.default493
  %448 = load ptr, ptr %head_x_i, align 8, !dbg !1145, !tbaa !35
  %449 = load i32, ptr %k, align 4, !dbg !1146, !tbaa !231
  %add513 = add nsw i32 %449, 1, !dbg !1147
  %idxprom514 = sext i32 %add513 to i64, !dbg !1145
  %arrayidx515 = getelementptr inbounds double, ptr %448, i64 %idxprom514, !dbg !1145
  %450 = load double, ptr %arrayidx515, align 8, !dbg !1145, !tbaa !46
  %arrayidx516 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 1, !dbg !1148
  store double %450, ptr %arrayidx516, align 8, !dbg !1149, !tbaa !46
  br label %if.end517

if.end517:                                        ; preds = %if.else512, %if.then506
  %arraydecay518 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !1150
  %451 = load ptr, ptr %y_i, align 8, !dbg !1151, !tbaa !35
  %452 = load i32, ptr %k, align 4, !dbg !1152, !tbaa !231
  %idxprom519 = sext i32 %452 to i64, !dbg !1151
  %arrayidx520 = getelementptr inbounds double, ptr %451, i64 %idxprom519, !dbg !1151
  %arraydecay521 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !1153
  call void @z_mul(ptr noundef %arraydecay518, ptr noundef %arrayidx520, ptr noundef %arraydecay521), !dbg !1154
  %453 = load ptr, ptr %alpha_i, align 8, !dbg !1155, !tbaa !35
  %arraydecay522 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !1156
  %arraydecay523 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !1157
  call void @z_mul(ptr noundef %453, ptr noundef %arraydecay522, ptr noundef %arraydecay523), !dbg !1158
  %454 = load ptr, ptr %tail_x_i, align 8, !dbg !1159, !tbaa !35
  %455 = load i32, ptr %k, align 4, !dbg !1160, !tbaa !231
  %idxprom524 = sext i32 %455 to i64, !dbg !1159
  %arrayidx525 = getelementptr inbounds double, ptr %454, i64 %idxprom524, !dbg !1159
  %456 = load double, ptr %arrayidx525, align 8, !dbg !1159, !tbaa !46
  %arrayidx526 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 0, !dbg !1161
  store double %456, ptr %arrayidx526, align 16, !dbg !1162, !tbaa !46
  %457 = load i32, ptr %conj.addr, align 4, !dbg !1163, !tbaa !237
  %cmp527 = icmp eq i32 %457, 191, !dbg !1165
  br i1 %cmp527, label %if.then529, label %if.else535, !dbg !1166

if.then529:                                       ; preds = %if.end517
  %458 = load ptr, ptr %tail_x_i, align 8, !dbg !1167, !tbaa !35
  %459 = load i32, ptr %k, align 4, !dbg !1168, !tbaa !231
  %add530 = add nsw i32 %459, 1, !dbg !1169
  %idxprom531 = sext i32 %add530 to i64, !dbg !1167
  %arrayidx532 = getelementptr inbounds double, ptr %458, i64 %idxprom531, !dbg !1167
  %460 = load double, ptr %arrayidx532, align 8, !dbg !1167, !tbaa !46
  %fneg533 = fneg double %460, !dbg !1170
  %arrayidx534 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 1, !dbg !1171
  store double %fneg533, ptr %arrayidx534, align 8, !dbg !1172, !tbaa !46
  br label %if.end540, !dbg !1171

if.else535:                                       ; preds = %if.end517
  %461 = load ptr, ptr %tail_x_i, align 8, !dbg !1173, !tbaa !35
  %462 = load i32, ptr %k, align 4, !dbg !1174, !tbaa !231
  %add536 = add nsw i32 %462, 1, !dbg !1175
  %idxprom537 = sext i32 %add536 to i64, !dbg !1173
  %arrayidx538 = getelementptr inbounds double, ptr %461, i64 %idxprom537, !dbg !1173
  %463 = load double, ptr %arrayidx538, align 8, !dbg !1173, !tbaa !46
  %arrayidx539 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 1, !dbg !1176
  store double %463, ptr %arrayidx539, align 8, !dbg !1177, !tbaa !46
  br label %if.end540

if.end540:                                        ; preds = %if.else535, %if.then529
  %arraydecay541 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 0, !dbg !1178
  %464 = load ptr, ptr %y_i, align 8, !dbg !1179, !tbaa !35
  %465 = load i32, ptr %k, align 4, !dbg !1180, !tbaa !231
  %idxprom542 = sext i32 %465 to i64, !dbg !1179
  %arrayidx543 = getelementptr inbounds double, ptr %464, i64 %idxprom542, !dbg !1179
  %arraydecay544 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !1181
  call void @z_mul(ptr noundef %arraydecay541, ptr noundef %arrayidx543, ptr noundef %arraydecay544), !dbg !1182
  %466 = load ptr, ptr %alpha_i, align 8, !dbg !1183, !tbaa !35
  %arraydecay545 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !1184
  %arraydecay546 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 0, !dbg !1185
  call void @z_mul(ptr noundef %466, ptr noundef %arraydecay545, ptr noundef %arraydecay546), !dbg !1186
  %arrayidx547 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 0, !dbg !1187
  %467 = load double, ptr %arrayidx547, align 16, !dbg !1187, !tbaa !46
  %arrayidx548 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !1188
  %468 = load double, ptr %arrayidx548, align 16, !dbg !1189, !tbaa !46
  %add549 = fadd double %468, %467, !dbg !1189
  store double %add549, ptr %arrayidx548, align 16, !dbg !1189, !tbaa !46
  %arrayidx550 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 1, !dbg !1190
  %469 = load double, ptr %arrayidx550, align 8, !dbg !1190, !tbaa !46
  %arrayidx551 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 1, !dbg !1191
  %470 = load double, ptr %arrayidx551, align 8, !dbg !1192, !tbaa !46
  %add552 = fadd double %470, %469, !dbg !1192
  store double %add552, ptr %arrayidx551, align 8, !dbg !1192, !tbaa !46
  store i32 30, ptr %s, align 4, !dbg !1193, !tbaa !231
  %471 = load i32, ptr %s, align 4, !dbg !1194, !tbaa !231
  %sub553 = sub nsw i32 0, %471, !dbg !1195
  %call554 = call double @power(i32 noundef 2, i32 noundef %sub553), !dbg !1196
  store double %call554, ptr %b, align 8, !dbg !1197, !tbaa !46
  %472 = load i32, ptr %n_fix2.addr, align 4, !dbg !1198, !tbaa !231
  %add555 = add nsw i32 %472, 1, !dbg !1200
  store i32 %add555, ptr %i, align 4, !dbg !1201, !tbaa !231
  br label %for.cond556, !dbg !1202

for.cond556:                                      ; preds = %for.inc629, %if.end540
  %473 = load i32, ptr %i, align 4, !dbg !1203, !tbaa !231
  %474 = load i32, ptr %n.addr, align 4, !dbg !1205, !tbaa !231
  %sub557 = sub nsw i32 %474, 1, !dbg !1206
  %cmp558 = icmp slt i32 %473, %sub557, !dbg !1207
  br i1 %cmp558, label %for.body560, label %for.end631, !dbg !1208

for.body560:                                      ; preds = %for.cond556
  %475 = load i32, ptr %i, align 4, !dbg !1209, !tbaa !231
  %mul561 = mul nsw i32 2, %475, !dbg !1211
  store i32 %mul561, ptr %ii, align 4, !dbg !1212, !tbaa !231
  %476 = load double, ptr %b, align 8, !dbg !1213, !tbaa !46
  %arrayidx562 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !1214
  %477 = load double, ptr %arrayidx562, align 16, !dbg !1215, !tbaa !46
  %mul563 = fmul double %477, %476, !dbg !1215
  store double %mul563, ptr %arrayidx562, align 16, !dbg !1215, !tbaa !46
  %478 = load double, ptr %b, align 8, !dbg !1216, !tbaa !46
  %arrayidx564 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 1, !dbg !1217
  %479 = load double, ptr %arrayidx564, align 8, !dbg !1218, !tbaa !46
  %mul565 = fmul double %479, %478, !dbg !1218
  store double %mul565, ptr %arrayidx564, align 8, !dbg !1218, !tbaa !46
  %480 = load ptr, ptr %head_x_i, align 8, !dbg !1219, !tbaa !35
  %481 = load i32, ptr %ii, align 4, !dbg !1220, !tbaa !231
  %idxprom566 = sext i32 %481 to i64, !dbg !1219
  %arrayidx567 = getelementptr inbounds double, ptr %480, i64 %idxprom566, !dbg !1219
  %482 = load double, ptr %arrayidx567, align 8, !dbg !1219, !tbaa !46
  %arrayidx568 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !1221
  store double %482, ptr %arrayidx568, align 16, !dbg !1222, !tbaa !46
  %483 = load i32, ptr %conj.addr, align 4, !dbg !1223, !tbaa !237
  %cmp569 = icmp eq i32 %483, 191, !dbg !1225
  br i1 %cmp569, label %if.then571, label %if.else577, !dbg !1226

if.then571:                                       ; preds = %for.body560
  %484 = load ptr, ptr %head_x_i, align 8, !dbg !1227, !tbaa !35
  %485 = load i32, ptr %ii, align 4, !dbg !1228, !tbaa !231
  %add572 = add nsw i32 %485, 1, !dbg !1229
  %idxprom573 = sext i32 %add572 to i64, !dbg !1227
  %arrayidx574 = getelementptr inbounds double, ptr %484, i64 %idxprom573, !dbg !1227
  %486 = load double, ptr %arrayidx574, align 8, !dbg !1227, !tbaa !46
  %fneg575 = fneg double %486, !dbg !1230
  %arrayidx576 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 1, !dbg !1231
  store double %fneg575, ptr %arrayidx576, align 8, !dbg !1232, !tbaa !46
  br label %if.end582, !dbg !1231

if.else577:                                       ; preds = %for.body560
  %487 = load ptr, ptr %head_x_i, align 8, !dbg !1233, !tbaa !35
  %488 = load i32, ptr %ii, align 4, !dbg !1234, !tbaa !231
  %add578 = add nsw i32 %488, 1, !dbg !1235
  %idxprom579 = sext i32 %add578 to i64, !dbg !1233
  %arrayidx580 = getelementptr inbounds double, ptr %487, i64 %idxprom579, !dbg !1233
  %489 = load double, ptr %arrayidx580, align 8, !dbg !1233, !tbaa !46
  %arrayidx581 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 1, !dbg !1236
  store double %489, ptr %arrayidx581, align 8, !dbg !1237, !tbaa !46
  br label %if.end582

if.end582:                                        ; preds = %if.else577, %if.then571
  %490 = load ptr, ptr %alpha_i, align 8, !dbg !1238, !tbaa !35
  %arraydecay583 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !1239
  %arraydecay584 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !1240
  call void @z_mul(ptr noundef %490, ptr noundef %arraydecay583, ptr noundef %arraydecay584), !dbg !1241
  %491 = load ptr, ptr %tail_x_i, align 8, !dbg !1242, !tbaa !35
  %492 = load i32, ptr %ii, align 4, !dbg !1243, !tbaa !231
  %idxprom585 = sext i32 %492 to i64, !dbg !1242
  %arrayidx586 = getelementptr inbounds double, ptr %491, i64 %idxprom585, !dbg !1242
  %493 = load double, ptr %arrayidx586, align 8, !dbg !1242, !tbaa !46
  %arrayidx587 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 0, !dbg !1244
  store double %493, ptr %arrayidx587, align 16, !dbg !1245, !tbaa !46
  %494 = load i32, ptr %conj.addr, align 4, !dbg !1246, !tbaa !237
  %cmp588 = icmp eq i32 %494, 191, !dbg !1248
  br i1 %cmp588, label %if.then590, label %if.else596, !dbg !1249

if.then590:                                       ; preds = %if.end582
  %495 = load ptr, ptr %tail_x_i, align 8, !dbg !1250, !tbaa !35
  %496 = load i32, ptr %ii, align 4, !dbg !1251, !tbaa !231
  %add591 = add nsw i32 %496, 1, !dbg !1252
  %idxprom592 = sext i32 %add591 to i64, !dbg !1250
  %arrayidx593 = getelementptr inbounds double, ptr %495, i64 %idxprom592, !dbg !1250
  %497 = load double, ptr %arrayidx593, align 8, !dbg !1250, !tbaa !46
  %fneg594 = fneg double %497, !dbg !1253
  %arrayidx595 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 1, !dbg !1254
  store double %fneg594, ptr %arrayidx595, align 8, !dbg !1255, !tbaa !46
  br label %if.end601, !dbg !1254

if.else596:                                       ; preds = %if.end582
  %498 = load ptr, ptr %tail_x_i, align 8, !dbg !1256, !tbaa !35
  %499 = load i32, ptr %ii, align 4, !dbg !1257, !tbaa !231
  %add597 = add nsw i32 %499, 1, !dbg !1258
  %idxprom598 = sext i32 %add597 to i64, !dbg !1256
  %arrayidx599 = getelementptr inbounds double, ptr %498, i64 %idxprom598, !dbg !1256
  %500 = load double, ptr %arrayidx599, align 8, !dbg !1256, !tbaa !46
  %arrayidx600 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 1, !dbg !1259
  store double %500, ptr %arrayidx600, align 8, !dbg !1260, !tbaa !46
  br label %if.end601

if.end601:                                        ; preds = %if.else596, %if.then590
  %501 = load ptr, ptr %alpha_i, align 8, !dbg !1261, !tbaa !35
  %arraydecay602 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 0, !dbg !1262
  %arraydecay603 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 0, !dbg !1263
  call void @z_mul(ptr noundef %501, ptr noundef %arraydecay602, ptr noundef %arraydecay603), !dbg !1264
  %arrayidx604 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 0, !dbg !1265
  %502 = load double, ptr %arrayidx604, align 16, !dbg !1265, !tbaa !46
  %arrayidx605 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !1266
  %503 = load double, ptr %arrayidx605, align 16, !dbg !1267, !tbaa !46
  %add606 = fadd double %503, %502, !dbg !1267
  store double %add606, ptr %arrayidx605, align 16, !dbg !1267, !tbaa !46
  %arrayidx607 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 1, !dbg !1268
  %504 = load double, ptr %arrayidx607, align 8, !dbg !1268, !tbaa !46
  %arrayidx608 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 1, !dbg !1269
  %505 = load double, ptr %arrayidx608, align 8, !dbg !1270, !tbaa !46
  %add609 = fadd double %505, %504, !dbg !1270
  store double %add609, ptr %arrayidx608, align 8, !dbg !1270, !tbaa !46
  %arrayidx610 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !1271
  %506 = load double, ptr %arrayidx610, align 16, !dbg !1271, !tbaa !46
  %cmp611 = fcmp oeq double %506, 0.000000e+00, !dbg !1273
  br i1 %cmp611, label %land.lhs.true613, label %if.else623, !dbg !1274

land.lhs.true613:                                 ; preds = %if.end601
  %arrayidx614 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 1, !dbg !1275
  %507 = load double, ptr %arrayidx614, align 8, !dbg !1275, !tbaa !46
  %cmp615 = fcmp oeq double %507, 0.000000e+00, !dbg !1276
  br i1 %cmp615, label %if.then617, label %if.else623, !dbg !1277

if.then617:                                       ; preds = %land.lhs.true613
  %508 = load ptr, ptr %y_i, align 8, !dbg !1278, !tbaa !35
  %509 = load i32, ptr %ii, align 4, !dbg !1279, !tbaa !231
  %add618 = add nsw i32 %509, 1, !dbg !1280
  %idxprom619 = sext i32 %add618 to i64, !dbg !1278
  %arrayidx620 = getelementptr inbounds double, ptr %508, i64 %idxprom619, !dbg !1278
  store double 0.000000e+00, ptr %arrayidx620, align 8, !dbg !1281, !tbaa !46
  %510 = load ptr, ptr %y_i, align 8, !dbg !1282, !tbaa !35
  %511 = load i32, ptr %ii, align 4, !dbg !1283, !tbaa !231
  %idxprom621 = sext i32 %511 to i64, !dbg !1282
  %arrayidx622 = getelementptr inbounds double, ptr %510, i64 %idxprom621, !dbg !1282
  store double 0.000000e+00, ptr %arrayidx622, align 8, !dbg !1284, !tbaa !46
  br label %if.end628, !dbg !1282

if.else623:                                       ; preds = %land.lhs.true613, %if.end601
  %arraydecay624 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !1285
  %arraydecay625 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !1286
  %512 = load ptr, ptr %y_i, align 8, !dbg !1287, !tbaa !35
  %513 = load i32, ptr %ii, align 4, !dbg !1288, !tbaa !231
  %idxprom626 = sext i32 %513 to i64, !dbg !1287
  %arrayidx627 = getelementptr inbounds double, ptr %512, i64 %idxprom626, !dbg !1287
  call void @z_div(ptr noundef %arraydecay624, ptr noundef %arraydecay625, ptr noundef %arrayidx627), !dbg !1289
  br label %if.end628

if.end628:                                        ; preds = %if.else623, %if.then617
  br label %for.inc629, !dbg !1290

for.inc629:                                       ; preds = %if.end628
  %514 = load i32, ptr %i, align 4, !dbg !1291, !tbaa !231
  %inc630 = add nsw i32 %514, 1, !dbg !1291
  store i32 %inc630, ptr %i, align 4, !dbg !1291, !tbaa !231
  br label %for.cond556, !dbg !1292, !llvm.loop !1293

for.end631:                                       ; preds = %for.cond556
  %515 = load i32, ptr %n.addr, align 4, !dbg !1295, !tbaa !231
  %sub632 = sub nsw i32 %515, 1, !dbg !1296
  %516 = load i32, ptr %n.addr, align 4, !dbg !1297, !tbaa !231
  %517 = load i32, ptr %conj.addr, align 4, !dbg !1298, !tbaa !237
  %518 = load ptr, ptr %alpha.addr, align 8, !dbg !1299, !tbaa !35
  %519 = load ptr, ptr %head_x.addr, align 8, !dbg !1300, !tbaa !35
  %520 = load ptr, ptr %tail_x.addr, align 8, !dbg !1301, !tbaa !35
  %521 = load ptr, ptr %y.addr, align 8, !dbg !1302, !tbaa !35
  call void @gen_y_to_cancel(i32 noundef %sub632, i32 noundef %516, i32 noundef %517, ptr noundef %518, ptr noundef %519, ptr noundef %520, ptr noundef %521), !dbg !1303
  %522 = load i32, ptr %n.addr, align 4, !dbg !1304, !tbaa !231
  %523 = load i32, ptr %conj.addr, align 4, !dbg !1305, !tbaa !237
  %524 = load ptr, ptr %alpha.addr, align 8, !dbg !1306, !tbaa !35
  %525 = load ptr, ptr %beta.addr, align 8, !dbg !1307, !tbaa !35
  %526 = load ptr, ptr %head_x.addr, align 8, !dbg !1308, !tbaa !35
  %527 = load ptr, ptr %tail_x.addr, align 8, !dbg !1309, !tbaa !35
  %528 = load ptr, ptr %y.addr, align 8, !dbg !1310, !tbaa !35
  %529 = load ptr, ptr %r.addr, align 8, !dbg !1311, !tbaa !35
  %530 = load ptr, ptr %seed.addr, align 8, !dbg !1312, !tbaa !35
  call void @gen_r_to_cancel(i32 noundef %522, i32 noundef %523, ptr noundef %524, ptr noundef %525, ptr noundef %526, ptr noundef %527, ptr noundef %528, ptr noundef %529, ptr noundef %530), !dbg !1313
  br label %sw.epilog633, !dbg !1314

sw.epilog633:                                     ; preds = %for.end631, %if.end492, %if.then380
  br label %if.end730, !dbg !1315

if.else634:                                       ; preds = %if.end377
  %531 = load i32, ptr %B, align 4, !dbg !1316, !tbaa !231
  %cmp635 = icmp sge i32 %531, 106, !dbg !1319
  br i1 %cmp635, label %if.then637, label %if.else638, !dbg !1320

if.then637:                                       ; preds = %if.else634
  %532 = load i32, ptr %n_fix2.addr, align 4, !dbg !1321, !tbaa !231
  %533 = load i32, ptr %n.addr, align 4, !dbg !1323, !tbaa !231
  %534 = load i32, ptr %conj.addr, align 4, !dbg !1324, !tbaa !237
  %535 = load ptr, ptr %alpha.addr, align 8, !dbg !1325, !tbaa !35
  %536 = load ptr, ptr %head_x.addr, align 8, !dbg !1326, !tbaa !35
  %537 = load ptr, ptr %tail_x.addr, align 8, !dbg !1327, !tbaa !35
  %538 = load ptr, ptr %y.addr, align 8, !dbg !1328, !tbaa !35
  call void @gen_y_to_cancel(i32 noundef %532, i32 noundef %533, i32 noundef %534, ptr noundef %535, ptr noundef %536, ptr noundef %537, ptr noundef %538), !dbg !1329
  %539 = load i32, ptr %n.addr, align 4, !dbg !1330, !tbaa !231
  %540 = load i32, ptr %conj.addr, align 4, !dbg !1331, !tbaa !237
  %541 = load ptr, ptr %alpha.addr, align 8, !dbg !1332, !tbaa !35
  %542 = load ptr, ptr %beta.addr, align 8, !dbg !1333, !tbaa !35
  %543 = load ptr, ptr %head_x.addr, align 8, !dbg !1334, !tbaa !35
  %544 = load ptr, ptr %tail_x.addr, align 8, !dbg !1335, !tbaa !35
  %545 = load ptr, ptr %y.addr, align 8, !dbg !1336, !tbaa !35
  %546 = load ptr, ptr %r.addr, align 8, !dbg !1337, !tbaa !35
  %547 = load ptr, ptr %seed.addr, align 8, !dbg !1338, !tbaa !35
  call void @gen_r_to_cancel(i32 noundef %539, i32 noundef %540, ptr noundef %541, ptr noundef %542, ptr noundef %543, ptr noundef %544, ptr noundef %545, ptr noundef %546, ptr noundef %547), !dbg !1339
  br label %if.end729, !dbg !1340

if.else638:                                       ; preds = %if.else634
  %548 = load i32, ptr %y_free, align 4, !dbg !1341, !tbaa !231
  %add639 = add nsw i32 %548, 1, !dbg !1343
  store i32 %add639, ptr %frees, align 4, !dbg !1344, !tbaa !231
  %549 = load i32, ptr %frees, align 4, !dbg !1345, !tbaa !231
  %conv640 = sitofp i32 %549 to double, !dbg !1345
  %550 = load i32, ptr %B, align 4, !dbg !1347, !tbaa !231
  %conv641 = sitofp i32 %550 to double, !dbg !1347
  %div642 = fdiv double %conv641, 5.300000e+01, !dbg !1348
  %add643 = fadd double %div642, 1.000000e+00, !dbg !1349
  %cmp644 = fcmp ogt double %conv640, %add643, !dbg !1350
  br i1 %cmp644, label %if.then646, label %if.else727, !dbg !1351

if.then646:                                       ; preds = %if.else638
  %arrayidx647 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 1, !dbg !1352
  store double 0.000000e+00, ptr %arrayidx647, align 8, !dbg !1354, !tbaa !46
  %arrayidx648 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !1355
  store double 0.000000e+00, ptr %arrayidx648, align 16, !dbg !1356, !tbaa !46
  %551 = load i32, ptr %conj.addr, align 4, !dbg !1357, !tbaa !237
  %552 = load i32, ptr %n_fix2.addr, align 4, !dbg !1358, !tbaa !231
  %553 = load ptr, ptr %alpha.addr, align 8, !dbg !1359, !tbaa !35
  %554 = load ptr, ptr %y.addr, align 8, !dbg !1360, !tbaa !35
  %arraydecay649 = getelementptr inbounds [2 x double], ptr %zero, i64 0, i64 0, !dbg !1361
  %555 = load ptr, ptr %head_x.addr, align 8, !dbg !1362, !tbaa !35
  %556 = load ptr, ptr %tail_x.addr, align 8, !dbg !1363, !tbaa !35
  %arraydecay650 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !1364
  %557 = load ptr, ptr %r_true_l.addr, align 8, !dbg !1365, !tbaa !35
  %558 = load ptr, ptr %r_true_t.addr, align 8, !dbg !1366, !tbaa !35
  call void @z_r_truth2(i32 noundef %551, i32 noundef %552, ptr noundef %553, ptr noundef %554, i32 noundef 1, ptr noundef %arraydecay649, ptr noundef %555, ptr noundef %556, i32 noundef 1, ptr noundef %arraydecay650, ptr noundef %557, ptr noundef %558), !dbg !1367
  %559 = load ptr, ptr %r_true_l.addr, align 8, !dbg !1368, !tbaa !35
  %arrayidx651 = getelementptr inbounds double, ptr %559, i64 0, !dbg !1368
  %560 = load double, ptr %arrayidx651, align 8, !dbg !1368, !tbaa !46
  %arrayidx652 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !1369
  store double %560, ptr %arrayidx652, align 16, !dbg !1370, !tbaa !46
  %561 = load ptr, ptr %r_true_l.addr, align 8, !dbg !1371, !tbaa !35
  %arrayidx653 = getelementptr inbounds double, ptr %561, i64 1, !dbg !1371
  %562 = load double, ptr %arrayidx653, align 8, !dbg !1371, !tbaa !46
  %arrayidx654 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 1, !dbg !1372
  store double %562, ptr %arrayidx654, align 8, !dbg !1373, !tbaa !46
  store i32 100, ptr %s, align 4, !dbg !1374, !tbaa !231
  %563 = load i32, ptr %s, align 4, !dbg !1375, !tbaa !231
  %sub655 = sub nsw i32 0, %563, !dbg !1376
  %call656 = call double @power(i32 noundef 2, i32 noundef %sub655), !dbg !1377
  store double %call656, ptr %b, align 8, !dbg !1378, !tbaa !46
  %564 = load double, ptr %b, align 8, !dbg !1379, !tbaa !46
  %arrayidx657 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !1380
  %565 = load double, ptr %arrayidx657, align 16, !dbg !1381, !tbaa !46
  %mul658 = fmul double %565, %564, !dbg !1381
  store double %mul658, ptr %arrayidx657, align 16, !dbg !1381, !tbaa !46
  %566 = load double, ptr %b, align 8, !dbg !1382, !tbaa !46
  %arrayidx659 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 1, !dbg !1383
  %567 = load double, ptr %arrayidx659, align 8, !dbg !1384, !tbaa !46
  %mul660 = fmul double %567, %566, !dbg !1384
  store double %mul660, ptr %arrayidx659, align 8, !dbg !1384, !tbaa !46
  %568 = load ptr, ptr %head_x_i, align 8, !dbg !1385, !tbaa !35
  %569 = load i32, ptr %k, align 4, !dbg !1386, !tbaa !231
  %idxprom661 = sext i32 %569 to i64, !dbg !1385
  %arrayidx662 = getelementptr inbounds double, ptr %568, i64 %idxprom661, !dbg !1385
  %570 = load double, ptr %arrayidx662, align 8, !dbg !1385, !tbaa !46
  %arrayidx663 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !1387
  store double %570, ptr %arrayidx663, align 16, !dbg !1388, !tbaa !46
  %571 = load i32, ptr %conj.addr, align 4, !dbg !1389, !tbaa !237
  %cmp664 = icmp eq i32 %571, 191, !dbg !1391
  br i1 %cmp664, label %if.then666, label %if.else672, !dbg !1392

if.then666:                                       ; preds = %if.then646
  %572 = load ptr, ptr %head_x_i, align 8, !dbg !1393, !tbaa !35
  %573 = load i32, ptr %k, align 4, !dbg !1394, !tbaa !231
  %add667 = add nsw i32 %573, 1, !dbg !1395
  %idxprom668 = sext i32 %add667 to i64, !dbg !1393
  %arrayidx669 = getelementptr inbounds double, ptr %572, i64 %idxprom668, !dbg !1393
  %574 = load double, ptr %arrayidx669, align 8, !dbg !1393, !tbaa !46
  %fneg670 = fneg double %574, !dbg !1396
  %arrayidx671 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 1, !dbg !1397
  store double %fneg670, ptr %arrayidx671, align 8, !dbg !1398, !tbaa !46
  br label %if.end678, !dbg !1397

if.else672:                                       ; preds = %if.then646
  %575 = load ptr, ptr %head_x_i, align 8, !dbg !1399, !tbaa !35
  %576 = load i32, ptr %k, align 4, !dbg !1400, !tbaa !231
  %add673 = add nsw i32 %576, 1, !dbg !1401
  %idxprom674 = sext i32 %add673 to i64, !dbg !1399
  %arrayidx675 = getelementptr inbounds double, ptr %575, i64 %idxprom674, !dbg !1399
  %577 = load double, ptr %arrayidx675, align 8, !dbg !1399, !tbaa !46
  %fneg676 = fneg double %577, !dbg !1402
  %arrayidx677 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 1, !dbg !1403
  store double %fneg676, ptr %arrayidx677, align 8, !dbg !1404, !tbaa !46
  br label %if.end678

if.end678:                                        ; preds = %if.else672, %if.then666
  %578 = load ptr, ptr %alpha_i, align 8, !dbg !1405, !tbaa !35
  %arraydecay679 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !1406
  %arraydecay680 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !1407
  call void @z_mul(ptr noundef %578, ptr noundef %arraydecay679, ptr noundef %arraydecay680), !dbg !1408
  %579 = load ptr, ptr %tail_x_i, align 8, !dbg !1409, !tbaa !35
  %580 = load i32, ptr %k, align 4, !dbg !1410, !tbaa !231
  %idxprom681 = sext i32 %580 to i64, !dbg !1409
  %arrayidx682 = getelementptr inbounds double, ptr %579, i64 %idxprom681, !dbg !1409
  %581 = load double, ptr %arrayidx682, align 8, !dbg !1409, !tbaa !46
  %arrayidx683 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 0, !dbg !1411
  store double %581, ptr %arrayidx683, align 16, !dbg !1412, !tbaa !46
  %582 = load i32, ptr %conj.addr, align 4, !dbg !1413, !tbaa !237
  %cmp684 = icmp eq i32 %582, 191, !dbg !1415
  br i1 %cmp684, label %if.then686, label %if.else692, !dbg !1416

if.then686:                                       ; preds = %if.end678
  %583 = load ptr, ptr %tail_x_i, align 8, !dbg !1417, !tbaa !35
  %584 = load i32, ptr %k, align 4, !dbg !1418, !tbaa !231
  %add687 = add nsw i32 %584, 1, !dbg !1419
  %idxprom688 = sext i32 %add687 to i64, !dbg !1417
  %arrayidx689 = getelementptr inbounds double, ptr %583, i64 %idxprom688, !dbg !1417
  %585 = load double, ptr %arrayidx689, align 8, !dbg !1417, !tbaa !46
  %fneg690 = fneg double %585, !dbg !1420
  %arrayidx691 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 1, !dbg !1421
  store double %fneg690, ptr %arrayidx691, align 8, !dbg !1422, !tbaa !46
  br label %if.end698, !dbg !1421

if.else692:                                       ; preds = %if.end678
  %586 = load ptr, ptr %tail_x_i, align 8, !dbg !1423, !tbaa !35
  %587 = load i32, ptr %k, align 4, !dbg !1424, !tbaa !231
  %add693 = add nsw i32 %587, 1, !dbg !1425
  %idxprom694 = sext i32 %add693 to i64, !dbg !1423
  %arrayidx695 = getelementptr inbounds double, ptr %586, i64 %idxprom694, !dbg !1423
  %588 = load double, ptr %arrayidx695, align 8, !dbg !1423, !tbaa !46
  %fneg696 = fneg double %588, !dbg !1426
  %arrayidx697 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 1, !dbg !1427
  store double %fneg696, ptr %arrayidx697, align 8, !dbg !1428, !tbaa !46
  br label %if.end698

if.end698:                                        ; preds = %if.else692, %if.then686
  %589 = load ptr, ptr %alpha_i, align 8, !dbg !1429, !tbaa !35
  %arraydecay699 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 0, !dbg !1430
  %arraydecay700 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 0, !dbg !1431
  call void @z_mul(ptr noundef %589, ptr noundef %arraydecay699, ptr noundef %arraydecay700), !dbg !1432
  %arrayidx701 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 0, !dbg !1433
  %590 = load double, ptr %arrayidx701, align 16, !dbg !1433, !tbaa !46
  %arrayidx702 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !1434
  %591 = load double, ptr %arrayidx702, align 16, !dbg !1435, !tbaa !46
  %add703 = fadd double %591, %590, !dbg !1435
  store double %add703, ptr %arrayidx702, align 16, !dbg !1435, !tbaa !46
  %arrayidx704 = getelementptr inbounds [2 x double], ptr %rtmp_t, i64 0, i64 1, !dbg !1436
  %592 = load double, ptr %arrayidx704, align 8, !dbg !1436, !tbaa !46
  %arrayidx705 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 1, !dbg !1437
  %593 = load double, ptr %arrayidx705, align 8, !dbg !1438, !tbaa !46
  %add706 = fadd double %593, %592, !dbg !1438
  store double %add706, ptr %arrayidx705, align 8, !dbg !1438, !tbaa !46
  %arrayidx707 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !1439
  %594 = load double, ptr %arrayidx707, align 16, !dbg !1439, !tbaa !46
  %cmp708 = fcmp oeq double %594, 0.000000e+00, !dbg !1441
  br i1 %cmp708, label %land.lhs.true710, label %if.else720, !dbg !1442

land.lhs.true710:                                 ; preds = %if.end698
  %arrayidx711 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 1, !dbg !1443
  %595 = load double, ptr %arrayidx711, align 8, !dbg !1443, !tbaa !46
  %cmp712 = fcmp oeq double %595, 0.000000e+00, !dbg !1444
  br i1 %cmp712, label %if.then714, label %if.else720, !dbg !1445

if.then714:                                       ; preds = %land.lhs.true710
  %596 = load ptr, ptr %y_i, align 8, !dbg !1446, !tbaa !35
  %597 = load i32, ptr %k, align 4, !dbg !1447, !tbaa !231
  %add715 = add nsw i32 %597, 1, !dbg !1448
  %idxprom716 = sext i32 %add715 to i64, !dbg !1446
  %arrayidx717 = getelementptr inbounds double, ptr %596, i64 %idxprom716, !dbg !1446
  store double 0.000000e+00, ptr %arrayidx717, align 8, !dbg !1449, !tbaa !46
  %598 = load ptr, ptr %y_i, align 8, !dbg !1450, !tbaa !35
  %599 = load i32, ptr %k, align 4, !dbg !1451, !tbaa !231
  %idxprom718 = sext i32 %599 to i64, !dbg !1450
  %arrayidx719 = getelementptr inbounds double, ptr %598, i64 %idxprom718, !dbg !1450
  store double 0.000000e+00, ptr %arrayidx719, align 8, !dbg !1452, !tbaa !46
  br label %if.end725, !dbg !1450

if.else720:                                       ; preds = %land.lhs.true710, %if.end698
  %arraydecay721 = getelementptr inbounds [2 x double], ptr %f, i64 0, i64 0, !dbg !1453
  %arraydecay722 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !1454
  %600 = load ptr, ptr %y_i, align 8, !dbg !1455, !tbaa !35
  %601 = load i32, ptr %k, align 4, !dbg !1456, !tbaa !231
  %idxprom723 = sext i32 %601 to i64, !dbg !1455
  %arrayidx724 = getelementptr inbounds double, ptr %600, i64 %idxprom723, !dbg !1455
  call void @z_div(ptr noundef %arraydecay721, ptr noundef %arraydecay722, ptr noundef %arrayidx724), !dbg !1457
  br label %if.end725

if.end725:                                        ; preds = %if.else720, %if.then714
  %602 = load i32, ptr %n_fix2.addr, align 4, !dbg !1458, !tbaa !231
  %add726 = add nsw i32 %602, 1, !dbg !1459
  %603 = load i32, ptr %n.addr, align 4, !dbg !1460, !tbaa !231
  %604 = load i32, ptr %conj.addr, align 4, !dbg !1461, !tbaa !237
  %605 = load ptr, ptr %alpha.addr, align 8, !dbg !1462, !tbaa !35
  %606 = load ptr, ptr %head_x.addr, align 8, !dbg !1463, !tbaa !35
  %607 = load ptr, ptr %tail_x.addr, align 8, !dbg !1464, !tbaa !35
  %608 = load ptr, ptr %y.addr, align 8, !dbg !1465, !tbaa !35
  call void @gen_y_to_cancel(i32 noundef %add726, i32 noundef %603, i32 noundef %604, ptr noundef %605, ptr noundef %606, ptr noundef %607, ptr noundef %608), !dbg !1466
  br label %if.end728, !dbg !1467

if.else727:                                       ; preds = %if.else638
  %609 = load i32, ptr %n_fix2.addr, align 4, !dbg !1468, !tbaa !231
  %610 = load i32, ptr %n.addr, align 4, !dbg !1470, !tbaa !231
  %611 = load i32, ptr %conj.addr, align 4, !dbg !1471, !tbaa !237
  %612 = load ptr, ptr %alpha.addr, align 8, !dbg !1472, !tbaa !35
  %613 = load ptr, ptr %head_x.addr, align 8, !dbg !1473, !tbaa !35
  %614 = load ptr, ptr %tail_x.addr, align 8, !dbg !1474, !tbaa !35
  %615 = load ptr, ptr %y.addr, align 8, !dbg !1475, !tbaa !35
  call void @gen_y_to_cancel(i32 noundef %609, i32 noundef %610, i32 noundef %611, ptr noundef %612, ptr noundef %613, ptr noundef %614, ptr noundef %615), !dbg !1476
  br label %if.end728

if.end728:                                        ; preds = %if.else727, %if.end725
  %616 = load i32, ptr %n.addr, align 4, !dbg !1477, !tbaa !231
  %617 = load i32, ptr %conj.addr, align 4, !dbg !1478, !tbaa !237
  %618 = load ptr, ptr %alpha.addr, align 8, !dbg !1479, !tbaa !35
  %619 = load ptr, ptr %beta.addr, align 8, !dbg !1480, !tbaa !35
  %620 = load ptr, ptr %head_x.addr, align 8, !dbg !1481, !tbaa !35
  %621 = load ptr, ptr %tail_x.addr, align 8, !dbg !1482, !tbaa !35
  %622 = load ptr, ptr %y.addr, align 8, !dbg !1483, !tbaa !35
  %623 = load ptr, ptr %r.addr, align 8, !dbg !1484, !tbaa !35
  %624 = load ptr, ptr %seed.addr, align 8, !dbg !1485, !tbaa !35
  call void @gen_r_to_cancel(i32 noundef %616, i32 noundef %617, ptr noundef %618, ptr noundef %619, ptr noundef %620, ptr noundef %621, ptr noundef %622, ptr noundef %623, ptr noundef %624), !dbg !1486
  br label %if.end729

if.end729:                                        ; preds = %if.end728, %if.then637
  br label %if.end730

if.end730:                                        ; preds = %if.end729, %sw.epilog633
  %625 = load i32, ptr %conj.addr, align 4, !dbg !1487, !tbaa !237
  %626 = load i32, ptr %n.addr, align 4, !dbg !1488, !tbaa !231
  %627 = load ptr, ptr %alpha.addr, align 8, !dbg !1489, !tbaa !35
  %628 = load ptr, ptr %y.addr, align 8, !dbg !1490, !tbaa !35
  %629 = load ptr, ptr %beta.addr, align 8, !dbg !1491, !tbaa !35
  %630 = load ptr, ptr %head_x.addr, align 8, !dbg !1492, !tbaa !35
  %631 = load ptr, ptr %tail_x.addr, align 8, !dbg !1493, !tbaa !35
  %632 = load ptr, ptr %r.addr, align 8, !dbg !1494, !tbaa !35
  %633 = load ptr, ptr %r_true_l.addr, align 8, !dbg !1495, !tbaa !35
  %634 = load ptr, ptr %r_true_t.addr, align 8, !dbg !1496, !tbaa !35
  call void @z_r_truth2(i32 noundef %625, i32 noundef %626, ptr noundef %627, ptr noundef %628, i32 noundef 1, ptr noundef %629, ptr noundef %630, ptr noundef %631, i32 noundef 1, ptr noundef %632, ptr noundef %633, ptr noundef %634), !dbg !1497
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1498
  br label %cleanup, !dbg !1498

cleanup:                                          ; preds = %if.end730, %if.end375, %for.end65
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_i) #5, !dbg !1498
  call void @llvm.lifetime.end.p0(i64 8, ptr %tail_x_i) #5, !dbg !1498
  call void @llvm.lifetime.end.p0(i64 8, ptr %head_x_i) #5, !dbg !1498
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_i) #5, !dbg !1498
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta_i) #5, !dbg !1498
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_i) #5, !dbg !1498
  call void @llvm.lifetime.end.p0(i64 16, ptr %rtmp_t) #5, !dbg !1498
  call void @llvm.lifetime.end.p0(i64 16, ptr %rtmp) #5, !dbg !1498
  call void @llvm.lifetime.end.p0(i64 16, ptr %f) #5, !dbg !1498
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps_out) #5, !dbg !1498
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #5, !dbg !1498
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #5, !dbg !1498
  call void @llvm.lifetime.end.p0(i64 16, ptr %zero) #5, !dbg !1498
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #5, !dbg !1498
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5, !dbg !1498
  call void @llvm.lifetime.end.p0(i64 4, ptr %ii) #5, !dbg !1498
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !1498
  call void @llvm.lifetime.end.p0(i64 4, ptr %y_free) #5, !dbg !1498
  call void @llvm.lifetime.end.p0(i64 4, ptr %frees) #5, !dbg !1498
  call void @llvm.lifetime.end.p0(i64 4, ptr %B) #5, !dbg !1498
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1498

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare !dbg !1499 double @xrand(ptr noundef) #3

declare !dbg !1503 double @power(i32 noundef, i32 noundef) #3

declare !dbg !1506 void @z_r_truth2(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare !dbg !1511 i32 @FixedBits(double noundef, double noundef) #3

; Function Attrs: nounwind uwtable
define internal double @rand_half_1(i32 noundef %l_bits, ptr noundef %seed) #0 !dbg !1514 {
entry:
  %l_bits.addr = alloca i32, align 4
  %seed.addr = alloca ptr, align 8
  %a = alloca double, align 8
  %s = alloca double, align 8
  %t = alloca double, align 8
  store i32 %l_bits, ptr %l_bits.addr, align 4, !tbaa !231
  tail call void @llvm.dbg.declare(metadata ptr %l_bits.addr, metadata !1518, metadata !DIExpression()), !dbg !1525
  store ptr %seed, ptr %seed.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %seed.addr, metadata !1519, metadata !DIExpression()), !dbg !1526
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #5, !dbg !1527
  tail call void @llvm.dbg.declare(metadata ptr %a, metadata !1520, metadata !DIExpression()), !dbg !1528
  %0 = load ptr, ptr %seed.addr, align 8, !dbg !1529, !tbaa !35
  %call = call double @xrand(ptr noundef %0), !dbg !1530
  store double %call, ptr %a, align 8, !dbg !1528, !tbaa !46
  %1 = load double, ptr %a, align 8, !dbg !1531, !tbaa !46
  %div = fdiv double %1, 2.000000e+00, !dbg !1531
  store double %div, ptr %a, align 8, !dbg !1531, !tbaa !46
  %2 = load double, ptr %a, align 8, !dbg !1532, !tbaa !46
  %add = fadd double %2, 5.000000e-01, !dbg !1532
  store double %add, ptr %a, align 8, !dbg !1532, !tbaa !46
  %3 = load i32, ptr %l_bits.addr, align 4, !dbg !1533, !tbaa !231
  %cmp = icmp slt i32 %3, 53, !dbg !1534
  br i1 %cmp, label %if.then, label %if.end, !dbg !1535

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #5, !dbg !1536
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !1521, metadata !DIExpression()), !dbg !1537
  %4 = load i32, ptr %l_bits.addr, align 4, !dbg !1538, !tbaa !231
  %call1 = call double @power(i32 noundef 2, i32 noundef %4), !dbg !1539
  store double %call1, ptr %s, align 8, !dbg !1537, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #5, !dbg !1540
  tail call void @llvm.dbg.declare(metadata ptr %t, metadata !1524, metadata !DIExpression()), !dbg !1541
  %5 = load double, ptr %a, align 8, !dbg !1542, !tbaa !46
  %6 = load double, ptr %s, align 8, !dbg !1543, !tbaa !46
  %div2 = fdiv double %5, %6, !dbg !1544
  store double %div2, ptr %t, align 8, !dbg !1541, !tbaa !46
  %7 = load double, ptr %t, align 8, !dbg !1545, !tbaa !46
  %8 = load double, ptr %a, align 8, !dbg !1546, !tbaa !46
  %add3 = fadd double %7, %8, !dbg !1547
  %9 = load double, ptr %a, align 8, !dbg !1548, !tbaa !46
  %sub = fsub double %add3, %9, !dbg !1549
  store double %sub, ptr %t, align 8, !dbg !1550, !tbaa !46
  %10 = load double, ptr %t, align 8, !dbg !1551, !tbaa !46
  %11 = load double, ptr %s, align 8, !dbg !1552, !tbaa !46
  %mul = fmul double %10, %11, !dbg !1553
  store double %mul, ptr %a, align 8, !dbg !1554, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #5, !dbg !1555
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #5, !dbg !1555
  br label %if.end, !dbg !1556

if.end:                                           ; preds = %if.then, %entry
  %12 = load double, ptr %a, align 8, !dbg !1557, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #5, !dbg !1558
  ret double %12, !dbg !1559
}

; Function Attrs: nounwind uwtable
define internal void @gen_y_to_cancel(i32 noundef %k, i32 noundef %n, i32 noundef %conj, ptr noundef %alpha, ptr noundef %head_x, ptr noundef %tail_x, ptr noundef %y) #0 !dbg !1560 {
entry:
  %k.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %conj.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %head_x.addr = alloca ptr, align 8
  %tail_x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ii = alloca i32, align 4
  %zero = alloca [2 x double], align 16
  %r = alloca [2 x double], align 16
  %tmp = alloca [2 x double], align 16
  %tmp_l = alloca [2 x double], align 16
  %tmp_t = alloca [2 x double], align 16
  %head_x_i = alloca ptr, align 8
  %tail_x_i = alloca ptr, align 8
  %y_i = alloca ptr, align 8
  %r_true_l = alloca [2 x double], align 16
  %r_true_t = alloca [2 x double], align 16
  store i32 %k, ptr %k.addr, align 4, !tbaa !231
  tail call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !1564, metadata !DIExpression()), !dbg !1583
  store i32 %n, ptr %n.addr, align 4, !tbaa !231
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1565, metadata !DIExpression()), !dbg !1584
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !237
  tail call void @llvm.dbg.declare(metadata ptr %conj.addr, metadata !1566, metadata !DIExpression()), !dbg !1585
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !1567, metadata !DIExpression()), !dbg !1586
  store ptr %head_x, ptr %head_x.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %head_x.addr, metadata !1568, metadata !DIExpression()), !dbg !1587
  store ptr %tail_x, ptr %tail_x.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %tail_x.addr, metadata !1569, metadata !DIExpression()), !dbg !1588
  store ptr %y, ptr %y.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !1570, metadata !DIExpression()), !dbg !1589
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !1590
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1571, metadata !DIExpression()), !dbg !1591
  call void @llvm.lifetime.start.p0(i64 4, ptr %ii) #5, !dbg !1590
  tail call void @llvm.dbg.declare(metadata ptr %ii, metadata !1572, metadata !DIExpression()), !dbg !1592
  call void @llvm.lifetime.start.p0(i64 16, ptr %zero) #5, !dbg !1593
  tail call void @llvm.dbg.declare(metadata ptr %zero, metadata !1573, metadata !DIExpression()), !dbg !1594
  call void @llvm.memset.p0.i64(ptr align 16 %zero, i8 0, i64 16, i1 false), !dbg !1594
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #5, !dbg !1595
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !1574, metadata !DIExpression()), !dbg !1596
  call void @llvm.memset.p0.i64(ptr align 16 %r, i8 0, i64 16, i1 false), !dbg !1596
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #5, !dbg !1597
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !1575, metadata !DIExpression()), !dbg !1598
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp_l) #5, !dbg !1597
  tail call void @llvm.dbg.declare(metadata ptr %tmp_l, metadata !1576, metadata !DIExpression()), !dbg !1599
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp_t) #5, !dbg !1597
  tail call void @llvm.dbg.declare(metadata ptr %tmp_t, metadata !1577, metadata !DIExpression()), !dbg !1600
  call void @llvm.lifetime.start.p0(i64 8, ptr %head_x_i) #5, !dbg !1601
  tail call void @llvm.dbg.declare(metadata ptr %head_x_i, metadata !1578, metadata !DIExpression()), !dbg !1602
  %0 = load ptr, ptr %head_x.addr, align 8, !dbg !1603, !tbaa !35
  store ptr %0, ptr %head_x_i, align 8, !dbg !1602, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr %tail_x_i) #5, !dbg !1601
  tail call void @llvm.dbg.declare(metadata ptr %tail_x_i, metadata !1579, metadata !DIExpression()), !dbg !1604
  %1 = load ptr, ptr %tail_x.addr, align 8, !dbg !1605, !tbaa !35
  store ptr %1, ptr %tail_x_i, align 8, !dbg !1604, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_i) #5, !dbg !1601
  tail call void @llvm.dbg.declare(metadata ptr %y_i, metadata !1580, metadata !DIExpression()), !dbg !1606
  %2 = load ptr, ptr %y.addr, align 8, !dbg !1607, !tbaa !35
  store ptr %2, ptr %y_i, align 8, !dbg !1606, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_true_l) #5, !dbg !1608
  tail call void @llvm.dbg.declare(metadata ptr %r_true_l, metadata !1581, metadata !DIExpression()), !dbg !1609
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_true_t) #5, !dbg !1608
  tail call void @llvm.dbg.declare(metadata ptr %r_true_t, metadata !1582, metadata !DIExpression()), !dbg !1610
  %3 = load i32, ptr %k.addr, align 4, !dbg !1611, !tbaa !231
  store i32 %3, ptr %i, align 4, !dbg !1613, !tbaa !231
  br label %for.cond, !dbg !1614

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !dbg !1615, !tbaa !231
  %5 = load i32, ptr %n.addr, align 4, !dbg !1617, !tbaa !231
  %cmp = icmp slt i32 %4, %5, !dbg !1618
  br i1 %cmp, label %for.body, label %for.end, !dbg !1619

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %conj.addr, align 4, !dbg !1620, !tbaa !237
  %7 = load i32, ptr %i, align 4, !dbg !1622, !tbaa !231
  %8 = load ptr, ptr %alpha.addr, align 8, !dbg !1623, !tbaa !35
  %9 = load ptr, ptr %y.addr, align 8, !dbg !1624, !tbaa !35
  %arraydecay = getelementptr inbounds [2 x double], ptr %zero, i64 0, i64 0, !dbg !1625
  %10 = load ptr, ptr %head_x.addr, align 8, !dbg !1626, !tbaa !35
  %11 = load ptr, ptr %tail_x.addr, align 8, !dbg !1627, !tbaa !35
  %arraydecay1 = getelementptr inbounds [2 x double], ptr %r, i64 0, i64 0, !dbg !1628
  %arraydecay2 = getelementptr inbounds [2 x double], ptr %r_true_l, i64 0, i64 0, !dbg !1629
  %arraydecay3 = getelementptr inbounds [2 x double], ptr %r_true_t, i64 0, i64 0, !dbg !1630
  call void @z_r_truth2(i32 noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef 1, ptr noundef %arraydecay, ptr noundef %10, ptr noundef %11, i32 noundef 1, ptr noundef %arraydecay1, ptr noundef %arraydecay2, ptr noundef %arraydecay3), !dbg !1631
  %12 = load i32, ptr %i, align 4, !dbg !1632, !tbaa !231
  %mul = mul nsw i32 2, %12, !dbg !1633
  store i32 %mul, ptr %ii, align 4, !dbg !1634, !tbaa !231
  %13 = load i32, ptr %conj.addr, align 4, !dbg !1635, !tbaa !237
  %cmp4 = icmp eq i32 %13, 191, !dbg !1637
  br i1 %cmp4, label %if.then, label %if.else, !dbg !1638

if.then:                                          ; preds = %for.body
  %14 = load ptr, ptr %head_x_i, align 8, !dbg !1639, !tbaa !35
  %15 = load i32, ptr %ii, align 4, !dbg !1641, !tbaa !231
  %idxprom = sext i32 %15 to i64, !dbg !1639
  %arrayidx = getelementptr inbounds double, ptr %14, i64 %idxprom, !dbg !1639
  %16 = load double, ptr %arrayidx, align 8, !dbg !1639, !tbaa !46
  %arrayidx5 = getelementptr inbounds [2 x double], ptr %tmp_l, i64 0, i64 0, !dbg !1642
  store double %16, ptr %arrayidx5, align 16, !dbg !1643, !tbaa !46
  %17 = load ptr, ptr %head_x_i, align 8, !dbg !1644, !tbaa !35
  %18 = load i32, ptr %ii, align 4, !dbg !1645, !tbaa !231
  %add = add nsw i32 %18, 1, !dbg !1646
  %idxprom6 = sext i32 %add to i64, !dbg !1644
  %arrayidx7 = getelementptr inbounds double, ptr %17, i64 %idxprom6, !dbg !1644
  %19 = load double, ptr %arrayidx7, align 8, !dbg !1644, !tbaa !46
  %fneg = fneg double %19, !dbg !1647
  %arrayidx8 = getelementptr inbounds [2 x double], ptr %tmp_l, i64 0, i64 1, !dbg !1648
  store double %fneg, ptr %arrayidx8, align 8, !dbg !1649, !tbaa !46
  %20 = load ptr, ptr %alpha.addr, align 8, !dbg !1650, !tbaa !35
  %arraydecay9 = getelementptr inbounds [2 x double], ptr %tmp_l, i64 0, i64 0, !dbg !1651
  %arraydecay10 = getelementptr inbounds [2 x double], ptr %tmp_l, i64 0, i64 0, !dbg !1652
  call void @z_mul(ptr noundef %20, ptr noundef %arraydecay9, ptr noundef %arraydecay10), !dbg !1653
  %21 = load ptr, ptr %tail_x_i, align 8, !dbg !1654, !tbaa !35
  %22 = load i32, ptr %ii, align 4, !dbg !1655, !tbaa !231
  %idxprom11 = sext i32 %22 to i64, !dbg !1654
  %arrayidx12 = getelementptr inbounds double, ptr %21, i64 %idxprom11, !dbg !1654
  %23 = load double, ptr %arrayidx12, align 8, !dbg !1654, !tbaa !46
  %arrayidx13 = getelementptr inbounds [2 x double], ptr %tmp_t, i64 0, i64 0, !dbg !1656
  store double %23, ptr %arrayidx13, align 16, !dbg !1657, !tbaa !46
  %24 = load ptr, ptr %tail_x_i, align 8, !dbg !1658, !tbaa !35
  %25 = load i32, ptr %ii, align 4, !dbg !1659, !tbaa !231
  %add14 = add nsw i32 %25, 1, !dbg !1660
  %idxprom15 = sext i32 %add14 to i64, !dbg !1658
  %arrayidx16 = getelementptr inbounds double, ptr %24, i64 %idxprom15, !dbg !1658
  %26 = load double, ptr %arrayidx16, align 8, !dbg !1658, !tbaa !46
  %fneg17 = fneg double %26, !dbg !1661
  %arrayidx18 = getelementptr inbounds [2 x double], ptr %tmp_t, i64 0, i64 1, !dbg !1662
  store double %fneg17, ptr %arrayidx18, align 8, !dbg !1663, !tbaa !46
  %27 = load ptr, ptr %alpha.addr, align 8, !dbg !1664, !tbaa !35
  %arraydecay19 = getelementptr inbounds [2 x double], ptr %tmp_t, i64 0, i64 0, !dbg !1665
  %arraydecay20 = getelementptr inbounds [2 x double], ptr %tmp_t, i64 0, i64 0, !dbg !1666
  call void @z_mul(ptr noundef %27, ptr noundef %arraydecay19, ptr noundef %arraydecay20), !dbg !1667
  br label %if.end, !dbg !1668

if.else:                                          ; preds = %for.body
  %28 = load ptr, ptr %alpha.addr, align 8, !dbg !1669, !tbaa !35
  %29 = load ptr, ptr %head_x_i, align 8, !dbg !1671, !tbaa !35
  %30 = load i32, ptr %ii, align 4, !dbg !1672, !tbaa !231
  %idxprom21 = sext i32 %30 to i64, !dbg !1671
  %arrayidx22 = getelementptr inbounds double, ptr %29, i64 %idxprom21, !dbg !1671
  %arraydecay23 = getelementptr inbounds [2 x double], ptr %tmp_l, i64 0, i64 0, !dbg !1673
  call void @z_mul(ptr noundef %28, ptr noundef %arrayidx22, ptr noundef %arraydecay23), !dbg !1674
  %31 = load ptr, ptr %alpha.addr, align 8, !dbg !1675, !tbaa !35
  %32 = load ptr, ptr %tail_x_i, align 8, !dbg !1676, !tbaa !35
  %33 = load i32, ptr %ii, align 4, !dbg !1677, !tbaa !231
  %idxprom24 = sext i32 %33 to i64, !dbg !1676
  %arrayidx25 = getelementptr inbounds double, ptr %32, i64 %idxprom24, !dbg !1676
  %arraydecay26 = getelementptr inbounds [2 x double], ptr %tmp_t, i64 0, i64 0, !dbg !1678
  call void @z_mul(ptr noundef %31, ptr noundef %arrayidx25, ptr noundef %arraydecay26), !dbg !1679
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx27 = getelementptr inbounds [2 x double], ptr %tmp_l, i64 0, i64 0, !dbg !1680
  %34 = load double, ptr %arrayidx27, align 16, !dbg !1680, !tbaa !46
  %arrayidx28 = getelementptr inbounds [2 x double], ptr %tmp_t, i64 0, i64 0, !dbg !1681
  %35 = load double, ptr %arrayidx28, align 16, !dbg !1681, !tbaa !46
  %add29 = fadd double %34, %35, !dbg !1682
  %arrayidx30 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !1683
  store double %add29, ptr %arrayidx30, align 16, !dbg !1684, !tbaa !46
  %arrayidx31 = getelementptr inbounds [2 x double], ptr %tmp_l, i64 0, i64 1, !dbg !1685
  %36 = load double, ptr %arrayidx31, align 8, !dbg !1685, !tbaa !46
  %arrayidx32 = getelementptr inbounds [2 x double], ptr %tmp_t, i64 0, i64 1, !dbg !1686
  %37 = load double, ptr %arrayidx32, align 8, !dbg !1686, !tbaa !46
  %add33 = fadd double %36, %37, !dbg !1687
  %arrayidx34 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !1688
  store double %add33, ptr %arrayidx34, align 8, !dbg !1689, !tbaa !46
  %arrayidx35 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !1690
  %38 = load double, ptr %arrayidx35, align 16, !dbg !1690, !tbaa !46
  %cmp36 = fcmp oeq double %38, 0.000000e+00, !dbg !1692
  br i1 %cmp36, label %land.lhs.true, label %if.else45, !dbg !1693

land.lhs.true:                                    ; preds = %if.end
  %arrayidx37 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 1, !dbg !1694
  %39 = load double, ptr %arrayidx37, align 8, !dbg !1694, !tbaa !46
  %cmp38 = fcmp oeq double %39, 0.000000e+00, !dbg !1695
  br i1 %cmp38, label %if.then39, label %if.else45, !dbg !1696

if.then39:                                        ; preds = %land.lhs.true
  %40 = load ptr, ptr %y_i, align 8, !dbg !1697, !tbaa !35
  %41 = load i32, ptr %ii, align 4, !dbg !1698, !tbaa !231
  %add40 = add nsw i32 %41, 1, !dbg !1699
  %idxprom41 = sext i32 %add40 to i64, !dbg !1697
  %arrayidx42 = getelementptr inbounds double, ptr %40, i64 %idxprom41, !dbg !1697
  store double 0.000000e+00, ptr %arrayidx42, align 8, !dbg !1700, !tbaa !46
  %42 = load ptr, ptr %y_i, align 8, !dbg !1701, !tbaa !35
  %43 = load i32, ptr %ii, align 4, !dbg !1702, !tbaa !231
  %idxprom43 = sext i32 %43 to i64, !dbg !1701
  %arrayidx44 = getelementptr inbounds double, ptr %42, i64 %idxprom43, !dbg !1701
  store double 0.000000e+00, ptr %arrayidx44, align 8, !dbg !1703, !tbaa !46
  br label %if.end60, !dbg !1701

if.else45:                                        ; preds = %land.lhs.true, %if.end
  %arraydecay46 = getelementptr inbounds [2 x double], ptr %r_true_l, i64 0, i64 0, !dbg !1704
  %arraydecay47 = getelementptr inbounds [2 x double], ptr %r_true_t, i64 0, i64 0, !dbg !1706
  %arraydecay48 = getelementptr inbounds [2 x double], ptr %tmp, i64 0, i64 0, !dbg !1707
  %arraydecay49 = getelementptr inbounds [2 x double], ptr %tmp_l, i64 0, i64 0, !dbg !1708
  %arraydecay50 = getelementptr inbounds [2 x double], ptr %tmp_t, i64 0, i64 0, !dbg !1709
  call void @z_dddivd(ptr noundef %arraydecay46, ptr noundef %arraydecay47, ptr noundef %arraydecay48, ptr noundef %arraydecay49, ptr noundef %arraydecay50), !dbg !1710
  %arrayidx51 = getelementptr inbounds [2 x double], ptr %tmp_l, i64 0, i64 0, !dbg !1711
  %44 = load double, ptr %arrayidx51, align 16, !dbg !1711, !tbaa !46
  %fneg52 = fneg double %44, !dbg !1712
  %45 = load ptr, ptr %y_i, align 8, !dbg !1713, !tbaa !35
  %46 = load i32, ptr %ii, align 4, !dbg !1714, !tbaa !231
  %idxprom53 = sext i32 %46 to i64, !dbg !1713
  %arrayidx54 = getelementptr inbounds double, ptr %45, i64 %idxprom53, !dbg !1713
  store double %fneg52, ptr %arrayidx54, align 8, !dbg !1715, !tbaa !46
  %arrayidx55 = getelementptr inbounds [2 x double], ptr %tmp_l, i64 0, i64 1, !dbg !1716
  %47 = load double, ptr %arrayidx55, align 8, !dbg !1716, !tbaa !46
  %fneg56 = fneg double %47, !dbg !1717
  %48 = load ptr, ptr %y_i, align 8, !dbg !1718, !tbaa !35
  %49 = load i32, ptr %ii, align 4, !dbg !1719, !tbaa !231
  %add57 = add nsw i32 %49, 1, !dbg !1720
  %idxprom58 = sext i32 %add57 to i64, !dbg !1718
  %arrayidx59 = getelementptr inbounds double, ptr %48, i64 %idxprom58, !dbg !1718
  store double %fneg56, ptr %arrayidx59, align 8, !dbg !1721, !tbaa !46
  br label %if.end60

if.end60:                                         ; preds = %if.else45, %if.then39
  br label %for.inc, !dbg !1722

for.inc:                                          ; preds = %if.end60
  %50 = load i32, ptr %i, align 4, !dbg !1723, !tbaa !231
  %inc = add nsw i32 %50, 1, !dbg !1723
  store i32 %inc, ptr %i, align 4, !dbg !1723, !tbaa !231
  br label %for.cond, !dbg !1724, !llvm.loop !1725

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_true_t) #5, !dbg !1727
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_true_l) #5, !dbg !1727
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_i) #5, !dbg !1727
  call void @llvm.lifetime.end.p0(i64 8, ptr %tail_x_i) #5, !dbg !1727
  call void @llvm.lifetime.end.p0(i64 8, ptr %head_x_i) #5, !dbg !1727
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp_t) #5, !dbg !1727
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp_l) #5, !dbg !1727
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #5, !dbg !1727
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #5, !dbg !1727
  call void @llvm.lifetime.end.p0(i64 16, ptr %zero) #5, !dbg !1727
  call void @llvm.lifetime.end.p0(i64 4, ptr %ii) #5, !dbg !1727
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !1727
  ret void, !dbg !1727
}

; Function Attrs: nounwind uwtable
define internal void @gen_r_to_cancel(i32 noundef %n, i32 noundef %conj, ptr noundef %alpha, ptr noundef %beta, ptr noundef %head_x, ptr noundef %tail_x, ptr noundef %y, ptr noundef %r, ptr noundef %seed) #0 !dbg !1728 {
entry:
  %n.addr = alloca i32, align 4
  %conj.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %head_x.addr = alloca ptr, align 8
  %tail_x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %seed.addr = alloca ptr, align 8
  %zero = alloca [2 x double], align 16
  %rtmp = alloca [2 x double], align 16
  %beta_i = alloca ptr, align 8
  %r_i = alloca ptr, align 8
  %r_true_l = alloca [2 x double], align 16
  %r_true_t = alloca [2 x double], align 16
  store i32 %n, ptr %n.addr, align 4, !tbaa !231
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1732, metadata !DIExpression()), !dbg !1747
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !237
  tail call void @llvm.dbg.declare(metadata ptr %conj.addr, metadata !1733, metadata !DIExpression()), !dbg !1748
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !1734, metadata !DIExpression()), !dbg !1749
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %beta.addr, metadata !1735, metadata !DIExpression()), !dbg !1750
  store ptr %head_x, ptr %head_x.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %head_x.addr, metadata !1736, metadata !DIExpression()), !dbg !1751
  store ptr %tail_x, ptr %tail_x.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %tail_x.addr, metadata !1737, metadata !DIExpression()), !dbg !1752
  store ptr %y, ptr %y.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !1738, metadata !DIExpression()), !dbg !1753
  store ptr %r, ptr %r.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1739, metadata !DIExpression()), !dbg !1754
  store ptr %seed, ptr %seed.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %seed.addr, metadata !1740, metadata !DIExpression()), !dbg !1755
  call void @llvm.lifetime.start.p0(i64 16, ptr %zero) #5, !dbg !1756
  tail call void @llvm.dbg.declare(metadata ptr %zero, metadata !1741, metadata !DIExpression()), !dbg !1757
  call void @llvm.memset.p0.i64(ptr align 16 %zero, i8 0, i64 16, i1 false), !dbg !1757
  call void @llvm.lifetime.start.p0(i64 16, ptr %rtmp) #5, !dbg !1758
  tail call void @llvm.dbg.declare(metadata ptr %rtmp, metadata !1742, metadata !DIExpression()), !dbg !1759
  call void @llvm.memset.p0.i64(ptr align 16 %rtmp, i8 0, i64 16, i1 false), !dbg !1759
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta_i) #5, !dbg !1760
  tail call void @llvm.dbg.declare(metadata ptr %beta_i, metadata !1743, metadata !DIExpression()), !dbg !1761
  %0 = load ptr, ptr %beta.addr, align 8, !dbg !1762, !tbaa !35
  store ptr %0, ptr %beta_i, align 8, !dbg !1761, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_i) #5, !dbg !1763
  tail call void @llvm.dbg.declare(metadata ptr %r_i, metadata !1744, metadata !DIExpression()), !dbg !1764
  %1 = load ptr, ptr %r.addr, align 8, !dbg !1765, !tbaa !35
  store ptr %1, ptr %r_i, align 8, !dbg !1764, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_true_l) #5, !dbg !1766
  tail call void @llvm.dbg.declare(metadata ptr %r_true_l, metadata !1745, metadata !DIExpression()), !dbg !1767
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_true_t) #5, !dbg !1766
  tail call void @llvm.dbg.declare(metadata ptr %r_true_t, metadata !1746, metadata !DIExpression()), !dbg !1768
  %2 = load ptr, ptr %beta_i, align 8, !dbg !1769, !tbaa !35
  %arrayidx = getelementptr inbounds double, ptr %2, i64 0, !dbg !1769
  %3 = load double, ptr %arrayidx, align 8, !dbg !1769, !tbaa !46
  %cmp = fcmp oeq double %3, 0.000000e+00, !dbg !1771
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !1772

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %beta_i, align 8, !dbg !1773, !tbaa !35
  %arrayidx1 = getelementptr inbounds double, ptr %4, i64 1, !dbg !1773
  %5 = load double, ptr %arrayidx1, align 8, !dbg !1773, !tbaa !46
  %cmp2 = fcmp oeq double %5, 0.000000e+00, !dbg !1774
  br i1 %cmp2, label %if.then, label %if.else, !dbg !1775

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %seed.addr, align 8, !dbg !1776, !tbaa !35
  %call = call double @xrand(ptr noundef %6), !dbg !1778
  %7 = load ptr, ptr %r_i, align 8, !dbg !1779, !tbaa !35
  %arrayidx3 = getelementptr inbounds double, ptr %7, i64 0, !dbg !1779
  store double %call, ptr %arrayidx3, align 8, !dbg !1780, !tbaa !46
  %8 = load ptr, ptr %seed.addr, align 8, !dbg !1781, !tbaa !35
  %call4 = call double @xrand(ptr noundef %8), !dbg !1782
  %9 = load ptr, ptr %r_i, align 8, !dbg !1783, !tbaa !35
  %arrayidx5 = getelementptr inbounds double, ptr %9, i64 1, !dbg !1783
  store double %call4, ptr %arrayidx5, align 8, !dbg !1784, !tbaa !46
  br label %if.end, !dbg !1785

if.else:                                          ; preds = %land.lhs.true, %entry
  %10 = load i32, ptr %conj.addr, align 4, !dbg !1786, !tbaa !237
  %11 = load i32, ptr %n.addr, align 4, !dbg !1788, !tbaa !231
  %12 = load ptr, ptr %alpha.addr, align 8, !dbg !1789, !tbaa !35
  %13 = load ptr, ptr %y.addr, align 8, !dbg !1790, !tbaa !35
  %arraydecay = getelementptr inbounds [2 x double], ptr %zero, i64 0, i64 0, !dbg !1791
  %14 = load ptr, ptr %head_x.addr, align 8, !dbg !1792, !tbaa !35
  %15 = load ptr, ptr %tail_x.addr, align 8, !dbg !1793, !tbaa !35
  %arraydecay6 = getelementptr inbounds [2 x double], ptr %rtmp, i64 0, i64 0, !dbg !1794
  %arraydecay7 = getelementptr inbounds [2 x double], ptr %r_true_l, i64 0, i64 0, !dbg !1795
  %arraydecay8 = getelementptr inbounds [2 x double], ptr %r_true_t, i64 0, i64 0, !dbg !1796
  call void @z_r_truth2(i32 noundef %10, i32 noundef %11, ptr noundef %12, ptr noundef %13, i32 noundef 1, ptr noundef %arraydecay, ptr noundef %14, ptr noundef %15, i32 noundef 1, ptr noundef %arraydecay6, ptr noundef %arraydecay7, ptr noundef %arraydecay8), !dbg !1797
  %arraydecay9 = getelementptr inbounds [2 x double], ptr %r_true_l, i64 0, i64 0, !dbg !1798
  %arraydecay10 = getelementptr inbounds [2 x double], ptr %r_true_t, i64 0, i64 0, !dbg !1799
  %16 = load ptr, ptr %beta_i, align 8, !dbg !1800, !tbaa !35
  %arraydecay11 = getelementptr inbounds [2 x double], ptr %r_true_l, i64 0, i64 0, !dbg !1801
  %arraydecay12 = getelementptr inbounds [2 x double], ptr %r_true_t, i64 0, i64 0, !dbg !1802
  call void @z_dddivd(ptr noundef %arraydecay9, ptr noundef %arraydecay10, ptr noundef %16, ptr noundef %arraydecay11, ptr noundef %arraydecay12), !dbg !1803
  %arrayidx13 = getelementptr inbounds [2 x double], ptr %r_true_l, i64 0, i64 0, !dbg !1804
  %17 = load double, ptr %arrayidx13, align 16, !dbg !1804, !tbaa !46
  %fneg = fneg double %17, !dbg !1805
  %18 = load ptr, ptr %r_i, align 8, !dbg !1806, !tbaa !35
  %arrayidx14 = getelementptr inbounds double, ptr %18, i64 0, !dbg !1806
  store double %fneg, ptr %arrayidx14, align 8, !dbg !1807, !tbaa !46
  %arrayidx15 = getelementptr inbounds [2 x double], ptr %r_true_l, i64 0, i64 1, !dbg !1808
  %19 = load double, ptr %arrayidx15, align 8, !dbg !1808, !tbaa !46
  %fneg16 = fneg double %19, !dbg !1809
  %20 = load ptr, ptr %r_i, align 8, !dbg !1810, !tbaa !35
  %arrayidx17 = getelementptr inbounds double, ptr %20, i64 1, !dbg !1810
  store double %fneg16, ptr %arrayidx17, align 8, !dbg !1811, !tbaa !46
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_true_t) #5, !dbg !1812
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_true_l) #5, !dbg !1812
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_i) #5, !dbg !1812
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta_i) #5, !dbg !1812
  call void @llvm.lifetime.end.p0(i64 16, ptr %rtmp) #5, !dbg !1812
  call void @llvm.lifetime.end.p0(i64 16, ptr %zero) #5, !dbg !1812
  ret void, !dbg !1812
}

declare !dbg !1813 void @z_dddivd(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 30, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../test-dot2/testgen_BLAS_zdot2.c", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/testing/test-symv2", checksumkind: CSK_MD5, checksum: "6907453eb91ce39f244b1145ed689e97")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 24)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !8, retainedTypes: !15, globals: !18, splitDebugInlining: false, nameTableKind: None)
!8 = !{!9}
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blas_conj_type", file: !10, line: 54, baseType: !11, size: 32, elements: !12)
!10 = !DIFile(filename: "../../src/blas_enum.h", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/testing/test-symv2", checksumkind: CSK_MD5, checksum: "8e42b1960f9fe688989d7c36c5b24db6")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !14}
!13 = !DIEnumerator(name: "blas_conj", value: 191)
!14 = !DIEnumerator(name: "blas_no_conj", value: 192)
!15 = !{!16, !17}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!18 = !{!0}
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 8, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 2}
!25 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!26 = distinct !DISubprogram(name: "z_mul", scope: !2, file: !2, line: 9, type: !27, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !29)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !16, !16, !16}
!29 = !{!30, !31, !32, !33, !34}
!30 = !DILocalVariable(name: "a", arg: 1, scope: !26, file: !2, line: 9, type: !16)
!31 = !DILocalVariable(name: "b", arg: 2, scope: !26, file: !2, line: 9, type: !16)
!32 = !DILocalVariable(name: "c", arg: 3, scope: !26, file: !2, line: 9, type: !16)
!33 = !DILocalVariable(name: "cr", scope: !26, file: !2, line: 11, type: !17)
!34 = !DILocalVariable(name: "ci", scope: !26, file: !2, line: 11, type: !17)
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !DILocation(line: 9, column: 19, scope: !26)
!40 = !DILocation(line: 9, column: 31, scope: !26)
!41 = !DILocation(line: 9, column: 43, scope: !26)
!42 = !DILocation(line: 11, column: 3, scope: !26)
!43 = !DILocation(line: 11, column: 10, scope: !26)
!44 = !DILocation(line: 11, column: 14, scope: !26)
!45 = !DILocation(line: 12, column: 8, scope: !26)
!46 = !{!47, !47, i64 0}
!47 = !{!"double", !37, i64 0}
!48 = !DILocation(line: 12, column: 15, scope: !26)
!49 = !DILocation(line: 12, column: 22, scope: !26)
!50 = !DILocation(line: 12, column: 29, scope: !26)
!51 = !DILocation(line: 12, column: 27, scope: !26)
!52 = !DILocation(line: 12, column: 20, scope: !26)
!53 = !DILocation(line: 12, column: 6, scope: !26)
!54 = !DILocation(line: 13, column: 8, scope: !26)
!55 = !DILocation(line: 13, column: 15, scope: !26)
!56 = !DILocation(line: 13, column: 22, scope: !26)
!57 = !DILocation(line: 13, column: 29, scope: !26)
!58 = !DILocation(line: 13, column: 27, scope: !26)
!59 = !DILocation(line: 13, column: 20, scope: !26)
!60 = !DILocation(line: 13, column: 6, scope: !26)
!61 = !DILocation(line: 14, column: 10, scope: !26)
!62 = !DILocation(line: 14, column: 3, scope: !26)
!63 = !DILocation(line: 14, column: 8, scope: !26)
!64 = !DILocation(line: 15, column: 10, scope: !26)
!65 = !DILocation(line: 15, column: 3, scope: !26)
!66 = !DILocation(line: 15, column: 8, scope: !26)
!67 = !DILocation(line: 16, column: 1, scope: !26)
!68 = distinct !DISubprogram(name: "z_div", scope: !2, file: !2, line: 19, type: !27, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !69)
!69 = !{!70, !71, !72, !73, !74, !75, !76, !77, !78}
!70 = !DILocalVariable(name: "a", arg: 1, scope: !68, file: !2, line: 19, type: !16)
!71 = !DILocalVariable(name: "b", arg: 2, scope: !68, file: !2, line: 19, type: !16)
!72 = !DILocalVariable(name: "c", arg: 3, scope: !68, file: !2, line: 19, type: !16)
!73 = !DILocalVariable(name: "ratio", scope: !68, file: !2, line: 21, type: !17)
!74 = !DILocalVariable(name: "den", scope: !68, file: !2, line: 21, type: !17)
!75 = !DILocalVariable(name: "abr", scope: !68, file: !2, line: 22, type: !17)
!76 = !DILocalVariable(name: "abi", scope: !68, file: !2, line: 22, type: !17)
!77 = !DILocalVariable(name: "cr", scope: !68, file: !2, line: 22, type: !17)
!78 = !DILocalVariable(name: "ci", scope: !68, file: !2, line: 22, type: !17)
!79 = !DILocation(line: 19, column: 19, scope: !68)
!80 = !DILocation(line: 19, column: 31, scope: !68)
!81 = !DILocation(line: 19, column: 43, scope: !68)
!82 = !DILocation(line: 21, column: 3, scope: !68)
!83 = !DILocation(line: 21, column: 10, scope: !68)
!84 = !DILocation(line: 21, column: 17, scope: !68)
!85 = !DILocation(line: 22, column: 3, scope: !68)
!86 = !DILocation(line: 22, column: 10, scope: !68)
!87 = !DILocation(line: 22, column: 15, scope: !68)
!88 = !DILocation(line: 22, column: 20, scope: !68)
!89 = !DILocation(line: 22, column: 24, scope: !68)
!90 = !DILocation(line: 24, column: 14, scope: !91)
!91 = distinct !DILexicalBlock(scope: !68, file: !2, line: 24, column: 7)
!92 = !DILocation(line: 24, column: 12, scope: !91)
!93 = !DILocation(line: 24, column: 20, scope: !91)
!94 = !DILocation(line: 24, column: 7, scope: !68)
!95 = !DILocation(line: 25, column: 12, scope: !91)
!96 = !DILocation(line: 25, column: 11, scope: !91)
!97 = !DILocation(line: 25, column: 9, scope: !91)
!98 = !DILocation(line: 25, column: 5, scope: !91)
!99 = !DILocation(line: 26, column: 14, scope: !100)
!100 = distinct !DILexicalBlock(scope: !68, file: !2, line: 26, column: 7)
!101 = !DILocation(line: 26, column: 12, scope: !100)
!102 = !DILocation(line: 26, column: 20, scope: !100)
!103 = !DILocation(line: 26, column: 7, scope: !68)
!104 = !DILocation(line: 27, column: 12, scope: !100)
!105 = !DILocation(line: 27, column: 11, scope: !100)
!106 = !DILocation(line: 27, column: 9, scope: !100)
!107 = !DILocation(line: 27, column: 5, scope: !100)
!108 = !DILocation(line: 28, column: 7, scope: !109)
!109 = distinct !DILexicalBlock(scope: !68, file: !2, line: 28, column: 7)
!110 = !DILocation(line: 28, column: 14, scope: !109)
!111 = !DILocation(line: 28, column: 11, scope: !109)
!112 = !DILocation(line: 28, column: 7, scope: !68)
!113 = !DILocation(line: 29, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !2, line: 29, column: 9)
!115 = distinct !DILexicalBlock(scope: !109, file: !2, line: 28, column: 19)
!116 = !DILocation(line: 29, column: 13, scope: !114)
!117 = !DILocation(line: 29, column: 9, scope: !115)
!118 = !DILocation(line: 30, column: 7, scope: !119)
!119 = distinct !DILexicalBlock(scope: !114, file: !2, line: 29, column: 19)
!120 = !DILocation(line: 31, column: 5, scope: !119)
!121 = !DILocation(line: 32, column: 13, scope: !115)
!122 = !DILocation(line: 32, column: 20, scope: !115)
!123 = !DILocation(line: 32, column: 18, scope: !115)
!124 = !DILocation(line: 32, column: 11, scope: !115)
!125 = !DILocation(line: 33, column: 11, scope: !115)
!126 = !DILocation(line: 33, column: 23, scope: !115)
!127 = !DILocation(line: 33, column: 31, scope: !115)
!128 = !DILocation(line: 33, column: 21, scope: !115)
!129 = !DILocation(line: 33, column: 16, scope: !115)
!130 = !DILocation(line: 33, column: 9, scope: !115)
!131 = !DILocation(line: 34, column: 11, scope: !115)
!132 = !DILocation(line: 34, column: 18, scope: !115)
!133 = !DILocation(line: 34, column: 26, scope: !115)
!134 = !DILocation(line: 34, column: 24, scope: !115)
!135 = !DILocation(line: 34, column: 34, scope: !115)
!136 = !DILocation(line: 34, column: 32, scope: !115)
!137 = !DILocation(line: 34, column: 8, scope: !115)
!138 = !DILocation(line: 35, column: 11, scope: !115)
!139 = !DILocation(line: 35, column: 18, scope: !115)
!140 = !DILocation(line: 35, column: 26, scope: !115)
!141 = !DILocation(line: 35, column: 24, scope: !115)
!142 = !DILocation(line: 35, column: 34, scope: !115)
!143 = !DILocation(line: 35, column: 32, scope: !115)
!144 = !DILocation(line: 35, column: 8, scope: !115)
!145 = !DILocation(line: 36, column: 3, scope: !115)
!146 = !DILocation(line: 37, column: 13, scope: !147)
!147 = distinct !DILexicalBlock(scope: !109, file: !2, line: 36, column: 10)
!148 = !DILocation(line: 37, column: 20, scope: !147)
!149 = !DILocation(line: 37, column: 18, scope: !147)
!150 = !DILocation(line: 37, column: 11, scope: !147)
!151 = !DILocation(line: 38, column: 11, scope: !147)
!152 = !DILocation(line: 38, column: 23, scope: !147)
!153 = !DILocation(line: 38, column: 31, scope: !147)
!154 = !DILocation(line: 38, column: 21, scope: !147)
!155 = !DILocation(line: 38, column: 16, scope: !147)
!156 = !DILocation(line: 38, column: 9, scope: !147)
!157 = !DILocation(line: 39, column: 11, scope: !147)
!158 = !DILocation(line: 39, column: 18, scope: !147)
!159 = !DILocation(line: 39, column: 25, scope: !147)
!160 = !DILocation(line: 39, column: 16, scope: !147)
!161 = !DILocation(line: 39, column: 34, scope: !147)
!162 = !DILocation(line: 39, column: 32, scope: !147)
!163 = !DILocation(line: 39, column: 8, scope: !147)
!164 = !DILocation(line: 40, column: 11, scope: !147)
!165 = !DILocation(line: 40, column: 18, scope: !147)
!166 = !DILocation(line: 40, column: 25, scope: !147)
!167 = !DILocation(line: 40, column: 16, scope: !147)
!168 = !DILocation(line: 40, column: 34, scope: !147)
!169 = !DILocation(line: 40, column: 32, scope: !147)
!170 = !DILocation(line: 40, column: 8, scope: !147)
!171 = !DILocation(line: 42, column: 10, scope: !68)
!172 = !DILocation(line: 42, column: 3, scope: !68)
!173 = !DILocation(line: 42, column: 8, scope: !68)
!174 = !DILocation(line: 43, column: 10, scope: !68)
!175 = !DILocation(line: 43, column: 3, scope: !68)
!176 = !DILocation(line: 43, column: 8, scope: !68)
!177 = !DILocation(line: 44, column: 1, scope: !68)
!178 = !DISubprogram(name: "BLAS_error", scope: !179, file: !179, line: 2115, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!179 = !DIFile(filename: "../../src/blas_extended_proto.h", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/testing/test-symv2", checksumkind: CSK_MD5, checksum: "9e4b28be948e34f7b50a8c545cc4c756")
!180 = !DISubroutineType(types: !181)
!181 = !{null, !182, !184, !184, !185, null}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!184 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!186 = distinct !DISubprogram(name: "testgen_BLAS_zdot2", scope: !2, file: !2, line: 149, type: !187, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !191)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !184, !184, !184, !184, !9, !189, !184, !189, !184, !189, !189, !189, !190, !189, !16, !16}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230}
!192 = !DILocalVariable(name: "n", arg: 1, scope: !186, file: !2, line: 149, type: !184)
!193 = !DILocalVariable(name: "n_fix2", arg: 2, scope: !186, file: !2, line: 149, type: !184)
!194 = !DILocalVariable(name: "n_mix", arg: 3, scope: !186, file: !2, line: 149, type: !184)
!195 = !DILocalVariable(name: "norm", arg: 4, scope: !186, file: !2, line: 149, type: !184)
!196 = !DILocalVariable(name: "conj", arg: 5, scope: !186, file: !2, line: 150, type: !9)
!197 = !DILocalVariable(name: "alpha", arg: 6, scope: !186, file: !2, line: 151, type: !189)
!198 = !DILocalVariable(name: "alpha_flag", arg: 7, scope: !186, file: !2, line: 151, type: !184)
!199 = !DILocalVariable(name: "beta", arg: 8, scope: !186, file: !2, line: 151, type: !189)
!200 = !DILocalVariable(name: "beta_flag", arg: 9, scope: !186, file: !2, line: 151, type: !184)
!201 = !DILocalVariable(name: "head_x", arg: 10, scope: !186, file: !2, line: 152, type: !189)
!202 = !DILocalVariable(name: "tail_x", arg: 11, scope: !186, file: !2, line: 152, type: !189)
!203 = !DILocalVariable(name: "y", arg: 12, scope: !186, file: !2, line: 152, type: !189)
!204 = !DILocalVariable(name: "seed", arg: 13, scope: !186, file: !2, line: 152, type: !190)
!205 = !DILocalVariable(name: "r", arg: 14, scope: !186, file: !2, line: 153, type: !189)
!206 = !DILocalVariable(name: "r_true_l", arg: 15, scope: !186, file: !2, line: 153, type: !16)
!207 = !DILocalVariable(name: "r_true_t", arg: 16, scope: !186, file: !2, line: 153, type: !16)
!208 = !DILocalVariable(name: "B", scope: !186, file: !2, line: 216, type: !184)
!209 = !DILocalVariable(name: "frees", scope: !186, file: !2, line: 216, type: !184)
!210 = !DILocalVariable(name: "y_free", scope: !186, file: !2, line: 216, type: !184)
!211 = !DILocalVariable(name: "i", scope: !186, file: !2, line: 216, type: !184)
!212 = !DILocalVariable(name: "ii", scope: !186, file: !2, line: 216, type: !184)
!213 = !DILocalVariable(name: "k", scope: !186, file: !2, line: 216, type: !184)
!214 = !DILocalVariable(name: "s", scope: !186, file: !2, line: 216, type: !184)
!215 = !DILocalVariable(name: "zero", scope: !186, file: !2, line: 217, type: !216)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 128, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 2)
!219 = !DILocalVariable(name: "a", scope: !186, file: !2, line: 218, type: !17)
!220 = !DILocalVariable(name: "b", scope: !186, file: !2, line: 218, type: !17)
!221 = !DILocalVariable(name: "eps_out", scope: !186, file: !2, line: 218, type: !17)
!222 = !DILocalVariable(name: "f", scope: !186, file: !2, line: 219, type: !216)
!223 = !DILocalVariable(name: "rtmp", scope: !186, file: !2, line: 219, type: !216)
!224 = !DILocalVariable(name: "rtmp_t", scope: !186, file: !2, line: 219, type: !216)
!225 = !DILocalVariable(name: "alpha_i", scope: !186, file: !2, line: 220, type: !16)
!226 = !DILocalVariable(name: "beta_i", scope: !186, file: !2, line: 221, type: !16)
!227 = !DILocalVariable(name: "r_i", scope: !186, file: !2, line: 222, type: !16)
!228 = !DILocalVariable(name: "head_x_i", scope: !186, file: !2, line: 223, type: !16)
!229 = !DILocalVariable(name: "tail_x_i", scope: !186, file: !2, line: 223, type: !16)
!230 = !DILocalVariable(name: "y_i", scope: !186, file: !2, line: 224, type: !16)
!231 = !{!232, !232, i64 0}
!232 = !{!"int", !37, i64 0}
!233 = !DILocation(line: 149, column: 24, scope: !186)
!234 = !DILocation(line: 149, column: 31, scope: !186)
!235 = !DILocation(line: 149, column: 43, scope: !186)
!236 = !DILocation(line: 149, column: 54, scope: !186)
!237 = !{!37, !37, i64 0}
!238 = !DILocation(line: 150, column: 26, scope: !186)
!239 = !DILocation(line: 151, column: 12, scope: !186)
!240 = !DILocation(line: 151, column: 23, scope: !186)
!241 = !DILocation(line: 151, column: 41, scope: !186)
!242 = !DILocation(line: 151, column: 51, scope: !186)
!243 = !DILocation(line: 152, column: 12, scope: !186)
!244 = !DILocation(line: 152, column: 26, scope: !186)
!245 = !DILocation(line: 152, column: 40, scope: !186)
!246 = !DILocation(line: 152, column: 48, scope: !186)
!247 = !DILocation(line: 153, column: 12, scope: !186)
!248 = !DILocation(line: 153, column: 22, scope: !186)
!249 = !DILocation(line: 153, column: 41, scope: !186)
!250 = !DILocation(line: 216, column: 3, scope: !186)
!251 = !DILocation(line: 216, column: 7, scope: !186)
!252 = !DILocation(line: 216, column: 10, scope: !186)
!253 = !DILocation(line: 216, column: 17, scope: !186)
!254 = !DILocation(line: 216, column: 25, scope: !186)
!255 = !DILocation(line: 216, column: 28, scope: !186)
!256 = !DILocation(line: 216, column: 32, scope: !186)
!257 = !DILocation(line: 216, column: 35, scope: !186)
!258 = !DILocation(line: 217, column: 3, scope: !186)
!259 = !DILocation(line: 217, column: 10, scope: !186)
!260 = !DILocation(line: 218, column: 3, scope: !186)
!261 = !DILocation(line: 218, column: 10, scope: !186)
!262 = !DILocation(line: 218, column: 13, scope: !186)
!263 = !DILocation(line: 218, column: 16, scope: !186)
!264 = !DILocation(line: 219, column: 3, scope: !186)
!265 = !DILocation(line: 219, column: 10, scope: !186)
!266 = !DILocation(line: 219, column: 16, scope: !186)
!267 = !DILocation(line: 219, column: 25, scope: !186)
!268 = !DILocation(line: 220, column: 3, scope: !186)
!269 = !DILocation(line: 220, column: 11, scope: !186)
!270 = !DILocation(line: 220, column: 32, scope: !186)
!271 = !DILocation(line: 221, column: 3, scope: !186)
!272 = !DILocation(line: 221, column: 11, scope: !186)
!273 = !DILocation(line: 221, column: 31, scope: !186)
!274 = !DILocation(line: 222, column: 3, scope: !186)
!275 = !DILocation(line: 222, column: 11, scope: !186)
!276 = !DILocation(line: 222, column: 28, scope: !186)
!277 = !DILocation(line: 223, column: 3, scope: !186)
!278 = !DILocation(line: 223, column: 11, scope: !186)
!279 = !DILocation(line: 223, column: 33, scope: !186)
!280 = !DILocation(line: 223, column: 42, scope: !186)
!281 = !DILocation(line: 223, column: 64, scope: !186)
!282 = !DILocation(line: 224, column: 3, scope: !186)
!283 = !DILocation(line: 224, column: 11, scope: !186)
!284 = !DILocation(line: 224, column: 28, scope: !186)
!285 = !DILocation(line: 226, column: 7, scope: !286)
!286 = distinct !DILexicalBlock(scope: !186, file: !2, line: 226, column: 7)
!287 = !DILocation(line: 226, column: 18, scope: !286)
!288 = !DILocation(line: 226, column: 7, scope: !186)
!289 = !DILocation(line: 227, column: 26, scope: !290)
!290 = distinct !DILexicalBlock(scope: !286, file: !2, line: 226, column: 24)
!291 = !DILocation(line: 227, column: 20, scope: !290)
!292 = !DILocation(line: 227, column: 7, scope: !290)
!293 = !DILocation(line: 227, column: 18, scope: !290)
!294 = !DILocation(line: 228, column: 26, scope: !290)
!295 = !DILocation(line: 228, column: 20, scope: !290)
!296 = !DILocation(line: 228, column: 7, scope: !290)
!297 = !DILocation(line: 228, column: 18, scope: !290)
!298 = !DILocation(line: 229, column: 3, scope: !290)
!299 = !DILocation(line: 230, column: 7, scope: !300)
!300 = distinct !DILexicalBlock(scope: !186, file: !2, line: 230, column: 7)
!301 = !DILocation(line: 230, column: 17, scope: !300)
!302 = !DILocation(line: 230, column: 7, scope: !186)
!303 = !DILocation(line: 231, column: 25, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !2, line: 230, column: 23)
!305 = !DILocation(line: 231, column: 19, scope: !304)
!306 = !DILocation(line: 231, column: 7, scope: !304)
!307 = !DILocation(line: 231, column: 17, scope: !304)
!308 = !DILocation(line: 232, column: 25, scope: !304)
!309 = !DILocation(line: 232, column: 19, scope: !304)
!310 = !DILocation(line: 232, column: 7, scope: !304)
!311 = !DILocation(line: 232, column: 17, scope: !304)
!312 = !DILocation(line: 233, column: 3, scope: !304)
!313 = !DILocation(line: 235, column: 12, scope: !186)
!314 = !DILocation(line: 235, column: 16, scope: !186)
!315 = !DILocation(line: 235, column: 14, scope: !186)
!316 = !DILocation(line: 235, column: 10, scope: !186)
!317 = !DILocation(line: 236, column: 11, scope: !186)
!318 = !DILocation(line: 236, column: 9, scope: !186)
!319 = !DILocation(line: 236, column: 5, scope: !186)
!320 = !DILocation(line: 237, column: 13, scope: !186)
!321 = !DILocation(line: 237, column: 11, scope: !186)
!322 = !DILocation(line: 243, column: 12, scope: !186)
!323 = !DILocation(line: 243, column: 19, scope: !186)
!324 = !DILocation(line: 243, column: 3, scope: !186)
!325 = !DILocation(line: 243, column: 10, scope: !186)
!326 = !DILocation(line: 244, column: 14, scope: !186)
!327 = !DILocation(line: 244, column: 20, scope: !186)
!328 = !DILocation(line: 244, column: 28, scope: !186)
!329 = !DILocation(line: 244, column: 35, scope: !186)
!330 = !DILocation(line: 244, column: 41, scope: !186)
!331 = !DILocation(line: 244, column: 47, scope: !186)
!332 = !DILocation(line: 244, column: 55, scope: !186)
!333 = !DILocation(line: 244, column: 66, scope: !186)
!334 = !DILocation(line: 245, column: 7, scope: !186)
!335 = !DILocation(line: 245, column: 17, scope: !186)
!336 = !DILocation(line: 244, column: 3, scope: !186)
!337 = !DILocation(line: 246, column: 17, scope: !186)
!338 = !DILocation(line: 246, column: 30, scope: !186)
!339 = !DILocation(line: 246, column: 7, scope: !186)
!340 = !DILocation(line: 246, column: 5, scope: !186)
!341 = !DILocation(line: 247, column: 7, scope: !186)
!342 = !DILocation(line: 247, column: 5, scope: !186)
!343 = !DILocation(line: 250, column: 18, scope: !186)
!344 = !DILocation(line: 250, column: 12, scope: !186)
!345 = !DILocation(line: 250, column: 3, scope: !186)
!346 = !DILocation(line: 250, column: 10, scope: !186)
!347 = !DILocation(line: 251, column: 18, scope: !186)
!348 = !DILocation(line: 251, column: 12, scope: !186)
!349 = !DILocation(line: 251, column: 3, scope: !186)
!350 = !DILocation(line: 251, column: 10, scope: !186)
!351 = !DILocation(line: 254, column: 12, scope: !352)
!352 = distinct !DILexicalBlock(scope: !186, file: !2, line: 254, column: 3)
!353 = !DILocation(line: 254, column: 21, scope: !352)
!354 = !DILocation(line: 254, column: 19, scope: !352)
!355 = !DILocation(line: 254, column: 10, scope: !352)
!356 = !DILocation(line: 254, column: 8, scope: !352)
!357 = !DILocation(line: 254, column: 28, scope: !358)
!358 = distinct !DILexicalBlock(scope: !352, file: !2, line: 254, column: 3)
!359 = !DILocation(line: 254, column: 32, scope: !358)
!360 = !DILocation(line: 254, column: 30, scope: !358)
!361 = !DILocation(line: 254, column: 3, scope: !352)
!362 = !DILocation(line: 255, column: 16, scope: !363)
!363 = distinct !DILexicalBlock(scope: !358, file: !2, line: 254, column: 40)
!364 = !DILocation(line: 255, column: 14, scope: !363)
!365 = !DILocation(line: 255, column: 10, scope: !363)
!366 = !DILocation(line: 256, column: 28, scope: !363)
!367 = !DILocation(line: 256, column: 22, scope: !363)
!368 = !DILocation(line: 256, column: 7, scope: !363)
!369 = !DILocation(line: 256, column: 16, scope: !363)
!370 = !DILocation(line: 256, column: 20, scope: !363)
!371 = !DILocation(line: 257, column: 32, scope: !363)
!372 = !DILocation(line: 257, column: 26, scope: !363)
!373 = !DILocation(line: 257, column: 7, scope: !363)
!374 = !DILocation(line: 257, column: 16, scope: !363)
!375 = !DILocation(line: 257, column: 19, scope: !363)
!376 = !DILocation(line: 257, column: 24, scope: !363)
!377 = !DILocation(line: 258, column: 11, scope: !363)
!378 = !DILocation(line: 258, column: 9, scope: !363)
!379 = !DILocation(line: 259, column: 28, scope: !363)
!380 = !DILocation(line: 259, column: 22, scope: !363)
!381 = !DILocation(line: 259, column: 36, scope: !363)
!382 = !DILocation(line: 259, column: 34, scope: !363)
!383 = !DILocation(line: 259, column: 7, scope: !363)
!384 = !DILocation(line: 259, column: 16, scope: !363)
!385 = !DILocation(line: 259, column: 20, scope: !363)
!386 = !DILocation(line: 260, column: 32, scope: !363)
!387 = !DILocation(line: 260, column: 26, scope: !363)
!388 = !DILocation(line: 260, column: 40, scope: !363)
!389 = !DILocation(line: 260, column: 38, scope: !363)
!390 = !DILocation(line: 260, column: 7, scope: !363)
!391 = !DILocation(line: 260, column: 16, scope: !363)
!392 = !DILocation(line: 260, column: 19, scope: !363)
!393 = !DILocation(line: 260, column: 24, scope: !363)
!394 = !DILocation(line: 261, column: 3, scope: !363)
!395 = !DILocation(line: 254, column: 35, scope: !358)
!396 = !DILocation(line: 254, column: 3, scope: !358)
!397 = distinct !{!397, !361, !398, !399}
!398 = !DILocation(line: 261, column: 3, scope: !352)
!399 = !{!"llvm.loop.mustprogress"}
!400 = !DILocation(line: 263, column: 7, scope: !401)
!401 = distinct !DILexicalBlock(scope: !186, file: !2, line: 263, column: 7)
!402 = !DILocation(line: 263, column: 18, scope: !401)
!403 = !DILocation(line: 263, column: 23, scope: !401)
!404 = !DILocation(line: 263, column: 26, scope: !401)
!405 = !DILocation(line: 263, column: 37, scope: !401)
!406 = !DILocation(line: 263, column: 44, scope: !401)
!407 = !DILocation(line: 263, column: 47, scope: !401)
!408 = !DILocation(line: 263, column: 58, scope: !401)
!409 = !DILocation(line: 263, column: 7, scope: !186)
!410 = !DILocation(line: 265, column: 16, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !2, line: 265, column: 7)
!412 = distinct !DILexicalBlock(scope: !401, file: !2, line: 263, column: 66)
!413 = !DILocation(line: 265, column: 14, scope: !411)
!414 = !DILocation(line: 265, column: 12, scope: !411)
!415 = !DILocation(line: 265, column: 24, scope: !416)
!416 = distinct !DILexicalBlock(scope: !411, file: !2, line: 265, column: 7)
!417 = !DILocation(line: 265, column: 28, scope: !416)
!418 = !DILocation(line: 265, column: 26, scope: !416)
!419 = !DILocation(line: 265, column: 7, scope: !411)
!420 = !DILocation(line: 266, column: 13, scope: !421)
!421 = distinct !DILexicalBlock(scope: !416, file: !2, line: 265, column: 36)
!422 = !DILocation(line: 266, column: 11, scope: !421)
!423 = !DILocation(line: 266, column: 7, scope: !421)
!424 = !DILocation(line: 267, column: 20, scope: !421)
!425 = !DILocation(line: 267, column: 14, scope: !421)
!426 = !DILocation(line: 267, column: 4, scope: !421)
!427 = !DILocation(line: 267, column: 8, scope: !421)
!428 = !DILocation(line: 267, column: 12, scope: !421)
!429 = !DILocation(line: 268, column: 24, scope: !421)
!430 = !DILocation(line: 268, column: 18, scope: !421)
!431 = !DILocation(line: 268, column: 4, scope: !421)
!432 = !DILocation(line: 268, column: 8, scope: !421)
!433 = !DILocation(line: 268, column: 11, scope: !421)
!434 = !DILocation(line: 268, column: 16, scope: !421)
!435 = !DILocation(line: 269, column: 7, scope: !421)
!436 = !DILocation(line: 265, column: 31, scope: !416)
!437 = !DILocation(line: 265, column: 7, scope: !416)
!438 = distinct !{!438, !419, !439, !399}
!439 = !DILocation(line: 269, column: 7, scope: !411)
!440 = !DILocation(line: 271, column: 18, scope: !412)
!441 = !DILocation(line: 271, column: 24, scope: !412)
!442 = !DILocation(line: 271, column: 27, scope: !412)
!443 = !DILocation(line: 271, column: 34, scope: !412)
!444 = !DILocation(line: 271, column: 40, scope: !412)
!445 = !DILocation(line: 271, column: 46, scope: !412)
!446 = !DILocation(line: 271, column: 54, scope: !412)
!447 = !DILocation(line: 271, column: 65, scope: !412)
!448 = !DILocation(line: 272, column: 4, scope: !412)
!449 = !DILocation(line: 272, column: 14, scope: !412)
!450 = !DILocation(line: 271, column: 7, scope: !412)
!451 = !DILocation(line: 273, column: 7, scope: !412)
!452 = !DILocation(line: 276, column: 7, scope: !453)
!453 = distinct !DILexicalBlock(scope: !186, file: !2, line: 276, column: 7)
!454 = !DILocation(line: 276, column: 16, scope: !453)
!455 = !DILocation(line: 276, column: 20, scope: !453)
!456 = !DILocation(line: 276, column: 23, scope: !453)
!457 = !DILocation(line: 276, column: 33, scope: !453)
!458 = !DILocation(line: 276, column: 40, scope: !453)
!459 = !DILocation(line: 276, column: 43, scope: !453)
!460 = !DILocation(line: 276, column: 53, scope: !453)
!461 = !DILocation(line: 276, column: 7, scope: !186)
!462 = !DILocation(line: 277, column: 11, scope: !463)
!463 = distinct !DILexicalBlock(scope: !464, file: !2, line: 277, column: 11)
!464 = distinct !DILexicalBlock(scope: !453, file: !2, line: 276, column: 61)
!465 = !DILocation(line: 277, column: 13, scope: !463)
!466 = !DILocation(line: 277, column: 11, scope: !464)
!467 = !DILocation(line: 278, column: 12, scope: !468)
!468 = distinct !DILexicalBlock(scope: !463, file: !2, line: 277, column: 19)
!469 = !DILocation(line: 278, column: 4, scope: !468)
!470 = !DILocation(line: 281, column: 23, scope: !471)
!471 = distinct !DILexicalBlock(scope: !468, file: !2, line: 278, column: 20)
!472 = !DILocation(line: 281, column: 17, scope: !471)
!473 = !DILocation(line: 281, column: 8, scope: !471)
!474 = !DILocation(line: 281, column: 12, scope: !471)
!475 = !DILocation(line: 281, column: 15, scope: !471)
!476 = !DILocation(line: 282, column: 27, scope: !471)
!477 = !DILocation(line: 282, column: 21, scope: !471)
!478 = !DILocation(line: 282, column: 8, scope: !471)
!479 = !DILocation(line: 282, column: 12, scope: !471)
!480 = !DILocation(line: 282, column: 14, scope: !471)
!481 = !DILocation(line: 282, column: 19, scope: !471)
!482 = !DILocation(line: 283, column: 8, scope: !471)
!483 = !DILocation(line: 292, column: 12, scope: !484)
!484 = distinct !DILexicalBlock(scope: !471, file: !2, line: 292, column: 12)
!485 = !DILocation(line: 292, column: 18, scope: !484)
!486 = !DILocation(line: 292, column: 12, scope: !471)
!487 = !DILocation(line: 296, column: 25, scope: !488)
!488 = distinct !DILexicalBlock(scope: !484, file: !2, line: 292, column: 24)
!489 = !DILocation(line: 296, column: 9, scope: !488)
!490 = !DILocation(line: 296, column: 7, scope: !488)
!491 = !DILocation(line: 297, column: 19, scope: !488)
!492 = !DILocation(line: 297, column: 5, scope: !488)
!493 = !DILocation(line: 297, column: 14, scope: !488)
!494 = !DILocation(line: 297, column: 17, scope: !488)
!495 = !DILocation(line: 298, column: 23, scope: !488)
!496 = !DILocation(line: 298, column: 5, scope: !488)
!497 = !DILocation(line: 298, column: 14, scope: !488)
!498 = !DILocation(line: 298, column: 16, scope: !488)
!499 = !DILocation(line: 298, column: 21, scope: !488)
!500 = !DILocation(line: 299, column: 14, scope: !488)
!501 = !DILocation(line: 299, column: 5, scope: !488)
!502 = !DILocation(line: 299, column: 9, scope: !488)
!503 = !DILocation(line: 299, column: 12, scope: !488)
!504 = !DILocation(line: 300, column: 18, scope: !488)
!505 = !DILocation(line: 300, column: 5, scope: !488)
!506 = !DILocation(line: 300, column: 9, scope: !488)
!507 = !DILocation(line: 300, column: 11, scope: !488)
!508 = !DILocation(line: 300, column: 16, scope: !488)
!509 = !DILocation(line: 301, column: 23, scope: !488)
!510 = !DILocation(line: 301, column: 27, scope: !488)
!511 = !DILocation(line: 301, column: 25, scope: !488)
!512 = !DILocation(line: 301, column: 5, scope: !488)
!513 = !DILocation(line: 301, column: 14, scope: !488)
!514 = !DILocation(line: 301, column: 16, scope: !488)
!515 = !DILocation(line: 301, column: 21, scope: !488)
!516 = !DILocation(line: 302, column: 23, scope: !488)
!517 = !DILocation(line: 302, column: 27, scope: !488)
!518 = !DILocation(line: 302, column: 25, scope: !488)
!519 = !DILocation(line: 302, column: 5, scope: !488)
!520 = !DILocation(line: 302, column: 14, scope: !488)
!521 = !DILocation(line: 302, column: 16, scope: !488)
!522 = !DILocation(line: 302, column: 21, scope: !488)
!523 = !DILocation(line: 303, column: 19, scope: !488)
!524 = !DILocation(line: 303, column: 18, scope: !488)
!525 = !DILocation(line: 303, column: 23, scope: !488)
!526 = !DILocation(line: 303, column: 21, scope: !488)
!527 = !DILocation(line: 303, column: 5, scope: !488)
!528 = !DILocation(line: 303, column: 9, scope: !488)
!529 = !DILocation(line: 303, column: 11, scope: !488)
!530 = !DILocation(line: 303, column: 16, scope: !488)
!531 = !DILocation(line: 304, column: 19, scope: !488)
!532 = !DILocation(line: 304, column: 18, scope: !488)
!533 = !DILocation(line: 304, column: 23, scope: !488)
!534 = !DILocation(line: 304, column: 21, scope: !488)
!535 = !DILocation(line: 304, column: 5, scope: !488)
!536 = !DILocation(line: 304, column: 9, scope: !488)
!537 = !DILocation(line: 304, column: 11, scope: !488)
!538 = !DILocation(line: 304, column: 16, scope: !488)
!539 = !DILocation(line: 305, column: 9, scope: !488)
!540 = !DILocation(line: 305, column: 7, scope: !488)
!541 = !DILocation(line: 306, column: 19, scope: !488)
!542 = !DILocation(line: 306, column: 23, scope: !488)
!543 = !DILocation(line: 306, column: 24, scope: !488)
!544 = !DILocation(line: 306, column: 30, scope: !488)
!545 = !DILocation(line: 306, column: 28, scope: !488)
!546 = !DILocation(line: 306, column: 5, scope: !488)
!547 = !DILocation(line: 306, column: 14, scope: !488)
!548 = !DILocation(line: 306, column: 17, scope: !488)
!549 = !DILocation(line: 307, column: 21, scope: !488)
!550 = !DILocation(line: 307, column: 30, scope: !488)
!551 = !DILocation(line: 307, column: 5, scope: !488)
!552 = !DILocation(line: 307, column: 14, scope: !488)
!553 = !DILocation(line: 307, column: 15, scope: !488)
!554 = !DILocation(line: 307, column: 19, scope: !488)
!555 = !DILocation(line: 308, column: 22, scope: !488)
!556 = !DILocation(line: 308, column: 26, scope: !488)
!557 = !DILocation(line: 308, column: 21, scope: !488)
!558 = !DILocation(line: 308, column: 31, scope: !488)
!559 = !DILocation(line: 308, column: 29, scope: !488)
!560 = !DILocation(line: 308, column: 5, scope: !488)
!561 = !DILocation(line: 308, column: 14, scope: !488)
!562 = !DILocation(line: 308, column: 15, scope: !488)
!563 = !DILocation(line: 308, column: 19, scope: !488)
!564 = !DILocation(line: 309, column: 21, scope: !488)
!565 = !DILocation(line: 309, column: 30, scope: !488)
!566 = !DILocation(line: 309, column: 31, scope: !488)
!567 = !DILocation(line: 309, column: 5, scope: !488)
!568 = !DILocation(line: 309, column: 14, scope: !488)
!569 = !DILocation(line: 309, column: 15, scope: !488)
!570 = !DILocation(line: 309, column: 19, scope: !488)
!571 = !DILocation(line: 310, column: 8, scope: !488)
!572 = !DILocation(line: 311, column: 20, scope: !573)
!573 = distinct !DILexicalBlock(scope: !484, file: !2, line: 310, column: 15)
!574 = !DILocation(line: 311, column: 14, scope: !573)
!575 = !DILocation(line: 311, column: 5, scope: !573)
!576 = !DILocation(line: 311, column: 9, scope: !573)
!577 = !DILocation(line: 311, column: 12, scope: !573)
!578 = !DILocation(line: 312, column: 24, scope: !573)
!579 = !DILocation(line: 312, column: 18, scope: !573)
!580 = !DILocation(line: 312, column: 5, scope: !573)
!581 = !DILocation(line: 312, column: 9, scope: !573)
!582 = !DILocation(line: 312, column: 11, scope: !573)
!583 = !DILocation(line: 312, column: 16, scope: !573)
!584 = !DILocation(line: 313, column: 21, scope: !573)
!585 = !DILocation(line: 313, column: 28, scope: !573)
!586 = !DILocation(line: 313, column: 33, scope: !573)
!587 = !DILocation(line: 313, column: 36, scope: !573)
!588 = !DILocation(line: 313, column: 42, scope: !573)
!589 = !DILocation(line: 313, column: 49, scope: !573)
!590 = !DILocation(line: 313, column: 57, scope: !573)
!591 = !DILocation(line: 313, column: 65, scope: !573)
!592 = !DILocation(line: 313, column: 5, scope: !573)
!593 = !DILocation(line: 315, column: 8, scope: !471)
!594 = !DILocation(line: 322, column: 23, scope: !471)
!595 = !DILocation(line: 322, column: 17, scope: !471)
!596 = !DILocation(line: 322, column: 8, scope: !471)
!597 = !DILocation(line: 322, column: 12, scope: !471)
!598 = !DILocation(line: 322, column: 15, scope: !471)
!599 = !DILocation(line: 323, column: 27, scope: !471)
!600 = !DILocation(line: 323, column: 21, scope: !471)
!601 = !DILocation(line: 323, column: 8, scope: !471)
!602 = !DILocation(line: 323, column: 12, scope: !471)
!603 = !DILocation(line: 323, column: 14, scope: !471)
!604 = !DILocation(line: 323, column: 19, scope: !471)
!605 = !DILocation(line: 324, column: 18, scope: !471)
!606 = !DILocation(line: 324, column: 27, scope: !471)
!607 = !DILocation(line: 324, column: 8, scope: !471)
!608 = !DILocation(line: 324, column: 16, scope: !471)
!609 = !DILocation(line: 325, column: 12, scope: !610)
!610 = distinct !DILexicalBlock(scope: !471, file: !2, line: 325, column: 12)
!611 = !DILocation(line: 325, column: 17, scope: !610)
!612 = !DILocation(line: 325, column: 12, scope: !471)
!613 = !DILocation(line: 325, column: 42, scope: !610)
!614 = !DILocation(line: 325, column: 51, scope: !610)
!615 = !DILocation(line: 325, column: 53, scope: !610)
!616 = !DILocation(line: 325, column: 41, scope: !610)
!617 = !DILocation(line: 325, column: 31, scope: !610)
!618 = !DILocation(line: 325, column: 39, scope: !610)
!619 = !DILocation(line: 326, column: 23, scope: !610)
!620 = !DILocation(line: 326, column: 32, scope: !610)
!621 = !DILocation(line: 326, column: 34, scope: !610)
!622 = !DILocation(line: 326, column: 13, scope: !610)
!623 = !DILocation(line: 326, column: 21, scope: !610)
!624 = !DILocation(line: 327, column: 14, scope: !471)
!625 = !DILocation(line: 327, column: 21, scope: !471)
!626 = !DILocation(line: 327, column: 25, scope: !471)
!627 = !DILocation(line: 327, column: 29, scope: !471)
!628 = !DILocation(line: 327, column: 8, scope: !471)
!629 = !DILocation(line: 328, column: 14, scope: !471)
!630 = !DILocation(line: 328, column: 23, scope: !471)
!631 = !DILocation(line: 328, column: 29, scope: !471)
!632 = !DILocation(line: 328, column: 8, scope: !471)
!633 = !DILocation(line: 329, column: 20, scope: !471)
!634 = !DILocation(line: 329, column: 29, scope: !471)
!635 = !DILocation(line: 329, column: 8, scope: !471)
!636 = !DILocation(line: 329, column: 18, scope: !471)
!637 = !DILocation(line: 330, column: 12, scope: !638)
!638 = distinct !DILexicalBlock(scope: !471, file: !2, line: 330, column: 12)
!639 = !DILocation(line: 330, column: 17, scope: !638)
!640 = !DILocation(line: 330, column: 12, scope: !471)
!641 = !DILocation(line: 330, column: 44, scope: !638)
!642 = !DILocation(line: 330, column: 53, scope: !638)
!643 = !DILocation(line: 330, column: 55, scope: !638)
!644 = !DILocation(line: 330, column: 43, scope: !638)
!645 = !DILocation(line: 330, column: 31, scope: !638)
!646 = !DILocation(line: 330, column: 41, scope: !638)
!647 = !DILocation(line: 331, column: 25, scope: !638)
!648 = !DILocation(line: 331, column: 34, scope: !638)
!649 = !DILocation(line: 331, column: 36, scope: !638)
!650 = !DILocation(line: 331, column: 13, scope: !638)
!651 = !DILocation(line: 331, column: 23, scope: !638)
!652 = !DILocation(line: 332, column: 14, scope: !471)
!653 = !DILocation(line: 332, column: 23, scope: !471)
!654 = !DILocation(line: 332, column: 27, scope: !471)
!655 = !DILocation(line: 332, column: 31, scope: !471)
!656 = !DILocation(line: 332, column: 8, scope: !471)
!657 = !DILocation(line: 333, column: 14, scope: !471)
!658 = !DILocation(line: 333, column: 23, scope: !471)
!659 = !DILocation(line: 333, column: 31, scope: !471)
!660 = !DILocation(line: 333, column: 8, scope: !471)
!661 = !DILocation(line: 334, column: 19, scope: !471)
!662 = !DILocation(line: 334, column: 8, scope: !471)
!663 = !DILocation(line: 334, column: 16, scope: !471)
!664 = !DILocation(line: 335, column: 19, scope: !471)
!665 = !DILocation(line: 335, column: 8, scope: !471)
!666 = !DILocation(line: 335, column: 16, scope: !471)
!667 = !DILocation(line: 336, column: 10, scope: !471)
!668 = !DILocation(line: 337, column: 22, scope: !471)
!669 = !DILocation(line: 337, column: 21, scope: !471)
!670 = !DILocation(line: 337, column: 12, scope: !471)
!671 = !DILocation(line: 337, column: 10, scope: !471)
!672 = !DILocation(line: 338, column: 17, scope: !673)
!673 = distinct !DILexicalBlock(scope: !471, file: !2, line: 338, column: 8)
!674 = !DILocation(line: 338, column: 24, scope: !673)
!675 = !DILocation(line: 338, column: 15, scope: !673)
!676 = !DILocation(line: 338, column: 13, scope: !673)
!677 = !DILocation(line: 338, column: 29, scope: !678)
!678 = distinct !DILexicalBlock(scope: !673, file: !2, line: 338, column: 8)
!679 = !DILocation(line: 338, column: 33, scope: !678)
!680 = !DILocation(line: 338, column: 35, scope: !678)
!681 = !DILocation(line: 338, column: 31, scope: !678)
!682 = !DILocation(line: 338, column: 8, scope: !673)
!683 = !DILocation(line: 339, column: 14, scope: !684)
!684 = distinct !DILexicalBlock(scope: !678, file: !2, line: 338, column: 45)
!685 = !DILocation(line: 339, column: 12, scope: !684)
!686 = !DILocation(line: 339, column: 8, scope: !684)
!687 = !DILocation(line: 340, column: 16, scope: !684)
!688 = !DILocation(line: 340, column: 5, scope: !684)
!689 = !DILocation(line: 340, column: 13, scope: !684)
!690 = !DILocation(line: 341, column: 16, scope: !684)
!691 = !DILocation(line: 341, column: 5, scope: !684)
!692 = !DILocation(line: 341, column: 13, scope: !684)
!693 = !DILocation(line: 342, column: 12, scope: !684)
!694 = !DILocation(line: 342, column: 21, scope: !684)
!695 = !DILocation(line: 342, column: 5, scope: !684)
!696 = !DILocation(line: 342, column: 10, scope: !684)
!697 = !DILocation(line: 343, column: 9, scope: !698)
!698 = distinct !DILexicalBlock(scope: !684, file: !2, line: 343, column: 9)
!699 = !DILocation(line: 343, column: 14, scope: !698)
!700 = !DILocation(line: 343, column: 9, scope: !684)
!701 = !DILocation(line: 343, column: 36, scope: !698)
!702 = !DILocation(line: 343, column: 45, scope: !698)
!703 = !DILocation(line: 343, column: 48, scope: !698)
!704 = !DILocation(line: 343, column: 35, scope: !698)
!705 = !DILocation(line: 343, column: 28, scope: !698)
!706 = !DILocation(line: 343, column: 33, scope: !698)
!707 = !DILocation(line: 344, column: 17, scope: !698)
!708 = !DILocation(line: 344, column: 26, scope: !698)
!709 = !DILocation(line: 344, column: 29, scope: !698)
!710 = !DILocation(line: 344, column: 10, scope: !698)
!711 = !DILocation(line: 344, column: 15, scope: !698)
!712 = !DILocation(line: 345, column: 11, scope: !684)
!713 = !DILocation(line: 345, column: 20, scope: !684)
!714 = !DILocation(line: 345, column: 23, scope: !684)
!715 = !DILocation(line: 345, column: 5, scope: !684)
!716 = !DILocation(line: 346, column: 17, scope: !684)
!717 = !DILocation(line: 346, column: 26, scope: !684)
!718 = !DILocation(line: 346, column: 5, scope: !684)
!719 = !DILocation(line: 346, column: 15, scope: !684)
!720 = !DILocation(line: 347, column: 9, scope: !721)
!721 = distinct !DILexicalBlock(scope: !684, file: !2, line: 347, column: 9)
!722 = !DILocation(line: 347, column: 14, scope: !721)
!723 = !DILocation(line: 347, column: 9, scope: !684)
!724 = !DILocation(line: 347, column: 41, scope: !721)
!725 = !DILocation(line: 347, column: 50, scope: !721)
!726 = !DILocation(line: 347, column: 53, scope: !721)
!727 = !DILocation(line: 347, column: 40, scope: !721)
!728 = !DILocation(line: 347, column: 28, scope: !721)
!729 = !DILocation(line: 347, column: 38, scope: !721)
!730 = !DILocation(line: 348, column: 17, scope: !721)
!731 = !DILocation(line: 348, column: 26, scope: !721)
!732 = !DILocation(line: 348, column: 29, scope: !721)
!733 = !DILocation(line: 348, column: 10, scope: !721)
!734 = !DILocation(line: 348, column: 15, scope: !721)
!735 = !DILocation(line: 349, column: 11, scope: !684)
!736 = !DILocation(line: 349, column: 20, scope: !684)
!737 = !DILocation(line: 349, column: 28, scope: !684)
!738 = !DILocation(line: 349, column: 5, scope: !684)
!739 = !DILocation(line: 350, column: 13, scope: !684)
!740 = !DILocation(line: 350, column: 5, scope: !684)
!741 = !DILocation(line: 350, column: 10, scope: !684)
!742 = !DILocation(line: 351, column: 13, scope: !684)
!743 = !DILocation(line: 351, column: 5, scope: !684)
!744 = !DILocation(line: 351, column: 10, scope: !684)
!745 = !DILocation(line: 352, column: 9, scope: !746)
!746 = distinct !DILexicalBlock(scope: !684, file: !2, line: 352, column: 9)
!747 = !DILocation(line: 352, column: 14, scope: !746)
!748 = !DILocation(line: 352, column: 20, scope: !746)
!749 = !DILocation(line: 352, column: 23, scope: !746)
!750 = !DILocation(line: 352, column: 28, scope: !746)
!751 = !DILocation(line: 352, column: 9, scope: !684)
!752 = !DILocation(line: 353, column: 19, scope: !746)
!753 = !DILocation(line: 353, column: 23, scope: !746)
!754 = !DILocation(line: 353, column: 26, scope: !746)
!755 = !DILocation(line: 353, column: 31, scope: !746)
!756 = !DILocation(line: 353, column: 9, scope: !746)
!757 = !DILocation(line: 353, column: 13, scope: !746)
!758 = !DILocation(line: 353, column: 17, scope: !746)
!759 = !DILocation(line: 355, column: 15, scope: !746)
!760 = !DILocation(line: 355, column: 21, scope: !746)
!761 = !DILocation(line: 355, column: 25, scope: !746)
!762 = !DILocation(line: 355, column: 29, scope: !746)
!763 = !DILocation(line: 355, column: 9, scope: !746)
!764 = !DILocation(line: 356, column: 8, scope: !684)
!765 = !DILocation(line: 338, column: 40, scope: !678)
!766 = !DILocation(line: 338, column: 8, scope: !678)
!767 = distinct !{!767, !682, !768, !399}
!768 = !DILocation(line: 356, column: 8, scope: !673)
!769 = !DILocation(line: 357, column: 24, scope: !471)
!770 = !DILocation(line: 357, column: 26, scope: !471)
!771 = !DILocation(line: 357, column: 31, scope: !471)
!772 = !DILocation(line: 357, column: 34, scope: !471)
!773 = !DILocation(line: 357, column: 40, scope: !471)
!774 = !DILocation(line: 357, column: 47, scope: !471)
!775 = !DILocation(line: 357, column: 55, scope: !471)
!776 = !DILocation(line: 357, column: 63, scope: !471)
!777 = !DILocation(line: 357, column: 8, scope: !471)
!778 = !DILocation(line: 358, column: 8, scope: !471)
!779 = !DILocation(line: 360, column: 7, scope: !468)
!780 = !DILocation(line: 361, column: 8, scope: !781)
!781 = distinct !DILexicalBlock(scope: !782, file: !2, line: 361, column: 8)
!782 = distinct !DILexicalBlock(scope: !463, file: !2, line: 360, column: 14)
!783 = !DILocation(line: 361, column: 10, scope: !781)
!784 = !DILocation(line: 361, column: 8, scope: !782)
!785 = !DILocation(line: 362, column: 24, scope: !786)
!786 = distinct !DILexicalBlock(scope: !781, file: !2, line: 361, column: 21)
!787 = !DILocation(line: 362, column: 32, scope: !786)
!788 = !DILocation(line: 362, column: 35, scope: !786)
!789 = !DILocation(line: 362, column: 41, scope: !786)
!790 = !DILocation(line: 362, column: 48, scope: !786)
!791 = !DILocation(line: 362, column: 56, scope: !786)
!792 = !DILocation(line: 362, column: 64, scope: !786)
!793 = !DILocation(line: 362, column: 8, scope: !786)
!794 = !DILocation(line: 363, column: 4, scope: !786)
!795 = !DILocation(line: 364, column: 12, scope: !796)
!796 = distinct !DILexicalBlock(scope: !797, file: !2, line: 364, column: 12)
!797 = distinct !DILexicalBlock(scope: !781, file: !2, line: 363, column: 11)
!798 = !DILocation(line: 364, column: 19, scope: !796)
!799 = !DILocation(line: 364, column: 12, scope: !797)
!800 = !DILocation(line: 366, column: 21, scope: !801)
!801 = distinct !DILexicalBlock(scope: !796, file: !2, line: 364, column: 25)
!802 = !DILocation(line: 366, column: 29, scope: !801)
!803 = !DILocation(line: 366, column: 32, scope: !801)
!804 = !DILocation(line: 366, column: 38, scope: !801)
!805 = !DILocation(line: 366, column: 45, scope: !801)
!806 = !DILocation(line: 366, column: 53, scope: !801)
!807 = !DILocation(line: 366, column: 61, scope: !801)
!808 = !DILocation(line: 366, column: 5, scope: !801)
!809 = !DILocation(line: 367, column: 8, scope: !801)
!810 = !DILocation(line: 377, column: 9, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !2, line: 377, column: 9)
!812 = distinct !DILexicalBlock(scope: !796, file: !2, line: 367, column: 15)
!813 = !DILocation(line: 377, column: 18, scope: !811)
!814 = !DILocation(line: 377, column: 20, scope: !811)
!815 = !DILocation(line: 377, column: 38, scope: !811)
!816 = !DILocation(line: 377, column: 16, scope: !811)
!817 = !DILocation(line: 377, column: 9, scope: !812)
!818 = !DILocation(line: 378, column: 16, scope: !819)
!819 = distinct !DILexicalBlock(scope: !811, file: !2, line: 377, column: 43)
!820 = !DILocation(line: 378, column: 21, scope: !819)
!821 = !DILocation(line: 378, column: 9, scope: !819)
!822 = !DILocation(line: 378, column: 14, scope: !819)
!823 = !DILocation(line: 379, column: 20, scope: !819)
!824 = !DILocation(line: 379, column: 26, scope: !819)
!825 = !DILocation(line: 379, column: 34, scope: !819)
!826 = !DILocation(line: 379, column: 41, scope: !819)
!827 = !DILocation(line: 379, column: 47, scope: !819)
!828 = !DILocation(line: 380, column: 6, scope: !819)
!829 = !DILocation(line: 380, column: 14, scope: !819)
!830 = !DILocation(line: 380, column: 25, scope: !819)
!831 = !DILocation(line: 380, column: 28, scope: !819)
!832 = !DILocation(line: 380, column: 38, scope: !819)
!833 = !DILocation(line: 379, column: 9, scope: !819)
!834 = !DILocation(line: 381, column: 16, scope: !819)
!835 = !DILocation(line: 381, column: 9, scope: !819)
!836 = !DILocation(line: 381, column: 14, scope: !819)
!837 = !DILocation(line: 382, column: 16, scope: !819)
!838 = !DILocation(line: 382, column: 9, scope: !819)
!839 = !DILocation(line: 382, column: 14, scope: !819)
!840 = !DILocation(line: 383, column: 11, scope: !819)
!841 = !DILocation(line: 384, column: 23, scope: !819)
!842 = !DILocation(line: 384, column: 22, scope: !819)
!843 = !DILocation(line: 384, column: 13, scope: !819)
!844 = !DILocation(line: 384, column: 11, scope: !819)
!845 = !DILocation(line: 385, column: 17, scope: !819)
!846 = !DILocation(line: 385, column: 9, scope: !819)
!847 = !DILocation(line: 385, column: 14, scope: !819)
!848 = !DILocation(line: 386, column: 17, scope: !819)
!849 = !DILocation(line: 386, column: 9, scope: !819)
!850 = !DILocation(line: 386, column: 14, scope: !819)
!851 = !DILocation(line: 387, column: 19, scope: !819)
!852 = !DILocation(line: 387, column: 28, scope: !819)
!853 = !DILocation(line: 387, column: 9, scope: !819)
!854 = !DILocation(line: 387, column: 17, scope: !819)
!855 = !DILocation(line: 388, column: 13, scope: !856)
!856 = distinct !DILexicalBlock(scope: !819, file: !2, line: 388, column: 13)
!857 = !DILocation(line: 388, column: 18, scope: !856)
!858 = !DILocation(line: 388, column: 13, scope: !819)
!859 = !DILocation(line: 388, column: 43, scope: !856)
!860 = !DILocation(line: 388, column: 52, scope: !856)
!861 = !DILocation(line: 388, column: 54, scope: !856)
!862 = !DILocation(line: 388, column: 42, scope: !856)
!863 = !DILocation(line: 388, column: 32, scope: !856)
!864 = !DILocation(line: 388, column: 40, scope: !856)
!865 = !DILocation(line: 389, column: 24, scope: !856)
!866 = !DILocation(line: 389, column: 33, scope: !856)
!867 = !DILocation(line: 389, column: 35, scope: !856)
!868 = !DILocation(line: 389, column: 14, scope: !856)
!869 = !DILocation(line: 389, column: 22, scope: !856)
!870 = !DILocation(line: 390, column: 15, scope: !819)
!871 = !DILocation(line: 390, column: 24, scope: !819)
!872 = !DILocation(line: 390, column: 30, scope: !819)
!873 = !DILocation(line: 390, column: 9, scope: !819)
!874 = !DILocation(line: 391, column: 21, scope: !819)
!875 = !DILocation(line: 391, column: 30, scope: !819)
!876 = !DILocation(line: 391, column: 9, scope: !819)
!877 = !DILocation(line: 391, column: 19, scope: !819)
!878 = !DILocation(line: 392, column: 13, scope: !879)
!879 = distinct !DILexicalBlock(scope: !819, file: !2, line: 392, column: 13)
!880 = !DILocation(line: 392, column: 18, scope: !879)
!881 = !DILocation(line: 392, column: 13, scope: !819)
!882 = !DILocation(line: 392, column: 45, scope: !879)
!883 = !DILocation(line: 392, column: 54, scope: !879)
!884 = !DILocation(line: 392, column: 56, scope: !879)
!885 = !DILocation(line: 392, column: 44, scope: !879)
!886 = !DILocation(line: 392, column: 32, scope: !879)
!887 = !DILocation(line: 392, column: 42, scope: !879)
!888 = !DILocation(line: 393, column: 26, scope: !879)
!889 = !DILocation(line: 393, column: 35, scope: !879)
!890 = !DILocation(line: 393, column: 37, scope: !879)
!891 = !DILocation(line: 393, column: 14, scope: !879)
!892 = !DILocation(line: 393, column: 24, scope: !879)
!893 = !DILocation(line: 394, column: 15, scope: !819)
!894 = !DILocation(line: 394, column: 24, scope: !819)
!895 = !DILocation(line: 394, column: 32, scope: !819)
!896 = !DILocation(line: 394, column: 9, scope: !819)
!897 = !DILocation(line: 395, column: 20, scope: !819)
!898 = !DILocation(line: 395, column: 9, scope: !819)
!899 = !DILocation(line: 395, column: 17, scope: !819)
!900 = !DILocation(line: 396, column: 20, scope: !819)
!901 = !DILocation(line: 396, column: 9, scope: !819)
!902 = !DILocation(line: 396, column: 17, scope: !819)
!903 = !DILocation(line: 397, column: 13, scope: !904)
!904 = distinct !DILexicalBlock(scope: !819, file: !2, line: 397, column: 13)
!905 = !DILocation(line: 397, column: 21, scope: !904)
!906 = !DILocation(line: 397, column: 27, scope: !904)
!907 = !DILocation(line: 397, column: 30, scope: !904)
!908 = !DILocation(line: 397, column: 38, scope: !904)
!909 = !DILocation(line: 397, column: 13, scope: !819)
!910 = !DILocation(line: 398, column: 15, scope: !904)
!911 = !DILocation(line: 398, column: 19, scope: !904)
!912 = !DILocation(line: 398, column: 21, scope: !904)
!913 = !DILocation(line: 398, column: 26, scope: !904)
!914 = !DILocation(line: 398, column: 6, scope: !904)
!915 = !DILocation(line: 398, column: 10, scope: !904)
!916 = !DILocation(line: 398, column: 13, scope: !904)
!917 = !DILocation(line: 400, column: 12, scope: !904)
!918 = !DILocation(line: 400, column: 15, scope: !904)
!919 = !DILocation(line: 400, column: 22, scope: !904)
!920 = !DILocation(line: 400, column: 26, scope: !904)
!921 = !DILocation(line: 400, column: 6, scope: !904)
!922 = !DILocation(line: 401, column: 25, scope: !819)
!923 = !DILocation(line: 401, column: 32, scope: !819)
!924 = !DILocation(line: 401, column: 37, scope: !819)
!925 = !DILocation(line: 401, column: 40, scope: !819)
!926 = !DILocation(line: 401, column: 46, scope: !819)
!927 = !DILocation(line: 402, column: 11, scope: !819)
!928 = !DILocation(line: 402, column: 19, scope: !819)
!929 = !DILocation(line: 402, column: 27, scope: !819)
!930 = !DILocation(line: 401, column: 9, scope: !819)
!931 = !DILocation(line: 403, column: 5, scope: !819)
!932 = !DILocation(line: 404, column: 25, scope: !933)
!933 = distinct !DILexicalBlock(scope: !811, file: !2, line: 403, column: 12)
!934 = !DILocation(line: 404, column: 33, scope: !933)
!935 = !DILocation(line: 404, column: 36, scope: !933)
!936 = !DILocation(line: 404, column: 42, scope: !933)
!937 = !DILocation(line: 405, column: 11, scope: !933)
!938 = !DILocation(line: 405, column: 19, scope: !933)
!939 = !DILocation(line: 405, column: 27, scope: !933)
!940 = !DILocation(line: 404, column: 9, scope: !933)
!941 = !DILocation(line: 412, column: 18, scope: !464)
!942 = !DILocation(line: 412, column: 24, scope: !464)
!943 = !DILocation(line: 412, column: 27, scope: !464)
!944 = !DILocation(line: 412, column: 34, scope: !464)
!945 = !DILocation(line: 412, column: 40, scope: !464)
!946 = !DILocation(line: 412, column: 46, scope: !464)
!947 = !DILocation(line: 412, column: 54, scope: !464)
!948 = !DILocation(line: 412, column: 65, scope: !464)
!949 = !DILocation(line: 413, column: 4, scope: !464)
!950 = !DILocation(line: 413, column: 14, scope: !464)
!951 = !DILocation(line: 412, column: 7, scope: !464)
!952 = !DILocation(line: 414, column: 7, scope: !464)
!953 = !DILocation(line: 418, column: 7, scope: !954)
!954 = distinct !DILexicalBlock(scope: !186, file: !2, line: 418, column: 7)
!955 = !DILocation(line: 418, column: 9, scope: !954)
!956 = !DILocation(line: 418, column: 7, scope: !186)
!957 = !DILocation(line: 419, column: 15, scope: !958)
!958 = distinct !DILexicalBlock(scope: !954, file: !2, line: 418, column: 15)
!959 = !DILocation(line: 419, column: 7, scope: !958)
!960 = !DILocation(line: 424, column: 10, scope: !961)
!961 = distinct !DILexicalBlock(scope: !958, file: !2, line: 419, column: 23)
!962 = !DILocation(line: 425, column: 8, scope: !963)
!963 = distinct !DILexicalBlock(scope: !961, file: !2, line: 425, column: 8)
!964 = !DILocation(line: 425, column: 19, scope: !963)
!965 = !DILocation(line: 425, column: 8, scope: !961)
!966 = !DILocation(line: 425, column: 25, scope: !963)
!967 = !DILocation(line: 426, column: 8, scope: !968)
!968 = distinct !DILexicalBlock(scope: !961, file: !2, line: 426, column: 8)
!969 = !DILocation(line: 426, column: 18, scope: !968)
!970 = !DILocation(line: 426, column: 8, scope: !961)
!971 = !DILocation(line: 426, column: 24, scope: !968)
!972 = !DILocation(line: 427, column: 8, scope: !973)
!973 = distinct !DILexicalBlock(scope: !961, file: !2, line: 427, column: 8)
!974 = !DILocation(line: 427, column: 14, scope: !973)
!975 = !DILocation(line: 427, column: 8, scope: !961)
!976 = !DILocation(line: 427, column: 20, scope: !973)
!977 = !DILocation(line: 428, column: 8, scope: !978)
!978 = distinct !DILexicalBlock(scope: !961, file: !2, line: 428, column: 8)
!979 = !DILocation(line: 428, column: 14, scope: !978)
!980 = !DILocation(line: 428, column: 19, scope: !978)
!981 = !DILocation(line: 428, column: 22, scope: !978)
!982 = !DILocation(line: 428, column: 28, scope: !978)
!983 = !DILocation(line: 428, column: 8, scope: !961)
!984 = !DILocation(line: 433, column: 28, scope: !985)
!985 = distinct !DILexicalBlock(scope: !978, file: !2, line: 428, column: 34)
!986 = !DILocation(line: 433, column: 12, scope: !985)
!987 = !DILocation(line: 433, column: 10, scope: !985)
!988 = !DILocation(line: 434, column: 18, scope: !985)
!989 = !DILocation(line: 434, column: 17, scope: !985)
!990 = !DILocation(line: 434, column: 22, scope: !985)
!991 = !DILocation(line: 434, column: 20, scope: !985)
!992 = !DILocation(line: 434, column: 8, scope: !985)
!993 = !DILocation(line: 434, column: 15, scope: !985)
!994 = !DILocation(line: 435, column: 17, scope: !985)
!995 = !DILocation(line: 435, column: 8, scope: !985)
!996 = !DILocation(line: 435, column: 15, scope: !985)
!997 = !DILocation(line: 436, column: 12, scope: !998)
!998 = distinct !DILexicalBlock(scope: !985, file: !2, line: 436, column: 12)
!999 = !DILocation(line: 436, column: 23, scope: !998)
!1000 = !DILocation(line: 436, column: 12, scope: !985)
!1001 = !DILocation(line: 437, column: 17, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !998, file: !2, line: 436, column: 29)
!1003 = !DILocation(line: 437, column: 5, scope: !1002)
!1004 = !DILocation(line: 437, column: 15, scope: !1002)
!1005 = !DILocation(line: 438, column: 17, scope: !1002)
!1006 = !DILocation(line: 438, column: 5, scope: !1002)
!1007 = !DILocation(line: 438, column: 15, scope: !1002)
!1008 = !DILocation(line: 439, column: 8, scope: !1002)
!1009 = !DILocation(line: 439, column: 19, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !998, file: !2, line: 439, column: 19)
!1011 = !DILocation(line: 439, column: 29, scope: !1010)
!1012 = !DILocation(line: 439, column: 19, scope: !998)
!1013 = !DILocation(line: 440, column: 18, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 439, column: 35)
!1015 = !DILocation(line: 440, column: 5, scope: !1014)
!1016 = !DILocation(line: 440, column: 16, scope: !1014)
!1017 = !DILocation(line: 441, column: 18, scope: !1014)
!1018 = !DILocation(line: 441, column: 5, scope: !1014)
!1019 = !DILocation(line: 441, column: 16, scope: !1014)
!1020 = !DILocation(line: 442, column: 8, scope: !1014)
!1021 = !DILocation(line: 443, column: 22, scope: !985)
!1022 = !DILocation(line: 443, column: 8, scope: !985)
!1023 = !DILocation(line: 443, column: 17, scope: !985)
!1024 = !DILocation(line: 443, column: 20, scope: !985)
!1025 = !DILocation(line: 444, column: 24, scope: !985)
!1026 = !DILocation(line: 444, column: 8, scope: !985)
!1027 = !DILocation(line: 444, column: 17, scope: !985)
!1028 = !DILocation(line: 444, column: 18, scope: !985)
!1029 = !DILocation(line: 444, column: 22, scope: !985)
!1030 = !DILocation(line: 445, column: 12, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !985, file: !2, line: 445, column: 12)
!1032 = !DILocation(line: 445, column: 17, scope: !1031)
!1033 = !DILocation(line: 445, column: 12, scope: !985)
!1034 = !DILocation(line: 445, column: 50, scope: !1031)
!1035 = !DILocation(line: 445, column: 59, scope: !1031)
!1036 = !DILocation(line: 445, column: 61, scope: !1031)
!1037 = !DILocation(line: 445, column: 49, scope: !1031)
!1038 = !DILocation(line: 445, column: 31, scope: !1031)
!1039 = !DILocation(line: 445, column: 40, scope: !1031)
!1040 = !DILocation(line: 445, column: 42, scope: !1031)
!1041 = !DILocation(line: 445, column: 47, scope: !1031)
!1042 = !DILocation(line: 446, column: 17, scope: !985)
!1043 = !DILocation(line: 446, column: 8, scope: !985)
!1044 = !DILocation(line: 446, column: 12, scope: !985)
!1045 = !DILocation(line: 446, column: 15, scope: !985)
!1046 = !DILocation(line: 447, column: 21, scope: !985)
!1047 = !DILocation(line: 447, column: 8, scope: !985)
!1048 = !DILocation(line: 447, column: 12, scope: !985)
!1049 = !DILocation(line: 447, column: 14, scope: !985)
!1050 = !DILocation(line: 447, column: 19, scope: !985)
!1051 = !DILocation(line: 449, column: 14, scope: !985)
!1052 = !DILocation(line: 449, column: 24, scope: !985)
!1053 = !DILocation(line: 449, column: 33, scope: !985)
!1054 = !DILocation(line: 449, column: 37, scope: !985)
!1055 = !DILocation(line: 449, column: 8, scope: !985)
!1056 = !DILocation(line: 450, column: 14, scope: !985)
!1057 = !DILocation(line: 450, column: 18, scope: !985)
!1058 = !DILocation(line: 450, column: 22, scope: !985)
!1059 = !DILocation(line: 450, column: 26, scope: !985)
!1060 = !DILocation(line: 450, column: 8, scope: !985)
!1061 = !DILocation(line: 451, column: 14, scope: !985)
!1062 = !DILocation(line: 451, column: 24, scope: !985)
!1063 = !DILocation(line: 451, column: 28, scope: !985)
!1064 = !DILocation(line: 451, column: 32, scope: !985)
!1065 = !DILocation(line: 451, column: 8, scope: !985)
!1066 = !DILocation(line: 452, column: 12, scope: !985)
!1067 = !DILocation(line: 452, column: 10, scope: !985)
!1068 = !DILocation(line: 453, column: 12, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !985, file: !2, line: 453, column: 12)
!1070 = !DILocation(line: 453, column: 20, scope: !1069)
!1071 = !DILocation(line: 453, column: 26, scope: !1069)
!1072 = !DILocation(line: 453, column: 29, scope: !1069)
!1073 = !DILocation(line: 453, column: 37, scope: !1069)
!1074 = !DILocation(line: 453, column: 12, scope: !985)
!1075 = !DILocation(line: 454, column: 5, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 453, column: 44)
!1077 = !DILocation(line: 454, column: 14, scope: !1076)
!1078 = !DILocation(line: 454, column: 17, scope: !1076)
!1079 = !DILocation(line: 455, column: 5, scope: !1076)
!1080 = !DILocation(line: 455, column: 14, scope: !1076)
!1081 = !DILocation(line: 455, column: 15, scope: !1076)
!1082 = !DILocation(line: 455, column: 19, scope: !1076)
!1083 = !DILocation(line: 456, column: 8, scope: !1076)
!1084 = !DILocation(line: 457, column: 13, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 456, column: 15)
!1086 = !DILocation(line: 457, column: 5, scope: !1085)
!1087 = !DILocation(line: 457, column: 10, scope: !1085)
!1088 = !DILocation(line: 458, column: 13, scope: !1085)
!1089 = !DILocation(line: 458, column: 5, scope: !1085)
!1090 = !DILocation(line: 458, column: 10, scope: !1085)
!1091 = !DILocation(line: 459, column: 11, scope: !1085)
!1092 = !DILocation(line: 459, column: 14, scope: !1085)
!1093 = !DILocation(line: 459, column: 21, scope: !1085)
!1094 = !DILocation(line: 459, column: 30, scope: !1085)
!1095 = !DILocation(line: 459, column: 5, scope: !1085)
!1096 = !DILocation(line: 461, column: 4, scope: !985)
!1097 = !DILocation(line: 462, column: 23, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !978, file: !2, line: 461, column: 11)
!1099 = !DILocation(line: 462, column: 17, scope: !1098)
!1100 = !DILocation(line: 462, column: 8, scope: !1098)
!1101 = !DILocation(line: 462, column: 12, scope: !1098)
!1102 = !DILocation(line: 462, column: 15, scope: !1098)
!1103 = !DILocation(line: 463, column: 25, scope: !1098)
!1104 = !DILocation(line: 463, column: 19, scope: !1098)
!1105 = !DILocation(line: 463, column: 8, scope: !1098)
!1106 = !DILocation(line: 463, column: 12, scope: !1098)
!1107 = !DILocation(line: 463, column: 13, scope: !1098)
!1108 = !DILocation(line: 463, column: 17, scope: !1098)
!1109 = !DILocation(line: 464, column: 24, scope: !1098)
!1110 = !DILocation(line: 464, column: 27, scope: !1098)
!1111 = !DILocation(line: 464, column: 33, scope: !1098)
!1112 = !DILocation(line: 464, column: 40, scope: !1098)
!1113 = !DILocation(line: 464, column: 46, scope: !1098)
!1114 = !DILocation(line: 464, column: 54, scope: !1098)
!1115 = !DILocation(line: 464, column: 62, scope: !1098)
!1116 = !DILocation(line: 465, column: 10, scope: !1098)
!1117 = !DILocation(line: 465, column: 13, scope: !1098)
!1118 = !DILocation(line: 464, column: 8, scope: !1098)
!1119 = !DILocation(line: 467, column: 4, scope: !961)
!1120 = !DILocation(line: 474, column: 19, scope: !961)
!1121 = !DILocation(line: 474, column: 13, scope: !961)
!1122 = !DILocation(line: 474, column: 4, scope: !961)
!1123 = !DILocation(line: 474, column: 8, scope: !961)
!1124 = !DILocation(line: 474, column: 11, scope: !961)
!1125 = !DILocation(line: 475, column: 23, scope: !961)
!1126 = !DILocation(line: 475, column: 17, scope: !961)
!1127 = !DILocation(line: 475, column: 4, scope: !961)
!1128 = !DILocation(line: 475, column: 8, scope: !961)
!1129 = !DILocation(line: 475, column: 10, scope: !961)
!1130 = !DILocation(line: 475, column: 15, scope: !961)
!1131 = !DILocation(line: 476, column: 14, scope: !961)
!1132 = !DILocation(line: 476, column: 23, scope: !961)
!1133 = !DILocation(line: 476, column: 4, scope: !961)
!1134 = !DILocation(line: 476, column: 12, scope: !961)
!1135 = !DILocation(line: 477, column: 8, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !961, file: !2, line: 477, column: 8)
!1137 = !DILocation(line: 477, column: 13, scope: !1136)
!1138 = !DILocation(line: 477, column: 8, scope: !961)
!1139 = !DILocation(line: 477, column: 38, scope: !1136)
!1140 = !DILocation(line: 477, column: 47, scope: !1136)
!1141 = !DILocation(line: 477, column: 49, scope: !1136)
!1142 = !DILocation(line: 477, column: 37, scope: !1136)
!1143 = !DILocation(line: 477, column: 27, scope: !1136)
!1144 = !DILocation(line: 477, column: 35, scope: !1136)
!1145 = !DILocation(line: 478, column: 19, scope: !1136)
!1146 = !DILocation(line: 478, column: 28, scope: !1136)
!1147 = !DILocation(line: 478, column: 30, scope: !1136)
!1148 = !DILocation(line: 478, column: 9, scope: !1136)
!1149 = !DILocation(line: 478, column: 17, scope: !1136)
!1150 = !DILocation(line: 479, column: 10, scope: !961)
!1151 = !DILocation(line: 479, column: 17, scope: !961)
!1152 = !DILocation(line: 479, column: 21, scope: !961)
!1153 = !DILocation(line: 479, column: 25, scope: !961)
!1154 = !DILocation(line: 479, column: 4, scope: !961)
!1155 = !DILocation(line: 480, column: 10, scope: !961)
!1156 = !DILocation(line: 480, column: 19, scope: !961)
!1157 = !DILocation(line: 480, column: 22, scope: !961)
!1158 = !DILocation(line: 480, column: 4, scope: !961)
!1159 = !DILocation(line: 481, column: 16, scope: !961)
!1160 = !DILocation(line: 481, column: 25, scope: !961)
!1161 = !DILocation(line: 481, column: 4, scope: !961)
!1162 = !DILocation(line: 481, column: 14, scope: !961)
!1163 = !DILocation(line: 482, column: 8, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !961, file: !2, line: 482, column: 8)
!1165 = !DILocation(line: 482, column: 13, scope: !1164)
!1166 = !DILocation(line: 482, column: 8, scope: !961)
!1167 = !DILocation(line: 482, column: 40, scope: !1164)
!1168 = !DILocation(line: 482, column: 49, scope: !1164)
!1169 = !DILocation(line: 482, column: 51, scope: !1164)
!1170 = !DILocation(line: 482, column: 39, scope: !1164)
!1171 = !DILocation(line: 482, column: 27, scope: !1164)
!1172 = !DILocation(line: 482, column: 37, scope: !1164)
!1173 = !DILocation(line: 483, column: 21, scope: !1164)
!1174 = !DILocation(line: 483, column: 30, scope: !1164)
!1175 = !DILocation(line: 483, column: 32, scope: !1164)
!1176 = !DILocation(line: 483, column: 9, scope: !1164)
!1177 = !DILocation(line: 483, column: 19, scope: !1164)
!1178 = !DILocation(line: 484, column: 10, scope: !961)
!1179 = !DILocation(line: 484, column: 19, scope: !961)
!1180 = !DILocation(line: 484, column: 23, scope: !961)
!1181 = !DILocation(line: 484, column: 27, scope: !961)
!1182 = !DILocation(line: 484, column: 4, scope: !961)
!1183 = !DILocation(line: 485, column: 10, scope: !961)
!1184 = !DILocation(line: 485, column: 19, scope: !961)
!1185 = !DILocation(line: 485, column: 22, scope: !961)
!1186 = !DILocation(line: 485, column: 4, scope: !961)
!1187 = !DILocation(line: 486, column: 15, scope: !961)
!1188 = !DILocation(line: 486, column: 4, scope: !961)
!1189 = !DILocation(line: 486, column: 12, scope: !961)
!1190 = !DILocation(line: 487, column: 15, scope: !961)
!1191 = !DILocation(line: 487, column: 4, scope: !961)
!1192 = !DILocation(line: 487, column: 12, scope: !961)
!1193 = !DILocation(line: 488, column: 6, scope: !961)
!1194 = !DILocation(line: 489, column: 18, scope: !961)
!1195 = !DILocation(line: 489, column: 17, scope: !961)
!1196 = !DILocation(line: 489, column: 8, scope: !961)
!1197 = !DILocation(line: 489, column: 6, scope: !961)
!1198 = !DILocation(line: 490, column: 13, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !961, file: !2, line: 490, column: 4)
!1200 = !DILocation(line: 490, column: 20, scope: !1199)
!1201 = !DILocation(line: 490, column: 11, scope: !1199)
!1202 = !DILocation(line: 490, column: 9, scope: !1199)
!1203 = !DILocation(line: 490, column: 25, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 490, column: 4)
!1205 = !DILocation(line: 490, column: 29, scope: !1204)
!1206 = !DILocation(line: 490, column: 31, scope: !1204)
!1207 = !DILocation(line: 490, column: 27, scope: !1204)
!1208 = !DILocation(line: 490, column: 4, scope: !1199)
!1209 = !DILocation(line: 491, column: 17, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 490, column: 41)
!1211 = !DILocation(line: 491, column: 15, scope: !1210)
!1212 = !DILocation(line: 491, column: 11, scope: !1210)
!1213 = !DILocation(line: 492, column: 19, scope: !1210)
!1214 = !DILocation(line: 492, column: 8, scope: !1210)
!1215 = !DILocation(line: 492, column: 16, scope: !1210)
!1216 = !DILocation(line: 493, column: 19, scope: !1210)
!1217 = !DILocation(line: 493, column: 8, scope: !1210)
!1218 = !DILocation(line: 493, column: 16, scope: !1210)
!1219 = !DILocation(line: 494, column: 15, scope: !1210)
!1220 = !DILocation(line: 494, column: 24, scope: !1210)
!1221 = !DILocation(line: 494, column: 8, scope: !1210)
!1222 = !DILocation(line: 494, column: 13, scope: !1210)
!1223 = !DILocation(line: 495, column: 12, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1210, file: !2, line: 495, column: 12)
!1225 = !DILocation(line: 495, column: 17, scope: !1224)
!1226 = !DILocation(line: 495, column: 12, scope: !1210)
!1227 = !DILocation(line: 495, column: 39, scope: !1224)
!1228 = !DILocation(line: 495, column: 48, scope: !1224)
!1229 = !DILocation(line: 495, column: 51, scope: !1224)
!1230 = !DILocation(line: 495, column: 38, scope: !1224)
!1231 = !DILocation(line: 495, column: 31, scope: !1224)
!1232 = !DILocation(line: 495, column: 36, scope: !1224)
!1233 = !DILocation(line: 496, column: 20, scope: !1224)
!1234 = !DILocation(line: 496, column: 29, scope: !1224)
!1235 = !DILocation(line: 496, column: 32, scope: !1224)
!1236 = !DILocation(line: 496, column: 13, scope: !1224)
!1237 = !DILocation(line: 496, column: 18, scope: !1224)
!1238 = !DILocation(line: 497, column: 14, scope: !1210)
!1239 = !DILocation(line: 497, column: 23, scope: !1210)
!1240 = !DILocation(line: 497, column: 26, scope: !1210)
!1241 = !DILocation(line: 497, column: 8, scope: !1210)
!1242 = !DILocation(line: 498, column: 20, scope: !1210)
!1243 = !DILocation(line: 498, column: 29, scope: !1210)
!1244 = !DILocation(line: 498, column: 8, scope: !1210)
!1245 = !DILocation(line: 498, column: 18, scope: !1210)
!1246 = !DILocation(line: 499, column: 12, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1210, file: !2, line: 499, column: 12)
!1248 = !DILocation(line: 499, column: 17, scope: !1247)
!1249 = !DILocation(line: 499, column: 12, scope: !1210)
!1250 = !DILocation(line: 499, column: 44, scope: !1247)
!1251 = !DILocation(line: 499, column: 53, scope: !1247)
!1252 = !DILocation(line: 499, column: 56, scope: !1247)
!1253 = !DILocation(line: 499, column: 43, scope: !1247)
!1254 = !DILocation(line: 499, column: 31, scope: !1247)
!1255 = !DILocation(line: 499, column: 41, scope: !1247)
!1256 = !DILocation(line: 500, column: 25, scope: !1247)
!1257 = !DILocation(line: 500, column: 34, scope: !1247)
!1258 = !DILocation(line: 500, column: 37, scope: !1247)
!1259 = !DILocation(line: 500, column: 13, scope: !1247)
!1260 = !DILocation(line: 500, column: 23, scope: !1247)
!1261 = !DILocation(line: 501, column: 14, scope: !1210)
!1262 = !DILocation(line: 501, column: 23, scope: !1210)
!1263 = !DILocation(line: 501, column: 31, scope: !1210)
!1264 = !DILocation(line: 501, column: 8, scope: !1210)
!1265 = !DILocation(line: 502, column: 16, scope: !1210)
!1266 = !DILocation(line: 502, column: 8, scope: !1210)
!1267 = !DILocation(line: 502, column: 13, scope: !1210)
!1268 = !DILocation(line: 503, column: 16, scope: !1210)
!1269 = !DILocation(line: 503, column: 8, scope: !1210)
!1270 = !DILocation(line: 503, column: 13, scope: !1210)
!1271 = !DILocation(line: 504, column: 12, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1210, file: !2, line: 504, column: 12)
!1273 = !DILocation(line: 504, column: 17, scope: !1272)
!1274 = !DILocation(line: 504, column: 23, scope: !1272)
!1275 = !DILocation(line: 504, column: 26, scope: !1272)
!1276 = !DILocation(line: 504, column: 31, scope: !1272)
!1277 = !DILocation(line: 504, column: 12, scope: !1210)
!1278 = !DILocation(line: 505, column: 15, scope: !1272)
!1279 = !DILocation(line: 505, column: 19, scope: !1272)
!1280 = !DILocation(line: 505, column: 22, scope: !1272)
!1281 = !DILocation(line: 505, column: 27, scope: !1272)
!1282 = !DILocation(line: 505, column: 5, scope: !1272)
!1283 = !DILocation(line: 505, column: 9, scope: !1272)
!1284 = !DILocation(line: 505, column: 13, scope: !1272)
!1285 = !DILocation(line: 507, column: 11, scope: !1272)
!1286 = !DILocation(line: 507, column: 17, scope: !1272)
!1287 = !DILocation(line: 507, column: 21, scope: !1272)
!1288 = !DILocation(line: 507, column: 25, scope: !1272)
!1289 = !DILocation(line: 507, column: 5, scope: !1272)
!1290 = !DILocation(line: 508, column: 4, scope: !1210)
!1291 = !DILocation(line: 490, column: 36, scope: !1204)
!1292 = !DILocation(line: 490, column: 4, scope: !1204)
!1293 = distinct !{!1293, !1208, !1294, !399}
!1294 = !DILocation(line: 508, column: 4, scope: !1199)
!1295 = !DILocation(line: 509, column: 20, scope: !961)
!1296 = !DILocation(line: 509, column: 22, scope: !961)
!1297 = !DILocation(line: 509, column: 27, scope: !961)
!1298 = !DILocation(line: 509, column: 30, scope: !961)
!1299 = !DILocation(line: 509, column: 36, scope: !961)
!1300 = !DILocation(line: 509, column: 43, scope: !961)
!1301 = !DILocation(line: 509, column: 51, scope: !961)
!1302 = !DILocation(line: 509, column: 59, scope: !961)
!1303 = !DILocation(line: 509, column: 4, scope: !961)
!1304 = !DILocation(line: 510, column: 20, scope: !961)
!1305 = !DILocation(line: 510, column: 23, scope: !961)
!1306 = !DILocation(line: 510, column: 29, scope: !961)
!1307 = !DILocation(line: 510, column: 36, scope: !961)
!1308 = !DILocation(line: 510, column: 42, scope: !961)
!1309 = !DILocation(line: 510, column: 50, scope: !961)
!1310 = !DILocation(line: 510, column: 58, scope: !961)
!1311 = !DILocation(line: 510, column: 61, scope: !961)
!1312 = !DILocation(line: 510, column: 64, scope: !961)
!1313 = !DILocation(line: 510, column: 4, scope: !961)
!1314 = !DILocation(line: 511, column: 4, scope: !961)
!1315 = !DILocation(line: 513, column: 3, scope: !958)
!1316 = !DILocation(line: 514, column: 11, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !2, line: 514, column: 11)
!1318 = distinct !DILexicalBlock(scope: !954, file: !2, line: 513, column: 10)
!1319 = !DILocation(line: 514, column: 13, scope: !1317)
!1320 = !DILocation(line: 514, column: 11, scope: !1318)
!1321 = !DILocation(line: 515, column: 20, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1317, file: !2, line: 514, column: 24)
!1323 = !DILocation(line: 515, column: 28, scope: !1322)
!1324 = !DILocation(line: 515, column: 31, scope: !1322)
!1325 = !DILocation(line: 515, column: 37, scope: !1322)
!1326 = !DILocation(line: 515, column: 44, scope: !1322)
!1327 = !DILocation(line: 515, column: 52, scope: !1322)
!1328 = !DILocation(line: 515, column: 60, scope: !1322)
!1329 = !DILocation(line: 515, column: 4, scope: !1322)
!1330 = !DILocation(line: 516, column: 20, scope: !1322)
!1331 = !DILocation(line: 516, column: 23, scope: !1322)
!1332 = !DILocation(line: 516, column: 29, scope: !1322)
!1333 = !DILocation(line: 516, column: 36, scope: !1322)
!1334 = !DILocation(line: 516, column: 42, scope: !1322)
!1335 = !DILocation(line: 516, column: 50, scope: !1322)
!1336 = !DILocation(line: 516, column: 58, scope: !1322)
!1337 = !DILocation(line: 516, column: 61, scope: !1322)
!1338 = !DILocation(line: 516, column: 64, scope: !1322)
!1339 = !DILocation(line: 516, column: 4, scope: !1322)
!1340 = !DILocation(line: 517, column: 7, scope: !1322)
!1341 = !DILocation(line: 518, column: 12, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1317, file: !2, line: 517, column: 14)
!1343 = !DILocation(line: 518, column: 19, scope: !1342)
!1344 = !DILocation(line: 518, column: 10, scope: !1342)
!1345 = !DILocation(line: 526, column: 8, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1342, file: !2, line: 526, column: 8)
!1347 = !DILocation(line: 526, column: 16, scope: !1346)
!1348 = !DILocation(line: 526, column: 18, scope: !1346)
!1349 = !DILocation(line: 526, column: 36, scope: !1346)
!1350 = !DILocation(line: 526, column: 14, scope: !1346)
!1351 = !DILocation(line: 526, column: 8, scope: !1342)
!1352 = !DILocation(line: 527, column: 15, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1346, file: !2, line: 526, column: 41)
!1354 = !DILocation(line: 527, column: 20, scope: !1353)
!1355 = !DILocation(line: 527, column: 8, scope: !1353)
!1356 = !DILocation(line: 527, column: 13, scope: !1353)
!1357 = !DILocation(line: 528, column: 19, scope: !1353)
!1358 = !DILocation(line: 528, column: 25, scope: !1353)
!1359 = !DILocation(line: 528, column: 33, scope: !1353)
!1360 = !DILocation(line: 528, column: 40, scope: !1353)
!1361 = !DILocation(line: 528, column: 46, scope: !1353)
!1362 = !DILocation(line: 528, column: 52, scope: !1353)
!1363 = !DILocation(line: 528, column: 60, scope: !1353)
!1364 = !DILocation(line: 528, column: 71, scope: !1353)
!1365 = !DILocation(line: 529, column: 5, scope: !1353)
!1366 = !DILocation(line: 529, column: 15, scope: !1353)
!1367 = !DILocation(line: 528, column: 8, scope: !1353)
!1368 = !DILocation(line: 530, column: 15, scope: !1353)
!1369 = !DILocation(line: 530, column: 8, scope: !1353)
!1370 = !DILocation(line: 530, column: 13, scope: !1353)
!1371 = !DILocation(line: 531, column: 15, scope: !1353)
!1372 = !DILocation(line: 531, column: 8, scope: !1353)
!1373 = !DILocation(line: 531, column: 13, scope: !1353)
!1374 = !DILocation(line: 532, column: 10, scope: !1353)
!1375 = !DILocation(line: 533, column: 22, scope: !1353)
!1376 = !DILocation(line: 533, column: 21, scope: !1353)
!1377 = !DILocation(line: 533, column: 12, scope: !1353)
!1378 = !DILocation(line: 533, column: 10, scope: !1353)
!1379 = !DILocation(line: 534, column: 16, scope: !1353)
!1380 = !DILocation(line: 534, column: 8, scope: !1353)
!1381 = !DILocation(line: 534, column: 13, scope: !1353)
!1382 = !DILocation(line: 535, column: 16, scope: !1353)
!1383 = !DILocation(line: 535, column: 8, scope: !1353)
!1384 = !DILocation(line: 535, column: 13, scope: !1353)
!1385 = !DILocation(line: 536, column: 18, scope: !1353)
!1386 = !DILocation(line: 536, column: 27, scope: !1353)
!1387 = !DILocation(line: 536, column: 8, scope: !1353)
!1388 = !DILocation(line: 536, column: 16, scope: !1353)
!1389 = !DILocation(line: 537, column: 12, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 537, column: 12)
!1391 = !DILocation(line: 537, column: 17, scope: !1390)
!1392 = !DILocation(line: 537, column: 12, scope: !1353)
!1393 = !DILocation(line: 537, column: 42, scope: !1390)
!1394 = !DILocation(line: 537, column: 51, scope: !1390)
!1395 = !DILocation(line: 537, column: 53, scope: !1390)
!1396 = !DILocation(line: 537, column: 41, scope: !1390)
!1397 = !DILocation(line: 537, column: 31, scope: !1390)
!1398 = !DILocation(line: 537, column: 39, scope: !1390)
!1399 = !DILocation(line: 538, column: 24, scope: !1390)
!1400 = !DILocation(line: 538, column: 33, scope: !1390)
!1401 = !DILocation(line: 538, column: 35, scope: !1390)
!1402 = !DILocation(line: 538, column: 23, scope: !1390)
!1403 = !DILocation(line: 538, column: 13, scope: !1390)
!1404 = !DILocation(line: 538, column: 21, scope: !1390)
!1405 = !DILocation(line: 539, column: 14, scope: !1353)
!1406 = !DILocation(line: 539, column: 23, scope: !1353)
!1407 = !DILocation(line: 539, column: 29, scope: !1353)
!1408 = !DILocation(line: 539, column: 8, scope: !1353)
!1409 = !DILocation(line: 540, column: 20, scope: !1353)
!1410 = !DILocation(line: 540, column: 29, scope: !1353)
!1411 = !DILocation(line: 540, column: 8, scope: !1353)
!1412 = !DILocation(line: 540, column: 18, scope: !1353)
!1413 = !DILocation(line: 541, column: 12, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 541, column: 12)
!1415 = !DILocation(line: 541, column: 17, scope: !1414)
!1416 = !DILocation(line: 541, column: 12, scope: !1353)
!1417 = !DILocation(line: 541, column: 44, scope: !1414)
!1418 = !DILocation(line: 541, column: 53, scope: !1414)
!1419 = !DILocation(line: 541, column: 55, scope: !1414)
!1420 = !DILocation(line: 541, column: 43, scope: !1414)
!1421 = !DILocation(line: 541, column: 31, scope: !1414)
!1422 = !DILocation(line: 541, column: 41, scope: !1414)
!1423 = !DILocation(line: 542, column: 26, scope: !1414)
!1424 = !DILocation(line: 542, column: 35, scope: !1414)
!1425 = !DILocation(line: 542, column: 37, scope: !1414)
!1426 = !DILocation(line: 542, column: 25, scope: !1414)
!1427 = !DILocation(line: 542, column: 13, scope: !1414)
!1428 = !DILocation(line: 542, column: 23, scope: !1414)
!1429 = !DILocation(line: 543, column: 14, scope: !1353)
!1430 = !DILocation(line: 543, column: 23, scope: !1353)
!1431 = !DILocation(line: 543, column: 31, scope: !1353)
!1432 = !DILocation(line: 543, column: 8, scope: !1353)
!1433 = !DILocation(line: 544, column: 19, scope: !1353)
!1434 = !DILocation(line: 544, column: 8, scope: !1353)
!1435 = !DILocation(line: 544, column: 16, scope: !1353)
!1436 = !DILocation(line: 545, column: 19, scope: !1353)
!1437 = !DILocation(line: 545, column: 8, scope: !1353)
!1438 = !DILocation(line: 545, column: 16, scope: !1353)
!1439 = !DILocation(line: 546, column: 12, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 546, column: 12)
!1441 = !DILocation(line: 546, column: 20, scope: !1440)
!1442 = !DILocation(line: 546, column: 26, scope: !1440)
!1443 = !DILocation(line: 546, column: 29, scope: !1440)
!1444 = !DILocation(line: 546, column: 37, scope: !1440)
!1445 = !DILocation(line: 546, column: 12, scope: !1353)
!1446 = !DILocation(line: 547, column: 14, scope: !1440)
!1447 = !DILocation(line: 547, column: 18, scope: !1440)
!1448 = !DILocation(line: 547, column: 20, scope: !1440)
!1449 = !DILocation(line: 547, column: 25, scope: !1440)
!1450 = !DILocation(line: 547, column: 5, scope: !1440)
!1451 = !DILocation(line: 547, column: 9, scope: !1440)
!1452 = !DILocation(line: 547, column: 12, scope: !1440)
!1453 = !DILocation(line: 549, column: 11, scope: !1440)
!1454 = !DILocation(line: 549, column: 14, scope: !1440)
!1455 = !DILocation(line: 549, column: 21, scope: !1440)
!1456 = !DILocation(line: 549, column: 25, scope: !1440)
!1457 = !DILocation(line: 549, column: 5, scope: !1440)
!1458 = !DILocation(line: 550, column: 24, scope: !1353)
!1459 = !DILocation(line: 550, column: 31, scope: !1353)
!1460 = !DILocation(line: 550, column: 36, scope: !1353)
!1461 = !DILocation(line: 550, column: 39, scope: !1353)
!1462 = !DILocation(line: 550, column: 45, scope: !1353)
!1463 = !DILocation(line: 550, column: 52, scope: !1353)
!1464 = !DILocation(line: 550, column: 60, scope: !1353)
!1465 = !DILocation(line: 550, column: 68, scope: !1353)
!1466 = !DILocation(line: 550, column: 8, scope: !1353)
!1467 = !DILocation(line: 551, column: 4, scope: !1353)
!1468 = !DILocation(line: 552, column: 24, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1346, file: !2, line: 551, column: 11)
!1470 = !DILocation(line: 552, column: 32, scope: !1469)
!1471 = !DILocation(line: 552, column: 35, scope: !1469)
!1472 = !DILocation(line: 552, column: 41, scope: !1469)
!1473 = !DILocation(line: 552, column: 48, scope: !1469)
!1474 = !DILocation(line: 552, column: 56, scope: !1469)
!1475 = !DILocation(line: 552, column: 64, scope: !1469)
!1476 = !DILocation(line: 552, column: 8, scope: !1469)
!1477 = !DILocation(line: 554, column: 20, scope: !1342)
!1478 = !DILocation(line: 554, column: 23, scope: !1342)
!1479 = !DILocation(line: 554, column: 29, scope: !1342)
!1480 = !DILocation(line: 554, column: 36, scope: !1342)
!1481 = !DILocation(line: 554, column: 42, scope: !1342)
!1482 = !DILocation(line: 554, column: 50, scope: !1342)
!1483 = !DILocation(line: 554, column: 58, scope: !1342)
!1484 = !DILocation(line: 554, column: 61, scope: !1342)
!1485 = !DILocation(line: 554, column: 64, scope: !1342)
!1486 = !DILocation(line: 554, column: 4, scope: !1342)
!1487 = !DILocation(line: 559, column: 14, scope: !186)
!1488 = !DILocation(line: 559, column: 20, scope: !186)
!1489 = !DILocation(line: 559, column: 23, scope: !186)
!1490 = !DILocation(line: 559, column: 30, scope: !186)
!1491 = !DILocation(line: 559, column: 36, scope: !186)
!1492 = !DILocation(line: 559, column: 42, scope: !186)
!1493 = !DILocation(line: 559, column: 50, scope: !186)
!1494 = !DILocation(line: 559, column: 61, scope: !186)
!1495 = !DILocation(line: 560, column: 7, scope: !186)
!1496 = !DILocation(line: 560, column: 17, scope: !186)
!1497 = !DILocation(line: 559, column: 3, scope: !186)
!1498 = !DILocation(line: 561, column: 1, scope: !186)
!1499 = !DISubprogram(name: "xrand", scope: !1500, file: !1500, line: 8, type: !1501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1500 = !DIFile(filename: "../blas_extended_test.h", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/testing/test-symv2", checksumkind: CSK_MD5, checksum: "7b663bde701d6512a981d3be7ac440c5")
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!17, !190}
!1503 = !DISubprogram(name: "power", scope: !1500, file: !1500, line: 7, type: !1504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!17, !184, !184}
!1506 = !DISubprogram(name: "z_r_truth2", scope: !1500, file: !1500, line: 346, type: !1507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{null, !9, !184, !1509, !1509, !184, !1509, !1509, !1509, !184, !189, !16, !16}
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1511 = !DISubprogram(name: "FixedBits", scope: !1500, file: !1500, line: 9, type: !1512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!184, !17, !17}
!1514 = distinct !DISubprogram(name: "rand_half_1", scope: !2, file: !2, line: 47, type: !1515, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1517)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!17, !184, !190}
!1517 = !{!1518, !1519, !1520, !1521, !1524}
!1518 = !DILocalVariable(name: "l_bits", arg: 1, scope: !1514, file: !2, line: 47, type: !184)
!1519 = !DILocalVariable(name: "seed", arg: 2, scope: !1514, file: !2, line: 47, type: !190)
!1520 = !DILocalVariable(name: "a", scope: !1514, file: !2, line: 57, type: !17)
!1521 = !DILocalVariable(name: "s", scope: !1522, file: !2, line: 61, type: !17)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !2, line: 60, column: 24)
!1523 = distinct !DILexicalBlock(scope: !1514, file: !2, line: 60, column: 7)
!1524 = !DILocalVariable(name: "t", scope: !1522, file: !2, line: 62, type: !17)
!1525 = !DILocation(line: 47, column: 31, scope: !1514)
!1526 = !DILocation(line: 47, column: 44, scope: !1514)
!1527 = !DILocation(line: 57, column: 3, scope: !1514)
!1528 = !DILocation(line: 57, column: 10, scope: !1514)
!1529 = !DILocation(line: 57, column: 20, scope: !1514)
!1530 = !DILocation(line: 57, column: 14, scope: !1514)
!1531 = !DILocation(line: 58, column: 5, scope: !1514)
!1532 = !DILocation(line: 59, column: 5, scope: !1514)
!1533 = !DILocation(line: 60, column: 7, scope: !1523)
!1534 = !DILocation(line: 60, column: 14, scope: !1523)
!1535 = !DILocation(line: 60, column: 7, scope: !1514)
!1536 = !DILocation(line: 61, column: 5, scope: !1522)
!1537 = !DILocation(line: 61, column: 12, scope: !1522)
!1538 = !DILocation(line: 61, column: 25, scope: !1522)
!1539 = !DILocation(line: 61, column: 16, scope: !1522)
!1540 = !DILocation(line: 62, column: 5, scope: !1522)
!1541 = !DILocation(line: 62, column: 12, scope: !1522)
!1542 = !DILocation(line: 62, column: 16, scope: !1522)
!1543 = !DILocation(line: 62, column: 20, scope: !1522)
!1544 = !DILocation(line: 62, column: 18, scope: !1522)
!1545 = !DILocation(line: 63, column: 10, scope: !1522)
!1546 = !DILocation(line: 63, column: 14, scope: !1522)
!1547 = !DILocation(line: 63, column: 12, scope: !1522)
!1548 = !DILocation(line: 63, column: 19, scope: !1522)
!1549 = !DILocation(line: 63, column: 17, scope: !1522)
!1550 = !DILocation(line: 63, column: 7, scope: !1522)
!1551 = !DILocation(line: 64, column: 9, scope: !1522)
!1552 = !DILocation(line: 64, column: 13, scope: !1522)
!1553 = !DILocation(line: 64, column: 11, scope: !1522)
!1554 = !DILocation(line: 64, column: 7, scope: !1522)
!1555 = !DILocation(line: 65, column: 3, scope: !1523)
!1556 = !DILocation(line: 65, column: 3, scope: !1522)
!1557 = !DILocation(line: 66, column: 10, scope: !1514)
!1558 = !DILocation(line: 67, column: 1, scope: !1514)
!1559 = !DILocation(line: 66, column: 3, scope: !1514)
!1560 = distinct !DISubprogram(name: "gen_y_to_cancel", scope: !2, file: !2, line: 70, type: !1561, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1563)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{null, !184, !184, !9, !189, !189, !189, !189}
!1563 = !{!1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582}
!1564 = !DILocalVariable(name: "k", arg: 1, scope: !1560, file: !2, line: 70, type: !184)
!1565 = !DILocalVariable(name: "n", arg: 2, scope: !1560, file: !2, line: 70, type: !184)
!1566 = !DILocalVariable(name: "conj", arg: 3, scope: !1560, file: !2, line: 70, type: !9)
!1567 = !DILocalVariable(name: "alpha", arg: 4, scope: !1560, file: !2, line: 71, type: !189)
!1568 = !DILocalVariable(name: "head_x", arg: 5, scope: !1560, file: !2, line: 71, type: !189)
!1569 = !DILocalVariable(name: "tail_x", arg: 6, scope: !1560, file: !2, line: 71, type: !189)
!1570 = !DILocalVariable(name: "y", arg: 7, scope: !1560, file: !2, line: 71, type: !189)
!1571 = !DILocalVariable(name: "i", scope: !1560, file: !2, line: 80, type: !184)
!1572 = !DILocalVariable(name: "ii", scope: !1560, file: !2, line: 80, type: !184)
!1573 = !DILocalVariable(name: "zero", scope: !1560, file: !2, line: 81, type: !216)
!1574 = !DILocalVariable(name: "r", scope: !1560, file: !2, line: 82, type: !216)
!1575 = !DILocalVariable(name: "tmp", scope: !1560, file: !2, line: 83, type: !216)
!1576 = !DILocalVariable(name: "tmp_l", scope: !1560, file: !2, line: 83, type: !216)
!1577 = !DILocalVariable(name: "tmp_t", scope: !1560, file: !2, line: 83, type: !216)
!1578 = !DILocalVariable(name: "head_x_i", scope: !1560, file: !2, line: 84, type: !16)
!1579 = !DILocalVariable(name: "tail_x_i", scope: !1560, file: !2, line: 84, type: !16)
!1580 = !DILocalVariable(name: "y_i", scope: !1560, file: !2, line: 84, type: !16)
!1581 = !DILocalVariable(name: "r_true_l", scope: !1560, file: !2, line: 85, type: !216)
!1582 = !DILocalVariable(name: "r_true_t", scope: !1560, file: !2, line: 85, type: !216)
!1583 = !DILocation(line: 70, column: 21, scope: !1560)
!1584 = !DILocation(line: 70, column: 28, scope: !1560)
!1585 = !DILocation(line: 70, column: 51, scope: !1560)
!1586 = !DILocation(line: 71, column: 23, scope: !1560)
!1587 = !DILocation(line: 71, column: 36, scope: !1560)
!1588 = !DILocation(line: 71, column: 50, scope: !1560)
!1589 = !DILocation(line: 71, column: 64, scope: !1560)
!1590 = !DILocation(line: 80, column: 3, scope: !1560)
!1591 = !DILocation(line: 80, column: 7, scope: !1560)
!1592 = !DILocation(line: 80, column: 10, scope: !1560)
!1593 = !DILocation(line: 81, column: 3, scope: !1560)
!1594 = !DILocation(line: 81, column: 10, scope: !1560)
!1595 = !DILocation(line: 82, column: 3, scope: !1560)
!1596 = !DILocation(line: 82, column: 10, scope: !1560)
!1597 = !DILocation(line: 83, column: 3, scope: !1560)
!1598 = !DILocation(line: 83, column: 10, scope: !1560)
!1599 = !DILocation(line: 83, column: 18, scope: !1560)
!1600 = !DILocation(line: 83, column: 28, scope: !1560)
!1601 = !DILocation(line: 84, column: 3, scope: !1560)
!1602 = !DILocation(line: 84, column: 11, scope: !1560)
!1603 = !DILocation(line: 84, column: 22, scope: !1560)
!1604 = !DILocation(line: 84, column: 31, scope: !1560)
!1605 = !DILocation(line: 84, column: 42, scope: !1560)
!1606 = !DILocation(line: 84, column: 51, scope: !1560)
!1607 = !DILocation(line: 84, column: 57, scope: !1560)
!1608 = !DILocation(line: 85, column: 3, scope: !1560)
!1609 = !DILocation(line: 85, column: 10, scope: !1560)
!1610 = !DILocation(line: 85, column: 23, scope: !1560)
!1611 = !DILocation(line: 87, column: 12, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 87, column: 3)
!1613 = !DILocation(line: 87, column: 10, scope: !1612)
!1614 = !DILocation(line: 87, column: 8, scope: !1612)
!1615 = !DILocation(line: 87, column: 15, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 87, column: 3)
!1617 = !DILocation(line: 87, column: 19, scope: !1616)
!1618 = !DILocation(line: 87, column: 17, scope: !1616)
!1619 = !DILocation(line: 87, column: 3, scope: !1612)
!1620 = !DILocation(line: 89, column: 18, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1616, file: !2, line: 87, column: 27)
!1622 = !DILocation(line: 89, column: 24, scope: !1621)
!1623 = !DILocation(line: 89, column: 27, scope: !1621)
!1624 = !DILocation(line: 89, column: 34, scope: !1621)
!1625 = !DILocation(line: 89, column: 40, scope: !1621)
!1626 = !DILocation(line: 89, column: 46, scope: !1621)
!1627 = !DILocation(line: 89, column: 54, scope: !1621)
!1628 = !DILocation(line: 89, column: 65, scope: !1621)
!1629 = !DILocation(line: 90, column: 4, scope: !1621)
!1630 = !DILocation(line: 90, column: 14, scope: !1621)
!1631 = !DILocation(line: 89, column: 7, scope: !1621)
!1632 = !DILocation(line: 91, column: 16, scope: !1621)
!1633 = !DILocation(line: 91, column: 14, scope: !1621)
!1634 = !DILocation(line: 91, column: 10, scope: !1621)
!1635 = !DILocation(line: 92, column: 11, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1621, file: !2, line: 92, column: 11)
!1637 = !DILocation(line: 92, column: 16, scope: !1636)
!1638 = !DILocation(line: 92, column: 11, scope: !1621)
!1639 = !DILocation(line: 93, column: 15, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1636, file: !2, line: 92, column: 30)
!1641 = !DILocation(line: 93, column: 24, scope: !1640)
!1642 = !DILocation(line: 93, column: 4, scope: !1640)
!1643 = !DILocation(line: 93, column: 13, scope: !1640)
!1644 = !DILocation(line: 94, column: 16, scope: !1640)
!1645 = !DILocation(line: 94, column: 25, scope: !1640)
!1646 = !DILocation(line: 94, column: 28, scope: !1640)
!1647 = !DILocation(line: 94, column: 15, scope: !1640)
!1648 = !DILocation(line: 94, column: 4, scope: !1640)
!1649 = !DILocation(line: 94, column: 13, scope: !1640)
!1650 = !DILocation(line: 95, column: 21, scope: !1640)
!1651 = !DILocation(line: 95, column: 28, scope: !1640)
!1652 = !DILocation(line: 95, column: 35, scope: !1640)
!1653 = !DILocation(line: 95, column: 4, scope: !1640)
!1654 = !DILocation(line: 96, column: 15, scope: !1640)
!1655 = !DILocation(line: 96, column: 24, scope: !1640)
!1656 = !DILocation(line: 96, column: 4, scope: !1640)
!1657 = !DILocation(line: 96, column: 13, scope: !1640)
!1658 = !DILocation(line: 97, column: 16, scope: !1640)
!1659 = !DILocation(line: 97, column: 25, scope: !1640)
!1660 = !DILocation(line: 97, column: 28, scope: !1640)
!1661 = !DILocation(line: 97, column: 15, scope: !1640)
!1662 = !DILocation(line: 97, column: 4, scope: !1640)
!1663 = !DILocation(line: 97, column: 13, scope: !1640)
!1664 = !DILocation(line: 98, column: 21, scope: !1640)
!1665 = !DILocation(line: 98, column: 28, scope: !1640)
!1666 = !DILocation(line: 98, column: 35, scope: !1640)
!1667 = !DILocation(line: 98, column: 4, scope: !1640)
!1668 = !DILocation(line: 99, column: 7, scope: !1640)
!1669 = !DILocation(line: 100, column: 21, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1636, file: !2, line: 99, column: 14)
!1671 = !DILocation(line: 100, column: 29, scope: !1670)
!1672 = !DILocation(line: 100, column: 38, scope: !1670)
!1673 = !DILocation(line: 100, column: 43, scope: !1670)
!1674 = !DILocation(line: 100, column: 4, scope: !1670)
!1675 = !DILocation(line: 101, column: 21, scope: !1670)
!1676 = !DILocation(line: 101, column: 29, scope: !1670)
!1677 = !DILocation(line: 101, column: 38, scope: !1670)
!1678 = !DILocation(line: 101, column: 43, scope: !1670)
!1679 = !DILocation(line: 101, column: 4, scope: !1670)
!1680 = !DILocation(line: 103, column: 16, scope: !1621)
!1681 = !DILocation(line: 103, column: 27, scope: !1621)
!1682 = !DILocation(line: 103, column: 25, scope: !1621)
!1683 = !DILocation(line: 103, column: 7, scope: !1621)
!1684 = !DILocation(line: 103, column: 14, scope: !1621)
!1685 = !DILocation(line: 104, column: 16, scope: !1621)
!1686 = !DILocation(line: 104, column: 27, scope: !1621)
!1687 = !DILocation(line: 104, column: 25, scope: !1621)
!1688 = !DILocation(line: 104, column: 7, scope: !1621)
!1689 = !DILocation(line: 104, column: 14, scope: !1621)
!1690 = !DILocation(line: 106, column: 11, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1621, file: !2, line: 106, column: 11)
!1692 = !DILocation(line: 106, column: 18, scope: !1691)
!1693 = !DILocation(line: 106, column: 24, scope: !1691)
!1694 = !DILocation(line: 106, column: 27, scope: !1691)
!1695 = !DILocation(line: 106, column: 34, scope: !1691)
!1696 = !DILocation(line: 106, column: 11, scope: !1621)
!1697 = !DILocation(line: 107, column: 14, scope: !1691)
!1698 = !DILocation(line: 107, column: 18, scope: !1691)
!1699 = !DILocation(line: 107, column: 21, scope: !1691)
!1700 = !DILocation(line: 107, column: 26, scope: !1691)
!1701 = !DILocation(line: 107, column: 4, scope: !1691)
!1702 = !DILocation(line: 107, column: 8, scope: !1691)
!1703 = !DILocation(line: 107, column: 12, scope: !1691)
!1704 = !DILocation(line: 109, column: 13, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1691, file: !2, line: 108, column: 12)
!1706 = !DILocation(line: 109, column: 23, scope: !1705)
!1707 = !DILocation(line: 109, column: 33, scope: !1705)
!1708 = !DILocation(line: 109, column: 38, scope: !1705)
!1709 = !DILocation(line: 109, column: 45, scope: !1705)
!1710 = !DILocation(line: 109, column: 4, scope: !1705)
!1711 = !DILocation(line: 110, column: 15, scope: !1705)
!1712 = !DILocation(line: 110, column: 14, scope: !1705)
!1713 = !DILocation(line: 110, column: 4, scope: !1705)
!1714 = !DILocation(line: 110, column: 8, scope: !1705)
!1715 = !DILocation(line: 110, column: 12, scope: !1705)
!1716 = !DILocation(line: 111, column: 19, scope: !1705)
!1717 = !DILocation(line: 111, column: 18, scope: !1705)
!1718 = !DILocation(line: 111, column: 4, scope: !1705)
!1719 = !DILocation(line: 111, column: 8, scope: !1705)
!1720 = !DILocation(line: 111, column: 11, scope: !1705)
!1721 = !DILocation(line: 111, column: 16, scope: !1705)
!1722 = !DILocation(line: 113, column: 3, scope: !1621)
!1723 = !DILocation(line: 87, column: 22, scope: !1616)
!1724 = !DILocation(line: 87, column: 3, scope: !1616)
!1725 = distinct !{!1725, !1619, !1726, !399}
!1726 = !DILocation(line: 113, column: 3, scope: !1612)
!1727 = !DILocation(line: 114, column: 1, scope: !1560)
!1728 = distinct !DISubprogram(name: "gen_r_to_cancel", scope: !2, file: !2, line: 118, type: !1729, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1731)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{null, !184, !9, !189, !189, !189, !189, !189, !189, !190}
!1731 = !{!1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746}
!1732 = !DILocalVariable(name: "n", arg: 1, scope: !1728, file: !2, line: 118, type: !184)
!1733 = !DILocalVariable(name: "conj", arg: 2, scope: !1728, file: !2, line: 118, type: !9)
!1734 = !DILocalVariable(name: "alpha", arg: 3, scope: !1728, file: !2, line: 119, type: !189)
!1735 = !DILocalVariable(name: "beta", arg: 4, scope: !1728, file: !2, line: 119, type: !189)
!1736 = !DILocalVariable(name: "head_x", arg: 5, scope: !1728, file: !2, line: 119, type: !189)
!1737 = !DILocalVariable(name: "tail_x", arg: 6, scope: !1728, file: !2, line: 119, type: !189)
!1738 = !DILocalVariable(name: "y", arg: 7, scope: !1728, file: !2, line: 120, type: !189)
!1739 = !DILocalVariable(name: "r", arg: 8, scope: !1728, file: !2, line: 120, type: !189)
!1740 = !DILocalVariable(name: "seed", arg: 9, scope: !1728, file: !2, line: 120, type: !190)
!1741 = !DILocalVariable(name: "zero", scope: !1728, file: !2, line: 129, type: !216)
!1742 = !DILocalVariable(name: "rtmp", scope: !1728, file: !2, line: 130, type: !216)
!1743 = !DILocalVariable(name: "beta_i", scope: !1728, file: !2, line: 131, type: !16)
!1744 = !DILocalVariable(name: "r_i", scope: !1728, file: !2, line: 132, type: !16)
!1745 = !DILocalVariable(name: "r_true_l", scope: !1728, file: !2, line: 133, type: !216)
!1746 = !DILocalVariable(name: "r_true_t", scope: !1728, file: !2, line: 133, type: !216)
!1747 = !DILocation(line: 118, column: 21, scope: !1728)
!1748 = !DILocation(line: 118, column: 44, scope: !1728)
!1749 = !DILocation(line: 119, column: 23, scope: !1728)
!1750 = !DILocation(line: 119, column: 36, scope: !1728)
!1751 = !DILocation(line: 119, column: 48, scope: !1728)
!1752 = !DILocation(line: 119, column: 62, scope: !1728)
!1753 = !DILocation(line: 120, column: 9, scope: !1728)
!1754 = !DILocation(line: 120, column: 18, scope: !1728)
!1755 = !DILocation(line: 120, column: 26, scope: !1728)
!1756 = !DILocation(line: 129, column: 3, scope: !1728)
!1757 = !DILocation(line: 129, column: 10, scope: !1728)
!1758 = !DILocation(line: 130, column: 3, scope: !1728)
!1759 = !DILocation(line: 130, column: 10, scope: !1728)
!1760 = !DILocation(line: 131, column: 3, scope: !1728)
!1761 = !DILocation(line: 131, column: 11, scope: !1728)
!1762 = !DILocation(line: 131, column: 31, scope: !1728)
!1763 = !DILocation(line: 132, column: 3, scope: !1728)
!1764 = !DILocation(line: 132, column: 11, scope: !1728)
!1765 = !DILocation(line: 132, column: 28, scope: !1728)
!1766 = !DILocation(line: 133, column: 3, scope: !1728)
!1767 = !DILocation(line: 133, column: 10, scope: !1728)
!1768 = !DILocation(line: 133, column: 23, scope: !1728)
!1769 = !DILocation(line: 135, column: 7, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 135, column: 7)
!1771 = !DILocation(line: 135, column: 17, scope: !1770)
!1772 = !DILocation(line: 135, column: 24, scope: !1770)
!1773 = !DILocation(line: 135, column: 27, scope: !1770)
!1774 = !DILocation(line: 135, column: 37, scope: !1770)
!1775 = !DILocation(line: 135, column: 7, scope: !1728)
!1776 = !DILocation(line: 136, column: 22, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1770, file: !2, line: 135, column: 45)
!1778 = !DILocation(line: 136, column: 16, scope: !1777)
!1779 = !DILocation(line: 136, column: 7, scope: !1777)
!1780 = !DILocation(line: 136, column: 14, scope: !1777)
!1781 = !DILocation(line: 137, column: 22, scope: !1777)
!1782 = !DILocation(line: 137, column: 16, scope: !1777)
!1783 = !DILocation(line: 137, column: 7, scope: !1777)
!1784 = !DILocation(line: 137, column: 14, scope: !1777)
!1785 = !DILocation(line: 138, column: 3, scope: !1777)
!1786 = !DILocation(line: 139, column: 18, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1770, file: !2, line: 138, column: 10)
!1788 = !DILocation(line: 139, column: 24, scope: !1787)
!1789 = !DILocation(line: 139, column: 27, scope: !1787)
!1790 = !DILocation(line: 139, column: 34, scope: !1787)
!1791 = !DILocation(line: 139, column: 40, scope: !1787)
!1792 = !DILocation(line: 139, column: 46, scope: !1787)
!1793 = !DILocation(line: 139, column: 54, scope: !1787)
!1794 = !DILocation(line: 139, column: 65, scope: !1787)
!1795 = !DILocation(line: 140, column: 4, scope: !1787)
!1796 = !DILocation(line: 140, column: 14, scope: !1787)
!1797 = !DILocation(line: 139, column: 7, scope: !1787)
!1798 = !DILocation(line: 141, column: 16, scope: !1787)
!1799 = !DILocation(line: 141, column: 26, scope: !1787)
!1800 = !DILocation(line: 141, column: 36, scope: !1787)
!1801 = !DILocation(line: 141, column: 44, scope: !1787)
!1802 = !DILocation(line: 141, column: 54, scope: !1787)
!1803 = !DILocation(line: 141, column: 7, scope: !1787)
!1804 = !DILocation(line: 142, column: 17, scope: !1787)
!1805 = !DILocation(line: 142, column: 16, scope: !1787)
!1806 = !DILocation(line: 142, column: 7, scope: !1787)
!1807 = !DILocation(line: 142, column: 14, scope: !1787)
!1808 = !DILocation(line: 143, column: 17, scope: !1787)
!1809 = !DILocation(line: 143, column: 16, scope: !1787)
!1810 = !DILocation(line: 143, column: 7, scope: !1787)
!1811 = !DILocation(line: 143, column: 14, scope: !1787)
!1812 = !DILocation(line: 145, column: 1, scope: !1728)
!1813 = !DISubprogram(name: "z_dddivd", scope: !1500, file: !1500, line: 17, type: !1814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{null, !16, !16, !16, !16, !16}
