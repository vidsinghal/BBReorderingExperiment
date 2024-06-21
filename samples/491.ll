; ModuleID = 'samples/491.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/base/flamec/check/base/main/FLA_Repart_2x1_to_3x1_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

@.str = private unnamed_addr constant [204 x i8] c"/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/base/flamec/check/base/main/FLA_Repart_2x1_to_3x1_check.c\00", align 1

; Function Attrs: nounwind uwtable
define i32 @FLA_Repart_2x1_to_3x1_check(ptr noundef byval(%struct.FLA_Obj_view) align 8 %AT, ptr noundef %A0, ptr noundef %A1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %AB, ptr noundef %A2, i64 noundef %mb, i32 noundef %side) #0 {
entry:
  %A0.addr = alloca ptr, align 8
  %A1.addr = alloca ptr, align 8
  %A2.addr = alloca ptr, align 8
  %mb.addr = alloca i64, align 8
  %side.addr = alloca i32, align 4
  %e_val = alloca i32, align 4
  store ptr %A0, ptr %A0.addr, align 8, !tbaa !4
  store ptr %A1, ptr %A1.addr, align 8, !tbaa !4
  store ptr %A2, ptr %A2.addr, align 8, !tbaa !4
  store i64 %mb, ptr %mb.addr, align 8, !tbaa !8
  store i32 %side, ptr %side.addr, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %e_val) #3
  %call = call i32 @FLA_Check_valid_object_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %AT)
  store i32 %call, ptr %e_val, align 4, !tbaa !10
  %0 = load i32, ptr %e_val, align 4, !tbaa !10
  %call1 = call i32 @FLA_Check_error_code_helper(i32 noundef %0, ptr noundef @.str, i32 noundef 21)
  %call2 = call i32 @FLA_Check_valid_object_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %AB)
  store i32 %call2, ptr %e_val, align 4, !tbaa !10
  %1 = load i32, ptr %e_val, align 4, !tbaa !10
  %call3 = call i32 @FLA_Check_error_code_helper(i32 noundef %1, ptr noundef @.str, i32 noundef 24)
  %2 = load ptr, ptr %A0.addr, align 8, !tbaa !4
  %call4 = call i32 @FLA_Check_null_pointer(ptr noundef %2)
  store i32 %call4, ptr %e_val, align 4, !tbaa !10
  %3 = load i32, ptr %e_val, align 4, !tbaa !10
  %call5 = call i32 @FLA_Check_error_code_helper(i32 noundef %3, ptr noundef @.str, i32 noundef 27)
  %4 = load ptr, ptr %A1.addr, align 8, !tbaa !4
  %call6 = call i32 @FLA_Check_null_pointer(ptr noundef %4)
  store i32 %call6, ptr %e_val, align 4, !tbaa !10
  %5 = load i32, ptr %e_val, align 4, !tbaa !10
  %call7 = call i32 @FLA_Check_error_code_helper(i32 noundef %5, ptr noundef @.str, i32 noundef 30)
  %6 = load ptr, ptr %A2.addr, align 8, !tbaa !4
  %call8 = call i32 @FLA_Check_null_pointer(ptr noundef %6)
  store i32 %call8, ptr %e_val, align 4, !tbaa !10
  %7 = load i32, ptr %e_val, align 4, !tbaa !10
  %call9 = call i32 @FLA_Check_error_code_helper(i32 noundef %7, ptr noundef @.str, i32 noundef 33)
  %8 = load i32, ptr %side.addr, align 4, !tbaa !10
  %call10 = call i32 @FLA_Check_valid_topbottom_side(i32 noundef %8)
  store i32 %call10, ptr %e_val, align 4, !tbaa !10
  %9 = load i32, ptr %e_val, align 4, !tbaa !10
  %call11 = call i32 @FLA_Check_error_code_helper(i32 noundef %9, ptr noundef @.str, i32 noundef 36)
  %10 = load i32, ptr %side.addr, align 4, !tbaa !10
  %cmp = icmp eq i32 %10, 200
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load i64, ptr %mb.addr, align 8, !tbaa !8
  %call12 = call i32 @FLA_Check_attempted_repart_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %AT, i64 noundef %11)
  store i32 %call12, ptr %e_val, align 4, !tbaa !10
  %12 = load i32, ptr %e_val, align 4, !tbaa !10
  %call13 = call i32 @FLA_Check_error_code_helper(i32 noundef %12, ptr noundef @.str, i32 noundef 41)
  br label %if.end18

if.else:                                          ; preds = %entry
  %13 = load i32, ptr %side.addr, align 4, !tbaa !10
  %cmp14 = icmp eq i32 %13, 201
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.else
  %14 = load i64, ptr %mb.addr, align 8, !tbaa !8
  %call16 = call i32 @FLA_Check_attempted_repart_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %AB, i64 noundef %14)
  store i32 %call16, ptr %e_val, align 4, !tbaa !10
  %15 = load i32, ptr %e_val, align 4, !tbaa !10
  %call17 = call i32 @FLA_Check_error_code_helper(i32 noundef %15, ptr noundef @.str, i32 noundef 46)
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %e_val) #3
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Check_valid_object_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Check_error_code_helper(i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Check_null_pointer(ptr noundef) #2

declare i32 @FLA_Check_valid_topbottom_side(i32 noundef) #2

declare i32 @FLA_Check_attempted_repart_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8, i64 noundef) #2

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
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
