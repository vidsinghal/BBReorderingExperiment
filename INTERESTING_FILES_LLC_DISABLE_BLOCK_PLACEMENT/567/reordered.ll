; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//567/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(readwrite, inaccessiblemem: none)
define void @xnn_qs8_igemm_minmax_fp32_ukernel_2x4__scalar_imagic(i64 %kc, ptr nocapture readonly %0, ptr nocapture writeonly %1) local_unnamed_addr #0 {
entry:
  %2 = sub i64 1, %kc
  %xtraiter = and i64 %2, 7
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %3 = add i64 %kc, 6
  %4 = icmp ult i64 %3, 7
  br label %do.body

do.body31:                                        ; preds = %do.body31.prol.loopexit, %do.body31
  %k.0 = phi i64 [ %sub.7, %do.body31 ], [ %k.0.unr, %do.body31.prol.loopexit ]
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  %sub.7 = add i64 %k.0, 8
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  %cmp59.not.7 = icmp eq i64 %k.0, -7
  br i1 %cmp59.not.7, label %do.end, label %do.body31

do.body31.prol.loopexit:                          ; preds = %do.body31.prol, %do.body
  %k.0.unr = phi i64 [ %kc, %do.body ], [ %sub.prol, %do.body31.prol ]
  br i1 %4, label %do.end, label %do.body31

do.body:                                          ; preds = %do.end, %entry
  %.pre = load i8, ptr %0, align 1
  br i1 %lcmp.mod.not, label %do.body31.prol.loopexit, label %do.body31.prol

do.body31.prol:                                   ; preds = %do.body, %do.body31.prol
  %k.0.prol = phi i64 [ %sub.prol, %do.body31.prol ], [ %kc, %do.body ]
  %prol.iter = phi i64 [ %prol.iter.next, %do.body31.prol ], [ 0, %do.body ]
  %sub.prol = add i64 %k.0.prol, 1
  tail call void @llvm.lifetime.end.p0(i64 0, ptr null)
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %do.body31.prol.loopexit, label %do.body31.prol, !llvm.loop !0

do.end:                                           ; preds = %do.body31, %do.body31.prol.loopexit
  store i8 %.pre, ptr %1, align 1
  br label %do.body
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(readwrite, inaccessiblemem: none) "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.unroll.disable"}
