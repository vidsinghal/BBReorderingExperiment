; ModuleID = 'samples/686.bc'
source_filename = "../Source/klu_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.klu_common_struct = type { double, double, double, double, double, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i64, i64 }
%struct.Double_Complex = type { [2 x double] }

; Function Attrs: nounwind uwtable
define i32 @klu_z_scale(i32 noundef %scale, i32 noundef %n, ptr noundef %Ap, ptr noundef %Ai, ptr noundef %Ax, ptr noundef %Rs, ptr noundef %W, ptr noundef %Common) #0 {
entry:
  %retval = alloca i32, align 4
  %scale.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %Ap.addr = alloca ptr, align 8
  %Ai.addr = alloca ptr, align 8
  %Ax.addr = alloca ptr, align 8
  %Rs.addr = alloca ptr, align 8
  %W.addr = alloca ptr, align 8
  %Common.addr = alloca ptr, align 8
  %a = alloca double, align 8
  %Az = alloca ptr, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %p = alloca i32, align 4
  %pend = alloca i32, align 4
  %check_duplicates = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %r = alloca double, align 8
  %ar = alloca double, align 8
  %ai = alloca double, align 8
  store i32 %scale, ptr %scale.addr, align 4, !tbaa !4
  store i32 %n, ptr %n.addr, align 4, !tbaa !4
  store ptr %Ap, ptr %Ap.addr, align 8, !tbaa !8
  store ptr %Ai, ptr %Ai.addr, align 8, !tbaa !8
  store ptr %Ax, ptr %Ax.addr, align 8, !tbaa !8
  store ptr %Rs, ptr %Rs.addr, align 8, !tbaa !8
  store ptr %W, ptr %W.addr, align 8, !tbaa !8
  store ptr %Common, ptr %Common.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Az) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %row) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %col) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pend) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %check_duplicates) #4
  %0 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %status = getelementptr inbounds %struct.klu_common_struct, ptr %1, i32 0, i32 11
  store i32 0, ptr %status, align 4, !tbaa !10
  %2 = load i32, ptr %scale.addr, align 4, !tbaa !4
  %cmp1 = icmp slt i32 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %Ax.addr, align 8, !tbaa !8
  store ptr %3, ptr %Az, align 8, !tbaa !8
  %4 = load i32, ptr %n.addr, align 4, !tbaa !4
  %cmp4 = icmp sle i32 %4, 0
  br i1 %cmp4, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %5 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %cmp5 = icmp eq ptr %5, null
  br i1 %cmp5, label %if.then13, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %6 = load ptr, ptr %Ai.addr, align 8, !tbaa !8
  %cmp7 = icmp eq ptr %6, null
  br i1 %cmp7, label %if.then13, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %7 = load ptr, ptr %Az, align 8, !tbaa !8
  %cmp9 = icmp eq ptr %7, null
  br i1 %cmp9, label %if.then13, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %8 = load i32, ptr %scale.addr, align 4, !tbaa !4
  %cmp11 = icmp sgt i32 %8, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %lor.lhs.false10
  %9 = load ptr, ptr %Rs.addr, align 8, !tbaa !8
  %cmp12 = icmp eq ptr %9, null
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %land.lhs.true, %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false, %if.end3
  %10 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %status14 = getelementptr inbounds %struct.klu_common_struct, ptr %10, i32 0, i32 11
  store i32 -3, ptr %status14, align 4, !tbaa !10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true, %lor.lhs.false10
  %11 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i32, ptr %11, i64 0
  %12 = load i32, ptr %arrayidx, align 4, !tbaa !4
  %cmp16 = icmp ne i32 %12, 0
  br i1 %cmp16, label %if.then20, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.end15
  %13 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %14 = load i32, ptr %n.addr, align 4, !tbaa !4
  %idxprom = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %13, i64 %idxprom
  %15 = load i32, ptr %arrayidx18, align 4, !tbaa !4
  %cmp19 = icmp slt i32 %15, 0
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %lor.lhs.false17, %if.end15
  %16 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %status21 = getelementptr inbounds %struct.klu_common_struct, ptr %16, i32 0, i32 11
  store i32 -3, ptr %status21, align 4, !tbaa !10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false17
  store i32 0, ptr %col, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end22
  %17 = load i32, ptr %col, align 4, !tbaa !4
  %18 = load i32, ptr %n.addr, align 4, !tbaa !4
  %cmp23 = icmp slt i32 %17, %18
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %20 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom24 = sext i32 %20 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %19, i64 %idxprom24
  %21 = load i32, ptr %arrayidx25, align 4, !tbaa !4
  %22 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %23 = load i32, ptr %col, align 4, !tbaa !4
  %add = add nsw i32 %23, 1
  %idxprom26 = sext i32 %add to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %22, i64 %idxprom26
  %24 = load i32, ptr %arrayidx27, align 4, !tbaa !4
  %cmp28 = icmp sgt i32 %21, %24
  br i1 %cmp28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %for.body
  %25 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %status30 = getelementptr inbounds %struct.klu_common_struct, ptr %25, i32 0, i32 11
  store i32 -3, ptr %status30, align 4, !tbaa !10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end31:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end31
  %26 = load i32, ptr %col, align 4, !tbaa !4
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %col, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %27 = load i32, ptr %scale.addr, align 4, !tbaa !4
  %cmp32 = icmp sgt i32 %27, 0
  br i1 %cmp32, label %if.then33, label %if.end42

