; ModuleID = 'samples/85.bc'
source_filename = "stan/lib/stan_math/lib/sundials_6.1.1/src/sundials/sundials_nvector_senswrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._generic_N_Vector = type { ptr, ptr, ptr }
%struct._generic_N_Vector_Ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._N_VectorContent_SensWrapper = type { ptr, i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local ptr @N_VNewEmpty_SensWrapper(i32 noundef %nvecs, ptr noundef %sunctx) #0 {
entry:
  %retval = alloca ptr, align 8
  %nvecs.addr = alloca i32, align 4
  %sunctx.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %v = alloca ptr, align 8
  %content = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %nvecs, ptr %nvecs.addr, align 4, !tbaa !5
  store ptr %sunctx, ptr %sunctx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %content) #5
  %0 = load i32, ptr %nvecs.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store ptr null, ptr %v, align 8, !tbaa !9
  %1 = load ptr, ptr %sunctx.addr, align 8, !tbaa !9
  %call = call ptr @N_VNewEmpty(ptr noundef %1)
  store ptr %call, ptr %v, align 8, !tbaa !9
  %2 = load ptr, ptr %v, align 8, !tbaa !9
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %v, align 8, !tbaa !9
  %ops = getelementptr inbounds %struct._generic_N_Vector, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %ops, align 8, !tbaa !11
  %nvclone = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %4, i32 0, i32 1
  store ptr @N_VClone_SensWrapper, ptr %nvclone, align 8, !tbaa !13
  %5 = load ptr, ptr %v, align 8, !tbaa !9
  %ops4 = getelementptr inbounds %struct._generic_N_Vector, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %ops4, align 8, !tbaa !11
  %nvcloneempty = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %6, i32 0, i32 2
  store ptr @N_VCloneEmpty_SensWrapper, ptr %nvcloneempty, align 8, !tbaa !15
  %7 = load ptr, ptr %v, align 8, !tbaa !9
  %ops5 = getelementptr inbounds %struct._generic_N_Vector, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %ops5, align 8, !tbaa !11
  %nvdestroy = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %8, i32 0, i32 3
  store ptr @N_VDestroy_SensWrapper, ptr %nvdestroy, align 8, !tbaa !16
  %9 = load ptr, ptr %v, align 8, !tbaa !9
  %ops6 = getelementptr inbounds %struct._generic_N_Vector, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %ops6, align 8, !tbaa !11
  %nvlinearsum = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %10, i32 0, i32 10
  store ptr @N_VLinearSum_SensWrapper, ptr %nvlinearsum, align 8, !tbaa !17
  %11 = load ptr, ptr %v, align 8, !tbaa !9
  %ops7 = getelementptr inbounds %struct._generic_N_Vector, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %ops7, align 8, !tbaa !11
  %nvconst = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %12, i32 0, i32 11
  store ptr @N_VConst_SensWrapper, ptr %nvconst, align 8, !tbaa !18
  %13 = load ptr, ptr %v, align 8, !tbaa !9
  %ops8 = getelementptr inbounds %struct._generic_N_Vector, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %ops8, align 8, !tbaa !11
  %nvprod = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %14, i32 0, i32 12
  store ptr @N_VProd_SensWrapper, ptr %nvprod, align 8, !tbaa !19
  %15 = load ptr, ptr %v, align 8, !tbaa !9
  %ops9 = getelementptr inbounds %struct._generic_N_Vector, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %ops9, align 8, !tbaa !11
  %nvdiv = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %16, i32 0, i32 13
  store ptr @N_VDiv_SensWrapper, ptr %nvdiv, align 8, !tbaa !20
  %17 = load ptr, ptr %v, align 8, !tbaa !9
  %ops10 = getelementptr inbounds %struct._generic_N_Vector, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %ops10, align 8, !tbaa !11
  %nvscale = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %18, i32 0, i32 14
  store ptr @N_VScale_SensWrapper, ptr %nvscale, align 8, !tbaa !21
  %19 = load ptr, ptr %v, align 8, !tbaa !9
  %ops11 = getelementptr inbounds %struct._generic_N_Vector, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %ops11, align 8, !tbaa !11
  %nvabs = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %20, i32 0, i32 15
  store ptr @N_VAbs_SensWrapper, ptr %nvabs, align 8, !tbaa !22
  %21 = load ptr, ptr %v, align 8, !tbaa !9
  %ops12 = getelementptr inbounds %struct._generic_N_Vector, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %ops12, align 8, !tbaa !11
  %nvinv = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %22, i32 0, i32 16
  store ptr @N_VInv_SensWrapper, ptr %nvinv, align 8, !tbaa !23
  %23 = load ptr, ptr %v, align 8, !tbaa !9
  %ops13 = getelementptr inbounds %struct._generic_N_Vector, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %ops13, align 8, !tbaa !11
  %nvaddconst = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %24, i32 0, i32 17
  store ptr @N_VAddConst_SensWrapper, ptr %nvaddconst, align 8, !tbaa !24
  %25 = load ptr, ptr %v, align 8, !tbaa !9
  %ops14 = getelementptr inbounds %struct._generic_N_Vector, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %ops14, align 8, !tbaa !11
  %nvdotprod = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %26, i32 0, i32 18
  store ptr @N_VDotProd_SensWrapper, ptr %nvdotprod, align 8, !tbaa !25
  %27 = load ptr, ptr %v, align 8, !tbaa !9
  %ops15 = getelementptr inbounds %struct._generic_N_Vector, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %ops15, align 8, !tbaa !11
  %nvmaxnorm = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %28, i32 0, i32 19
  store ptr @N_VMaxNorm_SensWrapper, ptr %nvmaxnorm, align 8, !tbaa !26
  %29 = load ptr, ptr %v, align 8, !tbaa !9
  %ops16 = getelementptr inbounds %struct._generic_N_Vector, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %ops16, align 8, !tbaa !11
  %nvwrmsnormmask = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %30, i32 0, i32 21
  store ptr @N_VWrmsNormMask_SensWrapper, ptr %nvwrmsnormmask, align 8, !tbaa !27
  %31 = load ptr, ptr %v, align 8, !tbaa !9
  %ops17 = getelementptr inbounds %struct._generic_N_Vector, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %ops17, align 8, !tbaa !11
  %nvwrmsnorm = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %32, i32 0, i32 20
  store ptr @N_VWrmsNorm_SensWrapper, ptr %nvwrmsnorm, align 8, !tbaa !28
  %33 = load ptr, ptr %v, align 8, !tbaa !9
  %ops18 = getelementptr inbounds %struct._generic_N_Vector, ptr %33, i32 0, i32 1
  %34 = load ptr, ptr %ops18, align 8, !tbaa !11
  %nvmin = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %34, i32 0, i32 22
  store ptr @N_VMin_SensWrapper, ptr %nvmin, align 8, !tbaa !29
  %35 = load ptr, ptr %v, align 8, !tbaa !9
  %ops19 = getelementptr inbounds %struct._generic_N_Vector, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %ops19, align 8, !tbaa !11
  %nvwl2norm = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %36, i32 0, i32 23
  store ptr @N_VWL2Norm_SensWrapper, ptr %nvwl2norm, align 8, !tbaa !30
  %37 = load ptr, ptr %v, align 8, !tbaa !9
  %ops20 = getelementptr inbounds %struct._generic_N_Vector, ptr %37, i32 0, i32 1
  %38 = load ptr, ptr %ops20, align 8, !tbaa !11
  %nvl1norm = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %38, i32 0, i32 24
  store ptr @N_VL1Norm_SensWrapper, ptr %nvl1norm, align 8, !tbaa !31
  %39 = load ptr, ptr %v, align 8, !tbaa !9
  %ops21 = getelementptr inbounds %struct._generic_N_Vector, ptr %39, i32 0, i32 1
  %40 = load ptr, ptr %ops21, align 8, !tbaa !11
  %nvcompare = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %40, i32 0, i32 25
  store ptr @N_VCompare_SensWrapper, ptr %nvcompare, align 8, !tbaa !32
  %41 = load ptr, ptr %v, align 8, !tbaa !9
  %ops22 = getelementptr inbounds %struct._generic_N_Vector, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %ops22, align 8, !tbaa !11
  %nvinvtest = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %42, i32 0, i32 26
  store ptr @N_VInvTest_SensWrapper, ptr %nvinvtest, align 8, !tbaa !33
  %43 = load ptr, ptr %v, align 8, !tbaa !9
  %ops23 = getelementptr inbounds %struct._generic_N_Vector, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %ops23, align 8, !tbaa !11
  %nvconstrmask = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %44, i32 0, i32 27
  store ptr @N_VConstrMask_SensWrapper, ptr %nvconstrmask, align 8, !tbaa !34
  %45 = load ptr, ptr %v, align 8, !tbaa !9
  %ops24 = getelementptr inbounds %struct._generic_N_Vector, ptr %45, i32 0, i32 1
  %46 = load ptr, ptr %ops24, align 8, !tbaa !11
  %nvminquotient = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %46, i32 0, i32 28
  store ptr @N_VMinQuotient_SensWrapper, ptr %nvminquotient, align 8, !tbaa !35
  store ptr null, ptr %content, align 8, !tbaa !9
  %call25 = call noalias ptr @malloc(i64 noundef 16) #6
  store ptr %call25, ptr %content, align 8, !tbaa !9
  %47 = load ptr, ptr %content, align 8, !tbaa !9
  %cmp26 = icmp eq ptr %47, null
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end3
  %48 = load ptr, ptr %v, align 8, !tbaa !9
  call void @N_VFreeEmpty(ptr noundef %48)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end28:                                         ; preds = %if.end3
  %49 = load i32, ptr %nvecs.addr, align 4, !tbaa !5
  %50 = load ptr, ptr %content, align 8, !tbaa !9
  %nvecs29 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %50, i32 0, i32 1
  store i32 %49, ptr %nvecs29, align 8, !tbaa !36
  %51 = load ptr, ptr %content, align 8, !tbaa !9
  %own_vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %51, i32 0, i32 2
  store i32 0, ptr %own_vecs, align 4, !tbaa !38
  %52 = load ptr, ptr %content, align 8, !tbaa !9
  %vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %52, i32 0, i32 0
  store ptr null, ptr %vecs, align 8, !tbaa !39
  %53 = load i32, ptr %nvecs.addr, align 4, !tbaa !5
  %conv = sext i32 %53 to i64
  %mul = mul i64 %conv, 8
  %call30 = call noalias ptr @malloc(i64 noundef %mul) #6
  %54 = load ptr, ptr %content, align 8, !tbaa !9
  %vecs31 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %54, i32 0, i32 0
  store ptr %call30, ptr %vecs31, align 8, !tbaa !39
  %55 = load ptr, ptr %content, align 8, !tbaa !9
  %vecs32 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %vecs32, align 8, !tbaa !39
  %cmp33 = icmp eq ptr %56, null
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end28
  %57 = load ptr, ptr %content, align 8, !tbaa !9
  call void @free(ptr noundef %57) #5
  %58 = load ptr, ptr %v, align 8, !tbaa !9
  call void @N_VFreeEmpty(ptr noundef %58)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end36
  %59 = load i32, ptr %i, align 4, !tbaa !5
  %60 = load i32, ptr %nvecs.addr, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %59, %60
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %61 = load ptr, ptr %content, align 8, !tbaa !9
  %vecs39 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %vecs39, align 8, !tbaa !39
  %63 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %63 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %62, i64 %idxprom
  store ptr null, ptr %arrayidx, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %64, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !40

