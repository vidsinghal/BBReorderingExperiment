; ModuleID = 'samples/200.bc'
source_filename = "../Source/umf_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WorkType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [128 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, [64 x i64], [64 x i64], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.NumericType = type { double, double, double, double, double, double, double, double, double, double, double, i64, i64, ptr, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.Unit_union = type { %struct.anon }
%struct.anon = type { i64, i64 }
%struct.Element = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.Tuple = type { i64, i64 }
%struct.DoubleComplex = type { [2 x double] }

; Function Attrs: uwtable
define void @umfzl_assemble_fixq(ptr noundef %Numeric, ptr noundef %Work) #0 {
entry:
  %Numeric.addr = alloca ptr, align 8
  %Work.addr = alloca ptr, align 8
  %e = alloca i64, align 8
  %i = alloca i64, align 8
  %row = alloca i64, align 8
  %col = alloca i64, align 8
  %i2 = alloca i64, align 8
  %nrows = alloca i64, align 8
  %ncols = alloca i64, align 8
  %f = alloca i64, align 8
  %tpi = alloca i64, align 8
  %extcdeg = alloca i64, align 8
  %extrdeg = alloca i64, align 8
  %rdeg0 = alloca i64, align 8
  %cdeg0 = alloca i64, align 8
  %son_list = alloca i64, align 8
  %next = alloca i64, align 8
  %nrows_to_assemble = alloca i64, align 8
  %ncols_to_assemble = alloca i64, align 8
  %ngetrows = alloca i64, align 8
  %j = alloca i64, align 8
  %j2 = alloca i64, align 8
  %nrowsleft = alloca i64, align 8
  %ncolsleft = alloca i64, align 8
  %prior_Lson = alloca i64, align 8
  %prior_Uson = alloca i64, align 8
  %E = alloca ptr, align 8
  %Cols = alloca ptr, align 8
  %Rows = alloca ptr, align 8
  %Wm = alloca ptr, align 8
  %Woo = alloca ptr, align 8
  %Row_tuples = alloca ptr, align 8
  %Row_degree = alloca ptr, align 8
  %Row_tlen = alloca ptr, align 8
  %Col_tuples = alloca ptr, align 8
  %Col_tlen = alloca ptr, align 8
  %Memory = alloca ptr, align 8
  %p = alloca ptr, align 8
  %ep = alloca ptr, align 8
  %tp = alloca ptr, align 8
  %tp1 = alloca ptr, align 8
  %tp2 = alloca ptr, align 8
  %tpend = alloca ptr, align 8
  %S = alloca ptr, align 8
  %Fcblock = alloca ptr, align 8
  %Fcol = alloca ptr, align 8
  %Frpos = alloca ptr, align 8
  %Fcpos = alloca ptr, align 8
  %fnrows = alloca i64, align 8
  %fncols = alloca i64, align 8
  %skip = alloca i64, align 8
  %skip556 = alloca i64, align 8
  store ptr %Numeric, ptr %Numeric.addr, align 8, !tbaa !4
  store ptr %Work, ptr %Work.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %row) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %col) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %i2) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %nrows) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ncols) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tpi) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %extcdeg) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %extrdeg) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %rdeg0) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cdeg0) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %son_list) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %nrows_to_assemble) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ncols_to_assemble) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ngetrows) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %j2) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %nrowsleft) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ncolsleft) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %prior_Lson) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %prior_Uson) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %E) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Cols) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Rows) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wm) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Woo) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Row_tuples) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Row_degree) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Row_tlen) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Col_tuples) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Col_tlen) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Memory) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ep) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp2) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tpend) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %S) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fcblock) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fcol) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Frpos) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fcpos) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %fnrows) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %fncols) #5
  %0 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols1 = getelementptr inbounds %struct.WorkType, ptr %0, i32 0, i32 66
  %1 = load i64, ptr %fncols1, align 8, !tbaa !8
  store i64 %1, ptr %fncols, align 8, !tbaa !11
  %2 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows2 = getelementptr inbounds %struct.WorkType, ptr %2, i32 0, i32 65
  %3 = load i64, ptr %fnrows2, align 8, !tbaa !12
  store i64 %3, ptr %fnrows, align 8, !tbaa !11
  %4 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fcpos3 = getelementptr inbounds %struct.WorkType, ptr %4, i32 0, i32 64
  %5 = load ptr, ptr %Fcpos3, align 8, !tbaa !13
  store ptr %5, ptr %Fcpos, align 8, !tbaa !4
  %6 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Frpos4 = getelementptr inbounds %struct.WorkType, ptr %6, i32 0, i32 63
  %7 = load ptr, ptr %Frpos4, align 8, !tbaa !14
  store ptr %7, ptr %Frpos, align 8, !tbaa !4
  %8 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Rperm = getelementptr inbounds %struct.NumericType, ptr %8, i32 0, i32 18
  %9 = load ptr, ptr %Rperm, align 8, !tbaa !15
  store ptr %9, ptr %Row_degree, align 8, !tbaa !4
  %10 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Uip = getelementptr inbounds %struct.NumericType, ptr %10, i32 0, i32 24
  %11 = load ptr, ptr %Uip, align 8, !tbaa !18
  store ptr %11, ptr %Row_tuples, align 8, !tbaa !4
  %12 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Uilen = getelementptr inbounds %struct.NumericType, ptr %12, i32 0, i32 25
  %13 = load ptr, ptr %Uilen, align 8, !tbaa !19
  store ptr %13, ptr %Row_tlen, align 8, !tbaa !4
  %14 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Lip = getelementptr inbounds %struct.NumericType, ptr %14, i32 0, i32 22
  %15 = load ptr, ptr %Lip, align 8, !tbaa !20
  store ptr %15, ptr %Col_tuples, align 8, !tbaa !4
  %16 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Lilen = getelementptr inbounds %struct.NumericType, ptr %16, i32 0, i32 23
  %17 = load ptr, ptr %Lilen, align 8, !tbaa !21
  store ptr %17, ptr %Col_tlen, align 8, !tbaa !4
  %18 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %E5 = getelementptr inbounds %struct.WorkType, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %E5, align 8, !tbaa !22
  store ptr %19, ptr %E, align 8, !tbaa !4
  %20 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory6 = getelementptr inbounds %struct.NumericType, ptr %20, i32 0, i32 13
  %21 = load ptr, ptr %Memory6, align 8, !tbaa !23
  store ptr %21, ptr %Memory, align 8, !tbaa !4
  %22 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Wm7 = getelementptr inbounds %struct.WorkType, ptr %22, i32 0, i32 5
  %23 = load ptr, ptr %Wm7, align 8, !tbaa !24
  store ptr %23, ptr %Wm, align 8, !tbaa !4
  %24 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Woo8 = getelementptr inbounds %struct.WorkType, ptr %24, i32 0, i32 8
  %25 = load ptr, ptr %Woo8, align 8, !tbaa !25
  store ptr %25, ptr %Woo, align 8, !tbaa !4
  %26 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %rdeg09 = getelementptr inbounds %struct.WorkType, ptr %26, i32 0, i32 29
  %27 = load i64, ptr %rdeg09, align 8, !tbaa !26
  store i64 %27, ptr %rdeg0, align 8, !tbaa !11
  %28 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %cdeg010 = getelementptr inbounds %struct.WorkType, ptr %28, i32 0, i32 30
  %29 = load i64, ptr %cdeg010, align 8, !tbaa !27
  store i64 %29, ptr %cdeg0, align 8, !tbaa !11
  %30 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fcblock11 = getelementptr inbounds %struct.WorkType, ptr %30, i32 0, i32 60
  %31 = load ptr, ptr %Fcblock11, align 8, !tbaa !28
  store ptr %31, ptr %Fcblock, align 8, !tbaa !4
  %32 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %maxnrows = getelementptr inbounds %struct.NumericType, ptr %32, i32 0, i32 50
  %33 = load i64, ptr %maxnrows, align 8, !tbaa !29
  %34 = load i64, ptr %fnrows, align 8, !tbaa !11
  %cmp = icmp sgt i64 %33, %34
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %35 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %maxnrows12 = getelementptr inbounds %struct.NumericType, ptr %35, i32 0, i32 50
  %36 = load i64, ptr %maxnrows12, align 8, !tbaa !29
  br label %cond.end

cond.false:                                       ; preds = %entry
  %37 = load i64, ptr %fnrows, align 8, !tbaa !11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %36, %cond.true ], [ %37, %cond.false ]
  %38 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %maxnrows13 = getelementptr inbounds %struct.NumericType, ptr %38, i32 0, i32 50
  store i64 %cond, ptr %maxnrows13, align 8, !tbaa !29
  %39 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %maxncols = getelementptr inbounds %struct.NumericType, ptr %39, i32 0, i32 51
  %40 = load i64, ptr %maxncols, align 8, !tbaa !30
  %41 = load i64, ptr %fncols, align 8, !tbaa !11
  %cmp14 = icmp sgt i64 %40, %41
  br i1 %cmp14, label %cond.true15, label %cond.false17

cond.true15:                                      ; preds = %cond.end
  %42 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %maxncols16 = getelementptr inbounds %struct.NumericType, ptr %42, i32 0, i32 51
  %43 = load i64, ptr %maxncols16, align 8, !tbaa !30
  br label %cond.end18

cond.false17:                                     ; preds = %cond.end
  %44 = load i64, ptr %fncols, align 8, !tbaa !11
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %cond.true15
  %cond19 = phi i64 [ %43, %cond.true15 ], [ %44, %cond.false17 ]
  %45 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %maxncols20 = getelementptr inbounds %struct.NumericType, ptr %45, i32 0, i32 51
  store i64 %cond19, ptr %maxncols20, align 8, !tbaa !30
  %46 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %maxfrsize = getelementptr inbounds %struct.NumericType, ptr %46, i32 0, i32 49
  %47 = load i64, ptr %maxfrsize, align 8, !tbaa !31
  %48 = load i64, ptr %fnrows, align 8, !tbaa !11
  %49 = load i64, ptr %fncols, align 8, !tbaa !11
  %mul = mul nsw i64 %48, %49
  %cmp21 = icmp sgt i64 %47, %mul
  br i1 %cmp21, label %cond.true22, label %cond.false24

cond.true22:                                      ; preds = %cond.end18
  %50 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %maxfrsize23 = getelementptr inbounds %struct.NumericType, ptr %50, i32 0, i32 49
  %51 = load i64, ptr %maxfrsize23, align 8, !tbaa !31
  br label %cond.end26

cond.false24:                                     ; preds = %cond.end18
  %52 = load i64, ptr %fnrows, align 8, !tbaa !11
  %53 = load i64, ptr %fncols, align 8, !tbaa !11
  %mul25 = mul nsw i64 %52, %53
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false24, %cond.true22
  %cond27 = phi i64 [ %51, %cond.true22 ], [ %mul25, %cond.false24 ]
  %54 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %maxfrsize28 = getelementptr inbounds %struct.NumericType, ptr %54, i32 0, i32 49
  store i64 %cond27, ptr %maxfrsize28, align 8, !tbaa !31
  store i64 0, ptr %son_list, align 8, !tbaa !11
  %55 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_extend = getelementptr inbounds %struct.WorkType, ptr %55, i32 0, i32 44
  %56 = load i64, ptr %do_extend, align 8, !tbaa !32
  %tobool = icmp ne i64 %56, 0
  br i1 %tobool, label %if.end47, label %if.then

if.then:                                          ; preds = %cond.end26
  %57 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol_in_front = getelementptr inbounds %struct.WorkType, ptr %57, i32 0, i32 80
  %58 = load i64, ptr %pivcol_in_front, align 8, !tbaa !33
  %tobool29 = icmp ne i64 %58, 0
  br i1 %tobool29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %59 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow_in_front = getelementptr inbounds %struct.WorkType, ptr %59, i32 0, i32 79
  %60 = load i64, ptr %pivrow_in_front, align 8, !tbaa !34
  %tobool30 = icmp ne i64 %60, 0
  %lnot = xor i1 %tobool30, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %61 = phi i1 [ false, %if.then ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %61 to i32
  %conv = sext i32 %land.ext to i64
  store i64 %conv, ptr %prior_Uson, align 8, !tbaa !11
  %62 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol_in_front31 = getelementptr inbounds %struct.WorkType, ptr %62, i32 0, i32 80
  %63 = load i64, ptr %pivcol_in_front31, align 8, !tbaa !33
  %tobool32 = icmp ne i64 %63, 0
  br i1 %tobool32, label %land.end36, label %land.rhs33

land.rhs33:                                       ; preds = %land.end
  %64 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow_in_front34 = getelementptr inbounds %struct.WorkType, ptr %64, i32 0, i32 79
  %65 = load i64, ptr %pivrow_in_front34, align 8, !tbaa !34
  %tobool35 = icmp ne i64 %65, 0
  br label %land.end36

land.end36:                                       ; preds = %land.rhs33, %land.end
  %66 = phi i1 [ false, %land.end ], [ %tobool35, %land.rhs33 ]
  %land.ext37 = zext i1 %66 to i32
  %conv38 = sext i32 %land.ext37 to i64
  store i64 %conv38, ptr %prior_Lson, align 8, !tbaa !11
  %67 = load i64, ptr %prior_Uson, align 8, !tbaa !11
  %tobool39 = icmp ne i64 %67, 0
  br i1 %tobool39, label %if.then41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.end36
  %68 = load i64, ptr %prior_Lson, align 8, !tbaa !11
  %tobool40 = icmp ne i64 %68, 0
  br i1 %tobool40, label %if.then41, label %if.end46

if.then41:                                        ; preds = %lor.lhs.false, %land.end36
  %69 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %prior_element = getelementptr inbounds %struct.WorkType, ptr %69, i32 0, i32 28
  %70 = load i64, ptr %prior_element, align 8, !tbaa !35
  store i64 %70, ptr %e, align 8, !tbaa !11
  %71 = load i64, ptr %e, align 8, !tbaa !11
  %cmp42 = icmp ne i64 %71, -1
  br i1 %cmp42, label %if.then44, label %if.end

if.then44:                                        ; preds = %if.then41
  %72 = load ptr, ptr %Memory, align 8, !tbaa !4
  %73 = load ptr, ptr %E, align 8, !tbaa !4
  %74 = load i64, ptr %e, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i64, ptr %73, i64 %74
  %75 = load i64, ptr %arrayidx, align 8, !tbaa !11
  %add.ptr = getelementptr inbounds %union.Unit_union, ptr %72, i64 %75
  store ptr %add.ptr, ptr %p, align 8, !tbaa !4
  %76 = load ptr, ptr %p, align 8, !tbaa !4
  store ptr %76, ptr %ep, align 8, !tbaa !4
  %77 = load i64, ptr %son_list, align 8, !tbaa !11
  %78 = load ptr, ptr %ep, align 8, !tbaa !4
  %next45 = getelementptr inbounds %struct.Element, ptr %78, i32 0, i32 6
  store i64 %77, ptr %next45, align 8, !tbaa !36
  %79 = load i64, ptr %e, align 8, !tbaa !11
  store i64 %79, ptr %son_list, align 8, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then44, %if.then41
  br label %if.end46

if.end46:                                         ; preds = %if.end, %lor.lhs.false
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %cond.end26
  %80 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %prior_element48 = getelementptr inbounds %struct.WorkType, ptr %80, i32 0, i32 28
  store i64 -1, ptr %prior_element48, align 8, !tbaa !35
  %81 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fscan_row = getelementptr inbounds %struct.WorkType, ptr %81, i32 0, i32 75
  %82 = load i64, ptr %fscan_row, align 8, !tbaa !38
  store i64 %82, ptr %i2, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc102, %if.end47
  %83 = load i64, ptr %i2, align 8, !tbaa !11
  %84 = load i64, ptr %fnrows, align 8, !tbaa !11
  %cmp49 = icmp slt i64 %83, %84
  br i1 %cmp49, label %for.body, label %for.end103

for.body:                                         ; preds = %for.cond
  %85 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %NewRows = getelementptr inbounds %struct.WorkType, ptr %85, i32 0, i32 10
  %86 = load ptr, ptr %NewRows, align 8, !tbaa !39
  %87 = load i64, ptr %i2, align 8, !tbaa !11
  %arrayidx51 = getelementptr inbounds i64, ptr %86, i64 %87
  %88 = load i64, ptr %arrayidx51, align 8, !tbaa !11
  store i64 %88, ptr %row, align 8, !tbaa !11
  %89 = load i64, ptr %row, align 8, !tbaa !11
  %cmp52 = icmp slt i64 %89, 0
  br i1 %cmp52, label %if.then54, label %if.end56

if.then54:                                        ; preds = %for.body
  %90 = load i64, ptr %row, align 8, !tbaa !11
  %sub = sub nsw i64 0, %90
  %sub55 = sub nsw i64 %sub, 2
  store i64 %sub55, ptr %row, align 8, !tbaa !11
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %for.body
  %91 = load ptr, ptr %Row_tuples, align 8, !tbaa !4
  %92 = load i64, ptr %row, align 8, !tbaa !11
  %arrayidx57 = getelementptr inbounds i64, ptr %91, i64 %92
  %93 = load i64, ptr %arrayidx57, align 8, !tbaa !11
  store i64 %93, ptr %tpi, align 8, !tbaa !11
  %94 = load i64, ptr %tpi, align 8, !tbaa !11
  %tobool58 = icmp ne i64 %94, 0
  br i1 %tobool58, label %if.end60, label %if.then59

if.then59:                                        ; preds = %if.end56
  br label %for.inc102

if.end60:                                         ; preds = %if.end56
  %95 = load ptr, ptr %Memory, align 8, !tbaa !4
  %96 = load i64, ptr %tpi, align 8, !tbaa !11
  %add.ptr61 = getelementptr inbounds %union.Unit_union, ptr %95, i64 %96
  store ptr %add.ptr61, ptr %tp, align 8, !tbaa !4
  %97 = load ptr, ptr %tp, align 8, !tbaa !4
  store ptr %97, ptr %tp1, align 8, !tbaa !4
  %98 = load ptr, ptr %tp, align 8, !tbaa !4
  store ptr %98, ptr %tp2, align 8, !tbaa !4
  %99 = load ptr, ptr %tp, align 8, !tbaa !4
  %100 = load ptr, ptr %Row_tlen, align 8, !tbaa !4
  %101 = load i64, ptr %row, align 8, !tbaa !11
  %arrayidx62 = getelementptr inbounds i64, ptr %100, i64 %101
  %102 = load i64, ptr %arrayidx62, align 8, !tbaa !11
  %add.ptr63 = getelementptr inbounds %struct.Tuple, ptr %99, i64 %102
  store ptr %add.ptr63, ptr %tpend, align 8, !tbaa !4
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc, %if.end60
  %103 = load ptr, ptr %tp, align 8, !tbaa !4
  %104 = load ptr, ptr %tpend, align 8, !tbaa !4
  %cmp65 = icmp ult ptr %103, %104
  br i1 %cmp65, label %for.body67, label %for.end

for.body67:                                       ; preds = %for.cond64
  %105 = load ptr, ptr %tp, align 8, !tbaa !4
  %e68 = getelementptr inbounds %struct.Tuple, ptr %105, i32 0, i32 0
  %106 = load i64, ptr %e68, align 8, !tbaa !40
  store i64 %106, ptr %e, align 8, !tbaa !11
  %107 = load ptr, ptr %E, align 8, !tbaa !4
  %108 = load i64, ptr %e, align 8, !tbaa !11
  %arrayidx69 = getelementptr inbounds i64, ptr %107, i64 %108
  %109 = load i64, ptr %arrayidx69, align 8, !tbaa !11
  %tobool70 = icmp ne i64 %109, 0
  br i1 %tobool70, label %if.end72, label %if.then71

if.then71:                                        ; preds = %for.body67
  br label %for.inc

if.end72:                                         ; preds = %for.body67
  %110 = load ptr, ptr %tp, align 8, !tbaa !4
  %f73 = getelementptr inbounds %struct.Tuple, ptr %110, i32 0, i32 1
  %111 = load i64, ptr %f73, align 8, !tbaa !42
  store i64 %111, ptr %f, align 8, !tbaa !11
  %112 = load ptr, ptr %Memory, align 8, !tbaa !4
  %113 = load ptr, ptr %E, align 8, !tbaa !4
  %114 = load i64, ptr %e, align 8, !tbaa !11
  %arrayidx74 = getelementptr inbounds i64, ptr %113, i64 %114
  %115 = load i64, ptr %arrayidx74, align 8, !tbaa !11
  %add.ptr75 = getelementptr inbounds %union.Unit_union, ptr %112, i64 %115
  store ptr %add.ptr75, ptr %p, align 8, !tbaa !4
  %116 = load ptr, ptr %p, align 8, !tbaa !4
  store ptr %116, ptr %ep, align 8, !tbaa !4
  %117 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr76 = getelementptr inbounds %union.Unit_union, ptr %117, i64 4
  store ptr %add.ptr76, ptr %p, align 8, !tbaa !4
  %118 = load ptr, ptr %p, align 8, !tbaa !4
  %119 = load ptr, ptr %ep, align 8, !tbaa !4
  %ncols77 = getelementptr inbounds %struct.Element, ptr %119, i32 0, i32 5
  %120 = load i64, ptr %ncols77, align 8, !tbaa !43
  %add.ptr78 = getelementptr inbounds i64, ptr %118, i64 %120
  store ptr %add.ptr78, ptr %Rows, align 8, !tbaa !4
  %121 = load ptr, ptr %Rows, align 8, !tbaa !4
  %122 = load i64, ptr %f, align 8, !tbaa !11
  %arrayidx79 = getelementptr inbounds i64, ptr %121, i64 %122
  %123 = load i64, ptr %arrayidx79, align 8, !tbaa !11
  %cmp80 = icmp eq i64 %123, -1
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.end72
  br label %for.inc

if.end83:                                         ; preds = %if.end72
  %124 = load ptr, ptr %ep, align 8, !tbaa !4
  %cdeg = getelementptr inbounds %struct.Element, ptr %124, i32 0, i32 0
  %125 = load i64, ptr %cdeg, align 8, !tbaa !44
  %126 = load i64, ptr %cdeg0, align 8, !tbaa !11
  %cmp84 = icmp slt i64 %125, %126
  br i1 %cmp84, label %if.then86, label %if.end89

if.then86:                                        ; preds = %if.end83
  %127 = load ptr, ptr %ep, align 8, !tbaa !4
  %nrowsleft87 = getelementptr inbounds %struct.Element, ptr %127, i32 0, i32 2
  %128 = load i64, ptr %nrowsleft87, align 8, !tbaa !45
  %129 = load i64, ptr %cdeg0, align 8, !tbaa !11
  %add = add nsw i64 %128, %129
  %130 = load ptr, ptr %ep, align 8, !tbaa !4
  %cdeg88 = getelementptr inbounds %struct.Element, ptr %130, i32 0, i32 0
  store i64 %add, ptr %cdeg88, align 8, !tbaa !44
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %if.end83
  %131 = load ptr, ptr %ep, align 8, !tbaa !4
  %cdeg90 = getelementptr inbounds %struct.Element, ptr %131, i32 0, i32 0
  %132 = load i64, ptr %cdeg90, align 8, !tbaa !44
  %dec = add nsw i64 %132, -1
  store i64 %dec, ptr %cdeg90, align 8, !tbaa !44
  %133 = load ptr, ptr %ep, align 8, !tbaa !4
  %cdeg91 = getelementptr inbounds %struct.Element, ptr %133, i32 0, i32 0
  %134 = load i64, ptr %cdeg91, align 8, !tbaa !44
  %135 = load i64, ptr %cdeg0, align 8, !tbaa !11
  %cmp92 = icmp eq i64 %134, %135
  br i1 %cmp92, label %land.lhs.true, label %if.end99

land.lhs.true:                                    ; preds = %if.end89
  %136 = load ptr, ptr %ep, align 8, !tbaa !4
  %next94 = getelementptr inbounds %struct.Element, ptr %136, i32 0, i32 6
  %137 = load i64, ptr %next94, align 8, !tbaa !36
  %cmp95 = icmp eq i64 %137, -1
  br i1 %cmp95, label %if.then97, label %if.end99

if.then97:                                        ; preds = %land.lhs.true
  %138 = load i64, ptr %son_list, align 8, !tbaa !11
  %139 = load ptr, ptr %ep, align 8, !tbaa !4
  %next98 = getelementptr inbounds %struct.Element, ptr %139, i32 0, i32 6
  store i64 %138, ptr %next98, align 8, !tbaa !36
  %140 = load i64, ptr %e, align 8, !tbaa !11
  store i64 %140, ptr %son_list, align 8, !tbaa !11
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %land.lhs.true, %if.end89
  %141 = load ptr, ptr %tp2, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.Tuple, ptr %141, i32 1
  store ptr %incdec.ptr, ptr %tp2, align 8, !tbaa !4
  %142 = load ptr, ptr %tp, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %141, ptr align 8 %142, i64 16, i1 false), !tbaa.struct !46
  br label %for.inc

