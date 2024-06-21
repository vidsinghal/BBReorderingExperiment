; ModuleID = 'samples/111.bc'
source_filename = "/local-ssd/vtk-j3fcitgmitcvemiewb6nohnsalcc4ltw-build/aidengro/spack-stage-vtk-8.2.1a-j3fcitgmitcvemiewb6nohnsalcc4ltw/spack-src/ThirdParty/libproj/vtklibproj/src/PJ_chamb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PJconsts = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, [7 x double], ptr, i32, i32, ptr, i32, double, double, double, double, i32, [4 x i8], ptr, ptr, double, ptr, %struct.PJ_Region, double, ptr, %struct.PJ_Region, double, ptr }
%struct.PJ_Region = type { double, double, double, double }
%union.PROJVALUE = type { double }
%struct.VECT = type { double, double }
%struct.pj_opaque = type { [3 x %struct.anon], %struct.XY, double, double, double }
%struct.anon = type { double, double, double, double, %struct.VECT, %struct.XY, double }
%struct.XY = type { double, double }
%struct.LP = type { double, double }

@des_chamb = internal constant [83 x i8] c"Chamberlin Trimetric\0A\09Misc Sph, no inv.\0A\09lat_1= lon_1= lat_2= lon_2= lat_3= lon_3=\00", align 16
@vtklibproj_pj_s_chamb = constant ptr @des_chamb, align 8
@.str = private unnamed_addr constant [8 x i8] c"rlat_%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"rlon_%d\00", align 1

; Function Attrs: nounwind uwtable
define ptr @vtklibproj_pj_chamb(ptr noundef %P) #0 {
entry:
  %retval = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %call = call ptr @vtklibproj_pj_projection_specific_setup_chamb(ptr noundef %1)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call ptr @vtklibproj_pj_calloc(i64 noundef 1, i64 noundef 472)
  store ptr %call1, ptr %P.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr null, %2
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %pfree = getelementptr inbounds %struct.PJconsts, ptr %3, i32 0, i32 6
  store ptr @freeup, ptr %pfree, align 8, !tbaa !8
  %4 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %descr = getelementptr inbounds %struct.PJconsts, ptr %4, i32 0, i32 7
  store ptr @des_chamb, ptr %descr, align 8, !tbaa !13
  %5 = load ptr, ptr %P.addr, align 8, !tbaa !4
  store ptr %5, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define ptr @vtklibproj_pj_projection_specific_setup_chamb(ptr noundef %P) #0 {
entry:
  %retval = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %line = alloca [10 x i8], align 1
  %Q = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %coerce = alloca %union.PROJVALUE, align 8
  %coerce13 = alloca %union.PROJVALUE, align 8
  %tmp = alloca %struct.VECT, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 10, ptr %line) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %Q) #7
  %call = call ptr @vtklibproj_pj_calloc(i64 noundef 1, i64 noundef 256)
  store ptr %call, ptr %Q, align 8, !tbaa !4
  %0 = load ptr, ptr %Q, align 8, !tbaa !4
  %cmp = icmp eq ptr null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %call1 = call ptr @freeup_new(ptr noundef %1)
  store ptr %call1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %Q, align 8, !tbaa !4
  %3 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque = getelementptr inbounds %struct.PJconsts, ptr %3, i32 0, i32 50
  store ptr %2, ptr %opaque, align 8, !tbaa !14
  store i32 0, ptr %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4, !tbaa !15
  %cmp2 = icmp slt i32 %4, 3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [10 x i8], ptr %line, i64 0, i64 0
  %5 = load i32, ptr %i, align 4, !tbaa !15
  %add = add nsw i32 %5, 1
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str, i32 noundef %add) #7
  %6 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %ctx = getelementptr inbounds %struct.PJconsts, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %ctx, align 8, !tbaa !16
  %8 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %params = getelementptr inbounds %struct.PJconsts, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %params, align 8, !tbaa !17
  %arraydecay4 = getelementptr inbounds [10 x i8], ptr %line, i64 0, i64 0
  %call5 = call i64 @vtklibproj_pj_param(ptr noundef %7, ptr noundef %9, ptr noundef %arraydecay4)
  %coerce.dive = getelementptr inbounds %union.PROJVALUE, ptr %coerce, i32 0, i32 0
  store i64 %call5, ptr %coerce.dive, align 8
  %10 = load double, ptr %coerce, align 8, !tbaa !18
  %11 = load ptr, ptr %Q, align 8, !tbaa !4
  %c = getelementptr inbounds %struct.pj_opaque, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.anon], ptr %c, i64 0, i64 %idxprom
  %phi = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 0
  store double %10, ptr %phi, align 8, !tbaa !19
  %arraydecay6 = getelementptr inbounds [10 x i8], ptr %line, i64 0, i64 0
  %13 = load i32, ptr %i, align 4, !tbaa !15
  %add7 = add nsw i32 %13, 1
  %call8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay6, ptr noundef @.str.1, i32 noundef %add7) #7
  %14 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %ctx9 = getelementptr inbounds %struct.PJconsts, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %ctx9, align 8, !tbaa !16
  %16 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %params10 = getelementptr inbounds %struct.PJconsts, ptr %16, i32 0, i32 8
  %17 = load ptr, ptr %params10, align 8, !tbaa !17
  %arraydecay11 = getelementptr inbounds [10 x i8], ptr %line, i64 0, i64 0
  %call12 = call i64 @vtklibproj_pj_param(ptr noundef %15, ptr noundef %17, ptr noundef %arraydecay11)
  %coerce.dive14 = getelementptr inbounds %union.PROJVALUE, ptr %coerce13, i32 0, i32 0
  store i64 %call12, ptr %coerce.dive14, align 8
  %18 = load double, ptr %coerce13, align 8, !tbaa !18
  %19 = load ptr, ptr %Q, align 8, !tbaa !4
  %c15 = getelementptr inbounds %struct.pj_opaque, ptr %19, i32 0, i32 0
  %20 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds [3 x %struct.anon], ptr %c15, i64 0, i64 %idxprom16
  %lam = getelementptr inbounds %struct.anon, ptr %arrayidx17, i32 0, i32 1
  store double %18, ptr %lam, align 8, !tbaa !22
  %21 = load ptr, ptr %Q, align 8, !tbaa !4
  %c18 = getelementptr inbounds %struct.pj_opaque, ptr %21, i32 0, i32 0
  %22 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom19 = sext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds [3 x %struct.anon], ptr %c18, i64 0, i64 %idxprom19
  %lam21 = getelementptr inbounds %struct.anon, ptr %arrayidx20, i32 0, i32 1
  %23 = load double, ptr %lam21, align 8, !tbaa !22
  %24 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %lam0 = getelementptr inbounds %struct.PJconsts, ptr %24, i32 0, i32 21
  %25 = load double, ptr %lam0, align 8, !tbaa !23
  %sub = fsub double %23, %25
  %call22 = call double @vtklibproj_adjlon(double noundef %sub)
  %26 = load ptr, ptr %Q, align 8, !tbaa !4
  %c23 = getelementptr inbounds %struct.pj_opaque, ptr %26, i32 0, i32 0
  %27 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom24 = sext i32 %27 to i64
  %arrayidx25 = getelementptr inbounds [3 x %struct.anon], ptr %c23, i64 0, i64 %idxprom24
  %lam26 = getelementptr inbounds %struct.anon, ptr %arrayidx25, i32 0, i32 1
  store double %call22, ptr %lam26, align 8, !tbaa !22
  %28 = load ptr, ptr %Q, align 8, !tbaa !4
  %c27 = getelementptr inbounds %struct.pj_opaque, ptr %28, i32 0, i32 0
  %29 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom28 = sext i32 %29 to i64
  %arrayidx29 = getelementptr inbounds [3 x %struct.anon], ptr %c27, i64 0, i64 %idxprom28
  %phi30 = getelementptr inbounds %struct.anon, ptr %arrayidx29, i32 0, i32 0
  %30 = load double, ptr %phi30, align 8, !tbaa !19
  %call31 = call double @cos(double noundef %30) #7
  %31 = load ptr, ptr %Q, align 8, !tbaa !4
  %c32 = getelementptr inbounds %struct.pj_opaque, ptr %31, i32 0, i32 0
  %32 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom33 = sext i32 %32 to i64
  %arrayidx34 = getelementptr inbounds [3 x %struct.anon], ptr %c32, i64 0, i64 %idxprom33
  %cosphi = getelementptr inbounds %struct.anon, ptr %arrayidx34, i32 0, i32 2
  store double %call31, ptr %cosphi, align 8, !tbaa !24
  %33 = load ptr, ptr %Q, align 8, !tbaa !4
  %c35 = getelementptr inbounds %struct.pj_opaque, ptr %33, i32 0, i32 0
  %34 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom36 = sext i32 %34 to i64
  %arrayidx37 = getelementptr inbounds [3 x %struct.anon], ptr %c35, i64 0, i64 %idxprom36
  %phi38 = getelementptr inbounds %struct.anon, ptr %arrayidx37, i32 0, i32 0
  %35 = load double, ptr %phi38, align 8, !tbaa !19
  %call39 = call double @sin(double noundef %35) #7
  %36 = load ptr, ptr %Q, align 8, !tbaa !4
  %c40 = getelementptr inbounds %struct.pj_opaque, ptr %36, i32 0, i32 0
  %37 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom41 = sext i32 %37 to i64
  %arrayidx42 = getelementptr inbounds [3 x %struct.anon], ptr %c40, i64 0, i64 %idxprom41
  %sinphi = getelementptr inbounds %struct.anon, ptr %arrayidx42, i32 0, i32 3
  store double %call39, ptr %sinphi, align 8, !tbaa !25
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, ptr %i, align 4, !tbaa !15
  %inc = add nsw i32 %38, 1
  store i32 %inc, ptr %i, align 4, !tbaa !15
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !15
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc94, %for.end
  %39 = load i32, ptr %i, align 4, !tbaa !15
  %cmp44 = icmp slt i32 %39, 3
  br i1 %cmp44, label %for.body45, label %for.end96

