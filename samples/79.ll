; ModuleID = 'samples/79.bc'
source_filename = "/local-ssd/itk-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv-build/aidengro/spack-stage-itk-5.2.1-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv/spack-src/Modules/ThirdParty/VNL/src/vxl/v3p/netlib/lapack/double/dlarfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"E\00", align 1

; Function Attrs: nounwind uwtable
define i32 @v3p_netlib_dlarfg_(ptr noundef %n, ptr noundef %alpha, ptr noundef %x, ptr noundef %incx, ptr noundef %tau) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca ptr, align 8
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca ptr, align 8
  %tau.addr = alloca ptr, align 8
  %i__1 = alloca i64, align 8
  %d__1 = alloca double, align 8
  %j = alloca i64, align 8
  %knt = alloca i64, align 8
  %beta = alloca double, align 8
  %xnorm = alloca double, align 8
  %safmin = alloca double, align 8
  %rsafmn = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %incx, ptr %incx.addr, align 8, !tbaa !4
  store ptr %tau, ptr %tau.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %knt) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %xnorm) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %safmin) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %rsafmn) #3
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds double, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %x.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2 = load i64, ptr %1, align 8, !tbaa !8
  %cmp = icmp sle i64 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  store double 0.000000e+00, ptr %3, align 8, !tbaa !10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %5 = load i64, ptr %4, align 8, !tbaa !8
  %sub = sub nsw i64 %5, 1
  store i64 %sub, ptr %i__1, align 8, !tbaa !8
  %6 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds double, ptr %6, i64 1
  %7 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %call = call double @v3p_netlib_dnrm2_(ptr noundef %i__1, ptr noundef %arrayidx, ptr noundef %7)
  store double %call, ptr %xnorm, align 8, !tbaa !10
  %8 = load double, ptr %xnorm, align 8, !tbaa !10
  %cmp1 = fcmp oeq double %8, 0.000000e+00
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %9 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  store double 0.000000e+00, ptr %9, align 8, !tbaa !10
  br label %if.end50

if.else:                                          ; preds = %if.end
  %10 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %call3 = call double @v3p_netlib_dlapy2_(ptr noundef %10, ptr noundef %xnorm)
  store double %call3, ptr %d__1, align 8, !tbaa !10
  %11 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %call4 = call double @v3p_netlib_d_sign(ptr noundef %d__1, ptr noundef %11)
  %fneg = fneg double %call4
  store double %fneg, ptr %beta, align 8, !tbaa !10
  %call5 = call double @v3p_netlib_dlamch_(ptr noundef @.str, i64 noundef 1)
  %call6 = call double @v3p_netlib_dlamch_(ptr noundef @.str.1, i64 noundef 1)
  %div = fdiv double %call5, %call6
  store double %div, ptr %safmin, align 8, !tbaa !10
  %12 = load double, ptr %beta, align 8, !tbaa !10
  %cmp7 = fcmp oge double %12, 0.000000e+00
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %13 = load double, ptr %beta, align 8, !tbaa !10
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %14 = load double, ptr %beta, align 8, !tbaa !10
  %fneg8 = fneg double %14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %13, %cond.true ], [ %fneg8, %cond.false ]
  %15 = load double, ptr %safmin, align 8, !tbaa !10
  %cmp9 = fcmp olt double %cond, %15
  br i1 %cmp9, label %if.then10, label %if.else41

if.then10:                                        ; preds = %cond.end
  %16 = load double, ptr %safmin, align 8, !tbaa !10
  %div11 = fdiv double 1.000000e+00, %16
  store double %div11, ptr %rsafmn, align 8, !tbaa !10
  store i64 0, ptr %knt, align 8, !tbaa !8
  br label %L10

L10:                                              ; preds = %if.then23, %if.then10
  %17 = load i64, ptr %knt, align 8, !tbaa !8
  %inc = add nsw i64 %17, 1
  store i64 %inc, ptr %knt, align 8, !tbaa !8
  %18 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %19 = load i64, ptr %18, align 8, !tbaa !8
  %sub12 = sub nsw i64 %19, 1
  store i64 %sub12, ptr %i__1, align 8, !tbaa !8
  %20 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx13 = getelementptr inbounds double, ptr %20, i64 1
  %21 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %call14 = call i32 @v3p_netlib_dscal_(ptr noundef %i__1, ptr noundef %rsafmn, ptr noundef %arrayidx13, ptr noundef %21)
  %22 = load double, ptr %rsafmn, align 8, !tbaa !10
  %23 = load double, ptr %beta, align 8, !tbaa !10
  %mul = fmul double %23, %22
  store double %mul, ptr %beta, align 8, !tbaa !10
  %24 = load double, ptr %rsafmn, align 8, !tbaa !10
  %25 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %26 = load double, ptr %25, align 8, !tbaa !10
  %mul15 = fmul double %26, %24
  store double %mul15, ptr %25, align 8, !tbaa !10
  %27 = load double, ptr %beta, align 8, !tbaa !10
  %cmp16 = fcmp oge double %27, 0.000000e+00
  br i1 %cmp16, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %L10
  %28 = load double, ptr %beta, align 8, !tbaa !10
  br label %cond.end20

