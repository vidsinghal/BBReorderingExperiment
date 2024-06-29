; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//521/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write)
define noundef i32 @ilu_zpivotL(i32 %jcol, ptr nocapture writeonly %usepr, ptr nocapture readnone %perm_r, ptr nocapture readnone %pivrow, ptr nocapture readnone %Glu, ptr nocapture readnone %0, i32 %1) local_unnamed_addr #0 {
entry:
  %.fr = freeze i32 %1
  %cmp112 = icmp ne i32 %.fr, 0
  %sub = add i32 %jcol, -1
  %cmp108.not.peel = icmp slt i32 %sub, %.fr
  %or.cond = select i1 %cmp112, i1 %cmp108.not.peel, i1 false
  br i1 %or.cond, label %for.cond107.peel.next, label %if.end119.split

for.cond107.peel.next:                            ; preds = %entry
  %cmp108.not = icmp sgt i32 %.fr, 0
  br label %for.cond107

for.cond107:                                      ; preds = %for.cond107.peel.next, %for.cond107
  br i1 %cmp108.not, label %for.cond107, label %if.end119.split, !llvm.loop !0

if.end119.split:                                  ; preds = %for.cond107, %entry
  store i32 %jcol, ptr %usepr, align 4
  ret i32 0
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
