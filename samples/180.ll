; ModuleID = 'samples/180.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/math/sigmoid-f32-sse2-rr2-p5-nr1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__loadu_ps = type { <4 x float> }
%struct.__storeu_ps = type { <4 x float> }

; Function Attrs: nounwind uwtable
define dso_local void @xnn_math_f32_sigmoid__sse2_rr2_p5_nr1(i64 noundef %n, ptr noundef %input, ptr noundef %output) #0 {
entry:
  %n.addr = alloca i64, align 8
  %input.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %vsign_mask = alloca <4 x float>, align 16
  %vmagic_bias = alloca <4 x float>, align 16
  %vlog2e = alloca <4 x float>, align 16
  %vminus_ln2_hi = alloca <4 x float>, align 16
  %vminus_ln2_lo = alloca <4 x float>, align 16
  %vc5 = alloca <4 x float>, align 16
  %vc4 = alloca <4 x float>, align 16
  %vc3 = alloca <4 x float>, align 16
  %vc2 = alloca <4 x float>, align 16
  %vc1 = alloca <4 x float>, align 16
  %vone = alloca <4 x float>, align 16
  %vtwo = alloca <4 x float>, align 16
  %vdenorm_cutoff = alloca <4 x float>, align 16
  %vx = alloca <4 x float>, align 16
  %vz = alloca <4 x float>, align 16
  %vn = alloca <4 x float>, align 16
  %vs = alloca <4 x float>, align 16
  %vt = alloca <4 x float>, align 16
  %vp = alloca <4 x float>, align 16
  %ve = alloca <4 x float>, align 16
  %vd = alloca <4 x float>, align 16
  %vr = alloca <4 x float>, align 16
  %vf = alloca <4 x float>, align 16
  %vm = alloca <4 x float>, align 16
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store ptr %input, ptr %input.addr, align 8, !tbaa !9
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vsign_mask) #4
  %call = call <4 x float> @_mm_set1_ps(float noundef -0.000000e+00)
  store <4 x float> %call, ptr %vsign_mask, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vmagic_bias) #4
  %call1 = call <4 x float> @_mm_set1_ps(float noundef 0x4168000FE0000000)
  store <4 x float> %call1, ptr %vmagic_bias, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vlog2e) #4
  %call2 = call <4 x float> @_mm_set1_ps(float noundef 0x3FF7154760000000)
  store <4 x float> %call2, ptr %vlog2e, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vminus_ln2_hi) #4
  %call3 = call <4 x float> @_mm_set1_ps(float noundef 0xBFE62E4000000000)
  store <4 x float> %call3, ptr %vminus_ln2_hi, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vminus_ln2_lo) #4
  %call4 = call <4 x float> @_mm_set1_ps(float noundef 0xBEB7F7D1C0000000)
  store <4 x float> %call4, ptr %vminus_ln2_lo, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vc5) #4
  %call5 = call <4 x float> @_mm_set1_ps(float noundef 0x3F80F9F9C0000000)
  store <4 x float> %call5, ptr %vc5, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vc4) #4
  %call6 = call <4 x float> @_mm_set1_ps(float noundef 0x3FA573A1A0000000)
  store <4 x float> %call6, ptr %vc4, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vc3) #4
  %call7 = call <4 x float> @_mm_set1_ps(float noundef 0x3FC555A800000000)
  store <4 x float> %call7, ptr %vc3, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vc2) #4
  %call8 = call <4 x float> @_mm_set1_ps(float noundef 0x3FDFFFDC60000000)
  store <4 x float> %call8, ptr %vc2, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vc1) #4
  %call9 = call <4 x float> @_mm_set1_ps(float noundef 0x3FEFFFFF60000000)
  store <4 x float> %call9, ptr %vc1, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vone) #4
  %call10 = call <4 x float> @_mm_set1_ps(float noundef 1.000000e+00)
  store <4 x float> %call10, ptr %vone, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vtwo) #4
  %call11 = call <4 x float> @_mm_set1_ps(float noundef 2.000000e+00)
  store <4 x float> %call11, ptr %vtwo, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vdenorm_cutoff) #4
  %call12 = call <4 x float> @_mm_set1_ps(float noundef 0xC055D589E0000000)
  store <4 x float> %call12, ptr %vdenorm_cutoff, align 16, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vx) #4
  %1 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %call13 = call <4 x float> @_mm_loadu_ps(ptr noundef %1)
  store <4 x float> %call13, ptr %vx, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vz) #4
  %2 = load <4 x float>, ptr %vx, align 16, !tbaa !11
  %3 = load <4 x float>, ptr %vsign_mask, align 16, !tbaa !11
  %call14 = call <4 x float> @_mm_or_ps(<4 x float> noundef %2, <4 x float> noundef %3)
  store <4 x float> %call14, ptr %vz, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vn) #4
  %4 = load <4 x float>, ptr %vz, align 16, !tbaa !11
  %5 = load <4 x float>, ptr %vlog2e, align 16, !tbaa !11
  %call15 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %4, <4 x float> noundef %5)
  %6 = load <4 x float>, ptr %vmagic_bias, align 16, !tbaa !11
  %call16 = call <4 x float> @_mm_add_ps(<4 x float> noundef %call15, <4 x float> noundef %6)
  store <4 x float> %call16, ptr %vn, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vs) #4
  %7 = load <4 x float>, ptr %vn, align 16, !tbaa !11
  %call17 = call <2 x i64> @_mm_castps_si128(<4 x float> noundef %7)
  %call18 = call <2 x i64> @_mm_slli_epi32(<2 x i64> noundef %call17, i32 noundef 23)
  %call19 = call <4 x float> @_mm_castsi128_ps(<2 x i64> noundef %call18)
  store <4 x float> %call19, ptr %vs, align 16, !tbaa !11
  %8 = load <4 x float>, ptr %vn, align 16, !tbaa !11
  %9 = load <4 x float>, ptr %vmagic_bias, align 16, !tbaa !11
  %call20 = call <4 x float> @_mm_sub_ps(<4 x float> noundef %8, <4 x float> noundef %9)
  store <4 x float> %call20, ptr %vn, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vt) #4
  %10 = load <4 x float>, ptr %vn, align 16, !tbaa !11
  %11 = load <4 x float>, ptr %vminus_ln2_hi, align 16, !tbaa !11
  %call21 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %10, <4 x float> noundef %11)
  %12 = load <4 x float>, ptr %vz, align 16, !tbaa !11
  %call22 = call <4 x float> @_mm_add_ps(<4 x float> noundef %call21, <4 x float> noundef %12)
  store <4 x float> %call22, ptr %vt, align 16, !tbaa !11
  %13 = load <4 x float>, ptr %vn, align 16, !tbaa !11
  %14 = load <4 x float>, ptr %vminus_ln2_lo, align 16, !tbaa !11
  %call23 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %13, <4 x float> noundef %14)
  %15 = load <4 x float>, ptr %vt, align 16, !tbaa !11
  %call24 = call <4 x float> @_mm_add_ps(<4 x float> noundef %call23, <4 x float> noundef %15)
  store <4 x float> %call24, ptr %vt, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vp) #4
  %16 = load <4 x float>, ptr %vc5, align 16, !tbaa !11
  %17 = load <4 x float>, ptr %vt, align 16, !tbaa !11
  %call25 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %16, <4 x float> noundef %17)
  %18 = load <4 x float>, ptr %vc4, align 16, !tbaa !11
  %call26 = call <4 x float> @_mm_add_ps(<4 x float> noundef %call25, <4 x float> noundef %18)
  store <4 x float> %call26, ptr %vp, align 16, !tbaa !11
  %19 = load <4 x float>, ptr %vp, align 16, !tbaa !11
  %20 = load <4 x float>, ptr %vt, align 16, !tbaa !11
  %call27 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %19, <4 x float> noundef %20)
  %21 = load <4 x float>, ptr %vc3, align 16, !tbaa !11
  %call28 = call <4 x float> @_mm_add_ps(<4 x float> noundef %call27, <4 x float> noundef %21)
  store <4 x float> %call28, ptr %vp, align 16, !tbaa !11
  %22 = load <4 x float>, ptr %vp, align 16, !tbaa !11
  %23 = load <4 x float>, ptr %vt, align 16, !tbaa !11
  %call29 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %22, <4 x float> noundef %23)
  %24 = load <4 x float>, ptr %vc2, align 16, !tbaa !11
  %call30 = call <4 x float> @_mm_add_ps(<4 x float> noundef %call29, <4 x float> noundef %24)
  store <4 x float> %call30, ptr %vp, align 16, !tbaa !11
  %25 = load <4 x float>, ptr %vp, align 16, !tbaa !11
  %26 = load <4 x float>, ptr %vt, align 16, !tbaa !11
  %call31 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %25, <4 x float> noundef %26)
  %27 = load <4 x float>, ptr %vc1, align 16, !tbaa !11
  %call32 = call <4 x float> @_mm_add_ps(<4 x float> noundef %call31, <4 x float> noundef %27)
  store <4 x float> %call32, ptr %vp, align 16, !tbaa !11
  %28 = load <4 x float>, ptr %vt, align 16, !tbaa !11
  %29 = load <4 x float>, ptr %vs, align 16, !tbaa !11
  %call33 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %28, <4 x float> noundef %29)
  store <4 x float> %call33, ptr %vt, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %ve) #4
  %30 = load <4 x float>, ptr %vt, align 16, !tbaa !11
  %31 = load <4 x float>, ptr %vp, align 16, !tbaa !11
  %call34 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %30, <4 x float> noundef %31)
  %32 = load <4 x float>, ptr %vs, align 16, !tbaa !11
  %call35 = call <4 x float> @_mm_add_ps(<4 x float> noundef %call34, <4 x float> noundef %32)
  store <4 x float> %call35, ptr %ve, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vd) #4
  %33 = load <4 x float>, ptr %ve, align 16, !tbaa !11
  %34 = load <4 x float>, ptr %vone, align 16, !tbaa !11
  %call36 = call <4 x float> @_mm_add_ps(<4 x float> noundef %33, <4 x float> noundef %34)
  store <4 x float> %call36, ptr %vd, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vr) #4
  %35 = load <4 x float>, ptr %vd, align 16, !tbaa !11
  %call37 = call <4 x float> @_mm_rcp_ps(<4 x float> noundef %35)
  store <4 x float> %call37, ptr %vr, align 16, !tbaa !11
  %36 = load <4 x float>, ptr %vr, align 16, !tbaa !11
  %37 = load <4 x float>, ptr %vtwo, align 16, !tbaa !11
  %38 = load <4 x float>, ptr %vr, align 16, !tbaa !11
  %39 = load <4 x float>, ptr %vd, align 16, !tbaa !11
  %call38 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %38, <4 x float> noundef %39)
  %call39 = call <4 x float> @_mm_sub_ps(<4 x float> noundef %37, <4 x float> noundef %call38)
  %call40 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %36, <4 x float> noundef %call39)
  store <4 x float> %call40, ptr %vr, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vf) #4
  %40 = load <4 x float>, ptr %ve, align 16, !tbaa !11
  %41 = load <4 x float>, ptr %vr, align 16, !tbaa !11
  %call41 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %40, <4 x float> noundef %41)
  store <4 x float> %call41, ptr %vf, align 16, !tbaa !11
  %42 = load <4 x float>, ptr %vz, align 16, !tbaa !11
  %43 = load <4 x float>, ptr %vdenorm_cutoff, align 16, !tbaa !11
  %call42 = call <4 x float> @_mm_cmplt_ps(<4 x float> noundef %42, <4 x float> noundef %43)
  %44 = load <4 x float>, ptr %vf, align 16, !tbaa !11
  %call43 = call <4 x float> @_mm_andnot_ps(<4 x float> noundef %call42, <4 x float> noundef %44)
  store <4 x float> %call43, ptr %vf, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vm) #4
  %call44 = call <2 x i64> @_mm_setzero_si128()
  %45 = load <4 x float>, ptr %vx, align 16, !tbaa !11
  %call45 = call <2 x i64> @_mm_castps_si128(<4 x float> noundef %45)
  %call46 = call <2 x i64> @_mm_cmpgt_epi32(<2 x i64> noundef %call44, <2 x i64> noundef %call45)
  %call47 = call <4 x float> @_mm_castsi128_ps(<2 x i64> noundef %call46)
  store <4 x float> %call47, ptr %vm, align 16, !tbaa !11
  %46 = load <4 x float>, ptr %vf, align 16, !tbaa !11
  %47 = load <4 x float>, ptr %vm, align 16, !tbaa !11
  %call48 = call <4 x float> @_mm_and_ps(<4 x float> noundef %46, <4 x float> noundef %47)
  %48 = load <4 x float>, ptr %vm, align 16, !tbaa !11
  %49 = load <4 x float>, ptr %vone, align 16, !tbaa !11
  %50 = load <4 x float>, ptr %vf, align 16, !tbaa !11
  %call49 = call <4 x float> @_mm_sub_ps(<4 x float> noundef %49, <4 x float> noundef %50)
  %call50 = call <4 x float> @_mm_andnot_ps(<4 x float> noundef %48, <4 x float> noundef %call49)
  %call51 = call <4 x float> @_mm_or_ps(<4 x float> noundef %call48, <4 x float> noundef %call50)
  store <4 x float> %call51, ptr %vf, align 16, !tbaa !11
  %51 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %52 = load <4 x float>, ptr %vf, align 16, !tbaa !11
  call void @_mm_storeu_ps(ptr noundef %51, <4 x float> noundef %52)
  %53 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %53, i64 4
  store ptr %add.ptr, ptr %input.addr, align 8, !tbaa !9
  %54 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr52 = getelementptr inbounds float, ptr %54, i64 4
  store ptr %add.ptr52, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 16, ptr %vm) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vf) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vr) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vd) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %ve) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vp) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vt) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vs) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vn) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vz) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vx) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %55 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub = sub i64 %55, 16
  store i64 %sub, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 16, ptr %vdenorm_cutoff) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vtwo) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vone) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vc1) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vc2) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vc3) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vc4) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vc5) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vminus_ln2_lo) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vminus_ln2_hi) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vlog2e) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vmagic_bias) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vsign_mask) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_set1_ps(float noundef %__w) #2 {
