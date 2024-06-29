; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//385/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @internal_exr_write_header(ptr nocapture readonly %ctxt, ptr nocapture readonly %0, i1 %tobool) local_unnamed_addr #0 {
entry:
  tail call void @priv_from_native32(ptr null)
  %1 = load i8, ptr %ctxt, align 1
  %tobool24.not.peel = icmp eq i8 %1, 0
  br i1 %tobool24.not.peel, label %for.cond.preheader, label %if.then25.peel

for.cond.sink.split:                              ; preds = %if.then25, %if.then25.peel
  tail call void @llvm.assume(i1 %tobool)
  br label %for.cond.preheader

for.cond.backedge:                                ; preds = %if.then25, %for.cond
  br label %for.cond, !llvm.loop !0

if.then25:                                        ; preds = %for.cond
  %2 = load ptr, ptr %0, align 8
  %arrayidx23 = getelementptr i8, ptr %2, i64 8
  %3 = load i32, ptr %arrayidx23, align 8
  %cmp27 = icmp sgt i32 %3, 0
  br i1 %cmp27, label %for.cond.sink.split, label %for.cond.backedge, !llvm.loop !0

for.cond:                                         ; preds = %for.cond.backedge, %for.cond.preheader
  %4 = load ptr, ptr %ctxt, align 8
  %call82 = tail call i32 %4(ptr null, ptr null, i64 0, ptr null)
  %5 = load i8, ptr %ctxt, align 1
  %tobool24.not = icmp eq i8 %5, 0
  br i1 %tobool24.not, label %for.cond.backedge, label %if.then25

for.cond.preheader:                               ; preds = %if.then25.peel, %entry, %for.cond.sink.split
  br label %for.cond

if.then25.peel:                                   ; preds = %entry
  %6 = load ptr, ptr %0, align 8
  %7 = load i32, ptr %6, align 8
  %cmp27.peel = icmp sgt i32 %7, 0
  br i1 %cmp27.peel, label %for.cond.sink.split, label %for.cond.preheader
}

declare void @priv_from_native32(ptr) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { noreturn }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
