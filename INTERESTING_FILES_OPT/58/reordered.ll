; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//58/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @tv_pl_func(ptr nocapture readonly %data, ptr nocapture readnone %my_mvprintw, i1 %tobool26, i1 %cmp7, i64 %cp.0, i1 %cmp13) local_unnamed_addr #0 {
entry:
  %tobool26.fr = freeze i1 %tobool26
  br i1 %cmp7, label %for.body.lr.ph, label %for.end

for.end:                                          ; preds = %entry
  %.pre = load ptr, ptr %data, align 8
  tail call void (ptr, i32, i32, ptr, ...) %.pre(ptr null, i32 0, i32 0, ptr null, i64 0)
  unreachable

for.body.lr.ph:                                   ; preds = %entry
  %my_mvaddch = getelementptr i8, ptr %data, i64 152
  br i1 %cmp13, label %for.body.lr.ph.split.us, label %for.body.lr.ph.split

for.body.us.us7:                                  ; preds = %for.body.lr.ph.split.us, %for.body.us.us7
  %0 = load ptr, ptr %data, align 8
  tail call void (ptr, i32, i32, ptr, ...) %0(ptr null, i32 0, i32 0, ptr null, i64 0)
  %1 = load ptr, ptr %my_mvaddch, align 8
  tail call void %1(ptr null, i32 0, i32 0, i32 0)
  br label %for.body.us.us7

for.body.us1.us:                                  ; preds = %for.body.lr.ph.split, %for.body.us1.us
  %2 = load i8, ptr %data, align 1
  %conv32.us3.us = sext i8 %2 to i32
  %3 = load ptr, ptr %my_mvaddch, align 8
  tail call void %3(ptr null, i32 0, i32 0, i32 %conv32.us3.us)
  br label %for.body.us1.us

for.body.us.us.us:                                ; preds = %for.body.lr.ph.split.us, %for.body.us.us.us
  %4 = load ptr, ptr %data, align 8
  tail call void (ptr, i32, i32, ptr, ...) %4(ptr null, i32 0, i32 0, ptr null, i64 0)
  %5 = load i8, ptr %data, align 1
  %conv32.us.us.us = sext i8 %5 to i32
  %6 = load ptr, ptr %my_mvaddch, align 8
  tail call void %6(ptr null, i32 0, i32 0, i32 %conv32.us.us.us)
  br label %for.body.us.us.us

for.body.us6:                                     ; preds = %for.body.lr.ph.split, %for.body.us6
  %7 = load ptr, ptr %my_mvaddch, align 8
  tail call void %7(ptr null, i32 0, i32 0, i32 0)
  br label %for.body.us6

for.body.lr.ph.split.us:                          ; preds = %for.body.lr.ph
  br i1 %tobool26.fr, label %for.body.us.us.us, label %for.body.us.us7

for.body.lr.ph.split:                             ; preds = %for.body.lr.ph
  br i1 %tobool26.fr, label %for.body.us1.us, label %for.body.us6
}

attributes #0 = { noreturn }
