; ModuleID = 'samples/445.bc'
source_filename = "../scipy/_lib/unuran/unuran/src/distributions/c_burr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unur_distr = type { %union.anon, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr }
%union.anon = type { %struct.unur_distr_cont }
%struct.unur_distr_cont = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, double, [5 x double], i32, [5 x ptr], [5 x i32], double, double, double, [2 x double], [2 x double], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@distr_name = internal constant [5 x i8] c"burr\00", align 1
@.str = private unnamed_addr constant [55 x i8] c"../scipy/_lib/unuran/unuran/src/distributions/c_burr.c\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"too few\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"type < 1 || type > 12\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"too many\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"unkown type\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"k <= 0 || c <= 0\00", align 1

; Function Attrs: nounwind uwtable
define hidden ptr @unur_distr_burr(ptr noundef %params, i32 noundef %n_params) #0 {
entry:
  %retval = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %n_params.addr = alloca i32, align 4
  %distr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %params, ptr %params.addr, align 8, !tbaa !4
  store i32 %n_params, ptr %n_params.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %distr) #5
  %0 = load i32, ptr %n_params.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @_unur_error_x(ptr noundef @distr_name, ptr noundef @.str, i32 noundef 482, ptr noundef @.str.1, i32 noundef 19, ptr noundef @.str.2)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call ptr @unur_distr_cont_new()
  store ptr %call, ptr %distr, align 8, !tbaa !4
  %1 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds double, ptr %1, i64 0
  %2 = load double, ptr %arrayidx, align 8, !tbaa !10
  %add = fadd double %2, 5.000000e-01
  %conv = fptosi double %add to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
    i32 4, label %sw.bb5
    i32 5, label %sw.bb7
    i32 6, label %sw.bb9
    i32 7, label %sw.bb11
    i32 8, label %sw.bb13
    i32 9, label %sw.bb15
    i32 10, label %sw.bb17
    i32 11, label %sw.bb19
    i32 12, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load ptr, ptr %distr, align 8, !tbaa !4
  %id = getelementptr inbounds %struct.unur_distr, ptr %3, i32 0, i32 2
  store i32 45057, ptr %id, align 4, !tbaa !12
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %4 = load ptr, ptr %distr, align 8, !tbaa !4
  %id2 = getelementptr inbounds %struct.unur_distr, ptr %4, i32 0, i32 2
  store i32 45313, ptr %id2, align 4, !tbaa !12
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %5 = load ptr, ptr %distr, align 8, !tbaa !4
  %id4 = getelementptr inbounds %struct.unur_distr, ptr %5, i32 0, i32 2
  store i32 45569, ptr %id4, align 4, !tbaa !12
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %6 = load ptr, ptr %distr, align 8, !tbaa !4
  %id6 = getelementptr inbounds %struct.unur_distr, ptr %6, i32 0, i32 2
  store i32 45825, ptr %id6, align 4, !tbaa !12
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %7 = load ptr, ptr %distr, align 8, !tbaa !4
  %id8 = getelementptr inbounds %struct.unur_distr, ptr %7, i32 0, i32 2
  store i32 46081, ptr %id8, align 4, !tbaa !12
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  %8 = load ptr, ptr %distr, align 8, !tbaa !4
  %id10 = getelementptr inbounds %struct.unur_distr, ptr %8, i32 0, i32 2
  store i32 46337, ptr %id10, align 4, !tbaa !12
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %9 = load ptr, ptr %distr, align 8, !tbaa !4
  %id12 = getelementptr inbounds %struct.unur_distr, ptr %9, i32 0, i32 2
  store i32 46593, ptr %id12, align 4, !tbaa !12
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  %10 = load ptr, ptr %distr, align 8, !tbaa !4
  %id14 = getelementptr inbounds %struct.unur_distr, ptr %10, i32 0, i32 2
  store i32 46849, ptr %id14, align 4, !tbaa !12
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  %11 = load ptr, ptr %distr, align 8, !tbaa !4
  %id16 = getelementptr inbounds %struct.unur_distr, ptr %11, i32 0, i32 2
  store i32 47105, ptr %id16, align 4, !tbaa !12
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %12 = load ptr, ptr %distr, align 8, !tbaa !4
  %id18 = getelementptr inbounds %struct.unur_distr, ptr %12, i32 0, i32 2
  store i32 47361, ptr %id18, align 4, !tbaa !12
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  %13 = load ptr, ptr %distr, align 8, !tbaa !4
  %id20 = getelementptr inbounds %struct.unur_distr, ptr %13, i32 0, i32 2
  store i32 47617, ptr %id20, align 4, !tbaa !12
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  %14 = load ptr, ptr %distr, align 8, !tbaa !4
  %id22 = getelementptr inbounds %struct.unur_distr, ptr %14, i32 0, i32 2
  store i32 47873, ptr %id22, align 4, !tbaa !12
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %do.body23

do.body23:                                        ; preds = %sw.default
  call void @_unur_error_x(ptr noundef @distr_name, ptr noundef @.str, i32 noundef 505, ptr noundef @.str.1, i32 noundef 20, ptr noundef @.str.3)
  br label %do.cond24

do.cond24:                                        ; preds = %do.body23
  br label %do.end25

