; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//141/original.bc'
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
  %string_length5 = getelementptr i8, ptr %c, i64 80
  store ptr %3, ptr %string_length5, align 8
  %clear57 = getelementptr i8, ptr %c, i64 304
  store ptr null, ptr %clear57, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = load ptr, ptr %4, align 8
  %make_clone59 = getelementptr i8, ptr %c, i64 312
  store ptr %5, ptr %make_clone59, align 8
  ret void
}

define noundef i32 @unpack_long(ptr nocapture writeonly %val, ptr nocapture writeonly %len, i1 %tobool.not) local_unnamed_addr {
entry:
  %call21 = tail call ptr @grib_find_accessor()
  store i64 0, ptr %val, align 8
  store i64 0, ptr %len, align 8
  br i1 %tobool.not, label %common.ret, label %if.end

common.ret:                                       ; preds = %if.end, %entry
  ret i32 0

if.end:                                           ; preds = %entry
  %call3 = load volatile i64, ptr null, align 4294967296
  br label %common.ret
}

declare ptr @grib_find_accessor() local_unnamed_addr

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) }
