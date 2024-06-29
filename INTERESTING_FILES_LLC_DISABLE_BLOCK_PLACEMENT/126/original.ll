; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//126/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write)
define noundef i32 @xmlDetectCharEncoding__internal_alias(ptr nocapture readonly %in, i1 %cmp1, i1 %cmp59) local_unnamed_addr #0 {
entry:
  br i1 %cmp1, label %if.end20, label %common.ret

if.end20:                                         ; preds = %entry
  %0 = load i8, ptr %in, align 1
  %cmp23 = icmp eq i8 %0, 0
  br i1 %cmp23, label %common.ret, label %if.end41

common.ret:                                       ; preds = %if.end41, %if.end20, %entry
  ret i32 0

if.end41:                                         ; preds = %if.end20
  tail call void @llvm.assume(i1 %cmp59)
  br label %common.ret
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define noalias noundef ptr @xmlGetEncodingAlias__internal_alias() local_unnamed_addr #1 {
entry:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define noalias noundef ptr @xmlGetCharEncodingName__internal_alias() local_unnamed_addr #1 {
entry:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define noalias noundef ptr @xmlNewCharEncodingHandler__internal_alias() local_unnamed_addr #1 {
entry:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define noalias noundef ptr @xmlGetCharEncodingHandler__internal_alias() local_unnamed_addr #1 {
entry:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define noalias noundef ptr @xmlFindCharEncodingHandler__internal_alias() local_unnamed_addr #1 {
entry:
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
