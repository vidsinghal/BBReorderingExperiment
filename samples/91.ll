; ModuleID = 'samples/91.bc'
source_filename = "../Source/umfpack_get_numeric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NumericType = type { double, double, double, double, double, double, double, double, double, double, double, i32, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DoubleComplex = type { [2 x double] }
%union.Unit_union = type { double }

; Function Attrs: uwtable
define i32 @umfpack_zi_get_numeric(ptr noundef %Lp, ptr noundef %Lj, ptr noundef %Lx, ptr noundef %Lz, ptr noundef %Up, ptr noundef %Ui, ptr noundef %Ux, ptr noundef %Uz, ptr noundef %P, ptr noundef %Q, ptr noundef %Dx, ptr noundef %Dz, ptr noundef %p_do_recip, ptr noundef %Rs, ptr noundef %NumericHandle) #0 {
entry:
  %retval = alloca i32, align 4
  %Lp.addr = alloca ptr, align 8
  %Lj.addr = alloca ptr, align 8
  %Lx.addr = alloca ptr, align 8
  %Lz.addr = alloca ptr, align 8
  %Up.addr = alloca ptr, align 8
  %Ui.addr = alloca ptr, align 8
  %Ux.addr = alloca ptr, align 8
  %Uz.addr = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  %Q.addr = alloca ptr, align 8
  %Dx.addr = alloca ptr, align 8
  %Dz.addr = alloca ptr, align 8
  %p_do_recip.addr = alloca ptr, align 8
  %Rs.addr = alloca ptr, align 8
  %NumericHandle.addr = alloca ptr, align 8
  %Numeric = alloca ptr, align 8
  %getL = alloca i32, align 4
  %getU = alloca i32, align 4
  %Rperm = alloca ptr, align 8
  %Cperm = alloca ptr, align 8
  %k = alloca i32, align 4
  %nn = alloca i32, align 4
  %n_row = alloca i32, align 4
  %n_col = alloca i32, align 4
  %Wi = alloca ptr, align 8
  %Pattern = alloca ptr, align 8
  %n_inner = alloca i32, align 4
  %Rs1 = alloca ptr, align 8
  %D = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %Lp, ptr %Lp.addr, align 8, !tbaa !4
  store ptr %Lj, ptr %Lj.addr, align 8, !tbaa !4
  store ptr %Lx, ptr %Lx.addr, align 8, !tbaa !4
  store ptr %Lz, ptr %Lz.addr, align 8, !tbaa !4
  store ptr %Up, ptr %Up.addr, align 8, !tbaa !4
  store ptr %Ui, ptr %Ui.addr, align 8, !tbaa !4
  store ptr %Ux, ptr %Ux.addr, align 8, !tbaa !4
  store ptr %Uz, ptr %Uz.addr, align 8, !tbaa !4
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  store ptr %Q, ptr %Q.addr, align 8, !tbaa !4
  store ptr %Dx, ptr %Dx.addr, align 8, !tbaa !4
  store ptr %Dz, ptr %Dz.addr, align 8, !tbaa !4
  store ptr %p_do_recip, ptr %p_do_recip.addr, align 8, !tbaa !4
  store ptr %Rs, ptr %Rs.addr, align 8, !tbaa !4
  store ptr %NumericHandle, ptr %NumericHandle.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Numeric) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %getL) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %getU) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Rperm) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Cperm) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nn) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_row) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_col) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wi) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Pattern) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_inner) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Rs1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %D) #5
  store ptr null, ptr %Wi, align 8, !tbaa !4
  store ptr null, ptr %Pattern, align 8, !tbaa !4
  %0 = load ptr, ptr %NumericHandle.addr, align 8, !tbaa !4
  store ptr %0, ptr %Numeric, align 8, !tbaa !4
  %1 = load ptr, ptr %Numeric, align 8, !tbaa !4
  %call = call i32 @umfzi_valid_numeric(ptr noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %Numeric, align 8, !tbaa !4
  %n_row1 = getelementptr inbounds %struct.NumericType, ptr %2, i32 0, i32 33
  %3 = load i32, ptr %n_row1, align 8, !tbaa !8
  store i32 %3, ptr %n_row, align 4, !tbaa !12
  %4 = load ptr, ptr %Numeric, align 8, !tbaa !4
  %n_col2 = getelementptr inbounds %struct.NumericType, ptr %4, i32 0, i32 34
  %5 = load i32, ptr %n_col2, align 4, !tbaa !13
  store i32 %5, ptr %n_col, align 4, !tbaa !12
  %6 = load i32, ptr %n_row, align 4, !tbaa !12
  %7 = load i32, ptr %n_col, align 4, !tbaa !12
  %cmp = icmp sgt i32 %6, %7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load i32, ptr %n_row, align 4, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %9 = load i32, ptr %n_col, align 4, !tbaa !12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, ptr %nn, align 4, !tbaa !12
  %10 = load i32, ptr %n_row, align 4, !tbaa !12
  %11 = load i32, ptr %n_col, align 4, !tbaa !12
  %cmp3 = icmp slt i32 %10, %11
  br i1 %cmp3, label %cond.true4, label %cond.false5

cond.true4:                                       ; preds = %cond.end
  %12 = load i32, ptr %n_row, align 4, !tbaa !12
  br label %cond.end6

cond.false5:                                      ; preds = %cond.end
  %13 = load i32, ptr %n_col, align 4, !tbaa !12
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.true4
  %cond7 = phi i32 [ %12, %cond.true4 ], [ %13, %cond.false5 ]
  store i32 %cond7, ptr %n_inner, align 4, !tbaa !12
  %14 = load ptr, ptr %Lp.addr, align 8, !tbaa !4
  %tobool8 = icmp ne ptr %14, null
  br i1 %tobool8, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %cond.end6
  %15 = load ptr, ptr %Lj.addr, align 8, !tbaa !4
  %tobool9 = icmp ne ptr %15, null
  br i1 %tobool9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %16 = load ptr, ptr %Lx.addr, align 8, !tbaa !4
  %tobool10 = icmp ne ptr %16, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %cond.end6
  %17 = phi i1 [ false, %land.lhs.true ], [ false, %cond.end6 ], [ %tobool10, %land.rhs ]
  %land.ext = zext i1 %17 to i32
  store i32 %land.ext, ptr %getL, align 4, !tbaa !12
  %18 = load ptr, ptr %Up.addr, align 8, !tbaa !4
  %tobool11 = icmp ne ptr %18, null
  br i1 %tobool11, label %land.lhs.true12, label %land.end16

land.lhs.true12:                                  ; preds = %land.end
  %19 = load ptr, ptr %Ui.addr, align 8, !tbaa !4
  %tobool13 = icmp ne ptr %19, null
  br i1 %tobool13, label %land.rhs14, label %land.end16

land.rhs14:                                       ; preds = %land.lhs.true12
  %20 = load ptr, ptr %Ux.addr, align 8, !tbaa !4
  %tobool15 = icmp ne ptr %20, null
  br label %land.end16

land.end16:                                       ; preds = %land.rhs14, %land.lhs.true12, %land.end
  %21 = phi i1 [ false, %land.lhs.true12 ], [ false, %land.end ], [ %tobool15, %land.rhs14 ]
  %land.ext17 = zext i1 %21 to i32
  store i32 %land.ext17, ptr %getU, align 4, !tbaa !12
  %22 = load i32, ptr %getL, align 4, !tbaa !12
  %tobool18 = icmp ne i32 %22, 0
  br i1 %tobool18, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.end16
  %23 = load i32, ptr %getU, align 4, !tbaa !12
  %tobool19 = icmp ne i32 %23, 0
  br i1 %tobool19, label %if.then20, label %if.end30

if.then20:                                        ; preds = %lor.lhs.false, %land.end16
  %24 = load i32, ptr %nn, align 4, !tbaa !12
  %call21 = call ptr @umf_i_malloc(i32 noundef %24, i64 noundef 4)
  store ptr %call21, ptr %Wi, align 8, !tbaa !4
  %25 = load i32, ptr %nn, align 4, !tbaa !12
  %call22 = call ptr @umf_i_malloc(i32 noundef %25, i64 noundef 4)
  store ptr %call22, ptr %Pattern, align 8, !tbaa !4
  %26 = load ptr, ptr %Wi, align 8, !tbaa !4
  %tobool23 = icmp ne ptr %26, null
  br i1 %tobool23, label %lor.lhs.false24, label %if.then26

lor.lhs.false24:                                  ; preds = %if.then20
  %27 = load ptr, ptr %Pattern, align 8, !tbaa !4
  %tobool25 = icmp ne ptr %27, null
  br i1 %tobool25, label %if.end29, label %if.then26

if.then26:                                        ; preds = %lor.lhs.false24, %if.then20
  %28 = load ptr, ptr %Wi, align 8, !tbaa !4
  %call27 = call ptr @umf_i_free(ptr noundef %28)
  %29 = load ptr, ptr %Pattern, align 8, !tbaa !4
  %call28 = call ptr @umf_i_free(ptr noundef %29)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end29:                                         ; preds = %lor.lhs.false24
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %lor.lhs.false
  %30 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %cmp31 = icmp ne ptr %30, null
  br i1 %cmp31, label %if.then32, label %if.end37

if.then32:                                        ; preds = %if.end30
  %31 = load ptr, ptr %Numeric, align 8, !tbaa !4
  %Rperm33 = getelementptr inbounds %struct.NumericType, ptr %31, i32 0, i32 18
  %32 = load ptr, ptr %Rperm33, align 8, !tbaa !14
  store ptr %32, ptr %Rperm, align 8, !tbaa !4
  store i32 0, ptr %k, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then32
  %33 = load i32, ptr %k, align 4, !tbaa !12
  %34 = load i32, ptr %n_row, align 4, !tbaa !12
  %cmp34 = icmp slt i32 %33, %34
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load ptr, ptr %Rperm, align 8, !tbaa !4
  %36 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom = sext i32 %36 to i64
  %arrayidx = getelementptr inbounds i32, ptr %35, i64 %idxprom
  %37 = load i32, ptr %arrayidx, align 4, !tbaa !12
  %38 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %39 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom35 = sext i32 %39 to i64
  %arrayidx36 = getelementptr inbounds i32, ptr %38, i64 %idxprom35
  store i32 %37, ptr %arrayidx36, align 4, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, ptr %k, align 4, !tbaa !12
  %inc = add nsw i32 %40, 1
  store i32 %inc, ptr %k, align 4, !tbaa !12
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  br label %if.end37

if.end37:                                         ; preds = %for.end, %if.end30
  %41 = load ptr, ptr %Q.addr, align 8, !tbaa !4
  %cmp38 = icmp ne ptr %41, null
  br i1 %cmp38, label %if.then39, label %if.end51

if.then39:                                        ; preds = %if.end37
  %42 = load ptr, ptr %Numeric, align 8, !tbaa !4
  %Cperm40 = getelementptr inbounds %struct.NumericType, ptr %42, i32 0, i32 19
  %43 = load ptr, ptr %Cperm40, align 8, !tbaa !17
  store ptr %43, ptr %Cperm, align 8, !tbaa !4
  store i32 0, ptr %k, align 4, !tbaa !12
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc48, %if.then39
  %44 = load i32, ptr %k, align 4, !tbaa !12
  %45 = load i32, ptr %n_col, align 4, !tbaa !12
  %cmp42 = icmp slt i32 %44, %45
  br i1 %cmp42, label %for.body43, label %for.end50

for.body43:                                       ; preds = %for.cond41
  %46 = load ptr, ptr %Cperm, align 8, !tbaa !4
  %47 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom44 = sext i32 %47 to i64
  %arrayidx45 = getelementptr inbounds i32, ptr %46, i64 %idxprom44
  %48 = load i32, ptr %arrayidx45, align 4, !tbaa !12
  %49 = load ptr, ptr %Q.addr, align 8, !tbaa !4
  %50 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom46 = sext i32 %50 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %49, i64 %idxprom46
  store i32 %48, ptr %arrayidx47, align 4, !tbaa !12
  br label %for.inc48

for.inc48:                                        ; preds = %for.body43
  %51 = load i32, ptr %k, align 4, !tbaa !12
  %inc49 = add nsw i32 %51, 1
  store i32 %inc49, ptr %k, align 4, !tbaa !12
  br label %for.cond41, !llvm.loop !18

for.end50:                                        ; preds = %for.cond41
  br label %if.end51

if.end51:                                         ; preds = %for.end50, %if.end37
  %52 = load i32, ptr %getL, align 4, !tbaa !12
  %tobool52 = icmp ne i32 %52, 0
  br i1 %tobool52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end51
  %53 = load ptr, ptr %Lp.addr, align 8, !tbaa !4
  %54 = load ptr, ptr %Lj.addr, align 8, !tbaa !4
  %55 = load ptr, ptr %Lx.addr, align 8, !tbaa !4
  %56 = load ptr, ptr %Lz.addr, align 8, !tbaa !4
  %57 = load ptr, ptr %Numeric, align 8, !tbaa !4
  %58 = load ptr, ptr %Pattern, align 8, !tbaa !4
  %59 = load ptr, ptr %Wi, align 8, !tbaa !4
  call void @get_L(ptr noundef %53, ptr noundef %54, ptr noundef %55, ptr noundef %56, ptr noundef %57, ptr noundef %58, ptr noundef %59)
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end51
  %60 = load i32, ptr %getU, align 4, !tbaa !12
  %tobool55 = icmp ne i32 %60, 0
  br i1 %tobool55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end54
  %61 = load ptr, ptr %Up.addr, align 8, !tbaa !4
  %62 = load ptr, ptr %Ui.addr, align 8, !tbaa !4
  %63 = load ptr, ptr %Ux.addr, align 8, !tbaa !4
  %64 = load ptr, ptr %Uz.addr, align 8, !tbaa !4
  %65 = load ptr, ptr %Numeric, align 8, !tbaa !4
  %66 = load ptr, ptr %Pattern, align 8, !tbaa !4
  %67 = load ptr, ptr %Wi, align 8, !tbaa !4
  call void @get_U(ptr noundef %61, ptr noundef %62, ptr noundef %63, ptr noundef %64, ptr noundef %65, ptr noundef %66, ptr noundef %67)
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end54
  %68 = load ptr, ptr %Dx.addr, align 8, !tbaa !4
  %cmp58 = icmp ne ptr %68, null
  br i1 %cmp58, label %if.then59, label %if.end100

if.then59:                                        ; preds = %if.end57
  %69 = load ptr, ptr %Numeric, align 8, !tbaa !4
  %D60 = getelementptr inbounds %struct.NumericType, ptr %69, i32 0, i32 30
  %70 = load ptr, ptr %D60, align 8, !tbaa !19
  store ptr %70, ptr %D, align 8, !tbaa !4
  %71 = load ptr, ptr %Dz.addr, align 8, !tbaa !4
  %cmp61 = icmp ne ptr %71, null
  br i1 %cmp61, label %if.then62, label %if.else

if.then62:                                        ; preds = %if.then59
  store i32 0, ptr %k, align 4, !tbaa !12
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc77, %if.then62
  %72 = load i32, ptr %k, align 4, !tbaa !12
  %73 = load i32, ptr %n_inner, align 4, !tbaa !12
  %cmp64 = icmp slt i32 %72, %73
  br i1 %cmp64, label %for.body65, label %for.end79

for.body65:                                       ; preds = %for.cond63
  %74 = load ptr, ptr %D, align 8, !tbaa !4
  %75 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom66 = sext i32 %75 to i64
  %arrayidx67 = getelementptr inbounds %struct.DoubleComplex, ptr %74, i64 %idxprom66
  %component = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx67, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [2 x double], ptr %component, i64 0, i64 0
  %76 = load double, ptr %arrayidx68, align 8, !tbaa !20
  %77 = load ptr, ptr %Dx.addr, align 8, !tbaa !4
  %78 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom69 = sext i32 %78 to i64
  %arrayidx70 = getelementptr inbounds double, ptr %77, i64 %idxprom69
  store double %76, ptr %arrayidx70, align 8, !tbaa !20
  %79 = load ptr, ptr %D, align 8, !tbaa !4
  %80 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom71 = sext i32 %80 to i64
  %arrayidx72 = getelementptr inbounds %struct.DoubleComplex, ptr %79, i64 %idxprom71
  %component73 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx72, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [2 x double], ptr %component73, i64 0, i64 1
  %81 = load double, ptr %arrayidx74, align 8, !tbaa !20
  %82 = load ptr, ptr %Dz.addr, align 8, !tbaa !4
  %83 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom75 = sext i32 %83 to i64
  %arrayidx76 = getelementptr inbounds double, ptr %82, i64 %idxprom75
  store double %81, ptr %arrayidx76, align 8, !tbaa !20
  br label %for.inc77

for.inc77:                                        ; preds = %for.body65
  %84 = load i32, ptr %k, align 4, !tbaa !12
  %inc78 = add nsw i32 %84, 1
  store i32 %inc78, ptr %k, align 4, !tbaa !12
  br label %for.cond63, !llvm.loop !21

for.end79:                                        ; preds = %for.cond63
  br label %if.end99

if.else:                                          ; preds = %if.then59
  store i32 0, ptr %k, align 4, !tbaa !12
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc96, %if.else
  %85 = load i32, ptr %k, align 4, !tbaa !12
  %86 = load i32, ptr %n_inner, align 4, !tbaa !12
  %cmp81 = icmp slt i32 %85, %86
  br i1 %cmp81, label %for.body82, label %for.end98

for.body82:                                       ; preds = %for.cond80
  %87 = load ptr, ptr %D, align 8, !tbaa !4
  %88 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom83 = sext i32 %88 to i64
  %arrayidx84 = getelementptr inbounds %struct.DoubleComplex, ptr %87, i64 %idxprom83
  %component85 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx84, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [2 x double], ptr %component85, i64 0, i64 0
  %89 = load double, ptr %arrayidx86, align 8, !tbaa !20
  %90 = load ptr, ptr %Dx.addr, align 8, !tbaa !4
  %91 = load i32, ptr %k, align 4, !tbaa !12
  %mul = mul nsw i32 2, %91
  %idxprom87 = sext i32 %mul to i64
  %arrayidx88 = getelementptr inbounds double, ptr %90, i64 %idxprom87
  store double %89, ptr %arrayidx88, align 8, !tbaa !20
  %92 = load ptr, ptr %D, align 8, !tbaa !4
  %93 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom89 = sext i32 %93 to i64
  %arrayidx90 = getelementptr inbounds %struct.DoubleComplex, ptr %92, i64 %idxprom89
  %component91 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx90, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [2 x double], ptr %component91, i64 0, i64 1
  %94 = load double, ptr %arrayidx92, align 8, !tbaa !20
  %95 = load ptr, ptr %Dx.addr, align 8, !tbaa !4
  %96 = load i32, ptr %k, align 4, !tbaa !12
  %mul93 = mul nsw i32 2, %96
  %add = add nsw i32 %mul93, 1
  %idxprom94 = sext i32 %add to i64
  %arrayidx95 = getelementptr inbounds double, ptr %95, i64 %idxprom94
  store double %94, ptr %arrayidx95, align 8, !tbaa !20
  br label %for.inc96

for.inc96:                                        ; preds = %for.body82
  %97 = load i32, ptr %k, align 4, !tbaa !12
  %inc97 = add nsw i32 %97, 1
  store i32 %inc97, ptr %k, align 4, !tbaa !12
  br label %for.cond80, !llvm.loop !22

for.end98:                                        ; preds = %for.cond80
  br label %if.end99

if.end99:                                         ; preds = %for.end98, %for.end79
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.end57
  %98 = load ptr, ptr %p_do_recip.addr, align 8, !tbaa !4
  %cmp101 = icmp ne ptr %98, null
  br i1 %cmp101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.end100
  %99 = load ptr, ptr %Numeric, align 8, !tbaa !4
  %do_recip = getelementptr inbounds %struct.NumericType, ptr %99, i32 0, i32 31
  %100 = load i32, ptr %do_recip, align 8, !tbaa !23
  %101 = load ptr, ptr %p_do_recip.addr, align 8, !tbaa !4
  store i32 %100, ptr %101, align 4, !tbaa !12
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.end100
  %102 = load ptr, ptr %Rs.addr, align 8, !tbaa !4
  %cmp104 = icmp ne ptr %102, null
  br i1 %cmp104, label %if.then105, label %if.end129

if.then105:                                       ; preds = %if.end103
  %103 = load ptr, ptr %Numeric, align 8, !tbaa !4
  %Rs106 = getelementptr inbounds %struct.NumericType, ptr %103, i32 0, i32 32
  %104 = load ptr, ptr %Rs106, align 8, !tbaa !24
  store ptr %104, ptr %Rs1, align 8, !tbaa !4
  %105 = load ptr, ptr %Rs1, align 8, !tbaa !4
  %cmp107 = icmp eq ptr %105, null
  br i1 %cmp107, label %if.then108, label %if.else117

if.then108:                                       ; preds = %if.then105
  store i32 0, ptr %k, align 4, !tbaa !12
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc114, %if.then108
  %106 = load i32, ptr %k, align 4, !tbaa !12
  %107 = load i32, ptr %n_row, align 4, !tbaa !12
  %cmp110 = icmp slt i32 %106, %107
  br i1 %cmp110, label %for.body111, label %for.end116

for.body111:                                      ; preds = %for.cond109
  %108 = load ptr, ptr %Rs.addr, align 8, !tbaa !4
  %109 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom112 = sext i32 %109 to i64
  %arrayidx113 = getelementptr inbounds double, ptr %108, i64 %idxprom112
  store double 1.000000e+00, ptr %arrayidx113, align 8, !tbaa !20
  br label %for.inc114

for.inc114:                                       ; preds = %for.body111
  %110 = load i32, ptr %k, align 4, !tbaa !12
  %inc115 = add nsw i32 %110, 1
  store i32 %inc115, ptr %k, align 4, !tbaa !12
  br label %for.cond109, !llvm.loop !25

for.end116:                                       ; preds = %for.cond109
  br label %if.end128

if.else117:                                       ; preds = %if.then105
  store i32 0, ptr %k, align 4, !tbaa !12
  br label %for.cond118

for.cond118:                                      ; preds = %for.inc125, %if.else117
  %111 = load i32, ptr %k, align 4, !tbaa !12
  %112 = load i32, ptr %n_row, align 4, !tbaa !12
  %cmp119 = icmp slt i32 %111, %112
  br i1 %cmp119, label %for.body120, label %for.end127

for.body120:                                      ; preds = %for.cond118
  %113 = load ptr, ptr %Rs1, align 8, !tbaa !4
  %114 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom121 = sext i32 %114 to i64
  %arrayidx122 = getelementptr inbounds double, ptr %113, i64 %idxprom121
  %115 = load double, ptr %arrayidx122, align 8, !tbaa !20
  %116 = load ptr, ptr %Rs.addr, align 8, !tbaa !4
  %117 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom123 = sext i32 %117 to i64
  %arrayidx124 = getelementptr inbounds double, ptr %116, i64 %idxprom123
  store double %115, ptr %arrayidx124, align 8, !tbaa !20
  br label %for.inc125

for.inc125:                                       ; preds = %for.body120
  %118 = load i32, ptr %k, align 4, !tbaa !12
  %inc126 = add nsw i32 %118, 1
  store i32 %inc126, ptr %k, align 4, !tbaa !12
  br label %for.cond118, !llvm.loop !26

for.end127:                                       ; preds = %for.cond118
  br label %if.end128

if.end128:                                        ; preds = %for.end127, %for.end116
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.end103
  %119 = load ptr, ptr %Wi, align 8, !tbaa !4
  %call130 = call ptr @umf_i_free(ptr noundef %119)
  %120 = load ptr, ptr %Pattern, align 8, !tbaa !4
  %call131 = call ptr @umf_i_free(ptr noundef %120)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end129, %if.then26, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %D) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Rs1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_inner) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Pattern) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wi) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_col) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_row) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nn) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Cperm) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Rperm) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %getU) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %getL) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Numeric) #5
  %121 = load i32, ptr %retval, align 4
  ret i32 %121
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @umfzi_valid_numeric(ptr noundef) #2

