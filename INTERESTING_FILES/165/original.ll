; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES//165/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nounwind
define void @keccak_absorb(i64 %conv) local_unnamed_addr #0 {
entry:
  %conv.fr = freeze i64 %conv
  %cmp1.not1 = icmp ugt i64 %conv.fr, 1
  br i1 %cmp1.not1, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %cmp1.not = icmp eq i64 %conv.fr, 1
  br i1 %cmp1.not, label %while.body.us, label %while.body

while.body.us:                                    ; preds = %while.body.lr.ph
  store volatile i32 0, ptr null, align 4294967296
  br label %while.end

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  store volatile i32 0, ptr null, align 4294967296
  br label %while.body

while.end:                                        ; preds = %while.body.us, %entry
  ret void
}

attributes #0 = { nofree norecurse nounwind }
