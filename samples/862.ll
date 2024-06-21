; ModuleID = 'samples/862.bc'
source_filename = "../Source/umfpack_report_symbolic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SuiteSparse_config_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SymbolicType = type { double, double, double, double, double, double, double, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SuiteSparse_config = external global %struct.SuiteSparse_config_struct, align 8
@.str = private unnamed_addr constant [18 x i8] c"Symbolic object: \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"ERROR: invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"\0A    matrix to be factorized:\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"\09n_row: %d n_col: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"\09number of entries: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"    block size used for dense matrix kernels:   %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"    strategy used:                              \00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"symmetric\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"    ordering used:                              \00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"amd on A\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"user permutation\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"user function\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"metis on A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"unsymmetric\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"colamd on A\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"metis on A'A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"    performn column etree postorder:            \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"no\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"yes\0A\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"    prefer diagonal pivoting (attempt P=Q):     \00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"    variable-size part of Numeric object:\0A\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"\09minimum initial size (Units): %.20g  (MBytes): %.1f\0A\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"\09estimated peak size (Units):  %.20g  (MBytes): %.1f\0A\00", align 1
@.str.24 = private unnamed_addr constant [54 x i8] c"\09estimated final size (Units): %.20g  (MBytes): %.1f\0A\00", align 1
@.str.25 = private unnamed_addr constant [72 x i8] c"    symbolic factorization memory usage (Units): %.20g  (MBytes): %.1f\0A\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"    frontal matrices / supercolumns:\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"\09number of frontal chains: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"\09number of frontal matrices: %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"\09largest frontal matrix row dimension: %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"\09largest frontal matrix column dimension: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [52 x i8] c"\0A    Frontal chain: %d.  Frontal matrices %d to %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [52 x i8] c"\09Largest frontal matrix in Frontal chain: %d-by-%d\0A\00", align 1
@.str.33 = private unnamed_addr constant [53 x i8] c"\09Front: %d  pivot cols: %d (pivot columns %d to %d)\0A\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"\09    pivot row candidates: %d to %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"\09    leftmost descendant: %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"\09    1st new candidate row : %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"\09    parent:\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c" (none)\0A\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c" %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"\09...\0A\00", align 1
@.str.41 = private unnamed_addr constant [45 x i8] c"\09Front: %d placeholder for %d empty columns\0A\00", align 1
@.str.42 = private unnamed_addr constant [48 x i8] c"ERROR: out of memory to check Symbolic object\0A\0A\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"\0AInitial column permutation, Q1: \00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"\0AInitial row permutation, P1: \00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"    Symbolic object:  \00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"OK\0A\0A\00", align 1

; Function Attrs: uwtable
define i32 @umfpack_zi_report_symbolic(ptr noundef %SymbolicHandle, ptr noundef %Control) #0 {
entry:
  %retval = alloca i32, align 4
  %SymbolicHandle.addr = alloca ptr, align 8
  %Control.addr = alloca ptr, align 8
  %n_row = alloca i32, align 4
  %n_col = alloca i32, align 4
  %nz = alloca i32, align 4
  %nchains = alloca i32, align 4
  %nfr = alloca i32, align 4
  %maxnrows = alloca i32, align 4
  %maxncols = alloca i32, align 4
  %prl = alloca i32, align 4
  %k = alloca i32, align 4
  %chain = alloca i32, align 4
  %frontid = alloca i32, align 4
  %frontid1 = alloca i32, align 4
  %frontid2 = alloca i32, align 4
  %kk = alloca i32, align 4
  %Chain_start = alloca ptr, align 8
  %W = alloca ptr, align 8
  %Chain_maxrows = alloca ptr, align 8
  %Chain_maxcols = alloca ptr, align 8
  %Front_npivcol = alloca ptr, align 8
  %Front_1strow = alloca ptr, align 8
  %Front_leftmostdesc = alloca ptr, align 8
  %Front_parent = alloca ptr, align 8
  %done = alloca i32, align 4
  %status1 = alloca i32, align 4
  %status2 = alloca i32, align 4
  %Symbolic = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %SymbolicHandle, ptr %SymbolicHandle.addr, align 8, !tbaa !4
  store ptr %Control, ptr %Control.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_row) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_col) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nz) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nchains) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nfr) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxnrows) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxncols) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %prl) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %chain) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %frontid) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %frontid1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %frontid2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %kk) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Chain_start) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %W) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Chain_maxrows) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Chain_maxcols) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Front_npivcol) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Front_1strow) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Front_leftmostdesc) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Front_parent) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %done) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %status1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %status2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Symbolic) #3
  %0 = load ptr, ptr %Control.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %cond.true, label %cond.false5

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %Control.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds double, ptr %1, i64 0
  %2 = load double, ptr %arrayidx, align 8, !tbaa !8
  %3 = load ptr, ptr %Control.addr, align 8, !tbaa !4
  %arrayidx1 = getelementptr inbounds double, ptr %3, i64 0
  %4 = load double, ptr %arrayidx1, align 8, !tbaa !8
  %cmp2 = fcmp une double %2, %4
  br i1 %cmp2, label %cond.true3, label %cond.false

cond.true3:                                       ; preds = %cond.true
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %5 = load ptr, ptr %Control.addr, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds double, ptr %5, i64 0
  %6 = load double, ptr %arrayidx4, align 8, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true3
  %cond = phi double [ 1.000000e+00, %cond.true3 ], [ %6, %cond.false ]
  br label %cond.end6

cond.false5:                                      ; preds = %entry
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.end
  %cond7 = phi double [ %cond, %cond.end ], [ 1.000000e+00, %cond.false5 ]
  %conv = fptosi double %cond7 to i32
  store i32 %conv, ptr %prl, align 4, !tbaa !10
  %7 = load i32, ptr %prl, align 4, !tbaa !10
  %cmp8 = icmp sle i32 %7, 2
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end6
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %cond.end6
  %8 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp10 = icmp ne ptr %8, null
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  %9 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call = call i32 (ptr, ...) %9(ptr noundef @.str)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end
  %10 = load ptr, ptr %SymbolicHandle.addr, align 8, !tbaa !4
  store ptr %10, ptr %Symbolic, align 8, !tbaa !4
  %11 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %call14 = call i32 @umfzi_valid_symbolic(ptr noundef %11)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.end21, label %if.then15

