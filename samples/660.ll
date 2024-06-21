; ModuleID = 'samples/660.bc'
source_filename = "../scipy/_lib/highs/src/ipm/basiclu/src/lu_pivot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lu = type { i32, i32, i32, double, double, double, i32, i32, i32, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, double, double, double, double, double, double, i32, i32, i32, double, double, double, double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define i32 @lu_pivot(ptr noundef %this) #0 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca ptr, align 8
  %m = alloca i32, align 4
  %rank = alloca i32, align 4
  %Lmem = alloca i32, align 4
  %Umem = alloca i32, align 4
  %pivot_col = alloca i32, align 4
  %pivot_row = alloca i32, align 4
  %colmax = alloca ptr, align 8
  %Lbegin_p = alloca ptr, align 8
  %Ubegin = alloca ptr, align 8
  %Wbegin = alloca ptr, align 8
  %Wend = alloca ptr, align 8
  %Uindex = alloca ptr, align 8
  %nz_col = alloca i32, align 4
  %nz_row = alloca i32, align 4
  %room = alloca i32, align 4
  %need = alloca i32, align 4
  %pos = alloca i32, align 4
  %j = alloca i32, align 4
  %status = alloca i32, align 4
  %tic = alloca [2 x double], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %m1 = getelementptr inbounds %struct.lu, ptr %0, i32 0, i32 13
  %1 = load i32, ptr %m1, align 4, !tbaa !8
  store i32 %1, ptr %m, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %rank) #5
  %2 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %rank2 = getelementptr inbounds %struct.lu, ptr %2, i32 0, i32 50
  %3 = load i32, ptr %rank2, align 4, !tbaa !13
  store i32 %3, ptr %rank, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %Lmem) #5
  %4 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Lmem3 = getelementptr inbounds %struct.lu, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %Lmem3, align 8, !tbaa !14
  store i32 %5, ptr %Lmem, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %Umem) #5
  %6 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Umem4 = getelementptr inbounds %struct.lu, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %Umem4, align 4, !tbaa !15
  store i32 %7, ptr %Umem, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %pivot_col) #5
  %8 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %pivot_col5 = getelementptr inbounds %struct.lu, ptr %8, i32 0, i32 63
  %9 = load i32, ptr %pivot_col5, align 8, !tbaa !16
  store i32 %9, ptr %pivot_col, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %pivot_row) #5
  %10 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %pivot_row6 = getelementptr inbounds %struct.lu, ptr %10, i32 0, i32 62
  %11 = load i32, ptr %pivot_row6, align 4, !tbaa !17
  store i32 %11, ptr %pivot_row, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %colmax) #5
  %12 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %col_pivot = getelementptr inbounds %struct.lu, ptr %12, i32 0, i32 104
  %13 = load ptr, ptr %col_pivot, align 8, !tbaa !18
  store ptr %13, ptr %colmax, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Lbegin_p) #5
  %14 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Lbegin_p7 = getelementptr inbounds %struct.lu, ptr %14, i32 0, i32 98
  %15 = load ptr, ptr %Lbegin_p7, align 8, !tbaa !19
  store ptr %15, ptr %Lbegin_p, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ubegin) #5
  %16 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Ubegin8 = getelementptr inbounds %struct.lu, ptr %16, i32 0, i32 99
  %17 = load ptr, ptr %Ubegin8, align 8, !tbaa !20
  store ptr %17, ptr %Ubegin, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wbegin) #5
  %18 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wbegin9 = getelementptr inbounds %struct.lu, ptr %18, i32 0, i32 86
  %19 = load ptr, ptr %Wbegin9, align 8, !tbaa !21
  store ptr %19, ptr %Wbegin, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wend) #5
  %20 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wend10 = getelementptr inbounds %struct.lu, ptr %20, i32 0, i32 88
  %21 = load ptr, ptr %Wend10, align 8, !tbaa !22
  store ptr %21, ptr %Wend, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Uindex) #5
  %22 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Uindex11 = getelementptr inbounds %struct.lu, ptr %22, i32 0, i32 72
  %23 = load ptr, ptr %Uindex11, align 8, !tbaa !23
  store ptr %23, ptr %Uindex, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nz_col) #5
  %24 = load ptr, ptr %Wend, align 8, !tbaa !4
  %25 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds i32, ptr %24, i64 %idxprom
  %26 = load i32, ptr %arrayidx, align 4, !tbaa !12
  %27 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %28 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom12 = sext i32 %28 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %27, i64 %idxprom12
  %29 = load i32, ptr %arrayidx13, align 4, !tbaa !12
  %sub = sub nsw i32 %26, %29
  store i32 %sub, ptr %nz_col, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %nz_row) #5
  %30 = load ptr, ptr %Wend, align 8, !tbaa !4
  %31 = load i32, ptr %m, align 4, !tbaa !12
  %32 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %add = add nsw i32 %31, %32
  %idxprom14 = sext i32 %add to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %30, i64 %idxprom14
  %33 = load i32, ptr %arrayidx15, align 4, !tbaa !12
  %34 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %35 = load i32, ptr %m, align 4, !tbaa !12
  %36 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %add16 = add nsw i32 %35, %36
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %34, i64 %idxprom17
  %37 = load i32, ptr %arrayidx18, align 4, !tbaa !12
  %sub19 = sub nsw i32 %33, %37
  store i32 %sub19, ptr %nz_row, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %room) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %need) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5
  store i32 0, ptr %status, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %tic) #5
  %38 = load i32, ptr %Lmem, align 4, !tbaa !12
  %39 = load ptr, ptr %Lbegin_p, align 8, !tbaa !4
  %40 = load i32, ptr %rank, align 4, !tbaa !12
  %idxprom20 = sext i32 %40 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %39, i64 %idxprom20
  %41 = load i32, ptr %arrayidx21, align 4, !tbaa !12
  %sub22 = sub nsw i32 %38, %41
  store i32 %sub22, ptr %room, align 4, !tbaa !12
  %42 = load i32, ptr %nz_col, align 4, !tbaa !12
  store i32 %42, ptr %need, align 4, !tbaa !12
  %43 = load i32, ptr %room, align 4, !tbaa !12
  %44 = load i32, ptr %need, align 4, !tbaa !12
  %cmp = icmp slt i32 %43, %44
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %45 = load i32, ptr %need, align 4, !tbaa !12
  %46 = load i32, ptr %room, align 4, !tbaa !12
  %sub23 = sub nsw i32 %45, %46
  %47 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %addmemL = getelementptr inbounds %struct.lu, ptr %47, i32 0, i32 14
  store i32 %sub23, ptr %addmemL, align 8, !tbaa !24
  store i32 1, ptr %status, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %48 = load i32, ptr %Umem, align 4, !tbaa !12
  %49 = load ptr, ptr %Ubegin, align 8, !tbaa !4
  %50 = load i32, ptr %rank, align 4, !tbaa !12
  %idxprom24 = sext i32 %50 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %49, i64 %idxprom24
  %51 = load i32, ptr %arrayidx25, align 4, !tbaa !12
  %sub26 = sub nsw i32 %48, %51
  store i32 %sub26, ptr %room, align 4, !tbaa !12
  %52 = load i32, ptr %nz_row, align 4, !tbaa !12
  %sub27 = sub nsw i32 %52, 1
  store i32 %sub27, ptr %need, align 4, !tbaa !12
  %53 = load i32, ptr %room, align 4, !tbaa !12
  %54 = load i32, ptr %need, align 4, !tbaa !12
  %cmp28 = icmp slt i32 %53, %54
  br i1 %cmp28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end
  %55 = load i32, ptr %need, align 4, !tbaa !12
  %56 = load i32, ptr %room, align 4, !tbaa !12
  %sub30 = sub nsw i32 %55, %56
  %57 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %addmemU = getelementptr inbounds %struct.lu, ptr %57, i32 0, i32 15
  store i32 %sub30, ptr %addmemU, align 4, !tbaa !25
  store i32 1, ptr %status, align 4, !tbaa !12
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end
  %58 = load i32, ptr %status, align 4, !tbaa !12
  %cmp32 = icmp ne i32 %58, 0
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end31
  %59 = load i32, ptr %status, align 4, !tbaa !12
  store i32 %59, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  %60 = load i32, ptr %nz_row, align 4, !tbaa !12
  %cmp35 = icmp eq i32 %60, 1
  br i1 %cmp35, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end34
  %61 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %call = call i32 @lu_pivot_singleton_row(ptr noundef %61)
  store i32 %call, ptr %status, align 4, !tbaa !12
  br label %if.end54

if.else:                                          ; preds = %if.end34
  %62 = load i32, ptr %nz_col, align 4, !tbaa !12
  %cmp37 = icmp eq i32 %62, 1
  br i1 %cmp37, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.else
  %63 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %call39 = call i32 @lu_pivot_singleton_col(ptr noundef %63)
  store i32 %call39, ptr %status, align 4, !tbaa !12
  br label %if.end53

if.else40:                                        ; preds = %if.else
  %64 = load i32, ptr %nz_col, align 4, !tbaa !12
  %cmp41 = icmp eq i32 %64, 2
  br i1 %cmp41, label %if.then42, label %if.else44

if.then42:                                        ; preds = %if.else40
  %65 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %call43 = call i32 @lu_pivot_doubleton_col(ptr noundef %65)
  store i32 %call43, ptr %status, align 4, !tbaa !12
  br label %if.end52

if.else44:                                        ; preds = %if.else40
  %66 = load i32, ptr %nz_col, align 4, !tbaa !12
  %sub45 = sub nsw i32 %66, 1
  %cmp46 = icmp sle i32 %sub45, 64
  br i1 %cmp46, label %if.then47, label %if.else49

if.then47:                                        ; preds = %if.else44
  %67 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %call48 = call i32 @lu_pivot_small(ptr noundef %67)
  store i32 %call48, ptr %status, align 4, !tbaa !12
  br label %if.end51

if.else49:                                        ; preds = %if.else44
  %68 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %call50 = call i32 @lu_pivot_any(ptr noundef %68)
  store i32 %call50, ptr %status, align 4, !tbaa !12
  br label %if.end51

if.end51:                                         ; preds = %if.else49, %if.then47
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then42
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then38
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then36
  %69 = load i32, ptr %status, align 4, !tbaa !12
  %cmp55 = icmp eq i32 %69, 0
  br i1 %cmp55, label %if.then56, label %if.end73

if.then56:                                        ; preds = %if.end54
  %70 = load ptr, ptr %Ubegin, align 8, !tbaa !4
  %71 = load i32, ptr %rank, align 4, !tbaa !12
  %idxprom57 = sext i32 %71 to i64
  %arrayidx58 = getelementptr inbounds i32, ptr %70, i64 %idxprom57
  %72 = load i32, ptr %arrayidx58, align 4, !tbaa !12
  store i32 %72, ptr %pos, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then56
  %73 = load i32, ptr %pos, align 4, !tbaa !12
  %74 = load ptr, ptr %Ubegin, align 8, !tbaa !4
  %75 = load i32, ptr %rank, align 4, !tbaa !12
  %add59 = add nsw i32 %75, 1
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds i32, ptr %74, i64 %idxprom60
  %76 = load i32, ptr %arrayidx61, align 4, !tbaa !12
  %cmp62 = icmp slt i32 %73, %76
  br i1 %cmp62, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %77 = load ptr, ptr %Uindex, align 8, !tbaa !4
  %78 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom63 = sext i32 %78 to i64
  %arrayidx64 = getelementptr inbounds i32, ptr %77, i64 %idxprom63
  %79 = load i32, ptr %arrayidx64, align 4, !tbaa !12
  store i32 %79, ptr %j, align 4, !tbaa !12
  %80 = load ptr, ptr %colmax, align 8, !tbaa !4
  %81 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom65 = sext i32 %81 to i64
  %arrayidx66 = getelementptr inbounds double, ptr %80, i64 %idxprom65
  %82 = load double, ptr %arrayidx66, align 8, !tbaa !26
  %cmp67 = fcmp oeq double %82, 0.000000e+00
  br i1 %cmp67, label %if.then71, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %83 = load ptr, ptr %colmax, align 8, !tbaa !4
  %84 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom68 = sext i32 %84 to i64
  %arrayidx69 = getelementptr inbounds double, ptr %83, i64 %idxprom68
  %85 = load double, ptr %arrayidx69, align 8, !tbaa !26
  %86 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %abstol = getelementptr inbounds %struct.lu, ptr %86, i32 0, i32 4
  %87 = load double, ptr %abstol, align 8, !tbaa !27
  %cmp70 = fcmp olt double %85, %87
  br i1 %cmp70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %lor.lhs.false, %for.body
  %88 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %89 = load i32, ptr %j, align 4, !tbaa !12
  call void @lu_remove_col(ptr noundef %88, i32 noundef %89)
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end72
  %90 = load i32, ptr %pos, align 4, !tbaa !12
  %inc = add nsw i32 %90, 1
  store i32 %inc, ptr %pos, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end73

if.end73:                                         ; preds = %for.end, %if.end54
  %91 = load i32, ptr %nz_col, align 4, !tbaa !12
  %sub74 = sub nsw i32 %91, 1
  %92 = load i32, ptr %nz_row, align 4, !tbaa !12
  %sub75 = sub nsw i32 %92, 1
  %mul = mul nsw i32 %sub74, %sub75
  %93 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %factor_flops = getelementptr inbounds %struct.lu, ptr %93, i32 0, i32 56
  %94 = load i32, ptr %factor_flops, align 4, !tbaa !28
  %add76 = add nsw i32 %94, %mul
  store i32 %add76, ptr %factor_flops, align 4, !tbaa !28
  %95 = load i32, ptr %status, align 4, !tbaa !12
  store i32 %95, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.then33
  call void @llvm.lifetime.end.p0(i64 16, ptr %tic) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %need) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %room) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nz_row) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nz_col) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Uindex) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wend) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wbegin) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ubegin) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Lbegin_p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %colmax) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pivot_row) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pivot_col) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %Umem) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %Lmem) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rank) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #5
  %96 = load i32, ptr %retval, align 4
  ret i32 %96
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @lu_pivot_singleton_row(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %m = alloca i32, align 4
  %rank = alloca i32, align 4
  %droptol = alloca double, align 8
  %pivot_col = alloca i32, align 4
  %pivot_row = alloca i32, align 4
  %colcount_flink = alloca ptr, align 8
  %colcount_blink = alloca ptr, align 8
  %rowcount_flink = alloca ptr, align 8
  %rowcount_blink = alloca ptr, align 8
  %colmax = alloca ptr, align 8
  %Lbegin_p = alloca ptr, align 8
  %Ubegin = alloca ptr, align 8
  %Wbegin = alloca ptr, align 8
  %Wend = alloca ptr, align 8
  %Lindex = alloca ptr, align 8
  %Lvalue = alloca ptr, align 8
  %Windex = alloca ptr, align 8
  %Wvalue = alloca ptr, align 8
  %cbeg = alloca i32, align 4
  %cend = alloca i32, align 4
  %rbeg = alloca i32, align 4
  %rend = alloca i32, align 4
  %rnz1 = alloca i32, align 4
  %i = alloca i32, align 4
  %pos = alloca i32, align 4
  %put = alloca i32, align 4
  %nz = alloca i32, align 4
  %where = alloca i32, align 4
  %pivot = alloca double, align 8
  %x = alloca double, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %m1 = getelementptr inbounds %struct.lu, ptr %0, i32 0, i32 13
  %1 = load i32, ptr %m1, align 4, !tbaa !8
  store i32 %1, ptr %m, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %rank) #5
  %2 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %rank2 = getelementptr inbounds %struct.lu, ptr %2, i32 0, i32 50
  %3 = load i32, ptr %rank2, align 4, !tbaa !13
  store i32 %3, ptr %rank, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %droptol) #5
  %4 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %droptol3 = getelementptr inbounds %struct.lu, ptr %4, i32 0, i32 3
  %5 = load double, ptr %droptol3, align 8, !tbaa !29
  store double %5, ptr %droptol, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %pivot_col) #5
  %6 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %pivot_col4 = getelementptr inbounds %struct.lu, ptr %6, i32 0, i32 63
  %7 = load i32, ptr %pivot_col4, align 8, !tbaa !16
  store i32 %7, ptr %pivot_col, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %pivot_row) #5
  %8 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %pivot_row5 = getelementptr inbounds %struct.lu, ptr %8, i32 0, i32 62
  %9 = load i32, ptr %pivot_row5, align 4, !tbaa !17
  store i32 %9, ptr %pivot_row, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %colcount_flink) #5
  %10 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %colcount_flink6 = getelementptr inbounds %struct.lu, ptr %10, i32 0, i32 77
  %11 = load ptr, ptr %colcount_flink6, align 8, !tbaa !30
  store ptr %11, ptr %colcount_flink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %colcount_blink) #5
  %12 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %colcount_blink7 = getelementptr inbounds %struct.lu, ptr %12, i32 0, i32 79
  %13 = load ptr, ptr %colcount_blink7, align 8, !tbaa !31
  store ptr %13, ptr %colcount_blink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rowcount_flink) #5
  %14 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %rowcount_flink8 = getelementptr inbounds %struct.lu, ptr %14, i32 0, i32 81
  %15 = load ptr, ptr %rowcount_flink8, align 8, !tbaa !32
  store ptr %15, ptr %rowcount_flink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rowcount_blink) #5
  %16 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %rowcount_blink9 = getelementptr inbounds %struct.lu, ptr %16, i32 0, i32 84
  %17 = load ptr, ptr %rowcount_blink9, align 8, !tbaa !33
  store ptr %17, ptr %rowcount_blink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %colmax) #5
  %18 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %col_pivot = getelementptr inbounds %struct.lu, ptr %18, i32 0, i32 104
  %19 = load ptr, ptr %col_pivot, align 8, !tbaa !18
  store ptr %19, ptr %colmax, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Lbegin_p) #5
  %20 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Lbegin_p10 = getelementptr inbounds %struct.lu, ptr %20, i32 0, i32 98
  %21 = load ptr, ptr %Lbegin_p10, align 8, !tbaa !19
  store ptr %21, ptr %Lbegin_p, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ubegin) #5
  %22 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Ubegin11 = getelementptr inbounds %struct.lu, ptr %22, i32 0, i32 99
  %23 = load ptr, ptr %Ubegin11, align 8, !tbaa !20
  store ptr %23, ptr %Ubegin, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wbegin) #5
  %24 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wbegin12 = getelementptr inbounds %struct.lu, ptr %24, i32 0, i32 86
  %25 = load ptr, ptr %Wbegin12, align 8, !tbaa !21
  store ptr %25, ptr %Wbegin, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wend) #5
  %26 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wend13 = getelementptr inbounds %struct.lu, ptr %26, i32 0, i32 88
  %27 = load ptr, ptr %Wend13, align 8, !tbaa !22
  store ptr %27, ptr %Wend, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Lindex) #5
  %28 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Lindex14 = getelementptr inbounds %struct.lu, ptr %28, i32 0, i32 71
  %29 = load ptr, ptr %Lindex14, align 8, !tbaa !34
  store ptr %29, ptr %Lindex, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Lvalue) #5
  %30 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Lvalue15 = getelementptr inbounds %struct.lu, ptr %30, i32 0, i32 74
  %31 = load ptr, ptr %Lvalue15, align 8, !tbaa !35
  store ptr %31, ptr %Lvalue, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Windex) #5
  %32 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Windex16 = getelementptr inbounds %struct.lu, ptr %32, i32 0, i32 73
  %33 = load ptr, ptr %Windex16, align 8, !tbaa !36
  store ptr %33, ptr %Windex, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wvalue) #5
  %34 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wvalue17 = getelementptr inbounds %struct.lu, ptr %34, i32 0, i32 76
  %35 = load ptr, ptr %Wvalue17, align 8, !tbaa !37
  store ptr %35, ptr %Wvalue, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cbeg) #5
  %36 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %37 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom = sext i32 %37 to i64
  %arrayidx = getelementptr inbounds i32, ptr %36, i64 %idxprom
  %38 = load i32, ptr %arrayidx, align 4, !tbaa !12
  store i32 %38, ptr %cbeg, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %cend) #5
  %39 = load ptr, ptr %Wend, align 8, !tbaa !4
  %40 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom18 = sext i32 %40 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %39, i64 %idxprom18
  %41 = load i32, ptr %arrayidx19, align 4, !tbaa !12
  store i32 %41, ptr %cend, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %rbeg) #5
  %42 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %43 = load i32, ptr %m, align 4, !tbaa !12
  %44 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %add = add nsw i32 %43, %44
  %idxprom20 = sext i32 %add to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %42, i64 %idxprom20
  %45 = load i32, ptr %arrayidx21, align 4, !tbaa !12
  store i32 %45, ptr %rbeg, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %rend) #5
  %46 = load ptr, ptr %Wend, align 8, !tbaa !4
  %47 = load i32, ptr %m, align 4, !tbaa !12
  %48 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %add22 = add nsw i32 %47, %48
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %46, i64 %idxprom23
  %49 = load i32, ptr %arrayidx24, align 4, !tbaa !12
  store i32 %49, ptr %rend, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %rnz1) #5
  %50 = load i32, ptr %rend, align 4, !tbaa !12
  %51 = load i32, ptr %rbeg, align 4, !tbaa !12
  %sub = sub nsw i32 %50, %51
  %sub25 = sub nsw i32 %sub, 1
  store i32 %sub25, ptr %rnz1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %put) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nz) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %where) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %pivot) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #5
  %52 = load i32, ptr %cbeg, align 4, !tbaa !12
  store i32 %52, ptr %where, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %53 = load ptr, ptr %Windex, align 8, !tbaa !4
  %54 = load i32, ptr %where, align 4, !tbaa !12
  %idxprom26 = sext i32 %54 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %53, i64 %idxprom26
  %55 = load i32, ptr %arrayidx27, align 4, !tbaa !12
  %56 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %cmp = icmp ne i32 %55, %56
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %57 = load i32, ptr %where, align 4, !tbaa !12
  %inc = add nsw i32 %57, 1
  store i32 %inc, ptr %where, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %58 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %59 = load i32, ptr %where, align 4, !tbaa !12
  %idxprom28 = sext i32 %59 to i64
  %arrayidx29 = getelementptr inbounds double, ptr %58, i64 %idxprom28
  %60 = load double, ptr %arrayidx29, align 8, !tbaa !26
  store double %60, ptr %pivot, align 8, !tbaa !26
  %61 = load ptr, ptr %Lbegin_p, align 8, !tbaa !4
  %62 = load i32, ptr %rank, align 4, !tbaa !12
  %idxprom30 = sext i32 %62 to i64
  %arrayidx31 = getelementptr inbounds i32, ptr %61, i64 %idxprom30
  %63 = load i32, ptr %arrayidx31, align 4, !tbaa !12
  store i32 %63, ptr %put, align 4, !tbaa !12
  %64 = load i32, ptr %cbeg, align 4, !tbaa !12
  store i32 %64, ptr %pos, align 4, !tbaa !12
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc46, %for.end
  %65 = load i32, ptr %pos, align 4, !tbaa !12
  %66 = load i32, ptr %cend, align 4, !tbaa !12
  %cmp33 = icmp slt i32 %65, %66
  br i1 %cmp33, label %for.body34, label %for.end48

for.body34:                                       ; preds = %for.cond32
  %67 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %68 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom35 = sext i32 %68 to i64
  %arrayidx36 = getelementptr inbounds double, ptr %67, i64 %idxprom35
  %69 = load double, ptr %arrayidx36, align 8, !tbaa !26
  %70 = load double, ptr %pivot, align 8, !tbaa !26
  %div = fdiv double %69, %70
  store double %div, ptr %x, align 8, !tbaa !26
  %71 = load i32, ptr %pos, align 4, !tbaa !12
  %72 = load i32, ptr %where, align 4, !tbaa !12
  %cmp37 = icmp ne i32 %71, %72
  br i1 %cmp37, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body34
  %73 = load double, ptr %x, align 8, !tbaa !26
  %74 = call double @llvm.fabs.f64(double %73)
  %75 = load double, ptr %droptol, align 8, !tbaa !26
  %cmp38 = fcmp ogt double %74, %75
  br i1 %cmp38, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load ptr, ptr %Windex, align 8, !tbaa !4
  %77 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom39 = sext i32 %77 to i64
  %arrayidx40 = getelementptr inbounds i32, ptr %76, i64 %idxprom39
  %78 = load i32, ptr %arrayidx40, align 4, !tbaa !12
  %79 = load ptr, ptr %Lindex, align 8, !tbaa !4
  %80 = load i32, ptr %put, align 4, !tbaa !12
  %idxprom41 = sext i32 %80 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %79, i64 %idxprom41
  store i32 %78, ptr %arrayidx42, align 4, !tbaa !12
  %81 = load double, ptr %x, align 8, !tbaa !26
  %82 = load ptr, ptr %Lvalue, align 8, !tbaa !4
  %83 = load i32, ptr %put, align 4, !tbaa !12
  %inc43 = add nsw i32 %83, 1
  store i32 %inc43, ptr %put, align 4, !tbaa !12
  %idxprom44 = sext i32 %83 to i64
  %arrayidx45 = getelementptr inbounds double, ptr %82, i64 %idxprom44
  store double %81, ptr %arrayidx45, align 8, !tbaa !26
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body34
  br label %for.inc46

for.inc46:                                        ; preds = %if.end
  %84 = load i32, ptr %pos, align 4, !tbaa !12
  %inc47 = add nsw i32 %84, 1
  store i32 %inc47, ptr %pos, align 4, !tbaa !12
  br label %for.cond32

for.end48:                                        ; preds = %for.cond32
  %85 = load ptr, ptr %Lindex, align 8, !tbaa !4
  %86 = load i32, ptr %put, align 4, !tbaa !12
  %inc49 = add nsw i32 %86, 1
  store i32 %inc49, ptr %put, align 4, !tbaa !12
  %idxprom50 = sext i32 %86 to i64
  %arrayidx51 = getelementptr inbounds i32, ptr %85, i64 %idxprom50
  store i32 -1, ptr %arrayidx51, align 4, !tbaa !12
  %87 = load i32, ptr %put, align 4, !tbaa !12
  %88 = load ptr, ptr %Lbegin_p, align 8, !tbaa !4
  %89 = load i32, ptr %rank, align 4, !tbaa !12
  %add52 = add nsw i32 %89, 1
  %idxprom53 = sext i32 %add52 to i64
  %arrayidx54 = getelementptr inbounds i32, ptr %88, i64 %idxprom53
  store i32 %87, ptr %arrayidx54, align 4, !tbaa !12
  %90 = load ptr, ptr %Ubegin, align 8, !tbaa !4
  %91 = load i32, ptr %rank, align 4, !tbaa !12
  %idxprom55 = sext i32 %91 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %90, i64 %idxprom55
  %92 = load i32, ptr %arrayidx56, align 4, !tbaa !12
  %93 = load ptr, ptr %Ubegin, align 8, !tbaa !4
  %94 = load i32, ptr %rank, align 4, !tbaa !12
  %add57 = add nsw i32 %94, 1
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds i32, ptr %93, i64 %idxprom58
  store i32 %92, ptr %arrayidx59, align 4, !tbaa !12
  %95 = load i32, ptr %cbeg, align 4, !tbaa !12
  store i32 %95, ptr %pos, align 4, !tbaa !12
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc93, %for.end48
  %96 = load i32, ptr %pos, align 4, !tbaa !12
  %97 = load i32, ptr %cend, align 4, !tbaa !12
  %cmp61 = icmp slt i32 %96, %97
  br i1 %cmp61, label %for.body62, label %for.end95

for.body62:                                       ; preds = %for.cond60
  %98 = load ptr, ptr %Windex, align 8, !tbaa !4
  %99 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom63 = sext i32 %99 to i64
  %arrayidx64 = getelementptr inbounds i32, ptr %98, i64 %idxprom63
  %100 = load i32, ptr %arrayidx64, align 4, !tbaa !12
  store i32 %100, ptr %i, align 4, !tbaa !12
  %101 = load i32, ptr %i, align 4, !tbaa !12
  %102 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %cmp65 = icmp eq i32 %101, %102
  br i1 %cmp65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %for.body62
  br label %for.inc93

if.end67:                                         ; preds = %for.body62
  %103 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %104 = load i32, ptr %m, align 4, !tbaa !12
  %105 = load i32, ptr %i, align 4, !tbaa !12
  %add68 = add nsw i32 %104, %105
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds i32, ptr %103, i64 %idxprom69
  %106 = load i32, ptr %arrayidx70, align 4, !tbaa !12
  store i32 %106, ptr %where, align 4, !tbaa !12
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc76, %if.end67
  %107 = load ptr, ptr %Windex, align 8, !tbaa !4
  %108 = load i32, ptr %where, align 4, !tbaa !12
  %idxprom72 = sext i32 %108 to i64
  %arrayidx73 = getelementptr inbounds i32, ptr %107, i64 %idxprom72
  %109 = load i32, ptr %arrayidx73, align 4, !tbaa !12
  %110 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %cmp74 = icmp ne i32 %109, %110
  br i1 %cmp74, label %for.body75, label %for.end78

for.body75:                                       ; preds = %for.cond71
  br label %for.inc76

for.inc76:                                        ; preds = %for.body75
  %111 = load i32, ptr %where, align 4, !tbaa !12
  %inc77 = add nsw i32 %111, 1
  store i32 %inc77, ptr %where, align 4, !tbaa !12
  br label %for.cond71

for.end78:                                        ; preds = %for.cond71
  %112 = load ptr, ptr %Windex, align 8, !tbaa !4
  %113 = load ptr, ptr %Wend, align 8, !tbaa !4
  %114 = load i32, ptr %m, align 4, !tbaa !12
  %115 = load i32, ptr %i, align 4, !tbaa !12
  %add79 = add nsw i32 %114, %115
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds i32, ptr %113, i64 %idxprom80
  %116 = load i32, ptr %arrayidx81, align 4, !tbaa !12
  %dec = add nsw i32 %116, -1
  store i32 %dec, ptr %arrayidx81, align 4, !tbaa !12
  %idxprom82 = sext i32 %dec to i64
  %arrayidx83 = getelementptr inbounds i32, ptr %112, i64 %idxprom82
  %117 = load i32, ptr %arrayidx83, align 4, !tbaa !12
  %118 = load ptr, ptr %Windex, align 8, !tbaa !4
  %119 = load i32, ptr %where, align 4, !tbaa !12
  %idxprom84 = sext i32 %119 to i64
  %arrayidx85 = getelementptr inbounds i32, ptr %118, i64 %idxprom84
  store i32 %117, ptr %arrayidx85, align 4, !tbaa !12
  %120 = load ptr, ptr %Wend, align 8, !tbaa !4
  %121 = load i32, ptr %m, align 4, !tbaa !12
  %122 = load i32, ptr %i, align 4, !tbaa !12
  %add86 = add nsw i32 %121, %122
  %idxprom87 = sext i32 %add86 to i64
  %arrayidx88 = getelementptr inbounds i32, ptr %120, i64 %idxprom87
  %123 = load i32, ptr %arrayidx88, align 4, !tbaa !12
  %124 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %125 = load i32, ptr %m, align 4, !tbaa !12
  %126 = load i32, ptr %i, align 4, !tbaa !12
  %add89 = add nsw i32 %125, %126
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds i32, ptr %124, i64 %idxprom90
  %127 = load i32, ptr %arrayidx91, align 4, !tbaa !12
  %sub92 = sub nsw i32 %123, %127
  store i32 %sub92, ptr %nz, align 4, !tbaa !12
  %128 = load i32, ptr %i, align 4, !tbaa !12
  %129 = load i32, ptr %nz, align 4, !tbaa !12
  %130 = load ptr, ptr %rowcount_flink, align 8, !tbaa !4
  %131 = load ptr, ptr %rowcount_blink, align 8, !tbaa !4
  %132 = load i32, ptr %m, align 4, !tbaa !12
  %133 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %min_rownz = getelementptr inbounds %struct.lu, ptr %133, i32 0, i32 70
  call void @lu_list_move(i32 noundef %128, i32 noundef %129, ptr noundef %130, ptr noundef %131, i32 noundef %132, ptr noundef %min_rownz)
  br label %for.inc93

for.inc93:                                        ; preds = %for.end78, %if.then66
  %134 = load i32, ptr %pos, align 4, !tbaa !12
  %inc94 = add nsw i32 %134, 1
  store i32 %inc94, ptr %pos, align 4, !tbaa !12
  br label %for.cond60

