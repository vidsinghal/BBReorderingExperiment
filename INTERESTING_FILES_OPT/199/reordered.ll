; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//199/reordered.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/slahqr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @slahqr_(ptr nocapture writeonly %wantt, ptr nocapture readonly %h__, i1 %cmp747, i1 %mul153) local_unnamed_addr #0 {
entry:
  br i1 %mul153, label %L20.split.us.lr.ph, label %for.cond56

for.cond56:                                       ; preds = %entry, %for.cond56
  br label %for.cond56

for.body749.us:                                   ; preds = %L20.split.us.lr.ph, %for.body749.us
  %call773.us = tail call i32 @slarfg_()
  br label %for.body749.us

L20.split.us.lr.ph:                               ; preds = %entry
  br i1 %cmp747, label %for.body749.us, label %L20.split.us.us3.preheader

L20.split.us.us3.preheader:                       ; preds = %L20.split.us.lr.ph
  %arrayidx1073 = getelementptr i8, ptr %h__, i64 4
  %.pre = load float, ptr %arrayidx1073, align 4
  store float %.pre, ptr %wantt, align 4
  br label %L20.split.us.us3

L20.split.us.us3:                                 ; preds = %L20.split.us.us3.preheader, %L20.split.us.us3
  br label %L20.split.us.us3
}

declare i32 @slarfg_() local_unnamed_addr

attributes #0 = { noreturn }

!llvm.module.flags = !{}