declare ptr @umf_i_malloc(i32 noundef, i64 noundef) #2

declare ptr @umf_i_free(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @get_L(ptr noundef %Lp, ptr noundef %Lj, ptr noundef %Lx, ptr noundef %Lz, ptr noundef %Numeric, ptr noundef %Pattern, ptr noundef %Wi) #3 {
entry:
  %Lp.addr = alloca ptr, align 8
  %Lj.addr = alloca ptr, align 8
  %Lx.addr = alloca ptr, align 8
  %Lz.addr = alloca ptr, align 8
  %Numeric.addr = alloca ptr, align 8
  %Pattern.addr = alloca ptr, align 8
  %Wi.addr = alloca ptr, align 8
  %value = alloca %struct.DoubleComplex, align 8
  %xp = alloca ptr, align 8
  %Lval = alloca ptr, align 8
  %deg = alloca i32, align 4
  %ip = alloca ptr, align 8
  %j = alloca i32, align 4
  %row = alloca i32, align 4
  %n_row = alloca i32, align 4
  %n_col = alloca i32, align 4
  %n_inner = alloca i32, align 4
  %Lpos = alloca ptr, align 8
  %Lilen = alloca ptr, align 8
  %Lip = alloca ptr, align 8
  %p = alloca i32, align 4
  %llen = alloca i32, align 4
  %lnz2 = alloca i32, align 4
  %lp = alloca i32, align 4
  %newLchain = alloca i32, align 4
  %k = alloca i32, align 4
  %pos = alloca i32, align 4
  %npiv = alloca i32, align 4
  %Li = alloca ptr, align 8
  %n1 = alloca i32, align 4
  %split = alloca i32, align 4
  store ptr %Lp, ptr %Lp.addr, align 8, !tbaa !4
  store ptr %Lj, ptr %Lj.addr, align 8, !tbaa !4
  store ptr %Lx, ptr %Lx.addr, align 8, !tbaa !4
  store ptr %Lz, ptr %Lz.addr, align 8, !tbaa !4
  store ptr %Numeric, ptr %Numeric.addr, align 8, !tbaa !4
  store ptr %Pattern, ptr %Pattern.addr, align 8, !tbaa !4
  store ptr %Wi, ptr %Wi.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %value) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %xp) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Lval) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %deg) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %row) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_row) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_col) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_inner) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Lpos) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Lilen) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Lip) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %llen) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %lnz2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %lp) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %newLchain) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %npiv) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Li) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %split) #5
  %0 = load ptr, ptr %Lz.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %split, align 4, !tbaa !12
  %1 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %n_row1 = getelementptr inbounds %struct.NumericType, ptr %1, i32 0, i32 33
  %2 = load i32, ptr %n_row1, align 8, !tbaa !8
  store i32 %2, ptr %n_row, align 4, !tbaa !12
  %3 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %n_col2 = getelementptr inbounds %struct.NumericType, ptr %3, i32 0, i32 34
  %4 = load i32, ptr %n_col2, align 4, !tbaa !13
  store i32 %4, ptr %n_col, align 4, !tbaa !12
  %5 = load i32, ptr %n_row, align 4, !tbaa !12
  %6 = load i32, ptr %n_col, align 4, !tbaa !12
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, ptr %n_row, align 4, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i32, ptr %n_col, align 4, !tbaa !12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %8, %cond.false ]
  store i32 %cond, ptr %n_inner, align 4, !tbaa !12
  %9 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %npiv5 = getelementptr inbounds %struct.NumericType, ptr %9, i32 0, i32 28
  %10 = load i32, ptr %npiv5, align 4, !tbaa !27
  store i32 %10, ptr %npiv, align 4, !tbaa !12
  %11 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %n16 = getelementptr inbounds %struct.NumericType, ptr %11, i32 0, i32 35
  %12 = load i32, ptr %n16, align 8, !tbaa !28
  store i32 %12, ptr %n1, align 4, !tbaa !12
  %13 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Lpos7 = getelementptr inbounds %struct.NumericType, ptr %13, i32 0, i32 21
  %14 = load ptr, ptr %Lpos7, align 8, !tbaa !29
  store ptr %14, ptr %Lpos, align 8, !tbaa !4
  %15 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Lilen8 = getelementptr inbounds %struct.NumericType, ptr %15, i32 0, i32 23
  %16 = load ptr, ptr %Lilen8, align 8, !tbaa !30
  store ptr %16, ptr %Lilen, align 8, !tbaa !4
  %17 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Lip9 = getelementptr inbounds %struct.NumericType, ptr %17, i32 0, i32 22
  %18 = load ptr, ptr %Lip9, align 8, !tbaa !31
  store ptr %18, ptr %Lip, align 8, !tbaa !4
  store i32 0, ptr %deg, align 4, !tbaa !12
  store i32 0, ptr %row, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %19 = load i32, ptr %row, align 4, !tbaa !12
  %20 = load i32, ptr %n_inner, align 4, !tbaa !12
  %cmp10 = icmp slt i32 %19, %20
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %Wi.addr, align 8, !tbaa !4
  %22 = load i32, ptr %row, align 4, !tbaa !12
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds i32, ptr %21, i64 %idxprom
  store i32 1, ptr %arrayidx, align 4, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, ptr %row, align 4, !tbaa !12
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %row, align 4, !tbaa !12
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  %24 = load i32, ptr %n_inner, align 4, !tbaa !12
  store i32 %24, ptr %row, align 4, !tbaa !12
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc18, %for.end
  %25 = load i32, ptr %row, align 4, !tbaa !12
  %26 = load i32, ptr %n_row, align 4, !tbaa !12
  %cmp13 = icmp slt i32 %25, %26
  br i1 %cmp13, label %for.body15, label %for.end20

for.body15:                                       ; preds = %for.cond12
  %27 = load ptr, ptr %Wi.addr, align 8, !tbaa !4
  %28 = load i32, ptr %row, align 4, !tbaa !12
  %idxprom16 = sext i32 %28 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %27, i64 %idxprom16
  store i32 0, ptr %arrayidx17, align 4, !tbaa !12
  br label %for.inc18

for.inc18:                                        ; preds = %for.body15
  %29 = load i32, ptr %row, align 4, !tbaa !12
  %inc19 = add nsw i32 %29, 1
  store i32 %inc19, ptr %row, align 4, !tbaa !12
  br label %for.cond12, !llvm.loop !33

for.end20:                                        ; preds = %for.cond12
  store i32 0, ptr %k, align 4, !tbaa !12
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc61, %for.end20
  %30 = load i32, ptr %k, align 4, !tbaa !12
  %31 = load i32, ptr %n1, align 4, !tbaa !12
  %cmp22 = icmp slt i32 %30, %31
  br i1 %cmp22, label %for.body24, label %for.end63

for.body24:                                       ; preds = %for.cond21
  %32 = load ptr, ptr %Lilen, align 8, !tbaa !4
  %33 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom25 = sext i32 %33 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %32, i64 %idxprom25
  %34 = load i32, ptr %arrayidx26, align 4, !tbaa !12
  store i32 %34, ptr %deg, align 4, !tbaa !12
  %35 = load i32, ptr %deg, align 4, !tbaa !12
  %cmp27 = icmp sgt i32 %35, 0
  br i1 %cmp27, label %if.then, label %if.end60

if.then:                                          ; preds = %for.body24
  %36 = load ptr, ptr %Lip, align 8, !tbaa !4
  %37 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom29 = sext i32 %37 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %36, i64 %idxprom29
  %38 = load i32, ptr %arrayidx30, align 4, !tbaa !12
  store i32 %38, ptr %lp, align 4, !tbaa !12
  %39 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory = getelementptr inbounds %struct.NumericType, ptr %39, i32 0, i32 13
  %40 = load ptr, ptr %Memory, align 8, !tbaa !34
  %41 = load i32, ptr %lp, align 4, !tbaa !12
  %idx.ext = sext i32 %41 to i64
  %add.ptr = getelementptr inbounds %union.Unit_union, ptr %40, i64 %idx.ext
  store ptr %add.ptr, ptr %Li, align 8, !tbaa !4
  %42 = load i32, ptr %deg, align 4, !tbaa !12
  %conv31 = sext i32 %42 to i64
  %mul = mul i64 4, %conv31
  %add = add i64 %mul, 8
  %sub = sub i64 %add, 1
  %div = udiv i64 %sub, 8
  %43 = load i32, ptr %lp, align 4, !tbaa !12
  %conv32 = sext i32 %43 to i64
  %add33 = add i64 %conv32, %div
  %conv34 = trunc i64 %add33 to i32
  store i32 %conv34, ptr %lp, align 4, !tbaa !12
  %44 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory35 = getelementptr inbounds %struct.NumericType, ptr %44, i32 0, i32 13
  %45 = load ptr, ptr %Memory35, align 8, !tbaa !34
  %46 = load i32, ptr %lp, align 4, !tbaa !12
  %idx.ext36 = sext i32 %46 to i64
  %add.ptr37 = getelementptr inbounds %union.Unit_union, ptr %45, i64 %idx.ext36
  store ptr %add.ptr37, ptr %Lval, align 8, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !12
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc57, %if.then
  %47 = load i32, ptr %j, align 4, !tbaa !12
  %48 = load i32, ptr %deg, align 4, !tbaa !12
  %cmp39 = icmp slt i32 %47, %48
  br i1 %cmp39, label %for.body41, label %for.end59

for.body41:                                       ; preds = %for.cond38
  %49 = load ptr, ptr %Li, align 8, !tbaa !4
  %50 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom42 = sext i32 %50 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %49, i64 %idxprom42
  %51 = load i32, ptr %arrayidx43, align 4, !tbaa !12
  store i32 %51, ptr %row, align 4, !tbaa !12
  %52 = load ptr, ptr %Lval, align 8, !tbaa !4
  %53 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom44 = sext i32 %53 to i64
  %arrayidx45 = getelementptr inbounds %struct.DoubleComplex, ptr %52, i64 %idxprom44
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %value, ptr align 8 %arrayidx45, i64 16, i1 false), !tbaa.struct !35
  %component = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [2 x double], ptr %component, i64 0, i64 0
  %54 = load double, ptr %arrayidx46, align 8, !tbaa !20
  %cmp47 = fcmp une double %54, 0.000000e+00
  br i1 %cmp47, label %if.then53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body41
  %component49 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [2 x double], ptr %component49, i64 0, i64 1
  %55 = load double, ptr %arrayidx50, align 8, !tbaa !20
  %cmp51 = fcmp une double %55, 0.000000e+00
  br i1 %cmp51, label %if.then53, label %if.end

