; ModuleID = 'samples/416.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qu8-igemm/gen/4x4c2-minmax-fp32-avx-ld64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.2 = type { [8 x i16], [4 x float], [4 x float], [8 x i16], [16 x i8] }
%struct.__loadu_si128 = type { <2 x i64> }
%struct.__mm_loadl_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qu8_igemm_minmax_fp32_ukernel_4x4c2__avx_ld64(i64 noundef %mr, i64 noundef %nc, i64 noundef %kc, i64 noundef %ks, ptr noalias noundef %a, ptr noalias noundef %w, ptr noalias noundef %c, i64 noundef %cm_stride, i64 noundef %cn_stride, i64 noundef %a_offset, ptr noundef %zero, ptr noalias noundef align 64 dereferenceable(320) %params) #0 {
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
  %vb_zero_point = alloca <2 x i64>, align 16
  %va0 = alloca <2 x i64>, align 16
  %vxa0 = alloca <2 x i64>, align 16
  %va1 = alloca <2 x i64>, align 16
  %vxa1 = alloca <2 x i64>, align 16
  %va2 = alloca <2 x i64>, align 16
  %vxa2 = alloca <2 x i64>, align 16
  %va3 = alloca <2 x i64>, align 16
  %vxa3 = alloca <2 x i64>, align 16
  %vb0 = alloca <2 x i64>, align 16
  %vxb0 = alloca <2 x i64>, align 16
  %vb1 = alloca <2 x i64>, align 16
  %vxb1 = alloca <2 x i64>, align 16
  %vb2 = alloca <2 x i64>, align 16
  %vxb2 = alloca <2 x i64>, align 16
  %vb3 = alloca <2 x i64>, align 16
  %vxb3 = alloca <2 x i64>, align 16
  %va0155 = alloca <2 x i64>, align 16
  %vxa0157 = alloca <2 x i64>, align 16
  %va1160 = alloca <2 x i64>, align 16
  %vxa1162 = alloca <2 x i64>, align 16
  %va2165 = alloca <2 x i64>, align 16
  %vxa2167 = alloca <2 x i64>, align 16
  %va3170 = alloca <2 x i64>, align 16
  %vxa3172 = alloca <2 x i64>, align 16
  %vb0175 = alloca <2 x i64>, align 16
  %vxb0178 = alloca <2 x i64>, align 16
  %vb1196 = alloca <2 x i64>, align 16
  %vxb1199 = alloca <2 x i64>, align 16
  %vb2217 = alloca <2 x i64>, align 16
  %vxb2220 = alloca <2 x i64>, align 16
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
  %call = call i64 @round_up_po2(i64 noundef %0, i64 noundef 2)
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

do.body:                                          ; preds = %do.cond310, %if.end23
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

