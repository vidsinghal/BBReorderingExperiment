; ModuleID = 'samples/695.bc'
source_filename = "../Source/umf_init_front.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WorkType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [64 x i32], [64 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: uwtable
define i32 @umfdi_init_front(ptr noundef %Numeric, ptr noundef %Work) #0 {
entry:
  %retval = alloca i32, align 4
  %Numeric.addr = alloca ptr, align 8
  %Work.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fnr_curr = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %Frows = alloca ptr, align 8
  %Fcols = alloca ptr, align 8
  %Fcpos = alloca ptr, align 8
  %Frpos = alloca ptr, align 8
  %fncols = alloca i32, align 4
  %fnrows = alloca i32, align 4
  %Wrow = alloca ptr, align 8
  %fnr2 = alloca i32, align 4
  %fnc2 = alloca i32, align 4
  %rrdeg = alloca i32, align 4
  %ccdeg = alloca i32, align 4
  %Wm = alloca ptr, align 8
  %fnrows_extended = alloca i32, align 4
  %Fcblock = alloca ptr, align 8
  %Fl = alloca ptr, align 8
  %Wy = alloca ptr, align 8
  %Wx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %Numeric, ptr %Numeric.addr, align 8, !tbaa !4
  store ptr %Work, ptr %Work.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %fnr_curr) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %row) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %col) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Frows) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fcols) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fcpos) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Frpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %fncols) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %fnrows) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wrow) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %fnr2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %fnc2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %rrdeg) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ccdeg) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wm) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %fnrows_extended) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fcblock) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fl) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wy) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wx) #5
  %0 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_grow = getelementptr inbounds %struct.WorkType, ptr %0, i32 0, i32 50
  %1 = load i32, ptr %do_grow, align 4, !tbaa !8
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows_new = getelementptr inbounds %struct.WorkType, ptr %2, i32 0, i32 77
  %3 = load i32, ptr %fnrows_new, align 8, !tbaa !11
  %conv = sitofp i32 %3 to double
  %4 = call double @llvm.fmuladd.f64(double 1.200000e+00, double %conv, double 2.000000e+00)
  %conv1 = fptosi double %4 to i32
  store i32 %conv1, ptr %fnr2, align 4, !tbaa !12
  %5 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols_new = getelementptr inbounds %struct.WorkType, ptr %5, i32 0, i32 78
  %6 = load i32, ptr %fncols_new, align 4, !tbaa !13
  %conv2 = sitofp i32 %6 to double
  %7 = call double @llvm.fmuladd.f64(double 1.200000e+00, double %conv2, double 2.000000e+00)
  %conv3 = fptosi double %7 to i32
  store i32 %conv3, ptr %fnc2, align 4, !tbaa !12
  %8 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %9 = load i32, ptr %fnr2, align 4, !tbaa !12
  %10 = load i32, ptr %fnc2, align 4, !tbaa !12
  %11 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow_in_front = getelementptr inbounds %struct.WorkType, ptr %12, i32 0, i32 79
  %13 = load i32, ptr %pivrow_in_front, align 8, !tbaa !14
  %tobool4 = icmp ne i32 %13, 0
  %14 = zext i1 %tobool4 to i64
  %cond = select i1 %tobool4, i32 2, i32 0
  %call = call i32 @umfdi_grow_front(ptr noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef %11, i32 noundef %cond)
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  %15 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnr_curr8 = getelementptr inbounds %struct.WorkType, ptr %15, i32 0, i32 67
  %16 = load i32, ptr %fnr_curr8, align 8, !tbaa !15
  store i32 %16, ptr %fnr_curr, align 4, !tbaa !12
  %17 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Frows9 = getelementptr inbounds %struct.WorkType, ptr %17, i32 0, i32 61
  %18 = load ptr, ptr %Frows9, align 8, !tbaa !16
  store ptr %18, ptr %Frows, align 8, !tbaa !4
  %19 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fcols10 = getelementptr inbounds %struct.WorkType, ptr %19, i32 0, i32 62
  %20 = load ptr, ptr %Fcols10, align 8, !tbaa !17
  store ptr %20, ptr %Fcols, align 8, !tbaa !4
  %21 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Frpos11 = getelementptr inbounds %struct.WorkType, ptr %21, i32 0, i32 63
  %22 = load ptr, ptr %Frpos11, align 8, !tbaa !18
  store ptr %22, ptr %Frpos, align 8, !tbaa !4
  %23 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fcpos12 = getelementptr inbounds %struct.WorkType, ptr %23, i32 0, i32 64
  %24 = load ptr, ptr %Fcpos12, align 8, !tbaa !19
  store ptr %24, ptr %Fcpos, align 8, !tbaa !4
  %25 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnzeros = getelementptr inbounds %struct.WorkType, ptr %25, i32 0, i32 74
  store i32 0, ptr %fnzeros, align 4, !tbaa !20
  %26 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %ccdeg13 = getelementptr inbounds %struct.WorkType, ptr %26, i32 0, i32 32
  %27 = load i32, ptr %ccdeg13, align 8, !tbaa !21
  store i32 %27, ptr %ccdeg, align 4, !tbaa !12
  %28 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %rrdeg14 = getelementptr inbounds %struct.WorkType, ptr %28, i32 0, i32 31
  %29 = load i32, ptr %rrdeg14, align 4, !tbaa !22
  store i32 %29, ptr %rrdeg, align 4, !tbaa !12
  %30 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows15 = getelementptr inbounds %struct.WorkType, ptr %30, i32 0, i32 65
  %31 = load i32, ptr %fnrows15, align 8, !tbaa !23
  store i32 %31, ptr %fnrows, align 4, !tbaa !12
  %32 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols16 = getelementptr inbounds %struct.WorkType, ptr %32, i32 0, i32 66
  %33 = load i32, ptr %fncols16, align 4, !tbaa !24
  store i32 %33, ptr %fncols, align 4, !tbaa !12
  %34 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Flblock = getelementptr inbounds %struct.WorkType, ptr %34, i32 0, i32 58
  %35 = load ptr, ptr %Flblock, align 8, !tbaa !25
  store ptr %35, ptr %Fl, align 8, !tbaa !4
  %36 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol_in_front = getelementptr inbounds %struct.WorkType, ptr %36, i32 0, i32 80
  %37 = load i32, ptr %pivcol_in_front, align 4, !tbaa !26
  %tobool17 = icmp ne i32 %37, 0
  br i1 %tobool17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end7
  %38 = load i32, ptr %fnrows, align 4, !tbaa !12
  %39 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fscan_row = getelementptr inbounds %struct.WorkType, ptr %39, i32 0, i32 75
  store i32 %38, ptr %fscan_row, align 8, !tbaa !27
  %40 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Wrp = getelementptr inbounds %struct.WorkType, ptr %40, i32 0, i32 4
  %41 = load ptr, ptr %Wrp, align 8, !tbaa !28
  %42 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %NewRows = getelementptr inbounds %struct.WorkType, ptr %42, i32 0, i32 10
  store ptr %41, ptr %NewRows, align 8, !tbaa !29
  %43 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Wy19 = getelementptr inbounds %struct.WorkType, ptr %43, i32 0, i32 2
  %44 = load ptr, ptr %Wy19, align 8, !tbaa !30
  store ptr %44, ptr %Wy, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then18
  %45 = load i32, ptr %i, align 4, !tbaa !12
  %46 = load i32, ptr %fnrows, align 4, !tbaa !12
  %cmp = icmp slt i32 %45, %46
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load ptr, ptr %Wy, align 8, !tbaa !4
  %48 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom = sext i32 %48 to i64
  %arrayidx = getelementptr inbounds double, ptr %47, i64 %idxprom
  %49 = load double, ptr %arrayidx, align 8, !tbaa !31
  %50 = load ptr, ptr %Fl, align 8, !tbaa !4
  %51 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom21 = sext i32 %51 to i64
  %arrayidx22 = getelementptr inbounds double, ptr %50, i64 %idxprom21
  store double %49, ptr %arrayidx22, align 8, !tbaa !31
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %52 = load i32, ptr %i, align 4, !tbaa !12
  %inc = add nsw i32 %52, 1
  store i32 %inc, ptr %i, align 4, !tbaa !12
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  %53 = load i32, ptr %fnrows, align 4, !tbaa !12
  %54 = load i32, ptr %ccdeg, align 4, !tbaa !12
  %add = add nsw i32 %53, %54
  store i32 %add, ptr %fnrows_extended, align 4, !tbaa !12
  %55 = load i32, ptr %fnrows, align 4, !tbaa !12
  store i32 %55, ptr %i, align 4, !tbaa !12
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc37, %for.end
  %56 = load i32, ptr %i, align 4, !tbaa !12
  %57 = load i32, ptr %fnrows_extended, align 4, !tbaa !12
  %cmp24 = icmp slt i32 %56, %57
  br i1 %cmp24, label %for.body26, label %for.end39

