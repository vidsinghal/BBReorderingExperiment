; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//605/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write)
define noundef i32 @block_cipher_df(ptr nocapture writeonly %data, i64 %data_len, i1 %cmp21.not, i1 %cmp31, i32 %inc45, ptr nocapture readnone %arrayidx38) local_unnamed_addr #0 {
entry:
  br i1 %cmp21.not, label %for.cond25.preheader, label %common.ret

for.body36:                                       ; preds = %for.body36, %for.cond25.preheader.split.us.split.us
  br label %for.body36

while.cond.preheader:                             ; preds = %for.cond25.preheader.split, %while.cond.preheader
  br label %while.cond.preheader

for.cond25.preheader.split.us.split.us:           ; preds = %for.cond25.preheader
  store i8 0, ptr %data, align 1
  br label %for.body36

common.ret:                                       ; preds = %for.cond25.preheader.split, %entry
  ret i32 0

for.cond25.preheader:                             ; preds = %entry
  br i1 %cmp31, label %for.cond25.preheader.split.us.split.us, label %for.cond25.preheader.split

for.cond25.preheader.split:                       ; preds = %for.cond25.preheader
  %cmp26 = icmp ult i32 %inc45, 48
  br i1 %cmp26, label %while.cond.preheader, label %common.ret
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) }
