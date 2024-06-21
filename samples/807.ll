; ModuleID = 'samples/807.bc'
source_filename = "../scipy/_lib/highs/src/ipm/basiclu/src/basiclu_solve_for_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lu = type { i32, i32, i32, double, double, double, i32, i32, i32, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, double, double, double, double, double, double, i32, i32, i32, double, double, double, double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define i32 @basiclu_solve_for_update(ptr noundef %istore, ptr noundef %xstore, ptr noundef %Li, ptr noundef %Lx, ptr noundef %Ui, ptr noundef %Ux, ptr noundef %Wi, ptr noundef %Wx, i32 noundef %nzrhs, ptr noundef %irhs, ptr noundef %xrhs, ptr noundef %p_nzlhs, ptr noundef %ilhs, ptr noundef %lhs, i8 noundef signext %trans) #0 {
entry:
  %retval = alloca i32, align 4
  %istore.addr = alloca ptr, align 8
  %xstore.addr = alloca ptr, align 8
  %Li.addr = alloca ptr, align 8
  %Lx.addr = alloca ptr, align 8
  %Ui.addr = alloca ptr, align 8
  %Ux.addr = alloca ptr, align 8
  %Wi.addr = alloca ptr, align 8
  %Wx.addr = alloca ptr, align 8
  %nzrhs.addr = alloca i32, align 4
  %irhs.addr = alloca ptr, align 8
  %xrhs.addr = alloca ptr, align 8
  %p_nzlhs.addr = alloca ptr, align 8
  %ilhs.addr = alloca ptr, align 8
  %lhs.addr = alloca ptr, align 8
  %trans.addr = alloca i8, align 1
  %this = alloca %struct.lu, align 8
  %status = alloca i32, align 4
  %n = alloca i32, align 4
  %ok = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %istore, ptr %istore.addr, align 8, !tbaa !4
  store ptr %xstore, ptr %xstore.addr, align 8, !tbaa !4
  store ptr %Li, ptr %Li.addr, align 8, !tbaa !4
  store ptr %Lx, ptr %Lx.addr, align 8, !tbaa !4
  store ptr %Ui, ptr %Ui.addr, align 8, !tbaa !4
  store ptr %Ux, ptr %Ux.addr, align 8, !tbaa !4
  store ptr %Wi, ptr %Wi.addr, align 8, !tbaa !4
  store ptr %Wx, ptr %Wx.addr, align 8, !tbaa !4
  store i32 %nzrhs, ptr %nzrhs.addr, align 4, !tbaa !8
  store ptr %irhs, ptr %irhs.addr, align 8, !tbaa !4
  store ptr %xrhs, ptr %xrhs.addr, align 8, !tbaa !4
  store ptr %p_nzlhs, ptr %p_nzlhs.addr, align 8, !tbaa !4
  store ptr %ilhs, ptr %ilhs.addr, align 8, !tbaa !4
  store ptr %lhs, ptr %lhs.addr, align 8, !tbaa !4
  store i8 %trans, ptr %trans.addr, align 1, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 696, ptr %this) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ok) #3
  %0 = load ptr, ptr %istore.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %xstore.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %Li.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %Lx.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %Ui.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %Ux.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %Wi.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %Wx.addr, align 8, !tbaa !4
  %call = call i32 @lu_load(ptr noundef %this, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  store i32 %call, ptr %status, align 4, !tbaa !8
  %8 = load i32, ptr %status, align 4, !tbaa !8
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, ptr %status, align 4, !tbaa !8
  store i32 %9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %Li.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %land.lhs.true, label %if.then12

land.lhs.true:                                    ; preds = %if.end
  %11 = load ptr, ptr %Lx.addr, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %11, null
  br i1 %tobool1, label %land.lhs.true2, label %if.then12

land.lhs.true2:                                   ; preds = %land.lhs.true
  %12 = load ptr, ptr %Ui.addr, align 8, !tbaa !4
  %tobool3 = icmp ne ptr %12, null
  br i1 %tobool3, label %land.lhs.true4, label %if.then12

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %13 = load ptr, ptr %Ux.addr, align 8, !tbaa !4
  %tobool5 = icmp ne ptr %13, null
  br i1 %tobool5, label %land.lhs.true6, label %if.then12

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %14 = load ptr, ptr %Wi.addr, align 8, !tbaa !4
  %tobool7 = icmp ne ptr %14, null
  br i1 %tobool7, label %land.lhs.true8, label %if.then12

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %15 = load ptr, ptr %Wx.addr, align 8, !tbaa !4
  %tobool9 = icmp ne ptr %15, null
  br i1 %tobool9, label %land.lhs.true10, label %if.then12

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %16 = load ptr, ptr %irhs.addr, align 8, !tbaa !4
  %tobool11 = icmp ne ptr %16, null
  br i1 %tobool11, label %if.else, label %if.then12

if.then12:                                        ; preds = %land.lhs.true10, %land.lhs.true8, %land.lhs.true6, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %if.end
  store i32 -3, ptr %status, align 4, !tbaa !8
  br label %if.end79

if.else:                                          ; preds = %land.lhs.true10
  %17 = load i8, ptr %trans.addr, align 1, !tbaa !10
  %conv = sext i8 %17 to i32
  %cmp13 = icmp ne i32 %conv, 116
  br i1 %cmp13, label %land.lhs.true15, label %if.else22

land.lhs.true15:                                  ; preds = %if.else
  %18 = load i8, ptr %trans.addr, align 1, !tbaa !10
  %conv16 = sext i8 %18 to i32
  %cmp17 = icmp ne i32 %conv16, 84
  br i1 %cmp17, label %land.lhs.true19, label %if.else22

land.lhs.true19:                                  ; preds = %land.lhs.true15
  %19 = load ptr, ptr %xrhs.addr, align 8, !tbaa !4
  %tobool20 = icmp ne ptr %19, null
  br i1 %tobool20, label %if.else22, label %if.then21

if.then21:                                        ; preds = %land.lhs.true19
  store i32 -3, ptr %status, align 4, !tbaa !8
  br label %if.end78

if.else22:                                        ; preds = %land.lhs.true19, %land.lhs.true15, %if.else
  %nupdate = getelementptr inbounds %struct.lu, ptr %this, i32 0, i32 17
  %20 = load i32, ptr %nupdate, align 4, !tbaa !11
  %cmp23 = icmp slt i32 %20, 0
  br i1 %cmp23, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.else22
  store i32 -2, ptr %status, align 4, !tbaa !8
  br label %if.end77

if.else26:                                        ; preds = %if.else22
  %nforrest = getelementptr inbounds %struct.lu, ptr %this, i32 0, i32 18
  %21 = load i32, ptr %nforrest, align 8, !tbaa !14
  %m = getelementptr inbounds %struct.lu, ptr %this, i32 0, i32 13
  %22 = load i32, ptr %m, align 4, !tbaa !15
  %cmp27 = icmp eq i32 %21, %22
  br i1 %cmp27, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.else26
  store i32 -5, ptr %status, align 4, !tbaa !8
  br label %if.end76

if.else30:                                        ; preds = %if.else26
  %23 = load i8, ptr %trans.addr, align 1, !tbaa !10
  %conv31 = sext i8 %23 to i32
  %cmp32 = icmp eq i32 %conv31, 116
  br i1 %cmp32, label %if.then37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else30
  %24 = load i8, ptr %trans.addr, align 1, !tbaa !10
  %conv34 = sext i8 %24 to i32
  %cmp35 = icmp eq i32 %conv34, 84
  br i1 %cmp35, label %if.then37, label %if.else44

if.then37:                                        ; preds = %lor.lhs.false, %if.else30
  %25 = load ptr, ptr %irhs.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i32, ptr %25, i64 0
  %26 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %cmp38 = icmp sge i32 %26, 0
  br i1 %cmp38, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then37
  %27 = load ptr, ptr %irhs.addr, align 8, !tbaa !4
  %arrayidx40 = getelementptr inbounds i32, ptr %27, i64 0
  %28 = load i32, ptr %arrayidx40, align 4, !tbaa !8
  %m41 = getelementptr inbounds %struct.lu, ptr %this, i32 0, i32 13
  %29 = load i32, ptr %m41, align 4, !tbaa !15
  %cmp42 = icmp slt i32 %28, %29
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then37
  %30 = phi i1 [ false, %if.then37 ], [ %cmp42, %land.rhs ]
  %land.ext = zext i1 %30 to i32
  store i32 %land.ext, ptr %ok, align 4, !tbaa !8
  br label %if.end72

if.else44:                                        ; preds = %lor.lhs.false
  %31 = load i32, ptr %nzrhs.addr, align 4, !tbaa !8
  %cmp45 = icmp sge i32 %31, 0
  br i1 %cmp45, label %land.rhs47, label %land.end51

land.rhs47:                                       ; preds = %if.else44
  %32 = load i32, ptr %nzrhs.addr, align 4, !tbaa !8
  %m48 = getelementptr inbounds %struct.lu, ptr %this, i32 0, i32 13
  %33 = load i32, ptr %m48, align 4, !tbaa !15
  %cmp49 = icmp sle i32 %32, %33
  br label %land.end51

land.end51:                                       ; preds = %land.rhs47, %if.else44
  %34 = phi i1 [ false, %if.else44 ], [ %cmp49, %land.rhs47 ]
  %land.ext52 = zext i1 %34 to i32
  store i32 %land.ext52, ptr %ok, align 4, !tbaa !8
  store i32 0, ptr %n, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end51
  %35 = load i32, ptr %n, align 4, !tbaa !8
  %36 = load i32, ptr %nzrhs.addr, align 4, !tbaa !8
  %cmp53 = icmp slt i32 %35, %36
  br i1 %cmp53, label %land.rhs55, label %land.end57

land.rhs55:                                       ; preds = %for.cond
  %37 = load i32, ptr %ok, align 4, !tbaa !8
  %tobool56 = icmp ne i32 %37, 0
  br label %land.end57

land.end57:                                       ; preds = %land.rhs55, %for.cond
  %38 = phi i1 [ false, %for.cond ], [ %tobool56, %land.rhs55 ]
  br i1 %38, label %for.body, label %for.end

for.body:                                         ; preds = %land.end57
  %39 = load i32, ptr %ok, align 4, !tbaa !8
  %tobool59 = icmp ne i32 %39, 0
  br i1 %tobool59, label %land.lhs.true60, label %land.end70

land.lhs.true60:                                  ; preds = %for.body
  %40 = load ptr, ptr %irhs.addr, align 8, !tbaa !4
  %41 = load i32, ptr %n, align 4, !tbaa !8
  %idxprom = sext i32 %41 to i64
  %arrayidx61 = getelementptr inbounds i32, ptr %40, i64 %idxprom
  %42 = load i32, ptr %arrayidx61, align 4, !tbaa !8
  %cmp62 = icmp sge i32 %42, 0
  br i1 %cmp62, label %land.rhs64, label %land.end70

land.rhs64:                                       ; preds = %land.lhs.true60
  %43 = load ptr, ptr %irhs.addr, align 8, !tbaa !4
  %44 = load i32, ptr %n, align 4, !tbaa !8
  %idxprom65 = sext i32 %44 to i64
  %arrayidx66 = getelementptr inbounds i32, ptr %43, i64 %idxprom65
  %45 = load i32, ptr %arrayidx66, align 4, !tbaa !8
  %m67 = getelementptr inbounds %struct.lu, ptr %this, i32 0, i32 13
  %46 = load i32, ptr %m67, align 4, !tbaa !15
  %cmp68 = icmp slt i32 %45, %46
  br label %land.end70

land.end70:                                       ; preds = %land.rhs64, %land.lhs.true60, %for.body
  %47 = phi i1 [ false, %land.lhs.true60 ], [ false, %for.body ], [ %cmp68, %land.rhs64 ]
  %land.ext71 = zext i1 %47 to i32
  store i32 %land.ext71, ptr %ok, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %land.end70
  %48 = load i32, ptr %n, align 4, !tbaa !8
  %inc = add nsw i32 %48, 1
  store i32 %inc, ptr %n, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %land.end57
  br label %if.end72

if.end72:                                         ; preds = %for.end, %land.end
  %49 = load i32, ptr %ok, align 4, !tbaa !8
  %tobool73 = icmp ne i32 %49, 0
  br i1 %tobool73, label %if.end75, label %if.then74

if.then74:                                        ; preds = %if.end72
  store i32 -4, ptr %status, align 4, !tbaa !8
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end72
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then29
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.then25
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then21
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then12
  %50 = load i32, ptr %status, align 4, !tbaa !8
  %cmp80 = icmp eq i32 %50, 0
  br i1 %cmp80, label %if.then82, label %if.end84

if.then82:                                        ; preds = %if.end79
  %51 = load i32, ptr %nzrhs.addr, align 4, !tbaa !8
  %52 = load ptr, ptr %irhs.addr, align 8, !tbaa !4
  %53 = load ptr, ptr %xrhs.addr, align 8, !tbaa !4
  %54 = load ptr, ptr %p_nzlhs.addr, align 8, !tbaa !4
  %55 = load ptr, ptr %ilhs.addr, align 8, !tbaa !4
  %56 = load ptr, ptr %lhs.addr, align 8, !tbaa !4
  %57 = load i8, ptr %trans.addr, align 1, !tbaa !10
  %call83 = call i32 @lu_solve_for_update(ptr noundef %this, i32 noundef %51, ptr noundef %52, ptr noundef %53, ptr noundef %54, ptr noundef %55, ptr noundef %56, i8 noundef signext %57)
  store i32 %call83, ptr %status, align 4, !tbaa !8
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %if.end79
  %58 = load ptr, ptr %istore.addr, align 8, !tbaa !4
  %59 = load ptr, ptr %xstore.addr, align 8, !tbaa !4
  %60 = load i32, ptr %status, align 4, !tbaa !8
  %call85 = call i32 @lu_save(ptr noundef %this, ptr noundef %58, ptr noundef %59, i32 noundef %60)
  store i32 %call85, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ok) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #3
  call void @llvm.lifetime.end.p0(i64 696, ptr %this) #3
  %61 = load i32, ptr %retval, align 4
  ret i32 %61
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lu_load(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @lu_solve_for_update(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef signext) #2

declare i32 @lu_save(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!"int", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !9, i64 100}
!12 = !{!"lu", !9, i64 0, !9, i64 4, !9, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !9, i64 224, !9, i64 228, !9, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !9, i64 312, !9, i64 316, !9, i64 320, !9, i64 324, !9, i64 328, !9, i64 332, !9, i64 336, !9, i64 340, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !9, i64 380, !9, i64 384, !9, i64 388, !9, i64 392, !9, i64 396, !9, i64 400, !9, i64 404, !9, i64 408, !9, i64 412, !5, i64 416, !5, i64 424, !5, i64 432, !5, i64 440, !5, i64 448, !5, i64 456, !5, i64 464, !5, i64 472, !5, i64 480, !5, i64 488, !5, i64 496, !5, i64 504, !5, i64 512, !5, i64 520, !5, i64 528, !5, i64 536, !5, i64 544, !5, i64 552, !5, i64 560, !5, i64 568, !5, i64 576, !5, i64 584, !5, i64 592, !5, i64 600, !5, i64 608, !5, i64 616, !5, i64 624, !5, i64 632, !5, i64 640, !5, i64 648, !5, i64 656, !5, i64 664, !5, i64 672, !5, i64 680, !5, i64 688}
!13 = !{!"double", !6, i64 0}
!14 = !{!12, !9, i64 104}
!15 = !{!12, !9, i64 84}
