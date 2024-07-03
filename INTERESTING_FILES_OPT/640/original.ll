; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//640/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define noundef i32 @parse_command_line() local_unnamed_addr #0 {
entry:
  ret i32 0
}

; Function Attrs: nofree norecurse noreturn nounwind
define void @single_thread(i1 %cmp33, i1 %cmp77, ptr nocapture writeonly %frame, ptr nocapture readnone %exception) local_unnamed_addr #1 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %if.then79, %entry
  store volatile i32 0, ptr null, align 4294967296
  %call40.i = load volatile i32, ptr null, align 4294967296
  %cmp41.i = icmp slt i32 %call40.i, 0
  br i1 %cmp41.i, label %land.lhs.true.i, label %process_request_pass1.exit

land.lhs.true.i:                                  ; preds = %while.cond
  %call43.i = load volatile i32, ptr null, align 4294967296
  br label %process_request_pass1.exit

process_request_pass1.exit:                       ; preds = %while.cond, %land.lhs.true.i
  br i1 %cmp33, label %if.then35, label %if.end39.critedge

if.then35:                                        ; preds = %process_request_pass1.exit
  %call36 = load volatile ptr, ptr null, align 4294967296
  br label %if.end39

if.end39.critedge:                                ; preds = %process_request_pass1.exit, %if.end39
  store volatile i32 0, ptr null, align 4294967296
  %call40.i2 = load volatile i32, ptr null, align 4294967296
  %cmp41.i3 = icmp slt i32 %call40.i2, 0
  br i1 %cmp41.i3, label %land.lhs.true.i4, label %if.end39

land.lhs.true.i4:                                 ; preds = %if.end39.critedge
  %call43.i5 = load volatile i32, ptr null, align 4294967296
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true.i4, %if.end39.critedge, %if.then35
  br i1 %cmp33, label %if.then79, label %if.end39.critedge

if.then79:                                        ; preds = %if.end39
  store i32 0, ptr %frame, align 4
  br label %while.cond
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define void @process_request_pass1() local_unnamed_addr #2 {
entry:
  %call40 = load volatile i32, ptr null, align 4294967296
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %land.lhs.true, label %if.else47

land.lhs.true:                                    ; preds = %entry
  %call43 = load volatile i32, ptr null, align 4294967296
  br label %if.else47

if.else47:                                        ; preds = %land.lhs.true, %entry
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
attributes #1 = { nofree norecurse noreturn nounwind }
attributes #2 = { mustprogress nofree norecurse nounwind willreturn }
