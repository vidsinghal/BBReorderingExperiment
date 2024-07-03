; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare ptr @sam_hdr_read()

define i32 @tv_pl_func(ptr %data, ptr %my_mvprintw, i1 %tobool26, i1 %cmp7, i64 %cp.0, i1 %cmp13) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %cond.end34, %entry
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br i1 %cmp13, label %land.lhs.true15, label %if.end24

land.lhs.true15:                                  ; preds = %for.body
  %0 = load ptr, ptr %data, align 8
  call void (ptr, i32, i32, ptr, ...) %0(ptr null, i32 0, i32 0, ptr null, i64 0)
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true15, %for.body
  br i1 %tobool26, label %cond.true27, label %cond.end34

cond.true27:                                      ; preds = %if.end24
  %1 = load i8, ptr %data, align 1
  %conv32 = sext i8 %1 to i32
  br label %cond.end34

cond.end34:                                       ; preds = %cond.true27, %if.end24
  %cond35 = phi i32 [ %conv32, %cond.true27 ], [ 0, %if.end24 ]
  %my_mvaddch = getelementptr i8, ptr %data, i64 152
  %2 = load ptr, ptr %my_mvaddch, align 8
  call void %2(ptr null, i32 0, i32 0, i32 %cond35)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %3 = load ptr, ptr %data, align 8
  call void (ptr, i32, i32, ptr, ...) %3(ptr null, i32 0, i32 0, ptr null, i64 0)
  unreachable
}

declare ptr @fai_load()
