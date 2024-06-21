; ModuleID = 'samples/314.bc'
source_filename = "../Source/colamd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SuiteSparse_config_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Colamd_Col_struct = type { i32, i32, %union.anon, %union.anon.0, %union.anon.1, %union.anon.2 }
%union.anon = type { i32 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.2 = type { i32 }
%struct.Colamd_Row_struct = type { i32, i32, %union.anon.3, %union.anon.4 }
%union.anon.3 = type { i32 }
%union.anon.4 = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"colamd\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"symamd\00", align 1
@SuiteSparse_config = external global %struct.SuiteSparse_config_struct, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"\0A%s version %d.%d, %s: \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"May 4, 2016\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"No statistics available.\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"OK.  \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"ERROR.  \00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Matrix has unsorted or duplicate row indices.\0A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"%s: number of duplicate or out-of-order row indices: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"%s: last seen duplicate or out-of-order row index:   %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"%s: last seen in column:                             %d\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"%s: number of dense or empty rows ignored:           %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"%s: number of dense or empty columns ignored:        %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [57 x i8] c"%s: number of garbage collections performed:         %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"Array A (row indices of matrix) not present.\0A\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"Array p (column pointers for matrix) not present.\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Invalid number of rows (%d).\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"Invalid number of columns (%d).\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"Invalid number of nonzero entries (%d).\0A\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"Invalid column pointer, p [0] = %d, must be zero.\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Array A too small.\0A\00", align 1
@.str.22 = private unnamed_addr constant [52 x i8] c"        Need Alen >= %d, but given only Alen = %d.\0A\00", align 1
@.str.23 = private unnamed_addr constant [58 x i8] c"Column %d has a negative number of nonzero entries (%d).\0A\00", align 1
@.str.24 = private unnamed_addr constant [59 x i8] c"Row index (row %d) out of bounds (%d to %d) in column %d.\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1

; Function Attrs: uwtable
define i64 @colamd_recommended(i32 noundef %nnz, i32 noundef %n_row, i32 noundef %n_col) #0 {
entry:
  %retval = alloca i64, align 8
  %nnz.addr = alloca i32, align 4
  %n_row.addr = alloca i32, align 4
  %n_col.addr = alloca i32, align 4
  %s = alloca i64, align 8
  %c = alloca i64, align 8
  %r = alloca i64, align 8
  %ok = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %nnz, ptr %nnz.addr, align 4, !tbaa !4
  store i32 %n_row, ptr %n_row.addr, align 4, !tbaa !4
  store i32 %n_col, ptr %n_col.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ok) #4
  store i32 1, ptr %ok, align 4, !tbaa !4
  %0 = load i32, ptr %nnz.addr, align 4, !tbaa !4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %cmp3 = icmp slt i32 %2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load i32, ptr %nnz.addr, align 4, !tbaa !4
  %conv = sext i32 %3 to i64
  %call = call i64 @t_mult(i64 noundef %conv, i64 noundef 2, ptr noundef %ok)
  store i64 %call, ptr %s, align 8, !tbaa !8
  %4 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %conv4 = sext i32 %4 to i64
  %call5 = call i64 @t_add(i64 noundef %conv4, i64 noundef 1, ptr noundef %ok)
  %call6 = call i64 @t_mult(i64 noundef %call5, i64 noundef 24, ptr noundef %ok)
  %div = udiv i64 %call6, 4
  store i64 %div, ptr %c, align 8, !tbaa !8
  %5 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %conv7 = sext i32 %5 to i64
  %call8 = call i64 @t_add(i64 noundef %conv7, i64 noundef 1, ptr noundef %ok)
  %call9 = call i64 @t_mult(i64 noundef %call8, i64 noundef 16, ptr noundef %ok)
  %div10 = udiv i64 %call9, 4
  store i64 %div10, ptr %r, align 8, !tbaa !8
  %6 = load i64, ptr %s, align 8, !tbaa !8
  %7 = load i64, ptr %c, align 8, !tbaa !8
  %call11 = call i64 @t_add(i64 noundef %6, i64 noundef %7, ptr noundef %ok)
  store i64 %call11, ptr %s, align 8, !tbaa !8
  %8 = load i64, ptr %s, align 8, !tbaa !8
  %9 = load i64, ptr %r, align 8, !tbaa !8
  %call12 = call i64 @t_add(i64 noundef %8, i64 noundef %9, ptr noundef %ok)
  store i64 %call12, ptr %s, align 8, !tbaa !8
  %10 = load i64, ptr %s, align 8, !tbaa !8
  %11 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %conv13 = sext i32 %11 to i64
  %call14 = call i64 @t_add(i64 noundef %10, i64 noundef %conv13, ptr noundef %ok)
  store i64 %call14, ptr %s, align 8, !tbaa !8
  %12 = load i64, ptr %s, align 8, !tbaa !8
  %13 = load i32, ptr %nnz.addr, align 4, !tbaa !4
  %div15 = sdiv i32 %13, 5
  %conv16 = sext i32 %div15 to i64
  %call17 = call i64 @t_add(i64 noundef %12, i64 noundef %conv16, ptr noundef %ok)
  store i64 %call17, ptr %s, align 8, !tbaa !8
  %14 = load i32, ptr %ok, align 4, !tbaa !4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %15 = load i64, ptr %s, align 8, !tbaa !8
  %cmp18 = icmp ult i64 %15, 2147483647
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %16 = phi i1 [ false, %if.end ], [ %cmp18, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  store i32 %land.ext, ptr %ok, align 4, !tbaa !4
  %17 = load i32, ptr %ok, align 4, !tbaa !4
  %tobool20 = icmp ne i32 %17, 0
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  %18 = load i64, ptr %s, align 8, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %18, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ok) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #4
  %19 = load i64, ptr %retval, align 8
  ret i64 %19
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: uwtable
define internal i64 @t_mult(i64 noundef %a, i64 noundef %k, ptr noundef %ok) #0 {
entry:
  %a.addr = alloca i64, align 8
  %k.addr = alloca i64, align 8
  %ok.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %s = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !8
  store i64 %k, ptr %k.addr, align 8, !tbaa !8
  store ptr %ok, ptr %ok.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #4
  store i64 0, ptr %s, align 8, !tbaa !8
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !8
  %1 = load i64, ptr %k.addr, align 8, !tbaa !8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %s, align 8, !tbaa !8
  %3 = load i64, ptr %a.addr, align 8, !tbaa !8
  %4 = load ptr, ptr %ok.addr, align 8, !tbaa !10
  %call = call i64 @t_add(i64 noundef %2, i64 noundef %3, ptr noundef %4)
  store i64 %call, ptr %s, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64, ptr %i, align 8, !tbaa !8
  %inc = add i64 %5, 1
  store i64 %inc, ptr %i, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %6 = load i64, ptr %s, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #4
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal i64 @t_add(i64 noundef %a, i64 noundef %b, ptr noundef %ok) #2 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %ok.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !8
  store i64 %b, ptr %b.addr, align 8, !tbaa !8
  store ptr %ok, ptr %ok.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %ok.addr, align 8, !tbaa !10
  %1 = load i32, ptr %0, align 4, !tbaa !4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load i64, ptr %a.addr, align 8, !tbaa !8
  %3 = load i64, ptr %b.addr, align 8, !tbaa !8
  %add = add i64 %2, %3
  %4 = load i64, ptr %a.addr, align 8, !tbaa !8
  %5 = load i64, ptr %b.addr, align 8, !tbaa !8
  %cmp = icmp ugt i64 %4, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.rhs
  %6 = load i64, ptr %a.addr, align 8, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %land.rhs
  %7 = load i64, ptr %b.addr, align 8, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %7, %cond.false ]
  %cmp1 = icmp uge i64 %add, %cond
  br label %land.end

land.end:                                         ; preds = %cond.end, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp1, %cond.end ]
  %land.ext = zext i1 %8 to i32
  %9 = load ptr, ptr %ok.addr, align 8, !tbaa !10
  store i32 %land.ext, ptr %9, align 4, !tbaa !4
  %10 = load ptr, ptr %ok.addr, align 8, !tbaa !10
  %11 = load i32, ptr %10, align 4, !tbaa !4
  %tobool2 = icmp ne i32 %11, 0
  br i1 %tobool2, label %cond.true3, label %cond.false5

cond.true3:                                       ; preds = %land.end
  %12 = load i64, ptr %a.addr, align 8, !tbaa !8
  %13 = load i64, ptr %b.addr, align 8, !tbaa !8
  %add4 = add i64 %12, %13
  br label %cond.end6

cond.false5:                                      ; preds = %land.end
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.true3
  %cond7 = phi i64 [ %add4, %cond.true3 ], [ 0, %cond.false5 ]
  ret i64 %cond7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @colamd_set_defaults(ptr noundef %knobs) #2 {
entry:
  %knobs.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %knobs, ptr %knobs.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  %0 = load ptr, ptr %knobs.addr, align 8, !tbaa !10
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4, !tbaa !4
  %cmp = icmp slt i32 %1, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %knobs.addr, align 8, !tbaa !10
  %3 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds double, ptr %2, i64 %idxprom
  store double 0.000000e+00, ptr %arrayidx, align 8, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %5 = load ptr, ptr %knobs.addr, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds double, ptr %5, i64 0
  store double 1.000000e+01, ptr %arrayidx1, align 8, !tbaa !14
  %6 = load ptr, ptr %knobs.addr, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds double, ptr %6, i64 1
  store double 1.000000e+01, ptr %arrayidx2, align 8, !tbaa !14
  %7 = load ptr, ptr %knobs.addr, align 8, !tbaa !10
  %arrayidx3 = getelementptr inbounds double, ptr %7, i64 2
  store double 1.000000e+00, ptr %arrayidx3, align 8, !tbaa !14
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
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

; Function Attrs: uwtable
define i32 @symamd(i32 noundef %n, ptr noundef %A, ptr noundef %p, ptr noundef %perm, ptr noundef %knobs, ptr noundef %stats, ptr noundef %allocate, ptr noundef %release) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %perm.addr = alloca ptr, align 8
  %knobs.addr = alloca ptr, align 8
  %stats.addr = alloca ptr, align 8
  %allocate.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  %count = alloca ptr, align 8
  %mark = alloca ptr, align 8
  %M = alloca ptr, align 8
  %Mlen = alloca i64, align 8
  %n_row = alloca i32, align 4
  %nnz = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %mnz = alloca i32, align 4
  %pp = alloca i32, align 4
  %last_row = alloca i32, align 4
  %length = alloca i32, align 4
  %cknobs = alloca [20 x double], align 16
  %default_knobs = alloca [20 x double], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !10
  store ptr %p, ptr %p.addr, align 8, !tbaa !10
  store ptr %perm, ptr %perm.addr, align 8, !tbaa !10
  store ptr %knobs, ptr %knobs.addr, align 8, !tbaa !10
  store ptr %stats, ptr %stats.addr, align 8, !tbaa !10
  store ptr %allocate, ptr %allocate.addr, align 8, !tbaa !10
  store ptr %release, ptr %release.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mark) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %M) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Mlen) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_row) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nnz) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mnz) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pp) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %last_row) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #4
  call void @llvm.lifetime.start.p0(i64 160, ptr %cknobs) #4
  call void @llvm.lifetime.start.p0(i64 160, ptr %default_knobs) #4
  %0 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4, !tbaa !4
  %cmp = icmp slt i32 %1, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %3 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %5 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds i32, ptr %5, i64 3
  store i32 0, ptr %arrayidx1, align 4, !tbaa !4
  %6 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 4
  store i32 -1, ptr %arrayidx2, align 4, !tbaa !4
  %7 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx3 = getelementptr inbounds i32, ptr %7, i64 5
  store i32 -1, ptr %arrayidx3, align 4, !tbaa !4
  %8 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %tobool4 = icmp ne ptr %8, null
  br i1 %tobool4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %for.end
  %9 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx6 = getelementptr inbounds i32, ptr %9, i64 3
  store i32 -1, ptr %arrayidx6, align 4, !tbaa !4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %for.end
  %10 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %tobool8 = icmp ne ptr %10, null
  br i1 %tobool8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end7
  %11 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx10 = getelementptr inbounds i32, ptr %11, i64 3
  store i32 -2, ptr %arrayidx10, align 4, !tbaa !4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %12 = load i32, ptr %n.addr, align 4, !tbaa !4
  %cmp12 = icmp slt i32 %12, 0
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end11
  %13 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx14 = getelementptr inbounds i32, ptr %13, i64 3
  store i32 -4, ptr %arrayidx14, align 4, !tbaa !4
  %14 = load i32, ptr %n.addr, align 4, !tbaa !4
  %15 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx15 = getelementptr inbounds i32, ptr %15, i64 4
  store i32 %14, ptr %arrayidx15, align 4, !tbaa !4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %16 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %17 = load i32, ptr %n.addr, align 4, !tbaa !4
  %idxprom17 = sext i32 %17 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %16, i64 %idxprom17
  %18 = load i32, ptr %arrayidx18, align 4, !tbaa !4
  store i32 %18, ptr %nnz, align 4, !tbaa !4
  %19 = load i32, ptr %nnz, align 4, !tbaa !4
  %cmp19 = icmp slt i32 %19, 0
  br i1 %cmp19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end16
  %20 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx21 = getelementptr inbounds i32, ptr %20, i64 3
  store i32 -5, ptr %arrayidx21, align 4, !tbaa !4
  %21 = load i32, ptr %nnz, align 4, !tbaa !4
  %22 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx22 = getelementptr inbounds i32, ptr %22, i64 4
  store i32 %21, ptr %arrayidx22, align 4, !tbaa !4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %23 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %arrayidx24 = getelementptr inbounds i32, ptr %23, i64 0
  %24 = load i32, ptr %arrayidx24, align 4, !tbaa !4
  %cmp25 = icmp ne i32 %24, 0
  br i1 %cmp25, label %if.then26, label %if.end30

if.then26:                                        ; preds = %if.end23
  %25 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx27 = getelementptr inbounds i32, ptr %25, i64 3
  store i32 -6, ptr %arrayidx27, align 4, !tbaa !4
  %26 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %arrayidx28 = getelementptr inbounds i32, ptr %26, i64 0
  %27 = load i32, ptr %arrayidx28, align 4, !tbaa !4
  %28 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx29 = getelementptr inbounds i32, ptr %28, i64 4
  store i32 %27, ptr %arrayidx29, align 4, !tbaa !4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %29 = load ptr, ptr %knobs.addr, align 8, !tbaa !10
  %tobool31 = icmp ne ptr %29, null
  br i1 %tobool31, label %if.end34, label %if.then32

if.then32:                                        ; preds = %if.end30
  %arraydecay = getelementptr inbounds [20 x double], ptr %default_knobs, i64 0, i64 0
  call void @colamd_set_defaults(ptr noundef %arraydecay)
  %arraydecay33 = getelementptr inbounds [20 x double], ptr %default_knobs, i64 0, i64 0
  store ptr %arraydecay33, ptr %knobs.addr, align 8, !tbaa !10
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end30
  %30 = load ptr, ptr %allocate.addr, align 8, !tbaa !10
  %31 = load i32, ptr %n.addr, align 4, !tbaa !4
  %add = add nsw i32 %31, 1
  %conv = sext i32 %add to i64
  %call = call ptr %30(i64 noundef %conv, i64 noundef 4)
  store ptr %call, ptr %count, align 8, !tbaa !10
  %32 = load ptr, ptr %count, align 8, !tbaa !10
  %tobool35 = icmp ne ptr %32, null
  br i1 %tobool35, label %if.end38, label %if.then36

if.then36:                                        ; preds = %if.end34
  %33 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx37 = getelementptr inbounds i32, ptr %33, i64 3
  store i32 -10, ptr %arrayidx37, align 4, !tbaa !4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %34 = load ptr, ptr %allocate.addr, align 8, !tbaa !10
  %35 = load i32, ptr %n.addr, align 4, !tbaa !4
  %add39 = add nsw i32 %35, 1
  %conv40 = sext i32 %add39 to i64
  %call41 = call ptr %34(i64 noundef %conv40, i64 noundef 4)
  store ptr %call41, ptr %mark, align 8, !tbaa !10
  %36 = load ptr, ptr %mark, align 8, !tbaa !10
  %tobool42 = icmp ne ptr %36, null
  br i1 %tobool42, label %if.end45, label %if.then43

if.then43:                                        ; preds = %if.end38
  %37 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx44 = getelementptr inbounds i32, ptr %37, i64 3
  store i32 -10, ptr %arrayidx44, align 4, !tbaa !4
  %38 = load ptr, ptr %release.addr, align 8, !tbaa !10
  %39 = load ptr, ptr %count, align 8, !tbaa !10
  call void %38(ptr noundef %39)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end45:                                         ; preds = %if.end38
  %40 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx46 = getelementptr inbounds i32, ptr %40, i64 6
  store i32 0, ptr %arrayidx46, align 4, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc53, %if.end45
  %41 = load i32, ptr %i, align 4, !tbaa !4
  %42 = load i32, ptr %n.addr, align 4, !tbaa !4
  %cmp48 = icmp slt i32 %41, %42
  br i1 %cmp48, label %for.body50, label %for.end55

for.body50:                                       ; preds = %for.cond47
  %43 = load ptr, ptr %mark, align 8, !tbaa !10
  %44 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom51 = sext i32 %44 to i64
  %arrayidx52 = getelementptr inbounds i32, ptr %43, i64 %idxprom51
  store i32 -1, ptr %arrayidx52, align 4, !tbaa !4
  br label %for.inc53

for.inc53:                                        ; preds = %for.body50
  %45 = load i32, ptr %i, align 4, !tbaa !4
  %inc54 = add nsw i32 %45, 1
  store i32 %inc54, ptr %i, align 4, !tbaa !4
  br label %for.cond47, !llvm.loop !18

for.end55:                                        ; preds = %for.cond47
  store i32 0, ptr %j, align 4, !tbaa !4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc126, %for.end55
  %46 = load i32, ptr %j, align 4, !tbaa !4
  %47 = load i32, ptr %n.addr, align 4, !tbaa !4
  %cmp57 = icmp slt i32 %46, %47
  br i1 %cmp57, label %for.body59, label %for.end128

for.body59:                                       ; preds = %for.cond56
  store i32 -1, ptr %last_row, align 4, !tbaa !4
  %48 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %49 = load i32, ptr %j, align 4, !tbaa !4
  %add60 = add nsw i32 %49, 1
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds i32, ptr %48, i64 %idxprom61
  %50 = load i32, ptr %arrayidx62, align 4, !tbaa !4
  %51 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %52 = load i32, ptr %j, align 4, !tbaa !4
  %idxprom63 = sext i32 %52 to i64
  %arrayidx64 = getelementptr inbounds i32, ptr %51, i64 %idxprom63
  %53 = load i32, ptr %arrayidx64, align 4, !tbaa !4
  %sub = sub nsw i32 %50, %53
  store i32 %sub, ptr %length, align 4, !tbaa !4
  %54 = load i32, ptr %length, align 4, !tbaa !4
  %cmp65 = icmp slt i32 %54, 0
  br i1 %cmp65, label %if.then67, label %if.end71

if.then67:                                        ; preds = %for.body59
  %55 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx68 = getelementptr inbounds i32, ptr %55, i64 3
  store i32 -8, ptr %arrayidx68, align 4, !tbaa !4
  %56 = load i32, ptr %j, align 4, !tbaa !4
  %57 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx69 = getelementptr inbounds i32, ptr %57, i64 4
  store i32 %56, ptr %arrayidx69, align 4, !tbaa !4
  %58 = load i32, ptr %length, align 4, !tbaa !4
  %59 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx70 = getelementptr inbounds i32, ptr %59, i64 5
  store i32 %58, ptr %arrayidx70, align 4, !tbaa !4
  %60 = load ptr, ptr %release.addr, align 8, !tbaa !10
  %61 = load ptr, ptr %count, align 8, !tbaa !10
  call void %60(ptr noundef %61)
  %62 = load ptr, ptr %release.addr, align 8, !tbaa !10
  %63 = load ptr, ptr %mark, align 8, !tbaa !10
  call void %62(ptr noundef %63)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end71:                                         ; preds = %for.body59
  %64 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %65 = load i32, ptr %j, align 4, !tbaa !4
  %idxprom72 = sext i32 %65 to i64
  %arrayidx73 = getelementptr inbounds i32, ptr %64, i64 %idxprom72
  %66 = load i32, ptr %arrayidx73, align 4, !tbaa !4
  store i32 %66, ptr %pp, align 4, !tbaa !4
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc123, %if.end71
  %67 = load i32, ptr %pp, align 4, !tbaa !4
  %68 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %69 = load i32, ptr %j, align 4, !tbaa !4
  %add75 = add nsw i32 %69, 1
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds i32, ptr %68, i64 %idxprom76
  %70 = load i32, ptr %arrayidx77, align 4, !tbaa !4
  %cmp78 = icmp slt i32 %67, %70
  br i1 %cmp78, label %for.body80, label %for.end125

for.body80:                                       ; preds = %for.cond74
  %71 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %72 = load i32, ptr %pp, align 4, !tbaa !4
  %idxprom81 = sext i32 %72 to i64
  %arrayidx82 = getelementptr inbounds i32, ptr %71, i64 %idxprom81
  %73 = load i32, ptr %arrayidx82, align 4, !tbaa !4
  store i32 %73, ptr %i, align 4, !tbaa !4
  %74 = load i32, ptr %i, align 4, !tbaa !4
  %cmp83 = icmp slt i32 %74, 0
  br i1 %cmp83, label %if.then87, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body80
  %75 = load i32, ptr %i, align 4, !tbaa !4
  %76 = load i32, ptr %n.addr, align 4, !tbaa !4
  %cmp85 = icmp sge i32 %75, %76
  br i1 %cmp85, label %if.then87, label %if.end92

if.then87:                                        ; preds = %lor.lhs.false, %for.body80
  %77 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx88 = getelementptr inbounds i32, ptr %77, i64 3
  store i32 -9, ptr %arrayidx88, align 4, !tbaa !4
  %78 = load i32, ptr %j, align 4, !tbaa !4
  %79 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx89 = getelementptr inbounds i32, ptr %79, i64 4
  store i32 %78, ptr %arrayidx89, align 4, !tbaa !4
  %80 = load i32, ptr %i, align 4, !tbaa !4
  %81 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx90 = getelementptr inbounds i32, ptr %81, i64 5
  store i32 %80, ptr %arrayidx90, align 4, !tbaa !4
  %82 = load i32, ptr %n.addr, align 4, !tbaa !4
  %83 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx91 = getelementptr inbounds i32, ptr %83, i64 6
  store i32 %82, ptr %arrayidx91, align 4, !tbaa !4
  %84 = load ptr, ptr %release.addr, align 8, !tbaa !10
  %85 = load ptr, ptr %count, align 8, !tbaa !10
  call void %84(ptr noundef %85)
  %86 = load ptr, ptr %release.addr, align 8, !tbaa !10
  %87 = load ptr, ptr %mark, align 8, !tbaa !10
  call void %86(ptr noundef %87)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end92:                                         ; preds = %lor.lhs.false
  %88 = load i32, ptr %i, align 4, !tbaa !4
  %89 = load i32, ptr %last_row, align 4, !tbaa !4
  %cmp93 = icmp sle i32 %88, %89
  br i1 %cmp93, label %if.then100, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %if.end92
  %90 = load ptr, ptr %mark, align 8, !tbaa !10
  %91 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom96 = sext i32 %91 to i64
  %arrayidx97 = getelementptr inbounds i32, ptr %90, i64 %idxprom96
  %92 = load i32, ptr %arrayidx97, align 4, !tbaa !4
  %93 = load i32, ptr %j, align 4, !tbaa !4
  %cmp98 = icmp eq i32 %92, %93
  br i1 %cmp98, label %if.then100, label %if.end106

if.then100:                                       ; preds = %lor.lhs.false95, %if.end92
  %94 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx101 = getelementptr inbounds i32, ptr %94, i64 3
  store i32 1, ptr %arrayidx101, align 4, !tbaa !4
  %95 = load i32, ptr %j, align 4, !tbaa !4
  %96 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx102 = getelementptr inbounds i32, ptr %96, i64 4
  store i32 %95, ptr %arrayidx102, align 4, !tbaa !4
  %97 = load i32, ptr %i, align 4, !tbaa !4
  %98 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx103 = getelementptr inbounds i32, ptr %98, i64 5
  store i32 %97, ptr %arrayidx103, align 4, !tbaa !4
  %99 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx104 = getelementptr inbounds i32, ptr %99, i64 6
  %100 = load i32, ptr %arrayidx104, align 4, !tbaa !4
  %inc105 = add nsw i32 %100, 1
  store i32 %inc105, ptr %arrayidx104, align 4, !tbaa !4
  br label %if.end106

if.end106:                                        ; preds = %if.then100, %lor.lhs.false95
  %101 = load i32, ptr %i, align 4, !tbaa !4
  %102 = load i32, ptr %j, align 4, !tbaa !4
  %cmp107 = icmp sgt i32 %101, %102
  br i1 %cmp107, label %land.lhs.true, label %if.end120

land.lhs.true:                                    ; preds = %if.end106
  %103 = load ptr, ptr %mark, align 8, !tbaa !10
  %104 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom109 = sext i32 %104 to i64
  %arrayidx110 = getelementptr inbounds i32, ptr %103, i64 %idxprom109
  %105 = load i32, ptr %arrayidx110, align 4, !tbaa !4
  %106 = load i32, ptr %j, align 4, !tbaa !4
  %cmp111 = icmp ne i32 %105, %106
  br i1 %cmp111, label %if.then113, label %if.end120

if.then113:                                       ; preds = %land.lhs.true
  %107 = load ptr, ptr %count, align 8, !tbaa !10
  %108 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom114 = sext i32 %108 to i64
  %arrayidx115 = getelementptr inbounds i32, ptr %107, i64 %idxprom114
  %109 = load i32, ptr %arrayidx115, align 4, !tbaa !4
  %inc116 = add nsw i32 %109, 1
  store i32 %inc116, ptr %arrayidx115, align 4, !tbaa !4
  %110 = load ptr, ptr %count, align 8, !tbaa !10
  %111 = load i32, ptr %j, align 4, !tbaa !4
  %idxprom117 = sext i32 %111 to i64
  %arrayidx118 = getelementptr inbounds i32, ptr %110, i64 %idxprom117
  %112 = load i32, ptr %arrayidx118, align 4, !tbaa !4
  %inc119 = add nsw i32 %112, 1
  store i32 %inc119, ptr %arrayidx118, align 4, !tbaa !4
  br label %if.end120

if.end120:                                        ; preds = %if.then113, %land.lhs.true, %if.end106
  %113 = load i32, ptr %j, align 4, !tbaa !4
  %114 = load ptr, ptr %mark, align 8, !tbaa !10
  %115 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom121 = sext i32 %115 to i64
  %arrayidx122 = getelementptr inbounds i32, ptr %114, i64 %idxprom121
  store i32 %113, ptr %arrayidx122, align 4, !tbaa !4
  %116 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %116, ptr %last_row, align 4, !tbaa !4
  br label %for.inc123

for.inc123:                                       ; preds = %if.end120
  %117 = load i32, ptr %pp, align 4, !tbaa !4
  %inc124 = add nsw i32 %117, 1
  store i32 %inc124, ptr %pp, align 4, !tbaa !4
  br label %for.cond74, !llvm.loop !19

for.end125:                                       ; preds = %for.cond74
  br label %for.inc126

for.inc126:                                       ; preds = %for.end125
  %118 = load i32, ptr %j, align 4, !tbaa !4
  %inc127 = add nsw i32 %118, 1
  store i32 %inc127, ptr %j, align 4, !tbaa !4
  br label %for.cond56, !llvm.loop !20

for.end128:                                       ; preds = %for.cond56
  %119 = load ptr, ptr %perm.addr, align 8, !tbaa !10
  %arrayidx129 = getelementptr inbounds i32, ptr %119, i64 0
  store i32 0, ptr %arrayidx129, align 4, !tbaa !4
  store i32 1, ptr %j, align 4, !tbaa !4
  br label %for.cond130

for.cond130:                                      ; preds = %for.inc143, %for.end128
  %120 = load i32, ptr %j, align 4, !tbaa !4
  %121 = load i32, ptr %n.addr, align 4, !tbaa !4
  %cmp131 = icmp sle i32 %120, %121
  br i1 %cmp131, label %for.body133, label %for.end145

