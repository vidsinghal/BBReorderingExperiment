; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @block_cipher_df(ptr %data, i64 %data_len, i1 %cmp21.not, i1 %cmp31, i32 %inc45, ptr %arrayidx38) {
entry:
  br i1 %cmp21.not, label %for.cond25, label %common.ret

common.ret:                                       ; preds = %for.cond25, %entry
  ret i32 0

for.cond25:                                       ; preds = %while.end, %entry
  %j.04 = phi i32 [ %add63, %while.end ], [ 0, %entry ]
  %cmp26 = icmp ult i32 %j.04, 48
  br i1 %cmp26, label %while.cond, label %common.ret

while.cond:                                       ; preds = %for.end46, %for.cond25
  br i1 %cmp31, label %for.cond33, label %while.end

for.cond33:                                       ; preds = %for.body36, %while.cond
  br i1 %cmp21.not, label %for.body36, label %for.end46

for.body36:                                       ; preds = %for.cond33
  store i8 0, ptr %data, align 1
  br label %for.cond33

for.end46:                                        ; preds = %for.cond33
  %call52 = call i32 @mbedtls_aes_crypt_ecb()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %add63 = or i32 %inc45, 1
  br label %for.cond25
}

declare i32 @mbedtls_aes_crypt_ecb()
