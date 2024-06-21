; ModuleID = 'samples/63.bc'
source_filename = "/local-ssd/mstk-acqx2cqfo324sgu6p6jiamd2bdkijvtz-build/aidengro/spack-stage-mstk-3.3.6-acqx2cqfo324sgu6p6jiamd2bdkijvtz/spack-src/src/base/MF_Vertex_Funcs_R2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MFace = type { ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.MFace_Adj_R2 = type { ptr, ptr, ptr, i32 }

@.str = private unnamed_addr constant [17 x i8] c"MF_Rem_Vertex_R2\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"No initial set of vertices for face\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"MF_Replace_Vertex_R2\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"MF_Vertices_R2\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Cannot find starting vertex\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"MF_VertexIDs_R2\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @MFs_AreSame_R2(ptr noundef %f1, ptr noundef %f2) #0 {
entry:
  %retval = alloca i32, align 4
  %f1.addr = alloca ptr, align 8
  %f2.addr = alloca ptr, align 8
  %nfv1 = alloca i32, align 4
  %nfv2 = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %dir = alloca i32, align 4
  %fv = alloca ptr, align 8
  %fverts1 = alloca ptr, align 8
  %fverts2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %f1, ptr %f1.addr, align 8, !tbaa !5
  store ptr %f2, ptr %f2.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %f1.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %f2.addr, align 8, !tbaa !5
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %nfv1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nfv2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %dir) #3
  store i32 -1, ptr %dir, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %fv) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %fverts1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %fverts2) #3
  %2 = load ptr, ptr %f1.addr, align 8, !tbaa !5
  %call = call ptr @MF_Vertices(ptr noundef %2, i32 noundef 1, ptr noundef null)
  store ptr %call, ptr %fverts1, align 8, !tbaa !5
  %3 = load ptr, ptr %fverts1, align 8, !tbaa !5
  %call1 = call i32 @List_Num_Entries(ptr noundef %3)
  store i32 %call1, ptr %nfv1, align 4, !tbaa !9
  %4 = load ptr, ptr %f2.addr, align 8, !tbaa !5
  %call2 = call ptr @MF_Vertices(ptr noundef %4, i32 noundef 1, ptr noundef null)
  store ptr %call2, ptr %fverts2, align 8, !tbaa !5
  %5 = load ptr, ptr %fverts2, align 8, !tbaa !5
  %call3 = call i32 @List_Num_Entries(ptr noundef %5)
  store i32 %call3, ptr %nfv2, align 4, !tbaa !9
  %6 = load i32, ptr %nfv1, align 4, !tbaa !9
  %7 = load i32, ptr %nfv2, align 4, !tbaa !9
  %cmp4 = icmp ne i32 %6, %7
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %8 = load ptr, ptr %fverts1, align 8, !tbaa !5
  call void @List_Delete(ptr noundef %8)
  %9 = load ptr, ptr %fverts2, align 8, !tbaa !5
  call void @List_Delete(ptr noundef %9)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.else
  %10 = load ptr, ptr %fverts1, align 8, !tbaa !5
  %call6 = call ptr @List_Entry(ptr noundef %10, i32 noundef 0)
  store ptr %call6, ptr %fv, align 8, !tbaa !5
  %11 = load ptr, ptr %fverts2, align 8, !tbaa !5
  %12 = load ptr, ptr %fv, align 8, !tbaa !5
  %call7 = call i32 @List_Locate(ptr noundef %11, ptr noundef %12)
  store i32 %call7, ptr %k, align 4, !tbaa !9
  %13 = load i32, ptr %k, align 4, !tbaa !9
  %cmp8 = icmp eq i32 %13, -1
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %14 = load ptr, ptr %fverts1, align 8, !tbaa !5
  call void @List_Delete(ptr noundef %14)
  %15 = load ptr, ptr %fverts2, align 8, !tbaa !5
  call void @List_Delete(ptr noundef %15)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %16 = load ptr, ptr %fverts1, align 8, !tbaa !5
  %call11 = call ptr @List_Entry(ptr noundef %16, i32 noundef 1)
  store ptr %call11, ptr %fv, align 8, !tbaa !5
  %17 = load ptr, ptr %fv, align 8, !tbaa !5
  %18 = load ptr, ptr %fverts2, align 8, !tbaa !5
  %19 = load i32, ptr %k, align 4, !tbaa !9
  %add = add nsw i32 %19, 1
  %20 = load i32, ptr %nfv1, align 4, !tbaa !9
  %rem = srem i32 %add, %20
  %call12 = call ptr @List_Entry(ptr noundef %18, i32 noundef %rem)
  %cmp13 = icmp eq ptr %17, %call12
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.end10
  store i32 1, ptr %dir, align 4, !tbaa !9
  br label %if.end23

if.else15:                                        ; preds = %if.end10
  %21 = load ptr, ptr %fv, align 8, !tbaa !5
  %22 = load ptr, ptr %fverts2, align 8, !tbaa !5
  %23 = load i32, ptr %k, align 4, !tbaa !9
  %sub = sub nsw i32 %23, 1
  %24 = load i32, ptr %nfv1, align 4, !tbaa !9
  %add16 = add nsw i32 %sub, %24
  %25 = load i32, ptr %nfv1, align 4, !tbaa !9
  %rem17 = srem i32 %add16, %25
  %call18 = call ptr @List_Entry(ptr noundef %22, i32 noundef %rem17)
  %cmp19 = icmp eq ptr %21, %call18
  br i1 %cmp19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else15
  store i32 0, ptr %dir, align 4, !tbaa !9
  br label %if.end22

