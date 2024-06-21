; ModuleID = 'samples/829.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qu8-igemm/gen/1x2-minmax-fp32-scalar-fmagic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, float, float, float, float, i32 }
%union.anon = type { float }

; Function Attrs: nounwind uwtable
define dso_local void @xnn_qu8_igemm_minmax_fp32_ukernel_1x2__scalar_fmagic(i64 noundef %mr, i64 noundef %nc, i64 noundef %kc, i64 noundef %ks, ptr noalias noundef %a, ptr noalias noundef %w, ptr noalias noundef %c, i64 noundef %cm_stride, i64 noundef %cn_stride, i64 noundef %a_offset, ptr noundef %zero, ptr noalias noundef align 64 dereferenceable(320) %params) #0 {
entry:
  %mr.addr = alloca i64, align 8
  %nc.addr = alloca i64, align 8
  %kc.addr = alloca i64, align 8
  %ks.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %w.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %cm_stride.addr = alloca i64, align 8
  %cn_stride.addr = alloca i64, align 8
  %a_offset.addr = alloca i64, align 8
  %zero.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %c0 = alloca ptr, align 8
  %vb_zero_point = alloca i32, align 4
  %vacc0x0 = alloca i32, align 4
  %vacc0x1 = alloca i32, align 4
  %p = alloca i64, align 8
  %a0 = alloca ptr, align 8
  %k = alloca i64, align 8
  %va0 = alloca i32, align 4
  %vb0 = alloca i32, align 4
  %vb1 = alloca i32, align 4
  %vfpacc0x0 = alloca float, align 4
  %vfpacc0x1 = alloca float, align 4
  %vscale = alloca float, align 4
  %voutput_min_less_zero_point = alloca float, align 4
  %voutput_max_less_zero_point = alloca float, align 4
  %vmagic_bias = alloca float, align 4
  %vmagic_bias_less_output_zero_point = alloca i32, align 4
  %vout0x0 = alloca i32, align 4
  %vout0x1 = alloca i32, align 4
  store i64 %mr, ptr %mr.addr, align 8, !tbaa !5
  store i64 %nc, ptr %nc.addr, align 8, !tbaa !5
  store i64 %kc, ptr %kc.addr, align 8, !tbaa !5
  store i64 %ks, ptr %ks.addr, align 8, !tbaa !5
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %w, ptr %w.addr, align 8, !tbaa !9
  store ptr %c, ptr %c.addr, align 8, !tbaa !9
  store i64 %cm_stride, ptr %cm_stride.addr, align 8, !tbaa !5
  store i64 %cn_stride, ptr %cn_stride.addr, align 8, !tbaa !5
  store i64 %a_offset, ptr %a_offset.addr, align 8, !tbaa !5
  store ptr %zero, ptr %zero.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c0) #4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !9
  store ptr %0, ptr %c0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb_zero_point) #4
  %1 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %kernel_zero_point = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %kernel_zero_point, align 64, !tbaa !11
  store i32 %2, ptr %vb_zero_point, align 4, !tbaa !12
  br label %do.body

do.body:                                          ; preds = %do.cond60, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0x0) #4
  %3 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 0
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !12
  store i32 %4, ptr %vacc0x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0x1) #4
  %5 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx1 = getelementptr inbounds i32, ptr %5, i64 1
  %6 = load i32, ptr %arrayidx1, align 4, !tbaa !12
  store i32 %6, ptr %vacc0x1, align 4, !tbaa !12
  %7 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i32, ptr %7, i64 2
  store ptr %add.ptr, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  %8 = load i64, ptr %ks.addr, align 8, !tbaa !5
  store i64 %8, ptr %p, align 8, !tbaa !5
  br label %do.body2

do.body2:                                         ; preds = %do.cond21, %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %a0) #4
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx3 = getelementptr inbounds ptr, ptr %9, i64 0
  %10 = load ptr, ptr %arrayidx3, align 8, !tbaa !9
  store ptr %10, ptr %a0, align 8, !tbaa !9
  %11 = load ptr, ptr %a0, align 8, !tbaa !9
  %12 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp = icmp ne ptr %11, %12
  %lnot = xor i1 %cmp, true
  %lnot4 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot4 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !14

