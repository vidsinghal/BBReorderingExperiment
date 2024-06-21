; ModuleID = 'samples/898.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qu8-gavgpool/gen/7x-minmax-fp32-sse2-c8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.2 = type { [4 x i32], [4 x float], [4 x float], [8 x i16], [16 x i8] }
%struct.__mm_loadl_epi64_struct = type { i64 }
%struct.__mm_storel_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qu8_gavgpool_minmax_fp32_ukernel_7x__sse2_c8(i64 noundef %rows, i64 noundef %channels, ptr noundef %input, i64 noundef %input_stride, ptr noundef %zero, ptr noundef %output, ptr noalias noundef align 16 dereferenceable(112) %params) #0 {
entry:
  %rows.addr = alloca i64, align 8
  %channels.addr = alloca i64, align 8
  %input.addr = alloca ptr, align 8
  %input_stride.addr = alloca i64, align 8
  %zero.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %i0 = alloca ptr, align 8
  %i1 = alloca ptr, align 8
  %i2 = alloca ptr, align 8
  %i3 = alloca ptr, align 8
  %i4 = alloca ptr, align 8
  %i5 = alloca ptr, align 8
  %i6 = alloca ptr, align 8
  %vinit_bias = alloca <2 x i64>, align 16
  %vscale = alloca <4 x float>, align 16
  %voutput_max_less_zero_point = alloca <4 x float>, align 16
  %voutput_zero_point = alloca <2 x i64>, align 16
  %voutput_min = alloca <2 x i64>, align 16
  %vzero = alloca <2 x i64>, align 16
  %vi0x01234567 = alloca <2 x i64>, align 16
  %vxi0x01234567 = alloca <2 x i64>, align 16
  %vi1x01234567 = alloca <2 x i64>, align 16
  %vxi1x01234567 = alloca <2 x i64>, align 16
  %vi2x01234567 = alloca <2 x i64>, align 16
  %vacc01234567 = alloca <2 x i64>, align 16
  %vxi2x01234567 = alloca <2 x i64>, align 16
  %vi3x01234567 = alloca <2 x i64>, align 16
  %vxi3x01234567 = alloca <2 x i64>, align 16
  %vi4x01234567 = alloca <2 x i64>, align 16
  %vxi4x01234567 = alloca <2 x i64>, align 16
  %vi5x01234567 = alloca <2 x i64>, align 16
  %vxi5x01234567 = alloca <2 x i64>, align 16
  %vi6x01234567 = alloca <2 x i64>, align 16
  %vxi6x01234567 = alloca <2 x i64>, align 16
  %vacc0123 = alloca <2 x i64>, align 16
  %vacc4567 = alloca <2 x i64>, align 16
  %vfpacc0123 = alloca <4 x float>, align 16
  %vfpacc4567 = alloca <4 x float>, align 16
  %vout01234567 = alloca <2 x i64>, align 16
  %vout0123456701234567 = alloca <2 x i64>, align 16
  %vi0x01234567120 = alloca <2 x i64>, align 16
  %vi1x01234567123 = alloca <2 x i64>, align 16
  %vxi0x01234567126 = alloca <2 x i64>, align 16
  %vi2x01234567128 = alloca <2 x i64>, align 16
  %vxi1x01234567131 = alloca <2 x i64>, align 16
  %vi3x01234567133 = alloca <2 x i64>, align 16
  %vacc01234567136 = alloca <2 x i64>, align 16
  %vxi2x01234567138 = alloca <2 x i64>, align 16
  %vi4x01234567140 = alloca <2 x i64>, align 16
  %vxi3x01234567144 = alloca <2 x i64>, align 16
  %vi5x01234567146 = alloca <2 x i64>, align 16
  %vxi4x01234567150 = alloca <2 x i64>, align 16
  %vi6x01234567152 = alloca <2 x i64>, align 16
  %vxi5x01234567156 = alloca <2 x i64>, align 16
  %vxi6x01234567159 = alloca <2 x i64>, align 16
  %vacc0123162 = alloca <2 x i64>, align 16
  %vacc4567164 = alloca <2 x i64>, align 16
  %vfpacc0123168 = alloca <4 x float>, align 16
  %vfpacc4567170 = alloca <4 x float>, align 16
  %vout01234567178 = alloca <2 x i64>, align 16
  %vout0123456701234567181 = alloca <2 x i64>, align 16
  %vout0123 = alloca i32, align 4
  store i64 %rows, ptr %rows.addr, align 8, !tbaa !4
  store i64 %channels, ptr %channels.addr, align 8, !tbaa !4
  store ptr %input, ptr %input.addr, align 8, !tbaa !8
  store i64 %input_stride, ptr %input_stride.addr, align 8, !tbaa !4
  store ptr %zero, ptr %zero.addr, align 8, !tbaa !8
  store ptr %output, ptr %output.addr, align 8, !tbaa !8
  store ptr %params, ptr %params.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i0) #5
  %0 = load ptr, ptr %input.addr, align 8, !tbaa !8
  store ptr %0, ptr %i0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i1) #5
  %1 = load ptr, ptr %i0, align 8, !tbaa !8
  %2 = ptrtoint ptr %1 to i64
  %3 = load i64, ptr %input_stride.addr, align 8, !tbaa !4
  %add = add i64 %2, %3
  %4 = inttoptr i64 %add to ptr
  store ptr %4, ptr %i1, align 8, !tbaa !8
  %5 = load i64, ptr %rows.addr, align 8, !tbaa !4
  %cmp = icmp ult i64 %5, 2
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !10

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  store ptr %6, ptr %i1, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %i2) #5
  %7 = load ptr, ptr %i1, align 8, !tbaa !8
  %8 = ptrtoint ptr %7 to i64
  %9 = load i64, ptr %input_stride.addr, align 8, !tbaa !4
  %add2 = add i64 %8, %9
  %10 = inttoptr i64 %add2 to ptr
  store ptr %10, ptr %i2, align 8, !tbaa !8
  %11 = load i64, ptr %rows.addr, align 8, !tbaa !4
  %cmp3 = icmp ule i64 %11, 2
  %lnot5 = xor i1 %cmp3, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %if.then11, label %if.end12, !unpredictable !10

