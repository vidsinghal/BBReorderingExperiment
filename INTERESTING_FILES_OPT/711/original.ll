; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//711/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nounwind
define noundef i64 @nghttp2_hd_inflate_hd_nv(ptr %inflater, ptr nocapture readnone %inflate_flags) local_unnamed_addr #0 {
entry:
  %cmp.not8 = icmp eq ptr %inflater, null
  br i1 %cmp.not8, label %cleanup435, label %for.body.us.preheader

for.body.us.preheader:                            ; preds = %entry
  %inflater.promoted10 = load i32, ptr %inflater, align 4
  switch i32 %inflater.promoted10, label %cleanup435 [
    i32 0, label %if.else.us26.peel
    i32 1, label %if.else.us26.peel
    i32 2, label %if.else.us26.peel
    i32 6, label %sw.bb155.us
    i32 5, label %sw.bb155.us
  ]

if.else.us26.peel:                                ; preds = %for.body.us.preheader, %for.body.us.preheader, %for.body.us.preheader
  store i32 0, ptr %inflater, align 4
  br label %if.else.us26

if.else.us26:                                     ; preds = %if.else.us26, %if.else.us26.peel
  br label %if.else.us26, !llvm.loop !0

sw.bb155.us:                                      ; preds = %for.body.us.preheader, %for.body.us.preheader
  store volatile i32 0, ptr null, align 4294967296
  br label %cleanup435

cleanup435:                                       ; preds = %for.body.us.preheader, %entry, %sw.bb155.us
  ret i64 0
}

attributes #0 = { nofree norecurse nounwind }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
