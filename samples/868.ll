; ModuleID = 'samples/868.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qs8-igemm/gen/4x4c2s4-minmax-fp32-avx-ld128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.3 = type { [4 x float], [4 x float], [8 x i16], [16 x i8] }
%struct.__loadu_si128 = type { <2 x i64> }
%struct.__mm_loadl_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qs8_igemm_minmax_fp32_ukernel_4x4c2s4__avx_ld128(i64 noundef %mr, i64 noundef %nc, i64 noundef %kc, i64 noundef %ks, ptr noalias noundef %a, ptr noalias noundef %w, ptr noalias noundef %c, i64 noundef %cm_stride, i64 noundef %cn_stride, i64 noundef %a_offset, ptr noundef %zero, ptr noalias noundef align 64 dereferenceable(256) %params) #0 {
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
  %c2 = alloca ptr, align 8
  %c3 = alloca ptr, align 8
  %vacc0x0123 = alloca <2 x i64>, align 16
  %vacc1x0123 = alloca <2 x i64>, align 16
  %vacc2x0123 = alloca <2 x i64>, align 16
  %vacc3x0123 = alloca <2 x i64>, align 16
  %p = alloca i64, align 8
  %a0 = alloca ptr, align 8
  %a1 = alloca ptr, align 8
  %a2 = alloca ptr, align 8
  %a3 = alloca ptr, align 8
  %k = alloca i64, align 8
  %va0 = alloca <2 x i64>, align 16
  %vxa0 = alloca <2 x i64>, align 16
  %va1 = alloca <2 x i64>, align 16
  %vxa1 = alloca <2 x i64>, align 16
  %va2 = alloca <2 x i64>, align 16
  %vxa2 = alloca <2 x i64>, align 16
  %va3 = alloca <2 x i64>, align 16
  %vxa3 = alloca <2 x i64>, align 16
  %vb01 = alloca <2 x i64>, align 16
  %vxb0 = alloca <2 x i64>, align 16
  %vxb1 = alloca <2 x i64>, align 16
  %vb23 = alloca <2 x i64>, align 16
  %vxb2 = alloca <2 x i64>, align 16
  %vxb3 = alloca <2 x i64>, align 16
  %vscaled0x0123 = alloca <4 x float>, align 16
  %vscaled1x0123 = alloca <4 x float>, align 16
  %vscaled2x0123 = alloca <4 x float>, align 16
  %vscaled3x0123 = alloca <4 x float>, align 16
  %vscale = alloca <4 x float>, align 16
  %voutput_max_less_zero_point = alloca <4 x float>, align 16
  %voutput_zero_point = alloca <2 x i64>, align 16
  %vacc01x0123 = alloca <2 x i64>, align 16
  %vacc23x0123 = alloca <2 x i64>, align 16
  %vout = alloca <2 x i64>, align 16
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %c0) #6
  %1 = load ptr, ptr %c.addr, align 8, !tbaa !9
  store ptr %1, ptr %c0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c1) #6
  %2 = load ptr, ptr %c0, align 8, !tbaa !9
  %3 = ptrtoint ptr %2 to i64
  %4 = load i64, ptr %cm_stride.addr, align 8, !tbaa !5
  %add = add i64 %3, %4
  %5 = inttoptr i64 %add to ptr
  store ptr %5, ptr %c1, align 8, !tbaa !9
  %6 = load i64, ptr %mr.addr, align 8, !tbaa !5
  %cmp = icmp ult i64 %6, 2
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %c2) #6
  %8 = load ptr, ptr %c1, align 8, !tbaa !9
  %9 = ptrtoint ptr %8 to i64
  %10 = load i64, ptr %cm_stride.addr, align 8, !tbaa !5
  %add2 = add i64 %9, %10
  %11 = inttoptr i64 %add2 to ptr
  store ptr %11, ptr %c2, align 8, !tbaa !9
  %12 = load i64, ptr %mr.addr, align 8, !tbaa !5
  %cmp3 = icmp ule i64 %12, 2
  %lnot5 = xor i1 %cmp3, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %if.then11, label %if.end12, !unpredictable !11

if.then11:                                        ; preds = %if.end
  %13 = load ptr, ptr %c1, align 8, !tbaa !9
  store ptr %13, ptr %c2, align 8, !tbaa !9
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %c3) #6
  %14 = load ptr, ptr %c2, align 8, !tbaa !9
  %15 = ptrtoint ptr %14 to i64
  %16 = load i64, ptr %cm_stride.addr, align 8, !tbaa !5
  %add13 = add i64 %15, %16
  %17 = inttoptr i64 %add13 to ptr
  store ptr %17, ptr %c3, align 8, !tbaa !9
  %18 = load i64, ptr %mr.addr, align 8, !tbaa !5
  %cmp14 = icmp ne i64 %18, 4
  %lnot16 = xor i1 %cmp14, true
  %lnot18 = xor i1 %lnot16, true
  %lnot.ext19 = zext i1 %lnot18 to i32
  %conv20 = sext i32 %lnot.ext19 to i64
  %tobool21 = icmp ne i64 %conv20, 0
  br i1 %tobool21, label %if.then22, label %if.end23, !unpredictable !11

