; ModuleID = 'samples/871.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qs8-gemm/gen/1x4c2s4-xw-minmax-fp32-sse2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.2 = type { [4 x float], [4 x float], [8 x i16], [8 x i16] }
%struct.__loadu_si128 = type { <2 x i64> }
%struct.__mm_loadl_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qs8_gemm_xw_minmax_fp32_ukernel_1x4c2s4__sse2(i64 noundef %mr, i64 noundef %nc, i64 noundef %kc, ptr noalias noundef %a, i64 noundef %a_stride, ptr noalias noundef %w, ptr noalias noundef %c, i64 noundef %cm_stride, i64 noundef %cn_stride, ptr noalias noundef align 64 dereferenceable(256) %params) #0 {
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
  %vacc0x0123 = alloca <2 x i64>, align 16
  %k = alloca i64, align 8
  %va0 = alloca <2 x i64>, align 16
  %vxa0 = alloca <2 x i64>, align 16
  %vxb0 = alloca <2 x i64>, align 16
  %vxb1 = alloca <2 x i64>, align 16
  %vxb2 = alloca <2 x i64>, align 16
  %vxb3 = alloca <2 x i64>, align 16
  %vscaled0x0123 = alloca <4 x float>, align 16
  %vscale = alloca <4 x float>, align 16
  %voutput_max_less_zero_point = alloca <4 x float>, align 16
  %voutput_zero_point = alloca <2 x i64>, align 16
  %vacc00x0123 = alloca <2 x i64>, align 16
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
  br label %do.body

do.body:                                          ; preds = %do.cond55, %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0x0123) #6
  %3 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call1 = call <2 x i64> @_mm_loadu_si128(ptr noundef %3)
  store <2 x i64> %call1, ptr %vacc0x0123, align 16, !tbaa !11
  %4 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i32, ptr %4, i64 4
  store ptr %add.ptr, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #6
  %5 = load i64, ptr %kc.addr, align 8, !tbaa !5
  store i64 %5, ptr %k, align 8, !tbaa !5
  br label %do.body2

do.body2:                                         ; preds = %do.cond, %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %va0) #6
  %6 = load ptr, ptr %a0, align 8, !tbaa !9
  %call3 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %6)
  store <2 x i64> %call3, ptr %va0, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxa0) #6
  %7 = load <2 x i64>, ptr %va0, align 16, !tbaa !11
  %8 = load <2 x i64>, ptr %va0, align 16, !tbaa !11
  %call4 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %7, <2 x i64> noundef %8)
  %call5 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call4, i32 noundef 8)
  store <2 x i64> %call5, ptr %vxa0, align 16, !tbaa !11
  %9 = load ptr, ptr %a0, align 8, !tbaa !9
  %add.ptr6 = getelementptr inbounds i8, ptr %9, i64 8
  store ptr %add.ptr6, ptr %a0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb0) #6
  %10 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call7 = call <2 x i64> @_mm_load_si128(ptr noundef %10)
  store <2 x i64> %call7, ptr %vxb0, align 16, !tbaa !11
  %11 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !11
  %12 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !11
  %13 = load <2 x i64>, ptr %vxb0, align 16, !tbaa !11
  %call8 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %12, <2 x i64> noundef %13)
  %call9 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %11, <2 x i64> noundef %call8)
  store <2 x i64> %call9, ptr %vacc0x0123, align 16, !tbaa !11
  %14 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !11
  %15 = bitcast <2 x i64> %14 to <4 x i32>
  %permil = shufflevector <4 x i32> %15, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %16 = bitcast <4 x i32> %permil to <2 x i64>
  store <2 x i64> %16, ptr %vxa0, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb1) #6
  %17 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr10 = getelementptr inbounds i16, ptr %17, i64 8
  %call11 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr10)
  store <2 x i64> %call11, ptr %vxb1, align 16, !tbaa !11
  %18 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !11
  %19 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !11
  %20 = load <2 x i64>, ptr %vxb1, align 16, !tbaa !11
  %call12 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %19, <2 x i64> noundef %20)
  %call13 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %18, <2 x i64> noundef %call12)
  store <2 x i64> %call13, ptr %vacc0x0123, align 16, !tbaa !11
  %21 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !11
  %22 = bitcast <2 x i64> %21 to <4 x i32>
  %permil14 = shufflevector <4 x i32> %22, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %23 = bitcast <4 x i32> %permil14 to <2 x i64>
  store <2 x i64> %23, ptr %vxa0, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb2) #6
  %24 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr15 = getelementptr inbounds i16, ptr %24, i64 16
  %call16 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr15)
  store <2 x i64> %call16, ptr %vxb2, align 16, !tbaa !11
  %25 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !11
  %26 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !11
  %27 = load <2 x i64>, ptr %vxb2, align 16, !tbaa !11
  %call17 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %26, <2 x i64> noundef %27)
  %call18 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %25, <2 x i64> noundef %call17)
  store <2 x i64> %call18, ptr %vacc0x0123, align 16, !tbaa !11
  %28 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !11
  %29 = bitcast <2 x i64> %28 to <4 x i32>
  %permil19 = shufflevector <4 x i32> %29, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %30 = bitcast <4 x i32> %permil19 to <2 x i64>
  store <2 x i64> %30, ptr %vxa0, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxb3) #6
  %31 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr20 = getelementptr inbounds i16, ptr %31, i64 24
  %call21 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr20)
  store <2 x i64> %call21, ptr %vxb3, align 16, !tbaa !11
  %32 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !11
  %33 = load <2 x i64>, ptr %vxa0, align 16, !tbaa !11
  %34 = load <2 x i64>, ptr %vxb3, align 16, !tbaa !11
  %call22 = call <2 x i64> @_mm_madd_epi16(<2 x i64> noundef %33, <2 x i64> noundef %34)
  %call23 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %32, <2 x i64> noundef %call22)
  store <2 x i64> %call23, ptr %vacc0x0123, align 16, !tbaa !11
  %35 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr24 = getelementptr inbounds i16, ptr %35, i64 32
  store ptr %add.ptr24, ptr %w.addr, align 8, !tbaa !9
  %36 = load i64, ptr %k, align 8, !tbaa !5
  %sub = sub i64 %36, 8
  store i64 %sub, ptr %k, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxb0) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxa0) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %va0) #6
  br label %do.cond

