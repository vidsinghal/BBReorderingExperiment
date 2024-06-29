; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//548/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_qs8_dwconv_minmax_fp32_ukernel_up8x9__sse41_mul16_add16(ptr nocapture readonly %input, ptr nocapture readonly %weights, i1 %cmp99) local_unnamed_addr {
entry:
  br i1 %cmp99, label %for.body, label %for.end

for.end:                                          ; preds = %entry
  %call235 = tail call <2 x i64> @_mm_loadu_si128()
  %0 = load i64, ptr %input, align 1
  %vecinit1.i7 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %0, i64 0
  %call242 = tail call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> %vecinit1.i7)
  %1 = load i64, ptr %input, align 1
  %vecinit1.i8 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %1, i64 0
  %call248 = tail call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> %vecinit1.i8)
  ret void

for.body:                                         ; preds = %entry
  %2 = load ptr, ptr %weights, align 8
  %3 = load i64, ptr %input, align 1
  %vecinit1.i = insertelement <2 x i64> <i64 poison, i64 0>, i64 %3, i64 0
  %call103 = tail call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> %vecinit1.i)
  %4 = load i64, ptr %input, align 1
  %vecinit1.i1 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %4, i64 0
  %call107 = tail call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> %vecinit1.i1)
  %5 = load i64, ptr %input, align 1
  %vecinit1.i2 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %5, i64 0
  %call111 = tail call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> %vecinit1.i2)
  %6 = load i64, ptr %input, align 1
  %vecinit1.i3 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %6, i64 0
  %call115 = tail call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> %vecinit1.i3)
  %7 = load i64, ptr %2, align 1
  %vecinit1.i4 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %7, i64 0
  %call125 = tail call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> %vecinit1.i4)
  %8 = load i64, ptr %input, align 1
  %vecinit1.i5 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %8, i64 0
  %call129 = tail call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> %vecinit1.i5)
  %9 = load i64, ptr %input, align 1
  %vecinit1.i6 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %9, i64 0
  %call133 = tail call <2 x i64> @_mm_cvtepi8_epi16(<2 x i64> %vecinit1.i6)
  unreachable
}

declare <2 x i64> @_mm_loadu_si128() local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define <2 x i64> @_mm_loadl_epi64(ptr nocapture readonly %__p) local_unnamed_addr #0 {
entry:
  %0 = load i64, ptr %__p, align 1
  %vecinit1 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %0, i64 0
  ret <2 x i64> %vecinit1
}

declare <2 x i64> @_mm_cvtepi8_epi16(<2 x i64>) local_unnamed_addr

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) }
