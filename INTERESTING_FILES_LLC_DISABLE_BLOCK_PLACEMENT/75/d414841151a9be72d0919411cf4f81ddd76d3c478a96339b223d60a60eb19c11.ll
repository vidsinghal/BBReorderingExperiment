; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @opengraphfile(i1 %cmp72, i1 %cmp79, i1 %cmp86, i1 %cmp93, i1 %cmp100) {
entry:
  %call711 = load volatile i32, ptr null, align 4
  br i1 %cmp72, label %common.ret, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %entry
  %call783 = load volatile i32, ptr null, align 4
  br i1 %cmp79, label %common.ret, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %lor.lhs.false74
  %call855 = load volatile i32, ptr null, align 4
  br i1 %cmp86, label %common.ret, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %lor.lhs.false81
  %call927 = load volatile i32, ptr null, align 4
  br i1 %cmp93, label %common.ret, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %lor.lhs.false88
  %call999 = load volatile i32, ptr null, align 4
  br i1 %cmp100, label %common.ret, label %lor.lhs.false102

common.ret:                                       ; preds = %lor.lhs.false102, %lor.lhs.false95, %lor.lhs.false88, %lor.lhs.false81, %lor.lhs.false74, %entry
  ret ptr null

lor.lhs.false102:                                 ; preds = %lor.lhs.false95
  %call106 = load volatile i32, ptr null, align 4
  br label %common.ret
}
