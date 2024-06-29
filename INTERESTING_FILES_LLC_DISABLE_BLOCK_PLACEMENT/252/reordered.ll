; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//252/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write)
define void @ucs_pgt_entry_dump_recurs(ptr nocapture writeonly %pte, i64 %0) local_unnamed_addr #0 {
entry:
  %and = and i64 %0, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

if.then:                                          ; preds = %entry
  ret void

for.cond.preheader:                               ; preds = %entry
  store i64 0, ptr %pte, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.cond
  br label %for.cond
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) }