if.then53:                                        ; preds = %lor.lhs.false, %for.body41
  %56 = load ptr, ptr %Wi.addr, align 8, !tbaa !4
  %57 = load i32, ptr %row, align 4, !tbaa !12
  %idxprom54 = sext i32 %57 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %56, i64 %idxprom54
  %58 = load i32, ptr %arrayidx55, align 4, !tbaa !12
  %inc56 = add nsw i32 %58, 1
  store i32 %inc56, ptr %arrayidx55, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then53, %lor.lhs.false
  br label %for.inc57

for.inc57:                                        ; preds = %if.end
  %59 = load i32, ptr %j, align 4, !tbaa !12
  %inc58 = add nsw i32 %59, 1
  store i32 %inc58, ptr %j, align 4, !tbaa !12
  br label %for.cond38, !llvm.loop !37

for.end59:                                        ; preds = %for.cond38
  br label %if.end60

if.end60:                                         ; preds = %for.end59, %for.body24
  br label %for.inc61

for.inc61:                                        ; preds = %if.end60
  %60 = load i32, ptr %k, align 4, !tbaa !12
  %inc62 = add nsw i32 %60, 1
  store i32 %inc62, ptr %k, align 4, !tbaa !12
  br label %for.cond21, !llvm.loop !38

for.end63:                                        ; preds = %for.cond21
  %61 = load i32, ptr %n1, align 4, !tbaa !12
  store i32 %61, ptr %k, align 4, !tbaa !12
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc133, %for.end63
  %62 = load i32, ptr %k, align 4, !tbaa !12
  %63 = load i32, ptr %npiv, align 4, !tbaa !12
  %cmp65 = icmp slt i32 %62, %63
  br i1 %cmp65, label %for.body67, label %for.end135

for.body67:                                       ; preds = %for.cond64
  %64 = load ptr, ptr %Lip, align 8, !tbaa !4
  %65 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom68 = sext i32 %65 to i64
  %arrayidx69 = getelementptr inbounds i32, ptr %64, i64 %idxprom68
  %66 = load i32, ptr %arrayidx69, align 4, !tbaa !12
  store i32 %66, ptr %lp, align 4, !tbaa !12
  %67 = load i32, ptr %lp, align 4, !tbaa !12
  %cmp70 = icmp slt i32 %67, 0
  %conv71 = zext i1 %cmp70 to i32
  store i32 %conv71, ptr %newLchain, align 4, !tbaa !12
  %68 = load i32, ptr %newLchain, align 4, !tbaa !12
  %tobool = icmp ne i32 %68, 0
  br i1 %tobool, label %if.then72, label %if.end74

if.then72:                                        ; preds = %for.body67
  %69 = load i32, ptr %lp, align 4, !tbaa !12
  %sub73 = sub nsw i32 0, %69
  store i32 %sub73, ptr %lp, align 4, !tbaa !12
  store i32 0, ptr %deg, align 4, !tbaa !12
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %for.body67
  %70 = load ptr, ptr %Lpos, align 8, !tbaa !4
  %71 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom75 = sext i32 %71 to i64
  %arrayidx76 = getelementptr inbounds i32, ptr %70, i64 %idxprom75
  %72 = load i32, ptr %arrayidx76, align 4, !tbaa !12
  store i32 %72, ptr %pos, align 4, !tbaa !12
  %73 = load i32, ptr %pos, align 4, !tbaa !12
  %cmp77 = icmp ne i32 %73, -1
  br i1 %cmp77, label %if.then79, label %if.end84

if.then79:                                        ; preds = %if.end74
  %74 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %75 = load i32, ptr %deg, align 4, !tbaa !12
  %dec = add nsw i32 %75, -1
  store i32 %dec, ptr %deg, align 4, !tbaa !12
  %idxprom80 = sext i32 %dec to i64
  %arrayidx81 = getelementptr inbounds i32, ptr %74, i64 %idxprom80
  %76 = load i32, ptr %arrayidx81, align 4, !tbaa !12
  %77 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %78 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom82 = sext i32 %78 to i64
  %arrayidx83 = getelementptr inbounds i32, ptr %77, i64 %idxprom82
  store i32 %76, ptr %arrayidx83, align 4, !tbaa !12
  br label %if.end84

if.end84:                                         ; preds = %if.then79, %if.end74
  %79 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory85 = getelementptr inbounds %struct.NumericType, ptr %79, i32 0, i32 13
  %80 = load ptr, ptr %Memory85, align 8, !tbaa !34
  %81 = load i32, ptr %lp, align 4, !tbaa !12
  %idx.ext86 = sext i32 %81 to i64
  %add.ptr87 = getelementptr inbounds %union.Unit_union, ptr %80, i64 %idx.ext86
  store ptr %add.ptr87, ptr %ip, align 8, !tbaa !4
  %82 = load ptr, ptr %Lilen, align 8, !tbaa !4
  %83 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom88 = sext i32 %83 to i64
  %arrayidx89 = getelementptr inbounds i32, ptr %82, i64 %idxprom88
  %84 = load i32, ptr %arrayidx89, align 4, !tbaa !12
  store i32 %84, ptr %llen, align 4, !tbaa !12
  store i32 0, ptr %j, align 4, !tbaa !12
  br label %for.cond90

for.cond90:                                       ; preds = %for.inc97, %if.end84
  %85 = load i32, ptr %j, align 4, !tbaa !12
  %86 = load i32, ptr %llen, align 4, !tbaa !12
  %cmp91 = icmp slt i32 %85, %86
  br i1 %cmp91, label %for.body93, label %for.end99

for.body93:                                       ; preds = %for.cond90
  %87 = load ptr, ptr %ip, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i32, ptr %87, i32 1
  store ptr %incdec.ptr, ptr %ip, align 8, !tbaa !4
  %88 = load i32, ptr %87, align 4, !tbaa !12
  store i32 %88, ptr %row, align 4, !tbaa !12
  %89 = load i32, ptr %row, align 4, !tbaa !12
  %90 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %91 = load i32, ptr %deg, align 4, !tbaa !12
  %inc94 = add nsw i32 %91, 1
  store i32 %inc94, ptr %deg, align 4, !tbaa !12
  %idxprom95 = sext i32 %91 to i64
  %arrayidx96 = getelementptr inbounds i32, ptr %90, i64 %idxprom95
  store i32 %89, ptr %arrayidx96, align 4, !tbaa !12
  br label %for.inc97

for.inc97:                                        ; preds = %for.body93
  %92 = load i32, ptr %j, align 4, !tbaa !12
  %inc98 = add nsw i32 %92, 1
  store i32 %inc98, ptr %j, align 4, !tbaa !12
  br label %for.cond90, !llvm.loop !39

for.end99:                                        ; preds = %for.cond90
  %93 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory100 = getelementptr inbounds %struct.NumericType, ptr %93, i32 0, i32 13
  %94 = load ptr, ptr %Memory100, align 8, !tbaa !34
  %95 = load i32, ptr %lp, align 4, !tbaa !12
  %idx.ext101 = sext i32 %95 to i64
  %add.ptr102 = getelementptr inbounds %union.Unit_union, ptr %94, i64 %idx.ext101
  %96 = load i32, ptr %llen, align 4, !tbaa !12
  %conv103 = sext i32 %96 to i64
  %mul104 = mul i64 4, %conv103
  %add105 = add i64 %mul104, 8
  %sub106 = sub i64 %add105, 1
  %div107 = udiv i64 %sub106, 8
  %add.ptr108 = getelementptr inbounds %union.Unit_union, ptr %add.ptr102, i64 %div107
  store ptr %add.ptr108, ptr %xp, align 8, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !12
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc130, %for.end99
  %97 = load i32, ptr %j, align 4, !tbaa !12
  %98 = load i32, ptr %deg, align 4, !tbaa !12
  %cmp110 = icmp slt i32 %97, %98
  br i1 %cmp110, label %for.body112, label %for.end132

for.body112:                                      ; preds = %for.cond109
  %99 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %100 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom113 = sext i32 %100 to i64
  %arrayidx114 = getelementptr inbounds i32, ptr %99, i64 %idxprom113
  %101 = load i32, ptr %arrayidx114, align 4, !tbaa !12
  store i32 %101, ptr %row, align 4, !tbaa !12
  %102 = load ptr, ptr %xp, align 8, !tbaa !4
  %incdec.ptr115 = getelementptr inbounds %struct.DoubleComplex, ptr %102, i32 1
  store ptr %incdec.ptr115, ptr %xp, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %value, ptr align 8 %102, i64 16, i1 false), !tbaa.struct !35
  %component116 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [2 x double], ptr %component116, i64 0, i64 0
  %103 = load double, ptr %arrayidx117, align 8, !tbaa !20
  %cmp118 = fcmp une double %103, 0.000000e+00
  br i1 %cmp118, label %if.then125, label %lor.lhs.false120

lor.lhs.false120:                                 ; preds = %for.body112
  %component121 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [2 x double], ptr %component121, i64 0, i64 1
  %104 = load double, ptr %arrayidx122, align 8, !tbaa !20
  %cmp123 = fcmp une double %104, 0.000000e+00
  br i1 %cmp123, label %if.then125, label %if.end129

if.then125:                                       ; preds = %lor.lhs.false120, %for.body112
  %105 = load ptr, ptr %Wi.addr, align 8, !tbaa !4
  %106 = load i32, ptr %row, align 4, !tbaa !12
  %idxprom126 = sext i32 %106 to i64
  %arrayidx127 = getelementptr inbounds i32, ptr %105, i64 %idxprom126
  %107 = load i32, ptr %arrayidx127, align 4, !tbaa !12
  %inc128 = add nsw i32 %107, 1
  store i32 %inc128, ptr %arrayidx127, align 4, !tbaa !12
  br label %if.end129

if.end129:                                        ; preds = %if.then125, %lor.lhs.false120
  br label %for.inc130

for.inc130:                                       ; preds = %if.end129
  %108 = load i32, ptr %j, align 4, !tbaa !12
  %inc131 = add nsw i32 %108, 1
  store i32 %inc131, ptr %j, align 4, !tbaa !12
  br label %for.cond109, !llvm.loop !40

for.end132:                                       ; preds = %for.cond109
  br label %for.inc133

for.inc133:                                       ; preds = %for.end132
  %109 = load i32, ptr %k, align 4, !tbaa !12
  %inc134 = add nsw i32 %109, 1
  store i32 %inc134, ptr %k, align 4, !tbaa !12
  br label %for.cond64, !llvm.loop !41

for.end135:                                       ; preds = %for.cond64
  store i32 0, ptr %lnz2, align 4, !tbaa !12
  store i32 0, ptr %row, align 4, !tbaa !12
  br label %for.cond136

for.cond136:                                      ; preds = %for.inc149, %for.end135
  %110 = load i32, ptr %row, align 4, !tbaa !12
  %111 = load i32, ptr %n_row, align 4, !tbaa !12
  %cmp137 = icmp slt i32 %110, %111
  br i1 %cmp137, label %for.body139, label %for.end151

for.body139:                                      ; preds = %for.cond136
  %112 = load i32, ptr %lnz2, align 4, !tbaa !12
  %113 = load ptr, ptr %Lp.addr, align 8, !tbaa !4
  %114 = load i32, ptr %row, align 4, !tbaa !12
  %idxprom140 = sext i32 %114 to i64
  %arrayidx141 = getelementptr inbounds i32, ptr %113, i64 %idxprom140
  store i32 %112, ptr %arrayidx141, align 4, !tbaa !12
  %115 = load ptr, ptr %Wi.addr, align 8, !tbaa !4
  %116 = load i32, ptr %row, align 4, !tbaa !12
  %idxprom142 = sext i32 %116 to i64
  %arrayidx143 = getelementptr inbounds i32, ptr %115, i64 %idxprom142
  %117 = load i32, ptr %arrayidx143, align 4, !tbaa !12
  %118 = load i32, ptr %lnz2, align 4, !tbaa !12
  %add144 = add nsw i32 %118, %117
  store i32 %add144, ptr %lnz2, align 4, !tbaa !12
  %119 = load ptr, ptr %Lp.addr, align 8, !tbaa !4
  %120 = load i32, ptr %row, align 4, !tbaa !12
  %idxprom145 = sext i32 %120 to i64
  %arrayidx146 = getelementptr inbounds i32, ptr %119, i64 %idxprom145
  %121 = load i32, ptr %arrayidx146, align 4, !tbaa !12
  %122 = load ptr, ptr %Wi.addr, align 8, !tbaa !4
  %123 = load i32, ptr %row, align 4, !tbaa !12
  %idxprom147 = sext i32 %123 to i64
  %arrayidx148 = getelementptr inbounds i32, ptr %122, i64 %idxprom147
  store i32 %121, ptr %arrayidx148, align 4, !tbaa !12
  br label %for.inc149

for.inc149:                                       ; preds = %for.body139
  %124 = load i32, ptr %row, align 4, !tbaa !12
  %inc150 = add nsw i32 %124, 1
  store i32 %inc150, ptr %row, align 4, !tbaa !12
  br label %for.cond136, !llvm.loop !42

for.end151:                                       ; preds = %for.cond136
  %125 = load i32, ptr %lnz2, align 4, !tbaa !12
  %126 = load ptr, ptr %Lp.addr, align 8, !tbaa !4
  %127 = load i32, ptr %n_row, align 4, !tbaa !12
  %idxprom152 = sext i32 %127 to i64
  %arrayidx153 = getelementptr inbounds i32, ptr %126, i64 %idxprom152
  store i32 %125, ptr %arrayidx153, align 4, !tbaa !12
  store i32 0, ptr %k, align 4, !tbaa !12
  br label %for.cond154

for.cond154:                                      ; preds = %for.inc229, %for.end151
  %128 = load i32, ptr %k, align 4, !tbaa !12
  %129 = load i32, ptr %n1, align 4, !tbaa !12
  %cmp155 = icmp slt i32 %128, %129
  br i1 %cmp155, label %for.body157, label %for.end231

for.body157:                                      ; preds = %for.cond154
  %130 = load ptr, ptr %Lilen, align 8, !tbaa !4
  %131 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom158 = sext i32 %131 to i64
  %arrayidx159 = getelementptr inbounds i32, ptr %130, i64 %idxprom158
  %132 = load i32, ptr %arrayidx159, align 4, !tbaa !12
  store i32 %132, ptr %deg, align 4, !tbaa !12
  %133 = load i32, ptr %deg, align 4, !tbaa !12
  %cmp160 = icmp sgt i32 %133, 0
  br i1 %cmp160, label %if.then162, label %if.end228

if.then162:                                       ; preds = %for.body157
  %134 = load ptr, ptr %Lip, align 8, !tbaa !4
  %135 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom163 = sext i32 %135 to i64
  %arrayidx164 = getelementptr inbounds i32, ptr %134, i64 %idxprom163
  %136 = load i32, ptr %arrayidx164, align 4, !tbaa !12
  store i32 %136, ptr %lp, align 4, !tbaa !12
  %137 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory165 = getelementptr inbounds %struct.NumericType, ptr %137, i32 0, i32 13
  %138 = load ptr, ptr %Memory165, align 8, !tbaa !34
  %139 = load i32, ptr %lp, align 4, !tbaa !12
  %idx.ext166 = sext i32 %139 to i64
  %add.ptr167 = getelementptr inbounds %union.Unit_union, ptr %138, i64 %idx.ext166
  store ptr %add.ptr167, ptr %Li, align 8, !tbaa !4
  %140 = load i32, ptr %deg, align 4, !tbaa !12
  %conv168 = sext i32 %140 to i64
  %mul169 = mul i64 4, %conv168
  %add170 = add i64 %mul169, 8
  %sub171 = sub i64 %add170, 1
  %div172 = udiv i64 %sub171, 8
  %141 = load i32, ptr %lp, align 4, !tbaa !12
  %conv173 = sext i32 %141 to i64
  %add174 = add i64 %conv173, %div172
  %conv175 = trunc i64 %add174 to i32
  store i32 %conv175, ptr %lp, align 4, !tbaa !12
  %142 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory176 = getelementptr inbounds %struct.NumericType, ptr %142, i32 0, i32 13
  %143 = load ptr, ptr %Memory176, align 8, !tbaa !34
  %144 = load i32, ptr %lp, align 4, !tbaa !12
  %idx.ext177 = sext i32 %144 to i64
  %add.ptr178 = getelementptr inbounds %union.Unit_union, ptr %143, i64 %idx.ext177
  store ptr %add.ptr178, ptr %Lval, align 8, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !12
  br label %for.cond179

for.cond179:                                      ; preds = %for.inc225, %if.then162
  %145 = load i32, ptr %j, align 4, !tbaa !12
  %146 = load i32, ptr %deg, align 4, !tbaa !12
  %cmp180 = icmp slt i32 %145, %146
  br i1 %cmp180, label %for.body182, label %for.end227

for.body182:                                      ; preds = %for.cond179
  %147 = load ptr, ptr %Li, align 8, !tbaa !4
  %148 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom183 = sext i32 %148 to i64
  %arrayidx184 = getelementptr inbounds i32, ptr %147, i64 %idxprom183
  %149 = load i32, ptr %arrayidx184, align 4, !tbaa !12
  store i32 %149, ptr %row, align 4, !tbaa !12
  %150 = load ptr, ptr %Lval, align 8, !tbaa !4
  %151 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom185 = sext i32 %151 to i64
  %arrayidx186 = getelementptr inbounds %struct.DoubleComplex, ptr %150, i64 %idxprom185
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %value, ptr align 8 %arrayidx186, i64 16, i1 false), !tbaa.struct !35
  %component187 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx188 = getelementptr inbounds [2 x double], ptr %component187, i64 0, i64 0
  %152 = load double, ptr %arrayidx188, align 8, !tbaa !20
  %cmp189 = fcmp une double %152, 0.000000e+00
  br i1 %cmp189, label %if.then196, label %lor.lhs.false191

