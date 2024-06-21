; ModuleID = 'samples/827.bc'
source_filename = "../Source/klu_diagnostics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Double_Complex = type { [2 x double] }
%struct.klu_l_common_struct = type { double, double, double, double, double, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, double, double, double, double, double, i64, i64 }
%struct.klu_l_numeric = type { i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.klu_l_symbolic = type { double, double, double, double, ptr, i64, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64 }

; Function Attrs: nounwind uwtable
define i64 @klu_zl_rgrowth(ptr noundef %Ap, ptr noundef %Ai, ptr noundef %Ax, ptr noundef %Symbolic, ptr noundef %Numeric, ptr noundef %Common) #0 {
entry:
  %retval = alloca i64, align 8
  %Ap.addr = alloca ptr, align 8
  %Ai.addr = alloca ptr, align 8
  %Ax.addr = alloca ptr, align 8
  %Symbolic.addr = alloca ptr, align 8
  %Numeric.addr = alloca ptr, align 8
  %Common.addr = alloca ptr, align 8
  %temp = alloca double, align 8
  %max_ai = alloca double, align 8
  %max_ui = alloca double, align 8
  %min_block_rgrowth = alloca double, align 8
  %aik = alloca %struct.Double_Complex, align 8
  %Q = alloca ptr, align 8
  %Ui = alloca ptr, align 8
  %Uip = alloca ptr, align 8
  %Ulen = alloca ptr, align 8
  %Pinv = alloca ptr, align 8
  %LU = alloca ptr, align 8
  %Aentry = alloca ptr, align 8
  %Ux = alloca ptr, align 8
  %Ukk = alloca ptr, align 8
  %Rs = alloca ptr, align 8
  %i = alloca i64, align 8
  %newrow = alloca i64, align 8
  %oldrow = alloca i64, align 8
  %k1 = alloca i64, align 8
  %k2 = alloca i64, align 8
  %nk = alloca i64, align 8
  %j = alloca i64, align 8
  %oldcol = alloca i64, align 8
  %k = alloca i64, align 8
  %pend = alloca i64, align 8
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %r = alloca double, align 8
  %ar = alloca double, align 8
  %ai = alloca double, align 8
  %xp = alloca ptr, align 8
  %r113 = alloca double, align 8
  %ar114 = alloca double, align 8
  %ai115 = alloca double, align 8
  %r174 = alloca double, align 8
  %ar175 = alloca double, align 8
  %ai176 = alloca double, align 8
  store ptr %Ap, ptr %Ap.addr, align 8, !tbaa !4
  store ptr %Ai, ptr %Ai.addr, align 8, !tbaa !4
  store ptr %Ax, ptr %Ax.addr, align 8, !tbaa !4
  store ptr %Symbolic, ptr %Symbolic.addr, align 8, !tbaa !4
  store ptr %Numeric, ptr %Numeric.addr, align 8, !tbaa !4
  store ptr %Common, ptr %Common.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_ai) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_ui) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %min_block_rgrowth) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr %aik) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %Q) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ui) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %Uip) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ulen) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %Pinv) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %LU) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %Aentry) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ux) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ukk) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %Rs) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %newrow) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldrow) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %k1) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %k2) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %nk) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldcol) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %pend) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #7
  %0 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load ptr, ptr %Ap.addr, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then7, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %Ai.addr, align 8, !tbaa !4
  %cmp4 = icmp eq ptr %3, null
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %4 = load ptr, ptr %Ax.addr, align 8, !tbaa !4
  %cmp6 = icmp eq ptr %4, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %if.end
  %5 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %status = getelementptr inbounds %struct.klu_l_common_struct, ptr %5, i32 0, i32 11
  store i64 -3, ptr %status, align 8, !tbaa !8
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false5
  %6 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %cmp9 = icmp eq ptr %6, null
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %7 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %rgrowth = getelementptr inbounds %struct.klu_l_common_struct, ptr %7, i32 0, i32 20
  store double 0.000000e+00, ptr %rgrowth, align 8, !tbaa !12
  %8 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %status11 = getelementptr inbounds %struct.klu_l_common_struct, ptr %8, i32 0, i32 11
  store i64 1, ptr %status11, align 8, !tbaa !8
  store i64 1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %9 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %status13 = getelementptr inbounds %struct.klu_l_common_struct, ptr %9, i32 0, i32 11
  store i64 0, ptr %status13, align 8, !tbaa !8
  %10 = load ptr, ptr %Ax.addr, align 8, !tbaa !4
  store ptr %10, ptr %Aentry, align 8, !tbaa !4
  %11 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Pinv14 = getelementptr inbounds %struct.klu_l_numeric, ptr %11, i32 0, i32 7
  %12 = load ptr, ptr %Pinv14, align 8, !tbaa !13
  store ptr %12, ptr %Pinv, align 8, !tbaa !4
  %13 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Rs15 = getelementptr inbounds %struct.klu_l_numeric, ptr %13, i32 0, i32 15
  %14 = load ptr, ptr %Rs15, align 8, !tbaa !15
  store ptr %14, ptr %Rs, align 8, !tbaa !4
  %15 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %Q16 = getelementptr inbounds %struct.klu_l_symbolic, ptr %15, i32 0, i32 8
  %16 = load ptr, ptr %Q16, align 8, !tbaa !16
  store ptr %16, ptr %Q, align 8, !tbaa !4
  %17 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %rgrowth17 = getelementptr inbounds %struct.klu_l_common_struct, ptr %17, i32 0, i32 20
  store double 1.000000e+00, ptr %rgrowth17, align 8, !tbaa !12
  store i64 0, ptr %i, align 8, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc247, %if.end12
  %18 = load i64, ptr %i, align 8, !tbaa !18
  %19 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %nblocks = getelementptr inbounds %struct.klu_l_symbolic, ptr %19, i32 0, i32 11
  %20 = load i64, ptr %nblocks, align 8, !tbaa !19
  %cmp18 = icmp slt i64 %18, %20
  br i1 %cmp18, label %for.body, label %for.end249

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %R = getelementptr inbounds %struct.klu_l_symbolic, ptr %21, i32 0, i32 9
  %22 = load ptr, ptr %R, align 8, !tbaa !20
  %23 = load i64, ptr %i, align 8, !tbaa !18
  %arrayidx = getelementptr inbounds i64, ptr %22, i64 %23
  %24 = load i64, ptr %arrayidx, align 8, !tbaa !18
  store i64 %24, ptr %k1, align 8, !tbaa !18
  %25 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %R19 = getelementptr inbounds %struct.klu_l_symbolic, ptr %25, i32 0, i32 9
  %26 = load ptr, ptr %R19, align 8, !tbaa !20
  %27 = load i64, ptr %i, align 8, !tbaa !18
  %add = add nsw i64 %27, 1
  %arrayidx20 = getelementptr inbounds i64, ptr %26, i64 %add
  %28 = load i64, ptr %arrayidx20, align 8, !tbaa !18
  store i64 %28, ptr %k2, align 8, !tbaa !18
  %29 = load i64, ptr %k2, align 8, !tbaa !18
  %30 = load i64, ptr %k1, align 8, !tbaa !18
  %sub = sub nsw i64 %29, %30
  store i64 %sub, ptr %nk, align 8, !tbaa !18
  %31 = load i64, ptr %nk, align 8, !tbaa !18
  %cmp21 = icmp eq i64 %31, 1
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.body
  br label %for.inc247

if.end23:                                         ; preds = %for.body
  %32 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %LUbx = getelementptr inbounds %struct.klu_l_numeric, ptr %32, i32 0, i32 12
  %33 = load ptr, ptr %LUbx, align 8, !tbaa !21
  %34 = load i64, ptr %i, align 8, !tbaa !18
  %arrayidx24 = getelementptr inbounds ptr, ptr %33, i64 %34
  %35 = load ptr, ptr %arrayidx24, align 8, !tbaa !4
  store ptr %35, ptr %LU, align 8, !tbaa !4
  %36 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Uip25 = getelementptr inbounds %struct.klu_l_numeric, ptr %36, i32 0, i32 9
  %37 = load ptr, ptr %Uip25, align 8, !tbaa !22
  %38 = load i64, ptr %k1, align 8, !tbaa !18
  %add.ptr = getelementptr inbounds i64, ptr %37, i64 %38
  store ptr %add.ptr, ptr %Uip, align 8, !tbaa !4
  %39 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Ulen26 = getelementptr inbounds %struct.klu_l_numeric, ptr %39, i32 0, i32 11
  %40 = load ptr, ptr %Ulen26, align 8, !tbaa !23
  %41 = load i64, ptr %k1, align 8, !tbaa !18
  %add.ptr27 = getelementptr inbounds i64, ptr %40, i64 %41
  store ptr %add.ptr27, ptr %Ulen, align 8, !tbaa !4
  %42 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Udiag = getelementptr inbounds %struct.klu_l_numeric, ptr %42, i32 0, i32 14
  %43 = load ptr, ptr %Udiag, align 8, !tbaa !24
  %44 = load i64, ptr %k1, align 8, !tbaa !18
  %add.ptr28 = getelementptr inbounds %struct.Double_Complex, ptr %43, i64 %44
  store ptr %add.ptr28, ptr %Ukk, align 8, !tbaa !4
  store double 1.000000e+00, ptr %min_block_rgrowth, align 8, !tbaa !25
  store i64 0, ptr %j, align 8, !tbaa !18
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc239, %if.end23
  %45 = load i64, ptr %j, align 8, !tbaa !18
  %46 = load i64, ptr %nk, align 8, !tbaa !18
  %cmp30 = icmp slt i64 %45, %46
  br i1 %cmp30, label %for.body31, label %for.end241

for.body31:                                       ; preds = %for.cond29
  store double 0.000000e+00, ptr %max_ai, align 8, !tbaa !25
  store double 0.000000e+00, ptr %max_ui, align 8, !tbaa !25
  %47 = load ptr, ptr %Q, align 8, !tbaa !4
  %48 = load i64, ptr %j, align 8, !tbaa !18
  %49 = load i64, ptr %k1, align 8, !tbaa !18
  %add32 = add nsw i64 %48, %49
  %arrayidx33 = getelementptr inbounds i64, ptr %47, i64 %add32
  %50 = load i64, ptr %arrayidx33, align 8, !tbaa !18
  store i64 %50, ptr %oldcol, align 8, !tbaa !18
  %51 = load ptr, ptr %Ap.addr, align 8, !tbaa !4
  %52 = load i64, ptr %oldcol, align 8, !tbaa !18
  %add34 = add nsw i64 %52, 1
  %arrayidx35 = getelementptr inbounds i64, ptr %51, i64 %add34
  %53 = load i64, ptr %arrayidx35, align 8, !tbaa !18
  store i64 %53, ptr %pend, align 8, !tbaa !18
  %54 = load ptr, ptr %Ap.addr, align 8, !tbaa !4
  %55 = load i64, ptr %oldcol, align 8, !tbaa !18
  %arrayidx36 = getelementptr inbounds i64, ptr %54, i64 %55
  %56 = load i64, ptr %arrayidx36, align 8, !tbaa !18
  store i64 %56, ptr %k, align 8, !tbaa !18
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc, %for.body31
  %57 = load i64, ptr %k, align 8, !tbaa !18
  %58 = load i64, ptr %pend, align 8, !tbaa !18
  %cmp38 = icmp slt i64 %57, %58
  br i1 %cmp38, label %for.body39, label %for.end

for.body39:                                       ; preds = %for.cond37
  %59 = load ptr, ptr %Ai.addr, align 8, !tbaa !4
  %60 = load i64, ptr %k, align 8, !tbaa !18
  %arrayidx40 = getelementptr inbounds i64, ptr %59, i64 %60
  %61 = load i64, ptr %arrayidx40, align 8, !tbaa !18
  store i64 %61, ptr %oldrow, align 8, !tbaa !18
  %62 = load ptr, ptr %Pinv, align 8, !tbaa !4
  %63 = load i64, ptr %oldrow, align 8, !tbaa !18
  %arrayidx41 = getelementptr inbounds i64, ptr %62, i64 %63
  %64 = load i64, ptr %arrayidx41, align 8, !tbaa !18
  store i64 %64, ptr %newrow, align 8, !tbaa !18
  %65 = load i64, ptr %newrow, align 8, !tbaa !18
  %66 = load i64, ptr %k1, align 8, !tbaa !18
  %cmp42 = icmp slt i64 %65, %66
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %for.body39
  br label %for.inc

if.end44:                                         ; preds = %for.body39
  %67 = load ptr, ptr %Rs, align 8, !tbaa !4
  %cmp45 = icmp ne ptr %67, null
  br i1 %cmp45, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.end44
  %68 = load ptr, ptr %Aentry, align 8, !tbaa !4
  %69 = load i64, ptr %k, align 8, !tbaa !18
  %arrayidx47 = getelementptr inbounds %struct.Double_Complex, ptr %68, i64 %69
  %component = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx47, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [2 x double], ptr %component, i64 0, i64 0
  %70 = load double, ptr %arrayidx48, align 8, !tbaa !25
  %71 = load ptr, ptr %Rs, align 8, !tbaa !4
  %72 = load i64, ptr %newrow, align 8, !tbaa !18
  %arrayidx49 = getelementptr inbounds double, ptr %71, i64 %72
  %73 = load double, ptr %arrayidx49, align 8, !tbaa !25
  %div = fdiv double %70, %73
  %component50 = getelementptr inbounds %struct.Double_Complex, ptr %aik, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [2 x double], ptr %component50, i64 0, i64 0
  store double %div, ptr %arrayidx51, align 8, !tbaa !25
  %74 = load ptr, ptr %Aentry, align 8, !tbaa !4
  %75 = load i64, ptr %k, align 8, !tbaa !18
  %arrayidx52 = getelementptr inbounds %struct.Double_Complex, ptr %74, i64 %75
  %component53 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx52, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [2 x double], ptr %component53, i64 0, i64 1
  %76 = load double, ptr %arrayidx54, align 8, !tbaa !25
  %77 = load ptr, ptr %Rs, align 8, !tbaa !4
  %78 = load i64, ptr %newrow, align 8, !tbaa !18
  %arrayidx55 = getelementptr inbounds double, ptr %77, i64 %78
  %79 = load double, ptr %arrayidx55, align 8, !tbaa !25
  %div56 = fdiv double %76, %79
  %component57 = getelementptr inbounds %struct.Double_Complex, ptr %aik, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [2 x double], ptr %component57, i64 0, i64 1
  store double %div56, ptr %arrayidx58, align 8, !tbaa !25
  br label %if.end60

if.else:                                          ; preds = %if.end44
  %80 = load ptr, ptr %Aentry, align 8, !tbaa !4
  %81 = load i64, ptr %k, align 8, !tbaa !18
  %arrayidx59 = getelementptr inbounds %struct.Double_Complex, ptr %80, i64 %81
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %aik, ptr align 8 %arrayidx59, i64 16, i1 false), !tbaa.struct !26
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then46
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ar) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ai) #7
  %component61 = getelementptr inbounds %struct.Double_Complex, ptr %aik, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [2 x double], ptr %component61, i64 0, i64 0
  %82 = load double, ptr %arrayidx62, align 8, !tbaa !25
  %cmp63 = fcmp olt double %82, 0.000000e+00
  br i1 %cmp63, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end60
  %component64 = getelementptr inbounds %struct.Double_Complex, ptr %aik, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [2 x double], ptr %component64, i64 0, i64 0
  %83 = load double, ptr %arrayidx65, align 8, !tbaa !25
  %fneg = fneg double %83
  br label %cond.end

cond.false:                                       ; preds = %if.end60
  %component66 = getelementptr inbounds %struct.Double_Complex, ptr %aik, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [2 x double], ptr %component66, i64 0, i64 0
  %84 = load double, ptr %arrayidx67, align 8, !tbaa !25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %fneg, %cond.true ], [ %84, %cond.false ]
  store double %cond, ptr %ar, align 8, !tbaa !25
  %component68 = getelementptr inbounds %struct.Double_Complex, ptr %aik, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [2 x double], ptr %component68, i64 0, i64 1
  %85 = load double, ptr %arrayidx69, align 8, !tbaa !25
  %cmp70 = fcmp olt double %85, 0.000000e+00
  br i1 %cmp70, label %cond.true71, label %cond.false75

cond.true71:                                      ; preds = %cond.end
  %component72 = getelementptr inbounds %struct.Double_Complex, ptr %aik, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [2 x double], ptr %component72, i64 0, i64 1
  %86 = load double, ptr %arrayidx73, align 8, !tbaa !25
  %fneg74 = fneg double %86
  br label %cond.end78

cond.false75:                                     ; preds = %cond.end
  %component76 = getelementptr inbounds %struct.Double_Complex, ptr %aik, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [2 x double], ptr %component76, i64 0, i64 1
  %87 = load double, ptr %arrayidx77, align 8, !tbaa !25
  br label %cond.end78

cond.end78:                                       ; preds = %cond.false75, %cond.true71
  %cond79 = phi double [ %fneg74, %cond.true71 ], [ %87, %cond.false75 ]
  store double %cond79, ptr %ai, align 8, !tbaa !25
  %88 = load double, ptr %ar, align 8, !tbaa !25
  %89 = load double, ptr %ai, align 8, !tbaa !25
  %cmp80 = fcmp oge double %88, %89
  br i1 %cmp80, label %if.then81, label %if.else88

if.then81:                                        ; preds = %cond.end78
  %90 = load double, ptr %ar, align 8, !tbaa !25
  %91 = load double, ptr %ai, align 8, !tbaa !25
  %add82 = fadd double %90, %91
  %92 = load double, ptr %ar, align 8, !tbaa !25
  %cmp83 = fcmp oeq double %add82, %92
  br i1 %cmp83, label %if.then84, label %if.else85

