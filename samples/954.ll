; ModuleID = 'samples/954.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-vbinary/gen/vdiv-relu-scalar-x4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_vdiv_relu_ukernel__scalar_x4(i64 noundef %n, ptr noundef %a, ptr noundef %b, ptr noundef %y, ptr noalias noundef align 1 dereferenceable(1) %params) #0 {
entry:
  %n.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %va0 = alloca float, align 4
  %va1 = alloca float, align 4
  %va2 = alloca float, align 4
  %va3 = alloca float, align 4
  %vb0 = alloca float, align 4
  %vb1 = alloca float, align 4
  %vb2 = alloca float, align 4
  %vb3 = alloca float, align 4
  %vy0 = alloca float, align 4
  %vy1 = alloca float, align 4
  %vy2 = alloca float, align 4
  %vy3 = alloca float, align 4
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
  %cmp = icmp uge i64 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %va0) #4
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds float, ptr %1, i64 0
  %2 = load float, ptr %arrayidx, align 4, !tbaa !11
  store float %2, ptr %va0, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %va1) #4
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx1 = getelementptr inbounds float, ptr %3, i64 1
  %4 = load float, ptr %arrayidx1, align 4, !tbaa !11
  store float %4, ptr %va1, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %va2) #4
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx2 = getelementptr inbounds float, ptr %5, i64 2
  %6 = load float, ptr %arrayidx2, align 4, !tbaa !11
  store float %6, ptr %va2, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %va3) #4
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx3 = getelementptr inbounds float, ptr %7, i64 3
  %8 = load float, ptr %arrayidx3, align 4, !tbaa !11
  store float %8, ptr %va3, align 4, !tbaa !11
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %9, i64 4
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb0) #4
  %10 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %arrayidx4 = getelementptr inbounds float, ptr %10, i64 0
  %11 = load float, ptr %arrayidx4, align 4, !tbaa !11
  store float %11, ptr %vb0, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb1) #4
  %12 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %arrayidx5 = getelementptr inbounds float, ptr %12, i64 1
  %13 = load float, ptr %arrayidx5, align 4, !tbaa !11
  store float %13, ptr %vb1, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb2) #4
  %14 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %arrayidx6 = getelementptr inbounds float, ptr %14, i64 2
  %15 = load float, ptr %arrayidx6, align 4, !tbaa !11
  store float %15, ptr %vb2, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb3) #4
  %16 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %arrayidx7 = getelementptr inbounds float, ptr %16, i64 3
  %17 = load float, ptr %arrayidx7, align 4, !tbaa !11
  store float %17, ptr %vb3, align 4, !tbaa !11
  %18 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %add.ptr8 = getelementptr inbounds float, ptr %18, i64 4
  store ptr %add.ptr8, ptr %b.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy0) #4
  %19 = load float, ptr %va0, align 4, !tbaa !11
  %20 = load float, ptr %vb0, align 4, !tbaa !11
  %div = fdiv float %19, %20
  store float %div, ptr %vy0, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy1) #4
  %21 = load float, ptr %va1, align 4, !tbaa !11
  %22 = load float, ptr %vb1, align 4, !tbaa !11
  %div9 = fdiv float %21, %22
  store float %div9, ptr %vy1, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy2) #4
  %23 = load float, ptr %va2, align 4, !tbaa !11
  %24 = load float, ptr %vb2, align 4, !tbaa !11
  %div10 = fdiv float %23, %24
  store float %div10, ptr %vy2, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy3) #4
  %25 = load float, ptr %va3, align 4, !tbaa !11
  %26 = load float, ptr %vb3, align 4, !tbaa !11
  %div11 = fdiv float %25, %26
  store float %div11, ptr %vy3, align 4, !tbaa !11
  %27 = load float, ptr %vy0, align 4, !tbaa !11
  %call = call float @math_max_f32(float noundef %27, float noundef 0.000000e+00)
  store float %call, ptr %vy0, align 4, !tbaa !11
  %28 = load float, ptr %vy1, align 4, !tbaa !11
  %call12 = call float @math_max_f32(float noundef %28, float noundef 0.000000e+00)
  store float %call12, ptr %vy1, align 4, !tbaa !11
  %29 = load float, ptr %vy2, align 4, !tbaa !11
  %call13 = call float @math_max_f32(float noundef %29, float noundef 0.000000e+00)
  store float %call13, ptr %vy2, align 4, !tbaa !11
  %30 = load float, ptr %vy3, align 4, !tbaa !11
  %call14 = call float @math_max_f32(float noundef %30, float noundef 0.000000e+00)
  store float %call14, ptr %vy3, align 4, !tbaa !11
  %31 = load float, ptr %vy0, align 4, !tbaa !11
  %32 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx15 = getelementptr inbounds float, ptr %32, i64 0
  store float %31, ptr %arrayidx15, align 4, !tbaa !11
  %33 = load float, ptr %vy1, align 4, !tbaa !11
  %34 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx16 = getelementptr inbounds float, ptr %34, i64 1
  store float %33, ptr %arrayidx16, align 4, !tbaa !11
  %35 = load float, ptr %vy2, align 4, !tbaa !11
  %36 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx17 = getelementptr inbounds float, ptr %36, i64 2
  store float %35, ptr %arrayidx17, align 4, !tbaa !11
  %37 = load float, ptr %vy3, align 4, !tbaa !11
  %38 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx18 = getelementptr inbounds float, ptr %38, i64 3
  store float %37, ptr %arrayidx18, align 4, !tbaa !11
  %39 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %add.ptr19 = getelementptr inbounds float, ptr %39, i64 4
  store ptr %add.ptr19, ptr %y.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va0) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub = sub i64 %40, 16
  store i64 %sub, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %41 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp20 = icmp ne i64 %41, 0
  %lnot = xor i1 %cmp20, true
  %lnot21 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot21 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %va) #4
  %42 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds float, ptr %42, i32 1
  store ptr %incdec.ptr, ptr %a.addr, align 8, !tbaa !9
  %43 = load float, ptr %42, align 4, !tbaa !11
  store float %43, ptr %va, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb) #4
  %44 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %incdec.ptr22 = getelementptr inbounds float, ptr %44, i32 1
  store ptr %incdec.ptr22, ptr %b.addr, align 8, !tbaa !9
  %45 = load float, ptr %44, align 4, !tbaa !11
  store float %45, ptr %vb, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy) #4
  %46 = load float, ptr %va, align 4, !tbaa !11
  %47 = load float, ptr %vb, align 4, !tbaa !11
  %div23 = fdiv float %46, %47
  store float %div23, ptr %vy, align 4, !tbaa !11
  %48 = load float, ptr %vy, align 4, !tbaa !11
  %call24 = call float @math_max_f32(float noundef %48, float noundef 0.000000e+00)
  store float %call24, ptr %vy, align 4, !tbaa !11
  %49 = load float, ptr %vy, align 4, !tbaa !11
  %50 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %incdec.ptr25 = getelementptr inbounds float, ptr %50, i32 1
  store ptr %incdec.ptr25, ptr %y.addr, align 8, !tbaa !9
  store float %49, ptr %50, align 4, !tbaa !11
  %51 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub26 = sub i64 %51, 4
  store i64 %sub26, ptr %n.addr, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va) #4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %52 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp27 = icmp ne i64 %52, 0
  br i1 %cmp27, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %for.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal float @math_max_f32(float noundef %a, float noundef %b) #2 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, ptr %a.addr, align 4, !tbaa !11
  store float %b, ptr %b.addr, align 4, !tbaa !11
  %0 = load float, ptr %b.addr, align 4, !tbaa !11
  %1 = load float, ptr %a.addr, align 4, !tbaa !11
  %cmp = fcmp olt float %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !16

cond.true:                                        ; preds = %entry
  %2 = load float, ptr %a.addr, align 4, !tbaa !11
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load float, ptr %b.addr, align 4, !tbaa !11
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
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{}
