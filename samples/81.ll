; ModuleID = 'samples/81.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qc8-gemm/gen/2x4c8-minmax-fp32-avx-ld128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.3 = type { [4 x float], [8 x i16], [16 x i8] }
%struct.__mm_loadl_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qc8_gemm_minmax_fp32_ukernel_2x4c8__avx_ld128(i64 noundef %mr, i64 noundef %nc, i64 noundef %kc, ptr noalias noundef %a, i64 noundef %a_stride, ptr noalias noundef %w, ptr noalias noundef %c, i64 noundef %cm_stride, i64 noundef %cn_stride, ptr noalias noundef align 64 dereferenceable(192) %params) #0 {
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
  %vacc0x0 = alloca <2 x i64>, align 16
  %vacc0x1 = alloca <2 x i64>, align 16
  %vacc0x2 = alloca <2 x i64>, align 16
  %vacc0x3 = alloca <2 x i64>, align 16
  %vacc1x0 = alloca <2 x i64>, align 16
  %vacc1x1 = alloca <2 x i64>, align 16
  %vacc1x2 = alloca <2 x i64>, align 16
  %vacc1x3 = alloca <2 x i64>, align 16
  %k = alloca i64, align 8
  %va0 = alloca <2 x i64>, align 16
  %vxa0 = alloca <2 x i64>, align 16
  %va1 = alloca <2 x i64>, align 16
  %vxa1 = alloca <2 x i64>, align 16
  %vb01 = alloca <2 x i64>, align 16
  %vxb0 = alloca <2 x i64>, align 16
  %vxb1 = alloca <2 x i64>, align 16
  %vb23 = alloca <2 x i64>, align 16
  %vxb2 = alloca <2 x i64>, align 16
  %vxb3 = alloca <2 x i64>, align 16
  %vacc0x01 = alloca <2 x i64>, align 16
  %vacc0x23 = alloca <2 x i64>, align 16
  %vacc1x01 = alloca <2 x i64>, align 16
  %vacc1x23 = alloca <2 x i64>, align 16
  %vacc0x0123 = alloca <2 x i64>, align 16
  %vacc1x0123 = alloca <2 x i64>, align 16
  %vscaled0x0123 = alloca <4 x float>, align 16
  %vscaled1x0123 = alloca <4 x float>, align 16
  %vscale0123 = alloca <4 x float>, align 16
  %voutput_max_less_zero_point = alloca <4 x float>, align 16
  %voutput_zero_point = alloca <2 x i64>, align 16
  %vacc01x0123 = alloca <2 x i64>, align 16
  %vout = alloca <2 x i64>, align 16
  store i64 %mr, ptr %mr.addr, align 8, !tbaa !4
  store i64 %nc, ptr %nc.addr, align 8, !tbaa !4
  store i64 %kc, ptr %kc.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !8
  store i64 %a_stride, ptr %a_stride.addr, align 8, !tbaa !4
  store ptr %w, ptr %w.addr, align 8, !tbaa !8
  store ptr %c, ptr %c.addr, align 8, !tbaa !8
  store i64 %cm_stride, ptr %cm_stride.addr, align 8, !tbaa !4
  store i64 %cn_stride, ptr %cn_stride.addr, align 8, !tbaa !4
  store ptr %params, ptr %params.addr, align 8, !tbaa !8
  %0 = load i64, ptr %kc.addr, align 8, !tbaa !4
  %call = call i64 @round_up_po2(i64 noundef %0, i64 noundef 8)
  store i64 %call, ptr %kc.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %a0) #6
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !8
  store ptr %1, ptr %a0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %c0) #6
  %2 = load ptr, ptr %c.addr, align 8, !tbaa !8
  store ptr %2, ptr %c0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1) #6
  %3 = load ptr, ptr %a0, align 8, !tbaa !8
  %4 = ptrtoint ptr %3 to i64
  %5 = load i64, ptr %a_stride.addr, align 8, !tbaa !4
  %add = add i64 %4, %5
  %6 = inttoptr i64 %add to ptr
  store ptr %6, ptr %a1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %c1) #6
  %7 = load ptr, ptr %c0, align 8, !tbaa !8
  %8 = ptrtoint ptr %7 to i64
  %9 = load i64, ptr %cm_stride.addr, align 8, !tbaa !4
  %add1 = add i64 %8, %9
  %10 = inttoptr i64 %add1 to ptr
  store ptr %10, ptr %c1, align 8, !tbaa !8
  %11 = load i64, ptr %mr.addr, align 8, !tbaa !4
  %cmp = icmp ne i64 %11, 2
  %lnot = xor i1 %cmp, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !10

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %a0, align 8, !tbaa !8
  store ptr %12, ptr %a1, align 8, !tbaa !8
  %13 = load ptr, ptr %c0, align 8, !tbaa !8
  store ptr %13, ptr %c1, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x0) #6
  %14 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i32, ptr %14, i64 0
  %15 = load i32, ptr %arrayidx, align 4, !tbaa !11
  %call3 = call <2 x i64> @_mm_cvtsi32_si128(i32 noundef %15)
  store <2 x i64> %call3, ptr %vacc0x0, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x1) #6
  %16 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %arrayidx4 = getelementptr inbounds i32, ptr %16, i64 1
  %17 = load i32, ptr %arrayidx4, align 4, !tbaa !11
  %call5 = call <2 x i64> @_mm_cvtsi32_si128(i32 noundef %17)
  store <2 x i64> %call5, ptr %vacc0x1, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x2) #6
  %18 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %arrayidx6 = getelementptr inbounds i32, ptr %18, i64 2
  %19 = load i32, ptr %arrayidx6, align 4, !tbaa !11
  %call7 = call <2 x i64> @_mm_cvtsi32_si128(i32 noundef %19)
  store <2 x i64> %call7, ptr %vacc0x2, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x3) #6
  %20 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %arrayidx8 = getelementptr inbounds i32, ptr %20, i64 3
  %21 = load i32, ptr %arrayidx8, align 4, !tbaa !11
  %call9 = call <2 x i64> @_mm_cvtsi32_si128(i32 noundef %21)
  store <2 x i64> %call9, ptr %vacc0x3, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc1x0) #6
  %22 = load <2 x i64>, ptr %vacc0x0, align 16, !tbaa !13
  store <2 x i64> %22, ptr %vacc1x0, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc1x1) #6
  %23 = load <2 x i64>, ptr %vacc0x1, align 16, !tbaa !13
  store <2 x i64> %23, ptr %vacc1x1, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc1x2) #6
  %24 = load <2 x i64>, ptr %vacc0x2, align 16, !tbaa !13
  store <2 x i64> %24, ptr %vacc1x2, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc1x3) #6
  %25 = load <2 x i64>, ptr %vacc0x3, align 16, !tbaa !13
  store <2 x i64> %25, ptr %vacc1x3, align 16, !tbaa !13
  %26 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i32, ptr %26, i64 4
  store ptr %add.ptr, ptr %w.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #6
  store i64 0, ptr %k, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %27 = load i64, ptr %k, align 8, !tbaa !4
  %28 = load i64, ptr %kc.addr, align 8, !tbaa !4
  %cmp10 = icmp ult i64 %27, %28
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %va0) #6
  %29 = load ptr, ptr %a0, align 8, !tbaa !8
  %call12 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %29)
  store <2 x i64> %call12, ptr %va0, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxa0) #6
  %30 = load <2 x i64>, ptr %va0, align 16, !tbaa !13
  %call13 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %30)
  store <2 x i64> %call13, ptr %vxa0, align 16, !tbaa !13
  %31 = load ptr, ptr %a0, align 8, !tbaa !8
  %add.ptr14 = getelementptr inbounds i8, ptr %31, i64 8
  store ptr %add.ptr14, ptr %a0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %va1) #6
  %32 = load ptr, ptr %a1, align 8, !tbaa !8
  %call15 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %32)
  store <2 x i64> %call15, ptr %va1, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxa1) #6
  %33 = load <2 x i64>, ptr %va1, align 16, !tbaa !13
  %call16 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %33)
  store <2 x i64> %call16, ptr %vxa1, align 16, !tbaa !13
  %34 = load ptr, ptr %a1, align 8, !tbaa !8
  %add.ptr17 = getelementptr inbounds i8, ptr %34, i64 8
  store ptr %add.ptr17, ptr %a1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb01) #6
  %35 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %call18 = call <2 x i64> @_mm_load_si128(ptr noundef %35)
  store <2 x i64> %call18, ptr %vb01, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb0) #6
  %36 = load <2 x i64>, ptr %vb01, align 16, !tbaa !13
  %call19 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %36)
  store <2 x i64> %call19, ptr %vxb0, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb1) #6
  %37 = load <2 x i64>, ptr %vb01, align 16, !tbaa !13
  %38 = load <2 x i64>, ptr %vb01, align 16, !tbaa !13
  %call20 = call <2 x i64> @_mm_unpackhi_epi8(<2 x i64> noundef %37, <2 x i64> noundef %38)
  %call21 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call20, i32 noundef 8)
  store <2 x i64> %call21, ptr %vxb1, align 16, !tbaa !13
  %39 = load <2 x i64>, ptr %vacc0x0, align 16, !tbaa !13
  %40 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !13
  %41 = load <2 x i64>, ptr %vxb0, align 16, !tbaa !13
  %call22 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %40, <2 x i64> noundef %41)
  %call23 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %39, <2 x i64> noundef %call22)
  store <2 x i64> %call23, ptr %vacc0x0, align 16, !tbaa !13
  %42 = load <2 x i64>, ptr %vacc0x1, align 16, !tbaa !13
  %43 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !13
  %44 = load <2 x i64>, ptr %vxb1, align 16, !tbaa !13
  %call24 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %43, <2 x i64> noundef %44)
  %call25 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %42, <2 x i64> noundef %call24)
  store <2 x i64> %call25, ptr %vacc0x1, align 16, !tbaa !13
  %45 = load <2 x i64>, ptr %vacc1x0, align 16, !tbaa !13
  %46 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !13
  %47 = load <2 x i64>, ptr %vxb0, align 16, !tbaa !13
  %call26 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %46, <2 x i64> noundef %47)
  %call27 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %45, <2 x i64> noundef %call26)
  store <2 x i64> %call27, ptr %vacc1x0, align 16, !tbaa !13
  %48 = load <2 x i64>, ptr %vacc1x1, align 16, !tbaa !13
  %49 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !13
  %50 = load <2 x i64>, ptr %vxb1, align 16, !tbaa !13
  %call28 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %49, <2 x i64> noundef %50)
  %call29 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %48, <2 x i64> noundef %call28)
  store <2 x i64> %call29, ptr %vacc1x1, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb23) #6
  %51 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %add.ptr30 = getelementptr inbounds i8, ptr %51, i64 16
  %call31 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr30)
  store <2 x i64> %call31, ptr %vb23, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb2) #6
  %52 = load <2 x i64>, ptr %vb23, align 16, !tbaa !13
  %call32 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %52)
  store <2 x i64> %call32, ptr %vxb2, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb3) #6
  %53 = load <2 x i64>, ptr %vb23, align 16, !tbaa !13
  %54 = load <2 x i64>, ptr %vb23, align 16, !tbaa !13
  %call33 = call <2 x i64> @_mm_unpackhi_epi8(<2 x i64> noundef %53, <2 x i64> noundef %54)
  %call34 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call33, i32 noundef 8)
  store <2 x i64> %call34, ptr %vxb3, align 16, !tbaa !13
  %55 = load <2 x i64>, ptr %vacc0x2, align 16, !tbaa !13
  %56 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !13
  %57 = load <2 x i64>, ptr %vxb2, align 16, !tbaa !13
  %call35 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %56, <2 x i64> noundef %57)
  %call36 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %55, <2 x i64> noundef %call35)
  store <2 x i64> %call36, ptr %vacc0x2, align 16, !tbaa !13
  %58 = load <2 x i64>, ptr %vacc0x3, align 16, !tbaa !13
  %59 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !13
  %60 = load <2 x i64>, ptr %vxb3, align 16, !tbaa !13
  %call37 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %59, <2 x i64> noundef %60)
  %call38 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %58, <2 x i64> noundef %call37)
  store <2 x i64> %call38, ptr %vacc0x3, align 16, !tbaa !13
  %61 = load <2 x i64>, ptr %vacc1x2, align 16, !tbaa !13
  %62 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !13
  %63 = load <2 x i64>, ptr %vxb2, align 16, !tbaa !13
  %call39 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %62, <2 x i64> noundef %63)
  %call40 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %61, <2 x i64> noundef %call39)
  store <2 x i64> %call40, ptr %vacc1x2, align 16, !tbaa !13
  %64 = load <2 x i64>, ptr %vacc1x3, align 16, !tbaa !13
  %65 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !13
  %66 = load <2 x i64>, ptr %vxb3, align 16, !tbaa !13
  %call41 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %65, <2 x i64> noundef %66)
  %call42 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %64, <2 x i64> noundef %call41)
  store <2 x i64> %call42, ptr %vacc1x3, align 16, !tbaa !13
  %67 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %add.ptr43 = getelementptr inbounds i8, ptr %67, i64 32
  store ptr %add.ptr43, ptr %w.addr, align 8, !tbaa !8
  %68 = load i64, ptr %k, align 8, !tbaa !4
  %add44 = add i64 %68, 8
  store i64 %add44, ptr %k, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb23) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb0) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb01) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxa1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %va1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxa0) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %va0) #6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x01) #6
  %69 = load <2 x i64>, ptr %vacc0x0, align 16, !tbaa !13
  %70 = load <2 x i64>, ptr %vacc0x1, align 16, !tbaa !13
  %call45 = call <2 x i64> @_mm_hadd_epi32(<2 x i64> noundef %69, <2 x i64> noundef %70)
  store <2 x i64> %call45, ptr %vacc0x01, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x23) #6
  %71 = load <2 x i64>, ptr %vacc0x2, align 16, !tbaa !13
  %72 = load <2 x i64>, ptr %vacc0x3, align 16, !tbaa !13
  %call46 = call <2 x i64> @_mm_hadd_epi32(<2 x i64> noundef %71, <2 x i64> noundef %72)
  store <2 x i64> %call46, ptr %vacc0x23, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc1x01) #6
  %73 = load <2 x i64>, ptr %vacc1x0, align 16, !tbaa !13
  %74 = load <2 x i64>, ptr %vacc1x1, align 16, !tbaa !13
  %call47 = call <2 x i64> @_mm_hadd_epi32(<2 x i64> noundef %73, <2 x i64> noundef %74)
  store <2 x i64> %call47, ptr %vacc1x01, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc1x23) #6
  %75 = load <2 x i64>, ptr %vacc1x2, align 16, !tbaa !13
  %76 = load <2 x i64>, ptr %vacc1x3, align 16, !tbaa !13
  %call48 = call <2 x i64> @_mm_hadd_epi32(<2 x i64> noundef %75, <2 x i64> noundef %76)
  store <2 x i64> %call48, ptr %vacc1x23, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x0123) #6
  %77 = load <2 x i64>, ptr %vacc0x01, align 16, !tbaa !13
  %78 = load <2 x i64>, ptr %vacc0x23, align 16, !tbaa !13
  %call49 = call <2 x i64> @_mm_hadd_epi32(<2 x i64> noundef %77, <2 x i64> noundef %78)
  store <2 x i64> %call49, ptr %vacc0x0123, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc1x0123) #6
  %79 = load <2 x i64>, ptr %vacc1x01, align 16, !tbaa !13
  %80 = load <2 x i64>, ptr %vacc1x23, align 16, !tbaa !13
  %call50 = call <2 x i64> @_mm_hadd_epi32(<2 x i64> noundef %79, <2 x i64> noundef %80)
  store <2 x i64> %call50, ptr %vacc1x0123, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled0x0123) #6
  %81 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !13
  %call51 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %81)
  store <4 x float> %call51, ptr %vscaled0x0123, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled1x0123) #6
  %82 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !13
  %call52 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %82)
  store <4 x float> %call52, ptr %vscaled1x0123, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscale0123) #6
  %83 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %call53 = call <4 x float> @_mm_load_ps(ptr noundef %83)
  store <4 x float> %call53, ptr %vscale0123, align 16, !tbaa !13
  %84 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %add.ptr54 = getelementptr inbounds float, ptr %84, i64 4
  store ptr %add.ptr54, ptr %w.addr, align 8, !tbaa !8
  %85 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !13
  %86 = load <4 x float>, ptr %vscale0123, align 16, !tbaa !13
  %call55 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %85, <4 x float> noundef %86)
  store <4 x float> %call55, ptr %vscaled0x0123, align 16, !tbaa !13
  %87 = load <4 x float>, ptr %vscaled1x0123, align 16, !tbaa !13
  %88 = load <4 x float>, ptr %vscale0123, align 16, !tbaa !13
  %call56 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %87, <4 x float> noundef %88)
  store <4 x float> %call56, ptr %vscaled1x0123, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_max_less_zero_point) #6
  %89 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %output_max_less_zero_point = getelementptr inbounds %struct.anon.3, ptr %89, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x float], ptr %output_max_less_zero_point, i64 0, i64 0
  %call57 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay)
  store <4 x float> %call57, ptr %voutput_max_less_zero_point, align 16, !tbaa !13
  %90 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !13
  %91 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !13
  %call58 = call <4 x float> @_mm_min_ps(<4 x float> noundef %90, <4 x float> noundef %91)
  store <4 x float> %call58, ptr %vscaled0x0123, align 16, !tbaa !13
  %92 = load <4 x float>, ptr %vscaled1x0123, align 16, !tbaa !13
  %93 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !13
  %call59 = call <4 x float> @_mm_min_ps(<4 x float> noundef %92, <4 x float> noundef %93)
  store <4 x float> %call59, ptr %vscaled1x0123, align 16, !tbaa !13
  %94 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !13
  %call60 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %94)
  store <2 x i64> %call60, ptr %vacc0x0123, align 16, !tbaa !13
  %95 = load <4 x float>, ptr %vscaled1x0123, align 16, !tbaa !13
  %call61 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %95)
  store <2 x i64> %call61, ptr %vacc1x0123, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_zero_point) #6
  %96 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %output_zero_point = getelementptr inbounds %struct.anon.3, ptr %96, i32 0, i32 1
  %arraydecay62 = getelementptr inbounds [8 x i16], ptr %output_zero_point, i64 0, i64 0
  %call63 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay62)
  store <2 x i64> %call63, ptr %voutput_zero_point, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc01x0123) #6
  %97 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !13
  %98 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !13
  %call64 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %97, <2 x i64> noundef %98)
  %99 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !13
  %call65 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call64, <2 x i64> noundef %99)
  store <2 x i64> %call65, ptr %vacc01x0123, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout) #6
  %100 = load <2 x i64>, ptr %vacc01x0123, align 16, !tbaa !13
  %101 = load <2 x i64>, ptr %vacc01x0123, align 16, !tbaa !13
  %call66 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %100, <2 x i64> noundef %101)
  store <2 x i64> %call66, ptr %vout, align 16, !tbaa !13
  %102 = load <2 x i64>, ptr %vout, align 16, !tbaa !13
  %103 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %output_min = getelementptr inbounds %struct.anon.3, ptr %103, i32 0, i32 2
  %arraydecay67 = getelementptr inbounds [16 x i8], ptr %output_min, i64 0, i64 0
  %call68 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay67)
  %call69 = call <2 x i64> @_mm_max_epi8(<2 x i64> noundef %102, <2 x i64> noundef %call68)
  store <2 x i64> %call69, ptr %vout, align 16, !tbaa !13
  %104 = load i64, ptr %nc.addr, align 8, !tbaa !4
  %cmp70 = icmp uge i64 %104, 4
  br i1 %cmp70, label %if.then72, label %if.else

