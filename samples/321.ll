; ModuleID = 'samples/321.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-vbinary/gen/vdiv-minmax-scalar-x4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { float, float }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_vdiv_minmax_ukernel__scalar_x4(i64 noundef %n, ptr noundef %a, ptr noundef %b, ptr noundef %y, ptr noalias noundef align 32 dereferenceable(128) %params) #0 {
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
  %cmp = icmp uge i64 %4, 16
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %va2) #4
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx2 = getelementptr inbounds float, ptr %9, i64 2
  %10 = load float, ptr %arrayidx2, align 4, !tbaa !12
  store float %10, ptr %va2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %va3) #4
  %11 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx3 = getelementptr inbounds float, ptr %11, i64 3
  %12 = load float, ptr %arrayidx3, align 4, !tbaa !12
  store float %12, ptr %va3, align 4, !tbaa !12
  %13 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %13, i64 4
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb0) #4
  %14 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %arrayidx4 = getelementptr inbounds float, ptr %14, i64 0
  %15 = load float, ptr %arrayidx4, align 4, !tbaa !12
  store float %15, ptr %vb0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb1) #4
  %16 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %arrayidx5 = getelementptr inbounds float, ptr %16, i64 1
  %17 = load float, ptr %arrayidx5, align 4, !tbaa !12
  store float %17, ptr %vb1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb2) #4
  %18 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %arrayidx6 = getelementptr inbounds float, ptr %18, i64 2
  %19 = load float, ptr %arrayidx6, align 4, !tbaa !12
  store float %19, ptr %vb2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb3) #4
  %20 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %arrayidx7 = getelementptr inbounds float, ptr %20, i64 3
  %21 = load float, ptr %arrayidx7, align 4, !tbaa !12
  store float %21, ptr %vb3, align 4, !tbaa !12
  %22 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %add.ptr8 = getelementptr inbounds float, ptr %22, i64 4
  store ptr %add.ptr8, ptr %b.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy0) #4
  %23 = load float, ptr %va0, align 4, !tbaa !12
  %24 = load float, ptr %vb0, align 4, !tbaa !12
  %div = fdiv float %23, %24
  store float %div, ptr %vy0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy1) #4
  %25 = load float, ptr %va1, align 4, !tbaa !12
  %26 = load float, ptr %vb1, align 4, !tbaa !12
  %div9 = fdiv float %25, %26
  store float %div9, ptr %vy1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy2) #4
  %27 = load float, ptr %va2, align 4, !tbaa !12
  %28 = load float, ptr %vb2, align 4, !tbaa !12
  %div10 = fdiv float %27, %28
  store float %div10, ptr %vy2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy3) #4
  %29 = load float, ptr %va3, align 4, !tbaa !12
  %30 = load float, ptr %vb3, align 4, !tbaa !12
  %div11 = fdiv float %29, %30
  store float %div11, ptr %vy3, align 4, !tbaa !12
  %31 = load float, ptr %vy0, align 4, !tbaa !12
  %32 = load float, ptr %vy_min, align 4, !tbaa !12
  %call = call float @math_max_f32(float noundef %31, float noundef %32)
  store float %call, ptr %vy0, align 4, !tbaa !12
  %33 = load float, ptr %vy1, align 4, !tbaa !12
  %34 = load float, ptr %vy_min, align 4, !tbaa !12
  %call12 = call float @math_max_f32(float noundef %33, float noundef %34)
  store float %call12, ptr %vy1, align 4, !tbaa !12
  %35 = load float, ptr %vy2, align 4, !tbaa !12
  %36 = load float, ptr %vy_min, align 4, !tbaa !12
  %call13 = call float @math_max_f32(float noundef %35, float noundef %36)
  store float %call13, ptr %vy2, align 4, !tbaa !12
  %37 = load float, ptr %vy3, align 4, !tbaa !12
  %38 = load float, ptr %vy_min, align 4, !tbaa !12
  %call14 = call float @math_max_f32(float noundef %37, float noundef %38)
  store float %call14, ptr %vy3, align 4, !tbaa !12
  %39 = load float, ptr %vy0, align 4, !tbaa !12
  %40 = load float, ptr %vy_max, align 4, !tbaa !12
  %call15 = call float @math_min_f32(float noundef %39, float noundef %40)
  store float %call15, ptr %vy0, align 4, !tbaa !12
  %41 = load float, ptr %vy1, align 4, !tbaa !12
  %42 = load float, ptr %vy_max, align 4, !tbaa !12
  %call16 = call float @math_min_f32(float noundef %41, float noundef %42)
  store float %call16, ptr %vy1, align 4, !tbaa !12
  %43 = load float, ptr %vy2, align 4, !tbaa !12
  %44 = load float, ptr %vy_max, align 4, !tbaa !12
  %call17 = call float @math_min_f32(float noundef %43, float noundef %44)
  store float %call17, ptr %vy2, align 4, !tbaa !12
  %45 = load float, ptr %vy3, align 4, !tbaa !12
  %46 = load float, ptr %vy_max, align 4, !tbaa !12
  %call18 = call float @math_min_f32(float noundef %45, float noundef %46)
  store float %call18, ptr %vy3, align 4, !tbaa !12
  %47 = load float, ptr %vy0, align 4, !tbaa !12
  %48 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx19 = getelementptr inbounds float, ptr %48, i64 0
  store float %47, ptr %arrayidx19, align 4, !tbaa !12
  %49 = load float, ptr %vy1, align 4, !tbaa !12
  %50 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx20 = getelementptr inbounds float, ptr %50, i64 1
  store float %49, ptr %arrayidx20, align 4, !tbaa !12
  %51 = load float, ptr %vy2, align 4, !tbaa !12
  %52 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx21 = getelementptr inbounds float, ptr %52, i64 2
  store float %51, ptr %arrayidx21, align 4, !tbaa !12
  %53 = load float, ptr %vy3, align 4, !tbaa !12
  %54 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx22 = getelementptr inbounds float, ptr %54, i64 3
  store float %53, ptr %arrayidx22, align 4, !tbaa !12
  %55 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %add.ptr23 = getelementptr inbounds float, ptr %55, i64 4
  store ptr %add.ptr23, ptr %y.addr, align 8, !tbaa !9
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
  %56 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub = sub i64 %56, 16
  store i64 %sub, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %57 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp24 = icmp ne i64 %57, 0
  %lnot = xor i1 %cmp24, true
  %lnot25 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot25 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %va) #4
  %58 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds float, ptr %58, i32 1
  store ptr %incdec.ptr, ptr %a.addr, align 8, !tbaa !9
  %59 = load float, ptr %58, align 4, !tbaa !12
  store float %59, ptr %va, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb) #4
  %60 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %incdec.ptr26 = getelementptr inbounds float, ptr %60, i32 1
  store ptr %incdec.ptr26, ptr %b.addr, align 8, !tbaa !9
  %61 = load float, ptr %60, align 4, !tbaa !12
  store float %61, ptr %vb, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy) #4
  %62 = load float, ptr %va, align 4, !tbaa !12
  %63 = load float, ptr %vb, align 4, !tbaa !12
  %div27 = fdiv float %62, %63
  store float %div27, ptr %vy, align 4, !tbaa !12
  %64 = load float, ptr %vy, align 4, !tbaa !12
  %65 = load float, ptr %vy_min, align 4, !tbaa !12
  %call28 = call float @math_max_f32(float noundef %64, float noundef %65)
  store float %call28, ptr %vy, align 4, !tbaa !12
  %66 = load float, ptr %vy, align 4, !tbaa !12
  %67 = load float, ptr %vy_max, align 4, !tbaa !12
  %call29 = call float @math_min_f32(float noundef %66, float noundef %67)
  store float %call29, ptr %vy, align 4, !tbaa !12
  %68 = load float, ptr %vy, align 4, !tbaa !12
  %69 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %incdec.ptr30 = getelementptr inbounds float, ptr %69, i32 1
  store ptr %incdec.ptr30, ptr %y.addr, align 8, !tbaa !9
  store float %68, ptr %69, align 4, !tbaa !12
  %70 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub31 = sub i64 %70, 4
  store i64 %sub31, ptr %n.addr, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va) #4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %71 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp32 = icmp ne i64 %71, 0
  br i1 %cmp32, label %do.body, label %do.end, !llvm.loop !16

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %for.end
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
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !17

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
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !17

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
!16 = distinct !{!16, !15}
!17 = !{}