lor.lhs.false191:                                 ; preds = %for.body182
  %component192 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx193 = getelementptr inbounds [2 x double], ptr %component192, i64 0, i64 1
  %153 = load double, ptr %arrayidx193, align 8, !tbaa !20
  %cmp194 = fcmp une double %153, 0.000000e+00
  br i1 %cmp194, label %if.then196, label %if.end224

if.then196:                                       ; preds = %lor.lhs.false191, %for.body182
  %154 = load ptr, ptr %Wi.addr, align 8, !tbaa !4
  %155 = load i32, ptr %row, align 4, !tbaa !12
  %idxprom197 = sext i32 %155 to i64
  %arrayidx198 = getelementptr inbounds i32, ptr %154, i64 %idxprom197
  %156 = load i32, ptr %arrayidx198, align 4, !tbaa !12
  %inc199 = add nsw i32 %156, 1
  store i32 %inc199, ptr %arrayidx198, align 4, !tbaa !12
  store i32 %156, ptr %p, align 4, !tbaa !12
  %157 = load i32, ptr %k, align 4, !tbaa !12
  %158 = load ptr, ptr %Lj.addr, align 8, !tbaa !4
  %159 = load i32, ptr %p, align 4, !tbaa !12
  %idxprom200 = sext i32 %159 to i64
  %arrayidx201 = getelementptr inbounds i32, ptr %158, i64 %idxprom200
  store i32 %157, ptr %arrayidx201, align 4, !tbaa !12
  %160 = load i32, ptr %split, align 4, !tbaa !12
  %tobool202 = icmp ne i32 %160, 0
  br i1 %tobool202, label %if.then203, label %if.else

if.then203:                                       ; preds = %if.then196
  %component204 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx205 = getelementptr inbounds [2 x double], ptr %component204, i64 0, i64 0
  %161 = load double, ptr %arrayidx205, align 8, !tbaa !20
  %162 = load ptr, ptr %Lx.addr, align 8, !tbaa !4
  %163 = load i32, ptr %p, align 4, !tbaa !12
  %idxprom206 = sext i32 %163 to i64
  %arrayidx207 = getelementptr inbounds double, ptr %162, i64 %idxprom206
  store double %161, ptr %arrayidx207, align 8, !tbaa !20
  %component208 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx209 = getelementptr inbounds [2 x double], ptr %component208, i64 0, i64 1
  %164 = load double, ptr %arrayidx209, align 8, !tbaa !20
  %165 = load ptr, ptr %Lz.addr, align 8, !tbaa !4
  %166 = load i32, ptr %p, align 4, !tbaa !12
  %idxprom210 = sext i32 %166 to i64
  %arrayidx211 = getelementptr inbounds double, ptr %165, i64 %idxprom210
  store double %164, ptr %arrayidx211, align 8, !tbaa !20
  br label %if.end223

if.else:                                          ; preds = %if.then196
  %component212 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx213 = getelementptr inbounds [2 x double], ptr %component212, i64 0, i64 0
  %167 = load double, ptr %arrayidx213, align 8, !tbaa !20
  %168 = load ptr, ptr %Lx.addr, align 8, !tbaa !4
  %169 = load i32, ptr %p, align 4, !tbaa !12
  %mul214 = mul nsw i32 2, %169
  %idxprom215 = sext i32 %mul214 to i64
  %arrayidx216 = getelementptr inbounds double, ptr %168, i64 %idxprom215
  store double %167, ptr %arrayidx216, align 8, !tbaa !20
  %component217 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx218 = getelementptr inbounds [2 x double], ptr %component217, i64 0, i64 1
  %170 = load double, ptr %arrayidx218, align 8, !tbaa !20
  %171 = load ptr, ptr %Lx.addr, align 8, !tbaa !4
  %172 = load i32, ptr %p, align 4, !tbaa !12
  %mul219 = mul nsw i32 2, %172
  %add220 = add nsw i32 %mul219, 1
  %idxprom221 = sext i32 %add220 to i64
  %arrayidx222 = getelementptr inbounds double, ptr %171, i64 %idxprom221
  store double %170, ptr %arrayidx222, align 8, !tbaa !20
  br label %if.end223

if.end223:                                        ; preds = %if.else, %if.then203
  br label %if.end224

if.end224:                                        ; preds = %if.end223, %lor.lhs.false191
  br label %for.inc225

for.inc225:                                       ; preds = %if.end224
  %173 = load i32, ptr %j, align 4, !tbaa !12
  %inc226 = add nsw i32 %173, 1
  store i32 %inc226, ptr %j, align 4, !tbaa !12
  br label %for.cond179, !llvm.loop !43

for.end227:                                       ; preds = %for.cond179
  br label %if.end228

if.end228:                                        ; preds = %for.end227, %for.body157
  br label %for.inc229

for.inc229:                                       ; preds = %if.end228
  %174 = load i32, ptr %k, align 4, !tbaa !12
  %inc230 = add nsw i32 %174, 1
  store i32 %inc230, ptr %k, align 4, !tbaa !12
  br label %for.cond154, !llvm.loop !44

for.end231:                                       ; preds = %for.cond154
  %175 = load i32, ptr %n1, align 4, !tbaa !12
  store i32 %175, ptr %k, align 4, !tbaa !12
  br label %for.cond232

for.cond232:                                      ; preds = %for.inc329, %for.end231
  %176 = load i32, ptr %k, align 4, !tbaa !12
  %177 = load i32, ptr %npiv, align 4, !tbaa !12
  %cmp233 = icmp slt i32 %176, %177
  br i1 %cmp233, label %for.body235, label %for.end331

for.body235:                                      ; preds = %for.cond232
  %178 = load ptr, ptr %Lip, align 8, !tbaa !4
  %179 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom236 = sext i32 %179 to i64
  %arrayidx237 = getelementptr inbounds i32, ptr %178, i64 %idxprom236
  %180 = load i32, ptr %arrayidx237, align 4, !tbaa !12
  store i32 %180, ptr %lp, align 4, !tbaa !12
  %181 = load i32, ptr %lp, align 4, !tbaa !12
  %cmp238 = icmp slt i32 %181, 0
  %conv239 = zext i1 %cmp238 to i32
  store i32 %conv239, ptr %newLchain, align 4, !tbaa !12
  %182 = load i32, ptr %newLchain, align 4, !tbaa !12
  %tobool240 = icmp ne i32 %182, 0
  br i1 %tobool240, label %if.then241, label %if.end243

if.then241:                                       ; preds = %for.body235
  %183 = load i32, ptr %lp, align 4, !tbaa !12
  %sub242 = sub nsw i32 0, %183
  store i32 %sub242, ptr %lp, align 4, !tbaa !12
  store i32 0, ptr %deg, align 4, !tbaa !12
  br label %if.end243

if.end243:                                        ; preds = %if.then241, %for.body235
  %184 = load ptr, ptr %Lpos, align 8, !tbaa !4
  %185 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom244 = sext i32 %185 to i64
  %arrayidx245 = getelementptr inbounds i32, ptr %184, i64 %idxprom244
  %186 = load i32, ptr %arrayidx245, align 4, !tbaa !12
  store i32 %186, ptr %pos, align 4, !tbaa !12
  %187 = load i32, ptr %pos, align 4, !tbaa !12
  %cmp246 = icmp ne i32 %187, -1
  br i1 %cmp246, label %if.then248, label %if.end254

if.then248:                                       ; preds = %if.end243
  %188 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %189 = load i32, ptr %deg, align 4, !tbaa !12
  %dec249 = add nsw i32 %189, -1
  store i32 %dec249, ptr %deg, align 4, !tbaa !12
  %idxprom250 = sext i32 %dec249 to i64
  %arrayidx251 = getelementptr inbounds i32, ptr %188, i64 %idxprom250
  %190 = load i32, ptr %arrayidx251, align 4, !tbaa !12
  %191 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %192 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom252 = sext i32 %192 to i64
  %arrayidx253 = getelementptr inbounds i32, ptr %191, i64 %idxprom252
  store i32 %190, ptr %arrayidx253, align 4, !tbaa !12
  br label %if.end254

if.end254:                                        ; preds = %if.then248, %if.end243
  %193 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory255 = getelementptr inbounds %struct.NumericType, ptr %193, i32 0, i32 13
  %194 = load ptr, ptr %Memory255, align 8, !tbaa !34
  %195 = load i32, ptr %lp, align 4, !tbaa !12
  %idx.ext256 = sext i32 %195 to i64
  %add.ptr257 = getelementptr inbounds %union.Unit_union, ptr %194, i64 %idx.ext256
  store ptr %add.ptr257, ptr %ip, align 8, !tbaa !4
  %196 = load ptr, ptr %Lilen, align 8, !tbaa !4
  %197 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom258 = sext i32 %197 to i64
  %arrayidx259 = getelementptr inbounds i32, ptr %196, i64 %idxprom258
  %198 = load i32, ptr %arrayidx259, align 4, !tbaa !12
  store i32 %198, ptr %llen, align 4, !tbaa !12
  store i32 0, ptr %j, align 4, !tbaa !12
  br label %for.cond260

for.cond260:                                      ; preds = %for.inc268, %if.end254
  %199 = load i32, ptr %j, align 4, !tbaa !12
  %200 = load i32, ptr %llen, align 4, !tbaa !12
  %cmp261 = icmp slt i32 %199, %200
  br i1 %cmp261, label %for.body263, label %for.end270

for.body263:                                      ; preds = %for.cond260
  %201 = load ptr, ptr %ip, align 8, !tbaa !4
  %incdec.ptr264 = getelementptr inbounds i32, ptr %201, i32 1
  store ptr %incdec.ptr264, ptr %ip, align 8, !tbaa !4
  %202 = load i32, ptr %201, align 4, !tbaa !12
  store i32 %202, ptr %row, align 4, !tbaa !12
  %203 = load i32, ptr %row, align 4, !tbaa !12
  %204 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %205 = load i32, ptr %deg, align 4, !tbaa !12
  %inc265 = add nsw i32 %205, 1
  store i32 %inc265, ptr %deg, align 4, !tbaa !12
  %idxprom266 = sext i32 %205 to i64
  %arrayidx267 = getelementptr inbounds i32, ptr %204, i64 %idxprom266
  store i32 %203, ptr %arrayidx267, align 4, !tbaa !12
  br label %for.inc268

for.inc268:                                       ; preds = %for.body263
  %206 = load i32, ptr %j, align 4, !tbaa !12
  %inc269 = add nsw i32 %206, 1
  store i32 %inc269, ptr %j, align 4, !tbaa !12
  br label %for.cond260, !llvm.loop !45

for.end270:                                       ; preds = %for.cond260
  %207 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory271 = getelementptr inbounds %struct.NumericType, ptr %207, i32 0, i32 13
  %208 = load ptr, ptr %Memory271, align 8, !tbaa !34
  %209 = load i32, ptr %lp, align 4, !tbaa !12
  %idx.ext272 = sext i32 %209 to i64
  %add.ptr273 = getelementptr inbounds %union.Unit_union, ptr %208, i64 %idx.ext272
  %210 = load i32, ptr %llen, align 4, !tbaa !12
  %conv274 = sext i32 %210 to i64
  %mul275 = mul i64 4, %conv274
  %add276 = add i64 %mul275, 8
  %sub277 = sub i64 %add276, 1
  %div278 = udiv i64 %sub277, 8
  %add.ptr279 = getelementptr inbounds %union.Unit_union, ptr %add.ptr273, i64 %div278
  store ptr %add.ptr279, ptr %xp, align 8, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !12
  br label %for.cond280

for.cond280:                                      ; preds = %for.inc326, %for.end270
  %211 = load i32, ptr %j, align 4, !tbaa !12
  %212 = load i32, ptr %deg, align 4, !tbaa !12
  %cmp281 = icmp slt i32 %211, %212
  br i1 %cmp281, label %for.body283, label %for.end328

for.body283:                                      ; preds = %for.cond280
  %213 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %214 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom284 = sext i32 %214 to i64
  %arrayidx285 = getelementptr inbounds i32, ptr %213, i64 %idxprom284
  %215 = load i32, ptr %arrayidx285, align 4, !tbaa !12
  store i32 %215, ptr %row, align 4, !tbaa !12
  %216 = load ptr, ptr %xp, align 8, !tbaa !4
  %incdec.ptr286 = getelementptr inbounds %struct.DoubleComplex, ptr %216, i32 1
  store ptr %incdec.ptr286, ptr %xp, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %value, ptr align 8 %216, i64 16, i1 false), !tbaa.struct !35
  %component287 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx288 = getelementptr inbounds [2 x double], ptr %component287, i64 0, i64 0
  %217 = load double, ptr %arrayidx288, align 8, !tbaa !20
  %cmp289 = fcmp une double %217, 0.000000e+00
  br i1 %cmp289, label %if.then296, label %lor.lhs.false291

lor.lhs.false291:                                 ; preds = %for.body283
  %component292 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx293 = getelementptr inbounds [2 x double], ptr %component292, i64 0, i64 1
  %218 = load double, ptr %arrayidx293, align 8, !tbaa !20
  %cmp294 = fcmp une double %218, 0.000000e+00
  br i1 %cmp294, label %if.then296, label %if.end325

if.then296:                                       ; preds = %lor.lhs.false291, %for.body283
  %219 = load ptr, ptr %Wi.addr, align 8, !tbaa !4
  %220 = load i32, ptr %row, align 4, !tbaa !12
  %idxprom297 = sext i32 %220 to i64
  %arrayidx298 = getelementptr inbounds i32, ptr %219, i64 %idxprom297
  %221 = load i32, ptr %arrayidx298, align 4, !tbaa !12
  %inc299 = add nsw i32 %221, 1
  store i32 %inc299, ptr %arrayidx298, align 4, !tbaa !12
  store i32 %221, ptr %p, align 4, !tbaa !12
  %222 = load i32, ptr %k, align 4, !tbaa !12
  %223 = load ptr, ptr %Lj.addr, align 8, !tbaa !4
  %224 = load i32, ptr %p, align 4, !tbaa !12
  %idxprom300 = sext i32 %224 to i64
  %arrayidx301 = getelementptr inbounds i32, ptr %223, i64 %idxprom300
  store i32 %222, ptr %arrayidx301, align 4, !tbaa !12
  %225 = load i32, ptr %split, align 4, !tbaa !12
  %tobool302 = icmp ne i32 %225, 0
  br i1 %tobool302, label %if.then303, label %if.else312

if.then303:                                       ; preds = %if.then296
  %component304 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx305 = getelementptr inbounds [2 x double], ptr %component304, i64 0, i64 0
  %226 = load double, ptr %arrayidx305, align 8, !tbaa !20
  %227 = load ptr, ptr %Lx.addr, align 8, !tbaa !4
  %228 = load i32, ptr %p, align 4, !tbaa !12
  %idxprom306 = sext i32 %228 to i64
  %arrayidx307 = getelementptr inbounds double, ptr %227, i64 %idxprom306
  store double %226, ptr %arrayidx307, align 8, !tbaa !20
  %component308 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx309 = getelementptr inbounds [2 x double], ptr %component308, i64 0, i64 1
  %229 = load double, ptr %arrayidx309, align 8, !tbaa !20
  %230 = load ptr, ptr %Lz.addr, align 8, !tbaa !4
  %231 = load i32, ptr %p, align 4, !tbaa !12
  %idxprom310 = sext i32 %231 to i64
  %arrayidx311 = getelementptr inbounds double, ptr %230, i64 %idxprom310
  store double %229, ptr %arrayidx311, align 8, !tbaa !20
  br label %if.end324

if.else312:                                       ; preds = %if.then296
  %component313 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx314 = getelementptr inbounds [2 x double], ptr %component313, i64 0, i64 0
  %232 = load double, ptr %arrayidx314, align 8, !tbaa !20
  %233 = load ptr, ptr %Lx.addr, align 8, !tbaa !4
  %234 = load i32, ptr %p, align 4, !tbaa !12
  %mul315 = mul nsw i32 2, %234
  %idxprom316 = sext i32 %mul315 to i64
  %arrayidx317 = getelementptr inbounds double, ptr %233, i64 %idxprom316
  store double %232, ptr %arrayidx317, align 8, !tbaa !20
  %component318 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx319 = getelementptr inbounds [2 x double], ptr %component318, i64 0, i64 1
  %235 = load double, ptr %arrayidx319, align 8, !tbaa !20
  %236 = load ptr, ptr %Lx.addr, align 8, !tbaa !4
  %237 = load i32, ptr %p, align 4, !tbaa !12
  %mul320 = mul nsw i32 2, %237
  %add321 = add nsw i32 %mul320, 1
  %idxprom322 = sext i32 %add321 to i64
  %arrayidx323 = getelementptr inbounds double, ptr %236, i64 %idxprom322
  store double %235, ptr %arrayidx323, align 8, !tbaa !20
  br label %if.end324

if.end324:                                        ; preds = %if.else312, %if.then303
  br label %if.end325

if.end325:                                        ; preds = %if.end324, %lor.lhs.false291
  br label %for.inc326

for.inc326:                                       ; preds = %if.end325
  %238 = load i32, ptr %j, align 4, !tbaa !12
  %inc327 = add nsw i32 %238, 1
  store i32 %inc327, ptr %j, align 4, !tbaa !12
  br label %for.cond280, !llvm.loop !46

