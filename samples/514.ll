; ModuleID = 'samples/514.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qc8-gemm/gen/1x2-minmax-fp32-scalar-fmagic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { float, float, float, i32 }
%union.anon = type { float }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qc8_gemm_minmax_fp32_ukernel_1x2__scalar_fmagic(i64 noundef %mr, i64 noundef %nc, i64 noundef %kc, ptr noalias noundef %a, i64 noundef %a_stride, ptr noalias noundef %w, ptr noalias noundef %c, i64 noundef %cm_stride, i64 noundef %cn_stride, ptr noalias noundef align 64 dereferenceable(192) %params) #0 {
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
  %vacc0x0 = alloca i32, align 4
  %vacc0x1 = alloca i32, align 4
  %k = alloca i64, align 8
  %va0 = alloca i32, align 4
  %vb0 = alloca i32, align 4
  %vb1 = alloca i32, align 4
  %vfpacc0x0 = alloca float, align 4
  %vfpacc0x1 = alloca float, align 4
  %vscale0 = alloca float, align 4
  %vscale1 = alloca float, align 4
  %voutput_min_less_zero_point = alloca float, align 4
  %voutput_max_less_zero_point = alloca float, align 4
  %vmagic_bias = alloca float, align 4
  %vmagic_bias_less_output_zero_point = alloca i32, align 4
  %vout0x0 = alloca i32, align 4
  %vout0x1 = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %a0) #4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !9
  store ptr %0, ptr %a0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c0) #4
  %1 = load ptr, ptr %c.addr, align 8, !tbaa !9
  store ptr %1, ptr %c0, align 8, !tbaa !9
  br label %do.body

do.body:                                          ; preds = %do.cond43, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0x0) #4
  %2 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 0
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !11
  store i32 %3, ptr %vacc0x0, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0x1) #4
  %4 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx1 = getelementptr inbounds i32, ptr %4, i64 1
  %5 = load i32, ptr %arrayidx1, align 4, !tbaa !11
  store i32 %5, ptr %vacc0x1, align 4, !tbaa !11
  %6 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i32, ptr %6, i64 2
  store ptr %add.ptr, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #4
  %7 = load i64, ptr %kc.addr, align 8, !tbaa !5
  store i64 %7, ptr %k, align 8, !tbaa !5
  br label %do.body2

do.body2:                                         ; preds = %do.cond, %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %va0) #4
  %8 = load ptr, ptr %a0, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %a0, align 8, !tbaa !9
  %9 = load i8, ptr %8, align 1, !tbaa !13
  %conv = sext i8 %9 to i32
  store i32 %conv, ptr %va0, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb0) #4
  %10 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx3 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx3, align 1, !tbaa !13
  %conv4 = sext i8 %11 to i32
  store i32 %conv4, ptr %vb0, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb1) #4
  %12 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx5 = getelementptr inbounds i8, ptr %12, i64 1
  %13 = load i8, ptr %arrayidx5, align 1, !tbaa !13
  %conv6 = sext i8 %13 to i32
  store i32 %conv6, ptr %vb1, align 4, !tbaa !11
  %14 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr7 = getelementptr inbounds i8, ptr %14, i64 2
  store ptr %add.ptr7, ptr %w.addr, align 8, !tbaa !9
  %15 = load i32, ptr %va0, align 4, !tbaa !11
  %16 = load i32, ptr %vb0, align 4, !tbaa !11
  %mul = mul nsw i32 %15, %16
  %17 = load i32, ptr %vacc0x0, align 4, !tbaa !11
  %add = add nsw i32 %17, %mul
  store i32 %add, ptr %vacc0x0, align 4, !tbaa !11
  %18 = load i32, ptr %va0, align 4, !tbaa !11
  %19 = load i32, ptr %vb1, align 4, !tbaa !11
  %mul8 = mul nsw i32 %18, %19
  %20 = load i32, ptr %vacc0x1, align 4, !tbaa !11
  %add9 = add nsw i32 %20, %mul8
  store i32 %add9, ptr %vacc0x1, align 4, !tbaa !11
  %21 = load i64, ptr %k, align 8, !tbaa !5
  %sub = sub i64 %21, 1
  store i64 %sub, ptr %k, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va0) #4
  br label %do.cond

