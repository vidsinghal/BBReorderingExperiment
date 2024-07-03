; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//286/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: null_pointer_is_valid
define void @destroynode(ptr nocapture writeonly %node, ptr nocapture readnone %0, i1 %cmp.not, ptr nocapture readnone %1) local_unnamed_addr #0 {
entry:
  br i1 %cmp.not, label %while.end199, label %while.cond5.preheader

while.body10:                                     ; preds = %while.cond5.preheader, %while.body10
  store ptr null, ptr %node, align 8
  %2 = load ptr, ptr null, align 4294967296
  %cmp8.not = icmp eq ptr %2, null
  br i1 %cmp8.not, label %do.body96, label %while.body10

while.cond5.preheader:                            ; preds = %entry, %do.body96
  %3 = load ptr, ptr null, align 4294967296
  %cmp8.not1 = icmp eq ptr %3, null
  br i1 %cmp8.not1, label %do.body96, label %while.body10

while.end199:                                     ; preds = %entry
  ret void

do.body96:                                        ; preds = %while.body10, %while.cond5.preheader
  tail call void null(ptr null, ptr null, i64 0, ptr null, i32 0)
  br label %while.cond5.preheader
}

attributes #0 = { null_pointer_is_valid }
