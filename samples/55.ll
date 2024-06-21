; ModuleID = 'samples/55.bc'
source_filename = "/local-ssd/mstk-acqx2cqfo324sgu6p6jiamd2bdkijvtz-build/aidengro/spack-stage-mstk-3.3.6-acqx2cqfo324sgu6p6jiamd2bdkijvtz/spack-src/src/par/MESH_RecvMesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ompi_status_public_t = type { i32, i32, i32, i32, i64 }

@__const.MESH_RecvMesh.funcname = private unnamed_addr constant [256 x i8] c"MESH_RecvMesh\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @MESH_RecvMesh(ptr noundef %mesh, i32 noundef %fromrank, i32 noundef %with_attr, ptr noundef %comm) #0 {
entry:
  %mesh.addr = alloca ptr, align 8
  %fromrank.addr = alloca i32, align 4
  %with_attr.addr = alloca i32, align 4
  %comm.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca i32, align 4
  %m = alloca i32, align 4
  %nv = alloca i32, align 4
  %ne = alloca i32, align 4
  %nf = alloca i32, align 4
  %nr = alloca i32, align 4
  %rtype = alloca i32, align 4
  %attrib = alloca ptr, align 8
  %mset = alloca ptr, align 8
  %status = alloca %struct.ompi_status_public_t, align 8
  %mesg = alloca [256 x i8], align 16
  %errorstr = alloca [256 x i8], align 16
  %funcname = alloca [256 x i8], align 16
  %errcode = alloca i32, align 4
  %len = alloca i32, align 4
  %nreq = alloca i32, align 4
  %rank = alloca i32, align 4
  %natt_local = alloca i32, align 4
  %nset_local = alloca i32, align 4
  store ptr %mesh, ptr %mesh.addr, align 8, !tbaa !5
  store i32 %fromrank, ptr %fromrank.addr, align 4, !tbaa !9
  store i32 %with_attr, ptr %with_attr.addr, align 4, !tbaa !9
  store ptr %comm, ptr %comm.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nv) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ne) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nf) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rtype) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %attrib) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mset) #4
  call void @llvm.lifetime.start.p0(i64 24, ptr %status) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr %mesg) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr %errorstr) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr %funcname) #4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %funcname, ptr align 16 @__const.MESH_RecvMesh.funcname, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %errcode) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nreq) #4
  store i32 0, ptr %nreq, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %rank) #4
  %0 = load ptr, ptr %comm.addr, align 8, !tbaa !5
  %call = call i32 @MPI_Comm_rank(ptr noundef %0, ptr noundef %rank)
  %1 = load ptr, ptr %mesh.addr, align 8, !tbaa !5
  %2 = load i32, ptr %fromrank.addr, align 4, !tbaa !9
  %3 = load ptr, ptr %comm.addr, align 8, !tbaa !5
  %call1 = call i32 @MESH_Recv_MetaData(ptr noundef %1, i32 noundef %2, ptr noundef %rtype, ptr noundef %nv, ptr noundef %ne, ptr noundef %nf, ptr noundef %nr, ptr noundef %3)
  %4 = load ptr, ptr %mesh.addr, align 8, !tbaa !5
  %5 = load i32, ptr %fromrank.addr, align 4, !tbaa !9
  %6 = load i32, ptr %nv, align 4, !tbaa !9
  %7 = load ptr, ptr %comm.addr, align 8, !tbaa !5
  %call2 = call i32 @MESH_Recv_Vertices(ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7)
  %8 = load ptr, ptr %mesh.addr, align 8, !tbaa !5
  %9 = load i32, ptr %fromrank.addr, align 4, !tbaa !9
  %10 = load i32, ptr %nv, align 4, !tbaa !9
  %11 = load ptr, ptr %comm.addr, align 8, !tbaa !5
  %call3 = call i32 @MESH_Recv_VertexCoords(ptr noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef %11)
  %12 = load ptr, ptr %mesh.addr, align 8, !tbaa !5
  %13 = load i32, ptr %fromrank.addr, align 4, !tbaa !9
  %14 = load i32, ptr %ne, align 4, !tbaa !9
  %15 = load i32, ptr %nf, align 4, !tbaa !9
  %16 = load i32, ptr %nr, align 4, !tbaa !9
  %17 = load ptr, ptr %comm.addr, align 8, !tbaa !5
  %call4 = call i32 @MESH_Recv_NonVertexEntities(ptr noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, ptr noundef %17)
  %18 = load i32, ptr %with_attr.addr, align 4, !tbaa !9
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load ptr, ptr %mesh.addr, align 8, !tbaa !5
  %20 = load i32, ptr %fromrank.addr, align 4, !tbaa !9
  %21 = load ptr, ptr %comm.addr, align 8, !tbaa !5
  %call5 = call i32 @MESH_Recv_AttributeMetaData(ptr noundef %19, i32 noundef %20, ptr noundef %21)
  call void @llvm.lifetime.start.p0(i64 4, ptr %natt_local) #4
  %22 = load ptr, ptr %mesh.addr, align 8, !tbaa !5
  %call6 = call i32 @MESH_Num_Attribs(ptr noundef %22)
  store i32 %call6, ptr %natt_local, align 4, !tbaa !9
  store i32 0, ptr %a, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %23 = load i32, ptr %a, align 4, !tbaa !9
  %24 = load i32, ptr %natt_local, align 4, !tbaa !9
  %cmp = icmp slt i32 %23, %24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load ptr, ptr %mesh.addr, align 8, !tbaa !5
  %26 = load i32, ptr %a, align 4, !tbaa !9
  %call7 = call ptr @MESH_Attrib(ptr noundef %25, i32 noundef %26)
  store ptr %call7, ptr %attrib, align 8, !tbaa !5
  %27 = load ptr, ptr %mesh.addr, align 8, !tbaa !5
  %28 = load ptr, ptr %attrib, align 8, !tbaa !5
  %29 = load i32, ptr %fromrank.addr, align 4, !tbaa !9
  %30 = load ptr, ptr %comm.addr, align 8, !tbaa !5
  %call8 = call i32 @MESH_Recv_Attribute(ptr noundef %27, ptr noundef %28, i32 noundef %29, ptr noundef %30)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, ptr %a, align 4, !tbaa !9
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %a, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load ptr, ptr %mesh.addr, align 8, !tbaa !5
  %33 = load i32, ptr %fromrank.addr, align 4, !tbaa !9
  %34 = load ptr, ptr %comm.addr, align 8, !tbaa !5
  %call9 = call i32 @MESH_Recv_MSetMetaData(ptr noundef %32, i32 noundef %33, ptr noundef %34)
  call void @llvm.lifetime.start.p0(i64 4, ptr %nset_local) #4
  %35 = load ptr, ptr %mesh.addr, align 8, !tbaa !5
  %call10 = call i32 @MESH_Num_MSets(ptr noundef %35)
  store i32 %call10, ptr %nset_local, align 4, !tbaa !9
  store i32 0, ptr %m, align 4, !tbaa !9
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc16, %for.end
  %36 = load i32, ptr %m, align 4, !tbaa !9
  %37 = load i32, ptr %nset_local, align 4, !tbaa !9
  %cmp12 = icmp slt i32 %36, %37
  br i1 %cmp12, label %for.body13, label %for.end18