for.body133:                                      ; preds = %for.cond130
  %122 = load ptr, ptr %perm.addr, align 8, !tbaa !10
  %123 = load i32, ptr %j, align 4, !tbaa !4
  %sub134 = sub nsw i32 %123, 1
  %idxprom135 = sext i32 %sub134 to i64
  %arrayidx136 = getelementptr inbounds i32, ptr %122, i64 %idxprom135
  %124 = load i32, ptr %arrayidx136, align 4, !tbaa !4
  %125 = load ptr, ptr %count, align 8, !tbaa !10
  %126 = load i32, ptr %j, align 4, !tbaa !4
  %sub137 = sub nsw i32 %126, 1
  %idxprom138 = sext i32 %sub137 to i64
  %arrayidx139 = getelementptr inbounds i32, ptr %125, i64 %idxprom138
  %127 = load i32, ptr %arrayidx139, align 4, !tbaa !4
  %add140 = add nsw i32 %124, %127
  %128 = load ptr, ptr %perm.addr, align 8, !tbaa !10
  %129 = load i32, ptr %j, align 4, !tbaa !4
  %idxprom141 = sext i32 %129 to i64
  %arrayidx142 = getelementptr inbounds i32, ptr %128, i64 %idxprom141
  store i32 %add140, ptr %arrayidx142, align 4, !tbaa !4
  br label %for.inc143

for.inc143:                                       ; preds = %for.body133
  %130 = load i32, ptr %j, align 4, !tbaa !4
  %inc144 = add nsw i32 %130, 1
  store i32 %inc144, ptr %j, align 4, !tbaa !4
  br label %for.cond130, !llvm.loop !21

for.end145:                                       ; preds = %for.cond130
  store i32 0, ptr %j, align 4, !tbaa !4
  br label %for.cond146

for.cond146:                                      ; preds = %for.inc154, %for.end145
  %131 = load i32, ptr %j, align 4, !tbaa !4
  %132 = load i32, ptr %n.addr, align 4, !tbaa !4
  %cmp147 = icmp slt i32 %131, %132
  br i1 %cmp147, label %for.body149, label %for.end156

for.body149:                                      ; preds = %for.cond146
  %133 = load ptr, ptr %perm.addr, align 8, !tbaa !10
  %134 = load i32, ptr %j, align 4, !tbaa !4
  %idxprom150 = sext i32 %134 to i64
  %arrayidx151 = getelementptr inbounds i32, ptr %133, i64 %idxprom150
  %135 = load i32, ptr %arrayidx151, align 4, !tbaa !4
  %136 = load ptr, ptr %count, align 8, !tbaa !10
  %137 = load i32, ptr %j, align 4, !tbaa !4
  %idxprom152 = sext i32 %137 to i64
  %arrayidx153 = getelementptr inbounds i32, ptr %136, i64 %idxprom152
  store i32 %135, ptr %arrayidx153, align 4, !tbaa !4
  br label %for.inc154

for.inc154:                                       ; preds = %for.body149
  %138 = load i32, ptr %j, align 4, !tbaa !4
  %inc155 = add nsw i32 %138, 1
  store i32 %inc155, ptr %j, align 4, !tbaa !4
  br label %for.cond146, !llvm.loop !22

for.end156:                                       ; preds = %for.cond146
  %139 = load ptr, ptr %perm.addr, align 8, !tbaa !10
  %140 = load i32, ptr %n.addr, align 4, !tbaa !4
  %idxprom157 = sext i32 %140 to i64
  %arrayidx158 = getelementptr inbounds i32, ptr %139, i64 %idxprom157
  %141 = load i32, ptr %arrayidx158, align 4, !tbaa !4
  store i32 %141, ptr %mnz, align 4, !tbaa !4
  %142 = load i32, ptr %mnz, align 4, !tbaa !4
  %div = sdiv i32 %142, 2
  store i32 %div, ptr %n_row, align 4, !tbaa !4
  %143 = load i32, ptr %mnz, align 4, !tbaa !4
  %144 = load i32, ptr %n_row, align 4, !tbaa !4
  %145 = load i32, ptr %n.addr, align 4, !tbaa !4
  %call159 = call i64 @colamd_recommended(i32 noundef %143, i32 noundef %144, i32 noundef %145)
  store i64 %call159, ptr %Mlen, align 8, !tbaa !8
  %146 = load ptr, ptr %allocate.addr, align 8, !tbaa !10
  %147 = load i64, ptr %Mlen, align 8, !tbaa !8
  %call160 = call ptr %146(i64 noundef %147, i64 noundef 4)
  store ptr %call160, ptr %M, align 8, !tbaa !10
  %148 = load ptr, ptr %M, align 8, !tbaa !10
  %tobool161 = icmp ne ptr %148, null
  br i1 %tobool161, label %if.end164, label %if.then162

if.then162:                                       ; preds = %for.end156
  %149 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx163 = getelementptr inbounds i32, ptr %149, i64 3
  store i32 -10, ptr %arrayidx163, align 4, !tbaa !4
  %150 = load ptr, ptr %release.addr, align 8, !tbaa !10
  %151 = load ptr, ptr %count, align 8, !tbaa !10
  call void %150(ptr noundef %151)
  %152 = load ptr, ptr %release.addr, align 8, !tbaa !10
  %153 = load ptr, ptr %mark, align 8, !tbaa !10
  call void %152(ptr noundef %153)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end164:                                        ; preds = %for.end156
  store i32 0, ptr %k, align 4, !tbaa !4
  %154 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx165 = getelementptr inbounds i32, ptr %154, i64 3
  %155 = load i32, ptr %arrayidx165, align 4, !tbaa !4
  %cmp166 = icmp eq i32 %155, 0
  br i1 %cmp166, label %if.then168, label %if.else

if.then168:                                       ; preds = %if.end164
  store i32 0, ptr %j, align 4, !tbaa !4
  br label %for.cond169

for.cond169:                                      ; preds = %for.inc202, %if.then168
  %156 = load i32, ptr %j, align 4, !tbaa !4
  %157 = load i32, ptr %n.addr, align 4, !tbaa !4
  %cmp170 = icmp slt i32 %156, %157
  br i1 %cmp170, label %for.body172, label %for.end204

for.body172:                                      ; preds = %for.cond169
  %158 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %159 = load i32, ptr %j, align 4, !tbaa !4
  %idxprom173 = sext i32 %159 to i64
  %arrayidx174 = getelementptr inbounds i32, ptr %158, i64 %idxprom173
  %160 = load i32, ptr %arrayidx174, align 4, !tbaa !4
  store i32 %160, ptr %pp, align 4, !tbaa !4
  br label %for.cond175

for.cond175:                                      ; preds = %for.inc199, %for.body172
  %161 = load i32, ptr %pp, align 4, !tbaa !4
  %162 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %163 = load i32, ptr %j, align 4, !tbaa !4
  %add176 = add nsw i32 %163, 1
  %idxprom177 = sext i32 %add176 to i64
  %arrayidx178 = getelementptr inbounds i32, ptr %162, i64 %idxprom177
  %164 = load i32, ptr %arrayidx178, align 4, !tbaa !4
  %cmp179 = icmp slt i32 %161, %164
  br i1 %cmp179, label %for.body181, label %for.end201

for.body181:                                      ; preds = %for.cond175
  %165 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %166 = load i32, ptr %pp, align 4, !tbaa !4
  %idxprom182 = sext i32 %166 to i64
  %arrayidx183 = getelementptr inbounds i32, ptr %165, i64 %idxprom182
  %167 = load i32, ptr %arrayidx183, align 4, !tbaa !4
  store i32 %167, ptr %i, align 4, !tbaa !4
  %168 = load i32, ptr %i, align 4, !tbaa !4
  %169 = load i32, ptr %j, align 4, !tbaa !4
  %cmp184 = icmp sgt i32 %168, %169
  br i1 %cmp184, label %if.then186, label %if.end198

if.then186:                                       ; preds = %for.body181
  %170 = load i32, ptr %k, align 4, !tbaa !4
  %171 = load ptr, ptr %M, align 8, !tbaa !10
  %172 = load ptr, ptr %count, align 8, !tbaa !10
  %173 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom187 = sext i32 %173 to i64
  %arrayidx188 = getelementptr inbounds i32, ptr %172, i64 %idxprom187
  %174 = load i32, ptr %arrayidx188, align 4, !tbaa !4
  %inc189 = add nsw i32 %174, 1
  store i32 %inc189, ptr %arrayidx188, align 4, !tbaa !4
  %idxprom190 = sext i32 %174 to i64
  %arrayidx191 = getelementptr inbounds i32, ptr %171, i64 %idxprom190
  store i32 %170, ptr %arrayidx191, align 4, !tbaa !4
  %175 = load i32, ptr %k, align 4, !tbaa !4
  %176 = load ptr, ptr %M, align 8, !tbaa !10
  %177 = load ptr, ptr %count, align 8, !tbaa !10
  %178 = load i32, ptr %j, align 4, !tbaa !4
  %idxprom192 = sext i32 %178 to i64
  %arrayidx193 = getelementptr inbounds i32, ptr %177, i64 %idxprom192
  %179 = load i32, ptr %arrayidx193, align 4, !tbaa !4
  %inc194 = add nsw i32 %179, 1
  store i32 %inc194, ptr %arrayidx193, align 4, !tbaa !4
  %idxprom195 = sext i32 %179 to i64
  %arrayidx196 = getelementptr inbounds i32, ptr %176, i64 %idxprom195
  store i32 %175, ptr %arrayidx196, align 4, !tbaa !4
  %180 = load i32, ptr %k, align 4, !tbaa !4
  %inc197 = add nsw i32 %180, 1
  store i32 %inc197, ptr %k, align 4, !tbaa !4
  br label %if.end198

if.end198:                                        ; preds = %if.then186, %for.body181
  br label %for.inc199

for.inc199:                                       ; preds = %if.end198
  %181 = load i32, ptr %pp, align 4, !tbaa !4
  %inc200 = add nsw i32 %181, 1
  store i32 %inc200, ptr %pp, align 4, !tbaa !4
  br label %for.cond175, !llvm.loop !23

for.end201:                                       ; preds = %for.cond175
  br label %for.inc202

for.inc202:                                       ; preds = %for.end201
  %182 = load i32, ptr %j, align 4, !tbaa !4
  %inc203 = add nsw i32 %182, 1
  store i32 %inc203, ptr %j, align 4, !tbaa !4
  br label %for.cond169, !llvm.loop !24

for.end204:                                       ; preds = %for.cond169
  br label %if.end257

if.else:                                          ; preds = %if.end164
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond205

for.cond205:                                      ; preds = %for.inc211, %if.else
  %183 = load i32, ptr %i, align 4, !tbaa !4
  %184 = load i32, ptr %n.addr, align 4, !tbaa !4
  %cmp206 = icmp slt i32 %183, %184
  br i1 %cmp206, label %for.body208, label %for.end213

for.body208:                                      ; preds = %for.cond205
  %185 = load ptr, ptr %mark, align 8, !tbaa !10
  %186 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom209 = sext i32 %186 to i64
  %arrayidx210 = getelementptr inbounds i32, ptr %185, i64 %idxprom209
  store i32 -1, ptr %arrayidx210, align 4, !tbaa !4
  br label %for.inc211

for.inc211:                                       ; preds = %for.body208
  %187 = load i32, ptr %i, align 4, !tbaa !4
  %inc212 = add nsw i32 %187, 1
  store i32 %inc212, ptr %i, align 4, !tbaa !4
  br label %for.cond205, !llvm.loop !25

for.end213:                                       ; preds = %for.cond205
  store i32 0, ptr %j, align 4, !tbaa !4
  br label %for.cond214

for.cond214:                                      ; preds = %for.inc254, %for.end213
  %188 = load i32, ptr %j, align 4, !tbaa !4
  %189 = load i32, ptr %n.addr, align 4, !tbaa !4
  %cmp215 = icmp slt i32 %188, %189
  br i1 %cmp215, label %for.body217, label %for.end256

for.body217:                                      ; preds = %for.cond214
  %190 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %191 = load i32, ptr %j, align 4, !tbaa !4
  %idxprom218 = sext i32 %191 to i64
  %arrayidx219 = getelementptr inbounds i32, ptr %190, i64 %idxprom218
  %192 = load i32, ptr %arrayidx219, align 4, !tbaa !4
  store i32 %192, ptr %pp, align 4, !tbaa !4
  br label %for.cond220

for.cond220:                                      ; preds = %for.inc251, %for.body217
  %193 = load i32, ptr %pp, align 4, !tbaa !4
  %194 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %195 = load i32, ptr %j, align 4, !tbaa !4
  %add221 = add nsw i32 %195, 1
  %idxprom222 = sext i32 %add221 to i64
  %arrayidx223 = getelementptr inbounds i32, ptr %194, i64 %idxprom222
  %196 = load i32, ptr %arrayidx223, align 4, !tbaa !4
  %cmp224 = icmp slt i32 %193, %196
  br i1 %cmp224, label %for.body226, label %for.end253

for.body226:                                      ; preds = %for.cond220
  %197 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %198 = load i32, ptr %pp, align 4, !tbaa !4
  %idxprom227 = sext i32 %198 to i64
  %arrayidx228 = getelementptr inbounds i32, ptr %197, i64 %idxprom227
  %199 = load i32, ptr %arrayidx228, align 4, !tbaa !4
  store i32 %199, ptr %i, align 4, !tbaa !4
  %200 = load i32, ptr %i, align 4, !tbaa !4
  %201 = load i32, ptr %j, align 4, !tbaa !4
  %cmp229 = icmp sgt i32 %200, %201
  br i1 %cmp229, label %land.lhs.true231, label %if.end250

land.lhs.true231:                                 ; preds = %for.body226
  %202 = load ptr, ptr %mark, align 8, !tbaa !10
  %203 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom232 = sext i32 %203 to i64
  %arrayidx233 = getelementptr inbounds i32, ptr %202, i64 %idxprom232
  %204 = load i32, ptr %arrayidx233, align 4, !tbaa !4
  %205 = load i32, ptr %j, align 4, !tbaa !4
  %cmp234 = icmp ne i32 %204, %205
  br i1 %cmp234, label %if.then236, label %if.end250

if.then236:                                       ; preds = %land.lhs.true231
  %206 = load i32, ptr %k, align 4, !tbaa !4
  %207 = load ptr, ptr %M, align 8, !tbaa !10
  %208 = load ptr, ptr %count, align 8, !tbaa !10
  %209 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom237 = sext i32 %209 to i64
  %arrayidx238 = getelementptr inbounds i32, ptr %208, i64 %idxprom237
  %210 = load i32, ptr %arrayidx238, align 4, !tbaa !4
  %inc239 = add nsw i32 %210, 1
  store i32 %inc239, ptr %arrayidx238, align 4, !tbaa !4
  %idxprom240 = sext i32 %210 to i64
  %arrayidx241 = getelementptr inbounds i32, ptr %207, i64 %idxprom240
  store i32 %206, ptr %arrayidx241, align 4, !tbaa !4
  %211 = load i32, ptr %k, align 4, !tbaa !4
  %212 = load ptr, ptr %M, align 8, !tbaa !10
  %213 = load ptr, ptr %count, align 8, !tbaa !10
  %214 = load i32, ptr %j, align 4, !tbaa !4
  %idxprom242 = sext i32 %214 to i64
  %arrayidx243 = getelementptr inbounds i32, ptr %213, i64 %idxprom242
  %215 = load i32, ptr %arrayidx243, align 4, !tbaa !4
  %inc244 = add nsw i32 %215, 1
  store i32 %inc244, ptr %arrayidx243, align 4, !tbaa !4
  %idxprom245 = sext i32 %215 to i64
  %arrayidx246 = getelementptr inbounds i32, ptr %212, i64 %idxprom245
  store i32 %211, ptr %arrayidx246, align 4, !tbaa !4
  %216 = load i32, ptr %k, align 4, !tbaa !4
  %inc247 = add nsw i32 %216, 1
  store i32 %inc247, ptr %k, align 4, !tbaa !4
  %217 = load i32, ptr %j, align 4, !tbaa !4
  %218 = load ptr, ptr %mark, align 8, !tbaa !10
  %219 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom248 = sext i32 %219 to i64
  %arrayidx249 = getelementptr inbounds i32, ptr %218, i64 %idxprom248
  store i32 %217, ptr %arrayidx249, align 4, !tbaa !4
  br label %if.end250

if.end250:                                        ; preds = %if.then236, %land.lhs.true231, %for.body226
  br label %for.inc251

for.inc251:                                       ; preds = %if.end250
  %220 = load i32, ptr %pp, align 4, !tbaa !4
  %inc252 = add nsw i32 %220, 1
  store i32 %inc252, ptr %pp, align 4, !tbaa !4
  br label %for.cond220, !llvm.loop !26

for.end253:                                       ; preds = %for.cond220
  br label %for.inc254

for.inc254:                                       ; preds = %for.end253
  %221 = load i32, ptr %j, align 4, !tbaa !4
  %inc255 = add nsw i32 %221, 1
  store i32 %inc255, ptr %j, align 4, !tbaa !4
  br label %for.cond214, !llvm.loop !27

for.end256:                                       ; preds = %for.cond214
  br label %if.end257

if.end257:                                        ; preds = %for.end256, %for.end204
  %222 = load ptr, ptr %release.addr, align 8, !tbaa !10
  %223 = load ptr, ptr %count, align 8, !tbaa !10
  call void %222(ptr noundef %223)
  %224 = load ptr, ptr %release.addr, align 8, !tbaa !10
  %225 = load ptr, ptr %mark, align 8, !tbaa !10
  call void %224(ptr noundef %225)
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond258

for.cond258:                                      ; preds = %for.inc266, %if.end257
  %226 = load i32, ptr %i, align 4, !tbaa !4
  %cmp259 = icmp slt i32 %226, 20
  br i1 %cmp259, label %for.body261, label %for.end268

for.body261:                                      ; preds = %for.cond258
  %227 = load ptr, ptr %knobs.addr, align 8, !tbaa !10
  %228 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom262 = sext i32 %228 to i64
  %arrayidx263 = getelementptr inbounds double, ptr %227, i64 %idxprom262
  %229 = load double, ptr %arrayidx263, align 8, !tbaa !14
  %230 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom264 = sext i32 %230 to i64
  %arrayidx265 = getelementptr inbounds [20 x double], ptr %cknobs, i64 0, i64 %idxprom264
  store double %229, ptr %arrayidx265, align 8, !tbaa !14
  br label %for.inc266

for.inc266:                                       ; preds = %for.body261
  %231 = load i32, ptr %i, align 4, !tbaa !4
  %inc267 = add nsw i32 %231, 1
  store i32 %inc267, ptr %i, align 4, !tbaa !4
  br label %for.cond258, !llvm.loop !28

for.end268:                                       ; preds = %for.cond258
  %arrayidx269 = getelementptr inbounds [20 x double], ptr %cknobs, i64 0, i64 0
  store double -1.000000e+00, ptr %arrayidx269, align 16, !tbaa !14
  %232 = load ptr, ptr %knobs.addr, align 8, !tbaa !10
  %arrayidx270 = getelementptr inbounds double, ptr %232, i64 0
  %233 = load double, ptr %arrayidx270, align 8, !tbaa !14
  %arrayidx271 = getelementptr inbounds [20 x double], ptr %cknobs, i64 0, i64 1
  store double %233, ptr %arrayidx271, align 8, !tbaa !14
  %234 = load i32, ptr %n_row, align 4, !tbaa !4
  %235 = load i32, ptr %n.addr, align 4, !tbaa !4
  %236 = load i64, ptr %Mlen, align 8, !tbaa !8
  %conv272 = trunc i64 %236 to i32
  %237 = load ptr, ptr %M, align 8, !tbaa !10
  %238 = load ptr, ptr %perm.addr, align 8, !tbaa !10
  %arraydecay273 = getelementptr inbounds [20 x double], ptr %cknobs, i64 0, i64 0
  %239 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %call274 = call i32 @colamd(i32 noundef %234, i32 noundef %235, i32 noundef %conv272, ptr noundef %237, ptr noundef %238, ptr noundef %arraydecay273, ptr noundef %239)
  %240 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx275 = getelementptr inbounds i32, ptr %240, i64 1
  %241 = load i32, ptr %arrayidx275, align 4, !tbaa !4
  %242 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx276 = getelementptr inbounds i32, ptr %242, i64 0
  store i32 %241, ptr %arrayidx276, align 4, !tbaa !4
  %243 = load ptr, ptr %release.addr, align 8, !tbaa !10
  %244 = load ptr, ptr %M, align 8, !tbaa !10
  call void %243(ptr noundef %244)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end268, %if.then162, %if.then87, %if.then67, %if.then43, %if.then36, %if.then26, %if.then20, %if.then13, %if.then9, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 160, ptr %default_knobs) #4
  call void @llvm.lifetime.end.p0(i64 160, ptr %cknobs) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %last_row) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %mnz) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nnz) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_row) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Mlen) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %M) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %mark) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #4
  %245 = load i32, ptr %retval, align 4
  ret i32 %245
}

; Function Attrs: uwtable
define i32 @colamd(i32 noundef %n_row, i32 noundef %n_col, i32 noundef %Alen, ptr noundef %A, ptr noundef %p, ptr noundef %knobs, ptr noundef %stats) #0 {
entry:
  %retval = alloca i32, align 4
  %n_row.addr = alloca i32, align 4
  %n_col.addr = alloca i32, align 4
  %Alen.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %knobs.addr = alloca ptr, align 8
  %stats.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %nnz = alloca i32, align 4
  %Row_size = alloca i64, align 8
  %Col_size = alloca i64, align 8
  %need = alloca i64, align 8
  %Row = alloca ptr, align 8
  %Col = alloca ptr, align 8
  %n_col2 = alloca i32, align 4
  %n_row2 = alloca i32, align 4
  %ngarbage = alloca i32, align 4
  %max_deg = alloca i32, align 4
  %default_knobs = alloca [20 x double], align 16
  %aggressive = alloca i32, align 4
  %ok = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %n_row, ptr %n_row.addr, align 4, !tbaa !4
  store i32 %n_col, ptr %n_col.addr, align 4, !tbaa !4
  store i32 %Alen, ptr %Alen.addr, align 4, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !10
  store ptr %p, ptr %p.addr, align 8, !tbaa !10
  store ptr %knobs, ptr %knobs.addr, align 8, !tbaa !10
  store ptr %stats, ptr %stats.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nnz) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Row_size) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Col_size) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %need) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Row) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Col) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_col2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_row2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ngarbage) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_deg) #4
  call void @llvm.lifetime.start.p0(i64 160, ptr %default_knobs) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %aggressive) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ok) #4
  %0 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4, !tbaa !4
  %cmp = icmp slt i32 %1, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %3 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  %5 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds i32, ptr %5, i64 3
  store i32 0, ptr %arrayidx1, align 4, !tbaa !4
  %6 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 4
  store i32 -1, ptr %arrayidx2, align 4, !tbaa !4
  %7 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx3 = getelementptr inbounds i32, ptr %7, i64 5
  store i32 -1, ptr %arrayidx3, align 4, !tbaa !4
  %8 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %tobool4 = icmp ne ptr %8, null
  br i1 %tobool4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %for.end
  %9 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx6 = getelementptr inbounds i32, ptr %9, i64 3
  store i32 -1, ptr %arrayidx6, align 4, !tbaa !4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %for.end
  %10 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %tobool8 = icmp ne ptr %10, null
  br i1 %tobool8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end7
  %11 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx10 = getelementptr inbounds i32, ptr %11, i64 3
  store i32 -2, ptr %arrayidx10, align 4, !tbaa !4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %12 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %cmp12 = icmp slt i32 %12, 0
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end11
  %13 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx14 = getelementptr inbounds i32, ptr %13, i64 3
  store i32 -3, ptr %arrayidx14, align 4, !tbaa !4
  %14 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %15 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx15 = getelementptr inbounds i32, ptr %15, i64 4
  store i32 %14, ptr %arrayidx15, align 4, !tbaa !4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %16 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %cmp17 = icmp slt i32 %16, 0
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end16
  %17 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx19 = getelementptr inbounds i32, ptr %17, i64 3
  store i32 -4, ptr %arrayidx19, align 4, !tbaa !4
  %18 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %19 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx20 = getelementptr inbounds i32, ptr %19, i64 4
  store i32 %18, ptr %arrayidx20, align 4, !tbaa !4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %20 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %21 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %20, i64 %idxprom22
  %22 = load i32, ptr %arrayidx23, align 4, !tbaa !4
  store i32 %22, ptr %nnz, align 4, !tbaa !4
  %23 = load i32, ptr %nnz, align 4, !tbaa !4
  %cmp24 = icmp slt i32 %23, 0
  br i1 %cmp24, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end21
  %24 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx26 = getelementptr inbounds i32, ptr %24, i64 3
  store i32 -5, ptr %arrayidx26, align 4, !tbaa !4
  %25 = load i32, ptr %nnz, align 4, !tbaa !4
  %26 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx27 = getelementptr inbounds i32, ptr %26, i64 4
  store i32 %25, ptr %arrayidx27, align 4, !tbaa !4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %27 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %arrayidx29 = getelementptr inbounds i32, ptr %27, i64 0
  %28 = load i32, ptr %arrayidx29, align 4, !tbaa !4
  %cmp30 = icmp ne i32 %28, 0
  br i1 %cmp30, label %if.then31, label %if.end35

if.then31:                                        ; preds = %if.end28
  %29 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx32 = getelementptr inbounds i32, ptr %29, i64 3
  store i32 -6, ptr %arrayidx32, align 4, !tbaa !4
  %30 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %arrayidx33 = getelementptr inbounds i32, ptr %30, i64 0
  %31 = load i32, ptr %arrayidx33, align 4, !tbaa !4
  %32 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx34 = getelementptr inbounds i32, ptr %32, i64 4
  store i32 %31, ptr %arrayidx34, align 4, !tbaa !4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  %33 = load ptr, ptr %knobs.addr, align 8, !tbaa !10
  %tobool36 = icmp ne ptr %33, null
  br i1 %tobool36, label %if.end39, label %if.then37

if.then37:                                        ; preds = %if.end35
  %arraydecay = getelementptr inbounds [20 x double], ptr %default_knobs, i64 0, i64 0
  call void @colamd_set_defaults(ptr noundef %arraydecay)
  %arraydecay38 = getelementptr inbounds [20 x double], ptr %default_knobs, i64 0, i64 0
  store ptr %arraydecay38, ptr %knobs.addr, align 8, !tbaa !10
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end35
  %34 = load ptr, ptr %knobs.addr, align 8, !tbaa !10
  %arrayidx40 = getelementptr inbounds double, ptr %34, i64 2
  %35 = load double, ptr %arrayidx40, align 8, !tbaa !14
  %cmp41 = fcmp une double %35, 0.000000e+00
  %conv = zext i1 %cmp41 to i32
  store i32 %conv, ptr %aggressive, align 4, !tbaa !4
  store i32 1, ptr %ok, align 4, !tbaa !4
  %36 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %conv42 = sext i32 %36 to i64
  %call = call i64 @t_add(i64 noundef %conv42, i64 noundef 1, ptr noundef %ok)
  %call43 = call i64 @t_mult(i64 noundef %call, i64 noundef 24, ptr noundef %ok)
  %div = udiv i64 %call43, 4
  store i64 %div, ptr %Col_size, align 8, !tbaa !8
  %37 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %conv44 = sext i32 %37 to i64
  %call45 = call i64 @t_add(i64 noundef %conv44, i64 noundef 1, ptr noundef %ok)
  %call46 = call i64 @t_mult(i64 noundef %call45, i64 noundef 16, ptr noundef %ok)
  %div47 = udiv i64 %call46, 4
  store i64 %div47, ptr %Row_size, align 8, !tbaa !8
  %38 = load i32, ptr %nnz, align 4, !tbaa !4
  %conv48 = sext i32 %38 to i64
  %call49 = call i64 @t_mult(i64 noundef %conv48, i64 noundef 2, ptr noundef %ok)
  store i64 %call49, ptr %need, align 8, !tbaa !8
  %39 = load i64, ptr %need, align 8, !tbaa !8
  %40 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %conv50 = sext i32 %40 to i64
  %call51 = call i64 @t_add(i64 noundef %39, i64 noundef %conv50, ptr noundef %ok)
  store i64 %call51, ptr %need, align 8, !tbaa !8
  %41 = load i64, ptr %need, align 8, !tbaa !8
  %42 = load i64, ptr %Col_size, align 8, !tbaa !8
  %call52 = call i64 @t_add(i64 noundef %41, i64 noundef %42, ptr noundef %ok)
  store i64 %call52, ptr %need, align 8, !tbaa !8
  %43 = load i64, ptr %need, align 8, !tbaa !8
  %44 = load i64, ptr %Row_size, align 8, !tbaa !8
  %call53 = call i64 @t_add(i64 noundef %43, i64 noundef %44, ptr noundef %ok)
  store i64 %call53, ptr %need, align 8, !tbaa !8
  %45 = load i32, ptr %ok, align 4, !tbaa !4
  %tobool54 = icmp ne i32 %45, 0
  br i1 %tobool54, label %lor.lhs.false, label %if.then61

