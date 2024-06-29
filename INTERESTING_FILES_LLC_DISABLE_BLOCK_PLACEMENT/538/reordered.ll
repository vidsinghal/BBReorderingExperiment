; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//538/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @FLA_LU_piv_opd_var4(i32 %m_A, i32 %n_A, ptr nocapture writeonly %buff_A, i32 %rs_A, i32 %cs_A, ptr nocapture readnone %0, ptr nocapture readonly %1) local_unnamed_addr #0 {
entry:
  %2 = load ptr, ptr %1, align 8
  %cmp251 = icmp sgt i32 %m_A, 0
  br i1 %cmp251, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret i32 0

for.body:                                         ; preds = %entry, %for.body
  %i.02 = phi i32 [ %add, %for.body ], [ 0, %entry ]
  %add = add nuw nsw i32 %i.02, 1
  %sub74 = sub i32 %n_A, %i.02
  %sub75 = or i32 %sub74, 1
  tail call void @bl1_ddots(i32 0)
  store i32 %i.02, ptr %2, align 4
  store volatile i32 0, ptr null, align 4294967296
  store i32 %sub75, ptr %buff_A, align 4
  %exitcond.not = icmp eq i32 %add, %m_A
  br i1 %exitcond.not, label %for.end, label %for.body
}

declare void @bl1_ddots(i32) local_unnamed_addr

attributes #0 = { "target-cpu"="x86-64" }
