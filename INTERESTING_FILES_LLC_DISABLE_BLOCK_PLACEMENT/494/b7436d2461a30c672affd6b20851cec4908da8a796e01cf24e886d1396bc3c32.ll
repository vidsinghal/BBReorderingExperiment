; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @vtklibharu_HPDF_Image_LoadPngImage(i1 %tobool7.not) {
entry:
  %call61 = call ptr @vtklibharu_HPDF_DictStream_New()
  br i1 %tobool7.not, label %common.ret, label %if.end9

common.ret:                                       ; preds = %if.end9, %entry
  ret ptr null

if.end9:                                          ; preds = %entry
  %call19 = call i64 @LoadPngData()
  br label %common.ret
}

declare ptr @vtklibharu_HPDF_DictStream_New()

define i64 @LoadPngData() {
entry:
  %width11 = alloca [0 x [0 x i32]], i32 0, align 4
  %call = load volatile ptr, ptr null, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

common.ret:                                       ; preds = %if.end, %if.then
  ret i64 0

if.then:                                          ; preds = %entry
  %call2 = load volatile i64, ptr null, align 8
  br label %common.ret

if.end:                                           ; preds = %entry
  %call13 = load volatile i32, ptr %width11, align 4
  br label %common.ret
}