if.then33:                                        ; preds = %for.end
  store i32 0, ptr %row, align 4, !tbaa !4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc39, %if.then33
  %28 = load i32, ptr %row, align 4, !tbaa !4
  %29 = load i32, ptr %n.addr, align 4, !tbaa !4
  %cmp35 = icmp slt i32 %28, %29
  br i1 %cmp35, label %for.body36, label %for.end41

for.body36:                                       ; preds = %for.cond34
  %30 = load ptr, ptr %Rs.addr, align 8, !tbaa !8
  %31 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom37 = sext i32 %31 to i64
  %arrayidx38 = getelementptr inbounds double, ptr %30, i64 %idxprom37
  store double 0.000000e+00, ptr %arrayidx38, align 8, !tbaa !16
  br label %for.inc39

for.inc39:                                        ; preds = %for.body36
  %32 = load i32, ptr %row, align 4, !tbaa !4
  %inc40 = add nsw i32 %32, 1
  store i32 %inc40, ptr %row, align 4, !tbaa !4
  br label %for.cond34, !llvm.loop !17

for.end41:                                        ; preds = %for.cond34
  br label %if.end42

if.end42:                                         ; preds = %for.end41, %for.end
  %33 = load ptr, ptr %W.addr, align 8, !tbaa !8
  %cmp43 = icmp ne ptr %33, null
  %conv = zext i1 %cmp43 to i32
  store i32 %conv, ptr %check_duplicates, align 4, !tbaa !4
  %34 = load i32, ptr %check_duplicates, align 4, !tbaa !4
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %if.then44, label %if.end54

if.then44:                                        ; preds = %if.end42
  store i32 0, ptr %row, align 4, !tbaa !4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc51, %if.then44
  %35 = load i32, ptr %row, align 4, !tbaa !4
  %36 = load i32, ptr %n.addr, align 4, !tbaa !4
  %cmp46 = icmp slt i32 %35, %36
  br i1 %cmp46, label %for.body48, label %for.end53

for.body48:                                       ; preds = %for.cond45
  %37 = load ptr, ptr %W.addr, align 8, !tbaa !8
  %38 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom49 = sext i32 %38 to i64
  %arrayidx50 = getelementptr inbounds i32, ptr %37, i64 %idxprom49
  store i32 -1, ptr %arrayidx50, align 4, !tbaa !4
  br label %for.inc51

for.inc51:                                        ; preds = %for.body48
  %39 = load i32, ptr %row, align 4, !tbaa !4
  %inc52 = add nsw i32 %39, 1
  store i32 %inc52, ptr %row, align 4, !tbaa !4
  br label %for.cond45, !llvm.loop !18

for.end53:                                        ; preds = %for.cond45
  br label %if.end54

if.end54:                                         ; preds = %for.end53, %if.end42
  store i32 0, ptr %col, align 4, !tbaa !4
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc169, %if.end54
  %40 = load i32, ptr %col, align 4, !tbaa !4
  %41 = load i32, ptr %n.addr, align 4, !tbaa !4
  %cmp56 = icmp slt i32 %40, %41
  br i1 %cmp56, label %for.body58, label %for.end171

