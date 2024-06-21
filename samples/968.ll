; ModuleID = 'samples/968.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qs8-igemm/gen/2x16c8-minmax-fp32-avx512skx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.5 = type { [16 x float], [16 x float], [32 x i16], [64 x i8] }
%struct.__mm_loadl_epi64_struct = type { i64 }
%struct.__storeu_si128 = type { <2 x i64> }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qs8_igemm_minmax_fp32_ukernel_2x16c8__avx512skx(i64 noundef %mr, i64 noundef %nc, i64 noundef %kc, i64 noundef %ks, ptr noalias noundef %a, ptr noalias noundef %w, ptr noalias noundef %c, i64 noundef %cm_stride, i64 noundef %cn_stride, i64 noundef %a_offset, ptr noundef %zero, ptr noalias noundef align 64 dereferenceable(256) %params) #0 {
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
  %vbias_mask = alloca i16, align 2
  %vscale = alloca <16 x float>, align 64
  %voutput_max_less_zero_point = alloca <16 x float>, align 64
  %voutput_zero_point = alloca <8 x i64>, align 64
  %voutput_min = alloca <4 x i64>, align 32
  %vacc0x0123 = alloca <8 x i64>, align 64
  %vacc0x4567 = alloca <8 x i64>, align 64
  %vacc0x89AB = alloca <8 x i64>, align 64
  %vacc0xCDEF = alloca <8 x i64>, align 64
  %vacc1x0123 = alloca <8 x i64>, align 64
  %vacc1x4567 = alloca <8 x i64>, align 64
  %vacc1x89AB = alloca <8 x i64>, align 64
  %vacc1xCDEF = alloca <8 x i64>, align 64
  %p = alloca i64, align 8
  %a0 = alloca ptr, align 8
  %a1 = alloca ptr, align 8
  %k = alloca i64, align 8
  %va0 = alloca <8 x i64>, align 64
  %va1 = alloca <8 x i64>, align 64
  %vb0123 = alloca <8 x i64>, align 64
  %vb4567 = alloca <8 x i64>, align 64
  %vb89AB = alloca <8 x i64>, align 64
  %vbCDEF = alloca <8 x i64>, align 64
  %vacc0x04152637 = alloca <8 x i64>, align 64
  %vacc0x8C9DAEBF = alloca <8 x i64>, align 64
  %vacc1x04152637 = alloca <8 x i64>, align 64
  %vacc1x8C9DAEBF = alloca <8 x i64>, align 64
  %vacc0x084C195D2A6E3B7F = alloca <8 x i64>, align 64
  %vacc1x084C195D2A6E3B7F = alloca <8 x i64>, align 64
  %vscaled0x084C195D2A6E3B7F = alloca <16 x float>, align 64
  %vscaled1x084C195D2A6E3B7F = alloca <16 x float>, align 64
  %vacc01x084Cx195Dx2A6Ex3B7F = alloca <8 x i64>, align 64
  %vout01x084Cx2A6Ex195Dx3B7F = alloca <4 x i64>, align 32
  %vout01x084C2A6E195D3B7F = alloca <4 x i64>, align 32
  %vout01x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vmask = alloca i64, align 8
  store i64 %mr, ptr %mr.addr, align 8, !tbaa !5
  store i64 %nc, ptr %nc.addr, align 8, !tbaa !5
  store i64 %kc, ptr %kc.addr, align 8, !tbaa !5
  store i64 %ks, ptr %ks.addr, align 8, !tbaa !5
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %w, ptr %w.addr, align 8, !tbaa !9
  store ptr %c, ptr %c.addr, align 8, !tbaa !9
  store i64 %cm_stride, ptr %cm_stride.addr, align 8, !tbaa !5
  store i64 %cn_stride, ptr %cn_stride.addr, align 8, !tbaa !5
  store i64 %a_offset, ptr %a_offset.addr, align 8, !tbaa !5
  store ptr %zero, ptr %zero.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  %0 = load i64, ptr %kc.addr, align 8, !tbaa !5
  %call = call i64 @round_up_po2(i64 noundef %0, i64 noundef 8)
  store i64 %call, ptr %kc.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %c0) #11
  %1 = load ptr, ptr %c.addr, align 8, !tbaa !9
  store ptr %1, ptr %c0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c1) #11
  %2 = load ptr, ptr %c0, align 8, !tbaa !9
  %3 = ptrtoint ptr %2 to i64
  %4 = load i64, ptr %cm_stride.addr, align 8, !tbaa !5
  %add = add i64 %3, %4
  %5 = inttoptr i64 %add to ptr
  store ptr %5, ptr %c1, align 8, !tbaa !9
  %6 = load i64, ptr %mr.addr, align 8, !tbaa !5
  %cmp = icmp ne i64 %6, 2
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !11

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %c0, align 8, !tbaa !9
  store ptr %7, ptr %c1, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr %vbias_mask) #11
  %call2 = call zeroext i16 @_cvtu32_mask16(i32 noundef 4369)
  store i16 %call2, ptr %vbias_mask, align 2, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 64, ptr %vscale) #11
  %8 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale = getelementptr inbounds %struct.anon.5, ptr %8, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x float], ptr %scale, i64 0, i64 0
  %call3 = call <16 x float> @_mm512_load_ps(ptr noundef %arraydecay)
  store <16 x float> %call3, ptr %vscale, align 64, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 64, ptr %voutput_max_less_zero_point) #11
  %9 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max_less_zero_point = getelementptr inbounds %struct.anon.5, ptr %9, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [16 x float], ptr %output_max_less_zero_point, i64 0, i64 0
  %call5 = call <16 x float> @_mm512_load_ps(ptr noundef %arraydecay4)
  store <16 x float> %call5, ptr %voutput_max_less_zero_point, align 64, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 64, ptr %voutput_zero_point) #11
  %10 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_zero_point = getelementptr inbounds %struct.anon.5, ptr %10, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [32 x i16], ptr %output_zero_point, i64 0, i64 0
  %call7 = call <8 x i64> @_mm512_load_si512(ptr noundef %arraydecay6)
  store <8 x i64> %call7, ptr %voutput_zero_point, align 64, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 32, ptr %voutput_min) #11
  %11 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min = getelementptr inbounds %struct.anon.5, ptr %11, i32 0, i32 3
  %arraydecay8 = getelementptr inbounds [64 x i8], ptr %output_min, i64 0, i64 0
  %call9 = call <4 x i64> @_mm256_load_si256(ptr noundef %arraydecay8)
  store <4 x i64> %call9, ptr %voutput_min, align 32, !tbaa !14
  br label %do.body

do.body:                                          ; preds = %do.cond136, %if.end
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc0x0123) #11
  %12 = load i16, ptr %vbias_mask, align 2, !tbaa !12
  %13 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call10 = call <8 x i64> @_mm512_maskz_expandloadu_epi32(i16 noundef zeroext %12, ptr noundef %13)
  store <8 x i64> %call10, ptr %vacc0x0123, align 64, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc0x4567) #11
  %14 = load i16, ptr %vbias_mask, align 2, !tbaa !12
  %15 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i32, ptr %15, i64 4
  %call11 = call <8 x i64> @_mm512_maskz_expandloadu_epi32(i16 noundef zeroext %14, ptr noundef %add.ptr)
  store <8 x i64> %call11, ptr %vacc0x4567, align 64, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc0x89AB) #11
  %16 = load i16, ptr %vbias_mask, align 2, !tbaa !12
  %17 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr12 = getelementptr inbounds i32, ptr %17, i64 8
  %call13 = call <8 x i64> @_mm512_maskz_expandloadu_epi32(i16 noundef zeroext %16, ptr noundef %add.ptr12)
  store <8 x i64> %call13, ptr %vacc0x89AB, align 64, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc0xCDEF) #11
  %18 = load i16, ptr %vbias_mask, align 2, !tbaa !12
  %19 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr14 = getelementptr inbounds i32, ptr %19, i64 12
  %call15 = call <8 x i64> @_mm512_maskz_expandloadu_epi32(i16 noundef zeroext %18, ptr noundef %add.ptr14)
  store <8 x i64> %call15, ptr %vacc0xCDEF, align 64, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc1x0123) #11
  %20 = load <8 x i64>, ptr %vacc0x0123, align 64, !tbaa !14
  store <8 x i64> %20, ptr %vacc1x0123, align 64, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc1x4567) #11
  %21 = load <8 x i64>, ptr %vacc0x4567, align 64, !tbaa !14
  store <8 x i64> %21, ptr %vacc1x4567, align 64, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc1x89AB) #11
  %22 = load <8 x i64>, ptr %vacc0x89AB, align 64, !tbaa !14
  store <8 x i64> %22, ptr %vacc1x89AB, align 64, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc1xCDEF) #11
  %23 = load <8 x i64>, ptr %vacc0xCDEF, align 64, !tbaa !14
  store <8 x i64> %23, ptr %vacc1xCDEF, align 64, !tbaa !14
  %24 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr16 = getelementptr inbounds i32, ptr %24, i64 16
  store ptr %add.ptr16, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11
  %25 = load i64, ptr %ks.addr, align 8, !tbaa !5
  store i64 %25, ptr %p, align 8, !tbaa !5
  br label %do.body17

