; ModuleID = 'samples/440.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/math/sigmoid-f32-avx2-rr1-lut64-p2-gather-nr2fma1adj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__loadu_ps = type { <8 x float> }
%struct.__storeu_ps = type { <8 x float> }

@xnn_table_exp2minus_k_over_64 = external hidden constant [64 x float], align 16

; Function Attrs: nounwind uwtable
define dso_local void @xnn_math_f32_sigmoid__avx2_rr1_lut64_p2_gather_nr2fma1adj(i64 noundef %n, ptr noundef %input, ptr noundef %output) #0 {
entry:
  %n.addr = alloca i64, align 8
  %input.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %vsign_mask = alloca <8 x float>, align 32
  %vmagic_bias = alloca <8 x float>, align 32
  %vlog2e = alloca <8 x float>, align 32
  %vindex_mask = alloca <8 x float>, align 32
  %vminus_ln2 = alloca <8 x float>, align 32
  %vc2 = alloca <8 x float>, align 32
  %vone = alloca <8 x float>, align 32
  %vdenorm_cutoff = alloca <8 x float>, align 32
  %vx = alloca <8 x float>, align 32
  %vz = alloca <8 x float>, align 32
  %vn = alloca <8 x float>, align 32
  %ve = alloca <4 x i64>, align 32
  %vidx = alloca <4 x i64>, align 32
  %vl = alloca <4 x i64>, align 32
  %vs = alloca <8 x float>, align 32
  %vt = alloca <8 x float>, align 32
  %vp = alloca <8 x float>, align 32
  %vy = alloca <8 x float>, align 32
  %vd = alloca <8 x float>, align 32
  %vr = alloca <8 x float>, align 32
  %vf = alloca <8 x float>, align 32
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store ptr %input, ptr %input.addr, align 8, !tbaa !9
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vsign_mask) #6
  %call = call <8 x float> @_mm256_set1_ps(float noundef -0.000000e+00)
  store <8 x float> %call, ptr %vsign_mask, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmagic_bias) #6
  %call1 = call <8 x float> @_mm256_set1_ps(float noundef 1.966080e+05)
  store <8 x float> %call1, ptr %vmagic_bias, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vlog2e) #6
  %call2 = call <8 x float> @_mm256_set1_ps(float noundef 0x3FF7154760000000)
  store <8 x float> %call2, ptr %vlog2e, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vindex_mask) #6
  %call3 = call <4 x i64> @_mm256_set1_epi32(i32 noundef 63)
  %call4 = call <8 x float> @_mm256_castsi256_ps(<4 x i64> noundef %call3)
  store <8 x float> %call4, ptr %vindex_mask, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vminus_ln2) #6
  %call5 = call <8 x float> @_mm256_set1_ps(float noundef 0xBFE62E4300000000)
  store <8 x float> %call5, ptr %vminus_ln2, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vc2) #6
  %call6 = call <8 x float> @_mm256_set1_ps(float noundef 0x3FDFFFF0A0000000)
  store <8 x float> %call6, ptr %vc2, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vone) #6
  %call7 = call <8 x float> @_mm256_set1_ps(float noundef 1.000000e+00)
  store <8 x float> %call7, ptr %vone, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vdenorm_cutoff) #6
  %call8 = call <8 x float> @_mm256_set1_ps(float noundef 0xC055D589E0000000)
  store <8 x float> %call8, ptr %vdenorm_cutoff, align 32, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %vx) #6
  %1 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %call9 = call <8 x float> @_mm256_loadu_ps(ptr noundef %1)
  store <8 x float> %call9, ptr %vx, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vz) #6
  %2 = load <8 x float>, ptr %vx, align 32, !tbaa !11
  %3 = load <8 x float>, ptr %vsign_mask, align 32, !tbaa !11
  %call10 = call <8 x float> @_mm256_or_ps(<8 x float> noundef %2, <8 x float> noundef %3)
  store <8 x float> %call10, ptr %vz, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vn) #6
  %4 = load <8 x float>, ptr %vz, align 32, !tbaa !11
  %5 = load <8 x float>, ptr %vlog2e, align 32, !tbaa !11
  %6 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call11 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %4, <8 x float> noundef %5, <8 x float> noundef %6)
  store <8 x float> %call11, ptr %vn, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %ve) #6
  %7 = load <8 x float>, ptr %vn, align 32, !tbaa !11
  %call12 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %7)
  %call13 = call <4 x i64> @_mm256_slli_epi32(<4 x i64> noundef %call12, i32 noundef 17)
  store <4 x i64> %call13, ptr %ve, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vidx) #6
  %8 = load <8 x float>, ptr %vn, align 32, !tbaa !11
  %9 = load <8 x float>, ptr %vindex_mask, align 32, !tbaa !11
  %call14 = call <8 x float> @_mm256_and_ps(<8 x float> noundef %8, <8 x float> noundef %9)
  %call15 = call <4 x i64> @_mm256_castps_si256(<8 x float> noundef %call14)
  store <4 x i64> %call15, ptr %vidx, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vl) #6
  %call16 = call <4 x i64> @_mm256_undefined_si256()
  %10 = bitcast <4 x i64> %call16 to <8 x i32>
  %11 = load <4 x i64>, ptr %vidx, align 32, !tbaa !11
  %12 = bitcast <4 x i64> %11 to <8 x i32>
  %call17 = call <4 x i64> @_mm256_set1_epi32(i32 noundef -1)
  %13 = bitcast <4 x i64> %call17 to <8 x i32>
  %14 = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> %10, ptr @xnn_table_exp2minus_k_over_64, <8 x i32> %12, <8 x i32> %13, i8 4)
  %15 = bitcast <8 x i32> %14 to <4 x i64>
  store <4 x i64> %15, ptr %vl, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vs) #6
  %16 = load <4 x i64>, ptr %vl, align 32, !tbaa !11
  %17 = load <4 x i64>, ptr %ve, align 32, !tbaa !11
  %call18 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %16, <4 x i64> noundef %17)
  %call19 = call <8 x float> @_mm256_castsi256_ps(<4 x i64> noundef %call18)
  store <8 x float> %call19, ptr %vs, align 32, !tbaa !11
  %18 = load <8 x float>, ptr %vn, align 32, !tbaa !11
  %19 = load <8 x float>, ptr %vmagic_bias, align 32, !tbaa !11
  %call20 = call <8 x float> @_mm256_sub_ps(<8 x float> noundef %18, <8 x float> noundef %19)
  store <8 x float> %call20, ptr %vn, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt) #6
  %20 = load <8 x float>, ptr %vn, align 32, !tbaa !11
  %21 = load <8 x float>, ptr %vminus_ln2, align 32, !tbaa !11
  %22 = load <8 x float>, ptr %vz, align 32, !tbaa !11
  %call21 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %20, <8 x float> noundef %21, <8 x float> noundef %22)
  store <8 x float> %call21, ptr %vt, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vp) #6
  %23 = load <8 x float>, ptr %vt, align 32, !tbaa !11
  %24 = load <8 x float>, ptr %vc2, align 32, !tbaa !11
  %call22 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %23, <8 x float> noundef %24)
  store <8 x float> %call22, ptr %vp, align 32, !tbaa !11
  %25 = load <8 x float>, ptr %vt, align 32, !tbaa !11
  %26 = load <8 x float>, ptr %vp, align 32, !tbaa !11
  %27 = load <8 x float>, ptr %vt, align 32, !tbaa !11
  %call23 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %25, <8 x float> noundef %26, <8 x float> noundef %27)
  store <8 x float> %call23, ptr %vp, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vy) #6
  %28 = load <8 x float>, ptr %vs, align 32, !tbaa !11
  %29 = load <8 x float>, ptr %vp, align 32, !tbaa !11
  %30 = load <8 x float>, ptr %vs, align 32, !tbaa !11
  %call24 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %28, <8 x float> noundef %29, <8 x float> noundef %30)
  store <8 x float> %call24, ptr %vy, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vd) #6
  %31 = load <8 x float>, ptr %vy, align 32, !tbaa !11
  %32 = load <8 x float>, ptr %vone, align 32, !tbaa !11
  %call25 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %31, <8 x float> noundef %32)
  store <8 x float> %call25, ptr %vd, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vr) #6
  %33 = load <8 x float>, ptr %vd, align 32, !tbaa !11
  %call26 = call <8 x float> @_mm256_rcp_ps(<8 x float> noundef %33)
  store <8 x float> %call26, ptr %vr, align 32, !tbaa !11
  %34 = load <8 x float>, ptr %vr, align 32, !tbaa !11
  %35 = load <8 x float>, ptr %vd, align 32, !tbaa !11
  %36 = load <8 x float>, ptr %vone, align 32, !tbaa !11
  %call27 = call <8 x float> @_mm256_fnmadd_ps(<8 x float> noundef %34, <8 x float> noundef %35, <8 x float> noundef %36)
  %37 = load <8 x float>, ptr %vr, align 32, !tbaa !11
  %38 = load <8 x float>, ptr %vr, align 32, !tbaa !11
  %call28 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %call27, <8 x float> noundef %37, <8 x float> noundef %38)
  store <8 x float> %call28, ptr %vr, align 32, !tbaa !11
  %39 = load <8 x float>, ptr %vr, align 32, !tbaa !11
  %40 = load <8 x float>, ptr %vd, align 32, !tbaa !11
  %41 = load <8 x float>, ptr %vone, align 32, !tbaa !11
  %call29 = call <8 x float> @_mm256_fnmadd_ps(<8 x float> noundef %39, <8 x float> noundef %40, <8 x float> noundef %41)
  %42 = load <8 x float>, ptr %vr, align 32, !tbaa !11
  %43 = load <8 x float>, ptr %vr, align 32, !tbaa !11
  %call30 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %call29, <8 x float> noundef %42, <8 x float> noundef %43)
  store <8 x float> %call30, ptr %vr, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vf) #6
  %44 = load <8 x float>, ptr %vy, align 32, !tbaa !11
  %45 = load <8 x float>, ptr %vr, align 32, !tbaa !11
  %call31 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %44, <8 x float> noundef %45)
  store <8 x float> %call31, ptr %vf, align 32, !tbaa !11
  %46 = load <8 x float>, ptr %vf, align 32, !tbaa !11
  %47 = load <8 x float>, ptr %vd, align 32, !tbaa !11
  %48 = load <8 x float>, ptr %vy, align 32, !tbaa !11
  %call32 = call <8 x float> @_mm256_fnmadd_ps(<8 x float> noundef %46, <8 x float> noundef %47, <8 x float> noundef %48)
  %49 = load <8 x float>, ptr %vr, align 32, !tbaa !11
  %50 = load <8 x float>, ptr %vf, align 32, !tbaa !11
  %call33 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %call32, <8 x float> noundef %49, <8 x float> noundef %50)
  store <8 x float> %call33, ptr %vf, align 32, !tbaa !11
  %51 = load <8 x float>, ptr %vz, align 32, !tbaa !11
  %52 = load <8 x float>, ptr %vdenorm_cutoff, align 32, !tbaa !11
  %53 = fcmp olt <8 x float> %51, %52
  %54 = sext <8 x i1> %53 to <8 x i32>
  %55 = bitcast <8 x i32> %54 to <8 x float>
  %56 = load <8 x float>, ptr %vf, align 32, !tbaa !11
  %call34 = call <8 x float> @_mm256_andnot_ps(<8 x float> noundef %55, <8 x float> noundef %56)
  store <8 x float> %call34, ptr %vf, align 32, !tbaa !11
  %57 = load <8 x float>, ptr %vone, align 32, !tbaa !11
  %58 = load <8 x float>, ptr %vf, align 32, !tbaa !11
  %call35 = call <8 x float> @_mm256_sub_ps(<8 x float> noundef %57, <8 x float> noundef %58)
  %59 = load <8 x float>, ptr %vf, align 32, !tbaa !11
  %60 = load <8 x float>, ptr %vx, align 32, !tbaa !11
  %call36 = call <8 x float> @_mm256_blendv_ps(<8 x float> noundef %call35, <8 x float> noundef %59, <8 x float> noundef %60)
  store <8 x float> %call36, ptr %vf, align 32, !tbaa !11
  %61 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %62 = load <8 x float>, ptr %vf, align 32, !tbaa !11
  call void @_mm256_storeu_ps(ptr noundef %61, <8 x float> noundef %62)
  %63 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %63, i64 8
  store ptr %add.ptr, ptr %input.addr, align 8, !tbaa !9
  %64 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr37 = getelementptr inbounds float, ptr %64, i64 8
  store ptr %add.ptr37, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 32, ptr %vf) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vr) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vd) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vy) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vp) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vs) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vl) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vidx) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %ve) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vn) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vz) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vx) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %65 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub = sub i64 %65, 32
  store i64 %sub, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 32, ptr %vdenorm_cutoff) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vone) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vc2) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vminus_ln2) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vindex_mask) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vlog2e) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vmagic_bias) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vsign_mask) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_set1_ps(float noundef %__w) #2 {