if.then:                                          ; preds = %do.body2
  %13 = load ptr, ptr %a0, align 8, !tbaa !9
  %14 = ptrtoint ptr %13 to i64
  %15 = load i64, ptr %a_offset.addr, align 8, !tbaa !5
  %add = add i64 %14, %15
  %16 = inttoptr i64 %add to ptr
  store ptr %16, ptr %a0, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body2
  %17 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %add.ptr5 = getelementptr inbounds ptr, ptr %17, i64 1
  store ptr %add.ptr5, ptr %a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #4
  %18 = load i64, ptr %kc.addr, align 8, !tbaa !5
  store i64 %18, ptr %k, align 8, !tbaa !5
  br label %do.body6

do.body6:                                         ; preds = %do.cond, %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %va0) #4
  %19 = load ptr, ptr %a0, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i8, ptr %19, i32 1
  store ptr %incdec.ptr, ptr %a0, align 8, !tbaa !9
  %20 = load i8, ptr %19, align 1, !tbaa !11
  %conv7 = zext i8 %20 to i32
  store i32 %conv7, ptr %va0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb0) #4
  %21 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx8 = getelementptr inbounds i8, ptr %21, i64 0
  %22 = load i8, ptr %arrayidx8, align 1, !tbaa !11
  %conv9 = zext i8 %22 to i32
  %23 = load i32, ptr %vb_zero_point, align 4, !tbaa !12
  %sub = sub nsw i32 %conv9, %23
  store i32 %sub, ptr %vb0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb1) #4
  %24 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %arrayidx10 = getelementptr inbounds i8, ptr %24, i64 1
  %25 = load i8, ptr %arrayidx10, align 1, !tbaa !11
  %conv11 = zext i8 %25 to i32
  %26 = load i32, ptr %vb_zero_point, align 4, !tbaa !12
  %sub12 = sub nsw i32 %conv11, %26
  store i32 %sub12, ptr %vb1, align 4, !tbaa !12
  %27 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %add.ptr13 = getelementptr inbounds i8, ptr %27, i64 2
  store ptr %add.ptr13, ptr %w.addr, align 8, !tbaa !9
  %28 = load i32, ptr %va0, align 4, !tbaa !12
  %29 = load i32, ptr %vb0, align 4, !tbaa !12
  %mul = mul nsw i32 %28, %29
  %30 = load i32, ptr %vacc0x0, align 4, !tbaa !12
  %add14 = add nsw i32 %30, %mul
  store i32 %add14, ptr %vacc0x0, align 4, !tbaa !12
  %31 = load i32, ptr %va0, align 4, !tbaa !12
  %32 = load i32, ptr %vb1, align 4, !tbaa !12
  %mul15 = mul nsw i32 %31, %32
  %33 = load i32, ptr %vacc0x1, align 4, !tbaa !12
  %add16 = add nsw i32 %33, %mul15
  store i32 %add16, ptr %vacc0x1, align 4, !tbaa !12
  %34 = load i64, ptr %k, align 8, !tbaa !5
  %sub17 = sub i64 %34, 1
  store i64 %sub17, ptr %k, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va0) #4
  br label %do.cond

do.cond:                                          ; preds = %do.body6
  %35 = load i64, ptr %k, align 8, !tbaa !5
  %cmp18 = icmp ne i64 %35, 0
  br i1 %cmp18, label %do.body6, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.cond
  %36 = load i64, ptr %p, align 8, !tbaa !5
  %sub20 = sub i64 %36, 8
  store i64 %sub20, ptr %p, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a0) #4
  br label %do.cond21

do.cond21:                                        ; preds = %do.end
  %37 = load i64, ptr %p, align 8, !tbaa !5
  %cmp22 = icmp ne i64 %37, 0
  br i1 %cmp22, label %do.body2, label %do.end24, !llvm.loop !17