for.body26:                                       ; preds = %for.cond23
  %58 = load ptr, ptr %Wy, align 8, !tbaa !4
  %59 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom27 = sext i32 %59 to i64
  %arrayidx28 = getelementptr inbounds double, ptr %58, i64 %idxprom27
  %60 = load double, ptr %arrayidx28, align 8, !tbaa !31
  %61 = load ptr, ptr %Fl, align 8, !tbaa !4
  %62 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom29 = sext i32 %62 to i64
  %arrayidx30 = getelementptr inbounds double, ptr %61, i64 %idxprom29
  store double %60, ptr %arrayidx30, align 8, !tbaa !31
  %63 = load ptr, ptr %Frows, align 8, !tbaa !4
  %64 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom31 = sext i32 %64 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %63, i64 %idxprom31
  %65 = load i32, ptr %arrayidx32, align 4, !tbaa !12
  store i32 %65, ptr %row, align 4, !tbaa !12
  %66 = load i32, ptr %row, align 4, !tbaa !12
  %sub = sub nsw i32 0, %66
  %sub33 = sub nsw i32 %sub, 2
  %67 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %NewRows34 = getelementptr inbounds %struct.WorkType, ptr %67, i32 0, i32 10
  %68 = load ptr, ptr %NewRows34, align 8, !tbaa !29
  %69 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom35 = sext i32 %69 to i64
  %arrayidx36 = getelementptr inbounds i32, ptr %68, i64 %idxprom35
  store i32 %sub33, ptr %arrayidx36, align 4, !tbaa !12
  br label %for.inc37

