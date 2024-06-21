; ModuleID = 'samples/45.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-f16-vcvt/gen/vcvt-sse2-x8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.1 = type { [4 x i32], [4 x i32], [4 x float], [4 x i32], [4 x float], [8 x i16], [4 x i32], [4 x i32], [8 x i16] }
%struct.__loadu_ps = type { <4 x float> }
%struct.__storeu_si128 = type { <2 x i64> }
%struct.__mm_storel_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_f16_vcvt_ukernel__sse2_x8(i64 noundef %n, ptr noundef %input, ptr noundef %output, ptr noalias noundef align 16 dereferenceable(144) %params) #0 {
entry:
  %n.addr = alloca i64, align 8
  %input.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %vnonsign_mask = alloca <4 x float>, align 16
  %vexp_bias = alloca <2 x i64>, align 16
  %vscale_to_inf = alloca <4 x float>, align 16
  %vexpw_max = alloca <2 x i64>, align 16
  %vscale_to_zero = alloca <4 x float>, align 16
  %vbias_min = alloca <2 x i64>, align 16
  %vmanth_mask = alloca <2 x i64>, align 16
  %vexph_mask = alloca <2 x i64>, align 16
  %vnanh = alloca <2 x i64>, align 16
  %o = alloca ptr, align 8
  %vx_lo = alloca <4 x float>, align 16
  %vx_hi = alloca <4 x float>, align 16
  %vabsx_lo = alloca <4 x float>, align 16
  %vabsx_hi = alloca <4 x float>, align 16
  %vsignx_lo = alloca <4 x float>, align 16
  %vsignx_hi = alloca <4 x float>, align 16
  %vbias_lo = alloca <2 x i64>, align 16
  %vbias_hi = alloca <2 x i64>, align 16
  %vf_lo = alloca <4 x float>, align 16
  %vf_hi = alloca <4 x float>, align 16
  %vnanmaskw_lo = alloca <2 x i64>, align 16
  %vnanmaskw_hi = alloca <2 x i64>, align 16
  %vnanmaskh = alloca <2 x i64>, align 16
  %vsignh = alloca <2 x i64>, align 16
  %vh = alloca <2 x i64>, align 16
  %vexpw_lo = alloca <2 x i64>, align 16
  %vexpw_hi = alloca <2 x i64>, align 16
  %vmantw_lo = alloca <2 x i64>, align 16
  %vmantw_hi = alloca <2 x i64>, align 16
  %vnonsignw_lo = alloca <2 x i64>, align 16
  %vnonsignw_hi = alloca <2 x i64>, align 16
  %vnonsignh = alloca <2 x i64>, align 16
  %vx_lo68 = alloca <4 x float>, align 16
  %input_hi = alloca ptr, align 8
  %vx_hi70 = alloca <4 x float>, align 16
  %vabsx_lo72 = alloca <4 x float>, align 16
  %vabsx_hi74 = alloca <4 x float>, align 16
  %vsignx_lo76 = alloca <4 x float>, align 16
  %vsignx_hi78 = alloca <4 x float>, align 16
  %vbias_lo80 = alloca <2 x i64>, align 16
  %vbias_hi83 = alloca <2 x i64>, align 16
  %vf_lo86 = alloca <4 x float>, align 16
  %vf_hi88 = alloca <4 x float>, align 16
  %vnanmaskw_lo90 = alloca <2 x i64>, align 16
  %vnanmaskw_hi93 = alloca <2 x i64>, align 16
  %vnanmaskh100 = alloca <2 x i64>, align 16
  %vsignh102 = alloca <2 x i64>, align 16
  %vh108 = alloca <2 x i64>, align 16
  %vexpw_lo115 = alloca <2 x i64>, align 16
  %vexpw_hi118 = alloca <2 x i64>, align 16
  %vmantw_lo121 = alloca <2 x i64>, align 16
  %vmantw_hi124 = alloca <2 x i64>, align 16
  %vnonsignw_lo129 = alloca <2 x i64>, align 16
  %vnonsignw_hi131 = alloca <2 x i64>, align 16
  %vnonsignh133 = alloca <2 x i64>, align 16
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store ptr %input, ptr %input.addr, align 8, !tbaa !9
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vnonsign_mask) #5
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %nonsign_mask = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i32], ptr %nonsign_mask, i64 0, i64 0
  %call = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay)
  store <4 x float> %call, ptr %vnonsign_mask, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vexp_bias) #5
  %1 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %exp_bias = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 1
  %arraydecay1 = getelementptr inbounds [4 x i32], ptr %exp_bias, i64 0, i64 0
  %call2 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay1)
  store <2 x i64> %call2, ptr %vexp_bias, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscale_to_inf) #5
  %2 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale_to_inf = getelementptr inbounds %struct.anon.1, ptr %2, i32 0, i32 2
  %arraydecay3 = getelementptr inbounds [4 x float], ptr %scale_to_inf, i64 0, i64 0
  %call4 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay3)
  store <4 x float> %call4, ptr %vscale_to_inf, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vexpw_max) #5
  %3 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %expw_max = getelementptr inbounds %struct.anon.1, ptr %3, i32 0, i32 3
  %arraydecay5 = getelementptr inbounds [4 x i32], ptr %expw_max, i64 0, i64 0
  %call6 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay5)
  store <2 x i64> %call6, ptr %vexpw_max, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscale_to_zero) #5
  %4 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale_to_zero = getelementptr inbounds %struct.anon.1, ptr %4, i32 0, i32 4
  %arraydecay7 = getelementptr inbounds [4 x float], ptr %scale_to_zero, i64 0, i64 0
  %call8 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay7)
  store <4 x float> %call8, ptr %vscale_to_zero, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vbias_min) #5
  %5 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %bias_min = getelementptr inbounds %struct.anon.1, ptr %5, i32 0, i32 5
  %arraydecay9 = getelementptr inbounds [8 x i16], ptr %bias_min, i64 0, i64 0
  %call10 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay9)
  store <2 x i64> %call10, ptr %vbias_min, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vmanth_mask) #5
  %6 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %manth_mask = getelementptr inbounds %struct.anon.1, ptr %6, i32 0, i32 6
  %arraydecay11 = getelementptr inbounds [4 x i32], ptr %manth_mask, i64 0, i64 0
  %call12 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay11)
  store <2 x i64> %call12, ptr %vmanth_mask, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vexph_mask) #5
  %7 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %exph_mask = getelementptr inbounds %struct.anon.1, ptr %7, i32 0, i32 7
  %arraydecay13 = getelementptr inbounds [4 x i32], ptr %exph_mask, i64 0, i64 0
  %call14 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay13)
  store <2 x i64> %call14, ptr %vexph_mask, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vnanh) #5
  %8 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %nanh = getelementptr inbounds %struct.anon.1, ptr %8, i32 0, i32 8
  %arraydecay15 = getelementptr inbounds [8 x i16], ptr %nanh, i64 0, i64 0
  %call16 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay15)
  store <2 x i64> %call16, ptr %vnanh, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #5
  %9 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store ptr %9, ptr %o, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp uge i64 %10, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vx_lo) #5
  %11 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %call17 = call <4 x float> @_mm_loadu_ps(ptr noundef %11)
  store <4 x float> %call17, ptr %vx_lo, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vx_hi) #5
  %12 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %12, i64 4
  %call18 = call <4 x float> @_mm_loadu_ps(ptr noundef %add.ptr)
  store <4 x float> %call18, ptr %vx_hi, align 16, !tbaa !11
  %13 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %add.ptr19 = getelementptr inbounds float, ptr %13, i64 8
  store ptr %add.ptr19, ptr %input.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vabsx_lo) #5
  %14 = load <4 x float>, ptr %vx_lo, align 16, !tbaa !11
  %15 = load <4 x float>, ptr %vnonsign_mask, align 16, !tbaa !11
  %call20 = call <4 x float> @_mm_and_ps(<4 x float> noundef %14, <4 x float> noundef %15)
  store <4 x float> %call20, ptr %vabsx_lo, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vabsx_hi) #5
  %16 = load <4 x float>, ptr %vx_hi, align 16, !tbaa !11
  %17 = load <4 x float>, ptr %vnonsign_mask, align 16, !tbaa !11
  %call21 = call <4 x float> @_mm_and_ps(<4 x float> noundef %16, <4 x float> noundef %17)
  store <4 x float> %call21, ptr %vabsx_hi, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vsignx_lo) #5
  %18 = load <4 x float>, ptr %vx_lo, align 16, !tbaa !11
  %19 = load <4 x float>, ptr %vabsx_lo, align 16, !tbaa !11
  %call22 = call <4 x float> @_mm_xor_ps(<4 x float> noundef %18, <4 x float> noundef %19)
  store <4 x float> %call22, ptr %vsignx_lo, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vsignx_hi) #5
  %20 = load <4 x float>, ptr %vx_hi, align 16, !tbaa !11
  %21 = load <4 x float>, ptr %vabsx_hi, align 16, !tbaa !11
  %call23 = call <4 x float> @_mm_xor_ps(<4 x float> noundef %20, <4 x float> noundef %21)
  store <4 x float> %call23, ptr %vsignx_hi, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vbias_lo) #5
  %22 = load <4 x float>, ptr %vabsx_lo, align 16, !tbaa !11
  %call24 = call <2 x i64> @_mm_castps_si128(<4 x float> noundef %22)
  %23 = load <2 x i64>, ptr %vexp_bias, align 16, !tbaa !11
  %call25 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %call24, <2 x i64> noundef %23)
  store <2 x i64> %call25, ptr %vbias_lo, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vbias_hi) #5
  %24 = load <4 x float>, ptr %vabsx_hi, align 16, !tbaa !11
  %call26 = call <2 x i64> @_mm_castps_si128(<4 x float> noundef %24)
  %25 = load <2 x i64>, ptr %vexp_bias, align 16, !tbaa !11
  %call27 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %call26, <2 x i64> noundef %25)
  store <2 x i64> %call27, ptr %vbias_hi, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vf_lo) #5
  %26 = load <4 x float>, ptr %vabsx_lo, align 16, !tbaa !11
  %27 = load <4 x float>, ptr %vscale_to_inf, align 16, !tbaa !11
  %call28 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %26, <4 x float> noundef %27)
  store <4 x float> %call28, ptr %vf_lo, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vf_hi) #5
  %28 = load <4 x float>, ptr %vabsx_hi, align 16, !tbaa !11
  %29 = load <4 x float>, ptr %vscale_to_inf, align 16, !tbaa !11
  %call29 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %28, <4 x float> noundef %29)
  store <4 x float> %call29, ptr %vf_hi, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vnanmaskw_lo) #5
  %30 = load <4 x float>, ptr %vabsx_lo, align 16, !tbaa !11
  %call30 = call <2 x i64> @_mm_castps_si128(<4 x float> noundef %30)
  %31 = load <2 x i64>, ptr %vexpw_max, align 16, !tbaa !11
  %call31 = call <2 x i64> @_mm_cmpgt_epi32(<2 x i64> noundef %call30, <2 x i64> noundef %31)
  store <2 x i64> %call31, ptr %vnanmaskw_lo, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vnanmaskw_hi) #5
  %32 = load <4 x float>, ptr %vabsx_hi, align 16, !tbaa !11
  %call32 = call <2 x i64> @_mm_castps_si128(<4 x float> noundef %32)
  %33 = load <2 x i64>, ptr %vexpw_max, align 16, !tbaa !11
  %call33 = call <2 x i64> @_mm_cmpgt_epi32(<2 x i64> noundef %call32, <2 x i64> noundef %33)
  store <2 x i64> %call33, ptr %vnanmaskw_hi, align 16, !tbaa !11
  %34 = load <2 x i64>, ptr %vbias_lo, align 16, !tbaa !11
  %35 = load <2 x i64>, ptr %vexpw_max, align 16, !tbaa !11
  %call34 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %34, <2 x i64> noundef %35)
  store <2 x i64> %call34, ptr %vbias_lo, align 16, !tbaa !11
  %36 = load <2 x i64>, ptr %vbias_hi, align 16, !tbaa !11
  %37 = load <2 x i64>, ptr %vexpw_max, align 16, !tbaa !11
  %call35 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %36, <2 x i64> noundef %37)
  store <2 x i64> %call35, ptr %vbias_hi, align 16, !tbaa !11
  %38 = load <4 x float>, ptr %vf_lo, align 16, !tbaa !11
  %39 = load <4 x float>, ptr %vscale_to_zero, align 16, !tbaa !11
  %call36 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %38, <4 x float> noundef %39)
  store <4 x float> %call36, ptr %vf_lo, align 16, !tbaa !11
  %40 = load <4 x float>, ptr %vf_hi, align 16, !tbaa !11
  %41 = load <4 x float>, ptr %vscale_to_zero, align 16, !tbaa !11
  %call37 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %40, <4 x float> noundef %41)
  store <4 x float> %call37, ptr %vf_hi, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vnanmaskh) #5
  %42 = load <2 x i64>, ptr %vnanmaskw_lo, align 16, !tbaa !11
  %43 = load <2 x i64>, ptr %vnanmaskw_hi, align 16, !tbaa !11
  %call38 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %42, <2 x i64> noundef %43)
  store <2 x i64> %call38, ptr %vnanmaskh, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vsignh) #5
  %44 = load <4 x float>, ptr %vsignx_lo, align 16, !tbaa !11
  %call39 = call <2 x i64> @_mm_castps_si128(<4 x float> noundef %44)
  %45 = load <4 x float>, ptr %vsignx_hi, align 16, !tbaa !11
  %call40 = call <2 x i64> @_mm_castps_si128(<4 x float> noundef %45)
  %call41 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %call39, <2 x i64> noundef %call40)
  store <2 x i64> %call41, ptr %vsignh, align 16, !tbaa !11
  %46 = load <2 x i64>, ptr %vbias_lo, align 16, !tbaa !11
  %47 = load <2 x i64>, ptr %vbias_min, align 16, !tbaa !11
  %call42 = call <2 x i64> @_mm_max_epi16(<2 x i64> noundef %46, <2 x i64> noundef %47)
  store <2 x i64> %call42, ptr %vbias_lo, align 16, !tbaa !11
  %48 = load <2 x i64>, ptr %vbias_hi, align 16, !tbaa !11
  %49 = load <2 x i64>, ptr %vbias_min, align 16, !tbaa !11
  %call43 = call <2 x i64> @_mm_max_epi16(<2 x i64> noundef %48, <2 x i64> noundef %49)
  store <2 x i64> %call43, ptr %vbias_hi, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vh) #5
  %50 = load <2 x i64>, ptr %vnanh, align 16, !tbaa !11
  %51 = load <2 x i64>, ptr %vnanmaskh, align 16, !tbaa !11
  %call44 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %50, <2 x i64> noundef %51)
  store <2 x i64> %call44, ptr %vh, align 16, !tbaa !11
  %52 = load <4 x float>, ptr %vf_lo, align 16, !tbaa !11
  %53 = load <2 x i64>, ptr %vbias_lo, align 16, !tbaa !11
  %call45 = call <4 x float> @_mm_castsi128_ps(<2 x i64> noundef %53)
  %call46 = call <4 x float> @_mm_add_ps(<4 x float> noundef %52, <4 x float> noundef %call45)
  store <4 x float> %call46, ptr %vf_lo, align 16, !tbaa !11
  %54 = load <4 x float>, ptr %vf_hi, align 16, !tbaa !11
  %55 = load <2 x i64>, ptr %vbias_hi, align 16, !tbaa !11
  %call47 = call <4 x float> @_mm_castsi128_ps(<2 x i64> noundef %55)
  %call48 = call <4 x float> @_mm_add_ps(<4 x float> noundef %54, <4 x float> noundef %call47)
  store <4 x float> %call48, ptr %vf_hi, align 16, !tbaa !11
  %56 = load <2 x i64>, ptr %vh, align 16, !tbaa !11
  %57 = load <2 x i64>, ptr %vsignh, align 16, !tbaa !11
  %call49 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %56, <2 x i64> noundef %57)
  store <2 x i64> %call49, ptr %vh, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vexpw_lo) #5
  %58 = load <4 x float>, ptr %vf_lo, align 16, !tbaa !11
  %call50 = call <2 x i64> @_mm_castps_si128(<4 x float> noundef %58)
  %call51 = call <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %call50, i32 noundef 13)
  store <2 x i64> %call51, ptr %vexpw_lo, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vexpw_hi) #5
  %59 = load <4 x float>, ptr %vf_hi, align 16, !tbaa !11
  %call52 = call <2 x i64> @_mm_castps_si128(<4 x float> noundef %59)
  %call53 = call <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %call52, i32 noundef 13)
  store <2 x i64> %call53, ptr %vexpw_hi, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vmantw_lo) #5
  %60 = load <4 x float>, ptr %vf_lo, align 16, !tbaa !11
  %call54 = call <2 x i64> @_mm_castps_si128(<4 x float> noundef %60)
  %61 = load <2 x i64>, ptr %vmanth_mask, align 16, !tbaa !11
  %call55 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %call54, <2 x i64> noundef %61)
  store <2 x i64> %call55, ptr %vmantw_lo, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vmantw_hi) #5
  %62 = load <4 x float>, ptr %vf_hi, align 16, !tbaa !11
  %call56 = call <2 x i64> @_mm_castps_si128(<4 x float> noundef %62)
  %63 = load <2 x i64>, ptr %vmanth_mask, align 16, !tbaa !11
  %call57 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %call56, <2 x i64> noundef %63)
  store <2 x i64> %call57, ptr %vmantw_hi, align 16, !tbaa !11
  %64 = load <2 x i64>, ptr %vexpw_lo, align 16, !tbaa !11
  %65 = load <2 x i64>, ptr %vexph_mask, align 16, !tbaa !11
  %call58 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %64, <2 x i64> noundef %65)
  store <2 x i64> %call58, ptr %vexpw_lo, align 16, !tbaa !11
  %66 = load <2 x i64>, ptr %vexpw_hi, align 16, !tbaa !11
  %67 = load <2 x i64>, ptr %vexph_mask, align 16, !tbaa !11
  %call59 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %66, <2 x i64> noundef %67)
  store <2 x i64> %call59, ptr %vexpw_hi, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vnonsignw_lo) #5
  %68 = load <2 x i64>, ptr %vmantw_lo, align 16, !tbaa !11
  %69 = load <2 x i64>, ptr %vexpw_lo, align 16, !tbaa !11
  %call60 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %68, <2 x i64> noundef %69)
  store <2 x i64> %call60, ptr %vnonsignw_lo, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vnonsignw_hi) #5
  %70 = load <2 x i64>, ptr %vmantw_hi, align 16, !tbaa !11
  %71 = load <2 x i64>, ptr %vexpw_hi, align 16, !tbaa !11
  %call61 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %70, <2 x i64> noundef %71)
  store <2 x i64> %call61, ptr %vnonsignw_hi, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vnonsignh) #5
  %72 = load <2 x i64>, ptr %vnonsignw_lo, align 16, !tbaa !11
  %73 = load <2 x i64>, ptr %vnonsignw_hi, align 16, !tbaa !11
  %call62 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %72, <2 x i64> noundef %73)
  store <2 x i64> %call62, ptr %vnonsignh, align 16, !tbaa !11
  %74 = load <2 x i64>, ptr %vh, align 16, !tbaa !11
  %75 = load <2 x i64>, ptr %vnanmaskh, align 16, !tbaa !11
  %76 = load <2 x i64>, ptr %vnonsignh, align 16, !tbaa !11
  %call63 = call <2 x i64> @_mm_andnot_si128(<2 x i64> noundef %75, <2 x i64> noundef %76)
  %call64 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %74, <2 x i64> noundef %call63)
  store <2 x i64> %call64, ptr %vh, align 16, !tbaa !11
  %77 = load ptr, ptr %o, align 8, !tbaa !9
  %78 = load <2 x i64>, ptr %vh, align 16, !tbaa !11
  call void @_mm_storeu_si128(ptr noundef %77, <2 x i64> noundef %78)
  %79 = load ptr, ptr %o, align 8, !tbaa !9
  %add.ptr65 = getelementptr inbounds i16, ptr %79, i64 8
  store ptr %add.ptr65, ptr %o, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 16, ptr %vnonsignh) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vnonsignw_hi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vnonsignw_lo) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vmantw_hi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vmantw_lo) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vexpw_hi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vexpw_lo) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vh) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vsignh) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vnanmaskh) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vnanmaskw_hi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vnanmaskw_lo) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vf_hi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vf_lo) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vbias_hi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vbias_lo) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vsignx_hi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vsignx_lo) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vabsx_hi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vabsx_lo) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vx_hi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vx_lo) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %80 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub = sub i64 %80, 32
  store i64 %sub, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %81 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp66 = icmp ne i64 %81, 0
  %lnot = xor i1 %cmp66, true
  %lnot67 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot67 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end155, !unpredictable !14