for.end95:                                        ; preds = %for.cond60
  %135 = load double, ptr %pivot, align 8, !tbaa !26
  %136 = load ptr, ptr %colmax, align 8, !tbaa !4
  %137 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom96 = sext i32 %137 to i64
  %arrayidx97 = getelementptr inbounds double, ptr %136, i64 %idxprom96
  store double %135, ptr %arrayidx97, align 8, !tbaa !26
  %138 = load i32, ptr %cbeg, align 4, !tbaa !12
  %139 = load ptr, ptr %Wend, align 8, !tbaa !4
  %140 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom98 = sext i32 %140 to i64
  %arrayidx99 = getelementptr inbounds i32, ptr %139, i64 %idxprom98
  store i32 %138, ptr %arrayidx99, align 4, !tbaa !12
  %141 = load i32, ptr %rbeg, align 4, !tbaa !12
  %142 = load ptr, ptr %Wend, align 8, !tbaa !4
  %143 = load i32, ptr %m, align 4, !tbaa !12
  %144 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %add100 = add nsw i32 %143, %144
  %idxprom101 = sext i32 %add100 to i64
  %arrayidx102 = getelementptr inbounds i32, ptr %142, i64 %idxprom101
  store i32 %141, ptr %arrayidx102, align 4, !tbaa !12
  %145 = load ptr, ptr %colcount_flink, align 8, !tbaa !4
  %146 = load ptr, ptr %colcount_blink, align 8, !tbaa !4
  %147 = load i32, ptr %pivot_col, align 4, !tbaa !12
  call void @lu_list_remove(ptr noundef %145, ptr noundef %146, i32 noundef %147)
  %148 = load ptr, ptr %rowcount_flink, align 8, !tbaa !4
  %149 = load ptr, ptr %rowcount_blink, align 8, !tbaa !4
  %150 = load i32, ptr %pivot_row, align 4, !tbaa !12
  call void @lu_list_remove(ptr noundef %148, ptr noundef %149, i32 noundef %150)
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pivot) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %where) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nz) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %put) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rnz1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rend) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rbeg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cend) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cbeg) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wvalue) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Windex) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Lvalue) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Lindex) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wend) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wbegin) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ubegin) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Lbegin_p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %colmax) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rowcount_blink) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rowcount_flink) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %colcount_blink) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %colcount_flink) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pivot_row) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pivot_col) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %droptol) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rank) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @lu_pivot_singleton_col(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %m = alloca i32, align 4
  %rank = alloca i32, align 4
  %droptol = alloca double, align 8
  %pivot_col = alloca i32, align 4
  %pivot_row = alloca i32, align 4
  %colcount_flink = alloca ptr, align 8
  %colcount_blink = alloca ptr, align 8
  %rowcount_flink = alloca ptr, align 8
  %rowcount_blink = alloca ptr, align 8
  %colmax = alloca ptr, align 8
  %Lbegin_p = alloca ptr, align 8
  %Ubegin = alloca ptr, align 8
  %Wbegin = alloca ptr, align 8
  %Wend = alloca ptr, align 8
  %Lindex = alloca ptr, align 8
  %Uindex = alloca ptr, align 8
  %Uvalue = alloca ptr, align 8
  %Windex = alloca ptr, align 8
  %Wvalue = alloca ptr, align 8
  %cbeg = alloca i32, align 4
  %cend = alloca i32, align 4
  %rbeg = alloca i32, align 4
  %rend = alloca i32, align 4
  %cnz1 = alloca i32, align 4
  %j = alloca i32, align 4
  %pos = alloca i32, align 4
  %rpos = alloca i32, align 4
  %put = alloca i32, align 4
  %nz = alloca i32, align 4
  %where = alloca i32, align 4
  %found = alloca i32, align 4
  %pivot = alloca double, align 8
  %cmx = alloca double, align 8
  %x = alloca double, align 8
  %xrj = alloca double, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %m1 = getelementptr inbounds %struct.lu, ptr %0, i32 0, i32 13
  %1 = load i32, ptr %m1, align 4, !tbaa !8
  store i32 %1, ptr %m, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %rank) #5
  %2 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %rank2 = getelementptr inbounds %struct.lu, ptr %2, i32 0, i32 50
  %3 = load i32, ptr %rank2, align 4, !tbaa !13
  store i32 %3, ptr %rank, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %droptol) #5
  %4 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %droptol3 = getelementptr inbounds %struct.lu, ptr %4, i32 0, i32 3
  %5 = load double, ptr %droptol3, align 8, !tbaa !29
  store double %5, ptr %droptol, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %pivot_col) #5
  %6 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %pivot_col4 = getelementptr inbounds %struct.lu, ptr %6, i32 0, i32 63
  %7 = load i32, ptr %pivot_col4, align 8, !tbaa !16
  store i32 %7, ptr %pivot_col, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %pivot_row) #5
  %8 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %pivot_row5 = getelementptr inbounds %struct.lu, ptr %8, i32 0, i32 62
  %9 = load i32, ptr %pivot_row5, align 4, !tbaa !17
  store i32 %9, ptr %pivot_row, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %colcount_flink) #5
  %10 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %colcount_flink6 = getelementptr inbounds %struct.lu, ptr %10, i32 0, i32 77
  %11 = load ptr, ptr %colcount_flink6, align 8, !tbaa !30
  store ptr %11, ptr %colcount_flink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %colcount_blink) #5
  %12 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %colcount_blink7 = getelementptr inbounds %struct.lu, ptr %12, i32 0, i32 79
  %13 = load ptr, ptr %colcount_blink7, align 8, !tbaa !31
  store ptr %13, ptr %colcount_blink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rowcount_flink) #5
  %14 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %rowcount_flink8 = getelementptr inbounds %struct.lu, ptr %14, i32 0, i32 81
  %15 = load ptr, ptr %rowcount_flink8, align 8, !tbaa !32
  store ptr %15, ptr %rowcount_flink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rowcount_blink) #5
  %16 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %rowcount_blink9 = getelementptr inbounds %struct.lu, ptr %16, i32 0, i32 84
  %17 = load ptr, ptr %rowcount_blink9, align 8, !tbaa !33
  store ptr %17, ptr %rowcount_blink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %colmax) #5
  %18 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %col_pivot = getelementptr inbounds %struct.lu, ptr %18, i32 0, i32 104
  %19 = load ptr, ptr %col_pivot, align 8, !tbaa !18
  store ptr %19, ptr %colmax, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Lbegin_p) #5
  %20 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Lbegin_p10 = getelementptr inbounds %struct.lu, ptr %20, i32 0, i32 98
  %21 = load ptr, ptr %Lbegin_p10, align 8, !tbaa !19
  store ptr %21, ptr %Lbegin_p, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ubegin) #5
  %22 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Ubegin11 = getelementptr inbounds %struct.lu, ptr %22, i32 0, i32 99
  %23 = load ptr, ptr %Ubegin11, align 8, !tbaa !20
  store ptr %23, ptr %Ubegin, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wbegin) #5
  %24 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wbegin12 = getelementptr inbounds %struct.lu, ptr %24, i32 0, i32 86
  %25 = load ptr, ptr %Wbegin12, align 8, !tbaa !21
  store ptr %25, ptr %Wbegin, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wend) #5
  %26 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wend13 = getelementptr inbounds %struct.lu, ptr %26, i32 0, i32 88
  %27 = load ptr, ptr %Wend13, align 8, !tbaa !22
  store ptr %27, ptr %Wend, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Lindex) #5
  %28 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Lindex14 = getelementptr inbounds %struct.lu, ptr %28, i32 0, i32 71
  %29 = load ptr, ptr %Lindex14, align 8, !tbaa !34
  store ptr %29, ptr %Lindex, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Uindex) #5
  %30 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Uindex15 = getelementptr inbounds %struct.lu, ptr %30, i32 0, i32 72
  %31 = load ptr, ptr %Uindex15, align 8, !tbaa !23
  store ptr %31, ptr %Uindex, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Uvalue) #5
  %32 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Uvalue16 = getelementptr inbounds %struct.lu, ptr %32, i32 0, i32 75
  %33 = load ptr, ptr %Uvalue16, align 8, !tbaa !38
  store ptr %33, ptr %Uvalue, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Windex) #5
  %34 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Windex17 = getelementptr inbounds %struct.lu, ptr %34, i32 0, i32 73
  %35 = load ptr, ptr %Windex17, align 8, !tbaa !36
  store ptr %35, ptr %Windex, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wvalue) #5
  %36 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wvalue18 = getelementptr inbounds %struct.lu, ptr %36, i32 0, i32 76
  %37 = load ptr, ptr %Wvalue18, align 8, !tbaa !37
  store ptr %37, ptr %Wvalue, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cbeg) #5
  %38 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %39 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom = sext i32 %39 to i64
  %arrayidx = getelementptr inbounds i32, ptr %38, i64 %idxprom
  %40 = load i32, ptr %arrayidx, align 4, !tbaa !12
  store i32 %40, ptr %cbeg, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %cend) #5
  %41 = load ptr, ptr %Wend, align 8, !tbaa !4
  %42 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom19 = sext i32 %42 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %41, i64 %idxprom19
  %43 = load i32, ptr %arrayidx20, align 4, !tbaa !12
  store i32 %43, ptr %cend, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %rbeg) #5
  %44 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %45 = load i32, ptr %m, align 4, !tbaa !12
  %46 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %add = add nsw i32 %45, %46
  %idxprom21 = sext i32 %add to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %44, i64 %idxprom21
  %47 = load i32, ptr %arrayidx22, align 4, !tbaa !12
  store i32 %47, ptr %rbeg, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %rend) #5
  %48 = load ptr, ptr %Wend, align 8, !tbaa !4
  %49 = load i32, ptr %m, align 4, !tbaa !12
  %50 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %add23 = add nsw i32 %49, %50
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %48, i64 %idxprom24
  %51 = load i32, ptr %arrayidx25, align 4, !tbaa !12
  store i32 %51, ptr %rend, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnz1) #5
  %52 = load i32, ptr %cend, align 4, !tbaa !12
  %53 = load i32, ptr %cbeg, align 4, !tbaa !12
  %sub = sub nsw i32 %52, %53
  %sub26 = sub nsw i32 %sub, 1
  store i32 %sub26, ptr %cnz1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %rpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %put) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nz) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %where) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %found) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %pivot) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmx) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %xrj) #5
  %54 = load ptr, ptr %Ubegin, align 8, !tbaa !4
  %55 = load i32, ptr %rank, align 4, !tbaa !12
  %idxprom27 = sext i32 %55 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %54, i64 %idxprom27
  %56 = load i32, ptr %arrayidx28, align 4, !tbaa !12
  store i32 %56, ptr %put, align 4, !tbaa !12
  %57 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %58 = load i32, ptr %cbeg, align 4, !tbaa !12
  %idxprom29 = sext i32 %58 to i64
  %arrayidx30 = getelementptr inbounds double, ptr %57, i64 %idxprom29
  %59 = load double, ptr %arrayidx30, align 8, !tbaa !26
  store double %59, ptr %pivot, align 8, !tbaa !26
  store i32 0, ptr %found, align 4, !tbaa !12
  store double 0.000000e+00, ptr %xrj, align 8, !tbaa !26
  %60 = load i32, ptr %rbeg, align 4, !tbaa !12
  store i32 %60, ptr %rpos, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc80, %entry
  %61 = load i32, ptr %rpos, align 4, !tbaa !12
  %62 = load i32, ptr %rend, align 4, !tbaa !12
  %cmp = icmp slt i32 %61, %62
  br i1 %cmp, label %for.body, label %for.end82

for.body:                                         ; preds = %for.cond
  %63 = load ptr, ptr %Windex, align 8, !tbaa !4
  %64 = load i32, ptr %rpos, align 4, !tbaa !12
  %idxprom31 = sext i32 %64 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %63, i64 %idxprom31
  %65 = load i32, ptr %arrayidx32, align 4, !tbaa !12
  store i32 %65, ptr %j, align 4, !tbaa !12
  %66 = load i32, ptr %j, align 4, !tbaa !12
  %67 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %cmp33 = icmp eq i32 %66, %67
  br i1 %cmp33, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, ptr %found, align 4, !tbaa !12
  br label %for.inc80

if.end:                                           ; preds = %for.body
  store i32 -1, ptr %where, align 4, !tbaa !12
  store double 0.000000e+00, ptr %cmx, align 8, !tbaa !26
  %68 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %69 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom34 = sext i32 %69 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %68, i64 %idxprom34
  %70 = load i32, ptr %arrayidx35, align 4, !tbaa !12
  store i32 %70, ptr %pos, align 4, !tbaa !12
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc, %if.end
  %71 = load i32, ptr %pos, align 4, !tbaa !12
  %72 = load ptr, ptr %Wend, align 8, !tbaa !4
  %73 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom37 = sext i32 %73 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %72, i64 %idxprom37
  %74 = load i32, ptr %arrayidx38, align 4, !tbaa !12
  %cmp39 = icmp slt i32 %71, %74
  br i1 %cmp39, label %for.body40, label %for.end

for.body40:                                       ; preds = %for.cond36
  %75 = load ptr, ptr %Windex, align 8, !tbaa !4
  %76 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom41 = sext i32 %76 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %75, i64 %idxprom41
  %77 = load i32, ptr %arrayidx42, align 4, !tbaa !12
  %78 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %cmp43 = icmp eq i32 %77, %78
  br i1 %cmp43, label %if.then44, label %if.else

if.then44:                                        ; preds = %for.body40
  %79 = load i32, ptr %pos, align 4, !tbaa !12
  store i32 %79, ptr %where, align 4, !tbaa !12
  %80 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %81 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom45 = sext i32 %81 to i64
  %arrayidx46 = getelementptr inbounds double, ptr %80, i64 %idxprom45
  %82 = load double, ptr %arrayidx46, align 8, !tbaa !26
  store double %82, ptr %xrj, align 8, !tbaa !26
  br label %if.end52

if.else:                                          ; preds = %for.body40
  %83 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %84 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom47 = sext i32 %84 to i64
  %arrayidx48 = getelementptr inbounds double, ptr %83, i64 %idxprom47
  %85 = load double, ptr %arrayidx48, align 8, !tbaa !26
  %86 = call double @llvm.fabs.f64(double %85)
  store double %86, ptr %x, align 8, !tbaa !26
  %87 = load double, ptr %cmx, align 8, !tbaa !26
  %cmp49 = fcmp ogt double %86, %87
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.else
  %88 = load double, ptr %x, align 8, !tbaa !26
  store double %88, ptr %cmx, align 8, !tbaa !26
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.else
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then44
  br label %for.inc

for.inc:                                          ; preds = %if.end52
  %89 = load i32, ptr %pos, align 4, !tbaa !12
  %inc = add nsw i32 %89, 1
  store i32 %inc, ptr %pos, align 4, !tbaa !12
  br label %for.cond36

for.end:                                          ; preds = %for.cond36
  %90 = load double, ptr %xrj, align 8, !tbaa !26
  %91 = call double @llvm.fabs.f64(double %90)
  %92 = load double, ptr %droptol, align 8, !tbaa !26
  %cmp53 = fcmp ogt double %91, %92
  br i1 %cmp53, label %if.then54, label %if.end60

if.then54:                                        ; preds = %for.end
  %93 = load i32, ptr %j, align 4, !tbaa !12
  %94 = load ptr, ptr %Uindex, align 8, !tbaa !4
  %95 = load i32, ptr %put, align 4, !tbaa !12
  %idxprom55 = sext i32 %95 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %94, i64 %idxprom55
  store i32 %93, ptr %arrayidx56, align 4, !tbaa !12
  %96 = load double, ptr %xrj, align 8, !tbaa !26
  %97 = load ptr, ptr %Uvalue, align 8, !tbaa !4
  %98 = load i32, ptr %put, align 4, !tbaa !12
  %inc57 = add nsw i32 %98, 1
  store i32 %inc57, ptr %put, align 4, !tbaa !12
  %idxprom58 = sext i32 %98 to i64
  %arrayidx59 = getelementptr inbounds double, ptr %97, i64 %idxprom58
  store double %96, ptr %arrayidx59, align 8, !tbaa !26
  br label %if.end60

if.end60:                                         ; preds = %if.then54, %for.end
  %99 = load ptr, ptr %Windex, align 8, !tbaa !4
  %100 = load ptr, ptr %Wend, align 8, !tbaa !4
  %101 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom61 = sext i32 %101 to i64
  %arrayidx62 = getelementptr inbounds i32, ptr %100, i64 %idxprom61
  %102 = load i32, ptr %arrayidx62, align 4, !tbaa !12
  %dec = add nsw i32 %102, -1
  store i32 %dec, ptr %arrayidx62, align 4, !tbaa !12
  %idxprom63 = sext i32 %dec to i64
  %arrayidx64 = getelementptr inbounds i32, ptr %99, i64 %idxprom63
  %103 = load i32, ptr %arrayidx64, align 4, !tbaa !12
  %104 = load ptr, ptr %Windex, align 8, !tbaa !4
  %105 = load i32, ptr %where, align 4, !tbaa !12
  %idxprom65 = sext i32 %105 to i64
  %arrayidx66 = getelementptr inbounds i32, ptr %104, i64 %idxprom65
  store i32 %103, ptr %arrayidx66, align 4, !tbaa !12
  %106 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %107 = load ptr, ptr %Wend, align 8, !tbaa !4
  %108 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom67 = sext i32 %108 to i64
  %arrayidx68 = getelementptr inbounds i32, ptr %107, i64 %idxprom67
  %109 = load i32, ptr %arrayidx68, align 4, !tbaa !12
  %idxprom69 = sext i32 %109 to i64
  %arrayidx70 = getelementptr inbounds double, ptr %106, i64 %idxprom69
  %110 = load double, ptr %arrayidx70, align 8, !tbaa !26
  %111 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %112 = load i32, ptr %where, align 4, !tbaa !12
  %idxprom71 = sext i32 %112 to i64
  %arrayidx72 = getelementptr inbounds double, ptr %111, i64 %idxprom71
  store double %110, ptr %arrayidx72, align 8, !tbaa !26
  %113 = load ptr, ptr %Wend, align 8, !tbaa !4
  %114 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom73 = sext i32 %114 to i64
  %arrayidx74 = getelementptr inbounds i32, ptr %113, i64 %idxprom73
  %115 = load i32, ptr %arrayidx74, align 4, !tbaa !12
  %116 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %117 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom75 = sext i32 %117 to i64
  %arrayidx76 = getelementptr inbounds i32, ptr %116, i64 %idxprom75
  %118 = load i32, ptr %arrayidx76, align 4, !tbaa !12
  %sub77 = sub nsw i32 %115, %118
  store i32 %sub77, ptr %nz, align 4, !tbaa !12
  %119 = load i32, ptr %j, align 4, !tbaa !12
  %120 = load i32, ptr %nz, align 4, !tbaa !12
  %121 = load ptr, ptr %colcount_flink, align 8, !tbaa !4
  %122 = load ptr, ptr %colcount_blink, align 8, !tbaa !4
  %123 = load i32, ptr %m, align 4, !tbaa !12
  %124 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %min_colnz = getelementptr inbounds %struct.lu, ptr %124, i32 0, i32 69
  call void @lu_list_move(i32 noundef %119, i32 noundef %120, ptr noundef %121, ptr noundef %122, i32 noundef %123, ptr noundef %min_colnz)
  %125 = load double, ptr %cmx, align 8, !tbaa !26
  %126 = load ptr, ptr %colmax, align 8, !tbaa !4
  %127 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom78 = sext i32 %127 to i64
  %arrayidx79 = getelementptr inbounds double, ptr %126, i64 %idxprom78
  store double %125, ptr %arrayidx79, align 8, !tbaa !26
  br label %for.inc80

for.inc80:                                        ; preds = %if.end60, %if.then
  %128 = load i32, ptr %rpos, align 4, !tbaa !12
  %inc81 = add nsw i32 %128, 1
  store i32 %inc81, ptr %rpos, align 4, !tbaa !12
  br label %for.cond

for.end82:                                        ; preds = %for.cond
  %129 = load i32, ptr %put, align 4, !tbaa !12
  %130 = load ptr, ptr %Ubegin, align 8, !tbaa !4
  %131 = load i32, ptr %rank, align 4, !tbaa !12
  %add83 = add nsw i32 %131, 1
  %idxprom84 = sext i32 %add83 to i64
  %arrayidx85 = getelementptr inbounds i32, ptr %130, i64 %idxprom84
  store i32 %129, ptr %arrayidx85, align 4, !tbaa !12
  %132 = load ptr, ptr %Lbegin_p, align 8, !tbaa !4
  %133 = load i32, ptr %rank, align 4, !tbaa !12
  %idxprom86 = sext i32 %133 to i64
  %arrayidx87 = getelementptr inbounds i32, ptr %132, i64 %idxprom86
  %134 = load i32, ptr %arrayidx87, align 4, !tbaa !12
  store i32 %134, ptr %put, align 4, !tbaa !12
  %135 = load ptr, ptr %Lindex, align 8, !tbaa !4
  %136 = load i32, ptr %put, align 4, !tbaa !12
  %inc88 = add nsw i32 %136, 1
  store i32 %inc88, ptr %put, align 4, !tbaa !12
  %idxprom89 = sext i32 %136 to i64
  %arrayidx90 = getelementptr inbounds i32, ptr %135, i64 %idxprom89
  store i32 -1, ptr %arrayidx90, align 4, !tbaa !12
  %137 = load i32, ptr %put, align 4, !tbaa !12
  %138 = load ptr, ptr %Lbegin_p, align 8, !tbaa !4
  %139 = load i32, ptr %rank, align 4, !tbaa !12
  %add91 = add nsw i32 %139, 1
  %idxprom92 = sext i32 %add91 to i64
  %arrayidx93 = getelementptr inbounds i32, ptr %138, i64 %idxprom92
  store i32 %137, ptr %arrayidx93, align 4, !tbaa !12
  %140 = load double, ptr %pivot, align 8, !tbaa !26
  %141 = load ptr, ptr %colmax, align 8, !tbaa !4
  %142 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom94 = sext i32 %142 to i64
  %arrayidx95 = getelementptr inbounds double, ptr %141, i64 %idxprom94
  store double %140, ptr %arrayidx95, align 8, !tbaa !26
  %143 = load i32, ptr %cbeg, align 4, !tbaa !12
  %144 = load ptr, ptr %Wend, align 8, !tbaa !4
  %145 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom96 = sext i32 %145 to i64
  %arrayidx97 = getelementptr inbounds i32, ptr %144, i64 %idxprom96
  store i32 %143, ptr %arrayidx97, align 4, !tbaa !12
  %146 = load i32, ptr %rbeg, align 4, !tbaa !12
  %147 = load ptr, ptr %Wend, align 8, !tbaa !4
  %148 = load i32, ptr %m, align 4, !tbaa !12
  %149 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %add98 = add nsw i32 %148, %149
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds i32, ptr %147, i64 %idxprom99
  store i32 %146, ptr %arrayidx100, align 4, !tbaa !12
  %150 = load ptr, ptr %colcount_flink, align 8, !tbaa !4
  %151 = load ptr, ptr %colcount_blink, align 8, !tbaa !4
  %152 = load i32, ptr %pivot_col, align 4, !tbaa !12
  call void @lu_list_remove(ptr noundef %150, ptr noundef %151, i32 noundef %152)
  %153 = load ptr, ptr %rowcount_flink, align 8, !tbaa !4
  %154 = load ptr, ptr %rowcount_blink, align 8, !tbaa !4
  %155 = load i32, ptr %pivot_row, align 4, !tbaa !12
  call void @lu_list_remove(ptr noundef %153, ptr noundef %154, i32 noundef %155)
  call void @llvm.lifetime.end.p0(i64 8, ptr %xrj) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmx) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pivot) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %found) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %where) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nz) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %put) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rpos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnz1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rend) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rbeg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cend) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cbeg) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wvalue) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Windex) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Uvalue) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Uindex) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Lindex) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wend) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wbegin) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ubegin) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Lbegin_p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %colmax) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rowcount_blink) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rowcount_flink) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %colcount_blink) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %colcount_flink) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pivot_row) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pivot_col) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %droptol) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rank) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @lu_pivot_doubleton_col(ptr noundef %this) #0 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca ptr, align 8
  %m = alloca i32, align 4
  %rank = alloca i32, align 4
  %droptol = alloca double, align 8
  %pad = alloca i32, align 4
  %stretch = alloca double, align 8
  %pivot_col = alloca i32, align 4
  %pivot_row = alloca i32, align 4
  %colcount_flink = alloca ptr, align 8
  %colcount_blink = alloca ptr, align 8
  %rowcount_flink = alloca ptr, align 8
  %rowcount_blink = alloca ptr, align 8
  %colmax = alloca ptr, align 8
  %Lbegin_p = alloca ptr, align 8
  %Ubegin = alloca ptr, align 8
  %Wbegin = alloca ptr, align 8
  %Wend = alloca ptr, align 8
  %Wflink = alloca ptr, align 8
  %Wblink = alloca ptr, align 8
  %Lindex = alloca ptr, align 8
  %Lvalue = alloca ptr, align 8
  %Uindex = alloca ptr, align 8
  %Uvalue = alloca ptr, align 8
  %Windex = alloca ptr, align 8
  %Wvalue = alloca ptr, align 8
  %marked = alloca ptr, align 8
  %cbeg = alloca i32, align 4
  %cend = alloca i32, align 4
  %rbeg = alloca i32, align 4
  %rend = alloca i32, align 4
  %cnz1 = alloca i32, align 4
  %rnz1 = alloca i32, align 4
  %j = alloca i32, align 4
  %pos = alloca i32, align 4
  %rpos = alloca i32, align 4
  %put = alloca i32, align 4
  %Uput = alloca i32, align 4
  %nz = alloca i32, align 4
  %nfill = alloca i32, align 4
  %where = alloca i32, align 4
  %where_pivot = alloca i32, align 4
  %where_other = alloca i32, align 4
  %other_row = alloca i32, align 4
  %grow = alloca i32, align 4
  %room = alloca i32, align 4
  %space = alloca i32, align 4
  %end = alloca i32, align 4
  %ncancelled = alloca i32, align 4
  %pivot = alloca double, align 8
  %other_value = alloca double, align 8
  %xrj = alloca double, align 8
  %cmx = alloca double, align 8
  %x = alloca double, align 8
  %xabs = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %m1 = getelementptr inbounds %struct.lu, ptr %0, i32 0, i32 13
  %1 = load i32, ptr %m1, align 4, !tbaa !8
  store i32 %1, ptr %m, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %rank) #5
  %2 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %rank2 = getelementptr inbounds %struct.lu, ptr %2, i32 0, i32 50
  %3 = load i32, ptr %rank2, align 4, !tbaa !13
  store i32 %3, ptr %rank, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %droptol) #5
  %4 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %droptol3 = getelementptr inbounds %struct.lu, ptr %4, i32 0, i32 3
  %5 = load double, ptr %droptol3, align 8, !tbaa !29
  store double %5, ptr %droptol, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %pad) #5
  %6 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %pad4 = getelementptr inbounds %struct.lu, ptr %6, i32 0, i32 8
  %7 = load i32, ptr %pad4, align 8, !tbaa !39
  store i32 %7, ptr %pad, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %stretch) #5
  %8 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %stretch5 = getelementptr inbounds %struct.lu, ptr %8, i32 0, i32 9
  %9 = load double, ptr %stretch5, align 8, !tbaa !40
  store double %9, ptr %stretch, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %pivot_col) #5
  %10 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %pivot_col6 = getelementptr inbounds %struct.lu, ptr %10, i32 0, i32 63
  %11 = load i32, ptr %pivot_col6, align 8, !tbaa !16
  store i32 %11, ptr %pivot_col, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %pivot_row) #5
  %12 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %pivot_row7 = getelementptr inbounds %struct.lu, ptr %12, i32 0, i32 62
  %13 = load i32, ptr %pivot_row7, align 4, !tbaa !17
  store i32 %13, ptr %pivot_row, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %colcount_flink) #5
  %14 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %colcount_flink8 = getelementptr inbounds %struct.lu, ptr %14, i32 0, i32 77
  %15 = load ptr, ptr %colcount_flink8, align 8, !tbaa !30
  store ptr %15, ptr %colcount_flink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %colcount_blink) #5
  %16 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %colcount_blink9 = getelementptr inbounds %struct.lu, ptr %16, i32 0, i32 79
  %17 = load ptr, ptr %colcount_blink9, align 8, !tbaa !31
  store ptr %17, ptr %colcount_blink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rowcount_flink) #5
  %18 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %rowcount_flink10 = getelementptr inbounds %struct.lu, ptr %18, i32 0, i32 81
  %19 = load ptr, ptr %rowcount_flink10, align 8, !tbaa !32
  store ptr %19, ptr %rowcount_flink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rowcount_blink) #5
  %20 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %rowcount_blink11 = getelementptr inbounds %struct.lu, ptr %20, i32 0, i32 84
  %21 = load ptr, ptr %rowcount_blink11, align 8, !tbaa !33
  store ptr %21, ptr %rowcount_blink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %colmax) #5
  %22 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %col_pivot = getelementptr inbounds %struct.lu, ptr %22, i32 0, i32 104
  %23 = load ptr, ptr %col_pivot, align 8, !tbaa !18
  store ptr %23, ptr %colmax, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Lbegin_p) #5
  %24 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Lbegin_p12 = getelementptr inbounds %struct.lu, ptr %24, i32 0, i32 98
  %25 = load ptr, ptr %Lbegin_p12, align 8, !tbaa !19
  store ptr %25, ptr %Lbegin_p, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ubegin) #5
  %26 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Ubegin13 = getelementptr inbounds %struct.lu, ptr %26, i32 0, i32 99
  %27 = load ptr, ptr %Ubegin13, align 8, !tbaa !20
  store ptr %27, ptr %Ubegin, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wbegin) #5
  %28 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wbegin14 = getelementptr inbounds %struct.lu, ptr %28, i32 0, i32 86
  %29 = load ptr, ptr %Wbegin14, align 8, !tbaa !21
  store ptr %29, ptr %Wbegin, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wend) #5
  %30 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wend15 = getelementptr inbounds %struct.lu, ptr %30, i32 0, i32 88
  %31 = load ptr, ptr %Wend15, align 8, !tbaa !22
  store ptr %31, ptr %Wend, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wflink) #5
  %32 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wflink16 = getelementptr inbounds %struct.lu, ptr %32, i32 0, i32 90
  %33 = load ptr, ptr %Wflink16, align 8, !tbaa !41
  store ptr %33, ptr %Wflink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wblink) #5
  %34 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wblink17 = getelementptr inbounds %struct.lu, ptr %34, i32 0, i32 92
  %35 = load ptr, ptr %Wblink17, align 8, !tbaa !42
  store ptr %35, ptr %Wblink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Lindex) #5
  %36 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Lindex18 = getelementptr inbounds %struct.lu, ptr %36, i32 0, i32 71
  %37 = load ptr, ptr %Lindex18, align 8, !tbaa !34
  store ptr %37, ptr %Lindex, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Lvalue) #5
  %38 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Lvalue19 = getelementptr inbounds %struct.lu, ptr %38, i32 0, i32 74
  %39 = load ptr, ptr %Lvalue19, align 8, !tbaa !35
  store ptr %39, ptr %Lvalue, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Uindex) #5
  %40 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Uindex20 = getelementptr inbounds %struct.lu, ptr %40, i32 0, i32 72
  %41 = load ptr, ptr %Uindex20, align 8, !tbaa !23
  store ptr %41, ptr %Uindex, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Uvalue) #5
  %42 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Uvalue21 = getelementptr inbounds %struct.lu, ptr %42, i32 0, i32 75
  %43 = load ptr, ptr %Uvalue21, align 8, !tbaa !38
  store ptr %43, ptr %Uvalue, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Windex) #5
  %44 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Windex22 = getelementptr inbounds %struct.lu, ptr %44, i32 0, i32 73
  %45 = load ptr, ptr %Windex22, align 8, !tbaa !36
  store ptr %45, ptr %Windex, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wvalue) #5
  %46 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wvalue23 = getelementptr inbounds %struct.lu, ptr %46, i32 0, i32 76
  %47 = load ptr, ptr %Wvalue23, align 8, !tbaa !37
  store ptr %47, ptr %Wvalue, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %marked) #5
  %48 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %iwork0 = getelementptr inbounds %struct.lu, ptr %48, i32 0, i32 100
  %49 = load ptr, ptr %iwork0, align 8, !tbaa !43
  store ptr %49, ptr %marked, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cbeg) #5
  %50 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %51 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom = sext i32 %51 to i64
  %arrayidx = getelementptr inbounds i32, ptr %50, i64 %idxprom
  %52 = load i32, ptr %arrayidx, align 4, !tbaa !12
  store i32 %52, ptr %cbeg, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %cend) #5
  %53 = load ptr, ptr %Wend, align 8, !tbaa !4
  %54 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom24 = sext i32 %54 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %53, i64 %idxprom24
  %55 = load i32, ptr %arrayidx25, align 4, !tbaa !12
  store i32 %55, ptr %cend, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %rbeg) #5
  %56 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %57 = load i32, ptr %m, align 4, !tbaa !12
  %58 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %add = add nsw i32 %57, %58
  %idxprom26 = sext i32 %add to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %56, i64 %idxprom26
  %59 = load i32, ptr %arrayidx27, align 4, !tbaa !12
  store i32 %59, ptr %rbeg, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %rend) #5
  %60 = load ptr, ptr %Wend, align 8, !tbaa !4
  %61 = load i32, ptr %m, align 4, !tbaa !12
  %62 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %add28 = add nsw i32 %61, %62
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %60, i64 %idxprom29
  %63 = load i32, ptr %arrayidx30, align 4, !tbaa !12
  store i32 %63, ptr %rend, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnz1) #5
  %64 = load i32, ptr %cend, align 4, !tbaa !12
  %65 = load i32, ptr %cbeg, align 4, !tbaa !12
  %sub = sub nsw i32 %64, %65
  %sub31 = sub nsw i32 %sub, 1
  store i32 %sub31, ptr %cnz1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %rnz1) #5
  %66 = load i32, ptr %rend, align 4, !tbaa !12
  %67 = load i32, ptr %rbeg, align 4, !tbaa !12
  %sub32 = sub nsw i32 %66, %67
  %sub33 = sub nsw i32 %sub32, 1
  store i32 %sub33, ptr %rnz1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %rpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %put) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %Uput) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nz) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nfill) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %where) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %where_pivot) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %where_other) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %other_row) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %grow) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %room) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %space) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %end) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ncancelled) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %pivot) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %other_value) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %xrj) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmx) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %xabs) #5
  %68 = load ptr, ptr %Windex, align 8, !tbaa !4
  %69 = load i32, ptr %cbeg, align 4, !tbaa !12
  %idxprom34 = sext i32 %69 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %68, i64 %idxprom34
  %70 = load i32, ptr %arrayidx35, align 4, !tbaa !12
  %71 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %cmp = icmp ne i32 %70, %71
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %72 = load ptr, ptr %Windex, align 8, !tbaa !4
  %73 = load i32, ptr %cbeg, align 4, !tbaa !12
  %74 = load i32, ptr %cbeg, align 4, !tbaa !12
  %add36 = add nsw i32 %74, 1
  call void @lu_iswap(ptr noundef %72, i32 noundef %73, i32 noundef %add36)
  %75 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %76 = load i32, ptr %cbeg, align 4, !tbaa !12
  %77 = load i32, ptr %cbeg, align 4, !tbaa !12
  %add37 = add nsw i32 %77, 1
  call void @lu_fswap(ptr noundef %75, i32 noundef %76, i32 noundef %add37)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %78 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %79 = load i32, ptr %cbeg, align 4, !tbaa !12
  %idxprom38 = sext i32 %79 to i64
  %arrayidx39 = getelementptr inbounds double, ptr %78, i64 %idxprom38
  %80 = load double, ptr %arrayidx39, align 8, !tbaa !26
  store double %80, ptr %pivot, align 8, !tbaa !26
  %81 = load ptr, ptr %Windex, align 8, !tbaa !4
  %82 = load i32, ptr %cbeg, align 4, !tbaa !12
  %add40 = add nsw i32 %82, 1
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %81, i64 %idxprom41
  %83 = load i32, ptr %arrayidx42, align 4, !tbaa !12
  store i32 %83, ptr %other_row, align 4, !tbaa !12
  %84 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %85 = load i32, ptr %cbeg, align 4, !tbaa !12
  %add43 = add nsw i32 %85, 1
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds double, ptr %84, i64 %idxprom44
  %86 = load double, ptr %arrayidx45, align 8, !tbaa !26
  store double %86, ptr %other_value, align 8, !tbaa !26
  %87 = load i32, ptr %rbeg, align 4, !tbaa !12
  store i32 %87, ptr %where, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %88 = load ptr, ptr %Windex, align 8, !tbaa !4
  %89 = load i32, ptr %where, align 4, !tbaa !12
  %idxprom46 = sext i32 %89 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %88, i64 %idxprom46
  %90 = load i32, ptr %arrayidx47, align 4, !tbaa !12
  %91 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %cmp48 = icmp ne i32 %90, %91
  br i1 %cmp48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %92 = load i32, ptr %where, align 4, !tbaa !12
  %inc = add nsw i32 %92, 1
  store i32 %inc, ptr %where, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %93 = load ptr, ptr %Windex, align 8, !tbaa !4
  %94 = load i32, ptr %rbeg, align 4, !tbaa !12
  %95 = load i32, ptr %where, align 4, !tbaa !12
  call void @lu_iswap(ptr noundef %93, i32 noundef %94, i32 noundef %95)
  %96 = load ptr, ptr %Wend, align 8, !tbaa !4
  %97 = load i32, ptr %m, align 4, !tbaa !12
  %98 = load i32, ptr %other_row, align 4, !tbaa !12
  %add49 = add nsw i32 %97, %98
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds i32, ptr %96, i64 %idxprom50
  %99 = load i32, ptr %arrayidx51, align 4, !tbaa !12
  %100 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %101 = load i32, ptr %m, align 4, !tbaa !12
  %102 = load i32, ptr %other_row, align 4, !tbaa !12
  %add52 = add nsw i32 %101, %102
  %idxprom53 = sext i32 %add52 to i64
  %arrayidx54 = getelementptr inbounds i32, ptr %100, i64 %idxprom53
  %103 = load i32, ptr %arrayidx54, align 4, !tbaa !12
  %sub55 = sub nsw i32 %99, %103
  store i32 %sub55, ptr %nz, align 4, !tbaa !12
  %104 = load i32, ptr %nz, align 4, !tbaa !12
  %105 = load i32, ptr %rnz1, align 4, !tbaa !12
  %add56 = add nsw i32 %104, %105
  %conv = sitofp i32 %add56 to double
  %106 = load double, ptr %stretch, align 8, !tbaa !26
  %107 = load i32, ptr %nz, align 4, !tbaa !12
  %108 = load i32, ptr %rnz1, align 4, !tbaa !12
  %add57 = add nsw i32 %107, %108
  %conv58 = sitofp i32 %add57 to double
  %109 = call double @llvm.fmuladd.f64(double %106, double %conv58, double %conv)
  %110 = load i32, ptr %pad, align 4, !tbaa !12
  %conv59 = sitofp i32 %110 to double
  %add60 = fadd double %109, %conv59
  %conv61 = fptosi double %add60 to i32
  store i32 %conv61, ptr %grow, align 4, !tbaa !12
  %111 = load ptr, ptr %Wend, align 8, !tbaa !4
  %112 = load i32, ptr %m, align 4, !tbaa !12
  %mul = mul nsw i32 2, %112
  %idxprom62 = sext i32 %mul to i64
  %arrayidx63 = getelementptr inbounds i32, ptr %111, i64 %idxprom62
  %113 = load i32, ptr %arrayidx63, align 4, !tbaa !12
  %114 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %115 = load i32, ptr %m, align 4, !tbaa !12
  %mul64 = mul nsw i32 2, %115
  %idxprom65 = sext i32 %mul64 to i64
  %arrayidx66 = getelementptr inbounds i32, ptr %114, i64 %idxprom65
  %116 = load i32, ptr %arrayidx66, align 4, !tbaa !12
  %sub67 = sub nsw i32 %113, %116
  store i32 %sub67, ptr %room, align 4, !tbaa !12
  %117 = load i32, ptr %grow, align 4, !tbaa !12
  %118 = load i32, ptr %room, align 4, !tbaa !12
  %cmp68 = icmp sgt i32 %117, %118
  br i1 %cmp68, label %if.then70, label %if.end90

