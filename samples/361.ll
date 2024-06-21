; ModuleID = 'samples/361.bc'
source_filename = "../scipy/_lib/unuran/unuran/src/methods/hinv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unur_distr = type { %union.anon, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr }
%union.anon = type { %struct.unur_distr_cont }
%struct.unur_distr_cont = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, double, [5 x double], i32, [5 x ptr], [5 x i32], double, double, double, [2 x double], [2 x double], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.unur_par = type { ptr, i64, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.unur_hinv_par = type { i32, double, double, double, double, ptr, i32, i32 }
%struct.unur_gen = type { ptr, %union.anon.0, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i64, i32, ptr, ptr, ptr, ptr, ptr }
%union.anon.0 = type { ptr }
%struct.unur_hinv_gen = type { i32, i32, ptr, ptr, i32, double, double, double, double, double, double, double, double, ptr, double, double, i32, ptr, i32, double, double }
%struct.unur_hinv_interval = type { [6 x double], double, double, double, double, ptr }
%struct.unur_urng = type { ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"HINV\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"../scipy/_lib/unuran/unuran/src/methods/hinv.c\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"CDF\00", align 1
@_unur_default_debugflag = external global i32, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"PDF\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"dPDF\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"u-resolution\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"u-resolution so small that problems may occur\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"number of starting points < 1\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"starting points not strictly monotonically increasing\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"domain (+/- UNUR_INFINITY not allowed)\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"guide table size < 0\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"maximum number of intervals < 1000\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"domain, increase left boundary\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"domain, decrease right boundary\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"domain, left >= right\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"CDF values very close\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"CDF values at boundary points too close\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"U not in [0,1]\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"generator ID: %s\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"distribution:\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"   functions = CDF\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c" PDF\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c" dPDF\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"   domain    = (%g, %g)\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"   [truncated from (%g, %g)]\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"   mode      = %g\0A\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"\0A[ Hint: %s ]\0A\00", align 1
@.str.33 = private unnamed_addr constant [66 x i8] c"You may set the \22mode\22 of the distribution in case of a high peak\00", align 1
@.str.34 = private unnamed_addr constant [53 x i8] c"method: HINV (Hermite approximation of INVerse CDF)\0A\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"   order of polynomial = %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"performance characteristics:\0A\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"   truncated domain = (%g,%g)\0A\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"   Prob(X<domain)   = %g\0A\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"   Prob(X>domain)   = %g\0A\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"   u-error         <= %g  (mean = %g)\0A\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"   # intervals      = %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"parameters:\0A\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"   order = %d  %s\0A\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"[default]\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"   u_resolution = %g  %s\0A\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"   max_intervals = %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"   boundary = (%g,%g)  %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"[computed]\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"[ Hint: %s ]\0A\00", align 1
@.str.50 = private unnamed_addr constant [45 x i8] c"You can set \22order=5\22 to decrease #intervals\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"[ Hint: %s\0A\09%s ]\0A\00", align 1
@.str.52 = private unnamed_addr constant [59 x i8] c"You can decrease the u-error by decreasing \22u_resolution\22.\00", align 1
@.str.53 = private unnamed_addr constant [49 x i8] c"(it is bounded by the machine epsilon, however.)\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"CDF not increasing\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"too many intervals\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"cannot find l.h.s. of domain\00", align 1
@.str.57 = private unnamed_addr constant [29 x i8] c"cannot find r.h.s. of domain\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"CDF(x) < 0.\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"CDF(x) > 1.\00", align 1
@.str.60 = private unnamed_addr constant [99 x i8] c"one or more intervals very short; possibly due to numerical problems with a pole or very flat tail\00", align 1
@.str.61 = private unnamed_addr constant [78 x i8] c"NaN occured; possibly due to numerical problems with a pole or very flat tail\00", align 1

; Function Attrs: nounwind uwtable
define hidden ptr @unur_hinv_new(ptr noundef %distr) #0 {
entry:
  %retval = alloca ptr, align 8
  %distr.addr = alloca ptr, align 8
  %par = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %distr, ptr %distr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %par) #6
  %0 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 302, ptr noundef @.str.2, i32 noundef 100, ptr noundef @.str.3)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.unur_distr, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %type, align 8, !tbaa !8
  %cmp = icmp ne i32 %2, 16
  br i1 %cmp, label %if.then1, label %if.end5

if.then1:                                         ; preds = %if.end
  br label %do.body2

do.body2:                                         ; preds = %if.then1
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 306, ptr noundef @.str.2, i32 noundef 24, ptr noundef @.str.3)
  br label %do.cond3

do.cond3:                                         ; preds = %do.body2
  br label %do.end4

do.end4:                                          ; preds = %do.cond3
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.unur_distr, ptr %3, i32 0, i32 0
  %cdf = getelementptr inbounds %struct.unur_distr_cont, ptr %data, i32 0, i32 2
  %4 = load ptr, ptr %cdf, align 8, !tbaa !11
  %cmp6 = icmp eq ptr %4, null
  br i1 %cmp6, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end5
  br label %do.body8

do.body8:                                         ; preds = %if.then7
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 310, ptr noundef @.str.2, i32 noundef 22, ptr noundef @.str.4)
  br label %do.cond9

do.cond9:                                         ; preds = %do.body8
  br label %do.end10

do.end10:                                         ; preds = %do.cond9
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %call = call ptr @_unur_par_new(i64 noundef 56)
  store ptr %call, ptr %par, align 8, !tbaa !4
  %5 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %par, align 8, !tbaa !4
  %distr12 = getelementptr inbounds %struct.unur_par, ptr %6, i32 0, i32 8
  store ptr %5, ptr %distr12, align 8, !tbaa !12
  %7 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data13 = getelementptr inbounds %struct.unur_distr, ptr %7, i32 0, i32 0
  %pdf = getelementptr inbounds %struct.unur_distr_cont, ptr %data13, i32 0, i32 0
  %8 = load ptr, ptr %pdf, align 8, !tbaa !11
  %tobool14 = icmp ne ptr %8, null
  %9 = zext i1 %tobool14 to i64
  %cond = select i1 %tobool14, i32 3, i32 1
  %10 = load ptr, ptr %par, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_par, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %datap, align 8, !tbaa !15
  %order = getelementptr inbounds %struct.unur_hinv_par, ptr %11, i32 0, i32 0
  store i32 %cond, ptr %order, align 8, !tbaa !16
  %12 = load ptr, ptr %par, align 8, !tbaa !4
  %datap15 = getelementptr inbounds %struct.unur_par, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %datap15, align 8, !tbaa !15
  %u_resolution = getelementptr inbounds %struct.unur_hinv_par, ptr %13, i32 0, i32 1
  store double 1.000000e-10, ptr %u_resolution, align 8, !tbaa !19
  %14 = load ptr, ptr %par, align 8, !tbaa !4
  %datap16 = getelementptr inbounds %struct.unur_par, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %datap16, align 8, !tbaa !15
  %guide_factor = getelementptr inbounds %struct.unur_hinv_par, ptr %15, i32 0, i32 2
  store double 1.000000e+00, ptr %guide_factor, align 8, !tbaa !20
  %16 = load ptr, ptr %par, align 8, !tbaa !4
  %datap17 = getelementptr inbounds %struct.unur_par, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %datap17, align 8, !tbaa !15
  %bleft = getelementptr inbounds %struct.unur_hinv_par, ptr %17, i32 0, i32 3
  store double -1.000000e+20, ptr %bleft, align 8, !tbaa !21
  %18 = load ptr, ptr %par, align 8, !tbaa !4
  %datap18 = getelementptr inbounds %struct.unur_par, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %datap18, align 8, !tbaa !15
  %bright = getelementptr inbounds %struct.unur_hinv_par, ptr %19, i32 0, i32 4
  store double 1.000000e+20, ptr %bright, align 8, !tbaa !22
  %20 = load ptr, ptr %par, align 8, !tbaa !4
  %datap19 = getelementptr inbounds %struct.unur_par, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %datap19, align 8, !tbaa !15
  %max_ivs = getelementptr inbounds %struct.unur_hinv_par, ptr %21, i32 0, i32 7
  store i32 1000000, ptr %max_ivs, align 4, !tbaa !23
  %22 = load ptr, ptr %par, align 8, !tbaa !4
  %datap20 = getelementptr inbounds %struct.unur_par, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %datap20, align 8, !tbaa !15
  %stp = getelementptr inbounds %struct.unur_hinv_par, ptr %23, i32 0, i32 5
  store ptr null, ptr %stp, align 8, !tbaa !24
  %24 = load ptr, ptr %par, align 8, !tbaa !4
  %datap21 = getelementptr inbounds %struct.unur_par, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %datap21, align 8, !tbaa !15
  %n_stp = getelementptr inbounds %struct.unur_hinv_par, ptr %25, i32 0, i32 6
  store i32 0, ptr %n_stp, align 8, !tbaa !25
  %26 = load ptr, ptr %par, align 8, !tbaa !4
  %method = getelementptr inbounds %struct.unur_par, ptr %26, i32 0, i32 3
  store i32 33554944, ptr %method, align 8, !tbaa !26
  %27 = load ptr, ptr %par, align 8, !tbaa !4
  %variant = getelementptr inbounds %struct.unur_par, ptr %27, i32 0, i32 4
  store i32 0, ptr %variant, align 4, !tbaa !27
  %28 = load ptr, ptr %par, align 8, !tbaa !4
  %set = getelementptr inbounds %struct.unur_par, ptr %28, i32 0, i32 5
  store i32 0, ptr %set, align 8, !tbaa !28
  %call22 = call ptr @unur_get_default_urng()
  %29 = load ptr, ptr %par, align 8, !tbaa !4
  %urng = getelementptr inbounds %struct.unur_par, ptr %29, i32 0, i32 6
  store ptr %call22, ptr %urng, align 8, !tbaa !29
  %30 = load ptr, ptr %par, align 8, !tbaa !4
  %urng_aux = getelementptr inbounds %struct.unur_par, ptr %30, i32 0, i32 7
  store ptr null, ptr %urng_aux, align 8, !tbaa !30
  %31 = load i32, ptr @_unur_default_debugflag, align 4, !tbaa !31
  %32 = load ptr, ptr %par, align 8, !tbaa !4
  %debug = getelementptr inbounds %struct.unur_par, ptr %32, i32 0, i32 10
  store i32 %31, ptr %debug, align 4, !tbaa !32
  %33 = load ptr, ptr %par, align 8, !tbaa !4
  %init = getelementptr inbounds %struct.unur_par, ptr %33, i32 0, i32 2
  store ptr @_unur_hinv_init, ptr %init, align 8, !tbaa !33
  %34 = load ptr, ptr %par, align 8, !tbaa !4
  store ptr %34, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end10, %do.end4, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %par) #6
  %35 = load ptr, ptr %retval, align 8
  ret ptr %35
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @_unur_error_x(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare ptr @_unur_par_new(i64 noundef) #2

declare ptr @unur_get_default_urng() #2

; Function Attrs: nounwind uwtable
define internal ptr @_unur_hinv_init(ptr noundef %par) #0 {
entry:
  %retval = alloca ptr, align 8
  %par.addr = alloca ptr, align 8
  %gen = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %par, ptr %par.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %gen) #6
  %0 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 740, ptr noundef @.str.2, i32 noundef 100, ptr noundef @.str.3)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %method = getelementptr inbounds %struct.unur_par, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %method, align 8, !tbaa !26
  %cmp = icmp ne i32 %2, 33554944
  br i1 %cmp, label %if.then1, label %if.end5

if.then1:                                         ; preds = %if.end
  br label %do.body2

do.body2:                                         ; preds = %if.then1
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 744, ptr noundef @.str.2, i32 noundef 35, ptr noundef @.str.3)
  br label %do.cond3

do.cond3:                                         ; preds = %do.body2
  br label %do.end4

do.end4:                                          ; preds = %do.cond3
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %call = call ptr @_unur_hinv_create(ptr noundef %3)
  store ptr %call, ptr %gen, align 8, !tbaa !4
  br label %do.body6

do.body6:                                         ; preds = %if.end5
  %4 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_par, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %datap, align 8, !tbaa !15
  call void @free(ptr noundef %5) #6
  %6 = load ptr, ptr %par.addr, align 8, !tbaa !4
  call void @free(ptr noundef %6) #6
  br label %do.cond7

do.cond7:                                         ; preds = %do.body6
  br label %do.end8

do.end8:                                          ; preds = %do.cond7
  %7 = load ptr, ptr %gen, align 8, !tbaa !4
  %tobool9 = icmp ne ptr %7, null
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %do.end8
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %do.end8
  %8 = load ptr, ptr %gen, align 8, !tbaa !4
  %call12 = call i32 @_unur_hinv_check_par(ptr noundef %8)
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  %9 = load ptr, ptr %gen, align 8, !tbaa !4
  call void @_unur_hinv_free(ptr noundef %9)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %10 = load ptr, ptr %gen, align 8, !tbaa !4
  %call16 = call i32 @_unur_hinv_create_table(ptr noundef %10)
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  %11 = load ptr, ptr %gen, align 8, !tbaa !4
  call void @_unur_hinv_free(ptr noundef %11)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %12 = load ptr, ptr %gen, align 8, !tbaa !4
  %call20 = call i32 @_unur_hinv_list_to_array(ptr noundef %12)
  %13 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap21 = getelementptr inbounds %struct.unur_gen, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %datap21, align 8, !tbaa !34
  %intervals = getelementptr inbounds %struct.unur_hinv_gen, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %intervals, align 8, !tbaa !36
  %arrayidx = getelementptr inbounds double, ptr %15, i64 0
  %16 = load double, ptr %arrayidx, align 8, !tbaa !38
  %cmp22 = fcmp ogt double 0.000000e+00, %16
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end19
  br label %cond.end

cond.false:                                       ; preds = %if.end19
  %17 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap23 = getelementptr inbounds %struct.unur_gen, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %datap23, align 8, !tbaa !34
  %intervals24 = getelementptr inbounds %struct.unur_hinv_gen, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %intervals24, align 8, !tbaa !36
  %arrayidx25 = getelementptr inbounds double, ptr %19, i64 0
  %20 = load double, ptr %arrayidx25, align 8, !tbaa !38
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %20, %cond.false ]
  %21 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap26 = getelementptr inbounds %struct.unur_gen, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %datap26, align 8, !tbaa !34
  %Umin = getelementptr inbounds %struct.unur_hinv_gen, ptr %22, i32 0, i32 6
  store double %cond, ptr %Umin, align 8, !tbaa !39
  %23 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap27 = getelementptr inbounds %struct.unur_gen, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %datap27, align 8, !tbaa !34
  %intervals28 = getelementptr inbounds %struct.unur_hinv_gen, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %intervals28, align 8, !tbaa !36
  %26 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap29 = getelementptr inbounds %struct.unur_gen, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %datap29, align 8, !tbaa !34
  %N = getelementptr inbounds %struct.unur_hinv_gen, ptr %27, i32 0, i32 1
  %28 = load i32, ptr %N, align 4, !tbaa !40
  %sub = sub nsw i32 %28, 1
  %29 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap30 = getelementptr inbounds %struct.unur_gen, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %datap30, align 8, !tbaa !34
  %order = getelementptr inbounds %struct.unur_hinv_gen, ptr %30, i32 0, i32 0
  %31 = load i32, ptr %order, align 8, !tbaa !41
  %add = add nsw i32 %31, 2
  %mul = mul nsw i32 %sub, %add
  %idxprom = sext i32 %mul to i64
  %arrayidx31 = getelementptr inbounds double, ptr %25, i64 %idxprom
  %32 = load double, ptr %arrayidx31, align 8, !tbaa !38
  %cmp32 = fcmp olt double 1.000000e+00, %32
  br i1 %cmp32, label %cond.true33, label %cond.false34

cond.true33:                                      ; preds = %cond.end
  br label %cond.end46

cond.false34:                                     ; preds = %cond.end
  %33 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap35 = getelementptr inbounds %struct.unur_gen, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %datap35, align 8, !tbaa !34
  %intervals36 = getelementptr inbounds %struct.unur_hinv_gen, ptr %34, i32 0, i32 2
  %35 = load ptr, ptr %intervals36, align 8, !tbaa !36
  %36 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap37 = getelementptr inbounds %struct.unur_gen, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %datap37, align 8, !tbaa !34
  %N38 = getelementptr inbounds %struct.unur_hinv_gen, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %N38, align 4, !tbaa !40
  %sub39 = sub nsw i32 %38, 1
  %39 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap40 = getelementptr inbounds %struct.unur_gen, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %datap40, align 8, !tbaa !34
  %order41 = getelementptr inbounds %struct.unur_hinv_gen, ptr %40, i32 0, i32 0
  %41 = load i32, ptr %order41, align 8, !tbaa !41
  %add42 = add nsw i32 %41, 2
  %mul43 = mul nsw i32 %sub39, %add42
  %idxprom44 = sext i32 %mul43 to i64
  %arrayidx45 = getelementptr inbounds double, ptr %35, i64 %idxprom44
  %42 = load double, ptr %arrayidx45, align 8, !tbaa !38
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false34, %cond.true33
  %cond47 = phi double [ 1.000000e+00, %cond.true33 ], [ %42, %cond.false34 ]
  %43 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap48 = getelementptr inbounds %struct.unur_gen, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %datap48, align 8, !tbaa !34
  %Umax = getelementptr inbounds %struct.unur_hinv_gen, ptr %44, i32 0, i32 7
  store double %cond47, ptr %Umax, align 8, !tbaa !42
  %45 = load ptr, ptr %gen, align 8, !tbaa !4
  %call49 = call i32 @_unur_hinv_make_guide_table(ptr noundef %45)
  %46 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap50 = getelementptr inbounds %struct.unur_gen, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %datap50, align 8, !tbaa !34
  %stp = getelementptr inbounds %struct.unur_hinv_gen, ptr %47, i32 0, i32 17
  store ptr null, ptr %stp, align 8, !tbaa !43
  %48 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap51 = getelementptr inbounds %struct.unur_gen, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %datap51, align 8, !tbaa !34
  %n_stp = getelementptr inbounds %struct.unur_hinv_gen, ptr %49, i32 0, i32 18
  store i32 0, ptr %n_stp, align 8, !tbaa !44
  %50 = load ptr, ptr %gen, align 8, !tbaa !4
  store ptr %50, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end46, %if.then18, %if.then14, %if.then10, %do.end4, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %gen) #6
  %51 = load ptr, ptr %retval, align 8
  ret ptr %51
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define hidden i32 @unur_hinv_set_order(ptr noundef %par, i32 noundef %order) #0 {
entry:
  %retval = alloca i32, align 4
  %par.addr = alloca ptr, align 8
  %order.addr = alloca i32, align 4
  store ptr %par, ptr %par.addr, align 8, !tbaa !4
  store i32 %order, ptr %order.addr, align 4, !tbaa !31
  %0 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 362, ptr noundef @.str.2, i32 noundef 100, ptr noundef @.str.3)
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 100, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %method = getelementptr inbounds %struct.unur_par, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %method, align 8, !tbaa !26
  %cmp = icmp ne i32 %2, 33554944
  br i1 %cmp, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  br label %do.body2

do.body2:                                         ; preds = %if.then1
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 363, ptr noundef @.str.2, i32 noundef 35, ptr noundef @.str.3)
  br label %do.end3

do.end3:                                          ; preds = %do.body2
  store i32 35, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %3 = load i32, ptr %order.addr, align 4, !tbaa !31
  %cmp5 = icmp ne i32 %3, 1
  br i1 %cmp5, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end4
  %4 = load i32, ptr %order.addr, align 4, !tbaa !31
  %cmp6 = icmp ne i32 %4, 3
  br i1 %cmp6, label %land.lhs.true7, label %if.end12

land.lhs.true7:                                   ; preds = %land.lhs.true
  %5 = load i32, ptr %order.addr, align 4, !tbaa !31
  %cmp8 = icmp ne i32 %5, 5
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %land.lhs.true7
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 367, ptr noundef @.str.5, i32 noundef 33, ptr noundef @.str.6)
  br label %do.end11

do.end11:                                         ; preds = %do.body10
  store i32 33, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %land.lhs.true7, %land.lhs.true, %if.end4
  %6 = load i32, ptr %order.addr, align 4, !tbaa !31
  %cmp13 = icmp sgt i32 %6, 1
  br i1 %cmp13, label %land.lhs.true14, label %if.end19

land.lhs.true14:                                  ; preds = %if.end12
  %7 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %distr = getelementptr inbounds %struct.unur_par, ptr %7, i32 0, i32 8
  %8 = load ptr, ptr %distr, align 8, !tbaa !12
  %data = getelementptr inbounds %struct.unur_distr, ptr %8, i32 0, i32 0
  %pdf = getelementptr inbounds %struct.unur_distr_cont, ptr %data, i32 0, i32 0
  %9 = load ptr, ptr %pdf, align 8, !tbaa !11
  %cmp15 = icmp eq ptr %9, null
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %land.lhs.true14
  br label %do.body17

do.body17:                                        ; preds = %if.then16
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 372, ptr noundef @.str.5, i32 noundef 22, ptr noundef @.str.7)
  br label %do.end18

do.end18:                                         ; preds = %do.body17
  store i32 22, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %land.lhs.true14, %if.end12
  %10 = load i32, ptr %order.addr, align 4, !tbaa !31
  %cmp20 = icmp sgt i32 %10, 3
  br i1 %cmp20, label %land.lhs.true21, label %if.end28

land.lhs.true21:                                  ; preds = %if.end19
  %11 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %distr22 = getelementptr inbounds %struct.unur_par, ptr %11, i32 0, i32 8
  %12 = load ptr, ptr %distr22, align 8, !tbaa !12
  %data23 = getelementptr inbounds %struct.unur_distr, ptr %12, i32 0, i32 0
  %dpdf = getelementptr inbounds %struct.unur_distr_cont, ptr %data23, i32 0, i32 1
  %13 = load ptr, ptr %dpdf, align 8, !tbaa !11
  %cmp24 = icmp eq ptr %13, null
  br i1 %cmp24, label %if.then25, label %if.end28

if.then25:                                        ; preds = %land.lhs.true21
  br label %do.body26

do.body26:                                        ; preds = %if.then25
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 377, ptr noundef @.str.5, i32 noundef 22, ptr noundef @.str.8)
  br label %do.end27

do.end27:                                         ; preds = %do.body26
  store i32 22, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %land.lhs.true21, %if.end19
  %14 = load i32, ptr %order.addr, align 4, !tbaa !31
  %15 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_par, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %datap, align 8, !tbaa !15
  %order29 = getelementptr inbounds %struct.unur_hinv_par, ptr %16, i32 0, i32 0
  store i32 %14, ptr %order29, align 8, !tbaa !16
  %17 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %set = getelementptr inbounds %struct.unur_par, ptr %17, i32 0, i32 5
  %18 = load i32, ptr %set, align 8, !tbaa !28
  %or = or i32 %18, 1
  store i32 %or, ptr %set, align 8, !tbaa !28
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %do.end27, %do.end18, %do.end11, %do.end3, %do.end
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define hidden i32 @unur_hinv_set_u_resolution(ptr noundef %par, double noundef %u_resolution) #0 {
entry:
  %retval = alloca i32, align 4
  %par.addr = alloca ptr, align 8
  %u_resolution.addr = alloca double, align 8
  store ptr %par, ptr %par.addr, align 8, !tbaa !4
  store double %u_resolution, ptr %u_resolution.addr, align 8, !tbaa !38
  %0 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 408, ptr noundef @.str.2, i32 noundef 100, ptr noundef @.str.3)
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 100, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %method = getelementptr inbounds %struct.unur_par, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %method, align 8, !tbaa !26
  %cmp = icmp ne i32 %2, 33554944
  br i1 %cmp, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  br label %do.body2

do.body2:                                         ; preds = %if.then1
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 409, ptr noundef @.str.2, i32 noundef 35, ptr noundef @.str.3)
  br label %do.end3

do.end3:                                          ; preds = %do.body2
  store i32 35, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %3 = load double, ptr %u_resolution.addr, align 8, !tbaa !38
  %cmp5 = fcmp ogt double %3, 1.000000e-02
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end4
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 414, ptr noundef @.str.5, i32 noundef 33, ptr noundef @.str.9)
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  store i32 33, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end4
  %4 = load double, ptr %u_resolution.addr, align 8, !tbaa !38
  %cmp10 = fcmp olt double %4, 0x3CD4000000000000
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end9
  br label %do.body12

do.body12:                                        ; preds = %if.then11
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 418, ptr noundef @.str.5, i32 noundef 33, ptr noundef @.str.9)
  br label %do.end13

do.end13:                                         ; preds = %do.body12
  store double 0x3CD4000000000000, ptr %u_resolution.addr, align 8, !tbaa !38
  br label %if.end14

if.end14:                                         ; preds = %do.end13, %if.end9
  %5 = load double, ptr %u_resolution.addr, align 8, !tbaa !38
  %cmp15 = fcmp olt double %5, 0x3D19000000000000
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end14
  br label %do.body17

do.body17:                                        ; preds = %if.then16
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 422, ptr noundef @.str.5, i32 noundef 33, ptr noundef @.str.10)
  br label %do.end18

do.end18:                                         ; preds = %do.body17
  br label %if.end19

if.end19:                                         ; preds = %do.end18, %if.end14
  %6 = load double, ptr %u_resolution.addr, align 8, !tbaa !38
  %7 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_par, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %datap, align 8, !tbaa !15
  %u_resolution20 = getelementptr inbounds %struct.unur_hinv_par, ptr %8, i32 0, i32 1
  store double %6, ptr %u_resolution20, align 8, !tbaa !19
  %9 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %set = getelementptr inbounds %struct.unur_par, ptr %9, i32 0, i32 5
  %10 = load i32, ptr %set, align 8, !tbaa !28
  %or = or i32 %10, 2
  store i32 %or, ptr %set, align 8, !tbaa !28
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %do.end8, %do.end3, %do.end
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define hidden i32 @unur_hinv_set_cpoints(ptr noundef %par, ptr noundef %stp, i32 noundef %n_stp) #0 {
entry:
  %retval = alloca i32, align 4
  %par.addr = alloca ptr, align 8
  %stp.addr = alloca ptr, align 8
  %n_stp.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %par, ptr %par.addr, align 8, !tbaa !4
  store ptr %stp, ptr %stp.addr, align 8, !tbaa !4
  store i32 %n_stp, ptr %n_stp.addr, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  %0 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 455, ptr noundef @.str.2, i32 noundef 100, ptr noundef @.str.3)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 100, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %method = getelementptr inbounds %struct.unur_par, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %method, align 8, !tbaa !26
  %cmp = icmp ne i32 %2, 33554944
  br i1 %cmp, label %if.then1, label %if.end5

if.then1:                                         ; preds = %if.end
  br label %do.body2

do.body2:                                         ; preds = %if.then1
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 456, ptr noundef @.str.2, i32 noundef 35, ptr noundef @.str.3)
  br label %do.cond3

do.cond3:                                         ; preds = %do.body2
  br label %do.end4

do.end4:                                          ; preds = %do.cond3
  store i32 35, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = load i32, ptr %n_stp.addr, align 4, !tbaa !31
  %cmp6 = icmp slt i32 %3, 1
  br i1 %cmp6, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %4 = load ptr, ptr %stp.addr, align 8, !tbaa !4
  %cmp7 = icmp eq ptr %4, null
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %lor.lhs.false, %if.end5
  br label %do.body9

do.body9:                                         ; preds = %if.then8
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 460, ptr noundef @.str.5, i32 noundef 33, ptr noundef @.str.11)
  br label %do.cond10

do.cond10:                                        ; preds = %do.body9
  br label %do.end11

do.end11:                                         ; preds = %do.cond10
  store i32 33, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  store i32 1, ptr %i, align 4, !tbaa !31
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end12
  %5 = load i32, ptr %i, align 4, !tbaa !31
  %6 = load i32, ptr %n_stp.addr, align 4, !tbaa !31
  %cmp13 = icmp slt i32 %5, %6
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %stp.addr, align 8, !tbaa !4
  %8 = load i32, ptr %i, align 4, !tbaa !31
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds double, ptr %7, i64 %idxprom
  %9 = load double, ptr %arrayidx, align 8, !tbaa !38
  %10 = load ptr, ptr %stp.addr, align 8, !tbaa !4
  %11 = load i32, ptr %i, align 4, !tbaa !31
  %sub = sub nsw i32 %11, 1
  %idxprom14 = sext i32 %sub to i64
  %arrayidx15 = getelementptr inbounds double, ptr %10, i64 %idxprom14
  %12 = load double, ptr %arrayidx15, align 8, !tbaa !38
  %cmp16 = fcmp ole double %9, %12
  br i1 %cmp16, label %if.then17, label %if.end21

if.then17:                                        ; preds = %for.body
  br label %do.body18

do.body18:                                        ; preds = %if.then17
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 467, ptr noundef @.str.5, i32 noundef 33, ptr noundef @.str.12)
  br label %do.cond19

do.cond19:                                        ; preds = %do.body18
  br label %do.end20

do.end20:                                         ; preds = %do.cond19
  store i32 33, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end21:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %13 = load i32, ptr %i, align 4, !tbaa !31
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4, !tbaa !31
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %stp.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_par, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %datap, align 8, !tbaa !15
  %stp22 = getelementptr inbounds %struct.unur_hinv_par, ptr %16, i32 0, i32 5
  store ptr %14, ptr %stp22, align 8, !tbaa !24
  %17 = load i32, ptr %n_stp.addr, align 4, !tbaa !31
  %18 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %datap23 = getelementptr inbounds %struct.unur_par, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %datap23, align 8, !tbaa !15
  %n_stp24 = getelementptr inbounds %struct.unur_hinv_par, ptr %19, i32 0, i32 6
  store i32 %17, ptr %n_stp24, align 8, !tbaa !25
  %20 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %set = getelementptr inbounds %struct.unur_par, ptr %20, i32 0, i32 5
  %21 = load i32, ptr %set, align 8, !tbaa !28
  %or = or i32 %21, 4
  store i32 %or, ptr %set, align 8, !tbaa !28
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end20, %do.end11, %do.end4, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define hidden i32 @unur_hinv_set_boundary(ptr noundef %par, double noundef %left, double noundef %right) #0 {
entry:
  %retval = alloca i32, align 4
  %par.addr = alloca ptr, align 8
  %left.addr = alloca double, align 8
  %right.addr = alloca double, align 8
  store ptr %par, ptr %par.addr, align 8, !tbaa !4
  store double %left, ptr %left.addr, align 8, !tbaa !38
  store double %right, ptr %right.addr, align 8, !tbaa !38
  %0 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 503, ptr noundef @.str.2, i32 noundef 100, ptr noundef @.str.3)
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 100, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %method = getelementptr inbounds %struct.unur_par, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %method, align 8, !tbaa !26
  %cmp = icmp ne i32 %2, 33554944
  br i1 %cmp, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  br label %do.body2

do.body2:                                         ; preds = %if.then1
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 504, ptr noundef @.str.2, i32 noundef 35, ptr noundef @.str.3)
  br label %do.end3

do.end3:                                          ; preds = %do.body2
  store i32 35, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %3 = load double, ptr %left.addr, align 8, !tbaa !38
  %4 = load double, ptr %right.addr, align 8, !tbaa !38
  %cmp5 = fcmp oge double %3, %4
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end4
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 508, ptr noundef @.str.5, i32 noundef 33, ptr noundef @.str.13)
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  store i32 33, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end4
  %5 = load double, ptr %left.addr, align 8, !tbaa !38
  %cmp10 = fcmp ole double %5, 0xFFF0000000000000
  br i1 %cmp10, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %6 = load double, ptr %right.addr, align 8, !tbaa !38
  %cmp11 = fcmp oge double %6, 0x7FF0000000000000
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %lor.lhs.false, %if.end9
  br label %do.body13

do.body13:                                        ; preds = %if.then12
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 512, ptr noundef @.str.5, i32 noundef 33, ptr noundef @.str.14)
  br label %do.end14