do.body25:                                        ; preds = %do.cond, %do.body
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb_zero_point) #6
  %60 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %kernel_zero_point = getelementptr inbounds %struct.anon.2, ptr %60, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i16], ptr %kernel_zero_point, i64 0, i64 0
  %call74 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay)
  store <2 x i64> %call74, ptr %vb_zero_point, align 16, !tbaa !12
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end72
  %61 = load i64, ptr %k, align 8, !tbaa !5
  %cmp75 = icmp uge i64 %61, 8
  br i1 %cmp75, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %va0) #6
  %62 = load ptr, ptr %a0, align 8, !tbaa !9
  %call77 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %62)
  store <2 x i64> %call77, ptr %va0, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxa0) #6
  %63 = load <2 x i64>, ptr %va0, align 16, !tbaa !12
  %call78 = call <2 x i64> @_mm_cvtepu8_epi16(<2 x i64> noundef %63)
  store <2 x i64> %call78, ptr %vxa0, align 16, !tbaa !12
  %64 = load ptr, ptr %a0, align 8, !tbaa !9
  %add.ptr79 = getelementptr inbounds i8, ptr %64, i64 8
  store ptr %add.ptr79, ptr %a0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %va1) #6
  %65 = load ptr, ptr %a1, align 8, !tbaa !9
  %call80 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %65)
  store <2 x i64> %call80, ptr %va1, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxa1) #6
  %66 = load <2 x i64>, ptr %va1, align 16, !tbaa !12
  %call81 = call <2 x i64> @_mm_cvtepu8_epi16(<2 x i64> noundef %66)
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
  %call84 = call <2 x i64> @_mm_cvtepu8_epi16(<2 x i64> noundef %69)
  store <2 x i64> %call84, ptr %vxa2, align 16, !tbaa !12
  %70 = load ptr, ptr %a2, align 8, !tbaa !9
  %add.ptr85 = getelementptr inbounds i8, ptr %70, i64 8
  store ptr %add.ptr85, ptr %a2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %va3) #6
  %71 = load ptr, ptr %a3, align 8, !tbaa !9
  %call86 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %71)
  store <2 x i64> %call86, ptr %va3, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxa3) #6
  %72 = load <2 x i64>, ptr %va3, align 16, !tbaa !12
  %call87 = call <2 x i64> @_mm_cvtepu8_epi16(<2 x i64> noundef %72)
  store <2 x i64> %call87, ptr %vxa3, align 16, !tbaa !12
  %73 = load ptr, ptr %a3, align 8, !tbaa !9
  %add.ptr88 = getelementptr inbounds i8, ptr %73, i64 8
  store ptr %add.ptr88, ptr %a3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb0) #6
  %74 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call89 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %74)
  store <2 x i64> %call89, ptr %vb0, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb0) #6
  %75 = load <2 x i64>, ptr %vb0, align 16, !tbaa !12
  %call90 = call <2 x i64> @_mm_cvtepu8_epi16(<2 x i64> noundef %75)
  %76 = load <2 x i64>, ptr %vb_zero_point, align 16, !tbaa !12
  %call91 = call <2 x i64> @_mm_sub_epi16(<2 x i64> noundef %call90, <2 x i64> noundef %76)
  store <2 x i64> %call91, ptr %vxb0, align 16, !tbaa !12
  %77 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %78 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %79 = bitcast <2 x i64> %78 to <4 x i32>
  %permil = shufflevector <4 x i32> %79, <4 x i32> poison, <4 x i32> zeroinitializer
  %80 = bitcast <4 x i32> %permil to <2 x i64>
  %81 = load <2 x i64>, ptr %vxb0, align 16, !tbaa !12
  %call92 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %80, <2 x i64> noundef %81)
  %call93 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %77, <2 x i64> noundef %call92)
  store <2 x i64> %call93, ptr %vacc0x0123, align 16, !tbaa !12
  %82 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %83 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %84 = bitcast <2 x i64> %83 to <4 x i32>
  %permil94 = shufflevector <4 x i32> %84, <4 x i32> poison, <4 x i32> zeroinitializer
  %85 = bitcast <4 x i32> %permil94 to <2 x i64>
  %86 = load <2 x i64>, ptr %vxb0, align 16, !tbaa !12
  %call95 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %85, <2 x i64> noundef %86)
  %call96 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %82, <2 x i64> noundef %call95)
  store <2 x i64> %call96, ptr %vacc1x0123, align 16, !tbaa !12
  %87 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %88 = load <2 x i64>, ptr %vxa2, align 16, !tbaa !12
  %89 = bitcast <2 x i64> %88 to <4 x i32>
  %permil97 = shufflevector <4 x i32> %89, <4 x i32> poison, <4 x i32> zeroinitializer
  %90 = bitcast <4 x i32> %permil97 to <2 x i64>
  %91 = load <2 x i64>, ptr %vxb0, align 16, !tbaa !12
  %call98 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %90, <2 x i64> noundef %91)
  %call99 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %87, <2 x i64> noundef %call98)
  store <2 x i64> %call99, ptr %vacc2x0123, align 16, !tbaa !12
  %92 = load <2 x i64>, ptr %vacc3x0123, align 16, !tbaa !12
  %93 = load <2 x i64>, ptr %vxa3, align 16, !tbaa !12
  %94 = bitcast <2 x i64> %93 to <4 x i32>
  %permil100 = shufflevector <4 x i32> %94, <4 x i32> poison, <4 x i32> zeroinitializer
  %95 = bitcast <4 x i32> %permil100 to <2 x i64>
  %96 = load <2 x i64>, ptr %vxb0, align 16, !tbaa !12
  %call101 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %95, <2 x i64> noundef %96)
  %call102 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %92, <2 x i64> noundef %call101)
  store <2 x i64> %call102, ptr %vacc3x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb1) #6
  %97 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr103 = getelementptr inbounds i8, ptr %97, i64 8
  %call104 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr103)
  store <2 x i64> %call104, ptr %vb1, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb1) #6
  %98 = load <2 x i64>, ptr %vb1, align 16, !tbaa !12
  %call105 = call <2 x i64> @_mm_cvtepu8_epi16(<2 x i64> noundef %98)
  %99 = load <2 x i64>, ptr %vb_zero_point, align 16, !tbaa !12
  %call106 = call <2 x i64> @_mm_sub_epi16(<2 x i64> noundef %call105, <2 x i64> noundef %99)
  store <2 x i64> %call106, ptr %vxb1, align 16, !tbaa !12
  %100 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %101 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %102 = bitcast <2 x i64> %101 to <4 x i32>
  %permil107 = shufflevector <4 x i32> %102, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %103 = bitcast <4 x i32> %permil107 to <2 x i64>
  %104 = load <2 x i64>, ptr %vxb1, align 16, !tbaa !12
  %call108 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %103, <2 x i64> noundef %104)
  %call109 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %100, <2 x i64> noundef %call108)
  store <2 x i64> %call109, ptr %vacc0x0123, align 16, !tbaa !12
  %105 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %106 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %107 = bitcast <2 x i64> %106 to <4 x i32>
  %permil110 = shufflevector <4 x i32> %107, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %108 = bitcast <4 x i32> %permil110 to <2 x i64>
  %109 = load <2 x i64>, ptr %vxb1, align 16, !tbaa !12
  %call111 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %108, <2 x i64> noundef %109)
  %call112 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %105, <2 x i64> noundef %call111)
  store <2 x i64> %call112, ptr %vacc1x0123, align 16, !tbaa !12
  %110 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %111 = load <2 x i64>, ptr %vxa2, align 16, !tbaa !12
  %112 = bitcast <2 x i64> %111 to <4 x i32>
  %permil113 = shufflevector <4 x i32> %112, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %113 = bitcast <4 x i32> %permil113 to <2 x i64>
  %114 = load <2 x i64>, ptr %vxb1, align 16, !tbaa !12
  %call114 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %113, <2 x i64> noundef %114)
  %call115 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %110, <2 x i64> noundef %call114)
  store <2 x i64> %call115, ptr %vacc2x0123, align 16, !tbaa !12
  %115 = load <2 x i64>, ptr %vacc3x0123, align 16, !tbaa !12
  %116 = load <2 x i64>, ptr %vxa3, align 16, !tbaa !12
  %117 = bitcast <2 x i64> %116 to <4 x i32>
  %permil116 = shufflevector <4 x i32> %117, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %118 = bitcast <4 x i32> %permil116 to <2 x i64>
  %119 = load <2 x i64>, ptr %vxb1, align 16, !tbaa !12
  %call117 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %118, <2 x i64> noundef %119)
  %call118 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %115, <2 x i64> noundef %call117)
  store <2 x i64> %call118, ptr %vacc3x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb2) #6
  %120 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr119 = getelementptr inbounds i8, ptr %120, i64 16
  %call120 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr119)
  store <2 x i64> %call120, ptr %vb2, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb2) #6
  %121 = load <2 x i64>, ptr %vb2, align 16, !tbaa !12
  %call121 = call <2 x i64> @_mm_cvtepu8_epi16(<2 x i64> noundef %121)
  %122 = load <2 x i64>, ptr %vb_zero_point, align 16, !tbaa !12
  %call122 = call <2 x i64> @_mm_sub_epi16(<2 x i64> noundef %call121, <2 x i64> noundef %122)
  store <2 x i64> %call122, ptr %vxb2, align 16, !tbaa !12
  %123 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %124 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %125 = bitcast <2 x i64> %124 to <4 x i32>
  %permil123 = shufflevector <4 x i32> %125, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %126 = bitcast <4 x i32> %permil123 to <2 x i64>
  %127 = load <2 x i64>, ptr %vxb2, align 16, !tbaa !12
  %call124 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %126, <2 x i64> noundef %127)
  %call125 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %123, <2 x i64> noundef %call124)
  store <2 x i64> %call125, ptr %vacc0x0123, align 16, !tbaa !12
  %128 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %129 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %130 = bitcast <2 x i64> %129 to <4 x i32>
  %permil126 = shufflevector <4 x i32> %130, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %131 = bitcast <4 x i32> %permil126 to <2 x i64>
  %132 = load <2 x i64>, ptr %vxb2, align 16, !tbaa !12
  %call127 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %131, <2 x i64> noundef %132)
  %call128 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %128, <2 x i64> noundef %call127)
  store <2 x i64> %call128, ptr %vacc1x0123, align 16, !tbaa !12
  %133 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %134 = load <2 x i64>, ptr %vxa2, align 16, !tbaa !12
  %135 = bitcast <2 x i64> %134 to <4 x i32>
  %permil129 = shufflevector <4 x i32> %135, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %136 = bitcast <4 x i32> %permil129 to <2 x i64>
  %137 = load <2 x i64>, ptr %vxb2, align 16, !tbaa !12
  %call130 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %136, <2 x i64> noundef %137)
  %call131 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %133, <2 x i64> noundef %call130)
  store <2 x i64> %call131, ptr %vacc2x0123, align 16, !tbaa !12
  %138 = load <2 x i64>, ptr %vacc3x0123, align 16, !tbaa !12
  %139 = load <2 x i64>, ptr %vxa3, align 16, !tbaa !12
  %140 = bitcast <2 x i64> %139 to <4 x i32>
  %permil132 = shufflevector <4 x i32> %140, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %141 = bitcast <4 x i32> %permil132 to <2 x i64>
  %142 = load <2 x i64>, ptr %vxb2, align 16, !tbaa !12
  %call133 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %141, <2 x i64> noundef %142)
  %call134 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %138, <2 x i64> noundef %call133)
  store <2 x i64> %call134, ptr %vacc3x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb3) #6
  %143 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr135 = getelementptr inbounds i8, ptr %143, i64 24
  %call136 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr135)
  store <2 x i64> %call136, ptr %vb3, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb3) #6
  %144 = load <2 x i64>, ptr %vb3, align 16, !tbaa !12
  %call137 = call <2 x i64> @_mm_cvtepu8_epi16(<2 x i64> noundef %144)
  %145 = load <2 x i64>, ptr %vb_zero_point, align 16, !tbaa !12
  %call138 = call <2 x i64> @_mm_sub_epi16(<2 x i64> noundef %call137, <2 x i64> noundef %145)
  store <2 x i64> %call138, ptr %vxb3, align 16, !tbaa !12
  %146 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %147 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !12
  %148 = bitcast <2 x i64> %147 to <4 x i32>
  %permil139 = shufflevector <4 x i32> %148, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %149 = bitcast <4 x i32> %permil139 to <2 x i64>
  %150 = load <2 x i64>, ptr %vxb3, align 16, !tbaa !12
  %call140 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %149, <2 x i64> noundef %150)
  %call141 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %146, <2 x i64> noundef %call140)
  store <2 x i64> %call141, ptr %vacc0x0123, align 16, !tbaa !12
  %151 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %152 = load <2 x i64>, ptr %vxa1, align 16, !tbaa !12
  %153 = bitcast <2 x i64> %152 to <4 x i32>
  %permil142 = shufflevector <4 x i32> %153, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %154 = bitcast <4 x i32> %permil142 to <2 x i64>
  %155 = load <2 x i64>, ptr %vxb3, align 16, !tbaa !12
  %call143 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %154, <2 x i64> noundef %155)
  %call144 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %151, <2 x i64> noundef %call143)
  store <2 x i64> %call144, ptr %vacc1x0123, align 16, !tbaa !12
  %156 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %157 = load <2 x i64>, ptr %vxa2, align 16, !tbaa !12
  %158 = bitcast <2 x i64> %157 to <4 x i32>
  %permil145 = shufflevector <4 x i32> %158, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %159 = bitcast <4 x i32> %permil145 to <2 x i64>
  %160 = load <2 x i64>, ptr %vxb3, align 16, !tbaa !12
  %call146 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %159, <2 x i64> noundef %160)
  %call147 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %156, <2 x i64> noundef %call146)
  store <2 x i64> %call147, ptr %vacc2x0123, align 16, !tbaa !12
  %161 = load <2 x i64>, ptr %vacc3x0123, align 16, !tbaa !12
  %162 = load <2 x i64>, ptr %vxa3, align 16, !tbaa !12
  %163 = bitcast <2 x i64> %162 to <4 x i32>
  %permil148 = shufflevector <4 x i32> %163, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %164 = bitcast <4 x i32> %permil148 to <2 x i64>
  %165 = load <2 x i64>, ptr %vxb3, align 16, !tbaa !12
  %call149 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %164, <2 x i64> noundef %165)
  %call150 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %161, <2 x i64> noundef %call149)
  store <2 x i64> %call150, ptr %vacc3x0123, align 16, !tbaa !12
  %166 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr151 = getelementptr inbounds i8, ptr %166, i64 32
  store ptr %add.ptr151, ptr %w.addr, align 8, !tbaa !9
  %167 = load i64, ptr %k, align 8, !tbaa !5
  %sub = sub i64 %167, 8
  store i64 %sub, ptr %k, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb0) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb0) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxa3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %va3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxa2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %va2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxa1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %va1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxa0) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %va0) #6
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %168 = load i64, ptr %k, align 8, !tbaa !5
  %cmp152 = icmp ne i64 %168, 0
  br i1 %cmp152, label %if.then154, label %if.end237