if.then22:                                        ; preds = %if.end12
  %19 = load ptr, ptr %c2, align 8, !tbaa !9
  store ptr %19, ptr %c3, align 8, !tbaa !9
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end12
  br label %do.body

do.body:                                          ; preds = %do.cond215, %if.end23
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x0123) #6
  %20 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call24 = call <2 x i64> @_mm_loadu_si128(ptr noundef %20)
  store <2 x i64> %call24, ptr %vacc0x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc1x0123) #6
  %21 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  store <2 x i64> %21, ptr %vacc1x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc2x0123) #6
  %22 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  store <2 x i64> %22, ptr %vacc2x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc3x0123) #6
  %23 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  store <2 x i64> %23, ptr %vacc3x0123, align 16, !tbaa !12
  %24 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i32, ptr %24, i64 4
  store ptr %add.ptr, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6
  %25 = load i64, ptr %ks.addr, align 8, !tbaa !5
  store i64 %25, ptr %p, align 8, !tbaa !5
  br label %do.body25

do.body25:                                        ; preds = %do.cond143, %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %a0) #6
  %26 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %26, i64 0
  %27 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  store ptr %27, ptr %a0, align 8, !tbaa !9
  %28 = load ptr, ptr %a0, align 8, !tbaa !9
  %29 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp26 = icmp ne ptr %28, %29
  %lnot28 = xor i1 %cmp26, true
  %lnot30 = xor i1 %lnot28, true
  %lnot.ext31 = zext i1 %lnot30 to i32
  %conv32 = sext i32 %lnot.ext31 to i64
  %tobool33 = icmp ne i64 %conv32, 0
  br i1 %tobool33, label %if.then34, label %if.end36, !unpredictable !11

if.then34:                                        ; preds = %do.body25
  %30 = load ptr, ptr %a0, align 8, !tbaa !9
  %31 = ptrtoint ptr %30 to i64
  %32 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add35 = add i64 %31, %32
  %33 = inttoptr i64 %add35 to ptr
  store ptr %33, ptr %a0, align 8, !tbaa !9
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %do.body25
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1) #6
  %34 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx37 = getelementptr inbounds ptr, ptr %34, i64 1
  %35 = load ptr, ptr %arrayidx37, align 8, !tbaa !9
  store ptr %35, ptr %a1, align 8, !tbaa !9
  %36 = load ptr, ptr %a1, align 8, !tbaa !9
  %37 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp38 = icmp ne ptr %36, %37
  %lnot40 = xor i1 %cmp38, true
  %lnot42 = xor i1 %lnot40, true
  %lnot.ext43 = zext i1 %lnot42 to i32
  %conv44 = sext i32 %lnot.ext43 to i64
  %tobool45 = icmp ne i64 %conv44, 0
  br i1 %tobool45, label %if.then46, label %if.end48, !unpredictable !11

if.then46:                                        ; preds = %if.end36
  %38 = load ptr, ptr %a1, align 8, !tbaa !9
  %39 = ptrtoint ptr %38 to i64
  %40 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add47 = add i64 %39, %40
  %41 = inttoptr i64 %add47 to ptr
  store ptr %41, ptr %a1, align 8, !tbaa !9
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %a2) #6
  %42 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx49 = getelementptr inbounds ptr, ptr %42, i64 2
  %43 = load ptr, ptr %arrayidx49, align 8, !tbaa !9
  store ptr %43, ptr %a2, align 8, !tbaa !9
  %44 = load ptr, ptr %a2, align 8, !tbaa !9
  %45 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp50 = icmp ne ptr %44, %45
  %lnot52 = xor i1 %cmp50, true
  %lnot54 = xor i1 %lnot52, true
  %lnot.ext55 = zext i1 %lnot54 to i32
  %conv56 = sext i32 %lnot.ext55 to i64
  %tobool57 = icmp ne i64 %conv56, 0
  br i1 %tobool57, label %if.then58, label %if.end60, !unpredictable !11

if.then58:                                        ; preds = %if.end48
  %46 = load ptr, ptr %a2, align 8, !tbaa !9
  %47 = ptrtoint ptr %46 to i64
  %48 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add59 = add i64 %47, %48
  %49 = inttoptr i64 %add59 to ptr
  store ptr %49, ptr %a2, align 8, !tbaa !9
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end48
  call void @llvm.lifetime.start.p0(i64 8, ptr %a3) #6
  %50 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx61 = getelementptr inbounds ptr, ptr %50, i64 3
  %51 = load ptr, ptr %arrayidx61, align 8, !tbaa !9
  store ptr %51, ptr %a3, align 8, !tbaa !9
  %52 = load ptr, ptr %a3, align 8, !tbaa !9
  %53 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp62 = icmp ne ptr %52, %53
  %lnot64 = xor i1 %cmp62, true
  %lnot66 = xor i1 %lnot64, true
  %lnot.ext67 = zext i1 %lnot66 to i32
  %conv68 = sext i32 %lnot.ext67 to i64
  %tobool69 = icmp ne i64 %conv68, 0
  br i1 %tobool69, label %if.then70, label %if.end72, !unpredictable !11

