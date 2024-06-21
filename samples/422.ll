; ModuleID = 'samples/422.bc'
source_filename = "../Source/umfpack_report_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SuiteSparse_config_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [7 x i8] c"column\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"row\00", align 1
@SuiteSparse_config = external global %struct.SuiteSparse_config_struct, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"%s-form matrix, n_row %d n_col %d, \00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"ERROR: n_row <= 0 or n_col <= 0\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"ERROR: Ap missing\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"nz = %d. \00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"ERROR: number of entries < 0\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"ERROR: Ap [%d] = %d must be %d\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"ERROR: Ai missing\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"ERROR: Ap [%d] < 0\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"ERROR: Ap [%d] > size of Ai\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"ERROR: # entries in %s %d is < 0\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"\0A    %s %d: start: %d end: %d entries: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"\09%s %d \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c" (%g)\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c" (0)\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c" ERROR: %s index %d out of range in %s %d\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c" ERROR: %s index %d out of order (or duplicate) in %s %d\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"\09...\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"\0A    ...\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"    %s-form matrix \00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"OK\0A\0A\00", align 1

; Function Attrs: uwtable
define i32 @umfpack_di_report_matrix(i32 noundef %n_row, i32 noundef %n_col, ptr noundef %Ap, ptr noundef %Ai, ptr noundef %Ax, i32 noundef %col_form, ptr noundef %Control) #0 {
entry:
  %retval = alloca i32, align 4
  %n_row.addr = alloca i32, align 4
  %n_col.addr = alloca i32, align 4
  %Ap.addr = alloca ptr, align 8
  %Ai.addr = alloca ptr, align 8
  %Ax.addr = alloca ptr, align 8
  %col_form.addr = alloca i32, align 4
  %Control.addr = alloca ptr, align 8
  %a = alloca double, align 8
  %prl = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %length = alloca i32, align 4
  %ilast = alloca i32, align 4
  %p = alloca i32, align 4
  %nz = alloca i32, align 4
  %prl1 = alloca i32, align 4
  %p1 = alloca i32, align 4
  %p2 = alloca i32, align 4
  %n = alloca i32, align 4
  %n_i = alloca i32, align 4
  %do_values = alloca i32, align 4
  %vector_kind = alloca ptr, align 8
  %index_kind = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %n_row, ptr %n_row.addr, align 4, !tbaa !4
  store i32 %n_col, ptr %n_col.addr, align 4, !tbaa !4
  store ptr %Ap, ptr %Ap.addr, align 8, !tbaa !8
  store ptr %Ai, ptr %Ai.addr, align 8, !tbaa !8
  store ptr %Ax, ptr %Ax.addr, align 8, !tbaa !8
  store i32 %col_form, ptr %col_form.addr, align 4, !tbaa !4
  store ptr %Control, ptr %Control.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %prl) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %ilast) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %nz) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %prl1) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %p1) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %p2) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_i) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %do_values) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %vector_kind) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %index_kind) #2
  %0 = load ptr, ptr %Control.addr, align 8, !tbaa !8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %cond.true, label %cond.false5

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %Control.addr, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds double, ptr %1, i64 0
  %2 = load double, ptr %arrayidx, align 8, !tbaa !10
  %3 = load ptr, ptr %Control.addr, align 8, !tbaa !8
  %arrayidx1 = getelementptr inbounds double, ptr %3, i64 0
  %4 = load double, ptr %arrayidx1, align 8, !tbaa !10
  %cmp2 = fcmp une double %2, %4
  br i1 %cmp2, label %cond.true3, label %cond.false

cond.true3:                                       ; preds = %cond.true
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %5 = load ptr, ptr %Control.addr, align 8, !tbaa !8
  %arrayidx4 = getelementptr inbounds double, ptr %5, i64 0
  %6 = load double, ptr %arrayidx4, align 8, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true3
  %cond = phi double [ 1.000000e+00, %cond.true3 ], [ %6, %cond.false ]
  br label %cond.end6