cond.false18:                                     ; preds = %L10
  %29 = load double, ptr %beta, align 8, !tbaa !10
  %fneg19 = fneg double %29
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false18, %cond.true17
  %cond21 = phi double [ %28, %cond.true17 ], [ %fneg19, %cond.false18 ]
  %30 = load double, ptr %safmin, align 8, !tbaa !10
  %cmp22 = fcmp olt double %cond21, %30
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %cond.end20
  br label %L10

if.end24:                                         ; preds = %cond.end20
  %31 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %32 = load i64, ptr %31, align 8, !tbaa !8
  %sub25 = sub nsw i64 %32, 1
  store i64 %sub25, ptr %i__1, align 8, !tbaa !8
  %33 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx26 = getelementptr inbounds double, ptr %33, i64 1
  %34 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %call27 = call double @v3p_netlib_dnrm2_(ptr noundef %i__1, ptr noundef %arrayidx26, ptr noundef %34)
  store double %call27, ptr %xnorm, align 8, !tbaa !10
  %35 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %call28 = call double @v3p_netlib_dlapy2_(ptr noundef %35, ptr noundef %xnorm)
  store double %call28, ptr %d__1, align 8, !tbaa !10
  %36 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %call29 = call double @v3p_netlib_d_sign(ptr noundef %d__1, ptr noundef %36)
  %fneg30 = fneg double %call29
  store double %fneg30, ptr %beta, align 8, !tbaa !10
  %37 = load double, ptr %beta, align 8, !tbaa !10
  %38 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %39 = load double, ptr %38, align 8, !tbaa !10
  %sub31 = fsub double %37, %39
  %40 = load double, ptr %beta, align 8, !tbaa !10
  %div32 = fdiv double %sub31, %40
  %41 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  store double %div32, ptr %41, align 8, !tbaa !10
  %42 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %43 = load i64, ptr %42, align 8, !tbaa !8
  %sub33 = sub nsw i64 %43, 1
  store i64 %sub33, ptr %i__1, align 8, !tbaa !8
  %44 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %45 = load double, ptr %44, align 8, !tbaa !10
  %46 = load double, ptr %beta, align 8, !tbaa !10
  %sub34 = fsub double %45, %46
  %div35 = fdiv double 1.000000e+00, %sub34
  store double %div35, ptr %d__1, align 8, !tbaa !10
  %47 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx36 = getelementptr inbounds double, ptr %47, i64 1
  %48 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %call37 = call i32 @v3p_netlib_dscal_(ptr noundef %i__1, ptr noundef %d__1, ptr noundef %arrayidx36, ptr noundef %48)
  %49 = load double, ptr %beta, align 8, !tbaa !10
  %50 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  store double %49, ptr %50, align 8, !tbaa !10
  %51 = load i64, ptr %knt, align 8, !tbaa !8
  store i64 %51, ptr %i__1, align 8, !tbaa !8
  store i64 1, ptr %j, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end24
  %52 = load i64, ptr %j, align 8, !tbaa !8
  %53 = load i64, ptr %i__1, align 8, !tbaa !8
  %cmp38 = icmp sle i64 %52, %53
  br i1 %cmp38, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = load double, ptr %safmin, align 8, !tbaa !10
  %55 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %56 = load double, ptr %55, align 8, !tbaa !10
  %mul39 = fmul double %56, %54
  store double %mul39, ptr %55, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %57 = load i64, ptr %j, align 8, !tbaa !8
  %inc40 = add nsw i64 %57, 1
  store i64 %inc40, ptr %j, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  br label %if.end49

if.else41:                                        ; preds = %cond.end
  %58 = load double, ptr %beta, align 8, !tbaa !10
  %59 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %60 = load double, ptr %59, align 8, !tbaa !10
  %sub42 = fsub double %58, %60
  %61 = load double, ptr %beta, align 8, !tbaa !10
  %div43 = fdiv double %sub42, %61
  %62 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  store double %div43, ptr %62, align 8, !tbaa !10
  %63 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %64 = load i64, ptr %63, align 8, !tbaa !8
  %sub44 = sub nsw i64 %64, 1
  store i64 %sub44, ptr %i__1, align 8, !tbaa !8
  %65 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %66 = load double, ptr %65, align 8, !tbaa !10
  %67 = load double, ptr %beta, align 8, !tbaa !10
  %sub45 = fsub double %66, %67
  %div46 = fdiv double 1.000000e+00, %sub45
  store double %div46, ptr %d__1, align 8, !tbaa !10
  %68 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx47 = getelementptr inbounds double, ptr %68, i64 1
  %69 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %call48 = call i32 @v3p_netlib_dscal_(ptr noundef %i__1, ptr noundef %d__1, ptr noundef %arrayidx47, ptr noundef %69)
  %70 = load double, ptr %beta, align 8, !tbaa !10
  %71 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  store double %70, ptr %71, align 8, !tbaa !10
  br label %if.end49

if.end49:                                         ; preds = %if.else41, %for.end
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then2
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rsafmn) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %safmin) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %xnorm) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %knt) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i__1) #3
  %72 = load i32, ptr %retval, align 4
  ret i32 %72
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare double @v3p_netlib_dnrm2_(ptr noundef, ptr noundef, ptr noundef) #2

declare double @v3p_netlib_dlapy2_(ptr noundef, ptr noundef) #2

declare double @v3p_netlib_d_sign(ptr noundef, ptr noundef) #2

declare double @v3p_netlib_dlamch_(ptr noundef, i64 noundef) #2

declare i32 @v3p_netlib_dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