if.then70:                                        ; preds = %if.end60
  %54 = load ptr, ptr %a3, align 8, !tbaa !9
  %55 = ptrtoint ptr %54 to i64
  %56 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add71 = add i64 %55, %56
  %57 = inttoptr i64 %add71 to ptr
  store ptr %57, ptr %a3, align 8, !tbaa !9
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end60
  %58 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %add.ptr73 = getelementptr inbounds ptr, ptr %58, i64 4
  store ptr %add.ptr73, ptr %a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #6
  %59 = load i64, ptr %kc.addr, align 8, !tbaa !5
  store i64 %59, ptr %k, align 8, !tbaa !5
  br label %do.body74

do.body74:                                        ; preds = %do.cond, %if.end72
  call void @llvm.lifetime.start.p0(i64 16, ptr %va0) #6
  %60 = load ptr, ptr %a0, align 8, !tbaa !9
  %call75 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %60)
  store <2 x i64> %call75, ptr %va0, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxa0) #6
  %61 = load <2 x i64>, ptr %va0, align 16, !tbaa !12
  %call76 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %61)
  store <2 x i64> %call76, ptr %vxa0, align 16, !tbaa !12
  %62 = load ptr, ptr %a0, align 8, !tbaa !9
  %add.ptr77 = getelementptr inbounds i8, ptr %62, i64 8
  store ptr %add.ptr77, ptr %a0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %va1) #6
  %63 = load ptr, ptr %a1, align 8, !tbaa !9
  %call78 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %63)
  store <2 x i64> %call78, ptr %va1, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxa1) #6
  %64 = load <2 x i64>, ptr %va1, align 16, !tbaa !12
  %call79 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %64)
  store <2 x i64> %call79, ptr %vxa1, align 16, !tbaa !12
  %65 = load ptr, ptr %a1, align 8, !tbaa !9
  %add.ptr80 = getelementptr inbounds i8, ptr %65, i64 8
  store ptr %add.ptr80, ptr %a1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %va2) #6
  %66 = load ptr, ptr %a2, align 8, !tbaa !9
  %call81 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %66)
  store <2 x i64> %call81, ptr %va2, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxa2) #6
  %67 = load <2 x i64>, ptr %va2, align 16, !tbaa !12
  %call82 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %67)
  store <2 x i64> %call82, ptr %vxa2, align 16, !tbaa !12
  %68 = load ptr, ptr %a2, align 8, !tbaa !9
  %add.ptr83 = getelementptr inbounds i8, ptr %68, i64 8
  store ptr %add.ptr83, ptr %a2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %va3) #6
  %69 = load ptr, ptr %a3, align 8, !tbaa !9
  %call84 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %69)
  store <2 x i64> %call84, ptr %va3, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxa3) #6
  %70 = load <2 x i64>, ptr %va3, align 16, !tbaa !12
  %call85 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %70)
  store <2 x i64> %call85, ptr %vxa3, align 16, !tbaa !12
  %71 = load ptr, ptr %a3, align 8, !tbaa !9
  %add.ptr86 = getelementptr inbounds i8, ptr %71, i64 8
  store ptr %add.ptr86, ptr %a3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb01) #6
  %72 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call87 = call <2 x i64> @_mm_loadu_si128(ptr noundef %72)
  store <2 x i64> %call87, ptr %vb01, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb0) #6
  %73 = load <2 x i64>, ptr %vb01, align 16, !tbaa !12
  %call88 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %73)
  store <2 x i64> %call88, ptr %vxb0, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb1) #6
  %74 = load <2 x i64>, ptr %vb01, align 16, !tbaa !12
  %75 = load <2 x i64>, ptr %vb01, align 16, !tbaa !12
  %call89 = call <2 x i64> @_mm_unpackhi_epi8(<2 x i64> noundef %74, <2 x i64> noundef %75)
  %call90 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call89, i32 noundef 8)
  store <2 x i64> %call90, ptr %vxb1, align 16, !tbaa !12
  %76 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %77 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %78 = load <2 x i64>, ptr %vxb0, align 16, !tbaa !12
  %call91 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %77, <2 x i64> noundef %78)
  %call92 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %76, <2 x i64> noundef %call91)
  store <2 x i64> %call92, ptr %vacc0x0123, align 16, !tbaa !12
  %79 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %80 = bitcast <2 x i64> %79 to <4 x i32>
  %permil = shufflevector <4 x i32> %80, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %81 = bitcast <4 x i32> %permil to <2 x i64>
  store <2 x i64> %81, ptr %vxa0, align 16, !tbaa !12
  %82 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %83 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %84 = load <2 x i64>, ptr %vxb0, align 16, !tbaa !12
  %call93 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %83, <2 x i64> noundef %84)
  %call94 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %82, <2 x i64> noundef %call93)
  store <2 x i64> %call94, ptr %vacc1x0123, align 16, !tbaa !12
  %85 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %86 = bitcast <2 x i64> %85 to <4 x i32>
  %permil95 = shufflevector <4 x i32> %86, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %87 = bitcast <4 x i32> %permil95 to <2 x i64>
  store <2 x i64> %87, ptr %vxa1, align 16, !tbaa !12
  %88 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %89 = load <2 x i64>, ptr %vxa2, align 16, !tbaa !12
  %90 = load <2 x i64>, ptr %vxb0, align 16, !tbaa !12
  %call96 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %89, <2 x i64> noundef %90)
  %call97 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %88, <2 x i64> noundef %call96)
  store <2 x i64> %call97, ptr %vacc2x0123, align 16, !tbaa !12
  %91 = load <2 x i64>, ptr %vxa2, align 16, !tbaa !12
  %92 = bitcast <2 x i64> %91 to <4 x i32>
  %permil98 = shufflevector <4 x i32> %92, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %93 = bitcast <4 x i32> %permil98 to <2 x i64>
  store <2 x i64> %93, ptr %vxa2, align 16, !tbaa !12
  %94 = load <2 x i64>, ptr %vacc3x0123, align 16, !tbaa !12
  %95 = load <2 x i64>, ptr %vxa3, align 16, !tbaa !12
  %96 = load <2 x i64>, ptr %vxb0, align 16, !tbaa !12
  %call99 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %95, <2 x i64> noundef %96)
  %call100 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %94, <2 x i64> noundef %call99)
  store <2 x i64> %call100, ptr %vacc3x0123, align 16, !tbaa !12
  %97 = load <2 x i64>, ptr %vxa3, align 16, !tbaa !12
  %98 = bitcast <2 x i64> %97 to <4 x i32>
  %permil101 = shufflevector <4 x i32> %98, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %99 = bitcast <4 x i32> %permil101 to <2 x i64>
  store <2 x i64> %99, ptr %vxa3, align 16, !tbaa !12
  %100 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %101 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %102 = load <2 x i64>, ptr %vxb1, align 16, !tbaa !12
  %call102 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %101, <2 x i64> noundef %102)
  %call103 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %100, <2 x i64> noundef %call102)
  store <2 x i64> %call103, ptr %vacc0x0123, align 16, !tbaa !12
  %103 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %104 = bitcast <2 x i64> %103 to <4 x i32>
  %permil104 = shufflevector <4 x i32> %104, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %105 = bitcast <4 x i32> %permil104 to <2 x i64>
  store <2 x i64> %105, ptr %vxa0, align 16, !tbaa !12
  %106 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %107 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %108 = load <2 x i64>, ptr %vxb1, align 16, !tbaa !12
  %call105 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %107, <2 x i64> noundef %108)
  %call106 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %106, <2 x i64> noundef %call105)
  store <2 x i64> %call106, ptr %vacc1x0123, align 16, !tbaa !12
  %109 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %110 = bitcast <2 x i64> %109 to <4 x i32>
  %permil107 = shufflevector <4 x i32> %110, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %111 = bitcast <4 x i32> %permil107 to <2 x i64>
  store <2 x i64> %111, ptr %vxa1, align 16, !tbaa !12
  %112 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %113 = load <2 x i64>, ptr %vxa2, align 16, !tbaa !12
  %114 = load <2 x i64>, ptr %vxb1, align 16, !tbaa !12
  %call108 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %113, <2 x i64> noundef %114)
  %call109 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %112, <2 x i64> noundef %call108)
  store <2 x i64> %call109, ptr %vacc2x0123, align 16, !tbaa !12
  %115 = load <2 x i64>, ptr %vxa2, align 16, !tbaa !12
  %116 = bitcast <2 x i64> %115 to <4 x i32>
  %permil110 = shufflevector <4 x i32> %116, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %117 = bitcast <4 x i32> %permil110 to <2 x i64>
  store <2 x i64> %117, ptr %vxa2, align 16, !tbaa !12
  %118 = load <2 x i64>, ptr %vacc3x0123, align 16, !tbaa !12
  %119 = load <2 x i64>, ptr %vxa3, align 16, !tbaa !12
  %120 = load <2 x i64>, ptr %vxb1, align 16, !tbaa !12
  %call111 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %119, <2 x i64> noundef %120)
  %call112 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %118, <2 x i64> noundef %call111)
  store <2 x i64> %call112, ptr %vacc3x0123, align 16, !tbaa !12
  %121 = load <2 x i64>, ptr %vxa3, align 16, !tbaa !12
  %122 = bitcast <2 x i64> %121 to <4 x i32>
  %permil113 = shufflevector <4 x i32> %122, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %123 = bitcast <4 x i32> %permil113 to <2 x i64>
  store <2 x i64> %123, ptr %vxa3, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb23) #6
  %124 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr114 = getelementptr inbounds i8, ptr %124, i64 16
  %call115 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr114)
  store <2 x i64> %call115, ptr %vb23, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb2) #6
  %125 = load <2 x i64>, ptr %vb23, align 16, !tbaa !12
  %call116 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %125)
  store <2 x i64> %call116, ptr %vxb2, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb3) #6
  %126 = load <2 x i64>, ptr %vb23, align 16, !tbaa !12
  %127 = load <2 x i64>, ptr %vb23, align 16, !tbaa !12
  %call117 = call <2 x i64> @_mm_unpackhi_epi8(<2 x i64> noundef %126, <2 x i64> noundef %127)
  %call118 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call117, i32 noundef 8)
  store <2 x i64> %call118, ptr %vxb3, align 16, !tbaa !12
  %128 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %129 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %130 = load <2 x i64>, ptr %vxb2, align 16, !tbaa !12
  %call119 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %129, <2 x i64> noundef %130)
  %call120 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %128, <2 x i64> noundef %call119)
  store <2 x i64> %call120, ptr %vacc0x0123, align 16, !tbaa !12
  %131 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %132 = bitcast <2 x i64> %131 to <4 x i32>
  %permil121 = shufflevector <4 x i32> %132, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %133 = bitcast <4 x i32> %permil121 to <2 x i64>
  store <2 x i64> %133, ptr %vxa0, align 16, !tbaa !12
  %134 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %135 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %136 = load <2 x i64>, ptr %vxb2, align 16, !tbaa !12
  %call122 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %135, <2 x i64> noundef %136)
  %call123 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %134, <2 x i64> noundef %call122)
  store <2 x i64> %call123, ptr %vacc1x0123, align 16, !tbaa !12
  %137 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %138 = bitcast <2 x i64> %137 to <4 x i32>
  %permil124 = shufflevector <4 x i32> %138, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %139 = bitcast <4 x i32> %permil124 to <2 x i64>
  store <2 x i64> %139, ptr %vxa1, align 16, !tbaa !12
  %140 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %141 = load <2 x i64>, ptr %vxa2, align 16, !tbaa !12
  %142 = load <2 x i64>, ptr %vxb2, align 16, !tbaa !12
  %call125 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %141, <2 x i64> noundef %142)
  %call126 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %140, <2 x i64> noundef %call125)
  store <2 x i64> %call126, ptr %vacc2x0123, align 16, !tbaa !12
  %143 = load <2 x i64>, ptr %vxa2, align 16, !tbaa !12
  %144 = bitcast <2 x i64> %143 to <4 x i32>
  %permil127 = shufflevector <4 x i32> %144, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %145 = bitcast <4 x i32> %permil127 to <2 x i64>
  store <2 x i64> %145, ptr %vxa2, align 16, !tbaa !12
  %146 = load <2 x i64>, ptr %vacc3x0123, align 16, !tbaa !12
  %147 = load <2 x i64>, ptr %vxa3, align 16, !tbaa !12
  %148 = load <2 x i64>, ptr %vxb2, align 16, !tbaa !12
  %call128 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %147, <2 x i64> noundef %148)
  %call129 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %146, <2 x i64> noundef %call128)
  store <2 x i64> %call129, ptr %vacc3x0123, align 16, !tbaa !12
  %149 = load <2 x i64>, ptr %vxa3, align 16, !tbaa !12
  %150 = bitcast <2 x i64> %149 to <4 x i32>
  %permil130 = shufflevector <4 x i32> %150, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %151 = bitcast <4 x i32> %permil130 to <2 x i64>
  store <2 x i64> %151, ptr %vxa3, align 16, !tbaa !12
  %152 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %153 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %154 = load <2 x i64>, ptr %vxb3, align 16, !tbaa !12
  %call131 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %153, <2 x i64> noundef %154)
  %call132 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %152, <2 x i64> noundef %call131)
  store <2 x i64> %call132, ptr %vacc0x0123, align 16, !tbaa !12
  %155 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %156 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %157 = load <2 x i64>, ptr %vxb3, align 16, !tbaa !12
  %call133 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %156, <2 x i64> noundef %157)
  %call134 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %155, <2 x i64> noundef %call133)
  store <2 x i64> %call134, ptr %vacc1x0123, align 16, !tbaa !12
  %158 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %159 = load <2 x i64>, ptr %vxa2, align 16, !tbaa !12
  %160 = load <2 x i64>, ptr %vxb3, align 16, !tbaa !12
  %call135 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %159, <2 x i64> noundef %160)
  %call136 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %158, <2 x i64> noundef %call135)
  store <2 x i64> %call136, ptr %vacc2x0123, align 16, !tbaa !12
  %161 = load <2 x i64>, ptr %vacc3x0123, align 16, !tbaa !12
  %162 = load <2 x i64>, ptr %vxa3, align 16, !tbaa !12
  %163 = load <2 x i64>, ptr %vxb3, align 16, !tbaa !12
  %call137 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %162, <2 x i64> noundef %163)
  %call138 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %161, <2 x i64> noundef %call137)
  store <2 x i64> %call138, ptr %vacc3x0123, align 16, !tbaa !12
  %164 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr139 = getelementptr inbounds i8, ptr %164, i64 32
  store ptr %add.ptr139, ptr %w.addr, align 8, !tbaa !9
  %165 = load i64, ptr %k, align 8, !tbaa !5
  %sub = sub i64 %165, 8
  store i64 %sub, ptr %k, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb23) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb0) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb01) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxa3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %va3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxa2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %va2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxa1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %va1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxa0) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %va0) #6
  br label %do.cond