if.then84:                                        ; preds = %if.then81
  %93 = load double, ptr %ar, align 8, !tbaa !25
  store double %93, ptr %temp, align 8, !tbaa !25
  br label %if.end87

if.else85:                                        ; preds = %if.then81
  %94 = load double, ptr %ai, align 8, !tbaa !25
  %95 = load double, ptr %ar, align 8, !tbaa !25
  %div86 = fdiv double %94, %95
  store double %div86, ptr %r, align 8, !tbaa !25
  %96 = load double, ptr %ar, align 8, !tbaa !25
  %97 = load double, ptr %r, align 8, !tbaa !25
  %98 = load double, ptr %r, align 8, !tbaa !25
  %99 = call double @llvm.fmuladd.f64(double %97, double %98, double 1.000000e+00)
  %call = call double @sqrt(double noundef %99) #7
  %mul = fmul double %96, %call
  store double %mul, ptr %temp, align 8, !tbaa !25
  br label %if.end87

if.end87:                                         ; preds = %if.else85, %if.then84
  br label %if.end98

if.else88:                                        ; preds = %cond.end78
  %100 = load double, ptr %ai, align 8, !tbaa !25
  %101 = load double, ptr %ar, align 8, !tbaa !25
  %add89 = fadd double %100, %101
  %102 = load double, ptr %ai, align 8, !tbaa !25
  %cmp90 = fcmp oeq double %add89, %102
  br i1 %cmp90, label %if.then91, label %if.else92

if.then91:                                        ; preds = %if.else88
  %103 = load double, ptr %ai, align 8, !tbaa !25
  store double %103, ptr %temp, align 8, !tbaa !25
  br label %if.end97

if.else92:                                        ; preds = %if.else88
  %104 = load double, ptr %ar, align 8, !tbaa !25
  %105 = load double, ptr %ai, align 8, !tbaa !25
  %div93 = fdiv double %104, %105
  store double %div93, ptr %r, align 8, !tbaa !25
  %106 = load double, ptr %ai, align 8, !tbaa !25
  %107 = load double, ptr %r, align 8, !tbaa !25
  %108 = load double, ptr %r, align 8, !tbaa !25
  %109 = call double @llvm.fmuladd.f64(double %107, double %108, double 1.000000e+00)
  %call95 = call double @sqrt(double noundef %109) #7
  %mul96 = fmul double %106, %call95
  store double %mul96, ptr %temp, align 8, !tbaa !25
  br label %if.end97

if.end97:                                         ; preds = %if.else92, %if.then91
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.end87
  call void @llvm.lifetime.end.p0(i64 8, ptr %ai) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ar) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #7
  %110 = load double, ptr %temp, align 8, !tbaa !25
  %111 = load double, ptr %max_ai, align 8, !tbaa !25
  %cmp99 = fcmp ogt double %110, %111
  br i1 %cmp99, label %if.then100, label %if.end101

if.then100:                                       ; preds = %if.end98
  %112 = load double, ptr %temp, align 8, !tbaa !25
  store double %112, ptr %max_ai, align 8, !tbaa !25
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %if.end98
  br label %for.inc

for.inc:                                          ; preds = %if.end101, %if.then43
  %113 = load i64, ptr %k, align 8, !tbaa !18
  %inc = add nsw i64 %113, 1
  store i64 %inc, ptr %k, align 8, !tbaa !18
  br label %for.cond37, !llvm.loop !28

for.end:                                          ; preds = %for.cond37
  call void @llvm.lifetime.start.p0(i64 8, ptr %xp) #7
  %114 = load ptr, ptr %LU, align 8, !tbaa !4
  %115 = load ptr, ptr %Uip, align 8, !tbaa !4
  %116 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx102 = getelementptr inbounds i64, ptr %115, i64 %116
  %117 = load i64, ptr %arrayidx102, align 8, !tbaa !18
  %add.ptr103 = getelementptr inbounds %struct.Double_Complex, ptr %114, i64 %117
  store ptr %add.ptr103, ptr %xp, align 8, !tbaa !4
  %118 = load ptr, ptr %Ulen, align 8, !tbaa !4
  %119 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx104 = getelementptr inbounds i64, ptr %118, i64 %119
  %120 = load i64, ptr %arrayidx104, align 8, !tbaa !18
  store i64 %120, ptr %len, align 8, !tbaa !18
  %121 = load ptr, ptr %xp, align 8, !tbaa !4
  store ptr %121, ptr %Ui, align 8, !tbaa !4
  %122 = load ptr, ptr %xp, align 8, !tbaa !4
  %123 = load i64, ptr %len, align 8, !tbaa !18
  %mul105 = mul i64 8, %123
  %add106 = add i64 %mul105, 16
  %sub107 = sub i64 %add106, 1
  %div108 = udiv i64 %sub107, 16
  %add.ptr109 = getelementptr inbounds %struct.Double_Complex, ptr %122, i64 %div108
  store ptr %add.ptr109, ptr %Ux, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %xp) #7
  store i64 0, ptr %k, align 8, !tbaa !18
  br label %for.cond110

for.cond110:                                      ; preds = %for.inc171, %for.end
  %124 = load i64, ptr %k, align 8, !tbaa !18
  %125 = load i64, ptr %len, align 8, !tbaa !18
  %cmp111 = icmp slt i64 %124, %125
  br i1 %cmp111, label %for.body112, label %for.end173

for.body112:                                      ; preds = %for.cond110
  call void @llvm.lifetime.start.p0(i64 8, ptr %r113) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ar114) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ai115) #7
  %126 = load ptr, ptr %Ux, align 8, !tbaa !4
  %127 = load i64, ptr %k, align 8, !tbaa !18
  %arrayidx116 = getelementptr inbounds %struct.Double_Complex, ptr %126, i64 %127
  %component117 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx116, i32 0, i32 0
  %arrayidx118 = getelementptr inbounds [2 x double], ptr %component117, i64 0, i64 0
  %128 = load double, ptr %arrayidx118, align 8, !tbaa !25
  %cmp119 = fcmp olt double %128, 0.000000e+00
  br i1 %cmp119, label %cond.true120, label %cond.false125

cond.true120:                                     ; preds = %for.body112
  %129 = load ptr, ptr %Ux, align 8, !tbaa !4
  %130 = load i64, ptr %k, align 8, !tbaa !18
  %arrayidx121 = getelementptr inbounds %struct.Double_Complex, ptr %129, i64 %130
  %component122 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx121, i32 0, i32 0
  %arrayidx123 = getelementptr inbounds [2 x double], ptr %component122, i64 0, i64 0
  %131 = load double, ptr %arrayidx123, align 8, !tbaa !25
  %fneg124 = fneg double %131
  br label %cond.end129

cond.false125:                                    ; preds = %for.body112
  %132 = load ptr, ptr %Ux, align 8, !tbaa !4
  %133 = load i64, ptr %k, align 8, !tbaa !18
  %arrayidx126 = getelementptr inbounds %struct.Double_Complex, ptr %132, i64 %133
  %component127 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx126, i32 0, i32 0
  %arrayidx128 = getelementptr inbounds [2 x double], ptr %component127, i64 0, i64 0
  %134 = load double, ptr %arrayidx128, align 8, !tbaa !25
  br label %cond.end129

cond.end129:                                      ; preds = %cond.false125, %cond.true120
  %cond130 = phi double [ %fneg124, %cond.true120 ], [ %134, %cond.false125 ]
  store double %cond130, ptr %ar114, align 8, !tbaa !25
  %135 = load ptr, ptr %Ux, align 8, !tbaa !4
  %136 = load i64, ptr %k, align 8, !tbaa !18
  %arrayidx131 = getelementptr inbounds %struct.Double_Complex, ptr %135, i64 %136
  %component132 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx131, i32 0, i32 0
  %arrayidx133 = getelementptr inbounds [2 x double], ptr %component132, i64 0, i64 1
  %137 = load double, ptr %arrayidx133, align 8, !tbaa !25
  %cmp134 = fcmp olt double %137, 0.000000e+00
  br i1 %cmp134, label %cond.true135, label %cond.false140

cond.true135:                                     ; preds = %cond.end129
  %138 = load ptr, ptr %Ux, align 8, !tbaa !4
  %139 = load i64, ptr %k, align 8, !tbaa !18
  %arrayidx136 = getelementptr inbounds %struct.Double_Complex, ptr %138, i64 %139
  %component137 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx136, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [2 x double], ptr %component137, i64 0, i64 1
  %140 = load double, ptr %arrayidx138, align 8, !tbaa !25
  %fneg139 = fneg double %140
  br label %cond.end144

cond.false140:                                    ; preds = %cond.end129
  %141 = load ptr, ptr %Ux, align 8, !tbaa !4
  %142 = load i64, ptr %k, align 8, !tbaa !18
  %arrayidx141 = getelementptr inbounds %struct.Double_Complex, ptr %141, i64 %142
  %component142 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx141, i32 0, i32 0
  %arrayidx143 = getelementptr inbounds [2 x double], ptr %component142, i64 0, i64 1
  %143 = load double, ptr %arrayidx143, align 8, !tbaa !25
  br label %cond.end144

cond.end144:                                      ; preds = %cond.false140, %cond.true135
  %cond145 = phi double [ %fneg139, %cond.true135 ], [ %143, %cond.false140 ]
  store double %cond145, ptr %ai115, align 8, !tbaa !25
  %144 = load double, ptr %ar114, align 8, !tbaa !25
  %145 = load double, ptr %ai115, align 8, !tbaa !25
  %cmp146 = fcmp oge double %144, %145
  br i1 %cmp146, label %if.then147, label %if.else157

if.then147:                                       ; preds = %cond.end144
  %146 = load double, ptr %ar114, align 8, !tbaa !25
  %147 = load double, ptr %ai115, align 8, !tbaa !25
  %add148 = fadd double %146, %147
  %148 = load double, ptr %ar114, align 8, !tbaa !25
  %cmp149 = fcmp oeq double %add148, %148
  br i1 %cmp149, label %if.then150, label %if.else151

if.then150:                                       ; preds = %if.then147
  %149 = load double, ptr %ar114, align 8, !tbaa !25
  store double %149, ptr %temp, align 8, !tbaa !25
  br label %if.end156

if.else151:                                       ; preds = %if.then147
  %150 = load double, ptr %ai115, align 8, !tbaa !25
  %151 = load double, ptr %ar114, align 8, !tbaa !25
  %div152 = fdiv double %150, %151
  store double %div152, ptr %r113, align 8, !tbaa !25
  %152 = load double, ptr %ar114, align 8, !tbaa !25
  %153 = load double, ptr %r113, align 8, !tbaa !25
  %154 = load double, ptr %r113, align 8, !tbaa !25
  %155 = call double @llvm.fmuladd.f64(double %153, double %154, double 1.000000e+00)
  %call154 = call double @sqrt(double noundef %155) #7
  %mul155 = fmul double %152, %call154
  store double %mul155, ptr %temp, align 8, !tbaa !25
  br label %if.end156

if.end156:                                        ; preds = %if.else151, %if.then150
  br label %if.end167

if.else157:                                       ; preds = %cond.end144
  %156 = load double, ptr %ai115, align 8, !tbaa !25
  %157 = load double, ptr %ar114, align 8, !tbaa !25
  %add158 = fadd double %156, %157
  %158 = load double, ptr %ai115, align 8, !tbaa !25
  %cmp159 = fcmp oeq double %add158, %158
  br i1 %cmp159, label %if.then160, label %if.else161

if.then160:                                       ; preds = %if.else157
  %159 = load double, ptr %ai115, align 8, !tbaa !25
  store double %159, ptr %temp, align 8, !tbaa !25
  br label %if.end166

if.else161:                                       ; preds = %if.else157
  %160 = load double, ptr %ar114, align 8, !tbaa !25
  %161 = load double, ptr %ai115, align 8, !tbaa !25
  %div162 = fdiv double %160, %161
  store double %div162, ptr %r113, align 8, !tbaa !25
  %162 = load double, ptr %ai115, align 8, !tbaa !25
  %163 = load double, ptr %r113, align 8, !tbaa !25
  %164 = load double, ptr %r113, align 8, !tbaa !25
  %165 = call double @llvm.fmuladd.f64(double %163, double %164, double 1.000000e+00)
  %call164 = call double @sqrt(double noundef %165) #7
  %mul165 = fmul double %162, %call164
  store double %mul165, ptr %temp, align 8, !tbaa !25
  br label %if.end166

if.end166:                                        ; preds = %if.else161, %if.then160
  br label %if.end167

if.end167:                                        ; preds = %if.end166, %if.end156
  call void @llvm.lifetime.end.p0(i64 8, ptr %ai115) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ar114) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %r113) #7
  %166 = load double, ptr %temp, align 8, !tbaa !25
  %167 = load double, ptr %max_ui, align 8, !tbaa !25
  %cmp168 = fcmp ogt double %166, %167
  br i1 %cmp168, label %if.then169, label %if.end170

if.then169:                                       ; preds = %if.end167
  %168 = load double, ptr %temp, align 8, !tbaa !25
  store double %168, ptr %max_ui, align 8, !tbaa !25
  br label %if.end170

if.end170:                                        ; preds = %if.then169, %if.end167
  br label %for.inc171

for.inc171:                                       ; preds = %if.end170
  %169 = load i64, ptr %k, align 8, !tbaa !18
  %inc172 = add nsw i64 %169, 1
  store i64 %inc172, ptr %k, align 8, !tbaa !18
  br label %for.cond110, !llvm.loop !30

for.end173:                                       ; preds = %for.cond110
  call void @llvm.lifetime.start.p0(i64 8, ptr %r174) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ar175) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ai176) #7
  %170 = load ptr, ptr %Ukk, align 8, !tbaa !4
  %171 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx177 = getelementptr inbounds %struct.Double_Complex, ptr %170, i64 %171
  %component178 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx177, i32 0, i32 0
  %arrayidx179 = getelementptr inbounds [2 x double], ptr %component178, i64 0, i64 0
  %172 = load double, ptr %arrayidx179, align 8, !tbaa !25
  %cmp180 = fcmp olt double %172, 0.000000e+00
  br i1 %cmp180, label %cond.true181, label %cond.false186

cond.true181:                                     ; preds = %for.end173
  %173 = load ptr, ptr %Ukk, align 8, !tbaa !4
  %174 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx182 = getelementptr inbounds %struct.Double_Complex, ptr %173, i64 %174
  %component183 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx182, i32 0, i32 0
  %arrayidx184 = getelementptr inbounds [2 x double], ptr %component183, i64 0, i64 0
  %175 = load double, ptr %arrayidx184, align 8, !tbaa !25
  %fneg185 = fneg double %175
  br label %cond.end190

cond.false186:                                    ; preds = %for.end173
  %176 = load ptr, ptr %Ukk, align 8, !tbaa !4
  %177 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx187 = getelementptr inbounds %struct.Double_Complex, ptr %176, i64 %177
  %component188 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx187, i32 0, i32 0
  %arrayidx189 = getelementptr inbounds [2 x double], ptr %component188, i64 0, i64 0
  %178 = load double, ptr %arrayidx189, align 8, !tbaa !25
  br label %cond.end190

cond.end190:                                      ; preds = %cond.false186, %cond.true181
  %cond191 = phi double [ %fneg185, %cond.true181 ], [ %178, %cond.false186 ]
  store double %cond191, ptr %ar175, align 8, !tbaa !25
  %179 = load ptr, ptr %Ukk, align 8, !tbaa !4
  %180 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx192 = getelementptr inbounds %struct.Double_Complex, ptr %179, i64 %180
  %component193 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx192, i32 0, i32 0
  %arrayidx194 = getelementptr inbounds [2 x double], ptr %component193, i64 0, i64 1
  %181 = load double, ptr %arrayidx194, align 8, !tbaa !25
  %cmp195 = fcmp olt double %181, 0.000000e+00
  br i1 %cmp195, label %cond.true196, label %cond.false201

cond.true196:                                     ; preds = %cond.end190
  %182 = load ptr, ptr %Ukk, align 8, !tbaa !4
  %183 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx197 = getelementptr inbounds %struct.Double_Complex, ptr %182, i64 %183
  %component198 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx197, i32 0, i32 0
  %arrayidx199 = getelementptr inbounds [2 x double], ptr %component198, i64 0, i64 1
  %184 = load double, ptr %arrayidx199, align 8, !tbaa !25
  %fneg200 = fneg double %184
  br label %cond.end205

cond.false201:                                    ; preds = %cond.end190
  %185 = load ptr, ptr %Ukk, align 8, !tbaa !4
  %186 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx202 = getelementptr inbounds %struct.Double_Complex, ptr %185, i64 %186
  %component203 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx202, i32 0, i32 0
  %arrayidx204 = getelementptr inbounds [2 x double], ptr %component203, i64 0, i64 1
  %187 = load double, ptr %arrayidx204, align 8, !tbaa !25
  br label %cond.end205

cond.end205:                                      ; preds = %cond.false201, %cond.true196
  %cond206 = phi double [ %fneg200, %cond.true196 ], [ %187, %cond.false201 ]
  store double %cond206, ptr %ai176, align 8, !tbaa !25
  %188 = load double, ptr %ar175, align 8, !tbaa !25
  %189 = load double, ptr %ai176, align 8, !tbaa !25
  %cmp207 = fcmp oge double %188, %189
  br i1 %cmp207, label %if.then208, label %if.else218

if.then208:                                       ; preds = %cond.end205
  %190 = load double, ptr %ar175, align 8, !tbaa !25
  %191 = load double, ptr %ai176, align 8, !tbaa !25
  %add209 = fadd double %190, %191
  %192 = load double, ptr %ar175, align 8, !tbaa !25
  %cmp210 = fcmp oeq double %add209, %192
  br i1 %cmp210, label %if.then211, label %if.else212

if.then211:                                       ; preds = %if.then208
  %193 = load double, ptr %ar175, align 8, !tbaa !25
  store double %193, ptr %temp, align 8, !tbaa !25
  br label %if.end217

