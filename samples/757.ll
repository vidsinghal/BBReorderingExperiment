; ModuleID = 'samples/757.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-dwconv/gen/up16x4-minmax-avx512f-acc2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { float, float }
%struct.__loadu_ps = type { <16 x float> }
%struct.__storeu_ps = type { <16 x float> }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_dwconv_minmax_ukernel_up16x4__avx512f_acc2(i64 noundef %channels, i64 noundef %output_width, ptr noundef %input, ptr noundef %weights, ptr noundef %output, i64 noundef %input_stride, i64 noundef %output_increment, i64 noundef %input_offset, ptr noundef %zero, ptr noalias noundef align 32 dereferenceable(128) %params) #0 {
entry:
  %channels.addr = alloca i64, align 8
  %output_width.addr = alloca i64, align 8
  %input.addr = alloca ptr, align 8
  %weights.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %input_stride.addr = alloca i64, align 8
  %output_increment.addr = alloca i64, align 8
  %input_offset.addr = alloca i64, align 8
  %zero.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %vmax = alloca <16 x float>, align 64
  %vmin = alloca <16 x float>, align 64
  %i0 = alloca ptr, align 8
  %i1 = alloca ptr, align 8
  %i2 = alloca ptr, align 8
  %i3 = alloca ptr, align 8
  %c = alloca i64, align 8
  %w = alloca ptr, align 8
  %vacc0123456789ABCDEFp0 = alloca <16 x float>, align 64
  %vi0x0123456789ABCDEF = alloca <16 x float>, align 64
  %vk0x0123456789ABCDEF = alloca <16 x float>, align 64
  %vi1x0123456789ABCDEF = alloca <16 x float>, align 64
  %vk1x0123456789ABCDEF = alloca <16 x float>, align 64
  %vacc0123456789ABCDEFp1 = alloca <16 x float>, align 64
  %vi2x0123456789ABCDEF = alloca <16 x float>, align 64
  %vk2x0123456789ABCDEF = alloca <16 x float>, align 64
  %vi3x0123456789ABCDEF = alloca <16 x float>, align 64
  %vk3x0123456789ABCDEF = alloca <16 x float>, align 64
  %vacc0123456789ABCDEF = alloca <16 x float>, align 64
  %vmask = alloca i16, align 2
  %vacc0123456789ABCDEFp080 = alloca <16 x float>, align 64
  %vi0x0123456789ABCDEF82 = alloca <16 x float>, align 64
  %vk0x0123456789ABCDEF84 = alloca <16 x float>, align 64
  %vi1x0123456789ABCDEF88 = alloca <16 x float>, align 64
  %vk1x0123456789ABCDEF90 = alloca <16 x float>, align 64
  %vacc0123456789ABCDEFp193 = alloca <16 x float>, align 64
  %vi2x0123456789ABCDEF95 = alloca <16 x float>, align 64
  %vk2x0123456789ABCDEF97 = alloca <16 x float>, align 64
  %vi3x0123456789ABCDEF101 = alloca <16 x float>, align 64
  %vk3x0123456789ABCDEF103 = alloca <16 x float>, align 64
  %vacc0123456789ABCDEF108 = alloca <16 x float>, align 64
  store i64 %channels, ptr %channels.addr, align 8, !tbaa !5
  store i64 %output_width, ptr %output_width.addr, align 8, !tbaa !5
  store ptr %input, ptr %input.addr, align 8, !tbaa !9
  store ptr %weights, ptr %weights.addr, align 8, !tbaa !9
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  store i64 %input_stride, ptr %input_stride.addr, align 8, !tbaa !5
  store i64 %output_increment, ptr %output_increment.addr, align 8, !tbaa !5
  store i64 %input_offset, ptr %input_offset.addr, align 8, !tbaa !5
  store ptr %zero, ptr %zero.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %vmax) #8
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %max = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %1 = load float, ptr %max, align 4, !tbaa !11
  %call = call <16 x float> @_mm512_set1_ps(float noundef %1)
  store <16 x float> %call, ptr %vmax, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vmin) #8
  %2 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %min = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 0
  %3 = load float, ptr %min, align 32, !tbaa !11
  %call1 = call <16 x float> @_mm512_set1_ps(float noundef %3)
  store <16 x float> %call1, ptr %vmin, align 64, !tbaa !11
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %i0) #8
  %4 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  store ptr %5, ptr %i0, align 8, !tbaa !9
  %6 = load ptr, ptr %i0, align 8, !tbaa !9
  %7 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp = icmp ne ptr %6, %7
  %lnot = xor i1 %cmp, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !12

