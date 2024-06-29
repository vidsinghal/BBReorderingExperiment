; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @lookup_translation(ptr %tmpl, i1 %cmp.not.old, i1 %cmp8.not, i1 %cond) {
entry:
  br i1 %cmp.not.old, label %cleanup109, label %for.body

for.body:                                         ; preds = %cleanup107, %if.end, %entry
  br i1 %cond, label %cleanup107, label %if.end

if.end:                                           ; preds = %for.body
  br i1 %cmp8.not, label %if.end106, label %for.body

if.end106:                                        ; preds = %if.end
  store i32 0, ptr %tmpl, align 4
  br label %cleanup107

cleanup107:                                       ; preds = %if.end106, %for.body
  br i1 %cmp8.not, label %cleanup109, label %for.body

cleanup109:                                       ; preds = %cleanup107, %entry
  ret ptr null
}
