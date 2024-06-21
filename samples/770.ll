; ModuleID = 'samples/770.bc'
source_filename = "../Source/umf_grow_front.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WorkType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [64 x i32], [64 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.NumericType = type { double, double, double, double, double, double, double, double, double, double, double, i32, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.Unit_union = type { double }
%struct.DoubleComplex = type { [2 x double] }

; Function Attrs: uwtable
define i32 @umfzi_grow_front(ptr noundef %Numeric, i32 noundef %fnr2, i32 noundef %fnc2, ptr noundef %Work, i32 noundef %do_what) #0 {
entry:
  %retval = alloca i32, align 4
  %Numeric.addr = alloca ptr, align 8
  %fnr2.addr = alloca i32, align 4
  %fnc2.addr = alloca i32, align 4
  %Work.addr = alloca ptr, align 8
  %do_what.addr = alloca i32, align 4
  %s = alloca double, align 8
  %Fcold = alloca ptr, align 8
  %Fcnew = alloca ptr, align 8
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %col = alloca i32, align 4
  %Fcpos = alloca ptr, align 8
  %Fcols = alloca ptr, align 8
  %fnrows_max = alloca i32, align 4
  %fncols_max = alloca i32, align 4
  %fnr_curr = alloca i32, align 4
  %nb = alloca i32, align 4
  %fnrows_new = alloca i32, align 4
  %fncols_new = alloca i32, align 4
  %fnr_min = alloca i32, align 4
  %fnc_min = alloca i32, align 4
  %minsize = alloca i32, align 4
  %newsize = alloca i32, align 4
  %fnrows = alloca i32, align 4
  %fncols = alloca i32, align 4
  %E = alloca ptr, align 8
  %eloc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca double, align 8
  store ptr %Numeric, ptr %Numeric.addr, align 8, !tbaa !4
  store i32 %fnr2, ptr %fnr2.addr, align 4, !tbaa !8
  store i32 %fnc2, ptr %fnc2.addr, align 4, !tbaa !8
  store ptr %Work, ptr %Work.addr, align 8, !tbaa !4
  store i32 %do_what, ptr %do_what.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fcold) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fcnew) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %col) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fcpos) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fcols) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %fnrows_max) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %fncols_max) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %fnr_curr) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %fnrows_new) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %fncols_new) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %fnr_min) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %fnc_min) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %minsize) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %newsize) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %fnrows) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %fncols) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %E) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %eloc) #5
  %0 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fcols1 = getelementptr inbounds %struct.WorkType, ptr %0, i32 0, i32 62
  %1 = load ptr, ptr %Fcols1, align 8, !tbaa !10
  store ptr %1, ptr %Fcols, align 8, !tbaa !4
  %2 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fcpos2 = getelementptr inbounds %struct.WorkType, ptr %2, i32 0, i32 64
  %3 = load ptr, ptr %Fcpos2, align 8, !tbaa !12
  store ptr %3, ptr %Fcpos, align 8, !tbaa !4
  %4 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %E3 = getelementptr inbounds %struct.WorkType, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %E3, align 8, !tbaa !13
  store ptr %5, ptr %E, align 8, !tbaa !4
  %6 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %nb4 = getelementptr inbounds %struct.WorkType, ptr %6, i32 0, i32 72
  %7 = load i32, ptr %nb4, align 4, !tbaa !14
  store i32 %7, ptr %nb, align 4, !tbaa !8
  %8 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows_max5 = getelementptr inbounds %struct.WorkType, ptr %8, i32 0, i32 70
  %9 = load i32, ptr %fnrows_max5, align 4, !tbaa !15
  %10 = load i32, ptr %nb, align 4, !tbaa !8
  %add = add nsw i32 %9, %10
  store i32 %add, ptr %fnrows_max, align 4, !tbaa !8
  %11 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols_max6 = getelementptr inbounds %struct.WorkType, ptr %11, i32 0, i32 71
  %12 = load i32, ptr %fncols_max6, align 8, !tbaa !16
  %13 = load i32, ptr %nb, align 4, !tbaa !8
  %add7 = add nsw i32 %12, %13
  store i32 %add7, ptr %fncols_max, align 4, !tbaa !8
  %14 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows_new8 = getelementptr inbounds %struct.WorkType, ptr %14, i32 0, i32 77
  %15 = load i32, ptr %fnrows_new8, align 8, !tbaa !17
  %add9 = add nsw i32 %15, 1
  store i32 %add9, ptr %fnrows_new, align 4, !tbaa !8
  %16 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols_new10 = getelementptr inbounds %struct.WorkType, ptr %16, i32 0, i32 78
  %17 = load i32, ptr %fncols_new10, align 4, !tbaa !18
  %add11 = add nsw i32 %17, 1
  store i32 %add11, ptr %fncols_new, align 4, !tbaa !8
  %18 = load i32, ptr %fnrows_new, align 4, !tbaa !8
  %rem = srem i32 %18, 2
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load i32, ptr %fnrows_new, align 4, !tbaa !8
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %fnrows_new, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load i32, ptr %nb, align 4, !tbaa !8
  %21 = load i32, ptr %fnrows_new, align 4, !tbaa !8
  %add12 = add nsw i32 %21, %20
  store i32 %add12, ptr %fnrows_new, align 4, !tbaa !8
  %22 = load i32, ptr %nb, align 4, !tbaa !8
  %23 = load i32, ptr %fncols_new, align 4, !tbaa !8
  %add13 = add nsw i32 %23, %22
  store i32 %add13, ptr %fncols_new, align 4, !tbaa !8
  %24 = load i32, ptr %fnrows_new, align 4, !tbaa !8
  %25 = load i32, ptr %fnrows_max, align 4, !tbaa !8
  %cmp14 = icmp slt i32 %24, %25
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %26 = load i32, ptr %fnrows_new, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %27 = load i32, ptr %fnrows_max, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %27, %cond.false ]
  store i32 %cond, ptr %fnr_min, align 4, !tbaa !8
  %28 = load i32, ptr %fncols_new, align 4, !tbaa !8
  %29 = load i32, ptr %fncols_max, align 4, !tbaa !8
  %cmp15 = icmp slt i32 %28, %29
  br i1 %cmp15, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %cond.end
  %30 = load i32, ptr %fncols_new, align 4, !tbaa !8
  br label %cond.end18

