; ModuleID = 'samples/817.bc'
source_filename = "/local-ssd/itk-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv-build/aidengro/spack-stage-itk-5.2.1-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv/spack-src/Modules/ThirdParty/VNL/src/vxl/v3p/netlib/lapack/double/dlacpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1

; Function Attrs: nounwind uwtable
define i32 @v3p_netlib_dlacpy_(ptr noundef %uplo, ptr noundef %m, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %b, ptr noundef %ldb, i64 noundef %uplo_len) #0 {
entry:
  %uplo.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %uplo_len.addr = alloca i64, align 8
  %a_dim1 = alloca i64, align 8
  %a_offset = alloca i64, align 8
  %b_dim1 = alloca i64, align 8
  %b_offset = alloca i64, align 8
  %i__1 = alloca i64, align 8
  %i__2 = alloca i64, align 8
  %i__ = alloca i64, align 8
  %j = alloca i64, align 8
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %ldb, ptr %ldb.addr, align 8, !tbaa !4
  store i64 %uplo_len, ptr %uplo_len.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_dim1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_offset) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_dim1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_offset) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i__2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i__) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  %0 = load i64, ptr %uplo_len.addr, align 8, !tbaa !8
  %1 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %2 = load i64, ptr %1, align 8, !tbaa !8
  store i64 %2, ptr %a_dim1, align 8, !tbaa !8
  %3 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %add = add nsw i64 1, %3
  store i64 %add, ptr %a_offset, align 8, !tbaa !8
  %4 = load i64, ptr %a_offset, align 8, !tbaa !8
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %idx.neg = sub i64 0, %4
  %add.ptr = getelementptr inbounds double, ptr %5, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %7 = load i64, ptr %6, align 8, !tbaa !8
  store i64 %7, ptr %b_dim1, align 8, !tbaa !8
  %8 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %add1 = add nsw i64 1, %8
  store i64 %add1, ptr %b_offset, align 8, !tbaa !8
  %9 = load i64, ptr %b_offset, align 8, !tbaa !8
  %10 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %idx.neg2 = sub i64 0, %9
  %add.ptr3 = getelementptr inbounds double, ptr %10, i64 %idx.neg2
  store ptr %add.ptr3, ptr %b.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call = call i64 @v3p_netlib_lsame_(ptr noundef %11, ptr noundef @.str, i64 noundef 1, i64 noundef 1)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %13 = load i64, ptr %12, align 8, !tbaa !8
  store i64 %13, ptr %i__1, align 8, !tbaa !8
  store i64 1, ptr %j, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %if.then
  %14 = load i64, ptr %j, align 8, !tbaa !8
  %15 = load i64, ptr %i__1, align 8, !tbaa !8
  %cmp = icmp sle i64 %14, %15
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  %16 = load i64, ptr %j, align 8, !tbaa !8
  %17 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %18 = load i64, ptr %17, align 8, !tbaa !8
  %cmp4 = icmp sle i64 %16, %18
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %19 = load i64, ptr %j, align 8, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %20 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %21 = load i64, ptr %20, align 8, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %19, %cond.true ], [ %21, %cond.false ]
  store i64 %cond, ptr %i__2, align 8, !tbaa !8
  store i64 1, ptr %i__, align 8, !tbaa !8
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %cond.end
  %22 = load i64, ptr %i__, align 8, !tbaa !8
  %23 = load i64, ptr %i__2, align 8, !tbaa !8
  %cmp6 = icmp sle i64 %22, %23
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %24 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %25 = load i64, ptr %i__, align 8, !tbaa !8
  %26 = load i64, ptr %j, align 8, !tbaa !8
  %27 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul = mul nsw i64 %26, %27
  %add8 = add nsw i64 %25, %mul
  %arrayidx = getelementptr inbounds double, ptr %24, i64 %add8
  %28 = load double, ptr %arrayidx, align 8, !tbaa !10
  %29 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %30 = load i64, ptr %i__, align 8, !tbaa !8
  %31 = load i64, ptr %j, align 8, !tbaa !8
  %32 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul9 = mul nsw i64 %31, %32
  %add10 = add nsw i64 %30, %mul9
  %arrayidx11 = getelementptr inbounds double, ptr %29, i64 %add10
  store double %28, ptr %arrayidx11, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %33 = load i64, ptr %i__, align 8, !tbaa !8
  %inc = add nsw i64 %33, 1
  store i64 %inc, ptr %i__, align 8, !tbaa !8
  br label %for.cond5, !llvm.loop !12

for.end:                                          ; preds = %for.cond5
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %34 = load i64, ptr %j, align 8, !tbaa !8
  %inc13 = add nsw i64 %34, 1
  store i64 %inc13, ptr %j, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !14

for.end14:                                        ; preds = %for.cond
  br label %if.end55

if.else:                                          ; preds = %entry
  %35 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call15 = call i64 @v3p_netlib_lsame_(ptr noundef %35, ptr noundef @.str.1, i64 noundef 1, i64 noundef 1)
  %tobool16 = icmp ne i64 %call15, 0
  br i1 %tobool16, label %if.then17, label %if.else36

if.then17:                                        ; preds = %if.else
  %36 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %37 = load i64, ptr %36, align 8, !tbaa !8
  store i64 %37, ptr %i__1, align 8, !tbaa !8
  store i64 1, ptr %j, align 8, !tbaa !8
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc33, %if.then17
  %38 = load i64, ptr %j, align 8, !tbaa !8
  %39 = load i64, ptr %i__1, align 8, !tbaa !8
  %cmp19 = icmp sle i64 %38, %39
  br i1 %cmp19, label %for.body20, label %for.end35

