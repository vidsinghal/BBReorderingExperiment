; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//36/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(inaccessiblemem: write)
define noundef i32 @ncgparse(ptr nocapture readonly %yydefact, i8 %0, i64 %idx.neg) local_unnamed_addr #0 {
entry:
  %cond = icmp ne i8 %0, 0
  tail call void @llvm.assume(i1 %cond)
  br label %do.body3

do.body3:                                         ; preds = %do.body3, %entry
  br label %do.body3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(inaccessiblemem: write) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
