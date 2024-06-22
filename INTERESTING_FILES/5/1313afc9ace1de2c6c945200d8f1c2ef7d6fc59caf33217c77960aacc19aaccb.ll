; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @ngx_http_lua_ssl_sess_store_by_lua(i1 %cmp, i1 %tobool.not, i1 %not.cmp) {
entry:
  %not.cmp1 = xor i1 %cmp, false
  %brmerge = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %brmerge, label %common.ret, label %if.end2

common.ret:                                       ; preds = %if.end2, %entry
  ret ptr null

if.end2:                                          ; preds = %entry
  %call = load volatile i64, ptr null, align 8
  br label %common.ret
}
