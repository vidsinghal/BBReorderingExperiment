; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @keccak_absorb(i64 %conv) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %mlen.addr.0 = phi i64 [ 1, %entry ], [ 0, %while.body ]
  %cmp1.not = icmp ult i64 %mlen.addr.0, %conv
  br i1 %cmp1.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  store volatile i32 0, ptr null, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}
