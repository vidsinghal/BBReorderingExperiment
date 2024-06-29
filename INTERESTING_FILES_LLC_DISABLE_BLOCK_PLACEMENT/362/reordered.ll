; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//362/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @clatrs_(ptr nocapture writeonly %lda, ptr nocapture writeonly %info, i32 %call, i1 %cmp31, i1 %tobool.not) local_unnamed_addr {
entry:
  store i32 0, ptr %lda, align 4
  %call1 = load volatile i32, ptr null, align 4294967296
  %call2 = load volatile i32, ptr null, align 4294967296
  br i1 %tobool.not, label %land.lhs.true, label %if.else

if.else:                                          ; preds = %land.lhs.true, %entry
  %call21 = tail call i32 @lsame_(ptr null)
  br i1 %cmp31, label %if.then32, label %if.else.if.end37_crit_edge

if.then39:                                        ; preds = %if.then32, %if.else.if.end37_crit_edge
  %call40 = load volatile i32, ptr null, align 4294967296
  br label %cleanup

if.else.if.end37_crit_edge:                       ; preds = %if.else
  %0 = icmp eq i32 %call, 0
  br i1 %0, label %if.end41, label %if.then39

if.then32:                                        ; preds = %if.else
  store i32 0, ptr %info, align 4
  br label %if.then39

if.end41:                                         ; preds = %if.else.if.end37_crit_edge
  store float 0.000000e+00, ptr %lda, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then39
  ret i32 0

land.lhs.true:                                    ; preds = %entry
  %call4 = load volatile i32, ptr null, align 4294967296
  br label %if.else
}

declare i32 @lsame_(ptr) local_unnamed_addr