cond.false17:                                     ; preds = %cond.end
  %31 = load i32, ptr %fncols_max, align 4, !tbaa !8
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %cond.true16
  %cond19 = phi i32 [ %30, %cond.true16 ], [ %31, %cond.false17 ]
  store i32 %cond19, ptr %fnc_min, align 4, !tbaa !8
  %32 = load i32, ptr %fnr_min, align 4, !tbaa !8
  %33 = load i32, ptr %fnc_min, align 4, !tbaa !8
  %mul = mul nsw i32 %32, %33
  store i32 %mul, ptr %minsize, align 4, !tbaa !8
  %34 = load i32, ptr %fnr_min, align 4, !tbaa !8
  %conv = sitofp i32 %34 to double
  %35 = load i32, ptr %fnc_min, align 4, !tbaa !8
  %conv20 = sitofp i32 %35 to double
  %mul21 = fmul double %conv, %conv20
  %mul22 = fmul double %mul21, 1.600000e+01
  %mul23 = fmul double %mul22, 0x3FF0000002AF31DC
  %cmp24 = fcmp ole double %mul23, 0x41DFFFFFFFC00000
  br i1 %cmp24, label %lor.lhs.false, label %if.then36

lor.lhs.false:                                    ; preds = %cond.end18
  %36 = load i32, ptr %fnr_min, align 4, !tbaa !8
  %conv26 = sitofp i32 %36 to double
  %37 = load i32, ptr %fnc_min, align 4, !tbaa !8
  %conv27 = sitofp i32 %37 to double
  %mul28 = fmul double %conv26, %conv27
  %mul29 = fmul double %mul28, 1.600000e+01
  %38 = load i32, ptr %fnr_min, align 4, !tbaa !8
  %conv30 = sitofp i32 %38 to double
  %39 = load i32, ptr %fnc_min, align 4, !tbaa !8
  %conv31 = sitofp i32 %39 to double
  %mul32 = fmul double %conv30, %conv31
  %mul33 = fmul double %mul32, 1.600000e+01
  %cmp34 = fcmp une double %mul29, %mul33
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %lor.lhs.false, %cond.end18
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end37:                                         ; preds = %lor.lhs.false
  %40 = load i32, ptr %nb, align 4, !tbaa !8
  %41 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %add38 = add nsw i32 %41, %40
  store i32 %add38, ptr %fnr2.addr, align 4, !tbaa !8
  %42 = load i32, ptr %nb, align 4, !tbaa !8
  %43 = load i32, ptr %fnc2.addr, align 4, !tbaa !8
  %add39 = add nsw i32 %43, %42
  store i32 %add39, ptr %fnc2.addr, align 4, !tbaa !8
  %44 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %rem40 = srem i32 %44, 2
  %cmp41 = icmp eq i32 %rem40, 0
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end37
  %45 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %inc44 = add nsw i32 %45, 1
  store i32 %inc44, ptr %fnr2.addr, align 4, !tbaa !8
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end37
  %46 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %47 = load i32, ptr %fnr_min, align 4, !tbaa !8
  %cmp46 = icmp sgt i32 %46, %47
  br i1 %cmp46, label %cond.true48, label %cond.false49

cond.true48:                                      ; preds = %if.end45
  %48 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  br label %cond.end50

cond.false49:                                     ; preds = %if.end45
  %49 = load i32, ptr %fnr_min, align 4, !tbaa !8
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false49, %cond.true48
  %cond51 = phi i32 [ %48, %cond.true48 ], [ %49, %cond.false49 ]
  store i32 %cond51, ptr %fnr2.addr, align 4, !tbaa !8
  %50 = load i32, ptr %fnc2.addr, align 4, !tbaa !8
  %51 = load i32, ptr %fnc_min, align 4, !tbaa !8
  %cmp52 = icmp sgt i32 %50, %51
  br i1 %cmp52, label %cond.true54, label %cond.false55

cond.true54:                                      ; preds = %cond.end50
  %52 = load i32, ptr %fnc2.addr, align 4, !tbaa !8
  br label %cond.end56

cond.false55:                                     ; preds = %cond.end50
  %53 = load i32, ptr %fnc_min, align 4, !tbaa !8
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false55, %cond.true54
  %cond57 = phi i32 [ %52, %cond.true54 ], [ %53, %cond.false55 ]
  store i32 %cond57, ptr %fnc2.addr, align 4, !tbaa !8
  %54 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %55 = load i32, ptr %fnrows_max, align 4, !tbaa !8
  %cmp58 = icmp slt i32 %54, %55
  br i1 %cmp58, label %cond.true60, label %cond.false61

cond.true60:                                      ; preds = %cond.end56
  %56 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  br label %cond.end62

cond.false61:                                     ; preds = %cond.end56
  %57 = load i32, ptr %fnrows_max, align 4, !tbaa !8
  br label %cond.end62

cond.end62:                                       ; preds = %cond.false61, %cond.true60
  %cond63 = phi i32 [ %56, %cond.true60 ], [ %57, %cond.false61 ]
  store i32 %cond63, ptr %fnr2.addr, align 4, !tbaa !8
  %58 = load i32, ptr %fnc2.addr, align 4, !tbaa !8
  %59 = load i32, ptr %fncols_max, align 4, !tbaa !8
  %cmp64 = icmp slt i32 %58, %59
  br i1 %cmp64, label %cond.true66, label %cond.false67