if.else21:                                        ; preds = %if.else15
  %26 = load ptr, ptr %fverts1, align 8, !tbaa !5
  call void @List_Delete(ptr noundef %26)
  %27 = load ptr, ptr %fverts2, align 8, !tbaa !5
  call void @List_Delete(ptr noundef %27)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.then20
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then14
  %28 = load i32, ptr %dir, align 4, !tbaa !9
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.then24, label %if.else33

if.then24:                                        ; preds = %if.end23
  store i32 2, ptr %j, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then24
  %29 = load i32, ptr %j, align 4, !tbaa !9
  %30 = load i32, ptr %nfv1, align 4, !tbaa !9
  %cmp25 = icmp slt i32 %29, %30
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load ptr, ptr %fverts1, align 8, !tbaa !5
  %32 = load i32, ptr %j, align 4, !tbaa !9
  %call26 = call ptr @List_Entry(ptr noundef %31, i32 noundef %32)
  store ptr %call26, ptr %fv, align 8, !tbaa !5
  %33 = load ptr, ptr %fv, align 8, !tbaa !5
  %34 = load ptr, ptr %fverts2, align 8, !tbaa !5
  %35 = load i32, ptr %k, align 4, !tbaa !9
  %36 = load i32, ptr %j, align 4, !tbaa !9
  %add27 = add nsw i32 %35, %36
  %37 = load i32, ptr %nfv1, align 4, !tbaa !9
  %rem28 = srem i32 %add27, %37
  %call29 = call ptr @List_Entry(ptr noundef %34, i32 noundef %rem28)
  %cmp30 = icmp ne ptr %33, %call29
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %for.body
  %38 = load ptr, ptr %fverts1, align 8, !tbaa !5
  call void @List_Delete(ptr noundef %38)
  %39 = load ptr, ptr %fverts2, align 8, !tbaa !5
  call void @List_Delete(ptr noundef %39)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end32:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end32
  %40 = load i32, ptr %j, align 4, !tbaa !9
  %inc = add nsw i32 %40, 1
  store i32 %inc, ptr %j, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end48

if.else33:                                        ; preds = %if.end23
  store i32 2, ptr %j, align 4, !tbaa !9
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc45, %if.else33
  %41 = load i32, ptr %j, align 4, !tbaa !9
  %42 = load i32, ptr %nfv1, align 4, !tbaa !9
  %cmp35 = icmp slt i32 %41, %42
  br i1 %cmp35, label %for.body36, label %for.end47

for.body36:                                       ; preds = %for.cond34
  %43 = load ptr, ptr %fverts1, align 8, !tbaa !5
  %44 = load i32, ptr %j, align 4, !tbaa !9
  %call37 = call ptr @List_Entry(ptr noundef %43, i32 noundef %44)
  store ptr %call37, ptr %fv, align 8, !tbaa !5
  %45 = load ptr, ptr %fv, align 8, !tbaa !5
  %46 = load ptr, ptr %fverts2, align 8, !tbaa !5
  %47 = load i32, ptr %k, align 4, !tbaa !9
  %48 = load i32, ptr %j, align 4, !tbaa !9
  %sub38 = sub nsw i32 %47, %48
  %49 = load i32, ptr %nfv1, align 4, !tbaa !9
  %add39 = add nsw i32 %sub38, %49
  %50 = load i32, ptr %nfv1, align 4, !tbaa !9
  %rem40 = srem i32 %add39, %50
  %call41 = call ptr @List_Entry(ptr noundef %46, i32 noundef %rem40)
  %cmp42 = icmp ne ptr %45, %call41
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %for.body36
  %51 = load ptr, ptr %fverts1, align 8, !tbaa !5
  call void @List_Delete(ptr noundef %51)
  %52 = load ptr, ptr %fverts2, align 8, !tbaa !5
  call void @List_Delete(ptr noundef %52)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end44:                                         ; preds = %for.body36
  br label %for.inc45

for.inc45:                                        ; preds = %if.end44
  %53 = load i32, ptr %j, align 4, !tbaa !9
  %inc46 = add nsw i32 %53, 1
  store i32 %inc46, ptr %j, align 4, !tbaa !9
  br label %for.cond34

for.end47:                                        ; preds = %for.cond34
  br label %if.end48

