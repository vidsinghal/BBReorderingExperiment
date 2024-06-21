; ModuleID = 'samples/462.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qc8-igemm/gen/1x4c2-minmax-fp32-avx-ld64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.3 = type { [4 x float], [8 x i16], [16 x i8] }
%struct.__loadu_si128 = type { <2 x i64> }
%struct.__mm_loadl_epi64_struct = type { i64 }
%struct.__loadu_ps = type { <4 x float> }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qc8_igemm_minmax_fp32_ukernel_1x4c2__avx_ld64(i64 noundef %mr, i64 noundef %nc, i64 noundef %kc, i64 noundef %ks, ptr noalias noundef %a, ptr noalias noundef %w, ptr noalias noundef %c, i64 noundef %cm_stride, i64 noundef %cn_stride, i64 noundef %a_offset, ptr noundef %zero, ptr noalias noundef align 64 dereferenceable(192) %params) #0 {
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
  %vacc0x0123 = alloca <2 x i64>, align 16
  %p = alloca i64, align 8
  %a0 = alloca ptr, align 8
  %k = alloca i64, align 8
  %va0 = alloca <2 x i64>, align 16
  %vxa0 = alloca <2 x i64>, align 16
  %vb0 = alloca <2 x i64>, align 16
  %vxb0 = alloca <2 x i64>, align 16
  %vb1 = alloca <2 x i64>, align 16
  %vxb1 = alloca <2 x i64>, align 16
  %vb2 = alloca <2 x i64>, align 16
  %vxb2 = alloca <2 x i64>, align 16
  %vb3 = alloca <2 x i64>, align 16
  %vxb3 = alloca <2 x i64>, align 16
  %va036 = alloca <2 x i64>, align 16
  %vxa038 = alloca <2 x i64>, align 16
  %vb041 = alloca <2 x i64>, align 16
  %vxb044 = alloca <2 x i64>, align 16
  %vb152 = alloca <2 x i64>, align 16
  %vxb155 = alloca <2 x i64>, align 16
  %vb263 = alloca <2 x i64>, align 16
  %vxb266 = alloca <2 x i64>, align 16
  %vscaled0x0123 = alloca <4 x float>, align 16
  %vscale0123 = alloca <4 x float>, align 16
  %voutput_max_less_zero_point = alloca <4 x float>, align 16
  %voutput_zero_point = alloca <2 x i64>, align 16
  %vacc00x0123 = alloca <2 x i64>, align 16
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
  br label %do.body

do.body:                                          ; preds = %do.cond113, %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x0123) #6
  %2 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call1 = call <2 x i64> @_mm_loadu_si128(ptr noundef %2)
  store <2 x i64> %call1, ptr %vacc0x0123, align 16, !tbaa !11
  %3 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i32, ptr %3, i64 4
  store ptr %add.ptr, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6
  %4 = load i64, ptr %ks.addr, align 8, !tbaa !5
  store i64 %4, ptr %p, align 8, !tbaa !5
  br label %do.body2

do.body2:                                         ; preds = %do.cond, %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %a0) #6
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  store ptr %6, ptr %a0, align 8, !tbaa !9
  %7 = load ptr, ptr %a0, align 8, !tbaa !9
  %8 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp = icmp ne ptr %7, %8
  %lnot = xor i1 %cmp, true
  %lnot3 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !12

