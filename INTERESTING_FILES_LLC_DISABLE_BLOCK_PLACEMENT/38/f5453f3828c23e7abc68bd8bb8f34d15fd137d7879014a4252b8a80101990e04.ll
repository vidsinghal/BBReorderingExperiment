; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @RSA_meth_new(i1 %cmp.not, i1 %cmp5.not) {
entry:
  %call1 = call ptr @CRYPTO_zalloc()
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp5.not, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then
  ret ptr null

if.end:                                           ; preds = %if.then
  store volatile i32 0, ptr null, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  store volatile i32 0, ptr null, align 4
  unreachable
}

declare ptr @CRYPTO_zalloc()
