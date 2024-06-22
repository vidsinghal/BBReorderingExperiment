; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//164/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define noundef i32 @H5G__ent_to_link(ptr nocapture %H5G__ent_to_link.func_check) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %H5G__ent_to_link.func_check, align 1, !range !0, !noundef !1
  %tobool = trunc nuw i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.end:                                           ; preds = %if.then, %entry
  ret i32 0

if.then:                                          ; preds = %entry
  store i8 0, ptr %H5G__ent_to_link.func_check, align 1
  br label %if.end
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) }

!0 = !{i8 0, i8 2}
!1 = !{}