if.then:                                          ; preds = %do.body2
  %9 = load ptr, ptr %a0, align 8, !tbaa !9
  %10 = ptrtoint ptr %9 to i64
  %11 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add = add i64 %10, %11
  %12 = inttoptr i64 %add to ptr
  store ptr %12, ptr %a0, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body2
  %13 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %add.ptr4 = getelementptr inbounds ptr, ptr %13, i64 1
  store ptr %add.ptr4, ptr %a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #6
  %14 = load i64, ptr %kc.addr, align 8, !tbaa !5
  store i64 %14, ptr %k, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %15 = load i64, ptr %k, align 8, !tbaa !5
  %cmp5 = icmp uge i64 %15, 8
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %va0) #6
  %16 = load ptr, ptr %a0, align 8, !tbaa !9
  %call7 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %16)
  store <2 x i64> %call7, ptr %va0, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxa0) #6
  %17 = load <2 x i64>, ptr %va0, align 16, !tbaa !11
  %call8 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %17)
  store <2 x i64> %call8, ptr %vxa0, align 16, !tbaa !11
  %18 = load ptr, ptr %a0, align 8, !tbaa !9
  %add.ptr9 = getelementptr inbounds i8, ptr %18, i64 8
  store ptr %add.ptr9, ptr %a0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb0) #6
  %19 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call10 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %19)
  store <2 x i64> %call10, ptr %vb0, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb0) #6
  %20 = load <2 x i64>, ptr %vb0, align 16, !tbaa !11
  %call11 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %20)
  store <2 x i64> %call11, ptr %vxb0, align 16, !tbaa !11
  %21 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !11
  %22 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !11
  %23 = bitcast <2 x i64> %22 to <4 x i32>
  %permil = shufflevector <4 x i32> %23, <4 x i32> poison, <4 x i32> zeroinitializer
  %24 = bitcast <4 x i32> %permil to <2 x i64>
  %25 = load <2 x i64>, ptr %vxb0, align 16, !tbaa !11
  %call12 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %24, <2 x i64> noundef %25)
  %call13 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %21, <2 x i64> noundef %call12)
  store <2 x i64> %call13, ptr %vacc0x0123, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb1) #6
  %26 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr14 = getelementptr inbounds i8, ptr %26, i64 8
  %call15 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr14)
  store <2 x i64> %call15, ptr %vb1, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb1) #6
  %27 = load <2 x i64>, ptr %vb1, align 16, !tbaa !11
  %call16 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %27)
  store <2 x i64> %call16, ptr %vxb1, align 16, !tbaa !11
  %28 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !11
  %29 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !11
  %30 = bitcast <2 x i64> %29 to <4 x i32>
  %permil17 = shufflevector <4 x i32> %30, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %31 = bitcast <4 x i32> %permil17 to <2 x i64>
  %32 = load <2 x i64>, ptr %vxb1, align 16, !tbaa !11
  %call18 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %31, <2 x i64> noundef %32)
  %call19 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %28, <2 x i64> noundef %call18)
  store <2 x i64> %call19, ptr %vacc0x0123, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb2) #6
  %33 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr20 = getelementptr inbounds i8, ptr %33, i64 16
  %call21 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr20)
  store <2 x i64> %call21, ptr %vb2, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb2) #6
  %34 = load <2 x i64>, ptr %vb2, align 16, !tbaa !11
  %call22 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %34)
  store <2 x i64> %call22, ptr %vxb2, align 16, !tbaa !11
  %35 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !11
  %36 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !11
  %37 = bitcast <2 x i64> %36 to <4 x i32>
  %permil23 = shufflevector <4 x i32> %37, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %38 = bitcast <4 x i32> %permil23 to <2 x i64>
  %39 = load <2 x i64>, ptr %vxb2, align 16, !tbaa !11
  %call24 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %38, <2 x i64> noundef %39)
  %call25 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %35, <2 x i64> noundef %call24)
  store <2 x i64> %call25, ptr %vacc0x0123, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb3) #6
  %40 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr26 = getelementptr inbounds i8, ptr %40, i64 24
  %call27 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %add.ptr26)
  store <2 x i64> %call27, ptr %vb3, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb3) #6
  %41 = load <2 x i64>, ptr %vb3, align 16, !tbaa !11
  %call28 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %41)
  store <2 x i64> %call28, ptr %vxb3, align 16, !tbaa !11
  %42 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !11
  %43 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !11
  %44 = bitcast <2 x i64> %43 to <4 x i32>
  %permil29 = shufflevector <4 x i32> %44, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %45 = bitcast <4 x i32> %permil29 to <2 x i64>
  %46 = load <2 x i64>, ptr %vxb3, align 16, !tbaa !11
  %call30 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %45, <2 x i64> noundef %46)
  %call31 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %42, <2 x i64> noundef %call30)
  store <2 x i64> %call31, ptr %vacc0x0123, align 16, !tbaa !11
  %47 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr32 = getelementptr inbounds i8, ptr %47, i64 32
  store ptr %add.ptr32, ptr %w.addr, align 8, !tbaa !9
  %48 = load i64, ptr %k, align 8, !tbaa !5
  %sub = sub i64 %48, 8
  store i64 %sub, ptr %k, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb0) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb0) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxa0) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %va0) #6
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %49 = load i64, ptr %k, align 8, !tbaa !5
  %cmp33 = icmp ne i64 %49, 0
  br i1 %cmp33, label %if.then35, label %if.end73