if.then:                                          ; preds = %do.body
  %8 = load ptr, ptr %i0, align 8, !tbaa !9
  %9 = ptrtoint ptr %8 to i64
  %10 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add = add i64 %9, %10
  %11 = inttoptr i64 %add to ptr
  store ptr %11, ptr %i0, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %i1) #8
  %12 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx3 = getelementptr inbounds ptr, ptr %12, i64 1
  %13 = load ptr, ptr %arrayidx3, align 8, !tbaa !9
  store ptr %13, ptr %i1, align 8, !tbaa !9
  %14 = load ptr, ptr %i1, align 8, !tbaa !9
  %15 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp4 = icmp ne ptr %14, %15
  %lnot6 = xor i1 %cmp4, true
  %lnot8 = xor i1 %lnot6, true
  %lnot.ext9 = zext i1 %lnot8 to i32
  %conv10 = sext i32 %lnot.ext9 to i64
  %tobool11 = icmp ne i64 %conv10, 0
  br i1 %tobool11, label %if.then12, label %if.end14, !unpredictable !12

if.then12:                                        ; preds = %if.end
  %16 = load ptr, ptr %i1, align 8, !tbaa !9
  %17 = ptrtoint ptr %16 to i64
  %18 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add13 = add i64 %17, %18
  %19 = inttoptr i64 %add13 to ptr
  store ptr %19, ptr %i1, align 8, !tbaa !9
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %i2) #8
  %20 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx15 = getelementptr inbounds ptr, ptr %20, i64 2
  %21 = load ptr, ptr %arrayidx15, align 8, !tbaa !9
  store ptr %21, ptr %i2, align 8, !tbaa !9
  %22 = load ptr, ptr %i2, align 8, !tbaa !9
  %23 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp16 = icmp ne ptr %22, %23
  %lnot18 = xor i1 %cmp16, true
  %lnot20 = xor i1 %lnot18, true
  %lnot.ext21 = zext i1 %lnot20 to i32
  %conv22 = sext i32 %lnot.ext21 to i64
  %tobool23 = icmp ne i64 %conv22, 0
  br i1 %tobool23, label %if.then24, label %if.end26, !unpredictable !12

if.then24:                                        ; preds = %if.end14
  %24 = load ptr, ptr %i2, align 8, !tbaa !9
  %25 = ptrtoint ptr %24 to i64
  %26 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add25 = add i64 %25, %26
  %27 = inttoptr i64 %add25 to ptr
  store ptr %27, ptr %i2, align 8, !tbaa !9
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end14
  call void @llvm.lifetime.start.p0(i64 8, ptr %i3) #8
  %28 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx27 = getelementptr inbounds ptr, ptr %28, i64 3
  %29 = load ptr, ptr %arrayidx27, align 8, !tbaa !9
  store ptr %29, ptr %i3, align 8, !tbaa !9
  %30 = load ptr, ptr %i3, align 8, !tbaa !9
  %31 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp28 = icmp ne ptr %30, %31
  %lnot30 = xor i1 %cmp28, true
  %lnot32 = xor i1 %lnot30, true
  %lnot.ext33 = zext i1 %lnot32 to i32
  %conv34 = sext i32 %lnot.ext33 to i64
  %tobool35 = icmp ne i64 %conv34, 0
  br i1 %tobool35, label %if.then36, label %if.end38, !unpredictable !12