if.else212:                                       ; preds = %if.then208
  %194 = load double, ptr %ai176, align 8, !tbaa !25
  %195 = load double, ptr %ar175, align 8, !tbaa !25
  %div213 = fdiv double %194, %195
  store double %div213, ptr %r174, align 8, !tbaa !25
  %196 = load double, ptr %ar175, align 8, !tbaa !25
  %197 = load double, ptr %r174, align 8, !tbaa !25
  %198 = load double, ptr %r174, align 8, !tbaa !25
  %199 = call double @llvm.fmuladd.f64(double %197, double %198, double 1.000000e+00)
  %call215 = call double @sqrt(double noundef %199) #7
  %mul216 = fmul double %196, %call215
  store double %mul216, ptr %temp, align 8, !tbaa !25
  br label %if.end217

if.end217:                                        ; preds = %if.else212, %if.then211
  br label %if.end228

if.else218:                                       ; preds = %cond.end205
  %200 = load double, ptr %ai176, align 8, !tbaa !25
  %201 = load double, ptr %ar175, align 8, !tbaa !25
  %add219 = fadd double %200, %201
  %202 = load double, ptr %ai176, align 8, !tbaa !25
  %cmp220 = fcmp oeq double %add219, %202
  br i1 %cmp220, label %if.then221, label %if.else222

if.then221:                                       ; preds = %if.else218
  %203 = load double, ptr %ai176, align 8, !tbaa !25
  store double %203, ptr %temp, align 8, !tbaa !25
  br label %if.end227

if.else222:                                       ; preds = %if.else218
  %204 = load double, ptr %ar175, align 8, !tbaa !25
  %205 = load double, ptr %ai176, align 8, !tbaa !25
  %div223 = fdiv double %204, %205
  store double %div223, ptr %r174, align 8, !tbaa !25
  %206 = load double, ptr %ai176, align 8, !tbaa !25
  %207 = load double, ptr %r174, align 8, !tbaa !25
  %208 = load double, ptr %r174, align 8, !tbaa !25
  %209 = call double @llvm.fmuladd.f64(double %207, double %208, double 1.000000e+00)
  %call225 = call double @sqrt(double noundef %209) #7
  %mul226 = fmul double %206, %call225
  store double %mul226, ptr %temp, align 8, !tbaa !25
  br label %if.end227

if.end227:                                        ; preds = %if.else222, %if.then221
  br label %if.end228

if.end228:                                        ; preds = %if.end227, %if.end217
  call void @llvm.lifetime.end.p0(i64 8, ptr %ai176) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ar175) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %r174) #7
  %210 = load double, ptr %temp, align 8, !tbaa !25
  %211 = load double, ptr %max_ui, align 8, !tbaa !25
  %cmp229 = fcmp ogt double %210, %211
  br i1 %cmp229, label %if.then230, label %if.end231

if.then230:                                       ; preds = %if.end228
  %212 = load double, ptr %temp, align 8, !tbaa !25
  store double %212, ptr %max_ui, align 8, !tbaa !25
  br label %if.end231

if.end231:                                        ; preds = %if.then230, %if.end228
  %213 = load double, ptr %max_ui, align 8, !tbaa !25
  %cmp232 = fcmp oeq double %213, 0.000000e+00
  br i1 %cmp232, label %if.then233, label %if.end234

if.then233:                                       ; preds = %if.end231
  br label %for.inc239

if.end234:                                        ; preds = %if.end231
  %214 = load double, ptr %max_ai, align 8, !tbaa !25
  %215 = load double, ptr %max_ui, align 8, !tbaa !25
  %div235 = fdiv double %214, %215
  store double %div235, ptr %temp, align 8, !tbaa !25
  %216 = load double, ptr %temp, align 8, !tbaa !25
  %217 = load double, ptr %min_block_rgrowth, align 8, !tbaa !25
  %cmp236 = fcmp olt double %216, %217
  br i1 %cmp236, label %if.then237, label %if.end238

if.then237:                                       ; preds = %if.end234
  %218 = load double, ptr %temp, align 8, !tbaa !25
  store double %218, ptr %min_block_rgrowth, align 8, !tbaa !25
  br label %if.end238

if.end238:                                        ; preds = %if.then237, %if.end234
  br label %for.inc239

for.inc239:                                       ; preds = %if.end238, %if.then233
  %219 = load i64, ptr %j, align 8, !tbaa !18
  %inc240 = add nsw i64 %219, 1
  store i64 %inc240, ptr %j, align 8, !tbaa !18
  br label %for.cond29, !llvm.loop !31

for.end241:                                       ; preds = %for.cond29
  %220 = load double, ptr %min_block_rgrowth, align 8, !tbaa !25
  %221 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %rgrowth242 = getelementptr inbounds %struct.klu_l_common_struct, ptr %221, i32 0, i32 20
  %222 = load double, ptr %rgrowth242, align 8, !tbaa !12
  %cmp243 = fcmp olt double %220, %222
  br i1 %cmp243, label %if.then244, label %if.end246

if.then244:                                       ; preds = %for.end241
  %223 = load double, ptr %min_block_rgrowth, align 8, !tbaa !25
  %224 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %rgrowth245 = getelementptr inbounds %struct.klu_l_common_struct, ptr %224, i32 0, i32 20
  store double %223, ptr %rgrowth245, align 8, !tbaa !12
  br label %if.end246

if.end246:                                        ; preds = %if.then244, %for.end241
  br label %for.inc247

for.inc247:                                       ; preds = %if.end246, %if.then22
  %225 = load i64, ptr %i, align 8, !tbaa !18
  %inc248 = add nsw i64 %225, 1
  store i64 %inc248, ptr %i, align 8, !tbaa !18
  br label %for.cond, !llvm.loop !32

for.end249:                                       ; preds = %for.cond
  store i64 1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end249, %if.then10, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %pend) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldcol) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %nk) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %k2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %k1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldrow) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %newrow) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Rs) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ukk) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ux) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Aentry) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %LU) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Pinv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ulen) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Uip) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ui) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Q) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %aik) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %min_block_rgrowth) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_ui) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_ai) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #7
  %226 = load i64, ptr %retval, align 8
  ret i64 %226
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: uwtable
define i64 @klu_zl_condest(ptr noundef %Ap, ptr noundef %Ax, ptr noundef %Symbolic, ptr noundef %Numeric, ptr noundef %Common) #5 {
entry:
  %retval = alloca i64, align 8
  %Ap.addr = alloca ptr, align 8
  %Ax.addr = alloca ptr, align 8
  %Symbolic.addr = alloca ptr, align 8
  %Numeric.addr = alloca ptr, align 8
  %Common.addr = alloca ptr, align 8
  %xj = alloca double, align 8
  %Xmax = alloca double, align 8
  %csum = alloca double, align 8
  %anorm = alloca double, align 8
  %ainv_norm = alloca double, align 8
  %est_old = alloca double, align 8
  %est_new = alloca double, align 8
  %abs_value = alloca double, align 8
  %Udiag = alloca ptr, align 8
  %Aentry = alloca ptr, align 8
  %X = alloca ptr, align 8
  %S = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %jmax = alloca i64, align 8
  %jnew = alloca i64, align 8
  %pend = alloca i64, align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %r = alloca double, align 8
  %ar = alloca double, align 8
  %ai = alloca double, align 8
  %r70 = alloca double, align 8
  %ar71 = alloca double, align 8
  %ai72 = alloca double, align 8
  %r187 = alloca double, align 8
  %ar188 = alloca double, align 8
  %ai189 = alloca double, align 8
  %r267 = alloca double, align 8
  %ar268 = alloca double, align 8
  %ai269 = alloca double, align 8
  %r375 = alloca double, align 8
  %ar376 = alloca double, align 8
  %ai377 = alloca double, align 8
  %r488 = alloca double, align 8
  %ar489 = alloca double, align 8
  %ai490 = alloca double, align 8
  store ptr %Ap, ptr %Ap.addr, align 8, !tbaa !4
  store ptr %Ax, ptr %Ax.addr, align 8, !tbaa !4
  store ptr %Symbolic, ptr %Symbolic.addr, align 8, !tbaa !4
  store ptr %Numeric, ptr %Numeric.addr, align 8, !tbaa !4
  store ptr %Common, ptr %Common.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %xj) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %Xmax) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %csum) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %anorm) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ainv_norm) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %est_old) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %est_new) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %abs_value) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %Udiag) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %Aentry) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %X) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %S) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %jmax) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %jnew) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %pend) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #7
  %0 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load ptr, ptr %Ap.addr, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then5, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %Ax.addr, align 8, !tbaa !4
  %cmp4 = icmp eq ptr %3, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %lor.lhs.false3, %lor.lhs.false, %if.end
  %4 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %status = getelementptr inbounds %struct.klu_l_common_struct, ptr %4, i32 0, i32 11
  store i64 -3, ptr %status, align 8, !tbaa !8
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false3
  store double 0.000000e+00, ptr %abs_value, align 8, !tbaa !25
  %5 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %cmp7 = icmp eq ptr %5, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %6 = load double, ptr %abs_value, align 8, !tbaa !25
  %div = fdiv double 1.000000e+00, %6
  %7 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %condest = getelementptr inbounds %struct.klu_l_common_struct, ptr %7, i32 0, i32 19
  store double %div, ptr %condest, align 8, !tbaa !33
  %8 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %status9 = getelementptr inbounds %struct.klu_l_common_struct, ptr %8, i32 0, i32 11
  store i64 1, ptr %status9, align 8, !tbaa !8
  store i64 1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %9 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %status11 = getelementptr inbounds %struct.klu_l_common_struct, ptr %9, i32 0, i32 11
  store i64 0, ptr %status11, align 8, !tbaa !8
  %10 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %n12 = getelementptr inbounds %struct.klu_l_symbolic, ptr %10, i32 0, i32 5
  %11 = load i64, ptr %n12, align 8, !tbaa !34
  store i64 %11, ptr %n, align 8, !tbaa !18
  %12 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Udiag13 = getelementptr inbounds %struct.klu_l_numeric, ptr %12, i32 0, i32 14
  %13 = load ptr, ptr %Udiag13, align 8, !tbaa !24
  store ptr %13, ptr %Udiag, align 8, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %14 = load i64, ptr %i, align 8, !tbaa !18
  %15 = load i64, ptr %n, align 8, !tbaa !18
  %cmp14 = icmp slt i64 %14, %15
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ar) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ai) #7
  %16 = load ptr, ptr %Udiag, align 8, !tbaa !4
  %17 = load i64, ptr %i, align 8, !tbaa !18
  %arrayidx = getelementptr inbounds %struct.Double_Complex, ptr %16, i64 %17
  %component = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [2 x double], ptr %component, i64 0, i64 0
  %18 = load double, ptr %arrayidx15, align 8, !tbaa !25
  %cmp16 = fcmp olt double %18, 0.000000e+00
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %19 = load ptr, ptr %Udiag, align 8, !tbaa !4
  %20 = load i64, ptr %i, align 8, !tbaa !18
  %arrayidx17 = getelementptr inbounds %struct.Double_Complex, ptr %19, i64 %20
  %component18 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx17, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [2 x double], ptr %component18, i64 0, i64 0
  %21 = load double, ptr %arrayidx19, align 8, !tbaa !25
  %fneg = fneg double %21
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %22 = load ptr, ptr %Udiag, align 8, !tbaa !4
  %23 = load i64, ptr %i, align 8, !tbaa !18
  %arrayidx20 = getelementptr inbounds %struct.Double_Complex, ptr %22, i64 %23
  %component21 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx20, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [2 x double], ptr %component21, i64 0, i64 0
  %24 = load double, ptr %arrayidx22, align 8, !tbaa !25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %fneg, %cond.true ], [ %24, %cond.false ]
  store double %cond, ptr %ar, align 8, !tbaa !25
  %25 = load ptr, ptr %Udiag, align 8, !tbaa !4
  %26 = load i64, ptr %i, align 8, !tbaa !18
  %arrayidx23 = getelementptr inbounds %struct.Double_Complex, ptr %25, i64 %26
  %component24 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx23, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [2 x double], ptr %component24, i64 0, i64 1
  %27 = load double, ptr %arrayidx25, align 8, !tbaa !25
  %cmp26 = fcmp olt double %27, 0.000000e+00
  br i1 %cmp26, label %cond.true27, label %cond.false32

cond.true27:                                      ; preds = %cond.end
  %28 = load ptr, ptr %Udiag, align 8, !tbaa !4
  %29 = load i64, ptr %i, align 8, !tbaa !18
  %arrayidx28 = getelementptr inbounds %struct.Double_Complex, ptr %28, i64 %29
  %component29 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx28, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [2 x double], ptr %component29, i64 0, i64 1
  %30 = load double, ptr %arrayidx30, align 8, !tbaa !25
  %fneg31 = fneg double %30
  br label %cond.end36

cond.false32:                                     ; preds = %cond.end
  %31 = load ptr, ptr %Udiag, align 8, !tbaa !4
  %32 = load i64, ptr %i, align 8, !tbaa !18
  %arrayidx33 = getelementptr inbounds %struct.Double_Complex, ptr %31, i64 %32
  %component34 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx33, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [2 x double], ptr %component34, i64 0, i64 1
  %33 = load double, ptr %arrayidx35, align 8, !tbaa !25
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false32, %cond.true27
  %cond37 = phi double [ %fneg31, %cond.true27 ], [ %33, %cond.false32 ]
  store double %cond37, ptr %ai, align 8, !tbaa !25
  %34 = load double, ptr %ar, align 8, !tbaa !25
  %35 = load double, ptr %ai, align 8, !tbaa !25
  %cmp38 = fcmp oge double %34, %35
  br i1 %cmp38, label %if.then39, label %if.else44

if.then39:                                        ; preds = %cond.end36
  %36 = load double, ptr %ar, align 8, !tbaa !25
  %37 = load double, ptr %ai, align 8, !tbaa !25
  %add = fadd double %36, %37
  %38 = load double, ptr %ar, align 8, !tbaa !25
  %cmp40 = fcmp oeq double %add, %38
  br i1 %cmp40, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.then39
  %39 = load double, ptr %ar, align 8, !tbaa !25
  store double %39, ptr %abs_value, align 8, !tbaa !25
  br label %if.end43

if.else:                                          ; preds = %if.then39
  %40 = load double, ptr %ai, align 8, !tbaa !25
  %41 = load double, ptr %ar, align 8, !tbaa !25
  %div42 = fdiv double %40, %41
  store double %div42, ptr %r, align 8, !tbaa !25
  %42 = load double, ptr %ar, align 8, !tbaa !25
  %43 = load double, ptr %r, align 8, !tbaa !25
  %44 = load double, ptr %r, align 8, !tbaa !25
  %45 = call double @llvm.fmuladd.f64(double %43, double %44, double 1.000000e+00)
  %call = call double @sqrt(double noundef %45) #7
  %mul = fmul double %42, %call
  store double %mul, ptr %abs_value, align 8, !tbaa !25
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then41
  br label %if.end54

if.else44:                                        ; preds = %cond.end36
  %46 = load double, ptr %ai, align 8, !tbaa !25
  %47 = load double, ptr %ar, align 8, !tbaa !25
  %add45 = fadd double %46, %47
  %48 = load double, ptr %ai, align 8, !tbaa !25
  %cmp46 = fcmp oeq double %add45, %48
  br i1 %cmp46, label %if.then47, label %if.else48

if.then47:                                        ; preds = %if.else44
  %49 = load double, ptr %ai, align 8, !tbaa !25
  store double %49, ptr %abs_value, align 8, !tbaa !25
  br label %if.end53

if.else48:                                        ; preds = %if.else44
  %50 = load double, ptr %ar, align 8, !tbaa !25
  %51 = load double, ptr %ai, align 8, !tbaa !25
  %div49 = fdiv double %50, %51
  store double %div49, ptr %r, align 8, !tbaa !25
  %52 = load double, ptr %ai, align 8, !tbaa !25
  %53 = load double, ptr %r, align 8, !tbaa !25
  %54 = load double, ptr %r, align 8, !tbaa !25
  %55 = call double @llvm.fmuladd.f64(double %53, double %54, double 1.000000e+00)
  %call51 = call double @sqrt(double noundef %55) #7
  %mul52 = fmul double %52, %call51
  store double %mul52, ptr %abs_value, align 8, !tbaa !25
  br label %if.end53

if.end53:                                         ; preds = %if.else48, %if.then47
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end43
  call void @llvm.lifetime.end.p0(i64 8, ptr %ai) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ar) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #7
  %56 = load double, ptr %abs_value, align 8, !tbaa !25
  %cmp55 = fcmp oeq double %56, 0.000000e+00
  br i1 %cmp55, label %if.then56, label %if.end60

if.then56:                                        ; preds = %if.end54
  %57 = load double, ptr %abs_value, align 8, !tbaa !25
  %div57 = fdiv double 1.000000e+00, %57
  %58 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %condest58 = getelementptr inbounds %struct.klu_l_common_struct, ptr %58, i32 0, i32 19
  store double %div57, ptr %condest58, align 8, !tbaa !33
  %59 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %status59 = getelementptr inbounds %struct.klu_l_common_struct, ptr %59, i32 0, i32 11
  store i64 1, ptr %status59, align 8, !tbaa !8
  store i64 1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end60:                                         ; preds = %if.end54
  br label %for.inc

for.inc:                                          ; preds = %if.end60
  %60 = load i64, ptr %i, align 8, !tbaa !18
  %inc = add nsw i64 %60, 1
  store i64 %inc, ptr %i, align 8, !tbaa !18
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  store double 0.000000e+00, ptr %anorm, align 8, !tbaa !25
  %61 = load ptr, ptr %Ax.addr, align 8, !tbaa !4
  store ptr %61, ptr %Aentry, align 8, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !18
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc132, %for.end
  %62 = load i64, ptr %i, align 8, !tbaa !18
  %63 = load i64, ptr %n, align 8, !tbaa !18
  %cmp62 = icmp slt i64 %62, %63
  br i1 %cmp62, label %for.body63, label %for.end134

