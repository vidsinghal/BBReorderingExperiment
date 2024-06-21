; ModuleID = 'samples/825.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f16-gavgpool/gen/7x-minmax-f16c-c24.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { [8 x float], [8 x float], [8 x float] }
%struct.__loadu_si128 = type { <2 x i64> }
%struct.__storeu_si128 = type { <2 x i64> }
%struct.__mm_storel_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f16_gavgpool_minmax_ukernel_7x__f16c_c24(i64 noundef %rows, i64 noundef %channels, ptr noundef %input, i64 noundef %input_stride, ptr noundef %zero, ptr noundef %output, ptr noalias noundef align 32 dereferenceable(96) %params) #0 {
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
  %vscale = alloca <8 x float>, align 32
  %vmin = alloca <8 x float>, align 32
  %vmax = alloca <8 x float>, align 32
  %vi0x01234567 = alloca <8 x float>, align 32
  %vi0x89ABCDEF = alloca <8 x float>, align 32
  %vi0xGHIJKLMN = alloca <8 x float>, align 32
  %vi1x01234567 = alloca <8 x float>, align 32
  %vi1x89ABCDEF = alloca <8 x float>, align 32
  %vi1xGHIJKLMN = alloca <8 x float>, align 32
  %vi2x01234567 = alloca <8 x float>, align 32
  %vacc01234567 = alloca <2 x i64>, align 16
  %vi2x89ABCDEF = alloca <8 x float>, align 32
  %vacc89ABCDEF = alloca <2 x i64>, align 16
  %vi2xGHIJKLMN = alloca <8 x float>, align 32
  %vaccGHIJKLMN = alloca <2 x i64>, align 16
  %vi3x01234567 = alloca <8 x float>, align 32
  %vi3x89ABCDEF = alloca <8 x float>, align 32
  %vi3xGHIJKLMN = alloca <8 x float>, align 32
  %vi4x01234567 = alloca <8 x float>, align 32
  %vi4x89ABCDEF = alloca <8 x float>, align 32
  %vi4xGHIJKLMN = alloca <8 x float>, align 32
  %vi5x01234567 = alloca <8 x float>, align 32
  %vi5x89ABCDEF = alloca <8 x float>, align 32
  %vi5xGHIJKLMN = alloca <8 x float>, align 32
  %vi6x01234567 = alloca <8 x float>, align 32
  %vi6x89ABCDEF = alloca <8 x float>, align 32
  %vi6xGHIJKLMN = alloca <8 x float>, align 32
  %vout01234567 = alloca <8 x float>, align 32
  %vout89ABCDEF = alloca <8 x float>, align 32
  %voutGHIJKLMN = alloca <8 x float>, align 32
  %vi0x01234567185 = alloca <8 x float>, align 32
  %vi1x01234567189 = alloca <8 x float>, align 32
  %vi2x01234567193 = alloca <8 x float>, align 32
  %vacc01234567196 = alloca <2 x i64>, align 16
  %vi3x01234567199 = alloca <8 x float>, align 32
  %vi4x01234567205 = alloca <8 x float>, align 32
  %vi5x01234567211 = alloca <8 x float>, align 32
  %vi6x01234567217 = alloca <8 x float>, align 32
  %vout01234567227 = alloca <8 x float>, align 32
  %vh01234567 = alloca <2 x i64>, align 16
  store i64 %rows, ptr %rows.addr, align 8, !tbaa !5
  store i64 %channels, ptr %channels.addr, align 8, !tbaa !5
  store ptr %input, ptr %input.addr, align 8, !tbaa !9
  store i64 %input_stride, ptr %input_stride.addr, align 8, !tbaa !5
  store ptr %zero, ptr %zero.addr, align 8, !tbaa !9
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i0) #5
  %0 = load ptr, ptr %input.addr, align 8, !tbaa !9
  store ptr %0, ptr %i0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i1) #5
  %1 = load ptr, ptr %i0, align 8, !tbaa !9
  %2 = ptrtoint ptr %1 to i64
  %3 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add = add i64 %2, %3
  %4 = inttoptr i64 %add to ptr
  store ptr %4, ptr %i1, align 8, !tbaa !9
  %5 = load i64, ptr %rows.addr, align 8, !tbaa !5
  %cmp = icmp ult i64 %5, 2
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !11

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  store ptr %6, ptr %i1, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %i2) #5
  %7 = load ptr, ptr %i1, align 8, !tbaa !9
  %8 = ptrtoint ptr %7 to i64
  %9 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add2 = add i64 %8, %9
  %10 = inttoptr i64 %add2 to ptr
  store ptr %10, ptr %i2, align 8, !tbaa !9
  %11 = load i64, ptr %rows.addr, align 8, !tbaa !5
  %cmp3 = icmp ule i64 %11, 2
  %lnot5 = xor i1 %cmp3, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %if.then11, label %if.end12, !unpredictable !11

if.then11:                                        ; preds = %if.end
  %12 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  store ptr %12, ptr %i2, align 8, !tbaa !9
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %i3) #5
  %13 = load ptr, ptr %i2, align 8, !tbaa !9
  %14 = ptrtoint ptr %13 to i64
  %15 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add13 = add i64 %14, %15
  %16 = inttoptr i64 %add13 to ptr
  store ptr %16, ptr %i3, align 8, !tbaa !9
  %17 = load i64, ptr %rows.addr, align 8, !tbaa !5
  %cmp14 = icmp ult i64 %17, 4
  %lnot16 = xor i1 %cmp14, true
  %lnot18 = xor i1 %lnot16, true
  %lnot.ext19 = zext i1 %lnot18 to i32
  %conv20 = sext i32 %lnot.ext19 to i64
  %tobool21 = icmp ne i64 %conv20, 0
  br i1 %tobool21, label %if.then22, label %if.end23, !unpredictable !11

