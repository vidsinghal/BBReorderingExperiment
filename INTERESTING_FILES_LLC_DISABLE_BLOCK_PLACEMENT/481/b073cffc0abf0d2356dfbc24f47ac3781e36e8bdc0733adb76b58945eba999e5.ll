; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @chbev_2stage_(ptr %jobz, ptr %uplo, ptr %n, ptr %kd, ptr %ab, ptr %work, ptr %info, i1 %tobool9.not, float %conv52) #0 {
entry:
  br i1 %tobool9.not, label %if.then44, label %if.else47

if.then44:                                        ; preds = %entry
  store float 0.000000e+00, ptr %work, align 4
  store float 0.000000e+00, ptr %info, align 4
  br label %if.end57

if.else47:                                        ; preds = %entry
  %call486 = call i32 @ilaenv2stage_()
  store float %conv52, ptr %jobz, align 4
  %i56 = getelementptr i8, ptr %work, i64 12
  store float 0.000000e+00, ptr %i56, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.else47, %if.then44
  ret i32 0
}

declare i32 @ilaenv2stage_()

attributes #0 = { "tune-cpu"="znver2" }