if.then36:                                        ; preds = %if.end26
  %32 = load ptr, ptr %i3, align 8, !tbaa !9
  %33 = ptrtoint ptr %32 to i64
  %34 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add37 = add i64 %33, %34
  %35 = inttoptr i64 %add37 to ptr
  store ptr %35, ptr %i3, align 8, !tbaa !9
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end26
  %36 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %37 = ptrtoint ptr %36 to i64
  %38 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add39 = add i64 %37, %38
  %39 = inttoptr i64 %add39 to ptr
  store ptr %39, ptr %input.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #8
  %40 = load i64, ptr %channels.addr, align 8, !tbaa !5
  store i64 %40, ptr %c, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #8
  %41 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  store ptr %41, ptr %w, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end38
  %42 = load i64, ptr %c, align 8, !tbaa !5
  %cmp40 = icmp uge i64 %42, 16
  br i1 %cmp40, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc0123456789ABCDEFp0) #8
  %43 = load ptr, ptr %w, align 8, !tbaa !9
  %call42 = call <16 x float> @_mm512_load_ps(ptr noundef %43)
  store <16 x float> %call42, ptr %vacc0123456789ABCDEFp0, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vi0x0123456789ABCDEF) #8
  %44 = load ptr, ptr %i0, align 8, !tbaa !9
  %call43 = call <16 x float> @_mm512_loadu_ps(ptr noundef %44)
  store <16 x float> %call43, ptr %vi0x0123456789ABCDEF, align 64, !tbaa !11
  %45 = load ptr, ptr %i0, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %45, i64 16
  store ptr %add.ptr, ptr %i0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %vk0x0123456789ABCDEF) #8
  %46 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr44 = getelementptr inbounds float, ptr %46, i64 16
  %call45 = call <16 x float> @_mm512_load_ps(ptr noundef %add.ptr44)
  store <16 x float> %call45, ptr %vk0x0123456789ABCDEF, align 64, !tbaa !11
  %47 = load <16 x float>, ptr %vi0x0123456789ABCDEF, align 64, !tbaa !11
  %48 = load <16 x float>, ptr %vk0x0123456789ABCDEF, align 64, !tbaa !11
  %49 = load <16 x float>, ptr %vacc0123456789ABCDEFp0, align 64, !tbaa !11
  %call46 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %47, <16 x float> noundef %48, <16 x float> noundef %49)
  store <16 x float> %call46, ptr %vacc0123456789ABCDEFp0, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vi1x0123456789ABCDEF) #8
  %50 = load ptr, ptr %i1, align 8, !tbaa !9
  %call47 = call <16 x float> @_mm512_loadu_ps(ptr noundef %50)
  store <16 x float> %call47, ptr %vi1x0123456789ABCDEF, align 64, !tbaa !11
  %51 = load ptr, ptr %i1, align 8, !tbaa !9
  %add.ptr48 = getelementptr inbounds float, ptr %51, i64 16
  store ptr %add.ptr48, ptr %i1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %vk1x0123456789ABCDEF) #8
  %52 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr49 = getelementptr inbounds float, ptr %52, i64 32
  %call50 = call <16 x float> @_mm512_load_ps(ptr noundef %add.ptr49)
  store <16 x float> %call50, ptr %vk1x0123456789ABCDEF, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc0123456789ABCDEFp1) #8
  %53 = load <16 x float>, ptr %vi1x0123456789ABCDEF, align 64, !tbaa !11
  %54 = load <16 x float>, ptr %vk1x0123456789ABCDEF, align 64, !tbaa !11
  %call51 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %53, <16 x float> noundef %54)
  store <16 x float> %call51, ptr %vacc0123456789ABCDEFp1, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vi2x0123456789ABCDEF) #8
  %55 = load ptr, ptr %i2, align 8, !tbaa !9
  %call52 = call <16 x float> @_mm512_loadu_ps(ptr noundef %55)
  store <16 x float> %call52, ptr %vi2x0123456789ABCDEF, align 64, !tbaa !11
  %56 = load ptr, ptr %i2, align 8, !tbaa !9
  %add.ptr53 = getelementptr inbounds float, ptr %56, i64 16
  store ptr %add.ptr53, ptr %i2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %vk2x0123456789ABCDEF) #8
  %57 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr54 = getelementptr inbounds float, ptr %57, i64 48
  %call55 = call <16 x float> @_mm512_load_ps(ptr noundef %add.ptr54)
  store <16 x float> %call55, ptr %vk2x0123456789ABCDEF, align 64, !tbaa !11
  %58 = load <16 x float>, ptr %vi2x0123456789ABCDEF, align 64, !tbaa !11
  %59 = load <16 x float>, ptr %vk2x0123456789ABCDEF, align 64, !tbaa !11
  %60 = load <16 x float>, ptr %vacc0123456789ABCDEFp0, align 64, !tbaa !11
  %call56 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %58, <16 x float> noundef %59, <16 x float> noundef %60)
  store <16 x float> %call56, ptr %vacc0123456789ABCDEFp0, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vi3x0123456789ABCDEF) #8
  %61 = load ptr, ptr %i3, align 8, !tbaa !9
  %call57 = call <16 x float> @_mm512_loadu_ps(ptr noundef %61)
  store <16 x float> %call57, ptr %vi3x0123456789ABCDEF, align 64, !tbaa !11
  %62 = load ptr, ptr %i3, align 8, !tbaa !9
  %add.ptr58 = getelementptr inbounds float, ptr %62, i64 16
  store ptr %add.ptr58, ptr %i3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %vk3x0123456789ABCDEF) #8
  %63 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr59 = getelementptr inbounds float, ptr %63, i64 64
  %call60 = call <16 x float> @_mm512_load_ps(ptr noundef %add.ptr59)
  store <16 x float> %call60, ptr %vk3x0123456789ABCDEF, align 64, !tbaa !11
  %64 = load <16 x float>, ptr %vi3x0123456789ABCDEF, align 64, !tbaa !11
  %65 = load <16 x float>, ptr %vk3x0123456789ABCDEF, align 64, !tbaa !11
  %66 = load <16 x float>, ptr %vacc0123456789ABCDEFp1, align 64, !tbaa !11
  %call61 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %64, <16 x float> noundef %65, <16 x float> noundef %66)
  store <16 x float> %call61, ptr %vacc0123456789ABCDEFp1, align 64, !tbaa !11
  %67 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr62 = getelementptr inbounds float, ptr %67, i64 80
  store ptr %add.ptr62, ptr %w, align 8, !tbaa !9
  %68 = load <16 x float>, ptr %vacc0123456789ABCDEFp0, align 64, !tbaa !11
  %69 = load <16 x float>, ptr %vacc0123456789ABCDEFp1, align 64, !tbaa !11
  %call63 = call <16 x float> @_mm512_add_ps(<16 x float> noundef %68, <16 x float> noundef %69)
  store <16 x float> %call63, ptr %vacc0123456789ABCDEFp0, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc0123456789ABCDEF) #8
  %70 = load <16 x float>, ptr %vacc0123456789ABCDEFp0, align 64, !tbaa !11
  %71 = load <16 x float>, ptr %vmin, align 64, !tbaa !11
  %call64 = call <16 x float> @_mm512_max_ps(<16 x float> noundef %70, <16 x float> noundef %71)
  store <16 x float> %call64, ptr %vacc0123456789ABCDEF, align 64, !tbaa !11
  %72 = load <16 x float>, ptr %vacc0123456789ABCDEF, align 64, !tbaa !11
  %73 = load <16 x float>, ptr %vmax, align 64, !tbaa !11
  %call65 = call <16 x float> @_mm512_min_ps(<16 x float> noundef %72, <16 x float> noundef %73)
  store <16 x float> %call65, ptr %vacc0123456789ABCDEF, align 64, !tbaa !11
  %74 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %75 = load <16 x float>, ptr %vacc0123456789ABCDEF, align 64, !tbaa !11
  call void @_mm512_storeu_ps(ptr noundef %74, <16 x float> noundef %75)
  %76 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr66 = getelementptr inbounds float, ptr %76, i64 16
  store ptr %add.ptr66, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc0123456789ABCDEF) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vk3x0123456789ABCDEF) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vi3x0123456789ABCDEF) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vk2x0123456789ABCDEF) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vi2x0123456789ABCDEF) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc0123456789ABCDEFp1) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vk1x0123456789ABCDEF) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vi1x0123456789ABCDEF) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vk0x0123456789ABCDEF) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vi0x0123456789ABCDEF) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc0123456789ABCDEFp0) #8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %77 = load i64, ptr %c, align 8, !tbaa !5
  %sub = sub i64 %77, 16
  store i64 %sub, ptr %c, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %78 = load i64, ptr %c, align 8, !tbaa !5
  %cmp67 = icmp ne i64 %78, 0
  %lnot69 = xor i1 %cmp67, true
  %lnot71 = xor i1 %lnot69, true
  %lnot.ext72 = zext i1 %lnot71 to i32
  %conv73 = sext i32 %lnot.ext72 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv73, i64 0)
  %tobool74 = icmp ne i64 %expval, 0
  br i1 %tobool74, label %if.then75, label %if.end112

