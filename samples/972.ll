; ModuleID = 'samples/972.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/slaqsy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Precision\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"U\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @slaqsy_(ptr noundef %uplo, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %s, ptr noundef %scond, ptr noundef %amax, ptr noundef %equed) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %scond.addr = alloca ptr, align 8
  %amax.addr = alloca ptr, align 8
  %equed.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %cj = alloca float, align 4
  %large = alloca float, align 4
  %small = alloca float, align 4
  store ptr %uplo, ptr %uplo.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %s, ptr %s.addr, align 8
  store ptr %scond, ptr %scond.addr, align 8
  store ptr %amax, ptr %amax.addr, align 8
  store ptr %equed, ptr %equed.addr, align 8
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
  %5 = load ptr, ptr %s.addr, align 8
  %incdec.ptr = getelementptr inbounds float, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %s.addr, align 8
  %6 = load ptr, ptr %n.addr, align 8
  %7 = load i32, ptr %6, align 4
  %cmp = icmp sle i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %equed.addr, align 8
  store i8 78, ptr %8, align 1
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call = call float @slamch_(ptr noundef @.str)
  %call1 = call float @slamch_(ptr noundef @.str.1)
  %div = fdiv float %call, %call1
  store float %div, ptr %small, align 4
  %9 = load float, ptr %small, align 4
  %div2 = fdiv float 1.000000e+00, %9
  store float %div2, ptr %large, align 4
  %10 = load ptr, ptr %scond.addr, align 8
  %11 = load float, ptr %10, align 4
  %cmp3 = fcmp oge float %11, 0x3FB99999A0000000
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %12 = load ptr, ptr %amax.addr, align 8
  %13 = load float, ptr %12, align 4
  %14 = load float, ptr %small, align 4
  %cmp4 = fcmp oge float %13, %14
  br i1 %cmp4, label %land.lhs.true5, label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true
  %15 = load ptr, ptr %amax.addr, align 8
  %16 = load float, ptr %15, align 4
  %17 = load float, ptr %large, align 4
  %cmp6 = fcmp ole float %16, %17
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %land.lhs.true5
  %18 = load ptr, ptr %equed.addr, align 8
  store i8 78, ptr %18, align 1
  br label %if.end56

if.else:                                          ; preds = %land.lhs.true5, %land.lhs.true, %if.end
  %19 = load ptr, ptr %uplo.addr, align 8
  %call8 = call i32 @lsame_(ptr noundef %19, ptr noundef @.str.2)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then9, label %if.else28

if.then9:                                         ; preds = %if.else
  %20 = load ptr, ptr %n.addr, align 8
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %if.then9
  %22 = load i32, ptr %j, align 4
  %23 = load i32, ptr %i__1, align 4
  %cmp10 = icmp sle i32 %22, %23
  br i1 %cmp10, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %s.addr, align 8
  %25 = load i32, ptr %j, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds float, ptr %24, i64 %idxprom
  %26 = load float, ptr %arrayidx, align 4
  store float %26, ptr %cj, align 4
  %27 = load i32, ptr %j, align 4
  store i32 %27, ptr %i__2, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %28 = load i32, ptr %i__, align 4
  %29 = load i32, ptr %i__2, align 4
  %cmp12 = icmp sle i32 %28, %29
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %30 = load float, ptr %cj, align 4
  %31 = load ptr, ptr %s.addr, align 8
  %32 = load i32, ptr %i__, align 4
  %idxprom14 = sext i32 %32 to i64
  %arrayidx15 = getelementptr inbounds float, ptr %31, i64 %idxprom14
  %33 = load float, ptr %arrayidx15, align 4
  %mul = fmul float %30, %33
  %34 = load ptr, ptr %a.addr, align 8
  %35 = load i32, ptr %i__, align 4
  %36 = load i32, ptr %j, align 4
  %37 = load i32, ptr %a_dim1, align 4
  %mul16 = mul nsw i32 %36, %37
  %add17 = add nsw i32 %35, %mul16
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds float, ptr %34, i64 %idxprom18
  %38 = load float, ptr %arrayidx19, align 4
  %mul20 = fmul float %mul, %38
  %39 = load ptr, ptr %a.addr, align 8
  %40 = load i32, ptr %i__, align 4
  %41 = load i32, ptr %j, align 4
  %42 = load i32, ptr %a_dim1, align 4
  %mul21 = mul nsw i32 %41, %42
  %add22 = add nsw i32 %40, %mul21
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds float, ptr %39, i64 %idxprom23
  store float %mul20, ptr %arrayidx24, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %43 = load i32, ptr %i__, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, ptr %i__, align 4
  br label %for.cond11, !llvm.loop !5