for.end328:                                       ; preds = %for.cond280
  br label %for.inc329

for.inc329:                                       ; preds = %for.end328
  %239 = load i32, ptr %k, align 4, !tbaa !12
  %inc330 = add nsw i32 %239, 1
  store i32 %inc330, ptr %k, align 4, !tbaa !12
  br label %for.cond232, !llvm.loop !47

for.end331:                                       ; preds = %for.cond232
  store i32 0, ptr %row, align 4, !tbaa !12
  br label %for.cond332

for.cond332:                                      ; preds = %for.inc356, %for.end331
  %240 = load i32, ptr %row, align 4, !tbaa !12
  %241 = load i32, ptr %n_inner, align 4, !tbaa !12
  %cmp333 = icmp slt i32 %240, %241
  br i1 %cmp333, label %for.body335, label %for.end358

for.body335:                                      ; preds = %for.cond332
  %242 = load ptr, ptr %Wi.addr, align 8, !tbaa !4
  %243 = load i32, ptr %row, align 4, !tbaa !12
  %idxprom336 = sext i32 %243 to i64
  %arrayidx337 = getelementptr inbounds i32, ptr %242, i64 %idxprom336
  %244 = load i32, ptr %arrayidx337, align 4, !tbaa !12
  %inc338 = add nsw i32 %244, 1
  store i32 %inc338, ptr %arrayidx337, align 4, !tbaa !12
  store i32 %244, ptr %p, align 4, !tbaa !12
  %245 = load i32, ptr %row, align 4, !tbaa !12
  %246 = load ptr, ptr %Lj.addr, align 8, !tbaa !4
  %247 = load i32, ptr %p, align 4, !tbaa !12
  %idxprom339 = sext i32 %247 to i64
  %arrayidx340 = getelementptr inbounds i32, ptr %246, i64 %idxprom339
  store i32 %245, ptr %arrayidx340, align 4, !tbaa !12
  %248 = load i32, ptr %split, align 4, !tbaa !12
  %tobool341 = icmp ne i32 %248, 0
  br i1 %tobool341, label %if.then342, label %if.else347

if.then342:                                       ; preds = %for.body335
  %249 = load ptr, ptr %Lx.addr, align 8, !tbaa !4
  %250 = load i32, ptr %p, align 4, !tbaa !12
  %idxprom343 = sext i32 %250 to i64
  %arrayidx344 = getelementptr inbounds double, ptr %249, i64 %idxprom343
  store double 1.000000e+00, ptr %arrayidx344, align 8, !tbaa !20
  %251 = load ptr, ptr %Lz.addr, align 8, !tbaa !4
  %252 = load i32, ptr %p, align 4, !tbaa !12
  %idxprom345 = sext i32 %252 to i64
  %arrayidx346 = getelementptr inbounds double, ptr %251, i64 %idxprom345
  store double 0.000000e+00, ptr %arrayidx346, align 8, !tbaa !20
  br label %if.end355

if.else347:                                       ; preds = %for.body335
  %253 = load ptr, ptr %Lx.addr, align 8, !tbaa !4
  %254 = load i32, ptr %p, align 4, !tbaa !12
  %mul348 = mul nsw i32 2, %254
  %idxprom349 = sext i32 %mul348 to i64
  %arrayidx350 = getelementptr inbounds double, ptr %253, i64 %idxprom349
  store double 1.000000e+00, ptr %arrayidx350, align 8, !tbaa !20
  %255 = load ptr, ptr %Lx.addr, align 8, !tbaa !4
  %256 = load i32, ptr %p, align 4, !tbaa !12
  %mul351 = mul nsw i32 2, %256
  %add352 = add nsw i32 %mul351, 1
  %idxprom353 = sext i32 %add352 to i64
  %arrayidx354 = getelementptr inbounds double, ptr %255, i64 %idxprom353
  store double 0.000000e+00, ptr %arrayidx354, align 8, !tbaa !20
  br label %if.end355

if.end355:                                        ; preds = %if.else347, %if.then342
  br label %for.inc356

for.inc356:                                       ; preds = %if.end355
  %257 = load i32, ptr %row, align 4, !tbaa !12
  %inc357 = add nsw i32 %257, 1
  store i32 %inc357, ptr %row, align 4, !tbaa !12
  br label %for.cond332, !llvm.loop !48

for.end358:                                       ; preds = %for.cond332
  call void @llvm.lifetime.end.p0(i64 4, ptr %split) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Li) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %npiv) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %newLchain) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %lp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %lnz2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %llen) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Lip) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Lilen) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Lpos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_inner) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_col) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_row) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %row) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %deg) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Lval) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %xp) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %value) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @get_U(ptr noundef %Up, ptr noundef %Ui, ptr noundef %Ux, ptr noundef %Uz, ptr noundef %Numeric, ptr noundef %Pattern, ptr noundef %Wi) #3 {
entry:
  %Up.addr = alloca ptr, align 8
  %Ui.addr = alloca ptr, align 8
  %Ux.addr = alloca ptr, align 8
  %Uz.addr = alloca ptr, align 8
  %Numeric.addr = alloca ptr, align 8
  %Pattern.addr = alloca ptr, align 8
  %Wi.addr = alloca ptr, align 8
  %value = alloca %struct.DoubleComplex, align 8
  %xp = alloca ptr, align 8
  %D = alloca ptr, align 8
  %Uval = alloca ptr, align 8
  %deg = alloca i32, align 4
  %j = alloca i32, align 4
  %ip = alloca ptr, align 8
  %col = alloca i32, align 4
  %Upos = alloca ptr, align 8
  %Uilen = alloca ptr, align 8
  %Uip = alloca ptr, align 8
  %n_col = alloca i32, align 4
  %ulen = alloca i32, align 4
  %Usi = alloca ptr, align 8
  %unz2 = alloca i32, align 4
  %p = alloca i32, align 4
  %k = alloca i32, align 4
  %up = alloca i32, align 4
  %newUchain = alloca i32, align 4
  %pos = alloca i32, align 4
  %npiv = alloca i32, align 4
  %n1 = alloca i32, align 4
  %split = alloca i32, align 4
  store ptr %Up, ptr %Up.addr, align 8, !tbaa !4
  store ptr %Ui, ptr %Ui.addr, align 8, !tbaa !4
  store ptr %Ux, ptr %Ux.addr, align 8, !tbaa !4
  store ptr %Uz, ptr %Uz.addr, align 8, !tbaa !4
  store ptr %Numeric, ptr %Numeric.addr, align 8, !tbaa !4
  store ptr %Pattern, ptr %Pattern.addr, align 8, !tbaa !4
  store ptr %Wi, ptr %Wi.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %value) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %xp) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %D) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Uval) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %deg) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %col) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Upos) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Uilen) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Uip) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_col) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ulen) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Usi) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %unz2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %up) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %newUchain) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %npiv) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %split) #5
  %0 = load ptr, ptr %Uz.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %split, align 4, !tbaa !12
  %1 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %n_col1 = getelementptr inbounds %struct.NumericType, ptr %1, i32 0, i32 34
  %2 = load i32, ptr %n_col1, align 4, !tbaa !13
  store i32 %2, ptr %n_col, align 4, !tbaa !12
  %3 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %n12 = getelementptr inbounds %struct.NumericType, ptr %3, i32 0, i32 35
  %4 = load i32, ptr %n12, align 8, !tbaa !28
  store i32 %4, ptr %n1, align 4, !tbaa !12
  %5 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %npiv3 = getelementptr inbounds %struct.NumericType, ptr %5, i32 0, i32 28
  %6 = load i32, ptr %npiv3, align 4, !tbaa !27
  store i32 %6, ptr %npiv, align 4, !tbaa !12
  %7 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Upos4 = getelementptr inbounds %struct.NumericType, ptr %7, i32 0, i32 20
  %8 = load ptr, ptr %Upos4, align 8, !tbaa !49
  store ptr %8, ptr %Upos, align 8, !tbaa !4
  %9 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Uilen5 = getelementptr inbounds %struct.NumericType, ptr %9, i32 0, i32 25
  %10 = load ptr, ptr %Uilen5, align 8, !tbaa !50
  store ptr %10, ptr %Uilen, align 8, !tbaa !4
  %11 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Uip6 = getelementptr inbounds %struct.NumericType, ptr %11, i32 0, i32 24
  %12 = load ptr, ptr %Uip6, align 8, !tbaa !51
  store ptr %12, ptr %Uip, align 8, !tbaa !4
  %13 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %D7 = getelementptr inbounds %struct.NumericType, ptr %13, i32 0, i32 30
  %14 = load ptr, ptr %D7, align 8, !tbaa !19
  store ptr %14, ptr %D, align 8, !tbaa !4
  store i32 0, ptr %col, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, ptr %col, align 4, !tbaa !12
  %16 = load i32, ptr %npiv, align 4, !tbaa !12
  %cmp8 = icmp slt i32 %15, %16
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %D, align 8, !tbaa !4
  %18 = load i32, ptr %col, align 4, !tbaa !12
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds %struct.DoubleComplex, ptr %17, i64 %idxprom
  %component = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x double], ptr %component, i64 0, i64 0
  %19 = load double, ptr %arrayidx10, align 8, !tbaa !20
  %cmp11 = fcmp une double %19, 0.000000e+00
  br i1 %cmp11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  %20 = load ptr, ptr %D, align 8, !tbaa !4
  %21 = load i32, ptr %col, align 4, !tbaa !12
  %idxprom13 = sext i32 %21 to i64
  %arrayidx14 = getelementptr inbounds %struct.DoubleComplex, ptr %20, i64 %idxprom13
  %component15 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx14, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [2 x double], ptr %component15, i64 0, i64 1
  %22 = load double, ptr %arrayidx16, align 8, !tbaa !20
  %cmp17 = fcmp une double %22, 0.000000e+00
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body
  %23 = phi i1 [ true, %for.body ], [ %cmp17, %lor.rhs ]
  %lor.ext = zext i1 %23 to i32
  %24 = load ptr, ptr %Wi.addr, align 8, !tbaa !4
  %25 = load i32, ptr %col, align 4, !tbaa !12
  %idxprom19 = sext i32 %25 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %24, i64 %idxprom19
  store i32 %lor.ext, ptr %arrayidx20, align 4, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %lor.end
  %26 = load i32, ptr %col, align 4, !tbaa !12
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %col, align 4, !tbaa !12
  br label %for.cond, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  %27 = load i32, ptr %npiv, align 4, !tbaa !12
  store i32 %27, ptr %col, align 4, !tbaa !12
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc27, %for.end
  %28 = load i32, ptr %col, align 4, !tbaa !12
  %29 = load i32, ptr %n_col, align 4, !tbaa !12
  %cmp22 = icmp slt i32 %28, %29
  br i1 %cmp22, label %for.body24, label %for.end29

for.body24:                                       ; preds = %for.cond21
  %30 = load ptr, ptr %Wi.addr, align 8, !tbaa !4
  %31 = load i32, ptr %col, align 4, !tbaa !12
  %idxprom25 = sext i32 %31 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %30, i64 %idxprom25
  store i32 0, ptr %arrayidx26, align 4, !tbaa !12
  br label %for.inc27

for.inc27:                                        ; preds = %for.body24
  %32 = load i32, ptr %col, align 4, !tbaa !12
  %inc28 = add nsw i32 %32, 1
  store i32 %inc28, ptr %col, align 4, !tbaa !12
  br label %for.cond21, !llvm.loop !53

for.end29:                                        ; preds = %for.cond21
  %33 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %ulen30 = getelementptr inbounds %struct.NumericType, ptr %33, i32 0, i32 27
  %34 = load i32, ptr %ulen30, align 8, !tbaa !54
  store i32 %34, ptr %deg, align 4, !tbaa !12
  %35 = load i32, ptr %deg, align 4, !tbaa !12
  %cmp31 = icmp sgt i32 %35, 0
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %for.end29
  store i32 0, ptr %j, align 4, !tbaa !12
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc41, %if.then
  %36 = load i32, ptr %j, align 4, !tbaa !12
  %37 = load i32, ptr %deg, align 4, !tbaa !12
  %cmp34 = icmp slt i32 %36, %37
  br i1 %cmp34, label %for.body36, label %for.end43

for.body36:                                       ; preds = %for.cond33
  %38 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Upattern = getelementptr inbounds %struct.NumericType, ptr %38, i32 0, i32 26
  %39 = load ptr, ptr %Upattern, align 8, !tbaa !55
  %40 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom37 = sext i32 %40 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %39, i64 %idxprom37
  %41 = load i32, ptr %arrayidx38, align 4, !tbaa !12
  %42 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %43 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom39 = sext i32 %43 to i64
  %arrayidx40 = getelementptr inbounds i32, ptr %42, i64 %idxprom39
  store i32 %41, ptr %arrayidx40, align 4, !tbaa !12
  br label %for.inc41

for.inc41:                                        ; preds = %for.body36
  %44 = load i32, ptr %j, align 4, !tbaa !12
  %inc42 = add nsw i32 %44, 1
  store i32 %inc42, ptr %j, align 4, !tbaa !12
  br label %for.cond33, !llvm.loop !56

for.end43:                                        ; preds = %for.cond33
  br label %if.end

if.end:                                           ; preds = %for.end43, %for.end29
  %45 = load i32, ptr %npiv, align 4, !tbaa !12
  %sub = sub nsw i32 %45, 1
  store i32 %sub, ptr %k, align 4, !tbaa !12
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc120, %if.end
  %46 = load i32, ptr %k, align 4, !tbaa !12
  %47 = load i32, ptr %n1, align 4, !tbaa !12
  %cmp45 = icmp sge i32 %46, %47
  br i1 %cmp45, label %for.body47, label %for.end121

for.body47:                                       ; preds = %for.cond44
  %48 = load ptr, ptr %Uip, align 8, !tbaa !4
  %49 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom48 = sext i32 %49 to i64
  %arrayidx49 = getelementptr inbounds i32, ptr %48, i64 %idxprom48
  %50 = load i32, ptr %arrayidx49, align 4, !tbaa !12
  store i32 %50, ptr %up, align 4, !tbaa !12
  %51 = load ptr, ptr %Uilen, align 8, !tbaa !4
  %52 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom50 = sext i32 %52 to i64
  %arrayidx51 = getelementptr inbounds i32, ptr %51, i64 %idxprom50
  %53 = load i32, ptr %arrayidx51, align 4, !tbaa !12
  store i32 %53, ptr %ulen, align 4, !tbaa !12
  %54 = load i32, ptr %up, align 4, !tbaa !12
  %cmp52 = icmp slt i32 %54, 0
  %conv53 = zext i1 %cmp52 to i32
  store i32 %conv53, ptr %newUchain, align 4, !tbaa !12
  %55 = load i32, ptr %newUchain, align 4, !tbaa !12
  %tobool = icmp ne i32 %55, 0
  br i1 %tobool, label %if.then54, label %if.else

if.then54:                                        ; preds = %for.body47
  %56 = load i32, ptr %up, align 4, !tbaa !12
  %sub55 = sub nsw i32 0, %56
  store i32 %sub55, ptr %up, align 4, !tbaa !12
  %57 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory = getelementptr inbounds %struct.NumericType, ptr %57, i32 0, i32 13
  %58 = load ptr, ptr %Memory, align 8, !tbaa !34
  %59 = load i32, ptr %up, align 4, !tbaa !12
  %idx.ext = sext i32 %59 to i64
  %add.ptr = getelementptr inbounds %union.Unit_union, ptr %58, i64 %idx.ext
  %60 = load i32, ptr %ulen, align 4, !tbaa !12
  %conv56 = sext i32 %60 to i64
  %mul = mul i64 4, %conv56
  %add = add i64 %mul, 8
  %sub57 = sub i64 %add, 1
  %div = udiv i64 %sub57, 8
  %add.ptr58 = getelementptr inbounds %union.Unit_union, ptr %add.ptr, i64 %div
  store ptr %add.ptr58, ptr %xp, align 8, !tbaa !4
  br label %if.end62

if.else:                                          ; preds = %for.body47
  %61 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory59 = getelementptr inbounds %struct.NumericType, ptr %61, i32 0, i32 13
  %62 = load ptr, ptr %Memory59, align 8, !tbaa !34
  %63 = load i32, ptr %up, align 4, !tbaa !12
  %idx.ext60 = sext i32 %63 to i64
  %add.ptr61 = getelementptr inbounds %union.Unit_union, ptr %62, i64 %idx.ext60
  store ptr %add.ptr61, ptr %xp, align 8, !tbaa !4
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then54
  store i32 0, ptr %j, align 4, !tbaa !12
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc82, %if.end62
  %64 = load i32, ptr %j, align 4, !tbaa !12
  %65 = load i32, ptr %deg, align 4, !tbaa !12
  %cmp64 = icmp slt i32 %64, %65
  br i1 %cmp64, label %for.body66, label %for.end84

for.body66:                                       ; preds = %for.cond63
  %66 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %67 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom67 = sext i32 %67 to i64
  %arrayidx68 = getelementptr inbounds i32, ptr %66, i64 %idxprom67
  %68 = load i32, ptr %arrayidx68, align 4, !tbaa !12
  store i32 %68, ptr %col, align 4, !tbaa !12
  %69 = load ptr, ptr %xp, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.DoubleComplex, ptr %69, i32 1
  store ptr %incdec.ptr, ptr %xp, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %value, ptr align 8 %69, i64 16, i1 false), !tbaa.struct !35
  %component69 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [2 x double], ptr %component69, i64 0, i64 0
  %70 = load double, ptr %arrayidx70, align 8, !tbaa !20
  %cmp71 = fcmp une double %70, 0.000000e+00
  br i1 %cmp71, label %if.then77, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body66
  %component73 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [2 x double], ptr %component73, i64 0, i64 1
  %71 = load double, ptr %arrayidx74, align 8, !tbaa !20
  %cmp75 = fcmp une double %71, 0.000000e+00
  br i1 %cmp75, label %if.then77, label %if.end81