if.then11:                                        ; preds = %if.end
  %12 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  store ptr %12, ptr %i2, align 8, !tbaa !8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %i3) #5
  %13 = load ptr, ptr %i2, align 8, !tbaa !8
  %14 = ptrtoint ptr %13 to i64
  %15 = load i64, ptr %input_stride.addr, align 8, !tbaa !4
  %add13 = add i64 %14, %15
  %16 = inttoptr i64 %add13 to ptr
  store ptr %16, ptr %i3, align 8, !tbaa !8
  %17 = load i64, ptr %rows.addr, align 8, !tbaa !4
  %cmp14 = icmp ult i64 %17, 4
  %lnot16 = xor i1 %cmp14, true
  %lnot18 = xor i1 %lnot16, true
  %lnot.ext19 = zext i1 %lnot18 to i32
  %conv20 = sext i32 %lnot.ext19 to i64
  %tobool21 = icmp ne i64 %conv20, 0
  br i1 %tobool21, label %if.then22, label %if.end23, !unpredictable !10

if.then22:                                        ; preds = %if.end12
  %18 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  store ptr %18, ptr %i3, align 8, !tbaa !8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr %i4) #5
  %19 = load ptr, ptr %i3, align 8, !tbaa !8
  %20 = ptrtoint ptr %19 to i64
  %21 = load i64, ptr %input_stride.addr, align 8, !tbaa !4
  %add24 = add i64 %20, %21
  %22 = inttoptr i64 %add24 to ptr
  store ptr %22, ptr %i4, align 8, !tbaa !8
  %23 = load i64, ptr %rows.addr, align 8, !tbaa !4
  %cmp25 = icmp ule i64 %23, 4
  %lnot27 = xor i1 %cmp25, true
  %lnot29 = xor i1 %lnot27, true
  %lnot.ext30 = zext i1 %lnot29 to i32
  %conv31 = sext i32 %lnot.ext30 to i64
  %tobool32 = icmp ne i64 %conv31, 0
  br i1 %tobool32, label %if.then33, label %if.end34, !unpredictable !10

if.then33:                                        ; preds = %if.end23
  %24 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  store ptr %24, ptr %i4, align 8, !tbaa !8
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end23
  call void @llvm.lifetime.start.p0(i64 8, ptr %i5) #5
  %25 = load ptr, ptr %i4, align 8, !tbaa !8
  %26 = ptrtoint ptr %25 to i64
  %27 = load i64, ptr %input_stride.addr, align 8, !tbaa !4
  %add35 = add i64 %26, %27
  %28 = inttoptr i64 %add35 to ptr
  store ptr %28, ptr %i5, align 8, !tbaa !8
  %29 = load i64, ptr %rows.addr, align 8, !tbaa !4
  %cmp36 = icmp ult i64 %29, 6
  %lnot38 = xor i1 %cmp36, true
  %lnot40 = xor i1 %lnot38, true
  %lnot.ext41 = zext i1 %lnot40 to i32
  %conv42 = sext i32 %lnot.ext41 to i64
  %tobool43 = icmp ne i64 %conv42, 0
  br i1 %tobool43, label %if.then44, label %if.end45, !unpredictable !10

if.then44:                                        ; preds = %if.end34
  %30 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  store ptr %30, ptr %i5, align 8, !tbaa !8
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end34
  call void @llvm.lifetime.start.p0(i64 8, ptr %i6) #5
  %31 = load ptr, ptr %i5, align 8, !tbaa !8
  %32 = ptrtoint ptr %31 to i64
  %33 = load i64, ptr %input_stride.addr, align 8, !tbaa !4
  %add46 = add i64 %32, %33
  %34 = inttoptr i64 %add46 to ptr
  store ptr %34, ptr %i6, align 8, !tbaa !8
  %35 = load i64, ptr %rows.addr, align 8, !tbaa !4
  %cmp47 = icmp ule i64 %35, 6
  %lnot49 = xor i1 %cmp47, true
  %lnot51 = xor i1 %lnot49, true
  %lnot.ext52 = zext i1 %lnot51 to i32
  %conv53 = sext i32 %lnot.ext52 to i64
  %tobool54 = icmp ne i64 %conv53, 0
  br i1 %tobool54, label %if.then55, label %if.end56, !unpredictable !10

