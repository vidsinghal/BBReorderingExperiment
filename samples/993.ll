; ModuleID = 'samples/993.bc'
source_filename = "/local-ssd/metis-s2drucovgchtc2rksbjqdaxyafp5yctq-build/aidengro/spack-stage-metis-5.1.0-s2drucovgchtc2rksbjqdaxyafp5yctq/spack-src/programs/m2gmetis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, float, float, float, i64 }
%struct.mesh_t = type { i32, i32, i32, ptr, ptr, ptr }
%struct.graph_t = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [75 x i8] c"*** Meshes with more than one balancing constraint are not supported yet.\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"***It seems that Metis did not free all of its memory! Report this.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"\0A***Metis returned with an error.\0A\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"******************************************************************************\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"METIS 5.0 Copyright 1998-13, Regents of the University of Minnesota\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c" (HEAD: %s, Built on: %s, %s)\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Jan 13 2024\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"04:06:00\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c" size of idx_t: %zubits, real_t: %zubits, idx_t *: %zubits\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [79 x i8] c"Mesh Information ------------------------------------------------------------\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c" Name: %s, #Elements: %d, #Nodes: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [79 x i8] c"Options ---------------------------------------------------------------------\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c" gtype=%s, ncommon=%d, outfile=%s\0A\00", align 1
@gtypenames = internal global [2 x [15 x i8]] [[15 x i8] c"dual\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"nodal\00\00\00\00\00\00\00\00\00\00"], align 16
@.str.16 = private unnamed_addr constant [27 x i8] c" - #nvtxs: %d, #edges: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [80 x i8] c"\0ATiming Information ----------------------------------------------------------\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"  I/O:          \09\09 %7.3f sec\0A\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"  Partitioning: \09\09 %7.3f sec   (METIS time)\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"  Reporting:    \09\09 %7.3f sec\0A\00", align 1
@.str.21 = private unnamed_addr constant [80 x i8] c"\0AMemory Information ----------------------------------------------------------\0A\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"  Max memory used:\09\09 %7.3f MB\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %mesh = alloca ptr, align 8
  %graph = alloca ptr, align 8
  %params = alloca ptr, align 8
  %status = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %mesh) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %graph) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %params) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4
  store i32 0, ptr %status, align 4, !tbaa !5
  %0 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %1 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %call = call ptr @parse_cmdline(i32 noundef %0, ptr noundef %1)
  store ptr %call, ptr %params, align 8, !tbaa !9
  %call1 = call double @gk_CPUSeconds()
  %2 = load ptr, ptr %params, align 8, !tbaa !9
  %iotimer = getelementptr inbounds %struct.params_t, ptr %2, i32 0, i32 31
  %3 = load float, ptr %iotimer, align 8, !tbaa !11
  %conv = fpext float %3 to double
  %sub = fsub double %conv, %call1
  %conv2 = fptrunc double %sub to float
  store float %conv2, ptr %iotimer, align 8, !tbaa !11
  %4 = load ptr, ptr %params, align 8, !tbaa !9
  %call3 = call ptr @ReadMesh(ptr noundef %4)
  store ptr %call3, ptr %mesh, align 8, !tbaa !9
  %call4 = call double @gk_CPUSeconds()
  %5 = load ptr, ptr %params, align 8, !tbaa !9
  %iotimer5 = getelementptr inbounds %struct.params_t, ptr %5, i32 0, i32 31
  %6 = load float, ptr %iotimer5, align 8, !tbaa !11
  %conv6 = fpext float %6 to double
  %add = fadd double %conv6, %call4
  %conv7 = fptrunc double %add to float
  store float %conv7, ptr %iotimer5, align 8, !tbaa !11
  %7 = load ptr, ptr %mesh, align 8, !tbaa !9
  %ncon = getelementptr inbounds %struct.mesh_t, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %ncon, align 8, !tbaa !15
  %cmp = icmp sgt i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  call void @exit(i32 noundef 0) #5
  unreachable

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %params, align 8, !tbaa !9
  %10 = load ptr, ptr %mesh, align 8, !tbaa !9
  call void @M2GPrintInfo(ptr noundef %9, ptr noundef %10)
  %call10 = call ptr @libmetis__CreateGraph()
  store ptr %call10, ptr %graph, align 8, !tbaa !9
  %call11 = call i32 (...) @gk_malloc_init()
  %call12 = call double @gk_CPUSeconds()
  %11 = load ptr, ptr %params, align 8, !tbaa !9
  %parttimer = getelementptr inbounds %struct.params_t, ptr %11, i32 0, i32 32
  %12 = load float, ptr %parttimer, align 4, !tbaa !17
  %conv13 = fpext float %12 to double
  %sub14 = fsub double %conv13, %call12
  %conv15 = fptrunc double %sub14 to float
  store float %conv15, ptr %parttimer, align 4, !tbaa !17
  %13 = load ptr, ptr %params, align 8, !tbaa !9
  %gtype = getelementptr inbounds %struct.params_t, ptr %13, i32 0, i32 12
  %14 = load i32, ptr %gtype, align 8, !tbaa !18
  switch i32 %14, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb25
  ]