lor.lhs.false:                                    ; preds = %if.end39
  %46 = load i64, ptr %need, align 8, !tbaa !8
  %47 = load i32, ptr %Alen.addr, align 4, !tbaa !4
  %conv55 = sext i32 %47 to i64
  %cmp56 = icmp ugt i64 %46, %conv55
  br i1 %cmp56, label %if.then61, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %lor.lhs.false
  %48 = load i64, ptr %need, align 8, !tbaa !8
  %cmp59 = icmp ugt i64 %48, 2147483647
  br i1 %cmp59, label %if.then61, label %if.end66

if.then61:                                        ; preds = %lor.lhs.false58, %lor.lhs.false, %if.end39
  %49 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx62 = getelementptr inbounds i32, ptr %49, i64 3
  store i32 -7, ptr %arrayidx62, align 4, !tbaa !4
  %50 = load i64, ptr %need, align 8, !tbaa !8
  %conv63 = trunc i64 %50 to i32
  %51 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx64 = getelementptr inbounds i32, ptr %51, i64 4
  store i32 %conv63, ptr %arrayidx64, align 4, !tbaa !4
  %52 = load i32, ptr %Alen.addr, align 4, !tbaa !4
  %53 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx65 = getelementptr inbounds i32, ptr %53, i64 5
  store i32 %52, ptr %arrayidx65, align 4, !tbaa !4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end66:                                         ; preds = %lor.lhs.false58
  %54 = load i64, ptr %Col_size, align 8, !tbaa !8
  %55 = load i64, ptr %Row_size, align 8, !tbaa !8
  %add = add i64 %54, %55
  %56 = load i32, ptr %Alen.addr, align 4, !tbaa !4
  %conv67 = sext i32 %56 to i64
  %sub = sub i64 %conv67, %add
  %conv68 = trunc i64 %sub to i32
  store i32 %conv68, ptr %Alen.addr, align 4, !tbaa !4
  %57 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %58 = load i32, ptr %Alen.addr, align 4, !tbaa !4
  %idxprom69 = sext i32 %58 to i64
  %arrayidx70 = getelementptr inbounds i32, ptr %57, i64 %idxprom69
  store ptr %arrayidx70, ptr %Col, align 8, !tbaa !10
  %59 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %60 = load i32, ptr %Alen.addr, align 4, !tbaa !4
  %conv71 = sext i32 %60 to i64
  %61 = load i64, ptr %Col_size, align 8, !tbaa !8
  %add72 = add i64 %conv71, %61
  %arrayidx73 = getelementptr inbounds i32, ptr %59, i64 %add72
  store ptr %arrayidx73, ptr %Row, align 8, !tbaa !10
  %62 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %63 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %64 = load ptr, ptr %Row, align 8, !tbaa !10
  %65 = load ptr, ptr %Col, align 8, !tbaa !10
  %66 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %67 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %68 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %call74 = call i32 @init_rows_cols(i32 noundef %62, i32 noundef %63, ptr noundef %64, ptr noundef %65, ptr noundef %66, ptr noundef %67, ptr noundef %68)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.end77, label %if.then76

if.then76:                                        ; preds = %if.end66
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end77:                                         ; preds = %if.end66
  %69 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %70 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %71 = load ptr, ptr %Row, align 8, !tbaa !10
  %72 = load ptr, ptr %Col, align 8, !tbaa !10
  %73 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %74 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %75 = load ptr, ptr %knobs.addr, align 8, !tbaa !10
  call void @init_scoring(i32 noundef %69, i32 noundef %70, ptr noundef %71, ptr noundef %72, ptr noundef %73, ptr noundef %74, ptr noundef %75, ptr noundef %n_row2, ptr noundef %n_col2, ptr noundef %max_deg)
  %76 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %77 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %78 = load i32, ptr %Alen.addr, align 4, !tbaa !4
  %79 = load ptr, ptr %Row, align 8, !tbaa !10
  %80 = load ptr, ptr %Col, align 8, !tbaa !10
  %81 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %82 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %83 = load i32, ptr %n_col2, align 4, !tbaa !4
  %84 = load i32, ptr %max_deg, align 4, !tbaa !4
  %85 = load i32, ptr %nnz, align 4, !tbaa !4
  %mul = mul nsw i32 2, %85
  %86 = load i32, ptr %aggressive, align 4, !tbaa !4
  %call78 = call i32 @find_ordering(i32 noundef %76, i32 noundef %77, i32 noundef %78, ptr noundef %79, ptr noundef %80, ptr noundef %81, ptr noundef %82, i32 noundef %83, i32 noundef %84, i32 noundef %mul, i32 noundef %86)
  store i32 %call78, ptr %ngarbage, align 4, !tbaa !4
  %87 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %88 = load ptr, ptr %Col, align 8, !tbaa !10
  %89 = load ptr, ptr %p.addr, align 8, !tbaa !10
  call void @order_children(i32 noundef %87, ptr noundef %88, ptr noundef %89)
  %90 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %91 = load i32, ptr %n_row2, align 4, !tbaa !4
  %sub79 = sub nsw i32 %90, %91
  %92 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx80 = getelementptr inbounds i32, ptr %92, i64 0
  store i32 %sub79, ptr %arrayidx80, align 4, !tbaa !4
  %93 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %94 = load i32, ptr %n_col2, align 4, !tbaa !4
  %sub81 = sub nsw i32 %93, %94
  %95 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx82 = getelementptr inbounds i32, ptr %95, i64 1
  store i32 %sub81, ptr %arrayidx82, align 4, !tbaa !4
  %96 = load i32, ptr %ngarbage, align 4, !tbaa !4
  %97 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx83 = getelementptr inbounds i32, ptr %97, i64 2
  store i32 %96, ptr %arrayidx83, align 4, !tbaa !4
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.then76, %if.then61, %if.then31, %if.then25, %if.then18, %if.then13, %if.then9, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ok) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %aggressive) #4
  call void @llvm.lifetime.end.p0(i64 160, ptr %default_knobs) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_deg) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ngarbage) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_row2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_col2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Col) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Row) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %need) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Col_size) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Row_size) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nnz) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  %98 = load i32, ptr %retval, align 4
  ret i32 %98
}

; Function Attrs: nounwind uwtable
define internal i32 @init_rows_cols(i32 noundef %n_row, i32 noundef %n_col, ptr noundef %Row, ptr noundef %Col, ptr noundef %A, ptr noundef %p, ptr noundef %stats) #2 {
entry:
  %retval = alloca i32, align 4
  %n_row.addr = alloca i32, align 4
  %n_col.addr = alloca i32, align 4
  %Row.addr = alloca ptr, align 8
  %Col.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %stats.addr = alloca ptr, align 8
  %col = alloca i32, align 4
  %row = alloca i32, align 4
  %cp = alloca ptr, align 8
  %cp_end = alloca ptr, align 8
  %rp = alloca ptr, align 8
  %rp_end = alloca ptr, align 8
  %last_row = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %n_row, ptr %n_row.addr, align 4, !tbaa !4
  store i32 %n_col, ptr %n_col.addr, align 4, !tbaa !4
  store ptr %Row, ptr %Row.addr, align 8, !tbaa !10
  store ptr %Col, ptr %Col.addr, align 8, !tbaa !10
  store ptr %A, ptr %A.addr, align 8, !tbaa !10
  store ptr %p, ptr %p.addr, align 8, !tbaa !10
  store ptr %stats, ptr %stats.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %col) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %row) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp_end) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rp_end) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %last_row) #4
  store i32 0, ptr %col, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %col, align 4, !tbaa !4
  %1 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %3 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !4
  %5 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %6 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %5, i64 %idxprom1
  %start = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx2, i32 0, i32 0
  store i32 %4, ptr %start, align 4, !tbaa !30
  %7 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %8 = load i32, ptr %col, align 4, !tbaa !4
  %add = add nsw i32 %8, 1
  %idxprom3 = sext i32 %add to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %7, i64 %idxprom3
  %9 = load i32, ptr %arrayidx4, align 4, !tbaa !4
  %10 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %11 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %10, i64 %idxprom5
  %12 = load i32, ptr %arrayidx6, align 4, !tbaa !4
  %sub = sub nsw i32 %9, %12
  %13 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %14 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom7 = sext i32 %14 to i64
  %arrayidx8 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %13, i64 %idxprom7
  %length = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx8, i32 0, i32 1
  store i32 %sub, ptr %length, align 4, !tbaa !32
  %15 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %16 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom9 = sext i32 %16 to i64
  %arrayidx10 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %15, i64 %idxprom9
  %length11 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx10, i32 0, i32 1
  %17 = load i32, ptr %length11, align 4, !tbaa !32
  %cmp12 = icmp slt i32 %17, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %18 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx13 = getelementptr inbounds i32, ptr %18, i64 3
  store i32 -8, ptr %arrayidx13, align 4, !tbaa !4
  %19 = load i32, ptr %col, align 4, !tbaa !4
  %20 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx14 = getelementptr inbounds i32, ptr %20, i64 4
  store i32 %19, ptr %arrayidx14, align 4, !tbaa !4
  %21 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %22 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom15 = sext i32 %22 to i64
  %arrayidx16 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %21, i64 %idxprom15
  %length17 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx16, i32 0, i32 1
  %23 = load i32, ptr %length17, align 4, !tbaa !32
  %24 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx18 = getelementptr inbounds i32, ptr %24, i64 5
  store i32 %23, ptr %arrayidx18, align 4, !tbaa !4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  %25 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %26 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom19 = sext i32 %26 to i64
  %arrayidx20 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %25, i64 %idxprom19
  %shared1 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx20, i32 0, i32 2
  store i32 1, ptr %shared1, align 4, !tbaa !33
  %27 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %28 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom21 = sext i32 %28 to i64
  %arrayidx22 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %27, i64 %idxprom21
  %shared2 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx22, i32 0, i32 3
  store i32 0, ptr %shared2, align 4, !tbaa !33
  %29 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %30 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom23 = sext i32 %30 to i64
  %arrayidx24 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %29, i64 %idxprom23
  %shared3 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx24, i32 0, i32 4
  store i32 -1, ptr %shared3, align 4, !tbaa !33
  %31 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %32 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom25 = sext i32 %32 to i64
  %arrayidx26 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %31, i64 %idxprom25
  %shared4 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx26, i32 0, i32 5
  store i32 -1, ptr %shared4, align 4, !tbaa !33
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %33 = load i32, ptr %col, align 4, !tbaa !4
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %col, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  %34 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx27 = getelementptr inbounds i32, ptr %34, i64 6
  store i32 0, ptr %arrayidx27, align 4, !tbaa !4
  store i32 0, ptr %row, align 4, !tbaa !4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc37, %for.end
  %35 = load i32, ptr %row, align 4, !tbaa !4
  %36 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %cmp29 = icmp slt i32 %35, %36
  br i1 %cmp29, label %for.body30, label %for.end39

for.body30:                                       ; preds = %for.cond28
  %37 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %38 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom31 = sext i32 %38 to i64
  %arrayidx32 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %37, i64 %idxprom31
  %length33 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx32, i32 0, i32 1
  store i32 0, ptr %length33, align 4, !tbaa !35
  %39 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %40 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom34 = sext i32 %40 to i64
  %arrayidx35 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %39, i64 %idxprom34
  %shared236 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx35, i32 0, i32 3
  store i32 -1, ptr %shared236, align 4, !tbaa !33
  br label %for.inc37

for.inc37:                                        ; preds = %for.body30
  %41 = load i32, ptr %row, align 4, !tbaa !4
  %inc38 = add nsw i32 %41, 1
  store i32 %inc38, ptr %row, align 4, !tbaa !4
  br label %for.cond28, !llvm.loop !37

for.end39:                                        ; preds = %for.cond28
  store i32 0, ptr %col, align 4, !tbaa !4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc90, %for.end39
  %42 = load i32, ptr %col, align 4, !tbaa !4
  %43 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %cmp41 = icmp slt i32 %42, %43
  br i1 %cmp41, label %for.body42, label %for.end92

for.body42:                                       ; preds = %for.cond40
  store i32 -1, ptr %last_row, align 4, !tbaa !4
  %44 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %45 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %46 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom43 = sext i32 %46 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %45, i64 %idxprom43
  %47 = load i32, ptr %arrayidx44, align 4, !tbaa !4
  %idxprom45 = sext i32 %47 to i64
  %arrayidx46 = getelementptr inbounds i32, ptr %44, i64 %idxprom45
  store ptr %arrayidx46, ptr %cp, align 8, !tbaa !10
  %48 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %49 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %50 = load i32, ptr %col, align 4, !tbaa !4
  %add47 = add nsw i32 %50, 1
  %idxprom48 = sext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds i32, ptr %49, i64 %idxprom48
  %51 = load i32, ptr %arrayidx49, align 4, !tbaa !4
  %idxprom50 = sext i32 %51 to i64
  %arrayidx51 = getelementptr inbounds i32, ptr %48, i64 %idxprom50
  store ptr %arrayidx51, ptr %cp_end, align 8, !tbaa !10
  br label %while.cond

while.cond:                                       ; preds = %if.end86, %for.body42
  %52 = load ptr, ptr %cp, align 8, !tbaa !10
  %53 = load ptr, ptr %cp_end, align 8, !tbaa !10
  %cmp52 = icmp ult ptr %52, %53
  br i1 %cmp52, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %54 = load ptr, ptr %cp, align 8, !tbaa !10
  %incdec.ptr = getelementptr inbounds i32, ptr %54, i32 1
  store ptr %incdec.ptr, ptr %cp, align 8, !tbaa !10
  %55 = load i32, ptr %54, align 4, !tbaa !4
  store i32 %55, ptr %row, align 4, !tbaa !4
  %56 = load i32, ptr %row, align 4, !tbaa !4
  %cmp53 = icmp slt i32 %56, 0
  br i1 %cmp53, label %if.then55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %57 = load i32, ptr %row, align 4, !tbaa !4
  %58 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %cmp54 = icmp sge i32 %57, %58
  br i1 %cmp54, label %if.then55, label %if.end60

if.then55:                                        ; preds = %lor.lhs.false, %while.body
  %59 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx56 = getelementptr inbounds i32, ptr %59, i64 3
  store i32 -9, ptr %arrayidx56, align 4, !tbaa !4
  %60 = load i32, ptr %col, align 4, !tbaa !4
  %61 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx57 = getelementptr inbounds i32, ptr %61, i64 4
  store i32 %60, ptr %arrayidx57, align 4, !tbaa !4
  %62 = load i32, ptr %row, align 4, !tbaa !4
  %63 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx58 = getelementptr inbounds i32, ptr %63, i64 5
  store i32 %62, ptr %arrayidx58, align 4, !tbaa !4
  %64 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %65 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx59 = getelementptr inbounds i32, ptr %65, i64 6
  store i32 %64, ptr %arrayidx59, align 4, !tbaa !4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end60:                                         ; preds = %lor.lhs.false
  %66 = load i32, ptr %row, align 4, !tbaa !4
  %67 = load i32, ptr %last_row, align 4, !tbaa !4
  %cmp61 = icmp sle i32 %66, %67
  br i1 %cmp61, label %if.then67, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %if.end60
  %68 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %69 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom63 = sext i32 %69 to i64
  %arrayidx64 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %68, i64 %idxprom63
  %shared265 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx64, i32 0, i32 3
  %70 = load i32, ptr %shared265, align 4, !tbaa !33
  %71 = load i32, ptr %col, align 4, !tbaa !4
  %cmp66 = icmp eq i32 %70, %71
  br i1 %cmp66, label %if.then67, label %if.end73

if.then67:                                        ; preds = %lor.lhs.false62, %if.end60
  %72 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx68 = getelementptr inbounds i32, ptr %72, i64 3
  store i32 1, ptr %arrayidx68, align 4, !tbaa !4
  %73 = load i32, ptr %col, align 4, !tbaa !4
  %74 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx69 = getelementptr inbounds i32, ptr %74, i64 4
  store i32 %73, ptr %arrayidx69, align 4, !tbaa !4
  %75 = load i32, ptr %row, align 4, !tbaa !4
  %76 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx70 = getelementptr inbounds i32, ptr %76, i64 5
  store i32 %75, ptr %arrayidx70, align 4, !tbaa !4
  %77 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx71 = getelementptr inbounds i32, ptr %77, i64 6
  %78 = load i32, ptr %arrayidx71, align 4, !tbaa !4
  %inc72 = add nsw i32 %78, 1
  store i32 %inc72, ptr %arrayidx71, align 4, !tbaa !4
  br label %if.end73

if.end73:                                         ; preds = %if.then67, %lor.lhs.false62
  %79 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %80 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom74 = sext i32 %80 to i64
  %arrayidx75 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %79, i64 %idxprom74
  %shared276 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx75, i32 0, i32 3
  %81 = load i32, ptr %shared276, align 4, !tbaa !33
  %82 = load i32, ptr %col, align 4, !tbaa !4
  %cmp77 = icmp ne i32 %81, %82
  br i1 %cmp77, label %if.then78, label %if.else

if.then78:                                        ; preds = %if.end73
  %83 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %84 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom79 = sext i32 %84 to i64
  %arrayidx80 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %83, i64 %idxprom79
  %length81 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx80, i32 0, i32 1
  %85 = load i32, ptr %length81, align 4, !tbaa !35
  %inc82 = add nsw i32 %85, 1
  store i32 %inc82, ptr %length81, align 4, !tbaa !35
  br label %if.end86

if.else:                                          ; preds = %if.end73
  %86 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %87 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom83 = sext i32 %87 to i64
  %arrayidx84 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %86, i64 %idxprom83
  %length85 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx84, i32 0, i32 1
  %88 = load i32, ptr %length85, align 4, !tbaa !32
  %dec = add nsw i32 %88, -1
  store i32 %dec, ptr %length85, align 4, !tbaa !32
  br label %if.end86

if.end86:                                         ; preds = %if.else, %if.then78
  %89 = load i32, ptr %col, align 4, !tbaa !4
  %90 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %91 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom87 = sext i32 %91 to i64
  %arrayidx88 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %90, i64 %idxprom87
  %shared289 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx88, i32 0, i32 3
  store i32 %89, ptr %shared289, align 4, !tbaa !33
  %92 = load i32, ptr %row, align 4, !tbaa !4
  store i32 %92, ptr %last_row, align 4, !tbaa !4
  br label %while.cond, !llvm.loop !38

while.end:                                        ; preds = %while.cond
  br label %for.inc90

for.inc90:                                        ; preds = %while.end
  %93 = load i32, ptr %col, align 4, !tbaa !4
  %inc91 = add nsw i32 %93, 1
  store i32 %inc91, ptr %col, align 4, !tbaa !4
  br label %for.cond40, !llvm.loop !39

for.end92:                                        ; preds = %for.cond40
  %94 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %95 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %idxprom93 = sext i32 %95 to i64
  %arrayidx94 = getelementptr inbounds i32, ptr %94, i64 %idxprom93
  %96 = load i32, ptr %arrayidx94, align 4, !tbaa !4
  %97 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %arrayidx95 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %97, i64 0
  %start96 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx95, i32 0, i32 0
  store i32 %96, ptr %start96, align 4, !tbaa !40
  %98 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %arrayidx97 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %98, i64 0
  %start98 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx97, i32 0, i32 0
  %99 = load i32, ptr %start98, align 4, !tbaa !40
  %100 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %arrayidx99 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %100, i64 0
  %shared1100 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx99, i32 0, i32 2
  store i32 %99, ptr %shared1100, align 4, !tbaa !33
  %101 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %arrayidx101 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %101, i64 0
  %shared2102 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx101, i32 0, i32 3
  store i32 -1, ptr %shared2102, align 4, !tbaa !33
  store i32 1, ptr %row, align 4, !tbaa !4
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc127, %for.end92
  %102 = load i32, ptr %row, align 4, !tbaa !4
  %103 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %cmp104 = icmp slt i32 %102, %103
  br i1 %cmp104, label %for.body105, label %for.end129

for.body105:                                      ; preds = %for.cond103
  %104 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %105 = load i32, ptr %row, align 4, !tbaa !4
  %sub106 = sub nsw i32 %105, 1
  %idxprom107 = sext i32 %sub106 to i64
  %arrayidx108 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %104, i64 %idxprom107
  %start109 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx108, i32 0, i32 0
  %106 = load i32, ptr %start109, align 4, !tbaa !40
  %107 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %108 = load i32, ptr %row, align 4, !tbaa !4
  %sub110 = sub nsw i32 %108, 1
  %idxprom111 = sext i32 %sub110 to i64
  %arrayidx112 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %107, i64 %idxprom111
  %length113 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx112, i32 0, i32 1
  %109 = load i32, ptr %length113, align 4, !tbaa !35
  %add114 = add nsw i32 %106, %109
  %110 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %111 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom115 = sext i32 %111 to i64
  %arrayidx116 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %110, i64 %idxprom115
  %start117 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx116, i32 0, i32 0
  store i32 %add114, ptr %start117, align 4, !tbaa !40
  %112 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %113 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom118 = sext i32 %113 to i64
  %arrayidx119 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %112, i64 %idxprom118
  %start120 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx119, i32 0, i32 0
  %114 = load i32, ptr %start120, align 4, !tbaa !40
  %115 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %116 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom121 = sext i32 %116 to i64
  %arrayidx122 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %115, i64 %idxprom121
  %shared1123 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx122, i32 0, i32 2
  store i32 %114, ptr %shared1123, align 4, !tbaa !33
  %117 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %118 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom124 = sext i32 %118 to i64
  %arrayidx125 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %117, i64 %idxprom124
  %shared2126 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx125, i32 0, i32 3
  store i32 -1, ptr %shared2126, align 4, !tbaa !33
  br label %for.inc127

for.inc127:                                       ; preds = %for.body105
  %119 = load i32, ptr %row, align 4, !tbaa !4
  %inc128 = add nsw i32 %119, 1
  store i32 %inc128, ptr %row, align 4, !tbaa !4
  br label %for.cond103, !llvm.loop !41

for.end129:                                       ; preds = %for.cond103
  %120 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx130 = getelementptr inbounds i32, ptr %120, i64 3
  %121 = load i32, ptr %arrayidx130, align 4, !tbaa !4
  %cmp131 = icmp eq i32 %121, 1
  br i1 %cmp131, label %if.then132, label %if.else168

if.then132:                                       ; preds = %for.end129
  store i32 0, ptr %col, align 4, !tbaa !4
  br label %for.cond133

for.cond133:                                      ; preds = %for.inc165, %if.then132
  %122 = load i32, ptr %col, align 4, !tbaa !4
  %123 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %cmp134 = icmp slt i32 %122, %123
  br i1 %cmp134, label %for.body135, label %for.end167

for.body135:                                      ; preds = %for.cond133
  %124 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %125 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %126 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom136 = sext i32 %126 to i64
  %arrayidx137 = getelementptr inbounds i32, ptr %125, i64 %idxprom136
  %127 = load i32, ptr %arrayidx137, align 4, !tbaa !4
  %idxprom138 = sext i32 %127 to i64
  %arrayidx139 = getelementptr inbounds i32, ptr %124, i64 %idxprom138
  store ptr %arrayidx139, ptr %cp, align 8, !tbaa !10
  %128 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %129 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %130 = load i32, ptr %col, align 4, !tbaa !4
  %add140 = add nsw i32 %130, 1
  %idxprom141 = sext i32 %add140 to i64
  %arrayidx142 = getelementptr inbounds i32, ptr %129, i64 %idxprom141
  %131 = load i32, ptr %arrayidx142, align 4, !tbaa !4
  %idxprom143 = sext i32 %131 to i64
  %arrayidx144 = getelementptr inbounds i32, ptr %128, i64 %idxprom143
  store ptr %arrayidx144, ptr %cp_end, align 8, !tbaa !10
  br label %while.cond145

while.cond145:                                    ; preds = %if.end163, %for.body135
  %132 = load ptr, ptr %cp, align 8, !tbaa !10
  %133 = load ptr, ptr %cp_end, align 8, !tbaa !10
  %cmp146 = icmp ult ptr %132, %133
  br i1 %cmp146, label %while.body147, label %while.end164

while.body147:                                    ; preds = %while.cond145
  %134 = load ptr, ptr %cp, align 8, !tbaa !10
  %incdec.ptr148 = getelementptr inbounds i32, ptr %134, i32 1
  store ptr %incdec.ptr148, ptr %cp, align 8, !tbaa !10
  %135 = load i32, ptr %134, align 4, !tbaa !4
  store i32 %135, ptr %row, align 4, !tbaa !4
  %136 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %137 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom149 = sext i32 %137 to i64
  %arrayidx150 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %136, i64 %idxprom149
  %shared2151 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx150, i32 0, i32 3
  %138 = load i32, ptr %shared2151, align 4, !tbaa !33
  %139 = load i32, ptr %col, align 4, !tbaa !4
  %cmp152 = icmp ne i32 %138, %139
  br i1 %cmp152, label %if.then153, label %if.end163

if.then153:                                       ; preds = %while.body147
  %140 = load i32, ptr %col, align 4, !tbaa !4
  %141 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %142 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %143 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom154 = sext i32 %143 to i64
  %arrayidx155 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %142, i64 %idxprom154
  %shared1156 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx155, i32 0, i32 2
  %144 = load i32, ptr %shared1156, align 4, !tbaa !33
  %inc157 = add nsw i32 %144, 1
  store i32 %inc157, ptr %shared1156, align 4, !tbaa !33
  %idxprom158 = sext i32 %144 to i64
  %arrayidx159 = getelementptr inbounds i32, ptr %141, i64 %idxprom158
  store i32 %140, ptr %arrayidx159, align 4, !tbaa !4
  %145 = load i32, ptr %col, align 4, !tbaa !4
  %146 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %147 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom160 = sext i32 %147 to i64
  %arrayidx161 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %146, i64 %idxprom160
  %shared2162 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx161, i32 0, i32 3
  store i32 %145, ptr %shared2162, align 4, !tbaa !33
  br label %if.end163

if.end163:                                        ; preds = %if.then153, %while.body147
  br label %while.cond145, !llvm.loop !42

while.end164:                                     ; preds = %while.cond145
  br label %for.inc165

for.inc165:                                       ; preds = %while.end164
  %148 = load i32, ptr %col, align 4, !tbaa !4
  %inc166 = add nsw i32 %148, 1
  store i32 %inc166, ptr %col, align 4, !tbaa !4
  br label %for.cond133, !llvm.loop !43

for.end167:                                       ; preds = %for.cond133
  br label %if.end195

if.else168:                                       ; preds = %for.end129
  store i32 0, ptr %col, align 4, !tbaa !4
  br label %for.cond169

for.cond169:                                      ; preds = %for.inc192, %if.else168
  %149 = load i32, ptr %col, align 4, !tbaa !4
  %150 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %cmp170 = icmp slt i32 %149, %150
  br i1 %cmp170, label %for.body171, label %for.end194

for.body171:                                      ; preds = %for.cond169
  %151 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %152 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %153 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom172 = sext i32 %153 to i64
  %arrayidx173 = getelementptr inbounds i32, ptr %152, i64 %idxprom172
  %154 = load i32, ptr %arrayidx173, align 4, !tbaa !4
  %idxprom174 = sext i32 %154 to i64
  %arrayidx175 = getelementptr inbounds i32, ptr %151, i64 %idxprom174
  store ptr %arrayidx175, ptr %cp, align 8, !tbaa !10
  %155 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %156 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %157 = load i32, ptr %col, align 4, !tbaa !4
  %add176 = add nsw i32 %157, 1
  %idxprom177 = sext i32 %add176 to i64
  %arrayidx178 = getelementptr inbounds i32, ptr %156, i64 %idxprom177
  %158 = load i32, ptr %arrayidx178, align 4, !tbaa !4
  %idxprom179 = sext i32 %158 to i64
  %arrayidx180 = getelementptr inbounds i32, ptr %155, i64 %idxprom179
  store ptr %arrayidx180, ptr %cp_end, align 8, !tbaa !10
  br label %while.cond181

while.cond181:                                    ; preds = %while.body183, %for.body171
  %159 = load ptr, ptr %cp, align 8, !tbaa !10
  %160 = load ptr, ptr %cp_end, align 8, !tbaa !10
  %cmp182 = icmp ult ptr %159, %160
  br i1 %cmp182, label %while.body183, label %while.end191

while.body183:                                    ; preds = %while.cond181
  %161 = load i32, ptr %col, align 4, !tbaa !4
  %162 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %163 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %164 = load ptr, ptr %cp, align 8, !tbaa !10
  %incdec.ptr184 = getelementptr inbounds i32, ptr %164, i32 1
  store ptr %incdec.ptr184, ptr %cp, align 8, !tbaa !10
  %165 = load i32, ptr %164, align 4, !tbaa !4
  %idxprom185 = sext i32 %165 to i64
  %arrayidx186 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %163, i64 %idxprom185
  %shared1187 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx186, i32 0, i32 2
  %166 = load i32, ptr %shared1187, align 4, !tbaa !33
  %inc188 = add nsw i32 %166, 1
  store i32 %inc188, ptr %shared1187, align 4, !tbaa !33
  %idxprom189 = sext i32 %166 to i64
  %arrayidx190 = getelementptr inbounds i32, ptr %162, i64 %idxprom189
  store i32 %161, ptr %arrayidx190, align 4, !tbaa !4
  br label %while.cond181, !llvm.loop !44

