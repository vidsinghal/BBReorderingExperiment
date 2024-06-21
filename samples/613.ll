; ModuleID = 'samples/613.bc'
source_filename = "/local-ssd/metis-atnxjhsg6agvwotqr5budxkumdz3mbwk-build/aidengro/spack-stage-metis-5.1.0-atnxjhsg6agvwotqr5budxkumdz3mbwk/spack-src/libmetis/ometis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.ctrl_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, double, ptr, ptr, ptr, double, double, double, double, double, double, double, double, double, double, double, double, double, ptr, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.graph_t = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@gk_jbufs = external thread_local global [0 x [1 x %struct.__jmp_buf_tag]], align 8
@gk_cur_jbufs = external thread_local global i32, align 4
@.str = private unnamed_addr constant [15 x i8] c"OMETIS: piperm\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"OMETIS: cptr\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"OMETIS: cind\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Nvtxs: %6d, [%6d %6d %6d]\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"  Bisection resulted in %d connected components\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"SplitGraphOrderCC: sgraphs\00", align 1

; Function Attrs: nounwind uwtable
define i32 @METIS_NodeND(ptr noundef %nvtxs, ptr noundef %xadj, ptr noundef %adjncy, ptr noundef %vwgt, ptr noundef %options, ptr noundef %perm, ptr noundef %iperm) #0 {
entry:
  %retval = alloca i32, align 4
  %nvtxs.addr = alloca ptr, align 8
  %xadj.addr = alloca ptr, align 8
  %adjncy.addr = alloca ptr, align 8
  %vwgt.addr = alloca ptr, align 8
  %options.addr = alloca ptr, align 8
  %perm.addr = alloca ptr, align 8
  %iperm.addr = alloca ptr, align 8
  %sigrval = alloca i32, align 4
  %renumber = alloca i32, align 4
  %i = alloca i32, align 4
  %ii = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %nnvtxs = alloca i32, align 4
  %graph = alloca ptr, align 8
  %ctrl = alloca ptr, align 8
  %cptr = alloca ptr, align 8
  %cind = alloca ptr, align 8
  %piperm = alloca ptr, align 8
  %numflag = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nvtxs, ptr %nvtxs.addr, align 8, !tbaa !4
  store ptr %xadj, ptr %xadj.addr, align 8, !tbaa !4
  store ptr %adjncy, ptr %adjncy.addr, align 8, !tbaa !4
  store ptr %vwgt, ptr %vwgt.addr, align 8, !tbaa !4
  store ptr %options, ptr %options.addr, align 8, !tbaa !4
  store ptr %perm, ptr %perm.addr, align 8, !tbaa !4
  store ptr %iperm, ptr %iperm.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %sigrval) #5
  store i32 0, ptr %sigrval, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %renumber) #5
  store i32 0, ptr %renumber, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ii) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nnvtxs) #5
  store i32 0, ptr %nnvtxs, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %graph) #5
  store ptr null, ptr %graph, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctrl) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cptr) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cind) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %piperm) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %numflag) #5
  store i32 0, ptr %numflag, align 4, !tbaa !8
  %call = call i32 (...) @gk_malloc_init()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 (...) @gk_sigtrap()
  %0 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @gk_jbufs)
  %1 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @gk_cur_jbufs)
  %2 = load i32, ptr %1, align 4, !tbaa !8
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [0 x [1 x %struct.__jmp_buf_tag]], ptr %0, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], ptr %arrayidx, i64 0, i64 0
  %call2 = call i32 @_setjmp(ptr noundef %arraydecay) #6
  store i32 %call2, ptr %sigrval, align 4, !tbaa !8
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %SIGTHROW

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %call5 = call ptr @libmetis__SetupCtrl(i32 noundef 2, ptr noundef %3, i32 noundef 1, i32 noundef 3, ptr noundef null, ptr noundef null)
  store ptr %call5, ptr %ctrl, align 8, !tbaa !4
  %4 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %tobool6 = icmp ne ptr %4, null
  br i1 %tobool6, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end4
  %call8 = call i32 (...) @gk_siguntrap()
  store i32 -2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %5 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %numflag10 = getelementptr inbounds %struct.ctrl_t, ptr %5, i32 0, i32 18
  %6 = load i32, ptr %numflag10, align 8, !tbaa !10
  %cmp11 = icmp eq i32 %6, 1
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  %7 = load ptr, ptr %nvtxs.addr, align 8, !tbaa !4
  %8 = load i32, ptr %7, align 4, !tbaa !8
  %9 = load ptr, ptr %xadj.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %adjncy.addr, align 8, !tbaa !4
  call void @libmetis__Change2CNumbering(i32 noundef %8, ptr noundef %9, ptr noundef %10)
  store i32 1, ptr %renumber, align 4, !tbaa !8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9
  %11 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %dbglvl = getelementptr inbounds %struct.ctrl_t, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %dbglvl, align 8, !tbaa !14
  %and = and i32 %12, 2
  %tobool14 = icmp ne i32 %and, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  %13 = load ptr, ptr %ctrl, align 8, !tbaa !4
  call void @libmetis__InitTimers(ptr noundef %13)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13
  %14 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %dbglvl17 = getelementptr inbounds %struct.ctrl_t, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %dbglvl17, align 8, !tbaa !14
  %and18 = and i32 %15, 2
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end16
  %call21 = call double @gk_CPUSeconds()
  %16 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %TotalTmr = getelementptr inbounds %struct.ctrl_t, ptr %16, i32 0, i32 27
  %17 = load double, ptr %TotalTmr, align 8, !tbaa !15
  %sub = fsub double %17, %call21
  store double %sub, ptr %TotalTmr, align 8, !tbaa !15
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end16
  %18 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %pfactor = getelementptr inbounds %struct.ctrl_t, ptr %18, i32 0, i32 22
  %19 = load double, ptr %pfactor, align 8, !tbaa !16
  %cmp23 = fcmp ogt double %19, 0.000000e+00
  br i1 %cmp23, label %if.then24, label %if.end34

if.then24:                                        ; preds = %if.end22
  %20 = load ptr, ptr %nvtxs.addr, align 8, !tbaa !4
  %21 = load i32, ptr %20, align 4, !tbaa !8
  %conv = sext i32 %21 to i64
  %call25 = call ptr @libmetis__imalloc(i64 noundef %conv, ptr noundef @.str)
  store ptr %call25, ptr %piperm, align 8, !tbaa !4
  %22 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %23 = load ptr, ptr %nvtxs.addr, align 8, !tbaa !4
  %24 = load i32, ptr %23, align 4, !tbaa !8
  %25 = load ptr, ptr %xadj.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %adjncy.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %vwgt.addr, align 8, !tbaa !4
  %28 = load ptr, ptr %piperm, align 8, !tbaa !4
  %29 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %pfactor26 = getelementptr inbounds %struct.ctrl_t, ptr %29, i32 0, i32 22
  %30 = load double, ptr %pfactor26, align 8, !tbaa !16
  %call27 = call ptr @libmetis__PruneGraph(ptr noundef %22, i32 noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, double noundef %30)
  store ptr %call27, ptr %graph, align 8, !tbaa !4
  %31 = load ptr, ptr %graph, align 8, !tbaa !4
  %cmp28 = icmp eq ptr %31, null
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.then24
  call void (ptr, ...) @gk_free(ptr noundef %piperm, ptr noundef null)
  %32 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %pfactor31 = getelementptr inbounds %struct.ctrl_t, ptr %32, i32 0, i32 22
  store double 0.000000e+00, ptr %pfactor31, align 8, !tbaa !16
  br label %if.end33

if.else:                                          ; preds = %if.then24
  %33 = load ptr, ptr %graph, align 8, !tbaa !4
  %nvtxs32 = getelementptr inbounds %struct.graph_t, ptr %33, i32 0, i32 0
  %34 = load i32, ptr %nvtxs32, align 8, !tbaa !17
  store i32 %34, ptr %nnvtxs, align 4, !tbaa !8
  %35 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %compress = getelementptr inbounds %struct.ctrl_t, ptr %35, i32 0, i32 13
  store i32 0, ptr %compress, align 4, !tbaa !19
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then30
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end22
  %36 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %compress35 = getelementptr inbounds %struct.ctrl_t, ptr %36, i32 0, i32 13
  %37 = load i32, ptr %compress35, align 4, !tbaa !19
  %tobool36 = icmp ne i32 %37, 0
  br i1 %tobool36, label %if.then37, label %if.end60

if.then37:                                        ; preds = %if.end34
  %38 = load ptr, ptr %nvtxs.addr, align 8, !tbaa !4
  %39 = load i32, ptr %38, align 4, !tbaa !8
  %add = add nsw i32 %39, 1
  %conv38 = sext i32 %add to i64
  %call39 = call ptr @libmetis__imalloc(i64 noundef %conv38, ptr noundef @.str.1)
  store ptr %call39, ptr %cptr, align 8, !tbaa !4
  %40 = load ptr, ptr %nvtxs.addr, align 8, !tbaa !4
  %41 = load i32, ptr %40, align 4, !tbaa !8
  %conv40 = sext i32 %41 to i64
  %call41 = call ptr @libmetis__imalloc(i64 noundef %conv40, ptr noundef @.str.2)
  store ptr %call41, ptr %cind, align 8, !tbaa !4
  %42 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %43 = load ptr, ptr %nvtxs.addr, align 8, !tbaa !4
  %44 = load i32, ptr %43, align 4, !tbaa !8
  %45 = load ptr, ptr %xadj.addr, align 8, !tbaa !4
  %46 = load ptr, ptr %adjncy.addr, align 8, !tbaa !4
  %47 = load ptr, ptr %vwgt.addr, align 8, !tbaa !4
  %48 = load ptr, ptr %cptr, align 8, !tbaa !4
  %49 = load ptr, ptr %cind, align 8, !tbaa !4
  %call42 = call ptr @libmetis__CompressGraph(ptr noundef %42, i32 noundef %44, ptr noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef %48, ptr noundef %49)
  store ptr %call42, ptr %graph, align 8, !tbaa !4
  %50 = load ptr, ptr %graph, align 8, !tbaa !4
  %cmp43 = icmp eq ptr %50, null
  br i1 %cmp43, label %if.then45, label %if.else47

if.then45:                                        ; preds = %if.then37
  call void (ptr, ...) @gk_free(ptr noundef %cptr, ptr noundef %cind, ptr noundef null)
  %51 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %compress46 = getelementptr inbounds %struct.ctrl_t, ptr %51, i32 0, i32 13
  store i32 0, ptr %compress46, align 4, !tbaa !19
  br label %if.end59

if.else47:                                        ; preds = %if.then37
  %52 = load ptr, ptr %graph, align 8, !tbaa !4
  %nvtxs48 = getelementptr inbounds %struct.graph_t, ptr %52, i32 0, i32 0
  %53 = load i32, ptr %nvtxs48, align 8, !tbaa !17
  store i32 %53, ptr %nnvtxs, align 4, !tbaa !8
  %54 = load ptr, ptr %nvtxs.addr, align 8, !tbaa !4
  %55 = load i32, ptr %54, align 4, !tbaa !8
  %conv49 = sitofp i32 %55 to double
  %mul = fmul double 1.000000e+00, %conv49
  %56 = load i32, ptr %nnvtxs, align 4, !tbaa !8
  %conv50 = sitofp i32 %56 to double
  %div = fdiv double %mul, %conv50
  %57 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %cfactor = getelementptr inbounds %struct.ctrl_t, ptr %57, i32 0, i32 26
  store double %div, ptr %cfactor, align 8, !tbaa !20
  %58 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %cfactor51 = getelementptr inbounds %struct.ctrl_t, ptr %58, i32 0, i32 26
  %59 = load double, ptr %cfactor51, align 8, !tbaa !20
  %cmp52 = fcmp ogt double %59, 1.500000e+00
  br i1 %cmp52, label %land.lhs.true, label %if.end58

land.lhs.true:                                    ; preds = %if.else47
  %60 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %nseps = getelementptr inbounds %struct.ctrl_t, ptr %60, i32 0, i32 11
  %61 = load i32, ptr %nseps, align 4, !tbaa !21
  %cmp54 = icmp eq i32 %61, 1
  br i1 %cmp54, label %if.then56, label %if.end58

if.then56:                                        ; preds = %land.lhs.true
  %62 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %nseps57 = getelementptr inbounds %struct.ctrl_t, ptr %62, i32 0, i32 11
  store i32 2, ptr %nseps57, align 4, !tbaa !21
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %land.lhs.true, %if.else47
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then45
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end34
  %63 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %pfactor61 = getelementptr inbounds %struct.ctrl_t, ptr %63, i32 0, i32 22
  %64 = load double, ptr %pfactor61, align 8, !tbaa !16
  %cmp62 = fcmp oeq double %64, 0.000000e+00
  br i1 %cmp62, label %land.lhs.true64, label %if.end70

land.lhs.true64:                                  ; preds = %if.end60
  %65 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %compress65 = getelementptr inbounds %struct.ctrl_t, ptr %65, i32 0, i32 13
  %66 = load i32, ptr %compress65, align 4, !tbaa !19
  %cmp66 = icmp eq i32 %66, 0
  br i1 %cmp66, label %if.then68, label %if.end70

if.then68:                                        ; preds = %land.lhs.true64
  %67 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %68 = load ptr, ptr %nvtxs.addr, align 8, !tbaa !4
  %69 = load i32, ptr %68, align 4, !tbaa !8
  %70 = load ptr, ptr %xadj.addr, align 8, !tbaa !4
  %71 = load ptr, ptr %adjncy.addr, align 8, !tbaa !4
  %72 = load ptr, ptr %vwgt.addr, align 8, !tbaa !4
  %call69 = call ptr @libmetis__SetupGraph(ptr noundef %67, i32 noundef %69, i32 noundef 1, ptr noundef %70, ptr noundef %71, ptr noundef %72, ptr noundef null, ptr noundef null)
  store ptr %call69, ptr %graph, align 8, !tbaa !4
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %land.lhs.true64, %if.end60
  %73 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %74 = load ptr, ptr %graph, align 8, !tbaa !4
  call void @libmetis__AllocateWorkSpace(ptr noundef %73, ptr noundef %74)
  %75 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %ccorder = getelementptr inbounds %struct.ctrl_t, ptr %75, i32 0, i32 14
  %76 = load i32, ptr %ccorder, align 8, !tbaa !22
  %tobool71 = icmp ne i32 %76, 0
  br i1 %tobool71, label %if.then72, label %if.else74

if.then72:                                        ; preds = %if.end70
  %77 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %78 = load ptr, ptr %graph, align 8, !tbaa !4
  %79 = load ptr, ptr %iperm.addr, align 8, !tbaa !4
  %80 = load ptr, ptr %graph, align 8, !tbaa !4
  %nvtxs73 = getelementptr inbounds %struct.graph_t, ptr %80, i32 0, i32 0
  %81 = load i32, ptr %nvtxs73, align 8, !tbaa !17
  call void @libmetis__MlevelNestedDissectionCC(ptr noundef %77, ptr noundef %78, ptr noundef %79, i32 noundef %81)
  br label %if.end76

if.else74:                                        ; preds = %if.end70
  %82 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %83 = load ptr, ptr %graph, align 8, !tbaa !4
  %84 = load ptr, ptr %iperm.addr, align 8, !tbaa !4
  %85 = load ptr, ptr %graph, align 8, !tbaa !4
  %nvtxs75 = getelementptr inbounds %struct.graph_t, ptr %85, i32 0, i32 0
  %86 = load i32, ptr %nvtxs75, align 8, !tbaa !17
  call void @libmetis__MlevelNestedDissection(ptr noundef %82, ptr noundef %83, ptr noundef %84, i32 noundef %86)
  br label %if.end76

if.end76:                                         ; preds = %if.else74, %if.then72
  %87 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %pfactor77 = getelementptr inbounds %struct.ctrl_t, ptr %87, i32 0, i32 22
  %88 = load double, ptr %pfactor77, align 8, !tbaa !16
  %cmp78 = fcmp ogt double %88, 0.000000e+00
  br i1 %cmp78, label %if.then80, label %if.else102

if.then80:                                        ; preds = %if.end76
  %89 = load i32, ptr %nnvtxs, align 4, !tbaa !8
  %conv81 = sext i32 %89 to i64
  %90 = load ptr, ptr %iperm.addr, align 8, !tbaa !4
  %91 = load ptr, ptr %perm.addr, align 8, !tbaa !4
  %call82 = call ptr @libmetis__icopy(i64 noundef %conv81, ptr noundef %90, ptr noundef %91)
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then80
  %92 = load i32, ptr %i, align 4, !tbaa !8
  %93 = load i32, ptr %nnvtxs, align 4, !tbaa !8
  %cmp83 = icmp slt i32 %92, %93
  br i1 %cmp83, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %94 = load ptr, ptr %perm.addr, align 8, !tbaa !4
  %95 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom85 = sext i32 %95 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %94, i64 %idxprom85
  %96 = load i32, ptr %arrayidx86, align 4, !tbaa !8
  %97 = load ptr, ptr %iperm.addr, align 8, !tbaa !4
  %98 = load ptr, ptr %piperm, align 8, !tbaa !4
  %99 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom87 = sext i32 %99 to i64
  %arrayidx88 = getelementptr inbounds i32, ptr %98, i64 %idxprom87
  %100 = load i32, ptr %arrayidx88, align 4, !tbaa !8
  %idxprom89 = sext i32 %100 to i64
  %arrayidx90 = getelementptr inbounds i32, ptr %97, i64 %idxprom89
  store i32 %96, ptr %arrayidx90, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %101 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %101, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %102 = load i32, ptr %nnvtxs, align 4, !tbaa !8
  store i32 %102, ptr %i, align 4, !tbaa !8
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc99, %for.end
  %103 = load i32, ptr %i, align 4, !tbaa !8
  %104 = load ptr, ptr %nvtxs.addr, align 8, !tbaa !4
  %105 = load i32, ptr %104, align 4, !tbaa !8
  %cmp92 = icmp slt i32 %103, %105
  br i1 %cmp92, label %for.body94, label %for.end101

for.body94:                                       ; preds = %for.cond91
  %106 = load i32, ptr %i, align 4, !tbaa !8
  %107 = load ptr, ptr %iperm.addr, align 8, !tbaa !4
  %108 = load ptr, ptr %piperm, align 8, !tbaa !4
  %109 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom95 = sext i32 %109 to i64
  %arrayidx96 = getelementptr inbounds i32, ptr %108, i64 %idxprom95
  %110 = load i32, ptr %arrayidx96, align 4, !tbaa !8
  %idxprom97 = sext i32 %110 to i64
  %arrayidx98 = getelementptr inbounds i32, ptr %107, i64 %idxprom97
  store i32 %106, ptr %arrayidx98, align 4, !tbaa !8
  br label %for.inc99

for.inc99:                                        ; preds = %for.body94
  %111 = load i32, ptr %i, align 4, !tbaa !8
  %inc100 = add nsw i32 %111, 1
  store i32 %inc100, ptr %i, align 4, !tbaa !8
  br label %for.cond91, !llvm.loop !25

for.end101:                                       ; preds = %for.cond91
  call void (ptr, ...) @gk_free(ptr noundef %piperm, ptr noundef null)
  br label %if.end144

if.else102:                                       ; preds = %if.end76
  %112 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %compress103 = getelementptr inbounds %struct.ctrl_t, ptr %112, i32 0, i32 13
  %113 = load i32, ptr %compress103, align 4, !tbaa !19
  %tobool104 = icmp ne i32 %113, 0
  br i1 %tobool104, label %if.then105, label %if.end143

