; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//647/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noalias noundef ptr @d2i_PublicKey(i32 %type, ptr nocapture writeonly %a, ptr readnone %copy) local_unnamed_addr #0 {
entry:
  store ptr null, ptr %a, align 8
  %cmp14 = icmp ne i32 %type, 0
  %cmp16 = icmp ne ptr %copy, null
  %or.cond = select i1 %cmp14, i1 true, i1 %cmp16
  br i1 %or.cond, label %land.lhs.true17, label %if.end21

if.end21:                                         ; preds = %land.lhs.true17, %entry
  ret ptr null

land.lhs.true17:                                  ; preds = %entry
  %call18 = load volatile i32, ptr null, align 4294967296
  br label %if.end21
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