for.inc:                                          ; preds = %if.end99, %if.then82, %if.then71
  %143 = load ptr, ptr %tp, align 8, !tbaa !4
  %incdec.ptr100 = getelementptr inbounds %struct.Tuple, ptr %143, i32 1
  store ptr %incdec.ptr100, ptr %tp, align 8, !tbaa !4
  br label %for.cond64, !llvm.loop !47

for.end:                                          ; preds = %for.cond64
  %144 = load ptr, ptr %tp2, align 8, !tbaa !4
  %145 = load ptr, ptr %tp1, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint ptr %144 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %145 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %146 = load ptr, ptr %Row_tlen, align 8, !tbaa !4
  %147 = load i64, ptr %row, align 8, !tbaa !11
  %arrayidx101 = getelementptr inbounds i64, ptr %146, i64 %147
  store i64 %sub.ptr.div, ptr %arrayidx101, align 8, !tbaa !11
  br label %for.inc102

for.inc102:                                       ; preds = %for.end, %if.then59
  %148 = load i64, ptr %i2, align 8, !tbaa !11
  %inc = add nsw i64 %148, 1
  store i64 %inc, ptr %i2, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !49

for.end103:                                       ; preds = %for.cond
  %149 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fscan_col = getelementptr inbounds %struct.WorkType, ptr %149, i32 0, i32 76
  %150 = load i64, ptr %fscan_col, align 8, !tbaa !50
  store i64 %150, ptr %j2, align 8, !tbaa !11
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc168, %for.end103
  %151 = load i64, ptr %j2, align 8, !tbaa !11
  %152 = load i64, ptr %fncols, align 8, !tbaa !11
  %cmp105 = icmp slt i64 %151, %152
  br i1 %cmp105, label %for.body107, label %for.end170

for.body107:                                      ; preds = %for.cond104
  %153 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %NewCols = getelementptr inbounds %struct.WorkType, ptr %153, i32 0, i32 11
  %154 = load ptr, ptr %NewCols, align 8, !tbaa !51
  %155 = load i64, ptr %j2, align 8, !tbaa !11
  %arrayidx108 = getelementptr inbounds i64, ptr %154, i64 %155
  %156 = load i64, ptr %arrayidx108, align 8, !tbaa !11
  store i64 %156, ptr %col, align 8, !tbaa !11
  %157 = load i64, ptr %col, align 8, !tbaa !11
  %cmp109 = icmp slt i64 %157, 0
  br i1 %cmp109, label %if.then111, label %if.end114

if.then111:                                       ; preds = %for.body107
  %158 = load i64, ptr %col, align 8, !tbaa !11
  %sub112 = sub nsw i64 0, %158
  %sub113 = sub nsw i64 %sub112, 2
  store i64 %sub113, ptr %col, align 8, !tbaa !11
  br label %if.end114

if.end114:                                        ; preds = %if.then111, %for.body107
  %159 = load ptr, ptr %Col_tuples, align 8, !tbaa !4
  %160 = load i64, ptr %col, align 8, !tbaa !11
  %arrayidx115 = getelementptr inbounds i64, ptr %159, i64 %160
  %161 = load i64, ptr %arrayidx115, align 8, !tbaa !11
  store i64 %161, ptr %tpi, align 8, !tbaa !11
  %162 = load i64, ptr %tpi, align 8, !tbaa !11
  %tobool116 = icmp ne i64 %162, 0
  br i1 %tobool116, label %if.end118, label %if.then117

if.then117:                                       ; preds = %if.end114
  br label %for.inc168

if.end118:                                        ; preds = %if.end114
  %163 = load ptr, ptr %Memory, align 8, !tbaa !4
  %164 = load i64, ptr %tpi, align 8, !tbaa !11
  %add.ptr119 = getelementptr inbounds %union.Unit_union, ptr %163, i64 %164
  store ptr %add.ptr119, ptr %tp, align 8, !tbaa !4
  %165 = load ptr, ptr %tp, align 8, !tbaa !4
  store ptr %165, ptr %tp1, align 8, !tbaa !4
  %166 = load ptr, ptr %tp, align 8, !tbaa !4
  store ptr %166, ptr %tp2, align 8, !tbaa !4
  %167 = load ptr, ptr %tp, align 8, !tbaa !4
  %168 = load ptr, ptr %Col_tlen, align 8, !tbaa !4
  %169 = load i64, ptr %col, align 8, !tbaa !11
  %arrayidx120 = getelementptr inbounds i64, ptr %168, i64 %169
  %170 = load i64, ptr %arrayidx120, align 8, !tbaa !11
  %add.ptr121 = getelementptr inbounds %struct.Tuple, ptr %167, i64 %170
  store ptr %add.ptr121, ptr %tpend, align 8, !tbaa !4
  br label %for.cond122

for.cond122:                                      ; preds = %for.inc160, %if.end118
  %171 = load ptr, ptr %tp, align 8, !tbaa !4
  %172 = load ptr, ptr %tpend, align 8, !tbaa !4
  %cmp123 = icmp ult ptr %171, %172
  br i1 %cmp123, label %for.body125, label %for.end162

for.body125:                                      ; preds = %for.cond122
  %173 = load ptr, ptr %tp, align 8, !tbaa !4
  %e126 = getelementptr inbounds %struct.Tuple, ptr %173, i32 0, i32 0
  %174 = load i64, ptr %e126, align 8, !tbaa !40
  store i64 %174, ptr %e, align 8, !tbaa !11
  %175 = load ptr, ptr %E, align 8, !tbaa !4
  %176 = load i64, ptr %e, align 8, !tbaa !11
  %arrayidx127 = getelementptr inbounds i64, ptr %175, i64 %176
  %177 = load i64, ptr %arrayidx127, align 8, !tbaa !11
  %tobool128 = icmp ne i64 %177, 0
  br i1 %tobool128, label %if.end130, label %if.then129

if.then129:                                       ; preds = %for.body125
  br label %for.inc160

if.end130:                                        ; preds = %for.body125
  %178 = load ptr, ptr %tp, align 8, !tbaa !4
  %f131 = getelementptr inbounds %struct.Tuple, ptr %178, i32 0, i32 1
  %179 = load i64, ptr %f131, align 8, !tbaa !42
  store i64 %179, ptr %f, align 8, !tbaa !11
  %180 = load ptr, ptr %Memory, align 8, !tbaa !4
  %181 = load ptr, ptr %E, align 8, !tbaa !4
  %182 = load i64, ptr %e, align 8, !tbaa !11
  %arrayidx132 = getelementptr inbounds i64, ptr %181, i64 %182
  %183 = load i64, ptr %arrayidx132, align 8, !tbaa !11
  %add.ptr133 = getelementptr inbounds %union.Unit_union, ptr %180, i64 %183
  store ptr %add.ptr133, ptr %p, align 8, !tbaa !4
  %184 = load ptr, ptr %p, align 8, !tbaa !4
  store ptr %184, ptr %ep, align 8, !tbaa !4
  %185 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr134 = getelementptr inbounds %union.Unit_union, ptr %185, i64 4
  store ptr %add.ptr134, ptr %p, align 8, !tbaa !4
  %186 = load ptr, ptr %p, align 8, !tbaa !4
  store ptr %186, ptr %Cols, align 8, !tbaa !4
  %187 = load ptr, ptr %Cols, align 8, !tbaa !4
  %188 = load i64, ptr %f, align 8, !tbaa !11
  %arrayidx135 = getelementptr inbounds i64, ptr %187, i64 %188
  %189 = load i64, ptr %arrayidx135, align 8, !tbaa !11
  %cmp136 = icmp eq i64 %189, -1
  br i1 %cmp136, label %if.then138, label %if.end139

if.then138:                                       ; preds = %if.end130
  br label %for.inc160

if.end139:                                        ; preds = %if.end130
  %190 = load ptr, ptr %ep, align 8, !tbaa !4
  %rdeg = getelementptr inbounds %struct.Element, ptr %190, i32 0, i32 1
  %191 = load i64, ptr %rdeg, align 8, !tbaa !52
  %192 = load i64, ptr %rdeg0, align 8, !tbaa !11
  %cmp140 = icmp slt i64 %191, %192
  br i1 %cmp140, label %if.then142, label %if.end146

if.then142:                                       ; preds = %if.end139
  %193 = load ptr, ptr %ep, align 8, !tbaa !4
  %ncolsleft143 = getelementptr inbounds %struct.Element, ptr %193, i32 0, i32 3
  %194 = load i64, ptr %ncolsleft143, align 8, !tbaa !53
  %195 = load i64, ptr %rdeg0, align 8, !tbaa !11
  %add144 = add nsw i64 %194, %195
  %196 = load ptr, ptr %ep, align 8, !tbaa !4
  %rdeg145 = getelementptr inbounds %struct.Element, ptr %196, i32 0, i32 1
  store i64 %add144, ptr %rdeg145, align 8, !tbaa !52
  br label %if.end146

if.end146:                                        ; preds = %if.then142, %if.end139
  %197 = load ptr, ptr %ep, align 8, !tbaa !4
  %rdeg147 = getelementptr inbounds %struct.Element, ptr %197, i32 0, i32 1
  %198 = load i64, ptr %rdeg147, align 8, !tbaa !52
  %dec148 = add nsw i64 %198, -1
  store i64 %dec148, ptr %rdeg147, align 8, !tbaa !52
  %199 = load ptr, ptr %ep, align 8, !tbaa !4
  %rdeg149 = getelementptr inbounds %struct.Element, ptr %199, i32 0, i32 1
  %200 = load i64, ptr %rdeg149, align 8, !tbaa !52
  %201 = load i64, ptr %rdeg0, align 8, !tbaa !11
  %cmp150 = icmp eq i64 %200, %201
  br i1 %cmp150, label %land.lhs.true152, label %if.end158

land.lhs.true152:                                 ; preds = %if.end146
  %202 = load ptr, ptr %ep, align 8, !tbaa !4
  %next153 = getelementptr inbounds %struct.Element, ptr %202, i32 0, i32 6
  %203 = load i64, ptr %next153, align 8, !tbaa !36
  %cmp154 = icmp eq i64 %203, -1
  br i1 %cmp154, label %if.then156, label %if.end158

if.then156:                                       ; preds = %land.lhs.true152
  %204 = load i64, ptr %son_list, align 8, !tbaa !11
  %205 = load ptr, ptr %ep, align 8, !tbaa !4
  %next157 = getelementptr inbounds %struct.Element, ptr %205, i32 0, i32 6
  store i64 %204, ptr %next157, align 8, !tbaa !36
  %206 = load i64, ptr %e, align 8, !tbaa !11
  store i64 %206, ptr %son_list, align 8, !tbaa !11
  br label %if.end158

if.end158:                                        ; preds = %if.then156, %land.lhs.true152, %if.end146
  %207 = load ptr, ptr %tp2, align 8, !tbaa !4
  %incdec.ptr159 = getelementptr inbounds %struct.Tuple, ptr %207, i32 1
  store ptr %incdec.ptr159, ptr %tp2, align 8, !tbaa !4
  %208 = load ptr, ptr %tp, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %207, ptr align 8 %208, i64 16, i1 false), !tbaa.struct !46
  br label %for.inc160

for.inc160:                                       ; preds = %if.end158, %if.then138, %if.then129
  %209 = load ptr, ptr %tp, align 8, !tbaa !4
  %incdec.ptr161 = getelementptr inbounds %struct.Tuple, ptr %209, i32 1
  store ptr %incdec.ptr161, ptr %tp, align 8, !tbaa !4
  br label %for.cond122, !llvm.loop !54

for.end162:                                       ; preds = %for.cond122
  %210 = load ptr, ptr %tp2, align 8, !tbaa !4
  %211 = load ptr, ptr %tp1, align 8, !tbaa !4
  %sub.ptr.lhs.cast163 = ptrtoint ptr %210 to i64
  %sub.ptr.rhs.cast164 = ptrtoint ptr %211 to i64
  %sub.ptr.sub165 = sub i64 %sub.ptr.lhs.cast163, %sub.ptr.rhs.cast164
  %sub.ptr.div166 = sdiv exact i64 %sub.ptr.sub165, 16
  %212 = load ptr, ptr %Col_tlen, align 8, !tbaa !4
  %213 = load i64, ptr %col, align 8, !tbaa !11
  %arrayidx167 = getelementptr inbounds i64, ptr %212, i64 %213
  store i64 %sub.ptr.div166, ptr %arrayidx167, align 8, !tbaa !11
  br label %for.inc168

for.inc168:                                       ; preds = %for.end162, %if.then117
  %214 = load i64, ptr %j2, align 8, !tbaa !11
  %inc169 = add nsw i64 %214, 1
  store i64 %inc169, ptr %j2, align 8, !tbaa !11
  br label %for.cond104, !llvm.loop !55

for.end170:                                       ; preds = %for.cond104
  store i64 -1, ptr %next, align 8, !tbaa !11
  %215 = load i64, ptr %son_list, align 8, !tbaa !11
  store i64 %215, ptr %e, align 8, !tbaa !11
  br label %for.cond171

for.cond171:                                      ; preds = %for.inc677, %for.end170
  %216 = load i64, ptr %e, align 8, !tbaa !11
  %cmp172 = icmp sgt i64 %216, 0
  br i1 %cmp172, label %for.body174, label %for.end678

for.body174:                                      ; preds = %for.cond171
  %217 = load ptr, ptr %Memory, align 8, !tbaa !4
  %218 = load ptr, ptr %E, align 8, !tbaa !4
  %219 = load i64, ptr %e, align 8, !tbaa !11
  %arrayidx175 = getelementptr inbounds i64, ptr %218, i64 %219
  %220 = load i64, ptr %arrayidx175, align 8, !tbaa !11
  %add.ptr176 = getelementptr inbounds %union.Unit_union, ptr %217, i64 %220
  store ptr %add.ptr176, ptr %p, align 8, !tbaa !4
  %221 = load ptr, ptr %p, align 8, !tbaa !4
  store ptr %221, ptr %ep, align 8, !tbaa !4
  %222 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr177 = getelementptr inbounds %union.Unit_union, ptr %222, i64 4
  store ptr %add.ptr177, ptr %p, align 8, !tbaa !4
  %223 = load ptr, ptr %p, align 8, !tbaa !4
  store ptr %223, ptr %Cols, align 8, !tbaa !4
  %224 = load ptr, ptr %ep, align 8, !tbaa !4
  %ncols178 = getelementptr inbounds %struct.Element, ptr %224, i32 0, i32 5
  %225 = load i64, ptr %ncols178, align 8, !tbaa !43
  store i64 %225, ptr %ncols, align 8, !tbaa !11
  %226 = load ptr, ptr %Cols, align 8, !tbaa !4
  %227 = load i64, ptr %ncols, align 8, !tbaa !11
  %add.ptr179 = getelementptr inbounds i64, ptr %226, i64 %227
  store ptr %add.ptr179, ptr %Rows, align 8, !tbaa !4
  %228 = load ptr, ptr %ep, align 8, !tbaa !4
  %nrows180 = getelementptr inbounds %struct.Element, ptr %228, i32 0, i32 4
  %229 = load i64, ptr %nrows180, align 8, !tbaa !56
  store i64 %229, ptr %nrows, align 8, !tbaa !11
  %230 = load i64, ptr %ncols, align 8, !tbaa !11
  %231 = load i64, ptr %nrows, align 8, !tbaa !11
  %add181 = add nsw i64 %230, %231
  %mul182 = mul i64 8, %add181
  %add183 = add i64 %mul182, 16
  %sub184 = sub i64 %add183, 1
  %div = udiv i64 %sub184, 16
  %232 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr185 = getelementptr inbounds %union.Unit_union, ptr %232, i64 %div
  store ptr %add.ptr185, ptr %p, align 8, !tbaa !4
  %233 = load ptr, ptr %p, align 8, !tbaa !4
  store ptr %233, ptr %S, align 8, !tbaa !4
  %234 = load ptr, ptr %ep, align 8, !tbaa !4
  %nrowsleft186 = getelementptr inbounds %struct.Element, ptr %234, i32 0, i32 2
  %235 = load i64, ptr %nrowsleft186, align 8, !tbaa !45
  store i64 %235, ptr %nrowsleft, align 8, !tbaa !11
  %236 = load ptr, ptr %ep, align 8, !tbaa !4
  %ncolsleft187 = getelementptr inbounds %struct.Element, ptr %236, i32 0, i32 3
  %237 = load i64, ptr %ncolsleft187, align 8, !tbaa !53
  store i64 %237, ptr %ncolsleft, align 8, !tbaa !11
  %238 = load ptr, ptr %ep, align 8, !tbaa !4
  %next188 = getelementptr inbounds %struct.Element, ptr %238, i32 0, i32 6
  %239 = load i64, ptr %next188, align 8, !tbaa !36
  store i64 %239, ptr %next, align 8, !tbaa !11
  %240 = load ptr, ptr %ep, align 8, !tbaa !4
  %next189 = getelementptr inbounds %struct.Element, ptr %240, i32 0, i32 6
  store i64 -1, ptr %next189, align 8, !tbaa !36
  %241 = load ptr, ptr %ep, align 8, !tbaa !4
  %rdeg190 = getelementptr inbounds %struct.Element, ptr %241, i32 0, i32 1
  %242 = load i64, ptr %rdeg190, align 8, !tbaa !52
  %243 = load i64, ptr %rdeg0, align 8, !tbaa !11
  %cmp191 = icmp slt i64 %242, %243
  br i1 %cmp191, label %cond.true193, label %cond.false194

cond.true193:                                     ; preds = %for.body174
  %244 = load i64, ptr %ncolsleft, align 8, !tbaa !11
  br label %cond.end197