if.then55:                                        ; preds = %if.end45
  %36 = load ptr, ptr %zero.addr, align 8, !tbaa !8
  store ptr %36, ptr %i6, align 8, !tbaa !8
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end45
  call void @llvm.lifetime.start.p0(i64 16, ptr %vinit_bias) #5
  %37 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %init_bias = getelementptr inbounds %struct.anon.2, ptr %37, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i32], ptr %init_bias, i64 0, i64 0
  %call = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %vinit_bias, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vscale) #5
  %38 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %scale = getelementptr inbounds %struct.anon.2, ptr %38, i32 0, i32 1
  %arraydecay57 = getelementptr inbounds [4 x float], ptr %scale, i64 0, i64 0
  %call58 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay57)
  store <4 x float> %call58, ptr %vscale, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_max_less_zero_point) #5
  %39 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %output_max_less_zero_point = getelementptr inbounds %struct.anon.2, ptr %39, i32 0, i32 2
  %arraydecay59 = getelementptr inbounds [4 x float], ptr %output_max_less_zero_point, i64 0, i64 0
  %call60 = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay59)
  store <4 x float> %call60, ptr %voutput_max_less_zero_point, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_zero_point) #5
  %40 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %output_zero_point = getelementptr inbounds %struct.anon.2, ptr %40, i32 0, i32 3
  %arraydecay61 = getelementptr inbounds [8 x i16], ptr %output_zero_point, i64 0, i64 0
  %call62 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay61)
  store <2 x i64> %call62, ptr %voutput_zero_point, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_min) #5
  %41 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %output_min = getelementptr inbounds %struct.anon.2, ptr %41, i32 0, i32 4
  %arraydecay63 = getelementptr inbounds [16 x i8], ptr %output_min, i64 0, i64 0
  %call64 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay63)
  store <2 x i64> %call64, ptr %voutput_min, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vzero) #5
  %call65 = call <2 x i64> @_mm_setzero_si128()
  store <2 x i64> %call65, ptr %vzero, align 16, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end56
  %42 = load i64, ptr %channels.addr, align 8, !tbaa !4
  %cmp66 = icmp uge i64 %42, 8
  br i1 %cmp66, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0x01234567) #5
  %43 = load ptr, ptr %i0, align 8, !tbaa !8
  %call68 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %43)
  store <2 x i64> %call68, ptr %vi0x01234567, align 16, !tbaa !11
  %44 = load ptr, ptr %i0, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, ptr %44, i64 8
  store ptr %add.ptr, ptr %i0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi0x01234567) #5
  %45 = load <2 x i64>, ptr %vi0x01234567, align 16, !tbaa !11
  %46 = load <2 x i64>, ptr %vzero, align 16, !tbaa !11
  %call69 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %45, <2 x i64> noundef %46)
  store <2 x i64> %call69, ptr %vxi0x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1x01234567) #5
  %47 = load ptr, ptr %i1, align 8, !tbaa !8
  %call70 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %47)
  store <2 x i64> %call70, ptr %vi1x01234567, align 16, !tbaa !11
  %48 = load ptr, ptr %i1, align 8, !tbaa !8
  %add.ptr71 = getelementptr inbounds i8, ptr %48, i64 8
  store ptr %add.ptr71, ptr %i1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi1x01234567) #5
  %49 = load <2 x i64>, ptr %vi1x01234567, align 16, !tbaa !11
  %50 = load <2 x i64>, ptr %vzero, align 16, !tbaa !11
  %call72 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %49, <2 x i64> noundef %50)
  store <2 x i64> %call72, ptr %vxi1x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2x01234567) #5
  %51 = load ptr, ptr %i2, align 8, !tbaa !8
  %call73 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %51)
  store <2 x i64> %call73, ptr %vi2x01234567, align 16, !tbaa !11
  %52 = load ptr, ptr %i2, align 8, !tbaa !8
  %add.ptr74 = getelementptr inbounds i8, ptr %52, i64 8
  store ptr %add.ptr74, ptr %i2, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc01234567) #5
  %53 = load <2 x i64>, ptr %vxi0x01234567, align 16, !tbaa !11
  %54 = load <2 x i64>, ptr %vxi1x01234567, align 16, !tbaa !11
  %call75 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %53, <2 x i64> noundef %54)
  store <2 x i64> %call75, ptr %vacc01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi2x01234567) #5
  %55 = load <2 x i64>, ptr %vi2x01234567, align 16, !tbaa !11
  %56 = load <2 x i64>, ptr %vzero, align 16, !tbaa !11
  %call76 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %55, <2 x i64> noundef %56)
  store <2 x i64> %call76, ptr %vxi2x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3x01234567) #5
  %57 = load ptr, ptr %i3, align 8, !tbaa !8
  %call77 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %57)
  store <2 x i64> %call77, ptr %vi3x01234567, align 16, !tbaa !11
  %58 = load ptr, ptr %i3, align 8, !tbaa !8
  %add.ptr78 = getelementptr inbounds i8, ptr %58, i64 8
  store ptr %add.ptr78, ptr %i3, align 8, !tbaa !8
  %59 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !11
  %60 = load <2 x i64>, ptr %vxi2x01234567, align 16, !tbaa !11
  %call79 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %59, <2 x i64> noundef %60)
  store <2 x i64> %call79, ptr %vacc01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi3x01234567) #5
  %61 = load <2 x i64>, ptr %vi3x01234567, align 16, !tbaa !11
  %62 = load <2 x i64>, ptr %vzero, align 16, !tbaa !11
  %call80 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %61, <2 x i64> noundef %62)
  store <2 x i64> %call80, ptr %vxi3x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4x01234567) #5
  %63 = load ptr, ptr %i4, align 8, !tbaa !8
  %call81 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %63)
  store <2 x i64> %call81, ptr %vi4x01234567, align 16, !tbaa !11
  %64 = load ptr, ptr %i4, align 8, !tbaa !8
  %add.ptr82 = getelementptr inbounds i8, ptr %64, i64 8
  store ptr %add.ptr82, ptr %i4, align 8, !tbaa !8
  %65 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !11
  %66 = load <2 x i64>, ptr %vxi3x01234567, align 16, !tbaa !11
  %call83 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %65, <2 x i64> noundef %66)
  store <2 x i64> %call83, ptr %vacc01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi4x01234567) #5
  %67 = load <2 x i64>, ptr %vi4x01234567, align 16, !tbaa !11
  %68 = load <2 x i64>, ptr %vzero, align 16, !tbaa !11
  %call84 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %67, <2 x i64> noundef %68)
  store <2 x i64> %call84, ptr %vxi4x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5x01234567) #5
  %69 = load ptr, ptr %i5, align 8, !tbaa !8
  %call85 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %69)
  store <2 x i64> %call85, ptr %vi5x01234567, align 16, !tbaa !11
  %70 = load ptr, ptr %i5, align 8, !tbaa !8
  %add.ptr86 = getelementptr inbounds i8, ptr %70, i64 8
  store ptr %add.ptr86, ptr %i5, align 8, !tbaa !8
  %71 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !11
  %72 = load <2 x i64>, ptr %vxi4x01234567, align 16, !tbaa !11
  %call87 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %71, <2 x i64> noundef %72)
  store <2 x i64> %call87, ptr %vacc01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi5x01234567) #5
  %73 = load <2 x i64>, ptr %vi5x01234567, align 16, !tbaa !11
  %74 = load <2 x i64>, ptr %vzero, align 16, !tbaa !11
  %call88 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %73, <2 x i64> noundef %74)
  store <2 x i64> %call88, ptr %vxi5x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6x01234567) #5
  %75 = load ptr, ptr %i6, align 8, !tbaa !8
  %call89 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %75)
  store <2 x i64> %call89, ptr %vi6x01234567, align 16, !tbaa !11
  %76 = load ptr, ptr %i6, align 8, !tbaa !8
  %add.ptr90 = getelementptr inbounds i8, ptr %76, i64 8
  store ptr %add.ptr90, ptr %i6, align 8, !tbaa !8
  %77 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !11
  %78 = load <2 x i64>, ptr %vxi5x01234567, align 16, !tbaa !11
  %call91 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %77, <2 x i64> noundef %78)
  store <2 x i64> %call91, ptr %vacc01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi6x01234567) #5
  %79 = load <2 x i64>, ptr %vi6x01234567, align 16, !tbaa !11
  %80 = load <2 x i64>, ptr %vzero, align 16, !tbaa !11
  %call92 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %79, <2 x i64> noundef %80)
  store <2 x i64> %call92, ptr %vxi6x01234567, align 16, !tbaa !11
  %81 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !11
  %82 = load <2 x i64>, ptr %vxi6x01234567, align 16, !tbaa !11
  %call93 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %81, <2 x i64> noundef %82)
  store <2 x i64> %call93, ptr %vacc01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0123) #5
  %83 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !11
  %84 = load <2 x i64>, ptr %vzero, align 16, !tbaa !11
  %call94 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %83, <2 x i64> noundef %84)
  store <2 x i64> %call94, ptr %vacc0123, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc4567) #5
  %85 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !11
  %86 = load <2 x i64>, ptr %vzero, align 16, !tbaa !11
  %call95 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %85, <2 x i64> noundef %86)
  store <2 x i64> %call95, ptr %vacc4567, align 16, !tbaa !11
  %87 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !11
  %88 = load <2 x i64>, ptr %vinit_bias, align 16, !tbaa !11
  %call96 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %87, <2 x i64> noundef %88)
  store <2 x i64> %call96, ptr %vacc0123, align 16, !tbaa !11
  %89 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !11
  %90 = load <2 x i64>, ptr %vinit_bias, align 16, !tbaa !11
  %call97 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %89, <2 x i64> noundef %90)
  store <2 x i64> %call97, ptr %vacc4567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vfpacc0123) #5
  %91 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !11
  %call98 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %91)
  store <4 x float> %call98, ptr %vfpacc0123, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vfpacc4567) #5
  %92 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !11
  %call99 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %92)
  store <4 x float> %call99, ptr %vfpacc4567, align 16, !tbaa !11
  %93 = load <4 x float>, ptr %vfpacc0123, align 16, !tbaa !11
  %94 = load <4 x float>, ptr %vscale, align 16, !tbaa !11
  %call100 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %93, <4 x float> noundef %94)
  store <4 x float> %call100, ptr %vfpacc0123, align 16, !tbaa !11
  %95 = load <4 x float>, ptr %vfpacc4567, align 16, !tbaa !11
  %96 = load <4 x float>, ptr %vscale, align 16, !tbaa !11
  %call101 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %95, <4 x float> noundef %96)
  store <4 x float> %call101, ptr %vfpacc4567, align 16, !tbaa !11
  %97 = load <4 x float>, ptr %vfpacc0123, align 16, !tbaa !11
  %98 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !11
  %call102 = call <4 x float> @_mm_min_ps(<4 x float> noundef %97, <4 x float> noundef %98)
  store <4 x float> %call102, ptr %vfpacc0123, align 16, !tbaa !11
  %99 = load <4 x float>, ptr %vfpacc4567, align 16, !tbaa !11
  %100 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !11
  %call103 = call <4 x float> @_mm_min_ps(<4 x float> noundef %99, <4 x float> noundef %100)
  store <4 x float> %call103, ptr %vfpacc4567, align 16, !tbaa !11
  %101 = load <4 x float>, ptr %vfpacc0123, align 16, !tbaa !11
  %call104 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %101)
  store <2 x i64> %call104, ptr %vacc0123, align 16, !tbaa !11
  %102 = load <4 x float>, ptr %vfpacc4567, align 16, !tbaa !11
  %call105 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %102)
  store <2 x i64> %call105, ptr %vacc4567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout01234567) #5
  %103 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !11
  %104 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !11
  %call106 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %103, <2 x i64> noundef %104)
  %105 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !11
  %call107 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call106, <2 x i64> noundef %105)
  store <2 x i64> %call107, ptr %vout01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout0123456701234567) #5
  %106 = load <2 x i64>, ptr %vout01234567, align 16, !tbaa !11
  %107 = load <2 x i64>, ptr %vout01234567, align 16, !tbaa !11
  %call108 = call <2 x i64> @_mm_packus_epi16(<2 x i64> noundef %106, <2 x i64> noundef %107)
  store <2 x i64> %call108, ptr %vout0123456701234567, align 16, !tbaa !11
  %108 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !11
  %109 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !11
  %call109 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %108, <2 x i64> noundef %109)
  store <2 x i64> %call109, ptr %vout0123456701234567, align 16, !tbaa !11
  %110 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %111 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !11
  call void @_mm_storel_epi64(ptr noundef %110, <2 x i64> noundef %111)
  %112 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %add.ptr110 = getelementptr inbounds i8, ptr %112, i64 8
  store ptr %add.ptr110, ptr %output.addr, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout0123456701234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vfpacc4567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vfpacc0123) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc4567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0123) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi6x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi5x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi4x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi3x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi2x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi1x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi0x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0x01234567) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %113 = load i64, ptr %channels.addr, align 8, !tbaa !4
  %sub = sub i64 %113, 8
  store i64 %sub, ptr %channels.addr, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %114 = load i64, ptr %channels.addr, align 8, !tbaa !4
  %cmp111 = icmp ne i64 %114, 0
  %lnot113 = xor i1 %cmp111, true
  %lnot115 = xor i1 %lnot113, true
  %lnot.ext116 = zext i1 %lnot115 to i32
  %conv117 = sext i32 %lnot.ext116 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv117, i64 0)
  %tobool118 = icmp ne i64 %expval, 0
  br i1 %tobool118, label %if.then119, label %if.end202

