; ModuleID = 'samples/405.bc'
source_filename = "../scipy/_lib/unuran/unuran/src/tests/quantiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unur_gen = type { ptr, %union.anon, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i64, i32, ptr, ptr, ptr, ptr, ptr }
%union.anon = type { ptr }

@test_name = internal global [10 x i8] c"Quantiles\00", align 1
@.str = private unnamed_addr constant [50 x i8] c"../scipy/_lib/unuran/unuran/src/tests/quantiles.c\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"dont know how to compute quartiles for distribution\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"\0AQuartiles:\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"\09min = \09%6.5g\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"\0925%% =\09%6.5g\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"\0950%% =\09%6.5g\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"\0975%% =\09%6.5g\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"\09max = \09%6.5g\0A\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @unur_test_quartiles(ptr noundef %gen, ptr noundef %q0, ptr noundef %q1, ptr noundef %q2, ptr noundef %q3, ptr noundef %q4, i32 noundef %samplesize, i32 noundef %verbosity, ptr noundef %out) #0 {
entry:
  %retval = alloca i32, align 4
  %gen.addr = alloca ptr, align 8
  %q0.addr = alloca ptr, align 8
  %q1.addr = alloca ptr, align 8
  %q2.addr = alloca ptr, align 8
  %q3.addr = alloca ptr, align 8
  %q4.addr = alloca ptr, align 8
  %samplesize.addr = alloca i32, align 4
  %verbosity.addr = alloca i32, align 4
  %out.addr = alloca ptr, align 8
  %x = alloca double, align 8
  %n = alloca i32, align 4
  %p = alloca double, align 8
  %h = alloca [5 x double], align 16
  %pos = alloca [5 x i32], align 16
  %dpos = alloca [5 x double], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sgnd = alloca i32, align 4
  %tmp = alloca double, align 8
  %d = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gen, ptr %gen.addr, align 8, !tbaa !4
  store ptr %q0, ptr %q0.addr, align 8, !tbaa !4
  store ptr %q1, ptr %q1.addr, align 8, !tbaa !4
  store ptr %q2, ptr %q2.addr, align 8, !tbaa !4
  store ptr %q3, ptr %q3.addr, align 8, !tbaa !4
  store ptr %q4, ptr %q4.addr, align 8, !tbaa !4
  store i32 %samplesize, ptr %samplesize.addr, align 4, !tbaa !8
  store i32 %verbosity, ptr %verbosity.addr, align 4, !tbaa !8
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #4
  store double 0.000000e+00, ptr %x, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  store double 5.000000e-01, ptr %p, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 40, ptr %h) #4
  call void @llvm.lifetime.start.p0(i64 20, ptr %pos) #4
  call void @llvm.lifetime.start.p0(i64 40, ptr %dpos) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %sgnd) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #4
  %0 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @_unur_error_x(ptr noundef @test_name, ptr noundef @.str, i32 noundef 77, ptr noundef @.str.1, i32 noundef 100, ptr noundef @.str.2)
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
  %2 = load i32, ptr %method, align 4, !tbaa !12
  %and = and i32 %2, -16777216
  %cmp = icmp eq i32 %and, 16777216
  br i1 %cmp, label %if.end8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %method1 = getelementptr inbounds %struct.unur_gen, ptr %3, i32 0, i32 6
  %4 = load i32, ptr %method1, align 4, !tbaa !12
  %and2 = and i32 %4, -16777216
  %cmp3 = icmp eq i32 %and2, 33554432
  br i1 %cmp3, label %if.end8, label %if.then4

if.then4:                                         ; preds = %lor.lhs.false
  br label %do.body5

do.body5:                                         ; preds = %if.then4
  call void @_unur_error_x(ptr noundef @test_name, ptr noundef @.str, i32 noundef 82, ptr noundef @.str.1, i32 noundef 102, ptr noundef @.str.3)
  br label %do.cond6

do.cond6:                                         ; preds = %do.body5
  br label %do.end7