if.then15:                                        ; preds = %if.end13
  %12 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp16 = icmp ne ptr %12, null
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.then15
  %13 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call19 = call i32 (ptr, ...) %13(ptr noundef @.str.1)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then15
  store i32 -4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %14 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %n_row22 = getelementptr inbounds %struct.SymbolicType, ptr %14, i32 0, i32 30
  %15 = load i32, ptr %n_row22, align 8, !tbaa !14
  store i32 %15, ptr %n_row, align 4, !tbaa !10
  %16 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %n_col23 = getelementptr inbounds %struct.SymbolicType, ptr %16, i32 0, i32 31
  %17 = load i32, ptr %n_col23, align 4, !tbaa !16
  store i32 %17, ptr %n_col, align 4, !tbaa !10
  %18 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %nz24 = getelementptr inbounds %struct.SymbolicType, ptr %18, i32 0, i32 32
  %19 = load i32, ptr %nz24, align 8, !tbaa !17
  store i32 %19, ptr %nz, align 4, !tbaa !10
  %20 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %nchains25 = getelementptr inbounds %struct.SymbolicType, ptr %20, i32 0, i32 9
  %21 = load i32, ptr %nchains25, align 8, !tbaa !18
  store i32 %21, ptr %nchains, align 4, !tbaa !10
  %22 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %nfr26 = getelementptr inbounds %struct.SymbolicType, ptr %22, i32 0, i32 29
  %23 = load i32, ptr %nfr26, align 4, !tbaa !19
  store i32 %23, ptr %nfr, align 4, !tbaa !10
  %24 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %maxnrows27 = getelementptr inbounds %struct.SymbolicType, ptr %24, i32 0, i32 13
  %25 = load i32, ptr %maxnrows27, align 8, !tbaa !20
  store i32 %25, ptr %maxnrows, align 4, !tbaa !10
  %26 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %maxncols28 = getelementptr inbounds %struct.SymbolicType, ptr %26, i32 0, i32 14
  %27 = load i32, ptr %maxncols28, align 4, !tbaa !21
  store i32 %27, ptr %maxncols, align 4, !tbaa !10
  %28 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %Chain_start29 = getelementptr inbounds %struct.SymbolicType, ptr %28, i32 0, i32 10
  %29 = load ptr, ptr %Chain_start29, align 8, !tbaa !22
  store ptr %29, ptr %Chain_start, align 8, !tbaa !4
  %30 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %Chain_maxrows30 = getelementptr inbounds %struct.SymbolicType, ptr %30, i32 0, i32 11
  %31 = load ptr, ptr %Chain_maxrows30, align 8, !tbaa !23
  store ptr %31, ptr %Chain_maxrows, align 8, !tbaa !4
  %32 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %Chain_maxcols31 = getelementptr inbounds %struct.SymbolicType, ptr %32, i32 0, i32 12
  %33 = load ptr, ptr %Chain_maxcols31, align 8, !tbaa !24
  store ptr %33, ptr %Chain_maxcols, align 8, !tbaa !4
  %34 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %Front_npivcol32 = getelementptr inbounds %struct.SymbolicType, ptr %34, i32 0, i32 15
  %35 = load ptr, ptr %Front_npivcol32, align 8, !tbaa !25
  store ptr %35, ptr %Front_npivcol, align 8, !tbaa !4
  %36 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %Front_1strow33 = getelementptr inbounds %struct.SymbolicType, ptr %36, i32 0, i32 16
  %37 = load ptr, ptr %Front_1strow33, align 8, !tbaa !26
  store ptr %37, ptr %Front_1strow, align 8, !tbaa !4
  %38 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %Front_leftmostdesc34 = getelementptr inbounds %struct.SymbolicType, ptr %38, i32 0, i32 17
  %39 = load ptr, ptr %Front_leftmostdesc34, align 8, !tbaa !27
  store ptr %39, ptr %Front_leftmostdesc, align 8, !tbaa !4
  %40 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %Front_parent35 = getelementptr inbounds %struct.SymbolicType, ptr %40, i32 0, i32 18
  %41 = load ptr, ptr %Front_parent35, align 8, !tbaa !28
  store ptr %41, ptr %Front_parent, align 8, !tbaa !4
  %42 = load i32, ptr %prl, align 4, !tbaa !10
  %cmp36 = icmp sge i32 %42, 4
  br i1 %cmp36, label %if.then38, label %if.end276

if.then38:                                        ; preds = %if.end21
  %43 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp39 = icmp ne ptr %43, null
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.then38
  %44 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call42 = call i32 (ptr, ...) %44(ptr noundef @.str.2)
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.then38
  %45 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp44 = icmp ne ptr %45, null
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end43
  %46 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %47 = load i32, ptr %n_row, align 4, !tbaa !10
  %48 = load i32, ptr %n_col, align 4, !tbaa !10
  %call47 = call i32 (ptr, ...) %46(ptr noundef @.str.3, i32 noundef %47, i32 noundef %48)
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end43
  %49 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp49 = icmp ne ptr %49, null
  br i1 %cmp49, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end48
  %50 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %51 = load i32, ptr %nz, align 4, !tbaa !10
  %call52 = call i32 (ptr, ...) %50(ptr noundef @.str.4, i32 noundef %51)
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end48
  %52 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp54 = icmp ne ptr %52, null
  br i1 %cmp54, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.end53
  %53 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %54 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %nb = getelementptr inbounds %struct.SymbolicType, ptr %54, i32 0, i32 33
  %55 = load i32, ptr %nb, align 4, !tbaa !29
  %call57 = call i32 (ptr, ...) %53(ptr noundef @.str.5, i32 noundef %55)
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end53
  %56 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp59 = icmp ne ptr %56, null
  br i1 %cmp59, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.end58
  %57 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call62 = call i32 (ptr, ...) %57(ptr noundef @.str.6)
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end58
  %58 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %strategy = getelementptr inbounds %struct.SymbolicType, ptr %58, i32 0, i32 37
  %59 = load i32, ptr %strategy, align 4, !tbaa !30
  %cmp64 = icmp eq i32 %59, 3
  br i1 %cmp64, label %if.then66, label %if.else118

if.then66:                                        ; preds = %if.end63
  %60 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp67 = icmp ne ptr %60, null
  br i1 %cmp67, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.then66
  %61 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call70 = call i32 (ptr, ...) %61(ptr noundef @.str.7)
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.then66
  %62 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp72 = icmp ne ptr %62, null
  br i1 %cmp72, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.end71
  %63 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call75 = call i32 (ptr, ...) %63(ptr noundef @.str.8)
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.end71
  %64 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %ordering = getelementptr inbounds %struct.SymbolicType, ptr %64, i32 0, i32 38
  %65 = load i32, ptr %ordering, align 8, !tbaa !31
  %cmp77 = icmp eq i32 %65, 1
  br i1 %cmp77, label %if.then79, label %if.else

if.then79:                                        ; preds = %if.end76
  %66 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp80 = icmp ne ptr %66, null
  br i1 %cmp80, label %if.then82, label %if.end84

if.then82:                                        ; preds = %if.then79
  %67 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call83 = call i32 (ptr, ...) %67(ptr noundef @.str.9)
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %if.then79
  br label %if.end117

if.else:                                          ; preds = %if.end76
  %68 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %ordering85 = getelementptr inbounds %struct.SymbolicType, ptr %68, i32 0, i32 38
  %69 = load i32, ptr %ordering85, align 8, !tbaa !31
  %cmp86 = icmp eq i32 %69, 2
  br i1 %cmp86, label %if.then88, label %if.else94

