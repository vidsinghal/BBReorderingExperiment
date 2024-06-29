; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @dlar1v_(ptr %n, ptr %b1, ptr %lambda, ptr %d__, ptr %ld, ptr %lld, ptr %work, i32 %0, i64 %idxprom25, i32 %add, i32 %1) #0 {
entry:
  %call = call double @dlamch_()
  %2 = load double, ptr %lambda, align 8
  store double %2, ptr %work, align 8
  %cmp24.not.not = icmp slt i32 %1, %0
  br i1 %cmp24.not.not, label %for.body, label %for.end

common.ret:                                       ; preds = %for.end, %for.body
  ret i32 0

for.body:                                         ; preds = %entry
  %add18 = or i32 %add, %0
  %3 = sext i32 %add18 to i64
  %4 = getelementptr double, ptr %work, i64 %3
  %5 = load double, ptr %4, align 8
  %6 = load double, ptr %b1, align 8
  %sub22 = fsub double %5, %6
  %7 = load double, ptr %n, align 8
  %add27 = fadd double %7, %sub22
  %div = fmul double %add27, 0.000000e+00
  %arrayidx32 = getelementptr double, ptr %work, i64 %idxprom25
  store double %div, ptr %arrayidx32, align 8
  br label %common.ret

for.end:                                          ; preds = %entry
  %call51 = call i32 @disnan_()
  store double 1.000000e+00, ptr %work, align 8
  %idxprom122 = sext i32 %add to i64
  %arrayidx123 = getelementptr double, ptr %work, i64 %idxprom122
  store double 0.000000e+00, ptr %arrayidx123, align 8
  br label %common.ret
}

declare double @dlamch_()

declare i32 @disnan_()

attributes #0 = { "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