for.body45:                                       ; preds = %for.cond43
  %40 = load i32, ptr %i, align 4, !tbaa !15
  %cmp46 = icmp eq i32 %40, 2
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body45
  br label %cond.end

cond.false:                                       ; preds = %for.body45
  %41 = load i32, ptr %i, align 4, !tbaa !15
  %add47 = add nsw i32 %41, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %add47, %cond.false ]
  store i32 %cond, ptr %j, align 4, !tbaa !15
  %42 = load ptr, ptr %Q, align 8, !tbaa !4
  %c48 = getelementptr inbounds %struct.pj_opaque, ptr %42, i32 0, i32 0
  %43 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom49 = sext i32 %43 to i64
  %arrayidx50 = getelementptr inbounds [3 x %struct.anon], ptr %c48, i64 0, i64 %idxprom49
  %v = getelementptr inbounds %struct.anon, ptr %arrayidx50, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #7
  %44 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %ctx51 = getelementptr inbounds %struct.PJconsts, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %ctx51, align 8, !tbaa !16
  %46 = load ptr, ptr %Q, align 8, !tbaa !4
  %c52 = getelementptr inbounds %struct.pj_opaque, ptr %46, i32 0, i32 0
  %47 = load i32, ptr %j, align 4, !tbaa !15
  %idxprom53 = sext i32 %47 to i64
  %arrayidx54 = getelementptr inbounds [3 x %struct.anon], ptr %c52, i64 0, i64 %idxprom53
  %phi55 = getelementptr inbounds %struct.anon, ptr %arrayidx54, i32 0, i32 0
  %48 = load double, ptr %phi55, align 8, !tbaa !19
  %49 = load ptr, ptr %Q, align 8, !tbaa !4
  %c56 = getelementptr inbounds %struct.pj_opaque, ptr %49, i32 0, i32 0
  %50 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom57 = sext i32 %50 to i64
  %arrayidx58 = getelementptr inbounds [3 x %struct.anon], ptr %c56, i64 0, i64 %idxprom57
  %phi59 = getelementptr inbounds %struct.anon, ptr %arrayidx58, i32 0, i32 0
  %51 = load double, ptr %phi59, align 8, !tbaa !19
  %sub60 = fsub double %48, %51
  %52 = load ptr, ptr %Q, align 8, !tbaa !4
  %c61 = getelementptr inbounds %struct.pj_opaque, ptr %52, i32 0, i32 0
  %53 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom62 = sext i32 %53 to i64
  %arrayidx63 = getelementptr inbounds [3 x %struct.anon], ptr %c61, i64 0, i64 %idxprom62
  %cosphi64 = getelementptr inbounds %struct.anon, ptr %arrayidx63, i32 0, i32 2
  %54 = load double, ptr %cosphi64, align 8, !tbaa !24
  %55 = load ptr, ptr %Q, align 8, !tbaa !4
  %c65 = getelementptr inbounds %struct.pj_opaque, ptr %55, i32 0, i32 0
  %56 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom66 = sext i32 %56 to i64
  %arrayidx67 = getelementptr inbounds [3 x %struct.anon], ptr %c65, i64 0, i64 %idxprom66
  %sinphi68 = getelementptr inbounds %struct.anon, ptr %arrayidx67, i32 0, i32 3
  %57 = load double, ptr %sinphi68, align 8, !tbaa !25
  %58 = load ptr, ptr %Q, align 8, !tbaa !4
  %c69 = getelementptr inbounds %struct.pj_opaque, ptr %58, i32 0, i32 0
  %59 = load i32, ptr %j, align 4, !tbaa !15
  %idxprom70 = sext i32 %59 to i64
  %arrayidx71 = getelementptr inbounds [3 x %struct.anon], ptr %c69, i64 0, i64 %idxprom70
  %cosphi72 = getelementptr inbounds %struct.anon, ptr %arrayidx71, i32 0, i32 2
  %60 = load double, ptr %cosphi72, align 8, !tbaa !24
  %61 = load ptr, ptr %Q, align 8, !tbaa !4
  %c73 = getelementptr inbounds %struct.pj_opaque, ptr %61, i32 0, i32 0
  %62 = load i32, ptr %j, align 4, !tbaa !15
  %idxprom74 = sext i32 %62 to i64
  %arrayidx75 = getelementptr inbounds [3 x %struct.anon], ptr %c73, i64 0, i64 %idxprom74
  %sinphi76 = getelementptr inbounds %struct.anon, ptr %arrayidx75, i32 0, i32 3
  %63 = load double, ptr %sinphi76, align 8, !tbaa !25
  %64 = load ptr, ptr %Q, align 8, !tbaa !4
  %c77 = getelementptr inbounds %struct.pj_opaque, ptr %64, i32 0, i32 0
  %65 = load i32, ptr %j, align 4, !tbaa !15
  %idxprom78 = sext i32 %65 to i64
  %arrayidx79 = getelementptr inbounds [3 x %struct.anon], ptr %c77, i64 0, i64 %idxprom78
  %lam80 = getelementptr inbounds %struct.anon, ptr %arrayidx79, i32 0, i32 1
  %66 = load double, ptr %lam80, align 8, !tbaa !22
  %67 = load ptr, ptr %Q, align 8, !tbaa !4
  %c81 = getelementptr inbounds %struct.pj_opaque, ptr %67, i32 0, i32 0
  %68 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom82 = sext i32 %68 to i64
  %arrayidx83 = getelementptr inbounds [3 x %struct.anon], ptr %c81, i64 0, i64 %idxprom82
  %lam84 = getelementptr inbounds %struct.anon, ptr %arrayidx83, i32 0, i32 1
  %69 = load double, ptr %lam84, align 8, !tbaa !22
  %sub85 = fsub double %66, %69
  %call86 = call { double, double } @vect(ptr noundef %45, double noundef %sub60, double noundef %54, double noundef %57, double noundef %60, double noundef %63, double noundef %sub85)
  %70 = getelementptr inbounds { double, double }, ptr %tmp, i32 0, i32 0
  %71 = extractvalue { double, double } %call86, 0
  store double %71, ptr %70, align 8
  %72 = getelementptr inbounds { double, double }, ptr %tmp, i32 0, i32 1
  %73 = extractvalue { double, double } %call86, 1
  store double %73, ptr %72, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %v, ptr align 8 %tmp, i64 16, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #7
  %74 = load ptr, ptr %Q, align 8, !tbaa !4
  %c87 = getelementptr inbounds %struct.pj_opaque, ptr %74, i32 0, i32 0
  %75 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom88 = sext i32 %75 to i64
  %arrayidx89 = getelementptr inbounds [3 x %struct.anon], ptr %c87, i64 0, i64 %idxprom88
  %v90 = getelementptr inbounds %struct.anon, ptr %arrayidx89, i32 0, i32 4
  %r = getelementptr inbounds %struct.VECT, ptr %v90, i32 0, i32 0
  %76 = load double, ptr %r, align 8, !tbaa !30
  %tobool = fcmp une double %76, 0.000000e+00
  br i1 %tobool, label %if.end93, label %if.then91

