; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//176/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nounwind
define noundef i32 @RSA_padding_add_X931(ptr nocapture writeonly %to, i32 %tlen) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %tlen, 2
  br i1 %cmp, label %if.then, label %if.end

if.then3:                                         ; preds = %if.end
  store i8 0, ptr %to, align 1
  br label %common.ret

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq i32 %tlen, 2
  br i1 %cmp2, label %if.then3, label %common.ret

common.ret:                                       ; preds = %if.then3, %if.end
  ret i32 0

if.then:                                          ; preds = %entry
  store volatile i32 0, ptr null, align 4294967296
  unreachable
}

attributes #0 = { nofree norecurse nounwind }
