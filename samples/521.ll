; ModuleID = 'samples/521.bc'
source_filename = "../scipy/sparse/linalg/_dsolve/SuperLU/SRC/ilu_zpivotL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }
%struct.SuperLUStat_t = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.GlobalLU_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.LU_stack_t }
%struct.LU_stack_t = type { i32, i32, i32, i32, ptr }

@__const.ilu_zpivotL.one = private unnamed_addr constant %struct.doublecomplex { double 1.000000e+00, double 0.000000e+00 }, align 8
@.str = private unnamed_addr constant [26 x i8] c"%s at line %d in file %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"[0]: matrix is singular\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"../scipy/sparse/linalg/_dsolve/SuperLU/SRC/ilu_zpivotL.c\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"[1]: matrix is singular\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ilu_zpivotL(i32 noundef %jcol, double noundef %u, ptr noundef %usepr, ptr noundef %perm_r, i32 noundef %diagind, ptr noundef %swap, ptr noundef %iswap, ptr noundef %marker, ptr noundef %pivrow, double noundef %fill_tol, i32 noundef %milu, double %drop_sum.coerce0, double %drop_sum.coerce1, ptr noundef %Glu, ptr noundef %stat) #0 {
entry:
  %drop_sum = alloca %struct.doublecomplex, align 8
  %jcol.addr = alloca i32, align 4
  %u.addr = alloca double, align 8
  %usepr.addr = alloca ptr, align 8
  %perm_r.addr = alloca ptr, align 8
  %diagind.addr = alloca i32, align 4
  %swap.addr = alloca ptr, align 8
  %iswap.addr = alloca ptr, align 8
  %marker.addr = alloca ptr, align 8
  %pivrow.addr = alloca ptr, align 8
  %fill_tol.addr = alloca double, align 8
  %milu.addr = alloca i32, align 4
  %Glu.addr = alloca ptr, align 8
  %stat.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %fsupc = alloca i32, align 4
  %nsupc = alloca i32, align 4
  %nsupr = alloca i32, align 4
  %lptr = alloca i32, align 4
  %pivptr = alloca i32, align 4
  %old_pivptr = alloca i32, align 4
  %diag = alloca i32, align 4
  %ptr0 = alloca i32, align 4
  %pivmax = alloca double, align 8
  %rtemp = alloca double, align 8
  %thresh = alloca double, align 8
  %temp = alloca %struct.doublecomplex, align 8
  %lu_sup_ptr = alloca ptr, align 8
  %lu_col_ptr = alloca ptr, align 8
  %lsub_ptr = alloca ptr, align 8
  %isub = alloca i32, align 4
  %icol = alloca i32, align 4
  %k = alloca i32, align 4
  %itemp = alloca i32, align 4
  %lsub = alloca ptr, align 8
  %xlsub = alloca ptr, align 8
  %lusup = alloca ptr, align 8
  %xlusup = alloca ptr, align 8
  %ops = alloca ptr, align 8
  %info = alloca i32, align 4
  %one = alloca %struct.doublecomplex, align 8
  %msg = alloca [256 x i8], align 16
  %msg100 = alloca [256 x i8], align 16
  %tmp = alloca %struct.doublecomplex, align 8
  %cr = alloca double, align 8
  %ci = alloca double, align 8
  %t1 = alloca i32, align 4
  %t2 = alloca i32, align 4
  %t = alloca i32, align 4
  %cr328 = alloca double, align 8
  %ci329 = alloca double, align 8
  %0 = getelementptr inbounds { double, double }, ptr %drop_sum, i32 0, i32 0
  store double %drop_sum.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { double, double }, ptr %drop_sum, i32 0, i32 1
  store double %drop_sum.coerce1, ptr %1, align 8
  store i32 %jcol, ptr %jcol.addr, align 4, !tbaa !4
  store double %u, ptr %u.addr, align 8, !tbaa !8
  store ptr %usepr, ptr %usepr.addr, align 8, !tbaa !10
  store ptr %perm_r, ptr %perm_r.addr, align 8, !tbaa !10
  store i32 %diagind, ptr %diagind.addr, align 4, !tbaa !4
  store ptr %swap, ptr %swap.addr, align 8, !tbaa !10
  store ptr %iswap, ptr %iswap.addr, align 8, !tbaa !10
  store ptr %marker, ptr %marker.addr, align 8, !tbaa !10
  store ptr %pivrow, ptr %pivrow.addr, align 8, !tbaa !10
  store double %fill_tol, ptr %fill_tol.addr, align 8, !tbaa !8
  store i32 %milu, ptr %milu.addr, align 4, !tbaa !12
  store ptr %Glu, ptr %Glu.addr, align 8, !tbaa !10
  store ptr %stat, ptr %stat.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %fsupc) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %nsupc) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %nsupr) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %lptr) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %pivptr) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %old_pivptr) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %diag) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %ptr0) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %pivmax) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtemp) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %thresh) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr %temp) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %lu_sup_ptr) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %lu_col_ptr) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %lsub_ptr) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %isub) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %icol) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %itemp) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %lsub) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %xlsub) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %lusup) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %xlusup) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #6
  %2 = load ptr, ptr %stat.addr, align 8, !tbaa !10
  %ops1 = getelementptr inbounds %struct.SuperLUStat_t, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %ops1, align 8, !tbaa !13
  store ptr %3, ptr %ops, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %info) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr %one) #6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %one, ptr align 8 @__const.ilu_zpivotL.one, i64 16, i1 false)
  %4 = load ptr, ptr %Glu.addr, align 8, !tbaa !10
  %n2 = getelementptr inbounds %struct.GlobalLU_t, ptr %4, i32 0, i32 12
  %5 = load i32, ptr %n2, align 4, !tbaa !15
  store i32 %5, ptr %n, align 4, !tbaa !4
  %6 = load ptr, ptr %Glu.addr, align 8, !tbaa !10
  %lsub3 = getelementptr inbounds %struct.GlobalLU_t, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %lsub3, align 8, !tbaa !18
  store ptr %7, ptr %lsub, align 8, !tbaa !10
  %8 = load ptr, ptr %Glu.addr, align 8, !tbaa !10
  %xlsub4 = getelementptr inbounds %struct.GlobalLU_t, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %xlsub4, align 8, !tbaa !19
  store ptr %9, ptr %xlsub, align 8, !tbaa !10
  %10 = load ptr, ptr %Glu.addr, align 8, !tbaa !10
  %lusup5 = getelementptr inbounds %struct.GlobalLU_t, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %lusup5, align 8, !tbaa !20
  store ptr %11, ptr %lusup, align 8, !tbaa !10
  %12 = load ptr, ptr %Glu.addr, align 8, !tbaa !10
  %xlusup6 = getelementptr inbounds %struct.GlobalLU_t, ptr %12, i32 0, i32 5
  %13 = load ptr, ptr %xlusup6, align 8, !tbaa !21
  store ptr %13, ptr %xlusup, align 8, !tbaa !10
  %14 = load ptr, ptr %Glu.addr, align 8, !tbaa !10
  %xsup = getelementptr inbounds %struct.GlobalLU_t, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %xsup, align 8, !tbaa !22
  %16 = load ptr, ptr %Glu.addr, align 8, !tbaa !10
  %supno = getelementptr inbounds %struct.GlobalLU_t, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %supno, align 8, !tbaa !23
  %18 = load i32, ptr %jcol.addr, align 4, !tbaa !4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds i32, ptr %17, i64 %idxprom
  %19 = load i32, ptr %arrayidx, align 4, !tbaa !4
  %idxprom7 = sext i32 %19 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %15, i64 %idxprom7
  %20 = load i32, ptr %arrayidx8, align 4, !tbaa !4
  store i32 %20, ptr %fsupc, align 4, !tbaa !4
  %21 = load i32, ptr %jcol.addr, align 4, !tbaa !4
  %22 = load i32, ptr %fsupc, align 4, !tbaa !4
  %sub = sub nsw i32 %21, %22
  store i32 %sub, ptr %nsupc, align 4, !tbaa !4
  %23 = load ptr, ptr %xlsub, align 8, !tbaa !10
  %24 = load i32, ptr %fsupc, align 4, !tbaa !4
  %idxprom9 = sext i32 %24 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %23, i64 %idxprom9
  %25 = load i32, ptr %arrayidx10, align 4, !tbaa !4
  store i32 %25, ptr %lptr, align 4, !tbaa !4
  %26 = load ptr, ptr %xlsub, align 8, !tbaa !10
  %27 = load i32, ptr %fsupc, align 4, !tbaa !4
  %add = add nsw i32 %27, 1
  %idxprom11 = sext i32 %add to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %26, i64 %idxprom11
  %28 = load i32, ptr %arrayidx12, align 4, !tbaa !4
  %29 = load i32, ptr %lptr, align 4, !tbaa !4
  %sub13 = sub nsw i32 %28, %29
  store i32 %sub13, ptr %nsupr, align 4, !tbaa !4
  %30 = load ptr, ptr %lusup, align 8, !tbaa !10
  %31 = load ptr, ptr %xlusup, align 8, !tbaa !10
  %32 = load i32, ptr %fsupc, align 4, !tbaa !4
  %idxprom14 = sext i32 %32 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %31, i64 %idxprom14
  %33 = load i32, ptr %arrayidx15, align 4, !tbaa !4
  %idxprom16 = sext i32 %33 to i64
  %arrayidx17 = getelementptr inbounds %struct.doublecomplex, ptr %30, i64 %idxprom16
  store ptr %arrayidx17, ptr %lu_sup_ptr, align 8, !tbaa !10
  %34 = load ptr, ptr %lusup, align 8, !tbaa !10
  %35 = load ptr, ptr %xlusup, align 8, !tbaa !10
  %36 = load i32, ptr %jcol.addr, align 4, !tbaa !4
  %idxprom18 = sext i32 %36 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %35, i64 %idxprom18
  %37 = load i32, ptr %arrayidx19, align 4, !tbaa !4
  %idxprom20 = sext i32 %37 to i64
  %arrayidx21 = getelementptr inbounds %struct.doublecomplex, ptr %34, i64 %idxprom20
  store ptr %arrayidx21, ptr %lu_col_ptr, align 8, !tbaa !10
  %38 = load ptr, ptr %lsub, align 8, !tbaa !10
  %39 = load i32, ptr %lptr, align 4, !tbaa !4
  %idxprom22 = sext i32 %39 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %38, i64 %idxprom22
  store ptr %arrayidx23, ptr %lsub_ptr, align 8, !tbaa !10
  store double -1.000000e+00, ptr %pivmax, align 8, !tbaa !8
  %40 = load i32, ptr %nsupc, align 4, !tbaa !4
  store i32 %40, ptr %pivptr, align 4, !tbaa !4
  store i32 -1, ptr %diag, align 4, !tbaa !4
  %41 = load i32, ptr %nsupc, align 4, !tbaa !4
  store i32 %41, ptr %old_pivptr, align 4, !tbaa !4
  store i32 -1, ptr %ptr0, align 4, !tbaa !4
  %42 = load i32, ptr %nsupc, align 4, !tbaa !4
  store i32 %42, ptr %isub, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %43 = load i32, ptr %isub, align 4, !tbaa !4
  %44 = load i32, ptr %nsupr, align 4, !tbaa !4
  %cmp = icmp slt i32 %43, %44
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load ptr, ptr %marker.addr, align 8, !tbaa !10
  %46 = load ptr, ptr %lsub_ptr, align 8, !tbaa !10
  %47 = load i32, ptr %isub, align 4, !tbaa !4
  %idxprom24 = sext i32 %47 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %46, i64 %idxprom24
  %48 = load i32, ptr %arrayidx25, align 4, !tbaa !4
  %idxprom26 = sext i32 %48 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %45, i64 %idxprom26
  %49 = load i32, ptr %arrayidx27, align 4, !tbaa !4
  %50 = load i32, ptr %jcol.addr, align 4, !tbaa !4
  %cmp28 = icmp sgt i32 %49, %50
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %51 = load i32, ptr %milu.addr, align 4, !tbaa !12
  switch i32 %51, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb39
    i32 3, label %sw.bb39
    i32 0, label %sw.bb43
  ]