while.end191:                                     ; preds = %while.cond181
  br label %for.inc192

for.inc192:                                       ; preds = %while.end191
  %167 = load i32, ptr %col, align 4, !tbaa !4
  %inc193 = add nsw i32 %167, 1
  store i32 %inc193, ptr %col, align 4, !tbaa !4
  br label %for.cond169, !llvm.loop !45

for.end194:                                       ; preds = %for.cond169
  br label %if.end195

if.end195:                                        ; preds = %for.end194, %for.end167
  store i32 0, ptr %row, align 4, !tbaa !4
  br label %for.cond196

for.cond196:                                      ; preds = %for.inc208, %if.end195
  %168 = load i32, ptr %row, align 4, !tbaa !4
  %169 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %cmp197 = icmp slt i32 %168, %169
  br i1 %cmp197, label %for.body198, label %for.end210

for.body198:                                      ; preds = %for.cond196
  %170 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %171 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom199 = sext i32 %171 to i64
  %arrayidx200 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %170, i64 %idxprom199
  %shared2201 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx200, i32 0, i32 3
  store i32 0, ptr %shared2201, align 4, !tbaa !33
  %172 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %173 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom202 = sext i32 %173 to i64
  %arrayidx203 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %172, i64 %idxprom202
  %length204 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx203, i32 0, i32 1
  %174 = load i32, ptr %length204, align 4, !tbaa !35
  %175 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %176 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom205 = sext i32 %176 to i64
  %arrayidx206 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %175, i64 %idxprom205
  %shared1207 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx206, i32 0, i32 2
  store i32 %174, ptr %shared1207, align 4, !tbaa !33
  br label %for.inc208

for.inc208:                                       ; preds = %for.body198
  %177 = load i32, ptr %row, align 4, !tbaa !4
  %inc209 = add nsw i32 %177, 1
  store i32 %inc209, ptr %row, align 4, !tbaa !4
  br label %for.cond196, !llvm.loop !46

for.end210:                                       ; preds = %for.cond196
  %178 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx211 = getelementptr inbounds i32, ptr %178, i64 3
  %179 = load i32, ptr %arrayidx211, align 4, !tbaa !4
  %cmp212 = icmp eq i32 %179, 1
  br i1 %cmp212, label %if.then213, label %if.end266

if.then213:                                       ; preds = %for.end210
  %180 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %arrayidx214 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %180, i64 0
  %start215 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx214, i32 0, i32 0
  store i32 0, ptr %start215, align 4, !tbaa !30
  %181 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %arrayidx216 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %181, i64 0
  %start217 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx216, i32 0, i32 0
  %182 = load i32, ptr %start217, align 4, !tbaa !30
  %183 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %arrayidx218 = getelementptr inbounds i32, ptr %183, i64 0
  store i32 %182, ptr %arrayidx218, align 4, !tbaa !4
  store i32 1, ptr %col, align 4, !tbaa !4
  br label %for.cond219

for.cond219:                                      ; preds = %for.inc239, %if.then213
  %184 = load i32, ptr %col, align 4, !tbaa !4
  %185 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %cmp220 = icmp slt i32 %184, %185
  br i1 %cmp220, label %for.body221, label %for.end241

for.body221:                                      ; preds = %for.cond219
  %186 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %187 = load i32, ptr %col, align 4, !tbaa !4
  %sub222 = sub nsw i32 %187, 1
  %idxprom223 = sext i32 %sub222 to i64
  %arrayidx224 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %186, i64 %idxprom223
  %start225 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx224, i32 0, i32 0
  %188 = load i32, ptr %start225, align 4, !tbaa !30
  %189 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %190 = load i32, ptr %col, align 4, !tbaa !4
  %sub226 = sub nsw i32 %190, 1
  %idxprom227 = sext i32 %sub226 to i64
  %arrayidx228 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %189, i64 %idxprom227
  %length229 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx228, i32 0, i32 1
  %191 = load i32, ptr %length229, align 4, !tbaa !32
  %add230 = add nsw i32 %188, %191
  %192 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %193 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom231 = sext i32 %193 to i64
  %arrayidx232 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %192, i64 %idxprom231
  %start233 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx232, i32 0, i32 0
  store i32 %add230, ptr %start233, align 4, !tbaa !30
  %194 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %195 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom234 = sext i32 %195 to i64
  %arrayidx235 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %194, i64 %idxprom234
  %start236 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx235, i32 0, i32 0
  %196 = load i32, ptr %start236, align 4, !tbaa !30
  %197 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %198 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom237 = sext i32 %198 to i64
  %arrayidx238 = getelementptr inbounds i32, ptr %197, i64 %idxprom237
  store i32 %196, ptr %arrayidx238, align 4, !tbaa !4
  br label %for.inc239

for.inc239:                                       ; preds = %for.body221
  %199 = load i32, ptr %col, align 4, !tbaa !4
  %inc240 = add nsw i32 %199, 1
  store i32 %inc240, ptr %col, align 4, !tbaa !4
  br label %for.cond219, !llvm.loop !47

for.end241:                                       ; preds = %for.cond219
  store i32 0, ptr %row, align 4, !tbaa !4
  br label %for.cond242

for.cond242:                                      ; preds = %for.inc263, %for.end241
  %200 = load i32, ptr %row, align 4, !tbaa !4
  %201 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %cmp243 = icmp slt i32 %200, %201
  br i1 %cmp243, label %for.body244, label %for.end265

for.body244:                                      ; preds = %for.cond242
  %202 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %203 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %204 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom245 = sext i32 %204 to i64
  %arrayidx246 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %203, i64 %idxprom245
  %start247 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx246, i32 0, i32 0
  %205 = load i32, ptr %start247, align 4, !tbaa !40
  %idxprom248 = sext i32 %205 to i64
  %arrayidx249 = getelementptr inbounds i32, ptr %202, i64 %idxprom248
  store ptr %arrayidx249, ptr %rp, align 8, !tbaa !10
  %206 = load ptr, ptr %rp, align 8, !tbaa !10
  %207 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %208 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom250 = sext i32 %208 to i64
  %arrayidx251 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %207, i64 %idxprom250
  %length252 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx251, i32 0, i32 1
  %209 = load i32, ptr %length252, align 4, !tbaa !35
  %idx.ext = sext i32 %209 to i64
  %add.ptr = getelementptr inbounds i32, ptr %206, i64 %idx.ext
  store ptr %add.ptr, ptr %rp_end, align 8, !tbaa !10
  br label %while.cond253

while.cond253:                                    ; preds = %while.body255, %for.body244
  %210 = load ptr, ptr %rp, align 8, !tbaa !10
  %211 = load ptr, ptr %rp_end, align 8, !tbaa !10
  %cmp254 = icmp ult ptr %210, %211
  br i1 %cmp254, label %while.body255, label %while.end262

while.body255:                                    ; preds = %while.cond253
  %212 = load i32, ptr %row, align 4, !tbaa !4
  %213 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %214 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %215 = load ptr, ptr %rp, align 8, !tbaa !10
  %incdec.ptr256 = getelementptr inbounds i32, ptr %215, i32 1
  store ptr %incdec.ptr256, ptr %rp, align 8, !tbaa !10
  %216 = load i32, ptr %215, align 4, !tbaa !4
  %idxprom257 = sext i32 %216 to i64
  %arrayidx258 = getelementptr inbounds i32, ptr %214, i64 %idxprom257
  %217 = load i32, ptr %arrayidx258, align 4, !tbaa !4
  %inc259 = add nsw i32 %217, 1
  store i32 %inc259, ptr %arrayidx258, align 4, !tbaa !4
  %idxprom260 = sext i32 %217 to i64
  %arrayidx261 = getelementptr inbounds i32, ptr %213, i64 %idxprom260
  store i32 %212, ptr %arrayidx261, align 4, !tbaa !4
  br label %while.cond253, !llvm.loop !48

while.end262:                                     ; preds = %while.cond253
  br label %for.inc263

for.inc263:                                       ; preds = %while.end262
  %218 = load i32, ptr %row, align 4, !tbaa !4
  %inc264 = add nsw i32 %218, 1
  store i32 %inc264, ptr %row, align 4, !tbaa !4
  br label %for.cond242, !llvm.loop !49

for.end265:                                       ; preds = %for.cond242
  br label %if.end266

if.end266:                                        ; preds = %for.end265, %for.end210
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end266, %if.then55, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %last_row) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rp_end) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp_end) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %row) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %col) #4
  %219 = load i32, ptr %retval, align 4
  ret i32 %219
}

; Function Attrs: nounwind uwtable
define internal void @init_scoring(i32 noundef %n_row, i32 noundef %n_col, ptr noundef %Row, ptr noundef %Col, ptr noundef %A, ptr noundef %head, ptr noundef %knobs, ptr noundef %p_n_row2, ptr noundef %p_n_col2, ptr noundef %p_max_deg) #2 {
entry:
  %n_row.addr = alloca i32, align 4
  %n_col.addr = alloca i32, align 4
  %Row.addr = alloca ptr, align 8
  %Col.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %knobs.addr = alloca ptr, align 8
  %p_n_row2.addr = alloca ptr, align 8
  %p_n_col2.addr = alloca ptr, align 8
  %p_max_deg.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %r = alloca i32, align 4
  %row = alloca i32, align 4
  %cp = alloca ptr, align 8
  %deg = alloca i32, align 4
  %cp_end = alloca ptr, align 8
  %new_cp = alloca ptr, align 8
  %col_length = alloca i32, align 4
  %score = alloca i32, align 4
  %n_col2 = alloca i32, align 4
  %n_row2 = alloca i32, align 4
  %dense_row_count = alloca i32, align 4
  %dense_col_count = alloca i32, align 4
  %min_score = alloca i32, align 4
  %max_deg = alloca i32, align 4
  %next_col = alloca i32, align 4
  store i32 %n_row, ptr %n_row.addr, align 4, !tbaa !4
  store i32 %n_col, ptr %n_col.addr, align 4, !tbaa !4
  store ptr %Row, ptr %Row.addr, align 8, !tbaa !10
  store ptr %Col, ptr %Col.addr, align 8, !tbaa !10
  store ptr %A, ptr %A.addr, align 8, !tbaa !10
  store ptr %head, ptr %head.addr, align 8, !tbaa !10
  store ptr %knobs, ptr %knobs.addr, align 8, !tbaa !10
  store ptr %p_n_row2, ptr %p_n_row2.addr, align 8, !tbaa !10
  store ptr %p_n_col2, ptr %p_n_col2.addr, align 8, !tbaa !10
  store ptr %p_max_deg, ptr %p_max_deg.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %row) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %deg) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp_end) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_cp) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %col_length) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %score) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_col2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_row2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %dense_row_count) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %dense_col_count) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_score) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_deg) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %next_col) #4
  %0 = load ptr, ptr %knobs.addr, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds double, ptr %0, i64 0
  %1 = load double, ptr %arrayidx, align 8, !tbaa !14
  %cmp = fcmp olt double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, ptr %dense_row_count, align 4, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %knobs.addr, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds double, ptr %3, i64 0
  %4 = load double, ptr %arrayidx1, align 8, !tbaa !14
  %5 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %conv = sitofp i32 %5 to double
  %call = call double @sqrt(double noundef %conv) #4
  %mul = fmul double %4, %call
  %cmp2 = fcmp ogt double 1.600000e+01, %mul
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %6 = load ptr, ptr %knobs.addr, align 8, !tbaa !10
  %arrayidx4 = getelementptr inbounds double, ptr %6, i64 0
  %7 = load double, ptr %arrayidx4, align 8, !tbaa !14
  %8 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %conv5 = sitofp i32 %8 to double
  %call6 = call double @sqrt(double noundef %conv5) #4
  %mul7 = fmul double %7, %call6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 1.600000e+01, %cond.true ], [ %mul7, %cond.false ]
  %conv8 = fptosi double %cond to i32
  store i32 %conv8, ptr %dense_row_count, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %9 = load ptr, ptr %knobs.addr, align 8, !tbaa !10
  %arrayidx9 = getelementptr inbounds double, ptr %9, i64 1
  %10 = load double, ptr %arrayidx9, align 8, !tbaa !14
  %cmp10 = fcmp olt double %10, 0.000000e+00
  br i1 %cmp10, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.end
  %11 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %sub13 = sub nsw i32 %11, 1
  store i32 %sub13, ptr %dense_col_count, align 4, !tbaa !4
  br label %if.end42

if.else14:                                        ; preds = %if.end
  %12 = load ptr, ptr %knobs.addr, align 8, !tbaa !10
  %arrayidx15 = getelementptr inbounds double, ptr %12, i64 1
  %13 = load double, ptr %arrayidx15, align 8, !tbaa !14
  %14 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %15 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %cmp16 = icmp slt i32 %14, %15
  br i1 %cmp16, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %if.else14
  %16 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  br label %cond.end20

cond.false19:                                     ; preds = %if.else14
  %17 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %cond.true18
  %cond21 = phi i32 [ %16, %cond.true18 ], [ %17, %cond.false19 ]
  %conv22 = sitofp i32 %cond21 to double
  %call23 = call double @sqrt(double noundef %conv22) #4
  %mul24 = fmul double %13, %call23
  %cmp25 = fcmp ogt double 1.600000e+01, %mul24
  br i1 %cmp25, label %cond.true27, label %cond.false28

cond.true27:                                      ; preds = %cond.end20
  br label %cond.end39

cond.false28:                                     ; preds = %cond.end20
  %18 = load ptr, ptr %knobs.addr, align 8, !tbaa !10
  %arrayidx29 = getelementptr inbounds double, ptr %18, i64 1
  %19 = load double, ptr %arrayidx29, align 8, !tbaa !14
  %20 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %21 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %cmp30 = icmp slt i32 %20, %21
  br i1 %cmp30, label %cond.true32, label %cond.false33

cond.true32:                                      ; preds = %cond.false28
  %22 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  br label %cond.end34

cond.false33:                                     ; preds = %cond.false28
  %23 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false33, %cond.true32
  %cond35 = phi i32 [ %22, %cond.true32 ], [ %23, %cond.false33 ]
  %conv36 = sitofp i32 %cond35 to double
  %call37 = call double @sqrt(double noundef %conv36) #4
  %mul38 = fmul double %19, %call37
  br label %cond.end39

cond.end39:                                       ; preds = %cond.end34, %cond.true27
  %cond40 = phi double [ 1.600000e+01, %cond.true27 ], [ %mul38, %cond.end34 ]
  %conv41 = fptosi double %cond40 to i32
  store i32 %conv41, ptr %dense_col_count, align 4, !tbaa !4
  br label %if.end42

if.end42:                                         ; preds = %cond.end39, %if.then12
  store i32 0, ptr %max_deg, align 4, !tbaa !4
  %24 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  store i32 %24, ptr %n_col2, align 4, !tbaa !4
  %25 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  store i32 %25, ptr %n_row2, align 4, !tbaa !4
  %26 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %sub43 = sub nsw i32 %26, 1
  store i32 %sub43, ptr %c, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end42
  %27 = load i32, ptr %c, align 4, !tbaa !4
  %cmp44 = icmp sge i32 %27, 0
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %29 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom = sext i32 %29 to i64
  %arrayidx46 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %28, i64 %idxprom
  %length = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx46, i32 0, i32 1
  %30 = load i32, ptr %length, align 4, !tbaa !32
  store i32 %30, ptr %deg, align 4, !tbaa !4
  %31 = load i32, ptr %deg, align 4, !tbaa !4
  %cmp47 = icmp eq i32 %31, 0
  br i1 %cmp47, label %if.then49, label %if.end54

if.then49:                                        ; preds = %for.body
  %32 = load i32, ptr %n_col2, align 4, !tbaa !4
  %dec = add nsw i32 %32, -1
  store i32 %dec, ptr %n_col2, align 4, !tbaa !4
  %33 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %34 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom50 = sext i32 %34 to i64
  %arrayidx51 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %33, i64 %idxprom50
  %shared2 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx51, i32 0, i32 3
  store i32 %dec, ptr %shared2, align 4, !tbaa !33
  %35 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %36 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom52 = sext i32 %36 to i64
  %arrayidx53 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %35, i64 %idxprom52
  %start = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx53, i32 0, i32 0
  store i32 -1, ptr %start, align 4, !tbaa !30
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end54
  %37 = load i32, ptr %c, align 4, !tbaa !4
  %dec55 = add nsw i32 %37, -1
  store i32 %dec55, ptr %c, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !50

for.end:                                          ; preds = %for.cond
  %38 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %sub56 = sub nsw i32 %38, 1
  store i32 %sub56, ptr %c, align 4, !tbaa !4
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc95, %for.end
  %39 = load i32, ptr %c, align 4, !tbaa !4
  %cmp58 = icmp sge i32 %39, 0
  br i1 %cmp58, label %for.body60, label %for.end97

for.body60:                                       ; preds = %for.cond57
  %40 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %41 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom61 = sext i32 %41 to i64
  %arrayidx62 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %40, i64 %idxprom61
  %start63 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx62, i32 0, i32 0
  %42 = load i32, ptr %start63, align 4, !tbaa !30
  %cmp64 = icmp slt i32 %42, 0
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %for.body60
  br label %for.inc95

if.end67:                                         ; preds = %for.body60
  %43 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %44 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom68 = sext i32 %44 to i64
  %arrayidx69 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %43, i64 %idxprom68
  %length70 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx69, i32 0, i32 1
  %45 = load i32, ptr %length70, align 4, !tbaa !32
  store i32 %45, ptr %deg, align 4, !tbaa !4
  %46 = load i32, ptr %deg, align 4, !tbaa !4
  %47 = load i32, ptr %dense_col_count, align 4, !tbaa !4
  %cmp71 = icmp sgt i32 %46, %47
  br i1 %cmp71, label %if.then73, label %if.end94

if.then73:                                        ; preds = %if.end67
  %48 = load i32, ptr %n_col2, align 4, !tbaa !4
  %dec74 = add nsw i32 %48, -1
  store i32 %dec74, ptr %n_col2, align 4, !tbaa !4
  %49 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %50 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom75 = sext i32 %50 to i64
  %arrayidx76 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %49, i64 %idxprom75
  %shared277 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx76, i32 0, i32 3
  store i32 %dec74, ptr %shared277, align 4, !tbaa !33
  %51 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %52 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %53 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom78 = sext i32 %53 to i64
  %arrayidx79 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %52, i64 %idxprom78
  %start80 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx79, i32 0, i32 0
  %54 = load i32, ptr %start80, align 4, !tbaa !30
  %idxprom81 = sext i32 %54 to i64
  %arrayidx82 = getelementptr inbounds i32, ptr %51, i64 %idxprom81
  store ptr %arrayidx82, ptr %cp, align 8, !tbaa !10
  %55 = load ptr, ptr %cp, align 8, !tbaa !10
  %56 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %57 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom83 = sext i32 %57 to i64
  %arrayidx84 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %56, i64 %idxprom83
  %length85 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx84, i32 0, i32 1
  %58 = load i32, ptr %length85, align 4, !tbaa !32
  %idx.ext = sext i32 %58 to i64
  %add.ptr = getelementptr inbounds i32, ptr %55, i64 %idx.ext
  store ptr %add.ptr, ptr %cp_end, align 8, !tbaa !10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then73
  %59 = load ptr, ptr %cp, align 8, !tbaa !10
  %60 = load ptr, ptr %cp_end, align 8, !tbaa !10
  %cmp86 = icmp ult ptr %59, %60
  br i1 %cmp86, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %61 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %62 = load ptr, ptr %cp, align 8, !tbaa !10
  %incdec.ptr = getelementptr inbounds i32, ptr %62, i32 1
  store ptr %incdec.ptr, ptr %cp, align 8, !tbaa !10
  %63 = load i32, ptr %62, align 4, !tbaa !4
  %idxprom88 = sext i32 %63 to i64
  %arrayidx89 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %61, i64 %idxprom88
  %shared1 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx89, i32 0, i32 2
  %64 = load i32, ptr %shared1, align 4, !tbaa !33
  %dec90 = add nsw i32 %64, -1
  store i32 %dec90, ptr %shared1, align 4, !tbaa !33
  br label %while.cond, !llvm.loop !51

while.end:                                        ; preds = %while.cond
  %65 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %66 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom91 = sext i32 %66 to i64
  %arrayidx92 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %65, i64 %idxprom91
  %start93 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx92, i32 0, i32 0
  store i32 -1, ptr %start93, align 4, !tbaa !30
  br label %if.end94

if.end94:                                         ; preds = %while.end, %if.end67
  br label %for.inc95

for.inc95:                                        ; preds = %if.end94, %if.then66
  %67 = load i32, ptr %c, align 4, !tbaa !4
  %dec96 = add nsw i32 %67, -1
  store i32 %dec96, ptr %c, align 4, !tbaa !4
  br label %for.cond57, !llvm.loop !52

for.end97:                                        ; preds = %for.cond57
  store i32 0, ptr %r, align 4, !tbaa !4
  br label %for.cond98

for.cond98:                                       ; preds = %for.inc122, %for.end97
  %68 = load i32, ptr %r, align 4, !tbaa !4
  %69 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %cmp99 = icmp slt i32 %68, %69
  br i1 %cmp99, label %for.body101, label %for.end123

for.body101:                                      ; preds = %for.cond98
  %70 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %71 = load i32, ptr %r, align 4, !tbaa !4
  %idxprom102 = sext i32 %71 to i64
  %arrayidx103 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %70, i64 %idxprom102
  %shared1104 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx103, i32 0, i32 2
  %72 = load i32, ptr %shared1104, align 4, !tbaa !33
  store i32 %72, ptr %deg, align 4, !tbaa !4
  %73 = load i32, ptr %deg, align 4, !tbaa !4
  %74 = load i32, ptr %dense_row_count, align 4, !tbaa !4
  %cmp105 = icmp sgt i32 %73, %74
  br i1 %cmp105, label %if.then109, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body101
  %75 = load i32, ptr %deg, align 4, !tbaa !4
  %cmp107 = icmp eq i32 %75, 0
  br i1 %cmp107, label %if.then109, label %if.else114

if.then109:                                       ; preds = %lor.lhs.false, %for.body101
  %76 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %77 = load i32, ptr %r, align 4, !tbaa !4
  %idxprom110 = sext i32 %77 to i64
  %arrayidx111 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %76, i64 %idxprom110
  %shared2112 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx111, i32 0, i32 3
  store i32 -1, ptr %shared2112, align 4, !tbaa !33
  %78 = load i32, ptr %n_row2, align 4, !tbaa !4
  %dec113 = add nsw i32 %78, -1
  store i32 %dec113, ptr %n_row2, align 4, !tbaa !4
  br label %if.end121

if.else114:                                       ; preds = %lor.lhs.false
  %79 = load i32, ptr %max_deg, align 4, !tbaa !4
  %80 = load i32, ptr %deg, align 4, !tbaa !4
  %cmp115 = icmp sgt i32 %79, %80
  br i1 %cmp115, label %cond.true117, label %cond.false118

cond.true117:                                     ; preds = %if.else114
  %81 = load i32, ptr %max_deg, align 4, !tbaa !4
  br label %cond.end119

cond.false118:                                    ; preds = %if.else114
  %82 = load i32, ptr %deg, align 4, !tbaa !4
  br label %cond.end119

cond.end119:                                      ; preds = %cond.false118, %cond.true117
  %cond120 = phi i32 [ %81, %cond.true117 ], [ %82, %cond.false118 ]
  store i32 %cond120, ptr %max_deg, align 4, !tbaa !4
  br label %if.end121

if.end121:                                        ; preds = %cond.end119, %if.then109
  br label %for.inc122

for.inc122:                                       ; preds = %if.end121
  %83 = load i32, ptr %r, align 4, !tbaa !4
  %inc = add nsw i32 %83, 1
  store i32 %inc, ptr %r, align 4, !tbaa !4
  br label %for.cond98, !llvm.loop !53

for.end123:                                       ; preds = %for.cond98
  %84 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %sub124 = sub nsw i32 %84, 1
  store i32 %sub124, ptr %c, align 4, !tbaa !4
  br label %for.cond125

for.cond125:                                      ; preds = %for.inc194, %for.end123
  %85 = load i32, ptr %c, align 4, !tbaa !4
  %cmp126 = icmp sge i32 %85, 0
  br i1 %cmp126, label %for.body128, label %for.end196

for.body128:                                      ; preds = %for.cond125
  %86 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %87 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom129 = sext i32 %87 to i64
  %arrayidx130 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %86, i64 %idxprom129
  %start131 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx130, i32 0, i32 0
  %88 = load i32, ptr %start131, align 4, !tbaa !30
  %cmp132 = icmp slt i32 %88, 0
  br i1 %cmp132, label %if.then134, label %if.end135

if.then134:                                       ; preds = %for.body128
  br label %for.inc194

if.end135:                                        ; preds = %for.body128
  store i32 0, ptr %score, align 4, !tbaa !4
  %89 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %90 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %91 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom136 = sext i32 %91 to i64
  %arrayidx137 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %90, i64 %idxprom136
  %start138 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx137, i32 0, i32 0
  %92 = load i32, ptr %start138, align 4, !tbaa !30
  %idxprom139 = sext i32 %92 to i64
  %arrayidx140 = getelementptr inbounds i32, ptr %89, i64 %idxprom139
  store ptr %arrayidx140, ptr %cp, align 8, !tbaa !10
  %93 = load ptr, ptr %cp, align 8, !tbaa !10
  store ptr %93, ptr %new_cp, align 8, !tbaa !10
  %94 = load ptr, ptr %cp, align 8, !tbaa !10
  %95 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %96 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom141 = sext i32 %96 to i64
  %arrayidx142 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %95, i64 %idxprom141
  %length143 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx142, i32 0, i32 1
  %97 = load i32, ptr %length143, align 4, !tbaa !32
  %idx.ext144 = sext i32 %97 to i64
  %add.ptr145 = getelementptr inbounds i32, ptr %94, i64 %idx.ext144
  store ptr %add.ptr145, ptr %cp_end, align 8, !tbaa !10
  br label %while.cond146

while.cond146:                                    ; preds = %cond.end167, %if.then156, %if.end135
  %98 = load ptr, ptr %cp, align 8, !tbaa !10
  %99 = load ptr, ptr %cp_end, align 8, !tbaa !10
  %cmp147 = icmp ult ptr %98, %99
  br i1 %cmp147, label %while.body149, label %while.end169

while.body149:                                    ; preds = %while.cond146
  %100 = load ptr, ptr %cp, align 8, !tbaa !10
  %incdec.ptr150 = getelementptr inbounds i32, ptr %100, i32 1
  store ptr %incdec.ptr150, ptr %cp, align 8, !tbaa !10
  %101 = load i32, ptr %100, align 4, !tbaa !4
  store i32 %101, ptr %row, align 4, !tbaa !4
  %102 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %103 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom151 = sext i32 %103 to i64
  %arrayidx152 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %102, i64 %idxprom151
  %shared2153 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx152, i32 0, i32 3
  %104 = load i32, ptr %shared2153, align 4, !tbaa !33
  %cmp154 = icmp slt i32 %104, 0
  br i1 %cmp154, label %if.then156, label %if.end157

if.then156:                                       ; preds = %while.body149
  br label %while.cond146, !llvm.loop !54

if.end157:                                        ; preds = %while.body149
  %105 = load i32, ptr %row, align 4, !tbaa !4
  %106 = load ptr, ptr %new_cp, align 8, !tbaa !10
  %incdec.ptr158 = getelementptr inbounds i32, ptr %106, i32 1
  store ptr %incdec.ptr158, ptr %new_cp, align 8, !tbaa !10
  store i32 %105, ptr %106, align 4, !tbaa !4
  %107 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %108 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom159 = sext i32 %108 to i64
  %arrayidx160 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %107, i64 %idxprom159
  %shared1161 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx160, i32 0, i32 2
  %109 = load i32, ptr %shared1161, align 4, !tbaa !33
  %sub162 = sub nsw i32 %109, 1
  %110 = load i32, ptr %score, align 4, !tbaa !4
  %add = add nsw i32 %110, %sub162
  store i32 %add, ptr %score, align 4, !tbaa !4
  %111 = load i32, ptr %score, align 4, !tbaa !4
  %112 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %cmp163 = icmp slt i32 %111, %112
  br i1 %cmp163, label %cond.true165, label %cond.false166

cond.true165:                                     ; preds = %if.end157
  %113 = load i32, ptr %score, align 4, !tbaa !4
  br label %cond.end167

cond.false166:                                    ; preds = %if.end157
  %114 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  br label %cond.end167

cond.end167:                                      ; preds = %cond.false166, %cond.true165
  %cond168 = phi i32 [ %113, %cond.true165 ], [ %114, %cond.false166 ]
  store i32 %cond168, ptr %score, align 4, !tbaa !4
  br label %while.cond146, !llvm.loop !54

