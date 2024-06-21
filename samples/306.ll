; ModuleID = 'samples/306.bc'
source_filename = "../Source/umf_garbage_collection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NumericType = type { double, double, double, double, double, double, double, double, double, double, double, i32, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.WorkType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [64 x i32], [64 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.Unit_union = type { double }
%struct.anon = type { i32, i32 }
%struct.Element = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define void @umfdi_garbage_collection(ptr noundef %Numeric, ptr noundef %Work, i32 noundef %drnew, i32 noundef %dcnew, i32 noundef %do_Fcpos) #0 {
entry:
  %Numeric.addr = alloca ptr, align 8
  %Work.addr = alloca ptr, align 8
  %drnew.addr = alloca i32, align 4
  %dcnew.addr = alloca i32, align 4
  %do_Fcpos.addr = alloca i32, align 4
  %size = alloca i32, align 4
  %e = alloca i32, align 4
  %n_row = alloca i32, align 4
  %n_col = alloca i32, align 4
  %nrows = alloca i32, align 4
  %ncols = alloca i32, align 4
  %nrowsleft = alloca i32, align 4
  %ncolsleft = alloca i32, align 4
  %prevsize = alloca i32, align 4
  %csize = alloca i32, align 4
  %size2 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cdeg = alloca i32, align 4
  %rdeg = alloca i32, align 4
  %E = alloca ptr, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %Rows = alloca ptr, align 8
  %Cols = alloca ptr, align 8
  %Rows2 = alloca ptr, align 8
  %Cols2 = alloca ptr, align 8
  %nel = alloca i32, align 4
  %e2 = alloca i32, align 4
  %Row_tuples = alloca ptr, align 8
  %Col_tuples = alloca ptr, align 8
  %Row_degree = alloca ptr, align 8
  %Col_degree = alloca ptr, align 8
  %C = alloca ptr, align 8
  %C1 = alloca ptr, align 8
  %C3 = alloca ptr, align 8
  %C2 = alloca ptr, align 8
  %psrc = alloca ptr, align 8
  %pdest = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pnext = alloca ptr, align 8
  %epsrc = alloca ptr, align 8
  %epdest = alloca ptr, align 8
  %F1 = alloca ptr, align 8
  %F2 = alloca ptr, align 8
  %Fsrc = alloca ptr, align 8
  %Fdst = alloca ptr, align 8
  %c = alloca i32, align 4
  %r = alloca i32, align 4
  %k = alloca i32, align 4
  %dr = alloca i32, align 4
  %dc = alloca i32, align 4
  %gap = alloca i32, align 4
  %gap1 = alloca i32, align 4
  %gap2 = alloca i32, align 4
  %nb = alloca i32, align 4
  %Fcols = alloca ptr, align 8
  %Fcpos = alloca ptr, align 8
  store ptr %Numeric, ptr %Numeric.addr, align 8, !tbaa !4
  store ptr %Work, ptr %Work.addr, align 8, !tbaa !4
  store i32 %drnew, ptr %drnew.addr, align 4, !tbaa !8
  store i32 %dcnew, ptr %dcnew.addr, align 4, !tbaa !8
  store i32 %do_Fcpos, ptr %do_Fcpos.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_row) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_col) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %nrows) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %ncols) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %nrowsleft) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %ncolsleft) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %prevsize) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %csize) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %size2) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %i2) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %j2) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %cdeg) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %rdeg) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %E) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %row) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %col) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %Rows) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %Cols) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %Rows2) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %Cols2) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %nel) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %e2) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %Row_tuples) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %Col_tuples) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %Row_degree) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %Col_degree) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %C) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %C1) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %C3) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %C2) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %psrc) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdest) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnext) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %epsrc) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %epdest) #2
  %0 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Cperm = getelementptr inbounds %struct.NumericType, ptr %0, i32 0, i32 19
  %1 = load ptr, ptr %Cperm, align 8, !tbaa !10
  store ptr %1, ptr %Col_degree, align 8, !tbaa !4
  %2 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Rperm = getelementptr inbounds %struct.NumericType, ptr %2, i32 0, i32 18
  %3 = load ptr, ptr %Rperm, align 8, !tbaa !13
  store ptr %3, ptr %Row_degree, align 8, !tbaa !4
  %4 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Uip = getelementptr inbounds %struct.NumericType, ptr %4, i32 0, i32 24
  %5 = load ptr, ptr %Uip, align 8, !tbaa !14
  store ptr %5, ptr %Row_tuples, align 8, !tbaa !4
  %6 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Lip = getelementptr inbounds %struct.NumericType, ptr %6, i32 0, i32 22
  %7 = load ptr, ptr %Lip, align 8, !tbaa !15
  store ptr %7, ptr %Col_tuples, align 8, !tbaa !4
  %8 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %E1 = getelementptr inbounds %struct.WorkType, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %E1, align 8, !tbaa !16
  store ptr %9, ptr %E, align 8, !tbaa !4
  %10 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %n_row2 = getelementptr inbounds %struct.WorkType, ptr %10, i32 0, i32 18
  %11 = load i32, ptr %n_row2, align 8, !tbaa !18
  store i32 %11, ptr %n_row, align 4, !tbaa !8
  %12 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %n_col3 = getelementptr inbounds %struct.WorkType, ptr %12, i32 0, i32 19
  %13 = load i32, ptr %n_col3, align 4, !tbaa !19
  store i32 %13, ptr %n_col, align 4, !tbaa !8
  %14 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %ngarbage = getelementptr inbounds %struct.NumericType, ptr %14, i32 0, i32 39
  %15 = load i32, ptr %ngarbage, align 8, !tbaa !20
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %ngarbage, align 8, !tbaa !20
  store i32 0, ptr %row, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, ptr %row, align 4, !tbaa !8
  %17 = load i32, ptr %n_row, align 4, !tbaa !8
  %cmp = icmp slt i32 %16, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %Row_degree, align 8, !tbaa !4
  %19 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds i32, ptr %18, i64 %idxprom
  %20 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %cmp4 = icmp sge i32 %20, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %21 = load ptr, ptr %Row_tuples, align 8, !tbaa !4
  %22 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom5 = sext i32 %22 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %21, i64 %idxprom5
  %23 = load i32, ptr %arrayidx6, align 4, !tbaa !8
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %24 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory = getelementptr inbounds %struct.NumericType, ptr %24, i32 0, i32 13
  %25 = load ptr, ptr %Memory, align 8, !tbaa !21
  %26 = load ptr, ptr %Row_tuples, align 8, !tbaa !4
  %27 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom7 = sext i32 %27 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %26, i64 %idxprom7
  %28 = load i32, ptr %arrayidx8, align 4, !tbaa !8
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds %union.Unit_union, ptr %25, i64 %idx.ext
  %add.ptr9 = getelementptr inbounds %union.Unit_union, ptr %add.ptr, i64 -1
  store ptr %add.ptr9, ptr %p, align 8, !tbaa !4
  %29 = load ptr, ptr %p, align 8, !tbaa !4
  %size10 = getelementptr inbounds %struct.anon, ptr %29, i32 0, i32 0
  %30 = load i32, ptr %size10, align 8, !tbaa !22
  %sub = sub nsw i32 0, %30
  %31 = load ptr, ptr %p, align 8, !tbaa !4
  %size11 = getelementptr inbounds %struct.anon, ptr %31, i32 0, i32 0
  store i32 %sub, ptr %size11, align 8, !tbaa !22
  %32 = load ptr, ptr %Row_tuples, align 8, !tbaa !4
  %33 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom12 = sext i32 %33 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %32, i64 %idxprom12
  store i32 0, ptr %arrayidx13, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %34 = load i32, ptr %row, align 4, !tbaa !8
  %inc14 = add nsw i32 %34, 1
  store i32 %inc14, ptr %row, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %col, align 4, !tbaa !8
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc38, %for.end
  %35 = load i32, ptr %col, align 4, !tbaa !8
  %36 = load i32, ptr %n_col, align 4, !tbaa !8
  %cmp16 = icmp slt i32 %35, %36
  br i1 %cmp16, label %for.body17, label %for.end40

for.body17:                                       ; preds = %for.cond15
  %37 = load ptr, ptr %Col_degree, align 8, !tbaa !4
  %38 = load i32, ptr %col, align 4, !tbaa !8
  %idxprom18 = sext i32 %38 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %37, i64 %idxprom18
  %39 = load i32, ptr %arrayidx19, align 4, !tbaa !8
  %cmp20 = icmp sge i32 %39, 0
  br i1 %cmp20, label %land.lhs.true21, label %if.end37

land.lhs.true21:                                  ; preds = %for.body17
  %40 = load ptr, ptr %Col_tuples, align 8, !tbaa !4
  %41 = load i32, ptr %col, align 4, !tbaa !8
  %idxprom22 = sext i32 %41 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %40, i64 %idxprom22
  %42 = load i32, ptr %arrayidx23, align 4, !tbaa !8
  %tobool24 = icmp ne i32 %42, 0
  br i1 %tobool24, label %if.then25, label %if.end37

if.then25:                                        ; preds = %land.lhs.true21
  %43 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory26 = getelementptr inbounds %struct.NumericType, ptr %43, i32 0, i32 13
  %44 = load ptr, ptr %Memory26, align 8, !tbaa !21
  %45 = load ptr, ptr %Col_tuples, align 8, !tbaa !4
  %46 = load i32, ptr %col, align 4, !tbaa !8
  %idxprom27 = sext i32 %46 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %45, i64 %idxprom27
  %47 = load i32, ptr %arrayidx28, align 4, !tbaa !8
  %idx.ext29 = sext i32 %47 to i64
  %add.ptr30 = getelementptr inbounds %union.Unit_union, ptr %44, i64 %idx.ext29
  %add.ptr31 = getelementptr inbounds %union.Unit_union, ptr %add.ptr30, i64 -1
  store ptr %add.ptr31, ptr %p, align 8, !tbaa !4
  %48 = load ptr, ptr %p, align 8, !tbaa !4
  %size32 = getelementptr inbounds %struct.anon, ptr %48, i32 0, i32 0
  %49 = load i32, ptr %size32, align 8, !tbaa !22
  %sub33 = sub nsw i32 0, %49
  %50 = load ptr, ptr %p, align 8, !tbaa !4
  %size34 = getelementptr inbounds %struct.anon, ptr %50, i32 0, i32 0
  store i32 %sub33, ptr %size34, align 8, !tbaa !22
  %51 = load ptr, ptr %Col_tuples, align 8, !tbaa !4
  %52 = load i32, ptr %col, align 4, !tbaa !8
  %idxprom35 = sext i32 %52 to i64
  %arrayidx36 = getelementptr inbounds i32, ptr %51, i64 %idxprom35
  store i32 0, ptr %arrayidx36, align 4, !tbaa !8
  br label %if.end37

if.end37:                                         ; preds = %if.then25, %land.lhs.true21, %for.body17
  br label %for.inc38

for.inc38:                                        ; preds = %if.end37
  %53 = load i32, ptr %col, align 4, !tbaa !8
  %inc39 = add nsw i32 %53, 1
  store i32 %inc39, ptr %col, align 4, !tbaa !8
  br label %for.cond15, !llvm.loop !25

for.end40:                                        ; preds = %for.cond15
  %54 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %nel41 = getelementptr inbounds %struct.WorkType, ptr %54, i32 0, i32 26
  %55 = load i32, ptr %nel41, align 8, !tbaa !26
  store i32 %55, ptr %nel, align 4, !tbaa !8
  store i32 0, ptr %e2, align 4, !tbaa !8
  store i32 0, ptr %e, align 4, !tbaa !8
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc66, %for.end40
  %56 = load i32, ptr %e, align 4, !tbaa !8
  %57 = load i32, ptr %nel, align 4, !tbaa !8
  %cmp43 = icmp sle i32 %56, %57
  br i1 %cmp43, label %for.body44, label %for.end68

for.body44:                                       ; preds = %for.cond42
  %58 = load ptr, ptr %E, align 8, !tbaa !4
  %59 = load i32, ptr %e, align 4, !tbaa !8
  %idxprom45 = sext i32 %59 to i64
  %arrayidx46 = getelementptr inbounds i32, ptr %58, i64 %idxprom45
  %60 = load i32, ptr %arrayidx46, align 4, !tbaa !8
  %tobool47 = icmp ne i32 %60, 0
  br i1 %tobool47, label %if.then48, label %if.end65

