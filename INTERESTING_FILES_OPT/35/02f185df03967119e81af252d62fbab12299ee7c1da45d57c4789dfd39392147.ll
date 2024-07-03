; ModuleID = 'reduced.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/slatrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @slatrs_(ptr %trans, i1 %cmp84, i32 %i__.1, i1 %tobool160.not) {
entry:
  %r__1 = alloca float, align 4
  br i1 %cmp84, label %for.cond146, label %if.then85

common.ret:                                       ; preds = %for.cond146, %if.then85
  ret i32 0

if.then85:                                        ; preds = %entry
  %r__1.0.r__1.0.r__1.0.r__1.0.call988 = load volatile float, ptr %r__1, align 4
  br label %common.ret

for.cond146:                                      ; preds = %for.cond163, %entry
  %call151 = call float @slamch_()
  br i1 %tobool160.not, label %common.ret, label %for.cond163

for.cond163:                                      ; preds = %for.body165, %for.cond146
  %i__.13 = phi i32 [ %inc179, %for.body165 ], [ %i__.1, %for.cond146 ]
  %cmp164 = icmp slt i32 %i__.13, 0
  br i1 %cmp164, label %for.body165, label %for.cond146

for.body165:                                      ; preds = %for.cond163
  %0 = load float, ptr %trans, align 4
  store float %0, ptr %r__1, align 4
  %inc179 = add i32 %i__.13, 1
  br label %for.cond163
}

declare float @slamch_()
