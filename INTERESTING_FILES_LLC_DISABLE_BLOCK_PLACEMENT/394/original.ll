; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//394/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define noundef i32 @hwloc_distances_remove_by_depth(ptr %topology, ptr readnone %0) local_unnamed_addr #0 {
entry:
  %cmp9.not1 = icmp eq ptr %topology, null
  br i1 %cmp9.not1, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %cmp9.not = icmp eq ptr %0, null
  %topology.promoted = load ptr, ptr %topology, align 8
  br i1 %cmp9.not, label %while.body.us, label %while.body.preheader

while.body.preheader:                             ; preds = %while.body.lr.ph
  store ptr %topology, ptr %topology, align 8
  br label %while.body.outer

while.body.us:                                    ; preds = %while.body.lr.ph
  %1 = ptrtoint ptr %topology.promoted to i64
  %2 = and i64 %1, 1
  %cmp11.us = icmp eq i64 %2, 0
  br i1 %cmp11.us, label %if.then12.us, label %while.end

if.then12.us:                                     ; preds = %while.body.us
  store ptr %topology, ptr %topology, align 8
  br label %while.end

while.body:                                       ; preds = %while.body.outer, %while.body
  br i1 %cmp11, label %while.body.outer, label %while.body

while.body.outer:                                 ; preds = %while.body, %while.body.preheader
  %topology3.ph = phi ptr [ %topology.promoted, %while.body.preheader ], [ %topology, %while.body ]
  %3 = ptrtoint ptr %topology3.ph to i64
  %4 = and i64 %3, 1
  %cmp11 = icmp eq i64 %4, 0
  br label %while.body

while.end:                                        ; preds = %while.body.us, %if.then12.us, %entry
  ret i32 0
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) }
