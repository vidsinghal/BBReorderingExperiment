; ModuleID = 'reduced.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/ztgsja.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.3 = external constant [2 x i8]

define i32 @ztgsja_(ptr %jobu, ptr %jobv, ptr %jobq, ptr %m, ptr %p, ptr %n, ptr %k, ptr %u, i1 %cmp136.not, ptr %i__3, ptr %arrayidx327, ptr %i331, i32 %0, i1 %cmp360.not, ptr %1, i64 %idxprom433.pre-phi, i1 %tobool36.not, ptr %2) {
entry:
  br label %for.cond131

for.cond131:                                      ; preds = %for.cond135, %entry
  br label %for.cond135

for.cond135:                                      ; preds = %if.end455, %for.cond131
  br i1 %cmp136.not, label %for.cond131, label %for.body137

for.body137:                                      ; preds = %for.cond135
  store volatile i32 0, ptr null, align 4
  br i1 %cmp360.not, label %if.end381, label %if.then361

if.then361:                                       ; preds = %for.body137
  store i32 0, ptr %jobu, align 4
  br label %if.end381

if.end381:                                        ; preds = %if.then361, %for.body137
  br i1 %tobool36.not, label %if.end455, label %land.lhs.true440

land.lhs.true440:                                 ; preds = %if.end381
  %call454 = load volatile i32, ptr null, align 4
  br label %if.end455

if.end455:                                        ; preds = %land.lhs.true440, %if.end381
  %arrayidx465 = getelementptr i8, ptr %2, i64 16
  %call466 = load volatile i32, ptr %arrayidx465, align 4
  br label %for.cond135
}

declare i32 @zrot_()