do.end14:                                         ; preds = %do.body13
  store i32 33, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %lor.lhs.false
  %7 = load double, ptr %left.addr, align 8, !tbaa !38
  %8 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_par, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %datap, align 8, !tbaa !15
  %bleft = getelementptr inbounds %struct.unur_hinv_par, ptr %9, i32 0, i32 3
  store double %7, ptr %bleft, align 8, !tbaa !21
  %10 = load double, ptr %right.addr, align 8, !tbaa !38
  %11 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %datap16 = getelementptr inbounds %struct.unur_par, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %datap16, align 8, !tbaa !15
  %bright = getelementptr inbounds %struct.unur_hinv_par, ptr %12, i32 0, i32 4
  store double %10, ptr %bright, align 8, !tbaa !22
  %13 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %set = getelementptr inbounds %struct.unur_par, ptr %13, i32 0, i32 5
  %14 = load i32, ptr %set, align 8, !tbaa !28
  %or = or i32 %14, 8
  store i32 %or, ptr %set, align 8, !tbaa !28
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %do.end14, %do.end8, %do.end3, %do.end
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define hidden i32 @unur_hinv_set_guidefactor(ptr noundef %par, double noundef %factor) #0 {
entry:
  %retval = alloca i32, align 4
  %par.addr = alloca ptr, align 8
  %factor.addr = alloca double, align 8
  store ptr %par, ptr %par.addr, align 8, !tbaa !4
  store double %factor, ptr %factor.addr, align 8, !tbaa !38
  %0 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 544, ptr noundef @.str.2, i32 noundef 100, ptr noundef @.str.3)
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 100, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %method = getelementptr inbounds %struct.unur_par, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %method, align 8, !tbaa !26
  %cmp = icmp ne i32 %2, 33554944
  br i1 %cmp, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  br label %do.body2

do.body2:                                         ; preds = %if.then1
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 545, ptr noundef @.str.2, i32 noundef 35, ptr noundef @.str.3)
  br label %do.end3

do.end3:                                          ; preds = %do.body2
  store i32 35, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %3 = load double, ptr %factor.addr, align 8, !tbaa !38
  %cmp5 = fcmp olt double %3, 0.000000e+00
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end4
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 549, ptr noundef @.str.5, i32 noundef 33, ptr noundef @.str.15)
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  store i32 33, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end4
  %4 = load double, ptr %factor.addr, align 8, !tbaa !38
  %5 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_par, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %datap, align 8, !tbaa !15
  %guide_factor = getelementptr inbounds %struct.unur_hinv_par, ptr %6, i32 0, i32 2
  store double %4, ptr %guide_factor, align 8, !tbaa !20
  %7 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %set = getelementptr inbounds %struct.unur_par, ptr %7, i32 0, i32 5
  %8 = load i32, ptr %set, align 8, !tbaa !28
  %or = or i32 %8, 16
  store i32 %or, ptr %set, align 8, !tbaa !28
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %do.end8, %do.end3, %do.end
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define hidden i32 @unur_hinv_set_max_intervals(ptr noundef %par, i32 noundef %max_ivs) #0 {
entry:
  %retval = alloca i32, align 4
  %par.addr = alloca ptr, align 8
  %max_ivs.addr = alloca i32, align 4
  store ptr %par, ptr %par.addr, align 8, !tbaa !4
  store i32 %max_ivs, ptr %max_ivs.addr, align 4, !tbaa !31
  %0 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 580, ptr noundef @.str.2, i32 noundef 100, ptr noundef @.str.3)
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 100, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %method = getelementptr inbounds %struct.unur_par, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %method, align 8, !tbaa !26
  %cmp = icmp ne i32 %2, 33554944
  br i1 %cmp, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  br label %do.body2

do.body2:                                         ; preds = %if.then1
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 583, ptr noundef @.str.2, i32 noundef 35, ptr noundef @.str.3)
  br label %do.end3

do.end3:                                          ; preds = %do.body2
  store i32 35, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %3 = load i32, ptr %max_ivs.addr, align 4, !tbaa !31
  %cmp5 = icmp slt i32 %3, 1000
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end4
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 588, ptr noundef @.str.5, i32 noundef 33, ptr noundef @.str.16)
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  store i32 33, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end4
  %4 = load i32, ptr %max_ivs.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_par, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %datap, align 8, !tbaa !15
  %max_ivs10 = getelementptr inbounds %struct.unur_hinv_par, ptr %6, i32 0, i32 7
  store i32 %4, ptr %max_ivs10, align 4, !tbaa !23
  %7 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %set = getelementptr inbounds %struct.unur_par, ptr %7, i32 0, i32 5
  %8 = load i32, ptr %set, align 8, !tbaa !28
  %or = or i32 %8, 32
  store i32 %or, ptr %set, align 8, !tbaa !28
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %do.end8, %do.end3, %do.end
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define hidden i32 @unur_hinv_get_n_intervals(ptr noundef %gen) #0 {
entry:
  %retval = alloca i32, align 4
  %gen.addr = alloca ptr, align 8
  store ptr %gen, ptr %gen.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 618, ptr noundef @.str.2, i32 noundef 100, ptr noundef @.str.3)
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %method = getelementptr inbounds %struct.unur_gen, ptr %1, i32 0, i32 6
  %2 = load i32, ptr %method, align 4, !tbaa !45
  %cmp = icmp ne i32 %2, 33554944
  br i1 %cmp, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  br label %do.body2

do.body2:                                         ; preds = %if.then1
  %3 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %genid = getelementptr inbounds %struct.unur_gen, ptr %3, i32 0, i32 10
  %4 = load ptr, ptr %genid, align 8, !tbaa !46
  call void @_unur_error_x(ptr noundef %4, ptr noundef @.str.1, i32 noundef 619, ptr noundef @.str.2, i32 noundef 52, ptr noundef @.str.3)
  br label %do.end3

do.end3:                                          ; preds = %do.body2
  store i32 0, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_gen, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %datap, align 8, !tbaa !34
  %N = getelementptr inbounds %struct.unur_hinv_gen, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %N, align 4, !tbaa !40
  store i32 %7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %do.end3, %do.end
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define hidden i32 @unur_hinv_chg_truncated(ptr noundef %gen, double noundef %left, double noundef %right) #0 {
entry:
  %retval = alloca i32, align 4
  %gen.addr = alloca ptr, align 8
  %left.addr = alloca double, align 8
  %right.addr = alloca double, align 8
  %Umin = alloca double, align 8
  %Umax = alloca double, align 8
  %Uminbound = alloca double, align 8
  %Umaxbound = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gen, ptr %gen.addr, align 8, !tbaa !4
  store double %left, ptr %left.addr, align 8, !tbaa !38
  store double %right, ptr %right.addr, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr %Umin) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Umax) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Uminbound) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Umaxbound) #6
  %0 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 648, ptr noundef @.str.2, i32 noundef 100, ptr noundef @.str.3)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 100, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %method = getelementptr inbounds %struct.unur_gen, ptr %1, i32 0, i32 6
  %2 = load i32, ptr %method, align 4, !tbaa !45
  %cmp = icmp ne i32 %2, 33554944
  br i1 %cmp, label %if.then1, label %if.end5

if.then1:                                         ; preds = %if.end
  br label %do.body2

do.body2:                                         ; preds = %if.then1
  %3 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %genid = getelementptr inbounds %struct.unur_gen, ptr %3, i32 0, i32 10
  %4 = load ptr, ptr %genid, align 8, !tbaa !46
  call void @_unur_error_x(ptr noundef %4, ptr noundef @.str.1, i32 noundef 649, ptr noundef @.str.2, i32 noundef 52, ptr noundef @.str.3)
  br label %do.cond3

do.cond3:                                         ; preds = %do.body2
  br label %do.end4

do.end4:                                          ; preds = %do.cond3
  store i32 52, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = load double, ptr %left.addr, align 8, !tbaa !38
  %6 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_gen, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %datap, align 8, !tbaa !34
  %bleft = getelementptr inbounds %struct.unur_hinv_gen, ptr %7, i32 0, i32 11
  %8 = load double, ptr %bleft, align 8, !tbaa !47
  %cmp6 = fcmp olt double %5, %8
  br i1 %cmp6, label %if.then7, label %if.end14

if.then7:                                         ; preds = %if.end5
  br label %do.body8

do.body8:                                         ; preds = %if.then7
  %9 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %genid9 = getelementptr inbounds %struct.unur_gen, ptr %9, i32 0, i32 10
  %10 = load ptr, ptr %genid9, align 8, !tbaa !46
  call void @_unur_error_x(ptr noundef %10, ptr noundef @.str.1, i32 noundef 653, ptr noundef @.str.5, i32 noundef 17, ptr noundef @.str.17)
  br label %do.cond10

do.cond10:                                        ; preds = %do.body8
  br label %do.end11

do.end11:                                         ; preds = %do.cond10
  %11 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap12 = getelementptr inbounds %struct.unur_gen, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %datap12, align 8, !tbaa !34
  %bleft13 = getelementptr inbounds %struct.unur_hinv_gen, ptr %12, i32 0, i32 11
  %13 = load double, ptr %bleft13, align 8, !tbaa !47
  store double %13, ptr %left.addr, align 8, !tbaa !38
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %if.end5
  %14 = load double, ptr %right.addr, align 8, !tbaa !38
  %15 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap15 = getelementptr inbounds %struct.unur_gen, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %datap15, align 8, !tbaa !34
  %bright = getelementptr inbounds %struct.unur_hinv_gen, ptr %16, i32 0, i32 12
  %17 = load double, ptr %bright, align 8, !tbaa !48
  %cmp16 = fcmp ogt double %14, %17
  br i1 %cmp16, label %if.then17, label %if.end24

if.then17:                                        ; preds = %if.end14
  br label %do.body18

do.body18:                                        ; preds = %if.then17
  %18 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %genid19 = getelementptr inbounds %struct.unur_gen, ptr %18, i32 0, i32 10
  %19 = load ptr, ptr %genid19, align 8, !tbaa !46
  call void @_unur_error_x(ptr noundef %19, ptr noundef @.str.1, i32 noundef 657, ptr noundef @.str.5, i32 noundef 17, ptr noundef @.str.18)
  br label %do.cond20

do.cond20:                                        ; preds = %do.body18
  br label %do.end21

do.end21:                                         ; preds = %do.cond20
  %20 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap22 = getelementptr inbounds %struct.unur_gen, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %datap22, align 8, !tbaa !34
  %bright23 = getelementptr inbounds %struct.unur_hinv_gen, ptr %21, i32 0, i32 12
  %22 = load double, ptr %bright23, align 8, !tbaa !48
  store double %22, ptr %right.addr, align 8, !tbaa !38
  br label %if.end24

if.end24:                                         ; preds = %do.end21, %if.end14
  %23 = load double, ptr %left.addr, align 8, !tbaa !38
  %24 = load double, ptr %right.addr, align 8, !tbaa !38
  %call = call i32 @_unur_FP_cmp(double noundef %23, double noundef %24, double noundef 0x3D19000000000000)
  %cmp25 = icmp slt i32 %call, 0
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end24
  br i1 true, label %if.end31, label %if.then26

cond.false:                                       ; preds = %if.end24
  br i1 false, label %if.end31, label %if.then26

if.then26:                                        ; preds = %cond.false, %cond.true
  br label %do.body27

do.body27:                                        ; preds = %if.then26
  %25 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %genid28 = getelementptr inbounds %struct.unur_gen, ptr %25, i32 0, i32 10
  %26 = load ptr, ptr %genid28, align 8, !tbaa !46
  call void @_unur_error_x(ptr noundef %26, ptr noundef @.str.1, i32 noundef 663, ptr noundef @.str.2, i32 noundef 17, ptr noundef @.str.19)
  br label %do.cond29

do.cond29:                                        ; preds = %do.body27
  br label %do.end30

do.end30:                                         ; preds = %do.cond29
  store i32 17, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end31:                                         ; preds = %cond.false, %cond.true
  %27 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap32 = getelementptr inbounds %struct.unur_gen, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %datap32, align 8, !tbaa !34
  %intervals = getelementptr inbounds %struct.unur_hinv_gen, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %intervals, align 8, !tbaa !36
  %arrayidx = getelementptr inbounds double, ptr %29, i64 0
  %30 = load double, ptr %arrayidx, align 8, !tbaa !38
  %cmp33 = fcmp ogt double 0.000000e+00, %30
  br i1 %cmp33, label %cond.true34, label %cond.false35

cond.true34:                                      ; preds = %if.end31
  br label %cond.end

cond.false35:                                     ; preds = %if.end31
  %31 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap36 = getelementptr inbounds %struct.unur_gen, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %datap36, align 8, !tbaa !34
  %intervals37 = getelementptr inbounds %struct.unur_hinv_gen, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %intervals37, align 8, !tbaa !36
  %arrayidx38 = getelementptr inbounds double, ptr %33, i64 0
  %34 = load double, ptr %arrayidx38, align 8, !tbaa !38
  br label %cond.end

cond.end:                                         ; preds = %cond.false35, %cond.true34
  %cond = phi double [ 0.000000e+00, %cond.true34 ], [ %34, %cond.false35 ]
  store double %cond, ptr %Uminbound, align 8, !tbaa !38
  %35 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap39 = getelementptr inbounds %struct.unur_gen, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %datap39, align 8, !tbaa !34
  %intervals40 = getelementptr inbounds %struct.unur_hinv_gen, ptr %36, i32 0, i32 2
  %37 = load ptr, ptr %intervals40, align 8, !tbaa !36
  %38 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap41 = getelementptr inbounds %struct.unur_gen, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %datap41, align 8, !tbaa !34
  %N = getelementptr inbounds %struct.unur_hinv_gen, ptr %39, i32 0, i32 1
  %40 = load i32, ptr %N, align 4, !tbaa !40
  %sub = sub nsw i32 %40, 1
  %41 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap42 = getelementptr inbounds %struct.unur_gen, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %datap42, align 8, !tbaa !34
  %order = getelementptr inbounds %struct.unur_hinv_gen, ptr %42, i32 0, i32 0
  %43 = load i32, ptr %order, align 8, !tbaa !41
  %add = add nsw i32 %43, 2
  %mul = mul nsw i32 %sub, %add
  %idxprom = sext i32 %mul to i64
  %arrayidx43 = getelementptr inbounds double, ptr %37, i64 %idxprom
  %44 = load double, ptr %arrayidx43, align 8, !tbaa !38
  %cmp44 = fcmp olt double 1.000000e+00, %44
  br i1 %cmp44, label %cond.true45, label %cond.false46

cond.true45:                                      ; preds = %cond.end
  br label %cond.end58

cond.false46:                                     ; preds = %cond.end
  %45 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap47 = getelementptr inbounds %struct.unur_gen, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %datap47, align 8, !tbaa !34
  %intervals48 = getelementptr inbounds %struct.unur_hinv_gen, ptr %46, i32 0, i32 2
  %47 = load ptr, ptr %intervals48, align 8, !tbaa !36
  %48 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap49 = getelementptr inbounds %struct.unur_gen, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %datap49, align 8, !tbaa !34
  %N50 = getelementptr inbounds %struct.unur_hinv_gen, ptr %49, i32 0, i32 1
  %50 = load i32, ptr %N50, align 4, !tbaa !40
  %sub51 = sub nsw i32 %50, 1
  %51 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap52 = getelementptr inbounds %struct.unur_gen, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %datap52, align 8, !tbaa !34
  %order53 = getelementptr inbounds %struct.unur_hinv_gen, ptr %52, i32 0, i32 0
  %53 = load i32, ptr %order53, align 8, !tbaa !41
  %add54 = add nsw i32 %53, 2
  %mul55 = mul nsw i32 %sub51, %add54
  %idxprom56 = sext i32 %mul55 to i64
  %arrayidx57 = getelementptr inbounds double, ptr %47, i64 %idxprom56
  %54 = load double, ptr %arrayidx57, align 8, !tbaa !38
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false46, %cond.true45
  %cond59 = phi double [ 1.000000e+00, %cond.true45 ], [ %54, %cond.false46 ]
  store double %cond59, ptr %Umaxbound, align 8, !tbaa !38
  %55 = load double, ptr %left.addr, align 8, !tbaa !38
  %cmp60 = fcmp ogt double %55, 0xFFF0000000000000
  br i1 %cmp60, label %cond.true61, label %cond.false63

cond.true61:                                      ; preds = %cond.end58
  %56 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %57 = load double, ptr %left.addr, align 8, !tbaa !38
  %call62 = call double @_unur_hinv_CDF(ptr noundef %56, double noundef %57)
  br label %cond.end64

cond.false63:                                     ; preds = %cond.end58
  br label %cond.end64

cond.end64:                                       ; preds = %cond.false63, %cond.true61
  %cond65 = phi double [ %call62, %cond.true61 ], [ 0.000000e+00, %cond.false63 ]
  store double %cond65, ptr %Umin, align 8, !tbaa !38
  %58 = load double, ptr %right.addr, align 8, !tbaa !38
  %cmp66 = fcmp olt double %58, 0x7FF0000000000000
  br i1 %cmp66, label %cond.true67, label %cond.false69

cond.true67:                                      ; preds = %cond.end64
  %59 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %60 = load double, ptr %right.addr, align 8, !tbaa !38
  %call68 = call double @_unur_hinv_CDF(ptr noundef %59, double noundef %60)
  br label %cond.end70

cond.false69:                                     ; preds = %cond.end64
  br label %cond.end70

cond.end70:                                       ; preds = %cond.false69, %cond.true67
  %cond71 = phi double [ %call68, %cond.true67 ], [ 1.000000e+00, %cond.false69 ]
  store double %cond71, ptr %Umax, align 8, !tbaa !38
  %61 = load double, ptr %Umin, align 8, !tbaa !38
  %62 = load double, ptr %Umax, align 8, !tbaa !38
  %cmp72 = fcmp ogt double %61, %62
  br i1 %cmp72, label %if.then73, label %if.end78

if.then73:                                        ; preds = %cond.end70
  br label %do.body74

do.body74:                                        ; preds = %if.then73
  %63 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %genid75 = getelementptr inbounds %struct.unur_gen, ptr %63, i32 0, i32 10
  %64 = load ptr, ptr %genid75, align 8, !tbaa !46
  call void @_unur_error_x(ptr noundef %64, ptr noundef @.str.1, i32 noundef 683, ptr noundef @.str.2, i32 noundef 240, ptr noundef @.str.3)
  br label %do.cond76

do.cond76:                                        ; preds = %do.body74
  br label %do.end77

do.end77:                                         ; preds = %do.cond76
  store i32 240, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end78:                                         ; preds = %cond.end70
  %65 = load double, ptr %Umin, align 8, !tbaa !38
  %66 = load double, ptr %Umax, align 8, !tbaa !38
  %call79 = call i32 @_unur_FP_cmp(double noundef %65, double noundef %66, double noundef 0x3D19000000000000)
  %cmp80 = icmp eq i32 %call79, 0
  br i1 %cmp80, label %if.then81, label %if.end95

if.then81:                                        ; preds = %if.end78
  br label %do.body82

do.body82:                                        ; preds = %if.then81
  %67 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %genid83 = getelementptr inbounds %struct.unur_gen, ptr %67, i32 0, i32 10
  %68 = load ptr, ptr %genid83, align 8, !tbaa !46
  call void @_unur_error_x(ptr noundef %68, ptr noundef @.str.1, i32 noundef 689, ptr noundef @.str.5, i32 noundef 17, ptr noundef @.str.20)
  br label %do.cond84

do.cond84:                                        ; preds = %do.body82
  br label %do.end85

do.end85:                                         ; preds = %do.cond84
  %69 = load double, ptr %Umin, align 8, !tbaa !38
  %cmp86 = fcmp oeq double %69, 0.000000e+00
  br i1 %cmp86, label %if.then89, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end85
  %70 = load double, ptr %Umax, align 8, !tbaa !38
  %call87 = call i32 @_unur_FP_cmp(double noundef %70, double noundef 1.000000e+00, double noundef 0x3CB0000000000000)
  %cmp88 = icmp eq i32 %call87, 0
  br i1 %cmp88, label %if.then89, label %if.end94

if.then89:                                        ; preds = %lor.lhs.false, %do.end85
  br label %do.body90

do.body90:                                        ; preds = %if.then89
  %71 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %genid91 = getelementptr inbounds %struct.unur_gen, ptr %71, i32 0, i32 10
  %72 = load ptr, ptr %genid91, align 8, !tbaa !46
  call void @_unur_error_x(ptr noundef %72, ptr noundef @.str.1, i32 noundef 692, ptr noundef @.str.2, i32 noundef 17, ptr noundef @.str.21)
  br label %do.cond92

do.cond92:                                        ; preds = %do.body90
  br label %do.end93

do.end93:                                         ; preds = %do.cond92
  store i32 17, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end94:                                         ; preds = %lor.lhs.false
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.end78
  %73 = load double, ptr %left.addr, align 8, !tbaa !38
  %74 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr = getelementptr inbounds %struct.unur_gen, ptr %74, i32 0, i32 4
  %75 = load ptr, ptr %distr, align 8, !tbaa !49
  %data = getelementptr inbounds %struct.unur_distr, ptr %75, i32 0, i32 0
  %trunc = getelementptr inbounds %struct.unur_distr_cont, ptr %data, i32 0, i32 17
  %arrayidx96 = getelementptr inbounds [2 x double], ptr %trunc, i64 0, i64 0
  store double %73, ptr %arrayidx96, align 8, !tbaa !11
  %76 = load double, ptr %right.addr, align 8, !tbaa !38
  %77 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr97 = getelementptr inbounds %struct.unur_gen, ptr %77, i32 0, i32 4
  %78 = load ptr, ptr %distr97, align 8, !tbaa !49
  %data98 = getelementptr inbounds %struct.unur_distr, ptr %78, i32 0, i32 0
  %trunc99 = getelementptr inbounds %struct.unur_distr_cont, ptr %data98, i32 0, i32 17
  %arrayidx100 = getelementptr inbounds [2 x double], ptr %trunc99, i64 0, i64 1
  store double %76, ptr %arrayidx100, align 8, !tbaa !11
  %79 = load double, ptr %Umin, align 8, !tbaa !38
  %80 = load double, ptr %Uminbound, align 8, !tbaa !38
  %cmp101 = fcmp ogt double %79, %80
  br i1 %cmp101, label %cond.true102, label %cond.false103

cond.true102:                                     ; preds = %if.end95
  %81 = load double, ptr %Umin, align 8, !tbaa !38
  br label %cond.end104

cond.false103:                                    ; preds = %if.end95
  %82 = load double, ptr %Uminbound, align 8, !tbaa !38
  br label %cond.end104

cond.end104:                                      ; preds = %cond.false103, %cond.true102
  %cond105 = phi double [ %81, %cond.true102 ], [ %82, %cond.false103 ]
  %83 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap106 = getelementptr inbounds %struct.unur_gen, ptr %83, i32 0, i32 0
  %84 = load ptr, ptr %datap106, align 8, !tbaa !34
  %Umin107 = getelementptr inbounds %struct.unur_hinv_gen, ptr %84, i32 0, i32 6
  store double %cond105, ptr %Umin107, align 8, !tbaa !39
  %85 = load double, ptr %Umax, align 8, !tbaa !38
  %86 = load double, ptr %Umaxbound, align 8, !tbaa !38
  %cmp108 = fcmp olt double %85, %86
  br i1 %cmp108, label %cond.true109, label %cond.false110

cond.true109:                                     ; preds = %cond.end104
  %87 = load double, ptr %Umax, align 8, !tbaa !38
  br label %cond.end111

cond.false110:                                    ; preds = %cond.end104
  %88 = load double, ptr %Umaxbound, align 8, !tbaa !38
  br label %cond.end111

cond.end111:                                      ; preds = %cond.false110, %cond.true109
  %cond112 = phi double [ %87, %cond.true109 ], [ %88, %cond.false110 ]
  %89 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap113 = getelementptr inbounds %struct.unur_gen, ptr %89, i32 0, i32 0
  %90 = load ptr, ptr %datap113, align 8, !tbaa !34
  %Umax114 = getelementptr inbounds %struct.unur_hinv_gen, ptr %90, i32 0, i32 7
  store double %cond112, ptr %Umax114, align 8, !tbaa !42
  %91 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr115 = getelementptr inbounds %struct.unur_gen, ptr %91, i32 0, i32 4
  %92 = load ptr, ptr %distr115, align 8, !tbaa !49
  %set = getelementptr inbounds %struct.unur_distr, ptr %92, i32 0, i32 6
  %93 = load i32, ptr %set, align 4, !tbaa !50
  %or = or i32 %93, 524288
  store i32 %or, ptr %set, align 4, !tbaa !50
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end111, %do.end93, %do.end77, %do.end30, %do.end4, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %Umaxbound) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Uminbound) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Umax) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Umin) #6
  %94 = load i32, ptr %retval, align 4
  ret i32 %94
}

declare i32 @_unur_FP_cmp(double noundef, double noundef, double noundef) #2

; Function Attrs: nounwind uwtable
define internal double @_unur_hinv_CDF(ptr noundef %gen, double noundef %x) #0 {
entry:
  %retval = alloca double, align 8
  %gen.addr = alloca ptr, align 8
  %x.addr = alloca double, align 8
  %u = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gen, ptr %gen.addr, align 8, !tbaa !4
  store double %x, ptr %x.addr, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr %u) #6
  %0 = load double, ptr %x.addr, align 8, !tbaa !38
  %1 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr = getelementptr inbounds %struct.unur_gen, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %distr, align 8, !tbaa !49
  %data = getelementptr inbounds %struct.unur_distr, ptr %2, i32 0, i32 0
  %domain = getelementptr inbounds %struct.unur_distr_cont, ptr %data, i32 0, i32 16
  %arrayidx = getelementptr inbounds [2 x double], ptr %domain, i64 0, i64 0
  %3 = load double, ptr %arrayidx, align 8, !tbaa !11
  %cmp = fcmp ole double %0, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0.000000e+00, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load double, ptr %x.addr, align 8, !tbaa !38
  %5 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr1 = getelementptr inbounds %struct.unur_gen, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %distr1, align 8, !tbaa !49
  %data2 = getelementptr inbounds %struct.unur_distr, ptr %6, i32 0, i32 0
  %domain3 = getelementptr inbounds %struct.unur_distr_cont, ptr %data2, i32 0, i32 16
  %arrayidx4 = getelementptr inbounds [2 x double], ptr %domain3, i64 0, i64 1
  %7 = load double, ptr %arrayidx4, align 8, !tbaa !11
  %cmp5 = fcmp oge double %4, %7
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store double 1.000000e+00, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %8 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr8 = getelementptr inbounds %struct.unur_gen, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %distr8, align 8, !tbaa !49
  %data9 = getelementptr inbounds %struct.unur_distr, ptr %9, i32 0, i32 0
  %cdf = getelementptr inbounds %struct.unur_distr_cont, ptr %data9, i32 0, i32 2
  %10 = load ptr, ptr %cdf, align 8, !tbaa !11
  %11 = load double, ptr %x.addr, align 8, !tbaa !38
  %12 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr10 = getelementptr inbounds %struct.unur_gen, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %distr10, align 8, !tbaa !49
  %call = call double %10(double noundef %11, ptr noundef %13)
  %14 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_gen, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %datap, align 8, !tbaa !34
  %CDFmin = getelementptr inbounds %struct.unur_hinv_gen, ptr %15, i32 0, i32 8
  %16 = load double, ptr %CDFmin, align 8, !tbaa !51
  %sub = fsub double %call, %16
  %17 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap11 = getelementptr inbounds %struct.unur_gen, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %datap11, align 8, !tbaa !34
  %CDFmax = getelementptr inbounds %struct.unur_hinv_gen, ptr %18, i32 0, i32 9
  %19 = load double, ptr %CDFmax, align 8, !tbaa !52
  %20 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap12 = getelementptr inbounds %struct.unur_gen, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %datap12, align 8, !tbaa !34
  %CDFmin13 = getelementptr inbounds %struct.unur_hinv_gen, ptr %21, i32 0, i32 8
  %22 = load double, ptr %CDFmin13, align 8, !tbaa !51
  %sub14 = fsub double %19, %22
  %div = fdiv double %sub, %sub14
  store double %div, ptr %u, align 8, !tbaa !38
  %23 = load double, ptr %u, align 8, !tbaa !38
  %cmp15 = fcmp ogt double %23, 1.000000e+00
  br i1 %cmp15, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %if.end7
  %24 = load double, ptr %u, align 8, !tbaa !38
  %call16 = call i32 @_unur_FP_cmp(double noundef %24, double noundef 1.000000e+00, double noundef 0x3D19000000000000)
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %land.lhs.true
  store double 1.000000e+00, ptr %u, align 8, !tbaa !38
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %land.lhs.true, %if.end7
  %25 = load double, ptr %u, align 8, !tbaa !38
  store double %25, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %u) #6
  %26 = load double, ptr %retval, align 8
  ret double %26
}

; Function Attrs: nounwind uwtable
define hidden double @unur_hinv_eval_approxinvcdf(ptr noundef %gen, double noundef %u) #0 {
entry:
  %retval = alloca double, align 8
  %gen.addr = alloca ptr, align 8
  %u.addr = alloca double, align 8
  %x = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gen, ptr %gen.addr, align 8, !tbaa !4
  store double %u, ptr %u.addr, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #6
  %0 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 1148, ptr noundef @.str.2, i32 noundef 100, ptr noundef @.str.3)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store double 0x7FF0000000000000, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %method = getelementptr inbounds %struct.unur_gen, ptr %1, i32 0, i32 6
  %2 = load i32, ptr %method, align 4, !tbaa !45
  %cmp = icmp ne i32 %2, 33554944
  br i1 %cmp, label %if.then1, label %if.end5

if.then1:                                         ; preds = %if.end
  br label %do.body2

do.body2:                                         ; preds = %if.then1
  %3 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %genid = getelementptr inbounds %struct.unur_gen, ptr %3, i32 0, i32 10
  %4 = load ptr, ptr %genid, align 8, !tbaa !46
  call void @_unur_error_x(ptr noundef %4, ptr noundef @.str.1, i32 noundef 1150, ptr noundef @.str.2, i32 noundef 52, ptr noundef @.str.3)
  br label %do.cond3

do.cond3:                                         ; preds = %do.body2
  br label %do.end4

do.end4:                                          ; preds = %do.cond3
  store double 0x7FF0000000000000, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = load double, ptr %u.addr, align 8, !tbaa !38
  %cmp6 = fcmp ogt double %5, 0.000000e+00
  br i1 %cmp6, label %land.lhs.true, label %if.then8

land.lhs.true:                                    ; preds = %if.end5
  %6 = load double, ptr %u.addr, align 8, !tbaa !38
  %cmp7 = fcmp olt double %6, 1.000000e+00
  br i1 %cmp7, label %if.end28, label %if.then8

if.then8:                                         ; preds = %land.lhs.true, %if.end5
  %7 = load double, ptr %u.addr, align 8, !tbaa !38
  %cmp9 = fcmp oge double %7, 0.000000e+00
  br i1 %cmp9, label %land.lhs.true10, label %if.then12

land.lhs.true10:                                  ; preds = %if.then8
  %8 = load double, ptr %u.addr, align 8, !tbaa !38
  %cmp11 = fcmp ole double %8, 1.000000e+00
  br i1 %cmp11, label %if.end17, label %if.then12

if.then12:                                        ; preds = %land.lhs.true10, %if.then8
  br label %do.body13

do.body13:                                        ; preds = %if.then12
  %9 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %genid14 = getelementptr inbounds %struct.unur_gen, ptr %9, i32 0, i32 10
  %10 = load ptr, ptr %genid14, align 8, !tbaa !46
  call void @_unur_error_x(ptr noundef %10, ptr noundef @.str.1, i32 noundef 1157, ptr noundef @.str.5, i32 noundef 97, ptr noundef @.str.22)
  br label %do.cond15

do.cond15:                                        ; preds = %do.body13
  br label %do.end16

do.end16:                                         ; preds = %do.cond15
  br label %if.end17