for.body20:                                       ; preds = %for.cond18
  %40 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %41 = load i64, ptr %40, align 8, !tbaa !8
  store i64 %41, ptr %i__2, align 8, !tbaa !8
  %42 = load i64, ptr %j, align 8, !tbaa !8
  store i64 %42, ptr %i__, align 8, !tbaa !8
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc30, %for.body20
  %43 = load i64, ptr %i__, align 8, !tbaa !8
  %44 = load i64, ptr %i__2, align 8, !tbaa !8
  %cmp22 = icmp sle i64 %43, %44
  br i1 %cmp22, label %for.body23, label %for.end32

for.body23:                                       ; preds = %for.cond21
  %45 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %46 = load i64, ptr %i__, align 8, !tbaa !8
  %47 = load i64, ptr %j, align 8, !tbaa !8
  %48 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul24 = mul nsw i64 %47, %48
  %add25 = add nsw i64 %46, %mul24
  %arrayidx26 = getelementptr inbounds double, ptr %45, i64 %add25
  %49 = load double, ptr %arrayidx26, align 8, !tbaa !10
  %50 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %51 = load i64, ptr %i__, align 8, !tbaa !8
  %52 = load i64, ptr %j, align 8, !tbaa !8
  %53 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul27 = mul nsw i64 %52, %53
  %add28 = add nsw i64 %51, %mul27
  %arrayidx29 = getelementptr inbounds double, ptr %50, i64 %add28
  store double %49, ptr %arrayidx29, align 8, !tbaa !10
  br label %for.inc30

for.inc30:                                        ; preds = %for.body23
  %54 = load i64, ptr %i__, align 8, !tbaa !8
  %inc31 = add nsw i64 %54, 1
  store i64 %inc31, ptr %i__, align 8, !tbaa !8
  br label %for.cond21, !llvm.loop !15

for.end32:                                        ; preds = %for.cond21
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %55 = load i64, ptr %j, align 8, !tbaa !8
  %inc34 = add nsw i64 %55, 1
  store i64 %inc34, ptr %j, align 8, !tbaa !8
  br label %for.cond18, !llvm.loop !16

for.end35:                                        ; preds = %for.cond18
  br label %if.end

if.else36:                                        ; preds = %if.else
  %56 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %57 = load i64, ptr %56, align 8, !tbaa !8
  store i64 %57, ptr %i__1, align 8, !tbaa !8
  store i64 1, ptr %j, align 8, !tbaa !8
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc52, %if.else36
  %58 = load i64, ptr %j, align 8, !tbaa !8
  %59 = load i64, ptr %i__1, align 8, !tbaa !8
  %cmp38 = icmp sle i64 %58, %59
  br i1 %cmp38, label %for.body39, label %for.end54

for.body39:                                       ; preds = %for.cond37
  %60 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %61 = load i64, ptr %60, align 8, !tbaa !8
  store i64 %61, ptr %i__2, align 8, !tbaa !8
  store i64 1, ptr %i__, align 8, !tbaa !8
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc49, %for.body39
  %62 = load i64, ptr %i__, align 8, !tbaa !8
  %63 = load i64, ptr %i__2, align 8, !tbaa !8
  %cmp41 = icmp sle i64 %62, %63
  br i1 %cmp41, label %for.body42, label %for.end51

for.body42:                                       ; preds = %for.cond40
  %64 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %65 = load i64, ptr %i__, align 8, !tbaa !8
  %66 = load i64, ptr %j, align 8, !tbaa !8
  %67 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul43 = mul nsw i64 %66, %67
  %add44 = add nsw i64 %65, %mul43
  %arrayidx45 = getelementptr inbounds double, ptr %64, i64 %add44
  %68 = load double, ptr %arrayidx45, align 8, !tbaa !10
  %69 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %70 = load i64, ptr %i__, align 8, !tbaa !8
  %71 = load i64, ptr %j, align 8, !tbaa !8
  %72 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul46 = mul nsw i64 %71, %72
  %add47 = add nsw i64 %70, %mul46
  %arrayidx48 = getelementptr inbounds double, ptr %69, i64 %add47
  store double %68, ptr %arrayidx48, align 8, !tbaa !10
  br label %for.inc49

for.inc49:                                        ; preds = %for.body42
  %73 = load i64, ptr %i__, align 8, !tbaa !8
  %inc50 = add nsw i64 %73, 1
  store i64 %inc50, ptr %i__, align 8, !tbaa !8
  br label %for.cond40, !llvm.loop !17

for.end51:                                        ; preds = %for.cond40
  br label %for.inc52

for.inc52:                                        ; preds = %for.end51
  %74 = load i64, ptr %j, align 8, !tbaa !8
  %inc53 = add nsw i64 %74, 1
  store i64 %inc53, ptr %j, align 8, !tbaa !8
  br label %for.cond37, !llvm.loop !18

for.end54:                                        ; preds = %for.cond37
  br label %if.end

if.end:                                           ; preds = %for.end54, %for.end35
  br label %if.end55

if.end55:                                         ; preds = %if.end, %for.end14
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i__) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_offset) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_dim1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_offset) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_dim1) #3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i64 @v3p_netlib_lsame_(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
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
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