if.then77:                                        ; preds = %lor.lhs.false, %for.body66
  %72 = load ptr, ptr %Wi.addr, align 8, !tbaa !4
  %73 = load i32, ptr %col, align 4, !tbaa !12
  %idxprom78 = sext i32 %73 to i64
  %arrayidx79 = getelementptr inbounds i32, ptr %72, i64 %idxprom78
  %74 = load i32, ptr %arrayidx79, align 4, !tbaa !12
  %inc80 = add nsw i32 %74, 1
  store i32 %inc80, ptr %arrayidx79, align 4, !tbaa !12
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %lor.lhs.false
  br label %for.inc82

for.inc82:                                        ; preds = %if.end81
  %75 = load i32, ptr %j, align 4, !tbaa !12
  %inc83 = add nsw i32 %75, 1
  store i32 %inc83, ptr %j, align 4, !tbaa !12
  br label %for.cond63, !llvm.loop !57

for.end84:                                        ; preds = %for.cond63
  %76 = load i32, ptr %k, align 4, !tbaa !12
  %77 = load i32, ptr %n1, align 4, !tbaa !12
  %cmp85 = icmp eq i32 %76, %77
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %for.end84
  br label %for.end121

if.end88:                                         ; preds = %for.end84
  %78 = load i32, ptr %newUchain, align 4, !tbaa !12
  %tobool89 = icmp ne i32 %78, 0
  br i1 %tobool89, label %if.then90, label %if.else104

if.then90:                                        ; preds = %if.end88
  %79 = load i32, ptr %ulen, align 4, !tbaa !12
  store i32 %79, ptr %deg, align 4, !tbaa !12
  %80 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory91 = getelementptr inbounds %struct.NumericType, ptr %80, i32 0, i32 13
  %81 = load ptr, ptr %Memory91, align 8, !tbaa !34
  %82 = load i32, ptr %up, align 4, !tbaa !12
  %idx.ext92 = sext i32 %82 to i64
  %add.ptr93 = getelementptr inbounds %union.Unit_union, ptr %81, i64 %idx.ext92
  store ptr %add.ptr93, ptr %ip, align 8, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !12
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc101, %if.then90
  %83 = load i32, ptr %j, align 4, !tbaa !12
  %84 = load i32, ptr %deg, align 4, !tbaa !12
  %cmp95 = icmp slt i32 %83, %84
  br i1 %cmp95, label %for.body97, label %for.end103

for.body97:                                       ; preds = %for.cond94
  %85 = load ptr, ptr %ip, align 8, !tbaa !4
  %incdec.ptr98 = getelementptr inbounds i32, ptr %85, i32 1
  store ptr %incdec.ptr98, ptr %ip, align 8, !tbaa !4
  %86 = load i32, ptr %85, align 4, !tbaa !12
  store i32 %86, ptr %col, align 4, !tbaa !12
  %87 = load i32, ptr %col, align 4, !tbaa !12
  %88 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %89 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom99 = sext i32 %89 to i64
  %arrayidx100 = getelementptr inbounds i32, ptr %88, i64 %idxprom99
  store i32 %87, ptr %arrayidx100, align 4, !tbaa !12
  br label %for.inc101

for.inc101:                                       ; preds = %for.body97
  %90 = load i32, ptr %j, align 4, !tbaa !12
  %inc102 = add nsw i32 %90, 1
  store i32 %inc102, ptr %j, align 4, !tbaa !12
  br label %for.cond94, !llvm.loop !58

for.end103:                                       ; preds = %for.cond94
  br label %if.end119

if.else104:                                       ; preds = %if.end88
  %91 = load i32, ptr %ulen, align 4, !tbaa !12
  %92 = load i32, ptr %deg, align 4, !tbaa !12
  %sub105 = sub nsw i32 %92, %91
  store i32 %sub105, ptr %deg, align 4, !tbaa !12
  %93 = load ptr, ptr %Upos, align 8, !tbaa !4
  %94 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom106 = sext i32 %94 to i64
  %arrayidx107 = getelementptr inbounds i32, ptr %93, i64 %idxprom106
  %95 = load i32, ptr %arrayidx107, align 4, !tbaa !12
  store i32 %95, ptr %pos, align 4, !tbaa !12
  %96 = load i32, ptr %pos, align 4, !tbaa !12
  %cmp108 = icmp ne i32 %96, -1
  br i1 %cmp108, label %if.then110, label %if.end118

if.then110:                                       ; preds = %if.else104
  %97 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %98 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom111 = sext i32 %98 to i64
  %arrayidx112 = getelementptr inbounds i32, ptr %97, i64 %idxprom111
  %99 = load i32, ptr %arrayidx112, align 4, !tbaa !12
  %100 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %101 = load i32, ptr %deg, align 4, !tbaa !12
  %inc113 = add nsw i32 %101, 1
  store i32 %inc113, ptr %deg, align 4, !tbaa !12
  %idxprom114 = sext i32 %101 to i64
  %arrayidx115 = getelementptr inbounds i32, ptr %100, i64 %idxprom114
  store i32 %99, ptr %arrayidx115, align 4, !tbaa !12
  %102 = load i32, ptr %k, align 4, !tbaa !12
  %103 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %104 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom116 = sext i32 %104 to i64
  %arrayidx117 = getelementptr inbounds i32, ptr %103, i64 %idxprom116
  store i32 %102, ptr %arrayidx117, align 4, !tbaa !12
  br label %if.end118

if.end118:                                        ; preds = %if.then110, %if.else104
  br label %if.end119

if.end119:                                        ; preds = %if.end118, %for.end103
  br label %for.inc120

for.inc120:                                       ; preds = %if.end119
  %105 = load i32, ptr %k, align 4, !tbaa !12
  %dec = add nsw i32 %105, -1
  store i32 %dec, ptr %k, align 4, !tbaa !12
  br label %for.cond44, !llvm.loop !59

for.end121:                                       ; preds = %if.then87, %for.cond44
  %106 = load i32, ptr %n1, align 4, !tbaa !12
  %sub122 = sub nsw i32 %106, 1
  store i32 %sub122, ptr %k, align 4, !tbaa !12
  br label %for.cond123

for.cond123:                                      ; preds = %for.inc174, %for.end121
  %107 = load i32, ptr %k, align 4, !tbaa !12
  %cmp124 = icmp sge i32 %107, 0
  br i1 %cmp124, label %for.body126, label %for.end176

for.body126:                                      ; preds = %for.cond123
  %108 = load ptr, ptr %Uilen, align 8, !tbaa !4
  %109 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom127 = sext i32 %109 to i64
  %arrayidx128 = getelementptr inbounds i32, ptr %108, i64 %idxprom127
  %110 = load i32, ptr %arrayidx128, align 4, !tbaa !12
  store i32 %110, ptr %deg, align 4, !tbaa !12
  %111 = load i32, ptr %deg, align 4, !tbaa !12
  %cmp129 = icmp sgt i32 %111, 0
  br i1 %cmp129, label %if.then131, label %if.end173

if.then131:                                       ; preds = %for.body126
  %112 = load ptr, ptr %Uip, align 8, !tbaa !4
  %113 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom132 = sext i32 %113 to i64
  %arrayidx133 = getelementptr inbounds i32, ptr %112, i64 %idxprom132
  %114 = load i32, ptr %arrayidx133, align 4, !tbaa !12
  store i32 %114, ptr %up, align 4, !tbaa !12
  %115 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory134 = getelementptr inbounds %struct.NumericType, ptr %115, i32 0, i32 13
  %116 = load ptr, ptr %Memory134, align 8, !tbaa !34
  %117 = load i32, ptr %up, align 4, !tbaa !12
  %idx.ext135 = sext i32 %117 to i64
  %add.ptr136 = getelementptr inbounds %union.Unit_union, ptr %116, i64 %idx.ext135
  store ptr %add.ptr136, ptr %Usi, align 8, !tbaa !4
  %118 = load i32, ptr %deg, align 4, !tbaa !12
  %conv137 = sext i32 %118 to i64
  %mul138 = mul i64 4, %conv137
  %add139 = add i64 %mul138, 8
  %sub140 = sub i64 %add139, 1
  %div141 = udiv i64 %sub140, 8
  %119 = load i32, ptr %up, align 4, !tbaa !12
  %conv142 = sext i32 %119 to i64
  %add143 = add i64 %conv142, %div141
  %conv144 = trunc i64 %add143 to i32
  store i32 %conv144, ptr %up, align 4, !tbaa !12
  %120 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory145 = getelementptr inbounds %struct.NumericType, ptr %120, i32 0, i32 13
  %121 = load ptr, ptr %Memory145, align 8, !tbaa !34
  %122 = load i32, ptr %up, align 4, !tbaa !12
  %idx.ext146 = sext i32 %122 to i64
  %add.ptr147 = getelementptr inbounds %union.Unit_union, ptr %121, i64 %idx.ext146
  store ptr %add.ptr147, ptr %Uval, align 8, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !12
  br label %for.cond148

for.cond148:                                      ; preds = %for.inc170, %if.then131
  %123 = load i32, ptr %j, align 4, !tbaa !12
  %124 = load i32, ptr %deg, align 4, !tbaa !12
  %cmp149 = icmp slt i32 %123, %124
  br i1 %cmp149, label %for.body151, label %for.end172

for.body151:                                      ; preds = %for.cond148
  %125 = load ptr, ptr %Usi, align 8, !tbaa !4
  %126 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom152 = sext i32 %126 to i64
  %arrayidx153 = getelementptr inbounds i32, ptr %125, i64 %idxprom152
  %127 = load i32, ptr %arrayidx153, align 4, !tbaa !12
  store i32 %127, ptr %col, align 4, !tbaa !12
  %128 = load ptr, ptr %Uval, align 8, !tbaa !4
  %129 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom154 = sext i32 %129 to i64
  %arrayidx155 = getelementptr inbounds %struct.DoubleComplex, ptr %128, i64 %idxprom154
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %value, ptr align 8 %arrayidx155, i64 16, i1 false), !tbaa.struct !35
  %component156 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx157 = getelementptr inbounds [2 x double], ptr %component156, i64 0, i64 0
  %130 = load double, ptr %arrayidx157, align 8, !tbaa !20
  %cmp158 = fcmp une double %130, 0.000000e+00
  br i1 %cmp158, label %if.then165, label %lor.lhs.false160

lor.lhs.false160:                                 ; preds = %for.body151
  %component161 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx162 = getelementptr inbounds [2 x double], ptr %component161, i64 0, i64 1
  %131 = load double, ptr %arrayidx162, align 8, !tbaa !20
  %cmp163 = fcmp une double %131, 0.000000e+00
  br i1 %cmp163, label %if.then165, label %if.end169

if.then165:                                       ; preds = %lor.lhs.false160, %for.body151
  %132 = load ptr, ptr %Wi.addr, align 8, !tbaa !4
  %133 = load i32, ptr %col, align 4, !tbaa !12
  %idxprom166 = sext i32 %133 to i64
  %arrayidx167 = getelementptr inbounds i32, ptr %132, i64 %idxprom166
  %134 = load i32, ptr %arrayidx167, align 4, !tbaa !12
  %inc168 = add nsw i32 %134, 1
  store i32 %inc168, ptr %arrayidx167, align 4, !tbaa !12
  br label %if.end169

if.end169:                                        ; preds = %if.then165, %lor.lhs.false160
  br label %for.inc170

for.inc170:                                       ; preds = %if.end169
  %135 = load i32, ptr %j, align 4, !tbaa !12
  %inc171 = add nsw i32 %135, 1
  store i32 %inc171, ptr %j, align 4, !tbaa !12
  br label %for.cond148, !llvm.loop !60

for.end172:                                       ; preds = %for.cond148
  br label %if.end173

if.end173:                                        ; preds = %for.end172, %for.body126
  br label %for.inc174

for.inc174:                                       ; preds = %if.end173
  %136 = load i32, ptr %k, align 4, !tbaa !12
  %dec175 = add nsw i32 %136, -1
  store i32 %dec175, ptr %k, align 4, !tbaa !12
  br label %for.cond123, !llvm.loop !61

for.end176:                                       ; preds = %for.cond123
  store i32 0, ptr %unz2, align 4, !tbaa !12
  store i32 0, ptr %col, align 4, !tbaa !12
  br label %for.cond177

for.cond177:                                      ; preds = %for.inc186, %for.end176
  %137 = load i32, ptr %col, align 4, !tbaa !12
  %138 = load i32, ptr %n_col, align 4, !tbaa !12
  %cmp178 = icmp slt i32 %137, %138
  br i1 %cmp178, label %for.body180, label %for.end188

for.body180:                                      ; preds = %for.cond177
  %139 = load i32, ptr %unz2, align 4, !tbaa !12
  %140 = load ptr, ptr %Up.addr, align 8, !tbaa !4
  %141 = load i32, ptr %col, align 4, !tbaa !12
  %idxprom181 = sext i32 %141 to i64
  %arrayidx182 = getelementptr inbounds i32, ptr %140, i64 %idxprom181
  store i32 %139, ptr %arrayidx182, align 4, !tbaa !12
  %142 = load ptr, ptr %Wi.addr, align 8, !tbaa !4
  %143 = load i32, ptr %col, align 4, !tbaa !12
  %idxprom183 = sext i32 %143 to i64
  %arrayidx184 = getelementptr inbounds i32, ptr %142, i64 %idxprom183
  %144 = load i32, ptr %arrayidx184, align 4, !tbaa !12
  %145 = load i32, ptr %unz2, align 4, !tbaa !12
  %add185 = add nsw i32 %145, %144
  store i32 %add185, ptr %unz2, align 4, !tbaa !12
  br label %for.inc186

for.inc186:                                       ; preds = %for.body180
  %146 = load i32, ptr %col, align 4, !tbaa !12
  %inc187 = add nsw i32 %146, 1
  store i32 %inc187, ptr %col, align 4, !tbaa !12
  br label %for.cond177, !llvm.loop !62

for.end188:                                       ; preds = %for.cond177
  %147 = load i32, ptr %unz2, align 4, !tbaa !12
  %148 = load ptr, ptr %Up.addr, align 8, !tbaa !4
  %149 = load i32, ptr %n_col, align 4, !tbaa !12
  %idxprom189 = sext i32 %149 to i64
  %arrayidx190 = getelementptr inbounds i32, ptr %148, i64 %idxprom189
  store i32 %147, ptr %arrayidx190, align 4, !tbaa !12
  store i32 0, ptr %col, align 4, !tbaa !12
  br label %for.cond191

for.cond191:                                      ; preds = %for.inc200, %for.end188
  %150 = load i32, ptr %col, align 4, !tbaa !12
  %151 = load i32, ptr %n_col, align 4, !tbaa !12
  %cmp192 = icmp slt i32 %150, %151
  br i1 %cmp192, label %for.body194, label %for.end202

for.body194:                                      ; preds = %for.cond191
  %152 = load ptr, ptr %Up.addr, align 8, !tbaa !4
  %153 = load i32, ptr %col, align 4, !tbaa !12
  %add195 = add nsw i32 %153, 1
  %idxprom196 = sext i32 %add195 to i64
  %arrayidx197 = getelementptr inbounds i32, ptr %152, i64 %idxprom196
  %154 = load i32, ptr %arrayidx197, align 4, !tbaa !12
  %155 = load ptr, ptr %Wi.addr, align 8, !tbaa !4
  %156 = load i32, ptr %col, align 4, !tbaa !12
  %idxprom198 = sext i32 %156 to i64
  %arrayidx199 = getelementptr inbounds i32, ptr %155, i64 %idxprom198
  store i32 %154, ptr %arrayidx199, align 4, !tbaa !12
  br label %for.inc200

for.inc200:                                       ; preds = %for.body194
  %157 = load i32, ptr %col, align 4, !tbaa !12
  %inc201 = add nsw i32 %157, 1
  store i32 %inc201, ptr %col, align 4, !tbaa !12
  br label %for.cond191, !llvm.loop !63

for.end202:                                       ; preds = %for.cond191
  store i32 0, ptr %col, align 4, !tbaa !12
  br label %for.cond203

for.cond203:                                      ; preds = %for.inc258, %for.end202
  %158 = load i32, ptr %col, align 4, !tbaa !12
  %159 = load i32, ptr %npiv, align 4, !tbaa !12
  %cmp204 = icmp slt i32 %158, %159
  br i1 %cmp204, label %for.body206, label %for.end260

for.body206:                                      ; preds = %for.cond203
  %160 = load ptr, ptr %D, align 8, !tbaa !4
  %161 = load i32, ptr %col, align 4, !tbaa !12
  %idxprom207 = sext i32 %161 to i64
  %arrayidx208 = getelementptr inbounds %struct.DoubleComplex, ptr %160, i64 %idxprom207
  %component209 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx208, i32 0, i32 0
  %arrayidx210 = getelementptr inbounds [2 x double], ptr %component209, i64 0, i64 0
  %162 = load double, ptr %arrayidx210, align 8, !tbaa !20
  %cmp211 = fcmp une double %162, 0.000000e+00
  br i1 %cmp211, label %if.then220, label %lor.lhs.false213

