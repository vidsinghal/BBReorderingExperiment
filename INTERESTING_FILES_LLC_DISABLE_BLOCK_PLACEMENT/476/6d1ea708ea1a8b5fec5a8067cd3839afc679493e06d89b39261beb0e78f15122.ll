; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i64 @vtklibharu_HPDF_RaiseError(i64)

define i64 @vtklibharu_HPDF_Page_SetDash(i32 %num_param, float %phase, i1 %tobool) {
entry:
  %cmp9 = icmp ne i32 %num_param, 0
  %or.cond = and i1 %cmp9, %tobool
  br i1 %or.cond, label %if.then11, label %common.ret

common.ret:                                       ; preds = %if.then11, %entry
  ret i64 0

if.then11:                                        ; preds = %entry
  %conv13 = fptoui float %phase to i64
  %call14 = call i64 @vtklibharu_HPDF_RaiseError(i64 %conv13)
  br label %common.ret
}
