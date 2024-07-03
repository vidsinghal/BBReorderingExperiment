; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Tyrsearchinfo = type { ptr, ptr, ptr, ptr, i64, i32, i32, ptr }

define void @singleseqtyrsearch(ptr %tyrcountinfo, ptr %tyrsearchinfo, i64 %0) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %1 = load i64, ptr null, align 8
  %call = call i64 @gt_containsspecialbytestring(ptr %tyrcountinfo, i64 %0)
  %searchstrand = getelementptr %struct.Tyrsearchinfo, ptr %tyrsearchinfo, i32 0, i32 6
  %2 = load i32, ptr %searchstrand, align 4
  store volatile i32 0, ptr null, align 4
  %searchstrand15 = getelementptr %struct.Tyrsearchinfo, ptr %tyrsearchinfo, i32 0, i32 6
  %3 = load i32, ptr %searchstrand15, align 4
  %tobool17 = icmp ne i32 %3, 0
  br i1 %tobool17, label %if.then18, label %while.cond

if.then18:                                        ; preds = %while.cond
  ret void
}

define i64 @gt_containsspecialbytestring(ptr %seq, i64 %len) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %sptr.0 = phi ptr [ %seq, %entry ], [ inttoptr (i64 1 to ptr), %for.body ]
  %add.ptr1 = getelementptr i8, ptr %seq, i64 %len
  %cmp2 = icmp ult ptr %sptr.0, %add.ptr1
  br i1 %cmp2, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %sptr.0, align 1
  %cmp3.not = icmp eq i8 %0, 0
  br i1 %cmp3.not, label %for.cond, label %cleanup

cleanup:                                          ; preds = %for.body, %for.cond
  ret i64 0
}