for.end:                                          ; preds = %for.cond
  %65 = load ptr, ptr %content, align 8, !tbaa !9
  %66 = load ptr, ptr %v, align 8, !tbaa !9
  %content40 = getelementptr inbounds %struct._generic_N_Vector, ptr %66, i32 0, i32 0
  store ptr %65, ptr %content40, align 8, !tbaa !42
  %67 = load ptr, ptr %v, align 8, !tbaa !9
  store ptr %67, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then35, %if.then27, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %content) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  %68 = load ptr, ptr %retval, align 8
  ret ptr %68
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @N_VNewEmpty(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @N_VClone_SensWrapper(ptr noundef %w) #0 {
entry:
  %retval = alloca ptr, align 8
  %w.addr = alloca ptr, align 8
  %v = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store ptr null, ptr %v, align 8, !tbaa !9
  %0 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call = call ptr @N_VCloneEmpty_SensWrapper(ptr noundef %0)
  store ptr %call, ptr %v, align 8, !tbaa !9
  %1 = load ptr, ptr %v, align 8, !tbaa !9
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %v, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %content, align 8, !tbaa !42
  %own_vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %3, i32 0, i32 2
  store i32 1, ptr %own_vecs, align 4, !tbaa !38
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load ptr, ptr %v, align 8, !tbaa !9
  %content1 = getelementptr inbounds %struct._generic_N_Vector, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %content1, align 8, !tbaa !42
  %nvecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %nvecs, align 8, !tbaa !36
  %cmp2 = icmp slt i32 %4, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %content3 = getelementptr inbounds %struct._generic_N_Vector, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %content3, align 8, !tbaa !42
  %vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %vecs, align 8, !tbaa !39
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 %idxprom
  %12 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %call4 = call ptr @N_VClone(ptr noundef %12)
  %13 = load ptr, ptr %v, align 8, !tbaa !9
  %content5 = getelementptr inbounds %struct._generic_N_Vector, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %content5, align 8, !tbaa !42
  %vecs6 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %vecs6, align 8, !tbaa !39
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %16 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %15, i64 %idxprom7
  store ptr %call4, ptr %arrayidx8, align 8, !tbaa !9
  %17 = load ptr, ptr %v, align 8, !tbaa !9
  %content9 = getelementptr inbounds %struct._generic_N_Vector, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %content9, align 8, !tbaa !42
  %vecs10 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %vecs10, align 8, !tbaa !39
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %20 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %19, i64 %idxprom11
  %21 = load ptr, ptr %arrayidx12, align 8, !tbaa !9
  %cmp13 = icmp eq ptr %21, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %for.body
  %22 = load ptr, ptr %v, align 8, !tbaa !9
  call void @N_VDestroy(ptr noundef %22)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  %24 = load ptr, ptr %v, align 8, !tbaa !9
  store ptr %24, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #5
  %25 = load ptr, ptr %retval, align 8
  ret ptr %25
}

