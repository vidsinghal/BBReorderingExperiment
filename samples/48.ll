; ModuleID = 'samples/48.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/dla_wwaddw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define i32 @dla_wwaddw_(ptr noundef %n, ptr noundef %x, ptr noundef %y, ptr noundef %w) #0 {
entry:
  %n.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %w.addr = alloca ptr, align 8
  %i__1 = alloca i32, align 4
  %i__ = alloca i32, align 4
  %s = alloca double, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %y, ptr %y.addr, align 8
  store ptr %w, ptr %w.addr, align 8
  %0 = load ptr, ptr %w.addr, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %w.addr, align 8
  %1 = load ptr, ptr %y.addr, align 8
  %incdec.ptr1 = getelementptr inbounds double, ptr %1, i32 -1
  store ptr %incdec.ptr1, ptr %y.addr, align 8
  %2 = load ptr, ptr %x.addr, align 8
  %incdec.ptr2 = getelementptr inbounds double, ptr %2, i32 -1
  store ptr %incdec.ptr2, ptr %x.addr, align 8
  %3 = load ptr, ptr %n.addr, align 8
  %4 = load i32, ptr %3, align 4
  store i32 %4, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i__, align 4
  %6 = load i32, ptr %i__1, align 4
  %cmp = icmp sle i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %x.addr, align 8
  %8 = load i32, ptr %i__, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds double, ptr %7, i64 %idxprom
  %9 = load double, ptr %arrayidx, align 8
  %10 = load ptr, ptr %w.addr, align 8
  %11 = load i32, ptr %i__, align 4
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds double, ptr %10, i64 %idxprom3
  %12 = load double, ptr %arrayidx4, align 8
  %add = fadd double %9, %12
  store double %add, ptr %s, align 8
  %13 = load double, ptr %s, align 8
  %14 = load double, ptr %s, align 8
  %add5 = fadd double %13, %14
  %15 = load double, ptr %s, align 8
  %sub = fsub double %add5, %15
  store double %sub, ptr %s, align 8
  %16 = load ptr, ptr %x.addr, align 8
  %17 = load i32, ptr %i__, align 4
  %idxprom6 = sext i32 %17 to i64
  %arrayidx7 = getelementptr inbounds double, ptr %16, i64 %idxprom6
  %18 = load double, ptr %arrayidx7, align 8
  %19 = load double, ptr %s, align 8
  %sub8 = fsub double %18, %19
  %20 = load ptr, ptr %w.addr, align 8
  %21 = load i32, ptr %i__, align 4
  %idxprom9 = sext i32 %21 to i64
  %arrayidx10 = getelementptr inbounds double, ptr %20, i64 %idxprom9
  %22 = load double, ptr %arrayidx10, align 8
  %add11 = fadd double %sub8, %22
  %23 = load ptr, ptr %y.addr, align 8
  %24 = load i32, ptr %i__, align 4
  %idxprom12 = sext i32 %24 to i64
  %arrayidx13 = getelementptr inbounds double, ptr %23, i64 %idxprom12
  %25 = load double, ptr %arrayidx13, align 8
  %add14 = fadd double %add11, %25
  %26 = load ptr, ptr %y.addr, align 8
  %27 = load i32, ptr %i__, align 4
  %idxprom15 = sext i32 %27 to i64
  %arrayidx16 = getelementptr inbounds double, ptr %26, i64 %idxprom15
  store double %add14, ptr %arrayidx16, align 8
  %28 = load double, ptr %s, align 8
  %29 = load ptr, ptr %x.addr, align 8
  %30 = load i32, ptr %i__, align 4
  %idxprom17 = sext i32 %30 to i64
  %arrayidx18 = getelementptr inbounds double, ptr %29, i64 %idxprom17
  store double %28, ptr %arrayidx18, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, ptr %i__, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %i__, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