do.end7:                                          ; preds = %do.cond6
  store i32 102, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false, %if.end
  %5 = load i32, ptr %samplesize.addr, align 4, !tbaa !8
  %cmp9 = icmp slt i32 %5, 10
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  store i32 10, ptr %samplesize.addr, align 4, !tbaa !8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8
  store i32 0, ptr %n, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc256, %if.end11
  %6 = load i32, ptr %n, align 4, !tbaa !8
  %7 = load i32, ptr %samplesize.addr, align 4, !tbaa !8
  %cmp12 = icmp slt i32 %6, %7
  br i1 %cmp12, label %for.body, label %for.end258

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %method13 = getelementptr inbounds %struct.unur_gen, ptr %8, i32 0, i32 6
  %9 = load i32, ptr %method13, align 4, !tbaa !12
  %and14 = and i32 %9, -16777216
  switch i32 %and14, label %sw.epilog [
    i32 16777216, label %sw.bb
    i32 33554432, label %sw.bb15
  ]

sw.bb:                                            ; preds = %for.body
  %10 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %sample = getelementptr inbounds %struct.unur_gen, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %sample, align 8, !tbaa !15
  %12 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %call = call i32 %11(ptr noundef %12)
  %conv = sitofp i32 %call to double
  store double %conv, ptr %x, align 8, !tbaa !10
  br label %sw.epilog

sw.bb15:                                          ; preds = %for.body
  %13 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %sample16 = getelementptr inbounds %struct.unur_gen, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %sample16, align 8, !tbaa !15
  %15 = load ptr, ptr %gen.addr, align 8, !tbaa !4
  %call17 = call double %14(ptr noundef %15)
  store double %call17, ptr %x, align 8, !tbaa !10
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb15, %sw.bb
  %16 = load i32, ptr %n, align 4, !tbaa !8
  %cmp18 = icmp eq i32 %16, 0
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %sw.epilog
  %17 = load double, ptr %x, align 8, !tbaa !10
  %18 = load i32, ptr %n, align 4, !tbaa !8
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 %idxprom
  store double %17, ptr %arrayidx, align 8, !tbaa !10
  %19 = load i32, ptr %n, align 4, !tbaa !8
  %20 = load i32, ptr %n, align 4, !tbaa !8
  %idxprom21 = sext i32 %20 to i64
  %arrayidx22 = getelementptr inbounds [5 x i32], ptr %pos, i64 0, i64 %idxprom21
  store i32 %19, ptr %arrayidx22, align 4, !tbaa !8
  %arrayidx23 = getelementptr inbounds [5 x double], ptr %dpos, i64 0, i64 0
  store double 0.000000e+00, ptr %arrayidx23, align 16, !tbaa !10
  %21 = load double, ptr %p, align 8, !tbaa !10
  %div = fdiv double %21, 2.000000e+00
  %arrayidx24 = getelementptr inbounds [5 x double], ptr %dpos, i64 0, i64 1
  store double %div, ptr %arrayidx24, align 8, !tbaa !10
  %22 = load double, ptr %p, align 8, !tbaa !10
  %mul = fmul double 4.000000e+00, %22
  %arrayidx25 = getelementptr inbounds [5 x double], ptr %dpos, i64 0, i64 2
  store double %mul, ptr %arrayidx25, align 16, !tbaa !10
  %23 = load double, ptr %p, align 8, !tbaa !10
  %24 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %23, double 2.000000e+00)
  %arrayidx27 = getelementptr inbounds [5 x double], ptr %dpos, i64 0, i64 3
  store double %24, ptr %arrayidx27, align 8, !tbaa !10
  %arrayidx28 = getelementptr inbounds [5 x double], ptr %dpos, i64 0, i64 4
  store double 4.000000e+00, ptr %arrayidx28, align 16, !tbaa !10
  br label %if.end255

if.else:                                          ; preds = %sw.epilog
  %25 = load i32, ptr %n, align 4, !tbaa !8
  %cmp29 = icmp slt i32 %25, 4
  br i1 %cmp29, label %if.then31, label %if.else36

if.then31:                                        ; preds = %if.else
  %26 = load double, ptr %x, align 8, !tbaa !10
  %27 = load i32, ptr %n, align 4, !tbaa !8
  %idxprom32 = sext i32 %27 to i64
  %arrayidx33 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 %idxprom32
  store double %26, ptr %arrayidx33, align 8, !tbaa !10
  %28 = load i32, ptr %n, align 4, !tbaa !8
  %29 = load i32, ptr %n, align 4, !tbaa !8
  %idxprom34 = sext i32 %29 to i64
  %arrayidx35 = getelementptr inbounds [5 x i32], ptr %pos, i64 0, i64 %idxprom34
  store i32 %28, ptr %arrayidx35, align 4, !tbaa !8
  br label %if.end254

