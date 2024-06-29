; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @FLA_Gemm_internal(i1 %cmp13, i1 %cmp23) {
entry:
  br i1 %cmp23, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %call3 = load volatile i32, ptr null, align 4
  br label %if.else

if.else:                                          ; preds = %land.lhs.true, %entry
  br i1 %cmp13, label %land.lhs.true14, label %if.else21

land.lhs.true14:                                  ; preds = %if.else
  %call15 = load volatile i32, ptr null, align 4
  br label %if.else21

if.else21:                                        ; preds = %land.lhs.true14, %if.else
  br i1 %cmp23, label %land.lhs.true24, label %if.end31

land.lhs.true24:                                  ; preds = %if.else21
  %call25 = load volatile i32, ptr null, align 4
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true24, %if.else21
  ret i32 0
}
