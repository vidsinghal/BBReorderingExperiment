; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//61/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write)
define noundef double @rd_hdr_histogram_mean() local_unnamed_addr #0 {
entry:
  %0 = load i64, ptr inttoptr (i64 64 to ptr), align 64
  %cmp.i = icmp slt i64 %0, 0
  br i1 %cmp.i, label %if.end.i, label %rd_hdr_iter_next.exit

rd_hdr_iter_next.exit:                            ; preds = %entry, %if.end12.i
  ret double 0.000000e+00

if.then9.i:                                       ; preds = %if.end.i
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.end.i
  %1 = phi i32 [ 1, %if.then9.i ], [ 0, %if.end.i ]
  %2 = load i32, ptr inttoptr (i64 52 to ptr), align 4
  %cmp14.i = icmp sge i32 %1, %2
  tail call void @llvm.assume(i1 %cmp14.i)
  br label %rd_hdr_iter_next.exit

if.end.i:                                         ; preds = %entry
  %3 = load i32, ptr inttoptr (i64 48 to ptr), align 16
  %tobool8.not.i = icmp eq i32 %3, 0
  br i1 %tobool8.not.i, label %if.end12.i, label %if.then9.i, !prof !0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: write)
define noundef i32 @rd_hdr_iter_next(ptr nocapture writeonly %it) local_unnamed_addr #1 {
entry:
  %0 = load i64, ptr inttoptr (i64 64 to ptr), align 64
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.end, label %common.ret

if.end12:                                         ; preds = %if.then9, %if.end
  %1 = phi i32 [ 1, %if.then9 ], [ 0, %if.end ]
  %2 = load i32, ptr inttoptr (i64 52 to ptr), align 4
  %cmp14 = icmp sge i32 %1, %2
  tail call void @llvm.assume(i1 %cmp14)
  br label %common.ret

if.end:                                           ; preds = %entry
  %3 = load i32, ptr inttoptr (i64 48 to ptr), align 16
  %tobool8.not = icmp eq i32 %3, 0
  br i1 %tobool8.not, label %if.end12, label %if.then9, !prof !0

if.then9:                                         ; preds = %if.end
  store i32 0, ptr %it, align 8
  br label %if.end12

common.ret:                                       ; preds = %if.end12, %entry
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!0 = !{!"branch_weights", i32 2000, i32 1}