do.cond:                                          ; preds = %do.body2
  %22 = load i64, ptr %k, align 8, !tbaa !5
  %cmp = icmp ne i64 %22, 0
  br i1 %cmp, label %do.body2, label %do.end, !llvm.loop !14

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc0x0) #4
  %23 = load i32, ptr %vacc0x0, align 4, !tbaa !11
  %conv11 = sitofp i32 %23 to float
  store float %conv11, ptr %vfpacc0x0, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc0x1) #4
  %24 = load i32, ptr %vacc0x1, align 4, !tbaa !11
  %conv12 = sitofp i32 %24 to float
  store float %conv12, ptr %vfpacc0x1, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %vscale0) #4
  %25 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx13 = getelementptr inbounds float, ptr %25, i64 0
  %26 = load float, ptr %arrayidx13, align 1, !tbaa !16
  store float %26, ptr %vscale0, align 4, !tbaa !16
  %27 = load float, ptr %vscale0, align 4, !tbaa !16
  %28 = load float, ptr %vfpacc0x0, align 4, !tbaa !16
  %mul14 = fmul float %28, %27
  store float %mul14, ptr %vfpacc0x0, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %vscale1) #4
  %29 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx15 = getelementptr inbounds float, ptr %29, i64 1
  %30 = load float, ptr %arrayidx15, align 1, !tbaa !16
  store float %30, ptr %vscale1, align 4, !tbaa !16
  %31 = load float, ptr %vscale1, align 4, !tbaa !16
  %32 = load float, ptr %vfpacc0x1, align 4, !tbaa !16
  %mul16 = fmul float %32, %31
  store float %mul16, ptr %vfpacc0x1, align 4, !tbaa !16
  %33 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr17 = getelementptr inbounds float, ptr %33, i64 2
  store ptr %add.ptr17, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %voutput_min_less_zero_point) #4
  %34 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min_less_zero_point = getelementptr inbounds %struct.anon.0, ptr %34, i32 0, i32 0
  %35 = load float, ptr %output_min_less_zero_point, align 64, !tbaa !13
  store float %35, ptr %voutput_min_less_zero_point, align 4, !tbaa !16
  %36 = load float, ptr %vfpacc0x0, align 4, !tbaa !16
  %37 = load float, ptr %voutput_min_less_zero_point, align 4, !tbaa !16
  %call = call float @math_max_f32(float noundef %36, float noundef %37)
  store float %call, ptr %vfpacc0x0, align 4, !tbaa !16
  %38 = load float, ptr %vfpacc0x1, align 4, !tbaa !16
  %39 = load float, ptr %voutput_min_less_zero_point, align 4, !tbaa !16
  %call18 = call float @math_max_f32(float noundef %38, float noundef %39)
  store float %call18, ptr %vfpacc0x1, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %voutput_max_less_zero_point) #4
  %40 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max_less_zero_point = getelementptr inbounds %struct.anon.0, ptr %40, i32 0, i32 1
  %41 = load float, ptr %output_max_less_zero_point, align 4, !tbaa !13
  store float %41, ptr %voutput_max_less_zero_point, align 4, !tbaa !16
  %42 = load float, ptr %vfpacc0x0, align 4, !tbaa !16
  %43 = load float, ptr %voutput_max_less_zero_point, align 4, !tbaa !16
  %call19 = call float @math_min_f32(float noundef %42, float noundef %43)
  store float %call19, ptr %vfpacc0x0, align 4, !tbaa !16
  %44 = load float, ptr %vfpacc0x1, align 4, !tbaa !16
  %45 = load float, ptr %voutput_max_less_zero_point, align 4, !tbaa !16
  %call20 = call float @math_min_f32(float noundef %44, float noundef %45)
  store float %call20, ptr %vfpacc0x1, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_bias) #4
  %46 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_bias = getelementptr inbounds %struct.anon.0, ptr %46, i32 0, i32 2
  %47 = load float, ptr %magic_bias, align 8, !tbaa !13
  store float %47, ptr %vmagic_bias, align 4, !tbaa !16
  %48 = load float, ptr %vmagic_bias, align 4, !tbaa !16
  %49 = load float, ptr %vfpacc0x0, align 4, !tbaa !16
  %add21 = fadd float %49, %48
  store float %add21, ptr %vfpacc0x0, align 4, !tbaa !16
  %50 = load float, ptr %vmagic_bias, align 4, !tbaa !16
  %51 = load float, ptr %vfpacc0x1, align 4, !tbaa !16
  %add22 = fadd float %51, %50
  store float %add22, ptr %vfpacc0x1, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_bias_less_output_zero_point) #4
  %52 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_bias_less_output_zero_point = getelementptr inbounds %struct.anon.0, ptr %52, i32 0, i32 3
  %53 = load i32, ptr %magic_bias_less_output_zero_point, align 4, !tbaa !13
  store i32 %53, ptr %vmagic_bias_less_output_zero_point, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout0x0) #4
  %54 = load float, ptr %vfpacc0x0, align 4, !tbaa !16
  %call23 = call i32 @fp32_to_bits(float noundef %54)
  %55 = load i32, ptr %vmagic_bias_less_output_zero_point, align 4, !tbaa !11
  %sub24 = sub nsw i32 %call23, %55
  store i32 %sub24, ptr %vout0x0, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout0x1) #4
  %56 = load float, ptr %vfpacc0x1, align 4, !tbaa !16
  %call25 = call i32 @fp32_to_bits(float noundef %56)
  %57 = load i32, ptr %vmagic_bias_less_output_zero_point, align 4, !tbaa !11
  %sub26 = sub nsw i32 %call25, %57
  store i32 %sub26, ptr %vout0x1, align 4, !tbaa !11
  %58 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp27 = icmp uge i64 %58, 2
  %lnot = xor i1 %cmp27, true
  %lnot29 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot29 to i32
  %conv30 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv30, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %59 = load i32, ptr %vout0x0, align 4, !tbaa !11
  %conv31 = trunc i32 %59 to i8
  %60 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx32 = getelementptr inbounds i8, ptr %60, i64 0
  store i8 %conv31, ptr %arrayidx32, align 1, !tbaa !13
  %61 = load i32, ptr %vout0x1, align 4, !tbaa !11
  %conv33 = trunc i32 %61 to i8
  %62 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx34 = getelementptr inbounds i8, ptr %62, i64 1
  store i8 %conv33, ptr %arrayidx34, align 1, !tbaa !13
  %63 = load ptr, ptr %a0, align 8, !tbaa !9
  %64 = ptrtoint ptr %63 to i64
  %65 = load i64, ptr %kc.addr, align 8, !tbaa !5
  %sub35 = sub i64 %64, %65
  %66 = inttoptr i64 %sub35 to ptr
  store ptr %66, ptr %a0, align 8, !tbaa !9
  %67 = load ptr, ptr %c0, align 8, !tbaa !9
  %68 = ptrtoint ptr %67 to i64
  %69 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add36 = add i64 %68, %69
  %70 = inttoptr i64 %add36 to ptr
  store ptr %70, ptr %c0, align 8, !tbaa !9
  %71 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %sub37 = sub i64 %71, 2
  store i64 %sub37, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end42