cond.false5:                                      ; preds = %entry
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.end
  %cond7 = phi double [ %cond, %cond.end ], [ 1.000000e+00, %cond.false5 ]
  %conv = fptosi double %cond7 to i32
  store i32 %conv, ptr %prl, align 4, !tbaa !4
  %7 = load i32, ptr %prl, align 4, !tbaa !4
  %cmp8 = icmp sle i32 %7, 2
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end6
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %cond.end6
  %8 = load i32, ptr %col_form.addr, align 4, !tbaa !4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  store ptr @.str, ptr %vector_kind, align 8, !tbaa !8
  store ptr @.str.1, ptr %index_kind, align 8, !tbaa !8
  %9 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  store i32 %9, ptr %n, align 4, !tbaa !4
  %10 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  store i32 %10, ptr %n_i, align 4, !tbaa !4
  br label %if.end11

if.else:                                          ; preds = %if.end
  store ptr @.str.1, ptr %vector_kind, align 8, !tbaa !8
  store ptr @.str, ptr %index_kind, align 8, !tbaa !8
  %11 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  store i32 %11, ptr %n, align 4, !tbaa !4
  %12 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  store i32 %12, ptr %n_i, align 4, !tbaa !4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then10
  %13 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp12 = icmp ne ptr %13, null
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  %14 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %15 = load ptr, ptr %vector_kind, align 8, !tbaa !8
  %16 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %17 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %call = call i32 (ptr, ...) %14(ptr noundef @.str.2, ptr noundef %15, i32 noundef %16, i32 noundef %17)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end11
  %18 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %cmp16 = icmp sle i32 %18, 0
  br i1 %cmp16, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end15
  %19 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %cmp18 = icmp sle i32 %19, 0
  br i1 %cmp18, label %if.then20, label %if.end26

if.then20:                                        ; preds = %lor.lhs.false, %if.end15
  %20 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp21 = icmp ne ptr %20, null
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.then20
  %21 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call24 = call i32 (ptr, ...) %21(ptr noundef @.str.3)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.then20
  store i32 -6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false
  %22 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %tobool27 = icmp ne ptr %22, null
  br i1 %tobool27, label %if.end34, label %if.then28

if.then28:                                        ; preds = %if.end26
  %23 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp29 = icmp ne ptr %23, null
  br i1 %cmp29, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.then28
  %24 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call32 = call i32 (ptr, ...) %24(ptr noundef @.str.4)
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.then28
  store i32 -5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  %25 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %26 = load i32, ptr %n, align 4, !tbaa !4
  %idxprom = sext i32 %26 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %25, i64 %idxprom
  %27 = load i32, ptr %arrayidx35, align 4, !tbaa !4
  store i32 %27, ptr %nz, align 4, !tbaa !4
  %28 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp36 = icmp ne ptr %28, null
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end34
  %29 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %30 = load i32, ptr %nz, align 4, !tbaa !4
  %call39 = call i32 (ptr, ...) %29(ptr noundef @.str.5, i32 noundef %30)
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end34
  %31 = load i32, ptr %nz, align 4, !tbaa !4
  %cmp41 = icmp slt i32 %31, 0
  br i1 %cmp41, label %if.then43, label %if.end49

if.then43:                                        ; preds = %if.end40
  %32 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp44 = icmp ne ptr %32, null
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.then43
  %33 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call47 = call i32 (ptr, ...) %33(ptr noundef @.str.6)
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.then43
  store i32 -8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end49:                                         ; preds = %if.end40
  %34 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %arrayidx50 = getelementptr inbounds i32, ptr %34, i64 0
  %35 = load i32, ptr %arrayidx50, align 4, !tbaa !4
  %cmp51 = icmp ne i32 %35, 0
  br i1 %cmp51, label %if.then53, label %if.end60

