; ModuleID = 'samples/261.bc'
source_filename = "../Source/cs_cumsum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define double @cs_di_cumsum(ptr noundef %p, ptr noundef %c, i32 noundef %n) #0 {
entry:
  %retval = alloca double, align 8
  %p.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %nz = alloca i32, align 4
  %nz2 = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %nz) #2
  store i32 0, ptr %nz, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %nz2) #2
  store double 0.000000e+00, ptr %nz2, align 8, !tbaa !10
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store double -1.000000e+00, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !tbaa !8
  %3 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %nz, align 4, !tbaa !8
  %5 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %6 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  store i32 %4, ptr %arrayidx, align 4, !tbaa !8
  %7 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %7, i64 %idxprom2
  %9 = load i32, ptr %arrayidx3, align 4, !tbaa !8
  %10 = load i32, ptr %nz, align 4, !tbaa !8
  %add = add nsw i32 %10, %9
  store i32 %add, ptr %nz, align 4, !tbaa !8
  %11 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %12 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %11, i64 %idxprom4
  %13 = load i32, ptr %arrayidx5, align 4, !tbaa !8
  %conv = sitofp i32 %13 to double
  %14 = load double, ptr %nz2, align 8, !tbaa !10
  %add6 = fadd double %14, %conv
  store double %add6, ptr %nz2, align 8, !tbaa !10
  %15 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %16 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom7 = sext i32 %16 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %15, i64 %idxprom7
  %17 = load i32, ptr %arrayidx8, align 4, !tbaa !8
  %18 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %19 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom9 = sext i32 %19 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %18, i64 %idxprom9
  store i32 %17, ptr %arrayidx10, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %21 = load i32, ptr %nz, align 4, !tbaa !8
  %22 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %23 = load i32, ptr %n.addr, align 4, !tbaa !8
  %idxprom11 = sext i32 %23 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %22, i64 %idxprom11
  store i32 %21, ptr %arrayidx12, align 4, !tbaa !8
  %24 = load double, ptr %nz2, align 8, !tbaa !10
  store double %24, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %nz2) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %nz) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #2
  %25 = load double, ptr %retval, align 8
  ret double %25
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
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
