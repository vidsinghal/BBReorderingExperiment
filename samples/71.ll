; ModuleID = 'samples/71.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qs8-vaddc/gen/minmax-avx2-mul32-ld64-x8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.3 = type { [8 x i32], [8 x i32], [8 x i32], [8 x i32], [16 x i16], [16 x i8], [16 x i8] }
%struct.__loadu_si32 = type { i32 }
%struct.__mm_loadl_epi64_struct = type { i64 }
%struct.__mm_storel_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qs8_vaddc_minmax_ukernel__avx2_mul32_ld64_x8(i64 noundef %n, ptr noundef %input_a, ptr noundef %input_b, ptr noundef %output, ptr noalias noundef align 64 dereferenceable(384) %params) #0 {
entry:
  %n.addr = alloca i64, align 8
  %input_a.addr = alloca ptr, align 8
  %input_b.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %va_multiplier = alloca <4 x i64>, align 32
  %vshift = alloca <2 x i64>, align 16
  %voutput_zero_point = alloca <2 x i64>, align 16
  %voutput_min = alloca <2 x i64>, align 16
  %voutput_max = alloca <2 x i64>, align 16
  %vbias = alloca <4 x i64>, align 32
  %va01234567 = alloca <4 x i64>, align 32
  %vacc01234567 = alloca <4 x i64>, align 32
  %vout01234567 = alloca <2 x i64>, align 16
  %vout0123456701234567 = alloca <2 x i64>, align 16
  %va0123456731 = alloca <4 x i64>, align 32
  %vacc0123456734 = alloca <4 x i64>, align 32
  %vout0123456738 = alloca <2 x i64>, align 16
  %vout012345670123456743 = alloca <2 x i64>, align 16
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store ptr %input_a, ptr %input_a.addr, align 8, !tbaa !9
  store ptr %input_b, ptr %input_b.addr, align 8, !tbaa !9
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %va_multiplier) #6
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %a_multiplier = getelementptr inbounds %struct.anon.3, ptr %0, i32 0, i32 1
  %arraydecay = getelementptr inbounds [8 x i32], ptr %a_multiplier, i64 0, i64 0
  %call = call <4 x i64> @_mm256_load_si256(ptr noundef %arraydecay)
  store <4 x i64> %call, ptr %va_multiplier, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vshift) #6
  %1 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %shift = getelementptr inbounds %struct.anon.3, ptr %1, i32 0, i32 3
  %arraydecay1 = getelementptr inbounds [8 x i32], ptr %shift, i64 0, i64 0
  %call2 = call <2 x i64> @_mm_loadu_si32(ptr noundef %arraydecay1)
  store <2 x i64> %call2, ptr %vshift, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_zero_point) #6
  %2 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_zero_point = getelementptr inbounds %struct.anon.3, ptr %2, i32 0, i32 4
  %arraydecay3 = getelementptr inbounds [16 x i16], ptr %output_zero_point, i64 0, i64 0
  %call4 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay3)
  store <2 x i64> %call4, ptr %voutput_zero_point, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_min) #6
  %3 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min = getelementptr inbounds %struct.anon.3, ptr %3, i32 0, i32 5
  %arraydecay5 = getelementptr inbounds [16 x i8], ptr %output_min, i64 0, i64 0
  %call6 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay5)
  store <2 x i64> %call6, ptr %voutput_min, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_max) #6
  %4 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max = getelementptr inbounds %struct.anon.3, ptr %4, i32 0, i32 6
  %arraydecay7 = getelementptr inbounds [16 x i8], ptr %output_max, i64 0, i64 0
  %call8 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay7)
  store <2 x i64> %call8, ptr %voutput_max, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vbias) #6
  %5 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %b_multiplier = getelementptr inbounds %struct.anon.3, ptr %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [8 x i32], ptr %b_multiplier, i64 0, i64 0
  %6 = load i32, ptr %arrayidx, align 64, !tbaa !11
  %7 = load ptr, ptr %input_b.addr, align 8, !tbaa !9
  %8 = load i8, ptr %7, align 1, !tbaa !11
  %conv = sext i8 %8 to i32
  %mul = mul nsw i32 %6, %conv
  %call9 = call <2 x i64> @_mm_cvtsi32_si128(i32 noundef %mul)
  %call10 = call <4 x i64> @_mm256_broadcastd_epi32(<2 x i64> noundef %call9)
  %9 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %bias = getelementptr inbounds %struct.anon.3, ptr %9, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [8 x i32], ptr %bias, i64 0, i64 0
  %call12 = call <4 x i64> @_mm256_load_si256(ptr noundef %arraydecay11)
  %call13 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %call10, <4 x i64> noundef %call12)
  store <4 x i64> %call13, ptr %vbias, align 32, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp uge i64 %10, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %va01234567) #6
  %11 = load ptr, ptr %input_a.addr, align 8, !tbaa !9
  %call15 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %11)
  %call16 = call <4 x i64> @_mm256_cvtepi8_epi32(<2 x i64> noundef %call15)
  store <4 x i64> %call16, ptr %va01234567, align 32, !tbaa !11
  %12 = load ptr, ptr %input_a.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 8
  store ptr %add.ptr, ptr %input_a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc01234567) #6
  %13 = load <4 x i64>, ptr %vbias, align 32, !tbaa !11
  %14 = load <4 x i64>, ptr %va01234567, align 32, !tbaa !11
  %15 = load <4 x i64>, ptr %va_multiplier, align 32, !tbaa !11
  %call17 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %14, <4 x i64> noundef %15)
  %call18 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %13, <4 x i64> noundef %call17)
  store <4 x i64> %call18, ptr %vacc01234567, align 32, !tbaa !11
  %16 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %17 = load <2 x i64>, ptr %vshift, align 16, !tbaa !11
  %call19 = call <4 x i64> @_mm256_sra_epi32(<4 x i64> noundef %16, <2 x i64> noundef %17)
  store <4 x i64> %call19, ptr %vacc01234567, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout01234567) #6
  %18 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %call20 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %18)
  %19 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !11
  %extract = shufflevector <4 x i64> %19, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %call21 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %call20, <2 x i64> noundef %extract)
  %20 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !11
  %call22 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call21, <2 x i64> noundef %20)
  store <2 x i64> %call22, ptr %vout01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout0123456701234567) #6
  %21 = load <2 x i64>, ptr %vout01234567, align 16, !tbaa !11
  %22 = load <2 x i64>, ptr %vout01234567, align 16, !tbaa !11
  %call23 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %21, <2 x i64> noundef %22)
  store <2 x i64> %call23, ptr %vout0123456701234567, align 16, !tbaa !11
  %23 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !11
  %24 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !11
  %call24 = call <2 x i64> @_mm_max_epi8(<2 x i64> noundef %23, <2 x i64> noundef %24)
  store <2 x i64> %call24, ptr %vout0123456701234567, align 16, !tbaa !11
  %25 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !11
  %26 = load <2 x i64>, ptr %voutput_max, align 16, !tbaa !11
  %call25 = call <2 x i64> @_mm_min_epi8(<2 x i64> noundef %25, <2 x i64> noundef %26)
  store <2 x i64> %call25, ptr %vout0123456701234567, align 16, !tbaa !11
  %27 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %28 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !11
  call void @_mm_storel_epi64(ptr noundef %27, <2 x i64> noundef %28)
  %29 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr26 = getelementptr inbounds i8, ptr %29, i64 8
  store ptr %add.ptr26, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout0123456701234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %va01234567) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub = sub i64 %30, 8
  store i64 %sub, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %31 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp27 = icmp ne i64 %31, 0
  %lnot = xor i1 %cmp27, true
  %lnot29 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot29 to i32
  %conv30 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv30, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end66