while.end169:                                     ; preds = %while.cond146
  %115 = load ptr, ptr %new_cp, align 8, !tbaa !10
  %116 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %117 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %118 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom170 = sext i32 %118 to i64
  %arrayidx171 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %117, i64 %idxprom170
  %start172 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx171, i32 0, i32 0
  %119 = load i32, ptr %start172, align 4, !tbaa !30
  %idxprom173 = sext i32 %119 to i64
  %arrayidx174 = getelementptr inbounds i32, ptr %116, i64 %idxprom173
  %sub.ptr.lhs.cast = ptrtoint ptr %115 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %arrayidx174 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv175 = trunc i64 %sub.ptr.div to i32
  store i32 %conv175, ptr %col_length, align 4, !tbaa !4
  %120 = load i32, ptr %col_length, align 4, !tbaa !4
  %cmp176 = icmp eq i32 %120, 0
  br i1 %cmp176, label %if.then178, label %if.else186

if.then178:                                       ; preds = %while.end169
  %121 = load i32, ptr %n_col2, align 4, !tbaa !4
  %dec179 = add nsw i32 %121, -1
  store i32 %dec179, ptr %n_col2, align 4, !tbaa !4
  %122 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %123 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom180 = sext i32 %123 to i64
  %arrayidx181 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %122, i64 %idxprom180
  %shared2182 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx181, i32 0, i32 3
  store i32 %dec179, ptr %shared2182, align 4, !tbaa !33
  %124 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %125 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom183 = sext i32 %125 to i64
  %arrayidx184 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %124, i64 %idxprom183
  %start185 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx184, i32 0, i32 0
  store i32 -1, ptr %start185, align 4, !tbaa !30
  br label %if.end193

if.else186:                                       ; preds = %while.end169
  %126 = load i32, ptr %col_length, align 4, !tbaa !4
  %127 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %128 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom187 = sext i32 %128 to i64
  %arrayidx188 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %127, i64 %idxprom187
  %length189 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx188, i32 0, i32 1
  store i32 %126, ptr %length189, align 4, !tbaa !32
  %129 = load i32, ptr %score, align 4, !tbaa !4
  %130 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %131 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom190 = sext i32 %131 to i64
  %arrayidx191 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %130, i64 %idxprom190
  %shared2192 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx191, i32 0, i32 3
  store i32 %129, ptr %shared2192, align 4, !tbaa !33
  br label %if.end193

if.end193:                                        ; preds = %if.else186, %if.then178
  br label %for.inc194

for.inc194:                                       ; preds = %if.end193, %if.then134
  %132 = load i32, ptr %c, align 4, !tbaa !4
  %dec195 = add nsw i32 %132, -1
  store i32 %dec195, ptr %c, align 4, !tbaa !4
  br label %for.cond125, !llvm.loop !55

for.end196:                                       ; preds = %for.cond125
  store i32 0, ptr %c, align 4, !tbaa !4
  br label %for.cond197

for.cond197:                                      ; preds = %for.inc203, %for.end196
  %133 = load i32, ptr %c, align 4, !tbaa !4
  %134 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %cmp198 = icmp sle i32 %133, %134
  br i1 %cmp198, label %for.body200, label %for.end205

for.body200:                                      ; preds = %for.cond197
  %135 = load ptr, ptr %head.addr, align 8, !tbaa !10
  %136 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom201 = sext i32 %136 to i64
  %arrayidx202 = getelementptr inbounds i32, ptr %135, i64 %idxprom201
  store i32 -1, ptr %arrayidx202, align 4, !tbaa !4
  br label %for.inc203

for.inc203:                                       ; preds = %for.body200
  %137 = load i32, ptr %c, align 4, !tbaa !4
  %inc204 = add nsw i32 %137, 1
  store i32 %inc204, ptr %c, align 4, !tbaa !4
  br label %for.cond197, !llvm.loop !56

for.end205:                                       ; preds = %for.cond197
  %138 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  store i32 %138, ptr %min_score, align 4, !tbaa !4
  %139 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %sub206 = sub nsw i32 %139, 1
  store i32 %sub206, ptr %c, align 4, !tbaa !4
  br label %for.cond207

for.cond207:                                      ; preds = %for.inc242, %for.end205
  %140 = load i32, ptr %c, align 4, !tbaa !4
  %cmp208 = icmp sge i32 %140, 0
  br i1 %cmp208, label %for.body210, label %for.end244

for.body210:                                      ; preds = %for.cond207
  %141 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %142 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom211 = sext i32 %142 to i64
  %arrayidx212 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %141, i64 %idxprom211
  %start213 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx212, i32 0, i32 0
  %143 = load i32, ptr %start213, align 4, !tbaa !30
  %cmp214 = icmp sge i32 %143, 0
  br i1 %cmp214, label %if.then216, label %if.end241

if.then216:                                       ; preds = %for.body210
  %144 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %145 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom217 = sext i32 %145 to i64
  %arrayidx218 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %144, i64 %idxprom217
  %shared2219 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx218, i32 0, i32 3
  %146 = load i32, ptr %shared2219, align 4, !tbaa !33
  store i32 %146, ptr %score, align 4, !tbaa !4
  %147 = load ptr, ptr %head.addr, align 8, !tbaa !10
  %148 = load i32, ptr %score, align 4, !tbaa !4
  %idxprom220 = sext i32 %148 to i64
  %arrayidx221 = getelementptr inbounds i32, ptr %147, i64 %idxprom220
  %149 = load i32, ptr %arrayidx221, align 4, !tbaa !4
  store i32 %149, ptr %next_col, align 4, !tbaa !4
  %150 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %151 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom222 = sext i32 %151 to i64
  %arrayidx223 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %150, i64 %idxprom222
  %shared3 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx223, i32 0, i32 4
  store i32 -1, ptr %shared3, align 4, !tbaa !33
  %152 = load i32, ptr %next_col, align 4, !tbaa !4
  %153 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %154 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom224 = sext i32 %154 to i64
  %arrayidx225 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %153, i64 %idxprom224
  %shared4 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx225, i32 0, i32 5
  store i32 %152, ptr %shared4, align 4, !tbaa !33
  %155 = load i32, ptr %next_col, align 4, !tbaa !4
  %cmp226 = icmp ne i32 %155, -1
  br i1 %cmp226, label %if.then228, label %if.end232

if.then228:                                       ; preds = %if.then216
  %156 = load i32, ptr %c, align 4, !tbaa !4
  %157 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %158 = load i32, ptr %next_col, align 4, !tbaa !4
  %idxprom229 = sext i32 %158 to i64
  %arrayidx230 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %157, i64 %idxprom229
  %shared3231 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx230, i32 0, i32 4
  store i32 %156, ptr %shared3231, align 4, !tbaa !33
  br label %if.end232

if.end232:                                        ; preds = %if.then228, %if.then216
  %159 = load i32, ptr %c, align 4, !tbaa !4
  %160 = load ptr, ptr %head.addr, align 8, !tbaa !10
  %161 = load i32, ptr %score, align 4, !tbaa !4
  %idxprom233 = sext i32 %161 to i64
  %arrayidx234 = getelementptr inbounds i32, ptr %160, i64 %idxprom233
  store i32 %159, ptr %arrayidx234, align 4, !tbaa !4
  %162 = load i32, ptr %min_score, align 4, !tbaa !4
  %163 = load i32, ptr %score, align 4, !tbaa !4
  %cmp235 = icmp slt i32 %162, %163
  br i1 %cmp235, label %cond.true237, label %cond.false238

cond.true237:                                     ; preds = %if.end232
  %164 = load i32, ptr %min_score, align 4, !tbaa !4
  br label %cond.end239

cond.false238:                                    ; preds = %if.end232
  %165 = load i32, ptr %score, align 4, !tbaa !4
  br label %cond.end239

cond.end239:                                      ; preds = %cond.false238, %cond.true237
  %cond240 = phi i32 [ %164, %cond.true237 ], [ %165, %cond.false238 ]
  store i32 %cond240, ptr %min_score, align 4, !tbaa !4
  br label %if.end241

if.end241:                                        ; preds = %cond.end239, %for.body210
  br label %for.inc242

for.inc242:                                       ; preds = %if.end241
  %166 = load i32, ptr %c, align 4, !tbaa !4
  %dec243 = add nsw i32 %166, -1
  store i32 %dec243, ptr %c, align 4, !tbaa !4
  br label %for.cond207, !llvm.loop !57

for.end244:                                       ; preds = %for.cond207
  %167 = load i32, ptr %n_col2, align 4, !tbaa !4
  %168 = load ptr, ptr %p_n_col2.addr, align 8, !tbaa !10
  store i32 %167, ptr %168, align 4, !tbaa !4
  %169 = load i32, ptr %n_row2, align 4, !tbaa !4
  %170 = load ptr, ptr %p_n_row2.addr, align 8, !tbaa !10
  store i32 %169, ptr %170, align 4, !tbaa !4
  %171 = load i32, ptr %max_deg, align 4, !tbaa !4
  %172 = load ptr, ptr %p_max_deg.addr, align 8, !tbaa !10
  store i32 %171, ptr %172, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %next_col) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_deg) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_score) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %dense_col_count) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %dense_row_count) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_row2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_col2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %score) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %col_length) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_cp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp_end) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %deg) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %row) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #4
  ret void
}

; Function Attrs: uwtable
define internal i32 @find_ordering(i32 noundef %n_row, i32 noundef %n_col, i32 noundef %Alen, ptr noundef %Row, ptr noundef %Col, ptr noundef %A, ptr noundef %head, i32 noundef %n_col2, i32 noundef %max_deg, i32 noundef %pfree, i32 noundef %aggressive) #0 {
entry:
  %n_row.addr = alloca i32, align 4
  %n_col.addr = alloca i32, align 4
  %Alen.addr = alloca i32, align 4
  %Row.addr = alloca ptr, align 8
  %Col.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %n_col2.addr = alloca i32, align 4
  %max_deg.addr = alloca i32, align 4
  %pfree.addr = alloca i32, align 4
  %aggressive.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %pivot_col = alloca i32, align 4
  %cp = alloca ptr, align 8
  %rp = alloca ptr, align 8
  %pivot_row = alloca i32, align 4
  %new_cp = alloca ptr, align 8
  %new_rp = alloca ptr, align 8
  %pivot_row_start = alloca i32, align 4
  %pivot_row_degree = alloca i32, align 4
  %pivot_row_length = alloca i32, align 4
  %pivot_col_score = alloca i32, align 4
  %needed_memory = alloca i32, align 4
  %cp_end = alloca ptr, align 8
  %rp_end = alloca ptr, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %max_score = alloca i32, align 4
  %cur_score = alloca i32, align 4
  %hash = alloca i32, align 4
  %head_column = alloca i32, align 4
  %first_col = alloca i32, align 4
  %tag_mark = alloca i32, align 4
  %row_mark = alloca i32, align 4
  %set_difference = alloca i32, align 4
  %min_score = alloca i32, align 4
  %col_thickness = alloca i32, align 4
  %max_mark = alloca i32, align 4
  %pivot_col_thickness = alloca i32, align 4
  %prev_col = alloca i32, align 4
  %next_col = alloca i32, align 4
  %ngarbage = alloca i32, align 4
  store i32 %n_row, ptr %n_row.addr, align 4, !tbaa !4
  store i32 %n_col, ptr %n_col.addr, align 4, !tbaa !4
  store i32 %Alen, ptr %Alen.addr, align 4, !tbaa !4
  store ptr %Row, ptr %Row.addr, align 8, !tbaa !10
  store ptr %Col, ptr %Col.addr, align 8, !tbaa !10
  store ptr %A, ptr %A.addr, align 8, !tbaa !10
  store ptr %head, ptr %head.addr, align 8, !tbaa !10
  store i32 %n_col2, ptr %n_col2.addr, align 4, !tbaa !4
  store i32 %max_deg, ptr %max_deg.addr, align 4, !tbaa !4
  store i32 %pfree, ptr %pfree.addr, align 4, !tbaa !4
  store i32 %aggressive, ptr %aggressive.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pivot_col) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rp) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pivot_row) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_cp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_rp) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pivot_row_start) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pivot_row_degree) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pivot_row_length) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pivot_col_score) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %needed_memory) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp_end) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rp_end) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %row) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %col) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_score) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur_score) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %hash) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %head_column) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %first_col) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tag_mark) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %row_mark) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %set_difference) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_score) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %col_thickness) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_mark) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pivot_col_thickness) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %prev_col) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %next_col) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ngarbage) #4
  %0 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %sub = sub nsw i32 2147483647, %0
  store i32 %sub, ptr %max_mark, align 4, !tbaa !4
  %1 = load i32, ptr %max_mark, align 4, !tbaa !4
  %2 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %3 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %call = call i32 @clear_mark(i32 noundef 0, i32 noundef %1, i32 noundef %2, ptr noundef %3)
  store i32 %call, ptr %tag_mark, align 4, !tbaa !4
  store i32 0, ptr %min_score, align 4, !tbaa !4
  store i32 0, ptr %ngarbage, align 4, !tbaa !4
  store i32 0, ptr %k, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %if.end399, %entry
  %4 = load i32, ptr %k, align 4, !tbaa !4
  %5 = load i32, ptr %n_col2.addr, align 4, !tbaa !4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %6 = load ptr, ptr %head.addr, align 8, !tbaa !10
  %7 = load i32, ptr %min_score, align 4, !tbaa !4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, ptr %6, i64 %idxprom
  %8 = load i32, ptr %arrayidx, align 4, !tbaa !4
  %cmp1 = icmp eq i32 %8, -1
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load i32, ptr %min_score, align 4, !tbaa !4
  %10 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %cmp2 = icmp slt i32 %9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i32, ptr %min_score, align 4, !tbaa !4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %min_score, align 4, !tbaa !4
  br label %while.cond, !llvm.loop !58

while.end:                                        ; preds = %land.end
  %13 = load ptr, ptr %head.addr, align 8, !tbaa !10
  %14 = load i32, ptr %min_score, align 4, !tbaa !4
  %idxprom3 = sext i32 %14 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %13, i64 %idxprom3
  %15 = load i32, ptr %arrayidx4, align 4, !tbaa !4
  store i32 %15, ptr %pivot_col, align 4, !tbaa !4
  %16 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %17 = load i32, ptr %pivot_col, align 4, !tbaa !4
  %idxprom5 = sext i32 %17 to i64
  %arrayidx6 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %16, i64 %idxprom5
  %shared4 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx6, i32 0, i32 5
  %18 = load i32, ptr %shared4, align 4, !tbaa !33
  store i32 %18, ptr %next_col, align 4, !tbaa !4
  %19 = load i32, ptr %next_col, align 4, !tbaa !4
  %20 = load ptr, ptr %head.addr, align 8, !tbaa !10
  %21 = load i32, ptr %min_score, align 4, !tbaa !4
  %idxprom7 = sext i32 %21 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %20, i64 %idxprom7
  store i32 %19, ptr %arrayidx8, align 4, !tbaa !4
  %22 = load i32, ptr %next_col, align 4, !tbaa !4
  %cmp9 = icmp ne i32 %22, -1
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %23 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %24 = load i32, ptr %next_col, align 4, !tbaa !4
  %idxprom10 = sext i32 %24 to i64
  %arrayidx11 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %23, i64 %idxprom10
  %shared3 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx11, i32 0, i32 4
  store i32 -1, ptr %shared3, align 4, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %25 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %26 = load i32, ptr %pivot_col, align 4, !tbaa !4
  %idxprom12 = sext i32 %26 to i64
  %arrayidx13 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %25, i64 %idxprom12
  %shared2 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx13, i32 0, i32 3
  %27 = load i32, ptr %shared2, align 4, !tbaa !33
  store i32 %27, ptr %pivot_col_score, align 4, !tbaa !4
  %28 = load i32, ptr %k, align 4, !tbaa !4
  %29 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %30 = load i32, ptr %pivot_col, align 4, !tbaa !4
  %idxprom14 = sext i32 %30 to i64
  %arrayidx15 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %29, i64 %idxprom14
  %shared216 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx15, i32 0, i32 3
  store i32 %28, ptr %shared216, align 4, !tbaa !33
  %31 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %32 = load i32, ptr %pivot_col, align 4, !tbaa !4
  %idxprom17 = sext i32 %32 to i64
  %arrayidx18 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %31, i64 %idxprom17
  %shared1 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx18, i32 0, i32 2
  %33 = load i32, ptr %shared1, align 4, !tbaa !33
  store i32 %33, ptr %pivot_col_thickness, align 4, !tbaa !4
  %34 = load i32, ptr %pivot_col_thickness, align 4, !tbaa !4
  %35 = load i32, ptr %k, align 4, !tbaa !4
  %add = add nsw i32 %35, %34
  store i32 %add, ptr %k, align 4, !tbaa !4
  %36 = load i32, ptr %pivot_col_score, align 4, !tbaa !4
  %37 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %38 = load i32, ptr %k, align 4, !tbaa !4
  %sub19 = sub nsw i32 %37, %38
  %cmp20 = icmp slt i32 %36, %sub19
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %39 = load i32, ptr %pivot_col_score, align 4, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %40 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %41 = load i32, ptr %k, align 4, !tbaa !4
  %sub21 = sub nsw i32 %40, %41
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %39, %cond.true ], [ %sub21, %cond.false ]
  store i32 %cond, ptr %needed_memory, align 4, !tbaa !4
  %42 = load i32, ptr %pfree.addr, align 4, !tbaa !4
  %43 = load i32, ptr %needed_memory, align 4, !tbaa !4
  %add22 = add nsw i32 %42, %43
  %44 = load i32, ptr %Alen.addr, align 4, !tbaa !4
  %cmp23 = icmp sge i32 %add22, %44
  br i1 %cmp23, label %if.then24, label %if.end30

if.then24:                                        ; preds = %cond.end
  %45 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %46 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %47 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %48 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %49 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %50 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %51 = load i32, ptr %pfree.addr, align 4, !tbaa !4
  %idxprom25 = sext i32 %51 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %50, i64 %idxprom25
  %call27 = call i32 @garbage_collection(i32 noundef %45, i32 noundef %46, ptr noundef %47, ptr noundef %48, ptr noundef %49, ptr noundef %arrayidx26)
  store i32 %call27, ptr %pfree.addr, align 4, !tbaa !4
  %52 = load i32, ptr %ngarbage, align 4, !tbaa !4
  %inc28 = add nsw i32 %52, 1
  store i32 %inc28, ptr %ngarbage, align 4, !tbaa !4
  %53 = load i32, ptr %max_mark, align 4, !tbaa !4
  %54 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %55 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %call29 = call i32 @clear_mark(i32 noundef 0, i32 noundef %53, i32 noundef %54, ptr noundef %55)
  store i32 %call29, ptr %tag_mark, align 4, !tbaa !4
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %cond.end
  %56 = load i32, ptr %pfree.addr, align 4, !tbaa !4
  store i32 %56, ptr %pivot_row_start, align 4, !tbaa !4
  store i32 0, ptr %pivot_row_degree, align 4, !tbaa !4
  %57 = load i32, ptr %pivot_col_thickness, align 4, !tbaa !4
  %sub31 = sub nsw i32 0, %57
  %58 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %59 = load i32, ptr %pivot_col, align 4, !tbaa !4
  %idxprom32 = sext i32 %59 to i64
  %arrayidx33 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %58, i64 %idxprom32
  %shared134 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx33, i32 0, i32 2
  store i32 %sub31, ptr %shared134, align 4, !tbaa !33
  %60 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %61 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %62 = load i32, ptr %pivot_col, align 4, !tbaa !4
  %idxprom35 = sext i32 %62 to i64
  %arrayidx36 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %61, i64 %idxprom35
  %start = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx36, i32 0, i32 0
  %63 = load i32, ptr %start, align 4, !tbaa !30
  %idxprom37 = sext i32 %63 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %60, i64 %idxprom37
  store ptr %arrayidx38, ptr %cp, align 8, !tbaa !10
  %64 = load ptr, ptr %cp, align 8, !tbaa !10
  %65 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %66 = load i32, ptr %pivot_col, align 4, !tbaa !4
  %idxprom39 = sext i32 %66 to i64
  %arrayidx40 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %65, i64 %idxprom39
  %length = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx40, i32 0, i32 1
  %67 = load i32, ptr %length, align 4, !tbaa !32
  %idx.ext = sext i32 %67 to i64
  %add.ptr = getelementptr inbounds i32, ptr %64, i64 %idx.ext
  store ptr %add.ptr, ptr %cp_end, align 8, !tbaa !10
  br label %while.cond41

while.cond41:                                     ; preds = %if.end82, %if.end30
  %68 = load ptr, ptr %cp, align 8, !tbaa !10
  %69 = load ptr, ptr %cp_end, align 8, !tbaa !10
  %cmp42 = icmp ult ptr %68, %69
  br i1 %cmp42, label %while.body43, label %while.end83

while.body43:                                     ; preds = %while.cond41
  %70 = load ptr, ptr %cp, align 8, !tbaa !10
  %incdec.ptr = getelementptr inbounds i32, ptr %70, i32 1
  store ptr %incdec.ptr, ptr %cp, align 8, !tbaa !10
  %71 = load i32, ptr %70, align 4, !tbaa !4
  store i32 %71, ptr %row, align 4, !tbaa !4
  %72 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %73 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom44 = sext i32 %73 to i64
  %arrayidx45 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %72, i64 %idxprom44
  %shared246 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx45, i32 0, i32 3
  %74 = load i32, ptr %shared246, align 4, !tbaa !33
  %cmp47 = icmp sge i32 %74, 0
  br i1 %cmp47, label %if.then48, label %if.end82

if.then48:                                        ; preds = %while.body43
  %75 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %76 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %77 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom49 = sext i32 %77 to i64
  %arrayidx50 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %76, i64 %idxprom49
  %start51 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx50, i32 0, i32 0
  %78 = load i32, ptr %start51, align 4, !tbaa !40
  %idxprom52 = sext i32 %78 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %75, i64 %idxprom52
  store ptr %arrayidx53, ptr %rp, align 8, !tbaa !10
  %79 = load ptr, ptr %rp, align 8, !tbaa !10
  %80 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %81 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom54 = sext i32 %81 to i64
  %arrayidx55 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %80, i64 %idxprom54
  %length56 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx55, i32 0, i32 1
  %82 = load i32, ptr %length56, align 4, !tbaa !35
  %idx.ext57 = sext i32 %82 to i64
  %add.ptr58 = getelementptr inbounds i32, ptr %79, i64 %idx.ext57
  store ptr %add.ptr58, ptr %rp_end, align 8, !tbaa !10
  br label %while.cond59

while.cond59:                                     ; preds = %if.end80, %if.then48
  %83 = load ptr, ptr %rp, align 8, !tbaa !10
  %84 = load ptr, ptr %rp_end, align 8, !tbaa !10
  %cmp60 = icmp ult ptr %83, %84
  br i1 %cmp60, label %while.body61, label %while.end81

while.body61:                                     ; preds = %while.cond59
  %85 = load ptr, ptr %rp, align 8, !tbaa !10
  %incdec.ptr62 = getelementptr inbounds i32, ptr %85, i32 1
  store ptr %incdec.ptr62, ptr %rp, align 8, !tbaa !10
  %86 = load i32, ptr %85, align 4, !tbaa !4
  store i32 %86, ptr %col, align 4, !tbaa !4
  %87 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %88 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom63 = sext i32 %88 to i64
  %arrayidx64 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %87, i64 %idxprom63
  %shared165 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx64, i32 0, i32 2
  %89 = load i32, ptr %shared165, align 4, !tbaa !33
  store i32 %89, ptr %col_thickness, align 4, !tbaa !4
  %90 = load i32, ptr %col_thickness, align 4, !tbaa !4
  %cmp66 = icmp sgt i32 %90, 0
  br i1 %cmp66, label %land.lhs.true, label %if.end80

land.lhs.true:                                    ; preds = %while.body61
  %91 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %92 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom67 = sext i32 %92 to i64
  %arrayidx68 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %91, i64 %idxprom67
  %start69 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx68, i32 0, i32 0
  %93 = load i32, ptr %start69, align 4, !tbaa !30
  %cmp70 = icmp sge i32 %93, 0
  br i1 %cmp70, label %if.then71, label %if.end80

if.then71:                                        ; preds = %land.lhs.true
  %94 = load i32, ptr %col_thickness, align 4, !tbaa !4
  %sub72 = sub nsw i32 0, %94
  %95 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %96 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom73 = sext i32 %96 to i64
  %arrayidx74 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %95, i64 %idxprom73
  %shared175 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx74, i32 0, i32 2
  store i32 %sub72, ptr %shared175, align 4, !tbaa !33
  %97 = load i32, ptr %col, align 4, !tbaa !4
  %98 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %99 = load i32, ptr %pfree.addr, align 4, !tbaa !4
  %inc76 = add nsw i32 %99, 1
  store i32 %inc76, ptr %pfree.addr, align 4, !tbaa !4
  %idxprom77 = sext i32 %99 to i64
  %arrayidx78 = getelementptr inbounds i32, ptr %98, i64 %idxprom77
  store i32 %97, ptr %arrayidx78, align 4, !tbaa !4
  %100 = load i32, ptr %col_thickness, align 4, !tbaa !4
  %101 = load i32, ptr %pivot_row_degree, align 4, !tbaa !4
  %add79 = add nsw i32 %101, %100
  store i32 %add79, ptr %pivot_row_degree, align 4, !tbaa !4
  br label %if.end80

if.end80:                                         ; preds = %if.then71, %land.lhs.true, %while.body61
  br label %while.cond59, !llvm.loop !59

while.end81:                                      ; preds = %while.cond59
  br label %if.end82

if.end82:                                         ; preds = %while.end81, %while.body43
  br label %while.cond41, !llvm.loop !60

while.end83:                                      ; preds = %while.cond41
  %102 = load i32, ptr %pivot_col_thickness, align 4, !tbaa !4
  %103 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %104 = load i32, ptr %pivot_col, align 4, !tbaa !4
  %idxprom84 = sext i32 %104 to i64
  %arrayidx85 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %103, i64 %idxprom84
  %shared186 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx85, i32 0, i32 2
  store i32 %102, ptr %shared186, align 4, !tbaa !33
  %105 = load i32, ptr %max_deg.addr, align 4, !tbaa !4
  %106 = load i32, ptr %pivot_row_degree, align 4, !tbaa !4
  %cmp87 = icmp sgt i32 %105, %106
  br i1 %cmp87, label %cond.true88, label %cond.false89

cond.true88:                                      ; preds = %while.end83
  %107 = load i32, ptr %max_deg.addr, align 4, !tbaa !4
  br label %cond.end90

cond.false89:                                     ; preds = %while.end83
  %108 = load i32, ptr %pivot_row_degree, align 4, !tbaa !4
  br label %cond.end90

cond.end90:                                       ; preds = %cond.false89, %cond.true88
  %cond91 = phi i32 [ %107, %cond.true88 ], [ %108, %cond.false89 ]
  store i32 %cond91, ptr %max_deg.addr, align 4, !tbaa !4
  %109 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %110 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %111 = load i32, ptr %pivot_col, align 4, !tbaa !4
  %idxprom92 = sext i32 %111 to i64
  %arrayidx93 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %110, i64 %idxprom92
  %start94 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx93, i32 0, i32 0
  %112 = load i32, ptr %start94, align 4, !tbaa !30
  %idxprom95 = sext i32 %112 to i64
  %arrayidx96 = getelementptr inbounds i32, ptr %109, i64 %idxprom95
  store ptr %arrayidx96, ptr %cp, align 8, !tbaa !10
  %113 = load ptr, ptr %cp, align 8, !tbaa !10
  %114 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %115 = load i32, ptr %pivot_col, align 4, !tbaa !4
  %idxprom97 = sext i32 %115 to i64
  %arrayidx98 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %114, i64 %idxprom97
  %length99 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx98, i32 0, i32 1
  %116 = load i32, ptr %length99, align 4, !tbaa !32
  %idx.ext100 = sext i32 %116 to i64
  %add.ptr101 = getelementptr inbounds i32, ptr %113, i64 %idx.ext100
  store ptr %add.ptr101, ptr %cp_end, align 8, !tbaa !10
  br label %while.cond102

while.cond102:                                    ; preds = %while.body104, %cond.end90
  %117 = load ptr, ptr %cp, align 8, !tbaa !10
  %118 = load ptr, ptr %cp_end, align 8, !tbaa !10
  %cmp103 = icmp ult ptr %117, %118
  br i1 %cmp103, label %while.body104, label %while.end109

while.body104:                                    ; preds = %while.cond102
  %119 = load ptr, ptr %cp, align 8, !tbaa !10
  %incdec.ptr105 = getelementptr inbounds i32, ptr %119, i32 1
  store ptr %incdec.ptr105, ptr %cp, align 8, !tbaa !10
  %120 = load i32, ptr %119, align 4, !tbaa !4
  store i32 %120, ptr %row, align 4, !tbaa !4
  %121 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %122 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom106 = sext i32 %122 to i64
  %arrayidx107 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %121, i64 %idxprom106
  %shared2108 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx107, i32 0, i32 3
  store i32 -1, ptr %shared2108, align 4, !tbaa !33
  br label %while.cond102, !llvm.loop !61

