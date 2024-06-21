; ModuleID = 'samples/395.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-vbinary/gen/vmulc-minmax-scalar-x1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { float, float }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_vmulc_minmax_ukernel__scalar_x1(i64 noundef %n, ptr noundef %a, ptr noundef %b, ptr noundef %y, ptr noalias noundef align 32 dereferenceable(128) %params) #0 {
entry:
  %n.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %vy_min = alloca float, align 4
  %vy_max = alloca float, align 4
  %vb = alloca float, align 4
  %va = alloca float, align 4
  %vy = alloca float, align 4
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy_min) #3
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %min = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 0
  %1 = load float, ptr %min, align 32, !tbaa !11
  store float %1, ptr %vy_min, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy_max) #3
  %2 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %max = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  %3 = load float, ptr %max, align 4, !tbaa !11
  store float %3, ptr %vy_max, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb) #3
  %4 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %5 = load float, ptr %4, align 4, !tbaa !12
  store float %5, ptr %vb, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp uge i64 %6, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %va) #3
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds float, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %a.addr, align 8, !tbaa !9
  %8 = load float, ptr %7, align 4, !tbaa !12
  store float %8, ptr %va, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy) #3
  %9 = load float, ptr %va, align 4, !tbaa !12
  %10 = load float, ptr %vb, align 4, !tbaa !12
  %mul = fmul float %9, %10
  store float %mul, ptr %vy, align 4, !tbaa !12
  %11 = load float, ptr %vy, align 4, !tbaa !12
  %12 = load float, ptr %vy_min, align 4, !tbaa !12
  %call = call float @math_max_f32(float noundef %11, float noundef %12)
  store float %call, ptr %vy, align 4, !tbaa !12
  %13 = load float, ptr %vy, align 4, !tbaa !12
  %14 = load float, ptr %vy_max, align 4, !tbaa !12
  %call1 = call float @math_min_f32(float noundef %13, float noundef %14)
  store float %call1, ptr %vy, align 4, !tbaa !12
  %15 = load float, ptr %vy, align 4, !tbaa !12
  %16 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %incdec.ptr2 = getelementptr inbounds float, ptr %16, i32 1
  store ptr %incdec.ptr2, ptr %y.addr, align 8, !tbaa !9
  store float %15, ptr %16, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %va) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub = sub i64 %17, 4
  store i64 %sub, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy_max) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy_min) #3
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
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !16

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
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !16

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
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{}
