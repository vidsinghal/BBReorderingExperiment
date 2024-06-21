; ModuleID = 'samples/652.bc'
source_filename = "../Source/umf_is_permutation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i64 @umf_l_is_permutation(ptr noundef %P, ptr noundef %W, i64 noundef %n, i64 noundef %r) #0 {
entry:
  %retval = alloca i64, align 8
  %P.addr = alloca ptr, align 8
  %W.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %r.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %k = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  store ptr %W, ptr %W.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !8
  store i64 %r, ptr %r.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #2
  %0 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i64, ptr %i, align 8, !tbaa !8
  %2 = load i64, ptr %n.addr, align 8, !tbaa !8
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %W.addr, align 8, !tbaa !4
  %4 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i64, ptr %3, i64 %4
  store i64 0, ptr %arrayidx, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64, ptr %i, align 8, !tbaa !8
  %inc = add nsw i64 %5, 1
  store i64 %inc, ptr %i, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %k, align 8, !tbaa !8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.end
  %6 = load i64, ptr %k, align 8, !tbaa !8
  %7 = load i64, ptr %r.addr, align 8, !tbaa !8
  %cmp2 = icmp slt i64 %6, %7
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  %8 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %9 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx4 = getelementptr inbounds i64, ptr %8, i64 %9
  %10 = load i64, ptr %arrayidx4, align 8, !tbaa !8
  store i64 %10, ptr %i, align 8, !tbaa !8
  %11 = load i64, ptr %i, align 8, !tbaa !8
  %cmp5 = icmp slt i64 %11, 0
  br i1 %cmp5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body3
  %12 = load i64, ptr %i, align 8, !tbaa !8
  %13 = load i64, ptr %n.addr, align 8, !tbaa !8
  %cmp6 = icmp sge i64 %12, %13
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %for.body3
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %14 = load ptr, ptr %W.addr, align 8, !tbaa !4
  %15 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx9 = getelementptr inbounds i64, ptr %14, i64 %15
  %16 = load i64, ptr %arrayidx9, align 8, !tbaa !8
  %tobool10 = icmp ne i64 %16, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %17 = load ptr, ptr %W.addr, align 8, !tbaa !4
  %18 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx13 = getelementptr inbounds i64, ptr %17, i64 %18
  store i64 1, ptr %arrayidx13, align 8, !tbaa !8
  br label %for.inc14

for.inc14:                                        ; preds = %if.end12
  %19 = load i64, ptr %k, align 8, !tbaa !8
  %inc15 = add nsw i64 %19, 1
  store i64 %inc15, ptr %k, align 8, !tbaa !8
  br label %for.cond1, !llvm.loop !12

for.end16:                                        ; preds = %for.cond1
  store i64 1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end16, %if.then11, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #2
  %20 = load i64, ptr %retval, align 8
  ret i64 %20
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
!9 = !{!"long", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
