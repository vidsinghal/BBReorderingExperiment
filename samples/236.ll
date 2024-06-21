; ModuleID = 'samples/236.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/math/sigmoid-f32-avx512f-rr1-p5-scalef-nr1fma1adj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__loadu_ps = type { <16 x float> }
%struct.__storeu_ps = type { <16 x float> }

; Function Attrs: nounwind uwtable
define dso_local void @xnn_math_f32_sigmoid__avx512f_rr1_p5_scalef_nr1fma1adj(i64 noundef %n, ptr noundef %input, ptr noundef %output) #0 {
entry:
  %n.addr = alloca i64, align 8
  %input.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %vsign_mask = alloca <8 x i64>, align 64
  %vlog2e = alloca <16 x float>, align 64
  %vminus_ln2 = alloca <16 x float>, align 64
  %vc5 = alloca <16 x float>, align 64
  %vc4 = alloca <16 x float>, align 64
  %vc3 = alloca <16 x float>, align 64
  %vc2 = alloca <16 x float>, align 64
  %vc1 = alloca <16 x float>, align 64
  %vone = alloca <16 x float>, align 64
  %vx = alloca <16 x float>, align 64
  %vz = alloca <16 x float>, align 64
  %vn = alloca <16 x float>, align 64
  %vt = alloca <16 x float>, align 64
  %vp = alloca <16 x float>, align 64
  %ve = alloca <16 x float>, align 64
  %vd = alloca <16 x float>, align 64
  %vr = alloca <16 x float>, align 64
  %vf = alloca <16 x float>, align 64
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store ptr %input, ptr %input.addr, align 8, !tbaa !9
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %vsign_mask) #5
  %call = call <8 x i64> @_mm512_set1_epi32(i32 noundef -2147483648)
  store <8 x i64> %call, ptr %vsign_mask, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vlog2e) #5
  %call1 = call <16 x float> @_mm512_set1_ps(float noundef 0x3FF7154760000000)
  store <16 x float> %call1, ptr %vlog2e, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vminus_ln2) #5
  %call2 = call <16 x float> @_mm512_set1_ps(float noundef 0xBFE62E4300000000)
  store <16 x float> %call2, ptr %vminus_ln2, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vc5) #5
  %call3 = call <16 x float> @_mm512_set1_ps(float noundef 0x3F80F9F9C0000000)
  store <16 x float> %call3, ptr %vc5, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vc4) #5
  %call4 = call <16 x float> @_mm512_set1_ps(float noundef 0x3FA573A1A0000000)
  store <16 x float> %call4, ptr %vc4, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vc3) #5
  %call5 = call <16 x float> @_mm512_set1_ps(float noundef 0x3FC555A800000000)
  store <16 x float> %call5, ptr %vc3, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vc2) #5
  %call6 = call <16 x float> @_mm512_set1_ps(float noundef 0x3FDFFFDC60000000)
  store <16 x float> %call6, ptr %vc2, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vc1) #5
  %call7 = call <16 x float> @_mm512_set1_ps(float noundef 0x3FEFFFFF60000000)
  store <16 x float> %call7, ptr %vc1, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vone) #5
  %call8 = call <16 x float> @_mm512_set1_ps(float noundef 1.000000e+00)
  store <16 x float> %call8, ptr %vone, align 64, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 64, ptr %vx) #5
  %1 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %call9 = call <16 x float> @_mm512_loadu_ps(ptr noundef %1)
  store <16 x float> %call9, ptr %vx, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vz) #5
  %2 = load <16 x float>, ptr %vx, align 64, !tbaa !11
  %call10 = call <8 x i64> @_mm512_castps_si512(<16 x float> noundef %2)
  %3 = load <8 x i64>, ptr %vsign_mask, align 64, !tbaa !11
  %call11 = call <8 x i64> @_mm512_or_epi32(<8 x i64> noundef %call10, <8 x i64> noundef %3)
  %call12 = call <16 x float> @_mm512_castsi512_ps(<8 x i64> noundef %call11)
  store <16 x float> %call12, ptr %vz, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vn) #5
  %4 = load <16 x float>, ptr %vz, align 64, !tbaa !11
  %5 = load <16 x float>, ptr %vlog2e, align 64, !tbaa !11
  %call13 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %4, <16 x float> noundef %5)
  %call14 = call <16 x float> @_mm512_undefined_ps()
  %6 = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %call13, i32 0, <16 x float> %call14, i16 -1, i32 4)
  store <16 x float> %6, ptr %vn, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vt) #5
  %7 = load <16 x float>, ptr %vn, align 64, !tbaa !11
  %8 = load <16 x float>, ptr %vminus_ln2, align 64, !tbaa !11
  %9 = load <16 x float>, ptr %vz, align 64, !tbaa !11
  %call15 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %7, <16 x float> noundef %8, <16 x float> noundef %9)
  store <16 x float> %call15, ptr %vt, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vp) #5
  %10 = load <16 x float>, ptr %vc5, align 64, !tbaa !11
  %11 = load <16 x float>, ptr %vt, align 64, !tbaa !11
  %12 = load <16 x float>, ptr %vc4, align 64, !tbaa !11
  %call16 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %10, <16 x float> noundef %11, <16 x float> noundef %12)
  store <16 x float> %call16, ptr %vp, align 64, !tbaa !11
  %13 = load <16 x float>, ptr %vp, align 64, !tbaa !11
  %14 = load <16 x float>, ptr %vt, align 64, !tbaa !11
  %15 = load <16 x float>, ptr %vc3, align 64, !tbaa !11
  %call17 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %13, <16 x float> noundef %14, <16 x float> noundef %15)
  store <16 x float> %call17, ptr %vp, align 64, !tbaa !11
  %16 = load <16 x float>, ptr %vp, align 64, !tbaa !11
  %17 = load <16 x float>, ptr %vt, align 64, !tbaa !11
  %18 = load <16 x float>, ptr %vc2, align 64, !tbaa !11
  %call18 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %16, <16 x float> noundef %17, <16 x float> noundef %18)
  store <16 x float> %call18, ptr %vp, align 64, !tbaa !11
  %19 = load <16 x float>, ptr %vp, align 64, !tbaa !11
  %20 = load <16 x float>, ptr %vt, align 64, !tbaa !11
  %21 = load <16 x float>, ptr %vc1, align 64, !tbaa !11
  %call19 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %19, <16 x float> noundef %20, <16 x float> noundef %21)
  store <16 x float> %call19, ptr %vp, align 64, !tbaa !11
  %22 = load <16 x float>, ptr %vp, align 64, !tbaa !11
  %23 = load <16 x float>, ptr %vt, align 64, !tbaa !11
  %24 = load <16 x float>, ptr %vone, align 64, !tbaa !11
  %call20 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %22, <16 x float> noundef %23, <16 x float> noundef %24)
  store <16 x float> %call20, ptr %vp, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %ve) #5
  %25 = load <16 x float>, ptr %vp, align 64, !tbaa !11
  %26 = load <16 x float>, ptr %vn, align 64, !tbaa !11
  %call21 = call <16 x float> @_mm512_scalef_ps(<16 x float> noundef %25, <16 x float> noundef %26)
  store <16 x float> %call21, ptr %ve, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vd) #5
  %27 = load <16 x float>, ptr %ve, align 64, !tbaa !11
  %28 = load <16 x float>, ptr %vone, align 64, !tbaa !11
  %call22 = call <16 x float> @_mm512_add_ps(<16 x float> noundef %27, <16 x float> noundef %28)
  store <16 x float> %call22, ptr %vd, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vr) #5
  %29 = load <16 x float>, ptr %vd, align 64, !tbaa !11
  %call23 = call <16 x float> @_mm512_rcp14_ps(<16 x float> noundef %29)
  store <16 x float> %call23, ptr %vr, align 64, !tbaa !11
  %30 = load <16 x float>, ptr %vr, align 64, !tbaa !11
  %31 = load <16 x float>, ptr %vd, align 64, !tbaa !11
  %32 = load <16 x float>, ptr %vone, align 64, !tbaa !11
  %call24 = call <16 x float> @_mm512_fnmadd_ps(<16 x float> noundef %30, <16 x float> noundef %31, <16 x float> noundef %32)
  %33 = load <16 x float>, ptr %vr, align 64, !tbaa !11
  %34 = load <16 x float>, ptr %vr, align 64, !tbaa !11
  %call25 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %call24, <16 x float> noundef %33, <16 x float> noundef %34)
  store <16 x float> %call25, ptr %vr, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vf) #5
  %35 = load <16 x float>, ptr %ve, align 64, !tbaa !11
  %36 = load <16 x float>, ptr %vr, align 64, !tbaa !11
  %call26 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %35, <16 x float> noundef %36)
  store <16 x float> %call26, ptr %vf, align 64, !tbaa !11
  %37 = load <16 x float>, ptr %vf, align 64, !tbaa !11
  %38 = load <16 x float>, ptr %vd, align 64, !tbaa !11
  %39 = load <16 x float>, ptr %ve, align 64, !tbaa !11
  %call27 = call <16 x float> @_mm512_fnmadd_ps(<16 x float> noundef %37, <16 x float> noundef %38, <16 x float> noundef %39)
  %40 = load <16 x float>, ptr %vr, align 64, !tbaa !11
  %41 = load <16 x float>, ptr %vf, align 64, !tbaa !11
  %call28 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %call27, <16 x float> noundef %40, <16 x float> noundef %41)
  store <16 x float> %call28, ptr %vf, align 64, !tbaa !11
  %42 = load <16 x float>, ptr %vf, align 64, !tbaa !11
  %43 = load <16 x float>, ptr %vx, align 64, !tbaa !11
  %call29 = call <8 x i64> @_mm512_castps_si512(<16 x float> noundef %43)
  %44 = load <8 x i64>, ptr %vsign_mask, align 64, !tbaa !11
  %call30 = call zeroext i16 @_mm512_testn_epi32_mask(<8 x i64> noundef %call29, <8 x i64> noundef %44)
  %45 = load <16 x float>, ptr %vone, align 64, !tbaa !11
  %46 = load <16 x float>, ptr %vf, align 64, !tbaa !11
  %call31 = call <16 x float> @_mm512_mask_sub_ps(<16 x float> noundef %42, i16 noundef zeroext %call30, <16 x float> noundef %45, <16 x float> noundef %46)
  store <16 x float> %call31, ptr %vf, align 64, !tbaa !11
  %47 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %48 = load <16 x float>, ptr %vf, align 64, !tbaa !11
  call void @_mm512_storeu_ps(ptr noundef %47, <16 x float> noundef %48)
  %49 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %49, i64 16
  store ptr %add.ptr, ptr %input.addr, align 8, !tbaa !9
  %50 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr32 = getelementptr inbounds float, ptr %50, i64 16
  store ptr %add.ptr32, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 64, ptr %vf) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vr) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %ve) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vp) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vt) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vn) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vz) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vx) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub = sub i64 %51, 64
  store i64 %sub, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 64, ptr %vone) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vc1) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vc2) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vc3) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vc4) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vc5) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vminus_ln2) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vlog2e) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vsign_mask) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @_mm512_set1_epi32(i32 noundef %__s) #2 {