cond.false194:                                    ; preds = %for.body174
  %245 = load ptr, ptr %ep, align 8, !tbaa !4
  %rdeg195 = getelementptr inbounds %struct.Element, ptr %245, i32 0, i32 1
  %246 = load i64, ptr %rdeg195, align 8, !tbaa !52
  %247 = load i64, ptr %rdeg0, align 8, !tbaa !11
  %sub196 = sub nsw i64 %246, %247
  br label %cond.end197

cond.end197:                                      ; preds = %cond.false194, %cond.true193
  %cond198 = phi i64 [ %244, %cond.true193 ], [ %sub196, %cond.false194 ]
  store i64 %cond198, ptr %extrdeg, align 8, !tbaa !11
  %248 = load ptr, ptr %ep, align 8, !tbaa !4
  %cdeg199 = getelementptr inbounds %struct.Element, ptr %248, i32 0, i32 0
  %249 = load i64, ptr %cdeg199, align 8, !tbaa !44
  %250 = load i64, ptr %cdeg0, align 8, !tbaa !11
  %cmp200 = icmp slt i64 %249, %250
  br i1 %cmp200, label %cond.true202, label %cond.false203

cond.true202:                                     ; preds = %cond.end197
  %251 = load i64, ptr %nrowsleft, align 8, !tbaa !11
  br label %cond.end206

cond.false203:                                    ; preds = %cond.end197
  %252 = load ptr, ptr %ep, align 8, !tbaa !4
  %cdeg204 = getelementptr inbounds %struct.Element, ptr %252, i32 0, i32 0
  %253 = load i64, ptr %cdeg204, align 8, !tbaa !44
  %254 = load i64, ptr %cdeg0, align 8, !tbaa !11
  %sub205 = sub nsw i64 %253, %254
  br label %cond.end206

cond.end206:                                      ; preds = %cond.false203, %cond.true202
  %cond207 = phi i64 [ %251, %cond.true202 ], [ %sub205, %cond.false203 ]
  store i64 %cond207, ptr %extcdeg, align 8, !tbaa !11
  %255 = load i64, ptr %ncolsleft, align 8, !tbaa !11
  %256 = load i64, ptr %extrdeg, align 8, !tbaa !11
  %sub208 = sub nsw i64 %255, %256
  store i64 %sub208, ptr %ncols_to_assemble, align 8, !tbaa !11
  %257 = load i64, ptr %nrowsleft, align 8, !tbaa !11
  %258 = load i64, ptr %extcdeg, align 8, !tbaa !11
  %sub209 = sub nsw i64 %257, %258
  store i64 %sub209, ptr %nrows_to_assemble, align 8, !tbaa !11
  %259 = load i64, ptr %extrdeg, align 8, !tbaa !11
  %cmp210 = icmp eq i64 %259, 0
  br i1 %cmp210, label %land.lhs.true212, label %if.else409

land.lhs.true212:                                 ; preds = %cond.end206
  %260 = load i64, ptr %extcdeg, align 8, !tbaa !11
  %cmp213 = icmp eq i64 %260, 0
  br i1 %cmp213, label %if.then215, label %if.else409

if.then215:                                       ; preds = %land.lhs.true212
  %261 = load i64, ptr %nrows, align 8, !tbaa !11
  %262 = load i64, ptr %nrowsleft, align 8, !tbaa !11
  %cmp216 = icmp eq i64 %261, %262
  br i1 %cmp216, label %if.then218, label %if.else306

if.then218:                                       ; preds = %if.then215
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond219

for.cond219:                                      ; preds = %for.inc228, %if.then218
  %263 = load i64, ptr %i, align 8, !tbaa !11
  %264 = load i64, ptr %nrows, align 8, !tbaa !11
  %cmp220 = icmp slt i64 %263, %264
  br i1 %cmp220, label %for.body222, label %for.end230

for.body222:                                      ; preds = %for.cond219
  %265 = load ptr, ptr %Rows, align 8, !tbaa !4
  %266 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx223 = getelementptr inbounds i64, ptr %265, i64 %266
  %267 = load i64, ptr %arrayidx223, align 8, !tbaa !11
  store i64 %267, ptr %row, align 8, !tbaa !11
  %268 = load i64, ptr %ncolsleft, align 8, !tbaa !11
  %269 = load ptr, ptr %Row_degree, align 8, !tbaa !4
  %270 = load i64, ptr %row, align 8, !tbaa !11
  %arrayidx224 = getelementptr inbounds i64, ptr %269, i64 %270
  %271 = load i64, ptr %arrayidx224, align 8, !tbaa !11
  %sub225 = sub nsw i64 %271, %268
  store i64 %sub225, ptr %arrayidx224, align 8, !tbaa !11
  %272 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %273 = load i64, ptr %row, align 8, !tbaa !11
  %arrayidx226 = getelementptr inbounds i64, ptr %272, i64 %273
  %274 = load i64, ptr %arrayidx226, align 8, !tbaa !11
  %275 = load ptr, ptr %Wm, align 8, !tbaa !4
  %276 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx227 = getelementptr inbounds i64, ptr %275, i64 %276
  store i64 %274, ptr %arrayidx227, align 8, !tbaa !11
  br label %for.inc228

for.inc228:                                       ; preds = %for.body222
  %277 = load i64, ptr %i, align 8, !tbaa !11
  %inc229 = add nsw i64 %277, 1
  store i64 %inc229, ptr %i, align 8, !tbaa !11
  br label %for.cond219, !llvm.loop !57

for.end230:                                       ; preds = %for.cond219
  %278 = load i64, ptr %ncols, align 8, !tbaa !11
  %279 = load i64, ptr %ncolsleft, align 8, !tbaa !11
  %cmp231 = icmp eq i64 %278, %279
  br i1 %cmp231, label %if.then233, label %if.else

if.then233:                                       ; preds = %for.end230
  store i64 0, ptr %j, align 8, !tbaa !11
  br label %for.cond234

for.cond234:                                      ; preds = %for.inc264, %if.then233
  %280 = load i64, ptr %j, align 8, !tbaa !11
  %281 = load i64, ptr %ncols, align 8, !tbaa !11
  %cmp235 = icmp slt i64 %280, %281
  br i1 %cmp235, label %for.body237, label %for.end266

for.body237:                                      ; preds = %for.cond234
  %282 = load ptr, ptr %Cols, align 8, !tbaa !4
  %283 = load i64, ptr %j, align 8, !tbaa !11
  %arrayidx238 = getelementptr inbounds i64, ptr %282, i64 %283
  %284 = load i64, ptr %arrayidx238, align 8, !tbaa !11
  store i64 %284, ptr %col, align 8, !tbaa !11
  %285 = load ptr, ptr %Fcblock, align 8, !tbaa !4
  %286 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %287 = load i64, ptr %col, align 8, !tbaa !11
  %arrayidx239 = getelementptr inbounds i64, ptr %286, i64 %287
  %288 = load i64, ptr %arrayidx239, align 8, !tbaa !11
  %add.ptr240 = getelementptr inbounds %struct.DoubleComplex, ptr %285, i64 %288
  store ptr %add.ptr240, ptr %Fcol, align 8, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond241

for.cond241:                                      ; preds = %for.inc260, %for.body237
  %289 = load i64, ptr %i, align 8, !tbaa !11
  %290 = load i64, ptr %nrows, align 8, !tbaa !11
  %cmp242 = icmp slt i64 %289, %290
  br i1 %cmp242, label %for.body244, label %for.end262

for.body244:                                      ; preds = %for.cond241
  %291 = load ptr, ptr %S, align 8, !tbaa !4
  %292 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx245 = getelementptr inbounds %struct.DoubleComplex, ptr %291, i64 %292
  %component = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx245, i32 0, i32 0
  %arrayidx246 = getelementptr inbounds [2 x double], ptr %component, i64 0, i64 0
  %293 = load double, ptr %arrayidx246, align 8, !tbaa !58
  %294 = load ptr, ptr %Fcol, align 8, !tbaa !4
  %295 = load ptr, ptr %Wm, align 8, !tbaa !4
  %296 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx247 = getelementptr inbounds i64, ptr %295, i64 %296
  %297 = load i64, ptr %arrayidx247, align 8, !tbaa !11
  %arrayidx248 = getelementptr inbounds %struct.DoubleComplex, ptr %294, i64 %297
  %component249 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx248, i32 0, i32 0
  %arrayidx250 = getelementptr inbounds [2 x double], ptr %component249, i64 0, i64 0
  %298 = load double, ptr %arrayidx250, align 8, !tbaa !58
  %add251 = fadd double %298, %293
  store double %add251, ptr %arrayidx250, align 8, !tbaa !58
  %299 = load ptr, ptr %S, align 8, !tbaa !4
  %300 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx252 = getelementptr inbounds %struct.DoubleComplex, ptr %299, i64 %300
  %component253 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx252, i32 0, i32 0
  %arrayidx254 = getelementptr inbounds [2 x double], ptr %component253, i64 0, i64 1
  %301 = load double, ptr %arrayidx254, align 8, !tbaa !58
  %302 = load ptr, ptr %Fcol, align 8, !tbaa !4
  %303 = load ptr, ptr %Wm, align 8, !tbaa !4
  %304 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx255 = getelementptr inbounds i64, ptr %303, i64 %304
  %305 = load i64, ptr %arrayidx255, align 8, !tbaa !11
  %arrayidx256 = getelementptr inbounds %struct.DoubleComplex, ptr %302, i64 %305
  %component257 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx256, i32 0, i32 0
  %arrayidx258 = getelementptr inbounds [2 x double], ptr %component257, i64 0, i64 1
  %306 = load double, ptr %arrayidx258, align 8, !tbaa !58
  %add259 = fadd double %306, %301
  store double %add259, ptr %arrayidx258, align 8, !tbaa !58
  br label %for.inc260

for.inc260:                                       ; preds = %for.body244
  %307 = load i64, ptr %i, align 8, !tbaa !11
  %inc261 = add nsw i64 %307, 1
  store i64 %inc261, ptr %i, align 8, !tbaa !11
  br label %for.cond241, !llvm.loop !59

for.end262:                                       ; preds = %for.cond241
  %308 = load i64, ptr %nrows, align 8, !tbaa !11
  %309 = load ptr, ptr %S, align 8, !tbaa !4
  %add.ptr263 = getelementptr inbounds %struct.DoubleComplex, ptr %309, i64 %308
  store ptr %add.ptr263, ptr %S, align 8, !tbaa !4
  br label %for.inc264

for.inc264:                                       ; preds = %for.end262
  %310 = load i64, ptr %j, align 8, !tbaa !11
  %inc265 = add nsw i64 %310, 1
  store i64 %inc265, ptr %j, align 8, !tbaa !11
  br label %for.cond234, !llvm.loop !60

for.end266:                                       ; preds = %for.cond234
  br label %if.end305

if.else:                                          ; preds = %for.end230
  store i64 0, ptr %j, align 8, !tbaa !11
  br label %for.cond267

for.cond267:                                      ; preds = %for.inc302, %if.else
  %311 = load i64, ptr %j, align 8, !tbaa !11
  %312 = load i64, ptr %ncols, align 8, !tbaa !11
  %cmp268 = icmp slt i64 %311, %312
  br i1 %cmp268, label %for.body270, label %for.end304

for.body270:                                      ; preds = %for.cond267
  %313 = load ptr, ptr %Cols, align 8, !tbaa !4
  %314 = load i64, ptr %j, align 8, !tbaa !11
  %arrayidx271 = getelementptr inbounds i64, ptr %313, i64 %314
  %315 = load i64, ptr %arrayidx271, align 8, !tbaa !11
  store i64 %315, ptr %col, align 8, !tbaa !11
  %316 = load i64, ptr %col, align 8, !tbaa !11
  %cmp272 = icmp sge i64 %316, 0
  br i1 %cmp272, label %if.then274, label %if.end300

if.then274:                                       ; preds = %for.body270
  %317 = load ptr, ptr %Fcblock, align 8, !tbaa !4
  %318 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %319 = load i64, ptr %col, align 8, !tbaa !11
  %arrayidx275 = getelementptr inbounds i64, ptr %318, i64 %319
  %320 = load i64, ptr %arrayidx275, align 8, !tbaa !11
  %add.ptr276 = getelementptr inbounds %struct.DoubleComplex, ptr %317, i64 %320
  store ptr %add.ptr276, ptr %Fcol, align 8, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond277

for.cond277:                                      ; preds = %for.inc297, %if.then274
  %321 = load i64, ptr %i, align 8, !tbaa !11
  %322 = load i64, ptr %nrows, align 8, !tbaa !11
  %cmp278 = icmp slt i64 %321, %322
  br i1 %cmp278, label %for.body280, label %for.end299

for.body280:                                      ; preds = %for.cond277
  %323 = load ptr, ptr %S, align 8, !tbaa !4
  %324 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx281 = getelementptr inbounds %struct.DoubleComplex, ptr %323, i64 %324
  %component282 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx281, i32 0, i32 0
  %arrayidx283 = getelementptr inbounds [2 x double], ptr %component282, i64 0, i64 0
  %325 = load double, ptr %arrayidx283, align 8, !tbaa !58
  %326 = load ptr, ptr %Fcol, align 8, !tbaa !4
  %327 = load ptr, ptr %Wm, align 8, !tbaa !4
  %328 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx284 = getelementptr inbounds i64, ptr %327, i64 %328
  %329 = load i64, ptr %arrayidx284, align 8, !tbaa !11
  %arrayidx285 = getelementptr inbounds %struct.DoubleComplex, ptr %326, i64 %329
  %component286 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx285, i32 0, i32 0
  %arrayidx287 = getelementptr inbounds [2 x double], ptr %component286, i64 0, i64 0
  %330 = load double, ptr %arrayidx287, align 8, !tbaa !58
  %add288 = fadd double %330, %325
  store double %add288, ptr %arrayidx287, align 8, !tbaa !58
  %331 = load ptr, ptr %S, align 8, !tbaa !4
  %332 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx289 = getelementptr inbounds %struct.DoubleComplex, ptr %331, i64 %332
  %component290 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx289, i32 0, i32 0
  %arrayidx291 = getelementptr inbounds [2 x double], ptr %component290, i64 0, i64 1
  %333 = load double, ptr %arrayidx291, align 8, !tbaa !58
  %334 = load ptr, ptr %Fcol, align 8, !tbaa !4
  %335 = load ptr, ptr %Wm, align 8, !tbaa !4
  %336 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx292 = getelementptr inbounds i64, ptr %335, i64 %336
  %337 = load i64, ptr %arrayidx292, align 8, !tbaa !11
  %arrayidx293 = getelementptr inbounds %struct.DoubleComplex, ptr %334, i64 %337
  %component294 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx293, i32 0, i32 0
  %arrayidx295 = getelementptr inbounds [2 x double], ptr %component294, i64 0, i64 1
  %338 = load double, ptr %arrayidx295, align 8, !tbaa !58
  %add296 = fadd double %338, %333
  store double %add296, ptr %arrayidx295, align 8, !tbaa !58
  br label %for.inc297

for.inc297:                                       ; preds = %for.body280
  %339 = load i64, ptr %i, align 8, !tbaa !11
  %inc298 = add nsw i64 %339, 1
  store i64 %inc298, ptr %i, align 8, !tbaa !11
  br label %for.cond277, !llvm.loop !61

for.end299:                                       ; preds = %for.cond277
  br label %if.end300

if.end300:                                        ; preds = %for.end299, %for.body270
  %340 = load i64, ptr %nrows, align 8, !tbaa !11
  %341 = load ptr, ptr %S, align 8, !tbaa !4
  %add.ptr301 = getelementptr inbounds %struct.DoubleComplex, ptr %341, i64 %340
  store ptr %add.ptr301, ptr %S, align 8, !tbaa !4
  br label %for.inc302

for.inc302:                                       ; preds = %if.end300
  %342 = load i64, ptr %j, align 8, !tbaa !11
  %inc303 = add nsw i64 %342, 1
  store i64 %inc303, ptr %j, align 8, !tbaa !11
  br label %for.cond267, !llvm.loop !62

for.end304:                                       ; preds = %for.cond267
  br label %if.end305

if.end305:                                        ; preds = %for.end304, %for.end266
  br label %if.end406

if.else306:                                       ; preds = %if.then215
  store i64 0, ptr %ngetrows, align 8, !tbaa !11
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond307

for.cond307:                                      ; preds = %for.inc322, %if.else306
  %343 = load i64, ptr %i, align 8, !tbaa !11
  %344 = load i64, ptr %nrows, align 8, !tbaa !11
  %cmp308 = icmp slt i64 %343, %344
  br i1 %cmp308, label %for.body310, label %for.end324

for.body310:                                      ; preds = %for.cond307
  %345 = load ptr, ptr %Rows, align 8, !tbaa !4
  %346 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx311 = getelementptr inbounds i64, ptr %345, i64 %346
  %347 = load i64, ptr %arrayidx311, align 8, !tbaa !11
  store i64 %347, ptr %row, align 8, !tbaa !11
  %348 = load i64, ptr %row, align 8, !tbaa !11
  %cmp312 = icmp sge i64 %348, 0
  br i1 %cmp312, label %if.then314, label %if.end321

if.then314:                                       ; preds = %for.body310
  %349 = load i64, ptr %ncolsleft, align 8, !tbaa !11
  %350 = load ptr, ptr %Row_degree, align 8, !tbaa !4
  %351 = load i64, ptr %row, align 8, !tbaa !11
  %arrayidx315 = getelementptr inbounds i64, ptr %350, i64 %351
  %352 = load i64, ptr %arrayidx315, align 8, !tbaa !11
  %sub316 = sub nsw i64 %352, %349
  store i64 %sub316, ptr %arrayidx315, align 8, !tbaa !11
  %353 = load i64, ptr %i, align 8, !tbaa !11
  %354 = load ptr, ptr %Woo, align 8, !tbaa !4
  %355 = load i64, ptr %ngetrows, align 8, !tbaa !11
  %arrayidx317 = getelementptr inbounds i64, ptr %354, i64 %355
  store i64 %353, ptr %arrayidx317, align 8, !tbaa !11
  %356 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %357 = load i64, ptr %row, align 8, !tbaa !11
  %arrayidx318 = getelementptr inbounds i64, ptr %356, i64 %357
  %358 = load i64, ptr %arrayidx318, align 8, !tbaa !11
  %359 = load ptr, ptr %Wm, align 8, !tbaa !4
  %360 = load i64, ptr %ngetrows, align 8, !tbaa !11
  %inc319 = add nsw i64 %360, 1
  store i64 %inc319, ptr %ngetrows, align 8, !tbaa !11
  %arrayidx320 = getelementptr inbounds i64, ptr %359, i64 %360
  store i64 %358, ptr %arrayidx320, align 8, !tbaa !11
  br label %if.end321

if.end321:                                        ; preds = %if.then314, %for.body310
  br label %for.inc322

for.inc322:                                       ; preds = %if.end321
  %361 = load i64, ptr %i, align 8, !tbaa !11
  %inc323 = add nsw i64 %361, 1
  store i64 %inc323, ptr %i, align 8, !tbaa !11
  br label %for.cond307, !llvm.loop !63

for.end324:                                       ; preds = %for.cond307
  %362 = load i64, ptr %ncols, align 8, !tbaa !11
  %363 = load i64, ptr %ncolsleft, align 8, !tbaa !11
  %cmp325 = icmp eq i64 %362, %363
  br i1 %cmp325, label %if.then327, label %if.else364

if.then327:                                       ; preds = %for.end324
  store i64 0, ptr %j, align 8, !tbaa !11
  br label %for.cond328

for.cond328:                                      ; preds = %for.inc361, %if.then327
  %364 = load i64, ptr %j, align 8, !tbaa !11
  %365 = load i64, ptr %ncols, align 8, !tbaa !11
  %cmp329 = icmp slt i64 %364, %365
  br i1 %cmp329, label %for.body331, label %for.end363

for.body331:                                      ; preds = %for.cond328
  %366 = load ptr, ptr %Cols, align 8, !tbaa !4
  %367 = load i64, ptr %j, align 8, !tbaa !11
  %arrayidx332 = getelementptr inbounds i64, ptr %366, i64 %367
  %368 = load i64, ptr %arrayidx332, align 8, !tbaa !11
  store i64 %368, ptr %col, align 8, !tbaa !11
  %369 = load ptr, ptr %Fcblock, align 8, !tbaa !4
  %370 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %371 = load i64, ptr %col, align 8, !tbaa !11
  %arrayidx333 = getelementptr inbounds i64, ptr %370, i64 %371
  %372 = load i64, ptr %arrayidx333, align 8, !tbaa !11
  %add.ptr334 = getelementptr inbounds %struct.DoubleComplex, ptr %369, i64 %372
  store ptr %add.ptr334, ptr %Fcol, align 8, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond335

for.cond335:                                      ; preds = %for.inc357, %for.body331
  %373 = load i64, ptr %i, align 8, !tbaa !11
  %374 = load i64, ptr %nrowsleft, align 8, !tbaa !11
  %cmp336 = icmp slt i64 %373, %374
  br i1 %cmp336, label %for.body338, label %for.end359