do.end25:                                         ; preds = %do.cond24
  %15 = load ptr, ptr %distr, align 8, !tbaa !4
  call void @free(ptr noundef %15) #5
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %16 = load ptr, ptr %distr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.unur_distr, ptr %16, i32 0, i32 3
  store ptr @distr_name, ptr %name, align 8, !tbaa !14
  %17 = load ptr, ptr %distr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.unur_distr, ptr %17, i32 0, i32 0
  %cdf = getelementptr inbounds %struct.unur_distr_cont, ptr %data, i32 0, i32 2
  store ptr @_unur_cdf_burr, ptr %cdf, align 8, !tbaa !15
  %18 = load ptr, ptr %distr, align 8, !tbaa !4
  %data26 = getelementptr inbounds %struct.unur_distr, ptr %18, i32 0, i32 0
  %invcdf = getelementptr inbounds %struct.unur_distr_cont, ptr %data26, i32 0, i32 3
  store ptr @_unur_invcdf_burr, ptr %invcdf, align 8, !tbaa !15
  %19 = load ptr, ptr %distr, align 8, !tbaa !4
  %set = getelementptr inbounds %struct.unur_distr, ptr %19, i32 0, i32 6
  store i32 327680, ptr %set, align 4, !tbaa !16
  %20 = load ptr, ptr %distr, align 8, !tbaa !4
  %21 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %22 = load i32, ptr %n_params.addr, align 4, !tbaa !8
  %call27 = call i32 @_unur_set_params_burr(ptr noundef %20, ptr noundef %21, i32 noundef %22)
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %sw.epilog
  %23 = load ptr, ptr %distr, align 8, !tbaa !4
  call void @free(ptr noundef %23) #5
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end31:                                         ; preds = %sw.epilog
  %24 = load ptr, ptr %distr, align 8, !tbaa !4
  %data32 = getelementptr inbounds %struct.unur_distr, ptr %24, i32 0, i32 0
  %set_params = getelementptr inbounds %struct.unur_distr_cont, ptr %data32, i32 0, i32 25
  store ptr @_unur_set_params_burr, ptr %set_params, align 8, !tbaa !15
  %25 = load ptr, ptr %distr, align 8, !tbaa !4
  store ptr %25, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then30, %do.end25, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %distr) #5
  %26 = load ptr, ptr %retval, align 8
  ret ptr %26
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @_unur_error_x(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare ptr @unur_distr_cont_new() #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal double @_unur_cdf_burr(double noundef %x, ptr noundef %distr) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %distr.addr = alloca ptr, align 8
  %params = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store double %x, ptr %x.addr, align 8, !tbaa !10
  store ptr %distr, ptr %distr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %params) #5
  %0 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.unur_distr, ptr %0, i32 0, i32 0
  %params1 = getelementptr inbounds %struct.unur_distr_cont, ptr %data, i32 0, i32 9
  %arraydecay = getelementptr inbounds [5 x double], ptr %params1, i64 0, i64 0
  store ptr %arraydecay, ptr %params, align 8, !tbaa !4
  %1 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds double, ptr %1, i64 0
  %2 = load double, ptr %arrayidx, align 8, !tbaa !10
  %add = fadd double %2, 5.000000e-01
  %conv = fptosi double %add to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
    i32 3, label %sw.bb12
    i32 4, label %sw.bb24
    i32 5, label %sw.bb42
    i32 6, label %sw.bb58
    i32 7, label %sw.bb68
    i32 8, label %sw.bb74
    i32 9, label %sw.bb80
    i32 10, label %sw.bb90
    i32 11, label %sw.bb101
    i32 12, label %sw.bb115
  ]