if.then72:                                        ; preds = %while.end
  %105 = load <2 x i64>, ptr %vout, align 16, !tbaa !13
  %call73 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %105)
  %106 = load ptr, ptr %c0, align 8, !tbaa !8
  store i32 %call73, ptr %106, align 4, !tbaa !11
  %107 = load <2 x i64>, ptr %vout, align 16, !tbaa !13
  %108 = bitcast <2 x i64> %107 to <4 x i32>
  %109 = extractelement <4 x i32> %108, i64 1
  %110 = load ptr, ptr %c1, align 8, !tbaa !8
  store i32 %109, ptr %110, align 4, !tbaa !11
  %111 = load ptr, ptr %c0, align 8, !tbaa !8
  %112 = ptrtoint ptr %111 to i64
  %113 = load i64, ptr %cn_stride.addr, align 8, !tbaa !4
  %add74 = add i64 %112, %113
  %114 = inttoptr i64 %add74 to ptr
  store ptr %114, ptr %c0, align 8, !tbaa !8
  %115 = load ptr, ptr %c1, align 8, !tbaa !8
  %116 = ptrtoint ptr %115 to i64
  %117 = load i64, ptr %cn_stride.addr, align 8, !tbaa !4
  %add75 = add i64 %116, %117
  %118 = inttoptr i64 %add75 to ptr
  store ptr %118, ptr %c1, align 8, !tbaa !8
  %119 = load ptr, ptr %a0, align 8, !tbaa !8
  %120 = ptrtoint ptr %119 to i64
  %121 = load i64, ptr %kc.addr, align 8, !tbaa !4
  %sub = sub i64 %120, %121
  %122 = inttoptr i64 %sub to ptr
  store ptr %122, ptr %a0, align 8, !tbaa !8
  %123 = load ptr, ptr %a1, align 8, !tbaa !8
  %124 = ptrtoint ptr %123 to i64
  %125 = load i64, ptr %kc.addr, align 8, !tbaa !4
  %sub76 = sub i64 %124, %125
  %126 = inttoptr i64 %sub76 to ptr
  store ptr %126, ptr %a1, align 8, !tbaa !8
  %127 = load i64, ptr %nc.addr, align 8, !tbaa !4
  %sub77 = sub i64 %127, 4
  store i64 %sub77, ptr %nc.addr, align 8, !tbaa !4
  br label %if.end96

