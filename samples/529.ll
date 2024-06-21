; ModuleID = 'samples/529.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qs8-gavgpool/gen/7x-minmax-fp32-sse2-c8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.2 = type { [4 x i32], [4 x float], [4 x float], [8 x i16], [8 x i16] }
%struct.__mm_loadl_epi64_struct = type { i64 }
%struct.__mm_storel_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qs8_gavgpool_minmax_fp32_ukernel_7x__sse2_c8(i64 noundef %rows, i64 noundef %channels, ptr noundef %input, i64 noundef %input_stride, ptr noundef %zero, ptr noundef %output, ptr noalias noundef align 16 dereferenceable(80) %params) #0 {
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
  %vsgnacc01234567 = alloca <2 x i64>, align 16
  %vacc0123 = alloca <2 x i64>, align 16
  %vacc4567 = alloca <2 x i64>, align 16
  %vfpacc0123 = alloca <4 x float>, align 16
  %vfpacc4567 = alloca <4 x float>, align 16
  %vout01234567 = alloca <2 x i64>, align 16
  %vout0123456701234567 = alloca <2 x i64>, align 16
  %vi0x01234567128 = alloca <2 x i64>, align 16
  %vi1x01234567131 = alloca <2 x i64>, align 16
  %vxi0x01234567134 = alloca <2 x i64>, align 16
  %vi2x01234567137 = alloca <2 x i64>, align 16
  %vxi1x01234567140 = alloca <2 x i64>, align 16
  %vi3x01234567143 = alloca <2 x i64>, align 16
  %vacc01234567146 = alloca <2 x i64>, align 16
  %vxi2x01234567148 = alloca <2 x i64>, align 16
  %vi4x01234567151 = alloca <2 x i64>, align 16
  %vxi3x01234567155 = alloca <2 x i64>, align 16
  %vi5x01234567158 = alloca <2 x i64>, align 16
  %vxi4x01234567162 = alloca <2 x i64>, align 16
  %vi6x01234567165 = alloca <2 x i64>, align 16
  %vxi5x01234567169 = alloca <2 x i64>, align 16
  %vxi6x01234567173 = alloca <2 x i64>, align 16
  %vsgnacc01234567177 = alloca <2 x i64>, align 16
  %vacc0123180 = alloca <2 x i64>, align 16
  %vacc4567182 = alloca <2 x i64>, align 16
  %vfpacc0123186 = alloca <4 x float>, align 16
  %vfpacc4567188 = alloca <4 x float>, align 16
  %vout01234567196 = alloca <2 x i64>, align 16
  %vout0123456701234567200 = alloca <2 x i64>, align 16
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
  %arraydecay63 = getelementptr inbounds [8 x i16], ptr %output_min, i64 0, i64 0
  %call64 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay63)
  store <2 x i64> %call64, ptr %voutput_min, align 16, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end56
  %42 = load i64, ptr %channels.addr, align 8, !tbaa !4
  %cmp65 = icmp uge i64 %42, 8
  br i1 %cmp65, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0x01234567) #5
  %43 = load ptr, ptr %i0, align 8, !tbaa !8
  %call67 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %43)
  store <2 x i64> %call67, ptr %vi0x01234567, align 16, !tbaa !11
  %44 = load ptr, ptr %i0, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, ptr %44, i64 8
  store ptr %add.ptr, ptr %i0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi0x01234567) #5
  %45 = load <2 x i64>, ptr %vi0x01234567, align 16, !tbaa !11
  %46 = load <2 x i64>, ptr %vi0x01234567, align 16, !tbaa !11
  %call68 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %45, <2 x i64> noundef %46)
  %call69 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call68, i32 noundef 8)
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
  %50 = load <2 x i64>, ptr %vi1x01234567, align 16, !tbaa !11
  %call72 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %49, <2 x i64> noundef %50)
  %call73 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call72, i32 noundef 8)
  store <2 x i64> %call73, ptr %vxi1x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2x01234567) #5
  %51 = load ptr, ptr %i2, align 8, !tbaa !8
  %call74 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %51)
  store <2 x i64> %call74, ptr %vi2x01234567, align 16, !tbaa !11
  %52 = load ptr, ptr %i2, align 8, !tbaa !8
  %add.ptr75 = getelementptr inbounds i8, ptr %52, i64 8
  store ptr %add.ptr75, ptr %i2, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc01234567) #5
  %53 = load <2 x i64>, ptr %vxi0x01234567, align 16, !tbaa !11
  %54 = load <2 x i64>, ptr %vxi1x01234567, align 16, !tbaa !11
  %call76 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %53, <2 x i64> noundef %54)
  store <2 x i64> %call76, ptr %vacc01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi2x01234567) #5
  %55 = load <2 x i64>, ptr %vi2x01234567, align 16, !tbaa !11
  %56 = load <2 x i64>, ptr %vi2x01234567, align 16, !tbaa !11
  %call77 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %55, <2 x i64> noundef %56)
  %call78 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call77, i32 noundef 8)
  store <2 x i64> %call78, ptr %vxi2x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3x01234567) #5
  %57 = load ptr, ptr %i3, align 8, !tbaa !8
  %call79 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %57)
  store <2 x i64> %call79, ptr %vi3x01234567, align 16, !tbaa !11
  %58 = load ptr, ptr %i3, align 8, !tbaa !8
  %add.ptr80 = getelementptr inbounds i8, ptr %58, i64 8
  store ptr %add.ptr80, ptr %i3, align 8, !tbaa !8
  %59 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !11
  %60 = load <2 x i64>, ptr %vxi2x01234567, align 16, !tbaa !11
  %call81 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %59, <2 x i64> noundef %60)
  store <2 x i64> %call81, ptr %vacc01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi3x01234567) #5
  %61 = load <2 x i64>, ptr %vi3x01234567, align 16, !tbaa !11
  %62 = load <2 x i64>, ptr %vi3x01234567, align 16, !tbaa !11
  %call82 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %61, <2 x i64> noundef %62)
  %call83 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call82, i32 noundef 8)
  store <2 x i64> %call83, ptr %vxi3x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4x01234567) #5
  %63 = load ptr, ptr %i4, align 8, !tbaa !8
  %call84 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %63)
  store <2 x i64> %call84, ptr %vi4x01234567, align 16, !tbaa !11
  %64 = load ptr, ptr %i4, align 8, !tbaa !8
  %add.ptr85 = getelementptr inbounds i8, ptr %64, i64 8
  store ptr %add.ptr85, ptr %i4, align 8, !tbaa !8
  %65 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !11
  %66 = load <2 x i64>, ptr %vxi3x01234567, align 16, !tbaa !11
  %call86 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %65, <2 x i64> noundef %66)
  store <2 x i64> %call86, ptr %vacc01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi4x01234567) #5
  %67 = load <2 x i64>, ptr %vi4x01234567, align 16, !tbaa !11
  %68 = load <2 x i64>, ptr %vi4x01234567, align 16, !tbaa !11
  %call87 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %67, <2 x i64> noundef %68)
  %call88 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call87, i32 noundef 8)
  store <2 x i64> %call88, ptr %vxi4x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5x01234567) #5
  %69 = load ptr, ptr %i5, align 8, !tbaa !8
  %call89 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %69)
  store <2 x i64> %call89, ptr %vi5x01234567, align 16, !tbaa !11
  %70 = load ptr, ptr %i5, align 8, !tbaa !8
  %add.ptr90 = getelementptr inbounds i8, ptr %70, i64 8
  store ptr %add.ptr90, ptr %i5, align 8, !tbaa !8
  %71 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !11
  %72 = load <2 x i64>, ptr %vxi4x01234567, align 16, !tbaa !11
  %call91 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %71, <2 x i64> noundef %72)
  store <2 x i64> %call91, ptr %vacc01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi5x01234567) #5
  %73 = load <2 x i64>, ptr %vi5x01234567, align 16, !tbaa !11
  %74 = load <2 x i64>, ptr %vi5x01234567, align 16, !tbaa !11
  %call92 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %73, <2 x i64> noundef %74)
  %call93 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call92, i32 noundef 8)
  store <2 x i64> %call93, ptr %vxi5x01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6x01234567) #5
  %75 = load ptr, ptr %i6, align 8, !tbaa !8
  %call94 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %75)
  store <2 x i64> %call94, ptr %vi6x01234567, align 16, !tbaa !11
  %76 = load ptr, ptr %i6, align 8, !tbaa !8
  %add.ptr95 = getelementptr inbounds i8, ptr %76, i64 8
  store ptr %add.ptr95, ptr %i6, align 8, !tbaa !8
  %77 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !11
  %78 = load <2 x i64>, ptr %vxi5x01234567, align 16, !tbaa !11
  %call96 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %77, <2 x i64> noundef %78)
  store <2 x i64> %call96, ptr %vacc01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi6x01234567) #5
  %79 = load <2 x i64>, ptr %vi6x01234567, align 16, !tbaa !11
  %80 = load <2 x i64>, ptr %vi6x01234567, align 16, !tbaa !11
  %call97 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %79, <2 x i64> noundef %80)
  %call98 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call97, i32 noundef 8)
  store <2 x i64> %call98, ptr %vxi6x01234567, align 16, !tbaa !11
  %81 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !11
  %82 = load <2 x i64>, ptr %vxi6x01234567, align 16, !tbaa !11
  %call99 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %81, <2 x i64> noundef %82)
  store <2 x i64> %call99, ptr %vacc01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vsgnacc01234567) #5
  %call100 = call <2 x i64> @_mm_setzero_si128()
  %83 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !11
  %call101 = call <2 x i64> @_mm_cmpgt_epi16(<2 x i64> noundef %call100, <2 x i64> noundef %83)
  store <2 x i64> %call101, ptr %vsgnacc01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0123) #5
  %84 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !11
  %85 = load <2 x i64>, ptr %vsgnacc01234567, align 16, !tbaa !11
  %call102 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %84, <2 x i64> noundef %85)
  store <2 x i64> %call102, ptr %vacc0123, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc4567) #5
  %86 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !11
  %87 = load <2 x i64>, ptr %vsgnacc01234567, align 16, !tbaa !11
  %call103 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %86, <2 x i64> noundef %87)
  store <2 x i64> %call103, ptr %vacc4567, align 16, !tbaa !11
  %88 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !11
  %89 = load <2 x i64>, ptr %vinit_bias, align 16, !tbaa !11
  %call104 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %88, <2 x i64> noundef %89)
  store <2 x i64> %call104, ptr %vacc0123, align 16, !tbaa !11
  %90 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !11
  %91 = load <2 x i64>, ptr %vinit_bias, align 16, !tbaa !11
  %call105 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %90, <2 x i64> noundef %91)
  store <2 x i64> %call105, ptr %vacc4567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vfpacc0123) #5
  %92 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !11
  %call106 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %92)
  store <4 x float> %call106, ptr %vfpacc0123, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vfpacc4567) #5
  %93 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !11
  %call107 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %93)
  store <4 x float> %call107, ptr %vfpacc4567, align 16, !tbaa !11
  %94 = load <4 x float>, ptr %vfpacc0123, align 16, !tbaa !11
  %95 = load <4 x float>, ptr %vscale, align 16, !tbaa !11
  %call108 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %94, <4 x float> noundef %95)
  store <4 x float> %call108, ptr %vfpacc0123, align 16, !tbaa !11
  %96 = load <4 x float>, ptr %vfpacc4567, align 16, !tbaa !11
  %97 = load <4 x float>, ptr %vscale, align 16, !tbaa !11
  %call109 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %96, <4 x float> noundef %97)
  store <4 x float> %call109, ptr %vfpacc4567, align 16, !tbaa !11
  %98 = load <4 x float>, ptr %vfpacc0123, align 16, !tbaa !11
  %99 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !11
  %call110 = call <4 x float> @_mm_min_ps(<4 x float> noundef %98, <4 x float> noundef %99)
  store <4 x float> %call110, ptr %vfpacc0123, align 16, !tbaa !11
  %100 = load <4 x float>, ptr %vfpacc4567, align 16, !tbaa !11
  %101 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !11
  %call111 = call <4 x float> @_mm_min_ps(<4 x float> noundef %100, <4 x float> noundef %101)
  store <4 x float> %call111, ptr %vfpacc4567, align 16, !tbaa !11
  %102 = load <4 x float>, ptr %vfpacc0123, align 16, !tbaa !11
  %call112 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %102)
  store <2 x i64> %call112, ptr %vacc0123, align 16, !tbaa !11
  %103 = load <4 x float>, ptr %vfpacc4567, align 16, !tbaa !11
  %call113 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %103)
  store <2 x i64> %call113, ptr %vacc4567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout01234567) #5
  %104 = load <2 x i64>, ptr %vacc0123, align 16, !tbaa !11
  %105 = load <2 x i64>, ptr %vacc4567, align 16, !tbaa !11
  %call114 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %104, <2 x i64> noundef %105)
  %106 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !11
  %call115 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call114, <2 x i64> noundef %106)
  store <2 x i64> %call115, ptr %vout01234567, align 16, !tbaa !11
  %107 = load <2 x i64>, ptr %vout01234567, align 16, !tbaa !11
  %108 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !11
  %call116 = call <2 x i64> @_mm_max_epi16(<2 x i64> noundef %107, <2 x i64> noundef %108)
  store <2 x i64> %call116, ptr %vout01234567, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout0123456701234567) #5
  %109 = load <2 x i64>, ptr %vout01234567, align 16, !tbaa !11
  %110 = load <2 x i64>, ptr %vout01234567, align 16, !tbaa !11
  %call117 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %109, <2 x i64> noundef %110)
  store <2 x i64> %call117, ptr %vout0123456701234567, align 16, !tbaa !11
  %111 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %112 = load <2 x i64>, ptr %vout0123456701234567, align 16, !tbaa !11
  call void @_mm_storel_epi64(ptr noundef %111, <2 x i64> noundef %112)
  %113 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %add.ptr118 = getelementptr inbounds i8, ptr %113, i64 8
  store ptr %add.ptr118, ptr %output.addr, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout0123456701234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vfpacc4567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vfpacc0123) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc4567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0123) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vsgnacc01234567) #5
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
  %114 = load i64, ptr %channels.addr, align 8, !tbaa !4
  %sub = sub i64 %114, 8
  store i64 %sub, ptr %channels.addr, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %115 = load i64, ptr %channels.addr, align 8, !tbaa !4
  %cmp119 = icmp ne i64 %115, 0
  %lnot121 = xor i1 %cmp119, true
  %lnot123 = xor i1 %lnot121, true
  %lnot.ext124 = zext i1 %lnot123 to i32
  %conv125 = sext i32 %lnot.ext124 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv125, i64 0)
  %tobool126 = icmp ne i64 %expval, 0
  br i1 %tobool126, label %if.then127, label %if.end220

