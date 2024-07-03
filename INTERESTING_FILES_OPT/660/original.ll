; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//660/original.bc'
source_filename = "../scipy/_lib/highs/src/ipm/basiclu/src/lu_pivot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define noundef i32 @lu_pivot() local_unnamed_addr #0 {
entry:
  ret i32 0
}

; Function Attrs: nofree norecurse nounwind
define noundef i32 @lu_pivot_small(ptr nocapture writeonly %Uput, i32 %0, i32 %1, i1 %cmp145, i64 %idxprom262) local_unnamed_addr #1 {
entry:
  br i1 %cmp145, label %for.body147, label %for.end183.lr.ph

for.end183.lr.ph:                                 ; preds = %entry
  %.fr = freeze i32 %0
  %cmp214.not1 = icmp sgt i32 %.fr, 0
  br i1 %cmp214.not1, label %for.end183.us, label %for.end183

for.end183.us:                                    ; preds = %for.end183.lr.ph, %for.end183.us
  store volatile i32 0, ptr null, align 4294967296
  store i32 0, ptr %Uput, align 4
  br label %for.end183.us

for.body147:                                      ; preds = %entry
  ret i32 0

for.end183:                                       ; preds = %for.end183.lr.ph, %for.end183
  store volatile i32 0, ptr null, align 4294967296
  store double 0.000000e+00, ptr %Uput, align 8
  store i32 0, ptr %Uput, align 4
  br label %for.end183
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
attributes #1 = { nofree norecurse nounwind }