if.then53:                                        ; preds = %if.end49
  %36 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp54 = icmp ne ptr %36, null
  br i1 %cmp54, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.then53
  %37 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %38 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %arrayidx57 = getelementptr inbounds i32, ptr %38, i64 0
  %39 = load i32, ptr %arrayidx57, align 4, !tbaa !4
  %call58 = call i32 (ptr, ...) %37(ptr noundef @.str.7, i32 noundef 0, i32 noundef %39, i32 noundef 0)
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.then53
  store i32 -8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end60:                                         ; preds = %if.end49
  %40 = load ptr, ptr %Ai.addr, align 8, !tbaa !8
  %tobool61 = icmp ne ptr %40, null
  br i1 %tobool61, label %if.end68, label %if.then62

if.then62:                                        ; preds = %if.end60
  %41 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp63 = icmp ne ptr %41, null
  br i1 %cmp63, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.then62
  %42 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call66 = call i32 (ptr, ...) %42(ptr noundef @.str.8)
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.then62
  store i32 -5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end68:                                         ; preds = %if.end60
  %43 = load ptr, ptr %Ax.addr, align 8, !tbaa !8
  %cmp69 = icmp ne ptr %43, null
  %conv70 = zext i1 %cmp69 to i32
  store i32 %conv70, ptr %do_values, align 4, !tbaa !4
  %44 = load i32, ptr %prl, align 4, !tbaa !4
  %cmp71 = icmp sge i32 %44, 4
  br i1 %cmp71, label %if.then73, label %if.end79

if.then73:                                        ; preds = %if.end68
  %45 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp74 = icmp ne ptr %45, null
  br i1 %cmp74, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.then73
  %46 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call77 = call i32 (ptr, ...) %46(ptr noundef @.str.9)
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.then73
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.end68
  store i32 0, ptr %k, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end79
  %47 = load i32, ptr %k, align 4, !tbaa !4
  %48 = load i32, ptr %n, align 4, !tbaa !4
  %cmp80 = icmp slt i32 %47, %48
  br i1 %cmp80, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %50 = load i32, ptr %k, align 4, !tbaa !4
  %idxprom82 = sext i32 %50 to i64
  %arrayidx83 = getelementptr inbounds i32, ptr %49, i64 %idxprom82
  %51 = load i32, ptr %arrayidx83, align 4, !tbaa !4
  %cmp84 = icmp slt i32 %51, 0
  br i1 %cmp84, label %if.then86, label %if.end92

if.then86:                                        ; preds = %for.body
  %52 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp87 = icmp ne ptr %52, null
  br i1 %cmp87, label %if.then89, label %if.end91

if.then89:                                        ; preds = %if.then86
  %53 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %54 = load i32, ptr %k, align 4, !tbaa !4
  %call90 = call i32 (ptr, ...) %53(ptr noundef @.str.10, i32 noundef %54)
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.then86
  store i32 -8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end92:                                         ; preds = %for.body
  %55 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %56 = load i32, ptr %k, align 4, !tbaa !4
  %idxprom93 = sext i32 %56 to i64
  %arrayidx94 = getelementptr inbounds i32, ptr %55, i64 %idxprom93
  %57 = load i32, ptr %arrayidx94, align 4, !tbaa !4
  %58 = load i32, ptr %nz, align 4, !tbaa !4
  %cmp95 = icmp sgt i32 %57, %58
  br i1 %cmp95, label %if.then97, label %if.end103

if.then97:                                        ; preds = %if.end92
  %59 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp98 = icmp ne ptr %59, null
  br i1 %cmp98, label %if.then100, label %if.end102

if.then100:                                       ; preds = %if.then97
  %60 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %61 = load i32, ptr %k, align 4, !tbaa !4
  %call101 = call i32 (ptr, ...) %60(ptr noundef @.str.11, i32 noundef %61)
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %if.then97
  store i32 -8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end103:                                        ; preds = %if.end92
  br label %for.inc