if.then127:                                       ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi0x01234567128) #5
  %116 = load ptr, ptr %i0, align 8, !tbaa !8
  %call129 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %116)
  store <2 x i64> %call129, ptr %vi0x01234567128, align 16, !tbaa !11
  %117 = load ptr, ptr %i0, align 8, !tbaa !8
  %add.ptr130 = getelementptr inbounds i8, ptr %117, i64 8
  store ptr %add.ptr130, ptr %i0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi1x01234567131) #5
  %118 = load ptr, ptr %i1, align 8, !tbaa !8
  %call132 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %118)
  store <2 x i64> %call132, ptr %vi1x01234567131, align 16, !tbaa !11
  %119 = load ptr, ptr %i1, align 8, !tbaa !8
  %add.ptr133 = getelementptr inbounds i8, ptr %119, i64 8
  store ptr %add.ptr133, ptr %i1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi0x01234567134) #5
  %120 = load <2 x i64>, ptr %vi0x01234567128, align 16, !tbaa !11
  %121 = load <2 x i64>, ptr %vi0x01234567128, align 16, !tbaa !11
  %call135 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %120, <2 x i64> noundef %121)
  %call136 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call135, i32 noundef 8)
  store <2 x i64> %call136, ptr %vxi0x01234567134, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi2x01234567137) #5
  %122 = load ptr, ptr %i2, align 8, !tbaa !8
  %call138 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %122)
  store <2 x i64> %call138, ptr %vi2x01234567137, align 16, !tbaa !11
  %123 = load ptr, ptr %i2, align 8, !tbaa !8
  %add.ptr139 = getelementptr inbounds i8, ptr %123, i64 8
  store ptr %add.ptr139, ptr %i2, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi1x01234567140) #5
  %124 = load <2 x i64>, ptr %vi1x01234567131, align 16, !tbaa !11
  %125 = load <2 x i64>, ptr %vi1x01234567131, align 16, !tbaa !11
  %call141 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %124, <2 x i64> noundef %125)
  %call142 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call141, i32 noundef 8)
  store <2 x i64> %call142, ptr %vxi1x01234567140, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi3x01234567143) #5
  %126 = load ptr, ptr %i3, align 8, !tbaa !8
  %call144 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %126)
  store <2 x i64> %call144, ptr %vi3x01234567143, align 16, !tbaa !11
  %127 = load ptr, ptr %i3, align 8, !tbaa !8
  %add.ptr145 = getelementptr inbounds i8, ptr %127, i64 8
  store ptr %add.ptr145, ptr %i3, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc01234567146) #5
  %128 = load <2 x i64>, ptr %vxi0x01234567134, align 16, !tbaa !11
  %129 = load <2 x i64>, ptr %vxi1x01234567140, align 16, !tbaa !11
  %call147 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %128, <2 x i64> noundef %129)
  store <2 x i64> %call147, ptr %vacc01234567146, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi2x01234567148) #5
  %130 = load <2 x i64>, ptr %vi2x01234567137, align 16, !tbaa !11
  %131 = load <2 x i64>, ptr %vi2x01234567137, align 16, !tbaa !11
  %call149 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %130, <2 x i64> noundef %131)
  %call150 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call149, i32 noundef 8)
  store <2 x i64> %call150, ptr %vxi2x01234567148, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi4x01234567151) #5
  %132 = load ptr, ptr %i4, align 8, !tbaa !8
  %call152 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %132)
  store <2 x i64> %call152, ptr %vi4x01234567151, align 16, !tbaa !11
  %133 = load ptr, ptr %i4, align 8, !tbaa !8
  %add.ptr153 = getelementptr inbounds i8, ptr %133, i64 8
  store ptr %add.ptr153, ptr %i4, align 8, !tbaa !8
  %134 = load <2 x i64>, ptr %vacc01234567146, align 16, !tbaa !11
  %135 = load <2 x i64>, ptr %vxi2x01234567148, align 16, !tbaa !11
  %call154 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %134, <2 x i64> noundef %135)
  store <2 x i64> %call154, ptr %vacc01234567146, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi3x01234567155) #5
  %136 = load <2 x i64>, ptr %vi3x01234567143, align 16, !tbaa !11
  %137 = load <2 x i64>, ptr %vi3x01234567143, align 16, !tbaa !11
  %call156 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %136, <2 x i64> noundef %137)
  %call157 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call156, i32 noundef 8)
  store <2 x i64> %call157, ptr %vxi3x01234567155, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi5x01234567158) #5
  %138 = load ptr, ptr %i5, align 8, !tbaa !8
  %call159 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %138)
  store <2 x i64> %call159, ptr %vi5x01234567158, align 16, !tbaa !11
  %139 = load ptr, ptr %i5, align 8, !tbaa !8
  %add.ptr160 = getelementptr inbounds i8, ptr %139, i64 8
  store ptr %add.ptr160, ptr %i5, align 8, !tbaa !8
  %140 = load <2 x i64>, ptr %vacc01234567146, align 16, !tbaa !11
  %141 = load <2 x i64>, ptr %vxi3x01234567155, align 16, !tbaa !11
  %call161 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %140, <2 x i64> noundef %141)
  store <2 x i64> %call161, ptr %vacc01234567146, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi4x01234567162) #5
  %142 = load <2 x i64>, ptr %vi4x01234567151, align 16, !tbaa !11
  %143 = load <2 x i64>, ptr %vi4x01234567151, align 16, !tbaa !11
  %call163 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %142, <2 x i64> noundef %143)
  %call164 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call163, i32 noundef 8)
  store <2 x i64> %call164, ptr %vxi4x01234567162, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vi6x01234567165) #5
  %144 = load ptr, ptr %i6, align 8, !tbaa !8
  %call166 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %144)
  store <2 x i64> %call166, ptr %vi6x01234567165, align 16, !tbaa !11
  %145 = load ptr, ptr %i6, align 8, !tbaa !8
  %add.ptr167 = getelementptr inbounds i8, ptr %145, i64 8
  store ptr %add.ptr167, ptr %i6, align 8, !tbaa !8
  %146 = load <2 x i64>, ptr %vacc01234567146, align 16, !tbaa !11
  %147 = load <2 x i64>, ptr %vxi4x01234567162, align 16, !tbaa !11
  %call168 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %146, <2 x i64> noundef %147)
  store <2 x i64> %call168, ptr %vacc01234567146, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi5x01234567169) #5
  %148 = load <2 x i64>, ptr %vi5x01234567158, align 16, !tbaa !11
  %149 = load <2 x i64>, ptr %vi5x01234567158, align 16, !tbaa !11
  %call170 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %148, <2 x i64> noundef %149)
  %call171 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call170, i32 noundef 8)
  store <2 x i64> %call171, ptr %vxi5x01234567169, align 16, !tbaa !11
  %150 = load <2 x i64>, ptr %vacc01234567146, align 16, !tbaa !11
  %151 = load <2 x i64>, ptr %vxi5x01234567169, align 16, !tbaa !11
  %call172 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %150, <2 x i64> noundef %151)
  store <2 x i64> %call172, ptr %vacc01234567146, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxi6x01234567173) #5
  %152 = load <2 x i64>, ptr %vi6x01234567165, align 16, !tbaa !11
  %153 = load <2 x i64>, ptr %vi6x01234567165, align 16, !tbaa !11
  %call174 = call <2 x i64> @_mm_unpacklo_epi8(<2 x i64> noundef %152, <2 x i64> noundef %153)
  %call175 = call <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %call174, i32 noundef 8)
  store <2 x i64> %call175, ptr %vxi6x01234567173, align 16, !tbaa !11
  %154 = load <2 x i64>, ptr %vacc01234567146, align 16, !tbaa !11
  %155 = load <2 x i64>, ptr %vxi6x01234567173, align 16, !tbaa !11
  %call176 = call <2 x i64> @_mm_add_epi16(<2 x i64> noundef %154, <2 x i64> noundef %155)
  store <2 x i64> %call176, ptr %vacc01234567146, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vsgnacc01234567177) #5
  %call178 = call <2 x i64> @_mm_setzero_si128()
  %156 = load <2 x i64>, ptr %vacc01234567146, align 16, !tbaa !11
  %call179 = call <2 x i64> @_mm_cmpgt_epi16(<2 x i64> noundef %call178, <2 x i64> noundef %156)
  store <2 x i64> %call179, ptr %vsgnacc01234567177, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc0123180) #5
  %157 = load <2 x i64>, ptr %vacc01234567146, align 16, !tbaa !11
  %158 = load <2 x i64>, ptr %vsgnacc01234567177, align 16, !tbaa !11
  %call181 = call <2 x i64> @_mm_unpacklo_epi16(<2 x i64> noundef %157, <2 x i64> noundef %158)
  store <2 x i64> %call181, ptr %vacc0123180, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc4567182) #5
  %159 = load <2 x i64>, ptr %vacc01234567146, align 16, !tbaa !11
  %160 = load <2 x i64>, ptr %vsgnacc01234567177, align 16, !tbaa !11
  %call183 = call <2 x i64> @_mm_unpackhi_epi16(<2 x i64> noundef %159, <2 x i64> noundef %160)
  store <2 x i64> %call183, ptr %vacc4567182, align 16, !tbaa !11
  %161 = load <2 x i64>, ptr %vacc0123180, align 16, !tbaa !11
  %162 = load <2 x i64>, ptr %vinit_bias, align 16, !tbaa !11
  %call184 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %161, <2 x i64> noundef %162)
  store <2 x i64> %call184, ptr %vacc0123180, align 16, !tbaa !11
  %163 = load <2 x i64>, ptr %vacc4567182, align 16, !tbaa !11
  %164 = load <2 x i64>, ptr %vinit_bias, align 16, !tbaa !11
  %call185 = call <2 x i64> @_mm_add_epi32(<2 x i64> noundef %163, <2 x i64> noundef %164)
  store <2 x i64> %call185, ptr %vacc4567182, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vfpacc0123186) #5
  %165 = load <2 x i64>, ptr %vacc0123180, align 16, !tbaa !11
  %call187 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %165)
  store <4 x float> %call187, ptr %vfpacc0123186, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vfpacc4567188) #5
  %166 = load <2 x i64>, ptr %vacc4567182, align 16, !tbaa !11
  %call189 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %166)
  store <4 x float> %call189, ptr %vfpacc4567188, align 16, !tbaa !11
  %167 = load <4 x float>, ptr %vfpacc0123186, align 16, !tbaa !11
  %168 = load <4 x float>, ptr %vscale, align 16, !tbaa !11
  %call190 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %167, <4 x float> noundef %168)
  store <4 x float> %call190, ptr %vfpacc0123186, align 16, !tbaa !11
  %169 = load <4 x float>, ptr %vfpacc4567188, align 16, !tbaa !11
  %170 = load <4 x float>, ptr %vscale, align 16, !tbaa !11
  %call191 = call <4 x float> @_mm_mul_ps(<4 x float> noundef %169, <4 x float> noundef %170)
  store <4 x float> %call191, ptr %vfpacc4567188, align 16, !tbaa !11
  %171 = load <4 x float>, ptr %vfpacc0123186, align 16, !tbaa !11
  %172 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !11
  %call192 = call <4 x float> @_mm_min_ps(<4 x float> noundef %171, <4 x float> noundef %172)
  store <4 x float> %call192, ptr %vfpacc0123186, align 16, !tbaa !11
  %173 = load <4 x float>, ptr %vfpacc4567188, align 16, !tbaa !11
  %174 = load <4 x float>, ptr %voutput_max_less_zero_point, align 16, !tbaa !11
  %call193 = call <4 x float> @_mm_min_ps(<4 x float> noundef %173, <4 x float> noundef %174)
  store <4 x float> %call193, ptr %vfpacc4567188, align 16, !tbaa !11
  %175 = load <4 x float>, ptr %vfpacc0123186, align 16, !tbaa !11
  %call194 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %175)
  store <2 x i64> %call194, ptr %vacc0123180, align 16, !tbaa !11
  %176 = load <4 x float>, ptr %vfpacc4567188, align 16, !tbaa !11
  %call195 = call <2 x i64> @_mm_cvtps_epi32(<4 x float> noundef %176)
  store <2 x i64> %call195, ptr %vacc4567182, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout01234567196) #5
  %177 = load <2 x i64>, ptr %vacc0123180, align 16, !tbaa !11
  %178 = load <2 x i64>, ptr %vacc4567182, align 16, !tbaa !11
  %call197 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %177, <2 x i64> noundef %178)
  %179 = load <2 x i64>, ptr %voutput_zero_point, align 16, !tbaa !11
  %call198 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call197, <2 x i64> noundef %179)
  store <2 x i64> %call198, ptr %vout01234567196, align 16, !tbaa !11
  %180 = load <2 x i64>, ptr %vout01234567196, align 16, !tbaa !11
  %181 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !11
  %call199 = call <2 x i64> @_mm_max_epi16(<2 x i64> noundef %180, <2 x i64> noundef %181)
  store <2 x i64> %call199, ptr %vout01234567196, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout0123456701234567200) #5
  %182 = load <2 x i64>, ptr %vout01234567196, align 16, !tbaa !11
  %183 = load <2 x i64>, ptr %vout01234567196, align 16, !tbaa !11
  %call201 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %182, <2 x i64> noundef %183)
  store <2 x i64> %call201, ptr %vout0123456701234567200, align 16, !tbaa !11
  %184 = load i64, ptr %channels.addr, align 8, !tbaa !4
  %and = and i64 %184, 4
  %tobool202 = icmp ne i64 %and, 0
  br i1 %tobool202, label %if.then203, label %if.end207

