; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES//274/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i64 @cs_cl_reach(ptr %G, i1 %cmp4, i64 %0) local_unnamed_addr {
entry:
  %cmp = icmp ne i64 %0, 0
  %brmerge.not = select i1 %cmp, i1 %cmp4, i1 false
  br i1 %brmerge.not, label %lor.lhs.false5, label %common.ret

common.ret:                                       ; preds = %lor.lhs.false5, %entry
  ret i64 0

lor.lhs.false5:                                   ; preds = %entry
  %call = tail call i64 @cs_cl_dfs(i64 0, ptr %G)
  br label %common.ret
}

declare i64 @cs_cl_dfs(i64, ptr) local_unnamed_addr