if.then154:                                       ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %va0155) #6
  %169 = load ptr, ptr %a0, align 8, !tbaa !9
  %call156 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %169)
  store <2 x i64> %call156, ptr %va0155, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxa0157) #6
  %170 = load <2 x i64>, ptr %va0155, align 16, !tbaa !12
  %call158 = call <2 x i64> @_mm_cvtepu8_epi16(<2 x i64> noundef %170)
  store <2 x i64> %call158, ptr %vxa0157, align 16, !tbaa !12
  %171 = load ptr, ptr %a0, align 8, !tbaa !9
  %172 = ptrtoint ptr %171 to i64
  %173 = load i64, ptr %k, align 8, !tbaa !5
  %add159 = add i64 %172, %173
  %174 = inttoptr i64 %add159 to ptr
  store ptr %174, ptr %a0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %va1160) #6
  %175 = load ptr, ptr %a1, align 8, !tbaa !9
  %call161 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %175)
  store <2 x i64> %call161, ptr %va1160, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxa1162) #6
  %176 = load <2 x i64>, ptr %va1160, align 16, !tbaa !12
  %call163 = call <2 x i64> @_mm_cvtepu8_epi16(<2 x i64> noundef %176)
  store <2 x i64> %call163, ptr %vxa1162, align 16, !tbaa !12
  %177 = load ptr, ptr %a1, align 8, !tbaa !9
  %178 = ptrtoint ptr %177 to i64
  %179 = load i64, ptr %k, align 8, !tbaa !5
  %add164 = add i64 %178, %179
  %180 = inttoptr i64 %add164 to ptr
  store ptr %180, ptr %a1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %va2165) #6
  %181 = load ptr, ptr %a2, align 8, !tbaa !9
  %call166 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %181)
  store <2 x i64> %call166, ptr %va2165, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxa2167) #6
  %182 = load <2 x i64>, ptr %va2165, align 16, !tbaa !12
  %call168 = call <2 x i64> @_mm_cvtepu8_epi16(<2 x i64> noundef %182)
  store <2 x i64> %call168, ptr %vxa2167, align 16, !tbaa !12
  %183 = load ptr, ptr %a2, align 8, !tbaa !9
  %184 = ptrtoint ptr %183 to i64
  %185 = load i64, ptr %k, align 8, !tbaa !5
  %add169 = add i64 %184, %185
  %186 = inttoptr i64 %add169 to ptr
  store ptr %186, ptr %a2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %va3170) #6
  %187 = load ptr, ptr %a3, align 8, !tbaa !9
  %call171 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %187)
  store <2 x i64> %call171, ptr %va3170, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxa3172) #6
  %188 = load <2 x i64>, ptr %va3170, align 16, !tbaa !12
  %call173 = call <2 x i64> @_mm_cvtepu8_epi16(<2 x i64> noundef %188)
  store <2 x i64> %call173, ptr %vxa3172, align 16, !tbaa !12
  %189 = load ptr, ptr %a3, align 8, !tbaa !9
  %190 = ptrtoint ptr %189 to i64
  %191 = load i64, ptr %k, align 8, !tbaa !5
  %add174 = add i64 %190, %191
  %192 = inttoptr i64 %add174 to ptr
  store ptr %192, ptr %a3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb0175) #6
  %193 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call176 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %193)
  store <2 x i64> %call176, ptr %vb0175, align 16, !tbaa !12
  %194 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr177 = getelementptr inbounds i8, ptr %194, i64 8
  store ptr %add.ptr177, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb0178) #6
  %195 = load <2 x i64>, ptr %vb0175, align 16, !tbaa !12
  %call179 = call <2 x i64> @_mm_cvtepu8_epi16(<2 x i64> noundef %195)
  %196 = load <2 x i64>, ptr %vb_zero_point, align 16, !tbaa !12
  %call180 = call <2 x i64> @_mm_sub_epi16(<2 x i64> noundef %call179, <2 x i64> noundef %196)
  store <2 x i64> %call180, ptr %vxb0178, align 16, !tbaa !12
  %197 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %198 = load <2 x i64>, ptr %vxa0157, align 16, !tbaa !12
  %199 = bitcast <2 x i64> %198 to <4 x i32>
  %permil181 = shufflevector <4 x i32> %199, <4 x i32> poison, <4 x i32> zeroinitializer
  %200 = bitcast <4 x i32> %permil181 to <2 x i64>
  %201 = load <2 x i64>, ptr %vxb0178, align 16, !tbaa !12
  %call182 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %200, <2 x i64> noundef %201)
  %call183 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %197, <2 x i64> noundef %call182)
  store <2 x i64> %call183, ptr %vacc0x0123, align 16, !tbaa !12
  %202 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %203 = load <2 x i64>, ptr %vxa1162, align 16, !tbaa !12
  %204 = bitcast <2 x i64> %203 to <4 x i32>
  %permil184 = shufflevector <4 x i32> %204, <4 x i32> poison, <4 x i32> zeroinitializer
  %205 = bitcast <4 x i32> %permil184 to <2 x i64>
  %206 = load <2 x i64>, ptr %vxb0178, align 16, !tbaa !12
  %call185 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %205, <2 x i64> noundef %206)
  %call186 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %202, <2 x i64> noundef %call185)
  store <2 x i64> %call186, ptr %vacc1x0123, align 16, !tbaa !12
  %207 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %208 = load <2 x i64>, ptr %vxa2167, align 16, !tbaa !12
  %209 = bitcast <2 x i64> %208 to <4 x i32>
  %permil187 = shufflevector <4 x i32> %209, <4 x i32> poison, <4 x i32> zeroinitializer
  %210 = bitcast <4 x i32> %permil187 to <2 x i64>
  %211 = load <2 x i64>, ptr %vxb0178, align 16, !tbaa !12
  %call188 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %210, <2 x i64> noundef %211)
  %call189 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %207, <2 x i64> noundef %call188)
  store <2 x i64> %call189, ptr %vacc2x0123, align 16, !tbaa !12
  %212 = load <2 x i64>, ptr %vacc3x0123, align 16, !tbaa !12
  %213 = load <2 x i64>, ptr %vxa3172, align 16, !tbaa !12
  %214 = bitcast <2 x i64> %213 to <4 x i32>
  %permil190 = shufflevector <4 x i32> %214, <4 x i32> poison, <4 x i32> zeroinitializer
  %215 = bitcast <4 x i32> %permil190 to <2 x i64>
  %216 = load <2 x i64>, ptr %vxb0178, align 16, !tbaa !12
  %call191 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %215, <2 x i64> noundef %216)
  %call192 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %212, <2 x i64> noundef %call191)
  store <2 x i64> %call192, ptr %vacc3x0123, align 16, !tbaa !12
  %217 = load i64, ptr %k, align 8, !tbaa !5
  %cmp193 = icmp ugt i64 %217, 2
  br i1 %cmp193, label %if.then195, label %if.end236

