; ModuleID = 'samples/779.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qs8-igemm/gen/2x4c8-minmax-fp32-avx-ld128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.3 = type { [4 x float], [4 x float], [8 x i16], [16 x i8] }
%struct.__mm_loadl_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qs8_igemm_minmax_fp32_ukernel_2x4c8__avx_ld128(i64 noundef %mr, i64 noundef %nc, i64 noundef %kc, i64 noundef %ks, ptr noalias noundef %a, ptr noalias noundef %w, ptr noalias noundef %c, i64 noundef %cm_stride, i64 noundef %cn_stride, i64 noundef %a_offset, ptr noundef %zero, ptr noalias noundef align 64 dereferenceable(256) %params) #0 {
entry:
  %mr.addr = alloca i64, align 8
  %nc.addr = alloca i64, align 8
  %kc.addr = alloca i64, align 8
  %ks.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %w.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %cm_stride.addr = alloca i64, align 8
  %cn_stride.addr = alloca i64, align 8
  %a_offset.addr = alloca i64, align 8
  %zero.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %c0 = alloca ptr, align 8
  %c1 = alloca ptr, align 8
  %vacc0x0 = alloca <2 x i64>, align 16
  %vacc0x1 = alloca <2 x i64>, align 16
  %vacc0x2 = alloca <2 x i64>, align 16
  %vacc0x3 = alloca <2 x i64>, align 16
  %vacc1x0 = alloca <2 x i64>, align 16
  %vacc1x1 = alloca <2 x i64>, align 16
  %vacc1x2 = alloca <2 x i64>, align 16
  %vacc1x3 = alloca <2 x i64>, align 16
  %p = alloca i64, align 8
  %a0 = alloca ptr, align 8
  %a1 = alloca ptr, align 8
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
  %vscale = alloca <4 x float>, align 16
  %voutput_max_less_zero_point = alloca <4 x float>, align 16
  %voutput_zero_point = alloca <2 x i64>, align 16
  %vacc01x0123 = alloca <2 x i64>, align 16
  %vout = alloca <2 x i64>, align 16
  store i64 %mr, ptr %mr.addr, align 8, !tbaa !4
  store i64 %nc, ptr %nc.addr, align 8, !tbaa !4
  store i64 %kc, ptr %kc.addr, align 8, !tbaa !4
  store i64 %ks, ptr %ks.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !8
  store ptr %w, ptr %w.addr, align 8, !tbaa !8
  store ptr %c, ptr %c.addr, align 8, !tbaa !8
  store i64 %cm_stride, ptr %cm_stride.addr, align 8, !tbaa !4
  store i64 %cn_stride, ptr %cn_stride.addr, align 8, !tbaa !4
  store i64 %a_offset, ptr %a_offset.addr, align 8, !tbaa !4
  store ptr %zero, ptr %zero.addr, align 8, !tbaa !8
  store ptr %params, ptr %params.addr, align 8, !tbaa !8
  %0 = load i64, ptr %kc.addr, align 8, !tbaa !4
  %call = call i64 @round_up_po2(i64 noundef %0, i64 noundef 8)
  store i64 %call, ptr %kc.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %c0) #6
  %1 = load ptr, ptr %c.addr, align 8, !tbaa !8
  store ptr %1, ptr %c0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %c1) #6
  %2 = load ptr, ptr %c0, align 8, !tbaa !8
  %3 = ptrtoint ptr %2 to i64
  %4 = load i64, ptr %cm_stride.addr, align 8, !tbaa !4
  %add = add i64 %3, %4
  %5 = inttoptr i64 %add to ptr
  store ptr %5, ptr %c1, align 8, !tbaa !8
  %6 = load i64, ptr %mr.addr, align 8, !tbaa !4
  %cmp = icmp ne i64 %6, 2
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !10

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %c0, align 8, !tbaa !8
  store ptr %7, ptr %c1, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %do.cond124, %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x0) #6
  %8 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i32, ptr %8, i64 0
  %9 = load i32, ptr %arrayidx, align 4, !tbaa !11
  %call2 = call <2 x i64> @_mm_cvtsi32_si128(i32 noundef %9)
  store <2 x i64> %call2, ptr %vacc0x0, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x1) #6
  %10 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %arrayidx3 = getelementptr inbounds i32, ptr %10, i64 1
  %11 = load i32, ptr %arrayidx3, align 4, !tbaa !11
  %call4 = call <2 x i64> @_mm_cvtsi32_si128(i32 noundef %11)
  store <2 x i64> %call4, ptr %vacc0x1, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x2) #6
  %12 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %arrayidx5 = getelementptr inbounds i32, ptr %12, i64 2
  %13 = load i32, ptr %arrayidx5, align 4, !tbaa !11
  %call6 = call <2 x i64> @_mm_cvtsi32_si128(i32 noundef %13)
  store <2 x i64> %call6, ptr %vacc0x2, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x3) #6
  %14 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %arrayidx7 = getelementptr inbounds i32, ptr %14, i64 3
  %15 = load i32, ptr %arrayidx7, align 4, !tbaa !11
  %call8 = call <2 x i64> @_mm_cvtsi32_si128(i32 noundef %15)
  store <2 x i64> %call8, ptr %vacc0x3, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc1x0) #6
  %16 = load <2 x i64>, ptr %vacc0x0, align 16, !tbaa !13
  store <2 x i64> %16, ptr %vacc1x0, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc1x1) #6
  %17 = load <2 x i64>, ptr %vacc0x1, align 16, !tbaa !13
  store <2 x i64> %17, ptr %vacc1x1, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc1x2) #6
  %18 = load <2 x i64>, ptr %vacc0x2, align 16, !tbaa !13
  store <2 x i64> %18, ptr %vacc1x2, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc1x3) #6
  %19 = load <2 x i64>, ptr %vacc0x3, align 16, !tbaa !13
  store <2 x i64> %19, ptr %vacc1x3, align 16, !tbaa !13
  %20 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i32, ptr %20, i64 4
  store ptr %add.ptr, ptr %w.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6
  %21 = load i64, ptr %ks.addr, align 8, !tbaa !4
  store i64 %21, ptr %p, align 8, !tbaa !4
  br label %do.body9