for.inc:                                          ; preds = %if.end103
  %62 = load i32, ptr %k, align 4, !tbaa !4
  %inc = add nsw i32 %62, 1
  store i32 %inc, ptr %k, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %k, align 4, !tbaa !4
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc121, %for.end
  %63 = load i32, ptr %k, align 4, !tbaa !4
  %64 = load i32, ptr %n, align 4, !tbaa !4
  %cmp105 = icmp slt i32 %63, %64
  br i1 %cmp105, label %for.body107, label %for.end123

for.body107:                                      ; preds = %for.cond104
  %65 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %66 = load i32, ptr %k, align 4, !tbaa !4
  %add = add nsw i32 %66, 1
  %idxprom108 = sext i32 %add to i64
  %arrayidx109 = getelementptr inbounds i32, ptr %65, i64 %idxprom108
  %67 = load i32, ptr %arrayidx109, align 4, !tbaa !4
  %68 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %69 = load i32, ptr %k, align 4, !tbaa !4
  %idxprom110 = sext i32 %69 to i64
  %arrayidx111 = getelementptr inbounds i32, ptr %68, i64 %idxprom110
  %70 = load i32, ptr %arrayidx111, align 4, !tbaa !4
  %sub = sub nsw i32 %67, %70
  store i32 %sub, ptr %length, align 4, !tbaa !4
  %71 = load i32, ptr %length, align 4, !tbaa !4
  %cmp112 = icmp slt i32 %71, 0
  br i1 %cmp112, label %if.then114, label %if.end120

if.then114:                                       ; preds = %for.body107
  %72 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp115 = icmp ne ptr %72, null
  br i1 %cmp115, label %if.then117, label %if.end119

if.then117:                                       ; preds = %if.then114
  %73 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %74 = load ptr, ptr %vector_kind, align 8, !tbaa !8
  %75 = load i32, ptr %k, align 4, !tbaa !4
  %call118 = call i32 (ptr, ...) %73(ptr noundef @.str.12, ptr noundef %74, i32 noundef %75)
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %if.then114
  store i32 -8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end120:                                        ; preds = %for.body107
  br label %for.inc121

for.inc121:                                       ; preds = %if.end120
  %76 = load i32, ptr %k, align 4, !tbaa !4
  %inc122 = add nsw i32 %76, 1
  store i32 %inc122, ptr %k, align 4, !tbaa !4
  br label %for.cond104, !llvm.loop !16

for.end123:                                       ; preds = %for.cond104
  %77 = load i32, ptr %prl, align 4, !tbaa !4
  store i32 %77, ptr %prl1, align 4, !tbaa !4
  store i32 0, ptr %k, align 4, !tbaa !4
  br label %for.cond124

for.cond124:                                      ; preds = %for.inc263, %for.end123
  %78 = load i32, ptr %k, align 4, !tbaa !4
  %79 = load i32, ptr %n, align 4, !tbaa !4
  %cmp125 = icmp slt i32 %78, %79
  br i1 %cmp125, label %for.body127, label %for.end265

for.body127:                                      ; preds = %for.cond124
  %80 = load i32, ptr %k, align 4, !tbaa !4
  %cmp128 = icmp slt i32 %80, 10
  br i1 %cmp128, label %if.then130, label %if.end131

if.then130:                                       ; preds = %for.body127
  %81 = load i32, ptr %prl1, align 4, !tbaa !4
  store i32 %81, ptr %prl, align 4, !tbaa !4
  br label %if.end131

