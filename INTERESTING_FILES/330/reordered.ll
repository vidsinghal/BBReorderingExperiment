; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES//330/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @bam_parse_region(ptr %beg, ptr nocapture writeonly %end, i64 %0, i32 %conv) local_unnamed_addr {
entry:
  %call = tail call ptr @sam_parse_region(ptr %beg)
  %cmp = icmp sgt i64 %0, 2147483647
  br i1 %cmp, label %common.ret, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  store i32 %conv, ptr %beg, align 4
  store i32 %conv, ptr %end, align 4
  br label %common.ret

common.ret:                                       ; preds = %lor.lhs.false, %entry
  ret i32 0
}

declare ptr @sam_parse_region(ptr) local_unnamed_addr