cond.true66:                                      ; preds = %cond.end62
  %60 = load i32, ptr %fnc2.addr, align 4, !tbaa !8
  br label %cond.end68

cond.false67:                                     ; preds = %cond.end62
  %61 = load i32, ptr %fncols_max, align 4, !tbaa !8
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false67, %cond.true66
  %cond69 = phi i32 [ %60, %cond.true66 ], [ %61, %cond.false67 ]
  store i32 %cond69, ptr %fnc2.addr, align 4, !tbaa !8
  %62 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %conv70 = sitofp i32 %62 to double
  %63 = load i32, ptr %fnc2.addr, align 4, !tbaa !8
  %conv71 = sitofp i32 %63 to double
  %mul72 = fmul double %conv70, %conv71
  store double %mul72, ptr %s, align 8, !tbaa !19
  %64 = load double, ptr %s, align 8, !tbaa !19
  %mul73 = fmul double %64, 1.600000e+01
  %mul74 = fmul double %mul73, 0x3FF0000002AF31DC
  %cmp75 = fcmp ole double %mul74, 0x41DFFFFFFFC00000
  br i1 %cmp75, label %lor.lhs.false77, label %if.then82

lor.lhs.false77:                                  ; preds = %cond.end68
  %65 = load double, ptr %s, align 8, !tbaa !19
  %mul78 = fmul double %65, 1.600000e+01
  %66 = load double, ptr %s, align 8, !tbaa !19
  %mul79 = fmul double %66, 1.600000e+01
  %cmp80 = fcmp une double %mul78, %mul79
  br i1 %cmp80, label %if.then82, label %if.end118

if.then82:                                        ; preds = %lor.lhs.false77, %cond.end68
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #5
  %67 = load double, ptr %s, align 8, !tbaa !19
  %div = fdiv double 0x419FFFFFFC000000, %67
  %call = call double @sqrt(double noundef %div) #5
  %mul83 = fmul double 9.000000e-01, %call
  store double %mul83, ptr %a, align 8, !tbaa !19
  %68 = load i32, ptr %fnr_min, align 4, !tbaa !8
  %conv84 = sitofp i32 %68 to double
  %69 = load double, ptr %a, align 8, !tbaa !19
  %70 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %conv85 = sitofp i32 %70 to double
  %mul86 = fmul double %69, %conv85
  %cmp87 = fcmp ogt double %conv84, %mul86
  br i1 %cmp87, label %cond.true89, label %cond.false91

cond.true89:                                      ; preds = %if.then82
  %71 = load i32, ptr %fnr_min, align 4, !tbaa !8
  %conv90 = sitofp i32 %71 to double
  br label %cond.end94

cond.false91:                                     ; preds = %if.then82
  %72 = load double, ptr %a, align 8, !tbaa !19
  %73 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %conv92 = sitofp i32 %73 to double
  %mul93 = fmul double %72, %conv92
  br label %cond.end94

cond.end94:                                       ; preds = %cond.false91, %cond.true89
  %cond95 = phi double [ %conv90, %cond.true89 ], [ %mul93, %cond.false91 ]
  %conv96 = fptosi double %cond95 to i32
  store i32 %conv96, ptr %fnr2.addr, align 4, !tbaa !8
  %74 = load i32, ptr %fnc_min, align 4, !tbaa !8
  %conv97 = sitofp i32 %74 to double
  %75 = load double, ptr %a, align 8, !tbaa !19
  %76 = load i32, ptr %fnc2.addr, align 4, !tbaa !8
  %conv98 = sitofp i32 %76 to double
  %mul99 = fmul double %75, %conv98
  %cmp100 = fcmp ogt double %conv97, %mul99
  br i1 %cmp100, label %cond.true102, label %cond.false104

cond.true102:                                     ; preds = %cond.end94
  %77 = load i32, ptr %fnc_min, align 4, !tbaa !8
  %conv103 = sitofp i32 %77 to double
  br label %cond.end107

cond.false104:                                    ; preds = %cond.end94
  %78 = load double, ptr %a, align 8, !tbaa !19
  %79 = load i32, ptr %fnc2.addr, align 4, !tbaa !8
  %conv105 = sitofp i32 %79 to double
  %mul106 = fmul double %78, %conv105
  br label %cond.end107

cond.end107:                                      ; preds = %cond.false104, %cond.true102
  %cond108 = phi double [ %conv103, %cond.true102 ], [ %mul106, %cond.false104 ]
  %conv109 = fptosi double %cond108 to i32
  store i32 %conv109, ptr %fnc2.addr, align 4, !tbaa !8
  %80 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %81 = load i32, ptr %fnc2.addr, align 4, !tbaa !8
  %mul110 = mul nsw i32 %80, %81
  store i32 %mul110, ptr %newsize, align 4, !tbaa !8
  %82 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %rem111 = srem i32 %82, 2
  %cmp112 = icmp eq i32 %rem111, 0
  br i1 %cmp112, label %if.then114, label %if.end116

if.then114:                                       ; preds = %cond.end107
  %83 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %inc115 = add nsw i32 %83, 1
  store i32 %inc115, ptr %fnr2.addr, align 4, !tbaa !8
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %cond.end107
  %84 = load i32, ptr %newsize, align 4, !tbaa !8
  %85 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %div117 = sdiv i32 %84, %85
  store i32 %div117, ptr %fnc2.addr, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #5
  br label %if.end118

if.end118:                                        ; preds = %if.end116, %lor.lhs.false77
  %86 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %87 = load i32, ptr %fnr_min, align 4, !tbaa !8
  %cmp119 = icmp sgt i32 %86, %87
  br i1 %cmp119, label %cond.true121, label %cond.false122

cond.true121:                                     ; preds = %if.end118
  %88 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  br label %cond.end123

cond.false122:                                    ; preds = %if.end118
  %89 = load i32, ptr %fnr_min, align 4, !tbaa !8
  br label %cond.end123