sw.bb:                                            ; preds = %if.end
  %52 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %53 = load i32, ptr %isub, align 4, !tbaa !4
  %idxprom29 = sext i32 %53 to i64
  %arrayidx30 = getelementptr inbounds %struct.doublecomplex, ptr %52, i64 %idxprom29
  %r = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx30, i32 0, i32 0
  %54 = load double, ptr %r, align 8, !tbaa !24
  %r31 = getelementptr inbounds %struct.doublecomplex, ptr %drop_sum, i32 0, i32 0
  %55 = load double, ptr %r31, align 8, !tbaa !24
  %add32 = fadd double %54, %55
  %r33 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 0
  store double %add32, ptr %r33, align 8, !tbaa !24
  %56 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %57 = load i32, ptr %isub, align 4, !tbaa !4
  %idxprom34 = sext i32 %57 to i64
  %arrayidx35 = getelementptr inbounds %struct.doublecomplex, ptr %56, i64 %idxprom34
  %i = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx35, i32 0, i32 1
  %58 = load double, ptr %i, align 8, !tbaa !26
  %i36 = getelementptr inbounds %struct.doublecomplex, ptr %drop_sum, i32 0, i32 1
  %59 = load double, ptr %i36, align 8, !tbaa !26
  %add37 = fadd double %58, %59
  %i38 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 1
  store double %add37, ptr %i38, align 8, !tbaa !26
  %call = call double @z_abs1(ptr noundef %temp)
  store double %call, ptr %rtemp, align 8, !tbaa !8
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end, %if.end
  %60 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %61 = load i32, ptr %isub, align 4, !tbaa !4
  %idxprom40 = sext i32 %61 to i64
  %arrayidx41 = getelementptr inbounds %struct.doublecomplex, ptr %60, i64 %idxprom40
  %call42 = call double @z_abs1(ptr noundef %arrayidx41)
  store double %call42, ptr %rtemp, align 8, !tbaa !8
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end
  br label %sw.default

sw.default:                                       ; preds = %if.end, %sw.bb43
  %62 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %63 = load i32, ptr %isub, align 4, !tbaa !4
  %idxprom44 = sext i32 %63 to i64
  %arrayidx45 = getelementptr inbounds %struct.doublecomplex, ptr %62, i64 %idxprom44
  %call46 = call double @z_abs1(ptr noundef %arrayidx45)
  store double %call46, ptr %rtemp, align 8, !tbaa !8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb39, %sw.bb
  %64 = load double, ptr %rtemp, align 8, !tbaa !8
  %65 = load double, ptr %pivmax, align 8, !tbaa !8
  %cmp47 = fcmp ogt double %64, %65
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %sw.epilog
  %66 = load double, ptr %rtemp, align 8, !tbaa !8
  store double %66, ptr %pivmax, align 8, !tbaa !8
  %67 = load i32, ptr %isub, align 4, !tbaa !4
  store i32 %67, ptr %pivptr, align 4, !tbaa !4
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %sw.epilog
  %68 = load ptr, ptr %usepr.addr, align 8, !tbaa !10
  %69 = load i32, ptr %68, align 4, !tbaa !4
  %tobool = icmp ne i32 %69, 0
  br i1 %tobool, label %land.lhs.true, label %if.end54

