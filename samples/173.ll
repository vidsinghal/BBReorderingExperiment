; ModuleID = 'samples/173.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qs8-vaddc/gen/minmax-avx-mul32-ld32-x8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.2 = type { [4 x i32], [4 x i32], [4 x i32], [4 x i32], [8 x i16], [16 x i8], [16 x i8] }
%struct.__loadu_si32 = type { i32 }
%struct.__mm_storel_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qs8_vaddc_minmax_ukernel__avx_mul32_ld32_x8(i64 noundef %n, ptr noundef %input_a, ptr noundef %input_b, ptr noundef %output, ptr noalias noundef align 64 dereferenceable(384) %params) #0 {
entry:
  %n.addr = alloca i64, align 8
  %input_a.addr = alloca ptr, align 8
  %input_b.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %va_multiplier = alloca <2 x i64>, align 16
  %vshift = alloca <2 x i64>, align 16
  %voutput_zero_point = alloca <2 x i64>, align 16
  %voutput_min = alloca <2 x i64>, align 16
  %voutput_max = alloca <2 x i64>, align 16
  %vbias = alloca <2 x i64>, align 16
  %va0123 = alloca <2 x i64>, align 16
  %va4567 = alloca <2 x i64>, align 16
  %vacc0123 = alloca <2 x i64>, align 16
  %vacc4567 = alloca <2 x i64>, align 16
  %vout01234567 = alloca <2 x i64>, align 16
  %vout0123456701234567 = alloca <2 x i64>, align 16
  %va012336 = alloca <2 x i64>, align 16
  %va456739 = alloca <2 x i64>, align 16
  %vacc012343 = alloca <2 x i64>, align 16
  %vacc456746 = alloca <2 x i64>, align 16
  %vout0123456751 = alloca <2 x i64>, align 16
  %vout012345670123456754 = alloca <2 x i64>, align 16
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %input_a, ptr %input_a.addr, align 8, !tbaa !8
  store ptr %input_b, ptr %input_b.addr, align 8, !tbaa !8
  store ptr %output, ptr %output.addr, align 8, !tbaa !8
  store ptr %params, ptr %params.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %va_multiplier) #5
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %a_multiplier = getelementptr inbounds %struct.anon.2, ptr %0, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4 x i32], ptr %a_multiplier, i64 0, i64 0
  %call = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %va_multiplier, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vshift) #5
  %1 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %shift = getelementptr inbounds %struct.anon.2, ptr %1, i32 0, i32 3
  %arraydecay1 = getelementptr inbounds [4 x i32], ptr %shift, i64 0, i64 0
  %call2 = call <2 x i64> @_mm_loadu_si32(ptr noundef %arraydecay1)
  store <2 x i64> %call2, ptr %vshift, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_zero_point) #5
  %2 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %output_zero_point = getelementptr inbounds %struct.anon.2, ptr %2, i32 0, i32 4
  %arraydecay3 = getelementptr inbounds [8 x i16], ptr %output_zero_point, i64 0, i64 0
  %call4 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay3)
  store <2 x i64> %call4, ptr %voutput_zero_point, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_min) #5
  %3 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %output_min = getelementptr inbounds %struct.anon.2, ptr %3, i32 0, i32 5
  %arraydecay5 = getelementptr inbounds [16 x i8], ptr %output_min, i64 0, i64 0
  %call6 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay5)
  store <2 x i64> %call6, ptr %voutput_min, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_max) #5
  %4 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %output_max = getelementptr inbounds %struct.anon.2, ptr %4, i32 0, i32 6
  %arraydecay7 = getelementptr inbounds [16 x i8], ptr %output_max, i64 0, i64 0
  %call8 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay7)
  store <2 x i64> %call8, ptr %voutput_max, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vbias) #5
  %5 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %b_multiplier = getelementptr inbounds %struct.anon.2, ptr %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x i32], ptr %b_multiplier, i64 0, i64 0
  %6 = load i32, ptr %arrayidx, align 32, !tbaa !10
  %7 = load ptr, ptr %input_b.addr, align 8, !tbaa !8
  %8 = load i8, ptr %7, align 1, !tbaa !10
  %conv = sext i8 %8 to i32
  %mul = mul nsw i32 %6, %conv
  %call9 = call <2 x i64> @_mm_cvtsi32_si128(i32 noundef %mul)
  store <2 x i64> %call9, ptr %vbias, align 16, !tbaa !10
  %9 = load <2 x i64>, ptr %vbias, align 16, !tbaa !10
  %10 = bitcast <2 x i64> %9 to <4 x i32>
  %permil = shufflevector <4 x i32> %10, <4 x i32> poison, <4 x i32> zeroinitializer
  %11 = bitcast <4 x i32> %permil to <2 x i64>
  store <2 x i64> %11, ptr %vbias, align 16, !tbaa !10
  %12 = load <2 x i64>, ptr %vbias, align 16, !tbaa !10
  %13 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %bias = getelementptr inbounds %struct.anon.2, ptr %13, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [4 x i32], ptr %bias, i64 0, i64 0
  %call11 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay10)
  %call12 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %12, <2 x i64> noundef %call11)
  store <2 x i64> %call12, ptr %vbias, align 16, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp = icmp uge i64 %14, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %va0123) #5
  %15 = load ptr, ptr %input_a.addr, align 8, !tbaa !8
  %call14 = call <2 x i64> @_mm_loadu_si32(ptr noundef %15)
  %call15 = call <2 x i64> @_mm_cvtepi8_epi32(<2 x i64> noundef %call14)
  store <2 x i64> %call15, ptr %va0123, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %va4567) #5
  %16 = load ptr, ptr %input_a.addr, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, ptr %16, i64 4
  %call16 = call <2 x i64> @_mm_loadu_si32(ptr noundef %add.ptr)
  %call17 = call <2 x i64> @_mm_cvtepi8_epi32(<2 x i64> noundef %call16)
  store <2 x i64> %call17, ptr %va4567, align 16, !tbaa !10
  %17 = load ptr, ptr %input_a.addr, align 8, !tbaa !8
  %add.ptr18 = getelementptr inbounds i8, ptr %17, i64 8
  store ptr %add.ptr18, ptr %input_a.addr, align 8, !tbaa !8
  %18 = load ptr, ptr %input_b.addr, align 8, !tbaa !8
  %add.ptr19 = getelementptr inbounds i8, ptr %18, i64 8
  store ptr %add.ptr19, ptr %input_b.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0123) #5
  %19 = load <2 x i64>, ptr %vbias, align 16, !tbaa !10
  %20 = load <2 x i64>, ptr %va0123, align 16, !tbaa !10
  %21 = load <2 x i64>, ptr %va_multiplier, align 16, !tbaa !10
  %call20 = call <2 x i64> @_mm_mullo_epi32(<2 x i64> noundef %20, <2 x i64> noundef %21)
  %call21 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %19, <2 x i64> noundef %call20)
  store <2 x i64> %call21, ptr %vacc0123, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc4567) #5
  %22 = load <2 x i64>, ptr %vbias, align 16, !tbaa !10
  %23 = load <2 x i64>, ptr %va4567, align 16, !tbaa !10
  %24 = load <2 x i64>, ptr %va_multiplier, align 16, !tbaa !10
  %call22 = call <2 x i64> @_mm_mullo_epi32(<2 x i64> noundef %23, <2 x i64> noundef %24)
  %call23 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %22, <2 x i64> noundef %call22)
  store <2 x i64> %call23, ptr %vacc4567, align 16, !tbaa !10
  %25 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !10
  %26 = load <2 x i64>, ptr %vshift, align 16, !tbaa !10
  %call24 = call <2 x i64> @_mm_sra_epi32(<2 x i64> noundef %25, <2 x i64> noundef %26)
  store <2 x i64> %call24, ptr %vacc0123, align 16, !tbaa !10
  %27 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !10
  %28 = load <2 x i64>, ptr %vshift, align 16, !tbaa !10
  %call25 = call <2 x i64> @_mm_sra_epi32(<2 x i64> noundef %27, <2 x i64> noundef %28)
  store <2 x i64> %call25, ptr %vacc4567, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout01234567) #5
  %29 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !10
  %30 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !10
  %call26 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %29, <2 x i64> noundef %30)
  %31 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !10
  %call27 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call26, <2 x i64> noundef %31)
  store <2 x i64> %call27, ptr %vout01234567, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout0123456701234567) #5
  %32 = load <2 x i64>, ptr %vout01234567, align 16, !tbaa !10
  %33 = load <2 x i64>, ptr %vout01234567, align 16, !tbaa !10
  %call28 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %32, <2 x i64> noundef %33)
  store <2 x i64> %call28, ptr %vout0123456701234567, align 16, !tbaa !10
  %34 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !10
  %35 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !10
  %call29 = call <2 x i64> @_mm_max_epi8(<2 x i64> noundef %34, <2 x i64> noundef %35)
  store <2 x i64> %call29, ptr %vout0123456701234567, align 16, !tbaa !10
  %36 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !10
  %37 = load <2 x i64>, ptr %voutput_max, align 16, !tbaa !10
  %call30 = call <2 x i64> @_mm_min_epi8(<2 x i64> noundef %36, <2 x i64> noundef %37)
  store <2 x i64> %call30, ptr %vout0123456701234567, align 16, !tbaa !10
  %38 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %39 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !10
  call void @_mm_storel_epi64(ptr noundef %38, <2 x i64> noundef %39)
  %40 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %add.ptr31 = getelementptr inbounds i8, ptr %40, i64 8
  store ptr %add.ptr31, ptr %output.addr, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout0123456701234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc4567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0123) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %va4567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %va0123) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i64, ptr %n.addr, align 8, !tbaa !4
  %sub = sub i64 %41, 8
  store i64 %sub, ptr %n.addr, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp32 = icmp ne i64 %42, 0
  %lnot = xor i1 %cmp32, true
  %lnot34 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot34 to i32
  %conv35 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv35, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end77