if.then75:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 2, ptr %vmask) #8
  %79 = load i64, ptr %c, align 8, !tbaa !5
  %sh_prom = trunc i64 %79 to i32
  %shl = shl i32 1, %sh_prom
  %sub76 = sub i32 %shl, 1
  %conv77 = trunc i32 %sub76 to i16
  %conv78 = zext i16 %conv77 to i32
  %call79 = call zeroext i16 @_cvtu32_mask16(i32 noundef %conv78)
  store i16 %call79, ptr %vmask, align 2, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc0123456789ABCDEFp080) #8
  %80 = load i16, ptr %vmask, align 2, !tbaa !15
  %81 = load ptr, ptr %w, align 8, !tbaa !9
  %call81 = call <16 x float> @_mm512_maskz_loadu_ps(i16 noundef zeroext %80, ptr noundef %81)
  store <16 x float> %call81, ptr %vacc0123456789ABCDEFp080, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vi0x0123456789ABCDEF82) #8
  %82 = load i16, ptr %vmask, align 2, !tbaa !15
  %83 = load ptr, ptr %i0, align 8, !tbaa !9
  %call83 = call <16 x float> @_mm512_maskz_loadu_ps(i16 noundef zeroext %82, ptr noundef %83)
  store <16 x float> %call83, ptr %vi0x0123456789ABCDEF82, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vk0x0123456789ABCDEF84) #8
  %84 = load i16, ptr %vmask, align 2, !tbaa !15
  %85 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr85 = getelementptr inbounds float, ptr %85, i64 16
  %call86 = call <16 x float> @_mm512_maskz_loadu_ps(i16 noundef zeroext %84, ptr noundef %add.ptr85)
  store <16 x float> %call86, ptr %vk0x0123456789ABCDEF84, align 64, !tbaa !11
  %86 = load <16 x float>, ptr %vi0x0123456789ABCDEF82, align 64, !tbaa !11
  %87 = load <16 x float>, ptr %vk0x0123456789ABCDEF84, align 64, !tbaa !11
  %88 = load <16 x float>, ptr %vacc0123456789ABCDEFp080, align 64, !tbaa !11
  %call87 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %86, <16 x float> noundef %87, <16 x float> noundef %88)
  store <16 x float> %call87, ptr %vacc0123456789ABCDEFp080, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vi1x0123456789ABCDEF88) #8
  %89 = load i16, ptr %vmask, align 2, !tbaa !15
  %90 = load ptr, ptr %i1, align 8, !tbaa !9
  %call89 = call <16 x float> @_mm512_maskz_loadu_ps(i16 noundef zeroext %89, ptr noundef %90)
  store <16 x float> %call89, ptr %vi1x0123456789ABCDEF88, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vk1x0123456789ABCDEF90) #8
  %91 = load i16, ptr %vmask, align 2, !tbaa !15
  %92 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr91 = getelementptr inbounds float, ptr %92, i64 32
  %call92 = call <16 x float> @_mm512_maskz_loadu_ps(i16 noundef zeroext %91, ptr noundef %add.ptr91)
  store <16 x float> %call92, ptr %vk1x0123456789ABCDEF90, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc0123456789ABCDEFp193) #8
  %93 = load <16 x float>, ptr %vi1x0123456789ABCDEF88, align 64, !tbaa !11
  %94 = load <16 x float>, ptr %vk1x0123456789ABCDEF90, align 64, !tbaa !11
  %call94 = call <16 x float> @_mm512_mul_ps(<16 x float> noundef %93, <16 x float> noundef %94)
  store <16 x float> %call94, ptr %vacc0123456789ABCDEFp193, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vi2x0123456789ABCDEF95) #8
  %95 = load i16, ptr %vmask, align 2, !tbaa !15
  %96 = load ptr, ptr %i2, align 8, !tbaa !9
  %call96 = call <16 x float> @_mm512_maskz_loadu_ps(i16 noundef zeroext %95, ptr noundef %96)
  store <16 x float> %call96, ptr %vi2x0123456789ABCDEF95, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vk2x0123456789ABCDEF97) #8
  %97 = load i16, ptr %vmask, align 2, !tbaa !15
  %98 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr98 = getelementptr inbounds float, ptr %98, i64 48
  %call99 = call <16 x float> @_mm512_maskz_loadu_ps(i16 noundef zeroext %97, ptr noundef %add.ptr98)
  store <16 x float> %call99, ptr %vk2x0123456789ABCDEF97, align 64, !tbaa !11
  %99 = load <16 x float>, ptr %vi2x0123456789ABCDEF95, align 64, !tbaa !11
  %100 = load <16 x float>, ptr %vk2x0123456789ABCDEF97, align 64, !tbaa !11
  %101 = load <16 x float>, ptr %vacc0123456789ABCDEFp080, align 64, !tbaa !11
  %call100 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %99, <16 x float> noundef %100, <16 x float> noundef %101)
  store <16 x float> %call100, ptr %vacc0123456789ABCDEFp080, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vi3x0123456789ABCDEF101) #8
  %102 = load i16, ptr %vmask, align 2, !tbaa !15
  %103 = load ptr, ptr %i3, align 8, !tbaa !9
  %call102 = call <16 x float> @_mm512_maskz_loadu_ps(i16 noundef zeroext %102, ptr noundef %103)
  store <16 x float> %call102, ptr %vi3x0123456789ABCDEF101, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vk3x0123456789ABCDEF103) #8
  %104 = load i16, ptr %vmask, align 2, !tbaa !15
  %105 = load ptr, ptr %w, align 8, !tbaa !9
  %add.ptr104 = getelementptr inbounds float, ptr %105, i64 64
  %call105 = call <16 x float> @_mm512_maskz_loadu_ps(i16 noundef zeroext %104, ptr noundef %add.ptr104)
  store <16 x float> %call105, ptr %vk3x0123456789ABCDEF103, align 64, !tbaa !11
  %106 = load <16 x float>, ptr %vi3x0123456789ABCDEF101, align 64, !tbaa !11
  %107 = load <16 x float>, ptr %vk3x0123456789ABCDEF103, align 64, !tbaa !11
  %108 = load <16 x float>, ptr %vacc0123456789ABCDEFp193, align 64, !tbaa !11
  %call106 = call <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %106, <16 x float> noundef %107, <16 x float> noundef %108)
  store <16 x float> %call106, ptr %vacc0123456789ABCDEFp193, align 64, !tbaa !11
  %109 = load <16 x float>, ptr %vacc0123456789ABCDEFp080, align 64, !tbaa !11
  %110 = load <16 x float>, ptr %vacc0123456789ABCDEFp193, align 64, !tbaa !11
  %call107 = call <16 x float> @_mm512_add_ps(<16 x float> noundef %109, <16 x float> noundef %110)
  store <16 x float> %call107, ptr %vacc0123456789ABCDEFp080, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vacc0123456789ABCDEF108) #8
  %111 = load <16 x float>, ptr %vacc0123456789ABCDEFp080, align 64, !tbaa !11
  %112 = load <16 x float>, ptr %vmin, align 64, !tbaa !11
  %call109 = call <16 x float> @_mm512_max_ps(<16 x float> noundef %111, <16 x float> noundef %112)
  store <16 x float> %call109, ptr %vacc0123456789ABCDEF108, align 64, !tbaa !11
  %113 = load <16 x float>, ptr %vacc0123456789ABCDEF108, align 64, !tbaa !11
  %114 = load <16 x float>, ptr %vmax, align 64, !tbaa !11
  %call110 = call <16 x float> @_mm512_min_ps(<16 x float> noundef %113, <16 x float> noundef %114)
  store <16 x float> %call110, ptr %vacc0123456789ABCDEF108, align 64, !tbaa !11
  %115 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %116 = load i16, ptr %vmask, align 2, !tbaa !15
  %117 = load <16 x float>, ptr %vacc0123456789ABCDEF108, align 64, !tbaa !11
  call void @_mm512_mask_storeu_ps(ptr noundef %115, i16 noundef zeroext %116, <16 x float> noundef %117)
  %118 = load i64, ptr %c, align 8, !tbaa !5
  %119 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr111 = getelementptr inbounds float, ptr %119, i64 %118
  store ptr %add.ptr111, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc0123456789ABCDEF108) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vk3x0123456789ABCDEF103) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vi3x0123456789ABCDEF101) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vk2x0123456789ABCDEF97) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vi2x0123456789ABCDEF95) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc0123456789ABCDEFp193) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vk1x0123456789ABCDEF90) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vi1x0123456789ABCDEF88) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vk0x0123456789ABCDEF84) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vi0x0123456789ABCDEF82) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vacc0123456789ABCDEFp080) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr %vmask) #8
  br label %if.end112

