; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @slatrs_(i1 %tobool.not, i1 %tobool6.not, i1 %tobool9.not, i1 %not.tobool6.not) {
entry:
  br i1 %tobool.not, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %call4 = load volatile i32, ptr null, align 4
  br label %if.else

if.else:                                          ; preds = %land.lhs.true, %entry
  %not.tobool6.not1 = xor i1 %tobool.not, false
  %0 = select i1 %tobool9.not, i1 %tobool6.not, i1 false
  br i1 %0, label %land.lhs.true10, label %if.else14

land.lhs.true10:                                  ; preds = %if.else
  %call11 = load volatile i32, ptr null, align 4
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true10, %if.else
  br i1 %tobool.not, label %land.lhs.true16, label %if.else20

land.lhs.true16:                                  ; preds = %if.else14
  %call17 = load volatile i32, ptr null, align 4
  br label %if.else20

if.else20:                                        ; preds = %land.lhs.true16, %if.else14
  ret i32 0
}
