; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//269/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ma.init = internal unnamed_addr global i1 false

; Function Attrs: nofree nounwind
define void @gt_ma_init() local_unnamed_addr #0 {
entry:
  %ma.init.val = load i1, ptr @ma.init, align 1
  br i1 %ma.init.val, label %if.then, label %do.end

do.end:                                           ; preds = %entry
  store i1 true, ptr @ma.init, align 1
  ret void

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr null, ptr null, ptr null, ptr null, ptr null, i32 1)
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #0

attributes #0 = { nofree nounwind }