if.then195:                                       ; preds = %if.then154
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb1196) #6
  %218 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call197 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %218)
  store <2 x i64> %call197, ptr %vb1196, align 16, !tbaa !12
  %219 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr198 = getelementptr inbounds i8, ptr %219, i64 8
  store ptr %add.ptr198, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb1199) #6
  %220 = load <2 x i64>, ptr %vb1196, align 16, !tbaa !12
  %call200 = call <2 x i64> @_mm_cvtepu8_epi16(<2 x i64> noundef %220)
  %221 = load <2 x i64>, ptr %vb_zero_point, align 16, !tbaa !12
  %call201 = call <2 x i64> @_mm_sub_epi16(<2 x i64> noundef %call200, <2 x i64> noundef %221)
  store <2 x i64> %call201, ptr %vxb1199, align 16, !tbaa !12
  %222 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %223 = load <2 x i64>, ptr %vxa0157, align 16, !tbaa !12
  %224 = bitcast <2 x i64> %223 to <4 x i32>
  %permil202 = shufflevector <4 x i32> %224, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %225 = bitcast <4 x i32> %permil202 to <2 x i64>
  %226 = load <2 x i64>, ptr %vxb1199, align 16, !tbaa !12
  %call203 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %225, <2 x i64> noundef %226)
  %call204 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %222, <2 x i64> noundef %call203)
  store <2 x i64> %call204, ptr %vacc0x0123, align 16, !tbaa !12
  %227 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %228 = load <2 x i64>, ptr %vxa1162, align 16, !tbaa !12
  %229 = bitcast <2 x i64> %228 to <4 x i32>
  %permil205 = shufflevector <4 x i32> %229, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %230 = bitcast <4 x i32> %permil205 to <2 x i64>
  %231 = load <2 x i64>, ptr %vxb1199, align 16, !tbaa !12
  %call206 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %230, <2 x i64> noundef %231)
  %call207 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %227, <2 x i64> noundef %call206)
  store <2 x i64> %call207, ptr %vacc1x0123, align 16, !tbaa !12
  %232 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %233 = load <2 x i64>, ptr %vxa2167, align 16, !tbaa !12
  %234 = bitcast <2 x i64> %233 to <4 x i32>
  %permil208 = shufflevector <4 x i32> %234, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %235 = bitcast <4 x i32> %permil208 to <2 x i64>
  %236 = load <2 x i64>, ptr %vxb1199, align 16, !tbaa !12
  %call209 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %235, <2 x i64> noundef %236)
  %call210 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %232, <2 x i64> noundef %call209)
  store <2 x i64> %call210, ptr %vacc2x0123, align 16, !tbaa !12
  %237 = load <2 x i64>, ptr %vacc3x0123, align 16, !tbaa !12
  %238 = load <2 x i64>, ptr %vxa3172, align 16, !tbaa !12
  %239 = bitcast <2 x i64> %238 to <4 x i32>
  %permil211 = shufflevector <4 x i32> %239, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %240 = bitcast <4 x i32> %permil211 to <2 x i64>
  %241 = load <2 x i64>, ptr %vxb1199, align 16, !tbaa !12
  %call212 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %240, <2 x i64> noundef %241)
  %call213 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %237, <2 x i64> noundef %call212)
  store <2 x i64> %call213, ptr %vacc3x0123, align 16, !tbaa !12
  %242 = load i64, ptr %k, align 8, !tbaa !5
  %cmp214 = icmp ugt i64 %242, 4
  br i1 %cmp214, label %if.then216, label %if.end235

