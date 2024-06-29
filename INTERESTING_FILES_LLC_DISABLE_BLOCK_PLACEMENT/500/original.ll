; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//500/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @bl1_strmv(i1 %tobool.not, i1 %tobool2.not, i1 %tobool9.not) local_unnamed_addr {
entry:
  %call2 = tail call i32 @bl1_zero_dim1()
  br i1 %tobool.not, label %if.end, label %common.ret

common.ret:                                       ; preds = %if.end23, %entry
  ret void

if.end:                                           ; preds = %entry
  br i1 %tobool9.not, label %if.end23, label %if.else11

if.else11:                                        ; preds = %if.end
  %call12 = load volatile i32, ptr null, align 4294967296
  br i1 %tobool2.not, label %if.else15, label %if.end23

if.else15:                                        ; preds = %if.else11
  %call16 = load volatile i32, ptr null, align 4294967296
  br label %if.end23

if.end23:                                         ; preds = %if.else15, %if.else11, %if.end
  store volatile i32 0, ptr null, align 4294967296
  br label %common.ret
}

declare i32 @bl1_zero_dim1() local_unnamed_addr
