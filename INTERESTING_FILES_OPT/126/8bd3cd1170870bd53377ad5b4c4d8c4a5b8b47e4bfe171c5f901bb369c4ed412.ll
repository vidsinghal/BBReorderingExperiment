; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i32 @xmlGetUTF8Char__internal_alias()

define i32 @xmlCharEncOutFunc__internal_alias(ptr %handler, ptr %in, i1 %cmp20, i1 %cmp43) {
entry:
  br label %retry

retry:                                            ; preds = %if.end48, %if.end28, %entry
  %output.0 = phi i32 [ 0, %entry ], [ %add51, %if.end48 ], [ %output.0, %if.end28 ]
  br i1 %cmp20, label %if.then21, label %if.end28

if.then21:                                        ; preds = %retry
  %call23 = load volatile i32, ptr null, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then21, %retry
  br i1 %cmp43, label %retry, label %if.end48

if.end48:                                         ; preds = %if.end28
  %add51 = add i32 %output.0, 1
  %use54 = getelementptr i8, ptr %in, i64 8
  %0 = load i32, ptr %use54, align 8
  store i32 %0, ptr %handler, align 4
  %call56 = call i32 @xmlGetUTF8Char__internal_alias()
  br label %retry
}
