; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//294/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @bli_shemv_unf_var1a(i1 %cmp8) local_unnamed_addr {
entry:
  %call7 = load volatile ptr, ptr null, align 4294967296
  br i1 %cmp8, label %for.body, label %common.ret

for.body:                                         ; preds = %entry
  tail call void %call7(i32 0, i32 0, i32 0, i64 0, ptr null, ptr null, i64 0, ptr null, i64 0, ptr null, ptr null, i64 0, ptr null)
  br label %common.ret

common.ret:                                       ; preds = %for.body, %entry
  ret void
}
