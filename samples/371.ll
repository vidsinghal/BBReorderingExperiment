; ModuleID = 'samples/371.bc'
source_filename = "../Source/umfpack_report_triplet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SuiteSparse_config_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.DoubleComplex = type { [2 x double] }

@SuiteSparse_config = external global %struct.SuiteSparse_config_struct, align 8
@.str = private unnamed_addr constant [57 x i8] c"triplet-form matrix, n_row = %ld, n_col = %ld nz = %ld. \00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"ERROR: indices not present\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ERROR: n_row or n_col is <= 0\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"ERROR: nz is < 0\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"    %ld : %ld %ld \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" (%g\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" (0\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c" - %gi)\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c" + 0i)\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c" + %gi)\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"ERROR: invalid triplet\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"    ...\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"    triplet-form matrix \00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"OK\0A\0A\00", align 1

; Function Attrs: uwtable
define i64 @umfpack_zl_report_triplet(i64 noundef %n_row, i64 noundef %n_col, i64 noundef %nz, ptr noundef %Ti, ptr noundef %Tj, ptr noundef %Tx, ptr noundef %Tz, ptr noundef %Control) #0 {
entry:
  %retval = alloca i64, align 8
  %n_row.addr = alloca i64, align 8
  %n_col.addr = alloca i64, align 8
  %nz.addr = alloca i64, align 8
  %Ti.addr = alloca ptr, align 8
  %Tj.addr = alloca ptr, align 8
  %Tx.addr = alloca ptr, align 8
  %Tz.addr = alloca ptr, align 8
  %Control.addr = alloca ptr, align 8
  %t = alloca %struct.DoubleComplex, align 8
  %prl = alloca i64, align 8
  %prl1 = alloca i64, align 8
  %k = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %do_values = alloca i64, align 8
  %split = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n_row, ptr %n_row.addr, align 8, !tbaa !4
  store i64 %n_col, ptr %n_col.addr, align 8, !tbaa !4
  store i64 %nz, ptr %nz.addr, align 8, !tbaa !4
  store ptr %Ti, ptr %Ti.addr, align 8, !tbaa !8
  store ptr %Tj, ptr %Tj.addr, align 8, !tbaa !8
  store ptr %Tx, ptr %Tx.addr, align 8, !tbaa !8
  store ptr %Tz, ptr %Tz.addr, align 8, !tbaa !8
  store ptr %Control, ptr %Control.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %t) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %prl) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %prl1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %do_values) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %split) #3
  %0 = load ptr, ptr %Tz.addr, align 8, !tbaa !8
  %cmp = icmp ne ptr %0, null
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  store i64 %conv1, ptr %split, align 8, !tbaa !4
  %1 = load ptr, ptr %Control.addr, align 8, !tbaa !8
  %cmp2 = icmp ne ptr %1, null
  br i1 %cmp2, label %cond.true, label %cond.false9

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %Control.addr, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds double, ptr %2, i64 0
  %3 = load double, ptr %arrayidx, align 8, !tbaa !10
  %4 = load ptr, ptr %Control.addr, align 8, !tbaa !8
  %arrayidx4 = getelementptr inbounds double, ptr %4, i64 0
  %5 = load double, ptr %arrayidx4, align 8, !tbaa !10
  %cmp5 = fcmp une double %3, %5
  br i1 %cmp5, label %cond.true7, label %cond.false

cond.true7:                                       ; preds = %cond.true
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %6 = load ptr, ptr %Control.addr, align 8, !tbaa !8
  %arrayidx8 = getelementptr inbounds double, ptr %6, i64 0
  %7 = load double, ptr %arrayidx8, align 8, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true7
  %cond = phi double [ 1.000000e+00, %cond.true7 ], [ %7, %cond.false ]
  br label %cond.end10

