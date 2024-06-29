; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//58/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nounwind
define noundef i32 @base_tv_init(ptr nocapture writeonly %tv, i1 %cmp.not, i1 %cmp1.not) local_unnamed_addr #0 {
entry:
  br i1 %cmp.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  store volatile i32 0, ptr null, align 4294967296
  unreachable

if.end:                                           ; preds = %entry
  br i1 %cmp1.not, label %if.else3, label %if.end4

if.else3:                                         ; preds = %if.end
  store volatile i32 0, ptr null, align 4294967296
  unreachable

if.end4:                                          ; preds = %if.end
  store ptr null, ptr %tv, align 8
  store volatile i32 0, ptr null, align 4294967296
  unreachable
}

attributes #0 = { nofree norecurse noreturn nounwind }