cond.end123:                                      ; preds = %cond.false122, %cond.true121
  %cond124 = phi i32 [ %88, %cond.true121 ], [ %89, %cond.false122 ]
  store i32 %cond124, ptr %fnr2.addr, align 4, !tbaa !8
  %90 = load i32, ptr %fnc2.addr, align 4, !tbaa !8
  %91 = load i32, ptr %fnc_min, align 4, !tbaa !8
  %cmp125 = icmp sgt i32 %90, %91
  br i1 %cmp125, label %cond.true127, label %cond.false128

cond.true127:                                     ; preds = %cond.end123
  %92 = load i32, ptr %fnc2.addr, align 4, !tbaa !8
  br label %cond.end129

cond.false128:                                    ; preds = %cond.end123
  %93 = load i32, ptr %fnc_min, align 4, !tbaa !8
  br label %cond.end129

cond.end129:                                      ; preds = %cond.false128, %cond.true127
  %cond130 = phi i32 [ %92, %cond.true127 ], [ %93, %cond.false128 ]
  store i32 %cond130, ptr %fnc2.addr, align 4, !tbaa !8
  %94 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %95 = load i32, ptr %fnc2.addr, align 4, !tbaa !8
  %mul131 = mul nsw i32 %94, %95
  store i32 %mul131, ptr %newsize, align 4, !tbaa !8
  %96 = load ptr, ptr %E, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i32, ptr %96, i64 0
  %97 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %tobool = icmp ne i32 %97, 0
  br i1 %tobool, label %land.lhs.true, label %if.end137

land.lhs.true:                                    ; preds = %cond.end129
  %98 = load i32, ptr %do_what.addr, align 4, !tbaa !8
  %cmp132 = icmp ne i32 %98, 1
  br i1 %cmp132, label %if.then134, label %if.end137

if.then134:                                       ; preds = %land.lhs.true
  %99 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %100 = load ptr, ptr %E, align 8, !tbaa !4
  %arrayidx135 = getelementptr inbounds i32, ptr %100, i64 0
  %101 = load i32, ptr %arrayidx135, align 4, !tbaa !8
  call void @umfzi_mem_free_tail_block(ptr noundef %99, i32 noundef %101)
  %102 = load ptr, ptr %E, align 8, !tbaa !4
  %arrayidx136 = getelementptr inbounds i32, ptr %102, i64 0
  store i32 0, ptr %arrayidx136, align 4, !tbaa !8
  %103 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Flublock = getelementptr inbounds %struct.WorkType, ptr %103, i32 0, i32 57
  store ptr null, ptr %Flublock, align 8, !tbaa !21
  %104 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Flblock = getelementptr inbounds %struct.WorkType, ptr %104, i32 0, i32 58
  store ptr null, ptr %Flblock, align 8, !tbaa !22
  %105 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fublock = getelementptr inbounds %struct.WorkType, ptr %105, i32 0, i32 59
  store ptr null, ptr %Fublock, align 8, !tbaa !23
  %106 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fcblock = getelementptr inbounds %struct.WorkType, ptr %106, i32 0, i32 60
  store ptr null, ptr %Fcblock, align 8, !tbaa !24
  br label %if.end137

if.end137:                                        ; preds = %if.then134, %land.lhs.true, %cond.end129
  %107 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %108 = load i32, ptr %newsize, align 4, !tbaa !8
  %conv138 = sext i32 %108 to i64
  %mul139 = mul i64 16, %conv138
  %add140 = add i64 %mul139, 8
  %sub = sub i64 %add140, 1
  %div141 = udiv i64 %sub, 8
  %conv142 = trunc i64 %div141 to i32
  %call143 = call i32 @umfzi_mem_alloc_tail_block(ptr noundef %107, i32 noundef %conv142)
  store i32 %call143, ptr %eloc, align 4, !tbaa !8
  %109 = load i32, ptr %eloc, align 4, !tbaa !8
  %tobool144 = icmp ne i32 %109, 0
  br i1 %tobool144, label %if.end166, label %if.then145

if.then145:                                       ; preds = %if.end137
  %110 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %111 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %112 = load i32, ptr %newsize, align 4, !tbaa !8
  %conv146 = sext i32 %112 to i64
  %mul147 = mul i64 16, %conv146
  %add148 = add i64 %mul147, 8
  %sub149 = sub i64 %add148, 1
  %div150 = udiv i64 %sub149, 8
  %add151 = add i64 1, %div150
  %conv152 = trunc i64 %add151 to i32
  %113 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows153 = getelementptr inbounds %struct.WorkType, ptr %113, i32 0, i32 65
  %114 = load i32, ptr %fnrows153, align 8, !tbaa !25
  %115 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols154 = getelementptr inbounds %struct.WorkType, ptr %115, i32 0, i32 66
  %116 = load i32, ptr %fncols154, align 4, !tbaa !26
  %call155 = call i32 @umfzi_get_memory(ptr noundef %110, ptr noundef %111, i32 noundef %conv152, i32 noundef %114, i32 noundef %116, i32 noundef 0)
  %tobool156 = icmp ne i32 %call155, 0
  br i1 %tobool156, label %if.end158, label %if.then157

if.then157:                                       ; preds = %if.then145
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end158:                                        ; preds = %if.then145
  %117 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %118 = load i32, ptr %newsize, align 4, !tbaa !8
  %conv159 = sext i32 %118 to i64
  %mul160 = mul i64 16, %conv159
  %add161 = add i64 %mul160, 8
  %sub162 = sub i64 %add161, 1
  %div163 = udiv i64 %sub162, 8
  %conv164 = trunc i64 %div163 to i32
  %call165 = call i32 @umfzi_mem_alloc_tail_block(ptr noundef %117, i32 noundef %conv164)
  store i32 %call165, ptr %eloc, align 4, !tbaa !8
  br label %if.end166

if.end166:                                        ; preds = %if.end158, %if.end137
  br label %while.cond

