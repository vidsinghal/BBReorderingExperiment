; ModuleID = 'reduced.bc'
source_filename = "/local-ssd/libicd-ufsfiwjhnzdgnqc6gwab65tokvidxwgd-build/aidengro/spack-stage-libicd-main-ufsfiwjhnzdgnqc6gwab65tokvidxwgd/spack-src/src/jpeg12-6b/jquant1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare void @jinit_1pass_quantizer_12()

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #0

define void @quantize_fs_dither(ptr %cinfo, i32 %0, ptr %1) {
entry:
  call void @llvm.lifetime.start.p0(i64 0, ptr null)
  %2 = load i32, ptr %cinfo, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end69, %entry
  call void @jzero_far_12()
  br label %for.cond2

for.cond2:                                        ; preds = %for.body5, %for.cond
  %ci.0 = phi i32 [ 0, %for.cond ], [ 1, %for.body5 ]
  %cmp3 = icmp slt i32 %ci.0, %2
  br i1 %cmp3, label %for.body5, label %for.end69

for.body5:                                        ; preds = %for.cond2
  %cmp29.not = icmp eq i32 %0, 0
  br i1 %cmp29.not, label %for.cond2, label %for.body31

for.body31:                                       ; preds = %for.body5
  ret void

for.end69:                                        ; preds = %for.cond2
  %on_odd_row72 = getelementptr i8, ptr %1, i64 144
  store i32 0, ptr %on_odd_row72, align 8
  br label %for.cond
}

declare void @jzero_far_12()

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
