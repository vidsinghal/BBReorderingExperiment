; ModuleID = 'samples/759.bc'
source_filename = "../Source/umf_mem_alloc_head_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NumericType = type { double, double, double, double, double, double, double, double, double, double, double, i64, i64, ptr, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: nounwind uwtable
define i64 @umfzl_mem_alloc_head_block(ptr noundef %Numeric, i64 noundef %nunits) #0 {
entry:
  %retval = alloca i64, align 8
  %Numeric.addr = alloca ptr, align 8
  %nunits.addr = alloca i64, align 8
  %p = alloca i64, align 8
  %usage = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %Numeric, ptr %Numeric.addr, align 8, !tbaa !4
  store i64 %nunits, ptr %nunits.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #2
  call void @llvm.lifetime.start.p0(i64 8, ptr %usage) #2
  %0 = load i64, ptr %nunits.addr, align 8, !tbaa !8
  %1 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %itail = getelementptr inbounds %struct.NumericType, ptr %1, i32 0, i32 15
  %2 = load i64, ptr %itail, align 8, !tbaa !10
  %3 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %ihead = getelementptr inbounds %struct.NumericType, ptr %3, i32 0, i32 14
  %4 = load i64, ptr %ihead, align 8, !tbaa !13
  %sub = sub nsw i64 %2, %4
  %cmp = icmp sgt i64 %0, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %ihead1 = getelementptr inbounds %struct.NumericType, ptr %5, i32 0, i32 14
  %6 = load i64, ptr %ihead1, align 8, !tbaa !13
  store i64 %6, ptr %p, align 8, !tbaa !8
  %7 = load i64, ptr %nunits.addr, align 8, !tbaa !8
  %8 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %ihead2 = getelementptr inbounds %struct.NumericType, ptr %8, i32 0, i32 14
  %9 = load i64, ptr %ihead2, align 8, !tbaa !13
  %add = add nsw i64 %9, %7
  store i64 %add, ptr %ihead2, align 8, !tbaa !13
  %10 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %ihead3 = getelementptr inbounds %struct.NumericType, ptr %10, i32 0, i32 14
  %11 = load i64, ptr %ihead3, align 8, !tbaa !13
  %12 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %tail_usage = getelementptr inbounds %struct.NumericType, ptr %12, i32 0, i32 36
  %13 = load i64, ptr %tail_usage, align 8, !tbaa !14
  %add4 = add nsw i64 %11, %13
  store i64 %add4, ptr %usage, align 8, !tbaa !8
  %14 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %max_usage = getelementptr inbounds %struct.NumericType, ptr %14, i32 0, i32 38
  %15 = load i64, ptr %max_usage, align 8, !tbaa !15
  %16 = load i64, ptr %usage, align 8, !tbaa !8
  %cmp5 = icmp sgt i64 %15, %16
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %17 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %max_usage6 = getelementptr inbounds %struct.NumericType, ptr %17, i32 0, i32 38
  %18 = load i64, ptr %max_usage6, align 8, !tbaa !15
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %19 = load i64, ptr %usage, align 8, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %18, %cond.true ], [ %19, %cond.false ]
  %20 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %max_usage7 = getelementptr inbounds %struct.NumericType, ptr %20, i32 0, i32 38
  store i64 %cond, ptr %max_usage7, align 8, !tbaa !15
  %21 = load i64, ptr %p, align 8, !tbaa !8
  store i64 %21, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %usage) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #2
  %22 = load i64, ptr %retval, align 8
  ret i64 %22
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
!10 = !{!11, !9, i64 120}
!11 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !9, i64 88, !9, i64 96, !5, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !5, i64 240, !9, i64 248, !5, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !9, i64 312, !9, i64 320, !9, i64 328, !9, i64 336, !9, i64 344, !9, i64 352, !9, i64 360, !9, i64 368, !9, i64 376, !9, i64 384, !9, i64 392, !9, i64 400, !9, i64 408}
!12 = !{!"double", !6, i64 0}
!13 = !{!11, !9, i64 112}
!14 = !{!11, !9, i64 288}
!15 = !{!11, !9, i64 304}