if.then216:                                       ; preds = %if.then195
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb2217) #6
  %243 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call218 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %243)
  store <2 x i64> %call218, ptr %vb2217, align 16, !tbaa !12
  %244 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr219 = getelementptr inbounds i8, ptr %244, i64 8
  store ptr %add.ptr219, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb2220) #6
  %245 = load <2 x i64>, ptr %vb2217, align 16, !tbaa !12
  %call221 = call <2 x i64> @_mm_cvtepu8_epi16(<2 x i64> noundef %245)
  %246 = load <2 x i64>, ptr %vb_zero_point, align 16, !tbaa !12
  %call222 = call <2 x i64> @_mm_sub_epi16(<2 x i64> noundef %call221, <2 x i64> noundef %246)
  store <2 x i64> %call222, ptr %vxb2220, align 16, !tbaa !12
  %247 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %248 = load <2 x i64>, ptr %vxa0157, align 16, !tbaa !12
  %249 = bitcast <2 x i64> %248 to <4 x i32>
  %permil223 = shufflevector <4 x i32> %249, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %250 = bitcast <4 x i32> %permil223 to <2 x i64>
  %251 = load <2 x i64>, ptr %vxb2220, align 16, !tbaa !12
  %call224 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %250, <2 x i64> noundef %251)
  %call225 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %247, <2 x i64> noundef %call224)
  store <2 x i64> %call225, ptr %vacc0x0123, align 16, !tbaa !12
  %252 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %253 = load <2 x i64>, ptr %vxa1162, align 16, !tbaa !12
  %254 = bitcast <2 x i64> %253 to <4 x i32>
  %permil226 = shufflevector <4 x i32> %254, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %255 = bitcast <4 x i32> %permil226 to <2 x i64>
  %256 = load <2 x i64>, ptr %vxb2220, align 16, !tbaa !12
  %call227 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %255, <2 x i64> noundef %256)
  %call228 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %252, <2 x i64> noundef %call227)
  store <2 x i64> %call228, ptr %vacc1x0123, align 16, !tbaa !12
  %257 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %258 = load <2 x i64>, ptr %vxa2167, align 16, !tbaa !12
  %259 = bitcast <2 x i64> %258 to <4 x i32>
  %permil229 = shufflevector <4 x i32> %259, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %260 = bitcast <4 x i32> %permil229 to <2 x i64>
  %261 = load <2 x i64>, ptr %vxb2220, align 16, !tbaa !12
  %call230 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %260, <2 x i64> noundef %261)
  %call231 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %257, <2 x i64> noundef %call230)
  store <2 x i64> %call231, ptr %vacc2x0123, align 16, !tbaa !12
  %262 = load <2 x i64>, ptr %vacc3x0123, align 16, !tbaa !12
  %263 = load <2 x i64>, ptr %vxa3172, align 16, !tbaa !12
  %264 = bitcast <2 x i64> %263 to <4 x i32>
  %permil232 = shufflevector <4 x i32> %264, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %265 = bitcast <4 x i32> %permil232 to <2 x i64>
  %266 = load <2 x i64>, ptr %vxb2220, align 16, !tbaa !12
  %call233 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %265, <2 x i64> noundef %266)
  %call234 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %262, <2 x i64> noundef %call233)
  store <2 x i64> %call234, ptr %vacc3x0123, align 16, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb2220) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb2217) #6
  br label %if.end235

