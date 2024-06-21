; ModuleID = 'samples/824.bc'
source_filename = "/local-ssd/itk-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv-build/aidengro/spack-stage-itk-5.2.1-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv/spack-src/Modules/ThirdParty/VNL/src/vxl/v3p/netlib/temperton/setgpfa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c__2 = internal global i64 2, align 8
@c__3 = internal global i64 3, align 8
@c__5 = internal global i64 5, align 8

; Function Attrs: nounwind uwtable
define i32 @v3p_netlib_setgpfa_(ptr noundef %trigs, ptr noundef %n, ptr noundef %npqr, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %trigs.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %npqr.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %i__1 = alloca i64, align 8
  %i__ = alloca i64, align 8
  %k = alloca i64, align 8
  %kk = alloca i64, align 8
  %ni = alloca i64, align 8
  %nj = alloca [3 x i64], align 16
  %ll = alloca i64, align 8
  %ip = alloca i64, align 8
  %iq = alloca i64, align 8
  %nn = alloca i64, align 8
  %ir = alloca i64, align 8
  %del = alloca float, align 4
  %ifac = alloca i64, align 8
  %kink = alloca i64, align 8
  %irot = alloca i64, align 8
  %angle = alloca float, align 4
  %twopi = alloca float, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %trigs, ptr %trigs.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %npqr, ptr %npqr.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i__1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i__) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kk) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ni) #4
  call void @llvm.lifetime.start.p0(i64 24, ptr %nj) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ll) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %iq) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nn) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ir) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %del) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ifac) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kink) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %irot) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %angle) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %twopi) #4
  %0 = load ptr, ptr %npqr.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i64, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %npqr.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %trigs.addr, align 8, !tbaa !4
  %incdec.ptr1 = getelementptr inbounds float, ptr %1, i32 -1
  store ptr %incdec.ptr1, ptr %trigs.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i64 0, ptr %2, align 8, !tbaa !8
  %3 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %4 = load i64, ptr %3, align 8, !tbaa !8
  store i64 %4, ptr %nn, align 8, !tbaa !8
  store i64 2, ptr %ifac, align 8, !tbaa !8
  store i64 1, ptr %ll, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, ptr %ll, align 8, !tbaa !8
  %cmp = icmp sle i64 %5, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %kk, align 8, !tbaa !8
  br label %L10

L10:                                              ; preds = %if.end, %for.body
  %6 = load i64, ptr %nn, align 8, !tbaa !8
  %7 = load i64, ptr %ifac, align 8, !tbaa !8
  %rem = srem i64 %6, %7
  %cmp2 = icmp ne i64 %rem, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %L10
  br label %L20

if.end:                                           ; preds = %L10
  %8 = load i64, ptr %kk, align 8, !tbaa !8
  %inc = add nsw i64 %8, 1
  store i64 %inc, ptr %kk, align 8, !tbaa !8
  %9 = load i64, ptr %ifac, align 8, !tbaa !8
  %10 = load i64, ptr %nn, align 8, !tbaa !8
  %div = sdiv i64 %10, %9
  store i64 %div, ptr %nn, align 8, !tbaa !8
  br label %L10

