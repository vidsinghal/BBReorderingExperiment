; ModuleID = 'samples/574.bc'
source_filename = "/local-ssd/itk-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv-build/aidengro/spack-stage-itk-5.2.1-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv/spack-src/Modules/ThirdParty/VNL/src/vxl/v3p/netlib/blas/srot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @v3p_netlib_srot_(ptr noundef %n, ptr noundef %sx, ptr noundef %incx, ptr noundef %sy, ptr noundef %incy, ptr noundef %c__, ptr noundef %s) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca ptr, align 8
  %sx.addr = alloca ptr, align 8
  %incx.addr = alloca ptr, align 8
  %sy.addr = alloca ptr, align 8
  %incy.addr = alloca ptr, align 8
  %c__.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %i__1 = alloca i64, align 8
  %i__ = alloca i64, align 8
  %ix = alloca i64, align 8
  %iy = alloca i64, align 8
  %stemp = alloca float, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %sx, ptr %sx.addr, align 8, !tbaa !4
  store ptr %incx, ptr %incx.addr, align 8, !tbaa !4
  store ptr %sy, ptr %sy.addr, align 8, !tbaa !4
  store ptr %incy, ptr %incy.addr, align 8, !tbaa !4
  store ptr %c__, ptr %c__.addr, align 8, !tbaa !4
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i__) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ix) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %iy) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %stemp) #3
  %0 = load ptr, ptr %sy.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds float, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %sy.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %sx.addr, align 8, !tbaa !4
  %incdec.ptr1 = getelementptr inbounds float, ptr %1, i32 -1
  store ptr %incdec.ptr1, ptr %sx.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %3 = load i64, ptr %2, align 8, !tbaa !8
  %cmp = icmp sle i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %5 = load i64, ptr %4, align 8, !tbaa !8
  %cmp2 = icmp eq i64 %5, 1
  br i1 %cmp2, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %incy.addr, align 8, !tbaa !4
  %7 = load i64, ptr %6, align 8, !tbaa !8
  %cmp3 = icmp eq i64 %7, 1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  br label %L20

if.end5:                                          ; preds = %land.lhs.true, %if.end
  store i64 1, ptr %ix, align 8, !tbaa !8
  store i64 1, ptr %iy, align 8, !tbaa !8
  %8 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %9 = load i64, ptr %8, align 8, !tbaa !8
  %cmp6 = icmp slt i64 %9, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %10 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %11 = load i64, ptr %10, align 8, !tbaa !8
  %sub = sub nsw i64 0, %11
  %add = add nsw i64 %sub, 1
  %12 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %13 = load i64, ptr %12, align 8, !tbaa !8
  %mul = mul nsw i64 %add, %13
  %add8 = add nsw i64 %mul, 1
  store i64 %add8, ptr %ix, align 8, !tbaa !8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %14 = load ptr, ptr %incy.addr, align 8, !tbaa !4
  %15 = load i64, ptr %14, align 8, !tbaa !8
  %cmp10 = icmp slt i64 %15, 0
  br i1 %cmp10, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end9
  %16 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %17 = load i64, ptr %16, align 8, !tbaa !8
  %sub12 = sub nsw i64 0, %17
  %add13 = add nsw i64 %sub12, 1
  %18 = load ptr, ptr %incy.addr, align 8, !tbaa !4
  %19 = load i64, ptr %18, align 8, !tbaa !8
  %mul14 = mul nsw i64 %add13, %19
  %add15 = add nsw i64 %mul14, 1
  store i64 %add15, ptr %iy, align 8, !tbaa !8
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end9
  %20 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %21 = load i64, ptr %20, align 8, !tbaa !8
  store i64 %21, ptr %i__1, align 8, !tbaa !8
  store i64 1, ptr %i__, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end16
  %22 = load i64, ptr %i__, align 8, !tbaa !8
  %23 = load i64, ptr %i__1, align 8, !tbaa !8
  %cmp17 = icmp sle i64 %22, %23
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %25 = load float, ptr %24, align 4, !tbaa !10
  %26 = load ptr, ptr %sx.addr, align 8, !tbaa !4
  %27 = load i64, ptr %ix, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds float, ptr %26, i64 %27
  %28 = load float, ptr %arrayidx, align 4, !tbaa !10
  %29 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %30 = load float, ptr %29, align 4, !tbaa !10
  %31 = load ptr, ptr %sy.addr, align 8, !tbaa !4
  %32 = load i64, ptr %iy, align 8, !tbaa !8
  %arrayidx19 = getelementptr inbounds float, ptr %31, i64 %32
  %33 = load float, ptr %arrayidx19, align 4, !tbaa !10
  %mul20 = fmul float %30, %33
  %34 = call float @llvm.fmuladd.f32(float %25, float %28, float %mul20)
  store float %34, ptr %stemp, align 4, !tbaa !10
  %35 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %36 = load float, ptr %35, align 4, !tbaa !10
  %37 = load ptr, ptr %sy.addr, align 8, !tbaa !4
  %38 = load i64, ptr %iy, align 8, !tbaa !8
  %arrayidx21 = getelementptr inbounds float, ptr %37, i64 %38
  %39 = load float, ptr %arrayidx21, align 4, !tbaa !10
  %40 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %41 = load float, ptr %40, align 4, !tbaa !10
  %42 = load ptr, ptr %sx.addr, align 8, !tbaa !4
  %43 = load i64, ptr %ix, align 8, !tbaa !8
  %arrayidx23 = getelementptr inbounds float, ptr %42, i64 %43
  %44 = load float, ptr %arrayidx23, align 4, !tbaa !10
  %mul24 = fmul float %41, %44
  %neg = fneg float %mul24
  %45 = call float @llvm.fmuladd.f32(float %36, float %39, float %neg)
  %46 = load ptr, ptr %sy.addr, align 8, !tbaa !4
  %47 = load i64, ptr %iy, align 8, !tbaa !8
  %arrayidx25 = getelementptr inbounds float, ptr %46, i64 %47
  store float %45, ptr %arrayidx25, align 4, !tbaa !10
  %48 = load float, ptr %stemp, align 4, !tbaa !10
  %49 = load ptr, ptr %sx.addr, align 8, !tbaa !4
  %50 = load i64, ptr %ix, align 8, !tbaa !8
  %arrayidx26 = getelementptr inbounds float, ptr %49, i64 %50
  store float %48, ptr %arrayidx26, align 4, !tbaa !10
  %51 = load ptr, ptr %incx.addr, align 8, !tbaa !4
  %52 = load i64, ptr %51, align 8, !tbaa !8
  %53 = load i64, ptr %ix, align 8, !tbaa !8
  %add27 = add nsw i64 %53, %52
  store i64 %add27, ptr %ix, align 8, !tbaa !8
  %54 = load ptr, ptr %incy.addr, align 8, !tbaa !4
  %55 = load i64, ptr %54, align 8, !tbaa !8
  %56 = load i64, ptr %iy, align 8, !tbaa !8
  %add28 = add nsw i64 %56, %55
  store i64 %add28, ptr %iy, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %57 = load i64, ptr %i__, align 8, !tbaa !8
  %inc = add nsw i64 %57, 1
  store i64 %inc, ptr %i__, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

