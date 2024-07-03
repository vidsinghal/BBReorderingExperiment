; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//271/reordered.bc'
source_filename = "/local-ssd/spglib-6qj4izjfqnmoye3ypa77dclkkisopbnr-build/aidengro/spack-stage-spglib-2.1.0-6qj4izjfqnmoye3ypa77dclkkisopbnr/spack-src/src/refinement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define noalias noundef ptr @ref_get_exact_structure_and_symmetry() local_unnamed_addr #0 {
entry:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none)
define noalias noundef nonnull ptr @get_refined_symmetry_operations() local_unnamed_addr #1 {
entry:
  unreachable
}

; Function Attrs: nofree norecurse nounwind
define noalias noundef ptr @get_primitive_db_symmetry(ptr nocapture readonly %conv_sym) local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr %conv_sym, align 8
  %cmp8 = icmp sgt i32 %0, 0
  br i1 %cmp8, label %for.end.us, label %cleanup

for.cond9.us:                                     ; preds = %for.cond9.us, %for.end.us
  %call17.us = load volatile i32, ptr null, align 4294967296
  br label %for.cond9.us

cleanup:                                          ; preds = %entry
  ret ptr null

for.end.us:                                       ; preds = %entry
  store volatile i32 0, ptr null, align 4294967296
  br label %for.cond9.us
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
attributes #1 = { mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) }
attributes #2 = { nofree norecurse nounwind }
