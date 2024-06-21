; ModuleID = 'samples/661.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qs8-vmulc/gen/minmax-fp32-scalar-x4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, float, float, float, float, i32 }
%union.anon = type { float }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qs8_vmulc_minmax_fp32_ukernel__scalar_x4(i64 noundef %n, ptr noundef %input_a, ptr noundef %input_b, ptr noundef %output, ptr noalias noundef align 16 dereferenceable(96) %params) #0 {
entry:
  %n.addr = alloca i64, align 8
  %input_a.addr = alloca ptr, align 8
  %input_b.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %va_zero_point = alloca i32, align 4
  %vscale = alloca float, align 4
  %voutput_min_less_zero_point = alloca float, align 4
  %voutput_max_less_zero_point = alloca float, align 4
  %vmagic_bias = alloca float, align 4
  %vmagic_bias_less_output_zero_point = alloca i32, align 4
  %vb = alloca i32, align 4
  %va0 = alloca i32, align 4
  %va1 = alloca i32, align 4
  %va2 = alloca i32, align 4
  %va3 = alloca i32, align 4
  %vacc0 = alloca i32, align 4
  %vacc1 = alloca i32, align 4
  %vacc2 = alloca i32, align 4
  %vacc3 = alloca i32, align 4
  %vfpacc0 = alloca float, align 4
  %vfpacc1 = alloca float, align 4
  %vfpacc2 = alloca float, align 4
  %vfpacc3 = alloca float, align 4
  %vout0 = alloca i32, align 4
  %vout1 = alloca i32, align 4
  %vout2 = alloca i32, align 4
  %vout3 = alloca i32, align 4
  %va = alloca i32, align 4
  %vacc = alloca i32, align 4
  %vfpacc = alloca float, align 4
  %vout = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store ptr %input_a, ptr %input_a.addr, align 8, !tbaa !9
  store ptr %input_b, ptr %input_b.addr, align 8, !tbaa !9
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %va_zero_point) #4
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %a_zero_point = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %a_zero_point, align 16, !tbaa !11
  store i32 %1, ptr %va_zero_point, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vscale) #4
  %2 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 2
  %3 = load float, ptr %scale, align 8, !tbaa !11
  store float %3, ptr %vscale, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %voutput_min_less_zero_point) #4
  %4 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min_less_zero_point = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 3
  %5 = load float, ptr %output_min_less_zero_point, align 4, !tbaa !11
  store float %5, ptr %voutput_min_less_zero_point, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %voutput_max_less_zero_point) #4
  %6 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max_less_zero_point = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 4
  %7 = load float, ptr %output_max_less_zero_point, align 16, !tbaa !11
  store float %7, ptr %voutput_max_less_zero_point, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_bias) #4
  %8 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_bias = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 5
  %9 = load float, ptr %magic_bias, align 4, !tbaa !11
  store float %9, ptr %vmagic_bias, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_bias_less_output_zero_point) #4
  %10 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_bias_less_output_zero_point = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 6
  %11 = load i32, ptr %magic_bias_less_output_zero_point, align 8, !tbaa !11
  store i32 %11, ptr %vmagic_bias_less_output_zero_point, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb) #4
  %12 = load ptr, ptr %input_b.addr, align 8, !tbaa !9
  %13 = load i8, ptr %12, align 1, !tbaa !11
  %conv = sext i8 %13 to i32
  %14 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %b_zero_point = getelementptr inbounds %struct.anon, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %b_zero_point, align 4, !tbaa !11
  %sub = sub nsw i32 %conv, %15
  store i32 %sub, ptr %vb, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp uge i64 %16, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %va0) #4
  %17 = load ptr, ptr %input_a.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds i8, ptr %17, i64 0
  %18 = load i8, ptr %arrayidx, align 1, !tbaa !11
  %conv2 = sext i8 %18 to i32
  %19 = load i32, ptr %va_zero_point, align 4, !tbaa !12
  %sub3 = sub nsw i32 %conv2, %19
  store i32 %sub3, ptr %va0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %va1) #4
  %20 = load ptr, ptr %input_a.addr, align 8, !tbaa !9
  %arrayidx4 = getelementptr inbounds i8, ptr %20, i64 1
  %21 = load i8, ptr %arrayidx4, align 1, !tbaa !11
  %conv5 = sext i8 %21 to i32
  %22 = load i32, ptr %va_zero_point, align 4, !tbaa !12
  %sub6 = sub nsw i32 %conv5, %22
  store i32 %sub6, ptr %va1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %va2) #4
  %23 = load ptr, ptr %input_a.addr, align 8, !tbaa !9
  %arrayidx7 = getelementptr inbounds i8, ptr %23, i64 2
  %24 = load i8, ptr %arrayidx7, align 1, !tbaa !11
  %conv8 = sext i8 %24 to i32
  %25 = load i32, ptr %va_zero_point, align 4, !tbaa !12
  %sub9 = sub nsw i32 %conv8, %25
  store i32 %sub9, ptr %va2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %va3) #4
  %26 = load ptr, ptr %input_a.addr, align 8, !tbaa !9
  %arrayidx10 = getelementptr inbounds i8, ptr %26, i64 3
  %27 = load i8, ptr %arrayidx10, align 1, !tbaa !11
  %conv11 = sext i8 %27 to i32
  %28 = load i32, ptr %va_zero_point, align 4, !tbaa !12
  %sub12 = sub nsw i32 %conv11, %28
  store i32 %sub12, ptr %va3, align 4, !tbaa !12
  %29 = load ptr, ptr %input_a.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i8, ptr %29, i64 4
  store ptr %add.ptr, ptr %input_a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0) #4
  %30 = load i32, ptr %va0, align 4, !tbaa !12
  %31 = load i32, ptr %vb, align 4, !tbaa !12
  %mul = mul nsw i32 %30, %31
  store i32 %mul, ptr %vacc0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc1) #4
  %32 = load i32, ptr %va1, align 4, !tbaa !12
  %33 = load i32, ptr %vb, align 4, !tbaa !12
  %mul13 = mul nsw i32 %32, %33
  store i32 %mul13, ptr %vacc1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc2) #4
  %34 = load i32, ptr %va2, align 4, !tbaa !12
  %35 = load i32, ptr %vb, align 4, !tbaa !12
  %mul14 = mul nsw i32 %34, %35
  store i32 %mul14, ptr %vacc2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc3) #4
  %36 = load i32, ptr %va3, align 4, !tbaa !12
  %37 = load i32, ptr %vb, align 4, !tbaa !12
  %mul15 = mul nsw i32 %36, %37
  store i32 %mul15, ptr %vacc3, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc0) #4
  %38 = load i32, ptr %vacc0, align 4, !tbaa !12
  %conv16 = sitofp i32 %38 to float
  %39 = load float, ptr %vscale, align 4, !tbaa !14
  %mul17 = fmul float %conv16, %39
  store float %mul17, ptr %vfpacc0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc1) #4
  %40 = load i32, ptr %vacc1, align 4, !tbaa !12
  %conv18 = sitofp i32 %40 to float
  %41 = load float, ptr %vscale, align 4, !tbaa !14
  %mul19 = fmul float %conv18, %41
  store float %mul19, ptr %vfpacc1, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc2) #4
  %42 = load i32, ptr %vacc2, align 4, !tbaa !12
  %conv20 = sitofp i32 %42 to float
  %43 = load float, ptr %vscale, align 4, !tbaa !14
  %mul21 = fmul float %conv20, %43
  store float %mul21, ptr %vfpacc2, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc3) #4
  %44 = load i32, ptr %vacc3, align 4, !tbaa !12
  %conv22 = sitofp i32 %44 to float
  %45 = load float, ptr %vscale, align 4, !tbaa !14
  %mul23 = fmul float %conv22, %45
  store float %mul23, ptr %vfpacc3, align 4, !tbaa !14
  %46 = load float, ptr %vfpacc0, align 4, !tbaa !14
  %47 = load float, ptr %voutput_min_less_zero_point, align 4, !tbaa !14
  %call = call float @math_max_f32(float noundef %46, float noundef %47)
  store float %call, ptr %vfpacc0, align 4, !tbaa !14
  %48 = load float, ptr %vfpacc1, align 4, !tbaa !14
  %49 = load float, ptr %voutput_min_less_zero_point, align 4, !tbaa !14
  %call24 = call float @math_max_f32(float noundef %48, float noundef %49)
  store float %call24, ptr %vfpacc1, align 4, !tbaa !14
  %50 = load float, ptr %vfpacc2, align 4, !tbaa !14
  %51 = load float, ptr %voutput_min_less_zero_point, align 4, !tbaa !14
  %call25 = call float @math_max_f32(float noundef %50, float noundef %51)
  store float %call25, ptr %vfpacc2, align 4, !tbaa !14
  %52 = load float, ptr %vfpacc3, align 4, !tbaa !14
  %53 = load float, ptr %voutput_min_less_zero_point, align 4, !tbaa !14
  %call26 = call float @math_max_f32(float noundef %52, float noundef %53)
  store float %call26, ptr %vfpacc3, align 4, !tbaa !14
  %54 = load float, ptr %vfpacc0, align 4, !tbaa !14
  %55 = load float, ptr %voutput_max_less_zero_point, align 4, !tbaa !14
  %call27 = call float @math_min_f32(float noundef %54, float noundef %55)
  store float %call27, ptr %vfpacc0, align 4, !tbaa !14
  %56 = load float, ptr %vfpacc1, align 4, !tbaa !14
  %57 = load float, ptr %voutput_max_less_zero_point, align 4, !tbaa !14
  %call28 = call float @math_min_f32(float noundef %56, float noundef %57)
  store float %call28, ptr %vfpacc1, align 4, !tbaa !14
  %58 = load float, ptr %vfpacc2, align 4, !tbaa !14
  %59 = load float, ptr %voutput_max_less_zero_point, align 4, !tbaa !14
  %call29 = call float @math_min_f32(float noundef %58, float noundef %59)
  store float %call29, ptr %vfpacc2, align 4, !tbaa !14
  %60 = load float, ptr %vfpacc3, align 4, !tbaa !14
  %61 = load float, ptr %voutput_max_less_zero_point, align 4, !tbaa !14
  %call30 = call float @math_min_f32(float noundef %60, float noundef %61)
  store float %call30, ptr %vfpacc3, align 4, !tbaa !14
  %62 = load float, ptr %vmagic_bias, align 4, !tbaa !14
  %63 = load float, ptr %vfpacc0, align 4, !tbaa !14
  %add = fadd float %63, %62
  store float %add, ptr %vfpacc0, align 4, !tbaa !14
  %64 = load float, ptr %vmagic_bias, align 4, !tbaa !14
  %65 = load float, ptr %vfpacc1, align 4, !tbaa !14
  %add31 = fadd float %65, %64
  store float %add31, ptr %vfpacc1, align 4, !tbaa !14
  %66 = load float, ptr %vmagic_bias, align 4, !tbaa !14
  %67 = load float, ptr %vfpacc2, align 4, !tbaa !14
  %add32 = fadd float %67, %66
  store float %add32, ptr %vfpacc2, align 4, !tbaa !14
  %68 = load float, ptr %vmagic_bias, align 4, !tbaa !14
  %69 = load float, ptr %vfpacc3, align 4, !tbaa !14
  %add33 = fadd float %69, %68
  store float %add33, ptr %vfpacc3, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout0) #4
  %70 = load float, ptr %vfpacc0, align 4, !tbaa !14
  %call34 = call i32 @fp32_to_bits(float noundef %70)
  %71 = load i32, ptr %vmagic_bias_less_output_zero_point, align 4, !tbaa !12
  %sub35 = sub nsw i32 %call34, %71
  store i32 %sub35, ptr %vout0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout1) #4
  %72 = load float, ptr %vfpacc1, align 4, !tbaa !14
  %call36 = call i32 @fp32_to_bits(float noundef %72)
  %73 = load i32, ptr %vmagic_bias_less_output_zero_point, align 4, !tbaa !12
  %sub37 = sub nsw i32 %call36, %73
  store i32 %sub37, ptr %vout1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout2) #4
  %74 = load float, ptr %vfpacc2, align 4, !tbaa !14
  %call38 = call i32 @fp32_to_bits(float noundef %74)
  %75 = load i32, ptr %vmagic_bias_less_output_zero_point, align 4, !tbaa !12
  %sub39 = sub nsw i32 %call38, %75
  store i32 %sub39, ptr %vout2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout3) #4
  %76 = load float, ptr %vfpacc3, align 4, !tbaa !14
  %call40 = call i32 @fp32_to_bits(float noundef %76)
  %77 = load i32, ptr %vmagic_bias_less_output_zero_point, align 4, !tbaa !12
  %sub41 = sub nsw i32 %call40, %77
  store i32 %sub41, ptr %vout3, align 4, !tbaa !12
  %78 = load i32, ptr %vout0, align 4, !tbaa !12
  %conv42 = trunc i32 %78 to i8
  %79 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %arrayidx43 = getelementptr inbounds i8, ptr %79, i64 0
  store i8 %conv42, ptr %arrayidx43, align 1, !tbaa !11
  %80 = load i32, ptr %vout1, align 4, !tbaa !12
  %conv44 = trunc i32 %80 to i8
  %81 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %arrayidx45 = getelementptr inbounds i8, ptr %81, i64 1
  store i8 %conv44, ptr %arrayidx45, align 1, !tbaa !11
  %82 = load i32, ptr %vout2, align 4, !tbaa !12
  %conv46 = trunc i32 %82 to i8
  %83 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %arrayidx47 = getelementptr inbounds i8, ptr %83, i64 2
  store i8 %conv46, ptr %arrayidx47, align 1, !tbaa !11
  %84 = load i32, ptr %vout3, align 4, !tbaa !12
  %conv48 = trunc i32 %84 to i8
  %85 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %arrayidx49 = getelementptr inbounds i8, ptr %85, i64 3
  store i8 %conv48, ptr %arrayidx49, align 1, !tbaa !11
  %86 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr50 = getelementptr inbounds i8, ptr %86, i64 4
  store ptr %add.ptr50, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va0) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %87 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub51 = sub i64 %87, 4
  store i64 %sub51, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %88 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp52 = icmp ne i64 %88, 0
  %lnot = xor i1 %cmp52, true
  %lnot54 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot54 to i32
  %conv55 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv55, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %va) #4
  %89 = load ptr, ptr %input_a.addr, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i8, ptr %89, i32 1
  store ptr %incdec.ptr, ptr %input_a.addr, align 8, !tbaa !9
  %90 = load i8, ptr %89, align 1, !tbaa !11
  %conv56 = sext i8 %90 to i32
  %91 = load i32, ptr %va_zero_point, align 4, !tbaa !12
  %sub57 = sub nsw i32 %conv56, %91
  store i32 %sub57, ptr %va, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc) #4
  %92 = load i32, ptr %va, align 4, !tbaa !12
  %93 = load i32, ptr %vb, align 4, !tbaa !12
  %mul58 = mul nsw i32 %92, %93
  store i32 %mul58, ptr %vacc, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc) #4
  %94 = load i32, ptr %vacc, align 4, !tbaa !12
  %conv59 = sitofp i32 %94 to float
  %95 = load float, ptr %vscale, align 4, !tbaa !14
  %mul60 = fmul float %conv59, %95
  store float %mul60, ptr %vfpacc, align 4, !tbaa !14
  %96 = load float, ptr %vfpacc, align 4, !tbaa !14
  %97 = load float, ptr %voutput_min_less_zero_point, align 4, !tbaa !14
  %call61 = call float @math_max_f32(float noundef %96, float noundef %97)
  store float %call61, ptr %vfpacc, align 4, !tbaa !14
  %98 = load float, ptr %vfpacc, align 4, !tbaa !14
  %99 = load float, ptr %voutput_max_less_zero_point, align 4, !tbaa !14
  %call62 = call float @math_min_f32(float noundef %98, float noundef %99)
  store float %call62, ptr %vfpacc, align 4, !tbaa !14
  %100 = load float, ptr %vmagic_bias, align 4, !tbaa !14
  %101 = load float, ptr %vfpacc, align 4, !tbaa !14
  %add63 = fadd float %101, %100
  store float %add63, ptr %vfpacc, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout) #4
  %102 = load float, ptr %vfpacc, align 4, !tbaa !14
  %call64 = call i32 @fp32_to_bits(float noundef %102)
  %103 = load i32, ptr %vmagic_bias_less_output_zero_point, align 4, !tbaa !12
  %sub65 = sub nsw i32 %call64, %103
  store i32 %sub65, ptr %vout, align 4, !tbaa !12
  %104 = load i32, ptr %vout, align 4, !tbaa !12
  %conv66 = trunc i32 %104 to i8
  %105 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %incdec.ptr67 = getelementptr inbounds i8, ptr %105, i32 1
  store ptr %incdec.ptr67, ptr %output.addr, align 8, !tbaa !9
  store i8 %conv66, ptr %105, align 1, !tbaa !11
  %106 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub68 = sub i64 %106, 1
  store i64 %sub68, ptr %n.addr, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va) #4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %107 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp69 = icmp ne i64 %107, 0
  br i1 %cmp69, label %do.body, label %do.end, !llvm.loop !18

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_bias_less_output_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_bias) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %voutput_max_less_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %voutput_min_less_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vscale) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va_zero_point) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal float @math_max_f32(float noundef %a, float noundef %b) #2 {
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
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !19

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
define internal float @math_min_f32(float noundef %a, float noundef %b) #2 {
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
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !19

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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fp32_to_bits(float noundef %f) #2 {
entry:
  %f.addr = alloca float, align 4
  %fp32 = alloca %union.anon, align 4
  store float %f, ptr %f.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %fp32) #4
  %0 = load float, ptr %f.addr, align 4, !tbaa !14
  store float %0, ptr %fp32, align 4, !tbaa !11
  %1 = load i32, ptr %fp32, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 4, ptr %fp32) #4
  ret i32 %1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
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
!11 = !{!7, !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !7, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = !{}
