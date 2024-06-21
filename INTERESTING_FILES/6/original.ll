; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES//6/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define void @xnn_qs8_vaddc_minmax_ukernel__avx_mul16_ld64_x32(ptr nocapture writeonly %output, i1 %0) local_unnamed_addr #0 {
entry:
  %call113 = tail call <2 x i64> @_mm_add_epi32(<2 x i64> zeroinitializer)
  br i1 %0, label %do.body.backedge.preheader, label %if.then152

do.body.backedge.preheader:                       ; preds = %if.then152, %entry
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %do.body.backedge.preheader, %do.body.backedge
  %call113.c = tail call <2 x i64> @_mm_add_epi32(<2 x i64> zeroinitializer)
  br label %do.body.backedge

if.then152:                                       ; preds = %entry
  store i8 0, ptr %output, align 1
  br label %do.body.backedge.preheader
}

declare <2 x i64> @_mm_add_epi32(<2 x i64>) local_unnamed_addr

attributes #0 = { noreturn }