for.body58:                                       ; preds = %for.cond55
  %42 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %43 = load i32, ptr %col, align 4, !tbaa !4
  %add59 = add nsw i32 %43, 1
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds i32, ptr %42, i64 %idxprom60
  %44 = load i32, ptr %arrayidx61, align 4, !tbaa !4
  store i32 %44, ptr %pend, align 4, !tbaa !4
  %45 = load ptr, ptr %Ap.addr, align 8, !tbaa !8
  %46 = load i32, ptr %col, align 4, !tbaa !4
  %idxprom62 = sext i32 %46 to i64
  %arrayidx63 = getelementptr inbounds i32, ptr %45, i64 %idxprom62
  %47 = load i32, ptr %arrayidx63, align 4, !tbaa !4
  store i32 %47, ptr %p, align 4, !tbaa !4
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc166, %for.body58
  %48 = load i32, ptr %p, align 4, !tbaa !4
  %49 = load i32, ptr %pend, align 4, !tbaa !4
  %cmp65 = icmp slt i32 %48, %49
  br i1 %cmp65, label %for.body67, label %for.end168

for.body67:                                       ; preds = %for.cond64
  %50 = load ptr, ptr %Ai.addr, align 8, !tbaa !8
  %51 = load i32, ptr %p, align 4, !tbaa !4
  %idxprom68 = sext i32 %51 to i64
  %arrayidx69 = getelementptr inbounds i32, ptr %50, i64 %idxprom68
  %52 = load i32, ptr %arrayidx69, align 4, !tbaa !4
  store i32 %52, ptr %row, align 4, !tbaa !4
  %53 = load i32, ptr %row, align 4, !tbaa !4
  %cmp70 = icmp slt i32 %53, 0
  br i1 %cmp70, label %if.then75, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %for.body67
  %54 = load i32, ptr %row, align 4, !tbaa !4
  %55 = load i32, ptr %n.addr, align 4, !tbaa !4
  %cmp73 = icmp sge i32 %54, %55
  br i1 %cmp73, label %if.then75, label %if.end77

if.then75:                                        ; preds = %lor.lhs.false72, %for.body67
  %56 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %status76 = getelementptr inbounds %struct.klu_common_struct, ptr %56, i32 0, i32 11
  store i32 -3, ptr %status76, align 4, !tbaa !10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end77:                                         ; preds = %lor.lhs.false72
  %57 = load i32, ptr %check_duplicates, align 4, !tbaa !4
  %tobool78 = icmp ne i32 %57, 0
  br i1 %tobool78, label %if.then79, label %if.end89

if.then79:                                        ; preds = %if.end77
  %58 = load ptr, ptr %W.addr, align 8, !tbaa !8
  %59 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom80 = sext i32 %59 to i64
  %arrayidx81 = getelementptr inbounds i32, ptr %58, i64 %idxprom80
  %60 = load i32, ptr %arrayidx81, align 4, !tbaa !4
  %61 = load i32, ptr %col, align 4, !tbaa !4
  %cmp82 = icmp eq i32 %60, %61
  br i1 %cmp82, label %if.then84, label %if.end86

if.then84:                                        ; preds = %if.then79
  %62 = load ptr, ptr %Common.addr, align 8, !tbaa !8
  %status85 = getelementptr inbounds %struct.klu_common_struct, ptr %62, i32 0, i32 11
  store i32 -3, ptr %status85, align 4, !tbaa !10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end86:                                         ; preds = %if.then79
  %63 = load i32, ptr %col, align 4, !tbaa !4
  %64 = load ptr, ptr %W.addr, align 8, !tbaa !8
  %65 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom87 = sext i32 %65 to i64
  %arrayidx88 = getelementptr inbounds i32, ptr %64, i64 %idxprom87
  store i32 %63, ptr %arrayidx88, align 4, !tbaa !4
  br label %if.end89

