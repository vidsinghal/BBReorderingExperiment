; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//396/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid willreturn memory(write, inaccessiblemem: none)
define void @gssapi_destroy_signverify_ctx(ptr readnone %dctx, i1 %cmp1.not) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp ne ptr %dctx, null
  %brmerge = select i1 %cmp.not, i1 %cmp1.not, i1 false
  br i1 %brmerge, label %common.ret, label %if.then2

if.then2:                                         ; preds = %entry
  store i32 0, ptr null, align 4294967296
  br label %common.ret

common.ret:                                       ; preds = %if.then2, %entry
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid willreturn memory(write, inaccessiblemem: none) }
