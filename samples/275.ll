; ModuleID = 'samples/275.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/dtptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"DTPTRS\00", align 1
@c__1 = internal global i32 1, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @dtptrs_(ptr noundef %uplo, ptr noundef %trans, ptr noundef %diag, ptr noundef %n, ptr noundef %nrhs, ptr noundef %ap, ptr noundef %b, ptr noundef %ldb, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %trans.addr = alloca ptr, align 8
  %diag.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %nrhs.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %b_dim1 = alloca i32, align 4
  %b_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %j = alloca i32, align 4
  %jc = alloca i32, align 4
  %upper = alloca i32, align 4
  %nounit = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8
  store ptr %trans, ptr %trans.addr, align 8
  store ptr %diag, ptr %diag.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %nrhs, ptr %nrhs.addr, align 8
  store ptr %ap, ptr %ap.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %ldb, ptr %ldb.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  %0 = load ptr, ptr %ap.addr, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %ap.addr, align 8
  %1 = load ptr, ptr %ldb.addr, align 8
  %2 = load i32, ptr %1, align 4
  store i32 %2, ptr %b_dim1, align 4
  %3 = load i32, ptr %b_dim1, align 4
  %add = add nsw i32 1, %3
  store i32 %add, ptr %b_offset, align 4
  %4 = load i32, ptr %b_offset, align 4
  %5 = load ptr, ptr %b.addr, align 8
  %idx.ext = sext i32 %4 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds double, ptr %5, i64 %idx.neg
  store ptr %add.ptr, ptr %b.addr, align 8
  %6 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %6, align 4
  %7 = load ptr, ptr %uplo.addr, align 8
  %call = call i32 @lsame_(ptr noundef %7, ptr noundef @.str)
  store i32 %call, ptr %upper, align 4
  %8 = load ptr, ptr %diag.addr, align 8
  %call1 = call i32 @lsame_(ptr noundef %8, ptr noundef @.str.1)
  store i32 %call1, ptr %nounit, align 4
  %9 = load i32, ptr %upper, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %10 = load ptr, ptr %uplo.addr, align 8
  %call2 = call i32 @lsame_(ptr noundef %10, ptr noundef @.str.2)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %11 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %11, align 4
  br label %if.end32

if.else:                                          ; preds = %land.lhs.true, %entry
  %12 = load ptr, ptr %trans.addr, align 8
  %call4 = call i32 @lsame_(ptr noundef %12, ptr noundef @.str.1)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.else13, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %if.else
  %13 = load ptr, ptr %trans.addr, align 8
  %call7 = call i32 @lsame_(ptr noundef %13, ptr noundef @.str.3)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.else13, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %14 = load ptr, ptr %trans.addr, align 8
  %call10 = call i32 @lsame_(ptr noundef %14, ptr noundef @.str.4)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.else13, label %if.then12

if.then12:                                        ; preds = %land.lhs.true9
  %15 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %15, align 4
  br label %if.end31

if.else13:                                        ; preds = %land.lhs.true9, %land.lhs.true6, %if.else
  %16 = load i32, ptr %nounit, align 4
  %tobool14 = icmp ne i32 %16, 0
  br i1 %tobool14, label %if.else19, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.else13
  %17 = load ptr, ptr %diag.addr, align 8
  %call16 = call i32 @lsame_(ptr noundef %17, ptr noundef @.str)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.else19, label %if.then18

if.then18:                                        ; preds = %land.lhs.true15
  %18 = load ptr, ptr %info.addr, align 8
  store i32 -3, ptr %18, align 4
  br label %if.end30

if.else19:                                        ; preds = %land.lhs.true15, %if.else13
  %19 = load ptr, ptr %n.addr, align 8
  %20 = load i32, ptr %19, align 4
  %cmp = icmp slt i32 %20, 0
  br i1 %cmp, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else19
  %21 = load ptr, ptr %info.addr, align 8
  store i32 -4, ptr %21, align 4
  br label %if.end29

if.else21:                                        ; preds = %if.else19
  %22 = load ptr, ptr %nrhs.addr, align 8
  %23 = load i32, ptr %22, align 4
  %cmp22 = icmp slt i32 %23, 0
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else21
  %24 = load ptr, ptr %info.addr, align 8
  store i32 -5, ptr %24, align 4
  br label %if.end28

if.else24:                                        ; preds = %if.else21
  %25 = load ptr, ptr %ldb.addr, align 8
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %n.addr, align 8
  %28 = load i32, ptr %27, align 4
  %cmp25 = icmp sge i32 1, %28
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else24
  br label %cond.end

cond.false:                                       ; preds = %if.else24
  %29 = load ptr, ptr %n.addr, align 8
  %30 = load i32, ptr %29, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %30, %cond.false ]
  %cmp26 = icmp slt i32 %26, %cond
  br i1 %cmp26, label %if.then27, label %if.end

