; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//35/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noundef i32 @slatrs_(i1 %tobool.not, i1 %tobool6.not, i1 %tobool9.not, i1 %not.tobool6.not) local_unnamed_addr #0 {
entry:
  br i1 %tobool.not, label %land.lhs.true, label %if.else

if.else:                                          ; preds = %land.lhs.true, %entry
  %0 = select i1 %tobool9.not, i1 %tobool6.not, i1 false
  br i1 %0, label %land.lhs.true10, label %if.else14

if.else20:                                        ; preds = %land.lhs.true16, %if.else14
  ret i32 0

land.lhs.true16:                                  ; preds = %if.else14
  %call17 = load volatile i32, ptr null, align 4294967296
  br label %if.else20

if.else14:                                        ; preds = %land.lhs.true10, %if.else
  br i1 %tobool.not, label %land.lhs.true16, label %if.else20

land.lhs.true10:                                  ; preds = %if.else
  %call11 = load volatile i32, ptr null, align 4294967296
  br label %if.else14

land.lhs.true:                                    ; preds = %entry
  %call4 = load volatile i32, ptr null, align 4294967296
  br label %if.else
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
