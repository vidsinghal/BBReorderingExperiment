; ModuleID = 'samples/178.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qs8-gemm/gen/2x4c2s4-minmax-fp32-sse2-ld128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.2 = type { [4 x float], [4 x float], [8 x i16], [8 x i16] }
%struct.__loadu_si128 = type { <2 x i64> }
%struct.__mm_loadl_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qs8_gemm_minmax_fp32_ukernel_2x4c2s4__sse2_ld128(i64 noundef %mr, i64 noundef %nc, i64 noundef %kc, ptr noalias noundef %a, i64 noundef %a_stride, ptr noalias noundef %w, ptr noalias noundef %c, i64 noundef %cm_stride, i64 noundef %cn_stride, ptr noalias noundef align 64 dereferenceable(256) %params) #0 {
entry:
  %mr.addr = alloca i64, align 8
  %nc.addr = alloca i64, align 8
  %kc.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %a_stride.addr = alloca i64, align 8
  %w.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %cm_stride.addr = alloca i64, align 8
  %cn_stride.addr = alloca i64, align 8
  %params.addr = alloca ptr, align 8
  %a0 = alloca ptr, align 8
  %c0 = alloca ptr, align 8
  %a1 = alloca ptr, align 8
  %c1 = alloca ptr, align 8
  %vacc0x0123 = alloca <2 x i64>, align 16
  %vacc1x0123 = alloca <2 x i64>, align 16
  %k = alloca i64, align 8
  %va0 = alloca <2 x i64>, align 16
  %vxa0 = alloca <2 x i64>, align 16
  %va1 = alloca <2 x i64>, align 16
  %vxa1 = alloca <2 x i64>, align 16
  %vb01 = alloca <2 x i64>, align 16
  %vsb01 = alloca <2 x i64>, align 16
  %vxb0 = alloca <2 x i64>, align 16
  %vxb1 = alloca <2 x i64>, align 16
  %vb23 = alloca <2 x i64>, align 16
  %vsb23 = alloca <2 x i64>, align 16
  %vxb2 = alloca <2 x i64>, align 16
  %vxb3 = alloca <2 x i64>, align 16
  %vscaled0x0123 = alloca <4 x float>, align 16
  %vscaled1x0123 = alloca <4 x float>, align 16
  %vscale = alloca <4 x float>, align 16
  %voutput_max_less_zero_point = alloca <4 x float>, align 16
  %voutput_zero_point = alloca <2 x i64>, align 16
  %vacc01x0123 = alloca <2 x i64>, align 16
  %voutput_min = alloca <2 x i64>, align 16
  %vout = alloca <2 x i64>, align 16
  store i64 %mr, ptr %mr.addr, align 8, !tbaa !5
  store i64 %nc, ptr %nc.addr, align 8, !tbaa !5
  store i64 %kc, ptr %kc.addr, align 8, !tbaa !5
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i64 %a_stride, ptr %a_stride.addr, align 8, !tbaa !5
  store ptr %w, ptr %w.addr, align 8, !tbaa !9
  store ptr %c, ptr %c.addr, align 8, !tbaa !9
  store i64 %cm_stride, ptr %cm_stride.addr, align 8, !tbaa !5
  store i64 %cn_stride, ptr %cn_stride.addr, align 8, !tbaa !5
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  %0 = load i64, ptr %kc.addr, align 8, !tbaa !5
  %call = call i64 @round_up_po2(i64 noundef %0, i64 noundef 8)
  store i64 %call, ptr %kc.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %a0) #6
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !9
  store ptr %1, ptr %a0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c0) #6
  %2 = load ptr, ptr %c.addr, align 8, !tbaa !9
  store ptr %2, ptr %c0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1) #6
  %3 = load ptr, ptr %a0, align 8, !tbaa !9
  %4 = ptrtoint ptr %3 to i64
  %5 = load i64, ptr %a_stride.addr, align 8, !tbaa !5
  %add = add i64 %4, %5
  %6 = inttoptr i64 %add to ptr
  store ptr %6, ptr %a1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c1) #6
  %7 = load ptr, ptr %c0, align 8, !tbaa !9
  %8 = ptrtoint ptr %7 to i64
  %9 = load i64, ptr %cm_stride.addr, align 8, !tbaa !5
  %add1 = add i64 %8, %9
  %10 = inttoptr i64 %add1 to ptr
  store ptr %10, ptr %c1, align 8, !tbaa !9
  %11 = load i64, ptr %mr.addr, align 8, !tbaa !5
  %cmp = icmp ne i64 %11, 2
  %lnot = xor i1 %cmp, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !11

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %a0, align 8, !tbaa !9
  store ptr %12, ptr %a1, align 8, !tbaa !9
  %13 = load ptr, ptr %c0, align 8, !tbaa !9
  store ptr %13, ptr %c1, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %do.cond97, %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x0123) #6
  %14 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call3 = call <2 x i64> @_mm_loadu_si128(ptr noundef %14)
  store <2 x i64> %call3, ptr %vacc0x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc1x0123) #6
  %15 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  store <2 x i64> %15, ptr %vacc1x0123, align 16, !tbaa !12
  %16 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i32, ptr %16, i64 4
  store ptr %add.ptr, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #6
  %17 = load i64, ptr %kc.addr, align 8, !tbaa !5
  store i64 %17, ptr %k, align 8, !tbaa !5
  br label %do.body4

