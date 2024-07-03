; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//89/reordered.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/csytf2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @csytf2_(ptr nocapture writeonly %uplo, ptr nocapture readnone %n, ptr nocapture readnone %lda, ptr nocapture readnone %ipiv, i32 %0, ptr nocapture readnone %add.ptr, i32 %1, i1 %cmp703, i1 %cmp751) local_unnamed_addr #0 {
entry:
  %add856 = or i32 %0, 1
  br i1 %cmp703, label %entry.split.us, label %entry.split

L40.us:                                           ; preds = %entry.split.us, %L40.us
  store i32 0, ptr %uplo, align 4
  %call773.us = tail call i32 @icamax_()
  %call828.us = load volatile double, ptr null, align 4294967296
  store i32 %add856, ptr %uplo, align 4
  br label %L40.us

entry.split.us:                                   ; preds = %entry
  br i1 %cmp751, label %entry.split.us.split.us, label %L40.us

entry.split.us.split.us:                          ; preds = %entry.split.us
  store i32 0, ptr %uplo, align 4
  br label %L40.us.us

L40:                                              ; preds = %entry.split, %L40
  %call7731 = tail call i32 @icamax_()
  store i32 %add856, ptr %uplo, align 4
  br label %L40

L40.us.us:                                        ; preds = %L40.us.us, %entry.split.us.split.us
  br label %L40.us.us

entry.split:                                      ; preds = %entry
  br i1 %cmp751, label %L40.us2, label %L40

L40.us2:                                          ; preds = %entry.split, %L40.us2
  br label %L40.us2
}

declare i32 @icamax_() local_unnamed_addr

attributes #0 = { noreturn }
