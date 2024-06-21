; ModuleID = 'samples/941.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/zpbtrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ZPBTRS\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Conjugate transpose\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Non-unit\00", align 1
@c__1 = internal global i32 1, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zpbtrs_(ptr noundef %uplo, ptr noundef %n, ptr noundef %kd, ptr noundef %nrhs, ptr noundef %ab, ptr noundef %ldab, ptr noundef %b, ptr noundef %ldb, ptr noundef %info) #0 {
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
  %j = alloca i32, align 4
  %upper = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %kd, ptr %kd.addr, align 8, !tbaa !4
  store ptr %nrhs, ptr %nrhs.addr, align 8, !tbaa !4
  store ptr %ab, ptr %ab.addr, align 8, !tbaa !4
  store ptr %ldab, ptr %ldab.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %ldb, ptr %ldb.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ab_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ab_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper) #3
  %0 = load ptr, ptr %ldab.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  store i32 %1, ptr %ab_dim1, align 4, !tbaa !8
  %2 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %add = add nsw i32 1, %2
  store i32 %add, ptr %ab_offset, align 4, !tbaa !8
  %3 = load i32, ptr %ab_offset, align 4, !tbaa !8
  %4 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.doublecomplex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %ab.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %6 = load i32, ptr %5, align 4, !tbaa !8
  store i32 %6, ptr %b_dim1, align 4, !tbaa !8
  %7 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add1 = add nsw i32 1, %7
  store i32 %add1, ptr %b_offset, align 4, !tbaa !8
  %8 = load i32, ptr %b_offset, align 4, !tbaa !8
  %9 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %idx.ext2 = sext i32 %8 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds %struct.doublecomplex, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %b.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %10, align 4, !tbaa !8
  %11 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %11, ptr noundef @.str)
  store i32 %call, ptr %upper, align 4, !tbaa !8
  %12 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %13 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call5 = call i32 @lsame_(ptr noundef %13, ptr noundef @.str.1)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %14 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %14, align 4, !tbaa !8
  br label %if.end26

if.else:                                          ; preds = %land.lhs.true, %entry
  %15 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %16 = load i32, ptr %15, align 4, !tbaa !8
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  %17 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %17, align 4, !tbaa !8
  br label %if.end25

if.else8:                                         ; preds = %if.else
  %18 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %19 = load i32, ptr %18, align 4, !tbaa !8
  %cmp9 = icmp slt i32 %19, 0
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else8
  %20 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -3, ptr %20, align 4, !tbaa !8
  br label %if.end24

if.else11:                                        ; preds = %if.else8
  %21 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %22 = load i32, ptr %21, align 4, !tbaa !8
  %cmp12 = icmp slt i32 %22, 0
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.else11
  %23 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -4, ptr %23, align 4, !tbaa !8
  br label %if.end23

if.else14:                                        ; preds = %if.else11
  %24 = load ptr, ptr %ldab.addr, align 8, !tbaa !4
  %25 = load i32, ptr %24, align 4, !tbaa !8
  %26 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %27 = load i32, ptr %26, align 4, !tbaa !8
  %add15 = add nsw i32 %27, 1
  %cmp16 = icmp slt i32 %25, %add15
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else14
  %28 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -6, ptr %28, align 4, !tbaa !8
  br label %if.end22

