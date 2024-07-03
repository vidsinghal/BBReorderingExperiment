; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//35/reordered.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/slatrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @slatrs_(ptr nocapture readonly %trans, i1 %cmp84, i32 %i__.1, i1 %tobool160.not) local_unnamed_addr {
entry:
  %r__1 = alloca float, align 4
  br i1 %cmp84, label %for.cond146.preheader, label %if.then85

for.cond163.preheader.us:                         ; preds = %for.cond163.preheader.lr.ph, %for.cond163.preheader.us
  %call151.us = tail call float @slamch_()
  br label %for.cond163.preheader.us

if.then85:                                        ; preds = %entry
  %r__1.0.r__1.0.r__1.0.r__1.0.r__1.0.r__1.0.r__1.0.r__1.0.call988 = load volatile float, ptr %r__1, align 4
  br label %common.ret

for.cond163.preheader:                            ; preds = %for.cond163.preheader.lr.ph, %for.cond163.preheader
  %call151 = tail call float @slamch_()
  br label %for.cond163.preheader

for.cond146.preheader:                            ; preds = %entry
  %call1515 = tail call float @slamch_()
  br i1 %tobool160.not, label %common.ret, label %for.cond163.preheader.lr.ph

for.cond163.preheader.lr.ph:                      ; preds = %for.cond146.preheader
  %cmp1641 = icmp slt i32 %i__.1, 0
  br i1 %cmp1641, label %for.cond163.preheader.us, label %for.cond163.preheader

common.ret:                                       ; preds = %for.cond146.preheader, %if.then85
  ret i32 0
}

declare float @slamch_() local_unnamed_addr
