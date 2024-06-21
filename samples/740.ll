; ModuleID = 'samples/740.bc'
source_filename = "frame/compat/f2c/util/bla_c_abs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scomplex = type { float, float }

; Function Attrs: nounwind uwtable
define hidden double @bla_c_abs(ptr noundef %z) #0 {
entry:
  %z.addr = alloca ptr, align 8
  store ptr %z, ptr %z.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %z.addr, align 8, !tbaa !4
  %real = getelementptr inbounds %struct.scomplex, ptr %0, i32 0, i32 0
  %1 = load float, ptr %real, align 4, !tbaa !8
  %conv = fpext float %1 to double
  %2 = load ptr, ptr %z.addr, align 8, !tbaa !4
  %imag = getelementptr inbounds %struct.scomplex, ptr %2, i32 0, i32 1
  %3 = load float, ptr %imag, align 4, !tbaa !11
  %conv1 = fpext float %3 to double
  %call = call double @bla_f__cabs(double noundef %conv, double noundef %conv1)
  ret double %call
}

declare double @bla_f__cabs(double noundef, double noundef) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = !{!9, !10, i64 0}
!9 = !{!"scomplex", !10, i64 0, !10, i64 4}
!10 = !{!"float", !6, i64 0}
!11 = !{!9, !10, i64 4}
