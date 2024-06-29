; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @aws_http_proxy_strategy_new_tunneling_kerberos(ptr %call4) {
entry:
  %call41 = load volatile ptr, ptr null, align 8
  %cmp5 = icmp eq ptr %call41, null
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %entry
  store ptr null, ptr inttoptr (i64 16 to ptr), align 8
  %strategy_base16 = getelementptr i8, ptr %call4, i64 24
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry
  %retval.0 = phi ptr [ %strategy_base16, %if.end7 ], [ null, %entry ]
  ret ptr %retval.0
}

define ptr @aws_http_proxy_strategy_new_tunneling_ntlm(ptr %call4, i1 %cmp5) {
entry:
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %entry
  store ptr null, ptr %call4, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry
  %retval.0 = phi ptr [ %call4, %if.end7 ], [ null, %entry ]
  ret ptr %retval.0
}

define ptr @aws_http_proxy_strategy_new_tunneling_adaptive(ptr %0, i1 %cmp6.not) {
entry:
  br i1 %cmp6.not, label %if.end16, label %if.then7

if.then7:                                         ; preds = %entry
  %call91 = call ptr @aws_http_proxy_strategy_new_tunneling_kerberos(ptr null)
  store ptr %call91, ptr %0, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then7, %entry
  ret ptr null
}