if.then105:                                       ; preds = %if.else102
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond106

for.cond106:                                      ; preds = %for.inc114, %if.then105
  %114 = load i32, ptr %i, align 4, !tbaa !8
  %115 = load i32, ptr %nnvtxs, align 4, !tbaa !8
  %cmp107 = icmp slt i32 %114, %115
  br i1 %cmp107, label %for.body109, label %for.end116

for.body109:                                      ; preds = %for.cond106
  %116 = load i32, ptr %i, align 4, !tbaa !8
  %117 = load ptr, ptr %perm.addr, align 8, !tbaa !4
  %118 = load ptr, ptr %iperm.addr, align 8, !tbaa !4
  %119 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom110 = sext i32 %119 to i64
  %arrayidx111 = getelementptr inbounds i32, ptr %118, i64 %idxprom110
  %120 = load i32, ptr %arrayidx111, align 4, !tbaa !8
  %idxprom112 = sext i32 %120 to i64
  %arrayidx113 = getelementptr inbounds i32, ptr %117, i64 %idxprom112
  store i32 %116, ptr %arrayidx113, align 4, !tbaa !8
  br label %for.inc114

for.inc114:                                       ; preds = %for.body109
  %121 = load i32, ptr %i, align 4, !tbaa !8
  %inc115 = add nsw i32 %121, 1
  store i32 %inc115, ptr %i, align 4, !tbaa !8
  br label %for.cond106, !llvm.loop !26

for.end116:                                       ; preds = %for.cond106
  store i32 0, ptr %ii, align 4, !tbaa !8
  store i32 0, ptr %l, align 4, !tbaa !8
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc140, %for.end116
  %122 = load i32, ptr %ii, align 4, !tbaa !8
  %123 = load i32, ptr %nnvtxs, align 4, !tbaa !8
  %cmp118 = icmp slt i32 %122, %123
  br i1 %cmp118, label %for.body120, label %for.end142

for.body120:                                      ; preds = %for.cond117
  %124 = load ptr, ptr %perm.addr, align 8, !tbaa !4
  %125 = load i32, ptr %ii, align 4, !tbaa !8
  %idxprom121 = sext i32 %125 to i64
  %arrayidx122 = getelementptr inbounds i32, ptr %124, i64 %idxprom121
  %126 = load i32, ptr %arrayidx122, align 4, !tbaa !8
  store i32 %126, ptr %i, align 4, !tbaa !8
  %127 = load ptr, ptr %cptr, align 8, !tbaa !4
  %128 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom123 = sext i32 %128 to i64
  %arrayidx124 = getelementptr inbounds i32, ptr %127, i64 %idxprom123
  %129 = load i32, ptr %arrayidx124, align 4, !tbaa !8
  store i32 %129, ptr %j, align 4, !tbaa !8
  br label %for.cond125

for.cond125:                                      ; preds = %for.inc137, %for.body120
  %130 = load i32, ptr %j, align 4, !tbaa !8
  %131 = load ptr, ptr %cptr, align 8, !tbaa !4
  %132 = load i32, ptr %i, align 4, !tbaa !8
  %add126 = add nsw i32 %132, 1
  %idxprom127 = sext i32 %add126 to i64
  %arrayidx128 = getelementptr inbounds i32, ptr %131, i64 %idxprom127
  %133 = load i32, ptr %arrayidx128, align 4, !tbaa !8
  %cmp129 = icmp slt i32 %130, %133
  br i1 %cmp129, label %for.body131, label %for.end139

for.body131:                                      ; preds = %for.cond125
  %134 = load i32, ptr %l, align 4, !tbaa !8
  %inc132 = add nsw i32 %134, 1
  store i32 %inc132, ptr %l, align 4, !tbaa !8
  %135 = load ptr, ptr %iperm.addr, align 8, !tbaa !4
  %136 = load ptr, ptr %cind, align 8, !tbaa !4
  %137 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom133 = sext i32 %137 to i64
  %arrayidx134 = getelementptr inbounds i32, ptr %136, i64 %idxprom133
  %138 = load i32, ptr %arrayidx134, align 4, !tbaa !8
  %idxprom135 = sext i32 %138 to i64
  %arrayidx136 = getelementptr inbounds i32, ptr %135, i64 %idxprom135
  store i32 %134, ptr %arrayidx136, align 4, !tbaa !8
  br label %for.inc137

for.inc137:                                       ; preds = %for.body131
  %139 = load i32, ptr %j, align 4, !tbaa !8
  %inc138 = add nsw i32 %139, 1
  store i32 %inc138, ptr %j, align 4, !tbaa !8
  br label %for.cond125, !llvm.loop !27

for.end139:                                       ; preds = %for.cond125
  br label %for.inc140

for.inc140:                                       ; preds = %for.end139
  %140 = load i32, ptr %ii, align 4, !tbaa !8
  %inc141 = add nsw i32 %140, 1
  store i32 %inc141, ptr %ii, align 4, !tbaa !8
  br label %for.cond117, !llvm.loop !28

for.end142:                                       ; preds = %for.cond117
  call void (ptr, ...) @gk_free(ptr noundef %cptr, ptr noundef %cind, ptr noundef null)
  br label %if.end143

if.end143:                                        ; preds = %for.end142, %if.else102
  br label %if.end144

if.end144:                                        ; preds = %if.end143, %for.end101
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond145

for.cond145:                                      ; preds = %for.inc153, %if.end144
  %141 = load i32, ptr %i, align 4, !tbaa !8
  %142 = load ptr, ptr %nvtxs.addr, align 8, !tbaa !4
  %143 = load i32, ptr %142, align 4, !tbaa !8
  %cmp146 = icmp slt i32 %141, %143
  br i1 %cmp146, label %for.body148, label %for.end155

for.body148:                                      ; preds = %for.cond145
  %144 = load i32, ptr %i, align 4, !tbaa !8
  %145 = load ptr, ptr %perm.addr, align 8, !tbaa !4
  %146 = load ptr, ptr %iperm.addr, align 8, !tbaa !4
  %147 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom149 = sext i32 %147 to i64
  %arrayidx150 = getelementptr inbounds i32, ptr %146, i64 %idxprom149
  %148 = load i32, ptr %arrayidx150, align 4, !tbaa !8
  %idxprom151 = sext i32 %148 to i64
  %arrayidx152 = getelementptr inbounds i32, ptr %145, i64 %idxprom151
  store i32 %144, ptr %arrayidx152, align 4, !tbaa !8
  br label %for.inc153

for.inc153:                                       ; preds = %for.body148
  %149 = load i32, ptr %i, align 4, !tbaa !8
  %inc154 = add nsw i32 %149, 1
  store i32 %inc154, ptr %i, align 4, !tbaa !8
  br label %for.cond145, !llvm.loop !29

for.end155:                                       ; preds = %for.cond145
  %150 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %dbglvl156 = getelementptr inbounds %struct.ctrl_t, ptr %150, i32 0, i32 2
  %151 = load i32, ptr %dbglvl156, align 8, !tbaa !14
  %and157 = and i32 %151, 2
  %tobool158 = icmp ne i32 %and157, 0
  br i1 %tobool158, label %if.then159, label %if.end163

if.then159:                                       ; preds = %for.end155
  %call160 = call double @gk_CPUSeconds()
  %152 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %TotalTmr161 = getelementptr inbounds %struct.ctrl_t, ptr %152, i32 0, i32 27
  %153 = load double, ptr %TotalTmr161, align 8, !tbaa !15
  %add162 = fadd double %153, %call160
  store double %add162, ptr %TotalTmr161, align 8, !tbaa !15
  br label %if.end163

if.end163:                                        ; preds = %if.then159, %for.end155
  %154 = load ptr, ptr %ctrl, align 8, !tbaa !4
  %dbglvl164 = getelementptr inbounds %struct.ctrl_t, ptr %154, i32 0, i32 2
  %155 = load i32, ptr %dbglvl164, align 8, !tbaa !14
  %and165 = and i32 %155, 2
  %tobool166 = icmp ne i32 %and165, 0
  br i1 %tobool166, label %if.then167, label %if.end168

if.then167:                                       ; preds = %if.end163
  %156 = load ptr, ptr %ctrl, align 8, !tbaa !4
  call void @libmetis__PrintTimers(ptr noundef %156)
  br label %if.end168

if.end168:                                        ; preds = %if.then167, %if.end163
  call void @libmetis__FreeCtrl(ptr noundef %ctrl)
  br label %SIGTHROW

SIGTHROW:                                         ; preds = %if.end168, %if.then3
  %157 = load i32, ptr %renumber, align 4, !tbaa !8
  %tobool169 = icmp ne i32 %157, 0
  br i1 %tobool169, label %if.then170, label %if.end171

if.then170:                                       ; preds = %SIGTHROW
  %158 = load ptr, ptr %nvtxs.addr, align 8, !tbaa !4
  %159 = load i32, ptr %158, align 4, !tbaa !8
  %160 = load ptr, ptr %xadj.addr, align 8, !tbaa !4
  %161 = load ptr, ptr %adjncy.addr, align 8, !tbaa !4
  %162 = load ptr, ptr %perm.addr, align 8, !tbaa !4
  %163 = load ptr, ptr %iperm.addr, align 8, !tbaa !4
  call void @libmetis__Change2FNumberingOrder(i32 noundef %159, ptr noundef %160, ptr noundef %161, ptr noundef %162, ptr noundef %163)
  br label %if.end171

if.end171:                                        ; preds = %if.then170, %SIGTHROW
  %call172 = call i32 (...) @gk_siguntrap()
  call void @gk_malloc_cleanup(i32 noundef 0)
  %164 = load i32, ptr %sigrval, align 4, !tbaa !8
  %call173 = call i32 @libmetis__metis_rcode(i32 noundef %164)
  store i32 %call173, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end171, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %numflag) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %piperm) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %cind) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %cptr) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctrl) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %graph) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nnvtxs) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ii) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %renumber) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %sigrval) #5
  %165 = load i32, ptr %retval, align 4
  ret i32 %165
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @gk_malloc_init(...) #2

declare i32 @gk_sigtrap(...) #2

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #4

declare ptr @libmetis__SetupCtrl(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @gk_siguntrap(...) #2

declare void @libmetis__Change2CNumbering(i32 noundef, ptr noundef, ptr noundef) #2

declare void @libmetis__InitTimers(ptr noundef) #2

declare double @gk_CPUSeconds() #2

declare ptr @libmetis__imalloc(i64 noundef, ptr noundef) #2

declare ptr @libmetis__PruneGraph(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, double noundef) #2

declare void @gk_free(ptr noundef, ...) #2

declare ptr @libmetis__CompressGraph(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @libmetis__SetupGraph(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @libmetis__AllocateWorkSpace(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @libmetis__MlevelNestedDissectionCC(ptr noundef %ctrl, ptr noundef %graph, ptr noundef %order, i32 noundef %lastvtx) #0 {
entry:
  %ctrl.addr = alloca ptr, align 8
  %graph.addr = alloca ptr, align 8
  %order.addr = alloca ptr, align 8
  %lastvtx.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nvtxs = alloca i32, align 4
  %nbnd = alloca i32, align 4
  %ncmps = alloca i32, align 4
  %rnvtxs = alloca i32, align 4
  %snvtxs = alloca i32, align 4
  %label = alloca ptr, align 8
  %bndind = alloca ptr, align 8
  %cptr = alloca ptr, align 8
  %cind = alloca ptr, align 8
  %sgraphs = alloca ptr, align 8
  store ptr %ctrl, ptr %ctrl.addr, align 8, !tbaa !4
  store ptr %graph, ptr %graph.addr, align 8, !tbaa !4
  store ptr %order, ptr %order.addr, align 8, !tbaa !4
  store i32 %lastvtx, ptr %lastvtx.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nvtxs) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbnd) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ncmps) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %rnvtxs) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %snvtxs) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %label) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %bndind) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cptr) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cind) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %sgraphs) #5
  %0 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs1 = getelementptr inbounds %struct.graph_t, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %nvtxs1, align 8, !tbaa !17
  store i32 %1, ptr %nvtxs, align 4, !tbaa !8
  %2 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__MlevelNodeBisectionMultiple(ptr noundef %2, ptr noundef %3)
  %4 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %dbglvl = getelementptr inbounds %struct.ctrl_t, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %dbglvl, align 8, !tbaa !14
  %and = and i32 %5, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs2 = getelementptr inbounds %struct.graph_t, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %nvtxs2, align 8, !tbaa !17
  %8 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %pwgts = getelementptr inbounds %struct.graph_t, ptr %8, i32 0, i32 20
  %9 = load ptr, ptr %pwgts, align 8, !tbaa !30
  %arrayidx = getelementptr inbounds i32, ptr %9, i64 0
  %10 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %11 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %pwgts3 = getelementptr inbounds %struct.graph_t, ptr %11, i32 0, i32 20
  %12 = load ptr, ptr %pwgts3, align 8, !tbaa !30
  %arrayidx4 = getelementptr inbounds i32, ptr %12, i64 1
  %13 = load i32, ptr %arrayidx4, align 4, !tbaa !8
  %14 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %pwgts5 = getelementptr inbounds %struct.graph_t, ptr %14, i32 0, i32 20
  %15 = load ptr, ptr %pwgts5, align 8, !tbaa !30
  %arrayidx6 = getelementptr inbounds i32, ptr %15, i64 2
  %16 = load i32, ptr %arrayidx6, align 4, !tbaa !8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %7, i32 noundef %10, i32 noundef %13, i32 noundef %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nbnd7 = getelementptr inbounds %struct.graph_t, ptr %17, i32 0, i32 21
  %18 = load i32, ptr %nbnd7, align 8, !tbaa !31
  store i32 %18, ptr %nbnd, align 4, !tbaa !8
  %19 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %bndind8 = getelementptr inbounds %struct.graph_t, ptr %19, i32 0, i32 23
  %20 = load ptr, ptr %bndind8, align 8, !tbaa !32
  store ptr %20, ptr %bndind, align 8, !tbaa !4
  %21 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %label9 = getelementptr inbounds %struct.graph_t, ptr %21, i32 0, i32 15
  %22 = load ptr, ptr %label9, align 8, !tbaa !33
  store ptr %22, ptr %label, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %23 = load i32, ptr %i, align 4, !tbaa !8
  %24 = load i32, ptr %nbnd, align 4, !tbaa !8
  %cmp = icmp slt i32 %23, %24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, ptr %lastvtx.addr, align 4, !tbaa !8
  %dec = add nsw i32 %25, -1
  store i32 %dec, ptr %lastvtx.addr, align 4, !tbaa !8
  %26 = load ptr, ptr %order.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %label, align 8, !tbaa !4
  %28 = load ptr, ptr %bndind, align 8, !tbaa !4
  %29 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %29 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %28, i64 %idxprom
  %30 = load i32, ptr %arrayidx10, align 4, !tbaa !8
  %idxprom11 = sext i32 %30 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %27, i64 %idxprom11
  %31 = load i32, ptr %arrayidx12, align 4, !tbaa !8
  %idxprom13 = sext i32 %31 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %26, i64 %idxprom13
  store i32 %dec, ptr %arrayidx14, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  %33 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  call void @libmetis__wspacepush(ptr noundef %33)
  %34 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %35 = load i32, ptr %nvtxs, align 4, !tbaa !8
  %add = add nsw i32 %35, 1
  %call15 = call ptr @libmetis__iwspacemalloc(ptr noundef %34, i32 noundef %add)
  store ptr %call15, ptr %cptr, align 8, !tbaa !4
  %36 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %37 = load i32, ptr %nvtxs, align 4, !tbaa !8
  %call16 = call ptr @libmetis__iwspacemalloc(ptr noundef %36, i32 noundef %37)
  store ptr %call16, ptr %cind, align 8, !tbaa !4
  %38 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %39 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %40 = load ptr, ptr %cptr, align 8, !tbaa !4
  %41 = load ptr, ptr %cind, align 8, !tbaa !4
  %call17 = call i32 @libmetis__FindSepInducedComponents(ptr noundef %38, ptr noundef %39, ptr noundef %40, ptr noundef %41)
  store i32 %call17, ptr %ncmps, align 4, !tbaa !8
  %42 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %dbglvl18 = getelementptr inbounds %struct.ctrl_t, ptr %42, i32 0, i32 2
  %43 = load i32, ptr %dbglvl18, align 8, !tbaa !14
  %and19 = and i32 %43, 1
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then21, label %if.end26

if.then21:                                        ; preds = %for.end
  %44 = load i32, ptr %ncmps, align 4, !tbaa !8
  %cmp22 = icmp sgt i32 %44, 2
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.then21
  %45 = load i32, ptr %ncmps, align 4, !tbaa !8
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %45)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.then21
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %for.end
  %46 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %47 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %48 = load i32, ptr %ncmps, align 4, !tbaa !8
  %49 = load ptr, ptr %cptr, align 8, !tbaa !4
  %50 = load ptr, ptr %cind, align 8, !tbaa !4
  %call27 = call ptr @libmetis__SplitGraphOrderCC(ptr noundef %46, ptr noundef %47, i32 noundef %48, ptr noundef %49, ptr noundef %50)
  store ptr %call27, ptr %sgraphs, align 8, !tbaa !4
  %51 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  call void @libmetis__wspacepop(ptr noundef %51)
  call void @libmetis__FreeGraph(ptr noundef %graph.addr)
  store i32 0, ptr %i, align 4, !tbaa !8
  store i32 0, ptr %rnvtxs, align 4, !tbaa !8
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc51, %if.end26
  %52 = load i32, ptr %i, align 4, !tbaa !8
  %53 = load i32, ptr %ncmps, align 4, !tbaa !8
  %cmp29 = icmp slt i32 %52, %53
  br i1 %cmp29, label %for.body30, label %for.end53

for.body30:                                       ; preds = %for.cond28
  %54 = load ptr, ptr %sgraphs, align 8, !tbaa !4
  %55 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom31 = sext i32 %55 to i64
  %arrayidx32 = getelementptr inbounds ptr, ptr %54, i64 %idxprom31
  %56 = load ptr, ptr %arrayidx32, align 8, !tbaa !4
  %nvtxs33 = getelementptr inbounds %struct.graph_t, ptr %56, i32 0, i32 0
  %57 = load i32, ptr %nvtxs33, align 8, !tbaa !17
  store i32 %57, ptr %snvtxs, align 4, !tbaa !8
  %58 = load ptr, ptr %sgraphs, align 8, !tbaa !4
  %59 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom34 = sext i32 %59 to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %58, i64 %idxprom34
  %60 = load ptr, ptr %arrayidx35, align 8, !tbaa !4
  %nvtxs36 = getelementptr inbounds %struct.graph_t, ptr %60, i32 0, i32 0
  %61 = load i32, ptr %nvtxs36, align 8, !tbaa !17
  %cmp37 = icmp sgt i32 %61, 120
  br i1 %cmp37, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body30
  %62 = load ptr, ptr %sgraphs, align 8, !tbaa !4
  %63 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom38 = sext i32 %63 to i64
  %arrayidx39 = getelementptr inbounds ptr, ptr %62, i64 %idxprom38
  %64 = load ptr, ptr %arrayidx39, align 8, !tbaa !4
  %nedges = getelementptr inbounds %struct.graph_t, ptr %64, i32 0, i32 1
  %65 = load i32, ptr %nedges, align 4, !tbaa !35
  %cmp40 = icmp sgt i32 %65, 0
  br i1 %cmp40, label %if.then41, label %if.else