while.cond:                                       ; preds = %if.end220, %if.end166
  %119 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %120 = load i32, ptr %fnr_min, align 4, !tbaa !8
  %cmp167 = icmp ne i32 %119, %120
  br i1 %cmp167, label %land.rhs, label %lor.lhs.false169

lor.lhs.false169:                                 ; preds = %while.cond
  %121 = load i32, ptr %fnc2.addr, align 4, !tbaa !8
  %122 = load i32, ptr %fnc_min, align 4, !tbaa !8
  %cmp170 = icmp ne i32 %121, %122
  br i1 %cmp170, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false169, %while.cond
  %123 = load i32, ptr %eloc, align 4, !tbaa !8
  %tobool172 = icmp ne i32 %123, 0
  %lnot = xor i1 %tobool172, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false169
  %124 = phi i1 [ false, %lor.lhs.false169 ], [ %lnot, %land.rhs ]
  br i1 %124, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %125 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %sub173 = sub nsw i32 %125, 2
  %conv174 = sitofp i32 %sub173 to double
  %126 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %conv175 = sitofp i32 %126 to double
  %mul176 = fmul double %conv175, 0x3FEE666666666666
  %cmp177 = fcmp olt double %conv174, %mul176
  br i1 %cmp177, label %cond.true179, label %cond.false182

cond.true179:                                     ; preds = %while.body
  %127 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %sub180 = sub nsw i32 %127, 2
  %conv181 = sitofp i32 %sub180 to double
  br label %cond.end185

cond.false182:                                    ; preds = %while.body
  %128 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %conv183 = sitofp i32 %128 to double
  %mul184 = fmul double %conv183, 0x3FEE666666666666
  br label %cond.end185

cond.end185:                                      ; preds = %cond.false182, %cond.true179
  %cond186 = phi double [ %conv181, %cond.true179 ], [ %mul184, %cond.false182 ]
  %conv187 = fptosi double %cond186 to i32
  store i32 %conv187, ptr %fnr2.addr, align 4, !tbaa !8
  %129 = load i32, ptr %fnc2.addr, align 4, !tbaa !8
  %sub188 = sub nsw i32 %129, 2
  %conv189 = sitofp i32 %sub188 to double
  %130 = load i32, ptr %fnc2.addr, align 4, !tbaa !8
  %conv190 = sitofp i32 %130 to double
  %mul191 = fmul double %conv190, 0x3FEE666666666666
  %cmp192 = fcmp olt double %conv189, %mul191
  br i1 %cmp192, label %cond.true194, label %cond.false197

cond.true194:                                     ; preds = %cond.end185
  %131 = load i32, ptr %fnc2.addr, align 4, !tbaa !8
  %sub195 = sub nsw i32 %131, 2
  %conv196 = sitofp i32 %sub195 to double
  br label %cond.end200

cond.false197:                                    ; preds = %cond.end185
  %132 = load i32, ptr %fnc2.addr, align 4, !tbaa !8
  %conv198 = sitofp i32 %132 to double
  %mul199 = fmul double %conv198, 0x3FEE666666666666
  br label %cond.end200

cond.end200:                                      ; preds = %cond.false197, %cond.true194
  %cond201 = phi double [ %conv196, %cond.true194 ], [ %mul199, %cond.false197 ]
  %conv202 = fptosi double %cond201 to i32
  store i32 %conv202, ptr %fnc2.addr, align 4, !tbaa !8
  %133 = load i32, ptr %fnr_min, align 4, !tbaa !8
  %134 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %cmp203 = icmp sgt i32 %133, %134
  br i1 %cmp203, label %cond.true205, label %cond.false206

cond.true205:                                     ; preds = %cond.end200
  %135 = load i32, ptr %fnr_min, align 4, !tbaa !8
  br label %cond.end207

cond.false206:                                    ; preds = %cond.end200
  %136 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  br label %cond.end207

cond.end207:                                      ; preds = %cond.false206, %cond.true205
  %cond208 = phi i32 [ %135, %cond.true205 ], [ %136, %cond.false206 ]
  store i32 %cond208, ptr %fnr2.addr, align 4, !tbaa !8
  %137 = load i32, ptr %fnc_min, align 4, !tbaa !8
  %138 = load i32, ptr %fnc2.addr, align 4, !tbaa !8
  %cmp209 = icmp sgt i32 %137, %138
  br i1 %cmp209, label %cond.true211, label %cond.false212

cond.true211:                                     ; preds = %cond.end207
  %139 = load i32, ptr %fnc_min, align 4, !tbaa !8
  br label %cond.end213

cond.false212:                                    ; preds = %cond.end207
  %140 = load i32, ptr %fnc2.addr, align 4, !tbaa !8
  br label %cond.end213

cond.end213:                                      ; preds = %cond.false212, %cond.true211
  %cond214 = phi i32 [ %139, %cond.true211 ], [ %140, %cond.false212 ]
  store i32 %cond214, ptr %fnc2.addr, align 4, !tbaa !8
  %141 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %rem215 = srem i32 %141, 2
  %cmp216 = icmp eq i32 %rem215, 0
  br i1 %cmp216, label %if.then218, label %if.end220

if.then218:                                       ; preds = %cond.end213
  %142 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %inc219 = add nsw i32 %142, 1
  store i32 %inc219, ptr %fnr2.addr, align 4, !tbaa !8
  br label %if.end220

if.end220:                                        ; preds = %if.then218, %cond.end213
  %143 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %144 = load i32, ptr %fnc2.addr, align 4, !tbaa !8
  %mul221 = mul nsw i32 %143, %144
  store i32 %mul221, ptr %newsize, align 4, !tbaa !8
  %145 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %146 = load i32, ptr %newsize, align 4, !tbaa !8
  %conv222 = sext i32 %146 to i64
  %mul223 = mul i64 16, %conv222
  %add224 = add i64 %mul223, 8
  %sub225 = sub i64 %add224, 1
  %div226 = udiv i64 %sub225, 8
  %conv227 = trunc i64 %div226 to i32
  %call228 = call i32 @umfzi_mem_alloc_tail_block(ptr noundef %145, i32 noundef %conv227)
  store i32 %call228, ptr %eloc, align 4, !tbaa !8
  br label %while.cond, !llvm.loop !27