do.cond:                                          ; preds = %do.body74
  %166 = load i64, ptr %k, align 8, !tbaa !5
  %cmp140 = icmp ne i64 %166, 0
  br i1 %cmp140, label %do.body74, label %do.end, !llvm.loop !13

do.end:                                           ; preds = %do.cond
  %167 = load i64, ptr %p, align 8, !tbaa !5
  %sub142 = sub i64 %167, 32
  store i64 %sub142, ptr %p, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a0) #6
  br label %do.cond143

do.cond143:                                       ; preds = %do.end
  %168 = load i64, ptr %p, align 8, !tbaa !5
  %cmp144 = icmp ne i64 %168, 0
  br i1 %cmp144, label %do.body25, label %do.end146, !llvm.loop !15

do.end146:                                        ; preds = %do.cond143
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled0x0123) #6
  %169 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %call147 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %169)
  store <4 x float> %call147, ptr %vscaled0x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled1x0123) #6
  %170 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %call148 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %170)
  store <4 x float> %call148, ptr %vscaled1x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled2x0123) #6
  %171 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %call149 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %171)
  store <4 x float> %call149, ptr %vscaled2x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled3x0123) #6
  %172 = load <2 x i64>, ptr %vacc3x0123, align 16, !tbaa !12
  %call150 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %172)
  store <4 x float> %call150, ptr %vscaled3x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscale) #6
  %173 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale = getelementptr inbounds %struct.anon.3, ptr %173, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x float], ptr %scale, i64 0, i64 0
  %call151 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay)
  store <4 x float> %call151, ptr %vscale, align 16, !tbaa !12
  %174 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !12
  %175 = load <4 x float>, ptr %vscale, align 16, !tbaa !12
  %call152 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %174, <4 x float> noundef %175)
  store <4 x float> %call152, ptr %vscaled0x0123, align 16, !tbaa !12
  %176 = load <4 x float>, ptr %vscaled1x0123, align 16, !tbaa !12
  %177 = load <4 x float>, ptr %vscale, align 16, !tbaa !12
  %call153 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %176, <4 x float> noundef %177)
  store <4 x float> %call153, ptr %vscaled1x0123, align 16, !tbaa !12
  %178 = load <4 x float>, ptr %vscaled2x0123, align 16, !tbaa !12
  %179 = load <4 x float>, ptr %vscale, align 16, !tbaa !12
  %call154 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %178, <4 x float> noundef %179)
  store <4 x float> %call154, ptr %vscaled2x0123, align 16, !tbaa !12
  %180 = load <4 x float>, ptr %vscaled3x0123, align 16, !tbaa !12
  %181 = load <4 x float>, ptr %vscale, align 16, !tbaa !12
  %call155 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %180, <4 x float> noundef %181)
  store <4 x float> %call155, ptr %vscaled3x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_max_less_zero_point) #6
  %182 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max_less_zero_point = getelementptr inbounds %struct.anon.3, ptr %182, i32 0, i32 1
  %arraydecay156 = getelementptr inbounds [4 x float], ptr %output_max_less_zero_point, i64 0, i64 0
  %call157 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay156)
  store <4 x float> %call157, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %183 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !12
  %184 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %call158 = call <4 x float> @_mm_min_ps(<4 x float> noundef %183, <4 x float> noundef %184)
  store <4 x float> %call158, ptr %vscaled0x0123, align 16, !tbaa !12
  %185 = load <4 x float>, ptr %vscaled1x0123, align 16, !tbaa !12
  %186 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %call159 = call <4 x float> @_mm_min_ps(<4 x float> noundef %185, <4 x float> noundef %186)
  store <4 x float> %call159, ptr %vscaled1x0123, align 16, !tbaa !12
  %187 = load <4 x float>, ptr %vscaled2x0123, align 16, !tbaa !12
  %188 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %call160 = call <4 x float> @_mm_min_ps(<4 x float> noundef %187, <4 x float> noundef %188)
  store <4 x float> %call160, ptr %vscaled2x0123, align 16, !tbaa !12
  %189 = load <4 x float>, ptr %vscaled3x0123, align 16, !tbaa !12
  %190 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %call161 = call <4 x float> @_mm_min_ps(<4 x float> noundef %189, <4 x float> noundef %190)
  store <4 x float> %call161, ptr %vscaled3x0123, align 16, !tbaa !12
  %191 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !12
  %call162 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %191)
  store <2 x i64> %call162, ptr %vacc0x0123, align 16, !tbaa !12
  %192 = load <4 x float>, ptr %vscaled1x0123, align 16, !tbaa !12
  %call163 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %192)
  store <2 x i64> %call163, ptr %vacc1x0123, align 16, !tbaa !12
  %193 = load <4 x float>, ptr %vscaled2x0123, align 16, !tbaa !12
  %call164 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %193)
  store <2 x i64> %call164, ptr %vacc2x0123, align 16, !tbaa !12
  %194 = load <4 x float>, ptr %vscaled3x0123, align 16, !tbaa !12
  %call165 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %194)
  store <2 x i64> %call165, ptr %vacc3x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_zero_point) #6
  %195 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_zero_point = getelementptr inbounds %struct.anon.3, ptr %195, i32 0, i32 2
  %arraydecay166 = getelementptr inbounds [8 x i16], ptr %output_zero_point, i64 0, i64 0
  %call167 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay166)
  store <2 x i64> %call167, ptr %voutput_zero_point, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc01x0123) #6
  %196 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %197 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %call168 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %196, <2 x i64> noundef %197)
  %198 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !12
  %call169 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call168, <2 x i64> noundef %198)
  store <2 x i64> %call169, ptr %vacc01x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc23x0123) #6
  %199 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %200 = load <2 x i64>, ptr %vacc3x0123, align 16, !tbaa !12
  %call170 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %199, <2 x i64> noundef %200)
  %201 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !12
  %call171 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call170, <2 x i64> noundef %201)
  store <2 x i64> %call171, ptr %vacc23x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout) #6
  %202 = load <2 x i64>, ptr %vacc01x0123, align 16, !tbaa !12
  %203 = load <2 x i64>, ptr %vacc23x0123, align 16, !tbaa !12
  %call172 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %202, <2 x i64> noundef %203)
  store <2 x i64> %call172, ptr %vout, align 16, !tbaa !12
  %204 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %205 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min = getelementptr inbounds %struct.anon.3, ptr %205, i32 0, i32 3
  %arraydecay173 = getelementptr inbounds [16 x i8], ptr %output_min, i64 0, i64 0
  %call174 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay173)
  %call175 = call <2 x i64> @_mm_max_epi8(<2 x i64> noundef %204, <2 x i64> noundef %call174)
  store <2 x i64> %call175, ptr %vout, align 16, !tbaa !12
  %206 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp176 = icmp uge i64 %206, 4
  br i1 %cmp176, label %if.then178, label %if.else

