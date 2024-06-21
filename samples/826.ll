; ModuleID = 'samples/826.bc'
source_filename = "/local-ssd/globalarrays-4b7gqwvfr3rlpyzs4u6z5cjqyfeyij7v-build/aidengro/spack-stage-globalarrays-5.8.2-4b7gqwvfr3rlpyzs4u6z5cjqyfeyij7v/spack-src/global/src/datatypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define i64 @pnga_type_f2c(i64 noundef %type) #0 {
entry:
  %type.addr = alloca i64, align 8
  %ctype = alloca i64, align 8
  store i64 %type, ptr %type.addr, align 8
  %0 = load i64, ptr %type.addr, align 8
  switch i64 %0, label %sw.default [
    i64 1010, label %sw.bb
    i64 1012, label %sw.bb1
    i64 1013, label %sw.bb2
    i64 1015, label %sw.bb3
    i64 1014, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  store i64 1002, ptr %ctype, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i64 1003, ptr %ctype, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store i64 1004, ptr %ctype, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  store i64 1007, ptr %ctype, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  store i64 1006, ptr %ctype, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %1 = load i64, ptr %type.addr, align 8
  store i64 %1, ptr %ctype, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %2 = load i64, ptr %ctype, align 8
  ret i64 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i64 @pnga_type_c2f(i64 noundef %type) #0 {
entry:
  %type.addr = alloca i64, align 8
  %ftype = alloca i64, align 8
  store i64 %type, ptr %type.addr, align 8
  %0 = load i64, ptr %type.addr, align 8
  switch i64 %0, label %sw.default [
    i64 1001, label %sw.bb
    i64 1002, label %sw.bb1
    i64 1016, label %sw.bb2
    i64 1003, label %sw.bb3
    i64 1004, label %sw.bb4
    i64 1007, label %sw.bb5
    i64 1006, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  store i64 -1, ptr %ftype, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i64 1010, ptr %ftype, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store i64 1010, ptr %ftype, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  store i64 1012, ptr %ftype, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  store i64 1013, ptr %ftype, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  store i64 1015, ptr %ftype, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  store i64 1014, ptr %ftype, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %1 = load i64, ptr %type.addr, align 8
  store i64 %1, ptr %ftype, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %2 = load i64, ptr %ftype, align 8
  ret i64 %2
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