entry:
  %__w.addr = alloca float, align 4
  store float %__w, ptr %__w.addr, align 4, !tbaa !14
  %0 = load float, ptr %__w.addr, align 4, !tbaa !14
  %1 = load float, ptr %__w.addr, align 4, !tbaa !14
  %2 = load float, ptr %__w.addr, align 4, !tbaa !14
  %3 = load float, ptr %__w.addr, align 4, !tbaa !14
  %4 = load float, ptr %__w.addr, align 4, !tbaa !14
  %5 = load float, ptr %__w.addr, align 4, !tbaa !14
  %6 = load float, ptr %__w.addr, align 4, !tbaa !14
  %7 = load float, ptr %__w.addr, align 4, !tbaa !14
  %call = call <8 x float> @_mm256_set_ps(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7)
  ret <8 x float> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_castsi256_ps(<4 x i64> noundef %__a) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !11
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !11
  %1 = bitcast <4 x i64> %0 to <8 x float>
  ret <8 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_set1_epi32(i32 noundef %__i) #2 {
entry:
  %__i.addr = alloca i32, align 4
  store i32 %__i, ptr %__i.addr, align 4, !tbaa !16
  %0 = load i32, ptr %__i.addr, align 4, !tbaa !16
  %1 = load i32, ptr %__i.addr, align 4, !tbaa !16
  %2 = load i32, ptr %__i.addr, align 4, !tbaa !16
  %3 = load i32, ptr %__i.addr, align 4, !tbaa !16
  %4 = load i32, ptr %__i.addr, align 4, !tbaa !16
  %5 = load i32, ptr %__i.addr, align 4, !tbaa !16
  %6 = load i32, ptr %__i.addr, align 4, !tbaa !16
  %7 = load i32, ptr %__i.addr, align 4, !tbaa !16
  %call = call <4 x i64> @_mm256_set_epi32(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  ret <4 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_loadu_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__loadu_ps, ptr %0, i32 0, i32 0
  %1 = load <8 x float>, ptr %__v, align 1, !tbaa !11
  ret <8 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_or_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = bitcast <8 x float> %0 to <8 x i32>
  %2 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !11
  %3 = bitcast <8 x float> %2 to <8 x i32>
  %or = or <8 x i32> %1, %3
  %4 = bitcast <8 x i32> %or to <8 x float>
  ret <8 x float> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %__A, <8 x float> noundef %__B, <8 x float> noundef %__C) #2 {