if.then91:                                        ; preds = %cond.end
  %77 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %ctx92 = getelementptr inbounds %struct.PJconsts, ptr %77, i32 0, i32 0
  %78 = load ptr, ptr %ctx92, align 8, !tbaa !16
  call void @vtklibproj_pj_ctx_set_errno(ptr noundef %78, i32 noundef -25)
  %79 = load ptr, ptr %P.addr, align 8, !tbaa !4
  call void @freeup(ptr noundef %79)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end93:                                         ; preds = %cond.end
  br label %for.inc94

for.inc94:                                        ; preds = %if.end93
  %80 = load i32, ptr %i, align 4, !tbaa !15
  %inc95 = add nsw i32 %80, 1
  store i32 %inc95, ptr %i, align 4, !tbaa !15
  br label %for.cond43, !llvm.loop !31

for.end96:                                        ; preds = %for.cond43
  %81 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %ctx97 = getelementptr inbounds %struct.PJconsts, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %ctx97, align 8, !tbaa !16
  %83 = load ptr, ptr %Q, align 8, !tbaa !4
  %c98 = getelementptr inbounds %struct.pj_opaque, ptr %83, i32 0, i32 0
  %arrayidx99 = getelementptr inbounds [3 x %struct.anon], ptr %c98, i64 0, i64 0
  %v100 = getelementptr inbounds %struct.anon, ptr %arrayidx99, i32 0, i32 4
  %r101 = getelementptr inbounds %struct.VECT, ptr %v100, i32 0, i32 0
  %84 = load double, ptr %r101, align 8, !tbaa !30
  %85 = load ptr, ptr %Q, align 8, !tbaa !4
  %c102 = getelementptr inbounds %struct.pj_opaque, ptr %85, i32 0, i32 0
  %arrayidx103 = getelementptr inbounds [3 x %struct.anon], ptr %c102, i64 0, i64 2
  %v104 = getelementptr inbounds %struct.anon, ptr %arrayidx103, i32 0, i32 4
  %r105 = getelementptr inbounds %struct.VECT, ptr %v104, i32 0, i32 0
  %86 = load double, ptr %r105, align 8, !tbaa !30
  %87 = load ptr, ptr %Q, align 8, !tbaa !4
  %c106 = getelementptr inbounds %struct.pj_opaque, ptr %87, i32 0, i32 0
  %arrayidx107 = getelementptr inbounds [3 x %struct.anon], ptr %c106, i64 0, i64 1
  %v108 = getelementptr inbounds %struct.anon, ptr %arrayidx107, i32 0, i32 4
  %r109 = getelementptr inbounds %struct.VECT, ptr %v108, i32 0, i32 0
  %88 = load double, ptr %r109, align 8, !tbaa !30
  %call110 = call double @lc(ptr noundef %82, double noundef %84, double noundef %86, double noundef %88)
  %89 = load ptr, ptr %Q, align 8, !tbaa !4
  %beta_0 = getelementptr inbounds %struct.pj_opaque, ptr %89, i32 0, i32 2
  store double %call110, ptr %beta_0, align 8, !tbaa !32
  %90 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %ctx111 = getelementptr inbounds %struct.PJconsts, ptr %90, i32 0, i32 0
  %91 = load ptr, ptr %ctx111, align 8, !tbaa !16
  %92 = load ptr, ptr %Q, align 8, !tbaa !4
  %c112 = getelementptr inbounds %struct.pj_opaque, ptr %92, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [3 x %struct.anon], ptr %c112, i64 0, i64 0
  %v114 = getelementptr inbounds %struct.anon, ptr %arrayidx113, i32 0, i32 4
  %r115 = getelementptr inbounds %struct.VECT, ptr %v114, i32 0, i32 0
  %93 = load double, ptr %r115, align 8, !tbaa !30
  %94 = load ptr, ptr %Q, align 8, !tbaa !4
  %c116 = getelementptr inbounds %struct.pj_opaque, ptr %94, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [3 x %struct.anon], ptr %c116, i64 0, i64 1
  %v118 = getelementptr inbounds %struct.anon, ptr %arrayidx117, i32 0, i32 4
  %r119 = getelementptr inbounds %struct.VECT, ptr %v118, i32 0, i32 0
  %95 = load double, ptr %r119, align 8, !tbaa !30
  %96 = load ptr, ptr %Q, align 8, !tbaa !4
  %c120 = getelementptr inbounds %struct.pj_opaque, ptr %96, i32 0, i32 0
  %arrayidx121 = getelementptr inbounds [3 x %struct.anon], ptr %c120, i64 0, i64 2
  %v122 = getelementptr inbounds %struct.anon, ptr %arrayidx121, i32 0, i32 4
  %r123 = getelementptr inbounds %struct.VECT, ptr %v122, i32 0, i32 0
  %97 = load double, ptr %r123, align 8, !tbaa !30
  %call124 = call double @lc(ptr noundef %91, double noundef %93, double noundef %95, double noundef %97)
  %98 = load ptr, ptr %Q, align 8, !tbaa !4
  %beta_1 = getelementptr inbounds %struct.pj_opaque, ptr %98, i32 0, i32 3
  store double %call124, ptr %beta_1, align 8, !tbaa !34
  %99 = load ptr, ptr %Q, align 8, !tbaa !4
  %beta_0125 = getelementptr inbounds %struct.pj_opaque, ptr %99, i32 0, i32 2
  %100 = load double, ptr %beta_0125, align 8, !tbaa !32
  %sub126 = fsub double 0x400921FB54442D18, %100
  %101 = load ptr, ptr %Q, align 8, !tbaa !4
  %beta_2 = getelementptr inbounds %struct.pj_opaque, ptr %101, i32 0, i32 4
  store double %sub126, ptr %beta_2, align 8, !tbaa !35
  %102 = load ptr, ptr %Q, align 8, !tbaa !4
  %c127 = getelementptr inbounds %struct.pj_opaque, ptr %102, i32 0, i32 0
  %arrayidx128 = getelementptr inbounds [3 x %struct.anon], ptr %c127, i64 0, i64 2
  %v129 = getelementptr inbounds %struct.anon, ptr %arrayidx128, i32 0, i32 4
  %r130 = getelementptr inbounds %struct.VECT, ptr %v129, i32 0, i32 0
  %103 = load double, ptr %r130, align 8, !tbaa !30
  %104 = load ptr, ptr %Q, align 8, !tbaa !4
  %beta_0131 = getelementptr inbounds %struct.pj_opaque, ptr %104, i32 0, i32 2
  %105 = load double, ptr %beta_0131, align 8, !tbaa !32
  %call132 = call double @sin(double noundef %105) #7
  %mul = fmul double %103, %call132
  %106 = load ptr, ptr %Q, align 8, !tbaa !4
  %c133 = getelementptr inbounds %struct.pj_opaque, ptr %106, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [3 x %struct.anon], ptr %c133, i64 0, i64 1
  %p = getelementptr inbounds %struct.anon, ptr %arrayidx134, i32 0, i32 5
  %y = getelementptr inbounds %struct.XY, ptr %p, i32 0, i32 1
  store double %mul, ptr %y, align 8, !tbaa !36
  %107 = load ptr, ptr %Q, align 8, !tbaa !4
  %c135 = getelementptr inbounds %struct.pj_opaque, ptr %107, i32 0, i32 0
  %arrayidx136 = getelementptr inbounds [3 x %struct.anon], ptr %c135, i64 0, i64 0
  %p137 = getelementptr inbounds %struct.anon, ptr %arrayidx136, i32 0, i32 5
  %y138 = getelementptr inbounds %struct.XY, ptr %p137, i32 0, i32 1
  store double %mul, ptr %y138, align 8, !tbaa !36
  %mul139 = fmul double 2.000000e+00, %mul
  %108 = load ptr, ptr %Q, align 8, !tbaa !4
  %p140 = getelementptr inbounds %struct.pj_opaque, ptr %108, i32 0, i32 1
  %y141 = getelementptr inbounds %struct.XY, ptr %p140, i32 0, i32 1
  store double %mul139, ptr %y141, align 8, !tbaa !37
  %109 = load ptr, ptr %Q, align 8, !tbaa !4
  %c142 = getelementptr inbounds %struct.pj_opaque, ptr %109, i32 0, i32 0
  %arrayidx143 = getelementptr inbounds [3 x %struct.anon], ptr %c142, i64 0, i64 2
  %p144 = getelementptr inbounds %struct.anon, ptr %arrayidx143, i32 0, i32 5
  %y145 = getelementptr inbounds %struct.XY, ptr %p144, i32 0, i32 1
  store double 0.000000e+00, ptr %y145, align 8, !tbaa !36
  %110 = load ptr, ptr %Q, align 8, !tbaa !4
  %c146 = getelementptr inbounds %struct.pj_opaque, ptr %110, i32 0, i32 0
  %arrayidx147 = getelementptr inbounds [3 x %struct.anon], ptr %c146, i64 0, i64 0
  %v148 = getelementptr inbounds %struct.anon, ptr %arrayidx147, i32 0, i32 4
  %r149 = getelementptr inbounds %struct.VECT, ptr %v148, i32 0, i32 0
  %111 = load double, ptr %r149, align 8, !tbaa !30
  %mul150 = fmul double 5.000000e-01, %111
  %112 = load ptr, ptr %Q, align 8, !tbaa !4
  %c151 = getelementptr inbounds %struct.pj_opaque, ptr %112, i32 0, i32 0
  %arrayidx152 = getelementptr inbounds [3 x %struct.anon], ptr %c151, i64 0, i64 1
  %p153 = getelementptr inbounds %struct.anon, ptr %arrayidx152, i32 0, i32 5
  %x = getelementptr inbounds %struct.XY, ptr %p153, i32 0, i32 0
  store double %mul150, ptr %x, align 8, !tbaa !38
  %fneg = fneg double %mul150
  %113 = load ptr, ptr %Q, align 8, !tbaa !4
  %c154 = getelementptr inbounds %struct.pj_opaque, ptr %113, i32 0, i32 0
  %arrayidx155 = getelementptr inbounds [3 x %struct.anon], ptr %c154, i64 0, i64 0
  %p156 = getelementptr inbounds %struct.anon, ptr %arrayidx155, i32 0, i32 5
  %x157 = getelementptr inbounds %struct.XY, ptr %p156, i32 0, i32 0
  store double %fneg, ptr %x157, align 8, !tbaa !38
  %114 = load ptr, ptr %Q, align 8, !tbaa !4
  %c158 = getelementptr inbounds %struct.pj_opaque, ptr %114, i32 0, i32 0
  %arrayidx159 = getelementptr inbounds [3 x %struct.anon], ptr %c158, i64 0, i64 0
  %p160 = getelementptr inbounds %struct.anon, ptr %arrayidx159, i32 0, i32 5
  %x161 = getelementptr inbounds %struct.XY, ptr %p160, i32 0, i32 0
  %115 = load double, ptr %x161, align 8, !tbaa !38
  %116 = load ptr, ptr %Q, align 8, !tbaa !4
  %c162 = getelementptr inbounds %struct.pj_opaque, ptr %116, i32 0, i32 0
  %arrayidx163 = getelementptr inbounds [3 x %struct.anon], ptr %c162, i64 0, i64 2
  %v164 = getelementptr inbounds %struct.anon, ptr %arrayidx163, i32 0, i32 4
  %r165 = getelementptr inbounds %struct.VECT, ptr %v164, i32 0, i32 0
  %117 = load double, ptr %r165, align 8, !tbaa !30
  %118 = load ptr, ptr %Q, align 8, !tbaa !4
  %beta_0166 = getelementptr inbounds %struct.pj_opaque, ptr %118, i32 0, i32 2
  %119 = load double, ptr %beta_0166, align 8, !tbaa !32
  %call167 = call double @cos(double noundef %119) #7
  %120 = call double @llvm.fmuladd.f64(double %117, double %call167, double %115)
  %121 = load ptr, ptr %Q, align 8, !tbaa !4
  %c169 = getelementptr inbounds %struct.pj_opaque, ptr %121, i32 0, i32 0
  %arrayidx170 = getelementptr inbounds [3 x %struct.anon], ptr %c169, i64 0, i64 2
  %p171 = getelementptr inbounds %struct.anon, ptr %arrayidx170, i32 0, i32 5
  %x172 = getelementptr inbounds %struct.XY, ptr %p171, i32 0, i32 0
  store double %120, ptr %x172, align 8, !tbaa !38
  %122 = load ptr, ptr %Q, align 8, !tbaa !4
  %p173 = getelementptr inbounds %struct.pj_opaque, ptr %122, i32 0, i32 1
  %x174 = getelementptr inbounds %struct.XY, ptr %p173, i32 0, i32 0
  store double %120, ptr %x174, align 8, !tbaa !39
  %123 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %es = getelementptr inbounds %struct.PJconsts, ptr %123, i32 0, i32 15
  store double 0.000000e+00, ptr %es, align 8, !tbaa !40
  %124 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %fwd = getelementptr inbounds %struct.PJconsts, ptr %124, i32 0, i32 1
  store ptr @s_forward, ptr %fwd, align 8, !tbaa !41
  %125 = load ptr, ptr %P.addr, align 8, !tbaa !4
  store ptr %125, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end96, %if.then91, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %Q) #7
  call void @llvm.lifetime.end.p0(i64 10, ptr %line) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %126 = load ptr, ptr %retval, align 8
  ret ptr %126
}