if.then70:                                        ; preds = %for.end
  %119 = load i32, ptr %m, align 4, !tbaa !12
  %mul71 = mul nsw i32 2, %119
  %120 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %121 = load ptr, ptr %Wend, align 8, !tbaa !4
  %122 = load ptr, ptr %Wflink, align 8, !tbaa !4
  %123 = load ptr, ptr %Windex, align 8, !tbaa !4
  %124 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %125 = load double, ptr %stretch, align 8, !tbaa !26
  %126 = load i32, ptr %pad, align 4, !tbaa !12
  %call = call i32 @lu_file_compress(i32 noundef %mul71, ptr noundef %120, ptr noundef %121, ptr noundef %122, ptr noundef %123, ptr noundef %124, double noundef %125, i32 noundef %126)
  %127 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %128 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom72 = sext i32 %128 to i64
  %arrayidx73 = getelementptr inbounds i32, ptr %127, i64 %idxprom72
  %129 = load i32, ptr %arrayidx73, align 4, !tbaa !12
  store i32 %129, ptr %cbeg, align 4, !tbaa !12
  %130 = load ptr, ptr %Wend, align 8, !tbaa !4
  %131 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom74 = sext i32 %131 to i64
  %arrayidx75 = getelementptr inbounds i32, ptr %130, i64 %idxprom74
  %132 = load i32, ptr %arrayidx75, align 4, !tbaa !12
  store i32 %132, ptr %cend, align 4, !tbaa !12
  %133 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %134 = load i32, ptr %m, align 4, !tbaa !12
  %135 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %add76 = add nsw i32 %134, %135
  %idxprom77 = sext i32 %add76 to i64
  %arrayidx78 = getelementptr inbounds i32, ptr %133, i64 %idxprom77
  %136 = load i32, ptr %arrayidx78, align 4, !tbaa !12
  store i32 %136, ptr %rbeg, align 4, !tbaa !12
  %137 = load ptr, ptr %Wend, align 8, !tbaa !4
  %138 = load i32, ptr %m, align 4, !tbaa !12
  %139 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %add79 = add nsw i32 %138, %139
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds i32, ptr %137, i64 %idxprom80
  %140 = load i32, ptr %arrayidx81, align 4, !tbaa !12
  store i32 %140, ptr %rend, align 4, !tbaa !12
  %141 = load ptr, ptr %Wend, align 8, !tbaa !4
  %142 = load i32, ptr %m, align 4, !tbaa !12
  %mul82 = mul nsw i32 2, %142
  %idxprom83 = sext i32 %mul82 to i64
  %arrayidx84 = getelementptr inbounds i32, ptr %141, i64 %idxprom83
  %143 = load i32, ptr %arrayidx84, align 4, !tbaa !12
  %144 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %145 = load i32, ptr %m, align 4, !tbaa !12
  %mul85 = mul nsw i32 2, %145
  %idxprom86 = sext i32 %mul85 to i64
  %arrayidx87 = getelementptr inbounds i32, ptr %144, i64 %idxprom86
  %146 = load i32, ptr %arrayidx87, align 4, !tbaa !12
  %sub88 = sub nsw i32 %143, %146
  store i32 %sub88, ptr %room, align 4, !tbaa !12
  %147 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %ngarbage = getelementptr inbounds %struct.lu, ptr %147, i32 0, i32 55
  %148 = load i32, ptr %ngarbage, align 8, !tbaa !44
  %inc89 = add nsw i32 %148, 1
  store i32 %inc89, ptr %ngarbage, align 8, !tbaa !44
  br label %if.end90

if.end90:                                         ; preds = %if.then70, %for.end
  %149 = load i32, ptr %grow, align 4, !tbaa !12
  %150 = load i32, ptr %room, align 4, !tbaa !12
  %cmp91 = icmp sgt i32 %149, %150
  br i1 %cmp91, label %if.then93, label %if.end95

if.then93:                                        ; preds = %if.end90
  %151 = load i32, ptr %grow, align 4, !tbaa !12
  %152 = load i32, ptr %room, align 4, !tbaa !12
  %sub94 = sub nsw i32 %151, %152
  %153 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %addmemW = getelementptr inbounds %struct.lu, ptr %153, i32 0, i32 16
  store i32 %sub94, ptr %addmemW, align 8, !tbaa !45
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end95:                                         ; preds = %if.end90
  %154 = load ptr, ptr %Ubegin, align 8, !tbaa !4
  %155 = load i32, ptr %rank, align 4, !tbaa !12
  %idxprom96 = sext i32 %155 to i64
  %arrayidx97 = getelementptr inbounds i32, ptr %154, i64 %idxprom96
  %156 = load i32, ptr %arrayidx97, align 4, !tbaa !12
  store i32 %156, ptr %Uput, align 4, !tbaa !12
  %157 = load i32, ptr %rbeg, align 4, !tbaa !12
  %add98 = add nsw i32 %157, 1
  store i32 %add98, ptr %put, align 4, !tbaa !12
  store i32 0, ptr %ncancelled, align 4, !tbaa !12
  %158 = load i32, ptr %rbeg, align 4, !tbaa !12
  %add99 = add nsw i32 %158, 1
  store i32 %add99, ptr %rpos, align 4, !tbaa !12
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc238, %if.end95
  %159 = load i32, ptr %rpos, align 4, !tbaa !12
  %160 = load i32, ptr %rend, align 4, !tbaa !12
  %cmp101 = icmp slt i32 %159, %160
  br i1 %cmp101, label %for.body103, label %for.end240

for.body103:                                      ; preds = %for.cond100
  %161 = load ptr, ptr %Windex, align 8, !tbaa !4
  %162 = load i32, ptr %rpos, align 4, !tbaa !12
  %idxprom104 = sext i32 %162 to i64
  %arrayidx105 = getelementptr inbounds i32, ptr %161, i64 %idxprom104
  %163 = load i32, ptr %arrayidx105, align 4, !tbaa !12
  store i32 %163, ptr %j, align 4, !tbaa !12
  store double 0.000000e+00, ptr %cmx, align 8, !tbaa !26
  store i32 -1, ptr %where_pivot, align 4, !tbaa !12
  store i32 -1, ptr %where_other, align 4, !tbaa !12
  %164 = load ptr, ptr %Wend, align 8, !tbaa !4
  %165 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom106 = sext i32 %165 to i64
  %arrayidx107 = getelementptr inbounds i32, ptr %164, i64 %idxprom106
  %166 = load i32, ptr %arrayidx107, align 4, !tbaa !12
  store i32 %166, ptr %end, align 4, !tbaa !12
  %167 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %168 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom108 = sext i32 %168 to i64
  %arrayidx109 = getelementptr inbounds i32, ptr %167, i64 %idxprom108
  %169 = load i32, ptr %arrayidx109, align 4, !tbaa !12
  store i32 %169, ptr %pos, align 4, !tbaa !12
  br label %for.cond110

for.cond110:                                      ; preds = %for.inc133, %for.body103
  %170 = load i32, ptr %pos, align 4, !tbaa !12
  %171 = load i32, ptr %end, align 4, !tbaa !12
  %cmp111 = icmp slt i32 %170, %171
  br i1 %cmp111, label %for.body113, label %for.end135

for.body113:                                      ; preds = %for.cond110
  %172 = load ptr, ptr %Windex, align 8, !tbaa !4
  %173 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom114 = sext i32 %173 to i64
  %arrayidx115 = getelementptr inbounds i32, ptr %172, i64 %idxprom114
  %174 = load i32, ptr %arrayidx115, align 4, !tbaa !12
  %175 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %cmp116 = icmp eq i32 %174, %175
  br i1 %cmp116, label %if.then118, label %if.else

if.then118:                                       ; preds = %for.body113
  %176 = load i32, ptr %pos, align 4, !tbaa !12
  store i32 %176, ptr %where_pivot, align 4, !tbaa !12
  br label %if.end132

if.else:                                          ; preds = %for.body113
  %177 = load ptr, ptr %Windex, align 8, !tbaa !4
  %178 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom119 = sext i32 %178 to i64
  %arrayidx120 = getelementptr inbounds i32, ptr %177, i64 %idxprom119
  %179 = load i32, ptr %arrayidx120, align 4, !tbaa !12
  %180 = load i32, ptr %other_row, align 4, !tbaa !12
  %cmp121 = icmp eq i32 %179, %180
  br i1 %cmp121, label %if.then123, label %if.else124

if.then123:                                       ; preds = %if.else
  %181 = load i32, ptr %pos, align 4, !tbaa !12
  store i32 %181, ptr %where_other, align 4, !tbaa !12
  br label %if.end131

if.else124:                                       ; preds = %if.else
  %182 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %183 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom125 = sext i32 %183 to i64
  %arrayidx126 = getelementptr inbounds double, ptr %182, i64 %idxprom125
  %184 = load double, ptr %arrayidx126, align 8, !tbaa !26
  %185 = call double @llvm.fabs.f64(double %184)
  store double %185, ptr %x, align 8, !tbaa !26
  %186 = load double, ptr %cmx, align 8, !tbaa !26
  %cmp127 = fcmp ogt double %185, %186
  br i1 %cmp127, label %if.then129, label %if.end130

if.then129:                                       ; preds = %if.else124
  %187 = load double, ptr %x, align 8, !tbaa !26
  store double %187, ptr %cmx, align 8, !tbaa !26
  br label %if.end130

if.end130:                                        ; preds = %if.then129, %if.else124
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %if.then123
  br label %if.end132

if.end132:                                        ; preds = %if.end131, %if.then118
  br label %for.inc133

for.inc133:                                       ; preds = %if.end132
  %188 = load i32, ptr %pos, align 4, !tbaa !12
  %inc134 = add nsw i32 %188, 1
  store i32 %inc134, ptr %pos, align 4, !tbaa !12
  br label %for.cond110

for.end135:                                       ; preds = %for.cond110
  %189 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %190 = load i32, ptr %where_pivot, align 4, !tbaa !12
  %idxprom136 = sext i32 %190 to i64
  %arrayidx137 = getelementptr inbounds double, ptr %189, i64 %idxprom136
  %191 = load double, ptr %arrayidx137, align 8, !tbaa !26
  store double %191, ptr %xrj, align 8, !tbaa !26
  %192 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %193 = load i32, ptr %where_pivot, align 4, !tbaa !12
  %idxprom138 = sext i32 %193 to i64
  %arrayidx139 = getelementptr inbounds double, ptr %192, i64 %idxprom138
  %194 = load double, ptr %arrayidx139, align 8, !tbaa !26
  %195 = call double @llvm.fabs.f64(double %194)
  %196 = load double, ptr %droptol, align 8, !tbaa !26
  %cmp140 = fcmp ogt double %195, %196
  br i1 %cmp140, label %if.then142, label %if.end150

if.then142:                                       ; preds = %for.end135
  %197 = load i32, ptr %j, align 4, !tbaa !12
  %198 = load ptr, ptr %Uindex, align 8, !tbaa !4
  %199 = load i32, ptr %Uput, align 4, !tbaa !12
  %idxprom143 = sext i32 %199 to i64
  %arrayidx144 = getelementptr inbounds i32, ptr %198, i64 %idxprom143
  store i32 %197, ptr %arrayidx144, align 4, !tbaa !12
  %200 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %201 = load i32, ptr %where_pivot, align 4, !tbaa !12
  %idxprom145 = sext i32 %201 to i64
  %arrayidx146 = getelementptr inbounds double, ptr %200, i64 %idxprom145
  %202 = load double, ptr %arrayidx146, align 8, !tbaa !26
  %203 = load ptr, ptr %Uvalue, align 8, !tbaa !4
  %204 = load i32, ptr %Uput, align 4, !tbaa !12
  %inc147 = add nsw i32 %204, 1
  store i32 %inc147, ptr %Uput, align 4, !tbaa !12
  %idxprom148 = sext i32 %204 to i64
  %arrayidx149 = getelementptr inbounds double, ptr %203, i64 %idxprom148
  store double %202, ptr %arrayidx149, align 8, !tbaa !26
  br label %if.end150

if.end150:                                        ; preds = %if.then142, %for.end135
  %205 = load i32, ptr %where_other, align 4, !tbaa !12
  %cmp151 = icmp eq i32 %205, -1
  br i1 %cmp151, label %if.then153, label %if.else184

if.then153:                                       ; preds = %if.end150
  %206 = load double, ptr %xrj, align 8, !tbaa !26
  %fneg = fneg double %206
  %207 = load double, ptr %other_value, align 8, !tbaa !26
  %208 = load double, ptr %pivot, align 8, !tbaa !26
  %div = fdiv double %207, %208
  %mul154 = fmul double %fneg, %div
  store double %mul154, ptr %x, align 8, !tbaa !26
  %209 = load double, ptr %x, align 8, !tbaa !26
  %210 = call double @llvm.fabs.f64(double %209)
  store double %210, ptr %xabs, align 8, !tbaa !26
  %211 = load double, ptr %xabs, align 8, !tbaa !26
  %212 = load double, ptr %droptol, align 8, !tbaa !26
  %cmp155 = fcmp ogt double %211, %212
  br i1 %cmp155, label %if.then157, label %if.else169

if.then157:                                       ; preds = %if.then153
  %213 = load i32, ptr %other_row, align 4, !tbaa !12
  %214 = load ptr, ptr %Windex, align 8, !tbaa !4
  %215 = load i32, ptr %where_pivot, align 4, !tbaa !12
  %idxprom158 = sext i32 %215 to i64
  %arrayidx159 = getelementptr inbounds i32, ptr %214, i64 %idxprom158
  store i32 %213, ptr %arrayidx159, align 4, !tbaa !12
  %216 = load double, ptr %x, align 8, !tbaa !26
  %217 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %218 = load i32, ptr %where_pivot, align 4, !tbaa !12
  %idxprom160 = sext i32 %218 to i64
  %arrayidx161 = getelementptr inbounds double, ptr %217, i64 %idxprom160
  store double %216, ptr %arrayidx161, align 8, !tbaa !26
  %219 = load i32, ptr %j, align 4, !tbaa !12
  %220 = load ptr, ptr %Windex, align 8, !tbaa !4
  %221 = load i32, ptr %put, align 4, !tbaa !12
  %inc162 = add nsw i32 %221, 1
  store i32 %inc162, ptr %put, align 4, !tbaa !12
  %idxprom163 = sext i32 %221 to i64
  %arrayidx164 = getelementptr inbounds i32, ptr %220, i64 %idxprom163
  store i32 %219, ptr %arrayidx164, align 4, !tbaa !12
  %222 = load double, ptr %xabs, align 8, !tbaa !26
  %223 = load double, ptr %cmx, align 8, !tbaa !26
  %cmp165 = fcmp ogt double %222, %223
  br i1 %cmp165, label %if.then167, label %if.end168

if.then167:                                       ; preds = %if.then157
  %224 = load double, ptr %xabs, align 8, !tbaa !26
  store double %224, ptr %cmx, align 8, !tbaa !26
  br label %if.end168

if.end168:                                        ; preds = %if.then167, %if.then157
  br label %if.end183

if.else169:                                       ; preds = %if.then153
  %225 = load ptr, ptr %Wend, align 8, !tbaa !4
  %226 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom170 = sext i32 %226 to i64
  %arrayidx171 = getelementptr inbounds i32, ptr %225, i64 %idxprom170
  %227 = load i32, ptr %arrayidx171, align 4, !tbaa !12
  %dec = add nsw i32 %227, -1
  store i32 %dec, ptr %arrayidx171, align 4, !tbaa !12
  store i32 %dec, ptr %end, align 4, !tbaa !12
  %228 = load ptr, ptr %Windex, align 8, !tbaa !4
  %229 = load i32, ptr %end, align 4, !tbaa !12
  %idxprom172 = sext i32 %229 to i64
  %arrayidx173 = getelementptr inbounds i32, ptr %228, i64 %idxprom172
  %230 = load i32, ptr %arrayidx173, align 4, !tbaa !12
  %231 = load ptr, ptr %Windex, align 8, !tbaa !4
  %232 = load i32, ptr %where_pivot, align 4, !tbaa !12
  %idxprom174 = sext i32 %232 to i64
  %arrayidx175 = getelementptr inbounds i32, ptr %231, i64 %idxprom174
  store i32 %230, ptr %arrayidx175, align 4, !tbaa !12
  %233 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %234 = load i32, ptr %end, align 4, !tbaa !12
  %idxprom176 = sext i32 %234 to i64
  %arrayidx177 = getelementptr inbounds double, ptr %233, i64 %idxprom176
  %235 = load double, ptr %arrayidx177, align 8, !tbaa !26
  %236 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %237 = load i32, ptr %where_pivot, align 4, !tbaa !12
  %idxprom178 = sext i32 %237 to i64
  %arrayidx179 = getelementptr inbounds double, ptr %236, i64 %idxprom178
  store double %235, ptr %arrayidx179, align 8, !tbaa !26
  %238 = load i32, ptr %end, align 4, !tbaa !12
  %239 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %240 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom180 = sext i32 %240 to i64
  %arrayidx181 = getelementptr inbounds i32, ptr %239, i64 %idxprom180
  %241 = load i32, ptr %arrayidx181, align 4, !tbaa !12
  %sub182 = sub nsw i32 %238, %241
  store i32 %sub182, ptr %nz, align 4, !tbaa !12
  %242 = load i32, ptr %j, align 4, !tbaa !12
  %243 = load i32, ptr %nz, align 4, !tbaa !12
  %244 = load ptr, ptr %colcount_flink, align 8, !tbaa !4
  %245 = load ptr, ptr %colcount_blink, align 8, !tbaa !4
  %246 = load i32, ptr %m, align 4, !tbaa !12
  %247 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %min_colnz = getelementptr inbounds %struct.lu, ptr %247, i32 0, i32 69
  call void @lu_list_move(i32 noundef %242, i32 noundef %243, ptr noundef %244, ptr noundef %245, i32 noundef %246, ptr noundef %min_colnz)
  br label %if.end183

if.end183:                                        ; preds = %if.else169, %if.end168
  br label %if.end235

if.else184:                                       ; preds = %if.end150
  %248 = load ptr, ptr %Wend, align 8, !tbaa !4
  %249 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom185 = sext i32 %249 to i64
  %arrayidx186 = getelementptr inbounds i32, ptr %248, i64 %idxprom185
  %250 = load i32, ptr %arrayidx186, align 4, !tbaa !12
  %dec187 = add nsw i32 %250, -1
  store i32 %dec187, ptr %arrayidx186, align 4, !tbaa !12
  store i32 %dec187, ptr %end, align 4, !tbaa !12
  %251 = load ptr, ptr %Windex, align 8, !tbaa !4
  %252 = load i32, ptr %end, align 4, !tbaa !12
  %idxprom188 = sext i32 %252 to i64
  %arrayidx189 = getelementptr inbounds i32, ptr %251, i64 %idxprom188
  %253 = load i32, ptr %arrayidx189, align 4, !tbaa !12
  %254 = load ptr, ptr %Windex, align 8, !tbaa !4
  %255 = load i32, ptr %where_pivot, align 4, !tbaa !12
  %idxprom190 = sext i32 %255 to i64
  %arrayidx191 = getelementptr inbounds i32, ptr %254, i64 %idxprom190
  store i32 %253, ptr %arrayidx191, align 4, !tbaa !12
  %256 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %257 = load i32, ptr %end, align 4, !tbaa !12
  %idxprom192 = sext i32 %257 to i64
  %arrayidx193 = getelementptr inbounds double, ptr %256, i64 %idxprom192
  %258 = load double, ptr %arrayidx193, align 8, !tbaa !26
  %259 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %260 = load i32, ptr %where_pivot, align 4, !tbaa !12
  %idxprom194 = sext i32 %260 to i64
  %arrayidx195 = getelementptr inbounds double, ptr %259, i64 %idxprom194
  store double %258, ptr %arrayidx195, align 8, !tbaa !26
  %261 = load i32, ptr %where_other, align 4, !tbaa !12
  %262 = load i32, ptr %end, align 4, !tbaa !12
  %cmp196 = icmp eq i32 %261, %262
  br i1 %cmp196, label %if.then198, label %if.end199

if.then198:                                       ; preds = %if.else184
  %263 = load i32, ptr %where_pivot, align 4, !tbaa !12
  store i32 %263, ptr %where_other, align 4, !tbaa !12
  br label %if.end199

if.end199:                                        ; preds = %if.then198, %if.else184
  %264 = load double, ptr %xrj, align 8, !tbaa !26
  %265 = load double, ptr %other_value, align 8, !tbaa !26
  %266 = load double, ptr %pivot, align 8, !tbaa !26
  %div200 = fdiv double %265, %266
  %267 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %268 = load i32, ptr %where_other, align 4, !tbaa !12
  %idxprom202 = sext i32 %268 to i64
  %arrayidx203 = getelementptr inbounds double, ptr %267, i64 %idxprom202
  %269 = load double, ptr %arrayidx203, align 8, !tbaa !26
  %neg = fneg double %264
  %270 = call double @llvm.fmuladd.f64(double %neg, double %div200, double %269)
  store double %270, ptr %arrayidx203, align 8, !tbaa !26
  %271 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %272 = load i32, ptr %where_other, align 4, !tbaa !12
  %idxprom204 = sext i32 %272 to i64
  %arrayidx205 = getelementptr inbounds double, ptr %271, i64 %idxprom204
  %273 = load double, ptr %arrayidx205, align 8, !tbaa !26
  %274 = call double @llvm.fabs.f64(double %273)
  store double %274, ptr %x, align 8, !tbaa !26
  %275 = load double, ptr %x, align 8, !tbaa !26
  %276 = load double, ptr %droptol, align 8, !tbaa !26
  %cmp206 = fcmp ole double %275, %276
  br i1 %cmp206, label %if.then208, label %if.else223

if.then208:                                       ; preds = %if.end199
  %277 = load ptr, ptr %Wend, align 8, !tbaa !4
  %278 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom209 = sext i32 %278 to i64
  %arrayidx210 = getelementptr inbounds i32, ptr %277, i64 %idxprom209
  %279 = load i32, ptr %arrayidx210, align 4, !tbaa !12
  %dec211 = add nsw i32 %279, -1
  store i32 %dec211, ptr %arrayidx210, align 4, !tbaa !12
  store i32 %dec211, ptr %end, align 4, !tbaa !12
  %280 = load ptr, ptr %Windex, align 8, !tbaa !4
  %281 = load i32, ptr %end, align 4, !tbaa !12
  %idxprom212 = sext i32 %281 to i64
  %arrayidx213 = getelementptr inbounds i32, ptr %280, i64 %idxprom212
  %282 = load i32, ptr %arrayidx213, align 4, !tbaa !12
  %283 = load ptr, ptr %Windex, align 8, !tbaa !4
  %284 = load i32, ptr %where_other, align 4, !tbaa !12
  %idxprom214 = sext i32 %284 to i64
  %arrayidx215 = getelementptr inbounds i32, ptr %283, i64 %idxprom214
  store i32 %282, ptr %arrayidx215, align 4, !tbaa !12
  %285 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %286 = load i32, ptr %end, align 4, !tbaa !12
  %idxprom216 = sext i32 %286 to i64
  %arrayidx217 = getelementptr inbounds double, ptr %285, i64 %idxprom216
  %287 = load double, ptr %arrayidx217, align 8, !tbaa !26
  %288 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %289 = load i32, ptr %where_other, align 4, !tbaa !12
  %idxprom218 = sext i32 %289 to i64
  %arrayidx219 = getelementptr inbounds double, ptr %288, i64 %idxprom218
  store double %287, ptr %arrayidx219, align 8, !tbaa !26
  %290 = load ptr, ptr %marked, align 8, !tbaa !4
  %291 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom220 = sext i32 %291 to i64
  %arrayidx221 = getelementptr inbounds i32, ptr %290, i64 %idxprom220
  store i32 1, ptr %arrayidx221, align 4, !tbaa !12
  %292 = load i32, ptr %ncancelled, align 4, !tbaa !12
  %inc222 = add nsw i32 %292, 1
  store i32 %inc222, ptr %ncancelled, align 4, !tbaa !12
  br label %if.end228

if.else223:                                       ; preds = %if.end199
  %293 = load double, ptr %x, align 8, !tbaa !26
  %294 = load double, ptr %cmx, align 8, !tbaa !26
  %cmp224 = fcmp ogt double %293, %294
  br i1 %cmp224, label %if.then226, label %if.end227

if.then226:                                       ; preds = %if.else223
  %295 = load double, ptr %x, align 8, !tbaa !26
  store double %295, ptr %cmx, align 8, !tbaa !26
  br label %if.end227

if.end227:                                        ; preds = %if.then226, %if.else223
  br label %if.end228

if.end228:                                        ; preds = %if.end227, %if.then208
  %296 = load ptr, ptr %Wend, align 8, !tbaa !4
  %297 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom229 = sext i32 %297 to i64
  %arrayidx230 = getelementptr inbounds i32, ptr %296, i64 %idxprom229
  %298 = load i32, ptr %arrayidx230, align 4, !tbaa !12
  %299 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %300 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom231 = sext i32 %300 to i64
  %arrayidx232 = getelementptr inbounds i32, ptr %299, i64 %idxprom231
  %301 = load i32, ptr %arrayidx232, align 4, !tbaa !12
  %sub233 = sub nsw i32 %298, %301
  store i32 %sub233, ptr %nz, align 4, !tbaa !12
  %302 = load i32, ptr %j, align 4, !tbaa !12
  %303 = load i32, ptr %nz, align 4, !tbaa !12
  %304 = load ptr, ptr %colcount_flink, align 8, !tbaa !4
  %305 = load ptr, ptr %colcount_blink, align 8, !tbaa !4
  %306 = load i32, ptr %m, align 4, !tbaa !12
  %307 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %min_colnz234 = getelementptr inbounds %struct.lu, ptr %307, i32 0, i32 69
  call void @lu_list_move(i32 noundef %302, i32 noundef %303, ptr noundef %304, ptr noundef %305, i32 noundef %306, ptr noundef %min_colnz234)
  br label %if.end235

if.end235:                                        ; preds = %if.end228, %if.end183
  %308 = load double, ptr %cmx, align 8, !tbaa !26
  %309 = load ptr, ptr %colmax, align 8, !tbaa !4
  %310 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom236 = sext i32 %310 to i64
  %arrayidx237 = getelementptr inbounds double, ptr %309, i64 %idxprom236
  store double %308, ptr %arrayidx237, align 8, !tbaa !26
  br label %for.inc238

for.inc238:                                       ; preds = %if.end235
  %311 = load i32, ptr %rpos, align 4, !tbaa !12
  %inc239 = add nsw i32 %311, 1
  store i32 %inc239, ptr %rpos, align 4, !tbaa !12
  br label %for.cond100

for.end240:                                       ; preds = %for.cond100
  %312 = load i32, ptr %put, align 4, !tbaa !12
  store i32 %312, ptr %rend, align 4, !tbaa !12
  %313 = load i32, ptr %Uput, align 4, !tbaa !12
  %314 = load ptr, ptr %Ubegin, align 8, !tbaa !4
  %315 = load i32, ptr %rank, align 4, !tbaa !12
  %add241 = add nsw i32 %315, 1
  %idxprom242 = sext i32 %add241 to i64
  %arrayidx243 = getelementptr inbounds i32, ptr %314, i64 %idxprom242
  store i32 %313, ptr %arrayidx243, align 4, !tbaa !12
  %316 = load i32, ptr %ncancelled, align 4, !tbaa !12
  %tobool = icmp ne i32 %316, 0
  br i1 %tobool, label %if.then244, label %if.else276

if.then244:                                       ; preds = %for.end240
  %317 = load ptr, ptr %marked, align 8, !tbaa !4
  %318 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom245 = sext i32 %318 to i64
  %arrayidx246 = getelementptr inbounds i32, ptr %317, i64 %idxprom245
  store i32 1, ptr %arrayidx246, align 4, !tbaa !12
  %319 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %320 = load i32, ptr %m, align 4, !tbaa !12
  %321 = load i32, ptr %other_row, align 4, !tbaa !12
  %add247 = add nsw i32 %320, %321
  %idxprom248 = sext i32 %add247 to i64
  %arrayidx249 = getelementptr inbounds i32, ptr %319, i64 %idxprom248
  %322 = load i32, ptr %arrayidx249, align 4, !tbaa !12
  store i32 %322, ptr %put, align 4, !tbaa !12
  %323 = load ptr, ptr %Wend, align 8, !tbaa !4
  %324 = load i32, ptr %m, align 4, !tbaa !12
  %325 = load i32, ptr %other_row, align 4, !tbaa !12
  %add250 = add nsw i32 %324, %325
  %idxprom251 = sext i32 %add250 to i64
  %arrayidx252 = getelementptr inbounds i32, ptr %323, i64 %idxprom251
  %326 = load i32, ptr %arrayidx252, align 4, !tbaa !12
  store i32 %326, ptr %end, align 4, !tbaa !12
  %327 = load i32, ptr %put, align 4, !tbaa !12
  store i32 %327, ptr %pos, align 4, !tbaa !12
  br label %for.cond253

for.cond253:                                      ; preds = %for.inc270, %if.then244
  %328 = load i32, ptr %pos, align 4, !tbaa !12
  %329 = load i32, ptr %end, align 4, !tbaa !12
  %cmp254 = icmp slt i32 %328, %329
  br i1 %cmp254, label %for.body256, label %for.end272

for.body256:                                      ; preds = %for.cond253
  %330 = load ptr, ptr %Windex, align 8, !tbaa !4
  %331 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom257 = sext i32 %331 to i64
  %arrayidx258 = getelementptr inbounds i32, ptr %330, i64 %idxprom257
  %332 = load i32, ptr %arrayidx258, align 4, !tbaa !12
  store i32 %332, ptr %j, align 4, !tbaa !12
  %333 = load ptr, ptr %marked, align 8, !tbaa !4
  %334 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom259 = sext i32 %334 to i64
  %arrayidx260 = getelementptr inbounds i32, ptr %333, i64 %idxprom259
  %335 = load i32, ptr %arrayidx260, align 4, !tbaa !12
  %tobool261 = icmp ne i32 %335, 0
  br i1 %tobool261, label %if.then262, label %if.else265

if.then262:                                       ; preds = %for.body256
  %336 = load ptr, ptr %marked, align 8, !tbaa !4
  %337 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom263 = sext i32 %337 to i64
  %arrayidx264 = getelementptr inbounds i32, ptr %336, i64 %idxprom263
  store i32 0, ptr %arrayidx264, align 4, !tbaa !12
  br label %if.end269

if.else265:                                       ; preds = %for.body256
  %338 = load i32, ptr %j, align 4, !tbaa !12
  %339 = load ptr, ptr %Windex, align 8, !tbaa !4
  %340 = load i32, ptr %put, align 4, !tbaa !12
  %inc266 = add nsw i32 %340, 1
  store i32 %inc266, ptr %put, align 4, !tbaa !12
  %idxprom267 = sext i32 %340 to i64
  %arrayidx268 = getelementptr inbounds i32, ptr %339, i64 %idxprom267
  store i32 %338, ptr %arrayidx268, align 4, !tbaa !12
  br label %if.end269

if.end269:                                        ; preds = %if.else265, %if.then262
  br label %for.inc270

for.inc270:                                       ; preds = %if.end269
  %341 = load i32, ptr %pos, align 4, !tbaa !12
  %inc271 = add nsw i32 %341, 1
  store i32 %inc271, ptr %pos, align 4, !tbaa !12
  br label %for.cond253

for.end272:                                       ; preds = %for.cond253
  %342 = load i32, ptr %put, align 4, !tbaa !12
  %343 = load ptr, ptr %Wend, align 8, !tbaa !4
  %344 = load i32, ptr %m, align 4, !tbaa !12
  %345 = load i32, ptr %other_row, align 4, !tbaa !12
  %add273 = add nsw i32 %344, %345
  %idxprom274 = sext i32 %add273 to i64
  %arrayidx275 = getelementptr inbounds i32, ptr %343, i64 %idxprom274
  store i32 %342, ptr %arrayidx275, align 4, !tbaa !12
  br label %if.end297

if.else276:                                       ; preds = %for.end240
  %346 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %347 = load i32, ptr %m, align 4, !tbaa !12
  %348 = load i32, ptr %other_row, align 4, !tbaa !12
  %add277 = add nsw i32 %347, %348
  %idxprom278 = sext i32 %add277 to i64
  %arrayidx279 = getelementptr inbounds i32, ptr %346, i64 %idxprom278
  %349 = load i32, ptr %arrayidx279, align 4, !tbaa !12
  store i32 %349, ptr %where, align 4, !tbaa !12
  br label %for.cond280

for.cond280:                                      ; preds = %for.inc286, %if.else276
  %350 = load ptr, ptr %Windex, align 8, !tbaa !4
  %351 = load i32, ptr %where, align 4, !tbaa !12
  %idxprom281 = sext i32 %351 to i64
  %arrayidx282 = getelementptr inbounds i32, ptr %350, i64 %idxprom281
  %352 = load i32, ptr %arrayidx282, align 4, !tbaa !12
  %353 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %cmp283 = icmp ne i32 %352, %353
  br i1 %cmp283, label %for.body285, label %for.end288

for.body285:                                      ; preds = %for.cond280
  br label %for.inc286

for.inc286:                                       ; preds = %for.body285
  %354 = load i32, ptr %where, align 4, !tbaa !12
  %inc287 = add nsw i32 %354, 1
  store i32 %inc287, ptr %where, align 4, !tbaa !12
  br label %for.cond280

for.end288:                                       ; preds = %for.cond280
  %355 = load ptr, ptr %Wend, align 8, !tbaa !4
  %356 = load i32, ptr %m, align 4, !tbaa !12
  %357 = load i32, ptr %other_row, align 4, !tbaa !12
  %add289 = add nsw i32 %356, %357
  %idxprom290 = sext i32 %add289 to i64
  %arrayidx291 = getelementptr inbounds i32, ptr %355, i64 %idxprom290
  %358 = load i32, ptr %arrayidx291, align 4, !tbaa !12
  %dec292 = add nsw i32 %358, -1
  store i32 %dec292, ptr %arrayidx291, align 4, !tbaa !12
  store i32 %dec292, ptr %end, align 4, !tbaa !12
  %359 = load ptr, ptr %Windex, align 8, !tbaa !4
  %360 = load i32, ptr %end, align 4, !tbaa !12
  %idxprom293 = sext i32 %360 to i64
  %arrayidx294 = getelementptr inbounds i32, ptr %359, i64 %idxprom293
  %361 = load i32, ptr %arrayidx294, align 4, !tbaa !12
  %362 = load ptr, ptr %Windex, align 8, !tbaa !4
  %363 = load i32, ptr %where, align 4, !tbaa !12
  %idxprom295 = sext i32 %363 to i64
  %arrayidx296 = getelementptr inbounds i32, ptr %362, i64 %idxprom295
  store i32 %361, ptr %arrayidx296, align 4, !tbaa !12
  br label %if.end297

if.end297:                                        ; preds = %for.end288, %for.end272
  %364 = load i32, ptr %rend, align 4, !tbaa !12
  %365 = load i32, ptr %rbeg, align 4, !tbaa !12
  %add298 = add nsw i32 %365, 1
  %sub299 = sub nsw i32 %364, %add298
  store i32 %sub299, ptr %nfill, align 4, !tbaa !12
  %366 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %367 = load ptr, ptr %Wflink, align 8, !tbaa !4
  %368 = load i32, ptr %m, align 4, !tbaa !12
  %369 = load i32, ptr %other_row, align 4, !tbaa !12
  %add300 = add nsw i32 %368, %369
  %idxprom301 = sext i32 %add300 to i64
  %arrayidx302 = getelementptr inbounds i32, ptr %367, i64 %idxprom301
  %370 = load i32, ptr %arrayidx302, align 4, !tbaa !12
  %idxprom303 = sext i32 %370 to i64
  %arrayidx304 = getelementptr inbounds i32, ptr %366, i64 %idxprom303
  %371 = load i32, ptr %arrayidx304, align 4, !tbaa !12
  %372 = load ptr, ptr %Wend, align 8, !tbaa !4
  %373 = load i32, ptr %m, align 4, !tbaa !12
  %374 = load i32, ptr %other_row, align 4, !tbaa !12
  %add305 = add nsw i32 %373, %374
  %idxprom306 = sext i32 %add305 to i64
  %arrayidx307 = getelementptr inbounds i32, ptr %372, i64 %idxprom306
  %375 = load i32, ptr %arrayidx307, align 4, !tbaa !12
  %sub308 = sub nsw i32 %371, %375
  store i32 %sub308, ptr %room, align 4, !tbaa !12
  %376 = load i32, ptr %nfill, align 4, !tbaa !12
  %377 = load i32, ptr %room, align 4, !tbaa !12
  %cmp309 = icmp sgt i32 %376, %377
  br i1 %cmp309, label %if.then311, label %if.end329

if.then311:                                       ; preds = %if.end297
  %378 = load ptr, ptr %Wend, align 8, !tbaa !4
  %379 = load i32, ptr %m, align 4, !tbaa !12
  %380 = load i32, ptr %other_row, align 4, !tbaa !12
  %add312 = add nsw i32 %379, %380
  %idxprom313 = sext i32 %add312 to i64
  %arrayidx314 = getelementptr inbounds i32, ptr %378, i64 %idxprom313
  %381 = load i32, ptr %arrayidx314, align 4, !tbaa !12
  %382 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %383 = load i32, ptr %m, align 4, !tbaa !12
  %384 = load i32, ptr %other_row, align 4, !tbaa !12
  %add315 = add nsw i32 %383, %384
  %idxprom316 = sext i32 %add315 to i64
  %arrayidx317 = getelementptr inbounds i32, ptr %382, i64 %idxprom316
  %385 = load i32, ptr %arrayidx317, align 4, !tbaa !12
  %sub318 = sub nsw i32 %381, %385
  store i32 %sub318, ptr %nz, align 4, !tbaa !12
  %386 = load i32, ptr %nfill, align 4, !tbaa !12
  %conv319 = sitofp i32 %386 to double
  %387 = load double, ptr %stretch, align 8, !tbaa !26
  %388 = load i32, ptr %nz, align 4, !tbaa !12
  %389 = load i32, ptr %nfill, align 4, !tbaa !12
  %add320 = add nsw i32 %388, %389
  %conv321 = sitofp i32 %add320 to double
  %390 = call double @llvm.fmuladd.f64(double %387, double %conv321, double %conv319)
  %391 = load i32, ptr %pad, align 4, !tbaa !12
  %conv323 = sitofp i32 %391 to double
  %add324 = fadd double %390, %conv323
  %conv325 = fptosi double %add324 to i32
  store i32 %conv325, ptr %space, align 4, !tbaa !12
  %392 = load i32, ptr %m, align 4, !tbaa !12
  %393 = load i32, ptr %other_row, align 4, !tbaa !12
  %add326 = add nsw i32 %392, %393
  %394 = load i32, ptr %m, align 4, !tbaa !12
  %mul327 = mul nsw i32 2, %394
  %395 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %396 = load ptr, ptr %Wend, align 8, !tbaa !4
  %397 = load ptr, ptr %Wflink, align 8, !tbaa !4
  %398 = load ptr, ptr %Wblink, align 8, !tbaa !4
  %399 = load ptr, ptr %Windex, align 8, !tbaa !4
  %400 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %401 = load i32, ptr %space, align 4, !tbaa !12
  call void @lu_file_reappend(i32 noundef %add326, i32 noundef %mul327, ptr noundef %395, ptr noundef %396, ptr noundef %397, ptr noundef %398, ptr noundef %399, ptr noundef %400, i32 noundef %401)
  %402 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %nexpand = getelementptr inbounds %struct.lu, ptr %402, i32 0, i32 54
  %403 = load i32, ptr %nexpand, align 4, !tbaa !46
  %inc328 = add nsw i32 %403, 1
  store i32 %inc328, ptr %nexpand, align 4, !tbaa !46
  br label %if.end329

