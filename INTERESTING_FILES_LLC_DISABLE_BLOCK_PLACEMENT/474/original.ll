; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//474/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(inaccessiblemem: write)
define noundef i32 @hypre_AMESetup(i32 %0) local_unnamed_addr #0 {
entry:
  %cmp251 = icmp slt i32 %0, 0
  tail call void @llvm.assume(i1 %cmp251)
  %1 = sub i32 0, %0
  %xtraiter = and i32 %1, 7
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body27.prol.loopexit, label %for.body27.prol

for.body27.prol:                                  ; preds = %entry, %for.body27.prol
  %l1_norm.03.prol = phi double [ %add35.prol, %for.body27.prol ], [ 0.000000e+00, %entry ]
  %j.02.prol = phi i32 [ %inc38.prol, %for.body27.prol ], [ %0, %entry ]
  %prol.iter = phi i32 [ %prol.iter.next, %for.body27.prol ], [ 0, %entry ]
  %add35.prol = fadd double %l1_norm.03.prol, 1.000000e+00
  %inc38.prol = add i32 %j.02.prol, 1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body27.prol.loopexit, label %for.body27.prol, !llvm.loop !0

for.body27.prol.loopexit:                         ; preds = %for.body27.prol, %entry
  %add35.lcssa.unr = phi double [ undef, %entry ], [ %add35.prol, %for.body27.prol ]
  %l1_norm.03.unr = phi double [ 0.000000e+00, %entry ], [ %add35.prol, %for.body27.prol ]
  %j.02.unr = phi i32 [ %0, %entry ], [ %inc38.prol, %for.body27.prol ]
  %2 = icmp ugt i32 %0, -8
  br i1 %2, label %for.end39.loopexit, label %for.body27

for.body27:                                       ; preds = %for.body27.prol.loopexit, %for.body27
  %l1_norm.03 = phi double [ %add35.7, %for.body27 ], [ %l1_norm.03.unr, %for.body27.prol.loopexit ]
  %j.02 = phi i32 [ %inc38.7, %for.body27 ], [ %j.02.unr, %for.body27.prol.loopexit ]
  %add35 = fadd double %l1_norm.03, 1.000000e+00
  %add35.1 = fadd double %add35, 1.000000e+00
  %add35.2 = fadd double %add35.1, 1.000000e+00
  %add35.3 = fadd double %add35.2, 1.000000e+00
  %add35.4 = fadd double %add35.3, 1.000000e+00
  %add35.5 = fadd double %add35.4, 1.000000e+00
  %add35.6 = fadd double %add35.5, 1.000000e+00
  %add35.7 = fadd double %add35.6, 1.000000e+00
  %inc38.7 = add i32 %j.02, 8
  %exitcond.not.7 = icmp eq i32 %inc38.7, 0
  br i1 %exitcond.not.7, label %for.end39.loopexit, label %for.body27

for.end39.loopexit:                               ; preds = %for.body27, %for.body27.prol.loopexit
  %add35.lcssa = phi double [ %add35.lcssa.unr, %for.body27.prol.loopexit ], [ %add35.7, %for.body27 ]
  %3 = fcmp olt double %add35.lcssa, 0.000000e+00
  tail call void @llvm.assume(i1 %3)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nofree norecurse nosync nounwind memory(inaccessiblemem: write) "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.unroll.disable"}
