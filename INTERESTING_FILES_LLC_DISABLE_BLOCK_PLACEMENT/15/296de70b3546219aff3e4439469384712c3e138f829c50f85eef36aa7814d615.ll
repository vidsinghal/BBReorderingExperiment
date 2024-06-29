; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @test_simde_mm512_packus_epi16(i1 %cmp, i1 %tobool.not) {
entry:
  br i1 %cmp, label %for.body, label %cleanup17

for.body:                                         ; preds = %for.body, %entry
  %call143 = load volatile i32, ptr null, align 4
  br i1 %tobool.not, label %cleanup17, label %for.body

cleanup17:                                        ; preds = %for.body, %entry
  ret i32 0
}
