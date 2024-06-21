; ModuleID = 'samples/345.bc'
source_filename = "utilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i64 @hypre_multmod(i64 noundef %a, i64 noundef %b, i64 noundef %mod) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %mod.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !4
  store i64 %mod, ptr %mod.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #5
  store i64 0, ptr %res, align 8, !tbaa !4
  %0 = load i64, ptr %mod.addr, align 8, !tbaa !4
  %1 = load i64, ptr %a.addr, align 8, !tbaa !4
  %rem = srem i64 %1, %0
  store i64 %rem, ptr %a.addr, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i64, ptr %b.addr, align 8, !tbaa !4
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, ptr %b.addr, align 8, !tbaa !4
  %and = and i64 %3, 1
  %tobool1 = icmp ne i64 %and, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load i64, ptr %res, align 8, !tbaa !4
  %5 = load i64, ptr %a.addr, align 8, !tbaa !4
  %add = add nsw i64 %4, %5
  %6 = load i64, ptr %mod.addr, align 8, !tbaa !4
  %rem2 = srem i64 %add, %6
  store i64 %rem2, ptr %res, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %7 = load i64, ptr %a.addr, align 8, !tbaa !4
  %mul = mul nsw i64 2, %7
  %8 = load i64, ptr %mod.addr, align 8, !tbaa !4
  %rem3 = srem i64 %mul, %8
  store i64 %rem3, ptr %a.addr, align 8, !tbaa !4
  %9 = load i64, ptr %b.addr, align 8, !tbaa !4
  %shr = ashr i64 %9, 1
  store i64 %shr, ptr %b.addr, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %10 = load i64, ptr %res, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #5
  ret i64 %10
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @hypre_partition1D(i64 noundef %n, i64 noundef %p, i64 noundef %j, ptr noundef %s, ptr noundef %e) #0 {
entry:
  %n.addr = alloca i64, align 8
  %p.addr = alloca i64, align 8
  %j.addr = alloca i64, align 8
  %s.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %size = alloca i64, align 8
  %rest = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store i64 %p, ptr %p.addr, align 8, !tbaa !4
  store i64 %j, ptr %j.addr, align 8, !tbaa !4
  store ptr %s, ptr %s.addr, align 8, !tbaa !10
  store ptr %e, ptr %e.addr, align 8, !tbaa !10
  %0 = load i64, ptr %p.addr, align 8, !tbaa !4
  %cmp = icmp eq i64 1, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8, !tbaa !10
  store i64 0, ptr %1, align 8, !tbaa !4
  %2 = load i64, ptr %n.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %e.addr, align 8, !tbaa !10
  store i64 %2, ptr %3, align 8, !tbaa !4
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #5
  %4 = load i64, ptr %n.addr, align 8, !tbaa !4
  %5 = load i64, ptr %p.addr, align 8, !tbaa !4
  %div = sdiv i64 %4, %5
  store i64 %div, ptr %size, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rest) #5
  %6 = load i64, ptr %n.addr, align 8, !tbaa !4
  %7 = load i64, ptr %size, align 8, !tbaa !4
  %8 = load i64, ptr %p.addr, align 8, !tbaa !4
  %mul = mul nsw i64 %7, %8
  %sub = sub nsw i64 %6, %mul
  store i64 %sub, ptr %rest, align 8, !tbaa !4
  %9 = load i64, ptr %j.addr, align 8, !tbaa !4
  %10 = load i64, ptr %rest, align 8, !tbaa !4
  %cmp1 = icmp slt i64 %9, %10
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %11 = load i64, ptr %j.addr, align 8, !tbaa !4
  %12 = load i64, ptr %size, align 8, !tbaa !4
  %add = add nsw i64 %12, 1
  %mul3 = mul nsw i64 %11, %add
  %13 = load ptr, ptr %s.addr, align 8, !tbaa !10
  store i64 %mul3, ptr %13, align 8, !tbaa !4
  %14 = load i64, ptr %j.addr, align 8, !tbaa !4
  %add4 = add nsw i64 %14, 1
  %15 = load i64, ptr %size, align 8, !tbaa !4
  %add5 = add nsw i64 %15, 1
  %mul6 = mul nsw i64 %add4, %add5
  %16 = load ptr, ptr %e.addr, align 8, !tbaa !10
  store i64 %mul6, ptr %16, align 8, !tbaa !4
  br label %if.end12

if.else:                                          ; preds = %if.end
  %17 = load i64, ptr %j.addr, align 8, !tbaa !4
  %18 = load i64, ptr %size, align 8, !tbaa !4
  %mul7 = mul nsw i64 %17, %18
  %19 = load i64, ptr %rest, align 8, !tbaa !4
  %add8 = add nsw i64 %mul7, %19
  %20 = load ptr, ptr %s.addr, align 8, !tbaa !10
  store i64 %add8, ptr %20, align 8, !tbaa !4
  %21 = load i64, ptr %j.addr, align 8, !tbaa !4
  %add9 = add nsw i64 %21, 1
  %22 = load i64, ptr %size, align 8, !tbaa !4
  %mul10 = mul nsw i64 %add9, %22
  %23 = load i64, ptr %rest, align 8, !tbaa !4
  %add11 = add nsw i64 %mul10, %23
  %24 = load ptr, ptr %e.addr, align 8, !tbaa !10
  store i64 %add11, ptr %24, align 8, !tbaa !4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %rest) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #5
  br label %return

return:                                           ; preds = %if.end12, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @hypre_strcpy(ptr noundef %destination, ptr noundef %source) #0 {
entry:
  %retval = alloca ptr, align 8
  %destination.addr = alloca ptr, align 8
  %source.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %destination, ptr %destination.addr, align 8, !tbaa !10
  store ptr %source, ptr %source.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #5
  %0 = load ptr, ptr %source.addr, align 8, !tbaa !10
  %call = call i64 @strlen(ptr noundef %0) #6
  store i64 %call, ptr %len, align 8, !tbaa !12
  %1 = load ptr, ptr %source.addr, align 8, !tbaa !10
  %2 = load ptr, ptr %destination.addr, align 8, !tbaa !10
  %3 = load i64, ptr %len, align 8, !tbaa !12
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %3
  %cmp = icmp ugt ptr %1, %add.ptr
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %destination.addr, align 8, !tbaa !10
  %5 = load ptr, ptr %source.addr, align 8, !tbaa !10
  %6 = load i64, ptr %len, align 8, !tbaa !12
  %add.ptr1 = getelementptr inbounds i8, ptr %5, i64 %6
  %cmp2 = icmp ugt ptr %4, %add.ptr1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load ptr, ptr %destination.addr, align 8, !tbaa !10
  %8 = load ptr, ptr %source.addr, align 8, !tbaa !10
  %call3 = call ptr @strcpy(ptr noundef %7, ptr noundef %8) #5
  store ptr %call3, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr %destination.addr, align 8, !tbaa !10
  %10 = load ptr, ptr %source.addr, align 8, !tbaa !10
  %11 = load i64, ptr %len, align 8, !tbaa !12
  %add = add i64 %11, 1
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %9, ptr align 1 %10, i64 %add, i1 false)
  store ptr %9, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #5
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !6, i64 0}
