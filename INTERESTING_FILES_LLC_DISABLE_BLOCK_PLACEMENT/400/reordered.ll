; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//400/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define noundef i32 @ztgsja_(ptr nocapture %tola) local_unnamed_addr #0 {
if.then488.1:
  %0 = load double, ptr %tola, align 8
  %cmp555.1 = fcmp ult double %0, 0.000000e+00
  br i1 %cmp555.1, label %if.then488.2, label %common.ret

if.then488.6:                                     ; preds = %if.then488.5
  %1 = load double, ptr %tola, align 8
  %cmp555.6 = fcmp ult double %1, 0.000000e+00
  br i1 %cmp555.6, label %if.then488.7, label %common.ret

if.then488.7:                                     ; preds = %if.then488.6
  %2 = load double, ptr %tola, align 8
  %cmp555.7 = fcmp ult double %2, 0.000000e+00
  br i1 %cmp555.7, label %if.then488.8, label %common.ret

if.then488.25:                                    ; preds = %if.then488.24
  %3 = load double, ptr %tola, align 8
  %cmp555.25 = fcmp ult double %3, 0.000000e+00
  br i1 %cmp555.25, label %if.then488.26, label %common.ret

if.then488.4:                                     ; preds = %if.then488.3
  %4 = load double, ptr %tola, align 8
  %cmp555.4 = fcmp ult double %4, 0.000000e+00
  br i1 %cmp555.4, label %if.then488.5, label %common.ret

if.then488.20:                                    ; preds = %if.then488.19
  %5 = load double, ptr %tola, align 8
  %cmp555.20 = fcmp ult double %5, 0.000000e+00
  br i1 %cmp555.20, label %if.then488.21, label %common.ret

if.then488.8:                                     ; preds = %if.then488.7
  %6 = load double, ptr %tola, align 8
  %cmp555.8 = fcmp ult double %6, 0.000000e+00
  br i1 %cmp555.8, label %if.then488.9, label %common.ret

if.then488.32:                                    ; preds = %if.then488.31
  %7 = load double, ptr %tola, align 8
  %cmp555.32 = fcmp ult double %7, 0.000000e+00
  br i1 %cmp555.32, label %if.then488.33, label %common.ret

if.then488.15:                                    ; preds = %if.then488.14
  %8 = load double, ptr %tola, align 8
  %cmp555.15 = fcmp ult double %8, 0.000000e+00
  br i1 %cmp555.15, label %if.then488.16, label %common.ret

if.then488.38:                                    ; preds = %if.then488.37
  %9 = load double, ptr %tola, align 8
  %cmp555.38 = fcmp ult double %9, 0.000000e+00
  br i1 %cmp555.38, label %if.then488.39, label %common.ret

if.then488.14:                                    ; preds = %if.then488.13
  %10 = load double, ptr %tola, align 8
  %cmp555.14 = fcmp ult double %10, 0.000000e+00
  br i1 %cmp555.14, label %if.then488.15, label %common.ret

if.then488.30:                                    ; preds = %if.then488.29
  %11 = load double, ptr %tola, align 8
  %cmp555.30 = fcmp ult double %11, 0.000000e+00
  br i1 %cmp555.30, label %if.then488.31, label %common.ret

if.then488.36:                                    ; preds = %if.then488.35
  %12 = load double, ptr %tola, align 8
  %cmp555.36 = fcmp ult double %12, 0.000000e+00
  br i1 %cmp555.36, label %if.then488.37, label %common.ret

if.then488.35:                                    ; preds = %if.then488.34
  %13 = load double, ptr %tola, align 8
  %cmp555.35 = fcmp ult double %13, 0.000000e+00
  br i1 %cmp555.35, label %if.then488.36, label %common.ret

if.then488.12:                                    ; preds = %if.then488.11
  %14 = load double, ptr %tola, align 8
  %cmp555.12 = fcmp ult double %14, 0.000000e+00
  br i1 %cmp555.12, label %if.then488.13, label %common.ret

for.inc559.40:                                    ; preds = %if.then488.40
  store i32 0, ptr %tola, align 4
  br label %common.ret

if.then488.34:                                    ; preds = %if.then488.33
  %15 = load double, ptr %tola, align 8
  %cmp555.34 = fcmp ult double %15, 0.000000e+00
  br i1 %cmp555.34, label %if.then488.35, label %common.ret

if.then488.16:                                    ; preds = %if.then488.15
  %16 = load double, ptr %tola, align 8
  %cmp555.16 = fcmp ult double %16, 0.000000e+00
  br i1 %cmp555.16, label %if.then488.17, label %common.ret

if.then488.19:                                    ; preds = %if.then488.18
  %17 = load double, ptr %tola, align 8
  %cmp555.19 = fcmp ult double %17, 0.000000e+00
  br i1 %cmp555.19, label %if.then488.20, label %common.ret

if.then488.9:                                     ; preds = %if.then488.8
  %18 = load double, ptr %tola, align 8
  %cmp555.9 = fcmp ult double %18, 0.000000e+00
  br i1 %cmp555.9, label %if.then488.10, label %common.ret

common.ret:                                       ; preds = %if.then488.1, %if.then488.2, %if.then488.3, %if.then488.4, %if.then488.5, %if.then488.6, %if.then488.7, %if.then488.8, %if.then488.9, %if.then488.10, %if.then488.11, %if.then488.12, %if.then488.13, %if.then488.14, %if.then488.15, %if.then488.16, %if.then488.17, %if.then488.18, %if.then488.19, %if.then488.20, %if.then488.21, %if.then488.22, %if.then488.23, %if.then488.24, %if.then488.25, %if.then488.26, %if.then488.27, %if.then488.28, %if.then488.29, %if.then488.30, %if.then488.31, %if.then488.32, %if.then488.33, %if.then488.34, %if.then488.35, %if.then488.36, %if.then488.37, %if.then488.38, %if.then488.39, %if.then488.40, %for.inc559.40
  ret i32 0

