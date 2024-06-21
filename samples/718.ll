; ModuleID = 'samples/718.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-vsigmoid/gen/vsigmoid-avx512f-rr2-lut32-p2-perm2-scalef-div-x64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.7 = type { i32, float, float, float, float, float, float, float, [32 x i8], [16 x float], [16 x float] }
%struct.__loadu_ps = type { <16 x float> }
%struct.__storeu_ps = type { <16 x float> }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_vsigmoid_ukernel__avx512f_rr2_lut32_p2_perm2_scalef_div_x64(i64 noundef %n, ptr noundef %x, ptr noundef %y, ptr noalias noundef align 64 dereferenceable(512) %params) #0 {
entry:
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %vsign_mask = alloca <8 x i64>, align 64
  %vmagic_bias = alloca <16 x float>, align 64
  %vlog2e = alloca <16 x float>, align 64
  %vtable_lo = alloca <16 x float>, align 64
  %vtable_hi = alloca <16 x float>, align 64
  %vminus_ln2_hi = alloca <16 x float>, align 64
  %vminus_ln2_lo = alloca <16 x float>, align 64
  %vc2 = alloca <16 x float>, align 64
  %vc1 = alloca <16 x float>, align 64
  %vone = alloca <16 x float>, align 64
  %vx0 = alloca <16 x float>, align 64
  %vx1 = alloca <16 x float>, align 64
  %vx2 = alloca <16 x float>, align 64
  %vx3 = alloca <16 x float>, align 64
  %vz0 = alloca <16 x float>, align 64
  %vz1 = alloca <16 x float>, align 64
  %vz2 = alloca <16 x float>, align 64
  %vz3 = alloca <16 x float>, align 64
  %vn0 = alloca <16 x float>, align 64
  %vn1 = alloca <16 x float>, align 64
  %vn2 = alloca <16 x float>, align 64
  %vn3 = alloca <16 x float>, align 64
  %vl0 = alloca <16 x float>, align 64
  %vl1 = alloca <16 x float>, align 64
  %vl2 = alloca <16 x float>, align 64
  %vl3 = alloca <16 x float>, align 64
  %vt0 = alloca <16 x float>, align 64
  %vt1 = alloca <16 x float>, align 64
  %vt2 = alloca <16 x float>, align 64
  %vt3 = alloca <16 x float>, align 64
  %vp0 = alloca <16 x float>, align 64
  %vp1 = alloca <16 x float>, align 64
  %vp2 = alloca <16 x float>, align 64
  %vp3 = alloca <16 x float>, align 64
  %ve0 = alloca <16 x float>, align 64
  %ve1 = alloca <16 x float>, align 64
  %ve2 = alloca <16 x float>, align 64
  %ve3 = alloca <16 x float>, align 64
  %vd0 = alloca <16 x float>, align 64
  %vd1 = alloca <16 x float>, align 64
  %vd2 = alloca <16 x float>, align 64
  %vd3 = alloca <16 x float>, align 64
  %vf0 = alloca <16 x float>, align 64
  %vf1 = alloca <16 x float>, align 64
  %vf2 = alloca <16 x float>, align 64
  %vf3 = alloca <16 x float>, align 64
  %vx = alloca <16 x float>, align 64
  %vz = alloca <16 x float>, align 64
  %vn = alloca <16 x float>, align 64
  %vl = alloca <16 x float>, align 64
  %vt = alloca <16 x float>, align 64
  %vp = alloca <16 x float>, align 64
  %ve = alloca <16 x float>, align 64
  %vd = alloca <16 x float>, align 64
  %vf = alloca <16 x float>, align 64
  %vmask = alloca i16, align 2
  %vx127 = alloca <16 x float>, align 64
  %vz129 = alloca <16 x float>, align 64
  %vn133 = alloca <16 x float>, align 64
  %vl135 = alloca <16 x float>, align 64
  %vt139 = alloca <16 x float>, align 64
  %vp142 = alloca <16 x float>, align 64
  %ve146 = alloca <16 x float>, align 64
  %vd148 = alloca <16 x float>, align 64
  %vf150 = alloca <16 x float>, align 64
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !8
  store ptr %y, ptr %y.addr, align 8, !tbaa !8
  store ptr %params, ptr %params.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 64, ptr %vsign_mask) #8
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %sign_mask = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %sign_mask, align 64, !tbaa !10
  %call = call <8 x i64> @_mm512_set1_epi32(i32 noundef %1)
  store <8 x i64> %call, ptr %vsign_mask, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vmagic_bias) #8
  %2 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %magic_bias = getelementptr inbounds %struct.anon.7, ptr %2, i32 0, i32 1
  %3 = load float, ptr %magic_bias, align 4, !tbaa !10
  %call1 = call <16 x float> @_mm512_set1_ps(float noundef %3)
  store <16 x float> %call1, ptr %vmagic_bias, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vlog2e) #8
  %4 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %log2e = getelementptr inbounds %struct.anon.7, ptr %4, i32 0, i32 2
  %5 = load float, ptr %log2e, align 8, !tbaa !10
  %call2 = call <16 x float> @_mm512_set1_ps(float noundef %5)
  store <16 x float> %call2, ptr %vlog2e, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vtable_lo) #8
  %6 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %table_lo = getelementptr inbounds %struct.anon.7, ptr %6, i32 0, i32 9
  %arraydecay = getelementptr inbounds [16 x float], ptr %table_lo, i64 0, i64 0
  %call3 = call <16 x float> @_mm512_load_ps(ptr noundef %arraydecay)
  store <16 x float> %call3, ptr %vtable_lo, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vtable_hi) #8
  %7 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %table_hi = getelementptr inbounds %struct.anon.7, ptr %7, i32 0, i32 10
  %arraydecay4 = getelementptr inbounds [16 x float], ptr %table_hi, i64 0, i64 0
  %call5 = call <16 x float> @_mm512_load_ps(ptr noundef %arraydecay4)
  store <16 x float> %call5, ptr %vtable_hi, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vminus_ln2_hi) #8
  %8 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %minus_ln2_hi = getelementptr inbounds %struct.anon.7, ptr %8, i32 0, i32 3
  %9 = load float, ptr %minus_ln2_hi, align 4, !tbaa !10
  %call6 = call <16 x float> @_mm512_set1_ps(float noundef %9)
  store <16 x float> %call6, ptr %vminus_ln2_hi, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vminus_ln2_lo) #8
  %10 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %minus_ln2_lo = getelementptr inbounds %struct.anon.7, ptr %10, i32 0, i32 4
  %11 = load float, ptr %minus_ln2_lo, align 16, !tbaa !10
  %call7 = call <16 x float> @_mm512_set1_ps(float noundef %11)
  store <16 x float> %call7, ptr %vminus_ln2_lo, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vc2) #8
  %12 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %c2 = getelementptr inbounds %struct.anon.7, ptr %12, i32 0, i32 5
  %13 = load float, ptr %c2, align 4, !tbaa !10
  %call8 = call <16 x float> @_mm512_set1_ps(float noundef %13)
  store <16 x float> %call8, ptr %vc2, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vc1) #8
  %14 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %c1 = getelementptr inbounds %struct.anon.7, ptr %14, i32 0, i32 6
  %15 = load float, ptr %c1, align 8, !tbaa !10
  %call9 = call <16 x float> @_mm512_set1_ps(float noundef %15)
  store <16 x float> %call9, ptr %vc1, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vone) #8
  %16 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %one = getelementptr inbounds %struct.anon.7, ptr %16, i32 0, i32 7
  %17 = load float, ptr %one, align 4, !tbaa !10
  %call10 = call <16 x float> @_mm512_set1_ps(float noundef %17)
  store <16 x float> %call10, ptr %vone, align 64, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp = icmp uge i64 %18, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 64, ptr %vx0) #8
  %19 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %call11 = call <16 x float> @_mm512_loadu_ps(ptr noundef %19)
  store <16 x float> %call11, ptr %vx0, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vx1) #8
  %20 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds float, ptr %20, i64 16
  %call12 = call <16 x float> @_mm512_loadu_ps(ptr noundef %add.ptr)
  store <16 x float> %call12, ptr %vx1, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vx2) #8
  %21 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %add.ptr13 = getelementptr inbounds float, ptr %21, i64 32
  %call14 = call <16 x float> @_mm512_loadu_ps(ptr noundef %add.ptr13)
  store <16 x float> %call14, ptr %vx2, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vx3) #8
  %22 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %add.ptr15 = getelementptr inbounds float, ptr %22, i64 48
  %call16 = call <16 x float> @_mm512_loadu_ps(ptr noundef %add.ptr15)
  store <16 x float> %call16, ptr %vx3, align 64, !tbaa !10
  %23 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %add.ptr17 = getelementptr inbounds float, ptr %23, i64 64
  store ptr %add.ptr17, ptr %x.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 64, ptr %vz0) #8
  %24 = load <16 x float>, ptr %vx0, align 64, !tbaa !10
  %call18 = call <8 x i64> @_mm512_castps_si512(<16 x float> noundef %24)
  %25 = load <8 x i64>, ptr %vsign_mask, align 64, !tbaa !10
  %call19 = call <8 x i64> @_mm512_or_epi32(<8 x i64> noundef %call18, <8 x i64> noundef %25)
  %call20 = call <16 x float> @_mm512_castsi512_ps(<8 x i64> noundef %call19)
  store <16 x float> %call20, ptr %vz0, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vz1) #8
  %26 = load <16 x float>, ptr %vx1, align 64, !tbaa !10
  %call21 = call <8 x i64> @_mm512_castps_si512(<16 x float> noundef %26)
  %27 = load <8 x i64>, ptr %vsign_mask, align 64, !tbaa !10
  %call22 = call <8 x i64> @_mm512_or_epi32(<8 x i64> noundef %call21, <8 x i64> noundef %27)
  %call23 = call <16 x float> @_mm512_castsi512_ps(<8 x i64> noundef %call22)
  store <16 x float> %call23, ptr %vz1, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vz2) #8
  %28 = load <16 x float>, ptr %vx2, align 64, !tbaa !10
  %call24 = call <8 x i64> @_mm512_castps_si512(<16 x float> noundef %28)
  %29 = load <8 x i64>, ptr %vsign_mask, align 64, !tbaa !10
  %call25 = call <8 x i64> @_mm512_or_epi32(<8 x i64> noundef %call24, <8 x i64> noundef %29)
  %call26 = call <16 x float> @_mm512_castsi512_ps(<8 x i64> noundef %call25)
  store <16 x float> %call26, ptr %vz2, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vz3) #8
  %30 = load <16 x float>, ptr %vx3, align 64, !tbaa !10
  %call27 = call <8 x i64> @_mm512_castps_si512(<16 x float> noundef %30)
  %31 = load <8 x i64>, ptr %vsign_mask, align 64, !tbaa !10
  %call28 = call <8 x i64> @_mm512_or_epi32(<8 x i64> noundef %call27, <8 x i64> noundef %31)
  %call29 = call <16 x float> @_mm512_castsi512_ps(<8 x i64> noundef %call28)
  store <16 x float> %call29, ptr %vz3, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vn0) #8
  %32 = load <16 x float>, ptr %vz0, align 64, !tbaa !10
  %33 = load <16 x float>, ptr %vlog2e, align 64, !tbaa !10
  %34 = load <16 x float>, ptr %vmagic_bias, align 64, !tbaa !10
  %call30 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %32, <16 x float> noundef %33, <16 x float> noundef %34)
  store <16 x float> %call30, ptr %vn0, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vn1) #8
  %35 = load <16 x float>, ptr %vz1, align 64, !tbaa !10
  %36 = load <16 x float>, ptr %vlog2e, align 64, !tbaa !10
  %37 = load <16 x float>, ptr %vmagic_bias, align 64, !tbaa !10
  %call31 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %35, <16 x float> noundef %36, <16 x float> noundef %37)
  store <16 x float> %call31, ptr %vn1, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vn2) #8
  %38 = load <16 x float>, ptr %vz2, align 64, !tbaa !10
  %39 = load <16 x float>, ptr %vlog2e, align 64, !tbaa !10
  %40 = load <16 x float>, ptr %vmagic_bias, align 64, !tbaa !10
  %call32 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %38, <16 x float> noundef %39, <16 x float> noundef %40)
  store <16 x float> %call32, ptr %vn2, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vn3) #8
  %41 = load <16 x float>, ptr %vz3, align 64, !tbaa !10
  %42 = load <16 x float>, ptr %vlog2e, align 64, !tbaa !10
  %43 = load <16 x float>, ptr %vmagic_bias, align 64, !tbaa !10
  %call33 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %41, <16 x float> noundef %42, <16 x float> noundef %43)
  store <16 x float> %call33, ptr %vn3, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vl0) #8
  %44 = load <16 x float>, ptr %vtable_lo, align 64, !tbaa !10
  %45 = load <16 x float>, ptr %vn0, align 64, !tbaa !10
  %call34 = call <8 x i64> @_mm512_castps_si512(<16 x float> noundef %45)
  %46 = load <16 x float>, ptr %vtable_hi, align 64, !tbaa !10
  %call35 = call <16 x float> @_mm512_permutex2var_ps(<16 x float> noundef %44, <8 x i64> noundef %call34, <16 x float> noundef %46)
  store <16 x float> %call35, ptr %vl0, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vl1) #8
  %47 = load <16 x float>, ptr %vtable_lo, align 64, !tbaa !10
  %48 = load <16 x float>, ptr %vn1, align 64, !tbaa !10
  %call36 = call <8 x i64> @_mm512_castps_si512(<16 x float> noundef %48)
  %49 = load <16 x float>, ptr %vtable_hi, align 64, !tbaa !10
  %call37 = call <16 x float> @_mm512_permutex2var_ps(<16 x float> noundef %47, <8 x i64> noundef %call36, <16 x float> noundef %49)
  store <16 x float> %call37, ptr %vl1, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vl2) #8
  %50 = load <16 x float>, ptr %vtable_lo, align 64, !tbaa !10
  %51 = load <16 x float>, ptr %vn2, align 64, !tbaa !10
  %call38 = call <8 x i64> @_mm512_castps_si512(<16 x float> noundef %51)
  %52 = load <16 x float>, ptr %vtable_hi, align 64, !tbaa !10
  %call39 = call <16 x float> @_mm512_permutex2var_ps(<16 x float> noundef %50, <8 x i64> noundef %call38, <16 x float> noundef %52)
  store <16 x float> %call39, ptr %vl2, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vl3) #8
  %53 = load <16 x float>, ptr %vtable_lo, align 64, !tbaa !10
  %54 = load <16 x float>, ptr %vn3, align 64, !tbaa !10
  %call40 = call <8 x i64> @_mm512_castps_si512(<16 x float> noundef %54)
  %55 = load <16 x float>, ptr %vtable_hi, align 64, !tbaa !10
  %call41 = call <16 x float> @_mm512_permutex2var_ps(<16 x float> noundef %53, <8 x i64> noundef %call40, <16 x float> noundef %55)
  store <16 x float> %call41, ptr %vl3, align 64, !tbaa !10
  %56 = load <16 x float>, ptr %vn0, align 64, !tbaa !10
  %57 = load <16 x float>, ptr %vmagic_bias, align 64, !tbaa !10
  %call42 = call <16 x float> @_mm512_sub_ps(<16 x float> noundef %56, <16 x float> noundef %57)
  store <16 x float> %call42, ptr %vn0, align 64, !tbaa !10
  %58 = load <16 x float>, ptr %vn1, align 64, !tbaa !10
  %59 = load <16 x float>, ptr %vmagic_bias, align 64, !tbaa !10
  %call43 = call <16 x float> @_mm512_sub_ps(<16 x float> noundef %58, <16 x float> noundef %59)
  store <16 x float> %call43, ptr %vn1, align 64, !tbaa !10
  %60 = load <16 x float>, ptr %vn2, align 64, !tbaa !10
  %61 = load <16 x float>, ptr %vmagic_bias, align 64, !tbaa !10
  %call44 = call <16 x float> @_mm512_sub_ps(<16 x float> noundef %60, <16 x float> noundef %61)
  store <16 x float> %call44, ptr %vn2, align 64, !tbaa !10
  %62 = load <16 x float>, ptr %vn3, align 64, !tbaa !10
  %63 = load <16 x float>, ptr %vmagic_bias, align 64, !tbaa !10
  %call45 = call <16 x float> @_mm512_sub_ps(<16 x float> noundef %62, <16 x float> noundef %63)
  store <16 x float> %call45, ptr %vn3, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vt0) #8
  %64 = load <16 x float>, ptr %vn0, align 64, !tbaa !10
  %65 = load <16 x float>, ptr %vminus_ln2_hi, align 64, !tbaa !10
  %66 = load <16 x float>, ptr %vz0, align 64, !tbaa !10
  %call46 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %64, <16 x float> noundef %65, <16 x float> noundef %66)
  store <16 x float> %call46, ptr %vt0, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vt1) #8
  %67 = load <16 x float>, ptr %vn1, align 64, !tbaa !10
  %68 = load <16 x float>, ptr %vminus_ln2_hi, align 64, !tbaa !10
  %69 = load <16 x float>, ptr %vz1, align 64, !tbaa !10
  %call47 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %67, <16 x float> noundef %68, <16 x float> noundef %69)
  store <16 x float> %call47, ptr %vt1, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vt2) #8
  %70 = load <16 x float>, ptr %vn2, align 64, !tbaa !10
  %71 = load <16 x float>, ptr %vminus_ln2_hi, align 64, !tbaa !10
  %72 = load <16 x float>, ptr %vz2, align 64, !tbaa !10
  %call48 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %70, <16 x float> noundef %71, <16 x float> noundef %72)
  store <16 x float> %call48, ptr %vt2, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vt3) #8
  %73 = load <16 x float>, ptr %vn3, align 64, !tbaa !10
  %74 = load <16 x float>, ptr %vminus_ln2_hi, align 64, !tbaa !10
  %75 = load <16 x float>, ptr %vz3, align 64, !tbaa !10
  %call49 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %73, <16 x float> noundef %74, <16 x float> noundef %75)
  store <16 x float> %call49, ptr %vt3, align 64, !tbaa !10
  %76 = load <16 x float>, ptr %vn0, align 64, !tbaa !10
  %77 = load <16 x float>, ptr %vminus_ln2_lo, align 64, !tbaa !10
  %78 = load <16 x float>, ptr %vt0, align 64, !tbaa !10
  %call50 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %76, <16 x float> noundef %77, <16 x float> noundef %78)
  store <16 x float> %call50, ptr %vt0, align 64, !tbaa !10
  %79 = load <16 x float>, ptr %vn1, align 64, !tbaa !10
  %80 = load <16 x float>, ptr %vminus_ln2_lo, align 64, !tbaa !10
  %81 = load <16 x float>, ptr %vt1, align 64, !tbaa !10
  %call51 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %79, <16 x float> noundef %80, <16 x float> noundef %81)
  store <16 x float> %call51, ptr %vt1, align 64, !tbaa !10
  %82 = load <16 x float>, ptr %vn2, align 64, !tbaa !10
  %83 = load <16 x float>, ptr %vminus_ln2_lo, align 64, !tbaa !10
  %84 = load <16 x float>, ptr %vt2, align 64, !tbaa !10
  %call52 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %82, <16 x float> noundef %83, <16 x float> noundef %84)
  store <16 x float> %call52, ptr %vt2, align 64, !tbaa !10
  %85 = load <16 x float>, ptr %vn3, align 64, !tbaa !10
  %86 = load <16 x float>, ptr %vminus_ln2_lo, align 64, !tbaa !10
  %87 = load <16 x float>, ptr %vt3, align 64, !tbaa !10
  %call53 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %85, <16 x float> noundef %86, <16 x float> noundef %87)
  store <16 x float> %call53, ptr %vt3, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vp0) #8
  %88 = load <16 x float>, ptr %vt0, align 64, !tbaa !10
  %89 = load <16 x float>, ptr %vc2, align 64, !tbaa !10
  %90 = load <16 x float>, ptr %vc1, align 64, !tbaa !10
  %call54 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %88, <16 x float> noundef %89, <16 x float> noundef %90)
  store <16 x float> %call54, ptr %vp0, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vp1) #8
  %91 = load <16 x float>, ptr %vt1, align 64, !tbaa !10
  %92 = load <16 x float>, ptr %vc2, align 64, !tbaa !10
  %93 = load <16 x float>, ptr %vc1, align 64, !tbaa !10
  %call55 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %91, <16 x float> noundef %92, <16 x float> noundef %93)
  store <16 x float> %call55, ptr %vp1, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vp2) #8
  %94 = load <16 x float>, ptr %vt2, align 64, !tbaa !10
  %95 = load <16 x float>, ptr %vc2, align 64, !tbaa !10
  %96 = load <16 x float>, ptr %vc1, align 64, !tbaa !10
  %call56 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %94, <16 x float> noundef %95, <16 x float> noundef %96)
  store <16 x float> %call56, ptr %vp2, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vp3) #8
  %97 = load <16 x float>, ptr %vt3, align 64, !tbaa !10
  %98 = load <16 x float>, ptr %vc2, align 64, !tbaa !10
  %99 = load <16 x float>, ptr %vc1, align 64, !tbaa !10
  %call57 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %97, <16 x float> noundef %98, <16 x float> noundef %99)
  store <16 x float> %call57, ptr %vp3, align 64, !tbaa !10
  %100 = load <16 x float>, ptr %vt0, align 64, !tbaa !10
  %101 = load <16 x float>, ptr %vl0, align 64, !tbaa !10
  %call58 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %100, <16 x float> noundef %101)
  store <16 x float> %call58, ptr %vt0, align 64, !tbaa !10
  %102 = load <16 x float>, ptr %vt1, align 64, !tbaa !10
  %103 = load <16 x float>, ptr %vl1, align 64, !tbaa !10
  %call59 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %102, <16 x float> noundef %103)
  store <16 x float> %call59, ptr %vt1, align 64, !tbaa !10
  %104 = load <16 x float>, ptr %vt2, align 64, !tbaa !10
  %105 = load <16 x float>, ptr %vl2, align 64, !tbaa !10
  %call60 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %104, <16 x float> noundef %105)
  store <16 x float> %call60, ptr %vt2, align 64, !tbaa !10
  %106 = load <16 x float>, ptr %vt3, align 64, !tbaa !10
  %107 = load <16 x float>, ptr %vl3, align 64, !tbaa !10
  %call61 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %106, <16 x float> noundef %107)
  store <16 x float> %call61, ptr %vt3, align 64, !tbaa !10
  %108 = load <16 x float>, ptr %vt0, align 64, !tbaa !10
  %109 = load <16 x float>, ptr %vp0, align 64, !tbaa !10
  %110 = load <16 x float>, ptr %vl0, align 64, !tbaa !10
  %call62 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %108, <16 x float> noundef %109, <16 x float> noundef %110)
  store <16 x float> %call62, ptr %vp0, align 64, !tbaa !10
  %111 = load <16 x float>, ptr %vt1, align 64, !tbaa !10
  %112 = load <16 x float>, ptr %vp1, align 64, !tbaa !10
  %113 = load <16 x float>, ptr %vl1, align 64, !tbaa !10
  %call63 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %111, <16 x float> noundef %112, <16 x float> noundef %113)
  store <16 x float> %call63, ptr %vp1, align 64, !tbaa !10
  %114 = load <16 x float>, ptr %vt2, align 64, !tbaa !10
  %115 = load <16 x float>, ptr %vp2, align 64, !tbaa !10
  %116 = load <16 x float>, ptr %vl2, align 64, !tbaa !10
  %call64 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %114, <16 x float> noundef %115, <16 x float> noundef %116)
  store <16 x float> %call64, ptr %vp2, align 64, !tbaa !10
  %117 = load <16 x float>, ptr %vt3, align 64, !tbaa !10
  %118 = load <16 x float>, ptr %vp3, align 64, !tbaa !10
  %119 = load <16 x float>, ptr %vl3, align 64, !tbaa !10
  %call65 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %117, <16 x float> noundef %118, <16 x float> noundef %119)
  store <16 x float> %call65, ptr %vp3, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %ve0) #8
  %120 = load <16 x float>, ptr %vp0, align 64, !tbaa !10
  %121 = load <16 x float>, ptr %vn0, align 64, !tbaa !10
  %call66 = call <16 x float> @_mm512_scalef_ps(<16 x float> noundef %120, <16 x float> noundef %121)
  store <16 x float> %call66, ptr %ve0, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %ve1) #8
  %122 = load <16 x float>, ptr %vp1, align 64, !tbaa !10
  %123 = load <16 x float>, ptr %vn1, align 64, !tbaa !10
  %call67 = call <16 x float> @_mm512_scalef_ps(<16 x float> noundef %122, <16 x float> noundef %123)
  store <16 x float> %call67, ptr %ve1, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %ve2) #8
  %124 = load <16 x float>, ptr %vp2, align 64, !tbaa !10
  %125 = load <16 x float>, ptr %vn2, align 64, !tbaa !10
  %call68 = call <16 x float> @_mm512_scalef_ps(<16 x float> noundef %124, <16 x float> noundef %125)
  store <16 x float> %call68, ptr %ve2, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %ve3) #8
  %126 = load <16 x float>, ptr %vp3, align 64, !tbaa !10
  %127 = load <16 x float>, ptr %vn3, align 64, !tbaa !10
  %call69 = call <16 x float> @_mm512_scalef_ps(<16 x float> noundef %126, <16 x float> noundef %127)
  store <16 x float> %call69, ptr %ve3, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vd0) #8
  %128 = load <16 x float>, ptr %ve0, align 64, !tbaa !10
  %129 = load <16 x float>, ptr %vone, align 64, !tbaa !10
  %call70 = call <16 x float> @_mm512_add_ps(<16 x float> noundef %128, <16 x float> noundef %129)
  store <16 x float> %call70, ptr %vd0, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vd1) #8
  %130 = load <16 x float>, ptr %ve1, align 64, !tbaa !10
  %131 = load <16 x float>, ptr %vone, align 64, !tbaa !10
  %call71 = call <16 x float> @_mm512_add_ps(<16 x float> noundef %130, <16 x float> noundef %131)
  store <16 x float> %call71, ptr %vd1, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vd2) #8
  %132 = load <16 x float>, ptr %ve2, align 64, !tbaa !10
  %133 = load <16 x float>, ptr %vone, align 64, !tbaa !10
  %call72 = call <16 x float> @_mm512_add_ps(<16 x float> noundef %132, <16 x float> noundef %133)
  store <16 x float> %call72, ptr %vd2, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vd3) #8
  %134 = load <16 x float>, ptr %ve3, align 64, !tbaa !10
  %135 = load <16 x float>, ptr %vone, align 64, !tbaa !10
  %call73 = call <16 x float> @_mm512_add_ps(<16 x float> noundef %134, <16 x float> noundef %135)
  store <16 x float> %call73, ptr %vd3, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vf0) #8
  %136 = load <16 x float>, ptr %ve0, align 64, !tbaa !10
  %137 = load <16 x float>, ptr %vd0, align 64, !tbaa !10
  %call74 = call <16 x float> @_mm512_div_ps(<16 x float> noundef %136, <16 x float> noundef %137)
  store <16 x float> %call74, ptr %vf0, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vf1) #8
  %138 = load <16 x float>, ptr %ve1, align 64, !tbaa !10
  %139 = load <16 x float>, ptr %vd1, align 64, !tbaa !10
  %call75 = call <16 x float> @_mm512_div_ps(<16 x float> noundef %138, <16 x float> noundef %139)
  store <16 x float> %call75, ptr %vf1, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vf2) #8
  %140 = load <16 x float>, ptr %ve2, align 64, !tbaa !10
  %141 = load <16 x float>, ptr %vd2, align 64, !tbaa !10
  %call76 = call <16 x float> @_mm512_div_ps(<16 x float> noundef %140, <16 x float> noundef %141)
  store <16 x float> %call76, ptr %vf2, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vf3) #8
  %142 = load <16 x float>, ptr %ve3, align 64, !tbaa !10
  %143 = load <16 x float>, ptr %vd3, align 64, !tbaa !10
  %call77 = call <16 x float> @_mm512_div_ps(<16 x float> noundef %142, <16 x float> noundef %143)
  store <16 x float> %call77, ptr %vf3, align 64, !tbaa !10
  %144 = load <16 x float>, ptr %vf0, align 64, !tbaa !10
  %145 = load <16 x float>, ptr %vx0, align 64, !tbaa !10
  %call78 = call <8 x i64> @_mm512_castps_si512(<16 x float> noundef %145)
  %146 = load <8 x i64>, ptr %vsign_mask, align 64, !tbaa !10
  %call79 = call zeroext i16 @_mm512_testn_epi32_mask(<8 x i64> noundef %call78, <8 x i64> noundef %146)
  %147 = load <16 x float>, ptr %vone, align 64, !tbaa !10
  %148 = load <16 x float>, ptr %vf0, align 64, !tbaa !10
  %call80 = call <16 x float> @_mm512_mask_sub_ps(<16 x float> noundef %144, i16 noundef zeroext %call79, <16 x float> noundef %147, <16 x float> noundef %148)
  store <16 x float> %call80, ptr %vf0, align 64, !tbaa !10
  %149 = load <16 x float>, ptr %vf1, align 64, !tbaa !10
  %150 = load <16 x float>, ptr %vx1, align 64, !tbaa !10
  %call81 = call <8 x i64> @_mm512_castps_si512(<16 x float> noundef %150)
  %151 = load <8 x i64>, ptr %vsign_mask, align 64, !tbaa !10
  %call82 = call zeroext i16 @_mm512_testn_epi32_mask(<8 x i64> noundef %call81, <8 x i64> noundef %151)
  %152 = load <16 x float>, ptr %vone, align 64, !tbaa !10
  %153 = load <16 x float>, ptr %vf1, align 64, !tbaa !10
  %call83 = call <16 x float> @_mm512_mask_sub_ps(<16 x float> noundef %149, i16 noundef zeroext %call82, <16 x float> noundef %152, <16 x float> noundef %153)
  store <16 x float> %call83, ptr %vf1, align 64, !tbaa !10
  %154 = load <16 x float>, ptr %vf2, align 64, !tbaa !10
  %155 = load <16 x float>, ptr %vx2, align 64, !tbaa !10
  %call84 = call <8 x i64> @_mm512_castps_si512(<16 x float> noundef %155)
  %156 = load <8 x i64>, ptr %vsign_mask, align 64, !tbaa !10
  %call85 = call zeroext i16 @_mm512_testn_epi32_mask(<8 x i64> noundef %call84, <8 x i64> noundef %156)
  %157 = load <16 x float>, ptr %vone, align 64, !tbaa !10
  %158 = load <16 x float>, ptr %vf2, align 64, !tbaa !10
  %call86 = call <16 x float> @_mm512_mask_sub_ps(<16 x float> noundef %154, i16 noundef zeroext %call85, <16 x float> noundef %157, <16 x float> noundef %158)
  store <16 x float> %call86, ptr %vf2, align 64, !tbaa !10
  %159 = load <16 x float>, ptr %vf3, align 64, !tbaa !10
  %160 = load <16 x float>, ptr %vx3, align 64, !tbaa !10
  %call87 = call <8 x i64> @_mm512_castps_si512(<16 x float> noundef %160)
  %161 = load <8 x i64>, ptr %vsign_mask, align 64, !tbaa !10
  %call88 = call zeroext i16 @_mm512_testn_epi32_mask(<8 x i64> noundef %call87, <8 x i64> noundef %161)
  %162 = load <16 x float>, ptr %vone, align 64, !tbaa !10
  %163 = load <16 x float>, ptr %vf3, align 64, !tbaa !10
  %call89 = call <16 x float> @_mm512_mask_sub_ps(<16 x float> noundef %159, i16 noundef zeroext %call88, <16 x float> noundef %162, <16 x float> noundef %163)
  store <16 x float> %call89, ptr %vf3, align 64, !tbaa !10
  %164 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %165 = load <16 x float>, ptr %vf0, align 64, !tbaa !10
  call void @_mm512_storeu_ps(ptr noundef %164, <16 x float> noundef %165)
  %166 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %add.ptr90 = getelementptr inbounds float, ptr %166, i64 16
  %167 = load <16 x float>, ptr %vf1, align 64, !tbaa !10
  call void @_mm512_storeu_ps(ptr noundef %add.ptr90, <16 x float> noundef %167)
  %168 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %add.ptr91 = getelementptr inbounds float, ptr %168, i64 32
  %169 = load <16 x float>, ptr %vf2, align 64, !tbaa !10
  call void @_mm512_storeu_ps(ptr noundef %add.ptr91, <16 x float> noundef %169)
  %170 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %add.ptr92 = getelementptr inbounds float, ptr %170, i64 48
  %171 = load <16 x float>, ptr %vf3, align 64, !tbaa !10
  call void @_mm512_storeu_ps(ptr noundef %add.ptr92, <16 x float> noundef %171)
  %172 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %add.ptr93 = getelementptr inbounds float, ptr %172, i64 64
  store ptr %add.ptr93, ptr %y.addr, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vf3) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vf2) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vf1) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vf0) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vd3) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vd2) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vd1) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vd0) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %ve3) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %ve2) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %ve1) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %ve0) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vp3) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vp2) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vp1) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vp0) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vt3) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vt2) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vt1) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vt0) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vl3) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vl2) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vl1) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vl0) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vn3) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vn2) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vn1) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vn0) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vz3) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vz2) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vz1) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vz0) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vx3) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vx2) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vx1) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vx0) #8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %173 = load i64, ptr %n.addr, align 8, !tbaa !4
  %sub = sub i64 %173, 256
  store i64 %sub, ptr %n.addr, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc118, %for.end
  %174 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp95 = icmp uge i64 %174, 64
  br i1 %cmp95, label %for.body96, label %for.end120

