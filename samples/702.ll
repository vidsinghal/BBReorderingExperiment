; ModuleID = 'samples/702.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/chpcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CHPCON\00", align 1
@c__1 = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define i32 @chpcon_(ptr noundef %uplo, ptr noundef %n, ptr noundef %ap, ptr noundef %ipiv, ptr noundef %anorm, ptr noundef %rcond, ptr noundef %work, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %ipiv.addr = alloca ptr, align 8
  %anorm.addr = alloca ptr, align 8
  %rcond.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__ = alloca i32, align 4
  %ip = alloca i32, align 4
  %kase = alloca i32, align 4
  %isave = alloca [3 x i32], align 4
  %upper = alloca i32, align 4
  %ainvnm = alloca float, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !4
  store ptr %ipiv, ptr %ipiv.addr, align 8, !tbaa !4
  store ptr %anorm, ptr %anorm.addr, align 8, !tbaa !4
  store ptr %rcond, ptr %rcond.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ip) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %kase) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr %isave) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ainvnm) #3
  %0 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.complex, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %work.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %incdec.ptr1 = getelementptr inbounds i32, ptr %1, i32 -1
  store ptr %incdec.ptr1, ptr %ipiv.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %incdec.ptr2 = getelementptr inbounds %struct.complex, ptr %2, i32 -1
  store ptr %incdec.ptr2, ptr %ap.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %3, align 4, !tbaa !8
  %4 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %4, ptr noundef @.str)
  store i32 %call, ptr %upper, align 4, !tbaa !8
  %5 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call3 = call i32 @lsame_(ptr noundef %6, ptr noundef @.str.1)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %7, align 4, !tbaa !8
  br label %if.end10

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %9 = load i32, ptr %8, align 4, !tbaa !8
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  %10 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %10, align 4, !tbaa !8
  br label %if.end9

if.else6:                                         ; preds = %if.else
  %11 = load ptr, ptr %anorm.addr, align 8, !tbaa !4
  %12 = load float, ptr %11, align 4, !tbaa !10
  %cmp7 = fcmp olt float %12, 0.000000e+00
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.else6
  %13 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -5, ptr %13, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.else6
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then5
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then
  %14 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %15 = load i32, ptr %14, align 4, !tbaa !8
  %cmp11 = icmp ne i32 %15, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %16 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %17 = load i32, ptr %16, align 4, !tbaa !8
  %sub = sub nsw i32 0, %17
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call13 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %18 = load ptr, ptr %rcond.addr, align 8, !tbaa !4
  store float 0.000000e+00, ptr %18, align 4, !tbaa !10
  %19 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %20 = load i32, ptr %19, align 4, !tbaa !8
  %cmp15 = icmp eq i32 %20, 0
  br i1 %cmp15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.end14
  %21 = load ptr, ptr %rcond.addr, align 8, !tbaa !4
  store float 1.000000e+00, ptr %21, align 4, !tbaa !10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else17:                                        ; preds = %if.end14
  %22 = load ptr, ptr %anorm.addr, align 8, !tbaa !4
  %23 = load float, ptr %22, align 4, !tbaa !10
  %cmp18 = fcmp ole float %23, 0.000000e+00
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.else17
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.else17
  br label %if.end21

if.end21:                                         ; preds = %if.end20
  %24 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool22 = icmp ne i32 %24, 0
  br i1 %tobool22, label %if.then23, label %if.else37

if.then23:                                        ; preds = %if.end21
  %25 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %26 = load i32, ptr %25, align 4, !tbaa !8
  %27 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %28 = load i32, ptr %27, align 4, !tbaa !8
  %add = add nsw i32 %28, 1
  %mul = mul nsw i32 %26, %add
  %div = sdiv i32 %mul, 2
  store i32 %div, ptr %ip, align 4, !tbaa !8
  %29 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %30 = load i32, ptr %29, align 4, !tbaa !8
  store i32 %30, ptr %i__, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then23
  %31 = load i32, ptr %i__, align 4, !tbaa !8
  %cmp24 = icmp sge i32 %31, 1
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, ptr %ip, align 4, !tbaa !8
  store i32 %32, ptr %i__1, align 4, !tbaa !8
  %33 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %34 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom = sext i32 %34 to i64
  %arrayidx = getelementptr inbounds i32, ptr %33, i64 %idxprom
  %35 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %cmp25 = icmp sgt i32 %35, 0
  br i1 %cmp25, label %land.lhs.true26, label %if.end35

