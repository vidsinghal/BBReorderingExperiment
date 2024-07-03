; ModuleID = 'reduced.bc'
source_filename = "/local-ssd/spglib-6qj4izjfqnmoye3ypa77dclkkisopbnr-build/aidengro/spack-stage-spglib-2.1.0-6qj4izjfqnmoye3ypa77dclkkisopbnr/spack-src/src/refinement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.4 = external constant [151 x i8]

define ptr @ref_get_exact_structure_and_symmetry() {
entry:
  ret ptr null
}

define ptr @get_refined_symmetry_operations() {
entry:
  %call7 = call ptr @get_primitive_db_symmetry(ptr null)
  ret ptr null
}

define ptr @get_primitive_db_symmetry(ptr %conv_sym) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.end, %for.body11, %entry
  %cmp10 = phi i1 [ false, %entry ], [ true, %for.end ], [ true, %for.body11 ]
  %0 = load i32, ptr %conv_sym, align 8
  %cmp8 = icmp sgt i32 %0, 0
  br i1 %cmp8, label %for.cond9, label %cleanup

for.cond9:                                        ; preds = %for.body11, %for.cond
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond9
  %call17 = load volatile i32, ptr null, align 4
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %for.cond9, label %for.cond

for.end:                                          ; preds = %for.cond9
  store volatile i32 0, ptr null, align 4
  br label %for.cond

cleanup:                                          ; preds = %for.cond
  ret ptr null
}