while.end109:                                     ; preds = %while.cond102
  %123 = load i32, ptr %pfree.addr, align 4, !tbaa !4
  %124 = load i32, ptr %pivot_row_start, align 4, !tbaa !4
  %sub110 = sub nsw i32 %123, %124
  store i32 %sub110, ptr %pivot_row_length, align 4, !tbaa !4
  %125 = load i32, ptr %pivot_row_length, align 4, !tbaa !4
  %cmp111 = icmp sgt i32 %125, 0
  br i1 %cmp111, label %if.then112, label %if.else

if.then112:                                       ; preds = %while.end109
  %126 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %127 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %128 = load i32, ptr %pivot_col, align 4, !tbaa !4
  %idxprom113 = sext i32 %128 to i64
  %arrayidx114 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %127, i64 %idxprom113
  %start115 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx114, i32 0, i32 0
  %129 = load i32, ptr %start115, align 4, !tbaa !30
  %idxprom116 = sext i32 %129 to i64
  %arrayidx117 = getelementptr inbounds i32, ptr %126, i64 %idxprom116
  %130 = load i32, ptr %arrayidx117, align 4, !tbaa !4
  store i32 %130, ptr %pivot_row, align 4, !tbaa !4
  br label %if.end118

if.else:                                          ; preds = %while.end109
  store i32 -1, ptr %pivot_row, align 4, !tbaa !4
  br label %if.end118

if.end118:                                        ; preds = %if.else, %if.then112
  %131 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %132 = load i32, ptr %pivot_row_start, align 4, !tbaa !4
  %idxprom119 = sext i32 %132 to i64
  %arrayidx120 = getelementptr inbounds i32, ptr %131, i64 %idxprom119
  store ptr %arrayidx120, ptr %rp, align 8, !tbaa !10
  %133 = load ptr, ptr %rp, align 8, !tbaa !10
  %134 = load i32, ptr %pivot_row_length, align 4, !tbaa !4
  %idx.ext121 = sext i32 %134 to i64
  %add.ptr122 = getelementptr inbounds i32, ptr %133, i64 %idx.ext121
  store ptr %add.ptr122, ptr %rp_end, align 8, !tbaa !10
  br label %while.cond123

while.cond123:                                    ; preds = %while.end198, %if.end118
  %135 = load ptr, ptr %rp, align 8, !tbaa !10
  %136 = load ptr, ptr %rp_end, align 8, !tbaa !10
  %cmp124 = icmp ult ptr %135, %136
  br i1 %cmp124, label %while.body125, label %while.end199

while.body125:                                    ; preds = %while.cond123
  %137 = load ptr, ptr %rp, align 8, !tbaa !10
  %incdec.ptr126 = getelementptr inbounds i32, ptr %137, i32 1
  store ptr %incdec.ptr126, ptr %rp, align 8, !tbaa !10
  %138 = load i32, ptr %137, align 4, !tbaa !4
  store i32 %138, ptr %col, align 4, !tbaa !4
  %139 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %140 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom127 = sext i32 %140 to i64
  %arrayidx128 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %139, i64 %idxprom127
  %shared1129 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx128, i32 0, i32 2
  %141 = load i32, ptr %shared1129, align 4, !tbaa !33
  %sub130 = sub nsw i32 0, %141
  store i32 %sub130, ptr %col_thickness, align 4, !tbaa !4
  %142 = load i32, ptr %col_thickness, align 4, !tbaa !4
  %143 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %144 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom131 = sext i32 %144 to i64
  %arrayidx132 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %143, i64 %idxprom131
  %shared1133 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx132, i32 0, i32 2
  store i32 %142, ptr %shared1133, align 4, !tbaa !33
  %145 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %146 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom134 = sext i32 %146 to i64
  %arrayidx135 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %145, i64 %idxprom134
  %shared2136 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx135, i32 0, i32 3
  %147 = load i32, ptr %shared2136, align 4, !tbaa !33
  store i32 %147, ptr %cur_score, align 4, !tbaa !4
  %148 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %149 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom137 = sext i32 %149 to i64
  %arrayidx138 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %148, i64 %idxprom137
  %shared3139 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx138, i32 0, i32 4
  %150 = load i32, ptr %shared3139, align 4, !tbaa !33
  store i32 %150, ptr %prev_col, align 4, !tbaa !4
  %151 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %152 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom140 = sext i32 %152 to i64
  %arrayidx141 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %151, i64 %idxprom140
  %shared4142 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx141, i32 0, i32 5
  %153 = load i32, ptr %shared4142, align 4, !tbaa !33
  store i32 %153, ptr %next_col, align 4, !tbaa !4
  %154 = load i32, ptr %prev_col, align 4, !tbaa !4
  %cmp143 = icmp eq i32 %154, -1
  br i1 %cmp143, label %if.then144, label %if.else147

if.then144:                                       ; preds = %while.body125
  %155 = load i32, ptr %next_col, align 4, !tbaa !4
  %156 = load ptr, ptr %head.addr, align 8, !tbaa !10
  %157 = load i32, ptr %cur_score, align 4, !tbaa !4
  %idxprom145 = sext i32 %157 to i64
  %arrayidx146 = getelementptr inbounds i32, ptr %156, i64 %idxprom145
  store i32 %155, ptr %arrayidx146, align 4, !tbaa !4
  br label %if.end151

if.else147:                                       ; preds = %while.body125
  %158 = load i32, ptr %next_col, align 4, !tbaa !4
  %159 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %160 = load i32, ptr %prev_col, align 4, !tbaa !4
  %idxprom148 = sext i32 %160 to i64
  %arrayidx149 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %159, i64 %idxprom148
  %shared4150 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx149, i32 0, i32 5
  store i32 %158, ptr %shared4150, align 4, !tbaa !33
  br label %if.end151

if.end151:                                        ; preds = %if.else147, %if.then144
  %161 = load i32, ptr %next_col, align 4, !tbaa !4
  %cmp152 = icmp ne i32 %161, -1
  br i1 %cmp152, label %if.then153, label %if.end157

if.then153:                                       ; preds = %if.end151
  %162 = load i32, ptr %prev_col, align 4, !tbaa !4
  %163 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %164 = load i32, ptr %next_col, align 4, !tbaa !4
  %idxprom154 = sext i32 %164 to i64
  %arrayidx155 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %163, i64 %idxprom154
  %shared3156 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx155, i32 0, i32 4
  store i32 %162, ptr %shared3156, align 4, !tbaa !33
  br label %if.end157

if.end157:                                        ; preds = %if.then153, %if.end151
  %165 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %166 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %167 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom158 = sext i32 %167 to i64
  %arrayidx159 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %166, i64 %idxprom158
  %start160 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx159, i32 0, i32 0
  %168 = load i32, ptr %start160, align 4, !tbaa !30
  %idxprom161 = sext i32 %168 to i64
  %arrayidx162 = getelementptr inbounds i32, ptr %165, i64 %idxprom161
  store ptr %arrayidx162, ptr %cp, align 8, !tbaa !10
  %169 = load ptr, ptr %cp, align 8, !tbaa !10
  %170 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %171 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom163 = sext i32 %171 to i64
  %arrayidx164 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %170, i64 %idxprom163
  %length165 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx164, i32 0, i32 1
  %172 = load i32, ptr %length165, align 4, !tbaa !32
  %idx.ext166 = sext i32 %172 to i64
  %add.ptr167 = getelementptr inbounds i32, ptr %169, i64 %idx.ext166
  store ptr %add.ptr167, ptr %cp_end, align 8, !tbaa !10
  br label %while.cond168

while.cond168:                                    ; preds = %if.end197, %if.then176, %if.end157
  %173 = load ptr, ptr %cp, align 8, !tbaa !10
  %174 = load ptr, ptr %cp_end, align 8, !tbaa !10
  %cmp169 = icmp ult ptr %173, %174
  br i1 %cmp169, label %while.body170, label %while.end198

while.body170:                                    ; preds = %while.cond168
  %175 = load ptr, ptr %cp, align 8, !tbaa !10
  %incdec.ptr171 = getelementptr inbounds i32, ptr %175, i32 1
  store ptr %incdec.ptr171, ptr %cp, align 8, !tbaa !10
  %176 = load i32, ptr %175, align 4, !tbaa !4
  store i32 %176, ptr %row, align 4, !tbaa !4
  %177 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %178 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom172 = sext i32 %178 to i64
  %arrayidx173 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %177, i64 %idxprom172
  %shared2174 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx173, i32 0, i32 3
  %179 = load i32, ptr %shared2174, align 4, !tbaa !33
  store i32 %179, ptr %row_mark, align 4, !tbaa !4
  %180 = load i32, ptr %row_mark, align 4, !tbaa !4
  %cmp175 = icmp slt i32 %180, 0
  br i1 %cmp175, label %if.then176, label %if.end177

if.then176:                                       ; preds = %while.body170
  br label %while.cond168, !llvm.loop !62

if.end177:                                        ; preds = %while.body170
  %181 = load i32, ptr %row_mark, align 4, !tbaa !4
  %182 = load i32, ptr %tag_mark, align 4, !tbaa !4
  %sub178 = sub nsw i32 %181, %182
  store i32 %sub178, ptr %set_difference, align 4, !tbaa !4
  %183 = load i32, ptr %set_difference, align 4, !tbaa !4
  %cmp179 = icmp slt i32 %183, 0
  br i1 %cmp179, label %if.then180, label %if.end184

if.then180:                                       ; preds = %if.end177
  %184 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %185 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom181 = sext i32 %185 to i64
  %arrayidx182 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %184, i64 %idxprom181
  %shared1183 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx182, i32 0, i32 2
  %186 = load i32, ptr %shared1183, align 4, !tbaa !33
  store i32 %186, ptr %set_difference, align 4, !tbaa !4
  br label %if.end184

if.end184:                                        ; preds = %if.then180, %if.end177
  %187 = load i32, ptr %col_thickness, align 4, !tbaa !4
  %188 = load i32, ptr %set_difference, align 4, !tbaa !4
  %sub185 = sub nsw i32 %188, %187
  store i32 %sub185, ptr %set_difference, align 4, !tbaa !4
  %189 = load i32, ptr %set_difference, align 4, !tbaa !4
  %cmp186 = icmp eq i32 %189, 0
  br i1 %cmp186, label %land.lhs.true187, label %if.else192

land.lhs.true187:                                 ; preds = %if.end184
  %190 = load i32, ptr %aggressive.addr, align 4, !tbaa !4
  %tobool = icmp ne i32 %190, 0
  br i1 %tobool, label %if.then188, label %if.else192

if.then188:                                       ; preds = %land.lhs.true187
  %191 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %192 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom189 = sext i32 %192 to i64
  %arrayidx190 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %191, i64 %idxprom189
  %shared2191 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx190, i32 0, i32 3
  store i32 -1, ptr %shared2191, align 4, !tbaa !33
  br label %if.end197

if.else192:                                       ; preds = %land.lhs.true187, %if.end184
  %193 = load i32, ptr %set_difference, align 4, !tbaa !4
  %194 = load i32, ptr %tag_mark, align 4, !tbaa !4
  %add193 = add nsw i32 %193, %194
  %195 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %196 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom194 = sext i32 %196 to i64
  %arrayidx195 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %195, i64 %idxprom194
  %shared2196 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx195, i32 0, i32 3
  store i32 %add193, ptr %shared2196, align 4, !tbaa !33
  br label %if.end197

if.end197:                                        ; preds = %if.else192, %if.then188
  br label %while.cond168, !llvm.loop !62

while.end198:                                     ; preds = %while.cond168
  br label %while.cond123, !llvm.loop !63

while.end199:                                     ; preds = %while.cond123
  %197 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %198 = load i32, ptr %pivot_row_start, align 4, !tbaa !4
  %idxprom200 = sext i32 %198 to i64
  %arrayidx201 = getelementptr inbounds i32, ptr %197, i64 %idxprom200
  store ptr %arrayidx201, ptr %rp, align 8, !tbaa !10
  %199 = load ptr, ptr %rp, align 8, !tbaa !10
  %200 = load i32, ptr %pivot_row_length, align 4, !tbaa !4
  %idx.ext202 = sext i32 %200 to i64
  %add.ptr203 = getelementptr inbounds i32, ptr %199, i64 %idx.ext202
  store ptr %add.ptr203, ptr %rp_end, align 8, !tbaa !10
  br label %while.cond204

while.cond204:                                    ; preds = %if.end296, %while.end199
  %201 = load ptr, ptr %rp, align 8, !tbaa !10
  %202 = load ptr, ptr %rp_end, align 8, !tbaa !10
  %cmp205 = icmp ult ptr %201, %202
  br i1 %cmp205, label %while.body206, label %while.end297

while.body206:                                    ; preds = %while.cond204
  %203 = load ptr, ptr %rp, align 8, !tbaa !10
  %incdec.ptr207 = getelementptr inbounds i32, ptr %203, i32 1
  store ptr %incdec.ptr207, ptr %rp, align 8, !tbaa !10
  %204 = load i32, ptr %203, align 4, !tbaa !4
  store i32 %204, ptr %col, align 4, !tbaa !4
  store i32 0, ptr %hash, align 4, !tbaa !4
  store i32 0, ptr %cur_score, align 4, !tbaa !4
  %205 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %206 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %207 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom208 = sext i32 %207 to i64
  %arrayidx209 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %206, i64 %idxprom208
  %start210 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx209, i32 0, i32 0
  %208 = load i32, ptr %start210, align 4, !tbaa !30
  %idxprom211 = sext i32 %208 to i64
  %arrayidx212 = getelementptr inbounds i32, ptr %205, i64 %idxprom211
  store ptr %arrayidx212, ptr %cp, align 8, !tbaa !10
  %209 = load ptr, ptr %cp, align 8, !tbaa !10
  store ptr %209, ptr %new_cp, align 8, !tbaa !10
  %210 = load ptr, ptr %cp, align 8, !tbaa !10
  %211 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %212 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom213 = sext i32 %212 to i64
  %arrayidx214 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %211, i64 %idxprom213
  %length215 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx214, i32 0, i32 1
  %213 = load i32, ptr %length215, align 4, !tbaa !32
  %idx.ext216 = sext i32 %213 to i64
  %add.ptr217 = getelementptr inbounds i32, ptr %210, i64 %idx.ext216
  store ptr %add.ptr217, ptr %cp_end, align 8, !tbaa !10
  br label %while.cond218

while.cond218:                                    ; preds = %cond.end235, %if.then226, %while.body206
  %214 = load ptr, ptr %cp, align 8, !tbaa !10
  %215 = load ptr, ptr %cp_end, align 8, !tbaa !10
  %cmp219 = icmp ult ptr %214, %215
  br i1 %cmp219, label %while.body220, label %while.end237

while.body220:                                    ; preds = %while.cond218
  %216 = load ptr, ptr %cp, align 8, !tbaa !10
  %incdec.ptr221 = getelementptr inbounds i32, ptr %216, i32 1
  store ptr %incdec.ptr221, ptr %cp, align 8, !tbaa !10
  %217 = load i32, ptr %216, align 4, !tbaa !4
  store i32 %217, ptr %row, align 4, !tbaa !4
  %218 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %219 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom222 = sext i32 %219 to i64
  %arrayidx223 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %218, i64 %idxprom222
  %shared2224 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx223, i32 0, i32 3
  %220 = load i32, ptr %shared2224, align 4, !tbaa !33
  store i32 %220, ptr %row_mark, align 4, !tbaa !4
  %221 = load i32, ptr %row_mark, align 4, !tbaa !4
  %cmp225 = icmp slt i32 %221, 0
  br i1 %cmp225, label %if.then226, label %if.end227

if.then226:                                       ; preds = %while.body220
  br label %while.cond218, !llvm.loop !64

if.end227:                                        ; preds = %while.body220
  %222 = load i32, ptr %row, align 4, !tbaa !4
  %223 = load ptr, ptr %new_cp, align 8, !tbaa !10
  %incdec.ptr228 = getelementptr inbounds i32, ptr %223, i32 1
  store ptr %incdec.ptr228, ptr %new_cp, align 8, !tbaa !10
  store i32 %222, ptr %223, align 4, !tbaa !4
  %224 = load i32, ptr %row, align 4, !tbaa !4
  %225 = load i32, ptr %hash, align 4, !tbaa !4
  %add229 = add i32 %225, %224
  store i32 %add229, ptr %hash, align 4, !tbaa !4
  %226 = load i32, ptr %row_mark, align 4, !tbaa !4
  %227 = load i32, ptr %tag_mark, align 4, !tbaa !4
  %sub230 = sub nsw i32 %226, %227
  %228 = load i32, ptr %cur_score, align 4, !tbaa !4
  %add231 = add nsw i32 %228, %sub230
  store i32 %add231, ptr %cur_score, align 4, !tbaa !4
  %229 = load i32, ptr %cur_score, align 4, !tbaa !4
  %230 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %cmp232 = icmp slt i32 %229, %230
  br i1 %cmp232, label %cond.true233, label %cond.false234

cond.true233:                                     ; preds = %if.end227
  %231 = load i32, ptr %cur_score, align 4, !tbaa !4
  br label %cond.end235

cond.false234:                                    ; preds = %if.end227
  %232 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  br label %cond.end235

cond.end235:                                      ; preds = %cond.false234, %cond.true233
  %cond236 = phi i32 [ %231, %cond.true233 ], [ %232, %cond.false234 ]
  store i32 %cond236, ptr %cur_score, align 4, !tbaa !4
  br label %while.cond218, !llvm.loop !64

while.end237:                                     ; preds = %while.cond218
  %233 = load ptr, ptr %new_cp, align 8, !tbaa !10
  %234 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %235 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %236 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom238 = sext i32 %236 to i64
  %arrayidx239 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %235, i64 %idxprom238
  %start240 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx239, i32 0, i32 0
  %237 = load i32, ptr %start240, align 4, !tbaa !30
  %idxprom241 = sext i32 %237 to i64
  %arrayidx242 = getelementptr inbounds i32, ptr %234, i64 %idxprom241
  %sub.ptr.lhs.cast = ptrtoint ptr %233 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %arrayidx242 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv = trunc i64 %sub.ptr.div to i32
  %238 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %239 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom243 = sext i32 %239 to i64
  %arrayidx244 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %238, i64 %idxprom243
  %length245 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx244, i32 0, i32 1
  store i32 %conv, ptr %length245, align 4, !tbaa !32
  %240 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %241 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom246 = sext i32 %241 to i64
  %arrayidx247 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %240, i64 %idxprom246
  %length248 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx247, i32 0, i32 1
  %242 = load i32, ptr %length248, align 4, !tbaa !32
  %cmp249 = icmp eq i32 %242, 0
  br i1 %cmp249, label %if.then251, label %if.else266

if.then251:                                       ; preds = %while.end237
  %243 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %244 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom252 = sext i32 %244 to i64
  %arrayidx253 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %243, i64 %idxprom252
  %start254 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx253, i32 0, i32 0
  store i32 -1, ptr %start254, align 4, !tbaa !30
  %245 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %246 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom255 = sext i32 %246 to i64
  %arrayidx256 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %245, i64 %idxprom255
  %shared1257 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx256, i32 0, i32 2
  %247 = load i32, ptr %shared1257, align 4, !tbaa !33
  %248 = load i32, ptr %pivot_row_degree, align 4, !tbaa !4
  %sub258 = sub nsw i32 %248, %247
  store i32 %sub258, ptr %pivot_row_degree, align 4, !tbaa !4
  %249 = load i32, ptr %k, align 4, !tbaa !4
  %250 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %251 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom259 = sext i32 %251 to i64
  %arrayidx260 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %250, i64 %idxprom259
  %shared2261 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx260, i32 0, i32 3
  store i32 %249, ptr %shared2261, align 4, !tbaa !33
  %252 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %253 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom262 = sext i32 %253 to i64
  %arrayidx263 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %252, i64 %idxprom262
  %shared1264 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx263, i32 0, i32 2
  %254 = load i32, ptr %shared1264, align 4, !tbaa !33
  %255 = load i32, ptr %k, align 4, !tbaa !4
  %add265 = add nsw i32 %255, %254
  store i32 %add265, ptr %k, align 4, !tbaa !4
  br label %if.end296

if.else266:                                       ; preds = %while.end237
  %256 = load i32, ptr %cur_score, align 4, !tbaa !4
  %257 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %258 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom267 = sext i32 %258 to i64
  %arrayidx268 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %257, i64 %idxprom267
  %shared2269 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx268, i32 0, i32 3
  store i32 %256, ptr %shared2269, align 4, !tbaa !33
  %259 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %add270 = add nsw i32 %259, 1
  %260 = load i32, ptr %hash, align 4, !tbaa !4
  %rem = urem i32 %260, %add270
  store i32 %rem, ptr %hash, align 4, !tbaa !4
  %261 = load ptr, ptr %head.addr, align 8, !tbaa !10
  %262 = load i32, ptr %hash, align 4, !tbaa !4
  %idxprom271 = zext i32 %262 to i64
  %arrayidx272 = getelementptr inbounds i32, ptr %261, i64 %idxprom271
  %263 = load i32, ptr %arrayidx272, align 4, !tbaa !4
  store i32 %263, ptr %head_column, align 4, !tbaa !4
  %264 = load i32, ptr %head_column, align 4, !tbaa !4
  %cmp273 = icmp sgt i32 %264, -1
  br i1 %cmp273, label %if.then275, label %if.else282

if.then275:                                       ; preds = %if.else266
  %265 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %266 = load i32, ptr %head_column, align 4, !tbaa !4
  %idxprom276 = sext i32 %266 to i64
  %arrayidx277 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %265, i64 %idxprom276
  %shared3278 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx277, i32 0, i32 4
  %267 = load i32, ptr %shared3278, align 4, !tbaa !33
  store i32 %267, ptr %first_col, align 4, !tbaa !4
  %268 = load i32, ptr %col, align 4, !tbaa !4
  %269 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %270 = load i32, ptr %head_column, align 4, !tbaa !4
  %idxprom279 = sext i32 %270 to i64
  %arrayidx280 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %269, i64 %idxprom279
  %shared3281 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx280, i32 0, i32 4
  store i32 %268, ptr %shared3281, align 4, !tbaa !33
  br label %if.end289

if.else282:                                       ; preds = %if.else266
  %271 = load i32, ptr %head_column, align 4, !tbaa !4
  %add283 = add nsw i32 %271, 2
  %sub284 = sub nsw i32 0, %add283
  store i32 %sub284, ptr %first_col, align 4, !tbaa !4
  %272 = load i32, ptr %col, align 4, !tbaa !4
  %add285 = add nsw i32 %272, 2
  %sub286 = sub nsw i32 0, %add285
  %273 = load ptr, ptr %head.addr, align 8, !tbaa !10
  %274 = load i32, ptr %hash, align 4, !tbaa !4
  %idxprom287 = zext i32 %274 to i64
  %arrayidx288 = getelementptr inbounds i32, ptr %273, i64 %idxprom287
  store i32 %sub286, ptr %arrayidx288, align 4, !tbaa !4
  br label %if.end289

if.end289:                                        ; preds = %if.else282, %if.then275
  %275 = load i32, ptr %first_col, align 4, !tbaa !4
  %276 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %277 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom290 = sext i32 %277 to i64
  %arrayidx291 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %276, i64 %idxprom290
  %shared4292 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx291, i32 0, i32 5
  store i32 %275, ptr %shared4292, align 4, !tbaa !33
  %278 = load i32, ptr %hash, align 4, !tbaa !4
  %279 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %280 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom293 = sext i32 %280 to i64
  %arrayidx294 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %279, i64 %idxprom293
  %shared3295 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx294, i32 0, i32 4
  store i32 %278, ptr %shared3295, align 4, !tbaa !33
  br label %if.end296

if.end296:                                        ; preds = %if.end289, %if.then251
  br label %while.cond204, !llvm.loop !65

while.end297:                                     ; preds = %while.cond204
  %281 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %282 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %283 = load ptr, ptr %head.addr, align 8, !tbaa !10
  %284 = load i32, ptr %pivot_row_start, align 4, !tbaa !4
  %285 = load i32, ptr %pivot_row_length, align 4, !tbaa !4
  call void @detect_super_cols(ptr noundef %281, ptr noundef %282, ptr noundef %283, i32 noundef %284, i32 noundef %285)
  %286 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %287 = load i32, ptr %pivot_col, align 4, !tbaa !4
  %idxprom298 = sext i32 %287 to i64
  %arrayidx299 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %286, i64 %idxprom298
  %start300 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx299, i32 0, i32 0
  store i32 -1, ptr %start300, align 4, !tbaa !30
  %288 = load i32, ptr %tag_mark, align 4, !tbaa !4
  %289 = load i32, ptr %max_deg.addr, align 4, !tbaa !4
  %add301 = add nsw i32 %288, %289
  %add302 = add nsw i32 %add301, 1
  %290 = load i32, ptr %max_mark, align 4, !tbaa !4
  %291 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %292 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %call303 = call i32 @clear_mark(i32 noundef %add302, i32 noundef %290, i32 noundef %291, ptr noundef %292)
  store i32 %call303, ptr %tag_mark, align 4, !tbaa !4
  %293 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %294 = load i32, ptr %pivot_row_start, align 4, !tbaa !4
  %idxprom304 = sext i32 %294 to i64
  %arrayidx305 = getelementptr inbounds i32, ptr %293, i64 %idxprom304
  store ptr %arrayidx305, ptr %rp, align 8, !tbaa !10
  %295 = load ptr, ptr %rp, align 8, !tbaa !10
  store ptr %295, ptr %new_rp, align 8, !tbaa !10
  %296 = load ptr, ptr %rp, align 8, !tbaa !10
  %297 = load i32, ptr %pivot_row_length, align 4, !tbaa !4
  %idx.ext306 = sext i32 %297 to i64
  %add.ptr307 = getelementptr inbounds i32, ptr %296, i64 %idx.ext306
  store ptr %add.ptr307, ptr %rp_end, align 8, !tbaa !10
  br label %while.cond308

while.cond308:                                    ; preds = %cond.end374, %if.then318, %while.end297
  %298 = load ptr, ptr %rp, align 8, !tbaa !10
  %299 = load ptr, ptr %rp_end, align 8, !tbaa !10
  %cmp309 = icmp ult ptr %298, %299
  br i1 %cmp309, label %while.body311, label %while.end376

while.body311:                                    ; preds = %while.cond308
  %300 = load ptr, ptr %rp, align 8, !tbaa !10
  %incdec.ptr312 = getelementptr inbounds i32, ptr %300, i32 1
  store ptr %incdec.ptr312, ptr %rp, align 8, !tbaa !10
  %301 = load i32, ptr %300, align 4, !tbaa !4
  store i32 %301, ptr %col, align 4, !tbaa !4
  %302 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %303 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom313 = sext i32 %303 to i64
  %arrayidx314 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %302, i64 %idxprom313
  %start315 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx314, i32 0, i32 0
  %304 = load i32, ptr %start315, align 4, !tbaa !30
  %cmp316 = icmp slt i32 %304, 0
  br i1 %cmp316, label %if.then318, label %if.end319

if.then318:                                       ; preds = %while.body311
  br label %while.cond308, !llvm.loop !66

