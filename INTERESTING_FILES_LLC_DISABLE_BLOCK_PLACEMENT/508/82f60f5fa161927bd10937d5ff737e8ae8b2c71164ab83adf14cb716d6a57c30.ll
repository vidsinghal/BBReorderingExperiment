; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @init_class(ptr %c, ptr %0) {
entry:
  store ptr null, ptr %0, align 8
  %1 = load ptr, ptr %c, align 8
  %next_offset3 = getelementptr i8, ptr %c, i64 72
  store ptr null, ptr %next_offset3, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = load ptr, ptr %2, align 8
  %byte_count5 = getelementptr i8, ptr %c, i64 96
  store ptr %3, ptr %byte_count5, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = load ptr, ptr %4, align 8
  %next47 = getelementptr i8, ptr %c, i64 272
  store ptr %5, ptr %next47, align 8
  %6 = load ptr, ptr %0, align 8
  %7 = load ptr, ptr %6, align 8
  %compare49 = getelementptr i8, ptr %c, i64 280
  store ptr %7, ptr %compare49, align 8
  %8 = load ptr, ptr %0, align 8
  %9 = load ptr, ptr %8, align 8
  %unpack_double_element51 = getelementptr i8, ptr %c, i64 288
  store ptr %9, ptr %unpack_double_element51, align 8
  %10 = load ptr, ptr %0, align 8
  %11 = load ptr, ptr %10, align 8
  %make_clone57 = getelementptr i8, ptr %c, i64 312
  store ptr %11, ptr %make_clone57, align 8
  ret void
}

define i32 @unpack_string(i1 %cmp) {
entry:
  br i1 %cmp, label %common.ret, label %if.end

common.ret:                                       ; preds = %if.end, %entry
  ret i32 0

if.end:                                           ; preds = %entry
  %call2 = load volatile ptr, ptr null, align 8
  br label %common.ret
}