if.then:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %va012336) #5
  %43 = load ptr, ptr %input_a.addr, align 8, !tbaa !8
  %call37 = call <2 x i64> @_mm_loadu_si32(ptr noundef %43)
  %call38 = call <2 x i64> @_mm_cvtepi8_epi32(<2 x i64> noundef %call37)
  store <2 x i64> %call38, ptr %va012336, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %va456739) #5
  %44 = load ptr, ptr %input_a.addr, align 8, !tbaa !8
  %add.ptr40 = getelementptr inbounds i8, ptr %44, i64 4
  %call41 = call <2 x i64> @_mm_loadu_si32(ptr noundef %add.ptr40)
  %call42 = call <2 x i64> @_mm_cvtepi8_epi32(<2 x i64> noundef %call41)
  store <2 x i64> %call42, ptr %va456739, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc012343) #5
  %45 = load <2 x i64>, ptr %vbias, align 16, !tbaa !10
  %46 = load <2 x i64>, ptr %va012336, align 16, !tbaa !10
  %47 = load <2 x i64>, ptr %va_multiplier, align 16, !tbaa !10
  %call44 = call <2 x i64> @_mm_mullo_epi32(<2 x i64> noundef %46, <2 x i64> noundef %47)
  %call45 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %45, <2 x i64> noundef %call44)
  store <2 x i64> %call45, ptr %vacc012343, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc456746) #5
  %48 = load <2 x i64>, ptr %vbias, align 16, !tbaa !10
  %49 = load <2 x i64>, ptr %va456739, align 16, !tbaa !10
  %50 = load <2 x i64>, ptr %va_multiplier, align 16, !tbaa !10
  %call47 = call <2 x i64> @_mm_mullo_epi32(<2 x i64> noundef %49, <2 x i64> noundef %50)
  %call48 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %48, <2 x i64> noundef %call47)
  store <2 x i64> %call48, ptr %vacc456746, align 16, !tbaa !10
  %51 = load <2 x i64>, ptr %vacc012343, align 16, !tbaa !10
  %52 = load <2 x i64>, ptr %vshift, align 16, !tbaa !10
  %call49 = call <2 x i64> @_mm_sra_epi32(<2 x i64> noundef %51, <2 x i64> noundef %52)
  store <2 x i64> %call49, ptr %vacc012343, align 16, !tbaa !10
  %53 = load <2 x i64>, ptr %vacc456746, align 16, !tbaa !10
  %54 = load <2 x i64>, ptr %vshift, align 16, !tbaa !10
  %call50 = call <2 x i64> @_mm_sra_epi32(<2 x i64> noundef %53, <2 x i64> noundef %54)
  store <2 x i64> %call50, ptr %vacc456746, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout0123456751) #5
  %55 = load <2 x i64>, ptr %vacc012343, align 16, !tbaa !10
  %56 = load <2 x i64>, ptr %vacc456746, align 16, !tbaa !10
  %call52 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %55, <2 x i64> noundef %56)
  %57 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !10
  %call53 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call52, <2 x i64> noundef %57)
  store <2 x i64> %call53, ptr %vout0123456751, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout012345670123456754) #5
  %58 = load <2 x i64>, ptr %vout0123456751, align 16, !tbaa !10
  %59 = load <2 x i64>, ptr %vout0123456751, align 16, !tbaa !10
  %call55 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %58, <2 x i64> noundef %59)
  store <2 x i64> %call55, ptr %vout012345670123456754, align 16, !tbaa !10
  %60 = load <2 x i64>, ptr %vout012345670123456754, align 16, !tbaa !10
  %61 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !10
  %call56 = call <2 x i64> @_mm_max_epi8(<2 x i64> noundef %60, <2 x i64> noundef %61)
  store <2 x i64> %call56, ptr %vout012345670123456754, align 16, !tbaa !10
  %62 = load <2 x i64>, ptr %vout012345670123456754, align 16, !tbaa !10
  %63 = load <2 x i64>, ptr %voutput_max, align 16, !tbaa !10
  %call57 = call <2 x i64> @_mm_min_epi8(<2 x i64> noundef %62, <2 x i64> noundef %63)
  store <2 x i64> %call57, ptr %vout012345670123456754, align 16, !tbaa !10
  %64 = load i64, ptr %n.addr, align 8, !tbaa !4
  %and = and i64 %64, 4
  %tobool58 = icmp ne i64 %and, 0
  br i1 %tobool58, label %if.then59, label %if.end