if.else36:                                        ; preds = %if.else
  %30 = load i32, ptr %n, align 4, !tbaa !8
  %cmp37 = icmp eq i32 %30, 4
  br i1 %cmp37, label %if.then39, label %if.else73

if.then39:                                        ; preds = %if.else36
  %31 = load double, ptr %x, align 8, !tbaa !10
  %32 = load i32, ptr %n, align 4, !tbaa !8
  %idxprom40 = sext i32 %32 to i64
  %arrayidx41 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 %idxprom40
  store double %31, ptr %arrayidx41, align 8, !tbaa !10
  %33 = load i32, ptr %n, align 4, !tbaa !8
  %34 = load i32, ptr %n, align 4, !tbaa !8
  %idxprom42 = sext i32 %34 to i64
  %arrayidx43 = getelementptr inbounds [5 x i32], ptr %pos, i64 0, i64 %idxprom42
  store i32 %33, ptr %arrayidx43, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc70, %if.then39
  %35 = load i32, ptr %i, align 4, !tbaa !8
  %cmp45 = icmp slt i32 %35, 4
  br i1 %cmp45, label %for.body47, label %for.end72

for.body47:                                       ; preds = %for.cond44
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc, %for.body47
  %36 = load i32, ptr %j, align 4, !tbaa !8
  %37 = load i32, ptr %i, align 4, !tbaa !8
  %sub = sub nsw i32 4, %37
  %cmp49 = icmp slt i32 %36, %sub
  br i1 %cmp49, label %for.body51, label %for.end

for.body51:                                       ; preds = %for.cond48
  %38 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom52 = sext i32 %38 to i64
  %arrayidx53 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 %idxprom52
  %39 = load double, ptr %arrayidx53, align 8, !tbaa !10
  %40 = load i32, ptr %j, align 4, !tbaa !8
  %add = add nsw i32 %40, 1
  %idxprom54 = sext i32 %add to i64
  %arrayidx55 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 %idxprom54
  %41 = load double, ptr %arrayidx55, align 8, !tbaa !10
  %cmp56 = fcmp ogt double %39, %41
  br i1 %cmp56, label %if.then58, label %if.end69

if.then58:                                        ; preds = %for.body51
  %42 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom59 = sext i32 %42 to i64
  %arrayidx60 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 %idxprom59
  %43 = load double, ptr %arrayidx60, align 8, !tbaa !10
  store double %43, ptr %tmp, align 8, !tbaa !10
  %44 = load i32, ptr %j, align 4, !tbaa !8
  %add61 = add nsw i32 %44, 1
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 %idxprom62
  %45 = load double, ptr %arrayidx63, align 8, !tbaa !10
  %46 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom64 = sext i32 %46 to i64
  %arrayidx65 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 %idxprom64
  store double %45, ptr %arrayidx65, align 8, !tbaa !10
  %47 = load double, ptr %tmp, align 8, !tbaa !10
  %48 = load i32, ptr %j, align 4, !tbaa !8
  %add66 = add nsw i32 %48, 1
  %idxprom67 = sext i32 %add66 to i64
  %arrayidx68 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 %idxprom67
  store double %47, ptr %arrayidx68, align 8, !tbaa !10
  br label %if.end69

if.end69:                                         ; preds = %if.then58, %for.body51
  br label %for.inc

for.inc:                                          ; preds = %if.end69
  %49 = load i32, ptr %j, align 4, !tbaa !8
  %inc = add nsw i32 %49, 1
  store i32 %inc, ptr %j, align 4, !tbaa !8
  br label %for.cond48

for.end:                                          ; preds = %for.cond48
  br label %for.inc70

for.inc70:                                        ; preds = %for.end
  %50 = load i32, ptr %i, align 4, !tbaa !8
  %inc71 = add nsw i32 %50, 1
  store i32 %inc71, ptr %i, align 4, !tbaa !8
  br label %for.cond44

for.end72:                                        ; preds = %for.cond44
  br label %if.end253

if.else73:                                        ; preds = %if.else36
  %51 = load double, ptr %x, align 8, !tbaa !10
  %arrayidx74 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 0
  %52 = load double, ptr %arrayidx74, align 16, !tbaa !10
  %cmp75 = fcmp olt double %51, %52
  br i1 %cmp75, label %if.then77, label %if.end79