if.then119:                                       ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0x01234567120) #5
  %115 = load ptr, ptr %i0, align 8, !tbaa !8
  %call121 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %115)
  store <2 x i64> %call121, ptr %vi0x01234567120, align 16, !tbaa !11
  %116 = load ptr, ptr %i0, align 8, !tbaa !8
  %add.ptr122 = getelementptr inbounds i8, ptr %116, i64 8
  store ptr %add.ptr122, ptr %i0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1x01234567123) #5
  %117 = load ptr, ptr %i1, align 8, !tbaa !8
  %call124 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %117)
  store <2 x i64> %call124, ptr %vi1x01234567123, align 16, !tbaa !11
  %118 = load ptr, ptr %i1, align 8, !tbaa !8
  %add.ptr125 = getelementptr inbounds i8, ptr %118, i64 8
  store ptr %add.ptr125, ptr %i1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi0x01234567126) #5
  %119 = load <2 x i64>, ptr %vi0x01234567120, align 16, !tbaa !11
  %120 = load <2 x i64>, ptr %vzero, align 16, !tbaa !11
  %call127 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %119, <2 x i64> noundef %120)
  store <2 x i64> %call127, ptr %vxi0x01234567126, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2x01234567128) #5
  %121 = load ptr, ptr %i2, align 8, !tbaa !8
  %call129 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %121)
  store <2 x i64> %call129, ptr %vi2x01234567128, align 16, !tbaa !11
  %122 = load ptr, ptr %i2, align 8, !tbaa !8
  %add.ptr130 = getelementptr inbounds i8, ptr %122, i64 8
  store ptr %add.ptr130, ptr %i2, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi1x01234567131) #5
  %123 = load <2 x i64>, ptr %vi1x01234567123, align 16, !tbaa !11
  %124 = load <2 x i64>, ptr %vzero, align 16, !tbaa !11
  %call132 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %123, <2 x i64> noundef %124)
  store <2 x i64> %call132, ptr %vxi1x01234567131, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3x01234567133) #5
  %125 = load ptr, ptr %i3, align 8, !tbaa !8
  %call134 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %125)
  store <2 x i64> %call134, ptr %vi3x01234567133, align 16, !tbaa !11
  %126 = load ptr, ptr %i3, align 8, !tbaa !8
  %add.ptr135 = getelementptr inbounds i8, ptr %126, i64 8
  store ptr %add.ptr135, ptr %i3, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc01234567136) #5
  %127 = load <2 x i64>, ptr %vxi0x01234567126, align 16, !tbaa !11
  %128 = load <2 x i64>, ptr %vxi1x01234567131, align 16, !tbaa !11
  %call137 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %127, <2 x i64> noundef %128)
  store <2 x i64> %call137, ptr %vacc01234567136, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi2x01234567138) #5
  %129 = load <2 x i64>, ptr %vi2x01234567128, align 16, !tbaa !11
  %130 = load <2 x i64>, ptr %vzero, align 16, !tbaa !11
  %call139 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %129, <2 x i64> noundef %130)
  store <2 x i64> %call139, ptr %vxi2x01234567138, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4x01234567140) #5
  %131 = load ptr, ptr %i4, align 8, !tbaa !8
  %call141 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %131)
  store <2 x i64> %call141, ptr %vi4x01234567140, align 16, !tbaa !11
  %132 = load ptr, ptr %i4, align 8, !tbaa !8
  %add.ptr142 = getelementptr inbounds i8, ptr %132, i64 8
  store ptr %add.ptr142, ptr %i4, align 8, !tbaa !8
  %133 = load <2 x i64>, ptr %vacc01234567136, align 16, !tbaa !11
  %134 = load <2 x i64>, ptr %vxi2x01234567138, align 16, !tbaa !11
  %call143 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %133, <2 x i64> noundef %134)
  store <2 x i64> %call143, ptr %vacc01234567136, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi3x01234567144) #5
  %135 = load <2 x i64>, ptr %vi3x01234567133, align 16, !tbaa !11
  %136 = load <2 x i64>, ptr %vzero, align 16, !tbaa !11
  %call145 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %135, <2 x i64> noundef %136)
  store <2 x i64> %call145, ptr %vxi3x01234567144, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5x01234567146) #5
  %137 = load ptr, ptr %i5, align 8, !tbaa !8
  %call147 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %137)
  store <2 x i64> %call147, ptr %vi5x01234567146, align 16, !tbaa !11
  %138 = load ptr, ptr %i5, align 8, !tbaa !8
  %add.ptr148 = getelementptr inbounds i8, ptr %138, i64 8
  store ptr %add.ptr148, ptr %i5, align 8, !tbaa !8
  %139 = load <2 x i64>, ptr %vacc01234567136, align 16, !tbaa !11
  %140 = load <2 x i64>, ptr %vxi3x01234567144, align 16, !tbaa !11
  %call149 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %139, <2 x i64> noundef %140)
  store <2 x i64> %call149, ptr %vacc01234567136, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi4x01234567150) #5
  %141 = load <2 x i64>, ptr %vi4x01234567140, align 16, !tbaa !11
  %142 = load <2 x i64>, ptr %vzero, align 16, !tbaa !11
  %call151 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %141, <2 x i64> noundef %142)
  store <2 x i64> %call151, ptr %vxi4x01234567150, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6x01234567152) #5
  %143 = load ptr, ptr %i6, align 8, !tbaa !8
  %call153 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %143)
  store <2 x i64> %call153, ptr %vi6x01234567152, align 16, !tbaa !11
  %144 = load ptr, ptr %i6, align 8, !tbaa !8
  %add.ptr154 = getelementptr inbounds i8, ptr %144, i64 8
  store ptr %add.ptr154, ptr %i6, align 8, !tbaa !8
  %145 = load <2 x i64>, ptr %vacc01234567136, align 16, !tbaa !11
  %146 = load <2 x i64>, ptr %vxi4x01234567150, align 16, !tbaa !11
  %call155 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %145, <2 x i64> noundef %146)
  store <2 x i64> %call155, ptr %vacc01234567136, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi5x01234567156) #5
  %147 = load <2 x i64>, ptr %vi5x01234567146, align 16, !tbaa !11
  %148 = load <2 x i64>, ptr %vzero, align 16, !tbaa !11
  %call157 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %147, <2 x i64> noundef %148)
  store <2 x i64> %call157, ptr %vxi5x01234567156, align 16, !tbaa !11
  %149 = load <2 x i64>, ptr %vacc01234567136, align 16, !tbaa !11
  %150 = load <2 x i64>, ptr %vxi5x01234567156, align 16, !tbaa !11
  %call158 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %149, <2 x i64> noundef %150)
  store <2 x i64> %call158, ptr %vacc01234567136, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi6x01234567159) #5
  %151 = load <2 x i64>, ptr %vi6x01234567152, align 16, !tbaa !11
  %152 = load <2 x i64>, ptr %vzero, align 16, !tbaa !11
  %call160 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %151, <2 x i64> noundef %152)
  store <2 x i64> %call160, ptr %vxi6x01234567159, align 16, !tbaa !11
  %153 = load <2 x i64>, ptr %vacc01234567136, align 16, !tbaa !11
  %154 = load <2 x i64>, ptr %vxi6x01234567159, align 16, !tbaa !11
  %call161 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %153, <2 x i64> noundef %154)
  store <2 x i64> %call161, ptr %vacc01234567136, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0123162) #5
  %155 = load <2 x i64>, ptr %vacc01234567136, align 16, !tbaa !11
  %156 = load <2 x i64>, ptr %vzero, align 16, !tbaa !11
  %call163 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %155, <2 x i64> noundef %156)
  store <2 x i64> %call163, ptr %vacc0123162, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc4567164) #5
  %157 = load <2 x i64>, ptr %vacc01234567136, align 16, !tbaa !11
  %158 = load <2 x i64>, ptr %vzero, align 16, !tbaa !11
  %call165 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %157, <2 x i64> noundef %158)
  store <2 x i64> %call165, ptr %vacc4567164, align 16, !tbaa !11
  %159 = load <2 x i64>, ptr %vacc0123162, align 16, !tbaa !11
  %160 = load <2 x i64>, ptr %vinit_bias, align 16, !tbaa !11
  %call166 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %159, <2 x i64> noundef %160)
  store <2 x i64> %call166, ptr %vacc0123162, align 16, !tbaa !11
  %161 = load <2 x i64>, ptr %vacc4567164, align 16, !tbaa !11
  %162 = load <2 x i64>, ptr %vinit_bias, align 16, !tbaa !11
  %call167 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %161, <2 x i64> noundef %162)
  store <2 x i64> %call167, ptr %vacc4567164, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vfpacc0123168) #5
  %163 = load <2 x i64>, ptr %vacc0123162, align 16, !tbaa !11
  %call169 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %163)
  store <4 x float> %call169, ptr %vfpacc0123168, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vfpacc4567170) #5
  %164 = load <2 x i64>, ptr %vacc4567164, align 16, !tbaa !11
  %call171 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %164)
  store <4 x float> %call171, ptr %vfpacc4567170, align 16, !tbaa !11
  %165 = load <4 x float>, ptr %vfpacc0123168, align 16, !tbaa !11
  %166 = load <4 x float>, ptr %vscale, align 16, !tbaa !11
  %call172 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %165, <4 x float> noundef %166)
  store <4 x float> %call172, ptr %vfpacc0123168, align 16, !tbaa !11
  %167 = load <4 x float>, ptr %vfpacc4567170, align 16, !tbaa !11
  %168 = load <4 x float>, ptr %vscale, align 16, !tbaa !11
  %call173 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %167, <4 x float> noundef %168)
  store <4 x float> %call173, ptr %vfpacc4567170, align 16, !tbaa !11
  %169 = load <4 x float>, ptr %vfpacc0123168, align 16, !tbaa !11
  %170 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !11
  %call174 = call <4 x float> @_mm_min_ps(<4 x float> noundef %169, <4 x float> noundef %170)
  store <4 x float> %call174, ptr %vfpacc0123168, align 16, !tbaa !11
  %171 = load <4 x float>, ptr %vfpacc4567170, align 16, !tbaa !11
  %172 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !11
  %call175 = call <4 x float> @_mm_min_ps(<4 x float> noundef %171, <4 x float> noundef %172)
  store <4 x float> %call175, ptr %vfpacc4567170, align 16, !tbaa !11
  %173 = load <4 x float>, ptr %vfpacc0123168, align 16, !tbaa !11
  %call176 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %173)
  store <2 x i64> %call176, ptr %vacc0123162, align 16, !tbaa !11
  %174 = load <4 x float>, ptr %vfpacc4567170, align 16, !tbaa !11
  %call177 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %174)
  store <2 x i64> %call177, ptr %vacc4567164, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout01234567178) #5
  %175 = load <2 x i64>, ptr %vacc0123162, align 16, !tbaa !11
  %176 = load <2 x i64>, ptr %vacc4567164, align 16, !tbaa !11
  %call179 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %175, <2 x i64> noundef %176)
  %177 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !11
  %call180 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call179, <2 x i64> noundef %177)
  store <2 x i64> %call180, ptr %vout01234567178, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout0123456701234567181) #5
  %178 = load <2 x i64>, ptr %vout01234567178, align 16, !tbaa !11
  %179 = load <2 x i64>, ptr %vout01234567178, align 16, !tbaa !11
  %call182 = call <2 x i64> @_mm_packus_epi16(<2 x i64> noundef %178, <2 x i64> noundef %179)
  store <2 x i64> %call182, ptr %vout0123456701234567181, align 16, !tbaa !11
  %180 = load <2 x i64>, ptr %vout0123456701234567181, align 16, !tbaa !11
  %181 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !11
  %call183 = call <2 x i64> @_mm_max_epu8(<2 x i64> noundef %180, <2 x i64> noundef %181)
  store <2 x i64> %call183, ptr %vout0123456701234567181, align 16, !tbaa !11
  %182 = load i64, ptr %channels.addr, align 8, !tbaa !4
  %and = and i64 %182, 4
  %tobool184 = icmp ne i64 %and, 0
  br i1 %tobool184, label %if.then185, label %if.end189