do.body4:                                         ; preds = %do.cond, %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %va0) #6
  %18 = load ptr, ptr %a0, align 8, !tbaa !9
  %call5 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %18)
  store <2 x i64> %call5, ptr %va0, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxa0) #6
  %19 = load <2 x i64>, ptr %va0, align 16, !tbaa !12
  %20 = load <2 x i64>, ptr %va0, align 16, !tbaa !12
  %call6 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %19, <2 x i64> noundef %20)
  %call7 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call6, i32 noundef 8)
  store <2 x i64> %call7, ptr %vxa0, align 16, !tbaa !12
  %21 = load ptr, ptr %a0, align 8, !tbaa !9
  %add.ptr8 = getelementptr inbounds i8, ptr %21, i64 8
  store ptr %add.ptr8, ptr %a0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %va1) #6
  %22 = load ptr, ptr %a1, align 8, !tbaa !9
  %call9 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %22)
  store <2 x i64> %call9, ptr %va1, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxa1) #6
  %23 = load <2 x i64>, ptr %va1, align 16, !tbaa !12
  %24 = load <2 x i64>, ptr %va1, align 16, !tbaa !12
  %call10 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %23, <2 x i64> noundef %24)
  %call11 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call10, i32 noundef 8)
  store <2 x i64> %call11, ptr %vxa1, align 16, !tbaa !12
  %25 = load ptr, ptr %a1, align 8, !tbaa !9
  %add.ptr12 = getelementptr inbounds i8, ptr %25, i64 8
  store ptr %add.ptr12, ptr %a1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb01) #6
  %26 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call13 = call <2 x i64> @_mm_loadu_si128(ptr noundef %26)
  store <2 x i64> %call13, ptr %vb01, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vsb01) #6
  %call14 = call <2 x i64> @_mm_setzero_si128()
  %27 = load <2 x i64>, ptr %vb01, align 16, !tbaa !12
  %call15 = call <2 x i64> @_mm_cmpgt_epi8(<2 x i64> noundef %call14, <2 x i64> noundef %27)
  store <2 x i64> %call15, ptr %vsb01, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb0) #6
  %28 = load <2 x i64>, ptr %vb01, align 16, !tbaa !12
  %29 = load <2 x i64>, ptr %vsb01, align 16, !tbaa !12
  %call16 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %28, <2 x i64> noundef %29)
  store <2 x i64> %call16, ptr %vxb0, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb1) #6
  %30 = load <2 x i64>, ptr %vb01, align 16, !tbaa !12
  %31 = load <2 x i64>, ptr %vsb01, align 16, !tbaa !12
  %call17 = call <2 x i64> @_mm_unpackhi_epi8(<2 x i64> noundef %30, <2 x i64> noundef %31)
  store <2 x i64> %call17, ptr %vxb1, align 16, !tbaa !12
  %32 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %33 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %34 = load <2 x i64>, ptr %vxb0, align 16, !tbaa !12
  %call18 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %33, <2 x i64> noundef %34)
  %call19 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %32, <2 x i64> noundef %call18)
  store <2 x i64> %call19, ptr %vacc0x0123, align 16, !tbaa !12
  %35 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %36 = bitcast <2 x i64> %35 to <4 x i32>
  %permil = shufflevector <4 x i32> %36, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %37 = bitcast <4 x i32> %permil to <2 x i64>
  store <2 x i64> %37, ptr %vxa0, align 16, !tbaa !12
  %38 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %39 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %40 = load <2 x i64>, ptr %vxb0, align 16, !tbaa !12
  %call20 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %39, <2 x i64> noundef %40)
  %call21 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %38, <2 x i64> noundef %call20)
  store <2 x i64> %call21, ptr %vacc1x0123, align 16, !tbaa !12
  %41 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %42 = bitcast <2 x i64> %41 to <4 x i32>
  %permil22 = shufflevector <4 x i32> %42, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %43 = bitcast <4 x i32> %permil22 to <2 x i64>
  store <2 x i64> %43, ptr %vxa1, align 16, !tbaa !12
  %44 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %45 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %46 = load <2 x i64>, ptr %vxb1, align 16, !tbaa !12
  %call23 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %45, <2 x i64> noundef %46)
  %call24 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %44, <2 x i64> noundef %call23)
  store <2 x i64> %call24, ptr %vacc0x0123, align 16, !tbaa !12
  %47 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %48 = bitcast <2 x i64> %47 to <4 x i32>
  %permil25 = shufflevector <4 x i32> %48, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %49 = bitcast <4 x i32> %permil25 to <2 x i64>
  store <2 x i64> %49, ptr %vxa0, align 16, !tbaa !12
  %50 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %51 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %52 = load <2 x i64>, ptr %vxb1, align 16, !tbaa !12
  %call26 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %51, <2 x i64> noundef %52)
  %call27 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %50, <2 x i64> noundef %call26)
  store <2 x i64> %call27, ptr %vacc1x0123, align 16, !tbaa !12
  %53 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %54 = bitcast <2 x i64> %53 to <4 x i32>
  %permil28 = shufflevector <4 x i32> %54, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %55 = bitcast <4 x i32> %permil28 to <2 x i64>
  store <2 x i64> %55, ptr %vxa1, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb23) #6
  %56 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr29 = getelementptr inbounds i8, ptr %56, i64 16
  %call30 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr29)
  store <2 x i64> %call30, ptr %vb23, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vsb23) #6
  %call31 = call <2 x i64> @_mm_setzero_si128()
  %57 = load <2 x i64>, ptr %vb23, align 16, !tbaa !12
  %call32 = call <2 x i64> @_mm_cmpgt_epi8(<2 x i64> noundef %call31, <2 x i64> noundef %57)
  store <2 x i64> %call32, ptr %vsb23, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb2) #6
  %58 = load <2 x i64>, ptr %vb23, align 16, !tbaa !12
  %59 = load <2 x i64>, ptr %vsb23, align 16, !tbaa !12
  %call33 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %58, <2 x i64> noundef %59)
  store <2 x i64> %call33, ptr %vxb2, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb3) #6
  %60 = load <2 x i64>, ptr %vb23, align 16, !tbaa !12
  %61 = load <2 x i64>, ptr %vsb23, align 16, !tbaa !12
  %call34 = call <2 x i64> @_mm_unpackhi_epi8(<2 x i64> noundef %60, <2 x i64> noundef %61)
  store <2 x i64> %call34, ptr %vxb3, align 16, !tbaa !12
  %62 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %63 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %64 = load <2 x i64>, ptr %vxb2, align 16, !tbaa !12
  %call35 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %63, <2 x i64> noundef %64)
  %call36 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %62, <2 x i64> noundef %call35)
  store <2 x i64> %call36, ptr %vacc0x0123, align 16, !tbaa !12
  %65 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %66 = bitcast <2 x i64> %65 to <4 x i32>
  %permil37 = shufflevector <4 x i32> %66, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %67 = bitcast <4 x i32> %permil37 to <2 x i64>
  store <2 x i64> %67, ptr %vxa0, align 16, !tbaa !12
  %68 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %69 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %70 = load <2 x i64>, ptr %vxb2, align 16, !tbaa !12
  %call38 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %69, <2 x i64> noundef %70)
  %call39 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %68, <2 x i64> noundef %call38)
  store <2 x i64> %call39, ptr %vacc1x0123, align 16, !tbaa !12
  %71 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %72 = bitcast <2 x i64> %71 to <4 x i32>
  %permil40 = shufflevector <4 x i32> %72, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %73 = bitcast <4 x i32> %permil40 to <2 x i64>
  store <2 x i64> %73, ptr %vxa1, align 16, !tbaa !12
  %74 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %75 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %76 = load <2 x i64>, ptr %vxb3, align 16, !tbaa !12
  %call41 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %75, <2 x i64> noundef %76)
  %call42 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %74, <2 x i64> noundef %call41)
  store <2 x i64> %call42, ptr %vacc0x0123, align 16, !tbaa !12
  %77 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %78 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %79 = load <2 x i64>, ptr %vxb3, align 16, !tbaa !12
  %call43 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %78, <2 x i64> noundef %79)
  %call44 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %77, <2 x i64> noundef %call43)
  store <2 x i64> %call44, ptr %vacc1x0123, align 16, !tbaa !12
  %80 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr45 = getelementptr inbounds i8, ptr %80, i64 32
  store ptr %add.ptr45, ptr %w.addr, align 8, !tbaa !9
  %81 = load i64, ptr %k, align 8, !tbaa !5
  %sub = sub i64 %81, 8
  store i64 %sub, ptr %k, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vsb23) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb23) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb0) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vsb01) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb01) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxa1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %va1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxa0) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %va0) #6
  br label %do.cond