sw.bb:                                            ; preds = %entry
  %3 = load double, ptr %x.addr, align 8, !tbaa !10
  %cmp = fcmp ole double %3, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store double 0.000000e+00, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %4 = load double, ptr %x.addr, align 8, !tbaa !10
  %cmp3 = fcmp oge double %4, 1.000000e+00
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store double 1.000000e+00, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %5 = load double, ptr %x.addr, align 8, !tbaa !10
  store double %5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %6 = load double, ptr %x.addr, align 8, !tbaa !10
  %fneg = fneg double %6
  %call = call double @exp(double noundef %fneg) #5
  %add8 = fadd double %call, 1.000000e+00
  %7 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx9 = getelementptr inbounds double, ptr %7, i64 1
  %8 = load double, ptr %arrayidx9, align 8, !tbaa !10
  %fneg10 = fneg double %8
  %call11 = call double @pow(double noundef %add8, double noundef %fneg10) #5
  store double %call11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %9 = load double, ptr %x.addr, align 8, !tbaa !10
  %cmp13 = fcmp ole double %9, 0.000000e+00
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %sw.bb12
  store double 0.000000e+00, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %sw.bb12
  %10 = load double, ptr %x.addr, align 8, !tbaa !10
  %11 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx17 = getelementptr inbounds double, ptr %11, i64 2
  %12 = load double, ptr %arrayidx17, align 8, !tbaa !10
  %fneg18 = fneg double %12
  %call19 = call double @pow(double noundef %10, double noundef %fneg18) #5
  %add20 = fadd double %call19, 1.000000e+00
  %13 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx21 = getelementptr inbounds double, ptr %13, i64 1
  %14 = load double, ptr %arrayidx21, align 8, !tbaa !10
  %fneg22 = fneg double %14
  %call23 = call double @pow(double noundef %add20, double noundef %fneg22) #5
  store double %call23, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  %15 = load double, ptr %x.addr, align 8, !tbaa !10
  %cmp25 = fcmp ole double %15, 0.000000e+00
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %sw.bb24
  store double 0.000000e+00, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end28:                                         ; preds = %sw.bb24
  %16 = load double, ptr %x.addr, align 8, !tbaa !10
  %17 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx29 = getelementptr inbounds double, ptr %17, i64 2
  %18 = load double, ptr %arrayidx29, align 8, !tbaa !10
  %cmp30 = fcmp oge double %16, %18
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  store double 1.000000e+00, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %19 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx34 = getelementptr inbounds double, ptr %19, i64 2
  %20 = load double, ptr %arrayidx34, align 8, !tbaa !10
  %21 = load double, ptr %x.addr, align 8, !tbaa !10
  %sub = fsub double %20, %21
  %22 = load double, ptr %x.addr, align 8, !tbaa !10
  %div = fdiv double %sub, %22
  %23 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx35 = getelementptr inbounds double, ptr %23, i64 2
  %24 = load double, ptr %arrayidx35, align 8, !tbaa !10
  %div36 = fdiv double 1.000000e+00, %24
  %call37 = call double @pow(double noundef %div, double noundef %div36) #5
  %add38 = fadd double %call37, 1.000000e+00
  %25 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx39 = getelementptr inbounds double, ptr %25, i64 1
  %26 = load double, ptr %arrayidx39, align 8, !tbaa !10
  %fneg40 = fneg double %26
  %call41 = call double @pow(double noundef %add38, double noundef %fneg40) #5
  store double %call41, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb42:                                          ; preds = %entry
  %27 = load double, ptr %x.addr, align 8, !tbaa !10
  %cmp43 = fcmp ole double %27, 0xBFF921FB54442D18
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %sw.bb42
  store double 0.000000e+00, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end46:                                         ; preds = %sw.bb42
  %28 = load double, ptr %x.addr, align 8, !tbaa !10
  %cmp47 = fcmp oge double %28, 0x3FF921FB54442D18
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  store double 1.000000e+00, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end50:                                         ; preds = %if.end46
  %29 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx51 = getelementptr inbounds double, ptr %29, i64 2
  %30 = load double, ptr %arrayidx51, align 8, !tbaa !10
  %31 = load double, ptr %x.addr, align 8, !tbaa !10
  %call52 = call double @tan(double noundef %31) #5
  %fneg53 = fneg double %call52
  %call54 = call double @exp(double noundef %fneg53) #5
  %32 = call double @llvm.fmuladd.f64(double %30, double %call54, double 1.000000e+00)
  %33 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx55 = getelementptr inbounds double, ptr %33, i64 1
  %34 = load double, ptr %arrayidx55, align 8, !tbaa !10
  %fneg56 = fneg double %34
  %call57 = call double @pow(double noundef %32, double noundef %fneg56) #5
  store double %call57, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb58:                                          ; preds = %entry
  %35 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx59 = getelementptr inbounds double, ptr %35, i64 2
  %36 = load double, ptr %arrayidx59, align 8, !tbaa !10
  %37 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx60 = getelementptr inbounds double, ptr %37, i64 1
  %38 = load double, ptr %arrayidx60, align 8, !tbaa !10
  %fneg61 = fneg double %38
  %39 = load double, ptr %x.addr, align 8, !tbaa !10
  %call62 = call double @sinh(double noundef %39) #5
  %mul = fmul double %fneg61, %call62
  %call63 = call double @exp(double noundef %mul) #5
  %40 = call double @llvm.fmuladd.f64(double %36, double %call63, double 1.000000e+00)
  %41 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx65 = getelementptr inbounds double, ptr %41, i64 1
  %42 = load double, ptr %arrayidx65, align 8, !tbaa !10
  %fneg66 = fneg double %42
  %call67 = call double @pow(double noundef %40, double noundef %fneg66) #5
  store double %call67, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb68:                                          ; preds = %entry
  %43 = load double, ptr %x.addr, align 8, !tbaa !10
  %call69 = call double @tanh(double noundef %43) #5
  %add70 = fadd double 1.000000e+00, %call69
  %div71 = fdiv double %add70, 2.000000e+00
  %44 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx72 = getelementptr inbounds double, ptr %44, i64 1
  %45 = load double, ptr %arrayidx72, align 8, !tbaa !10
  %call73 = call double @pow(double noundef %div71, double noundef %45) #5
  store double %call73, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb74:                                          ; preds = %entry
  %46 = load double, ptr %x.addr, align 8, !tbaa !10
  %call75 = call double @exp(double noundef %46) #5
  %call76 = call double @atan(double noundef %call75) #5
  %mul77 = fmul double 0x3FE45F306DC9C883, %call76
  %47 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx78 = getelementptr inbounds double, ptr %47, i64 1
  %48 = load double, ptr %arrayidx78, align 8, !tbaa !10
  %call79 = call double @pow(double noundef %mul77, double noundef %48) #5
  store double %call79, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb80:                                          ; preds = %entry
  %49 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx81 = getelementptr inbounds double, ptr %49, i64 2
  %50 = load double, ptr %arrayidx81, align 8, !tbaa !10
  %51 = load double, ptr %x.addr, align 8, !tbaa !10
  %call82 = call double @exp(double noundef %51) #5
  %add83 = fadd double 1.000000e+00, %call82
  %52 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx84 = getelementptr inbounds double, ptr %52, i64 1
  %53 = load double, ptr %arrayidx84, align 8, !tbaa !10
  %call85 = call double @pow(double noundef %add83, double noundef %53) #5
  %sub86 = fsub double %call85, 1.000000e+00
  %54 = call double @llvm.fmuladd.f64(double %50, double %sub86, double 2.000000e+00)
  %div88 = fdiv double 2.000000e+00, %54
  %sub89 = fsub double 1.000000e+00, %div88
  store double %sub89, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb90:                                          ; preds = %entry
  %55 = load double, ptr %x.addr, align 8, !tbaa !10
  %cmp91 = fcmp ole double %55, 0.000000e+00
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %sw.bb90
  store double 0.000000e+00, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end94:                                         ; preds = %sw.bb90
  %56 = load double, ptr %x.addr, align 8, !tbaa !10
  %fneg95 = fneg double %56
  %57 = load double, ptr %x.addr, align 8, !tbaa !10
  %mul96 = fmul double %fneg95, %57
  %call97 = call double @exp(double noundef %mul96) #5
  %sub98 = fsub double 1.000000e+00, %call97
  %58 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx99 = getelementptr inbounds double, ptr %58, i64 1
  %59 = load double, ptr %arrayidx99, align 8, !tbaa !10
  %call100 = call double @pow(double noundef %sub98, double noundef %59) #5
  store double %call100, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb101:                                         ; preds = %entry
  %60 = load double, ptr %x.addr, align 8, !tbaa !10
  %cmp102 = fcmp ole double %60, 0.000000e+00
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %sw.bb101
  store double 0.000000e+00, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end105:                                        ; preds = %sw.bb101
  %61 = load double, ptr %x.addr, align 8, !tbaa !10
  %cmp106 = fcmp oge double %61, 1.000000e+00
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.end105
  store double 1.000000e+00, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end109:                                        ; preds = %if.end105
  %62 = load double, ptr %x.addr, align 8, !tbaa !10
  %63 = load double, ptr %x.addr, align 8, !tbaa !10
  %mul110 = fmul double 0x401921FB54442D18, %63
  %call111 = call double @sin(double noundef %mul110) #5
  %64 = call double @llvm.fmuladd.f64(double 0xBFC45F306DC9C883, double %call111, double %62)
  %65 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx113 = getelementptr inbounds double, ptr %65, i64 1
  %66 = load double, ptr %arrayidx113, align 8, !tbaa !10
  %call114 = call double @pow(double noundef %64, double noundef %66) #5
  store double %call114, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb115:                                         ; preds = %entry
  %67 = load double, ptr %x.addr, align 8, !tbaa !10
  %cmp116 = fcmp ole double %67, 0.000000e+00
  br i1 %cmp116, label %if.then118, label %if.end119

