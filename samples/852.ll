; ModuleID = 'samples/852.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qs8-igemm/gen/4x4c2s4-minmax-fp32-sse2-ld128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.2 = type { [4 x float], [4 x float], [8 x i16], [8 x i16] }
%struct.__loadu_si128 = type { <2 x i64> }
%struct.__mm_loadl_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qs8_igemm_minmax_fp32_ukernel_4x4c2s4__sse2_ld128(i64 noundef %mr, i64 noundef %nc, i64 noundef %kc, i64 noundef %ks, ptr noalias noundef %a, ptr noalias noundef %w, ptr noalias noundef %c, i64 noundef %cm_stride, i64 noundef %cn_stride, i64 noundef %a_offset, ptr noundef %zero, ptr noalias noundef align 64 dereferenceable(256) %params) #0 {
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
  %vsb01 = alloca <2 x i64>, align 16
  %vxb0 = alloca <2 x i64>, align 16
  %vxb1 = alloca <2 x i64>, align 16
  %vb23 = alloca <2 x i64>, align 16
  %vsb23 = alloca <2 x i64>, align 16
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
  %voutput_min = alloca <2 x i64>, align 16
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

do.body:                                          ; preds = %do.cond228, %if.end23
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

do.body25:                                        ; preds = %do.cond149, %do.body
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
  %62 = load <2 x i64>, ptr %va0, align 16, !tbaa !12
  %call76 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %61, <2 x i64> noundef %62)
  %call77 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call76, i32 noundef 8)
  store <2 x i64> %call77, ptr %vxa0, align 16, !tbaa !12
  %63 = load ptr, ptr %a0, align 8, !tbaa !9
  %add.ptr78 = getelementptr inbounds i8, ptr %63, i64 8
  store ptr %add.ptr78, ptr %a0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %va1) #6
  %64 = load ptr, ptr %a1, align 8, !tbaa !9
  %call79 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %64)
  store <2 x i64> %call79, ptr %va1, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxa1) #6
  %65 = load <2 x i64>, ptr %va1, align 16, !tbaa !12
  %66 = load <2 x i64>, ptr %va1, align 16, !tbaa !12
  %call80 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %65, <2 x i64> noundef %66)
  %call81 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call80, i32 noundef 8)
  store <2 x i64> %call81, ptr %vxa1, align 16, !tbaa !12
  %67 = load ptr, ptr %a1, align 8, !tbaa !9
  %add.ptr82 = getelementptr inbounds i8, ptr %67, i64 8
  store ptr %add.ptr82, ptr %a1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %va2) #6
  %68 = load ptr, ptr %a2, align 8, !tbaa !9
  %call83 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %68)
  store <2 x i64> %call83, ptr %va2, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxa2) #6
  %69 = load <2 x i64>, ptr %va2, align 16, !tbaa !12
  %70 = load <2 x i64>, ptr %va2, align 16, !tbaa !12
  %call84 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %69, <2 x i64> noundef %70)
  %call85 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call84, i32 noundef 8)
  store <2 x i64> %call85, ptr %vxa2, align 16, !tbaa !12
  %71 = load ptr, ptr %a2, align 8, !tbaa !9
  %add.ptr86 = getelementptr inbounds i8, ptr %71, i64 8
  store ptr %add.ptr86, ptr %a2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %va3) #6
  %72 = load ptr, ptr %a3, align 8, !tbaa !9
  %call87 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %72)
  store <2 x i64> %call87, ptr %va3, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxa3) #6
  %73 = load <2 x i64>, ptr %va3, align 16, !tbaa !12
  %74 = load <2 x i64>, ptr %va3, align 16, !tbaa !12
  %call88 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %73, <2 x i64> noundef %74)
  %call89 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call88, i32 noundef 8)
  store <2 x i64> %call89, ptr %vxa3, align 16, !tbaa !12
  %75 = load ptr, ptr %a3, align 8, !tbaa !9
  %add.ptr90 = getelementptr inbounds i8, ptr %75, i64 8
  store ptr %add.ptr90, ptr %a3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb01) #6
  %76 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call91 = call <2 x i64> @_mm_loadu_si128(ptr noundef %76)
  store <2 x i64> %call91, ptr %vb01, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vsb01) #6
  %call92 = call <2 x i64> @_mm_setzero_si128()
  %77 = load <2 x i64>, ptr %vb01, align 16, !tbaa !12
  %call93 = call <2 x i64> @_mm_cmpgt_epi8(<2 x i64> noundef %call92, <2 x i64> noundef %77)
  store <2 x i64> %call93, ptr %vsb01, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb0) #6
  %78 = load <2 x i64>, ptr %vb01, align 16, !tbaa !12
  %79 = load <2 x i64>, ptr %vsb01, align 16, !tbaa !12
  %call94 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %78, <2 x i64> noundef %79)
  store <2 x i64> %call94, ptr %vxb0, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb1) #6
  %80 = load <2 x i64>, ptr %vb01, align 16, !tbaa !12
  %81 = load <2 x i64>, ptr %vsb01, align 16, !tbaa !12
  %call95 = call <2 x i64> @_mm_unpackhi_epi8(<2 x i64> noundef %80, <2 x i64> noundef %81)
  store <2 x i64> %call95, ptr %vxb1, align 16, !tbaa !12
  %82 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %83 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %84 = load <2 x i64>, ptr %vxb0, align 16, !tbaa !12
  %call96 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %83, <2 x i64> noundef %84)
  %call97 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %82, <2 x i64> noundef %call96)
  store <2 x i64> %call97, ptr %vacc0x0123, align 16, !tbaa !12
  %85 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %86 = bitcast <2 x i64> %85 to <4 x i32>
  %permil = shufflevector <4 x i32> %86, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %87 = bitcast <4 x i32> %permil to <2 x i64>
  store <2 x i64> %87, ptr %vxa0, align 16, !tbaa !12
  %88 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %89 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %90 = load <2 x i64>, ptr %vxb0, align 16, !tbaa !12
  %call98 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %89, <2 x i64> noundef %90)
  %call99 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %88, <2 x i64> noundef %call98)
  store <2 x i64> %call99, ptr %vacc1x0123, align 16, !tbaa !12
  %91 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %92 = bitcast <2 x i64> %91 to <4 x i32>
  %permil100 = shufflevector <4 x i32> %92, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %93 = bitcast <4 x i32> %permil100 to <2 x i64>
  store <2 x i64> %93, ptr %vxa1, align 16, !tbaa !12
  %94 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %95 = load <2 x i64>, ptr %vxa2, align 16, !tbaa !12
  %96 = load <2 x i64>, ptr %vxb0, align 16, !tbaa !12
  %call101 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %95, <2 x i64> noundef %96)
  %call102 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %94, <2 x i64> noundef %call101)
  store <2 x i64> %call102, ptr %vacc2x0123, align 16, !tbaa !12
  %97 = load <2 x i64>, ptr %vxa2, align 16, !tbaa !12
  %98 = bitcast <2 x i64> %97 to <4 x i32>
  %permil103 = shufflevector <4 x i32> %98, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %99 = bitcast <4 x i32> %permil103 to <2 x i64>
  store <2 x i64> %99, ptr %vxa2, align 16, !tbaa !12
  %100 = load <2 x i64>, ptr %vacc3x0123, align 16, !tbaa !12
  %101 = load <2 x i64>, ptr %vxa3, align 16, !tbaa !12
  %102 = load <2 x i64>, ptr %vxb0, align 16, !tbaa !12
  %call104 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %101, <2 x i64> noundef %102)
  %call105 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %100, <2 x i64> noundef %call104)
  store <2 x i64> %call105, ptr %vacc3x0123, align 16, !tbaa !12
  %103 = load <2 x i64>, ptr %vxa3, align 16, !tbaa !12
  %104 = bitcast <2 x i64> %103 to <4 x i32>
  %permil106 = shufflevector <4 x i32> %104, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %105 = bitcast <4 x i32> %permil106 to <2 x i64>
  store <2 x i64> %105, ptr %vxa3, align 16, !tbaa !12
  %106 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %107 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %108 = load <2 x i64>, ptr %vxb1, align 16, !tbaa !12
  %call107 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %107, <2 x i64> noundef %108)
  %call108 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %106, <2 x i64> noundef %call107)
  store <2 x i64> %call108, ptr %vacc0x0123, align 16, !tbaa !12
  %109 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %110 = bitcast <2 x i64> %109 to <4 x i32>
  %permil109 = shufflevector <4 x i32> %110, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %111 = bitcast <4 x i32> %permil109 to <2 x i64>
  store <2 x i64> %111, ptr %vxa0, align 16, !tbaa !12
  %112 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %113 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %114 = load <2 x i64>, ptr %vxb1, align 16, !tbaa !12
  %call110 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %113, <2 x i64> noundef %114)
  %call111 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %112, <2 x i64> noundef %call110)
  store <2 x i64> %call111, ptr %vacc1x0123, align 16, !tbaa !12
  %115 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %116 = bitcast <2 x i64> %115 to <4 x i32>
  %permil112 = shufflevector <4 x i32> %116, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %117 = bitcast <4 x i32> %permil112 to <2 x i64>
  store <2 x i64> %117, ptr %vxa1, align 16, !tbaa !12
  %118 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %119 = load <2 x i64>, ptr %vxa2, align 16, !tbaa !12
  %120 = load <2 x i64>, ptr %vxb1, align 16, !tbaa !12
  %call113 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %119, <2 x i64> noundef %120)
  %call114 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %118, <2 x i64> noundef %call113)
  store <2 x i64> %call114, ptr %vacc2x0123, align 16, !tbaa !12
  %121 = load <2 x i64>, ptr %vxa2, align 16, !tbaa !12
  %122 = bitcast <2 x i64> %121 to <4 x i32>
  %permil115 = shufflevector <4 x i32> %122, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %123 = bitcast <4 x i32> %permil115 to <2 x i64>
  store <2 x i64> %123, ptr %vxa2, align 16, !tbaa !12
  %124 = load <2 x i64>, ptr %vacc3x0123, align 16, !tbaa !12
  %125 = load <2 x i64>, ptr %vxa3, align 16, !tbaa !12
  %126 = load <2 x i64>, ptr %vxb1, align 16, !tbaa !12
  %call116 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %125, <2 x i64> noundef %126)
  %call117 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %124, <2 x i64> noundef %call116)
  store <2 x i64> %call117, ptr %vacc3x0123, align 16, !tbaa !12
  %127 = load <2 x i64>, ptr %vxa3, align 16, !tbaa !12
  %128 = bitcast <2 x i64> %127 to <4 x i32>
  %permil118 = shufflevector <4 x i32> %128, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %129 = bitcast <4 x i32> %permil118 to <2 x i64>
  store <2 x i64> %129, ptr %vxa3, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb23) #6
  %130 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr119 = getelementptr inbounds i8, ptr %130, i64 16
  %call120 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr119)
  store <2 x i64> %call120, ptr %vb23, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vsb23) #6
  %call121 = call <2 x i64> @_mm_setzero_si128()
  %131 = load <2 x i64>, ptr %vb23, align 16, !tbaa !12
  %call122 = call <2 x i64> @_mm_cmpgt_epi8(<2 x i64> noundef %call121, <2 x i64> noundef %131)
  store <2 x i64> %call122, ptr %vsb23, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb2) #6
  %132 = load <2 x i64>, ptr %vb23, align 16, !tbaa !12
  %133 = load <2 x i64>, ptr %vsb23, align 16, !tbaa !12
  %call123 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %132, <2 x i64> noundef %133)
  store <2 x i64> %call123, ptr %vxb2, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb3) #6
  %134 = load <2 x i64>, ptr %vb23, align 16, !tbaa !12
  %135 = load <2 x i64>, ptr %vsb23, align 16, !tbaa !12
  %call124 = call <2 x i64> @_mm_unpackhi_epi8(<2 x i64> noundef %134, <2 x i64> noundef %135)
  store <2 x i64> %call124, ptr %vxb3, align 16, !tbaa !12
  %136 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %137 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %138 = load <2 x i64>, ptr %vxb2, align 16, !tbaa !12
  %call125 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %137, <2 x i64> noundef %138)
  %call126 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %136, <2 x i64> noundef %call125)
  store <2 x i64> %call126, ptr %vacc0x0123, align 16, !tbaa !12
  %139 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %140 = bitcast <2 x i64> %139 to <4 x i32>
  %permil127 = shufflevector <4 x i32> %140, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %141 = bitcast <4 x i32> %permil127 to <2 x i64>
  store <2 x i64> %141, ptr %vxa0, align 16, !tbaa !12
  %142 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %143 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %144 = load <2 x i64>, ptr %vxb2, align 16, !tbaa !12
  %call128 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %143, <2 x i64> noundef %144)
  %call129 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %142, <2 x i64> noundef %call128)
  store <2 x i64> %call129, ptr %vacc1x0123, align 16, !tbaa !12
  %145 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %146 = bitcast <2 x i64> %145 to <4 x i32>
  %permil130 = shufflevector <4 x i32> %146, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %147 = bitcast <4 x i32> %permil130 to <2 x i64>
  store <2 x i64> %147, ptr %vxa1, align 16, !tbaa !12
  %148 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %149 = load <2 x i64>, ptr %vxa2, align 16, !tbaa !12
  %150 = load <2 x i64>, ptr %vxb2, align 16, !tbaa !12
  %call131 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %149, <2 x i64> noundef %150)
  %call132 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %148, <2 x i64> noundef %call131)
  store <2 x i64> %call132, ptr %vacc2x0123, align 16, !tbaa !12
  %151 = load <2 x i64>, ptr %vxa2, align 16, !tbaa !12
  %152 = bitcast <2 x i64> %151 to <4 x i32>
  %permil133 = shufflevector <4 x i32> %152, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %153 = bitcast <4 x i32> %permil133 to <2 x i64>
  store <2 x i64> %153, ptr %vxa2, align 16, !tbaa !12
  %154 = load <2 x i64>, ptr %vacc3x0123, align 16, !tbaa !12
  %155 = load <2 x i64>, ptr %vxa3, align 16, !tbaa !12
  %156 = load <2 x i64>, ptr %vxb2, align 16, !tbaa !12
  %call134 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %155, <2 x i64> noundef %156)
  %call135 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %154, <2 x i64> noundef %call134)
  store <2 x i64> %call135, ptr %vacc3x0123, align 16, !tbaa !12
  %157 = load <2 x i64>, ptr %vxa3, align 16, !tbaa !12
  %158 = bitcast <2 x i64> %157 to <4 x i32>
  %permil136 = shufflevector <4 x i32> %158, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %159 = bitcast <4 x i32> %permil136 to <2 x i64>
  store <2 x i64> %159, ptr %vxa3, align 16, !tbaa !12
  %160 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %161 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %162 = load <2 x i64>, ptr %vxb3, align 16, !tbaa !12
  %call137 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %161, <2 x i64> noundef %162)
  %call138 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %160, <2 x i64> noundef %call137)
  store <2 x i64> %call138, ptr %vacc0x0123, align 16, !tbaa !12
  %163 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %164 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %165 = load <2 x i64>, ptr %vxb3, align 16, !tbaa !12
  %call139 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %164, <2 x i64> noundef %165)
  %call140 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %163, <2 x i64> noundef %call139)
  store <2 x i64> %call140, ptr %vacc1x0123, align 16, !tbaa !12
  %166 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %167 = load <2 x i64>, ptr %vxa2, align 16, !tbaa !12
  %168 = load <2 x i64>, ptr %vxb3, align 16, !tbaa !12
  %call141 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %167, <2 x i64> noundef %168)
  %call142 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %166, <2 x i64> noundef %call141)
  store <2 x i64> %call142, ptr %vacc2x0123, align 16, !tbaa !12
  %169 = load <2 x i64>, ptr %vacc3x0123, align 16, !tbaa !12
  %170 = load <2 x i64>, ptr %vxa3, align 16, !tbaa !12
  %171 = load <2 x i64>, ptr %vxb3, align 16, !tbaa !12
  %call143 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %170, <2 x i64> noundef %171)
  %call144 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %169, <2 x i64> noundef %call143)
  store <2 x i64> %call144, ptr %vacc3x0123, align 16, !tbaa !12
  %172 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr145 = getelementptr inbounds i8, ptr %172, i64 32
  store ptr %add.ptr145, ptr %w.addr, align 8, !tbaa !9
  %173 = load i64, ptr %k, align 8, !tbaa !5
  %sub = sub i64 %173, 8
  store i64 %sub, ptr %k, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vsb23) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb23) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb0) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vsb01) #6
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
  %174 = load i64, ptr %k, align 8, !tbaa !5
  %cmp146 = icmp ne i64 %174, 0
  br i1 %cmp146, label %do.body74, label %do.end, !llvm.loop !13