if.end112:                                        ; preds = %if.then75, %for.end
  %120 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %121 = ptrtoint ptr %120 to i64
  %122 = load i64, ptr %output_increment.addr, align 8, !tbaa !5
  %add113 = add i64 %121, %122
  %123 = inttoptr i64 %add113 to ptr
  store ptr %123, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %i3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %i2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %i1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %i0) #8
  br label %do.cond

do.cond:                                          ; preds = %if.end112
  %124 = load i64, ptr %output_width.addr, align 8, !tbaa !5
  %dec = add i64 %124, -1
  store i64 %dec, ptr %output_width.addr, align 8, !tbaa !5
  %cmp114 = icmp ne i64 %dec, 0
  br i1 %cmp114, label %do.body, label %do.end, !llvm.loop !17

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 64, ptr %vmin) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %vmax) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_set1_ps(float noundef %__w) #2 {
entry:
  %__w.addr = alloca float, align 4
  %.compoundliteral = alloca <16 x float>, align 64
  store float %__w, ptr %__w.addr, align 4, !tbaa !18
  %0 = load float, ptr %__w.addr, align 4, !tbaa !18
  %vecinit = insertelement <16 x float> undef, float %0, i32 0
  %1 = load float, ptr %__w.addr, align 4, !tbaa !18
  %vecinit1 = insertelement <16 x float> %vecinit, float %1, i32 1
  %2 = load float, ptr %__w.addr, align 4, !tbaa !18
  %vecinit2 = insertelement <16 x float> %vecinit1, float %2, i32 2
  %3 = load float, ptr %__w.addr, align 4, !tbaa !18
  %vecinit3 = insertelement <16 x float> %vecinit2, float %3, i32 3
  %4 = load float, ptr %__w.addr, align 4, !tbaa !18
  %vecinit4 = insertelement <16 x float> %vecinit3, float %4, i32 4
  %5 = load float, ptr %__w.addr, align 4, !tbaa !18
  %vecinit5 = insertelement <16 x float> %vecinit4, float %5, i32 5
  %6 = load float, ptr %__w.addr, align 4, !tbaa !18
  %vecinit6 = insertelement <16 x float> %vecinit5, float %6, i32 6
  %7 = load float, ptr %__w.addr, align 4, !tbaa !18
  %vecinit7 = insertelement <16 x float> %vecinit6, float %7, i32 7
  %8 = load float, ptr %__w.addr, align 4, !tbaa !18
  %vecinit8 = insertelement <16 x float> %vecinit7, float %8, i32 8
  %9 = load float, ptr %__w.addr, align 4, !tbaa !18
  %vecinit9 = insertelement <16 x float> %vecinit8, float %9, i32 9
  %10 = load float, ptr %__w.addr, align 4, !tbaa !18
  %vecinit10 = insertelement <16 x float> %vecinit9, float %10, i32 10
  %11 = load float, ptr %__w.addr, align 4, !tbaa !18
  %vecinit11 = insertelement <16 x float> %vecinit10, float %11, i32 11
  %12 = load float, ptr %__w.addr, align 4, !tbaa !18
  %vecinit12 = insertelement <16 x float> %vecinit11, float %12, i32 12
  %13 = load float, ptr %__w.addr, align 4, !tbaa !18
  %vecinit13 = insertelement <16 x float> %vecinit12, float %13, i32 13
  %14 = load float, ptr %__w.addr, align 4, !tbaa !18
  %vecinit14 = insertelement <16 x float> %vecinit13, float %14, i32 14
  %15 = load float, ptr %__w.addr, align 4, !tbaa !18
  %vecinit15 = insertelement <16 x float> %vecinit14, float %15, i32 15
  store <16 x float> %vecinit15, ptr %.compoundliteral, align 64, !tbaa !11
  %16 = load <16 x float>, ptr %.compoundliteral, align 64, !tbaa !11
  ret <16 x float> %16
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_load_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <16 x float>, ptr %0, align 64, !tbaa !11
  ret <16 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_loadu_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__loadu_ps, ptr %0, i32 0, i32 0
  %1 = load <16 x float>, ptr %__v, align 1, !tbaa !11
  ret <16 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_fmadd_ps(<16 x float> noundef %__A, <16 x float> noundef %__B, <16 x float> noundef %__C) #2 {
