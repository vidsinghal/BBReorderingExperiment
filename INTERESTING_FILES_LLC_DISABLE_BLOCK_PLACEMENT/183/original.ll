; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//183/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(readwrite, inaccessiblemem: none)
define void @xnn_f32_vsub_relu_ukernel__scalar_x4(i64 %n, i64 %sub20) local_unnamed_addr #0 {
entry:
  %cmp1 = icmp ugt i64 %n, 1
  br i1 %cmp1, label %for.body.lr.ph, label %do.body.preheader

for.body.lr.ph:                                   ; preds = %entry
  %cmp = icmp ugt i64 %sub20, 1
  br i1 %cmp, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %for.body.lr.ph, %for.body.us
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  br label %for.body.us

for.body:                                         ; preds = %for.body.lr.ph
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  br label %do.body.preheader

do.body.preheader:                                ; preds = %for.body, %entry
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.body
  br label %do.body
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(readwrite, inaccessiblemem: none) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
