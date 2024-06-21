; ModuleID = 'samples/407.bc'
source_filename = "../Source/cs_utsolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_di_sparse = type { i32, i32, i32, ptr, ptr, ptr, i32 }

; Function Attrs: nounwind uwtable
define i32 @cs_di_utsolve(ptr noundef %U, ptr noundef %x) #0 {
entry:
  %retval = alloca i32, align 4
  %U.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %p = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %Up = alloca ptr, align 8
  %Ui = alloca ptr, align 8
  %Ux = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %U, ptr %U.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Up) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ui) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ux) #3
  %0 = load ptr, ptr %U.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %U.addr, align 8, !tbaa !4
  %nz = getelementptr inbounds %struct.cs_di_sparse, ptr %1, i32 0, i32 6
  %2 = load i32, ptr %nz, align 8, !tbaa !8
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %U.addr, align 8, !tbaa !4
  %n2 = getelementptr inbounds %struct.cs_di_sparse, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %n2, align 8, !tbaa !11
  store i32 %5, ptr %n, align 4, !tbaa !12
  %6 = load ptr, ptr %U.addr, align 8, !tbaa !4
  %p3 = getelementptr inbounds %struct.cs_di_sparse, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %p3, align 8, !tbaa !13
  store ptr %7, ptr %Up, align 8, !tbaa !4
  %8 = load ptr, ptr %U.addr, align 8, !tbaa !4
  %i = getelementptr inbounds %struct.cs_di_sparse, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %i, align 8, !tbaa !14
  store ptr %9, ptr %Ui, align 8, !tbaa !4
  %10 = load ptr, ptr %U.addr, align 8, !tbaa !4
  %x4 = getelementptr inbounds %struct.cs_di_sparse, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %x4, align 8, !tbaa !15
  store ptr %11, ptr %Ux, align 8, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %if.end
  %12 = load i32, ptr %j, align 4, !tbaa !12
  %13 = load i32, ptr %n, align 4, !tbaa !12
  %cmp5 = icmp slt i32 %12, %13
  br i1 %cmp5, label %for.body, label %for.end29

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %Up, align 8, !tbaa !4
  %15 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds i32, ptr %14, i64 %idxprom
  %16 = load i32, ptr %arrayidx, align 4, !tbaa !12
  store i32 %16, ptr %p, align 4, !tbaa !12
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %17 = load i32, ptr %p, align 4, !tbaa !12
  %18 = load ptr, ptr %Up, align 8, !tbaa !4
  %19 = load i32, ptr %j, align 4, !tbaa !12
  %add = add nsw i32 %19, 1
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %18, i64 %idxprom7
  %20 = load i32, ptr %arrayidx8, align 4, !tbaa !12
  %sub = sub nsw i32 %20, 1
  %cmp9 = icmp slt i32 %17, %sub
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond6
  %21 = load ptr, ptr %Ux, align 8, !tbaa !4
  %22 = load i32, ptr %p, align 4, !tbaa !12
  %idxprom11 = sext i32 %22 to i64
  %arrayidx12 = getelementptr inbounds double, ptr %21, i64 %idxprom11
  %23 = load double, ptr %arrayidx12, align 8, !tbaa !16
  %24 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %Ui, align 8, !tbaa !4
  %26 = load i32, ptr %p, align 4, !tbaa !12
  %idxprom13 = sext i32 %26 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %25, i64 %idxprom13
  %27 = load i32, ptr %arrayidx14, align 4, !tbaa !12
  %idxprom15 = sext i32 %27 to i64
  %arrayidx16 = getelementptr inbounds double, ptr %24, i64 %idxprom15
  %28 = load double, ptr %arrayidx16, align 8, !tbaa !16
  %29 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %30 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom17 = sext i32 %30 to i64
  %arrayidx18 = getelementptr inbounds double, ptr %29, i64 %idxprom17
  %31 = load double, ptr %arrayidx18, align 8, !tbaa !16
  %neg = fneg double %23
  %32 = call double @llvm.fmuladd.f64(double %neg, double %28, double %31)
  store double %32, ptr %arrayidx18, align 8, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %33 = load i32, ptr %p, align 4, !tbaa !12
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %p, align 4, !tbaa !12
  br label %for.cond6, !llvm.loop !18

for.end:                                          ; preds = %for.cond6
  %34 = load ptr, ptr %Ux, align 8, !tbaa !4
  %35 = load ptr, ptr %Up, align 8, !tbaa !4
  %36 = load i32, ptr %j, align 4, !tbaa !12
  %add19 = add nsw i32 %36, 1
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %35, i64 %idxprom20
  %37 = load i32, ptr %arrayidx21, align 4, !tbaa !12
  %sub22 = sub nsw i32 %37, 1
  %idxprom23 = sext i32 %sub22 to i64
  %arrayidx24 = getelementptr inbounds double, ptr %34, i64 %idxprom23
  %38 = load double, ptr %arrayidx24, align 8, !tbaa !16
  %39 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %40 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom25 = sext i32 %40 to i64
  %arrayidx26 = getelementptr inbounds double, ptr %39, i64 %idxprom25
  %41 = load double, ptr %arrayidx26, align 8, !tbaa !16
  %div = fdiv double %41, %38
  store double %div, ptr %arrayidx26, align 8, !tbaa !16
  br label %for.inc27

for.inc27:                                        ; preds = %for.end
  %42 = load i32, ptr %j, align 4, !tbaa !12
  %inc28 = add nsw i32 %42, 1
  store i32 %inc28, ptr %j, align 4, !tbaa !12
  br label %for.cond, !llvm.loop !20

for.end29:                                        ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end29, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ux) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ui) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Up) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #3
  %43 = load i32, ptr %retval, align 4
  ret i32 %43
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
!8 = !{!9, !10, i64 40}
!9 = !{!"cs_di_sparse", !10, i64 0, !10, i64 4, !10, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !10, i64 40}
!10 = !{!"int", !6, i64 0}
!11 = !{!9, !10, i64 8}
!12 = !{!10, !10, i64 0}
!13 = !{!9, !5, i64 16}
!14 = !{!9, !5, i64 24}
!15 = !{!9, !5, i64 32}
!16 = !{!17, !17, i64 0}
!17 = !{!"double", !6, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
