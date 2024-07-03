; ModuleID = 'reduced.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/slahqr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @slahqr_(ptr %wantt, ptr %h__, i1 %cmp747, i1 %mul153) {
entry:
  br label %L20

L20:                                              ; preds = %if.then333, %entry
  br label %for.cond56

for.cond56:                                       ; preds = %for.cond746, %for.cond56, %L20
  %cmp331 = phi i1 [ true, %for.cond746 ], [ false, %L20 ], [ false, %for.cond56 ]
  %mul1531 = phi i1 [ false, %for.cond746 ], [ false, %L20 ], [ false, %for.cond56 ]
  br i1 %mul153, label %if.then156, label %for.cond56

if.then156:                                       ; preds = %for.cond56
  br i1 %cmp331, label %if.then333, label %for.cond746

if.then333:                                       ; preds = %if.then156
  %arrayidx1073 = getelementptr i8, ptr %h__, i64 4
  %0 = load float, ptr %arrayidx1073, align 4
  store float %0, ptr %wantt, align 4
  br label %L20

for.cond746:                                      ; preds = %for.body749, %if.then156
  br i1 %cmp747, label %for.body749, label %for.cond56

for.body749:                                      ; preds = %for.cond746
  %call773 = call i32 @slarfg_()
  br label %for.cond746
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

declare float @slamch_()

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #0

declare i32 @slarfg_()

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{}