if.then203:                                       ; preds = %if.then127
  %185 = load <2 x i64>, ptr %vout0123456701234567200, align 16, !tbaa !11
  %call204 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %185)
  %186 = load ptr, ptr %output.addr, align 8, !tbaa !8
  store i32 %call204, ptr %186, align 4, !tbaa !12
  %187 = load <2 x i64>, ptr %vout0123456701234567200, align 16, !tbaa !11
  %call205 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %187, i32 noundef 32)
  store <2 x i64> %call205, ptr %vout0123456701234567200, align 16, !tbaa !11
  %188 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %add.ptr206 = getelementptr inbounds i8, ptr %188, i64 4
  store ptr %add.ptr206, ptr %output.addr, align 8, !tbaa !8
  br label %if.end207

if.end207:                                        ; preds = %if.then203, %if.then127
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout0123) #5
  %189 = load <2 x i64>, ptr %vout0123456701234567200, align 16, !tbaa !11
  %call208 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %189)
  store i32 %call208, ptr %vout0123, align 4, !tbaa !12
  %190 = load i64, ptr %channels.addr, align 8, !tbaa !4
  %and209 = and i64 %190, 2
  %tobool210 = icmp ne i64 %and209, 0
  br i1 %tobool210, label %if.then211, label %if.end214