sw.bb:                                            ; preds = %if.end
  %15 = load ptr, ptr %mesh, align 8, !tbaa !9
  %ne = getelementptr inbounds %struct.mesh_t, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %mesh, align 8, !tbaa !9
  %nn = getelementptr inbounds %struct.mesh_t, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %mesh, align 8, !tbaa !9
  %eptr = getelementptr inbounds %struct.mesh_t, ptr %17, i32 0, i32 3
  %18 = load ptr, ptr %eptr, align 8, !tbaa !19
  %19 = load ptr, ptr %mesh, align 8, !tbaa !9
  %eind = getelementptr inbounds %struct.mesh_t, ptr %19, i32 0, i32 4
  %20 = load ptr, ptr %eind, align 8, !tbaa !20
  %21 = load ptr, ptr %params, align 8, !tbaa !9
  %ncommon = getelementptr inbounds %struct.params_t, ptr %21, i32 0, i32 13
  %22 = load ptr, ptr %params, align 8, !tbaa !9
  %numflag = getelementptr inbounds %struct.params_t, ptr %22, i32 0, i32 28
  %23 = load ptr, ptr %graph, align 8, !tbaa !9
  %xadj = getelementptr inbounds %struct.graph_t, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %graph, align 8, !tbaa !9
  %adjncy = getelementptr inbounds %struct.graph_t, ptr %24, i32 0, i32 6
  %call16 = call i32 @METIS_MeshToDual(ptr noundef %ne, ptr noundef %nn, ptr noundef %18, ptr noundef %20, ptr noundef %ncommon, ptr noundef %numflag, ptr noundef %xadj, ptr noundef %adjncy)
  store i32 %call16, ptr %status, align 4, !tbaa !5
  %25 = load i32, ptr %status, align 4, !tbaa !5
  %cmp17 = icmp eq i32 %25, 1
  br i1 %cmp17, label %if.then19, label %if.end24