if.then59:                                        ; preds = %if.then
  %65 = load <2 x i64>, ptr %vout012345670123456754, align 16, !tbaa !10
  %call60 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %65)
  %66 = load ptr, ptr %output.addr, align 8, !tbaa !8
  store i32 %call60, ptr %66, align 4, !tbaa !11
  %67 = load <2 x i64>, ptr %vout012345670123456754, align 16, !tbaa !10
  %call61 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %67, i32 noundef 32)
  store <2 x i64> %call61, ptr %vout012345670123456754, align 16, !tbaa !10
  %68 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %add.ptr62 = getelementptr inbounds i8, ptr %68, i64 4
  store ptr %add.ptr62, ptr %output.addr, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then59, %if.then
  %69 = load i64, ptr %n.addr, align 8, !tbaa !4
  %and63 = and i64 %69, 2
  %tobool64 = icmp ne i64 %and63, 0
  br i1 %tobool64, label %if.then65, label %if.end70

if.then65:                                        ; preds = %if.end
  %70 = load <2 x i64>, ptr %vout012345670123456754, align 16, !tbaa !10
  %71 = bitcast <2 x i64> %70 to <8 x i16>
  %72 = extractelement <8 x i16> %71, i64 0
  %conv66 = zext i16 %72 to i32
  %conv67 = trunc i32 %conv66 to i16
  %73 = load ptr, ptr %output.addr, align 8, !tbaa !8
  store i16 %conv67, ptr %73, align 2, !tbaa !13
  %74 = load <2 x i64>, ptr %vout012345670123456754, align 16, !tbaa !10
  %call68 = call <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %74, i32 noundef 16)
  store <2 x i64> %call68, ptr %vout012345670123456754, align 16, !tbaa !10
  %75 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %add.ptr69 = getelementptr inbounds i8, ptr %75, i64 2
  store ptr %add.ptr69, ptr %output.addr, align 8, !tbaa !8
  br label %if.end70

