; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//29/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noundef i32 @s2n_client_ems_recv(ptr nocapture writeonly %conn, i1 %cmp.not, i1 %cmp8) local_unnamed_addr #0 {
entry:
  br i1 %cmp.not, label %do.body2, label %do.body7

do.body2:                                         ; preds = %entry
  store ptr null, ptr %conn, align 8
  br label %common.ret

do.body7:                                         ; preds = %entry
  br i1 %cmp8, label %do.end18, label %common.ret

common.ret:                                       ; preds = %do.end18, %do.body7, %do.body2
  ret i32 0

do.end18:                                         ; preds = %do.body7
  store i32 0, ptr %conn, align 8
  br label %common.ret
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define noundef i1 @s2n_client_ems_should_send(ptr nocapture readonly %conn, i1 %tobool.not) local_unnamed_addr #1 {
entry:
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %bf.load3 = load i32, ptr %conn, align 8
  %tobool6.not = icmp eq i32 %bf.load3, 0
  br i1 %tobool6.not, label %return, label %if.else

if.else:                                          ; preds = %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %if.else, %land.lhs.true
  %retval.0 = phi i1 [ true, %if.else ], [ false, %land.lhs.true ]
  ret i1 %retval.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) }
