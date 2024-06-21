; ModuleID = 'samples/974.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-dwconv2d-chw/gen/3x3p1-minmax-scalar-1x1-acc3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { [4 x i32], [4 x i32], [4 x i32], float, float, [8 x i8] }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_dwconv2d_chw_ukernel_3x3p1__scalar_1x1_acc3(i64 noundef %input_height, i64 noundef %input_width, ptr noundef %input, ptr noundef %weights, ptr noundef %zero, ptr noundef %output, i32 noundef %padding_top, ptr noalias noundef align 16 dereferenceable(80) %params) #0 {
entry:
  %input_height.addr = alloca i64, align 8
  %input_width.addr = alloca i64, align 8
  %input.addr = alloca ptr, align 8
  %weights.addr = alloca ptr, align 8
  %zero.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %padding_top.addr = alloca i32, align 4
  %params.addr = alloca ptr, align 8
  %vmin = alloca float, align 4
  %vmax = alloca float, align 4
  %vbias = alloca float, align 4
  %vk00 = alloca float, align 4
  %vk01 = alloca float, align 4
  %vk02 = alloca float, align 4
  %vk10 = alloca float, align 4
  %vk11 = alloca float, align 4
  %vk12 = alloca float, align 4
  %vk20 = alloca float, align 4
  %vk21 = alloca float, align 4
  %vk22 = alloca float, align 4
  %i0 = alloca ptr, align 8
  %i1 = alloca ptr, align 8
  %i2 = alloca ptr, align 8
  %o0 = alloca ptr, align 8
  %output_height = alloca i64, align 8
  %vi0x0 = alloca float, align 4
  %vi1x0 = alloca float, align 4
  %vi2x0 = alloca float, align 4
  %vi0x1 = alloca float, align 4
  %vi1x1 = alloca float, align 4
  %vi2x1 = alloca float, align 4
  %w = alloca i64, align 8
  %vi0x2 = alloca float, align 4
  %vi1x2 = alloca float, align 4
  %vi2x2 = alloca float, align 4
  %vo0p0 = alloca float, align 4
  %vo0p1 = alloca float, align 4
  %vo0p2 = alloca float, align 4
  %vo0 = alloca float, align 4
  %vo0p029 = alloca float, align 4
  %vo0p131 = alloca float, align 4
  %vo0p233 = alloca float, align 4
  %vo040 = alloca float, align 4
  store i64 %input_height, ptr %input_height.addr, align 8, !tbaa !5
  store i64 %input_width, ptr %input_width.addr, align 8, !tbaa !5
  store ptr %input, ptr %input.addr, align 8, !tbaa !9
  store ptr %weights, ptr %weights.addr, align 8, !tbaa !9
  store ptr %zero, ptr %zero.addr, align 8, !tbaa !9
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  store i32 %padding_top, ptr %padding_top.addr, align 4, !tbaa !11
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmin) #4
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %min = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 3
  %1 = load float, ptr %min, align 16, !tbaa !13
  store float %1, ptr %vmin, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmax) #4
  %2 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %max = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 4
  %3 = load float, ptr %max, align 4, !tbaa !13
  store float %3, ptr %vmax, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vbias) #4
  %4 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds float, ptr %4, i64 0
  %5 = load float, ptr %arrayidx, align 4, !tbaa !14
  store float %5, ptr %vbias, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk00) #4
  %6 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %arrayidx1 = getelementptr inbounds float, ptr %6, i64 1
  %7 = load float, ptr %arrayidx1, align 4, !tbaa !14
  store float %7, ptr %vk00, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk01) #4
  %8 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %arrayidx2 = getelementptr inbounds float, ptr %8, i64 2
  %9 = load float, ptr %arrayidx2, align 4, !tbaa !14
  store float %9, ptr %vk01, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk02) #4
  %10 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %arrayidx3 = getelementptr inbounds float, ptr %10, i64 3
  %11 = load float, ptr %arrayidx3, align 4, !tbaa !14
  store float %11, ptr %vk02, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk10) #4
  %12 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %arrayidx4 = getelementptr inbounds float, ptr %12, i64 4
  %13 = load float, ptr %arrayidx4, align 4, !tbaa !14
  store float %13, ptr %vk10, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk11) #4
  %14 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %arrayidx5 = getelementptr inbounds float, ptr %14, i64 5
  %15 = load float, ptr %arrayidx5, align 4, !tbaa !14
  store float %15, ptr %vk11, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk12) #4
  %16 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %arrayidx6 = getelementptr inbounds float, ptr %16, i64 6
  %17 = load float, ptr %arrayidx6, align 4, !tbaa !14
  store float %17, ptr %vk12, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk20) #4
  %18 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %arrayidx7 = getelementptr inbounds float, ptr %18, i64 7
  %19 = load float, ptr %arrayidx7, align 4, !tbaa !14
  store float %19, ptr %vk20, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk21) #4
  %20 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %arrayidx8 = getelementptr inbounds float, ptr %20, i64 8
  %21 = load float, ptr %arrayidx8, align 4, !tbaa !14
  store float %21, ptr %vk21, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vk22) #4
  %22 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  %arrayidx9 = getelementptr inbounds float, ptr %22, i64 9
  %23 = load float, ptr %arrayidx9, align 4, !tbaa !14
  store float %23, ptr %vk22, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %i0) #4
  %24 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  store ptr %24, ptr %i0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i1) #4
  %25 = load ptr, ptr %input.addr, align 8, !tbaa !9
  store ptr %25, ptr %i1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i2) #4
  %26 = load ptr, ptr %i1, align 8, !tbaa !9
  %27 = ptrtoint ptr %26 to i64
  %28 = load i64, ptr %input_width.addr, align 8, !tbaa !5
  %add = add i64 %27, %28
  %29 = inttoptr i64 %add to ptr
  store ptr %29, ptr %i2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %o0) #4
  %30 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store ptr %30, ptr %o0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_height) #4
  %31 = load i64, ptr %input_height.addr, align 8, !tbaa !5
  store i64 %31, ptr %output_height, align 8, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %32 = load i64, ptr %output_height, align 8, !tbaa !5
  %cmp = icmp ult i64 %32, 2
  %lnot = xor i1 %cmp, true
  %lnot10 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot10 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !16

