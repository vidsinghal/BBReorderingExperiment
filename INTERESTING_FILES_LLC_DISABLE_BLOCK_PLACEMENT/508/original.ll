; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//508/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define void @init_class(ptr nocapture %c, ptr nocapture %0) local_unnamed_addr #0 {
entry:
  store ptr null, ptr %0, align 8
  %1 = load ptr, ptr %c, align 8
  %next_offset3 = getelementptr i8, ptr %c, i64 72
  store ptr null, ptr %next_offset3, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = load ptr, ptr %2, align 8
  %byte_count5 = getelementptr i8, ptr %c, i64 96
  store ptr %3, ptr %byte_count5, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = load ptr, ptr %4, align 8
  %next47 = getelementptr i8, ptr %c, i64 272
  store ptr %5, ptr %next47, align 8
  %6 = load ptr, ptr %0, align 8
  %7 = load ptr, ptr %6, align 8
  %compare49 = getelementptr i8, ptr %c, i64 280
  store ptr %7, ptr %compare49, align 8
  %8 = load ptr, ptr %0, align 8
  %9 = load ptr, ptr %8, align 8
  %unpack_double_element51 = getelementptr i8, ptr %c, i64 288
  store ptr %9, ptr %unpack_double_element51, align 8
  %10 = load ptr, ptr %0, align 8
  %11 = load ptr, ptr %10, align 8
  %make_clone57 = getelementptr i8, ptr %c, i64 312
  store ptr %11, ptr %make_clone57, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noundef i32 @unpack_string(i1 %cmp) local_unnamed_addr #1 {
entry:
  br i1 %cmp, label %common.ret, label %if.end

common.ret:                                       ; preds = %if.end, %entry
  ret i32 0

if.end:                                           ; preds = %entry
  %call2 = load volatile ptr, ptr null, align 4294967296
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) }
attributes #1 = { mustprogress nofree norecurse nounwind willreturn }
