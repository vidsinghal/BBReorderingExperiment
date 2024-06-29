; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @test_simde_vaddw_s8(i64 %inc) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.01 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %cmp = icmp eq i64 %i.01, 0
  br i1 %cmp, label %for.body, label %cleanup15

for.body:                                         ; preds = %for.cond
  %call12 = load volatile i32, ptr null, align 4
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %for.cond, label %cleanup15

cleanup15:                                        ; preds = %for.body, %for.cond
  ret i32 0
}