if.then19:                                        ; preds = %sw.bb
  %26 = load ptr, ptr %mesh, align 8, !tbaa !9
  %ne20 = getelementptr inbounds %struct.mesh_t, ptr %26, i32 0, i32 0
  %27 = load i32, ptr %ne20, align 8, !tbaa !21
  %28 = load ptr, ptr %graph, align 8, !tbaa !9
  %nvtxs = getelementptr inbounds %struct.graph_t, ptr %28, i32 0, i32 0
  store i32 %27, ptr %nvtxs, align 8, !tbaa !22
  %29 = load ptr, ptr %graph, align 8, !tbaa !9
  %xadj21 = getelementptr inbounds %struct.graph_t, ptr %29, i32 0, i32 3
  %30 = load ptr, ptr %xadj21, align 8, !tbaa !24
  %31 = load ptr, ptr %graph, align 8, !tbaa !9
  %nvtxs22 = getelementptr inbounds %struct.graph_t, ptr %31, i32 0, i32 0
  %32 = load i32, ptr %nvtxs22, align 8, !tbaa !22
  %idxprom = sext i32 %32 to i64
  %arrayidx = getelementptr inbounds i32, ptr %30, i64 %idxprom
  %33 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %34 = load ptr, ptr %graph, align 8, !tbaa !9
  %nedges = getelementptr inbounds %struct.graph_t, ptr %34, i32 0, i32 1
  store i32 %33, ptr %nedges, align 4, !tbaa !25
  %35 = load ptr, ptr %graph, align 8, !tbaa !9
  %ncon23 = getelementptr inbounds %struct.graph_t, ptr %35, i32 0, i32 2
  store i32 1, ptr %ncon23, align 8, !tbaa !26
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %sw.bb
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end
  %36 = load ptr, ptr %mesh, align 8, !tbaa !9
  %ne26 = getelementptr inbounds %struct.mesh_t, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %mesh, align 8, !tbaa !9
  %nn27 = getelementptr inbounds %struct.mesh_t, ptr %37, i32 0, i32 1
  %38 = load ptr, ptr %mesh, align 8, !tbaa !9
  %eptr28 = getelementptr inbounds %struct.mesh_t, ptr %38, i32 0, i32 3
  %39 = load ptr, ptr %eptr28, align 8, !tbaa !19
  %40 = load ptr, ptr %mesh, align 8, !tbaa !9
  %eind29 = getelementptr inbounds %struct.mesh_t, ptr %40, i32 0, i32 4
  %41 = load ptr, ptr %eind29, align 8, !tbaa !20
  %42 = load ptr, ptr %params, align 8, !tbaa !9
  %numflag30 = getelementptr inbounds %struct.params_t, ptr %42, i32 0, i32 28
  %43 = load ptr, ptr %graph, align 8, !tbaa !9
  %xadj31 = getelementptr inbounds %struct.graph_t, ptr %43, i32 0, i32 3
  %44 = load ptr, ptr %graph, align 8, !tbaa !9
  %adjncy32 = getelementptr inbounds %struct.graph_t, ptr %44, i32 0, i32 6
  %call33 = call i32 @METIS_MeshToNodal(ptr noundef %ne26, ptr noundef %nn27, ptr noundef %39, ptr noundef %41, ptr noundef %numflag30, ptr noundef %xadj31, ptr noundef %adjncy32)
  store i32 %call33, ptr %status, align 4, !tbaa !5
  %45 = load i32, ptr %status, align 4, !tbaa !5
  %cmp34 = icmp eq i32 %45, 1
  br i1 %cmp34, label %if.then36, label %if.end45

if.then36:                                        ; preds = %sw.bb25
  %46 = load ptr, ptr %mesh, align 8, !tbaa !9
  %nn37 = getelementptr inbounds %struct.mesh_t, ptr %46, i32 0, i32 1
  %47 = load i32, ptr %nn37, align 4, !tbaa !27
  %48 = load ptr, ptr %graph, align 8, !tbaa !9
  %nvtxs38 = getelementptr inbounds %struct.graph_t, ptr %48, i32 0, i32 0
  store i32 %47, ptr %nvtxs38, align 8, !tbaa !22
  %49 = load ptr, ptr %graph, align 8, !tbaa !9
  %xadj39 = getelementptr inbounds %struct.graph_t, ptr %49, i32 0, i32 3
  %50 = load ptr, ptr %xadj39, align 8, !tbaa !24
  %51 = load ptr, ptr %graph, align 8, !tbaa !9
  %nvtxs40 = getelementptr inbounds %struct.graph_t, ptr %51, i32 0, i32 0
  %52 = load i32, ptr %nvtxs40, align 8, !tbaa !22
  %idxprom41 = sext i32 %52 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %50, i64 %idxprom41
  %53 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %54 = load ptr, ptr %graph, align 8, !tbaa !9
  %nedges43 = getelementptr inbounds %struct.graph_t, ptr %54, i32 0, i32 1
  store i32 %53, ptr %nedges43, align 4, !tbaa !25
  %55 = load ptr, ptr %graph, align 8, !tbaa !9
  %ncon44 = getelementptr inbounds %struct.graph_t, ptr %55, i32 0, i32 2
  store i32 1, ptr %ncon44, align 8, !tbaa !26
  br label %if.end45