if.then:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 32, ptr %va0123456731) #6
  %32 = load ptr, ptr %input_a.addr, align 8, !tbaa !9
  %call32 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %32)
  %call33 = call <4 x i64> @_mm256_cvtepi8_epi32(<2 x i64> noundef %call32)
  store <4 x i64> %call33, ptr %va0123456731, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc0123456734) #6
  %33 = load <4 x i64>, ptr %vbias, align 32, !tbaa !11
  %34 = load <4 x i64>, ptr %va0123456731, align 32, !tbaa !11
  %35 = load <4 x i64>, ptr %va_multiplier, align 32, !tbaa !11
  %call35 = call <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %34, <4 x i64> noundef %35)
  %call36 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %33, <4 x i64> noundef %call35)
  store <4 x i64> %call36, ptr %vacc0123456734, align 32, !tbaa !11
  %36 = load <4 x i64>, ptr %vacc0123456734, align 32, !tbaa !11
  %37 = load <2 x i64>, ptr %vshift, align 16, !tbaa !11
  %call37 = call <4 x i64> @_mm256_sra_epi32(<4 x i64> noundef %36, <2 x i64> noundef %37)
  store <4 x i64> %call37, ptr %vacc0123456734, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout0123456738) #6
  %38 = load <4 x i64>, ptr %vacc0123456734, align 32, !tbaa !11
  %call39 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %38)
  %39 = load <4 x i64>, ptr %vacc0123456734, align 32, !tbaa !11
  %extract40 = shufflevector <4 x i64> %39, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %call41 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %call39, <2 x i64> noundef %extract40)
  %40 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !11
  %call42 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call41, <2 x i64> noundef %40)
  store <2 x i64> %call42, ptr %vout0123456738, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout012345670123456743) #6
  %41 = load <2 x i64>, ptr %vout0123456738, align 16, !tbaa !11
  %42 = load <2 x i64>, ptr %vout0123456738, align 16, !tbaa !11
  %call44 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %41, <2 x i64> noundef %42)
  store <2 x i64> %call44, ptr %vout012345670123456743, align 16, !tbaa !11
  %43 = load <2 x i64>, ptr %vout012345670123456743, align 16, !tbaa !11
  %44 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !11
  %call45 = call <2 x i64> @_mm_max_epi8(<2 x i64> noundef %43, <2 x i64> noundef %44)
  store <2 x i64> %call45, ptr %vout012345670123456743, align 16, !tbaa !11
  %45 = load <2 x i64>, ptr %vout012345670123456743, align 16, !tbaa !11
  %46 = load <2 x i64>, ptr %voutput_max, align 16, !tbaa !11
  %call46 = call <2 x i64> @_mm_min_epi8(<2 x i64> noundef %45, <2 x i64> noundef %46)
  store <2 x i64> %call46, ptr %vout012345670123456743, align 16, !tbaa !11
  %47 = load i64, ptr %n.addr, align 8, !tbaa !5
  %and = and i64 %47, 4
  %tobool47 = icmp ne i64 %and, 0
  br i1 %tobool47, label %if.then48, label %if.end