entry:
  %__s.addr = alloca i32, align 4
  %.compoundliteral = alloca <16 x i32>, align 64
  store i32 %__s, ptr %__s.addr, align 4, !tbaa !14
  %0 = load i32, ptr %__s.addr, align 4, !tbaa !14
  %vecinit = insertelement <16 x i32> undef, i32 %0, i32 0
  %1 = load i32, ptr %__s.addr, align 4, !tbaa !14
  %vecinit1 = insertelement <16 x i32> %vecinit, i32 %1, i32 1
  %2 = load i32, ptr %__s.addr, align 4, !tbaa !14
  %vecinit2 = insertelement <16 x i32> %vecinit1, i32 %2, i32 2
  %3 = load i32, ptr %__s.addr, align 4, !tbaa !14
  %vecinit3 = insertelement <16 x i32> %vecinit2, i32 %3, i32 3
  %4 = load i32, ptr %__s.addr, align 4, !tbaa !14
  %vecinit4 = insertelement <16 x i32> %vecinit3, i32 %4, i32 4
  %5 = load i32, ptr %__s.addr, align 4, !tbaa !14
  %vecinit5 = insertelement <16 x i32> %vecinit4, i32 %5, i32 5
  %6 = load i32, ptr %__s.addr, align 4, !tbaa !14
  %vecinit6 = insertelement <16 x i32> %vecinit5, i32 %6, i32 6
  %7 = load i32, ptr %__s.addr, align 4, !tbaa !14
  %vecinit7 = insertelement <16 x i32> %vecinit6, i32 %7, i32 7
  %8 = load i32, ptr %__s.addr, align 4, !tbaa !14
  %vecinit8 = insertelement <16 x i32> %vecinit7, i32 %8, i32 8
  %9 = load i32, ptr %__s.addr, align 4, !tbaa !14
  %vecinit9 = insertelement <16 x i32> %vecinit8, i32 %9, i32 9
  %10 = load i32, ptr %__s.addr, align 4, !tbaa !14
  %vecinit10 = insertelement <16 x i32> %vecinit9, i32 %10, i32 10
  %11 = load i32, ptr %__s.addr, align 4, !tbaa !14
  %vecinit11 = insertelement <16 x i32> %vecinit10, i32 %11, i32 11
  %12 = load i32, ptr %__s.addr, align 4, !tbaa !14
  %vecinit12 = insertelement <16 x i32> %vecinit11, i32 %12, i32 12
  %13 = load i32, ptr %__s.addr, align 4, !tbaa !14
  %vecinit13 = insertelement <16 x i32> %vecinit12, i32 %13, i32 13
  %14 = load i32, ptr %__s.addr, align 4, !tbaa !14
  %vecinit14 = insertelement <16 x i32> %vecinit13, i32 %14, i32 14
  %15 = load i32, ptr %__s.addr, align 4, !tbaa !14
  %vecinit15 = insertelement <16 x i32> %vecinit14, i32 %15, i32 15
  store <16 x i32> %vecinit15, ptr %.compoundliteral, align 64, !tbaa !11
  %16 = load <16 x i32>, ptr %.compoundliteral, align 64, !tbaa !11
  %17 = bitcast <16 x i32> %16 to <8 x i64>
  ret <8 x i64> %17
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_set1_ps(float noundef %__w) #2 {
entry:
  %__w.addr = alloca float, align 4
  %.compoundliteral = alloca <16 x float>, align 64
  store float %__w, ptr %__w.addr, align 4, !tbaa !16
  %0 = load float, ptr %__w.addr, align 4, !tbaa !16
  %vecinit = insertelement <16 x float> undef, float %0, i32 0
  %1 = load float, ptr %__w.addr, align 4, !tbaa !16
  %vecinit1 = insertelement <16 x float> %vecinit, float %1, i32 1
  %2 = load float, ptr %__w.addr, align 4, !tbaa !16
  %vecinit2 = insertelement <16 x float> %vecinit1, float %2, i32 2
  %3 = load float, ptr %__w.addr, align 4, !tbaa !16
  %vecinit3 = insertelement <16 x float> %vecinit2, float %3, i32 3
  %4 = load float, ptr %__w.addr, align 4, !tbaa !16
  %vecinit4 = insertelement <16 x float> %vecinit3, float %4, i32 4
  %5 = load float, ptr %__w.addr, align 4, !tbaa !16
  %vecinit5 = insertelement <16 x float> %vecinit4, float %5, i32 5
  %6 = load float, ptr %__w.addr, align 4, !tbaa !16
  %vecinit6 = insertelement <16 x float> %vecinit5, float %6, i32 6
  %7 = load float, ptr %__w.addr, align 4, !tbaa !16
  %vecinit7 = insertelement <16 x float> %vecinit6, float %7, i32 7
  %8 = load float, ptr %__w.addr, align 4, !tbaa !16
  %vecinit8 = insertelement <16 x float> %vecinit7, float %8, i32 8
  %9 = load float, ptr %__w.addr, align 4, !tbaa !16
  %vecinit9 = insertelement <16 x float> %vecinit8, float %9, i32 9
  %10 = load float, ptr %__w.addr, align 4, !tbaa !16
  %vecinit10 = insertelement <16 x float> %vecinit9, float %10, i32 10
  %11 = load float, ptr %__w.addr, align 4, !tbaa !16
  %vecinit11 = insertelement <16 x float> %vecinit10, float %11, i32 11
  %12 = load float, ptr %__w.addr, align 4, !tbaa !16
  %vecinit12 = insertelement <16 x float> %vecinit11, float %12, i32 12
  %13 = load float, ptr %__w.addr, align 4, !tbaa !16
  %vecinit13 = insertelement <16 x float> %vecinit12, float %13, i32 13
  %14 = load float, ptr %__w.addr, align 4, !tbaa !16
  %vecinit14 = insertelement <16 x float> %vecinit13, float %14, i32 14
  %15 = load float, ptr %__w.addr, align 4, !tbaa !16
  %vecinit15 = insertelement <16 x float> %vecinit14, float %15, i32 15
  store <16 x float> %vecinit15, ptr %.compoundliteral, align 64, !tbaa !11
  %16 = load <16 x float>, ptr %.compoundliteral, align 64, !tbaa !11
  ret <16 x float> %16
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_loadu_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__loadu_ps, ptr %0, i32 0, i32 0
  %1 = load <16 x float>, ptr %__v, align 1, !tbaa !11
  ret <16 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_castsi512_ps(<8 x i64> noundef %__A) #2 {