if.end48:                                         ; preds = %for.end47, %for.end
  %54 = load ptr, ptr %fverts1, align 8, !tbaa !5
  call void @List_Delete(ptr noundef %54)
  %55 = load ptr, ptr %fverts2, align 8, !tbaa !5
  call void @List_Delete(ptr noundef %55)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then43, %if.then31, %if.else21, %if.then9, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %fverts2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %fverts1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %fv) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dir) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nfv2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nfv1) #3
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %56 = load i32, ptr %retval, align 4
  ret i32 %56
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @MF_Vertices(ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @List_Num_Entries(ptr noundef) #2

declare void @List_Delete(ptr noundef) #2

declare ptr @List_Entry(ptr noundef, i32 noundef) #2

declare i32 @List_Locate(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @MF_Set_GInfo_Auto_R2(ptr noundef %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %same = alloca i32, align 4
  %nv = alloca i32, align 4
  %fgdim = alloca i32, align 4
  %fgid = alloca i32, align 4
  %vgdim = alloca i32, align 4
  %vgid = alloca i32, align 4
  %vgdim0 = alloca i32, align 4
  %vgid0 = alloca i32, align 4
  %v = alloca ptr, align 8
  %adj = alloca ptr, align 8
  %fregions = alloca ptr, align 8
  %fregion0 = alloca ptr, align 8
  %fregion1 = alloca ptr, align 8
  %rgid0 = alloca i32, align 4
  %rgid1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %same) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nv) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %fgdim) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %fgid) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %vgdim) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %vgid) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %vgdim0) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %vgid0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %adj) #3
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !5
  %adj1 = getelementptr inbounds %struct.MFace, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %adj1, align 8, !tbaa !11
  store ptr %1, ptr %adj, align 8, !tbaa !5
  %2 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices = getelementptr inbounds %struct.MFace_Adj_R2, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %fvertices, align 8, !tbaa !13
  %call = call i32 @List_Num_Entries(ptr noundef %3)
  store i32 %call, ptr %nv, align 4, !tbaa !9
  store i32 1, ptr %same, align 4, !tbaa !9
  store i32 -1, ptr %fgdim, align 4, !tbaa !9
  store i32 -1, ptr %fgid, align 4, !tbaa !9
  store i32 -1, ptr %vgid, align 4, !tbaa !9
  %4 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices2 = getelementptr inbounds %struct.MFace_Adj_R2, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %fvertices2, align 8, !tbaa !13
  %call3 = call ptr @List_Entry(ptr noundef %5, i32 noundef 0)
  store ptr %call3, ptr %v, align 8, !tbaa !5
  %6 = load ptr, ptr %v, align 8, !tbaa !5
  %call4 = call i32 @MV_GEntID(ptr noundef %6)
  store i32 %call4, ptr %vgid0, align 4, !tbaa !9
  %7 = load ptr, ptr %v, align 8, !tbaa !5
  %call5 = call i32 @MV_GEntDim(ptr noundef %7)
  store i32 %call5, ptr %vgdim0, align 4, !tbaa !9
  store i32 1, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, ptr %i, align 4, !tbaa !9
  %9 = load i32, ptr %nv, align 4, !tbaa !9
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices6 = getelementptr inbounds %struct.MFace_Adj_R2, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %fvertices6, align 8, !tbaa !13
  %12 = load i32, ptr %i, align 4, !tbaa !9
  %call7 = call ptr @List_Entry(ptr noundef %11, i32 noundef %12)
  store ptr %call7, ptr %v, align 8, !tbaa !5
  %13 = load ptr, ptr %v, align 8, !tbaa !5
  %call8 = call i32 @MV_GEntID(ptr noundef %13)
  store i32 %call8, ptr %vgid, align 4, !tbaa !9
  %14 = load ptr, ptr %v, align 8, !tbaa !5
  %call9 = call i32 @MV_GEntDim(ptr noundef %14)
  store i32 %call9, ptr %vgdim, align 4, !tbaa !9
  %15 = load i32, ptr %vgdim, align 4, !tbaa !9
  %16 = load i32, ptr %vgdim0, align 4, !tbaa !9
  %cmp10 = icmp eq i32 %15, %16
  br i1 %cmp10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %17 = load i32, ptr %vgid, align 4, !tbaa !9
  %18 = load i32, ptr %vgid0, align 4, !tbaa !9
  %cmp11 = icmp eq i32 %17, %18
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true, %for.body
  store i32 0, ptr %same, align 4, !tbaa !9
  br label %for.end

for.inc:                                          ; preds = %if.then
  %19 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %if.else, %for.cond
  %20 = load i32, ptr %same, align 4, !tbaa !9
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then12, label %if.end

if.then12:                                        ; preds = %for.end
  %21 = load i32, ptr %vgdim0, align 4, !tbaa !9
  store i32 %21, ptr %fgdim, align 4, !tbaa !9
  %22 = load i32, ptr %vgid, align 4, !tbaa !9
  store i32 %22, ptr %fgid, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then12, %for.end
  %23 = load i32, ptr %fgdim, align 4, !tbaa !9
  %cmp13 = icmp eq i32 %23, -1
  br i1 %cmp13, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %24 = load i32, ptr %fgdim, align 4, !tbaa !9
  %cmp14 = icmp slt i32 %24, 2
  br i1 %cmp14, label %if.then15, label %if.end38

if.then15:                                        ; preds = %lor.lhs.false, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %fregions) #3
  %25 = load ptr, ptr %f.addr, align 8, !tbaa !5
  %call16 = call ptr @MF_Regions(ptr noundef %25)
  store ptr %call16, ptr %fregions, align 8, !tbaa !5
  %26 = load ptr, ptr %fregions, align 8, !tbaa !5
  %cmp17 = icmp eq ptr %26, null
  br i1 %cmp17, label %if.then21, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.then15
  %27 = load ptr, ptr %fregions, align 8, !tbaa !5
  %call19 = call i32 @List_Num_Entries(ptr noundef %27)
  %cmp20 = icmp eq i32 %call19, 1
  br i1 %cmp20, label %if.then21, label %if.else22

if.then21:                                        ; preds = %lor.lhs.false18, %if.then15
  store i32 2, ptr %fgdim, align 4, !tbaa !9
  br label %if.end34

if.else22:                                        ; preds = %lor.lhs.false18
  call void @llvm.lifetime.start.p0(i64 8, ptr %fregion0) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %fregion1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %rgid0) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %rgid1) #3
  %28 = load ptr, ptr %fregions, align 8, !tbaa !5
  %call23 = call ptr @List_Entry(ptr noundef %28, i32 noundef 0)
  store ptr %call23, ptr %fregion0, align 8, !tbaa !5
  %29 = load ptr, ptr %fregion0, align 8, !tbaa !5
  %call24 = call i32 @MEnt_GEntID(ptr noundef %29)
  store i32 %call24, ptr %rgid0, align 4, !tbaa !9
  %30 = load ptr, ptr %fregions, align 8, !tbaa !5
  %call25 = call ptr @List_Entry(ptr noundef %30, i32 noundef 1)
  store ptr %call25, ptr %fregion1, align 8, !tbaa !5
  %31 = load ptr, ptr %fregion1, align 8, !tbaa !5
  %call26 = call i32 @MEnt_GEntID(ptr noundef %31)
  store i32 %call26, ptr %rgid1, align 4, !tbaa !9
  %32 = load i32, ptr %rgid0, align 4, !tbaa !9
  %cmp27 = icmp eq i32 %32, -1
  br i1 %cmp27, label %if.then30, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.else22
  %33 = load i32, ptr %rgid1, align 4, !tbaa !9
  %cmp29 = icmp eq i32 %33, -1
  br i1 %cmp29, label %if.then30, label %if.else31

