; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//374/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define void @writeny(i32 %n1, i32 %n2) local_unnamed_addr #0 {
entry:
  %cmp1 = icmp sgt i32 %n1, 0
  %cmp.peel = icmp slt i32 %n2, %n1
  %or.cond = select i1 %cmp1, i1 %cmp.peel, i1 false
  br i1 %or.cond, label %for.cond2.preheader.peel.next, label %for.end22

for.end22:                                        ; preds = %entry
  ret void

for.cond2.preheader:                              ; preds = %for.cond2.preheader, %for.cond2.preheader.peel.next
  br i1 %cmp3, label %for.cond2, label %for.cond2.preheader

for.cond2:                                        ; preds = %for.cond2.preheader, %for.cond2
  br label %for.cond2

for.cond2.preheader.peel.next:                    ; preds = %entry
  %cmp3 = icmp sgt i32 %n2, 0
  br label %for.cond2.preheader
}

attributes #0 = { nofree norecurse nosync nounwind memory(none) }
