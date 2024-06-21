; ModuleID = 'samples/231.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/base/flamec/wrappers/lapack/task/FLA_SA_FS_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

; Function Attrs: nounwind uwtable
define i32 @FLA_SA_FS_task(ptr noundef byval(%struct.FLA_Obj_view) align 8 %L, ptr noundef byval(%struct.FLA_Obj_view) align 8 %D, ptr noundef byval(%struct.FLA_Obj_view) align 8 %p, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef byval(%struct.FLA_Obj_view) align 8 %E, i64 noundef %nb_alg, ptr noundef %cntl) #0 {
entry:
  %nb_alg.addr = alloca i64, align 8
  %cntl.addr = alloca ptr, align 8
  %info = alloca i32, align 4
  store i64 %nb_alg, ptr %nb_alg.addr, align 8, !tbaa !4
  store ptr %cntl, ptr %cntl.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %info) #3
  %0 = load i64, ptr %nb_alg.addr, align 8, !tbaa !4
  %call = call i32 @FLA_SA_FS_blk(ptr noundef byval(%struct.FLA_Obj_view) align 8 %L, ptr noundef byval(%struct.FLA_Obj_view) align 8 %D, ptr noundef byval(%struct.FLA_Obj_view) align 8 %p, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef byval(%struct.FLA_Obj_view) align 8 %E, i64 noundef %0)
  store i32 %call, ptr %info, align 4, !tbaa !10
  %1 = load i32, ptr %info, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %info) #3
  ret i32 %1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_SA_FS_blk(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, i64 noundef) #2

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
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