for.end:                                          ; preds = %for.cond11
  br label %for.inc25

for.inc25:                                        ; preds = %for.end
  %44 = load i32, ptr %j, align 4
  %inc26 = add nsw i32 %44, 1
  store i32 %inc26, ptr %j, align 4
  br label %for.cond, !llvm.loop !7

for.end27:                                        ; preds = %for.cond
  br label %if.end55

if.else28:                                        ; preds = %if.else
  %45 = load ptr, ptr %n.addr, align 8
  %46 = load i32, ptr %45, align 4
  store i32 %46, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc52, %if.else28
  %47 = load i32, ptr %j, align 4
  %48 = load i32, ptr %i__1, align 4
  %cmp30 = icmp sle i32 %47, %48
  br i1 %cmp30, label %for.body31, label %for.end54

for.body31:                                       ; preds = %for.cond29
  %49 = load ptr, ptr %s.addr, align 8
  %50 = load i32, ptr %j, align 4
  %idxprom32 = sext i32 %50 to i64
  %arrayidx33 = getelementptr inbounds float, ptr %49, i64 %idxprom32
  %51 = load float, ptr %arrayidx33, align 4
  store float %51, ptr %cj, align 4
  %52 = load ptr, ptr %n.addr, align 8
  %53 = load i32, ptr %52, align 4
  store i32 %53, ptr %i__2, align 4
  %54 = load i32, ptr %j, align 4
  store i32 %54, ptr %i__, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc49, %for.body31
  %55 = load i32, ptr %i__, align 4
  %56 = load i32, ptr %i__2, align 4
  %cmp35 = icmp sle i32 %55, %56
  br i1 %cmp35, label %for.body36, label %for.end51

for.body36:                                       ; preds = %for.cond34
  %57 = load float, ptr %cj, align 4
  %58 = load ptr, ptr %s.addr, align 8
  %59 = load i32, ptr %i__, align 4
  %idxprom37 = sext i32 %59 to i64
  %arrayidx38 = getelementptr inbounds float, ptr %58, i64 %idxprom37
  %60 = load float, ptr %arrayidx38, align 4
  %mul39 = fmul float %57, %60
  %61 = load ptr, ptr %a.addr, align 8
  %62 = load i32, ptr %i__, align 4
  %63 = load i32, ptr %j, align 4
  %64 = load i32, ptr %a_dim1, align 4
  %mul40 = mul nsw i32 %63, %64
  %add41 = add nsw i32 %62, %mul40
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds float, ptr %61, i64 %idxprom42
  %65 = load float, ptr %arrayidx43, align 4
  %mul44 = fmul float %mul39, %65
  %66 = load ptr, ptr %a.addr, align 8
  %67 = load i32, ptr %i__, align 4
  %68 = load i32, ptr %j, align 4
  %69 = load i32, ptr %a_dim1, align 4
  %mul45 = mul nsw i32 %68, %69
  %add46 = add nsw i32 %67, %mul45
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds float, ptr %66, i64 %idxprom47
  store float %mul44, ptr %arrayidx48, align 4
  br label %for.inc49

for.inc49:                                        ; preds = %for.body36
  %70 = load i32, ptr %i__, align 4
  %inc50 = add nsw i32 %70, 1
  store i32 %inc50, ptr %i__, align 4
  br label %for.cond34, !llvm.loop !8

for.end51:                                        ; preds = %for.cond34
  br label %for.inc52

for.inc52:                                        ; preds = %for.end51
  %71 = load i32, ptr %j, align 4
  %inc53 = add nsw i32 %71, 1
  store i32 %inc53, ptr %j, align 4
  br label %for.cond29, !llvm.loop !9

for.end54:                                        ; preds = %for.cond29
  br label %if.end55

if.end55:                                         ; preds = %for.end54, %for.end27
  %72 = load ptr, ptr %equed.addr, align 8
  store i8 89, ptr %72, align 1
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then7
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end56, %if.then
  %73 = load i32, ptr %retval, align 4
  ret i32 %73
}

declare float @slamch_(ptr noundef) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