for.inc37:                                        ; preds = %for.body26
  %70 = load i32, ptr %i, align 4, !tbaa !12
  %inc38 = add nsw i32 %70, 1
  store i32 %inc38, ptr %i, align 4, !tbaa !12
  br label %for.cond23, !llvm.loop !35

for.end39:                                        ; preds = %for.cond23
  %71 = load i32, ptr %fnrows_extended, align 4, !tbaa !12
  store i32 %71, ptr %fnrows, align 4, !tbaa !12
  br label %if.end61

if.else:                                          ; preds = %if.end7
  %72 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fscan_row40 = getelementptr inbounds %struct.WorkType, ptr %72, i32 0, i32 75
  store i32 0, ptr %fscan_row40, align 8, !tbaa !27
  %73 = load ptr, ptr %Frows, align 8, !tbaa !4
  %74 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %NewRows41 = getelementptr inbounds %struct.WorkType, ptr %74, i32 0, i32 10
  store ptr %73, ptr %NewRows41, align 8, !tbaa !29
  %75 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Wm42 = getelementptr inbounds %struct.WorkType, ptr %75, i32 0, i32 5
  %76 = load ptr, ptr %Wm42, align 8, !tbaa !36
  store ptr %76, ptr %Wm, align 8, !tbaa !4
  %77 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Wx43 = getelementptr inbounds %struct.WorkType, ptr %77, i32 0, i32 1
  %78 = load ptr, ptr %Wx43, align 8, !tbaa !37
  store ptr %78, ptr %Wx, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc58, %if.else
  %79 = load i32, ptr %i, align 4, !tbaa !12
  %80 = load i32, ptr %ccdeg, align 4, !tbaa !12
  %cmp45 = icmp slt i32 %79, %80
  br i1 %cmp45, label %for.body47, label %for.end60