if.end17:                                         ; preds = %do.end16, %land.lhs.true10
  %11 = load double, ptr %u.addr, align 8, !tbaa !38
  %cmp18 = fcmp ole double %11, 0.000000e+00
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  %12 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr = getelementptr inbounds %struct.unur_gen, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %distr, align 8, !tbaa !49
  %data = getelementptr inbounds %struct.unur_distr, ptr %13, i32 0, i32 0
  %trunc = getelementptr inbounds %struct.unur_distr_cont, ptr %data, i32 0, i32 17
  %arrayidx = getelementptr inbounds [2 x double], ptr %trunc, i64 0, i64 0
  %14 = load double, ptr %arrayidx, align 8, !tbaa !11
  store double %14, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %15 = load double, ptr %u.addr, align 8, !tbaa !38
  %cmp21 = fcmp oge double %15, 1.000000e+00
  br i1 %cmp21, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.end20
  %16 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr23 = getelementptr inbounds %struct.unur_gen, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %distr23, align 8, !tbaa !49
  %data24 = getelementptr inbounds %struct.unur_distr, ptr %17, i32 0, i32 0
  %trunc25 = getelementptr inbounds %struct.unur_distr_cont, ptr %data24, i32 0, i32 17
  %arrayidx26 = getelementptr inbounds [2 x double], ptr %trunc25, i64 0, i64 1
  %18 = load double, ptr %arrayidx26, align 8, !tbaa !11
  store double %18, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  %19 = load double, ptr %u.addr, align 8, !tbaa !38
  store double %19, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end28:                                         ; preds = %land.lhs.true
  %20 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_gen, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %datap, align 8, !tbaa !34
  %Umin = getelementptr inbounds %struct.unur_hinv_gen, ptr %21, i32 0, i32 6
  %22 = load double, ptr %Umin, align 8, !tbaa !39
  %23 = load double, ptr %u.addr, align 8, !tbaa !38
  %24 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap29 = getelementptr inbounds %struct.unur_gen, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %datap29, align 8, !tbaa !34
  %Umax = getelementptr inbounds %struct.unur_hinv_gen, ptr %25, i32 0, i32 7
  %26 = load double, ptr %Umax, align 8, !tbaa !42
  %27 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap30 = getelementptr inbounds %struct.unur_gen, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %datap30, align 8, !tbaa !34
  %Umin31 = getelementptr inbounds %struct.unur_hinv_gen, ptr %28, i32 0, i32 6
  %29 = load double, ptr %Umin31, align 8, !tbaa !39
  %sub = fsub double %26, %29
  %30 = call double @llvm.fmuladd.f64(double %23, double %sub, double %22)
  store double %30, ptr %u.addr, align 8, !tbaa !38
  %31 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %32 = load double, ptr %u.addr, align 8, !tbaa !38
  %call = call double @_unur_hinv_eval_approxinvcdf(ptr noundef %31, double noundef %32)
  store double %call, ptr %x, align 8, !tbaa !38
  %33 = load double, ptr %x, align 8, !tbaa !38
  %34 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr32 = getelementptr inbounds %struct.unur_gen, ptr %34, i32 0, i32 4
  %35 = load ptr, ptr %distr32, align 8, !tbaa !49
  %data33 = getelementptr inbounds %struct.unur_distr, ptr %35, i32 0, i32 0
  %trunc34 = getelementptr inbounds %struct.unur_distr_cont, ptr %data33, i32 0, i32 17
  %arrayidx35 = getelementptr inbounds [2 x double], ptr %trunc34, i64 0, i64 0
  %36 = load double, ptr %arrayidx35, align 8, !tbaa !11
  %cmp36 = fcmp olt double %33, %36
  br i1 %cmp36, label %if.then37, label %if.end42

if.then37:                                        ; preds = %if.end28
  %37 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr38 = getelementptr inbounds %struct.unur_gen, ptr %37, i32 0, i32 4
  %38 = load ptr, ptr %distr38, align 8, !tbaa !49
  %data39 = getelementptr inbounds %struct.unur_distr, ptr %38, i32 0, i32 0
  %trunc40 = getelementptr inbounds %struct.unur_distr_cont, ptr %data39, i32 0, i32 17
  %arrayidx41 = getelementptr inbounds [2 x double], ptr %trunc40, i64 0, i64 0
  %39 = load double, ptr %arrayidx41, align 8, !tbaa !11
  store double %39, ptr %x, align 8, !tbaa !38
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %if.end28
  %40 = load double, ptr %x, align 8, !tbaa !38
  %41 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr43 = getelementptr inbounds %struct.unur_gen, ptr %41, i32 0, i32 4
  %42 = load ptr, ptr %distr43, align 8, !tbaa !49
  %data44 = getelementptr inbounds %struct.unur_distr, ptr %42, i32 0, i32 0
  %trunc45 = getelementptr inbounds %struct.unur_distr_cont, ptr %data44, i32 0, i32 17
  %arrayidx46 = getelementptr inbounds [2 x double], ptr %trunc45, i64 0, i64 1
  %43 = load double, ptr %arrayidx46, align 8, !tbaa !11
  %cmp47 = fcmp ogt double %40, %43
  br i1 %cmp47, label %if.then48, label %if.end53

if.then48:                                        ; preds = %if.end42
  %44 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr49 = getelementptr inbounds %struct.unur_gen, ptr %44, i32 0, i32 4
  %45 = load ptr, ptr %distr49, align 8, !tbaa !49
  %data50 = getelementptr inbounds %struct.unur_distr, ptr %45, i32 0, i32 0
  %trunc51 = getelementptr inbounds %struct.unur_distr_cont, ptr %data50, i32 0, i32 17
  %arrayidx52 = getelementptr inbounds [2 x double], ptr %trunc51, i64 0, i64 1
  %46 = load double, ptr %arrayidx52, align 8, !tbaa !11
  store double %46, ptr %x, align 8, !tbaa !38
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %if.end42
  %47 = load double, ptr %x, align 8, !tbaa !38
  store double %47, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.end27, %if.then22, %if.then19, %do.end4, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #6
  %48 = load double, ptr %retval, align 8
  ret double %48
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind uwtable
define internal double @_unur_hinv_eval_approxinvcdf(ptr noundef %gen, double noundef %u) #0 {
entry:
  %gen.addr = alloca ptr, align 8
  %u.addr = alloca double, align 8
  %i = alloca i32, align 4
  store ptr %gen, ptr %gen.addr, align 8, !tbaa !4
  store double %u, ptr %u.addr, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_gen, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %datap, align 8, !tbaa !34
  %guide = getelementptr inbounds %struct.unur_hinv_gen, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %guide, align 8, !tbaa !53
  %3 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap1 = getelementptr inbounds %struct.unur_gen, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %datap1, align 8, !tbaa !34
  %guide_size = getelementptr inbounds %struct.unur_hinv_gen, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %guide_size, align 8, !tbaa !54
  %conv = sitofp i32 %5 to double
  %6 = load double, ptr %u.addr, align 8, !tbaa !38
  %mul = fmul double %conv, %6
  %conv2 = fptosi double %mul to i32
  %idxprom = sext i32 %conv2 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4, !tbaa !31
  store i32 %7, ptr %i, align 4, !tbaa !31
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %8 = load double, ptr %u.addr, align 8, !tbaa !38
  %9 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap3 = getelementptr inbounds %struct.unur_gen, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %datap3, align 8, !tbaa !34
  %intervals = getelementptr inbounds %struct.unur_hinv_gen, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %intervals, align 8, !tbaa !36
  %12 = load i32, ptr %i, align 4, !tbaa !31
  %13 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap4 = getelementptr inbounds %struct.unur_gen, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %datap4, align 8, !tbaa !34
  %order = getelementptr inbounds %struct.unur_hinv_gen, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %order, align 8, !tbaa !41
  %add = add nsw i32 %12, %15
  %add5 = add nsw i32 %add, 2
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds double, ptr %11, i64 %idxprom6
  %16 = load double, ptr %arrayidx7, align 8, !tbaa !38
  %cmp = fcmp ogt double %8, %16
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap9 = getelementptr inbounds %struct.unur_gen, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %datap9, align 8, !tbaa !34
  %order10 = getelementptr inbounds %struct.unur_hinv_gen, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %order10, align 8, !tbaa !41
  %add11 = add nsw i32 %19, 2
  %20 = load i32, ptr %i, align 4, !tbaa !31
  %add12 = add nsw i32 %20, %add11
  store i32 %add12, ptr %i, align 4, !tbaa !31
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load double, ptr %u.addr, align 8, !tbaa !38
  %22 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap13 = getelementptr inbounds %struct.unur_gen, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %datap13, align 8, !tbaa !34
  %intervals14 = getelementptr inbounds %struct.unur_hinv_gen, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %intervals14, align 8, !tbaa !36
  %25 = load i32, ptr %i, align 4, !tbaa !31
  %idxprom15 = sext i32 %25 to i64
  %arrayidx16 = getelementptr inbounds double, ptr %24, i64 %idxprom15
  %26 = load double, ptr %arrayidx16, align 8, !tbaa !38
  %sub = fsub double %21, %26
  %27 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap17 = getelementptr inbounds %struct.unur_gen, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %datap17, align 8, !tbaa !34
  %intervals18 = getelementptr inbounds %struct.unur_hinv_gen, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %intervals18, align 8, !tbaa !36
  %30 = load i32, ptr %i, align 4, !tbaa !31
  %31 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap19 = getelementptr inbounds %struct.unur_gen, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %datap19, align 8, !tbaa !34
  %order20 = getelementptr inbounds %struct.unur_hinv_gen, ptr %32, i32 0, i32 0
  %33 = load i32, ptr %order20, align 8, !tbaa !41
  %add21 = add nsw i32 %30, %33
  %add22 = add nsw i32 %add21, 2
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds double, ptr %29, i64 %idxprom23
  %34 = load double, ptr %arrayidx24, align 8, !tbaa !38
  %35 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap25 = getelementptr inbounds %struct.unur_gen, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %datap25, align 8, !tbaa !34
  %intervals26 = getelementptr inbounds %struct.unur_hinv_gen, ptr %36, i32 0, i32 2
  %37 = load ptr, ptr %intervals26, align 8, !tbaa !36
  %38 = load i32, ptr %i, align 4, !tbaa !31
  %idxprom27 = sext i32 %38 to i64
  %arrayidx28 = getelementptr inbounds double, ptr %37, i64 %idxprom27
  %39 = load double, ptr %arrayidx28, align 8, !tbaa !38
  %sub29 = fsub double %34, %39
  %div = fdiv double %sub, %sub29
  store double %div, ptr %u.addr, align 8, !tbaa !38
  %40 = load double, ptr %u.addr, align 8, !tbaa !38
  %41 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap30 = getelementptr inbounds %struct.unur_gen, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %datap30, align 8, !tbaa !34
  %intervals31 = getelementptr inbounds %struct.unur_hinv_gen, ptr %42, i32 0, i32 2
  %43 = load ptr, ptr %intervals31, align 8, !tbaa !36
  %44 = load i32, ptr %i, align 4, !tbaa !31
  %idx.ext = sext i32 %44 to i64
  %add.ptr = getelementptr inbounds double, ptr %43, i64 %idx.ext
  %add.ptr32 = getelementptr inbounds double, ptr %add.ptr, i64 1
  %45 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap33 = getelementptr inbounds %struct.unur_gen, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %datap33, align 8, !tbaa !34
  %order34 = getelementptr inbounds %struct.unur_hinv_gen, ptr %46, i32 0, i32 0
  %47 = load i32, ptr %order34, align 8, !tbaa !41
  %call = call double @_unur_hinv_eval_polynomial(double noundef %40, ptr noundef %add.ptr32, i32 noundef %47)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret double %call
}

; Function Attrs: nounwind uwtable
define hidden i32 @unur_hinv_estimate_error(ptr noundef %gen, i32 noundef %samplesize, ptr noundef %max_error, ptr noundef %MAE) #0 {
entry:
  %retval = alloca i32, align 4
  %gen.addr = alloca ptr, align 8
  %samplesize.addr = alloca i32, align 4
  %max_error.addr = alloca ptr, align 8
  %MAE.addr = alloca ptr, align 8
  store ptr %gen, ptr %gen.addr, align 8, !tbaa !4
  store i32 %samplesize, ptr %samplesize.addr, align 4, !tbaa !31
  store ptr %max_error, ptr %max_error.addr, align 8, !tbaa !4
  store ptr %MAE, ptr %MAE.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 1198, ptr noundef @.str.2, i32 noundef 100, ptr noundef @.str.3)
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 100, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %max_error.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %MAE.addr, align 8, !tbaa !4
  %4 = load i32, ptr %samplesize.addr, align 4, !tbaa !31
  %call = call double @unur_test_u_error(ptr noundef %1, ptr noundef %2, ptr noundef %3, double noundef 0x3BC79CA10C924223, i32 noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %do.end
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

declare double @unur_test_u_error(ptr noundef, ptr noundef, ptr noundef, double noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @_unur_hinv_create(ptr noundef %par) #0 {
entry:
  %par.addr = alloca ptr, align 8
  %gen = alloca ptr, align 8
  store ptr %par, ptr %par.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %gen) #6
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %call = call ptr @_unur_generic_create(ptr noundef %0, i64 noundef 160)
  store ptr %call, ptr %gen, align 8, !tbaa !4
  %call1 = call ptr @_unur_make_genid(ptr noundef @.str)
  %1 = load ptr, ptr %gen, align 8, !tbaa !4
  %genid = getelementptr inbounds %struct.unur_gen, ptr %1, i32 0, i32 10
  store ptr %call1, ptr %genid, align 8, !tbaa !46
  %2 = load ptr, ptr %gen, align 8, !tbaa !4
  %sample = getelementptr inbounds %struct.unur_gen, ptr %2, i32 0, i32 1
  store ptr @_unur_hinv_sample, ptr %sample, align 8, !tbaa !11
  %3 = load ptr, ptr %gen, align 8, !tbaa !4
  %destroy = getelementptr inbounds %struct.unur_gen, ptr %3, i32 0, i32 16
  store ptr @_unur_hinv_free, ptr %destroy, align 8, !tbaa !55
  %4 = load ptr, ptr %gen, align 8, !tbaa !4
  %clone = getelementptr inbounds %struct.unur_gen, ptr %4, i32 0, i32 17
  store ptr @_unur_hinv_clone, ptr %clone, align 8, !tbaa !56
  %5 = load ptr, ptr %gen, align 8, !tbaa !4
  %reinit = getelementptr inbounds %struct.unur_gen, ptr %5, i32 0, i32 18
  store ptr @_unur_hinv_reinit, ptr %reinit, align 8, !tbaa !57
  %6 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_par, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %datap, align 8, !tbaa !15
  %order = getelementptr inbounds %struct.unur_hinv_par, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %order, align 8, !tbaa !16
  %9 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap2 = getelementptr inbounds %struct.unur_gen, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %datap2, align 8, !tbaa !34
  %order3 = getelementptr inbounds %struct.unur_hinv_gen, ptr %10, i32 0, i32 0
  store i32 %8, ptr %order3, align 8, !tbaa !41
  %11 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %datap4 = getelementptr inbounds %struct.unur_par, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %datap4, align 8, !tbaa !15
  %u_resolution = getelementptr inbounds %struct.unur_hinv_par, ptr %12, i32 0, i32 1
  %13 = load double, ptr %u_resolution, align 8, !tbaa !19
  %14 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap5 = getelementptr inbounds %struct.unur_gen, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %datap5, align 8, !tbaa !34
  %u_resolution6 = getelementptr inbounds %struct.unur_hinv_gen, ptr %15, i32 0, i32 10
  store double %13, ptr %u_resolution6, align 8, !tbaa !58
  %16 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %datap7 = getelementptr inbounds %struct.unur_par, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %datap7, align 8, !tbaa !15
  %guide_factor = getelementptr inbounds %struct.unur_hinv_par, ptr %17, i32 0, i32 2
  %18 = load double, ptr %guide_factor, align 8, !tbaa !20
  %19 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap8 = getelementptr inbounds %struct.unur_gen, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %datap8, align 8, !tbaa !34
  %guide_factor9 = getelementptr inbounds %struct.unur_hinv_gen, ptr %20, i32 0, i32 5
  store double %18, ptr %guide_factor9, align 8, !tbaa !59
  %21 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %datap10 = getelementptr inbounds %struct.unur_par, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %datap10, align 8, !tbaa !15
  %bleft = getelementptr inbounds %struct.unur_hinv_par, ptr %22, i32 0, i32 3
  %23 = load double, ptr %bleft, align 8, !tbaa !21
  %24 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap11 = getelementptr inbounds %struct.unur_gen, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %datap11, align 8, !tbaa !34
  %bleft_par = getelementptr inbounds %struct.unur_hinv_gen, ptr %25, i32 0, i32 19
  store double %23, ptr %bleft_par, align 8, !tbaa !60
  %26 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %datap12 = getelementptr inbounds %struct.unur_par, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %datap12, align 8, !tbaa !15
  %bright = getelementptr inbounds %struct.unur_hinv_par, ptr %27, i32 0, i32 4
  %28 = load double, ptr %bright, align 8, !tbaa !22
  %29 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap13 = getelementptr inbounds %struct.unur_gen, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %datap13, align 8, !tbaa !34
  %bright_par = getelementptr inbounds %struct.unur_hinv_gen, ptr %30, i32 0, i32 20
  store double %28, ptr %bright_par, align 8, !tbaa !61
  %31 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %datap14 = getelementptr inbounds %struct.unur_par, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %datap14, align 8, !tbaa !15
  %max_ivs = getelementptr inbounds %struct.unur_hinv_par, ptr %32, i32 0, i32 7
  %33 = load i32, ptr %max_ivs, align 4, !tbaa !23
  %34 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap15 = getelementptr inbounds %struct.unur_gen, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %datap15, align 8, !tbaa !34
  %max_ivs16 = getelementptr inbounds %struct.unur_hinv_gen, ptr %35, i32 0, i32 16
  store i32 %33, ptr %max_ivs16, align 8, !tbaa !62
  %36 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %datap17 = getelementptr inbounds %struct.unur_par, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %datap17, align 8, !tbaa !15
  %stp = getelementptr inbounds %struct.unur_hinv_par, ptr %37, i32 0, i32 5
  %38 = load ptr, ptr %stp, align 8, !tbaa !24
  %39 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap18 = getelementptr inbounds %struct.unur_gen, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %datap18, align 8, !tbaa !34
  %stp19 = getelementptr inbounds %struct.unur_hinv_gen, ptr %40, i32 0, i32 17
  store ptr %38, ptr %stp19, align 8, !tbaa !43
  %41 = load ptr, ptr %par.addr, align 8, !tbaa !4
  %datap20 = getelementptr inbounds %struct.unur_par, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %datap20, align 8, !tbaa !15
  %n_stp = getelementptr inbounds %struct.unur_hinv_par, ptr %42, i32 0, i32 6
  %43 = load i32, ptr %n_stp, align 8, !tbaa !25
  %44 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap21 = getelementptr inbounds %struct.unur_gen, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %datap21, align 8, !tbaa !34
  %n_stp22 = getelementptr inbounds %struct.unur_hinv_gen, ptr %45, i32 0, i32 18
  store i32 %43, ptr %n_stp22, align 8, !tbaa !44
  %46 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap23 = getelementptr inbounds %struct.unur_gen, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %datap23, align 8, !tbaa !34
  %tailcutoff_left = getelementptr inbounds %struct.unur_hinv_gen, ptr %47, i32 0, i32 14
  store double -1.000000e+00, ptr %tailcutoff_left, align 8, !tbaa !63
  %48 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap24 = getelementptr inbounds %struct.unur_gen, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %datap24, align 8, !tbaa !34
  %tailcutoff_right = getelementptr inbounds %struct.unur_hinv_gen, ptr %49, i32 0, i32 15
  store double 1.000000e+01, ptr %tailcutoff_right, align 8, !tbaa !64
  %50 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap25 = getelementptr inbounds %struct.unur_gen, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %datap25, align 8, !tbaa !34
  %bleft_par26 = getelementptr inbounds %struct.unur_hinv_gen, ptr %51, i32 0, i32 19
  %52 = load double, ptr %bleft_par26, align 8, !tbaa !60
  %53 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap27 = getelementptr inbounds %struct.unur_gen, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %datap27, align 8, !tbaa !34
  %bleft28 = getelementptr inbounds %struct.unur_hinv_gen, ptr %54, i32 0, i32 11
  store double %52, ptr %bleft28, align 8, !tbaa !47
  %55 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap29 = getelementptr inbounds %struct.unur_gen, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %datap29, align 8, !tbaa !34
  %bright_par30 = getelementptr inbounds %struct.unur_hinv_gen, ptr %56, i32 0, i32 20
  %57 = load double, ptr %bright_par30, align 8, !tbaa !61
  %58 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap31 = getelementptr inbounds %struct.unur_gen, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %datap31, align 8, !tbaa !34
  %bright32 = getelementptr inbounds %struct.unur_hinv_gen, ptr %59, i32 0, i32 12
  store double %57, ptr %bright32, align 8, !tbaa !48
  %60 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap33 = getelementptr inbounds %struct.unur_gen, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %datap33, align 8, !tbaa !34
  %Umin = getelementptr inbounds %struct.unur_hinv_gen, ptr %61, i32 0, i32 6
  store double 0.000000e+00, ptr %Umin, align 8, !tbaa !39
  %62 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap34 = getelementptr inbounds %struct.unur_gen, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %datap34, align 8, !tbaa !34
  %Umax = getelementptr inbounds %struct.unur_hinv_gen, ptr %63, i32 0, i32 7
  store double 1.000000e+00, ptr %Umax, align 8, !tbaa !42
  %64 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap35 = getelementptr inbounds %struct.unur_gen, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %datap35, align 8, !tbaa !34
  %N = getelementptr inbounds %struct.unur_hinv_gen, ptr %65, i32 0, i32 1
  store i32 0, ptr %N, align 4, !tbaa !40
  %66 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap36 = getelementptr inbounds %struct.unur_gen, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %datap36, align 8, !tbaa !34
  %iv = getelementptr inbounds %struct.unur_hinv_gen, ptr %67, i32 0, i32 13
  store ptr null, ptr %iv, align 8, !tbaa !65
  %68 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap37 = getelementptr inbounds %struct.unur_gen, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %datap37, align 8, !tbaa !34
  %intervals = getelementptr inbounds %struct.unur_hinv_gen, ptr %69, i32 0, i32 2
  store ptr null, ptr %intervals, align 8, !tbaa !36
  %70 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap38 = getelementptr inbounds %struct.unur_gen, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %datap38, align 8, !tbaa !34
  %guide_size = getelementptr inbounds %struct.unur_hinv_gen, ptr %71, i32 0, i32 4
  store i32 0, ptr %guide_size, align 8, !tbaa !54
  %72 = load ptr, ptr %gen, align 8, !tbaa !4
  %datap39 = getelementptr inbounds %struct.unur_gen, ptr %72, i32 0, i32 0
  %73 = load ptr, ptr %datap39, align 8, !tbaa !34
  %guide = getelementptr inbounds %struct.unur_hinv_gen, ptr %73, i32 0, i32 3
  store ptr null, ptr %guide, align 8, !tbaa !53
  %74 = load ptr, ptr %gen, align 8, !tbaa !4
  %info = getelementptr inbounds %struct.unur_gen, ptr %74, i32 0, i32 20
  store ptr @_unur_hinv_info, ptr %info, align 8, !tbaa !66
  %75 = load ptr, ptr %gen, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %gen) #6
  ret ptr %75
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal i32 @_unur_hinv_check_par(ptr noundef %gen) #0 {
entry:
  %retval = alloca i32, align 4
  %gen.addr = alloca ptr, align 8
  %tailcutoff = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gen, ptr %gen.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tailcutoff) #6
  %0 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_gen, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %datap, align 8, !tbaa !34
  %u_resolution = getelementptr inbounds %struct.unur_hinv_gen, ptr %1, i32 0, i32 10
  %2 = load double, ptr %u_resolution, align 8, !tbaa !58
  %mul = fmul double 1.000000e-01, %2
  %cmp = fcmp olt double 1.000000e-10, %mul
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap1 = getelementptr inbounds %struct.unur_gen, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %datap1, align 8, !tbaa !34
  %u_resolution2 = getelementptr inbounds %struct.unur_hinv_gen, ptr %4, i32 0, i32 10
  %5 = load double, ptr %u_resolution2, align 8, !tbaa !58
  %mul3 = fmul double 1.000000e-01, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 1.000000e-10, %cond.true ], [ %mul3, %cond.false ]
  store double %cond, ptr %tailcutoff, align 8, !tbaa !38
  %6 = load double, ptr %tailcutoff, align 8, !tbaa !38
  %cmp4 = fcmp ogt double %6, 0x3CC0000000000000
  br i1 %cmp4, label %cond.true5, label %cond.false6

cond.true5:                                       ; preds = %cond.end
  %7 = load double, ptr %tailcutoff, align 8, !tbaa !38
  br label %cond.end7

cond.false6:                                      ; preds = %cond.end
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false6, %cond.true5
  %cond8 = phi double [ %7, %cond.true5 ], [ 0x3CC0000000000000, %cond.false6 ]
  store double %cond8, ptr %tailcutoff, align 8, !tbaa !38
  %8 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap9 = getelementptr inbounds %struct.unur_gen, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %datap9, align 8, !tbaa !34
  %bleft_par = getelementptr inbounds %struct.unur_hinv_gen, ptr %9, i32 0, i32 19
  %10 = load double, ptr %bleft_par, align 8, !tbaa !60
  %11 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap10 = getelementptr inbounds %struct.unur_gen, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %datap10, align 8, !tbaa !34
  %bleft = getelementptr inbounds %struct.unur_hinv_gen, ptr %12, i32 0, i32 11
  store double %10, ptr %bleft, align 8, !tbaa !47
  %13 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap11 = getelementptr inbounds %struct.unur_gen, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %datap11, align 8, !tbaa !34
  %bright_par = getelementptr inbounds %struct.unur_hinv_gen, ptr %14, i32 0, i32 20
  %15 = load double, ptr %bright_par, align 8, !tbaa !61
  %16 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap12 = getelementptr inbounds %struct.unur_gen, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %datap12, align 8, !tbaa !34
  %bright = getelementptr inbounds %struct.unur_hinv_gen, ptr %17, i32 0, i32 12
  store double %15, ptr %bright, align 8, !tbaa !48
  %18 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr = getelementptr inbounds %struct.unur_gen, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %distr, align 8, !tbaa !49
  %data = getelementptr inbounds %struct.unur_distr, ptr %19, i32 0, i32 0
  %domain = getelementptr inbounds %struct.unur_distr_cont, ptr %data, i32 0, i32 16
  %arrayidx = getelementptr inbounds [2 x double], ptr %domain, i64 0, i64 0
  %20 = load double, ptr %arrayidx, align 8, !tbaa !11
  %21 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr13 = getelementptr inbounds %struct.unur_gen, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %distr13, align 8, !tbaa !49
  %data14 = getelementptr inbounds %struct.unur_distr, ptr %22, i32 0, i32 0
  %trunc = getelementptr inbounds %struct.unur_distr_cont, ptr %data14, i32 0, i32 17
  %arrayidx15 = getelementptr inbounds [2 x double], ptr %trunc, i64 0, i64 0
  store double %20, ptr %arrayidx15, align 8, !tbaa !11
  %23 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr16 = getelementptr inbounds %struct.unur_gen, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %distr16, align 8, !tbaa !49
  %data17 = getelementptr inbounds %struct.unur_distr, ptr %24, i32 0, i32 0
  %domain18 = getelementptr inbounds %struct.unur_distr_cont, ptr %data17, i32 0, i32 16
  %arrayidx19 = getelementptr inbounds [2 x double], ptr %domain18, i64 0, i64 1
  %25 = load double, ptr %arrayidx19, align 8, !tbaa !11
  %26 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr20 = getelementptr inbounds %struct.unur_gen, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %distr20, align 8, !tbaa !49
  %data21 = getelementptr inbounds %struct.unur_distr, ptr %27, i32 0, i32 0
  %trunc22 = getelementptr inbounds %struct.unur_distr_cont, ptr %data21, i32 0, i32 17
  %arrayidx23 = getelementptr inbounds [2 x double], ptr %trunc22, i64 0, i64 1
  store double %25, ptr %arrayidx23, align 8, !tbaa !11
  %28 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr24 = getelementptr inbounds %struct.unur_gen, ptr %28, i32 0, i32 4
  %29 = load ptr, ptr %distr24, align 8, !tbaa !49
  %data25 = getelementptr inbounds %struct.unur_distr, ptr %29, i32 0, i32 0
  %domain26 = getelementptr inbounds %struct.unur_distr_cont, ptr %data25, i32 0, i32 16
  %arrayidx27 = getelementptr inbounds [2 x double], ptr %domain26, i64 0, i64 0
  %30 = load double, ptr %arrayidx27, align 8, !tbaa !11
  %cmp28 = fcmp ogt double %30, 0xFFF0000000000000
  br i1 %cmp28, label %cond.true29, label %cond.false37

cond.true29:                                      ; preds = %cond.end7
  %31 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr30 = getelementptr inbounds %struct.unur_gen, ptr %31, i32 0, i32 4
  %32 = load ptr, ptr %distr30, align 8, !tbaa !49
  %data31 = getelementptr inbounds %struct.unur_distr, ptr %32, i32 0, i32 0
  %cdf = getelementptr inbounds %struct.unur_distr_cont, ptr %data31, i32 0, i32 2
  %33 = load ptr, ptr %cdf, align 8, !tbaa !11
  %34 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr32 = getelementptr inbounds %struct.unur_gen, ptr %34, i32 0, i32 4
  %35 = load ptr, ptr %distr32, align 8, !tbaa !49
  %data33 = getelementptr inbounds %struct.unur_distr, ptr %35, i32 0, i32 0
  %domain34 = getelementptr inbounds %struct.unur_distr_cont, ptr %data33, i32 0, i32 16
  %arrayidx35 = getelementptr inbounds [2 x double], ptr %domain34, i64 0, i64 0
  %36 = load double, ptr %arrayidx35, align 8, !tbaa !11
  %37 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr36 = getelementptr inbounds %struct.unur_gen, ptr %37, i32 0, i32 4
  %38 = load ptr, ptr %distr36, align 8, !tbaa !49
  %call = call double %33(double noundef %36, ptr noundef %38)
  br label %cond.end38

cond.false37:                                     ; preds = %cond.end7
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false37, %cond.true29
  %cond39 = phi double [ %call, %cond.true29 ], [ 0.000000e+00, %cond.false37 ]
  %39 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap40 = getelementptr inbounds %struct.unur_gen, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %datap40, align 8, !tbaa !34
  %CDFmin = getelementptr inbounds %struct.unur_hinv_gen, ptr %40, i32 0, i32 8
  store double %cond39, ptr %CDFmin, align 8, !tbaa !51
  %41 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr41 = getelementptr inbounds %struct.unur_gen, ptr %41, i32 0, i32 4
  %42 = load ptr, ptr %distr41, align 8, !tbaa !49
  %data42 = getelementptr inbounds %struct.unur_distr, ptr %42, i32 0, i32 0
  %domain43 = getelementptr inbounds %struct.unur_distr_cont, ptr %data42, i32 0, i32 16
  %arrayidx44 = getelementptr inbounds [2 x double], ptr %domain43, i64 0, i64 1
  %43 = load double, ptr %arrayidx44, align 8, !tbaa !11
  %cmp45 = fcmp olt double %43, 0x7FF0000000000000
  br i1 %cmp45, label %cond.true46, label %cond.false56

cond.true46:                                      ; preds = %cond.end38
  %44 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr47 = getelementptr inbounds %struct.unur_gen, ptr %44, i32 0, i32 4
  %45 = load ptr, ptr %distr47, align 8, !tbaa !49
  %data48 = getelementptr inbounds %struct.unur_distr, ptr %45, i32 0, i32 0
  %cdf49 = getelementptr inbounds %struct.unur_distr_cont, ptr %data48, i32 0, i32 2
  %46 = load ptr, ptr %cdf49, align 8, !tbaa !11
  %47 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr50 = getelementptr inbounds %struct.unur_gen, ptr %47, i32 0, i32 4
  %48 = load ptr, ptr %distr50, align 8, !tbaa !49
  %data51 = getelementptr inbounds %struct.unur_distr, ptr %48, i32 0, i32 0
  %domain52 = getelementptr inbounds %struct.unur_distr_cont, ptr %data51, i32 0, i32 16
  %arrayidx53 = getelementptr inbounds [2 x double], ptr %domain52, i64 0, i64 1
  %49 = load double, ptr %arrayidx53, align 8, !tbaa !11
  %50 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr54 = getelementptr inbounds %struct.unur_gen, ptr %50, i32 0, i32 4
  %51 = load ptr, ptr %distr54, align 8, !tbaa !49
  %call55 = call double %46(double noundef %49, ptr noundef %51)
  br label %cond.end57