if.then:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %vx_lo68) #5
  %82 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %call69 = call <4 x float> @_mm_loadu_ps(ptr noundef %82)
  store <4 x float> %call69, ptr %vx_lo68, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_hi) #5
  %83 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %84 = ptrtoint ptr %83 to i64
  %85 = load i64, ptr %n.addr, align 8, !tbaa !5
  %and = and i64 %85, 16
  %add = add i64 %84, %and
  %86 = inttoptr i64 %add to ptr
  store ptr %86, ptr %input_hi, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vx_hi70) #5
  %87 = load ptr, ptr %input_hi, align 8, !tbaa !9
  %call71 = call <4 x float> @_mm_loadu_ps(ptr noundef %87)
  store <4 x float> %call71, ptr %vx_hi70, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vabsx_lo72) #5
  %88 = load <4 x float>, ptr %vx_lo68, align 16, !tbaa !11
  %89 = load <4 x float>, ptr %vnonsign_mask, align 16, !tbaa !11
  %call73 = call <4 x float> @_mm_and_ps(<4 x float> noundef %88, <4 x float> noundef %89)
  store <4 x float> %call73, ptr %vabsx_lo72, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vabsx_hi74) #5
  %90 = load <4 x float>, ptr %vx_hi70, align 16, !tbaa !11
  %91 = load <4 x float>, ptr %vnonsign_mask, align 16, !tbaa !11
  %call75 = call <4 x float> @_mm_and_ps(<4 x float> noundef %90, <4 x float> noundef %91)
  store <4 x float> %call75, ptr %vabsx_hi74, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vsignx_lo76) #5
  %92 = load <4 x float>, ptr %vx_lo68, align 16, !tbaa !11
  %93 = load <4 x float>, ptr %vabsx_lo72, align 16, !tbaa !11
  %call77 = call <4 x float> @_mm_xor_ps(<4 x float> noundef %92, <4 x float> noundef %93)
  store <4 x float> %call77, ptr %vsignx_lo76, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vsignx_hi78) #5
  %94 = load <4 x float>, ptr %vx_hi70, align 16, !tbaa !11
  %95 = load <4 x float>, ptr %vabsx_hi74, align 16, !tbaa !11
  %call79 = call <4 x float> @_mm_xor_ps(<4 x float> noundef %94, <4 x float> noundef %95)
  store <4 x float> %call79, ptr %vsignx_hi78, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vbias_lo80) #5
  %96 = load <4 x float>, ptr %vabsx_lo72, align 16, !tbaa !11
  %call81 = call <2 x i64> @_mm_castps_si128(<4 x float> noundef %96)
  %97 = load <2 x i64>, ptr %vexp_bias, align 16, !tbaa !11
  %call82 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %call81, <2 x i64> noundef %97)
  store <2 x i64> %call82, ptr %vbias_lo80, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vbias_hi83) #5
  %98 = load <4 x float>, ptr %vabsx_hi74, align 16, !tbaa !11
  %call84 = call <2 x i64> @_mm_castps_si128(<4 x float> noundef %98)
  %99 = load <2 x i64>, ptr %vexp_bias, align 16, !tbaa !11
  %call85 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %call84, <2 x i64> noundef %99)
  store <2 x i64> %call85, ptr %vbias_hi83, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vf_lo86) #5
  %100 = load <4 x float>, ptr %vabsx_lo72, align 16, !tbaa !11
  %101 = load <4 x float>, ptr %vscale_to_inf, align 16, !tbaa !11
  %call87 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %100, <4 x float> noundef %101)
  store <4 x float> %call87, ptr %vf_lo86, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vf_hi88) #5
  %102 = load <4 x float>, ptr %vabsx_hi74, align 16, !tbaa !11
  %103 = load <4 x float>, ptr %vscale_to_inf, align 16, !tbaa !11
  %call89 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %102, <4 x float> noundef %103)
  store <4 x float> %call89, ptr %vf_hi88, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vnanmaskw_lo90) #5
  %104 = load <4 x float>, ptr %vabsx_lo72, align 16, !tbaa !11
  %call91 = call <2 x i64> @_mm_castps_si128(<4 x float> noundef %104)
  %105 = load <2 x i64>, ptr %vexpw_max, align 16, !tbaa !11
  %call92 = call <2 x i64> @_mm_cmpgt_epi32(<2 x i64> noundef %call91, <2 x i64> noundef %105)
  store <2 x i64> %call92, ptr %vnanmaskw_lo90, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vnanmaskw_hi93) #5
  %106 = load <4 x float>, ptr %vabsx_hi74, align 16, !tbaa !11
  %call94 = call <2 x i64> @_mm_castps_si128(<4 x float> noundef %106)
  %107 = load <2 x i64>, ptr %vexpw_max, align 16, !tbaa !11
  %call95 = call <2 x i64> @_mm_cmpgt_epi32(<2 x i64> noundef %call94, <2 x i64> noundef %107)
  store <2 x i64> %call95, ptr %vnanmaskw_hi93, align 16, !tbaa !11
  %108 = load <2 x i64>, ptr %vbias_lo80, align 16, !tbaa !11
  %109 = load <2 x i64>, ptr %vexpw_max, align 16, !tbaa !11
  %call96 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %108, <2 x i64> noundef %109)
  store <2 x i64> %call96, ptr %vbias_lo80, align 16, !tbaa !11
  %110 = load <2 x i64>, ptr %vbias_hi83, align 16, !tbaa !11
  %111 = load <2 x i64>, ptr %vexpw_max, align 16, !tbaa !11
  %call97 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %110, <2 x i64> noundef %111)
  store <2 x i64> %call97, ptr %vbias_hi83, align 16, !tbaa !11
  %112 = load <4 x float>, ptr %vf_lo86, align 16, !tbaa !11
  %113 = load <4 x float>, ptr %vscale_to_zero, align 16, !tbaa !11
  %call98 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %112, <4 x float> noundef %113)
  store <4 x float> %call98, ptr %vf_lo86, align 16, !tbaa !11
  %114 = load <4 x float>, ptr %vf_hi88, align 16, !tbaa !11
  %115 = load <4 x float>, ptr %vscale_to_zero, align 16, !tbaa !11
  %call99 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %114, <4 x float> noundef %115)
  store <4 x float> %call99, ptr %vf_hi88, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vnanmaskh100) #5
  %116 = load <2 x i64>, ptr %vnanmaskw_lo90, align 16, !tbaa !11
  %117 = load <2 x i64>, ptr %vnanmaskw_hi93, align 16, !tbaa !11
  %call101 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %116, <2 x i64> noundef %117)
  store <2 x i64> %call101, ptr %vnanmaskh100, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vsignh102) #5
  %118 = load <4 x float>, ptr %vsignx_lo76, align 16, !tbaa !11
  %call103 = call <2 x i64> @_mm_castps_si128(<4 x float> noundef %118)
  %119 = load <4 x float>, ptr %vsignx_hi78, align 16, !tbaa !11
  %call104 = call <2 x i64> @_mm_castps_si128(<4 x float> noundef %119)
  %call105 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %call103, <2 x i64> noundef %call104)
  store <2 x i64> %call105, ptr %vsignh102, align 16, !tbaa !11
  %120 = load <2 x i64>, ptr %vbias_lo80, align 16, !tbaa !11
  %121 = load <2 x i64>, ptr %vbias_min, align 16, !tbaa !11
  %call106 = call <2 x i64> @_mm_max_epi16(<2 x i64> noundef %120, <2 x i64> noundef %121)
  store <2 x i64> %call106, ptr %vbias_lo80, align 16, !tbaa !11
  %122 = load <2 x i64>, ptr %vbias_hi83, align 16, !tbaa !11
  %123 = load <2 x i64>, ptr %vbias_min, align 16, !tbaa !11
  %call107 = call <2 x i64> @_mm_max_epi16(<2 x i64> noundef %122, <2 x i64> noundef %123)
  store <2 x i64> %call107, ptr %vbias_hi83, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vh108) #5
  %124 = load <2 x i64>, ptr %vnanh, align 16, !tbaa !11
  %125 = load <2 x i64>, ptr %vnanmaskh100, align 16, !tbaa !11
  %call109 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %124, <2 x i64> noundef %125)
  store <2 x i64> %call109, ptr %vh108, align 16, !tbaa !11
  %126 = load <4 x float>, ptr %vf_lo86, align 16, !tbaa !11
  %127 = load <2 x i64>, ptr %vbias_lo80, align 16, !tbaa !11
  %call110 = call <4 x float> @_mm_castsi128_ps(<2 x i64> noundef %127)
  %call111 = call <4 x float> @_mm_add_ps(<4 x float> noundef %126, <4 x float> noundef %call110)
  store <4 x float> %call111, ptr %vf_lo86, align 16, !tbaa !11
  %128 = load <4 x float>, ptr %vf_hi88, align 16, !tbaa !11
  %129 = load <2 x i64>, ptr %vbias_hi83, align 16, !tbaa !11
  %call112 = call <4 x float> @_mm_castsi128_ps(<2 x i64> noundef %129)
  %call113 = call <4 x float> @_mm_add_ps(<4 x float> noundef %128, <4 x float> noundef %call112)
  store <4 x float> %call113, ptr %vf_hi88, align 16, !tbaa !11
  %130 = load <2 x i64>, ptr %vh108, align 16, !tbaa !11
  %131 = load <2 x i64>, ptr %vsignh102, align 16, !tbaa !11
  %call114 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %130, <2 x i64> noundef %131)
  store <2 x i64> %call114, ptr %vh108, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vexpw_lo115) #5
  %132 = load <4 x float>, ptr %vf_lo86, align 16, !tbaa !11
  %call116 = call <2 x i64> @_mm_castps_si128(<4 x float> noundef %132)
  %call117 = call <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %call116, i32 noundef 13)
  store <2 x i64> %call117, ptr %vexpw_lo115, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vexpw_hi118) #5
  %133 = load <4 x float>, ptr %vf_hi88, align 16, !tbaa !11
  %call119 = call <2 x i64> @_mm_castps_si128(<4 x float> noundef %133)
  %call120 = call <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %call119, i32 noundef 13)
  store <2 x i64> %call120, ptr %vexpw_hi118, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vmantw_lo121) #5
  %134 = load <4 x float>, ptr %vf_lo86, align 16, !tbaa !11
  %call122 = call <2 x i64> @_mm_castps_si128(<4 x float> noundef %134)
  %135 = load <2 x i64>, ptr %vmanth_mask, align 16, !tbaa !11
  %call123 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %call122, <2 x i64> noundef %135)
  store <2 x i64> %call123, ptr %vmantw_lo121, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vmantw_hi124) #5
  %136 = load <4 x float>, ptr %vf_hi88, align 16, !tbaa !11
  %call125 = call <2 x i64> @_mm_castps_si128(<4 x float> noundef %136)
  %137 = load <2 x i64>, ptr %vmanth_mask, align 16, !tbaa !11
  %call126 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %call125, <2 x i64> noundef %137)
  store <2 x i64> %call126, ptr %vmantw_hi124, align 16, !tbaa !11
  %138 = load <2 x i64>, ptr %vexpw_lo115, align 16, !tbaa !11
  %139 = load <2 x i64>, ptr %vexph_mask, align 16, !tbaa !11
  %call127 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %138, <2 x i64> noundef %139)
  store <2 x i64> %call127, ptr %vexpw_lo115, align 16, !tbaa !11
  %140 = load <2 x i64>, ptr %vexpw_hi118, align 16, !tbaa !11
  %141 = load <2 x i64>, ptr %vexph_mask, align 16, !tbaa !11
  %call128 = call <2 x i64> @_mm_and_si128(<2 x i64> noundef %140, <2 x i64> noundef %141)
  store <2 x i64> %call128, ptr %vexpw_hi118, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vnonsignw_lo129) #5
  %142 = load <2 x i64>, ptr %vmantw_lo121, align 16, !tbaa !11
  %143 = load <2 x i64>, ptr %vexpw_lo115, align 16, !tbaa !11
  %call130 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %142, <2 x i64> noundef %143)
  store <2 x i64> %call130, ptr %vnonsignw_lo129, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vnonsignw_hi131) #5
  %144 = load <2 x i64>, ptr %vmantw_hi124, align 16, !tbaa !11
  %145 = load <2 x i64>, ptr %vexpw_hi118, align 16, !tbaa !11
  %call132 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %144, <2 x i64> noundef %145)
  store <2 x i64> %call132, ptr %vnonsignw_hi131, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vnonsignh133) #5
  %146 = load <2 x i64>, ptr %vnonsignw_lo129, align 16, !tbaa !11
  %147 = load <2 x i64>, ptr %vnonsignw_hi131, align 16, !tbaa !11
  %call134 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %146, <2 x i64> noundef %147)
  store <2 x i64> %call134, ptr %vnonsignh133, align 16, !tbaa !11
  %148 = load <2 x i64>, ptr %vh108, align 16, !tbaa !11
  %149 = load <2 x i64>, ptr %vnanmaskh100, align 16, !tbaa !11
  %150 = load <2 x i64>, ptr %vnonsignh133, align 16, !tbaa !11
  %call135 = call <2 x i64> @_mm_andnot_si128(<2 x i64> noundef %149, <2 x i64> noundef %150)
  %call136 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %148, <2 x i64> noundef %call135)
  store <2 x i64> %call136, ptr %vh108, align 16, !tbaa !11
  %151 = load i64, ptr %n.addr, align 8, !tbaa !5
  %and137 = and i64 %151, 16
  %tobool138 = icmp ne i64 %and137, 0
  br i1 %tobool138, label %if.then139, label %if.end

