; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @MESH_Recv_Attribute(i32 %call3) {
entry:
  switch i32 %call3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 5, label %common.ret
  ]

sw.bb:                                            ; preds = %entry
  %call4 = call i32 @MESH_Num_Vertices()
  br label %common.ret

sw.bb5:                                           ; preds = %entry
  %call6 = load volatile i32, ptr null, align 4
  br label %common.ret

common.ret:                                       ; preds = %sw.bb5, %sw.bb, %entry
  ret i32 0

sw.default:                                       ; preds = %entry
  unreachable
}

declare i32 @MESH_Num_Vertices()