cond.false56:                                     ; preds = %cond.end38
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false56, %cond.true46
  %cond58 = phi double [ %call55, %cond.true46 ], [ 1.000000e+00, %cond.false56 ]
  %52 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap59 = getelementptr inbounds %struct.unur_gen, ptr %52, i32 0, i32 0
  %53 = load ptr, ptr %datap59, align 8, !tbaa !34
  %CDFmax = getelementptr inbounds %struct.unur_hinv_gen, ptr %53, i32 0, i32 9
  store double %cond58, ptr %CDFmax, align 8, !tbaa !52
  %54 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap60 = getelementptr inbounds %struct.unur_gen, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %datap60, align 8, !tbaa !34
  %CDFmin61 = getelementptr inbounds %struct.unur_hinv_gen, ptr %55, i32 0, i32 8
  %56 = load double, ptr %CDFmin61, align 8, !tbaa !51
  %57 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap62 = getelementptr inbounds %struct.unur_gen, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %datap62, align 8, !tbaa !34
  %CDFmax63 = getelementptr inbounds %struct.unur_hinv_gen, ptr %58, i32 0, i32 9
  %59 = load double, ptr %CDFmax63, align 8, !tbaa !52
  %call64 = call i32 @_unur_FP_cmp(double noundef %56, double noundef %59, double noundef 0x3D19000000000000)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %cond.true66, label %cond.false67

cond.true66:                                      ; preds = %cond.end57
  br i1 true, label %if.end, label %if.then

cond.false67:                                     ; preds = %cond.end57
  br i1 false, label %if.end, label %if.then

if.then:                                          ; preds = %cond.false67, %cond.true66
  br label %do.body

do.body:                                          ; preds = %if.then
  %60 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %genid = getelementptr inbounds %struct.unur_gen, ptr %60, i32 0, i32 10
  %61 = load ptr, ptr %genid, align 8, !tbaa !46
  call void @_unur_error_x(ptr noundef %61, ptr noundef @.str.1, i32 noundef 957, ptr noundef @.str.2, i32 noundef 50, ptr noundef @.str.54)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 50, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %cond.false67, %cond.true66
  %62 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr68 = getelementptr inbounds %struct.unur_gen, ptr %62, i32 0, i32 4
  %63 = load ptr, ptr %distr68, align 8, !tbaa !49
  %data69 = getelementptr inbounds %struct.unur_distr, ptr %63, i32 0, i32 0
  %domain70 = getelementptr inbounds %struct.unur_distr_cont, ptr %data69, i32 0, i32 16
  %arrayidx71 = getelementptr inbounds [2 x double], ptr %domain70, i64 0, i64 0
  %64 = load double, ptr %arrayidx71, align 8, !tbaa !11
  %cmp72 = fcmp ole double %64, 0xFFF0000000000000
  br i1 %cmp72, label %if.then86, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %65 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr73 = getelementptr inbounds %struct.unur_gen, ptr %65, i32 0, i32 4
  %66 = load ptr, ptr %distr73, align 8, !tbaa !49
  %data74 = getelementptr inbounds %struct.unur_distr, ptr %66, i32 0, i32 0
  %pdf = getelementptr inbounds %struct.unur_distr_cont, ptr %data74, i32 0, i32 0
  %67 = load ptr, ptr %pdf, align 8, !tbaa !11
  %cmp75 = icmp ne ptr %67, null
  br i1 %cmp75, label %land.lhs.true, label %if.end88

land.lhs.true:                                    ; preds = %lor.lhs.false
  %68 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr76 = getelementptr inbounds %struct.unur_gen, ptr %68, i32 0, i32 4
  %69 = load ptr, ptr %distr76, align 8, !tbaa !49
  %data77 = getelementptr inbounds %struct.unur_distr, ptr %69, i32 0, i32 0
  %pdf78 = getelementptr inbounds %struct.unur_distr_cont, ptr %data77, i32 0, i32 0
  %70 = load ptr, ptr %pdf78, align 8, !tbaa !11
  %71 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr79 = getelementptr inbounds %struct.unur_gen, ptr %71, i32 0, i32 4
  %72 = load ptr, ptr %distr79, align 8, !tbaa !49
  %data80 = getelementptr inbounds %struct.unur_distr, ptr %72, i32 0, i32 0
  %domain81 = getelementptr inbounds %struct.unur_distr_cont, ptr %data80, i32 0, i32 16
  %arrayidx82 = getelementptr inbounds [2 x double], ptr %domain81, i64 0, i64 0
  %73 = load double, ptr %arrayidx82, align 8, !tbaa !11
  %74 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr83 = getelementptr inbounds %struct.unur_gen, ptr %74, i32 0, i32 4
  %75 = load ptr, ptr %distr83, align 8, !tbaa !49
  %call84 = call double %70(double noundef %73, ptr noundef %75)
  %cmp85 = fcmp ole double %call84, 0.000000e+00
  br i1 %cmp85, label %if.then86, label %if.end88

if.then86:                                        ; preds = %land.lhs.true, %if.end
  %76 = load double, ptr %tailcutoff, align 8, !tbaa !38
  %77 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap87 = getelementptr inbounds %struct.unur_gen, ptr %77, i32 0, i32 0
  %78 = load ptr, ptr %datap87, align 8, !tbaa !34
  %tailcutoff_left = getelementptr inbounds %struct.unur_hinv_gen, ptr %78, i32 0, i32 14
  store double %76, ptr %tailcutoff_left, align 8, !tbaa !63
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %land.lhs.true, %lor.lhs.false
  %79 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr89 = getelementptr inbounds %struct.unur_gen, ptr %79, i32 0, i32 4
  %80 = load ptr, ptr %distr89, align 8, !tbaa !49
  %data90 = getelementptr inbounds %struct.unur_distr, ptr %80, i32 0, i32 0
  %domain91 = getelementptr inbounds %struct.unur_distr_cont, ptr %data90, i32 0, i32 16
  %arrayidx92 = getelementptr inbounds [2 x double], ptr %domain91, i64 0, i64 1
  %81 = load double, ptr %arrayidx92, align 8, !tbaa !11
  %cmp93 = fcmp oge double %81, 0x7FF0000000000000
  br i1 %cmp93, label %if.then110, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %if.end88
  %82 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr95 = getelementptr inbounds %struct.unur_gen, ptr %82, i32 0, i32 4
  %83 = load ptr, ptr %distr95, align 8, !tbaa !49
  %data96 = getelementptr inbounds %struct.unur_distr, ptr %83, i32 0, i32 0
  %pdf97 = getelementptr inbounds %struct.unur_distr_cont, ptr %data96, i32 0, i32 0
  %84 = load ptr, ptr %pdf97, align 8, !tbaa !11
  %cmp98 = icmp ne ptr %84, null
  br i1 %cmp98, label %land.lhs.true99, label %if.end112

land.lhs.true99:                                  ; preds = %lor.lhs.false94
  %85 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr100 = getelementptr inbounds %struct.unur_gen, ptr %85, i32 0, i32 4
  %86 = load ptr, ptr %distr100, align 8, !tbaa !49
  %data101 = getelementptr inbounds %struct.unur_distr, ptr %86, i32 0, i32 0
  %pdf102 = getelementptr inbounds %struct.unur_distr_cont, ptr %data101, i32 0, i32 0
  %87 = load ptr, ptr %pdf102, align 8, !tbaa !11
  %88 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr103 = getelementptr inbounds %struct.unur_gen, ptr %88, i32 0, i32 4
  %89 = load ptr, ptr %distr103, align 8, !tbaa !49
  %data104 = getelementptr inbounds %struct.unur_distr, ptr %89, i32 0, i32 0
  %domain105 = getelementptr inbounds %struct.unur_distr_cont, ptr %data104, i32 0, i32 16
  %arrayidx106 = getelementptr inbounds [2 x double], ptr %domain105, i64 0, i64 1
  %90 = load double, ptr %arrayidx106, align 8, !tbaa !11
  %91 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr107 = getelementptr inbounds %struct.unur_gen, ptr %91, i32 0, i32 4
  %92 = load ptr, ptr %distr107, align 8, !tbaa !49
  %call108 = call double %87(double noundef %90, ptr noundef %92)
  %cmp109 = fcmp ole double %call108, 0.000000e+00
  br i1 %cmp109, label %if.then110, label %if.end112

if.then110:                                       ; preds = %land.lhs.true99, %if.end88
  %93 = load double, ptr %tailcutoff, align 8, !tbaa !38
  %sub = fsub double 1.000000e+00, %93
  %94 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap111 = getelementptr inbounds %struct.unur_gen, ptr %94, i32 0, i32 0
  %95 = load ptr, ptr %datap111, align 8, !tbaa !34
  %tailcutoff_right = getelementptr inbounds %struct.unur_hinv_gen, ptr %95, i32 0, i32 15
  store double %sub, ptr %tailcutoff_right, align 8, !tbaa !64
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %land.lhs.true99, %lor.lhs.false94
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end112, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %tailcutoff) #6
  %96 = load i32, ptr %retval, align 4
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define internal void @_unur_hinv_free(ptr noundef %gen) #0 {
entry:
  %gen.addr = alloca ptr, align 8
  %iv5 = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %gen, ptr %gen.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %method = getelementptr inbounds %struct.unur_gen, ptr %1, i32 0, i32 6
  %2 = load i32, ptr %method, align 4, !tbaa !45
  %cmp = icmp ne i32 %2, 33554944
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then1
  %3 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %genid = getelementptr inbounds %struct.unur_gen, ptr %3, i32 0, i32 10
  %4 = load ptr, ptr %genid, align 8, !tbaa !46
  call void @_unur_error_x(ptr noundef %4, ptr noundef @.str.1, i32 noundef 1029, ptr noundef @.str.5, i32 noundef 52, ptr noundef @.str.3)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %return

if.end2:                                          ; preds = %if.end
  %5 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %sample = getelementptr inbounds %struct.unur_gen, ptr %5, i32 0, i32 1
  store ptr null, ptr %sample, align 8, !tbaa !11
  %6 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_gen, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %datap, align 8, !tbaa !34
  %iv = getelementptr inbounds %struct.unur_hinv_gen, ptr %7, i32 0, i32 13
  %8 = load ptr, ptr %iv, align 8, !tbaa !65
  %tobool3 = icmp ne ptr %8, null
  br i1 %tobool3, label %if.then4, label %if.end10

if.then4:                                         ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 8, ptr %iv5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #6
  %9 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap6 = getelementptr inbounds %struct.unur_gen, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %datap6, align 8, !tbaa !34
  %iv7 = getelementptr inbounds %struct.unur_hinv_gen, ptr %10, i32 0, i32 13
  %11 = load ptr, ptr %iv7, align 8, !tbaa !65
  store ptr %11, ptr %iv5, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %12 = load ptr, ptr %iv5, align 8, !tbaa !4
  %cmp8 = icmp ne ptr %12, null
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %iv5, align 8, !tbaa !4
  %next9 = getelementptr inbounds %struct.unur_hinv_interval, ptr %13, i32 0, i32 5
  %14 = load ptr, ptr %next9, align 8, !tbaa !67
  store ptr %14, ptr %next, align 8, !tbaa !4
  %15 = load ptr, ptr %iv5, align 8, !tbaa !4
  call void @free(ptr noundef %15) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load ptr, ptr %next, align 8, !tbaa !4
  store ptr %16, ptr %iv5, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %iv5) #6
  br label %if.end10

if.end10:                                         ; preds = %for.end, %if.end2
  %17 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap11 = getelementptr inbounds %struct.unur_gen, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %datap11, align 8, !tbaa !34
  %intervals = getelementptr inbounds %struct.unur_hinv_gen, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %intervals, align 8, !tbaa !36
  %tobool12 = icmp ne ptr %19, null
  br i1 %tobool12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end10
  %20 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap14 = getelementptr inbounds %struct.unur_gen, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %datap14, align 8, !tbaa !34
  %intervals15 = getelementptr inbounds %struct.unur_hinv_gen, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %intervals15, align 8, !tbaa !36
  call void @free(ptr noundef %22) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end10
  %23 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap17 = getelementptr inbounds %struct.unur_gen, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %datap17, align 8, !tbaa !34
  %guide = getelementptr inbounds %struct.unur_hinv_gen, ptr %24, i32 0, i32 3
  %25 = load ptr, ptr %guide, align 8, !tbaa !53
  %tobool18 = icmp ne ptr %25, null
  br i1 %tobool18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end16
  %26 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap20 = getelementptr inbounds %struct.unur_gen, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %datap20, align 8, !tbaa !34
  %guide21 = getelementptr inbounds %struct.unur_hinv_gen, ptr %27, i32 0, i32 3
  %28 = load ptr, ptr %guide21, align 8, !tbaa !53
  call void @free(ptr noundef %28) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end16
  %29 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  call void @_unur_generic_free(ptr noundef %29)
  br label %return

return:                                           ; preds = %if.end22, %do.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @_unur_hinv_create_table(ptr noundef %gen) #0 {
entry:
  %retval = alloca i32, align 4
  %gen.addr = alloca ptr, align 8
  %iv = alloca ptr, align 8
  %iv_new = alloca ptr, align 8
  %i = alloca i32, align 4
  %error_count_shortinterval = alloca i32, align 4
  %Fx = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gen, ptr %gen.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %iv) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %iv_new) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %error_count_shortinterval) #6
  store i32 0, ptr %error_count_shortinterval, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fx) #6
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %call = call i32 @_unur_hinv_find_boundary(ptr noundef %0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 50, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.end
  %1 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_gen, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %datap, align 8, !tbaa !34
  %stp = getelementptr inbounds %struct.unur_hinv_gen, ptr %2, i32 0, i32 17
  %3 = load ptr, ptr %stp, align 8, !tbaa !43
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap2 = getelementptr inbounds %struct.unur_gen, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %datap2, align 8, !tbaa !34
  %iv3 = getelementptr inbounds %struct.unur_hinv_gen, ptr %5, i32 0, i32 13
  %6 = load ptr, ptr %iv3, align 8, !tbaa !65
  store ptr %6, ptr %iv, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !31
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then1
  %7 = load i32, ptr %i, align 4, !tbaa !31
  %8 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap4 = getelementptr inbounds %struct.unur_gen, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %datap4, align 8, !tbaa !34
  %n_stp = getelementptr inbounds %struct.unur_hinv_gen, ptr %9, i32 0, i32 18
  %10 = load i32, ptr %n_stp, align 8, !tbaa !44
  %cmp5 = icmp slt i32 %7, %10
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap6 = getelementptr inbounds %struct.unur_gen, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %datap6, align 8, !tbaa !34
  %stp7 = getelementptr inbounds %struct.unur_hinv_gen, ptr %12, i32 0, i32 17
  %13 = load ptr, ptr %stp7, align 8, !tbaa !43
  %14 = load i32, ptr %i, align 4, !tbaa !31
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds double, ptr %13, i64 %idxprom
  %15 = load double, ptr %arrayidx, align 8, !tbaa !38
  %16 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap8 = getelementptr inbounds %struct.unur_gen, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %datap8, align 8, !tbaa !34
  %bleft = getelementptr inbounds %struct.unur_hinv_gen, ptr %17, i32 0, i32 11
  %18 = load double, ptr %bleft, align 8, !tbaa !47
  %call9 = call i32 @_unur_FP_cmp(double noundef %15, double noundef %18, double noundef 0x3D19000000000000)
  %cmp10 = icmp sgt i32 %call9, 0
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br i1 true, label %if.end12, label %if.then11

cond.false:                                       ; preds = %for.body
  br i1 false, label %if.end12, label %if.then11

if.then11:                                        ; preds = %cond.false, %cond.true
  br label %for.inc

if.end12:                                         ; preds = %cond.false, %cond.true
  %19 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap13 = getelementptr inbounds %struct.unur_gen, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %datap13, align 8, !tbaa !34
  %stp14 = getelementptr inbounds %struct.unur_hinv_gen, ptr %20, i32 0, i32 17
  %21 = load ptr, ptr %stp14, align 8, !tbaa !43
  %22 = load i32, ptr %i, align 4, !tbaa !31
  %idxprom15 = sext i32 %22 to i64
  %arrayidx16 = getelementptr inbounds double, ptr %21, i64 %idxprom15
  %23 = load double, ptr %arrayidx16, align 8, !tbaa !38
  %24 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap17 = getelementptr inbounds %struct.unur_gen, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %datap17, align 8, !tbaa !34
  %bright = getelementptr inbounds %struct.unur_hinv_gen, ptr %25, i32 0, i32 12
  %26 = load double, ptr %bright, align 8, !tbaa !48
  %call18 = call i32 @_unur_FP_cmp(double noundef %23, double noundef %26, double noundef 0x3D19000000000000)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %cond.true20, label %cond.false21

cond.true20:                                      ; preds = %if.end12
  br i1 true, label %if.end23, label %if.then22

cond.false21:                                     ; preds = %if.end12
  br i1 false, label %if.end23, label %if.then22

if.then22:                                        ; preds = %cond.false21, %cond.true20
  br label %for.end

if.end23:                                         ; preds = %cond.false21, %cond.true20
  %27 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %28 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap24 = getelementptr inbounds %struct.unur_gen, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %datap24, align 8, !tbaa !34
  %stp25 = getelementptr inbounds %struct.unur_hinv_gen, ptr %29, i32 0, i32 17
  %30 = load ptr, ptr %stp25, align 8, !tbaa !43
  %31 = load i32, ptr %i, align 4, !tbaa !31
  %idxprom26 = sext i32 %31 to i64
  %arrayidx27 = getelementptr inbounds double, ptr %30, i64 %idxprom26
  %32 = load double, ptr %arrayidx27, align 8, !tbaa !38
  %call28 = call double @_unur_hinv_CDF(ptr noundef %27, double noundef %32)
  store double %call28, ptr %Fx, align 8, !tbaa !38
  %33 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %34 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap29 = getelementptr inbounds %struct.unur_gen, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %datap29, align 8, !tbaa !34
  %stp30 = getelementptr inbounds %struct.unur_hinv_gen, ptr %35, i32 0, i32 17
  %36 = load ptr, ptr %stp30, align 8, !tbaa !43
  %37 = load i32, ptr %i, align 4, !tbaa !31
  %idxprom31 = sext i32 %37 to i64
  %arrayidx32 = getelementptr inbounds double, ptr %36, i64 %idxprom31
  %38 = load double, ptr %arrayidx32, align 8, !tbaa !38
  %39 = load double, ptr %Fx, align 8, !tbaa !38
  %call33 = call ptr @_unur_hinv_interval_new(ptr noundef %33, double noundef %38, double noundef %39)
  store ptr %call33, ptr %iv_new, align 8, !tbaa !4
  %40 = load ptr, ptr %iv_new, align 8, !tbaa !4
  %cmp34 = icmp eq ptr %40, null
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end23
  store i32 50, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.end23
  %41 = load ptr, ptr %iv, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.unur_hinv_interval, ptr %41, i32 0, i32 5
  %42 = load ptr, ptr %next, align 8, !tbaa !67
  %43 = load ptr, ptr %iv_new, align 8, !tbaa !4
  %next37 = getelementptr inbounds %struct.unur_hinv_interval, ptr %43, i32 0, i32 5
  store ptr %42, ptr %next37, align 8, !tbaa !67
  %44 = load ptr, ptr %iv_new, align 8, !tbaa !4
  %45 = load ptr, ptr %iv, align 8, !tbaa !4
  %next38 = getelementptr inbounds %struct.unur_hinv_interval, ptr %45, i32 0, i32 5
  store ptr %44, ptr %next38, align 8, !tbaa !67
  %46 = load ptr, ptr %iv_new, align 8, !tbaa !4
  store ptr %46, ptr %iv, align 8, !tbaa !4
  %47 = load double, ptr %Fx, align 8, !tbaa !38
  %48 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap39 = getelementptr inbounds %struct.unur_gen, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %datap39, align 8, !tbaa !34
  %tailcutoff_right = getelementptr inbounds %struct.unur_hinv_gen, ptr %49, i32 0, i32 15
  %50 = load double, ptr %tailcutoff_right, align 8, !tbaa !64
  %cmp40 = fcmp ogt double %47, %50
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end36
  br label %for.end

if.end42:                                         ; preds = %if.end36
  br label %for.inc

for.inc:                                          ; preds = %if.end42, %if.then11
  %51 = load i32, ptr %i, align 4, !tbaa !31
  %inc = add nsw i32 %51, 1
  store i32 %inc, ptr %i, align 4, !tbaa !31
  br label %for.cond

for.end:                                          ; preds = %if.then41, %if.then22, %for.cond
  br label %if.end79

if.else:                                          ; preds = %if.end
  %52 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr = getelementptr inbounds %struct.unur_gen, ptr %52, i32 0, i32 4
  %53 = load ptr, ptr %distr, align 8, !tbaa !49
  %set = getelementptr inbounds %struct.unur_distr, ptr %53, i32 0, i32 6
  %54 = load i32, ptr %set, align 4, !tbaa !50
  %and = and i32 %54, 1
  %tobool43 = icmp ne i32 %and, 0
  br i1 %tobool43, label %land.lhs.true, label %if.end78

land.lhs.true:                                    ; preds = %if.else
  %55 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr44 = getelementptr inbounds %struct.unur_gen, ptr %55, i32 0, i32 4
  %56 = load ptr, ptr %distr44, align 8, !tbaa !49
  %data = getelementptr inbounds %struct.unur_distr, ptr %56, i32 0, i32 0
  %mode = getelementptr inbounds %struct.unur_distr_cont, ptr %data, i32 0, i32 13
  %57 = load double, ptr %mode, align 8, !tbaa !11
  %58 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap45 = getelementptr inbounds %struct.unur_gen, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %datap45, align 8, !tbaa !34
  %bleft46 = getelementptr inbounds %struct.unur_hinv_gen, ptr %59, i32 0, i32 11
  %60 = load double, ptr %bleft46, align 8, !tbaa !47
  %call47 = call i32 @_unur_FP_cmp(double noundef %57, double noundef %60, double noundef 0x3D19000000000000)
  %cmp48 = icmp sgt i32 %call47, 0
  br i1 %cmp48, label %cond.true49, label %cond.false50

cond.true49:                                      ; preds = %land.lhs.true
  br i1 true, label %land.lhs.true51, label %if.end78

cond.false50:                                     ; preds = %land.lhs.true
  br i1 false, label %land.lhs.true51, label %if.end78

land.lhs.true51:                                  ; preds = %cond.false50, %cond.true49
  %61 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr52 = getelementptr inbounds %struct.unur_gen, ptr %61, i32 0, i32 4
  %62 = load ptr, ptr %distr52, align 8, !tbaa !49
  %data53 = getelementptr inbounds %struct.unur_distr, ptr %62, i32 0, i32 0
  %mode54 = getelementptr inbounds %struct.unur_distr_cont, ptr %data53, i32 0, i32 13
  %63 = load double, ptr %mode54, align 8, !tbaa !11
  %64 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap55 = getelementptr inbounds %struct.unur_gen, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %datap55, align 8, !tbaa !34
  %bright56 = getelementptr inbounds %struct.unur_hinv_gen, ptr %65, i32 0, i32 12
  %66 = load double, ptr %bright56, align 8, !tbaa !48
  %call57 = call i32 @_unur_FP_cmp(double noundef %63, double noundef %66, double noundef 0x3D19000000000000)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %cond.true59, label %cond.false60

cond.true59:                                      ; preds = %land.lhs.true51
  br i1 true, label %if.then61, label %if.end78

cond.false60:                                     ; preds = %land.lhs.true51
  br i1 false, label %if.then61, label %if.end78

if.then61:                                        ; preds = %cond.false60, %cond.true59
  %67 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap62 = getelementptr inbounds %struct.unur_gen, ptr %67, i32 0, i32 0
  %68 = load ptr, ptr %datap62, align 8, !tbaa !34
  %iv63 = getelementptr inbounds %struct.unur_hinv_gen, ptr %68, i32 0, i32 13
  %69 = load ptr, ptr %iv63, align 8, !tbaa !65
  store ptr %69, ptr %iv, align 8, !tbaa !4
  %70 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %71 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr64 = getelementptr inbounds %struct.unur_gen, ptr %71, i32 0, i32 4
  %72 = load ptr, ptr %distr64, align 8, !tbaa !49
  %data65 = getelementptr inbounds %struct.unur_distr, ptr %72, i32 0, i32 0
  %mode66 = getelementptr inbounds %struct.unur_distr_cont, ptr %data65, i32 0, i32 13
  %73 = load double, ptr %mode66, align 8, !tbaa !11
  %74 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %75 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr67 = getelementptr inbounds %struct.unur_gen, ptr %75, i32 0, i32 4
  %76 = load ptr, ptr %distr67, align 8, !tbaa !49
  %data68 = getelementptr inbounds %struct.unur_distr, ptr %76, i32 0, i32 0
  %mode69 = getelementptr inbounds %struct.unur_distr_cont, ptr %data68, i32 0, i32 13
  %77 = load double, ptr %mode69, align 8, !tbaa !11
  %call70 = call double @_unur_hinv_CDF(ptr noundef %74, double noundef %77)
  %call71 = call ptr @_unur_hinv_interval_new(ptr noundef %70, double noundef %73, double noundef %call70)
  store ptr %call71, ptr %iv_new, align 8, !tbaa !4
  %78 = load ptr, ptr %iv_new, align 8, !tbaa !4
  %cmp72 = icmp eq ptr %78, null
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.then61
  store i32 50, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end74:                                         ; preds = %if.then61
  %79 = load ptr, ptr %iv, align 8, !tbaa !4
  %next75 = getelementptr inbounds %struct.unur_hinv_interval, ptr %79, i32 0, i32 5
  %80 = load ptr, ptr %next75, align 8, !tbaa !67
  %81 = load ptr, ptr %iv_new, align 8, !tbaa !4
  %next76 = getelementptr inbounds %struct.unur_hinv_interval, ptr %81, i32 0, i32 5
  store ptr %80, ptr %next76, align 8, !tbaa !67
  %82 = load ptr, ptr %iv_new, align 8, !tbaa !4
  %83 = load ptr, ptr %iv, align 8, !tbaa !4
  %next77 = getelementptr inbounds %struct.unur_hinv_interval, ptr %83, i32 0, i32 5
  store ptr %82, ptr %next77, align 8, !tbaa !67
  br label %if.end78

if.end78:                                         ; preds = %if.end74, %cond.false60, %cond.true59, %cond.false50, %cond.true49, %if.else
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %for.end
  %84 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap80 = getelementptr inbounds %struct.unur_gen, ptr %84, i32 0, i32 0
  %85 = load ptr, ptr %datap80, align 8, !tbaa !34
  %iv81 = getelementptr inbounds %struct.unur_hinv_gen, ptr %85, i32 0, i32 13
  %86 = load ptr, ptr %iv81, align 8, !tbaa !65
  store ptr %86, ptr %iv, align 8, !tbaa !4
  br label %for.cond82

for.cond82:                                       ; preds = %if.end97, %if.end79
  %87 = load ptr, ptr %iv, align 8, !tbaa !4
  %next83 = getelementptr inbounds %struct.unur_hinv_interval, ptr %87, i32 0, i32 5
  %88 = load ptr, ptr %next83, align 8, !tbaa !67
  %cmp84 = icmp ne ptr %88, null
  br i1 %cmp84, label %for.body85, label %for.end98

for.body85:                                       ; preds = %for.cond82
  %89 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap86 = getelementptr inbounds %struct.unur_gen, ptr %89, i32 0, i32 0
  %90 = load ptr, ptr %datap86, align 8, !tbaa !34
  %N = getelementptr inbounds %struct.unur_hinv_gen, ptr %90, i32 0, i32 1
  %91 = load i32, ptr %N, align 4, !tbaa !40
  %92 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap87 = getelementptr inbounds %struct.unur_gen, ptr %92, i32 0, i32 0
  %93 = load ptr, ptr %datap87, align 8, !tbaa !34
  %max_ivs = getelementptr inbounds %struct.unur_hinv_gen, ptr %93, i32 0, i32 16
  %94 = load i32, ptr %max_ivs, align 8, !tbaa !62
  %cmp88 = icmp sge i32 %91, %94
  br i1 %cmp88, label %if.then89, label %if.end93

if.then89:                                        ; preds = %for.body85
  br label %do.body90

do.body90:                                        ; preds = %if.then89
  call void @_unur_error_x(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 1378, ptr noundef @.str.2, i32 noundef 51, ptr noundef @.str.55)
  br label %do.cond91

do.cond91:                                        ; preds = %do.body90
  br label %do.end92

do.end92:                                         ; preds = %do.cond91
  store i32 51, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end93:                                         ; preds = %for.body85
  %95 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %96 = load ptr, ptr %iv, align 8, !tbaa !4
  %call94 = call ptr @_unur_hinv_interval_adapt(ptr noundef %95, ptr noundef %96, ptr noundef %error_count_shortinterval)
  store ptr %call94, ptr %iv, align 8, !tbaa !4
  %97 = load ptr, ptr %iv, align 8, !tbaa !4
  %cmp95 = icmp eq ptr %97, null
  br i1 %cmp95, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end93
  store i32 50, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end97:                                         ; preds = %if.end93
  br label %for.cond82

for.end98:                                        ; preds = %for.cond82
  %98 = load ptr, ptr %iv, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.unur_hinv_interval, ptr %98, i32 0, i32 1
  %99 = load double, ptr %p, align 8, !tbaa !69
  %100 = load ptr, ptr %iv, align 8, !tbaa !4
  %spline = getelementptr inbounds %struct.unur_hinv_interval, ptr %100, i32 0, i32 0
  %arrayidx99 = getelementptr inbounds [6 x double], ptr %spline, i64 0, i64 0
  store double %99, ptr %arrayidx99, align 8, !tbaa !38
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end98, %if.then96, %do.end92, %if.then73, %if.then35, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fx) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %error_count_shortinterval) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %iv_new) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %iv) #6
  %101 = load i32, ptr %retval, align 4
  ret i32 %101
}