if.then88:                                        ; preds = %if.else
  %70 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp89 = icmp ne ptr %70, null
  br i1 %cmp89, label %if.then91, label %if.end93

if.then91:                                        ; preds = %if.then88
  %71 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call92 = call i32 (ptr, ...) %71(ptr noundef @.str.10)
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.then88
  br label %if.end116

if.else94:                                        ; preds = %if.else
  %72 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %ordering95 = getelementptr inbounds %struct.SymbolicType, ptr %72, i32 0, i32 38
  %73 = load i32, ptr %ordering95, align 8, !tbaa !31
  %cmp96 = icmp eq i32 %73, 6
  br i1 %cmp96, label %if.then98, label %if.else104

if.then98:                                        ; preds = %if.else94
  %74 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp99 = icmp ne ptr %74, null
  br i1 %cmp99, label %if.then101, label %if.end103

if.then101:                                       ; preds = %if.then98
  %75 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call102 = call i32 (ptr, ...) %75(ptr noundef @.str.11)
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %if.then98
  br label %if.end115

if.else104:                                       ; preds = %if.else94
  %76 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %ordering105 = getelementptr inbounds %struct.SymbolicType, ptr %76, i32 0, i32 38
  %77 = load i32, ptr %ordering105, align 8, !tbaa !31
  %cmp106 = icmp eq i32 %77, 3
  br i1 %cmp106, label %if.then108, label %if.end114

if.then108:                                       ; preds = %if.else104
  %78 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp109 = icmp ne ptr %78, null
  br i1 %cmp109, label %if.then111, label %if.end113

if.then111:                                       ; preds = %if.then108
  %79 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call112 = call i32 (ptr, ...) %79(ptr noundef @.str.12)
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.then108
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %if.else104
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.end103
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.end93
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.end84
  br label %if.end172

if.else118:                                       ; preds = %if.end63
  %80 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp119 = icmp ne ptr %80, null
  br i1 %cmp119, label %if.then121, label %if.end123

if.then121:                                       ; preds = %if.else118
  %81 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call122 = call i32 (ptr, ...) %81(ptr noundef @.str.13)
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %if.else118
  %82 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp124 = icmp ne ptr %82, null
  br i1 %cmp124, label %if.then126, label %if.end128

if.then126:                                       ; preds = %if.end123
  %83 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call127 = call i32 (ptr, ...) %83(ptr noundef @.str.8)
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %if.end123
  %84 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %ordering129 = getelementptr inbounds %struct.SymbolicType, ptr %84, i32 0, i32 38
  %85 = load i32, ptr %ordering129, align 8, !tbaa !31
  %cmp130 = icmp eq i32 %85, 1
  br i1 %cmp130, label %if.then132, label %if.else138

if.then132:                                       ; preds = %if.end128
  %86 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp133 = icmp ne ptr %86, null
  br i1 %cmp133, label %if.then135, label %if.end137

if.then135:                                       ; preds = %if.then132
  %87 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call136 = call i32 (ptr, ...) %87(ptr noundef @.str.14)
  br label %if.end137

if.end137:                                        ; preds = %if.then135, %if.then132
  br label %if.end171

if.else138:                                       ; preds = %if.end128
  %88 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %ordering139 = getelementptr inbounds %struct.SymbolicType, ptr %88, i32 0, i32 38
  %89 = load i32, ptr %ordering139, align 8, !tbaa !31
  %cmp140 = icmp eq i32 %89, 2
  br i1 %cmp140, label %if.then142, label %if.else148

if.then142:                                       ; preds = %if.else138
  %90 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp143 = icmp ne ptr %90, null
  br i1 %cmp143, label %if.then145, label %if.end147

if.then145:                                       ; preds = %if.then142
  %91 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call146 = call i32 (ptr, ...) %91(ptr noundef @.str.10)
  br label %if.end147

if.end147:                                        ; preds = %if.then145, %if.then142
  br label %if.end170

if.else148:                                       ; preds = %if.else138
  %92 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %ordering149 = getelementptr inbounds %struct.SymbolicType, ptr %92, i32 0, i32 38
  %93 = load i32, ptr %ordering149, align 8, !tbaa !31
  %cmp150 = icmp eq i32 %93, 6
  br i1 %cmp150, label %if.then152, label %if.else158

if.then152:                                       ; preds = %if.else148
  %94 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp153 = icmp ne ptr %94, null
  br i1 %cmp153, label %if.then155, label %if.end157

if.then155:                                       ; preds = %if.then152
  %95 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call156 = call i32 (ptr, ...) %95(ptr noundef @.str.11)
  br label %if.end157

if.end157:                                        ; preds = %if.then155, %if.then152
  br label %if.end169

if.else158:                                       ; preds = %if.else148
  %96 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %ordering159 = getelementptr inbounds %struct.SymbolicType, ptr %96, i32 0, i32 38
  %97 = load i32, ptr %ordering159, align 8, !tbaa !31
  %cmp160 = icmp eq i32 %97, 3
  br i1 %cmp160, label %if.then162, label %if.end168

if.then162:                                       ; preds = %if.else158
  %98 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp163 = icmp ne ptr %98, null
  br i1 %cmp163, label %if.then165, label %if.end167

if.then165:                                       ; preds = %if.then162
  %99 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call166 = call i32 (ptr, ...) %99(ptr noundef @.str.15)
  br label %if.end167

if.end167:                                        ; preds = %if.then165, %if.then162
  br label %if.end168

if.end168:                                        ; preds = %if.end167, %if.else158
  br label %if.end169

if.end169:                                        ; preds = %if.end168, %if.end157
  br label %if.end170

if.end170:                                        ; preds = %if.end169, %if.end147
  br label %if.end171

if.end171:                                        ; preds = %if.end170, %if.end137
  br label %if.end172

if.end172:                                        ; preds = %if.end171, %if.end117
  %100 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp173 = icmp ne ptr %100, null
  br i1 %cmp173, label %if.then175, label %if.end177

if.then175:                                       ; preds = %if.end172
  %101 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call176 = call i32 (ptr, ...) %101(ptr noundef @.str.16)
  br label %if.end177

if.end177:                                        ; preds = %if.then175, %if.end172
  %102 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp178 = icmp ne ptr %102, null
  br i1 %cmp178, label %if.then180, label %if.end182

if.then180:                                       ; preds = %if.end177
  %103 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call181 = call i32 (ptr, ...) %103(ptr noundef @.str.17)
  br label %if.end182

if.end182:                                        ; preds = %if.then180, %if.end177
  %104 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %fixQ = getelementptr inbounds %struct.SymbolicType, ptr %104, i32 0, i32 39
  %105 = load i32, ptr %fixQ, align 4, !tbaa !32
  %tobool183 = icmp ne i32 %105, 0
  br i1 %tobool183, label %if.then184, label %if.else190

if.then184:                                       ; preds = %if.end182
  %106 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp185 = icmp ne ptr %106, null
  br i1 %cmp185, label %if.then187, label %if.end189