if.then48:                                        ; preds = %for.body44
  %61 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory49 = getelementptr inbounds %struct.NumericType, ptr %61, i32 0, i32 13
  %62 = load ptr, ptr %Memory49, align 8, !tbaa !21
  %63 = load ptr, ptr %E, align 8, !tbaa !4
  %64 = load i32, ptr %e, align 4, !tbaa !8
  %idxprom50 = sext i32 %64 to i64
  %arrayidx51 = getelementptr inbounds i32, ptr %63, i64 %idxprom50
  %65 = load i32, ptr %arrayidx51, align 4, !tbaa !8
  %idx.ext52 = sext i32 %65 to i64
  %add.ptr53 = getelementptr inbounds %union.Unit_union, ptr %62, i64 %idx.ext52
  store ptr %add.ptr53, ptr %psrc, align 8, !tbaa !4
  %66 = load ptr, ptr %psrc, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %union.Unit_union, ptr %66, i32 -1
  store ptr %incdec.ptr, ptr %psrc, align 8, !tbaa !4
  %67 = load i32, ptr %e, align 4, !tbaa !8
  %cmp54 = icmp sgt i32 %67, 0
  br i1 %cmp54, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.then48
  %68 = load i32, ptr %e2, align 4, !tbaa !8
  %inc56 = add nsw i32 %68, 1
  store i32 %inc56, ptr %e2, align 4, !tbaa !8
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.then48
  %69 = load i32, ptr %e2, align 4, !tbaa !8
  %70 = load ptr, ptr %psrc, align 8, !tbaa !4
  %size58 = getelementptr inbounds %struct.anon, ptr %70, i32 0, i32 0
  store i32 %69, ptr %size58, align 8, !tbaa !22
  %71 = load ptr, ptr %E, align 8, !tbaa !4
  %72 = load i32, ptr %e, align 4, !tbaa !8
  %idxprom59 = sext i32 %72 to i64
  %arrayidx60 = getelementptr inbounds i32, ptr %71, i64 %idxprom59
  store i32 0, ptr %arrayidx60, align 4, !tbaa !8
  %73 = load i32, ptr %e, align 4, !tbaa !8
  %74 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %prior_element = getelementptr inbounds %struct.WorkType, ptr %74, i32 0, i32 28
  %75 = load i32, ptr %prior_element, align 8, !tbaa !27
  %cmp61 = icmp eq i32 %73, %75
  br i1 %cmp61, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end57
  %76 = load i32, ptr %e2, align 4, !tbaa !8
  %77 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %prior_element63 = getelementptr inbounds %struct.WorkType, ptr %77, i32 0, i32 28
  store i32 %76, ptr %prior_element63, align 8, !tbaa !27
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end57
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %for.body44
  br label %for.inc66

for.inc66:                                        ; preds = %if.end65
  %78 = load i32, ptr %e, align 4, !tbaa !8
  %inc67 = add nsw i32 %78, 1
  store i32 %inc67, ptr %e, align 4, !tbaa !8
  br label %for.cond42, !llvm.loop !28

for.end68:                                        ; preds = %for.cond42
  %79 = load i32, ptr %e2, align 4, !tbaa !8
  %80 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %nel69 = getelementptr inbounds %struct.WorkType, ptr %80, i32 0, i32 26
  store i32 %79, ptr %nel69, align 8, !tbaa !26
  %81 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %nel70 = getelementptr inbounds %struct.WorkType, ptr %81, i32 0, i32 26
  %82 = load i32, ptr %nel70, align 8, !tbaa !26
  store i32 %82, ptr %nel, align 4, !tbaa !8
  %83 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory71 = getelementptr inbounds %struct.NumericType, ptr %83, i32 0, i32 13
  %84 = load ptr, ptr %Memory71, align 8, !tbaa !21
  %85 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %size72 = getelementptr inbounds %struct.NumericType, ptr %85, i32 0, i32 17
  %86 = load i32, ptr %size72, align 4, !tbaa !29
  %idx.ext73 = sext i32 %86 to i64
  %add.ptr74 = getelementptr inbounds %union.Unit_union, ptr %84, i64 %idx.ext73
  %add.ptr75 = getelementptr inbounds %union.Unit_union, ptr %add.ptr74, i64 -2
  store ptr %add.ptr75, ptr %psrc, align 8, !tbaa !4
  %87 = load ptr, ptr %psrc, align 8, !tbaa !4
  store ptr %87, ptr %pdest, align 8, !tbaa !4
  %88 = load ptr, ptr %psrc, align 8, !tbaa !4
  %prevsize76 = getelementptr inbounds %struct.anon, ptr %88, i32 0, i32 1
  %89 = load i32, ptr %prevsize76, align 4, !tbaa !22
  store i32 %89, ptr %prevsize, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %if.end533, %for.end68
  %90 = load i32, ptr %prevsize, align 4, !tbaa !8
  %cmp77 = icmp sgt i32 %90, 0
  br i1 %cmp77, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %91 = load i32, ptr %prevsize, align 4, !tbaa !8
  store i32 %91, ptr %size, align 4, !tbaa !8
  %92 = load i32, ptr %size, align 4, !tbaa !8
  %add = add nsw i32 %92, 1
  %93 = load ptr, ptr %psrc, align 8, !tbaa !4
  %idx.ext78 = sext i32 %add to i64
  %idx.neg = sub i64 0, %idx.ext78
  %add.ptr79 = getelementptr inbounds %union.Unit_union, ptr %93, i64 %idx.neg
  store ptr %add.ptr79, ptr %psrc, align 8, !tbaa !4
  %94 = load ptr, ptr %psrc, align 8, !tbaa !4
  %size80 = getelementptr inbounds %struct.anon, ptr %94, i32 0, i32 0
  %95 = load i32, ptr %size80, align 8, !tbaa !22
  store i32 %95, ptr %e, align 4, !tbaa !8
  %96 = load ptr, ptr %psrc, align 8, !tbaa !4
  %prevsize81 = getelementptr inbounds %struct.anon, ptr %96, i32 0, i32 1
  %97 = load i32, ptr %prevsize81, align 4, !tbaa !22
  store i32 %97, ptr %prevsize, align 4, !tbaa !8
  %98 = load i32, ptr %e, align 4, !tbaa !8
  %cmp82 = icmp eq i32 %98, 0
  br i1 %cmp82, label %if.then83, label %if.else

if.then83:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %F1) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %F2) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fsrc) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fdst) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %dr) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %dc) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %gap) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %gap1) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %gap2) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb) #2
  %99 = load ptr, ptr %psrc, align 8, !tbaa !4
  %add.ptr84 = getelementptr inbounds %union.Unit_union, ptr %99, i64 1
  store ptr %add.ptr84, ptr %F1, align 8, !tbaa !4
  %100 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnpiv = getelementptr inbounds %struct.WorkType, ptr %100, i32 0, i32 73
  %101 = load i32, ptr %fnpiv, align 8, !tbaa !30
  store i32 %101, ptr %k, align 4, !tbaa !8
  %102 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnr_curr = getelementptr inbounds %struct.WorkType, ptr %102, i32 0, i32 67
  %103 = load i32, ptr %fnr_curr, align 8, !tbaa !31
  store i32 %103, ptr %dr, align 4, !tbaa !8
  %104 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnc_curr = getelementptr inbounds %struct.WorkType, ptr %104, i32 0, i32 68
  %105 = load i32, ptr %fnc_curr, align 4, !tbaa !32
  store i32 %105, ptr %dc, align 4, !tbaa !8
  %106 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows = getelementptr inbounds %struct.WorkType, ptr %106, i32 0, i32 65
  %107 = load i32, ptr %fnrows, align 8, !tbaa !33
  store i32 %107, ptr %r, align 4, !tbaa !8
  %108 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols = getelementptr inbounds %struct.WorkType, ptr %108, i32 0, i32 66
  %109 = load i32, ptr %fncols, align 4, !tbaa !34
  store i32 %109, ptr %c, align 4, !tbaa !8
  %110 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %nb85 = getelementptr inbounds %struct.WorkType, ptr %110, i32 0, i32 72
  %111 = load i32, ptr %nb85, align 4, !tbaa !35
  store i32 %111, ptr %nb, align 4, !tbaa !8
  %112 = load i32, ptr %drnew.addr, align 4, !tbaa !8
  %rem = srem i32 %112, 2
  %cmp86 = icmp eq i32 %rem, 0
  br i1 %cmp86, label %if.then87, label %if.end89

if.then87:                                        ; preds = %if.then83
  %113 = load i32, ptr %drnew.addr, align 4, !tbaa !8
  %inc88 = add nsw i32 %113, 1
  store i32 %inc88, ptr %drnew.addr, align 4, !tbaa !8
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %if.then83
  %114 = load i32, ptr %dr, align 4, !tbaa !8
  %115 = load i32, ptr %drnew.addr, align 4, !tbaa !8
  %cmp90 = icmp slt i32 %114, %115
  br i1 %cmp90, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end89
  %116 = load i32, ptr %dr, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.end89
  %117 = load i32, ptr %drnew.addr, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %116, %cond.true ], [ %117, %cond.false ]
  store i32 %cond, ptr %drnew.addr, align 4, !tbaa !8
  %118 = load ptr, ptr %pdest, align 8, !tbaa !4
  store ptr %118, ptr %pnext, align 8, !tbaa !4
  %119 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Flblock = getelementptr inbounds %struct.WorkType, ptr %119, i32 0, i32 58
  %120 = load ptr, ptr %Flblock, align 8, !tbaa !36
  store ptr %120, ptr %Fsrc, align 8, !tbaa !4
  %121 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Flblock91 = getelementptr inbounds %struct.WorkType, ptr %121, i32 0, i32 58
  %122 = load ptr, ptr %Flblock91, align 8, !tbaa !36
  store ptr %122, ptr %Fdst, align 8, !tbaa !4
  %123 = load i32, ptr %dr, align 4, !tbaa !8
  %124 = load i32, ptr %r, align 4, !tbaa !8
  %sub92 = sub nsw i32 %123, %124
  store i32 %sub92, ptr %gap1, align 4, !tbaa !8
  %125 = load i32, ptr %drnew.addr, align 4, !tbaa !8
  %126 = load i32, ptr %r, align 4, !tbaa !8
  %sub93 = sub nsw i32 %125, %126
  store i32 %sub93, ptr %gap2, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc109, %cond.end
  %127 = load i32, ptr %j, align 4, !tbaa !8
  %128 = load i32, ptr %k, align 4, !tbaa !8
  %cmp95 = icmp slt i32 %127, %128
  br i1 %cmp95, label %for.body96, label %for.end111

for.body96:                                       ; preds = %for.cond94
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc102, %for.body96
  %129 = load i32, ptr %i, align 4, !tbaa !8
  %130 = load i32, ptr %r, align 4, !tbaa !8
  %cmp98 = icmp slt i32 %129, %130
  br i1 %cmp98, label %for.body99, label %for.end104

for.body99:                                       ; preds = %for.cond97
  %131 = load ptr, ptr %Fsrc, align 8, !tbaa !4
  %incdec.ptr100 = getelementptr inbounds double, ptr %131, i32 1
  store ptr %incdec.ptr100, ptr %Fsrc, align 8, !tbaa !4
  %132 = load double, ptr %131, align 8, !tbaa !37
  %133 = load ptr, ptr %Fdst, align 8, !tbaa !4
  %incdec.ptr101 = getelementptr inbounds double, ptr %133, i32 1
  store ptr %incdec.ptr101, ptr %Fdst, align 8, !tbaa !4
  store double %132, ptr %133, align 8, !tbaa !37
  br label %for.inc102

for.inc102:                                       ; preds = %for.body99
  %134 = load i32, ptr %i, align 4, !tbaa !8
  %inc103 = add nsw i32 %134, 1
  store i32 %inc103, ptr %i, align 4, !tbaa !8
  br label %for.cond97, !llvm.loop !38