entry:
  %__A.addr = alloca <8 x i64>, align 64
  store <8 x i64> %__A, ptr %__A.addr, align 64, !tbaa !11
  %0 = load <8 x i64>, ptr %__A.addr, align 64, !tbaa !11
  %1 = bitcast <8 x i64> %0 to <16 x float>
  ret <16 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @_mm512_or_epi32(<8 x i64> noundef %__a, <8 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x i64>, align 64
  %__b.addr = alloca <8 x i64>, align 64
  store <8 x i64> %__a, ptr %__a.addr, align 64, !tbaa !11
  store <8 x i64> %__b, ptr %__b.addr, align 64, !tbaa !11
  %0 = load <8 x i64>, ptr %__a.addr, align 64, !tbaa !11
  %1 = bitcast <8 x i64> %0 to <16 x i32>
  %2 = load <8 x i64>, ptr %__b.addr, align 64, !tbaa !11
  %3 = bitcast <8 x i64> %2 to <16 x i32>
  %or = or <16 x i32> %1, %3
  %4 = bitcast <16 x i32> %or to <8 x i64>
  ret <8 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @_mm512_castps_si512(<16 x float> noundef %__A) #2 {
entry:
  %__A.addr = alloca <16 x float>, align 64
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !11
  %0 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !11
  %1 = bitcast <16 x float> %0 to <8 x i64>
  ret <8 x i64> %1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float>, i32 immarg, <16 x float>, i16, i32 immarg) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_mul_ps(<16 x float> noundef %__a, <16 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <16 x float>, align 64
  %__b.addr = alloca <16 x float>, align 64
  store <16 x float> %__a, ptr %__a.addr, align 64, !tbaa !11
  store <16 x float> %__b, ptr %__b.addr, align 64, !tbaa !11
  %0 = load <16 x float>, ptr %__a.addr, align 64, !tbaa !11
  %1 = load <16 x float>, ptr %__b.addr, align 64, !tbaa !11
  %mul = fmul <16 x float> %0, %1
  ret <16 x float> %mul
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_undefined_ps() #2 {
entry:
  ret <16 x float> zeroinitializer
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %__A, <16 x float> noundef %__B, <16 x float> noundef %__C) #2 {
entry:
  %__A.addr = alloca <16 x float>, align 64
  %__B.addr = alloca <16 x float>, align 64
  %__C.addr = alloca <16 x float>, align 64
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !11
  store <16 x float> %__B, ptr %__B.addr, align 64, !tbaa !11
  store <16 x float> %__C, ptr %__C.addr, align 64, !tbaa !11
  %0 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !11
  %1 = load <16 x float>, ptr %__B.addr, align 64, !tbaa !11
  %2 = load <16 x float>, ptr %__C.addr, align 64, !tbaa !11
  %3 = call <16 x float> @llvm.fma.v16f32(<16 x float> %0, <16 x float> %1, <16 x float> %2)
  ret <16 x float> %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_scalef_ps(<16 x float> noundef %__A, <16 x float> noundef %__B) #2 {
