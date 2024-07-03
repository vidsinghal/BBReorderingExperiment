; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//480/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i32 @FASTCOVER_checkParameters(ptr, i32) local_unnamed_addr

define noundef i64 @FASTCOVER_ctx_init(double %splitPoint) local_unnamed_addr {
entry:
  %call = load volatile i64, ptr null, align 4294967296
  %cmp15 = fcmp olt double %splitPoint, 0.000000e+00
  br i1 %cmp15, label %cond.true17, label %cond.end28

lor.lhs.false:                                    ; preds = %cond.end28
  %call47 = load volatile i32, ptr null, align 4294967296
  br label %common.ret

common.ret:                                       ; preds = %lor.lhs.false, %cond.end28
  ret i64 0

cond.true17:                                      ; preds = %entry
  %call18 = tail call i64 @COVER_sum()
  br label %cond.end28

cond.end28:                                       ; preds = %cond.true17, %entry
  %cmp30 = icmp eq i64 %call, 0
  br i1 %cmp30, label %common.ret, label %lor.lhs.false
}

; Function Attrs: noreturn
define noundef i64 @ZDICT_optimizeTrainFromBuffer_fastCover(ptr nocapture readnone %parameters, double %0, i1 %cmp148, ptr nocapture readonly %ctx) local_unnamed_addr #0 {
entry:
  %cmp15.i = fcmp olt double %0, 0.000000e+00
  %f186 = getelementptr i8, ptr %ctx, i64 68
  %cmp148.fr = freeze i1 %cmp148
  br i1 %cmp148.fr, label %entry.split.us, label %entry.split

for.body150.us.preheader:                         ; preds = %for.body150.lr.ph.split.us.sink.split, %for.cond.us, %for.cond.us.us
  br label %for.body150.us

lor.lhs.false.i.us9:                              ; preds = %for.cond.us3
  %call47.i.us10 = load volatile i32, ptr null, align 4294967296
  br label %for.cond.us3.backedge

for.cond.us3.backedge:                            ; preds = %lor.lhs.false.i.us9, %for.cond.us3
  br label %for.cond.us3

entry.split:                                      ; preds = %entry
  br i1 %cmp15.i, label %for.cond.us3, label %for.cond

entry.split.us:                                   ; preds = %entry
  %call.i.us.us = load volatile i64, ptr null, align 4294967296
  br i1 %cmp15.i, label %for.cond.us.us, label %for.cond.us

for.cond.us:                                      ; preds = %entry.split.us
  %cmp30.i.us = icmp eq i64 %call.i.us.us, 0
  br i1 %cmp30.i.us, label %for.body150.us.preheader, label %for.body150.lr.ph.split.us.sink.split

for.cond.backedge:                                ; preds = %for.cond, %lor.lhs.false.i
  br label %for.cond

for.cond:                                         ; preds = %entry.split, %for.cond.backedge
  %call.i = load volatile i64, ptr null, align 4294967296
  %cmp30.i = icmp eq i64 %call.i, 0
  br i1 %cmp30.i, label %for.cond.backedge, label %lor.lhs.false.i

for.cond.us.us:                                   ; preds = %entry.split.us
  %call18.i.us.us = tail call i64 @COVER_sum()
  %cmp30.i.us.us = icmp eq i64 %call.i.us.us, 0
  br i1 %cmp30.i.us.us, label %for.body150.us.preheader, label %for.body150.lr.ph.split.us.sink.split

for.cond.us3:                                     ; preds = %entry.split, %for.cond.us3.backedge
  %call.i.us4 = load volatile i64, ptr null, align 4294967296
  %call18.i.us6 = tail call i64 @COVER_sum()
  %cmp30.i.us8 = icmp eq i64 %call.i.us4, 0
  br i1 %cmp30.i.us8, label %for.cond.us3.backedge, label %lor.lhs.false.i.us9

lor.lhs.false.i:                                  ; preds = %for.cond
  %call47.i = load volatile i32, ptr null, align 4294967296
  br label %for.cond.backedge

for.body150.lr.ph.split.us.sink.split:            ; preds = %for.cond.us, %for.cond.us.us
  %call47.i.us = load volatile i32, ptr null, align 4294967296
  br label %for.body150.us.preheader

for.body150.us:                                   ; preds = %for.body150.us.preheader, %for.body150.us
  %1 = load i32, ptr %f186, align 4
  %call187.us = tail call i32 @FASTCOVER_checkParameters(ptr null, i32 %1)
  br label %for.body150.us
}

declare i64 @COVER_sum() local_unnamed_addr

attributes #0 = { noreturn }