for.body96:                                       ; preds = %for.cond94
  call void @llvm.lifetime.start.p0(i64 64, ptr %vx) #8
  %175 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %call97 = call <16 x float> @_mm512_loadu_ps(ptr noundef %175)
  store <16 x float> %call97, ptr %vx, align 64, !tbaa !10
  %176 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %add.ptr98 = getelementptr inbounds float, ptr %176, i64 16
  store ptr %add.ptr98, ptr %x.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 64, ptr %vz) #8
  %177 = load <16 x float>, ptr %vx, align 64, !tbaa !10
  %call99 = call <8 x i64> @_mm512_castps_si512(<16 x float> noundef %177)
  %178 = load <8 x i64>, ptr %vsign_mask, align 64, !tbaa !10
  %call100 = call <8 x i64> @_mm512_or_epi32(<8 x i64> noundef %call99, <8 x i64> noundef %178)
  %call101 = call <16 x float> @_mm512_castsi512_ps(<8 x i64> noundef %call100)
  store <16 x float> %call101, ptr %vz, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vn) #8
  %179 = load <16 x float>, ptr %vz, align 64, !tbaa !10
  %180 = load <16 x float>, ptr %vlog2e, align 64, !tbaa !10
  %181 = load <16 x float>, ptr %vmagic_bias, align 64, !tbaa !10
  %call102 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %179, <16 x float> noundef %180, <16 x float> noundef %181)
  store <16 x float> %call102, ptr %vn, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vl) #8
  %182 = load <16 x float>, ptr %vtable_lo, align 64, !tbaa !10
  %183 = load <16 x float>, ptr %vn, align 64, !tbaa !10
  %call103 = call <8 x i64> @_mm512_castps_si512(<16 x float> noundef %183)
  %184 = load <16 x float>, ptr %vtable_hi, align 64, !tbaa !10
  %call104 = call <16 x float> @_mm512_permutex2var_ps(<16 x float> noundef %182, <8 x i64> noundef %call103, <16 x float> noundef %184)
  store <16 x float> %call104, ptr %vl, align 64, !tbaa !10
  %185 = load <16 x float>, ptr %vn, align 64, !tbaa !10
  %186 = load <16 x float>, ptr %vmagic_bias, align 64, !tbaa !10
  %call105 = call <16 x float> @_mm512_sub_ps(<16 x float> noundef %185, <16 x float> noundef %186)
  store <16 x float> %call105, ptr %vn, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vt) #8
  %187 = load <16 x float>, ptr %vn, align 64, !tbaa !10
  %188 = load <16 x float>, ptr %vminus_ln2_hi, align 64, !tbaa !10
  %189 = load <16 x float>, ptr %vz, align 64, !tbaa !10
  %call106 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %187, <16 x float> noundef %188, <16 x float> noundef %189)
  store <16 x float> %call106, ptr %vt, align 64, !tbaa !10
  %190 = load <16 x float>, ptr %vn, align 64, !tbaa !10
  %191 = load <16 x float>, ptr %vminus_ln2_lo, align 64, !tbaa !10
  %192 = load <16 x float>, ptr %vt, align 64, !tbaa !10
  %call107 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %190, <16 x float> noundef %191, <16 x float> noundef %192)
  store <16 x float> %call107, ptr %vt, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vp) #8
  %193 = load <16 x float>, ptr %vt, align 64, !tbaa !10
  %194 = load <16 x float>, ptr %vc2, align 64, !tbaa !10
  %195 = load <16 x float>, ptr %vc1, align 64, !tbaa !10
  %call108 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %193, <16 x float> noundef %194, <16 x float> noundef %195)
  store <16 x float> %call108, ptr %vp, align 64, !tbaa !10
  %196 = load <16 x float>, ptr %vt, align 64, !tbaa !10
  %197 = load <16 x float>, ptr %vl, align 64, !tbaa !10
  %call109 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %196, <16 x float> noundef %197)
  store <16 x float> %call109, ptr %vt, align 64, !tbaa !10
  %198 = load <16 x float>, ptr %vt, align 64, !tbaa !10
  %199 = load <16 x float>, ptr %vp, align 64, !tbaa !10
  %200 = load <16 x float>, ptr %vl, align 64, !tbaa !10
  %call110 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %198, <16 x float> noundef %199, <16 x float> noundef %200)
  store <16 x float> %call110, ptr %vp, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %ve) #8
  %201 = load <16 x float>, ptr %vp, align 64, !tbaa !10
  %202 = load <16 x float>, ptr %vn, align 64, !tbaa !10
  %call111 = call <16 x float> @_mm512_scalef_ps(<16 x float> noundef %201, <16 x float> noundef %202)
  store <16 x float> %call111, ptr %ve, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vd) #8
  %203 = load <16 x float>, ptr %ve, align 64, !tbaa !10
  %204 = load <16 x float>, ptr %vone, align 64, !tbaa !10
  %call112 = call <16 x float> @_mm512_add_ps(<16 x float> noundef %203, <16 x float> noundef %204)
  store <16 x float> %call112, ptr %vd, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vf) #8
  %205 = load <16 x float>, ptr %ve, align 64, !tbaa !10
  %206 = load <16 x float>, ptr %vd, align 64, !tbaa !10
  %call113 = call <16 x float> @_mm512_div_ps(<16 x float> noundef %205, <16 x float> noundef %206)
  store <16 x float> %call113, ptr %vf, align 64, !tbaa !10
  %207 = load <16 x float>, ptr %vf, align 64, !tbaa !10
  %208 = load <16 x float>, ptr %vx, align 64, !tbaa !10
  %call114 = call <8 x i64> @_mm512_castps_si512(<16 x float> noundef %208)
  %209 = load <8 x i64>, ptr %vsign_mask, align 64, !tbaa !10
  %call115 = call zeroext i16 @_mm512_testn_epi32_mask(<8 x i64> noundef %call114, <8 x i64> noundef %209)
  %210 = load <16 x float>, ptr %vone, align 64, !tbaa !10
  %211 = load <16 x float>, ptr %vf, align 64, !tbaa !10
  %call116 = call <16 x float> @_mm512_mask_sub_ps(<16 x float> noundef %207, i16 noundef zeroext %call115, <16 x float> noundef %210, <16 x float> noundef %211)
  store <16 x float> %call116, ptr %vf, align 64, !tbaa !10
  %212 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %213 = load <16 x float>, ptr %vf, align 64, !tbaa !10
  call void @_mm512_storeu_ps(ptr noundef %212, <16 x float> noundef %213)
  %214 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %add.ptr117 = getelementptr inbounds float, ptr %214, i64 16
  store ptr %add.ptr117, ptr %y.addr, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vf) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vd) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %ve) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vp) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vt) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vl) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vn) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vz) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vx) #8
  br label %for.inc118