if.end319:                                        ; preds = %while.body311
  %305 = load i32, ptr %col, align 4, !tbaa !4
  %306 = load ptr, ptr %new_rp, align 8, !tbaa !10
  %incdec.ptr320 = getelementptr inbounds i32, ptr %306, i32 1
  store ptr %incdec.ptr320, ptr %new_rp, align 8, !tbaa !10
  store i32 %305, ptr %306, align 4, !tbaa !4
  %307 = load i32, ptr %pivot_row, align 4, !tbaa !4
  %308 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %309 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %310 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom321 = sext i32 %310 to i64
  %arrayidx322 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %309, i64 %idxprom321
  %start323 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx322, i32 0, i32 0
  %311 = load i32, ptr %start323, align 4, !tbaa !30
  %312 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %313 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom324 = sext i32 %313 to i64
  %arrayidx325 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %312, i64 %idxprom324
  %length326 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx325, i32 0, i32 1
  %314 = load i32, ptr %length326, align 4, !tbaa !32
  %inc327 = add nsw i32 %314, 1
  store i32 %inc327, ptr %length326, align 4, !tbaa !32
  %add328 = add nsw i32 %311, %314
  %idxprom329 = sext i32 %add328 to i64
  %arrayidx330 = getelementptr inbounds i32, ptr %308, i64 %idxprom329
  store i32 %307, ptr %arrayidx330, align 4, !tbaa !4
  %315 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %316 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom331 = sext i32 %316 to i64
  %arrayidx332 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %315, i64 %idxprom331
  %shared2333 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx332, i32 0, i32 3
  %317 = load i32, ptr %shared2333, align 4, !tbaa !33
  %318 = load i32, ptr %pivot_row_degree, align 4, !tbaa !4
  %add334 = add nsw i32 %317, %318
  store i32 %add334, ptr %cur_score, align 4, !tbaa !4
  %319 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %320 = load i32, ptr %k, align 4, !tbaa !4
  %sub335 = sub nsw i32 %319, %320
  %321 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %322 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom336 = sext i32 %322 to i64
  %arrayidx337 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %321, i64 %idxprom336
  %shared1338 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx337, i32 0, i32 2
  %323 = load i32, ptr %shared1338, align 4, !tbaa !33
  %sub339 = sub nsw i32 %sub335, %323
  store i32 %sub339, ptr %max_score, align 4, !tbaa !4
  %324 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %325 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom340 = sext i32 %325 to i64
  %arrayidx341 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %324, i64 %idxprom340
  %shared1342 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx341, i32 0, i32 2
  %326 = load i32, ptr %shared1342, align 4, !tbaa !33
  %327 = load i32, ptr %cur_score, align 4, !tbaa !4
  %sub343 = sub nsw i32 %327, %326
  store i32 %sub343, ptr %cur_score, align 4, !tbaa !4
  %328 = load i32, ptr %cur_score, align 4, !tbaa !4
  %329 = load i32, ptr %max_score, align 4, !tbaa !4
  %cmp344 = icmp slt i32 %328, %329
  br i1 %cmp344, label %cond.true346, label %cond.false347

cond.true346:                                     ; preds = %if.end319
  %330 = load i32, ptr %cur_score, align 4, !tbaa !4
  br label %cond.end348

cond.false347:                                    ; preds = %if.end319
  %331 = load i32, ptr %max_score, align 4, !tbaa !4
  br label %cond.end348

cond.end348:                                      ; preds = %cond.false347, %cond.true346
  %cond349 = phi i32 [ %330, %cond.true346 ], [ %331, %cond.false347 ]
  store i32 %cond349, ptr %cur_score, align 4, !tbaa !4
  %332 = load i32, ptr %cur_score, align 4, !tbaa !4
  %333 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %334 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom350 = sext i32 %334 to i64
  %arrayidx351 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %333, i64 %idxprom350
  %shared2352 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx351, i32 0, i32 3
  store i32 %332, ptr %shared2352, align 4, !tbaa !33
  %335 = load ptr, ptr %head.addr, align 8, !tbaa !10
  %336 = load i32, ptr %cur_score, align 4, !tbaa !4
  %idxprom353 = sext i32 %336 to i64
  %arrayidx354 = getelementptr inbounds i32, ptr %335, i64 %idxprom353
  %337 = load i32, ptr %arrayidx354, align 4, !tbaa !4
  store i32 %337, ptr %next_col, align 4, !tbaa !4
  %338 = load i32, ptr %next_col, align 4, !tbaa !4
  %339 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %340 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom355 = sext i32 %340 to i64
  %arrayidx356 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %339, i64 %idxprom355
  %shared4357 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx356, i32 0, i32 5
  store i32 %338, ptr %shared4357, align 4, !tbaa !33
  %341 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %342 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom358 = sext i32 %342 to i64
  %arrayidx359 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %341, i64 %idxprom358
  %shared3360 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx359, i32 0, i32 4
  store i32 -1, ptr %shared3360, align 4, !tbaa !33
  %343 = load i32, ptr %next_col, align 4, !tbaa !4
  %cmp361 = icmp ne i32 %343, -1
  br i1 %cmp361, label %if.then363, label %if.end367

if.then363:                                       ; preds = %cond.end348
  %344 = load i32, ptr %col, align 4, !tbaa !4
  %345 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %346 = load i32, ptr %next_col, align 4, !tbaa !4
  %idxprom364 = sext i32 %346 to i64
  %arrayidx365 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %345, i64 %idxprom364
  %shared3366 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx365, i32 0, i32 4
  store i32 %344, ptr %shared3366, align 4, !tbaa !33
  br label %if.end367

if.end367:                                        ; preds = %if.then363, %cond.end348
  %347 = load i32, ptr %col, align 4, !tbaa !4
  %348 = load ptr, ptr %head.addr, align 8, !tbaa !10
  %349 = load i32, ptr %cur_score, align 4, !tbaa !4
  %idxprom368 = sext i32 %349 to i64
  %arrayidx369 = getelementptr inbounds i32, ptr %348, i64 %idxprom368
  store i32 %347, ptr %arrayidx369, align 4, !tbaa !4
  %350 = load i32, ptr %min_score, align 4, !tbaa !4
  %351 = load i32, ptr %cur_score, align 4, !tbaa !4
  %cmp370 = icmp slt i32 %350, %351
  br i1 %cmp370, label %cond.true372, label %cond.false373

cond.true372:                                     ; preds = %if.end367
  %352 = load i32, ptr %min_score, align 4, !tbaa !4
  br label %cond.end374

cond.false373:                                    ; preds = %if.end367
  %353 = load i32, ptr %cur_score, align 4, !tbaa !4
  br label %cond.end374

cond.end374:                                      ; preds = %cond.false373, %cond.true372
  %cond375 = phi i32 [ %352, %cond.true372 ], [ %353, %cond.false373 ]
  store i32 %cond375, ptr %min_score, align 4, !tbaa !4
  br label %while.cond308, !llvm.loop !66

while.end376:                                     ; preds = %while.cond308
  %354 = load i32, ptr %pivot_row_degree, align 4, !tbaa !4
  %cmp377 = icmp sgt i32 %354, 0
  br i1 %cmp377, label %if.then379, label %if.end399

if.then379:                                       ; preds = %while.end376
  %355 = load i32, ptr %pivot_row_start, align 4, !tbaa !4
  %356 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %357 = load i32, ptr %pivot_row, align 4, !tbaa !4
  %idxprom380 = sext i32 %357 to i64
  %arrayidx381 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %356, i64 %idxprom380
  %start382 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx381, i32 0, i32 0
  store i32 %355, ptr %start382, align 4, !tbaa !40
  %358 = load ptr, ptr %new_rp, align 8, !tbaa !10
  %359 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %360 = load i32, ptr %pivot_row_start, align 4, !tbaa !4
  %idxprom383 = sext i32 %360 to i64
  %arrayidx384 = getelementptr inbounds i32, ptr %359, i64 %idxprom383
  %sub.ptr.lhs.cast385 = ptrtoint ptr %358 to i64
  %sub.ptr.rhs.cast386 = ptrtoint ptr %arrayidx384 to i64
  %sub.ptr.sub387 = sub i64 %sub.ptr.lhs.cast385, %sub.ptr.rhs.cast386
  %sub.ptr.div388 = sdiv exact i64 %sub.ptr.sub387, 4
  %conv389 = trunc i64 %sub.ptr.div388 to i32
  %361 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %362 = load i32, ptr %pivot_row, align 4, !tbaa !4
  %idxprom390 = sext i32 %362 to i64
  %arrayidx391 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %361, i64 %idxprom390
  %length392 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx391, i32 0, i32 1
  store i32 %conv389, ptr %length392, align 4, !tbaa !35
  %363 = load i32, ptr %pivot_row_degree, align 4, !tbaa !4
  %364 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %365 = load i32, ptr %pivot_row, align 4, !tbaa !4
  %idxprom393 = sext i32 %365 to i64
  %arrayidx394 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %364, i64 %idxprom393
  %shared1395 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx394, i32 0, i32 2
  store i32 %363, ptr %shared1395, align 4, !tbaa !33
  %366 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %367 = load i32, ptr %pivot_row, align 4, !tbaa !4
  %idxprom396 = sext i32 %367 to i64
  %arrayidx397 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %366, i64 %idxprom396
  %shared2398 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx397, i32 0, i32 3
  store i32 0, ptr %shared2398, align 4, !tbaa !33
  br label %if.end399

if.end399:                                        ; preds = %if.then379, %while.end376
  br label %for.cond, !llvm.loop !67

for.end:                                          ; preds = %for.cond
  %368 = load i32, ptr %ngarbage, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ngarbage) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %next_col) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %prev_col) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pivot_col_thickness) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_mark) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %col_thickness) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_score) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %set_difference) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %row_mark) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %tag_mark) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %first_col) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %head_column) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %hash) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur_score) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_score) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %col) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %row) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rp_end) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp_end) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %needed_memory) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pivot_col_score) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pivot_row_length) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pivot_row_degree) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pivot_row_start) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_rp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_cp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pivot_row) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pivot_col) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  ret i32 %368
}

; Function Attrs: nounwind uwtable
define internal void @order_children(i32 noundef %n_col, ptr noundef %Col, ptr noundef %p) #2 {
entry:
  %n_col.addr = alloca i32, align 4
  %Col.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %parent = alloca i32, align 4
  %order = alloca i32, align 4
  store i32 %n_col, ptr %n_col.addr, align 4, !tbaa !4
  store ptr %Col, ptr %Col.addr, align 8, !tbaa !10
  store ptr %p, ptr %p.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %parent) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %order) #4
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !4
  %1 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %3 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.Colamd_Col_struct, ptr %2, i64 %idxprom
  %start = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx, i32 0, i32 0
  %4 = load i32, ptr %start, align 4, !tbaa !30
  %cmp1 = icmp eq i32 %4, -1
  br i1 %cmp1, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %5 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %6 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %5, i64 %idxprom2
  %shared2 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx3, i32 0, i32 3
  %7 = load i32, ptr %shared2, align 4, !tbaa !33
  %cmp4 = icmp eq i32 %7, -1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %8, ptr %parent, align 4, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %9 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %10 = load i32, ptr %parent, align 4, !tbaa !4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %9, i64 %idxprom5
  %shared1 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx6, i32 0, i32 2
  %11 = load i32, ptr %shared1, align 4, !tbaa !33
  store i32 %11, ptr %parent, align 4, !tbaa !4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %12 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %13 = load i32, ptr %parent, align 4, !tbaa !4
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %12, i64 %idxprom7
  %start9 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx8, i32 0, i32 0
  %14 = load i32, ptr %start9, align 4, !tbaa !30
  %cmp10 = icmp eq i32 %14, -1
  %lnot = xor i1 %cmp10, true
  br i1 %lnot, label %do.body, label %do.end, !llvm.loop !68

do.end:                                           ; preds = %do.cond
  %15 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %15, ptr %c, align 4, !tbaa !4
  %16 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %17 = load i32, ptr %parent, align 4, !tbaa !4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %16, i64 %idxprom11
  %shared213 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx12, i32 0, i32 3
  %18 = load i32, ptr %shared213, align 4, !tbaa !33
  store i32 %18, ptr %order, align 4, !tbaa !4
  br label %do.body14

do.body14:                                        ; preds = %do.cond24, %do.end
  %19 = load i32, ptr %order, align 4, !tbaa !4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %order, align 4, !tbaa !4
  %20 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %21 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom15 = sext i32 %21 to i64
  %arrayidx16 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %20, i64 %idxprom15
  %shared217 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx16, i32 0, i32 3
  store i32 %19, ptr %shared217, align 4, !tbaa !33
  %22 = load i32, ptr %parent, align 4, !tbaa !4
  %23 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %24 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom18 = sext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %23, i64 %idxprom18
  %shared120 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx19, i32 0, i32 2
  store i32 %22, ptr %shared120, align 4, !tbaa !33
  %25 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %26 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom21 = sext i32 %26 to i64
  %arrayidx22 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %25, i64 %idxprom21
  %shared123 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx22, i32 0, i32 2
  %27 = load i32, ptr %shared123, align 4, !tbaa !33
  store i32 %27, ptr %c, align 4, !tbaa !4
  br label %do.cond24

do.cond24:                                        ; preds = %do.body14
  %28 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %29 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom25 = sext i32 %29 to i64
  %arrayidx26 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %28, i64 %idxprom25
  %shared227 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx26, i32 0, i32 3
  %30 = load i32, ptr %shared227, align 4, !tbaa !33
  %cmp28 = icmp eq i32 %30, -1
  br i1 %cmp28, label %do.body14, label %do.end29, !llvm.loop !69

do.end29:                                         ; preds = %do.cond24
  %31 = load i32, ptr %order, align 4, !tbaa !4
  %32 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %33 = load i32, ptr %parent, align 4, !tbaa !4
  %idxprom30 = sext i32 %33 to i64
  %arrayidx31 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %32, i64 %idxprom30
  %shared232 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx31, i32 0, i32 3
  store i32 %31, ptr %shared232, align 4, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %do.end29, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %34 = load i32, ptr %i, align 4, !tbaa !4
  %inc33 = add nsw i32 %34, 1
  store i32 %inc33, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !70

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %c, align 4, !tbaa !4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc42, %for.end
  %35 = load i32, ptr %c, align 4, !tbaa !4
  %36 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %cmp35 = icmp slt i32 %35, %36
  br i1 %cmp35, label %for.body36, label %for.end44

for.body36:                                       ; preds = %for.cond34
  %37 = load i32, ptr %c, align 4, !tbaa !4
  %38 = load ptr, ptr %p.addr, align 8, !tbaa !10
  %39 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %40 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom37 = sext i32 %40 to i64
  %arrayidx38 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %39, i64 %idxprom37
  %shared239 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx38, i32 0, i32 3
  %41 = load i32, ptr %shared239, align 4, !tbaa !33
  %idxprom40 = sext i32 %41 to i64
  %arrayidx41 = getelementptr inbounds i32, ptr %38, i64 %idxprom40
  store i32 %37, ptr %arrayidx41, align 4, !tbaa !4
  br label %for.inc42

for.inc42:                                        ; preds = %for.body36
  %42 = load i32, ptr %c, align 4, !tbaa !4
  %inc43 = add nsw i32 %42, 1
  store i32 %inc43, ptr %c, align 4, !tbaa !4
  br label %for.cond34, !llvm.loop !71

for.end44:                                        ; preds = %for.cond34
  call void @llvm.lifetime.end.p0(i64 4, ptr %order) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %parent) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret void
}

; Function Attrs: uwtable
define void @colamd_report(ptr noundef %stats) #0 {
entry:
  %stats.addr = alloca ptr, align 8
  store ptr %stats, ptr %stats.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  call void @print_report(ptr noundef @.str, ptr noundef %0)
  ret void
}

; Function Attrs: uwtable
define internal void @print_report(ptr noundef %method, ptr noundef %stats) #0 {
entry:
  %method.addr = alloca ptr, align 8
  %stats.addr = alloca ptr, align 8
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %method, ptr %method.addr, align 8, !tbaa !10
  store ptr %stats, ptr %stats.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i3) #4
  %0 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %2 = load ptr, ptr %method.addr, align 8, !tbaa !10
  %call = call i32 (ptr, ...) %1(ptr noundef @.str.2, ptr noundef %2, i32 noundef 2, i32 noundef 9, ptr noundef @.str.3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.end6, label %if.then1

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %cmp2 = icmp ne ptr %4, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.then1
  %5 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %call4 = call i32 (ptr, ...) %5(ptr noundef @.str.4)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds i32, ptr %6, i64 4
  %7 = load i32, ptr %arrayidx, align 4, !tbaa !4
  store i32 %7, ptr %i1, align 4, !tbaa !4
  %8 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx7 = getelementptr inbounds i32, ptr %8, i64 5
  %9 = load i32, ptr %arrayidx7, align 4, !tbaa !4
  store i32 %9, ptr %i2, align 4, !tbaa !4
  %10 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx8 = getelementptr inbounds i32, ptr %10, i64 6
  %11 = load i32, ptr %arrayidx8, align 4, !tbaa !4
  store i32 %11, ptr %i3, align 4, !tbaa !4
  %12 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx9 = getelementptr inbounds i32, ptr %12, i64 3
  %13 = load i32, ptr %arrayidx9, align 4, !tbaa !4
  %cmp10 = icmp sge i32 %13, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end6
  %14 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %cmp12 = icmp ne ptr %14, null
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then11
  %15 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %call14 = call i32 (ptr, ...) %15(ptr noundef @.str.5)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then11
  br label %if.end20

if.else:                                          ; preds = %if.end6
  %16 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %cmp16 = icmp ne ptr %16, null
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.else
  %17 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %call18 = call i32 (ptr, ...) %17(ptr noundef @.str.6)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end15
  %18 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx21 = getelementptr inbounds i32, ptr %18, i64 3
  %19 = load i32, ptr %arrayidx21, align 4, !tbaa !4
  switch i32 %19, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb38
    i32 -1, label %sw.bb58
    i32 -2, label %sw.bb63
    i32 -3, label %sw.bb68
    i32 -4, label %sw.bb73
    i32 -5, label %sw.bb78
    i32 -6, label %sw.bb83
    i32 -7, label %sw.bb88
    i32 -8, label %sw.bb97
    i32 -9, label %sw.bb102
    i32 -10, label %sw.bb107
  ]

sw.bb:                                            ; preds = %if.end20
  %20 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %cmp22 = icmp ne ptr %20, null
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %sw.bb
  %21 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %call24 = call i32 (ptr, ...) %21(ptr noundef @.str.7)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %sw.bb
  %22 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %cmp26 = icmp ne ptr %22, null
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end25
  %23 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %24 = load ptr, ptr %method.addr, align 8, !tbaa !10
  %25 = load i32, ptr %i3, align 4, !tbaa !4
  %call28 = call i32 (ptr, ...) %23(ptr noundef @.str.8, ptr noundef %24, i32 noundef %25)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end25
  %26 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %cmp30 = icmp ne ptr %26, null
  br i1 %cmp30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end29
  %27 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %28 = load ptr, ptr %method.addr, align 8, !tbaa !10
  %29 = load i32, ptr %i2, align 4, !tbaa !4
  %call32 = call i32 (ptr, ...) %27(ptr noundef @.str.9, ptr noundef %28, i32 noundef %29)
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end29
  %30 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %cmp34 = icmp ne ptr %30, null
  br i1 %cmp34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end33
  %31 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %32 = load ptr, ptr %method.addr, align 8, !tbaa !10
  %33 = load i32, ptr %i1, align 4, !tbaa !4
  %call36 = call i32 (ptr, ...) %31(ptr noundef @.str.10, ptr noundef %32, i32 noundef %33)
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end33
  br label %sw.bb38

sw.bb38:                                          ; preds = %if.end20, %if.end37
  %34 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %cmp39 = icmp ne ptr %34, null
  br i1 %cmp39, label %if.then40, label %if.end42

if.then40:                                        ; preds = %sw.bb38
  %35 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %call41 = call i32 (ptr, ...) %35(ptr noundef @.str.11)
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %sw.bb38
  %36 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %cmp43 = icmp ne ptr %36, null
  br i1 %cmp43, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.end42
  %37 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %38 = load ptr, ptr %method.addr, align 8, !tbaa !10
  %39 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx45 = getelementptr inbounds i32, ptr %39, i64 0
  %40 = load i32, ptr %arrayidx45, align 4, !tbaa !4
  %call46 = call i32 (ptr, ...) %37(ptr noundef @.str.12, ptr noundef %38, i32 noundef %40)
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end42
  %41 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %cmp48 = icmp ne ptr %41, null
  br i1 %cmp48, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end47
  %42 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %43 = load ptr, ptr %method.addr, align 8, !tbaa !10
  %44 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx50 = getelementptr inbounds i32, ptr %44, i64 1
  %45 = load i32, ptr %arrayidx50, align 4, !tbaa !4
  %call51 = call i32 (ptr, ...) %42(ptr noundef @.str.13, ptr noundef %43, i32 noundef %45)
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end47
  %46 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %cmp53 = icmp ne ptr %46, null
  br i1 %cmp53, label %if.then54, label %if.end57

if.then54:                                        ; preds = %if.end52
  %47 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %48 = load ptr, ptr %method.addr, align 8, !tbaa !10
  %49 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %arrayidx55 = getelementptr inbounds i32, ptr %49, i64 2
  %50 = load i32, ptr %arrayidx55, align 4, !tbaa !4
  %call56 = call i32 (ptr, ...) %47(ptr noundef @.str.14, ptr noundef %48, i32 noundef %50)
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end52
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end20
  %51 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %cmp59 = icmp ne ptr %51, null
  br i1 %cmp59, label %if.then60, label %if.end62

if.then60:                                        ; preds = %sw.bb58
  %52 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %call61 = call i32 (ptr, ...) %52(ptr noundef @.str.15)
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %sw.bb58
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.end20
  %53 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %cmp64 = icmp ne ptr %53, null
  br i1 %cmp64, label %if.then65, label %if.end67

if.then65:                                        ; preds = %sw.bb63
  %54 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %call66 = call i32 (ptr, ...) %54(ptr noundef @.str.16)
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %sw.bb63
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end20
  %55 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %cmp69 = icmp ne ptr %55, null
  br i1 %cmp69, label %if.then70, label %if.end72

if.then70:                                        ; preds = %sw.bb68
  %56 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %57 = load i32, ptr %i1, align 4, !tbaa !4
  %call71 = call i32 (ptr, ...) %56(ptr noundef @.str.17, i32 noundef %57)
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %sw.bb68
  br label %sw.epilog

sw.bb73:                                          ; preds = %if.end20
  %58 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %cmp74 = icmp ne ptr %58, null
  br i1 %cmp74, label %if.then75, label %if.end77

if.then75:                                        ; preds = %sw.bb73
  %59 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %60 = load i32, ptr %i1, align 4, !tbaa !4
  %call76 = call i32 (ptr, ...) %59(ptr noundef @.str.18, i32 noundef %60)
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %sw.bb73
  br label %sw.epilog

sw.bb78:                                          ; preds = %if.end20
  %61 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %cmp79 = icmp ne ptr %61, null
  br i1 %cmp79, label %if.then80, label %if.end82

if.then80:                                        ; preds = %sw.bb78
  %62 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %63 = load i32, ptr %i1, align 4, !tbaa !4
  %call81 = call i32 (ptr, ...) %62(ptr noundef @.str.19, i32 noundef %63)
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %sw.bb78
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end20
  %64 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %cmp84 = icmp ne ptr %64, null
  br i1 %cmp84, label %if.then85, label %if.end87

if.then85:                                        ; preds = %sw.bb83
  %65 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %66 = load i32, ptr %i1, align 4, !tbaa !4
  %call86 = call i32 (ptr, ...) %65(ptr noundef @.str.20, i32 noundef %66)
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %sw.bb83
  br label %sw.epilog

sw.bb88:                                          ; preds = %if.end20
  %67 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %cmp89 = icmp ne ptr %67, null
  br i1 %cmp89, label %if.then90, label %if.end92

if.then90:                                        ; preds = %sw.bb88
  %68 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %call91 = call i32 (ptr, ...) %68(ptr noundef @.str.21)
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %sw.bb88
  %69 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %cmp93 = icmp ne ptr %69, null
  br i1 %cmp93, label %if.then94, label %if.end96

if.then94:                                        ; preds = %if.end92
  %70 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %71 = load i32, ptr %i1, align 4, !tbaa !4
  %72 = load i32, ptr %i2, align 4, !tbaa !4
  %call95 = call i32 (ptr, ...) %70(ptr noundef @.str.22, i32 noundef %71, i32 noundef %72)
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.end92
  br label %sw.epilog

sw.bb97:                                          ; preds = %if.end20
  %73 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %cmp98 = icmp ne ptr %73, null
  br i1 %cmp98, label %if.then99, label %if.end101

if.then99:                                        ; preds = %sw.bb97
  %74 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %75 = load i32, ptr %i1, align 4, !tbaa !4
  %76 = load i32, ptr %i2, align 4, !tbaa !4
  %call100 = call i32 (ptr, ...) %74(ptr noundef @.str.23, i32 noundef %75, i32 noundef %76)
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %sw.bb97
  br label %sw.epilog

sw.bb102:                                         ; preds = %if.end20
  %77 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %cmp103 = icmp ne ptr %77, null
  br i1 %cmp103, label %if.then104, label %if.end106

if.then104:                                       ; preds = %sw.bb102
  %78 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %79 = load i32, ptr %i2, align 4, !tbaa !4
  %80 = load i32, ptr %i3, align 4, !tbaa !4
  %sub = sub nsw i32 %80, 1
  %81 = load i32, ptr %i1, align 4, !tbaa !4
  %call105 = call i32 (ptr, ...) %78(ptr noundef @.str.24, i32 noundef %79, i32 noundef 0, i32 noundef %sub, i32 noundef %81)
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %sw.bb102
  br label %sw.epilog

sw.bb107:                                         ; preds = %if.end20
  %82 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %cmp108 = icmp ne ptr %82, null
  br i1 %cmp108, label %if.then109, label %if.end111

if.then109:                                       ; preds = %sw.bb107
  %83 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 4), align 8, !tbaa !72
  %call110 = call i32 (ptr, ...) %83(ptr noundef @.str.25)
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %sw.bb107
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end20, %if.end111, %if.end106, %if.end101, %if.end96, %if.end87, %if.end82, %if.end77, %if.end72, %if.end67, %if.end62, %if.end57
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i1) #4
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

; Function Attrs: uwtable
define void @symamd_report(ptr noundef %stats) #0 {
entry:
  %stats.addr = alloca ptr, align 8
  store ptr %stats, ptr %stats.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  call void @print_report(ptr noundef @.str.1, ptr noundef %0)
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @clear_mark(i32 noundef %tag_mark, i32 noundef %max_mark, i32 noundef %n_row, ptr noundef %Row) #2 {
entry:
  %tag_mark.addr = alloca i32, align 4
  %max_mark.addr = alloca i32, align 4
  %n_row.addr = alloca i32, align 4
  %Row.addr = alloca ptr, align 8
  %r = alloca i32, align 4
  store i32 %tag_mark, ptr %tag_mark.addr, align 4, !tbaa !4
  store i32 %max_mark, ptr %max_mark.addr, align 4, !tbaa !4
  store i32 %n_row, ptr %n_row.addr, align 4, !tbaa !4
  store ptr %Row, ptr %Row.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #4
  %0 = load i32, ptr %tag_mark.addr, align 4, !tbaa !4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %tag_mark.addr, align 4, !tbaa !4
  %2 = load i32, ptr %max_mark.addr, align 4, !tbaa !4
  %cmp1 = icmp sge i32 %1, %2
  br i1 %cmp1, label %if.then, label %if.end8

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %r, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, ptr %r, align 4, !tbaa !4
  %4 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %6 = load i32, ptr %r, align 4, !tbaa !4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.Colamd_Row_struct, ptr %5, i64 %idxprom
  %shared2 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx, i32 0, i32 3
  %7 = load i32, ptr %shared2, align 4, !tbaa !33
  %cmp3 = icmp sge i32 %7, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %for.body
  %8 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %9 = load i32, ptr %r, align 4, !tbaa !4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %8, i64 %idxprom5
  %shared27 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx6, i32 0, i32 3
  store i32 0, ptr %shared27, align 4, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.then4, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %r, align 4, !tbaa !4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %r, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !74

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %tag_mark.addr, align 4, !tbaa !4
  br label %if.end8

if.end8:                                          ; preds = %for.end, %lor.lhs.false
  %11 = load i32, ptr %tag_mark.addr, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @garbage_collection(i32 noundef %n_row, i32 noundef %n_col, ptr noundef %Row, ptr noundef %Col, ptr noundef %A, ptr noundef %pfree) #2 {
entry:
  %n_row.addr = alloca i32, align 4
  %n_col.addr = alloca i32, align 4
  %Row.addr = alloca ptr, align 8
  %Col.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %pfree.addr = alloca ptr, align 8
  %psrc = alloca ptr, align 8
  %pdest = alloca ptr, align 8
  %j = alloca i32, align 4
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %length = alloca i32, align 4
  store i32 %n_row, ptr %n_row.addr, align 4, !tbaa !4
  store i32 %n_col, ptr %n_col.addr, align 4, !tbaa !4
  store ptr %Row, ptr %Row.addr, align 8, !tbaa !10
  store ptr %Col, ptr %Col.addr, align 8, !tbaa !10
  store ptr %A, ptr %A.addr, align 8, !tbaa !10
  store ptr %pfree, ptr %pfree.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %psrc) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdest) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #4
  %0 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  store ptr %arrayidx, ptr %pdest, align 8, !tbaa !10
  store i32 0, ptr %c, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc39, %entry
  %1 = load i32, ptr %c, align 4, !tbaa !4
  %2 = load i32, ptr %n_col.addr, align 4, !tbaa !4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end41

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %4 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom = sext i32 %4 to i64
  %arrayidx1 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %3, i64 %idxprom
  %start = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx1, i32 0, i32 0
  %5 = load i32, ptr %start, align 4, !tbaa !30
  %cmp2 = icmp sge i32 %5, 0
  br i1 %cmp2, label %if.then, label %if.end38

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %7 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %8 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %7, i64 %idxprom3
  %start5 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx4, i32 0, i32 0
  %9 = load i32, ptr %start5, align 4, !tbaa !30
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %6, i64 %idxprom6
  store ptr %arrayidx7, ptr %psrc, align 8, !tbaa !10
  %10 = load ptr, ptr %pdest, align 8, !tbaa !10
  %11 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %arrayidx8 = getelementptr inbounds i32, ptr %11, i64 0
  %sub.ptr.lhs.cast = ptrtoint ptr %10 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %arrayidx8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv = trunc i64 %sub.ptr.div to i32
  %12 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %13 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %12, i64 %idxprom9
  %start11 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx10, i32 0, i32 0
  store i32 %conv, ptr %start11, align 4, !tbaa !30
  %14 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %15 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %14, i64 %idxprom12
  %length14 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx13, i32 0, i32 1
  %16 = load i32, ptr %length14, align 4, !tbaa !32
  store i32 %16, ptr %length, align 4, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc, %if.then
  %17 = load i32, ptr %j, align 4, !tbaa !4
  %18 = load i32, ptr %length, align 4, !tbaa !4
  %cmp16 = icmp slt i32 %17, %18
  br i1 %cmp16, label %for.body18, label %for.end