if.then118:                                       ; preds = %sw.bb115
  store double 0.000000e+00, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end119:                                        ; preds = %sw.bb115
  %68 = load double, ptr %x.addr, align 8, !tbaa !10
  %69 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx120 = getelementptr inbounds double, ptr %69, i64 2
  %70 = load double, ptr %arrayidx120, align 8, !tbaa !10
  %call121 = call double @pow(double noundef %68, double noundef %70) #5
  %add122 = fadd double 1.000000e+00, %call121
  %71 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx123 = getelementptr inbounds double, ptr %71, i64 1
  %72 = load double, ptr %arrayidx123, align 8, !tbaa !10
  %fneg124 = fneg double %72
  %call125 = call double @pow(double noundef %add122, double noundef %fneg124) #5
  %sub126 = fsub double 1.000000e+00, %call125
  store double %sub126, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void @_unur_error_x(ptr noundef @distr_name, ptr noundef @.str, i32 noundef 290, ptr noundef @.str.1, i32 noundef 240, ptr noundef @.str.4)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store double 0x7FF0000000000000, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end119, %if.then118, %if.end109, %if.then108, %if.then104, %if.end94, %if.then93, %sw.bb80, %sw.bb74, %sw.bb68, %sw.bb58, %if.end50, %if.then49, %if.then45, %if.end33, %if.then32, %if.then27, %if.end16, %if.then15, %sw.bb7, %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %params) #5
  %73 = load double, ptr %retval, align 8
  ret double %73
}

; Function Attrs: nounwind uwtable
define internal double @_unur_invcdf_burr(double noundef %U, ptr noundef %distr) #0 {
entry:
  %retval = alloca double, align 8
  %U.addr = alloca double, align 8
  %distr.addr = alloca ptr, align 8
  %params = alloca ptr, align 8
  %Y = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store double %U, ptr %U.addr, align 8, !tbaa !10
  store ptr %distr, ptr %distr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %params) #5
  %0 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.unur_distr, ptr %0, i32 0, i32 0
  %params1 = getelementptr inbounds %struct.unur_distr_cont, ptr %data, i32 0, i32 9
  %arraydecay = getelementptr inbounds [5 x double], ptr %params1, i64 0, i64 0
  store ptr %arraydecay, ptr %params, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Y) #5
  %1 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %id = getelementptr inbounds %struct.unur_distr, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %id, align 4, !tbaa !12
  switch i32 %2, label %sw.default [
    i32 45057, label %sw.bb
    i32 45313, label %sw.bb2
    i32 45569, label %sw.bb6
    i32 45825, label %sw.bb18
    i32 46081, label %sw.bb30
    i32 46337, label %sw.bb42
    i32 46593, label %sw.bb59
    i32 46849, label %sw.bb69
    i32 47105, label %sw.bb78
    i32 47361, label %sw.bb91
    i32 47873, label %sw.bb100
    i32 47617, label %sw.bb112
  ]