if.else:                                          ; preds = %while.end
  %128 = load i64, ptr %nc.addr, align 8, !tbaa !4
  %and = and i64 %128, 2
  %tobool78 = icmp ne i64 %and, 0
  br i1 %tobool78, label %if.then79, label %if.end87

if.then79:                                        ; preds = %if.else
  %129 = load <2 x i64>, ptr %vout, align 16, !tbaa !13
  %130 = bitcast <2 x i64> %129 to <8 x i16>
  %131 = extractelement <8 x i16> %130, i64 0
  %conv80 = zext i16 %131 to i32
  %conv81 = trunc i32 %conv80 to i16
  %132 = load ptr, ptr %c0, align 8, !tbaa !8
  store i16 %conv81, ptr %132, align 2, !tbaa !14
  %133 = load ptr, ptr %c0, align 8, !tbaa !8
  %add.ptr82 = getelementptr inbounds i8, ptr %133, i64 2
  store ptr %add.ptr82, ptr %c0, align 8, !tbaa !8
  %134 = load <2 x i64>, ptr %vout, align 16, !tbaa !13
  %135 = bitcast <2 x i64> %134 to <8 x i16>
  %136 = extractelement <8 x i16> %135, i64 2
  %conv83 = zext i16 %136 to i32
  %conv84 = trunc i32 %conv83 to i16
  %137 = load ptr, ptr %c1, align 8, !tbaa !8
  store i16 %conv84, ptr %137, align 2, !tbaa !14
  %138 = load ptr, ptr %c1, align 8, !tbaa !8
  %add.ptr85 = getelementptr inbounds i8, ptr %138, i64 2
  store ptr %add.ptr85, ptr %c1, align 8, !tbaa !8
  %139 = load <2 x i64>, ptr %vout, align 16, !tbaa !13
  %call86 = call <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %139, i32 noundef 16)
  store <2 x i64> %call86, ptr %vout, align 16, !tbaa !13
  br label %if.end87

