; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//446/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @dlar1v_(ptr nocapture readonly %n, ptr nocapture readonly %b1, ptr nocapture readonly %lambda, ptr nocapture readnone %d__, ptr nocapture readnone %ld, ptr nocapture readnone %lld, ptr nocapture %work, i32 %0, i64 %idxprom25, i32 %add, i32 %1) local_unnamed_addr #0 {
entry:
  %call = tail call double @dlamch_()
  %2 = load double, ptr %lambda, align 8
  store double %2, ptr %work, align 8
  %cmp24.not.not = icmp slt i32 %1, %0
  br i1 %cmp24.not.not, label %for.body, label %for.end

common.ret:                                       ; preds = %for.end, %for.body
  %idxprom122.sink = phi i64 [ %idxprom122, %for.end ], [ %idxprom25, %for.body ]
  %.sink = phi double [ 0.000000e+00, %for.end ], [ %div, %for.body ]
  %arrayidx123 = getelementptr double, ptr %work, i64 %idxprom122.sink
  store double %.sink, ptr %arrayidx123, align 8
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
  br label %common.ret

for.end:                                          ; preds = %entry
  %call51 = tail call i32 @disnan_()
  store double 1.000000e+00, ptr %work, align 8
  %idxprom122 = sext i32 %add to i64
  br label %common.ret
}

declare double @dlamch_() local_unnamed_addr

declare i32 @disnan_() local_unnamed_addr

attributes #0 = { "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