do.body9:                                         ; preds = %do.cond, %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %a0) #6
  %22 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %arrayidx10 = getelementptr inbounds ptr, ptr %22, i64 0
  %23 = load ptr, ptr %arrayidx10, align 8, !tbaa !8
  store ptr %23, ptr %a0, align 8, !tbaa !8
  %24 = load ptr, ptr %a0, align 8, !tbaa !8
  %25 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp11 = icmp ne ptr %24, %25
  %lnot13 = xor i1 %cmp11, true
  %lnot15 = xor i1 %lnot13, true
  %lnot.ext16 = zext i1 %lnot15 to i32
  %conv17 = sext i32 %lnot.ext16 to i64
  %tobool18 = icmp ne i64 %conv17, 0
  br i1 %tobool18, label %if.then19, label %if.end21, !unpredictable !10

if.then19:                                        ; preds = %do.body9
  %26 = load ptr, ptr %a0, align 8, !tbaa !8
  %27 = ptrtoint ptr %26 to i64
  %28 = load i64, ptr %a_offset.addr, align 8, !tbaa !4
  %add20 = add i64 %27, %28
  %29 = inttoptr i64 %add20 to ptr
  store ptr %29, ptr %a0, align 8, !tbaa !8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %do.body9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1) #6
  %30 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %arrayidx22 = getelementptr inbounds ptr, ptr %30, i64 1
  %31 = load ptr, ptr %arrayidx22, align 8, !tbaa !8
  store ptr %31, ptr %a1, align 8, !tbaa !8
  %32 = load ptr, ptr %a1, align 8, !tbaa !8
  %33 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  %cmp23 = icmp ne ptr %32, %33
  %lnot25 = xor i1 %cmp23, true
  %lnot27 = xor i1 %lnot25, true
  %lnot.ext28 = zext i1 %lnot27 to i32
  %conv29 = sext i32 %lnot.ext28 to i64
  %tobool30 = icmp ne i64 %conv29, 0
  br i1 %tobool30, label %if.then31, label %if.end33, !unpredictable !10