if.then178:                                       ; preds = %do.end146
  %207 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %208 = bitcast <2 x i64> %207 to <4 x i32>
  %209 = extractelement <4 x i32> %208, i64 3
  %210 = load ptr, ptr %c3, align 8, !tbaa !9
  store i32 %209, ptr %210, align 4, !tbaa !16
  %211 = load ptr, ptr %c3, align 8, !tbaa !9
  %212 = ptrtoint ptr %211 to i64
  %213 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add179 = add i64 %212, %213
  %214 = inttoptr i64 %add179 to ptr
  store ptr %214, ptr %c3, align 8, !tbaa !9
  %215 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %216 = bitcast <2 x i64> %215 to <4 x i32>
  %217 = extractelement <4 x i32> %216, i64 2
  %218 = load ptr, ptr %c2, align 8, !tbaa !9
  store i32 %217, ptr %218, align 4, !tbaa !16
  %219 = load ptr, ptr %c2, align 8, !tbaa !9
  %220 = ptrtoint ptr %219 to i64
  %221 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add180 = add i64 %220, %221
  %222 = inttoptr i64 %add180 to ptr
  store ptr %222, ptr %c2, align 8, !tbaa !9
  %223 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %224 = bitcast <2 x i64> %223 to <4 x i32>
  %225 = extractelement <4 x i32> %224, i64 1
  %226 = load ptr, ptr %c1, align 8, !tbaa !9
  store i32 %225, ptr %226, align 4, !tbaa !16
  %227 = load ptr, ptr %c1, align 8, !tbaa !9
  %228 = ptrtoint ptr %227 to i64
  %229 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add181 = add i64 %228, %229
  %230 = inttoptr i64 %add181 to ptr
  store ptr %230, ptr %c1, align 8, !tbaa !9
  %231 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %call182 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %231)
  %232 = load ptr, ptr %c0, align 8, !tbaa !9
  store i32 %call182, ptr %232, align 4, !tbaa !16
  %233 = load ptr, ptr %c0, align 8, !tbaa !9
  %234 = ptrtoint ptr %233 to i64
  %235 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add183 = add i64 %234, %235
  %236 = inttoptr i64 %add183 to ptr
  store ptr %236, ptr %c0, align 8, !tbaa !9
  %237 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %238 = ptrtoint ptr %237 to i64
  %239 = load i64, ptr %ks.addr, align 8, !tbaa !5
  %sub184 = sub i64 %238, %239
  %240 = inttoptr i64 %sub184 to ptr
  store ptr %240, ptr %a.addr, align 8, !tbaa !9
  %241 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %sub185 = sub i64 %241, 4
  store i64 %sub185, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end214