for.body338:                                      ; preds = %for.cond335
  %375 = load ptr, ptr %S, align 8, !tbaa !4
  %376 = load ptr, ptr %Woo, align 8, !tbaa !4
  %377 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx339 = getelementptr inbounds i64, ptr %376, i64 %377
  %378 = load i64, ptr %arrayidx339, align 8, !tbaa !11
  %arrayidx340 = getelementptr inbounds %struct.DoubleComplex, ptr %375, i64 %378
  %component341 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx340, i32 0, i32 0
  %arrayidx342 = getelementptr inbounds [2 x double], ptr %component341, i64 0, i64 0
  %379 = load double, ptr %arrayidx342, align 8, !tbaa !58
  %380 = load ptr, ptr %Fcol, align 8, !tbaa !4
  %381 = load ptr, ptr %Wm, align 8, !tbaa !4
  %382 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx343 = getelementptr inbounds i64, ptr %381, i64 %382
  %383 = load i64, ptr %arrayidx343, align 8, !tbaa !11
  %arrayidx344 = getelementptr inbounds %struct.DoubleComplex, ptr %380, i64 %383
  %component345 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx344, i32 0, i32 0
  %arrayidx346 = getelementptr inbounds [2 x double], ptr %component345, i64 0, i64 0
  %384 = load double, ptr %arrayidx346, align 8, !tbaa !58
  %add347 = fadd double %384, %379
  store double %add347, ptr %arrayidx346, align 8, !tbaa !58
  %385 = load ptr, ptr %S, align 8, !tbaa !4
  %386 = load ptr, ptr %Woo, align 8, !tbaa !4
  %387 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx348 = getelementptr inbounds i64, ptr %386, i64 %387
  %388 = load i64, ptr %arrayidx348, align 8, !tbaa !11
  %arrayidx349 = getelementptr inbounds %struct.DoubleComplex, ptr %385, i64 %388
  %component350 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx349, i32 0, i32 0
  %arrayidx351 = getelementptr inbounds [2 x double], ptr %component350, i64 0, i64 1
  %389 = load double, ptr %arrayidx351, align 8, !tbaa !58
  %390 = load ptr, ptr %Fcol, align 8, !tbaa !4
  %391 = load ptr, ptr %Wm, align 8, !tbaa !4
  %392 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx352 = getelementptr inbounds i64, ptr %391, i64 %392
  %393 = load i64, ptr %arrayidx352, align 8, !tbaa !11
  %arrayidx353 = getelementptr inbounds %struct.DoubleComplex, ptr %390, i64 %393
  %component354 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx353, i32 0, i32 0
  %arrayidx355 = getelementptr inbounds [2 x double], ptr %component354, i64 0, i64 1
  %394 = load double, ptr %arrayidx355, align 8, !tbaa !58
  %add356 = fadd double %394, %389
  store double %add356, ptr %arrayidx355, align 8, !tbaa !58
  br label %for.inc357

for.inc357:                                       ; preds = %for.body338
  %395 = load i64, ptr %i, align 8, !tbaa !11
  %inc358 = add nsw i64 %395, 1
  store i64 %inc358, ptr %i, align 8, !tbaa !11
  br label %for.cond335, !llvm.loop !64

for.end359:                                       ; preds = %for.cond335
  %396 = load i64, ptr %nrows, align 8, !tbaa !11
  %397 = load ptr, ptr %S, align 8, !tbaa !4
  %add.ptr360 = getelementptr inbounds %struct.DoubleComplex, ptr %397, i64 %396
  store ptr %add.ptr360, ptr %S, align 8, !tbaa !4
  br label %for.inc361

for.inc361:                                       ; preds = %for.end359
  %398 = load i64, ptr %j, align 8, !tbaa !11
  %inc362 = add nsw i64 %398, 1
  store i64 %inc362, ptr %j, align 8, !tbaa !11
  br label %for.cond328, !llvm.loop !65

for.end363:                                       ; preds = %for.cond328
  br label %if.end405

if.else364:                                       ; preds = %for.end324
  store i64 0, ptr %j, align 8, !tbaa !11
  br label %for.cond365

for.cond365:                                      ; preds = %for.inc402, %if.else364
  %399 = load i64, ptr %j, align 8, !tbaa !11
  %400 = load i64, ptr %ncols, align 8, !tbaa !11
  %cmp366 = icmp slt i64 %399, %400
  br i1 %cmp366, label %for.body368, label %for.end404

for.body368:                                      ; preds = %for.cond365
  %401 = load ptr, ptr %Cols, align 8, !tbaa !4
  %402 = load i64, ptr %j, align 8, !tbaa !11
  %arrayidx369 = getelementptr inbounds i64, ptr %401, i64 %402
  %403 = load i64, ptr %arrayidx369, align 8, !tbaa !11
  store i64 %403, ptr %col, align 8, !tbaa !11
  %404 = load i64, ptr %col, align 8, !tbaa !11
  %cmp370 = icmp sge i64 %404, 0
  br i1 %cmp370, label %if.then372, label %if.end400

if.then372:                                       ; preds = %for.body368
  %405 = load ptr, ptr %Fcblock, align 8, !tbaa !4
  %406 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %407 = load i64, ptr %col, align 8, !tbaa !11
  %arrayidx373 = getelementptr inbounds i64, ptr %406, i64 %407
  %408 = load i64, ptr %arrayidx373, align 8, !tbaa !11
  %add.ptr374 = getelementptr inbounds %struct.DoubleComplex, ptr %405, i64 %408
  store ptr %add.ptr374, ptr %Fcol, align 8, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond375

for.cond375:                                      ; preds = %for.inc397, %if.then372
  %409 = load i64, ptr %i, align 8, !tbaa !11
  %410 = load i64, ptr %nrowsleft, align 8, !tbaa !11
  %cmp376 = icmp slt i64 %409, %410
  br i1 %cmp376, label %for.body378, label %for.end399

for.body378:                                      ; preds = %for.cond375
  %411 = load ptr, ptr %S, align 8, !tbaa !4
  %412 = load ptr, ptr %Woo, align 8, !tbaa !4
  %413 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx379 = getelementptr inbounds i64, ptr %412, i64 %413
  %414 = load i64, ptr %arrayidx379, align 8, !tbaa !11
  %arrayidx380 = getelementptr inbounds %struct.DoubleComplex, ptr %411, i64 %414
  %component381 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx380, i32 0, i32 0
  %arrayidx382 = getelementptr inbounds [2 x double], ptr %component381, i64 0, i64 0
  %415 = load double, ptr %arrayidx382, align 8, !tbaa !58
  %416 = load ptr, ptr %Fcol, align 8, !tbaa !4
  %417 = load ptr, ptr %Wm, align 8, !tbaa !4
  %418 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx383 = getelementptr inbounds i64, ptr %417, i64 %418
  %419 = load i64, ptr %arrayidx383, align 8, !tbaa !11
  %arrayidx384 = getelementptr inbounds %struct.DoubleComplex, ptr %416, i64 %419
  %component385 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx384, i32 0, i32 0
  %arrayidx386 = getelementptr inbounds [2 x double], ptr %component385, i64 0, i64 0
  %420 = load double, ptr %arrayidx386, align 8, !tbaa !58
  %add387 = fadd double %420, %415
  store double %add387, ptr %arrayidx386, align 8, !tbaa !58
  %421 = load ptr, ptr %S, align 8, !tbaa !4
  %422 = load ptr, ptr %Woo, align 8, !tbaa !4
  %423 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx388 = getelementptr inbounds i64, ptr %422, i64 %423
  %424 = load i64, ptr %arrayidx388, align 8, !tbaa !11
  %arrayidx389 = getelementptr inbounds %struct.DoubleComplex, ptr %421, i64 %424
  %component390 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx389, i32 0, i32 0
  %arrayidx391 = getelementptr inbounds [2 x double], ptr %component390, i64 0, i64 1
  %425 = load double, ptr %arrayidx391, align 8, !tbaa !58
  %426 = load ptr, ptr %Fcol, align 8, !tbaa !4
  %427 = load ptr, ptr %Wm, align 8, !tbaa !4
  %428 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx392 = getelementptr inbounds i64, ptr %427, i64 %428
  %429 = load i64, ptr %arrayidx392, align 8, !tbaa !11
  %arrayidx393 = getelementptr inbounds %struct.DoubleComplex, ptr %426, i64 %429
  %component394 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx393, i32 0, i32 0
  %arrayidx395 = getelementptr inbounds [2 x double], ptr %component394, i64 0, i64 1
  %430 = load double, ptr %arrayidx395, align 8, !tbaa !58
  %add396 = fadd double %430, %425
  store double %add396, ptr %arrayidx395, align 8, !tbaa !58
  br label %for.inc397

for.inc397:                                       ; preds = %for.body378
  %431 = load i64, ptr %i, align 8, !tbaa !11
  %inc398 = add nsw i64 %431, 1
  store i64 %inc398, ptr %i, align 8, !tbaa !11
  br label %for.cond375, !llvm.loop !66

for.end399:                                       ; preds = %for.cond375
  br label %if.end400

if.end400:                                        ; preds = %for.end399, %for.body368
  %432 = load i64, ptr %nrows, align 8, !tbaa !11
  %433 = load ptr, ptr %S, align 8, !tbaa !4
  %add.ptr401 = getelementptr inbounds %struct.DoubleComplex, ptr %433, i64 %432
  store ptr %add.ptr401, ptr %S, align 8, !tbaa !4
  br label %for.inc402

for.inc402:                                       ; preds = %if.end400
  %434 = load i64, ptr %j, align 8, !tbaa !11
  %inc403 = add nsw i64 %434, 1
  store i64 %inc403, ptr %j, align 8, !tbaa !11
  br label %for.cond365, !llvm.loop !67

for.end404:                                       ; preds = %for.cond365
  br label %if.end405

if.end405:                                        ; preds = %for.end404, %for.end363
  br label %if.end406

if.end406:                                        ; preds = %if.end405, %if.end305
  %435 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %436 = load ptr, ptr %E, align 8, !tbaa !4
  %437 = load i64, ptr %e, align 8, !tbaa !11
  %arrayidx407 = getelementptr inbounds i64, ptr %436, i64 %437
  %438 = load i64, ptr %arrayidx407, align 8, !tbaa !11
  call void @umfzl_mem_free_tail_block(ptr noundef %435, i64 noundef %438)
  %439 = load ptr, ptr %E, align 8, !tbaa !4
  %440 = load i64, ptr %e, align 8, !tbaa !11
  %arrayidx408 = getelementptr inbounds i64, ptr %439, i64 %440
  store i64 0, ptr %arrayidx408, align 8, !tbaa !11
  br label %if.end676

if.else409:                                       ; preds = %land.lhs.true212, %cond.end206
  %441 = load i64, ptr %extcdeg, align 8, !tbaa !11
  %cmp410 = icmp eq i64 %441, 0
  br i1 %cmp410, label %if.then412, label %if.else552

if.then412:                                       ; preds = %if.else409
  %442 = load i64, ptr %ncols_to_assemble, align 8, !tbaa !11
  %cmp413 = icmp sgt i64 %442, 0
  br i1 %cmp413, label %if.then415, label %if.end551

if.then415:                                       ; preds = %if.then412
  call void @llvm.lifetime.start.p0(i64 8, ptr %skip) #5
  store i64 0, ptr %skip, align 8, !tbaa !11
  %443 = load i64, ptr %ncols_to_assemble, align 8, !tbaa !11
  %mul416 = mul nsw i64 %443, 16
  %444 = load i64, ptr %ncols, align 8, !tbaa !11
  %cmp417 = icmp slt i64 %mul416, %444
  br i1 %cmp417, label %land.lhs.true419, label %if.end423

land.lhs.true419:                                 ; preds = %if.then415
  %445 = load i64, ptr %nrows, align 8, !tbaa !11
  %cmp420 = icmp eq i64 %445, 1
  br i1 %cmp420, label %if.then422, label %if.end423

if.then422:                                       ; preds = %land.lhs.true419
  store i64 1, ptr %skip, align 8, !tbaa !11
  %446 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %any_skip = getelementptr inbounds %struct.WorkType, ptr %446, i32 0, i32 47
  store i64 1, ptr %any_skip, align 8, !tbaa !68
  br label %if.end423

if.end423:                                        ; preds = %if.then422, %land.lhs.true419, %if.then415
  %447 = load i64, ptr %skip, align 8, !tbaa !11
  %tobool424 = icmp ne i64 %447, 0
  br i1 %tobool424, label %if.end550, label %if.then425

if.then425:                                       ; preds = %if.end423
  %448 = load i64, ptr %nrows, align 8, !tbaa !11
  %449 = load i64, ptr %nrowsleft, align 8, !tbaa !11
  %cmp426 = icmp eq i64 %448, %449
  br i1 %cmp426, label %if.then428, label %if.else484

if.then428:                                       ; preds = %if.then425
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond429

for.cond429:                                      ; preds = %for.inc438, %if.then428
  %450 = load i64, ptr %i, align 8, !tbaa !11
  %451 = load i64, ptr %nrows, align 8, !tbaa !11
  %cmp430 = icmp slt i64 %450, %451
  br i1 %cmp430, label %for.body432, label %for.end440

for.body432:                                      ; preds = %for.cond429
  %452 = load ptr, ptr %Rows, align 8, !tbaa !4
  %453 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx433 = getelementptr inbounds i64, ptr %452, i64 %453
  %454 = load i64, ptr %arrayidx433, align 8, !tbaa !11
  store i64 %454, ptr %row, align 8, !tbaa !11
  %455 = load i64, ptr %ncols_to_assemble, align 8, !tbaa !11
  %456 = load ptr, ptr %Row_degree, align 8, !tbaa !4
  %457 = load i64, ptr %row, align 8, !tbaa !11
  %arrayidx434 = getelementptr inbounds i64, ptr %456, i64 %457
  %458 = load i64, ptr %arrayidx434, align 8, !tbaa !11
  %sub435 = sub nsw i64 %458, %455
  store i64 %sub435, ptr %arrayidx434, align 8, !tbaa !11
  %459 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %460 = load i64, ptr %row, align 8, !tbaa !11
  %arrayidx436 = getelementptr inbounds i64, ptr %459, i64 %460
  %461 = load i64, ptr %arrayidx436, align 8, !tbaa !11
  %462 = load ptr, ptr %Wm, align 8, !tbaa !4
  %463 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx437 = getelementptr inbounds i64, ptr %462, i64 %463
  store i64 %461, ptr %arrayidx437, align 8, !tbaa !11
  br label %for.inc438

for.inc438:                                       ; preds = %for.body432
  %464 = load i64, ptr %i, align 8, !tbaa !11
  %inc439 = add nsw i64 %464, 1
  store i64 %inc439, ptr %i, align 8, !tbaa !11
  br label %for.cond429, !llvm.loop !69

for.end440:                                       ; preds = %for.cond429
  store i64 0, ptr %j, align 8, !tbaa !11
  br label %for.cond441

for.cond441:                                      ; preds = %for.inc481, %for.end440
  %465 = load i64, ptr %j, align 8, !tbaa !11
  %466 = load i64, ptr %ncols, align 8, !tbaa !11
  %cmp442 = icmp slt i64 %465, %466
  br i1 %cmp442, label %for.body444, label %for.end483

for.body444:                                      ; preds = %for.cond441
  %467 = load ptr, ptr %Cols, align 8, !tbaa !4
  %468 = load i64, ptr %j, align 8, !tbaa !11
  %arrayidx445 = getelementptr inbounds i64, ptr %467, i64 %468
  %469 = load i64, ptr %arrayidx445, align 8, !tbaa !11
  store i64 %469, ptr %col, align 8, !tbaa !11
  %470 = load i64, ptr %col, align 8, !tbaa !11
  %cmp446 = icmp sge i64 %470, 0
  br i1 %cmp446, label %land.lhs.true448, label %if.end479

land.lhs.true448:                                 ; preds = %for.body444
  %471 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %472 = load i64, ptr %col, align 8, !tbaa !11
  %arrayidx449 = getelementptr inbounds i64, ptr %471, i64 %472
  %473 = load i64, ptr %arrayidx449, align 8, !tbaa !11
  %cmp450 = icmp sge i64 %473, 0
  br i1 %cmp450, label %if.then452, label %if.end479

if.then452:                                       ; preds = %land.lhs.true448
  %474 = load ptr, ptr %Fcblock, align 8, !tbaa !4
  %475 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %476 = load i64, ptr %col, align 8, !tbaa !11
  %arrayidx453 = getelementptr inbounds i64, ptr %475, i64 %476
  %477 = load i64, ptr %arrayidx453, align 8, !tbaa !11
  %add.ptr454 = getelementptr inbounds %struct.DoubleComplex, ptr %474, i64 %477
  store ptr %add.ptr454, ptr %Fcol, align 8, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond455

for.cond455:                                      ; preds = %for.inc475, %if.then452
  %478 = load i64, ptr %i, align 8, !tbaa !11
  %479 = load i64, ptr %nrows, align 8, !tbaa !11
  %cmp456 = icmp slt i64 %478, %479
  br i1 %cmp456, label %for.body458, label %for.end477

for.body458:                                      ; preds = %for.cond455
  %480 = load ptr, ptr %S, align 8, !tbaa !4
  %481 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx459 = getelementptr inbounds %struct.DoubleComplex, ptr %480, i64 %481
  %component460 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx459, i32 0, i32 0
  %arrayidx461 = getelementptr inbounds [2 x double], ptr %component460, i64 0, i64 0
  %482 = load double, ptr %arrayidx461, align 8, !tbaa !58
  %483 = load ptr, ptr %Fcol, align 8, !tbaa !4
  %484 = load ptr, ptr %Wm, align 8, !tbaa !4
  %485 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx462 = getelementptr inbounds i64, ptr %484, i64 %485
  %486 = load i64, ptr %arrayidx462, align 8, !tbaa !11
  %arrayidx463 = getelementptr inbounds %struct.DoubleComplex, ptr %483, i64 %486
  %component464 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx463, i32 0, i32 0
  %arrayidx465 = getelementptr inbounds [2 x double], ptr %component464, i64 0, i64 0
  %487 = load double, ptr %arrayidx465, align 8, !tbaa !58
  %add466 = fadd double %487, %482
  store double %add466, ptr %arrayidx465, align 8, !tbaa !58
  %488 = load ptr, ptr %S, align 8, !tbaa !4
  %489 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx467 = getelementptr inbounds %struct.DoubleComplex, ptr %488, i64 %489
  %component468 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx467, i32 0, i32 0
  %arrayidx469 = getelementptr inbounds [2 x double], ptr %component468, i64 0, i64 1
  %490 = load double, ptr %arrayidx469, align 8, !tbaa !58
  %491 = load ptr, ptr %Fcol, align 8, !tbaa !4
  %492 = load ptr, ptr %Wm, align 8, !tbaa !4
  %493 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx470 = getelementptr inbounds i64, ptr %492, i64 %493
  %494 = load i64, ptr %arrayidx470, align 8, !tbaa !11
  %arrayidx471 = getelementptr inbounds %struct.DoubleComplex, ptr %491, i64 %494
  %component472 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx471, i32 0, i32 0
  %arrayidx473 = getelementptr inbounds [2 x double], ptr %component472, i64 0, i64 1
  %495 = load double, ptr %arrayidx473, align 8, !tbaa !58
  %add474 = fadd double %495, %490
  store double %add474, ptr %arrayidx473, align 8, !tbaa !58
  br label %for.inc475

for.inc475:                                       ; preds = %for.body458
  %496 = load i64, ptr %i, align 8, !tbaa !11
  %inc476 = add nsw i64 %496, 1
  store i64 %inc476, ptr %i, align 8, !tbaa !11
  br label %for.cond455, !llvm.loop !70

for.end477:                                       ; preds = %for.cond455
  %497 = load ptr, ptr %Cols, align 8, !tbaa !4
  %498 = load i64, ptr %j, align 8, !tbaa !11
  %arrayidx478 = getelementptr inbounds i64, ptr %497, i64 %498
  store i64 -1, ptr %arrayidx478, align 8, !tbaa !11
  br label %if.end479

if.end479:                                        ; preds = %for.end477, %land.lhs.true448, %for.body444
  %499 = load i64, ptr %nrows, align 8, !tbaa !11
  %500 = load ptr, ptr %S, align 8, !tbaa !4
  %add.ptr480 = getelementptr inbounds %struct.DoubleComplex, ptr %500, i64 %499
  store ptr %add.ptr480, ptr %S, align 8, !tbaa !4
  br label %for.inc481

for.inc481:                                       ; preds = %if.end479
  %501 = load i64, ptr %j, align 8, !tbaa !11
  %inc482 = add nsw i64 %501, 1
  store i64 %inc482, ptr %j, align 8, !tbaa !11
  br label %for.cond441, !llvm.loop !71

for.end483:                                       ; preds = %for.cond441
  br label %if.end548

if.else484:                                       ; preds = %if.then425
  store i64 0, ptr %ngetrows, align 8, !tbaa !11
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond485

for.cond485:                                      ; preds = %for.inc500, %if.else484
  %502 = load i64, ptr %i, align 8, !tbaa !11
  %503 = load i64, ptr %nrows, align 8, !tbaa !11
  %cmp486 = icmp slt i64 %502, %503
  br i1 %cmp486, label %for.body488, label %for.end502

for.body488:                                      ; preds = %for.cond485
  %504 = load ptr, ptr %Rows, align 8, !tbaa !4
  %505 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx489 = getelementptr inbounds i64, ptr %504, i64 %505
  %506 = load i64, ptr %arrayidx489, align 8, !tbaa !11
  store i64 %506, ptr %row, align 8, !tbaa !11
  %507 = load i64, ptr %row, align 8, !tbaa !11
  %cmp490 = icmp sge i64 %507, 0
  br i1 %cmp490, label %if.then492, label %if.end499

