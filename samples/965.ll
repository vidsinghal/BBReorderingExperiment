; ModuleID = 'samples/965.bc'
source_filename = "engines/e_capi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @bind_engine(ptr noundef %e, ptr noundef %id, ptr noundef %fns) #0 {
entry:
  %e.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %fns.addr = alloca ptr, align 8
  store ptr %e, ptr %e.addr, align 8, !tbaa !4
  store ptr %id, ptr %id.addr, align 8, !tbaa !4
  store ptr %fns, ptr %fns.addr, align 8, !tbaa !4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i64 @v_check(i64 noundef %v) #0 {
entry:
  %retval = alloca i64, align 8
  %v.addr = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 8, !tbaa !8
  %0 = load i64, ptr %v.addr, align 8, !tbaa !8
  %cmp = icmp uge i64 %0, 196608
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 196608, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i64, ptr %retval, align 8
  ret i64 %1
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
