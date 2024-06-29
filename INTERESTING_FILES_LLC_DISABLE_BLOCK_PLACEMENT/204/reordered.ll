; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//204/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @vtkexodusII_ex_get_names(i32 %obj_type, i1 %cond) local_unnamed_addr {
entry:
  br i1 %cond, label %if.then17, label %sw.default

for.body.lr.ph:                                   ; preds = %if.then17
  %cmp22.not = icmp eq i32 %obj_type, 1
  br i1 %cmp22.not, label %for.body, label %for.body.us

for.cond.cleanup:                                 ; preds = %for.body, %if.then17
  store volatile i32 0, ptr null, align 4294967296
  br label %common.ret

for.body.us:                                      ; preds = %for.body.lr.ph, %for.body.us
  %call26.us = load volatile i32, ptr null, align 4294967296
  br label %for.body.us

common.ret:                                       ; preds = %sw.default, %for.cond.cleanup
  ret i32 0

for.body:                                         ; preds = %for.body.lr.ph
  %call26 = load volatile i32, ptr null, align 4294967296
  br label %for.cond.cleanup

sw.default:                                       ; preds = %entry
  %call94 = load volatile i32, ptr null, align 4294967296
  br label %common.ret

if.then17:                                        ; preds = %entry
  %call197 = tail call ptr @calloc()
  %cmp221 = icmp sgt i32 %obj_type, 0
  br i1 %cmp221, label %for.body.lr.ph, label %for.cond.cleanup
}

declare ptr @calloc() local_unnamed_addr