do.cond:                                          ; preds = %do.body4
  %82 = load i64, ptr %k, align 8, !tbaa !5
  %cmp46 = icmp ne i64 %82, 0
  br i1 %cmp46, label %do.body4, label %do.end, !llvm.loop !13

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled0x0123) #6
  %83 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %call48 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %83)
  store <4 x float> %call48, ptr %vscaled0x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled1x0123) #6
  %84 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %call49 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %84)
  store <4 x float> %call49, ptr %vscaled1x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscale) #6
  %85 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale = getelementptr inbounds %struct.anon.2, ptr %85, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x float], ptr %scale, i64 0, i64 0
  %call50 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay)
  store <4 x float> %call50, ptr %vscale, align 16, !tbaa !12
  %86 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !12
  %87 = load <4 x float>, ptr %vscale, align 16, !tbaa !12
  %call51 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %86, <4 x float> noundef %87)
  store <4 x float> %call51, ptr %vscaled0x0123, align 16, !tbaa !12
  %88 = load <4 x float>, ptr %vscaled1x0123, align 16, !tbaa !12
  %89 = load <4 x float>, ptr %vscale, align 16, !tbaa !12
  %call52 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %88, <4 x float> noundef %89)
  store <4 x float> %call52, ptr %vscaled1x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_max_less_zero_point) #6
  %90 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max_less_zero_point = getelementptr inbounds %struct.anon.2, ptr %90, i32 0, i32 1
  %arraydecay53 = getelementptr inbounds [4 x float], ptr %output_max_less_zero_point, i64 0, i64 0
  %call54 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay53)
  store <4 x float> %call54, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %91 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !12
  %92 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %call55 = call <4 x float> @_mm_min_ps(<4 x float> noundef %91, <4 x float> noundef %92)
  store <4 x float> %call55, ptr %vscaled0x0123, align 16, !tbaa !12
  %93 = load <4 x float>, ptr %vscaled1x0123, align 16, !tbaa !12
  %94 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %call56 = call <4 x float> @_mm_min_ps(<4 x float> noundef %93, <4 x float> noundef %94)
  store <4 x float> %call56, ptr %vscaled1x0123, align 16, !tbaa !12
  %95 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !12
  %call57 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %95)
  store <2 x i64> %call57, ptr %vacc0x0123, align 16, !tbaa !12
  %96 = load <4 x float>, ptr %vscaled1x0123, align 16, !tbaa !12
  %call58 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %96)
  store <2 x i64> %call58, ptr %vacc1x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_zero_point) #6
  %97 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_zero_point = getelementptr inbounds %struct.anon.2, ptr %97, i32 0, i32 2
  %arraydecay59 = getelementptr inbounds [8 x i16], ptr %output_zero_point, i64 0, i64 0
  %call60 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay59)
  store <2 x i64> %call60, ptr %voutput_zero_point, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc01x0123) #6
  %98 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %99 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %call61 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %98, <2 x i64> noundef %99)
  %100 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !12
  %call62 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call61, <2 x i64> noundef %100)
  store <2 x i64> %call62, ptr %vacc01x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_min) #6
  %101 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min = getelementptr inbounds %struct.anon.2, ptr %101, i32 0, i32 3
  %arraydecay63 = getelementptr inbounds [8 x i16], ptr %output_min, i64 0, i64 0
  %call64 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay63)
  store <2 x i64> %call64, ptr %voutput_min, align 16, !tbaa !12
  %102 = load <2 x i64>, ptr %vacc01x0123, align 16, !tbaa !12
  %103 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !12
  %call65 = call <2 x i64> @_mm_max_epi16(<2 x i64> noundef %102, <2 x i64> noundef %103)
  store <2 x i64> %call65, ptr %vacc01x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout) #6
  %104 = load <2 x i64>, ptr %vacc01x0123, align 16, !tbaa !12
  %105 = load <2 x i64>, ptr %vacc01x0123, align 16, !tbaa !12
  %call66 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %104, <2 x i64> noundef %105)
  store <2 x i64> %call66, ptr %vout, align 16, !tbaa !12
  %106 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp67 = icmp uge i64 %106, 4
  br i1 %cmp67, label %if.then69, label %if.else