; Function Attrs: nounwind uwtable
define dso_local ptr @N_VCloneEmpty_SensWrapper(ptr noundef %w) #0 {
entry:
  %retval = alloca ptr, align 8
  %w.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %v = alloca ptr, align 8
  %ops = alloca ptr, align 8
  %content = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %content) #5
  %0 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %content1 = getelementptr inbounds %struct._generic_N_Vector, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %content1, align 8, !tbaa !42
  %nvecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nvecs, align 8, !tbaa !36
  %cmp2 = icmp slt i32 %3, 1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  store ptr null, ptr %v, align 8, !tbaa !9
  %call = call noalias ptr @malloc(i64 noundef 24) #6
  store ptr %call, ptr %v, align 8, !tbaa !9
  %4 = load ptr, ptr %v, align 8, !tbaa !9
  %cmp5 = icmp eq ptr %4, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  store ptr null, ptr %ops, align 8, !tbaa !9
  %call8 = call noalias ptr @malloc(i64 noundef 440) #6
  store ptr %call8, ptr %ops, align 8, !tbaa !9
  %5 = load ptr, ptr %ops, align 8, !tbaa !9
  %cmp9 = icmp eq ptr %5, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  %6 = load ptr, ptr %v, align 8, !tbaa !9
  call void @free(ptr noundef %6) #5
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %7 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops12 = getelementptr inbounds %struct._generic_N_Vector, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %ops12, align 8, !tbaa !11
  %nvgetvectorid = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %nvgetvectorid, align 8, !tbaa !44
  %10 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvgetvectorid13 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %10, i32 0, i32 0
  store ptr %9, ptr %nvgetvectorid13, align 8, !tbaa !44
  %11 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops14 = getelementptr inbounds %struct._generic_N_Vector, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %ops14, align 8, !tbaa !11
  %nvclone = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %nvclone, align 8, !tbaa !13
  %14 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvclone15 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %14, i32 0, i32 1
  store ptr %13, ptr %nvclone15, align 8, !tbaa !13
  %15 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops16 = getelementptr inbounds %struct._generic_N_Vector, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %ops16, align 8, !tbaa !11
  %nvcloneempty = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %nvcloneempty, align 8, !tbaa !15
  %18 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvcloneempty17 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %18, i32 0, i32 2
  store ptr %17, ptr %nvcloneempty17, align 8, !tbaa !15
  %19 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops18 = getelementptr inbounds %struct._generic_N_Vector, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %ops18, align 8, !tbaa !11
  %nvdestroy = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %20, i32 0, i32 3
  %21 = load ptr, ptr %nvdestroy, align 8, !tbaa !16
  %22 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvdestroy19 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %22, i32 0, i32 3
  store ptr %21, ptr %nvdestroy19, align 8, !tbaa !16
  %23 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops20 = getelementptr inbounds %struct._generic_N_Vector, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %ops20, align 8, !tbaa !11
  %nvspace = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %24, i32 0, i32 4
  %25 = load ptr, ptr %nvspace, align 8, !tbaa !45
  %26 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvspace21 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %26, i32 0, i32 4
  store ptr %25, ptr %nvspace21, align 8, !tbaa !45
  %27 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops22 = getelementptr inbounds %struct._generic_N_Vector, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %ops22, align 8, !tbaa !11
  %nvgetarraypointer = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %28, i32 0, i32 5
  %29 = load ptr, ptr %nvgetarraypointer, align 8, !tbaa !46
  %30 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvgetarraypointer23 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %30, i32 0, i32 5
  store ptr %29, ptr %nvgetarraypointer23, align 8, !tbaa !46
  %31 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops24 = getelementptr inbounds %struct._generic_N_Vector, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %ops24, align 8, !tbaa !11
  %nvsetarraypointer = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %32, i32 0, i32 7
  %33 = load ptr, ptr %nvsetarraypointer, align 8, !tbaa !47
  %34 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvsetarraypointer25 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %34, i32 0, i32 7
  store ptr %33, ptr %nvsetarraypointer25, align 8, !tbaa !47
  %35 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops26 = getelementptr inbounds %struct._generic_N_Vector, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %ops26, align 8, !tbaa !11
  %nvlinearsum = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %36, i32 0, i32 10
  %37 = load ptr, ptr %nvlinearsum, align 8, !tbaa !17
  %38 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvlinearsum27 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %38, i32 0, i32 10
  store ptr %37, ptr %nvlinearsum27, align 8, !tbaa !17
  %39 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops28 = getelementptr inbounds %struct._generic_N_Vector, ptr %39, i32 0, i32 1
  %40 = load ptr, ptr %ops28, align 8, !tbaa !11
  %nvconst = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %40, i32 0, i32 11
  %41 = load ptr, ptr %nvconst, align 8, !tbaa !18
  %42 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvconst29 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %42, i32 0, i32 11
  store ptr %41, ptr %nvconst29, align 8, !tbaa !18
  %43 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops30 = getelementptr inbounds %struct._generic_N_Vector, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %ops30, align 8, !tbaa !11
  %nvprod = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %44, i32 0, i32 12
  %45 = load ptr, ptr %nvprod, align 8, !tbaa !19
  %46 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvprod31 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %46, i32 0, i32 12
  store ptr %45, ptr %nvprod31, align 8, !tbaa !19
  %47 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops32 = getelementptr inbounds %struct._generic_N_Vector, ptr %47, i32 0, i32 1
  %48 = load ptr, ptr %ops32, align 8, !tbaa !11
  %nvdiv = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %48, i32 0, i32 13
  %49 = load ptr, ptr %nvdiv, align 8, !tbaa !20
  %50 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvdiv33 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %50, i32 0, i32 13
  store ptr %49, ptr %nvdiv33, align 8, !tbaa !20
  %51 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops34 = getelementptr inbounds %struct._generic_N_Vector, ptr %51, i32 0, i32 1
  %52 = load ptr, ptr %ops34, align 8, !tbaa !11
  %nvscale = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %52, i32 0, i32 14
  %53 = load ptr, ptr %nvscale, align 8, !tbaa !21
  %54 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvscale35 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %54, i32 0, i32 14
  store ptr %53, ptr %nvscale35, align 8, !tbaa !21
  %55 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops36 = getelementptr inbounds %struct._generic_N_Vector, ptr %55, i32 0, i32 1
  %56 = load ptr, ptr %ops36, align 8, !tbaa !11
  %nvabs = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %56, i32 0, i32 15
  %57 = load ptr, ptr %nvabs, align 8, !tbaa !22
  %58 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvabs37 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %58, i32 0, i32 15
  store ptr %57, ptr %nvabs37, align 8, !tbaa !22
  %59 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops38 = getelementptr inbounds %struct._generic_N_Vector, ptr %59, i32 0, i32 1
  %60 = load ptr, ptr %ops38, align 8, !tbaa !11
  %nvinv = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %60, i32 0, i32 16
  %61 = load ptr, ptr %nvinv, align 8, !tbaa !23
  %62 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvinv39 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %62, i32 0, i32 16
  store ptr %61, ptr %nvinv39, align 8, !tbaa !23
  %63 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops40 = getelementptr inbounds %struct._generic_N_Vector, ptr %63, i32 0, i32 1
  %64 = load ptr, ptr %ops40, align 8, !tbaa !11
  %nvaddconst = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %64, i32 0, i32 17
  %65 = load ptr, ptr %nvaddconst, align 8, !tbaa !24
  %66 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvaddconst41 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %66, i32 0, i32 17
  store ptr %65, ptr %nvaddconst41, align 8, !tbaa !24
  %67 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops42 = getelementptr inbounds %struct._generic_N_Vector, ptr %67, i32 0, i32 1
  %68 = load ptr, ptr %ops42, align 8, !tbaa !11
  %nvdotprod = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %68, i32 0, i32 18
  %69 = load ptr, ptr %nvdotprod, align 8, !tbaa !25
  %70 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvdotprod43 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %70, i32 0, i32 18
  store ptr %69, ptr %nvdotprod43, align 8, !tbaa !25
  %71 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops44 = getelementptr inbounds %struct._generic_N_Vector, ptr %71, i32 0, i32 1
  %72 = load ptr, ptr %ops44, align 8, !tbaa !11
  %nvmaxnorm = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %72, i32 0, i32 19
  %73 = load ptr, ptr %nvmaxnorm, align 8, !tbaa !26
  %74 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvmaxnorm45 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %74, i32 0, i32 19
  store ptr %73, ptr %nvmaxnorm45, align 8, !tbaa !26
  %75 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops46 = getelementptr inbounds %struct._generic_N_Vector, ptr %75, i32 0, i32 1
  %76 = load ptr, ptr %ops46, align 8, !tbaa !11
  %nvwrmsnormmask = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %76, i32 0, i32 21
  %77 = load ptr, ptr %nvwrmsnormmask, align 8, !tbaa !27
  %78 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvwrmsnormmask47 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %78, i32 0, i32 21
  store ptr %77, ptr %nvwrmsnormmask47, align 8, !tbaa !27
  %79 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops48 = getelementptr inbounds %struct._generic_N_Vector, ptr %79, i32 0, i32 1
  %80 = load ptr, ptr %ops48, align 8, !tbaa !11
  %nvwrmsnorm = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %80, i32 0, i32 20
  %81 = load ptr, ptr %nvwrmsnorm, align 8, !tbaa !28
  %82 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvwrmsnorm49 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %82, i32 0, i32 20
  store ptr %81, ptr %nvwrmsnorm49, align 8, !tbaa !28
  %83 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops50 = getelementptr inbounds %struct._generic_N_Vector, ptr %83, i32 0, i32 1
  %84 = load ptr, ptr %ops50, align 8, !tbaa !11
  %nvmin = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %84, i32 0, i32 22
  %85 = load ptr, ptr %nvmin, align 8, !tbaa !29
  %86 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvmin51 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %86, i32 0, i32 22
  store ptr %85, ptr %nvmin51, align 8, !tbaa !29
  %87 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops52 = getelementptr inbounds %struct._generic_N_Vector, ptr %87, i32 0, i32 1
  %88 = load ptr, ptr %ops52, align 8, !tbaa !11
  %nvwl2norm = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %88, i32 0, i32 23
  %89 = load ptr, ptr %nvwl2norm, align 8, !tbaa !30
  %90 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvwl2norm53 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %90, i32 0, i32 23
  store ptr %89, ptr %nvwl2norm53, align 8, !tbaa !30
  %91 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops54 = getelementptr inbounds %struct._generic_N_Vector, ptr %91, i32 0, i32 1
  %92 = load ptr, ptr %ops54, align 8, !tbaa !11
  %nvl1norm = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %92, i32 0, i32 24
  %93 = load ptr, ptr %nvl1norm, align 8, !tbaa !31
  %94 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvl1norm55 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %94, i32 0, i32 24
  store ptr %93, ptr %nvl1norm55, align 8, !tbaa !31
  %95 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops56 = getelementptr inbounds %struct._generic_N_Vector, ptr %95, i32 0, i32 1
  %96 = load ptr, ptr %ops56, align 8, !tbaa !11
  %nvcompare = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %96, i32 0, i32 25
  %97 = load ptr, ptr %nvcompare, align 8, !tbaa !32
  %98 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvcompare57 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %98, i32 0, i32 25
  store ptr %97, ptr %nvcompare57, align 8, !tbaa !32
  %99 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops58 = getelementptr inbounds %struct._generic_N_Vector, ptr %99, i32 0, i32 1
  %100 = load ptr, ptr %ops58, align 8, !tbaa !11
  %nvinvtest = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %100, i32 0, i32 26
  %101 = load ptr, ptr %nvinvtest, align 8, !tbaa !33
  %102 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvinvtest59 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %102, i32 0, i32 26
  store ptr %101, ptr %nvinvtest59, align 8, !tbaa !33
  %103 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops60 = getelementptr inbounds %struct._generic_N_Vector, ptr %103, i32 0, i32 1
  %104 = load ptr, ptr %ops60, align 8, !tbaa !11
  %nvconstrmask = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %104, i32 0, i32 27
  %105 = load ptr, ptr %nvconstrmask, align 8, !tbaa !34
  %106 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvconstrmask61 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %106, i32 0, i32 27
  store ptr %105, ptr %nvconstrmask61, align 8, !tbaa !34
  %107 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops62 = getelementptr inbounds %struct._generic_N_Vector, ptr %107, i32 0, i32 1
  %108 = load ptr, ptr %ops62, align 8, !tbaa !11
  %nvminquotient = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %108, i32 0, i32 28
  %109 = load ptr, ptr %nvminquotient, align 8, !tbaa !35
  %110 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvminquotient63 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %110, i32 0, i32 28
  store ptr %109, ptr %nvminquotient63, align 8, !tbaa !35
  %111 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops64 = getelementptr inbounds %struct._generic_N_Vector, ptr %111, i32 0, i32 1
  %112 = load ptr, ptr %ops64, align 8, !tbaa !11
  %nvlinearcombination = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %112, i32 0, i32 29
  %113 = load ptr, ptr %nvlinearcombination, align 8, !tbaa !48
  %114 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvlinearcombination65 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %114, i32 0, i32 29
  store ptr %113, ptr %nvlinearcombination65, align 8, !tbaa !48
  %115 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops66 = getelementptr inbounds %struct._generic_N_Vector, ptr %115, i32 0, i32 1
  %116 = load ptr, ptr %ops66, align 8, !tbaa !11
  %nvscaleaddmulti = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %116, i32 0, i32 30
  %117 = load ptr, ptr %nvscaleaddmulti, align 8, !tbaa !49
  %118 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvscaleaddmulti67 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %118, i32 0, i32 30
  store ptr %117, ptr %nvscaleaddmulti67, align 8, !tbaa !49
  %119 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops68 = getelementptr inbounds %struct._generic_N_Vector, ptr %119, i32 0, i32 1
  %120 = load ptr, ptr %ops68, align 8, !tbaa !11
  %nvdotprodmulti = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %120, i32 0, i32 31
  %121 = load ptr, ptr %nvdotprodmulti, align 8, !tbaa !50
  %122 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvdotprodmulti69 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %122, i32 0, i32 31
  store ptr %121, ptr %nvdotprodmulti69, align 8, !tbaa !50
  %123 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops70 = getelementptr inbounds %struct._generic_N_Vector, ptr %123, i32 0, i32 1
  %124 = load ptr, ptr %ops70, align 8, !tbaa !11
  %nvlinearsumvectorarray = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %124, i32 0, i32 32
  %125 = load ptr, ptr %nvlinearsumvectorarray, align 8, !tbaa !51
  %126 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvlinearsumvectorarray71 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %126, i32 0, i32 32
  store ptr %125, ptr %nvlinearsumvectorarray71, align 8, !tbaa !51
  %127 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops72 = getelementptr inbounds %struct._generic_N_Vector, ptr %127, i32 0, i32 1
  %128 = load ptr, ptr %ops72, align 8, !tbaa !11
  %nvscalevectorarray = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %128, i32 0, i32 33
  %129 = load ptr, ptr %nvscalevectorarray, align 8, !tbaa !52
  %130 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvscalevectorarray73 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %130, i32 0, i32 33
  store ptr %129, ptr %nvscalevectorarray73, align 8, !tbaa !52
  %131 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops74 = getelementptr inbounds %struct._generic_N_Vector, ptr %131, i32 0, i32 1
  %132 = load ptr, ptr %ops74, align 8, !tbaa !11
  %nvconstvectorarray = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %132, i32 0, i32 34
  %133 = load ptr, ptr %nvconstvectorarray, align 8, !tbaa !53
  %134 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvconstvectorarray75 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %134, i32 0, i32 34
  store ptr %133, ptr %nvconstvectorarray75, align 8, !tbaa !53
  %135 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops76 = getelementptr inbounds %struct._generic_N_Vector, ptr %135, i32 0, i32 1
  %136 = load ptr, ptr %ops76, align 8, !tbaa !11
  %nvwrmsnormvectorarray = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %136, i32 0, i32 35
  %137 = load ptr, ptr %nvwrmsnormvectorarray, align 8, !tbaa !54
  %138 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvwrmsnormvectorarray77 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %138, i32 0, i32 35
  store ptr %137, ptr %nvwrmsnormvectorarray77, align 8, !tbaa !54
  %139 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops78 = getelementptr inbounds %struct._generic_N_Vector, ptr %139, i32 0, i32 1
  %140 = load ptr, ptr %ops78, align 8, !tbaa !11
  %nvwrmsnormmaskvectorarray = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %140, i32 0, i32 36
  %141 = load ptr, ptr %nvwrmsnormmaskvectorarray, align 8, !tbaa !55
  %142 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvwrmsnormmaskvectorarray79 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %142, i32 0, i32 36
  store ptr %141, ptr %nvwrmsnormmaskvectorarray79, align 8, !tbaa !55
  %143 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops80 = getelementptr inbounds %struct._generic_N_Vector, ptr %143, i32 0, i32 1
  %144 = load ptr, ptr %ops80, align 8, !tbaa !11
  %nvscaleaddmultivectorarray = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %144, i32 0, i32 37
  %145 = load ptr, ptr %nvscaleaddmultivectorarray, align 8, !tbaa !56
  %146 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvscaleaddmultivectorarray81 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %146, i32 0, i32 37
  store ptr %145, ptr %nvscaleaddmultivectorarray81, align 8, !tbaa !56
  %147 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %ops82 = getelementptr inbounds %struct._generic_N_Vector, ptr %147, i32 0, i32 1
  %148 = load ptr, ptr %ops82, align 8, !tbaa !11
  %nvlinearcombinationvectorarray = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %148, i32 0, i32 38
  %149 = load ptr, ptr %nvlinearcombinationvectorarray, align 8, !tbaa !57
  %150 = load ptr, ptr %ops, align 8, !tbaa !9
  %nvlinearcombinationvectorarray83 = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %150, i32 0, i32 38
  store ptr %149, ptr %nvlinearcombinationvectorarray83, align 8, !tbaa !57
  store ptr null, ptr %content, align 8, !tbaa !9
  %call84 = call noalias ptr @malloc(i64 noundef 16) #6
  store ptr %call84, ptr %content, align 8, !tbaa !9
  %151 = load ptr, ptr %content, align 8, !tbaa !9
  %cmp85 = icmp eq ptr %151, null
  br i1 %cmp85, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end11
  %152 = load ptr, ptr %ops, align 8, !tbaa !9
  call void @free(ptr noundef %152) #5
  %153 = load ptr, ptr %v, align 8, !tbaa !9
  call void @free(ptr noundef %153) #5
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end87:                                         ; preds = %if.end11
  %154 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %content88 = getelementptr inbounds %struct._generic_N_Vector, ptr %154, i32 0, i32 0
  %155 = load ptr, ptr %content88, align 8, !tbaa !42
  %nvecs89 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %155, i32 0, i32 1
  %156 = load i32, ptr %nvecs89, align 8, !tbaa !36
  %157 = load ptr, ptr %content, align 8, !tbaa !9
  %nvecs90 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %157, i32 0, i32 1
  store i32 %156, ptr %nvecs90, align 8, !tbaa !36
  %158 = load ptr, ptr %content, align 8, !tbaa !9
  %own_vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %158, i32 0, i32 2
  store i32 0, ptr %own_vecs, align 4, !tbaa !38
  %159 = load ptr, ptr %content, align 8, !tbaa !9
  %vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %159, i32 0, i32 0
  store ptr null, ptr %vecs, align 8, !tbaa !39
  %160 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %content91 = getelementptr inbounds %struct._generic_N_Vector, ptr %160, i32 0, i32 0
  %161 = load ptr, ptr %content91, align 8, !tbaa !42
  %nvecs92 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %161, i32 0, i32 1
  %162 = load i32, ptr %nvecs92, align 8, !tbaa !36
  %conv = sext i32 %162 to i64
  %mul = mul i64 %conv, 8
  %call93 = call noalias ptr @malloc(i64 noundef %mul) #6
  %163 = load ptr, ptr %content, align 8, !tbaa !9
  %vecs94 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %163, i32 0, i32 0
  store ptr %call93, ptr %vecs94, align 8, !tbaa !39
  %164 = load ptr, ptr %content, align 8, !tbaa !9
  %vecs95 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %164, i32 0, i32 0
  %165 = load ptr, ptr %vecs95, align 8, !tbaa !39
  %cmp96 = icmp eq ptr %165, null
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.end87
  %166 = load ptr, ptr %ops, align 8, !tbaa !9
  call void @free(ptr noundef %166) #5
  %167 = load ptr, ptr %v, align 8, !tbaa !9
  call void @free(ptr noundef %167) #5
  %168 = load ptr, ptr %content, align 8, !tbaa !9
  call void @free(ptr noundef %168) #5
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end99:                                         ; preds = %if.end87
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end99
  %169 = load i32, ptr %i, align 4, !tbaa !5
  %170 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %content100 = getelementptr inbounds %struct._generic_N_Vector, ptr %170, i32 0, i32 0
  %171 = load ptr, ptr %content100, align 8, !tbaa !42
  %nvecs101 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %171, i32 0, i32 1
  %172 = load i32, ptr %nvecs101, align 8, !tbaa !36
  %cmp102 = icmp slt i32 %169, %172
  br i1 %cmp102, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %173 = load ptr, ptr %content, align 8, !tbaa !9
  %vecs104 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %173, i32 0, i32 0
  %174 = load ptr, ptr %vecs104, align 8, !tbaa !39
  %175 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %175 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %174, i64 %idxprom
  store ptr null, ptr %arrayidx, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %176 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %176, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !58

