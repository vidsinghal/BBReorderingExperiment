; ModuleID = 'samples/373.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/lapack/dec/chol/front/flamec/FLA_Chol_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.fla_chol_s = type { i32, i32, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [188 x i8] c"/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/lapack/dec/chol/front/flamec/FLA_Chol_l.c\00", align 1

; Function Attrs: nounwind uwtable
define i32 @FLA_Chol_l(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  %r_val = alloca i32, align 4
  store ptr %cntl, ptr %cntl.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_val) #3
  store i32 -1, ptr %r_val, align 4, !tbaa !8
  %0 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %variant = getelementptr inbounds %struct.fla_chol_s, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %variant, align 4, !tbaa !10
  %cmp = icmp eq i32 %1, 13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 @FLA_Chol_l_blk_ext(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call, ptr %r_val, align 4, !tbaa !8
  br label %if.end61

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %variant1 = getelementptr inbounds %struct.fla_chol_s, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %variant1, align 4, !tbaa !10
  %cmp2 = icmp eq i32 %3, 10
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %call4 = call i32 @FLA_Chol_l_unb_ext(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call4, ptr %r_val, align 4, !tbaa !8
  br label %if.end60

if.else5:                                         ; preds = %if.else
  %4 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %variant6 = getelementptr inbounds %struct.fla_chol_s, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %variant6, align 4, !tbaa !10
  %cmp7 = icmp eq i32 %5, 81
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else5
  %call9 = call i32 @FLA_Chol_l_opt_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call9, ptr %r_val, align 4, !tbaa !8
  br label %if.end59

if.else10:                                        ; preds = %if.else5
  %6 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %variant11 = getelementptr inbounds %struct.fla_chol_s, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %variant11, align 4, !tbaa !10
  %cmp12 = icmp eq i32 %7, 82
  br i1 %cmp12, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else10
  %call14 = call i32 @FLA_Chol_l_opt_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call14, ptr %r_val, align 4, !tbaa !8
  br label %if.end58

if.else15:                                        ; preds = %if.else10
  %8 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %variant16 = getelementptr inbounds %struct.fla_chol_s, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %variant16, align 4, !tbaa !10
  %cmp17 = icmp eq i32 %9, 83
  br i1 %cmp17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.else15
  %call19 = call i32 @FLA_Chol_l_opt_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call19, ptr %r_val, align 4, !tbaa !8
  br label %if.end57

if.else20:                                        ; preds = %if.else15
  %10 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %variant21 = getelementptr inbounds %struct.fla_chol_s, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %variant21, align 4, !tbaa !10
  %cmp22 = icmp eq i32 %11, 121
  br i1 %cmp22, label %if.then23, label %if.else25

if.then23:                                        ; preds = %if.else20
  %12 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %call24 = call i32 @FLA_Chol_l_blk_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %12)
  store i32 %call24, ptr %r_val, align 4, !tbaa !8
  br label %if.end56

if.else25:                                        ; preds = %if.else20
  %13 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %variant26 = getelementptr inbounds %struct.fla_chol_s, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %variant26, align 4, !tbaa !10
  %cmp27 = icmp eq i32 %14, 122
  br i1 %cmp27, label %if.then28, label %if.else30

if.then28:                                        ; preds = %if.else25
  %15 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %call29 = call i32 @FLA_Chol_l_blk_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %15)
  store i32 %call29, ptr %r_val, align 4, !tbaa !8
  br label %if.end55

if.else30:                                        ; preds = %if.else25
  %16 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %variant31 = getelementptr inbounds %struct.fla_chol_s, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %variant31, align 4, !tbaa !10
  %cmp32 = icmp eq i32 %17, 123
  br i1 %cmp32, label %if.then33, label %if.else35

if.then33:                                        ; preds = %if.else30
  %18 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %call34 = call i32 @FLA_Chol_l_blk_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %18)
  store i32 %call34, ptr %r_val, align 4, !tbaa !8
  br label %if.end54

if.else35:                                        ; preds = %if.else30
  %19 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %variant36 = getelementptr inbounds %struct.fla_chol_s, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %variant36, align 4, !tbaa !10
  %cmp37 = icmp eq i32 %20, 41
  br i1 %cmp37, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.else35
  %call39 = call i32 @FLA_Chol_l_unb_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call39, ptr %r_val, align 4, !tbaa !8
  br label %if.end53

if.else40:                                        ; preds = %if.else35
  %21 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %variant41 = getelementptr inbounds %struct.fla_chol_s, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %variant41, align 4, !tbaa !10
  %cmp42 = icmp eq i32 %22, 42
  br i1 %cmp42, label %if.then43, label %if.else45

if.then43:                                        ; preds = %if.else40
  %call44 = call i32 @FLA_Chol_l_unb_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call44, ptr %r_val, align 4, !tbaa !8
  br label %if.end52

if.else45:                                        ; preds = %if.else40
  %23 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %variant46 = getelementptr inbounds %struct.fla_chol_s, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %variant46, align 4, !tbaa !10
  %cmp47 = icmp eq i32 %24, 43
  br i1 %cmp47, label %if.then48, label %if.else50

if.then48:                                        ; preds = %if.else45
  %call49 = call i32 @FLA_Chol_l_unb_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call49, ptr %r_val, align 4, !tbaa !8
  br label %if.end

if.else50:                                        ; preds = %if.else45
  %call51 = call i32 @FLA_Check_error_code_helper(i32 noundef -54, ptr noundef @.str, i32 noundef 69)
  br label %if.end

if.end:                                           ; preds = %if.else50, %if.then48
  br label %if.end52

if.end52:                                         ; preds = %if.end, %if.then43
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then38
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then33
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then28
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then23
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then18
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then13
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then8
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then3
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then
  %25 = load i32, ptr %r_val, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_val) #3
  ret i32 %25
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Chol_l_blk_ext(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Chol_l_unb_ext(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Chol_l_opt_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Chol_l_opt_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Chol_l_opt_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Chol_l_blk_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Chol_l_blk_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Chol_l_blk_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Chol_l_unb_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Chol_l_unb_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Chol_l_unb_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Check_error_code_helper(i32 noundef, ptr noundef, i32 noundef) #2

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
!11 = !{!"fla_chol_s", !9, i64 0, !9, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40}