if.then77:                                        ; preds = %if.else73
  %53 = load double, ptr %x, align 8, !tbaa !10
  %arrayidx78 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 0
  store double %53, ptr %arrayidx78, align 16, !tbaa !10
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.else73
  %54 = load double, ptr %x, align 8, !tbaa !10
  %arrayidx80 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 4
  %55 = load double, ptr %arrayidx80, align 16, !tbaa !10
  %cmp81 = fcmp ogt double %54, %55
  br i1 %cmp81, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.end79
  %56 = load double, ptr %x, align 8, !tbaa !10
  %arrayidx84 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 4
  store double %56, ptr %arrayidx84, align 16, !tbaa !10
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end79
  store i32 1, ptr %i, align 4, !tbaa !8
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc99, %if.end85
  %57 = load i32, ptr %i, align 4, !tbaa !8
  %cmp87 = icmp slt i32 %57, 4
  br i1 %cmp87, label %for.body89, label %for.end101

for.body89:                                       ; preds = %for.cond86
  %58 = load double, ptr %x, align 8, !tbaa !10
  %59 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom90 = sext i32 %59 to i64
  %arrayidx91 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 %idxprom90
  %60 = load double, ptr %arrayidx91, align 8, !tbaa !10
  %cmp92 = fcmp olt double %58, %60
  br i1 %cmp92, label %if.then94, label %if.end98

if.then94:                                        ; preds = %for.body89
  %61 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom95 = sext i32 %61 to i64
  %arrayidx96 = getelementptr inbounds [5 x i32], ptr %pos, i64 0, i64 %idxprom95
  %62 = load i32, ptr %arrayidx96, align 4, !tbaa !8
  %inc97 = add nsw i32 %62, 1
  store i32 %inc97, ptr %arrayidx96, align 4, !tbaa !8
  br label %if.end98

if.end98:                                         ; preds = %if.then94, %for.body89
  br label %for.inc99

for.inc99:                                        ; preds = %if.end98
  %63 = load i32, ptr %i, align 4, !tbaa !8
  %inc100 = add nsw i32 %63, 1
  store i32 %inc100, ptr %i, align 4, !tbaa !8
  br label %for.cond86

for.end101:                                       ; preds = %for.cond86
  %arrayidx102 = getelementptr inbounds [5 x i32], ptr %pos, i64 0, i64 4
  %64 = load i32, ptr %arrayidx102, align 16, !tbaa !8
  %inc103 = add nsw i32 %64, 1
  store i32 %inc103, ptr %arrayidx102, align 16, !tbaa !8
  %65 = load i32, ptr %n, align 4, !tbaa !8
  %conv104 = sitofp i32 %65 to double
  %66 = load double, ptr %p, align 8, !tbaa !10
  %mul105 = fmul double %conv104, %66
  %div106 = fdiv double %mul105, 2.000000e+00
  %arrayidx107 = getelementptr inbounds [5 x double], ptr %dpos, i64 0, i64 1
  store double %div106, ptr %arrayidx107, align 8, !tbaa !10
  %67 = load i32, ptr %n, align 4, !tbaa !8
  %conv108 = sitofp i32 %67 to double
  %68 = load double, ptr %p, align 8, !tbaa !10
  %mul109 = fmul double %conv108, %68
  %arrayidx110 = getelementptr inbounds [5 x double], ptr %dpos, i64 0, i64 2
  store double %mul109, ptr %arrayidx110, align 16, !tbaa !10
  %69 = load i32, ptr %n, align 4, !tbaa !8
  %conv111 = sitofp i32 %69 to double
  %70 = load double, ptr %p, align 8, !tbaa !10
  %add112 = fadd double 1.000000e+00, %70
  %mul113 = fmul double %conv111, %add112
  %div114 = fdiv double %mul113, 2.000000e+00
  %arrayidx115 = getelementptr inbounds [5 x double], ptr %dpos, i64 0, i64 3
  store double %div114, ptr %arrayidx115, align 8, !tbaa !10
  %71 = load i32, ptr %n, align 4, !tbaa !8
  %conv116 = sitofp i32 %71 to double
  %arrayidx117 = getelementptr inbounds [5 x double], ptr %dpos, i64 0, i64 4
  store double %conv116, ptr %arrayidx117, align 16, !tbaa !10
  store i32 1, ptr %i, align 4, !tbaa !8
  br label %for.cond118

for.cond118:                                      ; preds = %for.inc250, %for.end101
  %72 = load i32, ptr %i, align 4, !tbaa !8
  %cmp119 = icmp slt i32 %72, 4
  br i1 %cmp119, label %for.body121, label %for.end252