entry:
  %__A.addr = alloca <8 x float>, align 32
  %__B.addr = alloca <8 x float>, align 32
  %__C.addr = alloca <8 x float>, align 32
  store <8 x float> %__A, ptr %__A.addr, align 32, !tbaa !11
  store <8 x float> %__B, ptr %__B.addr, align 32, !tbaa !11
  store <8 x float> %__C, ptr %__C.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__A.addr, align 32, !tbaa !11
  %1 = load <8 x float>, ptr %__B.addr, align 32, !tbaa !11
  %2 = load <8 x float>, ptr %__C.addr, align 32, !tbaa !11
  %3 = call <8 x float> @llvm.fma.v8f32(<8 x float> %0, <8 x float> %1, <8 x float> %2)
  ret <8 x float> %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_slli_epi32(<4 x i64> noundef %__a, i32 noundef %__count) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  %__count.addr = alloca i32, align 4
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !11
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !16
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !11
  %1 = bitcast <4 x i64> %0 to <8 x i32>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !16
  %3 = call <8 x i32> @llvm.x86.avx2.pslli.d(<8 x i32> %1, i32 %2)
  %4 = bitcast <8 x i32> %3 to <4 x i64>
  ret <4 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_castps_si256(<8 x float> noundef %__a) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = bitcast <8 x float> %0 to <4 x i64>
  ret <4 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_and_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = bitcast <8 x float> %0 to <8 x i32>
  %2 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !11
  %3 = bitcast <8 x float> %2 to <8 x i32>
  %and = and <8 x i32> %1, %3
  %4 = bitcast <8 x i32> %and to <8 x float>
  ret <8 x float> %4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32>, ptr, <8 x i32>, <8 x i32>, i8 immarg) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_undefined_si256() #2 {