if.then187:                                       ; preds = %if.then184
  %107 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call188 = call i32 (ptr, ...) %107(ptr noundef @.str.18)
  br label %if.end189

if.end189:                                        ; preds = %if.then187, %if.then184
  br label %if.end196

if.else190:                                       ; preds = %if.end182
  %108 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp191 = icmp ne ptr %108, null
  br i1 %cmp191, label %if.then193, label %if.end195

if.then193:                                       ; preds = %if.else190
  %109 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call194 = call i32 (ptr, ...) %109(ptr noundef @.str.19)
  br label %if.end195

if.end195:                                        ; preds = %if.then193, %if.else190
  br label %if.end196

if.end196:                                        ; preds = %if.end195, %if.end189
  %110 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp197 = icmp ne ptr %110, null
  br i1 %cmp197, label %if.then199, label %if.end201

if.then199:                                       ; preds = %if.end196
  %111 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call200 = call i32 (ptr, ...) %111(ptr noundef @.str.20)
  br label %if.end201

if.end201:                                        ; preds = %if.then199, %if.end196
  %112 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %prefer_diagonal = getelementptr inbounds %struct.SymbolicType, ptr %112, i32 0, i32 40
  %113 = load i32, ptr %prefer_diagonal, align 8, !tbaa !33
  %tobool202 = icmp ne i32 %113, 0
  br i1 %tobool202, label %if.then203, label %if.else209

if.then203:                                       ; preds = %if.end201
  %114 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp204 = icmp ne ptr %114, null
  br i1 %cmp204, label %if.then206, label %if.end208

if.then206:                                       ; preds = %if.then203
  %115 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call207 = call i32 (ptr, ...) %115(ptr noundef @.str.19)
  br label %if.end208

if.end208:                                        ; preds = %if.then206, %if.then203
  br label %if.end215

if.else209:                                       ; preds = %if.end201
  %116 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp210 = icmp ne ptr %116, null
  br i1 %cmp210, label %if.then212, label %if.end214

if.then212:                                       ; preds = %if.else209
  %117 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call213 = call i32 (ptr, ...) %117(ptr noundef @.str.18)
  br label %if.end214

if.end214:                                        ; preds = %if.then212, %if.else209
  br label %if.end215

if.end215:                                        ; preds = %if.end214, %if.end208
  %118 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp216 = icmp ne ptr %118, null
  br i1 %cmp216, label %if.then218, label %if.end220

if.then218:                                       ; preds = %if.end215
  %119 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call219 = call i32 (ptr, ...) %119(ptr noundef @.str.21)
  br label %if.end220

if.end220:                                        ; preds = %if.then218, %if.end215
  %120 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp221 = icmp ne ptr %120, null
  br i1 %cmp221, label %if.then223, label %if.end226

if.then223:                                       ; preds = %if.end220
  %121 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %122 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %dnum_mem_init_usage = getelementptr inbounds %struct.SymbolicType, ptr %122, i32 0, i32 4
  %123 = load double, ptr %dnum_mem_init_usage, align 8, !tbaa !34
  %124 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %dnum_mem_init_usage224 = getelementptr inbounds %struct.SymbolicType, ptr %124, i32 0, i32 4
  %125 = load double, ptr %dnum_mem_init_usage224, align 8, !tbaa !34
  %mul = fmul double %125, 8.000000e+00
  %div = fdiv double %mul, 0x4130000000000000
  %call225 = call i32 (ptr, ...) %121(ptr noundef @.str.22, double noundef %123, double noundef %div)
  br label %if.end226

if.end226:                                        ; preds = %if.then223, %if.end220
  %126 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp227 = icmp ne ptr %126, null
  br i1 %cmp227, label %if.then229, label %if.end234

if.then229:                                       ; preds = %if.end226
  %127 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %128 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %num_mem_usage_est = getelementptr inbounds %struct.SymbolicType, ptr %128, i32 0, i32 0
  %129 = load double, ptr %num_mem_usage_est, align 8, !tbaa !35
  %130 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %num_mem_usage_est230 = getelementptr inbounds %struct.SymbolicType, ptr %130, i32 0, i32 0
  %131 = load double, ptr %num_mem_usage_est230, align 8, !tbaa !35
  %mul231 = fmul double %131, 8.000000e+00
  %div232 = fdiv double %mul231, 0x4130000000000000
  %call233 = call i32 (ptr, ...) %127(ptr noundef @.str.23, double noundef %129, double noundef %div232)
  br label %if.end234

if.end234:                                        ; preds = %if.then229, %if.end226
  %132 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp235 = icmp ne ptr %132, null
  br i1 %cmp235, label %if.then237, label %if.end242

if.then237:                                       ; preds = %if.end234
  %133 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %134 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %num_mem_size_est = getelementptr inbounds %struct.SymbolicType, ptr %134, i32 0, i32 1
  %135 = load double, ptr %num_mem_size_est, align 8, !tbaa !36
  %136 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %num_mem_size_est238 = getelementptr inbounds %struct.SymbolicType, ptr %136, i32 0, i32 1
  %137 = load double, ptr %num_mem_size_est238, align 8, !tbaa !36
  %mul239 = fmul double %137, 8.000000e+00
  %div240 = fdiv double %mul239, 0x4130000000000000
  %call241 = call i32 (ptr, ...) %133(ptr noundef @.str.24, double noundef %135, double noundef %div240)
  br label %if.end242

if.end242:                                        ; preds = %if.then237, %if.end234
  %138 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp243 = icmp ne ptr %138, null
  br i1 %cmp243, label %if.then245, label %if.end250

if.then245:                                       ; preds = %if.end242
  %139 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %140 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %peak_sym_usage = getelementptr inbounds %struct.SymbolicType, ptr %140, i32 0, i32 2
  %141 = load double, ptr %peak_sym_usage, align 8, !tbaa !37
  %142 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %peak_sym_usage246 = getelementptr inbounds %struct.SymbolicType, ptr %142, i32 0, i32 2
  %143 = load double, ptr %peak_sym_usage246, align 8, !tbaa !37
  %mul247 = fmul double %143, 8.000000e+00
  %div248 = fdiv double %mul247, 0x4130000000000000
  %call249 = call i32 (ptr, ...) %139(ptr noundef @.str.25, double noundef %141, double noundef %div248)
  br label %if.end250

if.end250:                                        ; preds = %if.then245, %if.end242
  %144 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp251 = icmp ne ptr %144, null
  br i1 %cmp251, label %if.then253, label %if.end255

if.then253:                                       ; preds = %if.end250
  %145 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call254 = call i32 (ptr, ...) %145(ptr noundef @.str.26)
  br label %if.end255

if.end255:                                        ; preds = %if.then253, %if.end250
  %146 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp256 = icmp ne ptr %146, null
  br i1 %cmp256, label %if.then258, label %if.end260

if.then258:                                       ; preds = %if.end255
  %147 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %148 = load i32, ptr %nchains, align 4, !tbaa !10
  %call259 = call i32 (ptr, ...) %147(ptr noundef @.str.27, i32 noundef %148)
  br label %if.end260

