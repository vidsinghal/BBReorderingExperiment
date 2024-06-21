; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES//3/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noundef i32 @aws_signing_result_set_property(ptr readnone %call, i1 %cmp3) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne ptr %call, null
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %or.cond, label %common.ret, label %if.end

if.end:                                           ; preds = %entry
  %call4 = load volatile i32, ptr null, align 4294967296
  br label %common.ret

common.ret:                                       ; preds = %if.end, %entry
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
