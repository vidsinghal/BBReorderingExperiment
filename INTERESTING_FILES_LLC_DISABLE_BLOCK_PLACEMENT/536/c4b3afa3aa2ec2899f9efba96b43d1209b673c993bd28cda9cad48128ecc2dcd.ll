; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @simde_test_wasm_i8x16_assert_equal_() {
entry:
  call void @simde_wasm_v128_store()
  ret i32 0
}

declare void @simde_wasm_v128_store()

define i32 @simde_assert_equal_vi8_(i64 %vec_len, ptr %a, ptr %b, i64 %i.0, ptr %arrayidx, ptr %arrayidx1, i1 %cmp3) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.01 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp ult i64 %i.01, %vec_len
  br i1 %cmp, label %for.body, label %common.ret

common.ret:                                       ; preds = %if.then, %for.cond
  ret i32 0

for.body:                                         ; preds = %for.cond
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void (...) @simde_test_debug_printf_()
  br label %common.ret

for.inc:                                          ; preds = %for.body
  %inc = add i64 %i.01, 1
  br label %for.cond
}

declare void @simde_test_debug_printf_(...)
