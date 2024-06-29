; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @chbgvx_(i32 %call18, i1 %tobool30.not) {
entry:
  %tobool27.not = icmp ne i32 %call18, 0
  %brmerge.not = select i1 %tobool27.not, i1 %tobool30.not, i1 false
  br i1 %brmerge.not, label %lor.lhs.false31, label %common.ret

common.ret:                                       ; preds = %lor.lhs.false31, %entry
  ret i32 0

lor.lhs.false31:                                  ; preds = %entry
  %call32 = load volatile i32, ptr null, align 4
  br label %common.ret
}