for.inc118:                                       ; preds = %for.body96
  %215 = load i64, ptr %n.addr, align 8, !tbaa !4
  %sub119 = sub i64 %215, 64
  store i64 %sub119, ptr %n.addr, align 8, !tbaa !4
  br label %for.cond94

for.end120:                                       ; preds = %for.cond94
  %216 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp121 = icmp ne i64 %216, 0
  %lnot = xor i1 %cmp121, true
  %lnot122 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot122 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end120
  %217 = load i64, ptr %n.addr, align 8, !tbaa !4
  %shr = lshr i64 %217, 2
  store i64 %shr, ptr %n.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 2, ptr %vmask) #8
  %218 = load i64, ptr %n.addr, align 8, !tbaa !4
  %sh_prom = trunc i64 %218 to i32
  %shl = shl i32 1, %sh_prom
  %sub123 = sub i32 %shl, 1
  %conv124 = trunc i32 %sub123 to i16
  %conv125 = zext i16 %conv124 to i32
  %call126 = call zeroext i16 @_cvtu32_mask16(i32 noundef %conv125)
  store i16 %call126, ptr %vmask, align 2, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vx127) #8
  %219 = load i16, ptr %vmask, align 2, !tbaa !11
  %220 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %call128 = call <16 x float> @_mm512_maskz_loadu_ps(i16 noundef zeroext %219, ptr noundef %220)
  store <16 x float> %call128, ptr %vx127, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vz129) #8
  %221 = load <16 x float>, ptr %vx127, align 64, !tbaa !10
  %call130 = call <8 x i64> @_mm512_castps_si512(<16 x float> noundef %221)
  %222 = load <8 x i64>, ptr %vsign_mask, align 64, !tbaa !10
  %call131 = call <8 x i64> @_mm512_or_epi32(<8 x i64> noundef %call130, <8 x i64> noundef %222)
  %call132 = call <16 x float> @_mm512_castsi512_ps(<8 x i64> noundef %call131)
  store <16 x float> %call132, ptr %vz129, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vn133) #8
  %223 = load <16 x float>, ptr %vz129, align 64, !tbaa !10
  %224 = load <16 x float>, ptr %vlog2e, align 64, !tbaa !10
  %225 = load <16 x float>, ptr %vmagic_bias, align 64, !tbaa !10
  %call134 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %223, <16 x float> noundef %224, <16 x float> noundef %225)
  store <16 x float> %call134, ptr %vn133, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vl135) #8
  %226 = load <16 x float>, ptr %vtable_lo, align 64, !tbaa !10
  %227 = load <16 x float>, ptr %vn133, align 64, !tbaa !10
  %call136 = call <8 x i64> @_mm512_castps_si512(<16 x float> noundef %227)
  %228 = load <16 x float>, ptr %vtable_hi, align 64, !tbaa !10
  %call137 = call <16 x float> @_mm512_permutex2var_ps(<16 x float> noundef %226, <8 x i64> noundef %call136, <16 x float> noundef %228)
  store <16 x float> %call137, ptr %vl135, align 64, !tbaa !10
  %229 = load <16 x float>, ptr %vn133, align 64, !tbaa !10
  %230 = load <16 x float>, ptr %vmagic_bias, align 64, !tbaa !10
  %call138 = call <16 x float> @_mm512_sub_ps(<16 x float> noundef %229, <16 x float> noundef %230)
  store <16 x float> %call138, ptr %vn133, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vt139) #8
  %231 = load <16 x float>, ptr %vn133, align 64, !tbaa !10
  %232 = load <16 x float>, ptr %vminus_ln2_hi, align 64, !tbaa !10
  %233 = load <16 x float>, ptr %vz129, align 64, !tbaa !10
  %call140 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %231, <16 x float> noundef %232, <16 x float> noundef %233)
  store <16 x float> %call140, ptr %vt139, align 64, !tbaa !10
  %234 = load <16 x float>, ptr %vn133, align 64, !tbaa !10
  %235 = load <16 x float>, ptr %vminus_ln2_lo, align 64, !tbaa !10
  %236 = load <16 x float>, ptr %vt139, align 64, !tbaa !10
  %call141 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %234, <16 x float> noundef %235, <16 x float> noundef %236)
  store <16 x float> %call141, ptr %vt139, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vp142) #8
  %237 = load <16 x float>, ptr %vt139, align 64, !tbaa !10
  %238 = load <16 x float>, ptr %vc2, align 64, !tbaa !10
  %239 = load <16 x float>, ptr %vc1, align 64, !tbaa !10
  %call143 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %237, <16 x float> noundef %238, <16 x float> noundef %239)
  store <16 x float> %call143, ptr %vp142, align 64, !tbaa !10
  %240 = load <16 x float>, ptr %vt139, align 64, !tbaa !10
  %241 = load <16 x float>, ptr %vl135, align 64, !tbaa !10
  %call144 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %240, <16 x float> noundef %241)
  store <16 x float> %call144, ptr %vt139, align 64, !tbaa !10
  %242 = load <16 x float>, ptr %vt139, align 64, !tbaa !10
  %243 = load <16 x float>, ptr %vp142, align 64, !tbaa !10
  %244 = load <16 x float>, ptr %vl135, align 64, !tbaa !10
  %call145 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %242, <16 x float> noundef %243, <16 x float> noundef %244)
  store <16 x float> %call145, ptr %vp142, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %ve146) #8
  %245 = load <16 x float>, ptr %vp142, align 64, !tbaa !10
  %246 = load <16 x float>, ptr %vn133, align 64, !tbaa !10
  %call147 = call <16 x float> @_mm512_scalef_ps(<16 x float> noundef %245, <16 x float> noundef %246)
  store <16 x float> %call147, ptr %ve146, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vd148) #8
  %247 = load <16 x float>, ptr %ve146, align 64, !tbaa !10
  %248 = load <16 x float>, ptr %vone, align 64, !tbaa !10
  %call149 = call <16 x float> @_mm512_add_ps(<16 x float> noundef %247, <16 x float> noundef %248)
  store <16 x float> %call149, ptr %vd148, align 64, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 64, ptr %vf150) #8
  %249 = load <16 x float>, ptr %ve146, align 64, !tbaa !10
  %250 = load <16 x float>, ptr %vd148, align 64, !tbaa !10
  %call151 = call <16 x float> @_mm512_div_ps(<16 x float> noundef %249, <16 x float> noundef %250)
  store <16 x float> %call151, ptr %vf150, align 64, !tbaa !10
  %251 = load <16 x float>, ptr %vf150, align 64, !tbaa !10
  %252 = load <16 x float>, ptr %vx127, align 64, !tbaa !10
  %call152 = call <8 x i64> @_mm512_castps_si512(<16 x float> noundef %252)
  %253 = load <8 x i64>, ptr %vsign_mask, align 64, !tbaa !10
  %call153 = call zeroext i16 @_mm512_testn_epi32_mask(<8 x i64> noundef %call152, <8 x i64> noundef %253)
  %254 = load <16 x float>, ptr %vone, align 64, !tbaa !10
  %255 = load <16 x float>, ptr %vf150, align 64, !tbaa !10
  %call154 = call <16 x float> @_mm512_mask_sub_ps(<16 x float> noundef %251, i16 noundef zeroext %call153, <16 x float> noundef %254, <16 x float> noundef %255)
  store <16 x float> %call154, ptr %vf150, align 64, !tbaa !10
  %256 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %257 = load i16, ptr %vmask, align 2, !tbaa !11
  %258 = load <16 x float>, ptr %vf150, align 64, !tbaa !10
  call void @_mm512_mask_storeu_ps(ptr noundef %256, i16 noundef zeroext %257, <16 x float> noundef %258)
  call void @llvm.lifetime.end.p0(i64 64, ptr %vf150) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vd148) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %ve146) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vp142) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vt139) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vl135) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vn133) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vz129) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vx127) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr %vmask) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end120
  call void @llvm.lifetime.end.p0(i64 64, ptr %vone) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vc1) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vc2) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vminus_ln2_lo) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vminus_ln2_hi) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vtable_hi) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vtable_lo) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vlog2e) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vmagic_bias) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vsign_mask) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @_mm512_set1_epi32(i32 noundef %__s) #2 {
