; ModuleID = 'samples/516.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/lapack/dec/lu/piv/front/flamec/FLA_LU_piv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

@fla_lu_piv_cntl2 = external global ptr, align 8

; Function Attrs: nounwind uwtable
define i32 @FLA_LU_piv(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %p) #0 {
entry:
  %r_val = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_val) #3
  store i32 -1, ptr %r_val, align 4, !tbaa !4
  %call = call i32 @FLA_Check_error_level()
  %cmp = icmp uge i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @FLA_LU_piv_check(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %p)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr @fla_lu_piv_cntl2, align 8, !tbaa !8
  %call2 = call i32 @FLA_LU_piv_internal(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %p, ptr noundef %0)
  store i32 %call2, ptr %r_val, align 4, !tbaa !4
  %1 = load i32, ptr %r_val, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_val) #3
  ret i32 %1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Check_error_level() #2

declare i32 @FLA_LU_piv_check(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_LU_piv_internal(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

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
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