if.then492:                                       ; preds = %for.body488
  %508 = load i64, ptr %ncols_to_assemble, align 8, !tbaa !11
  %509 = load ptr, ptr %Row_degree, align 8, !tbaa !4
  %510 = load i64, ptr %row, align 8, !tbaa !11
  %arrayidx493 = getelementptr inbounds i64, ptr %509, i64 %510
  %511 = load i64, ptr %arrayidx493, align 8, !tbaa !11
  %sub494 = sub nsw i64 %511, %508
  store i64 %sub494, ptr %arrayidx493, align 8, !tbaa !11
  %512 = load i64, ptr %i, align 8, !tbaa !11
  %513 = load ptr, ptr %Woo, align 8, !tbaa !4
  %514 = load i64, ptr %ngetrows, align 8, !tbaa !11
  %arrayidx495 = getelementptr inbounds i64, ptr %513, i64 %514
  store i64 %512, ptr %arrayidx495, align 8, !tbaa !11
  %515 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %516 = load i64, ptr %row, align 8, !tbaa !11
  %arrayidx496 = getelementptr inbounds i64, ptr %515, i64 %516
  %517 = load i64, ptr %arrayidx496, align 8, !tbaa !11
  %518 = load ptr, ptr %Wm, align 8, !tbaa !4
  %519 = load i64, ptr %ngetrows, align 8, !tbaa !11
  %inc497 = add nsw i64 %519, 1
  store i64 %inc497, ptr %ngetrows, align 8, !tbaa !11
  %arrayidx498 = getelementptr inbounds i64, ptr %518, i64 %519
  store i64 %517, ptr %arrayidx498, align 8, !tbaa !11
  br label %if.end499

if.end499:                                        ; preds = %if.then492, %for.body488
  br label %for.inc500

for.inc500:                                       ; preds = %if.end499
  %520 = load i64, ptr %i, align 8, !tbaa !11
  %inc501 = add nsw i64 %520, 1
  store i64 %inc501, ptr %i, align 8, !tbaa !11
  br label %for.cond485, !llvm.loop !72

for.end502:                                       ; preds = %for.cond485
  store i64 0, ptr %j, align 8, !tbaa !11
  br label %for.cond503

for.cond503:                                      ; preds = %for.inc545, %for.end502
  %521 = load i64, ptr %j, align 8, !tbaa !11
  %522 = load i64, ptr %ncols, align 8, !tbaa !11
  %cmp504 = icmp slt i64 %521, %522
  br i1 %cmp504, label %for.body506, label %for.end547

for.body506:                                      ; preds = %for.cond503
  %523 = load ptr, ptr %Cols, align 8, !tbaa !4
  %524 = load i64, ptr %j, align 8, !tbaa !11
  %arrayidx507 = getelementptr inbounds i64, ptr %523, i64 %524
  %525 = load i64, ptr %arrayidx507, align 8, !tbaa !11
  store i64 %525, ptr %col, align 8, !tbaa !11
  %526 = load i64, ptr %col, align 8, !tbaa !11
  %cmp508 = icmp sge i64 %526, 0
  br i1 %cmp508, label %land.lhs.true510, label %if.end543

land.lhs.true510:                                 ; preds = %for.body506
  %527 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %528 = load i64, ptr %col, align 8, !tbaa !11
  %arrayidx511 = getelementptr inbounds i64, ptr %527, i64 %528
  %529 = load i64, ptr %arrayidx511, align 8, !tbaa !11
  %cmp512 = icmp sge i64 %529, 0
  br i1 %cmp512, label %if.then514, label %if.end543

if.then514:                                       ; preds = %land.lhs.true510
  %530 = load ptr, ptr %Fcblock, align 8, !tbaa !4
  %531 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %532 = load i64, ptr %col, align 8, !tbaa !11
  %arrayidx515 = getelementptr inbounds i64, ptr %531, i64 %532
  %533 = load i64, ptr %arrayidx515, align 8, !tbaa !11
  %add.ptr516 = getelementptr inbounds %struct.DoubleComplex, ptr %530, i64 %533
  store ptr %add.ptr516, ptr %Fcol, align 8, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond517

for.cond517:                                      ; preds = %for.inc539, %if.then514
  %534 = load i64, ptr %i, align 8, !tbaa !11
  %535 = load i64, ptr %nrowsleft, align 8, !tbaa !11
  %cmp518 = icmp slt i64 %534, %535
  br i1 %cmp518, label %for.body520, label %for.end541

for.body520:                                      ; preds = %for.cond517
  %536 = load ptr, ptr %S, align 8, !tbaa !4
  %537 = load ptr, ptr %Woo, align 8, !tbaa !4
  %538 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx521 = getelementptr inbounds i64, ptr %537, i64 %538
  %539 = load i64, ptr %arrayidx521, align 8, !tbaa !11
  %arrayidx522 = getelementptr inbounds %struct.DoubleComplex, ptr %536, i64 %539
  %component523 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx522, i32 0, i32 0
  %arrayidx524 = getelementptr inbounds [2 x double], ptr %component523, i64 0, i64 0
  %540 = load double, ptr %arrayidx524, align 8, !tbaa !58
  %541 = load ptr, ptr %Fcol, align 8, !tbaa !4
  %542 = load ptr, ptr %Wm, align 8, !tbaa !4
  %543 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx525 = getelementptr inbounds i64, ptr %542, i64 %543
  %544 = load i64, ptr %arrayidx525, align 8, !tbaa !11
  %arrayidx526 = getelementptr inbounds %struct.DoubleComplex, ptr %541, i64 %544
  %component527 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx526, i32 0, i32 0
  %arrayidx528 = getelementptr inbounds [2 x double], ptr %component527, i64 0, i64 0
  %545 = load double, ptr %arrayidx528, align 8, !tbaa !58
  %add529 = fadd double %545, %540
  store double %add529, ptr %arrayidx528, align 8, !tbaa !58
  %546 = load ptr, ptr %S, align 8, !tbaa !4
  %547 = load ptr, ptr %Woo, align 8, !tbaa !4
  %548 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx530 = getelementptr inbounds i64, ptr %547, i64 %548
  %549 = load i64, ptr %arrayidx530, align 8, !tbaa !11
  %arrayidx531 = getelementptr inbounds %struct.DoubleComplex, ptr %546, i64 %549
  %component532 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx531, i32 0, i32 0
  %arrayidx533 = getelementptr inbounds [2 x double], ptr %component532, i64 0, i64 1
  %550 = load double, ptr %arrayidx533, align 8, !tbaa !58
  %551 = load ptr, ptr %Fcol, align 8, !tbaa !4
  %552 = load ptr, ptr %Wm, align 8, !tbaa !4
  %553 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx534 = getelementptr inbounds i64, ptr %552, i64 %553
  %554 = load i64, ptr %arrayidx534, align 8, !tbaa !11
  %arrayidx535 = getelementptr inbounds %struct.DoubleComplex, ptr %551, i64 %554
  %component536 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx535, i32 0, i32 0
  %arrayidx537 = getelementptr inbounds [2 x double], ptr %component536, i64 0, i64 1
  %555 = load double, ptr %arrayidx537, align 8, !tbaa !58
  %add538 = fadd double %555, %550
  store double %add538, ptr %arrayidx537, align 8, !tbaa !58
  br label %for.inc539

for.inc539:                                       ; preds = %for.body520
  %556 = load i64, ptr %i, align 8, !tbaa !11
  %inc540 = add nsw i64 %556, 1
  store i64 %inc540, ptr %i, align 8, !tbaa !11
  br label %for.cond517, !llvm.loop !73

for.end541:                                       ; preds = %for.cond517
  %557 = load ptr, ptr %Cols, align 8, !tbaa !4
  %558 = load i64, ptr %j, align 8, !tbaa !11
  %arrayidx542 = getelementptr inbounds i64, ptr %557, i64 %558
  store i64 -1, ptr %arrayidx542, align 8, !tbaa !11
  br label %if.end543

if.end543:                                        ; preds = %for.end541, %land.lhs.true510, %for.body506
  %559 = load i64, ptr %nrows, align 8, !tbaa !11
  %560 = load ptr, ptr %S, align 8, !tbaa !4
  %add.ptr544 = getelementptr inbounds %struct.DoubleComplex, ptr %560, i64 %559
  store ptr %add.ptr544, ptr %S, align 8, !tbaa !4
  br label %for.inc545

for.inc545:                                       ; preds = %if.end543
  %561 = load i64, ptr %j, align 8, !tbaa !11
  %inc546 = add nsw i64 %561, 1
  store i64 %inc546, ptr %j, align 8, !tbaa !11
  br label %for.cond503, !llvm.loop !74

for.end547:                                       ; preds = %for.cond503
  br label %if.end548

if.end548:                                        ; preds = %for.end547, %for.end483
  %562 = load i64, ptr %extrdeg, align 8, !tbaa !11
  %563 = load ptr, ptr %ep, align 8, !tbaa !4
  %ncolsleft549 = getelementptr inbounds %struct.Element, ptr %563, i32 0, i32 3
  store i64 %562, ptr %ncolsleft549, align 8, !tbaa !53
  br label %if.end550

if.end550:                                        ; preds = %if.end548, %if.end423
  call void @llvm.lifetime.end.p0(i64 8, ptr %skip) #5
  br label %if.end551

if.end551:                                        ; preds = %if.end550, %if.then412
  br label %if.end675

if.else552:                                       ; preds = %if.else409
  %564 = load i64, ptr %nrows_to_assemble, align 8, !tbaa !11
  %cmp553 = icmp sgt i64 %564, 0
  br i1 %cmp553, label %if.then555, label %if.end674

if.then555:                                       ; preds = %if.else552
  call void @llvm.lifetime.start.p0(i64 8, ptr %skip556) #5
  store i64 0, ptr %skip556, align 8, !tbaa !11
  %565 = load i64, ptr %nrows_to_assemble, align 8, !tbaa !11
  %mul557 = mul nsw i64 %565, 16
  %566 = load i64, ptr %nrows, align 8, !tbaa !11
  %cmp558 = icmp slt i64 %mul557, %566
  br i1 %cmp558, label %land.lhs.true560, label %if.end565

land.lhs.true560:                                 ; preds = %if.then555
  %567 = load i64, ptr %ncols, align 8, !tbaa !11
  %cmp561 = icmp eq i64 %567, 1
  br i1 %cmp561, label %if.then563, label %if.end565

if.then563:                                       ; preds = %land.lhs.true560
  %568 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %any_skip564 = getelementptr inbounds %struct.WorkType, ptr %568, i32 0, i32 47
  store i64 1, ptr %any_skip564, align 8, !tbaa !68
  store i64 1, ptr %skip556, align 8, !tbaa !11
  br label %if.end565

if.end565:                                        ; preds = %if.then563, %land.lhs.true560, %if.then555
  %569 = load i64, ptr %skip556, align 8, !tbaa !11
  %tobool566 = icmp ne i64 %569, 0
  br i1 %tobool566, label %if.end673, label %if.then567

if.then567:                                       ; preds = %if.end565
  store i64 0, ptr %ngetrows, align 8, !tbaa !11
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond568

for.cond568:                                      ; preds = %for.inc588, %if.then567
  %570 = load i64, ptr %i, align 8, !tbaa !11
  %571 = load i64, ptr %nrows, align 8, !tbaa !11
  %cmp569 = icmp slt i64 %570, %571
  br i1 %cmp569, label %for.body571, label %for.end590

for.body571:                                      ; preds = %for.cond568
  %572 = load ptr, ptr %Rows, align 8, !tbaa !4
  %573 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx572 = getelementptr inbounds i64, ptr %572, i64 %573
  %574 = load i64, ptr %arrayidx572, align 8, !tbaa !11
  store i64 %574, ptr %row, align 8, !tbaa !11
  %575 = load i64, ptr %row, align 8, !tbaa !11
  %cmp573 = icmp sge i64 %575, 0
  br i1 %cmp573, label %land.lhs.true575, label %if.end587

land.lhs.true575:                                 ; preds = %for.body571
  %576 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %577 = load i64, ptr %row, align 8, !tbaa !11
  %arrayidx576 = getelementptr inbounds i64, ptr %576, i64 %577
  %578 = load i64, ptr %arrayidx576, align 8, !tbaa !11
  %cmp577 = icmp sge i64 %578, 0
  br i1 %cmp577, label %if.then579, label %if.end587

if.then579:                                       ; preds = %land.lhs.true575
  %579 = load i64, ptr %ncolsleft, align 8, !tbaa !11
  %580 = load ptr, ptr %Row_degree, align 8, !tbaa !4
  %581 = load i64, ptr %row, align 8, !tbaa !11
  %arrayidx580 = getelementptr inbounds i64, ptr %580, i64 %581
  %582 = load i64, ptr %arrayidx580, align 8, !tbaa !11
  %sub581 = sub nsw i64 %582, %579
  store i64 %sub581, ptr %arrayidx580, align 8, !tbaa !11
  %583 = load i64, ptr %i, align 8, !tbaa !11
  %584 = load ptr, ptr %Woo, align 8, !tbaa !4
  %585 = load i64, ptr %ngetrows, align 8, !tbaa !11
  %arrayidx582 = getelementptr inbounds i64, ptr %584, i64 %585
  store i64 %583, ptr %arrayidx582, align 8, !tbaa !11
  %586 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %587 = load i64, ptr %row, align 8, !tbaa !11
  %arrayidx583 = getelementptr inbounds i64, ptr %586, i64 %587
  %588 = load i64, ptr %arrayidx583, align 8, !tbaa !11
  %589 = load ptr, ptr %Wm, align 8, !tbaa !4
  %590 = load i64, ptr %ngetrows, align 8, !tbaa !11
  %inc584 = add nsw i64 %590, 1
  store i64 %inc584, ptr %ngetrows, align 8, !tbaa !11
  %arrayidx585 = getelementptr inbounds i64, ptr %589, i64 %590
  store i64 %588, ptr %arrayidx585, align 8, !tbaa !11
  %591 = load ptr, ptr %Rows, align 8, !tbaa !4
  %592 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx586 = getelementptr inbounds i64, ptr %591, i64 %592
  store i64 -1, ptr %arrayidx586, align 8, !tbaa !11
  br label %if.end587

if.end587:                                        ; preds = %if.then579, %land.lhs.true575, %for.body571
  br label %for.inc588

for.inc588:                                       ; preds = %if.end587
  %593 = load i64, ptr %i, align 8, !tbaa !11
  %inc589 = add nsw i64 %593, 1
  store i64 %inc589, ptr %i, align 8, !tbaa !11
  br label %for.cond568, !llvm.loop !75

for.end590:                                       ; preds = %for.cond568
  %594 = load i64, ptr %ncols, align 8, !tbaa !11
  %595 = load i64, ptr %ncolsleft, align 8, !tbaa !11
  %cmp591 = icmp eq i64 %594, %595
  br i1 %cmp591, label %if.then593, label %if.else630

if.then593:                                       ; preds = %for.end590
  store i64 0, ptr %j, align 8, !tbaa !11
  br label %for.cond594

for.cond594:                                      ; preds = %for.inc627, %if.then593
  %596 = load i64, ptr %j, align 8, !tbaa !11
  %597 = load i64, ptr %ncols, align 8, !tbaa !11
  %cmp595 = icmp slt i64 %596, %597
  br i1 %cmp595, label %for.body597, label %for.end629

for.body597:                                      ; preds = %for.cond594
  %598 = load ptr, ptr %Cols, align 8, !tbaa !4
  %599 = load i64, ptr %j, align 8, !tbaa !11
  %arrayidx598 = getelementptr inbounds i64, ptr %598, i64 %599
  %600 = load i64, ptr %arrayidx598, align 8, !tbaa !11
  store i64 %600, ptr %col, align 8, !tbaa !11
  %601 = load ptr, ptr %Fcblock, align 8, !tbaa !4
  %602 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %603 = load i64, ptr %col, align 8, !tbaa !11
  %arrayidx599 = getelementptr inbounds i64, ptr %602, i64 %603
  %604 = load i64, ptr %arrayidx599, align 8, !tbaa !11
  %add.ptr600 = getelementptr inbounds %struct.DoubleComplex, ptr %601, i64 %604
  store ptr %add.ptr600, ptr %Fcol, align 8, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond601

for.cond601:                                      ; preds = %for.inc623, %for.body597
  %605 = load i64, ptr %i, align 8, !tbaa !11
  %606 = load i64, ptr %nrows_to_assemble, align 8, !tbaa !11
  %cmp602 = icmp slt i64 %605, %606
  br i1 %cmp602, label %for.body604, label %for.end625

for.body604:                                      ; preds = %for.cond601
  %607 = load ptr, ptr %S, align 8, !tbaa !4
  %608 = load ptr, ptr %Woo, align 8, !tbaa !4
  %609 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx605 = getelementptr inbounds i64, ptr %608, i64 %609
  %610 = load i64, ptr %arrayidx605, align 8, !tbaa !11
  %arrayidx606 = getelementptr inbounds %struct.DoubleComplex, ptr %607, i64 %610
  %component607 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx606, i32 0, i32 0
  %arrayidx608 = getelementptr inbounds [2 x double], ptr %component607, i64 0, i64 0
  %611 = load double, ptr %arrayidx608, align 8, !tbaa !58
  %612 = load ptr, ptr %Fcol, align 8, !tbaa !4
  %613 = load ptr, ptr %Wm, align 8, !tbaa !4
  %614 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx609 = getelementptr inbounds i64, ptr %613, i64 %614
  %615 = load i64, ptr %arrayidx609, align 8, !tbaa !11
  %arrayidx610 = getelementptr inbounds %struct.DoubleComplex, ptr %612, i64 %615
  %component611 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx610, i32 0, i32 0
  %arrayidx612 = getelementptr inbounds [2 x double], ptr %component611, i64 0, i64 0
  %616 = load double, ptr %arrayidx612, align 8, !tbaa !58
  %add613 = fadd double %616, %611
  store double %add613, ptr %arrayidx612, align 8, !tbaa !58
  %617 = load ptr, ptr %S, align 8, !tbaa !4
  %618 = load ptr, ptr %Woo, align 8, !tbaa !4
  %619 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx614 = getelementptr inbounds i64, ptr %618, i64 %619
  %620 = load i64, ptr %arrayidx614, align 8, !tbaa !11
  %arrayidx615 = getelementptr inbounds %struct.DoubleComplex, ptr %617, i64 %620
  %component616 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx615, i32 0, i32 0
  %arrayidx617 = getelementptr inbounds [2 x double], ptr %component616, i64 0, i64 1
  %621 = load double, ptr %arrayidx617, align 8, !tbaa !58
  %622 = load ptr, ptr %Fcol, align 8, !tbaa !4
  %623 = load ptr, ptr %Wm, align 8, !tbaa !4
  %624 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx618 = getelementptr inbounds i64, ptr %623, i64 %624
  %625 = load i64, ptr %arrayidx618, align 8, !tbaa !11
  %arrayidx619 = getelementptr inbounds %struct.DoubleComplex, ptr %622, i64 %625
  %component620 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx619, i32 0, i32 0
  %arrayidx621 = getelementptr inbounds [2 x double], ptr %component620, i64 0, i64 1
  %626 = load double, ptr %arrayidx621, align 8, !tbaa !58
  %add622 = fadd double %626, %621
  store double %add622, ptr %arrayidx621, align 8, !tbaa !58
  br label %for.inc623

for.inc623:                                       ; preds = %for.body604
  %627 = load i64, ptr %i, align 8, !tbaa !11
  %inc624 = add nsw i64 %627, 1
  store i64 %inc624, ptr %i, align 8, !tbaa !11
  br label %for.cond601, !llvm.loop !76

for.end625:                                       ; preds = %for.cond601
  %628 = load i64, ptr %nrows, align 8, !tbaa !11
  %629 = load ptr, ptr %S, align 8, !tbaa !4
  %add.ptr626 = getelementptr inbounds %struct.DoubleComplex, ptr %629, i64 %628
  store ptr %add.ptr626, ptr %S, align 8, !tbaa !4
  br label %for.inc627

for.inc627:                                       ; preds = %for.end625
  %630 = load i64, ptr %j, align 8, !tbaa !11
  %inc628 = add nsw i64 %630, 1
  store i64 %inc628, ptr %j, align 8, !tbaa !11
  br label %for.cond594, !llvm.loop !77

for.end629:                                       ; preds = %for.cond594
  br label %if.end671

if.else630:                                       ; preds = %for.end590
  store i64 0, ptr %j, align 8, !tbaa !11
  br label %for.cond631

for.cond631:                                      ; preds = %for.inc668, %if.else630
  %631 = load i64, ptr %j, align 8, !tbaa !11
  %632 = load i64, ptr %ncols, align 8, !tbaa !11
  %cmp632 = icmp slt i64 %631, %632
  br i1 %cmp632, label %for.body634, label %for.end670