for.body47:                                       ; preds = %for.cond44
  %81 = load ptr, ptr %Wx, align 8, !tbaa !4
  %82 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom48 = sext i32 %82 to i64
  %arrayidx49 = getelementptr inbounds double, ptr %81, i64 %idxprom48
  %83 = load double, ptr %arrayidx49, align 8, !tbaa !31
  %84 = load ptr, ptr %Fl, align 8, !tbaa !4
  %85 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom50 = sext i32 %85 to i64
  %arrayidx51 = getelementptr inbounds double, ptr %84, i64 %idxprom50
  store double %83, ptr %arrayidx51, align 8, !tbaa !31
  %86 = load ptr, ptr %Wm, align 8, !tbaa !4
  %87 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom52 = sext i32 %87 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %86, i64 %idxprom52
  %88 = load i32, ptr %arrayidx53, align 4, !tbaa !12
  store i32 %88, ptr %row, align 4, !tbaa !12
  %89 = load i32, ptr %row, align 4, !tbaa !12
  %90 = load ptr, ptr %Frows, align 8, !tbaa !4
  %91 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom54 = sext i32 %91 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %90, i64 %idxprom54
  store i32 %89, ptr %arrayidx55, align 4, !tbaa !12
  %92 = load i32, ptr %i, align 4, !tbaa !12
  %93 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %94 = load i32, ptr %row, align 4, !tbaa !12
  %idxprom56 = sext i32 %94 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %93, i64 %idxprom56
  store i32 %92, ptr %arrayidx57, align 4, !tbaa !12
  br label %for.inc58

for.inc58:                                        ; preds = %for.body47
  %95 = load i32, ptr %i, align 4, !tbaa !12
  %inc59 = add nsw i32 %95, 1
  store i32 %inc59, ptr %i, align 4, !tbaa !12
  br label %for.cond44, !llvm.loop !38

for.end60:                                        ; preds = %for.cond44
  %96 = load i32, ptr %ccdeg, align 4, !tbaa !12
  store i32 %96, ptr %fnrows, align 4, !tbaa !12
  br label %if.end61

if.end61:                                         ; preds = %for.end60, %for.end39
  %97 = load i32, ptr %fnrows, align 4, !tbaa !12
  %98 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows62 = getelementptr inbounds %struct.WorkType, ptr %98, i32 0, i32 65
  store i32 %97, ptr %fnrows62, align 8, !tbaa !23
  %99 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Wrow63 = getelementptr inbounds %struct.WorkType, ptr %99, i32 0, i32 9
  %100 = load ptr, ptr %Wrow63, align 8, !tbaa !39
  store ptr %100, ptr %Wrow, align 8, !tbaa !4
  %101 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow_in_front64 = getelementptr inbounds %struct.WorkType, ptr %101, i32 0, i32 79
  %102 = load i32, ptr %pivrow_in_front64, align 8, !tbaa !14
  %tobool65 = icmp ne i32 %102, 0
  br i1 %tobool65, label %if.then66, label %if.else107

if.then66:                                        ; preds = %if.end61
  %103 = load i32, ptr %fncols, align 4, !tbaa !12
  %104 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fscan_col = getelementptr inbounds %struct.WorkType, ptr %104, i32 0, i32 76
  store i32 %103, ptr %fscan_col, align 4, !tbaa !40
  %105 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Wp = getelementptr inbounds %struct.WorkType, ptr %105, i32 0, i32 3
  %106 = load ptr, ptr %Wp, align 8, !tbaa !41
  %107 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %NewCols = getelementptr inbounds %struct.WorkType, ptr %107, i32 0, i32 11
  store ptr %106, ptr %NewCols, align 8, !tbaa !42
  %108 = load ptr, ptr %Wrow, align 8, !tbaa !4
  %109 = load ptr, ptr %Fcols, align 8, !tbaa !4
  %cmp67 = icmp eq ptr %108, %109
  br i1 %cmp67, label %if.then69, label %if.else86

if.then69:                                        ; preds = %if.then66
  %110 = load i32, ptr %fncols, align 4, !tbaa !12
  store i32 %110, ptr %j, align 4, !tbaa !12
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc83, %if.then69
  %111 = load i32, ptr %j, align 4, !tbaa !12
  %112 = load i32, ptr %rrdeg, align 4, !tbaa !12
  %cmp71 = icmp slt i32 %111, %112
  br i1 %cmp71, label %for.body73, label %for.end85