cond.false9:                                      ; preds = %entry
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %cond.end
  %cond11 = phi double [ %cond, %cond.end ], [ 1.000000e+00, %cond.false9 ]
  %conv12 = fptosi double %cond11 to i64
  store i64 %conv12, ptr %prl, align 8, !tbaa !4
  %8 = load i64, ptr %prl, align 8, !tbaa !4
  %cmp13 = icmp sle i64 %8, 2
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end10
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %cond.end10
  %9 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp15 = icmp ne ptr %9, null
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end
  %10 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %11 = load i64, ptr %n_row.addr, align 8, !tbaa !4
  %12 = load i64, ptr %n_col.addr, align 8, !tbaa !4
  %13 = load i64, ptr %nz.addr, align 8, !tbaa !4
  %call = call i32 (ptr, ...) %10(ptr noundef @.str, i64 noundef %11, i64 noundef %12, i64 noundef %13)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end
  %14 = load ptr, ptr %Ti.addr, align 8, !tbaa !8
  %tobool = icmp ne ptr %14, null
  br i1 %tobool, label %lor.lhs.false, label %if.then20

lor.lhs.false:                                    ; preds = %if.end18
  %15 = load ptr, ptr %Tj.addr, align 8, !tbaa !8
  %tobool19 = icmp ne ptr %15, null
  br i1 %tobool19, label %if.end26, label %if.then20

if.then20:                                        ; preds = %lor.lhs.false, %if.end18
  %16 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp21 = icmp ne ptr %16, null
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.then20
  %17 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call24 = call i32 (ptr, ...) %17(ptr noundef @.str.1)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.then20
  store i64 -5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false
  %18 = load i64, ptr %n_row.addr, align 8, !tbaa !4
  %cmp27 = icmp sle i64 %18, 0
  br i1 %cmp27, label %if.then32, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.end26
  %19 = load i64, ptr %n_col.addr, align 8, !tbaa !4
  %cmp30 = icmp sle i64 %19, 0
  br i1 %cmp30, label %if.then32, label %if.end38

if.then32:                                        ; preds = %lor.lhs.false29, %if.end26
  %20 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp33 = icmp ne ptr %20, null
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.then32
  %21 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call36 = call i32 (ptr, ...) %21(ptr noundef @.str.2)
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.then32
  store i64 -6, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end38:                                         ; preds = %lor.lhs.false29
  %22 = load i64, ptr %nz.addr, align 8, !tbaa !4
  %cmp39 = icmp slt i64 %22, 0
  br i1 %cmp39, label %if.then41, label %if.end47

if.then41:                                        ; preds = %if.end38
  %23 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp42 = icmp ne ptr %23, null
  br i1 %cmp42, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.then41
  %24 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call45 = call i32 (ptr, ...) %24(ptr noundef @.str.3)
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.then41
  store i64 -8, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end47:                                         ; preds = %if.end38
  %25 = load i64, ptr %prl, align 8, !tbaa !4
  %cmp48 = icmp sge i64 %25, 4
  br i1 %cmp48, label %if.then50, label %if.end56

if.then50:                                        ; preds = %if.end47
  %26 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp51 = icmp ne ptr %26, null
  br i1 %cmp51, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.then50
  %27 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call54 = call i32 (ptr, ...) %27(ptr noundef @.str.4)
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.then50
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.end47
  %28 = load ptr, ptr %Tx.addr, align 8, !tbaa !8
  %cmp57 = icmp ne ptr %28, null
  %conv58 = zext i1 %cmp57 to i32
  %conv59 = sext i32 %conv58 to i64
  store i64 %conv59, ptr %do_values, align 8, !tbaa !4
  %29 = load i64, ptr %prl, align 8, !tbaa !4
  store i64 %29, ptr %prl1, align 8, !tbaa !4
  store i64 0, ptr %k, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end56
  %30 = load i64, ptr %k, align 8, !tbaa !4
  %31 = load i64, ptr %nz.addr, align 8, !tbaa !4
  %cmp60 = icmp slt i64 %30, %31
  br i1 %cmp60, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load ptr, ptr %Ti.addr, align 8, !tbaa !8
  %33 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx62 = getelementptr inbounds i64, ptr %32, i64 %33
  %34 = load i64, ptr %arrayidx62, align 8, !tbaa !4
  store i64 %34, ptr %i, align 8, !tbaa !4
  %35 = load ptr, ptr %Tj.addr, align 8, !tbaa !8
  %36 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx63 = getelementptr inbounds i64, ptr %35, i64 %36
  %37 = load i64, ptr %arrayidx63, align 8, !tbaa !4
  store i64 %37, ptr %j, align 8, !tbaa !4
  %38 = load i64, ptr %prl, align 8, !tbaa !4
  %cmp64 = icmp sge i64 %38, 4
  br i1 %cmp64, label %if.then66, label %if.end72