if.then31:                                        ; preds = %if.end21
  %34 = load ptr, ptr %a1, align 8, !tbaa !8
  %35 = ptrtoint ptr %34 to i64
  %36 = load i64, ptr %a_offset.addr, align 8, !tbaa !4
  %add32 = add i64 %35, %36
  %37 = inttoptr i64 %add32 to ptr
  store ptr %37, ptr %a1, align 8, !tbaa !8
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end21
  %38 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %add.ptr34 = getelementptr inbounds ptr, ptr %38, i64 2
  store ptr %add.ptr34, ptr %a.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #6
  store i64 0, ptr %k, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end33
  %39 = load i64, ptr %k, align 8, !tbaa !4
  %40 = load i64, ptr %kc.addr, align 8, !tbaa !4
  %cmp35 = icmp ult i64 %39, %40
  br i1 %cmp35, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %va0) #6
  %41 = load ptr, ptr %a0, align 8, !tbaa !8
  %call37 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %41)
  store <2 x i64> %call37, ptr %va0, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxa0) #6
  %42 = load <2 x i64>, ptr %va0, align 16, !tbaa !13
  %call38 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %42)
  store <2 x i64> %call38, ptr %vxa0, align 16, !tbaa !13
  %43 = load ptr, ptr %a0, align 8, !tbaa !8
  %add.ptr39 = getelementptr inbounds i8, ptr %43, i64 8
  store ptr %add.ptr39, ptr %a0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %va1) #6
  %44 = load ptr, ptr %a1, align 8, !tbaa !8
  %call40 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %44)
  store <2 x i64> %call40, ptr %va1, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxa1) #6
  %45 = load <2 x i64>, ptr %va1, align 16, !tbaa !13
  %call41 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %45)
  store <2 x i64> %call41, ptr %vxa1, align 16, !tbaa !13
  %46 = load ptr, ptr %a1, align 8, !tbaa !8
  %add.ptr42 = getelementptr inbounds i8, ptr %46, i64 8
  store ptr %add.ptr42, ptr %a1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb01) #6
  %47 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %call43 = call <2 x i64> @_mm_load_si128(ptr noundef %47)
  store <2 x i64> %call43, ptr %vb01, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb0) #6
  %48 = load <2 x i64>, ptr %vb01, align 16, !tbaa !13
  %call44 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %48)
  store <2 x i64> %call44, ptr %vxb0, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb1) #6
  %49 = load <2 x i64>, ptr %vb01, align 16, !tbaa !13
  %50 = load <2 x i64>, ptr %vb01, align 16, !tbaa !13
  %call45 = call <2 x i64> @_mm_unpackhi_epi8(<2 x i64> noundef %49, <2 x i64> noundef %50)
  %call46 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call45, i32 noundef 8)
  store <2 x i64> %call46, ptr %vxb1, align 16, !tbaa !13
  %51 = load <2 x i64>, ptr %vacc0x0, align 16, !tbaa !13
  %52 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !13
  %53 = load <2 x i64>, ptr %vxb0, align 16, !tbaa !13
  %call47 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %52, <2 x i64> noundef %53)
  %call48 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %51, <2 x i64> noundef %call47)
  store <2 x i64> %call48, ptr %vacc0x0, align 16, !tbaa !13
  %54 = load <2 x i64>, ptr %vacc0x1, align 16, !tbaa !13
  %55 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !13
  %56 = load <2 x i64>, ptr %vxb1, align 16, !tbaa !13
  %call49 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %55, <2 x i64> noundef %56)
  %call50 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %54, <2 x i64> noundef %call49)
  store <2 x i64> %call50, ptr %vacc0x1, align 16, !tbaa !13
  %57 = load <2 x i64>, ptr %vacc1x0, align 16, !tbaa !13
  %58 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !13
  %59 = load <2 x i64>, ptr %vxb0, align 16, !tbaa !13
  %call51 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %58, <2 x i64> noundef %59)
  %call52 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %57, <2 x i64> noundef %call51)
  store <2 x i64> %call52, ptr %vacc1x0, align 16, !tbaa !13
  %60 = load <2 x i64>, ptr %vacc1x1, align 16, !tbaa !13
  %61 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !13
  %62 = load <2 x i64>, ptr %vxb1, align 16, !tbaa !13
  %call53 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %61, <2 x i64> noundef %62)
  %call54 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %60, <2 x i64> noundef %call53)
  store <2 x i64> %call54, ptr %vacc1x1, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb23) #6
  %63 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %add.ptr55 = getelementptr inbounds i8, ptr %63, i64 16
  %call56 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr55)
  store <2 x i64> %call56, ptr %vb23, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb2) #6
  %64 = load <2 x i64>, ptr %vb23, align 16, !tbaa !13
  %call57 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %64)
  store <2 x i64> %call57, ptr %vxb2, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb3) #6
  %65 = load <2 x i64>, ptr %vb23, align 16, !tbaa !13
  %66 = load <2 x i64>, ptr %vb23, align 16, !tbaa !13
  %call58 = call <2 x i64> @_mm_unpackhi_epi8(<2 x i64> noundef %65, <2 x i64> noundef %66)
  %call59 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call58, i32 noundef 8)
  store <2 x i64> %call59, ptr %vxb3, align 16, !tbaa !13
  %67 = load <2 x i64>, ptr %vacc0x2, align 16, !tbaa !13
  %68 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !13
  %69 = load <2 x i64>, ptr %vxb2, align 16, !tbaa !13
  %call60 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %68, <2 x i64> noundef %69)
  %call61 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %67, <2 x i64> noundef %call60)
  store <2 x i64> %call61, ptr %vacc0x2, align 16, !tbaa !13
  %70 = load <2 x i64>, ptr %vacc0x3, align 16, !tbaa !13
  %71 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !13
  %72 = load <2 x i64>, ptr %vxb3, align 16, !tbaa !13
  %call62 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %71, <2 x i64> noundef %72)
  %call63 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %70, <2 x i64> noundef %call62)
  store <2 x i64> %call63, ptr %vacc0x3, align 16, !tbaa !13
  %73 = load <2 x i64>, ptr %vacc1x2, align 16, !tbaa !13
  %74 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !13
  %75 = load <2 x i64>, ptr %vxb2, align 16, !tbaa !13
  %call64 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %74, <2 x i64> noundef %75)
  %call65 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %73, <2 x i64> noundef %call64)
  store <2 x i64> %call65, ptr %vacc1x2, align 16, !tbaa !13
  %76 = load <2 x i64>, ptr %vacc1x3, align 16, !tbaa !13
  %77 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !13
  %78 = load <2 x i64>, ptr %vxb3, align 16, !tbaa !13
  %call66 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %77, <2 x i64> noundef %78)
  %call67 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %76, <2 x i64> noundef %call66)
  store <2 x i64> %call67, ptr %vacc1x3, align 16, !tbaa !13
  %79 = load ptr, ptr %w.addr, align 8, !tbaa !8
  %add.ptr68 = getelementptr inbounds i8, ptr %79, i64 32
  store ptr %add.ptr68, ptr %w.addr, align 8, !tbaa !8
  %80 = load i64, ptr %k, align 8, !tbaa !4
  %add69 = add i64 %80, 8
  store i64 %add69, ptr %k, align 8, !tbaa !4
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
  %81 = load i64, ptr %p, align 8, !tbaa !4
  %sub = sub i64 %81, 16
  store i64 %sub, ptr %p, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a0) #6
  br label %do.cond

