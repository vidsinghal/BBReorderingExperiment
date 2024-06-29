; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//285/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { ptr, ptr }

define noundef i32 @main(i64 %i.0, i1 %cmp, ptr nocapture readonly %test_suite_tests) local_unnamed_addr {
entry:
  br i1 %cmp, label %for.body.lr.ph, label %for.cond.cleanup

for.body.us:                                      ; preds = %for.body.us, %for.body.lr.ph
  %0 = load ptr, ptr %arrayidx, align 16
  %call2.us = tail call i32 %0()
  %call5.us = load volatile i32, ptr null, align 4294967296
  br label %for.body.us

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx = getelementptr [69 x %struct.anon], ptr %test_suite_tests, i64 0, i64 %i.0
  br label %for.body.us

for.cond.cleanup:                                 ; preds = %entry
  ret i32 0
}

; Function Attrs: noreturn
define noundef i32 @test_simde_mm_blend_pd(ptr nocapture %test_vec) local_unnamed_addr #0 {
entry:
  %call = tail call <2 x double> @simde_mm_set_pd()
  %call1 = load volatile <2 x double>, ptr null, align 4294967296
  %call2 = load volatile <2 x double>, ptr null, align 4294967296
  %call4 = load volatile <2 x double>, ptr null, align 4294967296
  %call6 = load volatile <2 x double>, ptr null, align 4294967296
  %call8 = load volatile <2 x double>, ptr null, align 4294967296
  %call11 = load volatile <2 x double>, ptr null, align 4294967296
  %call13 = load volatile <2 x double>, ptr null, align 4294967296
  %call15 = load volatile <2 x double>, ptr null, align 4294967296
  store <2 x double> zeroinitializer, ptr %test_vec, align 16
  %call18 = load volatile <2 x double>, ptr null, align 4294967296
  %call20 = load volatile <2 x double>, ptr null, align 4294967296
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %0 = phi <2 x double> [ zeroinitializer, %entry ], [ %.pre, %for.cond ]
  %call53 = tail call { double, double } @simde__m128d_to_private(<2 x double> %0)
  %.pre = load <2 x double>, ptr %test_vec, align 16
  br label %for.cond
}

declare <2 x double> @simde_mm_set_pd() local_unnamed_addr

declare { double, double } @simde__m128d_to_private(<2 x double>) local_unnamed_addr

attributes #0 = { noreturn }