L20:                                              ; preds = %if.then4
  %58 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %59 = load i64, ptr %58, align 8, !tbaa !8
  store i64 %59, ptr %i__1, align 8, !tbaa !8
  store i64 1, ptr %i__, align 8, !tbaa !8
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc43, %L20
  %60 = load i64, ptr %i__, align 8, !tbaa !8
  %61 = load i64, ptr %i__1, align 8, !tbaa !8
  %cmp30 = icmp sle i64 %60, %61
  br i1 %cmp30, label %for.body31, label %for.end45

for.body31:                                       ; preds = %for.cond29
  %62 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %63 = load float, ptr %62, align 4, !tbaa !10
  %64 = load ptr, ptr %sx.addr, align 8, !tbaa !4
  %65 = load i64, ptr %i__, align 8, !tbaa !8
  %arrayidx32 = getelementptr inbounds float, ptr %64, i64 %65
  %66 = load float, ptr %arrayidx32, align 4, !tbaa !10
  %67 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %68 = load float, ptr %67, align 4, !tbaa !10
  %69 = load ptr, ptr %sy.addr, align 8, !tbaa !4
  %70 = load i64, ptr %i__, align 8, !tbaa !8
  %arrayidx34 = getelementptr inbounds float, ptr %69, i64 %70
  %71 = load float, ptr %arrayidx34, align 4, !tbaa !10
  %mul35 = fmul float %68, %71
  %72 = call float @llvm.fmuladd.f32(float %63, float %66, float %mul35)
  store float %72, ptr %stemp, align 4, !tbaa !10
  %73 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %74 = load float, ptr %73, align 4, !tbaa !10
  %75 = load ptr, ptr %sy.addr, align 8, !tbaa !4
  %76 = load i64, ptr %i__, align 8, !tbaa !8
  %arrayidx36 = getelementptr inbounds float, ptr %75, i64 %76
  %77 = load float, ptr %arrayidx36, align 4, !tbaa !10
  %78 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %79 = load float, ptr %78, align 4, !tbaa !10
  %80 = load ptr, ptr %sx.addr, align 8, !tbaa !4
  %81 = load i64, ptr %i__, align 8, !tbaa !8
  %arrayidx38 = getelementptr inbounds float, ptr %80, i64 %81
  %82 = load float, ptr %arrayidx38, align 4, !tbaa !10
  %mul39 = fmul float %79, %82
  %neg40 = fneg float %mul39
  %83 = call float @llvm.fmuladd.f32(float %74, float %77, float %neg40)
  %84 = load ptr, ptr %sy.addr, align 8, !tbaa !4
  %85 = load i64, ptr %i__, align 8, !tbaa !8
  %arrayidx41 = getelementptr inbounds float, ptr %84, i64 %85
  store float %83, ptr %arrayidx41, align 4, !tbaa !10
  %86 = load float, ptr %stemp, align 4, !tbaa !10
  %87 = load ptr, ptr %sx.addr, align 8, !tbaa !4
  %88 = load i64, ptr %i__, align 8, !tbaa !8
  %arrayidx42 = getelementptr inbounds float, ptr %87, i64 %88
  store float %86, ptr %arrayidx42, align 4, !tbaa !10
  br label %for.inc43

for.inc43:                                        ; preds = %for.body31
  %89 = load i64, ptr %i__, align 8, !tbaa !8
  %inc44 = add nsw i64 %89, 1
  store i64 %inc44, ptr %i__, align 8, !tbaa !8
  br label %for.cond29, !llvm.loop !14

for.end45:                                        ; preds = %for.cond29
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end45, %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %stemp) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %iy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ix) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i__) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i__1) #3
  %90 = load i32, ptr %retval, align 4
  ret i32 %90
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!11 = !{!"float", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