if.then48:                                        ; preds = %if.then
  %48 = load <2 x i64>, ptr %vout012345670123456743, align 16, !tbaa !11
  %call49 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %48)
  %49 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store i32 %call49, ptr %49, align 4, !tbaa !14
  %50 = load <2 x i64>, ptr %vout012345670123456743, align 16, !tbaa !11
  %call50 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %50, i32 noundef 32)
  store <2 x i64> %call50, ptr %vout012345670123456743, align 16, !tbaa !11
  %51 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr51 = getelementptr inbounds i8, ptr %51, i64 4
  store ptr %add.ptr51, ptr %output.addr, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then48, %if.then
  %52 = load i64, ptr %n.addr, align 8, !tbaa !5
  %and52 = and i64 %52, 2
  %tobool53 = icmp ne i64 %and52, 0
  br i1 %tobool53, label %if.then54, label %if.end59

if.then54:                                        ; preds = %if.end
  %53 = load <2 x i64>, ptr %vout012345670123456743, align 16, !tbaa !11
  %54 = bitcast <2 x i64> %53 to <8 x i16>
  %55 = extractelement <8 x i16> %54, i64 0
  %conv55 = zext i16 %55 to i32
  %conv56 = trunc i32 %conv55 to i16
  %56 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store i16 %conv56, ptr %56, align 2, !tbaa !16
  %57 = load <2 x i64>, ptr %vout012345670123456743, align 16, !tbaa !11
  %call57 = call <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %57, i32 noundef 16)
  store <2 x i64> %call57, ptr %vout012345670123456743, align 16, !tbaa !11
  %58 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr58 = getelementptr inbounds i8, ptr %58, i64 2
  store ptr %add.ptr58, ptr %output.addr, align 8, !tbaa !9
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %if.end
  %59 = load i64, ptr %n.addr, align 8, !tbaa !5
  %and60 = and i64 %59, 1
  %tobool61 = icmp ne i64 %and60, 0
  br i1 %tobool61, label %if.then62, label %if.end65

