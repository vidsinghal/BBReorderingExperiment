; ModuleID = 'samples/418.bc'
source_filename = "/local-ssd/proj-vvgwbgdlkvmllv7sgmjr4ouw3sqrvbvy-build/aidengro/spack-stage-proj-5.2.0-vvgwbgdlkvmllv7sgmjr4ouw3sqrvbvy/spack-src/src/geod_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geodesic = type { double, double, double, double, double, double, double, double, double }
%struct.geod_geodesic = type { double, double, double, double, double, double, double, double, double, [6 x double], [15 x double], [21 x double] }
%struct.geod_geodesicline = type { double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, [7 x double], [7 x double], [7 x double], [6 x double], [6 x double], i32 }
%union.PROJVALUE = type { double }
%struct.ARG_list = type { ptr, i8, [1 x i8] }
%struct.PJ_UNITS = type { ptr, ptr, ptr, double }

@.str = private unnamed_addr constant [36 x i8] c"no arguments in initialization list\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"memory allocation failed\00", align 1
@GEODESIC = dso_local global %struct.geodesic zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"ellipse setup failure\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"sunits\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"%s unknown unit conversion id\00", align 1
@to_meter = dso_local global double 0.000000e+00, align 8
@fr_meter = dso_local global double 0.000000e+00, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"tlat_1\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"rlat_1\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"rlon_1\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"tlat_2\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"rlat_2\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"rlon_2\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"dS\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"rA\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"incomplete geodesic/arc info\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"in_A\00", align 1
@n_alpha = dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"rdel_A\00", align 1
@del_alpha = dso_local global double 0.000000e+00, align 8
@.str.16 = private unnamed_addr constant [17 x i8] c"del azimuth == 0\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"ddel_S\00", align 1
@n_S = dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"in_S\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"no interval divisor selected\00", align 1
@GlobalGeodesic = dso_local global %struct.geod_geodesic zeroinitializer, align 8
@GlobalGeodesicLine = dso_local global %struct.geod_geodesicline zeroinitializer, align 8