if.then30:                                        ; preds = %lor.lhs.false28, %if.else22
  store i32 3, ptr %fgdim, align 4, !tbaa !9
  br label %if.end33

if.else31:                                        ; preds = %lor.lhs.false28
  %34 = load i32, ptr %rgid0, align 4, !tbaa !9
  %35 = load i32, ptr %rgid1, align 4, !tbaa !9
  %cmp32 = icmp eq i32 %34, %35
  %36 = zext i1 %cmp32 to i64
  %cond = select i1 %cmp32, i32 3, i32 2
  store i32 %cond, ptr %fgdim, align 4, !tbaa !9
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.then30
  call void @llvm.lifetime.end.p0(i64 4, ptr %rgid1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %rgid0) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %fregion1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %fregion0) #3
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then21
  %37 = load ptr, ptr %fregions, align 8, !tbaa !5
  %tobool35 = icmp ne ptr %37, null
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end34
  %38 = load ptr, ptr %fregions, align 8, !tbaa !5
  call void @List_Delete(ptr noundef %38)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end34
  call void @llvm.lifetime.end.p0(i64 8, ptr %fregions) #3
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %lor.lhs.false
  %39 = load ptr, ptr %f.addr, align 8, !tbaa !5
  %40 = load i32, ptr %fgdim, align 4, !tbaa !9
  call void @MEnt_Set_GEntDim(ptr noundef %39, i32 noundef %40)
  %41 = load ptr, ptr %f.addr, align 8, !tbaa !5
  %42 = load i32, ptr %fgid, align 4, !tbaa !9
  call void @MEnt_Set_GEntID(ptr noundef %41, i32 noundef %42)
  %43 = load i32, ptr %fgdim, align 4, !tbaa !9
  %cmp39 = icmp eq i32 %43, 4
  br i1 %cmp39, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.end38
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else41:                                        ; preds = %if.end38
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else41, %if.then40
  call void @llvm.lifetime.end.p0(i64 8, ptr %adj) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vgid0) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vgdim0) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vgid) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %vgdim) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %fgid) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %fgdim) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nv) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %same) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
}

declare i32 @MV_GEntID(ptr noundef) #2

declare i32 @MV_GEntDim(ptr noundef) #2

declare ptr @MF_Regions(ptr noundef) #2

declare i32 @MEnt_GEntID(ptr noundef) #2

declare void @MEnt_Set_GEntDim(ptr noundef, i32 noundef) #2

declare void @MEnt_Set_GEntID(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @MF_Set_Vertices_R2(ptr noundef %f, i32 noundef %n, ptr noundef %v) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %adj = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !5
  store i32 %n, ptr %n.addr, align 4, !tbaa !9
  store ptr %v, ptr %v.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %adj) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !5
  %adj1 = getelementptr inbounds %struct.MFace, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %adj1, align 8, !tbaa !11
  store ptr %1, ptr %adj, align 8, !tbaa !5
  %2 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices = getelementptr inbounds %struct.MFace_Adj_R2, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %fvertices, align 8, !tbaa !13
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices2 = getelementptr inbounds %struct.MFace_Adj_R2, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %fvertices2, align 8, !tbaa !13
  call void @List_Delete(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %n.addr, align 4, !tbaa !9
  %call = call ptr @List_New(i32 noundef %6)
  %7 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices3 = getelementptr inbounds %struct.MFace_Adj_R2, ptr %7, i32 0, i32 0
  store ptr %call, ptr %fvertices3, align 8, !tbaa !13
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, ptr %i, align 4, !tbaa !9
  %9 = load i32, ptr %n.addr, align 4, !tbaa !9
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices4 = getelementptr inbounds %struct.MFace_Adj_R2, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %fvertices4, align 8, !tbaa !13
  %12 = load ptr, ptr %v.addr, align 8, !tbaa !5
  %13 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %12, i64 %idxprom
  %14 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %call5 = call ptr @List_Add(ptr noundef %11, ptr noundef %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %adj) #3
  ret void
}

declare ptr @List_New(i32 noundef) #2

declare ptr @List_Add(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @MF_Rem_Vertex_R2(ptr noundef %f, ptr noundef %v) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %adj = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !5
  store ptr %v, ptr %v.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %adj) #3
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !5
  %adj1 = getelementptr inbounds %struct.MFace, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %adj1, align 8, !tbaa !11
  store ptr %1, ptr %adj, align 8, !tbaa !5
  %2 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices = getelementptr inbounds %struct.MFace_Adj_R2, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %fvertices, align 8, !tbaa !13
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @MSTK_Report(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices2 = getelementptr inbounds %struct.MFace_Adj_R2, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %fvertices2, align 8, !tbaa !13
  %6 = load ptr, ptr %v.addr, align 8, !tbaa !5
  %call = call i32 @List_Rem(ptr noundef %5, ptr noundef %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adj) #3
  ret void
}