if.end329:                                        ; preds = %if.then311, %if.end297
  %404 = load ptr, ptr %Wend, align 8, !tbaa !4
  %405 = load i32, ptr %m, align 4, !tbaa !12
  %406 = load i32, ptr %other_row, align 4, !tbaa !12
  %add330 = add nsw i32 %405, %406
  %idxprom331 = sext i32 %add330 to i64
  %arrayidx332 = getelementptr inbounds i32, ptr %404, i64 %idxprom331
  %407 = load i32, ptr %arrayidx332, align 4, !tbaa !12
  store i32 %407, ptr %put, align 4, !tbaa !12
  %408 = load i32, ptr %rbeg, align 4, !tbaa !12
  %add333 = add nsw i32 %408, 1
  store i32 %add333, ptr %pos, align 4, !tbaa !12
  br label %for.cond334

for.cond334:                                      ; preds = %for.inc343, %if.end329
  %409 = load i32, ptr %pos, align 4, !tbaa !12
  %410 = load i32, ptr %rend, align 4, !tbaa !12
  %cmp335 = icmp slt i32 %409, %410
  br i1 %cmp335, label %for.body337, label %for.end345

for.body337:                                      ; preds = %for.cond334
  %411 = load ptr, ptr %Windex, align 8, !tbaa !4
  %412 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom338 = sext i32 %412 to i64
  %arrayidx339 = getelementptr inbounds i32, ptr %411, i64 %idxprom338
  %413 = load i32, ptr %arrayidx339, align 4, !tbaa !12
  %414 = load ptr, ptr %Windex, align 8, !tbaa !4
  %415 = load i32, ptr %put, align 4, !tbaa !12
  %inc340 = add nsw i32 %415, 1
  store i32 %inc340, ptr %put, align 4, !tbaa !12
  %idxprom341 = sext i32 %415 to i64
  %arrayidx342 = getelementptr inbounds i32, ptr %414, i64 %idxprom341
  store i32 %413, ptr %arrayidx342, align 4, !tbaa !12
  br label %for.inc343

for.inc343:                                       ; preds = %for.body337
  %416 = load i32, ptr %pos, align 4, !tbaa !12
  %inc344 = add nsw i32 %416, 1
  store i32 %inc344, ptr %pos, align 4, !tbaa !12
  br label %for.cond334

for.end345:                                       ; preds = %for.cond334
  %417 = load i32, ptr %put, align 4, !tbaa !12
  %418 = load ptr, ptr %Wend, align 8, !tbaa !4
  %419 = load i32, ptr %m, align 4, !tbaa !12
  %420 = load i32, ptr %other_row, align 4, !tbaa !12
  %add346 = add nsw i32 %419, %420
  %idxprom347 = sext i32 %add346 to i64
  %arrayidx348 = getelementptr inbounds i32, ptr %418, i64 %idxprom347
  store i32 %417, ptr %arrayidx348, align 4, !tbaa !12
  %421 = load ptr, ptr %Wend, align 8, !tbaa !4
  %422 = load i32, ptr %m, align 4, !tbaa !12
  %423 = load i32, ptr %other_row, align 4, !tbaa !12
  %add349 = add nsw i32 %422, %423
  %idxprom350 = sext i32 %add349 to i64
  %arrayidx351 = getelementptr inbounds i32, ptr %421, i64 %idxprom350
  %424 = load i32, ptr %arrayidx351, align 4, !tbaa !12
  %425 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %426 = load i32, ptr %m, align 4, !tbaa !12
  %427 = load i32, ptr %other_row, align 4, !tbaa !12
  %add352 = add nsw i32 %426, %427
  %idxprom353 = sext i32 %add352 to i64
  %arrayidx354 = getelementptr inbounds i32, ptr %425, i64 %idxprom353
  %428 = load i32, ptr %arrayidx354, align 4, !tbaa !12
  %sub355 = sub nsw i32 %424, %428
  store i32 %sub355, ptr %nz, align 4, !tbaa !12
  %429 = load i32, ptr %other_row, align 4, !tbaa !12
  %430 = load i32, ptr %nz, align 4, !tbaa !12
  %431 = load ptr, ptr %rowcount_flink, align 8, !tbaa !4
  %432 = load ptr, ptr %rowcount_blink, align 8, !tbaa !4
  %433 = load i32, ptr %m, align 4, !tbaa !12
  %434 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %min_rownz = getelementptr inbounds %struct.lu, ptr %434, i32 0, i32 70
  call void @lu_list_move(i32 noundef %429, i32 noundef %430, ptr noundef %431, ptr noundef %432, i32 noundef %433, ptr noundef %min_rownz)
  %435 = load ptr, ptr %Lbegin_p, align 8, !tbaa !4
  %436 = load i32, ptr %rank, align 4, !tbaa !12
  %idxprom356 = sext i32 %436 to i64
  %arrayidx357 = getelementptr inbounds i32, ptr %435, i64 %idxprom356
  %437 = load i32, ptr %arrayidx357, align 4, !tbaa !12
  store i32 %437, ptr %put, align 4, !tbaa !12
  %438 = load double, ptr %other_value, align 8, !tbaa !26
  %439 = load double, ptr %pivot, align 8, !tbaa !26
  %div358 = fdiv double %438, %439
  store double %div358, ptr %x, align 8, !tbaa !26
  %440 = load double, ptr %x, align 8, !tbaa !26
  %441 = call double @llvm.fabs.f64(double %440)
  %442 = load double, ptr %droptol, align 8, !tbaa !26
  %cmp359 = fcmp ogt double %441, %442
  br i1 %cmp359, label %if.then361, label %if.end367

if.then361:                                       ; preds = %for.end345
  %443 = load i32, ptr %other_row, align 4, !tbaa !12
  %444 = load ptr, ptr %Lindex, align 8, !tbaa !4
  %445 = load i32, ptr %put, align 4, !tbaa !12
  %idxprom362 = sext i32 %445 to i64
  %arrayidx363 = getelementptr inbounds i32, ptr %444, i64 %idxprom362
  store i32 %443, ptr %arrayidx363, align 4, !tbaa !12
  %446 = load double, ptr %x, align 8, !tbaa !26
  %447 = load ptr, ptr %Lvalue, align 8, !tbaa !4
  %448 = load i32, ptr %put, align 4, !tbaa !12
  %inc364 = add nsw i32 %448, 1
  store i32 %inc364, ptr %put, align 4, !tbaa !12
  %idxprom365 = sext i32 %448 to i64
  %arrayidx366 = getelementptr inbounds double, ptr %447, i64 %idxprom365
  store double %446, ptr %arrayidx366, align 8, !tbaa !26
  br label %if.end367

if.end367:                                        ; preds = %if.then361, %for.end345
  %449 = load ptr, ptr %Lindex, align 8, !tbaa !4
  %450 = load i32, ptr %put, align 4, !tbaa !12
  %inc368 = add nsw i32 %450, 1
  store i32 %inc368, ptr %put, align 4, !tbaa !12
  %idxprom369 = sext i32 %450 to i64
  %arrayidx370 = getelementptr inbounds i32, ptr %449, i64 %idxprom369
  store i32 -1, ptr %arrayidx370, align 4, !tbaa !12
  %451 = load i32, ptr %put, align 4, !tbaa !12
  %452 = load ptr, ptr %Lbegin_p, align 8, !tbaa !4
  %453 = load i32, ptr %rank, align 4, !tbaa !12
  %add371 = add nsw i32 %453, 1
  %idxprom372 = sext i32 %add371 to i64
  %arrayidx373 = getelementptr inbounds i32, ptr %452, i64 %idxprom372
  store i32 %451, ptr %arrayidx373, align 4, !tbaa !12
  %454 = load double, ptr %pivot, align 8, !tbaa !26
  %455 = load ptr, ptr %colmax, align 8, !tbaa !4
  %456 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom374 = sext i32 %456 to i64
  %arrayidx375 = getelementptr inbounds double, ptr %455, i64 %idxprom374
  store double %454, ptr %arrayidx375, align 8, !tbaa !26
  %457 = load i32, ptr %cbeg, align 4, !tbaa !12
  %458 = load ptr, ptr %Wend, align 8, !tbaa !4
  %459 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom376 = sext i32 %459 to i64
  %arrayidx377 = getelementptr inbounds i32, ptr %458, i64 %idxprom376
  store i32 %457, ptr %arrayidx377, align 4, !tbaa !12
  %460 = load i32, ptr %rbeg, align 4, !tbaa !12
  %461 = load ptr, ptr %Wend, align 8, !tbaa !4
  %462 = load i32, ptr %m, align 4, !tbaa !12
  %463 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %add378 = add nsw i32 %462, %463
  %idxprom379 = sext i32 %add378 to i64
  %arrayidx380 = getelementptr inbounds i32, ptr %461, i64 %idxprom379
  store i32 %460, ptr %arrayidx380, align 4, !tbaa !12
  %464 = load ptr, ptr %colcount_flink, align 8, !tbaa !4
  %465 = load ptr, ptr %colcount_blink, align 8, !tbaa !4
  %466 = load i32, ptr %pivot_col, align 4, !tbaa !12
  call void @lu_list_remove(ptr noundef %464, ptr noundef %465, i32 noundef %466)
  %467 = load ptr, ptr %rowcount_flink, align 8, !tbaa !4
  %468 = load ptr, ptr %rowcount_blink, align 8, !tbaa !4
  %469 = load i32, ptr %pivot_row, align 4, !tbaa !12
  call void @lu_list_remove(ptr noundef %467, ptr noundef %468, i32 noundef %469)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end367, %if.then93
  call void @llvm.lifetime.end.p0(i64 8, ptr %xabs) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmx) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %xrj) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %other_value) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pivot) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ncancelled) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %end) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %space) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %room) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %grow) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %other_row) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %where_other) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %where_pivot) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %where) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nfill) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nz) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %Uput) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %put) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rpos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rnz1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnz1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rend) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rbeg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cend) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cbeg) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %marked) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wvalue) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Windex) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Uvalue) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Uindex) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Lvalue) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Lindex) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wblink) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wflink) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wend) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wbegin) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ubegin) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Lbegin_p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %colmax) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rowcount_blink) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rowcount_flink) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %colcount_blink) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %colcount_flink) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pivot_row) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pivot_col) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %stretch) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pad) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %droptol) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rank) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #5
  %470 = load i32, ptr %retval, align 4
  ret i32 %470
}

; Function Attrs: nounwind uwtable
define internal i32 @lu_pivot_small(ptr noundef %this) #0 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca ptr, align 8
  %m = alloca i32, align 4
  %rank = alloca i32, align 4
  %droptol = alloca double, align 8
  %pad = alloca i32, align 4
  %stretch = alloca double, align 8
  %pivot_col = alloca i32, align 4
  %pivot_row = alloca i32, align 4
  %colcount_flink = alloca ptr, align 8
  %colcount_blink = alloca ptr, align 8
  %rowcount_flink = alloca ptr, align 8
  %rowcount_blink = alloca ptr, align 8
  %colmax = alloca ptr, align 8
  %Lbegin_p = alloca ptr, align 8
  %Ubegin = alloca ptr, align 8
  %Wbegin = alloca ptr, align 8
  %Wend = alloca ptr, align 8
  %Wflink = alloca ptr, align 8
  %Wblink = alloca ptr, align 8
  %Lindex = alloca ptr, align 8
  %Lvalue = alloca ptr, align 8
  %Uindex = alloca ptr, align 8
  %Uvalue = alloca ptr, align 8
  %Windex = alloca ptr, align 8
  %Wvalue = alloca ptr, align 8
  %marked = alloca ptr, align 8
  %work = alloca ptr, align 8
  %cancelled = alloca ptr, align 8
  %cbeg = alloca i32, align 4
  %cend = alloca i32, align 4
  %rbeg = alloca i32, align 4
  %rend = alloca i32, align 4
  %cnz1 = alloca i32, align 4
  %rnz1 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pos = alloca i32, align 4
  %pos1 = alloca i32, align 4
  %rpos = alloca i32, align 4
  %put = alloca i32, align 4
  %Uput = alloca i32, align 4
  %where = alloca i32, align 4
  %nz = alloca i32, align 4
  %wi = alloca ptr, align 8
  %grow = alloca i32, align 4
  %room = alloca i32, align 4
  %found = alloca i32, align 4
  %position = alloca i32, align 4
  %col_number = alloca i32, align 4
  %pivot = alloca double, align 8
  %a = alloca double, align 8
  %x = alloca double, align 8
  %cmx = alloca double, align 8
  %xrj = alloca double, align 8
  %wx = alloca ptr, align 8
  %mask = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %m1 = getelementptr inbounds %struct.lu, ptr %0, i32 0, i32 13
  %1 = load i32, ptr %m1, align 4, !tbaa !8
  store i32 %1, ptr %m, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %rank) #5
  %2 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %rank2 = getelementptr inbounds %struct.lu, ptr %2, i32 0, i32 50
  %3 = load i32, ptr %rank2, align 4, !tbaa !13
  store i32 %3, ptr %rank, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %droptol) #5
  %4 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %droptol3 = getelementptr inbounds %struct.lu, ptr %4, i32 0, i32 3
  %5 = load double, ptr %droptol3, align 8, !tbaa !29
  store double %5, ptr %droptol, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %pad) #5
  %6 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %pad4 = getelementptr inbounds %struct.lu, ptr %6, i32 0, i32 8
  %7 = load i32, ptr %pad4, align 8, !tbaa !39
  store i32 %7, ptr %pad, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %stretch) #5
  %8 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %stretch5 = getelementptr inbounds %struct.lu, ptr %8, i32 0, i32 9
  %9 = load double, ptr %stretch5, align 8, !tbaa !40
  store double %9, ptr %stretch, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %pivot_col) #5
  %10 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %pivot_col6 = getelementptr inbounds %struct.lu, ptr %10, i32 0, i32 63
  %11 = load i32, ptr %pivot_col6, align 8, !tbaa !16
  store i32 %11, ptr %pivot_col, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %pivot_row) #5
  %12 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %pivot_row7 = getelementptr inbounds %struct.lu, ptr %12, i32 0, i32 62
  %13 = load i32, ptr %pivot_row7, align 4, !tbaa !17
  store i32 %13, ptr %pivot_row, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %colcount_flink) #5
  %14 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %colcount_flink8 = getelementptr inbounds %struct.lu, ptr %14, i32 0, i32 77
  %15 = load ptr, ptr %colcount_flink8, align 8, !tbaa !30
  store ptr %15, ptr %colcount_flink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %colcount_blink) #5
  %16 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %colcount_blink9 = getelementptr inbounds %struct.lu, ptr %16, i32 0, i32 79
  %17 = load ptr, ptr %colcount_blink9, align 8, !tbaa !31
  store ptr %17, ptr %colcount_blink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rowcount_flink) #5
  %18 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %rowcount_flink10 = getelementptr inbounds %struct.lu, ptr %18, i32 0, i32 81
  %19 = load ptr, ptr %rowcount_flink10, align 8, !tbaa !32
  store ptr %19, ptr %rowcount_flink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rowcount_blink) #5
  %20 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %rowcount_blink11 = getelementptr inbounds %struct.lu, ptr %20, i32 0, i32 84
  %21 = load ptr, ptr %rowcount_blink11, align 8, !tbaa !33
  store ptr %21, ptr %rowcount_blink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %colmax) #5
  %22 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %col_pivot = getelementptr inbounds %struct.lu, ptr %22, i32 0, i32 104
  %23 = load ptr, ptr %col_pivot, align 8, !tbaa !18
  store ptr %23, ptr %colmax, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Lbegin_p) #5
  %24 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Lbegin_p12 = getelementptr inbounds %struct.lu, ptr %24, i32 0, i32 98
  %25 = load ptr, ptr %Lbegin_p12, align 8, !tbaa !19
  store ptr %25, ptr %Lbegin_p, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ubegin) #5
  %26 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Ubegin13 = getelementptr inbounds %struct.lu, ptr %26, i32 0, i32 99
  %27 = load ptr, ptr %Ubegin13, align 8, !tbaa !20
  store ptr %27, ptr %Ubegin, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wbegin) #5
  %28 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wbegin14 = getelementptr inbounds %struct.lu, ptr %28, i32 0, i32 86
  %29 = load ptr, ptr %Wbegin14, align 8, !tbaa !21
  store ptr %29, ptr %Wbegin, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wend) #5
  %30 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wend15 = getelementptr inbounds %struct.lu, ptr %30, i32 0, i32 88
  %31 = load ptr, ptr %Wend15, align 8, !tbaa !22
  store ptr %31, ptr %Wend, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wflink) #5
  %32 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wflink16 = getelementptr inbounds %struct.lu, ptr %32, i32 0, i32 90
  %33 = load ptr, ptr %Wflink16, align 8, !tbaa !41
  store ptr %33, ptr %Wflink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wblink) #5
  %34 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wblink17 = getelementptr inbounds %struct.lu, ptr %34, i32 0, i32 92
  %35 = load ptr, ptr %Wblink17, align 8, !tbaa !42
  store ptr %35, ptr %Wblink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Lindex) #5
  %36 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Lindex18 = getelementptr inbounds %struct.lu, ptr %36, i32 0, i32 71
  %37 = load ptr, ptr %Lindex18, align 8, !tbaa !34
  store ptr %37, ptr %Lindex, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Lvalue) #5
  %38 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Lvalue19 = getelementptr inbounds %struct.lu, ptr %38, i32 0, i32 74
  %39 = load ptr, ptr %Lvalue19, align 8, !tbaa !35
  store ptr %39, ptr %Lvalue, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Uindex) #5
  %40 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Uindex20 = getelementptr inbounds %struct.lu, ptr %40, i32 0, i32 72
  %41 = load ptr, ptr %Uindex20, align 8, !tbaa !23
  store ptr %41, ptr %Uindex, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Uvalue) #5
  %42 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Uvalue21 = getelementptr inbounds %struct.lu, ptr %42, i32 0, i32 75
  %43 = load ptr, ptr %Uvalue21, align 8, !tbaa !38
  store ptr %43, ptr %Uvalue, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Windex) #5
  %44 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Windex22 = getelementptr inbounds %struct.lu, ptr %44, i32 0, i32 73
  %45 = load ptr, ptr %Windex22, align 8, !tbaa !36
  store ptr %45, ptr %Windex, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wvalue) #5
  %46 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wvalue23 = getelementptr inbounds %struct.lu, ptr %46, i32 0, i32 76
  %47 = load ptr, ptr %Wvalue23, align 8, !tbaa !37
  store ptr %47, ptr %Wvalue, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %marked) #5
  %48 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %iwork0 = getelementptr inbounds %struct.lu, ptr %48, i32 0, i32 100
  %49 = load ptr, ptr %iwork0, align 8, !tbaa !43
  store ptr %49, ptr %marked, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %work) #5
  %50 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %work0 = getelementptr inbounds %struct.lu, ptr %50, i32 0, i32 102
  %51 = load ptr, ptr %work0, align 8, !tbaa !47
  store ptr %51, ptr %work, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cancelled) #5
  %52 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %row_pivot = getelementptr inbounds %struct.lu, ptr %52, i32 0, i32 105
  %53 = load ptr, ptr %row_pivot, align 8, !tbaa !48
  store ptr %53, ptr %cancelled, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cbeg) #5
  %54 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %55 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom = sext i32 %55 to i64
  %arrayidx = getelementptr inbounds i32, ptr %54, i64 %idxprom
  %56 = load i32, ptr %arrayidx, align 4, !tbaa !12
  store i32 %56, ptr %cbeg, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %cend) #5
  %57 = load ptr, ptr %Wend, align 8, !tbaa !4
  %58 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom24 = sext i32 %58 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %57, i64 %idxprom24
  %59 = load i32, ptr %arrayidx25, align 4, !tbaa !12
  store i32 %59, ptr %cend, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %rbeg) #5
  %60 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %61 = load i32, ptr %m, align 4, !tbaa !12
  %62 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %add = add nsw i32 %61, %62
  %idxprom26 = sext i32 %add to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %60, i64 %idxprom26
  %63 = load i32, ptr %arrayidx27, align 4, !tbaa !12
  store i32 %63, ptr %rbeg, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %rend) #5
  %64 = load ptr, ptr %Wend, align 8, !tbaa !4
  %65 = load i32, ptr %m, align 4, !tbaa !12
  %66 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %add28 = add nsw i32 %65, %66
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %64, i64 %idxprom29
  %67 = load i32, ptr %arrayidx30, align 4, !tbaa !12
  store i32 %67, ptr %rend, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnz1) #5
  %68 = load i32, ptr %cend, align 4, !tbaa !12
  %69 = load i32, ptr %cbeg, align 4, !tbaa !12
  %sub = sub nsw i32 %68, %69
  %sub31 = sub nsw i32 %sub, 1
  store i32 %sub31, ptr %cnz1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %rnz1) #5
  %70 = load i32, ptr %rend, align 4, !tbaa !12
  %71 = load i32, ptr %rbeg, align 4, !tbaa !12
  %sub32 = sub nsw i32 %70, %71
  %sub33 = sub nsw i32 %sub32, 1
  store i32 %sub33, ptr %rnz1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %rpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %put) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %Uput) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %where) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nz) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %wi) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %grow) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %room) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %found) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %position) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %col_number) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %pivot) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmx) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %xrj) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %wx) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #5
  store i32 0, ptr %grow, align 4, !tbaa !12
  store i32 -1, ptr %where, align 4, !tbaa !12
  %72 = load i32, ptr %cbeg, align 4, !tbaa !12
  store i32 %72, ptr %pos, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %73 = load i32, ptr %pos, align 4, !tbaa !12
  %74 = load i32, ptr %cend, align 4, !tbaa !12
  %cmp = icmp slt i32 %73, %74
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %75 = load ptr, ptr %Windex, align 8, !tbaa !4
  %76 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom34 = sext i32 %76 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %75, i64 %idxprom34
  %77 = load i32, ptr %arrayidx35, align 4, !tbaa !12
  store i32 %77, ptr %i, align 4, !tbaa !12
  %78 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %cmp36 = icmp eq i32 %77, %78
  br i1 %cmp36, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %79 = load i32, ptr %pos, align 4, !tbaa !12
  store i32 %79, ptr %where, align 4, !tbaa !12
  br label %if.end

if.else:                                          ; preds = %for.body
  %80 = load ptr, ptr %Wend, align 8, !tbaa !4
  %81 = load i32, ptr %m, align 4, !tbaa !12
  %82 = load i32, ptr %i, align 4, !tbaa !12
  %add37 = add nsw i32 %81, %82
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %80, i64 %idxprom38
  %83 = load i32, ptr %arrayidx39, align 4, !tbaa !12
  %84 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %85 = load i32, ptr %m, align 4, !tbaa !12
  %86 = load i32, ptr %i, align 4, !tbaa !12
  %add40 = add nsw i32 %85, %86
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %84, i64 %idxprom41
  %87 = load i32, ptr %arrayidx42, align 4, !tbaa !12
  %sub43 = sub nsw i32 %83, %87
  store i32 %sub43, ptr %nz, align 4, !tbaa !12
  %88 = load i32, ptr %nz, align 4, !tbaa !12
  %89 = load i32, ptr %rnz1, align 4, !tbaa !12
  %add44 = add nsw i32 %88, %89
  %conv = sitofp i32 %add44 to double
  %90 = load double, ptr %stretch, align 8, !tbaa !26
  %91 = load i32, ptr %nz, align 4, !tbaa !12
  %92 = load i32, ptr %rnz1, align 4, !tbaa !12
  %add45 = add nsw i32 %91, %92
  %conv46 = sitofp i32 %add45 to double
  %93 = call double @llvm.fmuladd.f64(double %90, double %conv46, double %conv)
  %94 = load i32, ptr %pad, align 4, !tbaa !12
  %conv47 = sitofp i32 %94 to double
  %add48 = fadd double %93, %conv47
  %95 = load i32, ptr %grow, align 4, !tbaa !12
  %conv49 = sitofp i32 %95 to double
  %add50 = fadd double %conv49, %add48
  %conv51 = fptosi double %add50 to i32
  store i32 %conv51, ptr %grow, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %96 = load i32, ptr %pos, align 4, !tbaa !12
  %inc = add nsw i32 %96, 1
  store i32 %inc, ptr %pos, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %97 = load ptr, ptr %Windex, align 8, !tbaa !4
  %98 = load i32, ptr %cbeg, align 4, !tbaa !12
  %99 = load i32, ptr %where, align 4, !tbaa !12
  call void @lu_iswap(ptr noundef %97, i32 noundef %98, i32 noundef %99)
  %100 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %101 = load i32, ptr %cbeg, align 4, !tbaa !12
  %102 = load i32, ptr %where, align 4, !tbaa !12
  call void @lu_fswap(ptr noundef %100, i32 noundef %101, i32 noundef %102)
  %103 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %104 = load i32, ptr %cbeg, align 4, !tbaa !12
  %idxprom52 = sext i32 %104 to i64
  %arrayidx53 = getelementptr inbounds double, ptr %103, i64 %idxprom52
  %105 = load double, ptr %arrayidx53, align 8, !tbaa !26
  store double %105, ptr %pivot, align 8, !tbaa !26
  store i32 -1, ptr %where, align 4, !tbaa !12
  %106 = load i32, ptr %rbeg, align 4, !tbaa !12
  store i32 %106, ptr %rpos, align 4, !tbaa !12
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc79, %for.end
  %107 = load i32, ptr %rpos, align 4, !tbaa !12
  %108 = load i32, ptr %rend, align 4, !tbaa !12
  %cmp55 = icmp slt i32 %107, %108
  br i1 %cmp55, label %for.body57, label %for.end81

for.body57:                                       ; preds = %for.cond54
  %109 = load ptr, ptr %Windex, align 8, !tbaa !4
  %110 = load i32, ptr %rpos, align 4, !tbaa !12
  %idxprom58 = sext i32 %110 to i64
  %arrayidx59 = getelementptr inbounds i32, ptr %109, i64 %idxprom58
  %111 = load i32, ptr %arrayidx59, align 4, !tbaa !12
  store i32 %111, ptr %j, align 4, !tbaa !12
  %112 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %cmp60 = icmp eq i32 %111, %112
  br i1 %cmp60, label %if.then62, label %if.else63

if.then62:                                        ; preds = %for.body57
  %113 = load i32, ptr %rpos, align 4, !tbaa !12
  store i32 %113, ptr %where, align 4, !tbaa !12
  br label %if.end78

if.else63:                                        ; preds = %for.body57
  %114 = load ptr, ptr %Wend, align 8, !tbaa !4
  %115 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom64 = sext i32 %115 to i64
  %arrayidx65 = getelementptr inbounds i32, ptr %114, i64 %idxprom64
  %116 = load i32, ptr %arrayidx65, align 4, !tbaa !12
  %117 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %118 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom66 = sext i32 %118 to i64
  %arrayidx67 = getelementptr inbounds i32, ptr %117, i64 %idxprom66
  %119 = load i32, ptr %arrayidx67, align 4, !tbaa !12
  %sub68 = sub nsw i32 %116, %119
  store i32 %sub68, ptr %nz, align 4, !tbaa !12
  %120 = load i32, ptr %nz, align 4, !tbaa !12
  %121 = load i32, ptr %cnz1, align 4, !tbaa !12
  %add69 = add nsw i32 %120, %121
  %conv70 = sitofp i32 %add69 to double
  %122 = load double, ptr %stretch, align 8, !tbaa !26
  %123 = load i32, ptr %nz, align 4, !tbaa !12
  %124 = load i32, ptr %cnz1, align 4, !tbaa !12
  %add71 = add nsw i32 %123, %124
  %conv72 = sitofp i32 %add71 to double
  %125 = call double @llvm.fmuladd.f64(double %122, double %conv72, double %conv70)
  %126 = load i32, ptr %pad, align 4, !tbaa !12
  %conv73 = sitofp i32 %126 to double
  %add74 = fadd double %125, %conv73
  %127 = load i32, ptr %grow, align 4, !tbaa !12
  %conv75 = sitofp i32 %127 to double
  %add76 = fadd double %conv75, %add74
  %conv77 = fptosi double %add76 to i32
  store i32 %conv77, ptr %grow, align 4, !tbaa !12
  br label %if.end78

if.end78:                                         ; preds = %if.else63, %if.then62
  br label %for.inc79

for.inc79:                                        ; preds = %if.end78
  %128 = load i32, ptr %rpos, align 4, !tbaa !12
  %inc80 = add nsw i32 %128, 1
  store i32 %inc80, ptr %rpos, align 4, !tbaa !12
  br label %for.cond54

for.end81:                                        ; preds = %for.cond54
  %129 = load ptr, ptr %Windex, align 8, !tbaa !4
  %130 = load i32, ptr %rbeg, align 4, !tbaa !12
  %131 = load i32, ptr %where, align 4, !tbaa !12
  call void @lu_iswap(ptr noundef %129, i32 noundef %130, i32 noundef %131)
  %132 = load ptr, ptr %Wend, align 8, !tbaa !4
  %133 = load i32, ptr %m, align 4, !tbaa !12
  %mul = mul nsw i32 2, %133
  %idxprom82 = sext i32 %mul to i64
  %arrayidx83 = getelementptr inbounds i32, ptr %132, i64 %idxprom82
  %134 = load i32, ptr %arrayidx83, align 4, !tbaa !12
  %135 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %136 = load i32, ptr %m, align 4, !tbaa !12
  %mul84 = mul nsw i32 2, %136
  %idxprom85 = sext i32 %mul84 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %135, i64 %idxprom85
  %137 = load i32, ptr %arrayidx86, align 4, !tbaa !12
  %sub87 = sub nsw i32 %134, %137
  store i32 %sub87, ptr %room, align 4, !tbaa !12
  %138 = load i32, ptr %grow, align 4, !tbaa !12
  %139 = load i32, ptr %room, align 4, !tbaa !12
  %cmp88 = icmp sgt i32 %138, %139
  br i1 %cmp88, label %if.then90, label %if.end110

if.then90:                                        ; preds = %for.end81
  %140 = load i32, ptr %m, align 4, !tbaa !12
  %mul91 = mul nsw i32 2, %140
  %141 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %142 = load ptr, ptr %Wend, align 8, !tbaa !4
  %143 = load ptr, ptr %Wflink, align 8, !tbaa !4
  %144 = load ptr, ptr %Windex, align 8, !tbaa !4
  %145 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %146 = load double, ptr %stretch, align 8, !tbaa !26
  %147 = load i32, ptr %pad, align 4, !tbaa !12
  %call = call i32 @lu_file_compress(i32 noundef %mul91, ptr noundef %141, ptr noundef %142, ptr noundef %143, ptr noundef %144, ptr noundef %145, double noundef %146, i32 noundef %147)
  %148 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %149 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom92 = sext i32 %149 to i64
  %arrayidx93 = getelementptr inbounds i32, ptr %148, i64 %idxprom92
  %150 = load i32, ptr %arrayidx93, align 4, !tbaa !12
  store i32 %150, ptr %cbeg, align 4, !tbaa !12
  %151 = load ptr, ptr %Wend, align 8, !tbaa !4
  %152 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom94 = sext i32 %152 to i64
  %arrayidx95 = getelementptr inbounds i32, ptr %151, i64 %idxprom94
  %153 = load i32, ptr %arrayidx95, align 4, !tbaa !12
  store i32 %153, ptr %cend, align 4, !tbaa !12
  %154 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %155 = load i32, ptr %m, align 4, !tbaa !12
  %156 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %add96 = add nsw i32 %155, %156
  %idxprom97 = sext i32 %add96 to i64
  %arrayidx98 = getelementptr inbounds i32, ptr %154, i64 %idxprom97
  %157 = load i32, ptr %arrayidx98, align 4, !tbaa !12
  store i32 %157, ptr %rbeg, align 4, !tbaa !12
  %158 = load ptr, ptr %Wend, align 8, !tbaa !4
  %159 = load i32, ptr %m, align 4, !tbaa !12
  %160 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %add99 = add nsw i32 %159, %160
  %idxprom100 = sext i32 %add99 to i64
  %arrayidx101 = getelementptr inbounds i32, ptr %158, i64 %idxprom100
  %161 = load i32, ptr %arrayidx101, align 4, !tbaa !12
  store i32 %161, ptr %rend, align 4, !tbaa !12
  %162 = load ptr, ptr %Wend, align 8, !tbaa !4
  %163 = load i32, ptr %m, align 4, !tbaa !12
  %mul102 = mul nsw i32 2, %163
  %idxprom103 = sext i32 %mul102 to i64
  %arrayidx104 = getelementptr inbounds i32, ptr %162, i64 %idxprom103
  %164 = load i32, ptr %arrayidx104, align 4, !tbaa !12
  %165 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %166 = load i32, ptr %m, align 4, !tbaa !12
  %mul105 = mul nsw i32 2, %166
  %idxprom106 = sext i32 %mul105 to i64
  %arrayidx107 = getelementptr inbounds i32, ptr %165, i64 %idxprom106
  %167 = load i32, ptr %arrayidx107, align 4, !tbaa !12
  %sub108 = sub nsw i32 %164, %167
  store i32 %sub108, ptr %room, align 4, !tbaa !12
  %168 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %ngarbage = getelementptr inbounds %struct.lu, ptr %168, i32 0, i32 55
  %169 = load i32, ptr %ngarbage, align 8, !tbaa !44
  %inc109 = add nsw i32 %169, 1
  store i32 %inc109, ptr %ngarbage, align 8, !tbaa !44
  br label %if.end110

if.end110:                                        ; preds = %if.then90, %for.end81
  %170 = load i32, ptr %grow, align 4, !tbaa !12
  %171 = load i32, ptr %room, align 4, !tbaa !12
  %cmp111 = icmp sgt i32 %170, %171
  br i1 %cmp111, label %if.then113, label %if.end115

if.then113:                                       ; preds = %if.end110
  %172 = load i32, ptr %grow, align 4, !tbaa !12
  %173 = load i32, ptr %room, align 4, !tbaa !12
  %sub114 = sub nsw i32 %172, %173
  %174 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %addmemW = getelementptr inbounds %struct.lu, ptr %174, i32 0, i32 16
  store i32 %sub114, ptr %addmemW, align 8, !tbaa !45
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end115:                                        ; preds = %if.end110
  %175 = load ptr, ptr %Ubegin, align 8, !tbaa !4
  %176 = load i32, ptr %rank, align 4, !tbaa !12
  %idxprom116 = sext i32 %176 to i64
  %arrayidx117 = getelementptr inbounds i32, ptr %175, i64 %idxprom116
  %177 = load i32, ptr %arrayidx117, align 4, !tbaa !12
  store i32 %177, ptr %Uput, align 4, !tbaa !12
  store i32 1, ptr %position, align 4, !tbaa !12
  %178 = load i32, ptr %cbeg, align 4, !tbaa !12
  %add118 = add nsw i32 %178, 1
  store i32 %add118, ptr %pos, align 4, !tbaa !12
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc128, %if.end115
  %179 = load i32, ptr %pos, align 4, !tbaa !12
  %180 = load i32, ptr %cend, align 4, !tbaa !12
  %cmp120 = icmp slt i32 %179, %180
  br i1 %cmp120, label %for.body122, label %for.end130

for.body122:                                      ; preds = %for.cond119
  %181 = load ptr, ptr %Windex, align 8, !tbaa !4
  %182 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom123 = sext i32 %182 to i64
  %arrayidx124 = getelementptr inbounds i32, ptr %181, i64 %idxprom123
  %183 = load i32, ptr %arrayidx124, align 4, !tbaa !12
  store i32 %183, ptr %i, align 4, !tbaa !12
  %184 = load i32, ptr %position, align 4, !tbaa !12
  %inc125 = add nsw i32 %184, 1
  store i32 %inc125, ptr %position, align 4, !tbaa !12
  %185 = load ptr, ptr %marked, align 8, !tbaa !4
  %186 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom126 = sext i32 %186 to i64
  %arrayidx127 = getelementptr inbounds i32, ptr %185, i64 %idxprom126
  store i32 %184, ptr %arrayidx127, align 4, !tbaa !12
  br label %for.inc128