if.then27:                                        ; preds = %cond.end
  %31 = load ptr, ptr %info.addr, align 8
  store i32 -8, ptr %31, align 4
  br label %if.end

if.end:                                           ; preds = %if.then27, %cond.end
  br label %if.end28

if.end28:                                         ; preds = %if.end, %if.then23
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then20
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then18
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then12
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then
  %32 = load ptr, ptr %info.addr, align 8
  %33 = load i32, ptr %32, align 4
  %cmp33 = icmp ne i32 %33, 0
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end32
  %34 = load ptr, ptr %info.addr, align 8
  %35 = load i32, ptr %34, align 4
  %sub = sub nsw i32 0, %35
  store i32 %sub, ptr %i__1, align 4
  %call35 = call i32 @xerbla_(ptr noundef @.str.5, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.end32
  %36 = load ptr, ptr %n.addr, align 8
  %37 = load i32, ptr %36, align 4
  %cmp37 = icmp eq i32 %37, 0
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end36
  store i32 0, ptr %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.end36
  %38 = load i32, ptr %nounit, align 4
  %tobool40 = icmp ne i32 %38, 0
  br i1 %tobool40, label %if.then41, label %if.end67

if.then41:                                        ; preds = %if.end39
  %39 = load i32, ptr %upper, align 4
  %tobool42 = icmp ne i32 %39, 0
  br i1 %tobool42, label %if.then43, label %if.else51

if.then43:                                        ; preds = %if.then41
  store i32 1, ptr %jc, align 4
  %40 = load ptr, ptr %n.addr, align 8
  %41 = load i32, ptr %40, align 4
  store i32 %41, ptr %i__1, align 4
  %42 = load ptr, ptr %info.addr, align 8
  store i32 1, ptr %42, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then43
  %43 = load ptr, ptr %info.addr, align 8
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %i__1, align 4
  %cmp44 = icmp sle i32 %44, %45
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load ptr, ptr %ap.addr, align 8
  %47 = load i32, ptr %jc, align 4
  %48 = load ptr, ptr %info.addr, align 8
  %49 = load i32, ptr %48, align 4
  %add45 = add nsw i32 %47, %49
  %sub46 = sub nsw i32 %add45, 1
  %idxprom = sext i32 %sub46 to i64
  %arrayidx = getelementptr inbounds double, ptr %46, i64 %idxprom
  %50 = load double, ptr %arrayidx, align 8
  %cmp47 = fcmp oeq double %50, 0.000000e+00
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end49:                                         ; preds = %for.body
  %51 = load ptr, ptr %info.addr, align 8
  %52 = load i32, ptr %51, align 4
  %53 = load i32, ptr %jc, align 4
  %add50 = add nsw i32 %53, %52
  store i32 %add50, ptr %jc, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end49
  %54 = load ptr, ptr %info.addr, align 8
  %55 = load i32, ptr %54, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, ptr %54, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %if.end66

if.else51:                                        ; preds = %if.then41
  store i32 1, ptr %jc, align 4
  %56 = load ptr, ptr %n.addr, align 8
  %57 = load i32, ptr %56, align 4
  store i32 %57, ptr %i__1, align 4
  %58 = load ptr, ptr %info.addr, align 8
  store i32 1, ptr %58, align 4
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc63, %if.else51
  %59 = load ptr, ptr %info.addr, align 8
  %60 = load i32, ptr %59, align 4
  %61 = load i32, ptr %i__1, align 4
  %cmp53 = icmp sle i32 %60, %61
  br i1 %cmp53, label %for.body54, label %for.end65

for.body54:                                       ; preds = %for.cond52
  %62 = load ptr, ptr %ap.addr, align 8
  %63 = load i32, ptr %jc, align 4
  %idxprom55 = sext i32 %63 to i64
  %arrayidx56 = getelementptr inbounds double, ptr %62, i64 %idxprom55
  %64 = load double, ptr %arrayidx56, align 8
  %cmp57 = fcmp oeq double %64, 0.000000e+00
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %for.body54
  store i32 0, ptr %retval, align 4
  br label %return

if.end59:                                         ; preds = %for.body54
  %65 = load i32, ptr %jc, align 4
  %66 = load ptr, ptr %n.addr, align 8
  %67 = load i32, ptr %66, align 4
  %add60 = add nsw i32 %65, %67
  %68 = load ptr, ptr %info.addr, align 8
  %69 = load i32, ptr %68, align 4
  %sub61 = sub nsw i32 %add60, %69
  %add62 = add nsw i32 %sub61, 1
  store i32 %add62, ptr %jc, align 4
  br label %for.inc63

for.inc63:                                        ; preds = %if.end59
  %70 = load ptr, ptr %info.addr, align 8
  %71 = load i32, ptr %70, align 4
  %inc64 = add nsw i32 %71, 1
  store i32 %inc64, ptr %70, align 4
  br label %for.cond52, !llvm.loop !7

for.end65:                                        ; preds = %for.cond52
  br label %if.end66

if.end66:                                         ; preds = %for.end65, %for.end
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.end39
  %72 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %72, align 4
  %73 = load ptr, ptr %nrhs.addr, align 8
  %74 = load i32, ptr %73, align 4
  store i32 %74, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc76, %if.end67
  %75 = load i32, ptr %j, align 4
  %76 = load i32, ptr %i__1, align 4
  %cmp69 = icmp sle i32 %75, %76
  br i1 %cmp69, label %for.body70, label %for.end78

for.body70:                                       ; preds = %for.cond68
  %77 = load ptr, ptr %uplo.addr, align 8
  %78 = load ptr, ptr %trans.addr, align 8
  %79 = load ptr, ptr %diag.addr, align 8
  %80 = load ptr, ptr %n.addr, align 8
  %81 = load ptr, ptr %ap.addr, align 8
  %arrayidx71 = getelementptr inbounds double, ptr %81, i64 1
  %82 = load ptr, ptr %b.addr, align 8
  %83 = load i32, ptr %j, align 4
  %84 = load i32, ptr %b_dim1, align 4
  %mul = mul nsw i32 %83, %84
  %add72 = add nsw i32 %mul, 1
  %idxprom73 = sext i32 %add72 to i64
  %arrayidx74 = getelementptr inbounds double, ptr %82, i64 %idxprom73
  %call75 = call i32 @dtpsv_(ptr noundef %77, ptr noundef %78, ptr noundef %79, ptr noundef %80, ptr noundef %arrayidx71, ptr noundef %arrayidx74, ptr noundef @c__1)
  br label %for.inc76

for.inc76:                                        ; preds = %for.body70
  %85 = load i32, ptr %j, align 4
  %inc77 = add nsw i32 %85, 1
  store i32 %inc77, ptr %j, align 4
  br label %for.cond68, !llvm.loop !8

for.end78:                                        ; preds = %for.cond68
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end78, %if.then58, %if.then48, %if.then38, %if.then34
  %86 = load i32, ptr %retval, align 4
  ret i32 %86
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare i32 @dtpsv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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