if.then139:                                       ; preds = %if.then
  %152 = load ptr, ptr %o, align 8, !tbaa !9
  %153 = load <2 x i64>, ptr %vh108, align 16, !tbaa !11
  call void @_mm_storel_epi64(ptr noundef %152, <2 x i64> noundef %153)
  %154 = load <2 x i64>, ptr %vh108, align 16, !tbaa !11
  %155 = load <2 x i64>, ptr %vh108, align 16, !tbaa !11
  %call140 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %154, <2 x i64> noundef %155)
  store <2 x i64> %call140, ptr %vh108, align 16, !tbaa !11
  %156 = load ptr, ptr %o, align 8, !tbaa !9
  %add.ptr141 = getelementptr inbounds i16, ptr %156, i64 4
  store ptr %add.ptr141, ptr %o, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then139, %if.then
  %157 = load i64, ptr %n.addr, align 8, !tbaa !5
  %and142 = and i64 %157, 8
  %tobool143 = icmp ne i64 %and142, 0
  br i1 %tobool143, label %if.then144, label %if.end148

if.then144:                                       ; preds = %if.end
  %158 = load <2 x i64>, ptr %vh108, align 16, !tbaa !11
  %call145 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %158)
  %159 = load ptr, ptr %o, align 8, !tbaa !9
  store i32 %call145, ptr %159, align 4, !tbaa !15
  %160 = load <2 x i64>, ptr %vh108, align 16, !tbaa !11
  %call146 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %160, i32 noundef 32)
  store <2 x i64> %call146, ptr %vh108, align 16, !tbaa !11
  %161 = load ptr, ptr %o, align 8, !tbaa !9
  %add.ptr147 = getelementptr inbounds i16, ptr %161, i64 2
  store ptr %add.ptr147, ptr %o, align 8, !tbaa !9
  br label %if.end148