sw.bb:                                            ; preds = %entry
  %3 = load double, ptr %U.addr, align 8, !tbaa !10
  store double %3, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %4 = load double, ptr %U.addr, align 8, !tbaa !10
  %call = call double @log(double noundef %4) #5
  %fneg = fneg double %call
  %5 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds double, ptr %5, i64 1
  %6 = load double, ptr %arrayidx, align 8, !tbaa !10
  %div = fdiv double %fneg, %6
  %call3 = call double @exp(double noundef %div) #5
  store double %call3, ptr %Y, align 8, !tbaa !10
  %7 = load double, ptr %Y, align 8, !tbaa !10
  %sub = fsub double %7, 1.000000e+00
  %call4 = call double @log(double noundef %sub) #5
  %fneg5 = fneg double %call4
  store double %fneg5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %8 = load double, ptr %U.addr, align 8, !tbaa !10
  %call7 = call double @log(double noundef %8) #5
  %fneg8 = fneg double %call7
  %9 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx9 = getelementptr inbounds double, ptr %9, i64 1
  %10 = load double, ptr %arrayidx9, align 8, !tbaa !10
  %div10 = fdiv double %fneg8, %10
  %call11 = call double @exp(double noundef %div10) #5
  store double %call11, ptr %Y, align 8, !tbaa !10
  %11 = load double, ptr %Y, align 8, !tbaa !10
  %sub12 = fsub double %11, 1.000000e+00
  %call13 = call double @log(double noundef %sub12) #5
  %fneg14 = fneg double %call13
  %12 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx15 = getelementptr inbounds double, ptr %12, i64 2
  %13 = load double, ptr %arrayidx15, align 8, !tbaa !10
  %div16 = fdiv double %fneg14, %13
  %call17 = call double @exp(double noundef %div16) #5
  store double %call17, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  %14 = load double, ptr %U.addr, align 8, !tbaa !10
  %call19 = call double @log(double noundef %14) #5
  %fneg20 = fneg double %call19
  %15 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx21 = getelementptr inbounds double, ptr %15, i64 1
  %16 = load double, ptr %arrayidx21, align 8, !tbaa !10
  %div22 = fdiv double %fneg20, %16
  %call23 = call double @exp(double noundef %div22) #5
  store double %call23, ptr %Y, align 8, !tbaa !10
  %17 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx24 = getelementptr inbounds double, ptr %17, i64 2
  %18 = load double, ptr %arrayidx24, align 8, !tbaa !10
  %19 = load double, ptr %Y, align 8, !tbaa !10
  %sub25 = fsub double %19, 1.000000e+00
  %call26 = call double @log(double noundef %sub25) #5
  %mul = fmul double %18, %call26
  %call27 = call double @exp(double noundef %mul) #5
  %add = fadd double %call27, 1.000000e+00
  store double %add, ptr %Y, align 8, !tbaa !10
  %20 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx28 = getelementptr inbounds double, ptr %20, i64 2
  %21 = load double, ptr %arrayidx28, align 8, !tbaa !10
  %22 = load double, ptr %Y, align 8, !tbaa !10
  %div29 = fdiv double %21, %22
  store double %div29, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb30:                                          ; preds = %entry
  %23 = load double, ptr %U.addr, align 8, !tbaa !10
  %call31 = call double @log(double noundef %23) #5
  %fneg32 = fneg double %call31
  %24 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx33 = getelementptr inbounds double, ptr %24, i64 1
  %25 = load double, ptr %arrayidx33, align 8, !tbaa !10
  %div34 = fdiv double %fneg32, %25
  %call35 = call double @exp(double noundef %div34) #5
  store double %call35, ptr %Y, align 8, !tbaa !10
  %26 = load double, ptr %Y, align 8, !tbaa !10
  %sub36 = fsub double %26, 1.000000e+00
  %27 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx37 = getelementptr inbounds double, ptr %27, i64 2
  %28 = load double, ptr %arrayidx37, align 8, !tbaa !10
  %div38 = fdiv double %sub36, %28
  %call39 = call double @log(double noundef %div38) #5
  %fneg40 = fneg double %call39
  %call41 = call double @atan(double noundef %fneg40) #5
  store double %call41, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb42:                                          ; preds = %entry
  %29 = load double, ptr %U.addr, align 8, !tbaa !10
  %call43 = call double @log(double noundef %29) #5
  %fneg44 = fneg double %call43
  %30 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx45 = getelementptr inbounds double, ptr %30, i64 1
  %31 = load double, ptr %arrayidx45, align 8, !tbaa !10
  %div46 = fdiv double %fneg44, %31
  %call47 = call double @exp(double noundef %div46) #5
  store double %call47, ptr %Y, align 8, !tbaa !10
  %32 = load double, ptr %Y, align 8, !tbaa !10
  %sub48 = fsub double %32, 1.000000e+00
  %33 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx49 = getelementptr inbounds double, ptr %33, i64 2
  %34 = load double, ptr %arrayidx49, align 8, !tbaa !10
  %div50 = fdiv double %sub48, %34
  %call51 = call double @log(double noundef %div50) #5
  %fneg52 = fneg double %call51
  %35 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx53 = getelementptr inbounds double, ptr %35, i64 1
  %36 = load double, ptr %arrayidx53, align 8, !tbaa !10
  %div54 = fdiv double %fneg52, %36
  store double %div54, ptr %Y, align 8, !tbaa !10
  %37 = load double, ptr %Y, align 8, !tbaa !10
  %38 = load double, ptr %Y, align 8, !tbaa !10
  %39 = load double, ptr %Y, align 8, !tbaa !10
  %40 = call double @llvm.fmuladd.f64(double %38, double %39, double 1.000000e+00)
  %call56 = call double @sqrt(double noundef %40) #5
  %add57 = fadd double %37, %call56
  %call58 = call double @log(double noundef %add57) #5
  store double %call58, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb59:                                          ; preds = %entry
  %41 = load double, ptr %U.addr, align 8, !tbaa !10
  %call60 = call double @log(double noundef %41) #5
  %42 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx61 = getelementptr inbounds double, ptr %42, i64 1
  %43 = load double, ptr %arrayidx61, align 8, !tbaa !10
  %div62 = fdiv double %call60, %43
  %call63 = call double @exp(double noundef %div62) #5
  store double %call63, ptr %Y, align 8, !tbaa !10
  %44 = load double, ptr %Y, align 8, !tbaa !10
  %mul64 = fmul double 2.000000e+00, %44
  %45 = load double, ptr %Y, align 8, !tbaa !10
  %46 = call double @llvm.fmuladd.f64(double -2.000000e+00, double %45, double 2.000000e+00)
  %div66 = fdiv double %mul64, %46
  %call67 = call double @log(double noundef %div66) #5
  %div68 = fdiv double %call67, 2.000000e+00
  store double %div68, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb69:                                          ; preds = %entry
  %47 = load double, ptr %U.addr, align 8, !tbaa !10
  %call70 = call double @log(double noundef %47) #5
  %48 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx71 = getelementptr inbounds double, ptr %48, i64 1
  %49 = load double, ptr %arrayidx71, align 8, !tbaa !10
  %div72 = fdiv double %call70, %49
  %call73 = call double @exp(double noundef %div72) #5
  store double %call73, ptr %Y, align 8, !tbaa !10
  %50 = load double, ptr %Y, align 8, !tbaa !10
  %mul74 = fmul double %50, 0x400921FB54442D18
  %div75 = fdiv double %mul74, 2.000000e+00
  %call76 = call double @tan(double noundef %div75) #5
  %call77 = call double @log(double noundef %call76) #5
  store double %call77, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb78:                                          ; preds = %entry
  %51 = load double, ptr %U.addr, align 8, !tbaa !10
  %mul79 = fmul double 2.000000e+00, %51
  %52 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx80 = getelementptr inbounds double, ptr %52, i64 2
  %53 = load double, ptr %arrayidx80, align 8, !tbaa !10
  %54 = load double, ptr %U.addr, align 8, !tbaa !10
  %sub81 = fsub double 1.000000e+00, %54
  %mul82 = fmul double %53, %sub81
  %div83 = fdiv double %mul79, %mul82
  %add84 = fadd double 1.000000e+00, %div83
  store double %add84, ptr %Y, align 8, !tbaa !10
  %55 = load double, ptr %Y, align 8, !tbaa !10
  %call85 = call double @log(double noundef %55) #5
  %56 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx86 = getelementptr inbounds double, ptr %56, i64 1
  %57 = load double, ptr %arrayidx86, align 8, !tbaa !10
  %div87 = fdiv double %call85, %57
  %call88 = call double @exp(double noundef %div87) #5
  %sub89 = fsub double %call88, 1.000000e+00
  %call90 = call double @log(double noundef %sub89) #5
  store double %call90, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb91:                                          ; preds = %entry
  %58 = load double, ptr %U.addr, align 8, !tbaa !10
  %call92 = call double @log(double noundef %58) #5
  %59 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx93 = getelementptr inbounds double, ptr %59, i64 1
  %60 = load double, ptr %arrayidx93, align 8, !tbaa !10
  %div94 = fdiv double %call92, %60
  %call95 = call double @exp(double noundef %div94) #5
  store double %call95, ptr %Y, align 8, !tbaa !10
  %61 = load double, ptr %Y, align 8, !tbaa !10
  %sub96 = fsub double 1.000000e+00, %61
  %call97 = call double @log(double noundef %sub96) #5
  %fneg98 = fneg double %call97
  %call99 = call double @sqrt(double noundef %fneg98) #5
  store double %call99, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb100:                                         ; preds = %entry
  %62 = load double, ptr %U.addr, align 8, !tbaa !10
  %sub101 = fsub double 1.000000e+00, %62
  %call102 = call double @log(double noundef %sub101) #5
  %fneg103 = fneg double %call102
  %63 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx104 = getelementptr inbounds double, ptr %63, i64 1
  %64 = load double, ptr %arrayidx104, align 8, !tbaa !10
  %div105 = fdiv double %fneg103, %64
  %call106 = call double @exp(double noundef %div105) #5
  store double %call106, ptr %Y, align 8, !tbaa !10
  %65 = load double, ptr %Y, align 8, !tbaa !10
  %sub107 = fsub double %65, 1.000000e+00
  %call108 = call double @log(double noundef %sub107) #5
  %66 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx109 = getelementptr inbounds double, ptr %66, i64 2
  %67 = load double, ptr %arrayidx109, align 8, !tbaa !10
  %div110 = fdiv double %call108, %67
  %call111 = call double @exp(double noundef %div110) #5
  store double %call111, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb112:                                         ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb112
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void @_unur_error_x(ptr noundef @distr_name, ptr noundef @.str, i32 noundef 353, ptr noundef @.str.1, i32 noundef 240, ptr noundef @.str.4)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store double 0x7FF0000000000000, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb100, %sw.bb91, %sw.bb78, %sw.bb69, %sw.bb59, %sw.bb42, %sw.bb30, %sw.bb18, %sw.bb6, %sw.bb2, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %Y) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %params) #5
  %68 = load double, ptr %retval, align 8
  ret double %68
}