for.body73:                                       ; preds = %for.cond70
  %113 = load ptr, ptr %Wrow, align 8, !tbaa !4
  %114 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom74 = sext i32 %114 to i64
  %arrayidx75 = getelementptr inbounds i32, ptr %113, i64 %idxprom74
  %115 = load i32, ptr %arrayidx75, align 4, !tbaa !12
  store i32 %115, ptr %col, align 4, !tbaa !12
  %116 = load i32, ptr %col, align 4, !tbaa !12
  %sub76 = sub nsw i32 0, %116
  %sub77 = sub nsw i32 %sub76, 2
  %117 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %NewCols78 = getelementptr inbounds %struct.WorkType, ptr %117, i32 0, i32 11
  %118 = load ptr, ptr %NewCols78, align 8, !tbaa !42
  %119 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom79 = sext i32 %119 to i64
  %arrayidx80 = getelementptr inbounds i32, ptr %118, i64 %idxprom79
  store i32 %sub77, ptr %arrayidx80, align 4, !tbaa !12
  %120 = load i32, ptr %j, align 4, !tbaa !12
  %121 = load i32, ptr %fnr_curr, align 4, !tbaa !12
  %mul = mul nsw i32 %120, %121
  %122 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %123 = load i32, ptr %col, align 4, !tbaa !12
  %idxprom81 = sext i32 %123 to i64
  %arrayidx82 = getelementptr inbounds i32, ptr %122, i64 %idxprom81
  store i32 %mul, ptr %arrayidx82, align 4, !tbaa !12
  br label %for.inc83

for.inc83:                                        ; preds = %for.body73
  %124 = load i32, ptr %j, align 4, !tbaa !12
  %inc84 = add nsw i32 %124, 1
  store i32 %inc84, ptr %j, align 4, !tbaa !12
  br label %for.cond70, !llvm.loop !43

for.end85:                                        ; preds = %for.cond70
  br label %if.end106

if.else86:                                        ; preds = %if.then66
  %125 = load i32, ptr %fncols, align 4, !tbaa !12
  store i32 %125, ptr %j, align 4, !tbaa !12
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc103, %if.else86
  %126 = load i32, ptr %j, align 4, !tbaa !12
  %127 = load i32, ptr %rrdeg, align 4, !tbaa !12
  %cmp88 = icmp slt i32 %126, %127
  br i1 %cmp88, label %for.body90, label %for.end105

for.body90:                                       ; preds = %for.cond87
  %128 = load ptr, ptr %Wrow, align 8, !tbaa !4
  %129 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom91 = sext i32 %129 to i64
  %arrayidx92 = getelementptr inbounds i32, ptr %128, i64 %idxprom91
  %130 = load i32, ptr %arrayidx92, align 4, !tbaa !12
  store i32 %130, ptr %col, align 4, !tbaa !12
  %131 = load i32, ptr %col, align 4, !tbaa !12
  %132 = load ptr, ptr %Fcols, align 8, !tbaa !4
  %133 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom93 = sext i32 %133 to i64
  %arrayidx94 = getelementptr inbounds i32, ptr %132, i64 %idxprom93
  store i32 %131, ptr %arrayidx94, align 4, !tbaa !12
  %134 = load i32, ptr %col, align 4, !tbaa !12
  %sub95 = sub nsw i32 0, %134
  %sub96 = sub nsw i32 %sub95, 2
  %135 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %NewCols97 = getelementptr inbounds %struct.WorkType, ptr %135, i32 0, i32 11
  %136 = load ptr, ptr %NewCols97, align 8, !tbaa !42
  %137 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom98 = sext i32 %137 to i64
  %arrayidx99 = getelementptr inbounds i32, ptr %136, i64 %idxprom98
  store i32 %sub96, ptr %arrayidx99, align 4, !tbaa !12
  %138 = load i32, ptr %j, align 4, !tbaa !12
  %139 = load i32, ptr %fnr_curr, align 4, !tbaa !12
  %mul100 = mul nsw i32 %138, %139
  %140 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %141 = load i32, ptr %col, align 4, !tbaa !12
  %idxprom101 = sext i32 %141 to i64
  %arrayidx102 = getelementptr inbounds i32, ptr %140, i64 %idxprom101
  store i32 %mul100, ptr %arrayidx102, align 4, !tbaa !12
  br label %for.inc103

for.inc103:                                       ; preds = %for.body90
  %142 = load i32, ptr %j, align 4, !tbaa !12
  %inc104 = add nsw i32 %142, 1
  store i32 %inc104, ptr %j, align 4, !tbaa !12
  br label %for.cond87, !llvm.loop !44

for.end105:                                       ; preds = %for.cond87
  br label %if.end106

if.end106:                                        ; preds = %for.end105, %for.end85
  br label %if.end124

if.else107:                                       ; preds = %if.end61
  %143 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fscan_col108 = getelementptr inbounds %struct.WorkType, ptr %143, i32 0, i32 76
  store i32 0, ptr %fscan_col108, align 4, !tbaa !40
  %144 = load ptr, ptr %Fcols, align 8, !tbaa !4
  %145 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %NewCols109 = getelementptr inbounds %struct.WorkType, ptr %145, i32 0, i32 11
  store ptr %144, ptr %NewCols109, align 8, !tbaa !42
  store i32 0, ptr %j, align 4, !tbaa !12
  br label %for.cond110

