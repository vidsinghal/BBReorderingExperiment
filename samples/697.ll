; ModuleID = 'samples/697.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/clacpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @clacpy_(ptr noundef %uplo, ptr noundef %m, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %b, ptr noundef %ldb) #0 {
entry:
  %uplo.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %b_dim1 = alloca i32, align 4
  %b_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8
  store ptr %m, ptr %m.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %ldb, ptr %ldb.addr, align 8
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
  %add.ptr4 = getelementptr inbounds %struct.complex, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %b.addr, align 8
  %10 = load ptr, ptr %uplo.addr, align 8
  %call = call i32 @lsame_(ptr noundef %10, ptr noundef @.str)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %n.addr, align 8
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %if.then
  %13 = load i32, ptr %j, align 4
  %14 = load i32, ptr %i__1, align 4
  %cmp = icmp sle i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  %15 = load i32, ptr %j, align 4
  %16 = load ptr, ptr %m.addr, align 8
  %17 = load i32, ptr %16, align 4
  %cmp5 = icmp sle i32 %15, %17
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %18 = load i32, ptr %j, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %19 = load ptr, ptr %m.addr, align 8
  %20 = load i32, ptr %19, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %20, %cond.false ]
  store i32 %cond, ptr %i__2, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %cond.end
  %21 = load i32, ptr %i__, align 4
  %22 = load i32, ptr %i__2, align 4
  %cmp7 = icmp sle i32 %21, %22
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %23 = load i32, ptr %i__, align 4
  %24 = load i32, ptr %j, align 4
  %25 = load i32, ptr %b_dim1, align 4
  %mul = mul nsw i32 %24, %25
  %add9 = add nsw i32 %23, %mul
  store i32 %add9, ptr %i__3, align 4
  %26 = load i32, ptr %i__, align 4
  %27 = load i32, ptr %j, align 4
  %28 = load i32, ptr %a_dim1, align 4
  %mul10 = mul nsw i32 %27, %28
  %add11 = add nsw i32 %26, %mul10
  store i32 %add11, ptr %i__4, align 4
  %29 = load ptr, ptr %a.addr, align 8
  %30 = load i32, ptr %i__4, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx = getelementptr inbounds %struct.complex, ptr %29, i64 %idxprom
  %r = getelementptr inbounds %struct.complex, ptr %arrayidx, i32 0, i32 0
  %31 = load float, ptr %r, align 4
  %32 = load ptr, ptr %b.addr, align 8
  %33 = load i32, ptr %i__3, align 4
  %idxprom12 = sext i32 %33 to i64
  %arrayidx13 = getelementptr inbounds %struct.complex, ptr %32, i64 %idxprom12
  %r14 = getelementptr inbounds %struct.complex, ptr %arrayidx13, i32 0, i32 0
  store float %31, ptr %r14, align 4
  %34 = load ptr, ptr %a.addr, align 8
  %35 = load i32, ptr %i__4, align 4
  %idxprom15 = sext i32 %35 to i64
  %arrayidx16 = getelementptr inbounds %struct.complex, ptr %34, i64 %idxprom15
  %i = getelementptr inbounds %struct.complex, ptr %arrayidx16, i32 0, i32 1
  %36 = load float, ptr %i, align 4
  %37 = load ptr, ptr %b.addr, align 8
  %38 = load i32, ptr %i__3, align 4
  %idxprom17 = sext i32 %38 to i64
  %arrayidx18 = getelementptr inbounds %struct.complex, ptr %37, i64 %idxprom17
  %i19 = getelementptr inbounds %struct.complex, ptr %arrayidx18, i32 0, i32 1
  store float %36, ptr %i19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %39 = load i32, ptr %i__, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, ptr %i__, align 4
  br label %for.cond6, !llvm.loop !5

for.end:                                          ; preds = %for.cond6
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %40 = load i32, ptr %j, align 4
  %inc21 = add nsw i32 %40, 1
  store i32 %inc21, ptr %j, align 4
  br label %for.cond, !llvm.loop !7

for.end22:                                        ; preds = %for.cond
  br label %if.end83