while.end:                                        ; preds = %land.end
  %147 = load i32, ptr %eloc, align 4, !tbaa !8
  %tobool229 = icmp ne i32 %147, 0
  br i1 %tobool229, label %if.end238, label %if.then230

if.then230:                                       ; preds = %while.end
  %148 = load i32, ptr %fnr_min, align 4, !tbaa !8
  store i32 %148, ptr %fnr2.addr, align 4, !tbaa !8
  %149 = load i32, ptr %fnc_min, align 4, !tbaa !8
  store i32 %149, ptr %fnc2.addr, align 4, !tbaa !8
  %150 = load i32, ptr %minsize, align 4, !tbaa !8
  store i32 %150, ptr %newsize, align 4, !tbaa !8
  %151 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %152 = load i32, ptr %newsize, align 4, !tbaa !8
  %conv231 = sext i32 %152 to i64
  %mul232 = mul i64 16, %conv231
  %add233 = add i64 %mul232, 8
  %sub234 = sub i64 %add233, 1
  %div235 = udiv i64 %sub234, 8
  %conv236 = trunc i64 %div235 to i32
  %call237 = call i32 @umfzi_mem_alloc_tail_block(ptr noundef %151, i32 noundef %conv236)
  store i32 %call237, ptr %eloc, align 4, !tbaa !8
  br label %if.end238

if.end238:                                        ; preds = %if.then230, %while.end
  %153 = load i32, ptr %eloc, align 4, !tbaa !8
  %tobool239 = icmp ne i32 %153, 0
  br i1 %tobool239, label %if.end241, label %if.then240

if.then240:                                       ; preds = %if.end238
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end241:                                        ; preds = %if.end238
  %154 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnr_curr242 = getelementptr inbounds %struct.WorkType, ptr %154, i32 0, i32 67
  %155 = load i32, ptr %fnr_curr242, align 8, !tbaa !29
  store i32 %155, ptr %fnr_curr, align 4, !tbaa !8
  %156 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows243 = getelementptr inbounds %struct.WorkType, ptr %156, i32 0, i32 65
  %157 = load i32, ptr %fnrows243, align 8, !tbaa !25
  store i32 %157, ptr %fnrows, align 4, !tbaa !8
  %158 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols244 = getelementptr inbounds %struct.WorkType, ptr %158, i32 0, i32 66
  %159 = load i32, ptr %fncols244, align 4, !tbaa !26
  store i32 %159, ptr %fncols, align 4, !tbaa !8
  %160 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fcblock245 = getelementptr inbounds %struct.WorkType, ptr %160, i32 0, i32 60
  %161 = load ptr, ptr %Fcblock245, align 8, !tbaa !24
  store ptr %161, ptr %Fcold, align 8, !tbaa !4
  %162 = load i32, ptr %nb, align 4, !tbaa !8
  %163 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %sub246 = sub nsw i32 %163, %162
  store i32 %sub246, ptr %fnr2.addr, align 4, !tbaa !8
  %164 = load i32, ptr %nb, align 4, !tbaa !8
  %165 = load i32, ptr %fnc2.addr, align 4, !tbaa !8
  %sub247 = sub nsw i32 %165, %164
  store i32 %sub247, ptr %fnc2.addr, align 4, !tbaa !8
  %166 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory = getelementptr inbounds %struct.NumericType, ptr %166, i32 0, i32 13
  %167 = load ptr, ptr %Memory, align 8, !tbaa !30
  %168 = load i32, ptr %eloc, align 4, !tbaa !8
  %idx.ext = sext i32 %168 to i64
  %add.ptr = getelementptr inbounds %union.Unit_union, ptr %167, i64 %idx.ext
  %169 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Flublock248 = getelementptr inbounds %struct.WorkType, ptr %169, i32 0, i32 57
  store ptr %add.ptr, ptr %Flublock248, align 8, !tbaa !21
  %170 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Flublock249 = getelementptr inbounds %struct.WorkType, ptr %170, i32 0, i32 57
  %171 = load ptr, ptr %Flublock249, align 8, !tbaa !21
  %172 = load i32, ptr %nb, align 4, !tbaa !8
  %173 = load i32, ptr %nb, align 4, !tbaa !8
  %mul250 = mul nsw i32 %172, %173
  %idx.ext251 = sext i32 %mul250 to i64
  %add.ptr252 = getelementptr inbounds %struct.DoubleComplex, ptr %171, i64 %idx.ext251
  %174 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Flblock253 = getelementptr inbounds %struct.WorkType, ptr %174, i32 0, i32 58
  store ptr %add.ptr252, ptr %Flblock253, align 8, !tbaa !22
  %175 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Flblock254 = getelementptr inbounds %struct.WorkType, ptr %175, i32 0, i32 58
  %176 = load ptr, ptr %Flblock254, align 8, !tbaa !22
  %177 = load i32, ptr %nb, align 4, !tbaa !8
  %178 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %mul255 = mul nsw i32 %177, %178
  %idx.ext256 = sext i32 %mul255 to i64
  %add.ptr257 = getelementptr inbounds %struct.DoubleComplex, ptr %176, i64 %idx.ext256
  %179 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fublock258 = getelementptr inbounds %struct.WorkType, ptr %179, i32 0, i32 59
  store ptr %add.ptr257, ptr %Fublock258, align 8, !tbaa !23
  %180 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fublock259 = getelementptr inbounds %struct.WorkType, ptr %180, i32 0, i32 59
  %181 = load ptr, ptr %Fublock259, align 8, !tbaa !23
  %182 = load i32, ptr %nb, align 4, !tbaa !8
  %183 = load i32, ptr %fnc2.addr, align 4, !tbaa !8
  %mul260 = mul nsw i32 %182, %183
  %idx.ext261 = sext i32 %mul260 to i64
  %add.ptr262 = getelementptr inbounds %struct.DoubleComplex, ptr %181, i64 %idx.ext261
  %184 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fcblock263 = getelementptr inbounds %struct.WorkType, ptr %184, i32 0, i32 60
  store ptr %add.ptr262, ptr %Fcblock263, align 8, !tbaa !24
  %185 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fcblock264 = getelementptr inbounds %struct.WorkType, ptr %185, i32 0, i32 60
  %186 = load ptr, ptr %Fcblock264, align 8, !tbaa !24
  store ptr %186, ptr %Fcnew, align 8, !tbaa !4
  %187 = load ptr, ptr %E, align 8, !tbaa !4
  %arrayidx265 = getelementptr inbounds i32, ptr %187, i64 0
  %188 = load i32, ptr %arrayidx265, align 4, !tbaa !8
  %tobool266 = icmp ne i32 %188, 0
  br i1 %tobool266, label %if.then267, label %if.else