; Function Attrs: nounwind uwtable
define internal i32 @_unur_hinv_list_to_array(ptr noundef %gen) #0 {
entry:
  %gen.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %iv = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %gen, ptr %gen.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %iv) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #6
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_gen, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %datap, align 8, !tbaa !34
  %intervals = getelementptr inbounds %struct.unur_hinv_gen, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %intervals, align 8, !tbaa !36
  %3 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap1 = getelementptr inbounds %struct.unur_gen, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %datap1, align 8, !tbaa !34
  %N = getelementptr inbounds %struct.unur_hinv_gen, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %N, align 4, !tbaa !40
  %6 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap2 = getelementptr inbounds %struct.unur_gen, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %datap2, align 8, !tbaa !34
  %order = getelementptr inbounds %struct.unur_hinv_gen, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %order, align 8, !tbaa !41
  %add = add nsw i32 %8, 2
  %mul = mul nsw i32 %5, %add
  %conv = sext i32 %mul to i64
  %mul3 = mul i64 %conv, 8
  %call = call noalias ptr @_unur_xrealloc(ptr noundef %2, i64 noundef %mul3)
  %9 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap4 = getelementptr inbounds %struct.unur_gen, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %datap4, align 8, !tbaa !34
  %intervals5 = getelementptr inbounds %struct.unur_hinv_gen, ptr %10, i32 0, i32 2
  store ptr %call, ptr %intervals5, align 8, !tbaa !36
  store i32 0, ptr %i, align 4, !tbaa !31
  %11 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap6 = getelementptr inbounds %struct.unur_gen, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %datap6, align 8, !tbaa !34
  %iv7 = getelementptr inbounds %struct.unur_hinv_gen, ptr %12, i32 0, i32 13
  %13 = load ptr, ptr %iv7, align 8, !tbaa !65
  store ptr %13, ptr %iv, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %14 = load ptr, ptr %iv, align 8, !tbaa !4
  %cmp = icmp ne ptr %14, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %iv, align 8, !tbaa !4
  %u = getelementptr inbounds %struct.unur_hinv_interval, ptr %15, i32 0, i32 2
  %16 = load double, ptr %u, align 8, !tbaa !70
  %17 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap9 = getelementptr inbounds %struct.unur_gen, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %datap9, align 8, !tbaa !34
  %intervals10 = getelementptr inbounds %struct.unur_hinv_gen, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %intervals10, align 8, !tbaa !36
  %20 = load i32, ptr %i, align 4, !tbaa !31
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds double, ptr %19, i64 %idxprom
  store double %16, ptr %arrayidx, align 8, !tbaa !38
  %21 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap11 = getelementptr inbounds %struct.unur_gen, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %datap11, align 8, !tbaa !34
  %intervals12 = getelementptr inbounds %struct.unur_hinv_gen, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %intervals12, align 8, !tbaa !36
  %24 = load i32, ptr %i, align 4, !tbaa !31
  %add13 = add nsw i32 %24, 1
  %idx.ext = sext i32 %add13 to i64
  %add.ptr = getelementptr inbounds double, ptr %23, i64 %idx.ext
  %25 = load ptr, ptr %iv, align 8, !tbaa !4
  %spline = getelementptr inbounds %struct.unur_hinv_interval, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap14 = getelementptr inbounds %struct.unur_gen, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %datap14, align 8, !tbaa !34
  %order15 = getelementptr inbounds %struct.unur_hinv_gen, ptr %27, i32 0, i32 0
  %28 = load i32, ptr %order15, align 8, !tbaa !41
  %add16 = add nsw i32 %28, 1
  %conv17 = sext i32 %add16 to i64
  %mul18 = mul i64 %conv17, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %add.ptr, ptr align 8 %spline, i64 %mul18, i1 false)
  %29 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap19 = getelementptr inbounds %struct.unur_gen, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %datap19, align 8, !tbaa !34
  %order20 = getelementptr inbounds %struct.unur_hinv_gen, ptr %30, i32 0, i32 0
  %31 = load i32, ptr %order20, align 8, !tbaa !41
  %add21 = add nsw i32 %31, 2
  %32 = load i32, ptr %i, align 4, !tbaa !31
  %add22 = add nsw i32 %32, %add21
  store i32 %add22, ptr %i, align 4, !tbaa !31
  %33 = load ptr, ptr %iv, align 8, !tbaa !4
  %next23 = getelementptr inbounds %struct.unur_hinv_interval, ptr %33, i32 0, i32 5
  %34 = load ptr, ptr %next23, align 8, !tbaa !67
  store ptr %34, ptr %next, align 8, !tbaa !4
  %35 = load ptr, ptr %iv, align 8, !tbaa !4
  call void @free(ptr noundef %35) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load ptr, ptr %next, align 8, !tbaa !4
  store ptr %36, ptr %iv, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap24 = getelementptr inbounds %struct.unur_gen, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %datap24, align 8, !tbaa !34
  %iv25 = getelementptr inbounds %struct.unur_hinv_gen, ptr %38, i32 0, i32 13
  store ptr null, ptr %iv25, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %iv) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @_unur_hinv_make_guide_table(ptr noundef %gen) #0 {
entry:
  %gen.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %imax = alloca i32, align 4
  store ptr %gen, ptr %gen.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %imax) #6
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_gen, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %datap, align 8, !tbaa !34
  %N = getelementptr inbounds %struct.unur_hinv_gen, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %N, align 4, !tbaa !40
  %conv = sitofp i32 %2 to double
  %3 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap1 = getelementptr inbounds %struct.unur_gen, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %datap1, align 8, !tbaa !34
  %guide_factor = getelementptr inbounds %struct.unur_hinv_gen, ptr %4, i32 0, i32 5
  %5 = load double, ptr %guide_factor, align 8, !tbaa !59
  %mul = fmul double %conv, %5
  %conv2 = fptosi double %mul to i32
  %6 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap3 = getelementptr inbounds %struct.unur_gen, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %datap3, align 8, !tbaa !34
  %guide_size = getelementptr inbounds %struct.unur_hinv_gen, ptr %7, i32 0, i32 4
  store i32 %conv2, ptr %guide_size, align 8, !tbaa !54
  %8 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap4 = getelementptr inbounds %struct.unur_gen, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %datap4, align 8, !tbaa !34
  %guide_size5 = getelementptr inbounds %struct.unur_hinv_gen, ptr %9, i32 0, i32 4
  %10 = load i32, ptr %guide_size5, align 8, !tbaa !54
  %cmp = icmp sle i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %11 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap7 = getelementptr inbounds %struct.unur_gen, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %datap7, align 8, !tbaa !34
  %guide_size8 = getelementptr inbounds %struct.unur_hinv_gen, ptr %12, i32 0, i32 4
  store i32 1, ptr %guide_size8, align 8, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %13 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap9 = getelementptr inbounds %struct.unur_gen, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %datap9, align 8, !tbaa !34
  %guide = getelementptr inbounds %struct.unur_hinv_gen, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %guide, align 8, !tbaa !53
  %16 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap10 = getelementptr inbounds %struct.unur_gen, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %datap10, align 8, !tbaa !34
  %guide_size11 = getelementptr inbounds %struct.unur_hinv_gen, ptr %17, i32 0, i32 4
  %18 = load i32, ptr %guide_size11, align 8, !tbaa !54
  %conv12 = sext i32 %18 to i64
  %mul13 = mul i64 %conv12, 4
  %call = call noalias ptr @_unur_xrealloc(ptr noundef %15, i64 noundef %mul13)
  %19 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap14 = getelementptr inbounds %struct.unur_gen, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %datap14, align 8, !tbaa !34
  %guide15 = getelementptr inbounds %struct.unur_hinv_gen, ptr %20, i32 0, i32 3
  store ptr %call, ptr %guide15, align 8, !tbaa !53
  %21 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap16 = getelementptr inbounds %struct.unur_gen, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %datap16, align 8, !tbaa !34
  %N17 = getelementptr inbounds %struct.unur_hinv_gen, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %N17, align 4, !tbaa !40
  %sub = sub nsw i32 %23, 2
  %24 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap18 = getelementptr inbounds %struct.unur_gen, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %datap18, align 8, !tbaa !34
  %order = getelementptr inbounds %struct.unur_hinv_gen, ptr %25, i32 0, i32 0
  %26 = load i32, ptr %order, align 8, !tbaa !41
  %add = add nsw i32 %26, 2
  %mul19 = mul nsw i32 %sub, %add
  store i32 %mul19, ptr %imax, align 4, !tbaa !31
  store i32 0, ptr %i, align 4, !tbaa !31
  %27 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap20 = getelementptr inbounds %struct.unur_gen, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %datap20, align 8, !tbaa !34
  %guide21 = getelementptr inbounds %struct.unur_hinv_gen, ptr %28, i32 0, i32 3
  %29 = load ptr, ptr %guide21, align 8, !tbaa !53
  %arrayidx = getelementptr inbounds i32, ptr %29, i64 0
  store i32 0, ptr %arrayidx, align 4, !tbaa !31
  store i32 1, ptr %j, align 4, !tbaa !31
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %30 = load i32, ptr %j, align 4, !tbaa !31
  %31 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap22 = getelementptr inbounds %struct.unur_gen, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %datap22, align 8, !tbaa !34
  %guide_size23 = getelementptr inbounds %struct.unur_hinv_gen, ptr %32, i32 0, i32 4
  %33 = load i32, ptr %guide_size23, align 8, !tbaa !54
  %cmp24 = icmp slt i32 %30, %33
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %34 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap26 = getelementptr inbounds %struct.unur_gen, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %datap26, align 8, !tbaa !34
  %intervals = getelementptr inbounds %struct.unur_hinv_gen, ptr %35, i32 0, i32 2
  %36 = load ptr, ptr %intervals, align 8, !tbaa !36
  %37 = load i32, ptr %i, align 4, !tbaa !31
  %38 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap27 = getelementptr inbounds %struct.unur_gen, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %datap27, align 8, !tbaa !34
  %order28 = getelementptr inbounds %struct.unur_hinv_gen, ptr %39, i32 0, i32 0
  %40 = load i32, ptr %order28, align 8, !tbaa !41
  %add29 = add nsw i32 %37, %40
  %add30 = add nsw i32 %add29, 2
  %idxprom = sext i32 %add30 to i64
  %arrayidx31 = getelementptr inbounds double, ptr %36, i64 %idxprom
  %41 = load double, ptr %arrayidx31, align 8, !tbaa !38
  %42 = load i32, ptr %j, align 4, !tbaa !31
  %conv32 = sitofp i32 %42 to double
  %43 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap33 = getelementptr inbounds %struct.unur_gen, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %datap33, align 8, !tbaa !34
  %guide_size34 = getelementptr inbounds %struct.unur_hinv_gen, ptr %44, i32 0, i32 4
  %45 = load i32, ptr %guide_size34, align 8, !tbaa !54
  %conv35 = sitofp i32 %45 to double
  %div = fdiv double %conv32, %conv35
  %cmp36 = fcmp olt double %41, %div
  br i1 %cmp36, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %46 = load i32, ptr %i, align 4, !tbaa !31
  %47 = load i32, ptr %imax, align 4, !tbaa !31
  %cmp38 = icmp sle i32 %46, %47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %48 = phi i1 [ false, %while.cond ], [ %cmp38, %land.rhs ]
  br i1 %48, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %49 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap40 = getelementptr inbounds %struct.unur_gen, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %datap40, align 8, !tbaa !34
  %order41 = getelementptr inbounds %struct.unur_hinv_gen, ptr %50, i32 0, i32 0
  %51 = load i32, ptr %order41, align 8, !tbaa !41
  %add42 = add nsw i32 %51, 2
  %52 = load i32, ptr %i, align 4, !tbaa !31
  %add43 = add nsw i32 %52, %add42
  store i32 %add43, ptr %i, align 4, !tbaa !31
  br label %while.cond

while.end:                                        ; preds = %land.end
  %53 = load i32, ptr %i, align 4, !tbaa !31
  %54 = load i32, ptr %imax, align 4, !tbaa !31
  %cmp44 = icmp sgt i32 %53, %54
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %while.end
  br label %for.end

if.end47:                                         ; preds = %while.end
  %55 = load i32, ptr %i, align 4, !tbaa !31
  %56 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap48 = getelementptr inbounds %struct.unur_gen, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %datap48, align 8, !tbaa !34
  %guide49 = getelementptr inbounds %struct.unur_hinv_gen, ptr %57, i32 0, i32 3
  %58 = load ptr, ptr %guide49, align 8, !tbaa !53
  %59 = load i32, ptr %j, align 4, !tbaa !31
  %idxprom50 = sext i32 %59 to i64
  %arrayidx51 = getelementptr inbounds i32, ptr %58, i64 %idxprom50
  store i32 %55, ptr %arrayidx51, align 4, !tbaa !31
  br label %for.inc

for.inc:                                          ; preds = %if.end47
  %60 = load i32, ptr %j, align 4, !tbaa !31
  %inc = add nsw i32 %60, 1
  store i32 %inc, ptr %j, align 4, !tbaa !31
  br label %for.cond

for.end:                                          ; preds = %if.then46, %for.cond
  %61 = load i32, ptr %i, align 4, !tbaa !31
  %62 = load i32, ptr %imax, align 4, !tbaa !31
  %cmp52 = icmp slt i32 %61, %62
  br i1 %cmp52, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %63 = load i32, ptr %i, align 4, !tbaa !31
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %64 = load i32, ptr %imax, align 4, !tbaa !31
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %63, %cond.true ], [ %64, %cond.false ]
  store i32 %cond, ptr %i, align 4, !tbaa !31
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc64, %cond.end
  %65 = load i32, ptr %j, align 4, !tbaa !31
  %66 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap55 = getelementptr inbounds %struct.unur_gen, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %datap55, align 8, !tbaa !34
  %guide_size56 = getelementptr inbounds %struct.unur_hinv_gen, ptr %67, i32 0, i32 4
  %68 = load i32, ptr %guide_size56, align 8, !tbaa !54
  %cmp57 = icmp slt i32 %65, %68
  br i1 %cmp57, label %for.body59, label %for.end66

for.body59:                                       ; preds = %for.cond54
  %69 = load i32, ptr %i, align 4, !tbaa !31
  %70 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap60 = getelementptr inbounds %struct.unur_gen, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %datap60, align 8, !tbaa !34
  %guide61 = getelementptr inbounds %struct.unur_hinv_gen, ptr %71, i32 0, i32 3
  %72 = load ptr, ptr %guide61, align 8, !tbaa !53
  %73 = load i32, ptr %j, align 4, !tbaa !31
  %idxprom62 = sext i32 %73 to i64
  %arrayidx63 = getelementptr inbounds i32, ptr %72, i64 %idxprom62
  store i32 %69, ptr %arrayidx63, align 4, !tbaa !31
  br label %for.inc64

for.inc64:                                        ; preds = %for.body59
  %74 = load i32, ptr %j, align 4, !tbaa !31
  %inc65 = add nsw i32 %74, 1
  store i32 %inc65, ptr %j, align 4, !tbaa !31
  br label %for.cond54

for.end66:                                        ; preds = %for.cond54
  call void @llvm.lifetime.end.p0(i64 4, ptr %imax) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret i32 0
}

declare ptr @_unur_generic_create(ptr noundef, i64 noundef) #2

declare ptr @_unur_make_genid(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal double @_unur_hinv_sample(ptr noundef %gen) #0 {
entry:
  %retval = alloca double, align 8
  %gen.addr = alloca ptr, align 8
  %U = alloca double, align 8
  %X = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gen, ptr %gen.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %U) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %X) #6
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_gen, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %datap, align 8, !tbaa !34
  %Umin = getelementptr inbounds %struct.unur_hinv_gen, ptr %1, i32 0, i32 6
  %2 = load double, ptr %Umin, align 8, !tbaa !39
  %3 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %urng = getelementptr inbounds %struct.unur_gen, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %urng, align 8, !tbaa !71
  %sampleunif = getelementptr inbounds %struct.unur_urng, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %sampleunif, align 8, !tbaa !72
  %6 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %urng1 = getelementptr inbounds %struct.unur_gen, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %urng1, align 8, !tbaa !71
  %state = getelementptr inbounds %struct.unur_urng, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %state, align 8, !tbaa !74
  %call = call double %5(ptr noundef %8)
  %9 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap2 = getelementptr inbounds %struct.unur_gen, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %datap2, align 8, !tbaa !34
  %Umax = getelementptr inbounds %struct.unur_hinv_gen, ptr %10, i32 0, i32 7
  %11 = load double, ptr %Umax, align 8, !tbaa !42
  %12 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap3 = getelementptr inbounds %struct.unur_gen, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %datap3, align 8, !tbaa !34
  %Umin4 = getelementptr inbounds %struct.unur_hinv_gen, ptr %13, i32 0, i32 6
  %14 = load double, ptr %Umin4, align 8, !tbaa !39
  %sub = fsub double %11, %14
  %15 = call double @llvm.fmuladd.f64(double %call, double %sub, double %2)
  store double %15, ptr %U, align 8, !tbaa !38
  %16 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %17 = load double, ptr %U, align 8, !tbaa !38
  %call5 = call double @_unur_hinv_eval_approxinvcdf(ptr noundef %16, double noundef %17)
  store double %call5, ptr %X, align 8, !tbaa !38
  %18 = load double, ptr %X, align 8, !tbaa !38
  %19 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr = getelementptr inbounds %struct.unur_gen, ptr %19, i32 0, i32 4
  %20 = load ptr, ptr %distr, align 8, !tbaa !49
  %data = getelementptr inbounds %struct.unur_distr, ptr %20, i32 0, i32 0
  %trunc = getelementptr inbounds %struct.unur_distr_cont, ptr %data, i32 0, i32 17
  %arrayidx = getelementptr inbounds [2 x double], ptr %trunc, i64 0, i64 0
  %21 = load double, ptr %arrayidx, align 8, !tbaa !11
  %cmp = fcmp olt double %18, %21
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %22 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr6 = getelementptr inbounds %struct.unur_gen, ptr %22, i32 0, i32 4
  %23 = load ptr, ptr %distr6, align 8, !tbaa !49
  %data7 = getelementptr inbounds %struct.unur_distr, ptr %23, i32 0, i32 0
  %trunc8 = getelementptr inbounds %struct.unur_distr_cont, ptr %data7, i32 0, i32 17
  %arrayidx9 = getelementptr inbounds [2 x double], ptr %trunc8, i64 0, i64 0
  %24 = load double, ptr %arrayidx9, align 8, !tbaa !11
  store double %24, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.end
  %25 = load double, ptr %X, align 8, !tbaa !38
  %26 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr10 = getelementptr inbounds %struct.unur_gen, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %distr10, align 8, !tbaa !49
  %data11 = getelementptr inbounds %struct.unur_distr, ptr %27, i32 0, i32 0
  %trunc12 = getelementptr inbounds %struct.unur_distr_cont, ptr %data11, i32 0, i32 17
  %arrayidx13 = getelementptr inbounds [2 x double], ptr %trunc12, i64 0, i64 1
  %28 = load double, ptr %arrayidx13, align 8, !tbaa !11
  %cmp14 = fcmp ogt double %25, %28
  br i1 %cmp14, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.end
  %29 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr16 = getelementptr inbounds %struct.unur_gen, ptr %29, i32 0, i32 4
  %30 = load ptr, ptr %distr16, align 8, !tbaa !49
  %data17 = getelementptr inbounds %struct.unur_distr, ptr %30, i32 0, i32 0
  %trunc18 = getelementptr inbounds %struct.unur_distr_cont, ptr %data17, i32 0, i32 17
  %arrayidx19 = getelementptr inbounds [2 x double], ptr %trunc18, i64 0, i64 1
  %31 = load double, ptr %arrayidx19, align 8, !tbaa !11
  store double %31, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %32 = load double, ptr %X, align 8, !tbaa !38
  store double %32, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %X) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %U) #6
  %33 = load double, ptr %retval, align 8
  ret double %33
}

; Function Attrs: nounwind uwtable
define internal ptr @_unur_hinv_clone(ptr noundef %gen) #0 {
entry:
  %gen.addr = alloca ptr, align 8
  %clone = alloca ptr, align 8
  store ptr %gen, ptr %gen.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %clone) #6
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %call = call ptr @_unur_generic_clone(ptr noundef %0, ptr noundef @.str)
  store ptr %call, ptr %clone, align 8, !tbaa !4
  %1 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_gen, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %datap, align 8, !tbaa !34
  %N = getelementptr inbounds %struct.unur_hinv_gen, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %N, align 4, !tbaa !40
  %4 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap1 = getelementptr inbounds %struct.unur_gen, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %datap1, align 8, !tbaa !34
  %order = getelementptr inbounds %struct.unur_hinv_gen, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %order, align 8, !tbaa !41
  %add = add nsw i32 %6, 2
  %mul = mul nsw i32 %3, %add
  %conv = sext i32 %mul to i64
  %mul2 = mul i64 %conv, 8
  %call3 = call noalias ptr @_unur_xmalloc(i64 noundef %mul2)
  %7 = load ptr, ptr %clone, align 8, !tbaa !4
  %datap4 = getelementptr inbounds %struct.unur_gen, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %datap4, align 8, !tbaa !34
  %intervals = getelementptr inbounds %struct.unur_hinv_gen, ptr %8, i32 0, i32 2
  store ptr %call3, ptr %intervals, align 8, !tbaa !36
  %9 = load ptr, ptr %clone, align 8, !tbaa !4
  %datap5 = getelementptr inbounds %struct.unur_gen, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %datap5, align 8, !tbaa !34
  %intervals6 = getelementptr inbounds %struct.unur_hinv_gen, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %intervals6, align 8, !tbaa !36
  %12 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap7 = getelementptr inbounds %struct.unur_gen, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %datap7, align 8, !tbaa !34
  %intervals8 = getelementptr inbounds %struct.unur_hinv_gen, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %intervals8, align 8, !tbaa !36
  %15 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap9 = getelementptr inbounds %struct.unur_gen, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %datap9, align 8, !tbaa !34
  %N10 = getelementptr inbounds %struct.unur_hinv_gen, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %N10, align 4, !tbaa !40
  %18 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap11 = getelementptr inbounds %struct.unur_gen, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %datap11, align 8, !tbaa !34
  %order12 = getelementptr inbounds %struct.unur_hinv_gen, ptr %19, i32 0, i32 0
  %20 = load i32, ptr %order12, align 8, !tbaa !41
  %add13 = add nsw i32 %20, 2
  %mul14 = mul nsw i32 %17, %add13
  %conv15 = sext i32 %mul14 to i64
  %mul16 = mul i64 %conv15, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %14, i64 %mul16, i1 false)
  %21 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap17 = getelementptr inbounds %struct.unur_gen, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %datap17, align 8, !tbaa !34
  %guide_size = getelementptr inbounds %struct.unur_hinv_gen, ptr %22, i32 0, i32 4
  %23 = load i32, ptr %guide_size, align 8, !tbaa !54
  %conv18 = sext i32 %23 to i64
  %mul19 = mul i64 %conv18, 4
  %call20 = call noalias ptr @_unur_xmalloc(i64 noundef %mul19)
  %24 = load ptr, ptr %clone, align 8, !tbaa !4
  %datap21 = getelementptr inbounds %struct.unur_gen, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %datap21, align 8, !tbaa !34
  %guide = getelementptr inbounds %struct.unur_hinv_gen, ptr %25, i32 0, i32 3
  store ptr %call20, ptr %guide, align 8, !tbaa !53
  %26 = load ptr, ptr %clone, align 8, !tbaa !4
  %datap22 = getelementptr inbounds %struct.unur_gen, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %datap22, align 8, !tbaa !34
  %guide23 = getelementptr inbounds %struct.unur_hinv_gen, ptr %27, i32 0, i32 3
  %28 = load ptr, ptr %guide23, align 8, !tbaa !53
  %29 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap24 = getelementptr inbounds %struct.unur_gen, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %datap24, align 8, !tbaa !34
  %guide25 = getelementptr inbounds %struct.unur_hinv_gen, ptr %30, i32 0, i32 3
  %31 = load ptr, ptr %guide25, align 8, !tbaa !53
  %32 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap26 = getelementptr inbounds %struct.unur_gen, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %datap26, align 8, !tbaa !34
  %guide_size27 = getelementptr inbounds %struct.unur_hinv_gen, ptr %33, i32 0, i32 4
  %34 = load i32, ptr %guide_size27, align 8, !tbaa !54
  %conv28 = sext i32 %34 to i64
  %mul29 = mul i64 %conv28, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %28, ptr align 4 %31, i64 %mul29, i1 false)
  %35 = load ptr, ptr %clone, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %clone) #6
  ret ptr %35
}

; Function Attrs: nounwind uwtable
define internal i32 @_unur_hinv_reinit(ptr noundef %gen) #0 {
entry:
  %retval = alloca i32, align 4
  %gen.addr = alloca ptr, align 8
  %rcode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gen, ptr %gen.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rcode) #6
  %0 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %call = call i32 @_unur_hinv_check_par(ptr noundef %0)
  store i32 %call, ptr %rcode, align 4, !tbaa !31
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %rcode, align 4, !tbaa !31
  store i32 %1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %call1 = call i32 @_unur_hinv_create_table(ptr noundef %2)
  store i32 %call1, ptr %rcode, align 4, !tbaa !31
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %3 = load i32, ptr %rcode, align 4, !tbaa !31
  store i32 %3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %call5 = call i32 @_unur_hinv_list_to_array(ptr noundef %4)
  %5 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_gen, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %datap, align 8, !tbaa !34
  %intervals = getelementptr inbounds %struct.unur_hinv_gen, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %intervals, align 8, !tbaa !36
  %arrayidx = getelementptr inbounds double, ptr %7, i64 0
  %8 = load double, ptr %arrayidx, align 8, !tbaa !38
  %cmp6 = fcmp ogt double 0.000000e+00, %8
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end4
  br label %cond.end

cond.false:                                       ; preds = %if.end4
  %9 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap7 = getelementptr inbounds %struct.unur_gen, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %datap7, align 8, !tbaa !34
  %intervals8 = getelementptr inbounds %struct.unur_hinv_gen, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %intervals8, align 8, !tbaa !36
  %arrayidx9 = getelementptr inbounds double, ptr %11, i64 0
  %12 = load double, ptr %arrayidx9, align 8, !tbaa !38
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %12, %cond.false ]
  %13 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap10 = getelementptr inbounds %struct.unur_gen, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %datap10, align 8, !tbaa !34
  %Umin = getelementptr inbounds %struct.unur_hinv_gen, ptr %14, i32 0, i32 6
  store double %cond, ptr %Umin, align 8, !tbaa !39
  %15 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap11 = getelementptr inbounds %struct.unur_gen, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %datap11, align 8, !tbaa !34
  %intervals12 = getelementptr inbounds %struct.unur_hinv_gen, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %intervals12, align 8, !tbaa !36
  %18 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap13 = getelementptr inbounds %struct.unur_gen, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %datap13, align 8, !tbaa !34
  %N = getelementptr inbounds %struct.unur_hinv_gen, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %N, align 4, !tbaa !40
  %sub = sub nsw i32 %20, 1
  %21 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap14 = getelementptr inbounds %struct.unur_gen, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %datap14, align 8, !tbaa !34
  %order = getelementptr inbounds %struct.unur_hinv_gen, ptr %22, i32 0, i32 0
  %23 = load i32, ptr %order, align 8, !tbaa !41
  %add = add nsw i32 %23, 2
  %mul = mul nsw i32 %sub, %add
  %idxprom = sext i32 %mul to i64
  %arrayidx15 = getelementptr inbounds double, ptr %17, i64 %idxprom
  %24 = load double, ptr %arrayidx15, align 8, !tbaa !38
  %cmp16 = fcmp olt double 1.000000e+00, %24
  br i1 %cmp16, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %cond.end
  br label %cond.end30

cond.false18:                                     ; preds = %cond.end
  %25 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap19 = getelementptr inbounds %struct.unur_gen, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %datap19, align 8, !tbaa !34
  %intervals20 = getelementptr inbounds %struct.unur_hinv_gen, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %intervals20, align 8, !tbaa !36
  %28 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap21 = getelementptr inbounds %struct.unur_gen, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %datap21, align 8, !tbaa !34
  %N22 = getelementptr inbounds %struct.unur_hinv_gen, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %N22, align 4, !tbaa !40
  %sub23 = sub nsw i32 %30, 1
  %31 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap24 = getelementptr inbounds %struct.unur_gen, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %datap24, align 8, !tbaa !34
  %order25 = getelementptr inbounds %struct.unur_hinv_gen, ptr %32, i32 0, i32 0
  %33 = load i32, ptr %order25, align 8, !tbaa !41
  %add26 = add nsw i32 %33, 2
  %mul27 = mul nsw i32 %sub23, %add26
  %idxprom28 = sext i32 %mul27 to i64
  %arrayidx29 = getelementptr inbounds double, ptr %27, i64 %idxprom28
  %34 = load double, ptr %arrayidx29, align 8, !tbaa !38
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false18, %cond.true17
  %cond31 = phi double [ 1.000000e+00, %cond.true17 ], [ %34, %cond.false18 ]
  %35 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap32 = getelementptr inbounds %struct.unur_gen, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %datap32, align 8, !tbaa !34
  %Umax = getelementptr inbounds %struct.unur_hinv_gen, ptr %36, i32 0, i32 7
  store double %cond31, ptr %Umax, align 8, !tbaa !42
  %37 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %sample = getelementptr inbounds %struct.unur_gen, ptr %37, i32 0, i32 1
  store ptr @_unur_hinv_sample, ptr %sample, align 8, !tbaa !11
  %38 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %call33 = call i32 @_unur_hinv_make_guide_table(ptr noundef %38)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end30, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rcode) #6
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal void @_unur_hinv_info(ptr noundef %gen, i32 noundef %help) #0 {
entry:
  %gen.addr = alloca ptr, align 8
  %help.addr = alloca i32, align 4
  %info = alloca ptr, align 8
  %distr = alloca ptr, align 8
  %max_error = alloca double, align 8
  %MAE = alloca double, align 8
  store ptr %gen, ptr %gen.addr, align 8, !tbaa !4
  store i32 %help, ptr %help.addr, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #6
  %0 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %infostr = getelementptr inbounds %struct.unur_gen, ptr %0, i32 0, i32 19
  %1 = load ptr, ptr %infostr, align 8, !tbaa !75
  store ptr %1, ptr %info, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %distr) #6
  %2 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr1 = getelementptr inbounds %struct.unur_gen, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %distr1, align 8, !tbaa !49
  store ptr %3, ptr %distr, align 8, !tbaa !4
  %4 = load ptr, ptr %info, align 8, !tbaa !4
  %5 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %genid = getelementptr inbounds %struct.unur_gen, ptr %5, i32 0, i32 10
  %6 = load ptr, ptr %genid, align 8, !tbaa !46
  %call = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %4, ptr noundef @.str.23, ptr noundef %6)
  %7 = load ptr, ptr %info, align 8, !tbaa !4
  %call2 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %7, ptr noundef @.str.24)
  %8 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  call void @_unur_distr_info_typename(ptr noundef %8)
  %9 = load ptr, ptr %info, align 8, !tbaa !4
  %call3 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %9, ptr noundef @.str.25)
  %10 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_gen, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %datap, align 8, !tbaa !34
  %order = getelementptr inbounds %struct.unur_hinv_gen, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %order, align 8, !tbaa !41
  %cmp = icmp sgt i32 %12, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load ptr, ptr %info, align 8, !tbaa !4
  %call4 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %13, ptr noundef @.str.26)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap5 = getelementptr inbounds %struct.unur_gen, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %datap5, align 8, !tbaa !34
  %order6 = getelementptr inbounds %struct.unur_hinv_gen, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %order6, align 8, !tbaa !41
  %cmp7 = icmp sgt i32 %16, 3
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %17 = load ptr, ptr %info, align 8, !tbaa !4
  %call9 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %17, ptr noundef @.str.27)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  %18 = load ptr, ptr %info, align 8, !tbaa !4
  %call11 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %18, ptr noundef @.str.28)
  %19 = load ptr, ptr %info, align 8, !tbaa !4
  %20 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr12 = getelementptr inbounds %struct.unur_gen, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %distr12, align 8, !tbaa !49
  %data = getelementptr inbounds %struct.unur_distr, ptr %21, i32 0, i32 0
  %trunc = getelementptr inbounds %struct.unur_distr_cont, ptr %data, i32 0, i32 17
  %arrayidx = getelementptr inbounds [2 x double], ptr %trunc, i64 0, i64 0
  %22 = load double, ptr %arrayidx, align 8, !tbaa !11
  %23 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr13 = getelementptr inbounds %struct.unur_gen, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %distr13, align 8, !tbaa !49
  %data14 = getelementptr inbounds %struct.unur_distr, ptr %24, i32 0, i32 0
  %trunc15 = getelementptr inbounds %struct.unur_distr_cont, ptr %data14, i32 0, i32 17
  %arrayidx16 = getelementptr inbounds [2 x double], ptr %trunc15, i64 0, i64 1
  %25 = load double, ptr %arrayidx16, align 8, !tbaa !11
  %call17 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %19, ptr noundef @.str.29, double noundef %22, double noundef %25)
  %26 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr18 = getelementptr inbounds %struct.unur_gen, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %distr18, align 8, !tbaa !49
  %set = getelementptr inbounds %struct.unur_distr, ptr %27, i32 0, i32 6
  %28 = load i32, ptr %set, align 4, !tbaa !50
  %and = and i32 %28, 524288
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then19, label %if.end28

if.then19:                                        ; preds = %if.end10
  %29 = load ptr, ptr %info, align 8, !tbaa !4
  %30 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr20 = getelementptr inbounds %struct.unur_gen, ptr %30, i32 0, i32 4
  %31 = load ptr, ptr %distr20, align 8, !tbaa !49
  %data21 = getelementptr inbounds %struct.unur_distr, ptr %31, i32 0, i32 0
  %domain = getelementptr inbounds %struct.unur_distr_cont, ptr %data21, i32 0, i32 16
  %arrayidx22 = getelementptr inbounds [2 x double], ptr %domain, i64 0, i64 0
  %32 = load double, ptr %arrayidx22, align 8, !tbaa !11
  %33 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr23 = getelementptr inbounds %struct.unur_gen, ptr %33, i32 0, i32 4
  %34 = load ptr, ptr %distr23, align 8, !tbaa !49
  %data24 = getelementptr inbounds %struct.unur_distr, ptr %34, i32 0, i32 0
  %domain25 = getelementptr inbounds %struct.unur_distr_cont, ptr %data24, i32 0, i32 16
  %arrayidx26 = getelementptr inbounds [2 x double], ptr %domain25, i64 0, i64 1
  %35 = load double, ptr %arrayidx26, align 8, !tbaa !11
  %call27 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %29, ptr noundef @.str.30, double noundef %32, double noundef %35)
  br label %if.end28