if.then22:                                        ; preds = %if.end12
  %18 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  store ptr %18, ptr %i3, align 8, !tbaa !9
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr %i4) #5
  %19 = load ptr, ptr %i3, align 8, !tbaa !9
  %20 = ptrtoint ptr %19 to i64
  %21 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add24 = add i64 %20, %21
  %22 = inttoptr i64 %add24 to ptr
  store ptr %22, ptr %i4, align 8, !tbaa !9
  %23 = load i64, ptr %rows.addr, align 8, !tbaa !5
  %cmp25 = icmp ule i64 %23, 4
  %lnot27 = xor i1 %cmp25, true
  %lnot29 = xor i1 %lnot27, true
  %lnot.ext30 = zext i1 %lnot29 to i32
  %conv31 = sext i32 %lnot.ext30 to i64
  %tobool32 = icmp ne i64 %conv31, 0
  br i1 %tobool32, label %if.then33, label %if.end34, !unpredictable !11

if.then33:                                        ; preds = %if.end23
  %24 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  store ptr %24, ptr %i4, align 8, !tbaa !9
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end23
  call void @llvm.lifetime.start.p0(i64 8, ptr %i5) #5
  %25 = load ptr, ptr %i4, align 8, !tbaa !9
  %26 = ptrtoint ptr %25 to i64
  %27 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add35 = add i64 %26, %27
  %28 = inttoptr i64 %add35 to ptr
  store ptr %28, ptr %i5, align 8, !tbaa !9
  %29 = load i64, ptr %rows.addr, align 8, !tbaa !5
  %cmp36 = icmp ult i64 %29, 6
  %lnot38 = xor i1 %cmp36, true
  %lnot40 = xor i1 %lnot38, true
  %lnot.ext41 = zext i1 %lnot40 to i32
  %conv42 = sext i32 %lnot.ext41 to i64
  %tobool43 = icmp ne i64 %conv42, 0
  br i1 %tobool43, label %if.then44, label %if.end45, !unpredictable !11

if.then44:                                        ; preds = %if.end34
  %30 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  store ptr %30, ptr %i5, align 8, !tbaa !9
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end34
  call void @llvm.lifetime.start.p0(i64 8, ptr %i6) #5
  %31 = load ptr, ptr %i5, align 8, !tbaa !9
  %32 = ptrtoint ptr %31 to i64
  %33 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add46 = add i64 %32, %33
  %34 = inttoptr i64 %add46 to ptr
  store ptr %34, ptr %i6, align 8, !tbaa !9
  %35 = load i64, ptr %rows.addr, align 8, !tbaa !5
  %cmp47 = icmp ule i64 %35, 6
  %lnot49 = xor i1 %cmp47, true
  %lnot51 = xor i1 %lnot49, true
  %lnot.ext52 = zext i1 %lnot51 to i32
  %conv53 = sext i32 %lnot.ext52 to i64
  %tobool54 = icmp ne i64 %conv53, 0
  br i1 %tobool54, label %if.then55, label %if.end56, !unpredictable !11