for.cond110:                                      ; preds = %for.inc121, %if.else107
  %146 = load i32, ptr %j, align 4, !tbaa !12
  %147 = load i32, ptr %rrdeg, align 4, !tbaa !12
  %cmp111 = icmp slt i32 %146, %147
  br i1 %cmp111, label %for.body113, label %for.end123

for.body113:                                      ; preds = %for.cond110
  %148 = load ptr, ptr %Wrow, align 8, !tbaa !4
  %149 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom114 = sext i32 %149 to i64
  %arrayidx115 = getelementptr inbounds i32, ptr %148, i64 %idxprom114
  %150 = load i32, ptr %arrayidx115, align 4, !tbaa !12
  store i32 %150, ptr %col, align 4, !tbaa !12
  %151 = load i32, ptr %col, align 4, !tbaa !12
  %152 = load ptr, ptr %Fcols, align 8, !tbaa !4
  %153 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom116 = sext i32 %153 to i64
  %arrayidx117 = getelementptr inbounds i32, ptr %152, i64 %idxprom116
  store i32 %151, ptr %arrayidx117, align 4, !tbaa !12
  %154 = load i32, ptr %j, align 4, !tbaa !12
  %155 = load i32, ptr %fnr_curr, align 4, !tbaa !12
  %mul118 = mul nsw i32 %154, %155
  %156 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %157 = load i32, ptr %col, align 4, !tbaa !12
  %idxprom119 = sext i32 %157 to i64
  %arrayidx120 = getelementptr inbounds i32, ptr %156, i64 %idxprom119
  store i32 %mul118, ptr %arrayidx120, align 4, !tbaa !12
  br label %for.inc121

for.inc121:                                       ; preds = %for.body113
  %158 = load i32, ptr %j, align 4, !tbaa !12
  %inc122 = add nsw i32 %158, 1
  store i32 %inc122, ptr %j, align 4, !tbaa !12
  br label %for.cond110, !llvm.loop !45

for.end123:                                       ; preds = %for.cond110
  br label %if.end124

if.end124:                                        ; preds = %for.end123, %if.end106
  %159 = load i32, ptr %rrdeg, align 4, !tbaa !12
  store i32 %159, ptr %fncols, align 4, !tbaa !12
  %160 = load i32, ptr %fncols, align 4, !tbaa !12
  %161 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols125 = getelementptr inbounds %struct.WorkType, ptr %161, i32 0, i32 66
  store i32 %160, ptr %fncols125, align 4, !tbaa !24
  %162 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fcblock126 = getelementptr inbounds %struct.WorkType, ptr %162, i32 0, i32 60
  %163 = load ptr, ptr %Fcblock126, align 8, !tbaa !46
  store ptr %163, ptr %Fcblock, align 8, !tbaa !4
  %164 = load i32, ptr %fncols, align 4, !tbaa !12
  %165 = load i32, ptr %fnrows, align 4, !tbaa !12
  %166 = load ptr, ptr %Fcblock, align 8, !tbaa !4
  %167 = load i32, ptr %fnr_curr, align 4, !tbaa !12
  call void @zero_init_front(i32 noundef %164, i32 noundef %165, ptr noundef %166, i32 noundef %167)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end124, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wx) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wy) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fl) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fcblock) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %fnrows_extended) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wm) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ccdeg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rrdeg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %fnc2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %fnr2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wrow) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %fnrows) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %fncols) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Frpos) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fcpos) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fcols) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Frows) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %col) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %row) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %fnr_curr) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  %168 = load i32, ptr %retval, align 4
  ret i32 %168
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

