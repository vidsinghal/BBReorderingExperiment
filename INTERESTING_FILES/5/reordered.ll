; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//5/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noalias noundef ptr @ngx_http_lua_ssl_sess_store_by_lua(i1 %cmp, i1 %tobool.not, i1 %not.cmp) local_unnamed_addr #0 {
entry:
  %brmerge = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %brmerge, label %common.ret, label %if.end2

if.end2:                                          ; preds = %entry
  %call = load volatile i64, ptr null, align 4294967296
  br label %common.ret

common.ret:                                       ; preds = %if.end2, %entry
  ret ptr null
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