entry:
  %__A.addr = alloca <16 x float>, align 64
  %__B.addr = alloca <16 x float>, align 64
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !11
  store <16 x float> %__B, ptr %__B.addr, align 64, !tbaa !11
  %0 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !11
  %1 = load <16 x float>, ptr %__B.addr, align 64, !tbaa !11
  %call = call <16 x float> @_mm512_undefined_ps()
  %2 = call <16 x float> @llvm.x86.avx512.mask.scalef.ps.512(<16 x float> %0, <16 x float> %1, <16 x float> %call, i16 -1, i32 4)
  ret <16 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_add_ps(<16 x float> noundef %__a, <16 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <16 x float>, align 64
  %__b.addr = alloca <16 x float>, align 64
  store <16 x float> %__a, ptr %__a.addr, align 64, !tbaa !11
  store <16 x float> %__b, ptr %__b.addr, align 64, !tbaa !11
  %0 = load <16 x float>, ptr %__a.addr, align 64, !tbaa !11
  %1 = load <16 x float>, ptr %__b.addr, align 64, !tbaa !11
  %add = fadd <16 x float> %0, %1
  ret <16 x float> %add
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_rcp14_ps(<16 x float> noundef %__A) #2 {
entry:
  %__A.addr = alloca <16 x float>, align 64
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !11
  %0 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !11
  %call = call <16 x float> @_mm512_setzero_ps()
  %1 = call <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %0, <16 x float> %call, i16 -1)
  ret <16 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_fnmadd_ps(<16 x float> noundef %__A, <16 x float> noundef %__B, <16 x float> noundef %__C) #2 {