do.end:                                           ; preds = %do.cond
  %175 = load i64, ptr %p, align 8, !tbaa !5
  %sub148 = sub i64 %175, 32
  store i64 %sub148, ptr %p, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a0) #6
  br label %do.cond149

do.cond149:                                       ; preds = %do.end
  %176 = load i64, ptr %p, align 8, !tbaa !5
  %cmp150 = icmp ne i64 %176, 0
  br i1 %cmp150, label %do.body25, label %do.end152, !llvm.loop !15

do.end152:                                        ; preds = %do.cond149
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled0x0123) #6
  %177 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %call153 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %177)
  store <4 x float> %call153, ptr %vscaled0x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled1x0123) #6
  %178 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %call154 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %178)
  store <4 x float> %call154, ptr %vscaled1x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled2x0123) #6
  %179 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %call155 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %179)
  store <4 x float> %call155, ptr %vscaled2x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled3x0123) #6
  %180 = load <2 x i64>, ptr %vacc3x0123, align 16, !tbaa !12
  %call156 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %180)
  store <4 x float> %call156, ptr %vscaled3x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscale) #6
  %181 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale = getelementptr inbounds %struct.anon.2, ptr %181, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x float], ptr %scale, i64 0, i64 0
  %call157 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay)
  store <4 x float> %call157, ptr %vscale, align 16, !tbaa !12
  %182 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !12
  %183 = load <4 x float>, ptr %vscale, align 16, !tbaa !12
  %call158 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %182, <4 x float> noundef %183)
  store <4 x float> %call158, ptr %vscaled0x0123, align 16, !tbaa !12
  %184 = load <4 x float>, ptr %vscaled1x0123, align 16, !tbaa !12
  %185 = load <4 x float>, ptr %vscale, align 16, !tbaa !12
  %call159 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %184, <4 x float> noundef %185)
  store <4 x float> %call159, ptr %vscaled1x0123, align 16, !tbaa !12
  %186 = load <4 x float>, ptr %vscaled2x0123, align 16, !tbaa !12
  %187 = load <4 x float>, ptr %vscale, align 16, !tbaa !12
  %call160 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %186, <4 x float> noundef %187)
  store <4 x float> %call160, ptr %vscaled2x0123, align 16, !tbaa !12
  %188 = load <4 x float>, ptr %vscaled3x0123, align 16, !tbaa !12
  %189 = load <4 x float>, ptr %vscale, align 16, !tbaa !12
  %call161 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %188, <4 x float> noundef %189)
  store <4 x float> %call161, ptr %vscaled3x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_max_less_zero_point) #6
  %190 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max_less_zero_point = getelementptr inbounds %struct.anon.2, ptr %190, i32 0, i32 1
  %arraydecay162 = getelementptr inbounds [4 x float], ptr %output_max_less_zero_point, i64 0, i64 0
  %call163 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay162)
  store <4 x float> %call163, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %191 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !12
  %192 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %call164 = call <4 x float> @_mm_min_ps(<4 x float> noundef %191, <4 x float> noundef %192)
  store <4 x float> %call164, ptr %vscaled0x0123, align 16, !tbaa !12
  %193 = load <4 x float>, ptr %vscaled1x0123, align 16, !tbaa !12
  %194 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %call165 = call <4 x float> @_mm_min_ps(<4 x float> noundef %193, <4 x float> noundef %194)
  store <4 x float> %call165, ptr %vscaled1x0123, align 16, !tbaa !12
  %195 = load <4 x float>, ptr %vscaled2x0123, align 16, !tbaa !12
  %196 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %call166 = call <4 x float> @_mm_min_ps(<4 x float> noundef %195, <4 x float> noundef %196)
  store <4 x float> %call166, ptr %vscaled2x0123, align 16, !tbaa !12
  %197 = load <4 x float>, ptr %vscaled3x0123, align 16, !tbaa !12
  %198 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %call167 = call <4 x float> @_mm_min_ps(<4 x float> noundef %197, <4 x float> noundef %198)
  store <4 x float> %call167, ptr %vscaled3x0123, align 16, !tbaa !12
  %199 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !12
  %call168 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %199)
  store <2 x i64> %call168, ptr %vacc0x0123, align 16, !tbaa !12
  %200 = load <4 x float>, ptr %vscaled1x0123, align 16, !tbaa !12
  %call169 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %200)
  store <2 x i64> %call169, ptr %vacc1x0123, align 16, !tbaa !12
  %201 = load <4 x float>, ptr %vscaled2x0123, align 16, !tbaa !12
  %call170 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %201)
  store <2 x i64> %call170, ptr %vacc2x0123, align 16, !tbaa !12
  %202 = load <4 x float>, ptr %vscaled3x0123, align 16, !tbaa !12
  %call171 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %202)
  store <2 x i64> %call171, ptr %vacc3x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_zero_point) #6
  %203 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_zero_point = getelementptr inbounds %struct.anon.2, ptr %203, i32 0, i32 2
  %arraydecay172 = getelementptr inbounds [8 x i16], ptr %output_zero_point, i64 0, i64 0
  %call173 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay172)
  store <2 x i64> %call173, ptr %voutput_zero_point, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc01x0123) #6
  %204 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %205 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %call174 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %204, <2 x i64> noundef %205)
  %206 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !12
  %call175 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call174, <2 x i64> noundef %206)
  store <2 x i64> %call175, ptr %vacc01x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc23x0123) #6
  %207 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %208 = load <2 x i64>, ptr %vacc3x0123, align 16, !tbaa !12
  %call176 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %207, <2 x i64> noundef %208)
  %209 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !12
  %call177 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call176, <2 x i64> noundef %209)
  store <2 x i64> %call177, ptr %vacc23x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_min) #6
  %210 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min = getelementptr inbounds %struct.anon.2, ptr %210, i32 0, i32 3
  %arraydecay178 = getelementptr inbounds [8 x i16], ptr %output_min, i64 0, i64 0
  %call179 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay178)
  store <2 x i64> %call179, ptr %voutput_min, align 16, !tbaa !12
  %211 = load <2 x i64>, ptr %vacc01x0123, align 16, !tbaa !12
  %212 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !12
  %call180 = call <2 x i64> @_mm_max_epi16(<2 x i64> noundef %211, <2 x i64> noundef %212)
  store <2 x i64> %call180, ptr %vacc01x0123, align 16, !tbaa !12
  %213 = load <2 x i64>, ptr %vacc23x0123, align 16, !tbaa !12
  %214 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !12
  %call181 = call <2 x i64> @_mm_max_epi16(<2 x i64> noundef %213, <2 x i64> noundef %214)
  store <2 x i64> %call181, ptr %vacc23x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout) #6
  %215 = load <2 x i64>, ptr %vacc01x0123, align 16, !tbaa !12
  %216 = load <2 x i64>, ptr %vacc23x0123, align 16, !tbaa !12
  %call182 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %215, <2 x i64> noundef %216)
  store <2 x i64> %call182, ptr %vout, align 16, !tbaa !12
  %217 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp183 = icmp uge i64 %217, 4
  br i1 %cmp183, label %if.then185, label %if.else