for.body121:                                      ; preds = %for.cond118
  %73 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom122 = sext i32 %73 to i64
  %arrayidx123 = getelementptr inbounds [5 x double], ptr %dpos, i64 0, i64 %idxprom122
  %74 = load double, ptr %arrayidx123, align 8, !tbaa !10
  %75 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom124 = sext i32 %75 to i64
  %arrayidx125 = getelementptr inbounds [5 x i32], ptr %pos, i64 0, i64 %idxprom124
  %76 = load i32, ptr %arrayidx125, align 4, !tbaa !8
  %conv126 = sitofp i32 %76 to double
  %sub127 = fsub double %74, %conv126
  store double %sub127, ptr %d, align 8, !tbaa !10
  %77 = load double, ptr %d, align 8, !tbaa !10
  %cmp128 = fcmp oge double %77, 1.000000e+00
  br i1 %cmp128, label %land.lhs.true, label %lor.lhs.false138

land.lhs.true:                                    ; preds = %for.body121
  %78 = load i32, ptr %i, align 4, !tbaa !8
  %add130 = add nsw i32 %78, 1
  %idxprom131 = sext i32 %add130 to i64
  %arrayidx132 = getelementptr inbounds [5 x i32], ptr %pos, i64 0, i64 %idxprom131
  %79 = load i32, ptr %arrayidx132, align 4, !tbaa !8
  %80 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom133 = sext i32 %80 to i64
  %arrayidx134 = getelementptr inbounds [5 x i32], ptr %pos, i64 0, i64 %idxprom133
  %81 = load i32, ptr %arrayidx134, align 4, !tbaa !8
  %sub135 = sub nsw i32 %79, %81
  %cmp136 = icmp sgt i32 %sub135, 1
  br i1 %cmp136, label %if.then150, label %lor.lhs.false138

lor.lhs.false138:                                 ; preds = %land.lhs.true, %for.body121
  %82 = load double, ptr %d, align 8, !tbaa !10
  %cmp139 = fcmp ole double %82, -1.000000e+00
  br i1 %cmp139, label %land.lhs.true141, label %if.end249

land.lhs.true141:                                 ; preds = %lor.lhs.false138
  %83 = load i32, ptr %i, align 4, !tbaa !8
  %sub142 = sub nsw i32 %83, 1
  %idxprom143 = sext i32 %sub142 to i64
  %arrayidx144 = getelementptr inbounds [5 x i32], ptr %pos, i64 0, i64 %idxprom143
  %84 = load i32, ptr %arrayidx144, align 4, !tbaa !8
  %85 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom145 = sext i32 %85 to i64
  %arrayidx146 = getelementptr inbounds [5 x i32], ptr %pos, i64 0, i64 %idxprom145
  %86 = load i32, ptr %arrayidx146, align 4, !tbaa !8
  %sub147 = sub nsw i32 %84, %86
  %cmp148 = icmp slt i32 %sub147, -1
  br i1 %cmp148, label %if.then150, label %if.end249