if.end131:                                        ; preds = %if.then130, %for.body127
  %82 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %83 = load i32, ptr %k, align 4, !tbaa !4
  %idxprom132 = sext i32 %83 to i64
  %arrayidx133 = getelementptr inbounds i32, ptr %82, i64 %idxprom132
  %84 = load i32, ptr %arrayidx133, align 4, !tbaa !4
  store i32 %84, ptr %p1, align 4, !tbaa !4
  %85 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %86 = load i32, ptr %k, align 4, !tbaa !4
  %add134 = add nsw i32 %86, 1
  %idxprom135 = sext i32 %add134 to i64
  %arrayidx136 = getelementptr inbounds i32, ptr %85, i64 %idxprom135
  %87 = load i32, ptr %arrayidx136, align 4, !tbaa !4
  store i32 %87, ptr %p2, align 4, !tbaa !4
  %88 = load i32, ptr %p2, align 4, !tbaa !4
  %89 = load i32, ptr %p1, align 4, !tbaa !4
  %sub137 = sub nsw i32 %88, %89
  store i32 %sub137, ptr %length, align 4, !tbaa !4
  %90 = load i32, ptr %prl, align 4, !tbaa !4
  %cmp138 = icmp sge i32 %90, 4
  br i1 %cmp138, label %if.then140, label %if.end147

if.then140:                                       ; preds = %if.end131
  %91 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp141 = icmp ne ptr %91, null
  br i1 %cmp141, label %if.then143, label %if.end146

if.then143:                                       ; preds = %if.then140
  %92 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %93 = load ptr, ptr %vector_kind, align 8, !tbaa !8
  %94 = load i32, ptr %k, align 4, !tbaa !4
  %95 = load i32, ptr %p1, align 4, !tbaa !4
  %96 = load i32, ptr %p2, align 4, !tbaa !4
  %sub144 = sub nsw i32 %96, 1
  %97 = load i32, ptr %length, align 4, !tbaa !4
  %call145 = call i32 (ptr, ...) %92(ptr noundef @.str.13, ptr noundef %93, i32 noundef %94, i32 noundef %95, i32 noundef %sub144, i32 noundef %97)
  br label %if.end146

if.end146:                                        ; preds = %if.then143, %if.then140
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %if.end131
  store i32 -1, ptr %ilast, align 4, !tbaa !4
  %98 = load i32, ptr %p1, align 4, !tbaa !4
  store i32 %98, ptr %p, align 4, !tbaa !4
  br label %for.cond148

for.cond148:                                      ; preds = %for.inc240, %if.end147
  %99 = load i32, ptr %p, align 4, !tbaa !4
  %100 = load i32, ptr %p2, align 4, !tbaa !4
  %cmp149 = icmp slt i32 %99, %100
  br i1 %cmp149, label %for.body151, label %for.end242

for.body151:                                      ; preds = %for.cond148
  %101 = load ptr, ptr %Ai.addr, align 8, !tbaa !8
  %102 = load i32, ptr %p, align 4, !tbaa !4
  %idxprom152 = sext i32 %102 to i64
  %arrayidx153 = getelementptr inbounds i32, ptr %101, i64 %idxprom152
  %103 = load i32, ptr %arrayidx153, align 4, !tbaa !4
  store i32 %103, ptr %i, align 4, !tbaa !4
  %104 = load i32, ptr %prl, align 4, !tbaa !4
  %cmp154 = icmp sge i32 %104, 4
  br i1 %cmp154, label %if.then156, label %if.end162

if.then156:                                       ; preds = %for.body151
  %105 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp157 = icmp ne ptr %105, null
  br i1 %cmp157, label %if.then159, label %if.end161

if.then159:                                       ; preds = %if.then156
  %106 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %107 = load ptr, ptr %index_kind, align 8, !tbaa !8
  %108 = load i32, ptr %i, align 4, !tbaa !4
  %call160 = call i32 (ptr, ...) %106(ptr noundef @.str.14, ptr noundef %107, i32 noundef %108)
  br label %if.end161

if.end161:                                        ; preds = %if.then159, %if.then156
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %for.body151
  %109 = load i32, ptr %do_values, align 4, !tbaa !4
  %tobool163 = icmp ne i32 %109, 0
  br i1 %tobool163, label %land.lhs.true, label %if.end189