if.then55:                                        ; preds = %if.end45
  %36 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  store ptr %36, ptr %i6, align 8, !tbaa !9
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end45
  call void @llvm.lifetime.start.p0(i64 32, ptr %vscale) #5
  %37 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale = getelementptr inbounds %struct.anon, ptr %37, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x float], ptr %scale, i64 0, i64 0
  %call = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay)
  store <8 x float> %call, ptr %vscale, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmin) #5
  %38 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %min = getelementptr inbounds %struct.anon, ptr %38, i32 0, i32 1
  %arraydecay57 = getelementptr inbounds [8 x float], ptr %min, i64 0, i64 0
  %call58 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay57)
  store <8 x float> %call58, ptr %vmin, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmax) #5
  %39 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %max = getelementptr inbounds %struct.anon, ptr %39, i32 0, i32 2
  %arraydecay59 = getelementptr inbounds [8 x float], ptr %max, i64 0, i64 0
  %call60 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay59)
  store <8 x float> %call60, ptr %vmax, align 32, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end56
  %40 = load i64, ptr %channels.addr, align 8, !tbaa !5
  %cmp61 = icmp uge i64 %40, 24
  br i1 %cmp61, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi0x01234567) #5
  %41 = load ptr, ptr %i0, align 8, !tbaa !9
  %call63 = call <2 x i64> @_mm_loadu_si128(ptr noundef %41)
  %call64 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call63)
  store <8 x float> %call64, ptr %vi0x01234567, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi0x89ABCDEF) #5
  %42 = load ptr, ptr %i0, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i16, ptr %42, i64 8
  %call65 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr)
  %call66 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call65)
  store <8 x float> %call66, ptr %vi0x89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi0xGHIJKLMN) #5
  %43 = load ptr, ptr %i0, align 8, !tbaa !9
  %add.ptr67 = getelementptr inbounds i16, ptr %43, i64 16
  %call68 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr67)
  %call69 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call68)
  store <8 x float> %call69, ptr %vi0xGHIJKLMN, align 32, !tbaa !12
  %44 = load ptr, ptr %i0, align 8, !tbaa !9
  %add.ptr70 = getelementptr inbounds i16, ptr %44, i64 24
  store ptr %add.ptr70, ptr %i0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi1x01234567) #5
  %45 = load ptr, ptr %i1, align 8, !tbaa !9
  %call71 = call <2 x i64> @_mm_loadu_si128(ptr noundef %45)
  %call72 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call71)
  store <8 x float> %call72, ptr %vi1x01234567, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi1x89ABCDEF) #5
  %46 = load ptr, ptr %i1, align 8, !tbaa !9
  %add.ptr73 = getelementptr inbounds i16, ptr %46, i64 8
  %call74 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr73)
  %call75 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call74)
  store <8 x float> %call75, ptr %vi1x89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi1xGHIJKLMN) #5
  %47 = load ptr, ptr %i1, align 8, !tbaa !9
  %add.ptr76 = getelementptr inbounds i16, ptr %47, i64 16
  %call77 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr76)
  %call78 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call77)
  store <8 x float> %call78, ptr %vi1xGHIJKLMN, align 32, !tbaa !12
  %48 = load ptr, ptr %i1, align 8, !tbaa !9
  %add.ptr79 = getelementptr inbounds i16, ptr %48, i64 24
  store ptr %add.ptr79, ptr %i1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi2x01234567) #5
  %49 = load ptr, ptr %i2, align 8, !tbaa !9
  %call80 = call <2 x i64> @_mm_loadu_si128(ptr noundef %49)
  %call81 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call80)
  store <8 x float> %call81, ptr %vi2x01234567, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc01234567) #5
  %50 = load <8 x float>, ptr %vi0x01234567, align 32, !tbaa !12
  %51 = load <8 x float>, ptr %vi1x01234567, align 32, !tbaa !12
  %call82 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %50, <8 x float> noundef %51)
  %52 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call82, i32 8)
  %53 = bitcast <8 x i16> %52 to <2 x i64>
  store <2 x i64> %53, ptr %vacc01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi2x89ABCDEF) #5
  %54 = load ptr, ptr %i2, align 8, !tbaa !9
  %add.ptr83 = getelementptr inbounds i16, ptr %54, i64 8
  %call84 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr83)
  %call85 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call84)
  store <8 x float> %call85, ptr %vi2x89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc89ABCDEF) #5
  %55 = load <8 x float>, ptr %vi0x89ABCDEF, align 32, !tbaa !12
  %56 = load <8 x float>, ptr %vi1x89ABCDEF, align 32, !tbaa !12
  %call86 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %55, <8 x float> noundef %56)
  %57 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call86, i32 8)
  %58 = bitcast <8 x i16> %57 to <2 x i64>
  store <2 x i64> %58, ptr %vacc89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi2xGHIJKLMN) #5
  %59 = load ptr, ptr %i2, align 8, !tbaa !9
  %add.ptr87 = getelementptr inbounds i16, ptr %59, i64 16
  %call88 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr87)
  %call89 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call88)
  store <8 x float> %call89, ptr %vi2xGHIJKLMN, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaccGHIJKLMN) #5
  %60 = load <8 x float>, ptr %vi0xGHIJKLMN, align 32, !tbaa !12
  %61 = load <8 x float>, ptr %vi1xGHIJKLMN, align 32, !tbaa !12
  %call90 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %60, <8 x float> noundef %61)
  %62 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call90, i32 8)
  %63 = bitcast <8 x i16> %62 to <2 x i64>
  store <2 x i64> %63, ptr %vaccGHIJKLMN, align 16, !tbaa !12
  %64 = load ptr, ptr %i2, align 8, !tbaa !9
  %add.ptr91 = getelementptr inbounds i16, ptr %64, i64 24
  store ptr %add.ptr91, ptr %i2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi3x01234567) #5
  %65 = load ptr, ptr %i3, align 8, !tbaa !9
  %call92 = call <2 x i64> @_mm_loadu_si128(ptr noundef %65)
  %call93 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call92)
  store <8 x float> %call93, ptr %vi3x01234567, align 32, !tbaa !12
  %66 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !12
  %call94 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %66)
  %67 = load <8 x float>, ptr %vi2x01234567, align 32, !tbaa !12
  %call95 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %call94, <8 x float> noundef %67)
  %68 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call95, i32 8)
  %69 = bitcast <8 x i16> %68 to <2 x i64>
  store <2 x i64> %69, ptr %vacc01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi3x89ABCDEF) #5
  %70 = load ptr, ptr %i3, align 8, !tbaa !9
  %add.ptr96 = getelementptr inbounds i16, ptr %70, i64 8
  %call97 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr96)
  %call98 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call97)
  store <8 x float> %call98, ptr %vi3x89ABCDEF, align 32, !tbaa !12
  %71 = load <2 x i64>, ptr %vacc89ABCDEF, align 16, !tbaa !12
  %call99 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %71)
  %72 = load <8 x float>, ptr %vi2x89ABCDEF, align 32, !tbaa !12
  %call100 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %call99, <8 x float> noundef %72)
  %73 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call100, i32 8)
  %74 = bitcast <8 x i16> %73 to <2 x i64>
  store <2 x i64> %74, ptr %vacc89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi3xGHIJKLMN) #5
  %75 = load ptr, ptr %i3, align 8, !tbaa !9
  %add.ptr101 = getelementptr inbounds i16, ptr %75, i64 16
  %call102 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr101)
  %call103 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call102)
  store <8 x float> %call103, ptr %vi3xGHIJKLMN, align 32, !tbaa !12
  %76 = load ptr, ptr %i3, align 8, !tbaa !9
  %add.ptr104 = getelementptr inbounds i16, ptr %76, i64 24
  store ptr %add.ptr104, ptr %i3, align 8, !tbaa !9
  %77 = load <2 x i64>, ptr %vaccGHIJKLMN, align 16, !tbaa !12
  %call105 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %77)
  %78 = load <8 x float>, ptr %vi2xGHIJKLMN, align 32, !tbaa !12
  %call106 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %call105, <8 x float> noundef %78)
  %79 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call106, i32 8)
  %80 = bitcast <8 x i16> %79 to <2 x i64>
  store <2 x i64> %80, ptr %vaccGHIJKLMN, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi4x01234567) #5
  %81 = load ptr, ptr %i4, align 8, !tbaa !9
  %call107 = call <2 x i64> @_mm_loadu_si128(ptr noundef %81)
  %call108 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call107)
  store <8 x float> %call108, ptr %vi4x01234567, align 32, !tbaa !12
  %82 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !12
  %call109 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %82)
  %83 = load <8 x float>, ptr %vi3x01234567, align 32, !tbaa !12
  %call110 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %call109, <8 x float> noundef %83)
  %84 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call110, i32 8)
  %85 = bitcast <8 x i16> %84 to <2 x i64>
  store <2 x i64> %85, ptr %vacc01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi4x89ABCDEF) #5
  %86 = load ptr, ptr %i4, align 8, !tbaa !9
  %add.ptr111 = getelementptr inbounds i16, ptr %86, i64 8
  %call112 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr111)
  %call113 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call112)
  store <8 x float> %call113, ptr %vi4x89ABCDEF, align 32, !tbaa !12
  %87 = load <2 x i64>, ptr %vacc89ABCDEF, align 16, !tbaa !12
  %call114 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %87)
  %88 = load <8 x float>, ptr %vi3x89ABCDEF, align 32, !tbaa !12
  %call115 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %call114, <8 x float> noundef %88)
  %89 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call115, i32 8)
  %90 = bitcast <8 x i16> %89 to <2 x i64>
  store <2 x i64> %90, ptr %vacc89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi4xGHIJKLMN) #5
  %91 = load ptr, ptr %i4, align 8, !tbaa !9
  %add.ptr116 = getelementptr inbounds i16, ptr %91, i64 16
  %call117 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr116)
  %call118 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call117)
  store <8 x float> %call118, ptr %vi4xGHIJKLMN, align 32, !tbaa !12
  %92 = load ptr, ptr %i4, align 8, !tbaa !9
  %add.ptr119 = getelementptr inbounds i16, ptr %92, i64 24
  store ptr %add.ptr119, ptr %i4, align 8, !tbaa !9
  %93 = load <2 x i64>, ptr %vaccGHIJKLMN, align 16, !tbaa !12
  %call120 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %93)
  %94 = load <8 x float>, ptr %vi3xGHIJKLMN, align 32, !tbaa !12
  %call121 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %call120, <8 x float> noundef %94)
  %95 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call121, i32 8)
  %96 = bitcast <8 x i16> %95 to <2 x i64>
  store <2 x i64> %96, ptr %vaccGHIJKLMN, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi5x01234567) #5
  %97 = load ptr, ptr %i5, align 8, !tbaa !9
  %call122 = call <2 x i64> @_mm_loadu_si128(ptr noundef %97)
  %call123 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call122)
  store <8 x float> %call123, ptr %vi5x01234567, align 32, !tbaa !12
  %98 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !12
  %call124 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %98)
  %99 = load <8 x float>, ptr %vi4x01234567, align 32, !tbaa !12
  %call125 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %call124, <8 x float> noundef %99)
  %100 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call125, i32 8)
  %101 = bitcast <8 x i16> %100 to <2 x i64>
  store <2 x i64> %101, ptr %vacc01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi5x89ABCDEF) #5
  %102 = load ptr, ptr %i5, align 8, !tbaa !9
  %add.ptr126 = getelementptr inbounds i16, ptr %102, i64 8
  %call127 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr126)
  %call128 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call127)
  store <8 x float> %call128, ptr %vi5x89ABCDEF, align 32, !tbaa !12
  %103 = load <2 x i64>, ptr %vacc89ABCDEF, align 16, !tbaa !12
  %call129 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %103)
  %104 = load <8 x float>, ptr %vi4x89ABCDEF, align 32, !tbaa !12
  %call130 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %call129, <8 x float> noundef %104)
  %105 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call130, i32 8)
  %106 = bitcast <8 x i16> %105 to <2 x i64>
  store <2 x i64> %106, ptr %vacc89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi5xGHIJKLMN) #5
  %107 = load ptr, ptr %i5, align 8, !tbaa !9
  %add.ptr131 = getelementptr inbounds i16, ptr %107, i64 16
  %call132 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr131)
  %call133 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call132)
  store <8 x float> %call133, ptr %vi5xGHIJKLMN, align 32, !tbaa !12
  %108 = load ptr, ptr %i5, align 8, !tbaa !9
  %add.ptr134 = getelementptr inbounds i16, ptr %108, i64 24
  store ptr %add.ptr134, ptr %i5, align 8, !tbaa !9
  %109 = load <2 x i64>, ptr %vaccGHIJKLMN, align 16, !tbaa !12
  %call135 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %109)
  %110 = load <8 x float>, ptr %vi4xGHIJKLMN, align 32, !tbaa !12
  %call136 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %call135, <8 x float> noundef %110)
  %111 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call136, i32 8)
  %112 = bitcast <8 x i16> %111 to <2 x i64>
  store <2 x i64> %112, ptr %vaccGHIJKLMN, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi6x01234567) #5
  %113 = load ptr, ptr %i6, align 8, !tbaa !9
  %call137 = call <2 x i64> @_mm_loadu_si128(ptr noundef %113)
  %call138 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call137)
  store <8 x float> %call138, ptr %vi6x01234567, align 32, !tbaa !12
  %114 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !12
  %call139 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %114)
  %115 = load <8 x float>, ptr %vi5x01234567, align 32, !tbaa !12
  %call140 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %call139, <8 x float> noundef %115)
  %116 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call140, i32 8)
  %117 = bitcast <8 x i16> %116 to <2 x i64>
  store <2 x i64> %117, ptr %vacc01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi6x89ABCDEF) #5
  %118 = load ptr, ptr %i6, align 8, !tbaa !9
  %add.ptr141 = getelementptr inbounds i16, ptr %118, i64 8
  %call142 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr141)
  %call143 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call142)
  store <8 x float> %call143, ptr %vi6x89ABCDEF, align 32, !tbaa !12
  %119 = load <2 x i64>, ptr %vacc89ABCDEF, align 16, !tbaa !12
  %call144 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %119)
  %120 = load <8 x float>, ptr %vi5x89ABCDEF, align 32, !tbaa !12
  %call145 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %call144, <8 x float> noundef %120)
  %121 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call145, i32 8)
  %122 = bitcast <8 x i16> %121 to <2 x i64>
  store <2 x i64> %122, ptr %vacc89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi6xGHIJKLMN) #5
  %123 = load ptr, ptr %i6, align 8, !tbaa !9
  %add.ptr146 = getelementptr inbounds i16, ptr %123, i64 16
  %call147 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr146)
  %call148 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call147)
  store <8 x float> %call148, ptr %vi6xGHIJKLMN, align 32, !tbaa !12
  %124 = load ptr, ptr %i6, align 8, !tbaa !9
  %add.ptr149 = getelementptr inbounds i16, ptr %124, i64 24
  store ptr %add.ptr149, ptr %i6, align 8, !tbaa !9
  %125 = load <2 x i64>, ptr %vaccGHIJKLMN, align 16, !tbaa !12
  %call150 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %125)
  %126 = load <8 x float>, ptr %vi5xGHIJKLMN, align 32, !tbaa !12
  %call151 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %call150, <8 x float> noundef %126)
  %127 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call151, i32 8)
  %128 = bitcast <8 x i16> %127 to <2 x i64>
  store <2 x i64> %128, ptr %vaccGHIJKLMN, align 16, !tbaa !12
  %129 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !12
  %call152 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %129)
  %130 = load <8 x float>, ptr %vi6x01234567, align 32, !tbaa !12
  %call153 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %call152, <8 x float> noundef %130)
  %131 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call153, i32 8)
  %132 = bitcast <8 x i16> %131 to <2 x i64>
  store <2 x i64> %132, ptr %vacc01234567, align 16, !tbaa !12
  %133 = load <2 x i64>, ptr %vacc89ABCDEF, align 16, !tbaa !12
  %call154 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %133)
  %134 = load <8 x float>, ptr %vi6x89ABCDEF, align 32, !tbaa !12
  %call155 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %call154, <8 x float> noundef %134)
  %135 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call155, i32 8)
  %136 = bitcast <8 x i16> %135 to <2 x i64>
  store <2 x i64> %136, ptr %vacc89ABCDEF, align 16, !tbaa !12
  %137 = load <2 x i64>, ptr %vaccGHIJKLMN, align 16, !tbaa !12
  %call156 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %137)
  %138 = load <8 x float>, ptr %vi6xGHIJKLMN, align 32, !tbaa !12
  %call157 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %call156, <8 x float> noundef %138)
  %139 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call157, i32 8)
  %140 = bitcast <8 x i16> %139 to <2 x i64>
  store <2 x i64> %140, ptr %vaccGHIJKLMN, align 16, !tbaa !12
  %141 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !12
  %call158 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %141)
  %142 = load <8 x float>, ptr %vscale, align 32, !tbaa !12
  %call159 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %call158, <8 x float> noundef %142)
  %143 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call159, i32 8)
  %144 = bitcast <8 x i16> %143 to <2 x i64>
  store <2 x i64> %144, ptr %vacc01234567, align 16, !tbaa !12
  %145 = load <2 x i64>, ptr %vacc89ABCDEF, align 16, !tbaa !12
  %call160 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %145)
  %146 = load <8 x float>, ptr %vscale, align 32, !tbaa !12
  %call161 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %call160, <8 x float> noundef %146)
  %147 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call161, i32 8)
  %148 = bitcast <8 x i16> %147 to <2 x i64>
  store <2 x i64> %148, ptr %vacc89ABCDEF, align 16, !tbaa !12
  %149 = load <2 x i64>, ptr %vaccGHIJKLMN, align 16, !tbaa !12
  %call162 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %149)
  %150 = load <8 x float>, ptr %vscale, align 32, !tbaa !12
  %call163 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %call162, <8 x float> noundef %150)
  %151 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call163, i32 8)
  %152 = bitcast <8 x i16> %151 to <2 x i64>
  store <2 x i64> %152, ptr %vaccGHIJKLMN, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vout01234567) #5
  %153 = load <2 x i64>, ptr %vacc01234567, align 16, !tbaa !12
  %call164 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %153)
  %154 = load <8 x float>, ptr %vmin, align 32, !tbaa !12
  %call165 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %call164, <8 x float> noundef %154)
  store <8 x float> %call165, ptr %vout01234567, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vout89ABCDEF) #5
  %155 = load <2 x i64>, ptr %vacc89ABCDEF, align 16, !tbaa !12
  %call166 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %155)
  %156 = load <8 x float>, ptr %vmin, align 32, !tbaa !12
  %call167 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %call166, <8 x float> noundef %156)
  store <8 x float> %call167, ptr %vout89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %voutGHIJKLMN) #5
  %157 = load <2 x i64>, ptr %vaccGHIJKLMN, align 16, !tbaa !12
  %call168 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %157)
  %158 = load <8 x float>, ptr %vmin, align 32, !tbaa !12
  %call169 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %call168, <8 x float> noundef %158)
  store <8 x float> %call169, ptr %voutGHIJKLMN, align 32, !tbaa !12
  %159 = load <8 x float>, ptr %vout01234567, align 32, !tbaa !12
  %160 = load <8 x float>, ptr %vmax, align 32, !tbaa !12
  %call170 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %159, <8 x float> noundef %160)
  store <8 x float> %call170, ptr %vout01234567, align 32, !tbaa !12
  %161 = load <8 x float>, ptr %vout89ABCDEF, align 32, !tbaa !12
  %162 = load <8 x float>, ptr %vmax, align 32, !tbaa !12
  %call171 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %161, <8 x float> noundef %162)
  store <8 x float> %call171, ptr %vout89ABCDEF, align 32, !tbaa !12
  %163 = load <8 x float>, ptr %voutGHIJKLMN, align 32, !tbaa !12
  %164 = load <8 x float>, ptr %vmax, align 32, !tbaa !12
  %call172 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %163, <8 x float> noundef %164)
  store <8 x float> %call172, ptr %voutGHIJKLMN, align 32, !tbaa !12
  %165 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %166 = load <8 x float>, ptr %vout01234567, align 32, !tbaa !12
  %167 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %166, i32 8)
  %168 = bitcast <8 x i16> %167 to <2 x i64>
  call void @_mm_storeu_si128(ptr noundef %165, <2 x i64> noundef %168)
  %169 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr173 = getelementptr inbounds i16, ptr %169, i64 8
  %170 = load <8 x float>, ptr %vout89ABCDEF, align 32, !tbaa !12
  %171 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %170, i32 8)
  %172 = bitcast <8 x i16> %171 to <2 x i64>
  call void @_mm_storeu_si128(ptr noundef %add.ptr173, <2 x i64> noundef %172)
  %173 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr174 = getelementptr inbounds i16, ptr %173, i64 16
  %174 = load <8 x float>, ptr %voutGHIJKLMN, align 32, !tbaa !12
  %175 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %174, i32 8)
  %176 = bitcast <8 x i16> %175 to <2 x i64>
  call void @_mm_storeu_si128(ptr noundef %add.ptr174, <2 x i64> noundef %176)
  %177 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr175 = getelementptr inbounds i16, ptr %177, i64 24
  store ptr %add.ptr175, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 32, ptr %voutGHIJKLMN) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vout89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vout01234567) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi6xGHIJKLMN) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi6x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi6x01234567) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi5xGHIJKLMN) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi5x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi5x01234567) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi4xGHIJKLMN) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi4x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi4x01234567) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi3xGHIJKLMN) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi3x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi3x01234567) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaccGHIJKLMN) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi2xGHIJKLMN) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi2x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc01234567) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi2x01234567) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi1xGHIJKLMN) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi1x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi1x01234567) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi0xGHIJKLMN) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi0x89ABCDEF) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi0x01234567) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %178 = load i64, ptr %channels.addr, align 8, !tbaa !5
  %sub = sub i64 %178, 24
  store i64 %sub, ptr %channels.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %179 = load i64, ptr %channels.addr, align 8, !tbaa !5
  %cmp176 = icmp ne i64 %179, 0
  %lnot178 = xor i1 %cmp176, true
  %lnot180 = xor i1 %lnot178, true
  %lnot.ext181 = zext i1 %lnot180 to i32
  %conv182 = sext i32 %lnot.ext181 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv182, i64 0)
  %tobool183 = icmp ne i64 %expval, 0
  br i1 %tobool183, label %if.then184, label %if.end264

