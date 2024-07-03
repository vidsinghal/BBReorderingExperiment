; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//262/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @novel_spliceends_trim5_anti(ptr nocapture writeonly %max_prob, i64 %middle_genomicpos, i1 %cmp334.not.old) local_unnamed_addr {
entry:
  br i1 %cmp334.not.old, label %common.ret, label %while.body337

while.body337.backedge:                           ; preds = %if.else365, %while.body337, %if.then369
  br label %while.body337

if.else365:                                       ; preds = %while.body337
  %call3662 = load volatile i32, ptr null, align 4294967296
  %cmp367 = icmp eq i32 %call3662, 0
  br i1 %cmp367, label %if.then369, label %while.body337.backedge

while.body337:                                    ; preds = %entry, %while.body337.backedge
  %call338 = tail call double @Maxent_hr_acceptor_prob()
  %cmp339 = fcmp ult double %call338, 0.000000e+00
  br i1 %cmp339, label %while.body337.backedge, label %if.else365

if.then369:                                       ; preds = %if.else365
  store i32 0, ptr %max_prob, align 4
  br label %while.body337.backedge

common.ret:                                       ; preds = %entry
  ret i32 0
}

declare double @Maxent_hr_acceptor_prob() local_unnamed_addr
