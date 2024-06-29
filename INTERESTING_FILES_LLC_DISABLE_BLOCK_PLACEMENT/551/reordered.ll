; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//551/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noreturn nounwind
define noundef i32 @exr_print_context_info(ptr nocapture readonly %ctxt, i1 %tobool4.not, i1 %tobool30.not) local_unnamed_addr #0 {
entry:
  br i1 %tobool4.not, label %if.end23.thread, label %if.end23

if.end40:                                         ; preds = %if.then33, %if.end23
  %0 = phi ptr [ %2, %if.then33 ], [ %4, %if.end23 ]
  %1 = load i32, ptr %0, align 8
  %call78 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) null, i32 %1, i32 0)
  br label %for.cond80

if.then33:                                        ; preds = %if.end23.thread, %if.end23
  %2 = phi ptr [ %3, %if.end23.thread ], [ %4, %if.end23 ]
  %call39 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) null, i32 0, ptr null)
  br label %if.end40

if.end23.thread:                                  ; preds = %entry
  %3 = load ptr, ptr %ctxt, align 8
  br label %if.then33

if.end23:                                         ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null)
  %4 = load ptr, ptr %ctxt, align 8
  br i1 %tobool30.not, label %if.then33, label %if.end40

for.cond80:                                       ; preds = %for.cond80, %if.end40
  br label %for.cond80
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

attributes #0 = { nofree noreturn nounwind }
attributes #1 = { nofree nounwind }