if.then184:                                       ; preds = %for.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then184
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi0x01234567185) #5
  %180 = load ptr, ptr %i0, align 8, !tbaa !9
  %call186 = call <2 x i64> @_mm_loadu_si128(ptr noundef %180)
  %call187 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call186)
  store <8 x float> %call187, ptr %vi0x01234567185, align 32, !tbaa !12
  %181 = load ptr, ptr %i0, align 8, !tbaa !9
  %add.ptr188 = getelementptr inbounds i16, ptr %181, i64 8
  store ptr %add.ptr188, ptr %i0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi1x01234567189) #5
  %182 = load ptr, ptr %i1, align 8, !tbaa !9
  %call190 = call <2 x i64> @_mm_loadu_si128(ptr noundef %182)
  %call191 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call190)
  store <8 x float> %call191, ptr %vi1x01234567189, align 32, !tbaa !12
  %183 = load ptr, ptr %i1, align 8, !tbaa !9
  %add.ptr192 = getelementptr inbounds i16, ptr %183, i64 8
  store ptr %add.ptr192, ptr %i1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi2x01234567193) #5
  %184 = load ptr, ptr %i2, align 8, !tbaa !9
  %call194 = call <2 x i64> @_mm_loadu_si128(ptr noundef %184)
  %call195 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call194)
  store <8 x float> %call195, ptr %vi2x01234567193, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vacc01234567196) #5
  %185 = load <8 x float>, ptr %vi0x01234567185, align 32, !tbaa !12
  %186 = load <8 x float>, ptr %vi1x01234567189, align 32, !tbaa !12
  %call197 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %185, <8 x float> noundef %186)
  %187 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call197, i32 8)
  %188 = bitcast <8 x i16> %187 to <2 x i64>
  store <2 x i64> %188, ptr %vacc01234567196, align 16, !tbaa !12
  %189 = load ptr, ptr %i2, align 8, !tbaa !9
  %add.ptr198 = getelementptr inbounds i16, ptr %189, i64 8
  store ptr %add.ptr198, ptr %i2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi3x01234567199) #5
  %190 = load ptr, ptr %i3, align 8, !tbaa !9
  %call200 = call <2 x i64> @_mm_loadu_si128(ptr noundef %190)
  %call201 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call200)
  store <8 x float> %call201, ptr %vi3x01234567199, align 32, !tbaa !12
  %191 = load ptr, ptr %i3, align 8, !tbaa !9
  %add.ptr202 = getelementptr inbounds i16, ptr %191, i64 8
  store ptr %add.ptr202, ptr %i3, align 8, !tbaa !9
  %192 = load <2 x i64>, ptr %vacc01234567196, align 16, !tbaa !12
  %call203 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %192)
  %193 = load <8 x float>, ptr %vi2x01234567193, align 32, !tbaa !12
  %call204 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %call203, <8 x float> noundef %193)
  %194 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call204, i32 8)
  %195 = bitcast <8 x i16> %194 to <2 x i64>
  store <2 x i64> %195, ptr %vacc01234567196, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi4x01234567205) #5
  %196 = load ptr, ptr %i4, align 8, !tbaa !9
  %call206 = call <2 x i64> @_mm_loadu_si128(ptr noundef %196)
  %call207 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call206)
  store <8 x float> %call207, ptr %vi4x01234567205, align 32, !tbaa !12
  %197 = load ptr, ptr %i4, align 8, !tbaa !9
  %add.ptr208 = getelementptr inbounds i16, ptr %197, i64 8
  store ptr %add.ptr208, ptr %i4, align 8, !tbaa !9
  %198 = load <2 x i64>, ptr %vacc01234567196, align 16, !tbaa !12
  %call209 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %198)
  %199 = load <8 x float>, ptr %vi3x01234567199, align 32, !tbaa !12
  %call210 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %call209, <8 x float> noundef %199)
  %200 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call210, i32 8)
  %201 = bitcast <8 x i16> %200 to <2 x i64>
  store <2 x i64> %201, ptr %vacc01234567196, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi5x01234567211) #5
  %202 = load ptr, ptr %i5, align 8, !tbaa !9
  %call212 = call <2 x i64> @_mm_loadu_si128(ptr noundef %202)
  %call213 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call212)
  store <8 x float> %call213, ptr %vi5x01234567211, align 32, !tbaa !12
  %203 = load ptr, ptr %i5, align 8, !tbaa !9
  %add.ptr214 = getelementptr inbounds i16, ptr %203, i64 8
  store ptr %add.ptr214, ptr %i5, align 8, !tbaa !9
  %204 = load <2 x i64>, ptr %vacc01234567196, align 16, !tbaa !12
  %call215 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %204)
  %205 = load <8 x float>, ptr %vi4x01234567205, align 32, !tbaa !12
  %call216 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %call215, <8 x float> noundef %205)
  %206 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call216, i32 8)
  %207 = bitcast <8 x i16> %206 to <2 x i64>
  store <2 x i64> %207, ptr %vacc01234567196, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi6x01234567217) #5
  %208 = load ptr, ptr %i6, align 8, !tbaa !9
  %call218 = call <2 x i64> @_mm_loadu_si128(ptr noundef %208)
  %call219 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call218)
  store <8 x float> %call219, ptr %vi6x01234567217, align 32, !tbaa !12
  %209 = load ptr, ptr %i6, align 8, !tbaa !9
  %add.ptr220 = getelementptr inbounds i16, ptr %209, i64 8
  store ptr %add.ptr220, ptr %i6, align 8, !tbaa !9
  %210 = load <2 x i64>, ptr %vacc01234567196, align 16, !tbaa !12
  %call221 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %210)
  %211 = load <8 x float>, ptr %vi5x01234567211, align 32, !tbaa !12
  %call222 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %call221, <8 x float> noundef %211)
  %212 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call222, i32 8)
  %213 = bitcast <8 x i16> %212 to <2 x i64>
  store <2 x i64> %213, ptr %vacc01234567196, align 16, !tbaa !12
  %214 = load <2 x i64>, ptr %vacc01234567196, align 16, !tbaa !12
  %call223 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %214)
  %215 = load <8 x float>, ptr %vi6x01234567217, align 32, !tbaa !12
  %call224 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %call223, <8 x float> noundef %215)
  %216 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call224, i32 8)
  %217 = bitcast <8 x i16> %216 to <2 x i64>
  store <2 x i64> %217, ptr %vacc01234567196, align 16, !tbaa !12
  %218 = load <2 x i64>, ptr %vacc01234567196, align 16, !tbaa !12
  %call225 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %218)
  %219 = load <8 x float>, ptr %vscale, align 32, !tbaa !12
  %call226 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %call225, <8 x float> noundef %219)
  %220 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call226, i32 8)
  %221 = bitcast <8 x i16> %220 to <2 x i64>
  store <2 x i64> %221, ptr %vacc01234567196, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vout01234567227) #5
  %222 = load <2 x i64>, ptr %vacc01234567196, align 16, !tbaa !12
  %call228 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %222)
  %223 = load <8 x float>, ptr %vmin, align 32, !tbaa !12
  %call229 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %call228, <8 x float> noundef %223)
  store <8 x float> %call229, ptr %vout01234567227, align 32, !tbaa !12
  %224 = load <8 x float>, ptr %vout01234567227, align 32, !tbaa !12
  %225 = load <8 x float>, ptr %vmax, align 32, !tbaa !12
  %call230 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %224, <8 x float> noundef %225)
  store <8 x float> %call230, ptr %vout01234567227, align 32, !tbaa !12
  %226 = load i64, ptr %channels.addr, align 8, !tbaa !5
  %cmp231 = icmp uge i64 %226, 8
  %lnot233 = xor i1 %cmp231, true
  %lnot235 = xor i1 %lnot233, true
  %lnot.ext236 = zext i1 %lnot235 to i32
  %conv237 = sext i32 %lnot.ext236 to i64
  %expval238 = call i64 @llvm.expect.i64(i64 %conv237, i64 1)
  %tobool239 = icmp ne i64 %expval238, 0
  br i1 %tobool239, label %if.then240, label %if.else

