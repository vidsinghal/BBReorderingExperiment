; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @_pcre_valid_utf(ptr %string, i1 %cmp9) {
entry:
  br label %for.cond4

for.cond4:                                        ; preds = %if.end12, %for.cond4, %entry
  br i1 %cmp9, label %for.cond4, label %if.end12

if.end12:                                         ; preds = %for.cond4
  store i32 0, ptr %string, align 4
  br label %for.cond4
}
