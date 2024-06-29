; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//572/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_group = type { i32, i32, i32 }

define noundef i32 @rte_vfio_clear_group() local_unnamed_addr {
entry:
  %call17 = tail call ptr @get_vfio_cfg_by_group_fd(i32 0, i32 0, i32 0, i1 false, ptr null, i64 0, ptr null, ptr null)
  ret i32 0
}

declare ptr @get_vfio_cfg_by_group_fd(i32, i32, i32, i1, ptr, i64, ptr, ptr) local_unnamed_addr

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define noundef i32 @get_vfio_group_idx(ptr nocapture readonly %0, i32 %j.0) local_unnamed_addr #0 {
entry:
  %inc = or i32 %j.0, 1
  %fd.peel = getelementptr i8, ptr %0, i64 4
  %1 = load i32, ptr %fd.peel, align 4
  %cmp6.peel = icmp ne i32 %1, 0
  %cmp2.peel = icmp ult i32 %inc, 64
  %or.cond.peel = select i1 %cmp6.peel, i1 %cmp2.peel, i1 false
  br i1 %or.cond.peel, label %for.body3.peel.next, label %common.ret

for.body3.peel.next:                              ; preds = %entry
  %idxprom4.phi.trans.insert = zext nneg i32 %inc to i64
  %fd.phi.trans.insert = getelementptr [64 x %struct.vfio_group], ptr %0, i64 0, i64 %idxprom4.phi.trans.insert, i32 1
  %.pre = load i32, ptr %fd.phi.trans.insert, align 4
  %cmp6.not = icmp eq i32 %.pre, 0
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.body3.peel.next
  br i1 %cmp6.not, label %common.ret, label %for.body3, !llvm.loop !0

common.ret:                                       ; preds = %for.body3, %entry
  ret i32 0
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
