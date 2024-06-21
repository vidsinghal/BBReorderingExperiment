; ModuleID = 'samples/751.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/FLA_gesdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @sgesdd_(ptr noundef %jobz, ptr noundef %m, ptr noundef %n, ptr noundef %buff_A, ptr noundef %ldim_A, ptr noundef %buff_s, ptr noundef %buff_U, ptr noundef %ldim_U, ptr noundef %buff_Vh, ptr noundef %ldim_Vh, ptr noundef %buff_w, ptr noundef %lwork, ptr noundef %buff_i, ptr noundef %info) #0 {
entry:
  %jobz.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %buff_A.addr = alloca ptr, align 8
  %ldim_A.addr = alloca ptr, align 8
  %buff_s.addr = alloca ptr, align 8
  %buff_U.addr = alloca ptr, align 8
  %ldim_U.addr = alloca ptr, align 8
  %buff_Vh.addr = alloca ptr, align 8
  %ldim_Vh.addr = alloca ptr, align 8
  %buff_w.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %buff_i.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %fla_error = alloca i32, align 4
  %jobu = alloca [1 x i8], align 1
  %jobv = alloca [1 x i8], align 1
  %r_val = alloca i32, align 4
  store ptr %jobz, ptr %jobz.addr, align 8, !tbaa !4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !4
  store ptr %ldim_A, ptr %ldim_A.addr, align 8, !tbaa !4
  store ptr %buff_s, ptr %buff_s.addr, align 8, !tbaa !4
  store ptr %buff_U, ptr %buff_U.addr, align 8, !tbaa !4
  store ptr %ldim_U, ptr %ldim_U.addr, align 8, !tbaa !4
  store ptr %buff_Vh, ptr %buff_Vh.addr, align 8, !tbaa !4
  store ptr %ldim_Vh, ptr %ldim_Vh.addr, align 8, !tbaa !4
  store ptr %buff_w, ptr %buff_w.addr, align 8, !tbaa !4
  store ptr %lwork, ptr %lwork.addr, align 8, !tbaa !4
  store ptr %buff_i, ptr %buff_i.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %fla_error) #3
  store i32 512, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %jobu) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr %jobv) #3
  %0 = load ptr, ptr %jobz.addr, align 8, !tbaa !4
  %1 = load i8, ptr %0, align 1, !tbaa !10
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 79
  br i1 %cmp, label %if.then, label %if.else8

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %3 = load i32, ptr %2, align 4, !tbaa !8
  %4 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %5 = load i32, ptr %4, align 4, !tbaa !8
  %cmp2 = icmp sge i32 %3, %5
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %arrayidx = getelementptr inbounds [1 x i8], ptr %jobu, i64 0, i64 0
  store i8 79, ptr %arrayidx, align 1, !tbaa !10
  %arrayidx5 = getelementptr inbounds [1 x i8], ptr %jobv, i64 0, i64 0
  store i8 65, ptr %arrayidx5, align 1, !tbaa !10
  br label %if.end

if.else:                                          ; preds = %if.then
  %arrayidx6 = getelementptr inbounds [1 x i8], ptr %jobu, i64 0, i64 0
  store i8 65, ptr %arrayidx6, align 1, !tbaa !10
  %arrayidx7 = getelementptr inbounds [1 x i8], ptr %jobv, i64 0, i64 0
  store i8 79, ptr %arrayidx7, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br label %if.end11

if.else8:                                         ; preds = %entry
  %6 = load ptr, ptr %jobz.addr, align 8, !tbaa !4
  %7 = load i8, ptr %6, align 1, !tbaa !10
  %arrayidx9 = getelementptr inbounds [1 x i8], ptr %jobu, i64 0, i64 0
  store i8 %7, ptr %arrayidx9, align 1, !tbaa !10
  %8 = load ptr, ptr %jobz.addr, align 8, !tbaa !4
  %9 = load i8, ptr %8, align 1, !tbaa !10
  %arrayidx10 = getelementptr inbounds [1 x i8], ptr %jobv, i64 0, i64 0
  store i8 %9, ptr %arrayidx10, align 1, !tbaa !10
  br label %if.end11

