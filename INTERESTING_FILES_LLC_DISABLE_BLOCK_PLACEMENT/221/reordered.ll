; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//221/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(argmem: write)
define void @xnn_qu8_dwconv_minmax_fp32_ukernel_up8x25__avx2_mul32(ptr nocapture writeonly %input, ptr nocapture writeonly %weights, i1 %cmp4, i1 %cmp28) local_unnamed_addr #0 {
entry:
  br i1 %cmp4, label %entry.split.us, label %entry.split

do.body.us.us:                                    ; preds = %entry.split.us, %do.body.us.us
  store ptr null, ptr %weights, align 8
  store ptr null, ptr %input, align 8
  br label %do.body.us.us

do.body:                                          ; preds = %entry.split, %do.body
  br label %do.body

do.body.us1:                                      ; preds = %entry.split, %do.body.us1
  br label %do.body.us1

entry.split:                                      ; preds = %entry
  br i1 %cmp28, label %do.body.us1, label %do.body

do.body.us:                                       ; preds = %entry.split.us, %do.body.us
  store ptr null, ptr %weights, align 8
  store ptr null, ptr %input, align 8
  br label %do.body.us

entry.split.us:                                   ; preds = %entry
  br i1 %cmp28, label %do.body.us.us, label %do.body.us
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(argmem: write) }
