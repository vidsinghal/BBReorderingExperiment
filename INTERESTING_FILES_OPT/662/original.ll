; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//662/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @gk_strstr_replace(ptr nocapture readonly %replacement, i64 %call12, i1 %cmp2.not.not) local_unnamed_addr #0 {
entry:
  %call12.fr = freeze i64 %call12
  %cmp651.not = icmp eq i64 %call12.fr, 0
  br i1 %cmp651.not, label %do.body, label %do.body.us.preheader

do.body.us.preheader:                             ; preds = %entry
  %xtraiter = and i64 %call12.fr, 7
  %0 = icmp ult i64 %call12.fr, 8
  %unroll_iter = and i64 %call12.fr, -8
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %do.body.us

do.body.us:                                       ; preds = %do.body.us.preheader, %for.cond.for.end_crit_edge.us
  %call13.us = tail call i32 @regexec()
  br i1 %0, label %for.cond.for.end_crit_edge.us.unr-lcssa, label %sw.default.us

sw.default.us:                                    ; preds = %do.body.us, %sw.default.us
  %niter = phi i64 [ %niter.next.7, %sw.default.us ], [ 0, %do.body.us ]
  %1 = load ptr, ptr %replacement, align 8
  store i8 0, ptr %1, align 1
  %2 = load ptr, ptr %replacement, align 8
  store i8 0, ptr %2, align 1
  %3 = load ptr, ptr %replacement, align 8
  store i8 0, ptr %3, align 1
  %4 = load ptr, ptr %replacement, align 8
  store i8 0, ptr %4, align 1
  %5 = load ptr, ptr %replacement, align 8
  store i8 0, ptr %5, align 1
  %6 = load ptr, ptr %replacement, align 8
  store i8 0, ptr %6, align 1
  %7 = load ptr, ptr %replacement, align 8
  store i8 0, ptr %7, align 1
  %8 = load ptr, ptr %replacement, align 8
  store i8 0, ptr %8, align 1
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %for.cond.for.end_crit_edge.us.unr-lcssa, label %sw.default.us

for.cond.for.end_crit_edge.us.unr-lcssa:          ; preds = %sw.default.us, %do.body.us
  br i1 %lcmp.mod.not, label %for.cond.for.end_crit_edge.us, label %sw.default.us.epil

sw.default.us.epil:                               ; preds = %for.cond.for.end_crit_edge.us.unr-lcssa, %sw.default.us.epil
  %epil.iter = phi i64 [ %epil.iter.next, %sw.default.us.epil ], [ 0, %for.cond.for.end_crit_edge.us.unr-lcssa ]
  %9 = load ptr, ptr %replacement, align 8
  store i8 0, ptr %9, align 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.cond.for.end_crit_edge.us, label %sw.default.us.epil, !llvm.loop !0

for.cond.for.end_crit_edge.us:                    ; preds = %sw.default.us.epil, %for.cond.for.end_crit_edge.us.unr-lcssa
  tail call void @llvm.assume(i1 %cmp2.not.not)
  br label %do.body.us

do.body:                                          ; preds = %entry, %do.body
  %call13 = tail call i32 @regexec()
  tail call void @llvm.assume(i1 %cmp2.not.not)
  br label %do.body
}

declare i32 @regexec() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { noreturn "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.unroll.disable"}
