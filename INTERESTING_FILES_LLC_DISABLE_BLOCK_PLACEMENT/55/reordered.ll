; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//55/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @MESH_RecvMesh(i32 %with_attr, ptr nocapture readonly %nv, ptr nocapture readonly %ne, ptr nocapture readonly %nf) local_unnamed_addr {
entry:
  %call1 = tail call i32 @MESH_Recv_MetaData()
  %0 = load i32, ptr %nv, align 4
  %call2 = tail call i32 @MESH_Recv_Vertices(i32 %0)
  %1 = load i32, ptr %nv, align 4
  %call3 = tail call i32 @MESH_Recv_VertexCoords(i32 %1)
  %2 = load i32, ptr %ne, align 4
  %3 = load i32, ptr %nf, align 4
  %4 = load i32, ptr %nv, align 4
  %call4 = tail call i32 @MESH_Recv_NonVertexEntities(i32 %2, i32 %3, i32 %4)
  %tobool.not = icmp eq i32 %with_attr, 0
  br i1 %tobool.not, label %common.ret, label %if.then

if.then:                                          ; preds = %entry
  %call5 = load volatile i32, ptr null, align 4294967296
  br label %common.ret

common.ret:                                       ; preds = %if.then, %entry
  ret i32 0
}

declare i32 @MESH_Recv_MetaData() local_unnamed_addr

declare i32 @MESH_Recv_Vertices(i32) local_unnamed_addr

declare i32 @MESH_Recv_VertexCoords(i32) local_unnamed_addr

declare i32 @MESH_Recv_NonVertexEntities(i32, i32, i32) local_unnamed_addr
