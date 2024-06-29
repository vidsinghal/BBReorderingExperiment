; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//414/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noundef i32 @ap_set_keepalive(ptr nocapture writeonly %r, i32 %0, i1 %tobool.not) local_unnamed_addr #0 {
entry:
  %switch = icmp ugt i32 %0, 1
  %or.cond.not = select i1 %tobool.not, i1 %switch, i1 false
  br i1 %or.cond.not, label %lor.lhs.false10, label %if.end125

if.end125:                                        ; preds = %lor.lhs.false10, %entry
  store i32 0, ptr %r, align 8
  ret i32 0

lor.lhs.false10:                                  ; preds = %entry
  %call12 = load volatile ptr, ptr null, align 4294967296
  br label %if.end125
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