entry:
  %__A.addr = alloca <16 x float>, align 64
  %__B.addr = alloca <16 x float>, align 64
  %__C.addr = alloca <16 x float>, align 64
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !11
  store <16 x float> %__B, ptr %__B.addr, align 64, !tbaa !11
  store <16 x float> %__C, ptr %__C.addr, align 64, !tbaa !11
  %0 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !11
  %1 = load <16 x float>, ptr %__B.addr, align 64, !tbaa !11
  %2 = load <16 x float>, ptr %__C.addr, align 64, !tbaa !11
  %3 = call <16 x float> @llvm.fma.v16f32(<16 x float> %0, <16 x float> %1, <16 x float> %2)
  ret <16 x float> %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_mul_ps(<16 x float> noundef %__a, <16 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <16 x float>, align 64
  %__b.addr = alloca <16 x float>, align 64
  store <16 x float> %__a, ptr %__a.addr, align 64, !tbaa !11
  store <16 x float> %__b, ptr %__b.addr, align 64, !tbaa !11
  %0 = load <16 x float>, ptr %__a.addr, align 64, !tbaa !11
  %1 = load <16 x float>, ptr %__b.addr, align 64, !tbaa !11
  %mul = fmul <16 x float> %0, %1
  ret <16 x float> %mul
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_add_ps(<16 x float> noundef %__a, <16 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <16 x float>, align 64
  %__b.addr = alloca <16 x float>, align 64
  store <16 x float> %__a, ptr %__a.addr, align 64, !tbaa !11
  store <16 x float> %__b, ptr %__b.addr, align 64, !tbaa !11
  %0 = load <16 x float>, ptr %__a.addr, align 64, !tbaa !11
  %1 = load <16 x float>, ptr %__b.addr, align 64, !tbaa !11
  %add = fadd <16 x float> %0, %1
  ret <16 x float> %add
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_max_ps(<16 x float> noundef %__A, <16 x float> noundef %__B) #2 {
entry:
  %__A.addr = alloca <16 x float>, align 64
  %__B.addr = alloca <16 x float>, align 64
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !11
  store <16 x float> %__B, ptr %__B.addr, align 64, !tbaa !11
  %0 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !11
  %1 = load <16 x float>, ptr %__B.addr, align 64, !tbaa !11
  %2 = call <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %0, <16 x float> %1, i32 4)
  ret <16 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_min_ps(<16 x float> noundef %__A, <16 x float> noundef %__B) #2 {
entry:
  %__A.addr = alloca <16 x float>, align 64
  %__B.addr = alloca <16 x float>, align 64
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !11
  store <16 x float> %__B, ptr %__B.addr, align 64, !tbaa !11
  %0 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !11
  %1 = load <16 x float>, ptr %__B.addr, align 64, !tbaa !11
  %2 = call <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %0, <16 x float> %1, i32 4)
  ret <16 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm512_storeu_ps(ptr noundef %__P, <16 x float> noundef %__A) #2 {