land.lhs.true:                                    ; preds = %if.end49
  %70 = load ptr, ptr %lsub_ptr, align 8, !tbaa !10
  %71 = load i32, ptr %isub, align 4, !tbaa !4
  %idxprom50 = sext i32 %71 to i64
  %arrayidx51 = getelementptr inbounds i32, ptr %70, i64 %idxprom50
  %72 = load i32, ptr %arrayidx51, align 4, !tbaa !4
  %73 = load ptr, ptr %pivrow.addr, align 8, !tbaa !10
  %74 = load i32, ptr %73, align 4, !tbaa !4
  %cmp52 = icmp eq i32 %72, %74
  br i1 %cmp52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %land.lhs.true
  %75 = load i32, ptr %isub, align 4, !tbaa !4
  store i32 %75, ptr %old_pivptr, align 4, !tbaa !4
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %land.lhs.true, %if.end49
  %76 = load ptr, ptr %lsub_ptr, align 8, !tbaa !10
  %77 = load i32, ptr %isub, align 4, !tbaa !4
  %idxprom55 = sext i32 %77 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %76, i64 %idxprom55
  %78 = load i32, ptr %arrayidx56, align 4, !tbaa !4
  %79 = load i32, ptr %diagind.addr, align 4, !tbaa !4
  %cmp57 = icmp eq i32 %78, %79
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end54
  %80 = load i32, ptr %isub, align 4, !tbaa !4
  store i32 %80, ptr %diag, align 4, !tbaa !4
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end54
  %81 = load i32, ptr %ptr0, align 4, !tbaa !4
  %cmp60 = icmp eq i32 %81, -1
  br i1 %cmp60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end59
  %82 = load i32, ptr %isub, align 4, !tbaa !4
  store i32 %82, ptr %ptr0, align 4, !tbaa !4
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end59
  br label %for.inc

for.inc:                                          ; preds = %if.end62, %if.then
  %83 = load i32, ptr %isub, align 4, !tbaa !4
  %inc = add nsw i32 %83, 1
  store i32 %inc, ptr %isub, align 4, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %84 = load i32, ptr %milu.addr, align 4, !tbaa !12
  %cmp63 = icmp eq i32 %84, 2
  br i1 %cmp63, label %if.then65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %85 = load i32, ptr %milu.addr, align 4, !tbaa !12
  %cmp64 = icmp eq i32 %85, 3
  br i1 %cmp64, label %if.then65, label %if.end68

if.then65:                                        ; preds = %lor.lhs.false, %for.end
  %r66 = getelementptr inbounds %struct.doublecomplex, ptr %drop_sum, i32 0, i32 0
  %86 = load double, ptr %r66, align 8, !tbaa !24
  %87 = load double, ptr %pivmax, align 8, !tbaa !8
  %add67 = fadd double %87, %86
  store double %add67, ptr %pivmax, align 8, !tbaa !8
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %lor.lhs.false
  %88 = load double, ptr %pivmax, align 8, !tbaa !8
  %cmp69 = fcmp olt double %88, 0.000000e+00
  br i1 %cmp69, label %if.then70, label %if.end73

if.then70:                                        ; preds = %if.end68
  call void @llvm.lifetime.start.p0(i64 256, ptr %msg) #6
  %arraydecay = getelementptr inbounds [256 x i8], ptr %msg, i64 0, i64 0
  %call71 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 150, ptr noundef @.str.2) #6
  %arraydecay72 = getelementptr inbounds [256 x i8], ptr %msg, i64 0, i64 0
  call void @superlu_python_module_abort(ptr noundef %arraydecay72)
  call void @llvm.lifetime.end.p0(i64 256, ptr %msg) #6
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.end68
  %89 = load double, ptr %pivmax, align 8, !tbaa !8
  %cmp74 = fcmp oeq double %89, 0.000000e+00
  br i1 %cmp74, label %if.then75, label %if.else127

if.then75:                                        ; preds = %if.end73
  %90 = load i32, ptr %diag, align 4, !tbaa !4
  %cmp76 = icmp ne i32 %90, -1
  br i1 %cmp76, label %if.then77, label %if.else

if.then77:                                        ; preds = %if.then75
  %91 = load ptr, ptr %lsub_ptr, align 8, !tbaa !10
  %92 = load i32, ptr %diag, align 4, !tbaa !4
  store i32 %92, ptr %pivptr, align 4, !tbaa !4
  %idxprom78 = sext i32 %92 to i64
  %arrayidx79 = getelementptr inbounds i32, ptr %91, i64 %idxprom78
  %93 = load i32, ptr %arrayidx79, align 4, !tbaa !4
  %94 = load ptr, ptr %pivrow.addr, align 8, !tbaa !10
  store i32 %93, ptr %94, align 4, !tbaa !4
  br label %if.end119

if.else:                                          ; preds = %if.then75
  %95 = load i32, ptr %ptr0, align 4, !tbaa !4
  %cmp80 = icmp ne i32 %95, -1
  br i1 %cmp80, label %if.then81, label %if.else84

if.then81:                                        ; preds = %if.else
  %96 = load ptr, ptr %lsub_ptr, align 8, !tbaa !10
  %97 = load i32, ptr %ptr0, align 4, !tbaa !4
  store i32 %97, ptr %pivptr, align 4, !tbaa !4
  %idxprom82 = sext i32 %97 to i64
  %arrayidx83 = getelementptr inbounds i32, ptr %96, i64 %idxprom82
  %98 = load i32, ptr %arrayidx83, align 4, !tbaa !4
  %99 = load ptr, ptr %pivrow.addr, align 8, !tbaa !10
  store i32 %98, ptr %99, align 4, !tbaa !4
  br label %if.end118

if.else84:                                        ; preds = %if.else
  %100 = load i32, ptr %jcol.addr, align 4, !tbaa !4
  store i32 %100, ptr %icol, align 4, !tbaa !4
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc95, %if.else84
  %101 = load i32, ptr %icol, align 4, !tbaa !4
  %102 = load i32, ptr %n, align 4, !tbaa !4
  %cmp86 = icmp slt i32 %101, %102
  br i1 %cmp86, label %for.body87, label %for.end97

for.body87:                                       ; preds = %for.cond85
  %103 = load ptr, ptr %marker.addr, align 8, !tbaa !10
  %104 = load ptr, ptr %swap.addr, align 8, !tbaa !10
  %105 = load i32, ptr %icol, align 4, !tbaa !4
  %idxprom88 = sext i32 %105 to i64
  %arrayidx89 = getelementptr inbounds i32, ptr %104, i64 %idxprom88
  %106 = load i32, ptr %arrayidx89, align 4, !tbaa !4
  %idxprom90 = sext i32 %106 to i64
  %arrayidx91 = getelementptr inbounds i32, ptr %103, i64 %idxprom90
  %107 = load i32, ptr %arrayidx91, align 4, !tbaa !4
  %108 = load i32, ptr %jcol.addr, align 4, !tbaa !4
  %cmp92 = icmp sle i32 %107, %108
  br i1 %cmp92, label %if.then93, label %if.end94

if.then93:                                        ; preds = %for.body87
  br label %for.end97

if.end94:                                         ; preds = %for.body87
  br label %for.inc95

for.inc95:                                        ; preds = %if.end94
  %109 = load i32, ptr %icol, align 4, !tbaa !4
  %inc96 = add nsw i32 %109, 1
  store i32 %inc96, ptr %icol, align 4, !tbaa !4
  br label %for.cond85

for.end97:                                        ; preds = %if.then93, %for.cond85
  %110 = load i32, ptr %icol, align 4, !tbaa !4
  %111 = load i32, ptr %n, align 4, !tbaa !4
  %cmp98 = icmp sge i32 %110, %111
  br i1 %cmp98, label %if.then99, label %if.end104

if.then99:                                        ; preds = %for.end97
  call void @llvm.lifetime.start.p0(i64 256, ptr %msg100) #6
  %arraydecay101 = getelementptr inbounds [256 x i8], ptr %msg100, i64 0, i64 0
  %call102 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay101, ptr noundef @.str, ptr noundef @.str.3, i32 noundef 169, ptr noundef @.str.2) #6
  %arraydecay103 = getelementptr inbounds [256 x i8], ptr %msg100, i64 0, i64 0
  call void @superlu_python_module_abort(ptr noundef %arraydecay103)
  call void @llvm.lifetime.end.p0(i64 256, ptr %msg100) #6
  br label %if.end104

