; ModuleID = 'samples/553.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/blas/3/hemm/ru/flamec/FLA_Hemm_ru_unb_var10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

; Function Attrs: nounwind uwtable
define i32 @FLA_Hemm_ru_unb_var10(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C) #0 {
entry:
  %BT = alloca %struct.FLA_Obj_view, align 8
  %B0 = alloca %struct.FLA_Obj_view, align 8
  %BB = alloca %struct.FLA_Obj_view, align 8
  %b1t = alloca %struct.FLA_Obj_view, align 8
  %B2 = alloca %struct.FLA_Obj_view, align 8
  %CT = alloca %struct.FLA_Obj_view, align 8
  %C0 = alloca %struct.FLA_Obj_view, align 8
  %CB = alloca %struct.FLA_Obj_view, align 8
  %c1t = alloca %struct.FLA_Obj_view, align 8
  %C2 = alloca %struct.FLA_Obj_view, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr %BT) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %B0) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %BB) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %b1t) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %B2) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %CT) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %C0) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %CB) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %c1t) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %C2) #3
  %call = call i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %BT, ptr noundef %BB, i64 noundef 0, i32 noundef 201)
  %call1 = call i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %CT, ptr noundef %CB, i64 noundef 0, i32 noundef 201)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call2 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %BB)
  %call3 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  %cmp = icmp ult i64 %call2, %call3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call i32 @FLA_Repart_2x1_to_3x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %BT, ptr noundef %B0, ptr noundef %b1t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %BB, ptr noundef %B2, i64 noundef 1, i32 noundef 200)
  %call5 = call i32 @FLA_Repart_2x1_to_3x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %CT, ptr noundef %C0, ptr noundef %c1t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %CB, ptr noundef %C2, i64 noundef 1, i32 noundef 200)
  %call6 = call i32 @FLA_Hemvc_external(i32 noundef 301, i32 noundef 451, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %b1t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %c1t)
  %call7 = call i32 @FLA_Cont_with_3x1_to_2x1(ptr noundef %BT, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %b1t, ptr noundef %BB, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B2, i32 noundef 201)
  %call8 = call i32 @FLA_Cont_with_3x1_to_2x1(ptr noundef %CT, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %c1t, ptr noundef %CB, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C2, i32 noundef 201)
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 56, ptr %C2) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %c1t) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %CB) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %C0) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %CT) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %B2) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %b1t) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %BB) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %B0) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %BT) #3
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #2

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Repart_2x1_to_3x1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, i64 noundef, i32 noundef) #2

declare i32 @FLA_Hemvc_external(i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Cont_with_3x1_to_2x1(ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
