; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//820/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @ossl_ffc_params_FIPS186_4_gen_verify(ptr %params, i32 %conv170) local_unnamed_addr #0 {
entry:
  %conv170.fr = freeze i32 %conv170
  %tobool3.not.i = icmp eq i32 %conv170.fr, 0
  %q177 = getelementptr i8, ptr %params, i64 8
  br i1 %tobool3.not.i, label %for.cond.us, label %for.cond

for.cond.us:                                      ; preds = %entry, %if.end23.i.us
  %call.i.us = tail call i32 @EVP_MD_get_size()
  %cmp18.i.us = icmp slt i32 %call.i.us, 0
  br i1 %cmp18.i.us, label %if.then19.i.us, label %if.end23.i.us

if.then19.i.us:                                   ; preds = %for.cond.us
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull dereferenceable(4294967295) null, i8 0, i64 4294967295, i1 false)
  br label %if.end23.i.us

if.end23.i.us:                                    ; preds = %if.then19.i.us, %for.cond.us
  %call31.i.us = load volatile ptr, ptr null, align 4294967296
  %call178.us = load volatile i32, ptr %q177, align 4
  br label %for.cond.us

for.cond:                                         ; preds = %entry, %for.cond
  %call.i = tail call i32 @EVP_MD_get_size()
  %call4.i = load volatile i32, ptr null, align 4294967296
  %call178 = load volatile i32, ptr %q177, align 4
  br label %for.cond
}

declare i32 @EVP_MD_get_size() local_unnamed_addr

define noundef i32 @generate_q_fips186_4(i32 %generate_seed) local_unnamed_addr {
entry:
  %call = tail call i32 @EVP_MD_get_size()
  %tobool3.not = icmp eq i32 %generate_seed, 0
  br i1 %tobool3.not, label %if.end6, label %land.lhs.true

common.ret:                                       ; preds = %if.end23, %land.lhs.true
  ret i32 0

land.lhs.true:                                    ; preds = %entry
  %call4 = load volatile i32, ptr null, align 4294967296
  br label %common.ret

if.end6:                                          ; preds = %entry
  %cmp18 = icmp slt i32 %call, 0
  br i1 %cmp18, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull dereferenceable(4294967295) null, i8 0, i64 4294967295, i1 false)
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end6
  %call31 = load volatile ptr, ptr null, align 4294967296
  br label %common.ret
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noreturn }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
