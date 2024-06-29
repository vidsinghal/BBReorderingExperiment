; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//328/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @gdcmjpeg12_jinit_d_coef_controller(ptr nocapture readonly %cinfo, i32 %need_full_buffer, ptr %0, i32 %ci.0, i1 %cmp, i32 %1, ptr nocapture writeonly %whole_image) local_unnamed_addr {
entry:
  br i1 %cmp, label %for.body.us.preheader, label %for.end

for.body.us.preheader:                            ; preds = %entry
  %2 = load ptr, ptr %cinfo, align 8
  %call513.us.peel = tail call i64 @gdcmjpeg12_jround_up()
  %call1217.us.peel = tail call ptr %2(ptr null, i32 0, i32 0, i32 %1, i32 0, i32 %ci.0)
  store ptr %0, ptr %whole_image, align 8
  %idxprom.us = zext i32 %need_full_buffer to i64
  %arrayidx.us = getelementptr [10 x ptr], ptr %whole_image, i64 0, i64 %idxprom.us
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.body.us
  %3 = load ptr, ptr %cinfo, align 8
  %call513.us = tail call i64 @gdcmjpeg12_jround_up()
  %call1217.us = tail call ptr %3(ptr null, i32 0, i32 0, i32 %1, i32 0, i32 %ci.0)
  store ptr %0, ptr %arrayidx.us, align 8
  br label %for.body.us, !llvm.loop !0

for.end:                                          ; preds = %entry
  ret void
}

declare i64 @gdcmjpeg12_jround_up() local_unnamed_addr

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
