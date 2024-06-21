; ModuleID = 'samples/473.bc'
source_filename = "../Source/umfpack_get_lunz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NumericType = type { double, double, double, double, double, double, double, double, double, double, double, i64, i64, ptr, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: uwtable
define i64 @umfpack_zl_get_lunz(ptr noundef %lnz, ptr noundef %unz, ptr noundef %n_row, ptr noundef %n_col, ptr noundef %nz_udiag, ptr noundef %NumericHandle) #0 {
entry:
  %retval = alloca i64, align 8
  %lnz.addr = alloca ptr, align 8
  %unz.addr = alloca ptr, align 8
  %n_row.addr = alloca ptr, align 8
  %n_col.addr = alloca ptr, align 8
  %nz_udiag.addr = alloca ptr, align 8
  %NumericHandle.addr = alloca ptr, align 8
  %Numeric = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lnz, ptr %lnz.addr, align 8, !tbaa !4
  store ptr %unz, ptr %unz.addr, align 8, !tbaa !4
  store ptr %n_row, ptr %n_row.addr, align 8, !tbaa !4
  store ptr %n_col, ptr %n_col.addr, align 8, !tbaa !4
  store ptr %nz_udiag, ptr %nz_udiag.addr, align 8, !tbaa !4
  store ptr %NumericHandle, ptr %NumericHandle.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Numeric) #3
  %0 = load ptr, ptr %NumericHandle.addr, align 8, !tbaa !4
  store ptr %0, ptr %Numeric, align 8, !tbaa !4
  %1 = load ptr, ptr %Numeric, align 8, !tbaa !4
  %call = call i64 @umfzl_valid_numeric(ptr noundef %1)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 -3, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %lnz.addr, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %if.end
  %3 = load ptr, ptr %unz.addr, align 8, !tbaa !4
  %tobool2 = icmp ne ptr %3, null
  br i1 %tobool2, label %lor.lhs.false3, label %if.then9

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %n_row.addr, align 8, !tbaa !4
  %tobool4 = icmp ne ptr %4, null
  br i1 %tobool4, label %lor.lhs.false5, label %if.then9

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %5 = load ptr, ptr %n_col.addr, align 8, !tbaa !4
  %tobool6 = icmp ne ptr %5, null
  br i1 %tobool6, label %lor.lhs.false7, label %if.then9

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %6 = load ptr, ptr %nz_udiag.addr, align 8, !tbaa !4
  %tobool8 = icmp ne ptr %6, null
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %if.end
  store i64 -5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false7
  %7 = load ptr, ptr %Numeric, align 8, !tbaa !4
  %n_row11 = getelementptr inbounds %struct.NumericType, ptr %7, i32 0, i32 33
  %8 = load i64, ptr %n_row11, align 8, !tbaa !8
  %9 = load ptr, ptr %n_row.addr, align 8, !tbaa !4
  store i64 %8, ptr %9, align 8, !tbaa !12
  %10 = load ptr, ptr %Numeric, align 8, !tbaa !4
  %n_col12 = getelementptr inbounds %struct.NumericType, ptr %10, i32 0, i32 34
  %11 = load i64, ptr %n_col12, align 8, !tbaa !13
  %12 = load ptr, ptr %n_col.addr, align 8, !tbaa !4
  store i64 %11, ptr %12, align 8, !tbaa !12
  %13 = load ptr, ptr %Numeric, align 8, !tbaa !4
  %lnz13 = getelementptr inbounds %struct.NumericType, ptr %13, i32 0, i32 45
  %14 = load i64, ptr %lnz13, align 8, !tbaa !14
  %15 = load ptr, ptr %Numeric, align 8, !tbaa !4
  %n_row14 = getelementptr inbounds %struct.NumericType, ptr %15, i32 0, i32 33
  %16 = load i64, ptr %n_row14, align 8, !tbaa !8
  %17 = load ptr, ptr %Numeric, align 8, !tbaa !4
  %n_col15 = getelementptr inbounds %struct.NumericType, ptr %17, i32 0, i32 34
  %18 = load i64, ptr %n_col15, align 8, !tbaa !13
  %cmp = icmp slt i64 %16, %18
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end10
  %19 = load ptr, ptr %Numeric, align 8, !tbaa !4
  %n_row16 = getelementptr inbounds %struct.NumericType, ptr %19, i32 0, i32 33
  %20 = load i64, ptr %n_row16, align 8, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.end10
  %21 = load ptr, ptr %Numeric, align 8, !tbaa !4
  %n_col17 = getelementptr inbounds %struct.NumericType, ptr %21, i32 0, i32 34
  %22 = load i64, ptr %n_col17, align 8, !tbaa !13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %20, %cond.true ], [ %22, %cond.false ]
  %add = add nsw i64 %14, %cond
  %23 = load ptr, ptr %lnz.addr, align 8, !tbaa !4
  store i64 %add, ptr %23, align 8, !tbaa !12
  %24 = load ptr, ptr %Numeric, align 8, !tbaa !4
  %unz18 = getelementptr inbounds %struct.NumericType, ptr %24, i32 0, i32 47
  %25 = load i64, ptr %unz18, align 8, !tbaa !15
  %26 = load ptr, ptr %Numeric, align 8, !tbaa !4
  %nnzpiv = getelementptr inbounds %struct.NumericType, ptr %26, i32 0, i32 29
  %27 = load i64, ptr %nnzpiv, align 8, !tbaa !16
  %add19 = add nsw i64 %25, %27
  %28 = load ptr, ptr %unz.addr, align 8, !tbaa !4
  store i64 %add19, ptr %28, align 8, !tbaa !12
  %29 = load ptr, ptr %Numeric, align 8, !tbaa !4
  %nnzpiv20 = getelementptr inbounds %struct.NumericType, ptr %29, i32 0, i32 29
  %30 = load i64, ptr %nnzpiv20, align 8, !tbaa !16
  %31 = load ptr, ptr %nz_udiag.addr, align 8, !tbaa !4
  store i64 %30, ptr %31, align 8, !tbaa !12
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %Numeric) #3
  %32 = load i64, ptr %retval, align 8
  ret i64 %32
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i64 @umfzl_valid_numeric(ptr noundef) #2

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
!8 = !{!9, !11, i64 264}
!9 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !11, i64 88, !11, i64 96, !5, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !5, i64 240, !11, i64 248, !5, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408}
!10 = !{!"double", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!9, !11, i64 272}
!14 = !{!9, !11, i64 360}
!15 = !{!9, !11, i64 376}
!16 = !{!9, !11, i64 232}