for.body63:                                       ; preds = %for.cond61
  %64 = load ptr, ptr %Ap.addr, align 8, !tbaa !4
  %65 = load i64, ptr %i, align 8, !tbaa !18
  %add64 = add nsw i64 %65, 1
  %arrayidx65 = getelementptr inbounds i64, ptr %64, i64 %add64
  %66 = load i64, ptr %arrayidx65, align 8, !tbaa !18
  store i64 %66, ptr %pend, align 8, !tbaa !18
  store double 0.000000e+00, ptr %csum, align 8, !tbaa !25
  %67 = load ptr, ptr %Ap.addr, align 8, !tbaa !4
  %68 = load i64, ptr %i, align 8, !tbaa !18
  %arrayidx66 = getelementptr inbounds i64, ptr %67, i64 %68
  %69 = load i64, ptr %arrayidx66, align 8, !tbaa !18
  store i64 %69, ptr %j, align 8, !tbaa !18
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc126, %for.body63
  %70 = load i64, ptr %j, align 8, !tbaa !18
  %71 = load i64, ptr %pend, align 8, !tbaa !18
  %cmp68 = icmp slt i64 %70, %71
  br i1 %cmp68, label %for.body69, label %for.end128

for.body69:                                       ; preds = %for.cond67
  call void @llvm.lifetime.start.p0(i64 8, ptr %r70) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ar71) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ai72) #7
  %72 = load ptr, ptr %Aentry, align 8, !tbaa !4
  %73 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx73 = getelementptr inbounds %struct.Double_Complex, ptr %72, i64 %73
  %component74 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx73, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [2 x double], ptr %component74, i64 0, i64 0
  %74 = load double, ptr %arrayidx75, align 8, !tbaa !25
  %cmp76 = fcmp olt double %74, 0.000000e+00
  br i1 %cmp76, label %cond.true77, label %cond.false82

cond.true77:                                      ; preds = %for.body69
  %75 = load ptr, ptr %Aentry, align 8, !tbaa !4
  %76 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx78 = getelementptr inbounds %struct.Double_Complex, ptr %75, i64 %76
  %component79 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx78, i32 0, i32 0
  %arrayidx80 = getelementptr inbounds [2 x double], ptr %component79, i64 0, i64 0
  %77 = load double, ptr %arrayidx80, align 8, !tbaa !25
  %fneg81 = fneg double %77
  br label %cond.end86

cond.false82:                                     ; preds = %for.body69
  %78 = load ptr, ptr %Aentry, align 8, !tbaa !4
  %79 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx83 = getelementptr inbounds %struct.Double_Complex, ptr %78, i64 %79
  %component84 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx83, i32 0, i32 0
  %arrayidx85 = getelementptr inbounds [2 x double], ptr %component84, i64 0, i64 0
  %80 = load double, ptr %arrayidx85, align 8, !tbaa !25
  br label %cond.end86

cond.end86:                                       ; preds = %cond.false82, %cond.true77
  %cond87 = phi double [ %fneg81, %cond.true77 ], [ %80, %cond.false82 ]
  store double %cond87, ptr %ar71, align 8, !tbaa !25
  %81 = load ptr, ptr %Aentry, align 8, !tbaa !4
  %82 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx88 = getelementptr inbounds %struct.Double_Complex, ptr %81, i64 %82
  %component89 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx88, i32 0, i32 0
  %arrayidx90 = getelementptr inbounds [2 x double], ptr %component89, i64 0, i64 1
  %83 = load double, ptr %arrayidx90, align 8, !tbaa !25
  %cmp91 = fcmp olt double %83, 0.000000e+00
  br i1 %cmp91, label %cond.true92, label %cond.false97

cond.true92:                                      ; preds = %cond.end86
  %84 = load ptr, ptr %Aentry, align 8, !tbaa !4
  %85 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx93 = getelementptr inbounds %struct.Double_Complex, ptr %84, i64 %85
  %component94 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx93, i32 0, i32 0
  %arrayidx95 = getelementptr inbounds [2 x double], ptr %component94, i64 0, i64 1
  %86 = load double, ptr %arrayidx95, align 8, !tbaa !25
  %fneg96 = fneg double %86
  br label %cond.end101

cond.false97:                                     ; preds = %cond.end86
  %87 = load ptr, ptr %Aentry, align 8, !tbaa !4
  %88 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx98 = getelementptr inbounds %struct.Double_Complex, ptr %87, i64 %88
  %component99 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx98, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [2 x double], ptr %component99, i64 0, i64 1
  %89 = load double, ptr %arrayidx100, align 8, !tbaa !25
  br label %cond.end101

cond.end101:                                      ; preds = %cond.false97, %cond.true92
  %cond102 = phi double [ %fneg96, %cond.true92 ], [ %89, %cond.false97 ]
  store double %cond102, ptr %ai72, align 8, !tbaa !25
  %90 = load double, ptr %ar71, align 8, !tbaa !25
  %91 = load double, ptr %ai72, align 8, !tbaa !25
  %cmp103 = fcmp oge double %90, %91
  br i1 %cmp103, label %if.then104, label %if.else114

if.then104:                                       ; preds = %cond.end101
  %92 = load double, ptr %ar71, align 8, !tbaa !25
  %93 = load double, ptr %ai72, align 8, !tbaa !25
  %add105 = fadd double %92, %93
  %94 = load double, ptr %ar71, align 8, !tbaa !25
  %cmp106 = fcmp oeq double %add105, %94
  br i1 %cmp106, label %if.then107, label %if.else108

if.then107:                                       ; preds = %if.then104
  %95 = load double, ptr %ar71, align 8, !tbaa !25
  store double %95, ptr %abs_value, align 8, !tbaa !25
  br label %if.end113

if.else108:                                       ; preds = %if.then104
  %96 = load double, ptr %ai72, align 8, !tbaa !25
  %97 = load double, ptr %ar71, align 8, !tbaa !25
  %div109 = fdiv double %96, %97
  store double %div109, ptr %r70, align 8, !tbaa !25
  %98 = load double, ptr %ar71, align 8, !tbaa !25
  %99 = load double, ptr %r70, align 8, !tbaa !25
  %100 = load double, ptr %r70, align 8, !tbaa !25
  %101 = call double @llvm.fmuladd.f64(double %99, double %100, double 1.000000e+00)
  %call111 = call double @sqrt(double noundef %101) #7
  %mul112 = fmul double %98, %call111
  store double %mul112, ptr %abs_value, align 8, !tbaa !25
  br label %if.end113

if.end113:                                        ; preds = %if.else108, %if.then107
  br label %if.end124

if.else114:                                       ; preds = %cond.end101
  %102 = load double, ptr %ai72, align 8, !tbaa !25
  %103 = load double, ptr %ar71, align 8, !tbaa !25
  %add115 = fadd double %102, %103
  %104 = load double, ptr %ai72, align 8, !tbaa !25
  %cmp116 = fcmp oeq double %add115, %104
  br i1 %cmp116, label %if.then117, label %if.else118

if.then117:                                       ; preds = %if.else114
  %105 = load double, ptr %ai72, align 8, !tbaa !25
  store double %105, ptr %abs_value, align 8, !tbaa !25
  br label %if.end123

if.else118:                                       ; preds = %if.else114
  %106 = load double, ptr %ar71, align 8, !tbaa !25
  %107 = load double, ptr %ai72, align 8, !tbaa !25
  %div119 = fdiv double %106, %107
  store double %div119, ptr %r70, align 8, !tbaa !25
  %108 = load double, ptr %ai72, align 8, !tbaa !25
  %109 = load double, ptr %r70, align 8, !tbaa !25
  %110 = load double, ptr %r70, align 8, !tbaa !25
  %111 = call double @llvm.fmuladd.f64(double %109, double %110, double 1.000000e+00)
  %call121 = call double @sqrt(double noundef %111) #7
  %mul122 = fmul double %108, %call121
  store double %mul122, ptr %abs_value, align 8, !tbaa !25
  br label %if.end123

if.end123:                                        ; preds = %if.else118, %if.then117
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.end113
  call void @llvm.lifetime.end.p0(i64 8, ptr %ai72) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ar71) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %r70) #7
  %112 = load double, ptr %abs_value, align 8, !tbaa !25
  %113 = load double, ptr %csum, align 8, !tbaa !25
  %add125 = fadd double %113, %112
  store double %add125, ptr %csum, align 8, !tbaa !25
  br label %for.inc126

for.inc126:                                       ; preds = %if.end124
  %114 = load i64, ptr %j, align 8, !tbaa !18
  %inc127 = add nsw i64 %114, 1
  store i64 %inc127, ptr %j, align 8, !tbaa !18
  br label %for.cond67, !llvm.loop !36

for.end128:                                       ; preds = %for.cond67
  %115 = load double, ptr %csum, align 8, !tbaa !25
  %116 = load double, ptr %anorm, align 8, !tbaa !25
  %cmp129 = fcmp ogt double %115, %116
  br i1 %cmp129, label %if.then130, label %if.end131

if.then130:                                       ; preds = %for.end128
  %117 = load double, ptr %csum, align 8, !tbaa !25
  store double %117, ptr %anorm, align 8, !tbaa !25
  br label %if.end131

if.end131:                                        ; preds = %if.then130, %for.end128
  br label %for.inc132

for.inc132:                                       ; preds = %if.end131
  %118 = load i64, ptr %i, align 8, !tbaa !18
  %inc133 = add nsw i64 %118, 1
  store i64 %inc133, ptr %i, align 8, !tbaa !18
  br label %for.cond61, !llvm.loop !37

for.end134:                                       ; preds = %for.cond61
  %119 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Xwork = getelementptr inbounds %struct.klu_l_numeric, ptr %119, i32 0, i32 18
  %120 = load ptr, ptr %Xwork, align 8, !tbaa !38
  store ptr %120, ptr %X, align 8, !tbaa !4
  %121 = load i64, ptr %n, align 8, !tbaa !18
  %122 = load ptr, ptr %X, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds %struct.Double_Complex, ptr %122, i64 %121
  store ptr %add.ptr, ptr %X, align 8, !tbaa !4
  %123 = load ptr, ptr %X, align 8, !tbaa !4
  %124 = load i64, ptr %n, align 8, !tbaa !18
  %add.ptr135 = getelementptr inbounds %struct.Double_Complex, ptr %123, i64 %124
  store ptr %add.ptr135, ptr %S, align 8, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !18
  br label %for.cond136

for.cond136:                                      ; preds = %for.inc155, %for.end134
  %125 = load i64, ptr %i, align 8, !tbaa !18
  %126 = load i64, ptr %n, align 8, !tbaa !18
  %cmp137 = icmp slt i64 %125, %126
  br i1 %cmp137, label %for.body138, label %for.end157

for.body138:                                      ; preds = %for.cond136
  %127 = load ptr, ptr %S, align 8, !tbaa !4
  %128 = load i64, ptr %i, align 8, !tbaa !18
  %arrayidx139 = getelementptr inbounds %struct.Double_Complex, ptr %127, i64 %128
  %component140 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx139, i32 0, i32 0
  %arrayidx141 = getelementptr inbounds [2 x double], ptr %component140, i64 0, i64 0
  store double 0.000000e+00, ptr %arrayidx141, align 8, !tbaa !25
  %129 = load ptr, ptr %S, align 8, !tbaa !4
  %130 = load i64, ptr %i, align 8, !tbaa !18
  %arrayidx142 = getelementptr inbounds %struct.Double_Complex, ptr %129, i64 %130
  %component143 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx142, i32 0, i32 0
  %arrayidx144 = getelementptr inbounds [2 x double], ptr %component143, i64 0, i64 1
  store double 0.000000e+00, ptr %arrayidx144, align 8, !tbaa !25
  %131 = load ptr, ptr %X, align 8, !tbaa !4
  %132 = load i64, ptr %i, align 8, !tbaa !18
  %arrayidx145 = getelementptr inbounds %struct.Double_Complex, ptr %131, i64 %132
  %component146 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx145, i32 0, i32 0
  %arrayidx147 = getelementptr inbounds [2 x double], ptr %component146, i64 0, i64 0
  store double 0.000000e+00, ptr %arrayidx147, align 8, !tbaa !25
  %133 = load ptr, ptr %X, align 8, !tbaa !4
  %134 = load i64, ptr %i, align 8, !tbaa !18
  %arrayidx148 = getelementptr inbounds %struct.Double_Complex, ptr %133, i64 %134
  %component149 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx148, i32 0, i32 0
  %arrayidx150 = getelementptr inbounds [2 x double], ptr %component149, i64 0, i64 1
  store double 0.000000e+00, ptr %arrayidx150, align 8, !tbaa !25
  %135 = load i64, ptr %n, align 8, !tbaa !18
  %conv = sitofp i64 %135 to double
  %div151 = fdiv double 1.000000e+00, %conv
  %136 = load ptr, ptr %X, align 8, !tbaa !4
  %137 = load i64, ptr %i, align 8, !tbaa !18
  %arrayidx152 = getelementptr inbounds %struct.Double_Complex, ptr %136, i64 %137
  %component153 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx152, i32 0, i32 0
  %arrayidx154 = getelementptr inbounds [2 x double], ptr %component153, i64 0, i64 0
  store double %div151, ptr %arrayidx154, align 8, !tbaa !25
  br label %for.inc155

for.inc155:                                       ; preds = %for.body138
  %138 = load i64, ptr %i, align 8, !tbaa !18
  %inc156 = add nsw i64 %138, 1
  store i64 %inc156, ptr %i, align 8, !tbaa !18
  br label %for.cond136, !llvm.loop !39

for.end157:                                       ; preds = %for.cond136
  store i64 0, ptr %jmax, align 8, !tbaa !18
  store double 0.000000e+00, ptr %ainv_norm, align 8, !tbaa !25
  store i64 0, ptr %i, align 8, !tbaa !18
  br label %for.cond158

for.cond158:                                      ; preds = %for.inc449, %for.end157
  %139 = load i64, ptr %i, align 8, !tbaa !18
  %cmp159 = icmp slt i64 %139, 5
  br i1 %cmp159, label %for.body161, label %for.end451

for.body161:                                      ; preds = %for.cond158
  %140 = load i64, ptr %i, align 8, !tbaa !18
  %cmp162 = icmp sgt i64 %140, 0
  br i1 %cmp162, label %if.then164, label %if.end181

if.then164:                                       ; preds = %for.body161
  store i64 0, ptr %j, align 8, !tbaa !18
  br label %for.cond165

for.cond165:                                      ; preds = %for.inc175, %if.then164
  %141 = load i64, ptr %j, align 8, !tbaa !18
  %142 = load i64, ptr %n, align 8, !tbaa !18
  %cmp166 = icmp slt i64 %141, %142
  br i1 %cmp166, label %for.body168, label %for.end177

for.body168:                                      ; preds = %for.cond165
  %143 = load ptr, ptr %X, align 8, !tbaa !4
  %144 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx169 = getelementptr inbounds %struct.Double_Complex, ptr %143, i64 %144
  %component170 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx169, i32 0, i32 0
  %arrayidx171 = getelementptr inbounds [2 x double], ptr %component170, i64 0, i64 0
  store double 0.000000e+00, ptr %arrayidx171, align 8, !tbaa !25
  %145 = load ptr, ptr %X, align 8, !tbaa !4
  %146 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx172 = getelementptr inbounds %struct.Double_Complex, ptr %145, i64 %146
  %component173 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx172, i32 0, i32 0
  %arrayidx174 = getelementptr inbounds [2 x double], ptr %component173, i64 0, i64 1
  store double 0.000000e+00, ptr %arrayidx174, align 8, !tbaa !25
  br label %for.inc175

for.inc175:                                       ; preds = %for.body168
  %147 = load i64, ptr %j, align 8, !tbaa !18
  %inc176 = add nsw i64 %147, 1
  store i64 %inc176, ptr %j, align 8, !tbaa !18
  br label %for.cond165, !llvm.loop !40

for.end177:                                       ; preds = %for.cond165
  %148 = load ptr, ptr %X, align 8, !tbaa !4
  %149 = load i64, ptr %jmax, align 8, !tbaa !18
  %arrayidx178 = getelementptr inbounds %struct.Double_Complex, ptr %148, i64 %149
  %component179 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx178, i32 0, i32 0
  %arrayidx180 = getelementptr inbounds [2 x double], ptr %component179, i64 0, i64 0
  store double 1.000000e+00, ptr %arrayidx180, align 8, !tbaa !25
  br label %if.end181

if.end181:                                        ; preds = %for.end177, %for.body161
  %150 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %151 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %152 = load i64, ptr %n, align 8, !tbaa !18
  %153 = load ptr, ptr %X, align 8, !tbaa !4
  %154 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %call182 = call i64 @klu_zl_solve(ptr noundef %150, ptr noundef %151, i64 noundef %152, i64 noundef 1, ptr noundef %153, ptr noundef %154)
  %155 = load double, ptr %ainv_norm, align 8, !tbaa !25
  store double %155, ptr %est_old, align 8, !tbaa !25
  store double 0.000000e+00, ptr %ainv_norm, align 8, !tbaa !25
  store i64 0, ptr %j, align 8, !tbaa !18
  br label %for.cond183

for.cond183:                                      ; preds = %for.inc248, %if.end181
  %156 = load i64, ptr %j, align 8, !tbaa !18
  %157 = load i64, ptr %n, align 8, !tbaa !18
  %cmp184 = icmp slt i64 %156, %157
  br i1 %cmp184, label %for.body186, label %for.end250

