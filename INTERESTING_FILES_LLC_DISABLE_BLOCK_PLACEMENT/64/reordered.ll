; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//64/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noalias noundef ptr @vtklibharu_HPDF_Direct_New(ptr nocapture %mmgr, ptr nocapture writeonly %call, i1 %tobool.not) local_unnamed_addr {
entry:
  %call1 = load volatile ptr, ptr null, align 4294967296
  br i1 %tobool.not, label %common.ret, label %if.then

if.then:                                          ; preds = %entry
  %call13 = tail call ptr @vtklibharu_HPDF_MemSet()
  store ptr null, ptr %call, align 8
  %0 = load ptr, ptr %mmgr, align 8
  %error4 = getelementptr i8, ptr %call1, i64 16
  store ptr %0, ptr %error4, align 8
  store ptr null, ptr %call1, align 8
  store i32 0, ptr %mmgr, align 8
  br label %common.ret

common.ret:                                       ; preds = %if.then, %entry
  ret ptr null
}

declare ptr @vtklibharu_HPDF_MemSet() local_unnamed_addr