if.then66:                                        ; preds = %for.body
  %39 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp67 = icmp ne ptr %39, null
  br i1 %cmp67, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.then66
  %40 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %41 = load i64, ptr %k, align 8, !tbaa !4
  %42 = load i64, ptr %i, align 8, !tbaa !4
  %43 = load i64, ptr %j, align 8, !tbaa !4
  %call70 = call i32 (ptr, ...) %40(ptr noundef @.str.5, i64 noundef %41, i64 noundef %42, i64 noundef %43)
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.then66
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %for.body
  %44 = load i64, ptr %do_values, align 8, !tbaa !4
  %tobool73 = icmp ne i64 %44, 0
  br i1 %tobool73, label %land.lhs.true, label %if.end138

land.lhs.true:                                    ; preds = %if.end72
  %45 = load i64, ptr %prl, align 8, !tbaa !4
  %cmp74 = icmp sge i64 %45, 4
  br i1 %cmp74, label %if.then76, label %if.end138

if.then76:                                        ; preds = %land.lhs.true
  %46 = load i64, ptr %split, align 8, !tbaa !4
  %tobool77 = icmp ne i64 %46, 0
  br i1 %tobool77, label %if.then78, label %if.else

if.then78:                                        ; preds = %if.then76
  %47 = load ptr, ptr %Tx.addr, align 8, !tbaa !8
  %48 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx79 = getelementptr inbounds double, ptr %47, i64 %48
  %49 = load double, ptr %arrayidx79, align 8, !tbaa !10
  %component = getelementptr inbounds %struct.DoubleComplex, ptr %t, i32 0, i32 0
  %arrayidx80 = getelementptr inbounds [2 x double], ptr %component, i64 0, i64 0
  store double %49, ptr %arrayidx80, align 8, !tbaa !10
  %50 = load ptr, ptr %Tz.addr, align 8, !tbaa !8
  %51 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx81 = getelementptr inbounds double, ptr %50, i64 %51
  %52 = load double, ptr %arrayidx81, align 8, !tbaa !10
  %component82 = getelementptr inbounds %struct.DoubleComplex, ptr %t, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [2 x double], ptr %component82, i64 0, i64 1
  store double %52, ptr %arrayidx83, align 8, !tbaa !10
  br label %if.end85

if.else:                                          ; preds = %if.then76
  %53 = load ptr, ptr %Tx.addr, align 8, !tbaa !8
  %54 = load i64, ptr %k, align 8, !tbaa !4
  %arrayidx84 = getelementptr inbounds %struct.DoubleComplex, ptr %53, i64 %54
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t, ptr align 8 %arrayidx84, i64 16, i1 false), !tbaa.struct !14
  br label %if.end85

if.end85:                                         ; preds = %if.else, %if.then78
  %component86 = getelementptr inbounds %struct.DoubleComplex, ptr %t, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [2 x double], ptr %component86, i64 0, i64 0
  %55 = load double, ptr %arrayidx87, align 8, !tbaa !10
  %cmp88 = fcmp une double %55, 0.000000e+00
  br i1 %cmp88, label %if.then90, label %if.else98

if.then90:                                        ; preds = %if.end85
  %56 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp91 = icmp ne ptr %56, null
  br i1 %cmp91, label %if.then93, label %if.end97

if.then93:                                        ; preds = %if.then90
  %57 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %component94 = getelementptr inbounds %struct.DoubleComplex, ptr %t, i32 0, i32 0
  %arrayidx95 = getelementptr inbounds [2 x double], ptr %component94, i64 0, i64 0
  %58 = load double, ptr %arrayidx95, align 8, !tbaa !10
  %call96 = call i32 (ptr, ...) %57(ptr noundef @.str.6, double noundef %58)
  br label %if.end97

if.end97:                                         ; preds = %if.then93, %if.then90
  br label %if.end104

if.else98:                                        ; preds = %if.end85
  %59 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp99 = icmp ne ptr %59, null
  br i1 %cmp99, label %if.then101, label %if.end103

