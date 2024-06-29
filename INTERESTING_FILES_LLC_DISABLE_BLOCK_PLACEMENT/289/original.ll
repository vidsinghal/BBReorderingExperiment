; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//289/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @mbedtls_hmac_drbg_update_ret(i1 %cmp12.not, i1 %cmp41.not, i1 %cmp16.not) local_unnamed_addr {
entry:
  %cmp12.not.fr = freeze i1 %cmp12.not
  br i1 %cmp12.not.fr, label %entry.split.us, label %for.cond

entry.split.us:                                   ; preds = %entry
  %cmp16.not.fr = freeze i1 %cmp16.not
  br i1 %cmp16.not.fr, label %entry.split.us.split.us, label %for.cond.us

entry.split.us.split.us:                          ; preds = %entry.split.us
  %cmp41.not.fr = freeze i1 %cmp41.not
  br i1 %cmp41.not.fr, label %for.cond.us.us.us, label %for.cond.us.us

for.cond.us.us.us:                                ; preds = %entry.split.us.split.us, %for.cond.us.us.us
  %call111.us.us.us = tail call i32 @mbedtls_md_hmac_reset()
  %call151.us.us.us = load volatile i32, ptr null, align 4294967296
  %call403.us.us.us = load volatile i32, ptr null, align 4294967296
  br label %for.cond.us.us.us

for.cond.us.us:                                   ; preds = %entry.split.us.split.us
  %call111.us.us = tail call i32 @mbedtls_md_hmac_reset()
  %call151.us.us = load volatile i32, ptr null, align 4294967296
  %call403.us.us = load volatile i32, ptr null, align 4294967296
  br label %exit

for.cond.us:                                      ; preds = %entry.split.us
  %call111.us = tail call i32 @mbedtls_md_hmac_reset()
  %call151.us = load volatile i32, ptr null, align 4294967296
  br label %exit

for.cond:                                         ; preds = %entry
  %call111 = tail call i32 @mbedtls_md_hmac_reset()
  br label %exit

exit:                                             ; preds = %for.cond.us, %for.cond.us.us, %for.cond
  ret i32 0
}

declare i32 @mbedtls_md_hmac_reset() local_unnamed_addr