do.cond:                                          ; preds = %do.body2
  %37 = load i64, ptr %k, align 8, !tbaa !5
  %cmp = icmp ne i64 %37, 0
  br i1 %cmp, label %do.body2, label %do.end, !llvm.loop !12

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscaled0x0123) #6
  %38 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !11
  %call25 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %38)
  store <4 x float> %call25, ptr %vscaled0x0123, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscale) #6
  %39 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale = getelementptr inbounds %struct.anon.2, ptr %39, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x float], ptr %scale, i64 0, i64 0
  %call26 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay)
  store <4 x float> %call26, ptr %vscale, align 16, !tbaa !11
  %40 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !11
  %41 = load <4 x float>, ptr %vscale, align 16, !tbaa !11
  %call27 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %40, <4 x float> noundef %41)
  store <4 x float> %call27, ptr %vscaled0x0123, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_max_less_zero_point) #6
  %42 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max_less_zero_point = getelementptr inbounds %struct.anon.2, ptr %42, i32 0, i32 1
  %arraydecay28 = getelementptr inbounds [4 x float], ptr %output_max_less_zero_point, i64 0, i64 0
  %call29 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay28)
  store <4 x float> %call29, ptr %voutput_max_less_zero_point, align 16, !tbaa !11
  %43 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !11
  %44 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !11
  %call30 = call <4 x float> @_mm_min_ps(<4 x float> noundef %43, <4 x float> noundef %44)
  store <4 x float> %call30, ptr %vscaled0x0123, align 16, !tbaa !11
  %45 = load <4 x float>, ptr %vscaled0x0123, align 16, !tbaa !11
  %call31 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %45)
  store <2 x i64> %call31, ptr %vacc0x0123, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_zero_point) #6
  %46 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_zero_point = getelementptr inbounds %struct.anon.2, ptr %46, i32 0, i32 2
  %arraydecay32 = getelementptr inbounds [8 x i16], ptr %output_zero_point, i64 0, i64 0
  %call33 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay32)
  store <2 x i64> %call33, ptr %voutput_zero_point, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc00x0123) #6
  %47 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !11
  %48 = load <2 x i64>, ptr %vacc0x0123, align 16, !tbaa !11
  %call34 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %47, <2 x i64> noundef %48)
  %49 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !11
  %call35 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call34, <2 x i64> noundef %49)
  store <2 x i64> %call35, ptr %vacc00x0123, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_min) #6
  %50 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min = getelementptr inbounds %struct.anon.2, ptr %50, i32 0, i32 3
  %arraydecay36 = getelementptr inbounds [8 x i16], ptr %output_min, i64 0, i64 0
  %call37 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay36)
  store <2 x i64> %call37, ptr %voutput_min, align 16, !tbaa !11
  %51 = load <2 x i64>, ptr %vacc00x0123, align 16, !tbaa !11
  %52 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !11
  %call38 = call <2 x i64> @_mm_max_epi16(<2 x i64> noundef %51, <2 x i64> noundef %52)
  store <2 x i64> %call38, ptr %vacc00x0123, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout) #6
  %53 = load <2 x i64>, ptr %vacc00x0123, align 16, !tbaa !11
  %54 = load <2 x i64>, ptr %vacc00x0123, align 16, !tbaa !11
  %call39 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %53, <2 x i64> noundef %54)
  store <2 x i64> %call39, ptr %vout, align 16, !tbaa !11
  %55 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp40 = icmp uge i64 %55, 4
  br i1 %cmp40, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %56 = load <2 x i64>, ptr %vout, align 16, !tbaa !11
  %call41 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %56)
  %57 = load ptr, ptr %c0, align 8, !tbaa !9
  store i32 %call41, ptr %57, align 4, !tbaa !14
  %58 = load ptr, ptr %c0, align 8, !tbaa !9
  %59 = ptrtoint ptr %58 to i64
  %60 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add = add i64 %59, %60
  %61 = inttoptr i64 %add to ptr
  store ptr %61, ptr %c0, align 8, !tbaa !9
  %62 = load ptr, ptr %a0, align 8, !tbaa !9
  %63 = ptrtoint ptr %62 to i64
  %64 = load i64, ptr %kc.addr, align 8, !tbaa !5
  %sub42 = sub i64 %63, %64
  %65 = inttoptr i64 %sub42 to ptr
  store ptr %65, ptr %a0, align 8, !tbaa !9
  %66 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %sub43 = sub i64 %66, 4
  store i64 %sub43, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end54