entry:
  %__A.addr = alloca <16 x float>, align 64
  %__B.addr = alloca <16 x float>, align 64
  %__C.addr = alloca <16 x float>, align 64
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !11
  store <16 x float> %__B, ptr %__B.addr, align 64, !tbaa !11
  store <16 x float> %__C, ptr %__C.addr, align 64, !tbaa !11
  %0 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !11
  %1 = load <16 x float>, ptr %__B.addr, align 64, !tbaa !11
  %fneg = fneg <16 x float> %1
  %2 = load <16 x float>, ptr %__C.addr, align 64, !tbaa !11
  %3 = call <16 x float> @llvm.fma.v16f32(<16 x float> %0, <16 x float> %fneg, <16 x float> %2)
  ret <16 x float> %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_mask_sub_ps(<16 x float> noundef %__W, i16 noundef zeroext %__U, <16 x float> noundef %__A, <16 x float> noundef %__B) #2 {
entry:
  %__W.addr = alloca <16 x float>, align 64
  %__U.addr = alloca i16, align 2
  %__A.addr = alloca <16 x float>, align 64
  %__B.addr = alloca <16 x float>, align 64
  store <16 x float> %__W, ptr %__W.addr, align 64, !tbaa !11
  store i16 %__U, ptr %__U.addr, align 2, !tbaa !18
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !11
  store <16 x float> %__B, ptr %__B.addr, align 64, !tbaa !11
  %0 = load i16, ptr %__U.addr, align 2, !tbaa !18
  %1 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !11
  %2 = load <16 x float>, ptr %__B.addr, align 64, !tbaa !11
  %call = call <16 x float> @_mm512_sub_ps(<16 x float> noundef %1, <16 x float> noundef %2)
  %3 = load <16 x float>, ptr %__W.addr, align 64, !tbaa !11
  %4 = bitcast i16 %0 to <16 x i1>
  %5 = select <16 x i1> %4, <16 x float> %call, <16 x float> %3
  ret <16 x float> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i16 @_mm512_testn_epi32_mask(<8 x i64> noundef %__A, <8 x i64> noundef %__B) #2 {