if.end89:                                         ; preds = %if.end86, %if.end77
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ar) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ai) #4
  %66 = load ptr, ptr %Az, align 8, !tbaa !8
  %67 = load i32, ptr %p, align 4, !tbaa !4
  %idxprom90 = sext i32 %67 to i64
  %arrayidx91 = getelementptr inbounds %struct.Double_Complex, ptr %66, i64 %idxprom90
  %component = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx91, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [2 x double], ptr %component, i64 0, i64 0
  %68 = load double, ptr %arrayidx92, align 8, !tbaa !16
  %cmp93 = fcmp olt double %68, 0.000000e+00
  br i1 %cmp93, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end89
  %69 = load ptr, ptr %Az, align 8, !tbaa !8
  %70 = load i32, ptr %p, align 4, !tbaa !4
  %idxprom95 = sext i32 %70 to i64
  %arrayidx96 = getelementptr inbounds %struct.Double_Complex, ptr %69, i64 %idxprom95
  %component97 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx96, i32 0, i32 0
  %arrayidx98 = getelementptr inbounds [2 x double], ptr %component97, i64 0, i64 0
  %71 = load double, ptr %arrayidx98, align 8, !tbaa !16
  %fneg = fneg double %71
  br label %cond.end

cond.false:                                       ; preds = %if.end89
  %72 = load ptr, ptr %Az, align 8, !tbaa !8
  %73 = load i32, ptr %p, align 4, !tbaa !4
  %idxprom99 = sext i32 %73 to i64
  %arrayidx100 = getelementptr inbounds %struct.Double_Complex, ptr %72, i64 %idxprom99
  %component101 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx100, i32 0, i32 0
  %arrayidx102 = getelementptr inbounds [2 x double], ptr %component101, i64 0, i64 0
  %74 = load double, ptr %arrayidx102, align 8, !tbaa !16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %fneg, %cond.true ], [ %74, %cond.false ]
  store double %cond, ptr %ar, align 8, !tbaa !16
  %75 = load ptr, ptr %Az, align 8, !tbaa !8
  %76 = load i32, ptr %p, align 4, !tbaa !4
  %idxprom103 = sext i32 %76 to i64
  %arrayidx104 = getelementptr inbounds %struct.Double_Complex, ptr %75, i64 %idxprom103
  %component105 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx104, i32 0, i32 0
  %arrayidx106 = getelementptr inbounds [2 x double], ptr %component105, i64 0, i64 1
  %77 = load double, ptr %arrayidx106, align 8, !tbaa !16
  %cmp107 = fcmp olt double %77, 0.000000e+00
  br i1 %cmp107, label %cond.true109, label %cond.false115

cond.true109:                                     ; preds = %cond.end
  %78 = load ptr, ptr %Az, align 8, !tbaa !8
  %79 = load i32, ptr %p, align 4, !tbaa !4
  %idxprom110 = sext i32 %79 to i64
  %arrayidx111 = getelementptr inbounds %struct.Double_Complex, ptr %78, i64 %idxprom110
  %component112 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx111, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [2 x double], ptr %component112, i64 0, i64 1
  %80 = load double, ptr %arrayidx113, align 8, !tbaa !16
  %fneg114 = fneg double %80
  br label %cond.end120

cond.false115:                                    ; preds = %cond.end
  %81 = load ptr, ptr %Az, align 8, !tbaa !8
  %82 = load i32, ptr %p, align 4, !tbaa !4
  %idxprom116 = sext i32 %82 to i64
  %arrayidx117 = getelementptr inbounds %struct.Double_Complex, ptr %81, i64 %idxprom116
  %component118 = getelementptr inbounds %struct.Double_Complex, ptr %arrayidx117, i32 0, i32 0
  %arrayidx119 = getelementptr inbounds [2 x double], ptr %component118, i64 0, i64 1
  %83 = load double, ptr %arrayidx119, align 8, !tbaa !16
  br label %cond.end120

cond.end120:                                      ; preds = %cond.false115, %cond.true109
  %cond121 = phi double [ %fneg114, %cond.true109 ], [ %83, %cond.false115 ]
  store double %cond121, ptr %ai, align 8, !tbaa !16
  %84 = load double, ptr %ar, align 8, !tbaa !16
  %85 = load double, ptr %ai, align 8, !tbaa !16
  %cmp122 = fcmp oge double %84, %85
  br i1 %cmp122, label %if.then124, label %if.else130

if.then124:                                       ; preds = %cond.end120
  %86 = load double, ptr %ar, align 8, !tbaa !16
  %87 = load double, ptr %ai, align 8, !tbaa !16
  %add125 = fadd double %86, %87
  %88 = load double, ptr %ar, align 8, !tbaa !16
  %cmp126 = fcmp oeq double %add125, %88
  br i1 %cmp126, label %if.then128, label %if.else

