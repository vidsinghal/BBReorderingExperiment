; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @main(ptr %retval11) {
entry:
  %call2 = call i32 @check_retval(ptr %retval11)
  ret i32 0
}

define internal i32 @check_retval(ptr %returnvalue) {
entry:
  %0 = load i32, ptr %returnvalue, align 4
  %cmp5 = icmp slt i32 %0, 0
  br i1 %cmp5, label %if.then6, label %common.ret

common.ret:                                       ; preds = %if.then6, %entry
  ret i32 0

if.then6:                                         ; preds = %entry
  %call7 = load volatile i32, ptr null, align 4
  br label %common.ret
}

define i32 @ressc(ptr %user_data, ptr %0) {
entry:
  %call61 = call ptr @N_VGetArrayPointer()
  %1 = load double, ptr %0, align 8
  %2 = load double, ptr %user_data, align 8
  store double 0.000000e+00, ptr %0, align 8
  %3 = load double, ptr %user_data, align 8
  %sub26 = fsub double %3, %1
  %add = fadd double %sub26, %2
  %arrayidx27 = getelementptr i8, ptr %call61, i64 8
  store double %add, ptr %arrayidx27, align 8
  store double 0.000000e+00, ptr %call61, align 8
  store double 0.000000e+00, ptr %user_data, align 8
  ret i32 0
}

declare ptr @N_VGetArrayPointer()
