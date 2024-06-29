; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//575/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { [8 x i8], [8 x i8] }

; Function Attrs: nofree norecurse noreturn nounwind
define noundef i32 @test_simde_vrbit_s8() local_unnamed_addr #0 {
entry:
  %a_.i = alloca [8 x i8], align 1
  %arrayidx.i.i = getelementptr i8, ptr %a_.i, i64 undef
  br label %for.cond

for.cond:                                         ; preds = %simde_test_arm_neon_assert_equal_i8x8_.exit, %entry
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %simde_test_arm_neon_assert_equal_i8x8_.exit ]
  %arrayidx = getelementptr [8 x %struct.anon.0], ptr null, i64 0, i64 %i.0
  %call = load volatile double, ptr %arrayidx, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a_.i)
  store i32 0, ptr %a_.i, align 4
  %0 = load i8, ptr %arrayidx.i.i, align 1
  %tobool.not.i.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i.i, label %simde_test_arm_neon_assert_equal_i8x8_.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.cond
  store volatile i32 0, ptr null, align 4294967296
  br label %simde_test_arm_neon_assert_equal_i8x8_.exit

simde_test_arm_neon_assert_equal_i8x8_.exit:      ; preds = %for.cond, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a_.i)
  %inc = add i64 %i.0, 1
  br label %for.cond
}

; Function Attrs: nofree norecurse nounwind
define noundef i32 @simde_test_arm_neon_assert_equal_i8x8_() local_unnamed_addr #1 {
entry:
  %a_ = alloca [8 x i8], align 1
  store i32 0, ptr %a_, align 4
  %arrayidx.i = getelementptr i8, ptr %a_, i64 undef
  %0 = load i8, ptr %arrayidx.i, align 1
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %simde_assert_equal_vi8_.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  store volatile i32 0, ptr null, align 4294967296
  br label %simde_assert_equal_vi8_.exit

simde_assert_equal_vi8_.exit:                     ; preds = %entry, %if.then.i
  ret i32 0
}

; Function Attrs: nofree norecurse nounwind
define noundef i32 @simde_assert_equal_vi8_(ptr nocapture readonly %a) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr i8, ptr %a, i64 undef
  %0 = load i8, ptr %arrayidx, align 1
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %common.ret, label %if.then

common.ret:                                       ; preds = %if.then, %entry
  ret i32 0

if.then:                                          ; preds = %entry
  store volatile i32 0, ptr null, align 4294967296
  br label %common.ret
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { nofree norecurse noreturn nounwind }
attributes #1 = { nofree norecurse nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
