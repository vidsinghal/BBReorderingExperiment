; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @chbgvx_(i32 %call21, i1 %tobool22.not) {
entry:
  %tobool30.not = icmp eq i32 %call21, 0
  %or.cond = select i1 %tobool22.not, i1 %tobool30.not, i1 false
  br i1 %or.cond, label %lor.lhs.false31, label %if.end99

lor.lhs.false31:                                  ; preds = %entry
  %call32 = load volatile i32, ptr null, align 4
  br label %if.end99

if.end99:                                         ; preds = %lor.lhs.false31, %entry
  ret i32 0
}