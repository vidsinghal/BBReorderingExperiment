; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i64 @hypre_multmod(i64 %a) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %b.addr.0 = phi i64 [ %a, %entry ], [ %shr, %while.body ]
  %res.0 = phi i64 [ 0, %entry ], [ %and, %while.body ]
  %tobool.not = icmp eq i64 %b.addr.0, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %and = and i64 %b.addr.0, 1
  %shr = ashr i64 %b.addr.0, 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i64 %res.0
}
