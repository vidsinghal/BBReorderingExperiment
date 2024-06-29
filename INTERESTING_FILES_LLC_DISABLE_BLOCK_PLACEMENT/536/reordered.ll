; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//536/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @simde_test_wasm_i8x16_assert_equal_() local_unnamed_addr {
entry:
  tail call void @simde_wasm_v128_store()
  ret i32 0
}

declare void @simde_wasm_v128_store() local_unnamed_addr

define noundef i32 @simde_assert_equal_vi8_(i64 %vec_len, ptr nocapture readnone %a, ptr nocapture readnone %b, i64 %i.0, ptr nocapture readnone %arrayidx, ptr nocapture readnone %arrayidx1, i1 %cmp3) local_unnamed_addr {
entry:
  %cmp1.not = icmp ne i64 %vec_len, 0
  %brmerge.not = select i1 %cmp1.not, i1 %cmp3, i1 false
  br i1 %brmerge.not, label %if.then, label %common.ret

if.then:                                          ; preds = %entry
  tail call void (...) @simde_test_debug_printf_()
  br label %common.ret

common.ret:                                       ; preds = %entry, %if.then
  ret i32 0
}

declare void @simde_test_debug_printf_(...) local_unnamed_addr