if.then41:                                        ; preds = %land.lhs.true
  %66 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %67 = load ptr, ptr %sgraphs, align 8, !tbaa !4
  %68 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom42 = sext i32 %68 to i64
  %arrayidx43 = getelementptr inbounds ptr, ptr %67, i64 %idxprom42
  %69 = load ptr, ptr %arrayidx43, align 8, !tbaa !4
  %70 = load ptr, ptr %order.addr, align 8, !tbaa !4
  %71 = load i32, ptr %lastvtx.addr, align 4, !tbaa !8
  %72 = load i32, ptr %rnvtxs, align 4, !tbaa !8
  %sub = sub nsw i32 %71, %72
  call void @libmetis__MlevelNestedDissectionCC(ptr noundef %66, ptr noundef %69, ptr noundef %70, i32 noundef %sub)
  br label %if.end49

if.else:                                          ; preds = %land.lhs.true, %for.body30
  %73 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %74 = load ptr, ptr %sgraphs, align 8, !tbaa !4
  %75 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom44 = sext i32 %75 to i64
  %arrayidx45 = getelementptr inbounds ptr, ptr %74, i64 %idxprom44
  %76 = load ptr, ptr %arrayidx45, align 8, !tbaa !4
  %77 = load ptr, ptr %order.addr, align 8, !tbaa !4
  %78 = load i32, ptr %lastvtx.addr, align 4, !tbaa !8
  %79 = load i32, ptr %rnvtxs, align 4, !tbaa !8
  %sub46 = sub nsw i32 %78, %79
  call void @libmetis__MMDOrder(ptr noundef %73, ptr noundef %76, ptr noundef %77, i32 noundef %sub46)
  %80 = load ptr, ptr %sgraphs, align 8, !tbaa !4
  %81 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom47 = sext i32 %81 to i64
  %arrayidx48 = getelementptr inbounds ptr, ptr %80, i64 %idxprom47
  call void @libmetis__FreeGraph(ptr noundef %arrayidx48)
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then41
  %82 = load i32, ptr %snvtxs, align 4, !tbaa !8
  %83 = load i32, ptr %rnvtxs, align 4, !tbaa !8
  %add50 = add nsw i32 %83, %82
  store i32 %add50, ptr %rnvtxs, align 4, !tbaa !8
  br label %for.inc51

for.inc51:                                        ; preds = %if.end49
  %84 = load i32, ptr %i, align 4, !tbaa !8
  %inc52 = add nsw i32 %84, 1
  store i32 %inc52, ptr %i, align 4, !tbaa !8
  br label %for.cond28, !llvm.loop !36

for.end53:                                        ; preds = %for.cond28
  call void (ptr, ...) @gk_free(ptr noundef %sgraphs, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 8, ptr %sgraphs) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %cind) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %cptr) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %bndind) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %label) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %snvtxs) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rnvtxs) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ncmps) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbnd) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nvtxs) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @libmetis__MlevelNestedDissection(ptr noundef %ctrl, ptr noundef %graph, ptr noundef %order, i32 noundef %lastvtx) #0 {
entry:
  %ctrl.addr = alloca ptr, align 8
  %graph.addr = alloca ptr, align 8
  %order.addr = alloca ptr, align 8
  %lastvtx.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nvtxs = alloca i32, align 4
  %nbnd = alloca i32, align 4
  %label = alloca ptr, align 8
  %bndind = alloca ptr, align 8
  %lgraph = alloca ptr, align 8
  %rgraph = alloca ptr, align 8
  store ptr %ctrl, ptr %ctrl.addr, align 8, !tbaa !4
  store ptr %graph, ptr %graph.addr, align 8, !tbaa !4
  store ptr %order, ptr %order.addr, align 8, !tbaa !4
  store i32 %lastvtx, ptr %lastvtx.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nvtxs) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbnd) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %label) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %bndind) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %lgraph) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %rgraph) #5
  %0 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs1 = getelementptr inbounds %struct.graph_t, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %nvtxs1, align 8, !tbaa !17
  store i32 %1, ptr %nvtxs, align 4, !tbaa !8
  %2 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__MlevelNodeBisectionMultiple(ptr noundef %2, ptr noundef %3)
  %4 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %dbglvl = getelementptr inbounds %struct.ctrl_t, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %dbglvl, align 8, !tbaa !14
  %and = and i32 %5, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs2 = getelementptr inbounds %struct.graph_t, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %nvtxs2, align 8, !tbaa !17
  %8 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %pwgts = getelementptr inbounds %struct.graph_t, ptr %8, i32 0, i32 20
  %9 = load ptr, ptr %pwgts, align 8, !tbaa !30
  %arrayidx = getelementptr inbounds i32, ptr %9, i64 0
  %10 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %11 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %pwgts3 = getelementptr inbounds %struct.graph_t, ptr %11, i32 0, i32 20
  %12 = load ptr, ptr %pwgts3, align 8, !tbaa !30
  %arrayidx4 = getelementptr inbounds i32, ptr %12, i64 1
  %13 = load i32, ptr %arrayidx4, align 4, !tbaa !8
  %14 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %pwgts5 = getelementptr inbounds %struct.graph_t, ptr %14, i32 0, i32 20
  %15 = load ptr, ptr %pwgts5, align 8, !tbaa !30
  %arrayidx6 = getelementptr inbounds i32, ptr %15, i64 2
  %16 = load i32, ptr %arrayidx6, align 4, !tbaa !8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %7, i32 noundef %10, i32 noundef %13, i32 noundef %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nbnd7 = getelementptr inbounds %struct.graph_t, ptr %17, i32 0, i32 21
  %18 = load i32, ptr %nbnd7, align 8, !tbaa !31
  store i32 %18, ptr %nbnd, align 4, !tbaa !8
  %19 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %bndind8 = getelementptr inbounds %struct.graph_t, ptr %19, i32 0, i32 23
  %20 = load ptr, ptr %bndind8, align 8, !tbaa !32
  store ptr %20, ptr %bndind, align 8, !tbaa !4
  %21 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %label9 = getelementptr inbounds %struct.graph_t, ptr %21, i32 0, i32 15
  %22 = load ptr, ptr %label9, align 8, !tbaa !33
  store ptr %22, ptr %label, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %23 = load i32, ptr %i, align 4, !tbaa !8
  %24 = load i32, ptr %nbnd, align 4, !tbaa !8
  %cmp = icmp slt i32 %23, %24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, ptr %lastvtx.addr, align 4, !tbaa !8
  %dec = add nsw i32 %25, -1
  store i32 %dec, ptr %lastvtx.addr, align 4, !tbaa !8
  %26 = load ptr, ptr %order.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %label, align 8, !tbaa !4
  %28 = load ptr, ptr %bndind, align 8, !tbaa !4
  %29 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %29 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %28, i64 %idxprom
  %30 = load i32, ptr %arrayidx10, align 4, !tbaa !8
  %idxprom11 = sext i32 %30 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %27, i64 %idxprom11
  %31 = load i32, ptr %arrayidx12, align 4, !tbaa !8
  %idxprom13 = sext i32 %31 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %26, i64 %idxprom13
  store i32 %dec, ptr %arrayidx14, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !37

for.end:                                          ; preds = %for.cond
  %33 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %34 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__SplitGraphOrder(ptr noundef %33, ptr noundef %34, ptr noundef %lgraph, ptr noundef %rgraph)
  call void @libmetis__FreeGraph(ptr noundef %graph.addr)
  %35 = load ptr, ptr %lgraph, align 8, !tbaa !4
  %nvtxs15 = getelementptr inbounds %struct.graph_t, ptr %35, i32 0, i32 0
  %36 = load i32, ptr %nvtxs15, align 8, !tbaa !17
  %cmp16 = icmp sgt i32 %36, 120
  br i1 %cmp16, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %37 = load ptr, ptr %lgraph, align 8, !tbaa !4
  %nedges = getelementptr inbounds %struct.graph_t, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %nedges, align 4, !tbaa !35
  %cmp17 = icmp sgt i32 %38, 0
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %land.lhs.true
  %39 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %40 = load ptr, ptr %lgraph, align 8, !tbaa !4
  %41 = load ptr, ptr %order.addr, align 8, !tbaa !4
  %42 = load i32, ptr %lastvtx.addr, align 4, !tbaa !8
  %43 = load ptr, ptr %rgraph, align 8, !tbaa !4
  %nvtxs19 = getelementptr inbounds %struct.graph_t, ptr %43, i32 0, i32 0
  %44 = load i32, ptr %nvtxs19, align 8, !tbaa !17
  %sub = sub nsw i32 %42, %44
  call void @libmetis__MlevelNestedDissection(ptr noundef %39, ptr noundef %40, ptr noundef %41, i32 noundef %sub)
  br label %if.end22

if.else:                                          ; preds = %land.lhs.true, %for.end
  %45 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %46 = load ptr, ptr %lgraph, align 8, !tbaa !4
  %47 = load ptr, ptr %order.addr, align 8, !tbaa !4
  %48 = load i32, ptr %lastvtx.addr, align 4, !tbaa !8
  %49 = load ptr, ptr %rgraph, align 8, !tbaa !4
  %nvtxs20 = getelementptr inbounds %struct.graph_t, ptr %49, i32 0, i32 0
  %50 = load i32, ptr %nvtxs20, align 8, !tbaa !17
  %sub21 = sub nsw i32 %48, %50
  call void @libmetis__MMDOrder(ptr noundef %45, ptr noundef %46, ptr noundef %47, i32 noundef %sub21)
  call void @libmetis__FreeGraph(ptr noundef %lgraph)
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then18
  %51 = load ptr, ptr %rgraph, align 8, !tbaa !4
  %nvtxs23 = getelementptr inbounds %struct.graph_t, ptr %51, i32 0, i32 0
  %52 = load i32, ptr %nvtxs23, align 8, !tbaa !17
  %cmp24 = icmp sgt i32 %52, 120
  br i1 %cmp24, label %land.lhs.true25, label %if.else29

land.lhs.true25:                                  ; preds = %if.end22
  %53 = load ptr, ptr %rgraph, align 8, !tbaa !4
  %nedges26 = getelementptr inbounds %struct.graph_t, ptr %53, i32 0, i32 1
  %54 = load i32, ptr %nedges26, align 4, !tbaa !35
  %cmp27 = icmp sgt i32 %54, 0
  br i1 %cmp27, label %if.then28, label %if.else29

if.then28:                                        ; preds = %land.lhs.true25
  %55 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %56 = load ptr, ptr %rgraph, align 8, !tbaa !4
  %57 = load ptr, ptr %order.addr, align 8, !tbaa !4
  %58 = load i32, ptr %lastvtx.addr, align 4, !tbaa !8
  call void @libmetis__MlevelNestedDissection(ptr noundef %55, ptr noundef %56, ptr noundef %57, i32 noundef %58)
  br label %if.end30

if.else29:                                        ; preds = %land.lhs.true25, %if.end22
  %59 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %60 = load ptr, ptr %rgraph, align 8, !tbaa !4
  %61 = load ptr, ptr %order.addr, align 8, !tbaa !4
  %62 = load i32, ptr %lastvtx.addr, align 4, !tbaa !8
  call void @libmetis__MMDOrder(ptr noundef %59, ptr noundef %60, ptr noundef %61, i32 noundef %62)
  call void @libmetis__FreeGraph(ptr noundef %rgraph)
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %if.then28
  call void @llvm.lifetime.end.p0(i64 8, ptr %rgraph) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %lgraph) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %bndind) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %label) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbnd) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nvtxs) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret void
}

declare ptr @libmetis__icopy(i64 noundef, ptr noundef, ptr noundef) #2

declare void @libmetis__PrintTimers(ptr noundef) #2

declare void @libmetis__FreeCtrl(ptr noundef) #2

declare void @libmetis__Change2FNumberingOrder(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @gk_malloc_cleanup(i32 noundef) #2

declare i32 @libmetis__metis_rcode(i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @libmetis__MlevelNodeBisectionMultiple(ptr noundef %ctrl, ptr noundef %graph) #0 {
entry:
  %ctrl.addr = alloca ptr, align 8
  %graph.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %mincut = alloca i32, align 4
  %bestwhere = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctrl, ptr %ctrl.addr, align 8, !tbaa !4
  store ptr %graph, ptr %graph.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %mincut) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %bestwhere) #5
  %0 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %nseps = getelementptr inbounds %struct.ctrl_t, ptr %0, i32 0, i32 11
  %1 = load i32, ptr %nseps, align 4, !tbaa !21
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs = getelementptr inbounds %struct.graph_t, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %nvtxs, align 8, !tbaa !17
  %4 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %compress = getelementptr inbounds %struct.ctrl_t, ptr %4, i32 0, i32 13
  %5 = load i32, ptr %compress, align 4, !tbaa !19
  %tobool = icmp ne i32 %5, 0
  %6 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1000, i32 2000
  %cmp1 = icmp slt i32 %3, %cond
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__MlevelNodeBisectionL2(ptr noundef %7, ptr noundef %8, i32 noundef 7)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %9 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  call void @libmetis__wspacepush(ptr noundef %9)
  %10 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs2 = getelementptr inbounds %struct.graph_t, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %nvtxs2, align 8, !tbaa !17
  %call = call ptr @libmetis__iwspacemalloc(ptr noundef %10, i32 noundef %12)
  store ptr %call, ptr %bestwhere, align 8, !tbaa !4
  %13 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %tvwgt = getelementptr inbounds %struct.graph_t, ptr %13, i32 0, i32 8
  %14 = load ptr, ptr %tvwgt, align 8, !tbaa !38
  %arrayidx = getelementptr inbounds i32, ptr %14, i64 0
  %15 = load i32, ptr %arrayidx, align 4, !tbaa !8
  store i32 %15, ptr %mincut, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i32, ptr %i, align 4, !tbaa !8
  %17 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %nseps3 = getelementptr inbounds %struct.ctrl_t, ptr %17, i32 0, i32 11
  %18 = load i32, ptr %nseps3, align 4, !tbaa !21
  %cmp4 = icmp slt i32 %16, %18
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__MlevelNodeBisectionL2(ptr noundef %19, ptr noundef %20, i32 noundef 7)
  %21 = load i32, ptr %i, align 4, !tbaa !8
  %cmp5 = icmp eq i32 %21, 0
  br i1 %cmp5, label %if.then9, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %for.body
  %22 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %mincut7 = getelementptr inbounds %struct.graph_t, ptr %22, i32 0, i32 17
  %23 = load i32, ptr %mincut7, align 8, !tbaa !39
  %24 = load i32, ptr %mincut, align 4, !tbaa !8
  %cmp8 = icmp slt i32 %23, %24
  br i1 %cmp8, label %if.then9, label %if.end17

if.then9:                                         ; preds = %lor.lhs.false6, %for.body
  %25 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %mincut10 = getelementptr inbounds %struct.graph_t, ptr %25, i32 0, i32 17
  %26 = load i32, ptr %mincut10, align 8, !tbaa !39
  store i32 %26, ptr %mincut, align 4, !tbaa !8
  %27 = load i32, ptr %i, align 4, !tbaa !8
  %28 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %nseps11 = getelementptr inbounds %struct.ctrl_t, ptr %28, i32 0, i32 11
  %29 = load i32, ptr %nseps11, align 4, !tbaa !21
  %sub = sub nsw i32 %29, 1
  %cmp12 = icmp slt i32 %27, %sub
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.then9
  %30 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs14 = getelementptr inbounds %struct.graph_t, ptr %30, i32 0, i32 0
  %31 = load i32, ptr %nvtxs14, align 8, !tbaa !17
  %conv = sext i32 %31 to i64
  %32 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %where = getelementptr inbounds %struct.graph_t, ptr %32, i32 0, i32 19
  %33 = load ptr, ptr %where, align 8, !tbaa !40
  %34 = load ptr, ptr %bestwhere, align 8, !tbaa !4
  %call15 = call ptr @libmetis__icopy(i64 noundef %conv, ptr noundef %33, ptr noundef %34)
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.then9
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %lor.lhs.false6
  %35 = load i32, ptr %mincut, align 4, !tbaa !8
  %cmp18 = icmp eq i32 %35, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  br label %for.end

if.end21:                                         ; preds = %if.end17
  %36 = load i32, ptr %i, align 4, !tbaa !8
  %37 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %nseps22 = getelementptr inbounds %struct.ctrl_t, ptr %37, i32 0, i32 11
  %38 = load i32, ptr %nseps22, align 4, !tbaa !21
  %sub23 = sub nsw i32 %38, 1
  %cmp24 = icmp slt i32 %36, %sub23
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end21
  %39 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__FreeRData(ptr noundef %39)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end21
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %40 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %40, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !41

for.end:                                          ; preds = %if.then20, %for.cond
  %41 = load i32, ptr %mincut, align 4, !tbaa !8
  %42 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %mincut28 = getelementptr inbounds %struct.graph_t, ptr %42, i32 0, i32 17
  %43 = load i32, ptr %mincut28, align 8, !tbaa !39
  %cmp29 = icmp ne i32 %41, %43
  br i1 %cmp29, label %if.then31, label %if.end36

if.then31:                                        ; preds = %for.end
  %44 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs32 = getelementptr inbounds %struct.graph_t, ptr %44, i32 0, i32 0
  %45 = load i32, ptr %nvtxs32, align 8, !tbaa !17
  %conv33 = sext i32 %45 to i64
  %46 = load ptr, ptr %bestwhere, align 8, !tbaa !4
  %47 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %where34 = getelementptr inbounds %struct.graph_t, ptr %47, i32 0, i32 19
  %48 = load ptr, ptr %where34, align 8, !tbaa !40
  %call35 = call ptr @libmetis__icopy(i64 noundef %conv33, ptr noundef %46, ptr noundef %48)
  %49 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %50 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__Compute2WayNodePartitionParams(ptr noundef %49, ptr noundef %50)
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %for.end
  %51 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  call void @libmetis__wspacepop(ptr noundef %51)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bestwhere) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %mincut) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define void @libmetis__SplitGraphOrder(ptr noundef %ctrl, ptr noundef %graph, ptr noundef %r_lgraph, ptr noundef %r_rgraph) #0 {
