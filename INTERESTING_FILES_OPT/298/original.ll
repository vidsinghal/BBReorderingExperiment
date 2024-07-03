; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//298/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @fs_build_range(i1 %cmp209, i1 %cmp214, i1 %cmp234) local_unnamed_addr {
entry:
  br i1 %cmp209, label %entry.split.us, label %for.cond195

entry.split.us:                                   ; preds = %entry
  br i1 %cmp214, label %for.body211.lr.ph.lr.ph.split.us.lr.ph.split.us, label %cond.false217

for.body211.lr.ph.lr.ph.split.us.lr.ph.split.us:  ; preds = %entry.split.us
  br i1 %cmp234, label %expand_glyph_range, label %for.body211.us

for.cond195:                                      ; preds = %entry, %for.cond195
  br label %for.cond195

expand_glyph_range:                               ; preds = %for.body211.lr.ph.lr.ph.split.us.lr.ph.split.us, %expand_glyph_range
  br label %expand_glyph_range

for.body211.us:                                   ; preds = %for.body211.lr.ph.lr.ph.split.us.lr.ph.split.us, %for.body211.us
  %call26721.us = tail call i32 @add_range()
  br label %for.body211.us

cond.false217:                                    ; preds = %entry.split.us
  ret i32 0
}

declare i32 @add_range() local_unnamed_addr
