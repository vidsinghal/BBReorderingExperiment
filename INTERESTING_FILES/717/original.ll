; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//717/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @xnn_f32_gemm_minmax_ukernel_3x16__avx_broadcast(i64 %nc, ptr nocapture writeonly %a0.1) local_unnamed_addr #0 {
entry:
  %and = and i64 %nc, 1
  %tobool77.not = icmp eq i64 %and, 0
  br i1 %tobool77.not, label %if.end109, label %if.then78

if.then78:                                        ; preds = %entry
  store <8 x float> zeroinitializer, ptr %a0.1, align 32
  br label %if.end109

if.end109:                                        ; preds = %if.then78, %entry
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
