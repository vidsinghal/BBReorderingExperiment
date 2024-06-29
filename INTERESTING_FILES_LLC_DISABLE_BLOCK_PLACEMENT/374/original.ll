; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//374/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(write, inaccessiblemem: none)
define void @writeny(ptr nocapture writeonly %sp.0) local_unnamed_addr #0 {
entry:
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.backedge, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc, %for.cond2.backedge ]
  %sp.01 = phi ptr [ null, %entry ], [ %sp.01.be, %for.cond2.backedge ]
  %inc = add i32 %k.0, 1
  %cmp6 = icmp eq i32 %k.0, 0
  br i1 %cmp6, label %if.then, label %for.cond2.backedge

for.cond2.backedge:                               ; preds = %for.cond2, %if.then
  %sp.01.be = phi ptr [ %sp.0, %for.cond2 ], [ null, %if.then ]
  br label %for.cond2

if.then:                                          ; preds = %for.cond2
  store i8 0, ptr %sp.01, align 1
  br label %for.cond2.backedge
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(write, inaccessiblemem: none) }
