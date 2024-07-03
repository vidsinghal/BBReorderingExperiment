; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i32 @xmlSaveSetAttrEscape__internal_alias()

define void @xmlBufAttrSerializeTxtContent(ptr %0, i32 %conv147) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %call128 = call i32 @xmlBufAdd()
  %call251 = call ptr @xmlSerializeHexCharRef(ptr %0, i32 %conv147)
  br label %while.cond
}

declare i32 @xmlBufAdd()

define ptr @xmlSerializeHexCharRef(ptr %out, i32 %val) {
entry:
  %incdec.ptr = getelementptr i8, ptr %out, i64 1
  switch i32 %val, label %sw.bb [
    i32 4, label %sw.bb32
    i32 1, label %sw.bb26
    i32 5, label %sw.bb34
    i32 0, label %sw.bb30
  ]

sw.bb:                                            ; preds = %entry
  store i8 0, ptr %incdec.ptr, align 1
  ret ptr null

sw.bb26:                                          ; preds = %entry
  store i8 49, ptr %incdec.ptr, align 1
  ret ptr null

sw.bb30:                                          ; preds = %entry
  store i8 1, ptr %incdec.ptr, align 1
  ret ptr null

sw.bb32:                                          ; preds = %entry
  store i8 1, ptr %incdec.ptr, align 1
  ret ptr null

sw.bb34:                                          ; preds = %entry
  store i8 1, ptr %incdec.ptr, align 1
  ret ptr null
}