if.else:                                          ; preds = %do.end
  %67 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and = and i64 %67, 2
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then44, label %if.end

if.then44:                                        ; preds = %if.else
  %68 = load <2 x i64>, ptr %vout, align 16, !tbaa !11
  %69 = bitcast <2 x i64> %68 to <8 x i16>
  %70 = extractelement <8 x i16> %69, i64 0
  %conv = zext i16 %70 to i32
  %conv45 = trunc i32 %conv to i16
  %71 = load ptr, ptr %c0, align 8, !tbaa !9
  store i16 %conv45, ptr %71, align 2, !tbaa !16
  %72 = load ptr, ptr %c0, align 8, !tbaa !9
  %add.ptr46 = getelementptr inbounds i8, ptr %72, i64 2
  store ptr %add.ptr46, ptr %c0, align 8, !tbaa !9
  %73 = load <2 x i64>, ptr %vout, align 16, !tbaa !11
  %call47 = call <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %73, i32 noundef 16)
  store <2 x i64> %call47, ptr %vout, align 16, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then44, %if.else
  %74 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and48 = and i64 %74, 1
  %tobool49 = icmp ne i64 %and48, 0
  br i1 %tobool49, label %if.then50, label %if.end53

if.then50:                                        ; preds = %if.end
  %75 = load <2 x i64>, ptr %vout, align 16, !tbaa !11
  %call51 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %75)
  %conv52 = trunc i32 %call51 to i8
  %76 = load ptr, ptr %c0, align 8, !tbaa !9
  store i8 %conv52, ptr %76, align 1, !tbaa !11
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end
  store i64 0, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_min) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc00x0123) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_zero_point) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_max_less_zero_point) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscale) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscaled0x0123) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0x0123) #6
  br label %do.cond55

do.cond55:                                        ; preds = %if.end54
  %77 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp56 = icmp ne i64 %77, 0
  br i1 %cmp56, label %do.body, label %do.end58, !llvm.loop !18

do.end58:                                         ; preds = %do.cond55
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
define internal <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %__a, i32 noundef %__count) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !14
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !14
  %3 = call <8 x i16> @llvm.x86.sse2.psrai.w(<8 x i16> %1, i32 %2)
  %4 = bitcast <8 x i16> %3 to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %shuffle = shufflevector <16 x i8> %1, <16 x i8> %3, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %4 = bitcast <16 x i8> %shuffle to <2 x i64>
  ret <2 x i64> %4
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
define internal <4 x float> @_mm_load_ps(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <4 x float>, ptr %0, align 16, !tbaa !11
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
define internal <2 x i64> @_mm_max_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
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
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !14
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !14
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
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !7, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"short", !7, i64 0}
!18 = distinct !{!18, !13}