declare ptr @vtklibproj_pj_calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define internal void @freeup(ptr noundef %P) #0 {
entry:
  %P.addr = alloca ptr, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %call = call ptr @freeup_new(ptr noundef %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal ptr @freeup_new(ptr noundef %P) #0 {
entry:
  %retval = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque = getelementptr inbounds %struct.PJconsts, ptr %1, i32 0, i32 50
  %2 = load ptr, ptr %opaque, align 8, !tbaa !14
  %cmp1 = icmp eq ptr null, %2
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %call = call ptr @vtklibproj_pj_dealloc(ptr noundef %3)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque4 = getelementptr inbounds %struct.PJconsts, ptr %4, i32 0, i32 50
  %5 = load ptr, ptr %opaque4, align 8, !tbaa !14
  %call5 = call ptr @vtklibproj_pj_dealloc(ptr noundef %5)
  %6 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %call6 = call ptr @vtklibproj_pj_dealloc(ptr noundef %6)
  store ptr %call6, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #3

declare i64 @vtklibproj_pj_param(ptr noundef, ptr noundef, ptr noundef) #1

declare double @vtklibproj_adjlon(double noundef) #1

; Function Attrs: nounwind
declare double @cos(double noundef) #3

; Function Attrs: nounwind
declare double @sin(double noundef) #3

; Function Attrs: nounwind uwtable
define internal { double, double } @vect(ptr noundef %ctx, double noundef %dphi, double noundef %c1, double noundef %s1, double noundef %c2, double noundef %s2, double noundef %dlam) #0 {
entry:
  %retval = alloca %struct.VECT, align 8
  %ctx.addr = alloca ptr, align 8
  %dphi.addr = alloca double, align 8
  %c1.addr = alloca double, align 8
  %s1.addr = alloca double, align 8
  %c2.addr = alloca double, align 8
  %s2.addr = alloca double, align 8
  %dlam.addr = alloca double, align 8
  %cdl = alloca double, align 8
  %dp = alloca double, align 8
  %dl = alloca double, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store double %dphi, ptr %dphi.addr, align 8, !tbaa !29
  store double %c1, ptr %c1.addr, align 8, !tbaa !29
  store double %s1, ptr %s1.addr, align 8, !tbaa !29
  store double %c2, ptr %c2.addr, align 8, !tbaa !29
  store double %s2, ptr %s2.addr, align 8, !tbaa !29
  store double %dlam, ptr %dlam.addr, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %cdl) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %dp) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %dl) #7
  %0 = load double, ptr %dlam.addr, align 8, !tbaa !29
  %call = call double @cos(double noundef %0) #7
  store double %call, ptr %cdl, align 8, !tbaa !29
  %1 = load double, ptr %dphi.addr, align 8, !tbaa !29
  %2 = call double @llvm.fabs.f64(double %1)
  %cmp = fcmp ogt double %2, 1.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load double, ptr %dlam.addr, align 8, !tbaa !29
  %4 = call double @llvm.fabs.f64(double %3)
  %cmp1 = fcmp ogt double %4, 1.000000e+00
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %6 = load double, ptr %s1.addr, align 8, !tbaa !29
  %7 = load double, ptr %s2.addr, align 8, !tbaa !29
  %8 = load double, ptr %c1.addr, align 8, !tbaa !29
  %9 = load double, ptr %c2.addr, align 8, !tbaa !29
  %mul2 = fmul double %8, %9
  %10 = load double, ptr %cdl, align 8, !tbaa !29
  %mul3 = fmul double %mul2, %10
  %11 = call double @llvm.fmuladd.f64(double %6, double %7, double %mul3)
  %call4 = call double @vtklibproj_aacos(ptr noundef %5, double noundef %11)
  %r = getelementptr inbounds %struct.VECT, ptr %retval, i32 0, i32 0
  store double %call4, ptr %r, align 8, !tbaa !42
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %12 = load double, ptr %dphi.addr, align 8, !tbaa !29
  %mul = fmul double 5.000000e-01, %12
  %call5 = call double @sin(double noundef %mul) #7
  store double %call5, ptr %dp, align 8, !tbaa !29
  %13 = load double, ptr %dlam.addr, align 8, !tbaa !29
  %mul6 = fmul double 5.000000e-01, %13
  %call7 = call double @sin(double noundef %mul6) #7
  store double %call7, ptr %dl, align 8, !tbaa !29
  %14 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %15 = load double, ptr %dp, align 8, !tbaa !29
  %16 = load double, ptr %dp, align 8, !tbaa !29
  %17 = load double, ptr %c1.addr, align 8, !tbaa !29
  %18 = load double, ptr %c2.addr, align 8, !tbaa !29
  %mul9 = fmul double %17, %18
  %19 = load double, ptr %dl, align 8, !tbaa !29
  %mul10 = fmul double %mul9, %19
  %20 = load double, ptr %dl, align 8, !tbaa !29
  %mul11 = fmul double %mul10, %20
  %21 = call double @llvm.fmuladd.f64(double %15, double %16, double %mul11)
  %call12 = call double @sqrt(double noundef %21) #7
  %call13 = call double @vtklibproj_aasin(ptr noundef %14, double noundef %call12)
  %mul14 = fmul double 2.000000e+00, %call13
  %r15 = getelementptr inbounds %struct.VECT, ptr %retval, i32 0, i32 0
  store double %mul14, ptr %r15, align 8, !tbaa !42
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %r16 = getelementptr inbounds %struct.VECT, ptr %retval, i32 0, i32 0
  %22 = load double, ptr %r16, align 8, !tbaa !42
  %23 = call double @llvm.fabs.f64(double %22)
  %cmp17 = fcmp ogt double %23, 1.000000e-09
  br i1 %cmp17, label %if.then18, label %if.else25

