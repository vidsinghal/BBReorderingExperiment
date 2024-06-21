; ModuleID = 'samples/268.bc'
source_filename = "/local-ssd/mstk-syjyps62csp6fstflwgmjajbyo2ckx3d-build/aidengro/spack-stage-mstk-3.3.6-syjyps62csp6fstflwgmjajbyo2ckx3d/spack-src/src/util/MSTK_Version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @MSTK_Version(ptr noundef %major_version, ptr noundef %minor_version, ptr noundef %patch_version, ptr noundef %version_string) #0 {
entry:
  %major_version.addr = alloca ptr, align 8
  %minor_version.addr = alloca ptr, align 8
  %patch_version.addr = alloca ptr, align 8
  %version_string.addr = alloca ptr, align 8
  store ptr %major_version, ptr %major_version.addr, align 8, !tbaa !5
  store ptr %minor_version, ptr %minor_version.addr, align 8, !tbaa !5
  store ptr %patch_version, ptr %patch_version.addr, align 8, !tbaa !5
  store ptr %version_string, ptr %version_string.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %major_version.addr, align 8, !tbaa !5
  store i32 3, ptr %0, align 4, !tbaa !9
  %1 = load ptr, ptr %minor_version.addr, align 8, !tbaa !5
  store i32 3, ptr %1, align 4, !tbaa !9
  %2 = load ptr, ptr %patch_version.addr, align 8, !tbaa !5
  store i32 2, ptr %2, align 4, !tbaa !9
  %3 = load ptr, ptr %version_string.addr, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = load ptr, ptr %major_version.addr, align 8, !tbaa !5
  %6 = load i32, ptr %5, align 4, !tbaa !9
  %7 = load ptr, ptr %minor_version.addr, align 8, !tbaa !5
  %8 = load i32, ptr %7, align 4, !tbaa !9
  %9 = load ptr, ptr %patch_version.addr, align 8, !tbaa !5
  %10 = load i32, ptr %9, align 4, !tbaa !9
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %4, ptr noundef @.str, i32 noundef %6, i32 noundef %8, i32 noundef %10) #2
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