if.then211:                                       ; preds = %if.end207
  %191 = load i32, ptr %vout0123, align 4, !tbaa !12
  %conv212 = trunc i32 %191 to i16
  %192 = load ptr, ptr %output.addr, align 8, !tbaa !8
  store i16 %conv212, ptr %192, align 2, !tbaa !14
  %193 = load i32, ptr %vout0123, align 4, !tbaa !12
  %shr = lshr i32 %193, 16
  store i32 %shr, ptr %vout0123, align 4, !tbaa !12
  %194 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %add.ptr213 = getelementptr inbounds i8, ptr %194, i64 2
  store ptr %add.ptr213, ptr %output.addr, align 8, !tbaa !8
  br label %if.end214

if.end214:                                        ; preds = %if.then211, %if.end207
  %195 = load i64, ptr %channels.addr, align 8, !tbaa !4
  %and215 = and i64 %195, 1
  %tobool216 = icmp ne i64 %and215, 0
  br i1 %tobool216, label %if.then217, label %if.end219

if.then217:                                       ; preds = %if.end214
  %196 = load i32, ptr %vout0123, align 4, !tbaa !12
  %conv218 = trunc i32 %196 to i8
  %197 = load ptr, ptr %output.addr, align 8, !tbaa !8
  store i8 %conv218, ptr %197, align 1, !tbaa !11
  br label %if.end219