if.then150:                                       ; preds = %land.lhs.true141, %land.lhs.true
  %87 = load double, ptr %d, align 8, !tbaa !10
  %cmp151 = fcmp olt double %87, 0.000000e+00
  %88 = zext i1 %cmp151 to i64
  %cond = select i1 %cmp151, i32 -1, i32 1
  store i32 %cond, ptr %sgnd, align 4, !tbaa !8
  %89 = load i32, ptr %sgnd, align 4, !tbaa !8
  %conv153 = sitofp i32 %89 to double
  store double %conv153, ptr %d, align 8, !tbaa !10
  %90 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom154 = sext i32 %90 to i64
  %arrayidx155 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 %idxprom154
  %91 = load double, ptr %arrayidx155, align 8, !tbaa !10
  %92 = load double, ptr %d, align 8, !tbaa !10
  %93 = load i32, ptr %i, align 4, !tbaa !8
  %add156 = add nsw i32 %93, 1
  %idxprom157 = sext i32 %add156 to i64
  %arrayidx158 = getelementptr inbounds [5 x i32], ptr %pos, i64 0, i64 %idxprom157
  %94 = load i32, ptr %arrayidx158, align 4, !tbaa !8
  %95 = load i32, ptr %i, align 4, !tbaa !8
  %sub159 = sub nsw i32 %95, 1
  %idxprom160 = sext i32 %sub159 to i64
  %arrayidx161 = getelementptr inbounds [5 x i32], ptr %pos, i64 0, i64 %idxprom160
  %96 = load i32, ptr %arrayidx161, align 4, !tbaa !8
  %sub162 = sub nsw i32 %94, %96
  %conv163 = sitofp i32 %sub162 to double
  %div164 = fdiv double %92, %conv163
  %97 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom165 = sext i32 %97 to i64
  %arrayidx166 = getelementptr inbounds [5 x i32], ptr %pos, i64 0, i64 %idxprom165
  %98 = load i32, ptr %arrayidx166, align 4, !tbaa !8
  %99 = load i32, ptr %i, align 4, !tbaa !8
  %sub167 = sub nsw i32 %99, 1
  %idxprom168 = sext i32 %sub167 to i64
  %arrayidx169 = getelementptr inbounds [5 x i32], ptr %pos, i64 0, i64 %idxprom168
  %100 = load i32, ptr %arrayidx169, align 4, !tbaa !8
  %sub170 = sub nsw i32 %98, %100
  %conv171 = sitofp i32 %sub170 to double
  %101 = load double, ptr %d, align 8, !tbaa !10
  %add172 = fadd double %conv171, %101
  %102 = load i32, ptr %i, align 4, !tbaa !8
  %add173 = add nsw i32 %102, 1
  %idxprom174 = sext i32 %add173 to i64
  %arrayidx175 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 %idxprom174
  %103 = load double, ptr %arrayidx175, align 8, !tbaa !10
  %104 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom176 = sext i32 %104 to i64
  %arrayidx177 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 %idxprom176
  %105 = load double, ptr %arrayidx177, align 8, !tbaa !10
  %sub178 = fsub double %103, %105
  %mul179 = fmul double %add172, %sub178
  %106 = load i32, ptr %i, align 4, !tbaa !8
  %add180 = add nsw i32 %106, 1
  %idxprom181 = sext i32 %add180 to i64
  %arrayidx182 = getelementptr inbounds [5 x i32], ptr %pos, i64 0, i64 %idxprom181
  %107 = load i32, ptr %arrayidx182, align 4, !tbaa !8
  %108 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom183 = sext i32 %108 to i64
  %arrayidx184 = getelementptr inbounds [5 x i32], ptr %pos, i64 0, i64 %idxprom183
  %109 = load i32, ptr %arrayidx184, align 4, !tbaa !8
  %sub185 = sub nsw i32 %107, %109
  %conv186 = sitofp i32 %sub185 to double
  %div187 = fdiv double %mul179, %conv186
  %110 = load i32, ptr %i, align 4, !tbaa !8
  %add188 = add nsw i32 %110, 1
  %idxprom189 = sext i32 %add188 to i64
  %arrayidx190 = getelementptr inbounds [5 x i32], ptr %pos, i64 0, i64 %idxprom189
  %111 = load i32, ptr %arrayidx190, align 4, !tbaa !8
  %112 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom191 = sext i32 %112 to i64
  %arrayidx192 = getelementptr inbounds [5 x i32], ptr %pos, i64 0, i64 %idxprom191
  %113 = load i32, ptr %arrayidx192, align 4, !tbaa !8
  %sub193 = sub nsw i32 %111, %113
  %conv194 = sitofp i32 %sub193 to double
  %114 = load double, ptr %d, align 8, !tbaa !10
  %sub195 = fsub double %conv194, %114
  %115 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom196 = sext i32 %115 to i64
  %arrayidx197 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 %idxprom196
  %116 = load double, ptr %arrayidx197, align 8, !tbaa !10
  %117 = load i32, ptr %i, align 4, !tbaa !8
  %sub198 = sub nsw i32 %117, 1
  %idxprom199 = sext i32 %sub198 to i64
  %arrayidx200 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 %idxprom199
  %118 = load double, ptr %arrayidx200, align 8, !tbaa !10
  %sub201 = fsub double %116, %118
  %mul202 = fmul double %sub195, %sub201
  %119 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom203 = sext i32 %119 to i64
  %arrayidx204 = getelementptr inbounds [5 x i32], ptr %pos, i64 0, i64 %idxprom203
  %120 = load i32, ptr %arrayidx204, align 4, !tbaa !8
  %121 = load i32, ptr %i, align 4, !tbaa !8
  %sub205 = sub nsw i32 %121, 1
  %idxprom206 = sext i32 %sub205 to i64
  %arrayidx207 = getelementptr inbounds [5 x i32], ptr %pos, i64 0, i64 %idxprom206
  %122 = load i32, ptr %arrayidx207, align 4, !tbaa !8
  %sub208 = sub nsw i32 %120, %122
  %conv209 = sitofp i32 %sub208 to double
  %div210 = fdiv double %mul202, %conv209
  %add211 = fadd double %div187, %div210
  %123 = call double @llvm.fmuladd.f64(double %div164, double %add211, double %91)
  store double %123, ptr %tmp, align 8, !tbaa !10
  %124 = load double, ptr %tmp, align 8, !tbaa !10
  %125 = load i32, ptr %i, align 4, !tbaa !8
  %sub213 = sub nsw i32 %125, 1
  %idxprom214 = sext i32 %sub213 to i64
  %arrayidx215 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 %idxprom214
  %126 = load double, ptr %arrayidx215, align 8, !tbaa !10
  %cmp216 = fcmp ole double %124, %126
  br i1 %cmp216, label %if.then224, label %lor.lhs.false218