for.end104:                                       ; preds = %for.cond97
  %135 = load i32, ptr %gap1, align 4, !tbaa !8
  %136 = load ptr, ptr %Fsrc, align 8, !tbaa !4
  %idx.ext105 = sext i32 %135 to i64
  %add.ptr106 = getelementptr inbounds double, ptr %136, i64 %idx.ext105
  store ptr %add.ptr106, ptr %Fsrc, align 8, !tbaa !4
  %137 = load i32, ptr %gap2, align 4, !tbaa !8
  %138 = load ptr, ptr %Fdst, align 8, !tbaa !4
  %idx.ext107 = sext i32 %137 to i64
  %add.ptr108 = getelementptr inbounds double, ptr %138, i64 %idx.ext107
  store ptr %add.ptr108, ptr %Fdst, align 8, !tbaa !4
  br label %for.inc109

for.inc109:                                       ; preds = %for.end104
  %139 = load i32, ptr %j, align 4, !tbaa !8
  %inc110 = add nsw i32 %139, 1
  store i32 %inc110, ptr %j, align 4, !tbaa !8
  br label %for.cond94, !llvm.loop !39

for.end111:                                       ; preds = %for.cond94
  %140 = load i32, ptr %drnew.addr, align 4, !tbaa !8
  %141 = load i32, ptr %nb, align 4, !tbaa !8
  %142 = load i32, ptr %k, align 4, !tbaa !8
  %sub112 = sub nsw i32 %141, %142
  %mul = mul nsw i32 %140, %sub112
  %143 = load ptr, ptr %Fdst, align 8, !tbaa !4
  %idx.ext113 = sext i32 %mul to i64
  %add.ptr114 = getelementptr inbounds double, ptr %143, i64 %idx.ext113
  store ptr %add.ptr114, ptr %Fdst, align 8, !tbaa !4
  %144 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fublock = getelementptr inbounds %struct.WorkType, ptr %144, i32 0, i32 59
  %145 = load ptr, ptr %Fublock, align 8, !tbaa !40
  store ptr %145, ptr %Fsrc, align 8, !tbaa !4
  %146 = load i32, ptr %dc, align 4, !tbaa !8
  %147 = load i32, ptr %c, align 4, !tbaa !8
  %sub115 = sub nsw i32 %146, %147
  store i32 %sub115, ptr %gap1, align 4, !tbaa !8
  %148 = load i32, ptr %dcnew.addr, align 4, !tbaa !8
  %149 = load i32, ptr %c, align 4, !tbaa !8
  %sub116 = sub nsw i32 %148, %149
  store i32 %sub116, ptr %gap2, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc132, %for.end111
  %150 = load i32, ptr %i, align 4, !tbaa !8
  %151 = load i32, ptr %k, align 4, !tbaa !8
  %cmp118 = icmp slt i32 %150, %151
  br i1 %cmp118, label %for.body119, label %for.end134

for.body119:                                      ; preds = %for.cond117
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond120

for.cond120:                                      ; preds = %for.inc125, %for.body119
  %152 = load i32, ptr %j, align 4, !tbaa !8
  %153 = load i32, ptr %c, align 4, !tbaa !8
  %cmp121 = icmp slt i32 %152, %153
  br i1 %cmp121, label %for.body122, label %for.end127

for.body122:                                      ; preds = %for.cond120
  %154 = load ptr, ptr %Fsrc, align 8, !tbaa !4
  %incdec.ptr123 = getelementptr inbounds double, ptr %154, i32 1
  store ptr %incdec.ptr123, ptr %Fsrc, align 8, !tbaa !4
  %155 = load double, ptr %154, align 8, !tbaa !37
  %156 = load ptr, ptr %Fdst, align 8, !tbaa !4
  %incdec.ptr124 = getelementptr inbounds double, ptr %156, i32 1
  store ptr %incdec.ptr124, ptr %Fdst, align 8, !tbaa !4
  store double %155, ptr %156, align 8, !tbaa !37
  br label %for.inc125

for.inc125:                                       ; preds = %for.body122
  %157 = load i32, ptr %j, align 4, !tbaa !8
  %inc126 = add nsw i32 %157, 1
  store i32 %inc126, ptr %j, align 4, !tbaa !8
  br label %for.cond120, !llvm.loop !41

for.end127:                                       ; preds = %for.cond120
  %158 = load i32, ptr %gap1, align 4, !tbaa !8
  %159 = load ptr, ptr %Fsrc, align 8, !tbaa !4
  %idx.ext128 = sext i32 %158 to i64
  %add.ptr129 = getelementptr inbounds double, ptr %159, i64 %idx.ext128
  store ptr %add.ptr129, ptr %Fsrc, align 8, !tbaa !4
  %160 = load i32, ptr %gap2, align 4, !tbaa !8
  %161 = load ptr, ptr %Fdst, align 8, !tbaa !4
  %idx.ext130 = sext i32 %160 to i64
  %add.ptr131 = getelementptr inbounds double, ptr %161, i64 %idx.ext130
  store ptr %add.ptr131, ptr %Fdst, align 8, !tbaa !4
  br label %for.inc132

for.inc132:                                       ; preds = %for.end127
  %162 = load i32, ptr %i, align 4, !tbaa !8
  %inc133 = add nsw i32 %162, 1
  store i32 %inc133, ptr %i, align 4, !tbaa !8
  br label %for.cond117, !llvm.loop !42

for.end134:                                       ; preds = %for.cond117
  %163 = load i32, ptr %dcnew.addr, align 4, !tbaa !8
  %164 = load i32, ptr %nb, align 4, !tbaa !8
  %165 = load i32, ptr %k, align 4, !tbaa !8
  %sub135 = sub nsw i32 %164, %165
  %mul136 = mul nsw i32 %163, %sub135
  %166 = load ptr, ptr %Fdst, align 8, !tbaa !4
  %idx.ext137 = sext i32 %mul136 to i64
  %add.ptr138 = getelementptr inbounds double, ptr %166, i64 %idx.ext137
  store ptr %add.ptr138, ptr %Fdst, align 8, !tbaa !4
  %167 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fcblock = getelementptr inbounds %struct.WorkType, ptr %167, i32 0, i32 60
  %168 = load ptr, ptr %Fcblock, align 8, !tbaa !43
  store ptr %168, ptr %Fsrc, align 8, !tbaa !4
  %169 = load i32, ptr %dr, align 4, !tbaa !8
  %170 = load i32, ptr %r, align 4, !tbaa !8
  %sub139 = sub nsw i32 %169, %170
  store i32 %sub139, ptr %gap1, align 4, !tbaa !8
  %171 = load i32, ptr %drnew.addr, align 4, !tbaa !8
  %172 = load i32, ptr %r, align 4, !tbaa !8
  %sub140 = sub nsw i32 %171, %172
  store i32 %sub140, ptr %gap2, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond141

for.cond141:                                      ; preds = %for.inc156, %for.end134
  %173 = load i32, ptr %j, align 4, !tbaa !8
  %174 = load i32, ptr %c, align 4, !tbaa !8
  %cmp142 = icmp slt i32 %173, %174
  br i1 %cmp142, label %for.body143, label %for.end158

for.body143:                                      ; preds = %for.cond141
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond144

for.cond144:                                      ; preds = %for.inc149, %for.body143
  %175 = load i32, ptr %i, align 4, !tbaa !8
  %176 = load i32, ptr %r, align 4, !tbaa !8
  %cmp145 = icmp slt i32 %175, %176
  br i1 %cmp145, label %for.body146, label %for.end151

for.body146:                                      ; preds = %for.cond144
  %177 = load ptr, ptr %Fsrc, align 8, !tbaa !4
  %incdec.ptr147 = getelementptr inbounds double, ptr %177, i32 1
  store ptr %incdec.ptr147, ptr %Fsrc, align 8, !tbaa !4
  %178 = load double, ptr %177, align 8, !tbaa !37
  %179 = load ptr, ptr %Fdst, align 8, !tbaa !4
  %incdec.ptr148 = getelementptr inbounds double, ptr %179, i32 1
  store ptr %incdec.ptr148, ptr %Fdst, align 8, !tbaa !4
  store double %178, ptr %179, align 8, !tbaa !37
  br label %for.inc149

for.inc149:                                       ; preds = %for.body146
  %180 = load i32, ptr %i, align 4, !tbaa !8
  %inc150 = add nsw i32 %180, 1
  store i32 %inc150, ptr %i, align 4, !tbaa !8
  br label %for.cond144, !llvm.loop !44

for.end151:                                       ; preds = %for.cond144
  %181 = load i32, ptr %gap1, align 4, !tbaa !8
  %182 = load ptr, ptr %Fsrc, align 8, !tbaa !4
  %idx.ext152 = sext i32 %181 to i64
  %add.ptr153 = getelementptr inbounds double, ptr %182, i64 %idx.ext152
  store ptr %add.ptr153, ptr %Fsrc, align 8, !tbaa !4
  %183 = load i32, ptr %gap2, align 4, !tbaa !8
  %184 = load ptr, ptr %Fdst, align 8, !tbaa !4
  %idx.ext154 = sext i32 %183 to i64
  %add.ptr155 = getelementptr inbounds double, ptr %184, i64 %idx.ext154
  store ptr %add.ptr155, ptr %Fdst, align 8, !tbaa !4
  br label %for.inc156

for.inc156:                                       ; preds = %for.end151
  %185 = load i32, ptr %j, align 4, !tbaa !8
  %inc157 = add nsw i32 %185, 1
  store i32 %inc157, ptr %j, align 4, !tbaa !8
  br label %for.cond141, !llvm.loop !45

for.end158:                                       ; preds = %for.cond141
  %186 = load i32, ptr %do_Fcpos.addr, align 4, !tbaa !8
  %tobool159 = icmp ne i32 %186, 0
  br i1 %tobool159, label %if.then160, label %if.end174

if.then160:                                       ; preds = %for.end158
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fcols) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fcpos) #2
  %187 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fcols161 = getelementptr inbounds %struct.WorkType, ptr %187, i32 0, i32 62
  %188 = load ptr, ptr %Fcols161, align 8, !tbaa !46
  store ptr %188, ptr %Fcols, align 8, !tbaa !4
  %189 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fcpos162 = getelementptr inbounds %struct.WorkType, ptr %189, i32 0, i32 64
  %190 = load ptr, ptr %Fcpos162, align 8, !tbaa !47
  store ptr %190, ptr %Fcpos, align 8, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond163

for.cond163:                                      ; preds = %for.inc171, %if.then160
  %191 = load i32, ptr %j, align 4, !tbaa !8
  %192 = load i32, ptr %c, align 4, !tbaa !8
  %cmp164 = icmp slt i32 %191, %192
  br i1 %cmp164, label %for.body165, label %for.end173

for.body165:                                      ; preds = %for.cond163
  %193 = load ptr, ptr %Fcols, align 8, !tbaa !4
  %194 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom166 = sext i32 %194 to i64
  %arrayidx167 = getelementptr inbounds i32, ptr %193, i64 %idxprom166
  %195 = load i32, ptr %arrayidx167, align 4, !tbaa !8
  store i32 %195, ptr %col, align 4, !tbaa !8
  %196 = load i32, ptr %j, align 4, !tbaa !8
  %197 = load i32, ptr %drnew.addr, align 4, !tbaa !8
  %mul168 = mul nsw i32 %196, %197
  %198 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %199 = load i32, ptr %col, align 4, !tbaa !8
  %idxprom169 = sext i32 %199 to i64
  %arrayidx170 = getelementptr inbounds i32, ptr %198, i64 %idxprom169
  store i32 %mul168, ptr %arrayidx170, align 4, !tbaa !8
  br label %for.inc171

for.inc171:                                       ; preds = %for.body165
  %200 = load i32, ptr %j, align 4, !tbaa !8
  %inc172 = add nsw i32 %200, 1
  store i32 %inc172, ptr %j, align 4, !tbaa !8
  br label %for.cond163, !llvm.loop !48

for.end173:                                       ; preds = %for.cond163
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fcpos) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fcols) #2
  br label %if.end174