lor.lhs.false213:                                 ; preds = %for.body206
  %163 = load ptr, ptr %D, align 8, !tbaa !4
  %164 = load i32, ptr %col, align 4, !tbaa !12
  %idxprom214 = sext i32 %164 to i64
  %arrayidx215 = getelementptr inbounds %struct.DoubleComplex, ptr %163, i64 %idxprom214
  %component216 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx215, i32 0, i32 0
  %arrayidx217 = getelementptr inbounds [2 x double], ptr %component216, i64 0, i64 1
  %165 = load double, ptr %arrayidx217, align 8, !tbaa !20
  %cmp218 = fcmp une double %165, 0.000000e+00
  br i1 %cmp218, label %if.then220, label %if.end257

if.then220:                                       ; preds = %lor.lhs.false213, %for.body206
  %166 = load ptr, ptr %Wi.addr, align 8, !tbaa !4
  %167 = load i32, ptr %col, align 4, !tbaa !12
  %idxprom221 = sext i32 %167 to i64
  %arrayidx222 = getelementptr inbounds i32, ptr %166, i64 %idxprom221
  %168 = load i32, ptr %arrayidx222, align 4, !tbaa !12
  %dec223 = add nsw i32 %168, -1
  store i32 %dec223, ptr %arrayidx222, align 4, !tbaa !12
  store i32 %dec223, ptr %p, align 4, !tbaa !12
  %169 = load i32, ptr %col, align 4, !tbaa !12
  %170 = load ptr, ptr %Ui.addr, align 8, !tbaa !4
  %171 = load i32, ptr %p, align 4, !tbaa !12
  %idxprom224 = sext i32 %171 to i64
  %arrayidx225 = getelementptr inbounds i32, ptr %170, i64 %idxprom224
  store i32 %169, ptr %arrayidx225, align 4, !tbaa !12
  %172 = load i32, ptr %split, align 4, !tbaa !12
  %tobool226 = icmp ne i32 %172, 0
  br i1 %tobool226, label %if.then227, label %if.else240

if.then227:                                       ; preds = %if.then220
  %173 = load ptr, ptr %D, align 8, !tbaa !4
  %174 = load i32, ptr %col, align 4, !tbaa !12
  %idxprom228 = sext i32 %174 to i64
  %arrayidx229 = getelementptr inbounds %struct.DoubleComplex, ptr %173, i64 %idxprom228
  %component230 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx229, i32 0, i32 0
  %arrayidx231 = getelementptr inbounds [2 x double], ptr %component230, i64 0, i64 0
  %175 = load double, ptr %arrayidx231, align 8, !tbaa !20
  %176 = load ptr, ptr %Ux.addr, align 8, !tbaa !4
  %177 = load i32, ptr %p, align 4, !tbaa !12
  %idxprom232 = sext i32 %177 to i64
  %arrayidx233 = getelementptr inbounds double, ptr %176, i64 %idxprom232
  store double %175, ptr %arrayidx233, align 8, !tbaa !20
  %178 = load ptr, ptr %D, align 8, !tbaa !4
  %179 = load i32, ptr %col, align 4, !tbaa !12
  %idxprom234 = sext i32 %179 to i64
  %arrayidx235 = getelementptr inbounds %struct.DoubleComplex, ptr %178, i64 %idxprom234
  %component236 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx235, i32 0, i32 0
  %arrayidx237 = getelementptr inbounds [2 x double], ptr %component236, i64 0, i64 1
  %180 = load double, ptr %arrayidx237, align 8, !tbaa !20
  %181 = load ptr, ptr %Uz.addr, align 8, !tbaa !4
  %182 = load i32, ptr %p, align 4, !tbaa !12
  %idxprom238 = sext i32 %182 to i64
  %arrayidx239 = getelementptr inbounds double, ptr %181, i64 %idxprom238
  store double %180, ptr %arrayidx239, align 8, !tbaa !20
  br label %if.end256

if.else240:                                       ; preds = %if.then220
  %183 = load ptr, ptr %D, align 8, !tbaa !4
  %184 = load i32, ptr %col, align 4, !tbaa !12
  %idxprom241 = sext i32 %184 to i64
  %arrayidx242 = getelementptr inbounds %struct.DoubleComplex, ptr %183, i64 %idxprom241
  %component243 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx242, i32 0, i32 0
  %arrayidx244 = getelementptr inbounds [2 x double], ptr %component243, i64 0, i64 0
  %185 = load double, ptr %arrayidx244, align 8, !tbaa !20
  %186 = load ptr, ptr %Ux.addr, align 8, !tbaa !4
  %187 = load i32, ptr %p, align 4, !tbaa !12
  %mul245 = mul nsw i32 2, %187
  %idxprom246 = sext i32 %mul245 to i64
  %arrayidx247 = getelementptr inbounds double, ptr %186, i64 %idxprom246
  store double %185, ptr %arrayidx247, align 8, !tbaa !20
  %188 = load ptr, ptr %D, align 8, !tbaa !4
  %189 = load i32, ptr %col, align 4, !tbaa !12
  %idxprom248 = sext i32 %189 to i64
  %arrayidx249 = getelementptr inbounds %struct.DoubleComplex, ptr %188, i64 %idxprom248
  %component250 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx249, i32 0, i32 0
  %arrayidx251 = getelementptr inbounds [2 x double], ptr %component250, i64 0, i64 1
  %190 = load double, ptr %arrayidx251, align 8, !tbaa !20
  %191 = load ptr, ptr %Ux.addr, align 8, !tbaa !4
  %192 = load i32, ptr %p, align 4, !tbaa !12
  %mul252 = mul nsw i32 2, %192
  %add253 = add nsw i32 %mul252, 1
  %idxprom254 = sext i32 %add253 to i64
  %arrayidx255 = getelementptr inbounds double, ptr %191, i64 %idxprom254
  store double %190, ptr %arrayidx255, align 8, !tbaa !20
  br label %if.end256

if.end256:                                        ; preds = %if.else240, %if.then227
  br label %if.end257

if.end257:                                        ; preds = %if.end256, %lor.lhs.false213
  br label %for.inc258

for.inc258:                                       ; preds = %if.end257
  %193 = load i32, ptr %col, align 4, !tbaa !12
  %inc259 = add nsw i32 %193, 1
  store i32 %inc259, ptr %col, align 4, !tbaa !12
  br label %for.cond203, !llvm.loop !64

for.end260:                                       ; preds = %for.cond203
  %194 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %ulen261 = getelementptr inbounds %struct.NumericType, ptr %194, i32 0, i32 27
  %195 = load i32, ptr %ulen261, align 8, !tbaa !54
  store i32 %195, ptr %deg, align 4, !tbaa !12
  %196 = load i32, ptr %deg, align 4, !tbaa !12
  %cmp262 = icmp sgt i32 %196, 0
  br i1 %cmp262, label %if.then264, label %if.end277

if.then264:                                       ; preds = %for.end260
  store i32 0, ptr %j, align 4, !tbaa !12
  br label %for.cond265

for.cond265:                                      ; preds = %for.inc274, %if.then264
  %197 = load i32, ptr %j, align 4, !tbaa !12
  %198 = load i32, ptr %deg, align 4, !tbaa !12
  %cmp266 = icmp slt i32 %197, %198
  br i1 %cmp266, label %for.body268, label %for.end276

for.body268:                                      ; preds = %for.cond265
  %199 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Upattern269 = getelementptr inbounds %struct.NumericType, ptr %199, i32 0, i32 26
  %200 = load ptr, ptr %Upattern269, align 8, !tbaa !55
  %201 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom270 = sext i32 %201 to i64
  %arrayidx271 = getelementptr inbounds i32, ptr %200, i64 %idxprom270
  %202 = load i32, ptr %arrayidx271, align 4, !tbaa !12
  %203 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %204 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom272 = sext i32 %204 to i64
  %arrayidx273 = getelementptr inbounds i32, ptr %203, i64 %idxprom272
  store i32 %202, ptr %arrayidx273, align 4, !tbaa !12
  br label %for.inc274

for.inc274:                                       ; preds = %for.body268
  %205 = load i32, ptr %j, align 4, !tbaa !12
  %inc275 = add nsw i32 %205, 1
  store i32 %inc275, ptr %j, align 4, !tbaa !12
  br label %for.cond265, !llvm.loop !65

for.end276:                                       ; preds = %for.cond265
  br label %if.end277

if.end277:                                        ; preds = %for.end276, %for.end260
  %206 = load i32, ptr %npiv, align 4, !tbaa !12
  %sub278 = sub nsw i32 %206, 1
  store i32 %sub278, ptr %k, align 4, !tbaa !12
  br label %for.cond279

for.cond279:                                      ; preds = %for.inc389, %if.end277
  %207 = load i32, ptr %k, align 4, !tbaa !12
  %208 = load i32, ptr %n1, align 4, !tbaa !12
  %cmp280 = icmp sge i32 %207, %208
  br i1 %cmp280, label %for.body282, label %for.end391

for.body282:                                      ; preds = %for.cond279
  %209 = load ptr, ptr %Uip, align 8, !tbaa !4
  %210 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom283 = sext i32 %210 to i64
  %arrayidx284 = getelementptr inbounds i32, ptr %209, i64 %idxprom283
  %211 = load i32, ptr %arrayidx284, align 4, !tbaa !12
  store i32 %211, ptr %up, align 4, !tbaa !12
  %212 = load ptr, ptr %Uilen, align 8, !tbaa !4
  %213 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom285 = sext i32 %213 to i64
  %arrayidx286 = getelementptr inbounds i32, ptr %212, i64 %idxprom285
  %214 = load i32, ptr %arrayidx286, align 4, !tbaa !12
  store i32 %214, ptr %ulen, align 4, !tbaa !12
  %215 = load i32, ptr %up, align 4, !tbaa !12
  %cmp287 = icmp slt i32 %215, 0
  %conv288 = zext i1 %cmp287 to i32
  store i32 %conv288, ptr %newUchain, align 4, !tbaa !12
  %216 = load i32, ptr %newUchain, align 4, !tbaa !12
  %tobool289 = icmp ne i32 %216, 0
  br i1 %tobool289, label %if.then290, label %if.else301

if.then290:                                       ; preds = %for.body282
  %217 = load i32, ptr %up, align 4, !tbaa !12
  %sub291 = sub nsw i32 0, %217
  store i32 %sub291, ptr %up, align 4, !tbaa !12
  %218 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory292 = getelementptr inbounds %struct.NumericType, ptr %218, i32 0, i32 13
  %219 = load ptr, ptr %Memory292, align 8, !tbaa !34
  %220 = load i32, ptr %up, align 4, !tbaa !12
  %idx.ext293 = sext i32 %220 to i64
  %add.ptr294 = getelementptr inbounds %union.Unit_union, ptr %219, i64 %idx.ext293
  %221 = load i32, ptr %ulen, align 4, !tbaa !12
  %conv295 = sext i32 %221 to i64
  %mul296 = mul i64 4, %conv295
  %add297 = add i64 %mul296, 8
  %sub298 = sub i64 %add297, 1
  %div299 = udiv i64 %sub298, 8
  %add.ptr300 = getelementptr inbounds %union.Unit_union, ptr %add.ptr294, i64 %div299
  store ptr %add.ptr300, ptr %xp, align 8, !tbaa !4
  br label %if.end305

if.else301:                                       ; preds = %for.body282
  %222 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory302 = getelementptr inbounds %struct.NumericType, ptr %222, i32 0, i32 13
  %223 = load ptr, ptr %Memory302, align 8, !tbaa !34
  %224 = load i32, ptr %up, align 4, !tbaa !12
  %idx.ext303 = sext i32 %224 to i64
  %add.ptr304 = getelementptr inbounds %union.Unit_union, ptr %223, i64 %idx.ext303
  store ptr %add.ptr304, ptr %xp, align 8, !tbaa !4
  br label %if.end305

if.end305:                                        ; preds = %if.else301, %if.then290
  %225 = load i32, ptr %deg, align 4, !tbaa !12
  %226 = load ptr, ptr %xp, align 8, !tbaa !4
  %idx.ext306 = sext i32 %225 to i64
  %add.ptr307 = getelementptr inbounds %struct.DoubleComplex, ptr %226, i64 %idx.ext306
  store ptr %add.ptr307, ptr %xp, align 8, !tbaa !4
  %227 = load i32, ptr %deg, align 4, !tbaa !12
  %sub308 = sub nsw i32 %227, 1
  store i32 %sub308, ptr %j, align 4, !tbaa !12
  br label %for.cond309

for.cond309:                                      ; preds = %for.inc355, %if.end305
  %228 = load i32, ptr %j, align 4, !tbaa !12
  %cmp310 = icmp sge i32 %228, 0
  br i1 %cmp310, label %for.body312, label %for.end357

for.body312:                                      ; preds = %for.cond309
  %229 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %230 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom313 = sext i32 %230 to i64
  %arrayidx314 = getelementptr inbounds i32, ptr %229, i64 %idxprom313
  %231 = load i32, ptr %arrayidx314, align 4, !tbaa !12
  store i32 %231, ptr %col, align 4, !tbaa !12
  %232 = load ptr, ptr %xp, align 8, !tbaa !4
  %incdec.ptr315 = getelementptr inbounds %struct.DoubleComplex, ptr %232, i32 -1
  store ptr %incdec.ptr315, ptr %xp, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %value, ptr align 8 %incdec.ptr315, i64 16, i1 false), !tbaa.struct !35
  %component316 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx317 = getelementptr inbounds [2 x double], ptr %component316, i64 0, i64 0
  %233 = load double, ptr %arrayidx317, align 8, !tbaa !20
  %cmp318 = fcmp une double %233, 0.000000e+00
  br i1 %cmp318, label %if.then325, label %lor.lhs.false320

lor.lhs.false320:                                 ; preds = %for.body312
  %component321 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx322 = getelementptr inbounds [2 x double], ptr %component321, i64 0, i64 1
  %234 = load double, ptr %arrayidx322, align 8, !tbaa !20
  %cmp323 = fcmp une double %234, 0.000000e+00
  br i1 %cmp323, label %if.then325, label %if.end354

if.then325:                                       ; preds = %lor.lhs.false320, %for.body312
  %235 = load ptr, ptr %Wi.addr, align 8, !tbaa !4
  %236 = load i32, ptr %col, align 4, !tbaa !12
  %idxprom326 = sext i32 %236 to i64
  %arrayidx327 = getelementptr inbounds i32, ptr %235, i64 %idxprom326
  %237 = load i32, ptr %arrayidx327, align 4, !tbaa !12
  %dec328 = add nsw i32 %237, -1
  store i32 %dec328, ptr %arrayidx327, align 4, !tbaa !12
  store i32 %dec328, ptr %p, align 4, !tbaa !12
  %238 = load i32, ptr %k, align 4, !tbaa !12
  %239 = load ptr, ptr %Ui.addr, align 8, !tbaa !4
  %240 = load i32, ptr %p, align 4, !tbaa !12
  %idxprom329 = sext i32 %240 to i64
  %arrayidx330 = getelementptr inbounds i32, ptr %239, i64 %idxprom329
  store i32 %238, ptr %arrayidx330, align 4, !tbaa !12
  %241 = load i32, ptr %split, align 4, !tbaa !12
  %tobool331 = icmp ne i32 %241, 0
  br i1 %tobool331, label %if.then332, label %if.else341

if.then332:                                       ; preds = %if.then325
  %component333 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx334 = getelementptr inbounds [2 x double], ptr %component333, i64 0, i64 0
  %242 = load double, ptr %arrayidx334, align 8, !tbaa !20
  %243 = load ptr, ptr %Ux.addr, align 8, !tbaa !4
  %244 = load i32, ptr %p, align 4, !tbaa !12
  %idxprom335 = sext i32 %244 to i64
  %arrayidx336 = getelementptr inbounds double, ptr %243, i64 %idxprom335
  store double %242, ptr %arrayidx336, align 8, !tbaa !20
  %component337 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx338 = getelementptr inbounds [2 x double], ptr %component337, i64 0, i64 1
  %245 = load double, ptr %arrayidx338, align 8, !tbaa !20
  %246 = load ptr, ptr %Uz.addr, align 8, !tbaa !4
  %247 = load i32, ptr %p, align 4, !tbaa !12
  %idxprom339 = sext i32 %247 to i64
  %arrayidx340 = getelementptr inbounds double, ptr %246, i64 %idxprom339
  store double %245, ptr %arrayidx340, align 8, !tbaa !20
  br label %if.end353

if.else341:                                       ; preds = %if.then325
  %component342 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx343 = getelementptr inbounds [2 x double], ptr %component342, i64 0, i64 0
  %248 = load double, ptr %arrayidx343, align 8, !tbaa !20
  %249 = load ptr, ptr %Ux.addr, align 8, !tbaa !4
  %250 = load i32, ptr %p, align 4, !tbaa !12
  %mul344 = mul nsw i32 2, %250
  %idxprom345 = sext i32 %mul344 to i64
  %arrayidx346 = getelementptr inbounds double, ptr %249, i64 %idxprom345
  store double %248, ptr %arrayidx346, align 8, !tbaa !20
  %component347 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx348 = getelementptr inbounds [2 x double], ptr %component347, i64 0, i64 1
  %251 = load double, ptr %arrayidx348, align 8, !tbaa !20
  %252 = load ptr, ptr %Ux.addr, align 8, !tbaa !4
  %253 = load i32, ptr %p, align 4, !tbaa !12
  %mul349 = mul nsw i32 2, %253
  %add350 = add nsw i32 %mul349, 1
  %idxprom351 = sext i32 %add350 to i64
  %arrayidx352 = getelementptr inbounds double, ptr %252, i64 %idxprom351
  store double %251, ptr %arrayidx352, align 8, !tbaa !20
  br label %if.end353