entry:
  %ctrl.addr = alloca ptr, align 8
  %graph.addr = alloca ptr, align 8
  %r_lgraph.addr = alloca ptr, align 8
  %r_rgraph.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ii = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %istart = alloca i32, align 4
  %iend = alloca i32, align 4
  %mypart = alloca i32, align 4
  %nvtxs = alloca i32, align 4
  %snvtxs = alloca [3 x i32], align 4
  %snedges = alloca [3 x i32], align 4
  %xadj = alloca ptr, align 8
  %vwgt = alloca ptr, align 8
  %adjncy = alloca ptr, align 8
  %adjwgt = alloca ptr, align 8
  %label = alloca ptr, align 8
  %where = alloca ptr, align 8
  %bndptr = alloca ptr, align 8
  %bndind = alloca ptr, align 8
  %sxadj = alloca [2 x ptr], align 16
  %svwgt = alloca [2 x ptr], align 16
  %sadjncy = alloca [2 x ptr], align 16
  %sadjwgt = alloca [2 x ptr], align 16
  %slabel = alloca [2 x ptr], align 16
  %rename = alloca ptr, align 8
  %auxadjncy = alloca ptr, align 8
  %lgraph = alloca ptr, align 8
  %rgraph = alloca ptr, align 8
  store ptr %ctrl, ptr %ctrl.addr, align 8, !tbaa !4
  store ptr %graph, ptr %graph.addr, align 8, !tbaa !4
  store ptr %r_lgraph, ptr %r_lgraph.addr, align 8, !tbaa !4
  store ptr %r_rgraph, ptr %r_rgraph.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ii) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %istart) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %iend) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %mypart) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nvtxs) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr %snvtxs) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr %snedges) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %xadj) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %vwgt) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %adjncy) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %adjwgt) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %label) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %where) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %bndptr) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %bndind) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %sxadj) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %svwgt) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %sadjncy) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %sadjwgt) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %slabel) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %rename) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %auxadjncy) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %lgraph) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %rgraph) #5
  %0 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  call void @libmetis__wspacepush(ptr noundef %0)
  %1 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %dbglvl = getelementptr inbounds %struct.ctrl_t, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %dbglvl, align 8, !tbaa !14
  %and = and i32 %2, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call double @gk_CPUSeconds()
  %3 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %SplitTmr = getelementptr inbounds %struct.ctrl_t, ptr %3, i32 0, i32 35
  %4 = load double, ptr %SplitTmr, align 8, !tbaa !42
  %sub = fsub double %4, %call
  store double %sub, ptr %SplitTmr, align 8, !tbaa !42
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs1 = getelementptr inbounds %struct.graph_t, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %nvtxs1, align 8, !tbaa !17
  store i32 %6, ptr %nvtxs, align 4, !tbaa !8
  %7 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %xadj2 = getelementptr inbounds %struct.graph_t, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %xadj2, align 8, !tbaa !43
  store ptr %8, ptr %xadj, align 8, !tbaa !4
  %9 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %vwgt3 = getelementptr inbounds %struct.graph_t, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %vwgt3, align 8, !tbaa !44
  store ptr %10, ptr %vwgt, align 8, !tbaa !4
  %11 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %adjncy4 = getelementptr inbounds %struct.graph_t, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %adjncy4, align 8, !tbaa !45
  store ptr %12, ptr %adjncy, align 8, !tbaa !4
  %13 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %adjwgt5 = getelementptr inbounds %struct.graph_t, ptr %13, i32 0, i32 7
  %14 = load ptr, ptr %adjwgt5, align 8, !tbaa !46
  store ptr %14, ptr %adjwgt, align 8, !tbaa !4
  %15 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %label6 = getelementptr inbounds %struct.graph_t, ptr %15, i32 0, i32 15
  %16 = load ptr, ptr %label6, align 8, !tbaa !33
  store ptr %16, ptr %label, align 8, !tbaa !4
  %17 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %where7 = getelementptr inbounds %struct.graph_t, ptr %17, i32 0, i32 19
  %18 = load ptr, ptr %where7, align 8, !tbaa !40
  store ptr %18, ptr %where, align 8, !tbaa !4
  %19 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %bndptr8 = getelementptr inbounds %struct.graph_t, ptr %19, i32 0, i32 22
  %20 = load ptr, ptr %bndptr8, align 8, !tbaa !47
  store ptr %20, ptr %bndptr, align 8, !tbaa !4
  %21 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %bndind9 = getelementptr inbounds %struct.graph_t, ptr %21, i32 0, i32 23
  %22 = load ptr, ptr %bndind9, align 8, !tbaa !32
  store ptr %22, ptr %bndind, align 8, !tbaa !4
  %23 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %24 = load i32, ptr %nvtxs, align 4, !tbaa !8
  %call10 = call ptr @libmetis__iwspacemalloc(ptr noundef %23, i32 noundef %24)
  store ptr %call10, ptr %rename, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds [3 x i32], ptr %snedges, i64 0, i64 2
  store i32 0, ptr %arrayidx, align 4, !tbaa !8
  %arrayidx11 = getelementptr inbounds [3 x i32], ptr %snedges, i64 0, i64 1
  store i32 0, ptr %arrayidx11, align 4, !tbaa !8
  %arrayidx12 = getelementptr inbounds [3 x i32], ptr %snedges, i64 0, i64 0
  store i32 0, ptr %arrayidx12, align 4, !tbaa !8
  %arrayidx13 = getelementptr inbounds [3 x i32], ptr %snvtxs, i64 0, i64 2
  store i32 0, ptr %arrayidx13, align 4, !tbaa !8
  %arrayidx14 = getelementptr inbounds [3 x i32], ptr %snvtxs, i64 0, i64 1
  store i32 0, ptr %arrayidx14, align 4, !tbaa !8
  %arrayidx15 = getelementptr inbounds [3 x i32], ptr %snvtxs, i64 0, i64 0
  store i32 0, ptr %arrayidx15, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %25 = load i32, ptr %i, align 4, !tbaa !8
  %26 = load i32, ptr %nvtxs, align 4, !tbaa !8
  %cmp = icmp slt i32 %25, %26
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load ptr, ptr %where, align 8, !tbaa !4
  %28 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %28 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %27, i64 %idxprom
  %29 = load i32, ptr %arrayidx16, align 4, !tbaa !8
  store i32 %29, ptr %k, align 4, !tbaa !8
  %30 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom17 = sext i32 %30 to i64
  %arrayidx18 = getelementptr inbounds [3 x i32], ptr %snvtxs, i64 0, i64 %idxprom17
  %31 = load i32, ptr %arrayidx18, align 4, !tbaa !8
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %arrayidx18, align 4, !tbaa !8
  %32 = load ptr, ptr %rename, align 8, !tbaa !4
  %33 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom19 = sext i32 %33 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %32, i64 %idxprom19
  store i32 %31, ptr %arrayidx20, align 4, !tbaa !8
  %34 = load ptr, ptr %xadj, align 8, !tbaa !4
  %35 = load i32, ptr %i, align 4, !tbaa !8
  %add = add nsw i32 %35, 1
  %idxprom21 = sext i32 %add to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %34, i64 %idxprom21
  %36 = load i32, ptr %arrayidx22, align 4, !tbaa !8
  %37 = load ptr, ptr %xadj, align 8, !tbaa !4
  %38 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom23 = sext i32 %38 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %37, i64 %idxprom23
  %39 = load i32, ptr %arrayidx24, align 4, !tbaa !8
  %sub25 = sub nsw i32 %36, %39
  %40 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom26 = sext i32 %40 to i64
  %arrayidx27 = getelementptr inbounds [3 x i32], ptr %snedges, i64 0, i64 %idxprom26
  %41 = load i32, ptr %arrayidx27, align 4, !tbaa !8
  %add28 = add nsw i32 %41, %sub25
  store i32 %add28, ptr %arrayidx27, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, ptr %i, align 4, !tbaa !8
  %inc29 = add nsw i32 %42, 1
  store i32 %inc29, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !48

for.end:                                          ; preds = %for.cond
  %43 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %arrayidx30 = getelementptr inbounds [3 x i32], ptr %snvtxs, i64 0, i64 0
  %44 = load i32, ptr %arrayidx30, align 4, !tbaa !8
  %arrayidx31 = getelementptr inbounds [3 x i32], ptr %snedges, i64 0, i64 0
  %45 = load i32, ptr %arrayidx31, align 4, !tbaa !8
  %call32 = call ptr @libmetis__SetupSplitGraph(ptr noundef %43, i32 noundef %44, i32 noundef %45)
  store ptr %call32, ptr %lgraph, align 8, !tbaa !4
  %46 = load ptr, ptr %lgraph, align 8, !tbaa !4
  %xadj33 = getelementptr inbounds %struct.graph_t, ptr %46, i32 0, i32 3
  %47 = load ptr, ptr %xadj33, align 8, !tbaa !43
  %arrayidx34 = getelementptr inbounds [2 x ptr], ptr %sxadj, i64 0, i64 0
  store ptr %47, ptr %arrayidx34, align 16, !tbaa !4
  %48 = load ptr, ptr %lgraph, align 8, !tbaa !4
  %vwgt35 = getelementptr inbounds %struct.graph_t, ptr %48, i32 0, i32 4
  %49 = load ptr, ptr %vwgt35, align 8, !tbaa !44
  %arrayidx36 = getelementptr inbounds [2 x ptr], ptr %svwgt, i64 0, i64 0
  store ptr %49, ptr %arrayidx36, align 16, !tbaa !4
  %50 = load ptr, ptr %lgraph, align 8, !tbaa !4
  %adjncy37 = getelementptr inbounds %struct.graph_t, ptr %50, i32 0, i32 6
  %51 = load ptr, ptr %adjncy37, align 8, !tbaa !45
  %arrayidx38 = getelementptr inbounds [2 x ptr], ptr %sadjncy, i64 0, i64 0
  store ptr %51, ptr %arrayidx38, align 16, !tbaa !4
  %52 = load ptr, ptr %lgraph, align 8, !tbaa !4
  %adjwgt39 = getelementptr inbounds %struct.graph_t, ptr %52, i32 0, i32 7
  %53 = load ptr, ptr %adjwgt39, align 8, !tbaa !46
  %arrayidx40 = getelementptr inbounds [2 x ptr], ptr %sadjwgt, i64 0, i64 0
  store ptr %53, ptr %arrayidx40, align 16, !tbaa !4
  %54 = load ptr, ptr %lgraph, align 8, !tbaa !4
  %label41 = getelementptr inbounds %struct.graph_t, ptr %54, i32 0, i32 15
  %55 = load ptr, ptr %label41, align 8, !tbaa !33
  %arrayidx42 = getelementptr inbounds [2 x ptr], ptr %slabel, i64 0, i64 0
  store ptr %55, ptr %arrayidx42, align 16, !tbaa !4
  %56 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %arrayidx43 = getelementptr inbounds [3 x i32], ptr %snvtxs, i64 0, i64 1
  %57 = load i32, ptr %arrayidx43, align 4, !tbaa !8
  %arrayidx44 = getelementptr inbounds [3 x i32], ptr %snedges, i64 0, i64 1
  %58 = load i32, ptr %arrayidx44, align 4, !tbaa !8
  %call45 = call ptr @libmetis__SetupSplitGraph(ptr noundef %56, i32 noundef %57, i32 noundef %58)
  store ptr %call45, ptr %rgraph, align 8, !tbaa !4
  %59 = load ptr, ptr %rgraph, align 8, !tbaa !4
  %xadj46 = getelementptr inbounds %struct.graph_t, ptr %59, i32 0, i32 3
  %60 = load ptr, ptr %xadj46, align 8, !tbaa !43
  %arrayidx47 = getelementptr inbounds [2 x ptr], ptr %sxadj, i64 0, i64 1
  store ptr %60, ptr %arrayidx47, align 8, !tbaa !4
  %61 = load ptr, ptr %rgraph, align 8, !tbaa !4
  %vwgt48 = getelementptr inbounds %struct.graph_t, ptr %61, i32 0, i32 4
  %62 = load ptr, ptr %vwgt48, align 8, !tbaa !44
  %arrayidx49 = getelementptr inbounds [2 x ptr], ptr %svwgt, i64 0, i64 1
  store ptr %62, ptr %arrayidx49, align 8, !tbaa !4
  %63 = load ptr, ptr %rgraph, align 8, !tbaa !4
  %adjncy50 = getelementptr inbounds %struct.graph_t, ptr %63, i32 0, i32 6
  %64 = load ptr, ptr %adjncy50, align 8, !tbaa !45
  %arrayidx51 = getelementptr inbounds [2 x ptr], ptr %sadjncy, i64 0, i64 1
  store ptr %64, ptr %arrayidx51, align 8, !tbaa !4
  %65 = load ptr, ptr %rgraph, align 8, !tbaa !4
  %adjwgt52 = getelementptr inbounds %struct.graph_t, ptr %65, i32 0, i32 7
  %66 = load ptr, ptr %adjwgt52, align 8, !tbaa !46
  %arrayidx53 = getelementptr inbounds [2 x ptr], ptr %sadjwgt, i64 0, i64 1
  store ptr %66, ptr %arrayidx53, align 8, !tbaa !4
  %67 = load ptr, ptr %rgraph, align 8, !tbaa !4
  %label54 = getelementptr inbounds %struct.graph_t, ptr %67, i32 0, i32 15
  %68 = load ptr, ptr %label54, align 8, !tbaa !33
  %arrayidx55 = getelementptr inbounds [2 x ptr], ptr %slabel, i64 0, i64 1
  store ptr %68, ptr %arrayidx55, align 8, !tbaa !4
  store i32 0, ptr %ii, align 4, !tbaa !8
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc76, %for.end
  %69 = load i32, ptr %ii, align 4, !tbaa !8
  %70 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nbnd = getelementptr inbounds %struct.graph_t, ptr %70, i32 0, i32 21
  %71 = load i32, ptr %nbnd, align 8, !tbaa !31
  %cmp57 = icmp slt i32 %69, %71
  br i1 %cmp57, label %for.body58, label %for.end78

for.body58:                                       ; preds = %for.cond56
  %72 = load ptr, ptr %bndind, align 8, !tbaa !4
  %73 = load i32, ptr %ii, align 4, !tbaa !8
  %idxprom59 = sext i32 %73 to i64
  %arrayidx60 = getelementptr inbounds i32, ptr %72, i64 %idxprom59
  %74 = load i32, ptr %arrayidx60, align 4, !tbaa !8
  store i32 %74, ptr %i, align 4, !tbaa !8
  %75 = load ptr, ptr %xadj, align 8, !tbaa !4
  %76 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom61 = sext i32 %76 to i64
  %arrayidx62 = getelementptr inbounds i32, ptr %75, i64 %idxprom61
  %77 = load i32, ptr %arrayidx62, align 4, !tbaa !8
  store i32 %77, ptr %j, align 4, !tbaa !8
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc73, %for.body58
  %78 = load i32, ptr %j, align 4, !tbaa !8
  %79 = load ptr, ptr %xadj, align 8, !tbaa !4
  %80 = load i32, ptr %i, align 4, !tbaa !8
  %add64 = add nsw i32 %80, 1
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds i32, ptr %79, i64 %idxprom65
  %81 = load i32, ptr %arrayidx66, align 4, !tbaa !8
  %cmp67 = icmp slt i32 %78, %81
  br i1 %cmp67, label %for.body68, label %for.end75

for.body68:                                       ; preds = %for.cond63
  %82 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %83 = load ptr, ptr %adjncy, align 8, !tbaa !4
  %84 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom69 = sext i32 %84 to i64
  %arrayidx70 = getelementptr inbounds i32, ptr %83, i64 %idxprom69
  %85 = load i32, ptr %arrayidx70, align 4, !tbaa !8
  %idxprom71 = sext i32 %85 to i64
  %arrayidx72 = getelementptr inbounds i32, ptr %82, i64 %idxprom71
  store i32 1, ptr %arrayidx72, align 4, !tbaa !8
  br label %for.inc73

for.inc73:                                        ; preds = %for.body68
  %86 = load i32, ptr %j, align 4, !tbaa !8
  %inc74 = add nsw i32 %86, 1
  store i32 %inc74, ptr %j, align 4, !tbaa !8
  br label %for.cond63, !llvm.loop !49

for.end75:                                        ; preds = %for.cond63
  br label %for.inc76

for.inc76:                                        ; preds = %for.end75
  %87 = load i32, ptr %ii, align 4, !tbaa !8
  %inc77 = add nsw i32 %87, 1
  store i32 %inc77, ptr %ii, align 4, !tbaa !8
  br label %for.cond56, !llvm.loop !50

for.end78:                                        ; preds = %for.cond56
  %arrayidx79 = getelementptr inbounds [3 x i32], ptr %snedges, i64 0, i64 1
  store i32 0, ptr %arrayidx79, align 4, !tbaa !8
  %arrayidx80 = getelementptr inbounds [3 x i32], ptr %snedges, i64 0, i64 0
  store i32 0, ptr %arrayidx80, align 4, !tbaa !8
  %arrayidx81 = getelementptr inbounds [3 x i32], ptr %snvtxs, i64 0, i64 1
  store i32 0, ptr %arrayidx81, align 4, !tbaa !8
  %arrayidx82 = getelementptr inbounds [3 x i32], ptr %snvtxs, i64 0, i64 0
  store i32 0, ptr %arrayidx82, align 4, !tbaa !8
  %arrayidx83 = getelementptr inbounds [2 x ptr], ptr %sxadj, i64 0, i64 1
  %88 = load ptr, ptr %arrayidx83, align 8, !tbaa !4
  %arrayidx84 = getelementptr inbounds i32, ptr %88, i64 0
  store i32 0, ptr %arrayidx84, align 4, !tbaa !8
  %arrayidx85 = getelementptr inbounds [2 x ptr], ptr %sxadj, i64 0, i64 0
  %89 = load ptr, ptr %arrayidx85, align 16, !tbaa !4
  %arrayidx86 = getelementptr inbounds i32, ptr %89, i64 0
  store i32 0, ptr %arrayidx86, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc172, %for.end78
  %90 = load i32, ptr %i, align 4, !tbaa !8
  %91 = load i32, ptr %nvtxs, align 4, !tbaa !8
  %cmp88 = icmp slt i32 %90, %91
  br i1 %cmp88, label %for.body89, label %for.end174

for.body89:                                       ; preds = %for.cond87
  %92 = load ptr, ptr %where, align 8, !tbaa !4
  %93 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom90 = sext i32 %93 to i64
  %arrayidx91 = getelementptr inbounds i32, ptr %92, i64 %idxprom90
  %94 = load i32, ptr %arrayidx91, align 4, !tbaa !8
  store i32 %94, ptr %mypart, align 4, !tbaa !8
  %cmp92 = icmp eq i32 %94, 2
  br i1 %cmp92, label %if.then93, label %if.end94

if.then93:                                        ; preds = %for.body89
  br label %for.inc172

if.end94:                                         ; preds = %for.body89
  %95 = load ptr, ptr %xadj, align 8, !tbaa !4
  %96 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom95 = sext i32 %96 to i64
  %arrayidx96 = getelementptr inbounds i32, ptr %95, i64 %idxprom95
  %97 = load i32, ptr %arrayidx96, align 4, !tbaa !8
  store i32 %97, ptr %istart, align 4, !tbaa !8
  %98 = load ptr, ptr %xadj, align 8, !tbaa !4
  %99 = load i32, ptr %i, align 4, !tbaa !8
  %add97 = add nsw i32 %99, 1
  %idxprom98 = sext i32 %add97 to i64
  %arrayidx99 = getelementptr inbounds i32, ptr %98, i64 %idxprom98
  %100 = load i32, ptr %arrayidx99, align 4, !tbaa !8
  store i32 %100, ptr %iend, align 4, !tbaa !8
  %101 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %102 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom100 = sext i32 %102 to i64
  %arrayidx101 = getelementptr inbounds i32, ptr %101, i64 %idxprom100
  %103 = load i32, ptr %arrayidx101, align 4, !tbaa !8
  %cmp102 = icmp eq i32 %103, -1
  br i1 %cmp102, label %if.then103, label %if.else

if.then103:                                       ; preds = %if.end94
  %104 = load i32, ptr %mypart, align 4, !tbaa !8
  %idxprom104 = sext i32 %104 to i64
  %arrayidx105 = getelementptr inbounds [2 x ptr], ptr %sadjncy, i64 0, i64 %idxprom104
  %105 = load ptr, ptr %arrayidx105, align 8, !tbaa !4
  %106 = load i32, ptr %mypart, align 4, !tbaa !8
  %idxprom106 = sext i32 %106 to i64
  %arrayidx107 = getelementptr inbounds [3 x i32], ptr %snedges, i64 0, i64 %idxprom106
  %107 = load i32, ptr %arrayidx107, align 4, !tbaa !8
  %idx.ext = sext i32 %107 to i64
  %add.ptr = getelementptr inbounds i32, ptr %105, i64 %idx.ext
  %108 = load i32, ptr %istart, align 4, !tbaa !8
  %idx.ext108 = sext i32 %108 to i64
  %idx.neg = sub i64 0, %idx.ext108
  %add.ptr109 = getelementptr inbounds i32, ptr %add.ptr, i64 %idx.neg
  store ptr %add.ptr109, ptr %auxadjncy, align 8, !tbaa !4
  %109 = load i32, ptr %istart, align 4, !tbaa !8
  store i32 %109, ptr %j, align 4, !tbaa !8
  br label %for.cond110