lor.lhs.false218:                                 ; preds = %if.then150
  %127 = load double, ptr %tmp, align 8, !tbaa !10
  %128 = load i32, ptr %i, align 4, !tbaa !8
  %add219 = add nsw i32 %128, 1
  %idxprom220 = sext i32 %add219 to i64
  %arrayidx221 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 %idxprom220
  %129 = load double, ptr %arrayidx221, align 8, !tbaa !10
  %cmp222 = fcmp oge double %127, %129
  br i1 %cmp222, label %if.then224, label %if.end243

if.then224:                                       ; preds = %lor.lhs.false218, %if.then150
  %130 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom225 = sext i32 %130 to i64
  %arrayidx226 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 %idxprom225
  %131 = load double, ptr %arrayidx226, align 8, !tbaa !10
  %132 = load double, ptr %d, align 8, !tbaa !10
  %133 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom227 = sext i32 %133 to i64
  %arrayidx228 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 %idxprom227
  %134 = load double, ptr %arrayidx228, align 8, !tbaa !10
  %135 = load i32, ptr %i, align 4, !tbaa !8
  %136 = load i32, ptr %sgnd, align 4, !tbaa !8
  %add229 = add nsw i32 %135, %136
  %idxprom230 = sext i32 %add229 to i64
  %arrayidx231 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 %idxprom230
  %137 = load double, ptr %arrayidx231, align 8, !tbaa !10
  %sub232 = fsub double %134, %137
  %mul233 = fmul double %132, %sub232
  %138 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom234 = sext i32 %138 to i64
  %arrayidx235 = getelementptr inbounds [5 x i32], ptr %pos, i64 0, i64 %idxprom234
  %139 = load i32, ptr %arrayidx235, align 4, !tbaa !8
  %140 = load i32, ptr %i, align 4, !tbaa !8
  %141 = load i32, ptr %sgnd, align 4, !tbaa !8
  %add236 = add nsw i32 %140, %141
  %idxprom237 = sext i32 %add236 to i64
  %arrayidx238 = getelementptr inbounds [5 x i32], ptr %pos, i64 0, i64 %idxprom237
  %142 = load i32, ptr %arrayidx238, align 4, !tbaa !8
  %sub239 = sub nsw i32 %139, %142
  %conv240 = sitofp i32 %sub239 to double
  %div241 = fdiv double %mul233, %conv240
  %add242 = fadd double %131, %div241
  store double %add242, ptr %tmp, align 8, !tbaa !10
  br label %if.end243

if.end243:                                        ; preds = %if.then224, %lor.lhs.false218
  %143 = load double, ptr %tmp, align 8, !tbaa !10
  %144 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom244 = sext i32 %144 to i64
  %arrayidx245 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 %idxprom244
  store double %143, ptr %arrayidx245, align 8, !tbaa !10
  %145 = load i32, ptr %sgnd, align 4, !tbaa !8
  %146 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom246 = sext i32 %146 to i64
  %arrayidx247 = getelementptr inbounds [5 x i32], ptr %pos, i64 0, i64 %idxprom246
  %147 = load i32, ptr %arrayidx247, align 4, !tbaa !8
  %add248 = add nsw i32 %147, %145
  store i32 %add248, ptr %arrayidx247, align 4, !tbaa !8
  br label %if.end249