; Function Attrs: nounwind uwtable
define dso_local void @geod_set(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %start = alloca ptr, align 8
  %curr = alloca ptr, align 8
  %es = alloca double, align 8
  %name = alloca ptr, align 8
  %i = alloca i32, align 4
  %coerce = alloca %union.PROJVALUE, align 8
  %s = alloca ptr, align 8
  %unit_list = alloca ptr, align 8
  %coerce42 = alloca %union.PROJVALUE, align 8
  %del_S = alloca double, align 8
  %coerce47 = alloca %union.PROJVALUE, align 8
  %coerce50 = alloca %union.PROJVALUE, align 8
  %coerce53 = alloca %union.PROJVALUE, align 8
  %coerce58 = alloca %union.PROJVALUE, align 8
  %coerce61 = alloca %union.PROJVALUE, align 8
  %coerce65 = alloca %union.PROJVALUE, align 8
  %coerce70 = alloca %union.PROJVALUE, align 8
  %coerce76 = alloca %union.PROJVALUE, align 8
  %coerce81 = alloca %union.PROJVALUE, align 8
  %coerce88 = alloca %union.PROJVALUE, align 8
  %coerce96 = alloca %union.PROJVALUE, align 8
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #6
  store ptr null, ptr %start, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %curr) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %es) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  %0 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i32, ptr, ...) @emess(i32 noundef 1, ptr noundef @.str)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %call = call ptr @pj_mkparam(ptr noundef %2)
  store ptr %call, ptr %curr, align 8, !tbaa !9
  store ptr %call, ptr %start, align 8, !tbaa !9
  %3 = load ptr, ptr %curr, align 8, !tbaa !9
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  call void (i32, ptr, ...) @emess(i32 noundef 1, ptr noundef @.str.1)
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end2
  %4 = load ptr, ptr %curr, align 8, !tbaa !9
  %cmp3 = icmp ne ptr %4, null
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %5, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp4, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx5, align 8, !tbaa !9
  %call6 = call ptr @pj_mkparam(ptr noundef %10)
  %11 = load ptr, ptr %curr, align 8, !tbaa !9
  %next = getelementptr inbounds %struct.ARG_list, ptr %11, i32 0, i32 0
  store ptr %call6, ptr %next, align 8, !tbaa !11
  %12 = load ptr, ptr %curr, align 8, !tbaa !9
  %next7 = getelementptr inbounds %struct.ARG_list, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %next7, align 8, !tbaa !11
  %tobool8 = icmp ne ptr %13, null
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %for.body
  call void (i32, ptr, ...) @emess(i32 noundef 1, ptr noundef @.str.1)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %for.body
  %14 = load ptr, ptr %curr, align 8, !tbaa !9
  %next11 = getelementptr inbounds %struct.ARG_list, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %next11, align 8, !tbaa !11
  store ptr %15, ptr %curr, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %land.end
  %call12 = call ptr @pj_get_default_ctx()
  %17 = load ptr, ptr %start, align 8, !tbaa !9
  %call13 = call i32 @pj_ell_set(ptr noundef %call12, ptr noundef %17, ptr noundef @GEODESIC, ptr noundef %es)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.end
  call void (i32, ptr, ...) @emess(i32 noundef 1, ptr noundef @.str.2)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %for.end
  %18 = load ptr, ptr %start, align 8, !tbaa !9
  %call17 = call i64 @pj_param(ptr noundef null, ptr noundef %18, ptr noundef @.str.3)
  %coerce.dive = getelementptr inbounds %union.PROJVALUE, ptr %coerce, i32 0, i32 0
  store i64 %call17, ptr %coerce.dive, align 8
  %19 = load ptr, ptr %coerce, align 8, !tbaa !15
  store ptr %19, ptr %name, align 8, !tbaa !9
  %cmp18 = icmp ne ptr %19, null
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %unit_list) #6
  %call20 = call ptr @proj_list_units()
  store ptr %call20, ptr %unit_list, align 8, !tbaa !9
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc30, %if.then19
  %20 = load ptr, ptr %unit_list, align 8, !tbaa !9
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds %struct.PJ_UNITS, ptr %20, i64 %idxprom22
  %id = getelementptr inbounds %struct.PJ_UNITS, ptr %arrayidx23, i32 0, i32 0
  %22 = load ptr, ptr %id, align 8, !tbaa !16
  store ptr %22, ptr %s, align 8, !tbaa !9
  %tobool24 = icmp ne ptr %22, null
  br i1 %tobool24, label %land.rhs25, label %land.end28

land.rhs25:                                       ; preds = %for.cond21
  %23 = load ptr, ptr %name, align 8, !tbaa !9
  %24 = load ptr, ptr %s, align 8, !tbaa !9
  %call26 = call i32 @strcmp(ptr noundef %23, ptr noundef %24) #7
  %tobool27 = icmp ne i32 %call26, 0
  br label %land.end28

land.end28:                                       ; preds = %land.rhs25, %for.cond21
  %25 = phi i1 [ false, %for.cond21 ], [ %tobool27, %land.rhs25 ]
  br i1 %25, label %for.body29, label %for.end32

for.body29:                                       ; preds = %land.end28
  br label %for.inc30

for.inc30:                                        ; preds = %for.body29
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %inc31 = add nsw i32 %26, 1
  store i32 %inc31, ptr %i, align 4, !tbaa !5
  br label %for.cond21, !llvm.loop !19

for.end32:                                        ; preds = %land.end28
  %27 = load ptr, ptr %s, align 8, !tbaa !9
  %tobool33 = icmp ne ptr %27, null
  br i1 %tobool33, label %if.end35, label %if.then34

if.then34:                                        ; preds = %for.end32
  %28 = load ptr, ptr %name, align 8, !tbaa !9
  call void (i32, ptr, ...) @emess(i32 noundef 1, ptr noundef @.str.4, ptr noundef %28)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %for.end32
  %29 = load ptr, ptr %unit_list, align 8, !tbaa !9
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %30 to i64
  %arrayidx37 = getelementptr inbounds %struct.PJ_UNITS, ptr %29, i64 %idxprom36
  %factor = getelementptr inbounds %struct.PJ_UNITS, ptr %arrayidx37, i32 0, i32 3
  %31 = load double, ptr %factor, align 8, !tbaa !20
  store double %31, ptr @to_meter, align 8, !tbaa !21
  %32 = load double, ptr @to_meter, align 8, !tbaa !21
  %div = fdiv double 1.000000e+00, %32
  store double %div, ptr @fr_meter, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(i64 8, ptr %unit_list) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #6
  br label %if.end38