if.end104:                                        ; preds = %if.then99, %for.end97
  %112 = load ptr, ptr %swap.addr, align 8, !tbaa !10
  %113 = load i32, ptr %icol, align 4, !tbaa !4
  %idxprom105 = sext i32 %113 to i64
  %arrayidx106 = getelementptr inbounds i32, ptr %112, i64 %idxprom105
  %114 = load i32, ptr %arrayidx106, align 4, !tbaa !4
  %115 = load ptr, ptr %pivrow.addr, align 8, !tbaa !10
  store i32 %114, ptr %115, align 4, !tbaa !4
  %116 = load i32, ptr %nsupc, align 4, !tbaa !4
  store i32 %116, ptr %isub, align 4, !tbaa !4
  br label %for.cond107

for.cond107:                                      ; preds = %for.inc115, %if.end104
  %117 = load i32, ptr %isub, align 4, !tbaa !4
  %118 = load i32, ptr %nsupr, align 4, !tbaa !4
  %cmp108 = icmp slt i32 %117, %118
  br i1 %cmp108, label %for.body109, label %for.end117

for.body109:                                      ; preds = %for.cond107
  %119 = load ptr, ptr %lsub_ptr, align 8, !tbaa !10
  %120 = load i32, ptr %isub, align 4, !tbaa !4
  %idxprom110 = sext i32 %120 to i64
  %arrayidx111 = getelementptr inbounds i32, ptr %119, i64 %idxprom110
  %121 = load i32, ptr %arrayidx111, align 4, !tbaa !4
  %122 = load ptr, ptr %pivrow.addr, align 8, !tbaa !10
  %123 = load i32, ptr %122, align 4, !tbaa !4
  %cmp112 = icmp eq i32 %121, %123
  br i1 %cmp112, label %if.then113, label %if.end114

if.then113:                                       ; preds = %for.body109
  %124 = load i32, ptr %isub, align 4, !tbaa !4
  store i32 %124, ptr %pivptr, align 4, !tbaa !4
  br label %for.end117

if.end114:                                        ; preds = %for.body109
  br label %for.inc115

for.inc115:                                       ; preds = %if.end114
  %125 = load i32, ptr %isub, align 4, !tbaa !4
  %inc116 = add nsw i32 %125, 1
  store i32 %inc116, ptr %isub, align 4, !tbaa !4
  br label %for.cond107

for.end117:                                       ; preds = %if.then113, %for.cond107
  br label %if.end118

if.end118:                                        ; preds = %for.end117, %if.then81
  br label %if.end119

if.end119:                                        ; preds = %if.end118, %if.then77
  %126 = load double, ptr %fill_tol.addr, align 8, !tbaa !8
  store double %126, ptr %pivmax, align 8, !tbaa !8
  %127 = load double, ptr %pivmax, align 8, !tbaa !8
  %128 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %129 = load i32, ptr %pivptr, align 4, !tbaa !4
  %idxprom120 = sext i32 %129 to i64
  %arrayidx121 = getelementptr inbounds %struct.doublecomplex, ptr %128, i64 %idxprom120
  %r122 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx121, i32 0, i32 0
  store double %127, ptr %r122, align 8, !tbaa !24
  %130 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %131 = load i32, ptr %pivptr, align 4, !tbaa !4
  %idxprom123 = sext i32 %131 to i64
  %arrayidx124 = getelementptr inbounds %struct.doublecomplex, ptr %130, i64 %idxprom123
  %i125 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx124, i32 0, i32 1
  store double 0.000000e+00, ptr %i125, align 8, !tbaa !26
  %132 = load ptr, ptr %usepr.addr, align 8, !tbaa !10
  store i32 0, ptr %132, align 4, !tbaa !4
  %133 = load i32, ptr %jcol.addr, align 4, !tbaa !4
  %add126 = add nsw i32 %133, 1
  store i32 %add126, ptr %info, align 4, !tbaa !4
  br label %if.end256

if.else127:                                       ; preds = %if.end73
  %134 = load double, ptr %u.addr, align 8, !tbaa !8
  %135 = load double, ptr %pivmax, align 8, !tbaa !8
  %mul = fmul double %134, %135
  store double %mul, ptr %thresh, align 8, !tbaa !8
  %136 = load ptr, ptr %usepr.addr, align 8, !tbaa !10
  %137 = load i32, ptr %136, align 4, !tbaa !4
  %tobool128 = icmp ne i32 %137, 0
  br i1 %tobool128, label %if.then129, label %if.end162

if.then129:                                       ; preds = %if.else127
  %138 = load i32, ptr %milu.addr, align 4, !tbaa !12
  switch i32 %138, label %sw.default151 [
    i32 1, label %sw.bb130
    i32 2, label %sw.bb144
    i32 3, label %sw.bb144
    i32 0, label %sw.bb150
  ]

sw.bb130:                                         ; preds = %if.then129
  %139 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %140 = load i32, ptr %old_pivptr, align 4, !tbaa !4
  %idxprom131 = sext i32 %140 to i64
  %arrayidx132 = getelementptr inbounds %struct.doublecomplex, ptr %139, i64 %idxprom131
  %r133 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx132, i32 0, i32 0
  %141 = load double, ptr %r133, align 8, !tbaa !24
  %r134 = getelementptr inbounds %struct.doublecomplex, ptr %drop_sum, i32 0, i32 0
  %142 = load double, ptr %r134, align 8, !tbaa !24
  %add135 = fadd double %141, %142
  %r136 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 0
  store double %add135, ptr %r136, align 8, !tbaa !24
  %143 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %144 = load i32, ptr %old_pivptr, align 4, !tbaa !4
  %idxprom137 = sext i32 %144 to i64
  %arrayidx138 = getelementptr inbounds %struct.doublecomplex, ptr %143, i64 %idxprom137
  %i139 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx138, i32 0, i32 1
  %145 = load double, ptr %i139, align 8, !tbaa !26
  %i140 = getelementptr inbounds %struct.doublecomplex, ptr %drop_sum, i32 0, i32 1
  %146 = load double, ptr %i140, align 8, !tbaa !26
  %add141 = fadd double %145, %146
  %i142 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 1
  store double %add141, ptr %i142, align 8, !tbaa !26
  %call143 = call double @z_abs1(ptr noundef %temp)
  store double %call143, ptr %rtemp, align 8, !tbaa !8
  br label %sw.epilog155

sw.bb144:                                         ; preds = %if.then129, %if.then129
  %147 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %148 = load i32, ptr %old_pivptr, align 4, !tbaa !4
  %idxprom145 = sext i32 %148 to i64
  %arrayidx146 = getelementptr inbounds %struct.doublecomplex, ptr %147, i64 %idxprom145
  %call147 = call double @z_abs1(ptr noundef %arrayidx146)
  %r148 = getelementptr inbounds %struct.doublecomplex, ptr %drop_sum, i32 0, i32 0
  %149 = load double, ptr %r148, align 8, !tbaa !24
  %add149 = fadd double %call147, %149
  store double %add149, ptr %rtemp, align 8, !tbaa !8
  br label %sw.epilog155

sw.bb150:                                         ; preds = %if.then129
  br label %sw.default151

sw.default151:                                    ; preds = %if.then129, %sw.bb150
  %150 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %151 = load i32, ptr %old_pivptr, align 4, !tbaa !4
  %idxprom152 = sext i32 %151 to i64
  %arrayidx153 = getelementptr inbounds %struct.doublecomplex, ptr %150, i64 %idxprom152
  %call154 = call double @z_abs1(ptr noundef %arrayidx153)
  store double %call154, ptr %rtemp, align 8, !tbaa !8
  br label %sw.epilog155