if.then62:                                        ; preds = %if.end59
  %60 = load <2 x i64>, ptr %vout012345670123456743, align 16, !tbaa !11
  %61 = bitcast <2 x i64> %60 to <16 x i8>
  %62 = extractelement <16 x i8> %61, i64 0
  %conv63 = zext i8 %62 to i32
  %conv64 = trunc i32 %conv63 to i8
  %63 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store i8 %conv64, ptr %63, align 1, !tbaa !11
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end59
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout012345670123456743) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout0123456738) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc0123456734) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %va0123456731) #6
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %for.end
  call void @llvm.lifetime.end.p0(i64 32, ptr %vbias) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_max) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_min) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_zero_point) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vshift) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %va_multiplier) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_load_si256(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <4 x i64>, ptr %0, align 32, !tbaa !11
  ret <4 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_loadu_si32(ptr noundef %__a) #3 {
entry:
  %__a.addr = alloca ptr, align 8
  %__u = alloca i32, align 4
  %.compoundliteral = alloca <4 x i32>, align 16
  store ptr %__a, ptr %__a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__u) #6
  %0 = load ptr, ptr %__a.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__loadu_si32, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %__v, align 1, !tbaa !11
  store i32 %1, ptr %__u, align 4, !tbaa !14
  %2 = load i32, ptr %__u, align 4, !tbaa !14
  %vecinit = insertelement <4 x i32> undef, i32 %2, i32 0
  %vecinit1 = insertelement <4 x i32> %vecinit, i32 0, i32 1
  %vecinit2 = insertelement <4 x i32> %vecinit1, i32 0, i32 2
  %vecinit3 = insertelement <4 x i32> %vecinit2, i32 0, i32 3
  store <4 x i32> %vecinit3, ptr %.compoundliteral, align 16, !tbaa !11
  %3 = load <4 x i32>, ptr %.compoundliteral, align 16, !tbaa !11
  %4 = bitcast <4 x i32> %3 to <2 x i64>
  call void @llvm.lifetime.end.p0(i64 4, ptr %__u) #6
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
define internal <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %__a, <4 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  %__b.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <4 x i64> %__b, ptr %__b.addr, align 32, !tbaa !11
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !11
  %1 = bitcast <4 x i64> %0 to <8 x i32>
  %2 = load <4 x i64>, ptr %__b.addr, align 32, !tbaa !11
  %3 = bitcast <4 x i64> %2 to <8 x i32>
  %add = add <8 x i32> %1, %3
  %4 = bitcast <8 x i32> %add to <4 x i64>
  ret <4 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_broadcastd_epi32(<2 x i64> noundef %__X) #2 {
entry:
  %__X.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__X, ptr %__X.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__X.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__X.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %shuffle = shufflevector <4 x i32> %1, <4 x i32> %3, <8 x i32> zeroinitializer
  %4 = bitcast <8 x i32> %shuffle to <4 x i64>
  ret <4 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_cvtsi32_si128(i32 noundef %__a) #3 {
