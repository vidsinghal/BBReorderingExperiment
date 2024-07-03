; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @pcfWriteFont(ptr %pFont) {
entry:
  br label %for.cond495

for.cond495:                                      ; preds = %for.cond495, %entry
  %call514 = call i32 @pcfPutLSB32(ptr %pFont)
  br label %for.cond495
}

define i32 @pcfPutLSB32(ptr %file) {
entry:
  %0 = load i32, ptr %file, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  store ptr null, ptr %file, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load ptr, ptr %file, align 8
  %call = call i32 %1(i32 0, ptr null)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %2 = load i32, ptr inttoptr (i64 8 to ptr), align 8
  %tobool6.not = icmp eq i32 %2, 0
  br i1 %tobool6.not, label %cond.end18, label %cond.true7

cond.true7:                                       ; preds = %cond.end
  store ptr null, ptr %file, align 8
  br label %cond.end18

cond.end18:                                       ; preds = %cond.true7, %cond.end
  %output47 = getelementptr i8, ptr %file, i64 8216
  %3 = load ptr, ptr %output47, align 8
  %call51 = call i32 %3(i32 0, ptr null)
  ret i32 0
}

!llvm.ident = !{}
