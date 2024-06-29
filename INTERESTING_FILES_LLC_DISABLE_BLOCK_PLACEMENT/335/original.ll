; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//335/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@axl_debug = external local_unnamed_addr global i32

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define void @axl_dbg(i1 %cmp3.not, ...) local_unnamed_addr #0 {
entry:
  %call = load volatile i32, ptr null, align 4294967296
  %0 = load i32, ptr @axl_debug, align 4
  %cmp2 = icmp slt i32 %0, 0
  %or.cond = or i1 %cmp2, %cmp3.not
  br i1 %or.cond, label %if.end12, label %if.then4

if.then4:                                         ; preds = %entry
  %call6 = load volatile i32, ptr null, align 4294967296
  br label %if.end12

if.end12:                                         ; preds = %if.then4, %entry
  ret void
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