; Function Attrs: nounwind uwtable
define internal i32 @_unur_set_params_burr(ptr noundef %distr, ptr noundef %params, i32 noundef %n_params) #0 {
entry:
  %retval = alloca i32, align 4
  %distr.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %n_params.addr = alloca i32, align 4
  store ptr %distr, ptr %distr.addr, align 8, !tbaa !4
  store ptr %params, ptr %params.addr, align 8, !tbaa !4
  store i32 %n_params, ptr %n_params.addr, align 4, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %id = getelementptr inbounds %struct.unur_distr, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %id, align 4, !tbaa !12
  switch i32 %1, label %sw.default [
    i32 45057, label %sw.bb
    i32 45313, label %sw.bb3
    i32 46593, label %sw.bb3
    i32 46849, label %sw.bb3
    i32 47361, label %sw.bb3
    i32 47617, label %sw.bb3
    i32 45569, label %sw.bb14
    i32 45825, label %sw.bb14
    i32 46081, label %sw.bb14
    i32 46337, label %sw.bb14
    i32 47105, label %sw.bb14
    i32 47873, label %sw.bb14
  ]

sw.bb:                                            ; preds = %do.end
  %2 = load i32, ptr %n_params.addr, align 4, !tbaa !8
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %do.body1

do.body1:                                         ; preds = %if.then
  call void @_unur_error_x(ptr noundef @distr_name, ptr noundef @.str, i32 noundef 370, ptr noundef @.str.5, i32 noundef 19, ptr noundef @.str.6)
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  store i32 1, ptr %n_params.addr, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %do.end2, %sw.bb
  br label %sw.epilog

sw.bb3:                                           ; preds = %do.end, %do.end, %do.end, %do.end, %do.end
  %3 = load i32, ptr %n_params.addr, align 4, !tbaa !8
  %cmp4 = icmp slt i32 %3, 2
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %sw.bb3
  br label %do.body6

do.body6:                                         ; preds = %if.then5
  call void @_unur_error_x(ptr noundef @distr_name, ptr noundef @.str, i32 noundef 381, ptr noundef @.str.1, i32 noundef 19, ptr noundef @.str.2)
  br label %do.end7

do.end7:                                          ; preds = %do.body6
  store i32 19, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %sw.bb3
  %4 = load i32, ptr %n_params.addr, align 4, !tbaa !8
  %cmp9 = icmp sgt i32 %4, 2
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end8
  br label %do.body11

do.body11:                                        ; preds = %if.then10
  call void @_unur_error_x(ptr noundef @distr_name, ptr noundef @.str, i32 noundef 385, ptr noundef @.str.5, i32 noundef 19, ptr noundef @.str.6)
  br label %do.end12

do.end12:                                         ; preds = %do.body11
  store i32 2, ptr %n_params.addr, align 4, !tbaa !8
  br label %if.end13

if.end13:                                         ; preds = %do.end12, %if.end8
  br label %sw.epilog

sw.bb14:                                          ; preds = %do.end, %do.end, %do.end, %do.end, %do.end, %do.end
  %5 = load i32, ptr %n_params.addr, align 4, !tbaa !8
  %cmp15 = icmp slt i32 %5, 3
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %sw.bb14
  br label %do.body17

do.body17:                                        ; preds = %if.then16
  call void @_unur_error_x(ptr noundef @distr_name, ptr noundef @.str, i32 noundef 397, ptr noundef @.str.1, i32 noundef 19, ptr noundef @.str.2)
  br label %do.end18

do.end18:                                         ; preds = %do.body17
  store i32 19, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %sw.bb14
  %6 = load i32, ptr %n_params.addr, align 4, !tbaa !8
  %cmp20 = icmp sgt i32 %6, 3
  br i1 %cmp20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end19
  br label %do.body22

do.body22:                                        ; preds = %if.then21
  call void @_unur_error_x(ptr noundef @distr_name, ptr noundef @.str, i32 noundef 401, ptr noundef @.str.5, i32 noundef 19, ptr noundef @.str.6)
  br label %do.end23

do.end23:                                         ; preds = %do.body22
  store i32 3, ptr %n_params.addr, align 4, !tbaa !8
  br label %if.end24

if.end24:                                         ; preds = %do.end23, %if.end19
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %do.body25

do.body25:                                        ; preds = %sw.default
  call void @_unur_error_x(ptr noundef @distr_name, ptr noundef @.str, i32 noundef 407, ptr noundef @.str.1, i32 noundef 20, ptr noundef @.str.7)
  br label %do.end26

do.end26:                                         ; preds = %do.body25
  store i32 19, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end24, %if.end13, %if.end
  %7 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds double, ptr %7, i64 1
  %8 = load double, ptr %arrayidx, align 8, !tbaa !10
  %cmp27 = fcmp ole double %8, 0.000000e+00
  br i1 %cmp27, label %if.then31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %9 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %arrayidx28 = getelementptr inbounds double, ptr %9, i64 2
  %10 = load double, ptr %arrayidx28, align 8, !tbaa !10
  %cmp29 = fcmp ole double %10, 0.000000e+00
  br i1 %cmp29, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %lor.lhs.false
  %11 = load i32, ptr %n_params.addr, align 4, !tbaa !8
  %cmp30 = icmp eq i32 %11, 3
  br i1 %cmp30, label %if.then31, label %if.end34