if.end45:                                         ; preds = %if.then36, %sw.bb25
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %if.end45, %if.end24
  %call46 = call double @gk_CPUSeconds()
  %56 = load ptr, ptr %params, align 8, !tbaa !9
  %parttimer47 = getelementptr inbounds %struct.params_t, ptr %56, i32 0, i32 32
  %57 = load float, ptr %parttimer47, align 4, !tbaa !17
  %conv48 = fpext float %57 to double
  %add49 = fadd double %conv48, %call46
  %conv50 = fptrunc double %add49 to float
  store float %conv50, ptr %parttimer47, align 4, !tbaa !17
  %call51 = call i64 (...) @gk_GetCurMemoryUsed()
  %cmp52 = icmp ne i64 %call51, 0
  br i1 %cmp52, label %if.then54, label %if.end56

if.then54:                                        ; preds = %sw.epilog
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %sw.epilog
  %call57 = call i64 (...) @gk_GetMaxMemoryUsed()
  %58 = load ptr, ptr %params, align 8, !tbaa !9
  %maxmemory = getelementptr inbounds %struct.params_t, ptr %58, i32 0, i32 34
  store i64 %call57, ptr %maxmemory, align 8, !tbaa !28
  call void @gk_malloc_cleanup(i32 noundef 0)
  %59 = load i32, ptr %status, align 4, !tbaa !5
  %cmp58 = icmp ne i32 %59, 1
  br i1 %cmp58, label %if.then60, label %if.else

if.then60:                                        ; preds = %if.end56
  %call61 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end72

if.else:                                          ; preds = %if.end56
  %call62 = call double @gk_CPUSeconds()
  %60 = load ptr, ptr %params, align 8, !tbaa !9
  %iotimer63 = getelementptr inbounds %struct.params_t, ptr %60, i32 0, i32 31
  %61 = load float, ptr %iotimer63, align 8, !tbaa !11
  %conv64 = fpext float %61 to double
  %sub65 = fsub double %conv64, %call62
  %conv66 = fptrunc double %sub65 to float
  store float %conv66, ptr %iotimer63, align 8, !tbaa !11
  %62 = load ptr, ptr %graph, align 8, !tbaa !9
  %63 = load ptr, ptr %params, align 8, !tbaa !9
  %outfile = getelementptr inbounds %struct.params_t, ptr %63, i32 0, i32 23
  %64 = load ptr, ptr %outfile, align 8, !tbaa !29
  call void @WriteGraph(ptr noundef %62, ptr noundef %64)
  %call67 = call double @gk_CPUSeconds()
  %65 = load ptr, ptr %params, align 8, !tbaa !9
  %iotimer68 = getelementptr inbounds %struct.params_t, ptr %65, i32 0, i32 31
  %66 = load float, ptr %iotimer68, align 8, !tbaa !11
  %conv69 = fpext float %66 to double
  %add70 = fadd double %conv69, %call67
  %conv71 = fptrunc double %add70 to float
  store float %conv71, ptr %iotimer68, align 8, !tbaa !11
  %67 = load ptr, ptr %params, align 8, !tbaa !9
  %68 = load ptr, ptr %mesh, align 8, !tbaa !9
  %69 = load ptr, ptr %graph, align 8, !tbaa !9
  call void @M2GReportResults(ptr noundef %67, ptr noundef %68, ptr noundef %69)
  br label %if.end72