if.end235:                                        ; preds = %if.then216, %if.then195
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb1199) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb1196) #6
  br label %if.end236

if.end236:                                        ; preds = %if.end235, %if.then154
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb0178) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb0175) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxa3172) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %va3170) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxa2167) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %va2165) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxa1162) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %va1160) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxa0157) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %va0155) #6
  br label %if.end237

if.end237:                                        ; preds = %if.end236, %while.end
  %267 = load i64, ptr %p, align 8, !tbaa !5
  %sub238 = sub i64 %267, 32
  store i64 %sub238, ptr %p, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb_zero_point) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a0) #6
  br label %do.cond

do.cond:                                          ; preds = %if.end237
  %268 = load i64, ptr %p, align 8, !tbaa !5
  %cmp239 = icmp ne i64 %268, 0
  br i1 %cmp239, label %do.body25, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled0x0123) #6
  %269 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %call241 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %269)
  store <4 x float> %call241, ptr %vscaled0x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled1x0123) #6
  %270 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %call242 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %270)
  store <4 x float> %call242, ptr %vscaled1x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled2x0123) #6
  %271 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %call243 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %271)
  store <4 x float> %call243, ptr %vscaled2x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled3x0123) #6
  %272 = load <2 x i64>, ptr %vacc3x0123, align 16, !tbaa !12
  %call244 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %272)
  store <4 x float> %call244, ptr %vscaled3x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscale) #6
  %273 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale = getelementptr inbounds %struct.anon.2, ptr %273, i32 0, i32 1
  %arraydecay245 = getelementptr inbounds [4 x float], ptr %scale, i64 0, i64 0
  %call246 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay245)
  store <4 x float> %call246, ptr %vscale, align 16, !tbaa !12
  %274 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !12
  %275 = load <4 x float>, ptr %vscale, align 16, !tbaa !12
  %call247 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %274, <4 x float> noundef %275)
  store <4 x float> %call247, ptr %vscaled0x0123, align 16, !tbaa !12
  %276 = load <4 x float>, ptr %vscaled1x0123, align 16, !tbaa !12
  %277 = load <4 x float>, ptr %vscale, align 16, !tbaa !12
  %call248 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %276, <4 x float> noundef %277)
  store <4 x float> %call248, ptr %vscaled1x0123, align 16, !tbaa !12
  %278 = load <4 x float>, ptr %vscaled2x0123, align 16, !tbaa !12
  %279 = load <4 x float>, ptr %vscale, align 16, !tbaa !12
  %call249 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %278, <4 x float> noundef %279)
  store <4 x float> %call249, ptr %vscaled2x0123, align 16, !tbaa !12
  %280 = load <4 x float>, ptr %vscaled3x0123, align 16, !tbaa !12
  %281 = load <4 x float>, ptr %vscale, align 16, !tbaa !12
  %call250 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %280, <4 x float> noundef %281)
  store <4 x float> %call250, ptr %vscaled3x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_max_less_zero_point) #6
  %282 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max_less_zero_point = getelementptr inbounds %struct.anon.2, ptr %282, i32 0, i32 2
  %arraydecay251 = getelementptr inbounds [4 x float], ptr %output_max_less_zero_point, i64 0, i64 0
  %call252 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay251)
  store <4 x float> %call252, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %283 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !12
  %284 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %call253 = call <4 x float> @_mm_min_ps(<4 x float> noundef %283, <4 x float> noundef %284)
  store <4 x float> %call253, ptr %vscaled0x0123, align 16, !tbaa !12
  %285 = load <4 x float>, ptr %vscaled1x0123, align 16, !tbaa !12
  %286 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %call254 = call <4 x float> @_mm_min_ps(<4 x float> noundef %285, <4 x float> noundef %286)
  store <4 x float> %call254, ptr %vscaled1x0123, align 16, !tbaa !12
  %287 = load <4 x float>, ptr %vscaled2x0123, align 16, !tbaa !12
  %288 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %call255 = call <4 x float> @_mm_min_ps(<4 x float> noundef %287, <4 x float> noundef %288)
  store <4 x float> %call255, ptr %vscaled2x0123, align 16, !tbaa !12
  %289 = load <4 x float>, ptr %vscaled3x0123, align 16, !tbaa !12
  %290 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !12
  %call256 = call <4 x float> @_mm_min_ps(<4 x float> noundef %289, <4 x float> noundef %290)
  store <4 x float> %call256, ptr %vscaled3x0123, align 16, !tbaa !12
  %291 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !12
  %call257 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %291)
  store <2 x i64> %call257, ptr %vacc0x0123, align 16, !tbaa !12
  %292 = load <4 x float>, ptr %vscaled1x0123, align 16, !tbaa !12
  %call258 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %292)
  store <2 x i64> %call258, ptr %vacc1x0123, align 16, !tbaa !12
  %293 = load <4 x float>, ptr %vscaled2x0123, align 16, !tbaa !12
  %call259 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %293)
  store <2 x i64> %call259, ptr %vacc2x0123, align 16, !tbaa !12
  %294 = load <4 x float>, ptr %vscaled3x0123, align 16, !tbaa !12
  %call260 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %294)
  store <2 x i64> %call260, ptr %vacc3x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_zero_point) #6
  %295 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_zero_point = getelementptr inbounds %struct.anon.2, ptr %295, i32 0, i32 3
  %arraydecay261 = getelementptr inbounds [8 x i16], ptr %output_zero_point, i64 0, i64 0
  %call262 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay261)
  store <2 x i64> %call262, ptr %voutput_zero_point, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc01x0123) #6
  %296 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !12
  %297 = load <2 x i64>, ptr %vacc1x0123, align 16, !tbaa !12
  %call263 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %296, <2 x i64> noundef %297)
  %298 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !12
  %call264 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call263, <2 x i64> noundef %298)
  store <2 x i64> %call264, ptr %vacc01x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc23x0123) #6
  %299 = load <2 x i64>, ptr %vacc2x0123, align 16, !tbaa !12
  %300 = load <2 x i64>, ptr %vacc3x0123, align 16, !tbaa !12
  %call265 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %299, <2 x i64> noundef %300)
  %301 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !12
  %call266 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call265, <2 x i64> noundef %301)
  store <2 x i64> %call266, ptr %vacc23x0123, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout) #6
  %302 = load <2 x i64>, ptr %vacc01x0123, align 16, !tbaa !12
  %303 = load <2 x i64>, ptr %vacc23x0123, align 16, !tbaa !12
  %call267 = call <2 x i64> @_mm_packus_epi16(<2 x i64> noundef %302, <2 x i64> noundef %303)
  store <2 x i64> %call267, ptr %vout, align 16, !tbaa !12
  %304 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %305 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min = getelementptr inbounds %struct.anon.2, ptr %305, i32 0, i32 4
  %arraydecay268 = getelementptr inbounds [16 x i8], ptr %output_min, i64 0, i64 0
  %call269 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay268)
  %call270 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %304, <2 x i64> noundef %call269)
  store <2 x i64> %call270, ptr %vout, align 16, !tbaa !12
  %306 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp271 = icmp uge i64 %306, 4
  br i1 %cmp271, label %if.then273, label %if.else