if.end87:                                         ; preds = %if.then79, %if.else
  %140 = load i64, ptr %nc.addr, align 8, !tbaa !4
  %and88 = and i64 %140, 1
  %tobool89 = icmp ne i64 %and88, 0
  br i1 %tobool89, label %if.then90, label %if.end95

if.then90:                                        ; preds = %if.end87
  %141 = load <2 x i64>, ptr %vout, align 16, !tbaa !13
  %142 = bitcast <2 x i64> %141 to <16 x i8>
  %143 = extractelement <16 x i8> %142, i64 0
  %conv91 = zext i8 %143 to i32
  %conv92 = trunc i32 %conv91 to i8
  %144 = load ptr, ptr %c0, align 8, !tbaa !8
  store i8 %conv92, ptr %144, align 1, !tbaa !13
  %145 = load <2 x i64>, ptr %vout, align 16, !tbaa !13
  %146 = bitcast <2 x i64> %145 to <16 x i8>
  %147 = extractelement <16 x i8> %146, i64 4
  %conv93 = zext i8 %147 to i32
  %conv94 = trunc i32 %conv93 to i8
  %148 = load ptr, ptr %c1, align 8, !tbaa !8
  store i8 %conv94, ptr %148, align 1, !tbaa !13
  br label %if.end95