do.cond:                                          ; preds = %while.end
  %82 = load i64, ptr %p, align 8, !tbaa !4
  %cmp70 = icmp ne i64 %82, 0
  br i1 %cmp70, label %do.body9, label %do.end

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x01) #6
  %83 = load <2 x i64>, ptr %vacc0x0, align 16, !tbaa !13
  %84 = load <2 x i64>, ptr %vacc0x1, align 16, !tbaa !13
  %call72 = call <2 x i64> @_mm_hadd_epi32(<2 x i64> noundef %83, <2 x i64> noundef %84)
  store <2 x i64> %call72, ptr %vacc0x01, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x23) #6
  %85 = load <2 x i64>, ptr %vacc0x2, align 16, !tbaa !13
  %86 = load <2 x i64>, ptr %vacc0x3, align 16, !tbaa !13
  %call73 = call <2 x i64> @_mm_hadd_epi32(<2 x i64> noundef %85, <2 x i64> noundef %86)
  store <2 x i64> %call73, ptr %vacc0x23, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc1x01) #6
  %87 = load <2 x i64>, ptr %vacc1x0, align 16, !tbaa !13
  %88 = load <2 x i64>, ptr %vacc1x1, align 16, !tbaa !13
  %call74 = call <2 x i64> @_mm_hadd_epi32(<2 x i64> noundef %87, <2 x i64> noundef %88)
  store <2 x i64> %call74, ptr %vacc1x01, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc1x23) #6
  %89 = load <2 x i64>, ptr %vacc1x2, align 16, !tbaa !13
  %90 = load <2 x i64>, ptr %vacc1x3, align 16, !tbaa !13
  %call75 = call <2 x i64> @_mm_hadd_epi32(<2 x i64> noundef %89, <2 x i64> noundef %90)
  store <2 x i64> %call75, ptr %vacc1x23, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x0123) #6
  %91 = load <2 x i64>, ptr %vacc0x01, align 16, !tbaa !13
  %92 = load <2 x i64>, ptr %vacc0x23, align 16, !tbaa !13
  %call76 = call <2 x i64> @_mm_hadd_epi32(<2 x i64> noundef %91, <2 x i64> noundef %92)
  store <2 x i64> %call76, ptr %vacc0x0123, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc1x0123) #6
  %93 = load <2 x i64>, ptr %vacc1x01, align 16, !tbaa !13
  %94 = load <2 x i64>, ptr %vacc1x23, align 16, !tbaa !13
  %call77 = call <2 x i64> @_mm_hadd_epi32(<2 x i64> noundef %93, <2 x i64> noundef %94)
  store <2 x i64> %call77, ptr %vacc1x0123, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled0x0123) #6
  %95 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !13
  %call78 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %95)
  store <4 x float> %call78, ptr %vscaled0x0123, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled1x0123) #6
  %96 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !13
  %call79 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %96)
  store <4 x float> %call79, ptr %vscaled1x0123, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscale) #6
  %97 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %scale = getelementptr inbounds %struct.anon.3, ptr %97, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x float], ptr %scale, i64 0, i64 0
  %call80 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay)
  store <4 x float> %call80, ptr %vscale, align 16, !tbaa !13
  %98 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !13
  %99 = load <4 x float>, ptr %vscale, align 16, !tbaa !13
  %call81 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %98, <4 x float> noundef %99)
  store <4 x float> %call81, ptr %vscaled0x0123, align 16, !tbaa !13
  %100 = load <4 x float>, ptr %vscaled1x0123, align 16, !tbaa !13
  %101 = load <4 x float>, ptr %vscale, align 16, !tbaa !13
  %call82 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %100, <4 x float> noundef %101)
  store <4 x float> %call82, ptr %vscaled1x0123, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_max_less_zero_point) #6
  %102 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %output_max_less_zero_point = getelementptr inbounds %struct.anon.3, ptr %102, i32 0, i32 1
  %arraydecay83 = getelementptr inbounds [4 x float], ptr %output_max_less_zero_point, i64 0, i64 0
  %call84 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay83)
  store <4 x float> %call84, ptr %voutput_max_less_zero_point, align 16, !tbaa !13
  %103 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !13
  %104 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !13
  %call85 = call <4 x float> @_mm_min_ps(<4 x float> noundef %103, <4 x float> noundef %104)
  store <4 x float> %call85, ptr %vscaled0x0123, align 16, !tbaa !13
  %105 = load <4 x float>, ptr %vscaled1x0123, align 16, !tbaa !13
  %106 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !13
  %call86 = call <4 x float> @_mm_min_ps(<4 x float> noundef %105, <4 x float> noundef %106)
  store <4 x float> %call86, ptr %vscaled1x0123, align 16, !tbaa !13
  %107 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !13
  %call87 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %107)
  store <2 x i64> %call87, ptr %vacc0x0123, align 16, !tbaa !13
  %108 = load <4 x float>, ptr %vscaled1x0123, align 16, !tbaa !13
  %call88 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %108)
  store <2 x i64> %call88, ptr %vacc1x0123, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_zero_point) #6
  %109 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %output_zero_point = getelementptr inbounds %struct.anon.3, ptr %109, i32 0, i32 2
  %arraydecay89 = getelementptr inbounds [8 x i16], ptr %output_zero_point, i64 0, i64 0
  %call90 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay89)
  store <2 x i64> %call90, ptr %voutput_zero_point, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc01x0123) #6
  %110 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !13
  %111 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !13
  %call91 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %110, <2 x i64> noundef %111)
  %112 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !13
  %call92 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call91, <2 x i64> noundef %112)
  store <2 x i64> %call92, ptr %vacc01x0123, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout) #6
  %113 = load <2 x i64>, ptr %vacc01x0123, align 16, !tbaa !13
  %114 = load <2 x i64>, ptr %vacc01x0123, align 16, !tbaa !13
  %call93 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %113, <2 x i64> noundef %114)
  store <2 x i64> %call93, ptr %vout, align 16, !tbaa !13
  %115 = load <2 x i64>, ptr %vout, align 16, !tbaa !13
  %116 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %output_min = getelementptr inbounds %struct.anon.3, ptr %116, i32 0, i32 3
  %arraydecay94 = getelementptr inbounds [16 x i8], ptr %output_min, i64 0, i64 0
  %call95 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay94)
  %call96 = call <2 x i64> @_mm_max_epi8(<2 x i64> noundef %115, <2 x i64> noundef %call95)
  store <2 x i64> %call96, ptr %vout, align 16, !tbaa !13
  %117 = load i64, ptr %nc.addr, align 8, !tbaa !4
  %cmp97 = icmp uge i64 %117, 4
  br i1 %cmp97, label %if.then99, label %if.else