entry:
  %__w.addr = alloca float, align 4
  %.compoundliteral = alloca <4 x float>, align 16
  store float %__w, ptr %__w.addr, align 4, !tbaa !14
  %0 = load float, ptr %__w.addr, align 4, !tbaa !14
  %vecinit = insertelement <4 x float> undef, float %0, i32 0
  %1 = load float, ptr %__w.addr, align 4, !tbaa !14
  %vecinit1 = insertelement <4 x float> %vecinit, float %1, i32 1
  %2 = load float, ptr %__w.addr, align 4, !tbaa !14
  %vecinit2 = insertelement <4 x float> %vecinit1, float %2, i32 2
  %3 = load float, ptr %__w.addr, align 4, !tbaa !14
  %vecinit3 = insertelement <4 x float> %vecinit2, float %3, i32 3
  store <4 x float> %vecinit3, ptr %.compoundliteral, align 16, !tbaa !11
  %4 = load <4 x float>, ptr %.compoundliteral, align 16, !tbaa !11
  ret <4 x float> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_loadu_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__loadu_ps, ptr %0, i32 0, i32 0
  %1 = load <4 x float>, ptr %__v, align 1, !tbaa !11
  ret <4 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_or_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <4 x float> %0 to <4 x i32>
  %2 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <4 x float> %2 to <4 x i32>
  %or = or <4 x i32> %1, %3
  %4 = bitcast <4 x i32> %or to <4 x float>
  ret <4 x float> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_add_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %add = fadd <4 x float> %0, %1
  ret <4 x float> %add
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_mul_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %mul = fmul <4 x float> %0, %1
  ret <4 x float> %mul
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_castsi128_ps(<2 x i64> noundef %__a) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x float>
  ret <4 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_slli_epi32(<2 x i64> noundef %__a, i32 noundef %__count) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !16
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !16
  %3 = call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %1, i32 %2)
  %4 = bitcast <4 x i32> %3 to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_castps_si128(<4 x float> noundef %__a) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <4 x float> %0 to <2 x i64>
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_sub_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %sub = fsub <4 x float> %0, %1
  ret <4 x float> %sub
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_rcp_ps(<4 x float> noundef %__a) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = call <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %0)
  ret <4 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_andnot_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <4 x float> %0 to <4 x i32>
  %not = xor <4 x i32> %1, <i32 -1, i32 -1, i32 -1, i32 -1>
  %2 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <4 x float> %2 to <4 x i32>
  %and = and <4 x i32> %not, %3
  %4 = bitcast <4 x i32> %and to <4 x float>
  ret <4 x float> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_cmplt_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %2 = fcmp olt <4 x float> %0, %1
  %3 = sext <4 x i1> %2 to <4 x i32>
  %4 = bitcast <4 x i32> %3 to <4 x float>
  ret <4 x float> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_cmpgt_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %cmp = icmp sgt <4 x i32> %1, %3
  %sext = sext <4 x i1> %cmp to <4 x i32>
  %4 = bitcast <4 x i32> %sext to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_setzero_si128() #2 {
entry:
  %.compoundliteral = alloca <2 x i64>, align 16
  store <2 x i64> zeroinitializer, ptr %.compoundliteral, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %.compoundliteral, align 16, !tbaa !11
  ret <2 x i64> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_and_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <4 x float> %0 to <4 x i32>
  %2 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <4 x float> %2 to <4 x i32>
  %and = and <4 x i32> %1, %3
  %4 = bitcast <4 x i32> %and to <4 x float>
  ret <4 x float> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storeu_ps(ptr noundef %__p, <4 x float> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_ps, ptr %1, i32 0, i32 0
  store <4 x float> %0, ptr %__v, align 1, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32>, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rcp.ps(<4 x float>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nounwind }

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