if.else:                                          ; preds = %if.end16
  store double 1.000000e+00, ptr @fr_meter, align 8, !tbaa !21
  store double 1.000000e+00, ptr @to_meter, align 8, !tbaa !21
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.end35
  %33 = load double, ptr %es, align 8, !tbaa !21
  %34 = load double, ptr %es, align 8, !tbaa !21
  %sub = fsub double 1.000000e+00, %34
  %call39 = call double @sqrt(double noundef %sub) #6
  %add = fadd double 1.000000e+00, %call39
  %div40 = fdiv double %33, %add
  store double %div40, ptr getelementptr inbounds (%struct.geodesic, ptr @GEODESIC, i32 0, i32 1), align 8, !tbaa !22
  call void @geod_ini()
  %35 = load ptr, ptr %start, align 8, !tbaa !9
  %call41 = call i64 @pj_param(ptr noundef null, ptr noundef %35, ptr noundef @.str.5)
  %coerce.dive43 = getelementptr inbounds %union.PROJVALUE, ptr %coerce42, i32 0, i32 0
  store i64 %call41, ptr %coerce.dive43, align 8
  %36 = load i32, ptr %coerce42, align 8, !tbaa !15
  %tobool44 = icmp ne i32 %36, 0
  br i1 %tobool44, label %if.then45, label %if.end104

if.then45:                                        ; preds = %if.end38
  call void @llvm.lifetime.start.p0(i64 8, ptr %del_S) #6
  %37 = load ptr, ptr %start, align 8, !tbaa !9
  %call46 = call i64 @pj_param(ptr noundef null, ptr noundef %37, ptr noundef @.str.6)
  %coerce.dive48 = getelementptr inbounds %union.PROJVALUE, ptr %coerce47, i32 0, i32 0
  store i64 %call46, ptr %coerce.dive48, align 8
  %38 = load double, ptr %coerce47, align 8, !tbaa !15
  store double %38, ptr getelementptr inbounds (%struct.geodesic, ptr @GEODESIC, i32 0, i32 3), align 8, !tbaa !24
  %39 = load ptr, ptr %start, align 8, !tbaa !9
  %call49 = call i64 @pj_param(ptr noundef null, ptr noundef %39, ptr noundef @.str.7)
  %coerce.dive51 = getelementptr inbounds %union.PROJVALUE, ptr %coerce50, i32 0, i32 0
  store i64 %call49, ptr %coerce.dive51, align 8
  %40 = load double, ptr %coerce50, align 8, !tbaa !15
  store double %40, ptr getelementptr inbounds (%struct.geodesic, ptr @GEODESIC, i32 0, i32 2), align 8, !tbaa !25
  %41 = load ptr, ptr %start, align 8, !tbaa !9
  %call52 = call i64 @pj_param(ptr noundef null, ptr noundef %41, ptr noundef @.str.8)
  %coerce.dive54 = getelementptr inbounds %union.PROJVALUE, ptr %coerce53, i32 0, i32 0
  store i64 %call52, ptr %coerce.dive54, align 8
  %42 = load i32, ptr %coerce53, align 8, !tbaa !15
  %tobool55 = icmp ne i32 %42, 0
  br i1 %tobool55, label %if.then56, label %if.else63

if.then56:                                        ; preds = %if.then45
  %43 = load ptr, ptr %start, align 8, !tbaa !9
  %call57 = call i64 @pj_param(ptr noundef null, ptr noundef %43, ptr noundef @.str.9)
  %coerce.dive59 = getelementptr inbounds %union.PROJVALUE, ptr %coerce58, i32 0, i32 0
  store i64 %call57, ptr %coerce.dive59, align 8
  %44 = load double, ptr %coerce58, align 8, !tbaa !15
  store double %44, ptr getelementptr inbounds (%struct.geodesic, ptr @GEODESIC, i32 0, i32 6), align 8, !tbaa !26
  %45 = load ptr, ptr %start, align 8, !tbaa !9
  %call60 = call i64 @pj_param(ptr noundef null, ptr noundef %45, ptr noundef @.str.10)
  %coerce.dive62 = getelementptr inbounds %union.PROJVALUE, ptr %coerce61, i32 0, i32 0
  store i64 %call60, ptr %coerce.dive62, align 8
  %46 = load double, ptr %coerce61, align 8, !tbaa !15
  store double %46, ptr getelementptr inbounds (%struct.geodesic, ptr @GEODESIC, i32 0, i32 5), align 8, !tbaa !27
  call void @geod_inv()
  call void @geod_pre()
  br label %if.end74