if.end11:                                         ; preds = %if.else8, %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_val) #3
  %arraydecay = getelementptr inbounds [1 x i8], ptr %jobu, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [1 x i8], ptr %jobv, i64 0, i64 0
  %10 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %buff_A.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %ldim_A.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %buff_s.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %buff_U.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %ldim_U.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %buff_Vh.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %ldim_Vh.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %buff_w.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call = call i32 @sgesdd_fla_check(ptr noundef %arraydecay, ptr noundef %arraydecay12, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21)
  store i32 %call, ptr %r_val, align 4, !tbaa !8
  %22 = load i32, ptr %r_val, align 4, !tbaa !8
  switch i32 %22, label %sw.default [
    i32 312, label %sw.bb
    i32 112, label %sw.bb13
    i32 212, label %sw.bb14
    i32 512, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.end11
  store i32 -2, ptr %fla_error, align 4, !tbaa !8
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end11
  br label %sw.bb14

sw.bb14:                                          ; preds = %if.end11, %sw.bb13
  store i32 0, ptr %fla_error, align 4, !tbaa !8
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end11
  br label %sw.default

sw.default:                                       ; preds = %if.end11, %sw.bb15
  %23 = load i32, ptr %r_val, align 4, !tbaa !8
  %cmp16 = icmp sgt i32 %23, 0
  br i1 %cmp16, label %if.then18, label %if.else19

if.then18:                                        ; preds = %sw.default
  br label %if.end20

if.else19:                                        ; preds = %sw.default
  store i32 -2, ptr %fla_error, align 4, !tbaa !8
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.then18
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end20, %sw.bb14, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_val) #3
  %24 = load i32, ptr %fla_error, align 4, !tbaa !8
  %cmp21 = icmp eq i32 %24, 512
  br i1 %cmp21, label %if.then23, label %if.end27

if.then23:                                        ; preds = %sw.epilog
  %arraydecay24 = getelementptr inbounds [1 x i8], ptr %jobu, i64 0, i64 0
  %arraydecay25 = getelementptr inbounds [1 x i8], ptr %jobv, i64 0, i64 0
  %25 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %buff_A.addr, align 8, !tbaa !4
  %28 = load ptr, ptr %ldim_A.addr, align 8, !tbaa !4
  %29 = load ptr, ptr %buff_s.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %buff_U.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %ldim_U.addr, align 8, !tbaa !4
  %32 = load ptr, ptr %buff_Vh.addr, align 8, !tbaa !4
  %33 = load ptr, ptr %ldim_Vh.addr, align 8, !tbaa !4
  %34 = load ptr, ptr %buff_w.addr, align 8, !tbaa !4
  %35 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %36 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call26 = call i32 @sgesvd_(ptr noundef %arraydecay24, ptr noundef %arraydecay25, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef %36)
  store i32 0, ptr %fla_error, align 4, !tbaa !8
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %sw.epilog
  call void @llvm.lifetime.end.p0(i64 1, ptr %jobv) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %jobu) #3
  %37 = load i32, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %fla_error) #3
  ret i32 %37
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @sgesdd_fla_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @sgesvd_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @dgesdd_(ptr noundef %jobz, ptr noundef %m, ptr noundef %n, ptr noundef %buff_A, ptr noundef %ldim_A, ptr noundef %buff_s, ptr noundef %buff_U, ptr noundef %ldim_U, ptr noundef %buff_Vh, ptr noundef %ldim_Vh, ptr noundef %buff_w, ptr noundef %lwork, ptr noundef %buff_i, ptr noundef %info) #0 {
entry:
  %jobz.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %buff_A.addr = alloca ptr, align 8
  %ldim_A.addr = alloca ptr, align 8
  %buff_s.addr = alloca ptr, align 8
  %buff_U.addr = alloca ptr, align 8
  %ldim_U.addr = alloca ptr, align 8
  %buff_Vh.addr = alloca ptr, align 8
  %ldim_Vh.addr = alloca ptr, align 8
  %buff_w.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %buff_i.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %fla_error = alloca i32, align 4
  %jobu = alloca [1 x i8], align 1
  %jobv = alloca [1 x i8], align 1
  %r_val = alloca i32, align 4
  store ptr %jobz, ptr %jobz.addr, align 8, !tbaa !4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !4
  store ptr %ldim_A, ptr %ldim_A.addr, align 8, !tbaa !4
  store ptr %buff_s, ptr %buff_s.addr, align 8, !tbaa !4
  store ptr %buff_U, ptr %buff_U.addr, align 8, !tbaa !4
  store ptr %ldim_U, ptr %ldim_U.addr, align 8, !tbaa !4
  store ptr %buff_Vh, ptr %buff_Vh.addr, align 8, !tbaa !4
  store ptr %ldim_Vh, ptr %ldim_Vh.addr, align 8, !tbaa !4
  store ptr %buff_w, ptr %buff_w.addr, align 8, !tbaa !4
  store ptr %lwork, ptr %lwork.addr, align 8, !tbaa !4
  store ptr %buff_i, ptr %buff_i.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %fla_error) #3
  store i32 512, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %jobu) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr %jobv) #3
  %0 = load ptr, ptr %jobz.addr, align 8, !tbaa !4
  %1 = load i8, ptr %0, align 1, !tbaa !10
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 79
  br i1 %cmp, label %if.then, label %if.else8

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %3 = load i32, ptr %2, align 4, !tbaa !8
  %4 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %5 = load i32, ptr %4, align 4, !tbaa !8
  %cmp2 = icmp sge i32 %3, %5
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %arrayidx = getelementptr inbounds [1 x i8], ptr %jobu, i64 0, i64 0
  store i8 79, ptr %arrayidx, align 1, !tbaa !10
  %arrayidx5 = getelementptr inbounds [1 x i8], ptr %jobv, i64 0, i64 0
  store i8 65, ptr %arrayidx5, align 1, !tbaa !10
  br label %if.end