L20:                                              ; preds = %if.then
  %11 = load i64, ptr %kk, align 8, !tbaa !8
  %12 = load ptr, ptr %npqr.addr, align 8, !tbaa !4
  %13 = load i64, ptr %ll, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i64, ptr %12, i64 %13
  store i64 %11, ptr %arrayidx, align 8, !tbaa !8
  %14 = load i64, ptr %ll, align 8, !tbaa !8
  %15 = load i64, ptr %ifac, align 8, !tbaa !8
  %add = add nsw i64 %15, %14
  store i64 %add, ptr %ifac, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %L20
  %16 = load i64, ptr %ll, align 8, !tbaa !8
  %inc3 = add nsw i64 %16, 1
  store i64 %inc3, ptr %ll, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %17 = load i64, ptr %nn, align 8, !tbaa !8
  %cmp4 = icmp ne i64 %17, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.end
  %18 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i64 -1, ptr %18, align 8, !tbaa !8
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %for.end
  %19 = load ptr, ptr %npqr.addr, align 8, !tbaa !4
  %arrayidx7 = getelementptr inbounds i64, ptr %19, i64 1
  %20 = load i64, ptr %arrayidx7, align 8, !tbaa !8
  store i64 %20, ptr %ip, align 8, !tbaa !8
  %21 = load ptr, ptr %npqr.addr, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds i64, ptr %21, i64 2
  %22 = load i64, ptr %arrayidx8, align 8, !tbaa !8
  store i64 %22, ptr %iq, align 8, !tbaa !8
  %23 = load ptr, ptr %npqr.addr, align 8, !tbaa !4
  %arrayidx9 = getelementptr inbounds i64, ptr %23, i64 3
  %24 = load i64, ptr %arrayidx9, align 8, !tbaa !8
  store i64 %24, ptr %ir, align 8, !tbaa !8
  %call = call i64 @v3p_netlib_pow_ii(ptr noundef @c__2, ptr noundef %ip)
  %arrayidx10 = getelementptr inbounds [3 x i64], ptr %nj, i64 0, i64 0
  store i64 %call, ptr %arrayidx10, align 16, !tbaa !8
  %call11 = call i64 @v3p_netlib_pow_ii(ptr noundef @c__3, ptr noundef %iq)
  %arrayidx12 = getelementptr inbounds [3 x i64], ptr %nj, i64 0, i64 1
  store i64 %call11, ptr %arrayidx12, align 8, !tbaa !8
  %call13 = call i64 @v3p_netlib_pow_ii(ptr noundef @c__5, ptr noundef %ir)
  %arrayidx14 = getelementptr inbounds [3 x i64], ptr %nj, i64 0, i64 2
  store i64 %call13, ptr %arrayidx14, align 16, !tbaa !8
  %call15 = call double @asin(double noundef 1.000000e+00) #4
  %mul = fmul double %call15, 4.000000e+00
  %conv = fptrunc double %mul to float
  store float %conv, ptr %twopi, align 4, !tbaa !12
  store i64 1, ptr %i__, align 8, !tbaa !8
  store i64 1, ptr %ll, align 8, !tbaa !8
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc54, %if.end6
  %25 = load i64, ptr %ll, align 8, !tbaa !8
  %cmp17 = icmp sle i64 %25, 3
  br i1 %cmp17, label %for.body19, label %for.end56

for.body19:                                       ; preds = %for.cond16
  %26 = load i64, ptr %ll, align 8, !tbaa !8
  %sub = sub nsw i64 %26, 1
  %arrayidx20 = getelementptr inbounds [3 x i64], ptr %nj, i64 0, i64 %sub
  %27 = load i64, ptr %arrayidx20, align 8, !tbaa !8
  store i64 %27, ptr %ni, align 8, !tbaa !8
  %28 = load i64, ptr %ni, align 8, !tbaa !8
  %cmp21 = icmp eq i64 %28, 1
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.body19
  br label %L60

if.end24:                                         ; preds = %for.body19
  %29 = load float, ptr %twopi, align 4, !tbaa !12
  %30 = load i64, ptr %ni, align 8, !tbaa !8
  %conv25 = sitofp i64 %30 to float
  %div26 = fdiv float %29, %conv25
  store float %div26, ptr %del, align 4, !tbaa !12
  %31 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %32 = load i64, ptr %31, align 8, !tbaa !8
  %33 = load i64, ptr %ni, align 8, !tbaa !8
  %div27 = sdiv i64 %32, %33
  store i64 %div27, ptr %irot, align 8, !tbaa !8
  %34 = load i64, ptr %irot, align 8, !tbaa !8
  %35 = load i64, ptr %ni, align 8, !tbaa !8
  %rem28 = srem i64 %34, %35
  store i64 %rem28, ptr %kink, align 8, !tbaa !8
  store i64 0, ptr %kk, align 8, !tbaa !8
  %36 = load i64, ptr %ni, align 8, !tbaa !8
  store i64 %36, ptr %i__1, align 8, !tbaa !8
  store i64 1, ptr %k, align 8, !tbaa !8
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc51, %if.end24
  %37 = load i64, ptr %k, align 8, !tbaa !8
  %38 = load i64, ptr %i__1, align 8, !tbaa !8
  %cmp30 = icmp sle i64 %37, %38
  br i1 %cmp30, label %for.body32, label %for.end53