if.then128:                                       ; preds = %if.then124
  %89 = load double, ptr %ar, align 8, !tbaa !16
  store double %89, ptr %a, align 8, !tbaa !16
  br label %if.end129

if.else:                                          ; preds = %if.then124
  %90 = load double, ptr %ai, align 8, !tbaa !16
  %91 = load double, ptr %ar, align 8, !tbaa !16
  %div = fdiv double %90, %91
  store double %div, ptr %r, align 8, !tbaa !16
  %92 = load double, ptr %ar, align 8, !tbaa !16
  %93 = load double, ptr %r, align 8, !tbaa !16
  %94 = load double, ptr %r, align 8, !tbaa !16
  %95 = call double @llvm.fmuladd.f64(double %93, double %94, double 1.000000e+00)
  %call = call double @sqrt(double noundef %95) #4
  %mul = fmul double %92, %call
  store double %mul, ptr %a, align 8, !tbaa !16
  br label %if.end129

if.end129:                                        ; preds = %if.else, %if.then128
  br label %if.end141

if.else130:                                       ; preds = %cond.end120
  %96 = load double, ptr %ai, align 8, !tbaa !16
  %97 = load double, ptr %ar, align 8, !tbaa !16
  %add131 = fadd double %96, %97
  %98 = load double, ptr %ai, align 8, !tbaa !16
  %cmp132 = fcmp oeq double %add131, %98
  br i1 %cmp132, label %if.then134, label %if.else135

if.then134:                                       ; preds = %if.else130
  %99 = load double, ptr %ai, align 8, !tbaa !16
  store double %99, ptr %a, align 8, !tbaa !16
  br label %if.end140

if.else135:                                       ; preds = %if.else130
  %100 = load double, ptr %ar, align 8, !tbaa !16
  %101 = load double, ptr %ai, align 8, !tbaa !16
  %div136 = fdiv double %100, %101
  store double %div136, ptr %r, align 8, !tbaa !16
  %102 = load double, ptr %ai, align 8, !tbaa !16
  %103 = load double, ptr %r, align 8, !tbaa !16
  %104 = load double, ptr %r, align 8, !tbaa !16
  %105 = call double @llvm.fmuladd.f64(double %103, double %104, double 1.000000e+00)
  %call138 = call double @sqrt(double noundef %105) #4
  %mul139 = fmul double %102, %call138
  store double %mul139, ptr %a, align 8, !tbaa !16
  br label %if.end140

if.end140:                                        ; preds = %if.else135, %if.then134
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %if.end129
  call void @llvm.lifetime.end.p0(i64 8, ptr %ai) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ar) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #4
  %106 = load i32, ptr %scale.addr, align 4, !tbaa !4
  %cmp142 = icmp eq i32 %106, 1
  br i1 %cmp142, label %if.then144, label %if.else148

if.then144:                                       ; preds = %if.end141
  %107 = load double, ptr %a, align 8, !tbaa !16
  %108 = load ptr, ptr %Rs.addr, align 8, !tbaa !8
  %109 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom145 = sext i32 %109 to i64
  %arrayidx146 = getelementptr inbounds double, ptr %108, i64 %idxprom145
  %110 = load double, ptr %arrayidx146, align 8, !tbaa !16
  %add147 = fadd double %110, %107
  store double %add147, ptr %arrayidx146, align 8, !tbaa !16
  br label %if.end165

if.else148:                                       ; preds = %if.end141
  %111 = load i32, ptr %scale.addr, align 4, !tbaa !4
  %cmp149 = icmp sgt i32 %111, 1
  br i1 %cmp149, label %if.then151, label %if.end164

if.then151:                                       ; preds = %if.else148
  %112 = load ptr, ptr %Rs.addr, align 8, !tbaa !8
  %113 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom152 = sext i32 %113 to i64
  %arrayidx153 = getelementptr inbounds double, ptr %112, i64 %idxprom152
  %114 = load double, ptr %arrayidx153, align 8, !tbaa !16
  %115 = load double, ptr %a, align 8, !tbaa !16
  %cmp154 = fcmp ogt double %114, %115
  br i1 %cmp154, label %cond.true156, label %cond.false159

