; ModuleID = 'samples/703.bc'
source_filename = "frame/compat/cblas/src/cblas_sscal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @cblas_sscal(i32 noundef %N, float noundef %alpha, ptr noundef %X, i32 noundef %incX) #0 {
entry:
  %N.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %X.addr = alloca ptr, align 8
  %incX.addr = alloca i32, align 4
  store i32 %N, ptr %N.addr, align 4, !tbaa !4
  store float %alpha, ptr %alpha.addr, align 4, !tbaa !8
  store ptr %X, ptr %X.addr, align 8, !tbaa !10
  store i32 %incX, ptr %incX.addr, align 4, !tbaa !4
  %0 = load ptr, ptr %X.addr, align 8, !tbaa !10
  call void @sscal_(ptr noundef %N.addr, ptr noundef %alpha.addr, ptr noundef %0, ptr noundef %incX.addr)
  ret void
}

declare void @sscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!"float", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