if.then185:                                       ; preds = %do.end152
  %218 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %219 = bitcast <2 x i64> %218 to <4 x i32>
  %permil186 = shufflevector <4 x i32> %219, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %220 = bitcast <4 x i32> %permil186 to <2 x i64>
  %call187 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %220)
  %221 = load ptr, ptr %c3, align 8, !tbaa !9
  store i32 %call187, ptr %221, align 4, !tbaa !16
  %222 = load ptr, ptr %c3, align 8, !tbaa !9
  %223 = ptrtoint ptr %222 to i64
  %224 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add188 = add i64 %223, %224
  %225 = inttoptr i64 %add188 to ptr
  store ptr %225, ptr %c3, align 8, !tbaa !9
  %226 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %227 = bitcast <2 x i64> %226 to <4 x i32>
  %permil189 = shufflevector <4 x i32> %227, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %228 = bitcast <4 x i32> %permil189 to <2 x i64>
  %call190 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %228)
  %229 = load ptr, ptr %c2, align 8, !tbaa !9
  store i32 %call190, ptr %229, align 4, !tbaa !16
  %230 = load ptr, ptr %c2, align 8, !tbaa !9
  %231 = ptrtoint ptr %230 to i64
  %232 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add191 = add i64 %231, %232
  %233 = inttoptr i64 %add191 to ptr
  store ptr %233, ptr %c2, align 8, !tbaa !9
  %234 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %235 = bitcast <2 x i64> %234 to <4 x i32>
  %permil192 = shufflevector <4 x i32> %235, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %236 = bitcast <4 x i32> %permil192 to <2 x i64>
  %call193 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %236)
  %237 = load ptr, ptr %c1, align 8, !tbaa !9
  store i32 %call193, ptr %237, align 4, !tbaa !16
  %238 = load ptr, ptr %c1, align 8, !tbaa !9
  %239 = ptrtoint ptr %238 to i64
  %240 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add194 = add i64 %239, %240
  %241 = inttoptr i64 %add194 to ptr
  store ptr %241, ptr %c1, align 8, !tbaa !9
  %242 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %call195 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %242)
  %243 = load ptr, ptr %c0, align 8, !tbaa !9
  store i32 %call195, ptr %243, align 4, !tbaa !16
  %244 = load ptr, ptr %c0, align 8, !tbaa !9
  %245 = ptrtoint ptr %244 to i64
  %246 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add196 = add i64 %245, %246
  %247 = inttoptr i64 %add196 to ptr
  store ptr %247, ptr %c0, align 8, !tbaa !9
  %248 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %249 = ptrtoint ptr %248 to i64
  %250 = load i64, ptr %ks.addr, align 8, !tbaa !5
  %sub197 = sub i64 %249, %250
  %251 = inttoptr i64 %sub197 to ptr
  store ptr %251, ptr %a.addr, align 8, !tbaa !9
  %252 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %sub198 = sub i64 %252, 4
  store i64 %sub198, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end227