entry:
  %__A.addr = alloca <8 x i64>, align 64
  %__B.addr = alloca <8 x i64>, align 64
  store <8 x i64> %__A, ptr %__A.addr, align 64, !tbaa !11
  store <8 x i64> %__B, ptr %__B.addr, align 64, !tbaa !11
  %0 = load <8 x i64>, ptr %__A.addr, align 64, !tbaa !11
  %1 = load <8 x i64>, ptr %__B.addr, align 64, !tbaa !11
  %call = call <8 x i64> @_mm512_and_epi32(<8 x i64> noundef %0, <8 x i64> noundef %1)
  %2 = bitcast <8 x i64> %call to <16 x i32>
  %call1 = call <8 x i64> @_mm512_setzero_si512()
  %3 = bitcast <8 x i64> %call1 to <16 x i32>
  %4 = icmp eq <16 x i32> %2, %3
  %5 = bitcast <16 x i1> %4 to i16
  ret i16 %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm512_storeu_ps(ptr noundef %__P, <16 x float> noundef %__A) #2 {
entry:
  %__P.addr = alloca ptr, align 8
  %__A.addr = alloca <16 x float>, align 64
  store ptr %__P, ptr %__P.addr, align 8, !tbaa !9
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !11
  %0 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !11
  %1 = load ptr, ptr %__P.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_ps, ptr %1, i32 0, i32 0
  store <16 x float> %0, ptr %__v, align 1, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.scalef.ps.512(<16 x float>, <16 x float>, <16 x float>, i16, i32 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float>, <16 x float>, i16) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_setzero_ps() #2 {
