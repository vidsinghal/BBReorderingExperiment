; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//362/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @clatrs_(ptr nocapture writeonly %lda, ptr nocapture writeonly %x, i1 %cmp1160, i1 %tobool1167) local_unnamed_addr #0 {
entry:
  %cmp1160.fr = freeze i1 %cmp1160
  br i1 %cmp1160.fr, label %for.cond1037.us, label %entry.split

entry.split:                                      ; preds = %entry
  %tobool1167.fr = freeze i1 %tobool1167
  %call1152.us23 = tail call i32 @csscal_()
  tail call void @llvm.assume(i1 %tobool1167.fr)
  store i32 0, ptr %lda, align 4
  store i32 0, ptr %x, align 4
  br label %for.body1205

for.body1205:                                     ; preds = %for.body1205, %entry.split
  br label %for.body1205

for.cond1037.us:                                  ; preds = %entry, %for.cond1037.us
  %call1152.us = tail call i32 @csscal_()
  br label %for.cond1037.us
}

declare i32 @csscal_() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { noreturn }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
