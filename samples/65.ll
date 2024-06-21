; ModuleID = 'samples/65.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-qu8-vcvt/gen/vcvt-scalar-fmagic-x2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { float, float, float, float, i32 }
%union.anon = type { float }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_qu8_vcvt_ukernel__scalar_fmagic_x2(i64 noundef %n, ptr noundef %x, ptr noundef %y, ptr noalias noundef align 64 dereferenceable(384) %params) #0 {
entry:
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %vscale = alloca float, align 4
  %voutput_min_less_zero_point = alloca float, align 4
  %voutput_max_less_zero_point = alloca float, align 4
  %vmagic_bias = alloca float, align 4
  %vmagic_bias_less_zero_point = alloca i32, align 4
  %vx0 = alloca float, align 4
  %vx1 = alloca float, align 4
  %vy0 = alloca i32, align 4
  %vy1 = alloca i32, align 4
  %vx = alloca float, align 4
  %vy = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vscale) #4
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 0
  %1 = load float, ptr %scale, align 64, !tbaa !11
  store float %1, ptr %vscale, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %voutput_min_less_zero_point) #4
  %2 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min_less_zero_point = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  %3 = load float, ptr %output_min_less_zero_point, align 4, !tbaa !11
  store float %3, ptr %voutput_min_less_zero_point, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %voutput_max_less_zero_point) #4
  %4 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max_less_zero_point = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 2
  %5 = load float, ptr %output_max_less_zero_point, align 8, !tbaa !11
  store float %5, ptr %voutput_max_less_zero_point, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_bias) #4
  %6 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_bias = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 3
  %7 = load float, ptr %magic_bias, align 4, !tbaa !11
  store float %7, ptr %vmagic_bias, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_bias_less_zero_point) #4
  %8 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_bias_less_zero_point = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 4
  %9 = load i32, ptr %magic_bias_less_zero_point, align 16, !tbaa !11
  store i32 %9, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp uge i64 %10, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %vx0) #4
  %11 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds float, ptr %11, i64 0
  %12 = load float, ptr %arrayidx, align 4, !tbaa !12
  store float %12, ptr %vx0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vx1) #4
  %13 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %arrayidx1 = getelementptr inbounds float, ptr %13, i64 1
  %14 = load float, ptr %arrayidx1, align 4, !tbaa !12
  store float %14, ptr %vx1, align 4, !tbaa !12
  %15 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %15, i64 2
  store ptr %add.ptr, ptr %x.addr, align 8, !tbaa !9
  %16 = load float, ptr %vscale, align 4, !tbaa !12
  %17 = load float, ptr %vx0, align 4, !tbaa !12
  %mul = fmul float %17, %16
  store float %mul, ptr %vx0, align 4, !tbaa !12
  %18 = load float, ptr %vscale, align 4, !tbaa !12
  %19 = load float, ptr %vx1, align 4, !tbaa !12
  %mul2 = fmul float %19, %18
  store float %mul2, ptr %vx1, align 4, !tbaa !12
  %20 = load float, ptr %vx0, align 4, !tbaa !12
  %21 = load float, ptr %voutput_min_less_zero_point, align 4, !tbaa !12
  %call = call float @math_max_f32(float noundef %20, float noundef %21)
  store float %call, ptr %vx0, align 4, !tbaa !12
  %22 = load float, ptr %vx1, align 4, !tbaa !12
  %23 = load float, ptr %voutput_min_less_zero_point, align 4, !tbaa !12
  %call3 = call float @math_max_f32(float noundef %22, float noundef %23)
  store float %call3, ptr %vx1, align 4, !tbaa !12
  %24 = load float, ptr %vx0, align 4, !tbaa !12
  %25 = load float, ptr %voutput_max_less_zero_point, align 4, !tbaa !12
  %call4 = call float @math_min_f32(float noundef %24, float noundef %25)
  store float %call4, ptr %vx0, align 4, !tbaa !12
  %26 = load float, ptr %vx1, align 4, !tbaa !12
  %27 = load float, ptr %voutput_max_less_zero_point, align 4, !tbaa !12
  %call5 = call float @math_min_f32(float noundef %26, float noundef %27)
  store float %call5, ptr %vx1, align 4, !tbaa !12
  %28 = load float, ptr %vmagic_bias, align 4, !tbaa !12
  %29 = load float, ptr %vx0, align 4, !tbaa !12
  %add = fadd float %29, %28
  store float %add, ptr %vx0, align 4, !tbaa !12
  %30 = load float, ptr %vmagic_bias, align 4, !tbaa !12
  %31 = load float, ptr %vx1, align 4, !tbaa !12
  %add6 = fadd float %31, %30
  store float %add6, ptr %vx1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy0) #4
  %32 = load float, ptr %vx0, align 4, !tbaa !12
  %call7 = call i32 @fp32_to_bits(float noundef %32)
  store i32 %call7, ptr %vy0, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy1) #4
  %33 = load float, ptr %vx1, align 4, !tbaa !12
  %call8 = call i32 @fp32_to_bits(float noundef %33)
  store i32 %call8, ptr %vy1, align 4, !tbaa !14
  %34 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !14
  %35 = load i32, ptr %vy0, align 4, !tbaa !14
  %sub = sub nsw i32 %35, %34
  store i32 %sub, ptr %vy0, align 4, !tbaa !14
  %36 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !14
  %37 = load i32, ptr %vy1, align 4, !tbaa !14
  %sub9 = sub nsw i32 %37, %36
  store i32 %sub9, ptr %vy1, align 4, !tbaa !14
  %38 = load i32, ptr %vy0, align 4, !tbaa !14
  %conv = trunc i32 %38 to i8
  %39 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx10 = getelementptr inbounds i8, ptr %39, i64 0
  store i8 %conv, ptr %arrayidx10, align 1, !tbaa !11
  %40 = load i32, ptr %vy1, align 4, !tbaa !14
  %conv11 = trunc i32 %40 to i8
  %41 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx12 = getelementptr inbounds i8, ptr %41, i64 1
  store i8 %conv11, ptr %arrayidx12, align 1, !tbaa !11
  %42 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %add.ptr13 = getelementptr inbounds i8, ptr %42, i64 2
  store ptr %add.ptr13, ptr %y.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vx1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vx0) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub14 = sub i64 %43, 8
  store i64 %sub14, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %44 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp15 = icmp ne i64 %44, 0
  %lnot = xor i1 %cmp15, true
  %lnot17 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot17 to i32
  %conv18 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv18, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %vx) #4
  %45 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %46 = load float, ptr %45, align 4, !tbaa !12
  store float %46, ptr %vx, align 4, !tbaa !12
  %47 = load float, ptr %vscale, align 4, !tbaa !12
  %48 = load float, ptr %vx, align 4, !tbaa !12
  %mul19 = fmul float %48, %47
  store float %mul19, ptr %vx, align 4, !tbaa !12
  %49 = load float, ptr %vx, align 4, !tbaa !12
  %50 = load float, ptr %voutput_min_less_zero_point, align 4, !tbaa !12
  %call20 = call float @math_max_f32(float noundef %49, float noundef %50)
  store float %call20, ptr %vx, align 4, !tbaa !12
  %51 = load float, ptr %vx, align 4, !tbaa !12
  %52 = load float, ptr %voutput_max_less_zero_point, align 4, !tbaa !12
  %call21 = call float @math_min_f32(float noundef %51, float noundef %52)
  store float %call21, ptr %vx, align 4, !tbaa !12
  %53 = load float, ptr %vmagic_bias, align 4, !tbaa !12
  %54 = load float, ptr %vx, align 4, !tbaa !12
  %add22 = fadd float %54, %53
  store float %add22, ptr %vx, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy) #4
  %55 = load float, ptr %vx, align 4, !tbaa !12
  %call23 = call i32 @fp32_to_bits(float noundef %55)
  store i32 %call23, ptr %vy, align 4, !tbaa !14
  %56 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !14
  %57 = load i32, ptr %vy, align 4, !tbaa !14
  %sub24 = sub nsw i32 %57, %56
  store i32 %sub24, ptr %vy, align 4, !tbaa !14
  %58 = load i32, ptr %vy, align 4, !tbaa !14
  %conv25 = trunc i32 %58 to i8
  %59 = load ptr, ptr %y.addr, align 8, !tbaa !9
  store i8 %conv25, ptr %59, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vx) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_bias_less_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_bias) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %voutput_max_less_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %voutput_min_less_zero_point) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vscale) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal float @math_max_f32(float noundef %a, float noundef %b) #2 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, ptr %a.addr, align 4, !tbaa !12
  store float %b, ptr %b.addr, align 4, !tbaa !12
  %0 = load float, ptr %b.addr, align 4, !tbaa !12
  %1 = load float, ptr %a.addr, align 4, !tbaa !12
  %cmp = fcmp olt float %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !18

cond.true:                                        ; preds = %entry
  %2 = load float, ptr %a.addr, align 4, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load float, ptr %b.addr, align 4, !tbaa !12
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
  store float %a, ptr %a.addr, align 4, !tbaa !12
  store float %b, ptr %b.addr, align 4, !tbaa !12
  %0 = load float, ptr %b.addr, align 4, !tbaa !12
  %1 = load float, ptr %a.addr, align 4, !tbaa !12
  %cmp = fcmp olt float %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !18

cond.true:                                        ; preds = %entry
  %2 = load float, ptr %b.addr, align 4, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load float, ptr %a.addr, align 4, !tbaa !12
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
  store float %f, ptr %f.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %fp32) #4
  %0 = load float, ptr %f.addr, align 4, !tbaa !12
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
!13 = !{!"float", !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !7, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{}