if.end353:                                        ; preds = %if.else341, %if.then332
  br label %if.end354

if.end354:                                        ; preds = %if.end353, %lor.lhs.false320
  br label %for.inc355

for.inc355:                                       ; preds = %if.end354
  %254 = load i32, ptr %j, align 4, !tbaa !12
  %dec356 = add nsw i32 %254, -1
  store i32 %dec356, ptr %j, align 4, !tbaa !12
  br label %for.cond309, !llvm.loop !66

for.end357:                                       ; preds = %for.cond309
  %255 = load i32, ptr %newUchain, align 4, !tbaa !12
  %tobool358 = icmp ne i32 %255, 0
  br i1 %tobool358, label %if.then359, label %if.else373

if.then359:                                       ; preds = %for.end357
  %256 = load i32, ptr %ulen, align 4, !tbaa !12
  store i32 %256, ptr %deg, align 4, !tbaa !12
  %257 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory360 = getelementptr inbounds %struct.NumericType, ptr %257, i32 0, i32 13
  %258 = load ptr, ptr %Memory360, align 8, !tbaa !34
  %259 = load i32, ptr %up, align 4, !tbaa !12
  %idx.ext361 = sext i32 %259 to i64
  %add.ptr362 = getelementptr inbounds %union.Unit_union, ptr %258, i64 %idx.ext361
  store ptr %add.ptr362, ptr %ip, align 8, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !12
  br label %for.cond363

for.cond363:                                      ; preds = %for.inc370, %if.then359
  %260 = load i32, ptr %j, align 4, !tbaa !12
  %261 = load i32, ptr %deg, align 4, !tbaa !12
  %cmp364 = icmp slt i32 %260, %261
  br i1 %cmp364, label %for.body366, label %for.end372

for.body366:                                      ; preds = %for.cond363
  %262 = load ptr, ptr %ip, align 8, !tbaa !4
  %incdec.ptr367 = getelementptr inbounds i32, ptr %262, i32 1
  store ptr %incdec.ptr367, ptr %ip, align 8, !tbaa !4
  %263 = load i32, ptr %262, align 4, !tbaa !12
  store i32 %263, ptr %col, align 4, !tbaa !12
  %264 = load i32, ptr %col, align 4, !tbaa !12
  %265 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %266 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom368 = sext i32 %266 to i64
  %arrayidx369 = getelementptr inbounds i32, ptr %265, i64 %idxprom368
  store i32 %264, ptr %arrayidx369, align 4, !tbaa !12
  br label %for.inc370

for.inc370:                                       ; preds = %for.body366
  %267 = load i32, ptr %j, align 4, !tbaa !12
  %inc371 = add nsw i32 %267, 1
  store i32 %inc371, ptr %j, align 4, !tbaa !12
  br label %for.cond363, !llvm.loop !67

for.end372:                                       ; preds = %for.cond363
  br label %if.end388

if.else373:                                       ; preds = %for.end357
  %268 = load i32, ptr %ulen, align 4, !tbaa !12
  %269 = load i32, ptr %deg, align 4, !tbaa !12
  %sub374 = sub nsw i32 %269, %268
  store i32 %sub374, ptr %deg, align 4, !tbaa !12
  %270 = load ptr, ptr %Upos, align 8, !tbaa !4
  %271 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom375 = sext i32 %271 to i64
  %arrayidx376 = getelementptr inbounds i32, ptr %270, i64 %idxprom375
  %272 = load i32, ptr %arrayidx376, align 4, !tbaa !12
  store i32 %272, ptr %pos, align 4, !tbaa !12
  %273 = load i32, ptr %pos, align 4, !tbaa !12
  %cmp377 = icmp ne i32 %273, -1
  br i1 %cmp377, label %if.then379, label %if.end387

if.then379:                                       ; preds = %if.else373
  %274 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %275 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom380 = sext i32 %275 to i64
  %arrayidx381 = getelementptr inbounds i32, ptr %274, i64 %idxprom380
  %276 = load i32, ptr %arrayidx381, align 4, !tbaa !12
  %277 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %278 = load i32, ptr %deg, align 4, !tbaa !12
  %inc382 = add nsw i32 %278, 1
  store i32 %inc382, ptr %deg, align 4, !tbaa !12
  %idxprom383 = sext i32 %278 to i64
  %arrayidx384 = getelementptr inbounds i32, ptr %277, i64 %idxprom383
  store i32 %276, ptr %arrayidx384, align 4, !tbaa !12
  %279 = load i32, ptr %k, align 4, !tbaa !12
  %280 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %281 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom385 = sext i32 %281 to i64
  %arrayidx386 = getelementptr inbounds i32, ptr %280, i64 %idxprom385
  store i32 %279, ptr %arrayidx386, align 4, !tbaa !12
  br label %if.end387

if.end387:                                        ; preds = %if.then379, %if.else373
  br label %if.end388

if.end388:                                        ; preds = %if.end387, %for.end372
  br label %for.inc389

for.inc389:                                       ; preds = %if.end388
  %282 = load i32, ptr %k, align 4, !tbaa !12
  %dec390 = add nsw i32 %282, -1
  store i32 %dec390, ptr %k, align 4, !tbaa !12
  br label %for.cond279, !llvm.loop !68

for.end391:                                       ; preds = %for.cond279
  %283 = load i32, ptr %n1, align 4, !tbaa !12
  %sub392 = sub nsw i32 %283, 1
  store i32 %sub392, ptr %k, align 4, !tbaa !12
  br label %for.cond393

for.cond393:                                      ; preds = %for.inc469, %for.end391
  %284 = load i32, ptr %k, align 4, !tbaa !12
  %cmp394 = icmp sge i32 %284, 0
  br i1 %cmp394, label %for.body396, label %for.end471

for.body396:                                      ; preds = %for.cond393
  %285 = load ptr, ptr %Uilen, align 8, !tbaa !4
  %286 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom397 = sext i32 %286 to i64
  %arrayidx398 = getelementptr inbounds i32, ptr %285, i64 %idxprom397
  %287 = load i32, ptr %arrayidx398, align 4, !tbaa !12
  store i32 %287, ptr %deg, align 4, !tbaa !12
  %288 = load i32, ptr %deg, align 4, !tbaa !12
  %cmp399 = icmp sgt i32 %288, 0
  br i1 %cmp399, label %if.then401, label %if.end468

if.then401:                                       ; preds = %for.body396
  %289 = load ptr, ptr %Uip, align 8, !tbaa !4
  %290 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom402 = sext i32 %290 to i64
  %arrayidx403 = getelementptr inbounds i32, ptr %289, i64 %idxprom402
  %291 = load i32, ptr %arrayidx403, align 4, !tbaa !12
  store i32 %291, ptr %up, align 4, !tbaa !12
  %292 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory404 = getelementptr inbounds %struct.NumericType, ptr %292, i32 0, i32 13
  %293 = load ptr, ptr %Memory404, align 8, !tbaa !34
  %294 = load i32, ptr %up, align 4, !tbaa !12
  %idx.ext405 = sext i32 %294 to i64
  %add.ptr406 = getelementptr inbounds %union.Unit_union, ptr %293, i64 %idx.ext405
  store ptr %add.ptr406, ptr %Usi, align 8, !tbaa !4
  %295 = load i32, ptr %deg, align 4, !tbaa !12
  %conv407 = sext i32 %295 to i64
  %mul408 = mul i64 4, %conv407
  %add409 = add i64 %mul408, 8
  %sub410 = sub i64 %add409, 1
  %div411 = udiv i64 %sub410, 8
  %296 = load i32, ptr %up, align 4, !tbaa !12
  %conv412 = sext i32 %296 to i64
  %add413 = add i64 %conv412, %div411
  %conv414 = trunc i64 %add413 to i32
  store i32 %conv414, ptr %up, align 4, !tbaa !12
  %297 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory415 = getelementptr inbounds %struct.NumericType, ptr %297, i32 0, i32 13
  %298 = load ptr, ptr %Memory415, align 8, !tbaa !34
  %299 = load i32, ptr %up, align 4, !tbaa !12
  %idx.ext416 = sext i32 %299 to i64
  %add.ptr417 = getelementptr inbounds %union.Unit_union, ptr %298, i64 %idx.ext416
  store ptr %add.ptr417, ptr %Uval, align 8, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !12
  br label %for.cond418

for.cond418:                                      ; preds = %for.inc465, %if.then401
  %300 = load i32, ptr %j, align 4, !tbaa !12
  %301 = load i32, ptr %deg, align 4, !tbaa !12
  %cmp419 = icmp slt i32 %300, %301
  br i1 %cmp419, label %for.body421, label %for.end467

for.body421:                                      ; preds = %for.cond418
  %302 = load ptr, ptr %Usi, align 8, !tbaa !4
  %303 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom422 = sext i32 %303 to i64
  %arrayidx423 = getelementptr inbounds i32, ptr %302, i64 %idxprom422
  %304 = load i32, ptr %arrayidx423, align 4, !tbaa !12
  store i32 %304, ptr %col, align 4, !tbaa !12
  %305 = load ptr, ptr %Uval, align 8, !tbaa !4
  %306 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom424 = sext i32 %306 to i64
  %arrayidx425 = getelementptr inbounds %struct.DoubleComplex, ptr %305, i64 %idxprom424
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %value, ptr align 8 %arrayidx425, i64 16, i1 false), !tbaa.struct !35
  %component426 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx427 = getelementptr inbounds [2 x double], ptr %component426, i64 0, i64 0
  %307 = load double, ptr %arrayidx427, align 8, !tbaa !20
  %cmp428 = fcmp une double %307, 0.000000e+00
  br i1 %cmp428, label %if.then435, label %lor.lhs.false430

lor.lhs.false430:                                 ; preds = %for.body421
  %component431 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx432 = getelementptr inbounds [2 x double], ptr %component431, i64 0, i64 1
  %308 = load double, ptr %arrayidx432, align 8, !tbaa !20
  %cmp433 = fcmp une double %308, 0.000000e+00
  br i1 %cmp433, label %if.then435, label %if.end464

if.then435:                                       ; preds = %lor.lhs.false430, %for.body421
  %309 = load ptr, ptr %Wi.addr, align 8, !tbaa !4
  %310 = load i32, ptr %col, align 4, !tbaa !12
  %idxprom436 = sext i32 %310 to i64
  %arrayidx437 = getelementptr inbounds i32, ptr %309, i64 %idxprom436
  %311 = load i32, ptr %arrayidx437, align 4, !tbaa !12
  %dec438 = add nsw i32 %311, -1
  store i32 %dec438, ptr %arrayidx437, align 4, !tbaa !12
  store i32 %dec438, ptr %p, align 4, !tbaa !12
  %312 = load i32, ptr %k, align 4, !tbaa !12
  %313 = load ptr, ptr %Ui.addr, align 8, !tbaa !4
  %314 = load i32, ptr %p, align 4, !tbaa !12
  %idxprom439 = sext i32 %314 to i64
  %arrayidx440 = getelementptr inbounds i32, ptr %313, i64 %idxprom439
  store i32 %312, ptr %arrayidx440, align 4, !tbaa !12
  %315 = load i32, ptr %split, align 4, !tbaa !12
  %tobool441 = icmp ne i32 %315, 0
  br i1 %tobool441, label %if.then442, label %if.else451

if.then442:                                       ; preds = %if.then435
  %component443 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx444 = getelementptr inbounds [2 x double], ptr %component443, i64 0, i64 0
  %316 = load double, ptr %arrayidx444, align 8, !tbaa !20
  %317 = load ptr, ptr %Ux.addr, align 8, !tbaa !4
  %318 = load i32, ptr %p, align 4, !tbaa !12
  %idxprom445 = sext i32 %318 to i64
  %arrayidx446 = getelementptr inbounds double, ptr %317, i64 %idxprom445
  store double %316, ptr %arrayidx446, align 8, !tbaa !20
  %component447 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx448 = getelementptr inbounds [2 x double], ptr %component447, i64 0, i64 1
  %319 = load double, ptr %arrayidx448, align 8, !tbaa !20
  %320 = load ptr, ptr %Uz.addr, align 8, !tbaa !4
  %321 = load i32, ptr %p, align 4, !tbaa !12
  %idxprom449 = sext i32 %321 to i64
  %arrayidx450 = getelementptr inbounds double, ptr %320, i64 %idxprom449
  store double %319, ptr %arrayidx450, align 8, !tbaa !20
  br label %if.end463

if.else451:                                       ; preds = %if.then435
  %component452 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx453 = getelementptr inbounds [2 x double], ptr %component452, i64 0, i64 0
  %322 = load double, ptr %arrayidx453, align 8, !tbaa !20
  %323 = load ptr, ptr %Ux.addr, align 8, !tbaa !4
  %324 = load i32, ptr %p, align 4, !tbaa !12
  %mul454 = mul nsw i32 2, %324
  %idxprom455 = sext i32 %mul454 to i64
  %arrayidx456 = getelementptr inbounds double, ptr %323, i64 %idxprom455
  store double %322, ptr %arrayidx456, align 8, !tbaa !20
  %component457 = getelementptr inbounds %struct.DoubleComplex, ptr %value, i32 0, i32 0
  %arrayidx458 = getelementptr inbounds [2 x double], ptr %component457, i64 0, i64 1
  %325 = load double, ptr %arrayidx458, align 8, !tbaa !20
  %326 = load ptr, ptr %Ux.addr, align 8, !tbaa !4
  %327 = load i32, ptr %p, align 4, !tbaa !12
  %mul459 = mul nsw i32 2, %327
  %add460 = add nsw i32 %mul459, 1
  %idxprom461 = sext i32 %add460 to i64
  %arrayidx462 = getelementptr inbounds double, ptr %326, i64 %idxprom461
  store double %325, ptr %arrayidx462, align 8, !tbaa !20
  br label %if.end463

if.end463:                                        ; preds = %if.else451, %if.then442
  br label %if.end464

if.end464:                                        ; preds = %if.end463, %lor.lhs.false430
  br label %for.inc465

for.inc465:                                       ; preds = %if.end464
  %328 = load i32, ptr %j, align 4, !tbaa !12
  %inc466 = add nsw i32 %328, 1
  store i32 %inc466, ptr %j, align 4, !tbaa !12
  br label %for.cond418, !llvm.loop !69

for.end467:                                       ; preds = %for.cond418
  br label %if.end468

if.end468:                                        ; preds = %for.end467, %for.body396
  br label %for.inc469

for.inc469:                                       ; preds = %if.end468
  %329 = load i32, ptr %k, align 4, !tbaa !12
  %dec470 = add nsw i32 %329, -1
  store i32 %dec470, ptr %k, align 4, !tbaa !12
  br label %for.cond393, !llvm.loop !70

for.end471:                                       ; preds = %for.cond393
  call void @llvm.lifetime.end.p0(i64 4, ptr %split) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %npiv) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %newUchain) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %up) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %unz2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Usi) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ulen) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_col) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Uip) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Uilen) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Upos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %col) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %deg) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Uval) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %D) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %xp) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %value) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!8 = !{!9, !11, i64 232}
!9 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !11, i64 88, !11, i64 92, !5, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !11, i64 192, !11, i64 196, !11, i64 200, !5, i64 208, !11, i64 216, !5, i64 224, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !11, i64 248, !11, i64 252, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !11, i64 296, !11, i64 300, !11, i64 304}
!10 = !{!"double", !6, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!9, !11, i64 236}
!14 = !{!9, !5, i64 120}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!9, !5, i64 128}
!18 = distinct !{!18, !16}
!19 = !{!9, !5, i64 208}
!20 = !{!10, !10, i64 0}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = !{!9, !11, i64 216}
!24 = !{!9, !5, i64 224}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = !{!9, !11, i64 196}
!28 = !{!9, !11, i64 240}
!29 = !{!9, !5, i64 144}
!30 = !{!9, !5, i64 160}
!31 = !{!9, !5, i64 152}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
!34 = !{!9, !5, i64 96}
!35 = !{i64 0, i64 16, !36}
!36 = !{!6, !6, i64 0}
!37 = distinct !{!37, !16}
!38 = distinct !{!38, !16}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !16}
!43 = distinct !{!43, !16}
!44 = distinct !{!44, !16}
!45 = distinct !{!45, !16}
!46 = distinct !{!46, !16}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16}
!49 = !{!9, !5, i64 136}
!50 = !{!9, !5, i64 176}
!51 = !{!9, !5, i64 168}
!52 = distinct !{!52, !16}
!53 = distinct !{!53, !16}
!54 = !{!9, !11, i64 192}
!55 = !{!9, !5, i64 184}
!56 = distinct !{!56, !16}
!57 = distinct !{!57, !16}
!58 = distinct !{!58, !16}
!59 = distinct !{!59, !16}
!60 = distinct !{!60, !16}
!61 = distinct !{!61, !16}
!62 = distinct !{!62, !16}
!63 = distinct !{!63, !16}
!64 = distinct !{!64, !16}
!65 = distinct !{!65, !16}
!66 = distinct !{!66, !16}
!67 = distinct !{!67, !16}
!68 = distinct !{!68, !16}
!69 = distinct !{!69, !16}
!70 = distinct !{!70, !16}