if.then240:                                       ; preds = %do.body
  %227 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %228 = load <8 x float>, ptr %vout01234567227, align 32, !tbaa !12
  %229 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %228, i32 8)
  %230 = bitcast <8 x i16> %229 to <2 x i64>
  call void @_mm_storeu_si128(ptr noundef %227, <2 x i64> noundef %230)
  %231 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr241 = getelementptr inbounds i16, ptr %231, i64 8
  store ptr %add.ptr241, ptr %output.addr, align 8, !tbaa !9
  %232 = load i64, ptr %channels.addr, align 8, !tbaa !5
  %sub242 = sub i64 %232, 8
  store i64 %sub242, ptr %channels.addr, align 8, !tbaa !5
  br label %if.end261

if.else:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %vh01234567) #5
  %233 = load <8 x float>, ptr %vout01234567227, align 32, !tbaa !12
  %234 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %233, i32 8)
  %235 = bitcast <8 x i16> %234 to <2 x i64>
  store <2 x i64> %235, ptr %vh01234567, align 16, !tbaa !12
  %236 = load i64, ptr %channels.addr, align 8, !tbaa !5
  %and = and i64 %236, 4
  %tobool243 = icmp ne i64 %and, 0
  br i1 %tobool243, label %if.then244, label %if.end247

