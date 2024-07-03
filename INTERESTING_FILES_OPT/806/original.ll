; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//806/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noalias noundef nonnull ptr @trie_new_from_cstring_array_sorted(ptr nocapture readonly %strings, ptr nocapture writeonly %call1) local_unnamed_addr #0 {
entry:
  %vals = getelementptr i8, ptr %call1, i64 32
  br label %for.cond

for.cond:                                         ; preds = %kh_put_str_uint32.exit, %entry
  %0 = load i32, ptr inttoptr (i64 12 to ptr), align 4
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %if.then.i, label %if.end14.i

if.then.i:                                        ; preds = %for.cond
  %1 = load i32, ptr %strings, align 8
  %cmp1.not.i = icmp eq i32 %1, 0
  br i1 %cmp1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  %call.i = tail call i32 @kh_resize_str_uint32(i32 1)
  br label %kh_put_str_uint32.exit

if.else.i:                                        ; preds = %if.then.i
  %call8.i = tail call i32 @kh_resize_str_uint32(i32 0)
  br label %kh_put_str_uint32.exit

if.end14.i:                                       ; preds = %for.cond
  %call18.i = tail call i32 @__ac_X31_hash_string()
  br label %kh_put_str_uint32.exit

kh_put_str_uint32.exit:                           ; preds = %if.then2.i, %if.else.i, %if.end14.i
  store i32 0, ptr %vals, align 4
  br label %for.cond
}

declare i32 @kh_resize_str_uint32(i32) local_unnamed_addr

define noundef i32 @kh_put_str_uint32(ptr nocapture readonly %h) local_unnamed_addr {
entry:
  %0 = load i32, ptr inttoptr (i64 12 to ptr), align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %h, align 8
  %cmp1.not = icmp eq i32 %1, 0
  br i1 %cmp1.not, label %if.else, label %if.then2

common.ret:                                       ; preds = %if.end14, %if.else, %if.then2
  ret i32 0

if.then2:                                         ; preds = %if.then
  %call = tail call i32 @kh_resize_str_uint32(i32 1)
  br label %common.ret

if.else:                                          ; preds = %if.then
  %call8 = tail call i32 @kh_resize_str_uint32(i32 0)
  br label %common.ret

if.end14:                                         ; preds = %entry
  %call18 = tail call i32 @__ac_X31_hash_string()
  br label %common.ret
}

declare i32 @__ac_X31_hash_string() local_unnamed_addr

attributes #0 = { noreturn }