for.end:                                          ; preds = %for.cond
  %177 = load ptr, ptr %content, align 8, !tbaa !9
  %178 = load ptr, ptr %v, align 8, !tbaa !9
  %content105 = getelementptr inbounds %struct._generic_N_Vector, ptr %178, i32 0, i32 0
  store ptr %177, ptr %content105, align 8, !tbaa !42
  %179 = load ptr, ptr %ops, align 8, !tbaa !9
  %180 = load ptr, ptr %v, align 8, !tbaa !9
  %ops106 = getelementptr inbounds %struct._generic_N_Vector, ptr %180, i32 0, i32 1
  store ptr %179, ptr %ops106, align 8, !tbaa !11
  %181 = load ptr, ptr %v, align 8, !tbaa !9
  store ptr %181, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then98, %if.then86, %if.then10, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %content) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  %182 = load ptr, ptr %retval, align 8
  ret ptr %182
}

; Function Attrs: nounwind uwtable
define dso_local void @N_VDestroy_SensWrapper(ptr noundef %v) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  %0 = load ptr, ptr %v.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %content, align 8, !tbaa !42
  %own_vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %own_vecs, align 4, !tbaa !38
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %4 = load ptr, ptr %v.addr, align 8, !tbaa !9
  %content1 = getelementptr inbounds %struct._generic_N_Vector, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %content1, align 8, !tbaa !42
  %nvecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %nvecs, align 8, !tbaa !36
  %cmp2 = icmp slt i32 %3, %6
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %v.addr, align 8, !tbaa !9
  %content3 = getelementptr inbounds %struct._generic_N_Vector, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %content3, align 8, !tbaa !42
  %vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vecs, align 8, !tbaa !39
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 %idxprom
  %11 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %tobool = icmp ne ptr %11, null
  br i1 %tobool, label %if.then4, label %if.end

