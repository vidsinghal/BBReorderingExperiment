; ModuleID = 'samples/10.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/spbsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SPBSV \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @spbsv_(ptr noundef %uplo, ptr noundef %n, ptr noundef %kd, ptr noundef %nrhs, ptr noundef %ab, ptr noundef %ldab, ptr noundef %b, ptr noundef %ldb, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %kd.addr = alloca ptr, align 8
  %nrhs.addr = alloca ptr, align 8
  %ab.addr = alloca ptr, align 8
  %ldab.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %ab_dim1 = alloca i32, align 4
  %ab_offset = alloca i32, align 4
  %b_dim1 = alloca i32, align 4
  %b_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %kd, ptr %kd.addr, align 8
  store ptr %nrhs, ptr %nrhs.addr, align 8
  store ptr %ab, ptr %ab.addr, align 8
  store ptr %ldab, ptr %ldab.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %ldb, ptr %ldb.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  %0 = load ptr, ptr %ldab.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %ab_dim1, align 4
  %2 = load i32, ptr %ab_dim1, align 4
  %add = add nsw i32 1, %2
  store i32 %add, ptr %ab_offset, align 4
  %3 = load i32, ptr %ab_offset, align 4
  %4 = load ptr, ptr %ab.addr, align 8
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds float, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %ab.addr, align 8
  %5 = load ptr, ptr %ldb.addr, align 8
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %b_dim1, align 4
  %7 = load i32, ptr %b_dim1, align 4
  %add1 = add nsw i32 1, %7
  store i32 %add1, ptr %b_offset, align 4
  %8 = load i32, ptr %b_offset, align 4
  %9 = load ptr, ptr %b.addr, align 8
  %idx.ext2 = sext i32 %8 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds float, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %b.addr, align 8
  %10 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %10, align 4
  %11 = load ptr, ptr %uplo.addr, align 8
  %call = call i32 @lsame_(ptr noundef %11, ptr noundef @.str)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %12 = load ptr, ptr %uplo.addr, align 8
  %call5 = call i32 @lsame_(ptr noundef %12, ptr noundef @.str.1)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %13 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %13, align 4
  br label %if.end26

if.else:                                          ; preds = %land.lhs.true, %entry
  %14 = load ptr, ptr %n.addr, align 8
  %15 = load i32, ptr %14, align 4
  %cmp = icmp slt i32 %15, 0
  br i1 %cmp, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  %16 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %16, align 4
  br label %if.end25

if.else8:                                         ; preds = %if.else
  %17 = load ptr, ptr %kd.addr, align 8
  %18 = load i32, ptr %17, align 4
  %cmp9 = icmp slt i32 %18, 0
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else8
  %19 = load ptr, ptr %info.addr, align 8
  store i32 -3, ptr %19, align 4
  br label %if.end24

if.else11:                                        ; preds = %if.else8
  %20 = load ptr, ptr %nrhs.addr, align 8
  %21 = load i32, ptr %20, align 4
  %cmp12 = icmp slt i32 %21, 0
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.else11
  %22 = load ptr, ptr %info.addr, align 8
  store i32 -4, ptr %22, align 4
  br label %if.end23

if.else14:                                        ; preds = %if.else11
  %23 = load ptr, ptr %ldab.addr, align 8
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %kd.addr, align 8
  %26 = load i32, ptr %25, align 4
  %add15 = add nsw i32 %26, 1
  %cmp16 = icmp slt i32 %24, %add15
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else14
  %27 = load ptr, ptr %info.addr, align 8
  store i32 -6, ptr %27, align 4
  br label %if.end22

if.else18:                                        ; preds = %if.else14
  %28 = load ptr, ptr %ldb.addr, align 8
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %n.addr, align 8
  %31 = load i32, ptr %30, align 4
  %cmp19 = icmp sge i32 1, %31
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else18
  br label %cond.end

cond.false:                                       ; preds = %if.else18
  %32 = load ptr, ptr %n.addr, align 8
  %33 = load i32, ptr %32, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %33, %cond.false ]
  %cmp20 = icmp slt i32 %29, %cond
  br i1 %cmp20, label %if.then21, label %if.end

if.then21:                                        ; preds = %cond.end
  %34 = load ptr, ptr %info.addr, align 8
  store i32 -8, ptr %34, align 4
  br label %if.end

if.end:                                           ; preds = %if.then21, %cond.end
  br label %if.end22

if.end22:                                         ; preds = %if.end, %if.then17
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then13
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then10
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then7
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then
  %35 = load ptr, ptr %info.addr, align 8
  %36 = load i32, ptr %35, align 4
  %cmp27 = icmp ne i32 %36, 0
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end26
  %37 = load ptr, ptr %info.addr, align 8
  %38 = load i32, ptr %37, align 4
  %sub = sub nsw i32 0, %38
  store i32 %sub, ptr %i__1, align 4
  %call29 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end26
  %39 = load ptr, ptr %uplo.addr, align 8
  %40 = load ptr, ptr %n.addr, align 8
  %41 = load ptr, ptr %kd.addr, align 8
  %42 = load ptr, ptr %ab.addr, align 8
  %43 = load i32, ptr %ab_offset, align 4
  %idxprom = sext i32 %43 to i64
  %arrayidx = getelementptr inbounds float, ptr %42, i64 %idxprom
  %44 = load ptr, ptr %ldab.addr, align 8
  %45 = load ptr, ptr %info.addr, align 8
  %call31 = call i32 @spbtrf_(ptr noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef %arrayidx, ptr noundef %44, ptr noundef %45)
  %46 = load ptr, ptr %info.addr, align 8
  %47 = load i32, ptr %46, align 4
  %cmp32 = icmp eq i32 %47, 0
  br i1 %cmp32, label %if.then33, label %if.end39

if.then33:                                        ; preds = %if.end30
  %48 = load ptr, ptr %uplo.addr, align 8
  %49 = load ptr, ptr %n.addr, align 8
  %50 = load ptr, ptr %kd.addr, align 8
  %51 = load ptr, ptr %nrhs.addr, align 8
  %52 = load ptr, ptr %ab.addr, align 8
  %53 = load i32, ptr %ab_offset, align 4
  %idxprom34 = sext i32 %53 to i64
  %arrayidx35 = getelementptr inbounds float, ptr %52, i64 %idxprom34
  %54 = load ptr, ptr %ldab.addr, align 8
  %55 = load ptr, ptr %b.addr, align 8
  %56 = load i32, ptr %b_offset, align 4
  %idxprom36 = sext i32 %56 to i64
  %arrayidx37 = getelementptr inbounds float, ptr %55, i64 %idxprom36
  %57 = load ptr, ptr %ldb.addr, align 8
  %58 = load ptr, ptr %info.addr, align 8
  %call38 = call i32 @spbtrs_(ptr noundef %48, ptr noundef %49, ptr noundef %50, ptr noundef %51, ptr noundef %arrayidx35, ptr noundef %54, ptr noundef %arrayidx37, ptr noundef %57, ptr noundef %58)
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %if.end30
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end39, %if.then28
  %59 = load i32, ptr %retval, align 4
  ret i32 %59
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare i32 @spbtrf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @spbtrs_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
