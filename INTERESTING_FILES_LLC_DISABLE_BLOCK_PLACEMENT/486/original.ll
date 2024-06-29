; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//486/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(readwrite, inaccessiblemem: none)
define void @write_frame_header() local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %emit_dqt.exit, %entry
  %compptr.0 = phi ptr [ null, %entry ], [ %incdec.ptr, %emit_dqt.exit ]
  %quant_tbl_no = getelementptr i8, ptr %compptr.0, i64 16
  %0 = load i32, ptr %quant_tbl_no, align 8
  %idxprom.i = sext i32 %0 to i64
  %arrayidx.i = getelementptr [4 x ptr], ptr inttoptr (i64 96 to ptr), i64 0, i64 %idxprom.i
  %cmp.i = icmp eq ptr %arrayidx.i, null
  br i1 %cmp.i, label %if.then.i, label %emit_dqt.exit

if.then.i:                                        ; preds = %for.cond
  store i32 0, ptr inttoptr (i64 40 to ptr), align 8
  br label %emit_dqt.exit

emit_dqt.exit:                                    ; preds = %for.cond, %if.then.i
  %incdec.ptr = getelementptr i8, ptr %compptr.0, i64 96
  br label %for.cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none)
define noundef i32 @emit_dqt(i32 %index) local_unnamed_addr #1 {
entry:
  %idxprom = sext i32 %index to i64
  %arrayidx = getelementptr [4 x ptr], ptr inttoptr (i64 96 to ptr), i64 0, i64 %idxprom
  %cmp = icmp eq ptr %arrayidx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr inttoptr (i64 40 to ptr), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(readwrite, inaccessiblemem: none) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) }