if.then185:                                       ; preds = %if.then119
  %183 = load <2 x i64>, ptr %vout0123456701234567181, align 16, !tbaa !11
  %call186 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %183)
  %184 = load ptr, ptr %output.addr, align 8, !tbaa !8
  store i32 %call186, ptr %184, align 4, !tbaa !12
  %185 = load <2 x i64>, ptr %vout0123456701234567181, align 16, !tbaa !11
  %call187 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %185, i32 noundef 32)
  store <2 x i64> %call187, ptr %vout0123456701234567181, align 16, !tbaa !11
  %186 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %add.ptr188 = getelementptr inbounds i8, ptr %186, i64 4
  store ptr %add.ptr188, ptr %output.addr, align 8, !tbaa !8
  br label %if.end189

if.end189:                                        ; preds = %if.then185, %if.then119
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout0123) #5
  %187 = load <2 x i64>, ptr %vout0123456701234567181, align 16, !tbaa !11
  %call190 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %187)
  store i32 %call190, ptr %vout0123, align 4, !tbaa !12
  %188 = load i64, ptr %channels.addr, align 8, !tbaa !4
  %and191 = and i64 %188, 2
  %tobool192 = icmp ne i64 %and191, 0
  br i1 %tobool192, label %if.then193, label %if.end196

