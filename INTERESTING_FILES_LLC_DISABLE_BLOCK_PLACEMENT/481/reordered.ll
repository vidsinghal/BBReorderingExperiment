; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//481/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @chbev_2stage_(ptr nocapture writeonly %jobz, ptr nocapture readnone %uplo, ptr nocapture readnone %n, ptr nocapture readnone %kd, ptr nocapture readnone %ab, ptr nocapture writeonly %work, ptr nocapture writeonly %info, i1 %tobool9.not, float %conv52) local_unnamed_addr #0 {
entry:
  br i1 %tobool9.not, label %if.then44, label %if.else47

if.else47:                                        ; preds = %entry
  %call486 = tail call i32 @ilaenv2stage_()
  store float %conv52, ptr %jobz, align 4
  %i56 = getelementptr i8, ptr %work, i64 12
  br label %if.end57

if.then44:                                        ; preds = %entry
  store float 0.000000e+00, ptr %work, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.else47, %if.then44
  %i56.sink = phi ptr [ %i56, %if.else47 ], [ %info, %if.then44 ]
  store float 0.000000e+00, ptr %i56.sink, align 4
  ret i32 0
}

declare i32 @ilaenv2stage_() local_unnamed_addr

attributes #0 = { "tune-cpu"="znver2" }
