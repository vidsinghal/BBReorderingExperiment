; ModuleID = 'reduced.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/csytf2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @csytf2_(ptr %uplo, ptr %n, ptr %lda, ptr %ipiv, i32 %0, ptr %add.ptr, i32 %1, i1 %cmp703, i1 %cmp751) {
entry:
  br label %L40

L40:                                              ; preds = %if.end847, %if.end741, %entry
  br i1 %cmp703, label %if.then705, label %if.end741

if.then705:                                       ; preds = %L40
  store i32 0, ptr %uplo, align 4
  br label %if.end741

if.end741:                                        ; preds = %if.then705, %L40
  br i1 %cmp751, label %L40, label %if.else766

if.else766:                                       ; preds = %if.end741
  %call773 = call i32 @icamax_()
  br i1 %cmp703, label %if.then803, label %if.end847

if.then803:                                       ; preds = %if.else766
  %call828 = load volatile double, ptr null, align 8
  br label %if.end847

if.end847:                                        ; preds = %if.then803, %if.else766
  %add856 = or i32 %0, 1
  store i32 %add856, ptr %uplo, align 4
  br label %L40
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

declare i32 @lsame_()

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #0

declare double @sqrt()

declare double @r_imag()

declare i32 @icamax_()

declare i32 @sisnan_()

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