if.then18:                                        ; preds = %if.end
  %24 = load double, ptr %c2.addr, align 8, !tbaa !29
  %25 = load double, ptr %dlam.addr, align 8, !tbaa !29
  %call19 = call double @sin(double noundef %25) #7
  %mul20 = fmul double %24, %call19
  %26 = load double, ptr %c1.addr, align 8, !tbaa !29
  %27 = load double, ptr %s2.addr, align 8, !tbaa !29
  %28 = load double, ptr %s1.addr, align 8, !tbaa !29
  %29 = load double, ptr %c2.addr, align 8, !tbaa !29
  %mul22 = fmul double %28, %29
  %30 = load double, ptr %cdl, align 8, !tbaa !29
  %mul23 = fmul double %mul22, %30
  %neg = fneg double %mul23
  %31 = call double @llvm.fmuladd.f64(double %26, double %27, double %neg)
  %call24 = call double @atan2(double noundef %mul20, double noundef %31) #7
  %Az = getelementptr inbounds %struct.VECT, ptr %retval, i32 0, i32 1
  store double %call24, ptr %Az, align 8, !tbaa !43
  br label %if.end28

if.else25:                                        ; preds = %if.end
  %Az26 = getelementptr inbounds %struct.VECT, ptr %retval, i32 0, i32 1
  store double 0.000000e+00, ptr %Az26, align 8, !tbaa !43
  %r27 = getelementptr inbounds %struct.VECT, ptr %retval, i32 0, i32 0
  store double 0.000000e+00, ptr %r27, align 8, !tbaa !42
  br label %if.end28