do.end24:                                         ; preds = %do.cond21
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc0x0) #4
  %38 = load i32, ptr %vacc0x0, align 4, !tbaa !12
  %conv25 = sitofp i32 %38 to float
  store float %conv25, ptr %vfpacc0x0, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfpacc0x1) #4
  %39 = load i32, ptr %vacc0x1, align 4, !tbaa !12
  %conv26 = sitofp i32 %39 to float
  store float %conv26, ptr %vfpacc0x1, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vscale) #4
  %40 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale = getelementptr inbounds %struct.anon, ptr %40, i32 0, i32 1
  %41 = load float, ptr %scale, align 4, !tbaa !11
  store float %41, ptr %vscale, align 4, !tbaa !18
  %42 = load float, ptr %vscale, align 4, !tbaa !18
  %43 = load float, ptr %vfpacc0x0, align 4, !tbaa !18
  %mul27 = fmul float %43, %42
  store float %mul27, ptr %vfpacc0x0, align 4, !tbaa !18
  %44 = load float, ptr %vscale, align 4, !tbaa !18
  %45 = load float, ptr %vfpacc0x1, align 4, !tbaa !18
  %mul28 = fmul float %45, %44
  store float %mul28, ptr %vfpacc0x1, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %voutput_min_less_zero_point) #4
  %46 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min_less_zero_point = getelementptr inbounds %struct.anon, ptr %46, i32 0, i32 2
  %47 = load float, ptr %output_min_less_zero_point, align 8, !tbaa !11
  store float %47, ptr %voutput_min_less_zero_point, align 4, !tbaa !18
  %48 = load float, ptr %vfpacc0x0, align 4, !tbaa !18
  %49 = load float, ptr %voutput_min_less_zero_point, align 4, !tbaa !18
  %call = call float @math_max_f32(float noundef %48, float noundef %49)
  store float %call, ptr %vfpacc0x0, align 4, !tbaa !18
  %50 = load float, ptr %vfpacc0x1, align 4, !tbaa !18
  %51 = load float, ptr %voutput_min_less_zero_point, align 4, !tbaa !18
  %call29 = call float @math_max_f32(float noundef %50, float noundef %51)
  store float %call29, ptr %vfpacc0x1, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %voutput_max_less_zero_point) #4
  %52 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max_less_zero_point = getelementptr inbounds %struct.anon, ptr %52, i32 0, i32 3
  %53 = load float, ptr %output_max_less_zero_point, align 4, !tbaa !11
  store float %53, ptr %voutput_max_less_zero_point, align 4, !tbaa !18
  %54 = load float, ptr %vfpacc0x0, align 4, !tbaa !18
  %55 = load float, ptr %voutput_max_less_zero_point, align 4, !tbaa !18
  %call30 = call float @math_min_f32(float noundef %54, float noundef %55)
  store float %call30, ptr %vfpacc0x0, align 4, !tbaa !18
  %56 = load float, ptr %vfpacc0x1, align 4, !tbaa !18
  %57 = load float, ptr %voutput_max_less_zero_point, align 4, !tbaa !18
  %call31 = call float @math_min_f32(float noundef %56, float noundef %57)
  store float %call31, ptr %vfpacc0x1, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_bias) #4
  %58 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_bias = getelementptr inbounds %struct.anon, ptr %58, i32 0, i32 4
  %59 = load float, ptr %magic_bias, align 16, !tbaa !11
  store float %59, ptr %vmagic_bias, align 4, !tbaa !18
  %60 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %61 = load float, ptr %vfpacc0x0, align 4, !tbaa !18
  %add32 = fadd float %61, %60
  store float %add32, ptr %vfpacc0x0, align 4, !tbaa !18
  %62 = load float, ptr %vmagic_bias, align 4, !tbaa !18
  %63 = load float, ptr %vfpacc0x1, align 4, !tbaa !18
  %add33 = fadd float %63, %62
  store float %add33, ptr %vfpacc0x1, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_bias_less_output_zero_point) #4
  %64 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_bias_less_output_zero_point = getelementptr inbounds %struct.anon, ptr %64, i32 0, i32 5
  %65 = load i32, ptr %magic_bias_less_output_zero_point, align 4, !tbaa !11
  store i32 %65, ptr %vmagic_bias_less_output_zero_point, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout0x0) #4
  %66 = load float, ptr %vfpacc0x0, align 4, !tbaa !18
  %call34 = call i32 @fp32_to_bits(float noundef %66)
  %67 = load i32, ptr %vmagic_bias_less_output_zero_point, align 4, !tbaa !12
  %sub35 = sub nsw i32 %call34, %67
  store i32 %sub35, ptr %vout0x0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vout0x1) #4
  %68 = load float, ptr %vfpacc0x1, align 4, !tbaa !18
  %call36 = call i32 @fp32_to_bits(float noundef %68)
  %69 = load i32, ptr %vmagic_bias_less_output_zero_point, align 4, !tbaa !12
  %sub37 = sub nsw i32 %call36, %69
  store i32 %sub37, ptr %vout0x1, align 4, !tbaa !12
  %70 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp38 = icmp uge i64 %70, 2
  %lnot40 = xor i1 %cmp38, true
  %lnot42 = xor i1 %lnot40, true
  %lnot.ext43 = zext i1 %lnot42 to i32
  %conv44 = sext i32 %lnot.ext43 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv44, i64 1)
  %tobool45 = icmp ne i64 %expval, 0
  br i1 %tobool45, label %if.then46, label %if.else