for.cond110:                                      ; preds = %for.inc117, %if.then103
  %110 = load i32, ptr %j, align 4, !tbaa !8
  %111 = load i32, ptr %iend, align 4, !tbaa !8
  %cmp111 = icmp slt i32 %110, %111
  br i1 %cmp111, label %for.body112, label %for.end119

for.body112:                                      ; preds = %for.cond110
  %112 = load ptr, ptr %adjncy, align 8, !tbaa !4
  %113 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom113 = sext i32 %113 to i64
  %arrayidx114 = getelementptr inbounds i32, ptr %112, i64 %idxprom113
  %114 = load i32, ptr %arrayidx114, align 4, !tbaa !8
  %115 = load ptr, ptr %auxadjncy, align 8, !tbaa !4
  %116 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom115 = sext i32 %116 to i64
  %arrayidx116 = getelementptr inbounds i32, ptr %115, i64 %idxprom115
  store i32 %114, ptr %arrayidx116, align 4, !tbaa !8
  br label %for.inc117

for.inc117:                                       ; preds = %for.body112
  %117 = load i32, ptr %j, align 4, !tbaa !8
  %inc118 = add nsw i32 %117, 1
  store i32 %inc118, ptr %j, align 4, !tbaa !8
  br label %for.cond110, !llvm.loop !51

for.end119:                                       ; preds = %for.cond110
  %118 = load i32, ptr %iend, align 4, !tbaa !8
  %119 = load i32, ptr %istart, align 4, !tbaa !8
  %sub120 = sub nsw i32 %118, %119
  %120 = load i32, ptr %mypart, align 4, !tbaa !8
  %idxprom121 = sext i32 %120 to i64
  %arrayidx122 = getelementptr inbounds [3 x i32], ptr %snedges, i64 0, i64 %idxprom121
  %121 = load i32, ptr %arrayidx122, align 4, !tbaa !8
  %add123 = add nsw i32 %121, %sub120
  store i32 %add123, ptr %arrayidx122, align 4, !tbaa !8
  br label %if.end146

if.else:                                          ; preds = %if.end94
  %122 = load i32, ptr %mypart, align 4, !tbaa !8
  %idxprom124 = sext i32 %122 to i64
  %arrayidx125 = getelementptr inbounds [2 x ptr], ptr %sadjncy, i64 0, i64 %idxprom124
  %123 = load ptr, ptr %arrayidx125, align 8, !tbaa !4
  store ptr %123, ptr %auxadjncy, align 8, !tbaa !4
  %124 = load i32, ptr %mypart, align 4, !tbaa !8
  %idxprom126 = sext i32 %124 to i64
  %arrayidx127 = getelementptr inbounds [3 x i32], ptr %snedges, i64 0, i64 %idxprom126
  %125 = load i32, ptr %arrayidx127, align 4, !tbaa !8
  store i32 %125, ptr %l, align 4, !tbaa !8
  %126 = load i32, ptr %istart, align 4, !tbaa !8
  store i32 %126, ptr %j, align 4, !tbaa !8
  br label %for.cond128

for.cond128:                                      ; preds = %for.inc141, %if.else
  %127 = load i32, ptr %j, align 4, !tbaa !8
  %128 = load i32, ptr %iend, align 4, !tbaa !8
  %cmp129 = icmp slt i32 %127, %128
  br i1 %cmp129, label %for.body130, label %for.end143

for.body130:                                      ; preds = %for.cond128
  %129 = load ptr, ptr %adjncy, align 8, !tbaa !4
  %130 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom131 = sext i32 %130 to i64
  %arrayidx132 = getelementptr inbounds i32, ptr %129, i64 %idxprom131
  %131 = load i32, ptr %arrayidx132, align 4, !tbaa !8
  store i32 %131, ptr %k, align 4, !tbaa !8
  %132 = load ptr, ptr %where, align 8, !tbaa !4
  %133 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom133 = sext i32 %133 to i64
  %arrayidx134 = getelementptr inbounds i32, ptr %132, i64 %idxprom133
  %134 = load i32, ptr %arrayidx134, align 4, !tbaa !8
  %135 = load i32, ptr %mypart, align 4, !tbaa !8
  %cmp135 = icmp eq i32 %134, %135
  br i1 %cmp135, label %if.then136, label %if.end140

if.then136:                                       ; preds = %for.body130
  %136 = load i32, ptr %k, align 4, !tbaa !8
  %137 = load ptr, ptr %auxadjncy, align 8, !tbaa !4
  %138 = load i32, ptr %l, align 4, !tbaa !8
  %inc137 = add nsw i32 %138, 1
  store i32 %inc137, ptr %l, align 4, !tbaa !8
  %idxprom138 = sext i32 %138 to i64
  %arrayidx139 = getelementptr inbounds i32, ptr %137, i64 %idxprom138
  store i32 %136, ptr %arrayidx139, align 4, !tbaa !8
  br label %if.end140

if.end140:                                        ; preds = %if.then136, %for.body130
  br label %for.inc141

for.inc141:                                       ; preds = %if.end140
  %139 = load i32, ptr %j, align 4, !tbaa !8
  %inc142 = add nsw i32 %139, 1
  store i32 %inc142, ptr %j, align 4, !tbaa !8
  br label %for.cond128, !llvm.loop !52

for.end143:                                       ; preds = %for.cond128
  %140 = load i32, ptr %l, align 4, !tbaa !8
  %141 = load i32, ptr %mypart, align 4, !tbaa !8
  %idxprom144 = sext i32 %141 to i64
  %arrayidx145 = getelementptr inbounds [3 x i32], ptr %snedges, i64 0, i64 %idxprom144
  store i32 %140, ptr %arrayidx145, align 4, !tbaa !8
  br label %if.end146

if.end146:                                        ; preds = %for.end143, %for.end119
  %142 = load ptr, ptr %vwgt, align 8, !tbaa !4
  %143 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom147 = sext i32 %143 to i64
  %arrayidx148 = getelementptr inbounds i32, ptr %142, i64 %idxprom147
  %144 = load i32, ptr %arrayidx148, align 4, !tbaa !8
  %145 = load i32, ptr %mypart, align 4, !tbaa !8
  %idxprom149 = sext i32 %145 to i64
  %arrayidx150 = getelementptr inbounds [2 x ptr], ptr %svwgt, i64 0, i64 %idxprom149
  %146 = load ptr, ptr %arrayidx150, align 8, !tbaa !4
  %147 = load i32, ptr %mypart, align 4, !tbaa !8
  %idxprom151 = sext i32 %147 to i64
  %arrayidx152 = getelementptr inbounds [3 x i32], ptr %snvtxs, i64 0, i64 %idxprom151
  %148 = load i32, ptr %arrayidx152, align 4, !tbaa !8
  %idxprom153 = sext i32 %148 to i64
  %arrayidx154 = getelementptr inbounds i32, ptr %146, i64 %idxprom153
  store i32 %144, ptr %arrayidx154, align 4, !tbaa !8
  %149 = load ptr, ptr %label, align 8, !tbaa !4
  %150 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom155 = sext i32 %150 to i64
  %arrayidx156 = getelementptr inbounds i32, ptr %149, i64 %idxprom155
  %151 = load i32, ptr %arrayidx156, align 4, !tbaa !8
  %152 = load i32, ptr %mypart, align 4, !tbaa !8
  %idxprom157 = sext i32 %152 to i64
  %arrayidx158 = getelementptr inbounds [2 x ptr], ptr %slabel, i64 0, i64 %idxprom157
  %153 = load ptr, ptr %arrayidx158, align 8, !tbaa !4
  %154 = load i32, ptr %mypart, align 4, !tbaa !8
  %idxprom159 = sext i32 %154 to i64
  %arrayidx160 = getelementptr inbounds [3 x i32], ptr %snvtxs, i64 0, i64 %idxprom159
  %155 = load i32, ptr %arrayidx160, align 4, !tbaa !8
  %idxprom161 = sext i32 %155 to i64
  %arrayidx162 = getelementptr inbounds i32, ptr %153, i64 %idxprom161
  store i32 %151, ptr %arrayidx162, align 4, !tbaa !8
  %156 = load i32, ptr %mypart, align 4, !tbaa !8
  %idxprom163 = sext i32 %156 to i64
  %arrayidx164 = getelementptr inbounds [3 x i32], ptr %snedges, i64 0, i64 %idxprom163
  %157 = load i32, ptr %arrayidx164, align 4, !tbaa !8
  %158 = load i32, ptr %mypart, align 4, !tbaa !8
  %idxprom165 = sext i32 %158 to i64
  %arrayidx166 = getelementptr inbounds [2 x ptr], ptr %sxadj, i64 0, i64 %idxprom165
  %159 = load ptr, ptr %arrayidx166, align 8, !tbaa !4
  %160 = load i32, ptr %mypart, align 4, !tbaa !8
  %idxprom167 = sext i32 %160 to i64
  %arrayidx168 = getelementptr inbounds [3 x i32], ptr %snvtxs, i64 0, i64 %idxprom167
  %161 = load i32, ptr %arrayidx168, align 4, !tbaa !8
  %inc169 = add nsw i32 %161, 1
  store i32 %inc169, ptr %arrayidx168, align 4, !tbaa !8
  %idxprom170 = sext i32 %inc169 to i64
  %arrayidx171 = getelementptr inbounds i32, ptr %159, i64 %idxprom170
  store i32 %157, ptr %arrayidx171, align 4, !tbaa !8
  br label %for.inc172

for.inc172:                                       ; preds = %if.end146, %if.then93
  %162 = load i32, ptr %i, align 4, !tbaa !8
  %inc173 = add nsw i32 %162, 1
  store i32 %inc173, ptr %i, align 4, !tbaa !8
  br label %for.cond87, !llvm.loop !53

for.end174:                                       ; preds = %for.cond87
  store i32 0, ptr %mypart, align 4, !tbaa !8
  br label %for.cond175

for.cond175:                                      ; preds = %for.inc198, %for.end174
  %163 = load i32, ptr %mypart, align 4, !tbaa !8
  %cmp176 = icmp slt i32 %163, 2
  br i1 %cmp176, label %for.body177, label %for.end200

for.body177:                                      ; preds = %for.cond175
  %164 = load i32, ptr %mypart, align 4, !tbaa !8
  %idxprom178 = sext i32 %164 to i64
  %arrayidx179 = getelementptr inbounds [3 x i32], ptr %snedges, i64 0, i64 %idxprom178
  %165 = load i32, ptr %arrayidx179, align 4, !tbaa !8
  store i32 %165, ptr %iend, align 4, !tbaa !8
  %166 = load i32, ptr %iend, align 4, !tbaa !8
  %conv = sext i32 %166 to i64
  %167 = load i32, ptr %mypart, align 4, !tbaa !8
  %idxprom180 = sext i32 %167 to i64
  %arrayidx181 = getelementptr inbounds [2 x ptr], ptr %sadjwgt, i64 0, i64 %idxprom180
  %168 = load ptr, ptr %arrayidx181, align 8, !tbaa !4
  %call182 = call ptr @libmetis__iset(i64 noundef %conv, i32 noundef 1, ptr noundef %168)
  %169 = load i32, ptr %mypart, align 4, !tbaa !8
  %idxprom183 = sext i32 %169 to i64
  %arrayidx184 = getelementptr inbounds [2 x ptr], ptr %sadjncy, i64 0, i64 %idxprom183
  %170 = load ptr, ptr %arrayidx184, align 8, !tbaa !4
  store ptr %170, ptr %auxadjncy, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond185

for.cond185:                                      ; preds = %for.inc195, %for.body177
  %171 = load i32, ptr %i, align 4, !tbaa !8
  %172 = load i32, ptr %iend, align 4, !tbaa !8
  %cmp186 = icmp slt i32 %171, %172
  br i1 %cmp186, label %for.body188, label %for.end197

for.body188:                                      ; preds = %for.cond185
  %173 = load ptr, ptr %rename, align 8, !tbaa !4
  %174 = load ptr, ptr %auxadjncy, align 8, !tbaa !4
  %175 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom189 = sext i32 %175 to i64
  %arrayidx190 = getelementptr inbounds i32, ptr %174, i64 %idxprom189
  %176 = load i32, ptr %arrayidx190, align 4, !tbaa !8
  %idxprom191 = sext i32 %176 to i64
  %arrayidx192 = getelementptr inbounds i32, ptr %173, i64 %idxprom191
  %177 = load i32, ptr %arrayidx192, align 4, !tbaa !8
  %178 = load ptr, ptr %auxadjncy, align 8, !tbaa !4
  %179 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom193 = sext i32 %179 to i64
  %arrayidx194 = getelementptr inbounds i32, ptr %178, i64 %idxprom193
  store i32 %177, ptr %arrayidx194, align 4, !tbaa !8
  br label %for.inc195

for.inc195:                                       ; preds = %for.body188
  %180 = load i32, ptr %i, align 4, !tbaa !8
  %inc196 = add nsw i32 %180, 1
  store i32 %inc196, ptr %i, align 4, !tbaa !8
  br label %for.cond185, !llvm.loop !54

for.end197:                                       ; preds = %for.cond185
  br label %for.inc198

for.inc198:                                       ; preds = %for.end197
  %181 = load i32, ptr %mypart, align 4, !tbaa !8
  %inc199 = add nsw i32 %181, 1
  store i32 %inc199, ptr %mypart, align 4, !tbaa !8
  br label %for.cond175, !llvm.loop !55

for.end200:                                       ; preds = %for.cond175
  %arrayidx201 = getelementptr inbounds [3 x i32], ptr %snvtxs, i64 0, i64 0
  %182 = load i32, ptr %arrayidx201, align 4, !tbaa !8
  %183 = load ptr, ptr %lgraph, align 8, !tbaa !4
  %nvtxs202 = getelementptr inbounds %struct.graph_t, ptr %183, i32 0, i32 0
  store i32 %182, ptr %nvtxs202, align 8, !tbaa !17
  %arrayidx203 = getelementptr inbounds [3 x i32], ptr %snedges, i64 0, i64 0
  %184 = load i32, ptr %arrayidx203, align 4, !tbaa !8
  %185 = load ptr, ptr %lgraph, align 8, !tbaa !4
  %nedges = getelementptr inbounds %struct.graph_t, ptr %185, i32 0, i32 1
  store i32 %184, ptr %nedges, align 4, !tbaa !35
  %arrayidx204 = getelementptr inbounds [3 x i32], ptr %snvtxs, i64 0, i64 1
  %186 = load i32, ptr %arrayidx204, align 4, !tbaa !8
  %187 = load ptr, ptr %rgraph, align 8, !tbaa !4
  %nvtxs205 = getelementptr inbounds %struct.graph_t, ptr %187, i32 0, i32 0
  store i32 %186, ptr %nvtxs205, align 8, !tbaa !17
  %arrayidx206 = getelementptr inbounds [3 x i32], ptr %snedges, i64 0, i64 1
  %188 = load i32, ptr %arrayidx206, align 4, !tbaa !8
  %189 = load ptr, ptr %rgraph, align 8, !tbaa !4
  %nedges207 = getelementptr inbounds %struct.graph_t, ptr %189, i32 0, i32 1
  store i32 %188, ptr %nedges207, align 4, !tbaa !35
  %190 = load ptr, ptr %lgraph, align 8, !tbaa !4
  call void @libmetis__SetupGraph_tvwgt(ptr noundef %190)
  %191 = load ptr, ptr %rgraph, align 8, !tbaa !4
  call void @libmetis__SetupGraph_tvwgt(ptr noundef %191)
  %192 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %dbglvl208 = getelementptr inbounds %struct.ctrl_t, ptr %192, i32 0, i32 2
  %193 = load i32, ptr %dbglvl208, align 8, !tbaa !14
  %and209 = and i32 %193, 2
  %tobool210 = icmp ne i32 %and209, 0
  br i1 %tobool210, label %if.then211, label %if.end215

if.then211:                                       ; preds = %for.end200
  %call212 = call double @gk_CPUSeconds()
  %194 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %SplitTmr213 = getelementptr inbounds %struct.ctrl_t, ptr %194, i32 0, i32 35
  %195 = load double, ptr %SplitTmr213, align 8, !tbaa !42
  %add214 = fadd double %195, %call212
  store double %add214, ptr %SplitTmr213, align 8, !tbaa !42
  br label %if.end215

if.end215:                                        ; preds = %if.then211, %for.end200
  %196 = load ptr, ptr %lgraph, align 8, !tbaa !4
  %197 = load ptr, ptr %r_lgraph.addr, align 8, !tbaa !4
  store ptr %196, ptr %197, align 8, !tbaa !4
  %198 = load ptr, ptr %rgraph, align 8, !tbaa !4
  %199 = load ptr, ptr %r_rgraph.addr, align 8, !tbaa !4
  store ptr %198, ptr %199, align 8, !tbaa !4
  %200 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  call void @libmetis__wspacepop(ptr noundef %200)
  call void @llvm.lifetime.end.p0(i64 8, ptr %rgraph) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %lgraph) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %auxadjncy) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rename) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %slabel) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %sadjwgt) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %sadjncy) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %svwgt) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %sxadj) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %bndind) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %bndptr) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %where) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %label) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %adjwgt) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %adjncy) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %vwgt) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %xadj) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr %snedges) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr %snvtxs) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nvtxs) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %mypart) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %iend) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %istart) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ii) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret void
}

declare void @libmetis__FreeGraph(ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @libmetis__MMDOrder(ptr noundef %ctrl, ptr noundef %graph, ptr noundef %order, i32 noundef %lastvtx) #0 {
entry:
  %ctrl.addr = alloca ptr, align 8
  %graph.addr = alloca ptr, align 8
  %order.addr = alloca ptr, align 8
  %lastvtx.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nvtxs = alloca i32, align 4
  %nofsub = alloca i32, align 4
  %firstvtx = alloca i32, align 4
  %xadj = alloca ptr, align 8
  %adjncy = alloca ptr, align 8
  %label = alloca ptr, align 8
  %perm = alloca ptr, align 8
  %iperm = alloca ptr, align 8
  %head = alloca ptr, align 8
  %qsize = alloca ptr, align 8
  %list = alloca ptr, align 8
  %marker = alloca ptr, align 8
  store ptr %ctrl, ptr %ctrl.addr, align 8, !tbaa !4
  store ptr %graph, ptr %graph.addr, align 8, !tbaa !4
  store ptr %order, ptr %order.addr, align 8, !tbaa !4
  store i32 %lastvtx, ptr %lastvtx.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nvtxs) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nofsub) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %firstvtx) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %xadj) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %adjncy) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %label) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %perm) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %iperm) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %qsize) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %marker) #5
  %0 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  call void @libmetis__wspacepush(ptr noundef %0)
  %1 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs1 = getelementptr inbounds %struct.graph_t, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %nvtxs1, align 8, !tbaa !17
  store i32 %2, ptr %nvtxs, align 4, !tbaa !8
  %3 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %xadj2 = getelementptr inbounds %struct.graph_t, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %xadj2, align 8, !tbaa !43
  store ptr %4, ptr %xadj, align 8, !tbaa !4
  %5 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %adjncy3 = getelementptr inbounds %struct.graph_t, ptr %5, i32 0, i32 6
  %6 = load ptr, ptr %adjncy3, align 8, !tbaa !45
  store ptr %6, ptr %adjncy, align 8, !tbaa !4
  %7 = load ptr, ptr %xadj, align 8, !tbaa !4
  %8 = load i32, ptr %nvtxs, align 4, !tbaa !8
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, ptr %7, i64 %idxprom
  %9 = load i32, ptr %arrayidx, align 4, !tbaa !8
  store i32 %9, ptr %k, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, ptr %i, align 4, !tbaa !8
  %11 = load i32, ptr %k, align 4, !tbaa !8
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %adjncy, align 8, !tbaa !4
  %13 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom4 = sext i32 %13 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %12, i64 %idxprom4
  %14 = load i32, ptr %arrayidx5, align 4, !tbaa !8
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %arrayidx5, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4, !tbaa !8
  %inc6 = add nsw i32 %15, 1
  store i32 %inc6, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !56

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc13, %for.end
  %16 = load i32, ptr %i, align 4, !tbaa !8
  %17 = load i32, ptr %nvtxs, align 4, !tbaa !8
  %add = add nsw i32 %17, 1
  %cmp8 = icmp slt i32 %16, %add
  br i1 %cmp8, label %for.body9, label %for.end15

