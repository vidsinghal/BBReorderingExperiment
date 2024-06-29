; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//522/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nounwind
define void @xnn_qs8_dwconv_minmax_fp32_ukernel_up16x25__avx2_mul16_vpmovsx(i64 %channels, i64 %input_offset) local_unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %input_offset to ptr
  %cmp291.not1 = icmp eq i64 %channels, 0
  br i1 %cmp291.not1, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %add12 = or i64 %input_offset, 1
  %1 = inttoptr i64 %add12 to ptr
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %c.03 = phi i64 [ %sub, %for.body ], [ %channels, %for.body.preheader ]
  %i1.02 = phi ptr [ %add.ptr313, %for.body ], [ %1, %for.body.preheader ]
  %call303 = load volatile <4 x i64>, ptr null, align 4294967296
  %call305 = load volatile <4 x i64>, ptr null, align 4294967296
  %call306 = load volatile <4 x i64>, ptr null, align 4294967296
  %call307 = load volatile <2 x i64>, ptr %i1.02, align 16
  %add.ptr313 = getelementptr i8, ptr %i1.02, i64 16
  %sub = add i64 %c.03, 1
  %cmp291.not = icmp eq i64 %sub, 0
  br i1 %cmp291.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %i0.0.lcssa = phi ptr [ %0, %entry ], [ null, %for.body ]
  %call682 = load volatile <2 x i64>, ptr %i0.0.lcssa, align 16
  %call683 = load volatile <4 x i64>, ptr null, align 4294967296
  ret void
}

attributes #0 = { nofree norecurse nounwind }