if.end70:                                         ; preds = %if.then65, %if.end
  %76 = load i64, ptr %n.addr, align 8, !tbaa !4
  %and71 = and i64 %76, 1
  %tobool72 = icmp ne i64 %and71, 0
  br i1 %tobool72, label %if.then73, label %if.end76

if.then73:                                        ; preds = %if.end70
  %77 = load <2 x i64>, ptr %vout012345670123456754, align 16, !tbaa !10
  %78 = bitcast <2 x i64> %77 to <16 x i8>
  %79 = extractelement <16 x i8> %78, i64 0
  %conv74 = zext i8 %79 to i32
  %conv75 = trunc i32 %conv74 to i8
  %80 = load ptr, ptr %output.addr, align 8, !tbaa !8
  store i8 %conv75, ptr %80, align 1, !tbaa !10
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %if.end70
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout012345670123456754) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout0123456751) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc456746) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc012343) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %va456739) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %va012336) #5
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %for.end
  call void @llvm.lifetime.end.p0(i64 16, ptr %vbias) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_max) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_min) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_zero_point) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vshift) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %va_multiplier) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_load_si128(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %1 = load <2 x i64>, ptr %0, align 16, !tbaa !10
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_loadu_si32(ptr noundef %__a) #2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__u = alloca i32, align 4
  %.compoundliteral = alloca <4 x i32>, align 16
  store ptr %__a, ptr %__a.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %__u) #5
  %0 = load ptr, ptr %__a.addr, align 8, !tbaa !8
  %__v = getelementptr inbounds %struct.__loadu_si32, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %__v, align 1, !tbaa !10
  store i32 %1, ptr %__u, align 4, !tbaa !11
  %2 = load i32, ptr %__u, align 4, !tbaa !11
  %vecinit = insertelement <4 x i32> undef, i32 %2, i32 0
  %vecinit1 = insertelement <4 x i32> %vecinit, i32 0, i32 1
  %vecinit2 = insertelement <4 x i32> %vecinit1, i32 0, i32 2
  %vecinit3 = insertelement <4 x i32> %vecinit2, i32 0, i32 3
  store <4 x i32> %vecinit3, ptr %.compoundliteral, align 16, !tbaa !10
  %3 = load <4 x i32>, ptr %.compoundliteral, align 16, !tbaa !10
  %4 = bitcast <4 x i32> %3 to <2 x i64>
  call void @llvm.lifetime.end.p0(i64 4, ptr %__u) #5
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_cvtsi32_si128(i32 noundef %__a) #2 {
entry:
  %__a.addr = alloca i32, align 4
  %.compoundliteral = alloca <4 x i32>, align 16
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !11
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !11
  %vecinit = insertelement <4 x i32> undef, i32 %0, i32 0
  %vecinit1 = insertelement <4 x i32> %vecinit, i32 0, i32 1
  %vecinit2 = insertelement <4 x i32> %vecinit1, i32 0, i32 2
  %vecinit3 = insertelement <4 x i32> %vecinit2, i32 0, i32 3
  store <4 x i32> %vecinit3, ptr %.compoundliteral, align 16, !tbaa !10
  %1 = load <4 x i32>, ptr %.compoundliteral, align 16, !tbaa !10
  %2 = bitcast <4 x i32> %1 to <2 x i64>
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_add_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %add = add <4 x i32> %1, %3
  %4 = bitcast <4 x i32> %add to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_cvtepi8_epi32(<2 x i64> noundef %__V) #2 {