if.then488.18:                                    ; preds = %if.then488.17
  %19 = load double, ptr %tola, align 8
  %cmp555.18 = fcmp ult double %19, 0.000000e+00
  br i1 %cmp555.18, label %if.then488.19, label %common.ret

if.then488.23:                                    ; preds = %if.then488.22
  %20 = load double, ptr %tola, align 8
  %cmp555.23 = fcmp ult double %20, 0.000000e+00
  br i1 %cmp555.23, label %if.then488.24, label %common.ret

if.then488.37:                                    ; preds = %if.then488.36
  %21 = load double, ptr %tola, align 8
  %cmp555.37 = fcmp ult double %21, 0.000000e+00
  br i1 %cmp555.37, label %if.then488.38, label %common.ret

if.then488.39:                                    ; preds = %if.then488.38
  %22 = load double, ptr %tola, align 8
  %cmp555.39 = fcmp ult double %22, 0.000000e+00
  br i1 %cmp555.39, label %if.then488.40, label %common.ret

if.then488.26:                                    ; preds = %if.then488.25
  %23 = load double, ptr %tola, align 8
  %cmp555.26 = fcmp ult double %23, 0.000000e+00
  br i1 %cmp555.26, label %if.then488.27, label %common.ret

if.then488.11:                                    ; preds = %if.then488.10
  %24 = load double, ptr %tola, align 8
  %cmp555.11 = fcmp ult double %24, 0.000000e+00
  br i1 %cmp555.11, label %if.then488.12, label %common.ret

if.then488.3:                                     ; preds = %if.then488.2
  %25 = load double, ptr %tola, align 8
  %cmp555.3 = fcmp ult double %25, 0.000000e+00
  br i1 %cmp555.3, label %if.then488.4, label %common.ret

if.then488.29:                                    ; preds = %if.then488.28
  %26 = load double, ptr %tola, align 8
  %cmp555.29 = fcmp ult double %26, 0.000000e+00
  br i1 %cmp555.29, label %if.then488.30, label %common.ret

if.then488.21:                                    ; preds = %if.then488.20
  %27 = load double, ptr %tola, align 8
  %cmp555.21 = fcmp ult double %27, 0.000000e+00
  br i1 %cmp555.21, label %if.then488.22, label %common.ret

if.then488.31:                                    ; preds = %if.then488.30
  %28 = load double, ptr %tola, align 8
  %cmp555.31 = fcmp ult double %28, 0.000000e+00
  br i1 %cmp555.31, label %if.then488.32, label %common.ret

if.then488.13:                                    ; preds = %if.then488.12
  %29 = load double, ptr %tola, align 8
  %cmp555.13 = fcmp ult double %29, 0.000000e+00
  br i1 %cmp555.13, label %if.then488.14, label %common.ret

if.then488.17:                                    ; preds = %if.then488.16
  %30 = load double, ptr %tola, align 8
  %cmp555.17 = fcmp ult double %30, 0.000000e+00
  br i1 %cmp555.17, label %if.then488.18, label %common.ret

if.then488.22:                                    ; preds = %if.then488.21
  %31 = load double, ptr %tola, align 8
  %cmp555.22 = fcmp ult double %31, 0.000000e+00
  br i1 %cmp555.22, label %if.then488.23, label %common.ret

if.then488.10:                                    ; preds = %if.then488.9
  %32 = load double, ptr %tola, align 8
  %cmp555.10 = fcmp ult double %32, 0.000000e+00
  br i1 %cmp555.10, label %if.then488.11, label %common.ret

if.then488.33:                                    ; preds = %if.then488.32
  %33 = load double, ptr %tola, align 8
  %cmp555.33 = fcmp ult double %33, 0.000000e+00
  br i1 %cmp555.33, label %if.then488.34, label %common.ret

if.then488.40:                                    ; preds = %if.then488.39
  %34 = load double, ptr %tola, align 8
  %cmp555.40 = fcmp ult double %34, 0.000000e+00
  br i1 %cmp555.40, label %for.inc559.40, label %common.ret

if.then488.27:                                    ; preds = %if.then488.26
  %35 = load double, ptr %tola, align 8
  %cmp555.27 = fcmp ult double %35, 0.000000e+00
  br i1 %cmp555.27, label %if.then488.28, label %common.ret

if.then488.24:                                    ; preds = %if.then488.23
  %36 = load double, ptr %tola, align 8
  %cmp555.24 = fcmp ult double %36, 0.000000e+00
  br i1 %cmp555.24, label %if.then488.25, label %common.ret

if.then488.2:                                     ; preds = %if.then488.1
  %37 = load double, ptr %tola, align 8
  %cmp555.2 = fcmp ult double %37, 0.000000e+00
  br i1 %cmp555.2, label %if.then488.3, label %common.ret

if.then488.5:                                     ; preds = %if.then488.4
  %38 = load double, ptr %tola, align 8
  %cmp555.5 = fcmp ult double %38, 0.000000e+00
  br i1 %cmp555.5, label %if.then488.6, label %common.ret

if.then488.28:                                    ; preds = %if.then488.27
  %39 = load double, ptr %tola, align 8
  %cmp555.28 = fcmp ult double %39, 0.000000e+00
  br i1 %cmp555.28, label %if.then488.29, label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) }