if.end28:                                         ; preds = %if.else25, %if.then18
  call void @llvm.lifetime.end.p0(i64 8, ptr %dl) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %dp) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %cdl) #7
  %32 = load { double, double }, ptr %retval, align 8
  ret { double, double } %32
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @vtklibproj_pj_ctx_set_errno(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal double @lc(ptr noundef %ctx, double noundef %b, double noundef %c, double noundef %a) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %b.addr = alloca double, align 8
  %c.addr = alloca double, align 8
  %a.addr = alloca double, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store double %b, ptr %b.addr, align 8, !tbaa !29
  store double %c, ptr %c.addr, align 8, !tbaa !29
  store double %a, ptr %a.addr, align 8, !tbaa !29
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %1 = load double, ptr %b.addr, align 8, !tbaa !29
  %2 = load double, ptr %b.addr, align 8, !tbaa !29
  %3 = load double, ptr %c.addr, align 8, !tbaa !29
  %4 = load double, ptr %c.addr, align 8, !tbaa !29
  %mul1 = fmul double %3, %4
  %5 = call double @llvm.fmuladd.f64(double %1, double %2, double %mul1)
  %6 = load double, ptr %a.addr, align 8, !tbaa !29
  %7 = load double, ptr %a.addr, align 8, !tbaa !29
  %neg = fneg double %6
  %8 = call double @llvm.fmuladd.f64(double %neg, double %7, double %5)
  %mul = fmul double 5.000000e-01, %8
  %9 = load double, ptr %b.addr, align 8, !tbaa !29
  %10 = load double, ptr %c.addr, align 8, !tbaa !29
  %mul2 = fmul double %9, %10
  %div = fdiv double %mul, %mul2
  %call = call double @vtklibproj_aacos(ptr noundef %0, double noundef %div)
  ret double %call
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nounwind uwtable
define internal { double, double } @s_forward(double %lp.coerce0, double %lp.coerce1, ptr noundef %P) #0 {
entry:
  %retval = alloca %struct.XY, align 8
  %lp = alloca %struct.LP, align 8
  %P.addr = alloca ptr, align 8
  %Q = alloca ptr, align 8
  %sinphi = alloca double, align 8
  %cosphi = alloca double, align 8
  %a = alloca double, align 8
  %v = alloca [3 x %struct.VECT], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca %struct.VECT, align 8
  %0 = getelementptr inbounds { double, double }, ptr %lp, i32 0, i32 0
  store double %lp.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { double, double }, ptr %lp, i32 0, i32 1
  store double %lp.coerce1, ptr %1, align 8
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %retval, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %Q) #7
  %2 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %opaque = getelementptr inbounds %struct.PJconsts, ptr %2, i32 0, i32 50
  %3 = load ptr, ptr %opaque, align 8, !tbaa !14
  store ptr %3, ptr %Q, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sinphi) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %cosphi) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #7
  call void @llvm.lifetime.start.p0(i64 48, ptr %v) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  %phi = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 1
  %4 = load double, ptr %phi, align 8, !tbaa !43
  %call = call double @sin(double noundef %4) #7
  store double %call, ptr %sinphi, align 8, !tbaa !29
  %phi1 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 1
  %5 = load double, ptr %phi1, align 8, !tbaa !43
  %call2 = call double @cos(double noundef %5) #7
  store double %call2, ptr %cosphi, align 8, !tbaa !29
  store i32 0, ptr %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %i, align 4, !tbaa !15
  %cmp = icmp slt i32 %6, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.VECT], ptr %v, i64 0, i64 %idxprom
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #7
  %8 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %ctx = getelementptr inbounds %struct.PJconsts, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %ctx, align 8, !tbaa !16
  %phi3 = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 1
  %10 = load double, ptr %phi3, align 8, !tbaa !43
  %11 = load ptr, ptr %Q, align 8, !tbaa !4
  %c = getelementptr inbounds %struct.pj_opaque, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds [3 x %struct.anon], ptr %c, i64 0, i64 %idxprom4
  %phi6 = getelementptr inbounds %struct.anon, ptr %arrayidx5, i32 0, i32 0
  %13 = load double, ptr %phi6, align 8, !tbaa !19
  %sub = fsub double %10, %13
  %14 = load ptr, ptr %Q, align 8, !tbaa !4
  %c7 = getelementptr inbounds %struct.pj_opaque, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds [3 x %struct.anon], ptr %c7, i64 0, i64 %idxprom8
  %cosphi10 = getelementptr inbounds %struct.anon, ptr %arrayidx9, i32 0, i32 2
  %16 = load double, ptr %cosphi10, align 8, !tbaa !24
  %17 = load ptr, ptr %Q, align 8, !tbaa !4
  %c11 = getelementptr inbounds %struct.pj_opaque, ptr %17, i32 0, i32 0
  %18 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom12 = sext i32 %18 to i64
  %arrayidx13 = getelementptr inbounds [3 x %struct.anon], ptr %c11, i64 0, i64 %idxprom12
  %sinphi14 = getelementptr inbounds %struct.anon, ptr %arrayidx13, i32 0, i32 3
  %19 = load double, ptr %sinphi14, align 8, !tbaa !25
  %20 = load double, ptr %cosphi, align 8, !tbaa !29
  %21 = load double, ptr %sinphi, align 8, !tbaa !29
  %lam = getelementptr inbounds %struct.LP, ptr %lp, i32 0, i32 0
  %22 = load double, ptr %lam, align 8, !tbaa !42
  %23 = load ptr, ptr %Q, align 8, !tbaa !4
  %c15 = getelementptr inbounds %struct.pj_opaque, ptr %23, i32 0, i32 0
  %24 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom16 = sext i32 %24 to i64
  %arrayidx17 = getelementptr inbounds [3 x %struct.anon], ptr %c15, i64 0, i64 %idxprom16
  %lam18 = getelementptr inbounds %struct.anon, ptr %arrayidx17, i32 0, i32 1
  %25 = load double, ptr %lam18, align 8, !tbaa !22
  %sub19 = fsub double %22, %25
  %call20 = call { double, double } @vect(ptr noundef %9, double noundef %sub, double noundef %16, double noundef %19, double noundef %20, double noundef %21, double noundef %sub19)
  %26 = getelementptr inbounds { double, double }, ptr %tmp, i32 0, i32 0
  %27 = extractvalue { double, double } %call20, 0
  store double %27, ptr %26, align 8
  %28 = getelementptr inbounds { double, double }, ptr %tmp, i32 0, i32 1
  %29 = extractvalue { double, double } %call20, 1
  store double %29, ptr %28, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx, ptr align 8 %tmp, i64 16, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #7
  %30 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom21 = sext i32 %30 to i64
  %arrayidx22 = getelementptr inbounds [3 x %struct.VECT], ptr %v, i64 0, i64 %idxprom21
  %r = getelementptr inbounds %struct.VECT, ptr %arrayidx22, i32 0, i32 0
  %31 = load double, ptr %r, align 16, !tbaa !42
  %tobool = fcmp une double %31, 0.000000e+00
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %32 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom23 = sext i32 %32 to i64
  %arrayidx24 = getelementptr inbounds [3 x %struct.VECT], ptr %v, i64 0, i64 %idxprom23
  %Az = getelementptr inbounds %struct.VECT, ptr %arrayidx24, i32 0, i32 1
  %33 = load double, ptr %Az, align 8, !tbaa !43
  %34 = load ptr, ptr %Q, align 8, !tbaa !4
  %c25 = getelementptr inbounds %struct.pj_opaque, ptr %34, i32 0, i32 0
  %35 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom26 = sext i32 %35 to i64
  %arrayidx27 = getelementptr inbounds [3 x %struct.anon], ptr %c25, i64 0, i64 %idxprom26
  %v28 = getelementptr inbounds %struct.anon, ptr %arrayidx27, i32 0, i32 4
  %Az29 = getelementptr inbounds %struct.VECT, ptr %v28, i32 0, i32 1
  %36 = load double, ptr %Az29, align 8, !tbaa !44
  %sub30 = fsub double %33, %36
  %call31 = call double @vtklibproj_adjlon(double noundef %sub30)
  %37 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom32 = sext i32 %37 to i64
  %arrayidx33 = getelementptr inbounds [3 x %struct.VECT], ptr %v, i64 0, i64 %idxprom32
  %Az34 = getelementptr inbounds %struct.VECT, ptr %arrayidx33, i32 0, i32 1
  store double %call31, ptr %Az34, align 8, !tbaa !43
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %38 = load i32, ptr %i, align 4, !tbaa !15
  %inc = add nsw i32 %38, 1
  store i32 %inc, ptr %i, align 4, !tbaa !15
  br label %for.cond, !llvm.loop !45