land.lhs.true:                                    ; preds = %if.end162
  %110 = load i32, ptr %prl, align 4, !tbaa !4
  %cmp164 = icmp sge i32 %110, 4
  br i1 %cmp164, label %if.then166, label %if.end189

if.then166:                                       ; preds = %land.lhs.true
  %111 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp167 = icmp ne ptr %111, null
  br i1 %cmp167, label %if.then169, label %if.end171

if.then169:                                       ; preds = %if.then166
  %112 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call170 = call i32 (ptr, ...) %112(ptr noundef @.str.15)
  br label %if.end171

if.end171:                                        ; preds = %if.then169, %if.then166
  %113 = load ptr, ptr %Ax.addr, align 8, !tbaa !8
  %114 = load i32, ptr %p, align 4, !tbaa !4
  %idxprom172 = sext i32 %114 to i64
  %arrayidx173 = getelementptr inbounds double, ptr %113, i64 %idxprom172
  %115 = load double, ptr %arrayidx173, align 8, !tbaa !10
  store double %115, ptr %a, align 8, !tbaa !10
  %116 = load double, ptr %a, align 8, !tbaa !10
  %cmp174 = fcmp une double %116, 0.000000e+00
  br i1 %cmp174, label %if.then176, label %if.else182

if.then176:                                       ; preds = %if.end171
  %117 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp177 = icmp ne ptr %117, null
  br i1 %cmp177, label %if.then179, label %if.end181

if.then179:                                       ; preds = %if.then176
  %118 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %119 = load double, ptr %a, align 8, !tbaa !10
  %call180 = call i32 (ptr, ...) %118(ptr noundef @.str.16, double noundef %119)
  br label %if.end181

if.end181:                                        ; preds = %if.then179, %if.then176
  br label %if.end188

if.else182:                                       ; preds = %if.end171
  %120 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp183 = icmp ne ptr %120, null
  br i1 %cmp183, label %if.then185, label %if.end187

if.then185:                                       ; preds = %if.else182
  %121 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call186 = call i32 (ptr, ...) %121(ptr noundef @.str.17)
  br label %if.end187

if.end187:                                        ; preds = %if.then185, %if.else182
  br label %if.end188

if.end188:                                        ; preds = %if.end187, %if.end181
  br label %if.end189

if.end189:                                        ; preds = %if.end188, %land.lhs.true, %if.end162
  %122 = load i32, ptr %i, align 4, !tbaa !4
  %cmp190 = icmp slt i32 %122, 0
  br i1 %cmp190, label %if.then195, label %lor.lhs.false192

lor.lhs.false192:                                 ; preds = %if.end189
  %123 = load i32, ptr %i, align 4, !tbaa !4
  %124 = load i32, ptr %n_i, align 4, !tbaa !4
  %cmp193 = icmp sge i32 %123, %124
  br i1 %cmp193, label %if.then195, label %if.end201

if.then195:                                       ; preds = %lor.lhs.false192, %if.end189
  %125 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp196 = icmp ne ptr %125, null
  br i1 %cmp196, label %if.then198, label %if.end200

if.then198:                                       ; preds = %if.then195
  %126 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %127 = load ptr, ptr %index_kind, align 8, !tbaa !8
  %128 = load i32, ptr %i, align 4, !tbaa !4
  %129 = load ptr, ptr %vector_kind, align 8, !tbaa !8
  %130 = load i32, ptr %k, align 4, !tbaa !4
  %call199 = call i32 (ptr, ...) %126(ptr noundef @.str.18, ptr noundef %127, i32 noundef %128, ptr noundef %129, i32 noundef %130)
  br label %if.end200

if.end200:                                        ; preds = %if.then198, %if.then195
  store i32 -8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end201:                                        ; preds = %lor.lhs.false192
  %131 = load i32, ptr %i, align 4, !tbaa !4
  %132 = load i32, ptr %ilast, align 4, !tbaa !4
  %cmp202 = icmp sle i32 %131, %132
  br i1 %cmp202, label %if.then204, label %if.end210