for.body186:                                      ; preds = %for.cond183
  call void @llvm.lifetime.start.p0(i64 8, ptr %r187) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ar188) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ai189) #7
  %158 = load ptr, ptr %X, align 8, !tbaa !4
  %159 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx190 = getelementptr inbounds %struct.Double_Complex, ptr %158, i64 %159
  %component191 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx190, i32 0, i32 0
  %arrayidx192 = getelementptr inbounds [2 x double], ptr %component191, i64 0, i64 0
  %160 = load double, ptr %arrayidx192, align 8, !tbaa !25
  %cmp193 = fcmp olt double %160, 0.000000e+00
  br i1 %cmp193, label %cond.true195, label %cond.false200

cond.true195:                                     ; preds = %for.body186
  %161 = load ptr, ptr %X, align 8, !tbaa !4
  %162 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx196 = getelementptr inbounds %struct.Double_Complex, ptr %161, i64 %162
  %component197 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx196, i32 0, i32 0
  %arrayidx198 = getelementptr inbounds [2 x double], ptr %component197, i64 0, i64 0
  %163 = load double, ptr %arrayidx198, align 8, !tbaa !25
  %fneg199 = fneg double %163
  br label %cond.end204

cond.false200:                                    ; preds = %for.body186
  %164 = load ptr, ptr %X, align 8, !tbaa !4
  %165 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx201 = getelementptr inbounds %struct.Double_Complex, ptr %164, i64 %165
  %component202 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx201, i32 0, i32 0
  %arrayidx203 = getelementptr inbounds [2 x double], ptr %component202, i64 0, i64 0
  %166 = load double, ptr %arrayidx203, align 8, !tbaa !25
  br label %cond.end204

cond.end204:                                      ; preds = %cond.false200, %cond.true195
  %cond205 = phi double [ %fneg199, %cond.true195 ], [ %166, %cond.false200 ]
  store double %cond205, ptr %ar188, align 8, !tbaa !25
  %167 = load ptr, ptr %X, align 8, !tbaa !4
  %168 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx206 = getelementptr inbounds %struct.Double_Complex, ptr %167, i64 %168
  %component207 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx206, i32 0, i32 0
  %arrayidx208 = getelementptr inbounds [2 x double], ptr %component207, i64 0, i64 1
  %169 = load double, ptr %arrayidx208, align 8, !tbaa !25
  %cmp209 = fcmp olt double %169, 0.000000e+00
  br i1 %cmp209, label %cond.true211, label %cond.false216

cond.true211:                                     ; preds = %cond.end204
  %170 = load ptr, ptr %X, align 8, !tbaa !4
  %171 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx212 = getelementptr inbounds %struct.Double_Complex, ptr %170, i64 %171
  %component213 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx212, i32 0, i32 0
  %arrayidx214 = getelementptr inbounds [2 x double], ptr %component213, i64 0, i64 1
  %172 = load double, ptr %arrayidx214, align 8, !tbaa !25
  %fneg215 = fneg double %172
  br label %cond.end220

cond.false216:                                    ; preds = %cond.end204
  %173 = load ptr, ptr %X, align 8, !tbaa !4
  %174 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx217 = getelementptr inbounds %struct.Double_Complex, ptr %173, i64 %174
  %component218 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx217, i32 0, i32 0
  %arrayidx219 = getelementptr inbounds [2 x double], ptr %component218, i64 0, i64 1
  %175 = load double, ptr %arrayidx219, align 8, !tbaa !25
  br label %cond.end220

cond.end220:                                      ; preds = %cond.false216, %cond.true211
  %cond221 = phi double [ %fneg215, %cond.true211 ], [ %175, %cond.false216 ]
  store double %cond221, ptr %ai189, align 8, !tbaa !25
  %176 = load double, ptr %ar188, align 8, !tbaa !25
  %177 = load double, ptr %ai189, align 8, !tbaa !25
  %cmp222 = fcmp oge double %176, %177
  br i1 %cmp222, label %if.then224, label %if.else235

if.then224:                                       ; preds = %cond.end220
  %178 = load double, ptr %ar188, align 8, !tbaa !25
  %179 = load double, ptr %ai189, align 8, !tbaa !25
  %add225 = fadd double %178, %179
  %180 = load double, ptr %ar188, align 8, !tbaa !25
  %cmp226 = fcmp oeq double %add225, %180
  br i1 %cmp226, label %if.then228, label %if.else229

if.then228:                                       ; preds = %if.then224
  %181 = load double, ptr %ar188, align 8, !tbaa !25
  store double %181, ptr %abs_value, align 8, !tbaa !25
  br label %if.end234

if.else229:                                       ; preds = %if.then224
  %182 = load double, ptr %ai189, align 8, !tbaa !25
  %183 = load double, ptr %ar188, align 8, !tbaa !25
  %div230 = fdiv double %182, %183
  store double %div230, ptr %r187, align 8, !tbaa !25
  %184 = load double, ptr %ar188, align 8, !tbaa !25
  %185 = load double, ptr %r187, align 8, !tbaa !25
  %186 = load double, ptr %r187, align 8, !tbaa !25
  %187 = call double @llvm.fmuladd.f64(double %185, double %186, double 1.000000e+00)
  %call232 = call double @sqrt(double noundef %187) #7
  %mul233 = fmul double %184, %call232
  store double %mul233, ptr %abs_value, align 8, !tbaa !25
  br label %if.end234

if.end234:                                        ; preds = %if.else229, %if.then228
  br label %if.end246

if.else235:                                       ; preds = %cond.end220
  %188 = load double, ptr %ai189, align 8, !tbaa !25
  %189 = load double, ptr %ar188, align 8, !tbaa !25
  %add236 = fadd double %188, %189
  %190 = load double, ptr %ai189, align 8, !tbaa !25
  %cmp237 = fcmp oeq double %add236, %190
  br i1 %cmp237, label %if.then239, label %if.else240

if.then239:                                       ; preds = %if.else235
  %191 = load double, ptr %ai189, align 8, !tbaa !25
  store double %191, ptr %abs_value, align 8, !tbaa !25
  br label %if.end245

if.else240:                                       ; preds = %if.else235
  %192 = load double, ptr %ar188, align 8, !tbaa !25
  %193 = load double, ptr %ai189, align 8, !tbaa !25
  %div241 = fdiv double %192, %193
  store double %div241, ptr %r187, align 8, !tbaa !25
  %194 = load double, ptr %ai189, align 8, !tbaa !25
  %195 = load double, ptr %r187, align 8, !tbaa !25
  %196 = load double, ptr %r187, align 8, !tbaa !25
  %197 = call double @llvm.fmuladd.f64(double %195, double %196, double 1.000000e+00)
  %call243 = call double @sqrt(double noundef %197) #7
  %mul244 = fmul double %194, %call243
  store double %mul244, ptr %abs_value, align 8, !tbaa !25
  br label %if.end245

if.end245:                                        ; preds = %if.else240, %if.then239
  br label %if.end246

if.end246:                                        ; preds = %if.end245, %if.end234
  call void @llvm.lifetime.end.p0(i64 8, ptr %ai189) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ar188) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %r187) #7
  %198 = load double, ptr %abs_value, align 8, !tbaa !25
  %199 = load double, ptr %ainv_norm, align 8, !tbaa !25
  %add247 = fadd double %199, %198
  store double %add247, ptr %ainv_norm, align 8, !tbaa !25
  br label %for.inc248

for.inc248:                                       ; preds = %if.end246
  %200 = load i64, ptr %j, align 8, !tbaa !18
  %inc249 = add nsw i64 %200, 1
  store i64 %inc249, ptr %j, align 8, !tbaa !18
  br label %for.cond183, !llvm.loop !41

for.end250:                                       ; preds = %for.cond183
  store i64 0, ptr %j, align 8, !tbaa !18
  br label %for.cond251

for.cond251:                                      ; preds = %for.inc352, %for.end250
  %201 = load i64, ptr %j, align 8, !tbaa !18
  %202 = load i64, ptr %n, align 8, !tbaa !18
  %cmp252 = icmp slt i64 %201, %202
  br i1 %cmp252, label %for.body254, label %for.end354

for.body254:                                      ; preds = %for.cond251
  %203 = load ptr, ptr %X, align 8, !tbaa !4
  %204 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx255 = getelementptr inbounds %struct.Double_Complex, ptr %203, i64 %204
  %component256 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx255, i32 0, i32 0
  %arrayidx257 = getelementptr inbounds [2 x double], ptr %component256, i64 0, i64 0
  %205 = load double, ptr %arrayidx257, align 8, !tbaa !25
  %cmp258 = fcmp une double %205, 0.000000e+00
  br i1 %cmp258, label %if.then266, label %lor.lhs.false260

lor.lhs.false260:                                 ; preds = %for.body254
  %206 = load ptr, ptr %X, align 8, !tbaa !4
  %207 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx261 = getelementptr inbounds %struct.Double_Complex, ptr %206, i64 %207
  %component262 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx261, i32 0, i32 0
  %arrayidx263 = getelementptr inbounds [2 x double], ptr %component262, i64 0, i64 1
  %208 = load double, ptr %arrayidx263, align 8, !tbaa !25
  %cmp264 = fcmp une double %208, 0.000000e+00
  br i1 %cmp264, label %if.then266, label %if.else341

if.then266:                                       ; preds = %lor.lhs.false260, %for.body254
  call void @llvm.lifetime.start.p0(i64 8, ptr %r267) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ar268) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ai269) #7
  %209 = load ptr, ptr %X, align 8, !tbaa !4
  %210 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx270 = getelementptr inbounds %struct.Double_Complex, ptr %209, i64 %210
  %component271 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx270, i32 0, i32 0
  %arrayidx272 = getelementptr inbounds [2 x double], ptr %component271, i64 0, i64 0
  %211 = load double, ptr %arrayidx272, align 8, !tbaa !25
  %cmp273 = fcmp olt double %211, 0.000000e+00
  br i1 %cmp273, label %cond.true275, label %cond.false280

cond.true275:                                     ; preds = %if.then266
  %212 = load ptr, ptr %X, align 8, !tbaa !4
  %213 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx276 = getelementptr inbounds %struct.Double_Complex, ptr %212, i64 %213
  %component277 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx276, i32 0, i32 0
  %arrayidx278 = getelementptr inbounds [2 x double], ptr %component277, i64 0, i64 0
  %214 = load double, ptr %arrayidx278, align 8, !tbaa !25
  %fneg279 = fneg double %214
  br label %cond.end284

cond.false280:                                    ; preds = %if.then266
  %215 = load ptr, ptr %X, align 8, !tbaa !4
  %216 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx281 = getelementptr inbounds %struct.Double_Complex, ptr %215, i64 %216
  %component282 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx281, i32 0, i32 0
  %arrayidx283 = getelementptr inbounds [2 x double], ptr %component282, i64 0, i64 0
  %217 = load double, ptr %arrayidx283, align 8, !tbaa !25
  br label %cond.end284

cond.end284:                                      ; preds = %cond.false280, %cond.true275
  %cond285 = phi double [ %fneg279, %cond.true275 ], [ %217, %cond.false280 ]
  store double %cond285, ptr %ar268, align 8, !tbaa !25
  %218 = load ptr, ptr %X, align 8, !tbaa !4
  %219 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx286 = getelementptr inbounds %struct.Double_Complex, ptr %218, i64 %219
  %component287 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx286, i32 0, i32 0
  %arrayidx288 = getelementptr inbounds [2 x double], ptr %component287, i64 0, i64 1
  %220 = load double, ptr %arrayidx288, align 8, !tbaa !25
  %cmp289 = fcmp olt double %220, 0.000000e+00
  br i1 %cmp289, label %cond.true291, label %cond.false296

cond.true291:                                     ; preds = %cond.end284
  %221 = load ptr, ptr %X, align 8, !tbaa !4
  %222 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx292 = getelementptr inbounds %struct.Double_Complex, ptr %221, i64 %222
  %component293 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx292, i32 0, i32 0
  %arrayidx294 = getelementptr inbounds [2 x double], ptr %component293, i64 0, i64 1
  %223 = load double, ptr %arrayidx294, align 8, !tbaa !25
  %fneg295 = fneg double %223
  br label %cond.end300

cond.false296:                                    ; preds = %cond.end284
  %224 = load ptr, ptr %X, align 8, !tbaa !4
  %225 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx297 = getelementptr inbounds %struct.Double_Complex, ptr %224, i64 %225
  %component298 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx297, i32 0, i32 0
  %arrayidx299 = getelementptr inbounds [2 x double], ptr %component298, i64 0, i64 1
  %226 = load double, ptr %arrayidx299, align 8, !tbaa !25
  br label %cond.end300

cond.end300:                                      ; preds = %cond.false296, %cond.true291
  %cond301 = phi double [ %fneg295, %cond.true291 ], [ %226, %cond.false296 ]
  store double %cond301, ptr %ai269, align 8, !tbaa !25
  %227 = load double, ptr %ar268, align 8, !tbaa !25
  %228 = load double, ptr %ai269, align 8, !tbaa !25
  %cmp302 = fcmp oge double %227, %228
  br i1 %cmp302, label %if.then304, label %if.else315

if.then304:                                       ; preds = %cond.end300
  %229 = load double, ptr %ar268, align 8, !tbaa !25
  %230 = load double, ptr %ai269, align 8, !tbaa !25
  %add305 = fadd double %229, %230
  %231 = load double, ptr %ar268, align 8, !tbaa !25
  %cmp306 = fcmp oeq double %add305, %231
  br i1 %cmp306, label %if.then308, label %if.else309

if.then308:                                       ; preds = %if.then304
  %232 = load double, ptr %ar268, align 8, !tbaa !25
  store double %232, ptr %abs_value, align 8, !tbaa !25
  br label %if.end314

if.else309:                                       ; preds = %if.then304
  %233 = load double, ptr %ai269, align 8, !tbaa !25
  %234 = load double, ptr %ar268, align 8, !tbaa !25
  %div310 = fdiv double %233, %234
  store double %div310, ptr %r267, align 8, !tbaa !25
  %235 = load double, ptr %ar268, align 8, !tbaa !25
  %236 = load double, ptr %r267, align 8, !tbaa !25
  %237 = load double, ptr %r267, align 8, !tbaa !25
  %238 = call double @llvm.fmuladd.f64(double %236, double %237, double 1.000000e+00)
  %call312 = call double @sqrt(double noundef %238) #7
  %mul313 = fmul double %235, %call312
  store double %mul313, ptr %abs_value, align 8, !tbaa !25
  br label %if.end314

if.end314:                                        ; preds = %if.else309, %if.then308
  br label %if.end326

if.else315:                                       ; preds = %cond.end300
  %239 = load double, ptr %ai269, align 8, !tbaa !25
  %240 = load double, ptr %ar268, align 8, !tbaa !25
  %add316 = fadd double %239, %240
  %241 = load double, ptr %ai269, align 8, !tbaa !25
  %cmp317 = fcmp oeq double %add316, %241
  br i1 %cmp317, label %if.then319, label %if.else320

if.then319:                                       ; preds = %if.else315
  %242 = load double, ptr %ai269, align 8, !tbaa !25
  store double %242, ptr %abs_value, align 8, !tbaa !25
  br label %if.end325

if.else320:                                       ; preds = %if.else315
  %243 = load double, ptr %ar268, align 8, !tbaa !25
  %244 = load double, ptr %ai269, align 8, !tbaa !25
  %div321 = fdiv double %243, %244
  store double %div321, ptr %r267, align 8, !tbaa !25
  %245 = load double, ptr %ai269, align 8, !tbaa !25
  %246 = load double, ptr %r267, align 8, !tbaa !25
  %247 = load double, ptr %r267, align 8, !tbaa !25
  %248 = call double @llvm.fmuladd.f64(double %246, double %247, double 1.000000e+00)
  %call323 = call double @sqrt(double noundef %248) #7
  %mul324 = fmul double %245, %call323
  store double %mul324, ptr %abs_value, align 8, !tbaa !25
  br label %if.end325

if.end325:                                        ; preds = %if.else320, %if.then319
  br label %if.end326

if.end326:                                        ; preds = %if.end325, %if.end314
  call void @llvm.lifetime.end.p0(i64 8, ptr %ai269) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ar268) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %r267) #7
  %249 = load ptr, ptr %X, align 8, !tbaa !4
  %250 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx327 = getelementptr inbounds %struct.Double_Complex, ptr %249, i64 %250
  %component328 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx327, i32 0, i32 0
  %arrayidx329 = getelementptr inbounds [2 x double], ptr %component328, i64 0, i64 0
  %251 = load double, ptr %arrayidx329, align 8, !tbaa !25
  %252 = load double, ptr %abs_value, align 8, !tbaa !25
  %div330 = fdiv double %251, %252
  %253 = load ptr, ptr %S, align 8, !tbaa !4
  %254 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx331 = getelementptr inbounds %struct.Double_Complex, ptr %253, i64 %254
  %component332 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx331, i32 0, i32 0
  %arrayidx333 = getelementptr inbounds [2 x double], ptr %component332, i64 0, i64 0
  store double %div330, ptr %arrayidx333, align 8, !tbaa !25
  %255 = load ptr, ptr %X, align 8, !tbaa !4
  %256 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx334 = getelementptr inbounds %struct.Double_Complex, ptr %255, i64 %256
  %component335 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx334, i32 0, i32 0
  %arrayidx336 = getelementptr inbounds [2 x double], ptr %component335, i64 0, i64 1
  %257 = load double, ptr %arrayidx336, align 8, !tbaa !25
  %258 = load double, ptr %abs_value, align 8, !tbaa !25
  %div337 = fdiv double %257, %258
  %259 = load ptr, ptr %S, align 8, !tbaa !4
  %260 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx338 = getelementptr inbounds %struct.Double_Complex, ptr %259, i64 %260
  %component339 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx338, i32 0, i32 0
  %arrayidx340 = getelementptr inbounds [2 x double], ptr %component339, i64 0, i64 1
  store double %div337, ptr %arrayidx340, align 8, !tbaa !25
  br label %if.end351

