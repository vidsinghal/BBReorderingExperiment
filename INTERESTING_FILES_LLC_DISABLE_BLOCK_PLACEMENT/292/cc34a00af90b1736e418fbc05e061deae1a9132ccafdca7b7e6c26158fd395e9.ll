; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @NI_SplineFilter1D(ptr %buffer1, i1 %cmp, i1 %tobool.not) {
entry:
  br i1 %cmp, label %exit, label %if.end

if.end:                                           ; preds = %entry
  %call33 = load volatile i32, ptr null, align 4
  br i1 %tobool.not, label %if.end5, label %exit

if.end5:                                          ; preds = %if.end
  %call6 = load volatile i32, ptr null, align 4
  br label %exit

exit:                                             ; preds = %if.end5, %if.end, %entry
  %0 = phi ptr [ %buffer1, %if.end5 ], [ null, %if.end ], [ null, %entry ]
  store volatile i32 0, ptr %0, align 4
  ret i32 0
}