for.inc128:                                       ; preds = %for.body122
  %187 = load i32, ptr %pos, align 4, !tbaa !12
  %inc129 = add nsw i32 %187, 1
  store i32 %inc129, ptr %pos, align 4, !tbaa !12
  br label %for.cond119

for.end130:                                       ; preds = %for.cond119
  %188 = load ptr, ptr %Windex, align 8, !tbaa !4
  %189 = load i32, ptr %cbeg, align 4, !tbaa !12
  %idx.ext = sext i32 %189 to i64
  %add.ptr = getelementptr inbounds i32, ptr %188, i64 %idx.ext
  store ptr %add.ptr, ptr %wi, align 8, !tbaa !4
  %190 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %191 = load i32, ptr %cbeg, align 4, !tbaa !12
  %idx.ext131 = sext i32 %191 to i64
  %add.ptr132 = getelementptr inbounds double, ptr %190, i64 %idx.ext131
  store ptr %add.ptr132, ptr %wx, align 8, !tbaa !4
  store i32 0, ptr %col_number, align 4, !tbaa !12
  %192 = load i32, ptr %rbeg, align 4, !tbaa !12
  %add133 = add nsw i32 %192, 1
  store i32 %add133, ptr %rpos, align 4, !tbaa !12
  br label %for.cond134

for.cond134:                                      ; preds = %for.inc278, %for.end130
  %193 = load i32, ptr %rpos, align 4, !tbaa !12
  %194 = load i32, ptr %rend, align 4, !tbaa !12
  %cmp135 = icmp slt i32 %193, %194
  br i1 %cmp135, label %for.body137, label %for.end281

for.body137:                                      ; preds = %for.cond134
  %195 = load ptr, ptr %Windex, align 8, !tbaa !4
  %196 = load i32, ptr %rpos, align 4, !tbaa !12
  %idxprom138 = sext i32 %196 to i64
  %arrayidx139 = getelementptr inbounds i32, ptr %195, i64 %idxprom138
  %197 = load i32, ptr %arrayidx139, align 4, !tbaa !12
  store i32 %197, ptr %j, align 4, !tbaa !12
  store double 0.000000e+00, ptr %cmx, align 8, !tbaa !26
  store i32 -1, ptr %where, align 4, !tbaa !12
  %198 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %199 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom140 = sext i32 %199 to i64
  %arrayidx141 = getelementptr inbounds i32, ptr %198, i64 %idxprom140
  %200 = load i32, ptr %arrayidx141, align 4, !tbaa !12
  store i32 %200, ptr %pos1, align 4, !tbaa !12
  store i32 %200, ptr %put, align 4, !tbaa !12
  %201 = load i32, ptr %pos1, align 4, !tbaa !12
  store i32 %201, ptr %pos, align 4, !tbaa !12
  br label %for.cond142

for.cond142:                                      ; preds = %for.inc181, %for.body137
  %202 = load i32, ptr %pos, align 4, !tbaa !12
  %203 = load ptr, ptr %Wend, align 8, !tbaa !4
  %204 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom143 = sext i32 %204 to i64
  %arrayidx144 = getelementptr inbounds i32, ptr %203, i64 %idxprom143
  %205 = load i32, ptr %arrayidx144, align 4, !tbaa !12
  %cmp145 = icmp slt i32 %202, %205
  br i1 %cmp145, label %for.body147, label %for.end183

for.body147:                                      ; preds = %for.cond142
  %206 = load ptr, ptr %Windex, align 8, !tbaa !4
  %207 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom148 = sext i32 %207 to i64
  %arrayidx149 = getelementptr inbounds i32, ptr %206, i64 %idxprom148
  %208 = load i32, ptr %arrayidx149, align 4, !tbaa !12
  store i32 %208, ptr %i, align 4, !tbaa !12
  %209 = load ptr, ptr %marked, align 8, !tbaa !4
  %210 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom150 = sext i32 %210 to i64
  %arrayidx151 = getelementptr inbounds i32, ptr %209, i64 %idxprom150
  %211 = load i32, ptr %arrayidx151, align 4, !tbaa !12
  store i32 %211, ptr %position, align 4, !tbaa !12
  %cmp152 = icmp sgt i32 %211, 0
  br i1 %cmp152, label %if.then154, label %if.else159

if.then154:                                       ; preds = %for.body147
  %212 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %213 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom155 = sext i32 %213 to i64
  %arrayidx156 = getelementptr inbounds double, ptr %212, i64 %idxprom155
  %214 = load double, ptr %arrayidx156, align 8, !tbaa !26
  %215 = load ptr, ptr %work, align 8, !tbaa !4
  %216 = load i32, ptr %position, align 4, !tbaa !12
  %idxprom157 = sext i32 %216 to i64
  %arrayidx158 = getelementptr inbounds double, ptr %215, i64 %idxprom157
  store double %214, ptr %arrayidx158, align 8, !tbaa !26
  br label %if.end180

if.else159:                                       ; preds = %for.body147
  %217 = load i32, ptr %i, align 4, !tbaa !12
  %218 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %cmp160 = icmp eq i32 %217, %218
  br i1 %cmp160, label %if.then162, label %if.else163

if.then162:                                       ; preds = %if.else159
  %219 = load i32, ptr %put, align 4, !tbaa !12
  store i32 %219, ptr %where, align 4, !tbaa !12
  br label %if.end170

if.else163:                                       ; preds = %if.else159
  %220 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %221 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom164 = sext i32 %221 to i64
  %arrayidx165 = getelementptr inbounds double, ptr %220, i64 %idxprom164
  %222 = load double, ptr %arrayidx165, align 8, !tbaa !26
  %223 = call double @llvm.fabs.f64(double %222)
  store double %223, ptr %x, align 8, !tbaa !26
  %224 = load double, ptr %cmx, align 8, !tbaa !26
  %cmp166 = fcmp ogt double %223, %224
  br i1 %cmp166, label %if.then168, label %if.end169

if.then168:                                       ; preds = %if.else163
  %225 = load double, ptr %x, align 8, !tbaa !26
  store double %225, ptr %cmx, align 8, !tbaa !26
  br label %if.end169

if.end169:                                        ; preds = %if.then168, %if.else163
  br label %if.end170

if.end170:                                        ; preds = %if.end169, %if.then162
  %226 = load ptr, ptr %Windex, align 8, !tbaa !4
  %227 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom171 = sext i32 %227 to i64
  %arrayidx172 = getelementptr inbounds i32, ptr %226, i64 %idxprom171
  %228 = load i32, ptr %arrayidx172, align 4, !tbaa !12
  %229 = load ptr, ptr %Windex, align 8, !tbaa !4
  %230 = load i32, ptr %put, align 4, !tbaa !12
  %idxprom173 = sext i32 %230 to i64
  %arrayidx174 = getelementptr inbounds i32, ptr %229, i64 %idxprom173
  store i32 %228, ptr %arrayidx174, align 4, !tbaa !12
  %231 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %232 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom175 = sext i32 %232 to i64
  %arrayidx176 = getelementptr inbounds double, ptr %231, i64 %idxprom175
  %233 = load double, ptr %arrayidx176, align 8, !tbaa !26
  %234 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %235 = load i32, ptr %put, align 4, !tbaa !12
  %inc177 = add nsw i32 %235, 1
  store i32 %inc177, ptr %put, align 4, !tbaa !12
  %idxprom178 = sext i32 %235 to i64
  %arrayidx179 = getelementptr inbounds double, ptr %234, i64 %idxprom178
  store double %233, ptr %arrayidx179, align 8, !tbaa !26
  br label %if.end180

if.end180:                                        ; preds = %if.end170, %if.then154
  br label %for.inc181

for.inc181:                                       ; preds = %if.end180
  %236 = load i32, ptr %pos, align 4, !tbaa !12
  %inc182 = add nsw i32 %236, 1
  store i32 %inc182, ptr %pos, align 4, !tbaa !12
  br label %for.cond142

for.end183:                                       ; preds = %for.cond142
  %237 = load i32, ptr %put, align 4, !tbaa !12
  %238 = load ptr, ptr %Wend, align 8, !tbaa !4
  %239 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom184 = sext i32 %239 to i64
  %arrayidx185 = getelementptr inbounds i32, ptr %238, i64 %idxprom184
  store i32 %237, ptr %arrayidx185, align 4, !tbaa !12
  %240 = load ptr, ptr %Windex, align 8, !tbaa !4
  %241 = load i32, ptr %pos1, align 4, !tbaa !12
  %242 = load i32, ptr %where, align 4, !tbaa !12
  call void @lu_iswap(ptr noundef %240, i32 noundef %241, i32 noundef %242)
  %243 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %244 = load i32, ptr %pos1, align 4, !tbaa !12
  %245 = load i32, ptr %where, align 4, !tbaa !12
  call void @lu_fswap(ptr noundef %243, i32 noundef %244, i32 noundef %245)
  %246 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %247 = load i32, ptr %pos1, align 4, !tbaa !12
  %idxprom186 = sext i32 %247 to i64
  %arrayidx187 = getelementptr inbounds double, ptr %246, i64 %idxprom186
  %248 = load double, ptr %arrayidx187, align 8, !tbaa !26
  store double %248, ptr %xrj, align 8, !tbaa !26
  %249 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %250 = load ptr, ptr %Wflink, align 8, !tbaa !4
  %251 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom188 = sext i32 %251 to i64
  %arrayidx189 = getelementptr inbounds i32, ptr %250, i64 %idxprom188
  %252 = load i32, ptr %arrayidx189, align 4, !tbaa !12
  %idxprom190 = sext i32 %252 to i64
  %arrayidx191 = getelementptr inbounds i32, ptr %249, i64 %idxprom190
  %253 = load i32, ptr %arrayidx191, align 4, !tbaa !12
  %254 = load i32, ptr %put, align 4, !tbaa !12
  %sub192 = sub nsw i32 %253, %254
  store i32 %sub192, ptr %room, align 4, !tbaa !12
  %255 = load i32, ptr %room, align 4, !tbaa !12
  %256 = load i32, ptr %cnz1, align 4, !tbaa !12
  %cmp193 = icmp slt i32 %255, %256
  br i1 %cmp193, label %if.then195, label %if.end212

if.then195:                                       ; preds = %for.end183
  %257 = load ptr, ptr %Wend, align 8, !tbaa !4
  %258 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom196 = sext i32 %258 to i64
  %arrayidx197 = getelementptr inbounds i32, ptr %257, i64 %idxprom196
  %259 = load i32, ptr %arrayidx197, align 4, !tbaa !12
  %260 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %261 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom198 = sext i32 %261 to i64
  %arrayidx199 = getelementptr inbounds i32, ptr %260, i64 %idxprom198
  %262 = load i32, ptr %arrayidx199, align 4, !tbaa !12
  %sub200 = sub nsw i32 %259, %262
  store i32 %sub200, ptr %nz, align 4, !tbaa !12
  %263 = load i32, ptr %cnz1, align 4, !tbaa !12
  %conv201 = sitofp i32 %263 to double
  %264 = load double, ptr %stretch, align 8, !tbaa !26
  %265 = load i32, ptr %nz, align 4, !tbaa !12
  %266 = load i32, ptr %cnz1, align 4, !tbaa !12
  %add202 = add nsw i32 %265, %266
  %conv203 = sitofp i32 %add202 to double
  %267 = call double @llvm.fmuladd.f64(double %264, double %conv203, double %conv201)
  %268 = load i32, ptr %pad, align 4, !tbaa !12
  %conv205 = sitofp i32 %268 to double
  %add206 = fadd double %267, %conv205
  %conv207 = fptosi double %add206 to i32
  store i32 %conv207, ptr %room, align 4, !tbaa !12
  %269 = load i32, ptr %j, align 4, !tbaa !12
  %270 = load i32, ptr %m, align 4, !tbaa !12
  %mul208 = mul nsw i32 2, %270
  %271 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %272 = load ptr, ptr %Wend, align 8, !tbaa !4
  %273 = load ptr, ptr %Wflink, align 8, !tbaa !4
  %274 = load ptr, ptr %Wblink, align 8, !tbaa !4
  %275 = load ptr, ptr %Windex, align 8, !tbaa !4
  %276 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %277 = load i32, ptr %room, align 4, !tbaa !12
  call void @lu_file_reappend(i32 noundef %269, i32 noundef %mul208, ptr noundef %271, ptr noundef %272, ptr noundef %273, ptr noundef %274, ptr noundef %275, ptr noundef %276, i32 noundef %277)
  %278 = load ptr, ptr %Wend, align 8, !tbaa !4
  %279 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom209 = sext i32 %279 to i64
  %arrayidx210 = getelementptr inbounds i32, ptr %278, i64 %idxprom209
  %280 = load i32, ptr %arrayidx210, align 4, !tbaa !12
  store i32 %280, ptr %put, align 4, !tbaa !12
  %281 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %nexpand = getelementptr inbounds %struct.lu, ptr %281, i32 0, i32 54
  %282 = load i32, ptr %nexpand, align 4, !tbaa !46
  %inc211 = add nsw i32 %282, 1
  store i32 %inc211, ptr %nexpand, align 4, !tbaa !46
  br label %if.end212

if.end212:                                        ; preds = %if.then195, %for.end183
  %283 = load double, ptr %xrj, align 8, !tbaa !26
  %284 = load double, ptr %pivot, align 8, !tbaa !26
  %div = fdiv double %283, %284
  store double %div, ptr %a, align 8, !tbaa !26
  store i32 1, ptr %pos, align 4, !tbaa !12
  br label %for.cond213

for.cond213:                                      ; preds = %for.inc222, %if.end212
  %285 = load i32, ptr %pos, align 4, !tbaa !12
  %286 = load i32, ptr %cnz1, align 4, !tbaa !12
  %cmp214 = icmp sle i32 %285, %286
  br i1 %cmp214, label %for.body216, label %for.end224

for.body216:                                      ; preds = %for.cond213
  %287 = load double, ptr %a, align 8, !tbaa !26
  %288 = load ptr, ptr %wx, align 8, !tbaa !4
  %289 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom217 = sext i32 %289 to i64
  %arrayidx218 = getelementptr inbounds double, ptr %288, i64 %idxprom217
  %290 = load double, ptr %arrayidx218, align 8, !tbaa !26
  %291 = load ptr, ptr %work, align 8, !tbaa !4
  %292 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom220 = sext i32 %292 to i64
  %arrayidx221 = getelementptr inbounds double, ptr %291, i64 %idxprom220
  %293 = load double, ptr %arrayidx221, align 8, !tbaa !26
  %neg = fneg double %287
  %294 = call double @llvm.fmuladd.f64(double %neg, double %290, double %293)
  store double %294, ptr %arrayidx221, align 8, !tbaa !26
  br label %for.inc222

for.inc222:                                       ; preds = %for.body216
  %295 = load i32, ptr %pos, align 4, !tbaa !12
  %inc223 = add nsw i32 %295, 1
  store i32 %inc223, ptr %pos, align 4, !tbaa !12
  br label %for.cond213

for.end224:                                       ; preds = %for.cond213
  store i64 0, ptr %mask, align 8, !tbaa !49
  store i32 1, ptr %pos, align 4, !tbaa !12
  br label %for.cond225

for.cond225:                                      ; preds = %for.inc252, %for.end224
  %296 = load i32, ptr %pos, align 4, !tbaa !12
  %297 = load i32, ptr %cnz1, align 4, !tbaa !12
  %cmp226 = icmp sle i32 %296, %297
  br i1 %cmp226, label %for.body228, label %for.end254

for.body228:                                      ; preds = %for.cond225
  %298 = load ptr, ptr %work, align 8, !tbaa !4
  %299 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom229 = sext i32 %299 to i64
  %arrayidx230 = getelementptr inbounds double, ptr %298, i64 %idxprom229
  %300 = load double, ptr %arrayidx230, align 8, !tbaa !26
  %301 = call double @llvm.fabs.f64(double %300)
  store double %301, ptr %x, align 8, !tbaa !26
  %302 = load double, ptr %x, align 8, !tbaa !26
  %303 = load double, ptr %droptol, align 8, !tbaa !26
  %cmp231 = fcmp ogt double %302, %303
  br i1 %cmp231, label %if.then233, label %if.else247

if.then233:                                       ; preds = %for.body228
  %304 = load ptr, ptr %wi, align 8, !tbaa !4
  %305 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom234 = sext i32 %305 to i64
  %arrayidx235 = getelementptr inbounds i32, ptr %304, i64 %idxprom234
  %306 = load i32, ptr %arrayidx235, align 4, !tbaa !12
  %307 = load ptr, ptr %Windex, align 8, !tbaa !4
  %308 = load i32, ptr %put, align 4, !tbaa !12
  %idxprom236 = sext i32 %308 to i64
  %arrayidx237 = getelementptr inbounds i32, ptr %307, i64 %idxprom236
  store i32 %306, ptr %arrayidx237, align 4, !tbaa !12
  %309 = load ptr, ptr %work, align 8, !tbaa !4
  %310 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom238 = sext i32 %310 to i64
  %arrayidx239 = getelementptr inbounds double, ptr %309, i64 %idxprom238
  %311 = load double, ptr %arrayidx239, align 8, !tbaa !26
  %312 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %313 = load i32, ptr %put, align 4, !tbaa !12
  %inc240 = add nsw i32 %313, 1
  store i32 %inc240, ptr %put, align 4, !tbaa !12
  %idxprom241 = sext i32 %313 to i64
  %arrayidx242 = getelementptr inbounds double, ptr %312, i64 %idxprom241
  store double %311, ptr %arrayidx242, align 8, !tbaa !26
  %314 = load double, ptr %x, align 8, !tbaa !26
  %315 = load double, ptr %cmx, align 8, !tbaa !26
  %cmp243 = fcmp ogt double %314, %315
  br i1 %cmp243, label %if.then245, label %if.end246

if.then245:                                       ; preds = %if.then233
  %316 = load double, ptr %x, align 8, !tbaa !26
  store double %316, ptr %cmx, align 8, !tbaa !26
  br label %if.end246

if.end246:                                        ; preds = %if.then245, %if.then233
  br label %if.end249

if.else247:                                       ; preds = %for.body228
  %317 = load i32, ptr %pos, align 4, !tbaa !12
  %sub248 = sub nsw i32 %317, 1
  %sh_prom = zext i32 %sub248 to i64
  %shl = shl i64 1, %sh_prom
  %318 = load i64, ptr %mask, align 8, !tbaa !49
  %or = or i64 %318, %shl
  store i64 %or, ptr %mask, align 8, !tbaa !49
  br label %if.end249

if.end249:                                        ; preds = %if.else247, %if.end246
  %319 = load ptr, ptr %work, align 8, !tbaa !4
  %320 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom250 = sext i32 %320 to i64
  %arrayidx251 = getelementptr inbounds double, ptr %319, i64 %idxprom250
  store double 0.000000e+00, ptr %arrayidx251, align 8, !tbaa !26
  br label %for.inc252

for.inc252:                                       ; preds = %if.end249
  %321 = load i32, ptr %pos, align 4, !tbaa !12
  %inc253 = add nsw i32 %321, 1
  store i32 %inc253, ptr %pos, align 4, !tbaa !12
  br label %for.cond225

for.end254:                                       ; preds = %for.cond225
  %322 = load i32, ptr %put, align 4, !tbaa !12
  %323 = load ptr, ptr %Wend, align 8, !tbaa !4
  %324 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom255 = sext i32 %324 to i64
  %arrayidx256 = getelementptr inbounds i32, ptr %323, i64 %idxprom255
  store i32 %322, ptr %arrayidx256, align 4, !tbaa !12
  %325 = load i64, ptr %mask, align 8, !tbaa !49
  %326 = load ptr, ptr %cancelled, align 8, !tbaa !4
  %327 = load i32, ptr %col_number, align 4, !tbaa !12
  %idxprom257 = sext i32 %327 to i64
  %arrayidx258 = getelementptr inbounds i64, ptr %326, i64 %idxprom257
  store i64 %325, ptr %arrayidx258, align 8, !tbaa !49
  %328 = load double, ptr %xrj, align 8, !tbaa !26
  %329 = call double @llvm.fabs.f64(double %328)
  %330 = load double, ptr %droptol, align 8, !tbaa !26
  %cmp259 = fcmp ogt double %329, %330
  br i1 %cmp259, label %if.then261, label %if.end267

if.then261:                                       ; preds = %for.end254
  %331 = load i32, ptr %j, align 4, !tbaa !12
  %332 = load ptr, ptr %Uindex, align 8, !tbaa !4
  %333 = load i32, ptr %Uput, align 4, !tbaa !12
  %idxprom262 = sext i32 %333 to i64
  %arrayidx263 = getelementptr inbounds i32, ptr %332, i64 %idxprom262
  store i32 %331, ptr %arrayidx263, align 4, !tbaa !12
  %334 = load double, ptr %xrj, align 8, !tbaa !26
  %335 = load ptr, ptr %Uvalue, align 8, !tbaa !4
  %336 = load i32, ptr %Uput, align 4, !tbaa !12
  %inc264 = add nsw i32 %336, 1
  store i32 %inc264, ptr %Uput, align 4, !tbaa !12
  %idxprom265 = sext i32 %336 to i64
  %arrayidx266 = getelementptr inbounds double, ptr %335, i64 %idxprom265
  store double %334, ptr %arrayidx266, align 8, !tbaa !26
  br label %if.end267

if.end267:                                        ; preds = %if.then261, %for.end254
  %337 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %338 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom268 = sext i32 %338 to i64
  %arrayidx269 = getelementptr inbounds i32, ptr %337, i64 %idxprom268
  %339 = load i32, ptr %arrayidx269, align 4, !tbaa !12
  %inc270 = add nsw i32 %339, 1
  store i32 %inc270, ptr %arrayidx269, align 4, !tbaa !12
  %340 = load ptr, ptr %Wend, align 8, !tbaa !4
  %341 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom271 = sext i32 %341 to i64
  %arrayidx272 = getelementptr inbounds i32, ptr %340, i64 %idxprom271
  %342 = load i32, ptr %arrayidx272, align 4, !tbaa !12
  %343 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %344 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom273 = sext i32 %344 to i64
  %arrayidx274 = getelementptr inbounds i32, ptr %343, i64 %idxprom273
  %345 = load i32, ptr %arrayidx274, align 4, !tbaa !12
  %sub275 = sub nsw i32 %342, %345
  store i32 %sub275, ptr %nz, align 4, !tbaa !12
  %346 = load i32, ptr %j, align 4, !tbaa !12
  %347 = load i32, ptr %nz, align 4, !tbaa !12
  %348 = load ptr, ptr %colcount_flink, align 8, !tbaa !4
  %349 = load ptr, ptr %colcount_blink, align 8, !tbaa !4
  %350 = load i32, ptr %m, align 4, !tbaa !12
  %351 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %min_colnz = getelementptr inbounds %struct.lu, ptr %351, i32 0, i32 69
  call void @lu_list_move(i32 noundef %346, i32 noundef %347, ptr noundef %348, ptr noundef %349, i32 noundef %350, ptr noundef %min_colnz)
  %352 = load double, ptr %cmx, align 8, !tbaa !26
  %353 = load ptr, ptr %colmax, align 8, !tbaa !4
  %354 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom276 = sext i32 %354 to i64
  %arrayidx277 = getelementptr inbounds double, ptr %353, i64 %idxprom276
  store double %352, ptr %arrayidx277, align 8, !tbaa !26
  br label %for.inc278

for.inc278:                                       ; preds = %if.end267
  %355 = load i32, ptr %rpos, align 4, !tbaa !12
  %inc279 = add nsw i32 %355, 1
  store i32 %inc279, ptr %rpos, align 4, !tbaa !12
  %356 = load i32, ptr %col_number, align 4, !tbaa !12
  %inc280 = add nsw i32 %356, 1
  store i32 %inc280, ptr %col_number, align 4, !tbaa !12
  br label %for.cond134

for.end281:                                       ; preds = %for.cond134
  %357 = load i32, ptr %cbeg, align 4, !tbaa !12
  %add282 = add nsw i32 %357, 1
  store i32 %add282, ptr %pos, align 4, !tbaa !12
  br label %for.cond283

for.cond283:                                      ; preds = %for.inc291, %for.end281
  %358 = load i32, ptr %pos, align 4, !tbaa !12
  %359 = load i32, ptr %cend, align 4, !tbaa !12
  %cmp284 = icmp slt i32 %358, %359
  br i1 %cmp284, label %for.body286, label %for.end293

for.body286:                                      ; preds = %for.cond283
  %360 = load ptr, ptr %marked, align 8, !tbaa !4
  %361 = load ptr, ptr %Windex, align 8, !tbaa !4
  %362 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom287 = sext i32 %362 to i64
  %arrayidx288 = getelementptr inbounds i32, ptr %361, i64 %idxprom287
  %363 = load i32, ptr %arrayidx288, align 4, !tbaa !12
  %idxprom289 = sext i32 %363 to i64
  %arrayidx290 = getelementptr inbounds i32, ptr %360, i64 %idxprom289
  store i32 0, ptr %arrayidx290, align 4, !tbaa !12
  br label %for.inc291

for.inc291:                                       ; preds = %for.body286
  %364 = load i32, ptr %pos, align 4, !tbaa !12
  %inc292 = add nsw i32 %364, 1
  store i32 %inc292, ptr %pos, align 4, !tbaa !12
  br label %for.cond283

for.end293:                                       ; preds = %for.cond283
  %365 = load i32, ptr %rbeg, align 4, !tbaa !12
  store i32 %365, ptr %rpos, align 4, !tbaa !12
  br label %for.cond294

for.cond294:                                      ; preds = %for.inc302, %for.end293
  %366 = load i32, ptr %rpos, align 4, !tbaa !12
  %367 = load i32, ptr %rend, align 4, !tbaa !12
  %cmp295 = icmp slt i32 %366, %367
  br i1 %cmp295, label %for.body297, label %for.end304

for.body297:                                      ; preds = %for.cond294
  %368 = load ptr, ptr %marked, align 8, !tbaa !4
  %369 = load ptr, ptr %Windex, align 8, !tbaa !4
  %370 = load i32, ptr %rpos, align 4, !tbaa !12
  %idxprom298 = sext i32 %370 to i64
  %arrayidx299 = getelementptr inbounds i32, ptr %369, i64 %idxprom298
  %371 = load i32, ptr %arrayidx299, align 4, !tbaa !12
  %idxprom300 = sext i32 %371 to i64
  %arrayidx301 = getelementptr inbounds i32, ptr %368, i64 %idxprom300
  store i32 1, ptr %arrayidx301, align 4, !tbaa !12
  br label %for.inc302

for.inc302:                                       ; preds = %for.body297
  %372 = load i32, ptr %rpos, align 4, !tbaa !12
  %inc303 = add nsw i32 %372, 1
  store i32 %inc303, ptr %rpos, align 4, !tbaa !12
  br label %for.cond294

for.end304:                                       ; preds = %for.cond294
  store i64 1, ptr %mask, align 8, !tbaa !49
  %373 = load i32, ptr %cbeg, align 4, !tbaa !12
  %add305 = add nsw i32 %373, 1
  store i32 %add305, ptr %pos, align 4, !tbaa !12
  br label %for.cond306

for.cond306:                                      ; preds = %for.inc404, %for.end304
  %374 = load i32, ptr %pos, align 4, !tbaa !12
  %375 = load i32, ptr %cend, align 4, !tbaa !12
  %cmp307 = icmp slt i32 %374, %375
  br i1 %cmp307, label %for.body309, label %for.end407

for.body309:                                      ; preds = %for.cond306
  %376 = load ptr, ptr %Windex, align 8, !tbaa !4
  %377 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom310 = sext i32 %377 to i64
  %arrayidx311 = getelementptr inbounds i32, ptr %376, i64 %idxprom310
  %378 = load i32, ptr %arrayidx311, align 4, !tbaa !12
  store i32 %378, ptr %i, align 4, !tbaa !12
  store i32 0, ptr %found, align 4, !tbaa !12
  %379 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %380 = load i32, ptr %m, align 4, !tbaa !12
  %381 = load i32, ptr %i, align 4, !tbaa !12
  %add312 = add nsw i32 %380, %381
  %idxprom313 = sext i32 %add312 to i64
  %arrayidx314 = getelementptr inbounds i32, ptr %379, i64 %idxprom313
  %382 = load i32, ptr %arrayidx314, align 4, !tbaa !12
  store i32 %382, ptr %put, align 4, !tbaa !12
  %383 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %384 = load i32, ptr %m, align 4, !tbaa !12
  %385 = load i32, ptr %i, align 4, !tbaa !12
  %add315 = add nsw i32 %384, %385
  %idxprom316 = sext i32 %add315 to i64
  %arrayidx317 = getelementptr inbounds i32, ptr %383, i64 %idxprom316
  %386 = load i32, ptr %arrayidx317, align 4, !tbaa !12
  store i32 %386, ptr %rpos, align 4, !tbaa !12
  br label %for.cond318

for.cond318:                                      ; preds = %for.inc338, %for.body309
  %387 = load i32, ptr %rpos, align 4, !tbaa !12
  %388 = load ptr, ptr %Wend, align 8, !tbaa !4
  %389 = load i32, ptr %m, align 4, !tbaa !12
  %390 = load i32, ptr %i, align 4, !tbaa !12
  %add319 = add nsw i32 %389, %390
  %idxprom320 = sext i32 %add319 to i64
  %arrayidx321 = getelementptr inbounds i32, ptr %388, i64 %idxprom320
  %391 = load i32, ptr %arrayidx321, align 4, !tbaa !12
  %cmp322 = icmp slt i32 %387, %391
  br i1 %cmp322, label %for.body324, label %for.end340

for.body324:                                      ; preds = %for.cond318
  %392 = load ptr, ptr %Windex, align 8, !tbaa !4
  %393 = load i32, ptr %rpos, align 4, !tbaa !12
  %idxprom325 = sext i32 %393 to i64
  %arrayidx326 = getelementptr inbounds i32, ptr %392, i64 %idxprom325
  %394 = load i32, ptr %arrayidx326, align 4, !tbaa !12
  store i32 %394, ptr %j, align 4, !tbaa !12
  %395 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %cmp327 = icmp eq i32 %394, %395
  br i1 %cmp327, label %if.then329, label %if.end330

if.then329:                                       ; preds = %for.body324
  store i32 1, ptr %found, align 4, !tbaa !12
  br label %if.end330

if.end330:                                        ; preds = %if.then329, %for.body324
  %396 = load ptr, ptr %marked, align 8, !tbaa !4
  %397 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom331 = sext i32 %397 to i64
  %arrayidx332 = getelementptr inbounds i32, ptr %396, i64 %idxprom331
  %398 = load i32, ptr %arrayidx332, align 4, !tbaa !12
  %tobool = icmp ne i32 %398, 0
  br i1 %tobool, label %if.end337, label %if.then333

if.then333:                                       ; preds = %if.end330
  %399 = load i32, ptr %j, align 4, !tbaa !12
  %400 = load ptr, ptr %Windex, align 8, !tbaa !4
  %401 = load i32, ptr %put, align 4, !tbaa !12
  %inc334 = add nsw i32 %401, 1
  store i32 %inc334, ptr %put, align 4, !tbaa !12
  %idxprom335 = sext i32 %401 to i64
  %arrayidx336 = getelementptr inbounds i32, ptr %400, i64 %idxprom335
  store i32 %399, ptr %arrayidx336, align 4, !tbaa !12
  br label %if.end337

if.end337:                                        ; preds = %if.then333, %if.end330
  br label %for.inc338

for.inc338:                                       ; preds = %if.end337
  %402 = load i32, ptr %rpos, align 4, !tbaa !12
  %inc339 = add nsw i32 %402, 1
  store i32 %inc339, ptr %rpos, align 4, !tbaa !12
  br label %for.cond318

for.end340:                                       ; preds = %for.cond318
  %403 = load i32, ptr %put, align 4, !tbaa !12
  %404 = load ptr, ptr %Wend, align 8, !tbaa !4
  %405 = load i32, ptr %m, align 4, !tbaa !12
  %406 = load i32, ptr %i, align 4, !tbaa !12
  %add341 = add nsw i32 %405, %406
  %idxprom342 = sext i32 %add341 to i64
  %arrayidx343 = getelementptr inbounds i32, ptr %404, i64 %idxprom342
  store i32 %403, ptr %arrayidx343, align 4, !tbaa !12
  %407 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %408 = load ptr, ptr %Wflink, align 8, !tbaa !4
  %409 = load i32, ptr %m, align 4, !tbaa !12
  %410 = load i32, ptr %i, align 4, !tbaa !12
  %add344 = add nsw i32 %409, %410
  %idxprom345 = sext i32 %add344 to i64
  %arrayidx346 = getelementptr inbounds i32, ptr %408, i64 %idxprom345
  %411 = load i32, ptr %arrayidx346, align 4, !tbaa !12
  %idxprom347 = sext i32 %411 to i64
  %arrayidx348 = getelementptr inbounds i32, ptr %407, i64 %idxprom347
  %412 = load i32, ptr %arrayidx348, align 4, !tbaa !12
  %413 = load i32, ptr %put, align 4, !tbaa !12
  %sub349 = sub nsw i32 %412, %413
  store i32 %sub349, ptr %room, align 4, !tbaa !12
  %414 = load i32, ptr %room, align 4, !tbaa !12
  %415 = load i32, ptr %rnz1, align 4, !tbaa !12
  %cmp350 = icmp slt i32 %414, %415
  br i1 %cmp350, label %if.then352, label %if.end374

if.then352:                                       ; preds = %for.end340
  %416 = load ptr, ptr %Wend, align 8, !tbaa !4
  %417 = load i32, ptr %m, align 4, !tbaa !12
  %418 = load i32, ptr %i, align 4, !tbaa !12
  %add353 = add nsw i32 %417, %418
  %idxprom354 = sext i32 %add353 to i64
  %arrayidx355 = getelementptr inbounds i32, ptr %416, i64 %idxprom354
  %419 = load i32, ptr %arrayidx355, align 4, !tbaa !12
  %420 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %421 = load i32, ptr %m, align 4, !tbaa !12
  %422 = load i32, ptr %i, align 4, !tbaa !12
  %add356 = add nsw i32 %421, %422
  %idxprom357 = sext i32 %add356 to i64
  %arrayidx358 = getelementptr inbounds i32, ptr %420, i64 %idxprom357
  %423 = load i32, ptr %arrayidx358, align 4, !tbaa !12
  %sub359 = sub nsw i32 %419, %423
  store i32 %sub359, ptr %nz, align 4, !tbaa !12
  %424 = load i32, ptr %rnz1, align 4, !tbaa !12
  %conv360 = sitofp i32 %424 to double
  %425 = load double, ptr %stretch, align 8, !tbaa !26
  %426 = load i32, ptr %nz, align 4, !tbaa !12
  %427 = load i32, ptr %rnz1, align 4, !tbaa !12
  %add361 = add nsw i32 %426, %427
  %conv362 = sitofp i32 %add361 to double
  %428 = call double @llvm.fmuladd.f64(double %425, double %conv362, double %conv360)
  %429 = load i32, ptr %pad, align 4, !tbaa !12
  %conv364 = sitofp i32 %429 to double
  %add365 = fadd double %428, %conv364
  %conv366 = fptosi double %add365 to i32
  store i32 %conv366, ptr %room, align 4, !tbaa !12
  %430 = load i32, ptr %m, align 4, !tbaa !12
  %431 = load i32, ptr %i, align 4, !tbaa !12
  %add367 = add nsw i32 %430, %431
  %432 = load i32, ptr %m, align 4, !tbaa !12
  %mul368 = mul nsw i32 2, %432
  %433 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %434 = load ptr, ptr %Wend, align 8, !tbaa !4
  %435 = load ptr, ptr %Wflink, align 8, !tbaa !4
  %436 = load ptr, ptr %Wblink, align 8, !tbaa !4
  %437 = load ptr, ptr %Windex, align 8, !tbaa !4
  %438 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %439 = load i32, ptr %room, align 4, !tbaa !12
  call void @lu_file_reappend(i32 noundef %add367, i32 noundef %mul368, ptr noundef %433, ptr noundef %434, ptr noundef %435, ptr noundef %436, ptr noundef %437, ptr noundef %438, i32 noundef %439)
  %440 = load ptr, ptr %Wend, align 8, !tbaa !4
  %441 = load i32, ptr %m, align 4, !tbaa !12
  %442 = load i32, ptr %i, align 4, !tbaa !12
  %add369 = add nsw i32 %441, %442
  %idxprom370 = sext i32 %add369 to i64
  %arrayidx371 = getelementptr inbounds i32, ptr %440, i64 %idxprom370
  %443 = load i32, ptr %arrayidx371, align 4, !tbaa !12
  store i32 %443, ptr %put, align 4, !tbaa !12
  %444 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %nexpand372 = getelementptr inbounds %struct.lu, ptr %444, i32 0, i32 54
  %445 = load i32, ptr %nexpand372, align 4, !tbaa !46
  %inc373 = add nsw i32 %445, 1
  store i32 %inc373, ptr %nexpand372, align 4, !tbaa !46
  br label %if.end374

