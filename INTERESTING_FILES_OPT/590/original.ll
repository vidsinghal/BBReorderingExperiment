; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//590/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare ptr @ncindexith(ptr) local_unnamed_addr

; Function Attrs: noreturn
define noundef i32 @nc4_rec_match_dimscales(ptr %grp, i1 %cmp64, i1 %cmp85.not, ptr nocapture readnone %0, i32 %conv58) local_unnamed_addr #0 {
entry:
  %cmp601 = icmp sgt i32 %conv58, 0
  %dim115 = getelementptr i8, ptr %grp, i64 64
  br i1 %cmp601, label %for.cond25.us.us.preheader, label %entry.split

for.cond25.us.us.preheader:                       ; preds = %entry
  tail call void @llvm.assume(i1 %cmp64)
  br label %for.cond25.us.us

for.cond25.us.us:                                 ; preds = %for.cond25.us.us.preheader, %for.cond25.us.us
  br label %for.cond25.us.us

entry.split:                                      ; preds = %entry
  br i1 %cmp64, label %for.cond25.us3, label %for.cond25

for.cond25.us3:                                   ; preds = %entry.split, %for.cond25.us3
  br label %for.cond25.us3

for.cond25:                                       ; preds = %entry.split, %for.cond25
  %call117 = tail call ptr @ncindexith(ptr %dim115)
  br label %for.cond25
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { noreturn }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
