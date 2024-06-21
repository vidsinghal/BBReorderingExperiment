; ModuleID = 'samples/222.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/check/spotf2_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SPOTF2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @spotf2_check(ptr noundef %uplo, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %upper = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
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
  %5 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %5, align 4
  %6 = load ptr, ptr %uplo.addr, align 8
  %call = call i32 @lsame_(ptr noundef %6, ptr noundef @.str)
  store i32 %call, ptr %upper, align 4
  %7 = load i32, ptr %upper, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %8 = load ptr, ptr %uplo.addr, align 8
  %call1 = call i32 @lsame_(ptr noundef %8, ptr noundef @.str.1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %9, align 4
  br label %if.end9

if.else:                                          ; preds = %land.lhs.true, %entry
  %10 = load ptr, ptr %n.addr, align 8
  %11 = load i32, ptr %10, align 4
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %12 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %12, align 4
  br label %if.end8

if.else4:                                         ; preds = %if.else
  %13 = load ptr, ptr %lda.addr, align 8
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr %n.addr, align 8
  %16 = load i32, ptr %15, align 4
  %cmp5 = icmp sgt i32 1, %16
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else4
  br label %cond.end

cond.false:                                       ; preds = %if.else4
  %17 = load ptr, ptr %n.addr, align 8
  %18 = load i32, ptr %17, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %18, %cond.false ]
  %cmp6 = icmp slt i32 %14, %cond
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %cond.end
  %19 = load ptr, ptr %info.addr, align 8
  store i32 -4, ptr %19, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %cond.end
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then3
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then
  %20 = load ptr, ptr %info.addr, align 8
  %21 = load i32, ptr %20, align 4
  %cmp10 = icmp ne i32 %21, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %22 = load ptr, ptr %info.addr, align 8
  %23 = load i32, ptr %22, align 4
  %sub = sub nsw i32 0, %23
  store i32 %sub, ptr %i__1, align 4
  %call12 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  store i32 312, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end9
  %24 = load ptr, ptr %n.addr, align 8
  %25 = load i32, ptr %24, align 4
  %cmp14 = icmp eq i32 %25, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  store i32 212, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end13
  store i32 512, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then15, %if.then11
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

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
