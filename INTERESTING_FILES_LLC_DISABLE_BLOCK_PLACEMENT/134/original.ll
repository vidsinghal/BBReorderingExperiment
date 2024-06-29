; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//134/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define void @run_tests() local_unnamed_addr #0 {
entry:
  ret void
}

define void @encode_null(i1 %cmp.not, i1 %cmp20.not, i1 %cmp28.not) local_unnamed_addr {
entry:
  %call1 = tail call ptr @json_dumps()
  br i1 %cmp.not, label %if.end, label %common.ret

common.ret:                                       ; preds = %if.end26, %entry
  ret void

if.end:                                           ; preds = %entry
  br i1 %cmp20.not, label %if.end26, label %do.body22

do.body22:                                        ; preds = %if.end
  %call23 = tail call i32 (...) @fprintf()
  unreachable

if.end26:                                         ; preds = %if.end
  %call275 = load volatile i32, ptr null, align 4294967296
  br i1 %cmp28.not, label %common.ret, label %do.body30

do.body30:                                        ; preds = %if.end26
  %call31 = load volatile i32, ptr null, align 4294967296
  %call32 = tail call i32 (...) @fprintf()
  unreachable
}

declare ptr @json_dumps() local_unnamed_addr

declare i32 @fprintf(...) local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define void @encode_twice() local_unnamed_addr #0 {
entry:
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