if.then4:                                         ; preds = %for.body
  %12 = load ptr, ptr %v.addr, align 8, !tbaa !9
  %content5 = getelementptr inbounds %struct._generic_N_Vector, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %content5, align 8, !tbaa !42
  %vecs6 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %vecs6, align 8, !tbaa !39
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %14, i64 %idxprom7
  %16 = load ptr, ptr %arrayidx8, align 8, !tbaa !9
  call void @N_VDestroy(ptr noundef %16)
  br label %if.end

if.end:                                           ; preds = %if.then4, %for.body
  %17 = load ptr, ptr %v.addr, align 8, !tbaa !9
  %content9 = getelementptr inbounds %struct._generic_N_Vector, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %content9, align 8, !tbaa !42
  %vecs10 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %vecs10, align 8, !tbaa !39
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %20 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %19, i64 %idxprom11
  store ptr null, ptr %arrayidx12, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !59

for.end:                                          ; preds = %for.cond
  br label %if.end13

if.end13:                                         ; preds = %for.end, %entry
  %22 = load ptr, ptr %v.addr, align 8, !tbaa !9
  %content14 = getelementptr inbounds %struct._generic_N_Vector, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %content14, align 8, !tbaa !42
  %vecs15 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %vecs15, align 8, !tbaa !39
  call void @free(ptr noundef %24) #5
  %25 = load ptr, ptr %v.addr, align 8, !tbaa !9
  %content16 = getelementptr inbounds %struct._generic_N_Vector, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %content16, align 8, !tbaa !42
  %vecs17 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %26, i32 0, i32 0
  store ptr null, ptr %vecs17, align 8, !tbaa !39
  %27 = load ptr, ptr %v.addr, align 8, !tbaa !9
  %content18 = getelementptr inbounds %struct._generic_N_Vector, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %content18, align 8, !tbaa !42
  call void @free(ptr noundef %28) #5
  %29 = load ptr, ptr %v.addr, align 8, !tbaa !9
  %content19 = getelementptr inbounds %struct._generic_N_Vector, ptr %29, i32 0, i32 0
  store ptr null, ptr %content19, align 8, !tbaa !42
  %30 = load ptr, ptr %v.addr, align 8, !tbaa !9
  %ops = getelementptr inbounds %struct._generic_N_Vector, ptr %30, i32 0, i32 1
  %31 = load ptr, ptr %ops, align 8, !tbaa !11
  call void @free(ptr noundef %31) #5
  %32 = load ptr, ptr %v.addr, align 8, !tbaa !9
  %ops20 = getelementptr inbounds %struct._generic_N_Vector, ptr %32, i32 0, i32 1
  store ptr null, ptr %ops20, align 8, !tbaa !11
  %33 = load ptr, ptr %v.addr, align 8, !tbaa !9
  call void @free(ptr noundef %33) #5
  store ptr null, ptr %v.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @N_VLinearSum_SensWrapper(double noundef %a, ptr noundef %x, double noundef %b, ptr noundef %y, ptr noundef %z) #0 {
