; ModuleID = 'samples/66.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/lapack/dec/q/qrutpiv/front/flamec/FLA_QR_UT_piv_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.fla_qr_ut_s = type { i32, i32, ptr, ptr, ptr }

@.str = private unnamed_addr constant [205 x i8] c"/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/lapack/dec/q/qrutpiv/front/flamec/FLA_QR_UT_piv_internal.c\00", align 1

; Function Attrs: nounwind uwtable
define i32 @FLA_QR_UT_piv_internal(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %w, ptr noundef byval(%struct.FLA_Obj_view) align 8 %p, ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  %r_val = alloca i32, align 4
  store ptr %cntl, ptr %cntl.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_val) #3
  store i32 -1, ptr %r_val, align 4, !tbaa !8
  %call = call i32 @FLA_Check_error_level()
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %call1 = call i32 @FLA_QR_UT_piv_internal_check(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %w, ptr noundef byval(%struct.FLA_Obj_view) align 8 %p, ptr noundef %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %variant = getelementptr inbounds %struct.fla_qr_ut_s, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %variant, align 4, !tbaa !10
  %cmp2 = icmp eq i32 %2, 41
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @FLA_QR_UT_piv_unb_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %w, ptr noundef byval(%struct.FLA_Obj_view) align 8 %p)
  store i32 %call4, ptr %r_val, align 4, !tbaa !8
  br label %if.end36

if.else:                                          ; preds = %if.end
  %3 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %variant5 = getelementptr inbounds %struct.fla_qr_ut_s, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %variant5, align 4, !tbaa !10
  %cmp6 = icmp eq i32 %4, 81
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else
  %call8 = call i32 @FLA_Check_error_code_helper(i32 noundef -54, ptr noundef @.str, i32 noundef 29)
  br label %if.end35

if.else9:                                         ; preds = %if.else
  %5 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %variant10 = getelementptr inbounds %struct.fla_qr_ut_s, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %variant10, align 4, !tbaa !10
  %cmp11 = icmp eq i32 %6, 121
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else9
  %7 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %call13 = call i32 @FLA_QR_UT_piv_blk_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %w, ptr noundef byval(%struct.FLA_Obj_view) align 8 %p, ptr noundef %7)
  store i32 %call13, ptr %r_val, align 4, !tbaa !8
  br label %if.end34

if.else14:                                        ; preds = %if.else9
  %8 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %variant15 = getelementptr inbounds %struct.fla_qr_ut_s, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %variant15, align 4, !tbaa !10
  %cmp16 = icmp eq i32 %9, 42
  br i1 %cmp16, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.else14
  %call18 = call i32 @FLA_QR_UT_piv_unb_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %w, ptr noundef byval(%struct.FLA_Obj_view) align 8 %p)
  store i32 %call18, ptr %r_val, align 4, !tbaa !8
  br label %if.end33

if.else19:                                        ; preds = %if.else14
  %10 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %variant20 = getelementptr inbounds %struct.fla_qr_ut_s, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %variant20, align 4, !tbaa !10
  %cmp21 = icmp eq i32 %11, 82
  br i1 %cmp21, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.else19
  %call23 = call i32 @FLA_Check_error_code_helper(i32 noundef -54, ptr noundef @.str, i32 noundef 45)
  br label %if.end32

if.else24:                                        ; preds = %if.else19
  %12 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %variant25 = getelementptr inbounds %struct.fla_qr_ut_s, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %variant25, align 4, !tbaa !10
  %cmp26 = icmp eq i32 %13, 122
  br i1 %cmp26, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.else24
  %14 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %call28 = call i32 @FLA_QR_UT_piv_blk_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %w, ptr noundef byval(%struct.FLA_Obj_view) align 8 %p, ptr noundef %14)
  store i32 %call28, ptr %r_val, align 4, !tbaa !8
  br label %if.end31

if.else29:                                        ; preds = %if.else24
  %call30 = call i32 @FLA_Check_error_code_helper(i32 noundef -54, ptr noundef @.str, i32 noundef 54)
  br label %if.end31

if.end31:                                         ; preds = %if.else29, %if.then27
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then22
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then17
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then12
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then7
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then3
  %15 = load i32, ptr %r_val, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_val) #3
  ret i32 %15
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Check_error_level() #2

declare i32 @FLA_QR_UT_piv_internal_check(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_QR_UT_piv_unb_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Check_error_code_helper(i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_QR_UT_piv_blk_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_QR_UT_piv_unb_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_QR_UT_piv_blk_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

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
!10 = !{!11, !9, i64 4}
!11 = !{!"fla_qr_ut_s", !9, i64 0, !9, i64 4, !5, i64 8, !5, i64 16, !5, i64 24}
