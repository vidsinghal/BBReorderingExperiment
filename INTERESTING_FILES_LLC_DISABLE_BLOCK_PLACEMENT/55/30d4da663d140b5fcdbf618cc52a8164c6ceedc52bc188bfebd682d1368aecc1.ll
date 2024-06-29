; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @MESH_RecvMesh(i32 %with_attr, ptr %nv, ptr %ne, ptr %nf) {
entry:
  %call1 = call i32 @MESH_Recv_MetaData()
  %0 = load i32, ptr %nv, align 4
  %call2 = call i32 @MESH_Recv_Vertices(i32 %0)
  %1 = load i32, ptr %nv, align 4
  %call3 = call i32 @MESH_Recv_VertexCoords(i32 %1)
  %2 = load i32, ptr %ne, align 4
  %3 = load i32, ptr %nf, align 4
  %4 = load i32, ptr %nv, align 4
  %call4 = call i32 @MESH_Recv_NonVertexEntities(i32 %2, i32 %3, i32 %4)
  %tobool.not = icmp eq i32 %with_attr, 0
  br i1 %tobool.not, label %common.ret, label %if.then

common.ret:                                       ; preds = %if.then, %entry
  ret i32 0

if.then:                                          ; preds = %entry
  %call5 = load volatile i32, ptr null, align 4
  br label %common.ret
}

declare i32 @MESH_Recv_MetaData()

declare i32 @MESH_Recv_Vertices(i32)

declare i32 @MESH_Recv_VertexCoords(i32)

declare i32 @MESH_Recv_NonVertexEntities(i32, i32, i32)
