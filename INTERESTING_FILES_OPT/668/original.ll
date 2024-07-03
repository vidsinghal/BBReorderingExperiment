; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//668/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i64 @ngx_write_chain_to_file(ptr nocapture %file) local_unnamed_addr #0 {
entry:
  %offset26.i = getelementptr i8, ptr %file, i64 168
  br label %do.body

do.body:                                          ; preds = %ngx_writev_file.exit, %entry
  %0 = load ptr, ptr %file, align 8
  %cmp1.i = icmp eq ptr %0, null
  br i1 %cmp1.i, label %if.then45.i, label %eintr.i.preheader

if.then45.i:                                      ; preds = %do.body, %if.then45.i
  %1 = phi ptr [ %2, %if.then45.i ], [ %file, %do.body ]
  %next.i = getelementptr i8, ptr %1, i64 8
  %2 = load ptr, ptr %next.i, align 8
  %3 = load ptr, ptr %2, align 8
  %cmp.i = icmp eq ptr %3, null
  br i1 %cmp.i, label %if.then45.i, label %eintr.i.preheader

eintr.i.preheader:                                ; preds = %if.then45.i, %do.body
  br label %eintr.i

eintr.i:                                          ; preds = %eintr.i.preheader, %eintr.i
  %call.i = tail call i64 @pwritev64()
  %cmp.i1 = icmp eq i64 %call.i, 0
  br i1 %cmp.i1, label %eintr.i, label %ngx_writev_file.exit

ngx_writev_file.exit:                             ; preds = %eintr.i
  store i64 0, ptr %offset26.i, align 8
  br label %do.body
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define noalias noundef ptr @ngx_chain_to_iovec(ptr nocapture readonly %cl) local_unnamed_addr #1 {
entry:
  %0 = load ptr, ptr %cl, align 8
  %cmp1 = icmp eq ptr %0, null
  br i1 %cmp1, label %if.then45, label %if.else

if.then45:                                        ; preds = %entry, %if.then45
  %1 = phi ptr [ %2, %if.then45 ], [ %cl, %entry ]
  %next = getelementptr i8, ptr %1, i64 8
  %2 = load ptr, ptr %next, align 8
  %3 = load ptr, ptr %2, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then45, label %if.else

if.else:                                          ; preds = %if.then45, %entry
  ret ptr null
}

define noundef i64 @ngx_writev_file(ptr nocapture writeonly %file) local_unnamed_addr {
entry:
  br label %eintr

eintr:                                            ; preds = %eintr, %entry
  %call = tail call i64 @pwritev64()
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %eintr, label %if.end25

if.end25:                                         ; preds = %eintr
  %offset26 = getelementptr i8, ptr %file, i64 168
  store i64 0, ptr %offset26, align 8
  ret i64 0
}

declare i64 @pwritev64() local_unnamed_addr

attributes #0 = { noreturn }
attributes #1 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) }