if.end28:                                         ; preds = %if.then19, %if.end10
  %36 = load ptr, ptr %info, align 8, !tbaa !4
  %call29 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %36, ptr noundef @.str.28)
  %37 = load ptr, ptr %distr, align 8, !tbaa !4
  %set30 = getelementptr inbounds %struct.unur_distr, ptr %37, i32 0, i32 6
  %38 = load i32, ptr %set30, align 4, !tbaa !50
  %and31 = and i32 %38, 1
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then33, label %if.end37

if.then33:                                        ; preds = %if.end28
  %39 = load ptr, ptr %info, align 8, !tbaa !4
  %40 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr34 = getelementptr inbounds %struct.unur_gen, ptr %40, i32 0, i32 4
  %41 = load ptr, ptr %distr34, align 8, !tbaa !49
  %data35 = getelementptr inbounds %struct.unur_distr, ptr %41, i32 0, i32 0
  %mode = getelementptr inbounds %struct.unur_distr_cont, ptr %data35, i32 0, i32 13
  %42 = load double, ptr %mode, align 8, !tbaa !11
  %call36 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %39, ptr noundef @.str.31, double noundef %42)
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end28
  %43 = load i32, ptr %help.addr, align 4, !tbaa !31
  %tobool38 = icmp ne i32 %43, 0
  br i1 %tobool38, label %if.then39, label %if.end46

if.then39:                                        ; preds = %if.end37
  %44 = load ptr, ptr %distr, align 8, !tbaa !4
  %set40 = getelementptr inbounds %struct.unur_distr, ptr %44, i32 0, i32 6
  %45 = load i32, ptr %set40, align 4, !tbaa !50
  %and41 = and i32 %45, 1
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.end45, label %if.then43

if.then43:                                        ; preds = %if.then39
  %46 = load ptr, ptr %info, align 8, !tbaa !4
  %call44 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %46, ptr noundef @.str.32, ptr noundef @.str.33)
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.then39
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end37
  %47 = load ptr, ptr %info, align 8, !tbaa !4
  %call47 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %47, ptr noundef @.str.28)
  %48 = load ptr, ptr %info, align 8, !tbaa !4
  %call48 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %48, ptr noundef @.str.34)
  %49 = load ptr, ptr %info, align 8, !tbaa !4
  %50 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap49 = getelementptr inbounds %struct.unur_gen, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %datap49, align 8, !tbaa !34
  %order50 = getelementptr inbounds %struct.unur_hinv_gen, ptr %51, i32 0, i32 0
  %52 = load i32, ptr %order50, align 8, !tbaa !41
  %call51 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %49, ptr noundef @.str.35, i32 noundef %52)
  %53 = load ptr, ptr %info, align 8, !tbaa !4
  %call52 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %53, ptr noundef @.str.28)
  %54 = load ptr, ptr %info, align 8, !tbaa !4
  %call53 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %54, ptr noundef @.str.36)
  %55 = load ptr, ptr %info, align 8, !tbaa !4
  %56 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap54 = getelementptr inbounds %struct.unur_gen, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %datap54, align 8, !tbaa !34
  %bleft = getelementptr inbounds %struct.unur_hinv_gen, ptr %57, i32 0, i32 11
  %58 = load double, ptr %bleft, align 8, !tbaa !47
  %59 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap55 = getelementptr inbounds %struct.unur_gen, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %datap55, align 8, !tbaa !34
  %bright = getelementptr inbounds %struct.unur_hinv_gen, ptr %60, i32 0, i32 12
  %61 = load double, ptr %bright, align 8, !tbaa !48
  %call56 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %55, ptr noundef @.str.37, double noundef %58, double noundef %61)
  %62 = load ptr, ptr %info, align 8, !tbaa !4
  %63 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap57 = getelementptr inbounds %struct.unur_gen, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %datap57, align 8, !tbaa !34
  %tailcutoff_left = getelementptr inbounds %struct.unur_hinv_gen, ptr %64, i32 0, i32 14
  %65 = load double, ptr %tailcutoff_left, align 8, !tbaa !63
  %cmp58 = fcmp ogt double 0.000000e+00, %65
  br i1 %cmp58, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end46
  br label %cond.end

cond.false:                                       ; preds = %if.end46
  %66 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap59 = getelementptr inbounds %struct.unur_gen, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %datap59, align 8, !tbaa !34
  %tailcutoff_left60 = getelementptr inbounds %struct.unur_hinv_gen, ptr %67, i32 0, i32 14
  %68 = load double, ptr %tailcutoff_left60, align 8, !tbaa !63
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %68, %cond.false ]
  %call61 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %62, ptr noundef @.str.38, double noundef %cond)
  %69 = load ptr, ptr %info, align 8, !tbaa !4
  %70 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap62 = getelementptr inbounds %struct.unur_gen, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %datap62, align 8, !tbaa !34
  %tailcutoff_right = getelementptr inbounds %struct.unur_hinv_gen, ptr %71, i32 0, i32 15
  %72 = load double, ptr %tailcutoff_right, align 8, !tbaa !64
  %sub = fsub double 1.000000e+00, %72
  %cmp63 = fcmp ogt double 0.000000e+00, %sub
  br i1 %cmp63, label %cond.true64, label %cond.false65

cond.true64:                                      ; preds = %cond.end
  br label %cond.end69

cond.false65:                                     ; preds = %cond.end
  %73 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap66 = getelementptr inbounds %struct.unur_gen, ptr %73, i32 0, i32 0
  %74 = load ptr, ptr %datap66, align 8, !tbaa !34
  %tailcutoff_right67 = getelementptr inbounds %struct.unur_hinv_gen, ptr %74, i32 0, i32 15
  %75 = load double, ptr %tailcutoff_right67, align 8, !tbaa !64
  %sub68 = fsub double 1.000000e+00, %75
  br label %cond.end69

cond.end69:                                       ; preds = %cond.false65, %cond.true64
  %cond70 = phi double [ 0.000000e+00, %cond.true64 ], [ %sub68, %cond.false65 ]
  %call71 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %69, ptr noundef @.str.39, double noundef %cond70)
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_error) #6
  store double 1.000000e+00, ptr %max_error, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr %MAE) #6
  store double 1.000000e+00, ptr %MAE, align 8, !tbaa !38
  %76 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %call72 = call i32 @unur_hinv_estimate_error(ptr noundef %76, i32 noundef 10000, ptr noundef %max_error, ptr noundef %MAE)
  %77 = load ptr, ptr %info, align 8, !tbaa !4
  %78 = load double, ptr %max_error, align 8, !tbaa !38
  %79 = load double, ptr %MAE, align 8, !tbaa !38
  %call73 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %77, ptr noundef @.str.40, double noundef %78, double noundef %79)
  call void @llvm.lifetime.end.p0(i64 8, ptr %MAE) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_error) #6
  %80 = load ptr, ptr %info, align 8, !tbaa !4
  %81 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap74 = getelementptr inbounds %struct.unur_gen, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %datap74, align 8, !tbaa !34
  %N = getelementptr inbounds %struct.unur_hinv_gen, ptr %82, i32 0, i32 1
  %83 = load i32, ptr %N, align 4, !tbaa !40
  %sub75 = sub nsw i32 %83, 1
  %call76 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %80, ptr noundef @.str.41, i32 noundef %sub75)
  %84 = load ptr, ptr %info, align 8, !tbaa !4
  %call77 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %84, ptr noundef @.str.28)
  %85 = load i32, ptr %help.addr, align 4, !tbaa !31
  %tobool78 = icmp ne i32 %85, 0
  br i1 %tobool78, label %if.then79, label %if.end111

if.then79:                                        ; preds = %cond.end69
  %86 = load ptr, ptr %info, align 8, !tbaa !4
  %call80 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %86, ptr noundef @.str.42)
  %87 = load ptr, ptr %info, align 8, !tbaa !4
  %88 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap81 = getelementptr inbounds %struct.unur_gen, ptr %88, i32 0, i32 0
  %89 = load ptr, ptr %datap81, align 8, !tbaa !34
  %order82 = getelementptr inbounds %struct.unur_hinv_gen, ptr %89, i32 0, i32 0
  %90 = load i32, ptr %order82, align 8, !tbaa !41
  %91 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %set83 = getelementptr inbounds %struct.unur_gen, ptr %91, i32 0, i32 8
  %92 = load i32, ptr %set83, align 4, !tbaa !76
  %and84 = and i32 %92, 1
  %tobool85 = icmp ne i32 %and84, 0
  %93 = zext i1 %tobool85 to i64
  %cond86 = select i1 %tobool85, ptr @.str.3, ptr @.str.44
  %call87 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %87, ptr noundef @.str.43, i32 noundef %90, ptr noundef %cond86)
  %94 = load ptr, ptr %info, align 8, !tbaa !4
  %95 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap88 = getelementptr inbounds %struct.unur_gen, ptr %95, i32 0, i32 0
  %96 = load ptr, ptr %datap88, align 8, !tbaa !34
  %u_resolution = getelementptr inbounds %struct.unur_hinv_gen, ptr %96, i32 0, i32 10
  %97 = load double, ptr %u_resolution, align 8, !tbaa !58
  %98 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %set89 = getelementptr inbounds %struct.unur_gen, ptr %98, i32 0, i32 8
  %99 = load i32, ptr %set89, align 4, !tbaa !76
  %and90 = and i32 %99, 2
  %tobool91 = icmp ne i32 %and90, 0
  %100 = zext i1 %tobool91 to i64
  %cond92 = select i1 %tobool91, ptr @.str.3, ptr @.str.44
  %call93 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %94, ptr noundef @.str.45, double noundef %97, ptr noundef %cond92)
  %101 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %set94 = getelementptr inbounds %struct.unur_gen, ptr %101, i32 0, i32 8
  %102 = load i32, ptr %set94, align 4, !tbaa !76
  %and95 = and i32 %102, 32
  %tobool96 = icmp ne i32 %and95, 0
  br i1 %tobool96, label %if.then97, label %if.end100

if.then97:                                        ; preds = %if.then79
  %103 = load ptr, ptr %info, align 8, !tbaa !4
  %104 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap98 = getelementptr inbounds %struct.unur_gen, ptr %104, i32 0, i32 0
  %105 = load ptr, ptr %datap98, align 8, !tbaa !34
  %max_ivs = getelementptr inbounds %struct.unur_hinv_gen, ptr %105, i32 0, i32 16
  %106 = load i32, ptr %max_ivs, align 8, !tbaa !62
  %call99 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %103, ptr noundef @.str.46, i32 noundef %106)
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %if.then79
  %107 = load ptr, ptr %info, align 8, !tbaa !4
  %108 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap101 = getelementptr inbounds %struct.unur_gen, ptr %108, i32 0, i32 0
  %109 = load ptr, ptr %datap101, align 8, !tbaa !34
  %bleft102 = getelementptr inbounds %struct.unur_hinv_gen, ptr %109, i32 0, i32 11
  %110 = load double, ptr %bleft102, align 8, !tbaa !47
  %111 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap103 = getelementptr inbounds %struct.unur_gen, ptr %111, i32 0, i32 0
  %112 = load ptr, ptr %datap103, align 8, !tbaa !34
  %bright104 = getelementptr inbounds %struct.unur_hinv_gen, ptr %112, i32 0, i32 12
  %113 = load double, ptr %bright104, align 8, !tbaa !48
  %114 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %set105 = getelementptr inbounds %struct.unur_gen, ptr %114, i32 0, i32 8
  %115 = load i32, ptr %set105, align 4, !tbaa !76
  %and106 = and i32 %115, 8
  %tobool107 = icmp ne i32 %and106, 0
  %116 = zext i1 %tobool107 to i64
  %cond108 = select i1 %tobool107, ptr @.str.3, ptr @.str.48
  %call109 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %107, ptr noundef @.str.47, double noundef %110, double noundef %113, ptr noundef %cond108)
  %117 = load ptr, ptr %info, align 8, !tbaa !4
  %call110 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %117, ptr noundef @.str.28)
  br label %if.end111

if.end111:                                        ; preds = %if.end100, %cond.end69
  %118 = load i32, ptr %help.addr, align 4, !tbaa !31
  %tobool112 = icmp ne i32 %118, 0
  br i1 %tobool112, label %if.then113, label %if.end127

if.then113:                                       ; preds = %if.end111
  %119 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap114 = getelementptr inbounds %struct.unur_gen, ptr %119, i32 0, i32 0
  %120 = load ptr, ptr %datap114, align 8, !tbaa !34
  %order115 = getelementptr inbounds %struct.unur_hinv_gen, ptr %120, i32 0, i32 0
  %121 = load i32, ptr %order115, align 8, !tbaa !41
  %cmp116 = icmp slt i32 %121, 5
  br i1 %cmp116, label %if.then117, label %if.end119

if.then117:                                       ; preds = %if.then113
  %122 = load ptr, ptr %info, align 8, !tbaa !4
  %call118 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %122, ptr noundef @.str.49, ptr noundef @.str.50)
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %if.then113
  %123 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %set120 = getelementptr inbounds %struct.unur_gen, ptr %123, i32 0, i32 8
  %124 = load i32, ptr %set120, align 4, !tbaa !76
  %and121 = and i32 %124, 2
  %tobool122 = icmp ne i32 %and121, 0
  br i1 %tobool122, label %if.end125, label %if.then123

if.then123:                                       ; preds = %if.end119
  %125 = load ptr, ptr %info, align 8, !tbaa !4
  %call124 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %125, ptr noundef @.str.51, ptr noundef @.str.52, ptr noundef @.str.53)
  br label %if.end125

if.end125:                                        ; preds = %if.then123, %if.end119
  %126 = load ptr, ptr %info, align 8, !tbaa !4
  %call126 = call i32 (ptr, ptr, ...) @_unur_string_append(ptr noundef %126, ptr noundef @.str.28)
  br label %if.end127

if.end127:                                        ; preds = %if.end125, %if.end111
  call void @llvm.lifetime.end.p0(i64 8, ptr %distr) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #6
  ret void
}

declare ptr @_unur_generic_clone(ptr noundef, ptr noundef) #2

declare noalias ptr @_unur_xmalloc(i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @_unur_string_append(ptr noundef, ptr noundef, ...) #2

declare void @_unur_distr_info_typename(ptr noundef) #2

declare void @_unur_generic_free(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @_unur_hinv_find_boundary(ptr noundef %gen) #0 {
entry:
  %retval = alloca i32, align 4
  %gen.addr = alloca ptr, align 8
  %x = alloca double, align 8
  %u = alloca double, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gen, ptr %gen.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %u) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_gen, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %datap, align 8, !tbaa !34
  %N = getelementptr inbounds %struct.unur_hinv_gen, ptr %1, i32 0, i32 1
  store i32 0, ptr %N, align 4, !tbaa !40
  %2 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap1 = getelementptr inbounds %struct.unur_gen, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %datap1, align 8, !tbaa !34
  %bleft = getelementptr inbounds %struct.unur_hinv_gen, ptr %3, i32 0, i32 11
  %4 = load double, ptr %bleft, align 8, !tbaa !47
  %5 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr = getelementptr inbounds %struct.unur_gen, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %distr, align 8, !tbaa !49
  %data = getelementptr inbounds %struct.unur_distr, ptr %6, i32 0, i32 0
  %domain = getelementptr inbounds %struct.unur_distr_cont, ptr %data, i32 0, i32 16
  %arrayidx = getelementptr inbounds [2 x double], ptr %domain, i64 0, i64 0
  %7 = load double, ptr %arrayidx, align 8, !tbaa !11
  %cmp = fcmp olt double %4, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %8 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr2 = getelementptr inbounds %struct.unur_gen, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %distr2, align 8, !tbaa !49
  %data3 = getelementptr inbounds %struct.unur_distr, ptr %9, i32 0, i32 0
  %domain4 = getelementptr inbounds %struct.unur_distr_cont, ptr %data3, i32 0, i32 16
  %arrayidx5 = getelementptr inbounds [2 x double], ptr %domain4, i64 0, i64 0
  %10 = load double, ptr %arrayidx5, align 8, !tbaa !11
  %11 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap6 = getelementptr inbounds %struct.unur_gen, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %datap6, align 8, !tbaa !34
  %bleft7 = getelementptr inbounds %struct.unur_hinv_gen, ptr %12, i32 0, i32 11
  store double %10, ptr %bleft7, align 8, !tbaa !47
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %13 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap8 = getelementptr inbounds %struct.unur_gen, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %datap8, align 8, !tbaa !34
  %bright = getelementptr inbounds %struct.unur_hinv_gen, ptr %14, i32 0, i32 12
  %15 = load double, ptr %bright, align 8, !tbaa !48
  %16 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr9 = getelementptr inbounds %struct.unur_gen, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %distr9, align 8, !tbaa !49
  %data10 = getelementptr inbounds %struct.unur_distr, ptr %17, i32 0, i32 0
  %domain11 = getelementptr inbounds %struct.unur_distr_cont, ptr %data10, i32 0, i32 16
  %arrayidx12 = getelementptr inbounds [2 x double], ptr %domain11, i64 0, i64 1
  %18 = load double, ptr %arrayidx12, align 8, !tbaa !11
  %cmp13 = fcmp ogt double %15, %18
  br i1 %cmp13, label %if.then14, label %if.end21

if.then14:                                        ; preds = %if.end
  %19 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr15 = getelementptr inbounds %struct.unur_gen, ptr %19, i32 0, i32 4
  %20 = load ptr, ptr %distr15, align 8, !tbaa !49
  %data16 = getelementptr inbounds %struct.unur_distr, ptr %20, i32 0, i32 0
  %domain17 = getelementptr inbounds %struct.unur_distr_cont, ptr %data16, i32 0, i32 16
  %arrayidx18 = getelementptr inbounds [2 x double], ptr %domain17, i64 0, i64 1
  %21 = load double, ptr %arrayidx18, align 8, !tbaa !11
  %22 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap19 = getelementptr inbounds %struct.unur_gen, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %datap19, align 8, !tbaa !34
  %bright20 = getelementptr inbounds %struct.unur_hinv_gen, ptr %23, i32 0, i32 12
  store double %21, ptr %bright20, align 8, !tbaa !48
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %if.end
  %24 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap22 = getelementptr inbounds %struct.unur_gen, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %datap22, align 8, !tbaa !34
  %bleft23 = getelementptr inbounds %struct.unur_hinv_gen, ptr %25, i32 0, i32 11
  %26 = load double, ptr %bleft23, align 8, !tbaa !47
  store double %26, ptr %x, align 8, !tbaa !38
  store i32 0, ptr %i, align 4, !tbaa !31
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end21
  %27 = load i32, ptr %i, align 4, !tbaa !31
  %cmp24 = icmp slt i32 %27, 300
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load double, ptr %x, align 8, !tbaa !38
  %29 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap25 = getelementptr inbounds %struct.unur_gen, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %datap25, align 8, !tbaa !34
  %bleft26 = getelementptr inbounds %struct.unur_hinv_gen, ptr %30, i32 0, i32 11
  store double %28, ptr %bleft26, align 8, !tbaa !47
  %31 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %32 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap27 = getelementptr inbounds %struct.unur_gen, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %datap27, align 8, !tbaa !34
  %bleft28 = getelementptr inbounds %struct.unur_hinv_gen, ptr %33, i32 0, i32 11
  %34 = load double, ptr %bleft28, align 8, !tbaa !47
  %call = call double @_unur_hinv_CDF(ptr noundef %31, double noundef %34)
  store double %call, ptr %u, align 8, !tbaa !38
  %35 = load double, ptr %u, align 8, !tbaa !38
  %36 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap29 = getelementptr inbounds %struct.unur_gen, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %datap29, align 8, !tbaa !34
  %tailcutoff_left = getelementptr inbounds %struct.unur_hinv_gen, ptr %37, i32 0, i32 14
  %38 = load double, ptr %tailcutoff_left, align 8, !tbaa !63
  %cmp30 = fcmp ole double %35, %38
  br i1 %cmp30, label %if.then34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %39 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap31 = getelementptr inbounds %struct.unur_gen, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %datap31, align 8, !tbaa !34
  %tailcutoff_left32 = getelementptr inbounds %struct.unur_hinv_gen, ptr %40, i32 0, i32 14
  %41 = load double, ptr %tailcutoff_left32, align 8, !tbaa !63
  %cmp33 = fcmp olt double %41, 0.000000e+00
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %lor.lhs.false, %for.body
  br label %for.end

if.end35:                                         ; preds = %lor.lhs.false
  %42 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr36 = getelementptr inbounds %struct.unur_gen, ptr %42, i32 0, i32 4
  %43 = load ptr, ptr %distr36, align 8, !tbaa !49
  %data37 = getelementptr inbounds %struct.unur_distr, ptr %43, i32 0, i32 0
  %domain38 = getelementptr inbounds %struct.unur_distr_cont, ptr %data37, i32 0, i32 16
  %arrayidx39 = getelementptr inbounds [2 x double], ptr %domain38, i64 0, i64 0
  %44 = load double, ptr %arrayidx39, align 8, !tbaa !11
  %cmp40 = fcmp ole double %44, 0xFFF0000000000000
  br i1 %cmp40, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.end35
  %45 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap42 = getelementptr inbounds %struct.unur_gen, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %datap42, align 8, !tbaa !34
  %bleft43 = getelementptr inbounds %struct.unur_hinv_gen, ptr %46, i32 0, i32 11
  %47 = load double, ptr %bleft43, align 8, !tbaa !47
  %cmp44 = fcmp ogt double %47, -1.000000e+00
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then41
  br label %cond.end

cond.false:                                       ; preds = %if.then41
  %48 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap45 = getelementptr inbounds %struct.unur_gen, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %datap45, align 8, !tbaa !34
  %bleft46 = getelementptr inbounds %struct.unur_hinv_gen, ptr %49, i32 0, i32 11
  %50 = load double, ptr %bleft46, align 8, !tbaa !47
  %mul = fmul double 1.000000e+01, %50
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ -1.000000e+00, %cond.true ], [ %mul, %cond.false ]
  store double %cond, ptr %x, align 8, !tbaa !38
  %51 = load double, ptr %x, align 8, !tbaa !38
  %call47 = call i32 @_unur_isfinite(double noundef %51)
  %tobool = icmp ne i32 %call47, 0
  br i1 %tobool, label %if.end49, label %if.then48

if.then48:                                        ; preds = %cond.end
  store i32 300, ptr %i, align 4, !tbaa !31
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %cond.end
  br label %if.end65

if.else:                                          ; preds = %if.end35
  %52 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap50 = getelementptr inbounds %struct.unur_gen, ptr %52, i32 0, i32 0
  %53 = load ptr, ptr %datap50, align 8, !tbaa !34
  %bleft51 = getelementptr inbounds %struct.unur_hinv_gen, ptr %53, i32 0, i32 11
  %54 = load double, ptr %bleft51, align 8, !tbaa !47
  %55 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr52 = getelementptr inbounds %struct.unur_gen, ptr %55, i32 0, i32 4
  %56 = load ptr, ptr %distr52, align 8, !tbaa !49
  %data53 = getelementptr inbounds %struct.unur_distr, ptr %56, i32 0, i32 0
  %domain54 = getelementptr inbounds %struct.unur_distr_cont, ptr %data53, i32 0, i32 16
  %arrayidx55 = getelementptr inbounds [2 x double], ptr %domain54, i64 0, i64 0
  %57 = load double, ptr %arrayidx55, align 8, !tbaa !11
  %call56 = call double @_unur_arcmean(double noundef %54, double noundef %57)
  store double %call56, ptr %x, align 8, !tbaa !38
  %58 = load double, ptr %x, align 8, !tbaa !38
  %59 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr57 = getelementptr inbounds %struct.unur_gen, ptr %59, i32 0, i32 4
  %60 = load ptr, ptr %distr57, align 8, !tbaa !49
  %data58 = getelementptr inbounds %struct.unur_distr, ptr %60, i32 0, i32 0
  %domain59 = getelementptr inbounds %struct.unur_distr_cont, ptr %data58, i32 0, i32 16
  %arrayidx60 = getelementptr inbounds [2 x double], ptr %domain59, i64 0, i64 0
  %61 = load double, ptr %arrayidx60, align 8, !tbaa !11
  %call61 = call i32 @_unur_FP_cmp(double noundef %58, double noundef %61, double noundef 0x3D19000000000000)
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.else
  store i32 300, ptr %i, align 4, !tbaa !31
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.else
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end49
  br label %for.inc

for.inc:                                          ; preds = %if.end65
  %62 = load i32, ptr %i, align 4, !tbaa !31
  %inc = add nsw i32 %62, 1
  store i32 %inc, ptr %i, align 4, !tbaa !31
  br label %for.cond

for.end:                                          ; preds = %if.then34, %for.cond
  %63 = load i32, ptr %i, align 4, !tbaa !31
  %cmp66 = icmp sge i32 %63, 300
  br i1 %cmp66, label %if.then67, label %if.end71

if.then67:                                        ; preds = %for.end
  br label %do.body68

do.body68:                                        ; preds = %if.then67
  %64 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %genid = getelementptr inbounds %struct.unur_gen, ptr %64, i32 0, i32 10
  %65 = load ptr, ptr %genid, align 8, !tbaa !46
  call void @_unur_error_x(ptr noundef %65, ptr noundef @.str.1, i32 noundef 1269, ptr noundef @.str.5, i32 noundef 32, ptr noundef @.str.56)
  br label %do.cond69

do.cond69:                                        ; preds = %do.body68
  br label %do.end70

do.end70:                                         ; preds = %do.cond69
  br label %if.end71

if.end71:                                         ; preds = %do.end70, %for.end
  %66 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %67 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap72 = getelementptr inbounds %struct.unur_gen, ptr %67, i32 0, i32 0
  %68 = load ptr, ptr %datap72, align 8, !tbaa !34
  %bleft73 = getelementptr inbounds %struct.unur_hinv_gen, ptr %68, i32 0, i32 11
  %69 = load double, ptr %bleft73, align 8, !tbaa !47
  %70 = load double, ptr %u, align 8, !tbaa !38
  %call74 = call ptr @_unur_hinv_interval_new(ptr noundef %66, double noundef %69, double noundef %70)
  %71 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap75 = getelementptr inbounds %struct.unur_gen, ptr %71, i32 0, i32 0
  %72 = load ptr, ptr %datap75, align 8, !tbaa !34
  %iv = getelementptr inbounds %struct.unur_hinv_gen, ptr %72, i32 0, i32 13
  store ptr %call74, ptr %iv, align 8, !tbaa !65
  %73 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap76 = getelementptr inbounds %struct.unur_gen, ptr %73, i32 0, i32 0
  %74 = load ptr, ptr %datap76, align 8, !tbaa !34
  %iv77 = getelementptr inbounds %struct.unur_hinv_gen, ptr %74, i32 0, i32 13
  %75 = load ptr, ptr %iv77, align 8, !tbaa !65
  %cmp78 = icmp eq ptr %75, null
  br i1 %cmp78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end71
  store i32 50, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end80:                                         ; preds = %if.end71
  %76 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap81 = getelementptr inbounds %struct.unur_gen, ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %datap81, align 8, !tbaa !34
  %bright82 = getelementptr inbounds %struct.unur_hinv_gen, ptr %77, i32 0, i32 12
  %78 = load double, ptr %bright82, align 8, !tbaa !48
  store double %78, ptr %x, align 8, !tbaa !38
  store i32 0, ptr %i, align 4, !tbaa !31
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc136, %if.end80
  %79 = load i32, ptr %i, align 4, !tbaa !31
  %cmp84 = icmp slt i32 %79, 300
  br i1 %cmp84, label %for.body85, label %for.end138

for.body85:                                       ; preds = %for.cond83
  %80 = load double, ptr %x, align 8, !tbaa !38
  %81 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap86 = getelementptr inbounds %struct.unur_gen, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %datap86, align 8, !tbaa !34
  %bright87 = getelementptr inbounds %struct.unur_hinv_gen, ptr %82, i32 0, i32 12
  store double %80, ptr %bright87, align 8, !tbaa !48
  %83 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %84 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap88 = getelementptr inbounds %struct.unur_gen, ptr %84, i32 0, i32 0
  %85 = load ptr, ptr %datap88, align 8, !tbaa !34
  %bright89 = getelementptr inbounds %struct.unur_hinv_gen, ptr %85, i32 0, i32 12
  %86 = load double, ptr %bright89, align 8, !tbaa !48
  %call90 = call double @_unur_hinv_CDF(ptr noundef %83, double noundef %86)
  store double %call90, ptr %u, align 8, !tbaa !38
  %87 = load double, ptr %u, align 8, !tbaa !38
  %88 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap91 = getelementptr inbounds %struct.unur_gen, ptr %88, i32 0, i32 0
  %89 = load ptr, ptr %datap91, align 8, !tbaa !34
  %tailcutoff_right = getelementptr inbounds %struct.unur_hinv_gen, ptr %89, i32 0, i32 15
  %90 = load double, ptr %tailcutoff_right, align 8, !tbaa !64
  %cmp92 = fcmp oge double %87, %90
  br i1 %cmp92, label %if.then97, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %for.body85
  %91 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap94 = getelementptr inbounds %struct.unur_gen, ptr %91, i32 0, i32 0
  %92 = load ptr, ptr %datap94, align 8, !tbaa !34
  %tailcutoff_right95 = getelementptr inbounds %struct.unur_hinv_gen, ptr %92, i32 0, i32 15
  %93 = load double, ptr %tailcutoff_right95, align 8, !tbaa !64
  %cmp96 = fcmp ogt double %93, 1.100000e+00
  br i1 %cmp96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %lor.lhs.false93, %for.body85
  br label %for.end138

if.end98:                                         ; preds = %lor.lhs.false93
  %94 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr99 = getelementptr inbounds %struct.unur_gen, ptr %94, i32 0, i32 4
  %95 = load ptr, ptr %distr99, align 8, !tbaa !49
  %data100 = getelementptr inbounds %struct.unur_distr, ptr %95, i32 0, i32 0
  %domain101 = getelementptr inbounds %struct.unur_distr_cont, ptr %data100, i32 0, i32 16
  %arrayidx102 = getelementptr inbounds [2 x double], ptr %domain101, i64 0, i64 1
  %96 = load double, ptr %arrayidx102, align 8, !tbaa !11
  %cmp103 = fcmp oge double %96, 0x7FF0000000000000
  br i1 %cmp103, label %if.then104, label %if.else119

if.then104:                                       ; preds = %if.end98
  %97 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap105 = getelementptr inbounds %struct.unur_gen, ptr %97, i32 0, i32 0
  %98 = load ptr, ptr %datap105, align 8, !tbaa !34
  %bright106 = getelementptr inbounds %struct.unur_hinv_gen, ptr %98, i32 0, i32 12
  %99 = load double, ptr %bright106, align 8, !tbaa !48
  %cmp107 = fcmp olt double %99, 1.000000e+00
  br i1 %cmp107, label %cond.true108, label %cond.false109

cond.true108:                                     ; preds = %if.then104
  br label %cond.end113

cond.false109:                                    ; preds = %if.then104
  %100 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap110 = getelementptr inbounds %struct.unur_gen, ptr %100, i32 0, i32 0
  %101 = load ptr, ptr %datap110, align 8, !tbaa !34
  %bright111 = getelementptr inbounds %struct.unur_hinv_gen, ptr %101, i32 0, i32 12
  %102 = load double, ptr %bright111, align 8, !tbaa !48
  %mul112 = fmul double 1.000000e+01, %102
  br label %cond.end113

cond.end113:                                      ; preds = %cond.false109, %cond.true108
  %cond114 = phi double [ 1.000000e+00, %cond.true108 ], [ %mul112, %cond.false109 ]
  store double %cond114, ptr %x, align 8, !tbaa !38
  %103 = load double, ptr %x, align 8, !tbaa !38
  %call115 = call i32 @_unur_isfinite(double noundef %103)
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.end118, label %if.then117