declare i32 @umfdi_grow_front(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal void @zero_init_front(i32 noundef %m, i32 noundef %n, ptr noundef %Fcblock, i32 noundef %d) #4 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %Fcblock.addr = alloca ptr, align 8
  %d.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %F = alloca ptr, align 8
  %Fj = alloca ptr, align 8
  store i32 %m, ptr %m.addr, align 4, !tbaa !12
  store i32 %n, ptr %n.addr, align 4, !tbaa !12
  store ptr %Fcblock, ptr %Fcblock.addr, align 8, !tbaa !4
  store i32 %d, ptr %d.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %F) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fj) #5
  %0 = load ptr, ptr %Fcblock.addr, align 8, !tbaa !4
  store ptr %0, ptr %Fj, align 8, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %1 = load i32, ptr %j, align 4, !tbaa !12
  %2 = load i32, ptr %m.addr, align 4, !tbaa !12
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %Fj, align 8, !tbaa !4
  store ptr %3, ptr %F, align 8, !tbaa !4
  %4 = load i32, ptr %d.addr, align 4, !tbaa !12
  %5 = load ptr, ptr %Fj, align 8, !tbaa !4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds double, ptr %5, i64 %idx.ext
  store ptr %add.ptr, ptr %Fj, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %i, align 4, !tbaa !12
  %7 = load i32, ptr %n.addr, align 4, !tbaa !12
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %8 = load ptr, ptr %F, align 8, !tbaa !4
  store double 0.000000e+00, ptr %8, align 8, !tbaa !31
  %9 = load ptr, ptr %F, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds double, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %F, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %10 = load i32, ptr %i, align 4, !tbaa !12
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4, !tbaa !12
  br label %for.cond1, !llvm.loop !47

for.end:                                          ; preds = %for.cond1
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %11 = load i32, ptr %j, align 4, !tbaa !12
  %inc5 = add nsw i32 %11, 1
  store i32 %inc5, ptr %j, align 4, !tbaa !12
  br label %for.cond, !llvm.loop !48

for.end6:                                         ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fj) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %F) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!8 = !{!9, !10, i64 772}
!9 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !10, i64 112, !10, i64 116, !5, i64 120, !5, i64 128, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !10, i64 180, !10, i64 184, !10, i64 188, !10, i64 192, !6, i64 196, !10, i64 708, !10, i64 712, !10, i64 716, !10, i64 720, !10, i64 724, !10, i64 728, !10, i64 732, !10, i64 736, !10, i64 740, !10, i64 744, !10, i64 748, !10, i64 752, !10, i64 756, !10, i64 760, !10, i64 764, !10, i64 768, !10, i64 772, !10, i64 776, !10, i64 780, !10, i64 784, !5, i64 792, !6, i64 800, !6, i64 1056, !5, i64 1312, !5, i64 1320, !5, i64 1328, !5, i64 1336, !5, i64 1344, !5, i64 1352, !5, i64 1360, !5, i64 1368, !10, i64 1376, !10, i64 1380, !10, i64 1384, !10, i64 1388, !10, i64 1392, !10, i64 1396, !10, i64 1400, !10, i64 1404, !10, i64 1408, !10, i64 1412, !10, i64 1416, !10, i64 1420, !10, i64 1424, !10, i64 1428, !10, i64 1432, !10, i64 1436}
!10 = !{!"int", !6, i64 0}
!11 = !{!9, !10, i64 1424}
!12 = !{!10, !10, i64 0}
!13 = !{!9, !10, i64 1428}
!14 = !{!9, !10, i64 1432}
!15 = !{!9, !10, i64 1384}
!16 = !{!9, !5, i64 1344}
!17 = !{!9, !5, i64 1352}
!18 = !{!9, !5, i64 1360}
!19 = !{!9, !5, i64 1368}
!20 = !{!9, !10, i64 1412}
!21 = !{!9, !10, i64 192}
!22 = !{!9, !10, i64 188}
!23 = !{!9, !10, i64 1376}
!24 = !{!9, !10, i64 1380}
!25 = !{!9, !5, i64 1320}
!26 = !{!9, !10, i64 1436}
!27 = !{!9, !10, i64 1416}
!28 = !{!9, !5, i64 32}
!29 = !{!9, !5, i64 80}
!30 = !{!9, !5, i64 16}
!31 = !{!32, !32, i64 0}
!32 = !{!"double", !6, i64 0}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = distinct !{!35, !34}
!36 = !{!9, !5, i64 40}
!37 = !{!9, !5, i64 8}
!38 = distinct !{!38, !34}
!39 = !{!9, !5, i64 72}
!40 = !{!9, !10, i64 1420}
!41 = !{!9, !5, i64 24}
!42 = !{!9, !5, i64 88}
!43 = distinct !{!43, !34}
!44 = distinct !{!44, !34}
!45 = distinct !{!45, !34}
!46 = !{!9, !5, i64 1336}
!47 = distinct !{!47, !34}
!48 = distinct !{!48, !34}
