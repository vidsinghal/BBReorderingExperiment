; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//115/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

define noundef i32 @FLA_Trmm_lut_unb_var2(i64 %call3, i1 %cmp8.not) local_unnamed_addr {
entry:
  %cmp = icmp eq i64 %call3, 0
  %call311 = load volatile i64, ptr null, align 4294967296
  br i1 %cmp, label %while.body.lr.ph, label %while.end

while.end:                                        ; preds = %entry
  ret i32 0

while.body.us.us:                                 ; preds = %while.body.lr.ph, %while.body.us.us
  %call5.us.us = tail call i32 @FLA_Repart_2x2_to_3x3(ptr null, ptr null, ptr null)
  %call31.us.us = load volatile i64, ptr null, align 4294967296
  br label %while.body.us.us

while.body.us2:                                   ; preds = %while.body.lr.ph, %while.body.us2
  %call5.us3 = tail call i32 @FLA_Repart_2x2_to_3x3(ptr null, ptr null, ptr null)
  %call9.us = load volatile i32, ptr null, align 4294967296
  %call31.us4 = load volatile i64, ptr null, align 4294967296
  br label %while.body.us2

while.body.lr.ph:                                 ; preds = %entry
  %cmp8.not.fr = freeze i1 %cmp8.not
  br i1 %cmp8.not.fr, label %while.body.us.us, label %while.body.us2
}

declare i32 @FLA_Repart_2x2_to_3x3(ptr byval(%struct.FLA_Obj_view), ptr byval(%struct.FLA_Obj_view), ptr byval(%struct.FLA_Obj_view)) local_unnamed_addr