if.then101:                                       ; preds = %if.else98
  %60 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call102 = call i32 (ptr, ...) %60(ptr noundef @.str.7)
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %if.else98
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.end97
  %component105 = getelementptr inbounds %struct.DoubleComplex, ptr %t, i32 0, i32 0
  %arrayidx106 = getelementptr inbounds [2 x double], ptr %component105, i64 0, i64 1
  %61 = load double, ptr %arrayidx106, align 8, !tbaa !10
  %cmp107 = fcmp olt double %61, 0.000000e+00
  br i1 %cmp107, label %if.then109, label %if.else117

if.then109:                                       ; preds = %if.end104
  %62 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp110 = icmp ne ptr %62, null
  br i1 %cmp110, label %if.then112, label %if.end116

if.then112:                                       ; preds = %if.then109
  %63 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %component113 = getelementptr inbounds %struct.DoubleComplex, ptr %t, i32 0, i32 0
  %arrayidx114 = getelementptr inbounds [2 x double], ptr %component113, i64 0, i64 1
  %64 = load double, ptr %arrayidx114, align 8, !tbaa !10
  %fneg = fneg double %64
  %call115 = call i32 (ptr, ...) %63(ptr noundef @.str.8, double noundef %fneg)
  br label %if.end116

if.end116:                                        ; preds = %if.then112, %if.then109
  br label %if.end137

if.else117:                                       ; preds = %if.end104
  %component118 = getelementptr inbounds %struct.DoubleComplex, ptr %t, i32 0, i32 0
  %arrayidx119 = getelementptr inbounds [2 x double], ptr %component118, i64 0, i64 1
  %65 = load double, ptr %arrayidx119, align 8, !tbaa !10
  %cmp120 = fcmp oeq double %65, 0.000000e+00
  br i1 %cmp120, label %if.then122, label %if.else128

if.then122:                                       ; preds = %if.else117
  %66 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp123 = icmp ne ptr %66, null
  br i1 %cmp123, label %if.then125, label %if.end127

if.then125:                                       ; preds = %if.then122
  %67 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call126 = call i32 (ptr, ...) %67(ptr noundef @.str.9)
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.then122
  br label %if.end136

if.else128:                                       ; preds = %if.else117
  %68 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp129 = icmp ne ptr %68, null
  br i1 %cmp129, label %if.then131, label %if.end135

if.then131:                                       ; preds = %if.else128
  %69 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %component132 = getelementptr inbounds %struct.DoubleComplex, ptr %t, i32 0, i32 0
  %arrayidx133 = getelementptr inbounds [2 x double], ptr %component132, i64 0, i64 1
  %70 = load double, ptr %arrayidx133, align 8, !tbaa !10
  %call134 = call i32 (ptr, ...) %69(ptr noundef @.str.10, double noundef %70)
  br label %if.end135

if.end135:                                        ; preds = %if.then131, %if.else128
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.end127
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %if.end116
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %land.lhs.true, %if.end72
  %71 = load i64, ptr %prl, align 8, !tbaa !4
  %cmp139 = icmp sge i64 %71, 4
  br i1 %cmp139, label %if.then141, label %if.end147

if.then141:                                       ; preds = %if.end138
  %72 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp142 = icmp ne ptr %72, null
  br i1 %cmp142, label %if.then144, label %if.end146

if.then144:                                       ; preds = %if.then141
  %73 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call145 = call i32 (ptr, ...) %73(ptr noundef @.str.4)
  br label %if.end146

if.end146:                                        ; preds = %if.then144, %if.then141
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %if.end138
  %74 = load i64, ptr %i, align 8, !tbaa !4
  %cmp148 = icmp slt i64 %74, 0
  br i1 %cmp148, label %if.then159, label %lor.lhs.false150

lor.lhs.false150:                                 ; preds = %if.end147
  %75 = load i64, ptr %i, align 8, !tbaa !4
  %76 = load i64, ptr %n_row.addr, align 8, !tbaa !4
  %cmp151 = icmp sge i64 %75, %76
  br i1 %cmp151, label %if.then159, label %lor.lhs.false153

