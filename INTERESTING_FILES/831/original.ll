; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//831/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nounwind
define noalias noundef ptr @ucp_put_nbx(i64 %count, i1 %cmp, i1 %tobool88.not, i1 %not.cmp) local_unnamed_addr #0 {
entry:
  %brmerge = select i1 %cmp, i1 %tobool88.not, i1 false
  %tobool96.not = icmp eq i64 %count, 0
  %or.cond = or i1 %tobool96.not, %brmerge
  br i1 %or.cond, label %cleanup148, label %if.then97

if.then97:                                        ; preds = %entry
  store volatile i32 0, ptr null, align 4294967296
  br label %cleanup148

cleanup148:                                       ; preds = %if.then97, %entry
  ret ptr null
}

attributes #0 = { nofree norecurse nounwind }
