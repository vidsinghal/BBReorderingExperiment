; ModuleID = 'samples/509.bc'
source_filename = "../Source/amd_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SuiteSparse_config_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@SuiteSparse_config = external global %struct.SuiteSparse_config_struct, align 8
@.str = private unnamed_addr constant [92 x i8] c"\0AAMD version %d.%d.%d, %s: approximate minimum degree ordering\0A    dense row parameter: %g\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"May 4, 2016\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"    no rows treated as dense\0A\00", align 1
@.str.3 = private unnamed_addr constant [125 x i8] c"    (rows with more than max (%g * sqrt (n), 16) entries are\0A    considered \22dense\22, and placed last in output permutation)\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"    aggressive absorption:  yes\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"    aggressive absorption:  no\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"    size of AMD integer: %d\0A\0A\00", align 1

; Function Attrs: uwtable
define void @amd_l_control(ptr noundef %Control) #0 {
entry:
  %Control.addr = alloca ptr, align 8
  %alpha = alloca double, align 8
  %aggressive = alloca i64, align 8
  store ptr %Control, ptr %Control.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %aggressive) #2
  %0 = load ptr, ptr %Control.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %Control.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds double, ptr %1, i64 0
  %2 = load double, ptr %arrayidx, align 8, !tbaa !8
  store double %2, ptr %alpha, align 8, !tbaa !8
  %3 = load ptr, ptr %Control.addr, align 8, !tbaa !4
  %arrayidx1 = getelementptr inbounds double, ptr %3, i64 1
  %4 = load double, ptr %arrayidx1, align 8, !tbaa !8
  %cmp2 = fcmp une double %4, 0.000000e+00
  %conv = zext i1 %cmp2 to i32
  %conv3 = sext i32 %conv to i64
  store i64 %conv3, ptr %aggressive, align 8, !tbaa !10
  br label %if.end

if.else:                                          ; preds = %entry
  store double 1.000000e+01, ptr %alpha, align 8, !tbaa !8
  store i64 1, ptr %aggressive, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp4 = icmp ne ptr %5, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %6 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %7 = load double, ptr %alpha, align 8, !tbaa !8
  %call = call i32 (ptr, ...) %6(ptr noundef @.str, i32 noundef 2, i32 noundef 4, i32 noundef 6, ptr noundef @.str.1, double noundef %7)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %8 = load double, ptr %alpha, align 8, !tbaa !8
  %cmp8 = fcmp olt double %8, 0.000000e+00
  br i1 %cmp8, label %if.then10, label %if.else16

if.then10:                                        ; preds = %if.end7
  %9 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp11 = icmp ne ptr %9, null
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then10
  %10 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call14 = call i32 (ptr, ...) %10(ptr noundef @.str.2)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then10
  br label %if.end22

if.else16:                                        ; preds = %if.end7
  %11 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp17 = icmp ne ptr %11, null
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.else16
  %12 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %13 = load double, ptr %alpha, align 8, !tbaa !8
  %call20 = call i32 (ptr, ...) %12(ptr noundef @.str.3, double noundef %13)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.else16
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end15
  %14 = load i64, ptr %aggressive, align 8, !tbaa !10
  %tobool = icmp ne i64 %14, 0
  br i1 %tobool, label %if.then23, label %if.else29

if.then23:                                        ; preds = %if.end22
  %15 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp24 = icmp ne ptr %15, null
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.then23
  %16 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call27 = call i32 (ptr, ...) %16(ptr noundef @.str.4)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.then23
  br label %if.end35

if.else29:                                        ; preds = %if.end22
  %17 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp30 = icmp ne ptr %17, null
  br i1 %cmp30, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.else29
  %18 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call33 = call i32 (ptr, ...) %18(ptr noundef @.str.5)
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.else29
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end28
  %19 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp36 = icmp ne ptr %19, null
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end35
  %20 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call39 = call i32 (ptr, ...) %20(ptr noundef @.str.6, i64 noundef 8)
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end35
  call void @llvm.lifetime.end.p0(i64 8, ptr %aggressive) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha) #2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

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
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!13, !5, i64 32}
!13 = !{!"SuiteSparse_config_struct", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48}