for.body634:                                      ; preds = %for.cond631
  %633 = load ptr, ptr %Cols, align 8, !tbaa !4
  %634 = load i64, ptr %j, align 8, !tbaa !11
  %arrayidx635 = getelementptr inbounds i64, ptr %633, i64 %634
  %635 = load i64, ptr %arrayidx635, align 8, !tbaa !11
  store i64 %635, ptr %col, align 8, !tbaa !11
  %636 = load i64, ptr %col, align 8, !tbaa !11
  %cmp636 = icmp sge i64 %636, 0
  br i1 %cmp636, label %if.then638, label %if.end666

if.then638:                                       ; preds = %for.body634
  %637 = load ptr, ptr %Fcblock, align 8, !tbaa !4
  %638 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %639 = load i64, ptr %col, align 8, !tbaa !11
  %arrayidx639 = getelementptr inbounds i64, ptr %638, i64 %639
  %640 = load i64, ptr %arrayidx639, align 8, !tbaa !11
  %add.ptr640 = getelementptr inbounds %struct.DoubleComplex, ptr %637, i64 %640
  store ptr %add.ptr640, ptr %Fcol, align 8, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond641

for.cond641:                                      ; preds = %for.inc663, %if.then638
  %641 = load i64, ptr %i, align 8, !tbaa !11
  %642 = load i64, ptr %nrows_to_assemble, align 8, !tbaa !11
  %cmp642 = icmp slt i64 %641, %642
  br i1 %cmp642, label %for.body644, label %for.end665

for.body644:                                      ; preds = %for.cond641
  %643 = load ptr, ptr %S, align 8, !tbaa !4
  %644 = load ptr, ptr %Woo, align 8, !tbaa !4
  %645 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx645 = getelementptr inbounds i64, ptr %644, i64 %645
  %646 = load i64, ptr %arrayidx645, align 8, !tbaa !11
  %arrayidx646 = getelementptr inbounds %struct.DoubleComplex, ptr %643, i64 %646
  %component647 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx646, i32 0, i32 0
  %arrayidx648 = getelementptr inbounds [2 x double], ptr %component647, i64 0, i64 0
  %647 = load double, ptr %arrayidx648, align 8, !tbaa !58
  %648 = load ptr, ptr %Fcol, align 8, !tbaa !4
  %649 = load ptr, ptr %Wm, align 8, !tbaa !4
  %650 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx649 = getelementptr inbounds i64, ptr %649, i64 %650
  %651 = load i64, ptr %arrayidx649, align 8, !tbaa !11
  %arrayidx650 = getelementptr inbounds %struct.DoubleComplex, ptr %648, i64 %651
  %component651 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx650, i32 0, i32 0
  %arrayidx652 = getelementptr inbounds [2 x double], ptr %component651, i64 0, i64 0
  %652 = load double, ptr %arrayidx652, align 8, !tbaa !58
  %add653 = fadd double %652, %647
  store double %add653, ptr %arrayidx652, align 8, !tbaa !58
  %653 = load ptr, ptr %S, align 8, !tbaa !4
  %654 = load ptr, ptr %Woo, align 8, !tbaa !4
  %655 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx654 = getelementptr inbounds i64, ptr %654, i64 %655
  %656 = load i64, ptr %arrayidx654, align 8, !tbaa !11
  %arrayidx655 = getelementptr inbounds %struct.DoubleComplex, ptr %653, i64 %656
  %component656 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx655, i32 0, i32 0
  %arrayidx657 = getelementptr inbounds [2 x double], ptr %component656, i64 0, i64 1
  %657 = load double, ptr %arrayidx657, align 8, !tbaa !58
  %658 = load ptr, ptr %Fcol, align 8, !tbaa !4
  %659 = load ptr, ptr %Wm, align 8, !tbaa !4
  %660 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx658 = getelementptr inbounds i64, ptr %659, i64 %660
  %661 = load i64, ptr %arrayidx658, align 8, !tbaa !11
  %arrayidx659 = getelementptr inbounds %struct.DoubleComplex, ptr %658, i64 %661
  %component660 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx659, i32 0, i32 0
  %arrayidx661 = getelementptr inbounds [2 x double], ptr %component660, i64 0, i64 1
  %662 = load double, ptr %arrayidx661, align 8, !tbaa !58
  %add662 = fadd double %662, %657
  store double %add662, ptr %arrayidx661, align 8, !tbaa !58
  br label %for.inc663

for.inc663:                                       ; preds = %for.body644
  %663 = load i64, ptr %i, align 8, !tbaa !11
  %inc664 = add nsw i64 %663, 1
  store i64 %inc664, ptr %i, align 8, !tbaa !11
  br label %for.cond641, !llvm.loop !78

for.end665:                                       ; preds = %for.cond641
  br label %if.end666

if.end666:                                        ; preds = %for.end665, %for.body634
  %664 = load i64, ptr %nrows, align 8, !tbaa !11
  %665 = load ptr, ptr %S, align 8, !tbaa !4
  %add.ptr667 = getelementptr inbounds %struct.DoubleComplex, ptr %665, i64 %664
  store ptr %add.ptr667, ptr %S, align 8, !tbaa !4
  br label %for.inc668

for.inc668:                                       ; preds = %if.end666
  %666 = load i64, ptr %j, align 8, !tbaa !11
  %inc669 = add nsw i64 %666, 1
  store i64 %inc669, ptr %j, align 8, !tbaa !11
  br label %for.cond631, !llvm.loop !79

for.end670:                                       ; preds = %for.cond631
  br label %if.end671

if.end671:                                        ; preds = %for.end670, %for.end629
  %667 = load i64, ptr %extcdeg, align 8, !tbaa !11
  %668 = load ptr, ptr %ep, align 8, !tbaa !4
  %nrowsleft672 = getelementptr inbounds %struct.Element, ptr %668, i32 0, i32 2
  store i64 %667, ptr %nrowsleft672, align 8, !tbaa !45
  br label %if.end673

if.end673:                                        ; preds = %if.end671, %if.end565
  call void @llvm.lifetime.end.p0(i64 8, ptr %skip556) #5
  br label %if.end674

if.end674:                                        ; preds = %if.end673, %if.else552
  br label %if.end675

if.end675:                                        ; preds = %if.end674, %if.end551
  br label %if.end676

if.end676:                                        ; preds = %if.end675, %if.end406
  br label %for.inc677

for.inc677:                                       ; preds = %if.end676
  %669 = load i64, ptr %next, align 8, !tbaa !11
  store i64 %669, ptr %e, align 8, !tbaa !11
  br label %for.cond171, !llvm.loop !80

for.end678:                                       ; preds = %for.cond171
  %670 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %any_skip679 = getelementptr inbounds %struct.WorkType, ptr %670, i32 0, i32 47
  %671 = load i64, ptr %any_skip679, align 8, !tbaa !68
  %tobool680 = icmp ne i64 %671, 0
  br i1 %tobool680, label %if.then681, label %if.end682

if.then681:                                       ; preds = %for.end678
  %672 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow = getelementptr inbounds %struct.WorkType, ptr %672, i32 0, i32 42
  %673 = load i64, ptr %pivrow, align 8, !tbaa !81
  %674 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %675 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  call void @row_assemble(i64 noundef %673, ptr noundef %674, ptr noundef %675)
  br label %if.end682

if.end682:                                        ; preds = %if.then681, %for.end678
  %676 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_scan2row = getelementptr inbounds %struct.WorkType, ptr %676, i32 0, i32 48
  %677 = load i64, ptr %do_scan2row, align 8, !tbaa !82
  %tobool683 = icmp ne i64 %677, 0
  br i1 %tobool683, label %if.then684, label %if.end709

if.then684:                                       ; preds = %if.end682
  %678 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fscan_row685 = getelementptr inbounds %struct.WorkType, ptr %678, i32 0, i32 75
  %679 = load i64, ptr %fscan_row685, align 8, !tbaa !38
  store i64 %679, ptr %i2, align 8, !tbaa !11
  br label %for.cond686

for.cond686:                                      ; preds = %for.inc706, %if.then684
  %680 = load i64, ptr %i2, align 8, !tbaa !11
  %681 = load i64, ptr %fnrows, align 8, !tbaa !11
  %cmp687 = icmp slt i64 %680, %681
  br i1 %cmp687, label %for.body689, label %for.end708

for.body689:                                      ; preds = %for.cond686
  %682 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %NewRows690 = getelementptr inbounds %struct.WorkType, ptr %682, i32 0, i32 10
  %683 = load ptr, ptr %NewRows690, align 8, !tbaa !39
  %684 = load i64, ptr %i2, align 8, !tbaa !11
  %arrayidx691 = getelementptr inbounds i64, ptr %683, i64 %684
  %685 = load i64, ptr %arrayidx691, align 8, !tbaa !11
  store i64 %685, ptr %row, align 8, !tbaa !11
  %686 = load i64, ptr %row, align 8, !tbaa !11
  %cmp692 = icmp slt i64 %686, 0
  br i1 %cmp692, label %if.then694, label %if.end697

if.then694:                                       ; preds = %for.body689
  %687 = load i64, ptr %row, align 8, !tbaa !11
  %sub695 = sub nsw i64 0, %687
  %sub696 = sub nsw i64 %sub695, 2
  store i64 %sub696, ptr %row, align 8, !tbaa !11
  br label %if.end697

if.end697:                                        ; preds = %if.then694, %for.body689
  %688 = load i64, ptr %row, align 8, !tbaa !11
  %689 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow698 = getelementptr inbounds %struct.WorkType, ptr %689, i32 0, i32 42
  %690 = load i64, ptr %pivrow698, align 8, !tbaa !81
  %cmp699 = icmp eq i64 %688, %690
  br i1 %cmp699, label %land.lhs.true701, label %if.then704

land.lhs.true701:                                 ; preds = %if.end697
  %691 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %any_skip702 = getelementptr inbounds %struct.WorkType, ptr %691, i32 0, i32 47
  %692 = load i64, ptr %any_skip702, align 8, !tbaa !68
  %tobool703 = icmp ne i64 %692, 0
  br i1 %tobool703, label %if.end705, label %if.then704

if.then704:                                       ; preds = %land.lhs.true701, %if.end697
  %693 = load i64, ptr %row, align 8, !tbaa !11
  %694 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %695 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  call void @row_assemble(i64 noundef %693, ptr noundef %694, ptr noundef %695)
  br label %if.end705

if.end705:                                        ; preds = %if.then704, %land.lhs.true701
  br label %for.inc706

for.inc706:                                       ; preds = %if.end705
  %696 = load i64, ptr %i2, align 8, !tbaa !11
  %inc707 = add nsw i64 %696, 1
  store i64 %inc707, ptr %i2, align 8, !tbaa !11
  br label %for.cond686, !llvm.loop !83

for.end708:                                       ; preds = %for.cond686
  br label %if.end709

if.end709:                                        ; preds = %for.end708, %if.end682
  %697 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %any_skip710 = getelementptr inbounds %struct.WorkType, ptr %697, i32 0, i32 47
  %698 = load i64, ptr %any_skip710, align 8, !tbaa !68
  %tobool711 = icmp ne i64 %698, 0
  br i1 %tobool711, label %if.then712, label %if.end713

if.then712:                                       ; preds = %if.end709
  %699 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol = getelementptr inbounds %struct.WorkType, ptr %699, i32 0, i32 43
  %700 = load i64, ptr %pivcol, align 8, !tbaa !84
  %701 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %702 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  call void @col_assemble(i64 noundef %700, ptr noundef %701, ptr noundef %702)
  br label %if.end713

if.end713:                                        ; preds = %if.then712, %if.end709
  %703 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_scan2col = getelementptr inbounds %struct.WorkType, ptr %703, i32 0, i32 49
  %704 = load i64, ptr %do_scan2col, align 8, !tbaa !85
  %tobool714 = icmp ne i64 %704, 0
  br i1 %tobool714, label %if.then715, label %if.end740

if.then715:                                       ; preds = %if.end713
  %705 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fscan_col716 = getelementptr inbounds %struct.WorkType, ptr %705, i32 0, i32 76
  %706 = load i64, ptr %fscan_col716, align 8, !tbaa !50
  store i64 %706, ptr %j2, align 8, !tbaa !11
  br label %for.cond717

for.cond717:                                      ; preds = %for.inc737, %if.then715
  %707 = load i64, ptr %j2, align 8, !tbaa !11
  %708 = load i64, ptr %fncols, align 8, !tbaa !11
  %cmp718 = icmp slt i64 %707, %708
  br i1 %cmp718, label %for.body720, label %for.end739

for.body720:                                      ; preds = %for.cond717
  %709 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %NewCols721 = getelementptr inbounds %struct.WorkType, ptr %709, i32 0, i32 11
  %710 = load ptr, ptr %NewCols721, align 8, !tbaa !51
  %711 = load i64, ptr %j2, align 8, !tbaa !11
  %arrayidx722 = getelementptr inbounds i64, ptr %710, i64 %711
  %712 = load i64, ptr %arrayidx722, align 8, !tbaa !11
  store i64 %712, ptr %col, align 8, !tbaa !11
  %713 = load i64, ptr %col, align 8, !tbaa !11
  %cmp723 = icmp slt i64 %713, 0
  br i1 %cmp723, label %if.then725, label %if.end728

if.then725:                                       ; preds = %for.body720
  %714 = load i64, ptr %col, align 8, !tbaa !11
  %sub726 = sub nsw i64 0, %714
  %sub727 = sub nsw i64 %sub726, 2
  store i64 %sub727, ptr %col, align 8, !tbaa !11
  br label %if.end728

if.end728:                                        ; preds = %if.then725, %for.body720
  %715 = load i64, ptr %col, align 8, !tbaa !11
  %716 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol729 = getelementptr inbounds %struct.WorkType, ptr %716, i32 0, i32 43
  %717 = load i64, ptr %pivcol729, align 8, !tbaa !84
  %cmp730 = icmp eq i64 %715, %717
  br i1 %cmp730, label %land.lhs.true732, label %if.then735

land.lhs.true732:                                 ; preds = %if.end728
  %718 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %any_skip733 = getelementptr inbounds %struct.WorkType, ptr %718, i32 0, i32 47
  %719 = load i64, ptr %any_skip733, align 8, !tbaa !68
  %tobool734 = icmp ne i64 %719, 0
  br i1 %tobool734, label %if.end736, label %if.then735

if.then735:                                       ; preds = %land.lhs.true732, %if.end728
  %720 = load i64, ptr %col, align 8, !tbaa !11
  %721 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %722 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  call void @col_assemble(i64 noundef %720, ptr noundef %721, ptr noundef %722)
  br label %if.end736

if.end736:                                        ; preds = %if.then735, %land.lhs.true732
  br label %for.inc737

for.inc737:                                       ; preds = %if.end736
  %723 = load i64, ptr %j2, align 8, !tbaa !11
  %inc738 = add nsw i64 %723, 1
  store i64 %inc738, ptr %j2, align 8, !tbaa !11
  br label %for.cond717, !llvm.loop !86

for.end739:                                       ; preds = %for.cond717
  br label %if.end740

if.end740:                                        ; preds = %for.end739, %if.end713
  call void @llvm.lifetime.end.p0(i64 8, ptr %fncols) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %fnrows) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fcpos) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Frpos) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fcol) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fcblock) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %S) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tpend) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ep) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Memory) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Col_tlen) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Col_tuples) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Row_tlen) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Row_degree) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Row_tuples) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Woo) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wm) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Rows) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Cols) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %E) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %prior_Uson) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %prior_Lson) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ncolsleft) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %nrowsleft) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %j2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ngetrows) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ncols_to_assemble) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %nrows_to_assemble) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %son_list) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %cdeg0) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rdeg0) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %extrdeg) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %extcdeg) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tpi) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ncols) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %nrows) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %col) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %row) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @umfzl_mem_free_tail_block(ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @row_assemble(i64 noundef %row, ptr noundef %Numeric, ptr noundef %Work) #4 {
entry:
  %row.addr = alloca i64, align 8
  %Numeric.addr = alloca ptr, align 8
  %Work.addr = alloca ptr, align 8
  %S = alloca ptr, align 8
  %Fcblock = alloca ptr, align 8
  %Frow = alloca ptr, align 8
  %tpi = alloca i64, align 8
  %e = alloca i64, align 8
  %E = alloca ptr, align 8
  %Fcpos = alloca ptr, align 8
  %Frpos = alloca ptr, align 8
  %Row_degree = alloca ptr, align 8
  %Row_tuples = alloca ptr, align 8
  %Row_tlen = alloca ptr, align 8
  %rdeg0 = alloca i64, align 8
  %f = alloca i64, align 8
  %nrows = alloca i64, align 8
  %ncols = alloca i64, align 8
  %Rows = alloca ptr, align 8
  %Cols = alloca ptr, align 8
  %col = alloca i64, align 8
  %ncolsleft = alloca i64, align 8
  %j = alloca i64, align 8
  %tp = alloca ptr, align 8
  %tp1 = alloca ptr, align 8
  %tp2 = alloca ptr, align 8
  %tpend = alloca ptr, align 8
  %Memory = alloca ptr, align 8
  %p = alloca ptr, align 8
  %ep = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %row, ptr %row.addr, align 8, !tbaa !11
  store ptr %Numeric, ptr %Numeric.addr, align 8, !tbaa !4
  store ptr %Work, ptr %Work.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %S) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fcblock) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Frow) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tpi) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %E) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fcpos) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Frpos) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Row_degree) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Row_tuples) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Row_tlen) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %rdeg0) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %nrows) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ncols) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Rows) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Cols) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %col) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ncolsleft) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp2) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tpend) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Memory) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ep) #5
  %0 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Uip = getelementptr inbounds %struct.NumericType, ptr %0, i32 0, i32 24
  %1 = load ptr, ptr %Uip, align 8, !tbaa !18
  store ptr %1, ptr %Row_tuples, align 8, !tbaa !4
  %2 = load ptr, ptr %Row_tuples, align 8, !tbaa !4
  %3 = load i64, ptr %row.addr, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 %3
  %4 = load i64, ptr %arrayidx, align 8, !tbaa !11
  store i64 %4, ptr %tpi, align 8, !tbaa !11
  %5 = load i64, ptr %tpi, align 8, !tbaa !11
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory1 = getelementptr inbounds %struct.NumericType, ptr %6, i32 0, i32 13
  %7 = load ptr, ptr %Memory1, align 8, !tbaa !23
  store ptr %7, ptr %Memory, align 8, !tbaa !4
  %8 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %E2 = getelementptr inbounds %struct.WorkType, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %E2, align 8, !tbaa !22
  store ptr %9, ptr %E, align 8, !tbaa !4
  %10 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fcpos3 = getelementptr inbounds %struct.WorkType, ptr %10, i32 0, i32 64
  %11 = load ptr, ptr %Fcpos3, align 8, !tbaa !13
  store ptr %11, ptr %Fcpos, align 8, !tbaa !4
  %12 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Frpos4 = getelementptr inbounds %struct.WorkType, ptr %12, i32 0, i32 63
  %13 = load ptr, ptr %Frpos4, align 8, !tbaa !14
  store ptr %13, ptr %Frpos, align 8, !tbaa !4
  %14 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Rperm = getelementptr inbounds %struct.NumericType, ptr %14, i32 0, i32 18
  %15 = load ptr, ptr %Rperm, align 8, !tbaa !15
  store ptr %15, ptr %Row_degree, align 8, !tbaa !4
  %16 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Uilen = getelementptr inbounds %struct.NumericType, ptr %16, i32 0, i32 25
  %17 = load ptr, ptr %Uilen, align 8, !tbaa !19
  store ptr %17, ptr %Row_tlen, align 8, !tbaa !4
  %18 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %E5 = getelementptr inbounds %struct.WorkType, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %E5, align 8, !tbaa !22
  store ptr %19, ptr %E, align 8, !tbaa !4
  %20 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory6 = getelementptr inbounds %struct.NumericType, ptr %20, i32 0, i32 13
  %21 = load ptr, ptr %Memory6, align 8, !tbaa !23
  store ptr %21, ptr %Memory, align 8, !tbaa !4
  %22 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %rdeg07 = getelementptr inbounds %struct.WorkType, ptr %22, i32 0, i32 29
  %23 = load i64, ptr %rdeg07, align 8, !tbaa !26
  store i64 %23, ptr %rdeg0, align 8, !tbaa !11
  %24 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fcblock8 = getelementptr inbounds %struct.WorkType, ptr %24, i32 0, i32 60
  %25 = load ptr, ptr %Fcblock8, align 8, !tbaa !28
  store ptr %25, ptr %Fcblock, align 8, !tbaa !4
  %26 = load ptr, ptr %Memory, align 8, !tbaa !4
  %27 = load i64, ptr %tpi, align 8, !tbaa !11
  %add.ptr = getelementptr inbounds %union.Unit_union, ptr %26, i64 %27
  store ptr %add.ptr, ptr %tp, align 8, !tbaa !4
  %28 = load ptr, ptr %tp, align 8, !tbaa !4
  store ptr %28, ptr %tp1, align 8, !tbaa !4
  %29 = load ptr, ptr %tp, align 8, !tbaa !4
  store ptr %29, ptr %tp2, align 8, !tbaa !4
  %30 = load ptr, ptr %tp, align 8, !tbaa !4
  %31 = load ptr, ptr %Row_tlen, align 8, !tbaa !4
  %32 = load i64, ptr %row.addr, align 8, !tbaa !11
  %arrayidx9 = getelementptr inbounds i64, ptr %31, i64 %32
  %33 = load i64, ptr %arrayidx9, align 8, !tbaa !11
  %add.ptr10 = getelementptr inbounds %struct.Tuple, ptr %30, i64 %33
  store ptr %add.ptr10, ptr %tpend, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc87, %if.end
  %34 = load ptr, ptr %tp, align 8, !tbaa !4
  %35 = load ptr, ptr %tpend, align 8, !tbaa !4
  %cmp = icmp ult ptr %34, %35
  br i1 %cmp, label %for.body, label %for.end89