if.else:                                          ; preds = %do.end146
  %242 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and = and i64 %242, 2
  %tobool186 = icmp ne i64 %and, 0
  br i1 %tobool186, label %if.then187, label %if.end201

if.then187:                                       ; preds = %if.else
  %243 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %244 = bitcast <2 x i64> %243 to <8 x i16>
  %245 = extractelement <8 x i16> %244, i64 6
  %conv188 = zext i16 %245 to i32
  %conv189 = trunc i32 %conv188 to i16
  %246 = load ptr, ptr %c3, align 8, !tbaa !9
  store i16 %conv189, ptr %246, align 2, !tbaa !18
  %247 = load ptr, ptr %c3, align 8, !tbaa !9
  %add.ptr190 = getelementptr inbounds i8, ptr %247, i64 2
  store ptr %add.ptr190, ptr %c3, align 8, !tbaa !9
  %248 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %249 = bitcast <2 x i64> %248 to <8 x i16>
  %250 = extractelement <8 x i16> %249, i64 4
  %conv191 = zext i16 %250 to i32
  %conv192 = trunc i32 %conv191 to i16
  %251 = load ptr, ptr %c2, align 8, !tbaa !9
  store i16 %conv192, ptr %251, align 2, !tbaa !18
  %252 = load ptr, ptr %c2, align 8, !tbaa !9
  %add.ptr193 = getelementptr inbounds i8, ptr %252, i64 2
  store ptr %add.ptr193, ptr %c2, align 8, !tbaa !9
  %253 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %254 = bitcast <2 x i64> %253 to <8 x i16>
  %255 = extractelement <8 x i16> %254, i64 2
  %conv194 = zext i16 %255 to i32
  %conv195 = trunc i32 %conv194 to i16
  %256 = load ptr, ptr %c1, align 8, !tbaa !9
  store i16 %conv195, ptr %256, align 2, !tbaa !18
  %257 = load ptr, ptr %c1, align 8, !tbaa !9
  %add.ptr196 = getelementptr inbounds i8, ptr %257, i64 2
  store ptr %add.ptr196, ptr %c1, align 8, !tbaa !9
  %258 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %259 = bitcast <2 x i64> %258 to <8 x i16>
  %260 = extractelement <8 x i16> %259, i64 0
  %conv197 = zext i16 %260 to i32
  %conv198 = trunc i32 %conv197 to i16
  %261 = load ptr, ptr %c0, align 8, !tbaa !9
  store i16 %conv198, ptr %261, align 2, !tbaa !18
  %262 = load ptr, ptr %c0, align 8, !tbaa !9
  %add.ptr199 = getelementptr inbounds i8, ptr %262, i64 2
  store ptr %add.ptr199, ptr %c0, align 8, !tbaa !9
  %263 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %call200 = call <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %263, i32 noundef 16)
  store <2 x i64> %call200, ptr %vout, align 16, !tbaa !12
  br label %if.end201