if.then46:                                        ; preds = %do.end24
  %71 = load i32, ptr %vout0x0, align 4, !tbaa !12
  %conv47 = trunc i32 %71 to i8
  %72 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx48 = getelementptr inbounds i8, ptr %72, i64 0
  store i8 %conv47, ptr %arrayidx48, align 1, !tbaa !11
  %73 = load i32, ptr %vout0x1, align 4, !tbaa !12
  %conv49 = trunc i32 %73 to i8
  %74 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx50 = getelementptr inbounds i8, ptr %74, i64 1
  store i8 %conv49, ptr %arrayidx50, align 1, !tbaa !11
  %75 = load ptr, ptr %c0, align 8, !tbaa !9
  %76 = ptrtoint ptr %75 to i64
  %77 = load i64, ptr %cn_stride.addr, align 8, !tbaa !5
  %add51 = add i64 %76, %77
  %78 = inttoptr i64 %add51 to ptr
  store ptr %78, ptr %c0, align 8, !tbaa !9
  %79 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %80 = ptrtoint ptr %79 to i64
  %81 = load i64, ptr %ks.addr, align 8, !tbaa !5
  %sub52 = sub i64 %80, %81
  %82 = inttoptr i64 %sub52 to ptr
  store ptr %82, ptr %a.addr, align 8, !tbaa !9
  %83 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %sub53 = sub i64 %83, 2
  store i64 %sub53, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end59

if.else:                                          ; preds = %do.end24
  %84 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %and = and i64 %84, 1
  %tobool54 = icmp ne i64 %and, 0
  br i1 %tobool54, label %if.then55, label %if.end58

if.then55:                                        ; preds = %if.else
  %85 = load i32, ptr %vout0x0, align 4, !tbaa !12
  %conv56 = trunc i32 %85 to i8
  %86 = load ptr, ptr %c0, align 8, !tbaa !9
  %arrayidx57 = getelementptr inbounds i8, ptr %86, i64 0
  store i8 %conv56, ptr %arrayidx57, align 1, !tbaa !11
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.else
  store i64 0, ptr %nc.addr, align 8, !tbaa !5
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then46
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout0x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vout0x0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_bias_less_output_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_bias) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %voutput_max_less_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %voutput_min_less_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vscale) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc0x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfpacc0x0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0x1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0x0) #4
  br label %do.cond60

do.cond60:                                        ; preds = %if.end59
  %87 = load i64, ptr %nc.addr, align 8, !tbaa !5
  %cmp61 = icmp ne i64 %87, 0
  br i1 %cmp61, label %do.body, label %do.end63, !llvm.loop !20

do.end63:                                         ; preds = %do.cond60
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %c0) #4
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
  store float %a, ptr %a.addr, align 4, !tbaa !18
  store float %b, ptr %b.addr, align 4, !tbaa !18
  %0 = load float, ptr %b.addr, align 4, !tbaa !18
  %1 = load float, ptr %a.addr, align 4, !tbaa !18
  %cmp = fcmp olt float %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !14

cond.true:                                        ; preds = %entry
  %2 = load float, ptr %a.addr, align 4, !tbaa !18
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load float, ptr %b.addr, align 4, !tbaa !18
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
  store float %a, ptr %a.addr, align 4, !tbaa !18
  store float %b, ptr %b.addr, align 4, !tbaa !18
  %0 = load float, ptr %b.addr, align 4, !tbaa !18
  %1 = load float, ptr %a.addr, align 4, !tbaa !18
  %cmp = fcmp olt float %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !14

cond.true:                                        ; preds = %entry
  %2 = load float, ptr %b.addr, align 4, !tbaa !18
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load float, ptr %a.addr, align 4, !tbaa !18
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
  store float %f, ptr %f.addr, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %fp32) #4
  %0 = load float, ptr %f.addr, align 4, !tbaa !18
  store float %0, ptr %fp32, align 4, !tbaa !11
  %1 = load i32, ptr %fp32, align 4, !tbaa !11
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
!11 = !{!7, !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!19, !19, i64 0}
!19 = !{!"float", !7, i64 0}
!20 = distinct !{!20, !16}
