; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @ossl_ffc_params_FIPS186_4_gen_verify(ptr %params, i32 %conv170) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %call171 = call i32 @generate_q_fips186_4(i32 %conv170)
  %q177 = getelementptr i8, ptr %params, i64 8
  %call178 = load volatile i32, ptr %q177, align 4
  br label %for.cond
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

declare i32 @EVP_MD_get_size()

define i32 @generate_q_fips186_4(i32 %generate_seed) {
entry:
  %call = call i32 @EVP_MD_get_size()
  %tobool3.not = icmp eq i32 %generate_seed, 0
  br i1 %tobool3.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call4 = load volatile i32, ptr null, align 4
  ret i32 0

if.end6:                                          ; preds = %entry
  %cmp18 = icmp slt i32 %call, 0
  br i1 %cmp18, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end6
  call void @llvm.memset.p0.i64(ptr null, i8 0, i64 4294967295, i1 false)
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end6
  %call31 = load volatile ptr, ptr null, align 8
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
