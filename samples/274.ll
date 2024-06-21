; ModuleID = 'samples/274.bc'
source_filename = "../Source/cs_reach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_cl_sparse = type { i64, i64, i64, ptr, ptr, ptr, i64 }

; Function Attrs: uwtable
define i64 @cs_cl_reach(ptr noundef %G, ptr noundef %B, i64 noundef %k, ptr noundef %xi, ptr noundef %pinv) #0 {
entry:
  %retval = alloca i64, align 8
  %G.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %k.addr = alloca i64, align 8
  %xi.addr = alloca ptr, align 8
  %pinv.addr = alloca ptr, align 8
  %p = alloca i64, align 8
  %n = alloca i64, align 8
  %top = alloca i64, align 8
  %Bp = alloca ptr, align 8
  %Bi = alloca ptr, align 8
  %Gp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %G, ptr %G.addr, align 8, !tbaa !4
  store ptr %B, ptr %B.addr, align 8, !tbaa !4
  store i64 %k, ptr %k.addr, align 8, !tbaa !8
  store ptr %xi, ptr %xi.addr, align 8, !tbaa !4
  store ptr %pinv, ptr %pinv.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %top) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Bp) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Bi) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Gp) #3
  %0 = load ptr, ptr %G.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %G.addr, align 8, !tbaa !4
  %nz = getelementptr inbounds %struct.cs_cl_sparse, ptr %1, i32 0, i32 6
  %2 = load i64, ptr %nz, align 8, !tbaa !10
  %cmp = icmp eq i64 %2, -1
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %land.lhs.true2, label %if.then

land.lhs.true2:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %nz3 = getelementptr inbounds %struct.cs_cl_sparse, ptr %4, i32 0, i32 6
  %5 = load i64, ptr %nz3, align 8, !tbaa !10
  %cmp4 = icmp eq i64 %5, -1
  br i1 %cmp4, label %lor.lhs.false5, label %if.then

lor.lhs.false5:                                   ; preds = %land.lhs.true2
  %6 = load ptr, ptr %xi.addr, align 8, !tbaa !4
  %tobool6 = icmp ne ptr %6, null
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false5, %land.lhs.true2, %lor.lhs.false, %land.lhs.true, %entry
  store i64 -1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5
  %7 = load ptr, ptr %G.addr, align 8, !tbaa !4
  %n7 = getelementptr inbounds %struct.cs_cl_sparse, ptr %7, i32 0, i32 2
  %8 = load i64, ptr %n7, align 8, !tbaa !12
  store i64 %8, ptr %n, align 8, !tbaa !8
  %9 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %p8 = getelementptr inbounds %struct.cs_cl_sparse, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %p8, align 8, !tbaa !13
  store ptr %10, ptr %Bp, align 8, !tbaa !4
  %11 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %i = getelementptr inbounds %struct.cs_cl_sparse, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %i, align 8, !tbaa !14
  store ptr %12, ptr %Bi, align 8, !tbaa !4
  %13 = load ptr, ptr %G.addr, align 8, !tbaa !4
  %p9 = getelementptr inbounds %struct.cs_cl_sparse, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %p9, align 8, !tbaa !13
  store ptr %14, ptr %Gp, align 8, !tbaa !4
  %15 = load i64, ptr %n, align 8, !tbaa !8
  store i64 %15, ptr %top, align 8, !tbaa !8
  %16 = load ptr, ptr %Bp, align 8, !tbaa !4
  %17 = load i64, ptr %k.addr, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i64, ptr %16, i64 %17
  %18 = load i64, ptr %arrayidx, align 8, !tbaa !8
  store i64 %18, ptr %p, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load i64, ptr %p, align 8, !tbaa !8
  %20 = load ptr, ptr %Bp, align 8, !tbaa !4
  %21 = load i64, ptr %k.addr, align 8, !tbaa !8
  %add = add nsw i64 %21, 1
  %arrayidx10 = getelementptr inbounds i64, ptr %20, i64 %add
  %22 = load i64, ptr %arrayidx10, align 8, !tbaa !8
  %cmp11 = icmp slt i64 %19, %22
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load ptr, ptr %Gp, align 8, !tbaa !4
  %24 = load ptr, ptr %Bi, align 8, !tbaa !4
  %25 = load i64, ptr %p, align 8, !tbaa !8
  %arrayidx12 = getelementptr inbounds i64, ptr %24, i64 %25
  %26 = load i64, ptr %arrayidx12, align 8, !tbaa !8
  %arrayidx13 = getelementptr inbounds i64, ptr %23, i64 %26
  %27 = load i64, ptr %arrayidx13, align 8, !tbaa !8
  %cmp14 = icmp slt i64 %27, 0
  br i1 %cmp14, label %if.end17, label %if.then15