if.end95:                                         ; preds = %if.then90, %if.end87
  store i64 0, ptr %nc.addr, align 8, !tbaa !4
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.then72
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc01x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_zero_point) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_max_less_zero_point) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscale0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled1x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled0x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc1x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc1x23) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc1x01) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x23) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x01) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc1x3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc1x2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc1x1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc1x0) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x0) #6
  br label %do.cond

do.cond:                                          ; preds = %if.end96
  %149 = load i64, ptr %nc.addr, align 8, !tbaa !4
  %cmp97 = icmp ne i64 %149, 0
  br i1 %cmp97, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
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
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store i64 %q, ptr %q.addr, align 8, !tbaa !4
  %0 = load i64, ptr %n.addr, align 8, !tbaa !4
  %1 = load i64, ptr %q.addr, align 8, !tbaa !4
  %add = add i64 %0, %1
  %sub = sub i64 %add, 1
  %2 = load i64, ptr %q.addr, align 8, !tbaa !4
  %call = call i64 @round_down_po2(i64 noundef %sub, i64 noundef %2)
  ret i64 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_cvtsi32_si128(i32 noundef %__a) #3 {
entry:
  %__a.addr = alloca i32, align 4
  %.compoundliteral = alloca <4 x i32>, align 16
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !11
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !11
  %vecinit = insertelement <4 x i32> undef, i32 %0, i32 0
  %vecinit1 = insertelement <4 x i32> %vecinit, i32 0, i32 1
  %vecinit2 = insertelement <4 x i32> %vecinit1, i32 0, i32 2
  %vecinit3 = insertelement <4 x i32> %vecinit2, i32 0, i32 3
  store <4 x i32> %vecinit3, ptr %.compoundliteral, align 16, !tbaa !13
  %1 = load <4 x i32>, ptr %.compoundliteral, align 16, !tbaa !13
  %2 = bitcast <4 x i32> %1 to <2 x i64>
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_loadl_epi64(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %.compoundliteral = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__u = getelementptr inbounds %struct.__mm_loadl_epi64_struct, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %__u, align 1, !tbaa !13
  %vecinit = insertelement <2 x i64> undef, i64 %1, i32 0
  %vecinit1 = insertelement <2 x i64> %vecinit, i64 0, i32 1
  store <2 x i64> %vecinit1, ptr %.compoundliteral, align 16, !tbaa !13
  %2 = load <2 x i64>, ptr %.compoundliteral, align 16, !tbaa !13
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %__V) #3 {
entry:
  %__V.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V, ptr %__V.addr, align 16, !tbaa !13
  %0 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !13
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !13
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %shuffle = shufflevector <16 x i8> %1, <16 x i8> %3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %conv = sext <8 x i8> %shuffle to <8 x i16>
  %4 = bitcast <8 x i16> %conv to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_load_si128(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %1 = load <2 x i64>, ptr %0, align 16, !tbaa !13
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %__a, i32 noundef %__count) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !13
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !13
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !11
  %3 = call <8 x i16> @llvm.x86.sse2.psrai.w(<8 x i16> %1, i32 %2)
  %4 = bitcast <8 x i16> %3 to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpackhi_epi8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !13
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !13
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !13
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !13
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
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !13
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !13
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !13
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !13
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
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !13
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !13
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !13
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !13
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %4 = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %1, <8 x i16> %3)
  %5 = bitcast <4 x i32> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_hadd_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !13
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !13
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !13
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !13
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %4 = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %1, <4 x i32> %3)
  %5 = bitcast <4 x i32> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %__a) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !13
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !13
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %conv = sitofp <4 x i32> %1 to <4 x float>
  ret <4 x float> %conv
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_load_ps(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %1 = load <4 x float>, ptr %0, align 16, !tbaa !13
  ret <4 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_mul_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !13
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !13
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !13
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !13
  %mul = fmul <4 x float> %0, %1
  ret <4 x float> %mul
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_min_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !13
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !13
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !13
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !13
  %2 = call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %0, <4 x float> %1)
  ret <4 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %__a) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !13
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !13
  %1 = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %0)
  %2 = bitcast <4 x i32> %1 to <2 x i64>
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !13
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !13
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !13
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !13
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
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !13
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !13
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !13
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !13
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %4 = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %1, <4 x i32> %3)
  %5 = bitcast <8 x i16> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !13
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !13
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !13
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !13
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %4 = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %1, <8 x i16> %3)
  %5 = bitcast <16 x i8> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_max_epi8(<2 x i64> noundef %__V1, <2 x i64> noundef %__V2) #3 {