lor.lhs.false153:                                 ; preds = %lor.lhs.false150
  %77 = load i64, ptr %j, align 8, !tbaa !4
  %cmp154 = icmp slt i64 %77, 0
  br i1 %cmp154, label %if.then159, label %lor.lhs.false156

lor.lhs.false156:                                 ; preds = %lor.lhs.false153
  %78 = load i64, ptr %j, align 8, !tbaa !4
  %79 = load i64, ptr %n_col.addr, align 8, !tbaa !4
  %cmp157 = icmp sge i64 %78, %79
  br i1 %cmp157, label %if.then159, label %if.end165

if.then159:                                       ; preds = %lor.lhs.false156, %lor.lhs.false153, %lor.lhs.false150, %if.end147
  %80 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp160 = icmp ne ptr %80, null
  br i1 %cmp160, label %if.then162, label %if.end164

if.then162:                                       ; preds = %if.then159
  %81 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call163 = call i32 (ptr, ...) %81(ptr noundef @.str.11)
  br label %if.end164

if.end164:                                        ; preds = %if.then162, %if.then159
  store i64 -8, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end165:                                        ; preds = %lor.lhs.false156
  %82 = load i64, ptr %prl, align 8, !tbaa !4
  %cmp166 = icmp eq i64 %82, 4
  br i1 %cmp166, label %land.lhs.true168, label %if.end180

land.lhs.true168:                                 ; preds = %if.end165
  %83 = load i64, ptr %k, align 8, !tbaa !4
  %cmp169 = icmp eq i64 %83, 9
  br i1 %cmp169, label %land.lhs.true171, label %if.end180

land.lhs.true171:                                 ; preds = %land.lhs.true168
  %84 = load i64, ptr %nz.addr, align 8, !tbaa !4
  %cmp172 = icmp sgt i64 %84, 10
  br i1 %cmp172, label %if.then174, label %if.end180

if.then174:                                       ; preds = %land.lhs.true171
  %85 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp175 = icmp ne ptr %85, null
  br i1 %cmp175, label %if.then177, label %if.end179

if.then177:                                       ; preds = %if.then174
  %86 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call178 = call i32 (ptr, ...) %86(ptr noundef @.str.12)
  br label %if.end179

if.end179:                                        ; preds = %if.then177, %if.then174
  %87 = load i64, ptr %prl, align 8, !tbaa !4
  %dec = add nsw i64 %87, -1
  store i64 %dec, ptr %prl, align 8, !tbaa !4
  br label %if.end180

if.end180:                                        ; preds = %if.end179, %land.lhs.true171, %land.lhs.true168, %if.end165
  br label %for.inc

for.inc:                                          ; preds = %if.end180
  %88 = load i64, ptr %k, align 8, !tbaa !4
  %inc = add nsw i64 %88, 1
  store i64 %inc, ptr %k, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %89 = load i64, ptr %prl1, align 8, !tbaa !4
  store i64 %89, ptr %prl, align 8, !tbaa !4
  %90 = load i64, ptr %prl, align 8, !tbaa !4
  %cmp181 = icmp sge i64 %90, 4
  br i1 %cmp181, label %if.then183, label %if.end189

if.then183:                                       ; preds = %for.end
  %91 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp184 = icmp ne ptr %91, null
  br i1 %cmp184, label %if.then186, label %if.end188

if.then186:                                       ; preds = %if.then183
  %92 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call187 = call i32 (ptr, ...) %92(ptr noundef @.str.13)
  br label %if.end188

if.end188:                                        ; preds = %if.then186, %if.then183
  br label %if.end189

if.end189:                                        ; preds = %if.end188, %for.end
  %93 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp190 = icmp ne ptr %93, null
  br i1 %cmp190, label %if.then192, label %if.end194

if.then192:                                       ; preds = %if.end189
  %94 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call193 = call i32 (ptr, ...) %94(ptr noundef @.str.14)
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %if.end189
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end194, %if.end164, %if.end46, %if.end37, %if.end25, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %split) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %do_values) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %prl1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %prl) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %t) #3
  %95 = load i64, ptr %retval, align 8
  ret i64 %95
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = !{!13, !9, i64 32}
!13 = !{!"SuiteSparse_config_struct", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48}
!14 = !{i64 0, i64 16, !15}
!15 = !{!6, !6, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