for.body9:                                        ; preds = %for.cond7
  %18 = load ptr, ptr %xadj, align 8, !tbaa !4
  %19 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom10 = sext i32 %19 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %18, i64 %idxprom10
  %20 = load i32, ptr %arrayidx11, align 4, !tbaa !8
  %inc12 = add nsw i32 %20, 1
  store i32 %inc12, ptr %arrayidx11, align 4, !tbaa !8
  br label %for.inc13

for.inc13:                                        ; preds = %for.body9
  %21 = load i32, ptr %i, align 4, !tbaa !8
  %inc14 = add nsw i32 %21, 1
  store i32 %inc14, ptr %i, align 4, !tbaa !8
  br label %for.cond7, !llvm.loop !57

for.end15:                                        ; preds = %for.cond7
  %22 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %23 = load i32, ptr %nvtxs, align 4, !tbaa !8
  %add16 = add nsw i32 %23, 5
  %call = call ptr @libmetis__iwspacemalloc(ptr noundef %22, i32 noundef %add16)
  store ptr %call, ptr %perm, align 8, !tbaa !4
  %24 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %25 = load i32, ptr %nvtxs, align 4, !tbaa !8
  %add17 = add nsw i32 %25, 5
  %call18 = call ptr @libmetis__iwspacemalloc(ptr noundef %24, i32 noundef %add17)
  store ptr %call18, ptr %iperm, align 8, !tbaa !4
  %26 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %27 = load i32, ptr %nvtxs, align 4, !tbaa !8
  %add19 = add nsw i32 %27, 5
  %call20 = call ptr @libmetis__iwspacemalloc(ptr noundef %26, i32 noundef %add19)
  store ptr %call20, ptr %head, align 8, !tbaa !4
  %28 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %29 = load i32, ptr %nvtxs, align 4, !tbaa !8
  %add21 = add nsw i32 %29, 5
  %call22 = call ptr @libmetis__iwspacemalloc(ptr noundef %28, i32 noundef %add21)
  store ptr %call22, ptr %qsize, align 8, !tbaa !4
  %30 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %31 = load i32, ptr %nvtxs, align 4, !tbaa !8
  %add23 = add nsw i32 %31, 5
  %call24 = call ptr @libmetis__iwspacemalloc(ptr noundef %30, i32 noundef %add23)
  store ptr %call24, ptr %list, align 8, !tbaa !4
  %32 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %33 = load i32, ptr %nvtxs, align 4, !tbaa !8
  %add25 = add nsw i32 %33, 5
  %call26 = call ptr @libmetis__iwspacemalloc(ptr noundef %32, i32 noundef %add25)
  store ptr %call26, ptr %marker, align 8, !tbaa !4
  %34 = load i32, ptr %nvtxs, align 4, !tbaa !8
  %35 = load ptr, ptr %xadj, align 8, !tbaa !4
  %36 = load ptr, ptr %adjncy, align 8, !tbaa !4
  %37 = load ptr, ptr %iperm, align 8, !tbaa !4
  %38 = load ptr, ptr %perm, align 8, !tbaa !4
  %39 = load ptr, ptr %head, align 8, !tbaa !4
  %40 = load ptr, ptr %qsize, align 8, !tbaa !4
  %41 = load ptr, ptr %list, align 8, !tbaa !4
  %42 = load ptr, ptr %marker, align 8, !tbaa !4
  call void @libmetis__genmmd(i32 noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef %38, i32 noundef 1, ptr noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef %42, i32 noundef 2147483647, ptr noundef %nofsub)
  %43 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %label27 = getelementptr inbounds %struct.graph_t, ptr %43, i32 0, i32 15
  %44 = load ptr, ptr %label27, align 8, !tbaa !33
  store ptr %44, ptr %label, align 8, !tbaa !4
  %45 = load i32, ptr %lastvtx.addr, align 4, !tbaa !8
  %46 = load i32, ptr %nvtxs, align 4, !tbaa !8
  %sub = sub nsw i32 %45, %46
  store i32 %sub, ptr %firstvtx, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc39, %for.end15
  %47 = load i32, ptr %i, align 4, !tbaa !8
  %48 = load i32, ptr %nvtxs, align 4, !tbaa !8
  %cmp29 = icmp slt i32 %47, %48
  br i1 %cmp29, label %for.body30, label %for.end41

for.body30:                                       ; preds = %for.cond28
  %49 = load i32, ptr %firstvtx, align 4, !tbaa !8
  %50 = load ptr, ptr %iperm, align 8, !tbaa !4
  %51 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom31 = sext i32 %51 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %50, i64 %idxprom31
  %52 = load i32, ptr %arrayidx32, align 4, !tbaa !8
  %add33 = add nsw i32 %49, %52
  %sub34 = sub nsw i32 %add33, 1
  %53 = load ptr, ptr %order.addr, align 8, !tbaa !4
  %54 = load ptr, ptr %label, align 8, !tbaa !4
  %55 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom35 = sext i32 %55 to i64
  %arrayidx36 = getelementptr inbounds i32, ptr %54, i64 %idxprom35
  %56 = load i32, ptr %arrayidx36, align 4, !tbaa !8
  %idxprom37 = sext i32 %56 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %53, i64 %idxprom37
  store i32 %sub34, ptr %arrayidx38, align 4, !tbaa !8
  br label %for.inc39

for.inc39:                                        ; preds = %for.body30
  %57 = load i32, ptr %i, align 4, !tbaa !8
  %inc40 = add nsw i32 %57, 1
  store i32 %inc40, ptr %i, align 4, !tbaa !8
  br label %for.cond28, !llvm.loop !58

for.end41:                                        ; preds = %for.cond28
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc48, %for.end41
  %58 = load i32, ptr %i, align 4, !tbaa !8
  %59 = load i32, ptr %nvtxs, align 4, !tbaa !8
  %add43 = add nsw i32 %59, 1
  %cmp44 = icmp slt i32 %58, %add43
  br i1 %cmp44, label %for.body45, label %for.end50

for.body45:                                       ; preds = %for.cond42
  %60 = load ptr, ptr %xadj, align 8, !tbaa !4
  %61 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom46 = sext i32 %61 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %60, i64 %idxprom46
  %62 = load i32, ptr %arrayidx47, align 4, !tbaa !8
  %dec = add nsw i32 %62, -1
  store i32 %dec, ptr %arrayidx47, align 4, !tbaa !8
  br label %for.inc48

for.inc48:                                        ; preds = %for.body45
  %63 = load i32, ptr %i, align 4, !tbaa !8
  %inc49 = add nsw i32 %63, 1
  store i32 %inc49, ptr %i, align 4, !tbaa !8
  br label %for.cond42, !llvm.loop !59

for.end50:                                        ; preds = %for.cond42
  %64 = load ptr, ptr %xadj, align 8, !tbaa !4
  %65 = load i32, ptr %nvtxs, align 4, !tbaa !8
  %idxprom51 = sext i32 %65 to i64
  %arrayidx52 = getelementptr inbounds i32, ptr %64, i64 %idxprom51
  %66 = load i32, ptr %arrayidx52, align 4, !tbaa !8
  store i32 %66, ptr %k, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc59, %for.end50
  %67 = load i32, ptr %i, align 4, !tbaa !8
  %68 = load i32, ptr %k, align 4, !tbaa !8
  %cmp54 = icmp slt i32 %67, %68
  br i1 %cmp54, label %for.body55, label %for.end61

for.body55:                                       ; preds = %for.cond53
  %69 = load ptr, ptr %adjncy, align 8, !tbaa !4
  %70 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom56 = sext i32 %70 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %69, i64 %idxprom56
  %71 = load i32, ptr %arrayidx57, align 4, !tbaa !8
  %dec58 = add nsw i32 %71, -1
  store i32 %dec58, ptr %arrayidx57, align 4, !tbaa !8
  br label %for.inc59

for.inc59:                                        ; preds = %for.body55
  %72 = load i32, ptr %i, align 4, !tbaa !8
  %inc60 = add nsw i32 %72, 1
  store i32 %inc60, ptr %i, align 4, !tbaa !8
  br label %for.cond53, !llvm.loop !60

for.end61:                                        ; preds = %for.cond53
  %73 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  call void @libmetis__wspacepop(ptr noundef %73)
  call void @llvm.lifetime.end.p0(i64 8, ptr %marker) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %qsize) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %iperm) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %perm) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %label) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %adjncy) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %xadj) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %firstvtx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nofsub) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nvtxs) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret void
}

declare void @libmetis__wspacepush(ptr noundef) #2

declare ptr @libmetis__iwspacemalloc(ptr noundef, i32 noundef) #2

declare i32 @libmetis__FindSepInducedComponents(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @libmetis__SplitGraphOrderCC(ptr noundef %ctrl, ptr noundef %graph, i32 noundef %ncmps, ptr noundef %cptr, ptr noundef %cind) #0 {
entry:
  %ctrl.addr = alloca ptr, align 8
  %graph.addr = alloca ptr, align 8
  %ncmps.addr = alloca i32, align 4
  %cptr.addr = alloca ptr, align 8
  %cind.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ii = alloca i32, align 4
  %iii = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %istart = alloca i32, align 4
  %iend = alloca i32, align 4
  %mypart = alloca i32, align 4
  %nvtxs = alloca i32, align 4
  %snvtxs = alloca i32, align 4
  %snedges = alloca i32, align 4
  %xadj = alloca ptr, align 8
  %vwgt = alloca ptr, align 8
  %adjncy = alloca ptr, align 8
  %adjwgt = alloca ptr, align 8
  %label = alloca ptr, align 8
  %where = alloca ptr, align 8
  %bndptr = alloca ptr, align 8
  %bndind = alloca ptr, align 8
  %sxadj = alloca ptr, align 8
  %svwgt = alloca ptr, align 8
  %sadjncy = alloca ptr, align 8
  %sadjwgt = alloca ptr, align 8
  %slabel = alloca ptr, align 8
  %rename = alloca ptr, align 8
  %auxadjncy = alloca ptr, align 8
  %sgraphs = alloca ptr, align 8
  store ptr %ctrl, ptr %ctrl.addr, align 8, !tbaa !4
  store ptr %graph, ptr %graph.addr, align 8, !tbaa !4
  store i32 %ncmps, ptr %ncmps.addr, align 4, !tbaa !8
  store ptr %cptr, ptr %cptr.addr, align 8, !tbaa !4
  store ptr %cind, ptr %cind.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ii) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %iii) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %istart) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %iend) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %mypart) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nvtxs) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %snvtxs) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %snedges) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %xadj) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %vwgt) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %adjncy) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %adjwgt) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %label) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %where) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %bndptr) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %bndind) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %sxadj) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %svwgt) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %sadjncy) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %sadjwgt) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %slabel) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %rename) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %auxadjncy) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %sgraphs) #5
  %0 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  call void @libmetis__wspacepush(ptr noundef %0)
  %1 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %dbglvl = getelementptr inbounds %struct.ctrl_t, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %dbglvl, align 8, !tbaa !14
  %and = and i32 %2, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call double @gk_CPUSeconds()
  %3 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %SplitTmr = getelementptr inbounds %struct.ctrl_t, ptr %3, i32 0, i32 35
  %4 = load double, ptr %SplitTmr, align 8, !tbaa !42
  %sub = fsub double %4, %call
  store double %sub, ptr %SplitTmr, align 8, !tbaa !42
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs1 = getelementptr inbounds %struct.graph_t, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %nvtxs1, align 8, !tbaa !17
  store i32 %6, ptr %nvtxs, align 4, !tbaa !8
  %7 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %xadj2 = getelementptr inbounds %struct.graph_t, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %xadj2, align 8, !tbaa !43
  store ptr %8, ptr %xadj, align 8, !tbaa !4
  %9 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %vwgt3 = getelementptr inbounds %struct.graph_t, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %vwgt3, align 8, !tbaa !44
  store ptr %10, ptr %vwgt, align 8, !tbaa !4
  %11 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %adjncy4 = getelementptr inbounds %struct.graph_t, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %adjncy4, align 8, !tbaa !45
  store ptr %12, ptr %adjncy, align 8, !tbaa !4
  %13 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %adjwgt5 = getelementptr inbounds %struct.graph_t, ptr %13, i32 0, i32 7
  %14 = load ptr, ptr %adjwgt5, align 8, !tbaa !46
  store ptr %14, ptr %adjwgt, align 8, !tbaa !4
  %15 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %label6 = getelementptr inbounds %struct.graph_t, ptr %15, i32 0, i32 15
  %16 = load ptr, ptr %label6, align 8, !tbaa !33
  store ptr %16, ptr %label, align 8, !tbaa !4
  %17 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %where7 = getelementptr inbounds %struct.graph_t, ptr %17, i32 0, i32 19
  %18 = load ptr, ptr %where7, align 8, !tbaa !40
  store ptr %18, ptr %where, align 8, !tbaa !4
  %19 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %bndptr8 = getelementptr inbounds %struct.graph_t, ptr %19, i32 0, i32 22
  %20 = load ptr, ptr %bndptr8, align 8, !tbaa !47
  store ptr %20, ptr %bndptr, align 8, !tbaa !4
  %21 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %bndind9 = getelementptr inbounds %struct.graph_t, ptr %21, i32 0, i32 23
  %22 = load ptr, ptr %bndind9, align 8, !tbaa !32
  store ptr %22, ptr %bndind, align 8, !tbaa !4
  store i32 0, ptr %ii, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %if.end
  %23 = load i32, ptr %ii, align 4, !tbaa !8
  %24 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nbnd = getelementptr inbounds %struct.graph_t, ptr %24, i32 0, i32 21
  %25 = load i32, ptr %nbnd, align 8, !tbaa !31
  %cmp = icmp slt i32 %23, %25
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr %bndind, align 8, !tbaa !4
  %27 = load i32, ptr %ii, align 4, !tbaa !8
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr inbounds i32, ptr %26, i64 %idxprom
  %28 = load i32, ptr %arrayidx, align 4, !tbaa !8
  store i32 %28, ptr %i, align 4, !tbaa !8
  %29 = load ptr, ptr %xadj, align 8, !tbaa !4
  %30 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom10 = sext i32 %30 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %29, i64 %idxprom10
  %31 = load i32, ptr %arrayidx11, align 4, !tbaa !8
  store i32 %31, ptr %j, align 4, !tbaa !8
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %for.body
  %32 = load i32, ptr %j, align 4, !tbaa !8
  %33 = load ptr, ptr %xadj, align 8, !tbaa !4
  %34 = load i32, ptr %i, align 4, !tbaa !8
  %add = add nsw i32 %34, 1
  %idxprom13 = sext i32 %add to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %33, i64 %idxprom13
  %35 = load i32, ptr %arrayidx14, align 4, !tbaa !8
  %cmp15 = icmp slt i32 %32, %35
  br i1 %cmp15, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond12
  %36 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %37 = load ptr, ptr %adjncy, align 8, !tbaa !4
  %38 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom17 = sext i32 %38 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %37, i64 %idxprom17
  %39 = load i32, ptr %arrayidx18, align 4, !tbaa !8
  %idxprom19 = sext i32 %39 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %36, i64 %idxprom19
  store i32 1, ptr %arrayidx20, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body16
  %40 = load i32, ptr %j, align 4, !tbaa !8
  %inc = add nsw i32 %40, 1
  store i32 %inc, ptr %j, align 4, !tbaa !8
  br label %for.cond12, !llvm.loop !61

for.end:                                          ; preds = %for.cond12
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %41 = load i32, ptr %ii, align 4, !tbaa !8
  %inc22 = add nsw i32 %41, 1
  store i32 %inc22, ptr %ii, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !62

for.end23:                                        ; preds = %for.cond
  %42 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %43 = load i32, ptr %nvtxs, align 4, !tbaa !8
  %call24 = call ptr @libmetis__iwspacemalloc(ptr noundef %42, i32 noundef %43)
  store ptr %call24, ptr %rename, align 8, !tbaa !4
  %44 = load i32, ptr %ncmps.addr, align 4, !tbaa !8
  %conv = sext i32 %44 to i64
  %mul = mul i64 8, %conv
  %call25 = call ptr @gk_malloc(i64 noundef %mul, ptr noundef @.str.5)
  store ptr %call25, ptr %sgraphs, align 8, !tbaa !4
  store i32 0, ptr %iii, align 4, !tbaa !8
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc180, %for.end23
  %45 = load i32, ptr %iii, align 4, !tbaa !8
  %46 = load i32, ptr %ncmps.addr, align 4, !tbaa !8
  %cmp27 = icmp slt i32 %45, %46
  br i1 %cmp27, label %for.body29, label %for.end182

for.body29:                                       ; preds = %for.cond26
  %47 = load ptr, ptr %cptr.addr, align 8, !tbaa !4
  %48 = load i32, ptr %iii, align 4, !tbaa !8
  %add30 = add nsw i32 %48, 1
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %47, i64 %idxprom31
  %49 = load i32, ptr %arrayidx32, align 4, !tbaa !8
  %50 = load ptr, ptr %cptr.addr, align 8, !tbaa !4
  %51 = load i32, ptr %iii, align 4, !tbaa !8
  %idxprom33 = sext i32 %51 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %50, i64 %idxprom33
  %52 = load i32, ptr %arrayidx34, align 4, !tbaa !8
  %sub35 = sub nsw i32 %49, %52
  %53 = load ptr, ptr %cind.addr, align 8, !tbaa !4
  %54 = load ptr, ptr %cptr.addr, align 8, !tbaa !4
  %55 = load i32, ptr %iii, align 4, !tbaa !8
  %idxprom36 = sext i32 %55 to i64
  %arrayidx37 = getelementptr inbounds i32, ptr %54, i64 %idxprom36
  %56 = load i32, ptr %arrayidx37, align 4, !tbaa !8
  %idx.ext = sext i32 %56 to i64
  %add.ptr = getelementptr inbounds i32, ptr %53, i64 %idx.ext
  %57 = load ptr, ptr %cptr.addr, align 8, !tbaa !4
  %58 = load i32, ptr %iii, align 4, !tbaa !8
  %add38 = add nsw i32 %58, 1
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds i32, ptr %57, i64 %idxprom39
  %59 = load i32, ptr %arrayidx40, align 4, !tbaa !8
  %60 = load ptr, ptr %cptr.addr, align 8, !tbaa !4
  %61 = load i32, ptr %iii, align 4, !tbaa !8
  %idxprom41 = sext i32 %61 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %60, i64 %idxprom41
  %62 = load i32, ptr %arrayidx42, align 4, !tbaa !8
  %sub43 = sub nsw i32 %59, %62
  call void @libmetis__irandArrayPermute(i32 noundef %sub35, ptr noundef %add.ptr, i32 noundef %sub43, i32 noundef 0)
  store i32 0, ptr %snedges, align 4, !tbaa !8
  store i32 0, ptr %snvtxs, align 4, !tbaa !8
  %63 = load ptr, ptr %cptr.addr, align 8, !tbaa !4
  %64 = load i32, ptr %iii, align 4, !tbaa !8
  %idxprom44 = sext i32 %64 to i64
  %arrayidx45 = getelementptr inbounds i32, ptr %63, i64 %idxprom44
  %65 = load i32, ptr %arrayidx45, align 4, !tbaa !8
  store i32 %65, ptr %j, align 4, !tbaa !8
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc65, %for.body29
  %66 = load i32, ptr %j, align 4, !tbaa !8
  %67 = load ptr, ptr %cptr.addr, align 8, !tbaa !4
  %68 = load i32, ptr %iii, align 4, !tbaa !8
  %add47 = add nsw i32 %68, 1
  %idxprom48 = sext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds i32, ptr %67, i64 %idxprom48
  %69 = load i32, ptr %arrayidx49, align 4, !tbaa !8
  %cmp50 = icmp slt i32 %66, %69
  br i1 %cmp50, label %for.body52, label %for.end67

