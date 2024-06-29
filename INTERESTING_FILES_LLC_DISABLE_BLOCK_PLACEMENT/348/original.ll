; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//348/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noalias noundef ptr @bli_packm_scalar(i32 %call1) local_unnamed_addr {
entry:
  %call136 = tail call i32 @bli_obj_pack_schema()
  %call24 = tail call i1 @bli_obj_scalar_has_nonzero_imag()
  %cmp.i = icmp ne i32 %call1, 0
  %or.cond.not = select i1 %call24, i1 %cmp.i, i1 false
  br i1 %or.cond.not, label %cleanup, label %if.else

if.else:                                          ; preds = %entry
  %call5 = load volatile ptr, ptr null, align 4294967296
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.else
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define noundef i32 @bli_obj_dt() local_unnamed_addr #0 {
entry:
  ret i32 1
}

declare i32 @bli_obj_pack_schema() local_unnamed_addr

declare i1 @bli_obj_scalar_has_nonzero_imag() local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i1 @bli_is_nat_packed(i32 %schema) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %schema, 0
  ret i1 %cmp
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
