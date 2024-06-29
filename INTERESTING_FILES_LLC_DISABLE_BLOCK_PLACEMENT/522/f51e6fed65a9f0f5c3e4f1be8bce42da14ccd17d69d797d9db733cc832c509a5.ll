; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_qs8_dwconv_minmax_fp32_ukernel_up16x25__avx2_mul16_vpmovsx(i64 %channels, i64 %input_offset) {
entry:
  %0 = inttoptr i64 %input_offset to ptr
  %add12 = or i64 %input_offset, 1
  %1 = inttoptr i64 %add12 to ptr
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i0.0 = phi ptr [ %0, %entry ], [ null, %for.body ]
  %i1.0 = phi ptr [ %1, %entry ], [ %add.ptr313, %for.body ]
  %c.0 = phi i64 [ %channels, %entry ], [ %sub, %for.body ]
  %cmp291.not = icmp eq i64 %c.0, 0
  br i1 %cmp291.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %call303 = load volatile <4 x i64>, ptr null, align 32
  %call305 = load volatile <4 x i64>, ptr null, align 32
  %call306 = load volatile <4 x i64>, ptr null, align 32
  %call307 = load volatile <2 x i64>, ptr %i1.0, align 16
  %add.ptr313 = getelementptr i8, ptr %i1.0, i64 16
  %sub = add i64 %c.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call682 = load volatile <2 x i64>, ptr %i0.0, align 16
  %call683 = load volatile <4 x i64>, ptr null, align 32
  ret void
}