entry:
  %a.addr = alloca double, align 8
  %x.addr = alloca ptr, align 8
  %b.addr = alloca double, align 8
  %y.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store double %a, ptr %a.addr, align 8, !tbaa !60
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store double %b, ptr %b.addr, align 8, !tbaa !60
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store ptr %z, ptr %z.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %content, align 8, !tbaa !42
  %nvecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nvecs, align 8, !tbaa !36
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load double, ptr %a.addr, align 8, !tbaa !60
  %5 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content1 = getelementptr inbounds %struct._generic_N_Vector, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %content1, align 8, !tbaa !42
  %vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %vecs, align 8, !tbaa !39
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %10 = load double, ptr %b.addr, align 8, !tbaa !60
  %11 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %content2 = getelementptr inbounds %struct._generic_N_Vector, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %content2, align 8, !tbaa !42
  %vecs3 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %vecs3, align 8, !tbaa !39
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %14 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %13, i64 %idxprom4
  %15 = load ptr, ptr %arrayidx5, align 8, !tbaa !9
  %16 = load ptr, ptr %z.addr, align 8, !tbaa !9
  %content6 = getelementptr inbounds %struct._generic_N_Vector, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %content6, align 8, !tbaa !42
  %vecs7 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %vecs7, align 8, !tbaa !39
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %19 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %18, i64 %idxprom8
  %20 = load ptr, ptr %arrayidx9, align 8, !tbaa !9
  call void @N_VLinearSum(double noundef %4, ptr noundef %9, double noundef %10, ptr noundef %15, ptr noundef %20)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !62

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @N_VConst_SensWrapper(double noundef %c, ptr noundef %z) #0 {
entry:
  %c.addr = alloca double, align 8
  %z.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store double %c, ptr %c.addr, align 8, !tbaa !60
  store ptr %z, ptr %z.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load ptr, ptr %z.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %content, align 8, !tbaa !42
  %nvecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nvecs, align 8, !tbaa !36
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load double, ptr %c.addr, align 8, !tbaa !60
  %5 = load ptr, ptr %z.addr, align 8, !tbaa !9
  %content1 = getelementptr inbounds %struct._generic_N_Vector, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %content1, align 8, !tbaa !42
  %vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %vecs, align 8, !tbaa !39
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  call void @N_VConst(double noundef %4, ptr noundef %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !63

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @N_VProd_SensWrapper(ptr noundef %x, ptr noundef %y, ptr noundef %z) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store ptr %z, ptr %z.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %content, align 8, !tbaa !42
  %nvecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nvecs, align 8, !tbaa !36
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content1 = getelementptr inbounds %struct._generic_N_Vector, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %content1, align 8, !tbaa !42
  %vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vecs, align 8, !tbaa !39
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %9 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %content2 = getelementptr inbounds %struct._generic_N_Vector, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %content2, align 8, !tbaa !42
  %vecs3 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %vecs3, align 8, !tbaa !39
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %11, i64 %idxprom4
  %13 = load ptr, ptr %arrayidx5, align 8, !tbaa !9
  %14 = load ptr, ptr %z.addr, align 8, !tbaa !9
  %content6 = getelementptr inbounds %struct._generic_N_Vector, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %content6, align 8, !tbaa !42
  %vecs7 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %vecs7, align 8, !tbaa !39
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %16, i64 %idxprom8
  %18 = load ptr, ptr %arrayidx9, align 8, !tbaa !9
  call void @N_VProd(ptr noundef %8, ptr noundef %13, ptr noundef %18)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !64

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @N_VDiv_SensWrapper(ptr noundef %x, ptr noundef %y, ptr noundef %z) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store ptr %z, ptr %z.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %content, align 8, !tbaa !42
  %nvecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nvecs, align 8, !tbaa !36
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content1 = getelementptr inbounds %struct._generic_N_Vector, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %content1, align 8, !tbaa !42
  %vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vecs, align 8, !tbaa !39
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %9 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %content2 = getelementptr inbounds %struct._generic_N_Vector, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %content2, align 8, !tbaa !42
  %vecs3 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %vecs3, align 8, !tbaa !39
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %11, i64 %idxprom4
  %13 = load ptr, ptr %arrayidx5, align 8, !tbaa !9
  %14 = load ptr, ptr %z.addr, align 8, !tbaa !9
  %content6 = getelementptr inbounds %struct._generic_N_Vector, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %content6, align 8, !tbaa !42
  %vecs7 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %vecs7, align 8, !tbaa !39
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %16, i64 %idxprom8
  %18 = load ptr, ptr %arrayidx9, align 8, !tbaa !9
  call void @N_VDiv(ptr noundef %8, ptr noundef %13, ptr noundef %18)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !65

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @N_VScale_SensWrapper(double noundef %c, ptr noundef %x, ptr noundef %z) #0 {
entry:
  %c.addr = alloca double, align 8
  %x.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store double %c, ptr %c.addr, align 8, !tbaa !60
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store ptr %z, ptr %z.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %content, align 8, !tbaa !42
  %nvecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nvecs, align 8, !tbaa !36
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load double, ptr %c.addr, align 8, !tbaa !60
  %5 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content1 = getelementptr inbounds %struct._generic_N_Vector, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %content1, align 8, !tbaa !42
  %vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %vecs, align 8, !tbaa !39
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %10 = load ptr, ptr %z.addr, align 8, !tbaa !9
  %content2 = getelementptr inbounds %struct._generic_N_Vector, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %content2, align 8, !tbaa !42
  %vecs3 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %vecs3, align 8, !tbaa !39
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %13 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %12, i64 %idxprom4
  %14 = load ptr, ptr %arrayidx5, align 8, !tbaa !9
  call void @N_VScale(double noundef %4, ptr noundef %9, ptr noundef %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !66

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @N_VAbs_SensWrapper(ptr noundef %x, ptr noundef %z) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store ptr %z, ptr %z.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %content, align 8, !tbaa !42
  %nvecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nvecs, align 8, !tbaa !36
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content1 = getelementptr inbounds %struct._generic_N_Vector, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %content1, align 8, !tbaa !42
  %vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vecs, align 8, !tbaa !39
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %9 = load ptr, ptr %z.addr, align 8, !tbaa !9
  %content2 = getelementptr inbounds %struct._generic_N_Vector, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %content2, align 8, !tbaa !42
  %vecs3 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %vecs3, align 8, !tbaa !39
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %11, i64 %idxprom4
  %13 = load ptr, ptr %arrayidx5, align 8, !tbaa !9
  call void @N_VAbs(ptr noundef %8, ptr noundef %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !67

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @N_VInv_SensWrapper(ptr noundef %x, ptr noundef %z) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store ptr %z, ptr %z.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %content, align 8, !tbaa !42
  %nvecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nvecs, align 8, !tbaa !36
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content1 = getelementptr inbounds %struct._generic_N_Vector, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %content1, align 8, !tbaa !42
  %vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vecs, align 8, !tbaa !39
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %9 = load ptr, ptr %z.addr, align 8, !tbaa !9
  %content2 = getelementptr inbounds %struct._generic_N_Vector, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %content2, align 8, !tbaa !42
  %vecs3 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %vecs3, align 8, !tbaa !39
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %11, i64 %idxprom4
  %13 = load ptr, ptr %arrayidx5, align 8, !tbaa !9
  call void @N_VInv(ptr noundef %8, ptr noundef %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !68

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @N_VAddConst_SensWrapper(ptr noundef %x, double noundef %b, ptr noundef %z) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %b.addr = alloca double, align 8
  %z.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store double %b, ptr %b.addr, align 8, !tbaa !60
  store ptr %z, ptr %z.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %content, align 8, !tbaa !42
  %nvecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nvecs, align 8, !tbaa !36
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content1 = getelementptr inbounds %struct._generic_N_Vector, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %content1, align 8, !tbaa !42
  %vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vecs, align 8, !tbaa !39
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %9 = load double, ptr %b.addr, align 8, !tbaa !60
  %10 = load ptr, ptr %z.addr, align 8, !tbaa !9
  %content2 = getelementptr inbounds %struct._generic_N_Vector, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %content2, align 8, !tbaa !42
  %vecs3 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %vecs3, align 8, !tbaa !39
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %13 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %12, i64 %idxprom4
  %14 = load ptr, ptr %arrayidx5, align 8, !tbaa !9
  call void @N_VAddConst(ptr noundef %8, double noundef %9, ptr noundef %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !69

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local double @N_VDotProd_SensWrapper(ptr noundef %x, ptr noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %sum = alloca double, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #5
  store double 0.000000e+00, ptr %sum, align 8, !tbaa !60
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %content, align 8, !tbaa !42
  %nvecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nvecs, align 8, !tbaa !36
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content1 = getelementptr inbounds %struct._generic_N_Vector, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %content1, align 8, !tbaa !42
  %vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vecs, align 8, !tbaa !39
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %9 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %content2 = getelementptr inbounds %struct._generic_N_Vector, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %content2, align 8, !tbaa !42
  %vecs3 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %vecs3, align 8, !tbaa !39
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %11, i64 %idxprom4
  %13 = load ptr, ptr %arrayidx5, align 8, !tbaa !9
  %call = call double @N_VDotProd(ptr noundef %8, ptr noundef %13)
  %14 = load double, ptr %sum, align 8, !tbaa !60
  %add = fadd double %14, %call
  store double %add, ptr %sum, align 8, !tbaa !60
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !70

for.end:                                          ; preds = %for.cond
  %16 = load double, ptr %sum, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret double %16
}

; Function Attrs: nounwind uwtable
define dso_local double @N_VMaxNorm_SensWrapper(ptr noundef %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %max = alloca double, align 8
  %tmp = alloca double, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %max) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #5
  store double 0.000000e+00, ptr %max, align 8, !tbaa !60
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %content, align 8, !tbaa !42
  %nvecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nvecs, align 8, !tbaa !36
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content1 = getelementptr inbounds %struct._generic_N_Vector, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %content1, align 8, !tbaa !42
  %vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vecs, align 8, !tbaa !39
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %call = call double @N_VMaxNorm(ptr noundef %8)
  store double %call, ptr %tmp, align 8, !tbaa !60
  %9 = load double, ptr %tmp, align 8, !tbaa !60
  %10 = load double, ptr %max, align 8, !tbaa !60
  %cmp2 = fcmp ogt double %9, %10
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load double, ptr %tmp, align 8, !tbaa !60
  store double %11, ptr %max, align 8, !tbaa !60
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !71

for.end:                                          ; preds = %for.cond
  %13 = load double, ptr %max, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %max) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret double %13
}

; Function Attrs: nounwind uwtable
define dso_local double @N_VWrmsNormMask_SensWrapper(ptr noundef %x, ptr noundef %w, ptr noundef %id) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %w.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %nrm = alloca double, align 8
  %tmp = alloca double, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store ptr %w, ptr %w.addr, align 8, !tbaa !9
  store ptr %id, ptr %id.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %nrm) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #5
  store double 0.000000e+00, ptr %nrm, align 8, !tbaa !60
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %content, align 8, !tbaa !42
  %nvecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nvecs, align 8, !tbaa !36
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content1 = getelementptr inbounds %struct._generic_N_Vector, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %content1, align 8, !tbaa !42
  %vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vecs, align 8, !tbaa !39
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %9 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %content2 = getelementptr inbounds %struct._generic_N_Vector, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %content2, align 8, !tbaa !42
  %vecs3 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %vecs3, align 8, !tbaa !39
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %11, i64 %idxprom4
  %13 = load ptr, ptr %arrayidx5, align 8, !tbaa !9
  %14 = load ptr, ptr %id.addr, align 8, !tbaa !9
  %content6 = getelementptr inbounds %struct._generic_N_Vector, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %content6, align 8, !tbaa !42
  %vecs7 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %vecs7, align 8, !tbaa !39
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %16, i64 %idxprom8
  %18 = load ptr, ptr %arrayidx9, align 8, !tbaa !9
  %call = call double @N_VWrmsNormMask(ptr noundef %8, ptr noundef %13, ptr noundef %18)
  store double %call, ptr %tmp, align 8, !tbaa !60
  %19 = load double, ptr %tmp, align 8, !tbaa !60
  %20 = load double, ptr %nrm, align 8, !tbaa !60
  %cmp10 = fcmp ogt double %19, %20
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %21 = load double, ptr %tmp, align 8, !tbaa !60
  store double %21, ptr %nrm, align 8, !tbaa !60
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !72

for.end:                                          ; preds = %for.cond
  %23 = load double, ptr %nrm, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %nrm) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret double %23
}

; Function Attrs: nounwind uwtable
define dso_local double @N_VWrmsNorm_SensWrapper(ptr noundef %x, ptr noundef %w) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %w.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %nrm = alloca double, align 8
  %tmp = alloca double, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store ptr %w, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %nrm) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #5
  store double 0.000000e+00, ptr %nrm, align 8, !tbaa !60
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %content, align 8, !tbaa !42
  %nvecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nvecs, align 8, !tbaa !36
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content1 = getelementptr inbounds %struct._generic_N_Vector, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %content1, align 8, !tbaa !42
  %vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vecs, align 8, !tbaa !39
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %9 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %content2 = getelementptr inbounds %struct._generic_N_Vector, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %content2, align 8, !tbaa !42
  %vecs3 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %vecs3, align 8, !tbaa !39
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %11, i64 %idxprom4
  %13 = load ptr, ptr %arrayidx5, align 8, !tbaa !9
  %call = call double @N_VWrmsNorm(ptr noundef %8, ptr noundef %13)
  store double %call, ptr %tmp, align 8, !tbaa !60
  %14 = load double, ptr %tmp, align 8, !tbaa !60
  %15 = load double, ptr %nrm, align 8, !tbaa !60
  %cmp6 = fcmp ogt double %14, %15
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %16 = load double, ptr %tmp, align 8, !tbaa !60
  store double %16, ptr %nrm, align 8, !tbaa !60
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !73

for.end:                                          ; preds = %for.cond
  %18 = load double, ptr %nrm, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %nrm) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret double %18
}