if.end174:                                        ; preds = %for.end173, %for.end158
  %201 = load i32, ptr %drnew.addr, align 4, !tbaa !8
  %202 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnr_curr175 = getelementptr inbounds %struct.WorkType, ptr %202, i32 0, i32 67
  store i32 %201, ptr %fnr_curr175, align 8, !tbaa !31
  %203 = load i32, ptr %dcnew.addr, align 4, !tbaa !8
  %204 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnc_curr176 = getelementptr inbounds %struct.WorkType, ptr %204, i32 0, i32 68
  store i32 %203, ptr %fnc_curr176, align 4, !tbaa !32
  %205 = load i32, ptr %drnew.addr, align 4, !tbaa !8
  %206 = load i32, ptr %nb, align 4, !tbaa !8
  %add177 = add nsw i32 %205, %206
  %207 = load i32, ptr %dcnew.addr, align 4, !tbaa !8
  %208 = load i32, ptr %nb, align 4, !tbaa !8
  %add178 = add nsw i32 %207, %208
  %mul179 = mul nsw i32 %add177, %add178
  %209 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fcurr_size = getelementptr inbounds %struct.WorkType, ptr %209, i32 0, i32 69
  store i32 %mul179, ptr %fcurr_size, align 8, !tbaa !49
  %210 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fcurr_size180 = getelementptr inbounds %struct.WorkType, ptr %210, i32 0, i32 69
  %211 = load i32, ptr %fcurr_size180, align 8, !tbaa !49
  %conv = sext i32 %211 to i64
  %mul181 = mul i64 8, %conv
  %add182 = add i64 %mul181, 8
  %sub183 = sub i64 %add182, 1
  %div = udiv i64 %sub183, 8
  %conv184 = trunc i64 %div to i32
  store i32 %conv184, ptr %size, align 4, !tbaa !8
  %212 = load i32, ptr %size, align 4, !tbaa !8
  %cmp185 = icmp sgt i32 1, %212
  br i1 %cmp185, label %cond.true187, label %cond.false188

cond.true187:                                     ; preds = %if.end174
  br label %cond.end189

cond.false188:                                    ; preds = %if.end174
  %213 = load i32, ptr %size, align 4, !tbaa !8
  br label %cond.end189

cond.end189:                                      ; preds = %cond.false188, %cond.true187
  %cond190 = phi i32 [ 1, %cond.true187 ], [ %213, %cond.false188 ]
  store i32 %cond190, ptr %size, align 4, !tbaa !8
  %214 = load i32, ptr %size, align 4, !tbaa !8
  %215 = load ptr, ptr %pnext, align 8, !tbaa !4
  %prevsize191 = getelementptr inbounds %struct.anon, ptr %215, i32 0, i32 1
  store i32 %214, ptr %prevsize191, align 4, !tbaa !22
  %216 = load i32, ptr %size, align 4, !tbaa !8
  %add192 = add nsw i32 %216, 1
  %217 = load ptr, ptr %pdest, align 8, !tbaa !4
  %idx.ext193 = sext i32 %add192 to i64
  %idx.neg194 = sub i64 0, %idx.ext193
  %add.ptr195 = getelementptr inbounds %union.Unit_union, ptr %217, i64 %idx.neg194
  store ptr %add.ptr195, ptr %pdest, align 8, !tbaa !4
  %218 = load ptr, ptr %pdest, align 8, !tbaa !4
  %add.ptr196 = getelementptr inbounds %union.Unit_union, ptr %218, i64 1
  store ptr %add.ptr196, ptr %F2, align 8, !tbaa !4
  %219 = load ptr, ptr %F1, align 8, !tbaa !4
  %220 = load i32, ptr %nb, align 4, !tbaa !8
  %221 = load i32, ptr %nb, align 4, !tbaa !8
  %mul197 = mul nsw i32 %220, %221
  %idx.ext198 = sext i32 %mul197 to i64
  %add.ptr199 = getelementptr inbounds double, ptr %219, i64 %idx.ext198
  %222 = load i32, ptr %drnew.addr, align 4, !tbaa !8
  %223 = load i32, ptr %nb, align 4, !tbaa !8
  %mul200 = mul nsw i32 %222, %223
  %idx.ext201 = sext i32 %mul200 to i64
  %add.ptr202 = getelementptr inbounds double, ptr %add.ptr199, i64 %idx.ext201
  %224 = load i32, ptr %nb, align 4, !tbaa !8
  %225 = load i32, ptr %dcnew.addr, align 4, !tbaa !8
  %mul203 = mul nsw i32 %224, %225
  %idx.ext204 = sext i32 %mul203 to i64
  %add.ptr205 = getelementptr inbounds double, ptr %add.ptr202, i64 %idx.ext204
  %226 = load i32, ptr %drnew.addr, align 4, !tbaa !8
  %227 = load i32, ptr %c, align 4, !tbaa !8
  %mul206 = mul nsw i32 %226, %227
  %idx.ext207 = sext i32 %mul206 to i64
  %add.ptr208 = getelementptr inbounds double, ptr %add.ptr205, i64 %idx.ext207
  store ptr %add.ptr208, ptr %Fsrc, align 8, !tbaa !4
  %228 = load ptr, ptr %F2, align 8, !tbaa !4
  %229 = load i32, ptr %nb, align 4, !tbaa !8
  %230 = load i32, ptr %nb, align 4, !tbaa !8
  %mul209 = mul nsw i32 %229, %230
  %idx.ext210 = sext i32 %mul209 to i64
  %add.ptr211 = getelementptr inbounds double, ptr %228, i64 %idx.ext210
  %231 = load i32, ptr %drnew.addr, align 4, !tbaa !8
  %232 = load i32, ptr %nb, align 4, !tbaa !8
  %mul212 = mul nsw i32 %231, %232
  %idx.ext213 = sext i32 %mul212 to i64
  %add.ptr214 = getelementptr inbounds double, ptr %add.ptr211, i64 %idx.ext213
  %233 = load i32, ptr %nb, align 4, !tbaa !8
  %234 = load i32, ptr %dcnew.addr, align 4, !tbaa !8
  %mul215 = mul nsw i32 %233, %234
  %idx.ext216 = sext i32 %mul215 to i64
  %add.ptr217 = getelementptr inbounds double, ptr %add.ptr214, i64 %idx.ext216
  %235 = load i32, ptr %drnew.addr, align 4, !tbaa !8
  %236 = load i32, ptr %c, align 4, !tbaa !8
  %mul218 = mul nsw i32 %235, %236
  %idx.ext219 = sext i32 %mul218 to i64
  %add.ptr220 = getelementptr inbounds double, ptr %add.ptr217, i64 %idx.ext219
  store ptr %add.ptr220, ptr %Fdst, align 8, !tbaa !4
  %237 = load i32, ptr %drnew.addr, align 4, !tbaa !8
  %238 = load i32, ptr %r, align 4, !tbaa !8
  %sub221 = sub nsw i32 %237, %238
  store i32 %sub221, ptr %gap, align 4, !tbaa !8
  %239 = load i32, ptr %c, align 4, !tbaa !8
  %sub222 = sub nsw i32 %239, 1
  store i32 %sub222, ptr %j, align 4, !tbaa !8
  br label %for.cond223

for.cond223:                                      ; preds = %for.inc242, %cond.end189
  %240 = load i32, ptr %j, align 4, !tbaa !8
  %cmp224 = icmp sge i32 %240, 0
  br i1 %cmp224, label %for.body226, label %for.end244

for.body226:                                      ; preds = %for.cond223
  %241 = load i32, ptr %gap, align 4, !tbaa !8
  %242 = load ptr, ptr %Fsrc, align 8, !tbaa !4
  %idx.ext227 = sext i32 %241 to i64
  %idx.neg228 = sub i64 0, %idx.ext227
  %add.ptr229 = getelementptr inbounds double, ptr %242, i64 %idx.neg228
  store ptr %add.ptr229, ptr %Fsrc, align 8, !tbaa !4
  %243 = load i32, ptr %gap, align 4, !tbaa !8
  %244 = load ptr, ptr %Fdst, align 8, !tbaa !4
  %idx.ext230 = sext i32 %243 to i64
  %idx.neg231 = sub i64 0, %idx.ext230
  %add.ptr232 = getelementptr inbounds double, ptr %244, i64 %idx.neg231
  store ptr %add.ptr232, ptr %Fdst, align 8, !tbaa !4
  %245 = load i32, ptr %r, align 4, !tbaa !8
  %sub233 = sub nsw i32 %245, 1
  store i32 %sub233, ptr %i, align 4, !tbaa !8
  br label %for.cond234

for.cond234:                                      ; preds = %for.inc240, %for.body226
  %246 = load i32, ptr %i, align 4, !tbaa !8
  %cmp235 = icmp sge i32 %246, 0
  br i1 %cmp235, label %for.body237, label %for.end241

for.body237:                                      ; preds = %for.cond234
  %247 = load ptr, ptr %Fsrc, align 8, !tbaa !4
  %incdec.ptr238 = getelementptr inbounds double, ptr %247, i32 -1
  store ptr %incdec.ptr238, ptr %Fsrc, align 8, !tbaa !4
  %248 = load double, ptr %incdec.ptr238, align 8, !tbaa !37
  %249 = load ptr, ptr %Fdst, align 8, !tbaa !4
  %incdec.ptr239 = getelementptr inbounds double, ptr %249, i32 -1
  store ptr %incdec.ptr239, ptr %Fdst, align 8, !tbaa !4
  store double %248, ptr %incdec.ptr239, align 8, !tbaa !37
  br label %for.inc240

for.inc240:                                       ; preds = %for.body237
  %250 = load i32, ptr %i, align 4, !tbaa !8
  %dec = add nsw i32 %250, -1
  store i32 %dec, ptr %i, align 4, !tbaa !8
  br label %for.cond234, !llvm.loop !50

for.end241:                                       ; preds = %for.cond234
  br label %for.inc242

for.inc242:                                       ; preds = %for.end241
  %251 = load i32, ptr %j, align 4, !tbaa !8
  %dec243 = add nsw i32 %251, -1
  store i32 %dec243, ptr %j, align 4, !tbaa !8
  br label %for.cond223, !llvm.loop !51

for.end244:                                       ; preds = %for.cond223
  %252 = load i32, ptr %dcnew.addr, align 4, !tbaa !8
  %253 = load i32, ptr %nb, align 4, !tbaa !8
  %254 = load i32, ptr %k, align 4, !tbaa !8
  %sub245 = sub nsw i32 %253, %254
  %mul246 = mul nsw i32 %252, %sub245
  %255 = load ptr, ptr %Fsrc, align 8, !tbaa !4
  %idx.ext247 = sext i32 %mul246 to i64
  %idx.neg248 = sub i64 0, %idx.ext247
  %add.ptr249 = getelementptr inbounds double, ptr %255, i64 %idx.neg248
  store ptr %add.ptr249, ptr %Fsrc, align 8, !tbaa !4
  %256 = load i32, ptr %dcnew.addr, align 4, !tbaa !8
  %257 = load i32, ptr %nb, align 4, !tbaa !8
  %258 = load i32, ptr %k, align 4, !tbaa !8
  %sub250 = sub nsw i32 %257, %258
  %mul251 = mul nsw i32 %256, %sub250
  %259 = load ptr, ptr %Fdst, align 8, !tbaa !4
  %idx.ext252 = sext i32 %mul251 to i64
  %idx.neg253 = sub i64 0, %idx.ext252
  %add.ptr254 = getelementptr inbounds double, ptr %259, i64 %idx.neg253
  store ptr %add.ptr254, ptr %Fdst, align 8, !tbaa !4
  %260 = load i32, ptr %dcnew.addr, align 4, !tbaa !8
  %261 = load i32, ptr %c, align 4, !tbaa !8
  %sub255 = sub nsw i32 %260, %261
  store i32 %sub255, ptr %gap, align 4, !tbaa !8
  %262 = load i32, ptr %k, align 4, !tbaa !8
  %sub256 = sub nsw i32 %262, 1
  store i32 %sub256, ptr %i, align 4, !tbaa !8
  br label %for.cond257

for.cond257:                                      ; preds = %for.inc277, %for.end244
  %263 = load i32, ptr %i, align 4, !tbaa !8
  %cmp258 = icmp sge i32 %263, 0
  br i1 %cmp258, label %for.body260, label %for.end279

