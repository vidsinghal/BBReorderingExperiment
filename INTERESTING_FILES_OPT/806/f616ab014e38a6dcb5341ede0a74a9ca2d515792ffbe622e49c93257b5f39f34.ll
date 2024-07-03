; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @trie_new_from_cstring_array_sorted(ptr %strings, ptr %call1) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %call112 = call i32 @kh_put_str_uint32(ptr %strings)
  %vals = getelementptr i8, ptr %call1, i64 32
  store i32 0, ptr %vals, align 4
  br label %for.cond
}

declare i32 @kh_resize_str_uint32(i32)

define i32 @kh_put_str_uint32(ptr %h) {
entry:
  %0 = load i32, ptr inttoptr (i64 12 to ptr), align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %h, align 8
  %cmp1.not = icmp eq i32 %1, 0
  br i1 %cmp1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %call = call i32 @kh_resize_str_uint32(i32 1)
  ret i32 0

if.else:                                          ; preds = %if.then
  %call8 = call i32 @kh_resize_str_uint32(i32 0)
  ret i32 0

if.end14:                                         ; preds = %entry
  %call18 = call i32 @__ac_X31_hash_string()
  ret i32 0
}

declare i32 @__ac_X31_hash_string()