if.then99:                                        ; preds = %do.end
  %118 = load <2 x i64>, ptr %vout, align 16, !tbaa !13
  %119 = bitcast <2 x i64> %118 to <4 x i32>
  %120 = extractelement <4 x i32> %119, i64 1
  %121 = load ptr, ptr %c1, align 8, !tbaa !8
  store i32 %120, ptr %121, align 4, !tbaa !11
  %122 = load ptr, ptr %c1, align 8, !tbaa !8
  %123 = ptrtoint ptr %122 to i64
  %124 = load i64, ptr %cn_stride.addr, align 8, !tbaa !4
  %add100 = add i64 %123, %124
  %125 = inttoptr i64 %add100 to ptr
  store ptr %125, ptr %c1, align 8, !tbaa !8
  %126 = load <2 x i64>, ptr %vout, align 16, !tbaa !13
  %call101 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %126)
  %127 = load ptr, ptr %c0, align 8, !tbaa !8
  store i32 %call101, ptr %127, align 4, !tbaa !11
  %128 = load ptr, ptr %c0, align 8, !tbaa !8
  %129 = ptrtoint ptr %128 to i64
  %130 = load i64, ptr %cn_stride.addr, align 8, !tbaa !4
  %add102 = add i64 %129, %130
  %131 = inttoptr i64 %add102 to ptr
  store ptr %131, ptr %c0, align 8, !tbaa !8
  %132 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %133 = ptrtoint ptr %132 to i64
  %134 = load i64, ptr %ks.addr, align 8, !tbaa !4
  %sub103 = sub i64 %133, %134
  %135 = inttoptr i64 %sub103 to ptr
  store ptr %135, ptr %a.addr, align 8, !tbaa !8
  %136 = load i64, ptr %nc.addr, align 8, !tbaa !4
  %sub104 = sub i64 %136, 4
  store i64 %sub104, ptr %nc.addr, align 8, !tbaa !4
  br label %if.end123