entry:
  %__V.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V, ptr %__V.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !10
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %shuffle = shufflevector <16 x i8> %1, <16 x i8> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %conv = sext <4 x i8> %shuffle to <4 x i32>
  %4 = bitcast <4 x i32> %conv to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_mullo_epi32(<2 x i64> noundef %__V1, <2 x i64> noundef %__V2) #2 {
entry:
  %__V1.addr = alloca <2 x i64>, align 16
  %__V2.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V1, ptr %__V1.addr, align 16, !tbaa !10
  store <2 x i64> %__V2, ptr %__V2.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__V1.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__V2.addr, align 16, !tbaa !10
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %mul = mul <4 x i32> %1, %3
  %4 = bitcast <4 x i32> %mul to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_sra_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__count) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <2 x i64> %__count, ptr %__count.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__count.addr, align 16, !tbaa !10
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %4 = call <4 x i32> @llvm.x86.sse2.psra.d(<4 x i32> %1, <4 x i32> %3)
  %5 = bitcast <4 x i32> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %elt.sat = call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %1, <8 x i16> %3)
  %4 = bitcast <8 x i16> %elt.sat to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %4 = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %1, <4 x i32> %3)
  %5 = bitcast <8 x i16> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %4 = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %1, <8 x i16> %3)
  %5 = bitcast <16 x i8> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_max_epi8(<2 x i64> noundef %__V1, <2 x i64> noundef %__V2) #2 {