entry:
  %__P.addr = alloca ptr, align 8
  %__A.addr = alloca <16 x float>, align 64
  store ptr %__P, ptr %__P.addr, align 8, !tbaa !9
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !11
  %0 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !11
  %1 = load ptr, ptr %__P.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_ps, ptr %1, i32 0, i32 0
  store <16 x float> %0, ptr %__v, align 1, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i16 @_cvtu32_mask16(i32 noundef %__A) #4 {
entry:
  %__A.addr = alloca i32, align 4
  store i32 %__A, ptr %__A.addr, align 4, !tbaa !20
  %0 = load i32, ptr %__A.addr, align 4, !tbaa !20
  %conv = trunc i32 %0 to i16
  %1 = bitcast i16 %conv to <16 x i1>
  %2 = bitcast <16 x i1> %1 to i16
  ret i16 %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_maskz_loadu_ps(i16 noundef zeroext %__U, ptr noundef %__P) #2 {
entry:
  %__U.addr = alloca i16, align 2
  %__P.addr = alloca ptr, align 8
  store i16 %__U, ptr %__U.addr, align 2, !tbaa !15
  store ptr %__P, ptr %__P.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__P.addr, align 8, !tbaa !9
  %call = call <16 x float> @_mm512_setzero_ps()
  %1 = load i16, ptr %__U.addr, align 2, !tbaa !15
  %2 = bitcast i16 %1 to <16 x i1>
  %3 = call <16 x float> @llvm.masked.load.v16f32.p0(ptr %0, i32 1, <16 x i1> %2, <16 x float> %call)
  ret <16 x float> %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm512_mask_storeu_ps(ptr noundef %__P, i16 noundef zeroext %__U, <16 x float> noundef %__A) #2 {