if.then244:                                       ; preds = %if.else
  %237 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %238 = load <2 x i64>, ptr %vh01234567, align 16, !tbaa !12
  call void @_mm_storel_epi64(ptr noundef %237, <2 x i64> noundef %238)
  %239 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr245 = getelementptr inbounds i16, ptr %239, i64 4
  store ptr %add.ptr245, ptr %output.addr, align 8, !tbaa !9
  %240 = load <2 x i64>, ptr %vh01234567, align 16, !tbaa !12
  %241 = load <2 x i64>, ptr %vh01234567, align 16, !tbaa !12
  %call246 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %240, <2 x i64> noundef %241)
  store <2 x i64> %call246, ptr %vh01234567, align 16, !tbaa !12
  br label %if.end247

if.end247:                                        ; preds = %if.then244, %if.else
  %242 = load i64, ptr %channels.addr, align 8, !tbaa !5
  %and248 = and i64 %242, 2
  %tobool249 = icmp ne i64 %and248, 0
  br i1 %tobool249, label %if.then250, label %if.end254

if.then250:                                       ; preds = %if.end247
  %243 = load <2 x i64>, ptr %vh01234567, align 16, !tbaa !12
  %call251 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %243)
  %244 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store i32 %call251, ptr %244, align 4, !tbaa !15
  %245 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr252 = getelementptr inbounds i16, ptr %245, i64 2
  store ptr %add.ptr252, ptr %output.addr, align 8, !tbaa !9
  %246 = load <2 x i64>, ptr %vh01234567, align 16, !tbaa !12
  %call253 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %246, i32 noundef 32)
  store <2 x i64> %call253, ptr %vh01234567, align 16, !tbaa !12
  br label %if.end254