if.then204:                                       ; preds = %if.end201
  %133 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp205 = icmp ne ptr %133, null
  br i1 %cmp205, label %if.then207, label %if.end209

if.then207:                                       ; preds = %if.then204
  %134 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %135 = load ptr, ptr %index_kind, align 8, !tbaa !8
  %136 = load i32, ptr %i, align 4, !tbaa !4
  %137 = load ptr, ptr %vector_kind, align 8, !tbaa !8
  %138 = load i32, ptr %k, align 4, !tbaa !4
  %call208 = call i32 (ptr, ...) %134(ptr noundef @.str.19, ptr noundef %135, i32 noundef %136, ptr noundef %137, i32 noundef %138)
  br label %if.end209

if.end209:                                        ; preds = %if.then207, %if.then204
  store i32 -8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end210:                                        ; preds = %if.end201
  %139 = load i32, ptr %prl, align 4, !tbaa !4
  %cmp211 = icmp sge i32 %139, 4
  br i1 %cmp211, label %if.then213, label %if.end219

if.then213:                                       ; preds = %if.end210
  %140 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp214 = icmp ne ptr %140, null
  br i1 %cmp214, label %if.then216, label %if.end218

if.then216:                                       ; preds = %if.then213
  %141 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call217 = call i32 (ptr, ...) %141(ptr noundef @.str.9)
  br label %if.end218

if.end218:                                        ; preds = %if.then216, %if.then213
  br label %if.end219

if.end219:                                        ; preds = %if.end218, %if.end210
  %142 = load i32, ptr %prl, align 4, !tbaa !4
  %cmp220 = icmp eq i32 %142, 4
  br i1 %cmp220, label %land.lhs.true222, label %if.end239

land.lhs.true222:                                 ; preds = %if.end219
  %143 = load i32, ptr %p, align 4, !tbaa !4
  %144 = load i32, ptr %p1, align 4, !tbaa !4
  %sub223 = sub nsw i32 %143, %144
  %cmp224 = icmp eq i32 %sub223, 9
  br i1 %cmp224, label %land.lhs.true226, label %if.end239

land.lhs.true226:                                 ; preds = %land.lhs.true222
  %145 = load i32, ptr %length, align 4, !tbaa !4
  %cmp227 = icmp sgt i32 %145, 10
  br i1 %cmp227, label %if.then229, label %if.end239

if.then229:                                       ; preds = %land.lhs.true226
  %146 = load i32, ptr %prl, align 4, !tbaa !4
  %cmp230 = icmp sge i32 %146, 4
  br i1 %cmp230, label %if.then232, label %if.end238

if.then232:                                       ; preds = %if.then229
  %147 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp233 = icmp ne ptr %147, null
  br i1 %cmp233, label %if.then235, label %if.end237

if.then235:                                       ; preds = %if.then232
  %148 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call236 = call i32 (ptr, ...) %148(ptr noundef @.str.20)
  br label %if.end237

if.end237:                                        ; preds = %if.then235, %if.then232
  br label %if.end238

if.end238:                                        ; preds = %if.end237, %if.then229
  %149 = load i32, ptr %prl, align 4, !tbaa !4
  %dec = add nsw i32 %149, -1
  store i32 %dec, ptr %prl, align 4, !tbaa !4
  br label %if.end239

if.end239:                                        ; preds = %if.end238, %land.lhs.true226, %land.lhs.true222, %if.end219
  %150 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %150, ptr %ilast, align 4, !tbaa !4
  br label %for.inc240

for.inc240:                                       ; preds = %if.end239
  %151 = load i32, ptr %p, align 4, !tbaa !4
  %inc241 = add nsw i32 %151, 1
  store i32 %inc241, ptr %p, align 4, !tbaa !4
  br label %for.cond148, !llvm.loop !17

