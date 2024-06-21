; ModuleID = 'samples/388.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/ilaclc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ilaclc_(ptr noundef %m, ptr noundef %n, ptr noundef %a, ptr noundef %lda) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %ret_val = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__ = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  %0 = load ptr, ptr %lda.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %a_dim1, align 4
  %2 = load i32, ptr %a_dim1, align 4
  %add = add nsw i32 1, %2
  store i32 %add, ptr %a_offset, align 4
  %3 = load i32, ptr %a_offset, align 4
  %4 = load ptr, ptr %a.addr, align 8
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.complex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8
  %5 = load ptr, ptr %n.addr, align 8
  %6 = load i32, ptr %5, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %n.addr, align 8
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %ret_val, align 4
  br label %if.end39

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %n.addr, align 8
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %a_dim1, align 4
  %mul = mul nsw i32 %10, %11
  %add1 = add nsw i32 %mul, 1
  store i32 %add1, ptr %i__1, align 4
  %12 = load ptr, ptr %m.addr, align 8
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %n.addr, align 8
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %a_dim1, align 4
  %mul2 = mul nsw i32 %15, %16
  %add3 = add nsw i32 %13, %mul2
  store i32 %add3, ptr %i__2, align 4
  %17 = load ptr, ptr %a.addr, align 8
  %18 = load i32, ptr %i__1, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds %struct.complex, ptr %17, i64 %idxprom
  %r = getelementptr inbounds %struct.complex, ptr %arrayidx, i32 0, i32 0
  %19 = load float, ptr %r, align 4
  %cmp4 = fcmp une float %19, 0.000000e+00
  br i1 %cmp4, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %20 = load ptr, ptr %a.addr, align 8
  %21 = load i32, ptr %i__1, align 4
  %idxprom5 = sext i32 %21 to i64
  %arrayidx6 = getelementptr inbounds %struct.complex, ptr %20, i64 %idxprom5
  %i = getelementptr inbounds %struct.complex, ptr %arrayidx6, i32 0, i32 1
  %22 = load float, ptr %i, align 4
  %cmp7 = fcmp une float %22, 0.000000e+00
  br i1 %cmp7, label %if.then18, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %23 = load ptr, ptr %a.addr, align 8
  %24 = load i32, ptr %i__2, align 4
  %idxprom9 = sext i32 %24 to i64
  %arrayidx10 = getelementptr inbounds %struct.complex, ptr %23, i64 %idxprom9
  %r11 = getelementptr inbounds %struct.complex, ptr %arrayidx10, i32 0, i32 0
  %25 = load float, ptr %r11, align 4
  %cmp12 = fcmp une float %25, 0.000000e+00
  br i1 %cmp12, label %if.then18, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false8
  %26 = load ptr, ptr %a.addr, align 8
  %27 = load i32, ptr %i__2, align 4
  %idxprom14 = sext i32 %27 to i64
  %arrayidx15 = getelementptr inbounds %struct.complex, ptr %26, i64 %idxprom14
  %i16 = getelementptr inbounds %struct.complex, ptr %arrayidx15, i32 0, i32 1
  %28 = load float, ptr %i16, align 4
  %cmp17 = fcmp une float %28, 0.000000e+00
  br i1 %cmp17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %lor.lhs.false13, %lor.lhs.false8, %lor.lhs.false, %if.else
  %29 = load ptr, ptr %n.addr, align 8
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %ret_val, align 4
  br label %if.end38

if.else19:                                        ; preds = %lor.lhs.false13
  %31 = load ptr, ptr %n.addr, align 8
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr %ret_val, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc36, %if.else19
  %33 = load i32, ptr %ret_val, align 4
  %cmp20 = icmp sge i32 %33, 1
  br i1 %cmp20, label %for.body, label %for.end37

for.body:                                         ; preds = %for.cond
  %34 = load ptr, ptr %m.addr, align 8
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body
  %36 = load i32, ptr %i__, align 4
  %37 = load i32, ptr %i__1, align 4
  %cmp22 = icmp sle i32 %36, %37
  br i1 %cmp22, label %for.body23, label %for.end

for.body23:                                       ; preds = %for.cond21
  %38 = load i32, ptr %i__, align 4
  %39 = load i32, ptr %ret_val, align 4
  %40 = load i32, ptr %a_dim1, align 4
  %mul24 = mul nsw i32 %39, %40
  %add25 = add nsw i32 %38, %mul24
  store i32 %add25, ptr %i__2, align 4
  %41 = load ptr, ptr %a.addr, align 8
  %42 = load i32, ptr %i__2, align 4
  %idxprom26 = sext i32 %42 to i64
  %arrayidx27 = getelementptr inbounds %struct.complex, ptr %41, i64 %idxprom26
  %r28 = getelementptr inbounds %struct.complex, ptr %arrayidx27, i32 0, i32 0
  %43 = load float, ptr %r28, align 4
  %cmp29 = fcmp une float %43, 0.000000e+00
  br i1 %cmp29, label %if.then35, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %for.body23
  %44 = load ptr, ptr %a.addr, align 8
  %45 = load i32, ptr %i__2, align 4
  %idxprom31 = sext i32 %45 to i64
  %arrayidx32 = getelementptr inbounds %struct.complex, ptr %44, i64 %idxprom31
  %i33 = getelementptr inbounds %struct.complex, ptr %arrayidx32, i32 0, i32 1
  %46 = load float, ptr %i33, align 4
  %cmp34 = fcmp une float %46, 0.000000e+00
  br i1 %cmp34, label %if.then35, label %if.end

if.then35:                                        ; preds = %lor.lhs.false30, %for.body23
  %47 = load i32, ptr %ret_val, align 4
  store i32 %47, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false30
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %48 = load i32, ptr %i__, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, ptr %i__, align 4
  br label %for.cond21, !llvm.loop !5

for.end:                                          ; preds = %for.cond21
  br label %for.inc36

for.inc36:                                        ; preds = %for.end
  %49 = load i32, ptr %ret_val, align 4
  %dec = add nsw i32 %49, -1
  store i32 %dec, ptr %ret_val, align 4
  br label %for.cond, !llvm.loop !7

for.end37:                                        ; preds = %for.cond
  br label %if.end38

if.end38:                                         ; preds = %for.end37, %if.then18
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then
  %50 = load i32, ptr %ret_val, align 4
  store i32 %50, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end39, %if.then35
  %51 = load i32, ptr %retval, align 4
  ret i32 %51
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
!7 = distinct !{!7, !6}
