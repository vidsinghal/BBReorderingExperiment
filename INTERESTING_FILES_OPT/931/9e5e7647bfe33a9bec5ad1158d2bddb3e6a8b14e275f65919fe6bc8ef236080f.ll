; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare ptr @OPENSSL_sk_value()

declare ptr @ossl_check_const_CMS_SignerInfo_sk_type()

define i32 @CMS_set1_signers_certs(i32 %flags) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %0 = load ptr, ptr inttoptr (i64 56 to ptr), align 8
  %cmp7.not = icmp eq ptr %0, null
  br i1 %cmp7.not, label %for.cond10, label %for.inc42

for.cond10:                                       ; preds = %for.body14, %for.cond
  %call12 = load volatile i32, ptr null, align 4
  %cmp13 = icmp sgt i32 %call12, 0
  br i1 %cmp13, label %for.body14, label %for.end

for.body14:                                       ; preds = %for.cond10
  %call16 = call ptr @OPENSSL_sk_value()
  br label %for.cond10

for.end:                                          ; preds = %for.cond10
  %and1 = and i32 0, 0
  %tobool.not = icmp eq i32 %flags, 0
  br i1 %tobool.not, label %for.cond26, label %for.inc42

for.cond26:                                       ; preds = %for.cond26, %for.end
  br label %for.cond26

for.inc42:                                        ; preds = %for.end, %for.cond
  br label %for.cond
}
