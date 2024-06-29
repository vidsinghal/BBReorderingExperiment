; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//469/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @test_simde_wasm_f32x4_ceil() local_unnamed_addr #0 {
entry:
  %a_1111.i = alloca [0 x [0 x [0 x [0 x [4 x float]]]]], align 16
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %a_1111.i)
  call void @simde_wasm_v128_store(ptr nonnull %a_1111.i)
  %0 = load float, ptr %a_1111.i, align 16
  %cmp9.i.i.i = fcmp oeq float %0, 0.000000e+00
  br i1 %cmp9.i.i.i, label %for.cond.us.i.i, label %for.cond.i.i

for.cond.us.i.i:                                  ; preds = %entry, %for.cond.us.i.i
  br label %for.cond.us.i.i

for.cond.i.i:                                     ; preds = %entry, %for.cond.i.i
  %call16.i.i.i = load volatile float, ptr null, align 4294967296
  br label %for.cond.i.i
}

; Function Attrs: noreturn
define noundef i32 @simde_test_wasm_f32x4_assert_equal_() local_unnamed_addr #0 {
entry:
  %a_1111 = alloca [0 x [0 x [0 x [0 x [4 x float]]]]], align 16
  call void @simde_wasm_v128_store(ptr nonnull %a_1111)
  %0 = load float, ptr %a_1111, align 16
  %cmp9.i.i = fcmp oeq float %0, 0.000000e+00
  br i1 %cmp9.i.i, label %for.cond.us.i, label %for.cond.i

for.cond.us.i:                                    ; preds = %entry, %for.cond.us.i
  br label %for.cond.us.i

for.cond.i:                                       ; preds = %entry, %for.cond.i
  %call16.i.i = load volatile float, ptr null, align 4294967296
  br label %for.cond.i
}

declare void @simde_wasm_v128_store(ptr) local_unnamed_addr

; Function Attrs: nofree norecurse noreturn nounwind
define noundef i32 @simde_assert_equal_vf32_(ptr nocapture readonly %a) local_unnamed_addr #1 {
entry:
  %0 = load float, ptr %a, align 4
  %cmp9.i = fcmp oeq float %0, 0.000000e+00
  br i1 %cmp9.i, label %for.cond.us, label %for.cond

for.cond.us:                                      ; preds = %entry, %for.cond.us
  br label %for.cond.us

for.cond:                                         ; preds = %entry, %for.cond
  %call16.i = load volatile float, ptr null, align 4294967296
  br label %for.cond
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noundef i32 @simde_test_equal_f32(float %a) local_unnamed_addr #2 {
entry:
  %cmp9 = fcmp oeq float %a, 0.000000e+00
  br i1 %cmp9, label %if.end28, label %if.then15

if.then15:                                        ; preds = %entry
  %call16 = load volatile float, ptr null, align 4294967296
  br label %if.end28

if.end28:                                         ; preds = %if.then15, %entry
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

attributes #0 = { noreturn }
attributes #1 = { nofree norecurse noreturn nounwind }
attributes #2 = { mustprogress nofree norecurse nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