entry:
  %__V1.addr = alloca <2 x i64>, align 16
  %__V2.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V1, ptr %__V1.addr, align 16, !tbaa !13
  store <2 x i64> %__V2, ptr %__V2.addr, align 16, !tbaa !13
  %0 = load <2 x i64>, ptr %__V1.addr, align 16, !tbaa !13
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__V2.addr, align 16, !tbaa !13
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %elt.max = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %1, <16 x i8> %3)
  %4 = bitcast <16 x i8> %elt.max to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @_mm_cvtsi128_si32(<2 x i64> noundef %__a) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b = alloca <4 x i32>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %__b) #6
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !13
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  store <4 x i32> %1, ptr %__b, align 16, !tbaa !13
  %2 = load <4 x i32>, ptr %__b, align 16, !tbaa !13
  %vecext = extractelement <4 x i32> %2, i32 0
  call void @llvm.lifetime.end.p0(i64 16, ptr %__b) #6
  ret i32 %vecext
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %__a, i32 noundef %__count) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !13
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !13
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !11
  %3 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %1, i32 %2)
  %4 = bitcast <4 x i32> %3 to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @round_down_po2(i64 noundef %n, i64 noundef %q) #1 {
entry:
  %n.addr = alloca i64, align 8
  %q.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store i64 %q, ptr %q.addr, align 8, !tbaa !4
  %0 = load i64, ptr %n.addr, align 8, !tbaa !4
  %1 = load i64, ptr %q.addr, align 8, !tbaa !4
  %sub = sub i64 0, %1
  %and = and i64 %0, %sub
  ret i64 %and
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.psrai.w(<8 x i16>, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.smax.v16i8(<16 x i8>, <16 x i8>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32>, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!10 = !{}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{!6, !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !6, i64 0}
