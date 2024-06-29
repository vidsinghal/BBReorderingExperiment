; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//262/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(argmem: write)
define noundef i32 @Spliceends_trim_qstart_nosplice(ptr nocapture writeonly %nmismatches_to_trimpos) local_unnamed_addr #0 {
entry:
  br label %for.cond.outer

for.cond.outer.loopexit:                          ; preds = %if.then17.lr.ph, %for.cond.outer
  %add14.le = add i32 %score.0.ph, 1
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.cond.outer.loopexit, %entry
  %score.0.ph = phi i32 [ 0, %entry ], [ %add14.le, %for.cond.outer.loopexit ]
  %max_score.0.ph = phi i32 [ 0, %entry ], [ %score.0.ph, %for.cond.outer.loopexit ]
  %cmp151 = icmp slt i32 %max_score.0.ph, 0
  br i1 %cmp151, label %if.then17.lr.ph, label %for.cond.outer.loopexit

if.then17.lr.ph:                                  ; preds = %for.cond.outer
  store i32 0, ptr %nmismatches_to_trimpos, align 4
  br label %for.cond.outer.loopexit
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(argmem: write) }
