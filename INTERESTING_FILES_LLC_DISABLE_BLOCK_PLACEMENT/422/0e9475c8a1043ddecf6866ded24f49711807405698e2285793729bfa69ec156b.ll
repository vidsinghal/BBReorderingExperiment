; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @umfpack_di_report_matrix(i32 %n_row, i1 %cmp.not) {
entry:
  %cmp16 = icmp sgt i32 %n_row, 0
  %or.cond.not = or i1 %cmp16, %cmp.not
  br i1 %or.cond.not, label %common.ret, label %if.then20

common.ret:                                       ; preds = %if.then20, %entry
  ret i32 0

if.then20:                                        ; preds = %entry
  %call24 = load volatile i32, ptr null, align 4
  br label %common.ret
}
