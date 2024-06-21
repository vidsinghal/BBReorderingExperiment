; ModuleID = 'samples/370.bc'
source_filename = "/local-ssd/itk-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv-build/aidengro/spack-stage-itk-5.2.1-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv/spack-src/Modules/ThirdParty/VNL/src/vxl/v3p/netlib/lapack/complex16/zlarf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3p_netlib_doublecomplex = type { double, double }

@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Conjugate transpose\00", align 1
@c_b1 = internal global %struct.v3p_netlib_doublecomplex { double 1.000000e+00, double 0.000000e+00 }, align 8
@c_b2 = internal global %struct.v3p_netlib_doublecomplex zeroinitializer, align 8
@c__1 = internal global i64 1, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1

; Function Attrs: nounwind uwtable
define i32 @v3p_netlib_zlarf_(ptr noundef %side, ptr noundef %m, ptr noundef %n, ptr noundef %v, ptr noundef %incv, ptr noundef %tau, ptr noundef %c__, ptr noundef %ldc, ptr noundef %work, i64 noundef %side_len) #0 {
entry:
  %side.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %incv.addr = alloca ptr, align 8
  %tau.addr = alloca ptr, align 8
  %c__.addr = alloca ptr, align 8
  %ldc.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %side_len.addr = alloca i64, align 8
  %c_dim1 = alloca i64, align 8
  %c_offset = alloca i64, align 8
  %z__1 = alloca %struct.v3p_netlib_doublecomplex, align 8
  store ptr %side, ptr %side.addr, align 8, !tbaa !4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store ptr %incv, ptr %incv.addr, align 8, !tbaa !4
  store ptr %tau, ptr %tau.addr, align 8, !tbaa !4
  store ptr %c__, ptr %c__.addr, align 8, !tbaa !4
  store ptr %ldc, ptr %ldc.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store i64 %side_len, ptr %side_len.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %c_dim1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %c_offset) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %z__1) #3
  %0 = load i64, ptr %side_len.addr, align 8, !tbaa !8
  %1 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1, i32 -1
  store ptr %incdec.ptr, ptr %v.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %3 = load i64, ptr %2, align 8, !tbaa !8
  store i64 %3, ptr %c_dim1, align 8, !tbaa !8
  %4 = load i64, ptr %c_dim1, align 8, !tbaa !8
  %add = add nsw i64 1, %4
  store i64 %add, ptr %c_offset, align 8, !tbaa !8
  %5 = load i64, ptr %c_offset, align 8, !tbaa !8
  %6 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %idx.neg = sub i64 0, %5
  %add.ptr = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %6, i64 %idx.neg
  store ptr %add.ptr, ptr %c__.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr1 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %7, i32 -1
  store ptr %incdec.ptr1, ptr %work.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %side.addr, align 8, !tbaa !4
  %call = call i64 @v3p_netlib_lsame_(ptr noundef %8, ptr noundef @.str, i64 noundef 1, i64 noundef 1)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %r = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %9, i32 0, i32 0
  %10 = load double, ptr %r, align 8, !tbaa !10
  %cmp = fcmp une double %10, 0.000000e+00
  br i1 %cmp, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %11 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %i = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %11, i32 0, i32 1
  %12 = load double, ptr %i, align 8, !tbaa !13
  %cmp2 = fcmp une double %12, 0.000000e+00
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  %13 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %16 = load i64, ptr %c_offset, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %15, i64 %16
  %17 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %18, i64 1
  %19 = load ptr, ptr %incv.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx5 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %20, i64 1
  %call6 = call i32 @v3p_netlib_zgemv_(ptr noundef @.str.1, ptr noundef %13, ptr noundef %14, ptr noundef @c_b1, ptr noundef %arrayidx, ptr noundef %17, ptr noundef %arrayidx4, ptr noundef %19, ptr noundef @c_b2, ptr noundef %arrayidx5, ptr noundef @c__1, i64 noundef 19)
  %21 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %r7 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %21, i32 0, i32 0
  %22 = load double, ptr %r7, align 8, !tbaa !10
  %fneg = fneg double %22
  %r8 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %fneg, ptr %r8, align 8, !tbaa !10
  %23 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %i9 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %23, i32 0, i32 1
  %24 = load double, ptr %i9, align 8, !tbaa !13
  %fneg10 = fneg double %24
  %i11 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %fneg10, ptr %i11, align 8, !tbaa !13
  %25 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %arrayidx12 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %27, i64 1
  %28 = load ptr, ptr %incv.addr, align 8, !tbaa !4
  %29 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx13 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %29, i64 1
  %30 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %31 = load i64, ptr %c_offset, align 8, !tbaa !8
  %arrayidx14 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %30, i64 %31
  %32 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %call15 = call i32 @v3p_netlib_zgerc_(ptr noundef %25, ptr noundef %26, ptr noundef %z__1, ptr noundef %arrayidx12, ptr noundef %28, ptr noundef %arrayidx13, ptr noundef @c__1, ptr noundef %arrayidx14, ptr noundef %32)
  br label %if.end