if.end374:                                        ; preds = %if.then352, %for.end340
  store i32 0, ptr %col_number, align 4, !tbaa !12
  %446 = load i32, ptr %rbeg, align 4, !tbaa !12
  %add375 = add nsw i32 %446, 1
  store i32 %add375, ptr %rpos, align 4, !tbaa !12
  br label %for.cond376

for.cond376:                                      ; preds = %for.inc390, %if.end374
  %447 = load i32, ptr %rpos, align 4, !tbaa !12
  %448 = load i32, ptr %rend, align 4, !tbaa !12
  %cmp377 = icmp slt i32 %447, %448
  br i1 %cmp377, label %for.body379, label %for.end393

for.body379:                                      ; preds = %for.cond376
  %449 = load ptr, ptr %cancelled, align 8, !tbaa !4
  %450 = load i32, ptr %col_number, align 4, !tbaa !12
  %idxprom380 = sext i32 %450 to i64
  %arrayidx381 = getelementptr inbounds i64, ptr %449, i64 %idxprom380
  %451 = load i64, ptr %arrayidx381, align 8, !tbaa !49
  %452 = load i64, ptr %mask, align 8, !tbaa !49
  %and = and i64 %451, %452
  %tobool382 = icmp ne i64 %and, 0
  br i1 %tobool382, label %if.end389, label %if.then383

if.then383:                                       ; preds = %for.body379
  %453 = load ptr, ptr %Windex, align 8, !tbaa !4
  %454 = load i32, ptr %rpos, align 4, !tbaa !12
  %idxprom384 = sext i32 %454 to i64
  %arrayidx385 = getelementptr inbounds i32, ptr %453, i64 %idxprom384
  %455 = load i32, ptr %arrayidx385, align 4, !tbaa !12
  %456 = load ptr, ptr %Windex, align 8, !tbaa !4
  %457 = load i32, ptr %put, align 4, !tbaa !12
  %inc386 = add nsw i32 %457, 1
  store i32 %inc386, ptr %put, align 4, !tbaa !12
  %idxprom387 = sext i32 %457 to i64
  %arrayidx388 = getelementptr inbounds i32, ptr %456, i64 %idxprom387
  store i32 %455, ptr %arrayidx388, align 4, !tbaa !12
  br label %if.end389

if.end389:                                        ; preds = %if.then383, %for.body379
  br label %for.inc390

for.inc390:                                       ; preds = %if.end389
  %458 = load i32, ptr %rpos, align 4, !tbaa !12
  %inc391 = add nsw i32 %458, 1
  store i32 %inc391, ptr %rpos, align 4, !tbaa !12
  %459 = load i32, ptr %col_number, align 4, !tbaa !12
  %inc392 = add nsw i32 %459, 1
  store i32 %inc392, ptr %col_number, align 4, !tbaa !12
  br label %for.cond376

for.end393:                                       ; preds = %for.cond376
  %460 = load i32, ptr %put, align 4, !tbaa !12
  %461 = load ptr, ptr %Wend, align 8, !tbaa !4
  %462 = load i32, ptr %m, align 4, !tbaa !12
  %463 = load i32, ptr %i, align 4, !tbaa !12
  %add394 = add nsw i32 %462, %463
  %idxprom395 = sext i32 %add394 to i64
  %arrayidx396 = getelementptr inbounds i32, ptr %461, i64 %idxprom395
  store i32 %460, ptr %arrayidx396, align 4, !tbaa !12
  %464 = load ptr, ptr %Wend, align 8, !tbaa !4
  %465 = load i32, ptr %m, align 4, !tbaa !12
  %466 = load i32, ptr %i, align 4, !tbaa !12
  %add397 = add nsw i32 %465, %466
  %idxprom398 = sext i32 %add397 to i64
  %arrayidx399 = getelementptr inbounds i32, ptr %464, i64 %idxprom398
  %467 = load i32, ptr %arrayidx399, align 4, !tbaa !12
  %468 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %469 = load i32, ptr %m, align 4, !tbaa !12
  %470 = load i32, ptr %i, align 4, !tbaa !12
  %add400 = add nsw i32 %469, %470
  %idxprom401 = sext i32 %add400 to i64
  %arrayidx402 = getelementptr inbounds i32, ptr %468, i64 %idxprom401
  %471 = load i32, ptr %arrayidx402, align 4, !tbaa !12
  %sub403 = sub nsw i32 %467, %471
  store i32 %sub403, ptr %nz, align 4, !tbaa !12
  %472 = load i32, ptr %i, align 4, !tbaa !12
  %473 = load i32, ptr %nz, align 4, !tbaa !12
  %474 = load ptr, ptr %rowcount_flink, align 8, !tbaa !4
  %475 = load ptr, ptr %rowcount_blink, align 8, !tbaa !4
  %476 = load i32, ptr %m, align 4, !tbaa !12
  %477 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %min_rownz = getelementptr inbounds %struct.lu, ptr %477, i32 0, i32 70
  call void @lu_list_move(i32 noundef %472, i32 noundef %473, ptr noundef %474, ptr noundef %475, i32 noundef %476, ptr noundef %min_rownz)
  br label %for.inc404

for.inc404:                                       ; preds = %for.end393
  %478 = load i32, ptr %pos, align 4, !tbaa !12
  %inc405 = add nsw i32 %478, 1
  store i32 %inc405, ptr %pos, align 4, !tbaa !12
  %479 = load i64, ptr %mask, align 8, !tbaa !49
  %shl406 = shl i64 %479, 1
  store i64 %shl406, ptr %mask, align 8, !tbaa !49
  br label %for.cond306

for.end407:                                       ; preds = %for.cond306
  %480 = load i32, ptr %rbeg, align 4, !tbaa !12
  store i32 %480, ptr %rpos, align 4, !tbaa !12
  br label %for.cond408

for.cond408:                                      ; preds = %for.inc416, %for.end407
  %481 = load i32, ptr %rpos, align 4, !tbaa !12
  %482 = load i32, ptr %rend, align 4, !tbaa !12
  %cmp409 = icmp slt i32 %481, %482
  br i1 %cmp409, label %for.body411, label %for.end418

for.body411:                                      ; preds = %for.cond408
  %483 = load ptr, ptr %marked, align 8, !tbaa !4
  %484 = load ptr, ptr %Windex, align 8, !tbaa !4
  %485 = load i32, ptr %rpos, align 4, !tbaa !12
  %idxprom412 = sext i32 %485 to i64
  %arrayidx413 = getelementptr inbounds i32, ptr %484, i64 %idxprom412
  %486 = load i32, ptr %arrayidx413, align 4, !tbaa !12
  %idxprom414 = sext i32 %486 to i64
  %arrayidx415 = getelementptr inbounds i32, ptr %483, i64 %idxprom414
  store i32 0, ptr %arrayidx415, align 4, !tbaa !12
  br label %for.inc416

for.inc416:                                       ; preds = %for.body411
  %487 = load i32, ptr %rpos, align 4, !tbaa !12
  %inc417 = add nsw i32 %487, 1
  store i32 %inc417, ptr %rpos, align 4, !tbaa !12
  br label %for.cond408

for.end418:                                       ; preds = %for.cond408
  %488 = load ptr, ptr %Lbegin_p, align 8, !tbaa !4
  %489 = load i32, ptr %rank, align 4, !tbaa !12
  %idxprom419 = sext i32 %489 to i64
  %arrayidx420 = getelementptr inbounds i32, ptr %488, i64 %idxprom419
  %490 = load i32, ptr %arrayidx420, align 4, !tbaa !12
  store i32 %490, ptr %put, align 4, !tbaa !12
  %491 = load i32, ptr %cbeg, align 4, !tbaa !12
  %add421 = add nsw i32 %491, 1
  store i32 %add421, ptr %pos, align 4, !tbaa !12
  br label %for.cond422

for.cond422:                                      ; preds = %for.inc440, %for.end418
  %492 = load i32, ptr %pos, align 4, !tbaa !12
  %493 = load i32, ptr %cend, align 4, !tbaa !12
  %cmp423 = icmp slt i32 %492, %493
  br i1 %cmp423, label %for.body425, label %for.end442

for.body425:                                      ; preds = %for.cond422
  %494 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %495 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom426 = sext i32 %495 to i64
  %arrayidx427 = getelementptr inbounds double, ptr %494, i64 %idxprom426
  %496 = load double, ptr %arrayidx427, align 8, !tbaa !26
  %497 = load double, ptr %pivot, align 8, !tbaa !26
  %div428 = fdiv double %496, %497
  store double %div428, ptr %x, align 8, !tbaa !26
  %498 = load double, ptr %x, align 8, !tbaa !26
  %499 = call double @llvm.fabs.f64(double %498)
  %500 = load double, ptr %droptol, align 8, !tbaa !26
  %cmp429 = fcmp ogt double %499, %500
  br i1 %cmp429, label %if.then431, label %if.end439

if.then431:                                       ; preds = %for.body425
  %501 = load ptr, ptr %Windex, align 8, !tbaa !4
  %502 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom432 = sext i32 %502 to i64
  %arrayidx433 = getelementptr inbounds i32, ptr %501, i64 %idxprom432
  %503 = load i32, ptr %arrayidx433, align 4, !tbaa !12
  %504 = load ptr, ptr %Lindex, align 8, !tbaa !4
  %505 = load i32, ptr %put, align 4, !tbaa !12
  %idxprom434 = sext i32 %505 to i64
  %arrayidx435 = getelementptr inbounds i32, ptr %504, i64 %idxprom434
  store i32 %503, ptr %arrayidx435, align 4, !tbaa !12
  %506 = load double, ptr %x, align 8, !tbaa !26
  %507 = load ptr, ptr %Lvalue, align 8, !tbaa !4
  %508 = load i32, ptr %put, align 4, !tbaa !12
  %inc436 = add nsw i32 %508, 1
  store i32 %inc436, ptr %put, align 4, !tbaa !12
  %idxprom437 = sext i32 %508 to i64
  %arrayidx438 = getelementptr inbounds double, ptr %507, i64 %idxprom437
  store double %506, ptr %arrayidx438, align 8, !tbaa !26
  br label %if.end439

if.end439:                                        ; preds = %if.then431, %for.body425
  br label %for.inc440

for.inc440:                                       ; preds = %if.end439
  %509 = load i32, ptr %pos, align 4, !tbaa !12
  %inc441 = add nsw i32 %509, 1
  store i32 %inc441, ptr %pos, align 4, !tbaa !12
  br label %for.cond422

for.end442:                                       ; preds = %for.cond422
  %510 = load ptr, ptr %Lindex, align 8, !tbaa !4
  %511 = load i32, ptr %put, align 4, !tbaa !12
  %inc443 = add nsw i32 %511, 1
  store i32 %inc443, ptr %put, align 4, !tbaa !12
  %idxprom444 = sext i32 %511 to i64
  %arrayidx445 = getelementptr inbounds i32, ptr %510, i64 %idxprom444
  store i32 -1, ptr %arrayidx445, align 4, !tbaa !12
  %512 = load i32, ptr %put, align 4, !tbaa !12
  %513 = load ptr, ptr %Lbegin_p, align 8, !tbaa !4
  %514 = load i32, ptr %rank, align 4, !tbaa !12
  %add446 = add nsw i32 %514, 1
  %idxprom447 = sext i32 %add446 to i64
  %arrayidx448 = getelementptr inbounds i32, ptr %513, i64 %idxprom447
  store i32 %512, ptr %arrayidx448, align 4, !tbaa !12
  %515 = load i32, ptr %Uput, align 4, !tbaa !12
  %516 = load ptr, ptr %Ubegin, align 8, !tbaa !4
  %517 = load i32, ptr %rank, align 4, !tbaa !12
  %add449 = add nsw i32 %517, 1
  %idxprom450 = sext i32 %add449 to i64
  %arrayidx451 = getelementptr inbounds i32, ptr %516, i64 %idxprom450
  store i32 %515, ptr %arrayidx451, align 4, !tbaa !12
  %518 = load double, ptr %pivot, align 8, !tbaa !26
  %519 = load ptr, ptr %colmax, align 8, !tbaa !4
  %520 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom452 = sext i32 %520 to i64
  %arrayidx453 = getelementptr inbounds double, ptr %519, i64 %idxprom452
  store double %518, ptr %arrayidx453, align 8, !tbaa !26
  %521 = load i32, ptr %cbeg, align 4, !tbaa !12
  %522 = load ptr, ptr %Wend, align 8, !tbaa !4
  %523 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom454 = sext i32 %523 to i64
  %arrayidx455 = getelementptr inbounds i32, ptr %522, i64 %idxprom454
  store i32 %521, ptr %arrayidx455, align 4, !tbaa !12
  %524 = load i32, ptr %rbeg, align 4, !tbaa !12
  %525 = load ptr, ptr %Wend, align 8, !tbaa !4
  %526 = load i32, ptr %m, align 4, !tbaa !12
  %527 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %add456 = add nsw i32 %526, %527
  %idxprom457 = sext i32 %add456 to i64
  %arrayidx458 = getelementptr inbounds i32, ptr %525, i64 %idxprom457
  store i32 %524, ptr %arrayidx458, align 4, !tbaa !12
  %528 = load ptr, ptr %colcount_flink, align 8, !tbaa !4
  %529 = load ptr, ptr %colcount_blink, align 8, !tbaa !4
  %530 = load i32, ptr %pivot_col, align 4, !tbaa !12
  call void @lu_list_remove(ptr noundef %528, ptr noundef %529, i32 noundef %530)
  %531 = load ptr, ptr %rowcount_flink, align 8, !tbaa !4
  %532 = load ptr, ptr %rowcount_blink, align 8, !tbaa !4
  %533 = load i32, ptr %pivot_row, align 4, !tbaa !12
  call void @lu_list_remove(ptr noundef %531, ptr noundef %532, i32 noundef %533)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end442, %if.then113
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %wx) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %xrj) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmx) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pivot) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %col_number) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %position) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %found) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %room) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %grow) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %wi) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nz) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %where) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %Uput) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %put) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rpos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rnz1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnz1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rend) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rbeg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cend) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cbeg) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %cancelled) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %work) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %marked) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wvalue) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Windex) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Uvalue) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Uindex) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Lvalue) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Lindex) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wblink) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wflink) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wend) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wbegin) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ubegin) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Lbegin_p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %colmax) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rowcount_blink) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rowcount_flink) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %colcount_blink) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %colcount_flink) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pivot_row) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pivot_col) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %stretch) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pad) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %droptol) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rank) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #5
  %534 = load i32, ptr %retval, align 4
  ret i32 %534
}

; Function Attrs: nounwind uwtable
define internal i32 @lu_pivot_any(ptr noundef %this) #0 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca ptr, align 8
  %m = alloca i32, align 4
  %rank = alloca i32, align 4
  %droptol = alloca double, align 8
  %pad = alloca i32, align 4
  %stretch = alloca double, align 8
  %pivot_col = alloca i32, align 4
  %pivot_row = alloca i32, align 4
  %colcount_flink = alloca ptr, align 8
  %colcount_blink = alloca ptr, align 8
  %rowcount_flink = alloca ptr, align 8
  %rowcount_blink = alloca ptr, align 8
  %colmax = alloca ptr, align 8
  %Lbegin_p = alloca ptr, align 8
  %Ubegin = alloca ptr, align 8
  %Wbegin = alloca ptr, align 8
  %Wend = alloca ptr, align 8
  %Wflink = alloca ptr, align 8
  %Wblink = alloca ptr, align 8
  %Lindex = alloca ptr, align 8
  %Lvalue = alloca ptr, align 8
  %Uindex = alloca ptr, align 8
  %Uvalue = alloca ptr, align 8
  %Windex = alloca ptr, align 8
  %Wvalue = alloca ptr, align 8
  %marked = alloca ptr, align 8
  %work = alloca ptr, align 8
  %cbeg = alloca i32, align 4
  %cend = alloca i32, align 4
  %rbeg = alloca i32, align 4
  %rend = alloca i32, align 4
  %cnz1 = alloca i32, align 4
  %rnz1 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pos = alloca i32, align 4
  %pos1 = alloca i32, align 4
  %rpos = alloca i32, align 4
  %put = alloca i32, align 4
  %Uput = alloca i32, align 4
  %where = alloca i32, align 4
  %nz = alloca i32, align 4
  %wi = alloca ptr, align 8
  %grow = alloca i32, align 4
  %room = alloca i32, align 4
  %found = alloca i32, align 4
  %position = alloca i32, align 4
  %pivot = alloca double, align 8
  %a = alloca double, align 8
  %x = alloca double, align 8
  %cmx = alloca double, align 8
  %xrj = alloca double, align 8
  %wx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %m1 = getelementptr inbounds %struct.lu, ptr %0, i32 0, i32 13
  %1 = load i32, ptr %m1, align 4, !tbaa !8
  store i32 %1, ptr %m, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %rank) #5
  %2 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %rank2 = getelementptr inbounds %struct.lu, ptr %2, i32 0, i32 50
  %3 = load i32, ptr %rank2, align 4, !tbaa !13
  store i32 %3, ptr %rank, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %droptol) #5
  %4 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %droptol3 = getelementptr inbounds %struct.lu, ptr %4, i32 0, i32 3
  %5 = load double, ptr %droptol3, align 8, !tbaa !29
  store double %5, ptr %droptol, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %pad) #5
  %6 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %pad4 = getelementptr inbounds %struct.lu, ptr %6, i32 0, i32 8
  %7 = load i32, ptr %pad4, align 8, !tbaa !39
  store i32 %7, ptr %pad, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %stretch) #5
  %8 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %stretch5 = getelementptr inbounds %struct.lu, ptr %8, i32 0, i32 9
  %9 = load double, ptr %stretch5, align 8, !tbaa !40
  store double %9, ptr %stretch, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %pivot_col) #5
  %10 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %pivot_col6 = getelementptr inbounds %struct.lu, ptr %10, i32 0, i32 63
  %11 = load i32, ptr %pivot_col6, align 8, !tbaa !16
  store i32 %11, ptr %pivot_col, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %pivot_row) #5
  %12 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %pivot_row7 = getelementptr inbounds %struct.lu, ptr %12, i32 0, i32 62
  %13 = load i32, ptr %pivot_row7, align 4, !tbaa !17
  store i32 %13, ptr %pivot_row, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %colcount_flink) #5
  %14 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %colcount_flink8 = getelementptr inbounds %struct.lu, ptr %14, i32 0, i32 77
  %15 = load ptr, ptr %colcount_flink8, align 8, !tbaa !30
  store ptr %15, ptr %colcount_flink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %colcount_blink) #5
  %16 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %colcount_blink9 = getelementptr inbounds %struct.lu, ptr %16, i32 0, i32 79
  %17 = load ptr, ptr %colcount_blink9, align 8, !tbaa !31
  store ptr %17, ptr %colcount_blink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rowcount_flink) #5
  %18 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %rowcount_flink10 = getelementptr inbounds %struct.lu, ptr %18, i32 0, i32 81
  %19 = load ptr, ptr %rowcount_flink10, align 8, !tbaa !32
  store ptr %19, ptr %rowcount_flink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rowcount_blink) #5
  %20 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %rowcount_blink11 = getelementptr inbounds %struct.lu, ptr %20, i32 0, i32 84
  %21 = load ptr, ptr %rowcount_blink11, align 8, !tbaa !33
  store ptr %21, ptr %rowcount_blink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %colmax) #5
  %22 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %col_pivot = getelementptr inbounds %struct.lu, ptr %22, i32 0, i32 104
  %23 = load ptr, ptr %col_pivot, align 8, !tbaa !18
  store ptr %23, ptr %colmax, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Lbegin_p) #5
  %24 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Lbegin_p12 = getelementptr inbounds %struct.lu, ptr %24, i32 0, i32 98
  %25 = load ptr, ptr %Lbegin_p12, align 8, !tbaa !19
  store ptr %25, ptr %Lbegin_p, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ubegin) #5
  %26 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Ubegin13 = getelementptr inbounds %struct.lu, ptr %26, i32 0, i32 99
  %27 = load ptr, ptr %Ubegin13, align 8, !tbaa !20
  store ptr %27, ptr %Ubegin, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wbegin) #5
  %28 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wbegin14 = getelementptr inbounds %struct.lu, ptr %28, i32 0, i32 86
  %29 = load ptr, ptr %Wbegin14, align 8, !tbaa !21
  store ptr %29, ptr %Wbegin, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wend) #5
  %30 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wend15 = getelementptr inbounds %struct.lu, ptr %30, i32 0, i32 88
  %31 = load ptr, ptr %Wend15, align 8, !tbaa !22
  store ptr %31, ptr %Wend, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wflink) #5
  %32 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wflink16 = getelementptr inbounds %struct.lu, ptr %32, i32 0, i32 90
  %33 = load ptr, ptr %Wflink16, align 8, !tbaa !41
  store ptr %33, ptr %Wflink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wblink) #5
  %34 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wblink17 = getelementptr inbounds %struct.lu, ptr %34, i32 0, i32 92
  %35 = load ptr, ptr %Wblink17, align 8, !tbaa !42
  store ptr %35, ptr %Wblink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Lindex) #5
  %36 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Lindex18 = getelementptr inbounds %struct.lu, ptr %36, i32 0, i32 71
  %37 = load ptr, ptr %Lindex18, align 8, !tbaa !34
  store ptr %37, ptr %Lindex, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Lvalue) #5
  %38 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Lvalue19 = getelementptr inbounds %struct.lu, ptr %38, i32 0, i32 74
  %39 = load ptr, ptr %Lvalue19, align 8, !tbaa !35
  store ptr %39, ptr %Lvalue, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Uindex) #5
  %40 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Uindex20 = getelementptr inbounds %struct.lu, ptr %40, i32 0, i32 72
  %41 = load ptr, ptr %Uindex20, align 8, !tbaa !23
  store ptr %41, ptr %Uindex, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Uvalue) #5
  %42 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Uvalue21 = getelementptr inbounds %struct.lu, ptr %42, i32 0, i32 75
  %43 = load ptr, ptr %Uvalue21, align 8, !tbaa !38
  store ptr %43, ptr %Uvalue, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Windex) #5
  %44 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Windex22 = getelementptr inbounds %struct.lu, ptr %44, i32 0, i32 73
  %45 = load ptr, ptr %Windex22, align 8, !tbaa !36
  store ptr %45, ptr %Windex, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wvalue) #5
  %46 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wvalue23 = getelementptr inbounds %struct.lu, ptr %46, i32 0, i32 76
  %47 = load ptr, ptr %Wvalue23, align 8, !tbaa !37
  store ptr %47, ptr %Wvalue, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %marked) #5
  %48 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %iwork0 = getelementptr inbounds %struct.lu, ptr %48, i32 0, i32 100
  %49 = load ptr, ptr %iwork0, align 8, !tbaa !43
  store ptr %49, ptr %marked, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %work) #5
  %50 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %work0 = getelementptr inbounds %struct.lu, ptr %50, i32 0, i32 102
  %51 = load ptr, ptr %work0, align 8, !tbaa !47
  store ptr %51, ptr %work, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cbeg) #5
  %52 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %53 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom = sext i32 %53 to i64
  %arrayidx = getelementptr inbounds i32, ptr %52, i64 %idxprom
  %54 = load i32, ptr %arrayidx, align 4, !tbaa !12
  store i32 %54, ptr %cbeg, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %cend) #5
  %55 = load ptr, ptr %Wend, align 8, !tbaa !4
  %56 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom24 = sext i32 %56 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %55, i64 %idxprom24
  %57 = load i32, ptr %arrayidx25, align 4, !tbaa !12
  store i32 %57, ptr %cend, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %rbeg) #5
  %58 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %59 = load i32, ptr %m, align 4, !tbaa !12
  %60 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %add = add nsw i32 %59, %60
  %idxprom26 = sext i32 %add to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %58, i64 %idxprom26
  %61 = load i32, ptr %arrayidx27, align 4, !tbaa !12
  store i32 %61, ptr %rbeg, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %rend) #5
  %62 = load ptr, ptr %Wend, align 8, !tbaa !4
  %63 = load i32, ptr %m, align 4, !tbaa !12
  %64 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %add28 = add nsw i32 %63, %64
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %62, i64 %idxprom29
  %65 = load i32, ptr %arrayidx30, align 4, !tbaa !12
  store i32 %65, ptr %rend, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnz1) #5
  %66 = load i32, ptr %cend, align 4, !tbaa !12
  %67 = load i32, ptr %cbeg, align 4, !tbaa !12
  %sub = sub nsw i32 %66, %67
  %sub31 = sub nsw i32 %sub, 1
  store i32 %sub31, ptr %cnz1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %rnz1) #5
  %68 = load i32, ptr %rend, align 4, !tbaa !12
  %69 = load i32, ptr %rbeg, align 4, !tbaa !12
  %sub32 = sub nsw i32 %68, %69
  %sub33 = sub nsw i32 %sub32, 1
  store i32 %sub33, ptr %rnz1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %rpos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %put) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %Uput) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %where) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nz) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %wi) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %grow) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %room) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %found) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %position) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %pivot) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmx) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %xrj) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %wx) #5
  store i32 0, ptr %grow, align 4, !tbaa !12
  store i32 -1, ptr %where, align 4, !tbaa !12
  %70 = load i32, ptr %cbeg, align 4, !tbaa !12
  store i32 %70, ptr %pos, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %71 = load i32, ptr %pos, align 4, !tbaa !12
  %72 = load i32, ptr %cend, align 4, !tbaa !12
  %cmp = icmp slt i32 %71, %72
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %73 = load ptr, ptr %Windex, align 8, !tbaa !4
  %74 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom34 = sext i32 %74 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %73, i64 %idxprom34
  %75 = load i32, ptr %arrayidx35, align 4, !tbaa !12
  store i32 %75, ptr %i, align 4, !tbaa !12
  %76 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %cmp36 = icmp eq i32 %75, %76
  br i1 %cmp36, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %77 = load i32, ptr %pos, align 4, !tbaa !12
  store i32 %77, ptr %where, align 4, !tbaa !12
  br label %if.end

if.else:                                          ; preds = %for.body
  %78 = load ptr, ptr %Wend, align 8, !tbaa !4
  %79 = load i32, ptr %m, align 4, !tbaa !12
  %80 = load i32, ptr %i, align 4, !tbaa !12
  %add37 = add nsw i32 %79, %80
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %78, i64 %idxprom38
  %81 = load i32, ptr %arrayidx39, align 4, !tbaa !12
  %82 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %83 = load i32, ptr %m, align 4, !tbaa !12
  %84 = load i32, ptr %i, align 4, !tbaa !12
  %add40 = add nsw i32 %83, %84
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %82, i64 %idxprom41
  %85 = load i32, ptr %arrayidx42, align 4, !tbaa !12
  %sub43 = sub nsw i32 %81, %85
  store i32 %sub43, ptr %nz, align 4, !tbaa !12
  %86 = load i32, ptr %nz, align 4, !tbaa !12
  %87 = load i32, ptr %rnz1, align 4, !tbaa !12
  %add44 = add nsw i32 %86, %87
  %conv = sitofp i32 %add44 to double
  %88 = load double, ptr %stretch, align 8, !tbaa !26
  %89 = load i32, ptr %nz, align 4, !tbaa !12
  %90 = load i32, ptr %rnz1, align 4, !tbaa !12
  %add45 = add nsw i32 %89, %90
  %conv46 = sitofp i32 %add45 to double
  %91 = call double @llvm.fmuladd.f64(double %88, double %conv46, double %conv)
  %92 = load i32, ptr %pad, align 4, !tbaa !12
  %conv47 = sitofp i32 %92 to double
  %add48 = fadd double %91, %conv47
  %93 = load i32, ptr %grow, align 4, !tbaa !12
  %conv49 = sitofp i32 %93 to double
  %add50 = fadd double %conv49, %add48
  %conv51 = fptosi double %add50 to i32
  store i32 %conv51, ptr %grow, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %94 = load i32, ptr %pos, align 4, !tbaa !12
  %inc = add nsw i32 %94, 1
  store i32 %inc, ptr %pos, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %95 = load ptr, ptr %Windex, align 8, !tbaa !4
  %96 = load i32, ptr %cbeg, align 4, !tbaa !12
  %97 = load i32, ptr %where, align 4, !tbaa !12
  call void @lu_iswap(ptr noundef %95, i32 noundef %96, i32 noundef %97)
  %98 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %99 = load i32, ptr %cbeg, align 4, !tbaa !12
  %100 = load i32, ptr %where, align 4, !tbaa !12
  call void @lu_fswap(ptr noundef %98, i32 noundef %99, i32 noundef %100)
  %101 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %102 = load i32, ptr %cbeg, align 4, !tbaa !12
  %idxprom52 = sext i32 %102 to i64
  %arrayidx53 = getelementptr inbounds double, ptr %101, i64 %idxprom52
  %103 = load double, ptr %arrayidx53, align 8, !tbaa !26
  store double %103, ptr %pivot, align 8, !tbaa !26
  store i32 -1, ptr %where, align 4, !tbaa !12
  %104 = load i32, ptr %rbeg, align 4, !tbaa !12
  store i32 %104, ptr %rpos, align 4, !tbaa !12
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc79, %for.end
  %105 = load i32, ptr %rpos, align 4, !tbaa !12
  %106 = load i32, ptr %rend, align 4, !tbaa !12
  %cmp55 = icmp slt i32 %105, %106
  br i1 %cmp55, label %for.body57, label %for.end81

for.body57:                                       ; preds = %for.cond54
  %107 = load ptr, ptr %Windex, align 8, !tbaa !4
  %108 = load i32, ptr %rpos, align 4, !tbaa !12
  %idxprom58 = sext i32 %108 to i64
  %arrayidx59 = getelementptr inbounds i32, ptr %107, i64 %idxprom58
  %109 = load i32, ptr %arrayidx59, align 4, !tbaa !12
  store i32 %109, ptr %j, align 4, !tbaa !12
  %110 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %cmp60 = icmp eq i32 %109, %110
  br i1 %cmp60, label %if.then62, label %if.else63

if.then62:                                        ; preds = %for.body57
  %111 = load i32, ptr %rpos, align 4, !tbaa !12
  store i32 %111, ptr %where, align 4, !tbaa !12
  br label %if.end78

if.else63:                                        ; preds = %for.body57
  %112 = load ptr, ptr %Wend, align 8, !tbaa !4
  %113 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom64 = sext i32 %113 to i64
  %arrayidx65 = getelementptr inbounds i32, ptr %112, i64 %idxprom64
  %114 = load i32, ptr %arrayidx65, align 4, !tbaa !12
  %115 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %116 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom66 = sext i32 %116 to i64
  %arrayidx67 = getelementptr inbounds i32, ptr %115, i64 %idxprom66
  %117 = load i32, ptr %arrayidx67, align 4, !tbaa !12
  %sub68 = sub nsw i32 %114, %117
  store i32 %sub68, ptr %nz, align 4, !tbaa !12
  %118 = load i32, ptr %nz, align 4, !tbaa !12
  %119 = load i32, ptr %cnz1, align 4, !tbaa !12
  %add69 = add nsw i32 %118, %119
  %conv70 = sitofp i32 %add69 to double
  %120 = load double, ptr %stretch, align 8, !tbaa !26
  %121 = load i32, ptr %nz, align 4, !tbaa !12
  %122 = load i32, ptr %cnz1, align 4, !tbaa !12
  %add71 = add nsw i32 %121, %122
  %conv72 = sitofp i32 %add71 to double
  %123 = call double @llvm.fmuladd.f64(double %120, double %conv72, double %conv70)
  %124 = load i32, ptr %pad, align 4, !tbaa !12
  %conv73 = sitofp i32 %124 to double
  %add74 = fadd double %123, %conv73
  %125 = load i32, ptr %grow, align 4, !tbaa !12
  %conv75 = sitofp i32 %125 to double
  %add76 = fadd double %conv75, %add74
  %conv77 = fptosi double %add76 to i32
  store i32 %conv77, ptr %grow, align 4, !tbaa !12
  br label %if.end78

if.end78:                                         ; preds = %if.else63, %if.then62
  br label %for.inc79

for.inc79:                                        ; preds = %if.end78
  %126 = load i32, ptr %rpos, align 4, !tbaa !12
  %inc80 = add nsw i32 %126, 1
  store i32 %inc80, ptr %rpos, align 4, !tbaa !12
  br label %for.cond54

for.end81:                                        ; preds = %for.cond54
  %127 = load ptr, ptr %Windex, align 8, !tbaa !4
  %128 = load i32, ptr %rbeg, align 4, !tbaa !12
  %129 = load i32, ptr %where, align 4, !tbaa !12
  call void @lu_iswap(ptr noundef %127, i32 noundef %128, i32 noundef %129)
  %130 = load ptr, ptr %Wend, align 8, !tbaa !4
  %131 = load i32, ptr %m, align 4, !tbaa !12
  %mul = mul nsw i32 2, %131
  %idxprom82 = sext i32 %mul to i64
  %arrayidx83 = getelementptr inbounds i32, ptr %130, i64 %idxprom82
  %132 = load i32, ptr %arrayidx83, align 4, !tbaa !12
  %133 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %134 = load i32, ptr %m, align 4, !tbaa !12
  %mul84 = mul nsw i32 2, %134
  %idxprom85 = sext i32 %mul84 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %133, i64 %idxprom85
  %135 = load i32, ptr %arrayidx86, align 4, !tbaa !12
  %sub87 = sub nsw i32 %132, %135
  store i32 %sub87, ptr %room, align 4, !tbaa !12
  %136 = load i32, ptr %grow, align 4, !tbaa !12
  %137 = load i32, ptr %room, align 4, !tbaa !12
  %cmp88 = icmp sgt i32 %136, %137
  br i1 %cmp88, label %if.then90, label %if.end110

if.then90:                                        ; preds = %for.end81
  %138 = load i32, ptr %m, align 4, !tbaa !12
  %mul91 = mul nsw i32 2, %138
  %139 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %140 = load ptr, ptr %Wend, align 8, !tbaa !4
  %141 = load ptr, ptr %Wflink, align 8, !tbaa !4
  %142 = load ptr, ptr %Windex, align 8, !tbaa !4
  %143 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %144 = load double, ptr %stretch, align 8, !tbaa !26
  %145 = load i32, ptr %pad, align 4, !tbaa !12
  %call = call i32 @lu_file_compress(i32 noundef %mul91, ptr noundef %139, ptr noundef %140, ptr noundef %141, ptr noundef %142, ptr noundef %143, double noundef %144, i32 noundef %145)
  %146 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %147 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom92 = sext i32 %147 to i64
  %arrayidx93 = getelementptr inbounds i32, ptr %146, i64 %idxprom92
  %148 = load i32, ptr %arrayidx93, align 4, !tbaa !12
  store i32 %148, ptr %cbeg, align 4, !tbaa !12
  %149 = load ptr, ptr %Wend, align 8, !tbaa !4
  %150 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom94 = sext i32 %150 to i64
  %arrayidx95 = getelementptr inbounds i32, ptr %149, i64 %idxprom94
  %151 = load i32, ptr %arrayidx95, align 4, !tbaa !12
  store i32 %151, ptr %cend, align 4, !tbaa !12
  %152 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %153 = load i32, ptr %m, align 4, !tbaa !12
  %154 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %add96 = add nsw i32 %153, %154
  %idxprom97 = sext i32 %add96 to i64
  %arrayidx98 = getelementptr inbounds i32, ptr %152, i64 %idxprom97
  %155 = load i32, ptr %arrayidx98, align 4, !tbaa !12
  store i32 %155, ptr %rbeg, align 4, !tbaa !12
  %156 = load ptr, ptr %Wend, align 8, !tbaa !4
  %157 = load i32, ptr %m, align 4, !tbaa !12
  %158 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %add99 = add nsw i32 %157, %158
  %idxprom100 = sext i32 %add99 to i64
  %arrayidx101 = getelementptr inbounds i32, ptr %156, i64 %idxprom100
  %159 = load i32, ptr %arrayidx101, align 4, !tbaa !12
  store i32 %159, ptr %rend, align 4, !tbaa !12
  %160 = load ptr, ptr %Wend, align 8, !tbaa !4
  %161 = load i32, ptr %m, align 4, !tbaa !12
  %mul102 = mul nsw i32 2, %161
  %idxprom103 = sext i32 %mul102 to i64
  %arrayidx104 = getelementptr inbounds i32, ptr %160, i64 %idxprom103
  %162 = load i32, ptr %arrayidx104, align 4, !tbaa !12
  %163 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %164 = load i32, ptr %m, align 4, !tbaa !12
  %mul105 = mul nsw i32 2, %164
  %idxprom106 = sext i32 %mul105 to i64
  %arrayidx107 = getelementptr inbounds i32, ptr %163, i64 %idxprom106
  %165 = load i32, ptr %arrayidx107, align 4, !tbaa !12
  %sub108 = sub nsw i32 %162, %165
  store i32 %sub108, ptr %room, align 4, !tbaa !12
  %166 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %ngarbage = getelementptr inbounds %struct.lu, ptr %166, i32 0, i32 55
  %167 = load i32, ptr %ngarbage, align 8, !tbaa !44
  %inc109 = add nsw i32 %167, 1
  store i32 %inc109, ptr %ngarbage, align 8, !tbaa !44
  br label %if.end110

