; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @generate_fragment(ptr %shredder, i64 %call2, i1 %cmp.not, i1 %cmp47) {
entry:
  br i1 %cmp.not, label %common.ret, label %if.then3

if.then3:                                         ; preds = %entry
  br i1 %cmp47, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.then3
  store i64 0, ptr %shredder, align 8
  %pos50 = getelementptr i8, ptr %shredder, i64 40
  store i64 0, ptr %pos50, align 8
  br label %common.ret

if.else:                                          ; preds = %if.then3
  %sub54 = sub i64 0, %call2
  %pos55 = getelementptr i8, ptr %shredder, i64 40
  store i64 %sub54, ptr %pos55, align 8
  br label %common.ret

common.ret:                                       ; preds = %if.else, %if.then48, %entry
  ret ptr null
}