for.end:                                          ; preds = %if.then, %for.cond
  %39 = load i32, ptr %i, align 4, !tbaa !15
  %cmp35 = icmp slt i32 %39, 3
  br i1 %cmp35, label %if.then36, label %if.else

if.then36:                                        ; preds = %for.end
  %40 = load ptr, ptr %Q, align 8, !tbaa !4
  %c37 = getelementptr inbounds %struct.pj_opaque, ptr %40, i32 0, i32 0
  %41 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom38 = sext i32 %41 to i64
  %arrayidx39 = getelementptr inbounds [3 x %struct.anon], ptr %c37, i64 0, i64 %idxprom38
  %p = getelementptr inbounds %struct.anon, ptr %arrayidx39, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %p, i64 16, i1 false), !tbaa.struct !28
  br label %if.end110

if.else:                                          ; preds = %for.end
  %42 = load ptr, ptr %Q, align 8, !tbaa !4
  %p40 = getelementptr inbounds %struct.pj_opaque, ptr %42, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %p40, i64 16, i1 false), !tbaa.struct !28
  store i32 0, ptr %i, align 4, !tbaa !15
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc104, %if.else
  %43 = load i32, ptr %i, align 4, !tbaa !15
  %cmp42 = icmp slt i32 %43, 3
  br i1 %cmp42, label %for.body43, label %for.end106

for.body43:                                       ; preds = %for.cond41
  %44 = load i32, ptr %i, align 4, !tbaa !15
  %cmp44 = icmp eq i32 %44, 2
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body43
  br label %cond.end

cond.false:                                       ; preds = %for.body43
  %45 = load i32, ptr %i, align 4, !tbaa !15
  %add = add nsw i32 %45, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, ptr %j, align 4, !tbaa !15
  %46 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %ctx45 = getelementptr inbounds %struct.PJconsts, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %ctx45, align 8, !tbaa !16
  %48 = load ptr, ptr %Q, align 8, !tbaa !4
  %c46 = getelementptr inbounds %struct.pj_opaque, ptr %48, i32 0, i32 0
  %49 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom47 = sext i32 %49 to i64
  %arrayidx48 = getelementptr inbounds [3 x %struct.anon], ptr %c46, i64 0, i64 %idxprom47
  %v49 = getelementptr inbounds %struct.anon, ptr %arrayidx48, i32 0, i32 4
  %r50 = getelementptr inbounds %struct.VECT, ptr %v49, i32 0, i32 0
  %50 = load double, ptr %r50, align 8, !tbaa !30
  %51 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom51 = sext i32 %51 to i64
  %arrayidx52 = getelementptr inbounds [3 x %struct.VECT], ptr %v, i64 0, i64 %idxprom51
  %r53 = getelementptr inbounds %struct.VECT, ptr %arrayidx52, i32 0, i32 0
  %52 = load double, ptr %r53, align 16, !tbaa !42
  %53 = load i32, ptr %j, align 4, !tbaa !15
  %idxprom54 = sext i32 %53 to i64
  %arrayidx55 = getelementptr inbounds [3 x %struct.VECT], ptr %v, i64 0, i64 %idxprom54
  %r56 = getelementptr inbounds %struct.VECT, ptr %arrayidx55, i32 0, i32 0
  %54 = load double, ptr %r56, align 16, !tbaa !42
  %call57 = call double @lc(ptr noundef %47, double noundef %50, double noundef %52, double noundef %54)
  store double %call57, ptr %a, align 8, !tbaa !29
  %55 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom58 = sext i32 %55 to i64
  %arrayidx59 = getelementptr inbounds [3 x %struct.VECT], ptr %v, i64 0, i64 %idxprom58
  %Az60 = getelementptr inbounds %struct.VECT, ptr %arrayidx59, i32 0, i32 1
  %56 = load double, ptr %Az60, align 8, !tbaa !43
  %cmp61 = fcmp olt double %56, 0.000000e+00
  br i1 %cmp61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %cond.end
  %57 = load double, ptr %a, align 8, !tbaa !29
  %fneg = fneg double %57
  store double %fneg, ptr %a, align 8, !tbaa !29
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %cond.end
  %58 = load i32, ptr %i, align 4, !tbaa !15
  %tobool64 = icmp ne i32 %58, 0
  br i1 %tobool64, label %if.else74, label %if.then65

if.then65:                                        ; preds = %if.end63
  %59 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom66 = sext i32 %59 to i64
  %arrayidx67 = getelementptr inbounds [3 x %struct.VECT], ptr %v, i64 0, i64 %idxprom66
  %r68 = getelementptr inbounds %struct.VECT, ptr %arrayidx67, i32 0, i32 0
  %60 = load double, ptr %r68, align 16, !tbaa !42
  %61 = load double, ptr %a, align 8, !tbaa !29
  %call69 = call double @cos(double noundef %61) #7
  %x = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 0
  %62 = load double, ptr %x, align 8, !tbaa !42
  %63 = call double @llvm.fmuladd.f64(double %60, double %call69, double %62)
  store double %63, ptr %x, align 8, !tbaa !42
  %64 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom70 = sext i32 %64 to i64
  %arrayidx71 = getelementptr inbounds [3 x %struct.VECT], ptr %v, i64 0, i64 %idxprom70
  %r72 = getelementptr inbounds %struct.VECT, ptr %arrayidx71, i32 0, i32 0
  %65 = load double, ptr %r72, align 16, !tbaa !42
  %66 = load double, ptr %a, align 8, !tbaa !29
  %call73 = call double @sin(double noundef %66) #7
  %y = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  %67 = load double, ptr %y, align 8, !tbaa !43
  %neg = fneg double %65
  %68 = call double @llvm.fmuladd.f64(double %neg, double %call73, double %67)
  store double %68, ptr %y, align 8, !tbaa !43
  br label %if.end103

if.else74:                                        ; preds = %if.end63
  %69 = load i32, ptr %i, align 4, !tbaa !15
  %cmp75 = icmp eq i32 %69, 1
  br i1 %cmp75, label %if.then76, label %if.else90

