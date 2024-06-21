; ModuleID = 'samples/722.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-vrnd/gen/vrndu-scalar-libm-x1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_vrndu_ukernel__scalar_libm_x1(i64 noundef %n, ptr noundef %x, ptr noundef %y, ptr noalias noundef align 16 dereferenceable(64) %params) #0 {
entry:
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %vx = alloca float, align 4
  %vy = alloca float, align 4
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %vx) #3
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds float, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %x.addr, align 8, !tbaa !9
  %1 = load float, ptr %0, align 4, !tbaa !11
  store float %1, ptr %vx, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy) #3
  %2 = load float, ptr %vx, align 4, !tbaa !11
  %3 = call float @llvm.ceil.f32(float %2)
  store float %3, ptr %vy, align 4, !tbaa !11
  %4 = load float, ptr %vy, align 4, !tbaa !11
  %5 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %incdec.ptr1 = getelementptr inbounds float, ptr %5, i32 1
  store ptr %incdec.ptr1, ptr %y.addr, align 8, !tbaa !9
  store float %4, ptr %5, align 4, !tbaa !11
  %6 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub = sub i64 %6, 4
  store i64 %sub, ptr %n.addr, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vx) #3
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp ne i64 %7, 0
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !13

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