if.else:                                          ; preds = %do.end
  %137 = load i64, ptr %nc.addr, align 8, !tbaa !4
  %and = and i64 %137, 2
  %tobool105 = icmp ne i64 %and, 0
  br i1 %tobool105, label %if.then106, label %if.end114

if.then106:                                       ; preds = %if.else
  %138 = load <2 x i64>, ptr %vout, align 16, !tbaa !13
  %139 = bitcast <2 x i64> %138 to <8 x i16>
  %140 = extractelement <8 x i16> %139, i64 2
  %conv107 = zext i16 %140 to i32
  %conv108 = trunc i32 %conv107 to i16
  %141 = load ptr, ptr %c1, align 8, !tbaa !8
  store i16 %conv108, ptr %141, align 2, !tbaa !14
  %142 = load ptr, ptr %c1, align 8, !tbaa !8
  %add.ptr109 = getelementptr inbounds i8, ptr %142, i64 2
  store ptr %add.ptr109, ptr %c1, align 8, !tbaa !8
  %143 = load <2 x i64>, ptr %vout, align 16, !tbaa !13
  %144 = bitcast <2 x i64> %143 to <8 x i16>
  %145 = extractelement <8 x i16> %144, i64 0
  %conv110 = zext i16 %145 to i32
  %conv111 = trunc i32 %conv110 to i16
  %146 = load ptr, ptr %c0, align 8, !tbaa !8
  store i16 %conv111, ptr %146, align 2, !tbaa !14
  %147 = load ptr, ptr %c0, align 8, !tbaa !8
  %add.ptr112 = getelementptr inbounds i8, ptr %147, i64 2
  store ptr %add.ptr112, ptr %c0, align 8, !tbaa !8
  %148 = load <2 x i64>, ptr %vout, align 16, !tbaa !13
  %call113 = call <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %148, i32 noundef 16)
  store <2 x i64> %call113, ptr %vout, align 16, !tbaa !13
  br label %if.end114