if.then69:                                        ; preds = %do.end
  %107 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %call70 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %107)
  %108 = load ptr, ptr %c0, align 8, !tbaa !9
  store i32 %call70, ptr %108, align 4, !tbaa !15
  %109 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %110 = bitcast <2 x i64> %109 to <4 x i32>
  %permil71 = shufflevector <4 x i32> %110, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %111 = bitcast <4 x i32> %permil71 to <2 x i64>
  store <2 x i64> %111, ptr %vout, align 16, !tbaa !12
  %112 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %call72 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %112)
  %113 = load ptr, ptr %c1, align 8, !tbaa !9
  store i32 %call72, ptr %113, align 4, !tbaa !15
  %114 = load ptr, ptr %c0, align 8, !tbaa !9
  %115 = ptrtoint ptr %114 to i64
  %116 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add73 = add i64 %115, %116
  %117 = inttoptr i64 %add73 to ptr
  store ptr %117, ptr %c0, align 8, !tbaa !9
  %118 = load ptr, ptr %c1, align 8, !tbaa !9
  %119 = ptrtoint ptr %118 to i64
  %120 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add74 = add i64 %119, %120
  %121 = inttoptr i64 %add74 to ptr
  store ptr %121, ptr %c1, align 8, !tbaa !9
  %122 = load ptr, ptr %a0, align 8, !tbaa !9
  %123 = ptrtoint ptr %122 to i64
  %124 = load i64, ptr %kc.addr, align 8, !tbaa !5
  %sub75 = sub i64 %123, %124
  %125 = inttoptr i64 %sub75 to ptr
  store ptr %125, ptr %a0, align 8, !tbaa !9
  %126 = load ptr, ptr %a1, align 8, !tbaa !9
  %127 = ptrtoint ptr %126 to i64
  %128 = load i64, ptr %kc.addr, align 8, !tbaa !5
  %sub76 = sub i64 %127, %128
  %129 = inttoptr i64 %sub76 to ptr
  store ptr %129, ptr %a1, align 8, !tbaa !9
  %130 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %sub77 = sub i64 %130, 4
  store i64 %sub77, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end96