if.end254:                                        ; preds = %if.then250, %if.end247
  %247 = load i64, ptr %channels.addr, align 8, !tbaa !5
  %and255 = and i64 %247, 1
  %tobool256 = icmp ne i64 %and255, 0
  br i1 %tobool256, label %if.then257, label %if.end260

if.then257:                                       ; preds = %if.end254
  %248 = load <2 x i64>, ptr %vh01234567, align 16, !tbaa !12
  %249 = bitcast <2 x i64> %248 to <8 x i16>
  %250 = extractelement <8 x i16> %249, i64 0
  %conv258 = zext i16 %250 to i32
  %conv259 = trunc i32 %conv258 to i16
  %251 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store i16 %conv259, ptr %251, align 2, !tbaa !17
  br label %if.end260

if.end260:                                        ; preds = %if.then257, %if.end254
  store i64 0, ptr %channels.addr, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vh01234567) #5
  br label %if.end261

if.end261:                                        ; preds = %if.end260, %if.then240
  call void @llvm.lifetime.end.p0(i64 32, ptr %vout01234567227) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi6x01234567217) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi5x01234567211) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi4x01234567205) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi3x01234567199) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %vacc01234567196) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi2x01234567193) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi1x01234567189) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi0x01234567185) #5
  br label %do.cond