entry:
  %__V1.addr = alloca <2 x i64>, align 16
  %__V2.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V1, ptr %__V1.addr, align 16, !tbaa !10
  store <2 x i64> %__V2, ptr %__V2.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__V1.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__V2.addr, align 16, !tbaa !10
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %elt.max = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %1, <16 x i8> %3)
  %4 = bitcast <16 x i8> %elt.max to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_min_epi8(<2 x i64> noundef %__V1, <2 x i64> noundef %__V2) #2 {
entry:
  %__V1.addr = alloca <2 x i64>, align 16
  %__V2.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V1, ptr %__V1.addr, align 16, !tbaa !10
  store <2 x i64> %__V2, ptr %__V2.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__V1.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__V2.addr, align 16, !tbaa !10
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %elt.min = call <16 x i8> @llvm.smin.v16i8(<16 x i8> %1, <16 x i8> %3)
  %4 = bitcast <16 x i8> %elt.min to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storel_epi64(ptr noundef %__p, <2 x i64> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %vecext = extractelement <2 x i64> %0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__u = getelementptr inbounds %struct.__mm_storel_epi64_struct, ptr %1, i32 0, i32 0
  store i64 %vecext, ptr %__u, align 1, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @_mm_cvtsi128_si32(<2 x i64> noundef %__a) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b = alloca <4 x i32>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %__b) #5
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  store <4 x i32> %1, ptr %__b, align 16, !tbaa !10
  %2 = load <4 x i32>, ptr %__b, align 16, !tbaa !10
  %vecext = extractelement <4 x i32> %2, i32 0
  call void @llvm.lifetime.end.p0(i64 16, ptr %__b) #5
  ret i32 %vecext
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %__a, i32 noundef %__count) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = load i32, ptr %__count.addr, align 4, !tbaa !11
  %2 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %0, i32 %1)
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %__a, i32 noundef %__count) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !11
  %3 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %1, i32 %2)
  %4 = bitcast <4 x i32> %3 to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psra.d(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.smax.v16i8(<16 x i8>, <16 x i8>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.smin.v16i8(<16 x i8>, <16 x i8>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64>, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32>, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!10 = !{!6, !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !6, i64 0}