; Function Attrs: nounwind uwtable
define dso_local double @N_VMin_SensWrapper(ptr noundef %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %min = alloca double, align 8
  %tmp = alloca double, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %min) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #5
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %content, align 8, !tbaa !42
  %vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %vecs, align 8, !tbaa !39
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %call = call double @N_VMin(ptr noundef %3)
  store double %call, ptr %min, align 8, !tbaa !60
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content1 = getelementptr inbounds %struct._generic_N_Vector, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %content1, align 8, !tbaa !42
  %nvecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %nvecs, align 8, !tbaa !36
  %cmp = icmp slt i32 %4, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content2 = getelementptr inbounds %struct._generic_N_Vector, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %content2, align 8, !tbaa !42
  %vecs3 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %vecs3, align 8, !tbaa !39
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %10, i64 %idxprom
  %12 = load ptr, ptr %arrayidx4, align 8, !tbaa !9
  %call5 = call double @N_VMin(ptr noundef %12)
  store double %call5, ptr %tmp, align 8, !tbaa !60
  %13 = load double, ptr %tmp, align 8, !tbaa !60
  %14 = load double, ptr %min, align 8, !tbaa !60
  %cmp6 = fcmp olt double %13, %14
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load double, ptr %tmp, align 8, !tbaa !60
  store double %15, ptr %min, align 8, !tbaa !60
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !74

for.end:                                          ; preds = %for.cond
  %17 = load double, ptr %min, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %min) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret double %17
}

; Function Attrs: nounwind uwtable
define dso_local double @N_VWL2Norm_SensWrapper(ptr noundef %x, ptr noundef %w) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %w.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %nrm = alloca double, align 8
  %tmp = alloca double, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store ptr %w, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %nrm) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #5
  store double 0.000000e+00, ptr %nrm, align 8, !tbaa !60
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %content, align 8, !tbaa !42
  %nvecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nvecs, align 8, !tbaa !36
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content1 = getelementptr inbounds %struct._generic_N_Vector, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %content1, align 8, !tbaa !42
  %vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vecs, align 8, !tbaa !39
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %9 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %content2 = getelementptr inbounds %struct._generic_N_Vector, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %content2, align 8, !tbaa !42
  %vecs3 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %vecs3, align 8, !tbaa !39
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %11, i64 %idxprom4
  %13 = load ptr, ptr %arrayidx5, align 8, !tbaa !9
  %call = call double @N_VWL2Norm(ptr noundef %8, ptr noundef %13)
  store double %call, ptr %tmp, align 8, !tbaa !60
  %14 = load double, ptr %tmp, align 8, !tbaa !60
  %15 = load double, ptr %nrm, align 8, !tbaa !60
  %cmp6 = fcmp ogt double %14, %15
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %16 = load double, ptr %tmp, align 8, !tbaa !60
  store double %16, ptr %nrm, align 8, !tbaa !60
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !75

for.end:                                          ; preds = %for.cond
  %18 = load double, ptr %nrm, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %nrm) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret double %18
}

; Function Attrs: nounwind uwtable
define dso_local double @N_VL1Norm_SensWrapper(ptr noundef %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %nrm = alloca double, align 8
  %tmp = alloca double, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %nrm) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #5
  store double 0.000000e+00, ptr %nrm, align 8, !tbaa !60
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %content, align 8, !tbaa !42
  %nvecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nvecs, align 8, !tbaa !36
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content1 = getelementptr inbounds %struct._generic_N_Vector, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %content1, align 8, !tbaa !42
  %vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vecs, align 8, !tbaa !39
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %call = call double @N_VL1Norm(ptr noundef %8)
  store double %call, ptr %tmp, align 8, !tbaa !60
  %9 = load double, ptr %tmp, align 8, !tbaa !60
  %10 = load double, ptr %nrm, align 8, !tbaa !60
  %cmp2 = fcmp ogt double %9, %10
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load double, ptr %tmp, align 8, !tbaa !60
  store double %11, ptr %nrm, align 8, !tbaa !60
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !76

for.end:                                          ; preds = %for.cond
  %13 = load double, ptr %nrm, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %nrm) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret double %13
}

; Function Attrs: nounwind uwtable
define dso_local void @N_VCompare_SensWrapper(double noundef %c, ptr noundef %x, ptr noundef %z) #0 {
entry:
  %c.addr = alloca double, align 8
  %x.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store double %c, ptr %c.addr, align 8, !tbaa !60
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store ptr %z, ptr %z.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %content, align 8, !tbaa !42
  %nvecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nvecs, align 8, !tbaa !36
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load double, ptr %c.addr, align 8, !tbaa !60
  %5 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content1 = getelementptr inbounds %struct._generic_N_Vector, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %content1, align 8, !tbaa !42
  %vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %vecs, align 8, !tbaa !39
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %10 = load ptr, ptr %z.addr, align 8, !tbaa !9
  %content2 = getelementptr inbounds %struct._generic_N_Vector, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %content2, align 8, !tbaa !42
  %vecs3 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %vecs3, align 8, !tbaa !39
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %13 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %12, i64 %idxprom4
  %14 = load ptr, ptr %arrayidx5, align 8, !tbaa !9
  call void @N_VCompare(double noundef %4, ptr noundef %9, ptr noundef %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !77

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @N_VInvTest_SensWrapper(ptr noundef %x, ptr noundef %z) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %no_zero_found = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store ptr %z, ptr %z.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %no_zero_found) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #5
  store i32 1, ptr %no_zero_found, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %content, align 8, !tbaa !42
  %nvecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nvecs, align 8, !tbaa !36
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content1 = getelementptr inbounds %struct._generic_N_Vector, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %content1, align 8, !tbaa !42
  %vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vecs, align 8, !tbaa !39
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %9 = load ptr, ptr %z.addr, align 8, !tbaa !9
  %content2 = getelementptr inbounds %struct._generic_N_Vector, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %content2, align 8, !tbaa !42
  %vecs3 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %vecs3, align 8, !tbaa !39
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %11, i64 %idxprom4
  %13 = load ptr, ptr %arrayidx5, align 8, !tbaa !9
  %call = call i32 @N_VInvTest(ptr noundef %8, ptr noundef %13)
  store i32 %call, ptr %tmp, align 4, !tbaa !5
  %14 = load i32, ptr %tmp, align 4, !tbaa !5
  %cmp6 = icmp ne i32 %14, 1
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, ptr %no_zero_found, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !78

for.end:                                          ; preds = %for.cond
  %16 = load i32, ptr %no_zero_found, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %no_zero_found) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @N_VConstrMask_SensWrapper(ptr noundef %c, ptr noundef %x, ptr noundef %m) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %test = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8, !tbaa !9
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store ptr %m, ptr %m.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %test) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #5
  store i32 1, ptr %test, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %content, align 8, !tbaa !42
  %nvecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nvecs, align 8, !tbaa !36
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %c.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %content1 = getelementptr inbounds %struct._generic_N_Vector, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %content1, align 8, !tbaa !42
  %vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %vecs, align 8, !tbaa !39
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %10 = load ptr, ptr %m.addr, align 8, !tbaa !9
  %content2 = getelementptr inbounds %struct._generic_N_Vector, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %content2, align 8, !tbaa !42
  %vecs3 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %vecs3, align 8, !tbaa !39
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %13 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %12, i64 %idxprom4
  %14 = load ptr, ptr %arrayidx5, align 8, !tbaa !9
  %call = call i32 @N_VConstrMask(ptr noundef %4, ptr noundef %9, ptr noundef %14)
  store i32 %call, ptr %tmp, align 4, !tbaa !5
  %15 = load i32, ptr %tmp, align 4, !tbaa !5
  %cmp6 = icmp ne i32 %15, 1
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, ptr %test, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !79

for.end:                                          ; preds = %for.cond
  %17 = load i32, ptr %test, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %test) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define dso_local double @N_VMinQuotient_SensWrapper(ptr noundef %num, ptr noundef %denom) #0 {
entry:
  %num.addr = alloca ptr, align 8
  %denom.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %min = alloca double, align 8
  %tmp = alloca double, align 8
  store ptr %num, ptr %num.addr, align 8, !tbaa !9
  store ptr %denom, ptr %denom.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %min) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #5
  %0 = load ptr, ptr %num.addr, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %content, align 8, !tbaa !42
  %vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %vecs, align 8, !tbaa !39
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %4 = load ptr, ptr %denom.addr, align 8, !tbaa !9
  %content1 = getelementptr inbounds %struct._generic_N_Vector, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %content1, align 8, !tbaa !42
  %vecs2 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vecs2, align 8, !tbaa !39
  %arrayidx3 = getelementptr inbounds ptr, ptr %6, i64 0
  %7 = load ptr, ptr %arrayidx3, align 8, !tbaa !9
  %call = call double @N_VMinQuotient(ptr noundef %3, ptr noundef %7)
  store double %call, ptr %min, align 8, !tbaa !60
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load ptr, ptr %num.addr, align 8, !tbaa !9
  %content4 = getelementptr inbounds %struct._generic_N_Vector, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %content4, align 8, !tbaa !42
  %nvecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %nvecs, align 8, !tbaa !36
  %cmp = icmp slt i32 %8, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %num.addr, align 8, !tbaa !9
  %content5 = getelementptr inbounds %struct._generic_N_Vector, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %content5, align 8, !tbaa !42
  %vecs6 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %vecs6, align 8, !tbaa !39
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %14, i64 %idxprom
  %16 = load ptr, ptr %arrayidx7, align 8, !tbaa !9
  %17 = load ptr, ptr %denom.addr, align 8, !tbaa !9
  %content8 = getelementptr inbounds %struct._generic_N_Vector, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %content8, align 8, !tbaa !42
  %vecs9 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %vecs9, align 8, !tbaa !39
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %20 to i64
  %arrayidx11 = getelementptr inbounds ptr, ptr %19, i64 %idxprom10
  %21 = load ptr, ptr %arrayidx11, align 8, !tbaa !9
  %call12 = call double @N_VMinQuotient(ptr noundef %16, ptr noundef %21)
  store double %call12, ptr %tmp, align 8, !tbaa !60
  %22 = load double, ptr %tmp, align 8, !tbaa !60
  %23 = load double, ptr %min, align 8, !tbaa !60
  %cmp13 = fcmp olt double %22, %23
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %24 = load double, ptr %tmp, align 8, !tbaa !60
  store double %24, ptr %min, align 8, !tbaa !60
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !80

