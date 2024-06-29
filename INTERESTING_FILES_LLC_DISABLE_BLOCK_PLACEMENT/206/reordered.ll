; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//206/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @bli_cgemmtrsm3m1_l_zen2_ref(i64 %k, ptr %alpha, ptr %a1x, ptr nocapture readnone %a11, ptr nocapture readnone %bx1, ptr nocapture readnone %b11, ptr %data, float %0) local_unnamed_addr #0 {
entry:
  %ab_i111 = alloca [0 x [0 x [0 x [1024 x float]]]], align 64
  %call = tail call ptr @bli_cntx_get_l3_nat_ukr_dt(ptr null)
  %call18 = tail call ptr @bli_auxinfo_next_b()
  %cmp = fcmp oeq float %0, 0.000000e+00
  br i1 %cmp, label %if.end, label %common.ret

if.end:                                           ; preds = %entry
  tail call void @bli_auxinfo_set_next_ab(ptr null, ptr %data)
  call void %call(i64 %k, ptr null, ptr null, ptr null, ptr null, ptr nonnull %ab_i111, i64 0, i64 0, ptr null, ptr null)
  call void @bli_auxinfo_set_next_ab(ptr %call18, ptr null)
  call void %call(i64 0, ptr %a1x, ptr null, ptr null, ptr null, ptr null, i64 0, i64 0, ptr %data, ptr %alpha)
  br label %common.ret

common.ret:                                       ; preds = %if.end, %entry
  ret void
}

declare ptr @bli_cntx_get_l3_nat_ukr_dt(ptr) local_unnamed_addr

declare ptr @bli_auxinfo_next_b() local_unnamed_addr

declare void @bli_auxinfo_set_next_ab(ptr, ptr) local_unnamed_addr

attributes #0 = { "target-cpu"="znver2" }