do.body17:                                        ; preds = %do.cond, %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %a0) #11
  %26 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %26, i64 0
  %27 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  store ptr %27, ptr %a0, align 8, !tbaa !9
  %28 = load ptr, ptr %a0, align 8, !tbaa !9
  %29 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp18 = icmp ne ptr %28, %29
  %lnot20 = xor i1 %cmp18, true
  %lnot22 = xor i1 %lnot20, true
  %lnot.ext23 = zext i1 %lnot22 to i32
  %conv24 = sext i32 %lnot.ext23 to i64
  %tobool25 = icmp ne i64 %conv24, 0
  br i1 %tobool25, label %if.then26, label %if.end28, !unpredictable !11

if.then26:                                        ; preds = %do.body17
  %30 = load ptr, ptr %a0, align 8, !tbaa !9
  %31 = ptrtoint ptr %30 to i64
  %32 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add27 = add i64 %31, %32
  %33 = inttoptr i64 %add27 to ptr
  store ptr %33, ptr %a0, align 8, !tbaa !9
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %do.body17
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1) #11
  %34 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx29 = getelementptr inbounds ptr, ptr %34, i64 1
  %35 = load ptr, ptr %arrayidx29, align 8, !tbaa !9
  store ptr %35, ptr %a1, align 8, !tbaa !9
  %36 = load ptr, ptr %a1, align 8, !tbaa !9
  %37 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp30 = icmp ne ptr %36, %37
  %lnot32 = xor i1 %cmp30, true
  %lnot34 = xor i1 %lnot32, true
  %lnot.ext35 = zext i1 %lnot34 to i32
  %conv36 = sext i32 %lnot.ext35 to i64
  %tobool37 = icmp ne i64 %conv36, 0
  br i1 %tobool37, label %if.then38, label %if.end40, !unpredictable !11

if.then38:                                        ; preds = %if.end28
  %38 = load ptr, ptr %a1, align 8, !tbaa !9
  %39 = ptrtoint ptr %38 to i64
  %40 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add39 = add i64 %39, %40
  %41 = inttoptr i64 %add39 to ptr
  store ptr %41, ptr %a1, align 8, !tbaa !9
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end28
  %42 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %add.ptr41 = getelementptr inbounds ptr, ptr %42, i64 2
  store ptr %add.ptr41, ptr %a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #11
  store i64 0, ptr %k, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end40
  %43 = load i64, ptr %k, align 8, !tbaa !5
  %44 = load i64, ptr %kc.addr, align 8, !tbaa !5
  %cmp42 = icmp ult i64 %43, %44
  br i1 %cmp42, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 64, ptr %va0) #11
  %45 = load ptr, ptr %a0, align 8, !tbaa !9
  %call44 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %45)
  %call45 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call44)
  %call46 = call <8 x i64> @_mm512_broadcast_i32x4(<2 x i64> noundef %call45)
  store <8 x i64> %call46, ptr %va0, align 64, !tbaa !14
  %46 = load ptr, ptr %a0, align 8, !tbaa !9
  %add.ptr47 = getelementptr inbounds i8, ptr %46, i64 8
  store ptr %add.ptr47, ptr %a0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %va1) #11
  %47 = load ptr, ptr %a1, align 8, !tbaa !9
  %call48 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %47)
  %call49 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %call48)
  %call50 = call <8 x i64> @_mm512_broadcast_i32x4(<2 x i64> noundef %call49)
  store <8 x i64> %call50, ptr %va1, align 64, !tbaa !14
  %48 = load ptr, ptr %a1, align 8, !tbaa !9
  %add.ptr51 = getelementptr inbounds i8, ptr %48, i64 8
  store ptr %add.ptr51, ptr %a1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %vb0123) #11
  %49 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call52 = call <4 x i64> @_mm256_load_si256(ptr noundef %49)
  %call53 = call <8 x i64> @_mm512_cvtepi8_epi16(<4 x i64> noundef %call52)
  store <8 x i64> %call53, ptr %vb0123, align 64, !tbaa !14
  %50 = load <8 x i64>, ptr %vacc0x0123, align 64, !tbaa !14
  %51 = load <8 x i64>, ptr %va0, align 64, !tbaa !14
  %52 = load <8 x i64>, ptr %vb0123, align 64, !tbaa !14
  %call54 = call <8 x i64> @_mm512_madd_epi16(<8 x i64> noundef %51, <8 x i64> noundef %52)
  %call55 = call <8 x i64> @_mm512_add_epi32(<8 x i64> noundef %50, <8 x i64> noundef %call54)
  store <8 x i64> %call55, ptr %vacc0x0123, align 64, !tbaa !14
  %53 = load <8 x i64>, ptr %vacc1x0123, align 64, !tbaa !14
  %54 = load <8 x i64>, ptr %va1, align 64, !tbaa !14
  %55 = load <8 x i64>, ptr %vb0123, align 64, !tbaa !14
  %call56 = call <8 x i64> @_mm512_madd_epi16(<8 x i64> noundef %54, <8 x i64> noundef %55)
  %call57 = call <8 x i64> @_mm512_add_epi32(<8 x i64> noundef %53, <8 x i64> noundef %call56)
  store <8 x i64> %call57, ptr %vacc1x0123, align 64, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 64, ptr %vb4567) #11
  %56 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr58 = getelementptr inbounds i8, ptr %56, i64 32
  %call59 = call <4 x i64> @_mm256_load_si256(ptr noundef %add.ptr58)
  %call60 = call <8 x i64> @_mm512_cvtepi8_epi16(<4 x i64> noundef %call59)
  store <8 x i64> %call60, ptr %vb4567, align 64, !tbaa !14
  %57 = load <8 x i64>, ptr %vacc0x4567, align 64, !tbaa !14
  %58 = load <8 x i64>, ptr %va0, align 64, !tbaa !14
  %59 = load <8 x i64>, ptr %vb4567, align 64, !tbaa !14
  %call61 = call <8 x i64> @_mm512_madd_epi16(<8 x i64> noundef %58, <8 x i64> noundef %59)
  %call62 = call <8 x i64> @_mm512_add_epi32(<8 x i64> noundef %57, <8 x i64> noundef %call61)
  store <8 x i64> %call62, ptr %vacc0x4567, align 64, !tbaa !14
  %60 = load <8 x i64>, ptr %vacc1x4567, align 64, !tbaa !14
  %61 = load <8 x i64>, ptr %va1, align 64, !tbaa !14
  %62 = load <8 x i64>, ptr %vb4567, align 64, !tbaa !14
  %call63 = call <8 x i64> @_mm512_madd_epi16(<8 x i64> noundef %61, <8 x i64> noundef %62)
  %call64 = call <8 x i64> @_mm512_add_epi32(<8 x i64> noundef %60, <8 x i64> noundef %call63)
  store <8 x i64> %call64, ptr %vacc1x4567, align 64, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 64, ptr %vb89AB) #11
  %63 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr65 = getelementptr inbounds i8, ptr %63, i64 64
  %call66 = call <4 x i64> @_mm256_load_si256(ptr noundef %add.ptr65)
  %call67 = call <8 x i64> @_mm512_cvtepi8_epi16(<4 x i64> noundef %call66)
  store <8 x i64> %call67, ptr %vb89AB, align 64, !tbaa !14
  %64 = load <8 x i64>, ptr %vacc0x89AB, align 64, !tbaa !14
  %65 = load <8 x i64>, ptr %va0, align 64, !tbaa !14
  %66 = load <8 x i64>, ptr %vb89AB, align 64, !tbaa !14
  %call68 = call <8 x i64> @_mm512_madd_epi16(<8 x i64> noundef %65, <8 x i64> noundef %66)
  %call69 = call <8 x i64> @_mm512_add_epi32(<8 x i64> noundef %64, <8 x i64> noundef %call68)
  store <8 x i64> %call69, ptr %vacc0x89AB, align 64, !tbaa !14
  %67 = load <8 x i64>, ptr %vacc1x89AB, align 64, !tbaa !14
  %68 = load <8 x i64>, ptr %va1, align 64, !tbaa !14
  %69 = load <8 x i64>, ptr %vb89AB, align 64, !tbaa !14
  %call70 = call <8 x i64> @_mm512_madd_epi16(<8 x i64> noundef %68, <8 x i64> noundef %69)
  %call71 = call <8 x i64> @_mm512_add_epi32(<8 x i64> noundef %67, <8 x i64> noundef %call70)
  store <8 x i64> %call71, ptr %vacc1x89AB, align 64, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 64, ptr %vbCDEF) #11
  %70 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr72 = getelementptr inbounds i8, ptr %70, i64 96
  %call73 = call <4 x i64> @_mm256_load_si256(ptr noundef %add.ptr72)
  %call74 = call <8 x i64> @_mm512_cvtepi8_epi16(<4 x i64> noundef %call73)
  store <8 x i64> %call74, ptr %vbCDEF, align 64, !tbaa !14
  %71 = load <8 x i64>, ptr %vacc0xCDEF, align 64, !tbaa !14
  %72 = load <8 x i64>, ptr %va0, align 64, !tbaa !14
  %73 = load <8 x i64>, ptr %vbCDEF, align 64, !tbaa !14
  %call75 = call <8 x i64> @_mm512_madd_epi16(<8 x i64> noundef %72, <8 x i64> noundef %73)
  %call76 = call <8 x i64> @_mm512_add_epi32(<8 x i64> noundef %71, <8 x i64> noundef %call75)
  store <8 x i64> %call76, ptr %vacc0xCDEF, align 64, !tbaa !14
  %74 = load <8 x i64>, ptr %vacc1xCDEF, align 64, !tbaa !14
  %75 = load <8 x i64>, ptr %va1, align 64, !tbaa !14
  %76 = load <8 x i64>, ptr %vbCDEF, align 64, !tbaa !14
  %call77 = call <8 x i64> @_mm512_madd_epi16(<8 x i64> noundef %75, <8 x i64> noundef %76)
  %call78 = call <8 x i64> @_mm512_add_epi32(<8 x i64> noundef %74, <8 x i64> noundef %call77)
  store <8 x i64> %call78, ptr %vacc1xCDEF, align 64, !tbaa !14
  %77 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr79 = getelementptr inbounds i8, ptr %77, i64 128
  store ptr %add.ptr79, ptr %w.addr, align 8, !tbaa !9
  %78 = load i64, ptr %k, align 8, !tbaa !5
  %add80 = add i64 %78, 8
  store i64 %add80, ptr %k, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 64, ptr %vbCDEF) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr %vb89AB) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr %vb4567) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr %vb0123) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr %va1) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr %va0) #11
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %79 = load i64, ptr %p, align 8, !tbaa !5
  %sub = sub i64 %79, 16
  store i64 %sub, ptr %p, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %a0) #11
  br label %do.cond