sw.epilog155:                                     ; preds = %sw.default151, %sw.bb144, %sw.bb130
  %152 = load double, ptr %rtemp, align 8, !tbaa !8
  %cmp156 = fcmp une double %152, 0.000000e+00
  br i1 %cmp156, label %land.lhs.true157, label %if.else160

land.lhs.true157:                                 ; preds = %sw.epilog155
  %153 = load double, ptr %rtemp, align 8, !tbaa !8
  %154 = load double, ptr %thresh, align 8, !tbaa !8
  %cmp158 = fcmp oge double %153, %154
  br i1 %cmp158, label %if.then159, label %if.else160

if.then159:                                       ; preds = %land.lhs.true157
  %155 = load i32, ptr %old_pivptr, align 4, !tbaa !4
  store i32 %155, ptr %pivptr, align 4, !tbaa !4
  br label %if.end161

if.else160:                                       ; preds = %land.lhs.true157, %sw.epilog155
  %156 = load ptr, ptr %usepr.addr, align 8, !tbaa !10
  store i32 0, ptr %156, align 4, !tbaa !4
  br label %if.end161

if.end161:                                        ; preds = %if.else160, %if.then159
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %if.else127
  %157 = load ptr, ptr %usepr.addr, align 8, !tbaa !10
  %158 = load i32, ptr %157, align 4, !tbaa !4
  %cmp163 = icmp eq i32 %158, 0
  br i1 %cmp163, label %if.then164, label %if.end201

if.then164:                                       ; preds = %if.end162
  %159 = load i32, ptr %diag, align 4, !tbaa !4
  %cmp165 = icmp sge i32 %159, 0
  br i1 %cmp165, label %if.then166, label %if.end198

if.then166:                                       ; preds = %if.then164
  %160 = load i32, ptr %milu.addr, align 4, !tbaa !12
  switch i32 %160, label %sw.default188 [
    i32 1, label %sw.bb167
    i32 2, label %sw.bb181
    i32 3, label %sw.bb181
    i32 0, label %sw.bb187
  ]

sw.bb167:                                         ; preds = %if.then166
  %161 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %162 = load i32, ptr %diag, align 4, !tbaa !4
  %idxprom168 = sext i32 %162 to i64
  %arrayidx169 = getelementptr inbounds %struct.doublecomplex, ptr %161, i64 %idxprom168
  %r170 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx169, i32 0, i32 0
  %163 = load double, ptr %r170, align 8, !tbaa !24
  %r171 = getelementptr inbounds %struct.doublecomplex, ptr %drop_sum, i32 0, i32 0
  %164 = load double, ptr %r171, align 8, !tbaa !24
  %add172 = fadd double %163, %164
  %r173 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 0
  store double %add172, ptr %r173, align 8, !tbaa !24
  %165 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %166 = load i32, ptr %diag, align 4, !tbaa !4
  %idxprom174 = sext i32 %166 to i64
  %arrayidx175 = getelementptr inbounds %struct.doublecomplex, ptr %165, i64 %idxprom174
  %i176 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx175, i32 0, i32 1
  %167 = load double, ptr %i176, align 8, !tbaa !26
  %i177 = getelementptr inbounds %struct.doublecomplex, ptr %drop_sum, i32 0, i32 1
  %168 = load double, ptr %i177, align 8, !tbaa !26
  %add178 = fadd double %167, %168
  %i179 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 1
  store double %add178, ptr %i179, align 8, !tbaa !26
  %call180 = call double @z_abs1(ptr noundef %temp)
  store double %call180, ptr %rtemp, align 8, !tbaa !8
  br label %sw.epilog192

sw.bb181:                                         ; preds = %if.then166, %if.then166
  %169 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %170 = load i32, ptr %diag, align 4, !tbaa !4
  %idxprom182 = sext i32 %170 to i64
  %arrayidx183 = getelementptr inbounds %struct.doublecomplex, ptr %169, i64 %idxprom182
  %call184 = call double @z_abs1(ptr noundef %arrayidx183)
  %r185 = getelementptr inbounds %struct.doublecomplex, ptr %drop_sum, i32 0, i32 0
  %171 = load double, ptr %r185, align 8, !tbaa !24
  %add186 = fadd double %call184, %171
  store double %add186, ptr %rtemp, align 8, !tbaa !8
  br label %sw.epilog192

sw.bb187:                                         ; preds = %if.then166
  br label %sw.default188

sw.default188:                                    ; preds = %if.then166, %sw.bb187
  %172 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %173 = load i32, ptr %diag, align 4, !tbaa !4
  %idxprom189 = sext i32 %173 to i64
  %arrayidx190 = getelementptr inbounds %struct.doublecomplex, ptr %172, i64 %idxprom189
  %call191 = call double @z_abs1(ptr noundef %arrayidx190)
  store double %call191, ptr %rtemp, align 8, !tbaa !8
  br label %sw.epilog192

sw.epilog192:                                     ; preds = %sw.default188, %sw.bb181, %sw.bb167
  %174 = load double, ptr %rtemp, align 8, !tbaa !8
  %cmp193 = fcmp une double %174, 0.000000e+00
  br i1 %cmp193, label %land.lhs.true194, label %if.end197

land.lhs.true194:                                 ; preds = %sw.epilog192
  %175 = load double, ptr %rtemp, align 8, !tbaa !8
  %176 = load double, ptr %thresh, align 8, !tbaa !8
  %cmp195 = fcmp oge double %175, %176
  br i1 %cmp195, label %if.then196, label %if.end197

if.then196:                                       ; preds = %land.lhs.true194
  %177 = load i32, ptr %diag, align 4, !tbaa !4
  store i32 %177, ptr %pivptr, align 4, !tbaa !4
  br label %if.end197

if.end197:                                        ; preds = %if.then196, %land.lhs.true194, %sw.epilog192
  br label %if.end198

if.end198:                                        ; preds = %if.end197, %if.then164
  %178 = load ptr, ptr %lsub_ptr, align 8, !tbaa !10
  %179 = load i32, ptr %pivptr, align 4, !tbaa !4
  %idxprom199 = sext i32 %179 to i64
  %arrayidx200 = getelementptr inbounds i32, ptr %178, i64 %idxprom199
  %180 = load i32, ptr %arrayidx200, align 4, !tbaa !4
  %181 = load ptr, ptr %pivrow.addr, align 8, !tbaa !10
  store i32 %180, ptr %181, align 4, !tbaa !4
  br label %if.end201

if.end201:                                        ; preds = %if.end198, %if.end162
  store i32 0, ptr %info, align 4, !tbaa !4
  %182 = load i32, ptr %milu.addr, align 4, !tbaa !12
  switch i32 %182, label %sw.default254 [
    i32 1, label %sw.bb202
    i32 2, label %sw.bb219
    i32 3, label %sw.bb219
    i32 0, label %sw.bb253
  ]

sw.bb202:                                         ; preds = %if.end201
  %183 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %184 = load i32, ptr %pivptr, align 4, !tbaa !4
  %idxprom203 = sext i32 %184 to i64
  %arrayidx204 = getelementptr inbounds %struct.doublecomplex, ptr %183, i64 %idxprom203
  %r205 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx204, i32 0, i32 0
  %185 = load double, ptr %r205, align 8, !tbaa !24
  %r206 = getelementptr inbounds %struct.doublecomplex, ptr %drop_sum, i32 0, i32 0
  %186 = load double, ptr %r206, align 8, !tbaa !24
  %add207 = fadd double %185, %186
  %187 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %188 = load i32, ptr %pivptr, align 4, !tbaa !4
  %idxprom208 = sext i32 %188 to i64
  %arrayidx209 = getelementptr inbounds %struct.doublecomplex, ptr %187, i64 %idxprom208
  %r210 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx209, i32 0, i32 0
  store double %add207, ptr %r210, align 8, !tbaa !24
  %189 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %190 = load i32, ptr %pivptr, align 4, !tbaa !4
  %idxprom211 = sext i32 %190 to i64
  %arrayidx212 = getelementptr inbounds %struct.doublecomplex, ptr %189, i64 %idxprom211
  %i213 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx212, i32 0, i32 1
  %191 = load double, ptr %i213, align 8, !tbaa !26
  %i214 = getelementptr inbounds %struct.doublecomplex, ptr %drop_sum, i32 0, i32 1
  %192 = load double, ptr %i214, align 8, !tbaa !26
  %add215 = fadd double %191, %192
  %193 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %194 = load i32, ptr %pivptr, align 4, !tbaa !4
  %idxprom216 = sext i32 %194 to i64
  %arrayidx217 = getelementptr inbounds %struct.doublecomplex, ptr %193, i64 %idxprom216
  %i218 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx217, i32 0, i32 1
  store double %add215, ptr %i218, align 8, !tbaa !26
  br label %sw.epilog255