land.lhs.true26:                                  ; preds = %for.body
  %36 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %37 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom27 = sext i32 %37 to i64
  %arrayidx28 = getelementptr inbounds %struct.complex, ptr %36, i64 %idxprom27
  %r = getelementptr inbounds %struct.complex, ptr %arrayidx28, i32 0, i32 0
  %38 = load float, ptr %r, align 4, !tbaa !12
  %cmp29 = fcmp oeq float %38, 0.000000e+00
  br i1 %cmp29, label %land.lhs.true30, label %if.end35

land.lhs.true30:                                  ; preds = %land.lhs.true26
  %39 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %40 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom31 = sext i32 %40 to i64
  %arrayidx32 = getelementptr inbounds %struct.complex, ptr %39, i64 %idxprom31
  %i = getelementptr inbounds %struct.complex, ptr %arrayidx32, i32 0, i32 1
  %41 = load float, ptr %i, align 4, !tbaa !14
  %cmp33 = fcmp oeq float %41, 0.000000e+00
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %land.lhs.true30
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end35:                                         ; preds = %land.lhs.true30, %land.lhs.true26, %for.body
  %42 = load i32, ptr %i__, align 4, !tbaa !8
  %43 = load i32, ptr %ip, align 4, !tbaa !8
  %sub36 = sub nsw i32 %43, %42
  store i32 %sub36, ptr %ip, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %if.end35
  %44 = load i32, ptr %i__, align 4, !tbaa !8
  %dec = add nsw i32 %44, -1
  store i32 %dec, ptr %i__, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  br label %if.end61

if.else37:                                        ; preds = %if.end21
  store i32 1, ptr %ip, align 4, !tbaa !8
  %45 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %46 = load i32, ptr %45, align 4, !tbaa !8
  store i32 %46, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc59, %if.else37
  %47 = load i32, ptr %i__, align 4, !tbaa !8
  %48 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp39 = icmp sle i32 %47, %48
  br i1 %cmp39, label %for.body40, label %for.end60

for.body40:                                       ; preds = %for.cond38
  %49 = load i32, ptr %ip, align 4, !tbaa !8
  store i32 %49, ptr %i__2, align 4, !tbaa !8
  %50 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %51 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom41 = sext i32 %51 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %50, i64 %idxprom41
  %52 = load i32, ptr %arrayidx42, align 4, !tbaa !8
  %cmp43 = icmp sgt i32 %52, 0
  br i1 %cmp43, label %land.lhs.true44, label %if.end55

land.lhs.true44:                                  ; preds = %for.body40
  %53 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %54 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom45 = sext i32 %54 to i64
  %arrayidx46 = getelementptr inbounds %struct.complex, ptr %53, i64 %idxprom45
  %r47 = getelementptr inbounds %struct.complex, ptr %arrayidx46, i32 0, i32 0
  %55 = load float, ptr %r47, align 4, !tbaa !12
  %cmp48 = fcmp oeq float %55, 0.000000e+00
  br i1 %cmp48, label %land.lhs.true49, label %if.end55