cond.true156:                                     ; preds = %if.then151
  %116 = load ptr, ptr %Rs.addr, align 8, !tbaa !8
  %117 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom157 = sext i32 %117 to i64
  %arrayidx158 = getelementptr inbounds double, ptr %116, i64 %idxprom157
  %118 = load double, ptr %arrayidx158, align 8, !tbaa !16
  br label %cond.end160

cond.false159:                                    ; preds = %if.then151
  %119 = load double, ptr %a, align 8, !tbaa !16
  br label %cond.end160

cond.end160:                                      ; preds = %cond.false159, %cond.true156
  %cond161 = phi double [ %118, %cond.true156 ], [ %119, %cond.false159 ]
  %120 = load ptr, ptr %Rs.addr, align 8, !tbaa !8
  %121 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom162 = sext i32 %121 to i64
  %arrayidx163 = getelementptr inbounds double, ptr %120, i64 %idxprom162
  store double %cond161, ptr %arrayidx163, align 8, !tbaa !16
  br label %if.end164

if.end164:                                        ; preds = %cond.end160, %if.else148
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %if.then144
  br label %for.inc166

for.inc166:                                       ; preds = %if.end165
  %122 = load i32, ptr %p, align 4, !tbaa !4
  %inc167 = add nsw i32 %122, 1
  store i32 %inc167, ptr %p, align 4, !tbaa !4
  br label %for.cond64, !llvm.loop !19

for.end168:                                       ; preds = %for.cond64
  br label %for.inc169

for.inc169:                                       ; preds = %for.end168
  %123 = load i32, ptr %col, align 4, !tbaa !4
  %inc170 = add nsw i32 %123, 1
  store i32 %inc170, ptr %col, align 4, !tbaa !4
  br label %for.cond55, !llvm.loop !20

for.end171:                                       ; preds = %for.cond55
  %124 = load i32, ptr %scale.addr, align 4, !tbaa !4
  %cmp172 = icmp sgt i32 %124, 0
  br i1 %cmp172, label %if.then174, label %if.end190

if.then174:                                       ; preds = %for.end171
  store i32 0, ptr %row, align 4, !tbaa !4
  br label %for.cond175

for.cond175:                                      ; preds = %for.inc187, %if.then174
  %125 = load i32, ptr %row, align 4, !tbaa !4
  %126 = load i32, ptr %n.addr, align 4, !tbaa !4
  %cmp176 = icmp slt i32 %125, %126
  br i1 %cmp176, label %for.body178, label %for.end189

for.body178:                                      ; preds = %for.cond175
  %127 = load ptr, ptr %Rs.addr, align 8, !tbaa !8
  %128 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom179 = sext i32 %128 to i64
  %arrayidx180 = getelementptr inbounds double, ptr %127, i64 %idxprom179
  %129 = load double, ptr %arrayidx180, align 8, !tbaa !16
  %cmp181 = fcmp oeq double %129, 0.000000e+00
  br i1 %cmp181, label %if.then183, label %if.end186

if.then183:                                       ; preds = %for.body178
  %130 = load ptr, ptr %Rs.addr, align 8, !tbaa !8
  %131 = load i32, ptr %row, align 4, !tbaa !4
  %idxprom184 = sext i32 %131 to i64
  %arrayidx185 = getelementptr inbounds double, ptr %130, i64 %idxprom184
  store double 1.000000e+00, ptr %arrayidx185, align 8, !tbaa !16
  br label %if.end186

if.end186:                                        ; preds = %if.then183, %for.body178
  br label %for.inc187

for.inc187:                                       ; preds = %if.end186
  %132 = load i32, ptr %row, align 4, !tbaa !4
  %inc188 = add nsw i32 %132, 1
  store i32 %inc188, ptr %row, align 4, !tbaa !4
  br label %for.cond175, !llvm.loop !21

for.end189:                                       ; preds = %for.cond175
  br label %if.end190

if.end190:                                        ; preds = %for.end189, %for.end171
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end190, %if.then84, %if.then75, %if.then29, %if.then20, %if.then13, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %check_duplicates) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pend) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %col) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %row) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Az) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #4
  %133 = load i32, ptr %retval, align 4
  ret i32 %133
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !5, i64 76}
!11 = !{!"klu_common_struct", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !9, i64 56, !9, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !13, i64 144, !13, i64 152}
!12 = !{!"double", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!12, !12, i64 0}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