for.end:                                          ; preds = %for.cond
  %26 = load double, ptr %min, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %min) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret double %26
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

declare void @N_VFreeEmpty(ptr noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @N_VNew_SensWrapper(i32 noundef %count, ptr noundef %w) #0 {
entry:
  %retval = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %w.addr = alloca ptr, align 8
  %v = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %count, ptr %count.addr, align 4, !tbaa !5
  store ptr %w, ptr %w.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store ptr null, ptr %v, align 8, !tbaa !9
  %0 = load i32, ptr %count.addr, align 4, !tbaa !5
  %1 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %sunctx = getelementptr inbounds %struct._generic_N_Vector, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %sunctx, align 8, !tbaa !81
  %call = call ptr @N_VNewEmpty_SensWrapper(i32 noundef %0, ptr noundef %2)
  store ptr %call, ptr %v, align 8, !tbaa !9
  %3 = load ptr, ptr %v, align 8, !tbaa !9
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load ptr, ptr %v, align 8, !tbaa !9
  %content = getelementptr inbounds %struct._generic_N_Vector, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %content, align 8, !tbaa !42
  %nvecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %nvecs, align 8, !tbaa !36
  %cmp1 = icmp slt i32 %4, %7
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %call2 = call ptr @N_VClone(ptr noundef %8)
  %9 = load ptr, ptr %v, align 8, !tbaa !9
  %content3 = getelementptr inbounds %struct._generic_N_Vector, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %content3, align 8, !tbaa !42
  %vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %vecs, align 8, !tbaa !39
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %11, i64 %idxprom
  store ptr %call2, ptr %arrayidx, align 8, !tbaa !9
  %13 = load ptr, ptr %v, align 8, !tbaa !9
  %content4 = getelementptr inbounds %struct._generic_N_Vector, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %content4, align 8, !tbaa !42
  %vecs5 = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %vecs5, align 8, !tbaa !39
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %16 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %15, i64 %idxprom6
  %17 = load ptr, ptr %arrayidx7, align 8, !tbaa !9
  %cmp8 = icmp eq ptr %17, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body
  %18 = load ptr, ptr %v, align 8, !tbaa !9
  call void @N_VDestroy(ptr noundef %18)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !82

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %v, align 8, !tbaa !9
  %content11 = getelementptr inbounds %struct._generic_N_Vector, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %content11, align 8, !tbaa !42
  %own_vecs = getelementptr inbounds %struct._N_VectorContent_SensWrapper, ptr %21, i32 0, i32 2
  store i32 1, ptr %own_vecs, align 4, !tbaa !38
  %22 = load ptr, ptr %w.addr, align 8, !tbaa !9
  %sunctx12 = getelementptr inbounds %struct._generic_N_Vector, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %sunctx12, align 8, !tbaa !81
  %24 = load ptr, ptr %v, align 8, !tbaa !9
  %sunctx13 = getelementptr inbounds %struct._generic_N_Vector, ptr %24, i32 0, i32 2
  store ptr %23, ptr %sunctx13, align 8, !tbaa !81
  %25 = load ptr, ptr %v, align 8, !tbaa !9
  store ptr %25, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #5
  %26 = load ptr, ptr %retval, align 8
  ret ptr %26
}

declare ptr @N_VClone(ptr noundef) #2

declare void @N_VDestroy(ptr noundef) #2

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) #2

declare void @N_VConst(double noundef, ptr noundef) #2

declare void @N_VProd(ptr noundef, ptr noundef, ptr noundef) #2

declare void @N_VDiv(ptr noundef, ptr noundef, ptr noundef) #2

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) #2

declare void @N_VAbs(ptr noundef, ptr noundef) #2

declare void @N_VInv(ptr noundef, ptr noundef) #2

declare void @N_VAddConst(ptr noundef, double noundef, ptr noundef) #2

declare double @N_VDotProd(ptr noundef, ptr noundef) #2

declare double @N_VMaxNorm(ptr noundef) #2

declare double @N_VWrmsNorm(ptr noundef, ptr noundef) #2

declare double @N_VWrmsNormMask(ptr noundef, ptr noundef, ptr noundef) #2

declare double @N_VMin(ptr noundef) #2

declare double @N_VWL2Norm(ptr noundef, ptr noundef) #2

declare double @N_VL1Norm(ptr noundef) #2

declare void @N_VCompare(double noundef, ptr noundef, ptr noundef) #2

declare i32 @N_VInvTest(ptr noundef, ptr noundef) #2

declare i32 @N_VConstrMask(ptr noundef, ptr noundef, ptr noundef) #2

declare double @N_VMinQuotient(ptr noundef, ptr noundef) #2

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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !10, i64 8}
!12 = !{!"_generic_N_Vector", !10, i64 0, !10, i64 8, !10, i64 16}
!13 = !{!14, !10, i64 8}
!14 = !{!"_generic_N_Vector_Ops", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !10, i64 336, !10, i64 344, !10, i64 352, !10, i64 360, !10, i64 368, !10, i64 376, !10, i64 384, !10, i64 392, !10, i64 400, !10, i64 408, !10, i64 416, !10, i64 424, !10, i64 432}
!15 = !{!14, !10, i64 16}
!16 = !{!14, !10, i64 24}
!17 = !{!14, !10, i64 80}
!18 = !{!14, !10, i64 88}
!19 = !{!14, !10, i64 96}
!20 = !{!14, !10, i64 104}
!21 = !{!14, !10, i64 112}
!22 = !{!14, !10, i64 120}
!23 = !{!14, !10, i64 128}
!24 = !{!14, !10, i64 136}
!25 = !{!14, !10, i64 144}
!26 = !{!14, !10, i64 152}
!27 = !{!14, !10, i64 168}
!28 = !{!14, !10, i64 160}
!29 = !{!14, !10, i64 176}
!30 = !{!14, !10, i64 184}
!31 = !{!14, !10, i64 192}
!32 = !{!14, !10, i64 200}
!33 = !{!14, !10, i64 208}
!34 = !{!14, !10, i64 216}
!35 = !{!14, !10, i64 224}
!36 = !{!37, !6, i64 8}
!37 = !{!"_N_VectorContent_SensWrapper", !10, i64 0, !6, i64 8, !6, i64 12}
!38 = !{!37, !6, i64 12}
!39 = !{!37, !10, i64 0}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!12, !10, i64 0}
!43 = distinct !{!43, !41}
!44 = !{!14, !10, i64 0}
!45 = !{!14, !10, i64 32}
!46 = !{!14, !10, i64 40}
!47 = !{!14, !10, i64 56}
!48 = !{!14, !10, i64 232}
!49 = !{!14, !10, i64 240}
!50 = !{!14, !10, i64 248}
!51 = !{!14, !10, i64 256}
!52 = !{!14, !10, i64 264}
!53 = !{!14, !10, i64 272}
!54 = !{!14, !10, i64 280}
!55 = !{!14, !10, i64 288}
!56 = !{!14, !10, i64 296}
!57 = !{!14, !10, i64 304}
!58 = distinct !{!58, !41}
!59 = distinct !{!59, !41}
!60 = !{!61, !61, i64 0}
!61 = !{!"double", !7, i64 0}
!62 = distinct !{!62, !41}
!63 = distinct !{!63, !41}
!64 = distinct !{!64, !41}
!65 = distinct !{!65, !41}
!66 = distinct !{!66, !41}
!67 = distinct !{!67, !41}
!68 = distinct !{!68, !41}
!69 = distinct !{!69, !41}
!70 = distinct !{!70, !41}
!71 = distinct !{!71, !41}
!72 = distinct !{!72, !41}
!73 = distinct !{!73, !41}
!74 = distinct !{!74, !41}
!75 = distinct !{!75, !41}
!76 = distinct !{!76, !41}
!77 = distinct !{!77, !41}
!78 = distinct !{!78, !41}
!79 = distinct !{!79, !41}
!80 = distinct !{!80, !41}
!81 = !{!12, !10, i64 16}
!82 = distinct !{!82, !41}
