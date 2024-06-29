; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//360/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define noundef i8 @stream_read_word() local_unnamed_addr #0 {
entry:
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define range(i64 0, 2) i64 @stream_read_bits(ptr nocapture %s, i1 %cmp, i32 %sh_prom28) local_unnamed_addr #1 {
entry:
  %0 = load i8, ptr %s, align 8
  br i1 %cmp, label %do.end, label %if.else23

do.end:                                           ; preds = %entry
  %1 = and i8 %0, 1
  %and = zext nneg i8 %1 to i64
  br label %if.end34

if.else23:                                        ; preds = %entry
  %conv27 = zext i8 %0 to i32
  %shr29 = lshr i32 %conv27, %sh_prom28
  %conv30 = trunc nuw i32 %shr29 to i8
  store i8 %conv30, ptr %s, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.else23, %do.end
  %value.0 = phi i64 [ %and, %do.end ], [ 0, %if.else23 ]
  ret i64 %value.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) }
