; ModuleID = 'samples/477.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-qu8-vcvt/gen/vcvt-scalar-imagic-x1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { float, float, i32, i32, i32 }
%union.anon = type { float }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_qu8_vcvt_ukernel__scalar_imagic_x1(i64 noundef %n, ptr noundef %x, ptr noundef %y, ptr noalias noundef align 64 dereferenceable(384) %params) #0 {
entry:
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %vscale = alloca float, align 4
  %vmagic_bias = alloca float, align 4
  %vmagic_min = alloca i32, align 4
  %vmagic_max = alloca i32, align 4
  %vmagic_bias_less_zero_point = alloca i32, align 4
  %vx = alloca float, align 4
  %vy = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vscale) #3
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 0
  %1 = load float, ptr %scale, align 64, !tbaa !11
  store float %1, ptr %vscale, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_bias) #3
  %2 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_bias = getelementptr inbounds %struct.anon.0, ptr %2, i32 0, i32 1
  %3 = load float, ptr %magic_bias, align 4, !tbaa !11
  store float %3, ptr %vmagic_bias, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_min) #3
  %4 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_min = getelementptr inbounds %struct.anon.0, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %magic_min, align 8, !tbaa !11
  store i32 %5, ptr %vmagic_min, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_max) #3
  %6 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_max = getelementptr inbounds %struct.anon.0, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %magic_max, align 4, !tbaa !11
  store i32 %7, ptr %vmagic_max, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_bias_less_zero_point) #3
  %8 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_bias_less_zero_point = getelementptr inbounds %struct.anon.0, ptr %8, i32 0, i32 4
  %9 = load i32, ptr %magic_bias_less_zero_point, align 16, !tbaa !11
  store i32 %9, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !14
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %vx) #3
  %10 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds float, ptr %10, i32 1
  store ptr %incdec.ptr, ptr %x.addr, align 8, !tbaa !9
  %11 = load float, ptr %10, align 4, !tbaa !12
  store float %11, ptr %vx, align 4, !tbaa !12
  %12 = load float, ptr %vscale, align 4, !tbaa !12
  %13 = load float, ptr %vx, align 4, !tbaa !12
  %mul = fmul float %13, %12
  store float %mul, ptr %vx, align 4, !tbaa !12
  %14 = load float, ptr %vmagic_bias, align 4, !tbaa !12
  %15 = load float, ptr %vx, align 4, !tbaa !12
  %add = fadd float %15, %14
  store float %add, ptr %vx, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy) #3
  %16 = load float, ptr %vx, align 4, !tbaa !12
  %call = call i32 @fp32_to_bits(float noundef %16)
  store i32 %call, ptr %vy, align 4, !tbaa !14
  %17 = load i32, ptr %vy, align 4, !tbaa !14
  %18 = load i32, ptr %vmagic_min, align 4, !tbaa !14
  %call1 = call i32 @math_max_s32(i32 noundef %17, i32 noundef %18)
  store i32 %call1, ptr %vy, align 4, !tbaa !14
  %19 = load i32, ptr %vy, align 4, !tbaa !14
  %20 = load i32, ptr %vmagic_max, align 4, !tbaa !14
  %call2 = call i32 @math_min_s32(i32 noundef %19, i32 noundef %20)
  store i32 %call2, ptr %vy, align 4, !tbaa !14
  %21 = load i32, ptr %vmagic_bias_less_zero_point, align 4, !tbaa !14
  %22 = load i32, ptr %vy, align 4, !tbaa !14
  %sub = sub nsw i32 %22, %21
  store i32 %sub, ptr %vy, align 4, !tbaa !14
  %23 = load i32, ptr %vy, align 4, !tbaa !14
  %conv = trunc i32 %23 to i8
  %24 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %incdec.ptr3 = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr3, ptr %y.addr, align 8, !tbaa !9
  store i8 %conv, ptr %24, align 1, !tbaa !11
  %25 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub4 = sub i64 %25, 4
  store i64 %sub4, ptr %n.addr, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vx) #3
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %26 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp ne i64 %26, 0
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !16

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_bias_less_zero_point) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_max) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_min) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_bias) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vscale) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fp32_to_bits(float noundef %f) #2 {
entry:
  %f.addr = alloca float, align 4
  %fp32 = alloca %union.anon, align 4
  store float %f, ptr %f.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %fp32) #3
  %0 = load float, ptr %f.addr, align 4, !tbaa !12
  store float %0, ptr %fp32, align 4, !tbaa !11
  %1 = load i32, ptr %fp32, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 4, ptr %fp32) #3
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @math_max_s32(i32 noundef %a, i32 noundef %b) #2 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !14
  store i32 %b, ptr %b.addr, align 4, !tbaa !14
  %0 = load i32, ptr %a.addr, align 4, !tbaa !14
  %1 = load i32, ptr %b.addr, align 4, !tbaa !14
  %cmp = icmp sgt i32 %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !18

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4, !tbaa !14
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %b.addr, align 4, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @math_min_s32(i32 noundef %a, i32 noundef %b) #2 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !14
  store i32 %b, ptr %b.addr, align 4, !tbaa !14
  %0 = load i32, ptr %a.addr, align 4, !tbaa !14
  %1 = load i32, ptr %b.addr, align 4, !tbaa !14
  %cmp = icmp slt i32 %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !18

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4, !tbaa !14
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %b.addr, align 4, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
