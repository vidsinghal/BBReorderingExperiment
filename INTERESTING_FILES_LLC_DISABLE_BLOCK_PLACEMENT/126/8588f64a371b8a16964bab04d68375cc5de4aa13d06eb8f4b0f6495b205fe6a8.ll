; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @xmlDetectCharEncoding__internal_alias(ptr %in, i1 %cmp1, i1 %cmp59) {
entry:
  br i1 %cmp1, label %if.end20, label %common.ret

if.end20:                                         ; preds = %entry
  %0 = load i8, ptr %in, align 1
  %cmp23 = icmp eq i8 %0, 0
  br i1 %cmp23, label %common.ret, label %if.end41

common.ret:                                       ; preds = %if.end41, %if.end20, %entry
  ret i32 0

if.end41:                                         ; preds = %if.end20
  call void @llvm.assume(i1 %cmp59)
  br label %common.ret
}

define ptr @xmlGetEncodingAlias__internal_alias() {
entry:
  ret ptr null
}

define ptr @xmlGetCharEncodingName__internal_alias() {
entry:
  ret ptr null
}

define ptr @xmlNewCharEncodingHandler__internal_alias() {
entry:
  ret ptr null
}

define ptr @xmlGetCharEncodingHandler__internal_alias() {
entry:
  ret ptr null
}

define ptr @xmlFindCharEncodingHandler__internal_alias() {
entry:
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
