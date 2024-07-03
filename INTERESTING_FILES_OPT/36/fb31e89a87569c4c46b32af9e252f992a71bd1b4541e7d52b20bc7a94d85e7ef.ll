; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.YYSTYPE = type { ptr }

define i32 @ncgparse(ptr %yydefact, i8 %0, i64 %idx.neg) {
entry:
  br label %do.body3

do.body3:                                         ; preds = %sw.epilog, %entry
  %1 = phi ptr [ %add.ptr1051, %sw.epilog ], [ null, %entry ]
  %cond = icmp eq i8 %0, 0
  br i1 %cond, label %sw.bb644, label %sw.epilog

sw.bb644:                                         ; preds = %do.body3
  %2 = load i64, ptr %1, align 8
  %conv648 = trunc i64 %2 to i32
  br label %for.cond669

for.cond669:                                      ; preds = %for.body672, %sw.bb644
  %3 = phi i32 [ %.pre, %for.body672 ], [ %conv648, %sw.bb644 ]
  %cmp670 = icmp sgt i32 %3, 0
  br i1 %cmp670, label %for.body672, label %sw.epilog

for.body672:                                      ; preds = %for.cond669
  %call676 = call ptr @listget()
  %.pre = load i32, ptr %yydefact, align 4
  br label %for.cond669

sw.epilog:                                        ; preds = %for.cond669, %do.body3
  %add.ptr1051 = getelementptr %union.YYSTYPE, ptr null, i64 %idx.neg
  br label %do.body3
}

declare ptr @listget()
