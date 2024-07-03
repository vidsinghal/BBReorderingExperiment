; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//405/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @unur_test_quartiles(ptr nocapture readonly %gen, i32 %0, i1 %cmp18, i1 %cmp37, i1 %cmp45, i1 %cmp56, i32 %j.3, i32 %j.0) local_unnamed_addr #0 {
entry:
  %cmp18.fr = freeze i1 %cmp18
  br i1 %cmp18.fr, label %for.cond.us, label %entry.split

for.cond.us:                                      ; preds = %entry, %for.cond.us
  %1 = load ptr, ptr %gen, align 8
  %call.us = tail call i32 %1(ptr null)
  br label %for.cond.us

entry.split:                                      ; preds = %entry
  %2 = load ptr, ptr %gen, align 8
  %call2 = tail call i32 %2(ptr null)
  br i1 %cmp37, label %for.cond44.preheader.lr.ph.split.us, label %for.cond118

for.cond44.preheader.lr.ph.split.us:              ; preds = %entry.split
  %3 = icmp slt i32 %0, 0
  br i1 %3, label %for.body51, label %for.cond48.preheader.us

for.cond48.preheader.us:                          ; preds = %for.cond44.preheader.lr.ph.split.us, %for.cond48.preheader.us
  br label %for.cond48.preheader.us

for.body51:                                       ; preds = %for.cond44.preheader.lr.ph.split.us, %for.body51
  br label %for.body51

for.cond118:                                      ; preds = %entry.split, %for.cond118
  br label %for.cond118
}

attributes #0 = { noreturn }
