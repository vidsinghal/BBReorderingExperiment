; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @nasm_catfile(ptr %call6) {
entry:
  %call1 = load volatile i64, ptr null, align 8
  %call2 = load volatile i1, ptr null, align 1
  br i1 %call2, label %if.end9, label %if.then8

if.then8:                                         ; preds = %entry
  store i8 0, ptr %call6, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %entry
  ret ptr null
}