entry:
  %__s.addr = alloca i32, align 4
  %.compoundliteral = alloca <16 x i32>, align 64
  store i32 %__s, ptr %__s.addr, align 4, !tbaa !13
  %0 = load i32, ptr %__s.addr, align 4, !tbaa !13
  %vecinit = insertelement <16 x i32> undef, i32 %0, i32 0
  %1 = load i32, ptr %__s.addr, align 4, !tbaa !13
  %vecinit1 = insertelement <16 x i32> %vecinit, i32 %1, i32 1
  %2 = load i32, ptr %__s.addr, align 4, !tbaa !13
  %vecinit2 = insertelement <16 x i32> %vecinit1, i32 %2, i32 2
  %3 = load i32, ptr %__s.addr, align 4, !tbaa !13
  %vecinit3 = insertelement <16 x i32> %vecinit2, i32 %3, i32 3
  %4 = load i32, ptr %__s.addr, align 4, !tbaa !13
  %vecinit4 = insertelement <16 x i32> %vecinit3, i32 %4, i32 4
  %5 = load i32, ptr %__s.addr, align 4, !tbaa !13
  %vecinit5 = insertelement <16 x i32> %vecinit4, i32 %5, i32 5
  %6 = load i32, ptr %__s.addr, align 4, !tbaa !13
  %vecinit6 = insertelement <16 x i32> %vecinit5, i32 %6, i32 6
  %7 = load i32, ptr %__s.addr, align 4, !tbaa !13
  %vecinit7 = insertelement <16 x i32> %vecinit6, i32 %7, i32 7
  %8 = load i32, ptr %__s.addr, align 4, !tbaa !13
  %vecinit8 = insertelement <16 x i32> %vecinit7, i32 %8, i32 8
  %9 = load i32, ptr %__s.addr, align 4, !tbaa !13
  %vecinit9 = insertelement <16 x i32> %vecinit8, i32 %9, i32 9
  %10 = load i32, ptr %__s.addr, align 4, !tbaa !13
  %vecinit10 = insertelement <16 x i32> %vecinit9, i32 %10, i32 10
  %11 = load i32, ptr %__s.addr, align 4, !tbaa !13
  %vecinit11 = insertelement <16 x i32> %vecinit10, i32 %11, i32 11
  %12 = load i32, ptr %__s.addr, align 4, !tbaa !13
  %vecinit12 = insertelement <16 x i32> %vecinit11, i32 %12, i32 12
  %13 = load i32, ptr %__s.addr, align 4, !tbaa !13
  %vecinit13 = insertelement <16 x i32> %vecinit12, i32 %13, i32 13
  %14 = load i32, ptr %__s.addr, align 4, !tbaa !13
  %vecinit14 = insertelement <16 x i32> %vecinit13, i32 %14, i32 14
  %15 = load i32, ptr %__s.addr, align 4, !tbaa !13
  %vecinit15 = insertelement <16 x i32> %vecinit14, i32 %15, i32 15
  store <16 x i32> %vecinit15, ptr %.compoundliteral, align 64, !tbaa !10
  %16 = load <16 x i32>, ptr %.compoundliteral, align 64, !tbaa !10
  %17 = bitcast <16 x i32> %16 to <8 x i64>
  ret <8 x i64> %17
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_set1_ps(float noundef %__w) #2 {
entry:
  %__w.addr = alloca float, align 4
  %.compoundliteral = alloca <16 x float>, align 64
  store float %__w, ptr %__w.addr, align 4, !tbaa !15
  %0 = load float, ptr %__w.addr, align 4, !tbaa !15
  %vecinit = insertelement <16 x float> undef, float %0, i32 0
  %1 = load float, ptr %__w.addr, align 4, !tbaa !15
  %vecinit1 = insertelement <16 x float> %vecinit, float %1, i32 1
  %2 = load float, ptr %__w.addr, align 4, !tbaa !15
  %vecinit2 = insertelement <16 x float> %vecinit1, float %2, i32 2
  %3 = load float, ptr %__w.addr, align 4, !tbaa !15
  %vecinit3 = insertelement <16 x float> %vecinit2, float %3, i32 3
  %4 = load float, ptr %__w.addr, align 4, !tbaa !15
  %vecinit4 = insertelement <16 x float> %vecinit3, float %4, i32 4
  %5 = load float, ptr %__w.addr, align 4, !tbaa !15
  %vecinit5 = insertelement <16 x float> %vecinit4, float %5, i32 5
  %6 = load float, ptr %__w.addr, align 4, !tbaa !15
  %vecinit6 = insertelement <16 x float> %vecinit5, float %6, i32 6
  %7 = load float, ptr %__w.addr, align 4, !tbaa !15
  %vecinit7 = insertelement <16 x float> %vecinit6, float %7, i32 7
  %8 = load float, ptr %__w.addr, align 4, !tbaa !15
  %vecinit8 = insertelement <16 x float> %vecinit7, float %8, i32 8
  %9 = load float, ptr %__w.addr, align 4, !tbaa !15
  %vecinit9 = insertelement <16 x float> %vecinit8, float %9, i32 9
  %10 = load float, ptr %__w.addr, align 4, !tbaa !15
  %vecinit10 = insertelement <16 x float> %vecinit9, float %10, i32 10
  %11 = load float, ptr %__w.addr, align 4, !tbaa !15
  %vecinit11 = insertelement <16 x float> %vecinit10, float %11, i32 11
  %12 = load float, ptr %__w.addr, align 4, !tbaa !15
  %vecinit12 = insertelement <16 x float> %vecinit11, float %12, i32 12
  %13 = load float, ptr %__w.addr, align 4, !tbaa !15
  %vecinit13 = insertelement <16 x float> %vecinit12, float %13, i32 13
  %14 = load float, ptr %__w.addr, align 4, !tbaa !15
  %vecinit14 = insertelement <16 x float> %vecinit13, float %14, i32 14
  %15 = load float, ptr %__w.addr, align 4, !tbaa !15
  %vecinit15 = insertelement <16 x float> %vecinit14, float %15, i32 15
  store <16 x float> %vecinit15, ptr %.compoundliteral, align 64, !tbaa !10
  %16 = load <16 x float>, ptr %.compoundliteral, align 64, !tbaa !10
  ret <16 x float> %16
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_load_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %1 = load <16 x float>, ptr %0, align 64, !tbaa !10
  ret <16 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_loadu_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__v = getelementptr inbounds %struct.__loadu_ps, ptr %0, i32 0, i32 0
  %1 = load <16 x float>, ptr %__v, align 1, !tbaa !10
  ret <16 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_castsi512_ps(<8 x i64> noundef %__A) #2 {