if.then273:                                       ; preds = %do.end
  %307 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %308 = bitcast <2 x i64> %307 to <4 x i32>
  %309 = extractelement <4 x i32> %308, i64 3
  %310 = load ptr, ptr %c3, align 8, !tbaa !9
  store i32 %309, ptr %310, align 4, !tbaa !16
  %311 = load ptr, ptr %c3, align 8, !tbaa !9
  %312 = ptrtoint ptr %311 to i64
  %313 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add274 = add i64 %312, %313
  %314 = inttoptr i64 %add274 to ptr
  store ptr %314, ptr %c3, align 8, !tbaa !9
  %315 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %316 = bitcast <2 x i64> %315 to <4 x i32>
  %317 = extractelement <4 x i32> %316, i64 2
  %318 = load ptr, ptr %c2, align 8, !tbaa !9
  store i32 %317, ptr %318, align 4, !tbaa !16
  %319 = load ptr, ptr %c2, align 8, !tbaa !9
  %320 = ptrtoint ptr %319 to i64
  %321 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add275 = add i64 %320, %321
  %322 = inttoptr i64 %add275 to ptr
  store ptr %322, ptr %c2, align 8, !tbaa !9
  %323 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %324 = bitcast <2 x i64> %323 to <4 x i32>
  %325 = extractelement <4 x i32> %324, i64 1
  %326 = load ptr, ptr %c1, align 8, !tbaa !9
  store i32 %325, ptr %326, align 4, !tbaa !16
  %327 = load ptr, ptr %c1, align 8, !tbaa !9
  %328 = ptrtoint ptr %327 to i64
  %329 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add276 = add i64 %328, %329
  %330 = inttoptr i64 %add276 to ptr
  store ptr %330, ptr %c1, align 8, !tbaa !9
  %331 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %call277 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %331)
  %332 = load ptr, ptr %c0, align 8, !tbaa !9
  store i32 %call277, ptr %332, align 4, !tbaa !16
  %333 = load ptr, ptr %c0, align 8, !tbaa !9
  %334 = ptrtoint ptr %333 to i64
  %335 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add278 = add i64 %334, %335
  %336 = inttoptr i64 %add278 to ptr
  store ptr %336, ptr %c0, align 8, !tbaa !9
  %337 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %338 = ptrtoint ptr %337 to i64
  %339 = load i64, ptr %ks.addr, align 8, !tbaa !5
  %sub279 = sub i64 %338, %339
  %340 = inttoptr i64 %sub279 to ptr
  store ptr %340, ptr %a.addr, align 8, !tbaa !9
  %341 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %sub280 = sub i64 %341, 4
  store i64 %sub280, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end309