declare void @MSTK_Report(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @List_Rem(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @MF_Replace_Vertex_i_R2(ptr noundef %f, i32 noundef %i, ptr noundef %v) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %adj = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !5
  store i32 %i, ptr %i.addr, align 4, !tbaa !9
  store ptr %v, ptr %v.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %adj) #3
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !5
  %adj1 = getelementptr inbounds %struct.MFace, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %adj1, align 8, !tbaa !11
  store ptr %1, ptr %adj, align 8, !tbaa !5
  %2 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices = getelementptr inbounds %struct.MFace_Adj_R2, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %fvertices, align 8, !tbaa !13
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @MSTK_Report(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices2 = getelementptr inbounds %struct.MFace_Adj_R2, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %fvertices2, align 8, !tbaa !13
  %6 = load i32, ptr %i.addr, align 4, !tbaa !9
  %7 = load ptr, ptr %v.addr, align 8, !tbaa !5
  %call = call i32 @List_Replacei(ptr noundef %5, i32 noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adj) #3
  ret void
}

declare i32 @List_Replacei(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @MF_Replace_Vertex_R2(ptr noundef %f, ptr noundef %v, ptr noundef %nuv) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %nuv.addr = alloca ptr, align 8
  %adj = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !5
  store ptr %v, ptr %v.addr, align 8, !tbaa !5
  store ptr %nuv, ptr %nuv.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %adj) #3
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !5
  %adj1 = getelementptr inbounds %struct.MFace, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %adj1, align 8, !tbaa !11
  store ptr %1, ptr %adj, align 8, !tbaa !5
  %2 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices = getelementptr inbounds %struct.MFace_Adj_R2, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %fvertices, align 8, !tbaa !13
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @MSTK_Report(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices2 = getelementptr inbounds %struct.MFace_Adj_R2, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %fvertices2, align 8, !tbaa !13
  %6 = load ptr, ptr %v.addr, align 8, !tbaa !5
  %7 = load ptr, ptr %nuv.addr, align 8, !tbaa !5
  %call = call i32 @List_Replace(ptr noundef %5, ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adj) #3
  ret void
}

declare i32 @List_Replace(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @MF_Insert_Vertex_R2(ptr noundef %f, ptr noundef %nuv, ptr noundef %b4v) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %nuv.addr = alloca ptr, align 8
  %b4v.addr = alloca ptr, align 8
  %adj = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !5
  store ptr %nuv, ptr %nuv.addr, align 8, !tbaa !5
  store ptr %b4v, ptr %b4v.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %adj) #3
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !5
  %adj1 = getelementptr inbounds %struct.MFace, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %adj1, align 8, !tbaa !11
  store ptr %1, ptr %adj, align 8, !tbaa !5
  %2 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices = getelementptr inbounds %struct.MFace_Adj_R2, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %fvertices, align 8, !tbaa !13
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call ptr @List_New(i32 noundef 4)
  %4 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices2 = getelementptr inbounds %struct.MFace_Adj_R2, ptr %4, i32 0, i32 0
  store ptr %call, ptr %fvertices2, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices3 = getelementptr inbounds %struct.MFace_Adj_R2, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %fvertices3, align 8, !tbaa !13
  %7 = load ptr, ptr %nuv.addr, align 8, !tbaa !5
  %8 = load ptr, ptr %b4v.addr, align 8, !tbaa !5
  %call4 = call ptr @List_Insert(ptr noundef %6, ptr noundef %7, ptr noundef %8)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adj) #3
  ret void
}

declare ptr @List_Insert(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @MF_Insert_Vertex_i_R2(ptr noundef %f, ptr noundef %nuv, i32 noundef %i) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %nuv.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %adj = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !5
  store ptr %nuv, ptr %nuv.addr, align 8, !tbaa !5
  store i32 %i, ptr %i.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %adj) #3
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !5
  %adj1 = getelementptr inbounds %struct.MFace, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %adj1, align 8, !tbaa !11
  store ptr %1, ptr %adj, align 8, !tbaa !5
  %2 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices = getelementptr inbounds %struct.MFace_Adj_R2, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %fvertices, align 8, !tbaa !13
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call ptr @List_New(i32 noundef 4)
  %4 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices2 = getelementptr inbounds %struct.MFace_Adj_R2, ptr %4, i32 0, i32 0
  store ptr %call, ptr %fvertices2, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices3 = getelementptr inbounds %struct.MFace_Adj_R2, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %fvertices3, align 8, !tbaa !13
  %7 = load ptr, ptr %nuv.addr, align 8, !tbaa !5
  %8 = load i32, ptr %i.addr, align 4, !tbaa !9
  %call4 = call ptr @List_Inserti(ptr noundef %6, ptr noundef %7, i32 noundef %8)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adj) #3
  ret void
}

declare ptr @List_Inserti(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @MF_Num_Vertices_R2(ptr noundef %f) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %adj = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %adj) #3
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !5
  %adj1 = getelementptr inbounds %struct.MFace, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %adj1, align 8, !tbaa !11
  store ptr %1, ptr %adj, align 8, !tbaa !5
  %2 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices = getelementptr inbounds %struct.MFace_Adj_R2, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %fvertices, align 8, !tbaa !13
  %call = call i32 @List_Num_Entries(ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adj) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MF_Vertices_R2(ptr noundef %f, i32 noundef %dir, ptr noundef %v0) #0 {