if.end201:                                        ; preds = %if.then187, %if.else
  %264 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and202 = and i64 %264, 1
  %tobool203 = icmp ne i64 %and202, 0
  br i1 %tobool203, label %if.then204, label %if.end213

if.then204:                                       ; preds = %if.end201
  %265 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %266 = bitcast <2 x i64> %265 to <16 x i8>
  %267 = extractelement <16 x i8> %266, i64 12
  %conv205 = zext i8 %267 to i32
  %conv206 = trunc i32 %conv205 to i8
  %268 = load ptr, ptr %c3, align 8, !tbaa !9
  store i8 %conv206, ptr %268, align 1, !tbaa !12
  %269 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %270 = bitcast <2 x i64> %269 to <16 x i8>
  %271 = extractelement <16 x i8> %270, i64 8
  %conv207 = zext i8 %271 to i32
  %conv208 = trunc i32 %conv207 to i8
  %272 = load ptr, ptr %c2, align 8, !tbaa !9
  store i8 %conv208, ptr %272, align 1, !tbaa !12
  %273 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %274 = bitcast <2 x i64> %273 to <16 x i8>
  %275 = extractelement <16 x i8> %274, i64 4
  %conv209 = zext i8 %275 to i32
  %conv210 = trunc i32 %conv209 to i8
  %276 = load ptr, ptr %c1, align 8, !tbaa !9
  store i8 %conv210, ptr %276, align 1, !tbaa !12
  %277 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %278 = bitcast <2 x i64> %277 to <16 x i8>
  %279 = extractelement <16 x i8> %278, i64 0
  %conv211 = zext i8 %279 to i32
  %conv212 = trunc i32 %conv211 to i8
  %280 = load ptr, ptr %c0, align 8, !tbaa !9
  store i8 %conv212, ptr %280, align 1, !tbaa !12
  br label %if.end213

