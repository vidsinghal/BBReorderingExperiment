; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { ptr, ptr }

define i32 @main(i64 %i.0, i1 %cmp, ptr %test_suite_tests) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  ret i32 0

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr [69 x %struct.anon], ptr %test_suite_tests, i64 0, i64 %i.0
  %0 = load ptr, ptr %arrayidx, align 16
  %call2 = call i32 %0()
  %call5 = load volatile i32, ptr null, align 4
  br label %for.cond
}

define i32 @test_simde_mm_blend_pd(ptr %test_vec) {
entry:
  %call = call <2 x double> @simde_mm_set_pd()
  %call1 = load volatile <2 x double>, ptr null, align 16
  %call2 = load volatile <2 x double>, ptr null, align 16
  %call4 = load volatile <2 x double>, ptr null, align 16
  %call6 = load volatile <2 x double>, ptr null, align 16
  %call8 = load volatile <2 x double>, ptr null, align 16
  %call11 = load volatile <2 x double>, ptr null, align 16
  %call13 = load volatile <2 x double>, ptr null, align 16
  %call15 = load volatile <2 x double>, ptr null, align 16
  store <2 x double> zeroinitializer, ptr %test_vec, align 16
  %call18 = load volatile <2 x double>, ptr null, align 16
  %call20 = load volatile <2 x double>, ptr null, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %0 = phi <2 x double> [ zeroinitializer, %entry ], [ %.pre, %for.cond ]
  %call53 = call { double, double } @simde__m128d_to_private(<2 x double> %0)
  %.pre = load <2 x double>, ptr %test_vec, align 16
  br label %for.cond
}

declare <2 x double> @simde_mm_set_pd()

declare { double, double } @simde__m128d_to_private(<2 x double>)
