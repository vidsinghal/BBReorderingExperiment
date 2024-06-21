; ModuleID = 'samples/54.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/zlapll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

; Function Attrs: noinline nounwind optnone uwtable
define i32 @zlapll_(ptr noundef %n, ptr noundef %x, ptr noundef %incx, ptr noundef %y, ptr noundef %incy, ptr noundef %ssmin) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca ptr, align 8
  %ssmin.addr = alloca ptr, align 8
  %i__1 = alloca i32, align 4
  %d__1 = alloca double, align 8
  %d__2 = alloca double, align 8
  %d__3 = alloca double, align 8
  %z__1 = alloca %struct.doublecomplex, align 8
  %z__2 = alloca %struct.doublecomplex, align 8
  %z__3 = alloca %struct.doublecomplex, align 8
  %z__4 = alloca %struct.doublecomplex, align 8
  %c__ = alloca %struct.doublecomplex, align 8
  %a11 = alloca %struct.doublecomplex, align 8
  %a12 = alloca %struct.doublecomplex, align 8
  %a22 = alloca %struct.doublecomplex, align 8
  %tau = alloca %struct.doublecomplex, align 8
  %ssmax = alloca double, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %incx, ptr %incx.addr, align 8
  store ptr %y, ptr %y.addr, align 8
  store ptr %incy, ptr %incy.addr, align 8
  store ptr %ssmin, ptr %ssmin.addr, align 8
  %0 = load ptr, ptr %y.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.doublecomplex, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %y.addr, align 8
  %1 = load ptr, ptr %x.addr, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.doublecomplex, ptr %1, i32 -1
  store ptr %incdec.ptr1, ptr %x.addr, align 8
  %2 = load ptr, ptr %n.addr, align 8
  %3 = load i32, ptr %2, align 4
  %cmp = icmp sle i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %ssmin.addr, align 8
  store double 0.000000e+00, ptr %4, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %n.addr, align 8
  %6 = load ptr, ptr %x.addr, align 8
  %arrayidx = getelementptr inbounds %struct.doublecomplex, ptr %6, i64 1
  %7 = load ptr, ptr %x.addr, align 8
  %8 = load ptr, ptr %incx.addr, align 8
  %9 = load i32, ptr %8, align 4
  %add = add nsw i32 %9, 1
  %idxprom = sext i32 %add to i64
  %arrayidx2 = getelementptr inbounds %struct.doublecomplex, ptr %7, i64 %idxprom
  %10 = load ptr, ptr %incx.addr, align 8
  %call = call i32 @zlarfg_(ptr noundef %5, ptr noundef %arrayidx, ptr noundef %arrayidx2, ptr noundef %10, ptr noundef %tau)
  %11 = load ptr, ptr %x.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.doublecomplex, ptr %11, i64 1
  %r = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx3, i32 0, i32 0
  %12 = load double, ptr %r, align 8
  %r4 = getelementptr inbounds %struct.doublecomplex, ptr %a11, i32 0, i32 0
  store double %12, ptr %r4, align 8
  %13 = load ptr, ptr %x.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.doublecomplex, ptr %13, i64 1
  %i = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx5, i32 0, i32 1
  %14 = load double, ptr %i, align 8
  %i6 = getelementptr inbounds %struct.doublecomplex, ptr %a11, i32 0, i32 1
  store double %14, ptr %i6, align 8
  %15 = load ptr, ptr %x.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.doublecomplex, ptr %15, i64 1
  %r8 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx7, i32 0, i32 0
  store double 1.000000e+00, ptr %r8, align 8
  %16 = load ptr, ptr %x.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.doublecomplex, ptr %16, i64 1
  %i10 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx9, i32 0, i32 1
  store double 0.000000e+00, ptr %i10, align 8
  call void @d_cnjg(ptr noundef %z__3, ptr noundef %tau)
  %r11 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 0
  %17 = load double, ptr %r11, align 8
  %fneg = fneg double %17
  %r12 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  store double %fneg, ptr %r12, align 8
  %i13 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 1
  %18 = load double, ptr %i13, align 8
  %fneg14 = fneg double %18
  %i15 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  store double %fneg14, ptr %i15, align 8
  %19 = load ptr, ptr %n.addr, align 8
  %20 = load ptr, ptr %x.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct.doublecomplex, ptr %20, i64 1
  %21 = load ptr, ptr %incx.addr, align 8
  %22 = load ptr, ptr %y.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct.doublecomplex, ptr %22, i64 1
  %23 = load ptr, ptr %incy.addr, align 8
  call void @zdotc_f2c_(ptr noundef %z__4, ptr noundef %19, ptr noundef %arrayidx16, ptr noundef %21, ptr noundef %arrayidx17, ptr noundef %23)
  %r18 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  %24 = load double, ptr %r18, align 8
  %r19 = getelementptr inbounds %struct.doublecomplex, ptr %z__4, i32 0, i32 0
  %25 = load double, ptr %r19, align 8
  %i20 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  %26 = load double, ptr %i20, align 8
  %i21 = getelementptr inbounds %struct.doublecomplex, ptr %z__4, i32 0, i32 1
  %27 = load double, ptr %i21, align 8
  %mul22 = fmul double %26, %27
  %neg = fneg double %mul22
  %28 = call double @llvm.fmuladd.f64(double %24, double %25, double %neg)
  %r23 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %28, ptr %r23, align 8
  %r24 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  %29 = load double, ptr %r24, align 8
  %i25 = getelementptr inbounds %struct.doublecomplex, ptr %z__4, i32 0, i32 1
  %30 = load double, ptr %i25, align 8
  %i26 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  %31 = load double, ptr %i26, align 8
  %r27 = getelementptr inbounds %struct.doublecomplex, ptr %z__4, i32 0, i32 0
  %32 = load double, ptr %r27, align 8
  %mul28 = fmul double %31, %32
  %33 = call double @llvm.fmuladd.f64(double %29, double %30, double %mul28)
  %i29 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %33, ptr %i29, align 8
  %r30 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %34 = load double, ptr %r30, align 8
  %r31 = getelementptr inbounds %struct.doublecomplex, ptr %c__, i32 0, i32 0
  store double %34, ptr %r31, align 8
  %i32 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %35 = load double, ptr %i32, align 8
  %i33 = getelementptr inbounds %struct.doublecomplex, ptr %c__, i32 0, i32 1
  store double %35, ptr %i33, align 8
  %36 = load ptr, ptr %n.addr, align 8
  %37 = load ptr, ptr %x.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct.doublecomplex, ptr %37, i64 1
  %38 = load ptr, ptr %incx.addr, align 8
  %39 = load ptr, ptr %y.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct.doublecomplex, ptr %39, i64 1
  %40 = load ptr, ptr %incy.addr, align 8
  %call36 = call i32 @zaxpy_(ptr noundef %36, ptr noundef %c__, ptr noundef %arrayidx34, ptr noundef %38, ptr noundef %arrayidx35, ptr noundef %40)
  %41 = load ptr, ptr %n.addr, align 8
  %42 = load i32, ptr %41, align 4
  %sub = sub nsw i32 %42, 1
  store i32 %sub, ptr %i__1, align 4
  %43 = load ptr, ptr %y.addr, align 8
  %44 = load ptr, ptr %incy.addr, align 8
  %45 = load i32, ptr %44, align 4
  %add37 = add nsw i32 %45, 1
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds %struct.doublecomplex, ptr %43, i64 %idxprom38
  %46 = load ptr, ptr %y.addr, align 8
  %47 = load ptr, ptr %incy.addr, align 8
  %48 = load i32, ptr %47, align 4
  %shl = shl i32 %48, 1
  %add40 = add nsw i32 %shl, 1
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds %struct.doublecomplex, ptr %46, i64 %idxprom41
  %49 = load ptr, ptr %incy.addr, align 8
  %call43 = call i32 @zlarfg_(ptr noundef %i__1, ptr noundef %arrayidx39, ptr noundef %arrayidx42, ptr noundef %49, ptr noundef %tau)
  %50 = load ptr, ptr %y.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct.doublecomplex, ptr %50, i64 1
  %r45 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx44, i32 0, i32 0
  %51 = load double, ptr %r45, align 8
  %r46 = getelementptr inbounds %struct.doublecomplex, ptr %a12, i32 0, i32 0
  store double %51, ptr %r46, align 8
  %52 = load ptr, ptr %y.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct.doublecomplex, ptr %52, i64 1
  %i48 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx47, i32 0, i32 1
  %53 = load double, ptr %i48, align 8
  %i49 = getelementptr inbounds %struct.doublecomplex, ptr %a12, i32 0, i32 1
  store double %53, ptr %i49, align 8
  %54 = load ptr, ptr %incy.addr, align 8
  %55 = load i32, ptr %54, align 4
  %add50 = add nsw i32 %55, 1
  store i32 %add50, ptr %i__1, align 4
  %56 = load ptr, ptr %y.addr, align 8
  %57 = load i32, ptr %i__1, align 4
  %idxprom51 = sext i32 %57 to i64
  %arrayidx52 = getelementptr inbounds %struct.doublecomplex, ptr %56, i64 %idxprom51
  %r53 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx52, i32 0, i32 0
  %58 = load double, ptr %r53, align 8
  %r54 = getelementptr inbounds %struct.doublecomplex, ptr %a22, i32 0, i32 0
  store double %58, ptr %r54, align 8
  %59 = load ptr, ptr %y.addr, align 8
  %60 = load i32, ptr %i__1, align 4
  %idxprom55 = sext i32 %60 to i64
  %arrayidx56 = getelementptr inbounds %struct.doublecomplex, ptr %59, i64 %idxprom55
  %i57 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx56, i32 0, i32 1
  %61 = load double, ptr %i57, align 8
  %i58 = getelementptr inbounds %struct.doublecomplex, ptr %a22, i32 0, i32 1
  store double %61, ptr %i58, align 8
  %call59 = call double @z_abs(ptr noundef %a11)
  store double %call59, ptr %d__1, align 8
  %call60 = call double @z_abs(ptr noundef %a12)
  store double %call60, ptr %d__2, align 8
  %call61 = call double @z_abs(ptr noundef %a22)
  store double %call61, ptr %d__3, align 8
  %62 = load ptr, ptr %ssmin.addr, align 8
  %call62 = call i32 @dlas2_(ptr noundef %d__1, ptr noundef %d__2, ptr noundef %d__3, ptr noundef %62, ptr noundef %ssmax)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %63 = load i32, ptr %retval, align 4
  ret i32 %63
}

declare i32 @zlarfg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @d_cnjg(ptr noundef, ptr noundef) #1

declare void @zdotc_f2c_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

declare i32 @zaxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare double @z_abs(ptr noundef) #1

declare i32 @dlas2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