if.then267:                                       ; preds = %if.end241
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc287, %if.then267
  %189 = load i32, ptr %j, align 4, !tbaa !8
  %190 = load i32, ptr %fncols, align 4, !tbaa !8
  %cmp268 = icmp slt i32 %189, %190
  br i1 %cmp268, label %for.body, label %for.end289

for.body:                                         ; preds = %for.cond
  %191 = load ptr, ptr %Fcols, align 8, !tbaa !4
  %192 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom = sext i32 %192 to i64
  %arrayidx270 = getelementptr inbounds i32, ptr %191, i64 %idxprom
  %193 = load i32, ptr %arrayidx270, align 4, !tbaa !8
  store i32 %193, ptr %col, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond271

for.cond271:                                      ; preds = %for.inc, %for.body
  %194 = load i32, ptr %i, align 4, !tbaa !8
  %195 = load i32, ptr %fnrows, align 4, !tbaa !8
  %cmp272 = icmp slt i32 %194, %195
  br i1 %cmp272, label %for.body274, label %for.end

for.body274:                                      ; preds = %for.cond271
  %196 = load ptr, ptr %Fcnew, align 8, !tbaa !4
  %197 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom275 = sext i32 %197 to i64
  %arrayidx276 = getelementptr inbounds %struct.DoubleComplex, ptr %196, i64 %idxprom275
  %198 = load ptr, ptr %Fcold, align 8, !tbaa !4
  %199 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom277 = sext i32 %199 to i64
  %arrayidx278 = getelementptr inbounds %struct.DoubleComplex, ptr %198, i64 %idxprom277
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx276, ptr align 8 %arrayidx278, i64 16, i1 false), !tbaa.struct !32
  br label %for.inc

for.inc:                                          ; preds = %for.body274
  %200 = load i32, ptr %i, align 4, !tbaa !8
  %inc279 = add nsw i32 %200, 1
  store i32 %inc279, ptr %i, align 4, !tbaa !8
  br label %for.cond271, !llvm.loop !34

for.end:                                          ; preds = %for.cond271
  %201 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %202 = load ptr, ptr %Fcnew, align 8, !tbaa !4
  %idx.ext280 = sext i32 %201 to i64
  %add.ptr281 = getelementptr inbounds %struct.DoubleComplex, ptr %202, i64 %idx.ext280
  store ptr %add.ptr281, ptr %Fcnew, align 8, !tbaa !4
  %203 = load i32, ptr %fnr_curr, align 4, !tbaa !8
  %204 = load ptr, ptr %Fcold, align 8, !tbaa !4
  %idx.ext282 = sext i32 %203 to i64
  %add.ptr283 = getelementptr inbounds %struct.DoubleComplex, ptr %204, i64 %idx.ext282
  store ptr %add.ptr283, ptr %Fcold, align 8, !tbaa !4
  %205 = load i32, ptr %j, align 4, !tbaa !8
  %206 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %mul284 = mul nsw i32 %205, %206
  %207 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %208 = load i32, ptr %col, align 4, !tbaa !8
  %idxprom285 = sext i32 %208 to i64
  %arrayidx286 = getelementptr inbounds i32, ptr %207, i64 %idxprom285
  store i32 %mul284, ptr %arrayidx286, align 4, !tbaa !8
  br label %for.inc287

for.inc287:                                       ; preds = %for.end
  %209 = load i32, ptr %j, align 4, !tbaa !8
  %inc288 = add nsw i32 %209, 1
  store i32 %inc288, ptr %j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !35

for.end289:                                       ; preds = %for.cond
  br label %if.end306

if.else:                                          ; preds = %if.end241
  %210 = load i32, ptr %do_what.addr, align 4, !tbaa !8
  %cmp290 = icmp eq i32 %210, 2
  br i1 %cmp290, label %if.then292, label %if.end305

if.then292:                                       ; preds = %if.else
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond293

for.cond293:                                      ; preds = %for.inc302, %if.then292
  %211 = load i32, ptr %j, align 4, !tbaa !8
  %212 = load i32, ptr %fncols, align 4, !tbaa !8
  %cmp294 = icmp slt i32 %211, %212
  br i1 %cmp294, label %for.body296, label %for.end304

for.body296:                                      ; preds = %for.cond293
  %213 = load ptr, ptr %Fcols, align 8, !tbaa !4
  %214 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom297 = sext i32 %214 to i64
  %arrayidx298 = getelementptr inbounds i32, ptr %213, i64 %idxprom297
  %215 = load i32, ptr %arrayidx298, align 4, !tbaa !8
  store i32 %215, ptr %col, align 4, !tbaa !8
  %216 = load i32, ptr %j, align 4, !tbaa !8
  %217 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %mul299 = mul nsw i32 %216, %217
  %218 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %219 = load i32, ptr %col, align 4, !tbaa !8
  %idxprom300 = sext i32 %219 to i64
  %arrayidx301 = getelementptr inbounds i32, ptr %218, i64 %idxprom300
  store i32 %mul299, ptr %arrayidx301, align 4, !tbaa !8
  br label %for.inc302