entry:
  %retval = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %dir.addr = alloca i32, align 4
  %v0.addr = alloca ptr, align 8
  %adj = alloca ptr, align 8
  %fverts = alloca ptr, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %nv = alloca i32, align 4
  %fnd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !5
  store i32 %dir, ptr %dir.addr, align 4, !tbaa !9
  store ptr %v0, ptr %v0.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %adj) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %fverts) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  store i32 0, ptr %k, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %nv) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %fnd) #3
  store i32 0, ptr %fnd, align 4, !tbaa !9
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !5
  %adj1 = getelementptr inbounds %struct.MFace, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %adj1, align 8, !tbaa !11
  store ptr %1, ptr %adj, align 8, !tbaa !5
  %2 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices = getelementptr inbounds %struct.MFace_Adj_R2, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %fvertices, align 8, !tbaa !13
  %call = call i32 @List_Num_Entries(ptr noundef %3)
  store i32 %call, ptr %nv, align 4, !tbaa !9
  %4 = load ptr, ptr %v0.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.else10, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %dir.addr, align 4, !tbaa !9
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %6 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices4 = getelementptr inbounds %struct.MFace_Adj_R2, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %fvertices4, align 8, !tbaa !13
  %call5 = call ptr @List_Copy(ptr noundef %7)
  store ptr %call5, ptr %fverts, align 8, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load i32, ptr %nv, align 4, !tbaa !9
  %call6 = call ptr @List_New(i32 noundef %8)
  store ptr %call6, ptr %fverts, align 8, !tbaa !5
  %9 = load i32, ptr %nv, align 4, !tbaa !9
  %sub = sub nsw i32 %9, 1
  store i32 %sub, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %10 = load i32, ptr %i, align 4, !tbaa !9
  %cmp = icmp sge i32 %10, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %fverts, align 8, !tbaa !5
  %12 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices7 = getelementptr inbounds %struct.MFace_Adj_R2, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %fvertices7, align 8, !tbaa !13
  %14 = load i32, ptr %i, align 4, !tbaa !9
  %call8 = call ptr @List_Entry(ptr noundef %13, i32 noundef %14)
  %call9 = call ptr @List_Add(ptr noundef %11, ptr noundef %call8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4, !tbaa !9
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then3
  br label %if.end44

if.else10:                                        ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc19, %if.else10
  %16 = load i32, ptr %i, align 4, !tbaa !9
  %17 = load i32, ptr %nv, align 4, !tbaa !9
  %cmp12 = icmp slt i32 %16, %17
  br i1 %cmp12, label %for.body13, label %for.end20

for.body13:                                       ; preds = %for.cond11
  %18 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices14 = getelementptr inbounds %struct.MFace_Adj_R2, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %fvertices14, align 8, !tbaa !13
  %20 = load i32, ptr %i, align 4, !tbaa !9
  %call15 = call ptr @List_Entry(ptr noundef %19, i32 noundef %20)
  %21 = load ptr, ptr %v0.addr, align 8, !tbaa !5
  %cmp16 = icmp eq ptr %call15, %21
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %for.body13
  store i32 1, ptr %fnd, align 4, !tbaa !9
  %22 = load i32, ptr %i, align 4, !tbaa !9
  store i32 %22, ptr %k, align 4, !tbaa !9
  br label %for.end20

if.end18:                                         ; preds = %for.body13
  br label %for.inc19

for.inc19:                                        ; preds = %if.end18
  %23 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  br label %for.cond11

for.end20:                                        ; preds = %if.then17, %for.cond11
  %24 = load i32, ptr %fnd, align 4, !tbaa !9
  %tobool21 = icmp ne i32 %24, 0
  br i1 %tobool21, label %if.end23, label %if.then22

if.then22:                                        ; preds = %for.end20
  call void @MSTK_Report(ptr noundef @.str.3, ptr noundef @.str.4, i32 noundef 2)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %for.end20
  %25 = load i32, ptr %nv, align 4, !tbaa !9
  %call24 = call ptr @List_New(i32 noundef %25)
  store ptr %call24, ptr %fverts, align 8, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc41, %if.end23
  %26 = load i32, ptr %i, align 4, !tbaa !9
  %27 = load i32, ptr %nv, align 4, !tbaa !9
  %cmp26 = icmp slt i32 %26, %27
  br i1 %cmp26, label %for.body27, label %for.end43

for.body27:                                       ; preds = %for.cond25
  %28 = load i32, ptr %dir.addr, align 4, !tbaa !9
  %tobool28 = icmp ne i32 %28, 0
  br i1 %tobool28, label %if.then29, label %if.else33

if.then29:                                        ; preds = %for.body27
  %29 = load ptr, ptr %fverts, align 8, !tbaa !5
  %30 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices30 = getelementptr inbounds %struct.MFace_Adj_R2, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %fvertices30, align 8, !tbaa !13
  %32 = load i32, ptr %k, align 4, !tbaa !9
  %33 = load i32, ptr %i, align 4, !tbaa !9
  %add = add nsw i32 %32, %33
  %34 = load i32, ptr %nv, align 4, !tbaa !9
  %rem = srem i32 %add, %34
  %call31 = call ptr @List_Entry(ptr noundef %31, i32 noundef %rem)
  %call32 = call ptr @List_Add(ptr noundef %29, ptr noundef %call31)
  br label %if.end40

if.else33:                                        ; preds = %for.body27
  %35 = load ptr, ptr %fverts, align 8, !tbaa !5
  %36 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices34 = getelementptr inbounds %struct.MFace_Adj_R2, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %fvertices34, align 8, !tbaa !13
  %38 = load i32, ptr %k, align 4, !tbaa !9
  %39 = load i32, ptr %nv, align 4, !tbaa !9
  %add35 = add nsw i32 %38, %39
  %40 = load i32, ptr %i, align 4, !tbaa !9
  %sub36 = sub nsw i32 %add35, %40
  %41 = load i32, ptr %nv, align 4, !tbaa !9
  %rem37 = srem i32 %sub36, %41
  %call38 = call ptr @List_Entry(ptr noundef %37, i32 noundef %rem37)
  %call39 = call ptr @List_Add(ptr noundef %35, ptr noundef %call38)
  br label %if.end40

if.end40:                                         ; preds = %if.else33, %if.then29
  br label %for.inc41

for.inc41:                                        ; preds = %if.end40
  %42 = load i32, ptr %i, align 4, !tbaa !9
  %inc42 = add nsw i32 %42, 1
  store i32 %inc42, ptr %i, align 4, !tbaa !9
  br label %for.cond25

for.end43:                                        ; preds = %for.cond25
  br label %if.end44

if.end44:                                         ; preds = %for.end43, %if.end
  %43 = load ptr, ptr %fverts, align 8, !tbaa !5
  store ptr %43, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then22
  call void @llvm.lifetime.end.p0(i64 4, ptr %fnd) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nv) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %fverts) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %adj) #3
  %44 = load ptr, ptr %retval, align 8
  ret ptr %44
}

