; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @vtkexodusII_ex_put_loadbal_param_cc(i1 %cmp24.not) {
entry:
  br i1 %cmp24.not, label %if.end33, label %if.then25

if.then25:                                        ; preds = %entry
  %call27 = call i32 (...) @snprintf()
  unreachable

if.end33:                                         ; preds = %entry
  %call45 = load volatile i32, ptr null, align 4
  %call49 = call i32 (...) @snprintf()
  unreachable
}

declare i32 @snprintf(...)
