; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @write_frame_header() {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %compptr.0 = phi ptr [ null, %entry ], [ %incdec.ptr, %for.cond ]
  %quant_tbl_no = getelementptr i8, ptr %compptr.0, i64 16
  %0 = load i32, ptr %quant_tbl_no, align 8
  %call = call i32 @emit_dqt(i32 %0)
  %incdec.ptr = getelementptr i8, ptr %compptr.0, i64 96
  br label %for.cond
}

define i32 @emit_dqt(i32 %index) {
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