entry:
  %__P.addr = alloca ptr, align 8
  %__U.addr = alloca i16, align 2
  %__A.addr = alloca <16 x float>, align 64
  store ptr %__P, ptr %__P.addr, align 8, !tbaa !9
  store i16 %__U, ptr %__U.addr, align 2, !tbaa !15
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !11
  %0 = load ptr, ptr %__P.addr, align 8, !tbaa !9
  %1 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !11
  %2 = load i16, ptr %__U.addr, align 2, !tbaa !15
  %3 = bitcast i16 %2 to <16 x i1>
  call void @llvm.masked.store.v16f32.p0(<16 x float> %1, ptr %0, i32 1, <16 x i1> %3)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float>, <16 x float>, i32 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float>, <16 x float>, i32 immarg) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_setzero_ps() #2 {
entry:
  %.compoundliteral = alloca <16 x float>, align 64
  store <16 x float> zeroinitializer, ptr %.compoundliteral, align 64, !tbaa !11
  %0 = load <16 x float>, ptr %.compoundliteral, align 64, !tbaa !11
  ret <16 x float> %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <16 x float> @llvm.masked.load.v16f32.p0(ptr nocapture, i32 immarg, <16 x i1>, <16 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v16f32.p0(<16 x float>, ptr nocapture, i32 immarg, <16 x i1>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

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
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !7, i64 0}
!17 = distinct !{!17, !14}
!18 = !{!19, !19, i64 0}
!19 = !{!"float", !7, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !7, i64 0}