for.body52:                                       ; preds = %for.cond46
  %70 = load ptr, ptr %cind.addr, align 8, !tbaa !4
  %71 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom53 = sext i32 %71 to i64
  %arrayidx54 = getelementptr inbounds i32, ptr %70, i64 %idxprom53
  %72 = load i32, ptr %arrayidx54, align 4, !tbaa !8
  store i32 %72, ptr %i, align 4, !tbaa !8
  %73 = load i32, ptr %snvtxs, align 4, !tbaa !8
  %inc55 = add nsw i32 %73, 1
  store i32 %inc55, ptr %snvtxs, align 4, !tbaa !8
  %74 = load ptr, ptr %rename, align 8, !tbaa !4
  %75 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom56 = sext i32 %75 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %74, i64 %idxprom56
  store i32 %73, ptr %arrayidx57, align 4, !tbaa !8
  %76 = load ptr, ptr %xadj, align 8, !tbaa !4
  %77 = load i32, ptr %i, align 4, !tbaa !8
  %add58 = add nsw i32 %77, 1
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds i32, ptr %76, i64 %idxprom59
  %78 = load i32, ptr %arrayidx60, align 4, !tbaa !8
  %79 = load ptr, ptr %xadj, align 8, !tbaa !4
  %80 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom61 = sext i32 %80 to i64
  %arrayidx62 = getelementptr inbounds i32, ptr %79, i64 %idxprom61
  %81 = load i32, ptr %arrayidx62, align 4, !tbaa !8
  %sub63 = sub nsw i32 %78, %81
  %82 = load i32, ptr %snedges, align 4, !tbaa !8
  %add64 = add nsw i32 %82, %sub63
  store i32 %add64, ptr %snedges, align 4, !tbaa !8
  br label %for.inc65

for.inc65:                                        ; preds = %for.body52
  %83 = load i32, ptr %j, align 4, !tbaa !8
  %inc66 = add nsw i32 %83, 1
  store i32 %inc66, ptr %j, align 4, !tbaa !8
  br label %for.cond46, !llvm.loop !63

for.end67:                                        ; preds = %for.cond46
  %84 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %85 = load i32, ptr %snvtxs, align 4, !tbaa !8
  %86 = load i32, ptr %snedges, align 4, !tbaa !8
  %call68 = call ptr @libmetis__SetupSplitGraph(ptr noundef %84, i32 noundef %85, i32 noundef %86)
  %87 = load ptr, ptr %sgraphs, align 8, !tbaa !4
  %88 = load i32, ptr %iii, align 4, !tbaa !8
  %idxprom69 = sext i32 %88 to i64
  %arrayidx70 = getelementptr inbounds ptr, ptr %87, i64 %idxprom69
  store ptr %call68, ptr %arrayidx70, align 8, !tbaa !4
  %89 = load ptr, ptr %sgraphs, align 8, !tbaa !4
  %90 = load i32, ptr %iii, align 4, !tbaa !8
  %idxprom71 = sext i32 %90 to i64
  %arrayidx72 = getelementptr inbounds ptr, ptr %89, i64 %idxprom71
  %91 = load ptr, ptr %arrayidx72, align 8, !tbaa !4
  %xadj73 = getelementptr inbounds %struct.graph_t, ptr %91, i32 0, i32 3
  %92 = load ptr, ptr %xadj73, align 8, !tbaa !43
  store ptr %92, ptr %sxadj, align 8, !tbaa !4
  %93 = load ptr, ptr %sgraphs, align 8, !tbaa !4
  %94 = load i32, ptr %iii, align 4, !tbaa !8
  %idxprom74 = sext i32 %94 to i64
  %arrayidx75 = getelementptr inbounds ptr, ptr %93, i64 %idxprom74
  %95 = load ptr, ptr %arrayidx75, align 8, !tbaa !4
  %vwgt76 = getelementptr inbounds %struct.graph_t, ptr %95, i32 0, i32 4
  %96 = load ptr, ptr %vwgt76, align 8, !tbaa !44
  store ptr %96, ptr %svwgt, align 8, !tbaa !4
  %97 = load ptr, ptr %sgraphs, align 8, !tbaa !4
  %98 = load i32, ptr %iii, align 4, !tbaa !8
  %idxprom77 = sext i32 %98 to i64
  %arrayidx78 = getelementptr inbounds ptr, ptr %97, i64 %idxprom77
  %99 = load ptr, ptr %arrayidx78, align 8, !tbaa !4
  %adjncy79 = getelementptr inbounds %struct.graph_t, ptr %99, i32 0, i32 6
  %100 = load ptr, ptr %adjncy79, align 8, !tbaa !45
  store ptr %100, ptr %sadjncy, align 8, !tbaa !4
  %101 = load ptr, ptr %sgraphs, align 8, !tbaa !4
  %102 = load i32, ptr %iii, align 4, !tbaa !8
  %idxprom80 = sext i32 %102 to i64
  %arrayidx81 = getelementptr inbounds ptr, ptr %101, i64 %idxprom80
  %103 = load ptr, ptr %arrayidx81, align 8, !tbaa !4
  %adjwgt82 = getelementptr inbounds %struct.graph_t, ptr %103, i32 0, i32 7
  %104 = load ptr, ptr %adjwgt82, align 8, !tbaa !46
  store ptr %104, ptr %sadjwgt, align 8, !tbaa !4
  %105 = load ptr, ptr %sgraphs, align 8, !tbaa !4
  %106 = load i32, ptr %iii, align 4, !tbaa !8
  %idxprom83 = sext i32 %106 to i64
  %arrayidx84 = getelementptr inbounds ptr, ptr %105, i64 %idxprom83
  %107 = load ptr, ptr %arrayidx84, align 8, !tbaa !4
  %label85 = getelementptr inbounds %struct.graph_t, ptr %107, i32 0, i32 15
  %108 = load ptr, ptr %label85, align 8, !tbaa !33
  store ptr %108, ptr %slabel, align 8, !tbaa !4
  %109 = load ptr, ptr %sxadj, align 8, !tbaa !4
  %arrayidx86 = getelementptr inbounds i32, ptr %109, i64 0
  store i32 0, ptr %arrayidx86, align 4, !tbaa !8
  store i32 0, ptr %snedges, align 4, !tbaa !8
  store i32 0, ptr %snvtxs, align 4, !tbaa !8
  %110 = load ptr, ptr %cptr.addr, align 8, !tbaa !4
  %111 = load i32, ptr %iii, align 4, !tbaa !8
  %idxprom87 = sext i32 %111 to i64
  %arrayidx88 = getelementptr inbounds i32, ptr %110, i64 %idxprom87
  %112 = load i32, ptr %arrayidx88, align 4, !tbaa !8
  store i32 %112, ptr %ii, align 4, !tbaa !8
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc155, %for.end67
  %113 = load i32, ptr %ii, align 4, !tbaa !8
  %114 = load ptr, ptr %cptr.addr, align 8, !tbaa !4
  %115 = load i32, ptr %iii, align 4, !tbaa !8
  %add90 = add nsw i32 %115, 1
  %idxprom91 = sext i32 %add90 to i64
  %arrayidx92 = getelementptr inbounds i32, ptr %114, i64 %idxprom91
  %116 = load i32, ptr %arrayidx92, align 4, !tbaa !8
  %cmp93 = icmp slt i32 %113, %116
  br i1 %cmp93, label %for.body95, label %for.end157

for.body95:                                       ; preds = %for.cond89
  %117 = load ptr, ptr %cind.addr, align 8, !tbaa !4
  %118 = load i32, ptr %ii, align 4, !tbaa !8
  %idxprom96 = sext i32 %118 to i64
  %arrayidx97 = getelementptr inbounds i32, ptr %117, i64 %idxprom96
  %119 = load i32, ptr %arrayidx97, align 4, !tbaa !8
  store i32 %119, ptr %i, align 4, !tbaa !8
  %120 = load ptr, ptr %xadj, align 8, !tbaa !4
  %121 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom98 = sext i32 %121 to i64
  %arrayidx99 = getelementptr inbounds i32, ptr %120, i64 %idxprom98
  %122 = load i32, ptr %arrayidx99, align 4, !tbaa !8
  store i32 %122, ptr %istart, align 4, !tbaa !8
  %123 = load ptr, ptr %xadj, align 8, !tbaa !4
  %124 = load i32, ptr %i, align 4, !tbaa !8
  %add100 = add nsw i32 %124, 1
  %idxprom101 = sext i32 %add100 to i64
  %arrayidx102 = getelementptr inbounds i32, ptr %123, i64 %idxprom101
  %125 = load i32, ptr %arrayidx102, align 4, !tbaa !8
  store i32 %125, ptr %iend, align 4, !tbaa !8
  %126 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %127 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom103 = sext i32 %127 to i64
  %arrayidx104 = getelementptr inbounds i32, ptr %126, i64 %idxprom103
  %128 = load i32, ptr %arrayidx104, align 4, !tbaa !8
  %cmp105 = icmp eq i32 %128, -1
  br i1 %cmp105, label %if.then107, label %if.else

if.then107:                                       ; preds = %for.body95
  %129 = load ptr, ptr %sadjncy, align 8, !tbaa !4
  %130 = load i32, ptr %snedges, align 4, !tbaa !8
  %idx.ext108 = sext i32 %130 to i64
  %add.ptr109 = getelementptr inbounds i32, ptr %129, i64 %idx.ext108
  %131 = load i32, ptr %istart, align 4, !tbaa !8
  %idx.ext110 = sext i32 %131 to i64
  %idx.neg = sub i64 0, %idx.ext110
  %add.ptr111 = getelementptr inbounds i32, ptr %add.ptr109, i64 %idx.neg
  store ptr %add.ptr111, ptr %auxadjncy, align 8, !tbaa !4
  %132 = load i32, ptr %istart, align 4, !tbaa !8
  store i32 %132, ptr %j, align 4, !tbaa !8
  br label %for.cond112

for.cond112:                                      ; preds = %for.inc120, %if.then107
  %133 = load i32, ptr %j, align 4, !tbaa !8
  %134 = load i32, ptr %iend, align 4, !tbaa !8
  %cmp113 = icmp slt i32 %133, %134
  br i1 %cmp113, label %for.body115, label %for.end122

for.body115:                                      ; preds = %for.cond112
  %135 = load ptr, ptr %adjncy, align 8, !tbaa !4
  %136 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom116 = sext i32 %136 to i64
  %arrayidx117 = getelementptr inbounds i32, ptr %135, i64 %idxprom116
  %137 = load i32, ptr %arrayidx117, align 4, !tbaa !8
  %138 = load ptr, ptr %auxadjncy, align 8, !tbaa !4
  %139 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom118 = sext i32 %139 to i64
  %arrayidx119 = getelementptr inbounds i32, ptr %138, i64 %idxprom118
  store i32 %137, ptr %arrayidx119, align 4, !tbaa !8
  br label %for.inc120

for.inc120:                                       ; preds = %for.body115
  %140 = load i32, ptr %j, align 4, !tbaa !8
  %inc121 = add nsw i32 %140, 1
  store i32 %inc121, ptr %j, align 4, !tbaa !8
  br label %for.cond112, !llvm.loop !64

for.end122:                                       ; preds = %for.cond112
  %141 = load i32, ptr %iend, align 4, !tbaa !8
  %142 = load i32, ptr %istart, align 4, !tbaa !8
  %sub123 = sub nsw i32 %141, %142
  %143 = load i32, ptr %snedges, align 4, !tbaa !8
  %add124 = add nsw i32 %143, %sub123
  store i32 %add124, ptr %snedges, align 4, !tbaa !8
  br label %if.end143

if.else:                                          ; preds = %for.body95
  %144 = load i32, ptr %snedges, align 4, !tbaa !8
  store i32 %144, ptr %l, align 4, !tbaa !8
  %145 = load i32, ptr %istart, align 4, !tbaa !8
  store i32 %145, ptr %j, align 4, !tbaa !8
  br label %for.cond125

for.cond125:                                      ; preds = %for.inc140, %if.else
  %146 = load i32, ptr %j, align 4, !tbaa !8
  %147 = load i32, ptr %iend, align 4, !tbaa !8
  %cmp126 = icmp slt i32 %146, %147
  br i1 %cmp126, label %for.body128, label %for.end142

for.body128:                                      ; preds = %for.cond125
  %148 = load ptr, ptr %adjncy, align 8, !tbaa !4
  %149 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom129 = sext i32 %149 to i64
  %arrayidx130 = getelementptr inbounds i32, ptr %148, i64 %idxprom129
  %150 = load i32, ptr %arrayidx130, align 4, !tbaa !8
  store i32 %150, ptr %k, align 4, !tbaa !8
  %151 = load ptr, ptr %where, align 8, !tbaa !4
  %152 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom131 = sext i32 %152 to i64
  %arrayidx132 = getelementptr inbounds i32, ptr %151, i64 %idxprom131
  %153 = load i32, ptr %arrayidx132, align 4, !tbaa !8
  %cmp133 = icmp ne i32 %153, 2
  br i1 %cmp133, label %if.then135, label %if.end139

if.then135:                                       ; preds = %for.body128
  %154 = load i32, ptr %k, align 4, !tbaa !8
  %155 = load ptr, ptr %sadjncy, align 8, !tbaa !4
  %156 = load i32, ptr %l, align 4, !tbaa !8
  %inc136 = add nsw i32 %156, 1
  store i32 %inc136, ptr %l, align 4, !tbaa !8
  %idxprom137 = sext i32 %156 to i64
  %arrayidx138 = getelementptr inbounds i32, ptr %155, i64 %idxprom137
  store i32 %154, ptr %arrayidx138, align 4, !tbaa !8
  br label %if.end139

if.end139:                                        ; preds = %if.then135, %for.body128
  br label %for.inc140

for.inc140:                                       ; preds = %if.end139
  %157 = load i32, ptr %j, align 4, !tbaa !8
  %inc141 = add nsw i32 %157, 1
  store i32 %inc141, ptr %j, align 4, !tbaa !8
  br label %for.cond125, !llvm.loop !65

for.end142:                                       ; preds = %for.cond125
  %158 = load i32, ptr %l, align 4, !tbaa !8
  store i32 %158, ptr %snedges, align 4, !tbaa !8
  br label %if.end143

if.end143:                                        ; preds = %for.end142, %for.end122
  %159 = load ptr, ptr %vwgt, align 8, !tbaa !4
  %160 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom144 = sext i32 %160 to i64
  %arrayidx145 = getelementptr inbounds i32, ptr %159, i64 %idxprom144
  %161 = load i32, ptr %arrayidx145, align 4, !tbaa !8
  %162 = load ptr, ptr %svwgt, align 8, !tbaa !4
  %163 = load i32, ptr %snvtxs, align 4, !tbaa !8
  %idxprom146 = sext i32 %163 to i64
  %arrayidx147 = getelementptr inbounds i32, ptr %162, i64 %idxprom146
  store i32 %161, ptr %arrayidx147, align 4, !tbaa !8
  %164 = load ptr, ptr %label, align 8, !tbaa !4
  %165 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom148 = sext i32 %165 to i64
  %arrayidx149 = getelementptr inbounds i32, ptr %164, i64 %idxprom148
  %166 = load i32, ptr %arrayidx149, align 4, !tbaa !8
  %167 = load ptr, ptr %slabel, align 8, !tbaa !4
  %168 = load i32, ptr %snvtxs, align 4, !tbaa !8
  %idxprom150 = sext i32 %168 to i64
  %arrayidx151 = getelementptr inbounds i32, ptr %167, i64 %idxprom150
  store i32 %166, ptr %arrayidx151, align 4, !tbaa !8
  %169 = load i32, ptr %snedges, align 4, !tbaa !8
  %170 = load ptr, ptr %sxadj, align 8, !tbaa !4
  %171 = load i32, ptr %snvtxs, align 4, !tbaa !8
  %inc152 = add nsw i32 %171, 1
  store i32 %inc152, ptr %snvtxs, align 4, !tbaa !8
  %idxprom153 = sext i32 %inc152 to i64
  %arrayidx154 = getelementptr inbounds i32, ptr %170, i64 %idxprom153
  store i32 %169, ptr %arrayidx154, align 4, !tbaa !8
  br label %for.inc155

for.inc155:                                       ; preds = %if.end143
  %172 = load i32, ptr %ii, align 4, !tbaa !8
  %inc156 = add nsw i32 %172, 1
  store i32 %inc156, ptr %ii, align 4, !tbaa !8
  br label %for.cond89, !llvm.loop !66

for.end157:                                       ; preds = %for.cond89
  %173 = load i32, ptr %snedges, align 4, !tbaa !8
  %conv158 = sext i32 %173 to i64
  %174 = load ptr, ptr %sadjwgt, align 8, !tbaa !4
  %call159 = call ptr @libmetis__iset(i64 noundef %conv158, i32 noundef 1, ptr noundef %174)
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond160

for.cond160:                                      ; preds = %for.inc170, %for.end157
  %175 = load i32, ptr %i, align 4, !tbaa !8
  %176 = load i32, ptr %snedges, align 4, !tbaa !8
  %cmp161 = icmp slt i32 %175, %176
  br i1 %cmp161, label %for.body163, label %for.end172

for.body163:                                      ; preds = %for.cond160
  %177 = load ptr, ptr %rename, align 8, !tbaa !4
  %178 = load ptr, ptr %sadjncy, align 8, !tbaa !4
  %179 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom164 = sext i32 %179 to i64
  %arrayidx165 = getelementptr inbounds i32, ptr %178, i64 %idxprom164
  %180 = load i32, ptr %arrayidx165, align 4, !tbaa !8
  %idxprom166 = sext i32 %180 to i64
  %arrayidx167 = getelementptr inbounds i32, ptr %177, i64 %idxprom166
  %181 = load i32, ptr %arrayidx167, align 4, !tbaa !8
  %182 = load ptr, ptr %sadjncy, align 8, !tbaa !4
  %183 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom168 = sext i32 %183 to i64
  %arrayidx169 = getelementptr inbounds i32, ptr %182, i64 %idxprom168
  store i32 %181, ptr %arrayidx169, align 4, !tbaa !8
  br label %for.inc170

for.inc170:                                       ; preds = %for.body163
  %184 = load i32, ptr %i, align 4, !tbaa !8
  %inc171 = add nsw i32 %184, 1
  store i32 %inc171, ptr %i, align 4, !tbaa !8
  br label %for.cond160, !llvm.loop !67