if.end114:                                        ; preds = %if.then106, %if.else
  %149 = load i64, ptr %nc.addr, align 8, !tbaa !4
  %and115 = and i64 %149, 1
  %tobool116 = icmp ne i64 %and115, 0
  br i1 %tobool116, label %if.then117, label %if.end122

if.then117:                                       ; preds = %if.end114
  %150 = load <2 x i64>, ptr %vout, align 16, !tbaa !13
  %151 = bitcast <2 x i64> %150 to <16 x i8>
  %152 = extractelement <16 x i8> %151, i64 4
  %conv118 = zext i8 %152 to i32
  %conv119 = trunc i32 %conv118 to i8
  %153 = load ptr, ptr %c1, align 8, !tbaa !8
  store i8 %conv119, ptr %153, align 1, !tbaa !13
  %154 = load <2 x i64>, ptr %vout, align 16, !tbaa !13
  %155 = bitcast <2 x i64> %154 to <16 x i8>
  %156 = extractelement <16 x i8> %155, i64 0
  %conv120 = zext i8 %156 to i32
  %conv121 = trunc i32 %conv120 to i8
  %157 = load ptr, ptr %c0, align 8, !tbaa !8
  store i8 %conv121, ptr %157, align 1, !tbaa !13
  br label %if.end122

if.end122:                                        ; preds = %if.then117, %if.end114
  store i64 0, ptr %nc.addr, align 8, !tbaa !4
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.then99
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc01x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_zero_point) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_max_less_zero_point) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscale) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled1x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled0x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc1x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc1x23) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc1x01) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x23) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x01) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc1x3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc1x2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc1x1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc1x0) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x0) #6
  br label %do.cond124

do.cond124:                                       ; preds = %if.end123
  %158 = load i64, ptr %nc.addr, align 8, !tbaa !4
  %cmp125 = icmp ne i64 %158, 0
  br i1 %cmp125, label %do.body, label %do.end127

do.end127:                                        ; preds = %do.cond124
  call void @llvm.lifetime.end.p0(i64 8, ptr %c1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c0) #6
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