if.else:                                          ; preds = %entry
  %41 = load ptr, ptr %uplo.addr, align 8
  %call23 = call i32 @lsame_(ptr noundef %41, ptr noundef @.str.1)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then25, label %if.else54

if.then25:                                        ; preds = %if.else
  %42 = load ptr, ptr %n.addr, align 8
  %43 = load i32, ptr %42, align 4
  store i32 %43, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc51, %if.then25
  %44 = load i32, ptr %j, align 4
  %45 = load i32, ptr %i__1, align 4
  %cmp27 = icmp sle i32 %44, %45
  br i1 %cmp27, label %for.body28, label %for.end53

for.body28:                                       ; preds = %for.cond26
  %46 = load ptr, ptr %m.addr, align 8
  %47 = load i32, ptr %46, align 4
  store i32 %47, ptr %i__2, align 4
  %48 = load i32, ptr %j, align 4
  store i32 %48, ptr %i__, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc48, %for.body28
  %49 = load i32, ptr %i__, align 4
  %50 = load i32, ptr %i__2, align 4
  %cmp30 = icmp sle i32 %49, %50
  br i1 %cmp30, label %for.body31, label %for.end50

for.body31:                                       ; preds = %for.cond29
  %51 = load i32, ptr %i__, align 4
  %52 = load i32, ptr %j, align 4
  %53 = load i32, ptr %b_dim1, align 4
  %mul32 = mul nsw i32 %52, %53
  %add33 = add nsw i32 %51, %mul32
  store i32 %add33, ptr %i__3, align 4
  %54 = load i32, ptr %i__, align 4
  %55 = load i32, ptr %j, align 4
  %56 = load i32, ptr %a_dim1, align 4
  %mul34 = mul nsw i32 %55, %56
  %add35 = add nsw i32 %54, %mul34
  store i32 %add35, ptr %i__4, align 4
  %57 = load ptr, ptr %a.addr, align 8
  %58 = load i32, ptr %i__4, align 4
  %idxprom36 = sext i32 %58 to i64
  %arrayidx37 = getelementptr inbounds %struct.complex, ptr %57, i64 %idxprom36
  %r38 = getelementptr inbounds %struct.complex, ptr %arrayidx37, i32 0, i32 0
  %59 = load float, ptr %r38, align 4
  %60 = load ptr, ptr %b.addr, align 8
  %61 = load i32, ptr %i__3, align 4
  %idxprom39 = sext i32 %61 to i64
  %arrayidx40 = getelementptr inbounds %struct.complex, ptr %60, i64 %idxprom39
  %r41 = getelementptr inbounds %struct.complex, ptr %arrayidx40, i32 0, i32 0
  store float %59, ptr %r41, align 4
  %62 = load ptr, ptr %a.addr, align 8
  %63 = load i32, ptr %i__4, align 4
  %idxprom42 = sext i32 %63 to i64
  %arrayidx43 = getelementptr inbounds %struct.complex, ptr %62, i64 %idxprom42
  %i44 = getelementptr inbounds %struct.complex, ptr %arrayidx43, i32 0, i32 1
  %64 = load float, ptr %i44, align 4
  %65 = load ptr, ptr %b.addr, align 8
  %66 = load i32, ptr %i__3, align 4
  %idxprom45 = sext i32 %66 to i64
  %arrayidx46 = getelementptr inbounds %struct.complex, ptr %65, i64 %idxprom45
  %i47 = getelementptr inbounds %struct.complex, ptr %arrayidx46, i32 0, i32 1
  store float %64, ptr %i47, align 4
  br label %for.inc48

for.inc48:                                        ; preds = %for.body31
  %67 = load i32, ptr %i__, align 4
  %inc49 = add nsw i32 %67, 1
  store i32 %inc49, ptr %i__, align 4
  br label %for.cond29, !llvm.loop !8

for.end50:                                        ; preds = %for.cond29
  br label %for.inc51

for.inc51:                                        ; preds = %for.end50
  %68 = load i32, ptr %j, align 4
  %inc52 = add nsw i32 %68, 1
  store i32 %inc52, ptr %j, align 4
  br label %for.cond26, !llvm.loop !9

