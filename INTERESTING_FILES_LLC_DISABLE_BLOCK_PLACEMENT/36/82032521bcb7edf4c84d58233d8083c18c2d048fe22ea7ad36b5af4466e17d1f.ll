; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @ncgparse(ptr %incdec.ptr1055, i64 %conv1080, ptr %yyvsp.0) #0 {
entry:
  br label %yysetstate

yysetstate:                                       ; preds = %sw.epilog, %entry
  %yystate.0 = phi i64 [ 0, %entry ], [ %conv1080, %sw.epilog ]
  switch i64 %yystate.0, label %sw.epilog [
    i64 253, label %sw.bb1033
    i64 0, label %sw.bb1033
  ]

sw.bb1033:                                        ; preds = %yysetstate, %yysetstate
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1033, %yysetstate
  %yyval.sroa.0.0.in = phi ptr [ %incdec.ptr1055, %sw.bb1033 ], [ %yyvsp.0, %yysetstate ]
  %yyval.sroa.0.0 = load ptr, ptr %yyval.sroa.0.0.in, align 8
  store ptr %yyval.sroa.0.0, ptr %incdec.ptr1055, align 8
  br label %yysetstate
}

attributes #0 = { "target-cpu"="x86-64" }
