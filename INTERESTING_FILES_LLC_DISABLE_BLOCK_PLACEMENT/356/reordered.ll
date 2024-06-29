; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//356/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define ptr @aws_http_proxy_strategy_new_tunneling_kerberos(ptr readnone %call4) local_unnamed_addr #0 {
entry:
  %call41 = load volatile ptr, ptr null, align 4294967296
  %cmp5 = icmp eq ptr %call41, null
  br i1 %cmp5, label %cleanup, label %if.end7

cleanup:                                          ; preds = %if.end7, %entry
  %retval.0 = phi ptr [ %strategy_base16, %if.end7 ], [ null, %entry ]
  ret ptr %retval.0

if.end7:                                          ; preds = %entry
  store ptr null, ptr inttoptr (i64 16 to ptr), align 16
  %strategy_base16 = getelementptr i8, ptr %call4, i64 24
  br label %cleanup
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define ptr @aws_http_proxy_strategy_new_tunneling_ntlm(ptr writeonly %call4, i1 %cmp5) local_unnamed_addr #1 {
entry:
  br i1 %cmp5, label %cleanup, label %if.end7

cleanup:                                          ; preds = %if.end7, %entry
  %retval.0 = phi ptr [ %call4, %if.end7 ], [ null, %entry ]
  ret ptr %retval.0

if.end7:                                          ; preds = %entry
  store ptr null, ptr %call4, align 8
  br label %cleanup
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noalias noundef ptr @aws_http_proxy_strategy_new_tunneling_adaptive(ptr nocapture writeonly %0, i1 %cmp6.not) local_unnamed_addr #0 {
entry:
  br i1 %cmp6.not, label %if.end16, label %if.then7

if.end16:                                         ; preds = %aws_http_proxy_strategy_new_tunneling_kerberos.exit, %entry
  ret ptr null

if.end7.i:                                        ; preds = %if.then7
  store ptr null, ptr inttoptr (i64 16 to ptr), align 16
  br label %aws_http_proxy_strategy_new_tunneling_kerberos.exit

aws_http_proxy_strategy_new_tunneling_kerberos.exit: ; preds = %if.then7, %if.end7.i
  %retval.0.i = phi ptr [ inttoptr (i64 24 to ptr), %if.end7.i ], [ null, %if.then7 ]
  store ptr %retval.0.i, ptr %0, align 8
  br label %if.end16

if.then7:                                         ; preds = %entry
  %call41.i = load volatile ptr, ptr null, align 4294967296
  %cmp5.i = icmp eq ptr %call41.i, null
  br i1 %cmp5.i, label %aws_http_proxy_strategy_new_tunneling_kerberos.exit, label %if.end7.i
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