if.then76:                                        ; preds = %if.else74
  %70 = load ptr, ptr %Q, align 8, !tbaa !4
  %beta_1 = getelementptr inbounds %struct.pj_opaque, ptr %70, i32 0, i32 3
  %71 = load double, ptr %beta_1, align 8, !tbaa !34
  %72 = load double, ptr %a, align 8, !tbaa !29
  %sub77 = fsub double %71, %72
  store double %sub77, ptr %a, align 8, !tbaa !29
  %73 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom78 = sext i32 %73 to i64
  %arrayidx79 = getelementptr inbounds [3 x %struct.VECT], ptr %v, i64 0, i64 %idxprom78
  %r80 = getelementptr inbounds %struct.VECT, ptr %arrayidx79, i32 0, i32 0
  %74 = load double, ptr %r80, align 16, !tbaa !42
  %75 = load double, ptr %a, align 8, !tbaa !29
  %call81 = call double @cos(double noundef %75) #7
  %x82 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 0
  %76 = load double, ptr %x82, align 8, !tbaa !42
  %neg83 = fneg double %74
  %77 = call double @llvm.fmuladd.f64(double %neg83, double %call81, double %76)
  store double %77, ptr %x82, align 8, !tbaa !42
  %78 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom84 = sext i32 %78 to i64
  %arrayidx85 = getelementptr inbounds [3 x %struct.VECT], ptr %v, i64 0, i64 %idxprom84
  %r86 = getelementptr inbounds %struct.VECT, ptr %arrayidx85, i32 0, i32 0
  %79 = load double, ptr %r86, align 16, !tbaa !42
  %80 = load double, ptr %a, align 8, !tbaa !29
  %call87 = call double @sin(double noundef %80) #7
  %y88 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  %81 = load double, ptr %y88, align 8, !tbaa !43
  %neg89 = fneg double %79
  %82 = call double @llvm.fmuladd.f64(double %neg89, double %call87, double %81)
  store double %82, ptr %y88, align 8, !tbaa !43
  br label %if.end102

if.else90:                                        ; preds = %if.else74
  %83 = load ptr, ptr %Q, align 8, !tbaa !4
  %beta_2 = getelementptr inbounds %struct.pj_opaque, ptr %83, i32 0, i32 4
  %84 = load double, ptr %beta_2, align 8, !tbaa !35
  %85 = load double, ptr %a, align 8, !tbaa !29
  %sub91 = fsub double %84, %85
  store double %sub91, ptr %a, align 8, !tbaa !29
  %86 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom92 = sext i32 %86 to i64
  %arrayidx93 = getelementptr inbounds [3 x %struct.VECT], ptr %v, i64 0, i64 %idxprom92
  %r94 = getelementptr inbounds %struct.VECT, ptr %arrayidx93, i32 0, i32 0
  %87 = load double, ptr %r94, align 16, !tbaa !42
  %88 = load double, ptr %a, align 8, !tbaa !29
  %call95 = call double @cos(double noundef %88) #7
  %x96 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 0
  %89 = load double, ptr %x96, align 8, !tbaa !42
  %90 = call double @llvm.fmuladd.f64(double %87, double %call95, double %89)
  store double %90, ptr %x96, align 8, !tbaa !42
  %91 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom97 = sext i32 %91 to i64
  %arrayidx98 = getelementptr inbounds [3 x %struct.VECT], ptr %v, i64 0, i64 %idxprom97
  %r99 = getelementptr inbounds %struct.VECT, ptr %arrayidx98, i32 0, i32 0
  %92 = load double, ptr %r99, align 16, !tbaa !42
  %93 = load double, ptr %a, align 8, !tbaa !29
  %call100 = call double @sin(double noundef %93) #7
  %y101 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  %94 = load double, ptr %y101, align 8, !tbaa !43
  %95 = call double @llvm.fmuladd.f64(double %92, double %call100, double %94)
  store double %95, ptr %y101, align 8, !tbaa !43
  br label %if.end102

if.end102:                                        ; preds = %if.else90, %if.then76
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.then65
  br label %for.inc104

for.inc104:                                       ; preds = %if.end103
  %96 = load i32, ptr %i, align 4, !tbaa !15
  %inc105 = add nsw i32 %96, 1
  store i32 %inc105, ptr %i, align 4, !tbaa !15
  br label %for.cond41, !llvm.loop !46

for.end106:                                       ; preds = %for.cond41
  %x107 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 0
  %97 = load double, ptr %x107, align 8, !tbaa !42
  %mul = fmul double %97, 0x3FD5555555555555
  store double %mul, ptr %x107, align 8, !tbaa !42
  %y108 = getelementptr inbounds %struct.XY, ptr %retval, i32 0, i32 1
  %98 = load double, ptr %y108, align 8, !tbaa !43
  %mul109 = fmul double %98, 0x3FD5555555555555
  store double %mul109, ptr %y108, align 8, !tbaa !43
  br label %if.end110

if.end110:                                        ; preds = %for.end106, %if.then36
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr %v) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %cosphi) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %sinphi) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Q) #7
  %99 = load { double, double }, ptr %retval, align 8
  ret { double, double } %99
}

; Function Attrs: nounwind uwtable
define i32 @vtklibproj_pj_chamb_selftest() #0 {
entry:
  ret i32 0
}

declare ptr @vtklibproj_pj_dealloc(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

declare double @vtklibproj_aacos(ptr noundef, double noundef) #1

declare double @vtklibproj_aasin(ptr noundef, double noundef) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

; Function Attrs: nounwind
declare double @atan2(double noundef, double noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!8 = !{!9, !5, i64 48}
!9 = !{!"PJconsts", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !10, i64 208, !6, i64 216, !5, i64 272, !10, i64 280, !10, i64 284, !5, i64 288, !10, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !10, i64 336, !6, i64 340, !5, i64 344, !5, i64 352, !11, i64 360, !5, i64 368, !12, i64 376, !11, i64 408, !5, i64 416, !12, i64 424, !11, i64 456, !5, i64 464}
!10 = !{!"int", !6, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!13 = !{!9, !5, i64 56}
!14 = !{!9, !5, i64 464}
!15 = !{!10, !10, i64 0}
!16 = !{!9, !5, i64 0}
!17 = !{!9, !5, i64 64}
!18 = !{!6, !6, i64 0}
!19 = !{!20, !11, i64 0}
!20 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !21, i64 32, !21, i64 48, !11, i64 64}
!21 = !{!"", !11, i64 0, !11, i64 8}
!22 = !{!20, !11, i64 8}
!23 = !{!9, !11, i64 152}
!24 = !{!20, !11, i64 16}
!25 = !{!20, !11, i64 24}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{i64 0, i64 8, !29, i64 8, i64 8, !29}
!29 = !{!11, !11, i64 0}
!30 = !{!20, !11, i64 32}
!31 = distinct !{!31, !27}
!32 = !{!33, !11, i64 232}
!33 = !{!"pj_opaque", !6, i64 0, !21, i64 216, !11, i64 232, !11, i64 240, !11, i64 248}
!34 = !{!33, !11, i64 240}
!35 = !{!33, !11, i64 248}
!36 = !{!20, !11, i64 56}
!37 = !{!33, !11, i64 224}
!38 = !{!20, !11, i64 48}
!39 = !{!33, !11, i64 216}
!40 = !{!9, !11, i64 104}
!41 = !{!9, !5, i64 8}
!42 = !{!21, !11, i64 0}
!43 = !{!21, !11, i64 8}
!44 = !{!20, !11, i64 40}
!45 = distinct !{!45, !27}
!46 = distinct !{!46, !27}