if.end110:                                        ; preds = %if.then90, %for.end81
  %168 = load i32, ptr %grow, align 4, !tbaa !12
  %169 = load i32, ptr %room, align 4, !tbaa !12
  %cmp111 = icmp sgt i32 %168, %169
  br i1 %cmp111, label %if.then113, label %if.end115

if.then113:                                       ; preds = %if.end110
  %170 = load i32, ptr %grow, align 4, !tbaa !12
  %171 = load i32, ptr %room, align 4, !tbaa !12
  %sub114 = sub nsw i32 %170, %171
  %172 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %addmemW = getelementptr inbounds %struct.lu, ptr %172, i32 0, i32 16
  store i32 %sub114, ptr %addmemW, align 8, !tbaa !45
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end115:                                        ; preds = %if.end110
  %173 = load ptr, ptr %Ubegin, align 8, !tbaa !4
  %174 = load i32, ptr %rank, align 4, !tbaa !12
  %idxprom116 = sext i32 %174 to i64
  %arrayidx117 = getelementptr inbounds i32, ptr %173, i64 %idxprom116
  %175 = load i32, ptr %arrayidx117, align 4, !tbaa !12
  store i32 %175, ptr %Uput, align 4, !tbaa !12
  store i32 1, ptr %position, align 4, !tbaa !12
  %176 = load i32, ptr %cbeg, align 4, !tbaa !12
  %add118 = add nsw i32 %176, 1
  store i32 %add118, ptr %pos, align 4, !tbaa !12
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc128, %if.end115
  %177 = load i32, ptr %pos, align 4, !tbaa !12
  %178 = load i32, ptr %cend, align 4, !tbaa !12
  %cmp120 = icmp slt i32 %177, %178
  br i1 %cmp120, label %for.body122, label %for.end130

for.body122:                                      ; preds = %for.cond119
  %179 = load ptr, ptr %Windex, align 8, !tbaa !4
  %180 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom123 = sext i32 %180 to i64
  %arrayidx124 = getelementptr inbounds i32, ptr %179, i64 %idxprom123
  %181 = load i32, ptr %arrayidx124, align 4, !tbaa !12
  store i32 %181, ptr %i, align 4, !tbaa !12
  %182 = load i32, ptr %position, align 4, !tbaa !12
  %inc125 = add nsw i32 %182, 1
  store i32 %inc125, ptr %position, align 4, !tbaa !12
  %183 = load ptr, ptr %marked, align 8, !tbaa !4
  %184 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom126 = sext i32 %184 to i64
  %arrayidx127 = getelementptr inbounds i32, ptr %183, i64 %idxprom126
  store i32 %182, ptr %arrayidx127, align 4, !tbaa !12
  br label %for.inc128

for.inc128:                                       ; preds = %for.body122
  %185 = load i32, ptr %pos, align 4, !tbaa !12
  %inc129 = add nsw i32 %185, 1
  store i32 %inc129, ptr %pos, align 4, !tbaa !12
  br label %for.cond119

for.end130:                                       ; preds = %for.cond119
  %186 = load ptr, ptr %Windex, align 8, !tbaa !4
  %187 = load i32, ptr %cbeg, align 4, !tbaa !12
  %idx.ext = sext i32 %187 to i64
  %add.ptr = getelementptr inbounds i32, ptr %186, i64 %idx.ext
  store ptr %add.ptr, ptr %wi, align 8, !tbaa !4
  %188 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %189 = load i32, ptr %cbeg, align 4, !tbaa !12
  %idx.ext131 = sext i32 %189 to i64
  %add.ptr132 = getelementptr inbounds double, ptr %188, i64 %idx.ext131
  store ptr %add.ptr132, ptr %wx, align 8, !tbaa !4
  %190 = load i32, ptr %rbeg, align 4, !tbaa !12
  %add133 = add nsw i32 %190, 1
  store i32 %add133, ptr %rpos, align 4, !tbaa !12
  br label %for.cond134

for.cond134:                                      ; preds = %for.inc270, %for.end130
  %191 = load i32, ptr %rpos, align 4, !tbaa !12
  %192 = load i32, ptr %rend, align 4, !tbaa !12
  %cmp135 = icmp slt i32 %191, %192
  br i1 %cmp135, label %for.body137, label %for.end272

for.body137:                                      ; preds = %for.cond134
  %193 = load ptr, ptr %Windex, align 8, !tbaa !4
  %194 = load i32, ptr %rpos, align 4, !tbaa !12
  %idxprom138 = sext i32 %194 to i64
  %arrayidx139 = getelementptr inbounds i32, ptr %193, i64 %idxprom138
  %195 = load i32, ptr %arrayidx139, align 4, !tbaa !12
  store i32 %195, ptr %j, align 4, !tbaa !12
  store double 0.000000e+00, ptr %cmx, align 8, !tbaa !26
  store i32 -1, ptr %where, align 4, !tbaa !12
  %196 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %197 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom140 = sext i32 %197 to i64
  %arrayidx141 = getelementptr inbounds i32, ptr %196, i64 %idxprom140
  %198 = load i32, ptr %arrayidx141, align 4, !tbaa !12
  store i32 %198, ptr %pos1, align 4, !tbaa !12
  store i32 %198, ptr %put, align 4, !tbaa !12
  %199 = load i32, ptr %pos1, align 4, !tbaa !12
  store i32 %199, ptr %pos, align 4, !tbaa !12
  br label %for.cond142

for.cond142:                                      ; preds = %for.inc181, %for.body137
  %200 = load i32, ptr %pos, align 4, !tbaa !12
  %201 = load ptr, ptr %Wend, align 8, !tbaa !4
  %202 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom143 = sext i32 %202 to i64
  %arrayidx144 = getelementptr inbounds i32, ptr %201, i64 %idxprom143
  %203 = load i32, ptr %arrayidx144, align 4, !tbaa !12
  %cmp145 = icmp slt i32 %200, %203
  br i1 %cmp145, label %for.body147, label %for.end183

for.body147:                                      ; preds = %for.cond142
  %204 = load ptr, ptr %Windex, align 8, !tbaa !4
  %205 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom148 = sext i32 %205 to i64
  %arrayidx149 = getelementptr inbounds i32, ptr %204, i64 %idxprom148
  %206 = load i32, ptr %arrayidx149, align 4, !tbaa !12
  store i32 %206, ptr %i, align 4, !tbaa !12
  %207 = load ptr, ptr %marked, align 8, !tbaa !4
  %208 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom150 = sext i32 %208 to i64
  %arrayidx151 = getelementptr inbounds i32, ptr %207, i64 %idxprom150
  %209 = load i32, ptr %arrayidx151, align 4, !tbaa !12
  store i32 %209, ptr %position, align 4, !tbaa !12
  %cmp152 = icmp sgt i32 %209, 0
  br i1 %cmp152, label %if.then154, label %if.else159

if.then154:                                       ; preds = %for.body147
  %210 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %211 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom155 = sext i32 %211 to i64
  %arrayidx156 = getelementptr inbounds double, ptr %210, i64 %idxprom155
  %212 = load double, ptr %arrayidx156, align 8, !tbaa !26
  %213 = load ptr, ptr %work, align 8, !tbaa !4
  %214 = load i32, ptr %position, align 4, !tbaa !12
  %idxprom157 = sext i32 %214 to i64
  %arrayidx158 = getelementptr inbounds double, ptr %213, i64 %idxprom157
  store double %212, ptr %arrayidx158, align 8, !tbaa !26
  br label %if.end180

if.else159:                                       ; preds = %for.body147
  %215 = load i32, ptr %i, align 4, !tbaa !12
  %216 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %cmp160 = icmp eq i32 %215, %216
  br i1 %cmp160, label %if.then162, label %if.else163

if.then162:                                       ; preds = %if.else159
  %217 = load i32, ptr %put, align 4, !tbaa !12
  store i32 %217, ptr %where, align 4, !tbaa !12
  br label %if.end170

if.else163:                                       ; preds = %if.else159
  %218 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %219 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom164 = sext i32 %219 to i64
  %arrayidx165 = getelementptr inbounds double, ptr %218, i64 %idxprom164
  %220 = load double, ptr %arrayidx165, align 8, !tbaa !26
  %221 = call double @llvm.fabs.f64(double %220)
  store double %221, ptr %x, align 8, !tbaa !26
  %222 = load double, ptr %cmx, align 8, !tbaa !26
  %cmp166 = fcmp ogt double %221, %222
  br i1 %cmp166, label %if.then168, label %if.end169

if.then168:                                       ; preds = %if.else163
  %223 = load double, ptr %x, align 8, !tbaa !26
  store double %223, ptr %cmx, align 8, !tbaa !26
  br label %if.end169

if.end169:                                        ; preds = %if.then168, %if.else163
  br label %if.end170

if.end170:                                        ; preds = %if.end169, %if.then162
  %224 = load ptr, ptr %Windex, align 8, !tbaa !4
  %225 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom171 = sext i32 %225 to i64
  %arrayidx172 = getelementptr inbounds i32, ptr %224, i64 %idxprom171
  %226 = load i32, ptr %arrayidx172, align 4, !tbaa !12
  %227 = load ptr, ptr %Windex, align 8, !tbaa !4
  %228 = load i32, ptr %put, align 4, !tbaa !12
  %idxprom173 = sext i32 %228 to i64
  %arrayidx174 = getelementptr inbounds i32, ptr %227, i64 %idxprom173
  store i32 %226, ptr %arrayidx174, align 4, !tbaa !12
  %229 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %230 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom175 = sext i32 %230 to i64
  %arrayidx176 = getelementptr inbounds double, ptr %229, i64 %idxprom175
  %231 = load double, ptr %arrayidx176, align 8, !tbaa !26
  %232 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %233 = load i32, ptr %put, align 4, !tbaa !12
  %inc177 = add nsw i32 %233, 1
  store i32 %inc177, ptr %put, align 4, !tbaa !12
  %idxprom178 = sext i32 %233 to i64
  %arrayidx179 = getelementptr inbounds double, ptr %232, i64 %idxprom178
  store double %231, ptr %arrayidx179, align 8, !tbaa !26
  br label %if.end180

if.end180:                                        ; preds = %if.end170, %if.then154
  br label %for.inc181

for.inc181:                                       ; preds = %if.end180
  %234 = load i32, ptr %pos, align 4, !tbaa !12
  %inc182 = add nsw i32 %234, 1
  store i32 %inc182, ptr %pos, align 4, !tbaa !12
  br label %for.cond142

for.end183:                                       ; preds = %for.cond142
  %235 = load i32, ptr %put, align 4, !tbaa !12
  %236 = load ptr, ptr %Wend, align 8, !tbaa !4
  %237 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom184 = sext i32 %237 to i64
  %arrayidx185 = getelementptr inbounds i32, ptr %236, i64 %idxprom184
  store i32 %235, ptr %arrayidx185, align 4, !tbaa !12
  %238 = load ptr, ptr %Windex, align 8, !tbaa !4
  %239 = load i32, ptr %pos1, align 4, !tbaa !12
  %240 = load i32, ptr %where, align 4, !tbaa !12
  call void @lu_iswap(ptr noundef %238, i32 noundef %239, i32 noundef %240)
  %241 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %242 = load i32, ptr %pos1, align 4, !tbaa !12
  %243 = load i32, ptr %where, align 4, !tbaa !12
  call void @lu_fswap(ptr noundef %241, i32 noundef %242, i32 noundef %243)
  %244 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %245 = load i32, ptr %pos1, align 4, !tbaa !12
  %idxprom186 = sext i32 %245 to i64
  %arrayidx187 = getelementptr inbounds double, ptr %244, i64 %idxprom186
  %246 = load double, ptr %arrayidx187, align 8, !tbaa !26
  store double %246, ptr %xrj, align 8, !tbaa !26
  %247 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %248 = load ptr, ptr %Wflink, align 8, !tbaa !4
  %249 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom188 = sext i32 %249 to i64
  %arrayidx189 = getelementptr inbounds i32, ptr %248, i64 %idxprom188
  %250 = load i32, ptr %arrayidx189, align 4, !tbaa !12
  %idxprom190 = sext i32 %250 to i64
  %arrayidx191 = getelementptr inbounds i32, ptr %247, i64 %idxprom190
  %251 = load i32, ptr %arrayidx191, align 4, !tbaa !12
  %252 = load i32, ptr %put, align 4, !tbaa !12
  %sub192 = sub nsw i32 %251, %252
  store i32 %sub192, ptr %room, align 4, !tbaa !12
  %253 = load i32, ptr %room, align 4, !tbaa !12
  %254 = load i32, ptr %cnz1, align 4, !tbaa !12
  %cmp193 = icmp slt i32 %253, %254
  br i1 %cmp193, label %if.then195, label %if.end212

if.then195:                                       ; preds = %for.end183
  %255 = load ptr, ptr %Wend, align 8, !tbaa !4
  %256 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom196 = sext i32 %256 to i64
  %arrayidx197 = getelementptr inbounds i32, ptr %255, i64 %idxprom196
  %257 = load i32, ptr %arrayidx197, align 4, !tbaa !12
  %258 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %259 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom198 = sext i32 %259 to i64
  %arrayidx199 = getelementptr inbounds i32, ptr %258, i64 %idxprom198
  %260 = load i32, ptr %arrayidx199, align 4, !tbaa !12
  %sub200 = sub nsw i32 %257, %260
  store i32 %sub200, ptr %nz, align 4, !tbaa !12
  %261 = load i32, ptr %cnz1, align 4, !tbaa !12
  %conv201 = sitofp i32 %261 to double
  %262 = load double, ptr %stretch, align 8, !tbaa !26
  %263 = load i32, ptr %nz, align 4, !tbaa !12
  %264 = load i32, ptr %cnz1, align 4, !tbaa !12
  %add202 = add nsw i32 %263, %264
  %conv203 = sitofp i32 %add202 to double
  %265 = call double @llvm.fmuladd.f64(double %262, double %conv203, double %conv201)
  %266 = load i32, ptr %pad, align 4, !tbaa !12
  %conv205 = sitofp i32 %266 to double
  %add206 = fadd double %265, %conv205
  %conv207 = fptosi double %add206 to i32
  store i32 %conv207, ptr %room, align 4, !tbaa !12
  %267 = load i32, ptr %j, align 4, !tbaa !12
  %268 = load i32, ptr %m, align 4, !tbaa !12
  %mul208 = mul nsw i32 2, %268
  %269 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %270 = load ptr, ptr %Wend, align 8, !tbaa !4
  %271 = load ptr, ptr %Wflink, align 8, !tbaa !4
  %272 = load ptr, ptr %Wblink, align 8, !tbaa !4
  %273 = load ptr, ptr %Windex, align 8, !tbaa !4
  %274 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %275 = load i32, ptr %room, align 4, !tbaa !12
  call void @lu_file_reappend(i32 noundef %267, i32 noundef %mul208, ptr noundef %269, ptr noundef %270, ptr noundef %271, ptr noundef %272, ptr noundef %273, ptr noundef %274, i32 noundef %275)
  %276 = load ptr, ptr %Wend, align 8, !tbaa !4
  %277 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom209 = sext i32 %277 to i64
  %arrayidx210 = getelementptr inbounds i32, ptr %276, i64 %idxprom209
  %278 = load i32, ptr %arrayidx210, align 4, !tbaa !12
  store i32 %278, ptr %put, align 4, !tbaa !12
  %279 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %nexpand = getelementptr inbounds %struct.lu, ptr %279, i32 0, i32 54
  %280 = load i32, ptr %nexpand, align 4, !tbaa !46
  %inc211 = add nsw i32 %280, 1
  store i32 %inc211, ptr %nexpand, align 4, !tbaa !46
  br label %if.end212

if.end212:                                        ; preds = %if.then195, %for.end183
  %281 = load double, ptr %xrj, align 8, !tbaa !26
  %282 = load double, ptr %pivot, align 8, !tbaa !26
  %div = fdiv double %281, %282
  store double %div, ptr %a, align 8, !tbaa !26
  store i32 1, ptr %pos, align 4, !tbaa !12
  br label %for.cond213

for.cond213:                                      ; preds = %for.inc222, %if.end212
  %283 = load i32, ptr %pos, align 4, !tbaa !12
  %284 = load i32, ptr %cnz1, align 4, !tbaa !12
  %cmp214 = icmp sle i32 %283, %284
  br i1 %cmp214, label %for.body216, label %for.end224

for.body216:                                      ; preds = %for.cond213
  %285 = load double, ptr %a, align 8, !tbaa !26
  %286 = load ptr, ptr %wx, align 8, !tbaa !4
  %287 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom217 = sext i32 %287 to i64
  %arrayidx218 = getelementptr inbounds double, ptr %286, i64 %idxprom217
  %288 = load double, ptr %arrayidx218, align 8, !tbaa !26
  %289 = load ptr, ptr %work, align 8, !tbaa !4
  %290 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom220 = sext i32 %290 to i64
  %arrayidx221 = getelementptr inbounds double, ptr %289, i64 %idxprom220
  %291 = load double, ptr %arrayidx221, align 8, !tbaa !26
  %neg = fneg double %285
  %292 = call double @llvm.fmuladd.f64(double %neg, double %288, double %291)
  store double %292, ptr %arrayidx221, align 8, !tbaa !26
  br label %for.inc222

for.inc222:                                       ; preds = %for.body216
  %293 = load i32, ptr %pos, align 4, !tbaa !12
  %inc223 = add nsw i32 %293, 1
  store i32 %inc223, ptr %pos, align 4, !tbaa !12
  br label %for.cond213

for.end224:                                       ; preds = %for.cond213
  store i32 1, ptr %pos, align 4, !tbaa !12
  br label %for.cond225

for.cond225:                                      ; preds = %for.inc246, %for.end224
  %294 = load i32, ptr %pos, align 4, !tbaa !12
  %295 = load i32, ptr %cnz1, align 4, !tbaa !12
  %cmp226 = icmp sle i32 %294, %295
  br i1 %cmp226, label %for.body228, label %for.end248

for.body228:                                      ; preds = %for.cond225
  %296 = load ptr, ptr %wi, align 8, !tbaa !4
  %297 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom229 = sext i32 %297 to i64
  %arrayidx230 = getelementptr inbounds i32, ptr %296, i64 %idxprom229
  %298 = load i32, ptr %arrayidx230, align 4, !tbaa !12
  %299 = load ptr, ptr %Windex, align 8, !tbaa !4
  %300 = load i32, ptr %put, align 4, !tbaa !12
  %idxprom231 = sext i32 %300 to i64
  %arrayidx232 = getelementptr inbounds i32, ptr %299, i64 %idxprom231
  store i32 %298, ptr %arrayidx232, align 4, !tbaa !12
  %301 = load ptr, ptr %work, align 8, !tbaa !4
  %302 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom233 = sext i32 %302 to i64
  %arrayidx234 = getelementptr inbounds double, ptr %301, i64 %idxprom233
  %303 = load double, ptr %arrayidx234, align 8, !tbaa !26
  %304 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %305 = load i32, ptr %put, align 4, !tbaa !12
  %inc235 = add nsw i32 %305, 1
  store i32 %inc235, ptr %put, align 4, !tbaa !12
  %idxprom236 = sext i32 %305 to i64
  %arrayidx237 = getelementptr inbounds double, ptr %304, i64 %idxprom236
  store double %303, ptr %arrayidx237, align 8, !tbaa !26
  %306 = load ptr, ptr %work, align 8, !tbaa !4
  %307 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom238 = sext i32 %307 to i64
  %arrayidx239 = getelementptr inbounds double, ptr %306, i64 %idxprom238
  %308 = load double, ptr %arrayidx239, align 8, !tbaa !26
  %309 = call double @llvm.fabs.f64(double %308)
  store double %309, ptr %x, align 8, !tbaa !26
  %310 = load double, ptr %cmx, align 8, !tbaa !26
  %cmp240 = fcmp ogt double %309, %310
  br i1 %cmp240, label %if.then242, label %if.end243

if.then242:                                       ; preds = %for.body228
  %311 = load double, ptr %x, align 8, !tbaa !26
  store double %311, ptr %cmx, align 8, !tbaa !26
  br label %if.end243

if.end243:                                        ; preds = %if.then242, %for.body228
  %312 = load ptr, ptr %work, align 8, !tbaa !4
  %313 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom244 = sext i32 %313 to i64
  %arrayidx245 = getelementptr inbounds double, ptr %312, i64 %idxprom244
  store double 0.000000e+00, ptr %arrayidx245, align 8, !tbaa !26
  br label %for.inc246

for.inc246:                                       ; preds = %if.end243
  %314 = load i32, ptr %pos, align 4, !tbaa !12
  %inc247 = add nsw i32 %314, 1
  store i32 %inc247, ptr %pos, align 4, !tbaa !12
  br label %for.cond225

for.end248:                                       ; preds = %for.cond225
  %315 = load i32, ptr %put, align 4, !tbaa !12
  %316 = load ptr, ptr %Wend, align 8, !tbaa !4
  %317 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom249 = sext i32 %317 to i64
  %arrayidx250 = getelementptr inbounds i32, ptr %316, i64 %idxprom249
  store i32 %315, ptr %arrayidx250, align 4, !tbaa !12
  %318 = load double, ptr %xrj, align 8, !tbaa !26
  %319 = call double @llvm.fabs.f64(double %318)
  %320 = load double, ptr %droptol, align 8, !tbaa !26
  %cmp251 = fcmp ogt double %319, %320
  br i1 %cmp251, label %if.then253, label %if.end259

if.then253:                                       ; preds = %for.end248
  %321 = load i32, ptr %j, align 4, !tbaa !12
  %322 = load ptr, ptr %Uindex, align 8, !tbaa !4
  %323 = load i32, ptr %Uput, align 4, !tbaa !12
  %idxprom254 = sext i32 %323 to i64
  %arrayidx255 = getelementptr inbounds i32, ptr %322, i64 %idxprom254
  store i32 %321, ptr %arrayidx255, align 4, !tbaa !12
  %324 = load double, ptr %xrj, align 8, !tbaa !26
  %325 = load ptr, ptr %Uvalue, align 8, !tbaa !4
  %326 = load i32, ptr %Uput, align 4, !tbaa !12
  %inc256 = add nsw i32 %326, 1
  store i32 %inc256, ptr %Uput, align 4, !tbaa !12
  %idxprom257 = sext i32 %326 to i64
  %arrayidx258 = getelementptr inbounds double, ptr %325, i64 %idxprom257
  store double %324, ptr %arrayidx258, align 8, !tbaa !26
  br label %if.end259

if.end259:                                        ; preds = %if.then253, %for.end248
  %327 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %328 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom260 = sext i32 %328 to i64
  %arrayidx261 = getelementptr inbounds i32, ptr %327, i64 %idxprom260
  %329 = load i32, ptr %arrayidx261, align 4, !tbaa !12
  %inc262 = add nsw i32 %329, 1
  store i32 %inc262, ptr %arrayidx261, align 4, !tbaa !12
  %330 = load ptr, ptr %Wend, align 8, !tbaa !4
  %331 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom263 = sext i32 %331 to i64
  %arrayidx264 = getelementptr inbounds i32, ptr %330, i64 %idxprom263
  %332 = load i32, ptr %arrayidx264, align 4, !tbaa !12
  %333 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %334 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom265 = sext i32 %334 to i64
  %arrayidx266 = getelementptr inbounds i32, ptr %333, i64 %idxprom265
  %335 = load i32, ptr %arrayidx266, align 4, !tbaa !12
  %sub267 = sub nsw i32 %332, %335
  store i32 %sub267, ptr %nz, align 4, !tbaa !12
  %336 = load i32, ptr %j, align 4, !tbaa !12
  %337 = load i32, ptr %nz, align 4, !tbaa !12
  %338 = load ptr, ptr %colcount_flink, align 8, !tbaa !4
  %339 = load ptr, ptr %colcount_blink, align 8, !tbaa !4
  %340 = load i32, ptr %m, align 4, !tbaa !12
  %341 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %min_colnz = getelementptr inbounds %struct.lu, ptr %341, i32 0, i32 69
  call void @lu_list_move(i32 noundef %336, i32 noundef %337, ptr noundef %338, ptr noundef %339, i32 noundef %340, ptr noundef %min_colnz)
  %342 = load double, ptr %cmx, align 8, !tbaa !26
  %343 = load ptr, ptr %colmax, align 8, !tbaa !4
  %344 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom268 = sext i32 %344 to i64
  %arrayidx269 = getelementptr inbounds double, ptr %343, i64 %idxprom268
  store double %342, ptr %arrayidx269, align 8, !tbaa !26
  br label %for.inc270

for.inc270:                                       ; preds = %if.end259
  %345 = load i32, ptr %rpos, align 4, !tbaa !12
  %inc271 = add nsw i32 %345, 1
  store i32 %inc271, ptr %rpos, align 4, !tbaa !12
  br label %for.cond134

for.end272:                                       ; preds = %for.cond134
  %346 = load i32, ptr %cbeg, align 4, !tbaa !12
  %add273 = add nsw i32 %346, 1
  store i32 %add273, ptr %pos, align 4, !tbaa !12
  br label %for.cond274

for.cond274:                                      ; preds = %for.inc282, %for.end272
  %347 = load i32, ptr %pos, align 4, !tbaa !12
  %348 = load i32, ptr %cend, align 4, !tbaa !12
  %cmp275 = icmp slt i32 %347, %348
  br i1 %cmp275, label %for.body277, label %for.end284

for.body277:                                      ; preds = %for.cond274
  %349 = load ptr, ptr %marked, align 8, !tbaa !4
  %350 = load ptr, ptr %Windex, align 8, !tbaa !4
  %351 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom278 = sext i32 %351 to i64
  %arrayidx279 = getelementptr inbounds i32, ptr %350, i64 %idxprom278
  %352 = load i32, ptr %arrayidx279, align 4, !tbaa !12
  %idxprom280 = sext i32 %352 to i64
  %arrayidx281 = getelementptr inbounds i32, ptr %349, i64 %idxprom280
  store i32 0, ptr %arrayidx281, align 4, !tbaa !12
  br label %for.inc282

for.inc282:                                       ; preds = %for.body277
  %353 = load i32, ptr %pos, align 4, !tbaa !12
  %inc283 = add nsw i32 %353, 1
  store i32 %inc283, ptr %pos, align 4, !tbaa !12
  br label %for.cond274

for.end284:                                       ; preds = %for.cond274
  %354 = load i32, ptr %rbeg, align 4, !tbaa !12
  store i32 %354, ptr %rpos, align 4, !tbaa !12
  br label %for.cond285

for.cond285:                                      ; preds = %for.inc293, %for.end284
  %355 = load i32, ptr %rpos, align 4, !tbaa !12
  %356 = load i32, ptr %rend, align 4, !tbaa !12
  %cmp286 = icmp slt i32 %355, %356
  br i1 %cmp286, label %for.body288, label %for.end295

for.body288:                                      ; preds = %for.cond285
  %357 = load ptr, ptr %marked, align 8, !tbaa !4
  %358 = load ptr, ptr %Windex, align 8, !tbaa !4
  %359 = load i32, ptr %rpos, align 4, !tbaa !12
  %idxprom289 = sext i32 %359 to i64
  %arrayidx290 = getelementptr inbounds i32, ptr %358, i64 %idxprom289
  %360 = load i32, ptr %arrayidx290, align 4, !tbaa !12
  %idxprom291 = sext i32 %360 to i64
  %arrayidx292 = getelementptr inbounds i32, ptr %357, i64 %idxprom291
  store i32 1, ptr %arrayidx292, align 4, !tbaa !12
  br label %for.inc293

for.inc293:                                       ; preds = %for.body288
  %361 = load i32, ptr %rpos, align 4, !tbaa !12
  %inc294 = add nsw i32 %361, 1
  store i32 %inc294, ptr %rpos, align 4, !tbaa !12
  br label %for.cond285

for.end295:                                       ; preds = %for.cond285
  %362 = load i32, ptr %cbeg, align 4, !tbaa !12
  %add296 = add nsw i32 %362, 1
  store i32 %add296, ptr %pos, align 4, !tbaa !12
  br label %for.cond297

for.cond297:                                      ; preds = %for.inc389, %for.end295
  %363 = load i32, ptr %pos, align 4, !tbaa !12
  %364 = load i32, ptr %cend, align 4, !tbaa !12
  %cmp298 = icmp slt i32 %363, %364
  br i1 %cmp298, label %for.body300, label %for.end391

for.body300:                                      ; preds = %for.cond297
  %365 = load ptr, ptr %Windex, align 8, !tbaa !4
  %366 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom301 = sext i32 %366 to i64
  %arrayidx302 = getelementptr inbounds i32, ptr %365, i64 %idxprom301
  %367 = load i32, ptr %arrayidx302, align 4, !tbaa !12
  store i32 %367, ptr %i, align 4, !tbaa !12
  store i32 0, ptr %found, align 4, !tbaa !12
  %368 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %369 = load i32, ptr %m, align 4, !tbaa !12
  %370 = load i32, ptr %i, align 4, !tbaa !12
  %add303 = add nsw i32 %369, %370
  %idxprom304 = sext i32 %add303 to i64
  %arrayidx305 = getelementptr inbounds i32, ptr %368, i64 %idxprom304
  %371 = load i32, ptr %arrayidx305, align 4, !tbaa !12
  store i32 %371, ptr %put, align 4, !tbaa !12
  %372 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %373 = load i32, ptr %m, align 4, !tbaa !12
  %374 = load i32, ptr %i, align 4, !tbaa !12
  %add306 = add nsw i32 %373, %374
  %idxprom307 = sext i32 %add306 to i64
  %arrayidx308 = getelementptr inbounds i32, ptr %372, i64 %idxprom307
  %375 = load i32, ptr %arrayidx308, align 4, !tbaa !12
  store i32 %375, ptr %rpos, align 4, !tbaa !12
  br label %for.cond309

for.cond309:                                      ; preds = %for.inc329, %for.body300
  %376 = load i32, ptr %rpos, align 4, !tbaa !12
  %377 = load ptr, ptr %Wend, align 8, !tbaa !4
  %378 = load i32, ptr %m, align 4, !tbaa !12
  %379 = load i32, ptr %i, align 4, !tbaa !12
  %add310 = add nsw i32 %378, %379
  %idxprom311 = sext i32 %add310 to i64
  %arrayidx312 = getelementptr inbounds i32, ptr %377, i64 %idxprom311
  %380 = load i32, ptr %arrayidx312, align 4, !tbaa !12
  %cmp313 = icmp slt i32 %376, %380
  br i1 %cmp313, label %for.body315, label %for.end331

for.body315:                                      ; preds = %for.cond309
  %381 = load ptr, ptr %Windex, align 8, !tbaa !4
  %382 = load i32, ptr %rpos, align 4, !tbaa !12
  %idxprom316 = sext i32 %382 to i64
  %arrayidx317 = getelementptr inbounds i32, ptr %381, i64 %idxprom316
  %383 = load i32, ptr %arrayidx317, align 4, !tbaa !12
  store i32 %383, ptr %j, align 4, !tbaa !12
  %384 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %cmp318 = icmp eq i32 %383, %384
  br i1 %cmp318, label %if.then320, label %if.end321

if.then320:                                       ; preds = %for.body315
  store i32 1, ptr %found, align 4, !tbaa !12
  br label %if.end321

if.end321:                                        ; preds = %if.then320, %for.body315
  %385 = load ptr, ptr %marked, align 8, !tbaa !4
  %386 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom322 = sext i32 %386 to i64
  %arrayidx323 = getelementptr inbounds i32, ptr %385, i64 %idxprom322
  %387 = load i32, ptr %arrayidx323, align 4, !tbaa !12
  %tobool = icmp ne i32 %387, 0
  br i1 %tobool, label %if.end328, label %if.then324

if.then324:                                       ; preds = %if.end321
  %388 = load i32, ptr %j, align 4, !tbaa !12
  %389 = load ptr, ptr %Windex, align 8, !tbaa !4
  %390 = load i32, ptr %put, align 4, !tbaa !12
  %inc325 = add nsw i32 %390, 1
  store i32 %inc325, ptr %put, align 4, !tbaa !12
  %idxprom326 = sext i32 %390 to i64
  %arrayidx327 = getelementptr inbounds i32, ptr %389, i64 %idxprom326
  store i32 %388, ptr %arrayidx327, align 4, !tbaa !12
  br label %if.end328

if.end328:                                        ; preds = %if.then324, %if.end321
  br label %for.inc329

for.inc329:                                       ; preds = %if.end328
  %391 = load i32, ptr %rpos, align 4, !tbaa !12
  %inc330 = add nsw i32 %391, 1
  store i32 %inc330, ptr %rpos, align 4, !tbaa !12
  br label %for.cond309

for.end331:                                       ; preds = %for.cond309
  %392 = load i32, ptr %put, align 4, !tbaa !12
  %393 = load ptr, ptr %Wend, align 8, !tbaa !4
  %394 = load i32, ptr %m, align 4, !tbaa !12
  %395 = load i32, ptr %i, align 4, !tbaa !12
  %add332 = add nsw i32 %394, %395
  %idxprom333 = sext i32 %add332 to i64
  %arrayidx334 = getelementptr inbounds i32, ptr %393, i64 %idxprom333
  store i32 %392, ptr %arrayidx334, align 4, !tbaa !12
  %396 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %397 = load ptr, ptr %Wflink, align 8, !tbaa !4
  %398 = load i32, ptr %m, align 4, !tbaa !12
  %399 = load i32, ptr %i, align 4, !tbaa !12
  %add335 = add nsw i32 %398, %399
  %idxprom336 = sext i32 %add335 to i64
  %arrayidx337 = getelementptr inbounds i32, ptr %397, i64 %idxprom336
  %400 = load i32, ptr %arrayidx337, align 4, !tbaa !12
  %idxprom338 = sext i32 %400 to i64
  %arrayidx339 = getelementptr inbounds i32, ptr %396, i64 %idxprom338
  %401 = load i32, ptr %arrayidx339, align 4, !tbaa !12
  %402 = load i32, ptr %put, align 4, !tbaa !12
  %sub340 = sub nsw i32 %401, %402
  store i32 %sub340, ptr %room, align 4, !tbaa !12
  %403 = load i32, ptr %room, align 4, !tbaa !12
  %404 = load i32, ptr %rnz1, align 4, !tbaa !12
  %cmp341 = icmp slt i32 %403, %404
  br i1 %cmp341, label %if.then343, label %if.end365

if.then343:                                       ; preds = %for.end331
  %405 = load ptr, ptr %Wend, align 8, !tbaa !4
  %406 = load i32, ptr %m, align 4, !tbaa !12
  %407 = load i32, ptr %i, align 4, !tbaa !12
  %add344 = add nsw i32 %406, %407
  %idxprom345 = sext i32 %add344 to i64
  %arrayidx346 = getelementptr inbounds i32, ptr %405, i64 %idxprom345
  %408 = load i32, ptr %arrayidx346, align 4, !tbaa !12
  %409 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %410 = load i32, ptr %m, align 4, !tbaa !12
  %411 = load i32, ptr %i, align 4, !tbaa !12
  %add347 = add nsw i32 %410, %411
  %idxprom348 = sext i32 %add347 to i64
  %arrayidx349 = getelementptr inbounds i32, ptr %409, i64 %idxprom348
  %412 = load i32, ptr %arrayidx349, align 4, !tbaa !12
  %sub350 = sub nsw i32 %408, %412
  store i32 %sub350, ptr %nz, align 4, !tbaa !12
  %413 = load i32, ptr %rnz1, align 4, !tbaa !12
  %conv351 = sitofp i32 %413 to double
  %414 = load double, ptr %stretch, align 8, !tbaa !26
  %415 = load i32, ptr %nz, align 4, !tbaa !12
  %416 = load i32, ptr %rnz1, align 4, !tbaa !12
  %add352 = add nsw i32 %415, %416
  %conv353 = sitofp i32 %add352 to double
  %417 = call double @llvm.fmuladd.f64(double %414, double %conv353, double %conv351)
  %418 = load i32, ptr %pad, align 4, !tbaa !12
  %conv355 = sitofp i32 %418 to double
  %add356 = fadd double %417, %conv355
  %conv357 = fptosi double %add356 to i32
  store i32 %conv357, ptr %room, align 4, !tbaa !12
  %419 = load i32, ptr %m, align 4, !tbaa !12
  %420 = load i32, ptr %i, align 4, !tbaa !12
  %add358 = add nsw i32 %419, %420
  %421 = load i32, ptr %m, align 4, !tbaa !12
  %mul359 = mul nsw i32 2, %421
  %422 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %423 = load ptr, ptr %Wend, align 8, !tbaa !4
  %424 = load ptr, ptr %Wflink, align 8, !tbaa !4
  %425 = load ptr, ptr %Wblink, align 8, !tbaa !4
  %426 = load ptr, ptr %Windex, align 8, !tbaa !4
  %427 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %428 = load i32, ptr %room, align 4, !tbaa !12
  call void @lu_file_reappend(i32 noundef %add358, i32 noundef %mul359, ptr noundef %422, ptr noundef %423, ptr noundef %424, ptr noundef %425, ptr noundef %426, ptr noundef %427, i32 noundef %428)
  %429 = load ptr, ptr %Wend, align 8, !tbaa !4
  %430 = load i32, ptr %m, align 4, !tbaa !12
  %431 = load i32, ptr %i, align 4, !tbaa !12
  %add360 = add nsw i32 %430, %431
  %idxprom361 = sext i32 %add360 to i64
  %arrayidx362 = getelementptr inbounds i32, ptr %429, i64 %idxprom361
  %432 = load i32, ptr %arrayidx362, align 4, !tbaa !12
  store i32 %432, ptr %put, align 4, !tbaa !12
  %433 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %nexpand363 = getelementptr inbounds %struct.lu, ptr %433, i32 0, i32 54
  %434 = load i32, ptr %nexpand363, align 4, !tbaa !46
  %inc364 = add nsw i32 %434, 1
  store i32 %inc364, ptr %nexpand363, align 4, !tbaa !46
  br label %if.end365

