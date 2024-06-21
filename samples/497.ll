; ModuleID = 'samples/497.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-vbinary/gen/vmul-scalar-x2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_vmul_ukernel__scalar_x2(i64 noundef %n, ptr noundef %a, ptr noundef %b, ptr noundef %y, ptr noalias noundef align 4 dereferenceable(56) %params) #0 {
entry:
  %n.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
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
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp uge i64 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %va0) #3
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds float, ptr %1, i64 0
  %2 = load float, ptr %arrayidx, align 4, !tbaa !11
  store float %2, ptr %va0, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %va1) #3
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx1 = getelementptr inbounds float, ptr %3, i64 1
  %4 = load float, ptr %arrayidx1, align 4, !tbaa !11
  store float %4, ptr %va1, align 4, !tbaa !11
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %5, i64 2
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb0) #3
  %6 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %arrayidx2 = getelementptr inbounds float, ptr %6, i64 0
  %7 = load float, ptr %arrayidx2, align 4, !tbaa !11
  store float %7, ptr %vb0, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb1) #3
  %8 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %arrayidx3 = getelementptr inbounds float, ptr %8, i64 1
  %9 = load float, ptr %arrayidx3, align 4, !tbaa !11
  store float %9, ptr %vb1, align 4, !tbaa !11
  %10 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %add.ptr4 = getelementptr inbounds float, ptr %10, i64 2
  store ptr %add.ptr4, ptr %b.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy0) #3
  %11 = load float, ptr %va0, align 4, !tbaa !11
  %12 = load float, ptr %vb0, align 4, !tbaa !11
  %mul = fmul float %11, %12
  store float %mul, ptr %vy0, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy1) #3
  %13 = load float, ptr %va1, align 4, !tbaa !11
  %14 = load float, ptr %vb1, align 4, !tbaa !11
  %mul5 = fmul float %13, %14
  store float %mul5, ptr %vy1, align 4, !tbaa !11
  %15 = load float, ptr %vy0, align 4, !tbaa !11
  %16 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx6 = getelementptr inbounds float, ptr %16, i64 0
  store float %15, ptr %arrayidx6, align 4, !tbaa !11
  %17 = load float, ptr %vy1, align 4, !tbaa !11
  %18 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx7 = getelementptr inbounds float, ptr %18, i64 1
  store float %17, ptr %arrayidx7, align 4, !tbaa !11
  %19 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %add.ptr8 = getelementptr inbounds float, ptr %19, i64 2
  store ptr %add.ptr8, ptr %y.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy0) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb0) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %va1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %va0) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub = sub i64 %20, 8
  store i64 %sub, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %21 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp9 = icmp ne i64 %21, 0
  %lnot = xor i1 %cmp9, true
  %lnot10 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot10 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %va) #3
  %22 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %23 = load float, ptr %22, align 4, !tbaa !11
  store float %23, ptr %va, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb) #3
  %24 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %25 = load float, ptr %24, align 4, !tbaa !11
  store float %25, ptr %vb, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy) #3
  %26 = load float, ptr %va, align 4, !tbaa !11
  %27 = load float, ptr %vb, align 4, !tbaa !11
  %mul11 = fmul float %26, %27
  store float %mul11, ptr %vy, align 4, !tbaa !11
  %28 = load float, ptr %vy, align 4, !tbaa !11
  %29 = load ptr, ptr %y.addr, align 8, !tbaa !9
  store float %28, ptr %29, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %va) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
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
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}