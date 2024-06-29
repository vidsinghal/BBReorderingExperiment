; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//456/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.1 = local_unnamed_addr constant [3 x i8] c"/?\00"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write)
define noundef i32 @main(ptr nocapture readonly %argv, ptr nocapture readonly %0, ptr nocapture readonly %1) local_unnamed_addr #0 {
entry:
  %2 = load i8, ptr %1, align 1
  %.not = icmp eq i8 %2, 47
  br i1 %.not, label %sub_1, label %entry.tail

sub_1:                                            ; preds = %entry
  %3 = getelementptr inbounds i8, ptr %1, i64 1
  %4 = load i8, ptr %3, align 1
  %.not1 = icmp eq i8 %4, 63
  br i1 %.not1, label %sub_2, label %entry.tail

sub_2:                                            ; preds = %sub_1
  %5 = getelementptr inbounds i8, ptr %1, i64 2
  %6 = load i8, ptr %5, align 1
  %7 = icmp ne i8 %6, 0
  br label %entry.tail

entry.tail:                                       ; preds = %entry, %sub_1, %sub_2
  %cmp4 = phi i1 [ true, %entry ], [ true, %sub_1 ], [ %7, %sub_2 ]
  tail call void @llvm.assume(i1 %cmp4)
  %.pre = load i8, ptr %0, align 1
  %cmp23 = icmp eq i8 %.pre, 1
  br i1 %cmp23, label %for.cond.us, label %entry.tail.split

for.cond.us:                                      ; preds = %entry.tail, %for.cond.us
  br label %for.cond.us

entry.tail.split:                                 ; preds = %entry.tail
  %8 = load i8, ptr %argv, align 1
  %cmp30 = icmp eq i8 %8, 1
  br i1 %cmp30, label %for.cond, label %if.else33

for.cond:                                         ; preds = %entry.tail.split, %for.cond
  br label %for.cond

if.else33:                                        ; preds = %entry.tail.split
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