for.end172:                                       ; preds = %for.cond160
  %185 = load i32, ptr %snvtxs, align 4, !tbaa !8
  %186 = load ptr, ptr %sgraphs, align 8, !tbaa !4
  %187 = load i32, ptr %iii, align 4, !tbaa !8
  %idxprom173 = sext i32 %187 to i64
  %arrayidx174 = getelementptr inbounds ptr, ptr %186, i64 %idxprom173
  %188 = load ptr, ptr %arrayidx174, align 8, !tbaa !4
  %nvtxs175 = getelementptr inbounds %struct.graph_t, ptr %188, i32 0, i32 0
  store i32 %185, ptr %nvtxs175, align 8, !tbaa !17
  %189 = load i32, ptr %snedges, align 4, !tbaa !8
  %190 = load ptr, ptr %sgraphs, align 8, !tbaa !4
  %191 = load i32, ptr %iii, align 4, !tbaa !8
  %idxprom176 = sext i32 %191 to i64
  %arrayidx177 = getelementptr inbounds ptr, ptr %190, i64 %idxprom176
  %192 = load ptr, ptr %arrayidx177, align 8, !tbaa !4
  %nedges = getelementptr inbounds %struct.graph_t, ptr %192, i32 0, i32 1
  store i32 %189, ptr %nedges, align 4, !tbaa !35
  %193 = load ptr, ptr %sgraphs, align 8, !tbaa !4
  %194 = load i32, ptr %iii, align 4, !tbaa !8
  %idxprom178 = sext i32 %194 to i64
  %arrayidx179 = getelementptr inbounds ptr, ptr %193, i64 %idxprom178
  %195 = load ptr, ptr %arrayidx179, align 8, !tbaa !4
  call void @libmetis__SetupGraph_tvwgt(ptr noundef %195)
  br label %for.inc180

for.inc180:                                       ; preds = %for.end172
  %196 = load i32, ptr %iii, align 4, !tbaa !8
  %inc181 = add nsw i32 %196, 1
  store i32 %inc181, ptr %iii, align 4, !tbaa !8
  br label %for.cond26, !llvm.loop !68

for.end182:                                       ; preds = %for.cond26
  %197 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %dbglvl183 = getelementptr inbounds %struct.ctrl_t, ptr %197, i32 0, i32 2
  %198 = load i32, ptr %dbglvl183, align 8, !tbaa !14
  %and184 = and i32 %198, 2
  %tobool185 = icmp ne i32 %and184, 0
  br i1 %tobool185, label %if.then186, label %if.end190

if.then186:                                       ; preds = %for.end182
  %call187 = call double @gk_CPUSeconds()
  %199 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %SplitTmr188 = getelementptr inbounds %struct.ctrl_t, ptr %199, i32 0, i32 35
  %200 = load double, ptr %SplitTmr188, align 8, !tbaa !42
  %add189 = fadd double %200, %call187
  store double %add189, ptr %SplitTmr188, align 8, !tbaa !42
  br label %if.end190

if.end190:                                        ; preds = %if.then186, %for.end182
  %201 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  call void @libmetis__wspacepop(ptr noundef %201)
  %202 = load ptr, ptr %sgraphs, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %sgraphs) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %auxadjncy) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rename) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %slabel) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sadjwgt) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sadjncy) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %svwgt) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sxadj) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %bndind) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %bndptr) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %where) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %label) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %adjwgt) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %adjncy) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %vwgt) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %xadj) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %snedges) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %snvtxs) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nvtxs) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %mypart) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %iend) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %istart) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %iii) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ii) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret ptr %202
}

declare void @libmetis__wspacepop(ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @libmetis__MlevelNodeBisectionL2(ptr noundef %ctrl, ptr noundef %graph, i32 noundef %niparts) #0 {
entry:
  %ctrl.addr = alloca ptr, align 8
  %graph.addr = alloca ptr, align 8
  %niparts.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %mincut = alloca i32, align 4
  %nruns = alloca i32, align 4
  %cgraph = alloca ptr, align 8
  %bestwhere = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctrl, ptr %ctrl.addr, align 8, !tbaa !4
  store ptr %graph, ptr %graph.addr, align 8, !tbaa !4
  store i32 %niparts, ptr %niparts.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %mincut) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nruns) #5
  store i32 5, ptr %nruns, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %cgraph) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %bestwhere) #5
  %0 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs = getelementptr inbounds %struct.graph_t, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %nvtxs, align 8, !tbaa !17
  %cmp = icmp slt i32 %1, 5000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %4 = load i32, ptr %niparts.addr, align 4, !tbaa !8
  call void @libmetis__MlevelNodeBisectionL1(ptr noundef %2, ptr noundef %3, i32 noundef %4)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  call void @libmetis__wspacepush(ptr noundef %5)
  %6 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs1 = getelementptr inbounds %struct.graph_t, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %nvtxs1, align 8, !tbaa !17
  %div = sdiv i32 %7, 30
  %cmp2 = icmp sge i32 100, %div
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %8 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs3 = getelementptr inbounds %struct.graph_t, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %nvtxs3, align 8, !tbaa !17
  %div4 = sdiv i32 %9, 30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 100, %cond.true ], [ %div4, %cond.false ]
  %10 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %CoarsenTo = getelementptr inbounds %struct.ctrl_t, ptr %10, i32 0, i32 6
  store i32 %cond, ptr %CoarsenTo, align 8, !tbaa !69
  %11 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %call = call ptr @CoarsenGraphNlevels(ptr noundef %11, ptr noundef %12, i32 noundef 4)
  store ptr %call, ptr %cgraph, align 8, !tbaa !4
  %13 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %cgraph, align 8, !tbaa !4
  %nvtxs5 = getelementptr inbounds %struct.graph_t, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %nvtxs5, align 8, !tbaa !17
  %call6 = call ptr @libmetis__iwspacemalloc(ptr noundef %13, i32 noundef %15)
  store ptr %call6, ptr %bestwhere, align 8, !tbaa !4
  %16 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %tvwgt = getelementptr inbounds %struct.graph_t, ptr %16, i32 0, i32 8
  %17 = load ptr, ptr %tvwgt, align 8, !tbaa !38
  %arrayidx = getelementptr inbounds i32, ptr %17, i64 0
  %18 = load i32, ptr %arrayidx, align 4, !tbaa !8
  store i32 %18, ptr %mincut, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %19 = load i32, ptr %i, align 4, !tbaa !8
  %20 = load i32, ptr %nruns, align 4, !tbaa !8
  %cmp7 = icmp slt i32 %19, %20
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %22 = load ptr, ptr %cgraph, align 8, !tbaa !4
  %23 = load i32, ptr %niparts.addr, align 4, !tbaa !8
  %conv = sitofp i32 %23 to double
  %mul = fmul double 0x3FE6666666666666, %conv
  %conv8 = fptosi double %mul to i32
  call void @libmetis__MlevelNodeBisectionL1(ptr noundef %21, ptr noundef %22, i32 noundef %conv8)
  %24 = load i32, ptr %i, align 4, !tbaa !8
  %cmp9 = icmp eq i32 %24, 0
  br i1 %cmp9, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %25 = load ptr, ptr %cgraph, align 8, !tbaa !4
  %mincut11 = getelementptr inbounds %struct.graph_t, ptr %25, i32 0, i32 17
  %26 = load i32, ptr %mincut11, align 8, !tbaa !39
  %27 = load i32, ptr %mincut, align 4, !tbaa !8
  %cmp12 = icmp slt i32 %26, %27
  br i1 %cmp12, label %if.then14, label %if.end23

if.then14:                                        ; preds = %lor.lhs.false, %for.body
  %28 = load ptr, ptr %cgraph, align 8, !tbaa !4
  %mincut15 = getelementptr inbounds %struct.graph_t, ptr %28, i32 0, i32 17
  %29 = load i32, ptr %mincut15, align 8, !tbaa !39
  store i32 %29, ptr %mincut, align 4, !tbaa !8
  %30 = load i32, ptr %i, align 4, !tbaa !8
  %31 = load i32, ptr %nruns, align 4, !tbaa !8
  %sub = sub nsw i32 %31, 1
  %cmp16 = icmp slt i32 %30, %sub
  br i1 %cmp16, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.then14
  %32 = load ptr, ptr %cgraph, align 8, !tbaa !4
  %nvtxs19 = getelementptr inbounds %struct.graph_t, ptr %32, i32 0, i32 0
  %33 = load i32, ptr %nvtxs19, align 8, !tbaa !17
  %conv20 = sext i32 %33 to i64
  %34 = load ptr, ptr %cgraph, align 8, !tbaa !4
  %where = getelementptr inbounds %struct.graph_t, ptr %34, i32 0, i32 19
  %35 = load ptr, ptr %where, align 8, !tbaa !40
  %36 = load ptr, ptr %bestwhere, align 8, !tbaa !4
  %call21 = call ptr @libmetis__icopy(i64 noundef %conv20, ptr noundef %35, ptr noundef %36)
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.then14
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %lor.lhs.false
  %37 = load i32, ptr %mincut, align 4, !tbaa !8
  %cmp24 = icmp eq i32 %37, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  br label %for.end

if.end27:                                         ; preds = %if.end23
  %38 = load i32, ptr %i, align 4, !tbaa !8
  %39 = load i32, ptr %nruns, align 4, !tbaa !8
  %sub28 = sub nsw i32 %39, 1
  %cmp29 = icmp slt i32 %38, %sub28
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end27
  %40 = load ptr, ptr %cgraph, align 8, !tbaa !4
  call void @libmetis__FreeRData(ptr noundef %40)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end27
  br label %for.inc

for.inc:                                          ; preds = %if.end32
  %41 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %41, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !70

for.end:                                          ; preds = %if.then26, %for.cond
  %42 = load i32, ptr %mincut, align 4, !tbaa !8
  %43 = load ptr, ptr %cgraph, align 8, !tbaa !4
  %mincut33 = getelementptr inbounds %struct.graph_t, ptr %43, i32 0, i32 17
  %44 = load i32, ptr %mincut33, align 8, !tbaa !39
  %cmp34 = icmp ne i32 %42, %44
  br i1 %cmp34, label %if.then36, label %if.end41

if.then36:                                        ; preds = %for.end
  %45 = load ptr, ptr %cgraph, align 8, !tbaa !4
  %nvtxs37 = getelementptr inbounds %struct.graph_t, ptr %45, i32 0, i32 0
  %46 = load i32, ptr %nvtxs37, align 8, !tbaa !17
  %conv38 = sext i32 %46 to i64
  %47 = load ptr, ptr %bestwhere, align 8, !tbaa !4
  %48 = load ptr, ptr %cgraph, align 8, !tbaa !4
  %where39 = getelementptr inbounds %struct.graph_t, ptr %48, i32 0, i32 19
  %49 = load ptr, ptr %where39, align 8, !tbaa !40
  %call40 = call ptr @libmetis__icopy(i64 noundef %conv38, ptr noundef %47, ptr noundef %49)
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %for.end
  %50 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  call void @libmetis__wspacepop(ptr noundef %50)
  %51 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %52 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %53 = load ptr, ptr %cgraph, align 8, !tbaa !4
  call void @libmetis__Refine2WayNode(ptr noundef %51, ptr noundef %52, ptr noundef %53)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bestwhere) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %cgraph) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nruns) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %mincut) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @libmetis__FreeRData(ptr noundef) #2

declare void @libmetis__Compute2WayNodePartitionParams(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @libmetis__MlevelNodeBisectionL1(ptr noundef %ctrl, ptr noundef %graph, i32 noundef %niparts) #0 {
entry:
  %ctrl.addr = alloca ptr, align 8
  %graph.addr = alloca ptr, align 8
  %niparts.addr = alloca i32, align 4
  %cgraph = alloca ptr, align 8
  store ptr %ctrl, ptr %ctrl.addr, align 8, !tbaa !4
  store ptr %graph, ptr %graph.addr, align 8, !tbaa !4
  store i32 %niparts, ptr %niparts.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %cgraph) #5
  %0 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs = getelementptr inbounds %struct.graph_t, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %nvtxs, align 8, !tbaa !17
  %div = sdiv i32 %1, 8
  %2 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %CoarsenTo = getelementptr inbounds %struct.ctrl_t, ptr %2, i32 0, i32 6
  store i32 %div, ptr %CoarsenTo, align 8, !tbaa !69
  %3 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %CoarsenTo1 = getelementptr inbounds %struct.ctrl_t, ptr %3, i32 0, i32 6
  %4 = load i32, ptr %CoarsenTo1, align 8, !tbaa !69
  %cmp = icmp sgt i32 %4, 100
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %CoarsenTo2 = getelementptr inbounds %struct.ctrl_t, ptr %5, i32 0, i32 6
  store i32 100, ptr %CoarsenTo2, align 8, !tbaa !69
  br label %if.end7

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %CoarsenTo3 = getelementptr inbounds %struct.ctrl_t, ptr %6, i32 0, i32 6
  %7 = load i32, ptr %CoarsenTo3, align 8, !tbaa !69
  %cmp4 = icmp slt i32 %7, 40
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %8 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %CoarsenTo6 = getelementptr inbounds %struct.ctrl_t, ptr %8, i32 0, i32 6
  store i32 40, ptr %CoarsenTo6, align 8, !tbaa !69
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %9 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %call = call ptr @libmetis__CoarsenGraph(ptr noundef %9, ptr noundef %10)
  store ptr %call, ptr %cgraph, align 8, !tbaa !4
  %11 = load ptr, ptr %cgraph, align 8, !tbaa !4
  %nvtxs8 = getelementptr inbounds %struct.graph_t, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %nvtxs8, align 8, !tbaa !17
  %13 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %CoarsenTo9 = getelementptr inbounds %struct.ctrl_t, ptr %13, i32 0, i32 6
  %14 = load i32, ptr %CoarsenTo9, align 8, !tbaa !69
  %cmp10 = icmp sle i32 %12, %14
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end7
  %15 = load i32, ptr %niparts.addr, align 4, !tbaa !8
  %div11 = sdiv i32 %15, 2
  br label %cond.end

cond.false:                                       ; preds = %if.end7
  %16 = load i32, ptr %niparts.addr, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div11, %cond.true ], [ %16, %cond.false ]
  %cmp12 = icmp sge i32 1, %cond
  br i1 %cmp12, label %cond.true13, label %cond.false14

cond.true13:                                      ; preds = %cond.end
  br label %cond.end23

cond.false14:                                     ; preds = %cond.end
  %17 = load ptr, ptr %cgraph, align 8, !tbaa !4
  %nvtxs15 = getelementptr inbounds %struct.graph_t, ptr %17, i32 0, i32 0
  %18 = load i32, ptr %nvtxs15, align 8, !tbaa !17
  %19 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %CoarsenTo16 = getelementptr inbounds %struct.ctrl_t, ptr %19, i32 0, i32 6
  %20 = load i32, ptr %CoarsenTo16, align 8, !tbaa !69
  %cmp17 = icmp sle i32 %18, %20
  br i1 %cmp17, label %cond.true18, label %cond.false20

cond.true18:                                      ; preds = %cond.false14
  %21 = load i32, ptr %niparts.addr, align 4, !tbaa !8
  %div19 = sdiv i32 %21, 2
  br label %cond.end21

cond.false20:                                     ; preds = %cond.false14
  %22 = load i32, ptr %niparts.addr, align 4, !tbaa !8
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false20, %cond.true18
  %cond22 = phi i32 [ %div19, %cond.true18 ], [ %22, %cond.false20 ]
  br label %cond.end23

cond.end23:                                       ; preds = %cond.end21, %cond.true13
  %cond24 = phi i32 [ 1, %cond.true13 ], [ %cond22, %cond.end21 ]
  store i32 %cond24, ptr %niparts.addr, align 4, !tbaa !8
  %23 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %cgraph, align 8, !tbaa !4
  %25 = load i32, ptr %niparts.addr, align 4, !tbaa !8
  call void @libmetis__InitSeparator(ptr noundef %23, ptr noundef %24, i32 noundef %25)
  %26 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %28 = load ptr, ptr %cgraph, align 8, !tbaa !4
  call void @libmetis__Refine2WayNode(ptr noundef %26, ptr noundef %27, ptr noundef %28)
  call void @llvm.lifetime.end.p0(i64 8, ptr %cgraph) #5
  ret void
}

declare ptr @CoarsenGraphNlevels(ptr noundef, ptr noundef, i32 noundef) #2

declare void @libmetis__Refine2WayNode(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @libmetis__CoarsenGraph(ptr noundef, ptr noundef) #2

declare void @libmetis__InitSeparator(ptr noundef, ptr noundef, i32 noundef) #2

declare ptr @libmetis__SetupSplitGraph(ptr noundef, i32 noundef, i32 noundef) #2

declare ptr @libmetis__iset(i64 noundef, i32 noundef, ptr noundef) #2

declare void @libmetis__SetupGraph_tvwgt(ptr noundef) #2

declare ptr @gk_malloc(i64 noundef, ptr noundef) #2

declare void @libmetis__irandArrayPermute(i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @libmetis__genmmd(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nounwind returns_twice }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !9, i64 72}
!11 = !{!"ctrl_t", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !5, i64 80, !9, i64 88, !9, i64 92, !12, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !5, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !5, i64 312, !5, i64 320}
!12 = !{!"double", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!11, !6, i64 8}
!15 = !{!11, !12, i64 136}
!16 = !{!11, !12, i64 96}
!17 = !{!18, !9, i64 0}
!18 = !{!"graph_t", !9, i64 0, !9, i64 4, !9, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !5, i64 96, !5, i64 104, !9, i64 112, !9, i64 116, !5, i64 120, !5, i64 128, !9, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208}
!19 = !{!11, !9, i64 52}
!20 = !{!11, !12, i64 128}
!21 = !{!11, !9, i64 44}
!22 = !{!11, !9, i64 56}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !24}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !24}
!28 = distinct !{!28, !24}
!29 = distinct !{!29, !24}
!30 = !{!18, !5, i64 128}
!31 = !{!18, !9, i64 136}
!32 = !{!18, !5, i64 152}
!33 = !{!18, !5, i64 96}
!34 = distinct !{!34, !24}
!35 = !{!18, !9, i64 4}
!36 = distinct !{!36, !24}
!37 = distinct !{!37, !24}
!38 = !{!18, !5, i64 56}
!39 = !{!18, !9, i64 112}
!40 = !{!18, !5, i64 120}
!41 = distinct !{!41, !24}
!42 = !{!11, !12, i64 200}
!43 = !{!18, !5, i64 16}
!44 = !{!18, !5, i64 24}
!45 = !{!18, !5, i64 40}
!46 = !{!18, !5, i64 48}
!47 = !{!18, !5, i64 144}
!48 = distinct !{!48, !24}
!49 = distinct !{!49, !24}
!50 = distinct !{!50, !24}
!51 = distinct !{!51, !24}
!52 = distinct !{!52, !24}
!53 = distinct !{!53, !24}
!54 = distinct !{!54, !24}
!55 = distinct !{!55, !24}
!56 = distinct !{!56, !24}
!57 = distinct !{!57, !24}
!58 = distinct !{!58, !24}
!59 = distinct !{!59, !24}
!60 = distinct !{!60, !24}
!61 = distinct !{!61, !24}
!62 = distinct !{!62, !24}
!63 = distinct !{!63, !24}
!64 = distinct !{!64, !24}
!65 = distinct !{!65, !24}
!66 = distinct !{!66, !24}
!67 = distinct !{!67, !24}
!68 = distinct !{!68, !24}
!69 = !{!11, !9, i64 24}
!70 = distinct !{!70, !24}
