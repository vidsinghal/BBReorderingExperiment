; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//271/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @ref_get_conventional_lattice(ptr nocapture readonly %lattice) local_unnamed_addr {
entry:
  tail call void @ptg_get_pointgroup()
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull dereferenceable(24) null, ptr noundef nonnull align 1 dereferenceable(24) %lattice, i64 24, i1 false)
  ret void
}

declare void @ptg_get_pointgroup() local_unnamed_addr

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite)
define void @set_tetra(ptr nocapture readonly %lattice, double %0) local_unnamed_addr #1 {
entry:
  %1 = fcmp olt double %0, 0.000000e+00
  br i1 %1, label %cdce.call, label %cdce.end, !prof !0

cdce.call:                                        ; preds = %entry
  %call = tail call double @sqrt(double %0)
  br label %cdce.end

cdce.end:                                         ; preds = %entry, %cdce.call
  %2 = load double, ptr %lattice, align 8
  %3 = fcmp olt double %2, 0.000000e+00
  br i1 %3, label %cdce.call1, label %cdce.end2, !prof !0

cdce.call1:                                       ; preds = %cdce.end
  %call4 = tail call double @sqrt(double %2)
  br label %cdce.end2

cdce.end2:                                        ; preds = %cdce.end, %cdce.call1
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double) local_unnamed_addr #2

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) }

!0 = !{!"branch_weights", i32 1, i32 2000}