do.cond:                                          ; preds = %while.end
  %80 = load i64, ptr %p, align 8, !tbaa !5
  %cmp81 = icmp ne i64 %80, 0
  br i1 %cmp81, label %do.body17, label %do.end, !llvm.loop !17

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc0x04152637) #11
  %81 = load <8 x i64>, ptr %vacc0x0123, align 64, !tbaa !14
  %82 = load <8 x i64>, ptr %vacc0x4567, align 64, !tbaa !14
  %call83 = call <8 x i64> @_mm512_unpacklo_epi32(<8 x i64> noundef %81, <8 x i64> noundef %82)
  %83 = load <8 x i64>, ptr %vacc0x0123, align 64, !tbaa !14
  %84 = load <8 x i64>, ptr %vacc0x4567, align 64, !tbaa !14
  %call84 = call <8 x i64> @_mm512_unpackhi_epi32(<8 x i64> noundef %83, <8 x i64> noundef %84)
  %call85 = call <8 x i64> @_mm512_add_epi32(<8 x i64> noundef %call83, <8 x i64> noundef %call84)
  store <8 x i64> %call85, ptr %vacc0x04152637, align 64, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc0x8C9DAEBF) #11
  %85 = load <8 x i64>, ptr %vacc0x89AB, align 64, !tbaa !14
  %86 = load <8 x i64>, ptr %vacc0xCDEF, align 64, !tbaa !14
  %call86 = call <8 x i64> @_mm512_unpacklo_epi32(<8 x i64> noundef %85, <8 x i64> noundef %86)
  %87 = load <8 x i64>, ptr %vacc0x89AB, align 64, !tbaa !14
  %88 = load <8 x i64>, ptr %vacc0xCDEF, align 64, !tbaa !14
  %call87 = call <8 x i64> @_mm512_unpackhi_epi32(<8 x i64> noundef %87, <8 x i64> noundef %88)
  %call88 = call <8 x i64> @_mm512_add_epi32(<8 x i64> noundef %call86, <8 x i64> noundef %call87)
  store <8 x i64> %call88, ptr %vacc0x8C9DAEBF, align 64, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc1x04152637) #11
  %89 = load <8 x i64>, ptr %vacc1x0123, align 64, !tbaa !14
  %90 = load <8 x i64>, ptr %vacc1x4567, align 64, !tbaa !14
  %call89 = call <8 x i64> @_mm512_unpacklo_epi32(<8 x i64> noundef %89, <8 x i64> noundef %90)
  %91 = load <8 x i64>, ptr %vacc1x0123, align 64, !tbaa !14
  %92 = load <8 x i64>, ptr %vacc1x4567, align 64, !tbaa !14
  %call90 = call <8 x i64> @_mm512_unpackhi_epi32(<8 x i64> noundef %91, <8 x i64> noundef %92)
  %call91 = call <8 x i64> @_mm512_add_epi32(<8 x i64> noundef %call89, <8 x i64> noundef %call90)
  store <8 x i64> %call91, ptr %vacc1x04152637, align 64, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc1x8C9DAEBF) #11
  %93 = load <8 x i64>, ptr %vacc1x89AB, align 64, !tbaa !14
  %94 = load <8 x i64>, ptr %vacc1xCDEF, align 64, !tbaa !14
  %call92 = call <8 x i64> @_mm512_unpacklo_epi32(<8 x i64> noundef %93, <8 x i64> noundef %94)
  %95 = load <8 x i64>, ptr %vacc1x89AB, align 64, !tbaa !14
  %96 = load <8 x i64>, ptr %vacc1xCDEF, align 64, !tbaa !14
  %call93 = call <8 x i64> @_mm512_unpackhi_epi32(<8 x i64> noundef %95, <8 x i64> noundef %96)
  %call94 = call <8 x i64> @_mm512_add_epi32(<8 x i64> noundef %call92, <8 x i64> noundef %call93)
  store <8 x i64> %call94, ptr %vacc1x8C9DAEBF, align 64, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc0x084C195D2A6E3B7F) #11
  %97 = load <8 x i64>, ptr %vacc0x04152637, align 64, !tbaa !14
  %98 = load <8 x i64>, ptr %vacc0x8C9DAEBF, align 64, !tbaa !14
  %call95 = call <8 x i64> @_mm512_unpacklo_epi32(<8 x i64> noundef %97, <8 x i64> noundef %98)
  %99 = load <8 x i64>, ptr %vacc0x04152637, align 64, !tbaa !14
  %100 = load <8 x i64>, ptr %vacc0x8C9DAEBF, align 64, !tbaa !14
  %call96 = call <8 x i64> @_mm512_unpackhi_epi32(<8 x i64> noundef %99, <8 x i64> noundef %100)
  %call97 = call <8 x i64> @_mm512_add_epi32(<8 x i64> noundef %call95, <8 x i64> noundef %call96)
  store <8 x i64> %call97, ptr %vacc0x084C195D2A6E3B7F, align 64, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc1x084C195D2A6E3B7F) #11
  %101 = load <8 x i64>, ptr %vacc1x04152637, align 64, !tbaa !14
  %102 = load <8 x i64>, ptr %vacc1x8C9DAEBF, align 64, !tbaa !14
  %call98 = call <8 x i64> @_mm512_unpacklo_epi32(<8 x i64> noundef %101, <8 x i64> noundef %102)
  %103 = load <8 x i64>, ptr %vacc1x04152637, align 64, !tbaa !14
  %104 = load <8 x i64>, ptr %vacc1x8C9DAEBF, align 64, !tbaa !14
  %call99 = call <8 x i64> @_mm512_unpackhi_epi32(<8 x i64> noundef %103, <8 x i64> noundef %104)
  %call100 = call <8 x i64> @_mm512_add_epi32(<8 x i64> noundef %call98, <8 x i64> noundef %call99)
  store <8 x i64> %call100, ptr %vacc1x084C195D2A6E3B7F, align 64, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 64, ptr %vscaled0x084C195D2A6E3B7F) #11
  %105 = load <8 x i64>, ptr %vacc0x084C195D2A6E3B7F, align 64, !tbaa !14
  %call101 = call <16 x float> @_mm512_cvtepi32_ps(<8 x i64> noundef %105)
  store <16 x float> %call101, ptr %vscaled0x084C195D2A6E3B7F, align 64, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 64, ptr %vscaled1x084C195D2A6E3B7F) #11
  %106 = load <8 x i64>, ptr %vacc1x084C195D2A6E3B7F, align 64, !tbaa !14
  %call102 = call <16 x float> @_mm512_cvtepi32_ps(<8 x i64> noundef %106)
  store <16 x float> %call102, ptr %vscaled1x084C195D2A6E3B7F, align 64, !tbaa !14
  %107 = load <16 x float>, ptr %vscaled0x084C195D2A6E3B7F, align 64, !tbaa !14
  %108 = load <16 x float>, ptr %vscale, align 64, !tbaa !14
  %call103 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %107, <16 x float> noundef %108)
  store <16 x float> %call103, ptr %vscaled0x084C195D2A6E3B7F, align 64, !tbaa !14
  %109 = load <16 x float>, ptr %vscaled1x084C195D2A6E3B7F, align 64, !tbaa !14
  %110 = load <16 x float>, ptr %vscale, align 64, !tbaa !14
  %call104 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %109, <16 x float> noundef %110)
  store <16 x float> %call104, ptr %vscaled1x084C195D2A6E3B7F, align 64, !tbaa !14
  %111 = load <16 x float>, ptr %vscaled0x084C195D2A6E3B7F, align 64, !tbaa !14
  %112 = load <16 x float>, ptr %voutput_max_less_zero_point, align 64, !tbaa !14
  %call105 = call <16 x float> @_mm512_min_ps(<16 x float> noundef %111, <16 x float> noundef %112)
  store <16 x float> %call105, ptr %vscaled0x084C195D2A6E3B7F, align 64, !tbaa !14
  %113 = load <16 x float>, ptr %vscaled1x084C195D2A6E3B7F, align 64, !tbaa !14
  %114 = load <16 x float>, ptr %voutput_max_less_zero_point, align 64, !tbaa !14
  %call106 = call <16 x float> @_mm512_min_ps(<16 x float> noundef %113, <16 x float> noundef %114)
  store <16 x float> %call106, ptr %vscaled1x084C195D2A6E3B7F, align 64, !tbaa !14
  %115 = load <16 x float>, ptr %vscaled0x084C195D2A6E3B7F, align 64, !tbaa !14
  %call107 = call <8 x i64> @_mm512_cvtps_epi32(<16 x float> noundef %115)
  store <8 x i64> %call107, ptr %vacc0x084C195D2A6E3B7F, align 64, !tbaa !14
  %116 = load <16 x float>, ptr %vscaled1x084C195D2A6E3B7F, align 64, !tbaa !14
  %call108 = call <8 x i64> @_mm512_cvtps_epi32(<16 x float> noundef %116)
  store <8 x i64> %call108, ptr %vacc1x084C195D2A6E3B7F, align 64, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc01x084Cx195Dx2A6Ex3B7F) #11
  %117 = load <8 x i64>, ptr %vacc0x084C195D2A6E3B7F, align 64, !tbaa !14
  %118 = load <8 x i64>, ptr %vacc1x084C195D2A6E3B7F, align 64, !tbaa !14
  %call109 = call <8 x i64> @_mm512_packs_epi32(<8 x i64> noundef %117, <8 x i64> noundef %118)
  %119 = load <8 x i64>, ptr %voutput_zero_point, align 64, !tbaa !14
  %call110 = call <8 x i64> @_mm512_adds_epi16(<8 x i64> noundef %call109, <8 x i64> noundef %119)
  store <8 x i64> %call110, ptr %vacc01x084Cx195Dx2A6Ex3B7F, align 64, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 32, ptr %vout01x084Cx2A6Ex195Dx3B7F) #11
  %120 = load <8 x i64>, ptr %vacc01x084Cx195Dx2A6Ex3B7F, align 64, !tbaa !14
  %call111 = call <4 x i64> @_mm512_castsi512_si256(<8 x i64> noundef %120)
  %121 = load <8 x i64>, ptr %vacc01x084Cx195Dx2A6Ex3B7F, align 64, !tbaa !14
  %122 = bitcast <8 x i64> %121 to <16 x i32>
  %call112 = call <4 x i64> @_mm256_undefined_si256()
  %123 = bitcast <4 x i64> %call112 to <8 x i32>
  %extract = shufflevector <16 x i32> %122, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %124 = bitcast <8 x i32> %extract to <4 x i64>
  %call113 = call <4 x i64> @_mm256_packs_epi16(<4 x i64> noundef %call111, <4 x i64> noundef %124)
  store <4 x i64> %call113, ptr %vout01x084Cx2A6Ex195Dx3B7F, align 32, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 32, ptr %vout01x084C2A6E195D3B7F) #11
  %125 = load <4 x i64>, ptr %vout01x084Cx2A6Ex195Dx3B7F, align 32, !tbaa !14
  %call114 = call <4 x i64> @_mm256_set_epi32(i32 noundef 7, i32 noundef 5, i32 noundef 3, i32 noundef 1, i32 noundef 6, i32 noundef 4, i32 noundef 2, i32 noundef 0)
  %call115 = call <4 x i64> @_mm256_permutevar8x32_epi32(<4 x i64> noundef %125, <4 x i64> noundef %call114)
  store <4 x i64> %call115, ptr %vout01x084C2A6E195D3B7F, align 32, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 32, ptr %vout01x0123456789ABCDEF) #11
  %126 = load <4 x i64>, ptr %vout01x084C2A6E195D3B7F, align 32, !tbaa !14
  %call116 = call <4 x i64> @_mm256_set_epi8(i8 noundef signext 15, i8 noundef signext 7, i8 noundef signext 11, i8 noundef signext 3, i8 noundef signext 13, i8 noundef signext 5, i8 noundef signext 9, i8 noundef signext 1, i8 noundef signext 14, i8 noundef signext 6, i8 noundef signext 10, i8 noundef signext 2, i8 noundef signext 12, i8 noundef signext 4, i8 noundef signext 8, i8 noundef signext 0, i8 noundef signext 15, i8 noundef signext 7, i8 noundef signext 11, i8 noundef signext 3, i8 noundef signext 13, i8 noundef signext 5, i8 noundef signext 9, i8 noundef signext 1, i8 noundef signext 14, i8 noundef signext 6, i8 noundef signext 10, i8 noundef signext 2, i8 noundef signext 12, i8 noundef signext 4, i8 noundef signext 8, i8 noundef signext 0)
  %call117 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %126, <4 x i64> noundef %call116)
  store <4 x i64> %call117, ptr %vout01x0123456789ABCDEF, align 32, !tbaa !14
  %127 = load <4 x i64>, ptr %vout01x0123456789ABCDEF, align 32, !tbaa !14
  %128 = load <4 x i64>, ptr %voutput_min, align 32, !tbaa !14
  %call118 = call <4 x i64> @_mm256_max_epi8(<4 x i64> noundef %127, <4 x i64> noundef %128)
  store <4 x i64> %call118, ptr %vout01x0123456789ABCDEF, align 32, !tbaa !14
  %129 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp119 = icmp uge i64 %129, 16
  br i1 %cmp119, label %if.then121, label %if.else

