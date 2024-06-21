; ModuleID = 'samples/588.bc'
source_filename = "../Source/cs_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: uwtable
define ptr @cs_dl_post(ptr noundef %parent, i64 noundef %n) #0 {
entry:
  %retval = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %post = alloca ptr, align 8
  %w = alloca ptr, align 8
  %head = alloca ptr, align 8
  %next = alloca ptr, align 8
  %stack = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #3
  store i64 0, ptr %k, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %post) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %stack) #3
  %0 = load ptr, ptr %parent.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8, !tbaa !8
  %call = call ptr @cs_dl_malloc(i64 noundef %1, i64 noundef 8)
  store ptr %call, ptr %post, align 8, !tbaa !4
  %2 = load i64, ptr %n.addr, align 8, !tbaa !8
  %mul = mul nsw i64 3, %2
  %call1 = call ptr @cs_dl_malloc(i64 noundef %mul, i64 noundef 8)
  store ptr %call1, ptr %w, align 8, !tbaa !4
  %3 = load ptr, ptr %w, align 8, !tbaa !4
  %tobool2 = icmp ne ptr %3, null
  br i1 %tobool2, label %lor.lhs.false, label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr %post, align 8, !tbaa !4
  %tobool3 = icmp ne ptr %4, null
  br i1 %tobool3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load ptr, ptr %post, align 8, !tbaa !4
  %6 = load ptr, ptr %w, align 8, !tbaa !4
  %call5 = call ptr @cs_dl_idone(ptr noundef %5, ptr noundef null, ptr noundef %6, i64 noundef 0)
  store ptr %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %7 = load ptr, ptr %w, align 8, !tbaa !4
  store ptr %7, ptr %head, align 8, !tbaa !4
  %8 = load ptr, ptr %w, align 8, !tbaa !4
  %9 = load i64, ptr %n.addr, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i64, ptr %8, i64 %9
  store ptr %add.ptr, ptr %next, align 8, !tbaa !4
  %10 = load ptr, ptr %w, align 8, !tbaa !4
  %11 = load i64, ptr %n.addr, align 8, !tbaa !8
  %mul7 = mul nsw i64 2, %11
  %add.ptr8 = getelementptr inbounds i64, ptr %10, i64 %mul7
  store ptr %add.ptr8, ptr %stack, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %12 = load i64, ptr %j, align 8, !tbaa !8
  %13 = load i64, ptr %n.addr, align 8, !tbaa !8
  %cmp = icmp slt i64 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %head, align 8, !tbaa !4
  %15 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i64, ptr %14, i64 %15
  store i64 -1, ptr %arrayidx, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i64, ptr %j, align 8, !tbaa !8
  %inc = add nsw i64 %16, 1
  store i64 %inc, ptr %j, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %17 = load i64, ptr %n.addr, align 8, !tbaa !8
  %sub = sub nsw i64 %17, 1
  store i64 %sub, ptr %j, align 8, !tbaa !8
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc21, %for.end
  %18 = load i64, ptr %j, align 8, !tbaa !8
  %cmp10 = icmp sge i64 %18, 0
  br i1 %cmp10, label %for.body11, label %for.end22

for.body11:                                       ; preds = %for.cond9
  %19 = load ptr, ptr %parent.addr, align 8, !tbaa !4
  %20 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx12 = getelementptr inbounds i64, ptr %19, i64 %20
  %21 = load i64, ptr %arrayidx12, align 8, !tbaa !8
  %cmp13 = icmp eq i64 %21, -1
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %for.body11
  br label %for.inc21

if.end15:                                         ; preds = %for.body11
  %22 = load ptr, ptr %head, align 8, !tbaa !4
  %23 = load ptr, ptr %parent.addr, align 8, !tbaa !4
  %24 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx16 = getelementptr inbounds i64, ptr %23, i64 %24
  %25 = load i64, ptr %arrayidx16, align 8, !tbaa !8
  %arrayidx17 = getelementptr inbounds i64, ptr %22, i64 %25
  %26 = load i64, ptr %arrayidx17, align 8, !tbaa !8
  %27 = load ptr, ptr %next, align 8, !tbaa !4
  %28 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx18 = getelementptr inbounds i64, ptr %27, i64 %28
  store i64 %26, ptr %arrayidx18, align 8, !tbaa !8
  %29 = load i64, ptr %j, align 8, !tbaa !8
  %30 = load ptr, ptr %head, align 8, !tbaa !4
  %31 = load ptr, ptr %parent.addr, align 8, !tbaa !4
  %32 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx19 = getelementptr inbounds i64, ptr %31, i64 %32
  %33 = load i64, ptr %arrayidx19, align 8, !tbaa !8
  %arrayidx20 = getelementptr inbounds i64, ptr %30, i64 %33
  store i64 %29, ptr %arrayidx20, align 8, !tbaa !8
  br label %for.inc21

for.inc21:                                        ; preds = %if.end15, %if.then14
  %34 = load i64, ptr %j, align 8, !tbaa !8
  %dec = add nsw i64 %34, -1
  store i64 %dec, ptr %j, align 8, !tbaa !8
  br label %for.cond9, !llvm.loop !12

for.end22:                                        ; preds = %for.cond9
  store i64 0, ptr %j, align 8, !tbaa !8
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc31, %for.end22
  %35 = load i64, ptr %j, align 8, !tbaa !8
  %36 = load i64, ptr %n.addr, align 8, !tbaa !8
  %cmp24 = icmp slt i64 %35, %36
  br i1 %cmp24, label %for.body25, label %for.end33

for.body25:                                       ; preds = %for.cond23
  %37 = load ptr, ptr %parent.addr, align 8, !tbaa !4
  %38 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx26 = getelementptr inbounds i64, ptr %37, i64 %38
  %39 = load i64, ptr %arrayidx26, align 8, !tbaa !8
  %cmp27 = icmp ne i64 %39, -1
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %for.body25
  br label %for.inc31

if.end29:                                         ; preds = %for.body25
  %40 = load i64, ptr %j, align 8, !tbaa !8
  %41 = load i64, ptr %k, align 8, !tbaa !8
  %42 = load ptr, ptr %head, align 8, !tbaa !4
  %43 = load ptr, ptr %next, align 8, !tbaa !4
  %44 = load ptr, ptr %post, align 8, !tbaa !4
  %45 = load ptr, ptr %stack, align 8, !tbaa !4
  %call30 = call i64 @cs_dl_tdfs(i64 noundef %40, i64 noundef %41, ptr noundef %42, ptr noundef %43, ptr noundef %44, ptr noundef %45)
  store i64 %call30, ptr %k, align 8, !tbaa !8
  br label %for.inc31

for.inc31:                                        ; preds = %if.end29, %if.then28
  %46 = load i64, ptr %j, align 8, !tbaa !8
  %inc32 = add nsw i64 %46, 1
  store i64 %inc32, ptr %j, align 8, !tbaa !8
  br label %for.cond23, !llvm.loop !13

for.end33:                                        ; preds = %for.cond23
  %47 = load ptr, ptr %post, align 8, !tbaa !4
  %48 = load ptr, ptr %w, align 8, !tbaa !4
  %call34 = call ptr @cs_dl_idone(ptr noundef %47, ptr noundef null, ptr noundef %48, i64 noundef 1)
  store ptr %call34, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end33, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %stack) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %post) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  %49 = load ptr, ptr %retval, align 8
  ret ptr %49
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @cs_dl_malloc(i64 noundef, i64 noundef) #2

declare ptr @cs_dl_idone(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i64 @cs_dl_tdfs(i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
