; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//923/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #0

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(argmem: readwrite, inaccessiblemem: write)
define void @lj_snap_replay(ptr nocapture %J, ptr nocapture readnone %T, ptr nocapture readnone %T.addr, ptr nocapture readnone %0, ptr nocapture readnone %1, i1 %cmp19) local_unnamed_addr #1 {
entry:
  store ptr null, ptr %J, align 8
  %baseslot = getelementptr i8, ptr %J, i64 176
  tail call void @llvm.assume(i1 %cmp19)
  store i32 0, ptr %baseslot, align 8
  br label %for.cond.us

for.cond.us:                                      ; preds = %for.cond.us, %entry
  store i32 0, ptr %J, align 4
  tail call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %J)
  br label %for.cond.us, !llvm.loop !0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nofree norecurse noreturn nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.mustprogress"}
