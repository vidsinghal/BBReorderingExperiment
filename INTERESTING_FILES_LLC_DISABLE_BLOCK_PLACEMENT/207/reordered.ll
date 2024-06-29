; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//207/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noalias noundef ptr @spdk_json_write_begin(i1 %cmp, ptr nocapture writeonly %call1) local_unnamed_addr #0 {
entry:
  br i1 %cmp, label %cleanup, label %if.end

cleanup:                                          ; preds = %if.end, %entry
  ret ptr null

if.end:                                           ; preds = %entry
  store ptr null, ptr %call1, align 8
  %first_value = getelementptr i8, ptr %call1, i64 25
  store i8 0, ptr %first_value, align 1
  br label %cleanup
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noundef i32 @begin_value(ptr nocapture writeonly %w) local_unnamed_addr #0 {
entry:
  %first_value28 = getelementptr i8, ptr %w, i64 25
  store i8 0, ptr %first_value28, align 1
  %new_indent29 = getelementptr i8, ptr %w, i64 24
  store i8 0, ptr %new_indent29, align 8
  ret i32 0
}

declare i32 @__snprintf_chk(ptr, ...) local_unnamed_addr

; Function Attrs: ssp
define noundef i32 @spdk_json_write_uint16(ptr nocapture writeonly %w) local_unnamed_addr #1 {
entry:
  %buf = alloca [32 x i8], align 16
  %first_value28.i = getelementptr i8, ptr %w, i64 25
  store i8 0, ptr %first_value28.i, align 1
  %new_indent29.i = getelementptr i8, ptr %w, i64 24
  store i8 0, ptr %new_indent29.i, align 8
  %call2 = call i32 (ptr, ...) @__snprintf_chk(ptr nonnull %buf)
  %call8 = load volatile i32, ptr null, align 4294967296
  ret i32 0
}

; Function Attrs: ssp
define noundef i32 @spdk_json_write_uint32(ptr nocapture writeonly %w) local_unnamed_addr #1 {
entry:
  %buf = alloca [32 x i8], align 16
  %first_value28.i = getelementptr i8, ptr %w, i64 25
  store i8 0, ptr %first_value28.i, align 1
  %new_indent29.i = getelementptr i8, ptr %w, i64 24
  store i8 0, ptr %new_indent29.i, align 8
  %call2 = call i32 (ptr, ...) @__snprintf_chk(ptr nonnull %buf)
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
attributes #1 = { ssp }