if.else18:                                        ; preds = %if.else14
  %29 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %30 = load i32, ptr %29, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  store i32 1, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %31 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %32 = load i32, ptr %31, align 4, !tbaa !8
  store i32 %32, ptr %_y, align 4, !tbaa !8
  %33 = load i32, ptr %_x, align 4, !tbaa !8
  %34 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp19 = icmp sgt i32 %33, %34
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else18
  %35 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.else18
  %36 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %35, %cond.true ], [ %36, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %37 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp20 = icmp slt i32 %30, %37
  br i1 %cmp20, label %if.then21, label %if.end

if.then21:                                        ; preds = %cond.end
  %38 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -8, ptr %38, align 4, !tbaa !8
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
  %39 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %40 = load i32, ptr %39, align 4, !tbaa !8
  %cmp27 = icmp ne i32 %40, 0
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end26
  %41 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %42 = load i32, ptr %41, align 4, !tbaa !8
  %sub = sub nsw i32 0, %42
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call29 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %43 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %44 = load i32, ptr %43, align 4, !tbaa !8
  %cmp31 = icmp eq i32 %44, 0
  br i1 %cmp31, label %if.then33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end30
  %45 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %46 = load i32, ptr %45, align 4, !tbaa !8
  %cmp32 = icmp eq i32 %46, 0
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %lor.lhs.false, %if.end30
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end34:                                         ; preds = %lor.lhs.false
  %47 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool35 = icmp ne i32 %47, 0
  br i1 %tobool35, label %if.then36, label %if.else49

if.then36:                                        ; preds = %if.end34
  %48 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %49 = load i32, ptr %48, align 4, !tbaa !8
  store i32 %49, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then36
  %50 = load i32, ptr %j, align 4, !tbaa !8
  %51 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp37 = icmp sle i32 %50, %51
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %53 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %54 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %55 = load i32, ptr %ab_offset, align 4, !tbaa !8
  %idxprom = sext i32 %55 to i64
  %arrayidx = getelementptr inbounds %struct.doublecomplex, ptr %54, i64 %idxprom
  %56 = load ptr, ptr %ldab.addr, align 8, !tbaa !4
  %57 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %58 = load i32, ptr %j, align 4, !tbaa !8
  %59 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %58, %59
  %add38 = add nsw i32 %mul, 1
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds %struct.doublecomplex, ptr %57, i64 %idxprom39
  %call41 = call i32 @ztbsv_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.5, ptr noundef %52, ptr noundef %53, ptr noundef %arrayidx, ptr noundef %56, ptr noundef %arrayidx40, ptr noundef @c__1)
  %60 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %61 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %62 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %63 = load i32, ptr %ab_offset, align 4, !tbaa !8
  %idxprom42 = sext i32 %63 to i64
  %arrayidx43 = getelementptr inbounds %struct.doublecomplex, ptr %62, i64 %idxprom42
  %64 = load ptr, ptr %ldab.addr, align 8, !tbaa !4
  %65 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %66 = load i32, ptr %j, align 4, !tbaa !8
  %67 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul44 = mul nsw i32 %66, %67
  %add45 = add nsw i32 %mul44, 1
  %idxprom46 = sext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds %struct.doublecomplex, ptr %65, i64 %idxprom46
  %call48 = call i32 @ztbsv_(ptr noundef @.str.3, ptr noundef @.str.6, ptr noundef @.str.5, ptr noundef %60, ptr noundef %61, ptr noundef %arrayidx43, ptr noundef %64, ptr noundef %arrayidx47, ptr noundef @c__1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %68 = load i32, ptr %j, align 4, !tbaa !8
  %inc = add nsw i32 %68, 1
  store i32 %inc, ptr %j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  br label %if.end70

if.else49:                                        ; preds = %if.end34
  %69 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %70 = load i32, ptr %69, align 4, !tbaa !8
  store i32 %70, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc67, %if.else49
  %71 = load i32, ptr %j, align 4, !tbaa !8
  %72 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp51 = icmp sle i32 %71, %72
  br i1 %cmp51, label %for.body52, label %for.end69

for.body52:                                       ; preds = %for.cond50
  %73 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %74 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %75 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %76 = load i32, ptr %ab_offset, align 4, !tbaa !8
  %idxprom53 = sext i32 %76 to i64
  %arrayidx54 = getelementptr inbounds %struct.doublecomplex, ptr %75, i64 %idxprom53
  %77 = load ptr, ptr %ldab.addr, align 8, !tbaa !4
  %78 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %79 = load i32, ptr %j, align 4, !tbaa !8
  %80 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul55 = mul nsw i32 %79, %80
  %add56 = add nsw i32 %mul55, 1
  %idxprom57 = sext i32 %add56 to i64
  %arrayidx58 = getelementptr inbounds %struct.doublecomplex, ptr %78, i64 %idxprom57
  %call59 = call i32 @ztbsv_(ptr noundef @.str.7, ptr noundef @.str.6, ptr noundef @.str.5, ptr noundef %73, ptr noundef %74, ptr noundef %arrayidx54, ptr noundef %77, ptr noundef %arrayidx58, ptr noundef @c__1)
  %81 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %82 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %83 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %84 = load i32, ptr %ab_offset, align 4, !tbaa !8
  %idxprom60 = sext i32 %84 to i64
  %arrayidx61 = getelementptr inbounds %struct.doublecomplex, ptr %83, i64 %idxprom60
  %85 = load ptr, ptr %ldab.addr, align 8, !tbaa !4
  %86 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %87 = load i32, ptr %j, align 4, !tbaa !8
  %88 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul62 = mul nsw i32 %87, %88
  %add63 = add nsw i32 %mul62, 1
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds %struct.doublecomplex, ptr %86, i64 %idxprom64
  %call66 = call i32 @ztbsv_(ptr noundef @.str.7, ptr noundef @.str.4, ptr noundef @.str.5, ptr noundef %81, ptr noundef %82, ptr noundef %arrayidx61, ptr noundef %85, ptr noundef %arrayidx65, ptr noundef @c__1)
  br label %for.inc67

for.inc67:                                        ; preds = %for.body52
  %89 = load i32, ptr %j, align 4, !tbaa !8
  %inc68 = add nsw i32 %89, 1
  store i32 %inc68, ptr %j, align 4, !tbaa !8
  br label %for.cond50, !llvm.loop !12

for.end69:                                        ; preds = %for.cond50
  br label %if.end70

if.end70:                                         ; preds = %for.end69, %for.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.then33, %if.then28
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ab_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ab_dim1) #3
  %90 = load i32, ptr %retval, align 4
  ret i32 %90
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare i32 @ztbsv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
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
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