if.end260:                                        ; preds = %if.then258, %if.end255
  %149 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp261 = icmp ne ptr %149, null
  br i1 %cmp261, label %if.then263, label %if.end265

if.then263:                                       ; preds = %if.end260
  %150 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %151 = load i32, ptr %nfr, align 4, !tbaa !10
  %call264 = call i32 (ptr, ...) %150(ptr noundef @.str.28, i32 noundef %151)
  br label %if.end265

if.end265:                                        ; preds = %if.then263, %if.end260
  %152 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp266 = icmp ne ptr %152, null
  br i1 %cmp266, label %if.then268, label %if.end270

if.then268:                                       ; preds = %if.end265
  %153 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %154 = load i32, ptr %maxnrows, align 4, !tbaa !10
  %call269 = call i32 (ptr, ...) %153(ptr noundef @.str.29, i32 noundef %154)
  br label %if.end270

if.end270:                                        ; preds = %if.then268, %if.end265
  %155 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp271 = icmp ne ptr %155, null
  br i1 %cmp271, label %if.then273, label %if.end275

if.then273:                                       ; preds = %if.end270
  %156 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %157 = load i32, ptr %maxncols, align 4, !tbaa !10
  %call274 = call i32 (ptr, ...) %156(ptr noundef @.str.30, i32 noundef %157)
  br label %if.end275

if.end275:                                        ; preds = %if.then273, %if.end270
  br label %if.end276

if.end276:                                        ; preds = %if.end275, %if.end21
  store i32 0, ptr %k, align 4, !tbaa !10
  store i32 0, ptr %done, align 4, !tbaa !10
  store i32 0, ptr %chain, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc436, %if.end276
  %158 = load i32, ptr %chain, align 4, !tbaa !10
  %159 = load i32, ptr %nchains, align 4, !tbaa !10
  %cmp277 = icmp slt i32 %158, %159
  br i1 %cmp277, label %for.body, label %for.end438

for.body:                                         ; preds = %for.cond
  %160 = load ptr, ptr %Chain_start, align 8, !tbaa !4
  %161 = load i32, ptr %chain, align 4, !tbaa !10
  %idxprom = sext i32 %161 to i64
  %arrayidx279 = getelementptr inbounds i32, ptr %160, i64 %idxprom
  %162 = load i32, ptr %arrayidx279, align 4, !tbaa !10
  store i32 %162, ptr %frontid1, align 4, !tbaa !10
  %163 = load ptr, ptr %Chain_start, align 8, !tbaa !4
  %164 = load i32, ptr %chain, align 4, !tbaa !10
  %add = add nsw i32 %164, 1
  %idxprom280 = sext i32 %add to i64
  %arrayidx281 = getelementptr inbounds i32, ptr %163, i64 %idxprom280
  %165 = load i32, ptr %arrayidx281, align 4, !tbaa !10
  %sub = sub nsw i32 %165, 1
  store i32 %sub, ptr %frontid2, align 4, !tbaa !10
  %166 = load i32, ptr %prl, align 4, !tbaa !10
  %cmp282 = icmp sge i32 %166, 4
  br i1 %cmp282, label %if.then284, label %if.end290

if.then284:                                       ; preds = %for.body
  %167 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp285 = icmp ne ptr %167, null
  br i1 %cmp285, label %if.then287, label %if.end289

if.then287:                                       ; preds = %if.then284
  %168 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %169 = load i32, ptr %chain, align 4, !tbaa !10
  %170 = load i32, ptr %frontid1, align 4, !tbaa !10
  %171 = load i32, ptr %frontid2, align 4, !tbaa !10
  %call288 = call i32 (ptr, ...) %168(ptr noundef @.str.31, i32 noundef %169, i32 noundef %170, i32 noundef %171)
  br label %if.end289

if.end289:                                        ; preds = %if.then287, %if.then284
  br label %if.end290

if.end290:                                        ; preds = %if.end289, %for.body
  %172 = load i32, ptr %prl, align 4, !tbaa !10
  %cmp291 = icmp sge i32 %172, 4
  br i1 %cmp291, label %if.then293, label %if.end303

if.then293:                                       ; preds = %if.end290
  %173 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp294 = icmp ne ptr %173, null
  br i1 %cmp294, label %if.then296, label %if.end302

if.then296:                                       ; preds = %if.then293
  %174 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %175 = load ptr, ptr %Chain_maxrows, align 8, !tbaa !4
  %176 = load i32, ptr %chain, align 4, !tbaa !10
  %idxprom297 = sext i32 %176 to i64
  %arrayidx298 = getelementptr inbounds i32, ptr %175, i64 %idxprom297
  %177 = load i32, ptr %arrayidx298, align 4, !tbaa !10
  %178 = load ptr, ptr %Chain_maxcols, align 8, !tbaa !4
  %179 = load i32, ptr %chain, align 4, !tbaa !10
  %idxprom299 = sext i32 %179 to i64
  %arrayidx300 = getelementptr inbounds i32, ptr %178, i64 %idxprom299
  %180 = load i32, ptr %arrayidx300, align 4, !tbaa !10
  %call301 = call i32 (ptr, ...) %174(ptr noundef @.str.32, i32 noundef %177, i32 noundef %180)
  br label %if.end302

if.end302:                                        ; preds = %if.then296, %if.then293
  br label %if.end303

if.end303:                                        ; preds = %if.end302, %if.end290
  %181 = load i32, ptr %frontid1, align 4, !tbaa !10
  store i32 %181, ptr %frontid, align 4, !tbaa !10
  br label %for.cond304

for.cond304:                                      ; preds = %for.inc, %if.end303
  %182 = load i32, ptr %frontid, align 4, !tbaa !10
  %183 = load i32, ptr %frontid2, align 4, !tbaa !10
  %cmp305 = icmp sle i32 %182, %183
  br i1 %cmp305, label %for.body307, label %for.end

for.body307:                                      ; preds = %for.cond304
  %184 = load ptr, ptr %Front_npivcol, align 8, !tbaa !4
  %185 = load i32, ptr %frontid, align 4, !tbaa !10
  %idxprom308 = sext i32 %185 to i64
  %arrayidx309 = getelementptr inbounds i32, ptr %184, i64 %idxprom308
  %186 = load i32, ptr %arrayidx309, align 4, !tbaa !10
  store i32 %186, ptr %kk, align 4, !tbaa !10
  %187 = load i32, ptr %prl, align 4, !tbaa !10
  %cmp310 = icmp sge i32 %187, 4
  br i1 %cmp310, label %if.then312, label %if.end320

if.then312:                                       ; preds = %for.body307
  %188 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp313 = icmp ne ptr %188, null
  br i1 %cmp313, label %if.then315, label %if.end319