for.body260:                                      ; preds = %for.cond257
  %264 = load i32, ptr %gap, align 4, !tbaa !8
  %265 = load ptr, ptr %Fsrc, align 8, !tbaa !4
  %idx.ext261 = sext i32 %264 to i64
  %idx.neg262 = sub i64 0, %idx.ext261
  %add.ptr263 = getelementptr inbounds double, ptr %265, i64 %idx.neg262
  store ptr %add.ptr263, ptr %Fsrc, align 8, !tbaa !4
  %266 = load i32, ptr %gap, align 4, !tbaa !8
  %267 = load ptr, ptr %Fdst, align 8, !tbaa !4
  %idx.ext264 = sext i32 %266 to i64
  %idx.neg265 = sub i64 0, %idx.ext264
  %add.ptr266 = getelementptr inbounds double, ptr %267, i64 %idx.neg265
  store ptr %add.ptr266, ptr %Fdst, align 8, !tbaa !4
  %268 = load i32, ptr %c, align 4, !tbaa !8
  %sub267 = sub nsw i32 %268, 1
  store i32 %sub267, ptr %j, align 4, !tbaa !8
  br label %for.cond268

for.cond268:                                      ; preds = %for.inc274, %for.body260
  %269 = load i32, ptr %j, align 4, !tbaa !8
  %cmp269 = icmp sge i32 %269, 0
  br i1 %cmp269, label %for.body271, label %for.end276

for.body271:                                      ; preds = %for.cond268
  %270 = load ptr, ptr %Fsrc, align 8, !tbaa !4
  %incdec.ptr272 = getelementptr inbounds double, ptr %270, i32 -1
  store ptr %incdec.ptr272, ptr %Fsrc, align 8, !tbaa !4
  %271 = load double, ptr %incdec.ptr272, align 8, !tbaa !37
  %272 = load ptr, ptr %Fdst, align 8, !tbaa !4
  %incdec.ptr273 = getelementptr inbounds double, ptr %272, i32 -1
  store ptr %incdec.ptr273, ptr %Fdst, align 8, !tbaa !4
  store double %271, ptr %incdec.ptr273, align 8, !tbaa !37
  br label %for.inc274

for.inc274:                                       ; preds = %for.body271
  %273 = load i32, ptr %j, align 4, !tbaa !8
  %dec275 = add nsw i32 %273, -1
  store i32 %dec275, ptr %j, align 4, !tbaa !8
  br label %for.cond268, !llvm.loop !52

for.end276:                                       ; preds = %for.cond268
  br label %for.inc277

for.inc277:                                       ; preds = %for.end276
  %274 = load i32, ptr %i, align 4, !tbaa !8
  %dec278 = add nsw i32 %274, -1
  store i32 %dec278, ptr %i, align 4, !tbaa !8
  br label %for.cond257, !llvm.loop !53

for.end279:                                       ; preds = %for.cond257
  %275 = load i32, ptr %drnew.addr, align 4, !tbaa !8
  %276 = load i32, ptr %nb, align 4, !tbaa !8
  %277 = load i32, ptr %k, align 4, !tbaa !8
  %sub280 = sub nsw i32 %276, %277
  %mul281 = mul nsw i32 %275, %sub280
  %278 = load ptr, ptr %Fsrc, align 8, !tbaa !4
  %idx.ext282 = sext i32 %mul281 to i64
  %idx.neg283 = sub i64 0, %idx.ext282
  %add.ptr284 = getelementptr inbounds double, ptr %278, i64 %idx.neg283
  store ptr %add.ptr284, ptr %Fsrc, align 8, !tbaa !4
  %279 = load i32, ptr %drnew.addr, align 4, !tbaa !8
  %280 = load i32, ptr %nb, align 4, !tbaa !8
  %281 = load i32, ptr %k, align 4, !tbaa !8
  %sub285 = sub nsw i32 %280, %281
  %mul286 = mul nsw i32 %279, %sub285
  %282 = load ptr, ptr %Fdst, align 8, !tbaa !4
  %idx.ext287 = sext i32 %mul286 to i64
  %idx.neg288 = sub i64 0, %idx.ext287
  %add.ptr289 = getelementptr inbounds double, ptr %282, i64 %idx.neg288
  store ptr %add.ptr289, ptr %Fdst, align 8, !tbaa !4
  %283 = load i32, ptr %drnew.addr, align 4, !tbaa !8
  %284 = load i32, ptr %r, align 4, !tbaa !8
  %sub290 = sub nsw i32 %283, %284
  store i32 %sub290, ptr %gap, align 4, !tbaa !8
  %285 = load i32, ptr %k, align 4, !tbaa !8
  %sub291 = sub nsw i32 %285, 1
  store i32 %sub291, ptr %j, align 4, !tbaa !8
  br label %for.cond292

for.cond292:                                      ; preds = %for.inc312, %for.end279
  %286 = load i32, ptr %j, align 4, !tbaa !8
  %cmp293 = icmp sge i32 %286, 0
  br i1 %cmp293, label %for.body295, label %for.end314

for.body295:                                      ; preds = %for.cond292
  %287 = load i32, ptr %gap, align 4, !tbaa !8
  %288 = load ptr, ptr %Fsrc, align 8, !tbaa !4
  %idx.ext296 = sext i32 %287 to i64
  %idx.neg297 = sub i64 0, %idx.ext296
  %add.ptr298 = getelementptr inbounds double, ptr %288, i64 %idx.neg297
  store ptr %add.ptr298, ptr %Fsrc, align 8, !tbaa !4
  %289 = load i32, ptr %gap, align 4, !tbaa !8
  %290 = load ptr, ptr %Fdst, align 8, !tbaa !4
  %idx.ext299 = sext i32 %289 to i64
  %idx.neg300 = sub i64 0, %idx.ext299
  %add.ptr301 = getelementptr inbounds double, ptr %290, i64 %idx.neg300
  store ptr %add.ptr301, ptr %Fdst, align 8, !tbaa !4
  %291 = load i32, ptr %r, align 4, !tbaa !8
  %sub302 = sub nsw i32 %291, 1
  store i32 %sub302, ptr %i, align 4, !tbaa !8
  br label %for.cond303

for.cond303:                                      ; preds = %for.inc309, %for.body295
  %292 = load i32, ptr %i, align 4, !tbaa !8
  %cmp304 = icmp sge i32 %292, 0
  br i1 %cmp304, label %for.body306, label %for.end311

for.body306:                                      ; preds = %for.cond303
  %293 = load ptr, ptr %Fsrc, align 8, !tbaa !4
  %incdec.ptr307 = getelementptr inbounds double, ptr %293, i32 -1
  store ptr %incdec.ptr307, ptr %Fsrc, align 8, !tbaa !4
  %294 = load double, ptr %incdec.ptr307, align 8, !tbaa !37
  %295 = load ptr, ptr %Fdst, align 8, !tbaa !4
  %incdec.ptr308 = getelementptr inbounds double, ptr %295, i32 -1
  store ptr %incdec.ptr308, ptr %Fdst, align 8, !tbaa !4
  store double %294, ptr %incdec.ptr308, align 8, !tbaa !37
  br label %for.inc309

for.inc309:                                       ; preds = %for.body306
  %296 = load i32, ptr %i, align 4, !tbaa !8
  %dec310 = add nsw i32 %296, -1
  store i32 %dec310, ptr %i, align 4, !tbaa !8
  br label %for.cond303, !llvm.loop !54

for.end311:                                       ; preds = %for.cond303
  br label %for.inc312

for.inc312:                                       ; preds = %for.end311
  %297 = load i32, ptr %j, align 4, !tbaa !8
  %dec313 = add nsw i32 %297, -1
  store i32 %dec313, ptr %j, align 4, !tbaa !8
  br label %for.cond292, !llvm.loop !55

for.end314:                                       ; preds = %for.cond292
  %298 = load i32, ptr %nb, align 4, !tbaa !8
  %299 = load i32, ptr %nb, align 4, !tbaa !8
  %300 = load i32, ptr %k, align 4, !tbaa !8
  %sub315 = sub nsw i32 %299, %300
  %mul316 = mul nsw i32 %298, %sub315
  %301 = load ptr, ptr %Fsrc, align 8, !tbaa !4
  %idx.ext317 = sext i32 %mul316 to i64
  %idx.neg318 = sub i64 0, %idx.ext317
  %add.ptr319 = getelementptr inbounds double, ptr %301, i64 %idx.neg318
  store ptr %add.ptr319, ptr %Fsrc, align 8, !tbaa !4
  %302 = load i32, ptr %nb, align 4, !tbaa !8
  %303 = load i32, ptr %nb, align 4, !tbaa !8
  %304 = load i32, ptr %k, align 4, !tbaa !8
  %sub320 = sub nsw i32 %303, %304
  %mul321 = mul nsw i32 %302, %sub320
  %305 = load ptr, ptr %Fdst, align 8, !tbaa !4
  %idx.ext322 = sext i32 %mul321 to i64
  %idx.neg323 = sub i64 0, %idx.ext322
  %add.ptr324 = getelementptr inbounds double, ptr %305, i64 %idx.neg323
  store ptr %add.ptr324, ptr %Fdst, align 8, !tbaa !4
  %306 = load i32, ptr %nb, align 4, !tbaa !8
  %307 = load i32, ptr %k, align 4, !tbaa !8
  %sub325 = sub nsw i32 %306, %307
  store i32 %sub325, ptr %gap, align 4, !tbaa !8
  %308 = load i32, ptr %k, align 4, !tbaa !8
  %sub326 = sub nsw i32 %308, 1
  store i32 %sub326, ptr %j, align 4, !tbaa !8
  br label %for.cond327

for.cond327:                                      ; preds = %for.inc347, %for.end314
  %309 = load i32, ptr %j, align 4, !tbaa !8
  %cmp328 = icmp sge i32 %309, 0
  br i1 %cmp328, label %for.body330, label %for.end349

for.body330:                                      ; preds = %for.cond327
  %310 = load i32, ptr %gap, align 4, !tbaa !8
  %311 = load ptr, ptr %Fsrc, align 8, !tbaa !4
  %idx.ext331 = sext i32 %310 to i64
  %idx.neg332 = sub i64 0, %idx.ext331
  %add.ptr333 = getelementptr inbounds double, ptr %311, i64 %idx.neg332
  store ptr %add.ptr333, ptr %Fsrc, align 8, !tbaa !4
  %312 = load i32, ptr %gap, align 4, !tbaa !8
  %313 = load ptr, ptr %Fdst, align 8, !tbaa !4
  %idx.ext334 = sext i32 %312 to i64
  %idx.neg335 = sub i64 0, %idx.ext334
  %add.ptr336 = getelementptr inbounds double, ptr %313, i64 %idx.neg335
  store ptr %add.ptr336, ptr %Fdst, align 8, !tbaa !4
  %314 = load i32, ptr %k, align 4, !tbaa !8
  %sub337 = sub nsw i32 %314, 1
  store i32 %sub337, ptr %i, align 4, !tbaa !8
  br label %for.cond338

for.cond338:                                      ; preds = %for.inc344, %for.body330
  %315 = load i32, ptr %i, align 4, !tbaa !8
  %cmp339 = icmp sge i32 %315, 0
  br i1 %cmp339, label %for.body341, label %for.end346

for.body341:                                      ; preds = %for.cond338
  %316 = load ptr, ptr %Fsrc, align 8, !tbaa !4
  %incdec.ptr342 = getelementptr inbounds double, ptr %316, i32 -1
  store ptr %incdec.ptr342, ptr %Fsrc, align 8, !tbaa !4
  %317 = load double, ptr %incdec.ptr342, align 8, !tbaa !37
  %318 = load ptr, ptr %Fdst, align 8, !tbaa !4
  %incdec.ptr343 = getelementptr inbounds double, ptr %318, i32 -1
  store ptr %incdec.ptr343, ptr %Fdst, align 8, !tbaa !4
  store double %317, ptr %incdec.ptr343, align 8, !tbaa !37
  br label %for.inc344

for.inc344:                                       ; preds = %for.body341
  %319 = load i32, ptr %i, align 4, !tbaa !8
  %dec345 = add nsw i32 %319, -1
  store i32 %dec345, ptr %i, align 4, !tbaa !8
  br label %for.cond338, !llvm.loop !56

