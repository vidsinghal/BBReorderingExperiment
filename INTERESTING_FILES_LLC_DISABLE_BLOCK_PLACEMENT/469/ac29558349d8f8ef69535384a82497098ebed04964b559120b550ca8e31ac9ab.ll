; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @test_simde_wasm_f32x4_ceil() {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %call8 = call i32 @simde_test_wasm_f32x4_assert_equal_()
  br label %for.cond
}

define i32 @simde_test_wasm_f32x4_assert_equal_() {
entry:
  %a_111 = alloca [0 x [0 x [0 x [4 x float]]]], i32 0, align 16
  call void @simde_wasm_v128_store(ptr %a_111)
  %call = call i32 @simde_assert_equal_vf32_(ptr %a_111)
  ret i32 0
}

declare void @simde_wasm_v128_store(ptr)

define i32 @simde_assert_equal_vf32_(ptr %a) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %0 = load float, ptr %a, align 4
  %call = call i32 @simde_test_equal_f32(float %0)
  br label %for.cond
}

define i32 @simde_test_equal_f32(float %a) {
entry:
  %cmp9 = fcmp oeq float %a, 0.000000e+00
  br i1 %cmp9, label %if.end28, label %if.then15

if.then15:                                        ; preds = %entry
  %call16 = load volatile float, ptr null, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then15, %entry
  ret i32 0
}