if.end72:                                         ; preds = %if.else, %if.then60
  call void @libmetis__FreeGraph(ptr noundef %graph)
  call void @libmetis__FreeMesh(ptr noundef %mesh)
  %70 = load ptr, ptr %params, align 8, !tbaa !9
  %filename = getelementptr inbounds %struct.params_t, ptr %70, i32 0, i32 22
  %71 = load ptr, ptr %params, align 8, !tbaa !9
  %outfile73 = getelementptr inbounds %struct.params_t, ptr %71, i32 0, i32 23
  call void (ptr, ...) @gk_free(ptr noundef %filename, ptr noundef %outfile73, ptr noundef %params, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %params) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %graph) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %mesh) #4
  %72 = load i32, ptr %retval, align 4
  ret i32 %72
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @parse_cmdline(i32 noundef, ptr noundef) #2

declare double @gk_CPUSeconds() #2

declare ptr @ReadMesh(ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @M2GPrintInfo(ptr noundef %params, ptr noundef %mesh) #0 {
entry:
  %params.addr = alloca ptr, align 8
  %mesh.addr = alloca ptr, align 8
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  store ptr %mesh, ptr %mesh.addr, align 8, !tbaa !9
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef @.str.5)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef @.str.9)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i64 noundef 32, i64 noundef 32, i64 noundef 64)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %filename = getelementptr inbounds %struct.params_t, ptr %0, i32 0, i32 22
  %1 = load ptr, ptr %filename, align 8, !tbaa !30
  %2 = load ptr, ptr %mesh.addr, align 8, !tbaa !9
  %ne = getelementptr inbounds %struct.mesh_t, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %ne, align 8, !tbaa !21
  %4 = load ptr, ptr %mesh.addr, align 8, !tbaa !9
  %nn = getelementptr inbounds %struct.mesh_t, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %nn, align 4, !tbaa !27
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, ptr noundef %1, i32 noundef %3, i32 noundef %5)
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %6 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %gtype = getelementptr inbounds %struct.params_t, ptr %6, i32 0, i32 12
  %7 = load i32, ptr %gtype, align 8, !tbaa !18
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [2 x [15 x i8]], ptr @gtypenames, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [15 x i8], ptr %arrayidx, i64 0, i64 0
  %8 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %ncommon = getelementptr inbounds %struct.params_t, ptr %8, i32 0, i32 13
  %9 = load i32, ptr %ncommon, align 4, !tbaa !31
  %10 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %outfile = getelementptr inbounds %struct.params_t, ptr %10, i32 0, i32 23
  %11 = load ptr, ptr %outfile, align 8, !tbaa !29
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, ptr noundef %arraydecay, i32 noundef %9, ptr noundef %11)
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  ret void
}

declare ptr @libmetis__CreateGraph() #2

declare i32 @gk_malloc_init(...) #2