for.end346:                                       ; preds = %for.cond338
  br label %for.inc347

for.inc347:                                       ; preds = %for.end346
  %320 = load i32, ptr %j, align 4, !tbaa !8
  %dec348 = add nsw i32 %320, -1
  store i32 %dec348, ptr %j, align 4, !tbaa !8
  br label %for.cond327, !llvm.loop !57

for.end349:                                       ; preds = %for.cond327
  %321 = load ptr, ptr %pdest, align 8, !tbaa !4
  %add.ptr350 = getelementptr inbounds %union.Unit_union, ptr %321, i64 1
  %322 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory351 = getelementptr inbounds %struct.NumericType, ptr %322, i32 0, i32 13
  %323 = load ptr, ptr %Memory351, align 8, !tbaa !21
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr350 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %323 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv352 = trunc i64 %sub.ptr.div to i32
  %324 = load ptr, ptr %E, align 8, !tbaa !4
  %arrayidx353 = getelementptr inbounds i32, ptr %324, i64 0
  store i32 %conv352, ptr %arrayidx353, align 4, !tbaa !8
  %325 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory354 = getelementptr inbounds %struct.NumericType, ptr %325, i32 0, i32 13
  %326 = load ptr, ptr %Memory354, align 8, !tbaa !21
  %327 = load ptr, ptr %E, align 8, !tbaa !4
  %arrayidx355 = getelementptr inbounds i32, ptr %327, i64 0
  %328 = load i32, ptr %arrayidx355, align 4, !tbaa !8
  %idx.ext356 = sext i32 %328 to i64
  %add.ptr357 = getelementptr inbounds %union.Unit_union, ptr %326, i64 %idx.ext356
  %329 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Flublock = getelementptr inbounds %struct.WorkType, ptr %329, i32 0, i32 57
  store ptr %add.ptr357, ptr %Flublock, align 8, !tbaa !58
  %330 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Flublock358 = getelementptr inbounds %struct.WorkType, ptr %330, i32 0, i32 57
  %331 = load ptr, ptr %Flublock358, align 8, !tbaa !58
  %332 = load i32, ptr %nb, align 4, !tbaa !8
  %333 = load i32, ptr %nb, align 4, !tbaa !8
  %mul359 = mul nsw i32 %332, %333
  %idx.ext360 = sext i32 %mul359 to i64
  %add.ptr361 = getelementptr inbounds double, ptr %331, i64 %idx.ext360
  %334 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Flblock362 = getelementptr inbounds %struct.WorkType, ptr %334, i32 0, i32 58
  store ptr %add.ptr361, ptr %Flblock362, align 8, !tbaa !36
  %335 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Flblock363 = getelementptr inbounds %struct.WorkType, ptr %335, i32 0, i32 58
  %336 = load ptr, ptr %Flblock363, align 8, !tbaa !36
  %337 = load i32, ptr %drnew.addr, align 4, !tbaa !8
  %338 = load i32, ptr %nb, align 4, !tbaa !8
  %mul364 = mul nsw i32 %337, %338
  %idx.ext365 = sext i32 %mul364 to i64
  %add.ptr366 = getelementptr inbounds double, ptr %336, i64 %idx.ext365
  %339 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fublock367 = getelementptr inbounds %struct.WorkType, ptr %339, i32 0, i32 59
  store ptr %add.ptr366, ptr %Fublock367, align 8, !tbaa !40
  %340 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fublock368 = getelementptr inbounds %struct.WorkType, ptr %340, i32 0, i32 59
  %341 = load ptr, ptr %Fublock368, align 8, !tbaa !40
  %342 = load i32, ptr %nb, align 4, !tbaa !8
  %343 = load i32, ptr %dcnew.addr, align 4, !tbaa !8
  %mul369 = mul nsw i32 %342, %343
  %idx.ext370 = sext i32 %mul369 to i64
  %add.ptr371 = getelementptr inbounds double, ptr %341, i64 %idx.ext370
  %344 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fcblock372 = getelementptr inbounds %struct.WorkType, ptr %344, i32 0, i32 60
  store ptr %add.ptr371, ptr %Fcblock372, align 8, !tbaa !43
  %345 = load ptr, ptr %pdest, align 8, !tbaa !4
  %prevsize373 = getelementptr inbounds %struct.anon, ptr %345, i32 0, i32 1
  store i32 0, ptr %prevsize373, align 4, !tbaa !22
  %346 = load i32, ptr %size, align 4, !tbaa !8
  %347 = load ptr, ptr %pdest, align 8, !tbaa !4
  %size374 = getelementptr inbounds %struct.anon, ptr %347, i32 0, i32 0
  store i32 %346, ptr %size374, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %gap2) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %gap1) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %gap) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %dc) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %dr) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fdst) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fsrc) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %F2) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %F1) #2
  br label %if.end533

if.else:                                          ; preds = %while.body
  %348 = load i32, ptr %e, align 4, !tbaa !8
  %cmp375 = icmp sgt i32 %348, 0
  br i1 %cmp375, label %if.then377, label %if.end532

if.then377:                                       ; preds = %if.else
  %349 = load ptr, ptr %psrc, align 8, !tbaa !4
  %add.ptr378 = getelementptr inbounds %union.Unit_union, ptr %349, i64 1
  store ptr %add.ptr378, ptr %p, align 8, !tbaa !4
  %350 = load ptr, ptr %p, align 8, !tbaa !4
  store ptr %350, ptr %epsrc, align 8, !tbaa !4
  %351 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr379 = getelementptr inbounds %union.Unit_union, ptr %351, i64 4
  store ptr %add.ptr379, ptr %p, align 8, !tbaa !4
  %352 = load ptr, ptr %p, align 8, !tbaa !4
  store ptr %352, ptr %Cols, align 8, !tbaa !4
  %353 = load ptr, ptr %epsrc, align 8, !tbaa !4
  %ncols380 = getelementptr inbounds %struct.Element, ptr %353, i32 0, i32 5
  %354 = load i32, ptr %ncols380, align 4, !tbaa !59
  store i32 %354, ptr %ncols, align 4, !tbaa !8
  %355 = load ptr, ptr %Cols, align 8, !tbaa !4
  %356 = load i32, ptr %ncols, align 4, !tbaa !8
  %idx.ext381 = sext i32 %356 to i64
  %add.ptr382 = getelementptr inbounds i32, ptr %355, i64 %idx.ext381
  store ptr %add.ptr382, ptr %Rows, align 8, !tbaa !4
  %357 = load ptr, ptr %epsrc, align 8, !tbaa !4
  %nrows383 = getelementptr inbounds %struct.Element, ptr %357, i32 0, i32 4
  %358 = load i32, ptr %nrows383, align 4, !tbaa !61
  store i32 %358, ptr %nrows, align 4, !tbaa !8
  %359 = load i32, ptr %ncols, align 4, !tbaa !8
  %360 = load i32, ptr %nrows, align 4, !tbaa !8
  %add384 = add nsw i32 %359, %360
  %conv385 = sext i32 %add384 to i64
  %mul386 = mul i64 4, %conv385
  %add387 = add i64 %mul386, 8
  %sub388 = sub i64 %add387, 1
  %div389 = udiv i64 %sub388, 8
  %361 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr390 = getelementptr inbounds %union.Unit_union, ptr %361, i64 %div389
  store ptr %add.ptr390, ptr %p, align 8, !tbaa !4
  %362 = load ptr, ptr %p, align 8, !tbaa !4
  store ptr %362, ptr %C, align 8, !tbaa !4
  %363 = load ptr, ptr %epsrc, align 8, !tbaa !4
  %nrowsleft391 = getelementptr inbounds %struct.Element, ptr %363, i32 0, i32 2
  %364 = load i32, ptr %nrowsleft391, align 4, !tbaa !62
  store i32 %364, ptr %nrowsleft, align 4, !tbaa !8
  %365 = load ptr, ptr %epsrc, align 8, !tbaa !4
  %ncolsleft392 = getelementptr inbounds %struct.Element, ptr %365, i32 0, i32 3
  %366 = load i32, ptr %ncolsleft392, align 4, !tbaa !63
  store i32 %366, ptr %ncolsleft, align 4, !tbaa !8
  %367 = load ptr, ptr %epsrc, align 8, !tbaa !4
  %cdeg393 = getelementptr inbounds %struct.Element, ptr %367, i32 0, i32 0
  %368 = load i32, ptr %cdeg393, align 4, !tbaa !64
  store i32 %368, ptr %cdeg, align 4, !tbaa !8
  %369 = load ptr, ptr %epsrc, align 8, !tbaa !4
  %rdeg394 = getelementptr inbounds %struct.Element, ptr %369, i32 0, i32 1
  %370 = load i32, ptr %rdeg394, align 4, !tbaa !65
  store i32 %370, ptr %rdeg, align 4, !tbaa !8
  %371 = load i32, ptr %nrowsleft, align 4, !tbaa !8
  %372 = load i32, ptr %ncolsleft, align 4, !tbaa !8
  %mul395 = mul nsw i32 %371, %372
  store i32 %mul395, ptr %csize, align 4, !tbaa !8
  %373 = load i32, ptr %nrowsleft, align 4, !tbaa !8
  %374 = load i32, ptr %ncolsleft, align 4, !tbaa !8
  %add396 = add nsw i32 %373, %374
  %conv397 = sext i32 %add396 to i64
  %mul398 = mul i64 4, %conv397
  %add399 = add i64 %mul398, 8
  %sub400 = sub i64 %add399, 1
  %div401 = udiv i64 %sub400, 8
  %add402 = add i64 4, %div401
  %375 = load i32, ptr %csize, align 4, !tbaa !8
  %conv403 = sext i32 %375 to i64
  %mul404 = mul i64 8, %conv403
  %add405 = add i64 %mul404, 8
  %sub406 = sub i64 %add405, 1
  %div407 = udiv i64 %sub406, 8
  %add408 = add i64 %add402, %div407
  %conv409 = trunc i64 %add408 to i32
  store i32 %conv409, ptr %size2, align 4, !tbaa !8
  %376 = load ptr, ptr %pdest, align 8, !tbaa !4
  store ptr %376, ptr %pnext, align 8, !tbaa !4
  %377 = load i32, ptr %size2, align 4, !tbaa !8
  %378 = load ptr, ptr %pnext, align 8, !tbaa !4
  %prevsize410 = getelementptr inbounds %struct.anon, ptr %378, i32 0, i32 1
  store i32 %377, ptr %prevsize410, align 4, !tbaa !22
  %379 = load i32, ptr %size2, align 4, !tbaa !8
  %add411 = add nsw i32 %379, 1
  %380 = load ptr, ptr %pdest, align 8, !tbaa !4
  %idx.ext412 = sext i32 %add411 to i64
  %idx.neg413 = sub i64 0, %idx.ext412
  %add.ptr414 = getelementptr inbounds %union.Unit_union, ptr %380, i64 %idx.neg413
  store ptr %add.ptr414, ptr %pdest, align 8, !tbaa !4
  %381 = load ptr, ptr %pdest, align 8, !tbaa !4
  %add.ptr415 = getelementptr inbounds %union.Unit_union, ptr %381, i64 1
  store ptr %add.ptr415, ptr %p, align 8, !tbaa !4
  %382 = load ptr, ptr %p, align 8, !tbaa !4
  store ptr %382, ptr %epdest, align 8, !tbaa !4
  %383 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr416 = getelementptr inbounds %union.Unit_union, ptr %383, i64 4
  store ptr %add.ptr416, ptr %p, align 8, !tbaa !4
  %384 = load ptr, ptr %p, align 8, !tbaa !4
  store ptr %384, ptr %Cols2, align 8, !tbaa !4
  %385 = load ptr, ptr %Cols2, align 8, !tbaa !4
  %386 = load i32, ptr %ncolsleft, align 4, !tbaa !8
  %idx.ext417 = sext i32 %386 to i64
  %add.ptr418 = getelementptr inbounds i32, ptr %385, i64 %idx.ext417
  store ptr %add.ptr418, ptr %Rows2, align 8, !tbaa !4
  %387 = load i32, ptr %nrowsleft, align 4, !tbaa !8
  %388 = load i32, ptr %ncolsleft, align 4, !tbaa !8
  %add419 = add nsw i32 %387, %388
  %conv420 = sext i32 %add419 to i64
  %mul421 = mul i64 4, %conv420
  %add422 = add i64 %mul421, 8
  %sub423 = sub i64 %add422, 1
  %div424 = udiv i64 %sub423, 8
  %389 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr425 = getelementptr inbounds %union.Unit_union, ptr %389, i64 %div424
  store ptr %add.ptr425, ptr %p, align 8, !tbaa !4
  %390 = load ptr, ptr %p, align 8, !tbaa !4
  store ptr %390, ptr %C2, align 8, !tbaa !4
  %391 = load i32, ptr %nrowsleft, align 4, !tbaa !8
  %392 = load i32, ptr %nrows, align 4, !tbaa !8
  %cmp426 = icmp slt i32 %391, %392
  br i1 %cmp426, label %if.then430, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then377
  %393 = load i32, ptr %ncolsleft, align 4, !tbaa !8
  %394 = load i32, ptr %ncols, align 4, !tbaa !8
  %cmp428 = icmp slt i32 %393, %394
  br i1 %cmp428, label %if.then430, label %if.end462