if.else63:                                        ; preds = %if.then45
  %47 = load ptr, ptr %start, align 8, !tbaa !9
  %call64 = call i64 @pj_param(ptr noundef null, ptr noundef %47, ptr noundef @.str.11)
  %coerce.dive66 = getelementptr inbounds %union.PROJVALUE, ptr %coerce65, i32 0, i32 0
  store i64 %call64, ptr %coerce.dive66, align 8
  %48 = load double, ptr %coerce65, align 8, !tbaa !15
  store double %48, ptr getelementptr inbounds (%struct.geodesic, ptr @GEODESIC, i32 0, i32 8), align 8, !tbaa !28
  %cmp67 = fcmp une double %48, 0.000000e+00
  br i1 %cmp67, label %if.then68, label %if.else72

if.then68:                                        ; preds = %if.else63
  %49 = load ptr, ptr %start, align 8, !tbaa !9
  %call69 = call i64 @pj_param(ptr noundef null, ptr noundef %49, ptr noundef @.str.12)
  %coerce.dive71 = getelementptr inbounds %union.PROJVALUE, ptr %coerce70, i32 0, i32 0
  store i64 %call69, ptr %coerce.dive71, align 8
  %50 = load double, ptr %coerce70, align 8, !tbaa !15
  store double %50, ptr getelementptr inbounds (%struct.geodesic, ptr @GEODESIC, i32 0, i32 4), align 8, !tbaa !29
  call void @geod_pre()
  call void @geod_for()
  br label %if.end73

if.else72:                                        ; preds = %if.else63
  call void (i32, ptr, ...) @emess(i32 noundef 1, ptr noundef @.str.13)
  br label %if.end73

if.end73:                                         ; preds = %if.else72, %if.then68
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then56
  %51 = load ptr, ptr %start, align 8, !tbaa !9
  %call75 = call i64 @pj_param(ptr noundef null, ptr noundef %51, ptr noundef @.str.14)
  %coerce.dive77 = getelementptr inbounds %union.PROJVALUE, ptr %coerce76, i32 0, i32 0
  store i64 %call75, ptr %coerce.dive77, align 8
  %52 = load i32, ptr %coerce76, align 8, !tbaa !15
  store i32 %52, ptr @n_alpha, align 4, !tbaa !5
  %cmp78 = icmp sgt i32 %52, 0
  br i1 %cmp78, label %if.then79, label %if.else86

if.then79:                                        ; preds = %if.end74
  %53 = load ptr, ptr %start, align 8, !tbaa !9
  %call80 = call i64 @pj_param(ptr noundef null, ptr noundef %53, ptr noundef @.str.15)
  %coerce.dive82 = getelementptr inbounds %union.PROJVALUE, ptr %coerce81, i32 0, i32 0
  store i64 %call80, ptr %coerce.dive82, align 8
  %54 = load double, ptr %coerce81, align 8, !tbaa !15
  store double %54, ptr @del_alpha, align 8, !tbaa !21
  %cmp83 = fcmp oeq double %54, 0.000000e+00
  br i1 %cmp83, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.then79
  call void (i32, ptr, ...) @emess(i32 noundef 1, ptr noundef @.str.16)
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %if.then79
  br label %if.end103