for.inc302:                                       ; preds = %for.body296
  %220 = load i32, ptr %j, align 4, !tbaa !8
  %inc303 = add nsw i32 %220, 1
  store i32 %inc303, ptr %j, align 4, !tbaa !8
  br label %for.cond293, !llvm.loop !36

for.end304:                                       ; preds = %for.cond293
  br label %if.end305

if.end305:                                        ; preds = %for.end304, %if.else
  br label %if.end306

if.end306:                                        ; preds = %if.end305, %for.end289
  %221 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %222 = load ptr, ptr %E, align 8, !tbaa !4
  %arrayidx307 = getelementptr inbounds i32, ptr %222, i64 0
  %223 = load i32, ptr %arrayidx307, align 4, !tbaa !8
  call void @umfzi_mem_free_tail_block(ptr noundef %221, i32 noundef %223)
  %224 = load i32, ptr %eloc, align 4, !tbaa !8
  %225 = load ptr, ptr %E, align 8, !tbaa !4
  %arrayidx308 = getelementptr inbounds i32, ptr %225, i64 0
  store i32 %224, ptr %arrayidx308, align 4, !tbaa !8
  %226 = load i32, ptr %fnr2.addr, align 4, !tbaa !8
  %227 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnr_curr309 = getelementptr inbounds %struct.WorkType, ptr %227, i32 0, i32 67
  store i32 %226, ptr %fnr_curr309, align 8, !tbaa !29
  %228 = load i32, ptr %fnc2.addr, align 4, !tbaa !8
  %229 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnc_curr = getelementptr inbounds %struct.WorkType, ptr %229, i32 0, i32 68
  store i32 %228, ptr %fnc_curr, align 4, !tbaa !37
  %230 = load i32, ptr %newsize, align 4, !tbaa !8
  %231 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fcurr_size = getelementptr inbounds %struct.WorkType, ptr %231, i32 0, i32 69
  store i32 %230, ptr %fcurr_size, align 8, !tbaa !38
  %232 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_grow = getelementptr inbounds %struct.WorkType, ptr %232, i32 0, i32 50
  store i32 0, ptr %do_grow, align 4, !tbaa !39
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end306, %if.then240, %if.then157, %if.then36
  call void @llvm.lifetime.end.p0(i64 4, ptr %eloc) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %E) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %fncols) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %fnrows) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %newsize) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %minsize) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %fnc_min) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %fnr_min) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %fncols_new) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %fnrows_new) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %fnr_curr) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %fncols_max) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %fnrows_max) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fcols) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fcpos) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %col) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fcnew) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fcold) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #5
  %233 = load i32, ptr %retval, align 4
  ret i32 %233
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @umfzi_mem_free_tail_block(ptr noundef, i32 noundef) #3

declare i32 @umfzi_mem_alloc_tail_block(ptr noundef, i32 noundef) #3

declare i32 @umfzi_get_memory(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !5, i64 1352}
!11 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !9, i64 112, !9, i64 116, !5, i64 120, !5, i64 128, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164, !9, i64 168, !9, i64 172, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188, !9, i64 192, !6, i64 196, !9, i64 708, !9, i64 712, !9, i64 716, !9, i64 720, !9, i64 724, !9, i64 728, !9, i64 732, !9, i64 736, !9, i64 740, !9, i64 744, !9, i64 748, !9, i64 752, !9, i64 756, !9, i64 760, !9, i64 764, !9, i64 768, !9, i64 772, !9, i64 776, !9, i64 780, !9, i64 784, !5, i64 792, !6, i64 800, !6, i64 1056, !5, i64 1312, !5, i64 1320, !5, i64 1328, !5, i64 1336, !5, i64 1344, !5, i64 1352, !5, i64 1360, !5, i64 1368, !9, i64 1376, !9, i64 1380, !9, i64 1384, !9, i64 1388, !9, i64 1392, !9, i64 1396, !9, i64 1400, !9, i64 1404, !9, i64 1408, !9, i64 1412, !9, i64 1416, !9, i64 1420, !9, i64 1424, !9, i64 1428, !9, i64 1432, !9, i64 1436}
!12 = !{!11, !5, i64 1368}
!13 = !{!11, !5, i64 0}
!14 = !{!11, !9, i64 1404}
!15 = !{!11, !9, i64 1396}
!16 = !{!11, !9, i64 1400}
!17 = !{!11, !9, i64 1424}
!18 = !{!11, !9, i64 1428}
!19 = !{!20, !20, i64 0}
!20 = !{!"double", !6, i64 0}
!21 = !{!11, !5, i64 1312}
!22 = !{!11, !5, i64 1320}
!23 = !{!11, !5, i64 1328}
!24 = !{!11, !5, i64 1336}
!25 = !{!11, !9, i64 1376}
!26 = !{!11, !9, i64 1380}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!11, !9, i64 1384}
!30 = !{!31, !5, i64 96}
!31 = !{!"", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !9, i64 88, !9, i64 92, !5, i64 96, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !9, i64 192, !9, i64 196, !9, i64 200, !5, i64 208, !9, i64 216, !5, i64 224, !9, i64 232, !9, i64 236, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !9, i64 296, !9, i64 300, !9, i64 304}
!32 = !{i64 0, i64 16, !33}
!33 = !{!6, !6, i64 0}
!34 = distinct !{!34, !28}
!35 = distinct !{!35, !28}
!36 = distinct !{!36, !28}
!37 = !{!11, !9, i64 1388}
!38 = !{!11, !9, i64 1392}
!39 = !{!11, !9, i64 772}