if.else:                                          ; preds = %do.end152
  %253 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and = and i64 %253, 2
  %tobool199 = icmp ne i64 %and, 0
  br i1 %tobool199, label %if.then200, label %if.end214

if.then200:                                       ; preds = %if.else
  %254 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %255 = bitcast <2 x i64> %254 to <8 x i16>
  %256 = extractelement <8 x i16> %255, i64 6
  %conv201 = zext i16 %256 to i32
  %conv202 = trunc i32 %conv201 to i16
  %257 = load ptr, ptr %c3, align 8, !tbaa !9
  store i16 %conv202, ptr %257, align 2, !tbaa !18
  %258 = load ptr, ptr %c3, align 8, !tbaa !9
  %add.ptr203 = getelementptr inbounds i8, ptr %258, i64 2
  store ptr %add.ptr203, ptr %c3, align 8, !tbaa !9
  %259 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %260 = bitcast <2 x i64> %259 to <8 x i16>
  %261 = extractelement <8 x i16> %260, i64 4
  %conv204 = zext i16 %261 to i32
  %conv205 = trunc i32 %conv204 to i16
  %262 = load ptr, ptr %c2, align 8, !tbaa !9
  store i16 %conv205, ptr %262, align 2, !tbaa !18
  %263 = load ptr, ptr %c2, align 8, !tbaa !9
  %add.ptr206 = getelementptr inbounds i8, ptr %263, i64 2
  store ptr %add.ptr206, ptr %c2, align 8, !tbaa !9
  %264 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %265 = bitcast <2 x i64> %264 to <8 x i16>
  %266 = extractelement <8 x i16> %265, i64 2
  %conv207 = zext i16 %266 to i32
  %conv208 = trunc i32 %conv207 to i16
  %267 = load ptr, ptr %c1, align 8, !tbaa !9
  store i16 %conv208, ptr %267, align 2, !tbaa !18
  %268 = load ptr, ptr %c1, align 8, !tbaa !9
  %add.ptr209 = getelementptr inbounds i8, ptr %268, i64 2
  store ptr %add.ptr209, ptr %c1, align 8, !tbaa !9
  %269 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %270 = bitcast <2 x i64> %269 to <8 x i16>
  %271 = extractelement <8 x i16> %270, i64 0
  %conv210 = zext i16 %271 to i32
  %conv211 = trunc i32 %conv210 to i16
  %272 = load ptr, ptr %c0, align 8, !tbaa !9
  store i16 %conv211, ptr %272, align 2, !tbaa !18
  %273 = load ptr, ptr %c0, align 8, !tbaa !9
  %add.ptr212 = getelementptr inbounds i8, ptr %273, i64 2
  store ptr %add.ptr212, ptr %c0, align 8, !tbaa !9
  %274 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %call213 = call <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %274, i32 noundef 16)
  store <2 x i64> %call213, ptr %vout, align 16, !tbaa !12
  br label %if.end214