if.then430:                                       ; preds = %lor.lhs.false, %if.then377
  %395 = load ptr, ptr %C, align 8, !tbaa !4
  store ptr %395, ptr %C1, align 8, !tbaa !4
  %396 = load ptr, ptr %C, align 8, !tbaa !4
  store ptr %396, ptr %C3, align 8, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond431

for.cond431:                                      ; preds = %for.inc459, %if.then430
  %397 = load i32, ptr %j, align 4, !tbaa !8
  %398 = load i32, ptr %ncols, align 4, !tbaa !8
  %cmp432 = icmp slt i32 %397, %398
  br i1 %cmp432, label %for.body434, label %for.end461

for.body434:                                      ; preds = %for.cond431
  %399 = load ptr, ptr %Cols, align 8, !tbaa !4
  %400 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom435 = sext i32 %400 to i64
  %arrayidx436 = getelementptr inbounds i32, ptr %399, i64 %idxprom435
  %401 = load i32, ptr %arrayidx436, align 4, !tbaa !8
  %cmp437 = icmp sge i32 %401, 0
  br i1 %cmp437, label %if.then439, label %if.end456

if.then439:                                       ; preds = %for.body434
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond440

for.cond440:                                      ; preds = %for.inc453, %if.then439
  %402 = load i32, ptr %i, align 4, !tbaa !8
  %403 = load i32, ptr %nrows, align 4, !tbaa !8
  %cmp441 = icmp slt i32 %402, %403
  br i1 %cmp441, label %for.body443, label %for.end455

for.body443:                                      ; preds = %for.cond440
  %404 = load ptr, ptr %Rows, align 8, !tbaa !4
  %405 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom444 = sext i32 %405 to i64
  %arrayidx445 = getelementptr inbounds i32, ptr %404, i64 %idxprom444
  %406 = load i32, ptr %arrayidx445, align 4, !tbaa !8
  %cmp446 = icmp sge i32 %406, 0
  br i1 %cmp446, label %if.then448, label %if.end452

if.then448:                                       ; preds = %for.body443
  %407 = load ptr, ptr %C1, align 8, !tbaa !4
  %408 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom449 = sext i32 %408 to i64
  %arrayidx450 = getelementptr inbounds double, ptr %407, i64 %idxprom449
  %409 = load double, ptr %arrayidx450, align 8, !tbaa !37
  %410 = load ptr, ptr %C3, align 8, !tbaa !4
  %incdec.ptr451 = getelementptr inbounds double, ptr %410, i32 1
  store ptr %incdec.ptr451, ptr %C3, align 8, !tbaa !4
  store double %409, ptr %410, align 8, !tbaa !37
  br label %if.end452

if.end452:                                        ; preds = %if.then448, %for.body443
  br label %for.inc453

for.inc453:                                       ; preds = %if.end452
  %411 = load i32, ptr %i, align 4, !tbaa !8
  %inc454 = add nsw i32 %411, 1
  store i32 %inc454, ptr %i, align 4, !tbaa !8
  br label %for.cond440, !llvm.loop !66

for.end455:                                       ; preds = %for.cond440
  br label %if.end456

if.end456:                                        ; preds = %for.end455, %for.body434
  %412 = load i32, ptr %nrows, align 4, !tbaa !8
  %413 = load ptr, ptr %C1, align 8, !tbaa !4
  %idx.ext457 = sext i32 %412 to i64
  %add.ptr458 = getelementptr inbounds double, ptr %413, i64 %idx.ext457
  store ptr %add.ptr458, ptr %C1, align 8, !tbaa !4
  br label %for.inc459

for.inc459:                                       ; preds = %if.end456
  %414 = load i32, ptr %j, align 4, !tbaa !8
  %inc460 = add nsw i32 %414, 1
  store i32 %inc460, ptr %j, align 4, !tbaa !8
  br label %for.cond431, !llvm.loop !67

for.end461:                                       ; preds = %for.cond431
  br label %if.end462

if.end462:                                        ; preds = %for.end461, %lor.lhs.false
  %415 = load i32, ptr %csize, align 4, !tbaa !8
  %416 = load ptr, ptr %C, align 8, !tbaa !4
  %idx.ext463 = sext i32 %415 to i64
  %add.ptr464 = getelementptr inbounds double, ptr %416, i64 %idx.ext463
  store ptr %add.ptr464, ptr %C, align 8, !tbaa !4
  %417 = load i32, ptr %csize, align 4, !tbaa !8
  %418 = load ptr, ptr %C2, align 8, !tbaa !4
  %idx.ext465 = sext i32 %417 to i64
  %add.ptr466 = getelementptr inbounds double, ptr %418, i64 %idx.ext465
  store ptr %add.ptr466, ptr %C2, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond467

for.cond467:                                      ; preds = %for.inc473, %if.end462
  %419 = load i32, ptr %i, align 4, !tbaa !8
  %420 = load i32, ptr %csize, align 4, !tbaa !8
  %cmp468 = icmp slt i32 %419, %420
  br i1 %cmp468, label %for.body470, label %for.end475

for.body470:                                      ; preds = %for.cond467
  %421 = load ptr, ptr %C, align 8, !tbaa !4
  %incdec.ptr471 = getelementptr inbounds double, ptr %421, i32 -1
  store ptr %incdec.ptr471, ptr %C, align 8, !tbaa !4
  %422 = load double, ptr %incdec.ptr471, align 8, !tbaa !37
  %423 = load ptr, ptr %C2, align 8, !tbaa !4
  %incdec.ptr472 = getelementptr inbounds double, ptr %423, i32 -1
  store ptr %incdec.ptr472, ptr %C2, align 8, !tbaa !4
  store double %422, ptr %incdec.ptr472, align 8, !tbaa !37
  br label %for.inc473

for.inc473:                                       ; preds = %for.body470
  %424 = load i32, ptr %i, align 4, !tbaa !8
  %inc474 = add nsw i32 %424, 1
  store i32 %inc474, ptr %i, align 4, !tbaa !8
  br label %for.cond467, !llvm.loop !68

for.end475:                                       ; preds = %for.cond467
  %425 = load i32, ptr %nrowsleft, align 4, !tbaa !8
  store i32 %425, ptr %i2, align 4, !tbaa !8
  %426 = load i32, ptr %nrows, align 4, !tbaa !8
  %sub476 = sub nsw i32 %426, 1
  store i32 %sub476, ptr %i, align 4, !tbaa !8
  br label %for.cond477

for.cond477:                                      ; preds = %for.inc492, %for.end475
  %427 = load i32, ptr %i, align 4, !tbaa !8
  %cmp478 = icmp sge i32 %427, 0
  br i1 %cmp478, label %for.body480, label %for.end494

for.body480:                                      ; preds = %for.cond477
  %428 = load ptr, ptr %Rows, align 8, !tbaa !4
  %429 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom481 = sext i32 %429 to i64
  %arrayidx482 = getelementptr inbounds i32, ptr %428, i64 %idxprom481
  %430 = load i32, ptr %arrayidx482, align 4, !tbaa !8
  %cmp483 = icmp sge i32 %430, 0
  br i1 %cmp483, label %if.then485, label %if.end491

if.then485:                                       ; preds = %for.body480
  %431 = load ptr, ptr %Rows, align 8, !tbaa !4
  %432 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom486 = sext i32 %432 to i64
  %arrayidx487 = getelementptr inbounds i32, ptr %431, i64 %idxprom486
  %433 = load i32, ptr %arrayidx487, align 4, !tbaa !8
  %434 = load ptr, ptr %Rows2, align 8, !tbaa !4
  %435 = load i32, ptr %i2, align 4, !tbaa !8
  %dec488 = add nsw i32 %435, -1
  store i32 %dec488, ptr %i2, align 4, !tbaa !8
  %idxprom489 = sext i32 %dec488 to i64
  %arrayidx490 = getelementptr inbounds i32, ptr %434, i64 %idxprom489
  store i32 %433, ptr %arrayidx490, align 4, !tbaa !8
  br label %if.end491

if.end491:                                        ; preds = %if.then485, %for.body480
  br label %for.inc492

for.inc492:                                       ; preds = %if.end491
  %436 = load i32, ptr %i, align 4, !tbaa !8
  %dec493 = add nsw i32 %436, -1
  store i32 %dec493, ptr %i, align 4, !tbaa !8
  br label %for.cond477, !llvm.loop !69

for.end494:                                       ; preds = %for.cond477
  %437 = load i32, ptr %ncolsleft, align 4, !tbaa !8
  store i32 %437, ptr %j2, align 4, !tbaa !8
  %438 = load i32, ptr %ncols, align 4, !tbaa !8
  %sub495 = sub nsw i32 %438, 1
  store i32 %sub495, ptr %j, align 4, !tbaa !8
  br label %for.cond496

for.cond496:                                      ; preds = %for.inc511, %for.end494
  %439 = load i32, ptr %j, align 4, !tbaa !8
  %cmp497 = icmp sge i32 %439, 0
  br i1 %cmp497, label %for.body499, label %for.end513

for.body499:                                      ; preds = %for.cond496
  %440 = load ptr, ptr %Cols, align 8, !tbaa !4
  %441 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom500 = sext i32 %441 to i64
  %arrayidx501 = getelementptr inbounds i32, ptr %440, i64 %idxprom500
  %442 = load i32, ptr %arrayidx501, align 4, !tbaa !8
  %cmp502 = icmp sge i32 %442, 0
  br i1 %cmp502, label %if.then504, label %if.end510

if.then504:                                       ; preds = %for.body499
  %443 = load ptr, ptr %Cols, align 8, !tbaa !4
  %444 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom505 = sext i32 %444 to i64
  %arrayidx506 = getelementptr inbounds i32, ptr %443, i64 %idxprom505
  %445 = load i32, ptr %arrayidx506, align 4, !tbaa !8
  %446 = load ptr, ptr %Cols2, align 8, !tbaa !4
  %447 = load i32, ptr %j2, align 4, !tbaa !8
  %dec507 = add nsw i32 %447, -1
  store i32 %dec507, ptr %j2, align 4, !tbaa !8
  %idxprom508 = sext i32 %dec507 to i64
  %arrayidx509 = getelementptr inbounds i32, ptr %446, i64 %idxprom508
  store i32 %445, ptr %arrayidx509, align 4, !tbaa !8
  br label %if.end510

if.end510:                                        ; preds = %if.then504, %for.body499
  br label %for.inc511

for.inc511:                                       ; preds = %if.end510
  %448 = load i32, ptr %j, align 4, !tbaa !8
  %dec512 = add nsw i32 %448, -1
  store i32 %dec512, ptr %j, align 4, !tbaa !8
  br label %for.cond496, !llvm.loop !70

