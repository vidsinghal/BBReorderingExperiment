; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES//76/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noalias noundef ptr @ngx_http_scgi_merge_loc_conf(ptr nocapture writeonly %child, i8 %bf.load, i8 %bf.shl) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i8 %bf.shl, 0
  %cmp91 = icmp sgt i8 %bf.load, 0
  %cmp9 = and i1 %cmp91, %cmp
  br i1 %cmp9, label %0, label %1

0:                                                ; preds = %entry
  store i8 0, ptr %child, align 8
  br label %1

1:                                                ; preds = %0, %entry
  ret ptr null
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