if.end148:                                        ; preds = %if.then144, %if.end
  %162 = load i64, ptr %n.addr, align 8, !tbaa !5
  %and149 = and i64 %162, 4
  %tobool150 = icmp ne i64 %and149, 0
  br i1 %tobool150, label %if.then151, label %if.end154

if.then151:                                       ; preds = %if.end148
  %163 = load <2 x i64>, ptr %vh108, align 16, !tbaa !11
  %call152 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %163)
  %conv153 = trunc i32 %call152 to i16
  %164 = load ptr, ptr %o, align 8, !tbaa !9
  store i16 %conv153, ptr %164, align 2, !tbaa !17
  br label %if.end154

if.end154:                                        ; preds = %if.then151, %if.end148
  call void @llvm.lifetime.end.p0(i64 16, ptr %vnonsignh133) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vnonsignw_hi131) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vnonsignw_lo129) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vmantw_hi124) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vmantw_lo121) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vexpw_hi118) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vexpw_lo115) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vh108) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vsignh102) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vnanmaskh100) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vnanmaskw_hi93) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vnanmaskw_lo90) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vf_hi88) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vf_lo86) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vbias_hi83) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vbias_lo80) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vsignx_hi78) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vsignx_lo76) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vabsx_hi74) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vabsx_lo72) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vx_hi70) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_hi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vx_lo68) #5
  br label %if.end155

