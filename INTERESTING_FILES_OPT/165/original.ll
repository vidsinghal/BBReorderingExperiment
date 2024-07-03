; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//165/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nounwind
define void @keccak_squeezeblocks(i32 %r, i64 %idx.ext2, i1 %cmp.not) local_unnamed_addr #0 {
entry:
  br i1 %cmp.not, label %while.end, label %for.cond.preheader.lr.ph

for.cond.preheader.lr.ph:                         ; preds = %entry
  %cmp11.not = icmp eq i32 %r, 0
  %add.ptr3 = getelementptr i8, ptr null, i64 %idx.ext2
  br i1 %cmp11.not, label %for.cond.preheader, label %for.cond.preheader.us

for.cond.preheader.us:                            ; preds = %for.body.us, %for.cond.preheader.lr.ph
  %out.addr.03.us = phi ptr [ null, %for.cond.preheader.lr.ph ], [ %add.ptr3, %for.body.us ]
  br label %for.body.us

for.body.us:                                      ; preds = %for.cond.preheader.us, %for.body.us
  %i.02.us = phi i32 [ 0, %for.cond.preheader.us ], [ %inc.us, %for.body.us ]
  store volatile i64 0, ptr %out.addr.03.us, align 8
  %inc.us = add nuw i32 %i.02.us, 1
  %exitcond.not = icmp eq i32 %inc.us, %r
  br i1 %exitcond.not, label %for.cond.preheader.us, label %for.body.us

for.cond.preheader:                               ; preds = %for.cond.preheader.lr.ph, %for.cond.preheader
  br label %for.cond.preheader

while.end:                                        ; preds = %entry
  ret void
}

attributes #0 = { nofree norecurse nounwind }