sw.bb219:                                         ; preds = %if.end201, %if.end201
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #6
  %195 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %196 = load i32, ptr %pivptr, align 4, !tbaa !4
  %idxprom220 = sext i32 %196 to i64
  %arrayidx221 = getelementptr inbounds %struct.doublecomplex, ptr %195, i64 %idxprom220
  %call222 = call { double, double } @z_sgn(ptr noundef %arrayidx221)
  %197 = getelementptr inbounds { double, double }, ptr %tmp, i32 0, i32 0
  %198 = extractvalue { double, double } %call222, 0
  store double %198, ptr %197, align 8
  %199 = getelementptr inbounds { double, double }, ptr %tmp, i32 0, i32 1
  %200 = extractvalue { double, double } %call222, 1
  store double %200, ptr %199, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %temp, ptr align 8 %tmp, i64 16, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %cr) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ci) #6
  %r223 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 0
  %201 = load double, ptr %r223, align 8, !tbaa !24
  %r224 = getelementptr inbounds %struct.doublecomplex, ptr %drop_sum, i32 0, i32 0
  %202 = load double, ptr %r224, align 8, !tbaa !24
  %i226 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 1
  %203 = load double, ptr %i226, align 8, !tbaa !26
  %i227 = getelementptr inbounds %struct.doublecomplex, ptr %drop_sum, i32 0, i32 1
  %204 = load double, ptr %i227, align 8, !tbaa !26
  %mul228 = fmul double %203, %204
  %neg = fneg double %mul228
  %205 = call double @llvm.fmuladd.f64(double %201, double %202, double %neg)
  store double %205, ptr %cr, align 8, !tbaa !8
  %i229 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 1
  %206 = load double, ptr %i229, align 8, !tbaa !26
  %r230 = getelementptr inbounds %struct.doublecomplex, ptr %drop_sum, i32 0, i32 0
  %207 = load double, ptr %r230, align 8, !tbaa !24
  %r232 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 0
  %208 = load double, ptr %r232, align 8, !tbaa !24
  %i233 = getelementptr inbounds %struct.doublecomplex, ptr %drop_sum, i32 0, i32 1
  %209 = load double, ptr %i233, align 8, !tbaa !26
  %mul234 = fmul double %208, %209
  %210 = call double @llvm.fmuladd.f64(double %206, double %207, double %mul234)
  store double %210, ptr %ci, align 8, !tbaa !8
  %211 = load double, ptr %cr, align 8, !tbaa !8
  %r235 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 0
  store double %211, ptr %r235, align 8, !tbaa !24
  %212 = load double, ptr %ci, align 8, !tbaa !8
  %i236 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 1
  store double %212, ptr %i236, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(i64 8, ptr %ci) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %cr) #6
  %213 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %214 = load i32, ptr %pivptr, align 4, !tbaa !4
  %idxprom237 = sext i32 %214 to i64
  %arrayidx238 = getelementptr inbounds %struct.doublecomplex, ptr %213, i64 %idxprom237
  %r239 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx238, i32 0, i32 0
  %215 = load double, ptr %r239, align 8, !tbaa !24
  %r240 = getelementptr inbounds %struct.doublecomplex, ptr %drop_sum, i32 0, i32 0
  %216 = load double, ptr %r240, align 8, !tbaa !24
  %add241 = fadd double %215, %216
  %217 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %218 = load i32, ptr %pivptr, align 4, !tbaa !4
  %idxprom242 = sext i32 %218 to i64
  %arrayidx243 = getelementptr inbounds %struct.doublecomplex, ptr %217, i64 %idxprom242
  %r244 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx243, i32 0, i32 0
  store double %add241, ptr %r244, align 8, !tbaa !24
  %219 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %220 = load i32, ptr %pivptr, align 4, !tbaa !4
  %idxprom245 = sext i32 %220 to i64
  %arrayidx246 = getelementptr inbounds %struct.doublecomplex, ptr %219, i64 %idxprom245
  %i247 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx246, i32 0, i32 1
  %221 = load double, ptr %i247, align 8, !tbaa !26
  %i248 = getelementptr inbounds %struct.doublecomplex, ptr %drop_sum, i32 0, i32 1
  %222 = load double, ptr %i248, align 8, !tbaa !26
  %add249 = fadd double %221, %222
  %223 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %224 = load i32, ptr %pivptr, align 4, !tbaa !4
  %idxprom250 = sext i32 %224 to i64
  %arrayidx251 = getelementptr inbounds %struct.doublecomplex, ptr %223, i64 %idxprom250
  %i252 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx251, i32 0, i32 1
  store double %add249, ptr %i252, align 8, !tbaa !26
  br label %sw.epilog255

sw.bb253:                                         ; preds = %if.end201
  br label %sw.default254

sw.default254:                                    ; preds = %if.end201, %sw.bb253
  br label %sw.epilog255

sw.epilog255:                                     ; preds = %sw.default254, %sw.bb219, %sw.bb202
  br label %if.end256

if.end256:                                        ; preds = %sw.epilog255, %if.end119
  %225 = load i32, ptr %jcol.addr, align 4, !tbaa !4
  %226 = load ptr, ptr %perm_r.addr, align 8, !tbaa !10
  %227 = load ptr, ptr %pivrow.addr, align 8, !tbaa !10
  %228 = load i32, ptr %227, align 4, !tbaa !4
  %idxprom257 = sext i32 %228 to i64
  %arrayidx258 = getelementptr inbounds i32, ptr %226, i64 %idxprom257
  store i32 %225, ptr %arrayidx258, align 4, !tbaa !4
  %229 = load i32, ptr %jcol.addr, align 4, !tbaa !4
  %230 = load i32, ptr %n, align 4, !tbaa !4
  %sub259 = sub nsw i32 %230, 1
  %cmp260 = icmp slt i32 %229, %sub259
  br i1 %cmp260, label %if.then261, label %if.end285