if.then121:                                       ; preds = %do.end
  %130 = load ptr, ptr %c1, align 8, !tbaa !9
  %131 = load <4 x i64>, ptr %vout01x0123456789ABCDEF, align 32, !tbaa !14
  %extract122 = shufflevector <4 x i64> %131, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  call void @_mm_storeu_si128(ptr noundef %130, <2 x i64> noundef %extract122)
  %132 = load ptr, ptr %c0, align 8, !tbaa !9
  %133 = load <4 x i64>, ptr %vout01x0123456789ABCDEF, align 32, !tbaa !14
  %call123 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %133)
  call void @_mm_storeu_si128(ptr noundef %132, <2 x i64> noundef %call123)
  %134 = load ptr, ptr %c1, align 8, !tbaa !9
  %135 = ptrtoint ptr %134 to i64
  %136 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add124 = add i64 %135, %136
  %137 = inttoptr i64 %add124 to ptr
  store ptr %137, ptr %c1, align 8, !tbaa !9
  %138 = load ptr, ptr %c0, align 8, !tbaa !9
  %139 = ptrtoint ptr %138 to i64
  %140 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add125 = add i64 %139, %140
  %141 = inttoptr i64 %add125 to ptr
  store ptr %141, ptr %c0, align 8, !tbaa !9
  %142 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %143 = ptrtoint ptr %142 to i64
  %144 = load i64, ptr %ks.addr, align 8, !tbaa !5
  %sub126 = sub i64 %143, %144
  %145 = inttoptr i64 %sub126 to ptr
  store ptr %145, ptr %a.addr, align 8, !tbaa !9
  %146 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %sub127 = sub i64 %146, 16
  store i64 %sub127, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end135