declare ptr @List_Copy(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @MF_VertexIDs_R2(ptr noundef %f, i32 noundef %dir, i32 noundef %startvertid, ptr noundef %nfv, ptr noundef %fvertids) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %dir.addr = alloca i32, align 4
  %startvertid.addr = alloca i32, align 4
  %nfv.addr = alloca ptr, align 8
  %fvertids.addr = alloca ptr, align 8
  %adj = alloca ptr, align 8
  %fverts = alloca ptr, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %nv = alloca i32, align 4
  %fnd = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !5
  store i32 %dir, ptr %dir.addr, align 4, !tbaa !9
  store i32 %startvertid, ptr %startvertid.addr, align 4, !tbaa !9
  store ptr %nfv, ptr %nfv.addr, align 8, !tbaa !5
  store ptr %fvertids, ptr %fvertids.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %adj) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %fverts) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  store i32 0, ptr %k, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %nv) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %fnd) #3
  store i32 0, ptr %fnd, align 4, !tbaa !9
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !5
  %adj1 = getelementptr inbounds %struct.MFace, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %adj1, align 8, !tbaa !11
  store ptr %1, ptr %adj, align 8, !tbaa !5
  %2 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices = getelementptr inbounds %struct.MFace_Adj_R2, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %fvertices, align 8, !tbaa !13
  %call = call i32 @List_Num_Entries(ptr noundef %3)
  store i32 %call, ptr %nv, align 4, !tbaa !9
  %4 = load i32, ptr %startvertid.addr, align 4, !tbaa !9
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.else17, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %dir.addr, align 4, !tbaa !9
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %6 = load i32, ptr %i, align 4, !tbaa !9
  %7 = load i32, ptr %nv, align 4, !tbaa !9
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices4 = getelementptr inbounds %struct.MFace_Adj_R2, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %fvertices4, align 8, !tbaa !13
  %10 = load i32, ptr %i, align 4, !tbaa !9
  %call5 = call ptr @List_Entry(ptr noundef %9, i32 noundef %10)
  %call6 = call i32 @MEnt_ID(ptr noundef %call5)
  %11 = load ptr, ptr %fvertids.addr, align 8, !tbaa !5
  %12 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i32, ptr %11, i64 %idxprom
  store i32 %call6, ptr %arrayidx, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %if.then
  %14 = load i32, ptr %nv, align 4, !tbaa !9
  %sub = sub nsw i32 %14, 1
  store i32 %sub, ptr %i, align 4, !tbaa !9
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc15, %if.else
  %15 = load i32, ptr %i, align 4, !tbaa !9
  %cmp8 = icmp sge i32 %15, 0
  br i1 %cmp8, label %for.body9, label %for.end16

for.body9:                                        ; preds = %for.cond7
  %16 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices10 = getelementptr inbounds %struct.MFace_Adj_R2, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %fvertices10, align 8, !tbaa !13
  %18 = load i32, ptr %i, align 4, !tbaa !9
  %call11 = call ptr @List_Entry(ptr noundef %17, i32 noundef %18)
  %call12 = call i32 @MEnt_ID(ptr noundef %call11)
  %19 = load ptr, ptr %fvertids.addr, align 8, !tbaa !5
  %20 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom13 = sext i32 %20 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %19, i64 %idxprom13
  store i32 %call12, ptr %arrayidx14, align 4, !tbaa !9
  br label %for.inc15

for.inc15:                                        ; preds = %for.body9
  %21 = load i32, ptr %i, align 4, !tbaa !9
  %dec = add nsw i32 %21, -1
  store i32 %dec, ptr %i, align 4, !tbaa !9
  br label %for.cond7

for.end16:                                        ; preds = %for.cond7
  br label %if.end

if.end:                                           ; preds = %for.end16, %for.end
  br label %if.end62

if.else17:                                        ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc27, %if.else17
  %22 = load i32, ptr %i, align 4, !tbaa !9
  %23 = load i32, ptr %nv, align 4, !tbaa !9
  %cmp19 = icmp slt i32 %22, %23
  br i1 %cmp19, label %for.body20, label %for.end29

for.body20:                                       ; preds = %for.cond18
  %24 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices21 = getelementptr inbounds %struct.MFace_Adj_R2, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %fvertices21, align 8, !tbaa !13
  %26 = load i32, ptr %i, align 4, !tbaa !9
  %call22 = call ptr @List_Entry(ptr noundef %25, i32 noundef %26)
  %call23 = call i32 @MEnt_ID(ptr noundef %call22)
  %27 = load i32, ptr %startvertid.addr, align 4, !tbaa !9
  %cmp24 = icmp eq i32 %call23, %27
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %for.body20
  store i32 1, ptr %fnd, align 4, !tbaa !9
  %28 = load i32, ptr %i, align 4, !tbaa !9
  store i32 %28, ptr %k, align 4, !tbaa !9
  br label %for.end29