if.then261:                                       ; preds = %if.end256
  call void @llvm.lifetime.start.p0(i64 4, ptr %t1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %t2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #6
  %231 = load ptr, ptr %iswap.addr, align 8, !tbaa !10
  %232 = load ptr, ptr %pivrow.addr, align 8, !tbaa !10
  %233 = load i32, ptr %232, align 4, !tbaa !4
  %idxprom262 = sext i32 %233 to i64
  %arrayidx263 = getelementptr inbounds i32, ptr %231, i64 %idxprom262
  %234 = load i32, ptr %arrayidx263, align 4, !tbaa !4
  store i32 %234, ptr %t1, align 4, !tbaa !4
  %235 = load i32, ptr %jcol.addr, align 4, !tbaa !4
  store i32 %235, ptr %t2, align 4, !tbaa !4
  %236 = load i32, ptr %t1, align 4, !tbaa !4
  %237 = load i32, ptr %t2, align 4, !tbaa !4
  %cmp264 = icmp ne i32 %236, %237
  br i1 %cmp264, label %if.then265, label %if.end284

if.then265:                                       ; preds = %if.then261
  %238 = load ptr, ptr %swap.addr, align 8, !tbaa !10
  %239 = load i32, ptr %t1, align 4, !tbaa !4
  %idxprom266 = sext i32 %239 to i64
  %arrayidx267 = getelementptr inbounds i32, ptr %238, i64 %idxprom266
  %240 = load i32, ptr %arrayidx267, align 4, !tbaa !4
  store i32 %240, ptr %t, align 4, !tbaa !4
  %241 = load ptr, ptr %swap.addr, align 8, !tbaa !10
  %242 = load i32, ptr %t2, align 4, !tbaa !4
  %idxprom268 = sext i32 %242 to i64
  %arrayidx269 = getelementptr inbounds i32, ptr %241, i64 %idxprom268
  %243 = load i32, ptr %arrayidx269, align 4, !tbaa !4
  %244 = load ptr, ptr %swap.addr, align 8, !tbaa !10
  %245 = load i32, ptr %t1, align 4, !tbaa !4
  %idxprom270 = sext i32 %245 to i64
  %arrayidx271 = getelementptr inbounds i32, ptr %244, i64 %idxprom270
  store i32 %243, ptr %arrayidx271, align 4, !tbaa !4
  %246 = load i32, ptr %t, align 4, !tbaa !4
  %247 = load ptr, ptr %swap.addr, align 8, !tbaa !10
  %248 = load i32, ptr %t2, align 4, !tbaa !4
  %idxprom272 = sext i32 %248 to i64
  %arrayidx273 = getelementptr inbounds i32, ptr %247, i64 %idxprom272
  store i32 %246, ptr %arrayidx273, align 4, !tbaa !4
  %249 = load ptr, ptr %swap.addr, align 8, !tbaa !10
  %250 = load i32, ptr %t1, align 4, !tbaa !4
  %idxprom274 = sext i32 %250 to i64
  %arrayidx275 = getelementptr inbounds i32, ptr %249, i64 %idxprom274
  %251 = load i32, ptr %arrayidx275, align 4, !tbaa !4
  store i32 %251, ptr %t1, align 4, !tbaa !4
  %252 = load i32, ptr %t, align 4, !tbaa !4
  store i32 %252, ptr %t2, align 4, !tbaa !4
  %253 = load ptr, ptr %iswap.addr, align 8, !tbaa !10
  %254 = load i32, ptr %t1, align 4, !tbaa !4
  %idxprom276 = sext i32 %254 to i64
  %arrayidx277 = getelementptr inbounds i32, ptr %253, i64 %idxprom276
  %255 = load i32, ptr %arrayidx277, align 4, !tbaa !4
  store i32 %255, ptr %t, align 4, !tbaa !4
  %256 = load ptr, ptr %iswap.addr, align 8, !tbaa !10
  %257 = load i32, ptr %t2, align 4, !tbaa !4
  %idxprom278 = sext i32 %257 to i64
  %arrayidx279 = getelementptr inbounds i32, ptr %256, i64 %idxprom278
  %258 = load i32, ptr %arrayidx279, align 4, !tbaa !4
  %259 = load ptr, ptr %iswap.addr, align 8, !tbaa !10
  %260 = load i32, ptr %t1, align 4, !tbaa !4
  %idxprom280 = sext i32 %260 to i64
  %arrayidx281 = getelementptr inbounds i32, ptr %259, i64 %idxprom280
  store i32 %258, ptr %arrayidx281, align 4, !tbaa !4
  %261 = load i32, ptr %t, align 4, !tbaa !4
  %262 = load ptr, ptr %iswap.addr, align 8, !tbaa !10
  %263 = load i32, ptr %t2, align 4, !tbaa !4
  %idxprom282 = sext i32 %263 to i64
  %arrayidx283 = getelementptr inbounds i32, ptr %262, i64 %idxprom282
  store i32 %261, ptr %arrayidx283, align 4, !tbaa !4
  br label %if.end284

if.end284:                                        ; preds = %if.then265, %if.then261
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %t2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %t1) #6
  br label %if.end285

if.end285:                                        ; preds = %if.end284, %if.end256
  %264 = load i32, ptr %pivptr, align 4, !tbaa !4
  %265 = load i32, ptr %nsupc, align 4, !tbaa !4
  %cmp286 = icmp ne i32 %264, %265
  br i1 %cmp286, label %if.then287, label %if.end316

if.then287:                                       ; preds = %if.end285
  %266 = load ptr, ptr %lsub_ptr, align 8, !tbaa !10
  %267 = load i32, ptr %pivptr, align 4, !tbaa !4
  %idxprom288 = sext i32 %267 to i64
  %arrayidx289 = getelementptr inbounds i32, ptr %266, i64 %idxprom288
  %268 = load i32, ptr %arrayidx289, align 4, !tbaa !4
  store i32 %268, ptr %itemp, align 4, !tbaa !4
  %269 = load ptr, ptr %lsub_ptr, align 8, !tbaa !10
  %270 = load i32, ptr %nsupc, align 4, !tbaa !4
  %idxprom290 = sext i32 %270 to i64
  %arrayidx291 = getelementptr inbounds i32, ptr %269, i64 %idxprom290
  %271 = load i32, ptr %arrayidx291, align 4, !tbaa !4
  %272 = load ptr, ptr %lsub_ptr, align 8, !tbaa !10
  %273 = load i32, ptr %pivptr, align 4, !tbaa !4
  %idxprom292 = sext i32 %273 to i64
  %arrayidx293 = getelementptr inbounds i32, ptr %272, i64 %idxprom292
  store i32 %271, ptr %arrayidx293, align 4, !tbaa !4
  %274 = load i32, ptr %itemp, align 4, !tbaa !4
  %275 = load ptr, ptr %lsub_ptr, align 8, !tbaa !10
  %276 = load i32, ptr %nsupc, align 4, !tbaa !4
  %idxprom294 = sext i32 %276 to i64
  %arrayidx295 = getelementptr inbounds i32, ptr %275, i64 %idxprom294
  store i32 %274, ptr %arrayidx295, align 4, !tbaa !4
  store i32 0, ptr %icol, align 4, !tbaa !4
  br label %for.cond296

for.cond296:                                      ; preds = %for.inc313, %if.then287
  %277 = load i32, ptr %icol, align 4, !tbaa !4
  %278 = load i32, ptr %nsupc, align 4, !tbaa !4
  %cmp297 = icmp sle i32 %277, %278
  br i1 %cmp297, label %for.body298, label %for.end315

for.body298:                                      ; preds = %for.cond296
  %279 = load i32, ptr %pivptr, align 4, !tbaa !4
  %280 = load i32, ptr %icol, align 4, !tbaa !4
  %281 = load i32, ptr %nsupr, align 4, !tbaa !4
  %mul299 = mul nsw i32 %280, %281
  %add300 = add nsw i32 %279, %mul299
  store i32 %add300, ptr %itemp, align 4, !tbaa !4
  %282 = load ptr, ptr %lu_sup_ptr, align 8, !tbaa !10
  %283 = load i32, ptr %itemp, align 4, !tbaa !4
  %idxprom301 = sext i32 %283 to i64
  %arrayidx302 = getelementptr inbounds %struct.doublecomplex, ptr %282, i64 %idxprom301
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %temp, ptr align 8 %arrayidx302, i64 16, i1 false), !tbaa.struct !27
  %284 = load ptr, ptr %lu_sup_ptr, align 8, !tbaa !10
  %285 = load i32, ptr %itemp, align 4, !tbaa !4
  %idxprom303 = sext i32 %285 to i64
  %arrayidx304 = getelementptr inbounds %struct.doublecomplex, ptr %284, i64 %idxprom303
  %286 = load ptr, ptr %lu_sup_ptr, align 8, !tbaa !10
  %287 = load i32, ptr %nsupc, align 4, !tbaa !4
  %288 = load i32, ptr %icol, align 4, !tbaa !4
  %289 = load i32, ptr %nsupr, align 4, !tbaa !4
  %mul305 = mul nsw i32 %288, %289
  %add306 = add nsw i32 %287, %mul305
  %idxprom307 = sext i32 %add306 to i64
  %arrayidx308 = getelementptr inbounds %struct.doublecomplex, ptr %286, i64 %idxprom307
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx304, ptr align 8 %arrayidx308, i64 16, i1 false), !tbaa.struct !27
  %290 = load ptr, ptr %lu_sup_ptr, align 8, !tbaa !10
  %291 = load i32, ptr %nsupc, align 4, !tbaa !4
  %292 = load i32, ptr %icol, align 4, !tbaa !4
  %293 = load i32, ptr %nsupr, align 4, !tbaa !4
  %mul309 = mul nsw i32 %292, %293
  %add310 = add nsw i32 %291, %mul309
  %idxprom311 = sext i32 %add310 to i64
  %arrayidx312 = getelementptr inbounds %struct.doublecomplex, ptr %290, i64 %idxprom311
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx312, ptr align 8 %temp, i64 16, i1 false), !tbaa.struct !27
  br label %for.inc313