for.body18:                                       ; preds = %for.cond15
  %19 = load ptr, ptr %psrc, align 8, !tbaa !10
  %incdec.ptr = getelementptr inbounds i32, ptr %19, i32 1
  store ptr %incdec.ptr, ptr %psrc, align 8, !tbaa !10
  %20 = load i32, ptr %19, align 4, !tbaa !4
  store i32 %20, ptr %r, align 4, !tbaa !4
  %21 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %22 = load i32, ptr %r, align 4, !tbaa !4
  %idxprom19 = sext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %21, i64 %idxprom19
  %shared2 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx20, i32 0, i32 3
  %23 = load i32, ptr %shared2, align 4, !tbaa !33
  %cmp21 = icmp sge i32 %23, 0
  br i1 %cmp21, label %if.then23, label %if.end

if.then23:                                        ; preds = %for.body18
  %24 = load i32, ptr %r, align 4, !tbaa !4
  %25 = load ptr, ptr %pdest, align 8, !tbaa !10
  %incdec.ptr24 = getelementptr inbounds i32, ptr %25, i32 1
  store ptr %incdec.ptr24, ptr %pdest, align 8, !tbaa !10
  store i32 %24, ptr %25, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then23, %for.body18
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load i32, ptr %j, align 4, !tbaa !4
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %j, align 4, !tbaa !4
  br label %for.cond15, !llvm.loop !75

for.end:                                          ; preds = %for.cond15
  %27 = load ptr, ptr %pdest, align 8, !tbaa !10
  %28 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %29 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %30 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom25 = sext i32 %30 to i64
  %arrayidx26 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %29, i64 %idxprom25
  %start27 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx26, i32 0, i32 0
  %31 = load i32, ptr %start27, align 4, !tbaa !30
  %idxprom28 = sext i32 %31 to i64
  %arrayidx29 = getelementptr inbounds i32, ptr %28, i64 %idxprom28
  %sub.ptr.lhs.cast30 = ptrtoint ptr %27 to i64
  %sub.ptr.rhs.cast31 = ptrtoint ptr %arrayidx29 to i64
  %sub.ptr.sub32 = sub i64 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31
  %sub.ptr.div33 = sdiv exact i64 %sub.ptr.sub32, 4
  %conv34 = trunc i64 %sub.ptr.div33 to i32
  %32 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %33 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom35 = sext i32 %33 to i64
  %arrayidx36 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %32, i64 %idxprom35
  %length37 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx36, i32 0, i32 1
  store i32 %conv34, ptr %length37, align 4, !tbaa !32
  br label %if.end38

if.end38:                                         ; preds = %for.end, %for.body
  br label %for.inc39

for.inc39:                                        ; preds = %if.end38
  %34 = load i32, ptr %c, align 4, !tbaa !4
  %inc40 = add nsw i32 %34, 1
  store i32 %inc40, ptr %c, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !76

for.end41:                                        ; preds = %for.cond
  store i32 0, ptr %r, align 4, !tbaa !4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc70, %for.end41
  %35 = load i32, ptr %r, align 4, !tbaa !4
  %36 = load i32, ptr %n_row.addr, align 4, !tbaa !4
  %cmp43 = icmp slt i32 %35, %36
  br i1 %cmp43, label %for.body45, label %for.end72

for.body45:                                       ; preds = %for.cond42
  %37 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %38 = load i32, ptr %r, align 4, !tbaa !4
  %idxprom46 = sext i32 %38 to i64
  %arrayidx47 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %37, i64 %idxprom46
  %shared248 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx47, i32 0, i32 3
  %39 = load i32, ptr %shared248, align 4, !tbaa !33
  %cmp49 = icmp slt i32 %39, 0
  br i1 %cmp49, label %if.then56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body45
  %40 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %41 = load i32, ptr %r, align 4, !tbaa !4
  %idxprom51 = sext i32 %41 to i64
  %arrayidx52 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %40, i64 %idxprom51
  %length53 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx52, i32 0, i32 1
  %42 = load i32, ptr %length53, align 4, !tbaa !35
  %cmp54 = icmp eq i32 %42, 0
  br i1 %cmp54, label %if.then56, label %if.else

if.then56:                                        ; preds = %lor.lhs.false, %for.body45
  %43 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %44 = load i32, ptr %r, align 4, !tbaa !4
  %idxprom57 = sext i32 %44 to i64
  %arrayidx58 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %43, i64 %idxprom57
  %shared259 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx58, i32 0, i32 3
  store i32 -1, ptr %shared259, align 4, !tbaa !33
  br label %if.end69

if.else:                                          ; preds = %lor.lhs.false
  %45 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %46 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %47 = load i32, ptr %r, align 4, !tbaa !4
  %idxprom60 = sext i32 %47 to i64
  %arrayidx61 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %46, i64 %idxprom60
  %start62 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx61, i32 0, i32 0
  %48 = load i32, ptr %start62, align 4, !tbaa !40
  %idxprom63 = sext i32 %48 to i64
  %arrayidx64 = getelementptr inbounds i32, ptr %45, i64 %idxprom63
  store ptr %arrayidx64, ptr %psrc, align 8, !tbaa !10
  %49 = load ptr, ptr %psrc, align 8, !tbaa !10
  %50 = load i32, ptr %49, align 4, !tbaa !4
  %51 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %52 = load i32, ptr %r, align 4, !tbaa !4
  %idxprom65 = sext i32 %52 to i64
  %arrayidx66 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %51, i64 %idxprom65
  %shared267 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx66, i32 0, i32 3
  store i32 %50, ptr %shared267, align 4, !tbaa !33
  %53 = load i32, ptr %r, align 4, !tbaa !4
  %sub = sub nsw i32 0, %53
  %sub68 = sub nsw i32 %sub, 1
  %54 = load ptr, ptr %psrc, align 8, !tbaa !10
  store i32 %sub68, ptr %54, align 4, !tbaa !4
  br label %if.end69

if.end69:                                         ; preds = %if.else, %if.then56
  br label %for.inc70

for.inc70:                                        ; preds = %if.end69
  %55 = load i32, ptr %r, align 4, !tbaa !4
  %inc71 = add nsw i32 %55, 1
  store i32 %inc71, ptr %r, align 4, !tbaa !4
  br label %for.cond42, !llvm.loop !77

for.end72:                                        ; preds = %for.cond42
  %56 = load ptr, ptr %pdest, align 8, !tbaa !10
  store ptr %56, ptr %psrc, align 8, !tbaa !10
  br label %while.cond

while.cond:                                       ; preds = %if.end126, %for.end72
  %57 = load ptr, ptr %psrc, align 8, !tbaa !10
  %58 = load ptr, ptr %pfree.addr, align 8, !tbaa !10
  %cmp73 = icmp ult ptr %57, %58
  br i1 %cmp73, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %59 = load ptr, ptr %psrc, align 8, !tbaa !10
  %incdec.ptr75 = getelementptr inbounds i32, ptr %59, i32 1
  store ptr %incdec.ptr75, ptr %psrc, align 8, !tbaa !10
  %60 = load i32, ptr %59, align 4, !tbaa !4
  %cmp76 = icmp slt i32 %60, 0
  br i1 %cmp76, label %if.then78, label %if.end126

if.then78:                                        ; preds = %while.body
  %61 = load ptr, ptr %psrc, align 8, !tbaa !10
  %incdec.ptr79 = getelementptr inbounds i32, ptr %61, i32 -1
  store ptr %incdec.ptr79, ptr %psrc, align 8, !tbaa !10
  %62 = load ptr, ptr %psrc, align 8, !tbaa !10
  %63 = load i32, ptr %62, align 4, !tbaa !4
  %sub80 = sub nsw i32 0, %63
  %sub81 = sub nsw i32 %sub80, 1
  store i32 %sub81, ptr %r, align 4, !tbaa !4
  %64 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %65 = load i32, ptr %r, align 4, !tbaa !4
  %idxprom82 = sext i32 %65 to i64
  %arrayidx83 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %64, i64 %idxprom82
  %shared284 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx83, i32 0, i32 3
  %66 = load i32, ptr %shared284, align 4, !tbaa !33
  %67 = load ptr, ptr %psrc, align 8, !tbaa !10
  store i32 %66, ptr %67, align 4, !tbaa !4
  %68 = load ptr, ptr %pdest, align 8, !tbaa !10
  %69 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %arrayidx85 = getelementptr inbounds i32, ptr %69, i64 0
  %sub.ptr.lhs.cast86 = ptrtoint ptr %68 to i64
  %sub.ptr.rhs.cast87 = ptrtoint ptr %arrayidx85 to i64
  %sub.ptr.sub88 = sub i64 %sub.ptr.lhs.cast86, %sub.ptr.rhs.cast87
  %sub.ptr.div89 = sdiv exact i64 %sub.ptr.sub88, 4
  %conv90 = trunc i64 %sub.ptr.div89 to i32
  %70 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %71 = load i32, ptr %r, align 4, !tbaa !4
  %idxprom91 = sext i32 %71 to i64
  %arrayidx92 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %70, i64 %idxprom91
  %start93 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx92, i32 0, i32 0
  store i32 %conv90, ptr %start93, align 4, !tbaa !40
  %72 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %73 = load i32, ptr %r, align 4, !tbaa !4
  %idxprom94 = sext i32 %73 to i64
  %arrayidx95 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %72, i64 %idxprom94
  %length96 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx95, i32 0, i32 1
  %74 = load i32, ptr %length96, align 4, !tbaa !35
  store i32 %74, ptr %length, align 4, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !4
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc110, %if.then78
  %75 = load i32, ptr %j, align 4, !tbaa !4
  %76 = load i32, ptr %length, align 4, !tbaa !4
  %cmp98 = icmp slt i32 %75, %76
  br i1 %cmp98, label %for.body100, label %for.end112

for.body100:                                      ; preds = %for.cond97
  %77 = load ptr, ptr %psrc, align 8, !tbaa !10
  %incdec.ptr101 = getelementptr inbounds i32, ptr %77, i32 1
  store ptr %incdec.ptr101, ptr %psrc, align 8, !tbaa !10
  %78 = load i32, ptr %77, align 4, !tbaa !4
  store i32 %78, ptr %c, align 4, !tbaa !4
  %79 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %80 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom102 = sext i32 %80 to i64
  %arrayidx103 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %79, i64 %idxprom102
  %start104 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx103, i32 0, i32 0
  %81 = load i32, ptr %start104, align 4, !tbaa !30
  %cmp105 = icmp sge i32 %81, 0
  br i1 %cmp105, label %if.then107, label %if.end109

if.then107:                                       ; preds = %for.body100
  %82 = load i32, ptr %c, align 4, !tbaa !4
  %83 = load ptr, ptr %pdest, align 8, !tbaa !10
  %incdec.ptr108 = getelementptr inbounds i32, ptr %83, i32 1
  store ptr %incdec.ptr108, ptr %pdest, align 8, !tbaa !10
  store i32 %82, ptr %83, align 4, !tbaa !4
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %for.body100
  br label %for.inc110

for.inc110:                                       ; preds = %if.end109
  %84 = load i32, ptr %j, align 4, !tbaa !4
  %inc111 = add nsw i32 %84, 1
  store i32 %inc111, ptr %j, align 4, !tbaa !4
  br label %for.cond97, !llvm.loop !78

for.end112:                                       ; preds = %for.cond97
  %85 = load ptr, ptr %pdest, align 8, !tbaa !10
  %86 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %87 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %88 = load i32, ptr %r, align 4, !tbaa !4
  %idxprom113 = sext i32 %88 to i64
  %arrayidx114 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %87, i64 %idxprom113
  %start115 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx114, i32 0, i32 0
  %89 = load i32, ptr %start115, align 4, !tbaa !40
  %idxprom116 = sext i32 %89 to i64
  %arrayidx117 = getelementptr inbounds i32, ptr %86, i64 %idxprom116
  %sub.ptr.lhs.cast118 = ptrtoint ptr %85 to i64
  %sub.ptr.rhs.cast119 = ptrtoint ptr %arrayidx117 to i64
  %sub.ptr.sub120 = sub i64 %sub.ptr.lhs.cast118, %sub.ptr.rhs.cast119
  %sub.ptr.div121 = sdiv exact i64 %sub.ptr.sub120, 4
  %conv122 = trunc i64 %sub.ptr.div121 to i32
  %90 = load ptr, ptr %Row.addr, align 8, !tbaa !10
  %91 = load i32, ptr %r, align 4, !tbaa !4
  %idxprom123 = sext i32 %91 to i64
  %arrayidx124 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %90, i64 %idxprom123
  %length125 = getelementptr inbounds %struct.Colamd_Row_struct, ptr %arrayidx124, i32 0, i32 1
  store i32 %conv122, ptr %length125, align 4, !tbaa !35
  br label %if.end126

if.end126:                                        ; preds = %for.end112, %while.body
  br label %while.cond, !llvm.loop !79

while.end:                                        ; preds = %while.cond
  %92 = load ptr, ptr %pdest, align 8, !tbaa !10
  %93 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %arrayidx127 = getelementptr inbounds i32, ptr %93, i64 0
  %sub.ptr.lhs.cast128 = ptrtoint ptr %92 to i64
  %sub.ptr.rhs.cast129 = ptrtoint ptr %arrayidx127 to i64
  %sub.ptr.sub130 = sub i64 %sub.ptr.lhs.cast128, %sub.ptr.rhs.cast129
  %sub.ptr.div131 = sdiv exact i64 %sub.ptr.sub130, 4
  %conv132 = trunc i64 %sub.ptr.div131 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdest) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %psrc) #4
  ret i32 %conv132
}

; Function Attrs: nounwind uwtable
define internal void @detect_super_cols(ptr noundef %Col, ptr noundef %A, ptr noundef %head, i32 noundef %row_start, i32 noundef %row_length) #2 {
entry:
  %Col.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %row_start.addr = alloca i32, align 4
  %row_length.addr = alloca i32, align 4
  %hash = alloca i32, align 4
  %rp = alloca ptr, align 8
  %c = alloca i32, align 4
  %super_c = alloca i32, align 4
  %cp1 = alloca ptr, align 8
  %cp2 = alloca ptr, align 8
  %length = alloca i32, align 4
  %prev_c = alloca i32, align 4
  %i = alloca i32, align 4
  %rp_end = alloca ptr, align 8
  %col = alloca i32, align 4
  %head_column = alloca i32, align 4
  %first_col = alloca i32, align 4
  store ptr %Col, ptr %Col.addr, align 8, !tbaa !10
  store ptr %A, ptr %A.addr, align 8, !tbaa !10
  store ptr %head, ptr %head.addr, align 8, !tbaa !10
  store i32 %row_start, ptr %row_start.addr, align 4, !tbaa !4
  store i32 %row_length, ptr %row_length.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %hash) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rp) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %super_c) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %prev_c) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rp_end) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %col) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %head_column) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %first_col) #4
  %0 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %1 = load i32, ptr %row_start.addr, align 4, !tbaa !4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  store ptr %arrayidx, ptr %rp, align 8, !tbaa !10
  %2 = load ptr, ptr %rp, align 8, !tbaa !10
  %3 = load i32, ptr %row_length.addr, align 4, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i32, ptr %2, i64 %idx.ext
  store ptr %add.ptr, ptr %rp_end, align 8, !tbaa !10
  br label %while.cond

while.cond:                                       ; preds = %if.end95, %if.then, %entry
  %4 = load ptr, ptr %rp, align 8, !tbaa !10
  %5 = load ptr, ptr %rp_end, align 8, !tbaa !10
  %cmp = icmp ult ptr %4, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %rp, align 8, !tbaa !10
  %incdec.ptr = getelementptr inbounds i32, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %rp, align 8, !tbaa !10
  %7 = load i32, ptr %6, align 4, !tbaa !4
  store i32 %7, ptr %col, align 4, !tbaa !4
  %8 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %9 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom1 = sext i32 %9 to i64
  %arrayidx2 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %8, i64 %idxprom1
  %start = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx2, i32 0, i32 0
  %10 = load i32, ptr %start, align 4, !tbaa !30
  %cmp3 = icmp slt i32 %10, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.cond, !llvm.loop !80

if.end:                                           ; preds = %while.body
  %11 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %12 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %11, i64 %idxprom4
  %shared3 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx5, i32 0, i32 4
  %13 = load i32, ptr %shared3, align 4, !tbaa !33
  store i32 %13, ptr %hash, align 4, !tbaa !4
  %14 = load ptr, ptr %head.addr, align 8, !tbaa !10
  %15 = load i32, ptr %hash, align 4, !tbaa !4
  %idxprom6 = sext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %14, i64 %idxprom6
  %16 = load i32, ptr %arrayidx7, align 4, !tbaa !4
  store i32 %16, ptr %head_column, align 4, !tbaa !4
  %17 = load i32, ptr %head_column, align 4, !tbaa !4
  %cmp8 = icmp sgt i32 %17, -1
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %18 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %19 = load i32, ptr %head_column, align 4, !tbaa !4
  %idxprom10 = sext i32 %19 to i64
  %arrayidx11 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %18, i64 %idxprom10
  %shared312 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx11, i32 0, i32 4
  %20 = load i32, ptr %shared312, align 4, !tbaa !33
  store i32 %20, ptr %first_col, align 4, !tbaa !4
  br label %if.end13

if.else:                                          ; preds = %if.end
  %21 = load i32, ptr %head_column, align 4, !tbaa !4
  %add = add nsw i32 %21, 2
  %sub = sub nsw i32 0, %add
  store i32 %sub, ptr %first_col, align 4, !tbaa !4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then9
  %22 = load i32, ptr %first_col, align 4, !tbaa !4
  store i32 %22, ptr %super_c, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc82, %if.end13
  %23 = load i32, ptr %super_c, align 4, !tbaa !4
  %cmp14 = icmp ne i32 %23, -1
  br i1 %cmp14, label %for.body, label %for.end86

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %25 = load i32, ptr %super_c, align 4, !tbaa !4
  %idxprom15 = sext i32 %25 to i64
  %arrayidx16 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %24, i64 %idxprom15
  %length17 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx16, i32 0, i32 1
  %26 = load i32, ptr %length17, align 4, !tbaa !32
  store i32 %26, ptr %length, align 4, !tbaa !4
  %27 = load i32, ptr %super_c, align 4, !tbaa !4
  store i32 %27, ptr %prev_c, align 4, !tbaa !4
  %28 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %29 = load i32, ptr %super_c, align 4, !tbaa !4
  %idxprom18 = sext i32 %29 to i64
  %arrayidx19 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %28, i64 %idxprom18
  %shared4 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx19, i32 0, i32 5
  %30 = load i32, ptr %shared4, align 4, !tbaa !33
  store i32 %30, ptr %c, align 4, !tbaa !4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc77, %for.body
  %31 = load i32, ptr %c, align 4, !tbaa !4
  %cmp21 = icmp ne i32 %31, -1
  br i1 %cmp21, label %for.body22, label %for.end81

for.body22:                                       ; preds = %for.cond20
  %32 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %33 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom23 = sext i32 %33 to i64
  %arrayidx24 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %32, i64 %idxprom23
  %length25 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx24, i32 0, i32 1
  %34 = load i32, ptr %length25, align 4, !tbaa !32
  %35 = load i32, ptr %length, align 4, !tbaa !4
  %cmp26 = icmp ne i32 %34, %35
  br i1 %cmp26, label %if.then33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body22
  %36 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %37 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom27 = sext i32 %37 to i64
  %arrayidx28 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %36, i64 %idxprom27
  %shared2 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx28, i32 0, i32 3
  %38 = load i32, ptr %shared2, align 4, !tbaa !33
  %39 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %40 = load i32, ptr %super_c, align 4, !tbaa !4
  %idxprom29 = sext i32 %40 to i64
  %arrayidx30 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %39, i64 %idxprom29
  %shared231 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx30, i32 0, i32 3
  %41 = load i32, ptr %shared231, align 4, !tbaa !33
  %cmp32 = icmp ne i32 %38, %41
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %lor.lhs.false, %for.body22
  %42 = load i32, ptr %c, align 4, !tbaa !4
  store i32 %42, ptr %prev_c, align 4, !tbaa !4
  br label %for.inc77

if.end34:                                         ; preds = %lor.lhs.false
  %43 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %44 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %45 = load i32, ptr %super_c, align 4, !tbaa !4
  %idxprom35 = sext i32 %45 to i64
  %arrayidx36 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %44, i64 %idxprom35
  %start37 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx36, i32 0, i32 0
  %46 = load i32, ptr %start37, align 4, !tbaa !30
  %idxprom38 = sext i32 %46 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %43, i64 %idxprom38
  store ptr %arrayidx39, ptr %cp1, align 8, !tbaa !10
  %47 = load ptr, ptr %A.addr, align 8, !tbaa !10
  %48 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %49 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom40 = sext i32 %49 to i64
  %arrayidx41 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %48, i64 %idxprom40
  %start42 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx41, i32 0, i32 0
  %50 = load i32, ptr %start42, align 4, !tbaa !30
  %idxprom43 = sext i32 %50 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %47, i64 %idxprom43
  store ptr %arrayidx44, ptr %cp2, align 8, !tbaa !10
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc, %if.end34
  %51 = load i32, ptr %i, align 4, !tbaa !4
  %52 = load i32, ptr %length, align 4, !tbaa !4
  %cmp46 = icmp slt i32 %51, %52
  br i1 %cmp46, label %for.body47, label %for.end

for.body47:                                       ; preds = %for.cond45
  %53 = load ptr, ptr %cp1, align 8, !tbaa !10
  %incdec.ptr48 = getelementptr inbounds i32, ptr %53, i32 1
  store ptr %incdec.ptr48, ptr %cp1, align 8, !tbaa !10
  %54 = load i32, ptr %53, align 4, !tbaa !4
  %55 = load ptr, ptr %cp2, align 8, !tbaa !10
  %incdec.ptr49 = getelementptr inbounds i32, ptr %55, i32 1
  store ptr %incdec.ptr49, ptr %cp2, align 8, !tbaa !10
  %56 = load i32, ptr %55, align 4, !tbaa !4
  %cmp50 = icmp ne i32 %54, %56
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %for.body47
  br label %for.end

if.end52:                                         ; preds = %for.body47
  br label %for.inc

for.inc:                                          ; preds = %if.end52
  %57 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %57, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond45, !llvm.loop !81

for.end:                                          ; preds = %if.then51, %for.cond45
  %58 = load i32, ptr %i, align 4, !tbaa !4
  %59 = load i32, ptr %length, align 4, !tbaa !4
  %cmp53 = icmp ne i32 %58, %59
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %for.end
  %60 = load i32, ptr %c, align 4, !tbaa !4
  store i32 %60, ptr %prev_c, align 4, !tbaa !4
  br label %for.inc77

if.end55:                                         ; preds = %for.end
  %61 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %62 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom56 = sext i32 %62 to i64
  %arrayidx57 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %61, i64 %idxprom56
  %shared1 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx57, i32 0, i32 2
  %63 = load i32, ptr %shared1, align 4, !tbaa !33
  %64 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %65 = load i32, ptr %super_c, align 4, !tbaa !4
  %idxprom58 = sext i32 %65 to i64
  %arrayidx59 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %64, i64 %idxprom58
  %shared160 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx59, i32 0, i32 2
  %66 = load i32, ptr %shared160, align 4, !tbaa !33
  %add61 = add nsw i32 %66, %63
  store i32 %add61, ptr %shared160, align 4, !tbaa !33
  %67 = load i32, ptr %super_c, align 4, !tbaa !4
  %68 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %69 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom62 = sext i32 %69 to i64
  %arrayidx63 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %68, i64 %idxprom62
  %shared164 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx63, i32 0, i32 2
  store i32 %67, ptr %shared164, align 4, !tbaa !33
  %70 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %71 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom65 = sext i32 %71 to i64
  %arrayidx66 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %70, i64 %idxprom65
  %start67 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx66, i32 0, i32 0
  store i32 -2, ptr %start67, align 4, !tbaa !30
  %72 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %73 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom68 = sext i32 %73 to i64
  %arrayidx69 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %72, i64 %idxprom68
  %shared270 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx69, i32 0, i32 3
  store i32 -1, ptr %shared270, align 4, !tbaa !33
  %74 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %75 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom71 = sext i32 %75 to i64
  %arrayidx72 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %74, i64 %idxprom71
  %shared473 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx72, i32 0, i32 5
  %76 = load i32, ptr %shared473, align 4, !tbaa !33
  %77 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %78 = load i32, ptr %prev_c, align 4, !tbaa !4
  %idxprom74 = sext i32 %78 to i64
  %arrayidx75 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %77, i64 %idxprom74
  %shared476 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx75, i32 0, i32 5
  store i32 %76, ptr %shared476, align 4, !tbaa !33
  br label %for.inc77

for.inc77:                                        ; preds = %if.end55, %if.then54, %if.then33
  %79 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %80 = load i32, ptr %c, align 4, !tbaa !4
  %idxprom78 = sext i32 %80 to i64
  %arrayidx79 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %79, i64 %idxprom78
  %shared480 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx79, i32 0, i32 5
  %81 = load i32, ptr %shared480, align 4, !tbaa !33
  store i32 %81, ptr %c, align 4, !tbaa !4
  br label %for.cond20, !llvm.loop !82

for.end81:                                        ; preds = %for.cond20
  br label %for.inc82

for.inc82:                                        ; preds = %for.end81
  %82 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %83 = load i32, ptr %super_c, align 4, !tbaa !4
  %idxprom83 = sext i32 %83 to i64
  %arrayidx84 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %82, i64 %idxprom83
  %shared485 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx84, i32 0, i32 5
  %84 = load i32, ptr %shared485, align 4, !tbaa !33
  store i32 %84, ptr %super_c, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !83

for.end86:                                        ; preds = %for.cond
  %85 = load i32, ptr %head_column, align 4, !tbaa !4
  %cmp87 = icmp sgt i32 %85, -1
  br i1 %cmp87, label %if.then88, label %if.else92

if.then88:                                        ; preds = %for.end86
  %86 = load ptr, ptr %Col.addr, align 8, !tbaa !10
  %87 = load i32, ptr %head_column, align 4, !tbaa !4
  %idxprom89 = sext i32 %87 to i64
  %arrayidx90 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %86, i64 %idxprom89
  %shared391 = getelementptr inbounds %struct.Colamd_Col_struct, ptr %arrayidx90, i32 0, i32 4
  store i32 -1, ptr %shared391, align 4, !tbaa !33
  br label %if.end95

if.else92:                                        ; preds = %for.end86
  %88 = load ptr, ptr %head.addr, align 8, !tbaa !10
  %89 = load i32, ptr %hash, align 4, !tbaa !4
  %idxprom93 = sext i32 %89 to i64
  %arrayidx94 = getelementptr inbounds i32, ptr %88, i64 %idxprom93
  store i32 -1, ptr %arrayidx94, align 4, !tbaa !4
  br label %if.end95

if.end95:                                         ; preds = %if.else92, %if.then88
  br label %while.cond, !llvm.loop !80

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %first_col) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %head_column) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %col) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rp_end) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %prev_c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %super_c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %hash) #4
  ret void
}

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !6, i64 0}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !13}
!30 = !{!31, !5, i64 0}
!31 = !{!"Colamd_Col_struct", !5, i64 0, !5, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!32 = !{!31, !5, i64 4}
!33 = !{!6, !6, i64 0}
!34 = distinct !{!34, !13}
!35 = !{!36, !5, i64 4}
!36 = !{!"Colamd_Row_struct", !5, i64 0, !5, i64 4, !6, i64 8, !6, i64 12}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = !{!36, !5, i64 0}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
!47 = distinct !{!47, !13}
!48 = distinct !{!48, !13}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = distinct !{!54, !13}
!55 = distinct !{!55, !13}
!56 = distinct !{!56, !13}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !13}
!72 = !{!73, !11, i64 32}
!73 = !{!"SuiteSparse_config_struct", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !13}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !13}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !13}