if.end213:                                        ; preds = %if.then204, %if.end201
  store i64 0, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end214

if.end214:                                        ; preds = %if.end213, %if.then178
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc23x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc01x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_zero_point) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_max_less_zero_point) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscale) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled3x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled2x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled1x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled0x0123) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc3x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc2x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc1x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x0123) #6
  br label %do.cond215

do.cond215:                                       ; preds = %if.end214
  %281 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp216 = icmp ne i64 %281, 0
  br i1 %cmp216, label %do.body, label %do.end218, !llvm.loop !20

do.end218:                                        ; preds = %do.cond215
  call void @llvm.lifetime.end.p0(i64 8, ptr %c3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c0) #6
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
define internal <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %__V) #3 {
entry:
  %__V.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V, ptr %__V.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %shuffle = shufflevector <16 x i8> %1, <16 x i8> %3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %conv = sext <8 x i8> %shuffle to <8 x i16>
  %4 = bitcast <8 x i16> %conv to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %__a, i32 noundef %__count) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !16
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !16
  %3 = call <8 x i16> @llvm.x86.sse2.psrai.w(<8 x i16> %1, i32 %2)
  %4 = bitcast <8 x i16> %3 to <2 x i64>
  ret <2 x i64> %4
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
define internal <2 x i64> @_mm_max_epi8(<2 x i64> noundef %__V1, <2 x i64> noundef %__V2) #3 {
entry:
  %__V1.addr = alloca <2 x i64>, align 16
  %__V2.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V1, ptr %__V1.addr, align 16, !tbaa !12
  store <2 x i64> %__V2, ptr %__V2.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__V1.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__V2.addr, align 16, !tbaa !12
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
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !16
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !16
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
!15 = distinct !{!15, !14}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !7, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"short", !7, i64 0}
!20 = distinct !{!20, !14}
