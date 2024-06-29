; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//264/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@use_sock_cloexec = internal unnamed_addr global i1 false

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define void @fdevent_socket_nb_cloexec_init() local_unnamed_addr #0 {
entry:
  store i1 true, ptr @use_sock_cloexec, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noundef i32 @fdevent_socket_cloexec() local_unnamed_addr #1 {
entry:
  %.b = load i1, ptr @use_sock_cloexec, align 1
  br i1 %.b, label %if.then, label %common.ret

common.ret:                                       ; preds = %if.then, %entry
  ret i32 0

if.then:                                          ; preds = %entry
  %call = load volatile i32, ptr null, align 4294967296
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) }
attributes #1 = { mustprogress nofree norecurse nounwind willreturn }
