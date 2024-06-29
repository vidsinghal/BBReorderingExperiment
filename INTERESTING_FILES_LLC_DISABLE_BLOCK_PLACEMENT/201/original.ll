; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//201/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @FLA_Copyt_internal(ptr nocapture readonly %cntl) local_unnamed_addr {
entry:
  %call2 = tail call i32 @FLA_Check_error_level()
  %0 = load i32, ptr %cntl, align 8
  %cmp23 = icmp eq i32 %0, 0
  br i1 %cmp23, label %land.lhs.true.preheader, label %common.ret

land.lhs.true.preheader:                          ; preds = %entry
  %call3.peel = load volatile i32, ptr null, align 4294967296
  %cmp4.peel = icmp eq i32 %call3.peel, 0
  br i1 %cmp4.peel, label %land.lhs.true5.peel, label %common.ret

land.lhs.true5.peel:                              ; preds = %land.lhs.true.preheader
  %call.peel = tail call i32 @FLA_Check_error_level()
  %1 = load i32, ptr %cntl, align 8
  %cmp2.peel = icmp eq i32 %1, 0
  br i1 %cmp2.peel, label %land.lhs.true, label %common.ret

land.lhs.true:                                    ; preds = %land.lhs.true5.peel, %land.lhs.true5
  %call3 = load volatile i32, ptr null, align 4294967296
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %land.lhs.true5, label %common.ret

common.ret:                                       ; preds = %land.lhs.true5, %land.lhs.true, %land.lhs.true.preheader, %land.lhs.true5.peel, %entry
  ret i32 0

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call = tail call i32 @FLA_Check_error_level()
  %2 = load i32, ptr %cntl, align 8
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %land.lhs.true, label %common.ret, !llvm.loop !0
}

declare i32 @FLA_Check_error_level() local_unnamed_addr

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
