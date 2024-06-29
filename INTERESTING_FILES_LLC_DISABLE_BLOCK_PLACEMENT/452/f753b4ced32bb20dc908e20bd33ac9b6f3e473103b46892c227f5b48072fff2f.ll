; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @test_simde_vcltz_f32() {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp ult i64 %i.0, 8
  br i1 %cmp, label %for.body, label %cleanup14

for.body:                                         ; preds = %for.cond
  %call12 = load volatile i32, ptr null, align 4
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %for.inc, label %cleanup14

for.inc:                                          ; preds = %for.body
  %inc = add i64 %i.0, 1
  br label %for.cond

cleanup14:                                        ; preds = %for.body, %for.cond
  %retval.2 = phi i32 [ 0, %for.body ], [ 1, %for.cond ]
  ret i32 %retval.2
}