entry:
  %__A.addr = alloca <8 x i64>, align 64
  store <8 x i64> %__A, ptr %__A.addr, align 64, !tbaa !10
  %0 = load <8 x i64>, ptr %__A.addr, align 64, !tbaa !10
  %1 = bitcast <8 x i64> %0 to <16 x float>
  ret <16 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @_mm512_or_epi32(<8 x i64> noundef %__a, <8 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x i64>, align 64
  %__b.addr = alloca <8 x i64>, align 64
  store <8 x i64> %__a, ptr %__a.addr, align 64, !tbaa !10
  store <8 x i64> %__b, ptr %__b.addr, align 64, !tbaa !10
  %0 = load <8 x i64>, ptr %__a.addr, align 64, !tbaa !10
  %1 = bitcast <8 x i64> %0 to <16 x i32>
  %2 = load <8 x i64>, ptr %__b.addr, align 64, !tbaa !10
  %3 = bitcast <8 x i64> %2 to <16 x i32>
  %or = or <16 x i32> %1, %3
  %4 = bitcast <16 x i32> %or to <8 x i64>
  ret <8 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @_mm512_castps_si512(<16 x float> noundef %__A) #2 {
entry:
  %__A.addr = alloca <16 x float>, align 64
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !10
  %0 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !10
  %1 = bitcast <16 x float> %0 to <8 x i64>
  ret <8 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %__A, <16 x float> noundef %__B, <16 x float> noundef %__C) #2 {
