; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//300/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i16 @nco_dbg_lvl_get() local_unnamed_addr

define noundef i32 @nco_cnv_cf_cll_mth_add(i32 %out_id, i1 %cmp88) local_unnamed_addr {
entry:
  %cmp88.fr = freeze i1 %cmp88
  tail call void @llvm.assume(i1 %cmp88.fr)
  %cmp84.us = icmp sgt i32 %out_id, 0
  br i1 %cmp84.us, label %for.body90, label %if.else131.split.us.us

if.else131.split.us.us:                           ; preds = %entry, %if.else131.split.us.us
  %call173.us = tail call i16 @nco_dbg_lvl_get()
  br label %if.else131.split.us.us

for.body90:                                       ; preds = %entry
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
