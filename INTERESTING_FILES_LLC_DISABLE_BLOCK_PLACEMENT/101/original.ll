; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//101/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noundef i32 @cgemlq_(ptr nocapture writeonly %info, i32 %0, i1 %cmp51) local_unnamed_addr #0 {
entry:
  %cmp43 = icmp sgt i32 %0, -1
  %brmerge.not = select i1 %cmp43, i1 %cmp51, i1 false
  br i1 %brmerge.not, label %if.end102, label %if.end102.sink.split

if.end102.sink.split:                             ; preds = %entry
  %not.cmp43 = xor i1 %cmp43, true
  %.mux = zext i1 %not.cmp43 to i32
  store i32 %.mux, ptr %info, align 4
  br label %if.end102

if.end102:                                        ; preds = %entry, %if.end102.sink.split
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