for.body32:                                       ; preds = %for.cond29
  %39 = load i64, ptr %kk, align 8, !tbaa !8
  %conv33 = sitofp i64 %39 to float
  %40 = load float, ptr %del, align 4, !tbaa !12
  %mul34 = fmul float %conv33, %40
  store float %mul34, ptr %angle, align 4, !tbaa !12
  %41 = load float, ptr %angle, align 4, !tbaa !12
  %conv35 = fpext float %41 to double
  %call36 = call double @cos(double noundef %conv35) #4
  %conv37 = fptrunc double %call36 to float
  %42 = load ptr, ptr %trigs.addr, align 8, !tbaa !4
  %43 = load i64, ptr %i__, align 8, !tbaa !8
  %arrayidx38 = getelementptr inbounds float, ptr %42, i64 %43
  store float %conv37, ptr %arrayidx38, align 4, !tbaa !12
  %44 = load float, ptr %angle, align 4, !tbaa !12
  %conv39 = fpext float %44 to double
  %call40 = call double @sin(double noundef %conv39) #4
  %conv41 = fptrunc double %call40 to float
  %45 = load ptr, ptr %trigs.addr, align 8, !tbaa !4
  %46 = load i64, ptr %i__, align 8, !tbaa !8
  %add42 = add nsw i64 %46, 1
  %arrayidx43 = getelementptr inbounds float, ptr %45, i64 %add42
  store float %conv41, ptr %arrayidx43, align 4, !tbaa !12
  %47 = load i64, ptr %i__, align 8, !tbaa !8
  %add44 = add nsw i64 %47, 2
  store i64 %add44, ptr %i__, align 8, !tbaa !8
  %48 = load i64, ptr %kink, align 8, !tbaa !8
  %49 = load i64, ptr %kk, align 8, !tbaa !8
  %add45 = add nsw i64 %49, %48
  store i64 %add45, ptr %kk, align 8, !tbaa !8
  %50 = load i64, ptr %kk, align 8, !tbaa !8
  %51 = load i64, ptr %ni, align 8, !tbaa !8
  %cmp46 = icmp sgt i64 %50, %51
  br i1 %cmp46, label %if.then48, label %if.end50

if.then48:                                        ; preds = %for.body32
  %52 = load i64, ptr %ni, align 8, !tbaa !8
  %53 = load i64, ptr %kk, align 8, !tbaa !8
  %sub49 = sub nsw i64 %53, %52
  store i64 %sub49, ptr %kk, align 8, !tbaa !8
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %for.body32
  br label %for.inc51

for.inc51:                                        ; preds = %if.end50
  %54 = load i64, ptr %k, align 8, !tbaa !8
  %inc52 = add nsw i64 %54, 1
  store i64 %inc52, ptr %k, align 8, !tbaa !8
  br label %for.cond29, !llvm.loop !14

for.end53:                                        ; preds = %for.cond29
  br label %L60

L60:                                              ; preds = %for.end53, %if.then23
  br label %for.inc54

for.inc54:                                        ; preds = %L60
  %55 = load i64, ptr %ll, align 8, !tbaa !8
  %inc55 = add nsw i64 %55, 1
  store i64 %inc55, ptr %ll, align 8, !tbaa !8
  br label %for.cond16, !llvm.loop !15

for.end56:                                        ; preds = %for.cond16
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end56, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %twopi) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %angle) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %irot) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %kink) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ifac) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %del) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ir) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %nn) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %iq) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ll) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr %nj) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ni) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %kk) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i__) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i__1) #4
  %56 = load i32, ptr %retval, align 4
  ret i32 %56
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i64 @v3p_netlib_pow_ii(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare double @asin(double noundef) #3

; Function Attrs: nounwind
declare double @cos(double noundef) #3

; Function Attrs: nounwind
declare double @sin(double noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !6, i64 0}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
