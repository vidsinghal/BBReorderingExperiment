; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//873/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noundef i32 @BIO_ADDR_rawmake(ptr nocapture writeonly %ap, i32 %family, i1 %cmp7.not) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne i32 %family, 1
  %or.cond = and i1 %cmp, %cmp7.not
  br i1 %or.cond, label %if.end10, label %common.ret

common.ret:                                       ; preds = %if.end10, %entry
  ret i32 0

if.end10:                                         ; preds = %entry
  store i16 0, ptr %ap, align 4
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