if.end155:                                        ; preds = %if.end154, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vnanh) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vexph_mask) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vmanth_mask) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vbias_min) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscale_to_zero) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vexpw_max) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscale_to_inf) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vexp_bias) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vnonsign_mask) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_load_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <4 x float>, ptr %0, align 16, !tbaa !11
  ret <4 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_load_si128(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <2 x i64>, ptr %0, align 16, !tbaa !11
  ret <2 x i64> %1
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
define internal <4 x float> @_mm_xor_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <4 x float> %0 to <4 x i32>
  %2 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <4 x float> %2 to <4 x i32>
  %xor = xor <4 x i32> %1, %3
  %4 = bitcast <4 x i32> %xor to <4 x float>
  ret <4 x float> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_add_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %add = add <4 x i32> %1, %3
  %4 = bitcast <4 x i32> %add to <2 x i64>
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
define internal <2 x i64> @_mm_and_si128(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %and = and <2 x i64> %0, %1
  ret <2 x i64> %and
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %4 = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %1, <4 x i32> %3)
  %5 = bitcast <8 x i16> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_max_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %elt.max = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %1, <8 x i16> %3)
  %4 = bitcast <8 x i16> %elt.max to <2 x i64>
  ret <2 x i64> %4
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
define internal <4 x float> @_mm_castsi128_ps(<2 x i64> noundef %__a) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x float>
  ret <4 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_or_si128(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %or = or <2 x i64> %0, %1
  ret <2 x i64> %or
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %__a, i32 noundef %__count) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !15
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !15
  %3 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %1, i32 %2)
  %4 = bitcast <4 x i32> %3 to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_andnot_si128(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %not = xor <2 x i64> %0, <i64 -1, i64 -1>
  %1 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %and = and <2 x i64> %not, %1
  ret <2 x i64> %and
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storeu_si128(ptr noundef %__p, <2 x i64> noundef %__b) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__b.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_si128, ptr %1, i32 0, i32 0
  store <2 x i64> %0, ptr %__v, align 1, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storel_epi64(ptr noundef %__p, <2 x i64> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %vecext = extractelement <2 x i64> %0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u = getelementptr inbounds %struct.__mm_storel_epi64_struct, ptr %1, i32 0, i32 0
  store i64 %vecext, ptr %__u, align 1, !tbaa !11
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %shuffle = shufflevector <2 x i64> %0, <2 x i64> %1, <2 x i32> <i32 1, i32 3>
  ret <2 x i64> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @_mm_cvtsi128_si32(<2 x i64> noundef %__a) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b = alloca <4 x i32>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %__b) #5
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  store <4 x i32> %1, ptr %__b, align 16, !tbaa !11
  %2 = load <4 x i32>, ptr %__b, align 16, !tbaa !11
  %vecext = extractelement <4 x i32> %2, i32 0
  call void @llvm.lifetime.end.p0(i64 16, ptr %__b) #5
  ret i32 %vecext
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %__a, i32 noundef %__count) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !15
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load i32, ptr %__count.addr, align 4, !tbaa !15
  %2 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %0, i32 %1)
  ret <2 x i64> %2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32>, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64>, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = !{}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !7, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"short", !7, i64 0}