if.then117:                                       ; preds = %cond.end113
  store i32 300, ptr %i, align 4, !tbaa !31
  br label %if.end118

if.end118:                                        ; preds = %if.then117, %cond.end113
  br label %if.end135

if.else119:                                       ; preds = %if.end98
  %104 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap120 = getelementptr inbounds %struct.unur_gen, ptr %104, i32 0, i32 0
  %105 = load ptr, ptr %datap120, align 8, !tbaa !34
  %bright121 = getelementptr inbounds %struct.unur_hinv_gen, ptr %105, i32 0, i32 12
  %106 = load double, ptr %bright121, align 8, !tbaa !48
  %107 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr122 = getelementptr inbounds %struct.unur_gen, ptr %107, i32 0, i32 4
  %108 = load ptr, ptr %distr122, align 8, !tbaa !49
  %data123 = getelementptr inbounds %struct.unur_distr, ptr %108, i32 0, i32 0
  %domain124 = getelementptr inbounds %struct.unur_distr_cont, ptr %data123, i32 0, i32 16
  %arrayidx125 = getelementptr inbounds [2 x double], ptr %domain124, i64 0, i64 1
  %109 = load double, ptr %arrayidx125, align 8, !tbaa !11
  %call126 = call double @_unur_arcmean(double noundef %106, double noundef %109)
  store double %call126, ptr %x, align 8, !tbaa !38
  %110 = load double, ptr %x, align 8, !tbaa !38
  %111 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr127 = getelementptr inbounds %struct.unur_gen, ptr %111, i32 0, i32 4
  %112 = load ptr, ptr %distr127, align 8, !tbaa !49
  %data128 = getelementptr inbounds %struct.unur_distr, ptr %112, i32 0, i32 0
  %domain129 = getelementptr inbounds %struct.unur_distr_cont, ptr %data128, i32 0, i32 16
  %arrayidx130 = getelementptr inbounds [2 x double], ptr %domain129, i64 0, i64 1
  %113 = load double, ptr %arrayidx130, align 8, !tbaa !11
  %call131 = call i32 @_unur_FP_cmp(double noundef %110, double noundef %113, double noundef 0x3D19000000000000)
  %cmp132 = icmp eq i32 %call131, 0
  br i1 %cmp132, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.else119
  store i32 300, ptr %i, align 4, !tbaa !31
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %if.else119
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.end118
  br label %for.inc136

for.inc136:                                       ; preds = %if.end135
  %114 = load i32, ptr %i, align 4, !tbaa !31
  %inc137 = add nsw i32 %114, 1
  store i32 %inc137, ptr %i, align 4, !tbaa !31
  br label %for.cond83

for.end138:                                       ; preds = %if.then97, %for.cond83
  %115 = load i32, ptr %i, align 4, !tbaa !31
  %cmp139 = icmp sge i32 %115, 300
  br i1 %cmp139, label %if.then140, label %if.end145

if.then140:                                       ; preds = %for.end138
  br label %do.body141

do.body141:                                       ; preds = %if.then140
  %116 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %genid142 = getelementptr inbounds %struct.unur_gen, ptr %116, i32 0, i32 10
  %117 = load ptr, ptr %genid142, align 8, !tbaa !46
  call void @_unur_error_x(ptr noundef %117, ptr noundef @.str.1, i32 noundef 1305, ptr noundef @.str.5, i32 noundef 32, ptr noundef @.str.57)
  br label %do.cond143

do.cond143:                                       ; preds = %do.body141
  br label %do.end144

do.end144:                                        ; preds = %do.cond143
  br label %if.end145

if.end145:                                        ; preds = %do.end144, %for.end138
  %118 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %119 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap146 = getelementptr inbounds %struct.unur_gen, ptr %119, i32 0, i32 0
  %120 = load ptr, ptr %datap146, align 8, !tbaa !34
  %bright147 = getelementptr inbounds %struct.unur_hinv_gen, ptr %120, i32 0, i32 12
  %121 = load double, ptr %bright147, align 8, !tbaa !48
  %122 = load double, ptr %u, align 8, !tbaa !38
  %call148 = call ptr @_unur_hinv_interval_new(ptr noundef %118, double noundef %121, double noundef %122)
  %123 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap149 = getelementptr inbounds %struct.unur_gen, ptr %123, i32 0, i32 0
  %124 = load ptr, ptr %datap149, align 8, !tbaa !34
  %iv150 = getelementptr inbounds %struct.unur_hinv_gen, ptr %124, i32 0, i32 13
  %125 = load ptr, ptr %iv150, align 8, !tbaa !65
  %next = getelementptr inbounds %struct.unur_hinv_interval, ptr %125, i32 0, i32 5
  store ptr %call148, ptr %next, align 8, !tbaa !67
  %126 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap151 = getelementptr inbounds %struct.unur_gen, ptr %126, i32 0, i32 0
  %127 = load ptr, ptr %datap151, align 8, !tbaa !34
  %iv152 = getelementptr inbounds %struct.unur_hinv_gen, ptr %127, i32 0, i32 13
  %128 = load ptr, ptr %iv152, align 8, !tbaa !65
  %next153 = getelementptr inbounds %struct.unur_hinv_interval, ptr %128, i32 0, i32 5
  %129 = load ptr, ptr %next153, align 8, !tbaa !67
  %cmp154 = icmp eq ptr %129, null
  br i1 %cmp154, label %if.then155, label %if.end156

if.then155:                                       ; preds = %if.end145
  store i32 50, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end156:                                        ; preds = %if.end145
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end156, %if.then155, %if.then79
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %u) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #6
  %130 = load i32, ptr %retval, align 4
  ret i32 %130
}

; Function Attrs: nounwind uwtable
define internal ptr @_unur_hinv_interval_new(ptr noundef %gen, double noundef %p, double noundef %u) #0 {
entry:
  %retval = alloca ptr, align 8
  %gen.addr = alloca ptr, align 8
  %p.addr = alloca double, align 8
  %u.addr = alloca double, align 8
  %iv = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gen, ptr %gen.addr, align 8, !tbaa !4
  store double %p, ptr %p.addr, align 8, !tbaa !38
  store double %u, ptr %u.addr, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr %iv) #6
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %0 = load double, ptr %u.addr, align 8, !tbaa !38
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %do.end
  %1 = load double, ptr %u.addr, align 8, !tbaa !38
  %cmp1 = fcmp olt double %1, 0xBE50000000000000
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  br label %do.body3

do.body3:                                         ; preds = %if.then2
  %2 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %genid = getelementptr inbounds %struct.unur_gen, ptr %2, i32 0, i32 10
  %3 = load ptr, ptr %genid, align 8, !tbaa !46
  call void @_unur_error_x(ptr noundef %3, ptr noundef @.str.1, i32 noundef 1419, ptr noundef @.str.2, i32 noundef 50, ptr noundef @.str.58)
  br label %do.cond4

do.cond4:                                         ; preds = %do.body3
  br label %do.end5

do.end5:                                          ; preds = %do.cond4
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then
  store double 0.000000e+00, ptr %u.addr, align 8, !tbaa !38
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.end
  %4 = load double, ptr %u.addr, align 8, !tbaa !38
  %cmp7 = fcmp ogt double %4, 1.000000e+00
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end6
  br label %do.body9

do.body9:                                         ; preds = %if.then8
  %5 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %genid10 = getelementptr inbounds %struct.unur_gen, ptr %5, i32 0, i32 10
  %6 = load ptr, ptr %genid10, align 8, !tbaa !46
  call void @_unur_error_x(ptr noundef %6, ptr noundef @.str.1, i32 noundef 1427, ptr noundef @.str.2, i32 noundef 50, ptr noundef @.str.59)
  br label %do.cond11

do.cond11:                                        ; preds = %do.body9
  br label %do.end12

do.end12:                                         ; preds = %do.cond11
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call = call noalias ptr @_unur_xmalloc(i64 noundef 88)
  store ptr %call, ptr %iv, align 8, !tbaa !4
  %7 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_gen, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %datap, align 8, !tbaa !34
  %order = getelementptr inbounds %struct.unur_hinv_gen, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %order, align 8, !tbaa !41
  switch i32 %9, label %sw.default [
    i32 5, label %sw.bb
    i32 3, label %sw.bb18
    i32 1, label %sw.bb29
  ]

sw.bb:                                            ; preds = %if.end13
  %10 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr = getelementptr inbounds %struct.unur_gen, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %distr, align 8, !tbaa !49
  %data = getelementptr inbounds %struct.unur_distr, ptr %11, i32 0, i32 0
  %dpdf = getelementptr inbounds %struct.unur_distr_cont, ptr %data, i32 0, i32 1
  %12 = load ptr, ptr %dpdf, align 8, !tbaa !11
  %13 = load double, ptr %p.addr, align 8, !tbaa !38
  %14 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr14 = getelementptr inbounds %struct.unur_gen, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %distr14, align 8, !tbaa !49
  %call15 = call double %12(double noundef %13, ptr noundef %15)
  %16 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap16 = getelementptr inbounds %struct.unur_gen, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %datap16, align 8, !tbaa !34
  %CDFmax = getelementptr inbounds %struct.unur_hinv_gen, ptr %17, i32 0, i32 9
  %18 = load double, ptr %CDFmax, align 8, !tbaa !52
  %19 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap17 = getelementptr inbounds %struct.unur_gen, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %datap17, align 8, !tbaa !34
  %CDFmin = getelementptr inbounds %struct.unur_hinv_gen, ptr %20, i32 0, i32 8
  %21 = load double, ptr %CDFmin, align 8, !tbaa !51
  %sub = fsub double %18, %21
  %div = fdiv double %call15, %sub
  %22 = load ptr, ptr %iv, align 8, !tbaa !4
  %df = getelementptr inbounds %struct.unur_hinv_interval, ptr %22, i32 0, i32 4
  store double %div, ptr %df, align 8, !tbaa !77
  br label %sw.bb18

sw.bb18:                                          ; preds = %if.end13, %sw.bb
  %23 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr19 = getelementptr inbounds %struct.unur_gen, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %distr19, align 8, !tbaa !49
  %data20 = getelementptr inbounds %struct.unur_distr, ptr %24, i32 0, i32 0
  %pdf = getelementptr inbounds %struct.unur_distr_cont, ptr %data20, i32 0, i32 0
  %25 = load ptr, ptr %pdf, align 8, !tbaa !11
  %26 = load double, ptr %p.addr, align 8, !tbaa !38
  %27 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %distr21 = getelementptr inbounds %struct.unur_gen, ptr %27, i32 0, i32 4
  %28 = load ptr, ptr %distr21, align 8, !tbaa !49
  %call22 = call double %25(double noundef %26, ptr noundef %28)
  %29 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap23 = getelementptr inbounds %struct.unur_gen, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %datap23, align 8, !tbaa !34
  %CDFmax24 = getelementptr inbounds %struct.unur_hinv_gen, ptr %30, i32 0, i32 9
  %31 = load double, ptr %CDFmax24, align 8, !tbaa !52
  %32 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap25 = getelementptr inbounds %struct.unur_gen, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %datap25, align 8, !tbaa !34
  %CDFmin26 = getelementptr inbounds %struct.unur_hinv_gen, ptr %33, i32 0, i32 8
  %34 = load double, ptr %CDFmin26, align 8, !tbaa !51
  %sub27 = fsub double %31, %34
  %div28 = fdiv double %call22, %sub27
  %35 = load ptr, ptr %iv, align 8, !tbaa !4
  %f = getelementptr inbounds %struct.unur_hinv_interval, ptr %35, i32 0, i32 3
  store double %div28, ptr %f, align 8, !tbaa !78
  br label %sw.bb29

sw.bb29:                                          ; preds = %if.end13, %sw.bb18
  %36 = load double, ptr %p.addr, align 8, !tbaa !38
  %37 = load ptr, ptr %iv, align 8, !tbaa !4
  %p30 = getelementptr inbounds %struct.unur_hinv_interval, ptr %37, i32 0, i32 1
  store double %36, ptr %p30, align 8, !tbaa !69
  %38 = load double, ptr %u.addr, align 8, !tbaa !38
  %39 = load ptr, ptr %iv, align 8, !tbaa !4
  %u31 = getelementptr inbounds %struct.unur_hinv_interval, ptr %39, i32 0, i32 2
  store double %38, ptr %u31, align 8, !tbaa !70
  br label %sw.epilog

sw.default:                                       ; preds = %if.end13
  br label %do.body32

do.body32:                                        ; preds = %sw.default
  %40 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %genid33 = getelementptr inbounds %struct.unur_gen, ptr %40, i32 0, i32 10
  %41 = load ptr, ptr %genid33, align 8, !tbaa !46
  call void @_unur_error_x(ptr noundef %41, ptr noundef @.str.1, i32 noundef 1448, ptr noundef @.str.2, i32 noundef 240, ptr noundef @.str.3)
  br label %do.cond34

do.cond34:                                        ; preds = %do.body32
  br label %do.end35

do.end35:                                         ; preds = %do.cond34
  %42 = load ptr, ptr %iv, align 8, !tbaa !4
  call void @free(ptr noundef %42) #6
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb29
  %43 = load ptr, ptr %iv, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.unur_hinv_interval, ptr %43, i32 0, i32 5
  store ptr null, ptr %next, align 8, !tbaa !67
  %44 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap36 = getelementptr inbounds %struct.unur_gen, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %datap36, align 8, !tbaa !34
  %N = getelementptr inbounds %struct.unur_hinv_gen, ptr %45, i32 0, i32 1
  %46 = load i32, ptr %N, align 4, !tbaa !40
  %inc = add nsw i32 %46, 1
  store i32 %inc, ptr %N, align 4, !tbaa !40
  %47 = load ptr, ptr %iv, align 8, !tbaa !4
  store ptr %47, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end35, %do.end12, %do.end5
  call void @llvm.lifetime.end.p0(i64 8, ptr %iv) #6
  %48 = load ptr, ptr %retval, align 8
  ret ptr %48
}

; Function Attrs: nounwind uwtable
define internal ptr @_unur_hinv_interval_adapt(ptr noundef %gen, ptr noundef %iv, ptr noundef %error_count_shortinterval) #0 {
entry:
  %retval = alloca ptr, align 8
  %gen.addr = alloca ptr, align 8
  %iv.addr = alloca ptr, align 8
  %error_count_shortinterval.addr = alloca ptr, align 8
  %p_new = alloca double, align 8
  %iv_new = alloca ptr, align 8
  %iv_tmp = alloca ptr, align 8
  %x = alloca double, align 8
  %Fx = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gen, ptr %gen.addr, align 8, !tbaa !4
  store ptr %iv, ptr %iv.addr, align 8, !tbaa !4
  store ptr %error_count_shortinterval, ptr %error_count_shortinterval.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p_new) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %iv_new) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %iv_tmp) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fx) #6
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  br label %do.cond5

do.cond5:                                         ; preds = %do.body4
  br label %do.end6

do.end6:                                          ; preds = %do.cond5
  %0 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.unur_hinv_interval, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %next, align 8, !tbaa !67
  %next7 = getelementptr inbounds %struct.unur_hinv_interval, ptr %1, i32 0, i32 5
  %2 = load ptr, ptr %next7, align 8, !tbaa !67
  store ptr %2, ptr %iv_tmp, align 8, !tbaa !4
  %3 = load ptr, ptr %iv_tmp, align 8, !tbaa !4
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end6
  %4 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next8 = getelementptr inbounds %struct.unur_hinv_interval, ptr %4, i32 0, i32 5
  %5 = load ptr, ptr %next8, align 8, !tbaa !67
  %u = getelementptr inbounds %struct.unur_hinv_interval, ptr %5, i32 0, i32 2
  %6 = load double, ptr %u, align 8, !tbaa !70
  %7 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_gen, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %datap, align 8, !tbaa !34
  %tailcutoff_right = getelementptr inbounds %struct.unur_hinv_gen, ptr %8, i32 0, i32 15
  %9 = load double, ptr %tailcutoff_right, align 8, !tbaa !64
  %cmp = fcmp ogt double %6, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %iv_tmp, align 8, !tbaa !4
  call void @free(ptr noundef %10) #6
  %11 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next9 = getelementptr inbounds %struct.unur_hinv_interval, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %next9, align 8, !tbaa !67
  %next10 = getelementptr inbounds %struct.unur_hinv_interval, ptr %12, i32 0, i32 5
  store ptr null, ptr %next10, align 8, !tbaa !67
  %13 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap11 = getelementptr inbounds %struct.unur_gen, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %datap11, align 8, !tbaa !34
  %N = getelementptr inbounds %struct.unur_hinv_gen, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %N, align 4, !tbaa !40
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %N, align 4, !tbaa !40
  %16 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next12 = getelementptr inbounds %struct.unur_hinv_interval, ptr %16, i32 0, i32 5
  %17 = load ptr, ptr %next12, align 8, !tbaa !67
  %p = getelementptr inbounds %struct.unur_hinv_interval, ptr %17, i32 0, i32 1
  %18 = load double, ptr %p, align 8, !tbaa !69
  %19 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap13 = getelementptr inbounds %struct.unur_gen, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %datap13, align 8, !tbaa !34
  %bright = getelementptr inbounds %struct.unur_hinv_gen, ptr %20, i32 0, i32 12
  store double %18, ptr %bright, align 8, !tbaa !48
  %21 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  store ptr %21, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %do.end6
  %22 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %23 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap14 = getelementptr inbounds %struct.unur_gen, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %datap14, align 8, !tbaa !34
  %iv15 = getelementptr inbounds %struct.unur_hinv_gen, ptr %24, i32 0, i32 13
  %25 = load ptr, ptr %iv15, align 8, !tbaa !65
  %cmp16 = icmp eq ptr %22, %25
  br i1 %cmp16, label %land.lhs.true17, label %if.end41

land.lhs.true17:                                  ; preds = %if.end
  %26 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next18 = getelementptr inbounds %struct.unur_hinv_interval, ptr %26, i32 0, i32 5
  %27 = load ptr, ptr %next18, align 8, !tbaa !67
  %next19 = getelementptr inbounds %struct.unur_hinv_interval, ptr %27, i32 0, i32 5
  %28 = load ptr, ptr %next19, align 8, !tbaa !67
  %tobool20 = icmp ne ptr %28, null
  br i1 %tobool20, label %land.lhs.true21, label %if.end41

land.lhs.true21:                                  ; preds = %land.lhs.true17
  %29 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next22 = getelementptr inbounds %struct.unur_hinv_interval, ptr %29, i32 0, i32 5
  %30 = load ptr, ptr %next22, align 8, !tbaa !67
  %u23 = getelementptr inbounds %struct.unur_hinv_interval, ptr %30, i32 0, i32 2
  %31 = load double, ptr %u23, align 8, !tbaa !70
  %32 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap24 = getelementptr inbounds %struct.unur_gen, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %datap24, align 8, !tbaa !34
  %tailcutoff_left = getelementptr inbounds %struct.unur_hinv_gen, ptr %33, i32 0, i32 14
  %34 = load double, ptr %tailcutoff_left, align 8, !tbaa !63
  %cmp25 = fcmp olt double %31, %34
  br i1 %cmp25, label %if.then26, label %if.end41

if.then26:                                        ; preds = %land.lhs.true21
  %35 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap27 = getelementptr inbounds %struct.unur_gen, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %datap27, align 8, !tbaa !34
  %iv28 = getelementptr inbounds %struct.unur_hinv_gen, ptr %36, i32 0, i32 13
  %37 = load ptr, ptr %iv28, align 8, !tbaa !65
  store ptr %37, ptr %iv_tmp, align 8, !tbaa !4
  %38 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next29 = getelementptr inbounds %struct.unur_hinv_interval, ptr %38, i32 0, i32 5
  %39 = load ptr, ptr %next29, align 8, !tbaa !67
  %40 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap30 = getelementptr inbounds %struct.unur_gen, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %datap30, align 8, !tbaa !34
  %iv31 = getelementptr inbounds %struct.unur_hinv_gen, ptr %41, i32 0, i32 13
  store ptr %39, ptr %iv31, align 8, !tbaa !65
  %42 = load ptr, ptr %iv_tmp, align 8, !tbaa !4
  call void @free(ptr noundef %42) #6
  %43 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap32 = getelementptr inbounds %struct.unur_gen, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %datap32, align 8, !tbaa !34
  %N33 = getelementptr inbounds %struct.unur_hinv_gen, ptr %44, i32 0, i32 1
  %45 = load i32, ptr %N33, align 4, !tbaa !40
  %dec34 = add nsw i32 %45, -1
  store i32 %dec34, ptr %N33, align 4, !tbaa !40
  %46 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap35 = getelementptr inbounds %struct.unur_gen, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %datap35, align 8, !tbaa !34
  %iv36 = getelementptr inbounds %struct.unur_hinv_gen, ptr %47, i32 0, i32 13
  %48 = load ptr, ptr %iv36, align 8, !tbaa !65
  %p37 = getelementptr inbounds %struct.unur_hinv_interval, ptr %48, i32 0, i32 1
  %49 = load double, ptr %p37, align 8, !tbaa !69
  %50 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap38 = getelementptr inbounds %struct.unur_gen, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %datap38, align 8, !tbaa !34
  %bleft = getelementptr inbounds %struct.unur_hinv_gen, ptr %51, i32 0, i32 11
  store double %49, ptr %bleft, align 8, !tbaa !47
  %52 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap39 = getelementptr inbounds %struct.unur_gen, ptr %52, i32 0, i32 0
  %53 = load ptr, ptr %datap39, align 8, !tbaa !34
  %iv40 = getelementptr inbounds %struct.unur_hinv_gen, ptr %53, i32 0, i32 13
  %54 = load ptr, ptr %iv40, align 8, !tbaa !65
  store ptr %54, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end41:                                         ; preds = %land.lhs.true21, %land.lhs.true17, %if.end
  %55 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next42 = getelementptr inbounds %struct.unur_hinv_interval, ptr %55, i32 0, i32 5
  %56 = load ptr, ptr %next42, align 8, !tbaa !67
  %p43 = getelementptr inbounds %struct.unur_hinv_interval, ptr %56, i32 0, i32 1
  %57 = load double, ptr %p43, align 8, !tbaa !69
  %58 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %p44 = getelementptr inbounds %struct.unur_hinv_interval, ptr %58, i32 0, i32 1
  %59 = load double, ptr %p44, align 8, !tbaa !69
  %add = fadd double %57, %59
  %mul = fmul double 5.000000e-01, %add
  store double %mul, ptr %p_new, align 8, !tbaa !38
  %60 = load double, ptr %p_new, align 8, !tbaa !38
  %61 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %p45 = getelementptr inbounds %struct.unur_hinv_interval, ptr %61, i32 0, i32 1
  %62 = load double, ptr %p45, align 8, !tbaa !69
  %call = call i32 @_unur_FP_cmp(double noundef %60, double noundef %62, double noundef 0x3D19000000000000)
  %cmp46 = icmp eq i32 %call, 0
  br i1 %cmp46, label %if.then51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end41
  %63 = load double, ptr %p_new, align 8, !tbaa !38
  %64 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next47 = getelementptr inbounds %struct.unur_hinv_interval, ptr %64, i32 0, i32 5
  %65 = load ptr, ptr %next47, align 8, !tbaa !67
  %p48 = getelementptr inbounds %struct.unur_hinv_interval, ptr %65, i32 0, i32 1
  %66 = load double, ptr %p48, align 8, !tbaa !69
  %call49 = call i32 @_unur_FP_cmp(double noundef %63, double noundef %66, double noundef 0x3D19000000000000)
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then51, label %if.end60

if.then51:                                        ; preds = %lor.lhs.false, %if.end41
  %67 = load ptr, ptr %error_count_shortinterval.addr, align 8, !tbaa !4
  %68 = load i32, ptr %67, align 4, !tbaa !31
  %tobool52 = icmp ne i32 %68, 0
  br i1 %tobool52, label %if.end57, label %if.then53

if.then53:                                        ; preds = %if.then51
  br label %do.body54

do.body54:                                        ; preds = %if.then53
  %69 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %genid = getelementptr inbounds %struct.unur_gen, ptr %69, i32 0, i32 10
  %70 = load ptr, ptr %genid, align 8, !tbaa !46
  call void @_unur_error_x(ptr noundef %70, ptr noundef @.str.1, i32 noundef 1527, ptr noundef @.str.5, i32 noundef 98, ptr noundef @.str.60)
  br label %do.cond55

do.cond55:                                        ; preds = %do.body54
  br label %do.end56

do.end56:                                         ; preds = %do.cond55
  %71 = load ptr, ptr %error_count_shortinterval.addr, align 8, !tbaa !4
  %72 = load i32, ptr %71, align 4, !tbaa !31
  %inc = add nsw i32 %72, 1
  store i32 %inc, ptr %71, align 4, !tbaa !31
  br label %if.end57

if.end57:                                         ; preds = %do.end56, %if.then51
  %73 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %74 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %call58 = call i32 @_unur_hinv_interval_parameter(ptr noundef %73, ptr noundef %74)
  %75 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next59 = getelementptr inbounds %struct.unur_hinv_interval, ptr %75, i32 0, i32 5
  %76 = load ptr, ptr %next59, align 8, !tbaa !67
  store ptr %76, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end60:                                         ; preds = %lor.lhs.false
  %77 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next61 = getelementptr inbounds %struct.unur_hinv_interval, ptr %77, i32 0, i32 5
  %78 = load ptr, ptr %next61, align 8, !tbaa !67
  %u62 = getelementptr inbounds %struct.unur_hinv_interval, ptr %78, i32 0, i32 2
  %79 = load double, ptr %u62, align 8, !tbaa !70
  %80 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %u63 = getelementptr inbounds %struct.unur_hinv_interval, ptr %80, i32 0, i32 2
  %81 = load double, ptr %u63, align 8, !tbaa !70
  %sub = fsub double %79, %81
  %cmp64 = fcmp ogt double %sub, 5.000000e-02
  br i1 %cmp64, label %if.then68, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %if.end60
  %82 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %83 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %call66 = call i32 @_unur_hinv_interval_is_monotone(ptr noundef %82, ptr noundef %83)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.end77, label %if.then68

if.then68:                                        ; preds = %lor.lhs.false65, %if.end60
  %84 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %85 = load double, ptr %p_new, align 8, !tbaa !38
  %86 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %87 = load double, ptr %p_new, align 8, !tbaa !38
  %call69 = call double @_unur_hinv_CDF(ptr noundef %86, double noundef %87)
  %call70 = call ptr @_unur_hinv_interval_new(ptr noundef %84, double noundef %85, double noundef %call69)
  store ptr %call70, ptr %iv_new, align 8, !tbaa !4
  %88 = load ptr, ptr %iv_new, align 8, !tbaa !4
  %cmp71 = icmp eq ptr %88, null
  br i1 %cmp71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.then68
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end73:                                         ; preds = %if.then68
  %89 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next74 = getelementptr inbounds %struct.unur_hinv_interval, ptr %89, i32 0, i32 5
  %90 = load ptr, ptr %next74, align 8, !tbaa !67
  %91 = load ptr, ptr %iv_new, align 8, !tbaa !4
  %next75 = getelementptr inbounds %struct.unur_hinv_interval, ptr %91, i32 0, i32 5
  store ptr %90, ptr %next75, align 8, !tbaa !67
  %92 = load ptr, ptr %iv_new, align 8, !tbaa !4
  %93 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next76 = getelementptr inbounds %struct.unur_hinv_interval, ptr %93, i32 0, i32 5
  store ptr %92, ptr %next76, align 8, !tbaa !67
  %94 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  store ptr %94, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end77:                                         ; preds = %lor.lhs.false65
  %95 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %96 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %call78 = call i32 @_unur_hinv_interval_parameter(ptr noundef %95, ptr noundef %96)
  %97 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %spline = getelementptr inbounds %struct.unur_hinv_interval, ptr %97, i32 0, i32 0
  %arraydecay = getelementptr inbounds [6 x double], ptr %spline, i64 0, i64 0
  %98 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap79 = getelementptr inbounds %struct.unur_gen, ptr %98, i32 0, i32 0
  %99 = load ptr, ptr %datap79, align 8, !tbaa !34
  %order = getelementptr inbounds %struct.unur_hinv_gen, ptr %99, i32 0, i32 0
  %100 = load i32, ptr %order, align 8, !tbaa !41
  %call80 = call double @_unur_hinv_eval_polynomial(double noundef 5.000000e-01, ptr noundef %arraydecay, i32 noundef %100)
  store double %call80, ptr %x, align 8, !tbaa !38
  %101 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %102 = load double, ptr %x, align 8, !tbaa !38
  %call81 = call double @_unur_hinv_CDF(ptr noundef %101, double noundef %102)
  store double %call81, ptr %Fx, align 8, !tbaa !38
  %103 = load double, ptr %x, align 8, !tbaa !38
  %call82 = call i32 @_unur_isnan(double noundef %103)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.then84, label %if.end89

if.then84:                                        ; preds = %if.end77
  br label %do.body85

do.body85:                                        ; preds = %if.then84
  %104 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %genid86 = getelementptr inbounds %struct.unur_gen, ptr %104, i32 0, i32 10
  %105 = load ptr, ptr %genid86, align 8, !tbaa !46
  call void @_unur_error_x(ptr noundef %105, ptr noundef @.str.1, i32 noundef 1560, ptr noundef @.str.2, i32 noundef 98, ptr noundef @.str.61)
  br label %do.cond87

do.cond87:                                        ; preds = %do.body85
  br label %do.end88

do.end88:                                         ; preds = %do.cond87
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end89:                                         ; preds = %if.end77
  %106 = load double, ptr %Fx, align 8, !tbaa !38
  %107 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next90 = getelementptr inbounds %struct.unur_hinv_interval, ptr %107, i32 0, i32 5
  %108 = load ptr, ptr %next90, align 8, !tbaa !67
  %u91 = getelementptr inbounds %struct.unur_hinv_interval, ptr %108, i32 0, i32 2
  %109 = load double, ptr %u91, align 8, !tbaa !70
  %110 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %u92 = getelementptr inbounds %struct.unur_hinv_interval, ptr %110, i32 0, i32 2
  %111 = load double, ptr %u92, align 8, !tbaa !70
  %add93 = fadd double %109, %111
  %112 = call double @llvm.fmuladd.f64(double -5.000000e-01, double %add93, double %106)
  %113 = call double @llvm.fabs.f64(double %112)
  %114 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap95 = getelementptr inbounds %struct.unur_gen, ptr %114, i32 0, i32 0
  %115 = load ptr, ptr %datap95, align 8, !tbaa !34
  %u_resolution = getelementptr inbounds %struct.unur_hinv_gen, ptr %115, i32 0, i32 10
  %116 = load double, ptr %u_resolution, align 8, !tbaa !58
  %mul96 = fmul double %116, 9.000000e-01
  %cmp97 = fcmp olt double %113, %mul96
  br i1 %cmp97, label %if.end117, label %if.then98

if.then98:                                        ; preds = %if.end89
  %117 = load double, ptr %p_new, align 8, !tbaa !38
  %118 = load double, ptr %x, align 8, !tbaa !38
  %sub99 = fsub double %117, %118
  %119 = call double @llvm.fabs.f64(double %sub99)
  %120 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next100 = getelementptr inbounds %struct.unur_hinv_interval, ptr %120, i32 0, i32 5
  %121 = load ptr, ptr %next100, align 8, !tbaa !67
  %p101 = getelementptr inbounds %struct.unur_hinv_interval, ptr %121, i32 0, i32 1
  %122 = load double, ptr %p101, align 8, !tbaa !69
  %123 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %p102 = getelementptr inbounds %struct.unur_hinv_interval, ptr %123, i32 0, i32 1
  %124 = load double, ptr %p102, align 8, !tbaa !69
  %sub103 = fsub double %122, %124
  %mul104 = fmul double 5.000000e-02, %sub103
  %cmp105 = fcmp olt double %119, %mul104
  br i1 %cmp105, label %if.then106, label %if.else

if.then106:                                       ; preds = %if.then98
  %125 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %126 = load double, ptr %x, align 8, !tbaa !38
  %127 = load double, ptr %Fx, align 8, !tbaa !38
  %call107 = call ptr @_unur_hinv_interval_new(ptr noundef %125, double noundef %126, double noundef %127)
  store ptr %call107, ptr %iv_new, align 8, !tbaa !4
  br label %if.end110

