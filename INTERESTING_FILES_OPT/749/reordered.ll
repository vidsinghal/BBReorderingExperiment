; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//749/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn null_pointer_is_valid
define noundef i32 @named_controls_configure(ptr nocapture writeonly %cp, i1 %cmp26.not, i1 %tobool89.not) local_unnamed_addr #0 {
entry:
  %cmp26.not.fr = freeze i1 %cmp26.not
  br i1 %cmp26.not.fr, label %entry.split.us, label %entry.split

entry.split.us:                                   ; preds = %entry
  %tobool89.not.fr = freeze i1 %tobool89.not
  br i1 %tobool89.not.fr, label %for.cond8.us.us, label %for.cond8.us

entry.split:                                      ; preds = %entry
  tail call void (ptr, ptr, ptr, i32, ptr, ...) null(ptr null, ptr null, ptr null, i32 0, ptr null, ptr null)
  unreachable

for.cond8.us:                                     ; preds = %entry.split.us, %for.cond8.us
  tail call void (ptr, ptr, ptr, i32, ptr, ...) null(ptr null, ptr null, ptr null, i32 0, ptr null, ptr null)
  store ptr null, ptr %cp, align 8
  store ptr null, ptr null, align 4294967296
  br label %for.cond8.us

for.cond8.us.us:                                  ; preds = %entry.split.us, %for.cond8.us.us
  tail call void (ptr, ptr, ptr, i32, ptr, ...) null(ptr null, ptr null, ptr null, i32 0, ptr null, ptr null)
  store ptr null, ptr %cp, align 8
  br label %for.cond8.us.us
}

attributes #0 = { noreturn null_pointer_is_valid "min-legal-vector-width"="0" }
