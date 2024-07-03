; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//328/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @consume_data(ptr nocapture readnone %0, i1 %cmp10.not, ptr nocapture readnone %1, i1 %cmp14, ptr nocapture readnone %2, i32 %3, ptr nocapture readonly %4) local_unnamed_addr {
entry:
  br i1 %cmp10.not, label %common.ret, label %for.cond12.preheader.lr.ph

common.ret:                                       ; preds = %entry
  ret i32 0

for.cond12.preheader.lr.ph:                       ; preds = %entry
  %entropy_decode_mcu = getelementptr i8, ptr %4, i64 80
  br label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %for.cond12.preheader, %for.cond12.preheader.lr.ph
  %5 = load ptr, ptr %entropy_decode_mcu, align 8
  %call44 = tail call i32 %5(ptr null, ptr null)
  br label %for.cond12.preheader
}