do.cond:                                          ; preds = %if.end261
  %252 = load i64, ptr %channels.addr, align 8, !tbaa !5
  %cmp262 = icmp ne i64 %252, 0
  br i1 %cmp262, label %do.body, label %do.end, !llvm.loop !19

do.end:                                           ; preds = %do.cond
  br label %if.end264

if.end264:                                        ; preds = %do.end, %for.end
  call void @llvm.lifetime.end.p0(i64 32, ptr %vmax) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vmin) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vscale) #5
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
define internal <8 x float> @_mm256_load_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <8 x float>, ptr %0, align 32, !tbaa !12
  ret <8 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %__a) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = bitcast <8 x i16> %1 to <8 x half>
  %cvtph2ps = fpext <8 x half> %2 to <8 x float>
  ret <8 x float> %cvtph2ps
}

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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float>, i32 immarg) #4

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_add_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !12
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !12
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !12
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !12
  %add = fadd <8 x float> %0, %1
  ret <8 x float> %add
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_mul_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !12
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !12
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !12
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !12
  %mul = fmul <8 x float> %0, %1
  ret <8 x float> %mul
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_max_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !12
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !12
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !12
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !12
  %2 = call <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %0, <8 x float> %1)
  ret <8 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_min_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !12
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !12
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !12
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !12
  %2 = call <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %0, <8 x float> %1)
  ret <8 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storeu_si128(ptr noundef %__p, <2 x i64> noundef %__b) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %__b.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_si128, ptr %1, i32 0, i32 0
  store <2 x i64> %0, ptr %__v, align 1, !tbaa !12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storel_epi64(ptr noundef %__p, <2 x i64> noundef %__a) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %vecext = extractelement <2 x i64> %0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u = getelementptr inbounds %struct.__mm_storel_epi64_struct, ptr %1, i32 0, i32 0
  store i64 %vecext, ptr %__u, align 1, !tbaa !12
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %shuffle = shufflevector <2 x i64> %0, <2 x i64> %1, <2 x i32> <i32 1, i32 3>
  ret <2 x i64> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @_mm_cvtsi128_si32(<2 x i64> noundef %__a) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b = alloca <4 x i32>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %__b) #5
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  store <4 x i32> %1, ptr %__b, align 16, !tbaa !12
  %2 = load <4 x i32>, ptr %__b, align 16, !tbaa !12
  %vecext = extractelement <4 x i32> %2, i32 0
  call void @llvm.lifetime.end.p0(i64 16, ptr %__b) #5
  ret i32 %vecext
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %__a, i32 noundef %__count) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !15
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = load i32, ptr %__count.addr, align 4, !tbaa !15
  %2 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %0, i32 %1)
  ret <2 x i64> %2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64>, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nounwind }

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
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !7, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"short", !7, i64 0}
!19 = distinct !{!19, !14}