if.then315:                                       ; preds = %if.then312
  %189 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %190 = load i32, ptr %frontid, align 4, !tbaa !10
  %191 = load i32, ptr %kk, align 4, !tbaa !10
  %192 = load i32, ptr %k, align 4, !tbaa !10
  %193 = load i32, ptr %k, align 4, !tbaa !10
  %194 = load i32, ptr %kk, align 4, !tbaa !10
  %add316 = add nsw i32 %193, %194
  %sub317 = sub nsw i32 %add316, 1
  %call318 = call i32 (ptr, ...) %189(ptr noundef @.str.33, i32 noundef %190, i32 noundef %191, i32 noundef %192, i32 noundef %sub317)
  br label %if.end319

if.end319:                                        ; preds = %if.then315, %if.then312
  br label %if.end320

if.end320:                                        ; preds = %if.end319, %for.body307
  %195 = load i32, ptr %prl, align 4, !tbaa !10
  %cmp321 = icmp sge i32 %195, 4
  br i1 %cmp321, label %if.then323, label %if.end337

if.then323:                                       ; preds = %if.end320
  %196 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp324 = icmp ne ptr %196, null
  br i1 %cmp324, label %if.then326, label %if.end336

if.then326:                                       ; preds = %if.then323
  %197 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %198 = load ptr, ptr %Front_1strow, align 8, !tbaa !4
  %199 = load ptr, ptr %Front_leftmostdesc, align 8, !tbaa !4
  %200 = load i32, ptr %frontid, align 4, !tbaa !10
  %idxprom327 = sext i32 %200 to i64
  %arrayidx328 = getelementptr inbounds i32, ptr %199, i64 %idxprom327
  %201 = load i32, ptr %arrayidx328, align 4, !tbaa !10
  %idxprom329 = sext i32 %201 to i64
  %arrayidx330 = getelementptr inbounds i32, ptr %198, i64 %idxprom329
  %202 = load i32, ptr %arrayidx330, align 4, !tbaa !10
  %203 = load ptr, ptr %Front_1strow, align 8, !tbaa !4
  %204 = load i32, ptr %frontid, align 4, !tbaa !10
  %add331 = add nsw i32 %204, 1
  %idxprom332 = sext i32 %add331 to i64
  %arrayidx333 = getelementptr inbounds i32, ptr %203, i64 %idxprom332
  %205 = load i32, ptr %arrayidx333, align 4, !tbaa !10
  %sub334 = sub nsw i32 %205, 1
  %call335 = call i32 (ptr, ...) %197(ptr noundef @.str.34, i32 noundef %202, i32 noundef %sub334)
  br label %if.end336

if.end336:                                        ; preds = %if.then326, %if.then323
  br label %if.end337

if.end337:                                        ; preds = %if.end336, %if.end320
  %206 = load i32, ptr %prl, align 4, !tbaa !10
  %cmp338 = icmp sge i32 %206, 4
  br i1 %cmp338, label %if.then340, label %if.end348

if.then340:                                       ; preds = %if.end337
  %207 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp341 = icmp ne ptr %207, null
  br i1 %cmp341, label %if.then343, label %if.end347

if.then343:                                       ; preds = %if.then340
  %208 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %209 = load ptr, ptr %Front_leftmostdesc, align 8, !tbaa !4
  %210 = load i32, ptr %frontid, align 4, !tbaa !10
  %idxprom344 = sext i32 %210 to i64
  %arrayidx345 = getelementptr inbounds i32, ptr %209, i64 %idxprom344
  %211 = load i32, ptr %arrayidx345, align 4, !tbaa !10
  %call346 = call i32 (ptr, ...) %208(ptr noundef @.str.35, i32 noundef %211)
  br label %if.end347

if.end347:                                        ; preds = %if.then343, %if.then340
  br label %if.end348

if.end348:                                        ; preds = %if.end347, %if.end337
  %212 = load i32, ptr %prl, align 4, !tbaa !10
  %cmp349 = icmp sge i32 %212, 4
  br i1 %cmp349, label %if.then351, label %if.end359

if.then351:                                       ; preds = %if.end348
  %213 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp352 = icmp ne ptr %213, null
  br i1 %cmp352, label %if.then354, label %if.end358

if.then354:                                       ; preds = %if.then351
  %214 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %215 = load ptr, ptr %Front_1strow, align 8, !tbaa !4
  %216 = load i32, ptr %frontid, align 4, !tbaa !10
  %idxprom355 = sext i32 %216 to i64
  %arrayidx356 = getelementptr inbounds i32, ptr %215, i64 %idxprom355
  %217 = load i32, ptr %arrayidx356, align 4, !tbaa !10
  %call357 = call i32 (ptr, ...) %214(ptr noundef @.str.36, i32 noundef %217)
  br label %if.end358

if.end358:                                        ; preds = %if.then354, %if.then351
  br label %if.end359

if.end359:                                        ; preds = %if.end358, %if.end348
  %218 = load i32, ptr %prl, align 4, !tbaa !10
  %cmp360 = icmp sge i32 %218, 4
  br i1 %cmp360, label %if.then362, label %if.end368

if.then362:                                       ; preds = %if.end359
  %219 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp363 = icmp ne ptr %219, null
  br i1 %cmp363, label %if.then365, label %if.end367

if.then365:                                       ; preds = %if.then362
  %220 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call366 = call i32 (ptr, ...) %220(ptr noundef @.str.37)
  br label %if.end367

if.end367:                                        ; preds = %if.then365, %if.then362
  br label %if.end368

if.end368:                                        ; preds = %if.end367, %if.end359
  %221 = load ptr, ptr %Front_parent, align 8, !tbaa !4
  %222 = load i32, ptr %frontid, align 4, !tbaa !10
  %idxprom369 = sext i32 %222 to i64
  %arrayidx370 = getelementptr inbounds i32, ptr %221, i64 %idxprom369
  %223 = load i32, ptr %arrayidx370, align 4, !tbaa !10
  %cmp371 = icmp eq i32 %223, -1
  br i1 %cmp371, label %if.then373, label %if.else383

if.then373:                                       ; preds = %if.end368
  %224 = load i32, ptr %prl, align 4, !tbaa !10
  %cmp374 = icmp sge i32 %224, 4
  br i1 %cmp374, label %if.then376, label %if.end382

if.then376:                                       ; preds = %if.then373
  %225 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp377 = icmp ne ptr %225, null
  br i1 %cmp377, label %if.then379, label %if.end381

if.then379:                                       ; preds = %if.then376
  %226 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call380 = call i32 (ptr, ...) %226(ptr noundef @.str.38)
  br label %if.end381

if.end381:                                        ; preds = %if.then379, %if.then376
  br label %if.end382

if.end382:                                        ; preds = %if.end381, %if.then373
  br label %if.end395

if.else383:                                       ; preds = %if.end368
  %227 = load i32, ptr %prl, align 4, !tbaa !10
  %cmp384 = icmp sge i32 %227, 4
  br i1 %cmp384, label %if.then386, label %if.end394

if.then386:                                       ; preds = %if.else383
  %228 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp387 = icmp ne ptr %228, null
  br i1 %cmp387, label %if.then389, label %if.end393