if.end26:                                         ; preds = %for.body20
  br label %for.inc27

for.inc27:                                        ; preds = %if.end26
  %29 = load i32, ptr %i, align 4, !tbaa !9
  %inc28 = add nsw i32 %29, 1
  store i32 %inc28, ptr %i, align 4, !tbaa !9
  br label %for.cond18

for.end29:                                        ; preds = %if.then25, %for.cond18
  %30 = load i32, ptr %fnd, align 4, !tbaa !9
  %tobool30 = icmp ne i32 %30, 0
  br i1 %tobool30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %for.end29
  call void @MSTK_Report(ptr noundef @.str.5, ptr noundef @.str.4, i32 noundef 3)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %for.end29
  %31 = load i32, ptr %dir.addr, align 4, !tbaa !9
  %tobool33 = icmp ne i32 %31, 0
  br i1 %tobool33, label %if.then34, label %if.else46

if.then34:                                        ; preds = %if.end32
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc43, %if.then34
  %32 = load i32, ptr %i, align 4, !tbaa !9
  %33 = load i32, ptr %nv, align 4, !tbaa !9
  %cmp36 = icmp slt i32 %32, %33
  br i1 %cmp36, label %for.body37, label %for.end45

for.body37:                                       ; preds = %for.cond35
  %34 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices38 = getelementptr inbounds %struct.MFace_Adj_R2, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %fvertices38, align 8, !tbaa !13
  %36 = load i32, ptr %k, align 4, !tbaa !9
  %37 = load i32, ptr %i, align 4, !tbaa !9
  %add = add nsw i32 %36, %37
  %38 = load i32, ptr %nv, align 4, !tbaa !9
  %rem = srem i32 %add, %38
  %call39 = call ptr @List_Entry(ptr noundef %35, i32 noundef %rem)
  %call40 = call i32 @MEnt_ID(ptr noundef %call39)
  %39 = load ptr, ptr %fvertids.addr, align 8, !tbaa !5
  %40 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom41 = sext i32 %40 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %39, i64 %idxprom41
  store i32 %call40, ptr %arrayidx42, align 4, !tbaa !9
  br label %for.inc43

for.inc43:                                        ; preds = %for.body37
  %41 = load i32, ptr %i, align 4, !tbaa !9
  %inc44 = add nsw i32 %41, 1
  store i32 %inc44, ptr %i, align 4, !tbaa !9
  br label %for.cond35

for.end45:                                        ; preds = %for.cond35
  br label %if.end61

if.else46:                                        ; preds = %if.end32
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc58, %if.else46
  %42 = load i32, ptr %i, align 4, !tbaa !9
  %43 = load i32, ptr %nv, align 4, !tbaa !9
  %cmp48 = icmp slt i32 %42, %43
  br i1 %cmp48, label %for.body49, label %for.end60

for.body49:                                       ; preds = %for.cond47
  %44 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices50 = getelementptr inbounds %struct.MFace_Adj_R2, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %fvertices50, align 8, !tbaa !13
  %46 = load i32, ptr %k, align 4, !tbaa !9
  %47 = load i32, ptr %nv, align 4, !tbaa !9
  %add51 = add nsw i32 %46, %47
  %48 = load i32, ptr %i, align 4, !tbaa !9
  %sub52 = sub nsw i32 %add51, %48
  %49 = load i32, ptr %nv, align 4, !tbaa !9
  %rem53 = srem i32 %sub52, %49
  %call54 = call ptr @List_Entry(ptr noundef %45, i32 noundef %rem53)
  %call55 = call i32 @MEnt_ID(ptr noundef %call54)
  %50 = load ptr, ptr %fvertids.addr, align 8, !tbaa !5
  %51 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom56 = sext i32 %51 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %50, i64 %idxprom56
  store i32 %call55, ptr %arrayidx57, align 4, !tbaa !9
  br label %for.inc58

for.inc58:                                        ; preds = %for.body49
  %52 = load i32, ptr %i, align 4, !tbaa !9
  %inc59 = add nsw i32 %52, 1
  store i32 %inc59, ptr %i, align 4, !tbaa !9
  br label %for.cond47

for.end60:                                        ; preds = %for.cond47
  br label %if.end61

if.end61:                                         ; preds = %for.end60, %for.end45
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %fnd) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nv) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %fverts) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %adj) #3
  ret void
}

declare i32 @MEnt_ID(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @MF_UsesVertex_R2(ptr noundef %f, ptr noundef %v) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %adj = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !5
  store ptr %v, ptr %v.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %adj) #3
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !5
  %adj1 = getelementptr inbounds %struct.MFace, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %adj1, align 8, !tbaa !11
  store ptr %1, ptr %adj, align 8, !tbaa !5
  %2 = load ptr, ptr %adj, align 8, !tbaa !5
  %fvertices = getelementptr inbounds %struct.MFace_Adj_R2, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %fvertices, align 8, !tbaa !13
  %4 = load ptr, ptr %v.addr, align 8, !tbaa !5
  %call = call i32 @List_Contains(ptr noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr %adj) #3
  ret i32 %call
}

declare i32 @List_Contains(ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!11 = !{!12, !6, i64 40}
!12 = !{!"MFace", !6, i64 0, !6, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !6, i64 40}
!13 = !{!14, !6, i64 0}
!14 = !{!"MFace_Adj_R2", !6, i64 0, !6, i64 8, !6, i64 16, !10, i64 24}
