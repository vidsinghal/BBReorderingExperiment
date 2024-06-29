; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @main(ptr %0, ptr %1) {
entry:
  %call121 = call ptr @N_VNew_Serial()
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %2, align 8
  store double 0.000000e+00, ptr %3, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = load ptr, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %1, align 8
  %call252 = load volatile ptr, ptr null, align 8
  %6 = load ptr, ptr %0, align 8
  %7 = load ptr, ptr %6, align 8
  store double 0.000000e+00, ptr %7, align 8
  %8 = load ptr, ptr %0, align 8
  %9 = load ptr, ptr %8, align 8
  store double 0.000000e+00, ptr %9, align 8
  ret i32 0
}

define void @ProcessArgs(ptr %sensi, i1 %cmp2) {
entry:
  br i1 %cmp2, label %if.then3, label %if.end43

if.then3:                                         ; preds = %entry
  store i32 0, ptr %sensi, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then3, %entry
  ret void
}

declare ptr @N_VNew_Serial()
