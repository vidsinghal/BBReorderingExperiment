; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//56/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define void @init_class(ptr nocapture %c) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %c, align 8
  %string_length1 = getelementptr i8, ptr %c, i64 80
  store ptr null, ptr %string_length1, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = load ptr, ptr %1, align 8
  %get_native_type3 = getelementptr i8, ptr %c, i64 112
  store ptr %2, ptr %get_native_type3, align 8
  %make_clone47 = getelementptr i8, ptr %c, i64 312
  store ptr null, ptr %make_clone47, align 8
  ret void
}

; Function Attrs: nofree norecurse nounwind
define noundef i32 @value_count(i32 %call2) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store volatile i32 0, ptr null, align 4294967296
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) }
attributes #1 = { nofree norecurse nounwind }
