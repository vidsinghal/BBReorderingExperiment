; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//175/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define ptr @string_alloc(i64 %length) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %length, 0
  br i1 %cmp, label %cleanup, label %if.end

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi ptr [ %add.ptr, %if.end ], [ undef, %entry ]
  ret ptr %retval.0

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr inttoptr (i64 -16 to ptr), align 16
  %1 = load i64, ptr inttoptr (i64 8 to ptr), align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %1
  br label %cleanup
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define ptr @string_ndup(ptr nocapture writeonly %a_str, i64 %len) local_unnamed_addr #1 {
entry:
  %cmp.i = icmp eq i64 %len, 0
  br i1 %cmp.i, label %if.end, label %string_alloc.exit

if.end:                                           ; preds = %entry, %string_alloc.exit
  %retval.0.i3 = phi ptr [ %add.ptr.i, %string_alloc.exit ], [ undef, %entry ]
  store i8 0, ptr %a_str, align 1
  br label %cleanup

string_alloc.exit:                                ; preds = %entry
  %0 = load ptr, ptr inttoptr (i64 -16 to ptr), align 16
  %1 = load i64, ptr inttoptr (i64 8 to ptr), align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %0, i64 %1
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %cleanup, label %if.end

cleanup:                                          ; preds = %if.end, %string_alloc.exit
  %retval.0.i4 = phi ptr [ %retval.0.i3, %if.end ], [ null, %string_alloc.exit ]
  ret ptr %retval.0.i4
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) }