if.end365:                                        ; preds = %if.then343, %for.end331
  %435 = load i32, ptr %rbeg, align 4, !tbaa !12
  %add366 = add nsw i32 %435, 1
  store i32 %add366, ptr %rpos, align 4, !tbaa !12
  br label %for.cond367

for.cond367:                                      ; preds = %for.inc376, %if.end365
  %436 = load i32, ptr %rpos, align 4, !tbaa !12
  %437 = load i32, ptr %rend, align 4, !tbaa !12
  %cmp368 = icmp slt i32 %436, %437
  br i1 %cmp368, label %for.body370, label %for.end378

for.body370:                                      ; preds = %for.cond367
  %438 = load ptr, ptr %Windex, align 8, !tbaa !4
  %439 = load i32, ptr %rpos, align 4, !tbaa !12
  %idxprom371 = sext i32 %439 to i64
  %arrayidx372 = getelementptr inbounds i32, ptr %438, i64 %idxprom371
  %440 = load i32, ptr %arrayidx372, align 4, !tbaa !12
  %441 = load ptr, ptr %Windex, align 8, !tbaa !4
  %442 = load i32, ptr %put, align 4, !tbaa !12
  %inc373 = add nsw i32 %442, 1
  store i32 %inc373, ptr %put, align 4, !tbaa !12
  %idxprom374 = sext i32 %442 to i64
  %arrayidx375 = getelementptr inbounds i32, ptr %441, i64 %idxprom374
  store i32 %440, ptr %arrayidx375, align 4, !tbaa !12
  br label %for.inc376

for.inc376:                                       ; preds = %for.body370
  %443 = load i32, ptr %rpos, align 4, !tbaa !12
  %inc377 = add nsw i32 %443, 1
  store i32 %inc377, ptr %rpos, align 4, !tbaa !12
  br label %for.cond367

for.end378:                                       ; preds = %for.cond367
  %444 = load i32, ptr %put, align 4, !tbaa !12
  %445 = load ptr, ptr %Wend, align 8, !tbaa !4
  %446 = load i32, ptr %m, align 4, !tbaa !12
  %447 = load i32, ptr %i, align 4, !tbaa !12
  %add379 = add nsw i32 %446, %447
  %idxprom380 = sext i32 %add379 to i64
  %arrayidx381 = getelementptr inbounds i32, ptr %445, i64 %idxprom380
  store i32 %444, ptr %arrayidx381, align 4, !tbaa !12
  %448 = load ptr, ptr %Wend, align 8, !tbaa !4
  %449 = load i32, ptr %m, align 4, !tbaa !12
  %450 = load i32, ptr %i, align 4, !tbaa !12
  %add382 = add nsw i32 %449, %450
  %idxprom383 = sext i32 %add382 to i64
  %arrayidx384 = getelementptr inbounds i32, ptr %448, i64 %idxprom383
  %451 = load i32, ptr %arrayidx384, align 4, !tbaa !12
  %452 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %453 = load i32, ptr %m, align 4, !tbaa !12
  %454 = load i32, ptr %i, align 4, !tbaa !12
  %add385 = add nsw i32 %453, %454
  %idxprom386 = sext i32 %add385 to i64
  %arrayidx387 = getelementptr inbounds i32, ptr %452, i64 %idxprom386
  %455 = load i32, ptr %arrayidx387, align 4, !tbaa !12
  %sub388 = sub nsw i32 %451, %455
  store i32 %sub388, ptr %nz, align 4, !tbaa !12
  %456 = load i32, ptr %i, align 4, !tbaa !12
  %457 = load i32, ptr %nz, align 4, !tbaa !12
  %458 = load ptr, ptr %rowcount_flink, align 8, !tbaa !4
  %459 = load ptr, ptr %rowcount_blink, align 8, !tbaa !4
  %460 = load i32, ptr %m, align 4, !tbaa !12
  %461 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %min_rownz = getelementptr inbounds %struct.lu, ptr %461, i32 0, i32 70
  call void @lu_list_move(i32 noundef %456, i32 noundef %457, ptr noundef %458, ptr noundef %459, i32 noundef %460, ptr noundef %min_rownz)
  br label %for.inc389

for.inc389:                                       ; preds = %for.end378
  %462 = load i32, ptr %pos, align 4, !tbaa !12
  %inc390 = add nsw i32 %462, 1
  store i32 %inc390, ptr %pos, align 4, !tbaa !12
  br label %for.cond297

for.end391:                                       ; preds = %for.cond297
  %463 = load i32, ptr %rbeg, align 4, !tbaa !12
  store i32 %463, ptr %rpos, align 4, !tbaa !12
  br label %for.cond392

for.cond392:                                      ; preds = %for.inc400, %for.end391
  %464 = load i32, ptr %rpos, align 4, !tbaa !12
  %465 = load i32, ptr %rend, align 4, !tbaa !12
  %cmp393 = icmp slt i32 %464, %465
  br i1 %cmp393, label %for.body395, label %for.end402

for.body395:                                      ; preds = %for.cond392
  %466 = load ptr, ptr %marked, align 8, !tbaa !4
  %467 = load ptr, ptr %Windex, align 8, !tbaa !4
  %468 = load i32, ptr %rpos, align 4, !tbaa !12
  %idxprom396 = sext i32 %468 to i64
  %arrayidx397 = getelementptr inbounds i32, ptr %467, i64 %idxprom396
  %469 = load i32, ptr %arrayidx397, align 4, !tbaa !12
  %idxprom398 = sext i32 %469 to i64
  %arrayidx399 = getelementptr inbounds i32, ptr %466, i64 %idxprom398
  store i32 0, ptr %arrayidx399, align 4, !tbaa !12
  br label %for.inc400

for.inc400:                                       ; preds = %for.body395
  %470 = load i32, ptr %rpos, align 4, !tbaa !12
  %inc401 = add nsw i32 %470, 1
  store i32 %inc401, ptr %rpos, align 4, !tbaa !12
  br label %for.cond392

for.end402:                                       ; preds = %for.cond392
  %471 = load ptr, ptr %Lbegin_p, align 8, !tbaa !4
  %472 = load i32, ptr %rank, align 4, !tbaa !12
  %idxprom403 = sext i32 %472 to i64
  %arrayidx404 = getelementptr inbounds i32, ptr %471, i64 %idxprom403
  %473 = load i32, ptr %arrayidx404, align 4, !tbaa !12
  store i32 %473, ptr %put, align 4, !tbaa !12
  %474 = load i32, ptr %cbeg, align 4, !tbaa !12
  %add405 = add nsw i32 %474, 1
  store i32 %add405, ptr %pos, align 4, !tbaa !12
  br label %for.cond406

for.cond406:                                      ; preds = %for.inc424, %for.end402
  %475 = load i32, ptr %pos, align 4, !tbaa !12
  %476 = load i32, ptr %cend, align 4, !tbaa !12
  %cmp407 = icmp slt i32 %475, %476
  br i1 %cmp407, label %for.body409, label %for.end426

for.body409:                                      ; preds = %for.cond406
  %477 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %478 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom410 = sext i32 %478 to i64
  %arrayidx411 = getelementptr inbounds double, ptr %477, i64 %idxprom410
  %479 = load double, ptr %arrayidx411, align 8, !tbaa !26
  %480 = load double, ptr %pivot, align 8, !tbaa !26
  %div412 = fdiv double %479, %480
  store double %div412, ptr %x, align 8, !tbaa !26
  %481 = load double, ptr %x, align 8, !tbaa !26
  %482 = call double @llvm.fabs.f64(double %481)
  %483 = load double, ptr %droptol, align 8, !tbaa !26
  %cmp413 = fcmp ogt double %482, %483
  br i1 %cmp413, label %if.then415, label %if.end423

if.then415:                                       ; preds = %for.body409
  %484 = load ptr, ptr %Windex, align 8, !tbaa !4
  %485 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom416 = sext i32 %485 to i64
  %arrayidx417 = getelementptr inbounds i32, ptr %484, i64 %idxprom416
  %486 = load i32, ptr %arrayidx417, align 4, !tbaa !12
  %487 = load ptr, ptr %Lindex, align 8, !tbaa !4
  %488 = load i32, ptr %put, align 4, !tbaa !12
  %idxprom418 = sext i32 %488 to i64
  %arrayidx419 = getelementptr inbounds i32, ptr %487, i64 %idxprom418
  store i32 %486, ptr %arrayidx419, align 4, !tbaa !12
  %489 = load double, ptr %x, align 8, !tbaa !26
  %490 = load ptr, ptr %Lvalue, align 8, !tbaa !4
  %491 = load i32, ptr %put, align 4, !tbaa !12
  %inc420 = add nsw i32 %491, 1
  store i32 %inc420, ptr %put, align 4, !tbaa !12
  %idxprom421 = sext i32 %491 to i64
  %arrayidx422 = getelementptr inbounds double, ptr %490, i64 %idxprom421
  store double %489, ptr %arrayidx422, align 8, !tbaa !26
  br label %if.end423

if.end423:                                        ; preds = %if.then415, %for.body409
  br label %for.inc424

for.inc424:                                       ; preds = %if.end423
  %492 = load i32, ptr %pos, align 4, !tbaa !12
  %inc425 = add nsw i32 %492, 1
  store i32 %inc425, ptr %pos, align 4, !tbaa !12
  br label %for.cond406

for.end426:                                       ; preds = %for.cond406
  %493 = load ptr, ptr %Lindex, align 8, !tbaa !4
  %494 = load i32, ptr %put, align 4, !tbaa !12
  %inc427 = add nsw i32 %494, 1
  store i32 %inc427, ptr %put, align 4, !tbaa !12
  %idxprom428 = sext i32 %494 to i64
  %arrayidx429 = getelementptr inbounds i32, ptr %493, i64 %idxprom428
  store i32 -1, ptr %arrayidx429, align 4, !tbaa !12
  %495 = load i32, ptr %put, align 4, !tbaa !12
  %496 = load ptr, ptr %Lbegin_p, align 8, !tbaa !4
  %497 = load i32, ptr %rank, align 4, !tbaa !12
  %add430 = add nsw i32 %497, 1
  %idxprom431 = sext i32 %add430 to i64
  %arrayidx432 = getelementptr inbounds i32, ptr %496, i64 %idxprom431
  store i32 %495, ptr %arrayidx432, align 4, !tbaa !12
  %498 = load i32, ptr %Uput, align 4, !tbaa !12
  %499 = load ptr, ptr %Ubegin, align 8, !tbaa !4
  %500 = load i32, ptr %rank, align 4, !tbaa !12
  %add433 = add nsw i32 %500, 1
  %idxprom434 = sext i32 %add433 to i64
  %arrayidx435 = getelementptr inbounds i32, ptr %499, i64 %idxprom434
  store i32 %498, ptr %arrayidx435, align 4, !tbaa !12
  %501 = load double, ptr %pivot, align 8, !tbaa !26
  %502 = load ptr, ptr %colmax, align 8, !tbaa !4
  %503 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom436 = sext i32 %503 to i64
  %arrayidx437 = getelementptr inbounds double, ptr %502, i64 %idxprom436
  store double %501, ptr %arrayidx437, align 8, !tbaa !26
  %504 = load i32, ptr %cbeg, align 4, !tbaa !12
  %505 = load ptr, ptr %Wend, align 8, !tbaa !4
  %506 = load i32, ptr %pivot_col, align 4, !tbaa !12
  %idxprom438 = sext i32 %506 to i64
  %arrayidx439 = getelementptr inbounds i32, ptr %505, i64 %idxprom438
  store i32 %504, ptr %arrayidx439, align 4, !tbaa !12
  %507 = load i32, ptr %rbeg, align 4, !tbaa !12
  %508 = load ptr, ptr %Wend, align 8, !tbaa !4
  %509 = load i32, ptr %m, align 4, !tbaa !12
  %510 = load i32, ptr %pivot_row, align 4, !tbaa !12
  %add440 = add nsw i32 %509, %510
  %idxprom441 = sext i32 %add440 to i64
  %arrayidx442 = getelementptr inbounds i32, ptr %508, i64 %idxprom441
  store i32 %507, ptr %arrayidx442, align 4, !tbaa !12
  %511 = load ptr, ptr %colcount_flink, align 8, !tbaa !4
  %512 = load ptr, ptr %colcount_blink, align 8, !tbaa !4
  %513 = load i32, ptr %pivot_col, align 4, !tbaa !12
  call void @lu_list_remove(ptr noundef %511, ptr noundef %512, i32 noundef %513)
  %514 = load ptr, ptr %rowcount_flink, align 8, !tbaa !4
  %515 = load ptr, ptr %rowcount_blink, align 8, !tbaa !4
  %516 = load i32, ptr %pivot_row, align 4, !tbaa !12
  call void @lu_list_remove(ptr noundef %514, ptr noundef %515, i32 noundef %516)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end426, %if.then113
  call void @llvm.lifetime.end.p0(i64 8, ptr %wx) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %xrj) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmx) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pivot) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %position) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %found) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %room) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %grow) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %wi) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nz) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %where) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %Uput) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %put) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rpos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rnz1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnz1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rend) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rbeg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cend) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cbeg) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %work) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %marked) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wvalue) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Windex) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Uvalue) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Uindex) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Lvalue) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Lindex) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wblink) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wflink) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wend) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wbegin) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ubegin) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Lbegin_p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %colmax) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rowcount_blink) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rowcount_flink) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %colcount_blink) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %colcount_flink) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pivot_row) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pivot_col) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %stretch) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pad) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %droptol) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rank) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #5
  %517 = load i32, ptr %retval, align 4
  ret i32 %517
}

; Function Attrs: nounwind uwtable
define internal void @lu_remove_col(ptr noundef %this, i32 noundef %j) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %j.addr = alloca i32, align 4
  %m = alloca i32, align 4
  %colcount_flink = alloca ptr, align 8
  %colcount_blink = alloca ptr, align 8
  %rowcount_flink = alloca ptr, align 8
  %rowcount_blink = alloca ptr, align 8
  %colmax = alloca ptr, align 8
  %Wbegin = alloca ptr, align 8
  %Wend = alloca ptr, align 8
  %Windex = alloca ptr, align 8
  %cbeg = alloca i32, align 4
  %cend = alloca i32, align 4
  %i = alloca i32, align 4
  %pos = alloca i32, align 4
  %nz = alloca i32, align 4
  %where = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !4
  store i32 %j, ptr %j.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %m1 = getelementptr inbounds %struct.lu, ptr %0, i32 0, i32 13
  %1 = load i32, ptr %m1, align 4, !tbaa !8
  store i32 %1, ptr %m, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %colcount_flink) #5
  %2 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %colcount_flink2 = getelementptr inbounds %struct.lu, ptr %2, i32 0, i32 77
  %3 = load ptr, ptr %colcount_flink2, align 8, !tbaa !30
  store ptr %3, ptr %colcount_flink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %colcount_blink) #5
  %4 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %colcount_blink3 = getelementptr inbounds %struct.lu, ptr %4, i32 0, i32 79
  %5 = load ptr, ptr %colcount_blink3, align 8, !tbaa !31
  store ptr %5, ptr %colcount_blink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rowcount_flink) #5
  %6 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %rowcount_flink4 = getelementptr inbounds %struct.lu, ptr %6, i32 0, i32 81
  %7 = load ptr, ptr %rowcount_flink4, align 8, !tbaa !32
  store ptr %7, ptr %rowcount_flink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rowcount_blink) #5
  %8 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %rowcount_blink5 = getelementptr inbounds %struct.lu, ptr %8, i32 0, i32 84
  %9 = load ptr, ptr %rowcount_blink5, align 8, !tbaa !33
  store ptr %9, ptr %rowcount_blink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %colmax) #5
  %10 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %col_pivot = getelementptr inbounds %struct.lu, ptr %10, i32 0, i32 104
  %11 = load ptr, ptr %col_pivot, align 8, !tbaa !18
  store ptr %11, ptr %colmax, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wbegin) #5
  %12 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wbegin6 = getelementptr inbounds %struct.lu, ptr %12, i32 0, i32 86
  %13 = load ptr, ptr %Wbegin6, align 8, !tbaa !21
  store ptr %13, ptr %Wbegin, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wend) #5
  %14 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wend7 = getelementptr inbounds %struct.lu, ptr %14, i32 0, i32 88
  %15 = load ptr, ptr %Wend7, align 8, !tbaa !22
  store ptr %15, ptr %Wend, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Windex) #5
  %16 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Windex8 = getelementptr inbounds %struct.lu, ptr %16, i32 0, i32 73
  %17 = load ptr, ptr %Windex8, align 8, !tbaa !36
  store ptr %17, ptr %Windex, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cbeg) #5
  %18 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %19 = load i32, ptr %j.addr, align 4, !tbaa !12
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds i32, ptr %18, i64 %idxprom
  %20 = load i32, ptr %arrayidx, align 4, !tbaa !12
  store i32 %20, ptr %cbeg, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %cend) #5
  %21 = load ptr, ptr %Wend, align 8, !tbaa !4
  %22 = load i32, ptr %j.addr, align 4, !tbaa !12
  %idxprom9 = sext i32 %22 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %21, i64 %idxprom9
  %23 = load i32, ptr %arrayidx10, align 4, !tbaa !12
  store i32 %23, ptr %cend, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nz) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %where) #5
  %24 = load i32, ptr %cbeg, align 4, !tbaa !12
  store i32 %24, ptr %pos, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc33, %entry
  %25 = load i32, ptr %pos, align 4, !tbaa !12
  %26 = load i32, ptr %cend, align 4, !tbaa !12
  %cmp = icmp slt i32 %25, %26
  br i1 %cmp, label %for.body, label %for.end35

for.body:                                         ; preds = %for.cond
  %27 = load ptr, ptr %Windex, align 8, !tbaa !4
  %28 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom11 = sext i32 %28 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %27, i64 %idxprom11
  %29 = load i32, ptr %arrayidx12, align 4, !tbaa !12
  store i32 %29, ptr %i, align 4, !tbaa !12
  %30 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %31 = load i32, ptr %m, align 4, !tbaa !12
  %32 = load i32, ptr %i, align 4, !tbaa !12
  %add = add nsw i32 %31, %32
  %idxprom13 = sext i32 %add to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %30, i64 %idxprom13
  %33 = load i32, ptr %arrayidx14, align 4, !tbaa !12
  store i32 %33, ptr %where, align 4, !tbaa !12
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc, %for.body
  %34 = load ptr, ptr %Windex, align 8, !tbaa !4
  %35 = load i32, ptr %where, align 4, !tbaa !12
  %idxprom16 = sext i32 %35 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %34, i64 %idxprom16
  %36 = load i32, ptr %arrayidx17, align 4, !tbaa !12
  %37 = load i32, ptr %j.addr, align 4, !tbaa !12
  %cmp18 = icmp ne i32 %36, %37
  br i1 %cmp18, label %for.body19, label %for.end

for.body19:                                       ; preds = %for.cond15
  br label %for.inc

for.inc:                                          ; preds = %for.body19
  %38 = load i32, ptr %where, align 4, !tbaa !12
  %inc = add nsw i32 %38, 1
  store i32 %inc, ptr %where, align 4, !tbaa !12
  br label %for.cond15

for.end:                                          ; preds = %for.cond15
  %39 = load ptr, ptr %Windex, align 8, !tbaa !4
  %40 = load ptr, ptr %Wend, align 8, !tbaa !4
  %41 = load i32, ptr %m, align 4, !tbaa !12
  %42 = load i32, ptr %i, align 4, !tbaa !12
  %add20 = add nsw i32 %41, %42
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %40, i64 %idxprom21
  %43 = load i32, ptr %arrayidx22, align 4, !tbaa !12
  %dec = add nsw i32 %43, -1
  store i32 %dec, ptr %arrayidx22, align 4, !tbaa !12
  %idxprom23 = sext i32 %dec to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %39, i64 %idxprom23
  %44 = load i32, ptr %arrayidx24, align 4, !tbaa !12
  %45 = load ptr, ptr %Windex, align 8, !tbaa !4
  %46 = load i32, ptr %where, align 4, !tbaa !12
  %idxprom25 = sext i32 %46 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %45, i64 %idxprom25
  store i32 %44, ptr %arrayidx26, align 4, !tbaa !12
  %47 = load ptr, ptr %Wend, align 8, !tbaa !4
  %48 = load i32, ptr %m, align 4, !tbaa !12
  %49 = load i32, ptr %i, align 4, !tbaa !12
  %add27 = add nsw i32 %48, %49
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds i32, ptr %47, i64 %idxprom28
  %50 = load i32, ptr %arrayidx29, align 4, !tbaa !12
  %51 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %52 = load i32, ptr %m, align 4, !tbaa !12
  %53 = load i32, ptr %i, align 4, !tbaa !12
  %add30 = add nsw i32 %52, %53
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %51, i64 %idxprom31
  %54 = load i32, ptr %arrayidx32, align 4, !tbaa !12
  %sub = sub nsw i32 %50, %54
  store i32 %sub, ptr %nz, align 4, !tbaa !12
  %55 = load i32, ptr %i, align 4, !tbaa !12
  %56 = load i32, ptr %nz, align 4, !tbaa !12
  %57 = load ptr, ptr %rowcount_flink, align 8, !tbaa !4
  %58 = load ptr, ptr %rowcount_blink, align 8, !tbaa !4
  %59 = load i32, ptr %m, align 4, !tbaa !12
  %60 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %min_rownz = getelementptr inbounds %struct.lu, ptr %60, i32 0, i32 70
  call void @lu_list_move(i32 noundef %55, i32 noundef %56, ptr noundef %57, ptr noundef %58, i32 noundef %59, ptr noundef %min_rownz)
  br label %for.inc33

for.inc33:                                        ; preds = %for.end
  %61 = load i32, ptr %pos, align 4, !tbaa !12
  %inc34 = add nsw i32 %61, 1
  store i32 %inc34, ptr %pos, align 4, !tbaa !12
  br label %for.cond

for.end35:                                        ; preds = %for.cond
  %62 = load ptr, ptr %colmax, align 8, !tbaa !4
  %63 = load i32, ptr %j.addr, align 4, !tbaa !12
  %idxprom36 = sext i32 %63 to i64
  %arrayidx37 = getelementptr inbounds double, ptr %62, i64 %idxprom36
  store double 0.000000e+00, ptr %arrayidx37, align 8, !tbaa !26
  %64 = load i32, ptr %cbeg, align 4, !tbaa !12
  %65 = load ptr, ptr %Wend, align 8, !tbaa !4
  %66 = load i32, ptr %j.addr, align 4, !tbaa !12
  %idxprom38 = sext i32 %66 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %65, i64 %idxprom38
  store i32 %64, ptr %arrayidx39, align 4, !tbaa !12
  %67 = load i32, ptr %j.addr, align 4, !tbaa !12
  %68 = load ptr, ptr %colcount_flink, align 8, !tbaa !4
  %69 = load ptr, ptr %colcount_blink, align 8, !tbaa !4
  %70 = load i32, ptr %m, align 4, !tbaa !12
  %71 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %min_colnz = getelementptr inbounds %struct.lu, ptr %71, i32 0, i32 69
  call void @lu_list_move(i32 noundef %67, i32 noundef 0, ptr noundef %68, ptr noundef %69, i32 noundef %70, ptr noundef %min_colnz)
  call void @llvm.lifetime.end.p0(i64 4, ptr %where) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nz) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cend) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cbeg) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Windex) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wend) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wbegin) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %colmax) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rowcount_blink) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rowcount_flink) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %colcount_blink) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %colcount_flink) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @lu_iswap(ptr noundef %x, i32 noundef %i, i32 noundef %j) #3 {
entry:
  %x.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %t = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store i32 %i, ptr %i.addr, align 4, !tbaa !12
  store i32 %j, ptr %j.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #5
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1 = load i32, ptr %i.addr, align 4, !tbaa !12
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !12
  store i32 %2, ptr %t, align 4, !tbaa !12
  %3 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %4 = load i32, ptr %j.addr, align 4, !tbaa !12
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %3, i64 %idxprom1
  %5 = load i32, ptr %arrayidx2, align 4, !tbaa !12
  %6 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %7 = load i32, ptr %i.addr, align 4, !tbaa !12
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %6, i64 %idxprom3
  store i32 %5, ptr %arrayidx4, align 4, !tbaa !12
  %8 = load i32, ptr %t, align 4, !tbaa !12
  %9 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %10 = load i32, ptr %j.addr, align 4, !tbaa !12
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %9, i64 %idxprom5
  store i32 %8, ptr %arrayidx6, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #5
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @lu_fswap(ptr noundef %x, i32 noundef %i, i32 noundef %j) #3 {
entry:
  %x.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %t = alloca double, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store i32 %i, ptr %i.addr, align 4, !tbaa !12
  store i32 %j, ptr %j.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #5
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1 = load i32, ptr %i.addr, align 4, !tbaa !12
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds double, ptr %0, i64 %idxprom
  %2 = load double, ptr %arrayidx, align 8, !tbaa !26
  store double %2, ptr %t, align 8, !tbaa !26
  %3 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %4 = load i32, ptr %j.addr, align 4, !tbaa !12
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds double, ptr %3, i64 %idxprom1
  %5 = load double, ptr %arrayidx2, align 8, !tbaa !26
  %6 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %7 = load i32, ptr %i.addr, align 4, !tbaa !12
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds double, ptr %6, i64 %idxprom3
  store double %5, ptr %arrayidx4, align 8, !tbaa !26
  %8 = load double, ptr %t, align 8, !tbaa !26
  %9 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %10 = load i32, ptr %j.addr, align 4, !tbaa !12
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds double, ptr %9, i64 %idxprom5
  store double %8, ptr %arrayidx6, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #5
  ret void
}

declare i32 @lu_file_compress(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, double noundef, i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare void @lu_file_reappend(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @lu_list_move(i32 noundef %elem, i32 noundef %list, ptr noundef %flink, ptr noundef %blink, i32 noundef %nelem, ptr noundef %min_list) #3 {
entry:
  %elem.addr = alloca i32, align 4
  %list.addr = alloca i32, align 4
  %flink.addr = alloca ptr, align 8
  %blink.addr = alloca ptr, align 8
  %nelem.addr = alloca i32, align 4
  %min_list.addr = alloca ptr, align 8
  store i32 %elem, ptr %elem.addr, align 4, !tbaa !12
  store i32 %list, ptr %list.addr, align 4, !tbaa !12
  store ptr %flink, ptr %flink.addr, align 8, !tbaa !4
  store ptr %blink, ptr %blink.addr, align 8, !tbaa !4
  store i32 %nelem, ptr %nelem.addr, align 4, !tbaa !12
  store ptr %min_list, ptr %min_list.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %flink.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %blink.addr, align 8, !tbaa !4
  %2 = load i32, ptr %elem.addr, align 4, !tbaa !12
  call void @lu_list_remove(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %3 = load i32, ptr %elem.addr, align 4, !tbaa !12
  %4 = load i32, ptr %list.addr, align 4, !tbaa !12
  %5 = load ptr, ptr %flink.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %blink.addr, align 8, !tbaa !4
  %7 = load i32, ptr %nelem.addr, align 4, !tbaa !12
  %8 = load ptr, ptr %min_list.addr, align 8, !tbaa !4
  call void @lu_list_add(i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @lu_list_remove(ptr noundef %flink, ptr noundef %blink, i32 noundef %elem) #3 {
entry:
  %flink.addr = alloca ptr, align 8
  %blink.addr = alloca ptr, align 8
  %elem.addr = alloca i32, align 4
  store ptr %flink, ptr %flink.addr, align 8, !tbaa !4
  store ptr %blink, ptr %blink.addr, align 8, !tbaa !4
  store i32 %elem, ptr %elem.addr, align 4, !tbaa !12
  %0 = load ptr, ptr %flink.addr, align 8, !tbaa !4
  %1 = load i32, ptr %elem.addr, align 4, !tbaa !12
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !12
  %3 = load ptr, ptr %flink.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %blink.addr, align 8, !tbaa !4
  %5 = load i32, ptr %elem.addr, align 4, !tbaa !12
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %4, i64 %idxprom1
  %6 = load i32, ptr %arrayidx2, align 4, !tbaa !12
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %3, i64 %idxprom3
  store i32 %2, ptr %arrayidx4, align 4, !tbaa !12
  %7 = load ptr, ptr %blink.addr, align 8, !tbaa !4
  %8 = load i32, ptr %elem.addr, align 4, !tbaa !12
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %7, i64 %idxprom5
  %9 = load i32, ptr %arrayidx6, align 4, !tbaa !12
  %10 = load ptr, ptr %blink.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %flink.addr, align 8, !tbaa !4
  %12 = load i32, ptr %elem.addr, align 4, !tbaa !12
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %11, i64 %idxprom7
  %13 = load i32, ptr %arrayidx8, align 4, !tbaa !12
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %10, i64 %idxprom9
  store i32 %9, ptr %arrayidx10, align 4, !tbaa !12
  %14 = load i32, ptr %elem.addr, align 4, !tbaa !12
  %15 = load ptr, ptr %flink.addr, align 8, !tbaa !4
  %16 = load i32, ptr %elem.addr, align 4, !tbaa !12
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %15, i64 %idxprom11
  store i32 %14, ptr %arrayidx12, align 4, !tbaa !12
  %17 = load i32, ptr %elem.addr, align 4, !tbaa !12
  %18 = load ptr, ptr %blink.addr, align 8, !tbaa !4
  %19 = load i32, ptr %elem.addr, align 4, !tbaa !12
  %idxprom13 = sext i32 %19 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %18, i64 %idxprom13
  store i32 %17, ptr %arrayidx14, align 4, !tbaa !12
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @lu_list_add(i32 noundef %elem, i32 noundef %list, ptr noundef %flink, ptr noundef %blink, i32 noundef %nelem, ptr noundef %min_list) #3 {
entry:
  %elem.addr = alloca i32, align 4
  %list.addr = alloca i32, align 4
  %flink.addr = alloca ptr, align 8
  %blink.addr = alloca ptr, align 8
  %nelem.addr = alloca i32, align 4
  %min_list.addr = alloca ptr, align 8
  %temp = alloca i32, align 4
  store i32 %elem, ptr %elem.addr, align 4, !tbaa !12
  store i32 %list, ptr %list.addr, align 4, !tbaa !12
  store ptr %flink, ptr %flink.addr, align 8, !tbaa !4
  store ptr %blink, ptr %blink.addr, align 8, !tbaa !4
  store i32 %nelem, ptr %nelem.addr, align 4, !tbaa !12
  store ptr %min_list, ptr %min_list.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #5
  %0 = load ptr, ptr %blink.addr, align 8, !tbaa !4
  %1 = load i32, ptr %nelem.addr, align 4, !tbaa !12
  %2 = load i32, ptr %list.addr, align 4, !tbaa !12
  %add = add nsw i32 %1, %2
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !12
  store i32 %3, ptr %temp, align 4, !tbaa !12
  %4 = load i32, ptr %elem.addr, align 4, !tbaa !12
  %5 = load ptr, ptr %blink.addr, align 8, !tbaa !4
  %6 = load i32, ptr %nelem.addr, align 4, !tbaa !12
  %7 = load i32, ptr %list.addr, align 4, !tbaa !12
  %add1 = add nsw i32 %6, %7
  %idxprom2 = sext i32 %add1 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %5, i64 %idxprom2
  store i32 %4, ptr %arrayidx3, align 4, !tbaa !12
  %8 = load i32, ptr %temp, align 4, !tbaa !12
  %9 = load ptr, ptr %blink.addr, align 8, !tbaa !4
  %10 = load i32, ptr %elem.addr, align 4, !tbaa !12
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %9, i64 %idxprom4
  store i32 %8, ptr %arrayidx5, align 4, !tbaa !12
  %11 = load i32, ptr %elem.addr, align 4, !tbaa !12
  %12 = load ptr, ptr %flink.addr, align 8, !tbaa !4
  %13 = load i32, ptr %temp, align 4, !tbaa !12
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %12, i64 %idxprom6
  store i32 %11, ptr %arrayidx7, align 4, !tbaa !12
  %14 = load i32, ptr %nelem.addr, align 4, !tbaa !12
  %15 = load i32, ptr %list.addr, align 4, !tbaa !12
  %add8 = add nsw i32 %14, %15
  %16 = load ptr, ptr %flink.addr, align 8, !tbaa !4
  %17 = load i32, ptr %elem.addr, align 4, !tbaa !12
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %16, i64 %idxprom9
  store i32 %add8, ptr %arrayidx10, align 4, !tbaa !12
  %18 = load i32, ptr %list.addr, align 4, !tbaa !12
  %cmp = icmp sgt i32 %18, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %19 = load ptr, ptr %min_list.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %19, null
  br i1 %tobool, label %land.lhs.true11, label %if.end

land.lhs.true11:                                  ; preds = %land.lhs.true
  %20 = load i32, ptr %list.addr, align 4, !tbaa !12
  %21 = load ptr, ptr %min_list.addr, align 8, !tbaa !4
  %22 = load i32, ptr %21, align 4, !tbaa !12
  %cmp12 = icmp slt i32 %20, %22
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true11
  %23 = load i32, ptr %list.addr, align 4, !tbaa !12
  %24 = load ptr, ptr %min_list.addr, align 8, !tbaa !4
  store i32 %23, ptr %24, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true11, %land.lhs.true, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #5
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !10, i64 84}
!9 = !{!"lu", !10, i64 0, !10, i64 4, !10, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !10, i64 224, !10, i64 228, !10, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !10, i64 312, !10, i64 316, !10, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !10, i64 336, !10, i64 340, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !10, i64 376, !10, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !10, i64 404, !10, i64 408, !10, i64 412, !5, i64 416, !5, i64 424, !5, i64 432, !5, i64 440, !5, i64 448, !5, i64 456, !5, i64 464, !5, i64 472, !5, i64 480, !5, i64 488, !5, i64 496, !5, i64 504, !5, i64 512, !5, i64 520, !5, i64 528, !5, i64 536, !5, i64 544, !5, i64 552, !5, i64 560, !5, i64 568, !5, i64 576, !5, i64 584, !5, i64 592, !5, i64 600, !5, i64 608, !5, i64 616, !5, i64 624, !5, i64 632, !5, i64 640, !5, i64 648, !5, i64 656, !5, i64 664, !5, i64 672, !5, i64 680, !5, i64 688}
!10 = !{!"int", !6, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = !{!10, !10, i64 0}
!13 = !{!9, !10, i64 316}
!14 = !{!9, !10, i64 0}
!15 = !{!9, !10, i64 4}
!16 = !{!9, !10, i64 384}
!17 = !{!9, !10, i64 380}
!18 = !{!9, !5, i64 680}
!19 = !{!9, !5, i64 632}
!20 = !{!9, !5, i64 640}
!21 = !{!9, !5, i64 536}
!22 = !{!9, !5, i64 552}
!23 = !{!9, !5, i64 424}
!24 = !{!9, !10, i64 88}
!25 = !{!9, !10, i64 92}
!26 = !{!11, !11, i64 0}
!27 = !{!9, !11, i64 24}
!28 = !{!9, !10, i64 340}
!29 = !{!9, !11, i64 16}
!30 = !{!9, !5, i64 464}
!31 = !{!9, !5, i64 480}
!32 = !{!9, !5, i64 496}
!33 = !{!9, !5, i64 520}
!34 = !{!9, !5, i64 416}
!35 = !{!9, !5, i64 440}
!36 = !{!9, !5, i64 432}
!37 = !{!9, !5, i64 456}
!38 = !{!9, !5, i64 448}
!39 = !{!9, !10, i64 48}
!40 = !{!9, !11, i64 56}
!41 = !{!9, !5, i64 568}
!42 = !{!9, !5, i64 584}
!43 = !{!9, !5, i64 648}
!44 = !{!9, !10, i64 336}
!45 = !{!9, !10, i64 96}
!46 = !{!9, !10, i64 332}
!47 = !{!9, !5, i64 664}
!48 = !{!9, !5, i64 688}
!49 = !{!50, !50, i64 0}
!50 = !{!"long", !6, i64 0}
