; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//219/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @gt_tyrsearch(i1 %verbose, ptr readnone %err, i1 %tobool.not) local_unnamed_addr {
entry:
  br i1 %tobool.not, label %do.end, label %lor.lhs.false

if.then6:                                         ; preds = %do.end
  store volatile i32 0, ptr null, align 4294967296
  br label %common.ret

do.end:                                           ; preds = %entry
  %cmp = icmp ne ptr %err, null
  %brmerge.not = and i1 %cmp, %verbose
  br i1 %brmerge.not, label %if.then6, label %common.ret

lor.lhs.false:                                    ; preds = %entry
  %call2 = load volatile i1, ptr null, align 4294967296
  br i1 %verbose, label %if.then, label %common.ret

if.then:                                          ; preds = %lor.lhs.false
  %call23 = tail call i32 (...) @fprintf()
  unreachable

common.ret:                                       ; preds = %lor.lhs.false, %if.then6, %do.end
  ret i32 0
}

declare i32 @fprintf(...) local_unnamed_addr
