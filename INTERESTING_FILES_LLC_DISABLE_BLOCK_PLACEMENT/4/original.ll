; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//4/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @script_wrapper_visitor_comment_node(i1 %tobool.not, i1 %call, i1 %not.tobool.not) local_unnamed_addr {
entry:
  %brmerge = select i1 %tobool.not, i1 %call, i1 false
  br i1 %brmerge, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (...) @fprintf()
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

declare i32 @fprintf(...) local_unnamed_addr