for.body:                                         ; preds = %for.cond
  %36 = load ptr, ptr %tp, align 8, !tbaa !4
  %e11 = getelementptr inbounds %struct.Tuple, ptr %36, i32 0, i32 0
  %37 = load i64, ptr %e11, align 8, !tbaa !40
  store i64 %37, ptr %e, align 8, !tbaa !11
  %38 = load ptr, ptr %E, align 8, !tbaa !4
  %39 = load i64, ptr %e, align 8, !tbaa !11
  %arrayidx12 = getelementptr inbounds i64, ptr %38, i64 %39
  %40 = load i64, ptr %arrayidx12, align 8, !tbaa !11
  %tobool13 = icmp ne i64 %40, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %for.body
  br label %for.inc87

if.end15:                                         ; preds = %for.body
  %41 = load ptr, ptr %tp, align 8, !tbaa !4
  %f16 = getelementptr inbounds %struct.Tuple, ptr %41, i32 0, i32 1
  %42 = load i64, ptr %f16, align 8, !tbaa !42
  store i64 %42, ptr %f, align 8, !tbaa !11
  %43 = load ptr, ptr %Memory, align 8, !tbaa !4
  %44 = load ptr, ptr %E, align 8, !tbaa !4
  %45 = load i64, ptr %e, align 8, !tbaa !11
  %arrayidx17 = getelementptr inbounds i64, ptr %44, i64 %45
  %46 = load i64, ptr %arrayidx17, align 8, !tbaa !11
  %add.ptr18 = getelementptr inbounds %union.Unit_union, ptr %43, i64 %46
  store ptr %add.ptr18, ptr %p, align 8, !tbaa !4
  %47 = load ptr, ptr %p, align 8, !tbaa !4
  store ptr %47, ptr %ep, align 8, !tbaa !4
  %48 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr19 = getelementptr inbounds %union.Unit_union, ptr %48, i64 4
  store ptr %add.ptr19, ptr %p, align 8, !tbaa !4
  %49 = load ptr, ptr %p, align 8, !tbaa !4
  store ptr %49, ptr %Cols, align 8, !tbaa !4
  %50 = load ptr, ptr %Cols, align 8, !tbaa !4
  %51 = load ptr, ptr %ep, align 8, !tbaa !4
  %ncols20 = getelementptr inbounds %struct.Element, ptr %51, i32 0, i32 5
  %52 = load i64, ptr %ncols20, align 8, !tbaa !43
  %add.ptr21 = getelementptr inbounds i64, ptr %50, i64 %52
  store ptr %add.ptr21, ptr %Rows, align 8, !tbaa !4
  %53 = load ptr, ptr %Rows, align 8, !tbaa !4
  %54 = load i64, ptr %f, align 8, !tbaa !11
  %arrayidx22 = getelementptr inbounds i64, ptr %53, i64 %54
  %55 = load i64, ptr %arrayidx22, align 8, !tbaa !11
  %cmp23 = icmp eq i64 %55, -1
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end15
  br label %for.inc87

if.end25:                                         ; preds = %if.end15
  %56 = load ptr, ptr %ep, align 8, !tbaa !4
  %rdeg = getelementptr inbounds %struct.Element, ptr %56, i32 0, i32 1
  %57 = load i64, ptr %rdeg, align 8, !tbaa !52
  %58 = load i64, ptr %rdeg0, align 8, !tbaa !11
  %cmp26 = icmp eq i64 %57, %58
  br i1 %cmp26, label %if.then27, label %if.else85

if.then27:                                        ; preds = %if.end25
  %59 = load ptr, ptr %Rows, align 8, !tbaa !4
  %60 = load i64, ptr %f, align 8, !tbaa !11
  %arrayidx28 = getelementptr inbounds i64, ptr %59, i64 %60
  store i64 -1, ptr %arrayidx28, align 8, !tbaa !11
  %61 = load ptr, ptr %ep, align 8, !tbaa !4
  %nrows29 = getelementptr inbounds %struct.Element, ptr %61, i32 0, i32 4
  %62 = load i64, ptr %nrows29, align 8, !tbaa !56
  store i64 %62, ptr %nrows, align 8, !tbaa !11
  %63 = load ptr, ptr %ep, align 8, !tbaa !4
  %ncols30 = getelementptr inbounds %struct.Element, ptr %63, i32 0, i32 5
  %64 = load i64, ptr %ncols30, align 8, !tbaa !43
  store i64 %64, ptr %ncols, align 8, !tbaa !11
  %65 = load i64, ptr %ncols, align 8, !tbaa !11
  %66 = load i64, ptr %nrows, align 8, !tbaa !11
  %add = add nsw i64 %65, %66
  %mul = mul i64 8, %add
  %add31 = add i64 %mul, 16
  %sub = sub i64 %add31, 1
  %div = udiv i64 %sub, 16
  %67 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr32 = getelementptr inbounds %union.Unit_union, ptr %67, i64 %div
  store ptr %add.ptr32, ptr %p, align 8, !tbaa !4
  %68 = load ptr, ptr %p, align 8, !tbaa !4
  %69 = load i64, ptr %f, align 8, !tbaa !11
  %add.ptr33 = getelementptr inbounds %struct.DoubleComplex, ptr %68, i64 %69
  store ptr %add.ptr33, ptr %S, align 8, !tbaa !4
  %70 = load ptr, ptr %ep, align 8, !tbaa !4
  %ncolsleft34 = getelementptr inbounds %struct.Element, ptr %70, i32 0, i32 3
  %71 = load i64, ptr %ncolsleft34, align 8, !tbaa !53
  store i64 %71, ptr %ncolsleft, align 8, !tbaa !11
  %72 = load ptr, ptr %Fcblock, align 8, !tbaa !4
  %73 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %74 = load i64, ptr %row.addr, align 8, !tbaa !11
  %arrayidx35 = getelementptr inbounds i64, ptr %73, i64 %74
  %75 = load i64, ptr %arrayidx35, align 8, !tbaa !11
  %add.ptr36 = getelementptr inbounds %struct.DoubleComplex, ptr %72, i64 %75
  store ptr %add.ptr36, ptr %Frow, align 8, !tbaa !4
  %76 = load i64, ptr %ncolsleft, align 8, !tbaa !11
  %77 = load ptr, ptr %Row_degree, align 8, !tbaa !4
  %78 = load i64, ptr %row.addr, align 8, !tbaa !11
  %arrayidx37 = getelementptr inbounds i64, ptr %77, i64 %78
  %79 = load i64, ptr %arrayidx37, align 8, !tbaa !11
  %sub38 = sub nsw i64 %79, %76
  store i64 %sub38, ptr %arrayidx37, align 8, !tbaa !11
  %80 = load i64, ptr %ncols, align 8, !tbaa !11
  %81 = load i64, ptr %ncolsleft, align 8, !tbaa !11
  %cmp39 = icmp eq i64 %80, %81
  br i1 %cmp39, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.then27
  store i64 0, ptr %j, align 8, !tbaa !11
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc, %if.then40
  %82 = load i64, ptr %j, align 8, !tbaa !11
  %83 = load i64, ptr %ncols, align 8, !tbaa !11
  %cmp42 = icmp slt i64 %82, %83
  br i1 %cmp42, label %for.body43, label %for.end

for.body43:                                       ; preds = %for.cond41
  %84 = load ptr, ptr %Cols, align 8, !tbaa !4
  %85 = load i64, ptr %j, align 8, !tbaa !11
  %arrayidx44 = getelementptr inbounds i64, ptr %84, i64 %85
  %86 = load i64, ptr %arrayidx44, align 8, !tbaa !11
  store i64 %86, ptr %col, align 8, !tbaa !11
  %87 = load ptr, ptr %S, align 8, !tbaa !4
  %component = getelementptr inbounds %struct.DoubleComplex, ptr %87, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [2 x double], ptr %component, i64 0, i64 0
  %88 = load double, ptr %arrayidx45, align 8, !tbaa !58
  %89 = load ptr, ptr %Frow, align 8, !tbaa !4
  %90 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %91 = load i64, ptr %col, align 8, !tbaa !11
  %arrayidx46 = getelementptr inbounds i64, ptr %90, i64 %91
  %92 = load i64, ptr %arrayidx46, align 8, !tbaa !11
  %arrayidx47 = getelementptr inbounds %struct.DoubleComplex, ptr %89, i64 %92
  %component48 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx47, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [2 x double], ptr %component48, i64 0, i64 0
  %93 = load double, ptr %arrayidx49, align 8, !tbaa !58
  %add50 = fadd double %93, %88
  store double %add50, ptr %arrayidx49, align 8, !tbaa !58
  %94 = load ptr, ptr %S, align 8, !tbaa !4
  %component51 = getelementptr inbounds %struct.DoubleComplex, ptr %94, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [2 x double], ptr %component51, i64 0, i64 1
  %95 = load double, ptr %arrayidx52, align 8, !tbaa !58
  %96 = load ptr, ptr %Frow, align 8, !tbaa !4
  %97 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %98 = load i64, ptr %col, align 8, !tbaa !11
  %arrayidx53 = getelementptr inbounds i64, ptr %97, i64 %98
  %99 = load i64, ptr %arrayidx53, align 8, !tbaa !11
  %arrayidx54 = getelementptr inbounds %struct.DoubleComplex, ptr %96, i64 %99
  %component55 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx54, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [2 x double], ptr %component55, i64 0, i64 1
  %100 = load double, ptr %arrayidx56, align 8, !tbaa !58
  %add57 = fadd double %100, %95
  store double %add57, ptr %arrayidx56, align 8, !tbaa !58
  %101 = load i64, ptr %nrows, align 8, !tbaa !11
  %102 = load ptr, ptr %S, align 8, !tbaa !4
  %add.ptr58 = getelementptr inbounds %struct.DoubleComplex, ptr %102, i64 %101
  store ptr %add.ptr58, ptr %S, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body43
  %103 = load i64, ptr %j, align 8, !tbaa !11
  %inc = add nsw i64 %103, 1
  store i64 %inc, ptr %j, align 8, !tbaa !11
  br label %for.cond41, !llvm.loop !87

for.end:                                          ; preds = %for.cond41
  br label %if.end84

if.else:                                          ; preds = %if.then27
  store i64 0, ptr %j, align 8, !tbaa !11
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc81, %if.else
  %104 = load i64, ptr %j, align 8, !tbaa !11
  %105 = load i64, ptr %ncols, align 8, !tbaa !11
  %cmp60 = icmp slt i64 %104, %105
  br i1 %cmp60, label %for.body61, label %for.end83

for.body61:                                       ; preds = %for.cond59
  %106 = load ptr, ptr %Cols, align 8, !tbaa !4
  %107 = load i64, ptr %j, align 8, !tbaa !11
  %arrayidx62 = getelementptr inbounds i64, ptr %106, i64 %107
  %108 = load i64, ptr %arrayidx62, align 8, !tbaa !11
  store i64 %108, ptr %col, align 8, !tbaa !11
  %109 = load i64, ptr %col, align 8, !tbaa !11
  %cmp63 = icmp sge i64 %109, 0
  br i1 %cmp63, label %if.then64, label %if.end79

if.then64:                                        ; preds = %for.body61
  %110 = load ptr, ptr %S, align 8, !tbaa !4
  %component65 = getelementptr inbounds %struct.DoubleComplex, ptr %110, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [2 x double], ptr %component65, i64 0, i64 0
  %111 = load double, ptr %arrayidx66, align 8, !tbaa !58
  %112 = load ptr, ptr %Frow, align 8, !tbaa !4
  %113 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %114 = load i64, ptr %col, align 8, !tbaa !11
  %arrayidx67 = getelementptr inbounds i64, ptr %113, i64 %114
  %115 = load i64, ptr %arrayidx67, align 8, !tbaa !11
  %arrayidx68 = getelementptr inbounds %struct.DoubleComplex, ptr %112, i64 %115
  %component69 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx68, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [2 x double], ptr %component69, i64 0, i64 0
  %116 = load double, ptr %arrayidx70, align 8, !tbaa !58
  %add71 = fadd double %116, %111
  store double %add71, ptr %arrayidx70, align 8, !tbaa !58
  %117 = load ptr, ptr %S, align 8, !tbaa !4
  %component72 = getelementptr inbounds %struct.DoubleComplex, ptr %117, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [2 x double], ptr %component72, i64 0, i64 1
  %118 = load double, ptr %arrayidx73, align 8, !tbaa !58
  %119 = load ptr, ptr %Frow, align 8, !tbaa !4
  %120 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %121 = load i64, ptr %col, align 8, !tbaa !11
  %arrayidx74 = getelementptr inbounds i64, ptr %120, i64 %121
  %122 = load i64, ptr %arrayidx74, align 8, !tbaa !11
  %arrayidx75 = getelementptr inbounds %struct.DoubleComplex, ptr %119, i64 %122
  %component76 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx75, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [2 x double], ptr %component76, i64 0, i64 1
  %123 = load double, ptr %arrayidx77, align 8, !tbaa !58
  %add78 = fadd double %123, %118
  store double %add78, ptr %arrayidx77, align 8, !tbaa !58
  br label %if.end79

if.end79:                                         ; preds = %if.then64, %for.body61
  %124 = load i64, ptr %nrows, align 8, !tbaa !11
  %125 = load ptr, ptr %S, align 8, !tbaa !4
  %add.ptr80 = getelementptr inbounds %struct.DoubleComplex, ptr %125, i64 %124
  store ptr %add.ptr80, ptr %S, align 8, !tbaa !4
  br label %for.inc81

for.inc81:                                        ; preds = %if.end79
  %126 = load i64, ptr %j, align 8, !tbaa !11
  %inc82 = add nsw i64 %126, 1
  store i64 %inc82, ptr %j, align 8, !tbaa !11
  br label %for.cond59, !llvm.loop !88

for.end83:                                        ; preds = %for.cond59
  br label %if.end84

if.end84:                                         ; preds = %for.end83, %for.end
  %127 = load ptr, ptr %ep, align 8, !tbaa !4
  %nrowsleft = getelementptr inbounds %struct.Element, ptr %127, i32 0, i32 2
  %128 = load i64, ptr %nrowsleft, align 8, !tbaa !45
  %dec = add nsw i64 %128, -1
  store i64 %dec, ptr %nrowsleft, align 8, !tbaa !45
  br label %if.end86

if.else85:                                        ; preds = %if.end25
  %129 = load ptr, ptr %tp2, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.Tuple, ptr %129, i32 1
  store ptr %incdec.ptr, ptr %tp2, align 8, !tbaa !4
  %130 = load ptr, ptr %tp, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %129, ptr align 8 %130, i64 16, i1 false), !tbaa.struct !46
  br label %if.end86

if.end86:                                         ; preds = %if.else85, %if.end84
  br label %for.inc87

for.inc87:                                        ; preds = %if.end86, %if.then24, %if.then14
  %131 = load ptr, ptr %tp, align 8, !tbaa !4
  %incdec.ptr88 = getelementptr inbounds %struct.Tuple, ptr %131, i32 1
  store ptr %incdec.ptr88, ptr %tp, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !89

for.end89:                                        ; preds = %for.cond
  %132 = load ptr, ptr %tp2, align 8, !tbaa !4
  %133 = load ptr, ptr %tp1, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint ptr %132 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %133 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %134 = load ptr, ptr %Row_tlen, align 8, !tbaa !4
  %135 = load i64, ptr %row.addr, align 8, !tbaa !11
  %arrayidx90 = getelementptr inbounds i64, ptr %134, i64 %135
  store i64 %sub.ptr.div, ptr %arrayidx90, align 8, !tbaa !11
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end89, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ep) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Memory) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tpend) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ncolsleft) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %col) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Cols) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Rows) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ncols) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %nrows) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rdeg0) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Row_tlen) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Row_tuples) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Row_degree) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Frpos) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fcpos) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %E) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tpi) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Frow) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fcblock) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %S) #5
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

; Function Attrs: nounwind uwtable
define internal void @col_assemble(i64 noundef %col, ptr noundef %Numeric, ptr noundef %Work) #4 {
entry:
  %col.addr = alloca i64, align 8
  %Numeric.addr = alloca ptr, align 8
  %Work.addr = alloca ptr, align 8
  %S = alloca ptr, align 8
  %Fcblock = alloca ptr, align 8
  %Fcol = alloca ptr, align 8
  %tpi = alloca i64, align 8
  %e = alloca i64, align 8
  %E = alloca ptr, align 8
  %Fcpos = alloca ptr, align 8
  %Frpos = alloca ptr, align 8
  %Row_degree = alloca ptr, align 8
  %Col_tuples = alloca ptr, align 8
  %Col_tlen = alloca ptr, align 8
  %cdeg0 = alloca i64, align 8
  %f = alloca i64, align 8
  %nrows = alloca i64, align 8
  %ncols = alloca i64, align 8
  %Rows = alloca ptr, align 8
  %Cols = alloca ptr, align 8
  %row = alloca i64, align 8
  %nrowsleft = alloca i64, align 8
  %i = alloca i64, align 8
  %tp = alloca ptr, align 8
  %tp1 = alloca ptr, align 8
  %tp2 = alloca ptr, align 8
  %tpend = alloca ptr, align 8
  %Memory = alloca ptr, align 8
  %p = alloca ptr, align 8
  %ep = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %col, ptr %col.addr, align 8, !tbaa !11
  store ptr %Numeric, ptr %Numeric.addr, align 8, !tbaa !4
  store ptr %Work, ptr %Work.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %S) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fcblock) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fcol) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tpi) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %E) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fcpos) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Frpos) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Row_degree) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Col_tuples) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Col_tlen) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cdeg0) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %nrows) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ncols) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Rows) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Cols) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %row) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %nrowsleft) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp2) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tpend) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Memory) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ep) #5
  %0 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Lip = getelementptr inbounds %struct.NumericType, ptr %0, i32 0, i32 22
  %1 = load ptr, ptr %Lip, align 8, !tbaa !20
  store ptr %1, ptr %Col_tuples, align 8, !tbaa !4
  %2 = load ptr, ptr %Col_tuples, align 8, !tbaa !4
  %3 = load i64, ptr %col.addr, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 %3
  %4 = load i64, ptr %arrayidx, align 8, !tbaa !11
  store i64 %4, ptr %tpi, align 8, !tbaa !11
  %5 = load i64, ptr %tpi, align 8, !tbaa !11
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory1 = getelementptr inbounds %struct.NumericType, ptr %6, i32 0, i32 13
  %7 = load ptr, ptr %Memory1, align 8, !tbaa !23
  store ptr %7, ptr %Memory, align 8, !tbaa !4
  %8 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %E2 = getelementptr inbounds %struct.WorkType, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %E2, align 8, !tbaa !22
  store ptr %9, ptr %E, align 8, !tbaa !4
  %10 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fcpos3 = getelementptr inbounds %struct.WorkType, ptr %10, i32 0, i32 64
  %11 = load ptr, ptr %Fcpos3, align 8, !tbaa !13
  store ptr %11, ptr %Fcpos, align 8, !tbaa !4
  %12 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Frpos4 = getelementptr inbounds %struct.WorkType, ptr %12, i32 0, i32 63
  %13 = load ptr, ptr %Frpos4, align 8, !tbaa !14
  store ptr %13, ptr %Frpos, align 8, !tbaa !4
  %14 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Rperm = getelementptr inbounds %struct.NumericType, ptr %14, i32 0, i32 18
  %15 = load ptr, ptr %Rperm, align 8, !tbaa !15
  store ptr %15, ptr %Row_degree, align 8, !tbaa !4
  %16 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Lilen = getelementptr inbounds %struct.NumericType, ptr %16, i32 0, i32 23
  %17 = load ptr, ptr %Lilen, align 8, !tbaa !21
  store ptr %17, ptr %Col_tlen, align 8, !tbaa !4
  %18 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %E5 = getelementptr inbounds %struct.WorkType, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %E5, align 8, !tbaa !22
  store ptr %19, ptr %E, align 8, !tbaa !4
  %20 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory6 = getelementptr inbounds %struct.NumericType, ptr %20, i32 0, i32 13
  %21 = load ptr, ptr %Memory6, align 8, !tbaa !23
  store ptr %21, ptr %Memory, align 8, !tbaa !4
  %22 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %cdeg07 = getelementptr inbounds %struct.WorkType, ptr %22, i32 0, i32 30
  %23 = load i64, ptr %cdeg07, align 8, !tbaa !27
  store i64 %23, ptr %cdeg0, align 8, !tbaa !11
  %24 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fcblock8 = getelementptr inbounds %struct.WorkType, ptr %24, i32 0, i32 60
  %25 = load ptr, ptr %Fcblock8, align 8, !tbaa !28
  store ptr %25, ptr %Fcblock, align 8, !tbaa !4
  %26 = load ptr, ptr %Memory, align 8, !tbaa !4
  %27 = load i64, ptr %tpi, align 8, !tbaa !11
  %add.ptr = getelementptr inbounds %union.Unit_union, ptr %26, i64 %27
  store ptr %add.ptr, ptr %tp, align 8, !tbaa !4
  %28 = load ptr, ptr %tp, align 8, !tbaa !4
  store ptr %28, ptr %tp1, align 8, !tbaa !4
  %29 = load ptr, ptr %tp, align 8, !tbaa !4
  store ptr %29, ptr %tp2, align 8, !tbaa !4
  %30 = load ptr, ptr %tp, align 8, !tbaa !4
  %31 = load ptr, ptr %Col_tlen, align 8, !tbaa !4
  %32 = load i64, ptr %col.addr, align 8, !tbaa !11
  %arrayidx9 = getelementptr inbounds i64, ptr %31, i64 %32
  %33 = load i64, ptr %arrayidx9, align 8, !tbaa !11
  %add.ptr10 = getelementptr inbounds %struct.Tuple, ptr %30, i64 %33
  store ptr %add.ptr10, ptr %tpend, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc91, %if.end
  %34 = load ptr, ptr %tp, align 8, !tbaa !4
  %35 = load ptr, ptr %tpend, align 8, !tbaa !4
  %cmp = icmp ult ptr %34, %35
  br i1 %cmp, label %for.body, label %for.end93

