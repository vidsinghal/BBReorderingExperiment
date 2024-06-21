; ModuleID = 'samples/70.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-vlrelu/gen/vlrelu-scalar-x4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { float }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_vlrelu_ukernel__scalar_x4(i64 noundef %n, ptr noundef %x, ptr noundef %y, ptr noalias noundef align 32 dereferenceable(96) %params) #0 {
entry:
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %vslope = alloca float, align 4
  %vx0 = alloca float, align 4
  %vx1 = alloca float, align 4
  %vx2 = alloca float, align 4
  %vx3 = alloca float, align 4
  %vacc0 = alloca float, align 4
  %vacc1 = alloca float, align 4
  %vacc2 = alloca float, align 4
  %vacc3 = alloca float, align 4
  %vx = alloca float, align 4
  %vacc = alloca float, align 4
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vslope) #3
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %slope = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 0
  %1 = load float, ptr %slope, align 32, !tbaa !11
  store float %1, ptr %vslope, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp uge i64 %2, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %vx0) #3
  %3 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds float, ptr %3, i64 0
  %4 = load float, ptr %arrayidx, align 4, !tbaa !12
  store float %4, ptr %vx0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vx1) #3
  %5 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %arrayidx1 = getelementptr inbounds float, ptr %5, i64 1
  %6 = load float, ptr %arrayidx1, align 4, !tbaa !12
  store float %6, ptr %vx1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vx2) #3
  %7 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %arrayidx2 = getelementptr inbounds float, ptr %7, i64 2
  %8 = load float, ptr %arrayidx2, align 4, !tbaa !12
  store float %8, ptr %vx2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vx3) #3
  %9 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %arrayidx3 = getelementptr inbounds float, ptr %9, i64 3
  %10 = load float, ptr %arrayidx3, align 4, !tbaa !12
  store float %10, ptr %vx3, align 4, !tbaa !12
  %11 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %11, i64 4
  store ptr %add.ptr, ptr %x.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc0) #3
  %12 = load float, ptr %vx0, align 4, !tbaa !12
  %13 = load float, ptr %vslope, align 4, !tbaa !12
  %mul = fmul float %12, %13
  store float %mul, ptr %vacc0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc1) #3
  %14 = load float, ptr %vx1, align 4, !tbaa !12
  %15 = load float, ptr %vslope, align 4, !tbaa !12
  %mul4 = fmul float %14, %15
  store float %mul4, ptr %vacc1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc2) #3
  %16 = load float, ptr %vx2, align 4, !tbaa !12
  %17 = load float, ptr %vslope, align 4, !tbaa !12
  %mul5 = fmul float %16, %17
  store float %mul5, ptr %vacc2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc3) #3
  %18 = load float, ptr %vx3, align 4, !tbaa !12
  %19 = load float, ptr %vslope, align 4, !tbaa !12
  %mul6 = fmul float %18, %19
  store float %mul6, ptr %vacc3, align 4, !tbaa !12
  %20 = load float, ptr %vx0, align 4, !tbaa !12
  %cmp7 = fcmp olt float %20, 0.000000e+00
  %lnot = xor i1 %cmp7, true
  %lnot8 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot8 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !14

cond.true:                                        ; preds = %for.body
  %21 = load float, ptr %vacc0, align 4, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %22 = load float, ptr %vx0, align 4, !tbaa !12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %21, %cond.true ], [ %22, %cond.false ]
  store float %cond, ptr %vacc0, align 4, !tbaa !12
  %23 = load float, ptr %vx1, align 4, !tbaa !12
  %cmp9 = fcmp olt float %23, 0.000000e+00
  %lnot11 = xor i1 %cmp9, true
  %lnot13 = xor i1 %lnot11, true
  %lnot.ext14 = zext i1 %lnot13 to i32
  %conv15 = sext i32 %lnot.ext14 to i64
  %tobool16 = icmp ne i64 %conv15, 0
  br i1 %tobool16, label %cond.true17, label %cond.false18, !unpredictable !14

cond.true17:                                      ; preds = %cond.end
  %24 = load float, ptr %vacc1, align 4, !tbaa !12
  br label %cond.end19

cond.false18:                                     ; preds = %cond.end
  %25 = load float, ptr %vx1, align 4, !tbaa !12
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false18, %cond.true17
  %cond20 = phi float [ %24, %cond.true17 ], [ %25, %cond.false18 ]
  store float %cond20, ptr %vacc1, align 4, !tbaa !12
  %26 = load float, ptr %vx2, align 4, !tbaa !12
  %cmp21 = fcmp olt float %26, 0.000000e+00
  %lnot23 = xor i1 %cmp21, true
  %lnot25 = xor i1 %lnot23, true
  %lnot.ext26 = zext i1 %lnot25 to i32
  %conv27 = sext i32 %lnot.ext26 to i64
  %tobool28 = icmp ne i64 %conv27, 0
  br i1 %tobool28, label %cond.true29, label %cond.false30, !unpredictable !14

cond.true29:                                      ; preds = %cond.end19
  %27 = load float, ptr %vacc2, align 4, !tbaa !12
  br label %cond.end31