if.else:                                          ; preds = %do.end
  %131 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and = and i64 %131, 2
  %tobool78 = icmp ne i64 %and, 0
  br i1 %tobool78, label %if.then79, label %if.end87

if.then79:                                        ; preds = %if.else
  %132 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %133 = bitcast <2 x i64> %132 to <8 x i16>
  %134 = extractelement <8 x i16> %133, i64 0
  %conv80 = zext i16 %134 to i32
  %conv81 = trunc i32 %conv80 to i16
  %135 = load ptr, ptr %c0, align 8, !tbaa !9
  store i16 %conv81, ptr %135, align 2, !tbaa !17
  %136 = load ptr, ptr %c0, align 8, !tbaa !9
  %add.ptr82 = getelementptr inbounds i8, ptr %136, i64 2
  store ptr %add.ptr82, ptr %c0, align 8, !tbaa !9
  %137 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %138 = bitcast <2 x i64> %137 to <8 x i16>
  %139 = extractelement <8 x i16> %138, i64 2
  %conv83 = zext i16 %139 to i32
  %conv84 = trunc i32 %conv83 to i16
  %140 = load ptr, ptr %c1, align 8, !tbaa !9
  store i16 %conv84, ptr %140, align 2, !tbaa !17
  %141 = load ptr, ptr %c1, align 8, !tbaa !9
  %add.ptr85 = getelementptr inbounds i8, ptr %141, i64 2
  store ptr %add.ptr85, ptr %c1, align 8, !tbaa !9
  %142 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %call86 = call <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %142, i32 noundef 16)
  store <2 x i64> %call86, ptr %vout, align 16, !tbaa !12
  br label %if.end87

