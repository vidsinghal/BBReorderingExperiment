; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//438/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define void @apme_initLimdfsstate(ptr nocapture %aliascolumn, ptr nocapture writeonly %mt) local_unnamed_addr #0 {
entry:
  store i64 0, ptr %mt, align 8
  %0 = load i8, ptr %aliascolumn, align 8, !range !0, !noundef !1
  %tobool = trunc nuw i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, ptr %aliascolumn, align 8
  store i64 0, ptr %mt, align 8
  br label %common.ret

common.ret:                                       ; preds = %if.else, %if.then
  ret void

if.else:                                          ; preds = %entry
  store i64 1, ptr %aliascolumn, align 8
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) }

!0 = !{i8 0, i8 2}
!1 = !{}