for.body13:                                       ; preds = %for.cond11
  %38 = load ptr, ptr %mesh.addr, align 8, !tbaa !5
  %39 = load i32, ptr %m, align 4, !tbaa !9
  %call14 = call ptr @MESH_MSet(ptr noundef %38, i32 noundef %39)
  store ptr %call14, ptr %mset, align 8, !tbaa !5
  %40 = load ptr, ptr %mesh.addr, align 8, !tbaa !5
  %41 = load ptr, ptr %mset, align 8, !tbaa !5
  %42 = load i32, ptr %fromrank.addr, align 4, !tbaa !9
  %43 = load ptr, ptr %comm.addr, align 8, !tbaa !5
  %call15 = call i32 @MESH_Recv_MSet(ptr noundef %40, ptr noundef %41, i32 noundef %42, ptr noundef %43)
  br label %for.inc16

for.inc16:                                        ; preds = %for.body13
  %44 = load i32, ptr %m, align 4, !tbaa !9
  %inc17 = add nsw i32 %44, 1
  store i32 %inc17, ptr %m, align 4, !tbaa !9
  br label %for.cond11

for.end18:                                        ; preds = %for.cond11
  call void @llvm.lifetime.end.p0(i64 4, ptr %nset_local) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %natt_local) #4
  br label %if.end

if.end:                                           ; preds = %for.end18, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %rank) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nreq) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %errcode) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr %funcname) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr %errorstr) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr %mesg) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr %status) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %mset) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %attrib) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %rtype) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nf) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ne) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nv) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @MPI_Comm_rank(ptr noundef, ptr noundef) #3

declare i32 @MESH_Recv_MetaData(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @MESH_Recv_Vertices(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

declare i32 @MESH_Recv_VertexCoords(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

declare i32 @MESH_Recv_NonVertexEntities(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

declare i32 @MESH_Recv_AttributeMetaData(ptr noundef, i32 noundef, ptr noundef) #3

declare i32 @MESH_Num_Attribs(ptr noundef) #3

declare ptr @MESH_Attrib(ptr noundef, i32 noundef) #3

declare i32 @MESH_Recv_Attribute(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

declare i32 @MESH_Recv_MSetMetaData(ptr noundef, i32 noundef, ptr noundef) #3

declare i32 @MESH_Num_MSets(ptr noundef) #3

declare ptr @MESH_MSet(ptr noundef, i32 noundef) #3

declare i32 @MESH_Recv_MSet(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
