; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//600/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i64 @ngx_http_gzip_body_filter(ptr nocapture %r, i1 %cmp75) local_unnamed_addr {
entry:
  %cmp75.fr = freeze i1 %cmp75
  %last_out = getelementptr i8, ptr %r, i64 32
  br i1 %cmp75.fr, label %for.cond62.us.us, label %entry.split

for.cond62.us.us:                                 ; preds = %entry, %for.cond62.us.us.backedge
  %call63.us.us = tail call i64 @ngx_http_gzip_filter_add_data()
  %0 = load i32, ptr %r, align 4
  %cmp65.us.us = icmp eq i32 %0, 0
  br i1 %cmp65.us.us, label %for.end.split.us.us, label %for.cond62.us.us.backedge

for.cond62.us.us.backedge:                        ; preds = %for.cond62.us.us, %for.end.split.us.us
  br label %for.cond62.us.us

for.end.split.us.us:                              ; preds = %for.cond62.us.us
  store ptr null, ptr %last_out, align 8
  br label %for.cond62.us.us.backedge

entry.split:                                      ; preds = %entry
  %call631 = tail call i64 @ngx_http_gzip_filter_add_data()
  %1 = load i32, ptr %r, align 4
  %cmp652 = icmp eq i32 %1, 0
  br i1 %cmp652, label %for.end.split, label %if.end72

if.end72:                                         ; preds = %for.end.split, %entry.split
  ret i64 0

for.end.split:                                    ; preds = %entry.split, %for.end.split
  store ptr null, ptr %last_out, align 8
  %call63 = tail call i64 @ngx_http_gzip_filter_add_data()
  %2 = load i32, ptr %r, align 4
  %cmp65 = icmp eq i32 %2, 0
  br i1 %cmp65, label %for.end.split, label %if.end72
}

declare i64 @ngx_http_gzip_filter_add_data() local_unnamed_addr