for.end513:                                       ; preds = %for.cond496
  %449 = load ptr, ptr %pdest, align 8, !tbaa !4
  %add.ptr514 = getelementptr inbounds %union.Unit_union, ptr %449, i64 1
  %450 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory515 = getelementptr inbounds %struct.NumericType, ptr %450, i32 0, i32 13
  %451 = load ptr, ptr %Memory515, align 8, !tbaa !21
  %sub.ptr.lhs.cast516 = ptrtoint ptr %add.ptr514 to i64
  %sub.ptr.rhs.cast517 = ptrtoint ptr %451 to i64
  %sub.ptr.sub518 = sub i64 %sub.ptr.lhs.cast516, %sub.ptr.rhs.cast517
  %sub.ptr.div519 = sdiv exact i64 %sub.ptr.sub518, 8
  %conv520 = trunc i64 %sub.ptr.div519 to i32
  %452 = load ptr, ptr %E, align 8, !tbaa !4
  %453 = load i32, ptr %e, align 4, !tbaa !8
  %idxprom521 = sext i32 %453 to i64
  %arrayidx522 = getelementptr inbounds i32, ptr %452, i64 %idxprom521
  store i32 %conv520, ptr %arrayidx522, align 4, !tbaa !8
  %454 = load ptr, ptr %pdest, align 8, !tbaa !4
  %add.ptr523 = getelementptr inbounds %union.Unit_union, ptr %454, i64 1
  store ptr %add.ptr523, ptr %epdest, align 8, !tbaa !4
  %455 = load ptr, ptr %epdest, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.Element, ptr %455, i32 0, i32 6
  store i32 -1, ptr %next, align 4, !tbaa !71
  %456 = load i32, ptr %ncolsleft, align 4, !tbaa !8
  %457 = load ptr, ptr %epdest, align 8, !tbaa !4
  %ncols524 = getelementptr inbounds %struct.Element, ptr %457, i32 0, i32 5
  store i32 %456, ptr %ncols524, align 4, !tbaa !59
  %458 = load i32, ptr %nrowsleft, align 4, !tbaa !8
  %459 = load ptr, ptr %epdest, align 8, !tbaa !4
  %nrows525 = getelementptr inbounds %struct.Element, ptr %459, i32 0, i32 4
  store i32 %458, ptr %nrows525, align 4, !tbaa !61
  %460 = load i32, ptr %ncolsleft, align 4, !tbaa !8
  %461 = load ptr, ptr %epdest, align 8, !tbaa !4
  %ncolsleft526 = getelementptr inbounds %struct.Element, ptr %461, i32 0, i32 3
  store i32 %460, ptr %ncolsleft526, align 4, !tbaa !63
  %462 = load i32, ptr %nrowsleft, align 4, !tbaa !8
  %463 = load ptr, ptr %epdest, align 8, !tbaa !4
  %nrowsleft527 = getelementptr inbounds %struct.Element, ptr %463, i32 0, i32 2
  store i32 %462, ptr %nrowsleft527, align 4, !tbaa !62
  %464 = load i32, ptr %rdeg, align 4, !tbaa !8
  %465 = load ptr, ptr %epdest, align 8, !tbaa !4
  %rdeg528 = getelementptr inbounds %struct.Element, ptr %465, i32 0, i32 1
  store i32 %464, ptr %rdeg528, align 4, !tbaa !65
  %466 = load i32, ptr %cdeg, align 4, !tbaa !8
  %467 = load ptr, ptr %epdest, align 8, !tbaa !4
  %cdeg529 = getelementptr inbounds %struct.Element, ptr %467, i32 0, i32 0
  store i32 %466, ptr %cdeg529, align 4, !tbaa !64
  %468 = load ptr, ptr %pdest, align 8, !tbaa !4
  %prevsize530 = getelementptr inbounds %struct.anon, ptr %468, i32 0, i32 1
  store i32 0, ptr %prevsize530, align 4, !tbaa !22
  %469 = load i32, ptr %size2, align 4, !tbaa !8
  %470 = load ptr, ptr %pdest, align 8, !tbaa !4
  %size531 = getelementptr inbounds %struct.anon, ptr %470, i32 0, i32 0
  store i32 %469, ptr %size531, align 8, !tbaa !22
  br label %if.end532

if.end532:                                        ; preds = %for.end513, %if.else
  br label %if.end533

if.end533:                                        ; preds = %if.end532, %for.end349
  br label %while.cond, !llvm.loop !72

while.end:                                        ; preds = %while.cond
  %471 = load ptr, ptr %pdest, align 8, !tbaa !4
  %472 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory534 = getelementptr inbounds %struct.NumericType, ptr %472, i32 0, i32 13
  %473 = load ptr, ptr %Memory534, align 8, !tbaa !21
  %sub.ptr.lhs.cast535 = ptrtoint ptr %471 to i64
  %sub.ptr.rhs.cast536 = ptrtoint ptr %473 to i64
  %sub.ptr.sub537 = sub i64 %sub.ptr.lhs.cast535, %sub.ptr.rhs.cast536
  %sub.ptr.div538 = sdiv exact i64 %sub.ptr.sub537, 8
  %conv539 = trunc i64 %sub.ptr.div538 to i32
  %474 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %itail = getelementptr inbounds %struct.NumericType, ptr %474, i32 0, i32 15
  store i32 %conv539, ptr %itail, align 4, !tbaa !73
  %475 = load ptr, ptr %pdest, align 8, !tbaa !4
  %prevsize540 = getelementptr inbounds %struct.anon, ptr %475, i32 0, i32 1
  store i32 0, ptr %prevsize540, align 4, !tbaa !22
  %476 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %ibig = getelementptr inbounds %struct.NumericType, ptr %476, i32 0, i32 16
  store i32 -1, ptr %ibig, align 8, !tbaa !74
  %477 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %size541 = getelementptr inbounds %struct.NumericType, ptr %477, i32 0, i32 17
  %478 = load i32, ptr %size541, align 4, !tbaa !29
  %479 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %itail542 = getelementptr inbounds %struct.NumericType, ptr %479, i32 0, i32 15
  %480 = load i32, ptr %itail542, align 4, !tbaa !73
  %sub543 = sub nsw i32 %478, %480
  %481 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %tail_usage = getelementptr inbounds %struct.NumericType, ptr %481, i32 0, i32 36
  store i32 %sub543, ptr %tail_usage, align 4, !tbaa !75
  %482 = load i32, ptr %nel, align 4, !tbaa !8
  %add544 = add nsw i32 %482, 1
  store i32 %add544, ptr %e, align 4, !tbaa !8
  br label %for.cond545

for.cond545:                                      ; preds = %for.inc551, %while.end
  %483 = load i32, ptr %e, align 4, !tbaa !8
  %484 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %elen = getelementptr inbounds %struct.WorkType, ptr %484, i32 0, i32 22
  %485 = load i32, ptr %elen, align 8, !tbaa !76
  %cmp546 = icmp slt i32 %483, %485
  br i1 %cmp546, label %for.body548, label %for.end553

for.body548:                                      ; preds = %for.cond545
  %486 = load ptr, ptr %E, align 8, !tbaa !4
  %487 = load i32, ptr %e, align 4, !tbaa !8
  %idxprom549 = sext i32 %487 to i64
  %arrayidx550 = getelementptr inbounds i32, ptr %486, i64 %idxprom549
  store i32 0, ptr %arrayidx550, align 4, !tbaa !8
  br label %for.inc551

for.inc551:                                       ; preds = %for.body548
  %488 = load i32, ptr %e, align 4, !tbaa !8
  %inc552 = add nsw i32 %488, 1
  store i32 %inc552, ptr %e, align 4, !tbaa !8
  br label %for.cond545, !llvm.loop !77

for.end553:                                       ; preds = %for.cond545
  call void @llvm.lifetime.end.p0(i64 8, ptr %epdest) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %epsrc) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnext) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdest) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %psrc) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %C2) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %C3) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %C1) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %C) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %Col_degree) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %Row_degree) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %Col_tuples) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %Row_tuples) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %e2) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %nel) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %Cols2) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %Rows2) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %Cols) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %Rows) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %col) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %row) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %E) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %rdeg) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %cdeg) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %j2) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %i2) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %size2) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %csize) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %prevsize) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %ncolsleft) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %nrowsleft) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %ncols) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %nrows) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_col) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_row) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

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
!10 = !{!11, !5, i64 128}
!11 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !9, i64 88, !9, i64 92, !5, i64 96, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !9, i64 192, !9, i64 196, !9, i64 200, !5, i64 208, !9, i64 216, !5, i64 224, !9, i64 232, !9, i64 236, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !9, i64 296, !9, i64 300, !9, i64 304}
!12 = !{!"double", !6, i64 0}
!13 = !{!11, !5, i64 120}
!14 = !{!11, !5, i64 168}
!15 = !{!11, !5, i64 152}
!16 = !{!17, !5, i64 0}
!17 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !9, i64 112, !9, i64 116, !5, i64 120, !5, i64 128, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164, !9, i64 168, !9, i64 172, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188, !9, i64 192, !6, i64 196, !9, i64 708, !9, i64 712, !9, i64 716, !9, i64 720, !9, i64 724, !9, i64 728, !9, i64 732, !9, i64 736, !9, i64 740, !9, i64 744, !9, i64 748, !9, i64 752, !9, i64 756, !9, i64 760, !9, i64 764, !9, i64 768, !9, i64 772, !9, i64 776, !9, i64 780, !9, i64 784, !5, i64 792, !6, i64 800, !6, i64 1056, !5, i64 1312, !5, i64 1320, !5, i64 1328, !5, i64 1336, !5, i64 1344, !5, i64 1352, !5, i64 1360, !5, i64 1368, !9, i64 1376, !9, i64 1380, !9, i64 1384, !9, i64 1388, !9, i64 1392, !9, i64 1396, !9, i64 1400, !9, i64 1404, !9, i64 1408, !9, i64 1412, !9, i64 1416, !9, i64 1420, !9, i64 1424, !9, i64 1428, !9, i64 1432, !9, i64 1436}
!18 = !{!17, !9, i64 136}
!19 = !{!17, !9, i64 140}
!20 = !{!11, !9, i64 256}
!21 = !{!11, !5, i64 96}
!22 = !{!6, !6, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !24}
!26 = !{!17, !9, i64 168}
!27 = !{!17, !9, i64 176}
!28 = distinct !{!28, !24}
!29 = !{!11, !9, i64 116}
!30 = !{!17, !9, i64 1408}
!31 = !{!17, !9, i64 1384}
!32 = !{!17, !9, i64 1388}
!33 = !{!17, !9, i64 1376}
!34 = !{!17, !9, i64 1380}
!35 = !{!17, !9, i64 1404}
!36 = !{!17, !5, i64 1320}
!37 = !{!12, !12, i64 0}
!38 = distinct !{!38, !24}
!39 = distinct !{!39, !24}
!40 = !{!17, !5, i64 1328}
!41 = distinct !{!41, !24}
!42 = distinct !{!42, !24}
!43 = !{!17, !5, i64 1336}
!44 = distinct !{!44, !24}
!45 = distinct !{!45, !24}
!46 = !{!17, !5, i64 1352}
!47 = !{!17, !5, i64 1368}
!48 = distinct !{!48, !24}
!49 = !{!17, !9, i64 1392}
!50 = distinct !{!50, !24}
!51 = distinct !{!51, !24}
!52 = distinct !{!52, !24}
!53 = distinct !{!53, !24}
!54 = distinct !{!54, !24}
!55 = distinct !{!55, !24}
!56 = distinct !{!56, !24}
!57 = distinct !{!57, !24}
!58 = !{!17, !5, i64 1312}
!59 = !{!60, !9, i64 20}
!60 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24}
!61 = !{!60, !9, i64 16}
!62 = !{!60, !9, i64 8}
!63 = !{!60, !9, i64 12}
!64 = !{!60, !9, i64 0}
!65 = !{!60, !9, i64 4}
!66 = distinct !{!66, !24}
!67 = distinct !{!67, !24}
!68 = distinct !{!68, !24}
!69 = distinct !{!69, !24}
!70 = distinct !{!70, !24}
!71 = !{!60, !9, i64 24}
!72 = distinct !{!72, !24}
!73 = !{!11, !9, i64 108}
!74 = !{!11, !9, i64 112}
!75 = !{!11, !9, i64 244}
!76 = !{!17, !9, i64 152}
!77 = distinct !{!77, !24}