entry:
  %.compoundliteral = alloca <16 x float>, align 64
  store <16 x float> zeroinitializer, ptr %.compoundliteral, align 64, !tbaa !11
  %0 = load <16 x float>, ptr %.compoundliteral, align 64, !tbaa !11
  ret <16 x float> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_sub_ps(<16 x float> noundef %__a, <16 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <16 x float>, align 64
  %__b.addr = alloca <16 x float>, align 64
  store <16 x float> %__a, ptr %__a.addr, align 64, !tbaa !11
  store <16 x float> %__b, ptr %__b.addr, align 64, !tbaa !11
  %0 = load <16 x float>, ptr %__a.addr, align 64, !tbaa !11
  %1 = load <16 x float>, ptr %__b.addr, align 64, !tbaa !11
  %sub = fsub <16 x float> %0, %1
  ret <16 x float> %sub
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @_mm512_and_epi32(<8 x i64> noundef %__a, <8 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x i64>, align 64
  %__b.addr = alloca <8 x i64>, align 64
  store <8 x i64> %__a, ptr %__a.addr, align 64, !tbaa !11
  store <8 x i64> %__b, ptr %__b.addr, align 64, !tbaa !11
  %0 = load <8 x i64>, ptr %__a.addr, align 64, !tbaa !11
  %1 = bitcast <8 x i64> %0 to <16 x i32>
  %2 = load <8 x i64>, ptr %__b.addr, align 64, !tbaa !11
  %3 = bitcast <8 x i64> %2 to <16 x i32>
  %and = and <16 x i32> %1, %3
  %4 = bitcast <16 x i32> %and to <8 x i64>
  ret <8 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @_mm512_setzero_si512() #2 {
entry:
  %.compoundliteral = alloca <8 x i64>, align 64
  store <8 x i64> zeroinitializer, ptr %.compoundliteral, align 64, !tbaa !11
  %0 = load <8 x i64>, ptr %.compoundliteral, align 64, !tbaa !11
  ret <8 x i64> %0
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!15 = !{!"int", !7, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"float", !7, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"short", !7, i64 0}