for.end242:                                       ; preds = %for.cond148
  %152 = load i32, ptr %prl, align 4, !tbaa !4
  %cmp243 = icmp eq i32 %152, 4
  br i1 %cmp243, label %land.lhs.true245, label %if.end262

land.lhs.true245:                                 ; preds = %for.end242
  %153 = load i32, ptr %k, align 4, !tbaa !4
  %cmp246 = icmp eq i32 %153, 9
  br i1 %cmp246, label %land.lhs.true248, label %if.end262

land.lhs.true248:                                 ; preds = %land.lhs.true245
  %154 = load i32, ptr %n, align 4, !tbaa !4
  %cmp249 = icmp sgt i32 %154, 10
  br i1 %cmp249, label %if.then251, label %if.end262

if.then251:                                       ; preds = %land.lhs.true248
  %155 = load i32, ptr %prl, align 4, !tbaa !4
  %cmp252 = icmp sge i32 %155, 4
  br i1 %cmp252, label %if.then254, label %if.end260

if.then254:                                       ; preds = %if.then251
  %156 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp255 = icmp ne ptr %156, null
  br i1 %cmp255, label %if.then257, label %if.end259

if.then257:                                       ; preds = %if.then254
  %157 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call258 = call i32 (ptr, ...) %157(ptr noundef @.str.21)
  br label %if.end259

if.end259:                                        ; preds = %if.then257, %if.then254
  br label %if.end260

if.end260:                                        ; preds = %if.end259, %if.then251
  %158 = load i32, ptr %prl, align 4, !tbaa !4
  %dec261 = add nsw i32 %158, -1
  store i32 %dec261, ptr %prl, align 4, !tbaa !4
  br label %if.end262

if.end262:                                        ; preds = %if.end260, %land.lhs.true248, %land.lhs.true245, %for.end242
  br label %for.inc263

for.inc263:                                       ; preds = %if.end262
  %159 = load i32, ptr %k, align 4, !tbaa !4
  %inc264 = add nsw i32 %159, 1
  store i32 %inc264, ptr %k, align 4, !tbaa !4
  br label %for.cond124, !llvm.loop !18

for.end265:                                       ; preds = %for.cond124
  %160 = load i32, ptr %prl1, align 4, !tbaa !4
  store i32 %160, ptr %prl, align 4, !tbaa !4
  %161 = load i32, ptr %prl, align 4, !tbaa !4
  %cmp266 = icmp sge i32 %161, 4
  br i1 %cmp266, label %if.then268, label %if.end274

if.then268:                                       ; preds = %for.end265
  %162 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp269 = icmp ne ptr %162, null
  br i1 %cmp269, label %if.then271, label %if.end273

if.then271:                                       ; preds = %if.then268
  %163 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %164 = load ptr, ptr %vector_kind, align 8, !tbaa !8
  %call272 = call i32 (ptr, ...) %163(ptr noundef @.str.22, ptr noundef %164)
  br label %if.end273

if.end273:                                        ; preds = %if.then271, %if.then268
  br label %if.end274

if.end274:                                        ; preds = %if.end273, %for.end265
  %165 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp275 = icmp ne ptr %165, null
  br i1 %cmp275, label %if.then277, label %if.end279

if.then277:                                       ; preds = %if.end274
  %166 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call278 = call i32 (ptr, ...) %166(ptr noundef @.str.23)
  br label %if.end279

if.end279:                                        ; preds = %if.then277, %if.end274
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end279, %if.end209, %if.end200, %if.end119, %if.end102, %if.end91, %if.end67, %if.end59, %if.end48, %if.end33, %if.end25, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %index_kind) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %vector_kind) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %do_values) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_i) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %p2) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %p1) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %prl1) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %nz) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %ilast) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %prl) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #2
  %167 = load i32, ptr %retval, align 4
  ret i32 %167
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = !{!13, !9, i64 32}
!13 = !{!"SuiteSparse_config_struct", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