if.else:                                          ; preds = %do.end
  %342 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and = and i64 %342, 2
  %tobool281 = icmp ne i64 %and, 0
  br i1 %tobool281, label %if.then282, label %if.end296

if.then282:                                       ; preds = %if.else
  %343 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %344 = bitcast <2 x i64> %343 to <8 x i16>
  %345 = extractelement <8 x i16> %344, i64 6
  %conv283 = zext i16 %345 to i32
  %conv284 = trunc i32 %conv283 to i16
  %346 = load ptr, ptr %c3, align 8, !tbaa !9
  store i16 %conv284, ptr %346, align 2, !tbaa !18
  %347 = load ptr, ptr %c3, align 8, !tbaa !9
  %add.ptr285 = getelementptr inbounds i8, ptr %347, i64 2
  store ptr %add.ptr285, ptr %c3, align 8, !tbaa !9
  %348 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %349 = bitcast <2 x i64> %348 to <8 x i16>
  %350 = extractelement <8 x i16> %349, i64 4
  %conv286 = zext i16 %350 to i32
  %conv287 = trunc i32 %conv286 to i16
  %351 = load ptr, ptr %c2, align 8, !tbaa !9
  store i16 %conv287, ptr %351, align 2, !tbaa !18
  %352 = load ptr, ptr %c2, align 8, !tbaa !9
  %add.ptr288 = getelementptr inbounds i8, ptr %352, i64 2
  store ptr %add.ptr288, ptr %c2, align 8, !tbaa !9
  %353 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %354 = bitcast <2 x i64> %353 to <8 x i16>
  %355 = extractelement <8 x i16> %354, i64 2
  %conv289 = zext i16 %355 to i32
  %conv290 = trunc i32 %conv289 to i16
  %356 = load ptr, ptr %c1, align 8, !tbaa !9
  store i16 %conv290, ptr %356, align 2, !tbaa !18
  %357 = load ptr, ptr %c1, align 8, !tbaa !9
  %add.ptr291 = getelementptr inbounds i8, ptr %357, i64 2
  store ptr %add.ptr291, ptr %c1, align 8, !tbaa !9
  %358 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %359 = bitcast <2 x i64> %358 to <8 x i16>
  %360 = extractelement <8 x i16> %359, i64 0
  %conv292 = zext i16 %360 to i32
  %conv293 = trunc i32 %conv292 to i16
  %361 = load ptr, ptr %c0, align 8, !tbaa !9
  store i16 %conv293, ptr %361, align 2, !tbaa !18
  %362 = load ptr, ptr %c0, align 8, !tbaa !9
  %add.ptr294 = getelementptr inbounds i8, ptr %362, i64 2
  store ptr %add.ptr294, ptr %c0, align 8, !tbaa !9
  %363 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %call295 = call <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %363, i32 noundef 16)
  store <2 x i64> %call295, ptr %vout, align 16, !tbaa !12
  br label %if.end296

if.end296:                                        ; preds = %if.then282, %if.else
  %364 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and297 = and i64 %364, 1
  %tobool298 = icmp ne i64 %and297, 0
  br i1 %tobool298, label %if.then299, label %if.end308

if.then299:                                       ; preds = %if.end296
  %365 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %366 = bitcast <2 x i64> %365 to <16 x i8>
  %367 = extractelement <16 x i8> %366, i64 12
  %conv300 = zext i8 %367 to i32
  %conv301 = trunc i32 %conv300 to i8
  %368 = load ptr, ptr %c3, align 8, !tbaa !9
  store i8 %conv301, ptr %368, align 1, !tbaa !12
  %369 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %370 = bitcast <2 x i64> %369 to <16 x i8>
  %371 = extractelement <16 x i8> %370, i64 8
  %conv302 = zext i8 %371 to i32
  %conv303 = trunc i32 %conv302 to i8
  %372 = load ptr, ptr %c2, align 8, !tbaa !9
  store i8 %conv303, ptr %372, align 1, !tbaa !12
  %373 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %374 = bitcast <2 x i64> %373 to <16 x i8>
  %375 = extractelement <16 x i8> %374, i64 4
  %conv304 = zext i8 %375 to i32
  %conv305 = trunc i32 %conv304 to i8
  %376 = load ptr, ptr %c1, align 8, !tbaa !9
  store i8 %conv305, ptr %376, align 1, !tbaa !12
  %377 = load <2 x i64>, ptr %vout, align 16, !tbaa !12
  %378 = bitcast <2 x i64> %377 to <16 x i8>
  %379 = extractelement <16 x i8> %378, i64 0
  %conv306 = zext i8 %379 to i32
  %conv307 = trunc i32 %conv306 to i8
  %380 = load ptr, ptr %c0, align 8, !tbaa !9
  store i8 %conv307, ptr %380, align 1, !tbaa !12
  br label %if.end308

if.end308:                                        ; preds = %if.then299, %if.end296
  store i64 0, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end309

if.end309:                                        ; preds = %if.end308, %if.then273
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
  br label %do.cond310

do.cond310:                                       ; preds = %if.end309
  %381 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp311 = icmp ne i64 %381, 0
  br i1 %cmp311, label %do.body, label %do.end313, !llvm.loop !20

do.end313:                                        ; preds = %do.cond310
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
define internal <2 x i64> @_mm_load_si128(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <2 x i64>, ptr %0, align 16, !tbaa !12
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
define internal <2 x i64> @_mm_cvtepu8_epi16(<2 x i64> noundef %__V) #3 {
entry:
  %__V.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V, ptr %__V.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %shuffle = shufflevector <16 x i8> %1, <16 x i8> %3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %conv = zext <8 x i8> %shuffle to <8 x i16>
  %4 = bitcast <8 x i16> %conv to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_sub_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %sub = sub <8 x i16> %1, %3
  %4 = bitcast <8 x i16> %sub to <2 x i64>
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
define internal <2 x i64> @_mm_packus_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %4 = call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %1, <8 x i16> %3)
  %5 = bitcast <16 x i8> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_max_epu8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %elt.max = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %1, <16 x i8> %3)
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
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #5

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
