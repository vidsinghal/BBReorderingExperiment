; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @init_class(ptr %c, ptr %0, ptr %1) {
entry:
  %2 = load ptr, ptr %0, align 8
  %next_offset1 = getelementptr i8, ptr %c, i64 72
  store ptr %2, ptr %next_offset1, align 8
  %3 = load ptr, ptr %c, align 8
  %4 = load ptr, ptr %1, align 8
  %string_length3 = getelementptr i8, ptr %c, i64 80
  store ptr %4, ptr %string_length3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %5, align 8
  %byte_count5 = getelementptr i8, ptr %c, i64 96
  store ptr %6, ptr %byte_count5, align 8
  ret void
}

define i32 @pack_long(i1 %cmp.not) {
entry:
  br i1 %cmp.not, label %if.end, label %common.ret

common.ret:                                       ; preds = %if.end, %entry
  ret i32 0

if.end:                                           ; preds = %entry
  %call1 = load volatile i64, ptr null, align 8
  br label %common.ret
}
