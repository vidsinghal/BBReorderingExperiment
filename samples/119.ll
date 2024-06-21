; ModuleID = 'samples/119.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/math/sigmoid-f32-avx512f-rr2-lut32-p2-perm2-scalef-div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__loadu_ps = type { <16 x float> }
%struct.__storeu_ps = type { <16 x float> }

; Function Attrs: nounwind uwtable
define dso_local void @xnn_math_f32_sigmoid__avx512f_rr2_lut32_p2_perm2_scalef_div(i64 noundef %n, ptr noundef %input, ptr noundef %output) #0 {
entry:
  %n.addr = alloca i64, align 8
  %input.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %vsign_mask = alloca <8 x i64>, align 64
  %vmagic_bias = alloca <16 x float>, align 64
  %vlog2e = alloca <16 x float>, align 64
  %vtable_hi = alloca <16 x float>, align 64
  %vtable_lo = alloca <16 x float>, align 64
  %vminus_ln2_hi = alloca <16 x float>, align 64
  %vminus_ln2_lo = alloca <16 x float>, align 64
  %vc2 = alloca <16 x float>, align 64
  %vc1 = alloca <16 x float>, align 64
  %vone = alloca <16 x float>, align 64
  %vx = alloca <16 x float>, align 64
  %vz = alloca <16 x float>, align 64
  %vn = alloca <16 x float>, align 64
  %vl = alloca <16 x float>, align 64
  %vt = alloca <16 x float>, align 64
  %vp = alloca <16 x float>, align 64
  %ve = alloca <16 x float>, align 64
  %vd = alloca <16 x float>, align 64
  %vf = alloca <16 x float>, align 64
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store ptr %input, ptr %input.addr, align 8, !tbaa !9
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %vsign_mask) #5
  %call = call <8 x i64> @_mm512_set1_epi32(i32 noundef -2147483648)
  store <8 x i64> %call, ptr %vsign_mask, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vmagic_bias) #5
  %call1 = call <16 x float> @_mm512_set1_ps(float noundef 3.932160e+05)
  store <16 x float> %call1, ptr %vmagic_bias, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vlog2e) #5
  %call2 = call <16 x float> @_mm512_set1_ps(float noundef 0x3FF7154760000000)
  store <16 x float> %call2, ptr %vlog2e, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vtable_hi) #5
  %call3 = call <16 x float> @_mm512_set_ps(float noundef 0x3FFF507660000000, float noundef 0x3FFEA4AFA0000000, float noundef 0x3FFDFC9740000000, float noundef 0x3FFD5818E0000000, float noundef 0x3FFCB720E0000000, float noundef 0x3FFC199BE0000000, float noundef 0x3FFB7F7700000000, float noundef 0x3FFAE89FA0000000, float noundef 0x3FFA5503C0000000, float noundef 0x3FF9C49180000000, float noundef 0x3FF93737C0000000, float noundef 0x3FF8ACE540000000, float noundef 0x3FF82589A0000000, float noundef 0x3FF7A11480000000, float noundef 0x3FF71F75E0000000, float noundef 0x3FF6A09E60000000)
  store <16 x float> %call3, ptr %vtable_hi, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vtable_lo) #5
  %call4 = call <16 x float> @_mm512_set_ps(float noundef 0x3FF6247EC0000000, float noundef 0x3FF5AB07E0000000, float noundef 0x3FF5342B60000000, float noundef 0x3FF4BFDAE0000000, float noundef 0x3FF44E0860000000, float noundef 0x3FF3DEA640000000, float noundef 0x3FF371A740000000, float noundef 0x3FF306FE00000000, float noundef 0x3FF29E9E00000000, float noundef 0x3FF2387A60000000, float noundef 0x3FF1D48740000000, float noundef 0x3FF172B840000000, float noundef 0x3FF11301E0000000, float noundef 0x3FF0B55860000000, float noundef 0x3FF059B0E0000000, float noundef 1.000000e+00)
  store <16 x float> %call4, ptr %vtable_lo, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vminus_ln2_hi) #5
  %call5 = call <16 x float> @_mm512_set1_ps(float noundef 0xBFE62E4300000000)
  store <16 x float> %call5, ptr %vminus_ln2_hi, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vminus_ln2_lo) #5
  %call6 = call <16 x float> @_mm512_set1_ps(float noundef 0x3E205C6100000000)
  store <16 x float> %call6, ptr %vminus_ln2_lo, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vc2) #5
  %call7 = call <16 x float> @_mm512_set1_ps(float noundef 5.000000e-01)
  store <16 x float> %call7, ptr %vc2, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vc1) #5
  %call8 = call <16 x float> @_mm512_set1_ps(float noundef 0x3FF0000F60000000)
  store <16 x float> %call8, ptr %vc1, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vone) #5
  %call9 = call <16 x float> @_mm512_set1_ps(float noundef 1.000000e+00)
  store <16 x float> %call9, ptr %vone, align 64, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 64, ptr %vx) #5
  %1 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %call10 = call <16 x float> @_mm512_loadu_ps(ptr noundef %1)
  store <16 x float> %call10, ptr %vx, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vz) #5
  %2 = load <16 x float>, ptr %vx, align 64, !tbaa !11
  %call11 = call <8 x i64> @_mm512_castps_si512(<16 x float> noundef %2)
  %3 = load <8 x i64>, ptr %vsign_mask, align 64, !tbaa !11
  %call12 = call <8 x i64> @_mm512_or_epi32(<8 x i64> noundef %call11, <8 x i64> noundef %3)
  %call13 = call <16 x float> @_mm512_castsi512_ps(<8 x i64> noundef %call12)
  store <16 x float> %call13, ptr %vz, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vn) #5
  %4 = load <16 x float>, ptr %vz, align 64, !tbaa !11
  %5 = load <16 x float>, ptr %vlog2e, align 64, !tbaa !11
  %6 = load <16 x float>, ptr %vmagic_bias, align 64, !tbaa !11
  %call14 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %4, <16 x float> noundef %5, <16 x float> noundef %6)
  store <16 x float> %call14, ptr %vn, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vl) #5
  %7 = load <16 x float>, ptr %vtable_lo, align 64, !tbaa !11
  %8 = load <16 x float>, ptr %vn, align 64, !tbaa !11
  %call15 = call <8 x i64> @_mm512_castps_si512(<16 x float> noundef %8)
  %9 = load <16 x float>, ptr %vtable_hi, align 64, !tbaa !11
  %call16 = call <16 x float> @_mm512_permutex2var_ps(<16 x float> noundef %7, <8 x i64> noundef %call15, <16 x float> noundef %9)
  store <16 x float> %call16, ptr %vl, align 64, !tbaa !11
  %10 = load <16 x float>, ptr %vn, align 64, !tbaa !11
  %11 = load <16 x float>, ptr %vmagic_bias, align 64, !tbaa !11
  %call17 = call <16 x float> @_mm512_sub_ps(<16 x float> noundef %10, <16 x float> noundef %11)
  store <16 x float> %call17, ptr %vn, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vt) #5
  %12 = load <16 x float>, ptr %vn, align 64, !tbaa !11
  %13 = load <16 x float>, ptr %vminus_ln2_hi, align 64, !tbaa !11
  %14 = load <16 x float>, ptr %vz, align 64, !tbaa !11
  %call18 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %12, <16 x float> noundef %13, <16 x float> noundef %14)
  store <16 x float> %call18, ptr %vt, align 64, !tbaa !11
  %15 = load <16 x float>, ptr %vn, align 64, !tbaa !11
  %16 = load <16 x float>, ptr %vminus_ln2_lo, align 64, !tbaa !11
  %17 = load <16 x float>, ptr %vt, align 64, !tbaa !11
  %call19 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %15, <16 x float> noundef %16, <16 x float> noundef %17)
  store <16 x float> %call19, ptr %vt, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vp) #5
  %18 = load <16 x float>, ptr %vt, align 64, !tbaa !11
  %19 = load <16 x float>, ptr %vc2, align 64, !tbaa !11
  %20 = load <16 x float>, ptr %vc1, align 64, !tbaa !11
  %call20 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %18, <16 x float> noundef %19, <16 x float> noundef %20)
  store <16 x float> %call20, ptr %vp, align 64, !tbaa !11
  %21 = load <16 x float>, ptr %vt, align 64, !tbaa !11
  %22 = load <16 x float>, ptr %vl, align 64, !tbaa !11
  %call21 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %21, <16 x float> noundef %22)
  store <16 x float> %call21, ptr %vt, align 64, !tbaa !11
  %23 = load <16 x float>, ptr %vt, align 64, !tbaa !11
  %24 = load <16 x float>, ptr %vp, align 64, !tbaa !11
  %25 = load <16 x float>, ptr %vl, align 64, !tbaa !11
  %call22 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %23, <16 x float> noundef %24, <16 x float> noundef %25)
  store <16 x float> %call22, ptr %vp, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %ve) #5
  %26 = load <16 x float>, ptr %vp, align 64, !tbaa !11
  %27 = load <16 x float>, ptr %vn, align 64, !tbaa !11
  %call23 = call <16 x float> @_mm512_scalef_ps(<16 x float> noundef %26, <16 x float> noundef %27)
  store <16 x float> %call23, ptr %ve, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vd) #5
  %28 = load <16 x float>, ptr %ve, align 64, !tbaa !11
  %29 = load <16 x float>, ptr %vone, align 64, !tbaa !11
  %call24 = call <16 x float> @_mm512_add_ps(<16 x float> noundef %28, <16 x float> noundef %29)
  store <16 x float> %call24, ptr %vd, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vf) #5
  %30 = load <16 x float>, ptr %ve, align 64, !tbaa !11
  %31 = load <16 x float>, ptr %vd, align 64, !tbaa !11
  %call25 = call <16 x float> @_mm512_div_ps(<16 x float> noundef %30, <16 x float> noundef %31)
  store <16 x float> %call25, ptr %vf, align 64, !tbaa !11
  %32 = load <16 x float>, ptr %vf, align 64, !tbaa !11
  %33 = load <16 x float>, ptr %vx, align 64, !tbaa !11
  %call26 = call <8 x i64> @_mm512_castps_si512(<16 x float> noundef %33)
  %34 = load <8 x i64>, ptr %vsign_mask, align 64, !tbaa !11
  %call27 = call zeroext i16 @_mm512_testn_epi32_mask(<8 x i64> noundef %call26, <8 x i64> noundef %34)
  %35 = load <16 x float>, ptr %vone, align 64, !tbaa !11
  %36 = load <16 x float>, ptr %vf, align 64, !tbaa !11
  %call28 = call <16 x float> @_mm512_mask_sub_ps(<16 x float> noundef %32, i16 noundef zeroext %call27, <16 x float> noundef %35, <16 x float> noundef %36)
  store <16 x float> %call28, ptr %vf, align 64, !tbaa !11
  %37 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %38 = load <16 x float>, ptr %vf, align 64, !tbaa !11
  call void @_mm512_storeu_ps(ptr noundef %37, <16 x float> noundef %38)
  %39 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %39, i64 16
  store ptr %add.ptr, ptr %input.addr, align 8, !tbaa !9
  %40 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr29 = getelementptr inbounds float, ptr %40, i64 16
  store ptr %add.ptr29, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 64, ptr %vf) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %ve) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vp) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vt) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vl) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vn) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vz) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vx) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub = sub i64 %41, 64
  store i64 %sub, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 64, ptr %vone) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vc1) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vc2) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vminus_ln2_lo) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vminus_ln2_hi) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vtable_lo) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vtable_hi) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vlog2e) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vmagic_bias) #5
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
define internal <16 x float> @_mm512_set_ps(float noundef %__A, float noundef %__B, float noundef %__C, float noundef %__D, float noundef %__E, float noundef %__F, float noundef %__G, float noundef %__H, float noundef %__I, float noundef %__J, float noundef %__K, float noundef %__L, float noundef %__M, float noundef %__N, float noundef %__O, float noundef %__P) #2 {
entry:
  %__A.addr = alloca float, align 4
  %__B.addr = alloca float, align 4
  %__C.addr = alloca float, align 4
  %__D.addr = alloca float, align 4
  %__E.addr = alloca float, align 4
  %__F.addr = alloca float, align 4
  %__G.addr = alloca float, align 4
  %__H.addr = alloca float, align 4
  %__I.addr = alloca float, align 4
  %__J.addr = alloca float, align 4
  %__K.addr = alloca float, align 4
  %__L.addr = alloca float, align 4
  %__M.addr = alloca float, align 4
  %__N.addr = alloca float, align 4
  %__O.addr = alloca float, align 4
  %__P.addr = alloca float, align 4
  %.compoundliteral = alloca <16 x float>, align 64
  store float %__A, ptr %__A.addr, align 4, !tbaa !16
  store float %__B, ptr %__B.addr, align 4, !tbaa !16
  store float %__C, ptr %__C.addr, align 4, !tbaa !16
  store float %__D, ptr %__D.addr, align 4, !tbaa !16
  store float %__E, ptr %__E.addr, align 4, !tbaa !16
  store float %__F, ptr %__F.addr, align 4, !tbaa !16
  store float %__G, ptr %__G.addr, align 4, !tbaa !16
  store float %__H, ptr %__H.addr, align 4, !tbaa !16
  store float %__I, ptr %__I.addr, align 4, !tbaa !16
  store float %__J, ptr %__J.addr, align 4, !tbaa !16
  store float %__K, ptr %__K.addr, align 4, !tbaa !16
  store float %__L, ptr %__L.addr, align 4, !tbaa !16
  store float %__M, ptr %__M.addr, align 4, !tbaa !16
  store float %__N, ptr %__N.addr, align 4, !tbaa !16
  store float %__O, ptr %__O.addr, align 4, !tbaa !16
  store float %__P, ptr %__P.addr, align 4, !tbaa !16
  %0 = load float, ptr %__P.addr, align 4, !tbaa !16
  %vecinit = insertelement <16 x float> undef, float %0, i32 0
  %1 = load float, ptr %__O.addr, align 4, !tbaa !16
  %vecinit1 = insertelement <16 x float> %vecinit, float %1, i32 1
  %2 = load float, ptr %__N.addr, align 4, !tbaa !16
  %vecinit2 = insertelement <16 x float> %vecinit1, float %2, i32 2
  %3 = load float, ptr %__M.addr, align 4, !tbaa !16
  %vecinit3 = insertelement <16 x float> %vecinit2, float %3, i32 3
  %4 = load float, ptr %__L.addr, align 4, !tbaa !16
  %vecinit4 = insertelement <16 x float> %vecinit3, float %4, i32 4
  %5 = load float, ptr %__K.addr, align 4, !tbaa !16
  %vecinit5 = insertelement <16 x float> %vecinit4, float %5, i32 5
  %6 = load float, ptr %__J.addr, align 4, !tbaa !16
  %vecinit6 = insertelement <16 x float> %vecinit5, float %6, i32 6
  %7 = load float, ptr %__I.addr, align 4, !tbaa !16
  %vecinit7 = insertelement <16 x float> %vecinit6, float %7, i32 7
  %8 = load float, ptr %__H.addr, align 4, !tbaa !16
  %vecinit8 = insertelement <16 x float> %vecinit7, float %8, i32 8
  %9 = load float, ptr %__G.addr, align 4, !tbaa !16
  %vecinit9 = insertelement <16 x float> %vecinit8, float %9, i32 9
  %10 = load float, ptr %__F.addr, align 4, !tbaa !16
  %vecinit10 = insertelement <16 x float> %vecinit9, float %10, i32 10
  %11 = load float, ptr %__E.addr, align 4, !tbaa !16
  %vecinit11 = insertelement <16 x float> %vecinit10, float %11, i32 11
  %12 = load float, ptr %__D.addr, align 4, !tbaa !16
  %vecinit12 = insertelement <16 x float> %vecinit11, float %12, i32 12
  %13 = load float, ptr %__C.addr, align 4, !tbaa !16
  %vecinit13 = insertelement <16 x float> %vecinit12, float %13, i32 13
  %14 = load float, ptr %__B.addr, align 4, !tbaa !16
  %vecinit14 = insertelement <16 x float> %vecinit13, float %14, i32 14
  %15 = load float, ptr %__A.addr, align 4, !tbaa !16
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
define internal <16 x float> @_mm512_permutex2var_ps(<16 x float> noundef %__A, <8 x i64> noundef %__I, <16 x float> noundef %__B) #2 {
entry:
  %__A.addr = alloca <16 x float>, align 64
  %__I.addr = alloca <8 x i64>, align 64
  %__B.addr = alloca <16 x float>, align 64
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !11
  store <8 x i64> %__I, ptr %__I.addr, align 64, !tbaa !11
  store <16 x float> %__B, ptr %__B.addr, align 64, !tbaa !11
  %0 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !11
  %1 = load <8 x i64>, ptr %__I.addr, align 64, !tbaa !11
  %2 = bitcast <8 x i64> %1 to <16 x i32>
  %3 = load <16 x float>, ptr %__B.addr, align 64, !tbaa !11
  %4 = call <16 x float> @llvm.x86.avx512.vpermi2var.ps.512(<16 x float> %0, <16 x i32> %2, <16 x float> %3)
  ret <16 x float> %4
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
define internal <16 x float> @_mm512_div_ps(<16 x float> noundef %__a, <16 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <16 x float>, align 64
  %__b.addr = alloca <16 x float>, align 64
  store <16 x float> %__a, ptr %__a.addr, align 64, !tbaa !11
  store <16 x float> %__b, ptr %__b.addr, align 64, !tbaa !11
  %0 = load <16 x float>, ptr %__a.addr, align 64, !tbaa !11
  %1 = load <16 x float>, ptr %__b.addr, align 64, !tbaa !11
  %div = fdiv <16 x float> %0, %1
  ret <16 x float> %div
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
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.vpermi2var.ps.512(<16 x float>, <16 x i32>, <16 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.scalef.ps.512(<16 x float>, <16 x float>, <16 x float>, i16, i32 immarg) #4

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_undefined_ps() #2 {
entry:
  ret <16 x float> zeroinitializer
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
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
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