if.end219:                                        ; preds = %if.then217, %if.end214
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout0123) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout0123456701234567200) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout01234567196) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vfpacc4567188) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vfpacc0123186) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc4567182) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc0123180) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vsgnacc01234567177) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi6x01234567173) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi5x01234567169) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi6x01234567165) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi4x01234567162) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi5x01234567158) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi3x01234567155) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi4x01234567151) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi2x01234567148) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc01234567146) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi3x01234567143) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi1x01234567140) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi2x01234567137) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxi0x01234567134) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi1x01234567131) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vi0x01234567128) #5
  br label %if.end220

if.end220:                                        ; preds = %if.end219, %for.end
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
define internal <2 x i64> @_mm_srai_epi16(<2 x i64> noundef %__a, i32 noundef %__count) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !12
  %3 = call <8 x i16> @llvm.x86.sse2.psrai.w(<8 x i16> %1, i32 %2)
  %4 = bitcast <8 x i16> %3 to <2 x i64>
  ret <2 x i64> %4
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
define internal <2 x i64> @_mm_cmpgt_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %cmp = icmp sgt <8 x i16> %1, %3
  %sext = sext <8 x i1> %cmp to <8 x i16>
  %4 = bitcast <8 x i16> %sext to <2 x i64>
  ret <2 x i64> %4
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
define internal <2 x i64> @_mm_max_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
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
define internal <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
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
declare <8 x i16> @llvm.x86.sse2.psrai.w(<8 x i16>, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #3

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
