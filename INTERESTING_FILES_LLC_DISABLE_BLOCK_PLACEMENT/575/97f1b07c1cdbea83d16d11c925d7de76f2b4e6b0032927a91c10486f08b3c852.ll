; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { [8 x i8], [8 x i8] }

define i32 @test_simde_vrbit_s8() {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.cond ]
  %arrayidx = getelementptr [8 x %struct.anon.0], ptr null, i64 0, i64 %i.0
  %call = load volatile double, ptr %arrayidx, align 8
  %call12 = call i32 @simde_test_arm_neon_assert_equal_i8x8_()
  %inc = add i64 %i.0, 1
  br label %for.cond
}

define i32 @simde_test_arm_neon_assert_equal_i8x8_() {
entry:
  %a_ = alloca [8 x i8], align 1
  store i32 0, ptr %a_, align 4
  %call = call i32 @simde_assert_equal_vi8_(ptr %a_)
  ret i32 0
}

define i32 @simde_assert_equal_vi8_(ptr %a) {
entry:
  %0 = load i64, ptr null, align 8
  %arrayidx = getelementptr i8, ptr %a, i64 %0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %conv6 = sext i32 %conv to i64
  %tobool = icmp ne i64 %conv6, 0
  br i1 %tobool, label %if.then, label %common.ret

common.ret:                                       ; preds = %if.then, %entry
  ret i32 0

if.then:                                          ; preds = %entry
  store volatile i32 0, ptr null, align 4
  br label %common.ret
}