if.end:                                           ; preds = %if.then3, %lor.lhs.false
  br label %if.end37

if.else:                                          ; preds = %entry
  %33 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %r16 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %33, i32 0, i32 0
  %34 = load double, ptr %r16, align 8, !tbaa !10
  %cmp17 = fcmp une double %34, 0.000000e+00
  br i1 %cmp17, label %if.then21, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.else
  %35 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %i19 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %35, i32 0, i32 1
  %36 = load double, ptr %i19, align 8, !tbaa !13
  %cmp20 = fcmp une double %36, 0.000000e+00
  br i1 %cmp20, label %if.then21, label %if.end36

if.then21:                                        ; preds = %lor.lhs.false18, %if.else
  %37 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %38 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %39 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %40 = load i64, ptr %c_offset, align 8, !tbaa !8
  %arrayidx22 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %39, i64 %40
  %41 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %42 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %arrayidx23 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %42, i64 1
  %43 = load ptr, ptr %incv.addr, align 8, !tbaa !4
  %44 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx24 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %44, i64 1
  %call25 = call i32 @v3p_netlib_zgemv_(ptr noundef @.str.2, ptr noundef %37, ptr noundef %38, ptr noundef @c_b1, ptr noundef %arrayidx22, ptr noundef %41, ptr noundef %arrayidx23, ptr noundef %43, ptr noundef @c_b2, ptr noundef %arrayidx24, ptr noundef @c__1, i64 noundef 12)
  %45 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %r26 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %45, i32 0, i32 0
  %46 = load double, ptr %r26, align 8, !tbaa !10
  %fneg27 = fneg double %46
  %r28 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %fneg27, ptr %r28, align 8, !tbaa !10
  %47 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %i29 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %47, i32 0, i32 1
  %48 = load double, ptr %i29, align 8, !tbaa !13
  %fneg30 = fneg double %48
  %i31 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %fneg30, ptr %i31, align 8, !tbaa !13
  %49 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %50 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %51 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx32 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %51, i64 1
  %52 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %arrayidx33 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %52, i64 1
  %53 = load ptr, ptr %incv.addr, align 8, !tbaa !4
  %54 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %55 = load i64, ptr %c_offset, align 8, !tbaa !8
  %arrayidx34 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %54, i64 %55
  %56 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %call35 = call i32 @v3p_netlib_zgerc_(ptr noundef %49, ptr noundef %50, ptr noundef %z__1, ptr noundef %arrayidx32, ptr noundef @c__1, ptr noundef %arrayidx33, ptr noundef %53, ptr noundef %arrayidx34, ptr noundef %56)
  br label %if.end36

if.end36:                                         ; preds = %if.then21, %lor.lhs.false18
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end
  call void @llvm.lifetime.end.p0(i64 16, ptr %z__1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %c_offset) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %c_dim1) #3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i64 @v3p_netlib_lsame_(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

declare i32 @v3p_netlib_zgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @v3p_netlib_zgerc_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
!10 = !{!11, !12, i64 0}
!11 = !{!"", !12, i64 0, !12, i64 8}
!12 = !{!"double", !6, i64 0}
!13 = !{!11, !12, i64 8}