for.body:                                         ; preds = %for.cond
  %36 = load ptr, ptr %tp, align 8, !tbaa !4
  %e11 = getelementptr inbounds %struct.Tuple, ptr %36, i32 0, i32 0
  %37 = load i64, ptr %e11, align 8, !tbaa !40
  store i64 %37, ptr %e, align 8, !tbaa !11
  %38 = load ptr, ptr %E, align 8, !tbaa !4
  %39 = load i64, ptr %e, align 8, !tbaa !11
  %arrayidx12 = getelementptr inbounds i64, ptr %38, i64 %39
  %40 = load i64, ptr %arrayidx12, align 8, !tbaa !11
  %tobool13 = icmp ne i64 %40, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %for.body
  br label %for.inc91

if.end15:                                         ; preds = %for.body
  %41 = load ptr, ptr %tp, align 8, !tbaa !4
  %f16 = getelementptr inbounds %struct.Tuple, ptr %41, i32 0, i32 1
  %42 = load i64, ptr %f16, align 8, !tbaa !42
  store i64 %42, ptr %f, align 8, !tbaa !11
  %43 = load ptr, ptr %Memory, align 8, !tbaa !4
  %44 = load ptr, ptr %E, align 8, !tbaa !4
  %45 = load i64, ptr %e, align 8, !tbaa !11
  %arrayidx17 = getelementptr inbounds i64, ptr %44, i64 %45
  %46 = load i64, ptr %arrayidx17, align 8, !tbaa !11
  %add.ptr18 = getelementptr inbounds %union.Unit_union, ptr %43, i64 %46
  store ptr %add.ptr18, ptr %p, align 8, !tbaa !4
  %47 = load ptr, ptr %p, align 8, !tbaa !4
  store ptr %47, ptr %ep, align 8, !tbaa !4
  %48 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr19 = getelementptr inbounds %union.Unit_union, ptr %48, i64 4
  store ptr %add.ptr19, ptr %p, align 8, !tbaa !4
  %49 = load ptr, ptr %p, align 8, !tbaa !4
  store ptr %49, ptr %Cols, align 8, !tbaa !4
  %50 = load ptr, ptr %Cols, align 8, !tbaa !4
  %51 = load i64, ptr %f, align 8, !tbaa !11
  %arrayidx20 = getelementptr inbounds i64, ptr %50, i64 %51
  %52 = load i64, ptr %arrayidx20, align 8, !tbaa !11
  %cmp21 = icmp eq i64 %52, -1
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end15
  br label %for.inc91

if.end23:                                         ; preds = %if.end15
  %53 = load ptr, ptr %ep, align 8, !tbaa !4
  %cdeg = getelementptr inbounds %struct.Element, ptr %53, i32 0, i32 0
  %54 = load i64, ptr %cdeg, align 8, !tbaa !44
  %55 = load i64, ptr %cdeg0, align 8, !tbaa !11
  %cmp24 = icmp eq i64 %54, %55
  br i1 %cmp24, label %if.then25, label %if.else89

if.then25:                                        ; preds = %if.end23
  %56 = load ptr, ptr %Cols, align 8, !tbaa !4
  %57 = load i64, ptr %f, align 8, !tbaa !11
  %arrayidx26 = getelementptr inbounds i64, ptr %56, i64 %57
  store i64 -1, ptr %arrayidx26, align 8, !tbaa !11
  %58 = load ptr, ptr %ep, align 8, !tbaa !4
  %nrows27 = getelementptr inbounds %struct.Element, ptr %58, i32 0, i32 4
  %59 = load i64, ptr %nrows27, align 8, !tbaa !56
  store i64 %59, ptr %nrows, align 8, !tbaa !11
  %60 = load ptr, ptr %ep, align 8, !tbaa !4
  %ncols28 = getelementptr inbounds %struct.Element, ptr %60, i32 0, i32 5
  %61 = load i64, ptr %ncols28, align 8, !tbaa !43
  store i64 %61, ptr %ncols, align 8, !tbaa !11
  %62 = load ptr, ptr %Cols, align 8, !tbaa !4
  %63 = load i64, ptr %ncols, align 8, !tbaa !11
  %add.ptr29 = getelementptr inbounds i64, ptr %62, i64 %63
  store ptr %add.ptr29, ptr %Rows, align 8, !tbaa !4
  %64 = load i64, ptr %ncols, align 8, !tbaa !11
  %65 = load i64, ptr %nrows, align 8, !tbaa !11
  %add = add nsw i64 %64, %65
  %mul = mul i64 8, %add
  %add30 = add i64 %mul, 16
  %sub = sub i64 %add30, 1
  %div = udiv i64 %sub, 16
  %66 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr31 = getelementptr inbounds %union.Unit_union, ptr %66, i64 %div
  store ptr %add.ptr31, ptr %p, align 8, !tbaa !4
  %67 = load ptr, ptr %p, align 8, !tbaa !4
  %68 = load i64, ptr %f, align 8, !tbaa !11
  %69 = load i64, ptr %nrows, align 8, !tbaa !11
  %mul32 = mul nsw i64 %68, %69
  %add.ptr33 = getelementptr inbounds %struct.DoubleComplex, ptr %67, i64 %mul32
  store ptr %add.ptr33, ptr %S, align 8, !tbaa !4
  %70 = load ptr, ptr %ep, align 8, !tbaa !4
  %nrowsleft34 = getelementptr inbounds %struct.Element, ptr %70, i32 0, i32 2
  %71 = load i64, ptr %nrowsleft34, align 8, !tbaa !45
  store i64 %71, ptr %nrowsleft, align 8, !tbaa !11
  %72 = load ptr, ptr %Fcblock, align 8, !tbaa !4
  %73 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %74 = load i64, ptr %col.addr, align 8, !tbaa !11
  %arrayidx35 = getelementptr inbounds i64, ptr %73, i64 %74
  %75 = load i64, ptr %arrayidx35, align 8, !tbaa !11
  %add.ptr36 = getelementptr inbounds %struct.DoubleComplex, ptr %72, i64 %75
  store ptr %add.ptr36, ptr %Fcol, align 8, !tbaa !4
  %76 = load i64, ptr %nrows, align 8, !tbaa !11
  %77 = load i64, ptr %nrowsleft, align 8, !tbaa !11
  %cmp37 = icmp eq i64 %76, %77
  br i1 %cmp37, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.then25
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc, %if.then38
  %78 = load i64, ptr %i, align 8, !tbaa !11
  %79 = load i64, ptr %nrows, align 8, !tbaa !11
  %cmp40 = icmp slt i64 %78, %79
  br i1 %cmp40, label %for.body41, label %for.end

for.body41:                                       ; preds = %for.cond39
  %80 = load ptr, ptr %Rows, align 8, !tbaa !4
  %81 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx42 = getelementptr inbounds i64, ptr %80, i64 %81
  %82 = load i64, ptr %arrayidx42, align 8, !tbaa !11
  store i64 %82, ptr %row, align 8, !tbaa !11
  %83 = load ptr, ptr %Row_degree, align 8, !tbaa !4
  %84 = load i64, ptr %row, align 8, !tbaa !11
  %arrayidx43 = getelementptr inbounds i64, ptr %83, i64 %84
  %85 = load i64, ptr %arrayidx43, align 8, !tbaa !11
  %dec = add nsw i64 %85, -1
  store i64 %dec, ptr %arrayidx43, align 8, !tbaa !11
  %86 = load ptr, ptr %S, align 8, !tbaa !4
  %87 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx44 = getelementptr inbounds %struct.DoubleComplex, ptr %86, i64 %87
  %component = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx44, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [2 x double], ptr %component, i64 0, i64 0
  %88 = load double, ptr %arrayidx45, align 8, !tbaa !58
  %89 = load ptr, ptr %Fcol, align 8, !tbaa !4
  %90 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %91 = load i64, ptr %row, align 8, !tbaa !11
  %arrayidx46 = getelementptr inbounds i64, ptr %90, i64 %91
  %92 = load i64, ptr %arrayidx46, align 8, !tbaa !11
  %arrayidx47 = getelementptr inbounds %struct.DoubleComplex, ptr %89, i64 %92
  %component48 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx47, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [2 x double], ptr %component48, i64 0, i64 0
  %93 = load double, ptr %arrayidx49, align 8, !tbaa !58
  %add50 = fadd double %93, %88
  store double %add50, ptr %arrayidx49, align 8, !tbaa !58
  %94 = load ptr, ptr %S, align 8, !tbaa !4
  %95 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx51 = getelementptr inbounds %struct.DoubleComplex, ptr %94, i64 %95
  %component52 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx51, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [2 x double], ptr %component52, i64 0, i64 1
  %96 = load double, ptr %arrayidx53, align 8, !tbaa !58
  %97 = load ptr, ptr %Fcol, align 8, !tbaa !4
  %98 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %99 = load i64, ptr %row, align 8, !tbaa !11
  %arrayidx54 = getelementptr inbounds i64, ptr %98, i64 %99
  %100 = load i64, ptr %arrayidx54, align 8, !tbaa !11
  %arrayidx55 = getelementptr inbounds %struct.DoubleComplex, ptr %97, i64 %100
  %component56 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx55, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [2 x double], ptr %component56, i64 0, i64 1
  %101 = load double, ptr %arrayidx57, align 8, !tbaa !58
  %add58 = fadd double %101, %96
  store double %add58, ptr %arrayidx57, align 8, !tbaa !58
  br label %for.inc

for.inc:                                          ; preds = %for.body41
  %102 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add nsw i64 %102, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond39, !llvm.loop !90

for.end:                                          ; preds = %for.cond39
  br label %if.end87

if.else:                                          ; preds = %if.then25
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc84, %if.else
  %103 = load i64, ptr %i, align 8, !tbaa !11
  %104 = load i64, ptr %nrows, align 8, !tbaa !11
  %cmp60 = icmp slt i64 %103, %104
  br i1 %cmp60, label %for.body61, label %for.end86

for.body61:                                       ; preds = %for.cond59
  %105 = load ptr, ptr %Rows, align 8, !tbaa !4
  %106 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx62 = getelementptr inbounds i64, ptr %105, i64 %106
  %107 = load i64, ptr %arrayidx62, align 8, !tbaa !11
  store i64 %107, ptr %row, align 8, !tbaa !11
  %108 = load i64, ptr %row, align 8, !tbaa !11
  %cmp63 = icmp sge i64 %108, 0
  br i1 %cmp63, label %if.then64, label %if.end83

if.then64:                                        ; preds = %for.body61
  %109 = load ptr, ptr %Row_degree, align 8, !tbaa !4
  %110 = load i64, ptr %row, align 8, !tbaa !11
  %arrayidx65 = getelementptr inbounds i64, ptr %109, i64 %110
  %111 = load i64, ptr %arrayidx65, align 8, !tbaa !11
  %dec66 = add nsw i64 %111, -1
  store i64 %dec66, ptr %arrayidx65, align 8, !tbaa !11
  %112 = load ptr, ptr %S, align 8, !tbaa !4
  %113 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx67 = getelementptr inbounds %struct.DoubleComplex, ptr %112, i64 %113
  %component68 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx67, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [2 x double], ptr %component68, i64 0, i64 0
  %114 = load double, ptr %arrayidx69, align 8, !tbaa !58
  %115 = load ptr, ptr %Fcol, align 8, !tbaa !4
  %116 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %117 = load i64, ptr %row, align 8, !tbaa !11
  %arrayidx70 = getelementptr inbounds i64, ptr %116, i64 %117
  %118 = load i64, ptr %arrayidx70, align 8, !tbaa !11
  %arrayidx71 = getelementptr inbounds %struct.DoubleComplex, ptr %115, i64 %118
  %component72 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx71, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [2 x double], ptr %component72, i64 0, i64 0
  %119 = load double, ptr %arrayidx73, align 8, !tbaa !58
  %add74 = fadd double %119, %114
  store double %add74, ptr %arrayidx73, align 8, !tbaa !58
  %120 = load ptr, ptr %S, align 8, !tbaa !4
  %121 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx75 = getelementptr inbounds %struct.DoubleComplex, ptr %120, i64 %121
  %component76 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx75, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [2 x double], ptr %component76, i64 0, i64 1
  %122 = load double, ptr %arrayidx77, align 8, !tbaa !58
  %123 = load ptr, ptr %Fcol, align 8, !tbaa !4
  %124 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %125 = load i64, ptr %row, align 8, !tbaa !11
  %arrayidx78 = getelementptr inbounds i64, ptr %124, i64 %125
  %126 = load i64, ptr %arrayidx78, align 8, !tbaa !11
  %arrayidx79 = getelementptr inbounds %struct.DoubleComplex, ptr %123, i64 %126
  %component80 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx79, i32 0, i32 0
  %arrayidx81 = getelementptr inbounds [2 x double], ptr %component80, i64 0, i64 1
  %127 = load double, ptr %arrayidx81, align 8, !tbaa !58
  %add82 = fadd double %127, %122
  store double %add82, ptr %arrayidx81, align 8, !tbaa !58
  br label %if.end83

if.end83:                                         ; preds = %if.then64, %for.body61
  br label %for.inc84

for.inc84:                                        ; preds = %if.end83
  %128 = load i64, ptr %i, align 8, !tbaa !11
  %inc85 = add nsw i64 %128, 1
  store i64 %inc85, ptr %i, align 8, !tbaa !11
  br label %for.cond59, !llvm.loop !91

for.end86:                                        ; preds = %for.cond59
  br label %if.end87

if.end87:                                         ; preds = %for.end86, %for.end
  %129 = load ptr, ptr %ep, align 8, !tbaa !4
  %ncolsleft = getelementptr inbounds %struct.Element, ptr %129, i32 0, i32 3
  %130 = load i64, ptr %ncolsleft, align 8, !tbaa !53
  %dec88 = add nsw i64 %130, -1
  store i64 %dec88, ptr %ncolsleft, align 8, !tbaa !53
  br label %if.end90

if.else89:                                        ; preds = %if.end23
  %131 = load ptr, ptr %tp2, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.Tuple, ptr %131, i32 1
  store ptr %incdec.ptr, ptr %tp2, align 8, !tbaa !4
  %132 = load ptr, ptr %tp, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %131, ptr align 8 %132, i64 16, i1 false), !tbaa.struct !46
  br label %if.end90

if.end90:                                         ; preds = %if.else89, %if.end87
  br label %for.inc91

for.inc91:                                        ; preds = %if.end90, %if.then22, %if.then14
  %133 = load ptr, ptr %tp, align 8, !tbaa !4
  %incdec.ptr92 = getelementptr inbounds %struct.Tuple, ptr %133, i32 1
  store ptr %incdec.ptr92, ptr %tp, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !92

for.end93:                                        ; preds = %for.cond
  %134 = load ptr, ptr %tp2, align 8, !tbaa !4
  %135 = load ptr, ptr %tp1, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint ptr %134 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %135 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %136 = load ptr, ptr %Col_tlen, align 8, !tbaa !4
  %137 = load i64, ptr %col.addr, align 8, !tbaa !11
  %arrayidx94 = getelementptr inbounds i64, ptr %136, i64 %137
  store i64 %sub.ptr.div, ptr %arrayidx94, align 8, !tbaa !11
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end93, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ep) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Memory) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tpend) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %nrowsleft) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %row) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Cols) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Rows) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ncols) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %nrows) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %cdeg0) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Col_tlen) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Col_tuples) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Row_degree) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Frpos) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fcpos) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %E) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tpi) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fcol) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fcblock) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %S) #5
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

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !10, i64 2552}
!9 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !10, i64 112, !10, i64 120, !5, i64 128, !5, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !6, i64 264, !10, i64 1288, !10, i64 1296, !10, i64 1304, !10, i64 1312, !10, i64 1320, !10, i64 1328, !10, i64 1336, !10, i64 1344, !10, i64 1352, !10, i64 1360, !10, i64 1368, !10, i64 1376, !10, i64 1384, !10, i64 1392, !10, i64 1400, !10, i64 1408, !10, i64 1416, !10, i64 1424, !10, i64 1432, !10, i64 1440, !5, i64 1448, !6, i64 1456, !6, i64 1968, !5, i64 2480, !5, i64 2488, !5, i64 2496, !5, i64 2504, !5, i64 2512, !5, i64 2520, !5, i64 2528, !5, i64 2536, !10, i64 2544, !10, i64 2552, !10, i64 2560, !10, i64 2568, !10, i64 2576, !10, i64 2584, !10, i64 2592, !10, i64 2600, !10, i64 2608, !10, i64 2616, !10, i64 2624, !10, i64 2632, !10, i64 2640, !10, i64 2648, !10, i64 2656, !10, i64 2664}
!10 = !{!"long", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!9, !10, i64 2544}
!13 = !{!9, !5, i64 2536}
!14 = !{!9, !5, i64 2528}
!15 = !{!16, !5, i64 144}
!16 = !{!"", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !10, i64 88, !10, i64 96, !5, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !5, i64 240, !10, i64 248, !5, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !10, i64 336, !10, i64 344, !10, i64 352, !10, i64 360, !10, i64 368, !10, i64 376, !10, i64 384, !10, i64 392, !10, i64 400, !10, i64 408}
!17 = !{!"double", !6, i64 0}
!18 = !{!16, !5, i64 192}
!19 = !{!16, !5, i64 200}
!20 = !{!16, !5, i64 176}
!21 = !{!16, !5, i64 184}
!22 = !{!9, !5, i64 0}
!23 = !{!16, !5, i64 104}
!24 = !{!9, !5, i64 40}
!25 = !{!9, !5, i64 64}
!26 = !{!9, !10, i64 232}
!27 = !{!9, !10, i64 240}
!28 = !{!9, !5, i64 2504}
!29 = !{!16, !10, i64 400}
!30 = !{!16, !10, i64 408}
!31 = !{!16, !10, i64 392}
!32 = !{!9, !10, i64 1368}
!33 = !{!9, !10, i64 2664}
!34 = !{!9, !10, i64 2656}
!35 = !{!9, !10, i64 224}
!36 = !{!37, !10, i64 48}
!37 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!38 = !{!9, !10, i64 2624}
!39 = !{!9, !5, i64 80}
!40 = !{!41, !10, i64 0}
!41 = !{!"", !10, i64 0, !10, i64 8}
!42 = !{!41, !10, i64 8}
!43 = !{!37, !10, i64 40}
!44 = !{!37, !10, i64 0}
!45 = !{!37, !10, i64 16}
!46 = !{i64 0, i64 8, !11, i64 8, i64 8, !11}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = distinct !{!49, !48}
!50 = !{!9, !10, i64 2632}
!51 = !{!9, !5, i64 88}
!52 = !{!37, !10, i64 8}
!53 = !{!37, !10, i64 24}
!54 = distinct !{!54, !48}
!55 = distinct !{!55, !48}
!56 = !{!37, !10, i64 32}
!57 = distinct !{!57, !48}
!58 = !{!17, !17, i64 0}
!59 = distinct !{!59, !48}
!60 = distinct !{!60, !48}
!61 = distinct !{!61, !48}
!62 = distinct !{!62, !48}
!63 = distinct !{!63, !48}
!64 = distinct !{!64, !48}
!65 = distinct !{!65, !48}
!66 = distinct !{!66, !48}
!67 = distinct !{!67, !48}
!68 = !{!9, !10, i64 1392}
!69 = distinct !{!69, !48}
!70 = distinct !{!70, !48}
!71 = distinct !{!71, !48}
!72 = distinct !{!72, !48}
!73 = distinct !{!73, !48}
!74 = distinct !{!74, !48}
!75 = distinct !{!75, !48}
!76 = distinct !{!76, !48}
!77 = distinct !{!77, !48}
!78 = distinct !{!78, !48}
!79 = distinct !{!79, !48}
!80 = distinct !{!80, !48}
!81 = !{!9, !10, i64 1352}
!82 = !{!9, !10, i64 1400}
!83 = distinct !{!83, !48}
!84 = !{!9, !10, i64 1360}
!85 = !{!9, !10, i64 1408}
!86 = distinct !{!86, !48}
!87 = distinct !{!87, !48}
!88 = distinct !{!88, !48}
!89 = distinct !{!89, !48}
!90 = distinct !{!90, !48}
!91 = distinct !{!91, !48}
!92 = distinct !{!92, !48}