if.else86:                                        ; preds = %if.end74
  %55 = load ptr, ptr %start, align 8, !tbaa !9
  %call87 = call i64 @pj_param(ptr noundef null, ptr noundef %55, ptr noundef @.str.17)
  %coerce.dive89 = getelementptr inbounds %union.PROJVALUE, ptr %coerce88, i32 0, i32 0
  store i64 %call87, ptr %coerce.dive89, align 8
  %56 = load double, ptr %coerce88, align 8, !tbaa !15
  %57 = call double @llvm.fabs.f64(double %56)
  store double %57, ptr %del_S, align 8, !tbaa !21
  %cmp90 = fcmp une double %57, 0.000000e+00
  br i1 %cmp90, label %if.then91, label %if.else94

if.then91:                                        ; preds = %if.else86
  %58 = load double, ptr getelementptr inbounds (%struct.geodesic, ptr @GEODESIC, i32 0, i32 8), align 8, !tbaa !28
  %59 = load double, ptr %del_S, align 8, !tbaa !21
  %div92 = fdiv double %58, %59
  %add93 = fadd double %div92, 5.000000e-01
  %conv = fptosi double %add93 to i32
  store i32 %conv, ptr @n_S, align 4, !tbaa !5
  br label %if.end102

if.else94:                                        ; preds = %if.else86
  %60 = load ptr, ptr %start, align 8, !tbaa !9
  %call95 = call i64 @pj_param(ptr noundef null, ptr noundef %60, ptr noundef @.str.18)
  %coerce.dive97 = getelementptr inbounds %union.PROJVALUE, ptr %coerce96, i32 0, i32 0
  store i64 %call95, ptr %coerce.dive97, align 8
  %61 = load i32, ptr %coerce96, align 8, !tbaa !15
  store i32 %61, ptr @n_S, align 4, !tbaa !5
  %cmp98 = icmp sle i32 %61, 0
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %if.else94
  call void (i32, ptr, ...) @emess(i32 noundef 1, ptr noundef @.str.19)
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %if.else94
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.then91
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.end85
  call void @llvm.lifetime.end.p0(i64 8, ptr %del_S) #6
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.end38
  br label %for.cond105

for.cond105:                                      ; preds = %for.inc109, %if.end104
  %62 = load ptr, ptr %start, align 8, !tbaa !9
  %tobool106 = icmp ne ptr %62, null
  br i1 %tobool106, label %for.body107, label %for.end110

for.body107:                                      ; preds = %for.cond105
  %63 = load ptr, ptr %start, align 8, !tbaa !9
  %next108 = getelementptr inbounds %struct.ARG_list, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %next108, align 8, !tbaa !11
  store ptr %64, ptr %curr, align 8, !tbaa !9
  %65 = load ptr, ptr %start, align 8, !tbaa !9
  call void @pj_dalloc(ptr noundef %65)
  br label %for.inc109

for.inc109:                                       ; preds = %for.body107
  %66 = load ptr, ptr %curr, align 8, !tbaa !9
  store ptr %66, ptr %start, align 8, !tbaa !9
  br label %for.cond105, !llvm.loop !30

for.end110:                                       ; preds = %for.cond105
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %es) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %curr) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @emess(i32 noundef, ptr noundef, ...) #2

declare ptr @pj_mkparam(ptr noundef) #2

declare i32 @pj_ell_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @pj_get_default_ctx() #2

declare i64 @pj_param(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @proj_list_units() #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) #4

declare void @geod_ini() #2

declare void @geod_inv() #2

declare void @geod_pre() #2

declare void @geod_for() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

declare void @pj_dalloc(ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!11 = !{!12, !10, i64 0}
!12 = !{!"ARG_list", !10, i64 0, !7, i64 8, !7, i64 9}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!7, !7, i64 0}
!16 = !{!17, !10, i64 0}
!17 = !{!"PJ_UNITS", !10, i64 0, !10, i64 8, !10, i64 16, !18, i64 24}
!18 = !{!"double", !7, i64 0}
!19 = distinct !{!19, !14}
!20 = !{!17, !18, i64 24}
!21 = !{!18, !18, i64 0}
!22 = !{!23, !18, i64 8}
!23 = !{!"geodesic", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64}
!24 = !{!23, !18, i64 24}
!25 = !{!23, !18, i64 16}
!26 = !{!23, !18, i64 48}
!27 = !{!23, !18, i64 40}
!28 = !{!23, !18, i64 64}
!29 = !{!23, !18, i64 32}
!30 = distinct !{!30, !14}