if.then389:                                       ; preds = %if.then386
  %229 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %230 = load ptr, ptr %Front_parent, align 8, !tbaa !4
  %231 = load i32, ptr %frontid, align 4, !tbaa !10
  %idxprom390 = sext i32 %231 to i64
  %arrayidx391 = getelementptr inbounds i32, ptr %230, i64 %idxprom390
  %232 = load i32, ptr %arrayidx391, align 4, !tbaa !10
  %call392 = call i32 (ptr, ...) %229(ptr noundef @.str.39, i32 noundef %232)
  br label %if.end393

if.end393:                                        ; preds = %if.then389, %if.then386
  br label %if.end394

if.end394:                                        ; preds = %if.end393, %if.else383
  br label %if.end395

if.end395:                                        ; preds = %if.end394, %if.end382
  %233 = load i32, ptr %frontid, align 4, !tbaa !10
  %cmp396 = icmp eq i32 %233, 20
  br i1 %cmp396, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end395
  %234 = load i32, ptr %frontid, align 4, !tbaa !10
  %235 = load i32, ptr %nfr, align 4, !tbaa !10
  %sub398 = sub nsw i32 %235, 1
  %cmp399 = icmp slt i32 %234, %sub398
  br i1 %cmp399, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %236 = load i32, ptr %prl, align 4, !tbaa !10
  %cmp401 = icmp eq i32 %236, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.end395
  %237 = phi i1 [ false, %land.lhs.true ], [ false, %if.end395 ], [ %cmp401, %land.rhs ]
  %land.ext = zext i1 %237 to i32
  store i32 %land.ext, ptr %done, align 4, !tbaa !10
  %238 = load i32, ptr %done, align 4, !tbaa !10
  %tobool403 = icmp ne i32 %238, 0
  br i1 %tobool403, label %if.then404, label %if.end414

if.then404:                                       ; preds = %land.end
  %239 = load i32, ptr %prl, align 4, !tbaa !10
  %cmp405 = icmp sge i32 %239, 4
  br i1 %cmp405, label %if.then407, label %if.end413

if.then407:                                       ; preds = %if.then404
  %240 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp408 = icmp ne ptr %240, null
  br i1 %cmp408, label %if.then410, label %if.end412

if.then410:                                       ; preds = %if.then407
  %241 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call411 = call i32 (ptr, ...) %241(ptr noundef @.str.40)
  br label %if.end412

if.end412:                                        ; preds = %if.then410, %if.then407
  br label %if.end413

if.end413:                                        ; preds = %if.end412, %if.then404
  br label %for.end

if.end414:                                        ; preds = %land.end
  %242 = load i32, ptr %kk, align 4, !tbaa !10
  %243 = load i32, ptr %k, align 4, !tbaa !10
  %add415 = add nsw i32 %243, %242
  store i32 %add415, ptr %k, align 4, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %if.end414
  %244 = load i32, ptr %frontid, align 4, !tbaa !10
  %inc = add nsw i32 %244, 1
  store i32 %inc, ptr %frontid, align 4, !tbaa !10
  br label %for.cond304, !llvm.loop !38

for.end:                                          ; preds = %if.end413, %for.cond304
  %245 = load ptr, ptr %Front_npivcol, align 8, !tbaa !4
  %246 = load i32, ptr %nfr, align 4, !tbaa !10
  %idxprom416 = sext i32 %246 to i64
  %arrayidx417 = getelementptr inbounds i32, ptr %245, i64 %idxprom416
  %247 = load i32, ptr %arrayidx417, align 4, !tbaa !10
  %cmp418 = icmp ne i32 %247, 0
  br i1 %cmp418, label %if.then420, label %if.end432

if.then420:                                       ; preds = %for.end
  %248 = load i32, ptr %prl, align 4, !tbaa !10
  %cmp421 = icmp sge i32 %248, 4
  br i1 %cmp421, label %if.then423, label %if.end431

if.then423:                                       ; preds = %if.then420
  %249 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp424 = icmp ne ptr %249, null
  br i1 %cmp424, label %if.then426, label %if.end430

if.then426:                                       ; preds = %if.then423
  %250 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %251 = load i32, ptr %nfr, align 4, !tbaa !10
  %252 = load ptr, ptr %Front_npivcol, align 8, !tbaa !4
  %253 = load i32, ptr %nfr, align 4, !tbaa !10
  %idxprom427 = sext i32 %253 to i64
  %arrayidx428 = getelementptr inbounds i32, ptr %252, i64 %idxprom427
  %254 = load i32, ptr %arrayidx428, align 4, !tbaa !10
  %call429 = call i32 (ptr, ...) %250(ptr noundef @.str.41, i32 noundef %251, i32 noundef %254)
  br label %if.end430

if.end430:                                        ; preds = %if.then426, %if.then423
  br label %if.end431

if.end431:                                        ; preds = %if.end430, %if.then420
  br label %if.end432

if.end432:                                        ; preds = %if.end431, %for.end
  %255 = load i32, ptr %done, align 4, !tbaa !10
  %tobool433 = icmp ne i32 %255, 0
  br i1 %tobool433, label %if.then434, label %if.end435

if.then434:                                       ; preds = %if.end432
  br label %for.end438

if.end435:                                        ; preds = %if.end432
  br label %for.inc436

for.inc436:                                       ; preds = %if.end435
  %256 = load i32, ptr %chain, align 4, !tbaa !10
  %inc437 = add nsw i32 %256, 1
  store i32 %inc437, ptr %chain, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !40

for.end438:                                       ; preds = %if.then434, %for.cond
  %257 = load i32, ptr %n_row, align 4, !tbaa !10
  %258 = load i32, ptr %n_col, align 4, !tbaa !10
  %cmp439 = icmp sgt i32 %257, %258
  br i1 %cmp439, label %cond.true441, label %cond.false442

cond.true441:                                     ; preds = %for.end438
  %259 = load i32, ptr %n_row, align 4, !tbaa !10
  br label %cond.end443

cond.false442:                                    ; preds = %for.end438
  %260 = load i32, ptr %n_col, align 4, !tbaa !10
  br label %cond.end443

cond.end443:                                      ; preds = %cond.false442, %cond.true441
  %cond444 = phi i32 [ %259, %cond.true441 ], [ %260, %cond.false442 ]
  %call445 = call ptr @umf_i_malloc(i32 noundef %cond444, i64 noundef 4)
  store ptr %call445, ptr %W, align 8, !tbaa !4
  %261 = load ptr, ptr %W, align 8, !tbaa !4
  %tobool446 = icmp ne ptr %261, null
  br i1 %tobool446, label %if.end453, label %if.then447

if.then447:                                       ; preds = %cond.end443
  %262 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp448 = icmp ne ptr %262, null
  br i1 %cmp448, label %if.then450, label %if.end452

if.then450:                                       ; preds = %if.then447
  %263 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call451 = call i32 (ptr, ...) %263(ptr noundef @.str.42)
  br label %if.end452

