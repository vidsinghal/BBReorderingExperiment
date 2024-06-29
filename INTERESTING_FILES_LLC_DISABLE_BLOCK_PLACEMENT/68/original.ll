; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//68/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define void @xnn_f32_vabs_ukernel__sse_x4(i64 %n, ptr nocapture readonly %x, i64 %sub, ptr nocapture writeonly %0) local_unnamed_addr #0 {
entry:
  %cmp.not1 = icmp eq i64 %n, 0
  br i1 %cmp.not1, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %cmp.not = icmp eq i64 %sub, 0
  br i1 %cmp.not, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %for.body.lr.ph
  %call1.us = load <4 x float>, ptr %x, align 16
  %call2.us = fneg <4 x float> %call1.us
  store <4 x float> %call2.us, ptr %0, align 16
  br label %for.end

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %call1 = load <4 x float>, ptr %x, align 16
  %call2 = fneg <4 x float> %call1
  store <4 x float> %call2, ptr %0, align 16
  br label %for.body

for.end:                                          ; preds = %for.body.us, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define noundef <4 x float> @_mm_load_ps() local_unnamed_addr #1 {
entry:
  ret <4 x float> zeroinitializer
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define noundef <4 x float> @_mm_loadu_ps() local_unnamed_addr #1 {
entry:
  ret <4 x float> zeroinitializer
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define noundef <4 x float> @_mm_and_ps() local_unnamed_addr #1 {
entry:
  ret <4 x float> zeroinitializer
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define void @_mm_storeu_ps() local_unnamed_addr #1 {
entry:
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