if.else341:                                       ; preds = %lor.lhs.false260
  %261 = load ptr, ptr %S, align 8, !tbaa !4
  %262 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx342 = getelementptr inbounds %struct.Double_Complex, ptr %261, i64 %262
  %component343 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx342, i32 0, i32 0
  %arrayidx344 = getelementptr inbounds [2 x double], ptr %component343, i64 0, i64 0
  store double 0.000000e+00, ptr %arrayidx344, align 8, !tbaa !25
  %263 = load ptr, ptr %S, align 8, !tbaa !4
  %264 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx345 = getelementptr inbounds %struct.Double_Complex, ptr %263, i64 %264
  %component346 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx345, i32 0, i32 0
  %arrayidx347 = getelementptr inbounds [2 x double], ptr %component346, i64 0, i64 1
  store double 0.000000e+00, ptr %arrayidx347, align 8, !tbaa !25
  %265 = load ptr, ptr %S, align 8, !tbaa !4
  %266 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx348 = getelementptr inbounds %struct.Double_Complex, ptr %265, i64 %266
  %component349 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx348, i32 0, i32 0
  %arrayidx350 = getelementptr inbounds [2 x double], ptr %component349, i64 0, i64 0
  store double 1.000000e+00, ptr %arrayidx350, align 8, !tbaa !25
  br label %if.end351

if.end351:                                        ; preds = %if.else341, %if.end326
  br label %for.inc352

for.inc352:                                       ; preds = %if.end351
  %267 = load i64, ptr %j, align 8, !tbaa !18
  %inc353 = add nsw i64 %267, 1
  store i64 %inc353, ptr %j, align 8, !tbaa !18
  br label %for.cond251, !llvm.loop !42

for.end354:                                       ; preds = %for.cond251
  %268 = load i64, ptr %i, align 8, !tbaa !18
  %cmp355 = icmp sgt i64 %268, 0
  br i1 %cmp355, label %land.lhs.true, label %if.end360

land.lhs.true:                                    ; preds = %for.end354
  %269 = load double, ptr %ainv_norm, align 8, !tbaa !25
  %270 = load double, ptr %est_old, align 8, !tbaa !25
  %cmp357 = fcmp ole double %269, %270
  br i1 %cmp357, label %if.then359, label %if.end360

if.then359:                                       ; preds = %land.lhs.true
  br label %for.end451

if.end360:                                        ; preds = %land.lhs.true, %for.end354
  store i64 0, ptr %j, align 8, !tbaa !18
  br label %for.cond361

for.cond361:                                      ; preds = %for.inc367, %if.end360
  %271 = load i64, ptr %j, align 8, !tbaa !18
  %272 = load i64, ptr %n, align 8, !tbaa !18
  %cmp362 = icmp slt i64 %271, %272
  br i1 %cmp362, label %for.body364, label %for.end369

for.body364:                                      ; preds = %for.cond361
  %273 = load ptr, ptr %X, align 8, !tbaa !4
  %274 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx365 = getelementptr inbounds %struct.Double_Complex, ptr %273, i64 %274
  %275 = load ptr, ptr %S, align 8, !tbaa !4
  %276 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx366 = getelementptr inbounds %struct.Double_Complex, ptr %275, i64 %276
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx365, ptr align 8 %arrayidx366, i64 16, i1 false), !tbaa.struct !26
  br label %for.inc367

for.inc367:                                       ; preds = %for.body364
  %277 = load i64, ptr %j, align 8, !tbaa !18
  %inc368 = add nsw i64 %277, 1
  store i64 %inc368, ptr %j, align 8, !tbaa !18
  br label %for.cond361, !llvm.loop !43

for.end369:                                       ; preds = %for.cond361
  %278 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %279 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %280 = load i64, ptr %n, align 8, !tbaa !18
  %281 = load ptr, ptr %X, align 8, !tbaa !4
  %282 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %call370 = call i64 @klu_zl_tsolve(ptr noundef %278, ptr noundef %279, i64 noundef %280, i64 noundef 1, ptr noundef %281, i64 noundef 1, ptr noundef %282)
  store i64 0, ptr %jnew, align 8, !tbaa !18
  store double 0.000000e+00, ptr %Xmax, align 8, !tbaa !25
  store i64 0, ptr %j, align 8, !tbaa !18
  br label %for.cond371

for.cond371:                                      ; preds = %for.inc439, %for.end369
  %283 = load i64, ptr %j, align 8, !tbaa !18
  %284 = load i64, ptr %n, align 8, !tbaa !18
  %cmp372 = icmp slt i64 %283, %284
  br i1 %cmp372, label %for.body374, label %for.end441

for.body374:                                      ; preds = %for.cond371
  call void @llvm.lifetime.start.p0(i64 8, ptr %r375) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ar376) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ai377) #7
  %285 = load ptr, ptr %X, align 8, !tbaa !4
  %286 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx378 = getelementptr inbounds %struct.Double_Complex, ptr %285, i64 %286
  %component379 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx378, i32 0, i32 0
  %arrayidx380 = getelementptr inbounds [2 x double], ptr %component379, i64 0, i64 0
  %287 = load double, ptr %arrayidx380, align 8, !tbaa !25
  %cmp381 = fcmp olt double %287, 0.000000e+00
  br i1 %cmp381, label %cond.true383, label %cond.false388

cond.true383:                                     ; preds = %for.body374
  %288 = load ptr, ptr %X, align 8, !tbaa !4
  %289 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx384 = getelementptr inbounds %struct.Double_Complex, ptr %288, i64 %289
  %component385 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx384, i32 0, i32 0
  %arrayidx386 = getelementptr inbounds [2 x double], ptr %component385, i64 0, i64 0
  %290 = load double, ptr %arrayidx386, align 8, !tbaa !25
  %fneg387 = fneg double %290
  br label %cond.end392

cond.false388:                                    ; preds = %for.body374
  %291 = load ptr, ptr %X, align 8, !tbaa !4
  %292 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx389 = getelementptr inbounds %struct.Double_Complex, ptr %291, i64 %292
  %component390 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx389, i32 0, i32 0
  %arrayidx391 = getelementptr inbounds [2 x double], ptr %component390, i64 0, i64 0
  %293 = load double, ptr %arrayidx391, align 8, !tbaa !25
  br label %cond.end392

cond.end392:                                      ; preds = %cond.false388, %cond.true383
  %cond393 = phi double [ %fneg387, %cond.true383 ], [ %293, %cond.false388 ]
  store double %cond393, ptr %ar376, align 8, !tbaa !25
  %294 = load ptr, ptr %X, align 8, !tbaa !4
  %295 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx394 = getelementptr inbounds %struct.Double_Complex, ptr %294, i64 %295
  %component395 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx394, i32 0, i32 0
  %arrayidx396 = getelementptr inbounds [2 x double], ptr %component395, i64 0, i64 1
  %296 = load double, ptr %arrayidx396, align 8, !tbaa !25
  %cmp397 = fcmp olt double %296, 0.000000e+00
  br i1 %cmp397, label %cond.true399, label %cond.false404

cond.true399:                                     ; preds = %cond.end392
  %297 = load ptr, ptr %X, align 8, !tbaa !4
  %298 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx400 = getelementptr inbounds %struct.Double_Complex, ptr %297, i64 %298
  %component401 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx400, i32 0, i32 0
  %arrayidx402 = getelementptr inbounds [2 x double], ptr %component401, i64 0, i64 1
  %299 = load double, ptr %arrayidx402, align 8, !tbaa !25
  %fneg403 = fneg double %299
  br label %cond.end408

cond.false404:                                    ; preds = %cond.end392
  %300 = load ptr, ptr %X, align 8, !tbaa !4
  %301 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx405 = getelementptr inbounds %struct.Double_Complex, ptr %300, i64 %301
  %component406 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx405, i32 0, i32 0
  %arrayidx407 = getelementptr inbounds [2 x double], ptr %component406, i64 0, i64 1
  %302 = load double, ptr %arrayidx407, align 8, !tbaa !25
  br label %cond.end408

cond.end408:                                      ; preds = %cond.false404, %cond.true399
  %cond409 = phi double [ %fneg403, %cond.true399 ], [ %302, %cond.false404 ]
  store double %cond409, ptr %ai377, align 8, !tbaa !25
  %303 = load double, ptr %ar376, align 8, !tbaa !25
  %304 = load double, ptr %ai377, align 8, !tbaa !25
  %cmp410 = fcmp oge double %303, %304
  br i1 %cmp410, label %if.then412, label %if.else423

if.then412:                                       ; preds = %cond.end408
  %305 = load double, ptr %ar376, align 8, !tbaa !25
  %306 = load double, ptr %ai377, align 8, !tbaa !25
  %add413 = fadd double %305, %306
  %307 = load double, ptr %ar376, align 8, !tbaa !25
  %cmp414 = fcmp oeq double %add413, %307
  br i1 %cmp414, label %if.then416, label %if.else417

if.then416:                                       ; preds = %if.then412
  %308 = load double, ptr %ar376, align 8, !tbaa !25
  store double %308, ptr %xj, align 8, !tbaa !25
  br label %if.end422

if.else417:                                       ; preds = %if.then412
  %309 = load double, ptr %ai377, align 8, !tbaa !25
  %310 = load double, ptr %ar376, align 8, !tbaa !25
  %div418 = fdiv double %309, %310
  store double %div418, ptr %r375, align 8, !tbaa !25
  %311 = load double, ptr %ar376, align 8, !tbaa !25
  %312 = load double, ptr %r375, align 8, !tbaa !25
  %313 = load double, ptr %r375, align 8, !tbaa !25
  %314 = call double @llvm.fmuladd.f64(double %312, double %313, double 1.000000e+00)
  %call420 = call double @sqrt(double noundef %314) #7
  %mul421 = fmul double %311, %call420
  store double %mul421, ptr %xj, align 8, !tbaa !25
  br label %if.end422

if.end422:                                        ; preds = %if.else417, %if.then416
  br label %if.end434

if.else423:                                       ; preds = %cond.end408
  %315 = load double, ptr %ai377, align 8, !tbaa !25
  %316 = load double, ptr %ar376, align 8, !tbaa !25
  %add424 = fadd double %315, %316
  %317 = load double, ptr %ai377, align 8, !tbaa !25
  %cmp425 = fcmp oeq double %add424, %317
  br i1 %cmp425, label %if.then427, label %if.else428

if.then427:                                       ; preds = %if.else423
  %318 = load double, ptr %ai377, align 8, !tbaa !25
  store double %318, ptr %xj, align 8, !tbaa !25
  br label %if.end433

if.else428:                                       ; preds = %if.else423
  %319 = load double, ptr %ar376, align 8, !tbaa !25
  %320 = load double, ptr %ai377, align 8, !tbaa !25
  %div429 = fdiv double %319, %320
  store double %div429, ptr %r375, align 8, !tbaa !25
  %321 = load double, ptr %ai377, align 8, !tbaa !25
  %322 = load double, ptr %r375, align 8, !tbaa !25
  %323 = load double, ptr %r375, align 8, !tbaa !25
  %324 = call double @llvm.fmuladd.f64(double %322, double %323, double 1.000000e+00)
  %call431 = call double @sqrt(double noundef %324) #7
  %mul432 = fmul double %321, %call431
  store double %mul432, ptr %xj, align 8, !tbaa !25
  br label %if.end433

if.end433:                                        ; preds = %if.else428, %if.then427
  br label %if.end434

if.end434:                                        ; preds = %if.end433, %if.end422
  call void @llvm.lifetime.end.p0(i64 8, ptr %ai377) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ar376) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %r375) #7
  %325 = load double, ptr %xj, align 8, !tbaa !25
  %326 = load double, ptr %Xmax, align 8, !tbaa !25
  %cmp435 = fcmp ogt double %325, %326
  br i1 %cmp435, label %if.then437, label %if.end438

if.then437:                                       ; preds = %if.end434
  %327 = load double, ptr %xj, align 8, !tbaa !25
  store double %327, ptr %Xmax, align 8, !tbaa !25
  %328 = load i64, ptr %j, align 8, !tbaa !18
  store i64 %328, ptr %jnew, align 8, !tbaa !18
  br label %if.end438

if.end438:                                        ; preds = %if.then437, %if.end434
  br label %for.inc439

for.inc439:                                       ; preds = %if.end438
  %329 = load i64, ptr %j, align 8, !tbaa !18
  %inc440 = add nsw i64 %329, 1
  store i64 %inc440, ptr %j, align 8, !tbaa !18
  br label %for.cond371, !llvm.loop !44

for.end441:                                       ; preds = %for.cond371
  %330 = load i64, ptr %i, align 8, !tbaa !18
  %cmp442 = icmp sgt i64 %330, 0
  br i1 %cmp442, label %land.lhs.true444, label %if.end448

land.lhs.true444:                                 ; preds = %for.end441
  %331 = load i64, ptr %jnew, align 8, !tbaa !18
  %332 = load i64, ptr %jmax, align 8, !tbaa !18
  %cmp445 = icmp eq i64 %331, %332
  br i1 %cmp445, label %if.then447, label %if.end448

if.then447:                                       ; preds = %land.lhs.true444
  br label %for.end451

if.end448:                                        ; preds = %land.lhs.true444, %for.end441
  %333 = load i64, ptr %jnew, align 8, !tbaa !18
  store i64 %333, ptr %jmax, align 8, !tbaa !18
  br label %for.inc449

for.inc449:                                       ; preds = %if.end448
  %334 = load i64, ptr %i, align 8, !tbaa !18
  %inc450 = add nsw i64 %334, 1
  store i64 %inc450, ptr %i, align 8, !tbaa !18
  br label %for.cond158, !llvm.loop !45

for.end451:                                       ; preds = %if.then447, %if.then359, %for.cond158
  store i64 0, ptr %j, align 8, !tbaa !18
  br label %for.cond452

for.cond452:                                      ; preds = %for.inc480, %for.end451
  %335 = load i64, ptr %j, align 8, !tbaa !18
  %336 = load i64, ptr %n, align 8, !tbaa !18
  %cmp453 = icmp slt i64 %335, %336
  br i1 %cmp453, label %for.body455, label %for.end482

for.body455:                                      ; preds = %for.cond452
  %337 = load ptr, ptr %X, align 8, !tbaa !4
  %338 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx456 = getelementptr inbounds %struct.Double_Complex, ptr %337, i64 %338
  %component457 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx456, i32 0, i32 0
  %arrayidx458 = getelementptr inbounds [2 x double], ptr %component457, i64 0, i64 0
  store double 0.000000e+00, ptr %arrayidx458, align 8, !tbaa !25
  %339 = load ptr, ptr %X, align 8, !tbaa !4
  %340 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx459 = getelementptr inbounds %struct.Double_Complex, ptr %339, i64 %340
  %component460 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx459, i32 0, i32 0
  %arrayidx461 = getelementptr inbounds [2 x double], ptr %component460, i64 0, i64 1
  store double 0.000000e+00, ptr %arrayidx461, align 8, !tbaa !25
  %341 = load i64, ptr %j, align 8, !tbaa !18
  %rem = srem i64 %341, 2
  %tobool = icmp ne i64 %rem, 0
  br i1 %tobool, label %if.then462, label %if.else470

if.then462:                                       ; preds = %for.body455
  %342 = load i64, ptr %j, align 8, !tbaa !18
  %conv463 = sitofp i64 %342 to double
  %343 = load i64, ptr %n, align 8, !tbaa !18
  %sub = sub nsw i64 %343, 1
  %conv464 = sitofp i64 %sub to double
  %div465 = fdiv double %conv463, %conv464
  %add466 = fadd double 1.000000e+00, %div465
  %344 = load ptr, ptr %X, align 8, !tbaa !4
  %345 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx467 = getelementptr inbounds %struct.Double_Complex, ptr %344, i64 %345
  %component468 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx467, i32 0, i32 0
  %arrayidx469 = getelementptr inbounds [2 x double], ptr %component468, i64 0, i64 0
  store double %add466, ptr %arrayidx469, align 8, !tbaa !25
  br label %if.end479

if.else470:                                       ; preds = %for.body455
  %346 = load i64, ptr %j, align 8, !tbaa !18
  %conv471 = sitofp i64 %346 to double
  %347 = load i64, ptr %n, align 8, !tbaa !18
  %sub472 = sub nsw i64 %347, 1
  %conv473 = sitofp i64 %sub472 to double
  %div474 = fdiv double %conv471, %conv473
  %sub475 = fsub double -1.000000e+00, %div474
  %348 = load ptr, ptr %X, align 8, !tbaa !4
  %349 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx476 = getelementptr inbounds %struct.Double_Complex, ptr %348, i64 %349
  %component477 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx476, i32 0, i32 0
  %arrayidx478 = getelementptr inbounds [2 x double], ptr %component477, i64 0, i64 0
  store double %sub475, ptr %arrayidx478, align 8, !tbaa !25
  br label %if.end479

if.end479:                                        ; preds = %if.else470, %if.then462
  br label %for.inc480

for.inc480:                                       ; preds = %if.end479
  %350 = load i64, ptr %j, align 8, !tbaa !18
  %inc481 = add nsw i64 %350, 1
  store i64 %inc481, ptr %j, align 8, !tbaa !18
  br label %for.cond452, !llvm.loop !46

for.end482:                                       ; preds = %for.cond452
  %351 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %352 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %353 = load i64, ptr %n, align 8, !tbaa !18
  %354 = load ptr, ptr %X, align 8, !tbaa !4
  %355 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %call483 = call i64 @klu_zl_solve(ptr noundef %351, ptr noundef %352, i64 noundef %353, i64 noundef 1, ptr noundef %354, ptr noundef %355)
  store double 0.000000e+00, ptr %est_new, align 8, !tbaa !25
  store i64 0, ptr %j, align 8, !tbaa !18
  br label %for.cond484

