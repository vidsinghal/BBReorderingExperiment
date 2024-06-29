; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare ptr @vtklibproj_pj_calloc()

define internal ptr @setup(ptr %P) {
entry:
  %opaque = getelementptr i8, ptr %P, i64 464
  %0 = load ptr, ptr %opaque, align 8
  %1 = load double, ptr inttoptr (i64 160 to ptr), align 8
  %cmp2 = fcmp uge double %1, 0.000000e+00
  %cond = zext i1 %cmp2 to i32
  store i32 %cond, ptr %P, align 8
  %2 = load double, ptr %0, align 8
  store double %2, ptr %opaque, align 8
  %3 = load double, ptr %P, align 8
  %tobool = fcmp une double %3, 0.000000e+00
  br i1 %tobool, label %if.then7, label %common.ret

common.ret:                                       ; preds = %if.then7, %entry
  ret ptr null

if.then7:                                         ; preds = %entry
  store ptr null, ptr %P, align 8
  br label %common.ret
}

define ptr @vtklibproj_pj_projection_specific_setup_ups(ptr %P, ptr %0) {
entry:
  %call = call ptr @vtklibproj_pj_calloc()
  store double 0.000000e+00, ptr %0, align 8
  %k0 = getelementptr i8, ptr %P, i64 184
  store double 0.000000e+00, ptr %k0, align 8
  store double 0.000000e+00, ptr %P, align 8
  %call7 = call ptr @setup(ptr %P)
  ret ptr null
}
