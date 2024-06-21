; ModuleID = 'samples/789.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-vrelu/gen/vrelu-scalar-x2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_vrelu_ukernel__scalar_x2(i64 noundef %n, ptr noundef %x_ptr, ptr noundef %y_ptr, ptr noalias noundef align 1 dereferenceable(1) %params) #0 {
entry:
  %n.addr = alloca i64, align 8
  %x_ptr.addr = alloca ptr, align 8
  %y_ptr.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %x = alloca ptr, align 8
  %y = alloca ptr, align 8
  %vacc0 = alloca i32, align 4
  %vacc1 = alloca i32, align 4
  %vacc = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store ptr %x_ptr, ptr %x_ptr.addr, align 8, !tbaa !9
  store ptr %y_ptr, ptr %y_ptr.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #3
  %0 = load ptr, ptr %x_ptr.addr, align 8, !tbaa !9
  store ptr %0, ptr %x, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #3
  %1 = load ptr, ptr %y_ptr.addr, align 8, !tbaa !9
  store ptr %1, ptr %y, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp uge i64 %2, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0) #3
  %3 = load ptr, ptr %x, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 0
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !11
  store i32 %4, ptr %vacc0, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc1) #3
  %5 = load ptr, ptr %x, align 8, !tbaa !9
  %arrayidx1 = getelementptr inbounds i32, ptr %5, i64 1
  %6 = load i32, ptr %arrayidx1, align 4, !tbaa !11
  store i32 %6, ptr %vacc1, align 4, !tbaa !11
  %7 = load ptr, ptr %x, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i32, ptr %7, i64 2
  store ptr %add.ptr, ptr %x, align 8, !tbaa !9
  %8 = load i32, ptr %vacc0, align 4, !tbaa !11
  %shr = lshr i32 %8, 31
  %sub = sub i32 %shr, 1
  %9 = load i32, ptr %vacc0, align 4, !tbaa !11
  %and = and i32 %sub, %9
  store i32 %and, ptr %vacc0, align 4, !tbaa !11
  %10 = load i32, ptr %vacc1, align 4, !tbaa !11
  %shr2 = lshr i32 %10, 31
  %sub3 = sub i32 %shr2, 1
  %11 = load i32, ptr %vacc1, align 4, !tbaa !11
  %and4 = and i32 %sub3, %11
  store i32 %and4, ptr %vacc1, align 4, !tbaa !11
  %12 = load i32, ptr %vacc0, align 4, !tbaa !11
  %13 = load ptr, ptr %y, align 8, !tbaa !9
  %arrayidx5 = getelementptr inbounds i32, ptr %13, i64 0
  store i32 %12, ptr %arrayidx5, align 4, !tbaa !11
  %14 = load i32, ptr %vacc1, align 4, !tbaa !11
  %15 = load ptr, ptr %y, align 8, !tbaa !9
  %arrayidx6 = getelementptr inbounds i32, ptr %15, i64 1
  store i32 %14, ptr %arrayidx6, align 4, !tbaa !11
  %16 = load ptr, ptr %y, align 8, !tbaa !9
  %add.ptr7 = getelementptr inbounds i32, ptr %16, i64 2
  store ptr %add.ptr7, ptr %y, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub8 = sub i64 %17, 8
  store i64 %sub8, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %18 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp9 = icmp ne i64 %18, 0
  %lnot = xor i1 %cmp9, true
  %lnot10 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot10 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc) #3
  %19 = load ptr, ptr %x, align 8, !tbaa !9
  %20 = load i32, ptr %19, align 4, !tbaa !11
  store i32 %20, ptr %vacc, align 4, !tbaa !11
  %21 = load i32, ptr %vacc, align 4, !tbaa !11
  %shr11 = lshr i32 %21, 31
  %sub12 = sub i32 %shr11, 1
  %22 = load i32, ptr %vacc, align 4, !tbaa !11
  %and13 = and i32 %sub12, %22
  store i32 %and13, ptr %vacc, align 4, !tbaa !11
  %23 = load i32, ptr %vacc, align 4, !tbaa !11
  %24 = load ptr, ptr %y, align 8, !tbaa !9
  store i32 %23, ptr %24, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #3
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
!12 = !{!"int", !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