for.cond484:                                      ; preds = %for.inc549, %for.end482
  %356 = load i64, ptr %j, align 8, !tbaa !18
  %357 = load i64, ptr %n, align 8, !tbaa !18
  %cmp485 = icmp slt i64 %356, %357
  br i1 %cmp485, label %for.body487, label %for.end551

for.body487:                                      ; preds = %for.cond484
  call void @llvm.lifetime.start.p0(i64 8, ptr %r488) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ar489) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ai490) #7
  %358 = load ptr, ptr %X, align 8, !tbaa !4
  %359 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx491 = getelementptr inbounds %struct.Double_Complex, ptr %358, i64 %359
  %component492 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx491, i32 0, i32 0
  %arrayidx493 = getelementptr inbounds [2 x double], ptr %component492, i64 0, i64 0
  %360 = load double, ptr %arrayidx493, align 8, !tbaa !25
  %cmp494 = fcmp olt double %360, 0.000000e+00
  br i1 %cmp494, label %cond.true496, label %cond.false501

cond.true496:                                     ; preds = %for.body487
  %361 = load ptr, ptr %X, align 8, !tbaa !4
  %362 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx497 = getelementptr inbounds %struct.Double_Complex, ptr %361, i64 %362
  %component498 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx497, i32 0, i32 0
  %arrayidx499 = getelementptr inbounds [2 x double], ptr %component498, i64 0, i64 0
  %363 = load double, ptr %arrayidx499, align 8, !tbaa !25
  %fneg500 = fneg double %363
  br label %cond.end505

cond.false501:                                    ; preds = %for.body487
  %364 = load ptr, ptr %X, align 8, !tbaa !4
  %365 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx502 = getelementptr inbounds %struct.Double_Complex, ptr %364, i64 %365
  %component503 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx502, i32 0, i32 0
  %arrayidx504 = getelementptr inbounds [2 x double], ptr %component503, i64 0, i64 0
  %366 = load double, ptr %arrayidx504, align 8, !tbaa !25
  br label %cond.end505

cond.end505:                                      ; preds = %cond.false501, %cond.true496
  %cond506 = phi double [ %fneg500, %cond.true496 ], [ %366, %cond.false501 ]
  store double %cond506, ptr %ar489, align 8, !tbaa !25
  %367 = load ptr, ptr %X, align 8, !tbaa !4
  %368 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx507 = getelementptr inbounds %struct.Double_Complex, ptr %367, i64 %368
  %component508 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx507, i32 0, i32 0
  %arrayidx509 = getelementptr inbounds [2 x double], ptr %component508, i64 0, i64 1
  %369 = load double, ptr %arrayidx509, align 8, !tbaa !25
  %cmp510 = fcmp olt double %369, 0.000000e+00
  br i1 %cmp510, label %cond.true512, label %cond.false517

cond.true512:                                     ; preds = %cond.end505
  %370 = load ptr, ptr %X, align 8, !tbaa !4
  %371 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx513 = getelementptr inbounds %struct.Double_Complex, ptr %370, i64 %371
  %component514 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx513, i32 0, i32 0
  %arrayidx515 = getelementptr inbounds [2 x double], ptr %component514, i64 0, i64 1
  %372 = load double, ptr %arrayidx515, align 8, !tbaa !25
  %fneg516 = fneg double %372
  br label %cond.end521

cond.false517:                                    ; preds = %cond.end505
  %373 = load ptr, ptr %X, align 8, !tbaa !4
  %374 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx518 = getelementptr inbounds %struct.Double_Complex, ptr %373, i64 %374
  %component519 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx518, i32 0, i32 0
  %arrayidx520 = getelementptr inbounds [2 x double], ptr %component519, i64 0, i64 1
  %375 = load double, ptr %arrayidx520, align 8, !tbaa !25
  br label %cond.end521

cond.end521:                                      ; preds = %cond.false517, %cond.true512
  %cond522 = phi double [ %fneg516, %cond.true512 ], [ %375, %cond.false517 ]
  store double %cond522, ptr %ai490, align 8, !tbaa !25
  %376 = load double, ptr %ar489, align 8, !tbaa !25
  %377 = load double, ptr %ai490, align 8, !tbaa !25
  %cmp523 = fcmp oge double %376, %377
  br i1 %cmp523, label %if.then525, label %if.else536

if.then525:                                       ; preds = %cond.end521
  %378 = load double, ptr %ar489, align 8, !tbaa !25
  %379 = load double, ptr %ai490, align 8, !tbaa !25
  %add526 = fadd double %378, %379
  %380 = load double, ptr %ar489, align 8, !tbaa !25
  %cmp527 = fcmp oeq double %add526, %380
  br i1 %cmp527, label %if.then529, label %if.else530

if.then529:                                       ; preds = %if.then525
  %381 = load double, ptr %ar489, align 8, !tbaa !25
  store double %381, ptr %abs_value, align 8, !tbaa !25
  br label %if.end535

if.else530:                                       ; preds = %if.then525
  %382 = load double, ptr %ai490, align 8, !tbaa !25
  %383 = load double, ptr %ar489, align 8, !tbaa !25
  %div531 = fdiv double %382, %383
  store double %div531, ptr %r488, align 8, !tbaa !25
  %384 = load double, ptr %ar489, align 8, !tbaa !25
  %385 = load double, ptr %r488, align 8, !tbaa !25
  %386 = load double, ptr %r488, align 8, !tbaa !25
  %387 = call double @llvm.fmuladd.f64(double %385, double %386, double 1.000000e+00)
  %call533 = call double @sqrt(double noundef %387) #7
  %mul534 = fmul double %384, %call533
  store double %mul534, ptr %abs_value, align 8, !tbaa !25
  br label %if.end535

if.end535:                                        ; preds = %if.else530, %if.then529
  br label %if.end547

if.else536:                                       ; preds = %cond.end521
  %388 = load double, ptr %ai490, align 8, !tbaa !25
  %389 = load double, ptr %ar489, align 8, !tbaa !25
  %add537 = fadd double %388, %389
  %390 = load double, ptr %ai490, align 8, !tbaa !25
  %cmp538 = fcmp oeq double %add537, %390
  br i1 %cmp538, label %if.then540, label %if.else541

if.then540:                                       ; preds = %if.else536
  %391 = load double, ptr %ai490, align 8, !tbaa !25
  store double %391, ptr %abs_value, align 8, !tbaa !25
  br label %if.end546

if.else541:                                       ; preds = %if.else536
  %392 = load double, ptr %ar489, align 8, !tbaa !25
  %393 = load double, ptr %ai490, align 8, !tbaa !25
  %div542 = fdiv double %392, %393
  store double %div542, ptr %r488, align 8, !tbaa !25
  %394 = load double, ptr %ai490, align 8, !tbaa !25
  %395 = load double, ptr %r488, align 8, !tbaa !25
  %396 = load double, ptr %r488, align 8, !tbaa !25
  %397 = call double @llvm.fmuladd.f64(double %395, double %396, double 1.000000e+00)
  %call544 = call double @sqrt(double noundef %397) #7
  %mul545 = fmul double %394, %call544
  store double %mul545, ptr %abs_value, align 8, !tbaa !25
  br label %if.end546

if.end546:                                        ; preds = %if.else541, %if.then540
  br label %if.end547

if.end547:                                        ; preds = %if.end546, %if.end535
  call void @llvm.lifetime.end.p0(i64 8, ptr %ai490) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ar489) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %r488) #7
  %398 = load double, ptr %abs_value, align 8, !tbaa !25
  %399 = load double, ptr %est_new, align 8, !tbaa !25
  %add548 = fadd double %399, %398
  store double %add548, ptr %est_new, align 8, !tbaa !25
  br label %for.inc549

for.inc549:                                       ; preds = %if.end547
  %400 = load i64, ptr %j, align 8, !tbaa !18
  %inc550 = add nsw i64 %400, 1
  store i64 %inc550, ptr %j, align 8, !tbaa !18
  br label %for.cond484, !llvm.loop !47

for.end551:                                       ; preds = %for.cond484
  %401 = load double, ptr %est_new, align 8, !tbaa !25
  %mul552 = fmul double 2.000000e+00, %401
  %402 = load i64, ptr %n, align 8, !tbaa !18
  %mul553 = mul nsw i64 3, %402
  %conv554 = sitofp i64 %mul553 to double
  %div555 = fdiv double %mul552, %conv554
  store double %div555, ptr %est_new, align 8, !tbaa !25
  %403 = load double, ptr %est_new, align 8, !tbaa !25
  %404 = load double, ptr %ainv_norm, align 8, !tbaa !25
  %cmp556 = fcmp ogt double %403, %404
  br i1 %cmp556, label %cond.true558, label %cond.false559

cond.true558:                                     ; preds = %for.end551
  %405 = load double, ptr %est_new, align 8, !tbaa !25
  br label %cond.end560

cond.false559:                                    ; preds = %for.end551
  %406 = load double, ptr %ainv_norm, align 8, !tbaa !25
  br label %cond.end560

cond.end560:                                      ; preds = %cond.false559, %cond.true558
  %cond561 = phi double [ %405, %cond.true558 ], [ %406, %cond.false559 ]
  store double %cond561, ptr %ainv_norm, align 8, !tbaa !25
  %407 = load double, ptr %ainv_norm, align 8, !tbaa !25
  %408 = load double, ptr %anorm, align 8, !tbaa !25
  %mul562 = fmul double %407, %408
  %409 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %condest563 = getelementptr inbounds %struct.klu_l_common_struct, ptr %409, i32 0, i32 19
  store double %mul562, ptr %condest563, align 8, !tbaa !33
  store i64 1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end560, %if.then56, %if.then8, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %pend) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %jnew) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %jmax) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %S) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %X) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Aentry) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Udiag) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %abs_value) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %est_new) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %est_old) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ainv_norm) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %anorm) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %csum) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Xmax) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %xj) #7
  %410 = load i64, ptr %retval, align 8
  ret i64 %410
}

declare i64 @klu_zl_solve(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #6

declare i64 @klu_zl_tsolve(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #6

; Function Attrs: nounwind uwtable
define i64 @klu_zl_flops(ptr noundef %Symbolic, ptr noundef %Numeric, ptr noundef %Common) #0 {
entry:
  %retval = alloca i64, align 8
  %Symbolic.addr = alloca ptr, align 8
  %Numeric.addr = alloca ptr, align 8
  %Common.addr = alloca ptr, align 8
  %flops = alloca double, align 8
  %R = alloca ptr, align 8
  %Ui = alloca ptr, align 8
  %Uip = alloca ptr, align 8
  %Llen = alloca ptr, align 8
  %Ulen = alloca ptr, align 8
  %LUbx = alloca ptr, align 8
  %LU = alloca ptr, align 8
  %k = alloca i64, align 8
  %ulen = alloca i64, align 8
  %p = alloca i64, align 8
  %nk = alloca i64, align 8
  %block = alloca i64, align 8
  %nblocks = alloca i64, align 8
  %k1 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %Symbolic, ptr %Symbolic.addr, align 8, !tbaa !4
  store ptr %Numeric, ptr %Numeric.addr, align 8, !tbaa !4
  store ptr %Common, ptr %Common.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %flops) #7
  store double 0.000000e+00, ptr %flops, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %R) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ui) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %Uip) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %Llen) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ulen) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %LUbx) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %LU) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ulen) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %nk) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %block) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %nblocks) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %k1) #7
  %0 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %flops1 = getelementptr inbounds %struct.klu_l_common_struct, ptr %1, i32 0, i32 17
  store double -1.000000e+00, ptr %flops1, align 8, !tbaa !48
  %2 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %4 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %status = getelementptr inbounds %struct.klu_l_common_struct, ptr %4, i32 0, i32 11
  store i64 -3, ptr %status, align 8, !tbaa !8
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %5 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %status6 = getelementptr inbounds %struct.klu_l_common_struct, ptr %5, i32 0, i32 11
  store i64 0, ptr %status6, align 8, !tbaa !8
  %6 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %R7 = getelementptr inbounds %struct.klu_l_symbolic, ptr %6, i32 0, i32 9
  %7 = load ptr, ptr %R7, align 8, !tbaa !20
  store ptr %7, ptr %R, align 8, !tbaa !4
  %8 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %nblocks8 = getelementptr inbounds %struct.klu_l_symbolic, ptr %8, i32 0, i32 11
  %9 = load i64, ptr %nblocks8, align 8, !tbaa !19
  store i64 %9, ptr %nblocks, align 8, !tbaa !18
  %10 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %LUbx9 = getelementptr inbounds %struct.klu_l_numeric, ptr %10, i32 0, i32 12
  %11 = load ptr, ptr %LUbx9, align 8, !tbaa !21
  store ptr %11, ptr %LUbx, align 8, !tbaa !4
  store i64 0, ptr %block, align 8, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc39, %if.end5
  %12 = load i64, ptr %block, align 8, !tbaa !18
  %13 = load i64, ptr %nblocks, align 8, !tbaa !18
  %cmp10 = icmp slt i64 %12, %13
  br i1 %cmp10, label %for.body, label %for.end41

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %R, align 8, !tbaa !4
  %15 = load i64, ptr %block, align 8, !tbaa !18
  %arrayidx = getelementptr inbounds i64, ptr %14, i64 %15
  %16 = load i64, ptr %arrayidx, align 8, !tbaa !18
  store i64 %16, ptr %k1, align 8, !tbaa !18
  %17 = load ptr, ptr %R, align 8, !tbaa !4
  %18 = load i64, ptr %block, align 8, !tbaa !18
  %add = add nsw i64 %18, 1
  %arrayidx11 = getelementptr inbounds i64, ptr %17, i64 %add
  %19 = load i64, ptr %arrayidx11, align 8, !tbaa !18
  %20 = load i64, ptr %k1, align 8, !tbaa !18
  %sub = sub nsw i64 %19, %20
  store i64 %sub, ptr %nk, align 8, !tbaa !18
  %21 = load i64, ptr %nk, align 8, !tbaa !18
  %cmp12 = icmp sgt i64 %21, 1
  br i1 %cmp12, label %if.then13, label %if.end38

if.then13:                                        ; preds = %for.body
  %22 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Llen14 = getelementptr inbounds %struct.klu_l_numeric, ptr %22, i32 0, i32 10
  %23 = load ptr, ptr %Llen14, align 8, !tbaa !49
  %24 = load i64, ptr %k1, align 8, !tbaa !18
  %add.ptr = getelementptr inbounds i64, ptr %23, i64 %24
  store ptr %add.ptr, ptr %Llen, align 8, !tbaa !4
  %25 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Uip15 = getelementptr inbounds %struct.klu_l_numeric, ptr %25, i32 0, i32 9
  %26 = load ptr, ptr %Uip15, align 8, !tbaa !22
  %27 = load i64, ptr %k1, align 8, !tbaa !18
  %add.ptr16 = getelementptr inbounds i64, ptr %26, i64 %27
  store ptr %add.ptr16, ptr %Uip, align 8, !tbaa !4
  %28 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Ulen17 = getelementptr inbounds %struct.klu_l_numeric, ptr %28, i32 0, i32 11
  %29 = load ptr, ptr %Ulen17, align 8, !tbaa !23
  %30 = load i64, ptr %k1, align 8, !tbaa !18
  %add.ptr18 = getelementptr inbounds i64, ptr %29, i64 %30
  store ptr %add.ptr18, ptr %Ulen, align 8, !tbaa !4
  %31 = load ptr, ptr %LUbx, align 8, !tbaa !4
  %32 = load i64, ptr %block, align 8, !tbaa !18
  %arrayidx19 = getelementptr inbounds ptr, ptr %31, i64 %32
  %33 = load ptr, ptr %arrayidx19, align 8, !tbaa !4
  store ptr %33, ptr %LU, align 8, !tbaa !4
  store i64 0, ptr %k, align 8, !tbaa !18
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc35, %if.then13
  %34 = load i64, ptr %k, align 8, !tbaa !18
  %35 = load i64, ptr %nk, align 8, !tbaa !18
  %cmp21 = icmp slt i64 %34, %35
  br i1 %cmp21, label %for.body22, label %for.end37

for.body22:                                       ; preds = %for.cond20
  %36 = load ptr, ptr %LU, align 8, !tbaa !4
  %37 = load ptr, ptr %Uip, align 8, !tbaa !4
  %38 = load i64, ptr %k, align 8, !tbaa !18
  %arrayidx23 = getelementptr inbounds i64, ptr %37, i64 %38
  %39 = load i64, ptr %arrayidx23, align 8, !tbaa !18
  %add.ptr24 = getelementptr inbounds %struct.Double_Complex, ptr %36, i64 %39
  store ptr %add.ptr24, ptr %Ui, align 8, !tbaa !4
  %40 = load ptr, ptr %Ulen, align 8, !tbaa !4
  %41 = load i64, ptr %k, align 8, !tbaa !18
  %arrayidx25 = getelementptr inbounds i64, ptr %40, i64 %41
  %42 = load i64, ptr %arrayidx25, align 8, !tbaa !18
  store i64 %42, ptr %ulen, align 8, !tbaa !18
  store i64 0, ptr %p, align 8, !tbaa !18
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc, %for.body22
  %43 = load i64, ptr %p, align 8, !tbaa !18
  %44 = load i64, ptr %ulen, align 8, !tbaa !18
  %cmp27 = icmp slt i64 %43, %44
  br i1 %cmp27, label %for.body28, label %for.end

