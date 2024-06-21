; ModuleID = 'samples/465.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-vsqrt/gen/scalar-sqrt-x2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_vsqrt_ukernel__scalar_sqrt_x2(i64 noundef %n, ptr noundef %x, ptr noundef %y, ptr noalias noundef align 32 dereferenceable(96) %params) #0 {
entry:
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %vx0 = alloca float, align 4
  %vx1 = alloca float, align 4
  %vy0 = alloca float, align 4
  %vy1 = alloca float, align 4
  %vx = alloca float, align 4
  %vy = alloca float, align 4
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp uge i64 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %vx0) #4
  %1 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds float, ptr %1, i64 0
  %2 = load float, ptr %arrayidx, align 4, !tbaa !11
  store float %2, ptr %vx0, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vx1) #4
  %3 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %arrayidx1 = getelementptr inbounds float, ptr %3, i64 1
  %4 = load float, ptr %arrayidx1, align 4, !tbaa !11
  store float %4, ptr %vx1, align 4, !tbaa !11
  %5 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %5, i64 2
  store ptr %add.ptr, ptr %x.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy0) #4
  %6 = load float, ptr %vx0, align 4, !tbaa !11
  %call = call float @sqrtf(float noundef %6) #4
  store float %call, ptr %vy0, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy1) #4
  %7 = load float, ptr %vx1, align 4, !tbaa !11
  %call2 = call float @sqrtf(float noundef %7) #4
  store float %call2, ptr %vy1, align 4, !tbaa !11
  %8 = load float, ptr %vy0, align 4, !tbaa !11
  %9 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx3 = getelementptr inbounds float, ptr %9, i64 0
  store float %8, ptr %arrayidx3, align 4, !tbaa !11
  %10 = load float, ptr %vy1, align 4, !tbaa !11
  %11 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx4 = getelementptr inbounds float, ptr %11, i64 1
  store float %10, ptr %arrayidx4, align 4, !tbaa !11
  %12 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %add.ptr5 = getelementptr inbounds float, ptr %12, i64 2
  store ptr %add.ptr5, ptr %y.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vx1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vx0) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub = sub i64 %13, 8
  store i64 %sub, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %14 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp6 = icmp ne i64 %14, 0
  %lnot = xor i1 %cmp6, true
  %lnot7 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot7 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %vx) #4
  %15 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %16 = load float, ptr %15, align 4, !tbaa !11
  store float %16, ptr %vx, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy) #4
  %17 = load float, ptr %vx, align 4, !tbaa !11
  %call8 = call float @sqrtf(float noundef %17) #4
  store float %call8, ptr %vy, align 4, !tbaa !11
  %18 = load float, ptr %vy, align 4, !tbaa !11
  %19 = load ptr, ptr %y.addr, align 8, !tbaa !9
  store float %18, ptr %19, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vx) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare float @sqrtf(float noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = !{!"float", !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