if.then193:                                       ; preds = %if.end189
  %189 = load i32, ptr %vout0123, align 4, !tbaa !12
  %conv194 = trunc i32 %189 to i16
  %190 = load ptr, ptr %output.addr, align 8, !tbaa !8
  store i16 %conv194, ptr %190, align 2, !tbaa !14
  %191 = load i32, ptr %vout0123, align 4, !tbaa !12
  %shr = lshr i32 %191, 16
  store i32 %shr, ptr %vout0123, align 4, !tbaa !12
  %192 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %add.ptr195 = getelementptr inbounds i8, ptr %192, i64 2
  store ptr %add.ptr195, ptr %output.addr, align 8, !tbaa !8
  br label %if.end196

if.end196:                                        ; preds = %if.then193, %if.end189
  %193 = load i64, ptr %channels.addr, align 8, !tbaa !4
  %and197 = and i64 %193, 1
  %tobool198 = icmp ne i64 %and197, 0
  br i1 %tobool198, label %if.then199, label %if.end201

if.then199:                                       ; preds = %if.end196
  %194 = load i32, ptr %vout0123, align 4, !tbaa !12
  %conv200 = trunc i32 %194 to i8
  %195 = load ptr, ptr %output.addr, align 8, !tbaa !8
  store i8 %conv200, ptr %195, align 1, !tbaa !11
  br label %if.end201

