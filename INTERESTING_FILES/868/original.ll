; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//868/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nounwind
define void @xnn_qs8_igemm_minmax_fp32_ukernel_4x4c2s4__avx_ld128(i64 %a_offset) local_unnamed_addr #0 {
entry:
  %cmp140.not.peel = icmp eq i64 %a_offset, 0
  br label %do.body25

do.body25.loopexit.loopexit:                      ; preds = %do.body25
  %call75 = load volatile <2 x i64>, ptr %0, align 16
  br label %do.body25.loopexit

do.body25.loopexit:                               ; preds = %do.body25.loopexit.loopexit, %do.body25
  %add.ptr73 = getelementptr i8, ptr %a.addr.0, i64 32
  br label %do.body25

do.body25:                                        ; preds = %do.body25.loopexit, %entry
  %a.addr.0 = phi ptr [ null, %entry ], [ %add.ptr73, %do.body25.loopexit ]
  %0 = load ptr, ptr %a.addr.0, align 8
  %call75.peel = load volatile <2 x i64>, ptr %0, align 16
  br i1 %cmp140.not.peel, label %do.body25.loopexit, label %do.body25.loopexit.loopexit
}

attributes #0 = { nofree norecurse noreturn nounwind }