entry:
  ret <4 x i64> zeroinitializer
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %__a, <4 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  %__b.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <4 x i64> %__b, ptr %__b.addr, align 32, !tbaa !11
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !11
  %1 = bitcast <4 x i64> %0 to <8 x i32>
  %2 = load <4 x i64>, ptr %__b.addr, align 32, !tbaa !11
  %3 = bitcast <4 x i64> %2 to <8 x i32>
  %add = add <8 x i32> %1, %3
  %4 = bitcast <8 x i32> %add to <4 x i64>
  ret <4 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_sub_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !11
  %sub = fsub <8 x float> %0, %1
  ret <8 x float> %sub
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_mul_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !11
  %mul = fmul <8 x float> %0, %1
  ret <8 x float> %mul
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_add_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !11
  %add = fadd <8 x float> %0, %1
  ret <8 x float> %add
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_rcp_ps(<8 x float> noundef %__a) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = call <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> %0)
  ret <8 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_fnmadd_ps(<8 x float> noundef %__A, <8 x float> noundef %__B, <8 x float> noundef %__C) #2 {
entry:
  %__A.addr = alloca <8 x float>, align 32
  %__B.addr = alloca <8 x float>, align 32
  %__C.addr = alloca <8 x float>, align 32
  store <8 x float> %__A, ptr %__A.addr, align 32, !tbaa !11
  store <8 x float> %__B, ptr %__B.addr, align 32, !tbaa !11
  store <8 x float> %__C, ptr %__C.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__A.addr, align 32, !tbaa !11
  %fneg = fneg <8 x float> %0
  %1 = load <8 x float>, ptr %__B.addr, align 32, !tbaa !11
  %2 = load <8 x float>, ptr %__C.addr, align 32, !tbaa !11
  %3 = call <8 x float> @llvm.fma.v8f32(<8 x float> %fneg, <8 x float> %1, <8 x float> %2)
  ret <8 x float> %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_andnot_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = bitcast <8 x float> %0 to <8 x i32>
  %not = xor <8 x i32> %1, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>
  %2 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !11
  %3 = bitcast <8 x float> %2 to <8 x i32>
  %and = and <8 x i32> %not, %3
  %4 = bitcast <8 x i32> %and to <8 x float>
  ret <8 x float> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_blendv_ps(<8 x float> noundef %__a, <8 x float> noundef %__b, <8 x float> noundef %__c) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  %__c.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !11
  store <8 x float> %__c, ptr %__c.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !11
  %2 = load <8 x float>, ptr %__c.addr, align 32, !tbaa !11
  %3 = call <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %0, <8 x float> %1, <8 x float> %2)
  ret <8 x float> %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm256_storeu_ps(ptr noundef %__p, <8 x float> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <8 x float>, align 32
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_ps, ptr %1, i32 0, i32 0
  store <8 x float> %0, ptr %__v, align 1, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_set_ps(float noundef %__a, float noundef %__b, float noundef %__c, float noundef %__d, float noundef %__e, float noundef %__f, float noundef %__g, float noundef %__h) #2 {
entry:
  %__a.addr = alloca float, align 4
  %__b.addr = alloca float, align 4
  %__c.addr = alloca float, align 4
  %__d.addr = alloca float, align 4
  %__e.addr = alloca float, align 4
  %__f.addr = alloca float, align 4
  %__g.addr = alloca float, align 4
  %__h.addr = alloca float, align 4
  %.compoundliteral = alloca <8 x float>, align 32
  store float %__a, ptr %__a.addr, align 4, !tbaa !14
  store float %__b, ptr %__b.addr, align 4, !tbaa !14
  store float %__c, ptr %__c.addr, align 4, !tbaa !14
  store float %__d, ptr %__d.addr, align 4, !tbaa !14
  store float %__e, ptr %__e.addr, align 4, !tbaa !14
  store float %__f, ptr %__f.addr, align 4, !tbaa !14
  store float %__g, ptr %__g.addr, align 4, !tbaa !14
  store float %__h, ptr %__h.addr, align 4, !tbaa !14
  %0 = load float, ptr %__h.addr, align 4, !tbaa !14
  %vecinit = insertelement <8 x float> undef, float %0, i32 0
  %1 = load float, ptr %__g.addr, align 4, !tbaa !14
  %vecinit1 = insertelement <8 x float> %vecinit, float %1, i32 1
  %2 = load float, ptr %__f.addr, align 4, !tbaa !14
  %vecinit2 = insertelement <8 x float> %vecinit1, float %2, i32 2
  %3 = load float, ptr %__e.addr, align 4, !tbaa !14
  %vecinit3 = insertelement <8 x float> %vecinit2, float %3, i32 3
  %4 = load float, ptr %__d.addr, align 4, !tbaa !14
  %vecinit4 = insertelement <8 x float> %vecinit3, float %4, i32 4
  %5 = load float, ptr %__c.addr, align 4, !tbaa !14
  %vecinit5 = insertelement <8 x float> %vecinit4, float %5, i32 5
  %6 = load float, ptr %__b.addr, align 4, !tbaa !14
  %vecinit6 = insertelement <8 x float> %vecinit5, float %6, i32 6
  %7 = load float, ptr %__a.addr, align 4, !tbaa !14
  %vecinit7 = insertelement <8 x float> %vecinit6, float %7, i32 7
  store <8 x float> %vecinit7, ptr %.compoundliteral, align 32, !tbaa !11
  %8 = load <8 x float>, ptr %.compoundliteral, align 32, !tbaa !11
  ret <8 x float> %8
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_set_epi32(i32 noundef %__i0, i32 noundef %__i1, i32 noundef %__i2, i32 noundef %__i3, i32 noundef %__i4, i32 noundef %__i5, i32 noundef %__i6, i32 noundef %__i7) #2 {
entry:
  %__i0.addr = alloca i32, align 4
  %__i1.addr = alloca i32, align 4
  %__i2.addr = alloca i32, align 4
  %__i3.addr = alloca i32, align 4
  %__i4.addr = alloca i32, align 4
  %__i5.addr = alloca i32, align 4
  %__i6.addr = alloca i32, align 4
  %__i7.addr = alloca i32, align 4
  %.compoundliteral = alloca <8 x i32>, align 32
  store i32 %__i0, ptr %__i0.addr, align 4, !tbaa !16
  store i32 %__i1, ptr %__i1.addr, align 4, !tbaa !16
  store i32 %__i2, ptr %__i2.addr, align 4, !tbaa !16
  store i32 %__i3, ptr %__i3.addr, align 4, !tbaa !16
  store i32 %__i4, ptr %__i4.addr, align 4, !tbaa !16
  store i32 %__i5, ptr %__i5.addr, align 4, !tbaa !16
  store i32 %__i6, ptr %__i6.addr, align 4, !tbaa !16
  store i32 %__i7, ptr %__i7.addr, align 4, !tbaa !16
  %0 = load i32, ptr %__i7.addr, align 4, !tbaa !16
  %vecinit = insertelement <8 x i32> undef, i32 %0, i32 0
  %1 = load i32, ptr %__i6.addr, align 4, !tbaa !16
  %vecinit1 = insertelement <8 x i32> %vecinit, i32 %1, i32 1
  %2 = load i32, ptr %__i5.addr, align 4, !tbaa !16
  %vecinit2 = insertelement <8 x i32> %vecinit1, i32 %2, i32 2
  %3 = load i32, ptr %__i4.addr, align 4, !tbaa !16
  %vecinit3 = insertelement <8 x i32> %vecinit2, i32 %3, i32 3
  %4 = load i32, ptr %__i3.addr, align 4, !tbaa !16
  %vecinit4 = insertelement <8 x i32> %vecinit3, i32 %4, i32 4
  %5 = load i32, ptr %__i2.addr, align 4, !tbaa !16
  %vecinit5 = insertelement <8 x i32> %vecinit4, i32 %5, i32 5
  %6 = load i32, ptr %__i1.addr, align 4, !tbaa !16
  %vecinit6 = insertelement <8 x i32> %vecinit5, i32 %6, i32 6
  %7 = load i32, ptr %__i0.addr, align 4, !tbaa !16
  %vecinit7 = insertelement <8 x i32> %vecinit6, i32 %7, i32 7
  store <8 x i32> %vecinit7, ptr %.compoundliteral, align 32, !tbaa !11
  %8 = load <8 x i32>, ptr %.compoundliteral, align 32, !tbaa !11
  %9 = bitcast <8 x i32> %8 to <4 x i64>
  ret <4 x i64> %9
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.pslli.d(<8 x i32>, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float>, <8 x float>, <8 x float>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !7, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !7, i64 0}
