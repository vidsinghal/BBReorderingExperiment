; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @parse_command_line() {
entry:
  ret i32 0
}

define void @single_thread(i1 %cmp33, i1 %cmp77, ptr %frame, ptr %exception) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %if.then79, %if.end39, %entry
  store volatile i32 0, ptr null, align 4
  call void @process_request_pass1()
  br i1 %cmp33, label %if.then35, label %if.end39

if.then35:                                        ; preds = %while.cond
  %call36 = load volatile ptr, ptr null, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %while.cond
  br i1 %cmp33, label %if.then79, label %while.cond

if.then79:                                        ; preds = %if.end39
  %exception1 = getelementptr i8, ptr %frame, i64 224
  store i32 0, ptr %frame, align 4
  br label %while.cond
}

define void @process_request_pass1() {
entry:
  %call40 = load volatile i32, ptr null, align 4
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %land.lhs.true, label %if.else47

land.lhs.true:                                    ; preds = %entry
  %call43 = load volatile i32, ptr null, align 4
  br label %if.else47

if.else47:                                        ; preds = %land.lhs.true, %entry
  ret void
}
