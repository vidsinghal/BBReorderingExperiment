; ModuleID = 'samples/83.bc'
source_filename = "/local-ssd/mstk-acqx2cqfo324sgu6p6jiamd2bdkijvtz-build/aidengro/spack-stage-mstk-3.3.6-acqx2cqfo324sgu6p6jiamd2bdkijvtz/spack-src/src/par/MESH_Recv_Attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ompi_predefined_datatype_t = type opaque
%struct.ompi_status_public_t = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"MESH_RecvAttr()\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid entity type MALLTYPE\00", align 1
@ompi_mpi_int = external global %struct.ompi_predefined_datatype_t, align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"MESH_RecvAttr\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Trouble with receiving attributes\00", align 1
@ompi_mpi_double = external global %struct.ompi_predefined_datatype_t, align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Invalid entity type\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @MESH_Recv_Attribute(ptr noundef %mesh, ptr noundef %attrib, i32 noundef %fromrank, ptr noundef %comm) #0 {
entry:
  %retval = alloca i32, align 4
  %mesh.addr = alloca ptr, align 8
  %attrib.addr = alloca ptr, align 8
  %fromrank.addr = alloca i32, align 4
  %comm.addr = alloca ptr, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %count = alloca i32, align 4
  %num = alloca i32, align 4
  %ncomp = alloca i32, align 4
  %ival = alloca i32, align 4
  %rval = alloca double, align 8
  %rval_arr = alloca ptr, align 8
  %list_info = alloca ptr, align 8
  %list_value_int = alloca ptr, align 8
  %list_value_double = alloca ptr, align 8
  %mtype = alloca i32, align 4
  %att_type = alloca i32, align 4
  %ment = alloca ptr, align 8
  %request = alloca ptr, align 8
  %status = alloca %struct.ompi_status_public_t, align 8
  %result = alloca i32, align 4
  %rank = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %nullval = alloca i32, align 4
  store ptr %mesh, ptr %mesh.addr, align 8, !tbaa !5
  store ptr %attrib, ptr %attrib.addr, align 8, !tbaa !5
  store i32 %fromrank, ptr %fromrank.addr, align 4, !tbaa !9
  store ptr %comm, ptr %comm.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %num) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ncomp) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ival) #5
  store i32 0, ptr %ival, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %rval) #5
  store double 0.000000e+00, ptr %rval, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %rval_arr) #5
  store ptr null, ptr %rval_arr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %list_info) #5
  store ptr null, ptr %list_info, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %list_value_int) #5
  store ptr null, ptr %list_value_int, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %list_value_double) #5
  store ptr null, ptr %list_value_double, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %mtype) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %att_type) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ment) #5
  store ptr null, ptr %ment, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %request) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr %status) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %rank) #5
  %0 = load ptr, ptr %comm.addr, align 8, !tbaa !5
  %call = call i32 @MPI_Comm_rank(ptr noundef %0, ptr noundef %rank)
  %1 = load ptr, ptr %attrib.addr, align 8, !tbaa !5
  %call1 = call i32 @MAttrib_Get_Type(ptr noundef %1)
  store i32 %call1, ptr %att_type, align 4, !tbaa !13
  %2 = load ptr, ptr %attrib.addr, align 8, !tbaa !5
  %call2 = call i32 @MAttrib_Get_NumComps(ptr noundef %2)
  store i32 %call2, ptr %ncomp, align 4, !tbaa !9
  %3 = load ptr, ptr %attrib.addr, align 8, !tbaa !5
  %call3 = call i32 @MAttrib_Get_EntDim(ptr noundef %3)
  store i32 %call3, ptr %mtype, align 4, !tbaa !13
  %4 = load i32, ptr %mtype, align 4, !tbaa !13
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb7
    i32 3, label %sw.bb9
    i32 5, label %sw.bb11
  ]