if.else:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %vmask) #11
  %147 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %add128 = add i64 %147, 16
  %sh_prom = trunc i64 %add128 to i32
  %shl = shl i32 1, %sh_prom
  %sub129 = sub i32 %shl, 65536
  %conv130 = zext i32 %sub129 to i64
  %call131 = call i64 @_cvtu64_mask64(i64 noundef %conv130)
  store i64 %call131, ptr %vmask, align 8, !tbaa !18
  %148 = load ptr, ptr %c1, align 8, !tbaa !9
  %add.ptr132 = getelementptr inbounds i8, ptr %148, i64 -16
  %149 = load i64, ptr %vmask, align 8, !tbaa !18
  %conv133 = trunc i64 %149 to i32
  %150 = load <4 x i64>, ptr %vout01x0123456789ABCDEF, align 32, !tbaa !14
  call void @_mm256_mask_storeu_epi8(ptr noundef %add.ptr132, i32 noundef %conv133, <4 x i64> noundef %150)
  %151 = load i64, ptr %vmask, align 8, !tbaa !18
  %152 = bitcast i64 %151 to <64 x i1>
  %kshiftr = shufflevector <64 x i1> %152, <64 x i1> zeroinitializer, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79>
  %153 = bitcast <64 x i1> %kshiftr to i64
  store i64 %153, ptr %vmask, align 8, !tbaa !18
  %154 = load ptr, ptr %c0, align 8, !tbaa !9
  %155 = load i64, ptr %vmask, align 8, !tbaa !18
  %conv134 = trunc i64 %155 to i32
  %156 = load <4 x i64>, ptr %vout01x0123456789ABCDEF, align 32, !tbaa !14
  call void @_mm256_mask_storeu_epi8(ptr noundef %154, i32 noundef %conv134, <4 x i64> noundef %156)
  store i64 0, ptr %nc.addr, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %vmask) #11
  br label %if.end135

if.end135:                                        ; preds = %if.else, %if.then121
  call void @llvm.lifetime.end.p0(i64 32, ptr %vout01x0123456789ABCDEF) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr %vout01x084C2A6E195D3B7F) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr %vout01x084Cx2A6Ex195Dx3B7F) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc01x084Cx195Dx2A6Ex3B7F) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr %vscaled1x084C195D2A6E3B7F) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr %vscaled0x084C195D2A6E3B7F) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc1x084C195D2A6E3B7F) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc0x084C195D2A6E3B7F) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc1x8C9DAEBF) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc1x04152637) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc0x8C9DAEBF) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc0x04152637) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc1xCDEF) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc1x89AB) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc1x4567) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc1x0123) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc0xCDEF) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc0x89AB) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc0x4567) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc0x0123) #11
  br label %do.cond136

do.cond136:                                       ; preds = %if.end135
  %157 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp137 = icmp ne i64 %157, 0
  br i1 %cmp137, label %do.body, label %do.end139, !llvm.loop !20

do.end139:                                        ; preds = %do.cond136
  call void @llvm.lifetime.end.p0(i64 32, ptr %voutput_min) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr %voutput_zero_point) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr %voutput_max_less_zero_point) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr %vscale) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr %vbias_mask) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %c1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %c0) #11
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
define internal zeroext i16 @_cvtu32_mask16(i32 noundef %__A) #3 {
entry:
  %__A.addr = alloca i32, align 4
  store i32 %__A, ptr %__A.addr, align 4, !tbaa !21
  %0 = load i32, ptr %__A.addr, align 4, !tbaa !21
  %conv = trunc i32 %0 to i16
  %1 = bitcast i16 %conv to <16 x i1>
  %2 = bitcast <16 x i1> %1 to i16
  ret i16 %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_load_ps(ptr noundef %__p) #4 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <16 x float>, ptr %0, align 64, !tbaa !14
  ret <16 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @_mm512_load_si512(ptr noundef %__P) #4 {
entry:
  %__P.addr = alloca ptr, align 8
  store ptr %__P, ptr %__P.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__P.addr, align 8, !tbaa !9
  %1 = load <8 x i64>, ptr %0, align 64, !tbaa !14
  ret <8 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_load_si256(ptr noundef %__p) #5 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <4 x i64>, ptr %0, align 32, !tbaa !14
  ret <4 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @_mm512_maskz_expandloadu_epi32(i16 noundef zeroext %__U, ptr noundef %__P) #4 {
entry:
  %__U.addr = alloca i16, align 2
  %__P.addr = alloca ptr, align 8
  store i16 %__U, ptr %__U.addr, align 2, !tbaa !12
  store ptr %__P, ptr %__P.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__P.addr, align 8, !tbaa !9
  %call = call <8 x i64> @_mm512_setzero_si512()
  %1 = bitcast <8 x i64> %call to <16 x i32>
  %2 = load i16, ptr %__U.addr, align 2, !tbaa !12
  %3 = bitcast i16 %2 to <16 x i1>
  %4 = call <16 x i32> @llvm.masked.expandload.v16i32(ptr %0, <16 x i1> %3, <16 x i32> %1)
  %5 = bitcast <16 x i32> %4 to <8 x i64>
  ret <8 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @_mm512_broadcast_i32x4(<2 x i64> noundef %__A) #4 {
entry:
  %__A.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__A, ptr %__A.addr, align 16, !tbaa !14
  %0 = load <2 x i64>, ptr %__A.addr, align 16, !tbaa !14
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__A.addr, align 16, !tbaa !14
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %shuffle = shufflevector <4 x i32> %1, <4 x i32> %3, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %4 = bitcast <16 x i32> %shuffle to <8 x i64>
  ret <8 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %__V) #6 {
entry:
  %__V.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V, ptr %__V.addr, align 16, !tbaa !14
  %0 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !14
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !14
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %shuffle = shufflevector <16 x i8> %1, <16 x i8> %3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %conv = sext <8 x i8> %shuffle to <8 x i16>
  %4 = bitcast <8 x i16> %conv to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_loadl_epi64(ptr noundef %__p) #6 {
entry:
  %__p.addr = alloca ptr, align 8
  %.compoundliteral = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u = getelementptr inbounds %struct.__mm_loadl_epi64_struct, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %__u, align 1, !tbaa !14
  %vecinit = insertelement <2 x i64> undef, i64 %1, i32 0
  %vecinit1 = insertelement <2 x i64> %vecinit, i64 0, i32 1
  store <2 x i64> %vecinit1, ptr %.compoundliteral, align 16, !tbaa !14
  %2 = load <2 x i64>, ptr %.compoundliteral, align 16, !tbaa !14
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @_mm512_cvtepi8_epi16(<4 x i64> noundef %__A) #4 {
entry:
  %__A.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__A, ptr %__A.addr, align 32, !tbaa !14
  %0 = load <4 x i64>, ptr %__A.addr, align 32, !tbaa !14
  %1 = bitcast <4 x i64> %0 to <32 x i8>
  %conv = sext <32 x i8> %1 to <32 x i16>
  %2 = bitcast <32 x i16> %conv to <8 x i64>
  ret <8 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @_mm512_add_epi32(<8 x i64> noundef %__A, <8 x i64> noundef %__B) #4 {
entry:
  %__A.addr = alloca <8 x i64>, align 64
  %__B.addr = alloca <8 x i64>, align 64
  store <8 x i64> %__A, ptr %__A.addr, align 64, !tbaa !14
  store <8 x i64> %__B, ptr %__B.addr, align 64, !tbaa !14
  %0 = load <8 x i64>, ptr %__A.addr, align 64, !tbaa !14
  %1 = bitcast <8 x i64> %0 to <16 x i32>
  %2 = load <8 x i64>, ptr %__B.addr, align 64, !tbaa !14
  %3 = bitcast <8 x i64> %2 to <16 x i32>
  %add = add <16 x i32> %1, %3
  %4 = bitcast <16 x i32> %add to <8 x i64>
  ret <8 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @_mm512_madd_epi16(<8 x i64> noundef %__A, <8 x i64> noundef %__B) #4 {
entry:
  %__A.addr = alloca <8 x i64>, align 64
  %__B.addr = alloca <8 x i64>, align 64
  store <8 x i64> %__A, ptr %__A.addr, align 64, !tbaa !14
  store <8 x i64> %__B, ptr %__B.addr, align 64, !tbaa !14
  %0 = load <8 x i64>, ptr %__A.addr, align 64, !tbaa !14
  %1 = bitcast <8 x i64> %0 to <32 x i16>
  %2 = load <8 x i64>, ptr %__B.addr, align 64, !tbaa !14
  %3 = bitcast <8 x i64> %2 to <32 x i16>
  %4 = call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %1, <32 x i16> %3)
  %5 = bitcast <16 x i32> %4 to <8 x i64>
  ret <8 x i64> %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @_mm512_unpacklo_epi32(<8 x i64> noundef %__A, <8 x i64> noundef %__B) #4 {
