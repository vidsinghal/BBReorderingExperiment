; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//523/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define void @test_BLAS_sdot(i32 %call, i32 %call28) local_unnamed_addr #0 {
entry:
  %call1 = load volatile i32, ptr null, align 4294967296
  %0 = icmp sgt i32 %call28, 32
  %1 = icmp slt i32 %call, 1
  %2 = or i1 %1, %0
  br i1 %2, label %cdce.call, label %cdce.end, !prof !0

cdce.end:                                         ; preds = %entry, %cdce.call
  %call33 = tail call double @power()
  unreachable

cdce.call:                                        ; preds = %entry
  %conv27 = sitofp i32 %call to double
  %conv29 = sitofp i32 %call28 to double
  %call30 = tail call double @pow(double %conv27, double %conv29)
  br label %cdce.end
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double, double) local_unnamed_addr #1

declare double @power() local_unnamed_addr

attributes #0 = { noreturn }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write) }

!0 = !{!"branch_weights", i32 1, i32 2000}
