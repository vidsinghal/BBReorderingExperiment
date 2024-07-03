; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//400/reordered.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/ztgsja.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nounwind
define noundef i32 @ztgsja_(ptr nocapture writeonly %jobu, ptr nocapture readnone %jobv, ptr nocapture readnone %jobq, ptr nocapture readnone %m, ptr nocapture readnone %p, ptr nocapture readnone %n, ptr nocapture readnone %k, ptr nocapture readnone %u, i1 %cmp136.not, ptr nocapture readnone %i__3, ptr nocapture readnone %arrayidx327, ptr nocapture readnone %i331, i32 %0, i1 %cmp360.not, ptr nocapture readnone %1, i64 %idxprom433.pre-phi, i1 %tobool36.not, ptr %2) local_unnamed_addr #0 {
entry:
  %tobool36.not.fr9 = freeze i1 %tobool36.not
  %arrayidx465 = getelementptr i8, ptr %2, i64 16
  br i1 %cmp136.not, label %for.cond131.us, label %entry.split

entry.split:                                      ; preds = %entry
  %cmp360.not.fr = freeze i1 %cmp360.not
  br i1 %cmp360.not.fr, label %entry.split.split.us, label %for.body137.lr.ph.split.split

entry.split.split.us:                             ; preds = %entry.split
  br i1 %tobool36.not.fr9, label %for.body137.us.us, label %for.body137.us

for.body137.us6:                                  ; preds = %for.body137.lr.ph.split.split, %for.body137.us6
  store volatile i32 0, ptr null, align 4294967296
  store i32 0, ptr %jobu, align 4
  %call466.us8 = load volatile i32, ptr %arrayidx465, align 4
  br label %for.body137.us6

for.cond131.us:                                   ; preds = %entry, %for.cond131.us
  br label %for.cond131.us

for.body137.lr.ph.split.split:                    ; preds = %entry.split
  br i1 %tobool36.not.fr9, label %for.body137.us6, label %for.body137

for.body137:                                      ; preds = %for.body137.lr.ph.split.split, %for.body137
  store volatile i32 0, ptr null, align 4294967296
  store i32 0, ptr %jobu, align 4
  %call454 = load volatile i32, ptr null, align 4294967296
  %call466 = load volatile i32, ptr %arrayidx465, align 4
  br label %for.body137

for.body137.us.us:                                ; preds = %entry.split.split.us, %for.body137.us.us
  store volatile i32 0, ptr null, align 4294967296
  %call466.us.us = load volatile i32, ptr %arrayidx465, align 4
  br label %for.body137.us.us

for.body137.us:                                   ; preds = %entry.split.split.us, %for.body137.us
  store volatile i32 0, ptr null, align 4294967296
  %call454.us = load volatile i32, ptr null, align 4294967296
  %call466.us = load volatile i32, ptr %arrayidx465, align 4
  br label %for.body137.us
}

attributes #0 = { nofree norecurse noreturn nounwind }