if.end87:                                         ; preds = %if.then79, %if.else
  %143 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and88 = and i64 %143, 1
  %tobool89 = icmp ne i64 %and88, 0
  br i1 %tobool89, label %if.then90, label %if.end95

if.then90:                                        ; preds = %if.end87
  %144 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %call91 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %144)
  %conv92 = trunc i32 %call91 to i8
  %145 = load ptr, ptr %c0, align 8, !tbaa !9
  store i8 %conv92, ptr %145, align 1, !tbaa !12
  %146 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %147 = bitcast <2 x i64> %146 to <8 x i16>
  %148 = extractelement <8 x i16> %147, i64 2
  %conv93 = zext i16 %148 to i32
  %conv94 = trunc i32 %conv93 to i8
  %149 = load ptr, ptr %c1, align 8, !tbaa !9
  store i8 %conv94, ptr %149, align 1, !tbaa !12
  br label %if.end95

if.end95:                                         ; preds = %if.then90, %if.end87
  store i64 0, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.then69
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_min) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc01x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_zero_point) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_max_less_zero_point) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscale) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled1x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled0x0123) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc1x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x0123) #6
  br label %do.cond97

do.cond97:                                        ; preds = %if.end96
  %150 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp98 = icmp ne i64 %150, 0
  br i1 %cmp98, label %do.body, label %do.end100, !llvm.loop !19