entry:
  %__a.addr = alloca i32, align 4
  %.compoundliteral = alloca <4 x i32>, align 16
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !14
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !14
  %vecinit = insertelement <4 x i32> undef, i32 %0, i32 0
  %vecinit1 = insertelement <4 x i32> %vecinit, i32 0, i32 1
  %vecinit2 = insertelement <4 x i32> %vecinit1, i32 0, i32 2
  %vecinit3 = insertelement <4 x i32> %vecinit2, i32 0, i32 3
  store <4 x i32> %vecinit3, ptr %.compoundliteral, align 16, !tbaa !11
  %1 = load <4 x i32>, ptr %.compoundliteral, align 16, !tbaa !11
  %2 = bitcast <4 x i32> %1 to <2 x i64>
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_cvtepi8_epi32(<2 x i64> noundef %__V) #2 {
entry:
  %__V.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V, ptr %__V.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %shuffle = shufflevector <16 x i8> %1, <16 x i8> %3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %conv = sext <8 x i8> %shuffle to <8 x i32>
  %4 = bitcast <8 x i32> %conv to <4 x i64>
  ret <4 x i64> %4
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
define internal <4 x i64> @_mm256_mullo_epi32(<4 x i64> noundef %__a, <4 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  %__b.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <4 x i64> %__b, ptr %__b.addr, align 32, !tbaa !11
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !11
  %1 = bitcast <4 x i64> %0 to <8 x i32>
  %2 = load <4 x i64>, ptr %__b.addr, align 32, !tbaa !11
  %3 = bitcast <4 x i64> %2 to <8 x i32>
  %mul = mul <8 x i32> %1, %3
  %4 = bitcast <8 x i32> %mul to <4 x i64>
  ret <4 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_sra_epi32(<4 x i64> noundef %__a, <2 x i64> noundef %__count) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  %__count.addr = alloca <2 x i64>, align 16
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <2 x i64> %__count, ptr %__count.addr, align 16, !tbaa !11
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !11
  %1 = bitcast <4 x i64> %0 to <8 x i32>
  %2 = load <2 x i64>, ptr %__count.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %4 = call <8 x i32> @llvm.x86.avx2.psra.d(<8 x i32> %1, <4 x i32> %3)
  %5 = bitcast <8 x i32> %4 to <4 x i64>
  ret <4 x i64> %5
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
define internal <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %__a) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !11
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !11
  %1 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !11
  %shuffle = shufflevector <4 x i64> %0, <4 x i64> %1, <2 x i32> <i32 0, i32 1>
  ret <2 x i64> %shuffle
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
define internal <2 x i64> @_mm_min_epi8(<2 x i64> noundef %__V1, <2 x i64> noundef %__V2) #3 {
entry:
  %__V1.addr = alloca <2 x i64>, align 16
  %__V2.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V1, ptr %__V1.addr, align 16, !tbaa !11
  store <2 x i64> %__V2, ptr %__V2.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__V1.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__V2.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %elt.min = call <16 x i8> @llvm.smin.v16i8(<16 x i8> %1, <16 x i8> %3)
  %4 = bitcast <16 x i8> %elt.min to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storel_epi64(ptr noundef %__p, <2 x i64> noundef %__a) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %vecext = extractelement <2 x i64> %0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u = getelementptr inbounds %struct.__mm_storel_epi64_struct, ptr %1, i32 0, i32 0
  store i64 %vecext, ptr %__u, align 1, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

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
define internal <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %__a, i32 noundef %__count) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !14
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load i32, ptr %__count.addr, align 4, !tbaa !14
  %2 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %0, i32 %1)
  ret <2 x i64> %2
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.psra.d(<8 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.smax.v16i8(<16 x i8>, <16 x i8>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.smin.v16i8(<16 x i8>, <16 x i8>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64>, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32>, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
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