if.then15:                                        ; preds = %for.body
  %28 = load ptr, ptr %Bi, align 8, !tbaa !4
  %29 = load i64, ptr %p, align 8, !tbaa !8
  %arrayidx16 = getelementptr inbounds i64, ptr %28, i64 %29
  %30 = load i64, ptr %arrayidx16, align 8, !tbaa !8
  %31 = load ptr, ptr %G.addr, align 8, !tbaa !4
  %32 = load i64, ptr %top, align 8, !tbaa !8
  %33 = load ptr, ptr %xi.addr, align 8, !tbaa !4
  %34 = load ptr, ptr %xi.addr, align 8, !tbaa !4
  %35 = load i64, ptr %n, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i64, ptr %34, i64 %35
  %36 = load ptr, ptr %pinv.addr, align 8, !tbaa !4
  %call = call i64 @cs_cl_dfs(i64 noundef %30, ptr noundef %31, i64 noundef %32, ptr noundef %33, ptr noundef %add.ptr, ptr noundef %36)
  store i64 %call, ptr %top, align 8, !tbaa !8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %37 = load i64, ptr %p, align 8, !tbaa !8
  %inc = add nsw i64 %37, 1
  store i64 %inc, ptr %p, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %38 = load i64, ptr %top, align 8, !tbaa !8
  store i64 %38, ptr %p, align 8, !tbaa !8
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc26, %for.end
  %39 = load i64, ptr %p, align 8, !tbaa !8
  %40 = load i64, ptr %n, align 8, !tbaa !8
  %cmp19 = icmp slt i64 %39, %40
  br i1 %cmp19, label %for.body20, label %for.end28

for.body20:                                       ; preds = %for.cond18
  %41 = load ptr, ptr %Gp, align 8, !tbaa !4
  %42 = load ptr, ptr %xi.addr, align 8, !tbaa !4
  %43 = load i64, ptr %p, align 8, !tbaa !8
  %arrayidx21 = getelementptr inbounds i64, ptr %42, i64 %43
  %44 = load i64, ptr %arrayidx21, align 8, !tbaa !8
  %arrayidx22 = getelementptr inbounds i64, ptr %41, i64 %44
  %45 = load i64, ptr %arrayidx22, align 8, !tbaa !8
  %sub = sub nsw i64 0, %45
  %sub23 = sub nsw i64 %sub, 2
  %46 = load ptr, ptr %Gp, align 8, !tbaa !4
  %47 = load ptr, ptr %xi.addr, align 8, !tbaa !4
  %48 = load i64, ptr %p, align 8, !tbaa !8
  %arrayidx24 = getelementptr inbounds i64, ptr %47, i64 %48
  %49 = load i64, ptr %arrayidx24, align 8, !tbaa !8
  %arrayidx25 = getelementptr inbounds i64, ptr %46, i64 %49
  store i64 %sub23, ptr %arrayidx25, align 8, !tbaa !8
  br label %for.inc26

for.inc26:                                        ; preds = %for.body20
  %50 = load i64, ptr %p, align 8, !tbaa !8
  %inc27 = add nsw i64 %50, 1
  store i64 %inc27, ptr %p, align 8, !tbaa !8
  br label %for.cond18, !llvm.loop !17

for.end28:                                        ; preds = %for.cond18
  %51 = load i64, ptr %top, align 8, !tbaa !8
  store i64 %51, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end28, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %Gp) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Bi) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Bp) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %top) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #3
  %52 = load i64, ptr %retval, align 8
  ret i64 %52
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i64 @cs_cl_dfs(i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
!10 = !{!11, !9, i64 48}
!11 = !{!"cs_cl_sparse", !9, i64 0, !9, i64 8, !9, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !9, i64 48}
!12 = !{!11, !9, i64 16}
!13 = !{!11, !5, i64 24}
!14 = !{!11, !5, i64 32}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
