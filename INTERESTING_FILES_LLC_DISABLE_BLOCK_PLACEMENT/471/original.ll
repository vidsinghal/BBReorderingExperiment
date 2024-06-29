; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//471/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i1 @ts_tree_cursor_goto_parent(ptr nocapture writeonly %_self) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %cleanup24, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %dec, %cleanup24 ]
  %call = tail call i1 @ts_subtree_visible()
  br i1 %call, label %if.then, label %cleanup24

if.then:                                          ; preds = %for.cond
  store i32 %i.0, ptr %_self, align 8
  br label %cleanup24

cleanup24:                                        ; preds = %if.then, %for.cond
  %dec = add i32 %i.0, 1
  br label %for.cond
}

declare i1 @ts_subtree_visible() local_unnamed_addr

attributes #0 = { noreturn }