if.end201:                                        ; preds = %if.then199, %if.end196
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout0123) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout0123456701234567181) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout01234567178) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vfpacc4567170) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vfpacc0123168) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc4567164) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0123162) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi6x01234567159) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi5x01234567156) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6x01234567152) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi4x01234567150) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5x01234567146) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi3x01234567144) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4x01234567140) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi2x01234567138) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc01234567136) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3x01234567133) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi1x01234567131) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2x01234567128) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi0x01234567126) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1x01234567123) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0x01234567120) #5
  br label %if.end202

if.end202:                                        ; preds = %if.end201, %for.end
  call void @llvm.lifetime.end.p0(i64 16, ptr %vzero) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_min) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_zero_point) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_max_less_zero_point) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vscale) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vinit_bias) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i0) #5
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
  %1 = load <2 x i64>, ptr %0, align 16, !tbaa !11
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_load_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %1 = load <4 x float>, ptr %0, align 16, !tbaa !11
  ret <4 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_setzero_si128() #2 {
entry:
  %.compoundliteral = alloca <2 x i64>, align 16
  store <2 x i64> zeroinitializer, ptr %.compoundliteral, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %.compoundliteral, align 16, !tbaa !11
  ret <2 x i64> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_loadl_epi64(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %.compoundliteral = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__u = getelementptr inbounds %struct.__mm_loadl_epi64_struct, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %__u, align 1, !tbaa !11
  %vecinit = insertelement <2 x i64> undef, i64 %1, i32 0
  %vecinit1 = insertelement <2 x i64> %vecinit, i64 0, i32 1
  store <2 x i64> %vecinit1, ptr %.compoundliteral, align 16, !tbaa !11
  %2 = load <2 x i64>, ptr %.compoundliteral, align 16, !tbaa !11
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
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
define internal <2 x i64> @_mm_add_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %add = add <8 x i16> %1, %3
  %4 = bitcast <8 x i16> %add to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %shuffle = shufflevector <8 x i16> %1, <8 x i16> %3, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %4 = bitcast <8 x i16> %shuffle to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %shuffle = shufflevector <8 x i16> %1, <8 x i16> %3, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %4 = bitcast <8 x i16> %shuffle to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_add_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
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
define internal <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %__a) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %conv = sitofp <4 x i32> %1 to <4 x float>
  ret <4 x float> %conv
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_mul_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
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
define internal <4 x float> @_mm_min_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
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
define internal <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %__a) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %0)
  %2 = bitcast <4 x i32> %1 to <2 x i64>
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
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
define internal <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
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
define internal <2 x i64> @_mm_packus_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %4 = call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %1, <8 x i16> %3)
  %5 = bitcast <16 x i8> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_max_epu8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %elt.max = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %1, <16 x i8> %3)
  %4 = bitcast <16 x i8> %elt.max to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storel_epi64(ptr noundef %__p, <2 x i64> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %vecext = extractelement <2 x i64> %0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__u = getelementptr inbounds %struct.__mm_storel_epi64_struct, ptr %1, i32 0, i32 0
  store i64 %vecext, ptr %__u, align 1, !tbaa !11
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
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %__b) #5
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  store <4 x i32> %1, ptr %__b, align 16, !tbaa !11
  %2 = load <4 x i32>, ptr %__b, align 16, !tbaa !11
  %vecext = extractelement <4 x i32> %2, i32 0
  call void @llvm.lifetime.end.p0(i64 16, ptr %__b) #5
  ret i32 %vecext
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %__a, i32 noundef %__count) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load i32, ptr %__count.addr, align 4, !tbaa !12
  %2 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %0, i32 %1)
  ret <2 x i64> %2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64>, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!10 = !{}
!11 = !{!6, !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !6, i64 0}