if.then31:                                        ; preds = %land.lhs.true, %sw.epilog
  br label %do.body32

do.body32:                                        ; preds = %if.then31
  call void @_unur_error_x(ptr noundef @distr_name, ptr noundef @.str, i32 noundef 413, ptr noundef @.str.1, i32 noundef 20, ptr noundef @.str.8)
  br label %do.end33

do.end33:                                         ; preds = %do.body32
  store i32 20, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %12 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %arrayidx35 = getelementptr inbounds double, ptr %12, i64 0
  %13 = load double, ptr %arrayidx35, align 8, !tbaa !10
  %14 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.unur_distr, ptr %14, i32 0, i32 0
  %params36 = getelementptr inbounds %struct.unur_distr_cont, ptr %data, i32 0, i32 9
  %arrayidx37 = getelementptr inbounds [5 x double], ptr %params36, i64 0, i64 0
  store double %13, ptr %arrayidx37, align 8, !tbaa !15
  %15 = load i32, ptr %n_params.addr, align 4, !tbaa !8
  switch i32 %15, label %sw.default48 [
    i32 3, label %sw.bb38
    i32 2, label %sw.bb43
  ]

sw.bb38:                                          ; preds = %if.end34
  %16 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %arrayidx39 = getelementptr inbounds double, ptr %16, i64 2
  %17 = load double, ptr %arrayidx39, align 8, !tbaa !10
  %18 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data40 = getelementptr inbounds %struct.unur_distr, ptr %18, i32 0, i32 0
  %params41 = getelementptr inbounds %struct.unur_distr_cont, ptr %data40, i32 0, i32 9
  %arrayidx42 = getelementptr inbounds [5 x double], ptr %params41, i64 0, i64 2
  store double %17, ptr %arrayidx42, align 8, !tbaa !15
  br label %sw.bb43

sw.bb43:                                          ; preds = %if.end34, %sw.bb38
  %19 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %arrayidx44 = getelementptr inbounds double, ptr %19, i64 1
  %20 = load double, ptr %arrayidx44, align 8, !tbaa !10
  %21 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data45 = getelementptr inbounds %struct.unur_distr, ptr %21, i32 0, i32 0
  %params46 = getelementptr inbounds %struct.unur_distr_cont, ptr %data45, i32 0, i32 9
  %arrayidx47 = getelementptr inbounds [5 x double], ptr %params46, i64 0, i64 1
  store double %20, ptr %arrayidx47, align 8, !tbaa !15
  br label %sw.default48

sw.default48:                                     ; preds = %if.end34, %sw.bb43
  br label %sw.epilog49

sw.epilog49:                                      ; preds = %sw.default48
  %22 = load i32, ptr %n_params.addr, align 4, !tbaa !8
  %23 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data50 = getelementptr inbounds %struct.unur_distr, ptr %23, i32 0, i32 0
  %n_params51 = getelementptr inbounds %struct.unur_distr_cont, ptr %data50, i32 0, i32 10
  store i32 %22, ptr %n_params51, align 8, !tbaa !15
  %24 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %set = getelementptr inbounds %struct.unur_distr, ptr %24, i32 0, i32 6
  %25 = load i32, ptr %set, align 4, !tbaa !16
  %and = and i32 %25, 262144
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then52, label %if.end103

if.then52:                                        ; preds = %sw.epilog49
  %26 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data53 = getelementptr inbounds %struct.unur_distr, ptr %26, i32 0, i32 0
  %domain = getelementptr inbounds %struct.unur_distr_cont, ptr %data53, i32 0, i32 16
  %arrayidx54 = getelementptr inbounds [2 x double], ptr %domain, i64 0, i64 0
  store double 0xFFF0000000000000, ptr %arrayidx54, align 8, !tbaa !15
  %27 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data55 = getelementptr inbounds %struct.unur_distr, ptr %27, i32 0, i32 0
  %domain56 = getelementptr inbounds %struct.unur_distr_cont, ptr %data55, i32 0, i32 16
  %arrayidx57 = getelementptr inbounds [2 x double], ptr %domain56, i64 0, i64 1
  store double 0x7FF0000000000000, ptr %arrayidx57, align 8, !tbaa !15
  %28 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %id58 = getelementptr inbounds %struct.unur_distr, ptr %28, i32 0, i32 2
  %29 = load i32, ptr %id58, align 4, !tbaa !12
  switch i32 %29, label %sw.epilog102 [
    i32 45057, label %sw.bb59
    i32 45569, label %sw.bb66
    i32 45825, label %sw.bb70
    i32 46081, label %sw.bb80
    i32 47361, label %sw.bb87
    i32 47617, label %sw.bb91
    i32 47873, label %sw.bb98
  ]

sw.bb59:                                          ; preds = %if.then52
  %30 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data60 = getelementptr inbounds %struct.unur_distr, ptr %30, i32 0, i32 0
  %domain61 = getelementptr inbounds %struct.unur_distr_cont, ptr %data60, i32 0, i32 16
  %arrayidx62 = getelementptr inbounds [2 x double], ptr %domain61, i64 0, i64 0
  store double 0.000000e+00, ptr %arrayidx62, align 8, !tbaa !15
  %31 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data63 = getelementptr inbounds %struct.unur_distr, ptr %31, i32 0, i32 0
  %domain64 = getelementptr inbounds %struct.unur_distr_cont, ptr %data63, i32 0, i32 16
  %arrayidx65 = getelementptr inbounds [2 x double], ptr %domain64, i64 0, i64 1
  store double 1.000000e+00, ptr %arrayidx65, align 8, !tbaa !15
  br label %sw.epilog102

sw.bb66:                                          ; preds = %if.then52
  %32 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data67 = getelementptr inbounds %struct.unur_distr, ptr %32, i32 0, i32 0
  %domain68 = getelementptr inbounds %struct.unur_distr_cont, ptr %data67, i32 0, i32 16
  %arrayidx69 = getelementptr inbounds [2 x double], ptr %domain68, i64 0, i64 0
  store double 0.000000e+00, ptr %arrayidx69, align 8, !tbaa !15
  br label %sw.epilog102