if.end452:                                        ; preds = %if.then450, %if.then447
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end453:                                        ; preds = %cond.end443
  %264 = load i32, ptr %prl, align 4, !tbaa !10
  %cmp454 = icmp sge i32 %264, 4
  br i1 %cmp454, label %if.then456, label %if.end462

if.then456:                                       ; preds = %if.end453
  %265 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp457 = icmp ne ptr %265, null
  br i1 %cmp457, label %if.then459, label %if.end461

if.then459:                                       ; preds = %if.then456
  %266 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call460 = call i32 (ptr, ...) %266(ptr noundef @.str.43)
  br label %if.end461

if.end461:                                        ; preds = %if.then459, %if.then456
  br label %if.end462

if.end462:                                        ; preds = %if.end461, %if.end453
  %267 = load i32, ptr %n_col, align 4, !tbaa !10
  %268 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %Cperm_init = getelementptr inbounds %struct.SymbolicType, ptr %268, i32 0, i32 19
  %269 = load ptr, ptr %Cperm_init, align 8, !tbaa !41
  %270 = load ptr, ptr %W, align 8, !tbaa !4
  %271 = load i32, ptr %prl, align 4, !tbaa !10
  %call463 = call i32 @umf_i_report_perm(i32 noundef %267, ptr noundef %269, ptr noundef %270, i32 noundef %271, i32 noundef 0)
  store i32 %call463, ptr %status1, align 4, !tbaa !10
  %272 = load i32, ptr %prl, align 4, !tbaa !10
  %cmp464 = icmp sge i32 %272, 4
  br i1 %cmp464, label %if.then466, label %if.end472

if.then466:                                       ; preds = %if.end462
  %273 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp467 = icmp ne ptr %273, null
  br i1 %cmp467, label %if.then469, label %if.end471

if.then469:                                       ; preds = %if.then466
  %274 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call470 = call i32 (ptr, ...) %274(ptr noundef @.str.44)
  br label %if.end471

if.end471:                                        ; preds = %if.then469, %if.then466
  br label %if.end472

if.end472:                                        ; preds = %if.end471, %if.end462
  %275 = load i32, ptr %n_row, align 4, !tbaa !10
  %276 = load ptr, ptr %Symbolic, align 8, !tbaa !4
  %Rperm_init = getelementptr inbounds %struct.SymbolicType, ptr %276, i32 0, i32 20
  %277 = load ptr, ptr %Rperm_init, align 8, !tbaa !42
  %278 = load ptr, ptr %W, align 8, !tbaa !4
  %279 = load i32, ptr %prl, align 4, !tbaa !10
  %call473 = call i32 @umf_i_report_perm(i32 noundef %275, ptr noundef %277, ptr noundef %278, i32 noundef %279, i32 noundef 0)
  store i32 %call473, ptr %status2, align 4, !tbaa !10
  %280 = load ptr, ptr %W, align 8, !tbaa !4
  %call474 = call ptr @umf_i_free(ptr noundef %280)
  %281 = load i32, ptr %status1, align 4, !tbaa !10
  %cmp475 = icmp ne i32 %281, 0
  br i1 %cmp475, label %if.then479, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end472
  %282 = load i32, ptr %status2, align 4, !tbaa !10
  %cmp477 = icmp ne i32 %282, 0
  br i1 %cmp477, label %if.then479, label %if.end480

if.then479:                                       ; preds = %lor.lhs.false, %if.end472
  store i32 -4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end480:                                        ; preds = %lor.lhs.false
  %283 = load i32, ptr %prl, align 4, !tbaa !10
  %cmp481 = icmp sge i32 %283, 4
  br i1 %cmp481, label %if.then483, label %if.end489

if.then483:                                       ; preds = %if.end480
  %284 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp484 = icmp ne ptr %284, null
  br i1 %cmp484, label %if.then486, label %if.end488

if.then486:                                       ; preds = %if.then483
  %285 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call487 = call i32 (ptr, ...) %285(ptr noundef @.str.45)
  br label %if.end488

if.end488:                                        ; preds = %if.then486, %if.then483
  br label %if.end489

if.end489:                                        ; preds = %if.end488, %if.end480
  %286 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %cmp490 = icmp ne ptr %286, null
  br i1 %cmp490, label %if.then492, label %if.end494

if.then492:                                       ; preds = %if.end489
  %287 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !12
  %call493 = call i32 (ptr, ...) %287(ptr noundef @.str.46)
  br label %if.end494

if.end494:                                        ; preds = %if.then492, %if.end489
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end494, %if.then479, %if.end452, %if.end20, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %Symbolic) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %status2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %status1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %done) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Front_parent) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Front_leftmostdesc) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Front_1strow) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Front_npivcol) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Chain_maxcols) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Chain_maxrows) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %W) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Chain_start) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %kk) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %frontid2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %frontid1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %frontid) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %chain) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %prl) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxncols) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxnrows) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nfr) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nchains) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nz) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_col) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_row) #3
  %288 = load i32, ptr %retval, align 4
  ret i32 %288
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @umfzi_valid_symbolic(ptr noundef) #2

declare ptr @umf_i_malloc(i32 noundef, i64 noundef) #2

declare i32 @umf_i_report_perm(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare ptr @umf_i_free(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!13, !5, i64 32}
!13 = !{!"SuiteSparse_config_struct", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48}
!14 = !{!15, !11, i64 208}
!15 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !11, i64 56, !11, i64 60, !11, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !11, i64 96, !11, i64 100, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !11, i64 176, !11, i64 180, !11, i64 184, !5, i64 192, !11, i64 200, !11, i64 204, !11, i64 208, !11, i64 212, !11, i64 216, !11, i64 220, !11, i64 224, !11, i64 228, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !11, i64 248, !11, i64 252, !11, i64 256, !11, i64 260}
!16 = !{!15, !11, i64 212}
!17 = !{!15, !11, i64 216}
!18 = !{!15, !11, i64 64}
!19 = !{!15, !11, i64 204}
!20 = !{!15, !11, i64 96}
!21 = !{!15, !11, i64 100}
!22 = !{!15, !5, i64 72}
!23 = !{!15, !5, i64 80}
!24 = !{!15, !5, i64 88}
!25 = !{!15, !5, i64 104}
!26 = !{!15, !5, i64 112}
!27 = !{!15, !5, i64 120}
!28 = !{!15, !5, i64 128}
!29 = !{!15, !11, i64 220}
!30 = !{!15, !11, i64 236}
!31 = !{!15, !11, i64 240}
!32 = !{!15, !11, i64 244}
!33 = !{!15, !11, i64 248}
!34 = !{!15, !9, i64 32}
!35 = !{!15, !9, i64 0}
!36 = !{!15, !9, i64 8}
!37 = !{!15, !9, i64 16}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = distinct !{!40, !39}
!41 = !{!15, !5, i64 136}
!42 = !{!15, !5, i64 144}
