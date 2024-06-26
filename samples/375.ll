; ModuleID = 'samples/375.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-vbinary/gen/vadd-minmax-scalar-x2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { float, float }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_vadd_minmax_ukernel__scalar_x2(i64 noundef %n, ptr noundef %a, ptr noundef %b, ptr noundef %y, ptr noalias noundef align 32 dereferenceable(128) %params) #0 {
entry:
  %n.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %vy_min = alloca float, align 4
  %vy_max = alloca float, align 4
  %va0 = alloca float, align 4
  %va1 = alloca float, align 4
  %vb0 = alloca float, align 4
  %vb1 = alloca float, align 4
  %vy0 = alloca float, align 4
  %vy1 = alloca float, align 4
  %va = alloca float, align 4
  %vb = alloca float, align 4
  %vy = alloca float, align 4
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy_min) #4
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %min = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 0
  %1 = load float, ptr %min, align 32, !tbaa !11
  store float %1, ptr %vy_min, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy_max) #4
  %2 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %max = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  %3 = load float, ptr %max, align 4, !tbaa !11
  store float %3, ptr %vy_max, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp uge i64 %4, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %va0) #4
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds float, ptr %5, i64 0
  %6 = load float, ptr %arrayidx, align 4, !tbaa !12
  store float %6, ptr %va0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %va1) #4
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx1 = getelementptr inbounds float, ptr %7, i64 1
  %8 = load float, ptr %arrayidx1, align 4, !tbaa !12
  store float %8, ptr %va1, align 4, !tbaa !12
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %9, i64 2
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb0) #4
  %10 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %arrayidx2 = getelementptr inbounds float, ptr %10, i64 0
  %11 = load float, ptr %arrayidx2, align 4, !tbaa !12
  store float %11, ptr %vb0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb1) #4
  %12 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %arrayidx3 = getelementptr inbounds float, ptr %12, i64 1
  %13 = load float, ptr %arrayidx3, align 4, !tbaa !12
  store float %13, ptr %vb1, align 4, !tbaa !12
  %14 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %add.ptr4 = getelementptr inbounds float, ptr %14, i64 2
  store ptr %add.ptr4, ptr %b.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy0) #4
  %15 = load float, ptr %va0, align 4, !tbaa !12
  %16 = load float, ptr %vb0, align 4, !tbaa !12
  %add = fadd float %15, %16
  store float %add, ptr %vy0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy1) #4
  %17 = load float, ptr %va1, align 4, !tbaa !12
  %18 = load float, ptr %vb1, align 4, !tbaa !12
  %add5 = fadd float %17, %18
  store float %add5, ptr %vy1, align 4, !tbaa !12
  %19 = load float, ptr %vy0, align 4, !tbaa !12
  %20 = load float, ptr %vy_min, align 4, !tbaa !12
  %call = call float @math_max_f32(float noundef %19, float noundef %20)
  store float %call, ptr %vy0, align 4, !tbaa !12
  %21 = load float, ptr %vy1, align 4, !tbaa !12
  %22 = load float, ptr %vy_min, align 4, !tbaa !12
  %call6 = call float @math_max_f32(float noundef %21, float noundef %22)
  store float %call6, ptr %vy1, align 4, !tbaa !12
  %23 = load float, ptr %vy0, align 4, !tbaa !12
  %24 = load float, ptr %vy_max, align 4, !tbaa !12
  %call7 = call float @math_min_f32(float noundef %23, float noundef %24)
  store float %call7, ptr %vy0, align 4, !tbaa !12
  %25 = load float, ptr %vy1, align 4, !tbaa !12
  %26 = load float, ptr %vy_max, align 4, !tbaa !12
  %call8 = call float @math_min_f32(float noundef %25, float noundef %26)
  store float %call8, ptr %vy1, align 4, !tbaa !12
  %27 = load float, ptr %vy0, align 4, !tbaa !12
  %28 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx9 = getelementptr inbounds float, ptr %28, i64 0
  store float %27, ptr %arrayidx9, align 4, !tbaa !12
  %29 = load float, ptr %vy1, align 4, !tbaa !12
  %30 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx10 = getelementptr inbounds float, ptr %30, i64 1
  store float %29, ptr %arrayidx10, align 4, !tbaa !12
  %31 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %add.ptr11 = getelementptr inbounds float, ptr %31, i64 2
  store ptr %add.ptr11, ptr %y.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va0) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub = sub i64 %32, 8
  store i64 %sub, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %33 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp12 = icmp ne i64 %33, 0
  %lnot = xor i1 %cmp12, true
  %lnot13 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot13 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %va) #4
  %34 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %35 = load float, ptr %34, align 4, !tbaa !12
  store float %35, ptr %va, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb) #4
  %36 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %37 = load float, ptr %36, align 4, !tbaa !12
  store float %37, ptr %vb, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy) #4
  %38 = load float, ptr %va, align 4, !tbaa !12
  %39 = load float, ptr %vb, align 4, !tbaa !12
  %add14 = fadd float %38, %39
  store float %add14, ptr %vy, align 4, !tbaa !12
  %40 = load float, ptr %vy, align 4, !tbaa !12
  %41 = load float, ptr %vy_min, align 4, !tbaa !12
  %call15 = call float @math_max_f32(float noundef %40, float noundef %41)
  store float %call15, ptr %vy, align 4, !tbaa !12
  %42 = load float, ptr %vy, align 4, !tbaa !12
  %43 = load float, ptr %vy_max, align 4, !tbaa !12
  %call16 = call float @math_min_f32(float noundef %42, float noundef %43)
  store float %call16, ptr %vy, align 4, !tbaa !12
  %44 = load float, ptr %vy, align 4, !tbaa !12
  %45 = load ptr, ptr %y.addr, align 8, !tbaa !9
  store float %44, ptr %45, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy_max) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy_min) #4
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
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{}
