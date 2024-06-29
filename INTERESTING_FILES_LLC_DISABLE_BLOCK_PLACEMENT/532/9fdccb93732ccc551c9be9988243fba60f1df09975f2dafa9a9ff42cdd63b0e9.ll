; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @NI_Correlate1D(ptr %ibuffer, ptr %_scipy_ndimage_ARRAY_API, i64 %call2) {
entry:
  store ptr null, ptr %ibuffer, align 8
  %0 = load ptr, ptr %_scipy_ndimage_ARRAY_API, align 8
  %1 = load ptr, ptr %0, align 8
  %call24 = call i64 %1(ptr null, i32 0)
  %and = and i64 %call2, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end30, label %common.ret

common.ret:                                       ; preds = %if.end30, %entry
  ret i32 0

if.end30:                                         ; preds = %entry
  %call33 = load volatile i32, ptr null, align 4
  %call43 = call i32 @NI_InitLineBuffer(ptr null, i32 0, i64 0, i64 0, ptr null, i32 0, ptr %ibuffer)
  %call47 = call i32 @NI_InitLineBuffer(ptr null, i32 0, i64 0, i64 0, ptr null, i32 0, ptr %ibuffer)
  br label %common.ret
}

declare i32 @NI_InitLineBuffer(ptr, i32, i64, i64, ptr, i32, ptr)