for.body28:                                       ; preds = %for.cond26
  %45 = load ptr, ptr %Llen, align 8, !tbaa !4
  %46 = load ptr, ptr %Ui, align 8, !tbaa !4
  %47 = load i64, ptr %p, align 8, !tbaa !18
  %arrayidx29 = getelementptr inbounds i64, ptr %46, i64 %47
  %48 = load i64, ptr %arrayidx29, align 8, !tbaa !18
  %arrayidx30 = getelementptr inbounds i64, ptr %45, i64 %48
  %49 = load i64, ptr %arrayidx30, align 8, !tbaa !18
  %mul = mul nsw i64 2, %49
  %conv = sitofp i64 %mul to double
  %50 = load double, ptr %flops, align 8, !tbaa !25
  %add31 = fadd double %50, %conv
  store double %add31, ptr %flops, align 8, !tbaa !25
  br label %for.inc

for.inc:                                          ; preds = %for.body28
  %51 = load i64, ptr %p, align 8, !tbaa !18
  %inc = add nsw i64 %51, 1
  store i64 %inc, ptr %p, align 8, !tbaa !18
  br label %for.cond26, !llvm.loop !50

for.end:                                          ; preds = %for.cond26
  %52 = load ptr, ptr %Llen, align 8, !tbaa !4
  %53 = load i64, ptr %k, align 8, !tbaa !18
  %arrayidx32 = getelementptr inbounds i64, ptr %52, i64 %53
  %54 = load i64, ptr %arrayidx32, align 8, !tbaa !18
  %conv33 = sitofp i64 %54 to double
  %55 = load double, ptr %flops, align 8, !tbaa !25
  %add34 = fadd double %55, %conv33
  store double %add34, ptr %flops, align 8, !tbaa !25
  br label %for.inc35

for.inc35:                                        ; preds = %for.end
  %56 = load i64, ptr %k, align 8, !tbaa !18
  %inc36 = add nsw i64 %56, 1
  store i64 %inc36, ptr %k, align 8, !tbaa !18
  br label %for.cond20, !llvm.loop !51

for.end37:                                        ; preds = %for.cond20
  br label %if.end38

if.end38:                                         ; preds = %for.end37, %for.body
  br label %for.inc39

for.inc39:                                        ; preds = %if.end38
  %57 = load i64, ptr %block, align 8, !tbaa !18
  %inc40 = add nsw i64 %57, 1
  store i64 %inc40, ptr %block, align 8, !tbaa !18
  br label %for.cond, !llvm.loop !52

for.end41:                                        ; preds = %for.cond
  %58 = load double, ptr %flops, align 8, !tbaa !25
  %59 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %flops42 = getelementptr inbounds %struct.klu_l_common_struct, ptr %59, i32 0, i32 17
  store double %58, ptr %flops42, align 8, !tbaa !48
  store i64 1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end41, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %k1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %nblocks) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %block) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %nk) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ulen) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %LU) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %LUbx) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ulen) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Llen) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Uip) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ui) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %R) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %flops) #7
  %60 = load i64, ptr %retval, align 8
  ret i64 %60
}

; Function Attrs: nounwind uwtable
define i64 @klu_zl_rcond(ptr noundef %Symbolic, ptr noundef %Numeric, ptr noundef %Common) #0 {
entry:
  %retval = alloca i64, align 8
  %Symbolic.addr = alloca ptr, align 8
  %Numeric.addr = alloca ptr, align 8
  %Common.addr = alloca ptr, align 8
  %ukk = alloca double, align 8
  %umin = alloca double, align 8
  %umax = alloca double, align 8
  %Udiag = alloca ptr, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %r = alloca double, align 8
  %ar = alloca double, align 8
  %ai = alloca double, align 8
  store ptr %Symbolic, ptr %Symbolic.addr, align 8, !tbaa !4
  store ptr %Numeric, ptr %Numeric.addr, align 8, !tbaa !4
  store ptr %Common, ptr %Common.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ukk) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %umin) #7
  store double 0.000000e+00, ptr %umin, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %umax) #7
  store double 0.000000e+00, ptr %umax, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %Udiag) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #7
  %0 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %status = getelementptr inbounds %struct.klu_l_common_struct, ptr %2, i32 0, i32 11
  store i64 -3, ptr %status, align 8, !tbaa !8
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %cmp4 = icmp eq ptr %3, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end3
  %4 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %rcond = getelementptr inbounds %struct.klu_l_common_struct, ptr %4, i32 0, i32 18
  store double 0.000000e+00, ptr %rcond, align 8, !tbaa !53
  %5 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %status6 = getelementptr inbounds %struct.klu_l_common_struct, ptr %5, i32 0, i32 11
  store i64 1, ptr %status6, align 8, !tbaa !8
  store i64 1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %6 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %status8 = getelementptr inbounds %struct.klu_l_common_struct, ptr %6, i32 0, i32 11
  store i64 0, ptr %status8, align 8, !tbaa !8
  %7 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %n9 = getelementptr inbounds %struct.klu_l_symbolic, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %n9, align 8, !tbaa !34
  store i64 %8, ptr %n, align 8, !tbaa !18
  %9 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Udiag10 = getelementptr inbounds %struct.klu_l_numeric, ptr %9, i32 0, i32 14
  %10 = load ptr, ptr %Udiag10, align 8, !tbaa !24
  store ptr %10, ptr %Udiag, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %11 = load i64, ptr %j, align 8, !tbaa !18
  %12 = load i64, ptr %n, align 8, !tbaa !18
  %cmp11 = icmp slt i64 %11, %12
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ar) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ai) #7
  %13 = load ptr, ptr %Udiag, align 8, !tbaa !4
  %14 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx = getelementptr inbounds %struct.Double_Complex, ptr %13, i64 %14
  %component = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [2 x double], ptr %component, i64 0, i64 0
  %15 = load double, ptr %arrayidx12, align 8, !tbaa !25
  %cmp13 = fcmp olt double %15, 0.000000e+00
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %16 = load ptr, ptr %Udiag, align 8, !tbaa !4
  %17 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx14 = getelementptr inbounds %struct.Double_Complex, ptr %16, i64 %17
  %component15 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx14, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [2 x double], ptr %component15, i64 0, i64 0
  %18 = load double, ptr %arrayidx16, align 8, !tbaa !25
  %fneg = fneg double %18
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %19 = load ptr, ptr %Udiag, align 8, !tbaa !4
  %20 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx17 = getelementptr inbounds %struct.Double_Complex, ptr %19, i64 %20
  %component18 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx17, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [2 x double], ptr %component18, i64 0, i64 0
  %21 = load double, ptr %arrayidx19, align 8, !tbaa !25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %fneg, %cond.true ], [ %21, %cond.false ]
  store double %cond, ptr %ar, align 8, !tbaa !25
  %22 = load ptr, ptr %Udiag, align 8, !tbaa !4
  %23 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx20 = getelementptr inbounds %struct.Double_Complex, ptr %22, i64 %23
  %component21 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx20, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [2 x double], ptr %component21, i64 0, i64 1
  %24 = load double, ptr %arrayidx22, align 8, !tbaa !25
  %cmp23 = fcmp olt double %24, 0.000000e+00
  br i1 %cmp23, label %cond.true24, label %cond.false29

cond.true24:                                      ; preds = %cond.end
  %25 = load ptr, ptr %Udiag, align 8, !tbaa !4
  %26 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx25 = getelementptr inbounds %struct.Double_Complex, ptr %25, i64 %26
  %component26 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx25, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [2 x double], ptr %component26, i64 0, i64 1
  %27 = load double, ptr %arrayidx27, align 8, !tbaa !25
  %fneg28 = fneg double %27
  br label %cond.end33

cond.false29:                                     ; preds = %cond.end
  %28 = load ptr, ptr %Udiag, align 8, !tbaa !4
  %29 = load i64, ptr %j, align 8, !tbaa !18
  %arrayidx30 = getelementptr inbounds %struct.Double_Complex, ptr %28, i64 %29
  %component31 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx30, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [2 x double], ptr %component31, i64 0, i64 1
  %30 = load double, ptr %arrayidx32, align 8, !tbaa !25
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false29, %cond.true24
  %cond34 = phi double [ %fneg28, %cond.true24 ], [ %30, %cond.false29 ]
  store double %cond34, ptr %ai, align 8, !tbaa !25
  %31 = load double, ptr %ar, align 8, !tbaa !25
  %32 = load double, ptr %ai, align 8, !tbaa !25
  %cmp35 = fcmp oge double %31, %32
  br i1 %cmp35, label %if.then36, label %if.else40

if.then36:                                        ; preds = %cond.end33
  %33 = load double, ptr %ar, align 8, !tbaa !25
  %34 = load double, ptr %ai, align 8, !tbaa !25
  %add = fadd double %33, %34
  %35 = load double, ptr %ar, align 8, !tbaa !25
  %cmp37 = fcmp oeq double %add, %35
  br i1 %cmp37, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.then36
  %36 = load double, ptr %ar, align 8, !tbaa !25
  store double %36, ptr %ukk, align 8, !tbaa !25
  br label %if.end39

if.else:                                          ; preds = %if.then36
  %37 = load double, ptr %ai, align 8, !tbaa !25
  %38 = load double, ptr %ar, align 8, !tbaa !25
  %div = fdiv double %37, %38
  store double %div, ptr %r, align 8, !tbaa !25
  %39 = load double, ptr %ar, align 8, !tbaa !25
  %40 = load double, ptr %r, align 8, !tbaa !25
  %41 = load double, ptr %r, align 8, !tbaa !25
  %42 = call double @llvm.fmuladd.f64(double %40, double %41, double 1.000000e+00)
  %call = call double @sqrt(double noundef %42) #7
  %mul = fmul double %39, %call
  store double %mul, ptr %ukk, align 8, !tbaa !25
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then38
  br label %if.end50

if.else40:                                        ; preds = %cond.end33
  %43 = load double, ptr %ai, align 8, !tbaa !25
  %44 = load double, ptr %ar, align 8, !tbaa !25
  %add41 = fadd double %43, %44
  %45 = load double, ptr %ai, align 8, !tbaa !25
  %cmp42 = fcmp oeq double %add41, %45
  br i1 %cmp42, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.else40
  %46 = load double, ptr %ai, align 8, !tbaa !25
  store double %46, ptr %ukk, align 8, !tbaa !25
  br label %if.end49

if.else44:                                        ; preds = %if.else40
  %47 = load double, ptr %ar, align 8, !tbaa !25
  %48 = load double, ptr %ai, align 8, !tbaa !25
  %div45 = fdiv double %47, %48
  store double %div45, ptr %r, align 8, !tbaa !25
  %49 = load double, ptr %ai, align 8, !tbaa !25
  %50 = load double, ptr %r, align 8, !tbaa !25
  %51 = load double, ptr %r, align 8, !tbaa !25
  %52 = call double @llvm.fmuladd.f64(double %50, double %51, double 1.000000e+00)
  %call47 = call double @sqrt(double noundef %52) #7
  %mul48 = fmul double %49, %call47
  store double %mul48, ptr %ukk, align 8, !tbaa !25
  br label %if.end49

if.end49:                                         ; preds = %if.else44, %if.then43
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end39
  call void @llvm.lifetime.end.p0(i64 8, ptr %ai) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ar) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #7
  %53 = load double, ptr %ukk, align 8, !tbaa !25
  %54 = load double, ptr %ukk, align 8, !tbaa !25
  %cmp51 = fcmp une double %53, %54
  br i1 %cmp51, label %if.then53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end50
  %55 = load double, ptr %ukk, align 8, !tbaa !25
  %cmp52 = fcmp oeq double %55, 0.000000e+00
  br i1 %cmp52, label %if.then53, label %if.end56

if.then53:                                        ; preds = %lor.lhs.false, %if.end50
  %56 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %rcond54 = getelementptr inbounds %struct.klu_l_common_struct, ptr %56, i32 0, i32 18
  store double 0.000000e+00, ptr %rcond54, align 8, !tbaa !53
  %57 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %status55 = getelementptr inbounds %struct.klu_l_common_struct, ptr %57, i32 0, i32 11
  store i64 1, ptr %status55, align 8, !tbaa !8
  store i64 1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end56:                                         ; preds = %lor.lhs.false
  %58 = load i64, ptr %j, align 8, !tbaa !18
  %cmp57 = icmp eq i64 %58, 0
  br i1 %cmp57, label %if.then58, label %if.else59

if.then58:                                        ; preds = %if.end56
  %59 = load double, ptr %ukk, align 8, !tbaa !25
  store double %59, ptr %umin, align 8, !tbaa !25
  %60 = load double, ptr %ukk, align 8, !tbaa !25
  store double %60, ptr %umax, align 8, !tbaa !25
  br label %if.end70

if.else59:                                        ; preds = %if.end56
  %61 = load double, ptr %umin, align 8, !tbaa !25
  %62 = load double, ptr %ukk, align 8, !tbaa !25
  %cmp60 = fcmp olt double %61, %62
  br i1 %cmp60, label %cond.true61, label %cond.false62

cond.true61:                                      ; preds = %if.else59
  %63 = load double, ptr %umin, align 8, !tbaa !25
  br label %cond.end63

cond.false62:                                     ; preds = %if.else59
  %64 = load double, ptr %ukk, align 8, !tbaa !25
  br label %cond.end63

cond.end63:                                       ; preds = %cond.false62, %cond.true61
  %cond64 = phi double [ %63, %cond.true61 ], [ %64, %cond.false62 ]
  store double %cond64, ptr %umin, align 8, !tbaa !25
  %65 = load double, ptr %umax, align 8, !tbaa !25
  %66 = load double, ptr %ukk, align 8, !tbaa !25
  %cmp65 = fcmp ogt double %65, %66
  br i1 %cmp65, label %cond.true66, label %cond.false67

cond.true66:                                      ; preds = %cond.end63
  %67 = load double, ptr %umax, align 8, !tbaa !25
  br label %cond.end68

cond.false67:                                     ; preds = %cond.end63
  %68 = load double, ptr %ukk, align 8, !tbaa !25
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false67, %cond.true66
  %cond69 = phi double [ %67, %cond.true66 ], [ %68, %cond.false67 ]
  store double %cond69, ptr %umax, align 8, !tbaa !25
  br label %if.end70

if.end70:                                         ; preds = %cond.end68, %if.then58
  br label %for.inc

for.inc:                                          ; preds = %if.end70
  %69 = load i64, ptr %j, align 8, !tbaa !18
  %inc = add nsw i64 %69, 1
  store i64 %inc, ptr %j, align 8, !tbaa !18
  br label %for.cond, !llvm.loop !54

for.end:                                          ; preds = %for.cond
  %70 = load double, ptr %umin, align 8, !tbaa !25
  %71 = load double, ptr %umax, align 8, !tbaa !25
  %div71 = fdiv double %70, %71
  %72 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %rcond72 = getelementptr inbounds %struct.klu_l_common_struct, ptr %72, i32 0, i32 18
  store double %div71, ptr %rcond72, align 8, !tbaa !53
  %73 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %rcond73 = getelementptr inbounds %struct.klu_l_common_struct, ptr %73, i32 0, i32 18
  %74 = load double, ptr %rcond73, align 8, !tbaa !53
  %75 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %rcond74 = getelementptr inbounds %struct.klu_l_common_struct, ptr %75, i32 0, i32 18
  %76 = load double, ptr %rcond74, align 8, !tbaa !53
  %cmp75 = fcmp une double %74, %76
  br i1 %cmp75, label %if.then79, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %for.end
  %77 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %rcond77 = getelementptr inbounds %struct.klu_l_common_struct, ptr %77, i32 0, i32 18
  %78 = load double, ptr %rcond77, align 8, !tbaa !53
  %cmp78 = fcmp oeq double %78, 0.000000e+00
  br i1 %cmp78, label %if.then79, label %if.end82

if.then79:                                        ; preds = %lor.lhs.false76, %for.end
  %79 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %rcond80 = getelementptr inbounds %struct.klu_l_common_struct, ptr %79, i32 0, i32 18
  store double 0.000000e+00, ptr %rcond80, align 8, !tbaa !53
  %80 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %status81 = getelementptr inbounds %struct.klu_l_common_struct, ptr %80, i32 0, i32 11
  store i64 1, ptr %status81, align 8, !tbaa !8
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %lor.lhs.false76
  store i64 1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %if.then53, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Udiag) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %umax) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %umin) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ukk) #7
  %81 = load i64, ptr %retval, align 8
  ret i64 %81
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
!8 = !{!9, !11, i64 88}
!9 = !{!"klu_l_common_struct", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !5, i64 64, !5, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !11, i64 176, !11, i64 184}
!10 = !{!"double", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!9, !10, i64 160}
!13 = !{!14, !5, i64 56}
!14 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !11, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !11, i64 184}
!15 = !{!14, !5, i64 120}
!16 = !{!17, !5, i64 64}
!17 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !5, i64 32, !11, i64 40, !11, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120}
!18 = !{!11, !11, i64 0}
!19 = !{!17, !11, i64 88}
!20 = !{!17, !5, i64 72}
!21 = !{!14, !5, i64 96}
!22 = !{!14, !5, i64 72}
!23 = !{!14, !5, i64 88}
!24 = !{!14, !5, i64 112}
!25 = !{!10, !10, i64 0}
!26 = !{i64 0, i64 16, !27}
!27 = !{!6, !6, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !29}
!33 = !{!9, !10, i64 152}
!34 = !{!17, !11, i64 40}
!35 = distinct !{!35, !29}
!36 = distinct !{!36, !29}
!37 = distinct !{!37, !29}
!38 = !{!14, !5, i64 144}
!39 = distinct !{!39, !29}
!40 = distinct !{!40, !29}
!41 = distinct !{!41, !29}
!42 = distinct !{!42, !29}
!43 = distinct !{!43, !29}
!44 = distinct !{!44, !29}
!45 = distinct !{!45, !29}
!46 = distinct !{!46, !29}
!47 = distinct !{!47, !29}
!48 = !{!9, !10, i64 136}
!49 = !{!14, !5, i64 80}
!50 = distinct !{!50, !29}
!51 = distinct !{!51, !29}
!52 = distinct !{!52, !29}
!53 = !{!9, !10, i64 144}
!54 = distinct !{!54, !29}
