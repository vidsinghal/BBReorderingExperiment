; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @mbedtls_hmac_drbg_update_ret(ptr %additional, i1 %cmp2) {
entry:
  %cmp = icmp ne ptr %additional, null
  %0 = and i1 %cmp, %cmp2
  br i1 %0, label %if.then30, label %common.ret

common.ret:                                       ; preds = %if.then30, %entry
  ret i32 0

if.then30:                                        ; preds = %entry
  %call32 = call i32 @mbedtls_md_hmac_update()
  br label %common.ret
}

declare i32 @mbedtls_md_hmac_update()
