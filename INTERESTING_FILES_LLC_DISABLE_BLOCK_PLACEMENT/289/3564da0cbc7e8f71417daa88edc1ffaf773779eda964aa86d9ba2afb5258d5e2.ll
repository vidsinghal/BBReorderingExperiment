; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @mbedtls_hmac_drbg_update_ret(i1 %cmp12.not, i1 %cmp41.not, i1 %cmp16.not) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %if.end37, %entry
  %call111 = call i32 @mbedtls_md_hmac_reset()
  br i1 %cmp12.not, label %if.end, label %exit

if.end:                                           ; preds = %for.cond
  %call151 = load volatile i32, ptr null, align 4
  br i1 %cmp16.not, label %if.end37, label %exit

if.end37:                                         ; preds = %if.end
  %call403 = load volatile i32, ptr null, align 4
  br i1 %cmp41.not, label %for.cond, label %exit

exit:                                             ; preds = %if.end37, %if.end, %for.cond
  ret i32 0
}

declare i32 @mbedtls_md_hmac_reset()