cond.false30:                                     ; preds = %cond.end19
  %28 = load float, ptr %vx2, align 4, !tbaa !12
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false30, %cond.true29
  %cond32 = phi float [ %27, %cond.true29 ], [ %28, %cond.false30 ]
  store float %cond32, ptr %vacc2, align 4, !tbaa !12
  %29 = load float, ptr %vx3, align 4, !tbaa !12
  %cmp33 = fcmp olt float %29, 0.000000e+00
  %lnot35 = xor i1 %cmp33, true
  %lnot37 = xor i1 %lnot35, true
  %lnot.ext38 = zext i1 %lnot37 to i32
  %conv39 = sext i32 %lnot.ext38 to i64
  %tobool40 = icmp ne i64 %conv39, 0
  br i1 %tobool40, label %cond.true41, label %cond.false42, !unpredictable !14

cond.true41:                                      ; preds = %cond.end31
  %30 = load float, ptr %vacc3, align 4, !tbaa !12
  br label %cond.end43

cond.false42:                                     ; preds = %cond.end31
  %31 = load float, ptr %vx3, align 4, !tbaa !12
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false42, %cond.true41
  %cond44 = phi float [ %30, %cond.true41 ], [ %31, %cond.false42 ]
  store float %cond44, ptr %vacc3, align 4, !tbaa !12
  %32 = load float, ptr %vacc0, align 4, !tbaa !12
  %33 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx45 = getelementptr inbounds float, ptr %33, i64 0
  store float %32, ptr %arrayidx45, align 4, !tbaa !12
  %34 = load float, ptr %vacc1, align 4, !tbaa !12
  %35 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx46 = getelementptr inbounds float, ptr %35, i64 1
  store float %34, ptr %arrayidx46, align 4, !tbaa !12
  %36 = load float, ptr %vacc2, align 4, !tbaa !12
  %37 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx47 = getelementptr inbounds float, ptr %37, i64 2
  store float %36, ptr %arrayidx47, align 4, !tbaa !12
  %38 = load float, ptr %vacc3, align 4, !tbaa !12
  %39 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx48 = getelementptr inbounds float, ptr %39, i64 3
  store float %38, ptr %arrayidx48, align 4, !tbaa !12
  %40 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %add.ptr49 = getelementptr inbounds float, ptr %40, i64 4
  store ptr %add.ptr49, ptr %y.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc0) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vx3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vx2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vx1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vx0) #3
  br label %for.inc

for.inc:                                          ; preds = %cond.end43
  %41 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub = sub i64 %41, 16
  store i64 %sub, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %42 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp50 = icmp ne i64 %42, 0
  %lnot52 = xor i1 %cmp50, true
  %lnot54 = xor i1 %lnot52, true
  %lnot.ext55 = zext i1 %lnot54 to i32
  %conv56 = sext i32 %lnot.ext55 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv56, i64 0)
  %tobool57 = icmp ne i64 %expval, 0
  br i1 %tobool57, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %vx) #3
  %43 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds float, ptr %43, i32 1
  store ptr %incdec.ptr, ptr %x.addr, align 8, !tbaa !9
  %44 = load float, ptr %43, align 4, !tbaa !12
  store float %44, ptr %vx, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vacc) #3
  %45 = load float, ptr %vx, align 4, !tbaa !12
  %46 = load float, ptr %vslope, align 4, !tbaa !12
  %mul58 = fmul float %45, %46
  store float %mul58, ptr %vacc, align 4, !tbaa !12
  %47 = load float, ptr %vx, align 4, !tbaa !12
  %cmp59 = fcmp olt float %47, 0.000000e+00
  %lnot61 = xor i1 %cmp59, true
  %lnot63 = xor i1 %lnot61, true
  %lnot.ext64 = zext i1 %lnot63 to i32
  %conv65 = sext i32 %lnot.ext64 to i64
  %tobool66 = icmp ne i64 %conv65, 0
  br i1 %tobool66, label %cond.true67, label %cond.false68, !unpredictable !14

cond.true67:                                      ; preds = %do.body
  %48 = load float, ptr %vacc, align 4, !tbaa !12
  br label %cond.end69

cond.false68:                                     ; preds = %do.body
  %49 = load float, ptr %vx, align 4, !tbaa !12
  br label %cond.end69

cond.end69:                                       ; preds = %cond.false68, %cond.true67
  %cond70 = phi float [ %48, %cond.true67 ], [ %49, %cond.false68 ]
  store float %cond70, ptr %vacc, align 4, !tbaa !12
  %50 = load float, ptr %vacc, align 4, !tbaa !12
  %51 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %incdec.ptr71 = getelementptr inbounds float, ptr %51, i32 1
  store ptr %incdec.ptr71, ptr %y.addr, align 8, !tbaa !9
  store float %50, ptr %51, align 4, !tbaa !12
  %52 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub72 = sub i64 %52, 4
  store i64 %sub72, ptr %n.addr, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vacc) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vx) #3
  br label %do.cond

do.cond:                                          ; preds = %cond.end69
  %53 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp73 = icmp ne i64 %53, 0
  br i1 %cmp73, label %do.body, label %do.end, !llvm.loop !17

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %vslope) #3
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
!11 = !{!7, !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !7, i64 0}
!14 = !{}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