sw.bb:                                            ; preds = %entry
  %5 = load ptr, ptr %mesh.addr, align 8, !tbaa !5
  %call4 = call i32 @MESH_Num_Vertices(ptr noundef %5)
  store i32 %call4, ptr %num, align 4, !tbaa !9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %6 = load ptr, ptr %mesh.addr, align 8, !tbaa !5
  %call6 = call i32 @MESH_Num_Edges(ptr noundef %6)
  store i32 %call6, ptr %num, align 4, !tbaa !9
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %7 = load ptr, ptr %mesh.addr, align 8, !tbaa !5
  %call8 = call i32 @MESH_Num_Faces(ptr noundef %7)
  store i32 %call8, ptr %num, align 4, !tbaa !9
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %8 = load ptr, ptr %mesh.addr, align 8, !tbaa !5
  %call10 = call i32 @MESH_Num_Regions(ptr noundef %8)
  store i32 %call10, ptr %num, align 4, !tbaa !9
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  store i32 0, ptr %num, align 4, !tbaa !9
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup119

sw.default:                                       ; preds = %entry
  store i32 0, ptr %num, align 4, !tbaa !9
  call void @MSTK_Report(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup119

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb
  %9 = load i32, ptr %num, align 4, !tbaa !9
  %conv = sext i32 %9 to i64
  %mul = mul i64 %conv, 4
  %call12 = call noalias ptr @malloc(i64 noundef %mul) #6
  store ptr %call12, ptr %list_info, align 8, !tbaa !5
  %10 = load ptr, ptr %list_info, align 8, !tbaa !5
  %11 = load i32, ptr %num, align 4, !tbaa !9
  %12 = load i32, ptr %fromrank.addr, align 4, !tbaa !9
  %13 = load i32, ptr %rank, align 4, !tbaa !9
  %14 = load ptr, ptr %comm.addr, align 8, !tbaa !5
  %call13 = call i32 @MPI_Recv(ptr noundef %10, i32 noundef %11, ptr noundef @ompi_mpi_int, i32 noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %status)
  store i32 %call13, ptr %result, align 4, !tbaa !9
  %15 = load i32, ptr %result, align 4, !tbaa !9
  %cmp = icmp ne i32 %15, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @MSTK_Report(ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 3)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %16 = load i32, ptr %att_type, align 4, !tbaa !13
  %cmp15 = icmp eq i32 %16, 0
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end
  %17 = load i32, ptr %num, align 4, !tbaa !9
  %18 = load i32, ptr %ncomp, align 4, !tbaa !9
  %mul18 = mul nsw i32 %17, %18
  %conv19 = sext i32 %mul18 to i64
  %mul20 = mul i64 %conv19, 4
  %call21 = call noalias ptr @malloc(i64 noundef %mul20) #6
  store ptr %call21, ptr %list_value_int, align 8, !tbaa !5
  %19 = load ptr, ptr %list_value_int, align 8, !tbaa !5
  %20 = load i32, ptr %num, align 4, !tbaa !9
  %21 = load i32, ptr %ncomp, align 4, !tbaa !9
  %mul22 = mul nsw i32 %20, %21
  %22 = load i32, ptr %fromrank.addr, align 4, !tbaa !9
  %23 = load i32, ptr %rank, align 4, !tbaa !9
  %24 = load ptr, ptr %comm.addr, align 8, !tbaa !5
  %call23 = call i32 @MPI_Recv(ptr noundef %19, i32 noundef %mul22, ptr noundef @ompi_mpi_int, i32 noundef %22, i32 noundef %23, ptr noundef %24, ptr noundef %status)
  store i32 %call23, ptr %result, align 4, !tbaa !9
  %25 = load i32, ptr %result, align 4, !tbaa !9
  %cmp24 = icmp ne i32 %25, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then17
  call void @MSTK_Report(ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 3)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.then17
  br label %if.end38

if.else:                                          ; preds = %if.end
  %26 = load i32, ptr %num, align 4, !tbaa !9
  %27 = load i32, ptr %ncomp, align 4, !tbaa !9
  %mul28 = mul nsw i32 %26, %27
  %conv29 = sext i32 %mul28 to i64
  %mul30 = mul i64 %conv29, 8
  %call31 = call noalias ptr @malloc(i64 noundef %mul30) #6
  store ptr %call31, ptr %list_value_double, align 8, !tbaa !5
  %28 = load ptr, ptr %list_value_double, align 8, !tbaa !5
  %29 = load i32, ptr %num, align 4, !tbaa !9
  %30 = load i32, ptr %ncomp, align 4, !tbaa !9
  %mul32 = mul nsw i32 %29, %30
  %31 = load i32, ptr %fromrank.addr, align 4, !tbaa !9
  %32 = load i32, ptr %rank, align 4, !tbaa !9
  %33 = load ptr, ptr %comm.addr, align 8, !tbaa !5
  %call33 = call i32 @MPI_Recv(ptr noundef %28, i32 noundef %mul32, ptr noundef @ompi_mpi_double, i32 noundef %31, i32 noundef %32, ptr noundef %33, ptr noundef %status)
  store i32 %call33, ptr %result, align 4, !tbaa !9
  %34 = load i32, ptr %result, align 4, !tbaa !9
  %cmp34 = icmp ne i32 %34, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.else
  call void @MSTK_Report(ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 3)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.else
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end27
  store i32 0, ptr %j, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc107, %if.end38
  %35 = load i32, ptr %j, align 4, !tbaa !9
  %36 = load i32, ptr %num, align 4, !tbaa !9
  %cmp39 = icmp slt i32 %35, %36
  br i1 %cmp39, label %for.body, label %for.end109

for.body:                                         ; preds = %for.cond
  %37 = load i32, ptr %mtype, align 4, !tbaa !13
  switch i32 %37, label %sw.default49 [
    i32 0, label %sw.bb41
    i32 1, label %sw.bb43
    i32 2, label %sw.bb45
    i32 3, label %sw.bb47
  ]

sw.bb41:                                          ; preds = %for.body
  %38 = load ptr, ptr %mesh.addr, align 8, !tbaa !5
  %39 = load i32, ptr %j, align 4, !tbaa !9
  %call42 = call ptr @MESH_Vertex(ptr noundef %38, i32 noundef %39)
  store ptr %call42, ptr %ment, align 8, !tbaa !5
  br label %sw.epilog50

sw.bb43:                                          ; preds = %for.body
  %40 = load ptr, ptr %mesh.addr, align 8, !tbaa !5
  %41 = load i32, ptr %j, align 4, !tbaa !9
  %call44 = call ptr @MESH_Edge(ptr noundef %40, i32 noundef %41)
  store ptr %call44, ptr %ment, align 8, !tbaa !5
  br label %sw.epilog50

sw.bb45:                                          ; preds = %for.body
  %42 = load ptr, ptr %mesh.addr, align 8, !tbaa !5
  %43 = load i32, ptr %j, align 4, !tbaa !9
  %call46 = call ptr @MESH_Face(ptr noundef %42, i32 noundef %43)
  store ptr %call46, ptr %ment, align 8, !tbaa !5
  br label %sw.epilog50

sw.bb47:                                          ; preds = %for.body
  %44 = load ptr, ptr %mesh.addr, align 8, !tbaa !5
  %45 = load i32, ptr %j, align 4, !tbaa !9
  %call48 = call ptr @MESH_Region(ptr noundef %44, i32 noundef %45)
  store ptr %call48, ptr %ment, align 8, !tbaa !5
  br label %sw.epilog50

sw.default49:                                     ; preds = %for.body
  call void @MSTK_Report(ptr noundef @.str, ptr noundef @.str.4, i32 noundef 3)
  br label %sw.epilog50

sw.epilog50:                                      ; preds = %sw.default49, %sw.bb47, %sw.bb45, %sw.bb43, %sw.bb41
  call void @llvm.lifetime.start.p0(i64 4, ptr %nullval) #5
  store i32 1, ptr %nullval, align 4, !tbaa !9
  %46 = load i32, ptr %att_type, align 4, !tbaa !13
  %cmp51 = icmp eq i32 %46, 0
  br i1 %cmp51, label %if.then53, label %if.else58

if.then53:                                        ; preds = %sw.epilog50
  %47 = load ptr, ptr %list_value_int, align 8, !tbaa !5
  %48 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom = sext i32 %48 to i64
  %arrayidx = getelementptr inbounds i32, ptr %47, i64 %idxprom
  %49 = load i32, ptr %arrayidx, align 4, !tbaa !9
  store i32 %49, ptr %ival, align 4, !tbaa !9
  %50 = load i32, ptr %ival, align 4, !tbaa !9
  %cmp54 = icmp ne i32 %50, 0
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.then53
  store i32 0, ptr %nullval, align 4, !tbaa !9
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.then53
  br label %if.end103

if.else58:                                        ; preds = %sw.epilog50
  %51 = load i32, ptr %att_type, align 4, !tbaa !13
  %cmp59 = icmp eq i32 %51, 1
  br i1 %cmp59, label %if.then61, label %if.else68

if.then61:                                        ; preds = %if.else58
  %52 = load ptr, ptr %list_value_double, align 8, !tbaa !5
  %53 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom62 = sext i32 %53 to i64
  %arrayidx63 = getelementptr inbounds double, ptr %52, i64 %idxprom62
  %54 = load double, ptr %arrayidx63, align 8, !tbaa !11
  store double %54, ptr %rval, align 8, !tbaa !11
  %55 = load double, ptr %rval, align 8, !tbaa !11
  %cmp64 = fcmp une double %55, 0.000000e+00
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.then61
  store i32 0, ptr %nullval, align 4, !tbaa !9
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.then61
  br label %if.end102

if.else68:                                        ; preds = %if.else58
  %56 = load i32, ptr %ncomp, align 4, !tbaa !9
  %cmp69 = icmp sgt i32 %56, 1
  br i1 %cmp69, label %if.then71, label %if.end101

if.then71:                                        ; preds = %if.else68
  store i32 0, ptr %k, align 4, !tbaa !9
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc, %if.then71
  %57 = load i32, ptr %k, align 4, !tbaa !9
  %58 = load i32, ptr %ncomp, align 4, !tbaa !9
  %cmp73 = icmp slt i32 %57, %58
  br i1 %cmp73, label %for.body75, label %for.end

for.body75:                                       ; preds = %for.cond72
  %59 = load ptr, ptr %list_value_double, align 8, !tbaa !5
  %60 = load i32, ptr %j, align 4, !tbaa !9
  %61 = load i32, ptr %ncomp, align 4, !tbaa !9
  %mul76 = mul nsw i32 %60, %61
  %62 = load i32, ptr %k, align 4, !tbaa !9
  %add = add nsw i32 %mul76, %62
  %idxprom77 = sext i32 %add to i64
  %arrayidx78 = getelementptr inbounds double, ptr %59, i64 %idxprom77
  %63 = load double, ptr %arrayidx78, align 8, !tbaa !11
  %cmp79 = fcmp une double %63, 0.000000e+00
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %for.body75
  store i32 0, ptr %nullval, align 4, !tbaa !9
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %for.body75
  br label %for.inc

for.inc:                                          ; preds = %if.end82
  %64 = load i32, ptr %k, align 4, !tbaa !9
  %inc = add nsw i32 %64, 1
  store i32 %inc, ptr %k, align 4, !tbaa !9
  br label %for.cond72

for.end:                                          ; preds = %for.cond72
  %65 = load i32, ptr %nullval, align 4, !tbaa !9
  %tobool = icmp ne i32 %65, 0
  br i1 %tobool, label %if.end100, label %if.then83

if.then83:                                        ; preds = %for.end
  %66 = load i32, ptr %ncomp, align 4, !tbaa !9
  %conv84 = sext i32 %66 to i64
  %mul85 = mul i64 %conv84, 8
  %call86 = call noalias ptr @malloc(i64 noundef %mul85) #6
  store ptr %call86, ptr %rval_arr, align 8, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !9
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc97, %if.then83
  %67 = load i32, ptr %k, align 4, !tbaa !9
  %68 = load i32, ptr %ncomp, align 4, !tbaa !9
  %cmp88 = icmp slt i32 %67, %68
  br i1 %cmp88, label %for.body90, label %for.end99

for.body90:                                       ; preds = %for.cond87
  %69 = load ptr, ptr %list_value_double, align 8, !tbaa !5
  %70 = load i32, ptr %j, align 4, !tbaa !9
  %71 = load i32, ptr %ncomp, align 4, !tbaa !9
  %mul91 = mul nsw i32 %70, %71
  %72 = load i32, ptr %k, align 4, !tbaa !9
  %add92 = add nsw i32 %mul91, %72
  %idxprom93 = sext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds double, ptr %69, i64 %idxprom93
  %73 = load double, ptr %arrayidx94, align 8, !tbaa !11
  %74 = load ptr, ptr %rval_arr, align 8, !tbaa !5
  %75 = load i32, ptr %k, align 4, !tbaa !9
  %idxprom95 = sext i32 %75 to i64
  %arrayidx96 = getelementptr inbounds double, ptr %74, i64 %idxprom95
  store double %73, ptr %arrayidx96, align 8, !tbaa !11
  br label %for.inc97

for.inc97:                                        ; preds = %for.body90
  %76 = load i32, ptr %k, align 4, !tbaa !9
  %inc98 = add nsw i32 %76, 1
  store i32 %inc98, ptr %k, align 4, !tbaa !9
  br label %for.cond87

for.end99:                                        ; preds = %for.cond87
  br label %if.end100

if.end100:                                        ; preds = %for.end99, %for.end
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.else68
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.end67
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.end57
  %77 = load i32, ptr %nullval, align 4, !tbaa !9
  %tobool104 = icmp ne i32 %77, 0
  br i1 %tobool104, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.end103
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end106:                                        ; preds = %if.end103
  %78 = load ptr, ptr %ment, align 8, !tbaa !5
  %79 = load ptr, ptr %attrib.addr, align 8, !tbaa !5
  %80 = load i32, ptr %ival, align 4, !tbaa !9
  %81 = load double, ptr %rval, align 8, !tbaa !11
  %82 = load ptr, ptr %rval_arr, align 8, !tbaa !5
  call void @MEnt_Set_AttVal(ptr noundef %78, ptr noundef %79, i32 noundef %80, double noundef %81, ptr noundef %82)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end106, %if.then105
  call void @llvm.lifetime.end.p0(i64 4, ptr %nullval) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %for.inc107
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc107

for.inc107:                                       ; preds = %cleanup.cont, %cleanup
  %83 = load i32, ptr %j, align 4, !tbaa !9
  %inc108 = add nsw i32 %83, 1
  store i32 %inc108, ptr %j, align 4, !tbaa !9
  br label %for.cond

for.end109:                                       ; preds = %for.cond
  %84 = load ptr, ptr %list_info, align 8, !tbaa !5
  call void @free(ptr noundef %84) #5
  %85 = load i32, ptr %att_type, align 4, !tbaa !13
  %cmp110 = icmp eq i32 %85, 0
  br i1 %cmp110, label %if.then112, label %if.else113

if.then112:                                       ; preds = %for.end109
  %86 = load ptr, ptr %list_value_int, align 8, !tbaa !5
  call void @free(ptr noundef %86) #5
  br label %if.end118

if.else113:                                       ; preds = %for.end109
  %87 = load i32, ptr %att_type, align 4, !tbaa !13
  %cmp114 = icmp eq i32 %87, 1
  br i1 %cmp114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.else113
  %88 = load ptr, ptr %list_value_double, align 8, !tbaa !5
  call void @free(ptr noundef %88) #5
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %if.else113
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.then112
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup119

cleanup119:                                       ; preds = %if.end118, %sw.default, %sw.bb11
  call void @llvm.lifetime.end.p0(i64 4, ptr %rank) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr %status) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %request) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ment) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %att_type) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %mtype) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %list_value_double) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %list_value_int) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %list_info) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rval_arr) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rval) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ival) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ncomp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  %89 = load i32, ptr %retval, align 4
  ret i32 %89

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @MPI_Comm_rank(ptr noundef, ptr noundef) #2

declare i32 @MAttrib_Get_Type(ptr noundef) #2

declare i32 @MAttrib_Get_NumComps(ptr noundef) #2

declare i32 @MAttrib_Get_EntDim(ptr noundef) #2

declare i32 @MESH_Num_Vertices(ptr noundef) #2

declare i32 @MESH_Num_Edges(ptr noundef) #2

declare i32 @MESH_Num_Faces(ptr noundef) #2

declare i32 @MESH_Num_Regions(ptr noundef) #2

declare void @MSTK_Report(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

declare i32 @MPI_Recv(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare ptr @MESH_Vertex(ptr noundef, i32 noundef) #2

declare ptr @MESH_Edge(ptr noundef, i32 noundef) #2

declare ptr @MESH_Face(ptr noundef, i32 noundef) #2

declare ptr @MESH_Region(ptr noundef, i32 noundef) #2

declare void @MEnt_Set_AttVal(ptr noundef, ptr noundef, i32 noundef, double noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !7, i64 0}
!13 = !{!7, !7, i64 0}