entry:
  %__A.addr = alloca <16 x float>, align 64
  %__B.addr = alloca <16 x float>, align 64
  %__C.addr = alloca <16 x float>, align 64
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !10
  store <16 x float> %__B, ptr %__B.addr, align 64, !tbaa !10
  store <16 x float> %__C, ptr %__C.addr, align 64, !tbaa !10
  %0 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !10
  %1 = load <16 x float>, ptr %__B.addr, align 64, !tbaa !10
  %2 = load <16 x float>, ptr %__C.addr, align 64, !tbaa !10
  %3 = call <16 x float> @llvm.fma.v16f32(<16 x float> %0, <16 x float> %1, <16 x float> %2)
  ret <16 x float> %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_permutex2var_ps(<16 x float> noundef %__A, <8 x i64> noundef %__I, <16 x float> noundef %__B) #2 {
entry:
  %__A.addr = alloca <16 x float>, align 64
  %__I.addr = alloca <8 x i64>, align 64
  %__B.addr = alloca <16 x float>, align 64
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !10
  store <8 x i64> %__I, ptr %__I.addr, align 64, !tbaa !10
  store <16 x float> %__B, ptr %__B.addr, align 64, !tbaa !10
  %0 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !10
  %1 = load <8 x i64>, ptr %__I.addr, align 64, !tbaa !10
  %2 = bitcast <8 x i64> %1 to <16 x i32>
  %3 = load <16 x float>, ptr %__B.addr, align 64, !tbaa !10
  %4 = call <16 x float> @llvm.x86.avx512.vpermi2var.ps.512(<16 x float> %0, <16 x i32> %2, <16 x float> %3)
  ret <16 x float> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_sub_ps(<16 x float> noundef %__a, <16 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <16 x float>, align 64
  %__b.addr = alloca <16 x float>, align 64
  store <16 x float> %__a, ptr %__a.addr, align 64, !tbaa !10
  store <16 x float> %__b, ptr %__b.addr, align 64, !tbaa !10
  %0 = load <16 x float>, ptr %__a.addr, align 64, !tbaa !10
  %1 = load <16 x float>, ptr %__b.addr, align 64, !tbaa !10
  %sub = fsub <16 x float> %0, %1
  ret <16 x float> %sub
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_mul_ps(<16 x float> noundef %__a, <16 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <16 x float>, align 64
  %__b.addr = alloca <16 x float>, align 64
  store <16 x float> %__a, ptr %__a.addr, align 64, !tbaa !10
  store <16 x float> %__b, ptr %__b.addr, align 64, !tbaa !10
  %0 = load <16 x float>, ptr %__a.addr, align 64, !tbaa !10
  %1 = load <16 x float>, ptr %__b.addr, align 64, !tbaa !10
  %mul = fmul <16 x float> %0, %1
  ret <16 x float> %mul
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_scalef_ps(<16 x float> noundef %__A, <16 x float> noundef %__B) #2 {
entry:
  %__A.addr = alloca <16 x float>, align 64
  %__B.addr = alloca <16 x float>, align 64
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !10
  store <16 x float> %__B, ptr %__B.addr, align 64, !tbaa !10
  %0 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !10
  %1 = load <16 x float>, ptr %__B.addr, align 64, !tbaa !10
  %call = call <16 x float> @_mm512_undefined_ps()
  %2 = call <16 x float> @llvm.x86.avx512.mask.scalef.ps.512(<16 x float> %0, <16 x float> %1, <16 x float> %call, i16 -1, i32 4)
  ret <16 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_add_ps(<16 x float> noundef %__a, <16 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <16 x float>, align 64
  %__b.addr = alloca <16 x float>, align 64
  store <16 x float> %__a, ptr %__a.addr, align 64, !tbaa !10
  store <16 x float> %__b, ptr %__b.addr, align 64, !tbaa !10
  %0 = load <16 x float>, ptr %__a.addr, align 64, !tbaa !10
  %1 = load <16 x float>, ptr %__b.addr, align 64, !tbaa !10
  %add = fadd <16 x float> %0, %1
  ret <16 x float> %add
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_div_ps(<16 x float> noundef %__a, <16 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <16 x float>, align 64
  %__b.addr = alloca <16 x float>, align 64
  store <16 x float> %__a, ptr %__a.addr, align 64, !tbaa !10
  store <16 x float> %__b, ptr %__b.addr, align 64, !tbaa !10
  %0 = load <16 x float>, ptr %__a.addr, align 64, !tbaa !10
  %1 = load <16 x float>, ptr %__b.addr, align 64, !tbaa !10
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
  store <16 x float> %__W, ptr %__W.addr, align 64, !tbaa !10
  store i16 %__U, ptr %__U.addr, align 2, !tbaa !11
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !10
  store <16 x float> %__B, ptr %__B.addr, align 64, !tbaa !10
  %0 = load i16, ptr %__U.addr, align 2, !tbaa !11
  %1 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !10
  %2 = load <16 x float>, ptr %__B.addr, align 64, !tbaa !10
  %call = call <16 x float> @_mm512_sub_ps(<16 x float> noundef %1, <16 x float> noundef %2)
  %3 = load <16 x float>, ptr %__W.addr, align 64, !tbaa !10
  %4 = bitcast i16 %0 to <16 x i1>
  %5 = select <16 x i1> %4, <16 x float> %call, <16 x float> %3
  ret <16 x float> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i16 @_mm512_testn_epi32_mask(<8 x i64> noundef %__A, <8 x i64> noundef %__B) #2 {
entry:
  %__A.addr = alloca <8 x i64>, align 64
  %__B.addr = alloca <8 x i64>, align 64
  store <8 x i64> %__A, ptr %__A.addr, align 64, !tbaa !10
  store <8 x i64> %__B, ptr %__B.addr, align 64, !tbaa !10
  %0 = load <8 x i64>, ptr %__A.addr, align 64, !tbaa !10
  %1 = load <8 x i64>, ptr %__B.addr, align 64, !tbaa !10
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
  store ptr %__P, ptr %__P.addr, align 8, !tbaa !8
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !10
  %0 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !10
  %1 = load ptr, ptr %__P.addr, align 8, !tbaa !8
  %__v = getelementptr inbounds %struct.__storeu_ps, ptr %1, i32 0, i32 0
  store <16 x float> %0, ptr %__v, align 1, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i16 @_cvtu32_mask16(i32 noundef %__A) #4 {
entry:
  %__A.addr = alloca i32, align 4
  store i32 %__A, ptr %__A.addr, align 4, !tbaa !13
  %0 = load i32, ptr %__A.addr, align 4, !tbaa !13
  %conv = trunc i32 %0 to i16
  %1 = bitcast i16 %conv to <16 x i1>
  %2 = bitcast <16 x i1> %1 to i16
  ret i16 %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_maskz_loadu_ps(i16 noundef zeroext %__U, ptr noundef %__P) #2 {
entry:
  %__U.addr = alloca i16, align 2
  %__P.addr = alloca ptr, align 8
  store i16 %__U, ptr %__U.addr, align 2, !tbaa !11
  store ptr %__P, ptr %__P.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__P.addr, align 8, !tbaa !8
  %call = call <16 x float> @_mm512_setzero_ps()
  %1 = load i16, ptr %__U.addr, align 2, !tbaa !11
  %2 = bitcast i16 %1 to <16 x i1>
  %3 = call <16 x float> @llvm.masked.load.v16f32.p0(ptr %0, i32 1, <16 x i1> %2, <16 x float> %call)
  ret <16 x float> %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm512_mask_storeu_ps(ptr noundef %__P, i16 noundef zeroext %__U, <16 x float> noundef %__A) #2 {
entry:
  %__P.addr = alloca ptr, align 8
  %__U.addr = alloca i16, align 2
  %__A.addr = alloca <16 x float>, align 64
  store ptr %__P, ptr %__P.addr, align 8, !tbaa !8
  store i16 %__U, ptr %__U.addr, align 2, !tbaa !11
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !10
  %0 = load ptr, ptr %__P.addr, align 8, !tbaa !8
  %1 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !10
  %2 = load i16, ptr %__U.addr, align 2, !tbaa !11
  %3 = bitcast i16 %2 to <16 x i1>
  call void @llvm.masked.store.v16f32.p0(<16 x float> %1, ptr %0, i32 1, <16 x i1> %3)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.vpermi2var.ps.512(<16 x float>, <16 x i32>, <16 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.scalef.ps.512(<16 x float>, <16 x float>, <16 x float>, i16, i32 immarg) #3

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
  store <8 x i64> %__a, ptr %__a.addr, align 64, !tbaa !10
  store <8 x i64> %__b, ptr %__b.addr, align 64, !tbaa !10
  %0 = load <8 x i64>, ptr %__a.addr, align 64, !tbaa !10
  %1 = bitcast <8 x i64> %0 to <16 x i32>
  %2 = load <8 x i64>, ptr %__b.addr, align 64, !tbaa !10
  %3 = bitcast <8 x i64> %2 to <16 x i32>
  %and = and <16 x i32> %1, %3
  %4 = bitcast <16 x i32> %and to <8 x i64>
  ret <8 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @_mm512_setzero_si512() #2 {
entry:
  %.compoundliteral = alloca <8 x i64>, align 64
  store <8 x i64> zeroinitializer, ptr %.compoundliteral, align 64, !tbaa !10
  %0 = load <8 x i64>, ptr %.compoundliteral, align 64, !tbaa !10
  ret <8 x i64> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_setzero_ps() #2 {
entry:
  %.compoundliteral = alloca <16 x float>, align 64
  store <16 x float> zeroinitializer, ptr %.compoundliteral, align 64, !tbaa !10
  %0 = load <16 x float>, ptr %.compoundliteral, align 64, !tbaa !10
  ret <16 x float> %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <16 x float> @llvm.masked.load.v16f32.p0(ptr nocapture, i32 immarg, <16 x i1>, <16 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v16f32.p0(<16 x float>, ptr nocapture, i32 immarg, <16 x i1>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !6, i64 0}