declare i32 @METIS_MeshToDual(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @METIS_MeshToNodal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @gk_GetCurMemoryUsed(...) #2

declare i64 @gk_GetMaxMemoryUsed(...) #2

declare void @gk_malloc_cleanup(i32 noundef) #2

declare void @WriteGraph(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @M2GReportResults(ptr noundef %params, ptr noundef %mesh, ptr noundef %graph) #0 {
entry:
  %params.addr = alloca ptr, align 8
  %mesh.addr = alloca ptr, align 8
  %graph.addr = alloca ptr, align 8
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  store ptr %mesh, ptr %mesh.addr, align 8, !tbaa !9
  store ptr %graph, ptr %graph.addr, align 8, !tbaa !9
  %call = call double @gk_CPUSeconds()
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %reporttimer = getelementptr inbounds %struct.params_t, ptr %0, i32 0, i32 33
  %1 = load float, ptr %reporttimer, align 8, !tbaa !32
  %conv = fpext float %1 to double
  %sub = fsub double %conv, %call
  %conv1 = fptrunc double %sub to float
  store float %conv1, ptr %reporttimer, align 8, !tbaa !32
  %2 = load ptr, ptr %graph.addr, align 8, !tbaa !9
  %nvtxs = getelementptr inbounds %struct.graph_t, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %nvtxs, align 8, !tbaa !22
  %4 = load ptr, ptr %graph.addr, align 8, !tbaa !9
  %nedges = getelementptr inbounds %struct.graph_t, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %nedges, align 4, !tbaa !25
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %3, i32 noundef %5)
  %call3 = call double @gk_CPUSeconds()
  %6 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %reporttimer4 = getelementptr inbounds %struct.params_t, ptr %6, i32 0, i32 33
  %7 = load float, ptr %reporttimer4, align 8, !tbaa !32
  %conv5 = fpext float %7 to double
  %add = fadd double %conv5, %call3
  %conv6 = fptrunc double %add to float
  store float %conv6, ptr %reporttimer4, align 8, !tbaa !32
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %8 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %iotimer = getelementptr inbounds %struct.params_t, ptr %8, i32 0, i32 31
  %9 = load float, ptr %iotimer, align 8, !tbaa !11
  %conv8 = fpext float %9 to double
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.18, double noundef %conv8)
  %10 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %parttimer = getelementptr inbounds %struct.params_t, ptr %10, i32 0, i32 32
  %11 = load float, ptr %parttimer, align 4, !tbaa !17
  %conv10 = fpext float %11 to double
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.19, double noundef %conv10)
  %12 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %reporttimer12 = getelementptr inbounds %struct.params_t, ptr %12, i32 0, i32 33
  %13 = load float, ptr %reporttimer12, align 8, !tbaa !32
  %conv13 = fpext float %13 to double
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.20, double noundef %conv13)
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.21)
  %14 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %maxmemory = getelementptr inbounds %struct.params_t, ptr %14, i32 0, i32 34
  %15 = load i64, ptr %maxmemory, align 8, !tbaa !28
  %conv16 = uitofp i64 %15 to double
  %div = fdiv double %conv16, 0x4130000000000000
  %conv17 = fptrunc double %div to float
  %conv18 = fpext float %conv17 to double
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.22, double noundef %conv18)
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  ret void
}

declare void @libmetis__FreeGraph(ptr noundef) #2

declare void @libmetis__FreeMesh(ptr noundef) #2

declare void @gk_free(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !13, i64 152}
!12 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !6, i64 128, !6, i64 132, !10, i64 136, !10, i64 144, !13, i64 152, !13, i64 156, !13, i64 160, !14, i64 168}
!13 = !{!"float", !7, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!16, !6, i64 8}
!16 = !{!"mesh_t", !6, i64 0, !6, i64 4, !6, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!17 = !{!12, !13, i64 156}
!18 = !{!12, !6, i64 48}
!19 = !{!16, !10, i64 16}
!20 = !{!16, !10, i64 24}
!21 = !{!16, !6, i64 0}
!22 = !{!23, !6, i64 0}
!23 = !{!"graph_t", !6, i64 0, !6, i64 4, !6, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !10, i64 96, !10, i64 104, !6, i64 112, !6, i64 116, !10, i64 120, !10, i64 128, !6, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208}
!24 = !{!23, !10, i64 16}
!25 = !{!23, !6, i64 4}
!26 = !{!23, !6, i64 8}
!27 = !{!16, !6, i64 4}
!28 = !{!12, !14, i64 168}
!29 = !{!12, !10, i64 96}
!30 = !{!12, !10, i64 88}
!31 = !{!12, !6, i64 52}
!32 = !{!12, !13, i64 160}