for.inc313:                                       ; preds = %for.body298
  %294 = load i32, ptr %icol, align 4, !tbaa !4
  %inc314 = add nsw i32 %294, 1
  store i32 %inc314, ptr %icol, align 4, !tbaa !4
  br label %for.cond296

for.end315:                                       ; preds = %for.cond296
  br label %if.end316

if.end316:                                        ; preds = %for.end315, %if.end285
  %295 = load i32, ptr %nsupr, align 4, !tbaa !4
  %296 = load i32, ptr %nsupc, align 4, !tbaa !4
  %sub317 = sub nsw i32 %295, %296
  %mul318 = mul nsw i32 10, %sub317
  %conv = sitofp i32 %mul318 to float
  %297 = load ptr, ptr %ops, align 8, !tbaa !10
  %arrayidx319 = getelementptr inbounds float, ptr %297, i64 7
  %298 = load float, ptr %arrayidx319, align 4, !tbaa !28
  %add320 = fadd float %298, %conv
  store float %add320, ptr %arrayidx319, align 4, !tbaa !28
  %299 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %300 = load i32, ptr %nsupc, align 4, !tbaa !4
  %idxprom321 = sext i32 %300 to i64
  %arrayidx322 = getelementptr inbounds %struct.doublecomplex, ptr %299, i64 %idxprom321
  call void @z_div(ptr noundef %temp, ptr noundef %one, ptr noundef %arrayidx322)
  %301 = load i32, ptr %nsupc, align 4, !tbaa !4
  %add323 = add nsw i32 %301, 1
  store i32 %add323, ptr %k, align 4, !tbaa !4
  br label %for.cond324

for.cond324:                                      ; preds = %for.inc357, %if.end316
  %302 = load i32, ptr %k, align 4, !tbaa !4
  %303 = load i32, ptr %nsupr, align 4, !tbaa !4
  %cmp325 = icmp slt i32 %302, %303
  br i1 %cmp325, label %for.body327, label %for.end359

for.body327:                                      ; preds = %for.cond324
  call void @llvm.lifetime.start.p0(i64 8, ptr %cr328) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ci329) #6
  %304 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %305 = load i32, ptr %k, align 4, !tbaa !4
  %idxprom330 = sext i32 %305 to i64
  %arrayidx331 = getelementptr inbounds %struct.doublecomplex, ptr %304, i64 %idxprom330
  %r332 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx331, i32 0, i32 0
  %306 = load double, ptr %r332, align 8, !tbaa !24
  %r333 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 0
  %307 = load double, ptr %r333, align 8, !tbaa !24
  %308 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %309 = load i32, ptr %k, align 4, !tbaa !4
  %idxprom335 = sext i32 %309 to i64
  %arrayidx336 = getelementptr inbounds %struct.doublecomplex, ptr %308, i64 %idxprom335
  %i337 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx336, i32 0, i32 1
  %310 = load double, ptr %i337, align 8, !tbaa !26
  %i338 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 1
  %311 = load double, ptr %i338, align 8, !tbaa !26
  %mul339 = fmul double %310, %311
  %neg340 = fneg double %mul339
  %312 = call double @llvm.fmuladd.f64(double %306, double %307, double %neg340)
  store double %312, ptr %cr328, align 8, !tbaa !8
  %313 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %314 = load i32, ptr %k, align 4, !tbaa !4
  %idxprom341 = sext i32 %314 to i64
  %arrayidx342 = getelementptr inbounds %struct.doublecomplex, ptr %313, i64 %idxprom341
  %i343 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx342, i32 0, i32 1
  %315 = load double, ptr %i343, align 8, !tbaa !26
  %r344 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 0
  %316 = load double, ptr %r344, align 8, !tbaa !24
  %317 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %318 = load i32, ptr %k, align 4, !tbaa !4
  %idxprom346 = sext i32 %318 to i64
  %arrayidx347 = getelementptr inbounds %struct.doublecomplex, ptr %317, i64 %idxprom346
  %r348 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx347, i32 0, i32 0
  %319 = load double, ptr %r348, align 8, !tbaa !24
  %i349 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 1
  %320 = load double, ptr %i349, align 8, !tbaa !26
  %mul350 = fmul double %319, %320
  %321 = call double @llvm.fmuladd.f64(double %315, double %316, double %mul350)
  store double %321, ptr %ci329, align 8, !tbaa !8
  %322 = load double, ptr %cr328, align 8, !tbaa !8
  %323 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %324 = load i32, ptr %k, align 4, !tbaa !4
  %idxprom351 = sext i32 %324 to i64
  %arrayidx352 = getelementptr inbounds %struct.doublecomplex, ptr %323, i64 %idxprom351
  %r353 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx352, i32 0, i32 0
  store double %322, ptr %r353, align 8, !tbaa !24
  %325 = load double, ptr %ci329, align 8, !tbaa !8
  %326 = load ptr, ptr %lu_col_ptr, align 8, !tbaa !10
  %327 = load i32, ptr %k, align 4, !tbaa !4
  %idxprom354 = sext i32 %327 to i64
  %arrayidx355 = getelementptr inbounds %struct.doublecomplex, ptr %326, i64 %idxprom354
  %i356 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx355, i32 0, i32 1
  store double %325, ptr %i356, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(i64 8, ptr %ci329) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %cr328) #6
  br label %for.inc357

for.inc357:                                       ; preds = %for.body327
  %328 = load i32, ptr %k, align 4, !tbaa !4
  %inc358 = add nsw i32 %328, 1
  store i32 %inc358, ptr %k, align 4, !tbaa !4
  br label %for.cond324

for.end359:                                       ; preds = %for.cond324
  %329 = load i32, ptr %info, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 16, ptr %one) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %info) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %xlusup) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %lusup) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %xlsub) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %lsub) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %itemp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %icol) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %isub) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %lsub_ptr) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %lu_col_ptr) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %lu_sup_ptr) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %temp) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %thresh) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtemp) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %pivmax) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ptr0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %diag) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %old_pivptr) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %pivptr) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %lptr) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %nsupr) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %nsupc) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %fsupc) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6
  ret i32 %329
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare double @z_abs1(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #4

declare void @superlu_python_module_abort(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare { double, double } @z_sgn(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

declare void @z_div(ptr noundef, ptr noundef, ptr noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!14, !11, i64 16}
!14 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!15 = !{!16, !5, i64 84}
!16 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !6, i64 88, !5, i64 92, !11, i64 96, !17, i64 104}
!17 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !11, i64 16}
!18 = !{!16, !11, i64 16}
!19 = !{!16, !11, i64 24}
!20 = !{!16, !11, i64 32}
!21 = !{!16, !11, i64 40}
!22 = !{!16, !11, i64 0}
!23 = !{!16, !11, i64 8}
!24 = !{!25, !9, i64 0}
!25 = !{!"", !9, i64 0, !9, i64 8}
!26 = !{!25, !9, i64 8}
!27 = !{i64 0, i64 8, !8, i64 8, i64 8, !8}
!28 = !{!29, !29, i64 0}
!29 = !{!"float", !6, i64 0}
