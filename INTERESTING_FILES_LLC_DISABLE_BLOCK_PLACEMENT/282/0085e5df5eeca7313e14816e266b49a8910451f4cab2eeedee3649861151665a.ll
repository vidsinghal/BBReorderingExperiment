; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

define double @zlanhe_(ptr %n, ptr %a, i32 %0) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %inc27, %for.end ]
  %value.02 = phi double [ 0.000000e+00, %entry ], [ %1, %for.end ]
  %cmp5.not = icmp sgt i32 %j.0, %0
  br i1 %cmp5.not, label %if.end280, label %for.end

for.end:                                          ; preds = %for.cond
  %idxprom17 = zext i32 %j.0 to i64
  %arrayidx18 = getelementptr %struct.doublecomplex, ptr %a, i64 %idxprom17
  %1 = load double, ptr %arrayidx18, align 8
  store double 0.000000e+00, ptr %n, align 8
  %inc27 = add nsw i32 %j.0, 1
  br label %for.cond

if.end280:                                        ; preds = %for.cond
  ret double %value.02
}

attributes #0 = { "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
