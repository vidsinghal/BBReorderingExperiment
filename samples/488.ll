; ModuleID = 'samples/488.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/check/sgeqpf_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"SGEQPF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sgeqpf_check(ptr noundef %m, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %jpvt, ptr noundef %tau, ptr noundef %work, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %jpvt.addr = alloca ptr, align 8
  %tau.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %jpvt, ptr %jpvt.addr, align 8
  store ptr %tau, ptr %tau.addr, align 8
  store ptr %work, ptr %work.addr, align 8
  store ptr %info, ptr %info.addr, align 8
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
  %add.ptr = getelementptr inbounds float, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8
  %5 = load ptr, ptr %jpvt.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %jpvt.addr, align 8
  %6 = load ptr, ptr %tau.addr, align 8
  %incdec.ptr1 = getelementptr inbounds float, ptr %6, i32 -1
  store ptr %incdec.ptr1, ptr %tau.addr, align 8
  %7 = load ptr, ptr %work.addr, align 8
  %incdec.ptr2 = getelementptr inbounds float, ptr %7, i32 -1
  store ptr %incdec.ptr2, ptr %work.addr, align 8
  %8 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %8, align 4
  %9 = load ptr, ptr %m.addr, align 8
  %10 = load i32, ptr %9, align 4
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %11, align 4
  br label %if.end10

if.else:                                          ; preds = %entry
  %12 = load ptr, ptr %n.addr, align 8
  %13 = load i32, ptr %12, align 4
  %cmp3 = icmp slt i32 %13, 0
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  %14 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %14, align 4
  br label %if.end9

if.else5:                                         ; preds = %if.else
  %15 = load ptr, ptr %lda.addr, align 8
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %m.addr, align 8
  %18 = load i32, ptr %17, align 4
  %cmp6 = icmp sgt i32 1, %18
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else5
  br label %cond.end

cond.false:                                       ; preds = %if.else5
  %19 = load ptr, ptr %m.addr, align 8
  %20 = load i32, ptr %19, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %20, %cond.false ]
  %cmp7 = icmp slt i32 %16, %cond
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %cond.end
  %21 = load ptr, ptr %info.addr, align 8
  store i32 -4, ptr %21, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %cond.end
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then4
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then
  %22 = load ptr, ptr %info.addr, align 8
  %23 = load i32, ptr %22, align 4
  %cmp11 = icmp ne i32 %23, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  %24 = load ptr, ptr %info.addr, align 8
  %25 = load i32, ptr %24, align 4
  %sub = sub nsw i32 0, %25
  store i32 %sub, ptr %i__1, align 4
  %call = call i32 @xerbla_(ptr noundef @.str, ptr noundef %i__1)
  store i32 312, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end10
  %26 = load ptr, ptr %m.addr, align 8
  %27 = load i32, ptr %26, align 4
  %cmp14 = icmp eq i32 %27, 0
  br i1 %cmp14, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end13
  %28 = load ptr, ptr %n.addr, align 8
  %29 = load i32, ptr %28, align 4
  %cmp15 = icmp eq i32 %29, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false, %if.end13
  store i32 212, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %lor.lhs.false
  store i32 512, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then16, %if.then12
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