if.end214:                                        ; preds = %if.then200, %if.else
  %275 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and215 = and i64 %275, 1
  %tobool216 = icmp ne i64 %and215, 0
  br i1 %tobool216, label %if.then217, label %if.end226

if.then217:                                       ; preds = %if.end214
  %276 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %277 = bitcast <2 x i64> %276 to <8 x i16>
  %278 = extractelement <8 x i16> %277, i64 6
  %conv218 = zext i16 %278 to i32
  %conv219 = trunc i32 %conv218 to i8
  %279 = load ptr, ptr %c3, align 8, !tbaa !9
  store i8 %conv219, ptr %279, align 1, !tbaa !12
  %280 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %281 = bitcast <2 x i64> %280 to <8 x i16>
  %282 = extractelement <8 x i16> %281, i64 4
  %conv220 = zext i16 %282 to i32
  %conv221 = trunc i32 %conv220 to i8
  %283 = load ptr, ptr %c2, align 8, !tbaa !9
  store i8 %conv221, ptr %283, align 1, !tbaa !12
  %284 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %285 = bitcast <2 x i64> %284 to <8 x i16>
  %286 = extractelement <8 x i16> %285, i64 2
  %conv222 = zext i16 %286 to i32
  %conv223 = trunc i32 %conv222 to i8
  %287 = load ptr, ptr %c1, align 8, !tbaa !9
  store i8 %conv223, ptr %287, align 1, !tbaa !12
  %288 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %call224 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %288)
  %conv225 = trunc i32 %call224 to i8
  %289 = load ptr, ptr %c0, align 8, !tbaa !9
  store i8 %conv225, ptr %289, align 1, !tbaa !12
  br label %if.end226

if.end226:                                        ; preds = %if.then217, %if.end214
  store i64 0, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end227

if.end227:                                        ; preds = %if.end226, %if.then185
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_min) #6
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
  br label %do.cond228

do.cond228:                                       ; preds = %if.end227
  %290 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp229 = icmp ne i64 %290, 0
  br i1 %cmp229, label %do.body, label %do.end231, !llvm.loop !20

do.end231:                                        ; preds = %do.cond228
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
!15 = distinct !{!15, !14}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !7, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"short", !7, i64 0}
!20 = distinct !{!20, !14}
