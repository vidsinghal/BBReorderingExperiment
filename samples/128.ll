; ModuleID = 'samples/128.bc'
source_filename = "/local-ssd/globalarrays-4b7gqwvfr3rlpyzs4u6z5cjqyfeyij7v-build/aidengro/spack-stage-globalarrays-5.8.2-4b7gqwvfr3rlpyzs4u6z5cjqyfeyij7v/spack-src/tcgmsg/tcgmsg-mpi/niceftn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define i64 @armci_tcgmsg_niceftn(ptr noundef %ival) #0 {
entry:
  %ival.addr = alloca ptr, align 8
  %val = alloca i32, align 4
  store ptr %ival, ptr %ival.addr, align 8
  %0 = load ptr, ptr %ival.addr, align 8
  %1 = load i64, ptr %0, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, ptr %val, align 4
  %2 = load i32, ptr %val, align 4
  %call = call i32 @nice(i32 noundef %2) #2
  %conv1 = sext i32 %call to i64
  ret i64 %conv1
}

; Function Attrs: nounwind
declare i32 @nice(i32 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