if.end249:                                        ; preds = %if.end243, %land.lhs.true141, %lor.lhs.false138
  br label %for.inc250

for.inc250:                                       ; preds = %if.end249
  %148 = load i32, ptr %i, align 4, !tbaa !8
  %inc251 = add nsw i32 %148, 1
  store i32 %inc251, ptr %i, align 4, !tbaa !8
  br label %for.cond118

for.end252:                                       ; preds = %for.cond118
  br label %if.end253

if.end253:                                        ; preds = %for.end252, %for.end72
  br label %if.end254

if.end254:                                        ; preds = %if.end253, %if.then31
  br label %if.end255

if.end255:                                        ; preds = %if.end254, %if.then20
  br label %for.inc256

for.inc256:                                       ; preds = %if.end255
  %149 = load i32, ptr %n, align 4, !tbaa !8
  %inc257 = add nsw i32 %149, 1
  store i32 %inc257, ptr %n, align 4, !tbaa !8
  br label %for.cond

for.end258:                                       ; preds = %for.cond
  %arrayidx259 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 0
  %150 = load double, ptr %arrayidx259, align 16, !tbaa !10
  %151 = load ptr, ptr %q0.addr, align 8, !tbaa !4
  store double %150, ptr %151, align 8, !tbaa !10
  %arrayidx260 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 1
  %152 = load double, ptr %arrayidx260, align 8, !tbaa !10
  %153 = load ptr, ptr %q1.addr, align 8, !tbaa !4
  store double %152, ptr %153, align 8, !tbaa !10
  %arrayidx261 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 2
  %154 = load double, ptr %arrayidx261, align 16, !tbaa !10
  %155 = load ptr, ptr %q2.addr, align 8, !tbaa !4
  store double %154, ptr %155, align 8, !tbaa !10
  %arrayidx262 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 3
  %156 = load double, ptr %arrayidx262, align 8, !tbaa !10
  %157 = load ptr, ptr %q3.addr, align 8, !tbaa !4
  store double %156, ptr %157, align 8, !tbaa !10
  %arrayidx263 = getelementptr inbounds [5 x double], ptr %h, i64 0, i64 4
  %158 = load double, ptr %arrayidx263, align 16, !tbaa !10
  %159 = load ptr, ptr %q4.addr, align 8, !tbaa !4
  store double %158, ptr %159, align 8, !tbaa !10
  %160 = load i32, ptr %verbosity.addr, align 4, !tbaa !8
  %tobool264 = icmp ne i32 %160, 0
  br i1 %tobool264, label %if.then265, label %if.end272

if.then265:                                       ; preds = %for.end258
  %161 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %call266 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %161, ptr noundef @.str.4)
  %162 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %163 = load ptr, ptr %q0.addr, align 8, !tbaa !4
  %164 = load double, ptr %163, align 8, !tbaa !10
  %call267 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef @.str.5, double noundef %164)
  %165 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %166 = load ptr, ptr %q1.addr, align 8, !tbaa !4
  %167 = load double, ptr %166, align 8, !tbaa !10
  %call268 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %165, ptr noundef @.str.6, double noundef %167)
  %168 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %169 = load ptr, ptr %q2.addr, align 8, !tbaa !4
  %170 = load double, ptr %169, align 8, !tbaa !10
  %call269 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %168, ptr noundef @.str.7, double noundef %170)
  %171 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %172 = load ptr, ptr %q3.addr, align 8, !tbaa !4
  %173 = load double, ptr %172, align 8, !tbaa !10
  %call270 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %171, ptr noundef @.str.8, double noundef %173)
  %174 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %175 = load ptr, ptr %q4.addr, align 8, !tbaa !4
  %176 = load double, ptr %175, align 8, !tbaa !10
  %call271 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %174, ptr noundef @.str.9, double noundef %176)
  br label %if.end272

if.end272:                                        ; preds = %if.then265, %for.end258
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end272, %do.end7, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %sgnd) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr %dpos) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr %pos) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr %h) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #4
  %177 = load i32, ptr %retval, align 4
  ret i32 %177
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @_unur_error_x(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!12 = !{!13, !9, i64 44}
!13 = !{!"unur_gen", !5, i64 0, !6, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !9, i64 88, !14, i64 96, !9, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144}
!14 = !{!"long", !6, i64 0}
!15 = !{!6, !6, i64 0}
