; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//427/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @pcfWriteFont(ptr nocapture %pFont) local_unnamed_addr #0 {
entry:
  %output47.i = getelementptr i8, ptr %pFont, i64 8216
  br label %for.cond495

for.cond495:                                      ; preds = %pcfPutLSB32.exit, %entry
  %0 = load i32, ptr %pFont, align 8
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

pcfPutLSB32.exit:                                 ; preds = %cond.end.i, %cond.true7.i
  %1 = load ptr, ptr %output47.i, align 8
  %call51.i = tail call i32 %1(i32 0, ptr null)
  br label %for.cond495

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %2 = load i32, ptr inttoptr (i64 8 to ptr), align 8
  %tobool6.not.i = icmp eq i32 %2, 0
  br i1 %tobool6.not.i, label %pcfPutLSB32.exit, label %cond.true7.i

cond.true.i:                                      ; preds = %for.cond495
  store ptr null, ptr %pFont, align 8
  br label %cond.end.i

cond.true7.i:                                     ; preds = %cond.end.i
  store ptr null, ptr %pFont, align 8
  br label %pcfPutLSB32.exit

cond.false.i:                                     ; preds = %for.cond495
  %3 = load ptr, ptr %pFont, align 8
  %call.i = tail call i32 %3(i32 0, ptr null)
  br label %cond.end.i
}

define noundef i32 @pcfPutLSB32(ptr nocapture %file) local_unnamed_addr {
entry:
  %0 = load i32, ptr %file, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  store ptr null, ptr %file, align 8
  br label %cond.end

cond.end18:                                       ; preds = %cond.true7, %cond.end
  %output47 = getelementptr i8, ptr %file, i64 8216
  %1 = load ptr, ptr %output47, align 8
  %call51 = tail call i32 %1(i32 0, ptr null)
  ret i32 0

cond.end:                                         ; preds = %cond.false, %cond.true
  %2 = load i32, ptr inttoptr (i64 8 to ptr), align 8
  %tobool6.not = icmp eq i32 %2, 0
  br i1 %tobool6.not, label %cond.end18, label %cond.true7

cond.false:                                       ; preds = %entry
  %3 = load ptr, ptr %file, align 8
  %call = tail call i32 %3(i32 0, ptr null)
  br label %cond.end

cond.true7:                                       ; preds = %cond.end
  store ptr null, ptr %file, align 8
  br label %cond.end18
}

attributes #0 = { noreturn }

!llvm.ident = !{}