if.then:                                          ; preds = %do.body
  %33 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  store ptr %33, ptr %i2, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0x0) #4
  store float 0.000000e+00, ptr %vi0x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1x0) #4
  store float 0.000000e+00, ptr %vi1x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2x0) #4
  store float 0.000000e+00, ptr %vi2x0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0x1) #4
  %34 = load ptr, ptr %i0, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds float, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %i0, align 8, !tbaa !9
  %35 = load float, ptr %34, align 4, !tbaa !14
  store float %35, ptr %vi0x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1x1) #4
  %36 = load ptr, ptr %i1, align 8, !tbaa !9
  %incdec.ptr11 = getelementptr inbounds float, ptr %36, i32 1
  store ptr %incdec.ptr11, ptr %i1, align 8, !tbaa !9
  %37 = load float, ptr %36, align 4, !tbaa !14
  store float %37, ptr %vi1x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2x1) #4
  %38 = load ptr, ptr %i2, align 8, !tbaa !9
  %incdec.ptr12 = getelementptr inbounds float, ptr %38, i32 1
  store ptr %incdec.ptr12, ptr %i2, align 8, !tbaa !9
  %39 = load float, ptr %38, align 4, !tbaa !14
  store float %39, ptr %vi2x1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #4
  %40 = load i64, ptr %input_width.addr, align 8, !tbaa !5
  store i64 %40, ptr %w, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %41 = load i64, ptr %w, align 8, !tbaa !5
  %cmp13 = icmp ugt i64 %41, 4
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi0x2) #4
  %42 = load ptr, ptr %i0, align 8, !tbaa !9
  %incdec.ptr15 = getelementptr inbounds float, ptr %42, i32 1
  store ptr %incdec.ptr15, ptr %i0, align 8, !tbaa !9
  %43 = load float, ptr %42, align 4, !tbaa !14
  store float %43, ptr %vi0x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi1x2) #4
  %44 = load ptr, ptr %i1, align 8, !tbaa !9
  %incdec.ptr16 = getelementptr inbounds float, ptr %44, i32 1
  store ptr %incdec.ptr16, ptr %i1, align 8, !tbaa !9
  %45 = load float, ptr %44, align 4, !tbaa !14
  store float %45, ptr %vi1x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi2x2) #4
  %46 = load ptr, ptr %i2, align 8, !tbaa !9
  %incdec.ptr17 = getelementptr inbounds float, ptr %46, i32 1
  store ptr %incdec.ptr17, ptr %i2, align 8, !tbaa !9
  %47 = load float, ptr %46, align 4, !tbaa !14
  store float %47, ptr %vi2x2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vo0p0) #4
  %48 = load float, ptr %vbias, align 4, !tbaa !14
  %49 = load float, ptr %vi0x0, align 4, !tbaa !14
  %50 = load float, ptr %vk00, align 4, !tbaa !14
  %51 = call float @llvm.fmuladd.f32(float %49, float %50, float %48)
  store float %51, ptr %vo0p0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vo0p1) #4
  %52 = load float, ptr %vi1x0, align 4, !tbaa !14
  %53 = load float, ptr %vk10, align 4, !tbaa !14
  %mul = fmul float %52, %53
  store float %mul, ptr %vo0p1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vo0p2) #4
  %54 = load float, ptr %vi2x0, align 4, !tbaa !14
  %55 = load float, ptr %vk20, align 4, !tbaa !14
  %mul18 = fmul float %54, %55
  store float %mul18, ptr %vo0p2, align 4, !tbaa !14
  %56 = load float, ptr %vi0x1, align 4, !tbaa !14
  store float %56, ptr %vi0x0, align 4, !tbaa !14
  %57 = load float, ptr %vi1x1, align 4, !tbaa !14
  store float %57, ptr %vi1x0, align 4, !tbaa !14
  %58 = load float, ptr %vi2x1, align 4, !tbaa !14
  store float %58, ptr %vi2x0, align 4, !tbaa !14
  %59 = load float, ptr %vi0x1, align 4, !tbaa !14
  %60 = load float, ptr %vk01, align 4, !tbaa !14
  %61 = load float, ptr %vo0p0, align 4, !tbaa !14
  %62 = call float @llvm.fmuladd.f32(float %59, float %60, float %61)
  store float %62, ptr %vo0p0, align 4, !tbaa !14
  %63 = load float, ptr %vi1x1, align 4, !tbaa !14
  %64 = load float, ptr %vk11, align 4, !tbaa !14
  %65 = load float, ptr %vo0p1, align 4, !tbaa !14
  %66 = call float @llvm.fmuladd.f32(float %63, float %64, float %65)
  store float %66, ptr %vo0p1, align 4, !tbaa !14
  %67 = load float, ptr %vi2x1, align 4, !tbaa !14
  %68 = load float, ptr %vk21, align 4, !tbaa !14
  %69 = load float, ptr %vo0p2, align 4, !tbaa !14
  %70 = call float @llvm.fmuladd.f32(float %67, float %68, float %69)
  store float %70, ptr %vo0p2, align 4, !tbaa !14
  %71 = load float, ptr %vi0x2, align 4, !tbaa !14
  store float %71, ptr %vi0x1, align 4, !tbaa !14
  %72 = load float, ptr %vi1x2, align 4, !tbaa !14
  store float %72, ptr %vi1x1, align 4, !tbaa !14
  %73 = load float, ptr %vi2x2, align 4, !tbaa !14
  store float %73, ptr %vi2x1, align 4, !tbaa !14
  %74 = load float, ptr %vi0x2, align 4, !tbaa !14
  %75 = load float, ptr %vk02, align 4, !tbaa !14
  %76 = load float, ptr %vo0p0, align 4, !tbaa !14
  %77 = call float @llvm.fmuladd.f32(float %74, float %75, float %76)
  store float %77, ptr %vo0p0, align 4, !tbaa !14
  %78 = load float, ptr %vi1x2, align 4, !tbaa !14
  %79 = load float, ptr %vk12, align 4, !tbaa !14
  %80 = load float, ptr %vo0p1, align 4, !tbaa !14
  %81 = call float @llvm.fmuladd.f32(float %78, float %79, float %80)
  store float %81, ptr %vo0p1, align 4, !tbaa !14
  %82 = load float, ptr %vi2x2, align 4, !tbaa !14
  %83 = load float, ptr %vk22, align 4, !tbaa !14
  %84 = load float, ptr %vo0p2, align 4, !tbaa !14
  %85 = call float @llvm.fmuladd.f32(float %82, float %83, float %84)
  store float %85, ptr %vo0p2, align 4, !tbaa !14
  %86 = load float, ptr %vo0p1, align 4, !tbaa !14
  %87 = load float, ptr %vo0p0, align 4, !tbaa !14
  %add25 = fadd float %87, %86
  store float %add25, ptr %vo0p0, align 4, !tbaa !14
  %88 = load float, ptr %vo0p2, align 4, !tbaa !14
  %89 = load float, ptr %vo0p0, align 4, !tbaa !14
  %add26 = fadd float %89, %88
  store float %add26, ptr %vo0p0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vo0) #4
  %90 = load float, ptr %vo0p0, align 4, !tbaa !14
  %91 = load float, ptr %vmin, align 4, !tbaa !14
  %call = call float @math_max_f32(float noundef %90, float noundef %91)
  store float %call, ptr %vo0, align 4, !tbaa !14
  %92 = load float, ptr %vo0, align 4, !tbaa !14
  %93 = load float, ptr %vmax, align 4, !tbaa !14
  %call27 = call float @math_min_f32(float noundef %92, float noundef %93)
  store float %call27, ptr %vo0, align 4, !tbaa !14
  %94 = load float, ptr %vo0, align 4, !tbaa !14
  %95 = load ptr, ptr %o0, align 8, !tbaa !9
  %incdec.ptr28 = getelementptr inbounds float, ptr %95, i32 1
  store ptr %incdec.ptr28, ptr %o0, align 8, !tbaa !9
  store float %94, ptr %95, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 4, ptr %vo0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vo0p2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vo0p1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vo0p0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi2x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1x2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0x2) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %96 = load i64, ptr %w, align 8, !tbaa !5
  %sub = sub i64 %96, 4
  store i64 %sub, ptr %w, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %vo0p029) #4
  %97 = load float, ptr %vbias, align 4, !tbaa !14
  %98 = load float, ptr %vi0x0, align 4, !tbaa !14
  %99 = load float, ptr %vk00, align 4, !tbaa !14
  %100 = call float @llvm.fmuladd.f32(float %98, float %99, float %97)
  store float %100, ptr %vo0p029, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vo0p131) #4
  %101 = load float, ptr %vi1x0, align 4, !tbaa !14
  %102 = load float, ptr %vk10, align 4, !tbaa !14
  %mul32 = fmul float %101, %102
  store float %mul32, ptr %vo0p131, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vo0p233) #4
  %103 = load float, ptr %vi2x0, align 4, !tbaa !14
  %104 = load float, ptr %vk20, align 4, !tbaa !14
  %mul34 = fmul float %103, %104
  store float %mul34, ptr %vo0p233, align 4, !tbaa !14
  %105 = load float, ptr %vi0x1, align 4, !tbaa !14
  %106 = load float, ptr %vk01, align 4, !tbaa !14
  %107 = load float, ptr %vo0p029, align 4, !tbaa !14
  %108 = call float @llvm.fmuladd.f32(float %105, float %106, float %107)
  store float %108, ptr %vo0p029, align 4, !tbaa !14
  %109 = load float, ptr %vi1x1, align 4, !tbaa !14
  %110 = load float, ptr %vk11, align 4, !tbaa !14
  %111 = load float, ptr %vo0p131, align 4, !tbaa !14
  %112 = call float @llvm.fmuladd.f32(float %109, float %110, float %111)
  store float %112, ptr %vo0p131, align 4, !tbaa !14
  %113 = load float, ptr %vi2x1, align 4, !tbaa !14
  %114 = load float, ptr %vk21, align 4, !tbaa !14
  %115 = load float, ptr %vo0p233, align 4, !tbaa !14
  %116 = call float @llvm.fmuladd.f32(float %113, float %114, float %115)
  store float %116, ptr %vo0p233, align 4, !tbaa !14
  %117 = load float, ptr %vo0p131, align 4, !tbaa !14
  %118 = load float, ptr %vo0p029, align 4, !tbaa !14
  %add38 = fadd float %118, %117
  store float %add38, ptr %vo0p029, align 4, !tbaa !14
  %119 = load float, ptr %vo0p233, align 4, !tbaa !14
  %120 = load float, ptr %vo0p029, align 4, !tbaa !14
  %add39 = fadd float %120, %119
  store float %add39, ptr %vo0p029, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vo040) #4
  %121 = load float, ptr %vo0p029, align 4, !tbaa !14
  %122 = load float, ptr %vmin, align 4, !tbaa !14
  %call41 = call float @math_max_f32(float noundef %121, float noundef %122)
  store float %call41, ptr %vo040, align 4, !tbaa !14
  %123 = load float, ptr %vo040, align 4, !tbaa !14
  %124 = load float, ptr %vmax, align 4, !tbaa !14
  %call42 = call float @math_min_f32(float noundef %123, float noundef %124)
  store float %call42, ptr %vo040, align 4, !tbaa !14
  %125 = load float, ptr %vo040, align 4, !tbaa !14
  %126 = load ptr, ptr %o0, align 8, !tbaa !9
  %incdec.ptr43 = getelementptr inbounds float, ptr %126, i32 1
  store ptr %incdec.ptr43, ptr %o0, align 8, !tbaa !9
  store float %125, ptr %126, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 4, ptr %vo040) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vo0p233) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vo0p131) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vo0p029) #4
  %127 = load ptr, ptr %i1, align 8, !tbaa !9
  %128 = ptrtoint ptr %127 to i64
  %129 = load i64, ptr %input_width.addr, align 8, !tbaa !5
  %sub44 = sub i64 %128, %129
  %130 = inttoptr i64 %sub44 to ptr
  store ptr %130, ptr %i0, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi2x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi2x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi1x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi0x0) #4
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %131 = load i64, ptr %output_height, align 8, !tbaa !5
  %dec = add i64 %131, -1
  store i64 %dec, ptr %output_height, align 8, !tbaa !5
  %cmp45 = icmp ne i64 %dec, 0
  br i1 %cmp45, label %do.body, label %do.end, !llvm.loop !19

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_height) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %o0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk22) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk21) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk20) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk12) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk11) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk10) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk02) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk01) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vk00) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vbias) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmax) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmin) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: inlinehint nounwind uwtable
define internal float @math_max_f32(float noundef %a, float noundef %b) #3 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, ptr %a.addr, align 4, !tbaa !14
  store float %b, ptr %b.addr, align 4, !tbaa !14
  %0 = load float, ptr %b.addr, align 4, !tbaa !14
  %1 = load float, ptr %a.addr, align 4, !tbaa !14
  %cmp = fcmp olt float %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !16

cond.true:                                        ; preds = %entry
  %2 = load float, ptr %a.addr, align 4, !tbaa !14
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load float, ptr %b.addr, align 4, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %2, %cond.true ], [ %3, %cond.false ]
  ret float %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @math_min_f32(float noundef %a, float noundef %b) #3 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, ptr %a.addr, align 4, !tbaa !14
  store float %b, ptr %b.addr, align 4, !tbaa !14
  %0 = load float, ptr %b.addr, align 4, !tbaa !14
  %1 = load float, ptr %a.addr, align 4, !tbaa !14
  %cmp = fcmp olt float %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !16

cond.true:                                        ; preds = %entry
  %2 = load float, ptr %b.addr, align 4, !tbaa !14
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load float, ptr %a.addr, align 4, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %2, %cond.true ], [ %3, %cond.false ]
  ret float %cond
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !7, i64 0}
!16 = !{}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