if.then35:                                        ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %va036) #6
  %50 = load ptr, ptr %a0, align 8, !tbaa !9
  %call37 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %50)
  store <2 x i64> %call37, ptr %va036, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxa038) #6
  %51 = load <2 x i64>, ptr %va036, align 16, !tbaa !11
  %call39 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %51)
  store <2 x i64> %call39, ptr %vxa038, align 16, !tbaa !11
  %52 = load ptr, ptr %a0, align 8, !tbaa !9
  %53 = ptrtoint ptr %52 to i64
  %54 = load i64, ptr %k, align 8, !tbaa !5
  %add40 = add i64 %53, %54
  %55 = inttoptr i64 %add40 to ptr
  store ptr %55, ptr %a0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb041) #6
  %56 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call42 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %56)
  store <2 x i64> %call42, ptr %vb041, align 16, !tbaa !11
  %57 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr43 = getelementptr inbounds i8, ptr %57, i64 8
  store ptr %add.ptr43, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb044) #6
  %58 = load <2 x i64>, ptr %vb041, align 16, !tbaa !11
  %call45 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %58)
  store <2 x i64> %call45, ptr %vxb044, align 16, !tbaa !11
  %59 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !11
  %60 = load <2 x i64>, ptr %vxa038, align 16, !tbaa !11
  %61 = bitcast <2 x i64> %60 to <4 x i32>
  %permil46 = shufflevector <4 x i32> %61, <4 x i32> poison, <4 x i32> zeroinitializer
  %62 = bitcast <4 x i32> %permil46 to <2 x i64>
  %63 = load <2 x i64>, ptr %vxb044, align 16, !tbaa !11
  %call47 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %62, <2 x i64> noundef %63)
  %call48 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %59, <2 x i64> noundef %call47)
  store <2 x i64> %call48, ptr %vacc0x0123, align 16, !tbaa !11
  %64 = load i64, ptr %k, align 8, !tbaa !5
  %cmp49 = icmp ugt i64 %64, 2
  br i1 %cmp49, label %if.then51, label %if.end72

if.then51:                                        ; preds = %if.then35
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb152) #6
  %65 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call53 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %65)
  store <2 x i64> %call53, ptr %vb152, align 16, !tbaa !11
  %66 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr54 = getelementptr inbounds i8, ptr %66, i64 8
  store ptr %add.ptr54, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb155) #6
  %67 = load <2 x i64>, ptr %vb152, align 16, !tbaa !11
  %call56 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %67)
  store <2 x i64> %call56, ptr %vxb155, align 16, !tbaa !11
  %68 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !11
  %69 = load <2 x i64>, ptr %vxa038, align 16, !tbaa !11
  %70 = bitcast <2 x i64> %69 to <4 x i32>
  %permil57 = shufflevector <4 x i32> %70, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %71 = bitcast <4 x i32> %permil57 to <2 x i64>
  %72 = load <2 x i64>, ptr %vxb155, align 16, !tbaa !11
  %call58 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %71, <2 x i64> noundef %72)
  %call59 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %68, <2 x i64> noundef %call58)
  store <2 x i64> %call59, ptr %vacc0x0123, align 16, !tbaa !11
  %73 = load i64, ptr %k, align 8, !tbaa !5
  %cmp60 = icmp ugt i64 %73, 4
  br i1 %cmp60, label %if.then62, label %if.end71

if.then62:                                        ; preds = %if.then51
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb263) #6
  %74 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call64 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %74)
  store <2 x i64> %call64, ptr %vb263, align 16, !tbaa !11
  %75 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr65 = getelementptr inbounds i8, ptr %75, i64 8
  store ptr %add.ptr65, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb266) #6
  %76 = load <2 x i64>, ptr %vb263, align 16, !tbaa !11
  %call67 = call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %76)
  store <2 x i64> %call67, ptr %vxb266, align 16, !tbaa !11
  %77 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !11
  %78 = load <2 x i64>, ptr %vxa038, align 16, !tbaa !11
  %79 = bitcast <2 x i64> %78 to <4 x i32>
  %permil68 = shufflevector <4 x i32> %79, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %80 = bitcast <4 x i32> %permil68 to <2 x i64>
  %81 = load <2 x i64>, ptr %vxb266, align 16, !tbaa !11
  %call69 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %80, <2 x i64> noundef %81)
  %call70 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %77, <2 x i64> noundef %call69)
  store <2 x i64> %call70, ptr %vacc0x0123, align 16, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb266) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb263) #6
  br label %if.end71

if.end71:                                         ; preds = %if.then62, %if.then51
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb155) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb152) #6
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then35
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb044) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb041) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxa038) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %va036) #6
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %while.end
  %82 = load i64, ptr %p, align 8, !tbaa !5
  %sub74 = sub i64 %82, 8
  store i64 %sub74, ptr %p, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a0) #6
  br label %do.cond

