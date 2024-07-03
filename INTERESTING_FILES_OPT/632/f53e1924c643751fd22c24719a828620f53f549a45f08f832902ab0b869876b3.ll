; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @libxsmm_generator_packed_trsm_avx_avx512_kernel(i32 %conv35, i32 %0, i1 %cmp235.not) {
entry:
  br label %for.cond224

for.cond224:                                      ; preds = %if.end239, %entry
  call void @compact_load_matrix2_(i32 %conv35)
  br i1 %cmp235.not, label %if.end239, label %if.then237

if.then237:                                       ; preds = %for.cond224
  call void @compact_load_matrix2_(i32 %conv35)
  br label %if.end239

if.end239:                                        ; preds = %if.then237, %for.cond224
  %cmp276.not = icmp eq i32 %0, 0
  br i1 %cmp276.not, label %for.cond224, label %if.then278

if.then278:                                       ; preds = %if.end239
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

declare i32 @strcmp()

define void @compact_load_matrix2_(i32 %datasize) {
entry:
  call void @llvm.lifetime.start.p0(i64 0, ptr null)
  %cond = icmp eq i32 %datasize, 0
  br i1 %cond, label %common.ret, label %if.then

common.ret:                                       ; preds = %if.then, %entry
  ret void

if.then:                                          ; preds = %entry
  store volatile i32 0, ptr null, align 4
  br label %common.ret
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