sw.bb70:                                          ; preds = %if.then52
  %33 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data71 = getelementptr inbounds %struct.unur_distr, ptr %33, i32 0, i32 0
  %domain72 = getelementptr inbounds %struct.unur_distr_cont, ptr %data71, i32 0, i32 16
  %arrayidx73 = getelementptr inbounds [2 x double], ptr %domain72, i64 0, i64 0
  store double 0.000000e+00, ptr %arrayidx73, align 8, !tbaa !15
  %34 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data74 = getelementptr inbounds %struct.unur_distr, ptr %34, i32 0, i32 0
  %params75 = getelementptr inbounds %struct.unur_distr_cont, ptr %data74, i32 0, i32 9
  %arrayidx76 = getelementptr inbounds [5 x double], ptr %params75, i64 0, i64 2
  %35 = load double, ptr %arrayidx76, align 8, !tbaa !15
  %36 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data77 = getelementptr inbounds %struct.unur_distr, ptr %36, i32 0, i32 0
  %domain78 = getelementptr inbounds %struct.unur_distr_cont, ptr %data77, i32 0, i32 16
  %arrayidx79 = getelementptr inbounds [2 x double], ptr %domain78, i64 0, i64 1
  store double %35, ptr %arrayidx79, align 8, !tbaa !15
  br label %sw.epilog102

sw.bb80:                                          ; preds = %if.then52
  %37 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data81 = getelementptr inbounds %struct.unur_distr, ptr %37, i32 0, i32 0
  %domain82 = getelementptr inbounds %struct.unur_distr_cont, ptr %data81, i32 0, i32 16
  %arrayidx83 = getelementptr inbounds [2 x double], ptr %domain82, i64 0, i64 0
  store double 0xBFF921FB54442D18, ptr %arrayidx83, align 8, !tbaa !15
  %38 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data84 = getelementptr inbounds %struct.unur_distr, ptr %38, i32 0, i32 0
  %domain85 = getelementptr inbounds %struct.unur_distr_cont, ptr %data84, i32 0, i32 16
  %arrayidx86 = getelementptr inbounds [2 x double], ptr %domain85, i64 0, i64 1
  store double 0x3FF921FB54442D18, ptr %arrayidx86, align 8, !tbaa !15
  br label %sw.epilog102

sw.bb87:                                          ; preds = %if.then52
  %39 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data88 = getelementptr inbounds %struct.unur_distr, ptr %39, i32 0, i32 0
  %domain89 = getelementptr inbounds %struct.unur_distr_cont, ptr %data88, i32 0, i32 16
  %arrayidx90 = getelementptr inbounds [2 x double], ptr %domain89, i64 0, i64 0
  store double 0.000000e+00, ptr %arrayidx90, align 8, !tbaa !15
  br label %sw.epilog102

sw.bb91:                                          ; preds = %if.then52
  %40 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data92 = getelementptr inbounds %struct.unur_distr, ptr %40, i32 0, i32 0
  %domain93 = getelementptr inbounds %struct.unur_distr_cont, ptr %data92, i32 0, i32 16
  %arrayidx94 = getelementptr inbounds [2 x double], ptr %domain93, i64 0, i64 0
  store double 0.000000e+00, ptr %arrayidx94, align 8, !tbaa !15
  %41 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data95 = getelementptr inbounds %struct.unur_distr, ptr %41, i32 0, i32 0
  %domain96 = getelementptr inbounds %struct.unur_distr_cont, ptr %data95, i32 0, i32 16
  %arrayidx97 = getelementptr inbounds [2 x double], ptr %domain96, i64 0, i64 1
  store double 1.000000e+00, ptr %arrayidx97, align 8, !tbaa !15
  br label %sw.epilog102

sw.bb98:                                          ; preds = %if.then52
  %42 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data99 = getelementptr inbounds %struct.unur_distr, ptr %42, i32 0, i32 0
  %domain100 = getelementptr inbounds %struct.unur_distr_cont, ptr %data99, i32 0, i32 16
  %arrayidx101 = getelementptr inbounds [2 x double], ptr %domain100, i64 0, i64 0
  store double 0.000000e+00, ptr %arrayidx101, align 8, !tbaa !15
  br label %sw.epilog102

sw.epilog102:                                     ; preds = %if.then52, %sw.bb98, %sw.bb91, %sw.bb87, %sw.bb80, %sw.bb70, %sw.bb66, %sw.bb59
  br label %if.end103

if.end103:                                        ; preds = %sw.epilog102, %sw.epilog49
  %43 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %id104 = getelementptr inbounds %struct.unur_distr, ptr %43, i32 0, i32 2
  %44 = load i32, ptr %id104, align 4, !tbaa !12
  %cmp105 = icmp ne i32 %44, 47617
  %45 = zext i1 %cmp105 to i64
  %cond = select i1 %cmp105, ptr @_unur_invcdf_burr, ptr null
  %46 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data106 = getelementptr inbounds %struct.unur_distr, ptr %46, i32 0, i32 0
  %invcdf = getelementptr inbounds %struct.unur_distr_cont, ptr %data106, i32 0, i32 3
  store ptr %cond, ptr %invcdf, align 8, !tbaa !15
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end103, %do.end33, %do.end26, %do.end18, %do.end7
  %47 = load i32, ptr %retval, align 4
  ret i32 %47
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #3

; Function Attrs: nounwind
declare double @exp(double noundef) #3

; Function Attrs: nounwind
declare double @tan(double noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nounwind
declare double @sinh(double noundef) #3

; Function Attrs: nounwind
declare double @tanh(double noundef) #3

; Function Attrs: nounwind
declare double @atan(double noundef) #3

; Function Attrs: nounwind
declare double @sin(double noundef) #3

; Function Attrs: nounwind
declare double @log(double noundef) #3

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = !{!13, !9, i64 332}
!13 = !{!"unur_distr", !6, i64 0, !9, i64 328, !9, i64 332, !5, i64 336, !5, i64 344, !9, i64 352, !9, i64 356, !5, i64 360, !5, i64 368, !5, i64 376, !5, i64 384}
!14 = !{!13, !5, i64 336}
!15 = !{!6, !6, i64 0}
!16 = !{!13, !9, i64 356}