land.lhs.true49:                                  ; preds = %land.lhs.true44
  %56 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %57 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom50 = sext i32 %57 to i64
  %arrayidx51 = getelementptr inbounds %struct.complex, ptr %56, i64 %idxprom50
  %i52 = getelementptr inbounds %struct.complex, ptr %arrayidx51, i32 0, i32 1
  %58 = load float, ptr %i52, align 4, !tbaa !14
  %cmp53 = fcmp oeq float %58, 0.000000e+00
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %land.lhs.true49
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end55:                                         ; preds = %land.lhs.true49, %land.lhs.true44, %for.body40
  %59 = load i32, ptr %ip, align 4, !tbaa !8
  %60 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %61 = load i32, ptr %60, align 4, !tbaa !8
  %add56 = add nsw i32 %59, %61
  %62 = load i32, ptr %i__, align 4, !tbaa !8
  %sub57 = sub nsw i32 %add56, %62
  %add58 = add nsw i32 %sub57, 1
  store i32 %add58, ptr %ip, align 4, !tbaa !8
  br label %for.inc59

for.inc59:                                        ; preds = %if.end55
  %63 = load i32, ptr %i__, align 4, !tbaa !8
  %inc = add nsw i32 %63, 1
  store i32 %inc, ptr %i__, align 4, !tbaa !8
  br label %for.cond38, !llvm.loop !17

for.end60:                                        ; preds = %for.cond38
  br label %if.end61

if.end61:                                         ; preds = %for.end60, %for.end
  store i32 0, ptr %kase, align 4, !tbaa !8
  br label %L30

L30:                                              ; preds = %if.then68, %if.end61
  %64 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %65 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %66 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %67 = load i32, ptr %66, align 4, !tbaa !8
  %add62 = add nsw i32 %67, 1
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds %struct.complex, ptr %65, i64 %idxprom63
  %68 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx65 = getelementptr inbounds %struct.complex, ptr %68, i64 1
  %arraydecay = getelementptr inbounds [3 x i32], ptr %isave, i64 0, i64 0
  %call66 = call i32 @clacn2_(ptr noundef %64, ptr noundef %arrayidx64, ptr noundef %arrayidx65, ptr noundef %ainvnm, ptr noundef %kase, ptr noundef %arraydecay)
  %69 = load i32, ptr %kase, align 4, !tbaa !8
  %cmp67 = icmp ne i32 %69, 0
  br i1 %cmp67, label %if.then68, label %if.end73

if.then68:                                        ; preds = %L30
  %70 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %71 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %72 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %arrayidx69 = getelementptr inbounds %struct.complex, ptr %72, i64 1
  %73 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %arrayidx70 = getelementptr inbounds i32, ptr %73, i64 1
  %74 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx71 = getelementptr inbounds %struct.complex, ptr %74, i64 1
  %75 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %76 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call72 = call i32 @chptrs_(ptr noundef %70, ptr noundef %71, ptr noundef @c__1, ptr noundef %arrayidx69, ptr noundef %arrayidx70, ptr noundef %arrayidx71, ptr noundef %75, ptr noundef %76)
  br label %L30

if.end73:                                         ; preds = %L30
  %77 = load float, ptr %ainvnm, align 4, !tbaa !10
  %cmp74 = fcmp une float %77, 0.000000e+00
  br i1 %cmp74, label %if.then75, label %if.end78

if.then75:                                        ; preds = %if.end73
  %78 = load float, ptr %ainvnm, align 4, !tbaa !10
  %div76 = fdiv float 1.000000e+00, %78
  %79 = load ptr, ptr %anorm.addr, align 8, !tbaa !4
  %80 = load float, ptr %79, align 4, !tbaa !10
  %div77 = fdiv float %div76, %80
  %81 = load ptr, ptr %rcond.addr, align 8, !tbaa !4
  store float %div77, ptr %81, align 4, !tbaa !10
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.end73
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %if.then54, %if.then34, %if.then19, %if.then16, %if.then12
  call void @llvm.lifetime.end.p0(i64 4, ptr %ainvnm) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr %isave) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %kase) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ip) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  %82 = load i32, ptr %retval, align 4
  ret i32 %82
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare i32 @clacn2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @chptrs_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

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
!10 = !{!11, !11, i64 0}
!11 = !{!"float", !6, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"", !11, i64 0, !11, i64 4}
!14 = !{!13, !11, i64 4}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