if.else:                                          ; preds = %do.end
  %72 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and = and i64 %72, 1
  %tobool38 = icmp ne i64 %and, 0
  br i1 %tobool38, label %if.then39, label %if.end

if.then39:                                        ; preds = %if.else
  %73 = load i32, ptr %vout0x0, align 4, !tbaa !11
  %conv40 = trunc i32 %73 to i8
  %74 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx41 = getelementptr inbounds i8, ptr %74, i64 0
  store i8 %conv40, ptr %arrayidx41, align 1, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then39, %if.else
  store i64 0, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end42

if.end42:                                         ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout0x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout0x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_bias_less_output_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_bias) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %voutput_max_less_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %voutput_min_less_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vscale1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vscale0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc0x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc0x0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0x0) #4
  br label %do.cond43

do.cond43:                                        ; preds = %if.end42
  %75 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp44 = icmp ne i64 %75, 0
  br i1 %cmp44, label %do.body, label %do.end46, !llvm.loop !18

do.end46:                                         ; preds = %do.cond43
  call void @llvm.lifetime.end.p0(i64 8, ptr %c0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a0) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal float @math_max_f32(float noundef %a, float noundef %b) #2 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, ptr %a.addr, align 4, !tbaa !16
  store float %b, ptr %b.addr, align 4, !tbaa !16
  %0 = load float, ptr %b.addr, align 4, !tbaa !16
  %1 = load float, ptr %a.addr, align 4, !tbaa !16
  %cmp = fcmp olt float %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !19

cond.true:                                        ; preds = %entry
  %2 = load float, ptr %a.addr, align 4, !tbaa !16
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load float, ptr %b.addr, align 4, !tbaa !16
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
  store float %a, ptr %a.addr, align 4, !tbaa !16
  store float %b, ptr %b.addr, align 4, !tbaa !16
  %0 = load float, ptr %b.addr, align 4, !tbaa !16
  %1 = load float, ptr %a.addr, align 4, !tbaa !16
  %cmp = fcmp olt float %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !19

cond.true:                                        ; preds = %entry
  %2 = load float, ptr %b.addr, align 4, !tbaa !16
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load float, ptr %a.addr, align 4, !tbaa !16
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
  store float %f, ptr %f.addr, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %fp32) #4
  %0 = load float, ptr %f.addr, align 4, !tbaa !16
  store float %0, ptr %fp32, align 4, !tbaa !13
  %1 = load i32, ptr %fp32, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 4, ptr %fp32) #4
  ret i32 %1
}

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
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!7, !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !17, i64 0}
!17 = !{!"float", !7, i64 0}
!18 = distinct !{!18, !15}
!19 = !{}