entry:
  %__A.addr = alloca <8 x i64>, align 64
  %__B.addr = alloca <8 x i64>, align 64
  store <8 x i64> %__A, ptr %__A.addr, align 64, !tbaa !14
  store <8 x i64> %__B, ptr %__B.addr, align 64, !tbaa !14
  %0 = load <8 x i64>, ptr %__A.addr, align 64, !tbaa !14
  %1 = bitcast <8 x i64> %0 to <16 x i32>
  %2 = load <8 x i64>, ptr %__B.addr, align 64, !tbaa !14
  %3 = bitcast <8 x i64> %2 to <16 x i32>
  %shuffle = shufflevector <16 x i32> %1, <16 x i32> %3, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29>
  %4 = bitcast <16 x i32> %shuffle to <8 x i64>
  ret <8 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @_mm512_unpackhi_epi32(<8 x i64> noundef %__A, <8 x i64> noundef %__B) #4 {
entry:
  %__A.addr = alloca <8 x i64>, align 64
  %__B.addr = alloca <8 x i64>, align 64
  store <8 x i64> %__A, ptr %__A.addr, align 64, !tbaa !14
  store <8 x i64> %__B, ptr %__B.addr, align 64, !tbaa !14
  %0 = load <8 x i64>, ptr %__A.addr, align 64, !tbaa !14
  %1 = bitcast <8 x i64> %0 to <16 x i32>
  %2 = load <8 x i64>, ptr %__B.addr, align 64, !tbaa !14
  %3 = bitcast <8 x i64> %2 to <16 x i32>
  %shuffle = shufflevector <16 x i32> %1, <16 x i32> %3, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31>
  %4 = bitcast <16 x i32> %shuffle to <8 x i64>
  ret <8 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_cvtepi32_ps(<8 x i64> noundef %__A) #4 {
entry:
  %__A.addr = alloca <8 x i64>, align 64
  store <8 x i64> %__A, ptr %__A.addr, align 64, !tbaa !14
  %0 = load <8 x i64>, ptr %__A.addr, align 64, !tbaa !14
  %1 = bitcast <8 x i64> %0 to <16 x i32>
  %conv = sitofp <16 x i32> %1 to <16 x float>
  ret <16 x float> %conv
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_mul_ps(<16 x float> noundef %__a, <16 x float> noundef %__b) #4 {
entry:
  %__a.addr = alloca <16 x float>, align 64
  %__b.addr = alloca <16 x float>, align 64
  store <16 x float> %__a, ptr %__a.addr, align 64, !tbaa !14
  store <16 x float> %__b, ptr %__b.addr, align 64, !tbaa !14
  %0 = load <16 x float>, ptr %__a.addr, align 64, !tbaa !14
  %1 = load <16 x float>, ptr %__b.addr, align 64, !tbaa !14
  %mul = fmul <16 x float> %0, %1
  ret <16 x float> %mul
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_min_ps(<16 x float> noundef %__A, <16 x float> noundef %__B) #4 {
entry:
  %__A.addr = alloca <16 x float>, align 64
  %__B.addr = alloca <16 x float>, align 64
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !14
  store <16 x float> %__B, ptr %__B.addr, align 64, !tbaa !14
  %0 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !14
  %1 = load <16 x float>, ptr %__B.addr, align 64, !tbaa !14
  %2 = call <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %0, <16 x float> %1, i32 4)
  ret <16 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @_mm512_cvtps_epi32(<16 x float> noundef %__A) #4 {
entry:
  %__A.addr = alloca <16 x float>, align 64
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !14
  %0 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !14
  %call = call <8 x i64> @_mm512_undefined_epi32()
  %1 = bitcast <8 x i64> %call to <16 x i32>
  %2 = call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %0, <16 x i32> %1, i16 -1, i32 4)
  %3 = bitcast <16 x i32> %2 to <8 x i64>
  ret <8 x i64> %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @_mm512_adds_epi16(<8 x i64> noundef %__A, <8 x i64> noundef %__B) #4 {
entry:
  %__A.addr = alloca <8 x i64>, align 64
  %__B.addr = alloca <8 x i64>, align 64
  store <8 x i64> %__A, ptr %__A.addr, align 64, !tbaa !14
  store <8 x i64> %__B, ptr %__B.addr, align 64, !tbaa !14
  %0 = load <8 x i64>, ptr %__A.addr, align 64, !tbaa !14
  %1 = bitcast <8 x i64> %0 to <32 x i16>
  %2 = load <8 x i64>, ptr %__B.addr, align 64, !tbaa !14
  %3 = bitcast <8 x i64> %2 to <32 x i16>
  %elt.sat = call <32 x i16> @llvm.sadd.sat.v32i16(<32 x i16> %1, <32 x i16> %3)
  %4 = bitcast <32 x i16> %elt.sat to <8 x i64>
  ret <8 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @_mm512_packs_epi32(<8 x i64> noundef %__A, <8 x i64> noundef %__B) #4 {
entry:
  %__A.addr = alloca <8 x i64>, align 64
  %__B.addr = alloca <8 x i64>, align 64
  store <8 x i64> %__A, ptr %__A.addr, align 64, !tbaa !14
  store <8 x i64> %__B, ptr %__B.addr, align 64, !tbaa !14
  %0 = load <8 x i64>, ptr %__A.addr, align 64, !tbaa !14
  %1 = bitcast <8 x i64> %0 to <16 x i32>
  %2 = load <8 x i64>, ptr %__B.addr, align 64, !tbaa !14
  %3 = bitcast <8 x i64> %2 to <16 x i32>
  %4 = call <32 x i16> @llvm.x86.avx512.packssdw.512(<16 x i32> %1, <16 x i32> %3)
  %5 = bitcast <32 x i16> %4 to <8 x i64>
  ret <8 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_packs_epi16(<4 x i64> noundef %__a, <4 x i64> noundef %__b) #5 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  %__b.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !14
  store <4 x i64> %__b, ptr %__b.addr, align 32, !tbaa !14
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !14
  %1 = bitcast <4 x i64> %0 to <16 x i16>
  %2 = load <4 x i64>, ptr %__b.addr, align 32, !tbaa !14
  %3 = bitcast <4 x i64> %2 to <16 x i16>
  %4 = call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %1, <16 x i16> %3)
  %5 = bitcast <32 x i8> %4 to <4 x i64>
  ret <4 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm512_castsi512_si256(<8 x i64> noundef %__A) #4 {
entry:
  %__A.addr = alloca <8 x i64>, align 64
  store <8 x i64> %__A, ptr %__A.addr, align 64, !tbaa !14
  %0 = load <8 x i64>, ptr %__A.addr, align 64, !tbaa !14
  %1 = load <8 x i64>, ptr %__A.addr, align 64, !tbaa !14
  %shuffle = shufflevector <8 x i64> %0, <8 x i64> %1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  ret <4 x i64> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_undefined_si256() #5 {
