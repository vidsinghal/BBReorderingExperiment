; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//543/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@switch.table.move_one_frag = private unnamed_addr constant [11 x ptr] [ptr @move_boxed, ptr @move_boxed, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @move_boxed, ptr @move_boxed, ptr @move_boxed], align 8

; Function Attrs: noreturn
define void @erts_move_multi_frags(ptr %hpp) local_unnamed_addr #0 {
entry:
  %cmp.not1.i = icmp eq ptr %hpp, null
  %overhead22.i = getelementptr i8, ptr %hpp, i64 8
  br i1 %cmp.not1.i, label %entry.split.us, label %while.body.i

entry.split.us:                                   ; preds = %entry
  store i64 0, ptr %overhead22.i, align 8
  br label %for.cond.us

for.cond.us:                                      ; preds = %for.cond.us, %entry.split.us
  br label %for.cond.us

while.body.i:                                     ; preds = %entry, %while.body.i.backedge
  %0 = load i64, ptr %hpp, align 8
  %call.i = tail call ptr @move_boxed()
  %1 = icmp ult i64 %0, 11
  br i1 %1, label %switch.lookup, label %while.cond.backedge.i

switch.lookup:                                    ; preds = %while.body.i
  %switch.gep = getelementptr inbounds [11 x ptr], ptr @switch.table.move_one_frag, i64 0, i64 %0
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %switch.lookup, %while.body.i
  %ptr.0.be.i = phi ptr [ null, %while.body.i ], [ %switch.load, %switch.lookup ]
  %cmp.not.i = icmp eq ptr %ptr.0.be.i, %hpp
  br i1 %cmp.not.i, label %move_one_frag.exit.loopexit, label %while.body.i.backedge

while.body.i.backedge:                            ; preds = %while.cond.backedge.i, %move_one_frag.exit.loopexit
  br label %while.body.i

move_one_frag.exit.loopexit:                      ; preds = %while.cond.backedge.i
  store i64 0, ptr %overhead22.i, align 8
  br label %while.body.i.backedge
}

define void @move_one_frag(ptr nocapture readnone %hpp, ptr %off_heap) local_unnamed_addr {
entry:
  %cmp.not1 = icmp eq ptr %off_heap, null
  br i1 %cmp.not1, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.cond.backedge
  %0 = load i64, ptr %off_heap, align 8
  %call = tail call ptr @move_boxed()
  %1 = icmp ult i64 %0, 11
  br i1 %1, label %switch.lookup, label %while.cond.backedge

switch.lookup:                                    ; preds = %while.body
  %switch.gep = getelementptr inbounds [11 x ptr], ptr @switch.table.move_one_frag, i64 0, i64 %0
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %switch.lookup, %while.body
  %ptr.0.be = phi ptr [ null, %while.body ], [ %switch.load, %switch.lookup ]
  %cmp.not = icmp eq ptr %ptr.0.be, %off_heap
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.cond.backedge, %entry
  %overhead22 = getelementptr i8, ptr %off_heap, i64 8
  store i64 0, ptr %overhead22, align 8
  ret void
}

declare ptr @move_boxed()

attributes #0 = { noreturn }