if.else:                                          ; preds = %if.then
  %arrayidx6 = getelementptr inbounds [1 x i8], ptr %jobu, i64 0, i64 0
  store i8 65, ptr %arrayidx6, align 1, !tbaa !10
  %arrayidx7 = getelementptr inbounds [1 x i8], ptr %jobv, i64 0, i64 0
  store i8 79, ptr %arrayidx7, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br label %if.end11

if.else8:                                         ; preds = %entry
  %6 = load ptr, ptr %jobz.addr, align 8, !tbaa !4
  %7 = load i8, ptr %6, align 1, !tbaa !10
  %arrayidx9 = getelementptr inbounds [1 x i8], ptr %jobu, i64 0, i64 0
  store i8 %7, ptr %arrayidx9, align 1, !tbaa !10
  %8 = load ptr, ptr %jobz.addr, align 8, !tbaa !4
  %9 = load i8, ptr %8, align 1, !tbaa !10
  %arrayidx10 = getelementptr inbounds [1 x i8], ptr %jobv, i64 0, i64 0
  store i8 %9, ptr %arrayidx10, align 1, !tbaa !10
  br label %if.end11

if.end11:                                         ; preds = %if.else8, %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_val) #3
  %arraydecay = getelementptr inbounds [1 x i8], ptr %jobu, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [1 x i8], ptr %jobv, i64 0, i64 0
  %10 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %buff_A.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %ldim_A.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %buff_s.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %buff_U.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %ldim_U.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %buff_Vh.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %ldim_Vh.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %buff_w.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ...) @dgesdd_fla_check(ptr noundef %arraydecay, ptr noundef %arraydecay12, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21)
  store i32 %call, ptr %r_val, align 4, !tbaa !8
  %22 = load i32, ptr %r_val, align 4, !tbaa !8
  switch i32 %22, label %sw.default [
    i32 312, label %sw.bb
    i32 112, label %sw.bb13
    i32 212, label %sw.bb14
    i32 512, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.end11
  store i32 -2, ptr %fla_error, align 4, !tbaa !8
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end11
  br label %sw.bb14

sw.bb14:                                          ; preds = %if.end11, %sw.bb13
  store i32 0, ptr %fla_error, align 4, !tbaa !8
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end11
  br label %sw.default

sw.default:                                       ; preds = %if.end11, %sw.bb15
  %23 = load i32, ptr %r_val, align 4, !tbaa !8
  %cmp16 = icmp sgt i32 %23, 0
  br i1 %cmp16, label %if.then18, label %if.else19

if.then18:                                        ; preds = %sw.default
  br label %if.end20

if.else19:                                        ; preds = %sw.default
  store i32 -2, ptr %fla_error, align 4, !tbaa !8
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.then18
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end20, %sw.bb14, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_val) #3
  %24 = load i32, ptr %fla_error, align 4, !tbaa !8
  %cmp21 = icmp eq i32 %24, 512
  br i1 %cmp21, label %if.then23, label %if.end27

if.then23:                                        ; preds = %sw.epilog
  %arraydecay24 = getelementptr inbounds [1 x i8], ptr %jobu, i64 0, i64 0
  %arraydecay25 = getelementptr inbounds [1 x i8], ptr %jobv, i64 0, i64 0
  %25 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %buff_A.addr, align 8, !tbaa !4
  %28 = load ptr, ptr %ldim_A.addr, align 8, !tbaa !4
  %29 = load ptr, ptr %buff_s.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %buff_U.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %ldim_U.addr, align 8, !tbaa !4
  %32 = load ptr, ptr %buff_Vh.addr, align 8, !tbaa !4
  %33 = load ptr, ptr %ldim_Vh.addr, align 8, !tbaa !4
  %34 = load ptr, ptr %buff_w.addr, align 8, !tbaa !4
  %35 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %36 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call26 = call i32 @dgesvd_(ptr noundef %arraydecay24, ptr noundef %arraydecay25, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef %36)
  store i32 0, ptr %fla_error, align 4, !tbaa !8
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %sw.epilog
  call void @llvm.lifetime.end.p0(i64 1, ptr %jobv) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %jobu) #3
  %37 = load i32, ptr %fla_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %fla_error) #3
  ret i32 %37
}

declare i32 @dgesdd_fla_check(...) #2

declare i32 @dgesvd_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
!10 = !{!6, !6, i64 0}
