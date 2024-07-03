; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//833/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @IDACalcIC(ptr nocapture readonly %ida_mem, i32 %icopt, i1 %cmp117.not) local_unnamed_addr #0 {
entry:
  %cmp117.not.fr = freeze i1 %cmp117.not
  %ida_efun = getelementptr i8, ptr %ida_mem, i64 72
  br i1 %cmp117.not.fr, label %for.cond103.us.us, label %entry.split

for.end156.split:                                 ; preds = %entry.split, %for.end156.split
  %0 = load ptr, ptr %ida_efun, align 8
  %call162 = tail call i32 %0(ptr null, ptr null, ptr null)
  %call1061 = load volatile i32, ptr null, align 4294967296
  %cmp107 = icmp eq i32 %call1061, 0
  br i1 %cmp107, label %for.end156.split, label %for.cond127.preheader

for.cond103.us.us:                                ; preds = %entry, %for.cond103.us.us.backedge
  %call1061.us.us = load volatile i32, ptr null, align 4294967296
  %cmp107.us.us = icmp eq i32 %call1061.us.us, 0
  br i1 %cmp107.us.us, label %for.end156.split.us.us, label %for.cond103.us.us.backedge

for.end156.split.us.us:                           ; preds = %for.cond103.us.us
  %1 = load ptr, ptr %ida_efun, align 8
  %call162.us = tail call i32 %1(ptr null, ptr null, ptr null)
  br label %for.cond103.us.us.backedge

for.cond103.us.us.backedge:                       ; preds = %for.cond103.us.us, %for.end156.split.us.us
  br label %for.cond103.us.us

for.cond127:                                      ; preds = %for.cond127.preheader, %for.cond127
  br label %for.cond127

for.cond127.preheader:                            ; preds = %for.end156.split, %entry.split
  br label %for.cond127

entry.split:                                      ; preds = %entry
  %call10611 = load volatile i32, ptr null, align 4294967296
  %cmp1072 = icmp eq i32 %call10611, 0
  br i1 %cmp1072, label %for.end156.split, label %for.cond127.preheader
}

attributes #0 = { noreturn }