do.end100:                                        ; preds = %do.cond97
  call void @llvm.lifetime.end.p0(i64 8, ptr %c1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a0) #6
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @round_up_po2(i64 noundef %n, i64 noundef %q) #1 {
entry:
  %n.addr = alloca i64, align 8
  %q.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store i64 %q, ptr %q.addr, align 8, !tbaa !5
  %0 = load i64, ptr %n.addr, align 8, !tbaa !5
  %1 = load i64, ptr %q.addr, align 8, !tbaa !5
  %add = add i64 %0, %1
  %sub = sub i64 %add, 1
  %2 = load i64, ptr %q.addr, align 8, !tbaa !5
  %call = call i64 @round_down_po2(i64 noundef %sub, i64 noundef %2)
  ret i64 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_loadu_si128(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__loadu_si128, ptr %0, i32 0, i32 0
  %1 = load <2 x i64>, ptr %__v, align 1, !tbaa !12
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_loadl_epi64(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %.compoundliteral = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u = getelementptr inbounds %struct.__mm_loadl_epi64_struct, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %__u, align 1, !tbaa !12
  %vecinit = insertelement <2 x i64> undef, i64 %1, i32 0
  %vecinit1 = insertelement <2 x i64> %vecinit, i64 0, i32 1
  store <2 x i64> %vecinit1, ptr %.compoundliteral, align 16, !tbaa !12
  %2 = load <2 x i64>, ptr %.compoundliteral, align 16, !tbaa !12
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %__a, i32 noundef %__count) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !15
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !15
  %3 = call <8 x i16> @llvm.x86.sse2.psrai.w(<8 x i16> %1, i32 %2)
  %4 = bitcast <8 x i16> %3 to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %shuffle = shufflevector <16 x i8> %1, <16 x i8> %3, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %4 = bitcast <16 x i8> %shuffle to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_cmpgt_epi8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %cmp = icmp sgt <16 x i8> %1, %3
  %sext = sext <16 x i1> %cmp to <16 x i8>
  %4 = bitcast <16 x i8> %sext to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_setzero_si128() #3 {
entry:
  %.compoundliteral = alloca <2 x i64>, align 16
  store <2 x i64> zeroinitializer, ptr %.compoundliteral, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %.compoundliteral, align 16, !tbaa !12
  ret <2 x i64> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpackhi_epi8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %shuffle = shufflevector <16 x i8> %1, <16 x i8> %3, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %4 = bitcast <16 x i8> %shuffle to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_add_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %add = add <4 x i32> %1, %3
  %4 = bitcast <4 x i32> %add to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %4 = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %1, <8 x i16> %3)
  %5 = bitcast <4 x i32> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %__a) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %conv = sitofp <4 x i32> %1 to <4 x float>
  ret <4 x float> %conv
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_load_ps(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <4 x float>, ptr %0, align 16, !tbaa !12
  ret <4 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_mul_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !12
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !12
  %mul = fmul <4 x float> %0, %1
  ret <4 x float> %mul
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_min_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !12
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !12
  %2 = call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %0, <4 x float> %1)
  ret <4 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %__a) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !12
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !12
  %1 = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %0)
  %2 = bitcast <4 x i32> %1 to <2 x i64>
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_load_si128(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <2 x i64>, ptr %0, align 16, !tbaa !12
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %elt.sat = call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %1, <8 x i16> %3)
  %4 = bitcast <8 x i16> %elt.sat to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %4 = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %1, <4 x i32> %3)
  %5 = bitcast <8 x i16> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_max_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %elt.max = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %1, <8 x i16> %3)
  %4 = bitcast <8 x i16> %elt.max to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %4 = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %1, <8 x i16> %3)
  %5 = bitcast <16 x i8> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @_mm_cvtsi128_si32(<2 x i64> noundef %__a) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b = alloca <4 x i32>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %__b) #6
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  store <4 x i32> %1, ptr %__b, align 16, !tbaa !12
  %2 = load <4 x i32>, ptr %__b, align 16, !tbaa !12
  %vecext = extractelement <4 x i32> %2, i32 0
  call void @llvm.lifetime.end.p0(i64 16, ptr %__b) #6
  ret i32 %vecext
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %__a, i32 noundef %__count) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !15
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !15
  %3 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %1, i32 %2)
  %4 = bitcast <4 x i32> %3 to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @round_down_po2(i64 noundef %n, i64 noundef %q) #1 {
entry:
  %n.addr = alloca i64, align 8
  %q.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store i64 %q, ptr %q.addr, align 8, !tbaa !5
  %0 = load i64, ptr %n.addr, align 8, !tbaa !5
  %1 = load i64, ptr %q.addr, align 8, !tbaa !5
  %sub = sub i64 0, %1
  %and = and i64 %0, %sub
  ret i64 %and
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.psrai.w(<8 x i16>, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32>, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!11 = !{}
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !7, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"short", !7, i64 0}
!19 = distinct !{!19, !14}