entry:
  ret <4 x i64> zeroinitializer
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_permutevar8x32_epi32(<4 x i64> noundef %__a, <4 x i64> noundef %__b) #5 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  %__b.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !14
  store <4 x i64> %__b, ptr %__b.addr, align 32, !tbaa !14
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !14
  %1 = bitcast <4 x i64> %0 to <8 x i32>
  %2 = load <4 x i64>, ptr %__b.addr, align 32, !tbaa !14
  %3 = bitcast <4 x i64> %2 to <8 x i32>
  %4 = call <8 x i32> @llvm.x86.avx2.permd(<8 x i32> %1, <8 x i32> %3)
  %5 = bitcast <8 x i32> %4 to <4 x i64>
  ret <4 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_set_epi32(i32 noundef %__i0, i32 noundef %__i1, i32 noundef %__i2, i32 noundef %__i3, i32 noundef %__i4, i32 noundef %__i5, i32 noundef %__i6, i32 noundef %__i7) #5 {
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
  store i32 %__i0, ptr %__i0.addr, align 4, !tbaa !21
  store i32 %__i1, ptr %__i1.addr, align 4, !tbaa !21
  store i32 %__i2, ptr %__i2.addr, align 4, !tbaa !21
  store i32 %__i3, ptr %__i3.addr, align 4, !tbaa !21
  store i32 %__i4, ptr %__i4.addr, align 4, !tbaa !21
  store i32 %__i5, ptr %__i5.addr, align 4, !tbaa !21
  store i32 %__i6, ptr %__i6.addr, align 4, !tbaa !21
  store i32 %__i7, ptr %__i7.addr, align 4, !tbaa !21
  %0 = load i32, ptr %__i7.addr, align 4, !tbaa !21
  %vecinit = insertelement <8 x i32> undef, i32 %0, i32 0
  %1 = load i32, ptr %__i6.addr, align 4, !tbaa !21
  %vecinit1 = insertelement <8 x i32> %vecinit, i32 %1, i32 1
  %2 = load i32, ptr %__i5.addr, align 4, !tbaa !21
  %vecinit2 = insertelement <8 x i32> %vecinit1, i32 %2, i32 2
  %3 = load i32, ptr %__i4.addr, align 4, !tbaa !21
  %vecinit3 = insertelement <8 x i32> %vecinit2, i32 %3, i32 3
  %4 = load i32, ptr %__i3.addr, align 4, !tbaa !21
  %vecinit4 = insertelement <8 x i32> %vecinit3, i32 %4, i32 4
  %5 = load i32, ptr %__i2.addr, align 4, !tbaa !21
  %vecinit5 = insertelement <8 x i32> %vecinit4, i32 %5, i32 5
  %6 = load i32, ptr %__i1.addr, align 4, !tbaa !21
  %vecinit6 = insertelement <8 x i32> %vecinit5, i32 %6, i32 6
  %7 = load i32, ptr %__i0.addr, align 4, !tbaa !21
  %vecinit7 = insertelement <8 x i32> %vecinit6, i32 %7, i32 7
  store <8 x i32> %vecinit7, ptr %.compoundliteral, align 32, !tbaa !14
  %8 = load <8 x i32>, ptr %.compoundliteral, align 32, !tbaa !14
  %9 = bitcast <8 x i32> %8 to <4 x i64>
  ret <4 x i64> %9
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %__a, <4 x i64> noundef %__b) #5 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  %__b.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !14
  store <4 x i64> %__b, ptr %__b.addr, align 32, !tbaa !14
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !14
  %1 = bitcast <4 x i64> %0 to <32 x i8>
  %2 = load <4 x i64>, ptr %__b.addr, align 32, !tbaa !14
  %3 = bitcast <4 x i64> %2 to <32 x i8>
  %4 = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %1, <32 x i8> %3)
  %5 = bitcast <32 x i8> %4 to <4 x i64>
  ret <4 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_set_epi8(i8 noundef signext %__b31, i8 noundef signext %__b30, i8 noundef signext %__b29, i8 noundef signext %__b28, i8 noundef signext %__b27, i8 noundef signext %__b26, i8 noundef signext %__b25, i8 noundef signext %__b24, i8 noundef signext %__b23, i8 noundef signext %__b22, i8 noundef signext %__b21, i8 noundef signext %__b20, i8 noundef signext %__b19, i8 noundef signext %__b18, i8 noundef signext %__b17, i8 noundef signext %__b16, i8 noundef signext %__b15, i8 noundef signext %__b14, i8 noundef signext %__b13, i8 noundef signext %__b12, i8 noundef signext %__b11, i8 noundef signext %__b10, i8 noundef signext %__b09, i8 noundef signext %__b08, i8 noundef signext %__b07, i8 noundef signext %__b06, i8 noundef signext %__b05, i8 noundef signext %__b04, i8 noundef signext %__b03, i8 noundef signext %__b02, i8 noundef signext %__b01, i8 noundef signext %__b00) #5 {