for.end53:                                        ; preds = %for.cond26
  br label %if.end

if.else54:                                        ; preds = %if.else
  %69 = load ptr, ptr %n.addr, align 8
  %70 = load i32, ptr %69, align 4
  store i32 %70, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc80, %if.else54
  %71 = load i32, ptr %j, align 4
  %72 = load i32, ptr %i__1, align 4
  %cmp56 = icmp sle i32 %71, %72
  br i1 %cmp56, label %for.body57, label %for.end82

for.body57:                                       ; preds = %for.cond55
  %73 = load ptr, ptr %m.addr, align 8
  %74 = load i32, ptr %73, align 4
  store i32 %74, ptr %i__2, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc77, %for.body57
  %75 = load i32, ptr %i__, align 4
  %76 = load i32, ptr %i__2, align 4
  %cmp59 = icmp sle i32 %75, %76
  br i1 %cmp59, label %for.body60, label %for.end79

for.body60:                                       ; preds = %for.cond58
  %77 = load i32, ptr %i__, align 4
  %78 = load i32, ptr %j, align 4
  %79 = load i32, ptr %b_dim1, align 4
  %mul61 = mul nsw i32 %78, %79
  %add62 = add nsw i32 %77, %mul61
  store i32 %add62, ptr %i__3, align 4
  %80 = load i32, ptr %i__, align 4
  %81 = load i32, ptr %j, align 4
  %82 = load i32, ptr %a_dim1, align 4
  %mul63 = mul nsw i32 %81, %82
  %add64 = add nsw i32 %80, %mul63
  store i32 %add64, ptr %i__4, align 4
  %83 = load ptr, ptr %a.addr, align 8
  %84 = load i32, ptr %i__4, align 4
  %idxprom65 = sext i32 %84 to i64
  %arrayidx66 = getelementptr inbounds %struct.complex, ptr %83, i64 %idxprom65
  %r67 = getelementptr inbounds %struct.complex, ptr %arrayidx66, i32 0, i32 0
  %85 = load float, ptr %r67, align 4
  %86 = load ptr, ptr %b.addr, align 8
  %87 = load i32, ptr %i__3, align 4
  %idxprom68 = sext i32 %87 to i64
  %arrayidx69 = getelementptr inbounds %struct.complex, ptr %86, i64 %idxprom68
  %r70 = getelementptr inbounds %struct.complex, ptr %arrayidx69, i32 0, i32 0
  store float %85, ptr %r70, align 4
  %88 = load ptr, ptr %a.addr, align 8
  %89 = load i32, ptr %i__4, align 4
  %idxprom71 = sext i32 %89 to i64
  %arrayidx72 = getelementptr inbounds %struct.complex, ptr %88, i64 %idxprom71
  %i73 = getelementptr inbounds %struct.complex, ptr %arrayidx72, i32 0, i32 1
  %90 = load float, ptr %i73, align 4
  %91 = load ptr, ptr %b.addr, align 8
  %92 = load i32, ptr %i__3, align 4
  %idxprom74 = sext i32 %92 to i64
  %arrayidx75 = getelementptr inbounds %struct.complex, ptr %91, i64 %idxprom74
  %i76 = getelementptr inbounds %struct.complex, ptr %arrayidx75, i32 0, i32 1
  store float %90, ptr %i76, align 4
  br label %for.inc77

for.inc77:                                        ; preds = %for.body60
  %93 = load i32, ptr %i__, align 4
  %inc78 = add nsw i32 %93, 1
  store i32 %inc78, ptr %i__, align 4
  br label %for.cond58, !llvm.loop !10

for.end79:                                        ; preds = %for.cond58
  br label %for.inc80

for.inc80:                                        ; preds = %for.end79
  %94 = load i32, ptr %j, align 4
  %inc81 = add nsw i32 %94, 1
  store i32 %inc81, ptr %j, align 4
  br label %for.cond55, !llvm.loop !11

for.end82:                                        ; preds = %for.cond55
  br label %if.end

if.end:                                           ; preds = %for.end82, %for.end53
  br label %if.end83

if.end83:                                         ; preds = %if.end, %for.end22
  ret i32 0
}

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
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
