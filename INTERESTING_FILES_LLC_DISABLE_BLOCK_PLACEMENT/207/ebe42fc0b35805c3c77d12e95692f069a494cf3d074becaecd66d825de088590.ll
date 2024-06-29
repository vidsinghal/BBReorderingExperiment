; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @spdk_json_write_begin(i1 %cmp, ptr %call1) {
entry:
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store ptr null, ptr %call1, align 8
  %first_value = getelementptr i8, ptr %call1, i64 25
  store i8 0, ptr %first_value, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  ret ptr null
}

define i32 @begin_value(ptr %w) {
entry:
  %first_value28 = getelementptr i8, ptr %w, i64 25
  store i8 0, ptr %first_value28, align 1
  %new_indent29 = getelementptr i8, ptr %w, i64 24
  store i8 0, ptr %new_indent29, align 8
  ret i32 0
}

declare i32 @__snprintf_chk(ptr, ...)

; Function Attrs: ssp
define i32 @spdk_json_write_uint16(ptr %w) #0 {
entry:
  %buf = alloca [32 x i8], align 16
  %call = call i32 @begin_value(ptr %w)
  %call2 = call i32 (ptr, ...) @__snprintf_chk(ptr %buf)
  %call8 = load volatile i32, ptr null, align 4
  ret i32 0
}

; Function Attrs: ssp
define i32 @spdk_json_write_uint32(ptr %w) #0 {
entry:
  %buf = alloca [32 x i8], align 16
  %call = call i32 @begin_value(ptr %w)
  %call2 = call i32 (ptr, ...) @__snprintf_chk(ptr %buf)
  ret i32 0
}

attributes #0 = { ssp }