entry:
  %__b31.addr = alloca i8, align 1
  %__b30.addr = alloca i8, align 1
  %__b29.addr = alloca i8, align 1
  %__b28.addr = alloca i8, align 1
  %__b27.addr = alloca i8, align 1
  %__b26.addr = alloca i8, align 1
  %__b25.addr = alloca i8, align 1
  %__b24.addr = alloca i8, align 1
  %__b23.addr = alloca i8, align 1
  %__b22.addr = alloca i8, align 1
  %__b21.addr = alloca i8, align 1
  %__b20.addr = alloca i8, align 1
  %__b19.addr = alloca i8, align 1
  %__b18.addr = alloca i8, align 1
  %__b17.addr = alloca i8, align 1
  %__b16.addr = alloca i8, align 1
  %__b15.addr = alloca i8, align 1
  %__b14.addr = alloca i8, align 1
  %__b13.addr = alloca i8, align 1
  %__b12.addr = alloca i8, align 1
  %__b11.addr = alloca i8, align 1
  %__b10.addr = alloca i8, align 1
  %__b09.addr = alloca i8, align 1
  %__b08.addr = alloca i8, align 1
  %__b07.addr = alloca i8, align 1
  %__b06.addr = alloca i8, align 1
  %__b05.addr = alloca i8, align 1
  %__b04.addr = alloca i8, align 1
  %__b03.addr = alloca i8, align 1
  %__b02.addr = alloca i8, align 1
  %__b01.addr = alloca i8, align 1
  %__b00.addr = alloca i8, align 1
  %.compoundliteral = alloca <32 x i8>, align 32
  store i8 %__b31, ptr %__b31.addr, align 1, !tbaa !14
  store i8 %__b30, ptr %__b30.addr, align 1, !tbaa !14
  store i8 %__b29, ptr %__b29.addr, align 1, !tbaa !14
  store i8 %__b28, ptr %__b28.addr, align 1, !tbaa !14
  store i8 %__b27, ptr %__b27.addr, align 1, !tbaa !14
  store i8 %__b26, ptr %__b26.addr, align 1, !tbaa !14
  store i8 %__b25, ptr %__b25.addr, align 1, !tbaa !14
  store i8 %__b24, ptr %__b24.addr, align 1, !tbaa !14
  store i8 %__b23, ptr %__b23.addr, align 1, !tbaa !14
  store i8 %__b22, ptr %__b22.addr, align 1, !tbaa !14
  store i8 %__b21, ptr %__b21.addr, align 1, !tbaa !14
  store i8 %__b20, ptr %__b20.addr, align 1, !tbaa !14
  store i8 %__b19, ptr %__b19.addr, align 1, !tbaa !14
  store i8 %__b18, ptr %__b18.addr, align 1, !tbaa !14
  store i8 %__b17, ptr %__b17.addr, align 1, !tbaa !14
  store i8 %__b16, ptr %__b16.addr, align 1, !tbaa !14
  store i8 %__b15, ptr %__b15.addr, align 1, !tbaa !14
  store i8 %__b14, ptr %__b14.addr, align 1, !tbaa !14
  store i8 %__b13, ptr %__b13.addr, align 1, !tbaa !14
  store i8 %__b12, ptr %__b12.addr, align 1, !tbaa !14
  store i8 %__b11, ptr %__b11.addr, align 1, !tbaa !14
  store i8 %__b10, ptr %__b10.addr, align 1, !tbaa !14
  store i8 %__b09, ptr %__b09.addr, align 1, !tbaa !14
  store i8 %__b08, ptr %__b08.addr, align 1, !tbaa !14
  store i8 %__b07, ptr %__b07.addr, align 1, !tbaa !14
  store i8 %__b06, ptr %__b06.addr, align 1, !tbaa !14
  store i8 %__b05, ptr %__b05.addr, align 1, !tbaa !14
  store i8 %__b04, ptr %__b04.addr, align 1, !tbaa !14
  store i8 %__b03, ptr %__b03.addr, align 1, !tbaa !14
  store i8 %__b02, ptr %__b02.addr, align 1, !tbaa !14
  store i8 %__b01, ptr %__b01.addr, align 1, !tbaa !14
  store i8 %__b00, ptr %__b00.addr, align 1, !tbaa !14
  %0 = load i8, ptr %__b00.addr, align 1, !tbaa !14
  %vecinit = insertelement <32 x i8> undef, i8 %0, i32 0
  %1 = load i8, ptr %__b01.addr, align 1, !tbaa !14
  %vecinit1 = insertelement <32 x i8> %vecinit, i8 %1, i32 1
  %2 = load i8, ptr %__b02.addr, align 1, !tbaa !14
  %vecinit2 = insertelement <32 x i8> %vecinit1, i8 %2, i32 2
  %3 = load i8, ptr %__b03.addr, align 1, !tbaa !14
  %vecinit3 = insertelement <32 x i8> %vecinit2, i8 %3, i32 3
  %4 = load i8, ptr %__b04.addr, align 1, !tbaa !14
  %vecinit4 = insertelement <32 x i8> %vecinit3, i8 %4, i32 4
  %5 = load i8, ptr %__b05.addr, align 1, !tbaa !14
  %vecinit5 = insertelement <32 x i8> %vecinit4, i8 %5, i32 5
  %6 = load i8, ptr %__b06.addr, align 1, !tbaa !14
  %vecinit6 = insertelement <32 x i8> %vecinit5, i8 %6, i32 6
  %7 = load i8, ptr %__b07.addr, align 1, !tbaa !14
  %vecinit7 = insertelement <32 x i8> %vecinit6, i8 %7, i32 7
  %8 = load i8, ptr %__b08.addr, align 1, !tbaa !14
  %vecinit8 = insertelement <32 x i8> %vecinit7, i8 %8, i32 8
  %9 = load i8, ptr %__b09.addr, align 1, !tbaa !14
  %vecinit9 = insertelement <32 x i8> %vecinit8, i8 %9, i32 9
  %10 = load i8, ptr %__b10.addr, align 1, !tbaa !14
  %vecinit10 = insertelement <32 x i8> %vecinit9, i8 %10, i32 10
  %11 = load i8, ptr %__b11.addr, align 1, !tbaa !14
  %vecinit11 = insertelement <32 x i8> %vecinit10, i8 %11, i32 11
  %12 = load i8, ptr %__b12.addr, align 1, !tbaa !14
  %vecinit12 = insertelement <32 x i8> %vecinit11, i8 %12, i32 12
  %13 = load i8, ptr %__b13.addr, align 1, !tbaa !14
  %vecinit13 = insertelement <32 x i8> %vecinit12, i8 %13, i32 13
  %14 = load i8, ptr %__b14.addr, align 1, !tbaa !14
  %vecinit14 = insertelement <32 x i8> %vecinit13, i8 %14, i32 14
  %15 = load i8, ptr %__b15.addr, align 1, !tbaa !14
  %vecinit15 = insertelement <32 x i8> %vecinit14, i8 %15, i32 15
  %16 = load i8, ptr %__b16.addr, align 1, !tbaa !14
  %vecinit16 = insertelement <32 x i8> %vecinit15, i8 %16, i32 16
  %17 = load i8, ptr %__b17.addr, align 1, !tbaa !14
  %vecinit17 = insertelement <32 x i8> %vecinit16, i8 %17, i32 17
  %18 = load i8, ptr %__b18.addr, align 1, !tbaa !14
  %vecinit18 = insertelement <32 x i8> %vecinit17, i8 %18, i32 18
  %19 = load i8, ptr %__b19.addr, align 1, !tbaa !14
  %vecinit19 = insertelement <32 x i8> %vecinit18, i8 %19, i32 19
  %20 = load i8, ptr %__b20.addr, align 1, !tbaa !14
  %vecinit20 = insertelement <32 x i8> %vecinit19, i8 %20, i32 20
  %21 = load i8, ptr %__b21.addr, align 1, !tbaa !14
  %vecinit21 = insertelement <32 x i8> %vecinit20, i8 %21, i32 21
  %22 = load i8, ptr %__b22.addr, align 1, !tbaa !14
  %vecinit22 = insertelement <32 x i8> %vecinit21, i8 %22, i32 22
  %23 = load i8, ptr %__b23.addr, align 1, !tbaa !14
  %vecinit23 = insertelement <32 x i8> %vecinit22, i8 %23, i32 23
  %24 = load i8, ptr %__b24.addr, align 1, !tbaa !14
  %vecinit24 = insertelement <32 x i8> %vecinit23, i8 %24, i32 24
  %25 = load i8, ptr %__b25.addr, align 1, !tbaa !14
  %vecinit25 = insertelement <32 x i8> %vecinit24, i8 %25, i32 25
  %26 = load i8, ptr %__b26.addr, align 1, !tbaa !14
  %vecinit26 = insertelement <32 x i8> %vecinit25, i8 %26, i32 26
  %27 = load i8, ptr %__b27.addr, align 1, !tbaa !14
  %vecinit27 = insertelement <32 x i8> %vecinit26, i8 %27, i32 27
  %28 = load i8, ptr %__b28.addr, align 1, !tbaa !14
  %vecinit28 = insertelement <32 x i8> %vecinit27, i8 %28, i32 28
  %29 = load i8, ptr %__b29.addr, align 1, !tbaa !14
  %vecinit29 = insertelement <32 x i8> %vecinit28, i8 %29, i32 29
  %30 = load i8, ptr %__b30.addr, align 1, !tbaa !14
  %vecinit30 = insertelement <32 x i8> %vecinit29, i8 %30, i32 30
  %31 = load i8, ptr %__b31.addr, align 1, !tbaa !14
  %vecinit31 = insertelement <32 x i8> %vecinit30, i8 %31, i32 31
  store <32 x i8> %vecinit31, ptr %.compoundliteral, align 32, !tbaa !14
  %32 = load <32 x i8>, ptr %.compoundliteral, align 32, !tbaa !14
  %33 = bitcast <32 x i8> %32 to <4 x i64>
  ret <4 x i64> %33
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_max_epi8(<4 x i64> noundef %__a, <4 x i64> noundef %__b) #5 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  %__b.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !14
  store <4 x i64> %__b, ptr %__b.addr, align 32, !tbaa !14
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !14
  %1 = bitcast <4 x i64> %0 to <32 x i8>
  %2 = load <4 x i64>, ptr %__b.addr, align 32, !tbaa !14
  %3 = bitcast <4 x i64> %2 to <32 x i8>
  %elt.max = call <32 x i8> @llvm.smax.v32i8(<32 x i8> %1, <32 x i8> %3)
  %4 = bitcast <32 x i8> %elt.max to <4 x i64>
  ret <4 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storeu_si128(ptr noundef %__p, <2 x i64> noundef %__b) #6 {
entry:
  %__p.addr = alloca ptr, align 8
  %__b.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !14
  %0 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !14
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_si128, ptr %1, i32 0, i32 0
  store <2 x i64> %0, ptr %__v, align 1, !tbaa !14
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %__a) #5 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !14
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !14
  %1 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !14
  %shuffle = shufflevector <4 x i64> %0, <4 x i64> %1, <2 x i32> <i32 0, i32 1>
  ret <2 x i64> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @_cvtu64_mask64(i64 noundef %__A) #3 {
entry:
  %__A.addr = alloca i64, align 8
  store i64 %__A, ptr %__A.addr, align 8, !tbaa !18
  %0 = load i64, ptr %__A.addr, align 8, !tbaa !18
  %1 = bitcast i64 %0 to <64 x i1>
  %2 = bitcast <64 x i1> %1 to i64
  ret i64 %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm256_mask_storeu_epi8(ptr noundef %__P, i32 noundef %__U, <4 x i64> noundef %__A) #5 {
entry:
  %__P.addr = alloca ptr, align 8
  %__U.addr = alloca i32, align 4
  %__A.addr = alloca <4 x i64>, align 32
  store ptr %__P, ptr %__P.addr, align 8, !tbaa !9
  store i32 %__U, ptr %__U.addr, align 4, !tbaa !21
  store <4 x i64> %__A, ptr %__A.addr, align 32, !tbaa !14
  %0 = load ptr, ptr %__P.addr, align 8, !tbaa !9
  %1 = load <4 x i64>, ptr %__A.addr, align 32, !tbaa !14
  %2 = bitcast <4 x i64> %1 to <32 x i8>
  %3 = load i32, ptr %__U.addr, align 4, !tbaa !21
  %4 = bitcast i32 %3 to <32 x i1>
  call void @llvm.masked.store.v32i8.p0(<32 x i8> %2, ptr %0, i32 1, <32 x i1> %4)
  ret void
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

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @_mm512_setzero_si512() #4 {
entry:
  %.compoundliteral = alloca <8 x i64>, align 64
  store <8 x i64> zeroinitializer, ptr %.compoundliteral, align 64, !tbaa !14
  %0 = load <8 x i64>, ptr %.compoundliteral, align 64, !tbaa !14
  ret <8 x i64> %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x i32> @llvm.masked.expandload.v16i32(ptr nocapture, <16 x i1>, <16 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16>, <32 x i16>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float>, <16 x float>, i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float>, <16 x i32>, i16, i32 immarg) #8

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @_mm512_undefined_epi32() #4 {
entry:
  ret <8 x i64> zeroinitializer
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i16> @llvm.sadd.sat.v32i16(<32 x i16>, <32 x i16>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i16> @llvm.x86.avx512.packssdw.512(<16 x i32>, <16 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16>, <16 x i16>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.permd(<8 x i32>, <8 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8>, <32 x i8>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i8> @llvm.smax.v32i8(<32 x i8>, <32 x i8>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v32i8.p0(<32 x i8>, ptr nocapture, i32 immarg, <32 x i1>) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { alwaysinline nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { alwaysinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }

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
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !7, i64 0}
!14 = !{!7, !7, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!19, !19, i64 0}
!19 = !{!"long long", !7, i64 0}
!20 = distinct !{!20, !16}
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !7, i64 0}
