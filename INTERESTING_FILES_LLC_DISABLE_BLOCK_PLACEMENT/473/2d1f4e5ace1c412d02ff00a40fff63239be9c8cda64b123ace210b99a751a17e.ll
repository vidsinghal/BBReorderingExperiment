; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i64 @umfpack_zl_get_lunz(ptr %unz, ptr %n_row, i1 %tobool4) {
entry:
  %tobool2 = icmp ne ptr %unz, null
  %or.cond = and i1 %tobool2, %tobool4
  br i1 %or.cond, label %lor.lhs.false5, label %common.ret

common.ret:                                       ; preds = %lor.lhs.false5, %entry
  ret i64 0

lor.lhs.false5:                                   ; preds = %entry
  store i64 0, ptr %n_row, align 8
  store i64 0, ptr %unz, align 8
  br label %common.ret
}