if.else:                                          ; preds = %if.then98
  %128 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %129 = load double, ptr %p_new, align 8, !tbaa !38
  %130 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %131 = load double, ptr %p_new, align 8, !tbaa !38
  %call108 = call double @_unur_hinv_CDF(ptr noundef %130, double noundef %131)
  %call109 = call ptr @_unur_hinv_interval_new(ptr noundef %128, double noundef %129, double noundef %call108)
  store ptr %call109, ptr %iv_new, align 8, !tbaa !4
  br label %if.end110

if.end110:                                        ; preds = %if.else, %if.then106
  %132 = load ptr, ptr %iv_new, align 8, !tbaa !4
  %cmp111 = icmp eq ptr %132, null
  br i1 %cmp111, label %if.then112, label %if.end113

if.then112:                                       ; preds = %if.end110
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end113:                                        ; preds = %if.end110
  %133 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next114 = getelementptr inbounds %struct.unur_hinv_interval, ptr %133, i32 0, i32 5
  %134 = load ptr, ptr %next114, align 8, !tbaa !67
  %135 = load ptr, ptr %iv_new, align 8, !tbaa !4
  %next115 = getelementptr inbounds %struct.unur_hinv_interval, ptr %135, i32 0, i32 5
  store ptr %134, ptr %next115, align 8, !tbaa !67
  %136 = load ptr, ptr %iv_new, align 8, !tbaa !4
  %137 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next116 = getelementptr inbounds %struct.unur_hinv_interval, ptr %137, i32 0, i32 5
  store ptr %136, ptr %next116, align 8, !tbaa !67
  %138 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  store ptr %138, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end117:                                        ; preds = %if.end89
  %139 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next118 = getelementptr inbounds %struct.unur_hinv_interval, ptr %139, i32 0, i32 5
  %140 = load ptr, ptr %next118, align 8, !tbaa !67
  store ptr %140, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end117, %if.end113, %if.then112, %do.end88, %if.end73, %if.then72, %if.end57, %if.then26, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fx) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %iv_tmp) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %iv_new) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %p_new) #6
  %141 = load ptr, ptr %retval, align 8
  ret ptr %141
}

declare i32 @_unur_isfinite(double noundef) #2

declare double @_unur_arcmean(double noundef, double noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @_unur_hinv_interval_parameter(ptr noundef %gen, ptr noundef %iv) #0 {
entry:
  %retval = alloca i32, align 4
  %gen.addr = alloca ptr, align 8
  %iv.addr = alloca ptr, align 8
  %delta_u = alloca double, align 8
  %delta_p = alloca double, align 8
  %f1 = alloca double, align 8
  %fs0 = alloca double, align 8
  %fs1 = alloca double, align 8
  %fss0 = alloca double, align 8
  %fss1 = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gen, ptr %gen.addr, align 8, !tbaa !4
  store ptr %iv, ptr %iv.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta_u) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta_p) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %f1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %fs0) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %fs1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %fss0) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %fss1) #6
  %0 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.unur_hinv_interval, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %next, align 8, !tbaa !67
  %u = getelementptr inbounds %struct.unur_hinv_interval, ptr %1, i32 0, i32 2
  %2 = load double, ptr %u, align 8, !tbaa !70
  %3 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %u1 = getelementptr inbounds %struct.unur_hinv_interval, ptr %3, i32 0, i32 2
  %4 = load double, ptr %u1, align 8, !tbaa !70
  %sub = fsub double %2, %4
  store double %sub, ptr %delta_u, align 8, !tbaa !38
  %5 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next2 = getelementptr inbounds %struct.unur_hinv_interval, ptr %5, i32 0, i32 5
  %6 = load ptr, ptr %next2, align 8, !tbaa !67
  %p = getelementptr inbounds %struct.unur_hinv_interval, ptr %6, i32 0, i32 1
  %7 = load double, ptr %p, align 8, !tbaa !69
  %8 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %p3 = getelementptr inbounds %struct.unur_hinv_interval, ptr %8, i32 0, i32 1
  %9 = load double, ptr %p3, align 8, !tbaa !69
  %sub4 = fsub double %7, %9
  store double %sub4, ptr %delta_p, align 8, !tbaa !38
  %10 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_gen, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %datap, align 8, !tbaa !34
  %order = getelementptr inbounds %struct.unur_hinv_gen, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %order, align 8, !tbaa !41
  switch i32 %12, label %sw.default [
    i32 5, label %sw.bb
    i32 3, label %sw.bb79
    i32 1, label %sw.bb120
  ]

sw.bb:                                            ; preds = %entry
  %13 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %f = getelementptr inbounds %struct.unur_hinv_interval, ptr %13, i32 0, i32 3
  %14 = load double, ptr %f, align 8, !tbaa !78
  %cmp = fcmp ogt double %14, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %15 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next5 = getelementptr inbounds %struct.unur_hinv_interval, ptr %15, i32 0, i32 5
  %16 = load ptr, ptr %next5, align 8, !tbaa !67
  %f6 = getelementptr inbounds %struct.unur_hinv_interval, ptr %16, i32 0, i32 3
  %17 = load double, ptr %f6, align 8, !tbaa !78
  %cmp7 = fcmp ogt double %17, 0.000000e+00
  br i1 %cmp7, label %land.lhs.true8, label %if.else

land.lhs.true8:                                   ; preds = %land.lhs.true
  %18 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %df = getelementptr inbounds %struct.unur_hinv_interval, ptr %18, i32 0, i32 4
  %19 = load double, ptr %df, align 8, !tbaa !77
  %cmp9 = fcmp olt double %19, 0x7FF0000000000000
  br i1 %cmp9, label %land.lhs.true10, label %if.else

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %20 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %df11 = getelementptr inbounds %struct.unur_hinv_interval, ptr %20, i32 0, i32 4
  %21 = load double, ptr %df11, align 8, !tbaa !77
  %cmp12 = fcmp ogt double %21, 0xFFF0000000000000
  br i1 %cmp12, label %land.lhs.true13, label %if.else

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %22 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next14 = getelementptr inbounds %struct.unur_hinv_interval, ptr %22, i32 0, i32 5
  %23 = load ptr, ptr %next14, align 8, !tbaa !67
  %df15 = getelementptr inbounds %struct.unur_hinv_interval, ptr %23, i32 0, i32 4
  %24 = load double, ptr %df15, align 8, !tbaa !77
  %cmp16 = fcmp olt double %24, 0x7FF0000000000000
  br i1 %cmp16, label %land.lhs.true17, label %if.else

land.lhs.true17:                                  ; preds = %land.lhs.true13
  %25 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next18 = getelementptr inbounds %struct.unur_hinv_interval, ptr %25, i32 0, i32 5
  %26 = load ptr, ptr %next18, align 8, !tbaa !67
  %df19 = getelementptr inbounds %struct.unur_hinv_interval, ptr %26, i32 0, i32 4
  %27 = load double, ptr %df19, align 8, !tbaa !77
  %cmp20 = fcmp ogt double %27, 0xFFF0000000000000
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true17
  %28 = load double, ptr %delta_p, align 8, !tbaa !38
  store double %28, ptr %f1, align 8, !tbaa !38
  %29 = load double, ptr %delta_u, align 8, !tbaa !38
  %30 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %f21 = getelementptr inbounds %struct.unur_hinv_interval, ptr %30, i32 0, i32 3
  %31 = load double, ptr %f21, align 8, !tbaa !78
  %div = fdiv double %29, %31
  store double %div, ptr %fs0, align 8, !tbaa !38
  %32 = load double, ptr %delta_u, align 8, !tbaa !38
  %33 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next22 = getelementptr inbounds %struct.unur_hinv_interval, ptr %33, i32 0, i32 5
  %34 = load ptr, ptr %next22, align 8, !tbaa !67
  %f23 = getelementptr inbounds %struct.unur_hinv_interval, ptr %34, i32 0, i32 3
  %35 = load double, ptr %f23, align 8, !tbaa !78
  %div24 = fdiv double %32, %35
  store double %div24, ptr %fs1, align 8, !tbaa !38
  %36 = load double, ptr %delta_u, align 8, !tbaa !38
  %fneg = fneg double %36
  %37 = load double, ptr %delta_u, align 8, !tbaa !38
  %mul = fmul double %fneg, %37
  %38 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %df25 = getelementptr inbounds %struct.unur_hinv_interval, ptr %38, i32 0, i32 4
  %39 = load double, ptr %df25, align 8, !tbaa !77
  %mul26 = fmul double %mul, %39
  %40 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %f27 = getelementptr inbounds %struct.unur_hinv_interval, ptr %40, i32 0, i32 3
  %41 = load double, ptr %f27, align 8, !tbaa !78
  %42 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %f28 = getelementptr inbounds %struct.unur_hinv_interval, ptr %42, i32 0, i32 3
  %43 = load double, ptr %f28, align 8, !tbaa !78
  %mul29 = fmul double %41, %43
  %44 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %f30 = getelementptr inbounds %struct.unur_hinv_interval, ptr %44, i32 0, i32 3
  %45 = load double, ptr %f30, align 8, !tbaa !78
  %mul31 = fmul double %mul29, %45
  %div32 = fdiv double %mul26, %mul31
  store double %div32, ptr %fss0, align 8, !tbaa !38
  %46 = load double, ptr %delta_u, align 8, !tbaa !38
  %fneg33 = fneg double %46
  %47 = load double, ptr %delta_u, align 8, !tbaa !38
  %mul34 = fmul double %fneg33, %47
  %48 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next35 = getelementptr inbounds %struct.unur_hinv_interval, ptr %48, i32 0, i32 5
  %49 = load ptr, ptr %next35, align 8, !tbaa !67
  %df36 = getelementptr inbounds %struct.unur_hinv_interval, ptr %49, i32 0, i32 4
  %50 = load double, ptr %df36, align 8, !tbaa !77
  %mul37 = fmul double %mul34, %50
  %51 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next38 = getelementptr inbounds %struct.unur_hinv_interval, ptr %51, i32 0, i32 5
  %52 = load ptr, ptr %next38, align 8, !tbaa !67
  %f39 = getelementptr inbounds %struct.unur_hinv_interval, ptr %52, i32 0, i32 3
  %53 = load double, ptr %f39, align 8, !tbaa !78
  %54 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next40 = getelementptr inbounds %struct.unur_hinv_interval, ptr %54, i32 0, i32 5
  %55 = load ptr, ptr %next40, align 8, !tbaa !67
  %f41 = getelementptr inbounds %struct.unur_hinv_interval, ptr %55, i32 0, i32 3
  %56 = load double, ptr %f41, align 8, !tbaa !78
  %mul42 = fmul double %53, %56
  %57 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next43 = getelementptr inbounds %struct.unur_hinv_interval, ptr %57, i32 0, i32 5
  %58 = load ptr, ptr %next43, align 8, !tbaa !67
  %f44 = getelementptr inbounds %struct.unur_hinv_interval, ptr %58, i32 0, i32 3
  %59 = load double, ptr %f44, align 8, !tbaa !78
  %mul45 = fmul double %mul42, %59
  %div46 = fdiv double %mul37, %mul45
  store double %div46, ptr %fss1, align 8, !tbaa !38
  %60 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %p47 = getelementptr inbounds %struct.unur_hinv_interval, ptr %60, i32 0, i32 1
  %61 = load double, ptr %p47, align 8, !tbaa !69
  %62 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %spline = getelementptr inbounds %struct.unur_hinv_interval, ptr %62, i32 0, i32 0
  %arrayidx = getelementptr inbounds [6 x double], ptr %spline, i64 0, i64 0
  store double %61, ptr %arrayidx, align 8, !tbaa !38
  %63 = load double, ptr %fs0, align 8, !tbaa !38
  %64 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %spline48 = getelementptr inbounds %struct.unur_hinv_interval, ptr %64, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [6 x double], ptr %spline48, i64 0, i64 1
  store double %63, ptr %arrayidx49, align 8, !tbaa !38
  %65 = load double, ptr %fss0, align 8, !tbaa !38
  %mul50 = fmul double 5.000000e-01, %65
  %66 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %spline51 = getelementptr inbounds %struct.unur_hinv_interval, ptr %66, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [6 x double], ptr %spline51, i64 0, i64 2
  store double %mul50, ptr %arrayidx52, align 8, !tbaa !38
  %67 = load double, ptr %f1, align 8, !tbaa !38
  %68 = load double, ptr %fs0, align 8, !tbaa !38
  %mul54 = fmul double 6.000000e+00, %68
  %neg = fneg double %mul54
  %69 = call double @llvm.fmuladd.f64(double 1.000000e+01, double %67, double %neg)
  %70 = load double, ptr %fs1, align 8, !tbaa !38
  %71 = call double @llvm.fmuladd.f64(double -4.000000e+00, double %70, double %69)
  %72 = load double, ptr %fss0, align 8, !tbaa !38
  %73 = call double @llvm.fmuladd.f64(double -1.500000e+00, double %72, double %71)
  %74 = load double, ptr %fss1, align 8, !tbaa !38
  %75 = call double @llvm.fmuladd.f64(double 5.000000e-01, double %74, double %73)
  %76 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %spline58 = getelementptr inbounds %struct.unur_hinv_interval, ptr %76, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [6 x double], ptr %spline58, i64 0, i64 3
  store double %75, ptr %arrayidx59, align 8, !tbaa !38
  %77 = load double, ptr %f1, align 8, !tbaa !38
  %78 = load double, ptr %fs0, align 8, !tbaa !38
  %mul61 = fmul double 8.000000e+00, %78
  %79 = call double @llvm.fmuladd.f64(double -1.500000e+01, double %77, double %mul61)
  %80 = load double, ptr %fs1, align 8, !tbaa !38
  %81 = call double @llvm.fmuladd.f64(double 7.000000e+00, double %80, double %79)
  %82 = load double, ptr %fss0, align 8, !tbaa !38
  %83 = call double @llvm.fmuladd.f64(double 1.500000e+00, double %82, double %81)
  %84 = load double, ptr %fss1, align 8, !tbaa !38
  %sub64 = fsub double %83, %84
  %85 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %spline65 = getelementptr inbounds %struct.unur_hinv_interval, ptr %85, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [6 x double], ptr %spline65, i64 0, i64 4
  store double %sub64, ptr %arrayidx66, align 8, !tbaa !38
  %86 = load double, ptr %f1, align 8, !tbaa !38
  %87 = load double, ptr %fs0, align 8, !tbaa !38
  %mul68 = fmul double 3.000000e+00, %87
  %neg69 = fneg double %mul68
  %88 = call double @llvm.fmuladd.f64(double 6.000000e+00, double %86, double %neg69)
  %89 = load double, ptr %fs1, align 8, !tbaa !38
  %90 = call double @llvm.fmuladd.f64(double -3.000000e+00, double %89, double %88)
  %91 = load double, ptr %fss0, align 8, !tbaa !38
  %92 = call double @llvm.fmuladd.f64(double -5.000000e-01, double %91, double %90)
  %93 = load double, ptr %fss1, align 8, !tbaa !38
  %94 = call double @llvm.fmuladd.f64(double 5.000000e-01, double %93, double %92)
  %95 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %spline73 = getelementptr inbounds %struct.unur_hinv_interval, ptr %95, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [6 x double], ptr %spline73, i64 0, i64 5
  store double %94, ptr %arrayidx74, align 8, !tbaa !38
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true17, %land.lhs.true13, %land.lhs.true10, %land.lhs.true8, %land.lhs.true, %sw.bb
  %96 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %spline75 = getelementptr inbounds %struct.unur_hinv_interval, ptr %96, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [6 x double], ptr %spline75, i64 0, i64 4
  store double 0.000000e+00, ptr %arrayidx76, align 8, !tbaa !38
  %97 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %spline77 = getelementptr inbounds %struct.unur_hinv_interval, ptr %97, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [6 x double], ptr %spline77, i64 0, i64 5
  store double 0.000000e+00, ptr %arrayidx78, align 8, !tbaa !38
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %sw.bb79

sw.bb79:                                          ; preds = %entry, %if.end
  %98 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %f80 = getelementptr inbounds %struct.unur_hinv_interval, ptr %98, i32 0, i32 3
  %99 = load double, ptr %f80, align 8, !tbaa !78
  %cmp81 = fcmp ogt double %99, 0.000000e+00
  br i1 %cmp81, label %land.lhs.true82, label %if.else114

land.lhs.true82:                                  ; preds = %sw.bb79
  %100 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next83 = getelementptr inbounds %struct.unur_hinv_interval, ptr %100, i32 0, i32 5
  %101 = load ptr, ptr %next83, align 8, !tbaa !67
  %f84 = getelementptr inbounds %struct.unur_hinv_interval, ptr %101, i32 0, i32 3
  %102 = load double, ptr %f84, align 8, !tbaa !78
  %cmp85 = fcmp ogt double %102, 0.000000e+00
  br i1 %cmp85, label %if.then86, label %if.else114

if.then86:                                        ; preds = %land.lhs.true82
  %103 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %p87 = getelementptr inbounds %struct.unur_hinv_interval, ptr %103, i32 0, i32 1
  %104 = load double, ptr %p87, align 8, !tbaa !69
  %105 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %spline88 = getelementptr inbounds %struct.unur_hinv_interval, ptr %105, i32 0, i32 0
  %arrayidx89 = getelementptr inbounds [6 x double], ptr %spline88, i64 0, i64 0
  store double %104, ptr %arrayidx89, align 8, !tbaa !38
  %106 = load double, ptr %delta_u, align 8, !tbaa !38
  %107 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %f90 = getelementptr inbounds %struct.unur_hinv_interval, ptr %107, i32 0, i32 3
  %108 = load double, ptr %f90, align 8, !tbaa !78
  %div91 = fdiv double %106, %108
  %109 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %spline92 = getelementptr inbounds %struct.unur_hinv_interval, ptr %109, i32 0, i32 0
  %arrayidx93 = getelementptr inbounds [6 x double], ptr %spline92, i64 0, i64 1
  store double %div91, ptr %arrayidx93, align 8, !tbaa !38
  %110 = load double, ptr %delta_p, align 8, !tbaa !38
  %111 = load double, ptr %delta_u, align 8, !tbaa !38
  %112 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %f95 = getelementptr inbounds %struct.unur_hinv_interval, ptr %112, i32 0, i32 3
  %113 = load double, ptr %f95, align 8, !tbaa !78
  %div96 = fdiv double 2.000000e+00, %113
  %114 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next97 = getelementptr inbounds %struct.unur_hinv_interval, ptr %114, i32 0, i32 5
  %115 = load ptr, ptr %next97, align 8, !tbaa !67
  %f98 = getelementptr inbounds %struct.unur_hinv_interval, ptr %115, i32 0, i32 3
  %116 = load double, ptr %f98, align 8, !tbaa !78
  %div99 = fdiv double 1.000000e+00, %116
  %add = fadd double %div96, %div99
  %mul100 = fmul double %111, %add
  %neg101 = fneg double %mul100
  %117 = call double @llvm.fmuladd.f64(double 3.000000e+00, double %110, double %neg101)
  %118 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %spline102 = getelementptr inbounds %struct.unur_hinv_interval, ptr %118, i32 0, i32 0
  %arrayidx103 = getelementptr inbounds [6 x double], ptr %spline102, i64 0, i64 2
  store double %117, ptr %arrayidx103, align 8, !tbaa !38
  %119 = load double, ptr %delta_p, align 8, !tbaa !38
  %120 = load double, ptr %delta_u, align 8, !tbaa !38
  %121 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %f105 = getelementptr inbounds %struct.unur_hinv_interval, ptr %121, i32 0, i32 3
  %122 = load double, ptr %f105, align 8, !tbaa !78
  %div106 = fdiv double 1.000000e+00, %122
  %123 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next107 = getelementptr inbounds %struct.unur_hinv_interval, ptr %123, i32 0, i32 5
  %124 = load ptr, ptr %next107, align 8, !tbaa !67
  %f108 = getelementptr inbounds %struct.unur_hinv_interval, ptr %124, i32 0, i32 3
  %125 = load double, ptr %f108, align 8, !tbaa !78
  %div109 = fdiv double 1.000000e+00, %125
  %add110 = fadd double %div106, %div109
  %mul111 = fmul double %120, %add110
  %126 = call double @llvm.fmuladd.f64(double -2.000000e+00, double %119, double %mul111)
  %127 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %spline112 = getelementptr inbounds %struct.unur_hinv_interval, ptr %127, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [6 x double], ptr %spline112, i64 0, i64 3
  store double %126, ptr %arrayidx113, align 8, !tbaa !38
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else114:                                       ; preds = %land.lhs.true82, %sw.bb79
  %128 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %spline115 = getelementptr inbounds %struct.unur_hinv_interval, ptr %128, i32 0, i32 0
  %arrayidx116 = getelementptr inbounds [6 x double], ptr %spline115, i64 0, i64 2
  store double 0.000000e+00, ptr %arrayidx116, align 8, !tbaa !38
  %129 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %spline117 = getelementptr inbounds %struct.unur_hinv_interval, ptr %129, i32 0, i32 0
  %arrayidx118 = getelementptr inbounds [6 x double], ptr %spline117, i64 0, i64 3
  store double 0.000000e+00, ptr %arrayidx118, align 8, !tbaa !38
  br label %if.end119

if.end119:                                        ; preds = %if.else114
  br label %sw.bb120

sw.bb120:                                         ; preds = %entry, %if.end119
  %130 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %p121 = getelementptr inbounds %struct.unur_hinv_interval, ptr %130, i32 0, i32 1
  %131 = load double, ptr %p121, align 8, !tbaa !69
  %132 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %spline122 = getelementptr inbounds %struct.unur_hinv_interval, ptr %132, i32 0, i32 0
  %arrayidx123 = getelementptr inbounds [6 x double], ptr %spline122, i64 0, i64 0
  store double %131, ptr %arrayidx123, align 8, !tbaa !38
  %133 = load double, ptr %delta_p, align 8, !tbaa !38
  %134 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %spline124 = getelementptr inbounds %struct.unur_hinv_interval, ptr %134, i32 0, i32 0
  %arrayidx125 = getelementptr inbounds [6 x double], ptr %spline124, i64 0, i64 1
  store double %133, ptr %arrayidx125, align 8, !tbaa !38
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %135 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %genid = getelementptr inbounds %struct.unur_gen, ptr %135, i32 0, i32 10
  %136 = load ptr, ptr %genid, align 8, !tbaa !46
  call void @_unur_error_x(ptr noundef %136, ptr noundef @.str.1, i32 noundef 1690, ptr noundef @.str.2, i32 noundef 240, ptr noundef @.str.3)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 240, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb120, %if.then86, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fss1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %fss0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %fs1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %fs0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %f1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta_p) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta_u) #6
  %137 = load i32, ptr %retval, align 4
  ret i32 %137
}

; Function Attrs: nounwind uwtable
define internal i32 @_unur_hinv_interval_is_monotone(ptr noundef %gen, ptr noundef %iv) #0 {
entry:
  %retval = alloca i32, align 4
  %gen.addr = alloca ptr, align 8
  %iv.addr = alloca ptr, align 8
  %bound = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gen, ptr %gen.addr, align 8, !tbaa !4
  store ptr %iv, ptr %iv.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bound) #6
  %0 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %datap = getelementptr inbounds %struct.unur_gen, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %datap, align 8, !tbaa !34
  %order = getelementptr inbounds %struct.unur_hinv_gen, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %order, align 8, !tbaa !41
  switch i32 %2, label %sw.default [
    i32 5, label %sw.bb
    i32 3, label %sw.bb
    i32 1, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry, %entry
  %3 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %u = getelementptr inbounds %struct.unur_hinv_interval, ptr %3, i32 0, i32 2
  %4 = load double, ptr %u, align 8, !tbaa !70
  %cmp = fcmp oeq double %4, 0.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %5 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %u1 = getelementptr inbounds %struct.unur_hinv_interval, ptr %5, i32 0, i32 2
  %6 = load double, ptr %u1, align 8, !tbaa !70
  %7 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.unur_hinv_interval, ptr %7, i32 0, i32 5
  %8 = load ptr, ptr %next, align 8, !tbaa !67
  %u2 = getelementptr inbounds %struct.unur_hinv_interval, ptr %8, i32 0, i32 2
  %9 = load double, ptr %u2, align 8, !tbaa !70
  %call = call i32 @_unur_FP_cmp(double noundef %6, double noundef %9, double noundef 0x3E50000000000000)
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.bb
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %10 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next4 = getelementptr inbounds %struct.unur_hinv_interval, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %next4, align 8, !tbaa !67
  %p = getelementptr inbounds %struct.unur_hinv_interval, ptr %11, i32 0, i32 1
  %12 = load double, ptr %p, align 8, !tbaa !69
  %13 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %p5 = getelementptr inbounds %struct.unur_hinv_interval, ptr %13, i32 0, i32 1
  %14 = load double, ptr %p5, align 8, !tbaa !69
  %sub = fsub double %12, %14
  %mul = fmul double 3.000000e+00, %sub
  %15 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next6 = getelementptr inbounds %struct.unur_hinv_interval, ptr %15, i32 0, i32 5
  %16 = load ptr, ptr %next6, align 8, !tbaa !67
  %u7 = getelementptr inbounds %struct.unur_hinv_interval, ptr %16, i32 0, i32 2
  %17 = load double, ptr %u7, align 8, !tbaa !70
  %18 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %u8 = getelementptr inbounds %struct.unur_hinv_interval, ptr %18, i32 0, i32 2
  %19 = load double, ptr %u8, align 8, !tbaa !70
  %sub9 = fsub double %17, %19
  %div = fdiv double %mul, %sub9
  store double %div, ptr %bound, align 8, !tbaa !38
  %20 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %next10 = getelementptr inbounds %struct.unur_hinv_interval, ptr %20, i32 0, i32 5
  %21 = load ptr, ptr %next10, align 8, !tbaa !67
  %f = getelementptr inbounds %struct.unur_hinv_interval, ptr %21, i32 0, i32 3
  %22 = load double, ptr %f, align 8, !tbaa !78
  %div11 = fdiv double 1.000000e+00, %22
  %23 = load double, ptr %bound, align 8, !tbaa !38
  %cmp12 = fcmp ogt double %div11, %23
  br i1 %cmp12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %24 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %f13 = getelementptr inbounds %struct.unur_hinv_interval, ptr %24, i32 0, i32 3
  %25 = load double, ptr %f13, align 8, !tbaa !78
  %div14 = fdiv double 1.000000e+00, %25
  %26 = load double, ptr %bound, align 8, !tbaa !38
  %cmp15 = fcmp ogt double %div14, %26
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %27 = phi i1 [ true, %if.end ], [ %cmp15, %lor.rhs ]
  %28 = zext i1 %27 to i64
  %cond = select i1 %27, i32 0, i32 1
  store i32 %cond, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb16
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %lor.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bound) #6
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal double @_unur_hinv_eval_polynomial(double noundef %x, ptr noundef %coeff, i32 noundef %order) #0 {
entry:
  %x.addr = alloca double, align 8
  %coeff.addr = alloca ptr, align 8
  %order.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %poly = alloca double, align 8
  store double %x, ptr %x.addr, align 8, !tbaa !38
  store ptr %coeff, ptr %coeff.addr, align 8, !tbaa !4
  store i32 %order, ptr %order.addr, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %poly) #6
  %0 = load ptr, ptr %coeff.addr, align 8, !tbaa !4
  %1 = load i32, ptr %order.addr, align 4, !tbaa !31
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds double, ptr %0, i64 %idxprom
  %2 = load double, ptr %arrayidx, align 8, !tbaa !38
  store double %2, ptr %poly, align 8, !tbaa !38
  %3 = load i32, ptr %order.addr, align 4, !tbaa !31
  %sub = sub nsw i32 %3, 1
  store i32 %sub, ptr %i, align 4, !tbaa !31
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !tbaa !31
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load double, ptr %x.addr, align 8, !tbaa !38
  %6 = load double, ptr %poly, align 8, !tbaa !38
  %7 = load ptr, ptr %coeff.addr, align 8, !tbaa !4
  %8 = load i32, ptr %i, align 4, !tbaa !31
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds double, ptr %7, i64 %idxprom1
  %9 = load double, ptr %arrayidx2, align 8, !tbaa !38
  %10 = call double @llvm.fmuladd.f64(double %5, double %6, double %9)
  store double %10, ptr %poly, align 8, !tbaa !38
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !tbaa !31
  %dec = add nsw i32 %11, -1
  store i32 %dec, ptr %i, align 4, !tbaa !31
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load double, ptr %poly, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 8, ptr %poly) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret double %12
}

declare i32 @_unur_isnan(double noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

declare noalias ptr @_unur_xrealloc(ptr noundef, i64 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }

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
!8 = !{!9, !10, i64 328}
!9 = !{!"unur_distr", !6, i64 0, !10, i64 328, !10, i64 332, !5, i64 336, !5, i64 344, !10, i64 352, !10, i64 356, !5, i64 360, !5, i64 368, !5, i64 376, !5, i64 384}
!10 = !{!"int", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!13, !5, i64 56}
!13 = !{!"unur_par", !5, i64 0, !14, i64 8, !5, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !10, i64 64, !10, i64 68}
!14 = !{!"long", !6, i64 0}
!15 = !{!13, !5, i64 0}
!16 = !{!17, !10, i64 0}
!17 = !{!"unur_hinv_par", !10, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !5, i64 40, !10, i64 48, !10, i64 52}
!18 = !{!"double", !6, i64 0}
!19 = !{!17, !18, i64 8}
!20 = !{!17, !18, i64 16}
!21 = !{!17, !18, i64 24}
!22 = !{!17, !18, i64 32}
!23 = !{!17, !10, i64 52}
!24 = !{!17, !5, i64 40}
!25 = !{!17, !10, i64 48}
!26 = !{!13, !10, i64 24}
!27 = !{!13, !10, i64 28}
!28 = !{!13, !10, i64 32}
!29 = !{!13, !5, i64 40}
!30 = !{!13, !5, i64 48}
!31 = !{!10, !10, i64 0}
!32 = !{!13, !10, i64 68}
!33 = !{!13, !5, i64 16}
!34 = !{!35, !5, i64 0}
!35 = !{!"unur_gen", !5, i64 0, !6, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !10, i64 88, !14, i64 96, !10, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144}
!36 = !{!37, !5, i64 8}
!37 = !{!"unur_hinv_gen", !10, i64 0, !10, i64 4, !5, i64 8, !5, i64 16, !10, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !5, i64 96, !18, i64 104, !18, i64 112, !10, i64 120, !5, i64 128, !10, i64 136, !18, i64 144, !18, i64 152}
!38 = !{!18, !18, i64 0}
!39 = !{!37, !18, i64 40}
!40 = !{!37, !10, i64 4}
!41 = !{!37, !10, i64 0}
!42 = !{!37, !18, i64 48}
!43 = !{!37, !5, i64 128}
!44 = !{!37, !10, i64 136}
!45 = !{!35, !10, i64 44}
!46 = !{!35, !5, i64 64}
!47 = !{!37, !18, i64 80}
!48 = !{!37, !18, i64 88}
!49 = !{!35, !5, i64 32}
!50 = !{!9, !10, i64 356}
!51 = !{!37, !18, i64 56}
!52 = !{!37, !18, i64 64}
!53 = !{!37, !5, i64 16}
!54 = !{!37, !10, i64 24}
!55 = !{!35, !5, i64 112}
!56 = !{!35, !5, i64 120}
!57 = !{!35, !5, i64 128}
!58 = !{!37, !18, i64 72}
!59 = !{!37, !18, i64 32}
!60 = !{!37, !18, i64 144}
!61 = !{!37, !18, i64 152}
!62 = !{!37, !10, i64 120}
!63 = !{!37, !18, i64 104}
!64 = !{!37, !18, i64 112}
!65 = !{!37, !5, i64 96}
!66 = !{!35, !5, i64 144}
!67 = !{!68, !5, i64 80}
!68 = !{!"unur_hinv_interval", !6, i64 0, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !5, i64 80}
!69 = !{!68, !18, i64 48}
!70 = !{!68, !18, i64 56}
!71 = !{!35, !5, i64 16}
!72 = !{!73, !5, i64 0}
!73 = !{!"unur_urng", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !14, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80}
!74 = !{!73, !5, i64 8}
!75 = !{!35, !5, i64 136}
!76 = !{!35, !10, i64 52}
!77 = !{!68, !18, i64 72}
!78 = !{!68, !18, i64 64}