do.cond:                                          ; preds = %if.end73
  %83 = load i64, ptr %p, align 8, !tbaa !5
  %cmp75 = icmp ne i64 %83, 0
  br i1 %cmp75, label %do.body2, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled0x0123) #6
  %84 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !11
  %call77 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %84)
  store <4 x float> %call77, ptr %vscaled0x0123, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscale0123) #6
  %85 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call78 = call <4 x float> @_mm_loadu_ps(ptr noundef %85)
  store <4 x float> %call78, ptr %vscale0123, align 16, !tbaa !11
  %86 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr79 = getelementptr inbounds float, ptr %86, i64 4
  store ptr %add.ptr79, ptr %w.addr, align 8, !tbaa !9
  %87 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !11
  %88 = load <4 x float>, ptr %vscale0123, align 16, !tbaa !11
  %call80 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %87, <4 x float> noundef %88)
  store <4 x float> %call80, ptr %vscaled0x0123, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_max_less_zero_point) #6
  %89 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max_less_zero_point = getelementptr inbounds %struct.anon.3, ptr %89, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x float], ptr %output_max_less_zero_point, i64 0, i64 0
  %call81 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay)
  store <4 x float> %call81, ptr %voutput_max_less_zero_point, align 16, !tbaa !11
  %90 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !11
  %91 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !11
  %call82 = call <4 x float> @_mm_min_ps(<4 x float> noundef %90, <4 x float> noundef %91)
  store <4 x float> %call82, ptr %vscaled0x0123, align 16, !tbaa !11
  %92 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !11
  %call83 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %92)
  store <2 x i64> %call83, ptr %vacc0x0123, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_zero_point) #6
  %93 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_zero_point = getelementptr inbounds %struct.anon.3, ptr %93, i32 0, i32 1
  %arraydecay84 = getelementptr inbounds [8 x i16], ptr %output_zero_point, i64 0, i64 0
  %call85 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay84)
  store <2 x i64> %call85, ptr %voutput_zero_point, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc00x0123) #6
  %94 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !11
  %95 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !11
  %call86 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %94, <2 x i64> noundef %95)
  %96 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !11
  %call87 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call86, <2 x i64> noundef %96)
  store <2 x i64> %call87, ptr %vacc00x0123, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout) #6
  %97 = load <2 x i64>, ptr %vacc00x0123, align 16, !tbaa !11
  %98 = load <2 x i64>, ptr %vacc00x0123, align 16, !tbaa !11
  %call88 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %97, <2 x i64> noundef %98)
  store <2 x i64> %call88, ptr %vout, align 16, !tbaa !11
  %99 = load <2 x i64>, ptr %vout, align 16, !tbaa !11
  %100 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min = getelementptr inbounds %struct.anon.3, ptr %100, i32 0, i32 2
  %arraydecay89 = getelementptr inbounds [16 x i8], ptr %output_min, i64 0, i64 0
  %call90 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay89)
  %call91 = call <2 x i64> @_mm_max_epi8(<2 x i64> noundef %99, <2 x i64> noundef %call90)
  store <2 x i64> %call91, ptr %vout, align 16, !tbaa !11
  %101 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp92 = icmp uge i64 %101, 4
  br i1 %cmp92, label %if.then94, label %if.else

if.then94:                                        ; preds = %do.end
  %102 = load <2 x i64>, ptr %vout, align 16, !tbaa !11
  %call95 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %102)
  %103 = load ptr, ptr %c0, align 8, !tbaa !9
  store i32 %call95, ptr %103, align 4, !tbaa !16
  %104 = load ptr, ptr %c0, align 8, !tbaa !9
  %105 = ptrtoint ptr %104 to i64
  %106 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add96 = add i64 %105, %106
  %107 = inttoptr i64 %add96 to ptr
  store ptr %107, ptr %c0, align 8, !tbaa !9
  %108 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %109 = ptrtoint ptr %108 to i64
  %110 = load i64, ptr %ks.addr, align 8, !tbaa !5
  %sub97 = sub i64 %109, %110
  %111 = inttoptr i64 %sub97 to ptr
  store ptr %111, ptr %a.addr, align 8, !tbaa !9
  %112 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %sub98 = sub i64 %112, 4
  store i64 %sub98, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end112

if.else:                                          ; preds = %do.end
  %113 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and = and i64 %113, 2
  %tobool99 = icmp ne i64 %and, 0
  br i1 %tobool99, label %if.then100, label %if.end105

if.then100:                                       ; preds = %if.else
  %114 = load <2 x i64>, ptr %vout, align 16, !tbaa !11
  %115 = bitcast <2 x i64> %114 to <8 x i16>
  %116 = extractelement <8 x i16> %115, i64 0
  %conv101 = zext i16 %116 to i32
  %conv102 = trunc i32 %conv101 to i16
  %117 = load ptr, ptr %c0, align 8, !tbaa !9
  store i16 %conv102, ptr %117, align 2, !tbaa !18
  %118 = load ptr, ptr %c0, align 8, !tbaa !9
  %add.ptr103 = getelementptr inbounds i8, ptr %118, i64 2
  store ptr %add.ptr103, ptr %c0, align 8, !tbaa !9
  %119 = load <2 x i64>, ptr %vout, align 16, !tbaa !11
  %call104 = call <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %119, i32 noundef 16)
  store <2 x i64> %call104, ptr %vout, align 16, !tbaa !11
  br label %if.end105

if.end105:                                        ; preds = %if.then100, %if.else
  %120 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and106 = and i64 %120, 1
  %tobool107 = icmp ne i64 %and106, 0
  br i1 %tobool107, label %if.then108, label %if.end111

if.then108:                                       ; preds = %if.end105
  %121 = load <2 x i64>, ptr %vout, align 16, !tbaa !11
  %122 = bitcast <2 x i64> %121 to <16 x i8>
  %123 = extractelement <16 x i8> %122, i64 0
  %conv109 = zext i8 %123 to i32
  %conv110 = trunc i32 %conv109 to i8
  %124 = load ptr, ptr %c0, align 8, !tbaa !9
  store i8 %conv110, ptr %124, align 1, !tbaa !11
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %if.end105
  store i64 0, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %if.then94
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc00x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_zero_point) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_max_less_zero_point) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscale0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled0x0123) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x0123) #6
  br label %do.cond113

do.cond113:                                       ; preds = %if.end112
  %125 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp114 = icmp ne i64 %125, 0
  br i1 %cmp114, label %do.body, label %do.end116, !llvm.loop !20

do.end116:                                        ; preds = %do.cond113
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
  %1 = load <2 x i64>, ptr %__v, align 1, !tbaa !11
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
  %1 = load i64, ptr %__u, align 1, !tbaa !11
  %vecinit = insertelement <2 x i64> undef, i64 %1, i32 0
  %vecinit1 = insertelement <2 x i64> %vecinit, i64 0, i32 1
  store <2 x i64> %vecinit1, ptr %.compoundliteral, align 16, !tbaa !11
  %2 = load <2 x i64>, ptr %.compoundliteral, align 16, !tbaa !11
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> noundef %__V) #3 {
entry:
  %__V.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V, ptr %__V.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %shuffle = shufflevector <16 x i8> %1, <16 x i8> %3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %conv = sext <8 x i8> %shuffle to <8 x i16>
  %4 = bitcast <8 x i16> %conv to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_add_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
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
define internal <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
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
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %conv = sitofp <4 x i32> %1 to <4 x float>
  ret <4 x float> %conv
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_loadu_ps(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__loadu_ps, ptr %0, i32 0, i32 0
  %1 = load <4 x float>, ptr %__v, align 1, !tbaa !11
  ret <4 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_mul_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #3 {
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
define internal <4 x float> @_mm_load_ps(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <4 x float>, ptr %0, align 16, !tbaa !11
  ret <4 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_min_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %2 = call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %0, <4 x float> %1)
  ret <4 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %__a) #3 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
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
  %1 = load <2 x i64>, ptr %0, align 16, !tbaa !11
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
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
define internal <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
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
  store <2 x i64> %__V1, ptr %__V1.addr, align 16, !tbaa !11
  store <2 x i64> %__V2, ptr %__V2.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__V1.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__V2.addr, align 16, !tbaa !11
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
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %__b) #6
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  store <4 x i32> %1, ptr %__b, align 16, !tbaa !11
  %2 = load <4 x i32>, ptr %__b, align 16, !tbaa !11
  %vecext = extractelement <4 x i32> %2, i32 0
  call void @llvm.lifetime.end.p0(i64 16, ptr %__b) #6
  ret i32 %vecext
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %__a, i32 noundef %__count) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !16
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
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
!11 = !{!7, !7, i64 0}
!12 = !{}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !7, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"short", !7, i64 0}
!20 = distinct !{!20, !14}
